Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/unbuffered_async_client.unbuffered_async_client.8bc8a3765dce2620-cgu.00?download=true
inline.NumInlined: 454
inline.NumDeleted: 236
begin_hunk_0_@_RINvMs2_NtNtCskruEhpekJ3V_5tokio7runtime4parkNtB6_16CachedParkThread8block_onNCNvCsc044841uM34_23unbuffered_async_client4main0EB1h_:bb.a
bb.ad:                                            ; preds = %bb.ab
  %i.fh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18, !noalias !217
  unreachable

bb.ae:                                            ; preds = %bb.j, %bb.h
  %.pn.i.i = phi { ptr, i32 } [ %i.eq, %bb.j ], [ %i.ep, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !216
  br label %bb.l

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6webpki7anchors13RootCertStoreECsc044841uM34_23unbuffered_async_client.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorEECsc044841uM34_23unbuffered_async_client.exit.i, %.body.i.i, %bb.g
  %.pn16.pn.i.i = phi { ptr, i32 } [ %i.eo, %bb.g ], [ %.pn16.i.i, %.body.i.i ], [ %.pn16.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtCseO5Jl7W60Eg_16rustls_pki_types11TrustAnchorEECsc044841uM34_23unbuffered_async_client.exit.i ]
  store i8 0, ptr %i.bv, align 8, !noalias !216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !216
  store i8 2, ptr %i.br, align 1, !noalias !216
  br label %.body17

bb.af:                                            ; preds = %.noexc
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @249) #22
          to label %.noexc19 unwind label %bb.me

.noexc19:                                         ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %.noexc
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @249) #22
          to label %.noexc20 unwind label %bb.me

.noexc20:                                         ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !216
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1, !range !16, !noalias !225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !216
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6257.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !216
  switch i8 %.pre.i.i, label %default.unreachable [
    i8 0, label %._crit_edge.i
    i8 1, label %bb.bk
    i8 2, label %bb.bl
    i8 3, label %bb.bm
    i8 4, label %bb.ak
    i8 5, label %bb.al
    i8 6, label %bb.am
    i8 7, label %bb.an
    i8 8, label %bb.ao
    i8 9, label %bb.ap
    i8 10, label %bb.aq
  ]

._crit_edge.i:                                    ; preds = %bb.ah
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !225
  %.pre68.i = load ptr, ptr %.phi.trans.insert67.i, align 8, !noalias !225
  %.pre70.i = load i64, ptr %.phi.trans.insert69.i, align 8, !noalias !225
  %.pre72.i = load ptr, ptr %.phi.trans.insert71.i, align 8, !noalias !225
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge.i, %.thread.i.i
  %i.fi = phi ptr [ %i.bz, %.thread.i.i ], [ %.pre72.i, %._crit_edge.i ]
  %i.fj = phi i64 [ %.val19.i.i, %.thread.i.i ], [ %.pre70.i, %._crit_edge.i ]
  %i.fk = phi ptr [ %.val.i.i, %.thread.i.i ], [ %.pre68.i, %._crit_edge.i ]
  %i.fl = phi ptr [ %i.be, %.thread.i.i ], [ %.pre.i, %._crit_edge.i ]
  store i8 0, ptr %i.cc, align 4, !noalias !225
  store ptr %i.fk, ptr %i.cd, align 8, !noalias !225
  store i64 %i.fj, ptr %i.ce, align 8, !noalias !225
  store ptr %i.fi, ptr %i.cf, align 8, !noalias !225
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !225
  %.val146.i.i.i = load ptr, ptr %i.fl, align 8, !noalias !226, !nonnull !8, !noundef !8 ; 2 uses
  %i.fm = atomicrmw add ptr %.val146.i.i.i, i64 1 monotonic, align 8, !noalias !226
  %i.fn = icmp slt i64 %i.fm, 0
  br i1 %i.fn, label %bb.aj, label %_RNvXsu_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsc044841uM34_23unbuffered_async_client.exit.i.i.i

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.trap()
  unreachable

bb.ak:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !225
  br label %bb.ib

bb.al:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !225
  br label %bb.ij

bb.am:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !225
  br label %bb.jo

bb.an:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !225
  br label %bb.ju

bb.ao:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !225
  br label %bb.iu

bb.ap:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !225
  br label %bb.je

bb.aq:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !225
  br label %bb.ew

_RNvXsu_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsc044841uM34_23unbuffered_async_client.exit.i.i.i: ; preds = %bb.ai
  store ptr %.val146.i.i.i, ptr %i.at, align 8, !noalias !225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !225
  invoke void @_RNvXs2_NtCseO5Jl7W60Eg_16rustls_pki_types11server_nameNtB5_10ServerNameINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.as, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @250, i64 noundef 11)
          to label %_RNvXs4_NtCsj6eKBz9Db1c_4core7convertReINtB5_7TryIntoNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameE8try_intoCsc044841uM34_23unbuffered_async_client.exit.i.i.i unwind label %bb.ar, !noalias !226

bb.ar:                                            ; preds = %_RNvXsu_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsc044841uM34_23unbuffered_async_client.exit.i.i.i
  %i.fo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !225
  call void @llvm.experimental.noalias.scope.decl(metadata !227)
  call void @llvm.experimental.noalias.scope.decl(metadata !228)
  %i.fp = load ptr, ptr %i.at, align 8, !alias.scope !229, !noalias !225, !nonnull !8, !noundef !8
  %i.fq = atomicrmw add ptr %i.fp, i64 -1 release, align 8, !noalias !230
  %i.fr = icmp eq i64 %i.fq, 1
  br i1 %i.fr, label %bb.as, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit.i.i.i

bb.as:                                            ; preds = %bb.ar
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.at) #21
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit.i.i.i unwind label %bb.bi, !noalias !226

_RNvXs4_NtCsj6eKBz9Db1c_4core7convertReINtB5_7TryIntoNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameE8try_intoCsc044841uM34_23unbuffered_async_client.exit.i.i.i: ; preds = %_RNvXsu_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsc044841uM34_23unbuffered_async_client.exit.i.i.i
  %i.fs = load i8, ptr %i.as, align 8, !range !7, !alias.scope !231, !noalias !225, !noundef !8 ; 2 uses
  %i.ft = icmp eq i8 %i.fs, 2
  br i1 %i.ft, label %bb.at, label %bb.au

bb.at:                                            ; preds = %_RNvXs4_NtCsj6eKBz9Db1c_4core7convertReINtB5_7TryIntoNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameE8try_intoCsc044841uM34_23unbuffered_async_client.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !225
  %i.fu = invoke { ptr, ptr } @_RNvXsd_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtB7_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorEL_EINtNtBW_7convert4FromNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name19InvalidDnsNameErrorE4fromCsc044841uM34_23unbuffered_async_client()
          to label %bb.bd unwind label %bb.bg, !noalias !226 ; 2 uses

bb.au:                                            ; preds = %_RNvXs4_NtCsj6eKBz9Db1c_4core7convertReINtB5_7TryIntoNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameE8try_intoCsc044841uM34_23unbuffered_async_client.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8235.0..sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8235.0..sroa_idx236.i.i.i, i64 31, i1 false), !noalias !225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !225
  store i8 %i.fs, ptr %i.ar, align 8, !noalias !225
  %i.fv = load ptr, ptr %i.at, align 8, !noalias !225, !nonnull !8, !noundef !8
  invoke void @_RNvMs3_NtNtCs7ZUl82OSlxp_6rustls6client11client_connNtB5_26UnbufferedClientConnection3new(ptr noalias nofree noundef nonnull sret([976 x i8]) align 8 captures(address) dereferenceable(976) %i.au, ptr noundef nonnull %i.fv, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.ar)
          to label %bb.av unwind label %bb.bf, !noalias !226

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !225
  call void @llvm.experimental.noalias.scope.decl(metadata !232)
  %i.fw = load i64, ptr %i.au, align 8, !range !13, !alias.scope !233, !noalias !225, !noundef !8 ; 2 uses
  %i.fx = icmp eq i64 %i.fw, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.cg, i64 64, i1 false), !alias.scope !234, !noalias !225
  br i1 %i.fx, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !235
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.p, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8.i.i.i, i64 64, i1 false), !noalias !225
  %i.fy = invoke { ptr, ptr } @_RNvXsd_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtB7_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorEL_EINtNtBW_7convert4FromNtNtCs7ZUl82OSlxp_6rustls5error5ErrorE4fromCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.p)
          to label %bb.ba unwind label %bb.az, !noalias !226 ; 2 uses

bb.ax:                                            ; preds = %bb.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(904) %.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(904) %.sroa.10.0..sroa_idx232.i.i.i, i64 904, i1 false), !noalias !225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !225
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8.i.i.i, i64 64, i1 false), !noalias !225
  store i64 %i.fw, ptr %i.ch, align 8, !noalias !225
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !225
  store <2 x ptr> <ptr @251, ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsc044841uM34_23unbuffered_async_client>, ptr %i.ap, align 16, !noalias !225
  store <2 x ptr> <ptr @252, ptr @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3imptNtB9_7Display3fmt>, ptr %i.ci, align 16, !noalias !225
  invoke void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aq, ptr noundef nonnull @253, ptr noundef nonnull %i.ap)
          to label %.thread.i.i.i unwind label %bb.ay, !noalias !226

bb.ay:                                            ; preds = %bb.ax
  %i.fz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !225
  br label %.body218.i.i.i

.thread.i.i.i:                                    ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !225
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.aq, i64 24, i1 false), !noalias !225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !225
  store i8 0, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !225
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.958.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i)
  br label %bb.bn

bb.az:                                            ; preds = %bb.aw
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.ba:                                            ; preds = %bb.aw
  %i.gb = extractvalue { ptr, ptr } %i.fy, 0      ; 2 uses
  %i.gc = extractvalue { ptr, ptr } %i.fy, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gb), "nonnull"(ptr %i.gc) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !235
  br label %bb.bb

bb.bb:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit162.i.i.i, %bb.ba
  %.sroa.031.0.pre-phi.i.i.i = phi ptr [ %i.gd, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit162.i.i.i ], [ %i.gb, %bb.ba ]
  %.sroa.16.0.pre-phi.i.i.i = phi ptr [ %i.ge, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit162.i.i.i ], [ %i.gc, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  br label %bb.lh

bb.bc:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit164.i.i.i, %bb.az
  %.pn135.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn135.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit164.i.i.i ], [ %i.ga, %bb.az ], [ %i.fo, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  br label %bb.bj

bb.bd:                                            ; preds = %bb.at
  %i.gd = extractvalue { ptr, ptr } %i.fu, 0      ; 2 uses
  %i.ge = extractvalue { ptr, ptr } %i.fu, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gd), "nonnull"(ptr %i.ge) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !236)
  call void @llvm.experimental.noalias.scope.decl(metadata !237)
  %i.gf = load ptr, ptr %i.at, align 8, !alias.scope !238, !noalias !225, !nonnull !8, !noundef !8
  %i.gg = atomicrmw add ptr %i.gf, i64 -1 release, align 8, !noalias !239
  %i.gh = icmp eq i64 %i.gg, 1
  br i1 %i.gh, label %bb.be, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit162.i.i.i

bb.be:                                            ; preds = %bb.bd
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.at) #21
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit162.i.i.i unwind label %bb.bf, !noalias !226

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit164.i.i.i: ; preds = %bb.bh, %bb.bg, %bb.bf
  %.pn135.i.i.i = phi { ptr, i32 } [ %i.gi, %bb.bf ], [ %i.gj, %bb.bg ], [ %i.gj, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !225
  br label %bb.bc

bb.bf:                                            ; preds = %bb.be, %bb.au
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit164.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit162.i.i.i: ; preds = %bb.be, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !225
  br label %bb.bb

bb.bg:                                            ; preds = %bb.at
  %i.gj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !240)
  call void @llvm.experimental.noalias.scope.decl(metadata !241)
  %i.gk = load ptr, ptr %i.at, align 8, !alias.scope !242, !noalias !225, !nonnull !8, !noundef !8
  %i.gl = atomicrmw add ptr %i.gk, i64 -1 release, align 8, !noalias !243
  %i.gm = icmp eq i64 %i.gl, 1
  br i1 %i.gm, label %bb.bh, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit164.i.i.i

bb.bh:                                            ; preds = %bb.bg
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.at) #21
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit164.i.i.i unwind label %bb.bi, !noalias !226

bb.bi:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i, %bb.le, %bb.lc, %bb.hl, %.loopexit.split-lp415.i.i.i, %bb.fy, %.body218.i.i.i, %.body169.i.i.i, %bb.bh, %bb.as
  %i.gn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body32

.body32:                                          ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i, %bb.bi
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18, !noalias !226
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit.i.i.i: ; preds = %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !225
  br label %bb.bc

bb.bj:                                            ; preds = %bb.kt, %.body218.i.i.i, %bb.bc
  %.pn135.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn135.pn.pn.i.i.i, %bb.bc ], [ %i.rz, %bb.kt ], [ %.pn128.pn.i.i.i, %.body218.i.i.i ]
  store i8 2, ptr %.phi.trans.insert.i.i, align 1, !noalias !225
  br label %.body20.i.i

bb.bk:                                            ; preds = %bb.ah
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @254) #22
          to label %.noexc22.i.i unwind label %bb.lf, !noalias !217

.noexc22.i.i:                                     ; preds = %bb.bk
  unreachable

bb.bl:                                            ; preds = %bb.ah
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @254) #22
          to label %.noexc23.i.i unwind label %bb.lf, !noalias !217

.noexc23.i.i:                                     ; preds = %bb.bl
  unreachable

bb.bm:                                            ; preds = %bb.ah
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 8, !range !17, !noalias !244
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.958.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i)
  switch i8 %.pre.i.i.i, label %default.unreachable [
    i8 0, label %bb.bn
    i8 1, label %bb.br
    i8 2, label %bb.bs
    i8 3, label %bb.bo
    i8 4, label %bb.cf
  ]

bb.bn:                                            ; preds = %bb.bm, %.thread.i.i.i
  store i8 0, ptr %i.cj, align 2, !noalias !244
  store i8 0, ptr %i.ck, align 1, !noalias !244
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !244
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i64 24, i1 false), !noalias !244
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !244
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !244
  invoke void @_RINvNtNtCskruEhpekJ3V_5tokio3net4addr15to_socket_addrsNtNtCs4wP2HXfJTCR_5alloc6string6StringECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.o)
          to label %bb.bq unwind label %bb.bp, !noalias !245

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !244
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !244
  br label %bb.bt

bb.bp:                                            ; preds = %bb.bn
  %i.go = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !244
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit37.i.i.i.i

bb.bq:                                            ; preds = %bb.bn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cl, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.m, i64 32, i1 false), !noalias !244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !244
  br label %bb.bt

bb.br:                                            ; preds = %bb.bm
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #22
          to label %.noexc167.i.i.i unwind label %bb.eo, !noalias !226

.noexc167.i.i.i:                                  ; preds = %bb.br
  unreachable

bb.bs:                                            ; preds = %bb.bm
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #22
          to label %.noexc168.i.i.i unwind label %bb.eo, !noalias !226

.noexc168.i.i.i:                                  ; preds = %bb.bs
  unreachable

bb.bt:                                            ; preds = %bb.bq, %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !244
  invoke void @_RNvXNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealedNtB2_10MaybeReadyNtNtNtCsj6eKBz9Db1c_4core6future6future6Future4poll(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cl, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bf)
          to label %bb.bw unwind label %bb.bu, !noalias !245

bb.bu:                                            ; preds = %bb.bt
  %i.gp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !244
  %i.gq = load i16, ptr %i.cl, align 8, !range !18, !alias.scope !246, !noalias !244, !noundef !8
  %.not.i.i.i.i.i.i = icmp eq i16 %i.gq, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.bv, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit37.i.i.i.i

bb.bv:                                            ; preds = %bb.bu
  invoke void @_RNvXs5_NtNtNtCskruEhpekJ3V_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsj6eKBz9Db1c_4core6result6ResultINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtB1a_3net11socket_addr10SocketAddrENtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cm)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit37.i.i.i.i unwind label %bb.ce, !noalias !245

bb.bw:                                            ; preds = %bb.bt
  %i.gr = load i32, ptr %i.l, align 8, !range !247, !noalias !244, !noundef !8 ; 3 uses
  %i.gs = icmp eq i32 %i.gr, -1
  br i1 %i.gs, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !244
  br label %bb.ep

bb.by:                                            ; preds = %bb.bw
  %.sroa.3.0.copyload.i.i.i.i = load i32, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 4, !noalias !244
  %.sroa.4.0.copyload.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i166.i.i.i, align 8, !noalias !244 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i.i.i.i, i64 24, i1 false), !noalias !244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !244
  %i.gt = load i16, ptr %i.cl, align 8, !range !18, !alias.scope !248, !noalias !244, !noundef !8
  %.not.i.i15.i.i.i.i = icmp eq i16 %i.gt, -1
  br i1 %.not.i.i15.i.i.i.i, label %bb.bz, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed10MaybeReadyECsc044841uM34_23unbuffered_async_client.exit17.i.i.i.i

