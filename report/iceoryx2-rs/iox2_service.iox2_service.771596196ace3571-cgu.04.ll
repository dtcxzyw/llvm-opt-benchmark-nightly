Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iox2_service.iox2_service.771596196ace3571-cgu.04?download=true
inline.NumInlined: 1031
inline.NumDeleted: 638
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvCsadSKrpJ73hd_12iox2_service4main:bb.a
bb.bc:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1229
  br label %bb.ba

bb.bd:                                            ; preds = %bb.av
  %.sroa.5154.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 9
  %.sroa.575.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.575.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.5154.0..sroa_idx.i, i64 31, i1 false), !noalias !1229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1229
  br label %bb.az

bb.be:                                            ; preds = %._crit_edge.i, %bb.az
  %.sroa.0159.0208.i = phi i64 [ 0, %bb.az ], [ %i.iv, %._crit_edge.i ]
  %i.iv = add nuw i64 %.sroa.0159.0208.i, 1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1229
  %i.iw = call { i64, i32 } @_RNvMNtCsigunbJSLHCW_3std4timeNtB2_7Instant3now() #23, !noalias !1229 ; 2 uses
  %i.ix = extractvalue { i64, i32 } %i.iw, 0
  %i.iy = extractvalue { i64, i32 } %i.iw, 1
  store i64 %i.ix, ptr %i.h, align 8, !noalias !1229
  store i32 %i.iy, ptr %i.il, align 8, !noalias !1229
  %i.iz = load ptr, ptr %.sroa.450.0..sroa_idx.i, align 8, !noalias !1229, !nonnull !8, !noundef !8 ; 2 uses
  %i.ja = load i64, ptr %i.im, align 8, !noalias !1229, !noundef !8 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.ja, 88
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 %.idx.i
  %i.jc = icmp eq i64 %i.ja, 0
  br i1 %i.jc, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.be
  %i.jd = load float, ptr %i.in, align 8
  %i.je = fpext float %i.jd to double
  %i.jf = insertelement <2 x double> poison, double %i.je, i64 0
  %i.jg = shufflevector <2 x double> %i.jf, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i

.loopexit.i:                                      ; preds = %._crit_edge.i
  call void @_RNvXs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service3ipc7ServiceSNtNtB15_7builder19CustomPayloadMarkerNtB1x_18CustomHeaderMarkerENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.n) #23, !noalias !1229
  %i.jh = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1244)
  call void @llvm.experimental.noalias.scope.decl(metadata !1245)
  call void @llvm.experimental.noalias.scope.decl(metadata !1246)
  %i.ji = load ptr, ptr %i.jh, align 8, !alias.scope !1247, !noalias !1229, !nonnull !8, !noundef !8 ; 2 uses
  %i.jj = load i64, ptr %i.ji, align 8, !noalias !1248, !noundef !8
  %i.jk = add i64 %i.jj, -1                       ; 2 uses
  store i64 %i.jk, ptr %i.ji, align 8, !noalias !1248
  %i.jl = icmp eq i64 %i.jk, 0
  br i1 %i.jl, label %bb.bf, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher9PublisherNtNtNtBI_7service3ipc7ServiceSNtNtB1y_7builder19CustomPayloadMarkerNtB20_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit.i

bb.bf:                                            ; preds = %.loopexit.i
  call void @_RNvMs6_NtCsbqH9stoieM8_5alloc2rcINtB5_2RcINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtBK_7service3ipc7ServiceEE9drop_slowCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.jh) #26, !noalias !1229
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher9PublisherNtNtNtBI_7service3ipc7ServiceSNtNtB1y_7builder19CustomPayloadMarkerNtB20_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher9PublisherNtNtNtBI_7service3ipc7ServiceSNtNtB1y_7builder19CustomPayloadMarkerNtB20_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit.i: ; preds = %bb.bf, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1229
  call void @llvm.experimental.noalias.scope.decl(metadata !1249)
  call void @llvm.experimental.noalias.scope.decl(metadata !1250)
  call void @llvm.experimental.noalias.scope.decl(metadata !1251)
  call void @llvm.experimental.noalias.scope.decl(metadata !1252)
  %i.jm = load ptr, ptr %i.r, align 8, !alias.scope !1253, !noalias !1229, !nonnull !8, !noundef !8
  %i.jn = atomicrmw sub ptr %i.jm, i64 1 release, align 8, !noalias !1254
  %i.jo = icmp eq i64 %i.jn, 1
  br i1 %i.jo, label %bb.bg, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_3ipc7ServiceSNtNtBI_7builder19CustomPayloadMarkerNtB2l_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit185.i

