inline.NumInlined: 13443
inline.NumDeleted: 3890
begin_hunk_0_@_RNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtB9_9MergePlan7execute00Bd_:bb.a
bb.t:                                             ; preds = %bb.r
  br i1 %i.em, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu)
  %i.eo = load ptr, ptr @_RNvNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBb_9MergePlan7execute0010___CALLSITE, align 8, !nonnull !4, !align !18, !noundef !4
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs)
  store ptr @223, ptr %i.cs, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr inttoptr (i64 55 to ptr), ptr %i.eq, align 8
  store ptr %i.cs, ptr %i.ct, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store ptr @196, ptr %i.er, align 8
  store i64 1, ptr %i.cu, align 8, !alias.scope !11941, !noalias !11944
  %.sroa.4.0..sroa_idx.i249 = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr %i.ct, ptr %.sroa.4.0..sroa_idx.i249, align 8, !alias.scope !11941, !noalias !11944
  %.sroa.5.0..sroa_idx.i250 = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i250, align 8, !alias.scope !11941, !noalias !11944
  %i.es = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  store ptr %i.ep, ptr %i.es, align 8, !alias.scope !11941, !noalias !11944
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.cv, i64 24, i1 false)
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ee, ptr noundef nonnull %i.ei, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ej, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cu)
          to label %bb.w unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.et = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  br label %bb.eh

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t, %bb.o, %bb.n, %bb.ad
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr)
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ew, ptr noundef nonnull align 8 dereferenceable(16) %i.ev, i64 16, i1 false)
  store i8 1, ptr %i.cr, align 1
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 472 ; 3 uses
  %i.ey = invoke { ptr, ptr } @_RNvXs8_NtCs14kWLkQVSKO_14deltalake_core8logstoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB5_8LogStoreEL_EB1j_12object_storeB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.eu, ptr noalias noundef nonnull align 1 captures(address) dereferenceable(17) %i.cr)
          to label %bb.af unwind label %bb.ae     ; 2 uses

bb.y:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy)
  %i.ez = load ptr, ptr @_RNvNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBb_9MergePlan7execute0010___CALLSITE, align 8, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw)
  store ptr @223, ptr %i.cw, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store ptr inttoptr (i64 55 to ptr), ptr %i.fb, align 8
  store ptr %i.cw, ptr %i.cx, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store ptr @196, ptr %i.fc, align 8
  store i64 1, ptr %i.cy, align 8
  %.sroa.6.0..sroa_idx444 = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr %i.cx, ptr %.sroa.6.0..sroa_idx444, align 8
  %.sroa.7445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store i64 1, ptr %.sroa.7445.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  store ptr %i.fa, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ez, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cy)
          to label %.noexc254 unwind label %bb.ac

.noexc254:                                        ; preds = %bb.y
  %i.fd = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !11947
  %i.fe = icmp eq i8 %i.fd, 0
  br i1 %i.fe, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %.noexc254
  %i.ff = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !11947 ; 2 uses
  %i.fg = icmp ult i64 %i.ff, 6
  call void @llvm.assume(i1 %i.fg)
  %i.fh = icmp samesign ugt i64 %i.ff, 2
  br i1 %i.fh, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.fi = load ptr, ptr @_RNvNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBb_9MergePlan7execute0010___CALLSITE, align 8, !noalias !11947, !nonnull !4, !align !18, !noundef !4 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 32
  %i.fk = load ptr, ptr %i.fj, align 8, !nonnull !4, !noundef !4
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 40
  %i.fm = load i64, ptr %i.fl, align 8, !noundef !4
  store i64 3, ptr %i.u, align 8, !noalias !11947
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.fk, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !11947
  %.sroa.5.0..sroa_idx.i253 = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %i.fm, ptr %.sroa.5.0..sroa_idx.i253, align 8, !noalias !11947
  %i.fn = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc255 unwind label %bb.ac ; 2 uses

.noexc255:                                        ; preds = %bb.aa
  %i.fo = extractvalue { ptr, ptr } %i.fn, 0      ; 2 uses
  %i.fp = extractvalue { ptr, ptr } %i.fn, 1      ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fr = load ptr, ptr %i.fq, align 8, !invariant.load !4, !nonnull !4
  %i.fs = invoke noundef zeroext i1 %i.fr(ptr noundef %i.fo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u) #49
          to label %.noexc256 unwind label %bb.ac, !inline_history !11950

.noexc256:                                        ; preds = %.noexc255
  br i1 %i.fs, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %.noexc256
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fi, ptr noundef nonnull %i.fo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fp, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cy)
          to label %bb.ad unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.noexc255, %bb.aa, %bb.y
  %i.ft = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  br label %bb.eh

bb.ad:                                            ; preds = %.noexc256, %bb.z, %.noexc254, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  br label %bb.x

bb.ae:                                            ; preds = %bb.x
  %i.fu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit436

bb.af:                                            ; preds = %bb.x
  %i.fv = extractvalue { ptr, ptr } %i.ey, 0
  %i.fw = extractvalue { ptr, ptr } %i.ey, 1
  store ptr %i.fv, ptr %i.ex, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 2 uses
  store ptr %i.fw, ptr %i.fx, align 8
  store i8 1, ptr %i.db, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  %i.fy = load i64, ptr %i.dh, align 8, !range !17, !noundef !4
  %.not = icmp eq i64 %i.fy, -9223372036854775808
  br i1 %.not, label %bb.ag, label %bb.ao

bb.ag:                                            ; preds = %bb.af
  store i8 0, ptr %i.dg, align 1
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cq, ptr noundef nonnull align 8 dereferenceable(48) %i.fz, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  invoke void @_RINvNtNtCs8CRAYtH5WmW_12futures_util6stream4iter4iterINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringTINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapB1K_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEINtNtB1O_3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize8MergeBinEEEEB4u_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.co, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.cq)
          to label %bb.ai unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ga = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cp, ptr noundef nonnull align 8 dereferenceable(64) %i.co, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 304
  call void @llvm.experimental.noalias.scope.decl(metadata !11951)
  %.sroa.5.0..sroa_idx453 = getelementptr inbounds nuw i8, ptr %i.cp, i64 64
  store i64 -9223372036854775808, ptr %.sroa.5.0..sroa_idx453, align 8, !alias.scope !11954, !noalias !11956
  %i.gc = getelementptr inbounds nuw i8, ptr %i.cp, i64 168
  store ptr %i.ex, ptr %i.gc, align 8, !alias.scope !11959, !noalias !11960
  %i.gd = getelementptr inbounds nuw i8, ptr %i.cp, i64 176
  store ptr %i.gb, ptr %i.gd, align 8, !alias.scope !11959, !noalias !11960
  %i.ge = invoke { ptr, ptr } @_RNvYINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3map3MapINtB7_7FlatMapINtNtB9_4iter4IterINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringTINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapB2r_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEINtNtB2v_3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize8MergeBinEEEEIB3_IB1e_INtNtB4R_9into_iter8IntoIterB55_EENCNCNCNCNvMs7_B57_NtB57_9MergePlan7execute0000ENCB6Y_0ENCB6Y_s_0ENtB7_9StreamExt5boxedB5b_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.cp)
          to label %bb.al unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ah, %bb.ak
  %.pn33 = phi { ptr, i32 } [ %i.gf, %bb.ak ], [ %i.ga, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  br label %bb.an

bb.ak:                                            ; preds = %bb.ai
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.al:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  br label %bb.am

bb.am:                                            ; preds = %bb.cj, %bb.al
  %.pn60 = phi { ptr, ptr } [ %i.jp, %bb.cj ], [ %i.ge, %bb.al ] ; 2 uses
  %.sroa.01.0 = extractvalue { ptr, ptr } %.pn60, 0 ; 2 uses
  %.sroa.3.0 = extractvalue { ptr, ptr } %.pn60, 1 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.gh = load i64, ptr %i.gg, align 8, !noundef !4
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 488
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0) ]
  invoke void @_RNvYINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemNCINvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize4util18flatten_join_errorTINtNtBD_3vec3VecNtNtNtB29_6kernel6models6ActionENtB25_14PartialMetricsENtNtB29_6errors15DeltaTableErrorINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtB7_6result6ResultB3n_B4x_EEE0NtNtB7_6marker4SendEL_EENtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream9StreamExt16buffer_unorderedB29_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.gi, ptr noundef nonnull %.sroa.01.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.3.0, i64 noundef %i.gh)
          to label %bb.cl unwind label %bb.ck

bb.an:                                            ; preds = %bb.la, %bb.ef, %bb.dk, %bb.ck, %bb.aj
  %.pn163.pn = phi { ptr, i32 } [ %.pn163658, %bb.ef ], [ %i.ads, %bb.la ], [ %.pn148, %bb.dk ], [ %i.jr, %bb.ck ], [ %.pn33, %bb.aj ] ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 1153
  %i.gk = load i8, ptr %i.gj, align 1, !range !178, !noundef !4
  %i.gl = trunc nuw i8 %i.gk to i1
  br i1 %i.gl, label %bb.my, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit436

bb.ao:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  store i8 0, ptr %i.dd, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull align 8 dereferenceable(24) %i.dh, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  store i8 0, ptr %i.de, align 1
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cm, ptr noundef nonnull align 8 dereferenceable(48) %i.gm, i64 48, i1 false)
  store i8 0, ptr %i.df, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 464
  %i.go = load ptr, ptr %i.gn, align 8, !nonnull !4, !align !18, !noundef !4 ; 7 uses
  %i.gp = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.gq = icmp ult i64 %i.gp, 2
  br i1 %i.gq, label %bb.ap, label %bb.aw

bb.ap:                                            ; preds = %bb.ao
  %i.gr = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBb_9MergePlan7execute00s_10___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.gs = icmp ult i8 %i.gr, 3
  br i1 %i.gs, label %bb.as, label %bb.aq, !prof !11936

bb.aq:                                            ; preds = %bb.ap
  %i.gt = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBb_9MergePlan7execute00s_10___CALLSITE) #45
          to label %bb.as unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

bb.as:                                            ; preds = %bb.aq, %bb.ap
  %.sroa.0.0.i259 = phi i8 [ %i.gr, %bb.ap ], [ %i.gt, %bb.aq ] ; 2 uses
  %i.gv = icmp eq i8 %.sroa.0.0.i259, 0
  br i1 %i.gv, label %bb.aw, label %bb.au

bb.at:                                            ; preds = %bb.au
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

bb.au:                                            ; preds = %bb.as
  %i.gx = load ptr, ptr @_RNvNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBb_9MergePlan7execute00s_10___CALLSITE, align 8, !nonnull !4, !align !18, !noundef !4
  %i.gy = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gx, i8 noundef %.sroa.0.0.i259)
          to label %bb.av unwind label %bb.at

bb.av:                                            ; preds = %bb.au
  br i1 %i.gy, label %bb.bh, label %bb.aw

bb.aw:                                            ; preds = %bb.ao, %bb.as, %bb.av
  %i.gz = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not723 = icmp eq i8 %i.gz, 0
  br i1 %.not723, label %bb.ax, label %bb.bg

bb.ax:                                            ; preds = %bb.aw
  %i.ha = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.hb = icmp ult i64 %i.ha, 6
  call void @llvm.assume(i1 %i.hb)
  %i.hc = icmp samesign ugt i64 %i.ha, 3
  br i1 %i.hc, label %bb.az, label %bb.bg

bb.ay:                                            ; preds = %bb.az
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

bb.az:                                            ; preds = %bb.ax
  %i.he = load ptr, ptr @_RNvNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBb_9MergePlan7execute00s_10___CALLSITE, align 8, !nonnull !4, !align !18, !noundef !4 ; 3 uses
  %i.hf = getelementptr i8, ptr %i.he, i64 32
  %.val221 = load ptr, ptr %i.hf, align 8, !nonnull !4, !noundef !4
  %i.hg = getelementptr i8, ptr %i.he, i64 40
  %.val222 = load i64, ptr %i.hg, align 8, !noundef !4
  store i64 4, ptr %i.ch, align 8, !alias.scope !11961
  %.sroa.6471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr %.val221, ptr %.sroa.6471.0..sroa_idx, align 8, !alias.scope !11961
  %.sroa.8472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store i64 %.val222, ptr %.sroa.8472.0..sroa_idx, align 8, !alias.scope !11961
  %i.hh = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.ba unwind label %bb.ay     ; 2 uses

bb.ba:                                            ; preds = %bb.az
  %i.hi = extractvalue { ptr, ptr } %i.hh, 0      ; 2 uses
  %i.hj = extractvalue { ptr, ptr } %i.hh, 1      ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8, !invariant.load !4, !nonnull !4
  %i.hm = invoke noundef zeroext i1 %i.hl(ptr noundef %i.hi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ch)
          to label %bb.bc unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

bb.bc:                                            ; preds = %bb.ba
  br i1 %i.hm, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  %i.ho = load ptr, ptr @_RNvNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBb_9MergePlan7execute00s_10___CALLSITE, align 8, !nonnull !4, !align !18, !noundef !4
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd)
  store ptr %i.cn, ptr %i.cd, align 8
  %.sroa.5474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.5474.0..sroa_idx, align 8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store ptr %i.cm, ptr %i.hq, align 8
  %.sroa.5476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store ptr @_RNvXs6_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringTINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapB13_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize8MergeBinEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtB3w_, ptr %.sroa.5476.0..sroa_idx, align 8
  store ptr @224, ptr %i.ce, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr %i.cd, ptr %i.hr, align 8
  store ptr %i.ce, ptr %i.cf, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr @196, ptr %i.hs, align 8
  store i64 1, ptr %i.cg, align 8, !alias.scope !11965, !noalias !11968
  %.sroa.4.0..sroa_idx.i268 = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store ptr %i.cf, ptr %.sroa.4.0..sroa_idx.i268, align 8, !alias.scope !11965, !noalias !11968
  %.sroa.5.0..sroa_idx.i269 = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i269, align 8, !alias.scope !11965, !noalias !11968
  %i.ht = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  store ptr %i.hp, ptr %i.ht, align 8, !alias.scope !11965, !noalias !11968
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i64 24, i1 false)
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.he, ptr noundef nonnull %i.hi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.hj, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cg)
          to label %bb.bf unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  br label %bb.ee

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.bc, %bb.ax, %bb.aw, %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8479)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1680) %i.bz, ptr noundef nonnull align 8 dereferenceable(1680) %i.go, i64 1680, i1 false)
  store i8 0, ptr %i.db, align 1
  %i.hv = load ptr, ptr %i.ex, align 8, !nonnull !4, !noundef !4
  %i.hw = load ptr, ptr %i.fx, align 8, !nonnull !4, !align !18, !noundef !4
  invoke void @_RNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10datafusionNtB2_17ZOrderExecContext3new(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.cb, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ca, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(1680) %i.bz, ptr noundef nonnull %i.hv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.hw)
          to label %bb.bl unwind label %bb.bk

bb.bh:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl)
  %i.hx = load ptr, ptr @_RNvNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBb_9MergePlan7execute00s_10___CALLSITE, align 8, !nonnull !4, !align !18, !noundef !4
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci)
  store ptr %i.cn, ptr %i.ci, align 8
  %.sroa.5464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.5464.0..sroa_idx, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store ptr %i.cm, ptr %i.hz, align 8
  %.sroa.5466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  store ptr @_RNvXs6_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringTINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapB13_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize8MergeBinEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtB3w_, ptr %.sroa.5466.0..sroa_idx, align 8
  store ptr @224, ptr %i.cj, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %i.ci, ptr %i.ia, align 8
  store ptr %i.cj, ptr %i.ck, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr @196, ptr %i.ib, align 8
  store i64 1, ptr %i.cl, align 8
  %.sroa.6460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr %i.ck, ptr %.sroa.6460.0..sroa_idx, align 8
  %.sroa.7461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store i64 1, ptr %.sroa.7461.0..sroa_idx, align 8
  %.sroa.8462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store ptr %i.hy, ptr %.sroa.8462.0..sroa_idx, align 8
  invoke fastcc void @_RNCNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBb_9MergePlan7execute00s2_0Bf_(ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.cl)
          to label %bb.bj unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ic = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_RNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00B9_:bb.a
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.rs) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit1260 unwind label %bb.fv

bb.gu:                                            ; preds = %bb.dv
  %.sroa.11.0..sroa_idx2122 = getelementptr inbounds nuw i8, ptr %i.rt, i64 32
  %.sroa.32125.0..sroa.4.0..sroa_idx.i1246.sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.32125.0..sroa.4.0..sroa_idx.i1246.sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11.0..sroa_idx2122, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.rt)
  %.sroa.22124.0..sroa.4.0..sroa_idx.i1246.sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.22124.0..sroa.4.0..sroa_idx.i1246.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.92120, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !12606)
  %i.agk = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store i64 -9223372036854775720, ptr %i.agk, align 16, !alias.scope !12609, !noalias !12606
  %.sroa.4.0..sroa_idx.i1246 = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  store i64 %i.acn, ptr %.sroa.4.0..sroa_idx.i1246, align 8, !alias.scope !12611
  store i64 1, ptr %i.co, align 16, !alias.scope !12609, !noalias !12606
  call void @llvm.experimental.noalias.scope.decl(metadata !12612)
  call void @llvm.experimental.noalias.scope.decl(metadata !12615)
  %i.agl = load ptr, ptr %i.rs, align 8, !alias.scope !12618, !nonnull !4, !noundef !4
  %i.agm = atomicrmw sub ptr %i.agl, i64 1 release, align 8, !noalias !12618
  %i.agn = icmp eq i64 %i.agm, 1
  br i1 %i.agn, label %bb.gv, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit1262

bb.gv:                                            ; preds = %bb.gu
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.rs) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit1262 unwind label %bb.gw

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit1260: ; preds = %bb.du, %bb.gt, %bb.gw
  %.pn952 = phi { ptr, i32 } [ %i.ago, %bb.gw ], [ %i.acj, %bb.du ], [ %i.acj, %bb.gt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.rs)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.92120)
  br label %bb.gp

bb.gw:                                            ; preds = %bb.gv
  %i.ago = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit1260

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit1262: ; preds = %bb.gu, %bb.gv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.rs)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.92120)
  br label %bb.gr

bb.gx:                                            ; preds = %bb.gr, %bb.gh
  %i.agp = getelementptr inbounds nuw i8, ptr %1, i64 7496 ; 4 uses
  %i.agq = load i64, ptr %i.agp, align 8, !range !17, !noundef !4
  %.not957 = icmp eq i64 %i.agq, -9223372036854775808
  br i1 %.not957, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit2011, label %bb.cbo

bb.gy:                                            ; preds = %bb.dc, %bb.gp, %bb.gk
  %.pn952.pn.pn = phi { ptr, i32 } [ %.pn952.pn, %bb.gp ], [ %.pn944.pn, %bb.gk ], [ %i.abb, %bb.dc ] ; 3 uses
  %i.agr = getelementptr inbounds nuw i8, ptr %1, i64 7496 ; 2 uses
  %i.ags = load i64, ptr %i.agr, align 8, !range !17, !noundef !4
  %.not956 = icmp eq i64 %i.ags, -9223372036854775808
  br i1 %.not956, label %.body2009, label %bb.cgi

bb.gz:                                            ; preds = %bb.cd, %bb.cb
  %.pn138 = phi { ptr, i32 } [ %i.zk, %bb.cd ], [ %i.zj, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ry)
  br label %bb.cf

bb.ha:                                            ; preds = %bb.ccc, %bb.cm, %bb.cf
  %.pn968 = phi { ptr, i32 } [ %i.env, %bb.ccc ], [ %.pn966, %bb.cm ], [ %.pn140, %bb.cf ] ; 3 uses
  %i.agt = getelementptr inbounds nuw i8, ptr %1, i64 8372
  %i.agu = load i8, ptr %i.agt, align 4, !range !178, !noundef !4
  %i.agv = trunc nuw i8 %i.agu to i1
  br i1 %i.agv, label %bb.cgm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7planner12DeltaPlannerEEB1k_.exit

bb.hb:                                            ; preds = %bb.ag
  %.sroa.10.0..sroa_idx2091 = getelementptr inbounds nuw i8, ptr %i.sp, i64 9
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(87) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(87) %.sroa.10.0..sroa_idx2091, i64 87, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.sp)
  call void @llvm.experimental.noalias.scope.decl(metadata !12619)
  %i.agw = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store i64 %i.vy, ptr %i.agw, align 16, !alias.scope !12622
  %.sroa.22093.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  store i8 %i.wa, ptr %.sroa.22093.0..sroa_idx, align 8, !alias.scope !12622
  store i64 1, ptr %i.co, align 16, !alias.scope !12624, !noalias !12619
  br label %bb.hc

bb.hc:                                            ; preds = %bb.ccd, %bb.hb
  %i.agx = getelementptr inbounds nuw i8, ptr %1, i64 8356
  %i.agy = load i8, ptr %i.agx, align 4, !range !178, !noundef !4
  %i.agz = trunc nuw i8 %i.agy to i1
  br i1 %i.agz, label %bb.ccf, label %bb.cce

bb.hd:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @249) #50
  unreachable

bb.he:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @249) #50
  unreachable

bb.hf:                                            ; preds = %bb.hg
  %i.aha = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qx)
  %.val1095 = load ptr, ptr %i.ahc, align 16
  %i.ahb = getelementptr i8, ptr %1, i64 8392
  %.val1096 = load ptr, ptr %i.ahb, align 8, !nonnull !4, !align !18, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %.val1095, ptr nonnull %.val1096) #46
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs14kWLkQVSKO_14deltalake_core.exit1301 unwind label %bb.fv

bb.hg:                                            ; preds = %bb.b, %bb.fu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.qx)
  %i.ahc = getelementptr inbounds nuw i8, ptr %1, i64 8384 ; 4 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.qx, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ahc, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.hh unwind label %bb.hf

bb.hh:                                            ; preds = %bb.hg
  %i.ahd = load i64, ptr %i.qx, align 8, !range !12625, !noundef !4 ; 3 uses
  %i.ahe = icmp eq i64 %i.ahd, 21
  br i1 %i.ahe, label %bb.hi, label %bb.hj

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesEECs14kWLkQVSKO_14deltalake_core.exit1827, %bb.bnm, %bb.bhz, %bb.bff, %bb.sj, %bb.pp, %bb.hi
  %.sink = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesEECs14kWLkQVSKO_14deltalake_core.exit1827 ], [ 8, %bb.bnm ], [ 7, %bb.bhz ], [ 6, %bb.bff ], [ 5, %bb.sj ], [ 4, %bb.pp ], [ 3, %bb.hi ]
  store i8 %.sink, ptr %i.sz, align 2
  ret void

bb.hi:                                            ; preds = %bb.hh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qx)
  store i64 2, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.sa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.rm)
  br label %common.ret

bb.hj:                                            ; preds = %bb.hh
  %.sroa.32181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qx, i64 8
  %.sroa.32181.0.copyload = load ptr, ptr %.sroa.32181.0..sroa_idx, align 8 ; 3 uses
  %.sroa.52182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qx, i64 16
  %.sroa.52182.0.copyload = load ptr, ptr %.sroa.52182.0..sroa_idx, align 8 ; 3 uses
  %.sroa.72183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qx, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.72183, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.72183.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qx)
  %.val1093 = load ptr, ptr %i.ahc, align 16      ; 5 uses
  %i.ahf = getelementptr i8, ptr %1, i64 8392
  %.val1094 = load ptr, ptr %i.ahf, align 8, !nonnull !4, !align !18, !noundef !4 ; 5 uses
  %i.ahg = load ptr, ptr %.val1094, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ahg, null
  br i1 %.not.i.i, label %bb.hl, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1093) ]
  invoke void %i.ahg(ptr noundef nonnull %.val1093)
          to label %bb.hl unwind label %bb.hn

bb.hl:                                            ; preds = %bb.hk, %bb.hj
  %i.ahh = getelementptr inbounds nuw i8, ptr %.val1094, i64 8
  %i.ahi = load i64, ptr %i.ahh, align 8, !range !16, !invariant.load !4 ; 2 uses
  %i.ahj = icmp eq i64 %i.ahi, 0
  br i1 %i.ahj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.ahk = getelementptr inbounds nuw i8, ptr %.val1094, i64 16
  %i.ahl = load i64, ptr %i.ahk, align 8, !range !3, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1093) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1093, i64 noundef range(i64 1, 0) %i.ahi, i64 noundef range(i64 1, 536870913) %i.ahl) #40
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit

bb.hn:                                            ; preds = %bb.hk
  %i.ahm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ahn = getelementptr inbounds nuw i8, ptr %.val1094, i64 8
  %i.aho = load i64, ptr %i.ahn, align 8, !range !16, !invariant.load !4 ; 2 uses
  %i.ahp = icmp eq i64 %i.aho, 0
  br i1 %i.ahp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs14kWLkQVSKO_14deltalake_core.exit1301, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.ahq = getelementptr inbounds nuw i8, ptr %.val1094, i64 16
  %i.ahr = load i64, ptr %i.ahq, align 8, !range !3, !invariant.load !4
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1093, i64 noundef range(i64 1, 0) %i.aho, i64 noundef range(i64 1, 536870913) %i.ahr) #40
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs14kWLkQVSKO_14deltalake_core.exit1301

bb.hp:                                            ; preds = %bb.hq, %bb.hr
  %i.ahs = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs14kWLkQVSKO_14deltalake_core.exit1301

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.hm, %bb.hl
  %.not.i1265 = icmp eq i64 %i.ahd, 20
  br i1 %.not.i1265, label %bb.hr, label %bb.hq

bb.hq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.42187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.42187.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.72183, i64 16, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !12626)
  store i64 %i.ahd, ptr %i.cc, align 8, !noalias !12626
  %.sroa.22185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store ptr %.sroa.32181.0.copyload, ptr %.sroa.22185.0..sroa_idx, align 8, !noalias !12626
  %.sroa.32186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store ptr %.sroa.52182.0.copyload, ptr %.sroa.32186.0..sroa_idx, align 8, !noalias !12626
  %i.aht = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.aht, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.cc)
          to label %bb.kg unwind label %bb.hp

bb.hr:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.32181.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52182.0.copyload) ]
  %i.ahu = getelementptr inbounds nuw i8, ptr %1, i64 4208 ; 2 uses
  %i.ahv = invoke { ptr, ptr } @_RNvNtCsanCXJAiNsO_18datafusion_catalog20default_table_source18provider_as_source(ptr noundef nonnull %.sroa.32181.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.sroa.52182.0.copyload)
          to label %bb.hs unwind label %bb.hp     ; 2 uses

bb.hs:                                            ; preds = %bb.hr
  %i.ahw = extractvalue { ptr, ptr } %i.ahv, 0
  %i.ahx = extractvalue { ptr, ptr } %i.ahv, 1
  store ptr %i.ahw, ptr %i.ahu, align 16
  %i.ahy = getelementptr i8, ptr %1, i64 4216     ; 2 uses
  store ptr %i.ahx, ptr %i.ahy, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.qw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.qv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.qu)
  %i.ahz = getelementptr inbounds nuw i8, ptr %1, i64 7416 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12629)
  call void @llvm.experimental.noalias.scope.decl(metadata !12632)
  %i.aia = load i64, ptr %i.ahz, align 8, !range !1069, !alias.scope !12632, !noalias !12629, !noundef !4 ; 2 uses
  %i.aib = getelementptr inbounds nuw i8, ptr %1, i64 7424
  %i.aic = load ptr, ptr %i.aib, align 16, !alias.scope !12632, !noalias !12629, !nonnull !4, !noundef !4 ; 4 uses
  %i.aid = getelementptr inbounds nuw i8, ptr %1, i64 7432
  %i.aie = load i64, ptr %i.aid, align 8, !alias.scope !12632, !noalias !12629, !noundef !4 ; 3 uses
  %i.aif = atomicrmw add ptr %i.aic, i64 1 monotonic, align 8, !noalias !12634
  %i.aig = icmp slt i64 %i.aif, 0                 ; 3 uses
  switch i64 %i.aia, label %default.unreachable3825 [
    i64 0, label %bb.ht
    i64 1, label %bb.hu
    i64 2, label %bb.hv
  ]

bb.ht:                                            ; preds = %bb.hs
  br i1 %i.aig, label %bb.hw, label %bb.ig

bb.hu:                                            ; preds = %bb.hs
  br i1 %i.aig, label %bb.hy, label %bb.hx

bb.hv:                                            ; preds = %bb.hs
  br i1 %i.aig, label %bb.ib, label %bb.ia

bb.hw:                                            ; preds = %bb.ht
  call void @llvm.trap()
  unreachable

.sink.split.i1268:                                ; preds = %bb.ie, %bb.hx
  %.sink18.i1269.sroa.phi = phi ptr [ %.sink18.i1269.sroa.gep, %bb.ie ], [ %.sink18.i1269.sroa.gep2204, %bb.hx ]
  %.sink16.i1270 = phi ptr [ %i.aio, %bb.ie ], [ %i.aic, %bb.hx ]
  %.sink15.i1271.sroa.phi = phi ptr [ %.sink15.i1271.sroa.gep, %bb.ie ], [ %.sink15.i1271.sroa.gep2205, %bb.hx ]
  %.sink13.i1272 = phi i64 [ %i.aiq, %bb.ie ], [ %i.aie, %bb.hx ]
  %.sink12.ph.i1273 = phi i64 [ 40, %bb.ie ], [ 24, %bb.hx ]
  %.sink10.ph.i1274 = phi ptr [ %i.aiu, %bb.ie ], [ %i.aii, %bb.hx ]
  %.sink9.ph.i1275 = phi i64 [ 48, %bb.ie ], [ 32, %bb.hx ]
  %.sink7.ph.i1276 = phi i64 [ %i.aiw, %bb.ie ], [ %i.aik, %bb.hx ]
  store ptr %.sink16.i1270, ptr %.sink18.i1269.sroa.phi, align 8, !alias.scope !12629, !noalias !12632
  store i64 %.sink13.i1272, ptr %.sink15.i1271.sroa.phi, align 8, !alias.scope !12629, !noalias !12632
  br label %bb.ig

bb.hx:                                            ; preds = %bb.hu
  %i.aih = getelementptr inbounds nuw i8, ptr %1, i64 7440
  %i.aii = load ptr, ptr %i.aih, align 16, !alias.scope !12632, !noalias !12629, !nonnull !4, !noundef !4 ; 2 uses
  %i.aij = getelementptr inbounds nuw i8, ptr %1, i64 7448
  %i.aik = load i64, ptr %i.aij, align 8, !alias.scope !12632, !noalias !12629, !noundef !4
  %i.ail = atomicrmw add ptr %i.aii, i64 1 monotonic, align 8, !noalias !12634
  %i.aim = icmp slt i64 %i.ail, 0
  br i1 %i.aim, label %bb.hz, label %.sink.split.i1268

bb.hy:                                            ; preds = %bb.hu
  call void @llvm.trap()
  unreachable

bb.hz:                                            ; preds = %bb.hx
  call void @llvm.trap()
  unreachable

bb.ia:                                            ; preds = %bb.hv
  %i.ain = getelementptr inbounds nuw i8, ptr %1, i64 7440
  %i.aio = load ptr, ptr %i.ain, align 16, !alias.scope !12632, !noalias !12629, !nonnull !4, !noundef !4 ; 2 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %1, i64 7448
  %i.aiq = load i64, ptr %i.aip, align 8, !alias.scope !12632, !noalias !12629, !noundef !4
  %i.air = atomicrmw add ptr %i.aio, i64 1 monotonic, align 8, !noalias !12634
  %i.ais = icmp slt i64 %i.air, 0
  br i1 %i.ais, label %bb.id, label %bb.ic

bb.ib:                                            ; preds = %bb.hv
  call void @llvm.trap()
  unreachable

bb.ic:                                            ; preds = %bb.ia
  %i.ait = getelementptr inbounds nuw i8, ptr %1, i64 7456
  %i.aiu = load ptr, ptr %i.ait, align 16, !alias.scope !12632, !noalias !12629, !nonnull !4, !noundef !4 ; 2 uses
  %i.aiv = getelementptr inbounds nuw i8, ptr %1, i64 7464
  %i.aiw = load i64, ptr %i.aiv, align 8, !alias.scope !12632, !noalias !12629, !noundef !4
  %i.aix = atomicrmw add ptr %i.aiu, i64 1 monotonic, align 8, !noalias !12634
  %i.aiy = icmp slt i64 %i.aix, 0
  br i1 %i.aiy, label %bb.if, label %bb.ie

bb.id:                                            ; preds = %bb.ia
  call void @llvm.trap()
  unreachable

bb.ie:                                            ; preds = %bb.ic
  store ptr %i.aic, ptr %.sink18.i1269.sroa.gep2204, align 8, !alias.scope !12629, !noalias !12632
  store i64 %i.aie, ptr %.sink15.i1271.sroa.gep2205, align 8, !alias.scope !12629, !noalias !12632
  br label %.sink.split.i1268

bb.if:                                            ; preds = %bb.ic
  call void @llvm.trap()
  unreachable

bb.ig:                                            ; preds = %.sink.split.i1268, %bb.ht
  %.sink12.i1277 = phi i64 [ 8, %bb.ht ], [ %.sink12.ph.i1273, %.sink.split.i1268 ]
  %.sink10.i1278 = phi ptr [ %i.aic, %bb.ht ], [ %.sink10.ph.i1274, %.sink.split.i1268 ]
  %.sink9.i1279 = phi i64 [ 16, %bb.ht ], [ %.sink9.ph.i1275, %.sink.split.i1268 ]
  %.sink7.i1280 = phi i64 [ %i.aie, %bb.ht ], [ %.sink7.ph.i1276, %.sink.split.i1268 ]
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.qu, i64 %.sink12.i1277
  store ptr %.sink10.i1278, ptr %i.aiz, align 8, !alias.scope !12629, !noalias !12632
  %i.aja = getelementptr inbounds nuw i8, ptr %i.qu, i64 %.sink9.i1279
  store i64 %.sink7.i1280, ptr %i.aja, align 8, !alias.scope !12629, !noalias !12632
  store i64 %i.aia, ptr %i.qu, align 8, !alias.scope !12629, !noalias !12632
  %.val1098 = load ptr, ptr %i.ahu, align 16, !nonnull !4, !noundef !4 ; 2 uses
  %.val1099 = load ptr, ptr %i.ahy, align 8       ; 2 uses
  %i.ajb = atomicrmw add ptr %.val1098, i64 1 monotonic, align 8
  %i.ajc = icmp slt i64 %i.ajb, 0
  br i1 %i.ajc, label %bb.ih, label %bb.ii

bb.ih:                                            ; preds = %bb.ig
  call void @llvm.trap()
  unreachable

bb.ii:                                            ; preds = %bb.ig
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1099) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.qt)
  store i64 -9223372036854775808, ptr %i.qt, align 8
  invoke void @_RINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB5_18LogicalPlanBuilder4scanNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.qv, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.qu, ptr noundef nonnull %.val1098, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.val1099, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.qt)
          to label %bb.ij unwind label %bb.kd

bb.ij:                                            ; preds = %bb.ii
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qu)
  call void @llvm.experimental.noalias.scope.decl(metadata !12635)
  %i.ajd = load i64, ptr %i.qv, align 8, !range !181, !alias.scope !12638, !noalias !12635, !noundef !4 ; 2 uses
  %.not.i1284 = icmp eq i64 %i.ajd, 20
  %i.aje = getelementptr inbounds nuw i8, ptr %i.qv, i64 8
  %i.ajf = load ptr, ptr %i.aje, align 8, !alias.scope !12640 ; 2 uses
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.qv, i64 16
  %i.ajh = load i8, ptr %i.ajg, align 8, !alias.scope !12640 ; 2 uses
  br i1 %.not.i1284, label %bb.il, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %.sroa.122202.0..sroa_idx2203 = getelementptr inbounds nuw i8, ptr %i.qv, i64 17
  %.sroa.42209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.42209.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.122202.0..sroa_idx2203, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qv)
  call void @llvm.experimental.noalias.scope.decl(metadata !12641)
  store i64 %i.ajd, ptr %i.cb, align 8, !noalias !12641
  %.sroa.22207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store ptr %i.ajf, ptr %.sroa.22207.0..sroa_idx, align 8, !noalias !12641
  %.sroa.32208.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store i8 %i.ajh, ptr %.sroa.32208.0..sroa_idx, align 8, !noalias !12641
  %i.aji = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.aji, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.cb)
          to label %bb.ka unwind label %bb.im

bb.il:                                            ; preds = %bb.ij
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qv)
  %i.ajj = trunc nuw i8 %i.ajh to i1
  invoke void @_RNvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB4_18LogicalPlanBuilder5build(ptr noalias noundef nonnull sret([320 x i8]) align 16 captures(none) dereferenceable(320) %i.qw, ptr noundef nonnull %i.ajf, i1 noundef zeroext %i.ajj)
          to label %bb.in unwind label %bb.im

bb.im:                                            ; preds = %bb.ik, %bb.il
  %i.ajk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qw)
  br label %bb.ke

bb.in:                                            ; preds = %bb.il
  %i.ajl = load i64, ptr %i.qw, align 16, !range !5941, !alias.scope !12644, !noalias !12647, !noundef !4 ; 2 uses
  %i.ajm = icmp eq i64 %i.ajl, 36
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.82190, ptr noundef nonnull align 8 dereferenceable(40) %i.ajn, i64 40, i1 false)
  br i1 %i.ajm, label %bb.io, label %bb.ip

bb.io:                                            ; preds = %bb.in
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ca, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.82190, i64 40, i1 false)
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.ajo, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.ca)
          to label %_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultTNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotNtNtNtBR_10operations5merge12MergeMetricsENtNtBR_6errors15DeltaTableErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE13from_residualBR_.exit1290 unwind label %bb.jz

_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultTNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotNtNtNtBR_10operations5merge12MergeMetricsENtNtBR_6errors15DeltaTableErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE13from_residualBR_.exit1290: ; preds = %bb.io
  store i64 1, ptr %i.co, align 16, !alias.scope !12649, !noalias !12652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  br label %bb.kb

bb.ip:                                            ; preds = %bb.in
  %.sroa.102192.0..sroa_idx2193 = getelementptr inbounds nuw i8, ptr %i.qw, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.52212)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %.sroa.52212, ptr noundef nonnull align 16 dereferenceable(272) %.sroa.102192.0..sroa_idx2193, i64 272, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qw)
  %i.ajp = getelementptr inbounds nuw i8, ptr %1, i64 4224 ; 2 uses
end_hunk_1
begin_hunk_2_@_RNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00B9_:bb.a
  store i64 14, ptr %i.aoo, align 16, !noalias !12715
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !12715
  %i.aoq = load ptr, ptr %i.amw, align 16, !noalias !12715, !nonnull !4, !noundef !4
  %i.aor = load ptr, ptr %i.amy, align 8, !noalias !12715, !nonnull !4, !align !18, !noundef !4
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aor, i64 48
  %i.aot = load ptr, ptr %i.aos, align 8, !invariant.load !4, !noalias !12719, !nonnull !4
  %i.aou = invoke { ptr, ptr } %i.aot(ptr noundef nonnull %i.aoq, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.aoo)
          to label %bb.ld unwind label %bb.lc, !noalias !12719 ; 2 uses

bb.lc:                                            ; preds = %bb.lb
  %i.aov = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit.i

bb.ld:                                            ; preds = %bb.lb
  %i.aow = extractvalue { ptr, ptr } %i.aou, 0
  %i.aox = extractvalue { ptr, ptr } %i.aou, 1
  %i.aoy = getelementptr inbounds nuw i8, ptr %1, i64 9136
  store ptr %i.aow, ptr %i.aoy, align 16, !noalias !12715
  %i.aoz = getelementptr inbounds nuw i8, ptr %1, i64 9144
  store ptr %i.aox, ptr %i.aoz, align 8, !noalias !12715
  br label %bb.lo

bb.le:                                            ; preds = %bb.la
  %i.apa = landingpad { ptr, i32 }
          cleanup
  br label %bb.lh

bb.lf:                                            ; preds = %bb.la
  store i64 38, ptr %i.bc, align 16, !alias.scope !12733, !noalias !12736
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !12715
  br label %bb.lg

bb.lg:                                            ; preds = %bb.ma, %bb.lf
  %i.apb = phi ptr [ %i.aqy, %bb.ma ], [ %i.amn, %bb.lf ] ; 2 uses
  %i.apc = phi ptr [ %i.aqz, %bb.ma ], [ %i.amo, %bb.lf ] ; 2 uses
  %i.apd = getelementptr inbounds nuw i8, ptr %1, i64 9133
  store i8 0, ptr %i.apd, align 1, !noalias !12715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !12715
  %i.ape = getelementptr inbounds nuw i8, ptr %1, i64 9134
  store i8 0, ptr %i.ape, align 2, !noalias !12715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !12715
  %i.apf = getelementptr inbounds nuw i8, ptr %1, i64 8640
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.apf)
          to label %.thread3826 unwind label %bb.os, !noalias !12719

bb.lh:                                            ; preds = %bb.kz, %bb.le, %bb.oo, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.apg = phi ptr [ %i.ard, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.awv, %bb.oo ], [ %i.amn, %bb.le ], [ %i.amn, %bb.kz ]
  %i.aph = phi ptr [ %i.are, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.aww, %bb.oo ], [ %i.amo, %bb.le ], [ %i.amo, %bb.kz ]
  %.pn26.pn.i = phi { ptr, i32 } [ %.pn23.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.awx, %bb.oo ], [ %i.apa, %bb.le ], [ %.pn3.i, %bb.kz ]
  %i.api = getelementptr inbounds nuw i8, ptr %1, i64 9133 ; 2 uses
  %i.apj = load i8, ptr %i.api, align 1, !range !178, !noalias !12715, !noundef !4
  %i.apk = trunc nuw i8 %i.apj to i1
  br i1 %i.apk, label %bb.pi, label %bb.ph

bb.li:                                            ; preds = %bb.pj, %bb.kt
  %i.apl = phi ptr [ %i.apg, %bb.pj ], [ %i.amn, %bb.kt ]
  %i.apm = phi ptr [ %i.aph, %bb.pj ], [ %i.amo, %bb.kt ]
  %.pn26.pn.pn.i = phi { ptr, i32 } [ %.pn26.pn.i, %bb.pj ], [ %i.aof, %bb.kt ]
  %i.apn = getelementptr inbounds nuw i8, ptr %1, i64 8640
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.apn) #46
          to label %bb.or unwind label %bb.mb, !noalias !12719

bb.lj:                                            ; preds = %bb.on
  %i.apo = getelementptr inbounds nuw i8, ptr %1, i64 9133
  store i8 0, ptr %i.apo, align 1, !noalias !12715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !12715
  %i.app = getelementptr inbounds nuw i8, ptr %1, i64 9134
  store i8 0, ptr %i.app, align 2, !noalias !12715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !12715
  %.phi.trans.insert162.i = getelementptr inbounds nuw i8, ptr %1, i64 9130
  %.pre163.i = load i8, ptr %.phi.trans.insert162.i, align 2, !range !178, !noalias !12715
  %i.apq = trunc nuw i8 %.pre163.i to i1
  br i1 %i.apq, label %bb.oq, label %bb.op

bb.lk:                                            ; preds = %bb.or, %bb.kn
  %i.apr = phi ptr [ %i.axb, %bb.or ], [ %i.amn, %bb.kn ] ; 2 uses
  %i.aps = phi ptr [ %i.axc, %bb.or ], [ %i.amo, %bb.kn ] ; 2 uses
  %.pn30.pn.i = phi { ptr, i32 } [ %.pn30.i, %bb.or ], [ %i.anr, %bb.kn ] ; 2 uses
  %i.apt = getelementptr inbounds nuw i8, ptr %1, i64 9131
  %i.apu = load i8, ptr %i.apt, align 1, !range !178, !noalias !12715, !noundef !4
  %i.apv = trunc nuw i8 %i.apu to i1
  br i1 %i.apv, label %bb.pl, label %.body72.i

bb.ll:                                            ; preds = %bb.kj
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @506) #50
          to label %.noexc1311 unwind label %bb.ki

.noexc1311:                                       ; preds = %bb.ll
  unreachable

bb.lm:                                            ; preds = %bb.kj
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @506) #50
          to label %.noexc1312 unwind label %bb.ki

.noexc1312:                                       ; preds = %bb.lm
  unreachable

bb.ln:                                            ; preds = %bb.lo
  %i.apw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !12715
  %.val37.i = load ptr, ptr %i.aqa, align 16, !noalias !12715
  %i.apx = getelementptr i8, ptr %1, i64 9144
  %.val38.i = load ptr, ptr %i.apx, align 8, !noalias !12715, !nonnull !4, !align !18, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %.val37.i, ptr nonnull %.val38.i) #46
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.mb, !noalias !12719

bb.lo:                                            ; preds = %bb.ld, %bb.kk
  %i.apy = phi ptr [ %i.amn, %bb.ld ], [ %i.amf, %bb.kk ] ; 7 uses
  %i.apz = phi ptr [ %i.amo, %bb.ld ], [ %i.ame, %bb.kk ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !12715
  %i.aqa = getelementptr inbounds nuw i8, ptr %1, i64 9136 ; 5 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.bk, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aqa, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.lp unwind label %bb.ln, !noalias !12719

bb.lp:                                            ; preds = %bb.lo
  %i.aqb = load i64, ptr %i.bk, align 8, !range !12625, !noalias !12715, !noundef !4 ; 3 uses
  %i.aqc = icmp eq i64 %i.aqb, 21
  br i1 %i.aqc, label %bb.lq, label %bb.lr

bb.lq:                                            ; preds = %bb.lp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !12715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !12715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !12715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !12715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !12715
  br label %.thread3065

bb.lr:                                            ; preds = %bb.lp
  %.sroa.394.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.sroa.394.0.copyload.i = load ptr, ptr %.sroa.394.0..sroa_idx.i, align 8, !noalias !12715 ; 5 uses
  %.sroa.595.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %.sroa.595.0.copyload.i = load ptr, ptr %.sroa.595.0..sroa_idx.i, align 8, !noalias !12715 ; 5 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i, i64 16, i1 false), !noalias !12715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !12715
  %.val.i = load ptr, ptr %i.aqa, align 16, !noalias !12715 ; 5 uses
  %i.aqd = getelementptr i8, ptr %1, i64 9144     ; 2 uses
  %.val36.i = load ptr, ptr %i.aqd, align 8, !noalias !12715, !nonnull !4, !align !18, !noundef !4 ; 5 uses
  %i.aqe = load ptr, ptr %.val36.i, align 8, !invariant.load !4, !noalias !12719 ; 2 uses
  %.not.i.i.i1306 = icmp eq ptr %i.aqe, null
  br i1 %.not.i.i.i1306, label %bb.lt, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.aqe(ptr noundef nonnull %.val.i)
          to label %bb.lt unwind label %bb.lv, !noalias !12719

bb.lt:                                            ; preds = %bb.ls, %bb.lr
  %i.aqf = getelementptr inbounds nuw i8, ptr %.val36.i, i64 8
  %i.aqg = load i64, ptr %i.aqf, align 8, !range !16, !invariant.load !4, !noalias !12719 ; 2 uses
  %i.aqh = icmp eq i64 %i.aqg, 0
  br i1 %i.aqh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  %i.aqi = getelementptr inbounds nuw i8, ptr %.val36.i, i64 16
  %i.aqj = load i64, ptr %i.aqi, align 8, !range !3, !invariant.load !4, !noalias !12719
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.aqg, i64 noundef range(i64 1, 536870913) %i.aqj) #40, !noalias !12719
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.lv:                                            ; preds = %bb.ls
  %i.aqk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aql = getelementptr inbounds nuw i8, ptr %.val36.i, i64 8
  %i.aqm = load i64, ptr %i.aql, align 8, !range !16, !invariant.load !4, !noalias !12719 ; 2 uses
  %i.aqn = icmp eq i64 %i.aqm, 0
  br i1 %i.aqn, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  %i.aqo = getelementptr inbounds nuw i8, ptr %.val36.i, i64 16
  %i.aqp = load i64, ptr %i.aqo, align 8, !range !3, !invariant.load !4, !noalias !12719
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.aqm, i64 noundef range(i64 1, 536870913) %i.aqp) #40, !noalias !12719
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit.i

bb.lx:                                            ; preds = %bb.ly
  %i.aqq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.lu, %bb.lt
  %.not.i.i1307 = icmp eq i64 %i.aqb, 20
  br i1 %.not.i.i1307, label %.thread174.i, label %bb.ly

bb.ly:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.4.0..sroa_idx.i1308 = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !12715
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i1308, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i, i64 16, i1 false), !noalias !12715
  call void @llvm.experimental.noalias.scope.decl(metadata !12738)
  store i64 %i.aqb, ptr %i.ba, align 8, !noalias !12741
  %.sroa.297.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %.sroa.394.0.copyload.i, ptr %.sroa.297.0..sroa_idx.i, align 8, !noalias !12741
  %.sroa.398.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store ptr %.sroa.595.0.copyload.i, ptr %.sroa.398.0..sroa_idx.i, align 8, !noalias !12741
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.aqr, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.ba)
          to label %bb.lz unwind label %bb.lx, !noalias !12719

.thread174.i:                                     ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.394.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.595.0.copyload.i) ]
  %i.aqs = getelementptr inbounds nuw i8, ptr %1, i64 9132
  store ptr %.sroa.394.0.copyload.i, ptr %i.bl, align 8, !noalias !12715
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %.sroa.595.0.copyload.i, ptr %i.aqt, align 8, !noalias !12715
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !12715
  %i.aqu = getelementptr inbounds nuw i8, ptr %1, i64 8512
  %i.aqv = load ptr, ptr %i.aqu, align 16, !noalias !12715, !nonnull !4, !noundef !4 ; 2 uses
  %i.aqw = getelementptr inbounds nuw i8, ptr %1, i64 8520
  %i.aqx = load ptr, ptr %i.aqw, align 8, !noalias !12715, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  store i8 0, ptr %i.aqs, align 4, !noalias !12715
  store ptr %i.aqv, ptr %i.aqa, align 16, !noalias !12715
  store ptr %i.aqx, ptr %i.aqd, align 8, !noalias !12715
  %.sroa.9113.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 9152
  store ptr %.sroa.394.0.copyload.i, ptr %.sroa.9113.0..sroa_idx.i, align 16, !noalias !12715
  %.sroa.10114.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 9160
  store ptr %.sroa.595.0.copyload.i, ptr %.sroa.10114.0..sroa_idx.i, align 8, !noalias !12715
  %.sroa.12115.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 9272 ; 2 uses
  store i8 0, ptr %.sroa.12115.0..sroa_idx.i, align 8, !noalias !12715
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8118.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !12715
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.i)
  br label %bb.mf

bb.lz:                                            ; preds = %bb.ly
  store i64 38, ptr %i.bc, align 16, !alias.scope !12738, !noalias !12742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !12715
  br label %bb.ma

bb.ma:                                            ; preds = %bb.pb, %bb.lz
  %i.aqy = phi ptr [ %i.asv, %bb.pb ], [ %i.apy, %bb.lz ] ; 2 uses
  %i.aqz = phi ptr [ %i.asw, %bb.pb ], [ %i.apz, %bb.lz ] ; 2 uses
  %i.ara = getelementptr inbounds nuw i8, ptr %1, i64 9132
  store i8 0, ptr %i.ara, align 4, !noalias !12715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !12715
  %i.arb = getelementptr inbounds nuw i8, ptr %1, i64 8752
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(320) %i.arb)
          to label %bb.lg unwind label %bb.oo, !noalias !12719

bb.mb:                                            ; preds = %bb.pn, %bb.pl, %bb.pk, %bb.pi, %bb.pg, %bb.pd, %.body69.i, %bb.nw, %.body49.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.ln, %bb.li
  %i.arc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !12719
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.lc, %bb.ln, %bb.lv, %bb.lw, %bb.lx, %bb.pg, %bb.pf, %bb.ol
  %i.ard = phi ptr [ %i.awn, %bb.pf ], [ %i.awn, %bb.ol ], [ %i.awn, %bb.pg ], [ %i.amn, %bb.lc ], [ %i.apy, %bb.ln ], [ %i.apy, %bb.lx ], [ %i.apy, %bb.lw ], [ %i.apy, %bb.lv ]
  %i.are = phi ptr [ %i.awo, %bb.pf ], [ %i.awo, %bb.ol ], [ %i.awo, %bb.pg ], [ %i.amo, %bb.lc ], [ %i.apz, %bb.ln ], [ %i.apz, %bb.lx ], [ %i.apz, %bb.lw ], [ %i.apz, %bb.lv ]
  %.pn23.pn.i = phi { ptr, i32 } [ %.pn20.pn.i, %bb.pf ], [ %.pn20.pn.i, %bb.ol ], [ %.pn20.pn.i, %bb.pg ], [ %i.aov, %bb.lc ], [ %i.apw, %bb.ln ], [ %i.aqq, %bb.lx ], [ %i.aqk, %bb.lw ], [ %i.aqk, %bb.lv ]
  %i.arf = getelementptr inbounds nuw i8, ptr %1, i64 9132
  store i8 0, ptr %i.arf, align 4, !noalias !12715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !12715
  %i.arg = getelementptr inbounds nuw i8, ptr %1, i64 8752
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(320) %i.arg) #46
          to label %bb.lh unwind label %bb.mb, !noalias !12719

bb.mc:                                            ; preds = %bb.mn, %bb.mm
  %i.arh = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i

.body49.i:                                        ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.mc
  %i.ari = phi ptr [ %i.amf, %bb.mc ], [ %i.auq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  %i.arj = phi ptr [ %i.ame, %bb.mc ], [ %i.aur, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  %i.ark = phi ptr [ %i.arl, %bb.mc ], [ %i.aut, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  %eh.lpad-body50.i = phi { ptr, i32 } [ %i.arh, %bb.mc ], [ %.pn15.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8118.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch0EBQ_(ptr noundef nonnull align 8 %i.ark) #46
          to label %bb.ol unwind label %bb.mb, !noalias !12719

bb.md:                                            ; preds = %bb.kj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !12715
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !12715
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !12715
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !12715
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !12715
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 9272 ; 3 uses
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !range !1165, !noalias !12744
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8118.i)
  %i.arl = getelementptr inbounds nuw i8, ptr %1, i64 9136 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !12715
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.i)
  switch i8 %.pre.i, label %default.unreachable3825 [
    i8 0, label %._crit_edge3705
    i8 1, label %bb.mm
    i8 2, label %bb.mn
    i8 3, label %bb.me
  ]

._crit_edge3705:                                  ; preds = %bb.md
  %.pre3706 = load ptr, ptr %i.arl, align 16, !noalias !12744
  %.phi.trans.insert3707 = getelementptr inbounds nuw i8, ptr %1, i64 9144
  %.pre3708 = load ptr, ptr %.phi.trans.insert3707, align 8, !noalias !12744
  %.phi.trans.insert3709 = getelementptr inbounds nuw i8, ptr %1, i64 9152
  %.pre3710 = load ptr, ptr %.phi.trans.insert3709, align 16, !noalias !12744
  %.phi.trans.insert3711 = getelementptr inbounds nuw i8, ptr %1, i64 9160
  %.pre3712 = load ptr, ptr %.phi.trans.insert3711, align 8, !noalias !12744
  br label %bb.mf

bb.me:                                            ; preds = %bb.md
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !12744
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  br label %bb.mp

bb.mf:                                            ; preds = %._crit_edge3705, %.thread174.i
  %i.arm = phi ptr [ %i.apy, %.thread174.i ], [ %i.amf, %._crit_edge3705 ] ; 2 uses
  %i.arn = phi ptr [ %i.apz, %.thread174.i ], [ %i.ame, %._crit_edge3705 ] ; 2 uses
  %i.aro = phi ptr [ %.sroa.595.0.copyload.i, %.thread174.i ], [ %.pre3712, %._crit_edge3705 ] ; 3 uses
  %i.arp = phi ptr [ %.sroa.394.0.copyload.i, %.thread174.i ], [ %.pre3710, %._crit_edge3705 ] ; 2 uses
  %i.arq = phi ptr [ %i.aqx, %.thread174.i ], [ %.pre3708, %._crit_edge3705 ]
  %i.arr = phi ptr [ %i.aqv, %.thread174.i ], [ %.pre3706, %._crit_edge3705 ]
  %i.ars = phi ptr [ %.sroa.12115.0..sroa_idx.i, %.thread174.i ], [ %.phi.trans.insert.i, %._crit_edge3705 ] ; 2 uses
  %i.art = phi ptr [ %i.aqa, %.thread174.i ], [ %i.arl, %._crit_edge3705 ] ; 2 uses
  %i.aru = getelementptr inbounds nuw i8, ptr %1, i64 9168 ; 2 uses
  store ptr %i.arp, ptr %i.aru, align 16, !noalias !12744
  %i.arv = getelementptr i8, ptr %1, i64 9176
  store ptr %i.aro, ptr %i.arv, align 8, !noalias !12744
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !12744
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !12744
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !12744
  %i.arw = getelementptr inbounds nuw i8, ptr %i.aro, i64 16
  %i.arx = load i64, ptr %i.arw, align 8, !range !3, !invariant.load !4, !noalias !12748
  %i.ary = add nsw i64 %i.arx, -1
  %i.arz = and i64 %i.ary, -16
  %i.asa = getelementptr inbounds nuw i8, ptr %i.arp, i64 %i.arz
  %i.asb = getelementptr inbounds nuw i8, ptr %i.asa, i64 16
  %i.asc = getelementptr inbounds nuw i8, ptr %i.aro, i64 72
  %i.asd = load ptr, ptr %i.asc, align 8, !invariant.load !4, !noalias !12748, !nonnull !4
  %i.ase = invoke noundef nonnull align 8 ptr %i.asd(ptr noundef nonnull %i.asb)
          to label %bb.mh unwind label %bb.mg, !noalias !12748

bb.mg:                                            ; preds = %bb.mf
  %i.asf = landingpad { ptr, i32 }
          cleanup
  br label %bb.mi

bb.mh:                                            ; preds = %bb.mf
  %i.asg = getelementptr inbounds nuw i8, ptr %i.ase, i64 312 ; 2 uses
  %i.ash = load i64, ptr %i.asg, align 8, !range !2337, !alias.scope !12749, !noalias !12748, !noundef !4 ; 2 uses
  %i.asi = icmp ne i64 %i.ash, -9223372036854775807
  call void @llvm.assume(i1 %i.asi)
  %i.asj = icmp sgt i64 %i.ash, -1
  %..i.i.i = select i1 %i.asj, i64 24, i64 8
  %i.ask = getelementptr inbounds nuw i8, ptr %i.asg, i64 %..i.i.i
  %i.asl = load i64, ptr %i.ask, align 8, !alias.scope !12749, !noalias !12748, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !12752)
  %i.asm = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store i64 0, ptr %i.asm, align 8, !alias.scope !12755, !noalias !12757
  %i.asn = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  store i64 %i.asl, ptr %i.asn, align 8, !alias.scope !12755, !noalias !12757
  store ptr %i.aru, ptr %i.aw, align 8, !alias.scope !12758, !noalias !12744
  %.sroa.5.0..sroa_idx.i.i1305 = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.arr, ptr %.sroa.5.0..sroa_idx.i.i1305, align 8, !alias.scope !12758, !noalias !12744
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store ptr %i.arq, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !12758, !noalias !12744
  invoke void @_RINvNtNtCs8CRAYtH5WmW_12futures_util6future12try_join_all12try_join_allINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1g_3ops5range5RangejENCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch00EEB2A_(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.ax, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.aw)
          to label %bb.mk unwind label %bb.mj, !noalias !12748

bb.mi:                                            ; preds = %bb.mj, %bb.mg
  %.pn.i.i = phi { ptr, i32 } [ %i.aso, %bb.mj ], [ %i.asf, %bb.mg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !12744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !12744
  br label %bb.ml

bb.mj:                                            ; preds = %bb.mh
  %i.aso = landingpad { ptr, i32 }
          cleanup
  br label %bb.mi

bb.mk:                                            ; preds = %bb.mh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !12744
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ay, ptr noundef nonnull readonly align 8 dereferenceable(88) %i.ax, i64 88, i1 false), !alias.scope !12759, !noalias !12744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !12744
  %i.asp = getelementptr inbounds nuw i8, ptr %1, i64 9184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) %i.asp, ptr noundef nonnull align 8 dereferenceable(88) %i.ay, i64 88, i1 false), !noalias !12744
  br label %bb.mp

bb.ml:                                            ; preds = %bb.ms, %bb.mo, %bb.mi
  %i.asq = phi ptr [ %i.asv, %bb.ms ], [ %i.asv, %bb.mo ], [ %i.arm, %bb.mi ]
  %i.asr = phi ptr [ %i.asw, %bb.ms ], [ %i.asw, %bb.mo ], [ %i.arn, %bb.mi ]
  %i.ass = phi ptr [ %i.asx, %bb.ms ], [ %i.asx, %bb.mo ], [ %i.ars, %bb.mi ]
  %i.ast = phi ptr [ %i.asy, %bb.ms ], [ %i.asy, %bb.mo ], [ %i.art, %bb.mi ]
  %.pn12.i.i = phi { ptr, i32 } [ %i.atc, %bb.ms ], [ %i.asu, %bb.mo ], [ %.pn.i.i, %bb.mi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  br label %.body.i.i

bb.mm:                                            ; preds = %bb.md
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @505) #50
          to label %.noexc.i unwind label %bb.mc, !noalias !12719

.noexc.i:                                         ; preds = %bb.mm
  unreachable

bb.mn:                                            ; preds = %bb.md
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @505) #50
          to label %.noexc48.i unwind label %bb.mc, !noalias !12719

.noexc48.i:                                       ; preds = %bb.mn
  unreachable

end_hunk_2
begin_hunk_3_@_RNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00B9_:bb.a

bb.ry:                                            ; preds = %.sink.split, %bb.bfb, %.body1342
  %.pn905.pn.pn = phi { ptr, i32 } [ %.pn905.pn, %bb.bfb ], [ %.pn905.pn, %.body1342 ], [ %.pn905.pn.pn.ph, %.sink.split ]
  %i.bbs = getelementptr inbounds nuw i8, ptr %1, i64 8370
  store i8 0, ptr %i.bbs, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.py)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs14kWLkQVSKO_14deltalake_core.exit2070

bb.rz:                                            ; preds = %bb.ro, %bb.rh
  %.pn201.pn = phi { ptr, i32 } [ %.pn198.pn, %bb.rh ], [ %i.bba, %bb.ro ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pw)
  br label %.sink.split

bb.sa:                                            ; preds = %bb.ri
  %i.bbt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pu)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider20TableProviderBuilderEBM_(ptr noalias noundef align 8 dereferenceable(168) %i.pv) #46
          to label %bb.rh unwind label %bb.fv

.body1996:                                        ; preds = %bb.caz, %bb.caw, %bb.cgd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs14kWLkQVSKO_14deltalake_core.exit2070, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit
  %.pn910 = phi { ptr, i32 } [ %i.ban, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit ], [ %.pn905.pn.pn.pn, %bb.cgd ], [ %.pn905.pn.pn.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs14kWLkQVSKO_14deltalake_core.exit2070 ], [ %i.emg, %bb.caz ], [ %i.eme, %bb.caw ]
  %i.bbu = getelementptr inbounds nuw i8, ptr %1, i64 8319
  store i8 0, ptr %i.bbu, align 1
  br label %bb.sb

bb.sb:                                            ; preds = %bb.qv, %bb.rb, %bb.qy, %bb.qo, %bb.qq, %bb.re, %.body1996
  %.pn910.pn = phi { ptr, i32 } [ %.pn910, %.body1996 ], [ %i.bah, %bb.re ], [ %i.azk, %bb.qv ], [ %i.azb, %bb.qo ], [ %i.bab, %bb.rb ], [ %i.azu, %bb.qy ], [ %i.azd, %bb.qq ] ; 2 uses
  %i.bbv = getelementptr inbounds nuw i8, ptr %1, i64 8352
  %i.bbw = load i8, ptr %i.bbv, align 16, !range !178, !noundef !4
  %i.bbx = trunc nuw i8 %i.bbw to i1
  br i1 %i.bbx, label %bb.cge, label %.body2001

bb.sc:                                            ; preds = %bb.qg
  %.sroa.102281.0..sroa_idx2282 = getelementptr inbounds nuw i8, ptr %i.qk, i64 32
  %.sroa.32285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.32285.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.102281.0..sroa_idx2282, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qk)
  %.sroa.22284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.22284.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.82279, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !12924)
  %i.bby = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store i64 %i.ayr, ptr %i.bby, align 16, !alias.scope !12927
  store i64 1, ptr %i.co, align 16, !alias.scope !12929, !noalias !12924
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.qm)
          to label %bb.sd unwind label %bb.qj

bb.sd:                                            ; preds = %bb.sc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qm)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit2004

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit2004: ; preds = %bb.cba, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i2000, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit1998, %bb.sd
  %i.bbz = getelementptr inbounds nuw i8, ptr %1, i64 8352
  store i8 0, ptr %i.bbz, align 16
  %i.bca = getelementptr inbounds nuw i8, ptr %1, i64 8353
  %i.bcb = load i8, ptr %i.bca, align 1, !range !178, !noundef !4
  %i.bcc = trunc nuw i8 %i.bcb to i1
  br i1 %i.bcc, label %bb.cbf, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit2006

bb.se:                                            ; preds = %bb.qd
  %i.bcd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ql)
  br label %bb.qi

.body2001:                                        ; preds = %bb.py, %bb.qi, %bb.cbe, %bb.cbc, %bb.cge, %bb.sb
  %.pn915.pn.pn = phi { ptr, i32 } [ %i.emk, %bb.cbc ], [ %.pn910.pn, %bb.sb ], [ %.pn910.pn, %bb.cge ], [ %i.emm, %bb.cbe ], [ %.pn915, %bb.qi ], [ %i.ayj, %bb.py ] ; 3 uses
  %i.bce = getelementptr inbounds nuw i8, ptr %1, i64 8352
  store i8 0, ptr %i.bce, align 16
  %i.bcf = getelementptr inbounds nuw i8, ptr %1, i64 8353
  %i.bcg = load i8, ptr %i.bcf, align 1, !range !178, !noundef !4
  %i.bch = trunc nuw i8 %i.bcg to i1
  br i1 %i.bch, label %bb.cgf, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit2072

bb.sf:                                            ; preds = %bb.ps
  %.sroa.32270.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.32270, i64 8
  %i.bci = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.bci, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.32270.16..sroa_idx, i64 96, i1 false)
  store i64 1, ptr %i.co, align 16, !alias.scope !12930, !noalias !12933
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.02256)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qp)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.112238)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit2006

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit2006: ; preds = %bb.sf, %bb.pv, %bb.cbf, %bb.cbg, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit2004
  %i.bcj = getelementptr inbounds nuw i8, ptr %1, i64 8353
  store i8 0, ptr %i.bcj, align 1
  %i.bck = getelementptr inbounds nuw i8, ptr %1, i64 4544
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.bck)
          to label %bb.jt unwind label %bb.cbi

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit2072: ; preds = %bb.cgf, %bb.cgg, %bb.cbh, %.body1296, %.body2001
  %.pn919.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn919.pn, %.body1296 ], [ %i.emq, %bb.cbh ], [ %.pn915.pn.pn, %.body2001 ], [ %.pn915.pn.pn, %bb.cgg ], [ %.pn915.pn.pn, %bb.cgf ]
  %i.bcl = getelementptr inbounds nuw i8, ptr %1, i64 8353
  store i8 0, ptr %i.bcl, align 1
  %i.bcm = getelementptr inbounds nuw i8, ptr %1, i64 4544
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.bcm) #46
          to label %bb.ju unwind label %bb.fv

bb.sg:                                            ; preds = %bb.sh
  %i.bcn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pp)
  %.val1091 = load ptr, ptr %i.bcp, align 16
  %i.bco = getelementptr i8, ptr %1, i64 8392
  %.val1092 = load ptr, ptr %i.bco, align 8, !nonnull !4, !align !18, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %.val1091, ptr nonnull %.val1092) #46
          to label %.body1342 unwind label %bb.fv

bb.sh:                                            ; preds = %bb.c, %bb.rx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.pp)
  %i.bcp = getelementptr inbounds nuw i8, ptr %1, i64 8384 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.pp, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bcp, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.si unwind label %bb.sg

bb.si:                                            ; preds = %bb.sh
  %i.bcq = load i64, ptr %i.pp, align 8, !range !12625, !noundef !4 ; 3 uses
  %i.bcr = icmp eq i64 %i.bcq, 21
  br i1 %i.bcr, label %bb.sj, label %bb.sk

bb.sj:                                            ; preds = %bb.si
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pp)
  store i64 2, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.sa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.rm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.py)
  br label %common.ret

bb.sk:                                            ; preds = %bb.si
  %.sroa.32313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pp, i64 8
  %.sroa.32313.0.copyload = load ptr, ptr %.sroa.32313.0..sroa_idx, align 8 ; 3 uses
  %.sroa.52314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pp, i64 16
  %.sroa.52314.0.copyload = load ptr, ptr %.sroa.52314.0..sroa_idx, align 8 ; 3 uses
  %.sroa.72315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pp, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.72315, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.72315.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pp)
  %.val1089 = load ptr, ptr %i.bcp, align 16      ; 5 uses
  %i.bcs = getelementptr i8, ptr %1, i64 8392
  %.val1090 = load ptr, ptr %i.bcs, align 8, !nonnull !4, !align !18, !noundef !4 ; 5 uses
  %i.bct = load ptr, ptr %.val1090, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i1340 = icmp eq ptr %i.bct, null
  br i1 %.not.i.i1340, label %bb.sm, label %bb.sl

bb.sl:                                            ; preds = %bb.sk
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1089) ]
  invoke void %i.bct(ptr noundef nonnull %.val1089)
          to label %bb.sm unwind label %bb.so

bb.sm:                                            ; preds = %bb.sl, %bb.sk
  %i.bcu = getelementptr inbounds nuw i8, ptr %.val1090, i64 8
  %i.bcv = load i64, ptr %i.bcu, align 8, !range !16, !invariant.load !4 ; 2 uses
  %i.bcw = icmp eq i64 %i.bcv, 0
  br i1 %i.bcw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit1344, label %bb.sn

bb.sn:                                            ; preds = %bb.sm
  %i.bcx = getelementptr inbounds nuw i8, ptr %.val1090, i64 16
  %i.bcy = load i64, ptr %i.bcx, align 8, !range !3, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1089) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1089, i64 noundef range(i64 1, 0) %i.bcv, i64 noundef range(i64 1, 536870913) %i.bcy) #40
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit1344

bb.so:                                            ; preds = %bb.sl
  %i.bcz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bda = getelementptr inbounds nuw i8, ptr %.val1090, i64 8
  %i.bdb = load i64, ptr %i.bda, align 8, !range !16, !invariant.load !4 ; 2 uses
  %i.bdc = icmp eq i64 %i.bdb, 0
  br i1 %i.bdc, label %.body1342, label %bb.sp

bb.sp:                                            ; preds = %bb.so
  %i.bdd = getelementptr inbounds nuw i8, ptr %.val1090, i64 16
  %i.bde = load i64, ptr %i.bdd, align 8, !range !3, !invariant.load !4
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1089, i64 noundef range(i64 1, 0) %i.bdb, i64 noundef range(i64 1, 536870913) %i.bde) #40
  br label %.body1342

bb.sq:                                            ; preds = %bb.sr, %bb.ss
  %i.bdf = landingpad { ptr, i32 }
          cleanup
  br label %.body1342

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit1344: ; preds = %bb.sn, %bb.sm
  %.not.i1345 = icmp eq i64 %i.bcq, 20
  br i1 %.not.i1345, label %bb.ss, label %bb.sr

bb.sr:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit1344
  %.sroa.42319.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.42319.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.72315, i64 16, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !12935)
  store i64 %i.bcq, ptr %i.ao, align 8, !noalias !12935
  %.sroa.22317.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %.sroa.32313.0.copyload, ptr %.sroa.22317.0..sroa_idx, align 8, !noalias !12935
  %.sroa.32318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr %.sroa.52314.0.copyload, ptr %.sroa.32318.0..sroa_idx, align 8, !noalias !12935
  %i.bdg = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.bdg, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.ao)
          to label %bb.bez unwind label %bb.sq

bb.ss:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit1344
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.32313.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52314.0.copyload) ]
  %i.bdh = invoke { ptr, ptr } @_RNvNtCsanCXJAiNsO_18datafusion_catalog20default_table_source18provider_as_source(ptr noundef nonnull %.sroa.32313.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.sroa.52314.0.copyload)
          to label %bb.st unwind label %bb.sq     ; 2 uses

bb.st:                                            ; preds = %bb.ss
  %i.bdi = extractvalue { ptr, ptr } %i.bdh, 0
  %i.bdj = extractvalue { ptr, ptr } %i.bdh, 1
  %i.bdk = getelementptr inbounds nuw i8, ptr %1, i64 8370
  store i8 0, ptr %i.bdk, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.py)
  %i.bdl = getelementptr inbounds nuw i8, ptr %1, i64 8369 ; 2 uses
  store i8 1, ptr %i.bdl, align 1
  store ptr %i.bdi, ptr %i.pz, align 8
  %i.bdm = getelementptr inbounds nuw i8, ptr %i.pz, i64 8 ; 2 uses
  store ptr %i.bdj, ptr %i.bdm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.po)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.82322)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.pn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.pm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.pl)
  %i.bdn = getelementptr inbounds nuw i8, ptr %1, i64 7416
  call void @llvm.experimental.noalias.scope.decl(metadata !12938)
  call void @llvm.experimental.noalias.scope.decl(metadata !12941)
  %i.bdo = load i64, ptr %i.bdn, align 8, !range !1069, !alias.scope !12941, !noalias !12938, !noundef !4 ; 2 uses
  %i.bdp = getelementptr inbounds nuw i8, ptr %1, i64 7424
  %i.bdq = load ptr, ptr %i.bdp, align 16, !alias.scope !12941, !noalias !12938, !nonnull !4, !noundef !4 ; 4 uses
  %i.bdr = getelementptr inbounds nuw i8, ptr %1, i64 7432
  %i.bds = load i64, ptr %i.bdr, align 8, !alias.scope !12941, !noalias !12938, !noundef !4 ; 3 uses
  %i.bdt = atomicrmw add ptr %i.bdq, i64 1 monotonic, align 8, !noalias !12943
  %i.bdu = icmp slt i64 %i.bdt, 0                 ; 3 uses
  switch i64 %i.bdo, label %default.unreachable3825 [
    i64 0, label %bb.su
    i64 1, label %bb.sv
    i64 2, label %bb.sw
  ]

bb.su:                                            ; preds = %bb.st
  br i1 %i.bdu, label %bb.sx, label %bb.th

bb.sv:                                            ; preds = %bb.st
  br i1 %i.bdu, label %bb.sz, label %bb.sy

bb.sw:                                            ; preds = %bb.st
  br i1 %i.bdu, label %bb.tc, label %bb.tb

bb.sx:                                            ; preds = %bb.su
  call void @llvm.trap()
  unreachable

.sink.split.i1349:                                ; preds = %bb.tf, %bb.sy
  %.sink18.i1350.sroa.phi = phi ptr [ %.sink18.i1350.sroa.gep, %bb.tf ], [ %.sink18.i1350.sroa.gep2336, %bb.sy ]
  %.sink16.i1351 = phi ptr [ %i.bec, %bb.tf ], [ %i.bdq, %bb.sy ]
  %.sink15.i1352.sroa.phi = phi ptr [ %.sink15.i1352.sroa.gep, %bb.tf ], [ %.sink15.i1352.sroa.gep2337, %bb.sy ]
  %.sink13.i1353 = phi i64 [ %i.bee, %bb.tf ], [ %i.bds, %bb.sy ]
  %.sink12.ph.i1354 = phi i64 [ 40, %bb.tf ], [ 24, %bb.sy ]
  %.sink10.ph.i1355 = phi ptr [ %i.bei, %bb.tf ], [ %i.bdw, %bb.sy ]
  %.sink9.ph.i1356 = phi i64 [ 48, %bb.tf ], [ 32, %bb.sy ]
  %.sink7.ph.i1357 = phi i64 [ %i.bek, %bb.tf ], [ %i.bdy, %bb.sy ]
  store ptr %.sink16.i1351, ptr %.sink18.i1350.sroa.phi, align 8, !alias.scope !12938, !noalias !12941
  store i64 %.sink13.i1353, ptr %.sink15.i1352.sroa.phi, align 8, !alias.scope !12938, !noalias !12941
  br label %bb.th

bb.sy:                                            ; preds = %bb.sv
  %i.bdv = getelementptr inbounds nuw i8, ptr %1, i64 7440
  %i.bdw = load ptr, ptr %i.bdv, align 16, !alias.scope !12941, !noalias !12938, !nonnull !4, !noundef !4 ; 2 uses
  %i.bdx = getelementptr inbounds nuw i8, ptr %1, i64 7448
  %i.bdy = load i64, ptr %i.bdx, align 8, !alias.scope !12941, !noalias !12938, !noundef !4
  %i.bdz = atomicrmw add ptr %i.bdw, i64 1 monotonic, align 8, !noalias !12943
  %i.bea = icmp slt i64 %i.bdz, 0
  br i1 %i.bea, label %bb.ta, label %.sink.split.i1349

bb.sz:                                            ; preds = %bb.sv
  call void @llvm.trap()
  unreachable

bb.ta:                                            ; preds = %bb.sy
  call void @llvm.trap()
  unreachable

bb.tb:                                            ; preds = %bb.sw
  %i.beb = getelementptr inbounds nuw i8, ptr %1, i64 7440
  %i.bec = load ptr, ptr %i.beb, align 16, !alias.scope !12941, !noalias !12938, !nonnull !4, !noundef !4 ; 2 uses
  %i.bed = getelementptr inbounds nuw i8, ptr %1, i64 7448
  %i.bee = load i64, ptr %i.bed, align 8, !alias.scope !12941, !noalias !12938, !noundef !4
  %i.bef = atomicrmw add ptr %i.bec, i64 1 monotonic, align 8, !noalias !12943
  %i.beg = icmp slt i64 %i.bef, 0
  br i1 %i.beg, label %bb.te, label %bb.td

bb.tc:                                            ; preds = %bb.sw
  call void @llvm.trap()
  unreachable

bb.td:                                            ; preds = %bb.tb
  %i.beh = getelementptr inbounds nuw i8, ptr %1, i64 7456
  %i.bei = load ptr, ptr %i.beh, align 16, !alias.scope !12941, !noalias !12938, !nonnull !4, !noundef !4 ; 2 uses
  %i.bej = getelementptr inbounds nuw i8, ptr %1, i64 7464
  %i.bek = load i64, ptr %i.bej, align 8, !alias.scope !12941, !noalias !12938, !noundef !4
  %i.bel = atomicrmw add ptr %i.bei, i64 1 monotonic, align 8, !noalias !12943
  %i.bem = icmp slt i64 %i.bel, 0
  br i1 %i.bem, label %bb.tg, label %bb.tf

bb.te:                                            ; preds = %bb.tb
  call void @llvm.trap()
  unreachable

bb.tf:                                            ; preds = %bb.td
  store ptr %i.bdq, ptr %.sink18.i1350.sroa.gep2336, align 8, !alias.scope !12938, !noalias !12941
  store i64 %i.bds, ptr %.sink15.i1352.sroa.gep2337, align 8, !alias.scope !12938, !noalias !12941
  br label %.sink.split.i1349

bb.tg:                                            ; preds = %bb.td
  call void @llvm.trap()
  unreachable

bb.th:                                            ; preds = %.sink.split.i1349, %bb.su
  %.sink12.i1358 = phi i64 [ 8, %bb.su ], [ %.sink12.ph.i1354, %.sink.split.i1349 ]
  %.sink10.i1359 = phi ptr [ %i.bdq, %bb.su ], [ %.sink10.ph.i1355, %.sink.split.i1349 ]
  %.sink9.i1360 = phi i64 [ 16, %bb.su ], [ %.sink9.ph.i1356, %.sink.split.i1349 ]
  %.sink7.i1361 = phi i64 [ %i.bds, %bb.su ], [ %.sink7.ph.i1357, %.sink.split.i1349 ]
  %i.ben = getelementptr inbounds nuw i8, ptr %i.pl, i64 %.sink12.i1358
  store ptr %.sink10.i1359, ptr %i.ben, align 8, !alias.scope !12938, !noalias !12941
  %i.beo = getelementptr inbounds nuw i8, ptr %i.pl, i64 %.sink9.i1360
  store i64 %.sink7.i1361, ptr %i.beo, align 8, !alias.scope !12938, !noalias !12941
  store i64 %i.bdo, ptr %i.pl, align 8, !alias.scope !12938, !noalias !12941
  store i8 0, ptr %i.bdl, align 1
  %i.bep = load ptr, ptr %i.pz, align 8, !nonnull !4, !noundef !4
  %i.beq = load ptr, ptr %i.bdm, align 8, !nonnull !4, !align !18, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.pk)
  store i64 -9223372036854775808, ptr %i.pk, align 8
  invoke void @_RINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB5_18LogicalPlanBuilder4scanNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.pm, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.pl, ptr noundef nonnull %i.bep, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.beq, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.pk)
          to label %bb.tj unwind label %bb.ti

bb.ti:                                            ; preds = %bb.th
  %i.ber = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pn)
  br label %bb.bet

bb.tj:                                            ; preds = %bb.th
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pl)
  call void @llvm.experimental.noalias.scope.decl(metadata !12944)
  %i.bes = load i64, ptr %i.pm, align 8, !range !181, !alias.scope !12947, !noalias !12944, !noundef !4 ; 2 uses
  %.not.i1365 = icmp eq i64 %i.bes, 20
  %i.bet = getelementptr inbounds nuw i8, ptr %i.pm, i64 8
  %i.beu = load ptr, ptr %i.bet, align 8, !alias.scope !12949 ; 2 uses
  %i.bev = getelementptr inbounds nuw i8, ptr %i.pm, i64 16
  %i.bew = load i8, ptr %i.bev, align 8, !alias.scope !12949 ; 2 uses
  br i1 %.not.i1365, label %bb.tl, label %bb.tk

bb.tk:                                            ; preds = %bb.tj
  %.sroa.122334.0..sroa_idx2335 = getelementptr inbounds nuw i8, ptr %i.pm, i64 17
  %.sroa.42341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.42341.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.122334.0..sroa_idx2335, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pm)
  call void @llvm.experimental.noalias.scope.decl(metadata !12950)
  store i64 %i.bes, ptr %i.an, align 8, !noalias !12950
  %.sroa.22339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.beu, ptr %.sroa.22339.0..sroa_idx, align 8, !noalias !12950
  %.sroa.32340.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i8 %i.bew, ptr %.sroa.32340.0..sroa_idx, align 8, !noalias !12950
  %i.bex = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.bex, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.an)
          to label %bb.bew unwind label %bb.tm

bb.tl:                                            ; preds = %bb.tj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pm)
  %i.bey = trunc nuw i8 %i.bew to i1
  invoke void @_RNvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB4_18LogicalPlanBuilder5build(ptr noalias noundef nonnull sret([320 x i8]) align 16 captures(none) dereferenceable(320) %i.pn, ptr noundef nonnull %i.beu, i1 noundef zeroext %i.bey)
          to label %bb.tn unwind label %bb.tm

bb.tm:                                            ; preds = %bb.tk, %bb.tl
  %i.bez = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pn)
  br label %bb.bet

bb.tn:                                            ; preds = %bb.tl
  call void @llvm.experimental.noalias.scope.decl(metadata !12953)
  %i.bfa = load i64, ptr %i.pn, align 16, !range !5941, !alias.scope !12956, !noalias !12953, !noundef !4 ; 2 uses
  %i.bfb = icmp eq i64 %i.bfa, 36
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.pn, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.82322, ptr noundef nonnull align 8 dereferenceable(40) %i.bfc, i64 40, i1 false), !alias.scope !12958
  br i1 %i.bfb, label %bb.to, label %bb.tp

bb.to:                                            ; preds = %bb.tn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.am, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.82322, i64 40, i1 false)
  %i.bfd = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.bfd, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.am)
          to label %_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultTNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotNtNtNtBR_10operations5merge12MergeMetricsENtNtBR_6errors15DeltaTableErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE13from_residualBR_.exit1371 unwind label %bb.beu

_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultTNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotNtNtNtBR_10operations5merge12MergeMetricsENtNtBR_6errors15DeltaTableErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE13from_residualBR_.exit1371: ; preds = %bb.to
  store i64 1, ptr %i.co, align 16, !alias.scope !12959, !noalias !12962
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br label %bb.bev
end_hunk_3
begin_hunk_4_@_RNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00B9_:bb.a
  %i.ctr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bel

bb.ben:                                           ; preds = %bb.ty
  store i64 1, ptr %i.co, align 16, !alias.scope !13770, !noalias !13773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.82347)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs14kWLkQVSKO_14deltalake_core.exit1993

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs14kWLkQVSKO_14deltalake_core.exit1993: ; preds = %bb.caq, %bb.ben, %bb.bee
  %i.cts = getelementptr inbounds nuw i8, ptr %1, i64 8350
  store i8 0, ptr %i.cts, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pj)
  %i.ctt = getelementptr inbounds nuw i8, ptr %1, i64 8351
  %i.ctu = load i8, ptr %i.ctt, align 1, !range !178, !noundef !4
  %i.ctv = trunc nuw i8 %i.ctu to i1
  br i1 %i.ctv, label %bb.cat, label %bb.bex

bb.beo:                                           ; preds = %bb.tv, %bb.bep
  %i.ctw = phi { ptr, i32 } [ %i.ctx, %bb.bep ], [ %i.bfj, %bb.tv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pe)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pf)
  br label %bb.bel

bb.bep:                                           ; preds = %bb.tu
  %i.ctx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pd)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(336) %i.pe) #46
          to label %bb.beo unwind label %bb.fv

.body1991:                                        ; preds = %bb.cas, %.body.i1989, %bb.cfz, %bb.bel, %bb.bek
  %.pn898.pn = phi { ptr, i32 } [ %.pn898, %bb.bel ], [ %.pn892.pn.pn.pn, %bb.bek ], [ %.pn892.pn.pn.pn, %bb.cfz ], [ %i.ely, %bb.cas ], [ %i.elw, %.body.i1989 ]
  %i.cty = getelementptr inbounds nuw i8, ptr %1, i64 8350
  store i8 0, ptr %i.cty, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pg)
  br label %bb.bes

bb.beq:                                           ; preds = %bb.tt, %bb.ber, %bb.tq
  %.pn212.pn = phi { ptr, i32 } [ %i.ctz, %bb.ber ], [ %i.bfi, %bb.tt ], [ %i.bfg, %bb.tq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pi)
  br label %bb.bes

bb.ber:                                           ; preds = %bb.tr
  %i.ctz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ph)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(1680) %i.pi) #46
          to label %bb.beq unwind label %bb.fv

bb.bes:                                           ; preds = %bb.beq, %.body1991
  %.pn898.pn.pn = phi { ptr, i32 } [ %.pn898.pn, %.body1991 ], [ %.pn212.pn, %bb.beq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pj)
  %i.cua = getelementptr inbounds nuw i8, ptr %1, i64 8351
  %i.cub = load i8, ptr %i.cua, align 1, !range !178, !noundef !4
  %i.cuc = trunc nuw i8 %i.cub to i1
  br i1 %i.cuc, label %bb.cga, label %bb.bey

bb.bet:                                           ; preds = %bb.beu, %bb.tm, %bb.ti
  %.pn902 = phi { ptr, i32 } [ %i.bez, %bb.tm ], [ %i.cud, %bb.beu ], [ %i.ber, %bb.ti ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.82322)
  br label %bb.bey

bb.beu:                                           ; preds = %bb.to
  %i.cud = landingpad { ptr, i32 }
          cleanup
  br label %bb.bet

bb.bev:                                           ; preds = %_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultTNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotNtNtNtBR_10operations5merge12MergeMetricsENtNtBR_6errors15DeltaTableErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE13from_residualBR_.exit1371, %bb.bew
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.82322)
  br label %bb.bex

bb.bew:                                           ; preds = %bb.tk
  store i64 1, ptr %i.co, align 16, !alias.scope !12950, !noalias !13775
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pn)
  br label %bb.bev

bb.bex:                                           ; preds = %bb.cat, %bb.bev, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs14kWLkQVSKO_14deltalake_core.exit1993
  %i.cue = getelementptr inbounds nuw i8, ptr %1, i64 8351
  store i8 0, ptr %i.cue, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.po)
  br label %bb.bfa

bb.bey:                                           ; preds = %bb.cga, %bb.cau, %bb.bet, %bb.bes
  %.pn902.pn = phi { ptr, i32 } [ %.pn902, %bb.bet ], [ %i.elz, %bb.cau ], [ %.pn898.pn.pn, %bb.cga ], [ %.pn898.pn.pn, %bb.bes ] ; 3 uses
  %i.cuf = getelementptr inbounds nuw i8, ptr %1, i64 8351
  store i8 0, ptr %i.cuf, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.po)
  %i.cug = getelementptr inbounds nuw i8, ptr %1, i64 8369
  %i.cuh = load i8, ptr %i.cug, align 1, !range !178, !noundef !4
  %i.cui = trunc nuw i8 %i.cuh to i1
  br i1 %i.cui, label %bb.cgb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs14kWLkQVSKO_14deltalake_core.exit2070

bb.bez:                                           ; preds = %bb.sr
  store i64 1, ptr %i.co, align 16, !alias.scope !12935, !noalias !13777
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  %i.cuj = getelementptr inbounds nuw i8, ptr %1, i64 8370
  store i8 0, ptr %i.cuj, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.py)
  br label %bb.bfa

bb.bfa:                                           ; preds = %bb.bez, %bb.bex
  %i.cuk = getelementptr inbounds nuw i8, ptr %1, i64 8369
  store i8 0, ptr %i.cuk, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pz)
  %i.cul = getelementptr inbounds nuw i8, ptr %1, i64 8319 ; 2 uses
  %i.cum = load i8, ptr %i.cul, align 1, !range !178, !noundef !4
  %i.cun = trunc nuw i8 %i.cum to i1
  br i1 %i.cun, label %bb.cav, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit1998

bb.bfb:                                           ; preds = %.body1342
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider20TableProviderBuilderEBM_(ptr noalias noundef align 8 dereferenceable(168) %i.py) #46
          to label %bb.ry unwind label %bb.fv

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs14kWLkQVSKO_14deltalake_core.exit2070: ; preds = %bb.cgb, %bb.cgc, %bb.bey, %bb.ry
  %.pn905.pn.pn.pn = phi { ptr, i32 } [ %.pn905.pn.pn, %bb.ry ], [ %.pn902.pn, %bb.bey ], [ %.pn902.pn, %bb.cgc ], [ %.pn902.pn, %bb.cgb ] ; 2 uses
  %i.cuo = getelementptr inbounds nuw i8, ptr %1, i64 8369
  store i8 0, ptr %i.cuo, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pz)
  %i.cup = getelementptr inbounds nuw i8, ptr %1, i64 8319
  %i.cuq = load i8, ptr %i.cup, align 1, !range !178, !noundef !4
  %i.cur = trunc nuw i8 %i.cuq to i1
  br i1 %i.cur, label %bb.cgd, label %.body1996

bb.bfc:                                           ; preds = %bb.bfd
  %i.cus = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState20create_physical_plan0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 16 %i.cut) #46
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit2066 unwind label %bb.fv

bb.bfd:                                           ; preds = %bb.d, %bb.alh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ej)
  %i.cut = getelementptr inbounds nuw i8, ptr %1, i64 8384 ; 4 uses
  invoke fastcc void @_RNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtB6_12SessionState20create_physical_plan0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.ej, ptr noundef nonnull align 16 %i.cut, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.bfe unwind label %bb.bfc

bb.bfe:                                           ; preds = %bb.bfd
  %i.cuu = load i64, ptr %i.ej, align 8, !range !12625, !noundef !4 ; 3 uses
  %i.cuv = icmp eq i64 %i.cuu, 21
  br i1 %i.cuv, label %bb.bff, label %bb.bfg

bb.bff:                                           ; preds = %bb.bfe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej)
  store i64 2, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.sa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.rm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.po)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.oz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ow)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ho)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hf)
  br label %common.ret

bb.bfg:                                           ; preds = %bb.bfe
  %.sroa.32820.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %.sroa.32820.0.copyload = load ptr, ptr %.sroa.32820.0..sroa_idx, align 8 ; 3 uses
  %.sroa.52821.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %.sroa.52821.0.copyload = load ptr, ptr %.sroa.52821.0..sroa_idx, align 8 ; 3 uses
  %.sroa.72822.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.72822, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.72822.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState20create_physical_plan0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 16 %i.cut)
          to label %bb.bfi unwind label %bb.bfh

bb.bfh:                                           ; preds = %bb.bfj, %bb.bfg
  %i.cuw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit2066

bb.bfi:                                           ; preds = %bb.bfg
  %.not.i1630 = icmp eq i64 %i.cuu, 20
  br i1 %.not.i1630, label %bb.bfk, label %bb.bfj

bb.bfj:                                           ; preds = %bb.bfi
  %.sroa.42826.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.42826.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.72822, i64 16, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !13779)
  store i64 %i.cuu, ptr %i.f, align 8, !noalias !13779
  %.sroa.22824.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.32820.0.copyload, ptr %.sroa.22824.0..sroa_idx, align 8, !noalias !13779
  %.sroa.32825.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %.sroa.52821.0.copyload, ptr %.sroa.32825.0..sroa_idx, align 8, !noalias !13779
  %i.cux = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.cux, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.f)
          to label %bb.bhv unwind label %bb.bfh

bb.bfk:                                           ; preds = %bb.bfi
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.32820.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52821.0.copyload) ]
  %i.cuy = getelementptr inbounds nuw i8, ptr %1, i64 8323 ; 2 uses
  store i8 1, ptr %i.cuy, align 1
  %i.cuz = getelementptr inbounds nuw i8, ptr %1, i64 6688 ; 7 uses
  store ptr %.sroa.32820.0.copyload, ptr %i.cuz, align 16
  %i.cva = getelementptr inbounds nuw i8, ptr %1, i64 6696
  store ptr %.sroa.52821.0.copyload, ptr %i.cva, align 8
  %i.cvb = invoke { ptr, ptr } @_RNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion8physical16find_metric_node(ptr noalias noundef nonnull readonly captures(address, read_provenance) @246, i64 noundef 18, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cuz)
          to label %bb.bfm unwind label %bb.bfl   ; 2 uses

bb.bfl:                                           ; preds = %bb.bfo, %bb.bfn, %bb.bfk
  %i.cvc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit1680

bb.bfm:                                           ; preds = %bb.bfk
  %i.cvd = extractvalue { ptr, ptr } %i.cvb, 0    ; 2 uses
  %.not.i1633 = icmp eq ptr %i.cvd, null
  br i1 %.not.i1633, label %bb.bfn, label %bb.bfp

bb.bfn:                                           ; preds = %bb.bfm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13782
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef 37, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc1636 unwind label %bb.bfl

.noexc1636:                                       ; preds = %bb.bfn
  %i.cve = load i64, ptr %i.e, align 8, !range !58, !noalias !13782, !noundef !4
  %i.cvf = trunc nuw i64 %i.cve to i1
  %i.cvg = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cvh = load i64, ptr %i.cvg, align 8, !range !17, !noalias !13782, !noundef !4 ; 3 uses
  %i.cvi = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.cvf, label %bb.bfo, label %bb.bhu, !prof !52

bb.bfo:                                           ; preds = %.noexc1636
  %i.cvj = load i64, ptr %i.cvi, align 8, !noalias !13782
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.cvh, i64 %i.cvj) #48
          to label %.noexc1637 unwind label %bb.bfl

.noexc1637:                                       ; preds = %bb.bfo
  unreachable

bb.bfp:                                           ; preds = %bb.bfm
  %i.cvk = extractvalue { ptr, ptr } %i.cvb, 1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cvk) ]
  %i.cvl = getelementptr inbounds nuw i8, ptr %1, i64 6704
  store ptr %i.cvd, ptr %i.cvl, align 16
  %i.cvm = getelementptr inbounds nuw i8, ptr %1, i64 6712
  store ptr %i.cvk, ptr %i.cvm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ei)
  %i.cvn = invoke { ptr, ptr } @_RNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion8physical16find_metric_node(ptr noalias noundef nonnull readonly captures(address, read_provenance) @253, i64 noundef 18, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cuz)
          to label %bb.bfr unwind label %bb.bfq   ; 2 uses

bb.bfq:                                           ; preds = %bb.bfr, %bb.bfp
  %i.cvo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit1676

bb.bfr:                                           ; preds = %bb.bfp
  %i.cvp = extractvalue { ptr, ptr } %i.cvn, 0
  %i.cvq = extractvalue { ptr, ptr } %i.cvn, 1
  invoke fastcc void @_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EE10ok_or_elseNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorNCNCNCNvNtNtB2P_10operations5merge7execute00s6_0EB2P_(ptr noalias noundef align 16 captures(none) dereferenceable(96) %i.ei, ptr noundef %i.cvp, ptr %i.cvq)
          to label %bb.bfs unwind label %bb.bfq

bb.bfs:                                           ; preds = %bb.bfr
  call void @llvm.experimental.noalias.scope.decl(metadata !13789)
  %i.cvr = load i64, ptr %i.ei, align 16, !range !1449, !alias.scope !13792, !noalias !13789, !noundef !4 ; 2 uses
  %.not.i1639 = icmp eq i64 %i.cvr, -9223372036854775711
  %i.cvs = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.cvt = load ptr, ptr %i.cvs, align 8, !alias.scope !13794 ; 2 uses
  %i.cvu = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.cvv = load ptr, ptr %i.cvu, align 16, !alias.scope !13794 ; 2 uses
  br i1 %.not.i1639, label %bb.bft, label %bb.bhr

bb.bft:                                           ; preds = %bb.bfs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei)
  %i.cvw = getelementptr inbounds nuw i8, ptr %1, i64 6720 ; 2 uses
  store ptr %i.cvt, ptr %i.cvw, align 16
  %i.cvx = getelementptr inbounds nuw i8, ptr %1, i64 6728
  store ptr %i.cvv, ptr %i.cvx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eh)
  %i.cvy = invoke { ptr, ptr } @_RNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion8physical16find_metric_node(ptr noalias noundef nonnull readonly captures(address, read_provenance) @263, i64 noundef 18, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cuz)
          to label %bb.bfv unwind label %bb.bfu   ; 2 uses

bb.bfu:                                           ; preds = %bb.bfv, %bb.bft
  %i.cvz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit1672

bb.bfv:                                           ; preds = %bb.bft
  %i.cwa = extractvalue { ptr, ptr } %i.cvy, 0
  %i.cwb = extractvalue { ptr, ptr } %i.cvy, 1
  invoke fastcc void @_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EE10ok_or_elseNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorNCNCNCNvNtNtB2P_10operations5merge7execute00s6_0EB2P_(ptr noalias noundef align 16 captures(none) dereferenceable(96) %i.eh, ptr noundef %i.cwa, ptr %i.cwb)
          to label %bb.bfw unwind label %bb.bfu

bb.bfw:                                           ; preds = %bb.bfv
  call void @llvm.experimental.noalias.scope.decl(metadata !13795)
  %i.cwc = load i64, ptr %i.eh, align 16, !range !1449, !alias.scope !13798, !noalias !13795, !noundef !4 ; 2 uses
  %.not.i1641 = icmp eq i64 %i.cwc, -9223372036854775711
  %i.cwd = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.cwe = load ptr, ptr %i.cwd, align 8, !alias.scope !13800 ; 2 uses
  %i.cwf = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.cwg = load ptr, ptr %i.cwf, align 16, !alias.scope !13800 ; 2 uses
  br i1 %.not.i1641, label %bb.bfx, label %bb.bho

bb.bfx:                                           ; preds = %bb.bfw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh)
  %i.cwh = getelementptr inbounds nuw i8, ptr %1, i64 6736
  store ptr %i.cwe, ptr %i.cwh, align 16
  %i.cwi = getelementptr inbounds nuw i8, ptr %1, i64 6744
  store ptr %i.cwg, ptr %i.cwi, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg)
  %i.cwj = invoke { ptr, ptr } @_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7barrier9find_nodeNtB2_16MergeBarrierExecEB8_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cuz)
          to label %bb.bfz unwind label %bb.bfy   ; 2 uses

bb.bfy:                                           ; preds = %bb.bfz, %bb.bfx
  %i.cwk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit1668

bb.bfz:                                           ; preds = %bb.bfx
  %i.cwl = extractvalue { ptr, ptr } %i.cwj, 0
  %i.cwm = extractvalue { ptr, ptr } %i.cwj, 1
  invoke fastcc void @_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EE10ok_or_elseNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorNCNCNCNvNtNtB2P_10operations5merge7execute00s6_0EB2P_(ptr noalias noundef align 16 captures(none) dereferenceable(96) %i.eg, ptr noundef %i.cwl, ptr %i.cwm)
          to label %bb.bga unwind label %bb.bfy

bb.bga:                                           ; preds = %bb.bfz
  call void @llvm.experimental.noalias.scope.decl(metadata !13801)
  %i.cwn = load i64, ptr %i.eg, align 16, !range !1449, !alias.scope !13804, !noalias !13801, !noundef !4 ; 2 uses
  %.not.i1643 = icmp eq i64 %i.cwn, -9223372036854775711
  %i.cwo = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.cwp = load ptr, ptr %i.cwo, align 8, !alias.scope !13806 ; 2 uses
  %i.cwq = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.cwr = load ptr, ptr %i.cwq, align 16, !alias.scope !13806 ; 2 uses
  br i1 %.not.i1643, label %bb.bgb, label %bb.bhl

bb.bgb:                                           ; preds = %bb.bga
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg)
  %i.cws = getelementptr inbounds nuw i8, ptr %1, i64 6752
  store ptr %i.cwp, ptr %i.cws, align 16
  %i.cwt = getelementptr inbounds nuw i8, ptr %1, i64 6760
  store ptr %i.cwr, ptr %i.cwt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef)
  %i.cwu = invoke { ptr, ptr } @_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7barrier9find_nodeNtNtNtNtNtNtB8_16delta_datafusion14table_provider4next4scan4exec13DeltaScanExecEB8_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cvw)
          to label %bb.bgd unwind label %bb.bgc   ; 2 uses

bb.bgc:                                           ; preds = %bb.bgb
  %i.cwv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bgi

bb.bgd:                                           ; preds = %bb.bgb
  %i.cww = extractvalue { ptr, ptr } %i.cwu, 0    ; 2 uses
  %.not.i1645 = icmp eq ptr %i.cww, null
  br i1 %.not.i1645, label %bb.bge, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EE7or_elseNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s7_0EB2T_.exit

bb.bge:                                           ; preds = %bb.bgd
  %i.cwx = invoke { ptr, ptr } @_RINvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7barrier9find_nodeNtNtNtNtNtNtB8_16delta_datafusion14table_provider4next4scan4exec13DeltaScanExecEB8_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cuz)
          to label %._RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EE7or_elseNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s7_0EB2T_.exit_crit_edge unwind label %bb.bgf ; 2 uses

._RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EE7or_elseNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s7_0EB2T_.exit_crit_edge: ; preds = %bb.bge
  %.pre3719 = extractvalue { ptr, ptr } %i.cwx, 0
  br label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EE7or_elseNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s7_0EB2T_.exit

bb.bgf:                                           ; preds = %bb.bge
  %i.cwy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bgi

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EE7or_elseNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s7_0EB2T_.exit: ; preds = %._RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EE7or_elseNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s7_0EB2T_.exit_crit_edge, %bb.bgd
  %.pre-phi = phi ptr [ %.pre3719, %._RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EE7or_elseNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s7_0EB2T_.exit_crit_edge ], [ %i.cww, %bb.bgd ]
  %.merged.i = phi { ptr, ptr } [ %i.cwx, %._RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EE7or_elseNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s7_0EB2T_.exit_crit_edge ], [ %i.cwu, %bb.bgd ]
  %i.cwz = extractvalue { ptr, ptr } %.merged.i, 1
  invoke fastcc void @_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EE10ok_or_elseNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorNCNCNCNvNtNtB2P_10operations5merge7execute00s6_0EB2P_(ptr noalias noundef align 16 captures(none) dereferenceable(96) %i.ef, ptr noundef %.pre-phi, ptr %i.cwz)
          to label %bb.bgh unwind label %bb.bgg

bb.bgg:                                           ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EE7or_elseNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s7_0EB2T_.exit
  %i.cxa = landingpad { ptr, i32 }
          cleanup
  br label %bb.bgi

bb.bgh:                                           ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EE7or_elseNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s7_0EB2T_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !13807)
  %i.cxb = load i64, ptr %i.ef, align 16, !range !1449, !alias.scope !13810, !noalias !13807, !noundef !4 ; 2 uses
  %.not.i1647 = icmp eq i64 %i.cxb, -9223372036854775711
  %i.cxc = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.cxd = load ptr, ptr %i.cxc, align 8, !alias.scope !13812 ; 2 uses
  %i.cxe = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.cxf = load ptr, ptr %i.cxe, align 16, !alias.scope !13812 ; 2 uses
  br i1 %.not.i1647, label %bb.bgl, label %bb.bhi

bb.bgi:                                           ; preds = %bb.bgg, %bb.bgf, %bb.bgc
  %.pn392 = phi { ptr, i32 } [ %i.cwv, %bb.bgc ], [ %i.cxa, %bb.bgg ], [ %i.cwy, %bb.bgf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit

.body1865:                                        ; preds = %bb.buz, %bb.bgk, %.body1716
  %.pn554 = phi { ptr, i32 } [ %.pn552, %.body1716 ], [ %i.cxk, %bb.bgk ], [ %i.eed, %bb.buz ] ; 2 uses
  %i.cxg = getelementptr inbounds nuw i8, ptr %1, i64 6768 ; 2 uses
end_hunk_4
begin_hunk_5_@_RNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations6delete7execute00B9_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !14533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !14533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !14533
  br label %bb.fp

bb.fk:                                            ; preds = %bb.em
  %i.py = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !14533
  %i.pz = atomicrmw sub ptr %i.oj, i64 1 release, align 8, !noalias !14597
  %i.qa = icmp eq i64 %i.pz, 1
  br i1 %i.qa, label %bb.fl, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderECs14kWLkQVSKO_14deltalake_core.exit79.i

bb.fl:                                            ; preds = %bb.fk
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bi) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderECs14kWLkQVSKO_14deltalake_core.exit79.i unwind label %bb.fh, !noalias !14537

bb.fm:                                            ; preds = %bb.el
  %i.qb = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderECs14kWLkQVSKO_14deltalake_core.exit79.i

bb.fn:                                            ; preds = %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !14533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !14533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !14533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !14533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !14533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !14533
  br label %bb.fo

bb.fo:                                            ; preds = %_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE13from_residualB2m_.exit77.i, %bb.fe, %bb.fj, %bb.fn, %bb.gm
  %i.qc = phi ptr [ %i.ng, %_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE13from_residualB2m_.exit77.i ], [ %i.ng, %bb.fe ], [ %i.ng, %bb.fj ], [ %i.ng, %bb.fn ], [ %i.rz, %bb.gm ]
  %i.qd = phi ptr [ %i.nh, %_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE13from_residualB2m_.exit77.i ], [ %i.nh, %bb.fe ], [ %i.nh, %bb.fj ], [ %i.nh, %bb.fn ], [ %i.sa, %bb.gm ]
  %i.qe = getelementptr inbounds nuw i8, ptr %1, i64 2465
  store i8 0, ptr %i.qe, align 1, !noalias !14533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !14533
  br label %bb.il

bb.fp:                                            ; preds = %.body.i, %bb.ex, %bb.fd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderECs14kWLkQVSKO_14deltalake_core.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderECs14kWLkQVSKO_14deltalake_core.exit79.i, %bb.ha, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit118.i
  %i.qf = phi ptr [ %i.sc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit118.i ], [ %i.ti, %bb.ha ], [ %i.ng, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderECs14kWLkQVSKO_14deltalake_core.exit79.i ], [ %i.ng, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.ng, %bb.ex ], [ %i.ng, %bb.fd ], [ %i.ng, %.body.i ]
  %i.qg = phi ptr [ %i.sd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit118.i ], [ %i.tj, %bb.ha ], [ %i.nh, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderECs14kWLkQVSKO_14deltalake_core.exit79.i ], [ %i.nh, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.nh, %bb.ex ], [ %i.nh, %bb.fd ], [ %i.nh, %.body.i ]
  %.pn57.pn.pn.pn.i = phi { ptr, i32 } [ %.pn51.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit118.i ], [ %i.tk, %bb.ha ], [ %.pn57.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderECs14kWLkQVSKO_14deltalake_core.exit79.i ], [ %.pn54.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.pe, %bb.ex ], [ %i.ps, %bb.fd ], [ %.pn.i, %.body.i ]
  %i.qh = getelementptr inbounds nuw i8, ptr %1, i64 2465 ; 2 uses
  %i.qi = load i8, ptr %i.qh, align 1, !range !178, !noalias !14533, !noundef !4
  %i.qj = trunc nuw i8 %i.qi to i1
  br i1 %i.qj, label %bb.ik, label %bb.ij

bb.fq:                                            ; preds = %bb.ef
  %i.qk = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

.thread872:                                       ; preds = %bb.ef
  %i.ql = extractvalue { i64, i64 } %i.ob, 0
  %i.qm = extractvalue { i64, i64 } %i.ob, 1
  %i.qn = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.qn, ptr noundef nonnull align 8 dereferenceable(32) @165, i64 32, i1 false), !noalias !14533
  %.sroa.5.0..sroa_idx.i292 = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  store i64 %i.ql, ptr %.sroa.5.0..sroa_idx.i292, align 8, !noalias !14533
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  store i64 %i.qm, ptr %.sroa.6.0..sroa_idx.i, align 16, !noalias !14533
  store i64 -9223372036854775711, ptr %i.ar, align 16, !noalias !14533
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.9567, ptr noundef nonnull align 8 dereferenceable(88) %i.qn, i64 88, i1 false), !noalias !14604
  store i8 1, ptr %i.ng, align 2, !noalias !14533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3203.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8123.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  br label %bb.in

bb.fr:                                            ; preds = %bb.ij, %bb.fq, %bb.dy
  %i.qo = phi ptr [ %i.ng, %bb.dy ], [ %i.qf, %bb.ij ], [ %i.ng, %bb.fq ]
  %i.qp = phi ptr [ %i.nh, %bb.dy ], [ %i.qg, %bb.ij ], [ %i.nh, %bb.fq ]
  %.pn62.pn.i = phi { ptr, i32 } [ %i.ns, %bb.dy ], [ %.pn57.pn.pn.pn.i, %bb.ij ], [ %i.qk, %bb.fq ]
  store i8 2, ptr %i.qo, align 2, !noalias !14533
  br label %.body

bb.fs:                                            ; preds = %bb.dz
  %i.qq = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %.sroa.8.16..sroa_idx120.i = getelementptr inbounds nuw i8, ptr %.sroa.8.i, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.8.16..sroa_idx120.i, ptr noundef nonnull align 16 dereferenceable(96) %i.qq, i64 96, i1 false), !noalias !14533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !14533
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.ar, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.8.16..sroa_idx120.i, i64 96, i1 false), !noalias !14533
  br label %bb.il

bb.ft:                                            ; preds = %bb.du
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @467) #50
          to label %.noexc293 unwind label %bb.dt

.noexc293:                                        ; preds = %bb.ft
  unreachable

bb.fu:                                            ; preds = %bb.du
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @467) #50
          to label %.noexc294 unwind label %bb.dt

.noexc294:                                        ; preds = %bb.fu
  unreachable

bb.fv:                                            ; preds = %bb.fw
  %i.qr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !14533
  %.val66.i = load ptr, ptr %i.qv, align 16, !noalias !14533
  %i.qs = getelementptr i8, ptr %1, i64 2488
  %.val67.i = load ptr, ptr %i.qs, align 8, !noalias !14533, !nonnull !4, !align !18, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %.val66.i, ptr nonnull %.val67.i) #46
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit118.i unwind label %bb.fh, !noalias !14537

bb.fw:                                            ; preds = %bb.fc, %bb.dw
  %i.qt = phi ptr [ %i.ng, %bb.fc ], [ %i.nf, %bb.dw ] ; 8 uses
  %i.qu = phi ptr [ %i.nh, %bb.fc ], [ %i.ne, %bb.dw ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !14533
  %i.qv = getelementptr inbounds nuw i8, ptr %1, i64 2480 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.bb, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.qv, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.fx unwind label %bb.fv, !noalias !14537

bb.fx:                                            ; preds = %bb.fw
  %i.qw = load i64, ptr %i.bb, align 8, !range !12625, !noalias !14533, !noundef !4 ; 3 uses
  %i.qx = icmp eq i64 %i.qw, 21
  br i1 %i.qx, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %bb.fx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !14533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !14533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !14533
  br label %.thread869

bb.fz:                                            ; preds = %bb.fx
  %.sroa.3178.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sroa.3178.0.copyload.i = load ptr, ptr %.sroa.3178.0..sroa_idx.i, align 8, !noalias !14533 ; 6 uses
  %.sroa.5179.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %.sroa.5179.0.copyload.i = load ptr, ptr %.sroa.5179.0..sroa_idx.i, align 8, !noalias !14533 ; 5 uses
  %.sroa.7.0..sroa_idx.i289 = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i289, i64 16, i1 false), !noalias !14533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !14533
  %.val.i = load ptr, ptr %i.qv, align 16, !noalias !14533 ; 5 uses
  %i.qy = getelementptr i8, ptr %1, i64 2488
  %.val65.i = load ptr, ptr %i.qy, align 8, !noalias !14533, !nonnull !4, !align !18, !noundef !4 ; 5 uses
  %i.qz = load ptr, ptr %.val65.i, align 8, !invariant.load !4, !noalias !14537 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.qz, null
  br i1 %.not.i.i.i, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.qz(ptr noundef nonnull %.val.i)
          to label %bb.gb unwind label %bb.gd, !noalias !14537

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  %i.ra = getelementptr inbounds nuw i8, ptr %.val65.i, i64 8
  %i.rb = load i64, ptr %i.ra, align 8, !range !16, !invariant.load !4, !noalias !14537 ; 2 uses
  %i.rc = icmp eq i64 %i.rb, 0
  br i1 %i.rc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.rd = getelementptr inbounds nuw i8, ptr %.val65.i, i64 16
  %i.re = load i64, ptr %i.rd, align 8, !range !3, !invariant.load !4, !noalias !14537
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.rb, i64 noundef range(i64 1, 536870913) %i.re) #40, !noalias !14537
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.gd:                                            ; preds = %bb.ga
  %i.rf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %.val65.i, i64 8
  %i.rh = load i64, ptr %i.rg, align 8, !range !16, !invariant.load !4, !noalias !14537 ; 2 uses
  %i.ri = icmp eq i64 %i.rh, 0
  br i1 %i.ri, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit118.i, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.rj = getelementptr inbounds nuw i8, ptr %.val65.i, i64 16
  %i.rk = load i64, ptr %i.rj, align 8, !range !3, !invariant.load !4, !noalias !14537
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.rh, i64 noundef range(i64 1, 536870913) %i.rk) #40, !noalias !14537
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit118.i

bb.gf:                                            ; preds = %bb.gg
  %i.rl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit118.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.gc, %bb.gb
  %.not.i82.i = icmp eq i64 %i.qw, 20
  br i1 %.not.i82.i, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.4183.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !14533
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4183.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i, i64 16, i1 false), !noalias !14533
  store i64 %i.qw, ptr %i.al, align 8, !noalias !14605
  %.sroa.2181.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %.sroa.3178.0.copyload.i, ptr %.sroa.2181.0..sroa_idx.i, align 8, !noalias !14605
  %.sroa.3182.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %.sroa.5179.0.copyload.i, ptr %.sroa.3182.0..sroa_idx.i, align 8, !noalias !14605
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.ar, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.al)
          to label %bb.gl unwind label %bb.gf, !noalias !14537

bb.gh:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3178.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5179.0.copyload.i) ]
  %i.rm = getelementptr inbounds nuw i8, ptr %1, i64 2464
  store ptr %.sroa.3178.0.copyload.i, ptr %i.bc, align 8, !noalias !14533
  %i.rn = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %.sroa.5179.0.copyload.i, ptr %i.rn, align 8, !noalias !14533
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !14533
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !14533
  store i8 0, ptr %i.rm, align 16, !noalias !14533
  store ptr %.sroa.3178.0.copyload.i, ptr %i.az, align 8, !noalias !14533
  %i.ro = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %.sroa.5179.0.copyload.i, ptr %i.ro, align 8, !noalias !14533
  %i.rp = getelementptr inbounds nuw i8, ptr %1, i64 2416
  %i.rq = load ptr, ptr %i.rp, align 16, !noalias !14533, !nonnull !4, !noundef !4
  %i.rr = getelementptr inbounds nuw i8, ptr %1, i64 2424
  %i.rs = load ptr, ptr %i.rr, align 8, !noalias !14533, !nonnull !4, !align !18, !noundef !4
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 136
  %i.ru = load ptr, ptr %i.rt, align 8, !invariant.load !4, !noalias !14537, !nonnull !4
  %i.rv = invoke noundef nonnull ptr %i.ru(ptr noundef nonnull %i.rq)
          to label %bb.gi unwind label %bb.gj, !noalias !14537

bb.gi:                                            ; preds = %bb.gh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !14533
  %.sroa.8199.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2544
  store ptr %.sroa.3178.0.copyload.i, ptr %.sroa.8199.0..sroa_idx.i, align 16, !noalias !14533
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2552
  store ptr %.sroa.5179.0.copyload.i, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !14533
  %.sroa.10200.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2560
  store ptr %i.rv, ptr %.sroa.10200.0..sroa_idx.i, align 16, !noalias !14533
  %.sroa.12201.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2569
  store i8 0, ptr %.sroa.12201.0..sroa_idx.i, align 1, !noalias !14533
  br label %bb.go

.noexc85.i:                                       ; preds = %bb.gk, %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !14533
  br label %bb.ie

bb.gj:                                            ; preds = %bb.gh
  %i.rw = landingpad { ptr, i32 }
          cleanup
  %i.rx = atomicrmw sub ptr %.sroa.3178.0.copyload.i, i64 1 release, align 8, !noalias !14608
  %i.ry = icmp eq i64 %i.rx, 1
  br i1 %i.ry, label %bb.gk, label %.noexc85.i

bb.gk:                                            ; preds = %bb.gj
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.az) #45
          to label %.noexc85.i unwind label %bb.fh, !noalias !14537

bb.gl:                                            ; preds = %bb.gg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !14533
  br label %bb.gm

bb.gm:                                            ; preds = %bb.id, %bb.gl
  %i.rz = phi ptr [ %i.sg, %bb.id ], [ %i.qt, %bb.gl ] ; 2 uses
  %i.sa = phi ptr [ %i.sh, %bb.id ], [ %i.qu, %bb.gl ] ; 3 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %1, i64 2464
  store i8 0, ptr %i.sb, align 16, !noalias !14533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !14533
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(320) %i.sa)
          to label %bb.fo unwind label %bb.ha, !noalias !14537

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit118.i: ; preds = %bb.fb, %bb.fv, %bb.gd, %bb.ge, %bb.gf, %bb.ii, %bb.ih, %bb.ie
  %i.sc = phi ptr [ %i.vr, %bb.ih ], [ %i.vr, %bb.ie ], [ %i.vr, %bb.ii ], [ %i.ng, %bb.fb ], [ %i.qt, %bb.fv ], [ %i.qt, %bb.gf ], [ %i.qt, %bb.ge ], [ %i.qt, %bb.gd ]
  %i.sd = phi ptr [ %i.vs, %bb.ih ], [ %i.vs, %bb.ie ], [ %i.vs, %bb.ii ], [ %i.nh, %bb.fb ], [ %i.qu, %bb.fv ], [ %i.qu, %bb.gf ], [ %i.qu, %bb.ge ], [ %i.qu, %bb.gd ] ; 2 uses
  %.pn51.pn.i = phi { ptr, i32 } [ %.pn48.pn.i, %bb.ih ], [ %.pn48.pn.i, %bb.ie ], [ %.pn48.pn.i, %bb.ii ], [ %i.pn, %bb.fb ], [ %i.qr, %bb.fv ], [ %i.rl, %bb.gf ], [ %i.rf, %bb.ge ], [ %i.rf, %bb.gd ]
  %i.se = getelementptr inbounds nuw i8, ptr %1, i64 2464
  store i8 0, ptr %i.se, align 16, !noalias !14533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !14533
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(320) %i.sd) #46
          to label %bb.fp unwind label %bb.fh, !noalias !14537

bb.gn:                                            ; preds = %bb.go
  %i.sf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !14533
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan7collect0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.si) #46
          to label %bb.ie unwind label %bb.fh, !noalias !14537

bb.go:                                            ; preds = %bb.gi, %bb.dx
  %i.sg = phi ptr [ %i.qt, %bb.gi ], [ %i.nf, %bb.dx ] ; 9 uses
  %i.sh = phi ptr [ %i.qu, %bb.gi ], [ %i.ne, %bb.dx ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !14533
  %i.si = getelementptr inbounds nuw i8, ptr %1, i64 2480 ; 3 uses
  invoke fastcc void @_RNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan7collect0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.ay, ptr noundef nonnull align 8 %i.si, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.gp unwind label %bb.gn, !noalias !14537

bb.gp:                                            ; preds = %bb.go
  %i.sj = load i64, ptr %i.ay, align 8, !range !12625, !noalias !14533, !noundef !4 ; 3 uses
  %i.sk = icmp eq i64 %i.sj, 21
  br i1 %i.sk, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !14533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !14533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !14533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !14533
  br label %.thread869

bb.gr:                                            ; preds = %bb.gp
  %.sroa.3203.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3203.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3203.0..sroa_idx.i, i64 24, i1 false), !noalias !14533
  %.sroa.5204.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %.sroa.5204.0.copyload.i = load i64, ptr %.sroa.5204.0..sroa_idx.i, align 8, !noalias !14533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !14533
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan7collect0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.si)
          to label %bb.gt unwind label %bb.gs, !noalias !14537

bb.gs:                                            ; preds = %bb.gu, %bb.gr
  %i.sl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ie

bb.gt:                                            ; preds = %bb.gr
  %.not.i86.i = icmp eq i64 %i.sj, 20
  br i1 %.not.i86.i, label %bb.gv, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %.sroa.2206.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !14533
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2206.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3203.i, i64 24, i1 false), !noalias !14533
  store i64 %i.sj, ptr %i.ak, align 8, !noalias !14613
  %.sroa.3207.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store i64 %.sroa.5204.0.copyload.i, ptr %.sroa.3207.0..sroa_idx.i, align 8, !noalias !14613
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.ar, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.ak)
          to label %bb.ig unwind label %bb.gs, !noalias !14537

bb.gv:                                            ; preds = %bb.gt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3203.i, i64 24, i1 false), !noalias !14533
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !14533
  %i.sm = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @647)
          to label %bb.gx unwind label %bb.if, !noalias !14537 ; 2 uses

bb.gw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core.exit113.i
  %i.sn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !14533
  br label %bb.ie

bb.gx:                                            ; preds = %bb.gv
  %i.so = extractvalue { i64, i64 } %i.sm, 0
  %i.sp = extractvalue { i64, i64 } %i.sm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) @165, i64 32, i1 false), !noalias !14533
  %.sroa.42.0..sroa_idx.i89.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  store i64 %i.so, ptr %.sroa.42.0..sroa_idx.i89.i, align 8, !alias.scope !14616, !noalias !14533
  %.sroa.53.0..sroa_idx.i90.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  store i64 %i.sp, ptr %.sroa.53.0..sroa_idx.i90.i, align 8, !alias.scope !14616, !noalias !14533
  %.sroa.0212.0.copyload.i = load i64, ptr %i.ba, align 8, !noalias !14533
  %.sroa.5213.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.5213.0.copyload.i = load ptr, ptr %.sroa.5213.0..sroa_idx.i, align 8, !noalias !14533, !nonnull !4, !noundef !4 ; 4 uses
  %.sroa.6214.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %.sroa.6214.0.copyload.i = load i64, ptr %.sroa.6214.0..sroa_idx.i, align 8, !noalias !14533 ; 3 uses
  %i.sq = icmp ult i64 %.sroa.6214.0.copyload.i, 230584300921369396
  call void @llvm.assume(i1 %i.sq)
  %.idx.i = mul nuw nsw i64 %.sroa.6214.0.copyload.i, 40
  %i.sr = getelementptr inbounds nuw i8, ptr %.sroa.5213.0.copyload.i, i64 %.idx.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !14533
  store ptr %.sroa.5213.0.copyload.i, ptr %i.aw, align 8, !noalias !14533
  %.sroa.6209.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 3 uses
  store ptr %.sroa.5213.0.copyload.i, ptr %.sroa.6209.0..sroa_idx.i, align 8, !noalias !14533
  %.sroa.7210.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i64 %.sroa.0212.0.copyload.i, ptr %.sroa.7210.0..sroa_idx.i, align 8, !noalias !14533
  %.sroa.8211.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 2 uses
  store ptr %i.sr, ptr %.sroa.8211.0..sroa_idx.i, align 8, !noalias !14533
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9217.i)
  %i.ss = icmp eq i64 %.sroa.6214.0.copyload.i, 0
  br i1 %i.ss, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread.i, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.lr.ph.i

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.lr.ph.i: ; preds = %bb.gx
  %.sroa.9217.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.6248.48..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.6248.i, i64 16
  %.sroa.6251.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %.sroa.7252.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.st = getelementptr inbounds nuw i8, ptr %i.at, i64 48 ; 4 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.at, i64 104 ; 3 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.at, i64 112
  %i.sw = getelementptr inbounds nuw i8, ptr %i.at, i64 56 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.at, i64 88
  %i.sy = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %i.sz = getelementptr inbounds nuw i8, ptr %i.at, i64 80
  %i.ta = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  br label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.hv, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.lr.ph.i
  %i.tc = phi ptr [ %.sroa.5213.0.copyload.i, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.lr.ph.i ], [ %i.vn, %bb.hv ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14619)
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 40
  store ptr %i.td, ptr %.sroa.6209.0..sroa_idx.i, align 8, !alias.scope !14619, !noalias !14622
  %.sroa.0215.0.copyload216.i = load i64, ptr %i.tc, align 8, !noalias !14624 ; 2 uses
  %.sroa.9217.0..sroa_idx218.i = getelementptr inbounds nuw i8, ptr %i.tc, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9217.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9217.0..sroa_idx218.i, i64 32, i1 false), !noalias !14624
  %.not21.i = icmp eq i64 %.sroa.0215.0.copyload216.i, -9223372036854775808
  br i1 %.not21.i, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread.i, label %bb.gy

bb.gy:                                            ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !14533
  store i64 %.sroa.0215.0.copyload216.i, ptr %i.av, align 8, !noalias !14533
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9217.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9217.i, i64 32, i1 false), !noalias !14533
  %i.te = invoke noundef align 8 ptr @_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch14column_by_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.av, ptr noalias noundef nonnull readonly captures(address, read_provenance) @287, i64 noundef 15)
end_hunk_5
begin_hunk_6_@_RNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations6delete7execute00B9_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(416) %.sroa.5624, ptr noundef nonnull align 16 dereferenceable(416) %.sroa.5624.0..sroa_idx, i64 416, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0EBO_(ptr noundef nonnull align 16 %i.zr)
          to label %bb.kj unwind label %bb.ki

bb.ki:                                            ; preds = %bb.kk, %bb.kh
  %i.zu = landingpad { ptr, i32 }
          cleanup
  br label %bb.lx

bb.kj:                                            ; preds = %bb.kh
  %i.zv = icmp eq i64 %i.zs, 37
  br i1 %i.zv, label %bb.kk, label %bb.kl

bb.kk:                                            ; preds = %bb.kj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aa, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3623, i64 40, i1 false)
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.bw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.aa)
          to label %bb.lw unwind label %bb.ki

bb.kl:                                            ; preds = %bb.kj
  %i.zw = getelementptr inbounds nuw i8, ptr %1, i64 2088 ; 2 uses
  store i8 1, ptr %i.zw, align 8
  %i.zx = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 3 uses
  store i64 %i.zs, ptr %i.zx, align 16
  %.sroa.4626.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 696
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4626.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3623, i64 40, i1 false)
  %.sroa.5627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 736
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(416) %.sroa.5627.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(416) %.sroa.5624, i64 416, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn)
  %i.zy = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now()
          to label %bb.kn unwind label %bb.km     ; 2 uses

bb.km:                                            ; preds = %bb.kl
  %i.zz = landingpad { ptr, i32 }
          cleanup
  br label %bb.kp

bb.kn:                                            ; preds = %bb.kl
  %i.aaa = extractvalue { i64, i32 } %i.zy, 0
  %i.aab = extractvalue { i64, i32 } %i.zy, 1
  store i64 %i.aaa, ptr %i.dn, align 8
  %i.aac = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store i32 %i.aab, ptr %i.aac, align 8
  %i.aad = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.aae = load i64, ptr %i.aad, align 16, !noundef !4
  %i.aaf = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.aag = load i32, ptr %i.aaf, align 8, !range !12186, !noundef !4
  %i.aah = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant14duration_since(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.dn, i64 noundef %i.aae, i32 noundef %i.aag)
          to label %bb.kq unwind label %bb.ko     ; 2 uses

bb.ko:                                            ; preds = %bb.kn
  %i.aai = landingpad { ptr, i32 }
          cleanup
  br label %bb.kp

bb.kp:                                            ; preds = %bb.km, %bb.ko
  %.pn39 = phi { ptr, i32 } [ %i.zz, %bb.km ], [ %i.aai, %bb.ko ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  br label %bb.lv

bb.kq:                                            ; preds = %bb.kn
  %i.aaj = extractvalue { i64, i32 } %i.aah, 0
  %i.aak = extractvalue { i64, i32 } %i.aah, 1
  %i.aal = mul i64 %i.aaj, 1000
  %i.aam = udiv i32 %i.aak, 1000000
  %i.aan = zext nneg i32 %i.aam to i64
  %i.aao = add i64 %i.aal, %i.aan
  %i.aap = getelementptr inbounds nuw i8, ptr %1, i64 1936
  %i.aaq = getelementptr inbounds nuw i8, ptr %1, i64 1976
  store i64 %i.aao, ptr %i.aaq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  %i.aar = load i64, ptr %i.zx, align 16, !range !5941, !noundef !4
  %.not41 = icmp eq i64 %i.aar, 36
  br i1 %.not41, label %bb.kr, label %bb.kt

bb.kr:                                            ; preds = %bb.kq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm)
  %i.aas = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now()
          to label %bb.lq unwind label %bb.lp     ; 2 uses

bb.ks:                                            ; preds = %bb.ku, %bb.kt
  %i.aat = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtCseo6ZV82fEK1_3url3UrlEECs14kWLkQVSKO_14deltalake_core.exit440

bb.kt:                                            ; preds = %bb.kq
  store i8 0, ptr %i.zw, align 8
  %i.aau = getelementptr inbounds nuw i8, ptr %1, i64 2082
  store i8 1, ptr %i.aau, align 2
  %i.aav = getelementptr inbounds nuw i8, ptr %1, i64 1152 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(464) %i.aav, ptr noundef nonnull align 16 dereferenceable(464) %i.zx, i64 464, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk)
  %i.aaw = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.aax = getelementptr i8, ptr %1, i64 136
  %.val219 = load ptr, ptr %i.aax, align 8, !nonnull !4, !noundef !4
  %i.aay = getelementptr inbounds nuw i8, ptr %.val219, i64 88
  %i.aaz = load ptr, ptr %i.aay, align 8, !nonnull !4, !noundef !4
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaz, i64 1072
  invoke fastcc void @_RNvXsi_Cseo6ZV82fEK1_3urlNtB5_3UrlNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(88) %i.dk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.aba)
          to label %bb.ku unwind label %bb.ks

bb.ku:                                            ; preds = %bb.kt
  %i.abb = invoke fastcc noundef nonnull ptr @_RNvMse_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtCseo6ZV82fEK1_3url3UrlE3newCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(88) %i.dk)
          to label %bb.kv unwind label %bb.ks     ; 2 uses

bb.kv:                                            ; preds = %bb.ku
  store ptr %i.abb, ptr %i.dl, align 8
  %i.abc = getelementptr inbounds nuw i8, ptr %1, i64 2087 ; 2 uses
  store i8 1, ptr %i.abc, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg)
  %i.abd = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.val210 = load ptr, ptr %i.abd, align 16, !nonnull !4, !noundef !4
  %i.abe = getelementptr i8, ptr %1, i64 152
  %.val211 = load ptr, ptr %i.abe, align 8, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %1, i64 1608
  %.val245 = load ptr, ptr %i.abf, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.abg = atomicrmw add ptr %.val245, i64 1 monotonic, align 8
  %i.abh = icmp slt i64 %i.abg, 0
  br i1 %i.abh, label %bb.kw, label %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit

bb.kw:                                            ; preds = %bb.kv
  call void @llvm.trap()
  unreachable

_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.kv
  %i.abi = getelementptr inbounds nuw i8, ptr %.val211, i64 16
  %i.abj = load i64, ptr %i.abi, align 8, !range !3, !invariant.load !4
  %i.abk = add nsw i64 %i.abj, -1
  %i.abl = and i64 %i.abk, -16
  %i.abm = getelementptr inbounds nuw i8, ptr %.val210, i64 %i.abl
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 16
  %i.abo = invoke { ptr, ptr } @_RNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB4_13EagerSnapshot10file_views(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aaw, ptr noundef nonnull %i.abn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %.val211, ptr noundef nonnull %.val245)
          to label %bb.ky unwind label %bb.kx     ; 2 uses

bb.kx:                                            ; preds = %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit
  %i.abp = landingpad { ptr, i32 }
          cleanup
  br label %bb.li

bb.ky:                                            ; preds = %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit
  %i.abq = extractvalue { ptr, ptr } %i.abo, 0    ; 3 uses
  %i.abr = extractvalue { ptr, ptr } %i.abo, 1    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df)
  store i8 0, ptr %i.abc, align 1
  store ptr %i.abb, ptr %i.df, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de)
  invoke void @_RNvMs1_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_filesNtB5_16MatchedFilesScan9files_set(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.de, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(464) %i.aav)
          to label %bb.la unwind label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  %i.abs = landingpad { ptr, i32 }
          cleanup
  br label %bb.lb

bb.la:                                            ; preds = %bb.ky
  %i.abt = invoke fastcc noundef nonnull ptr @_RNvMse_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetNtNtB7_6string6StringEE3newCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %i.de)
          to label %bb.le unwind label %bb.ld

bb.lb:                                            ; preds = %bb.ld, %bb.kz
  %.pn46 = phi { ptr, i32 } [ %i.abx, %bb.ld ], [ %i.abs, %bb.kz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de)
  call void @llvm.experimental.noalias.scope.decl(metadata !14778)
  call void @llvm.experimental.noalias.scope.decl(metadata !14781)
  %i.abu = load ptr, ptr %i.df, align 8, !alias.scope !14784, !nonnull !4, !noundef !4
  %i.abv = atomicrmw sub ptr %i.abu, i64 1 release, align 8, !noalias !14784
  %i.abw = icmp eq i64 %i.abv, 1
  br i1 %i.abw, label %bb.lc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtCseo6ZV82fEK1_3url3UrlEECs14kWLkQVSKO_14deltalake_core.exit

bb.lc:                                            ; preds = %bb.lb
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtCseo6ZV82fEK1_3url3UrlE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.df) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtCseo6ZV82fEK1_3url3UrlEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.bn

bb.ld:                                            ; preds = %bb.la
  %i.abx = landingpad { ptr, i32 }
          cleanup
  br label %bb.lb

bb.le:                                            ; preds = %bb.la
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de)
  %i.aby = load ptr, ptr %i.df, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df)
  %i.abz = invoke { ptr, ptr } @_RINvNtNtCs8CRAYtH5WmW_12futures_util6stream4iter4iterINtNtNtNtCsbvkFyIu7lgC_4core4iter7sources6repeat6RepeatTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtCseo6ZV82fEK1_3url3UrlEIB1K_INtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetNtNtB1O_6string6StringEEEEECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.aby, ptr noundef nonnull %i.abt)
          to label %bb.lg unwind label %bb.lf     ; 2 uses

bb.lf:                                            ; preds = %bb.le
  %i.aca = landingpad { ptr, i32 }
          cleanup
  br label %bb.ln

bb.lg:                                            ; preds = %bb.le
  %i.acb = extractvalue { ptr, ptr } %i.abz, 0
  %i.acc = extractvalue { ptr, ptr } %i.abz, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.abq) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.abr) ]
  invoke void @_RINvYINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB8_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB2t_6errors15DeltaTableErrorENtNtB8_6marker4SendEL_EENtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream9StreamExt3zipINtNtB4D_4iter4IterINtNtNtNtB8_4iter7sources6repeat6RepeatTINtNtBE_4sync3ArcNtCseo6ZV82fEK1_3url3UrlEIB6x_INtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetNtNtBE_6string6StringEEEEEEB2t_(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(address) dereferenceable(160) %i.dg, ptr noundef nonnull %i.abq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.abr, ptr noundef nonnull %i.acb, ptr noundef nonnull %i.acc)
          to label %bb.lj unwind label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.acd = landingpad { ptr, i32 }
          cleanup
  br label %bb.li

bb.li:                                            ; preds = %bb.kx, %bb.ln, %bb.lh
  %.pn51 = phi { ptr, i32 } [ %i.abp, %bb.kx ], [ %.pn48.ph, %bb.ln ], [ %i.acd, %bb.lh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg)
  br label %bb.lk

bb.lj:                                            ; preds = %bb.lg
  %i.ace = getelementptr inbounds nuw i8, ptr %i.dh, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.ace, ptr noundef nonnull readonly align 16 dereferenceable(160) %i.dg, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg)
  store i64 0, ptr %i.dh, align 16, !alias.scope !14785, !noalias !14788
  invoke void @_RINvYINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream14try_filter_map12TryFilterMapINtNtNtBa_6stream3map3MapINtNtB1w_3zip3ZipINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB2c_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB4y_6errors15DeltaTableErrorENtNtB2c_6marker4SendEL_EEINtNtBa_4iter4IterINtNtNtNtB2c_4iter7sources6repeat6RepeatTINtNtB2I_4sync3ArcNtCseo6ZV82fEK1_3url3UrlEIB7D_INtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetNtNtB2I_6string6StringEEEEEENCNCNCNvNtNtB4y_10operations6delete7execute00s1_0ENCNCB9x_s2_00NCB9x_s2_0ENtB8_12TryStreamExt11try_collectINtNtB2I_3vec3VecNtNtB4w_6models6ActionEEB4y_(ptr noalias noundef nonnull sret([272 x i8]) align 16 captures(address) dereferenceable(272) %i.di, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(240) %i.dh)
          to label %bb.lm unwind label %bb.ll

bb.lk:                                            ; preds = %bb.ll, %bb.li
  %.pn55 = phi { ptr, i32 } [ %i.acf, %bb.ll ], [ %.pn51, %bb.li ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  br label %bb.lo

bb.ll:                                            ; preds = %bb.lj
  %i.acf = landingpad { ptr, i32 }
          cleanup
  br label %bb.lk

bb.lm:                                            ; preds = %bb.lj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %i.dj, ptr noundef nonnull readonly align 16 dereferenceable(272) %i.di, i64 272, i1 false), !alias.scope !14790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %i.zr, ptr noundef nonnull align 16 dereferenceable(272) %i.dj, i64 272, i1 false)
  br label %bb.lz

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtCseo6ZV82fEK1_3url3UrlEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.lb, %bb.lc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df)
  br label %bb.ln

bb.ln:                                            ; preds = %bb.lf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtCseo6ZV82fEK1_3url3UrlEECs14kWLkQVSKO_14deltalake_core.exit
  %.pn48.ph = phi { ptr, i32 } [ %.pn46, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtCseo6ZV82fEK1_3url3UrlEECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.aca, %bb.lf ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.abr) ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB2Q_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2Q_(ptr %i.abq, ptr nonnull %i.abr) #46
          to label %bb.li unwind label %bb.bn

bb.lo:                                            ; preds = %bb.mf, %bb.ly, %bb.lk
  %.pn128 = phi { ptr, i32 } [ %i.adk, %bb.mf ], [ %i.ade, %bb.ly ], [ %.pn55, %bb.lk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  br label %.body366

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtCseo6ZV82fEK1_3url3UrlEECs14kWLkQVSKO_14deltalake_core.exit440: ; preds = %bb.wk, %bb.wl, %.body366, %bb.ks
  %.pn128.pn.pn = phi { ptr, i32 } [ %i.aat, %bb.ks ], [ %.pn128.pn, %.body366 ], [ %.pn128.pn, %bb.wl ], [ %.pn128.pn, %bb.wk ] ; 2 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %1, i64 2087
  store i8 0, ptr %i.acg, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  %i.ach = getelementptr inbounds nuw i8, ptr %1, i64 1152
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(320) %i.ach) #46
          to label %bb.wm unwind label %bb.bn

bb.lp:                                            ; preds = %bb.kr
  %i.aci = landingpad { ptr, i32 }
          cleanup
  br label %bb.ls

bb.lq:                                            ; preds = %bb.kr
  %i.acj = extractvalue { i64, i32 } %i.aas, 0
  %i.ack = extractvalue { i64, i32 } %i.aas, 1
  store i64 %i.acj, ptr %i.dm, align 8
  %i.acl = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store i32 %i.ack, ptr %i.acl, align 8
  %i.acm = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.acn = load i64, ptr %i.acm, align 16, !noundef !4
  %i.aco = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.acp = load i32, ptr %i.aco, align 8, !range !12186, !noundef !4
  %i.acq = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant14duration_since(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.dm, i64 noundef %i.acn, i32 noundef %i.acp)
          to label %bb.lt unwind label %bb.lr     ; 2 uses

bb.lr:                                            ; preds = %bb.lq
  %i.acr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ls

bb.ls:                                            ; preds = %bb.lp, %bb.lr
  %.pn42 = phi { ptr, i32 } [ %i.aci, %bb.lp ], [ %i.acr, %bb.lr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  br label %bb.lv

bb.lt:                                            ; preds = %bb.lq
  %i.acs = extractvalue { i64, i32 } %i.acq, 0
  %i.act = extractvalue { i64, i32 } %i.acq, 1
  %i.acu = mul i64 %i.acs, 1000
  %i.acv = udiv i32 %i.act, 1000000
  %i.acw = zext nneg i32 %i.acv to i64
  %i.acx = add i64 %i.acu, %i.acw
  %i.acy = getelementptr inbounds nuw i8, ptr %1, i64 1968
  store i64 %i.acx, ptr %i.acy, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  %.sroa.7640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %.sroa.7640.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(56) %i.aap, i64 56, i1 false)
  %i.acz = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i64 0, ptr %i.acz, align 8
  %.sroa.5638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5638.0..sroa_idx, align 16
  %.sroa.6639.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store i64 0, ptr %.sroa.6639.0..sroa_idx, align 8
  store i64 -9223372036854775711, ptr %i.bw, align 16
  br label %bb.lu

bb.lu:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEECs14kWLkQVSKO_14deltalake_core.exit427, %bb.lw, %bb.lt
  %i.ada = getelementptr inbounds nuw i8, ptr %1, i64 2088
  store i8 0, ptr %i.ada, align 8
  br label %bb.bw

bb.lv:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEECs14kWLkQVSKO_14deltalake_core.exit412, %bb.ls, %bb.kp
  %.pn136.pn = phi { ptr, i32 } [ %.pn136, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEECs14kWLkQVSKO_14deltalake_core.exit412 ], [ %.pn39, %bb.kp ], [ %.pn42, %bb.ls ] ; 3 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 2 uses
  %i.adc = load i64, ptr %i.adb, align 16, !range !5941, !noundef !4
  %.not139 = icmp eq i64 %i.adc, 36
  br i1 %.not139, label %bb.lx, label %bb.wr

bb.lw:                                            ; preds = %bb.kk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.lu

bb.lx:                                            ; preds = %bb.kd, %bb.ki, %bb.ws, %bb.wr, %bb.lv
  %.pn140.pn = phi { ptr, i32 } [ %.pn136.pn, %bb.lv ], [ %.pn136.pn, %bb.ws ], [ %.pn136.pn, %bb.wr ], [ %i.zu, %bb.ki ], [ %i.zq, %bb.kd ]
  %i.add = getelementptr inbounds nuw i8, ptr %1, i64 2088
  store i8 0, ptr %i.add, align 8
  br label %bb.bx

bb.ly:                                            ; preds = %bb.mb, %bb.ma
  %i.ade = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9651)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10653)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtNtBL_14try_filter_map12TryFilterMapINtNtNtBN_6stream3map3MapINtNtB2G_3zip3ZipINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB5r_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEINtNtBN_4iter4IterINtNtNtNtB4_4iter7sources6repeat6RepeatTINtNtB3C_4sync3ArcNtCseo6ZV82fEK1_3url3UrlEIB8u_INtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetNtNtB3C_6string6StringEEEEEENCNCNCNvNtNtB5r_10operations6delete7execute00s1_0ENCNCBao_s2_00NCBao_s2_0EINtNtB3C_3vec3VecNtNtB5p_6models6ActionEEEB5r_(ptr noundef nonnull align 16 %i.adf) #46
          to label %bb.lo unwind label %bb.bn

bb.lz:                                            ; preds = %bb.f, %bb.lm
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9651)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10653)
  %i.adf = getelementptr inbounds nuw i8, ptr %1, i64 2096 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.adg = getelementptr inbounds nuw i8, ptr %1, i64 2336 ; 3 uses
  %.sroa.7.0..sroa_idx.i317 = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.829.0..sroa_idx.i318 = getelementptr inbounds nuw i8, ptr %i.z, i64 112
  %.sroa.3.0..sroa_idx.i319 = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.539.0..sroa_idx.i320 = getelementptr inbounds nuw i8, ptr %i.y, i64 112
  br label %bb.ma

bb.ma:                                            ; preds = %.noexc325, %bb.lz
  invoke void @_RNvXs2_NtCs7cL0Iqqqcdm_12futures_core6streamINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream14try_filter_map12TryFilterMapINtNtNtBN_6stream3map3MapINtNtB29_3zip3ZipINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB5_6Streamp4ItemINtNtB2P_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB4D_6errors15DeltaTableErrorENtNtB2P_6marker4SendEL_EEINtNtBN_4iter4IterINtNtNtNtB2P_4iter7sources6repeat6RepeatTINtNtB3l_4sync3ArcNtCseo6ZV82fEK1_3url3UrlEIB7I_INtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetNtNtB3l_6string6StringEEEEEENCNCNCNvNtNtB4D_10operations6delete7execute00s1_0ENCNCB9C_s2_00NCB9C_s2_0ENtB5_9TryStream13try_poll_nextB4D_(ptr noalias noundef nonnull sret([272 x i8]) align 16 captures(address) dereferenceable(272) %i.z, ptr noundef nonnull align 16 %i.adf, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc324 unwind label %bb.ly

.noexc324:                                        ; preds = %bb.ma
  %i.adh = load i64, ptr %i.z, align 16, !range !14489, !noalias !14794, !noundef !4 ; 2 uses
  switch i64 %i.adh, label %bb.mb [
    i64 12, label %.thread891
    i64 11, label %.thread893
    i64 10, label %bb.mc
  ]

.thread891:                                       ; preds = %.noexc324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.md

.thread893:                                       ; preds = %.noexc324
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9651, ptr noundef nonnull align 16 dereferenceable(24) %i.adg, i64 24, i1 false), !noalias !14798
  store i64 0, ptr %i.adg, align 16, !noalias !14794
  %.sroa.441.0..sroa_idx.i322 = getelementptr inbounds nuw i8, ptr %1, i64 2344
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.441.0..sroa_idx.i322, align 8, !noalias !14794
  %.sroa.542.0..sroa_idx.i323 = getelementptr inbounds nuw i8, ptr %1, i64 2352
  store i64 0, ptr %.sroa.542.0..sroa_idx.i323, align 16, !noalias !14794
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.me

bb.mb:                                            ; preds = %.noexc324
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !14799
  store i64 %i.adh, ptr %i.y, align 8, !alias.scope !14803, !noalias !14807
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.3.0..sroa_idx.i319, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.7.0..sroa_idx.i317, i64 104, i1 false), !noalias !14794
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.539.0..sroa_idx.i320, ptr noundef nonnull align 16 dereferenceable(160) %.sroa.829.0..sroa_idx.i318, i64 160, i1 false), !noalias !14794
  invoke void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEINtB4_10SpecExtendBT_INtNtCsbvkFyIu7lgC_4core6option8IntoIterBT_EE11spec_extendBZ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.adg, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(272) %i.y)
          to label %.noexc325 unwind label %bb.ly

.noexc325:                                        ; preds = %bb.mb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !14799
  br label %bb.ma

bb.mc:                                            ; preds = %.noexc324
  %i.adi = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.0649.0.copyload650 = load i64, ptr %i.adi, align 16, !noalias !14798 ; 2 uses
  %.sroa.9651.0..sroa_idx652 = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9651, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9651.0..sroa_idx652, i64 24, i1 false), !noalias !14798
  %.sroa.10653.0..sroa_idx654 = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.10653, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.10653.0..sroa_idx654, i64 64, i1 false), !noalias !14798
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
end_hunk_6
begin_hunk_7_@_RNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations6delete7execute00B9_:bb.a
  br label %bb.pz

bb.pq:                                            ; preds = %bb.nd
  %i.aiv = landingpad { ptr, i32 }
          cleanup
  br label %bb.pp

bb.pr:                                            ; preds = %_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtB1o_10operations6delete13DeleteMetricsENtNtB1o_6errors15DeltaTableErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEE13from_residualB1o_.exit338, %bb.ps
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8667)
  br label %bb.pt

bb.ps:                                            ; preds = %bb.mz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  br label %bb.pr

bb.pt:                                            ; preds = %bb.vg, %bb.pr, %bb.pn
  %i.aiw = getelementptr inbounds nuw i8, ptr %1, i64 2083
  store i8 0, ptr %i.aiw, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  %i.aix = getelementptr inbounds nuw i8, ptr %1, i64 2056 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBL_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aix)
          to label %bb.pv unwind label %bb.pu

bb.pu:                                            ; preds = %bb.pt
  %i.aiy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aix)
          to label %.body366 unwind label %bb.pw

bb.pv:                                            ; preds = %bb.pt
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aix)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEEB1j_.exit unwind label %bb.vi

bb.pw:                                            ; preds = %bb.pu
  %i.aiz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.px:                                            ; preds = %bb.mt, %bb.mv
  %.pn64 = phi { ptr, i32 } [ %i.aer, %bb.mv ], [ %i.aeq, %bb.mt ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  call void @llvm.experimental.noalias.scope.decl(metadata !14922)
  call void @llvm.experimental.noalias.scope.decl(metadata !14925)
  call void @llvm.experimental.noalias.scope.decl(metadata !14928)
  %i.aja = load ptr, ptr %i.cx, align 8, !alias.scope !14931, !nonnull !4, !noundef !4
  %i.ajb = atomicrmw sub ptr %i.aja, i64 1 release, align 8, !noalias !14931
  %i.ajc = icmp eq i64 %i.ajb, 1
  br i1 %i.ajc, label %bb.py, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderECs14kWLkQVSKO_14deltalake_core.exit369

bb.py:                                            ; preds = %bb.px
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cx) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderECs14kWLkQVSKO_14deltalake_core.exit369 unwind label %bb.bn

bb.pz:                                            ; preds = %bb.wi, %bb.vh, %bb.pp, %bb.po
  %.pn124.pn = phi { ptr, i32 } [ %.pn124, %bb.pp ], [ %i.avl, %bb.vh ], [ %.pn120.pn.pn, %bb.wi ], [ %.pn120.pn.pn, %bb.po ]
  %i.ajd = getelementptr inbounds nuw i8, ptr %1, i64 2083
  store i8 0, ptr %i.ajd, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  br label %bb.qb

bb.qa:                                            ; preds = %bb.ml
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  br label %.body332

bb.qb:                                            ; preds = %bb.pz, %.body332, %bb.mj
  %.pn124.pn.pn = phi { ptr, i32 } [ %.pn124.pn, %bb.pz ], [ %.pn62, %.body332 ], [ %i.adw, %bb.mj ] ; 2 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %1, i64 2086
  %i.ajf = load i8, ptr %i.aje, align 2, !range !178, !noundef !4
  %i.ajg = trunc nuw i8 %i.ajf to i1
  br i1 %i.ajg, label %bb.wj, label %.body366

bb.qc:                                            ; preds = %bb.mg
  %.sroa.3661.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.3661.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.6658, i64 64, i1 false)
  %.sroa.2660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2660.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3657, i64 24, i1 false)
  store i64 %.sroa.0649.1895, ptr %i.bw, align 16, !alias.scope !14932
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEEB1j_.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEEB1j_.exit: ; preds = %bb.pv, %bb.qc
  %i.ajh = getelementptr inbounds nuw i8, ptr %1, i64 2086
  store i8 0, ptr %i.ajh, align 2
  %i.aji = getelementptr inbounds nuw i8, ptr %1, i64 2087
  store i8 0, ptr %i.aji, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  %i.ajj = getelementptr inbounds nuw i8, ptr %1, i64 1152
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(320) %i.ajj)
          to label %bb.vk unwind label %bb.vj

.body366:                                         ; preds = %bb.vi, %bb.pu, %bb.wj, %bb.qb, %bb.lo
  %.pn128.pn = phi { ptr, i32 } [ %.pn128, %bb.lo ], [ %.pn124.pn.pn, %bb.qb ], [ %.pn124.pn.pn, %bb.wj ], [ %i.avm, %bb.vi ], [ %i.aiy, %bb.pu ] ; 3 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %1, i64 2086
  store i8 0, ptr %i.ajk, align 2
  %i.ajl = getelementptr inbounds nuw i8, ptr %1, i64 2087
  %i.ajm = load i8, ptr %i.ajl, align 1, !range !178, !noundef !4
  %i.ajn = trunc nuw i8 %i.ajm to i1
  br i1 %i.ajn, label %bb.wk, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtCseo6ZV82fEK1_3url3UrlEECs14kWLkQVSKO_14deltalake_core.exit440

bb.qd:                                            ; preds = %bb.qe
  %i.ajo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  %.val243 = load ptr, ptr %i.ajq, align 16
  %i.ajp = getelementptr i8, ptr %1, i64 2104
  %.val244 = load ptr, ptr %i.ajp, align 8, !nonnull !4, !align !18, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %.val243, ptr nonnull %.val244) #46
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.bn

bb.qe:                                            ; preds = %bb.g, %bb.or
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  %i.ajq = getelementptr inbounds nuw i8, ptr %1, i64 2096 ; 4 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ce, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ajq, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.qf unwind label %bb.qd

bb.qf:                                            ; preds = %bb.qe
  %i.ajr = load i64, ptr %i.ce, align 8, !range !12625, !noundef !4 ; 3 uses
  %i.ajs = icmp eq i64 %i.ajr, 21
  br i1 %i.ajs, label %bb.qg, label %bb.qh

bb.qg:                                            ; preds = %bb.qf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  store i64 -9223372036854775710, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  br label %common.ret

bb.qh:                                            ; preds = %bb.qf
  %.sroa.3789.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.sroa.3789.0.copyload = load ptr, ptr %.sroa.3789.0..sroa_idx, align 8 ; 5 uses
  %.sroa.5790.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %.sroa.5790.0.copyload = load ptr, ptr %.sroa.5790.0..sroa_idx, align 8 ; 4 uses
  %.sroa.7791.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7791, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7791.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  %.val241 = load ptr, ptr %i.ajq, align 16       ; 5 uses
  %i.ajt = getelementptr i8, ptr %1, i64 2104     ; 2 uses
  %.val242 = load ptr, ptr %i.ajt, align 8, !nonnull !4, !align !18, !noundef !4 ; 5 uses
  %i.aju = load ptr, ptr %.val242, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i370 = icmp eq ptr %i.aju, null
  br i1 %.not.i.i370, label %bb.qj, label %bb.qi

bb.qi:                                            ; preds = %bb.qh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val241) ]
  invoke void %i.aju(ptr noundef nonnull %.val241)
          to label %bb.qj unwind label %bb.ql

bb.qj:                                            ; preds = %bb.qi, %bb.qh
  %i.ajv = getelementptr inbounds nuw i8, ptr %.val242, i64 8
  %i.ajw = load i64, ptr %i.ajv, align 8, !range !16, !invariant.load !4 ; 2 uses
  %i.ajx = icmp eq i64 %i.ajw, 0
  br i1 %i.ajx, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.qk

bb.qk:                                            ; preds = %bb.qj
  %i.ajy = getelementptr inbounds nuw i8, ptr %.val242, i64 16
  %i.ajz = load i64, ptr %i.ajy, align 8, !range !3, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val241) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val241, i64 noundef range(i64 1, 0) %i.ajw, i64 noundef range(i64 1, 536870913) %i.ajz) #40
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit

bb.ql:                                            ; preds = %bb.qi
  %i.aka = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.akb = getelementptr inbounds nuw i8, ptr %.val242, i64 8
  %i.akc = load i64, ptr %i.akb, align 8, !range !16, !invariant.load !4 ; 2 uses
  %i.akd = icmp eq i64 %i.akc, 0
  br i1 %i.akd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit, label %bb.qm

bb.qm:                                            ; preds = %bb.ql
  %i.ake = getelementptr inbounds nuw i8, ptr %.val242, i64 16
  %i.akf = load i64, ptr %i.ake, align 8, !range !3, !invariant.load !4
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val241, i64 noundef range(i64 1, 0) %i.akc, i64 noundef range(i64 1, 536870913) %i.akf) #40
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.qn:                                            ; preds = %bb.qo
  %i.akg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.qk, %bb.qj
  %.not.i373 = icmp eq i64 %i.ajr, 20
  br i1 %.not.i373, label %bb.qp, label %bb.qo

bb.qo:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.4795.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4795.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7791, i64 16, i1 false)
  store i64 %i.ajr, ptr %i.n, align 8, !noalias !14936
  %.sroa.2793.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %.sroa.3789.0.copyload, ptr %.sroa.2793.0..sroa_idx, align 8, !noalias !14936
  %.sroa.3794.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %.sroa.5790.0.copyload, ptr %.sroa.3794.0..sroa_idx, align 8, !noalias !14936
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.bw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.n)
          to label %bb.qt unwind label %bb.qn

bb.qp:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3789.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5790.0.copyload) ]
  store ptr %.sroa.3789.0.copyload, ptr %i.ajq, align 16
  store ptr %.sroa.5790.0.copyload, ptr %i.ajt, align 8
  %i.akh = getelementptr i8, ptr %1, i64 136
  %.val246 = load ptr, ptr %i.akh, align 8, !nonnull !4, !noundef !4
  %i.aki = getelementptr inbounds nuw i8, ptr %.val246, i64 88
  %i.akj = load ptr, ptr %i.aki, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.akk = getelementptr i8, ptr %i.akj, i64 1040
  %.val247 = load i64, ptr %i.akk, align 8, !noundef !4 ; 2 uses
  %i.akl = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.akm = load <2 x ptr>, ptr %i.akl, align 16
  %i.akn = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.val208 = load ptr, ptr %i.akn, align 16, !nonnull !4, !noundef !4
  %i.ako = getelementptr i8, ptr %1, i64 152
  %.val209 = load ptr, ptr %i.ako, align 8, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %i.akp = atomicrmw add ptr %.sroa.3789.0.copyload, i64 1 monotonic, align 8
  %i.akq = icmp slt i64 %i.akp, 0
  br i1 %i.akq, label %bb.qq, label %.thread1040

bb.qq:                                            ; preds = %bb.qp
  call void @llvm.trap()
  unreachable

.thread1040:                                      ; preds = %bb.qp
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akj, i64 552
  %i.aks = getelementptr inbounds nuw i8, ptr %.val209, i64 16
  %i.akt = load i64, ptr %i.aks, align 8, !range !3, !invariant.load !4
  %i.aku = add nsw i64 %i.akt, -1
  %i.akv = and i64 %i.aku, -16
  %i.akw = getelementptr inbounds nuw i8, ptr %.val208, i64 %i.akv
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akw, i64 16
  %.not.i376 = icmp eq i64 %.val247, 0
  %..i = select i1 %.not.i376, i64 104857600, i64 %.val247
  %i.aky = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.akz = getelementptr inbounds nuw i8, ptr %1, i64 2081
  %i.ala = load i8, ptr %i.akz, align 1, !range !178, !noundef !4
  %i.alb = getelementptr inbounds nuw i8, ptr %1, i64 2112
  store <2 x ptr> %i.akm, ptr %i.alb, align 16
  %.sroa.9815.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2128
  store ptr %i.akx, ptr %.sroa.9815.0..sroa_idx, align 16
  %.sroa.10816.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2136
  store ptr %.val209, ptr %.sroa.10816.0..sroa_idx, align 8
  %.sroa.11817.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2144
  store ptr %.sroa.3789.0.copyload, ptr %.sroa.11817.0..sroa_idx, align 16
  %.sroa.12818.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2152
  store ptr %.sroa.5790.0.copyload, ptr %.sroa.12818.0..sroa_idx, align 8
  %.sroa.13819.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2160
  store i64 %..i, ptr %.sroa.13819.0..sroa_idx, align 16
  %.sroa.14820.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2168
  store ptr %i.akr, ptr %.sroa.14820.0..sroa_idx, align 8
  %.sroa.16822.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2180
  store i8 0, ptr %.sroa.16822.0..sroa_idx, align 4
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2181
  store i8 1, ptr %.sroa.17.0..sroa_idx, align 1
  %.sroa.17.sroa.8.0..sroa.17.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2182
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.sroa.17.sroa.8.0..sroa.17.0..sroa_idx.sroa_idx, ptr noundef nonnull align 16 dereferenceable(16) %i.aky, i64 16, i1 false)
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2198
  store i8 %i.ala, ptr %.sroa.18.0..sroa_idx, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9827)
  %i.alc = getelementptr inbounds nuw i8, ptr %1, i64 2112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1234.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ald = getelementptr inbounds nuw i8, ptr %1, i64 2180
  br label %bb.qw

bb.qr:                                            ; preds = %.body382, %bb.vd
  %.pn108.pn = phi { ptr, i32 } [ %.pn101.pn, %bb.vd ], [ %eh.lpad-body383, %.body382 ] ; 2 uses
  %i.ale = getelementptr inbounds nuw i8, ptr %1, i64 2096 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14939)
  call void @llvm.experimental.noalias.scope.decl(metadata !14942)
  %i.alf = load ptr, ptr %i.ale, align 16, !alias.scope !14945, !nonnull !4, !noundef !4
  %i.alg = atomicrmw sub ptr %i.alf, i64 1 release, align 8, !noalias !14945
  %i.alh = icmp eq i64 %i.alg, 1
  br i1 %i.alh, label %bb.qs, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.qs:                                            ; preds = %bb.qr
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ale) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.bn

bb.qt:                                            ; preds = %bb.qo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit420

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit420: ; preds = %bb.ve, %bb.vf, %bb.qt
  %i.ali = getelementptr inbounds nuw i8, ptr %1, i64 1616
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(320) %i.ali)
          to label %bb.pn unwind label %bb.ud

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.oq, %bb.qd, %bb.ql, %bb.qm, %bb.qn, %bb.qr, %bb.qs, %bb.uc
  %.pn111.pn = phi { ptr, i32 } [ %.pn108.pn, %bb.qr ], [ %i.atj, %bb.uc ], [ %.pn108.pn, %bb.qs ], [ %i.ahx, %bb.oq ], [ %i.ajo, %bb.qd ], [ %i.akg, %bb.qn ], [ %i.aka, %bb.qm ], [ %i.aka, %bb.ql ]
  %i.alj = getelementptr inbounds nuw i8, ptr %1, i64 1616
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(320) %i.alj) #46
          to label %bb.po unwind label %bb.bn

bb.qu:                                            ; preds = %bb.rv, %bb.ru
  %i.alk = landingpad { ptr, i32 }
          cleanup
  br label %.body382

.body382:                                         ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit20.i, %bb.qu
  %i.all = phi ptr [ %i.alm, %bb.qu ], [ %i.aos, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit20.i ]
  %eh.lpad-body383 = phi { ptr, i32 } [ %i.alk, %bb.qu ], [ %.pn16.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit20.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9827)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution15write_exec_plan0EBQ_(ptr noundef nonnull align 16 %i.all) #46
          to label %bb.qr unwind label %bb.bn

bb.qv:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 2180
  %.pre998 = load i8, ptr %.phi.trans.insert, align 4, !range !1779, !noalias !14946
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9827)
  %i.alm = getelementptr inbounds nuw i8, ptr %1, i64 2112 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1234.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.aln = getelementptr inbounds nuw i8, ptr %1, i64 2180 ; 3 uses
  switch i8 %.pre998, label %default.unreachable1039 [
    i8 0, label %bb.qw
    i8 1, label %bb.ru
    i8 2, label %bb.rv
    i8 3, label %bb.qx
    i8 4, label %bb.qy
  ]

bb.qw:                                            ; preds = %.thread1040, %bb.qv
  %i.alo = phi ptr [ %i.ald, %.thread1040 ], [ %i.aln, %bb.qv ] ; 8 uses
  %i.alp = phi ptr [ %i.alc, %.thread1040 ], [ %i.alm, %bb.qv ] ; 8 uses
  %i.alq = getelementptr inbounds nuw i8, ptr %1, i64 2179
  %i.alr = getelementptr inbounds nuw i8, ptr %1, i64 2178 ; 2 uses
  %i.als = getelementptr inbounds nuw i8, ptr %1, i64 2177
  %i.alt = getelementptr inbounds nuw i8, ptr %1, i64 2176 ; 3 uses
  store i32 16777216, ptr %i.alt, align 16, !noalias !14946
  %i.alu = load ptr, ptr %i.alp, align 16, !noalias !14946, !nonnull !4, !noundef !4 ; 3 uses
  %i.alv = getelementptr inbounds nuw i8, ptr %1, i64 2120
  %i.alw = load ptr, ptr %i.alv, align 8, !noalias !14946, !nonnull !4, !align !18, !noundef !4 ; 3 uses
  %i.alx = getelementptr inbounds nuw i8, ptr %1, i64 2128
  %i.aly = load ptr, ptr %i.alx, align 16, !noalias !14946, !nonnull !4, !noundef !4
  %i.alz = getelementptr inbounds nuw i8, ptr %1, i64 2136
  %i.ama = load ptr, ptr %i.alz, align 8, !noalias !14946, !nonnull !4, !align !18, !noundef !4
  %i.amb = getelementptr inbounds nuw i8, ptr %1, i64 2168
  %i.amc = load ptr, ptr %i.amb, align 8, !noalias !14946, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !14946
  %i.amd = getelementptr inbounds nuw i8, ptr %1, i64 2144
  %i.ame = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.amf = load <2 x ptr>, ptr %i.amd, align 16, !noalias !14946
  store <2 x ptr> %i.amf, ptr %i.m, align 16, !noalias !14946
  %i.amg = getelementptr inbounds nuw i8, ptr %1, i64 2181
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.l, ptr noundef nonnull align 1 dereferenceable(17) %i.amg, i64 17, i1 false), !noalias !14946
  %i.amh = getelementptr inbounds nuw i8, ptr %1, i64 2160
  %i.ami = load i64, ptr %i.amh, align 16, !noalias !14946, !noundef !4 ; 2 uses
  %i.amj = getelementptr inbounds nuw i8, ptr %1, i64 2198
  %i.amk = load i8, ptr %i.amj, align 2, !range !178, !noalias !14946, !noundef !4
  %i.aml = trunc nuw i8 %i.amk to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !14946
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i378)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !14946
  %i.amm = getelementptr inbounds nuw i8, ptr %i.alw, i64 40
  %i.amn = load ptr, ptr %i.amm, align 8, !invariant.load !4, !noalias !14946, !nonnull !4
  %i.amo = invoke noundef nonnull align 8 ptr %i.amn(ptr noundef nonnull %i.alu)
          to label %bb.ra unwind label %bb.qz, !noalias !14946

bb.qx:                                            ; preds = %bb.qv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !14946
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !14946
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !14946
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !14946
  br label %bb.rx

bb.qy:                                            ; preds = %bb.qv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !14946
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !14946
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !14946
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !14946
  br label %bb.sf

bb.qz:                                            ; preds = %bb.ra, %bb.qw
  %i.amp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !14946
  br label %bb.rd

bb.ra:                                            ; preds = %bb.qw
  invoke void @_RNvMs3_NtNtCsjhHCjzi9uUI_17datafusion_common12file_options14parquet_writerNtNtB9_6config14ParquetOptions30into_writer_properties_builder(ptr noalias noundef nonnull sret([248 x i8]) align 8 captures(none) dereferenceable(248) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(288) %i.amo)
          to label %bb.rb unwind label %bb.qz, !noalias !14946

bb.rb:                                            ; preds = %bb.ra
  call void @llvm.experimental.noalias.scope.decl(metadata !14950)
  %i.amq = load i64, ptr %i.j, align 8, !range !1069, !alias.scope !14953, !noalias !14955, !noundef !4 ; 2 uses
  %i.amr = icmp eq i64 %i.amq, 2
  %i.ams = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.i378, ptr noundef nonnull align 8 dereferenceable(40) %i.ams, i64 40, i1 false), !alias.scope !14956, !noalias !14946
  br i1 %i.amr, label %bb.rc, label %bb.rf

bb.rc:                                            ; preds = %bb.rb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !14946
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14946
end_hunk_7
begin_hunk_8_@_RNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations6update7execute00B9_:bb.a
  %i.ls = load i8, ptr %i.lr, align 1, !range !178, !noundef !4
  %i.lt = trunc nuw i8 %i.ls to i1
  br i1 %i.lt, label %bb.pq, label %bb.ej

bb.ea:                                            ; preds = %bb.eb, %bb.bi
  %.pn142 = phi { ptr, i32 } [ %i.lu, %bb.eb ], [ %.pn26, %bb.bi ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr23conditional_expressions11CaseBuilderECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(64) %i.cd) #46
          to label %bb.ed unwind label %bb.do

bb.eb:                                            ; preds = %bb.bl
  %i.lu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.ec:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr23conditional_expressions11CaseBuilderECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(64) %i.cd)
          to label %bb.ef unwind label %bb.ee

bb.ed:                                            ; preds = %bb.eh, %bb.ee, %bb.ea
  %.pn144 = phi { ptr, i32 } [ %i.lv, %bb.ee ], [ %.pn142, %bb.ea ], [ %.pn24, %bb.eh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9484)
  br label %bb.ej

bb.ee:                                            ; preds = %bb.ec
  %i.lv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.ef:                                            ; preds = %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9484)
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.dx
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 3789
  store i8 0, ptr %i.lw, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  %i.lx = getelementptr inbounds nuw i8, ptr %1, i64 2624
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files16MatchedFilesScanEBM_(ptr noalias noundef align 16 dereferenceable(464) %i.lx)
          to label %bb.el unwind label %bb.nd

bb.eh:                                            ; preds = %bb.bd, %bb.ei, %bb.bb
  %.pn24 = phi { ptr, i32 } [ %i.ly, %bb.ei ], [ %i.hf, %bb.bd ], [ %i.he, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  br label %bb.ed

bb.ei:                                            ; preds = %bb.bc
  %i.ly = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.cc) #46
          to label %bb.eh unwind label %bb.do

bb.ej:                                            ; preds = %bb.pq, %bb.ed, %bb.dz
  %.pn144.pn = phi { ptr, i32 } [ %.pn144, %bb.ed ], [ %.pn138.pn.pn, %bb.pq ], [ %.pn138.pn.pn, %bb.dz ]
  %i.lz = getelementptr inbounds nuw i8, ptr %1, i64 3789
  store i8 0, ptr %i.lz, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  %i.ma = getelementptr inbounds nuw i8, ptr %1, i64 2624
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files16MatchedFilesScanEBM_(ptr noalias noundef align 16 dereferenceable(464) %i.ma) #46
          to label %bb.em unwind label %bb.do

bb.ek:                                            ; preds = %bb.az
  %i.mb = getelementptr inbounds nuw i8, ptr %1, i64 2048
  %.sroa.7481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.7481.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(48) %i.mb, i64 48, i1 false)
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 0, ptr %i.mc, align 8
  %.sroa.5479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5479.0..sroa_idx, align 16
  %.sroa.6480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store i64 0, ptr %.sroa.6480.0..sroa_idx, align 8
  store i64 -9223372036854775711, ptr %i.ag, align 16
  br label %bb.el

bb.el:                                            ; preds = %bb.en, %bb.ek, %bb.eg
  %i.md = getelementptr inbounds nuw i8, ptr %1, i64 3790
  store i8 0, ptr %i.md, align 2
  %i.me = getelementptr inbounds nuw i8, ptr %1, i64 3778 ; 2 uses
  %i.mf = load i8, ptr %i.me, align 2, !range !178, !noundef !4
  %i.mg = trunc nuw i8 %i.mf to i1
  br i1 %i.mg, label %bb.on, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit409

bb.em:                                            ; preds = %bb.nd, %bb.ej, %bb.ay
  %.pn147 = phi { ptr, i32 } [ %i.agu, %bb.nd ], [ %.pn144.pn, %bb.ej ], [ %.pn21, %bb.ay ] ; 3 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %1, i64 2160 ; 2 uses
  %i.mi = load i64, ptr %i.mh, align 16, !range !5941, !noundef !4
  %.not149 = icmp eq i64 %i.mi, 36
  br i1 %.not149, label %bb.eo, label %bb.pr

bb.en:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.el

bb.eo:                                            ; preds = %bb.am, %bb.ar, %bb.ps, %bb.pr, %bb.em
  %.pn150.pn = phi { ptr, i32 } [ %.pn147, %bb.em ], [ %.pn147, %bb.ps ], [ %.pn147, %bb.pr ], [ %i.gf, %bb.ar ], [ %i.gb, %bb.am ]
  %i.mj = getelementptr inbounds nuw i8, ptr %1, i64 3790
  store i8 0, ptr %i.mj, align 2
  br label %bb.ab

bb.ep:                                            ; preds = %bb.eq
  %i.mk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  %.val203 = load ptr, ptr %i.mm, align 16
  %i.ml = getelementptr i8, ptr %1, i64 3800
  %.val204 = load ptr, ptr %i.ml, align 8, !nonnull !4, !align !18, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %.val203, ptr nonnull %.val204) #46
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit281 unwind label %bb.do

bb.eq:                                            ; preds = %bb.c, %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  %i.mm = getelementptr inbounds nuw i8, ptr %1, i64 3792 ; 4 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.bi, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.mm, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.er unwind label %bb.ep

bb.er:                                            ; preds = %bb.eq
  %i.mn = load i64, ptr %i.bi, align 8, !range !12625, !noundef !4 ; 3 uses
  %i.mo = icmp eq i64 %i.mn, 21
  br i1 %i.mo, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  store i64 -9223372036854775710, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  br label %common.ret

bb.et:                                            ; preds = %bb.er
  %.sroa.3572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.3572.0.copyload = load ptr, ptr %.sroa.3572.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %.sroa.5573.0.copyload = load ptr, ptr %.sroa.5573.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7574, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7574.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  %.val201 = load ptr, ptr %i.mm, align 16        ; 5 uses
  %i.mp = getelementptr i8, ptr %1, i64 3800      ; 2 uses
  %.val202 = load ptr, ptr %i.mp, align 8, !nonnull !4, !align !18, !noundef !4 ; 5 uses
  %i.mq = load ptr, ptr %.val202, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.mq, null
  br i1 %.not.i.i, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val201) ]
  invoke void %i.mq(ptr noundef nonnull %.val201)
          to label %bb.ev unwind label %bb.ex

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %i.mr = getelementptr inbounds nuw i8, ptr %.val202, i64 8
  %i.ms = load i64, ptr %i.mr, align 8, !range !16, !invariant.load !4 ; 2 uses
  %i.mt = icmp eq i64 %i.ms, 0
  br i1 %i.mt, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.mu = getelementptr inbounds nuw i8, ptr %.val202, i64 16
  %i.mv = load i64, ptr %i.mu, align 8, !range !3, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val201) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val201, i64 noundef range(i64 1, 0) %i.ms, i64 noundef range(i64 1, 536870913) %i.mv) #40
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit

bb.ex:                                            ; preds = %bb.eu
  %i.mw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.val202, i64 8
  %i.my = load i64, ptr %i.mx, align 8, !range !16, !invariant.load !4 ; 2 uses
  %i.mz = icmp eq i64 %i.my, 0
  br i1 %i.mz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit281, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.na = getelementptr inbounds nuw i8, ptr %.val202, i64 16
  %i.nb = load i64, ptr %i.na, align 8, !range !3, !invariant.load !4
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val201, i64 noundef range(i64 1, 0) %i.my, i64 noundef range(i64 1, 536870913) %i.nb) #40
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit281

bb.ez:                                            ; preds = %bb.fa
  %i.nc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit281

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ew, %bb.ev
  %.not.i261 = icmp eq i64 %i.mn, 20
  br i1 %.not.i261, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.4578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4578.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7574, i64 16, i1 false)
  store i64 %i.mn, ptr %i.t, align 8, !noalias !15244
  %.sroa.2576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %.sroa.3572.0.copyload, ptr %.sroa.2576.0..sroa_idx, align 8, !noalias !15244
  %.sroa.3577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %.sroa.5573.0.copyload, ptr %.sroa.3577.0..sroa_idx, align 8, !noalias !15244
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.ag, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.t)
          to label %bb.gf unwind label %bb.ez

bb.fb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3572.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5573.0.copyload) ]
  %i.nd = getelementptr inbounds nuw i8, ptr %1, i64 3088 ; 2 uses
  store ptr %.sroa.3572.0.copyload, ptr %i.nd, align 16
  %i.ne = getelementptr i8, ptr %1, i64 3096      ; 2 uses
  store ptr %.sroa.5573.0.copyload, ptr %i.ne, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  %i.nf = getelementptr inbounds nuw i8, ptr %1, i64 2624
  invoke fastcc void @_RNvXsI_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(320) %i.bh, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.nf)
          to label %bb.fe unwind label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.ng = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  br label %.body368

.body362:                                         ; preds = %bb.ob, %bb.mq, %bb.fd, %bb.pl, %.body299
  %.pn122 = phi { ptr, i32 } [ %.pn119.pn, %.body299 ], [ %.pn119.pn, %bb.pl ], [ %i.afz, %bb.mq ], [ %i.nl, %bb.fd ], [ %i.ait, %bb.ob ] ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %1, i64 3776
  store i8 0, ptr %i.nh, align 16
  %i.ni = getelementptr inbounds nuw i8, ptr %1, i64 3777
  %i.nj = load i8, ptr %i.ni, align 1, !range !178, !noundef !4
  %i.nk = trunc nuw i8 %i.nj to i1
  br i1 %i.nk, label %bb.pm, label %.body368

bb.fd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i.i392, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.fe
  %i.nl = landingpad { ptr, i32 }
          cleanup
  br label %.body362

bb.fe:                                            ; preds = %bb.fb
  %i.nm = getelementptr inbounds nuw i8, ptr %1, i64 3780
  store i8 0, ptr %i.nm, align 4
  %i.nn = getelementptr inbounds nuw i8, ptr %1, i64 960
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(640) %1, ptr noundef nonnull readonly align 16 dereferenceable(320) %i.bh, i64 320, i1 false), !alias.scope !15247, !noalias !15251
  %i.no = getelementptr inbounds nuw i8, ptr %1, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(320) %i.no, ptr noundef nonnull align 16 dereferenceable(320) %i.nn, i64 320, i1 false)
  %i.np = getelementptr inbounds nuw i8, ptr %1, i64 3777
  store i8 1, ptr %i.np, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  %i.nq = getelementptr inbounds nuw i8, ptr %1, i64 3520 ; 3 uses
  %i.nr = load ptr, ptr %i.nq, align 16, !nonnull !4, !align !18, !noundef !4
  %i.ns = getelementptr i8, ptr %i.nr, i64 24
  %.val189 = load ptr, ptr %i.ns, align 8, !nonnull !4, !noundef !4
  %i.nt = getelementptr inbounds nuw i8, ptr %.val189, i64 88
  %i.nu = load ptr, ptr %i.nt, align 8, !nonnull !4, !noundef !4
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 552
  %i.nw = getelementptr inbounds nuw i8, ptr %1, i64 3408 ; 2 uses
  invoke void @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write7configsNtB2_17WriterStatsConfig11from_config(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.nw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %i.nv)
          to label %bb.ff unwind label %bb.fd

bb.ff:                                            ; preds = %bb.fe
  %i.nx = getelementptr inbounds nuw i8, ptr %1, i64 3776
  store i8 1, ptr %i.nx, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16601.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17602)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18603)
  %i.ny = load ptr, ptr %i.nq, align 16, !nonnull !4, !align !18, !noundef !4
  %i.nz = getelementptr inbounds nuw i8, ptr %1, i64 3168
  %i.oa = load <2 x ptr>, ptr %i.nz, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  %.val210 = load ptr, ptr %i.nd, align 16, !nonnull !4, !noundef !4 ; 2 uses
  %.val211 = load ptr, ptr %i.ne, align 8         ; 2 uses
  %i.ob = atomicrmw add ptr %.val210, i64 1 monotonic, align 8
  %i.oc = icmp slt i64 %i.ob, 0
  br i1 %i.oc, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  call void @llvm.trap()
  unreachable

bb.fh:                                            ; preds = %bb.ff
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val211) ]
  store ptr %.val210, ptr %i.bg, align 16
  %i.od = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %.val211, ptr %i.od, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  %i.oe = getelementptr inbounds nuw i8, ptr %1, i64 3360
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.oe)
          to label %bb.fk unwind label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.of = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  call void @llvm.experimental.noalias.scope.decl(metadata !15253)
  call void @llvm.experimental.noalias.scope.decl(metadata !15256)
  %i.og = load ptr, ptr %i.bg, align 16, !alias.scope !15259, !nonnull !4, !noundef !4
  %i.oh = atomicrmw sub ptr %i.og, i64 1 release, align 8, !noalias !15259
  %i.oi = icmp eq i64 %i.oh, 1
  br i1 %i.oi, label %bb.fj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.fj:                                            ; preds = %bb.fi
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bg) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.do

bb.fk:                                            ; preds = %bb.fh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  %i.oj = getelementptr inbounds nuw i8, ptr %1, i64 3184
  %.val180 = load ptr, ptr %i.oj, align 16, !nonnull !4, !noundef !4
  %i.ok = getelementptr i8, ptr %1, i64 3192
  %.val181 = load ptr, ptr %i.ok, align 8, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %.val181, i64 16
  %i.om = load i64, ptr %i.ol, align 8, !range !3, !invariant.load !4
  %i.on = add nsw i64 %i.om, -1
  %i.oo = and i64 %i.on, -16
  %i.op = getelementptr inbounds nuw i8, ptr %.val180, i64 %i.oo
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  %i.or = getelementptr inbounds nuw i8, ptr %1, i64 2016
  %i.os = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.os, ptr noundef nonnull align 16 dereferenceable(16) %i.or, i64 16, i1 false)
  store i8 1, ptr %i.bd, align 1
  %i.ot = getelementptr inbounds nuw i8, ptr %.val181, i64 112
  %i.ou = load ptr, ptr %i.ot, align 8, !invariant.load !4, !nonnull !4
  %i.ov = invoke { ptr, ptr } %i.ou(ptr noundef nonnull %i.oq, ptr noalias noundef nonnull align 1 captures(address) dereferenceable(17) %i.bd)
          to label %bb.fm unwind label %bb.fl     ; 2 uses

bb.fl:                                            ; preds = %bb.fk
  %i.ow = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf) #46
          to label %bb.gc unwind label %bb.do

bb.fm:                                            ; preds = %bb.fk
  %i.ox = extractvalue { ptr, ptr } %i.ov, 0      ; 4 uses
  %i.oy = extractvalue { ptr, ptr } %i.ov, 1      ; 3 uses
  store ptr %i.ox, ptr %i.mm, align 16
  store ptr %i.oy, ptr %i.mp, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ox) ]
  %i.oz = atomicrmw add ptr %i.ox, i64 1 monotonic, align 8
  %i.pa = icmp slt i64 %i.oz, 0
  br i1 %i.pa, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  call void @llvm.trap()
  unreachable

bb.fo:                                            ; preds = %bb.fm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.oy) ]
  store ptr %i.ox, ptr %i.be, align 16
  %i.pb = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %i.oy, ptr %i.pb, align 8
  %i.pc = load ptr, ptr %i.nq, align 16, !nonnull !4, !align !18, !noundef !4
  %i.pd = getelementptr i8, ptr %i.pc, i64 24
  %.val207 = load ptr, ptr %i.pd, align 8, !nonnull !4, !noundef !4
  %i.pe = getelementptr inbounds nuw i8, ptr %.val207, i64 88
  %i.pf = load ptr, ptr %i.pe, align 8, !nonnull !4, !noundef !4
  %i.pg = getelementptr i8, ptr %i.pf, i64 1040
  %.val209 = load i64, ptr %i.pg, align 8, !noundef !4 ; 2 uses
  %.not.i265 = icmp eq i64 %.val209, 0
  %..i = select i1 %.not.i265, i64 104857600, i64 %.val209
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  %i.ph = getelementptr inbounds nuw i8, ptr %1, i64 3528 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15260)
  call void @llvm.experimental.noalias.scope.decl(metadata !15263)
  %i.pi = load i64, ptr %i.ph, align 8, !range !1069, !alias.scope !15263, !noalias !15260, !noundef !4
  %.not.i266 = icmp eq i64 %i.pi, 2
  br i1 %.not.i266, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  invoke fastcc void @_RNvXsq_NtNtCs4tdlwR1I4n2_7parquet4file10propertiesNtB5_16WriterPropertiesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(248) %i.bc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %i.ph) #49
          to label %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.fr

bb.fq:                                            ; preds = %bb.fo
  store i64 2, ptr %i.bc, align 8, !alias.scope !15260, !noalias !15263
  br label %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit

bb.fr:                                            ; preds = %bb.fp
  %i.pj = landingpad { ptr, i32 }
          cleanup
  br label %.thread804

_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.fq, %bb.fp
  call void @llvm.experimental.noalias.scope.decl(metadata !15265)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.pk = load <2 x i64>, ptr %i.nw, align 16, !alias.scope !15265, !noalias !15268
  %i.pl = getelementptr inbounds nuw i8, ptr %1, i64 3424 ; 2 uses
  %i.pm = load i64, ptr %i.pl, align 16, !range !17, !alias.scope !15265, !noalias !15268, !noundef !4
  %.not.i268 = icmp eq i64 %i.pm, -9223372036854775808
  br i1 %.not.i268, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pl)
          to label %.noexc269 unwind label %bb.fu

.noexc269:                                        ; preds = %bb.fs
  %.sroa.0.0.copyload.i = load i64, ptr %i.s, align 8, !noalias !15270
  br label %bb.ft

bb.ft:                                            ; preds = %.noexc269, %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload.i, %.noexc269 ], [ -9223372036854775808, %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit ]
  %i.pn = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16601.sroa.12, ptr noundef nonnull align 8 dereferenceable(16) %i.pn, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.18603, ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.17602, ptr noundef nonnull align 8 dereferenceable(248) %i.bc, i64 248, i1 false)
end_hunk_8
begin_hunk_9_@_RNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations6update7execute00B9_:bb.a

bb.hc:                                            ; preds = %bb.hd
  %i.sh = landingpad { ptr, i32 }
          cleanup
  br label %.body290

.body290:                                         ; preds = %bb.hg, %bb.hc
  %eh.lpad-body291 = phi { ptr, i32 } [ %i.sh, %bb.hc ], [ %i.th, %bb.hg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtCseo6ZV82fEK1_3url3UrlEECs14kWLkQVSKO_14deltalake_core.exit422

bb.hd:                                            ; preds = %bb.ha
  %i.si = getelementptr inbounds nuw i8, ptr %1, i64 2072
  store i64 %i.sf, ptr %i.si, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  %i.sj = getelementptr inbounds nuw i8, ptr %1, i64 3520 ; 2 uses
  %i.sk = load ptr, ptr %i.sj, align 16, !nonnull !4, !align !18, !noundef !4
  %i.sl = getelementptr i8, ptr %i.sk, i64 24
  %.val188 = load ptr, ptr %i.sl, align 8, !nonnull !4, !noundef !4
  %i.sm = getelementptr inbounds nuw i8, ptr %.val188, i64 88
  %i.sn = load ptr, ptr %i.sm, align 8, !nonnull !4, !noundef !4 ; 6 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 1072
  call void @llvm.experimental.noalias.scope.decl(metadata !15332)
  call void @llvm.experimental.noalias.scope.decl(metadata !15335)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(88) %i.ay, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.so)
          to label %bb.he unwind label %bb.hc

bb.he:                                            ; preds = %bb.hd
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sn, i64 1116
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sn, i64 1136
  %i.sr = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.sr, ptr noundef nonnull readonly align 8 dereferenceable(17) %i.sq, i64 17, i1 false), !alias.scope !15337
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sn, i64 1112
  %i.st = getelementptr inbounds nuw i8, ptr %i.sn, i64 1132
  %i.su = load i32, ptr %i.st, align 4, !alias.scope !15335, !noalias !15332, !noundef !4
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sn, i64 1096
  %i.sw = getelementptr inbounds nuw i8, ptr %i.ay, i64 44
  %i.sx = load <4 x i32>, ptr %i.sp, align 4, !alias.scope !15335, !noalias !15332
  store <4 x i32> %i.sx, ptr %i.sw, align 4, !alias.scope !15332, !noalias !15335
  %i.sy = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.sz = load <2 x i16>, ptr %i.ss, align 8, !alias.scope !15335, !noalias !15332
  store <2 x i16> %i.sz, ptr %i.sy, align 8, !alias.scope !15332, !noalias !15335
  %i.ta = getelementptr inbounds nuw i8, ptr %i.ay, i64 60
  store i32 %i.su, ptr %i.ta, align 4, !alias.scope !15332, !noalias !15335
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.tc = load <4 x i32>, ptr %i.sv, align 8, !alias.scope !15335, !noalias !15332
  store <4 x i32> %i.tc, ptr %i.tb, align 8, !alias.scope !15332, !noalias !15335
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !15338
  store i64 1, ptr %i.q, align 8, !noalias !15338
  %i.td = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 1, ptr %i.td, align 8, !noalias !15338
  %i.te = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.te, ptr noundef nonnull readonly align 8 dereferenceable(88) %i.ay, i64 88, i1 false)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !15341
  %i.tf = call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 16481) 104, i64 noundef range(i64 8, 17) 8) #40, !noalias !15341 ; 3 uses
  %i.tg = icmp eq ptr %i.tf, null
  br i1 %i.tg, label %bb.hf, label %bb.hi, !prof !52

bb.hf:                                            ; preds = %bb.he
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #48
          to label %.noexc.i unwind label %bb.hg, !noalias !15338

.noexc.i:                                         ; preds = %bb.hf
  unreachable

bb.hg:                                            ; preds = %bb.hf
  %i.th = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtCseo6ZV82fEK1_3url3UrlEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.q) #46
          to label %.body290 unwind label %bb.hh, !noalias !15338

bb.hh:                                            ; preds = %bb.hg
  %i.ti = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !15338
  unreachable

bb.hi:                                            ; preds = %bb.he
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.tf, ptr noundef nonnull align 8 dereferenceable(104) %i.q, i64 104, i1 false), !noalias !15338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !15338
  store ptr %i.tf, ptr %i.az, align 8
  %i.tj = getelementptr inbounds nuw i8, ptr %1, i64 3786 ; 2 uses
  store i8 1, ptr %i.tj, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  %i.tk = load ptr, ptr %i.sj, align 16, !nonnull !4, !align !18, !noundef !4
  %i.tl = getelementptr inbounds nuw i8, ptr %1, i64 3184
  %.val186 = load ptr, ptr %i.tl, align 16, !nonnull !4, !noundef !4
  %i.tm = getelementptr i8, ptr %1, i64 3192
  %.val187 = load ptr, ptr %i.tm, align 8, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %1, i64 2624
  %i.to = getelementptr inbounds nuw i8, ptr %1, i64 3080
  %.val205 = load ptr, ptr %i.to, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.tp = atomicrmw add ptr %.val205, i64 1 monotonic, align 8
  %i.tq = icmp slt i64 %i.tp, 0
  br i1 %i.tq, label %bb.hj, label %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit

bb.hj:                                            ; preds = %bb.hi
  call void @llvm.trap()
  unreachable

_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.hi
  %i.tr = getelementptr inbounds nuw i8, ptr %.val187, i64 16
  %i.ts = load i64, ptr %i.tr, align 8, !range !3, !invariant.load !4
  %i.tt = add nsw i64 %i.ts, -1
  %i.tu = and i64 %i.tt, -16
  %i.tv = getelementptr inbounds nuw i8, ptr %.val186, i64 %i.tu
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 16
  %i.tx = invoke { ptr, ptr } @_RNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB4_13EagerSnapshot10file_views(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.tk, ptr noundef nonnull %i.tw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %.val187, ptr noundef nonnull %.val205)
          to label %bb.hl unwind label %bb.hk     ; 2 uses

bb.hk:                                            ; preds = %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit
  %i.ty = landingpad { ptr, i32 }
          cleanup
  br label %bb.hw

bb.hl:                                            ; preds = %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit
  %i.tz = extractvalue { ptr, ptr } %i.tx, 0      ; 3 uses
  %i.ua = extractvalue { ptr, ptr } %i.tx, 1      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  store i8 0, ptr %i.tj, align 2
  %i.ub = load ptr, ptr %i.az, align 8, !nonnull !4, !noundef !4
  store ptr %i.ub, ptr %i.at, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  invoke void @_RNvMs1_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_filesNtB5_16MatchedFilesScan9files_set(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.as, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(464) %i.tn)
          to label %bb.hn unwind label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.uc = landingpad { ptr, i32 }
          cleanup
  br label %.body293

bb.hn:                                            ; preds = %bb.hl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !15344
  store i64 1, ptr %i.p, align 8, !noalias !15344
  %i.ud = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 1, ptr %i.ud, align 8, !noalias !15344
  %i.ue = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ue, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.as, i64 40, i1 false)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !15347
  %i.uf = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 16481) 56, i64 noundef range(i64 8, 17) 8) #40, !noalias !15347 ; 3 uses
  %i.ug = icmp eq ptr %i.uf, null
  br i1 %i.ug, label %bb.ho, label %bb.hs, !prof !52

bb.ho:                                            ; preds = %bb.hn
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #48
          to label %.noexc.i292 unwind label %bb.hp, !noalias !15344

.noexc.i292:                                      ; preds = %bb.ho
  unreachable

bb.hp:                                            ; preds = %bb.ho
  %i.uh = landingpad { ptr, i32 }
          cleanup
  %i.ui = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  invoke void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringuENtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ue, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ui, i64 noundef 24, i64 noundef 16)
          to label %.body293 unwind label %bb.hq, !noalias !15344

bb.hq:                                            ; preds = %bb.hp
  %i.uj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !15344
  unreachable

.body293:                                         ; preds = %bb.hp, %bb.hm
  %.pn68 = phi { ptr, i32 } [ %i.uc, %bb.hm ], [ %i.uh, %bb.hp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.experimental.noalias.scope.decl(metadata !15350)
  call void @llvm.experimental.noalias.scope.decl(metadata !15353)
  %i.uk = load ptr, ptr %i.at, align 8, !alias.scope !15356, !nonnull !4, !noundef !4
  %i.ul = atomicrmw sub ptr %i.uk, i64 1 release, align 8, !noalias !15356
  %i.um = icmp eq i64 %i.ul, 1
  br i1 %i.um, label %bb.hr, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtCseo6ZV82fEK1_3url3UrlEECs14kWLkQVSKO_14deltalake_core.exit

bb.hr:                                            ; preds = %.body293
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtCseo6ZV82fEK1_3url3UrlE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.at) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtCseo6ZV82fEK1_3url3UrlEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.do

bb.hs:                                            ; preds = %bb.hn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.uf, ptr noundef nonnull align 8 dereferenceable(56) %i.p, i64 56, i1 false), !noalias !15344
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !15344
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %i.un = load ptr, ptr %i.at, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  %i.uo = invoke { ptr, ptr } @_RINvNtNtCs8CRAYtH5WmW_12futures_util6stream4iter4iterINtNtNtNtCsbvkFyIu7lgC_4core4iter7sources6repeat6RepeatTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtCseo6ZV82fEK1_3url3UrlEIB1K_INtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetNtNtB1O_6string6StringEEEEECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.un, ptr noundef nonnull %i.uf)
          to label %bb.hu unwind label %bb.ht     ; 2 uses

bb.ht:                                            ; preds = %bb.hs
  %i.up = landingpad { ptr, i32 }
          cleanup
  br label %bb.ib

bb.hu:                                            ; preds = %bb.hs
  %i.uq = extractvalue { ptr, ptr } %i.uo, 0
  %i.ur = extractvalue { ptr, ptr } %i.uo, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.tz) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ua) ]
  invoke void @_RINvYINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB8_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB2t_6errors15DeltaTableErrorENtNtB8_6marker4SendEL_EENtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream9StreamExt3zipINtNtB4D_4iter4IterINtNtNtNtB8_4iter7sources6repeat6RepeatTINtNtBE_4sync3ArcNtCseo6ZV82fEK1_3url3UrlEIB6x_INtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetNtNtBE_6string6StringEEEEEEB2t_(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(address) dereferenceable(160) %i.au, ptr noundef nonnull %i.tz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ua, ptr noundef nonnull %i.uq, ptr noundef nonnull %i.ur)
          to label %bb.hx unwind label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hk, %bb.ib, %bb.hv
  %.pn73 = phi { ptr, i32 } [ %i.ty, %bb.hk ], [ %.pn70.ph, %bb.ib ], [ %i.us, %bb.hv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %bb.hy

bb.hx:                                            ; preds = %bb.hu
  %i.ut = getelementptr inbounds nuw i8, ptr %i.av, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.ut, ptr noundef nonnull readonly align 16 dereferenceable(160) %i.au, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  store i64 0, ptr %i.av, align 16, !alias.scope !15357, !noalias !15360
  invoke void @_RINvYINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream14try_filter_map12TryFilterMapINtNtNtBa_6stream3map3MapINtNtB1w_3zip3ZipINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB2c_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB4y_6errors15DeltaTableErrorENtNtB2c_6marker4SendEL_EEINtNtBa_4iter4IterINtNtNtNtB2c_4iter7sources6repeat6RepeatTINtNtB2I_4sync3ArcNtCseo6ZV82fEK1_3url3UrlEIB7D_INtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetNtNtB2I_6string6StringEEEEEENCNCNCNvNtNtB4y_10operations6update7execute00s1_0ENCNCB9x_s2_00NCB9x_s2_0ENtB8_12TryStreamExt11try_collectINtNtB2I_3vec3VecNtNtB4w_6models6ActionEEB4y_(ptr noalias noundef nonnull sret([272 x i8]) align 16 captures(address) dereferenceable(272) %i.aw, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(240) %i.av)
          to label %bb.ia unwind label %bb.hz

bb.hy:                                            ; preds = %bb.hz, %bb.hw
  %.pn77 = phi { ptr, i32 } [ %i.uu, %bb.hz ], [ %.pn73, %bb.hw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %bb.ic

bb.hz:                                            ; preds = %bb.hx
  %i.uu = landingpad { ptr, i32 }
          cleanup
  br label %bb.hy

bb.ia:                                            ; preds = %bb.hx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %i.ax, ptr noundef nonnull readonly align 16 dereferenceable(272) %i.aw, i64 272, i1 false), !alias.scope !15362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %i.qz, ptr noundef nonnull align 16 dereferenceable(272) %i.ax, i64 272, i1 false)
  br label %bb.in

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtCseo6ZV82fEK1_3url3UrlEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body293, %bb.hr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %bb.ib

bb.ib:                                            ; preds = %bb.ht, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtCseo6ZV82fEK1_3url3UrlEECs14kWLkQVSKO_14deltalake_core.exit
  %.pn70.ph = phi { ptr, i32 } [ %.pn68, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtCseo6ZV82fEK1_3url3UrlEECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.up, %bb.ht ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ua) ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB2Q_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2Q_(ptr %i.tz, ptr nonnull %i.ua) #46
          to label %bb.hw unwind label %bb.do

bb.ic:                                            ; preds = %bb.it, %bb.im, %bb.hy
  %.pn107 = phi { ptr, i32 } [ %i.wd, %bb.it ], [ %i.vx, %bb.im ], [ %.pn77, %bb.hy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  br label %bb.kc

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtCseo6ZV82fEK1_3url3UrlEECs14kWLkQVSKO_14deltalake_core.exit422: ; preds = %bb.pi, %bb.pj, %bb.kc, %.body290
  %.pn107.pn.pn = phi { ptr, i32 } [ %eh.lpad-body291, %.body290 ], [ %.pn107.pn, %bb.kc ], [ %.pn107.pn, %bb.pj ], [ %.pn107.pn, %bb.pi ]
  %i.uv = getelementptr inbounds nuw i8, ptr %1, i64 3786
  store i8 0, ptr %i.uv, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br label %bb.id

bb.id:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtCseo6ZV82fEK1_3url3UrlEECs14kWLkQVSKO_14deltalake_core.exit422, %bb.hb, %bb.gz
  %.pn107.pn.pn.pn = phi { ptr, i32 } [ %.pn107.pn.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtCseo6ZV82fEK1_3url3UrlEECs14kWLkQVSKO_14deltalake_core.exit422 ], [ %i.sg, %bb.hb ], [ %i.sd, %bb.gz ]
  %i.uw = getelementptr inbounds nuw i8, ptr %1, i64 3472
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics10MetricsSetECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.uw) #46
          to label %.body316 unwind label %bb.do

.body316:                                         ; preds = %bb.jx, %bb.ka, %bb.ml, %bb.id, %bb.gv
  %.pn112 = phi { ptr, i32 } [ %i.rz, %bb.gv ], [ %.pn107.pn.pn.pn, %bb.id ], [ %i.zk, %bb.jx ], [ %i.afk, %bb.ml ], [ %i.zp, %bb.ka ] ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %1, i64 3104 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15366)
  call void @llvm.experimental.noalias.scope.decl(metadata !15369)
  %i.uy = load ptr, ptr %i.ux, align 16, !alias.scope !15372, !nonnull !4, !noundef !4
  %i.uz = atomicrmw sub ptr %i.uy, i64 1 release, align 8, !noalias !15372
  %i.va = icmp eq i64 %i.uz, 1
  br i1 %i.va, label %bb.ie, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit297

bb.ie:                                            ; preds = %.body316
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ux) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit297 unwind label %bb.do

bb.if:                                            ; preds = %.noexc286
  %i.vb = load ptr, ptr %i.rm, align 8, !noalias !15316, !nonnull !4, !noundef !4 ; 2 uses
  %i.vc = icmp samesign ugt i64 %i.rl, 36
  call void @llvm.assume(i1 %i.vc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !15316
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(37) %i.vb, ptr noundef nonnull align 1 dereferenceable(37) @201, i64 37, i1 false), !noalias !15316
  %i.vd = inttoptr i64 %i.rl to ptr
  store i64 -9223372036854775722, ptr %i.ag, align 16, !alias.scope !15373
  %.sroa.2633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.vd, ptr %.sroa.2633.0..sroa_idx, align 8, !alias.scope !15373
  %.sroa.3634.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %i.vb, ptr %.sroa.3634.0..sroa_idx, align 16, !alias.scope !15373
  %.sroa.4635.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store i64 37, ptr %.sroa.4635.0..sroa_idx, align 8, !alias.scope !15373
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit390

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit390: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics10MetricsSetECs14kWLkQVSKO_14deltalake_core.exit324, %bb.nx, %bb.if
  %i.ve = getelementptr inbounds nuw i8, ptr %1, i64 3448 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBL_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ve)
          to label %bb.ih unwind label %bb.ig

bb.ig:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit390
  %i.vf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ve)
          to label %.body299 unwind label %bb.ii

bb.ih:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit390
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ve)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEEB1j_.exit unwind label %bb.ny

bb.ii:                                            ; preds = %bb.ig
  %i.vg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit297: ; preds = %.body316, %bb.ie, %bb.mn, %bb.gq, %bb.gp
  %.pn114.pn = phi { ptr, i32 } [ %i.rg, %bb.gq ], [ %i.afp, %bb.mn ], [ %i.rd, %bb.gp ], [ %.pn112, %bb.ie ], [ %.pn112, %.body316 ] ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %1, i64 3787
  %i.vi = load i8, ptr %i.vh, align 1, !range !178, !noundef !4
  %i.vj = trunc nuw i8 %i.vi to i1
  br i1 %i.vj, label %bb.pk, label %.body299

bb.ij:                                            ; preds = %bb.gm
  %.sroa.3616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.3616.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.5613, i64 64, i1 false)
  %.sroa.2615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2615.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3612, i64 24, i1 false)
  store i64 %i.qu, ptr %i.ag, align 16, !alias.scope !15377
  %i.vk = getelementptr inbounds nuw i8, ptr %1, i64 3792 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15381)
  call void @llvm.experimental.noalias.scope.decl(metadata !15384)
  %i.vl = load ptr, ptr %i.vk, align 16, !alias.scope !15387, !nonnull !4, !noundef !4
  %i.vm = atomicrmw sub ptr %i.vl, i64 1 release, align 8, !noalias !15387
  %i.vn = icmp eq i64 %i.vm, 1
  br i1 %i.vn, label %bb.ik, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit302

bb.ik:                                            ; preds = %bb.ij
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.vk) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit302 unwind label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.vo = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit275

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit302: ; preds = %bb.ij, %bb.ik
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16601.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17602)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18603)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEEB1j_.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEEB1j_.exit: ; preds = %bb.ih, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit302
  %i.vp = getelementptr inbounds nuw i8, ptr %1, i64 3787
  store i8 0, ptr %i.vp, align 1
  %i.vq = getelementptr inbounds nuw i8, ptr %1, i64 3776 ; 2 uses
  %i.vr = load i8, ptr %i.vq, align 16, !range !178, !noundef !4
  %i.vs = trunc nuw i8 %i.vr to i1
  br i1 %i.vs, label %bb.nz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write7configs17WriterStatsConfigEBO_.exit396

.body299:                                         ; preds = %bb.ny, %bb.ig, %bb.pk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit297, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit275
  %.pn119.pn = phi { ptr, i32 } [ %.pn119, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit275 ], [ %.pn114.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit297 ], [ %.pn114.pn, %bb.pk ], [ %i.aim, %bb.ny ], [ %i.vf, %bb.ig ] ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %1, i64 3787
  store i8 0, ptr %i.vt, align 1
  %i.vu = getelementptr inbounds nuw i8, ptr %1, i64 3776
  %i.vv = load i8, ptr %i.vu, align 16, !range !178, !noundef !4
  %i.vw = trunc nuw i8 %i.vv to i1
  br i1 %i.vw, label %bb.pl, label %.body362

bb.im:                                            ; preds = %bb.ip, %bb.io
  %i.vx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9647)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10649)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtNtBL_14try_filter_map12TryFilterMapINtNtNtBN_6stream3map3MapINtNtB2G_3zip3ZipINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB5r_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEINtNtBN_4iter4IterINtNtNtNtB4_4iter7sources6repeat6RepeatTINtNtB3C_4sync3ArcNtCseo6ZV82fEK1_3url3UrlEIB8u_INtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetNtNtB3C_6string6StringEEEEEENCNCNCNvNtNtB5r_10operations6update7execute00s1_0ENCNCBao_s2_00NCBao_s2_0EINtNtB3C_3vec3VecNtNtB5p_6models6ActionEEEB5r_(ptr noundef nonnull align 16 %i.vy) #46
          to label %bb.ic unwind label %bb.do

bb.in:                                            ; preds = %bb.e, %bb.ia
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9647)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10649)
  %i.vy = getelementptr inbounds nuw i8, ptr %1, i64 3792 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.vz = getelementptr inbounds nuw i8, ptr %1, i64 4032 ; 3 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.829.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.539.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  br label %bb.io

bb.io:                                            ; preds = %.noexc305, %bb.in
  invoke void @_RNvXs2_NtCs7cL0Iqqqcdm_12futures_core6streamINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream14try_filter_map12TryFilterMapINtNtNtBN_6stream3map3MapINtNtB29_3zip3ZipINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB5_6Streamp4ItemINtNtB2P_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB4D_6errors15DeltaTableErrorENtNtB2P_6marker4SendEL_EEINtNtBN_4iter4IterINtNtNtNtB2P_4iter7sources6repeat6RepeatTINtNtB3l_4sync3ArcNtCseo6ZV82fEK1_3url3UrlEIB7I_INtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetNtNtB3l_6string6StringEEEEEENCNCNCNvNtNtB4D_10operations6update7execute00s1_0ENCNCB9C_s2_00NCB9C_s2_0ENtB5_9TryStream13try_poll_nextB4D_(ptr noalias noundef nonnull sret([272 x i8]) align 16 captures(address) dereferenceable(272) %i.o, ptr noundef nonnull align 16 %i.vy, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc304 unwind label %bb.im

.noexc304:                                        ; preds = %bb.io
  %i.wa = load i64, ptr %i.o, align 16, !range !14489, !noalias !15388, !noundef !4 ; 2 uses
  switch i64 %i.wa, label %bb.ip [
end_hunk_9
begin_hunk_10_@_RNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations6update7execute00B9_:bb.a
  %i.yx = icmp eq i64 %i.yw, -9223372036854775711
  br i1 %i.yx, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEB17_.exit, label %.invoke

.invoke:                                          ; preds = %bb.ju, %bb.je
  %i.yy = phi ptr [ %i.xm, %bb.je ], [ %i.yv, %bb.ju ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEBK_(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.yy)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEB17_.exit unwind label %bb.jd

bb.jv:                                            ; preds = %bb.mk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit420, %bb.jr, %bb.jh
  %.pn102.pn = phi { ptr, i32 } [ %.pn102, %bb.jr ], [ %i.afj, %bb.mk ], [ %.pn96.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit420 ], [ %i.xx, %bb.jh ] ; 2 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %1, i64 1920 ; 2 uses
  %i.za = load i64, ptr %i.yz, align 16, !range !1449, !alias.scope !15414, !noundef !4
  %i.zb = icmp eq i64 %i.za, -9223372036854775711
  br i1 %i.zb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEB17_.exit315, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEBK_(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.yz)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEB17_.exit315 unwind label %bb.do

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEB17_.exit: ; preds = %.invoke, %bb.jf, %bb.ju
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  %i.zc = getelementptr inbounds nuw i8, ptr %1, i64 3787 ; 2 uses
  store i8 0, ptr %i.zc, align 1
  %i.zd = getelementptr inbounds nuw i8, ptr %1, i64 3448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.zd, i64 24, i1 false)
  %i.ze = getelementptr inbounds nuw i8, ptr %1, i64 2048
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.zf, ptr noundef nonnull align 16 dereferenceable(48) %i.ze, i64 48, i1 false)
  %i.zg = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.zg, ptr noundef nonnull align 8 dereferenceable(72) %i.ah, i64 72, i1 false)
  store i64 -9223372036854775711, ptr %i.ag, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %i.zh = getelementptr inbounds nuw i8, ptr %1, i64 3785
  store i8 0, ptr %i.zh, align 1
  %i.zi = getelementptr inbounds nuw i8, ptr %1, i64 3786
  store i8 0, ptr %i.zi, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  %i.zj = getelementptr inbounds nuw i8, ptr %1, i64 3472 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics6MetricEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.zj)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics6MetricEEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.jx

bb.jx:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEB17_.exit
  %i.zk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics6MetricEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.zj)
          to label %.body316 unwind label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.zl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics6MetricEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEB17_.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics6MetricEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.zj)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics10MetricsSetECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ml

bb.jz:                                            ; preds = %bb.iu
  %.sroa.3657.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.3657.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.6654, i64 64, i1 false)
  %.sroa.2656.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2656.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3653, i64 24, i1 false)
  store i64 %.sroa.0645.1835, ptr %i.ag, align 16, !alias.scope !15417
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEB17_.exit388

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEB17_.exit388: ; preds = %bb.nv, %bb.nw, %bb.jz
  %i.zm = getelementptr inbounds nuw i8, ptr %1, i64 3785
  store i8 0, ptr %i.zm, align 1
  %i.zn = getelementptr inbounds nuw i8, ptr %1, i64 3786
  store i8 0, ptr %i.zn, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  %i.zo = getelementptr inbounds nuw i8, ptr %1, i64 3472 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics6MetricEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.zo)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics6MetricEEECs14kWLkQVSKO_14deltalake_core.exit.i320 unwind label %bb.ka

bb.ka:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEB17_.exit388
  %i.zp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics6MetricEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.zo)
          to label %.body316 unwind label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  %i.zq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics6MetricEEECs14kWLkQVSKO_14deltalake_core.exit.i320: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEB17_.exit388
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics6MetricEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.zo)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics10MetricsSetECs14kWLkQVSKO_14deltalake_core.exit324 unwind label %bb.ml

bb.kc:                                            ; preds = %bb.ph, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEB17_.exit315, %bb.ic
  %.pn107.pn = phi { ptr, i32 } [ %.pn107, %bb.ic ], [ %.pn105, %bb.ph ], [ %.pn105, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEB17_.exit315 ] ; 3 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %1, i64 3785
  store i8 0, ptr %i.zr, align 1
  %i.zs = getelementptr inbounds nuw i8, ptr %1, i64 3786
  %i.zt = load i8, ptr %i.zs, align 2, !range !178, !noundef !4
  %i.zu = trunc nuw i8 %i.zt to i1
  br i1 %i.zu, label %bb.pi, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtCseo6ZV82fEK1_3url3UrlEECs14kWLkQVSKO_14deltalake_core.exit422

bb.kd:                                            ; preds = %bb.ke
  %i.zv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  %.val199 = load ptr, ptr %i.zx, align 16
  %i.zw = getelementptr i8, ptr %1, i64 3800
  %.val200 = load ptr, ptr %i.zw, align 8, !nonnull !4, !align !18, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %.val199, ptr nonnull %.val200) #46
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit420 unwind label %bb.do

bb.ke:                                            ; preds = %bb.f, %bb.jl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %i.zx = getelementptr inbounds nuw i8, ptr %1, i64 3792 ; 4 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ao, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.zx, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.kf unwind label %bb.kd

bb.kf:                                            ; preds = %bb.ke
  %i.zy = load i64, ptr %i.ao, align 8, !range !12625, !noundef !4 ; 3 uses
  %i.zz = icmp eq i64 %i.zy, 21
  br i1 %i.zz, label %bb.kg, label %bb.kh

bb.kg:                                            ; preds = %bb.kf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  store i64 -9223372036854775710, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %common.ret

bb.kh:                                            ; preds = %bb.kf
  %.sroa.3675.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.3675.0.copyload = load ptr, ptr %.sroa.3675.0..sroa_idx, align 8 ; 4 uses
  %.sroa.5676.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.5676.0.copyload = load ptr, ptr %.sroa.5676.0..sroa_idx, align 8 ; 4 uses
  %.sroa.7677.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7677, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7677.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  %.val197 = load ptr, ptr %i.zx, align 16        ; 5 uses
  %i.aaa = getelementptr i8, ptr %1, i64 3800
  %.val198 = load ptr, ptr %i.aaa, align 8, !nonnull !4, !align !18, !noundef !4 ; 5 uses
  %i.aab = load ptr, ptr %.val198, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i325 = icmp eq ptr %i.aab, null
  br i1 %.not.i.i325, label %bb.kj, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val197) ]
  invoke void %i.aab(ptr noundef nonnull %.val197)
          to label %bb.kj unwind label %bb.kl

bb.kj:                                            ; preds = %bb.ki, %bb.kh
  %i.aac = getelementptr inbounds nuw i8, ptr %.val198, i64 8
  %i.aad = load i64, ptr %i.aac, align 8, !range !16, !invariant.load !4 ; 2 uses
  %i.aae = icmp eq i64 %i.aad, 0
  br i1 %i.aae, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit329, label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  %i.aaf = getelementptr inbounds nuw i8, ptr %.val198, i64 16
  %i.aag = load i64, ptr %i.aaf, align 8, !range !3, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val197) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val197, i64 noundef range(i64 1, 0) %i.aad, i64 noundef range(i64 1, 536870913) %i.aag) #40
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit329

bb.kl:                                            ; preds = %bb.ki
  %i.aah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %.val198, i64 8
  %i.aaj = load i64, ptr %i.aai, align 8, !range !16, !invariant.load !4 ; 2 uses
  %i.aak = icmp eq i64 %i.aaj, 0
  br i1 %i.aak, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit420, label %bb.km

bb.km:                                            ; preds = %bb.kl
  %i.aal = getelementptr inbounds nuw i8, ptr %.val198, i64 16
  %i.aam = load i64, ptr %i.aal, align 8, !range !3, !invariant.load !4
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val197, i64 noundef range(i64 1, 0) %i.aaj, i64 noundef range(i64 1, 536870913) %i.aam) #40
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit420

bb.kn:                                            ; preds = %bb.ko
  %i.aan = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit420

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit329: ; preds = %bb.kk, %bb.kj
  %.not.i330 = icmp eq i64 %i.zy, 20
  br i1 %.not.i330, label %bb.kp, label %bb.ko

bb.ko:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit329
  %.sroa.4681.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4681.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7677, i64 16, i1 false)
  store i64 %i.zy, ptr %i.l, align 8, !noalias !15421
  %.sroa.2679.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %.sroa.3675.0.copyload, ptr %.sroa.2679.0..sroa_idx, align 8, !noalias !15421
  %.sroa.3680.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %.sroa.5676.0.copyload, ptr %.sroa.3680.0..sroa_idx, align 8, !noalias !15421
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.ag, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.l)
          to label %bb.ku unwind label %bb.kn

bb.kp:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit329
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3675.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5676.0.copyload) ]
  %i.aao = getelementptr inbounds nuw i8, ptr %1, i64 3784
  store ptr %.sroa.3675.0.copyload, ptr %i.ap, align 8
  %i.aap = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %.sroa.5676.0.copyload, ptr %i.aap, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15711)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17713)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12696)
  %i.aaq = getelementptr inbounds nuw i8, ptr %1, i64 3520 ; 2 uses
  %i.aar = load ptr, ptr %i.aaq, align 16, !nonnull !4, !align !18, !noundef !4
  %i.aas = getelementptr inbounds nuw i8, ptr %1, i64 3168
  %i.aat = load <2 x ptr>, ptr %i.aas, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store i8 0, ptr %i.aao, align 8
  store ptr %.sroa.3675.0.copyload, ptr %i.an, align 16
  %i.aau = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %.sroa.5676.0.copyload, ptr %i.aau, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.aav = getelementptr inbounds nuw i8, ptr %1, i64 3778
  store i8 0, ptr %i.aav, align 2
  %i.aaw = getelementptr inbounds nuw i8, ptr %1, i64 3360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 16 dereferenceable(24) %i.aaw, i64 24, i1 false)
  %i.aax = getelementptr inbounds nuw i8, ptr %1, i64 3184
  %.val178 = load ptr, ptr %i.aax, align 16, !nonnull !4, !noundef !4
  %i.aay = getelementptr i8, ptr %1, i64 3192
  %.val179 = load ptr, ptr %i.aay, align 8, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %.val179, i64 16
  %i.aba = load i64, ptr %i.aaz, align 8, !range !3, !invariant.load !4
  %i.abb = add nsw i64 %i.aba, -1
  %i.abc = and i64 %i.abb, -16
  %i.abd = getelementptr inbounds nuw i8, ptr %.val178, i64 %i.abc
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.abf = getelementptr inbounds nuw i8, ptr %1, i64 2016
  %i.abg = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.abg, ptr noundef nonnull align 16 dereferenceable(16) %i.abf, i64 16, i1 false)
  store i8 1, ptr %i.al, align 1
  %i.abh = getelementptr inbounds nuw i8, ptr %.val179, i64 112
  %i.abi = load ptr, ptr %i.abh, align 8, !invariant.load !4, !nonnull !4
  %i.abj = invoke { ptr, ptr } %i.abi(ptr noundef nonnull %i.abe, ptr noalias noundef nonnull align 1 captures(address) dereferenceable(17) %i.al)
          to label %.thread unwind label %bb.kq   ; 2 uses

bb.kq:                                            ; preds = %bb.kp
  %i.abk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am) #46
          to label %bb.ks unwind label %bb.do

.thread:                                          ; preds = %bb.kp
  %i.abl = extractvalue { ptr, ptr } %i.abj, 0
  %i.abm = extractvalue { ptr, ptr } %i.abj, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.abn = load ptr, ptr %i.aaq, align 16, !nonnull !4, !align !18, !noundef !4
  %i.abo = getelementptr i8, ptr %i.abn, i64 24
  %.val206 = load ptr, ptr %i.abo, align 8, !nonnull !4, !noundef !4
  %i.abp = getelementptr inbounds nuw i8, ptr %.val206, i64 88
  %i.abq = load ptr, ptr %i.abp, align 8, !nonnull !4, !noundef !4
  %i.abr = getelementptr i8, ptr %i.abq, i64 1040
  %.val208 = load i64, ptr %i.abr, align 8, !noundef !4 ; 2 uses
  %.not.i334 = icmp eq i64 %.val208, 0
  %..i335 = select i1 %.not.i334, i64 104857600, i64 %.val208
  %i.abs = getelementptr inbounds nuw i8, ptr %1, i64 3779
  store i8 0, ptr %i.abs, align 1
  %i.abt = getelementptr inbounds nuw i8, ptr %1, i64 3528
  %i.abu = getelementptr inbounds nuw i8, ptr %1, i64 3776
  store i8 0, ptr %i.abu, align 16
  %i.abv = getelementptr inbounds nuw i8, ptr %1, i64 3408
  %.sroa.12696.3008..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12696, i64 2944
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.12696.3008..sroa_idx, ptr noundef nonnull align 16 dereferenceable(40) %i.abv, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.17713, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  %.sroa.9705.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 3808
  %.sroa.11707.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 3824
  %i.abw = load <2 x ptr>, ptr %i.an, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(2984) %.sroa.15711, ptr noundef nonnull align 16 dereferenceable(2984) %.sroa.12696, i64 2984, i1 false), !alias.scope !15424
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12696)
  store i64 0, ptr %i.zx, align 16
  store <2 x ptr> %i.aat, ptr %.sroa.9705.0..sroa_idx, align 16
  store <2 x ptr> %i.abw, ptr %.sroa.11707.0..sroa_idx, align 16
  %.sroa.13709.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 3840
  store ptr %i.abl, ptr %.sroa.13709.0..sroa_idx, align 16
  %.sroa.14710.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 3848
  store ptr %i.abm, ptr %.sroa.14710.0..sroa_idx, align 8
  %.sroa.15711.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 3856
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(2984) %.sroa.15711.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(2984) %.sroa.15711, i64 2984, i1 false)
  %.sroa.16712.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 6840
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.16712.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(248) %i.abt, i64 248, i1 false)
  %.sroa.17713.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 7088
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.17713.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.17713, i64 24, i1 false)
  %.sroa.18714.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 7112
  store ptr %i.aar, ptr %.sroa.18714.0..sroa_idx, align 8
  %.sroa.19715.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 7120
  store i64 %..i335, ptr %.sroa.19715.0..sroa_idx, align 16
  %.sroa.20716.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 7128
  store i8 0, ptr %.sroa.20716.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11722)
  %i.abx = getelementptr inbounds nuw i8, ptr %1, i64 3792
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.760.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.541.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1227.i)
  %i.aby = getelementptr inbounds nuw i8, ptr %1, i64 7128
  br label %bb.ky

bb.kr:                                            ; preds = %bb.mf, %.body349, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit341
  %.pn93 = phi { ptr, i32 } [ %i.aez, %bb.mf ], [ %eh.lpad-body350, %.body349 ], [ %i.abk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit341 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15711)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17713)
  br label %bb.nt

bb.ks:                                            ; preds = %bb.kq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.experimental.noalias.scope.decl(metadata !15428)
  call void @llvm.experimental.noalias.scope.decl(metadata !15431)
  %i.abz = load ptr, ptr %i.an, align 16, !alias.scope !15434, !nonnull !4, !noundef !4
  %i.aca = atomicrmw sub ptr %i.abz, i64 1 release, align 8, !noalias !15434
  %i.acb = icmp eq i64 %i.aca, 1
  br i1 %i.acb, label %bb.kt, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit341

bb.kt:                                            ; preds = %bb.ks
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.an) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit341 unwind label %bb.do

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit341: ; preds = %bb.ks, %bb.kt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12696)
  br label %bb.kr

bb.ku:                                            ; preds = %bb.ko
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.kv

bb.kv:                                            ; preds = %bb.nu, %bb.ku
  %i.acc = getelementptr inbounds nuw i8, ptr %1, i64 3784
  store i8 0, ptr %i.acc, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  %i.acd = getelementptr inbounds nuw i8, ptr %1, i64 1600
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(320) %i.acd)
          to label %bb.nv unwind label %bb.mk

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit420: ; preds = %bb.jk, %bb.kd, %bb.kl, %bb.km, %bb.kn, %bb.pf, %bb.pg, %bb.nt
  %.pn96.pn = phi { ptr, i32 } [ %.pn93.pn, %bb.pf ], [ %.pn93.pn, %bb.nt ], [ %.pn93.pn, %bb.pg ], [ %i.yi, %bb.jk ], [ %i.zv, %bb.kd ], [ %i.aan, %bb.kn ], [ %i.aah, %bb.km ], [ %i.aah, %bb.kl ]
  %i.ace = getelementptr inbounds nuw i8, ptr %1, i64 3784
  store i8 0, ptr %i.ace, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  %i.acf = getelementptr inbounds nuw i8, ptr %1, i64 1600
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(320) %i.acf) #46
          to label %bb.jv unwind label %bb.do

bb.kw:                                            ; preds = %bb.lk, %bb.lj
  %i.acg = landingpad { ptr, i32 }
          cleanup
  br label %.body349

.body349:                                         ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.kw
  %i.ach = phi ptr [ %i.aci, %bb.kw ], [ %i.adv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %eh.lpad-body350 = phi { ptr, i32 } [ %i.acg, %bb.kw ], [ %.pn4.pn.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11722)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution24write_execution_plan_cdc0EBQ_(ptr noundef nonnull align 16 %i.ach) #46
          to label %bb.kr unwind label %bb.do

bb.kx:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15711)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17713)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 7128
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !1165, !noalias !15435
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11722)
  %i.aci = getelementptr inbounds nuw i8, ptr %1, i64 3792 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.760.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.541.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1227.i)
  %i.acj = getelementptr inbounds nuw i8, ptr %1, i64 7128 ; 2 uses
  switch i8 %.pre, label %default.unreachable873 [
    i8 0, label %bb.ky
    i8 1, label %bb.lj
    i8 2, label %bb.lk
    i8 3, label %bb.lc
  ]

bb.ky:                                            ; preds = %.thread, %bb.kx
  %i.ack = phi ptr [ %i.aby, %.thread ], [ %i.acj, %bb.kx ] ; 4 uses
  %i.acl = phi ptr [ %i.abx, %.thread ], [ %i.aci, %bb.kx ] ; 5 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %1, i64 7129 ; 2 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %1, i64 7112
  %i.aco = load ptr, ptr %i.acn, align 8, !noalias !15435, !align !18, !noundef !4
  %i.acp = getelementptr inbounds nuw i8, ptr %1, i64 3808
  %i.acq = load <2 x ptr>, ptr %i.acp, align 16, !noalias !15435
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !15435
  %i.acr = getelementptr inbounds nuw i8, ptr %1, i64 3824
  %i.acs = load ptr, ptr %i.acr, align 16, !noalias !15435, !nonnull !4, !noundef !4 ; 2 uses
  %i.act = getelementptr inbounds nuw i8, ptr %1, i64 3832
  %i.acu = load ptr, ptr %i.act, align 8, !noalias !15435, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  store ptr %i.acs, ptr %i.k, align 8, !noalias !15435
  %i.acv = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.acu, ptr %i.acv, align 8, !noalias !15435
end_hunk_10
begin_hunk_11_@_RNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files10find_files00B9_:bb.a
  store i8 0, ptr %i.he, align 1, !noalias !16131
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 992 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(336) %i.hq, ptr noundef nonnull align 16 dereferenceable(336) %i.hh, i64 336, i1 false), !noalias !16131
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2032 ; 2 uses
  store i8 0, ptr %.sroa.8.0..sroa_idx.i.i, align 16, !noalias !16131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !16131
  br label %bb.cx

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs14kWLkQVSKO_14deltalake_core.exit19.i.i: ; preds = %bb.ef, %bb.ee, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.dt, %.body.i.i
  %i.hr = phi ptr [ %i.io, %bb.dt ], [ %i.hb, %.body.i.i ], [ %i.ju, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.ju, %bb.ef ], [ %i.ju, %bb.ee ]
  %i.hs = phi ptr [ %i.ip, %bb.dt ], [ %i.hc, %.body.i.i ], [ %i.jv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.jv, %bb.ef ], [ %i.jv, %bb.ee ]
  %i.ht = phi ptr [ %i.iq, %bb.dt ], [ %i.hd, %.body.i.i ], [ %i.jw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.jw, %bb.ef ], [ %i.jw, %bb.ee ]
  %.pn11.i.i = phi { ptr, i32 } [ %i.js, %bb.dt ], [ %.pn.i.i, %.body.i.i ], [ %.pn8.pn.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %.pn8.pn.i.i, %bb.ef ], [ %.pn8.pn.i.i, %bb.ee ]
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 961
  store i8 0, ptr %i.hu, align 1, !noalias !16131
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 963 ; 2 uses
  %i.hw = load i8, ptr %i.hv, align 1, !range !178, !noalias !16131, !noundef !4
  %i.hx = trunc nuw i8 %i.hw to i1
  br i1 %i.hx, label %bb.eh, label %bb.eg

bb.ct:                                            ; preds = %bb.cl
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @405) #50
          to label %.noexc57.i unwind label %bb.ck, !noalias !16087

.noexc57.i:                                       ; preds = %bb.ct
  unreachable

bb.cu:                                            ; preds = %bb.cl
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @405) #50
          to label %.noexc58.i unwind label %bb.ck, !noalias !16087

.noexc58.i:                                       ; preds = %bb.cu
  unreachable

bb.cv:                                            ; preds = %bb.da, %bb.cz
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %.body14.i.i

.body14.i.i:                                      ; preds = %.body.i.i.i, %bb.cv
  %i.hz = phi ptr [ %i.do, %bb.cv ], [ %i.io, %.body.i.i.i ]
  %i.ia = phi ptr [ %i.dn, %bb.cv ], [ %i.ip, %.body.i.i.i ]
  %i.ib = phi ptr [ %.phi.trans.insert.i, %bb.cv ], [ %i.iq, %.body.i.i.i ]
  %i.ic = phi ptr [ %i.id, %bb.cv ], [ %i.is, %.body.i.i.i ]
  %eh.lpad-body15.i.i = phi { ptr, i32 } [ %i.hy, %bb.cv ], [ %.pn4.i.i.i, %.body.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !16131
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtBO_9DataFrame20create_physical_plan0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 16 %i.ic) #46
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.du, !noalias !16135

bb.cw:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !16131
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2032 ; 3 uses
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 16, !range !1165, !noalias !16143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !16131
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 992 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16147)
  switch i8 %.pre.i.i, label %default.unreachable236 [
    i8 0, label %bb.cx
    i8 1, label %bb.cz
    i8 2, label %bb.da
    i8 3, label %bb.dc
  ]

bb.cx:                                            ; preds = %bb.cw, %.thread.i.i
  %i.ie = phi ptr [ %i.hb, %.thread.i.i ], [ %i.do, %bb.cw ]
  %i.if = phi ptr [ %i.hc, %.thread.i.i ], [ %i.dn, %bb.cw ]
  %i.ig = phi ptr [ %i.hd, %.thread.i.i ], [ %.phi.trans.insert.i, %bb.cw ]
  %i.ih = phi ptr [ %.sroa.8.0..sroa_idx.i.i, %.thread.i.i ], [ %.phi.trans.insert.i.i, %bb.cw ]
  %i.ii = phi ptr [ %i.hq, %.thread.i.i ], [ %i.id, %bb.cw ] ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 1328 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(336) %i.ij, ptr noundef nonnull align 16 dereferenceable(336) %i.ii, i64 336, i1 false), !noalias !16143
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 1648
  %i.il = load ptr, ptr %i.ik, align 16, !noalias !16143, !nonnull !4, !align !18, !noundef !4
  %.sroa.77.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2000
  store ptr %i.il, ptr %.sroa.77.0..sroa_idx.i.i.i, align 16, !noalias !16143
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2008
  store ptr %i.ij, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !noalias !16143
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2016
  store i8 0, ptr %.sroa.9.0..sroa_idx.i.i.i, align 16, !noalias !16143
  br label %bb.dc

bb.cy:                                            ; preds = %bb.df, %bb.db
  %.pn2.i.i.i = phi { ptr, i32 } [ %i.iw, %bb.df ], [ %i.in, %bb.db ]
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 1328
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(336) %i.im) #46
          to label %.body.i.i.i unwind label %bb.dk, !noalias !16148

bb.cz:                                            ; preds = %bb.cw
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @404) #50
          to label %.noexc.i56.i unwind label %bb.cv, !noalias !16135

.noexc.i56.i:                                     ; preds = %bb.cz
  unreachable

bb.da:                                            ; preds = %bb.cw
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @404) #50
          to label %.noexc13.i.i unwind label %bb.cv, !noalias !16135

.noexc13.i.i:                                     ; preds = %bb.da
  unreachable

bb.db:                                            ; preds = %bb.dc
  %i.in = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState20create_physical_plan0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 16 %i.it) #46
          to label %bb.cy unwind label %bb.dk, !noalias !16148

bb.dc:                                            ; preds = %bb.cx, %bb.cw
  %i.io = phi ptr [ %i.ie, %bb.cx ], [ %i.do, %bb.cw ] ; 7 uses
  %i.ip = phi ptr [ %i.if, %bb.cx ], [ %i.dn, %bb.cw ] ; 6 uses
  %i.iq = phi ptr [ %i.ig, %bb.cx ], [ %.phi.trans.insert.i, %bb.cw ] ; 7 uses
  %i.ir = phi ptr [ %i.ih, %bb.cx ], [ %.phi.trans.insert.i.i, %bb.cw ] ; 3 uses
  %i.is = phi ptr [ %i.ii, %bb.cx ], [ %i.id, %bb.cw ] ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 1664 ; 3 uses
  invoke fastcc void @_RNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtB6_12SessionState20create_physical_plan0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.x, ptr noundef nonnull align 16 %i.it, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.dd unwind label %bb.db, !noalias !16135

bb.dd:                                            ; preds = %bb.dc
  %i.iu = load i64, ptr %i.x, align 8, !range !12625, !alias.scope !16147, !noalias !16149, !noundef !4 ; 4 uses
  %i.iv = icmp eq i64 %i.iu, 21
  br i1 %i.iv, label %bb.dl, label %bb.de

bb.de:                                            ; preds = %bb.dd
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState20create_physical_plan0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 16 %i.it)
          to label %bb.dg unwind label %bb.df, !noalias !16148

bb.df:                                            ; preds = %bb.de
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.dg:                                            ; preds = %bb.de
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 1328 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16150)
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 1648
  %.val.i.i.i.i = load ptr, ptr %i.iy, align 16, !alias.scope !16150, !noalias !16143, !nonnull !4, !noundef !4 ; 3 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(1680) %.val.i.i.i.i)
          to label %bb.dh unwind label %.body.i.i.i.i, !noalias !16153

.body.i.i.i.i:                                    ; preds = %bb.dg
  %i.iz = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef 1680, i64 noundef 8) #40, !noalias !16153
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(336) %i.ix) #46
          to label %.body.i.i.i unwind label %bb.di, !noalias !16148

bb.dh:                                            ; preds = %bb.dg
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef 1680, i64 noundef 8) #40, !noalias !16153
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(336) %i.ix)
          to label %bb.dm unwind label %bb.dj, !noalias !16148

bb.di:                                            ; preds = %.body.i.i.i.i
  %i.ja = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !16148
  unreachable

.body.i.i.i:                                      ; preds = %bb.dj, %.body.i.i.i.i, %bb.cy
  %.pn4.i.i.i = phi { ptr, i32 } [ %.pn2.i.i.i, %bb.cy ], [ %i.jb, %bb.dj ], [ %i.iz, %.body.i.i.i.i ]
  store i8 2, ptr %i.ir, align 16, !noalias !16143
  br label %.body14.i.i

bb.dj:                                            ; preds = %bb.dh
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.dk:                                            ; preds = %bb.db, %bb.cy
  %i.jc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !16148
  unreachable

bb.dl:                                            ; preds = %bb.dd
  store i8 3, ptr %i.ir, align 16, !noalias !16143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !16131
  br label %.thread

bb.dm:                                            ; preds = %bb.dh
  store i8 1, ptr %i.ir, align 16, !noalias !16143
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.3.0.copyload.i.i = load ptr, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !16131 ; 6 uses
  %.sroa.529.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.529.0.copyload.i.i = load ptr, ptr %.sroa.529.0..sroa_idx.i.i, align 8, !noalias !16131 ; 5 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.jd = load <2 x i64>, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !16131 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !16131
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtBO_9DataFrame20create_physical_plan0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 16 %i.is)
          to label %bb.do unwind label %bb.dn, !noalias !16135

bb.dn:                                            ; preds = %bb.dm
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.do:                                            ; preds = %bb.dm
  %.not.i.i.i = icmp eq i64 %i.iu, 20
  br i1 %.not.i.i.i, label %bb.dp, label %bb.dr

bb.dp:                                            ; preds = %bb.do
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.529.0.copyload.i.i) ]
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 962
  store ptr %.sroa.3.0.copyload.i.i, ptr %i.y, align 8, !noalias !16131
  %i.jg = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %.sroa.529.0.copyload.i.i, ptr %i.jg, align 8, !noalias !16131
  store i8 0, ptr %i.jf, align 2, !noalias !16131
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 961
  store i8 0, ptr %i.jh, align 1, !noalias !16131
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 976
  %i.jj = load ptr, ptr %i.ji, align 16, !noalias !16131, !nonnull !4, !noundef !4
  %.sroa.740.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1040
  store ptr %.sroa.3.0.copyload.i.i, ptr %.sroa.740.0..sroa_idx.i.i, align 16, !noalias !16131
  %.sroa.841.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1048
  store ptr %.sroa.529.0.copyload.i.i, ptr %.sroa.841.0..sroa_idx.i.i, align 8, !noalias !16131
  %.sroa.942.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1056
  store ptr %i.jj, ptr %.sroa.942.0..sroa_idx.i.i, align 16, !noalias !16131
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1065
  store i8 0, ptr %.sroa.11.0..sroa_idx.i.i, align 1, !noalias !16131
  br label %bb.dw

bb.dq:                                            ; preds = %bb.ea, %bb.dv
  %.pn6.i.i = phi { ptr, i32 } [ %i.kk, %bb.ea ], [ %i.kb, %bb.dv ] ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 962
  %i.jl = load i8, ptr %i.jk, align 2, !range !178, !noalias !16131, !noundef !4
  %i.jm = trunc nuw i8 %i.jl to i1
  br i1 %i.jm, label %bb.ec, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.dr:                                            ; preds = %bb.do
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 962
  store i8 0, ptr %i.jn, align 2, !noalias !16131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !16131
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 976 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16154)
  call void @llvm.experimental.noalias.scope.decl(metadata !16157)
  %i.jp = load ptr, ptr %i.jo, align 16, !alias.scope !16160, !noalias !16131, !nonnull !4, !noundef !4
  %i.jq = atomicrmw sub ptr %i.jp, i64 1 release, align 8, !noalias !16161
  %i.jr = icmp eq i64 %i.jq, 1
  br i1 %i.jr, label %bb.ds, label %bb.ei

bb.ds:                                            ; preds = %bb.dr
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.jo) #45
          to label %bb.ei unwind label %bb.dt, !noalias !16135

bb.dt:                                            ; preds = %bb.ds
  %i.js = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs14kWLkQVSKO_14deltalake_core.exit19.i.i

bb.du:                                            ; preds = %bb.eh, %bb.ef, %bb.ed, %bb.dv, %.body14.i.i
  %i.jt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !16135
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.ed, %bb.ec, %bb.dq, %bb.dn, %.body14.i.i
  %i.ju = phi ptr [ %i.kc, %bb.ec ], [ %i.kc, %bb.dq ], [ %i.kc, %bb.ed ], [ %i.io, %bb.dn ], [ %i.hz, %.body14.i.i ] ; 3 uses
  %i.jv = phi ptr [ %i.kd, %bb.ec ], [ %i.kd, %bb.dq ], [ %i.kd, %bb.ed ], [ %i.ip, %bb.dn ], [ %i.ia, %.body14.i.i ] ; 3 uses
  %i.jw = phi ptr [ %i.ke, %bb.ec ], [ %i.ke, %bb.dq ], [ %i.ke, %bb.ed ], [ %i.iq, %bb.dn ], [ %i.ib, %.body14.i.i ] ; 3 uses
  %.pn8.pn.i.i = phi { ptr, i32 } [ %.pn6.i.i, %bb.ec ], [ %.pn6.i.i, %bb.dq ], [ %.pn6.i.i, %bb.ed ], [ %i.je, %bb.dn ], [ %eh.lpad-body15.i.i, %.body14.i.i ] ; 3 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 962
  store i8 0, ptr %i.jx, align 2, !noalias !16131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !16131
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 961
  %i.jz = load i8, ptr %i.jy, align 1, !range !178, !noalias !16131, !noundef !4
  %i.ka = trunc nuw i8 %i.jz to i1
  br i1 %i.ka, label %bb.ee, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs14kWLkQVSKO_14deltalake_core.exit19.i.i

bb.dv:                                            ; preds = %bb.dw
  %i.kb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !16131
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan7collect0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.kg) #46
          to label %bb.dq unwind label %bb.du, !noalias !16135

bb.dw:                                            ; preds = %bb.dp, %bb.cn
  %i.kc = phi ptr [ %i.do, %bb.cn ], [ %i.io, %bb.dp ] ; 5 uses
  %i.kd = phi ptr [ %i.dn, %bb.cn ], [ %i.ip, %bb.dp ] ; 4 uses
  %i.ke = phi ptr [ %.phi.trans.insert.i, %bb.cn ], [ %i.iq, %bb.dp ] ; 5 uses
  %i.kf = phi ptr [ undef, %bb.cn ], [ %.sroa.3.0.copyload.i.i, %bb.dp ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !16131
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 976 ; 3 uses
  invoke fastcc void @_RNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan7collect0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.w, ptr noundef nonnull align 8 %i.kg, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.dx unwind label %bb.dv, !noalias !16135

bb.dx:                                            ; preds = %bb.dw
  %i.kh = load i64, ptr %i.w, align 8, !range !12625, !noalias !16131, !noundef !4 ; 2 uses
  %i.ki = icmp eq i64 %i.kh, 21
  br i1 %i.ki, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !16131
  br label %.thread

bb.dz:                                            ; preds = %bb.dx
  %.sroa.347.0..sroa_idx48.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.347.0.copyload49.i.i = load ptr, ptr %.sroa.347.0..sroa_idx48.i.i, align 8, !noalias !16131
  %.sroa.450.0..sroa_idx51.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.450.0.copyload52.i.i = load ptr, ptr %.sroa.450.0..sroa_idx51.i.i, align 8, !noalias !16131
  %.sroa.553.0..sroa_idx54.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.kj = load <2 x i64>, ptr %.sroa.553.0..sroa_idx54.i.i, align 8, !noalias !16131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !16131
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan7collect0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.kg)
          to label %bb.eb unwind label %bb.ea, !noalias !16135

bb.ea:                                            ; preds = %bb.dz
  %i.kk = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.eb:                                            ; preds = %bb.dz
  %i.kl = getelementptr inbounds nuw i8, ptr %1, i64 962
  store i8 0, ptr %i.kl, align 2, !noalias !16131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !16131
  br label %bb.ei

bb.ec:                                            ; preds = %bb.dq
  %i.km = atomicrmw sub ptr %i.kf, i64 1 release, align 8, !noalias !16162
  %i.kn = icmp eq i64 %i.km, 1
  br i1 %i.kn, label %bb.ed, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.ed:                                            ; preds = %bb.ec
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.y) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.du, !noalias !16135

bb.ee:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 976 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16167)
  call void @llvm.experimental.noalias.scope.decl(metadata !16170)
  %i.kp = load ptr, ptr %i.ko, align 16, !alias.scope !16173, !noalias !16131, !nonnull !4, !noundef !4
  %i.kq = atomicrmw sub ptr %i.kp, i64 1 release, align 8, !noalias !16174
  %i.kr = icmp eq i64 %i.kq, 1
  br i1 %i.kr, label %bb.ef, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs14kWLkQVSKO_14deltalake_core.exit19.i.i

bb.ef:                                            ; preds = %bb.ee
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ko) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs14kWLkQVSKO_14deltalake_core.exit19.i.i unwind label %bb.du, !noalias !16135

bb.eg:                                            ; preds = %bb.eh, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs14kWLkQVSKO_14deltalake_core.exit19.i.i
  store i8 0, ptr %i.hv, align 1, !noalias !16131
  store i8 2, ptr %i.ht, align 16, !noalias !16131
  br label %.body59.i

bb.eh:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs14kWLkQVSKO_14deltalake_core.exit19.i.i
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 624
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(336) %i.ks) #46
          to label %bb.eg unwind label %bb.du, !noalias !16135

.thread:                                          ; preds = %bb.dl, %bb.dy
  %i.kt = phi ptr [ %i.io, %bb.dl ], [ %i.kc, %bb.dy ]
  %i.ku = phi ptr [ %i.iq, %bb.dl ], [ %i.ke, %bb.dy ]
  %.sink.i.ph.i = phi i8 [ 3, %bb.dl ], [ 4, %bb.dy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !16131
  store i8 %.sink.i.ph.i, ptr %i.ku, align 16, !noalias !16131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !16074
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !16074
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !16074
  store i8 3, ptr %i.kt, align 1, !noalias !16074
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.872.i)
  br label %bb.ez

bb.ei:                                            ; preds = %bb.eb, %bb.ds, %bb.dr
  %i.kv = phi ptr [ %i.kc, %bb.eb ], [ %i.io, %bb.ds ], [ %i.io, %bb.dr ] ; 6 uses
  %i.kw = phi ptr [ %i.kd, %bb.eb ], [ %i.ip, %bb.ds ], [ %i.ip, %bb.dr ] ; 7 uses
  %i.kx = phi ptr [ %i.ke, %bb.eb ], [ %i.iq, %bb.ds ], [ %i.iq, %bb.dr ]
  %.sroa.045.0.i.i = phi i64 [ %i.kh, %bb.eb ], [ %i.iu, %bb.ds ], [ %i.iu, %bb.dr ] ; 2 uses
  %.sroa.347.0.i.i = phi ptr [ %.sroa.347.0.copyload49.i.i, %bb.eb ], [ %.sroa.3.0.copyload.i.i, %bb.ds ], [ %.sroa.3.0.copyload.i.i, %bb.dr ] ; 2 uses
  %.sroa.450.0.i.i = phi ptr [ %.sroa.450.0.copyload52.i.i, %bb.eb ], [ %.sroa.529.0.copyload.i.i, %bb.ds ], [ %.sroa.529.0.copyload.i.i, %bb.dr ] ; 2 uses
  %i.ky = phi <2 x i64> [ %i.kj, %bb.eb ], [ %i.jd, %bb.ds ], [ %i.jd, %bb.dr ] ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 961
  store i8 0, ptr %i.kz, align 1, !noalias !16131
  %i.la = getelementptr inbounds nuw i8, ptr %1, i64 963
  store i8 0, ptr %i.la, align 1, !noalias !16131
  store i8 1, ptr %i.kx, align 16, !noalias !16131
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtBO_9DataFrame7collect0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 16 %i.kw)
          to label %bb.ek unwind label %bb.ej, !noalias !16087

bb.ej:                                            ; preds = %_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtNtB7_3ops9try_trait3Try6branchCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.ei
  %i.lb = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

bb.ek:                                            ; preds = %bb.ei
  %.not.i.i = icmp eq i64 %.sroa.045.0.i.i, 20
  br i1 %.not.i.i, label %bb.el, label %_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtNtB7_3ops9try_trait3Try6branchCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtNtB7_3ops9try_trait3Try6branchCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.ek
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !16074
  store i64 %.sroa.045.0.i.i, ptr %i.u, align 8, !noalias !16175
  %.sroa.2128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %.sroa.347.0.i.i, ptr %.sroa.2128.0..sroa_idx.i, align 8, !noalias !16175
  %.sroa.3129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %.sroa.450.0.i.i, ptr %.sroa.3129.0..sroa_idx.i, align 8, !noalias !16175
  %.sroa.4130.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store <2 x i64> %i.ky, ptr %.sroa.4130.0..sroa_idx.i, align 8, !noalias !16175
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.ae, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.u)
          to label %bb.er unwind label %bb.ej, !noalias !16087
end_hunk_11
begin_hunk_12_@_RNCNvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtB7_13CreateBuilder22into_table_and_actions0Bb_:bb.a
  %.sroa.8353 = alloca [104 x i8], align 8        ; 7 uses
  %i.ai = alloca [144 x i8], align 8              ; 14 uses
  %i.aj = alloca [56 x i8], align 8               ; 8 uses
  %.sroa.7343 = alloca [16 x i8], align 8         ; 6 uses
  %.sroa.8346 = alloca [16 x i8], align 8         ; 6 uses
  %i.ak = alloca [56 x i8], align 8               ; 17 uses
  %i.al = alloca [104 x i8], align 8              ; 12 uses
  %i.am = alloca [56 x i8], align 8               ; 10 uses
  %i.an = alloca [40 x i8], align 8               ; 5 uses
  %i.ao = alloca [40 x i8], align 8               ; 5 uses
  %i.ap = alloca [48 x i8], align 8               ; 10 uses
  %.sroa.3338 = alloca [88 x i8], align 8         ; 2 uses
  %.sroa.8335 = alloca [88 x i8], align 8         ; 7 uses
  %i.aq = alloca [48 x i8], align 8               ; 6 uses
  %i.ar = alloca [48 x i8], align 8               ; 9 uses
  %.sroa.5309 = alloca [224 x i8], align 16       ; 4 uses
  %i.as = alloca [88 x i8], align 8               ; 5 uses
  %i.at = alloca [336 x i8], align 16             ; 9 uses
  %.sroa.8302 = alloca [104 x i8], align 8        ; 7 uses
  %i.au = alloca [336 x i8], align 8              ; 10 uses
  %i.av = alloca [336 x i8], align 8              ; 6 uses
  %i.aw = alloca [128 x i8], align 16             ; 15 uses
  %.sroa.6298.sroa.0 = alloca [72 x i8], align 8  ; 7 uses
  %.sroa.6298.sroa.9 = alloca [24 x i8], align 8  ; 8 uses
  %i.ax = alloca [88 x i8], align 8               ; 9 uses
  %i.ay = alloca [24 x i8], align 8               ; 4 uses
  %i.az = alloca [24 x i8], align 8               ; 8 uses
  %i.ba = alloca [96 x i8], align 16              ; 7 uses
  %.sroa.8 = alloca [88 x i8], align 8            ; 7 uses
  %i.bb = alloca [88 x i8], align 8               ; 8 uses
  %i.bc = alloca [72 x i8], align 8               ; 5 uses
  %i.bd = alloca [16 x i8], align 8               ; 6 uses
  %i.be = alloca [88 x i8], align 8               ; 7 uses
  %i.bf = alloca [16 x i8], align 8               ; 6 uses
  %.sroa.0273 = alloca [160 x i8], align 8        ; 10 uses
  %.sroa.11 = alloca [24 x i8], align 8           ; 6 uses
  %i.bg = alloca [96 x i8], align 16              ; 5 uses
  %i.bh = alloca [96 x i8], align 16              ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 1040 ; 3 uses
  %i.bj = load i8, ptr %i.bi, align 8, !range !1165, !noundef !4
  switch i8 %i.bj, label %default.unreachable554 [
    i8 0, label %bb.b
    i8 1, label %bb.bj
    i8 2, label %bb.bk
    i8 3, label %bb.bm
  ]

default.unreachable554:                           ; preds = %bb.bm, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 1047
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 1046
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 1045 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 1041
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 1048
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 1046
  store i16 0, ptr %i.bp, align 2
  store i8 1, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.bn, i8 1, i64 5, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %i.bq, ptr noundef nonnull align 8 dereferenceable(368) %1, i64 368, i1 false)
  %i.br = getelementptr i8, ptr %1, i64 400
  %.val145 = load ptr, ptr %i.br, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bs = getelementptr i8, ptr %1, i64 408
  %.val146 = load i64, ptr %i.bs, align 8, !noundef !4 ; 2 uses
  %.idx = mul nuw nsw i64 %.val146, 272
  %i.bt = getelementptr inbounds nuw i8, ptr %.val145, i64 %.idx
  %.not.not.not.i.not557 = icmp eq i64 %.val146, 0
  br i1 %.not.not.not.i.not557, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bv, i64 272 ; 2 uses
  %.not.not.not.i.not = icmp eq ptr %i.bu, %i.bt
  br i1 %.not.not.not.i.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.bv = phi ptr [ %i.bu, %bb.c ], [ %.val145, %bb.b ] ; 2 uses
  %.val.i = load i64, ptr %i.bv, align 8, !range !1310, !noalias !17506, !noundef !4 ; 2 uses
  %i.bw = icmp ne i64 %.val.i, 4
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = icmp eq i64 %.val.i, 2
  br i1 %i.bx, label %bb.d, label %bb.c

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  invoke void @_RNvXNtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtB2_11CreateErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.bh, i8 noundef 2)
          to label %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtNtCs14kWLkQVSKO_14deltalake_core10operations6create11CreateErrorINtB5_4IntoNtNtBE_6errors15DeltaTableErrorE4intoBE_.exit unwind label %bb.bi

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %i.by = getelementptr i8, ptr %1, i64 384
  %.val149 = load i64, ptr %i.by, align 8, !noundef !4 ; 2 uses
  %i.bz = icmp ult i64 %.val149, 96076792050570582
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = icmp eq i64 %.val149, 0
  br i1 %i.ca, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0273)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 696 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !noundef !4 ; 7 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 704 ; 2 uses
  %.not = icmp eq ptr %i.cc, null
  br i1 %.not, label %bb.g, label %bb.i

bb.f:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  invoke void @_RNvXNtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtB2_11CreateErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.bg, i8 noundef 1)
          to label %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtNtCs14kWLkQVSKO_14deltalake_core10operations6create11CreateErrorINtB5_4IntoNtNtBE_6errors15DeltaTableErrorE4intoBE_.exit152 unwind label %bb.bh

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !range !17, !alias.scope !17509, !noalias !17512, !noundef !4
  %.not.i = icmp eq i64 %i.cf, -9223372036854775808
  br i1 %.not.i, label %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ce)
          to label %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.v

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  store i8 0, ptr %i.bm, align 1
  %i.cg = load ptr, ptr %i.cd, align 8, !nonnull !4, !align !18, !noundef !4 ; 5 uses
  store ptr %i.cc, ptr %i.bf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.cg, ptr %i.ch, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !range !3, !invariant.load !4
  %i.ck = add nsw i64 %i.cj, -1
  %i.cl = and i64 %i.ck, -16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %i.cg, i64 144
  %i.cp = load ptr, ptr %i.co, align 8, !invariant.load !4, !nonnull !4
  %i.cq = invoke noundef nonnull align 8 ptr %i.cp(ptr noundef nonnull %i.cn)
          to label %bb.l unwind label %bb.k

bb.j:                                             ; preds = %.noexc153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit155

bb.k:                                             ; preds = %bb.l, %bb.i
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  %i.cs = atomicrmw sub ptr %i.cc, i64 1 release, align 8, !noalias !17514
  %i.ct = icmp eq i64 %i.cs, 1
  br i1 %i.ct, label %bb.t, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit155

bb.l:                                             ; preds = %bb.i
  invoke void @_RNvNtCs14kWLkQVSKO_14deltalake_core5table19normalize_table_url(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.be, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.cq)
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  store ptr %i.cc, ptr %i.bd, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.cg, ptr %i.cu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  invoke void @_RNvXNtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB2_16DeltaTableConfigNtNtCsbvkFyIu7lgC_4core7default7Default7default(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.bc)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  %.sroa.0273.88..sroa_idx275 = getelementptr inbounds nuw i8, ptr %.sroa.0273, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0273.88..sroa_idx275, ptr noundef nonnull align 8 dereferenceable(72) %i.bc, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0273, ptr noundef nonnull align 8 dereferenceable(88) %i.be, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  br label %bb.o

bb.o:                                             ; preds = %bb.ao, %bb.n
  %.sroa.13.0 = phi ptr [ %.sroa.6298.sroa.11.0.copyload, %bb.ao ], [ %i.cg, %bb.n ] ; 3 uses
  %.sroa.12.0 = phi ptr [ %.sroa.6298.sroa.10.0.copyload, %bb.ao ], [ %i.cc, %bb.n ] ; 4 uses
  %.sroa.10.0 = phi i64 [ %.sroa.6298.sroa.8.0.copyload, %bb.ao ], [ -9223372036854775808, %bb.n ]
  store i8 1, ptr %i.bk, align 1
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 736
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.cv, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0273, i64 88, i1 false)
  store i8 1, ptr %i.bl, align 2
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 824
  %.sroa.0273.88..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0273, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cw, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0273.88..sroa_idx, i64 72, i1 false)
  %.sroa.10.88..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 896
  store i64 %.sroa.10.0, ptr %.sroa.10.88..sroa_idx, align 8
  %.sroa.11.88..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 904
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.88..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11, i64 24, i1 false)
  %.sroa.12.88..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 928
  store ptr %.sroa.12.0, ptr %.sroa.12.88..sroa_idx, align 8
  %.sroa.13.88..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 936
  store ptr %.sroa.13.0, ptr %.sroa.13.88..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0273)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.0) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.0) ]
  %i.cx = atomicrmw add ptr %.sroa.12.0, i64 1 monotonic, align 8
  %i.cy = icmp slt i64 %i.cx, 0
  br i1 %i.cy, label %bb.p, label %bb.ap

bb.p:                                             ; preds = %bb.o
  call void @llvm.trap()
  unreachable

.noexc153:                                        ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.be) #46
          to label %bb.j unwind label %bb.s

bb.q:                                             ; preds = %bb.m
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  %i.da = atomicrmw sub ptr %i.cc, i64 1 release, align 8, !noalias !17519
  %i.db = icmp eq i64 %i.da, 1
  br i1 %i.db, label %bb.r, label %.noexc153

bb.r:                                             ; preds = %bb.q
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bd) #45
          to label %.noexc153 unwind label %bb.s

bb.s:                                             ; preds = %bb.jy, %bb.jv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit266, %bb.jp, %bb.jc, %bb.is, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit260, %bb.ib, %bb.gv, %bb.fv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit, %bb.fn, %bb.fj, %bb.t, %bb.r, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit264, %bb.js, %bb.jq, %bb.jn, %bb.jl, %bb.jh, %bb.jg, %bb.je, %bb.jd, %bb.iz, %bb.iy, %bb.ix, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit249, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit240, %.body222, %bb.gt, %bb.dr, %.thread476, %bb.gg, %bb.ge, %bb.gc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit, %bb.fe, %bb.fb, %bb.ez, %bb.cw, %.body, %bb.bb, %bb.av, %bb.as, %.noexc153
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit155: ; preds = %bb.k, %bb.t, %bb.j
  %.pn41425 = phi { ptr, i32 } [ %i.cz, %bb.j ], [ %i.cr, %bb.t ], [ %i.cr, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  br label %bb.u

bb.t:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bf) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit155 unwind label %bb.s

bb.u:                                             ; preds = %bb.ba, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit155
  %.pn41.pn = phi { ptr, i32 } [ %.pn41425, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit155 ], [ %.pn38.pn, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0273)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  br label %bb.bg

bb.v:                                             ; preds = %bb.h
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br label %bb.bc

_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.h
  %.pr = load i64, ptr %i.az, align 8, !alias.scope !17524, !noalias !17527 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17527)
  %.not.i156 = icmp eq i64 %.pr, -9223372036854775808
  br i1 %.not.i156, label %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.w

_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.g, %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  %i.de = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  invoke void @_RNvXNtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtB2_11CreateErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.de, i8 noundef range(i8 0, 5) 0)
          to label %bb.be unwind label %bb.x

bb.w:                                             ; preds = %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.7294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.7294.0.copyload = load i8, ptr %.sroa.7294.0..sroa_idx, align 8, !alias.scope !17529
  %.sroa.10295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 9
  %.sroa.10291.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.10291.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.10295.0..sroa_idx, i64 15, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  store i64 %.pr, ptr %i.ay, align 8
  %.sroa.8288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i8 %.sroa.7294.0.copyload, ptr %.sroa.8288.0..sroa_idx, align 8
  invoke void @_RINvNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16ensure_table_uriNtNtCs6Po7BT7Nknu_5alloc6string6StringEB6_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.ba, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ay)
          to label %bb.y unwind label %bb.x

bb.x:                                             ; preds = %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.w
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.y:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !17530)
  %i.dg = load i64, ptr %i.ba, align 16, !range !1449, !alias.scope !17533, !noalias !17530, !noundef !4 ; 2 uses
  %.not.i158 = icmp eq i64 %i.dg, -9223372036854775711
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(88) %i.dh, i64 88, i1 false), !alias.scope !17535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br i1 %.not.i158, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.8, i64 88, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !17536)
  %i.di = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.dg, ptr %i.di, align 16, !alias.scope !17539
  store i64 1, ptr %i.j, align 16, !alias.scope !17541, !noalias !17536
  br label %bb.bd

bb.aa:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bb, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.8, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  invoke fastcc void @_RNvXsi_Cseo6ZV82fEK1_3urlNtB5_3UrlNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(88) %i.ax, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.bb)
          to label %bb.ab unwind label %bb.bb

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6298.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6298.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8302)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.as, ptr noundef nonnull align 8 dereferenceable(88) %i.bb, i64 88, i1 false)
  invoke void @_RNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB5_17DeltaTableBuilder8from_url(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(none) dereferenceable(336) %i.at, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.as)
          to label %bb.ad unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %bb.as

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.experimental.noalias.scope.decl(metadata !17542)
  %i.dk = load i64, ptr %i.at, align 16, !range !6330, !alias.scope !17545, !noalias !17542, !noundef !4 ; 2 uses
  %i.dl = icmp eq i64 %i.dk, 4
  br i1 %i.dl, label %bb.aw, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.sroa.8302.0..sroa_idx303 = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.8302, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.8302.0..sroa_idx303, i64 104, i1 false), !alias.scope !17547
  %.sroa.10305.0..sroa_idx306 = getelementptr inbounds nuw i8, ptr %i.at, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5309)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(224) %.sroa.5309, ptr noundef nonnull align 16 dereferenceable(224) %.sroa.10305.0..sroa_idx306, i64 224, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  %.sroa.4308.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4308.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.8302, i64 104, i1 false)
  store i64 %i.dk, ptr %i.au, align 8
  %.sroa.5309.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %.sroa.5309.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(224) %.sroa.5309, i64 224, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5309)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 648 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !alias.scope !17548, !noalias !17551, !noundef !4
  %.not.i159 = icmp eq ptr %i.dn, null
  br i1 %.not.i159, label %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1F_EENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBK_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dm)
          to label %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1F_EENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1F_EENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.af
  %.pr438 = load ptr, ptr %i.aq, align 8, !alias.scope !17553, !noalias !17556
  call void @llvm.experimental.noalias.scope.decl(metadata !17556)
  call void @llvm.experimental.noalias.scope.decl(metadata !17553)
  %.not.i161 = icmp eq ptr %.pr438, null
  br i1 %.not.i161, label %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1F_EENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1F_EENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ar, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.aq, i64 48, i1 false), !alias.scope !17558
  br label %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1C_EE17unwrap_or_defaultCs14kWLkQVSKO_14deltalake_core.exit

_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1F_EENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.ae, %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1F_EENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit
  %i.dp = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @647)
          to label %.noexc162 unwind label %bb.ai ; 2 uses

.noexc162:                                        ; preds = %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1F_EENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.thread
  %i.dq = extractvalue { i64, i64 } %i.dp, 0
  %i.dr = extractvalue { i64, i64 } %i.dp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) @165, i64 32, i1 false), !noalias !17553
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  store i64 %i.dq, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !17559, !noalias !17553
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  store i64 %i.dr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !17559, !noalias !17553
  br label %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1C_EE17unwrap_or_defaultCs14kWLkQVSKO_14deltalake_core.exit

bb.ai:                                            ; preds = %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1F_EENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.thread
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1C_EE17unwrap_or_defaultCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.noexc162, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  invoke void @_RNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB5_17DeltaTableBuilder20with_storage_options(ptr noalias noundef nonnull sret([336 x i8]) align 8 captures(none) dereferenceable(336) %i.av, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(336) %i.au, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.ar)
          to label %bb.ak unwind label %bb.aj
end_hunk_12
begin_hunk_13_@_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0B7_:bb.a
  store i8 0, ptr %i.fk, align 1
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 774
  %i.fm = load i8, ptr %i.fl, align 2, !range !178, !noundef !4
  %i.fn = trunc nuw i8 %i.fm to i1
  br i1 %i.fn, label %bb.lg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEECs14kWLkQVSKO_14deltalake_core.exit249

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEECs14kWLkQVSKO_14deltalake_core.exit249: ; preds = %bb.lg, %bb.lh, %bb.ku, %bb.bk, %.body
  %.pn118 = phi { ptr, i32 } [ %i.vu, %bb.ku ], [ %.pn21, %.body ], [ %.pn116, %bb.bk ], [ %.pn116, %bb.lh ], [ %.pn116, %bb.lg ]
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 774
  store i8 0, ptr %i.fo, align 2
  br label %bb.bu

bb.bl:                                            ; preds = %bb.m
  %i.fp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  br label %bb.bu

bb.bm:                                            ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !19481)
  %i.fq = load i64, ptr %i.br, align 8, !range !181, !alias.scope !19484, !noalias !19481, !noundef !4 ; 2 uses
  %.not.i165 = icmp eq i64 %i.fq, 20
  br i1 %.not.i165, label %bb.bn, label %bb.bs

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  call void @llvm.experimental.noalias.scope.decl(metadata !19486)
  call void @llvm.experimental.noalias.scope.decl(metadata !19489)
  %.sroa.0269.0.copyload = load i64, ptr %i.cw, align 16, !alias.scope !19491, !noalias !19489 ; 2 uses
  store i64 -9223372036854775711, ptr %i.cw, align 16, !alias.scope !19493, !noalias !19486
  %.not.i166 = icmp eq i64 %.sroa.0269.0.copyload, -9223372036854775711
  br i1 %.not.i166, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %.sroa.2271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.2271.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6.0..sroa_idx, i64 88, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !19494)
  store i64 %.sroa.0269.0.copyload, ptr %i.n, align 16, !noalias !19494
  %i.fr = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  invoke void @_RNvXNtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtB4_6errors15DeltaTableErrorE4from(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.fr, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(96) %i.n)
          to label %bb.br unwind label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  %i.fs = icmp eq ptr %i.dd, %i.db
  br i1 %i.fs, label %._crit_edge.loopexit, label %bb.m

bb.bq:                                            ; preds = %bb.bo
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.br:                                            ; preds = %bb.bo
  store i64 37, ptr %i.s, align 16, !alias.scope !19494, !noalias !19497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bm
  %.sroa.8258.0..sroa_idx259 = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.sroa.8258.0.copyload260 = load i8, ptr %.sroa.8258.0..sroa_idx259, align 8, !alias.scope !19499
  %.sroa.9.0..sroa_idx261 = getelementptr inbounds nuw i8, ptr %i.br, i64 9
  %.sroa.3264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.3264.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.9.0..sroa_idx261, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  call void @llvm.experimental.noalias.scope.decl(metadata !19500)
  %i.fu = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.fq, ptr %i.fu, align 8, !alias.scope !19503
  %.sroa.2263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i8 %.sroa.8258.0.copyload260, ptr %.sroa.2263.0..sroa_idx, align 16, !alias.scope !19503
  store i64 37, ptr %i.s, align 16, !alias.scope !19505, !noalias !19500
  br label %bb.bt

bb.bt:                                            ; preds = %bb.br, %bb.bs, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEECs14kWLkQVSKO_14deltalake_core.exit
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 144
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files23FindFilesExprPropertiesEBM_(ptr noalias noundef align 16 dereferenceable(128) %i.fv)
          to label %bb.kv unwind label %bb.i

bb.bu:                                            ; preds = %bb.bq, %bb.bl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEECs14kWLkQVSKO_14deltalake_core.exit249
  %.pn124.pn.pn = phi { ptr, i32 } [ %i.ft, %bb.bq ], [ %.pn118, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEECs14kWLkQVSKO_14deltalake_core.exit249 ], [ %i.fp, %bb.bl ]
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 144
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files23FindFilesExprPropertiesEBM_(ptr noalias noundef align 16 dereferenceable(128) %i.fw) #46
          to label %bb.h unwind label %bb.bg

bb.bv:                                            ; preds = %bb.g
  %.sroa.10.0..sroa_idx252 = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %.sroa.10.0.copyload253 = load i64, ptr %.sroa.10.0..sroa_idx252, align 8, !alias.scope !19506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !19507)
  %i.fx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.cj, ptr %i.fx, align 8, !alias.scope !19510
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store i64 %.sroa.10.0.copyload253, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !19510
  store i64 37, ptr %i.s, align 16, !alias.scope !19512, !noalias !19507
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit

.body242:                                         ; preds = %bb.la, %bb.kx, %bb.li, %bb.e, %bb.h
  %.pn130.pn = phi { ptr, i32 } [ %i.ci, %bb.e ], [ %.pn128, %bb.h ], [ %.pn128, %bb.li ], [ %i.wc, %bb.la ], [ %i.wa, %bb.kx ]
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 770
  store i8 0, ptr %i.fy, align 2
  store i8 2, ptr %i.bw, align 16
  resume { ptr, i32 } %.pn130.pn

bb.bw:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @484) #50
  unreachable

bb.bx:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @484) #50
  unreachable

bb.by:                                            ; preds = %bb.bz
  %i.fz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  %.val141 = load ptr, ptr %i.gb, align 16
  %i.ga = getelementptr i8, ptr %1, i64 792
  %.val142 = load ptr, ptr %i.ga, align 8, !nonnull !4, !align !18, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %.val141, ptr nonnull %.val142) #46
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs14kWLkQVSKO_14deltalake_core.exit184 unwind label %bb.bg

bb.bz:                                            ; preds = %bb.a, %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 784 ; 4 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.bf, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.gb, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ca unwind label %bb.by

bb.ca:                                            ; preds = %bb.bz
  %i.gc = load i64, ptr %i.bf, align 8, !range !12625, !noundef !4 ; 3 uses
  %i.gd = icmp eq i64 %i.gc, 21
  br i1 %i.gd, label %bb.cb, label %bb.cc

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit, %bb.jd, %bb.gy, %bb.ee, %bb.cb
  %.sink = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit ], [ 6, %bb.jd ], [ 5, %bb.gy ], [ 4, %bb.ee ], [ 3, %bb.cb ]
  store i8 %.sink, ptr %i.bw, align 16
  ret void

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  store i64 38, ptr %0, align 16
  br label %common.ret

bb.cc:                                            ; preds = %bb.ca
  %.sroa.3281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.sroa.3281.0.copyload = load ptr, ptr %.sroa.3281.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7282, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7282.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  %.val139 = load ptr, ptr %i.gb, align 16        ; 5 uses
  %i.ge = getelementptr i8, ptr %1, i64 792       ; 2 uses
  %.val140 = load ptr, ptr %i.ge, align 8, !nonnull !4, !align !18, !noundef !4 ; 5 uses
  %i.gf = load ptr, ptr %.val140, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gf, null
  br i1 %.not.i.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val139) ]
  invoke void %i.gf(ptr noundef nonnull %.val139)
          to label %bb.ce unwind label %bb.cg

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.gg = getelementptr inbounds nuw i8, ptr %.val140, i64 8
  %i.gh = load i64, ptr %i.gg, align 8, !range !16, !invariant.load !4 ; 2 uses
  %i.gi = icmp eq i64 %i.gh, 0
  br i1 %i.gi, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.gj = getelementptr inbounds nuw i8, ptr %.val140, i64 16
  %i.gk = load i64, ptr %i.gj, align 8, !range !3, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val139) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val139, i64 noundef range(i64 1, 0) %i.gh, i64 noundef range(i64 1, 536870913) %i.gk) #40
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit

bb.cg:                                            ; preds = %bb.cd
  %i.gl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.val140, i64 8
  %i.gn = load i64, ptr %i.gm, align 8, !range !16, !invariant.load !4 ; 2 uses
  %i.go = icmp eq i64 %i.gn, 0
  br i1 %i.go, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs14kWLkQVSKO_14deltalake_core.exit184, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.gp = getelementptr inbounds nuw i8, ptr %.val140, i64 16
  %i.gq = load i64, ptr %i.gp, align 8, !range !3, !invariant.load !4
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val139, i64 noundef range(i64 1, 0) %i.gn, i64 noundef range(i64 1, 536870913) %i.gq) #40
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs14kWLkQVSKO_14deltalake_core.exit184

bb.ci:                                            ; preds = %bb.cj
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs14kWLkQVSKO_14deltalake_core.exit184

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.cf, %bb.ce
  %.not.i170 = icmp eq i64 %i.gc, 20
  br i1 %.not.i170, label %bb.cj, label %bb.ea

bb.cj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3281.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.gs = invoke { ptr, ptr } @_RNvNtCsanCXJAiNsO_18datafusion_catalog20default_table_source18provider_as_source(ptr noundef nonnull %.sroa.3281.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.sroa.5.0.copyload)
          to label %bb.ck unwind label %bb.ci     ; 2 uses

bb.ck:                                            ; preds = %bb.cj
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.gu = extractvalue { ptr, ptr } %i.gs, 0      ; 4 uses
  %i.gv = extractvalue { ptr, ptr } %i.gs, 1      ; 3 uses
  store ptr %i.gu, ptr %i.gt, align 16
  %i.gw = getelementptr i8, ptr %1, i64 392
  store ptr %i.gv, ptr %i.gw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gu) ]
  %i.gx = atomicrmw add ptr %i.gu, i64 1 monotonic, align 8
  %i.gy = icmp slt i64 %i.gx, 0
  br i1 %i.gy, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.trap()
  unreachable

bb.cm:                                            ; preds = %bb.ck
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gv) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  store i64 -9223372036854775808, ptr %i.ax, align 8
  invoke void @_RINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB5_18LogicalPlanBuilder4scanReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ay, ptr noalias noundef nonnull readonly captures(address, read_provenance) @485, i64 noundef 10, ptr noundef nonnull %i.gu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.gv, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ax)
          to label %bb.co unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.gz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  br label %bb.dn

bb.co:                                            ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.experimental.noalias.scope.decl(metadata !19513)
  %i.ha = load i64, ptr %i.ay, align 8, !range !181, !alias.scope !19516, !noalias !19513, !noundef !4 ; 2 uses
  %.not.i171 = icmp eq i64 %i.ha, 20
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8, !alias.scope !19518 ; 4 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.he = load i8, ptr %i.hd, align 8, !alias.scope !19518 ; 3 uses
  br i1 %.not.i171, label %bb.cp, label %bb.dv

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  store ptr %i.hc, ptr %i.az, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i8 %i.he, ptr %i.hf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 272
  invoke fastcc void @_RNvXsV_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.aw, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.hg)
          to label %bb.cq unwind label %bb.dt

bb.cq:                                            ; preds = %bb.cp
  %i.hh = trunc nuw i8 %i.he to i1
  invoke void @_RINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB5_18LogicalPlanBuilder6filterNtNtB9_4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ba, ptr noundef nonnull %i.hc, i1 noundef zeroext %i.hh, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.aw)
          to label %bb.cs unwind label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.hi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderECs14kWLkQVSKO_14deltalake_core.exit181

bb.cs:                                            ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.experimental.noalias.scope.decl(metadata !19519)
  %i.hj = load i64, ptr %i.ba, align 8, !range !181, !alias.scope !19522, !noalias !19519, !noundef !4 ; 2 uses
  %.not.i172 = icmp eq i64 %i.hj, 20
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8, !alias.scope !19524 ; 4 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.hn = load i8, ptr %i.hm, align 8, !alias.scope !19524 ; 3 uses
  br i1 %.not.i172, label %bb.ct, label %bb.ds

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  store ptr %i.hl, ptr %i.bb, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i8 %i.hn, ptr %i.ho, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  %i.hp = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  invoke void @_RNvXs0_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6ColumnINtNtCsbvkFyIu7lgC_4core7convert4FromReE4from(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.hp, ptr noalias noundef nonnull readonly captures(address, read_provenance) @483, i64 noundef 20)
          to label %bb.cw unwind label %bb.cv

bb.cu:                                            ; preds = %bb.cx, %bb.cv
  %.pn43 = phi { ptr, i32 } [ %i.hr, %bb.cx ], [ %i.hq, %bb.cv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %bb.dq

bb.cv:                                            ; preds = %bb.ct
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.cw:                                            ; preds = %bb.ct
  store i64 5, ptr %i.as, align 16, !alias.scope !19525, !noalias !19528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store i8 26, ptr %i.ar, align 8
  invoke void @_RNvNtCs8VI8w5SIoU4_15datafusion_expr7expr_fn4cast(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.at, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.as, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ar)
          to label %bb.cy unwind label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.hr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  br label %bb.cu

bb.cy:                                            ; preds = %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  invoke void @_RINvMsC_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4Expr5aliasReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.au, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(112) %i.at, ptr noalias noundef nonnull readonly captures(address, read_provenance) @483, i64 noundef 20)
          to label %bb.da unwind label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.da:                                            ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.av, ptr noundef nonnull align 16 dereferenceable(112) %i.au, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  %i.ht = trunc nuw i8 %i.hn to i1
  invoke void @_RINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB5_18LogicalPlanBuilder7projectNtNtB9_4expr4ExprAB1x_j1_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.bc, ptr noundef nonnull %i.hl, i1 noundef zeroext %i.ht, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.av)
          to label %bb.dc unwind label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.hu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderECs14kWLkQVSKO_14deltalake_core.exit

bb.dc:                                            ; preds = %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.experimental.noalias.scope.decl(metadata !19530)
  %i.hv = load i64, ptr %i.bc, align 8, !range !181, !alias.scope !19533, !noalias !19530, !noundef !4 ; 2 uses
  %.not.i175 = icmp eq i64 %i.hv, 20
  %i.hw = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8, !alias.scope !19535 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.hz = load i8, ptr %i.hy, align 8, !alias.scope !19535 ; 2 uses
  br i1 %.not.i175, label %bb.dd, label %bb.dp

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  %i.ia = trunc nuw i8 %i.hz to i1
  invoke void @_RNvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB4_18LogicalPlanBuilder8distinct(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.bd, ptr noundef nonnull %i.hx, i1 noundef zeroext %i.ia)
          to label %bb.df unwind label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.ib = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  br label %bb.dn

bb.df:                                            ; preds = %bb.dd
  call void @llvm.experimental.noalias.scope.decl(metadata !19536)
  %i.ic = load i64, ptr %i.bd, align 8, !range !181, !alias.scope !19539, !noalias !19536, !noundef !4 ; 2 uses
  %.not.i177 = icmp eq i64 %i.ic, 20
  %i.id = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.ie = load ptr, ptr %i.id, align 8, !alias.scope !19541 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.ig = load i8, ptr %i.if, align 8, !alias.scope !19541 ; 2 uses
  br i1 %.not.i177, label %bb.dg, label %bb.do

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  %i.ih = trunc nuw i8 %i.ig to i1
  invoke void @_RNvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB4_18LogicalPlanBuilder5build(ptr noalias noundef nonnull sret([320 x i8]) align 16 captures(none) dereferenceable(320) %i.be, ptr noundef nonnull %i.ie, i1 noundef zeroext %i.ih)
          to label %bb.di unwind label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.di:                                            ; preds = %bb.dg
  %i.ij = load i64, ptr %i.be, align 16, !range !5941, !alias.scope !19542, !noalias !19545, !noundef !4 ; 2 uses
  %i.ik = icmp eq i64 %i.ij, 36
  %i.il = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8288, ptr noundef nonnull align 8 dereferenceable(40) %i.il, i64 40, i1 false)
end_hunk_13
begin_hunk_14_@_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0B7_:bb.a
bb.dr:                                            ; preds = %bb.dq
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bb) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.bg

bb.ds:                                            ; preds = %bb.cs
  %.sroa.12320.0..sroa_idx321 = getelementptr inbounds nuw i8, ptr %i.ba, i64 17
  %.sroa.4339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.4339.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.12320.0..sroa_idx321, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.experimental.noalias.scope.decl(metadata !19571)
  %i.jc = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.hj, ptr %i.jc, align 8, !alias.scope !19574
  %.sroa.2337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.hl, ptr %.sroa.2337.0..sroa_idx, align 16, !alias.scope !19574
  %.sroa.3338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i8 %i.hn, ptr %.sroa.3338.0..sroa_idx, align 8, !alias.scope !19574
  store i64 37, ptr %i.s, align 16, !alias.scope !19576, !noalias !19571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  br label %bb.dw

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderECs14kWLkQVSKO_14deltalake_core.exit181: ; preds = %bb.dt, %bb.du, %bb.cr
  %.pn108 = phi { ptr, i32 } [ %i.jd, %bb.dt ], [ %i.hi, %bb.cr ], [ %i.jd, %bb.du ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  br label %bb.dn

bb.dt:                                            ; preds = %bb.cp
  %i.jd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  %i.je = atomicrmw sub ptr %i.hc, i64 1 release, align 8, !noalias !19577
  %i.jf = icmp eq i64 %i.je, 1
  br i1 %i.jf, label %bb.du, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderECs14kWLkQVSKO_14deltalake_core.exit181

bb.du:                                            ; preds = %bb.dt
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.az) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderECs14kWLkQVSKO_14deltalake_core.exit181 unwind label %bb.bg

bb.dv:                                            ; preds = %bb.co
  %.sroa.12330.0..sroa_idx331 = getelementptr inbounds nuw i8, ptr %i.ay, i64 17
  %.sroa.4335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.4335.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.12330.0..sroa_idx331, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.experimental.noalias.scope.decl(metadata !19584)
  %i.jg = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.ha, ptr %i.jg, align 8, !alias.scope !19587
  %.sroa.2333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.hc, ptr %.sroa.2333.0..sroa_idx, align 16, !alias.scope !19587
  %.sroa.3334.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i8 %i.he, ptr %.sroa.3334.0..sroa_idx, align 8, !alias.scope !19587
  store i64 37, ptr %i.s, align 16, !alias.scope !19589, !noalias !19584
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  br label %bb.dw

bb.dw:                                            ; preds = %bb.do, %bb.dp, %bb.ds, %bb.dv, %bb.dj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBH_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEECs14kWLkQVSKO_14deltalake_core.exit
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19590)
  call void @llvm.experimental.noalias.scope.decl(metadata !19593)
  %i.ji = load ptr, ptr %i.jh, align 16, !alias.scope !19596, !nonnull !4, !noundef !4
  %i.jj = atomicrmw sub ptr %i.ji, i64 1 release, align 8, !noalias !19596
  %i.jk = icmp eq i64 %i.jj, 1
  br i1 %i.jk, label %bb.dx, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.dx:                                            ; preds = %bb.dw
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.jh) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.kh

bb.dy:                                            ; preds = %bb.ke, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit247, %bb.dn
  %.pn108.pn.pn.pn = phi { ptr, i32 } [ %.pn108.pn.pn, %bb.dn ], [ %i.ut, %bb.ke ], [ %.pn102.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit247 ] ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19597)
  call void @llvm.experimental.noalias.scope.decl(metadata !19600)
  %i.jm = load ptr, ptr %i.jl, align 16, !alias.scope !19603, !nonnull !4, !noundef !4
  %i.jn = atomicrmw sub ptr %i.jm, i64 1 release, align 8, !noalias !19603
  %i.jo = icmp eq i64 %i.jn, 1
  br i1 %i.jo, label %bb.dz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs14kWLkQVSKO_14deltalake_core.exit184

bb.dz:                                            ; preds = %bb.dy
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.jl) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs14kWLkQVSKO_14deltalake_core.exit184 unwind label %bb.bg

bb.ea:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7282, i64 16, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !19604)
  %i.jp = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.gc, ptr %i.jp, align 8, !alias.scope !19607
  %.sroa.2284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %.sroa.3281.0.copyload, ptr %.sroa.2284.0..sroa_idx, align 16, !alias.scope !19607
  %.sroa.3285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %.sroa.5.0.copyload, ptr %.sroa.3285.0..sroa_idx, align 8, !alias.scope !19607
  store i64 37, ptr %i.s, align 16, !alias.scope !19609, !noalias !19604
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.dw, %bb.dx, %bb.ea
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 272
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.jq)
          to label %bb.ks unwind label %bb.kr

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EECs14kWLkQVSKO_14deltalake_core.exit184: ; preds = %.body162, %bb.by, %bb.cg, %bb.ch, %bb.ci, %bb.dy, %bb.dz, %bb.kh
  %.pn113.pn = phi { ptr, i32 } [ %.pn108.pn.pn.pn, %bb.dy ], [ %i.uy, %bb.kh ], [ %.pn108.pn.pn.pn, %bb.dz ], [ %.pn34, %.body162 ], [ %i.fz, %bb.by ], [ %i.gr, %bb.ci ], [ %i.gl, %bb.ch ], [ %i.gl, %bb.cg ] ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 773
  %i.js = load i8, ptr %i.jr, align 1, !range !178, !noundef !4
  %i.jt = trunc nuw i8 %i.js to i1
  br i1 %i.jt, label %bb.lf, label %bb.bk

bb.eb:                                            ; preds = %bb.ec
  %i.ju = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  %.val137 = load ptr, ptr %i.jw, align 16
  %i.jv = getelementptr i8, ptr %1, i64 792
  %.val138 = load ptr, ptr %i.jv, align 8, !nonnull !4, !align !18, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %.val137, ptr nonnull %.val138) #46
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit247 unwind label %bb.bg

bb.ec:                                            ; preds = %bb.c, %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 784 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.jw, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ed unwind label %bb.eb

bb.ed:                                            ; preds = %bb.ec
  %i.jx = load i64, ptr %i.ap, align 8, !range !12625, !noundef !4 ; 3 uses
  %i.jy = icmp eq i64 %i.jx, 21
  br i1 %i.jy, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  store i64 38, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %common.ret

bb.ef:                                            ; preds = %bb.ed
  %.sroa.3362.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.3362.0.copyload = load ptr, ptr %.sroa.3362.0..sroa_idx, align 8 ; 6 uses
  %.sroa.5363.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.sroa.5363.0.copyload = load ptr, ptr %.sroa.5363.0..sroa_idx, align 8 ; 5 uses
  %.sroa.7364.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7364, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7364.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  %.val135 = load ptr, ptr %i.jw, align 16        ; 5 uses
  %i.jz = getelementptr i8, ptr %1, i64 792
  %.val136 = load ptr, ptr %i.jz, align 8, !nonnull !4, !align !18, !noundef !4 ; 5 uses
  %i.ka = load ptr, ptr %.val136, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i185 = icmp eq ptr %i.ka, null
  br i1 %.not.i.i185, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val135) ]
  invoke void %i.ka(ptr noundef nonnull %.val135)
          to label %bb.eh unwind label %bb.ej

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %i.kb = getelementptr inbounds nuw i8, ptr %.val136, i64 8
  %i.kc = load i64, ptr %i.kb, align 8, !range !16, !invariant.load !4 ; 2 uses
  %i.kd = icmp eq i64 %i.kc, 0
  br i1 %i.kd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.ke = getelementptr inbounds nuw i8, ptr %.val136, i64 16
  %i.kf = load i64, ptr %i.ke, align 8, !range !3, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val135) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val135, i64 noundef range(i64 1, 0) %i.kc, i64 noundef range(i64 1, 536870913) %i.kf) #40
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit

bb.ej:                                            ; preds = %bb.eg
  %i.kg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.val136, i64 8
  %i.ki = load i64, ptr %i.kh, align 8, !range !16, !invariant.load !4 ; 2 uses
  %i.kj = icmp eq i64 %i.ki, 0
  br i1 %i.kj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit247, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.kk = getelementptr inbounds nuw i8, ptr %.val136, i64 16
  %i.kl = load i64, ptr %i.kk, align 8, !range !3, !invariant.load !4
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val135, i64 noundef range(i64 1, 0) %i.ki, i64 noundef range(i64 1, 536870913) %i.kl) #40
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit247

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ei, %bb.eh
  %.not.i188 = icmp eq i64 %i.jx, 20
  br i1 %.not.i188, label %bb.el, label %bb.eo

bb.el:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3362.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5363.0.copyload) ]
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 772
  store ptr %.sroa.3362.0.copyload, ptr %i.aq, align 8
  %i.kn = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %.sroa.5363.0.copyload, ptr %i.kn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store i8 0, ptr %i.km, align 4
  store ptr %.sroa.3362.0.copyload, ptr %i.ao, align 8
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %.sroa.5363.0.copyload, ptr %i.ko, align 8
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.kq = load ptr, ptr %i.kp, align 16, !nonnull !4, !noundef !4
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ks = load ptr, ptr %i.kr, align 8, !nonnull !4, !align !18, !noundef !4
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 136
  %i.ku = load ptr, ptr %i.kt, align 8, !invariant.load !4, !nonnull !4
  %i.kv = invoke noundef nonnull ptr %i.ku(ptr noundef nonnull %i.kq)
          to label %.thread unwind label %bb.em

.thread:                                          ; preds = %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  %.sroa.8385.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 800
  store ptr %.sroa.3362.0.copyload, ptr %.sroa.8385.0..sroa_idx, align 16
  %.sroa.9386.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 808
  store ptr %.sroa.5363.0.copyload, ptr %.sroa.9386.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 880
  store ptr %i.kv, ptr %.sroa.11.0..sroa_idx, align 16
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 890
  store i8 0, ptr %.sroa.13.0..sroa_idx, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8391)
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 784
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.sroa.0.i)
  %i.kx = getelementptr inbounds nuw i8, ptr %1, i64 890
  br label %bb.er

.noexc189:                                        ; preds = %bb.en, %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %.body203

bb.em:                                            ; preds = %bb.el
  %i.ky = landingpad { ptr, i32 }
          cleanup
  %i.kz = atomicrmw sub ptr %.sroa.3362.0.copyload, i64 1 release, align 8, !noalias !19610
  %i.la = icmp eq i64 %i.kz, 1
  br i1 %i.la, label %bb.en, label %.noexc189

bb.en:                                            ; preds = %bb.em
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ao) #45
          to label %.noexc189 unwind label %bb.bg

bb.eo:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.4368.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4368.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7364, i64 16, i1 false)
  %i.lb = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.jx, ptr %i.lb, align 8, !alias.scope !19615
  %.sroa.2366.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %.sroa.3362.0.copyload, ptr %.sroa.2366.0..sroa_idx, align 16, !alias.scope !19615
  %.sroa.3367.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %.sroa.5363.0.copyload, ptr %.sroa.3367.0..sroa_idx, align 8, !alias.scope !19615
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBH_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEECs14kWLkQVSKO_14deltalake_core.exit.sink.split

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBH_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEECs14kWLkQVSKO_14deltalake_core.exit.sink.split: ; preds = %bb.eo, %bb.iz
  store i64 37, ptr %i.s, align 16, !noalias !4
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBH_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBH_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBH_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEECs14kWLkQVSKO_14deltalake_core.exit.sink.split, %bb.hh
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 772
  store i8 0, ptr %i.lc, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  %i.ld = getelementptr inbounds nuw i8, ptr %1, i64 400
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(320) %i.ld)
          to label %bb.dw unwind label %bb.ke

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit247: ; preds = %bb.dl, %bb.eb, %bb.ej, %bb.ek, %bb.ld, %bb.le, %.body203
  %.pn102.pn = phi { ptr, i32 } [ %.pn99.pn, %bb.ld ], [ %.pn99.pn, %.body203 ], [ %.pn99.pn, %bb.le ], [ %i.iv, %bb.dl ], [ %i.ju, %bb.eb ], [ %i.kg, %bb.ej ], [ %i.kg, %bb.ek ]
  %i.le = getelementptr inbounds nuw i8, ptr %1, i64 772
  store i8 0, ptr %i.le, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  %i.lf = getelementptr inbounds nuw i8, ptr %1, i64 400
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(320) %i.lf) #46
          to label %bb.dy unwind label %bb.bg

bb.ep:                                            ; preds = %bb.ff, %bb.fe
  %i.lg = landingpad { ptr, i32 }
          cleanup
  br label %.body194

.body194:                                         ; preds = %bb.fd, %bb.ep
  %i.lh = phi ptr [ %i.li, %bb.ep ], [ %i.mw, %bb.fd ]
  %eh.lpad-body195 = phi { ptr, i32 } [ %i.lg, %bb.ep ], [ %.pn29.pn.i, %bb.fd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8391)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.lh) #46
          to label %.body203 unwind label %bb.bg

bb.eq:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 890
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !range !1165, !noalias !19619
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8391)
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 784 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.sroa.0.i)
  %i.lj = getelementptr inbounds nuw i8, ptr %1, i64 890 ; 6 uses
  switch i8 %.pre, label %default.unreachable609 [
    i8 0, label %bb.er
    i8 1, label %bb.fe
    i8 2, label %bb.ff
    i8 3, label %bb.fh
  ]

bb.er:                                            ; preds = %.thread, %bb.eq
  %i.lk = phi ptr [ %i.kx, %.thread ], [ %i.lj, %bb.eq ] ; 5 uses
  %i.ll = phi ptr [ %i.kw, %.thread ], [ %i.li, %bb.eq ] ; 7 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %1, i64 889 ; 3 uses
  store i8 0, ptr %i.lm, align 1, !noalias !19619
  %i.ln = getelementptr inbounds nuw i8, ptr %1, i64 888 ; 2 uses
  store i8 0, ptr %i.ln, align 8, !noalias !19619
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 800
  %i.lp = load ptr, ptr %i.lo, align 16, !noalias !19619, !nonnull !4, !noundef !4
  %i.lq = getelementptr inbounds nuw i8, ptr %1, i64 808
  %i.lr = load ptr, ptr %i.lq, align 8, !noalias !19619, !nonnull !4, !align !18, !noundef !4
  %i.ls = getelementptr inbounds nuw i8, ptr %1, i64 880
  %i.lt = load ptr, ptr %i.ls, align 16, !noalias !19619, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !19619
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !19619
  invoke void @_RNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan26execute_stream_partitioned(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.l, ptr noundef nonnull %i.lp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %i.lr, ptr noundef nonnull %i.lt)
          to label %bb.et unwind label %bb.es, !noalias !19623

bb.es:                                            ; preds = %bb.er
  %i.lu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !19619
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  br label %bb.fd

bb.et:                                            ; preds = %bb.er
  call void @llvm.experimental.noalias.scope.decl(metadata !19624)
  %i.lv = load i64, ptr %i.l, align 8, !range !181, !alias.scope !19627, !noalias !19629, !noundef !4 ; 2 uses
  %.not.i.i193 = icmp eq i64 %i.lv, 20
  %i.lw = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(24) %i.lw, i64 24, i1 false), !alias.scope !19630, !noalias !19619
  br i1 %.not.i.i193, label %bb.eu, label %bb.fc

bb.eu:                                            ; preds = %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !19619
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, i64 24, i1 false), !noalias !19619
  store i8 1, ptr %i.lm, align 1, !noalias !19619
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  %i.lx = invoke { ptr, i64 } @_RNvMs_NtCs4Y5ccqZjUYD_25datafusion_common_runtime8join_setINtB4_7JoinSetTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE3newCs14kWLkQVSKO_14deltalake_core()
          to label %bb.ex unwind label %bb.ew, !noalias !19623 ; 2 uses

bb.ev:                                            ; preds = %bb.fb, %bb.ew
  %i.ly = phi ptr [ %i.mt, %bb.fb ], [ %i.md, %bb.ew ] ; 2 uses
  %i.lz = phi ptr [ %i.mu, %bb.fb ], [ %i.me, %bb.ew ] ; 2 uses
  %.pn21.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn21.pn.pn.pn.pn.pn.i, %bb.fb ], [ %i.mf, %bb.ew ] ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %1, i64 889
  %i.mb = load i8, ptr %i.ma, align 1, !range !178, !noalias !19619, !noundef !4
  %i.mc = trunc nuw i8 %i.mb to i1
  br i1 %i.mc, label %bb.gx, label %bb.fd

bb.ew:                                            ; preds = %bb.gu, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTjIBH_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.eu
  %i.md = phi ptr [ %i.nq, %bb.gu ], [ %i.nq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTjIBH_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.lk, %bb.eu ]
  %i.me = phi ptr [ %i.nr, %bb.gu ], [ %i.nr, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTjIBH_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.ll, %bb.eu ]
  %i.mf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ev

bb.ex:                                            ; preds = %bb.eu
  %i.mg = extractvalue { ptr, i64 } %i.lx, 0
  %i.mh = extractvalue { ptr, i64 } %i.lx, 1
  store ptr %i.mg, ptr %i.ll, align 8, !noalias !19619
  %i.mi = getelementptr inbounds nuw i8, ptr %1, i64 792
  store i64 %i.mh, ptr %i.mi, align 8, !noalias !19619
  store i8 0, ptr %i.lm, align 1, !noalias !19619
  %.sroa.061.0.copyload.i = load i64, ptr %i.m, align 8, !noalias !19619
  %.sroa.562.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.562.0.copyload.i = load ptr, ptr %.sroa.562.0..sroa_idx.i, align 8, !noalias !19619, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.663.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.663.0.copyload.i = load i64, ptr %.sroa.663.0..sroa_idx.i, align 8, !noalias !19619 ; 2 uses
  %i.mj = icmp ult i64 %.sroa.663.0.copyload.i, 576460752303423488
  call void @llvm.assume(i1 %i.mj)
  %i.mk = getelementptr inbounds nuw [16 x i8], ptr %.sroa.562.0.copyload.i, i64 %.sroa.663.0.copyload.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !19631
  store ptr %.sroa.562.0.copyload.i, ptr %i.h, align 8, !noalias !19638
  %.sroa.058.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sroa.562.0.copyload.i, ptr %.sroa.058.sroa.5.0..sroa_idx.i, align 8, !noalias !19638
  %.sroa.058.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.061.0.copyload.i, ptr %.sroa.058.sroa.6.0..sroa_idx.i, align 8, !noalias !19638
  %.sroa.058.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.mk, ptr %.sroa.058.sroa.7.0..sroa_idx.i, align 8, !noalias !19638
  invoke void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtBa_5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB12_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB12_6marker4SendEL_EEENtNtNtNtB12_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB5K_8adapters9enumerateINtB6A_9EnumeratepEB5E_4fold9enumerateBX_uNCINvNvB5E_8for_each4callTjBX_ENCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned00E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ll, i64 noundef 0)
          to label %bb.fa unwind label %bb.ey, !noalias !19623

bb.ey:                                            ; preds = %bb.ex
  %i.ml = landingpad { ptr, i32 }
          cleanup
end_hunk_14
begin_hunk_15_@_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot16resolve_snapshot0B7_:bb.a
  %i.fj = icmp eq i64 %i.fi, 1
  br i1 %i.fj, label %common.ret.sink.split.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_13EagerSnapshot21try_new_with_snapshot0EBR_.exit.i

bb.bt:                                            ; preds = %bb.br
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 336
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEINtNtB2k_3vec3VecB41_EEEB51_(ptr noalias noundef align 8 dereferenceable(40) %i.fk)
          to label %bb.bw unwind label %bb.bu, !noalias !19884

bb.bu:                                            ; preds = %bb.bt
  %i.fl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19893)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19896)
  %i.fn = load ptr, ptr %i.fm, align 8, !alias.scope !19899, !noalias !19847, !nonnull !4, !noundef !4
  %i.fo = atomicrmw sub ptr %i.fn, i64 1 release, align 8, !noalias !19900
  %i.fp = icmp eq i64 %i.fo, 1
  br i1 %i.fp, label %bb.bv, label %.body30.i

bb.bv:                                            ; preds = %bb.bu
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8SnapshotE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fm) #45
          to label %.body30.i unwind label %bb.bx, !noalias !19884

bb.bw:                                            ; preds = %bb.bt
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19901)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19904)
  %i.fr = load ptr, ptr %i.fq, align 8, !alias.scope !19907, !noalias !19847, !nonnull !4, !noundef !4
  %i.fs = atomicrmw sub ptr %i.fr, i64 1 release, align 8, !noalias !19908
  %i.ft = icmp eq i64 %i.fs, 1
  br i1 %i.ft, label %common.ret.sink.split.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_13EagerSnapshot21try_new_with_snapshot0EBR_.exit.i

bb.bx:                                            ; preds = %bb.bv
  %i.fu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !19884
  unreachable

bb.by:                                            ; preds = %common.ret.sink.split.i.i
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %.body30.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_13EagerSnapshot21try_new_with_snapshot0EBR_.exit.i: ; preds = %bb.bw, %bb.bs, %common.ret.sink.split.i.i, %bb.br
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 216
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_(ptr noalias noundef align 8 dereferenceable(72) %i.fw)
          to label %bb.ca unwind label %bb.bz, !noalias !19884

bb.bz:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_13EagerSnapshot21try_new_with_snapshot0EBR_.exit.i
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.ca:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_13EagerSnapshot21try_new_with_snapshot0EBR_.exit.i
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 184
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotEBM_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.fy)
          to label %bb.ce unwind label %bb.cc, !noalias !19884

bb.cb:                                            ; preds = %bb.cc, %bb.bl
  %i.fz = phi ptr [ %i.ey, %bb.cc ], [ %i.eu, %bb.bl ]
  %i.ga = phi ptr [ %i.ez, %bb.cc ], [ %i.ev, %bb.bl ]
  %.pn14.i = phi { ptr, i32 } [ %i.gb, %bb.cc ], [ %.pn10.pn.i, %bb.bl ]
  store i8 2, ptr %i.fz, align 8, !noalias !19847
  br label %.body

bb.cc:                                            ; preds = %bb.ca
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.cd:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !19847
  store i8 3, ptr %i.ey, align 8, !noalias !19847
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  store i64 -9223372036854775710, ptr %0, align 16
  br label %common.ret

bb.ce:                                            ; preds = %bb.ca, %bb.ac
  %i.gc = phi ptr [ %i.bt, %bb.ac ], [ %i.ey, %bb.ca ]
  %i.gd = phi ptr [ %i.bu, %bb.ac ], [ %i.ez, %bb.ca ]
  %.sroa.3.i.sroa.0.0 = phi i64 [ %.sroa.3.i.sroa.0.0.copyload69, %bb.ac ], [ %.sroa.3.i.sroa.0.0.copyload, %bb.ca ]
  %.sroa.3.i.sroa.5.0 = phi ptr [ %.sroa.3.i.sroa.5.0.copyload70, %bb.ac ], [ %.sroa.3.i.sroa.5.0.copyload, %bb.ca ]
  %.sroa.0.0.i = phi i64 [ -9223372036854775711, %bb.ac ], [ %i.fb, %bb.ca ]
  %i.ge = phi <2 x i64> [ %i.cc, %bb.ac ], [ %i.fd, %bb.ca ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.740.sroa.9, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.i, i64 56, i1 false)
  store i8 1, ptr %i.gc, align 8, !noalias !19847
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_13EagerSnapshot10with_files0EBR_(ptr noundef nonnull align 8 %i.gd)
          to label %bb.r unwind label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.cg:                                            ; preds = %bb.p
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 104
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotEBM_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.gg) #46
          to label %bb.l unwind label %bb.u

bb.ch:                                            ; preds = %bb.w, %bb.l
  %.pn24.pn = phi { ptr, i32 } [ %.pn24, %bb.l ], [ %.pn14.pn, %bb.w ]
  store i8 2, ptr %i.k, align 1
  resume { ptr, i32 } %.pn24.pn

bb.ci:                                            ; preds = %bb.cj
  %i.gh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_13EagerSnapshot7try_new0EBR_(ptr noundef nonnull align 8 %i.gi) #46
          to label %bb.v unwind label %bb.u

bb.cj:                                            ; preds = %bb.c, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  invoke fastcc void @_RNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB6_13EagerSnapshot7try_new0Ba_(ptr noalias noundef align 16 captures(none) dereferenceable(96) %i.h, ptr noundef nonnull align 8 %i.gi, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.ck unwind label %bb.ci

bb.ck:                                            ; preds = %bb.cj
  %i.gj = load i64, ptr %i.h, align 16, !range !1116, !noundef !4 ; 2 uses
  %i.gk = icmp eq i64 %i.gj, -9223372036854775710
  br i1 %i.gk, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i64 -9223372036854775710, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %common.ret

bb.cm:                                            ; preds = %bb.ck
  %.sroa.58.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.58.sroa.0.0.copyload55 = load i64, ptr %.sroa.58.0..sroa_idx10, align 8
  %.sroa.58.sroa.5.0..sroa.58.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.58.sroa.5.0.copyload58 = load ptr, ptr %.sroa.58.sroa.5.0..sroa.58.0..sroa_idx10.sroa_idx, align 16
  %.sroa.58.sroa.6.0..sroa.58.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.gl = load <2 x i64>, ptr %.sroa.58.sroa.6.0..sroa.58.0..sroa_idx10.sroa_idx, align 8
  %.sroa.58.sroa.7.sroa.4.0..sroa.58.sroa.7.0..sroa.58.0..sroa_idx10.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.740.sroa.9, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.58.sroa.7.sroa.4.0..sroa.58.sroa.7.0..sroa.58.0..sroa_idx10.sroa_idx.sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBN_13EagerSnapshot7try_new0EBR_(ptr noundef nonnull align 8 %i.gi)
          to label %bb.co unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.co:                                            ; preds = %bb.cm
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 98
  store i8 0, ptr %i.gn, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.o

bb.cp:                                            ; preds = %bb.v
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_(ptr noalias noundef align 8 dereferenceable(72) %i.j) #46
          to label %bb.w unwind label %bb.u
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i16 noundef range(i16 1, 0) %2, i1 noundef zeroext %3) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 11 uses
  br i1 %3, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr i8, ptr %i.b, i64 %1       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 4 uses
  %i.h = icmp samesign ult i64 %i.g, 4
  %i.i = getelementptr i8, ptr %i.e, i64 %i.g     ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -4
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.623.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br i1 %i.h, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us
  %.sroa.0.09.us = phi i16 [ %i.w, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ %2, %.preheader ] ; 2 uses
  %i.k = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.09.us, i1 true) ; 2 uses
  %i.l = zext nneg i16 %i.k to i64
  %i.m = getelementptr i8, ptr %i.c, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19909)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19912)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = getelementptr i8, ptr %i.n, i64 %i.g
  call void @_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly %i.n, ptr noundef nonnull readonly %i.o, ptr noundef nonnull readonly %i.e, ptr noundef nonnull readonly %i.i)
  %.sroa.0.0.copyload.i.us = load ptr, ptr %i.a, align 8, !noalias !19914 ; 2 uses
  %.sroa.522.0.copyload.i.us = load ptr, ptr %.sroa.522.0..sroa_idx.i, align 8, !noalias !19914 ; 2 uses
  %.sroa.623.0.copyload.i.us = load i64, ptr %.sroa.623.0..sroa_idx.i, align 8, !noalias !19914 ; 3 uses
  %.sroa.8.0.copyload.i.us = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !19914 ; 2 uses
  %umax.i.us = tail call i64 @llvm.umax.i64(i64 %.sroa.623.0.copyload.i.us, i64 %.sroa.8.0.copyload.i.us)
  %exitcond.not.i.us18.not = icmp ult i64 %.sroa.623.0.copyload.i.us, %.sroa.8.0.copyload.i.us
  br i1 %exitcond.not.i.us18.not, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.us.preheader, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.us.preheader: ; preds = %.preheader.split.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.us) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.522.0.copyload.i.us) ]
  br label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.us

bb.b:                                             ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.us
  %i.p = add i64 %.sroa.623.0.i.us19, 1           ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.p, %umax.i.us
  br i1 %exitcond.not.i.us, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.us

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.us: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.us.preheader, %bb.b
  %.sroa.623.0.i.us19 = phi i64 [ %i.p, %bb.b ], [ %.sroa.623.0.copyload.i.us, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.us.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.us, i64 %.sroa.623.0.i.us19
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.522.0.copyload.i.us, i64 %.sroa.623.0.i.us19
  %i.s = load i8, ptr %i.q, align 1, !noundef !4
  %i.t = load i8, ptr %i.r, align 1, !noundef !4
  %.not21.i.us = icmp eq i8 %i.s, %i.t
  br i1 %.not21.i.us, label %bb.b, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.u = shl nuw i16 1, %i.k
  %i.v = xor i16 %i.u, -1
  %i.w = and i16 %.sroa.0.09.us, %i.v             ; 2 uses
  %i.x = icmp eq i16 %i.w, 0
  br i1 %i.x, label %.loopexit, label %.preheader.split.us

.preheader.split:                                 ; preds = %.preheader, %bb.d
  %.sroa.0.09 = phi i16 [ %i.al, %bb.d ], [ %2, %.preheader ] ; 2 uses
  %i.y = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.09, i1 true) ; 2 uses
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 1      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19909)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19912)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.g
  %i.ad = getelementptr i8, ptr %i.ac, i64 -4     ; 3 uses
  %i.ae = icmp ult ptr %i.ab, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit

.lr.ph.i:                                         ; preds = %.preheader.split, %bb.c
  %.sroa.08.030.i = phi ptr [ %i.ag, %bb.c ], [ %i.e, %.preheader.split ] ; 2 uses
  %.sroa.04.029.i = phi ptr [ %i.af, %bb.c ], [ %i.ab, %.preheader.split ] ; 2 uses
  %.sroa.011.0.copyload.i = load i32, ptr %.sroa.04.029.i, align 1, !alias.scope !19909, !noalias !19912
  %.sroa.013.0.copyload.i = load i32, ptr %.sroa.08.030.i, align 1, !alias.scope !19912, !noalias !19909
  %.not.i = icmp eq i32 %.sroa.011.0.copyload.i, %.sroa.013.0.copyload.i
  br i1 %.not.i, label %bb.c, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit8

bb.c:                                             ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.029.i, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.08.030.i, i64 4
  %i.ah = icmp ult ptr %i.af, %i.ad
  br i1 %i.ah, label %.lr.ph.i, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6: ; preds = %.preheader.split.us, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit8: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit: ; preds = %bb.c, %.preheader.split
  %.sroa.015.0.copyload.i = load i32, ptr %i.ad, align 1, !alias.scope !19909, !noalias !19912
  %.sroa.017.0.copyload.i = load i32, ptr %i.j, align 1, !alias.scope !19912, !noalias !19909
  %i.ai = icmp eq i32 %.sroa.015.0.copyload.i, %.sroa.017.0.copyload.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.ai, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %bb.d, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6, %bb.a
  %.sroa.03.0 = phi i1 [ true, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6 ], [ false, %bb.a ], [ false, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ true, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit ], [ false, %bb.d ]
  ret i1 %.sroa.03.0

bb.d:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit8, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit
  %i.aj = shl nuw i16 1, %i.y
  %i.ak = xor i16 %i.aj, -1
  %i.al = and i16 %.sroa.0.09, %i.ak              ; 2 uses
  %i.am = icmp eq i16 %i.al, 0
  br i1 %i.am, label %.loopexit, label %.preheader.split
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution13write_streams0B9_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 16 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.4.i = alloca [24 x i8], align 8          ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 8 uses
  %i.f = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.12372 = alloca [48 x i8], align 16       ; 3 uses
  %i.g = alloca [24 x i8], align 8                ; 13 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.635 = alloca [24 x i8], align 8          ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.5549 = alloca [72 x i8], align 8         ; 3 uses
  %i.k = alloca [96 x i8], align 16               ; 11 uses
  %.sroa.3.sroa.4 = alloca [72 x i8], align 8     ; 3 uses
  %i.l = alloca [96 x i8], align 16               ; 10 uses
  %i.m = alloca [16 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.623 = alloca [24 x i8], align 8          ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 10 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.614 = alloca [24 x i8], align 8          ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.5 = alloca [72 x i8], align 8            ; 3 uses
  %i.s = alloca [96 x i8], align 16               ; 12 uses
  %.sroa.2.sroa.3.sroa.7 = alloca [72 x i8], align 8 ; 6 uses
  %.sroa.10 = alloca [88 x i8], align 8           ; 6 uses
  %i.t = alloca [96 x i8], align 16               ; 12 uses
  %i.u = alloca [112 x i8], align 16              ; 10 uses
  %i.v = alloca [304 x i8], align 8               ; 7 uses
  %i.w = alloca [8 x i8], align 8                 ; 5 uses
  %i.x = alloca [32 x i8], align 8                ; 9 uses
  %i.y = alloca [3200 x i8], align 16             ; 9 uses
  %i.z = alloca [8 x i8], align 8                 ; 9 uses
  %i.aa = alloca [336 x i8], align 8              ; 10 uses
  %i.ab = alloca [16 x i8], align 8               ; 11 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 632 ; 3 uses
  %i.ad = load i8, ptr %i.ac, align 8, !range !1779, !noundef !4
  switch i8 %i.ad, label %default.unreachable513 [
    i8 0, label %bb.c
    i8 1, label %bb.ae
    i8 2, label %bb.af
    i8 3, label %bb.b
    i8 4, label %bb.dj
  ]

default.unreachable513:                           ; preds = %bb.dj, %bb.ak, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  br label %bb.ag

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 639 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 638
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 637
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 636
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 635
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 634
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 633 ; 2 uses
  store i32 0, ptr %i.ak, align 1
  store i8 1, ptr %i.ae, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 584 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 560
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 16 dereferenceable(24) %i.am, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i8 1, ptr %i.af, align 2
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.ao = load ptr, ptr %i.an, align 16, !nonnull !4, !noundef !4 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  store ptr %i.ao, ptr %i.ab, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.aq, ptr %i.ar, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i8 1, ptr %i.ag, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %i.aa, ptr noundef nonnull align 16 dereferenceable(336) %1, i64 336, i1 false)
  %i.as = getelementptr i8, ptr %1, i64 600       ; 2 uses
  %.val136 = load i64, ptr %i.as, align 8, !noundef !4 ; 3 uses
  %i.at = icmp ult i64 %.val136, 576460752303423488
  tail call void @llvm.assume(i1 %i.at)
  %i.au = invoke noundef i64 @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution12channel_size()
          to label %bb.e unwind label %bb.d       ; 3 uses

bb.d:                                             ; preds = %.noexc146, %bb.g, %bb.f, %bb.c
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.not.i = icmp eq i64 %i.au, 0
  br i1 %.not.i, label %bb.f, label %bb.g, !prof !52

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @42, ptr noundef nonnull inttoptr (i64 81 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @508) #50
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvMNtNtCskQDtHcQtBkN_5tokio4sync15batch_semaphoreNtB2_9Semaphore3new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.f, i64 noundef %i.au)
          to label %.noexc146 unwind label %bb.d

.noexc146:                                        ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i64 %i.au, ptr %i.aw, align 8, !noalias !19915
  %i.ax = invoke { ptr, ptr } @_RINvNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4chan7channelNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtB4_7bounded9SemaphoreECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.f)
          to label %bb.h unwind label %bb.d       ; 2 uses

bb.h:                                             ; preds = %.noexc146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
end_hunk_15
begin_hunk_16_@_RNCNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations8generateNtB7_15GenerateBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future0Bb_:bb.a
  %i.pv = lshr i64 %i.pt, 5                       ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0332.0.copyload) ]
  %i.pw = sub nsw i64 0, %i.pv
  %i.px = getelementptr inbounds i8, ptr %.sroa.0332.0.copyload, i64 %i.pw
  %i.py = add i64 %i.pv, %.sroa.6334.0.copyload
  %i.pz = add i64 %i.pv, %.sroa.8336.0.copyload   ; 2 uses
  %i.qa = icmp sgt i64 %i.pz, -1
  call void @llvm.assume(i1 %i.qa)
  store i64 %i.pz, ptr %i.e, align 8, !noalias !21515
  %i.qb = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.px, ptr %i.qb, align 8, !noalias !21515
  %i.qc = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.py, ptr %i.qc, align 8, !noalias !21515
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !21515
  invoke void @_RNvXsE_NtCs9Ct3XQYJhun_5bytes5bytesNtB5_5BytesINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e)
          to label %.noexc233 unwind label %bb.hd

.noexc233:                                        ; preds = %bb.gt
  call void @llvm.experimental.noalias.scope.decl(metadata !21517)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !21515
  store i64 %i.pv, ptr %i.c, align 8, !noalias !21520
  %i.qd = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.qe = load i64, ptr %i.qd, align 8, !alias.scope !21517, !noalias !21515, !noundef !4 ; 4 uses
  %.not.i.i231 = icmp ugt i64 %i.pv, %i.qe
  br i1 %.not.i.i231, label %bb.gu, label %bb.gx, !prof !52

bb.gu:                                            ; preds = %.noexc233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21520
  store i64 %i.qe, ptr %i.b, align 8, !noalias !21520
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21520
  store ptr %i.c, ptr %i.a, align 8, !noalias !21520
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsZ_NtNtCsbvkFyIu7lgC_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !21520
  %i.qf = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.qf, align 8, !noalias !21520
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsZ_NtNtCsbvkFyIu7lgC_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !21520
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @1042, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1043) #50
          to label %.noexc.i232 unwind label %bb.gw, !noalias !21515

.noexc.i232:                                      ; preds = %bb.gu
  unreachable

bb.gv:                                            ; preds = %bb.gs
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0332.0.copyload) ]
  %i.qg = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %.sroa.0332.0.copyload, ptr %i.qg, align 8, !alias.scope !21512, !noalias !21521
  %i.qh = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 %.sroa.6334.0.copyload, ptr %i.qh, align 8, !alias.scope !21512, !noalias !21521
  %i.qi = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store ptr %.sroa.9337.0.copyload, ptr %i.qi, align 8, !alias.scope !21512, !noalias !21521
  store ptr @_RNvNtCs9Ct3XQYJhun_5bytes9bytes_mut13SHARED_VTABLE, ptr %i.ah, align 8, !alias.scope !21512, !noalias !21521
  br label %bb.he

bb.gw:                                            ; preds = %bb.gu
  %i.qj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !21522)
  call void @llvm.experimental.noalias.scope.decl(metadata !21525)
  %i.qk = load ptr, ptr %i.d, align 8, !alias.scope !21528, !noalias !21515, !nonnull !4, !align !18, !noundef !4
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 32
  %i.qm = load ptr, ptr %i.ql, align 8, !noalias !21529, !nonnull !4, !noundef !4
  %i.qn = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.qo = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.qp = load ptr, ptr %i.qo, align 8, !alias.scope !21528, !noalias !21515, !noundef !4
  invoke void %i.qm(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.qn, ptr noundef %i.qp, i64 noundef %i.qe)
          to label %.body234 unwind label %bb.gy, !noalias !21515, !inline_history !2164

bb.gx:                                            ; preds = %.noexc233
  %i.qq = sub nuw i64 %i.qe, %i.pv
  store i64 %i.qq, ptr %i.qd, align 8, !alias.scope !21517, !noalias !21515
  %i.qr = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.qs = load ptr, ptr %i.qr, align 8, !alias.scope !21517, !noalias !21515, !noundef !4
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 %i.pv
  store ptr %i.qt, ptr %i.qr, align 8, !alias.scope !21517, !noalias !21515
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !21515
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !21521
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !21515
  br label %bb.he

bb.gy:                                            ; preds = %bb.gw
  %i.qu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !21515
  unreachable

bb.gz:                                            ; preds = %_RNvXs13_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB6_5DrainNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtNtCs9Ct3XQYJhun_5bytes9bytes_mut8BytesMutENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit
  %i.qv = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qv, ptr noundef nonnull align 8 dereferenceable(24) %i.mn, i64 24, i1 false)
  %i.qw = getelementptr inbounds nuw i8, ptr %1, i64 186 ; 2 uses
  store i8 1, ptr %i.qw, align 2
  %i.qx = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %1, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.qx, ptr noundef nonnull align 8 dereferenceable(32) %i.qy, i64 32, i1 false)
  %i.qz = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ra = icmp ult i64 %i.qz, 6
  call void @llvm.assume(i1 %i.ra)
  %i.rb = icmp samesign ugt i64 %i.qz, 3
  br i1 %i.rb, label %bb.hb, label %bb.gs

bb.ha:                                            ; preds = %bb.hb
  %i.rc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.hl

bb.hb:                                            ; preds = %bb.gz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.rd = getelementptr i8, ptr %1, i64 392
  %.val132 = load i64, ptr %i.rd, align 8, !noundef !4
  store i64 %.val132, ptr %i.al, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store ptr %i.qv, ptr %i.ak, align 8
  %.sroa.5329.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr @_RNvXs8_NtCsjyY8HP3IvQ6_12object_store4pathNtB5_4PathNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt, ptr %.sroa.5329.0..sroa_idx, align 8
  %i.re = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %i.al, ptr %i.re, align 8
  %.sroa.5331.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.5331.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store ptr @553, ptr %i.aj, align 8
  %i.rf = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 36, ptr %i.rf, align 8
  %i.rg = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr @553, ptr %i.rg, align 8
  %i.rh = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store i64 36, ptr %i.rh, align 8
  %i.ri = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store ptr @559, ptr %i.ri, align 8
  invoke void @_RINvNtCsaljjC7ZTCQu_3log13___private_api3loguNtB2_12GlobalLoggerECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull @558, ptr noundef nonnull %i.ak, i64 noundef 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.aj)
          to label %bb.hc unwind label %bb.ha

bb.hc:                                            ; preds = %bb.hb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.gs

bb.hd:                                            ; preds = %bb.gt
  %i.rj = landingpad { ptr, i32 }
          cleanup
  br label %.body234

bb.he:                                            ; preds = %bb.gx, %bb.gv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.rk = invoke { ptr, i64 } @_RNvXs5_NtCsjyY8HP3IvQ6_12object_store7payloadNtB5_10PutPayloadINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.ah)
          to label %bb.hg unwind label %bb.hf     ; 2 uses

.body234:                                         ; preds = %bb.hd, %bb.gw, %bb.hf
  %.pn30 = phi { ptr, i32 } [ %i.rl, %bb.hf ], [ %i.rj, %bb.hd ], [ %i.qj, %bb.gw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs14kWLkQVSKO_14deltalake_core.exit

bb.hf:                                            ; preds = %bb.he
  %i.rl = landingpad { ptr, i32 }
          cleanup
  br label %.body234

bb.hg:                                            ; preds = %bb.he
  %i.rm = extractvalue { ptr, i64 } %i.rk, 0      ; 2 uses
  %i.rn = extractvalue { ptr, i64 } %i.rk, 1      ; 2 uses
  store ptr %i.rm, ptr %i.ai, align 8
  %i.ro = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 %i.rn, ptr %i.ro, align 8
  %i.rp = getelementptr inbounds nuw i8, ptr %1, i64 185 ; 2 uses
  store i8 1, ptr %i.rp, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.rq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val105 = load ptr, ptr %i.rq, align 8, !nonnull !4, !noundef !4
  %i.rr = getelementptr i8, ptr %1, i64 40
  %.val106 = load ptr, ptr %i.rr, align 8, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %.val106, i64 16
  %i.rt = load i64, ptr %i.rs, align 8, !range !3, !invariant.load !4
  %i.ru = add nsw i64 %i.rt, -1
  %i.rv = and i64 %i.ru, -16
  %i.rw = getelementptr inbounds nuw i8, ptr %.val105, i64 %i.rv
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store i8 0, ptr %i.af, align 1
  %i.ry = getelementptr inbounds nuw i8, ptr %.val106, i64 112
  %i.rz = load ptr, ptr %i.ry, align 8, !invariant.load !4, !nonnull !4
  %i.sa = invoke { ptr, ptr } %i.rz(ptr noundef nonnull %i.rx, ptr noalias noundef nonnull align 1 captures(address) dereferenceable(17) %i.af)
          to label %bb.hi unwind label %bb.hh     ; 2 uses

bb.hh:                                            ; preds = %bb.hg
  %i.sb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.hi:                                            ; preds = %bb.hg
  %i.sc = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.sd = extractvalue { ptr, ptr } %i.sa, 0      ; 3 uses
  %i.se = extractvalue { ptr, ptr } %i.sa, 1      ; 4 uses
  store ptr %i.sd, ptr %i.sc, align 8
  %i.sf = getelementptr inbounds nuw i8, ptr %1, i64 360
  store ptr %i.se, ptr %i.sf, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.sd) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.se) ]
  %i.sg = getelementptr inbounds nuw i8, ptr %i.se, i64 16
  %i.sh = load i64, ptr %i.sg, align 8, !range !3, !invariant.load !4
  %i.si = add nsw i64 %i.sh, -1
  %i.sj = and i64 %i.si, -16
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sd, i64 %i.sj
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  store i8 0, ptr %i.rp, align 1
  %i.sm = getelementptr inbounds nuw i8, ptr %i.se, i64 48
  %i.sn = load ptr, ptr %i.sm, align 8, !invariant.load !4, !nonnull !4
  %i.so = invoke { ptr, ptr } %i.sn(ptr noundef nonnull %i.sl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qv, ptr noundef nonnull %i.rm, i64 noundef %i.rn)
          to label %bb.hk unwind label %bb.hj     ; 2 uses

bb.hj:                                            ; preds = %bb.hi
  %i.sp = landingpad { ptr, i32 }
          cleanup
  br label %.body201

bb.hk:                                            ; preds = %bb.hi
  %i.sq = extractvalue { ptr, ptr } %i.so, 0
  %i.sr = extractvalue { ptr, ptr } %i.so, 1
  %i.ss = getelementptr inbounds nuw i8, ptr %1, i64 368
  store ptr %i.sq, ptr %i.ss, align 8
  %i.st = getelementptr inbounds nuw i8, ptr %1, i64 376
  store ptr %i.sr, ptr %i.st, align 8
  br label %bb.ex

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ht, %bb.hu, %.body234, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit
  %.pn35.pn = phi { ptr, i32 } [ %.pn30, %.body234 ], [ %.pn35, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit ], [ %.pn35, %bb.hu ], [ %.pn35, %bb.ht ]
  %i.su = getelementptr inbounds nuw i8, ptr %1, i64 185
  store i8 0, ptr %i.su, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.hl

bb.hl:                                            ; preds = %bb.ha, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs14kWLkQVSKO_14deltalake_core.exit
  %.pn35.pn.pn = phi { ptr, i32 } [ %.pn35.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.rc, %bb.ha ]
  %i.sv = getelementptr inbounds nuw i8, ptr %1, i64 186 ; 2 uses
  %i.sw = load i8, ptr %i.sv, align 2, !range !178, !noundef !4
  %i.sx = trunc nuw i8 %i.sw to i1
  br i1 %i.sx, label %bb.hv, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes9bytes_mut8BytesMutECs14kWLkQVSKO_14deltalake_core.exit

bb.hm:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9PutResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.18.sroa.6.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.18.sroa.6, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18.sroa.6.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5346, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.18.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3345.sroa.5.sroa.3, i64 24, i1 false)
  %i.sy = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21530)
  call void @llvm.experimental.noalias.scope.decl(metadata !21533)
  %i.sz = load ptr, ptr %i.sy, align 8, !alias.scope !21536, !nonnull !4, !noundef !4
  %i.ta = atomicrmw sub ptr %i.sz, i64 1 release, align 8, !noalias !21536
  %i.tb = icmp eq i64 %i.ta, 1
  br i1 %i.tb, label %bb.hn, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit239

bb.hn:                                            ; preds = %bb.hm
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.sy) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit239 unwind label %bb.fl

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit239: ; preds = %bb.hm, %bb.hn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.tc = getelementptr inbounds nuw i8, ptr %1, i64 185
  store i8 0, ptr %i.tc, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %i.td = getelementptr inbounds nuw i8, ptr %1, i64 186
  store i8 0, ptr %i.td, align 2
  %i.te = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.te)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i241 unwind label %bb.ho

bb.ho:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit239
  %i.tf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.te)
          to label %.body210 unwind label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.tg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i241: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit239
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.te)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit245 unwind label %bb.fo

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit245: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i241
  %i.th = getelementptr inbounds nuw i8, ptr %1, i64 272
  invoke void @_RNvXsK_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawDrainTNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtNtCs9Ct3XQYJhun_5bytes9bytes_mut8BytesMutEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.th)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map5DrainNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtNtCs9Ct3XQYJhun_5bytes9bytes_mut8BytesMutEECs14kWLkQVSKO_14deltalake_core.exit247 unwind label %bb.fq

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map5DrainNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtNtCs9Ct3XQYJhun_5bytes9bytes_mut8BytesMutEECs14kWLkQVSKO_14deltalake_core.exit247: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br label %bb.ei

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB2Q_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2Q_.exit: ; preds = %bb.el, %bb.ek
  %i.ti = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 4 uses
  %i.tj = load i64, ptr %i.ti, align 8, !range !17, !alias.scope !21537, !noundef !4
  %i.tk = icmp eq i64 %i.tj, -9223372036854775808
  br i1 %i.tk, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs14kWLkQVSKO_14deltalake_core.exit253, label %bb.hq

bb.hq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB2Q_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2Q_.exit
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ti)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i249 unwind label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.tl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ti)
          to label %.body224 unwind label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.tm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i249: ; preds = %bb.hq
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ti)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs14kWLkQVSKO_14deltalake_core.exit253 unwind label %bb.gk

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs14kWLkQVSKO_14deltalake_core.exit253: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB2Q_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2Q_.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i249
  %i.tn = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtNtCs9Ct3XQYJhun_5bytes9bytes_mut8BytesMutEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.tn)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtNtCs9Ct3XQYJhun_5bytes9bytes_mut8BytesMutEECs14kWLkQVSKO_14deltalake_core.exit255 unwind label %bb.ac

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtNtCs9Ct3XQYJhun_5bytes9bytes_mut8BytesMutEECs14kWLkQVSKO_14deltalake_core.exit255: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs14kWLkQVSKO_14deltalake_core.exit253
  %i.to = getelementptr inbounds nuw i8, ptr %1, i64 64
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotEBM_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.to)
          to label %bb.ao unwind label %bb.gl

bb.ht:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !21542)
  call void @llvm.experimental.noalias.scope.decl(metadata !21545)
  call void @llvm.experimental.noalias.scope.decl(metadata !21548)
  %i.tp = load ptr, ptr %i.ai, align 8, !alias.scope !21551, !nonnull !4, !noundef !4
  %i.tq = atomicrmw sub ptr %i.tp, i64 1 release, align 8, !noalias !21551
  %i.tr = icmp eq i64 %i.tq, 1
  br i1 %i.tr, label %bb.hu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs14kWLkQVSKO_14deltalake_core.exit

bb.hu:                                            ; preds = %bb.ht
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcSNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE9drop_slowCsjyY8HP3IvQ6_12object_store(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ai) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store7payload10PutPayloadECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ap

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes9bytes_mut8BytesMutECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.hv, %bb.hl
  store i8 0, ptr %i.sv, align 2
  %i.ts = getelementptr inbounds nuw i8, ptr %1, i64 248
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ts) #46
          to label %.body210 unwind label %bb.ap

bb.hv:                                            ; preds = %bb.hl
  %i.tt = getelementptr inbounds nuw i8, ptr %1, i64 384
  invoke void @_RNvXs_NtCs9Ct3XQYJhun_5bytes9bytes_mutNtB4_8BytesMutNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.tt)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes9bytes_mut8BytesMutECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ap
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6updateNtB7_13UpdateBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future0Bb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([176 x i8]) align 16 captures(none) dereferenceable(176) %0, ptr noundef nonnull align 16 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.5454 = alloca [88 x i8], align 8         ; 7 uses
  %i.i = alloca [96 x i8], align 16               ; 7 uses
  %i.j = alloca [96 x i8], align 16               ; 7 uses
  %i.k = alloca [7184 x i8], align 16             ; 5 uses
  %i.l = alloca [7184 x i8], align 16             ; 7 uses
  %i.m = alloca [7136 x i8], align 16             ; 18 uses
  %i.n = alloca [8 x i8], align 8                 ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 5 uses
  %i.q = alloca [48 x i8], align 8                ; 10 uses
  %i.r = alloca [32 x i8], align 8                ; 8 uses
  %i.s = alloca [40 x i8], align 8                ; 8 uses
  %i.t = alloca [8 x i8], align 8                 ; 5 uses
  %i.u = alloca [8 x i8], align 8                 ; 5 uses
  %i.v = alloca [8 x i8], align 8                 ; 5 uses
  %i.w = alloca [48 x i8], align 8                ; 10 uses
  %i.x = alloca [32 x i8], align 8                ; 8 uses
  %i.y = alloca [16 x i8], align 1                ; 9 uses
  %i.z = alloca [248 x i8], align 8               ; 11 uses
  %i.aa = alloca [48 x i8], align 8               ; 10 uses
  %i.ab = alloca [112 x i8], align 16             ; 10 uses
  %i.ac = alloca [40 x i8], align 8               ; 4 uses
  %i.ad = alloca [48 x i8], align 8               ; 6 uses
  %i.ae = alloca [48 x i8], align 8               ; 6 uses
  %i.af = alloca [32 x i8], align 8               ; 4 uses
  %i.ag = alloca [32 x i8], align 8               ; 4 uses
  %i.ah = alloca [16 x i8], align 16              ; 4 uses
  %i.ai = alloca [32 x i8], align 8               ; 7 uses
  %i.aj = alloca [16 x i8], align 8               ; 5 uses
  %i.ak = alloca [24 x i8], align 8               ; 5 uses
  %i.al = alloca [1680 x i8], align 8             ; 4 uses
  %i.am = alloca [1680 x i8], align 8             ; 4 uses
  %.sroa.3.i = alloca [88 x i8], align 8          ; 6 uses
end_hunk_16
begin_hunk_17_@_RNCNvXs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations5writeNtB7_12WriteBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future0Bb_:bb.a
  br label %bb.aaq

bb.aaq:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider18DeltaTableProviderEEB1k_.exit.i.i, %bb.xi
  %i.bie = phi ptr [ %i.bhz, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider18DeltaTableProviderEEB1k_.exit.i.i ], [ %i.ayy, %bb.xi ]
  %i.bif = phi ptr [ %i.bia, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider18DeltaTableProviderEEB1k_.exit.i.i ], [ %i.ayz, %bb.xi ]
  %i.big = phi ptr [ %i.bib, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider18DeltaTableProviderEEB1k_.exit.i.i ], [ %i.azj, %bb.xi ]
  %i.bih = phi ptr [ %i.bic, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider18DeltaTableProviderEEB1k_.exit.i.i ], [ %i.azk, %bb.xi ]
  %.pn70.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn70.pn.pn.pn.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider18DeltaTableProviderEEB1k_.exit.i.i ], [ %i.bax, %bb.xi ]
  %i.bii = getelementptr inbounds nuw i8, ptr %1, i64 5744
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider15DeltaScanConfigEBM_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.bii) #46
          to label %bb.aba unwind label %bb.aaj, !noalias !23562

bb.aar:                                           ; preds = %bb.xg
  %.sroa.11.0..sroa_idx210.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.3.0..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.11.0..sroa_idx210.i.i, i64 48, i1 false), !noalias !23558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !23558
  %.sroa.2212.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2212.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.i.i, i64 40, i1 false), !noalias !23558
  call void @llvm.experimental.noalias.scope.decl(metadata !23726)
  %i.bij = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store i64 %i.bau, ptr %i.bij, align 16, !alias.scope !23729, !noalias !23558
  %i.bik = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store i64 37, ptr %i.bik, align 16, !alias.scope !23731, !noalias !23732
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider22DeltaScanConfigBuilderEBM_(ptr noalias noundef align 8 dereferenceable(40) %i.bl)
          to label %bb.aau unwind label %bb.aat, !noalias !23562

bb.aas:                                           ; preds = %bb.aat, %bb.xf, %.body104.i.i
  %.pn78.i.i = phi { ptr, i32 } [ %i.bil, %bb.aat ], [ %i.bat, %bb.xf ], [ %.pn.i.i669, %.body104.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !23558
  br label %bb.aba

bb.aat:                                           ; preds = %bb.aar
  %i.bil = landingpad { ptr, i32 }
          cleanup
  br label %bb.aas

bb.aau:                                           ; preds = %bb.aar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !23558
  br label %bb.aav

bb.aav:                                           ; preds = %bb.aau, %bb.aal
  %i.bim = phi ptr [ %i.ayy, %bb.aau ], [ %i.bhp, %bb.aal ] ; 9 uses
  %i.bin = phi ptr [ %i.ayz, %bb.aau ], [ %i.bhq, %bb.aal ] ; 9 uses
  %i.bio = phi ptr [ %i.azj, %bb.aau ], [ %i.bhr, %bb.aal ] ; 9 uses
  %i.bip = phi ptr [ %i.azk, %bb.aau ], [ %i.bhs, %bb.aal ] ; 9 uses
  %i.biq = getelementptr inbounds nuw i8, ptr %1, i64 5720 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBL_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.biq)
          to label %bb.aax unwind label %bb.aaw, !noalias !23562

bb.aaw:                                           ; preds = %bb.aav
  %i.bir = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.biq)
          to label %.body134.i.i unwind label %bb.aay, !noalias !23562

bb.aax:                                           ; preds = %bb.aav
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.biq)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEEB1j_.exit.i.i unwind label %bb.wx, !noalias !23562

bb.aay:                                           ; preds = %bb.aaw
  %i.bis = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !23562
  unreachable

bb.aaz:                                           ; preds = %bb.wy
  %i.bit = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider22DeltaScanConfigBuilderEBM_(ptr noalias noundef align 8 dereferenceable(40) %i.bk) #46
          to label %.body104.i.i unwind label %bb.aaj, !noalias !23562

bb.aba:                                           ; preds = %bb.adr, %bb.aas, %bb.aaq
  %i.biu = phi ptr [ %i.ayy, %bb.aas ], [ %i.bph, %bb.adr ], [ %i.bie, %bb.aaq ] ; 2 uses
  %i.biv = phi ptr [ %i.ayz, %bb.aas ], [ %i.bpi, %bb.adr ], [ %i.bif, %bb.aaq ] ; 2 uses
  %i.biw = phi ptr [ %i.azj, %bb.aas ], [ %i.bpj, %bb.adr ], [ %i.big, %bb.aaq ] ; 2 uses
  %i.bix = phi ptr [ %i.azk, %bb.aas ], [ %i.bpk, %bb.adr ], [ %i.bih, %bb.aaq ] ; 2 uses
  %.pn78.pn.i.i = phi { ptr, i32 } [ %.pn78.i.i, %bb.aas ], [ %i.bpl, %bb.adr ], [ %.pn70.pn.pn.pn.pn.i.i, %bb.aaq ] ; 2 uses
  %i.biy = getelementptr inbounds nuw i8, ptr %1, i64 6124
  %i.biz = load i8, ptr %i.biy, align 4, !range !178, !noalias !23558, !noundef !4
  %i.bja = trunc nuw i8 %i.biz to i1
  br i1 %i.bja, label %bb.afj, label %.body134.i.i

bb.abb:                                           ; preds = %bb.wu
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @531) #50
          to label %.noexc51.i unwind label %bb.wt, !noalias !23495

.noexc51.i:                                       ; preds = %bb.abb
  unreachable

bb.abc:                                           ; preds = %bb.wu
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @531) #50
          to label %.noexc52.i unwind label %bb.wt, !noalias !23495

.noexc52.i:                                       ; preds = %bb.abc
  unreachable

bb.abd:                                           ; preds = %bb.abe
  %i.bjb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !23558
  %.val97.i.i = load ptr, ptr %i.bjh, align 16, !noalias !23558
  %i.bjc = getelementptr i8, ptr %1, i64 6136
  %.val98.i.i = load ptr, ptr %i.bjc, align 8, !noalias !23558, !nonnull !4, !align !18, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %.val97.i.i, ptr nonnull %.val98.i.i) #46
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit204.i.i unwind label %bb.aaj, !noalias !23562

bb.abe:                                           ; preds = %bb.zz, %bb.wv
  %i.bjd = phi ptr [ %i.ayy, %bb.zz ], [ %i.aou, %bb.wv ] ; 9 uses
  %i.bje = phi ptr [ %i.ayz, %bb.zz ], [ %i.aot, %bb.wv ] ; 8 uses
  %i.bjf = phi ptr [ %i.azj, %bb.zz ], [ %.phi.trans.insert251.i, %bb.wv ] ; 9 uses
  %i.bjg = phi ptr [ %i.azk, %bb.zz ], [ %i.ayq, %bb.wv ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !23558
  %i.bjh = getelementptr inbounds nuw i8, ptr %1, i64 6128 ; 4 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.as, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bjh, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.abf unwind label %bb.abd, !noalias !23562

bb.abf:                                           ; preds = %bb.abe
  %i.bji = load i64, ptr %i.as, align 8, !range !12625, !noalias !23558, !noundef !4 ; 3 uses
  %i.bjj = icmp eq i64 %i.bji, 21
  br i1 %i.bjj, label %bb.abg, label %bb.abh

bb.abg:                                           ; preds = %bb.abf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !23558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !23558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !23558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !23558
  br label %.thread234.i

bb.abh:                                           ; preds = %bb.abf
  %.sroa.3268.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.3268.0.copyload.i.i = load ptr, ptr %.sroa.3268.0..sroa_idx.i.i, align 8, !noalias !23558 ; 4 uses
  %.sroa.5269.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %.sroa.5269.0.copyload.i.i = load ptr, ptr %.sroa.5269.0..sroa_idx.i.i, align 8, !noalias !23558 ; 4 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i, i64 16, i1 false), !noalias !23558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !23558
  %.val.i.i = load ptr, ptr %i.bjh, align 16, !noalias !23558 ; 5 uses
  %i.bjk = getelementptr i8, ptr %1, i64 6136
  %.val96.i.i = load ptr, ptr %i.bjk, align 8, !noalias !23558, !nonnull !4, !align !18, !noundef !4 ; 5 uses
  %i.bjl = load ptr, ptr %.val96.i.i, align 8, !invariant.load !4, !noalias !23562 ; 2 uses
  %.not.i.i.i48.i = icmp eq ptr %i.bjl, null
  br i1 %.not.i.i.i48.i, label %bb.abj, label %bb.abi

bb.abi:                                           ; preds = %bb.abh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.bjl(ptr noundef nonnull %.val.i.i)
          to label %bb.abj unwind label %bb.abl, !noalias !23562

bb.abj:                                           ; preds = %bb.abi, %bb.abh
  %i.bjm = getelementptr inbounds nuw i8, ptr %.val96.i.i, i64 8
  %i.bjn = load i64, ptr %i.bjm, align 8, !range !16, !invariant.load !4, !noalias !23562 ; 2 uses
  %i.bjo = icmp eq i64 %i.bjn, 0
  br i1 %i.bjo, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.abk

bb.abk:                                           ; preds = %bb.abj
  %i.bjp = getelementptr inbounds nuw i8, ptr %.val96.i.i, i64 16
  %i.bjq = load i64, ptr %i.bjp, align 8, !range !3, !invariant.load !4, !noalias !23562
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.bjn, i64 noundef range(i64 1, 536870913) %i.bjq) #40, !noalias !23562
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.abl:                                           ; preds = %bb.abi
  %i.bjr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bjs = getelementptr inbounds nuw i8, ptr %.val96.i.i, i64 8
  %i.bjt = load i64, ptr %i.bjs, align 8, !range !16, !invariant.load !4, !noalias !23562 ; 2 uses
  %i.bju = icmp eq i64 %i.bjt, 0
  br i1 %i.bju, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit204.i.i, label %bb.abm

bb.abm:                                           ; preds = %bb.abl
  %i.bjv = getelementptr inbounds nuw i8, ptr %.val96.i.i, i64 16
  %i.bjw = load i64, ptr %i.bjv, align 8, !range !3, !invariant.load !4, !noalias !23562
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.bjt, i64 noundef range(i64 1, 536870913) %i.bjw) #40, !noalias !23562
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit204.i.i

bb.abn:                                           ; preds = %bb.abo
  %i.bjx = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit204.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.abk, %bb.abj
  %.not.i138.i.i = icmp eq i64 %i.bji, 20
  br i1 %.not.i138.i.i, label %bb.abp, label %bb.abo

bb.abo:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.sroa.4273.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !23558
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4273.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i, i64 16, i1 false), !noalias !23558
  call void @llvm.experimental.noalias.scope.decl(metadata !23733)
  store i64 %i.bji, ptr %i.q, align 8, !noalias !23736
  %.sroa.2271.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %.sroa.3268.0.copyload.i.i, ptr %.sroa.2271.0..sroa_idx.i.i, align 8, !noalias !23736
  %.sroa.3272.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %.sroa.5269.0.copyload.i.i, ptr %.sroa.3272.0..sroa_idx.i.i, align 8, !noalias !23736
  %i.bjy = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.bjy, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.q)
          to label %bb.aci unwind label %bb.abn, !noalias !23562

bb.abp:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3268.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5269.0.copyload.i.i) ]
  %i.bjz = getelementptr inbounds nuw i8, ptr %1, i64 6121
  store ptr %.sroa.3268.0.copyload.i.i, ptr %i.at, align 8, !noalias !23558
  %i.bka = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %.sroa.5269.0.copyload.i.i, ptr %i.bka, align 8, !noalias !23558
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15297.sroa.11.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16298.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17299.i.i)
  %i.bkb = getelementptr inbounds nuw i8, ptr %1, i64 5392 ; 2 uses
  %i.bkc = load ptr, ptr %i.bkb, align 16, !noalias !23558, !nonnull !4, !align !18, !noundef !4
  %i.bkd = getelementptr inbounds nuw i8, ptr %1, i64 5312
  %i.bke = load <2 x ptr>, ptr %i.bkd, align 16, !noalias !23558
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !23558
  store i8 0, ptr %i.bjz, align 1, !noalias !23558
  store ptr %.sroa.3268.0.copyload.i.i, ptr %i.ar, align 16, !noalias !23558
  %i.bkf = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %.sroa.5269.0.copyload.i.i, ptr %i.bkf, align 8, !noalias !23558
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !23558
  %i.bkg = getelementptr inbounds nuw i8, ptr %1, i64 5400
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bkg)
          to label %bb.abr unwind label %bb.abq, !noalias !23562

bb.abq:                                           ; preds = %bb.abp
  %i.bkh = landingpad { ptr, i32 }
          cleanup
  br label %bb.acg

bb.abr:                                           ; preds = %bb.abp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !23558
  %i.bki = getelementptr inbounds nuw i8, ptr %1, i64 5296
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !23558
  %i.bkj = getelementptr inbounds nuw i8, ptr %1, i64 5328
  %i.bkk = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bkk, ptr noundef nonnull align 16 dereferenceable(16) %i.bkj, i64 16, i1 false), !noalias !23558
  store i8 1, ptr %i.ao, align 1, !noalias !23558
  %i.bkl = invoke { ptr, ptr } @_RNvXs8_NtCs14kWLkQVSKO_14deltalake_core8logstoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB5_8LogStoreEL_EB1j_12object_storeB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bki, ptr noalias noundef nonnull align 1 captures(address) dereferenceable(17) %i.ao)
          to label %bb.abt unwind label %bb.abs, !noalias !23562 ; 2 uses

bb.abs:                                           ; preds = %bb.abr
  %i.bkm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !23558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !23558
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq) #46
          to label %bb.acg unwind label %bb.aaj, !noalias !23562

bb.abt:                                           ; preds = %bb.abr
  %i.bkn = extractvalue { ptr, ptr } %i.bkl, 0    ; 3 uses
  %i.bko = extractvalue { ptr, ptr } %i.bkl, 1    ; 2 uses
  store ptr %i.bkn, ptr %i.ap, align 8, !noalias !23558
  %i.bkp = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.bko, ptr %i.bkp, align 8, !noalias !23558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !23558
  %i.bkq = load ptr, ptr %i.bkb, align 16, !noalias !23558, !nonnull !4, !align !18, !noundef !4
  %i.bkr = getelementptr i8, ptr %i.bkq, i64 24
  %.val99.i.i = load ptr, ptr %i.bkr, align 8, !noalias !23562, !nonnull !4, !noundef !4
  %i.bks = getelementptr inbounds nuw i8, ptr %.val99.i.i, i64 88
  %i.bkt = load ptr, ptr %i.bks, align 8, !noalias !23562, !nonnull !4, !noundef !4
  %i.bku = getelementptr i8, ptr %i.bkt, i64 1040
  %.val100.i.i = load i64, ptr %i.bku, align 8, !noalias !23562, !noundef !4 ; 2 uses
  %.not.i141.i.i = icmp eq i64 %.val100.i.i, 0
  %..i.i.i = select i1 %.not.i141.i.i, i64 104857600, i64 %.val100.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !23558
  %i.bkv = getelementptr inbounds nuw i8, ptr %1, i64 5432 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23737)
  call void @llvm.experimental.noalias.scope.decl(metadata !23740)
  %i.bkw = load i64, ptr %i.bkv, align 8, !range !1069, !alias.scope !23740, !noalias !23742, !noundef !4
  %.not.i142.i.i = icmp eq i64 %i.bkw, 2
  br i1 %.not.i142.i.i, label %bb.abv, label %bb.abu

bb.abu:                                           ; preds = %bb.abt
  invoke fastcc void @_RNvXsq_NtNtCs4tdlwR1I4n2_7parquet4file10propertiesNtB5_16WriterPropertiesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(248) %i.an, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %i.bkv) #49
          to label %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.abw, !noalias !23562

bb.abv:                                           ; preds = %bb.abt
  store i64 2, ptr %i.an, align 8, !alias.scope !23737, !noalias !23743
  br label %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.abw:                                           ; preds = %bb.abu
  %i.bkx = landingpad { ptr, i32 }
          cleanup
  br label %.thread412.i.i

_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.abv, %bb.abu
  %i.bky = getelementptr inbounds nuw i8, ptr %1, i64 5680
  call void @llvm.experimental.noalias.scope.decl(metadata !23744)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !23558
  %i.bkz = load <2 x i64>, ptr %i.bky, align 16, !alias.scope !23744, !noalias !23747
  %i.bla = getelementptr inbounds nuw i8, ptr %1, i64 5696 ; 2 uses
  %i.blb = load i64, ptr %i.bla, align 16, !range !17, !alias.scope !23744, !noalias !23747, !noundef !4
  %.not.i144.i.i = icmp eq i64 %i.blb, -9223372036854775808
  br i1 %.not.i144.i.i, label %bb.aby, label %bb.abx

bb.abx:                                           ; preds = %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bla)
          to label %.noexc148.i.i unwind label %bb.abz, !noalias !23562

.noexc148.i.i:                                    ; preds = %bb.abx
  %.sroa.0.0.copyload.i145.i.i = load i64, ptr %i.p, align 8, !noalias !23749
  br label %bb.aby

bb.aby:                                           ; preds = %.noexc148.i.i, %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.sroa.0.0.i146.i.i = phi i64 [ %.sroa.0.0.copyload.i145.i.i, %.noexc148.i.i ], [ -9223372036854775808, %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  %i.blc = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15297.sroa.11.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.blc, i64 16, i1 false), !noalias !23558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !23558
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.17299.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false), !noalias !23558
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.16298.i.i, ptr noundef nonnull align 8 dereferenceable(248) %i.an, i64 248, i1 false), !noalias !23558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !23558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !23558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !23558
  %.sroa.9291.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 6144
  %.sroa.11293.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 6160
  %i.bld = load <2 x ptr>, ptr %i.ar, align 16, !noalias !23558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !23558
  store i64 0, ptr %i.bjh, align 16, !noalias !23558
  store <2 x ptr> %i.bke, ptr %.sroa.9291.0..sroa_idx.i.i, align 16, !noalias !23558
  store <2 x ptr> %i.bld, ptr %.sroa.11293.0..sroa_idx.i.i, align 16, !noalias !23558
  %.sroa.13295.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 6176
  store ptr %i.bkn, ptr %.sroa.13295.0..sroa_idx.i.i, align 16, !noalias !23558
  %.sroa.14296.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 6184
  store ptr %i.bko, ptr %.sroa.14296.0..sroa_idx.i.i, align 8, !noalias !23558
  %.sroa.15297.sroa.8.0..sroa.15297.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8736
  store <2 x i64> %i.bkz, ptr %.sroa.15297.sroa.8.0..sroa.15297.0..sroa_idx.sroa_idx.i.i, align 16, !noalias !23558
  %.sroa.15297.sroa.10.0..sroa.15297.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8752
  store i64 %.sroa.0.0.i146.i.i, ptr %.sroa.15297.sroa.10.0..sroa.15297.0..sroa_idx.sroa_idx.i.i, align 16, !noalias !23558
  %.sroa.15297.sroa.11.0..sroa.15297.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8760
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15297.sroa.11.0..sroa.15297.0..sroa_idx.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15297.sroa.11.i.i, i64 16, i1 false), !noalias !23558
  %.sroa.16298.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8776
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.16298.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(248) %.sroa.16298.i.i, i64 248, i1 false), !noalias !23558
  %.sroa.17299.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 9024
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.17299.0..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.17299.i.i, i64 24, i1 false), !noalias !23558
  %.sroa.18300.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 9048
  store ptr %i.bkc, ptr %.sroa.18300.0..sroa_idx.i.i, align 8, !noalias !23558
  %.sroa.19301.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 9056
  store i64 %..i.i.i, ptr %.sroa.19301.0..sroa_idx.i.i, align 16, !noalias !23558
  %.sroa.20.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 9064
  store i8 0, ptr %.sroa.20.0..sroa_idx.i.i, align 8, !noalias !23558
  br label %bb.acl

bb.abz:                                           ; preds = %bb.abx
  %i.ble = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.blf = load i64, ptr %i.an, align 8, !range !1069, !alias.scope !23750, !noalias !23558, !noundef !4
  %i.blg = icmp eq i64 %i.blf, 2
  br i1 %i.blg, label %.thread412.i.i, label %bb.aca

bb.aca:                                           ; preds = %bb.abz
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(248) %i.an)
          to label %.thread412.i.i unwind label %bb.aaj, !noalias !23562

.thread412.i.i:                                   ; preds = %bb.aca, %bb.abz, %bb.abw
  %.pn37.pn.ph.i.i = phi { ptr, i32 } [ %i.ble, %bb.abz ], [ %i.ble, %bb.aca ], [ %i.bkx, %bb.abw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !23558
  %i.blh = atomicrmw sub ptr %i.bkn, i64 1 release, align 8, !noalias !23753
  %i.bli = icmp eq i64 %i.blh, 1
  br i1 %i.bli, label %bb.acb, label %bb.acc

bb.acb:                                           ; preds = %.thread412.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ap) #45
          to label %bb.acc unwind label %bb.aaj, !noalias !23562

bb.acc:                                           ; preds = %bb.acb, %.thread412.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !23558
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq) #46
          to label %bb.acd unwind label %bb.aaj, !noalias !23562

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.ace, %bb.acd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !23558
  br label %bb.acf

bb.acd:                                           ; preds = %bb.acc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !23558
  call void @llvm.experimental.noalias.scope.decl(metadata !23758)
  call void @llvm.experimental.noalias.scope.decl(metadata !23761)
  %i.blj = load ptr, ptr %i.ar, align 16, !alias.scope !23764, !noalias !23558, !nonnull !4, !noundef !4
  %i.blk = atomicrmw sub ptr %i.blj, i64 1 release, align 8, !noalias !23765
  %i.bll = icmp eq i64 %i.blk, 1
  br i1 %i.bll, label %bb.ace, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.ace:                                           ; preds = %bb.acd
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ar) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.aaj, !noalias !23562

bb.acf:                                           ; preds = %bb.acp, %bb.ack, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit153.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.blm = phi ptr [ %i.bmf, %bb.acp ], [ %i.bmf, %bb.ack ], [ %i.bjd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.bjd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit153.i.i ]
  %i.bln = phi ptr [ %i.bmg, %bb.acp ], [ %i.bmg, %bb.ack ], [ %i.bje, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.bje, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit153.i.i ]
  %i.blo = phi ptr [ %i.bmh, %bb.acp ], [ %i.bmh, %bb.ack ], [ %i.bjf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.bjf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit153.i.i ]
  %i.blp = phi ptr [ %i.bmi, %bb.acp ], [ %i.bmi, %bb.ack ], [ %i.bjg, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.bjg, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit153.i.i ]
  %.pn57.i.i = phi { ptr, i32 } [ %i.bmm, %bb.acp ], [ %i.bme, %bb.ack ], [ %.pn37.pn.ph.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %.pn35.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit153.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15297.sroa.11.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16298.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17299.i.i)
  br label %bb.aeq

bb.acg:                                           ; preds = %bb.abs, %bb.abq
  %.pn35.i.i = phi { ptr, i32 } [ %i.bkm, %bb.abs ], [ %i.bkh, %bb.abq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !23558
  call void @llvm.experimental.noalias.scope.decl(metadata !23766)
end_hunk_17
begin_hunk_18_@_RNCNvXs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations5writeNtB7_12WriteBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future0Bb_:bb.a
  %i.cbx = icmp ult i64 %.val397, 4
  br i1 %i.cbx, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter = and i64 %.val397, -4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %.sroa.04.0.i.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.ccv, %.preheader.i ] ; 5 uses
  %.sroa.02.0.i.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.ccu, %.preheader.i ]
  %niter = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter.next.3, %.preheader.i ]
  %i.cby = getelementptr inbounds nuw [272 x i8], ptr %.val, i64 %.sroa.04.0.i.i
  %.val.i.i705 = load i64, ptr %i.cby, align 8, !range !1310, !alias.scope !24077, !noundef !4 ; 2 uses
  %i.cbz = icmp ne i64 %.val.i.i705, 4
  call void @llvm.assume(i1 %i.cbz)
  %i.cca = icmp eq i64 %.val.i.i705, 5
  %i.ccb = zext i1 %i.cca to i64
  %i.ccc = add i64 %.sroa.02.0.i.i, %i.ccb
  %i.ccd = getelementptr inbounds nuw [272 x i8], ptr %.val, i64 %.sroa.04.0.i.i
  %i.cce = getelementptr inbounds nuw i8, ptr %i.ccd, i64 272
  %.val.i.i705.1 = load i64, ptr %i.cce, align 8, !range !1310, !alias.scope !24077, !noundef !4 ; 2 uses
  %i.ccf = icmp ne i64 %.val.i.i705.1, 4
  call void @llvm.assume(i1 %i.ccf)
  %i.ccg = icmp eq i64 %.val.i.i705.1, 5
  %i.cch = zext i1 %i.ccg to i64
  %i.cci = add i64 %i.ccc, %i.cch
  %i.ccj = getelementptr inbounds nuw [272 x i8], ptr %.val, i64 %.sroa.04.0.i.i
  %i.cck = getelementptr inbounds nuw i8, ptr %i.ccj, i64 544
  %.val.i.i705.2 = load i64, ptr %i.cck, align 8, !range !1310, !alias.scope !24077, !noundef !4 ; 2 uses
  %i.ccl = icmp ne i64 %.val.i.i705.2, 4
  call void @llvm.assume(i1 %i.ccl)
  %i.ccm = icmp eq i64 %.val.i.i705.2, 5
  %i.ccn = zext i1 %i.ccm to i64
  %i.cco = add i64 %i.cci, %i.ccn
  %i.ccp = getelementptr inbounds nuw [272 x i8], ptr %.val, i64 %.sroa.04.0.i.i
  %i.ccq = getelementptr inbounds nuw i8, ptr %i.ccp, i64 816
  %.val.i.i705.3 = load i64, ptr %i.ccq, align 8, !range !1310, !alias.scope !24077, !noundef !4 ; 2 uses
  %i.ccr = icmp ne i64 %.val.i.i705.3, 4
  call void @llvm.assume(i1 %i.ccr)
  %i.ccs = icmp eq i64 %.val.i.i705.3, 5
  %i.cct = zext i1 %i.ccs to i64
  %i.ccu = add i64 %i.cco, %i.cct                 ; 3 uses
  %i.ccv = add nuw i64 %.sroa.04.0.i.i, 4         ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.preheader.i

.loopexit.loopexit.unr-lcssa:                     ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.i.preheader
  %.sroa.04.0.i.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.ccv, %.loopexit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.ccu, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod1930 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1930)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %.sroa.04.0.i.i.epil = phi i64 [ %i.cdb, %.preheader.i.epil ], [ %.sroa.04.0.i.i.epil.init, %.preheader.i.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.i.epil = phi i64 [ %i.cda, %.preheader.i.epil ], [ %.sroa.02.0.i.i.epil.init, %.preheader.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.epil ], [ 0, %.preheader.i.epil.preheader ]
  %i.ccw = getelementptr inbounds nuw [272 x i8], ptr %.val, i64 %.sroa.04.0.i.i.epil
  %.val.i.i705.epil = load i64, ptr %i.ccw, align 8, !range !1310, !alias.scope !24077, !noundef !4 ; 2 uses
  %i.ccx = icmp ne i64 %.val.i.i705.epil, 4
  call void @llvm.assume(i1 %i.ccx)
  %i.ccy = icmp eq i64 %.val.i.i705.epil, 5
  %i.ccz = zext i1 %i.ccy to i64
  %i.cda = add i64 %.sroa.02.0.i.i.epil, %i.ccz   ; 2 uses
  %i.cdb = add nuw i64 %.sroa.04.0.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.preheader.i.epil, !llvm.loop !24080

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.i.epil, %bb.ajx
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.ajx ], [ %i.ccu, %.loopexit.loopexit.unr-lcssa ], [ %i.cda, %.preheader.i.epil ] ; 2 uses
  %i.cdc = icmp ule i64 %.sroa.0.0.i.i, %.val397
  call void @llvm.assume(i1 %i.cdc)
  %i.cdd = getelementptr inbounds nuw i8, ptr %1, i64 3512
  store i64 %.sroa.0.0.i.i, ptr %i.cdd, align 8
  br label %bb.ajy

bb.ajy:                                           ; preds = %.loopexit, %bb.rt
  %i.cde = getelementptr inbounds nuw i8, ptr %1, i64 1360
  %i.cdf = getelementptr inbounds nuw i8, ptr %1, i64 3040
  %.sroa.81343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4592
  store ptr %i.cde, ptr %.sroa.81343.0..sroa_idx, align 16
  %.sroa.91344.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4600
  store ptr %i.cdf, ptr %.sroa.91344.0..sroa_idx, align 8
  %.sroa.101345.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4608
  store i8 0, ptr %.sroa.101345.0..sroa_idx, align 16
  br label %bb.ake

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit767: ; preds = %bb.akd, %bb.aki, %bb.ajm, %bb.ajt, %bb.sx, %bb.aoo, %bb.aop, %bb.ajw, %bb.sa, %bb.sw, %bb.aiy, %bb.aqc
  %.pn298.pn = phi { ptr, i32 } [ %.pn298, %bb.sw ], [ %.pn296, %bb.aiy ], [ %i.amr, %bb.sx ], [ %i.cqk, %bb.aqc ], [ %.pn179, %bb.sa ], [ %i.cbt, %bb.ajw ], [ %.pn283.pn, %bb.aop ], [ %.pn283.pn, %bb.aoo ], [ %i.cbm, %bb.ajt ], [ %i.cbg, %bb.ajm ], [ %i.cdr, %bb.aki ], [ %i.cdn, %bb.akd ]
  %i.cdg = getelementptr inbounds nuw i8, ptr %1, i64 3656
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write7configs17WriterStatsConfigEBO_(ptr noalias noundef align 8 dereferenceable(40) %i.cdg) #46
          to label %.body707 unwind label %bb.as

bb.ajz:                                           ; preds = %bb.aju
  %.sroa.31311.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.em, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.31311.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.61308, i64 64, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !24082)
  %i.cdh = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store i64 %.sroa.01299.11698, ptr %i.cdh, align 16, !alias.scope !24085
  %.sroa.21310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  store i64 %.sroa.91301.sroa.0.11699, ptr %.sroa.21310.0..sroa_idx, align 8, !alias.scope !24085
  %.sroa.21310.sroa.2.0..sroa.21310.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  store ptr %.sroa.91301.sroa.7.11700, ptr %.sroa.21310.sroa.2.0..sroa.21310.0..sroa_idx.sroa_idx, align 16, !alias.scope !24085
  %.sroa.21310.sroa.3.0..sroa.21310.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  store i64 %.sroa.91301.sroa.8.11701, ptr %.sroa.21310.sroa.3.0..sroa.21310.0..sroa_idx.sroa_idx, align 8, !alias.scope !24085
  store i64 1, ptr %i.em, align 16, !alias.scope !24087, !noalias !24082
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit765

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit765: ; preds = %bb.aom, %bb.aon, %bb.aja, %bb.ajl, %bb.ajz, %bb.aln
  %i.cdi = getelementptr inbounds nuw i8, ptr %1, i64 3672 ; 4 uses
  %i.cdj = load i64, ptr %i.cdi, align 8, !range !17, !alias.scope !24088, !noundef !4
  %i.cdk = icmp eq i64 %i.cdj, -9223372036854775808
  br i1 %i.cdk, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write7configs17WriterStatsConfigEBO_.exit, label %bb.aka

bb.aka:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit765
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cdi)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i.i706 unwind label %bb.akb

bb.akb:                                           ; preds = %bb.aka
  %i.cdl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cdi)
          to label %.body707 unwind label %bb.akc

bb.akc:                                           ; preds = %bb.akb
  %i.cdm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i.i706: ; preds = %bb.aka
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cdi)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write7configs17WriterStatsConfigEBO_.exit unwind label %bb.aqg

bb.akd:                                           ; preds = %bb.ake
  %i.cdn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fp)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState20create_physical_plan0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 16 %i.cdo) #46
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit767 unwind label %bb.as

bb.ake:                                           ; preds = %bb.d, %bb.ajy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fp)
  %i.cdo = getelementptr inbounds nuw i8, ptr %1, i64 4256 ; 4 uses
  invoke fastcc void @_RNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtB6_12SessionState20create_physical_plan0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.fp, ptr noundef nonnull align 16 %i.cdo, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.akf unwind label %bb.akd

bb.akf:                                           ; preds = %bb.ake
  %i.cdp = load i64, ptr %i.fp, align 8, !range !12625, !noundef !4 ; 3 uses
  %i.cdq = icmp eq i64 %i.cdp, 21
  br i1 %i.cdq, label %bb.akg, label %bb.akh

bb.akg:                                           ; preds = %bb.akf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fp)
  store i64 2, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gm)
  br label %common.ret

bb.akh:                                           ; preds = %bb.akf
  %.sroa.31348.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %.sroa.31348.0.copyload = load ptr, ptr %.sroa.31348.0..sroa_idx, align 8 ; 5 uses
  %.sroa.51349.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %.sroa.51349.0.copyload = load ptr, ptr %.sroa.51349.0..sroa_idx, align 8 ; 4 uses
  %.sroa.71350.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.71350, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.71350.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fp)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState20create_physical_plan0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 16 %i.cdo)
          to label %bb.akj unwind label %bb.aki

bb.aki:                                           ; preds = %bb.akk, %bb.akh
  %i.cdr = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit767

bb.akj:                                           ; preds = %bb.akh
  %.not.i710 = icmp eq i64 %i.cdp, 20
  br i1 %.not.i710, label %bb.akl, label %bb.akk

bb.akk:                                           ; preds = %bb.akj
  %.sroa.41354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.41354.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.71350, i64 16, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !24093)
  store i64 %i.cdp, ptr %i.d, align 8, !noalias !24093
  %.sroa.21352.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.31348.0.copyload, ptr %.sroa.21352.0..sroa_idx, align 8, !noalias !24093
  %.sroa.31353.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.51349.0.copyload, ptr %.sroa.31353.0..sroa_idx, align 8, !noalias !24093
  %i.cds = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.cds, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.d)
          to label %bb.aln unwind label %bb.aki

bb.akl:                                           ; preds = %bb.akj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.31348.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.51349.0.copyload) ]
  %i.cdt = getelementptr inbounds nuw i8, ptr %1, i64 3472
  store ptr %.sroa.31348.0.copyload, ptr %i.cdt, align 16
  %i.cdu = getelementptr i8, ptr %1, i64 3480
  store ptr %.sroa.51349.0.copyload, ptr %i.cdu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.101378)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.171385)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.181386)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.191387)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.161369)
  %i.cdv = getelementptr inbounds nuw i8, ptr %1, i64 464 ; 2 uses
  %i.cdw = load i64, ptr %i.cdv, align 16, !range !17, !alias.scope !24096, !noundef !4
  %.not.i713 = icmp eq i64 %i.cdw, -9223372036854775808
  %..i714 = select i1 %.not.i713, ptr null, ptr %i.cdv
  %i.cdx = getelementptr inbounds nuw i8, ptr %1, i64 1360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fo)
  %i.cdy = atomicrmw add ptr %.sroa.31348.0.copyload, i64 1 monotonic, align 8
  %i.cdz = icmp slt i64 %i.cdy, 0
  br i1 %i.cdz, label %bb.akm, label %bb.akn

bb.akm:                                           ; preds = %bb.akl
  call void @llvm.trap()
  unreachable

bb.akn:                                           ; preds = %bb.akl
  store ptr %.sroa.31348.0.copyload, ptr %i.fo, align 16
  %i.cea = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store ptr %.sroa.51349.0.copyload, ptr %i.cea, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fn)
  %i.ceb = getelementptr inbounds nuw i8, ptr %1, i64 3568
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.fn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ceb)
          to label %bb.akq unwind label %bb.ako

bb.ako:                                           ; preds = %bb.akn
  %i.cec = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fn)
  call void @llvm.experimental.noalias.scope.decl(metadata !24099)
  call void @llvm.experimental.noalias.scope.decl(metadata !24102)
  %i.ced = load ptr, ptr %i.fo, align 16, !alias.scope !24105, !nonnull !4, !noundef !4
  %i.cee = atomicrmw sub ptr %i.ced, i64 1 release, align 8, !noalias !24105
  %i.cef = icmp eq i64 %i.cee, 1
  br i1 %i.cef, label %bb.akp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.akp:                                           ; preds = %bb.ako
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.fo) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.as

bb.akq:                                           ; preds = %bb.akn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fm)
  %i.ceg = getelementptr inbounds nuw i8, ptr %1, i64 496
  %.val398 = load ptr, ptr %i.ceg, align 16, !nonnull !4, !noundef !4
  %i.ceh = getelementptr i8, ptr %1, i64 504
  %.val399 = load ptr, ptr %i.ceh, align 8, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %i.cei = getelementptr inbounds nuw i8, ptr %.val399, i64 16
  %i.cej = load i64, ptr %i.cei, align 8, !range !3, !invariant.load !4
  %i.cek = add nsw i64 %i.cej, -1
  %i.cel = and i64 %i.cek, -16
  %i.cem = getelementptr inbounds nuw i8, ptr %.val398, i64 %i.cel
  %i.cen = getelementptr inbounds nuw i8, ptr %i.cem, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fl)
  %i.ceo = getelementptr inbounds nuw i8, ptr %1, i64 1008
  %i.cep = getelementptr inbounds nuw i8, ptr %i.fl, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.cep, ptr noundef nonnull align 16 dereferenceable(16) %i.ceo, i64 16, i1 false)
  store i8 1, ptr %i.fl, align 1
  %i.ceq = getelementptr inbounds nuw i8, ptr %.val399, i64 112
  %i.cer = load ptr, ptr %i.ceq, align 8, !invariant.load !4, !nonnull !4
  %i.ces = invoke { ptr, ptr } %i.cer(ptr noundef nonnull %i.cen, ptr noalias noundef nonnull align 1 captures(address) dereferenceable(17) %i.fl)
          to label %bb.aks unwind label %bb.akr   ; 2 uses

bb.akr:                                           ; preds = %bb.akq
  %i.cet = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fn) #46
          to label %bb.all unwind label %bb.as

bb.aks:                                           ; preds = %bb.akq
  %i.ceu = extractvalue { ptr, ptr } %i.ces, 0    ; 4 uses
  %i.cev = extractvalue { ptr, ptr } %i.ces, 1    ; 3 uses
  store ptr %i.ceu, ptr %i.cdo, align 16
  %i.cew = getelementptr inbounds nuw i8, ptr %1, i64 4264
  store ptr %i.cev, ptr %i.cew, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fl)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ceu) ]
  %i.cex = atomicrmw add ptr %i.ceu, i64 1 monotonic, align 8
  %i.cey = icmp slt i64 %i.cex, 0
  br i1 %i.cey, label %bb.akt, label %bb.aku

bb.akt:                                           ; preds = %bb.aks
  call void @llvm.trap()
  unreachable

bb.aku:                                           ; preds = %bb.aks
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cev) ]
  store ptr %i.ceu, ptr %i.fm, align 16
  %i.cez = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store ptr %i.cev, ptr %i.cez, align 8
  %i.cfa = getelementptr inbounds nuw i8, ptr %1, i64 3648
  %i.cfb = load i64, ptr %i.cfa, align 16, !noundef !4
  %i.cfc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cfd = load <2 x i64>, ptr %i.cfc, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fk)
  %i.cfe = getelementptr inbounds nuw i8, ptr %1, i64 4250
  store i8 0, ptr %i.cfe, align 2
  %i.cff = getelementptr inbounds nuw i8, ptr %1, i64 592
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.fk, ptr noundef nonnull align 16 dereferenceable(248) %i.cff, i64 248, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fj)
  %i.cfg = getelementptr inbounds nuw i8, ptr %1, i64 3656
  call void @llvm.experimental.noalias.scope.decl(metadata !24106)
  call void @llvm.experimental.noalias.scope.decl(metadata !24109)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.cfh = load <2 x i64>, ptr %i.cfg, align 8, !alias.scope !24109, !noalias !24106
  %i.cfi = getelementptr inbounds nuw i8, ptr %1, i64 3672 ; 2 uses
  %i.cfj = load i64, ptr %i.cfi, align 8, !range !17, !alias.scope !24109, !noalias !24106, !noundef !4
  %.not.i716 = icmp eq i64 %i.cfj, -9223372036854775808
  br i1 %.not.i716, label %bb.akx, label %bb.akv

bb.akv:                                           ; preds = %bb.aku
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cfi)
          to label %.noexc720 unwind label %bb.akw

.noexc720:                                        ; preds = %bb.akv
  %.sroa.0.0.copyload.i717 = load i64, ptr %i.c, align 8, !noalias !24111
  br label %bb.akx

bb.akw:                                           ; preds = %bb.akv
  %i.cfk = landingpad { ptr, i32 }
          cleanup
  br label %bb.alc

bb.akx:                                           ; preds = %.noexc720, %bb.aku
  %.sroa.0.0.i718 = phi i64 [ %.sroa.0.0.copyload.i717, %.noexc720 ], [ -9223372036854775808, %bb.aku ]
  %i.cfl = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store <2 x i64> %i.cfh, ptr %i.fj, align 16, !alias.scope !24106, !noalias !24109
  %i.cfm = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  store i64 %.sroa.0.0.i718, ptr %i.cfm, align 16, !alias.scope !24106, !noalias !24109
  %.sroa.5.0..sroa_idx2.i719 = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i719, ptr noundef nonnull align 8 dereferenceable(16) %i.cfl, i64 16, i1 false), !noalias !24109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fi)
  %i.cfn = getelementptr inbounds nuw i8, ptr %1, i64 3360 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24112)
  call void @llvm.experimental.noalias.scope.decl(metadata !24115)
  %i.cfo = load i64, ptr %i.cfn, align 16, !range !59, !alias.scope !24115, !noalias !24112, !noundef !4
  %.not.i722 = icmp eq i64 %i.cfo, 37
  br i1 %.not.i722, label %bb.akz, label %bb.aky

bb.aky:                                           ; preds = %bb.akx
  invoke fastcc void @_RNvXsV_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull align 16 captures(none) dereferenceable(112) %i.fi, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.cfn) #49
          to label %bb.ala unwind label %bb.alb

bb.akz:                                           ; preds = %bb.akx
  store i64 37, ptr %i.fi, align 16, !alias.scope !24112, !noalias !24115
  br label %bb.ala

bb.ala:                                           ; preds = %bb.akz, %bb.aky
  %i.cfp = getelementptr inbounds nuw i8, ptr %1, i64 4241
  %i.cfq = load i8, ptr %i.cfp, align 1, !range !178, !noundef !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.191387, ptr noundef nonnull align 8 dereferenceable(24) %i.fn, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.181386, ptr noundef nonnull align 8 dereferenceable(248) %i.fk, i64 248, i1 false)
  %.sroa.161369.304..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.161369, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.161369.304..sroa_idx, ptr noundef nonnull align 16 dereferenceable(40) %i.fj, i64 40, i1 false), !alias.scope !24117, !noalias !24121
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.101378, ptr noundef nonnull align 16 dereferenceable(112) %i.fi, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fk)
  %i.cfr = getelementptr inbounds nuw i8, ptr %1, i64 4272
  %.sroa.101378.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4288
  %.sroa.111379.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4400
  %.sroa.121380.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4408
  %.sroa.131381.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4416
  %.sroa.151383.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4432
  %i.cfs = load <2 x ptr>, ptr %i.fm, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fn)
  %i.cft = load <2 x ptr>, ptr %i.fo, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fo)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(168) %.sroa.171385, ptr noundef nonnull align 16 dereferenceable(168) %.sroa.161369, i64 168, i1 false), !alias.scope !24129
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.161369)
  store <2 x i64> %i.cfd, ptr %i.cfr, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.101378.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.101378, i64 112, i1 false)
  store ptr %i.cdx, ptr %.sroa.111379.0..sroa_idx, align 16
  store ptr @14, ptr %.sroa.121380.0..sroa_idx, align 8
  store <2 x ptr> %i.cft, ptr %.sroa.131381.0..sroa_idx, align 16
  store <2 x ptr> %i.cfs, ptr %.sroa.151383.0..sroa_idx, align 16
  %.sroa.171385.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(168) %.sroa.171385.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(168) %.sroa.171385, i64 168, i1 false)
  %.sroa.181386.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.181386.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(248) %.sroa.181386, i64 248, i1 false)
  %.sroa.191387.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4864
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.191387.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.191387, i64 24, i1 false)
  %.sroa.201388.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4888
  store ptr %..i714, ptr %.sroa.201388.0..sroa_idx, align 8
  %.sroa.211389.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4896
  store i64 %i.cfb, ptr %.sroa.211389.0..sroa_idx, align 16
  %.sroa.231391.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4936
  store i8 %i.cfq, ptr %.sroa.231391.0..sroa_idx, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4937
end_hunk_18
begin_hunk_19_@_RNCNvXs6_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providerNtB7_20TableProviderBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future0Bb_:bb.a
  %i.b = alloca [168 x i8], align 8               ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1016 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !1165, !noundef !4
  switch i8 %i.d, label %default.unreachable37 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.f
  ]

default.unreachable37:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 168
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.e, ptr noundef nonnull align 8 dereferenceable(168) %1, i64 168, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1008
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 8
  br label %bb.f

.body:                                            ; preds = %bb.n, %bb.e, %bb.j
  %.pn2 = phi { ptr, i32 } [ %i.p, %bb.n ], [ %i.j, %bb.j ], [ %i.f, %bb.e ]
  store i8 2, ptr %i.c, align 8
  resume { ptr, i32 } %.pn2

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @602) #50
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @602) #50
  unreachable

bb.e:                                             ; preds = %bb.f
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs5_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providerNtBO_20TableProviderBuilder5build0EBS_(ptr noundef nonnull align 8 %i.g) #46
          to label %.body unwind label %bb.s

bb.f:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 3 uses
  invoke fastcc void @_RNCNvMs5_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providerNtB7_20TableProviderBuilder5build0Bb_(ptr noalias noundef align 8 captures(none) dereferenceable(168) %i.b, ptr noundef nonnull align 8 %i.g, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  %i.h = load i64, ptr %i.b, align 8, !range !1127, !noundef !4 ; 3 uses
  %i.i = icmp eq i64 %i.h, 3
  br i1 %i.i, label %bb.h, label %bb.i

common.ret:                                       ; preds = %bb.q, %bb.h
  %storemerge = phi i8 [ 1, %bb.q ], [ 3, %bb.h ]
  store i8 %storemerge, ptr %i.c, align 8
  ret void

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 21, ptr %0, align 8
  br label %common.ret

bb.i:                                             ; preds = %bb.g
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.3.sroa.0.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.3.sroa.3.0.copyload = load ptr, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.3.sroa.5.0.copyload = load ptr, ptr %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.3.sroa.7.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.7.0..sroa.3.0..sroa_idx.sroa_idx, i64 16, i1 false)
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.510, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.510.0..sroa_idx, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs5_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providerNtBO_20TableProviderBuilder5build0EBS_(ptr noundef nonnull align 8 %i.g)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.i
  %i.k = icmp eq i64 %i.h, 2
  br i1 %i.k, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !25634
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.312.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.510, i64 120, i1 false)
  %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.7, i64 16, i1 false)
  store i64 1, ptr %i.a, align 8, !noalias !25634
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.l, align 8, !noalias !25634
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 %i.h, ptr %i.m, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.3.sroa.0.0.copyload, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %.sroa.3.sroa.3.0.copyload, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %.sroa.3.sroa.5.0.copyload, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !25637
  %i.n = tail call noundef align 8 dereferenceable_or_null(184) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 16481) 184, i64 noundef range(i64 8, 17) 8) #40, !noalias !25637 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.m, label %bb.p, !prof !52

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 184) #48
          to label %.noexc.i unwind label %bb.n, !noalias !25634

.noexc.i:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next9DeltaScanEBO_(ptr noalias noundef nonnull align 8 dereferenceable(168) %i.m)
          to label %.body unwind label %bb.o, !noalias !25634

bb.o:                                             ; preds = %bb.n
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !25634
  unreachable

bb.p:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.n, ptr noundef nonnull align 8 dereferenceable(184) %i.a, i64 184, i1 false), !noalias !25634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !25634
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %bb.p
  %.sroa.315.0 = phi ptr [ %.sroa.3.sroa.3.0.copyload, %bb.r ], [ %i.n, %bb.p ]
  %.sroa.013.0 = phi i64 [ %.sroa.3.sroa.0.0.copyload, %bb.r ], [ 20, %bb.p ]
  %.sroa.4.0 = phi ptr [ %.sroa.3.sroa.5.0.copyload, %bb.r ], [ @486, %bb.p ]
  store i64 %.sroa.013.0, ptr %0, align 8
  %.sroa.315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.315.0, ptr %.sroa.315.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.520.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.520, i64 16, i1 false)
  br label %common.ret

bb.r:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.520, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.7, i64 16, i1 false)
  br label %bb.q

bb.s:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs8_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtB7_9PreCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future0Bb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 16 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [3208 x i8], align 8              ; 6 uses
  %i.b = alloca [720 x i8], align 8               ; 13 uses
  %i.c = alloca [96 x i8], align 16               ; 4 uses
  %i.d = alloca [96 x i8], align 16               ; 7 uses
  %.sroa.3 = alloca [104 x i8], align 8           ; 3 uses
  %.sroa.4 = alloca [464 x i8], align 16          ; 2 uses
  %i.e = alloca [576 x i8], align 16              ; 8 uses
  %.sroa.2 = alloca [616 x i8], align 8           ; 4 uses
  %i.f = alloca [624 x i8], align 16              ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1208 ; 3 uses
  %i.h = load i8, ptr %i.g, align 8, !range !2678, !noundef !4
  switch i8 %i.h, label %default.unreachable42 [
    i8 0, label %bb.b
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.j
    i8 4, label %bb.y
    i8 5, label %bb.ao
  ]

default.unreachable42:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 624
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !25640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %i.b, ptr noundef nonnull align 16 dereferenceable(504) %i.i, i64 504, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1128
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1144
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1160
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1168
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1184
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 560
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.12.0..sroa_idx, i64 16, i1 false)
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1200
  %.sroa.13.0.copyload = load i8, ptr %.sroa.13.0..sroa_idx, align 16
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1201
  %.sroa.14.0.copyload = load i8, ptr %.sroa.14.0..sroa_idx, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 504
  %i.l = load <2 x ptr>, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %i.m = extractelement <2 x ptr> %i.l, i64 0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  %i.n = extractelement <2 x ptr> %i.l, i64 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  store <2 x ptr> %i.l, ptr %i.k, align 8, !noalias !25640
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 520
  %i.p = load <2 x ptr>, ptr %.sroa.7.0..sroa_idx, align 8
  store <2 x ptr> %i.p, ptr %i.o, align 8, !noalias !25640
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 536
  store i64 %.sroa.9.0.copyload, ptr %i.q, align 8, !noalias !25640
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 712
  store i8 %.sroa.13.0.copyload, ptr %i.r, align 8, !noalias !25640
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 713
  store i8 %.sroa.14.0.copyload, ptr %i.s, align 1, !noalias !25640
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 544
  %i.u = load <2 x ptr>, ptr %.sroa.10.0..sroa_idx, align 16
  store <2 x ptr> %i.u, ptr %i.t, align 8, !noalias !25640
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 714
  store i8 0, ptr %i.v, align 2, !noalias !25640
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !25643
  %i.w = tail call noundef align 8 dereferenceable_or_null(720) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 16481) 720, i64 noundef range(i64 8, 17) 8) #40, !noalias !25643 ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.c, label %bb.f, !prof !52

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 720) #48
          to label %.noexc.i unwind label %bb.d, !noalias !25640

.noexc.i:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs9_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtBO_9PreCommit27into_prepared_commit_future0EBS_(ptr noundef nonnull align 8 dereferenceable(720) %i.b) #46
          to label %.body13 unwind label %bb.e, !noalias !25640

bb.e:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !25640
  unreachable

bb.f:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %i.w, ptr noundef nonnull align 8 dereferenceable(720) %i.b, i64 720, i1 false), !noalias !25640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !25640
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 1216
  store ptr %i.w, ptr %i.aa, align 16
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 1224
  store ptr @693, ptr %i.ab, align 8
  br label %bb.j

.body13:                                          ; preds = %bb.d, %bb.av, %bb.aw, %bb.ak, %bb.af, %bb.ag, %bb.r, %bb.q, %bb.s, %bb.x, %bb.i, %bb.an
  %.pn = phi { ptr, i32 } [ %i.cn, %bb.aw ], [ %i.cb, %bb.an ], [ %i.bb, %bb.x ], [ %i.ac, %bb.i ], [ %i.cn, %bb.av ], [ %i.ao, %bb.q ], [ %i.ao, %bb.r ], [ %i.bz, %bb.ak ], [ %i.bn, %bb.af ], [ %i.au, %bb.s ], [ %i.bn, %bb.ag ], [ %i.y, %bb.d ]
  store i8 2, ptr %i.g, align 8
  resume { ptr, i32 } %.pn

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @603) #50
  unreachable

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @603) #50
  unreachable

bb.i:                                             ; preds = %bb.j
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.val7 = load ptr, ptr %i.ae, align 16
  %i.ad = getelementptr i8, ptr %1, i64 1224
  %.val8 = load ptr, ptr %i.ad, align 8, !nonnull !4, !align !18, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction14PreparedCommitNtNtB2A_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2A_(ptr %.val7, ptr nonnull %.val8) #46
          to label %.body13 unwind label %bb.w

bb.j:                                             ; preds = %bb.f, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 1216 ; 4 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction14PreparedCommitNtNtB2h_6errors15DeltaTableErrorENtNtB8_6marker4SendEL_EEB1v_4pollB2h_(ptr noalias noundef nonnull sret([624 x i8]) align 16 captures(address) dereferenceable(624) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.k unwind label %bb.i

bb.k:                                             ; preds = %bb.j
  %i.af = load i64, ptr %i.f, align 16, !range !1069, !noundef !4 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 2
  br i1 %i.ag, label %bb.l, label %bb.m

common.ret:                                       ; preds = %bb.aq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction15FinalizedCommitNtNtB2A_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2A_.exit, %bb.aa, %bb.l
  %.sink = phi i8 [ 5, %bb.aq ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction15FinalizedCommitNtNtB2A_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2A_.exit ], [ 4, %bb.aa ], [ 3, %bb.l ]
  store i8 %.sink, ptr %i.g, align 8
  ret void

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 -9223372036854775710, ptr %0, align 16
  br label %common.ret

bb.m:                                             ; preds = %bb.k
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(616) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(616) %.sroa.2.0..sroa_idx, i64 616, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.val5 = load ptr, ptr %i.ae, align 16          ; 5 uses
  %i.ah = getelementptr i8, ptr %1, i64 1224      ; 2 uses
  %.val6 = load ptr, ptr %i.ah, align 8, !nonnull !4, !align !18, !noundef !4 ; 5 uses
  %i.ai = load ptr, ptr %.val6, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  invoke void %i.ai(ptr noundef nonnull %.val5)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !range !16, !invariant.load !4 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction14PreparedCommitNtNtB2A_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2A_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.an = load i64, ptr %i.am, align 8, !range !3, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef range(i64 1, 0) %i.ak, i64 noundef range(i64 1, 536870913) %i.an) #40
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction14PreparedCommitNtNtB2A_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2A_.exit

bb.q:                                             ; preds = %bb.n
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !range !16, !invariant.load !4 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %.body13, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.as = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.at = load i64, ptr %i.as, align 8, !range !3, !invariant.load !4
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef range(i64 1, 0) %i.aq, i64 noundef range(i64 1, 536870913) %i.at) #40
  br label %.body13

bb.s:                                             ; preds = %bb.u
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body13

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction14PreparedCommitNtNtB2A_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2A_.exit: ; preds = %bb.p, %bb.o
  %i.av = trunc nuw i64 %i.af to i1
  br i1 %i.av, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction14PreparedCommitNtNtB2A_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2A_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.2.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.2, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.aw, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.2.16..sroa_idx, i64 96, i1 false)
  store i64 1, ptr %1, align 16, !alias.scope !25646, !noalias !25649
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.c, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.2.16..sroa_idx, i64 96, i1 false)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction15FinalizedCommitNtNtB2A_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2A_.exit

bb.u:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction14PreparedCommitNtNtB2A_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2A_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(616) %i.ax, ptr noundef nonnull align 8 dereferenceable(616) %.sroa.2, i64 616, i1 false)
  store i64 0, ptr %1, align 16, !alias.scope !25646, !noalias !25649
  %i.ay = invoke { ptr, ptr } @_RNvXsb_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtB5_14PreparedCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(616) %.sroa.2)
          to label %bb.v unwind label %bb.s

bb.v:                                             ; preds = %bb.u
  %i.az = extractvalue { ptr, ptr } %i.ay, 0
  store ptr %i.az, ptr %i.ae, align 16
  store ptr @1440, ptr %i.ah, align 8
  br label %bb.y

bb.w:                                             ; preds = %bb.x, %bb.i, %bb.an
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.x:                                             ; preds = %bb.y
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.val11 = load ptr, ptr %i.bd, align 16
  %i.bc = getelementptr i8, ptr %1, i64 1224
  %.val12 = load ptr, ptr %i.bc, align 8, !nonnull !4, !align !18, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction10PostCommitNtNtB2A_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2A_(ptr %.val11, ptr nonnull %.val12) #46
          to label %.body13 unwind label %bb.w

bb.y:                                             ; preds = %bb.v, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 1216 ; 4 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction10PostCommitNtNtB2h_6errors15DeltaTableErrorENtNtB8_6marker4SendEL_EEB1v_4pollB2h_(ptr noalias noundef nonnull sret([576 x i8]) align 16 captures(address) dereferenceable(576) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.z unwind label %bb.x

bb.z:                                             ; preds = %bb.y
  %i.be = load i64, ptr %i.e, align 16, !range !12625, !noundef !4 ; 3 uses
  %i.bf = icmp eq i64 %i.be, 21
  br i1 %i.bf, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 -9223372036854775710, ptr %0, align 16
  br label %common.ret

bb.ab:                                            ; preds = %bb.z
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.3.0..sroa_idx, i64 104, i1 false)
end_hunk_19
begin_hunk_20_@_RNCNvYNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider18DeltaTableProviderNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider14scan_with_args0Ba_:bb.a
  %.val10 = load ptr, ptr %i.j, align 8, !align !18, !noundef !4 ; 2 uses
  %i.k = getelementptr i8, ptr %1, i64 112
  %.val11 = load i64, ptr %i.k, align 8           ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26775)
  %.not.i14 = icmp eq ptr %.val10, null
  br i1 %.not.i14, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26778
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 1152921504606846976) %.val11, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.c
  %i.m = load i64, ptr %i.a, align 8, !range !58, !noalias !26778, !noundef !4
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !17, !noalias !26778, !noundef !4 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.n, label %bb.d, label %bb.e, !prof !52

bb.d:                                             ; preds = %.noexc
  %i.r = load i64, ptr %i.q, align 8, !noalias !26778
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.r) #48
          to label %.noexc15 unwind label %bb.h

.noexc15:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc
  %i.s = load ptr, ptr %i.q, align 8, !noalias !26778, !nonnull !4, !noundef !4 ; 2 uses
  %i.t = icmp samesign ule i64 %.val11, %i.p
  tail call void @llvm.assume(i1 %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26778
  %.not.i.i = icmp eq i64 %.val11, 0
  br i1 %.not.i.i, label %_RNCNCNvYNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider18DeltaTableProviderNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider14scan_with_args00Bc_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = shl nuw nsw i64 %.val11, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull readonly align 8 %.val10, i64 %i.u, i1 false), !noalias !26783
  br label %_RNCNCNvYNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider18DeltaTableProviderNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider14scan_with_args00Bc_.exit.i

_RNCNCNvYNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider18DeltaTableProviderNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider14scan_with_args00Bc_.exit.i: ; preds = %bb.f, %bb.e
  store i64 %i.p, ptr %i.l, align 8, !alias.scope !26775, !noalias !26784
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr %i.s, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !26775, !noalias !26784
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i64 %.val11, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !26775, !noalias !26784
  %i.v = icmp eq i64 %i.p, -9223372036854775808
  %i.w = select i1 %i.v, ptr null, ptr %i.l
  br label %bb.i

bb.g:                                             ; preds = %bb.b
  store i64 -9223372036854775808, ptr %i.l, align 8, !alias.scope !26775, !noalias !26784
  br label %bb.i

bb.h:                                             ; preds = %bb.d, %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body21

bb.i:                                             ; preds = %bb.g, %_RNCNCNvYNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider18DeltaTableProviderNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider14scan_with_args00Bc_.exit.i
  %.not.i16 = phi ptr [ null, %bb.g ], [ %i.w, %_RNCNCNvYNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider18DeltaTableProviderNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider14scan_with_args00Bc_.exit.i ]
  %i.y = load <2 x i64>, ptr %i.g, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aa = load <2 x ptr>, ptr %i.z, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !26785
  %i.ab = tail call noundef align 16 dereferenceable_or_null(816) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 16481) 816, i64 noundef range(i64 8, 17) 16) #40, !noalias !26785 ; 9 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %.noexc.i, label %bb.k, !prof !52

.noexc.i:                                         ; preds = %bb.i
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 816) #48
          to label %.noexc18 unwind label %bb.j

.noexc18:                                         ; preds = %.noexc.i
  unreachable

bb.j:                                             ; preds = %.noexc.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.i
  store <2 x i64> %i.y, ptr %i.ab, align 16
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <2 x ptr> %i.aa, ptr %.sroa.550.0..sroa_idx, align 16
  %.sroa.752.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr %..i, ptr %.sroa.752.0..sroa_idx, align 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store i64 %.5.i, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.953.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 784
  store ptr %i.f, ptr %.sroa.953.0..sroa_idx, align 16
  %.sroa.1054.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 792
  store ptr %.not.i16, ptr %.sroa.1054.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 800
  store i8 0, ptr %.sroa.11.0..sroa_idx, align 16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 144
  store ptr %i.ab, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 152
  store ptr @1508, ptr %i.af, align 8
  br label %bb.o

.body:                                            ; preds = %bb.w, %bb.v, %bb.n, %bb.j
  %.pn = phi { ptr, i32 } [ %i.au, %bb.v ], [ %i.ah, %bb.n ], [ %i.au, %bb.w ], [ %i.ad, %bb.j ]
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 120
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag) #46
          to label %.body21 unwind label %bb.ag

.body21:                                          ; preds = %bb.ae, %bb.z, %bb.ab, %bb.h, %.body
  %.pn3 = phi { ptr, i32 } [ %i.bj, %bb.ae ], [ %.pn, %.body ], [ %i.x, %bb.h ], [ %i.be, %bb.z ], [ %i.bg, %bb.ab ]
  store i8 2, ptr %i.c, align 8
  resume { ptr, i32 } %.pn3

bb.l:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @626) #50
  unreachable

bb.m:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @626) #50
  unreachable

bb.n:                                             ; preds = %bb.o
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val6 = load ptr, ptr %i.aj, align 8
  %i.ai = getelementptr i8, ptr %1, i64 152
  %.val7 = load ptr, ptr %i.ai, align 8, !nonnull !4, !align !18, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %.val6, ptr nonnull %.val7) #46
          to label %.body unwind label %bb.ag

bb.o:                                             ; preds = %bb.a, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.p unwind label %bb.n

bb.p:                                             ; preds = %bb.o
  %i.ak = load i64, ptr %i.b, align 8, !range !12625, !noundef !4 ; 3 uses
  %i.al = icmp eq i64 %i.ak, 21
  br i1 %i.al, label %bb.q, label %bb.r

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs14kWLkQVSKO_14deltalake_core.exit, %bb.q
  %storemerge = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs14kWLkQVSKO_14deltalake_core.exit ], [ 3, %bb.q ]
  store i8 %storemerge, ptr %i.c, align 8
  ret void

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 21, ptr %0, align 8
  br label %common.ret

bb.r:                                             ; preds = %bb.p
  %.sroa.344.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.am = load <2 x ptr>, ptr %.sroa.344.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val = load ptr, ptr %i.aj, align 8            ; 5 uses
  %i.an = getelementptr i8, ptr %1, i64 152
  %.val5 = load ptr, ptr %i.an, align 8, !nonnull !4, !align !18, !noundef !4 ; 5 uses
  %i.ao = load ptr, ptr %.val5, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i19, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.ao(ptr noundef nonnull %.val)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ap = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !range !16, !invariant.load !4 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.as = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %i.at = load i64, ptr %i.as, align 8, !range !3, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.aq, i64 noundef range(i64 1, 536870913) %i.at) #40
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit

bb.v:                                             ; preds = %bb.s
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !range !16, !invariant.load !4 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %.body, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ay = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !range !3, !invariant.load !4
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.aw, i64 noundef range(i64 1, 536870913) %i.az) #40
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.u, %bb.t
  %.not.i20 = icmp eq i64 %i.ak, 20
  br i1 %.not.i20, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  %i.ba = extractelement <2 x ptr> %i.am, i64 0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ba) ]
  %i.bb = extractelement <2 x ptr> %i.am, i64 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bb) ]
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.bc = load i64, ptr %3, align 8, !range !17, !alias.scope !26788, !noundef !4
  %i.bd = icmp eq i64 %i.bc, -9223372036854775808
  br i1 %i.bd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core.exit.i25.invoke unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %.body21 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.ab:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core.exit.i25.invoke
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body21

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core.exit.i25.invoke, %bb.ac, %bb.x
  store i64 %i.ak, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.am, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  br label %common.ret

bb.ac:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.bh = load i64, ptr %4, align 8, !range !17, !alias.scope !26791, !noundef !4
  %i.bi = icmp eq i64 %i.bh, -9223372036854775808
  br i1 %i.bi, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %4)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core.exit.i25.invoke unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %4)
          to label %.body21 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECs14kWLkQVSKO_14deltalake_core.exit.i25.invoke: ; preds = %bb.y, %bb.ad
  %5 = phi ptr [ %4, %bb.ad ], [ %3, %bb.y ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ab

bb.ag:                                            ; preds = %bb.n, %.body
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvYNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider18DeltaTableProviderNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider6update0Ba_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull align 8 captures(none) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [1 x i8], align 1                 ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.22 = alloca [24 x i8], align 8           ; 2 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.l = load i8, ptr %i.k, align 8, !range !102, !noundef !4
  switch i8 %i.l, label %default.unreachable60 [
    i8 0, label %bb.c
    i8 1, label %bb.x
    i8 2, label %bb.y
  ]

default.unreachable60:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.body44

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 0, ptr %i.e, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXNtCs8VI8w5SIoU4_15datafusion_expr12table_sourceNtB2_9TableTypeNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @627, ptr noundef nonnull %i.d)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.f, i64 24, i1 false), !alias.scope !26794
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26798
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc27 unwind label %bb.f

.noexc27:                                         ; preds = %bb.d
  %i.o = load i64, ptr %i.a, align 8, !range !58, !noalias !26798, !noundef !4
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !17, !noalias !26798, !noundef !4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.p, label %bb.e, label %bb.h, !prof !52

bb.e:                                             ; preds = %.noexc27
  %i.t = load i64, ptr %i.s, align 8, !noalias !26798
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.r, i64 %i.t) #48
          to label %.noexc28 unwind label %bb.f

.noexc28:                                         ; preds = %bb.e
  unreachable

.body:                                            ; preds = %bb.i, %bb.f, %bb.g
  %.pn13 = phi { ptr, i32 } [ %i.v, %bb.g ], [ %i.u, %bb.f ], [ %i.y, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #46
          to label %.body44 unwind label %bb.w

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.e, %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #46
          to label %.body unwind label %bb.w

bb.h:                                             ; preds = %.noexc27
  %i.w = load ptr, ptr %i.s, align 8, !noalias !26798, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26798
  store i64 %i.r, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.w, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.559.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.g, ptr %i.b, align 8
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.555.0..sroa_idx, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.x, align 8
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.557.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull @612, ptr noundef nonnull %i.b)
          to label %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit40 unwind label %bb.g

_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit40:     ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.i

bb.i:                                             ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit40
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit40
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.f

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i43 unwind label %bb.k

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body44 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i43: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.n unwind label %bb.m

.body44:                                          ; preds = %bb.m, %bb.k, %.body, %bb.b
  %.pn15 = phi { ptr, i32 } [ %i.m, %bb.b ], [ %.pn13, %.body ], [ %i.ac, %bb.m ], [ %i.aa, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.i) #46
          to label %.body49 unwind label %bb.w

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i43
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body44

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.22, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body49 unwind label %bb.q

bb.p:                                             ; preds = %bb.n
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

end_hunk_20
begin_hunk_21_@_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_flattenINtB5_10TryFlattenINtNtNtB9_6stream4then4ThenINtNtB9_4iter4IterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEENCNCNCNCNCNvMs7_NtNtB36_10operations8optimizeNtB4i_9MergePlan7execute00s_000NCB46_0EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB36_:bb.a

bb.z:                                             ; preds = %bb.aa
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !31164
  %.val6.i.i.i.i.i.i = load ptr, ptr %i.af, align 8, !noalias !31164
  %.val7.i.i.i.i.i.i = load ptr, ptr %i.ag, align 8, !noalias !31164, !nonnull !4, !align !18, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata15ParquetMetaDataENtNtB2S_6errors12ParquetErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %.val6.i.i.i.i.i.i, ptr nonnull %.val7.i.i.i.i.i.i) #46
          to label %.body.i.i.i.i.i.i unwind label %bb.an, !noalias !31169

bb.aa:                                            ; preds = %bb.w, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !31164
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata15ParquetMetaDataENtNtB2z_6errors12ParquetErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.af, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ab unwind label %bb.z, !noalias !31169

bb.ab:                                            ; preds = %bb.aa
  %i.ba = load i64, ptr %i.g, align 8, !range !1310, !noalias !31164, !noundef !4 ; 4 uses
  %i.bb = icmp eq i64 %i.ba, 9
  br i1 %i.bb, label %.thread.i.i.i.i.i, label %bb.ac

.thread.i.i.i.i.i:                                ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !31164
  store i8 3, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !noalias !31164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !31159
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i)
  br label %.thread.i.i.i.i

bb.ac:                                            ; preds = %bb.ab
  %.sroa.3.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !31164 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i.i.i, i64 16, i1 false), !noalias !31164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !31164
  %.val.i.i.i.i.i.i = load ptr, ptr %i.af, align 8, !noalias !31164 ; 5 uses
  %.val5.i.i.i.i.i.i = load ptr, ptr %i.ag, align 8, !noalias !31164, !nonnull !4, !align !18, !noundef !4 ; 5 uses
  %i.bc = load ptr, ptr %.val5.i.i.i.i.i.i, align 8, !invariant.load !4, !noalias !31169 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i) ]
  invoke void %i.bc(ptr noundef nonnull %.val.i.i.i.i.i.i)
          to label %bb.ae unwind label %bb.ag, !noalias !31169

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.bd = getelementptr inbounds nuw i8, ptr %.val5.i.i.i.i.i.i, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !range !16, !invariant.load !4, !noalias !31169 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata15ParquetMetaDataENtNtB2S_6errors12ParquetErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bg = getelementptr inbounds nuw i8, ptr %.val5.i.i.i.i.i.i, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !range !3, !invariant.load !4, !noalias !31169
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.be, i64 noundef range(i64 1, 536870913) %i.bh) #40, !noalias !31169
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata15ParquetMetaDataENtNtB2S_6errors12ParquetErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.ad
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.val5.i.i.i.i.i.i, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !range !16, !invariant.load !4, !noalias !31169 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %.body.i.i.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bm = getelementptr inbounds nuw i8, ptr %.val5.i.i.i.i.i.i, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !range !3, !invariant.load !4, !noalias !31169
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.bk, i64 noundef range(i64 1, 536870913) %i.bn) #40, !noalias !31169
  br label %.body.i.i.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata15ParquetMetaDataENtNtB2S_6errors12ParquetErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i: ; preds = %bb.af, %bb.ae
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ba, 8
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata15ParquetMetaDataENtNtB2S_6errors12ParquetErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i.i.i.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !31164
  store i8 0, ptr %i.ad, align 1, !noalias !31164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %i.ae, i64 72, i1 false), !noalias !31164
  invoke void @_RNvMs1_NtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_readerNtB5_19ArrowReaderMetadata7try_new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noundef nonnull %.sroa.3.0.copyload.i.i.i.i.i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.f)
          to label %bb.ap unwind label %bb.aj, !noalias !31169

bb.aj:                                            ; preds = %bb.ai
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !31164
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.aj, %bb.ah, %bb.ag, %bb.z, %bb.v
  %.pn.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.bo, %bb.aj ], [ %i.aw, %bb.v ], [ %i.az, %bb.z ], [ %i.bi, %bb.ag ], [ %i.bi, %bb.ah ] ; 2 uses
  %i.bp = load i8, ptr %i.ad, align 1, !range !178, !noalias !31164, !noundef !4
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.ao, label %bb.al

bb.ak:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata15ParquetMetaDataENtNtB2S_6errors12ParquetErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.314.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i.i.i, i64 16, i1 false), !noalias !31164
  store i64 %i.ba, ptr %i.e, align 8, !alias.scope !31170, !noalias !31164
  store ptr %.sroa.3.0.copyload.i.i.i.i.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !31170, !noalias !31164
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_reader18ArrowReaderOptionsECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %i.ae)
          to label %.thread84.i.i.i.i.i unwind label %bb.am, !noalias !31169

bb.al:                                            ; preds = %bb.ao, %bb.am, %.body.i.i.i.i.i.i
  %.pn3.i.i.i.i.i.i = phi { ptr, i32 } [ %i.br, %bb.am ], [ %.pn.pn.i.i.i.i.i.i, %bb.ao ], [ %.pn.pn.i.i.i.i.i.i, %.body.i.i.i.i.i.i ]
  store i8 0, ptr %i.ad, align 1, !noalias !31164
  store i8 2, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !noalias !31164
  br label %.body.i.i.i.i.i

bb.am:                                            ; preds = %bb.ak
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.thread84.i.i.i.i.i:                              ; preds = %bb.ak
  store i8 0, ptr %i.ad, align 1, !noalias !31164
  %.sroa.814.sroa.6.0.copyload88.i.i.i.i.i = load ptr, ptr %.sroa.314.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !31174
  %.sroa.814.sroa.7.0.copyload90.i.i.i.i.i = load ptr, ptr %.sroa.814.sroa.7.0..sroa.814.0..sroa_idx15.sroa_idx89.i.i.i.i.i, align 8, !noalias !31174
  store i8 1, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !noalias !31164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !31159
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i)
  br label %bb.aq

bb.an:                                            ; preds = %bb.ao, %bb.z
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !31169
  unreachable

bb.ao:                                            ; preds = %.body.i.i.i.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_reader18ArrowReaderOptionsECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %i.ae) #46
          to label %bb.al unwind label %bb.an, !noalias !31169

bb.ap:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !31164
  store i8 0, ptr %i.ad, align 1, !noalias !31164
  %.sroa.012.0.copyload13.pre.i.i.i.i.i = load i64, ptr %i.e, align 8, !noalias !31174 ; 2 uses
  %.sroa.814.sroa.0.0.copyload.pre.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !31174
  %.sroa.814.sroa.6.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.314.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !31174
  %.sroa.814.sroa.7.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.814.sroa.7.0..sroa.814.0..sroa_idx15.sroa_idx89.i.i.i.i.i, align 8, !noalias !31174
  store i8 1, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !noalias !31164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !31159
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i)
  %i.bt = icmp eq i64 %.sroa.012.0.copyload13.pre.i.i.i.i.i, 9
  br i1 %i.bt, label %.thread.i.i.i.i, label %bb.aq

.thread.i.i.i.i:                                  ; preds = %bb.ap, %.thread.i.i.i.i.i
  store i8 3, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !31159
  br label %_RNCNCNCNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBf_9MergePlan7execute00s_000Bj_.exit.thread.i.i

bb.aq:                                            ; preds = %bb.ap, %.thread84.i.i.i.i.i
  %.sroa.814.sroa.7.0.copyload94.i.i.i.i.i = phi ptr [ %.sroa.814.sroa.7.0.copyload90.i.i.i.i.i, %.thread84.i.i.i.i.i ], [ %.sroa.814.sroa.7.0.copyload.i.i.i.i.i, %bb.ap ] ; 2 uses
  %.sroa.814.sroa.6.0.copyload93.i.i.i.i.i = phi ptr [ %.sroa.814.sroa.6.0.copyload88.i.i.i.i.i, %.thread84.i.i.i.i.i ], [ %.sroa.814.sroa.6.0.copyload.i.i.i.i.i, %bb.ap ] ; 3 uses
  %.sroa.012.0.copyload1392.i.i.i.i.i = phi i64 [ %i.ba, %.thread84.i.i.i.i.i ], [ %.sroa.012.0.copyload13.pre.i.i.i.i.i, %bb.ap ] ; 2 uses
  %.sroa.814.sroa.0.0.copyload91.i.i.i.i.i = phi ptr [ %.sroa.3.0.copyload.i.i.i.i.i.i, %.thread84.i.i.i.i.i ], [ %.sroa.814.sroa.0.0.copyload.pre.i.i.i.i.i, %bb.ap ] ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs1_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerNtNtBR_12arrow_reader19ArrowReaderMetadata10load_asyncNtNtBP_5store19ParquetObjectReaderE0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.aa)
          to label %bb.as unwind label %bb.ar, !noalias !31163

bb.ar:                                            ; preds = %bb.aq
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.as:                                            ; preds = %bb.aq
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.012.0.copyload1392.i.i.i.i.i, 8
  br i1 %.not.i.i.i.i.i.i, label %bb.ay, label %bb.at

bb.at:                                            ; preds = %bb.as
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs4tdlwR1I4n2_7parquet5arrow12async_reader5store19ParquetObjectReaderECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.ac)
          to label %.thread.i.i.i unwind label %bb.av, !noalias !31163

bb.au:                                            ; preds = %bb.ax, %bb.av, %bb.p
  %.pn3.i.i.i.i.i = phi { ptr, i32 } [ %i.bv, %bb.av ], [ %.pn.i.i.i.i.i, %bb.ax ], [ %.pn.i.i.i.i.i, %bb.p ]
  store i8 0, ptr %i.ab, align 1, !noalias !31159
  store i8 2, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !31159
  br label %.body.i.i.i.i

bb.av:                                            ; preds = %bb.at
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.thread.i.i.i:                                    ; preds = %bb.at
  store i8 0, ptr %i.ab, align 1, !noalias !31159
  store i8 1, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !31159
  br label %bb.az

bb.aw:                                            ; preds = %bb.ax, %.body.i.i.i.i.i
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !31163
  unreachable

bb.ax:                                            ; preds = %bb.p
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs4tdlwR1I4n2_7parquet5arrow12async_reader5store19ParquetObjectReaderECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.ac) #46
          to label %bb.au unwind label %bb.aw, !noalias !31163

bb.ay:                                            ; preds = %bb.as
  %.sroa.064.0.copyload.i.i.i.i.i = load i64, ptr %i.ac, align 8, !noalias !31159 ; 2 uses
  %.sroa.565.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.565.0..sroa_idx.i.i.i.i.i, align 8, !noalias !31159
  %.sroa.666.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.666.0..sroa_idx.i.i.i.i.i, align 8, !noalias !31159
  %.sroa.767.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.767.0..sroa_idx.i.i.i.i.i, align 8, !noalias !31159
  %.sroa.868.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.868.0..sroa_idx.i.i.i.i.i, align 8, !noalias !31159
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.814.sroa.0.0.copyload91.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.814.sroa.6.0.copyload93.i.i.i.i.i) ]
  store i8 0, ptr %i.ab, align 1, !noalias !31159
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.1252.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.969.0..sroa_idx.i.i.i.i.i, i64 56, i1 false), !noalias !31149
  store i8 1, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !31159
  %i.bx = icmp eq i64 %.sroa.064.0.copyload.i.i.i.i.i, 3
  br i1 %i.bx, label %_RNCNCNCNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBf_9MergePlan7execute00s_000Bj_.exit.thread.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay, %.thread.i.i.i
  %.sroa.23.0.i.i121.i.i.i = phi ptr [ undef, %.thread.i.i.i ], [ %.sroa.814.sroa.7.0.copyload94.i.i.i.i.i, %bb.ay ]
  %.sroa.22.0.i.i120.i.i.i = phi ptr [ undef, %.thread.i.i.i ], [ %.sroa.814.sroa.6.0.copyload93.i.i.i.i.i, %bb.ay ]
  %.sroa.21.0.i.i119.i.i.i = phi ptr [ undef, %.thread.i.i.i ], [ %.sroa.814.sroa.0.0.copyload91.i.i.i.i.i, %bb.ay ]
  %.sroa.649.0.i.i118.i.i.i = phi ptr [ %.sroa.814.sroa.7.0.copyload94.i.i.i.i.i, %.thread.i.i.i ], [ %.sroa.868.0.copyload.i.i.i.i.i, %bb.ay ] ; 2 uses
  %.sroa.547.0.i.i117.i.i.i = phi ptr [ %.sroa.814.sroa.6.0.copyload93.i.i.i.i.i, %.thread.i.i.i ], [ %.sroa.767.0.copyload.i.i.i.i.i, %bb.ay ] ; 2 uses
  %.sroa.4.0.i.i116.i.i.i = phi ptr [ %.sroa.814.sroa.0.0.copyload91.i.i.i.i.i, %.thread.i.i.i ], [ %.sroa.666.0.copyload.i.i.i.i.i, %bb.ay ] ; 2 uses
  %.sroa.3.0.i.i115.i.i.i = phi i64 [ %.sroa.012.0.copyload1392.i.i.i.i.i, %.thread.i.i.i ], [ %.sroa.565.0.copyload.i.i.i.i.i, %bb.ay ] ; 2 uses
  %.sroa.043.0.i.i114.i.i.i = phi i64 [ 2, %.thread.i.i.i ], [ %.sroa.064.0.copyload.i.i.i.i.i, %bb.ay ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtBQ_12arrow_reader18ArrowReaderBuilderINtBO_11AsyncReaderNtNtBO_5store19ParquetObjectReaderEE16new_with_options0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.z)
          to label %bb.bc unwind label %bb.ba, !noalias !31158

bb.ba:                                            ; preds = %bb.az
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_RNCNCNCNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBf_9MergePlan7execute00s_000Bj_.exit.thread.i.i: ; preds = %bb.ay, %.thread.i.i.i.i
  store i8 3, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !31154
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1252.i.i.i)
  store i8 3, ptr %.sroa.986.0..sroa_idx87.i.i, align 8, !noalias !31149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !31142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !31142
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.981.i.i.i)
  br label %.loopexit

bb.bb:                                            ; preds = %bb.bd
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.bc:                                            ; preds = %bb.az
  store i8 1, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !31154
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.981.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.1252.i.i.i, i64 56, i1 false), !noalias !31149
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1252.i.i.i)
  %i.ca = icmp eq i64 %.sroa.043.0.i.i114.i.i.i, 2
  br i1 %i.ca, label %_RNCNCNCNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBf_9MergePlan7execute00s_000Bj_.exit.thread36.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.1220.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.981.i.i.i, i64 56, i1 false), !noalias !31149
  store i64 %.sroa.043.0.i.i114.i.i.i, ptr %i.i, align 8, !noalias !31149
  store i64 %.sroa.3.0.i.i115.i.i.i, ptr %.sroa.1018.0..sroa_idx.i.i.i, align 8, !noalias !31149
  store ptr %.sroa.4.0.i.i116.i.i.i, ptr %.sroa.1018.sroa.10.0..sroa.1018.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !31149
  store ptr %.sroa.547.0.i.i117.i.i.i, ptr %.sroa.1018.sroa.12.0..sroa.1018.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !31149
  store ptr %.sroa.649.0.i.i118.i.i.i, ptr %.sroa.1018.sroa.14.0..sroa.1018.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !31149
  store i64 0, ptr %.sroa.1220.sroa.8.0..sroa.1220.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !31149
  store i64 0, ptr %.sroa.1220.sroa.10.0..sroa.1220.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !31149
  store i64 2, ptr %.sroa.1220.sroa.12.0..sroa.1220.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !31149
  store i64 32, ptr %.sroa.1220.sroa.13.0..sroa.1220.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !31149
  store i64 -9223372036854775808, ptr %.sroa.1220.sroa.14.0..sroa.1220.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !31149
  store i64 -9223372036854775808, ptr %.sroa.1220.sroa.16.0..sroa.1220.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !31149
  store i64 -9223372036854775808, ptr %.sroa.1220.sroa.18.0..sroa.1220.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !31149
  store i64 -9223372036854775808, ptr %.sroa.1220.sroa.20.0..sroa.1220.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !31149
  store ptr %.sroa.21.0.i.i119.i.i.i, ptr %.sroa.1220.sroa.22.0..sroa.1220.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !31149
  store ptr %.sroa.22.0.i.i120.i.i.i, ptr %.sroa.1220.sroa.23.0..sroa.1220.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !31149
  store ptr %.sroa.23.0.i.i121.i.i.i, ptr %.sroa.1220.sroa.24.0..sroa.1220.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !31149
  store i64 1024, ptr %.sroa.1220.sroa.25.0..sroa.1220.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !31149
  store ptr null, ptr %.sroa.1220.sroa.26.0..sroa.1220.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !31149
  store i64 104857600, ptr %.sroa.1220.sroa.27.0..sroa.1220.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !31149
  invoke void @_RNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB7_12arrow_reader18ArrowReaderBuilderINtB5_11AsyncReaderNtNtB5_5store19ParquetObjectReaderEE5buildCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.h, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(288) %i.i)
          to label %_RNCNCNCNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBf_9MergePlan7execute00s_000Bj_.exit.i.i unwind label %bb.bb, !noalias !31153

_RNCNCNCNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBf_9MergePlan7execute00s_000Bj_.exit.thread36.i.i: ; preds = %bb.bc
  store i64 %.sroa.3.0.i.i115.i.i.i, ptr %.sroa.7.0..sroa_idx21.i.i, align 8, !alias.scope !31175, !noalias !31149
  store ptr %.sroa.4.0.i.i116.i.i.i, ptr %.sroa.2103.0..sroa_idx.i.i.i, align 8, !alias.scope !31175, !noalias !31149
  store ptr %.sroa.547.0.i.i117.i.i.i, ptr %.sroa.3104.0..sroa_idx.i.i.i, align 8, !alias.scope !31175, !noalias !31149
  store ptr %.sroa.649.0.i.i118.i.i.i, ptr %.sroa.4105.0..sroa_idx.i.i.i, align 8, !alias.scope !31175, !noalias !31149
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.7.0..sroa_idx21.i.i, i64 120, i1 false), !noalias !31179
  store i8 1, ptr %.sroa.986.0..sroa_idx87.i.i, align 8, !noalias !31149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !31142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !31142
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.981.i.i.i)
  br label %bb.cc

bb.be:                                            ; preds = %.body.i.i.i
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !31153
  unreachable

_RNCNCNCNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBf_9MergePlan7execute00s_000Bj_.exit.i.i: ; preds = %bb.bd
  %.sroa.019.0.copyload20.pr.i.i = load i64, ptr %i.h, align 8, !noalias !31179 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.7.0..sroa_idx21.i.i, i64 120, i1 false), !noalias !31179
  store i8 1, ptr %.sroa.986.0..sroa_idx87.i.i, align 8, !noalias !31149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !31142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !31142
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.981.i.i.i)
  %i.cc = icmp eq i64 %.sroa.019.0.copyload20.pr.i.i, 4
  br i1 %i.cc, label %.loopexit, label %bb.cc

bb.bf:                                            ; preds = %bb.d
  call void @_RNvXs0_NtNtCs8CRAYtH5WmW_12futures_util6stream4iterINtB5_4IterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB1U_(ptr noalias noundef nonnull sret([272 x i8]) align 8 captures(none) dereferenceable(272) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !noalias !31180
  %i.cd = load i64, ptr %i.k, align 8, !range !1127, !noalias !31142, !noundef !4 ; 2 uses
  switch i64 %i.cd, label %bb.bg [
    i64 3, label %_RNvXs2_NtCs7cL0Iqqqcdm_12futures_core6streamINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream4then4ThenINtNtBN_4iter4IterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEENCNCNCNCNCNvMs7_NtNtB2T_10operations8optimizeNtB45_9MergePlan7execute00s_000NCB3T_0ENtB5_9TryStream13try_poll_nextB2T_.exit.thread
    i64 2, label %_RNvXs2_NtCs7cL0Iqqqcdm_12futures_core6streamINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream4then4ThenINtNtBN_4iter4IterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEENCNCNCNCNCNvMs7_NtNtB2T_10operations8optimizeNtB45_9MergePlan7execute00s_000NCB3T_0ENtB5_9TryStream13try_poll_nextB2T_.exit.thread101
  ]

_RNvXs2_NtCs7cL0Iqqqcdm_12futures_core6streamINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream4then4ThenINtNtBN_4iter4IterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEENCNCNCNCNCNvMs7_NtNtB2T_10operations8optimizeNtB45_9MergePlan7execute00s_000NCB3T_0ENtB5_9TryStream13try_poll_nextB2T_.exit.thread101: ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.427.sroa.0.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !31138
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.ce

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !31142
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.2.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.3.0..sroa_idx.i.i, i64 264, i1 false), !noalias !31142
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.028.i.i)
  store i64 %i.cd, ptr %i.j, align 8, !noalias !31142
  %.val.i.i = load ptr, ptr %i.q, align 8, !noalias !31142, !nonnull !4, !noundef !4 ; 6 uses
  %.val15.i.i = load ptr, ptr %i.x, align 8, !noalias !31142 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !31181
  %i.ce = atomicrmw add ptr %.val.i.i, i64 1 monotonic, align 8, !noalias !31185
  %i.cf = icmp slt i64 %i.ce, 0
  br i1 %i.cf, label %bb.bl, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val15.i.i) ]
  store ptr %.val.i.i, ptr %i.d, align 8, !noalias !31181
  store ptr %.val15.i.i, ptr %i.s, align 8, !noalias !31181
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !31181
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !31181
  invoke void @_RNvXs_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage5utilsNtCsjyY8HP3IvQ6_12object_store10ObjectMetaINtNtCsbvkFyIu7lgC_4core7convert7TryFromRNtNtNtNtBa_6kernel6models7actions3AddE8try_from(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.j)
          to label %bb.bj unwind label %bb.bi, !noalias !31186

bb.bi:                                            ; preds = %bb.bh
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEBO_(ptr noalias noundef nonnull align 8 dereferenceable(272) %i.j) #46
          to label %.thread4.i.i.i unwind label %bb.bk, !noalias !31187

bb.bj:                                            ; preds = %bb.bh
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEBO_(ptr noalias noundef nonnull align 8 dereferenceable(272) %i.j)
          to label %_RNvXNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage5utilsNtCsjyY8HP3IvQ6_12object_store10ObjectMetaINtNtCsbvkFyIu7lgC_4core7convert7TryFromNtNtNtNtB8_6kernel6models7actions3AddE8try_from.exit.i.i.i unwind label %.thread16.i.i.i, !noalias !31186

.thread16.i.i.i:                                  ; preds = %bb.bj
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %.thread4.i.i.i

bb.bk:                                            ; preds = %bb.bi
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !31187
  unreachable

bb.bl:                                            ; preds = %bb.bg
  call void @llvm.trap()
  unreachable

_RNvXNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage5utilsNtCsjyY8HP3IvQ6_12object_store10ObjectMetaINtNtCsbvkFyIu7lgC_4core7convert7TryFromNtNtNtNtB8_6kernel6models7actions3AddE8try_from.exit.i.i.i: ; preds = %bb.bj
  call void @llvm.experimental.noalias.scope.decl(metadata !31190)
  call void @llvm.experimental.noalias.scope.decl(metadata !31193)
  %i.cj = load i64, ptr %i.b, align 16, !range !58, !alias.scope !31193, !noalias !31195, !noundef !4
  %i.ck = trunc nuw i64 %i.cj to i1
  br i1 %i.ck, label %bb.bm, label %bb.bq, !prof !52

bb.bm:                                            ; preds = %_RNvXNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage5utilsNtCsjyY8HP3IvQ6_12object_store10ObjectMetaINtNtCsbvkFyIu7lgC_4core7convert7TryFromNtNtNtNtB8_6kernel6models7actions3AddE8try_from.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31197
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull readonly align 16 dereferenceable(96) %i.cl, i64 96, i1 false), !noalias !31195
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @632, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @635, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #48
          to label %bb.bo unwind label %bb.bn, !noalias !31198

bb.bn:                                            ; preds = %bb.bm
  %i.cm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEBK_(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.a) #46
          to label %.thread4.i.i.i unwind label %bb.bp, !noalias !31198

bb.bo:                                            ; preds = %bb.bm
  unreachable

bb.bp:                                            ; preds = %bb.bn
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !31198
  unreachable

bb.bq:                                            ; preds = %_RNvXNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage5utilsNtCsjyY8HP3IvQ6_12object_store10ObjectMetaINtNtCsbvkFyIu7lgC_4core7convert7TryFromNtNtNtNtB8_6kernel6models7actions3AddE8try_from.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.t, i64 96, i1 false), !alias.scope !31199, !noalias !31200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !31181
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.028.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !31201
  %i.co = load i64, ptr %i.u, align 8, !noalias !31181, !noundef !4 ; 3 uses
  %i.cp = load i64, ptr %i.v, align 8, !range !17, !alias.scope !31202, !noalias !31181, !noundef !4
  %i.cq = icmp eq i64 %i.cp, -9223372036854775808
  br i1 %i.cq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i unwind label %bb.bs, !noalias !31186

bb.bs:                                            ; preds = %bb.br
  %i.cr = landingpad { ptr, i32 }
end_hunk_21
begin_hunk_22_@_RNvXs2_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone:bb.a
  br label %bb.as

bb.bs:                                            ; preds = %bb.bp
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs2_NtCshmPyUV8PP35_6chrono6formatNtB5_10ParseErrorNtNtCsbvkFyIu7lgC_4core5error5Error11description(ptr noalias readonly captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @1002, i64 41 }
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs2_NtCsjyY8HP3IvQ6_12object_store6prefixINtB5_11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB7_11ObjectStoreEL_EEB1y_10get_rangesCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 576460752303423488) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %3, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i8 0, ptr %i.e, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !32066
  %i.f = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 16481) 80, i64 noundef range(i64 8, 17) 8) #40, !noalias !32066 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvXs2_NtCsjyY8HP3IvQ6_12object_store6prefixINtBM_11PrefixStoreINtNtB4_4sync3ArcDNtBO_11ObjectStoreEL_EEB1Y_10get_ranges0E3newCs14kWLkQVSKO_14deltalake_core.exit, !prof !52

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #48
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXs2_NtCsjyY8HP3IvQ6_12object_store6prefixINtBO_11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBQ_11ObjectStoreEL_EEB2h_10get_ranges0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 dereferenceable(80) %i.a) #46
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.h

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvXs2_NtCsjyY8HP3IvQ6_12object_store6prefixINtBM_11PrefixStoreINtNtB4_4sync3ArcDNtBO_11ObjectStoreEL_EEB1Y_10get_ranges0E3newCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = insertvalue { ptr, ptr } poison, ptr %i.f, 0
  %i.k = insertvalue { ptr, ptr } %i.j, ptr @1003, 1
  ret { ptr, ptr } %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs2_NtCsjyY8HP3IvQ6_12object_store6prefixINtB5_11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB7_11ObjectStoreEL_EEB1y_13put_multipartCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i8 0, ptr %i.c, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !32069
  %i.d = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 16481) 64, i64 noundef range(i64 8, 17) 8) #40, !noalias !32069 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvXs2_NtCsjyY8HP3IvQ6_12object_store6prefixINtBM_11PrefixStoreINtNtB4_4sync3ArcDNtBO_11ObjectStoreEL_EEB1Y_13put_multipart0E3newCs14kWLkQVSKO_14deltalake_core.exit, !prof !52

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #48
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXs2_NtCsjyY8HP3IvQ6_12object_store6prefixINtBO_11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBQ_11ObjectStoreEL_EEB2h_13put_multipart0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #46
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvXs2_NtCsjyY8HP3IvQ6_12object_store6prefixINtBM_11PrefixStoreINtNtB4_4sync3ArcDNtBO_11ObjectStoreEL_EEB1Y_13put_multipart0E3newCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr @1004, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs2_NtCsjyY8HP3IvQ6_12object_store6prefixINtB5_11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB7_11ObjectStoreEL_EEB1y_16list_with_offsetCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 5 uses
  %i.b = alloca [256 x i8], align 8               ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !32072
  call void @_RNvMNtCsjyY8HP3IvQ6_12object_store4pathNtB2_4Path5parts(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0), !noalias !32077
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  call void @_RNvMNtCsjyY8HP3IvQ6_12object_store4pathNtB2_4Path5parts(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2), !noalias !32078
  call void @_RINvXs4_NtCsjyY8HP3IvQ6_12object_store4pathNtB6_4PathINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorNtNtB6_5parts8PathPartE9from_iterINtNtNtBW_8adapters5chain5ChainINtNtB2r_3map3MapINtNtNtBY_3str4iter15SplitTerminatorReENCNvMB6_BF_5parts0EB2R_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(256) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !32072
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.e, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.57.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !32079
  invoke void @_RNvMNtCsjyY8HP3IvQ6_12object_store4pathNtB2_4Path5parts(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  %spec.select = select i1 %.not, ptr %i.e, ptr %1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  invoke void @_RNvMNtCsjyY8HP3IvQ6_12object_store4pathNtB2_4Path5parts(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %spec.select)
          to label %.noexc16 unwind label %bb.b

.noexc16:                                         ; preds = %.noexc
  invoke void @_RINvXs4_NtCsjyY8HP3IvQ6_12object_store4pathNtB6_4PathINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorNtNtB6_5parts8PathPartE9from_iterINtNtNtBW_8adapters5chain5ChainINtNtB2r_3map3MapINtNtNtBY_3str4iter15SplitTerminatorReENCNvMB6_BF_5parts0EB2R_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(256) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %.noexc16, %.noexc, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #46
          to label %.body24 unwind label %bb.s

bb.c:                                             ; preds = %.noexc16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32079
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body18 unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.c
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.f

.body18:                                          ; preds = %bb.j, %bb.f, %bb.d, %bb.r
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.r ], [ %i.k, %bb.d ], [ %i.m, %bb.f ], [ %i.t, %bb.j ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #46
          to label %.body24 unwind label %bb.s

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body18

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = invoke { ptr, ptr } @_RNvXsc_CsjyY8HP3IvQ6_12object_storeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB5_11ObjectStoreEL_EB16_16list_with_offset(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g)
          to label %bb.g unwind label %bb.f       ; 2 uses

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit
  %i.p = extractvalue { ptr, ptr } %i.o, 0        ; 3 uses
  %i.q = extractvalue { ptr, ptr } %i.o, 1        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0)
          to label %bb.h unwind label %bb.r

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.p, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.q, ptr %.sroa.510.0..sroa_idx, align 8
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !32084
  %i.r = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 16481) 40, i64 noundef range(i64 8, 17) 8) #40, !noalias !32084 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.i, label %bb.l, !prof !52

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #48
          to label %.noexc21 unwind label %bb.j

.noexc21:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream5MapOkINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB3I_5ErrorENtNtB4_6marker4SendEL_EENCNvXs2_NtB3I_6prefixINtB55_11PrefixStoreINtNtB1Z_4sync3ArcDNtB3I_11ObjectStoreEL_EEB5V_16list_with_offset0EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d) #46
          to label %.body18 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.l:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i23 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body24 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i23: ; preds = %bb.l
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit27 unwind label %bb.o

.body24:                                          ; preds = %bb.o, %bb.m, %.body18, %bb.b
  %.pn13 = phi { ptr, i32 } [ %i.j, %bb.b ], [ %.pn, %.body18 ], [ %i.x, %bb.o ], [ %i.v, %bb.m ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #46
          to label %common.resume unwind label %bb.s

bb.o:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i23
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body24

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit27: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit30 unwind label %bb.p

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit27
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

common.resume:                                    ; preds = %.body24, %bb.p
  %common.resume.op = phi { ptr, i32 } [ %i.y, %bb.p ], [ %.pn13, %.body24 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit30: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit27
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.aa = insertvalue { ptr, ptr } poison, ptr %i.r, 0
  %i.ab = insertvalue { ptr, ptr } %i.aa, ptr @1005, 1
  ret { ptr, ptr } %i.ab

bb.r:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2K_5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %i.p, ptr nonnull %i.q) #46
          to label %.body18 unwind label %bb.s

bb.s:                                             ; preds = %bb.r, %.body24, %.body18, %bb.b
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs2_NtCsjyY8HP3IvQ6_12object_store6prefixINtB5_11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB7_11ObjectStoreEL_EEB1y_18copy_if_not_existsCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i8 0, ptr %i.d, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !32087
  %i.e = tail call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 16481) 96, i64 noundef range(i64 8, 17) 8) #40, !noalias !32087 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvXs2_NtCsjyY8HP3IvQ6_12object_store6prefixINtBM_11PrefixStoreINtNtB4_4sync3ArcDNtBO_11ObjectStoreEL_EEB1Y_18copy_if_not_exists0E3newCs14kWLkQVSKO_14deltalake_core.exit, !prof !52

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #48
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXs2_NtCsjyY8HP3IvQ6_12object_store6prefixINtBO_11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBQ_11ObjectStoreEL_EEB2h_18copy_if_not_exists0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 dereferenceable(96) %i.a) #46
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.g

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvXs2_NtCsjyY8HP3IvQ6_12object_store6prefixINtBM_11PrefixStoreINtNtB4_4sync3ArcDNtBO_11ObjectStoreEL_EEB1Y_18copy_if_not_exists0E3newCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.e, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = insertvalue { ptr, ptr } poison, ptr %i.e, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr @1006, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs2_NtCsjyY8HP3IvQ6_12object_store6prefixINtB5_11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB7_11ObjectStoreEL_EEB1y_18put_multipart_optsCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %0, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 80, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i8 0, ptr %i.d, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !32090
  %i.e = tail call noundef align 8 dereferenceable_or_null(144) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 16481) 144, i64 noundef range(i64 8, 17) 8) #40, !noalias !32090 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvXs2_NtCsjyY8HP3IvQ6_12object_store6prefixINtBM_11PrefixStoreINtNtB4_4sync3ArcDNtBO_11ObjectStoreEL_EEB1Y_18put_multipart_opts0E3newCs14kWLkQVSKO_14deltalake_core.exit, !prof !52

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 144) #48
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXs2_NtCsjyY8HP3IvQ6_12object_store6prefixINtBO_11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBQ_11ObjectStoreEL_EEB2h_18put_multipart_opts0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 dereferenceable(144) %i.a) #46
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.g

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvXs2_NtCsjyY8HP3IvQ6_12object_store6prefixINtBM_11PrefixStoreINtNtB4_4sync3ArcDNtBO_11ObjectStoreEL_EEB1Y_18put_multipart_opts0E3newCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.e, ptr noundef nonnull align 8 dereferenceable(144) %i.a, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = insertvalue { ptr, ptr } poison, ptr %i.e, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr @1007, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs2_NtCsjyY8HP3IvQ6_12object_store6prefixINtB5_11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB7_11ObjectStoreEL_EEB1y_19list_with_delimiterCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
end_hunk_22
begin_hunk_23_@_RNvXs2_NtCsjyY8HP3IvQ6_12object_store6prefixINtB5_11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB7_11ObjectStoreEL_EEB1y_3putCs14kWLkQVSKO_14deltalake_core:bb.a

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXs2_NtCsjyY8HP3IvQ6_12object_store6prefixINtBO_11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBQ_11ObjectStoreEL_EEB2h_3put0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 dereferenceable(80) %i.a) #46
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.i

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvXs2_NtCsjyY8HP3IvQ6_12object_store6prefixINtBM_11PrefixStoreINtNtB4_4sync3ArcDNtBO_11ObjectStoreEL_EEB1Y_3put0E3newCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.g, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = insertvalue { ptr, ptr } poison, ptr %i.g, 0
  %i.l = insertvalue { ptr, ptr } %i.k, ptr @1011, 1
  ret { ptr, ptr } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs2_NtCsjyY8HP3IvQ6_12object_store6prefixINtB5_11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB7_11ObjectStoreEL_EEB1y_4copyCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i8 0, ptr %i.d, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !32105
  %i.e = tail call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 16481) 96, i64 noundef range(i64 8, 17) 8) #40, !noalias !32105 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvXs2_NtCsjyY8HP3IvQ6_12object_store6prefixINtBM_11PrefixStoreINtNtB4_4sync3ArcDNtBO_11ObjectStoreEL_EEB1Y_4copy0E3newCs14kWLkQVSKO_14deltalake_core.exit, !prof !52

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #48
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXs2_NtCsjyY8HP3IvQ6_12object_store6prefixINtBO_11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBQ_11ObjectStoreEL_EEB2h_4copy0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 dereferenceable(96) %i.a) #46
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.g

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvXs2_NtCsjyY8HP3IvQ6_12object_store6prefixINtBM_11PrefixStoreINtNtB4_4sync3ArcDNtBO_11ObjectStoreEL_EEB1Y_4copy0E3newCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.e, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = insertvalue { ptr, ptr } poison, ptr %i.e, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr @1012, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs2_NtCsjyY8HP3IvQ6_12object_store6prefixINtB5_11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB7_11ObjectStoreEL_EEB1y_4headCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i8 0, ptr %i.c, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !32108
  %i.d = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 16481) 72, i64 noundef range(i64 8, 17) 8) #40, !noalias !32108 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvXs2_NtCsjyY8HP3IvQ6_12object_store6prefixINtBM_11PrefixStoreINtNtB4_4sync3ArcDNtBO_11ObjectStoreEL_EEB1Y_4head0E3newCs14kWLkQVSKO_14deltalake_core.exit, !prof !52

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #48
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXs2_NtCsjyY8HP3IvQ6_12object_store6prefixINtBO_11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBQ_11ObjectStoreEL_EEB2h_4head0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 dereferenceable(72) %i.a) #46
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvXs2_NtCsjyY8HP3IvQ6_12object_store6prefixINtBM_11PrefixStoreINtNtB4_4sync3ArcDNtBO_11ObjectStoreEL_EEB1Y_4head0E3newCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr @1013, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs2_NtCsjyY8HP3IvQ6_12object_store6prefixINtB5_11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB7_11ObjectStoreEL_EEB1y_4listCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.57.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !32111
  invoke void @_RNvMNtCsjyY8HP3IvQ6_12object_store4pathNtB2_4Path5parts(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  %spec.select = select i1 %.not, ptr %i.d, ptr %1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  invoke void @_RNvMNtCsjyY8HP3IvQ6_12object_store4pathNtB2_4Path5parts(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %spec.select)
          to label %.noexc15 unwind label %bb.b

.noexc15:                                         ; preds = %.noexc
  invoke void @_RINvXs4_NtCsjyY8HP3IvQ6_12object_store4pathNtB6_4PathINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorNtNtB6_5parts8PathPartE9from_iterINtNtNtBW_8adapters5chain5ChainINtNtB2r_3map3MapINtNtNtBY_3str4iter15SplitTerminatorReENCNvMB6_BF_5parts0EB2R_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(256) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %.noexc15, %.noexc, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #46
          to label %common.resume unwind label %bb.p

bb.c:                                             ; preds = %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32111
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body17 unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.c
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.f

.body17:                                          ; preds = %bb.j, %bb.f, %bb.d, %bb.o
  %.pn = phi { ptr, i32 } [ %i.w, %bb.o ], [ %i.h, %bb.d ], [ %i.j, %bb.f ], [ %i.q, %bb.j ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #46
          to label %common.resume unwind label %bb.p

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body17

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = invoke { ptr, ptr } @_RNvXsc_CsjyY8HP3IvQ6_12object_storeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB5_11ObjectStoreEL_EB16_4list(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %i.e)
          to label %bb.g unwind label %bb.f       ; 2 uses

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit
  %i.m = extractvalue { ptr, ptr } %i.l, 0        ; 3 uses
  %i.n = extractvalue { ptr, ptr } %i.l, 1        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.m, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.n, ptr %.sroa.510.0..sroa_idx, align 8
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !32116
  %i.o = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 16481) 40, i64 noundef range(i64 8, 17) 8) #40, !noalias !32116 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.i, label %bb.l, !prof !52

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #48
          to label %.noexc20 unwind label %bb.j

.noexc20:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream5MapOkINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB3I_5ErrorENtNtB4_6marker4SendEL_EENCNvXs2_NtB3I_6prefixINtB55_11PrefixStoreINtNtB1Z_4sync3ArcDNtB3I_11ObjectStoreEL_EEB5V_4list0EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) #46
          to label %.body17 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.l:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit23 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

common.resume:                                    ; preds = %bb.b, %.body17, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.m ], [ %.pn, %.body17 ], [ %i.g, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit23: ; preds = %bb.l
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.u = insertvalue { ptr, ptr } poison, ptr %i.o, 0
  %i.v = insertvalue { ptr, ptr } %i.u, ptr @1014, 1
  ret { ptr, ptr } %i.v

bb.o:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2K_5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %i.m, ptr nonnull %i.n) #46
          to label %.body17 unwind label %bb.p

bb.p:                                             ; preds = %bb.o, %.body17, %bb.b
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs2_NtCsjyY8HP3IvQ6_12object_store6prefixINtB5_11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB7_11ObjectStoreEL_EEB1y_6deleteCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i8 0, ptr %i.c, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !32119
  %i.d = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 16481) 64, i64 noundef range(i64 8, 17) 8) #40, !noalias !32119 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvXs2_NtCsjyY8HP3IvQ6_12object_store6prefixINtBM_11PrefixStoreINtNtB4_4sync3ArcDNtBO_11ObjectStoreEL_EEB1Y_6delete0E3newCs14kWLkQVSKO_14deltalake_core.exit, !prof !52

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #48
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXs2_NtCsjyY8HP3IvQ6_12object_store6prefixINtBO_11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBQ_11ObjectStoreEL_EEB2h_6delete0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #46
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvXs2_NtCsjyY8HP3IvQ6_12object_store6prefixINtBM_11PrefixStoreINtNtB4_4sync3ArcDNtBO_11ObjectStoreEL_EEB1Y_6delete0E3newCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr @1015, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs2_NtCsjyY8HP3IvQ6_12object_store6prefixINtB5_11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB7_11ObjectStoreEL_EEB1y_6renameCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i8 0, ptr %i.d, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !32122
  %i.e = tail call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 16481) 96, i64 noundef range(i64 8, 17) 8) #40, !noalias !32122 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvXs2_NtCsjyY8HP3IvQ6_12object_store6prefixINtBM_11PrefixStoreINtNtB4_4sync3ArcDNtBO_11ObjectStoreEL_EEB1Y_6rename0E3newCs14kWLkQVSKO_14deltalake_core.exit, !prof !52

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #48
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXs2_NtCsjyY8HP3IvQ6_12object_store6prefixINtBO_11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBQ_11ObjectStoreEL_EEB2h_6rename0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 dereferenceable(96) %i.a) #46
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.g

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvXs2_NtCsjyY8HP3IvQ6_12object_store6prefixINtBM_11PrefixStoreINtNtB4_4sync3ArcDNtBO_11ObjectStoreEL_EEB1Y_6rename0E3newCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.e, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = insertvalue { ptr, ptr } poison, ptr %i.e, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr @1016, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs2_NtCsjyY8HP3IvQ6_12object_store6prefixINtB5_11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB7_11ObjectStoreEL_EEB1y_8get_optsCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(136) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [200 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store ptr %0, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.a, ptr noundef nonnull align 8 dereferenceable(136) %2, i64 136, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store i8 0, ptr %i.d, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !32125
  %i.e = tail call noundef align 8 dereferenceable_or_null(200) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 16481) 200, i64 noundef range(i64 8, 17) 8) #40, !noalias !32125 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvXs2_NtCsjyY8HP3IvQ6_12object_store6prefixINtBM_11PrefixStoreINtNtB4_4sync3ArcDNtBO_11ObjectStoreEL_EEB1Y_8get_opts0E3newCs14kWLkQVSKO_14deltalake_core.exit, !prof !52

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 200) #48
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXs2_NtCsjyY8HP3IvQ6_12object_store6prefixINtBO_11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBQ_11ObjectStoreEL_EEB2h_8get_opts0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 dereferenceable(200) %i.a) #46
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.e:                                             ; preds = %bb.c
end_hunk_23
begin_hunk_24_@_RNvXs7_NtCs6Po7BT7Nknu_5alloc5sliceSNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNtNtB7_6borrow7ToOwned8to_ownedBG_:bb.a

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBS_.exit: ; preds = %.lr.ph.i, %bb.d, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i
  store i64 %2, ptr %i.m, align 8, !noalias !32233
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !32238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !32233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs7_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6ColumnNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 10 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [56 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = load i64, ptr %1, align 8, !range !1127, !noundef !4 ; 3 uses
  %.not = icmp eq i64 %i.e, 3
  %.sink18.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sink18.i.sroa.gep2 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sink15.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sink15.i.sroa.gep3 = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32242)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !32242, !noalias !32239, !nonnull !4, !noundef !4 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !32242, !noalias !32239, !noundef !4 ; 3 uses
  %i.j = atomicrmw add ptr %i.g, i64 1 monotonic, align 8, !noalias !32244
  %i.k = icmp slt i64 %i.j, 0                     ; 3 uses
  switch i64 %i.e, label %default.unreachable [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  br i1 %i.k, label %bb.f, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.d:                                             ; preds = %bb.b
  br i1 %i.k, label %bb.h, label %bb.g

bb.e:                                             ; preds = %bb.b
  br i1 %i.k, label %bb.k, label %bb.j

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

.sink.split.i:                                    ; preds = %bb.n, %bb.g
  %.sink18.i.sroa.phi = phi ptr [ %.sink18.i.sroa.gep, %bb.n ], [ %.sink18.i.sroa.gep2, %bb.g ]
  %.sink16.i = phi ptr [ %i.s, %bb.n ], [ %i.g, %bb.g ]
  %.sink15.i.sroa.phi = phi ptr [ %.sink15.i.sroa.gep, %bb.n ], [ %.sink15.i.sroa.gep3, %bb.g ]
  %.sink13.i = phi i64 [ %i.u, %bb.n ], [ %i.i, %bb.g ]
  %.sink12.ph.i = phi i64 [ 40, %bb.n ], [ 24, %bb.g ]
  %.sink10.ph.i = phi ptr [ %i.y, %bb.n ], [ %i.m, %bb.g ]
  %.sink9.ph.i = phi i64 [ 48, %bb.n ], [ 32, %bb.g ]
  %.sink7.ph.i = phi i64 [ %i.aa, %bb.n ], [ %i.o, %bb.g ]
  store ptr %.sink16.i, ptr %.sink18.i.sroa.phi, align 8, !alias.scope !32239, !noalias !32242
  store i64 %.sink13.i, ptr %.sink15.i.sroa.phi, align 8, !alias.scope !32239, !noalias !32242
  br label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.g:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !32242, !noalias !32239, !nonnull !4, !noundef !4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !32242, !noalias !32239, !noundef !4
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !noalias !32244
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.i, label %.sink.split.i

bb.h:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !32242, !noalias !32239, !nonnull !4, !noundef !4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !32242, !noalias !32239, !noundef !4
  %i.v = atomicrmw add ptr %i.s, i64 1 monotonic, align 8, !noalias !32244
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !32242, !noalias !32239, !nonnull !4, !noundef !4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !32242, !noalias !32239, !noundef !4
  %i.ab = atomicrmw add ptr %i.y, i64 1 monotonic, align 8, !noalias !32244
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.j
  tail call void @llvm.trap()
  unreachable

bb.n:                                             ; preds = %bb.l
  store ptr %i.g, ptr %.sink18.i.sroa.gep2, align 8, !alias.scope !32239, !noalias !32242
  store i64 %i.i, ptr %.sink15.i.sroa.gep3, align 8, !alias.scope !32239, !noalias !32242
  br label %.sink.split.i

bb.o:                                             ; preds = %bb.l
  tail call void @llvm.trap()
  unreachable

_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit: ; preds = %bb.c, %.sink.split.i
  %.sink12.i = phi i64 [ 8, %bb.c ], [ %.sink12.ph.i, %.sink.split.i ]
  %.sink10.i = phi ptr [ %i.g, %bb.c ], [ %.sink10.ph.i, %.sink.split.i ]
  %.sink9.i = phi i64 [ 16, %bb.c ], [ %.sink9.ph.i, %.sink.split.i ]
  %.sink7.i = phi i64 [ %i.i, %bb.c ], [ %.sink7.ph.i, %.sink.split.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sink12.i
  store ptr %.sink10.i, ptr %i.ad, align 8, !alias.scope !32239, !noalias !32242
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sink9.i
  store i64 %.sink7.i, ptr %i.ae, align 8, !alias.scope !32239, !noalias !32242
  store i64 %i.e, ptr %i.b, align 8, !alias.scope !32239, !noalias !32242
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.q

bb.p:                                             ; preds = %bb.a
  store i64 3, ptr %i.d, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.af)
          to label %bb.u unwind label %bb.t

bb.r:                                             ; preds = %bb.v, %bb.t
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.v ], [ %i.ai, %bb.t ]
  %i.ag = load i64, ptr %i.d, align 8, !range !1127, !alias.scope !32245, !noundef !4
  %i.ah = icmp eq i64 %i.ag, 3
  br i1 %i.ah, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.x

bb.t:                                             ; preds = %bb.q
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.u:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aj)
          to label %bb.w unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #46
          to label %bb.r unwind label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.x:                                             ; preds = %bb.s, %bb.v
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.r, %bb.s
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeNtB7_9PartialEq2neCs14kWLkQVSKO_14deltalake_core(ptr captures(address, read_provenance) %.0.val, ptr captures(address, read_provenance) %.0.val1) unnamed_addr #1 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val1) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32256)
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !32258, !noalias !32259, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !32259, !noalias !32258, !noundef !4
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !32259, !noalias !32258, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !32258, !noalias !32259, !nonnull !4, !noundef !4
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.i, ptr nonnull %i.g, i64 %i.b), !noalias !32260
  %i.j = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.j, label %bb.c, label %_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %.0.val1, i64 24
  %i.m = tail call noundef zeroext i1 @_RNvXse_NtCsbpG6u9KFjWn_8indexmap3mapINtB5_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.l)
  br i1 %i.m, label %bb.d, label %_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val, i64 96
  %i.o = getelementptr inbounds nuw i8, ptr %.0.val1, i64 96
  %i.p = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o)
  %i.q = xor i1 %i.p, true
  br label %_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit

_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i.i = phi i1 [ %i.q, %bb.d ], [ true, %bb.c ], [ true, %bb.a ], [ true, %bb.b ]
  ret i1 %.sroa.0.0.i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldNtB7_9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr nofree readonly captures(address, read_provenance) %.0.val, ptr nofree readonly captures(address, read_provenance) %.0.val1) unnamed_addr #1 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val1) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32264)
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 88
  %i.b = load i8, ptr %i.a, align 8, !range !178, !alias.scope !32261, !noalias !32264, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val1, i64 88
  %i.d = load i8, ptr %i.c, align 8, !range !178, !alias.scope !32264, !noalias !32261, !noundef !4
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXs11_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !32261, !noalias !32264, !noundef !4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !32264, !noalias !32261, !noundef !4
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_RNvXs11_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.0.val1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !32264, !noalias !32261, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !32261, !noalias !32264, !nonnull !4, !noundef !4
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.n, ptr nonnull %i.l, i64 %i.g), !noalias !32266
  %i.o = icmp eq i32 %bcmp.i, 0
  br i1 %i.o, label %bb.d, label %_RNvXs11_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %.0.val1, i64 24
  %i.r = tail call fastcc noundef zeroext i1 @_RNvXs1F_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.q) #49
  br i1 %i.r, label %bb.e, label %_RNvXs11_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.0.val, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %.0.val1, i64 40
  %i.u = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.t)
  br label %_RNvXs11_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs11_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.sroa.0.0.i = phi i1 [ %i.u, %bb.e ], [ false, %bb.d ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.c ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolNtB7_9PartialEq2neCs14kWLkQVSKO_14deltalake_core(ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(none) %.0.val1) unnamed_addr #1 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val1) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32275)
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 48
  %i.b = load i32, ptr %i.a, align 8, !alias.scope !32277, !noalias !32278, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !alias.scope !32278, !noalias !32277, !noundef !4
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 52
  %i.g = load i32, ptr %i.f, align 4, !alias.scope !32277, !noalias !32278, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val1, i64 52
  %i.i = load i32, ptr %i.h, align 4, !alias.scope !32278, !noalias !32277, !noundef !4
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %.0.val, align 8, !range !17, !alias.scope !32277, !noalias !32278, !noundef !4
  %.not.i.i = icmp eq i64 %i.k, -9223372036854775808
  %i.l = load i64, ptr %.0.val1, align 8, !range !17, !alias.scope !32278, !noalias !32277, !noundef !4
  %i.m = icmp eq i64 %i.l, -9223372036854775808   ; 2 uses
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.m, label %_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.m, label %bb.h, label %_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !32277, !noalias !32278, !noundef !4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val1, i64 16
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !32278, !noalias !32277, !noundef !4
  %i.r = icmp eq i64 %i.o, %i.q
  br i1 %i.r, label %bb.g, label %_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %.0.val1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !32278, !noalias !32277, !nonnull !4, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !32277, !noalias !32278, !nonnull !4, !noundef !4
  %i.w = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.v, ptr noundef nonnull %i.t, i64 noundef %i.o), !noalias !32279
  br i1 %i.w, label %bb.h, label %_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.y = load i64, ptr %i.x, align 8, !range !17, !alias.scope !32277, !noalias !32278, !noundef !4
  %.not4.i.i = icmp eq i64 %i.y, -9223372036854775808 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.val1, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !range !17, !alias.scope !32278, !noalias !32277, !noundef !4
  %i.ab = icmp eq i64 %i.aa, -9223372036854775808 ; 2 uses
  %brmerge.i.i = or i1 %.not4.i.i, %i.ab
  %.mux.i.i = and i1 %.not4.i.i, %i.ab
  br i1 %brmerge.i.i, label %_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.val, i64 40
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !32277, !noalias !32278, !noundef !4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.val1, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !32278, !noalias !32277, !noundef !4
  %i.ag = icmp eq i64 %i.ad, %i.af
  br i1 %i.ag, label %bb.j, label %_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.val1, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !32278, !noalias !32277, !nonnull !4, !noundef !4
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !32277, !noalias !32278, !nonnull !4, !noundef !4
  %i.al = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.ai, i64 noundef %i.ad), !noalias !32279
  br label %_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit

_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8ProtocolNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %.sroa.0.0.shrunk.i.i = phi i1 [ %i.al, %bb.j ], [ %.mux.i.i, %bb.h ], [ false, %bb.e ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.i ]
  %i.am = xor i1 %.sroa.0.0.shrunk.i.i, true
  ret i1 %i.am
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs7_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_11StorageTypeNtNtNtCsbvkFyIu7lgC_4core3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %2, ptr %i.c, align 8
  %cond = icmp eq i64 %2, 1
  br i1 %cond, label %bb.b, label %.split

bb.b:                                             ; preds = %bb.a
  %lhsc = load i8, ptr %1, align 1
  switch i8 %lhsc, label %.split [
    i8 117, label %bb.c
    i8 105, label %bb.d
    i8 112, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.d, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.e, align 8
  br label %bb.f

.split:                                           ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull @1223, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.f, align 8
  br label %bb.f

bb.f:                                             ; preds = %.split, %bb.e, %bb.d, %bb.c
  %.sink = phi i64 [ -9223372036854775780, %.split ], [ -9223372036854775771, %bb.e ], [ -9223372036854775771, %bb.d ], [ -9223372036854775771, %bb.c ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs8_NtCsjyY8HP3IvQ6_12object_store4pathNtB5_4PathNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1224, i64 noundef 4, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1225, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1067)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs8_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtB5_9PreCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(584) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1808 x i8], align 16             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 624
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(584) %i.b, ptr noundef nonnull align 8 dereferenceable(584) %0, i64 584, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1208
  store i8 0, ptr %i.c, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !32280
  %i.d = tail call noundef align 16 dereferenceable_or_null(1808) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 16481) 1808, i64 noundef range(i64 8, 17) 16) #40, !noalias !32280 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvXs8_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtBM_9PreCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future0E3newBQ_.exit, !prof !52

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 1808) #48
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXs8_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtBO_9PreCommitNtNtNtB4_6future11into_future10IntoFuture11into_future0EBS_(ptr noundef nonnull align 16 dereferenceable(1808) %i.a) #46
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvXs8_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtBM_9PreCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future0E3newBQ_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1808) %i.d, ptr noundef nonnull align 16 dereferenceable(1808) %i.a, i64 1808, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr @1226, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtCs5wg436RVUAP_24datafusion_physical_plan5limitNtB5_14LocalLimitExecNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(384) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 368
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1040, i64 noundef 14, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1135, i64 noundef 5, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1127, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1139, i64 noundef 5, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1132, ptr noalias noundef nonnull readonly captures(address, read_provenance) @889, i64 noundef 7, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1128, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1039, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1036)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

end_hunk_24