bb.bz:                                            ; preds = %bb.by
  invoke void @_RNvXs5_NtNtNtCskruEhpekJ3V_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsj6eKBz9Db1c_4core6result6ResultINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtB1a_3net11socket_addr10SocketAddrENtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cm)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed10MaybeReadyECsc044841uM34_23unbuffered_async_client.exit17.i.i.i.i unwind label %bb.cc, !noalias !245

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed10MaybeReadyECsc044841uM34_23unbuffered_async_client.exit17.i.i.i.i: ; preds = %bb.bz, %bb.by
  %i.gu = icmp eq i32 %i.gr, 2
  br i1 %i.gu, label %bb.cd, label %bb.ca

bb.ca:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed10MaybeReadyECsc044841uM34_23unbuffered_async_client.exit17.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.648.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i.i.i, i64 24, i1 false), !noalias !244
  store i32 %i.gr, ptr %i.n, align 8, !noalias !244
  store i32 %.sroa.3.0.copyload.i.i.i.i, ptr %.sroa.447.0..sroa_idx.i.i.i.i, align 4, !noalias !244
  store ptr %.sroa.4.0.copyload.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !244
  store i8 1, ptr %i.ck, align 1, !noalias !244
  store ptr null, ptr %i.cl, align 8, !noalias !244
  store i8 0, ptr %i.cj, align 2, !noalias !244
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cm, ptr noundef nonnull align 8 dereferenceable(40) %i.n, i64 40, i1 false), !noalias !244
  br label %bb.cb

bb.cb:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i, %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !244
  invoke void @_RNvXs_NtNtNtCskruEhpekJ3V_5tokio3net4addr6sealedNtB4_9OneOrMoreNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([32 x i8]) align 4 captures(address) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cm)
          to label %bb.eh unwind label %bb.eg, !noalias !245

bb.cc:                                            ; preds = %bb.bz
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit37.i.i.i.i

bb.cd:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed10MaybeReadyECsc044841uM34_23unbuffered_async_client.exit17.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i.i.i) ]
  br label %bb.eq

bb.ce:                                            ; preds = %bb.en, %bb.em, %bb.ef, %bb.dq, %bb.bv
  %i.gw = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_RINvMs2_NtNtCskruEhpekJ3V_5tokio7runtime4parkNtB6_16CachedParkThread8block_onNCNvCsc044841uM34_23unbuffered_async_client4main0EB1h_:bb.a

bb.dy:                                            ; preds = %bb.dx
  invoke void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtB12_3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ct)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i unwind label %bb.el, !noalias !245

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i: ; preds = %bb.dy, %bb.dx
  %.val13.i.i.i.i = load ptr, ptr %i.cl, align 8, !noalias !244, !noundef !8 ; 4 uses
  %i.io = icmp eq ptr %.val13.i.i.i.i, null
  br i1 %i.io, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsc044841uM34_23unbuffered_async_client.exit30.i.i.i.i, label %bb.dz

bb.dz:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !244
  %i.ip = ptrtoint ptr %.val13.i.i.i.i to i64     ; 2 uses
  %i.iq = and i64 %i.ip, 3
  switch i64 %i.iq, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc044841uM34_23unbuffered_async_client.exit.i27.i.i.i.i
    i64 3, label %bb.ea
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc044841uM34_23unbuffered_async_client.exit.i27.i.i.i.i
    i64 1, label %bb.eb
  ], !prof !21

bb.ea:                                            ; preds = %bb.dz
  %i.ir = icmp ult ptr %.val13.i.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.is = and i64 %i.ip, 1095216660480
  %i.it = icmp ne i64 %i.is, 1095216660480
  call void @llvm.assume(i1 %i.ir)
  call void @llvm.assume(i1 %i.it)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc044841uM34_23unbuffered_async_client.exit.i27.i.i.i.i

bb.eb:                                            ; preds = %bb.dz
  %i.iu = getelementptr i8, ptr %.val13.i.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.iu) ]
  store ptr %i.iu, ptr %i.cu, align 8, !alias.scope !263, !noalias !244
  store i8 3, ptr %i.e, align 8, !alias.scope !263, !noalias !244
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cu)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc044841uM34_23unbuffered_async_client.exit.i27.i.i.i.i unwind label %bb.ed, !noalias !245

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc044841uM34_23unbuffered_async_client.exit.i27.i.i.i.i: ; preds = %bb.eb, %bb.ea, %bb.dz, %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !244
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsc044841uM34_23unbuffered_async_client.exit30.i.i.i.i

bb.ec:                                            ; preds = %bb.em, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit32.i.i.i.i, %bb.ed
  %.pn4.pn.pn.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn4.pn.pn.pn.i.i.i.i, %bb.em ], [ %.pn4.pn.pn.pn.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit32.i.i.i.i ], [ %i.iz, %bb.ed ] ; 2 uses
  store i8 0, ptr %i.ck, align 1, !noalias !244
  %i.iv = load i8, ptr %i.cj, align 2, !range !10, !noalias !244, !noundef !8
  %i.iw = trunc nuw i8 %i.iv to i1
  %i.ix = load i32, ptr %i.n, align 8, !range !19, !noalias !244
  %i.iy = icmp ne i32 %i.ix, 0
  %or.cond.not.i.i.i.i = select i1 %i.iw, i1 %i.iy, i1 false
  br i1 %or.cond.not.i.i.i.i, label %bb.en, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit37.i.i.i.i

bb.ed:                                            ; preds = %bb.eb
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsc044841uM34_23unbuffered_async_client.exit30.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc044841uM34_23unbuffered_async_client.exit.i27.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i
  store i8 0, ptr %i.ck, align 1, !noalias !244
  br label %bb.eq

bb.ee:                                            ; preds = %bb.dw
  %i.ja = landingpad { ptr, i32 }
          cleanup
  store i8 1, ptr %i.ck, align 1, !noalias !244
  store ptr %.sroa.3.0.i71.i.i.i.i, ptr %i.cl, align 8, !noalias !244
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtBG_9TcpStream12connect_addr0ECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i, %bb.dt
  store i8 1, ptr %i.ck, align 1, !noalias !244
  store ptr %.sroa.3.0.i71.i.i.i.i, ptr %i.cl, align 8, !noalias !244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !244
  br label %bb.cb

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtBG_9TcpStream12connect_addr0ECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i: ; preds = %bb.eg, %bb.ee, %bb.dq, %.body.i.i.i.i, %.body.thread.i.i.i.i
  %.pn4.pn.i.i.i.i = phi { ptr, i32 } [ %i.jd, %bb.eg ], [ %i.ja, %bb.ee ], [ %i.id, %bb.dq ], [ %i.id, %.body.i.i.i.i ], [ %.pn4.pn.i.i.i.i.i, %.body.thread.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !244
  %i.jb = load i32, ptr %i.cm, align 8, !range !19, !alias.scope !264, !noalias !244, !noundef !8
  %i.jc = icmp eq i32 %i.jb, 0
  br i1 %i.jc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit32.i.i.i.i, label %bb.ef

bb.ef:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtBG_9TcpStream12connect_addr0ECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i
  invoke void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtB12_3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ct)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit32.i.i.i.i unwind label %bb.ce, !noalias !245

bb.eg:                                            ; preds = %bb.cb
  %i.jd = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtBG_9TcpStream12connect_addr0ECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i

bb.eh:                                            ; preds = %bb.cb
  %i.je = load i16, ptr %i.k, align 4, !range !265, !noalias !244, !noundef !8
  %.not.i165.i.i.i = icmp eq i16 %i.je, 2
  br i1 %.not.i165.i.i.i, label %bb.ei, label %.thread.i.i.i.i

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !244
  %i.jf = load i32, ptr %i.cm, align 8, !range !19, !alias.scope !266, !noalias !244, !noundef !8
  %i.jg = icmp eq i32 %i.jf, 0
  br i1 %i.jg, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit34.i.i.i.i, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  invoke void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtB12_3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ct)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit34.i.i.i.i unwind label %bb.el, !noalias !245

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit34.i.i.i.i: ; preds = %bb.ej, %bb.ei
  store i8 0, ptr %i.ck, align 1, !noalias !244
  %i.jh = load ptr, ptr %i.cl, align 8, !noalias !244, !noundef !8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.jh, null
  br i1 %.not.i.i.i.i.i, label %bb.ek, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtB5_2io5error5ErrorE14unwrap_or_elseNCNCINvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB1v_9TcpStream7connectNtNtCs4wP2HXfJTCR_5alloc6string6StringE00ECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i

bb.ek:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit34.i.i.i.i
  %i.ji = invoke noundef nonnull ptr @_RINvMNtNtCs4wP2HXfJTCR_5alloc2io5errorNtNtNtCsj6eKBz9Db1c_4core2io5error5Error3newReECsaKJjC64KgbL_3std(i8 noundef 20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 32) #21
          to label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtB5_2io5error5ErrorE14unwrap_or_elseNCNCINvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB1v_9TcpStream7connectNtNtCs4wP2HXfJTCR_5alloc6string6StringE00ECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i unwind label %bb.el, !noalias !245

bb.el:                                            ; preds = %bb.ek, %bb.ej, %bb.dy
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit32.i.i.i.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtB5_2io5error5ErrorE14unwrap_or_elseNCNCINvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB1v_9TcpStream7connectNtNtCs4wP2HXfJTCR_5alloc6string6StringE00ECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i: ; preds = %bb.ek, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit34.i.i.i.i
  %.sroa.02.0.i.i.i.i.i = phi ptr [ %i.jh, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit34.i.i.i.i ], [ %i.ji, %bb.ek ]
  store i8 0, ptr %i.ck, align 1, !noalias !244
  br label %bb.eq

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit32.i.i.i.i: ; preds = %bb.el, %bb.ef, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtBG_9TcpStream12connect_addr0ECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i
  %.pn4.pn.pn.pn.i.i.i.i = phi { ptr, i32 } [ %i.jj, %bb.el ], [ %.pn4.pn.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtBG_9TcpStream12connect_addr0ECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i ], [ %.pn4.pn.i.i.i.i, %bb.ef ] ; 2 uses
  %i.jk = load i8, ptr %i.ck, align 1, !range !10, !noalias !244, !noundef !8
  %i.jl = trunc nuw i8 %i.jk to i1
  br i1 %i.jl, label %bb.em, label %bb.ec

.thread.i.i.i.i:                                  ; preds = %bb.eh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cn, ptr noundef nonnull align 4 dereferenceable(32) %i.k, i64 32, i1 false), !noalias !244
  store i8 0, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !244
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.955.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.517.i.i.i.i.i)
  br label %bb.cg

bb.em:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit32.i.i.i.i
  %.val.i.i.i.i = load ptr, ptr %i.cl, align 8, !noalias !244, !noundef !8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsc044841uM34_23unbuffered_async_client(ptr %.val.i.i.i.i) #19
          to label %bb.ec unwind label %bb.ce, !noalias !245

bb.en:                                            ; preds = %bb.ec
  invoke void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsj6eKBz9Db1c_4core3net11socket_addr10SocketAddrENtNtNtB12_3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i.i.i.i)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit37.i.i.i.i unwind label %bb.ce, !noalias !245

bb.eo:                                            ; preds = %bb.bs, %bb.br
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %.body169.i.i.i

.body169.i.i.i:                                   ; preds = %bb.eo, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit37.i.i.i.i
  %eh.lpad-body170.i.i.i = phi { ptr, i32 } [ %i.jm, %bb.eo ], [ %.pn10.pn.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net4addr6sealed9OneOrMoreECsc044841uM34_23unbuffered_async_client.exit37.i.i.i.i ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCINvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtBH_9TcpStream7connectNtNtCs4wP2HXfJTCR_5alloc6string6StringE0ECsc044841uM34_23unbuffered_async_client(ptr noundef nonnull align 8 %i.bt) #19
          to label %.body218.i.i.i unwind label %bb.bi, !noalias !226

bb.ep:                                            ; preds = %bb.dr, %bb.bx
  %.sink.i.ph.i.i.i = phi i8 [ 3, %bb.bx ], [ 4, %bb.dr ]
  store i8 %.sink.i.ph.i.i.i, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !244
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.958.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i)
  br label %bb.lg

bb.eq:                                            ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtB5_2io5error5ErrorE14unwrap_or_elseNCNCINvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB1v_9TcpStream7connectNtNtCs4wP2HXfJTCR_5alloc6string6StringE00ECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsc044841uM34_23unbuffered_async_client.exit30.i.i.i.i, %bb.cd
  %.sroa.056.1.i.i.i.i = phi i64 [ 2, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtB5_2io5error5ErrorE14unwrap_or_elseNCNCINvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB1v_9TcpStream7connectNtNtCs4wP2HXfJTCR_5alloc6string6StringE00ECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i ], [ 2, %bb.cd ], [ %.sroa.024.0.i28.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsc044841uM34_23unbuffered_async_client.exit30.i.i.i.i ] ; 2 uses
  %.sroa.557.1.i.i.i.i = phi ptr [ %.sroa.02.0.i.i.i.i.i, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtB5_2io5error5ErrorE14unwrap_or_elseNCNCINvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtB1v_9TcpStream7connectNtNtCs4wP2HXfJTCR_5alloc6string6StringE00ECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i ], [ %.sroa.4.0.copyload.i.i.i.i, %bb.cd ], [ %.sroa.626.0.i29.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsc044841uM34_23unbuffered_async_client.exit30.i.i.i.i ] ; 3 uses
  store i8 0, ptr %i.cj, align 2, !noalias !244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !244
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6257.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.958.i.i.i.i, i64 16, i1 false), !noalias !225
  store i8 1, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !244
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.958.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCINvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtBH_9TcpStream7connectNtNtCs4wP2HXfJTCR_5alloc6string6StringE0ECsc044841uM34_23unbuffered_async_client(ptr noundef nonnull align 8 %i.bt)
          to label %bb.er unwind label %bb.ks, !noalias !226

bb.er:                                            ; preds = %bb.eq
  %i.jn = icmp eq i64 %.sroa.056.1.i.i.i.i, 2
  br i1 %i.jn, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.557.1.i.i.i.i) ]
  %i.jo = invoke { ptr, ptr } @_RNvXsd_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtB7_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorEL_EINtNtBW_7convert4FromNtNtNtBW_2io5error5ErrorE4fromCsc044841uM34_23unbuffered_async_client(ptr noundef nonnull %.sroa.557.1.i.i.i.i)
          to label %bb.ev unwind label %bb.ks, !noalias !226 ; 2 uses

bb.et:                                            ; preds = %bb.er
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5260.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6257.i.i.i, i64 16, i1 false), !noalias !225
  store i64 %.sroa.056.1.i.i.i.i, ptr %i.bs, align 8, !noalias !225
  store ptr %.sroa.557.1.i.i.i.i, ptr %.sroa.4259.0..sroa_idx.i.i.i, align 8, !noalias !225
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, i8 0, i64 24, i1 false), !noalias !225
  store i32 0, ptr %i.cy, align 8, !noalias !225
  br label %bb.eu

bb.eu:                                            ; preds = %bb.fl, %bb.et
  %i.jp = phi i8 [ %.pre492.i.i.i, %bb.fl ], [ 0, %bb.et ]
  %i.jq = trunc nuw i8 %i.jp to i1
  br i1 %i.jq, label %bb.fo, label %bb.fp

bb.ev:                                            ; preds = %bb.es
  %i.jr = extractvalue { ptr, ptr } %i.jo, 0      ; 2 uses
  %i.js = extractvalue { ptr, ptr } %i.jo, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jr), "nonnull"(ptr %i.js) ]
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit228.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit228.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i224._RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit228_crit_edge.i.i.i, %bb.ev
  %.sroa.031.1.pre-phi.i.i.i = phi ptr [ %.pre494.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i224._RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit228_crit_edge.i.i.i ], [ %i.jr, %bb.ev ]
  %.sroa.16.1.pre-phi.i.i.i = phi ptr [ %.pre493.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i224._RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit228_crit_edge.i.i.i ], [ %i.js, %bb.ev ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn26UnbufferedClientConnectionECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(976) %i.ch)
          to label %bb.lh unwind label %bb.kt, !noalias !226

.body218.i.i.i:                                   ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i222.i.i.i, %bb.ks, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i, %.body169.i.i.i, %bb.ay
  %.pn128.pn.i.i.i = phi { ptr, i32 } [ %i.sc, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i222.i.i.i ], [ %i.fz, %bb.ay ], [ %i.rr, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i ], [ %i.ry, %bb.ks ], [ %eh.lpad-body170.i.i.i, %.body169.i.i.i ], [ %.pn126.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn26UnbufferedClientConnectionECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(976) %i.ch) #19
          to label %bb.bj unwind label %bb.bi, !noalias !226