bb.bg:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher9PublisherNtNtNtBI_7service3ipc7ServiceSNtNtB1y_7builder19CustomPayloadMarkerNtB20_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit.i
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtBJ_3ipc7ServiceNtBJ_10NoResourceEE9drop_slowCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r) #26, !noalias !1229
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_3ipc7ServiceSNtNtBI_7builder19CustomPayloadMarkerNtB2l_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit185.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_3ipc7ServiceSNtNtBI_7builder19CustomPayloadMarkerNtB2l_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit185.i: ; preds = %bb.bg, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher9PublisherNtNtNtBI_7service3ipc7ServiceSNtNtB1y_7builder19CustomPayloadMarkerNtB20_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1229
  call void @llvm.experimental.noalias.scope.decl(metadata !1255)
  %.val.i.i = load ptr, ptr %.sroa.450.0..sroa_idx.i, align 8, !alias.scope !1255, !noalias !1229, !nonnull !8, !noundef !8
  %.val1.i.i = load i64, ptr %i.im, align 8, !alias.scope !1255, !noalias !1229, !noundef !8 ; 2 uses
  %i.jp = icmp eq i64 %.val1.i.i, 0
  br i1 %i.jp, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtCsfM7cexitAsH_35iceoryx2_userland_record_and_replay6record6RecordEECsadSKrpJ73hd_12iox2_service.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_3ipc7ServiceSNtNtBI_7builder19CustomPayloadMarkerNtB2l_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit185.i, %.lr.ph.i.i.i.i
  %.sroa.0.03.i.i.i.i = phi i64 [ %i.jr, %.lr.ph.i.i.i.i ], [ 0, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_3ipc7ServiceSNtNtBI_7builder19CustomPayloadMarkerNtB2l_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit185.i ] ; 2 uses
  %i.jq = getelementptr inbounds nuw [88 x i8], ptr %.val.i.i, i64 %.sroa.0.03.i.i.i.i ; 3 uses
  %i.jr = add nuw nsw i64 %.sroa.0.03.i.i.i.i, 1  ; 2 uses
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.jq) #23, !noalias !1256
  %i.js = getelementptr inbounds nuw i8, ptr %i.jq, i64 24
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.js) #23, !noalias !1256
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jq, i64 48
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jt) #23, !noalias !1256
  %i.ju = icmp eq i64 %i.jr, %.val1.i.i
  br i1 %i.ju, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtCsfM7cexitAsH_35iceoryx2_userland_record_and_replay6record6RecordEECsadSKrpJ73hd_12iox2_service.exit.i, label %.lr.ph.i.i.i.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtCsfM7cexitAsH_35iceoryx2_userland_record_and_replay6record6RecordEECsadSKrpJ73hd_12iox2_service.exit.i: ; preds = %.lr.ph.i.i.i.i, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_3ipc7ServiceSNtNtBI_7builder19CustomPayloadMarkerNtB2l_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit185.i
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtCsfM7cexitAsH_35iceoryx2_userland_record_and_replay6record6RecordENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u) #23, !noalias !1229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1229
  call void @llvm.experimental.noalias.scope.decl(metadata !1257)
  call void @llvm.experimental.noalias.scope.decl(metadata !1258)
  call void @llvm.experimental.noalias.scope.decl(metadata !1259)
  call void @llvm.experimental.noalias.scope.decl(metadata !1260)
  %i.jv = load ptr, ptr %i.ag, align 8, !alias.scope !1261, !noalias !1229, !nonnull !8, !noundef !8
  %i.jw = atomicrmw sub ptr %i.jv, i64 1 release, align 8, !noalias !1262
  %i.jx = icmp eq i64 %i.jw, 1
  br i1 %i.jx, label %bb.bh, label %_RNvNtNtCsadSKrpJ73hd_12iox2_service7command6replay6replay.exit.thread