bb.ew:                                            ; preds = %bb.jm, %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !225
  invoke fastcc void @_RNCNvCsc044841uM34_23unbuffered_async_client8recv_tls0B3_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.t, ptr noundef nonnull align 8 %i.bt, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bf)
          to label %bb.ey unwind label %bb.ex, !noalias !226

bb.ex:                                            ; preds = %bb.ew
  %i.jt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !225
  br label %bb.hk

bb.ey:                                            ; preds = %bb.ew
  %i.ju = load i64, ptr %i.t, align 8, !range !11, !noalias !225, !noundef !8
  %i.jv = trunc nuw i64 %i.ju to i1
  br i1 %i.jv, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !225
  br label %bb.lg

bb.fa:                                            ; preds = %bb.ey
  %i.jw = load ptr, ptr %i.dp, align 8, !noalias !225, !noundef !8 ; 2 uses
  %i.jx = load ptr, ptr %i.dq, align 8, !noalias !225 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !225
  %.not.i172.i.i.i = icmp eq ptr %i.jw, null
  br i1 %.not.i172.i.i.i, label %bb.fb, label %bb.ku

bb.fb:                                            ; preds = %bb.jy, %bb.jj, %bb.iy, %bb.in, %bb.ig, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered13EncodeTlsDataNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit.i.i.i, %bb.fa
  %.pr = load i64, ptr %i.de, align 8, !noalias !225
  switch i64 %.pr, label %.thread718 [
    i64 0, label %bb.fc
    i64 4, label %bb.fc
    i64 5, label %bb.fc
    i64 7, label %bb.fc
  ]

.thread718:                                       ; preds = %bb.fz, %bb.gb, %bb.fb
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered15ConnectionStateNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(56) %i.de)
          to label %bb.fc unwind label %.loopexit.split-lp64.loopexit.split-lp.loopexit.split-lp, !noalias !226

bb.fc:                                            ; preds = %.thread718, %bb.fb, %bb.fb, %bb.fb, %bb.fb
  %i.jy = load i64, ptr %i.da, align 8, !noalias !225, !noundef !8 ; 3 uses
  %i.jz = icmp eq i64 %i.jy, 0
  br i1 %i.jz, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.ka = load i64, ptr %i.cx, align 8, !noalias !225, !noundef !8 ; 2 uses
  %.not100.i.i.i = icmp ugt i64 %i.jy, %i.ka
  br i1 %.not100.i.i.i, label %bb.ff, label %bb.fg, !prof !15

bb.fe:                                            ; preds = %bb.fk, %bb.fc
  %i.kb = load i64, ptr %i.ee, align 8, !noalias !225, !noundef !8
  %i.kc = add i64 %i.kb, 1                        ; 2 uses
  store i64 %i.kc, ptr %i.ee, align 8, !noalias !225
  %i.kd = icmp ult i64 %i.kc, 20
  br i1 %i.kd, label %bb.fl, label %bb.fm

bb.ff:                                            ; preds = %bb.fd
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @255, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @256) #20
          to label %bb.fh unwind label %.loopexit.split-lp64.loopexit.split-lp.loopexit.split-lp, !noalias !226

bb.fg:                                            ; preds = %bb.fd
  %i.ke = load ptr, ptr %i.cd, align 8, !noalias !225, !nonnull !8, !noundef !8 ; 2 uses
  %i.kf = load i64, ptr %i.ce, align 8, !noalias !225, !noundef !8
  %i.kg = invoke { i64, i64 } @_RINvNtNtCsj6eKBz9Db1c_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsc044841uM34_23unbuffered_async_client(i64 noundef range(i64 1, 0) %i.jy, i64 noundef range(i64 1, 0) %i.ka, i64 noundef range(i64 0, -9223372036854775808) %i.kf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @257)
          to label %bb.fi unwind label %.loopexit.split-lp64.loopexit.split-lp.loopexit.split-lp, !noalias !226 ; 2 uses

bb.fh:                                            ; preds = %bb.gd, %bb.fm, %bb.ff
  unreachable

.loopexit.split-lp64.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.kv, %bb.fg, %.thread718, %bb.ff
  %lpad.loopexit.split-lp922 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.fi:                                            ; preds = %bb.fg
  %i.kh = extractvalue { i64, i64 } %i.kg, 1
  %i.ki = extractvalue { i64, i64 } %i.kg, 0      ; 2 uses
  %i.kj = sub i64 %i.kh, %i.ki
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ke, i64 %i.ki
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ke, ptr nonnull align 1 %i.kk, i64 %i.kj, i1 false), !alias.scope !267, !noalias !226
  %i.kl = load i64, ptr %i.da, align 8, !noalias !225, !noundef !8
  %i.km = load i64, ptr %i.cx, align 8, !noalias !225, !noundef !8
  %i.kn = sub i64 %i.km, %i.kl
  store i64 %i.kn, ptr %i.cx, align 8, !noalias !225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !225
  store ptr %i.da, ptr %i.s, align 8, !noalias !225
  store ptr @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.5396.0..sroa_idx.i.i.i, align 8, !noalias !225
  invoke void @_RNvNtNtCsaKJjC64KgbL_3std2io5stdio7__eprint(ptr noundef nonnull @258, ptr noundef nonnull %i.s)
          to label %bb.fk unwind label %bb.fj, !noalias !226

bb.fj:                                            ; preds = %bb.fi
  %i.ko = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !225
  br label %.body.i.i.i

bb.fk:                                            ; preds = %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !225
  br label %bb.fe

bb.fl:                                            ; preds = %bb.fe
  store i8 0, ptr %i.cc, align 4, !noalias !225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !225
  %.pre492.i.i.i = load i8, ptr %i.cz, align 1, !range !10, !noalias !225
  br label %bb.eu

bb.fm:                                            ; preds = %bb.fe
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !225
  store ptr @259, ptr %i.r, align 8, !noalias !225
  %.sroa.5398.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.5398.0..sroa_idx.i.i.i, align 8, !noalias !225
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @260, ptr noundef nonnull %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @261) #20
          to label %bb.fh unwind label %bb.fn, !noalias !226

bb.fn:                                            ; preds = %bb.fm
  %i.kp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !225
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp64.loopexit.split-lp.loopexit.split-lp, %bb.lc, %bb.kb, %bb.hk, %bb.hk, %bb.hk, %bb.hk, %bb.fu, %bb.fn, %bb.fj
  %.pn123.pn.i.i.i = phi { ptr, i32 } [ %i.la, %bb.kb ], [ %i.kp, %bb.fn ], [ %i.ko, %bb.fj ], [ %i.ky, %bb.fu ], [ %.pn119.pn.i.i.i, %bb.lc ], [ %.pn119.pn.i.i.i, %bb.hk ], [ %.pn119.pn.i.i.i, %bb.hk ], [ %.pn119.pn.i.i.i, %bb.hk ], [ %.pn119.pn.i.i.i, %bb.hk ], [ %lpad.loopexit.split-lp922, %.loopexit.split-lp64.loopexit.split-lp.loopexit.split-lp ]
  %i.kq = load i8, ptr %i.cc, align 4, !range !10, !noalias !225, !noundef !8
  %i.kr = trunc nuw i8 %i.kq to i1
  br i1 %i.kr, label %bb.le, label %bb.ld

bb.fo:                                            ; preds = %bb.eu
  %i.ks = load i8, ptr %i.dh, align 2, !range !10, !noalias !225, !noundef !8
  %i.kt = trunc nuw i8 %i.ks to i1
  br i1 %i.kt, label %bb.kc, label %.invoke549.i.i.i, !prof !9

bb.fp:                                            ; preds = %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !225
  %i.ku = load i64, ptr %i.ce, align 8, !noalias !225, !noundef !8 ; 2 uses
  %i.kv = load i64, ptr %i.cx, align 8, !noalias !225, !noundef !8 ; 3 uses
  %.not.i.i176.i.i.i = icmp ugt i64 %i.kv, %i.ku
  br i1 %.not.i.i176.i.i.i, label %bb.fq, label %bb.fr, !prof !15

bb.fq:                                            ; preds = %bb.fp
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.kv, i64 noundef range(i64 0, -9223372036854775808) %i.ku, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @262) #22
          to label %.noexc177.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !226

.noexc177.i.i.i:                                  ; preds = %bb.fq
  unreachable

bb.fr:                                            ; preds = %bb.fp
  %i.kw = load ptr, ptr %i.cd, align 8, !noalias !225, !nonnull !8, !noundef !8
  invoke void @_RNvMNtNtCs7ZUl82OSlxp_6rustls4conn10unbufferedINtB4_26UnbufferedConnectionCommonNtNtNtB6_6client11client_conn20ClientConnectionDataE19process_tls_records(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.an, ptr noalias nofree noundef nonnull align 8 dereferenceable(976) %i.ch, ptr noalias nofree noundef nonnull %i.kw, i64 noundef %i.kv)
          to label %bb.fs unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !226

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.fr, %bb.fq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !225
  br label %bb.kd

bb.fs:                                            ; preds = %bb.fr
  %i.kx = load i64, ptr %i.db, align 8, !noalias !225, !noundef !8
  store i64 %i.kx, ptr %i.da, align 8, !noalias !225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !225
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ao, ptr noundef nonnull align 8 dereferenceable(64) %i.an, i64 64, i1 false), !noalias !225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !225
  store i8 0, ptr %i.cc, align 4, !noalias !225
  %.sroa.0261.0.copyload.i.i.i = load i8, ptr %i.ao, align 8, !noalias !225 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %.sroa.0261.0.copyload.i.i.i, -1
  br i1 %.not.i.i.i.i, label %bb.fx, label %bb.ft, !prof !9

bb.ft:                                            ; preds = %bb.fs
  %.sroa.6263.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !268
  store i8 %.sroa.0261.0.copyload.i.i.i, ptr %i.q, align 8, !noalias !269
  %.sroa.6263.0..sroa_idx264.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.6263.0..sroa_idx264.i.i.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.6263.0..sroa_idx.i.i.i, i64 63, i1 false), !noalias !225
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @286, i64 noundef 43, ptr noundef nonnull %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @285, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @263) #20
          to label %bb.fv unwind label %bb.fu, !noalias !270

bb.fu:                                            ; preds = %bb.ft
  %i.ky = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error5ErrorECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.q) #19
          to label %.body.i.i.i unwind label %bb.fw, !noalias !270

bb.fv:                                            ; preds = %bb.ft
  unreachable

end_hunk_1
begin_hunk_2_@_RINvMs2_NtNtCskruEhpekJ3V_5tokio7runtime4parkNtB6_16CachedParkThread8block_onNCNvCsc044841uM34_23unbuffered_async_client4main0EB1h_:bb.a
  br label %bb.hj

bb.hj:                                            ; preds = %bb.ku, %bb.ka, %bb.jz, %bb.jl, %bb.jk, %bb.iz, %bb.io, %bb.ih, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered13EncodeTlsDataNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit199.i.i.i
  %.pn117.pn.i.i.i = phi { ptr, ptr } [ %.pn117.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit199.i.i.i ], [ %i.np, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered13EncodeTlsDataNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit.i.i ], [ %i.ok, %bb.ih ], [ %i.ot, %bb.io ], [ %i.qx, %bb.ka ], [ %i.qv, %bb.jz ], [ %i.sb, %bb.ku ], [ %i.qc, %bb.jl ], [ %i.pz, %bb.jk ], [ %i.pl, %bb.iz ] ; 2 uses
  %i.mz = load i64, ptr %i.de, align 8, !range !22, !noalias !225, !noundef !8
  switch i64 %i.mz, label %bb.kv [
    i64 0, label %bb.kw
    i64 4, label %bb.kw
    i64 5, label %bb.kw
    i64 7, label %bb.kw
  ]

.loopexit.split-lp415.i.i.i:                      ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.i.loopexit.split-lp.i.i, %bb.gr
  %.pn113.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn108.pn.i.i.i, %.loopexit.split-lp.i.loopexit.split-lp.i.i ], [ %i.lm, %bb.gr ], [ %lpad.loopexit.split-lp914, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ai) #19
          to label %.body180.i.i.i unwind label %bb.bi, !noalias !226

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i, %bb.gh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !225
  br label %bb.fb

bb.hk:                                            ; preds = %.loopexit.split-lp58.loopexit.split-lp.loopexit.split-lp, %bb.jv, %bb.jp, %bb.jf, %bb.jb, %bb.iv, %bb.ik, %bb.ic, %bb.hy, %.body202.i.i.i, %.body180.i.i.i, %bb.ex
  %.pn119.pn.i.i.i = phi { ptr, i32 } [ %.pn119.i.i.i, %.body180.i.i.i ], [ %.pn97.i.i.i, %.body202.i.i.i ], [ %i.oc, %bb.ic ], [ %i.pn, %bb.jb ], [ %i.ny, %bb.hy ], [ %i.on, %bb.ik ], [ %i.qi, %bb.jp ], [ %i.qp, %bb.jv ], [ %i.jt, %bb.ex ], [ %i.pf, %bb.iv ], [ %i.pt, %bb.jf ], [ %lpad.loopexit.split-lp919, %.loopexit.split-lp58.loopexit.split-lp.loopexit.split-lp ] ; 5 uses
  %i.na = load i64, ptr %i.de, align 8, !range !22, !noalias !225, !noundef !8
  switch i64 %i.na, label %bb.lc [
    i64 0, label %.body.i.i.i
    i64 4, label %.body.i.i.i
    i64 5, label %.body.i.i.i
    i64 7, label %.body.i.i.i
  ]

bb.hl:                                            ; preds = %bb.gc
  %i.nb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !225
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered13EncodeTlsDataNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ad) #19
          to label %.body202.i.i.i unwind label %bb.bi, !noalias !226

bb.hm:                                            ; preds = %bb.gc
  %i.nc = load ptr, ptr %i.ac, align 8, !alias.scope !283, !noalias !225, !noundef !8 ; 2 uses
  %i.nd = load i64, ptr %i.dz, align 8, !alias.scope !283, !noalias !225 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !225
  %.not94.i.i.i = icmp eq ptr %i.nc, null
  br i1 %.not94.i.i.i, label %bb.hn, label %bb.hs

bb.hn:                                            ; preds = %bb.hm
  %i.ne = load i64, ptr %i.ad, align 8, !range !23, !alias.scope !284, !noalias !225, !noundef !8
  %i.nf = icmp eq i64 %i.ne, -1
  br i1 %i.nf, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered13EncodeTlsDataNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit.i.i.i, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i201.i.i.i unwind label %bb.hp, !noalias !226

bb.hp:                                            ; preds = %bb.ho
  %i.ng = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %.body202.i.i.i unwind label %bb.hq, !noalias !226

bb.hq:                                            ; preds = %bb.hp
  %i.nh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18, !noalias !226
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i201.i.i.i: ; preds = %bb.ho
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered13EncodeTlsDataNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit.i.i.i unwind label %bb.hr, !noalias !226