bb.bh:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtCsfM7cexitAsH_35iceoryx2_userland_record_and_replay6record6RecordEECsadSKrpJ73hd_12iox2_service.exit.i
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx24node15SharedNodeStateNtNtNtBL_7service3ipc7ServiceEE9drop_slowCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ag) #26, !noalias !1229
  br label %_RNvNtNtCsadSKrpJ73hd_12iox2_service7command6replay6replay.exit.thread

_RNvNtNtCsadSKrpJ73hd_12iox2_service7command6replay6replay.exit.thread: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtCsfM7cexitAsH_35iceoryx2_userland_record_and_replay6record6RecordEECsadSKrpJ73hd_12iox2_service.exit.i, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !1229
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.ar) #23
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.16.8..sroa_idx43) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.391.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.795.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.540.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.cv

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.bt
  %.sroa.078.0207.i = phi ptr [ %i.jy, %bb.bt ], [ %i.iz, %.lr.ph.i.preheader ] ; 8 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.sroa.078.0207.i, i64 88 ; 2 uses
  br i1 %i.ia, label %bb.bi, label %bb.bj

._crit_edge.i:                                    ; preds = %bb.bt, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1229
  %exitcond = icmp eq i64 %i.iv, %i.iq
  br i1 %exitcond, label %.loopexit.i, label %bb.be

bb.bi:                                            ; preds = %.lr.ph.i
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.078.0207.i, i64 64
  %i.ka = load i64, ptr %i.jz, align 8, !noalias !1229, !noundef !8 ; 2 uses
  %i.kb = icmp sgt i64 %i.ka, -1
  call void @llvm.assume(i1 %i.kb)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %.lr.ph.i
  %.sroa.081.0.i = phi i64 [ %i.ka, %bb.bi ], [ 1, %.lr.ph.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1229
  call void @_RNvMsc_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service3ipc7ServiceSNtNtB15_7builder19CustomPayloadMarkerNtB1x_18CustomHeaderMarkerE19loan_custom_payloadCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.n, i64 noundef %.sroa.081.0.i) #23, !noalias !1229
  %i.kc = load ptr, ptr %i.f, align 8, !noalias !1229, !noundef !8 ; 2 uses
  %i.kd = icmp eq ptr %i.kc, null
  %i.ke = load i8, ptr %.sroa.4162.0..sroa_idx.i, align 8, !noalias !1229 ; 2 uses
  br i1 %i.kd, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1229
  %i.kf = call noundef nonnull ptr @_RNvXs_NtCs2wk0oZsur5i_6anyhow5errorNtB6_5ErrorINtNtCs8Chj7Szqq0n_4core7convert4FromNtNtCsg6ZEkMtNi4J_8iceoryx24port9LoanErrorE4fromCsadSKrpJ73hd_12iox2_service(i8 noundef %i.ke) #23, !noalias !1229
  br label %bb.bu