.body202.i.i.i:                                   ; preds = %bb.hu, %bb.hr, %bb.hp, %bb.hl
  %.pn97.i.i.i = phi { ptr, i32 } [ %i.nb, %bb.hl ], [ %i.ng, %bb.hp ], [ %i.ni, %bb.hr ], [ %i.nm, %bb.hu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !225
  br label %bb.hk

bb.hr:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i201.i.i.i
  %i.ni = landingpad { ptr, i32 }
          cleanup
  br label %.body202.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered13EncodeTlsDataNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i201.i.i.i, %bb.hn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !225
  br label %bb.fb

bb.hs:                                            ; preds = %bb.hm
  %i.nj = icmp ne i64 %i.nd, 0
  call void @llvm.assume(i1 %i.nj)
  %i.nk = load i64, ptr %i.ad, align 8, !range !23, !alias.scope !285, !noalias !286, !noundef !8
  %i.nl = icmp eq i64 %i.nk, -1
  br i1 %i.nl, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered13EncodeTlsDataNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit.i.i, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i unwind label %bb.hu, !noalias !226

bb.hu:                                            ; preds = %bb.ht
  %i.nm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %.body202.i.i.i unwind label %bb.hv, !noalias !226

bb.hv:                                            ; preds = %bb.hu
  %i.nn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18, !noalias !226
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i: ; preds = %bb.ht
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered13EncodeTlsDataNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit.i.i unwind label %bb.hr, !noalias !217

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered13EncodeTlsDataNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i, %bb.hs
  %i.no = insertvalue { ptr, ptr } poison, ptr %i.nc, 0
  %.sink1.i.i.i.i = inttoptr i64 %i.nd to ptr
  %i.np = insertvalue { ptr, ptr } %i.no, ptr %.sink1.i.i.i.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !225
  br label %bb.hj

.loopexit.split-lp58.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ip, %bb.gd
  %lpad.loopexit.split-lp919 = landingpad { ptr, i32 }
          cleanup
  br label %bb.hk

bb.hw:                                            ; preds = %bb.fz
  %i.nq = load ptr, ptr %i.dg, align 8, !noalias !225, !nonnull !8, !align !12, !noundef !8 ; 3 uses
  store ptr %i.nq, ptr %i.bt, align 8, !noalias !225
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 822
  %i.ns = load i8, ptr %i.nr, align 2, !range !10, !noalias !226, !noundef !8
  %i.nt = trunc nuw i8 %i.ns to i1
  br i1 %i.nt, label %bb.hx, label %bb.ia

bb.hx:                                            ; preds = %bb.hw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !225
  store ptr %i.nq, ptr %i.ab, align 8, !noalias !225
  %i.nu = load ptr, ptr %i.cf, align 8, !noalias !225, !nonnull !8, !align !12, !noundef !8 ; 2 uses
  %i.nv = getelementptr i8, ptr %i.nu, i64 8
  %.val.i.i.i = load ptr, ptr %i.nv, align 8, !noalias !226, !nonnull !8, !noundef !8
  %i.nw = getelementptr i8, ptr %i.nu, i64 16
  %.val143.i.i.i = load i64, ptr %i.nw, align 8, !noalias !226, !noundef !8
  %i.nx = invoke noundef zeroext i1 @_RNvCsc044841uM34_23unbuffered_async_client20encrypt_http_request(ptr noalias nofree noundef nonnull dereferenceable(1) %i.dh, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noalias nofree noundef nonnull %.val.i.i.i, i64 noundef %.val143.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.di)
          to label %bb.hz unwind label %bb.hy, !noalias !226 ; 0 uses

bb.hy:                                            ; preds = %bb.hx
  %i.ny = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !225
  br label %bb.hk

bb.hz:                                            ; preds = %bb.hx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !225
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %bb.hw
  %i.nz = load ptr, ptr %i.cf, align 8, !noalias !225, !nonnull !8, !align !12, !noundef !8 ; 2 uses
  %i.oa = getelementptr i8, ptr %i.nz, i64 8
  %.val152.i.i.i = load ptr, ptr %i.oa, align 8, !noalias !226, !nonnull !8, !noundef !8
  %i.ob = getelementptr i8, ptr %i.nz, i64 16
  %.val153.i.i.i = load i64, ptr %i.ob, align 8, !noalias !226, !noundef !8
  store ptr %i.bs, ptr %.sroa.8359.0..sroa_idx.i.i.i, align 8, !noalias !225
  store ptr %.val152.i.i.i, ptr %.sroa.9360.0..sroa_idx.i.i.i, align 8, !noalias !225
  store i64 %.val153.i.i.i, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !225
  store ptr %i.di, ptr %i.cl, align 8, !noalias !225
  store i8 0, ptr %.sroa.12307.0..sroa_idx.i.i.i, align 8, !noalias !225
  br label %bb.ib

bb.ib:                                            ; preds = %bb.ia, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !225
  invoke fastcc void @_RNCNvCsc044841uM34_23unbuffered_async_client8send_tls0B3_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.aa, ptr noundef nonnull align 8 %.sroa.8359.0..sroa_idx.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bf)
          to label %bb.id unwind label %bb.ic, !noalias !226

bb.ic:                                            ; preds = %bb.ib
  %i.oc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !225
  br label %bb.hk

bb.id:                                            ; preds = %bb.ib
  %i.od = load i64, ptr %i.aa, align 8, !range !11, !noalias !225, !noundef !8
  %i.oe = trunc nuw i64 %i.od to i1
  br i1 %i.oe, label %bb.ie, label %bb.if

bb.ie:                                            ; preds = %bb.id
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !225
  br label %bb.lg

bb.if:                                            ; preds = %bb.id
  %i.of = load ptr, ptr %i.dx, align 8, !noalias !225, !noundef !8 ; 2 uses
  %i.og = load ptr, ptr %i.dy, align 8, !noalias !225 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !225
  %.not.i205.i.i.i = icmp eq ptr %i.of, null
  br i1 %.not.i205.i.i.i, label %bb.ig, label %bb.ih

bb.ig:                                            ; preds = %bb.if
  %i.oh = load ptr, ptr %i.bt, align 8, !noalias !225, !nonnull !8, !align !12, !noundef !8
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 968
  store i8 0, ptr %i.oi, align 8, !alias.scope !287, !noalias !226
  br label %bb.fb

bb.ih:                                            ; preds = %bb.if
  %i.oj = insertvalue { ptr, ptr } poison, ptr %i.of, 0
  %i.ok = insertvalue { ptr, ptr } %i.oj, ptr %i.og, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.og) ]
  br label %bb.hj

bb.ii:                                            ; preds = %bb.fz
  %i.ol = load ptr, ptr %i.cd, align 8, !noalias !225, !nonnull !8, !noundef !8
  %i.om = load i64, ptr %i.ce, align 8, !noalias !225, !noundef !8
  store ptr %i.bs, ptr %i.bt, align 8, !noalias !225
  store ptr %i.ol, ptr %.sroa.8359.0..sroa_idx.i.i.i, align 8, !noalias !225
  store i64 %i.om, ptr %.sroa.9360.0..sroa_idx.i.i.i, align 8, !noalias !225
  store ptr %i.cx, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !225
  store i8 0, ptr %.sroa.12363.0..sroa_idx.i.i.i, align 8, !noalias !225
  br label %bb.ij

bb.ij:                                            ; preds = %bb.ii, %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !225
  invoke fastcc void @_RNCNvCsc044841uM34_23unbuffered_async_client8recv_tls0B3_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.z, ptr noundef nonnull align 8 %i.bt, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bf)
          to label %bb.il unwind label %bb.ik, !noalias !226

bb.ik:                                            ; preds = %bb.ij
  %i.on = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !225
  br label %bb.hk

bb.il:                                            ; preds = %bb.ij
  %i.oo = load i64, ptr %i.z, align 8, !range !11, !noalias !225, !noundef !8
  %i.op = trunc nuw i64 %i.oo to i1
  br i1 %i.op, label %bb.im, label %bb.in

bb.im:                                            ; preds = %bb.il
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !225
  br label %bb.lg

bb.in:                                            ; preds = %bb.il
  %i.oq = load ptr, ptr %i.dv, align 8, !noalias !225, !noundef !8 ; 2 uses
  %i.or = load ptr, ptr %i.dw, align 8, !noalias !225 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !225
  %.not.i207.i.i.i = icmp eq ptr %i.oq, null
  br i1 %.not.i207.i.i.i, label %bb.fb, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.os = insertvalue { ptr, ptr } poison, ptr %i.oq, 0
  %i.ot = insertvalue { ptr, ptr } %i.os, ptr %i.or, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.or) ]
  br label %bb.hj

bb.ip:                                            ; preds = %bb.fz
  %i.ou = load ptr, ptr %i.dg, align 8, !noalias !225, !nonnull !8, !align !12, !noundef !8
  store ptr %i.ou, ptr %i.df, align 8, !noalias !225
  %i.ov = load ptr, ptr %i.cf, align 8, !noalias !225, !nonnull !8, !align !12, !noundef !8 ; 2 uses
  %i.ow = getelementptr i8, ptr %i.ov, i64 8
  %.val144.i.i.i = load ptr, ptr %i.ow, align 8, !noalias !226, !nonnull !8, !noundef !8
  %i.ox = getelementptr i8, ptr %i.ov, i64 16
  %.val145.i.i.i = load i64, ptr %i.ox, align 8, !noalias !226, !noundef !8
  %i.oy = invoke noundef zeroext i1 @_RNvCsc044841uM34_23unbuffered_async_client20encrypt_http_request(ptr noalias nofree noundef nonnull dereferenceable(1) %i.dh, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.df, ptr noalias nofree noundef nonnull %.val144.i.i.i, i64 noundef %.val145.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.di)
          to label %bb.iq unwind label %.loopexit.split-lp58.loopexit.split-lp.loopexit.split-lp, !noalias !226

bb.iq:                                            ; preds = %bb.ip
  br i1 %i.oy, label %bb.jn, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.oz = load i8, ptr %i.dj, align 1, !range !10, !noalias !225, !noundef !8
  %i.pa = trunc nuw i8 %i.oz to i1
  br i1 %i.pa, label %bb.is, label %bb.it

bb.is:                                            ; preds = %bb.ir
  %i.pb = load i8, ptr %i.cy, align 8, !range !10, !noalias !225, !noundef !8
  %i.pc = trunc nuw i8 %i.pb to i1
  br i1 %i.pc, label %bb.jm, label %bb.ja

bb.it:                                            ; preds = %bb.ir
  %i.pd = load ptr, ptr %i.cd, align 8, !noalias !225, !nonnull !8, !noundef !8
  %i.pe = load i64, ptr %i.ce, align 8, !noalias !225, !noundef !8
  store ptr %i.bs, ptr %i.bt, align 8, !noalias !225
  store ptr %i.pd, ptr %.sroa.8359.0..sroa_idx.i.i.i, align 8, !noalias !225
  store i64 %i.pe, ptr %.sroa.9360.0..sroa_idx.i.i.i, align 8, !noalias !225
  store ptr %i.cx, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !225
  store i8 0, ptr %.sroa.12363.0..sroa_idx.i.i.i, align 8, !noalias !225
  br label %bb.iu

bb.iu:                                            ; preds = %bb.it, %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !225
  invoke fastcc void @_RNCNvCsc044841uM34_23unbuffered_async_client8recv_tls0B3_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.w, ptr noundef nonnull align 8 %i.bt, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bf)
          to label %bb.iw unwind label %bb.iv, !noalias !226

bb.iv:                                            ; preds = %bb.iu
  %i.pf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !225
  br label %bb.hk

bb.iw:                                            ; preds = %bb.iu
  %i.pg = load i64, ptr %i.w, align 8, !range !11, !noalias !225, !noundef !8
  %i.ph = trunc nuw i64 %i.pg to i1
  br i1 %i.ph, label %bb.ix, label %bb.iy

bb.ix:                                            ; preds = %bb.iw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !225
  br label %bb.lg

bb.iy:                                            ; preds = %bb.iw
  %i.pi = load ptr, ptr %i.dk, align 8, !noalias !225, !noundef !8 ; 2 uses
  %i.pj = load ptr, ptr %i.dl, align 8, !noalias !225 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !225
  %.not.i209.i.i.i = icmp eq ptr %i.pi, null
  br i1 %.not.i209.i.i.i, label %bb.fb, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.pk = insertvalue { ptr, ptr } poison, ptr %i.pi, 0
  %i.pl = insertvalue { ptr, ptr } %i.pk, ptr %i.pj, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.pj) ]
  br label %bb.hj

bb.ja:                                            ; preds = %bb.is
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !225
  %i.pm = load ptr, ptr %i.cf, align 8, !noalias !225, !nonnull !8, !align !12, !noundef !8
  invoke void @_RINvCsc044841uM34_23unbuffered_async_client23try_or_resize_and_retryNtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered12EncryptErrorNCNCNvB2_8converse0s0_0NCB22_s1_0EB2_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.df, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.pm, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.di)
          to label %bb.jc unwind label %bb.jb, !noalias !226

bb.jb:                                            ; preds = %bb.ja
  %i.pn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !225
  br label %bb.hk

bb.jc:                                            ; preds = %bb.ja
  %i.po = load ptr, ptr %i.v, align 8, !alias.scope !288, !noalias !225, !noundef !8 ; 2 uses
  %i.pp = load i64, ptr %i.dm, align 8, !alias.scope !288, !noalias !225 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !225
  %.not55.i.i.i = icmp eq ptr %i.po, null
  br i1 %.not55.i.i.i, label %bb.jd, label %bb.jl

bb.jd:                                            ; preds = %bb.jc
  %i.pq = load ptr, ptr %i.cf, align 8, !noalias !225, !nonnull !8, !align !12, !noundef !8 ; 2 uses
  %i.pr = getelementptr i8, ptr %i.pq, i64 8
  %.val148.i.i.i = load ptr, ptr %i.pr, align 8, !noalias !226, !nonnull !8, !noundef !8
  %i.ps = getelementptr i8, ptr %i.pq, i64 16
  %.val149.i.i.i = load i64, ptr %i.ps, align 8, !noalias !226, !noundef !8
  store ptr %i.bs, ptr %i.bt, align 8, !noalias !225
  store ptr %.val148.i.i.i, ptr %.sroa.8359.0..sroa_idx.i.i.i, align 8, !noalias !225
  store i64 %.val149.i.i.i, ptr %.sroa.9360.0..sroa_idx.i.i.i, align 8, !noalias !225
  store ptr %i.di, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !225
  store i8 0, ptr %.sroa.12363.0..sroa_idx.i.i.i, align 8, !noalias !225
  br label %bb.je

bb.je:                                            ; preds = %bb.jd, %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !225
  invoke fastcc void @_RNCNvCsc044841uM34_23unbuffered_async_client8send_tls0B3_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.u, ptr noundef nonnull align 8 %i.bt, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bf)
          to label %bb.jg unwind label %bb.jf, !noalias !226

bb.jf:                                            ; preds = %bb.je
  %i.pt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !225
  br label %bb.hk

bb.jg:                                            ; preds = %bb.je
  %i.pu = load i64, ptr %i.u, align 8, !range !11, !noalias !225, !noundef !8
  %i.pv = trunc nuw i64 %i.pu to i1
  br i1 %i.pv, label %bb.jh, label %bb.ji

bb.jh:                                            ; preds = %bb.jg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !225
  br label %bb.lg

bb.ji:                                            ; preds = %bb.jg
  %i.pw = load ptr, ptr %i.dn, align 8, !noalias !225, !noundef !8 ; 2 uses
  %i.px = load ptr, ptr %i.do, align 8, !noalias !225 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !225
  %.not.i212.i.i.i = icmp eq ptr %i.pw, null
  br i1 %.not.i212.i.i.i, label %bb.jj, label %bb.jk

bb.jj:                                            ; preds = %bb.ji
  store i8 1, ptr %i.cy, align 8, !noalias !225
  br label %bb.fb

bb.jk:                                            ; preds = %bb.ji
  %i.py = insertvalue { ptr, ptr } poison, ptr %i.pw, 0
  %i.pz = insertvalue { ptr, ptr } %i.py, ptr %i.px, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.px) ]
  br label %bb.hj

bb.jl:                                            ; preds = %bb.jc
  %.sink1.i211.i.i.i = inttoptr i64 %i.pp to ptr
  %i.qa = icmp ne i64 %i.pp, 0
  call void @llvm.assume(i1 %i.qa)
  %i.qb = insertvalue { ptr, ptr } poison, ptr %i.po, 0
  %i.qc = insertvalue { ptr, ptr } %i.qb, ptr %.sink1.i211.i.i.i, 1
  br label %bb.hj

bb.jm:                                            ; preds = %bb.is
  %i.qd = load ptr, ptr %i.cd, align 8, !noalias !225, !nonnull !8, !noundef !8
  %i.qe = load i64, ptr %i.ce, align 8, !noalias !225, !noundef !8
  store ptr %i.bs, ptr %i.bt, align 8, !noalias !225
  store ptr %i.qd, ptr %.sroa.8359.0..sroa_idx.i.i.i, align 8, !noalias !225
  store i64 %i.qe, ptr %.sroa.9360.0..sroa_idx.i.i.i, align 8, !noalias !225
  store ptr %i.cx, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !225
  store i8 0, ptr %.sroa.12363.0..sroa_idx.i.i.i, align 8, !noalias !225
  br label %bb.ew

bb.jn:                                            ; preds = %bb.iq
  %i.qf = load ptr, ptr %i.cf, align 8, !noalias !225, !nonnull !8, !align !12, !noundef !8 ; 2 uses
  %i.qg = getelementptr i8, ptr %i.qf, i64 8
  %.val150.i.i.i = load ptr, ptr %i.qg, align 8, !noalias !226, !nonnull !8, !noundef !8
  %i.qh = getelementptr i8, ptr %i.qf, i64 16
  %.val151.i.i.i = load i64, ptr %i.qh, align 8, !noalias !226, !noundef !8
  store ptr %i.bs, ptr %i.bt, align 8, !noalias !225
  store ptr %.val150.i.i.i, ptr %.sroa.8359.0..sroa_idx.i.i.i, align 8, !noalias !225
  store i64 %.val151.i.i.i, ptr %.sroa.9360.0..sroa_idx.i.i.i, align 8, !noalias !225
  store ptr %i.di, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !225
  store i8 0, ptr %.sroa.12363.0..sroa_idx.i.i.i, align 8, !noalias !225
  br label %bb.jo