bb.bl:                                            ; preds = %bb.bj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.391.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5163.0..sroa_idx.i, i64 7, i1 false), !noalias !1229
  %.sroa.6164.0.copyload.i = load ptr, ptr %.sroa.6164.0..sroa_idx.i, align 8, !noalias !1229 ; 2 uses
  %.sroa.7165.0.copyload.i = load ptr, ptr %.sroa.7165.0..sroa_idx.i, align 8, !noalias !1229 ; 2 uses
  %.sroa.8166.0.copyload.i = load i64, ptr %.sroa.8166.0..sroa_idx.i, align 8, !noalias !1229
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.795.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9167.0..sroa_idx.i, i64 16, i1 false), !noalias !1229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1229
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.078.0207.i, i64 56
  %i.kh = load ptr, ptr %i.kg, align 8, !noalias !1229, !nonnull !8, !noundef !8
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.078.0207.i, i64 64
  %i.kj = load i64, ptr %i.ki, align 8, !noalias !1229, !noundef !8 ; 2 uses
  %i.kk = icmp sgt i64 %i.kj, -1
  call void @llvm.assume(i1 %i.kk)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.7165.0.copyload.i, ptr nonnull align 1 %i.kh, i64 %i.kj, i1 false), !noalias !1229
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.078.0207.i, i64 40
  %i.km = load i64, ptr %i.kl, align 8, !noalias !1229, !noundef !8 ; 3 uses
  %i.kn = icmp sgt i64 %i.km, -1
  call void @llvm.assume(i1 %i.kn)
  %i.ko = icmp eq i64 %i.km, 0
  br i1 %i.ko, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.078.0207.i, i64 32
  %i.kq = load ptr, ptr %i.kp, align 8, !noalias !1229, !nonnull !8, !noundef !8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.6164.0.copyload.i, ptr nonnull align 1 %i.kq, i64 %i.km, i1 false), !noalias !1229
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.598.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.391.i, i64 7, i1 false), !noalias !1229
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9102.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.795.i, i64 16, i1 false), !noalias !1229
  store ptr %i.kc, ptr %i.g, align 8, !noalias !1229
  store i8 %i.ke, ptr %.sroa.497.0..sroa_idx.i, align 8, !noalias !1229
  store ptr %.sroa.6164.0.copyload.i, ptr %.sroa.699.0..sroa_idx.i, align 8, !noalias !1229
  store ptr %.sroa.7165.0.copyload.i, ptr %.sroa.7100.0..sroa_idx.i, align 8, !noalias !1229
  store i64 %.sroa.8166.0.copyload.i, ptr %.sroa.8101.0..sroa_idx.i, align 8, !noalias !1229
  %i.kr = call { i64, i32 } @_RNvMNtCsigunbJSLHCW_3std4timeNtB2_7Instant7elapsed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h) #23, !noalias !1229 ; 2 uses
  %i.ks = extractvalue { i64, i32 } %i.kr, 0
  %i.kt = extractvalue { i64, i32 } %i.kr, 1      ; 2 uses
  %i.ku = icmp ult i32 %i.kt, 1000000000
  call void @llvm.assume(i1 %i.ku)
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.078.0207.i, i64 72
  %i.kw = load i64, ptr %i.kv, align 8, !noalias !1229, !noundef !8
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.078.0207.i, i64 80
  %i.ky = load i32, ptr %i.kx, align 8, !range !26, !noalias !1229, !noundef !8
  %i.kz = zext i64 %i.kw to i128
  %i.la = zext i64 %i.ks to i128
  %i.lb = insertelement <2 x i128> poison, i128 %i.la, i64 0
  %i.lc = insertelement <2 x i128> %i.lb, i128 %i.kz, i64 1
  %i.ld = mul nuw nsw <2 x i128> %i.lc, splat (i128 1000)
  %i.le = insertelement <2 x i32> poison, i32 %i.kt, i64 0
  %i.lf = insertelement <2 x i32> %i.le, i32 %i.ky, i64 1
  %i.lg = udiv <2 x i32> %i.lf, splat (i32 1000000)
  %i.lh = zext nneg <2 x i32> %i.lg to <2 x i128>
  %i.li = add nuw nsw <2 x i128> %i.ld, %i.lh
  %i.lj = uitofp nneg <2 x i128> %i.li to <2 x double>
  %i.lk = fmul <2 x double> %i.jg, %i.lj          ; 2 uses
  %i.ll = extractelement <2 x double> %i.lk, i64 0 ; 2 uses
  %i.lm = extractelement <2 x double> %i.lk, i64 1 ; 2 uses
  %i.ln = fcmp olt double %i.ll, %i.lm
  br i1 %i.ln, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bp, %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1229
  call void @_RNvMs3_NtCsg6ZEkMtNi4J_8iceoryx210sample_mutINtB5_9SampleMutNtNtNtB7_7service3ipc7ServiceSNtNtB10_7builder19CustomPayloadMarkerNtB1s_18CustomHeaderMarkerE4sendCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.g) #23, !noalias !1229
  %i.lo = load i8, ptr %i.e, align 8, !range !13, !noalias !1229, !noundef !8
  %i.lp = trunc nuw i8 %i.lo to i1
  br i1 %i.lp, label %bb.bq, label %bb.br

bb.bp:                                            ; preds = %bb.bn
  %i.lq = fsub double %i.lm, %i.ll
  %i.lr = call i64 @llvm.fptoui.sat.i64.f64(double %i.lq) ; 2 uses
  %i.ls = udiv i64 %i.lr, 1000
  %i.lt = urem i64 %i.lr, 1000
  %i.lu = trunc nuw nsw i64 %i.lt to i32
  %i.lv = mul nuw nsw i32 %i.lu, 1000000
  call void @_RNvNtNtCsigunbJSLHCW_3std6thread9functions5sleep(i64 noundef %i.ls, i32 noundef %i.lv) #23, !noalias !1229
  br label %bb.bo

bb.bq:                                            ; preds = %bb.bo
  %i.lw = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.sroa.0168.0.copyload.i = load i16, ptr %i.lw, align 1, !noalias !1229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1229
  %i.lx = call noundef nonnull ptr @_RNvXs_NtCs2wk0oZsur5i_6anyhow5errorNtB6_5ErrorINtNtCs8Chj7Szqq0n_4core7convert4FromNtNtCsg6ZEkMtNi4J_8iceoryx24port9SendErrorE4fromCsadSKrpJ73hd_12iox2_service(i16 %.sroa.0168.0.copyload.i) #23, !noalias !1229
  br label %bb.bu

bb.br:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1229
  call void @_RNvNtNtCsigunbJSLHCW_3std2io5stdio6__print(ptr noundef nonnull @119, ptr noundef nonnull inttoptr (i64 3 to ptr)) #23, !noalias !1229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1229
  %i.ly = call noundef nonnull align 8 ptr @_RNvNtNtCsigunbJSLHCW_3std2io5stdio6stdout() #23, !noalias !1229
  store ptr %i.ly, ptr %i.d, align 8, !noalias !1229
  %i.lz = call noundef ptr @_RNvXse_NtNtCsigunbJSLHCW_3std2io5stdioNtB5_6StdoutNtNtNtCs8Chj7Szqq0n_4core2io5write5Write5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #23, !noalias !1229 ; 2 uses
  %.not179.i = icmp eq ptr %i.lz, null
  br i1 %.not179.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ma = call noundef nonnull ptr @_RNvXs_NtCs2wk0oZsur5i_6anyhow5errorNtB6_5ErrorINtNtCs8Chj7Szqq0n_4core7convert4FromNtNtNtBN_2io5error5ErrorE4fromCsadSKrpJ73hd_12iox2_service(ptr noundef nonnull %i.lz) #23, !noalias !1229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1229
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1229
  %i.mb = icmp eq ptr %i.jy, %i.jb
  br i1 %i.mb, label %._crit_edge.i, label %.lr.ph.i

bb.bu:                                            ; preds = %bb.bs, %bb.bq, %bb.bk
  %.sroa.0.1.i = phi ptr [ %i.kf, %bb.bk ], [ %i.lx, %bb.bq ], [ %i.ma, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1229
  call void @_RNvXs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port9publisherINtB5_9PublisherNtNtNtB9_7service3ipc7ServiceSNtNtB15_7builder19CustomPayloadMarkerNtB1x_18CustomHeaderMarkerENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.n) #23, !noalias !1229
  %i.mc = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1263)
  call void @llvm.experimental.noalias.scope.decl(metadata !1264)
  call void @llvm.experimental.noalias.scope.decl(metadata !1265)
  %i.md = load ptr, ptr %i.mc, align 8, !alias.scope !1266, !noalias !1229, !nonnull !8, !noundef !8 ; 2 uses
  %i.me = load i64, ptr %i.md, align 8, !noalias !1267, !noundef !8
  %i.mf = add i64 %i.me, -1                       ; 2 uses
  store i64 %i.mf, ptr %i.md, align 8, !noalias !1267
  %i.mg = icmp eq i64 %i.mf, 0
  br i1 %i.mg, label %bb.bv, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher9PublisherNtNtNtBI_7service3ipc7ServiceSNtNtB1y_7builder19CustomPayloadMarkerNtB20_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit186.i