bb.jo:                                            ; preds = %bb.jn, %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !225
  invoke fastcc void @_RNCNvCsc044841uM34_23unbuffered_async_client8send_tls0B3_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.y, ptr noundef nonnull align 8 %i.bt, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bf)
          to label %bb.jq unwind label %bb.jp, !noalias !226

bb.jp:                                            ; preds = %bb.jo
  %i.qi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !225
  br label %bb.hk

bb.jq:                                            ; preds = %bb.jo
  %i.qj = load i64, ptr %i.y, align 8, !range !11, !noalias !225, !noundef !8
  %i.qk = trunc nuw i64 %i.qj to i1
  br i1 %i.qk, label %bb.jr, label %bb.js

bb.jr:                                            ; preds = %bb.jq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !225
  br label %bb.lg

bb.js:                                            ; preds = %bb.jq
  %i.ql = load ptr, ptr %i.dr, align 8, !noalias !225, !noundef !8 ; 2 uses
  %i.qm = load ptr, ptr %i.ds, align 8, !noalias !225 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !225
  %.not.i214.i.i.i = icmp eq ptr %i.ql, null
  br i1 %.not.i214.i.i.i, label %bb.jt, label %bb.ka

bb.jt:                                            ; preds = %bb.js
  %i.qn = load ptr, ptr %i.cd, align 8, !noalias !225, !nonnull !8, !noundef !8
  %i.qo = load i64, ptr %i.ce, align 8, !noalias !225, !noundef !8
  store ptr %i.bs, ptr %i.bt, align 8, !noalias !225
  store ptr %i.qn, ptr %.sroa.8359.0..sroa_idx.i.i.i, align 8, !noalias !225
  store i64 %i.qo, ptr %.sroa.9360.0..sroa_idx.i.i.i, align 8, !noalias !225
  store ptr %i.cx, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !225
  store i8 0, ptr %.sroa.12363.0..sroa_idx.i.i.i, align 8, !noalias !225
  br label %bb.ju

bb.ju:                                            ; preds = %bb.jt, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !225
  invoke fastcc void @_RNCNvCsc044841uM34_23unbuffered_async_client8recv_tls0B3_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.x, ptr noundef nonnull align 8 %i.bt, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bf)
          to label %bb.jw unwind label %bb.jv, !noalias !226

bb.jv:                                            ; preds = %bb.ju
  %i.qp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !225
  br label %bb.hk

bb.jw:                                            ; preds = %bb.ju
  %i.qq = load i64, ptr %i.x, align 8, !range !11, !noalias !225, !noundef !8
  %i.qr = trunc nuw i64 %i.qq to i1
  br i1 %i.qr, label %bb.jx, label %bb.jy

bb.jx:                                            ; preds = %bb.jw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !225
  br label %bb.lg

bb.jy:                                            ; preds = %bb.jw
  %i.qs = load ptr, ptr %i.dt, align 8, !noalias !225, !noundef !8 ; 2 uses
  %i.qt = load ptr, ptr %i.du, align 8, !noalias !225 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !225
  %.not.i216.i.i.i = icmp eq ptr %i.qs, null
  br i1 %.not.i216.i.i.i, label %bb.fb, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  %i.qu = insertvalue { ptr, ptr } poison, ptr %i.qs, 0
  %i.qv = insertvalue { ptr, ptr } %i.qu, ptr %i.qt, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.qt) ]
  br label %bb.hj

bb.ka:                                            ; preds = %bb.js
  %i.qw = insertvalue { ptr, ptr } poison, ptr %i.ql, 0
  %i.qx = insertvalue { ptr, ptr } %i.qw, ptr %i.qm, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.qm) ]
  br label %bb.hj

bb.kb:                                            ; preds = %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !225
  br label %.body.i.i.i

bb.kc:                                            ; preds = %bb.fo
  %i.qy = load i8, ptr %i.dj, align 1, !range !10, !noalias !225, !noundef !8
  %i.qz = trunc nuw i8 %i.qy to i1
  br i1 %i.qz, label %bb.kj, label %.invoke549.i.i.i, !prof !9

bb.kd:                                            ; preds = %bb.ld, %bb.kr, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn126.i.i.i = phi { ptr, i32 } [ %i.rx, %bb.kr ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn123.pn.i.i.i, %bb.ld ]
  invoke void @_RNvXs3_NtNtCskruEhpekJ3V_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bs)
          to label %bb.kg unwind label %bb.ke, !noalias !226

bb.ke:                                            ; preds = %bb.kd
  %i.ra = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.be, i64 80
  %.val2.i.i = load i32, ptr %i.rb, align 8, !alias.scope !289, !noalias !226, !noundef !8 ; 2 uses
  %i.rc = icmp eq i32 %.val2.i.i, -1
  br i1 %i.rc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.rd = call noundef i32 @close(i32 noundef %.val2.i.i) #17, !noalias !226 ; 0 uses
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i

bb.kg:                                            ; preds = %bb.kd
  %i.re = getelementptr inbounds nuw i8, ptr %i.be, i64 80
  %.val.i.i31 = load i32, ptr %i.re, align 8, !alias.scope !289, !noalias !226, !noundef !8 ; 2 uses
  %i.rf = icmp eq i32 %.val.i.i31, -1
  br i1 %i.rf, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  %i.rg = call noundef i32 @close(i32 noundef %.val.i.i31) #17, !noalias !226 ; 0 uses
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i: ; preds = %bb.kf, %bb.ke
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12registration12RegistrationECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bs) #19
          to label %.body32 unwind label %bb.ki, !noalias !226

bb.ki:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i
  %i.rh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18, !noalias !226
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i: ; preds = %bb.kh, %bb.kg
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12registration12RegistrationECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bs)
          to label %.body218.i.i.i unwind label %bb.bi

.invoke549.i.i.i:                                 ; preds = %bb.kc, %bb.fo
  %i.ri = phi ptr [ @270, %bb.fo ], [ @272, %bb.kc ]
  %i.rj = phi i64 [ 30, %bb.fo ], [ 35, %bb.kc ]
  %i.rk = phi ptr [ @271, %bb.fo ], [ @273, %bb.kc ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ri, i64 noundef %i.rj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.rk) #20
          to label %.cont550.i.i.i unwind label %bb.kr, !noalias !226

.cont550.i.i.i:                                   ; preds = %.invoke549.i.i.i
  unreachable

bb.kj:                                            ; preds = %bb.kc
  %i.rl = load i64, ptr %i.cx, align 8, !noalias !225, !noundef !8
  %i.rm = icmp eq i64 %i.rl, 0
  br i1 %i.rm, label %bb.kk, label %.invoke.i.i.i, !prof !9

.invoke.i.i.i:                                    ; preds = %bb.kj, %bb.kk
  %i.rn = phi ptr [ %i.di, %bb.kk ], [ %i.cx, %bb.kj ]
  %i.ro = phi ptr [ @276, %bb.kk ], [ @275, %bb.kj ]
  invoke void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @274, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.rn, ptr noundef null, ptr undef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ro) #20
          to label %.cont.i.i.i unwind label %bb.kr, !noalias !226

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.kk:                                            ; preds = %bb.kj
  %i.rp = load i64, ptr %i.di, align 8, !noalias !225, !noundef !8
  %i.rq = icmp eq i64 %i.rp, 0
  br i1 %i.rq, label %bb.kl, label %.invoke.i.i.i, !prof !9

bb.kl:                                            ; preds = %bb.kk
  invoke void @_RNvXs3_NtNtCskruEhpekJ3V_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bs)
          to label %bb.ko unwind label %bb.km, !noalias !226

bb.km:                                            ; preds = %bb.kl
  %i.rr = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i.i = load i32, ptr %i.ed, align 8, !alias.scope !290, !noalias !225, !noundef !8 ; 2 uses
  %i.rs = icmp eq i32 %.val2.i.i.i.i.i, -1
  br i1 %i.rs, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.rt = call noundef i32 @close(i32 noundef %.val2.i.i.i.i.i) #17, !noalias !226 ; 0 uses
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i

bb.ko:                                            ; preds = %bb.kl
  %.val.i.i.i.i.i = load i32, ptr %i.ed, align 8, !alias.scope !290, !noalias !225, !noundef !8 ; 2 uses
  %i.ru = icmp eq i32 %.val.i.i.i.i.i, -1
  br i1 %i.ru, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.rv = call noundef i32 @close(i32 noundef %.val.i.i.i.i.i) #17, !noalias !226 ; 0 uses
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i: ; preds = %bb.kn, %bb.km
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12registration12RegistrationECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bs) #19
          to label %.body218.i.i.i unwind label %bb.kq, !noalias !226

bb.kq:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i.i
  %i.rw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18, !noalias !226
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i: ; preds = %bb.kp, %bb.ko
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12registration12RegistrationECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bs)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit.i.i.i unwind label %bb.ks, !noalias !226

bb.kr:                                            ; preds = %.invoke.i.i.i, %.invoke549.i.i.i
  %i.rx = landingpad { ptr, i32 }
          cleanup
  br label %bb.kd

bb.ks:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i224.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i, %bb.es, %bb.eq
  %i.ry = landingpad { ptr, i32 }
          cleanup
  br label %.body218.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i.i.i
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn26UnbufferedClientConnectionECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(976) %i.ch)
          to label %bb.lh unwind label %bb.kt, !noalias !226

bb.kt:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit228.i.i.i
  %i.rz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.ku:                                            ; preds = %bb.fa
  %i.sa = insertvalue { ptr, ptr } poison, ptr %i.jw, 0
  %i.sb = insertvalue { ptr, ptr } %i.sa, ptr %i.jx, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jx) ]
  br label %bb.hj

bb.kv:                                            ; preds = %bb.hj
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered15ConnectionStateNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(56) %i.de)
          to label %bb.kw unwind label %.loopexit.split-lp64.loopexit.split-lp.loopexit.split-lp, !noalias !226

bb.kw:                                            ; preds = %bb.kv, %bb.hj, %bb.hj, %bb.hj, %bb.hj
  store i8 0, ptr %i.cc, align 4, !noalias !225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !225
  invoke void @_RNvXs3_NtNtCskruEhpekJ3V_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bs)
          to label %bb.kz unwind label %bb.kx, !noalias !226

bb.kx:                                            ; preds = %bb.kw
  %i.sc = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i221.i.i.i = load i32, ptr %i.ed, align 8, !alias.scope !291, !noalias !225, !noundef !8 ; 2 uses
  %i.sd = icmp eq i32 %.val2.i.i221.i.i.i, -1
  br i1 %i.sd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i222.i.i.i, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.se = call noundef i32 @close(i32 noundef %.val2.i.i221.i.i.i) #17, !noalias !226 ; 0 uses
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i222.i.i.i

bb.kz:                                            ; preds = %bb.kw
  %.val.i.i223.i.i.i = load i32, ptr %i.ed, align 8, !alias.scope !291, !noalias !225, !noundef !8 ; 2 uses
  %i.sf = icmp eq i32 %.val.i.i223.i.i.i, -1
  br i1 %i.sf, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i224.i.i.i, label %bb.la

bb.la:                                            ; preds = %bb.kz
  %i.sg = call noundef i32 @close(i32 noundef %.val.i.i223.i.i.i) #17, !noalias !226 ; 0 uses
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i224.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i222.i.i.i: ; preds = %bb.ky, %bb.kx
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12registration12RegistrationECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bs) #19
          to label %.body218.i.i.i unwind label %bb.lb, !noalias !226

bb.lb:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i222.i.i.i
  %i.sh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18, !noalias !226
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i224.i.i.i: ; preds = %bb.la, %bb.kz
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12registration12RegistrationECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bs)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i224._RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit228_crit_edge.i.i.i unwind label %bb.ks, !noalias !226

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i224._RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit228_crit_edge.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i224.i.i.i
  %.pre493.i.i.i = extractvalue { ptr, ptr } %.pn117.pn.i.i.i, 1
  %.pre494.i.i.i = extractvalue { ptr, ptr } %.pn117.pn.i.i.i, 0
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit228.i.i.i

bb.lc:                                            ; preds = %bb.hk
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered15ConnectionStateNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(56) %i.de) #19
          to label %.body.i.i.i unwind label %bb.bi, !noalias !226

bb.ld:                                            ; preds = %bb.le, %.body.i.i.i
  store i8 0, ptr %i.cc, align 4, !noalias !225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !225
  br label %bb.kd

bb.le:                                            ; preds = %.body.i.i.i
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered15ConnectionStateNtNtNtB14_6client11client_conn20ClientConnectionDataENtNtB14_5error5ErrorEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(64) %i.ao) #19
          to label %bb.ld unwind label %bb.bi, !noalias !226

bb.lf:                                            ; preds = %bb.bl, %bb.bk
  %i.si = landingpad { ptr, i32 }
          cleanup
  br label %.body20.i.i

.body20.i.i:                                      ; preds = %bb.lf, %bb.bj
  %eh.lpad-body21.i.i = phi { ptr, i32 } [ %i.si, %bb.lf ], [ %.pn135.pn.pn.pn.pn.i.i.i, %bb.bj ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvCsc044841uM34_23unbuffered_async_client8converse0EBF_(ptr noundef nonnull align 8 %i.bs) #19
          to label %bb.aa unwind label %bb.ma, !noalias !217

bb.lg:                                            ; preds = %bb.jx, %bb.jr, %bb.jh, %bb.ix, %bb.im, %bb.ie, %bb.ez, %bb.ep
  %.sink.i.ph.i.i = phi i8 [ 10, %bb.ez ], [ 4, %bb.ie ], [ 5, %bb.im ], [ 8, %bb.ix ], [ 9, %bb.jh ], [ 6, %bb.jr ], [ 7, %bb.jx ], [ 3, %bb.ep ]
  store i8 %.sink.i.ph.i.i, ptr %.phi.trans.insert.i.i, align 1, !noalias !225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !216
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6257.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !216
  br label %bb.mg

bb.lh:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit228.i.i.i, %bb.bb
  %.sroa.16.0.i.i = phi ptr [ %.sroa.16.1.pre-phi.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit228.i.i.i ], [ undef, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit.i.i.i ], [ %.sroa.16.0.pre-phi.i.i.i, %bb.bb ] ; 3 uses
  %.sroa.1456.0.i.i = phi ptr [ %.sroa.031.1.pre-phi.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit228.i.i.i ], [ null, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit.i.i.i ], [ %.sroa.031.0.pre-phi.i.i.i, %bb.bb ] ; 2 uses
  store i8 1, ptr %.phi.trans.insert.i.i, align 1, !noalias !225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !216
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6257.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !216
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvCsc044841uM34_23unbuffered_async_client8converse0EBF_(ptr noundef nonnull align 8 %i.bs)
          to label %bb.li unwind label %bb.lr, !noalias !217

bb.li:                                            ; preds = %bb.lh
  %.not.i.i.i = icmp eq ptr %.sroa.1456.0.i.i, null
  br i1 %.not.i.i.i, label %bb.lj, label %bb.ls

bb.lj:                                            ; preds = %bb.li
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %bb.ll unwind label %bb.lk, !noalias !217

bb.lk:                                            ; preds = %bb.lj
  %i.sj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %.body25.i.i unwind label %bb.lm, !noalias !217

bb.ll:                                            ; preds = %bb.lj
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i unwind label %bb.z, !noalias !217

bb.lm:                                            ; preds = %bb.lk
  %i.sk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18, !noalias !217
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i: ; preds = %bb.ll
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %bb.lo unwind label %bb.ln, !noalias !217

bb.ln:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i
  %i.sl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %.body29.i.i unwind label %bb.lp, !noalias !217

bb.lo:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit31.i.i unwind label %bb.u, !noalias !217

bb.lp:                                            ; preds = %bb.ln
  %i.sm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18, !noalias !217
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit31.i.i: ; preds = %bb.lo
  call void @llvm.experimental.noalias.scope.decl(metadata !292)
  call void @llvm.experimental.noalias.scope.decl(metadata !293)
  %i.sn = load ptr, ptr %i.be, align 8, !alias.scope !294, !noalias !216, !nonnull !8, !noundef !8
  %i.so = atomicrmw add ptr %i.sn, i64 -1 release, align 8, !noalias !295
  %i.sp = icmp eq i64 %i.so, 1
  br i1 %i.sp, label %bb.lq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit45.i.i

bb.lq:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit31.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.be) #21
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit45.i.i unwind label %bb.r, !noalias !217

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client.exit45.i.i: ; preds = %bb.lz, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit43.i.i, %bb.lq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit31.i.i
  %.sroa.3.0.i.i = phi ptr [ %.sroa.16.0.i.i, %bb.lz ], [ %.sroa.16.0.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit43.i.i ], [ undef, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit31.i.i ], [ undef, %bb.lq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !216
  store i8 0, ptr %i.bv, align 8, !noalias !216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !216
  br label %bb.mg

bb.lr:                                            ; preds = %bb.lh
  %i.sq = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.ls:                                            ; preds = %bb.li
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.16.0.i.i) ]
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %bb.lu unwind label %bb.lt, !noalias !217