bb.bv:                                            ; preds = %bb.bu
  call void @_RNvMs6_NtCsbqH9stoieM8_5alloc2rcINtB5_2RcINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher20PublisherSharedStateNtNtNtBK_7service3ipc7ServiceEE9drop_slowCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.mc) #26, !noalias !1229
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher9PublisherNtNtNtBI_7service3ipc7ServiceSNtNtB1y_7builder19CustomPayloadMarkerNtB20_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit186.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher9PublisherNtNtNtBI_7service3ipc7ServiceSNtNtB1y_7builder19CustomPayloadMarkerNtB20_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit186.i: ; preds = %bb.bv, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1229
  call void @llvm.experimental.noalias.scope.decl(metadata !1268)
  call void @llvm.experimental.noalias.scope.decl(metadata !1269)
  call void @llvm.experimental.noalias.scope.decl(metadata !1270)
  call void @llvm.experimental.noalias.scope.decl(metadata !1271)
  %i.mh = load ptr, ptr %i.r, align 8, !alias.scope !1272, !noalias !1229, !nonnull !8, !noundef !8
  %i.mi = atomicrmw sub ptr %i.mh, i64 1 release, align 8, !noalias !1273
  %i.mj = icmp eq i64 %i.mi, 1
  br i1 %i.mj, label %bb.bw, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_3ipc7ServiceSNtNtBI_7builder19CustomPayloadMarkerNtB2l_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit187.i

bb.bw:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher9PublisherNtNtNtBI_7service3ipc7ServiceSNtNtB1y_7builder19CustomPayloadMarkerNtB20_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit186.i
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtBJ_3ipc7ServiceNtBJ_10NoResourceEE9drop_slowCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r) #26, !noalias !1229
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_3ipc7ServiceSNtNtBI_7builder19CustomPayloadMarkerNtB2l_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit187.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_3ipc7ServiceSNtNtBI_7builder19CustomPayloadMarkerNtB2l_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit187.i: ; preds = %bb.bw, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port9publisher9PublisherNtNtNtBI_7service3ipc7ServiceSNtNtB1y_7builder19CustomPayloadMarkerNtB20_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit186.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1229
  call void @llvm.experimental.noalias.scope.decl(metadata !1274)
  %.val.i188.i = load ptr, ptr %.sroa.450.0..sroa_idx.i, align 8, !alias.scope !1274, !noalias !1229, !nonnull !8, !noundef !8
  %.val1.i189.i = load i64, ptr %i.im, align 8, !alias.scope !1274, !noalias !1229, !noundef !8 ; 2 uses
  %i.mk = icmp eq i64 %.val1.i189.i, 0
  br i1 %i.mk, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtCsfM7cexitAsH_35iceoryx2_userland_record_and_replay6record6RecordEECsadSKrpJ73hd_12iox2_service.exit192.i, label %.lr.ph.i.i.i190.i

.lr.ph.i.i.i190.i:                                ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_3ipc7ServiceSNtNtBI_7builder19CustomPayloadMarkerNtB2l_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit187.i, %.lr.ph.i.i.i190.i
  %.sroa.0.03.i.i.i191.i = phi i64 [ %i.mm, %.lr.ph.i.i.i190.i ], [ 0, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_3ipc7ServiceSNtNtBI_7builder19CustomPayloadMarkerNtB2l_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit187.i ] ; 2 uses
  %i.ml = getelementptr inbounds nuw [88 x i8], ptr %.val.i188.i, i64 %.sroa.0.03.i.i.i191.i ; 3 uses
  %i.mm = add nuw nsw i64 %.sroa.0.03.i.i.i191.i, 1 ; 2 uses
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.ml) #23, !noalias !1275
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ml, i64 24
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mn) #23, !noalias !1275
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ml, i64 48
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mo) #23, !noalias !1275
  %i.mp = icmp eq i64 %i.mm, %.val1.i189.i
  br i1 %i.mp, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtCsfM7cexitAsH_35iceoryx2_userland_record_and_replay6record6RecordEECsadSKrpJ73hd_12iox2_service.exit192.i, label %.lr.ph.i.i.i190.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtCsfM7cexitAsH_35iceoryx2_userland_record_and_replay6record6RecordEECsadSKrpJ73hd_12iox2_service.exit192.i: ; preds = %.lr.ph.i.i.i190.i, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_3ipc7ServiceSNtNtBI_7builder19CustomPayloadMarkerNtB2l_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit187.i
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtCsfM7cexitAsH_35iceoryx2_userland_record_and_replay6record6RecordENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u) #23, !noalias !1229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1229
  br label %bb.bx

bb.bx:                                            ; preds = %bb.cb, %bb.bz, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtCsfM7cexitAsH_35iceoryx2_userland_record_and_replay6record6RecordEECsadSKrpJ73hd_12iox2_service.exit192.i
  %.sroa.0.2.i = phi ptr [ %.sroa.0.7.i, %bb.cb ], [ %.sroa.0.5.i, %bb.bz ], [ %.sroa.0.1.i, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtCsfM7cexitAsH_35iceoryx2_userland_record_and_replay6record6RecordEECsadSKrpJ73hd_12iox2_service.exit192.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1229
  call void @llvm.experimental.noalias.scope.decl(metadata !1276)
  call void @llvm.experimental.noalias.scope.decl(metadata !1277)
  call void @llvm.experimental.noalias.scope.decl(metadata !1278)
  call void @llvm.experimental.noalias.scope.decl(metadata !1279)
  %i.mq = load ptr, ptr %i.ag, align 8, !alias.scope !1280, !noalias !1229, !nonnull !8, !noundef !8
  %i.mr = atomicrmw sub ptr %i.mq, i64 1 release, align 8, !noalias !1281
  %i.ms = icmp eq i64 %i.mr, 1
  br i1 %i.ms, label %bb.by, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBG_7service3ipc7ServiceEECsadSKrpJ73hd_12iox2_service.exit193.i

bb.by:                                            ; preds = %bb.bx
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx24node15SharedNodeStateNtNtNtBL_7service3ipc7ServiceEE9drop_slowCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ag) #26, !noalias !1229
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBG_7service3ipc7ServiceEECsadSKrpJ73hd_12iox2_service.exit193.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBG_7service3ipc7ServiceEECsadSKrpJ73hd_12iox2_service.exit193.i: ; preds = %bb.by, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !1229
  %i.mt = load i64, ptr %i.ef, align 8, !range !16, !alias.scope !1229, !noundef !8
  %i.mu = icmp ne i64 %i.mt, -1
  %or.cond.i = and i1 %.not.i215, %i.mu
  br i1 %or.cond.i, label %bb.cc, label %bb.cu

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_3ipc7ServiceSNtNtBI_7builder19CustomPayloadMarkerNtB2l_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit.i: ; preds = %bb.bb, %bb.ba, %bb.at
  %.sroa.0.4.i = phi ptr [ %i.hx, %bb.at ], [ %i.ir, %bb.ba ], [ %i.ir, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1229
  call void @llvm.experimental.noalias.scope.decl(metadata !1282)
  %.val.i194.i = load ptr, ptr %.sroa.450.0..sroa_idx.i, align 8, !alias.scope !1282, !noalias !1229, !nonnull !8, !noundef !8
  %i.mv = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.val1.i195.i = load i64, ptr %i.mv, align 8, !alias.scope !1282, !noalias !1229, !noundef !8 ; 2 uses
  %i.mw = icmp eq i64 %.val1.i195.i, 0
  br i1 %i.mw, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtCsfM7cexitAsH_35iceoryx2_userland_record_and_replay6record6RecordEECsadSKrpJ73hd_12iox2_service.exit198.i, label %.lr.ph.i.i.i196.i

.lr.ph.i.i.i196.i:                                ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_3ipc7ServiceSNtNtBI_7builder19CustomPayloadMarkerNtB2l_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit.i, %.lr.ph.i.i.i196.i
  %.sroa.0.03.i.i.i197.i = phi i64 [ %i.my, %.lr.ph.i.i.i196.i ], [ 0, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_3ipc7ServiceSNtNtBI_7builder19CustomPayloadMarkerNtB2l_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit.i ] ; 2 uses
  %i.mx = getelementptr inbounds nuw [88 x i8], ptr %.val.i194.i, i64 %.sroa.0.03.i.i.i197.i ; 3 uses
  %i.my = add nuw nsw i64 %.sroa.0.03.i.i.i197.i, 1 ; 2 uses
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.mx) #23, !noalias !1283
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mx, i64 24
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mz) #23, !noalias !1283
  %i.na = getelementptr inbounds nuw i8, ptr %i.mx, i64 48
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.na) #23, !noalias !1283
  %i.nb = icmp eq i64 %i.my, %.val1.i195.i
  br i1 %i.nb, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtCsfM7cexitAsH_35iceoryx2_userland_record_and_replay6record6RecordEECsadSKrpJ73hd_12iox2_service.exit198.i, label %.lr.ph.i.i.i196.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtCsfM7cexitAsH_35iceoryx2_userland_record_and_replay6record6RecordEECsadSKrpJ73hd_12iox2_service.exit198.i: ; preds = %.lr.ph.i.i.i196.i, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory17publish_subscribe11PortFactoryNtNtBI_3ipc7ServiceSNtNtBI_7builder19CustomPayloadMarkerNtB2l_18CustomHeaderMarkerEECsadSKrpJ73hd_12iox2_service.exit.i
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtCsfM7cexitAsH_35iceoryx2_userland_record_and_replay6record6RecordENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u) #23, !noalias !1229
  br label %bb.bz