bb.lt:                                            ; preds = %bb.ls
  %i.sr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %.body25.i.i unwind label %bb.lv, !noalias !217

bb.lu:                                            ; preds = %bb.ls
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit38.i.i unwind label %bb.z, !noalias !217

bb.lv:                                            ; preds = %bb.lt
  %i.ss = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18, !noalias !217
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit38.i.i: ; preds = %bb.lu
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %bb.lx unwind label %bb.lw, !noalias !217

bb.lw:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit38.i.i
  %i.st = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %.body29.i.i unwind label %bb.ly, !noalias !217

bb.lx:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit38.i.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit43.i.i unwind label %bb.u, !noalias !217

bb.ly:                                            ; preds = %bb.lw
  %i.su = landingpad { ptr, i32 }
end_hunk_2
begin_hunk_3_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync8ArcInnerNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsc044841uM34_23unbuffered_async_client:bb.a
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.an) #21
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEECsc044841uM34_23unbuffered_async_client.exit.i unwind label %bb.ai

bb.r:                                             ; preds = %bb.p
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_EECsc044841uM34_23unbuffered_async_client.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_EECsc044841uM34_23unbuffered_async_client.exit28.i: ; preds = %bb.p, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls7key_log6KeyLogEL_EECsc044841uM34_23unbuffered_async_client.exit25.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !420)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !421)
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !422, !nonnull !8, !noundef !8
  %i.au = atomicrmw add ptr %i.at, i64 -1 release, align 8, !noalias !423
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.s, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEECsc044841uM34_23unbuffered_async_client.exit31.i

bb.s:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_EECsc044841uM34_23unbuffered_async_client.exit28.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.as) #21
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEECsc044841uM34_23unbuffered_async_client.exit31.i unwind label %bb.u

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEECsc044841uM34_23unbuffered_async_client.exit.i: ; preds = %bb.u, %bb.q, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_EECsc044841uM34_23unbuffered_async_client.exit.i
  %.pn8.i = phi { ptr, i32 } [ %i.ba, %bb.u ], [ %.pn6.i, %bb.q ], [ %.pn6.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_EECsc044841uM34_23unbuffered_async_client.exit.i ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !426, !nonnull !8, !noundef !8
  %i.ay = atomicrmw add ptr %i.ax, i64 -1 release, align 8, !noalias !427
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.t, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_EECsc044841uM34_23unbuffered_async_client.exit.i

bb.t:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEECsc044841uM34_23unbuffered_async_client.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aw) #21
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_EECsc044841uM34_23unbuffered_async_client.exit.i unwind label %bb.ai

bb.u:                                             ; preds = %bb.s
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEECsc044841uM34_23unbuffered_async_client.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEECsc044841uM34_23unbuffered_async_client.exit31.i: ; preds = %bb.s, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls13time_provider12TimeProviderEL_EECsc044841uM34_23unbuffered_async_client.exit28.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !429)
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !430, !nonnull !8, !noundef !8
  %i.bd = atomicrmw add ptr %i.bc, i64 -1 release, align 8, !noalias !431
  %i.be = icmp eq i64 %i.bd, 1
  br i1 %i.be, label %bb.v, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_EECsc044841uM34_23unbuffered_async_client.exit34.i

bb.v:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEECsc044841uM34_23unbuffered_async_client.exit31.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bb) #21
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_EECsc044841uM34_23unbuffered_async_client.exit34.i unwind label %bb.w

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_EECsc044841uM34_23unbuffered_async_client.exit.i: ; preds = %bb.w, %bb.t, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEECsc044841uM34_23unbuffered_async_client.exit.i
  %.pn10.i = phi { ptr, i32 } [ %i.bg, %bb.w ], [ %.pn8.i, %bb.t ], [ %.pn8.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEECsc044841uM34_23unbuffered_async_client.exit.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRDNtNtCs7ZUl82OSlxp_6rustls8compress16CertDecompressorEL_EECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bf) #19
          to label %.body36.i unwind label %bb.ai

bb.w:                                             ; preds = %bb.v
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_EECsc044841uM34_23unbuffered_async_client.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_EECsc044841uM34_23unbuffered_async_client.exit34.i: ; preds = %bb.v, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls6crypto14CryptoProviderEECsc044841uM34_23unbuffered_async_client.exit31.i
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRDNtNtCs7ZUl82OSlxp_6rustls8compress16CertDecompressorEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %bb.y unwind label %bb.x

bb.x:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_EECsc044841uM34_23unbuffered_async_client.exit34.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecRDNtNtCs7ZUl82OSlxp_6rustls8compress16CertDecompressorEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %.body36.i unwind label %bb.z

bb.y:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_EECsc044841uM34_23unbuffered_async_client.exit34.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecRDNtNtCs7ZUl82OSlxp_6rustls8compress16CertDecompressorEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRDNtNtCs7ZUl82OSlxp_6rustls8compress16CertDecompressorEL_EECsc044841uM34_23unbuffered_async_client.exit.i unwind label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

.body36.i:                                        ; preds = %bb.aa, %bb.x, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_EECsc044841uM34_23unbuffered_async_client.exit.i
  %.pn12.i = phi { ptr, i32 } [ %.pn10.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_EECsc044841uM34_23unbuffered_async_client.exit.i ], [ %i.bl, %bb.aa ], [ %i.bi, %bb.x ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRDNtNtCs7ZUl82OSlxp_6rustls8compress14CertCompressorEL_EECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bk) #19
          to label %.body39.i unwind label %bb.ai

bb.aa:                                            ; preds = %bb.y
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body36.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRDNtNtCs7ZUl82OSlxp_6rustls8compress16CertDecompressorEL_EECsc044841uM34_23unbuffered_async_client.exit.i: ; preds = %bb.y
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRDNtNtCs7ZUl82OSlxp_6rustls8compress14CertCompressorEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %bb.ac unwind label %bb.ab

bb.ab:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRDNtNtCs7ZUl82OSlxp_6rustls8compress16CertDecompressorEL_EECsc044841uM34_23unbuffered_async_client.exit.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecRDNtNtCs7ZUl82OSlxp_6rustls8compress14CertCompressorEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %.body39.i unwind label %bb.ad

bb.ac:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRDNtNtCs7ZUl82OSlxp_6rustls8compress16CertDecompressorEL_EECsc044841uM34_23unbuffered_async_client.exit.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecRDNtNtCs7ZUl82OSlxp_6rustls8compress14CertCompressorEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRDNtNtCs7ZUl82OSlxp_6rustls8compress14CertCompressorEL_EECsc044841uM34_23unbuffered_async_client.exit.i unwind label %bb.af

bb.ad:                                            ; preds = %bb.ab
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

.body39.i:                                        ; preds = %bb.af, %bb.ab, %.body36.i
  %.pn14.i = phi { ptr, i32 } [ %.pn12.i, %.body36.i ], [ %i.bt, %bb.af ], [ %i.bn, %bb.ab ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !432)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !433)
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !434, !nonnull !8, !noundef !8
  %i.br = atomicrmw add ptr %i.bq, i64 -1 release, align 8, !noalias !435
  %i.bs = icmp eq i64 %i.br, 1
  br i1 %i.bs, label %bb.ae, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress16CompressionCacheEECsc044841uM34_23unbuffered_async_client.exit.i

bb.ae:                                            ; preds = %.body39.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls8compress16CompressionCacheE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bp) #21
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress16CompressionCacheEECsc044841uM34_23unbuffered_async_client.exit.i unwind label %bb.ai

bb.af:                                            ; preds = %bb.ac
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %.body39.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRDNtNtCs7ZUl82OSlxp_6rustls8compress14CertCompressorEL_EECsc044841uM34_23unbuffered_async_client.exit.i: ; preds = %bb.ac
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !437)
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !438, !nonnull !8, !noundef !8
  %i.bw = atomicrmw add ptr %i.bv, i64 -1 release, align 8, !noalias !439
  %i.bx = icmp eq i64 %i.bw, 1
  br i1 %i.bx, label %bb.ag, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigECsc044841uM34_23unbuffered_async_client.exit

bb.ag:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRDNtNtCs7ZUl82OSlxp_6rustls8compress14CertCompressorEL_EECsc044841uM34_23unbuffered_async_client.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs7ZUl82OSlxp_6rustls8compress16CompressionCacheE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bu) #21
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigECsc044841uM34_23unbuffered_async_client.exit unwind label %bb.ah

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress16CompressionCacheEECsc044841uM34_23unbuffered_async_client.exit.i: ; preds = %bb.ah, %bb.ae, %.body39.i
  %.pn16.i = phi { ptr, i32 } [ %i.bz, %bb.ah ], [ %.pn14.i, %bb.ae ], [ %.pn14.i, %.body39.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 104
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls6client3ech7EchModeEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(128) %i.by) #19
          to label %bb.aj unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress16CompressionCacheEECsc044841uM34_23unbuffered_async_client.exit.i

bb.ai:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress16CompressionCacheEECsc044841uM34_23unbuffered_async_client.exit.i, %bb.ae, %.body36.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDNtNtCs7ZUl82OSlxp_6rustls6verify18ServerCertVerifierEL_EECsc044841uM34_23unbuffered_async_client.exit.i, %bb.t, %bb.q, %bb.n, %bb.k, %bb.h, %bb.f
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.aj:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs7ZUl82OSlxp_6rustls8compress16CompressionCacheEECsc044841uM34_23unbuffered_async_client.exit.i
  resume { ptr, i32 } %.pn16.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigECsc044841uM34_23unbuffered_async_client.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRDNtNtCs7ZUl82OSlxp_6rustls8compress14CertCompressorEL_EECsc044841uM34_23unbuffered_async_client.exit.i, %bb.ag
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls6client3ech7EchModeEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(128) %i.cb)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtCs7ZUl82OSlxp_6rustls6crypto6cipher16MessageDecrypterEL_EECsc044841uM34_23unbuffered_async_client(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !8 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !25, !invariant.load !8 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDNtNtNtCs7ZUl82OSlxp_6rustls6crypto6cipher16MessageDecrypterEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !26, !invariant.load !8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #17
  br label %_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDNtNtNtCs7ZUl82OSlxp_6rustls6crypto6cipher16MessageDecrypterEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client.exit

_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDNtNtNtCs7ZUl82OSlxp_6rustls6crypto6cipher16MessageDecrypterEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !25, !invariant.load !8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDNtNtNtCs7ZUl82OSlxp_6rustls6crypto6cipher16MessageDecrypterEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !26, !invariant.load !8
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #17
  br label %_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDNtNtNtCs7ZUl82OSlxp_6rustls6crypto6cipher16MessageDecrypterEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client.exit4

_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDNtNtNtCs7ZUl82OSlxp_6rustls6crypto6cipher16MessageDecrypterEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque8VecDequeTbINtNtBI_3vec3VechEEEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs0_NtNtCs4wP2HXfJTCR_5alloc11collections9vec_dequeINtB5_8VecDequeTbINtNtB9_3vec3VechEEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTbINtNtB7_3vec3VechEEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecTbINtNtBG_3vec3VechEEEECsc044841uM34_23unbuffered_async_client.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTbINtNtB7_3vec3VechEEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecTbINtNtBG_3vec3VechEEEECsc044841uM34_23unbuffered_async_client.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !23, !alias.scope !442, !noundef !8
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsc044841uM34_23unbuffered_async_client.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsc044841uM34_23unbuffered_async_client.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsc044841uM34_23unbuffered_async_client.exit.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsc044841uM34_23unbuffered_async_client.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsc044841uM34_23unbuffered_async_client.exit: ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered13EncodeTlsDataNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !23, !alias.scope !445, !noundef !8
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsc044841uM34_23unbuffered_async_client.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsc044841uM34_23unbuffered_async_client.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsc044841uM34_23unbuffered_async_client.exit.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsc044841uM34_23unbuffered_async_client.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsc044841uM34_23unbuffered_async_client.exit: ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered15ConnectionStateNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !22, !noundef !8
  switch i64 %i.a, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit [
    i64 0, label %bb.b
    i64 3, label %bb.f
    i64 4, label %bb.j
  ]

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit.sink.split: ; preds = %bb.k, %bb.g, %bb.c
  %.sink = phi ptr [ %i.g, %bb.g ], [ %i.b, %bb.c ], [ %i.l, %bb.k ]
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sink)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit.sink.split, %bb.j, %bb.f, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !range !23, !alias.scope !458, !noundef !8
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit.sink.split unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

common.resume:                                    ; preds = %bb.l, %bb.h, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.h ], [ %i.e, %bb.d ], [ %i.o, %bb.l ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !range !23, !alias.scope !459, !noundef !8
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit.sink.split unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.j:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !range !23, !alias.scope !460, !noundef !8
  %i.n = icmp eq i64 %i.m, -1
  br i1 %i.n, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered11ReadTrafficNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit.sink.split unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %common.resume unwind label %bb.m

end_hunk_3
begin_hunk_4_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvCsc044841uM34_23unbuffered_async_client8converse0EBF_
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvCsc044841uM34_23unbuffered_async_client8converse0EBF_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1165
  %i.b = load i8, ptr %i.a, align 1, !range !16, !noundef !8
  switch i8 %i.b, label %common.ret [
    i8 10, label %bb.c
    i8 3, label %bb.b
    i8 4, label %bb.c
    i8 5, label %bb.c
    i8 6, label %bb.c
    i8 7, label %bb.c
    i8 8, label %bb.c
    i8 9, label %bb.c
  ]

common.ret:                                       ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1168
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCINvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtBH_9TcpStream7connectNtNtCs4wP2HXfJTCR_5alloc6string6StringE0ECsc044841uM34_23unbuffered_async_client(ptr noundef nonnull align 8 %i.c)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit unwind label %bb.l

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn26UnbufferedClientConnectionECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(976) %i.d)
  br label %common.ret

.body:                                            ; preds = %bb.l, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i, %bb.k
  %.pn8 = phi { ptr, i32 } [ %i.q, %bb.k ], [ %i.s, %bb.l ], [ %i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn26UnbufferedClientConnectionECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(976) %i.e) #19
          to label %bb.n unwind label %bb.m

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !range !22, !noundef !8
  switch i64 %i.g, label %bb.d [
    i64 0, label %bb.e
    i64 4, label %bb.e
    i64 5, label %bb.e
    i64 7, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs7ZUl82OSlxp_6rustls4conn10unbuffered15ConnectionStateNtNtNtBI_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(56) %i.f)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.c, %bb.c, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1164
  store i8 0, ptr %i.h, align 4
  invoke void @_RNvXs3_NtNtCskruEhpekJ3V_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i.i = load i32, ptr %i.j, align 8, !alias.scope !493, !noundef !8 ; 2 uses
  %i.k = icmp eq i32 %.val2.i.i, -1
  br i1 %i.k, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call noundef i32 @close(i32 noundef %.val2.i.i) #17 ; 0 uses
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i

bb.h:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i.i = load i32, ptr %i.m, align 8, !alias.scope !493, !noundef !8 ; 2 uses
  %i.n = icmp eq i32 %.val.i.i, -1
  br i1 %i.n, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = tail call noundef i32 @close(i32 noundef %.val.i.i) #17 ; 0 uses
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i: ; preds = %bb.g, %bb.f
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12registration12RegistrationECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) #19
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i: ; preds = %bb.i, %bb.h
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12registration12RegistrationECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit unwind label %bb.l

bb.k:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1164
  store i8 0, ptr %i.r, align 4
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(32) %0) #19
          to label %.body unwind label %bb.m

bb.l:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i, %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.k, %.body
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.n:                                             ; preds = %.body
  resume { ptr, i32 } %.pn8
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMNtNtNtCskruEhpekJ3V_5tokio3net3tcp6streamNtBG_9TcpStream11connect_mio0ECsc044841uM34_23unbuffered_async_client(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i8, ptr %i.a, align 4, !range !14, !noundef !8
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %bb.c
  ]

common.ret:                                       ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit, %bb.b
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val = load i32, ptr %i.c, align 8, !range !20, !noundef !8
  %i.d = tail call noundef i32 @close(i32 noundef %.val) #17 ; 0 uses
  br label %common.ret

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs3_NtNtCskruEhpekJ3V_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i.i = load i32, ptr %i.f, align 8, !alias.scope !498, !noundef !8 ; 2 uses
  %i.g = icmp eq i32 %.val2.i.i, -1
  br i1 %i.g, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call noundef i32 @close(i32 noundef %.val2.i.i) #17 ; 0 uses
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i

bb.f:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i.i = load i32, ptr %i.i, align 8, !alias.scope !498, !noundef !8 ; 2 uses
  %i.j = icmp eq i32 %.val.i.i, -1
  br i1 %i.j, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = tail call noundef i32 @close(i32 noundef %.val.i.i) #17 ; 0 uses
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i: ; preds = %bb.e, %bb.d
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12registration12RegistrationECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) #19
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.i:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i.i
  resume { ptr, i32 } %i.e

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client.exit: ; preds = %bb.f, %bb.g
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12registration12RegistrationECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
  br label %common.ret
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls12common_state11CommonStateECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !507)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !507 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load ptr, ptr %i.b, align 8, !alias.scope !507, !nonnull !8, !align !12, !noundef !8 ; 5 uses
  %i.c = load ptr, ptr %.val1.i, align 8, !invariant.load !8, !noalias !507 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.c(ptr noundef nonnull %.val.i)
          to label %bb.c unwind label %bb.e, !noalias !507

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !25, !invariant.load !8, !noalias !507 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtCs7ZUl82OSlxp_6rustls6crypto6cipher16MessageEncrypterEL_EECsc044841uM34_23unbuffered_async_client.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !26, !invariant.load !8, !noalias !507
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.e, i64 noundef range(i64 1, 536870913) %i.h) #17, !noalias !507
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtCs7ZUl82OSlxp_6rustls6crypto6cipher16MessageEncrypterEL_EECsc044841uM34_23unbuffered_async_client.exit.i

bb.e:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !25, !invariant.load !8, !noalias !507 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.body.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !26, !invariant.load !8, !noalias !507
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.k, i64 noundef range(i64 1, 536870913) %i.n) #17, !noalias !507
  br label %.body.i

.body.i:                                          ; preds = %bb.f, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val4.i = load ptr, ptr %i.o, align 8, !alias.scope !507
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val5.i = load ptr, ptr %i.p, align 8, !alias.scope !507, !nonnull !8, !align !12, !noundef !8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtCs7ZUl82OSlxp_6rustls6crypto6cipher16MessageDecrypterEL_EECsc044841uM34_23unbuffered_async_client(ptr %.val4.i, ptr nonnull %.val5.i) #19
          to label %.body unwind label %bb.l, !noalias !507

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtCs7ZUl82OSlxp_6rustls6crypto6cipher16MessageEncrypterEL_EECsc044841uM34_23unbuffered_async_client.exit.i: ; preds = %bb.d, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val2.i = load ptr, ptr %i.q, align 8, !alias.scope !507 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val3.i = load ptr, ptr %i.r, align 8, !alias.scope !507, !nonnull !8, !align !12, !noundef !8 ; 5 uses
  %i.s = load ptr, ptr %.val3.i, align 8, !invariant.load !8, !noalias !507 ; 2 uses
  %.not.i6.i = icmp eq ptr %i.s, null
  br i1 %.not.i6.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtCs7ZUl82OSlxp_6rustls6crypto6cipher16MessageEncrypterEL_EECsc044841uM34_23unbuffered_async_client.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  invoke void %i.s(ptr noundef nonnull %.val2.i)
          to label %bb.h unwind label %bb.j, !noalias !507

bb.h:                                             ; preds = %bb.g, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtCs7ZUl82OSlxp_6rustls6crypto6cipher16MessageEncrypterEL_EECsc044841uM34_23unbuffered_async_client.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %.val3.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !25, !invariant.load !8, !noalias !507 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls12record_layer11RecordLayerECsc044841uM34_23unbuffered_async_client.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %.val3.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !26, !invariant.load !8, !noalias !507
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #17, !noalias !507
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls12record_layer11RecordLayerECsc044841uM34_23unbuffered_async_client.exit

bb.j:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val3.i, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !25, !invariant.load !8, !noalias !507 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.body, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %.val3.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !26, !invariant.load !8, !noalias !507
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef range(i64 1, -9223372036854775808) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #17, !noalias !507
  br label %.body

bb.l:                                             ; preds = %.body.i
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18, !noalias !507
  unreachable

.body:                                            ; preds = %.body.i, %bb.j, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.i, %.body.i ], [ %i.y, %bb.j ], [ %i.y, %bb.k ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 728
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.af) #19
          to label %.body10 unwind label %bb.ae

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls12record_layer11RecordLayerECsc044841uM34_23unbuffered_async_client.exit: ; preds = %bb.i, %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !range !23, !alias.scope !508, !noundef !8
  %i.ai = icmp eq i64 %i.ah, -1
  br i1 %i.ai, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameEECsc044841uM34_23unbuffered_async_client.exit, label %bb.m

bb.m:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls12record_layer11RecordLayerECsc044841uM34_23unbuffered_async_client.exit
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameECsc044841uM34_23unbuffered_async_client.exit.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.body10 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameECsc044841uM34_23unbuffered_async_client.exit.i: ; preds = %bb.m
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameEECsc044841uM34_23unbuffered_async_client.exit unwind label %bb.p

.body10:                                          ; preds = %bb.p, %bb.n, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.am, %bb.p ], [ %i.aj, %bb.n ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 752
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateChainEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.al) #19
          to label %.body12 unwind label %bb.ae

bb.p:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameECsc044841uM34_23unbuffered_async_client.exit.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body10

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameEECsc044841uM34_23unbuffered_async_client.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls12record_layer11RecordLayerECsc044841uM34_23unbuffered_async_client.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameECsc044841uM34_23unbuffered_async_client.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 4 uses
  %i.ao = load i64, ptr %i.an, align 8, !range !23, !alias.scope !509, !noundef !8
  %i.ap = icmp eq i64 %i.ao, -1
  br i1 %i.ap, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateChainEECsc044841uM34_23unbuffered_async_client.exit, label %bb.q

bb.q:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameEECsc044841uM34_23unbuffered_async_client.exit
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateChainECsc044841uM34_23unbuffered_async_client.exit.i unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %.body12 unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateChainECsc044841uM34_23unbuffered_async_client.exit.i: ; preds = %bb.q
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateChainEECsc044841uM34_23unbuffered_async_client.exit unwind label %bb.t

.body12:                                          ; preds = %bb.t, %bb.r, %.body10
  %.pn2 = phi { ptr, i32 } [ %.pn, %.body10 ], [ %i.at, %bb.t ], [ %i.aq, %bb.r ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls6vecbuf14ChunkVecBufferECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(56) %i.as) #19
          to label %.body15 unwind label %bb.ae

bb.t:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateChainECsc044841uM34_23unbuffered_async_client.exit.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body12

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateChainEECsc044841uM34_23unbuffered_async_client.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake12ProtocolNameEECsc044841uM34_23unbuffered_async_client.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateChainECsc044841uM34_23unbuffered_async_client.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  invoke void @_RNvXs0_NtNtCs4wP2HXfJTCR_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.au)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque8VecDequeINtNtBI_3vec3VechEEECsc044841uM34_23unbuffered_async_client.exit.i unwind label %bb.u

bb.u:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateChainEECsc044841uM34_23unbuffered_async_client.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.au)
          to label %.body15 unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque8VecDequeINtNtBI_3vec3VechEEECsc044841uM34_23unbuffered_async_client.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateChainEECsc044841uM34_23unbuffered_async_client.exit
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.au)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls6vecbuf14ChunkVecBufferECsc044841uM34_23unbuffered_async_client.exit unwind label %bb.w

.body15:                                          ; preds = %bb.w, %bb.u, %.body12
  %.pn4 = phi { ptr, i32 } [ %.pn2, %.body12 ], [ %i.ay, %bb.w ], [ %i.av, %bb.u ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 136
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls6vecbuf14ChunkVecBufferECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(56) %i.ax) #19
          to label %.body20 unwind label %bb.ae

bb.w:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque8VecDequeINtNtBI_3vec3VechEEECsc044841uM34_23unbuffered_async_client.exit.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body15

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls6vecbuf14ChunkVecBufferECsc044841uM34_23unbuffered_async_client.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque8VecDequeINtNtBI_3vec3VechEEECsc044841uM34_23unbuffered_async_client.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  invoke void @_RNvXs0_NtNtCs4wP2HXfJTCR_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.az)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque8VecDequeINtNtBI_3vec3VechEEECsc044841uM34_23unbuffered_async_client.exit.i19 unwind label %bb.x

bb.x:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls6vecbuf14ChunkVecBufferECsc044841uM34_23unbuffered_async_client.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.az)
          to label %.body20 unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque8VecDequeINtNtBI_3vec3VechEEECsc044841uM34_23unbuffered_async_client.exit.i19: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls6vecbuf14ChunkVecBufferECsc044841uM34_23unbuffered_async_client.exit
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.az)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls6vecbuf14ChunkVecBufferECsc044841uM34_23unbuffered_async_client.exit23 unwind label %bb.z

.body20:                                          ; preds = %bb.z, %bb.x, %.body15
  %.pn6 = phi { ptr, i32 } [ %.pn4, %.body15 ], [ %i.bd, %bb.z ], [ %i.ba, %bb.x ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 776
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bc) #19
          to label %.body24 unwind label %bb.ae

bb.z:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque8VecDequeINtNtBI_3vec3VechEEECsc044841uM34_23unbuffered_async_client.exit.i19
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body20

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls6vecbuf14ChunkVecBufferECsc044841uM34_23unbuffered_async_client.exit23: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque8VecDequeINtNtBI_3vec3VechEEECsc044841uM34_23unbuffered_async_client.exit.i19
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 4 uses
  %i.bf = load i64, ptr %i.be, align 8, !range !23, !alias.scope !510, !noundef !8
  %i.bg = icmp eq i64 %i.bf, -1
  br i1 %i.bg, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsc044841uM34_23unbuffered_async_client.exit, label %bb.aa

bb.aa:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls6vecbuf14ChunkVecBufferECsc044841uM34_23unbuffered_async_client.exit23
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %.body24 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i: ; preds = %bb.aa
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsc044841uM34_23unbuffered_async_client.exit unwind label %bb.ad

.body24:                                          ; preds = %bb.ad, %bb.ab, %.body20
  %.pn8 = phi { ptr, i32 } [ %.pn6, %.body20 ], [ %i.bk, %bb.ad ], [ %i.bh, %bb.ab ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 192
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls4quic4QuicECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(496) %i.bj) #19
          to label %bb.af unwind label %bb.ae

bb.ad:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i
end_hunk_4
begin_hunk_5_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error5ErrorECsc044841uM34_23unbuffered_async_client:bb.a
bb.bd:                                            ; preds = %bb.au
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !576)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !577)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !578)
  %i.bu = load ptr, ptr %i.bt, align 8, !alias.scope !579, !nonnull !8, !noundef !8
  %i.bv = atomicrmw add ptr %i.bu, i64 -1 release, align 8, !noalias !579
  %i.bw = icmp eq i64 %i.bv, 1
  br i1 %i.bw, label %bb.be, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECsc044841uM34_23unbuffered_async_client.exit

bb.be:                                            ; preds = %bb.bd
  fence acquire
  tail call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_E9drop_slowCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bt) #21
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECsc044841uM34_23unbuffered_async_client.exit

bb.bf:                                            ; preds = %bb.ax
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body.i6

.body.i6:                                         ; preds = %bb.bf, %bb.aw
  %eh.lpad-body.i7 = phi { ptr, i32 } [ %i.bx, %bb.bf ], [ %i.bo, %bb.aw ]
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.by) #19
          to label %common.resume unwind label %bb.bi

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i8: ; preds = %bb.ax
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierEECsc044841uM34_23unbuffered_async_client.exit.i9 unwind label %bb.bg

bb.bg:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i8
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %common.resume unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierEECsc044841uM34_23unbuffered_async_client.exit.i9: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit.i8
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bz)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECsc044841uM34_23unbuffered_async_client.exit

bb.bi:                                            ; preds = %.body3.i1, %.body.i6
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.bj:                                            ; preds = %bb.bb
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.body3.i1

.body3.i1:                                        ; preds = %bb.bj, %bb.ba
  %eh.lpad-body4.i2 = phi { ptr, i32 } [ %i.cd, %bb.bj ], [ %i.br, %bb.ba ]
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ce) #19
          to label %common.resume unwind label %bb.bi

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit5.i5: ; preds = %bb.bb
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cf)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit7.i unwind label %bb.bk

bb.bk:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit5.i5
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cf)
          to label %common.resume unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit7.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsc044841uM34_23unbuffered_async_client.exit5.i5
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cf)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECsc044841uM34_23unbuffered_async_client.exit

bb.bm:                                            ; preds = %bb.a
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ci)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsc044841uM34_23unbuffered_async_client.exit unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ci)
          to label %common.resume unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsc044841uM34_23unbuffered_async_client.exit: ; preds = %bb.bm
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ci)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls5error11other_error10OtherErrorECsc044841uM34_23unbuffered_async_client.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls6vecbuf14ChunkVecBufferECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXs0_NtNtCs4wP2HXfJTCR_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque8VecDequeINtNtBI_3vec3VechEEECsc044841uM34_23unbuffered_async_client.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecINtNtBG_3vec3VechEEECsc044841uM34_23unbuffered_async_client.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecINtNtBG_3vec3VechEEECsc044841uM34_23unbuffered_async_client.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc11collections9vec_deque8VecDequeINtNtBI_3vec3VechEEECsc044841uM34_23unbuffered_async_client.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name7DnsNameECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !23, !alias.scope !582, !noundef !8
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECsc044841uM34_23unbuffered_async_client.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsc044841uM34_23unbuffered_async_client.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsc044841uM34_23unbuffered_async_client.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsc044841uM34_23unbuffered_async_client.exit.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsc044841uM34_23unbuffered_async_client.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECsc044841uM34_23unbuffered_async_client.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name12DnsNameInnerECsc044841uM34_23unbuffered_async_client.exit: ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsc044841uM34_23unbuffered_async_client.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn26UnbufferedClientConnectionECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(976) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !589)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !590)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !591)
  %i.b = load i8, ptr %i.a, align 8, !range !24, !alias.scope !592, !noundef !8
  %i.c = icmp eq i8 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 904
  %.val.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !592 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 912
  %.val1.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !592, !nonnull !8, !align !12, !noundef !8 ; 5 uses
  %i.f = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !8, !noalias !592 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  invoke void %i.f(ptr noundef nonnull %.val.i.i.i)
          to label %bb.d unwind label %bb.f, !noalias !592

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !25, !invariant.load !8, !noalias !592 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1C_6client11client_conn20ClientConnectionDataEEL_ENtNtB1C_5error5ErrorEECsc044841uM34_23unbuffered_async_client.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !26, !invariant.load !8, !noalias !592
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.h, i64 noundef range(i64 1, 536870913) %i.k) #17, !noalias !592
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1C_6client11client_conn20ClientConnectionDataEEL_ENtNtB1C_5error5ErrorEECsc044841uM34_23unbuffered_async_client.exit.i.i

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !25, !invariant.load !8, !noalias !592 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.body.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !26, !invariant.load !8, !noalias !592
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.n, i64 noundef range(i64 1, 536870913) %i.q) #17, !noalias !592
  br label %.body.i.i

bb.h:                                             ; preds = %bb.a
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error5ErrorECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1C_6client11client_conn20ClientConnectionDataEEL_ENtNtB1C_5error5ErrorEECsc044841uM34_23unbuffered_async_client.exit.i.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.i, %bb.g, %bb.f
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.r, %bb.i ], [ %i.l, %bb.g ], [ %i.l, %bb.f ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls12common_state11CommonStateECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(976) %0) #19
          to label %bb.j unwind label %bb.o

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1C_6client11client_conn20ClientConnectionDataEEL_ENtNtB1C_5error5ErrorEECsc044841uM34_23unbuffered_async_client.exit.i.i: ; preds = %bb.h, %bb.e, %bb.d
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls12common_state11CommonStateECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(976) %0)
          to label %bb.l unwind label %bb.k

bb.j:                                             ; preds = %bb.k, %.body.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.t, %bb.k ], [ %eh.lpad-body.i.i, %.body.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 840
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake17HandshakeDeframerECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(32) %i.s) #19
          to label %common.resume.i.i unwind label %bb.o

bb.k:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1C_6client11client_conn20ClientConnectionDataEEL_ENtNtB1C_5error5ErrorEECsc044841uM34_23unbuffered_async_client.exit.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtCs7ZUl82OSlxp_6rustls12common_state5StateNtNtNtB1C_6client11client_conn20ClientConnectionDataEEL_ENtNtB1C_5error5ErrorEECsc044841uM34_23unbuffered_async_client.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs7ZUl82OSlxp_6rustls4conn26UnbufferedConnectionCommonNtNtNtBG_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %common.resume.i.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