bb.bz:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtCsfM7cexitAsH_35iceoryx2_userland_record_and_replay6record6RecordEECsadSKrpJ73hd_12iox2_service.exit198.i, %bb.ap
  %.sroa.0.5.i = phi ptr [ %i.hj, %bb.ap ], [ %.sroa.0.4.i, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtCsfM7cexitAsH_35iceoryx2_userland_record_and_replay6record6RecordEECsadSKrpJ73hd_12iox2_service.exit198.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1229
  br label %bb.bx

bb.ca:                                            ; preds = %.split.i, %bb.ab
  %.sroa.0.6.i = phi ptr [ %i.ew, %bb.ab ], [ %i.he, %.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1229
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.z
  %.sroa.0.7.i = phi ptr [ %i.et, %bb.z ], [ %.sroa.0.6.i, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1229
  call void @_RNvXs2_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix4fileNtB5_4FileNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(1480) %i.ad) #23, !noalias !1229
  %i.nc = getelementptr inbounds nuw i8, ptr %i.ad, i64 272
  call void @_RNvXs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix15file_descriptorNtB5_14FileDescriptorNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(8) %i.nc) #23, !noalias !1229
  br label %bb.bx

bb.cc:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBG_7service3ipc7ServiceEECsadSKrpJ73hd_12iox2_service.exit199.i, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBG_7service3ipc7ServiceEECsadSKrpJ73hd_12iox2_service.exit193.i
  %.sroa.0.9.i = phi ptr [ %.sroa.0.11.i, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBG_7service3ipc7ServiceEECsadSKrpJ73hd_12iox2_service.exit199.i ], [ %.sroa.0.2.i, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24node4NodeNtNtNtBG_7service3ipc7ServiceEECsadSKrpJ73hd_12iox2_service.exit193.i ]
  %i.nd = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nd) #23
  br label %bb.cu

bb.cd:                                            ; preds = %bb.u, %bb.s
  %.sroa.0.10.i = phi ptr [ %i.dv, %bb.s ], [ %i.ee, %bb.u ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1229
end_hunk_0