common.resume.i.i:                                ; preds = %bb.m, %bb.j
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.v, %bb.m ], [ %.pn.i.i, %bb.j ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.o:                                             ; preds = %bb.j, %.body.i.i
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs7ZUl82OSlxp_6rustls4conn26UnbufferedConnectionCommonNtNtNtBG_6client11client_conn20ClientConnectionDataEECsc044841uM34_23unbuffered_async_client.exit: ; preds = %bb.l
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.u)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler6HandleECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !11, !noundef !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = icmp eq i64 %i.a, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !601)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !602)
  %i.d = load ptr, ptr %i.b, align 8, !alias.scope !603, !nonnull !8, !noundef !8
  %i.e = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !603
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler14current_thread6HandleEECsc044841uM34_23unbuffered_async_client.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #21
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler14current_thread6HandleEECsc044841uM34_23unbuffered_async_client.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !604)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !605)
  %i.g = load ptr, ptr %i.b, align 8, !alias.scope !606, !nonnull !8, !noundef !8
  %i.h = atomicrmw add ptr %i.g, i64 -1 release, align 8, !noalias !606
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler14current_thread6HandleEECsc044841uM34_23unbuffered_async_client.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #21
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler14current_thread6HandleEECsc044841uM34_23unbuffered_async_client.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler14current_thread6HandleEECsc044841uM34_23unbuffered_async_client.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake17HandshakeDeframerECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanEECsc044841uM34_23unbuffered_async_client.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanEECsc044841uM34_23unbuffered_async_client.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanEECsc044841uM34_23unbuffered_async_client.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanEECsc044841uM34_23unbuffered_async_client.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer9handshake12FragmentSpanENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs3_NtNtCskruEhpekJ3V_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i = load i32, ptr %i.b, align 8, !alias.scope !609, !noundef !8 ; 2 uses
  %i.c = icmp eq i32 %.val2.i, -1
  br i1 %i.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef i32 @close(i32 noundef %.val2.i) #17 ; 0 uses
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load i32, ptr %i.e, align 8, !alias.scope !609, !noundef !8 ; 2 uses
  %i.f = icmp eq i32 %.val.i, -1
  br i1 %i.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = tail call noundef i32 @close(i32 noundef %.val.i) #17 ; 0 uses
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i: ; preds = %bb.c, %bb.b
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12registration12RegistrationECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) #19
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.g:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit.i
  resume { ptr, i32 } %i.a

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCskruEhpekJ3V_5tokio2io12poll_evented11PollEventedNtNtNtNtCsUoH6ltOcnV_3mio3net3tcp6stream9TcpStreamEECsc044841uM34_23unbuffered_async_client.exit: ; preds = %bb.d, %bb.e
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12registration12RegistrationECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12registration12RegistrationECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs1_NtNtNtCskruEhpekJ3V_5tokio7runtime2io12registrationNtB5_12RegistrationNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler6HandleECsc044841uM34_23unbuffered_async_client(ptr noalias nofree noundef align 8 dereferenceable(16) %0) #19
          to label %bb.h unwind label %bb.l

end_hunk_5
begin_hunk_6_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12registration12RegistrationECsc044841uM34_23unbuffered_async_client:bb.a
bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !632)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !633)
  %i.h = load ptr, ptr %i.c, align 8, !alias.scope !634, !nonnull !8, !noundef !8
  %i.i = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !634
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.g, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler6HandleECsc044841uM34_23unbuffered_async_client.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #21
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler6HandleECsc044841uM34_23unbuffered_async_client.exit unwind label %bb.j

bb.h:                                             ; preds = %bb.j, %bb.b
  %.pn = phi { ptr, i32 } [ %i.o, %bb.j ], [ %i.a, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !635)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !636)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !637, !nonnull !8, !noundef !8
  %i.m = atomicrmw add ptr %i.l, i64 -1 release, align 8, !noalias !637
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12scheduled_io11ScheduledIoEECsc044841uM34_23unbuffered_async_client.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12scheduled_io11ScheduledIoE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #21
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12scheduled_io11ScheduledIoEECsc044841uM34_23unbuffered_async_client.exit unwind label %bb.l

bb.j:                                             ; preds = %bb.g, %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler6HandleECsc044841uM34_23unbuffered_async_client.exit: ; preds = %bb.f, %bb.d, %bb.e, %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !639)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !640, !nonnull !8, !noundef !8
  %i.r = atomicrmw add ptr %i.q, i64 -1 release, align 8, !noalias !640
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.k, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12scheduled_io11ScheduledIoEECsc044841uM34_23unbuffered_async_client.exit4

bb.k:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler6HandleECsc044841uM34_23unbuffered_async_client.exit
  fence acquire
  tail call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12scheduled_io11ScheduledIoE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #21
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12scheduled_io11ScheduledIoEECsc044841uM34_23unbuffered_async_client.exit4

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12scheduled_io11ScheduledIoEECsc044841uM34_23unbuffered_async_client.exit4: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCskruEhpekJ3V_5tokio7runtime9scheduler6HandleECsc044841uM34_23unbuffered_async_client.exit, %bb.k
  ret void

bb.l:                                             ; preds = %bb.i, %bb.b
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtNtCskruEhpekJ3V_5tokio7runtime2io12scheduled_io11ScheduledIoEECsc044841uM34_23unbuffered_async_client.exit: ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvCsc044841uM34_23unbuffered_async_client8recv_tls0B3_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !14, !noundef !8
  switch i8 %i.d, label %default.unreachable22 [
    i8 0, label %bb.b
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.d
  ]

default.unreachable22:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !nonnull !8, !align !12, !noundef !8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !8, !noundef !8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !8 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !8, !align !12, !noundef !8 ; 2 uses
  store ptr %i.l, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.m = load i64, ptr %i.l, align 8, !noundef !8 ; 4 uses
  %i.n = icmp ugt i64 %i.m, %i.i
  br i1 %i.n, label %bb.c, label %bb.e, !prof !15

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.m, i64 noundef range(i64 0, -9223372036854775808) %i.i, i64 noundef range(i64 0, -9223372036854775808) %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @277) #22
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.o = sub nuw nsw i64 %i.i, %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.m
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.e, ptr %i.q, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.p, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.o, ptr %.sroa.9.0..sroa_idx, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @278) #22
  unreachable

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @278) #22
  unreachable

bb.h:                                             ; preds = %bb.d, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = invoke { i64, ptr } @_RNvXNtNtNtCskruEhpekJ3V_5tokio2io4util4readINtB2_4ReadNtNtNtNtB8_3net3tcp6stream9TcpStreamENtNtNtCsj6eKBz9Db1c_4core6future6future6Future4pollCsc044841uM34_23unbuffered_async_client(ptr noundef nonnull align 8 %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.i unwind label %bb.r       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.t = extractvalue { i64, ptr } %i.s, 0        ; 2 uses
  %i.u = icmp eq i64 %i.t, 2
  br i1 %i.u, label %bb.j, label %bb.k

common.ret:                                       ; preds = %bb.p, %bb.j
  %storemerge = phi i8 [ 1, %bb.p ], [ 3, %bb.j ]
  store i8 %storemerge, ptr %i.c, align 8
  ret void

bb.j:                                             ; preds = %bb.i
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %common.ret

bb.k:                                             ; preds = %bb.i
  %i.v = extractvalue { i64, ptr } %i.s, 1        ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.x = trunc nuw i64 %i.t to i1
  br i1 %i.x, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.y = invoke { ptr, ptr } @_RNvXsd_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtB7_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorEL_EINtNtBW_7convert4FromNtNtNtBW_2io5error5ErrorE4fromCsc044841uM34_23unbuffered_async_client(ptr noundef nonnull %i.v)
          to label %bb.s unwind label %bb.r       ; 2 uses

bb.m:                                             ; preds = %bb.k
  store i64 %i.w, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.518.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsaKJjC64KgbL_3std2io5stdio7__eprint(ptr noundef nonnull @279, ptr noundef nonnull %i.a)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !8, !align !12, !noundef !8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !8
  %i.ad = add i64 %i.ac, %i.w
  store i64 %i.ad, ptr %i.ab, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.s, %bb.o
  %.sroa.3.0 = phi ptr [ %i.ai, %bb.s ], [ undef, %bb.o ]
  %.sroa.05.0 = phi ptr [ %i.ah, %bb.s ], [ null, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.05.0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.3.0, ptr %i.af, align 8
  store i64 0, ptr %0, align 8
  br label %common.ret

bb.q:                                             ; preds = %bb.r, %bb.n
  %.pn12.pn = phi { ptr, i32 } [ %i.z, %bb.n ], [ %i.ag, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i8 2, ptr %i.c, align 8
  resume { ptr, i32 } %.pn12.pn

bb.r:                                             ; preds = %bb.c, %bb.l, %bb.h
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.s:                                             ; preds = %bb.l
  %i.ah = extractvalue { ptr, ptr } %i.y, 0       ; 2 uses
  %i.ai = extractvalue { ptr, ptr } %i.y, 1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah), "nonnull"(ptr %i.ai) ]
  br label %bb.p
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvCsc044841uM34_23unbuffered_async_client8send_tls0B3_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !range !14, !noundef !8
  switch i8 %i.c, label %default.unreachable21 [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
  ]

default.unreachable21:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = load <2 x ptr>, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !8, !align !12, !noundef !8 ; 2 uses
  store ptr %i.i, ptr %i.g, align 8
  %i.j = load i64, ptr %i.i, align 8, !noundef !8 ; 3 uses
  %.not.i.i = icmp ugt i64 %i.j, %i.f
  br i1 %.not.i.i, label %bb.c, label %bb.d, !prof !15

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.j, i64 noundef range(i64 0, -9223372036854775808) %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @280) #22
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  store <2 x ptr> %i.d, ptr %i.k, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.j, ptr %.sroa.9.0..sroa_idx, align 8
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @281) #22
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @281) #22
  unreachable

bb.g:                                             ; preds = %bb.d, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = invoke { i64, ptr } @_RNvXNtNtNtCskruEhpekJ3V_5tokio2io4util9write_allINtB2_8WriteAllNtNtNtNtB8_3net3tcp6stream9TcpStreamENtNtNtCsj6eKBz9Db1c_4core6future6future6Future4pollCsc044841uM34_23unbuffered_async_client(ptr noundef nonnull align 8 %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.h unwind label %bb.p       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.n = extractvalue { i64, ptr } %i.m, 0
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %common.ret, label %bb.i

common.ret:                                       ; preds = %bb.h, %bb.n
  %storemerge18 = phi i64 [ 0, %bb.n ], [ 1, %bb.h ]
  %storemerge = phi i8 [ 1, %bb.n ], [ 3, %bb.h ]
  store i64 %storemerge18, ptr %0, align 8
  store i8 %storemerge, ptr %i.b, align 8
  ret void

bb.i:                                             ; preds = %bb.h
  %i.p = extractvalue { i64, ptr } %i.m, 1        ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = invoke { ptr, ptr } @_RNvXsd_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtB7_3BoxDNtNtCsj6eKBz9Db1c_4core5error5ErrorEL_EINtNtBW_7convert4FromNtNtNtBW_2io5error5ErrorE4fromCsc044841uM34_23unbuffered_async_client(ptr noundef nonnull %i.p)
          to label %bb.q unwind label %bb.p       ; 2 uses

bb.k:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.r, ptr %i.a, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1j_NtCsj6eKBz9Db1c_4core3fmtQjNtB6_7Display3fmtCsc044841uM34_23unbuffered_async_client, ptr %.sroa.517.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsaKJjC64KgbL_3std2io5stdio7__eprint(ptr noundef nonnull @282, ptr noundef nonnull %i.a)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.t = load ptr, ptr %i.r, align 8, !nonnull !8, !align !12, !noundef !8
  store i64 0, ptr %i.t, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.q, %bb.m
  %.sroa.3.0 = phi ptr [ %i.y, %bb.q ], [ undef, %bb.m ]
  %.sroa.04.0 = phi ptr [ %i.x, %bb.q ], [ null, %bb.m ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.04.0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.3.0, ptr %i.v, align 8
  br label %common.ret

bb.o:                                             ; preds = %bb.p, %bb.l
  %.pn11.pn = phi { ptr, i32 } [ %i.s, %bb.l ], [ %i.w, %bb.p ]
  store i8 2, ptr %i.b, align 8
  resume { ptr, i32 } %.pn11.pn

bb.p:                                             ; preds = %bb.c, %bb.j, %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.q:                                             ; preds = %bb.j
  %i.x = extractvalue { ptr, ptr } %i.q, 0        ; 2 uses
  %i.y = extractvalue { ptr, ptr } %i.q, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x), "nonnull"(ptr %i.y) ]
  br label %bb.n
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsg_NtCs7ZUl82OSlxp_6rustls5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = load i8, ptr %0, align 8, !range !27, !noundef !8
  switch i8 %i.m, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.n
    i8 13, label %bb.o
    i8 14, label %bb.p
    i8 15, label %bb.q
    i8 16, label %bb.r
    i8 17, label %bb.s
    i8 18, label %bb.t
    i8 19, label %bb.u
    i8 20, label %bb.v
    i8 21, label %bb.w
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.o, ptr %i.l, align 8
  %i.p = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @289, i64 noundef 20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @290, i64 noundef 12, ptr noundef nonnull %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @287, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @291, i64 noundef 8, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @288)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.r, ptr %i.k, align 8
  %i.s = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @294, i64 noundef 29, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @290, i64 noundef 12, ptr noundef nonnull %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @292, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @291, i64 noundef 8, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @293)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.x

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.t, ptr %i.j, align 8
  %i.u = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @296, i64 noundef 27, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @295)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.x

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.i, align 8
  %i.w = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @298, i64 noundef 14, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @297)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.x

bb.f:                                             ; preds = %bb.a
  %i.x = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @299, i64 noundef 23)
  br label %bb.x

bb.g:                                             ; preds = %bb.a
  %i.y = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @300, i64 noundef 19)
  br label %bb.x

bb.h:                                             ; preds = %bb.a
  %i.z = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @301, i64 noundef 12)
  br label %bb.x

bb.i:                                             ; preds = %bb.a
  %i.aa = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @302, i64 noundef 12)
  br label %bb.x

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.h, align 8
  %i.ac = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @304, i64 noundef 16, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @303)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.x

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.ad, ptr %i.g, align 8
  %i.ae = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @306, i64 noundef 14, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @305)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.x

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.af, ptr %i.f, align 8
  %i.ag = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @308, i64 noundef 13, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @307)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.x

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ah, ptr %i.e, align 8
  %i.ai = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @310, i64 noundef 18, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @309)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.x

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %i.d, align 8
  %i.ak = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @312, i64 noundef 25, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @311)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.x

bb.o:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.al, ptr %i.c, align 8
  %i.am = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @314, i64 noundef 7, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @313)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.x

bb.p:                                             ; preds = %bb.a
  %i.an = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @315, i64 noundef 22)
  br label %bb.x

bb.q:                                             ; preds = %bb.a
  %i.ao = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @316, i64 noundef 22)
  br label %bb.x

bb.r:                                             ; preds = %bb.a
  %i.ap = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @317, i64 noundef 20)
  br label %bb.x

bb.s:                                             ; preds = %bb.a
  %i.aq = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @318, i64 noundef 23)
  br label %bb.x

bb.t:                                             ; preds = %bb.a
  %i.ar = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @319, i64 noundef 21)
  br label %bb.x

bb.u:                                             ; preds = %bb.a
  %i.as = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @320, i64 noundef 18)
  br label %bb.x

bb.v:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.at, ptr %i.b, align 8
  %i.au = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @322, i64 noundef 16, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @321)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.x

bb.w:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.a, align 8
  %i.aw = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @324, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @323)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.p, %bb.b ], [ %i.s, %bb.c ], [ %i.u, %bb.d ], [ %i.w, %bb.e ], [ %i.x, %bb.f ], [ %i.y, %bb.g ], [ %i.z, %bb.h ], [ %i.aa, %bb.i ], [ %i.ac, %bb.j ], [ %i.ae, %bb.k ], [ %i.ag, %bb.l ], [ %i.ai, %bb.m ], [ %i.ak, %bb.n ], [ %i.am, %bb.o ], [ %i.an, %bb.p ], [ %i.ao, %bb.q ], [ %i.ap, %bb.r ], [ %i.aq, %bb.s ], [ %i.ar, %bb.t ], [ %i.as, %bb.u ], [ %i.au, %bb.v ], [ %i.aw, %bb.w ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvNtNtCsj6eKBz9Db1c_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsc044841uM34_23unbuffered_async_client(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
end_hunk_6
