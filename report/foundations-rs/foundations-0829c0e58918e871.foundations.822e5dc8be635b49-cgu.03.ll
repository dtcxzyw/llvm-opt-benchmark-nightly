Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations-0829c0e58918e871.foundations.822e5dc8be635b49-cgu.03?download=true
inline.NumInlined: 1263
inline.NumDeleted: 629
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNCNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing16output_otlp_grpc5starts_0B9_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !10896, !noalias !10764
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 1688, !dbg !10896 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10768), !dbg !10896
  switch i8 %.pre.i.i, label %default.unreachable60 [
    i8 0, label %._crit_edge.i
    i8 1, label %bb.ab
    i8 2, label %bb.ac
    i8 3, label %bb.z
  ], !dbg !10897

._crit_edge.i:                                    ; preds = %bb.x
  %.phi.trans.insert93.i = getelementptr inbounds nuw i8, ptr %0, i64 2232
  %.pre94.i = load ptr, ptr %.phi.trans.insert93.i, align 8, !dbg !10899, !noalias !10767
  br label %bb.y, !dbg !10897

bb.y:                                             ; preds = %._crit_edge.i, %.thread.i.i
  %i.ca = phi ptr [ %i.ax, %.thread.i.i ], [ %i.ad, %._crit_edge.i ] ; 2 uses
  %i.cb = phi ptr [ %i.ay, %.thread.i.i ], [ %i.ac, %._crit_edge.i ] ; 2 uses
  %i.cc = phi ptr [ %i.ba, %.thread.i.i ], [ %.phi.trans.insert.i, %._crit_edge.i ] ; 2 uses
  %i.cd = phi ptr [ %i.bb, %.thread.i.i ], [ %i.aw, %._crit_edge.i ] ; 2 uses
  %i.ce = phi ptr [ %i.az, %.thread.i.i ], [ %.pre94.i, %._crit_edge.i ], !dbg !10899
  %i.cf = phi ptr [ %.sroa.1029.0..sroa_idx.i.i, %.thread.i.i ], [ %.phi.trans.insert.i.i, %._crit_edge.i ] ; 2 uses
  %i.cg = phi ptr [ %i.br, %.thread.i.i ], [ %i.bz, %._crit_edge.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !10900, !noalias !10767
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %i.i, ptr noundef nonnull align 8 dereferenceable(544) %i.cg, i64 544, i1 false), !dbg !10900, !noalias !10767
  %i.ch = invoke { ptr, ptr } @_RINvMNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10connectionNtB3_10Connection3newINtNtB5_9connector9ConnectorNtNtNtNtNtCsgrxNvLvgM5Z_10hyper_util6client6legacy7connect4http13HttpConnectorEECsbaWXNhtWAp9_11foundations(ptr noundef nonnull %i.ce, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(544) %i.i, i1 noundef zeroext false)
          to label %bb.aa unwind label %bb.an, !dbg !10901, !noalias !10769 ; 2 uses

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !10897, !noalias !10767
  br label %bb.ad, !dbg !10902

bb.aa:                                            ; preds = %bb.y
  %i.ci = extractvalue { ptr, ptr } %i.ch, 0, !dbg !10903
  %i.cj = extractvalue { ptr, ptr } %i.ch, 1, !dbg !10903
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 2240, !dbg !10901
  store ptr %i.ci, ptr %i.ck, align 8, !dbg !10901, !noalias !10767
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 2248, !dbg !10901
  store ptr %i.cj, ptr %i.cl, align 8, !dbg !10901, !noalias !10767
  br label %bb.ad, !dbg !10902

.body.i.i.i:                                      ; preds = %bb.an, %bb.am, %bb.al, %bb.ae
  %i.cm = phi ptr [ %i.cs, %bb.ae ], [ %i.ca, %bb.an ], [ %i.cs, %bb.am ], [ %i.cs, %bb.al ]
  %i.cn = phi ptr [ %i.ct, %bb.ae ], [ %i.cb, %bb.an ], [ %i.ct, %bb.am ], [ %i.ct, %bb.al ]
  %i.co = phi ptr [ %i.cu, %bb.ae ], [ %i.cc, %bb.an ], [ %i.cu, %bb.am ], [ %i.cu, %bb.al ]
  %i.cp = phi ptr [ %i.cv, %bb.ae ], [ %i.cd, %bb.an ], [ %i.cv, %bb.am ], [ %i.cv, %bb.al ]
  %i.cq = phi ptr [ %i.cw, %bb.ae ], [ %i.cf, %bb.an ], [ %i.cw, %bb.am ], [ %i.cw, %bb.al ]
  %i.cr = phi ptr [ %i.cx, %bb.ae ], [ %i.cg, %bb.an ], [ %i.cx, %bb.am ], [ %i.cx, %bb.al ]
  %.pn2.i.i.i = phi { ptr, i32 } [ %i.cz, %bb.ae ], [ %i.dr, %bb.an ], [ %i.dl, %bb.am ], [ %i.dl, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !10904, !noalias !10767
  store i8 2, ptr %i.cq, align 8, !dbg !10897, !noalias !10767
  br label %.body.i.i, !dbg !10897

bb.ab:                                            ; preds = %bb.x
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #29
          to label %.noexc.i.i unwind label %bb.ap, !dbg !10897, !noalias !10765

.noexc.i.i:                                       ; preds = %bb.ab
  unreachable, !dbg !10897

bb.ac:                                            ; preds = %bb.x
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #29
          to label %.noexc12.i.i unwind label %bb.ap, !dbg !10897, !noalias !10765

.noexc12.i.i:                                     ; preds = %bb.ac
  unreachable, !dbg !10897

bb.ad:                                            ; preds = %bb.aa, %bb.z
  %i.cs = phi ptr [ %i.ca, %bb.aa ], [ %i.ad, %bb.z ] ; 10 uses
  %i.ct = phi ptr [ %i.cb, %bb.aa ], [ %i.ac, %bb.z ] ; 8 uses
  %i.cu = phi ptr [ %i.cc, %bb.aa ], [ %.phi.trans.insert.i, %bb.z ] ; 9 uses
  %i.cv = phi ptr [ %i.cd, %bb.aa ], [ %i.aw, %bb.z ] ; 8 uses
  %i.cw = phi ptr [ %i.cf, %bb.aa ], [ %.phi.trans.insert.i.i, %bb.z ] ; 5 uses
  %i.cx = phi ptr [ %i.cg, %bb.aa ], [ %i.bz, %bb.z ] ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 2240, !dbg !10902 ; 3 uses
  invoke void @_RNvXs0_NtNtCsdBNFPP92xfl_5tower4util5readyINtB5_12ReadyOneshotNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10connection10ConnectionINtNtCs74LoFwSioHw_4http7request7RequestNtNtB18_4body4BodyEENtNtNtCs3oUPovFnLWP_4core6future6future6Future4pollCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.cy, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.af unwind label %bb.ae, !dbg !10902, !noalias !10765

bb.ae:                                            ; preds = %bb.ad
  %i.cz = landingpad { ptr, i32 }
          cleanup
  %.val5.i.i.i = load ptr, ptr %i.cy, align 8, !dbg !10905, !noalias !10767, !noundef !786
  %i.da = getelementptr i8, ptr %0, i64 2248, !dbg !10905
  %.val6.i.i.i = load ptr, ptr %i.da, align 8, !dbg !10905, !noalias !10767
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdBNFPP92xfl_5tower4util5ready12ReadyOneshotNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10connection10ConnectionINtNtCs74LoFwSioHw_4http7request7RequestNtNtB1B_4body4BodyEEECsbaWXNhtWAp9_11foundations(ptr %.val5.i.i.i, ptr %.val6.i.i.i) #27
          to label %.body.i.i.i unwind label %bb.ao, !dbg !10905, !noalias !10770

bb.af:                                            ; preds = %bb.ad
  %i.db = load i64, ptr %i.m, align 8, !dbg !10902, !range !1033, !alias.scope !10768, !noalias !10764, !noundef !786 ; 2 uses
  %i.dc = icmp eq i64 %i.db, 2, !dbg !10902
  br i1 %i.dc, label %.thread.i, label %bb.ag, !dbg !10902

bb.ag:                                            ; preds = %bb.af
  %.val.i.i.i = load ptr, ptr %i.cy, align 8, !dbg !10905, !noalias !10767, !noundef !786 ; 4 uses
  %i.dd = getelementptr i8, ptr %0, i64 2248, !dbg !10905
  %.val4.i.i.i = load ptr, ptr %i.dd, align 8, !dbg !10905, !noalias !10767 ; 6 uses
  %i.de = icmp eq ptr %.val.i.i.i, null, !dbg !10906
  br i1 %i.de, label %bb.aq, label %bb.ah, !dbg !10906

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i.i.i) ]
  %i.df = load ptr, ptr %.val4.i.i.i, align 8, !dbg !10907, !invariant.load !786, !noalias !10770 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.df, null, !dbg !10907
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.aj, label %bb.ai, !dbg !10907

bb.ai:                                            ; preds = %bb.ah
  invoke void %i.df(ptr noundef nonnull %.val.i.i.i)
          to label %bb.aj unwind label %bb.al, !dbg !10907, !noalias !10770

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.dg = getelementptr inbounds nuw i8, ptr %.val4.i.i.i, i64 8, !dbg !10908
  %i.dh = load i64, ptr %i.dg, align 8, !dbg !10908, !range !1009, !invariant.load !786, !noalias !10770 ; 2 uses
  %i.di = icmp eq i64 %i.dh, 0, !dbg !10909
  br i1 %i.di, label %bb.aq, label %bb.ak, !dbg !10909

bb.ak:                                            ; preds = %bb.aj
  %i.dj = getelementptr inbounds nuw i8, ptr %.val4.i.i.i, i64 16, !dbg !10908
  %i.dk = load i64, ptr %i.dj, align 8, !dbg !10910, !range !1010, !invariant.load !786, !noalias !10770
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.dh, i64 noundef range(i64 1, 536870913) %i.dk) #19, !dbg !10911, !noalias !10770
  br label %bb.aq, !dbg !10912

bb.al:                                            ; preds = %bb.ai
  %i.dl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.val4.i.i.i, i64 8, !dbg !10913
  %i.dn = load i64, ptr %i.dm, align 8, !dbg !10913, !range !1009, !invariant.load !786, !noalias !10770 ; 2 uses
  %i.do = icmp eq i64 %i.dn, 0, !dbg !10914
  br i1 %i.do, label %.body.i.i.i, label %bb.am, !dbg !10914

bb.am:                                            ; preds = %bb.al
  %i.dp = getelementptr inbounds nuw i8, ptr %.val4.i.i.i, i64 16, !dbg !10913
  %i.dq = load i64, ptr %i.dp, align 8, !dbg !10915, !range !1010, !invariant.load !786, !noalias !10770
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.dn, i64 noundef range(i64 1, 536870913) %i.dq) #19, !dbg !10916, !noalias !10770
  br label %.body.i.i.i, !dbg !10917

bb.an:                                            ; preds = %bb.y
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.ao:                                            ; preds = %bb.ae
  %i.ds = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !10897, !noalias !10770
  unreachable, !dbg !10897

bb.ap:                                            ; preds = %bb.ac, %bb.ab
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i, !dbg !10918

.body.i.i:                                        ; preds = %bb.ap, %.body.i.i.i
  %i.du = phi ptr [ %i.ad, %bb.ap ], [ %i.cm, %.body.i.i.i ]
  %i.dv = phi ptr [ %i.ac, %bb.ap ], [ %i.cn, %.body.i.i.i ]
  %i.dw = phi ptr [ %.phi.trans.insert.i, %bb.ap ], [ %i.co, %.body.i.i.i ]
  %i.dx = phi ptr [ %i.aw, %bb.ap ], [ %i.cp, %.body.i.i.i ]
  %i.dy = phi ptr [ %i.bz, %bb.ap ], [ %i.cr, %.body.i.i.i ]
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.dt, %bb.ap ], [ %.pn2.i.i.i, %.body.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !10918, !noalias !10764
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvMNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10connectionNtBH_10Connection7connectINtNtBJ_9connector9ConnectorNtNtNtNtNtCsgrxNvLvgM5Z_10hyper_util6client6legacy7connect4http13HttpConnectorEE0ECsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %i.dy) #27
          to label %bb.ar unwind label %bb.bb, !dbg !10919, !noalias !10765

.thread.i:                                        ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !10920, !noalias !10767
  store i8 3, ptr %i.cw, align 8, !dbg !10921, !noalias !10767
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !10918, !noalias !10764
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !10896, !noalias !10764
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !10896, !noalias !10764
  store i8 3, ptr %i.cu, align 8, !dbg !10922, !noalias !10764
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.645.i.i), !dbg !10922
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.747.i.i), !dbg !10922
  br label %bb.bn, !dbg !10864

bb.aq:                                            ; preds = %bb.ak, %bb.aj, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !10920, !noalias !10767
  store i8 1, ptr %i.cw, align 8, !dbg !10921, !noalias !10767
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !10923
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !10923, !noalias !10764 ; 3 uses
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !10923
  %.sroa.3.0.copyload.i.i = load ptr, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !10923, !noalias !10764 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !10918, !noalias !10764
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvMNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10connectionNtBH_10Connection7connectINtNtBJ_9connector9ConnectorNtNtNtNtNtCsgrxNvLvgM5Z_10hyper_util6client6legacy7connect4http13HttpConnectorEE0ECsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %i.cx)
          to label %bb.at unwind label %bb.as, !dbg !10919, !noalias !10765

bb.ar:                                            ; preds = %bb.as, %.body.i.i
  %i.dz = phi ptr [ %i.cs, %bb.as ], [ %i.du, %.body.i.i ]
  %i.ea = phi ptr [ %i.ct, %bb.as ], [ %i.dv, %.body.i.i ]
  %i.eb = phi ptr [ %i.cu, %bb.as ], [ %i.dw, %.body.i.i ]
  %i.ec = phi ptr [ %i.cv, %bb.as ], [ %i.dx, %.body.i.i ]
  %.pn4.i.i = phi { ptr, i32 } [ %i.ed, %bb.as ], [ %eh.lpad-body.i.i, %.body.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !10924, !noalias !10764
  br label %bb.bd, !dbg !10925

bb.as:                                            ; preds = %bb.au, %bb.aq
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.at:                                            ; preds = %bb.aq
  %i.ee = trunc nuw i64 %i.db to i1, !dbg !10926
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload.i.i), "nonnull"(ptr %.sroa.3.0.copyload.i.i) ]
  br i1 %i.ee, label %bb.au, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10connection10ConnectionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB2V_4SyncEL_EE7map_errNtNtBQ_5error5ErrorINvMB3C_B3A_11from_sourceB20_EECsbaWXNhtWAp9_11foundations.exit.thread.i.i, !dbg !10926

bb.au:                                            ; preds = %bb.at
  invoke void @_RINvMNtNtCsfUalJnHtWpm_5tonic9transport5errorNtB3_5Error11from_sourceINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtB1J_6marker4SendNtB2g_4SyncEL_EECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noundef nonnull %.sroa.2.0.copyload.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.3.0.copyload.i.i)
          to label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10connection10ConnectionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB2V_4SyncEL_EE7map_errNtNtBQ_5error5ErrorINvMB3C_B3A_11from_sourceB20_EECsbaWXNhtWAp9_11foundations.exit.i.i unwind label %bb.as, !dbg !10927, !noalias !10765

_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10connection10ConnectionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB2V_4SyncEL_EE7map_errNtNtBQ_5error5ErrorINvMB3C_B3A_11from_sourceB20_EECsbaWXNhtWAp9_11foundations.exit.i.i: ; preds = %bb.au
  %.phi.trans.insert68.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.pre69.i.i = load i8, ptr %.phi.trans.insert68.i.i, align 8, !dbg !10928, !range !1084, !alias.scope !10772, !noalias !10764 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10773), !dbg !10893
  %.not.i.i.i = icmp eq i8 %.pre69.i.i, -1, !dbg !10928
  %.pre95.i = load ptr, ptr %i.n, align 8, !dbg !10929, !alias.scope !10774, !noalias !10764 ; 3 uses
  %.phi.trans.insert96.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.pre97.i = load ptr, ptr %.phi.trans.insert96.i, align 8, !dbg !10930, !alias.scope !10774, !noalias !10764 ; 3 uses
  br i1 %.not.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10connection10ConnectionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB2V_4SyncEL_EE7map_errNtNtBQ_5error5ErrorINvMB3C_B3A_11from_sourceB20_EECsbaWXNhtWAp9_11foundations.exit.thread.i.i, label %bb.bf, !dbg !10931

_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10connection10ConnectionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB2V_4SyncEL_EE7map_errNtNtBQ_5error5ErrorINvMB3C_B3A_11from_sourceB20_EECsbaWXNhtWAp9_11foundations.exit.thread.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10connection10ConnectionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB2V_4SyncEL_EE7map_errNtNtBQ_5error5ErrorINvMB3C_B3A_11from_sourceB20_EECsbaWXNhtWAp9_11foundations.exit.i.i, %bb.at
  %i.ef = phi ptr [ %.sroa.3.0.copyload.i.i, %bb.at ], [ %.pre97.i, %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10connection10ConnectionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB2V_4SyncEL_EE7map_errNtNtBQ_5error5ErrorINvMB3C_B3A_11from_sourceB20_EECsbaWXNhtWAp9_11foundations.exit.i.i ], !dbg !10929
  %i.eg = phi ptr [ %.sroa.2.0.copyload.i.i, %bb.at ], [ %.pre95.i, %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10connection10ConnectionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB2V_4SyncEL_EE7map_errNtNtBQ_5error5ErrorINvMB3C_B3A_11from_sourceB20_EECsbaWXNhtWAp9_11foundations.exit.i.i ], !dbg !10929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !10924, !noalias !10764
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !10932, !noalias !10764
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 1664, !dbg !10933
  %i.ei = load i64, ptr %i.eh, align 8, !dbg !10933, !noalias !10764, !noundef !786
  invoke void @_RINvMNtNtCsdBNFPP92xfl_5tower6buffer7serviceINtB3_6BufferINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB2b_6future6future6Futurep6OutputINtNtB2b_6result6ResultINtNtBY_8response8ResponseB1x_EIB2D_DNtNtB2b_5error5ErrorNtNtB2b_6marker4SendNtB59_4SyncEL_EEB57_EL_EEE4pairNtNtNtNtNtB1B_9transport7channel7service10connection10ConnectionECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([384 x i8]) align 8 captures(none) dereferenceable(384) %i.j, ptr noundef nonnull %i.eg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ef, i64 noundef %i.ei)
          to label %bb.aw unwind label %bb.av, !dbg !10932, !noalias !10765

bb.av:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10connection10ConnectionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB2V_4SyncEL_EE7map_errNtNtBQ_5error5ErrorINvMB3C_B3A_11from_sourceB20_EECsbaWXNhtWAp9_11foundations.exit.thread.i.i
  %i.ej = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !10934, !noalias !10764
  br label %bb.bd, !dbg !10935

bb.aw:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10connection10ConnectionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB2V_4SyncEL_EE7map_errNtNtBQ_5error5ErrorINvMB3C_B3A_11from_sourceB20_EECsbaWXNhtWAp9_11foundations.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !10936, !noalias !10764
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false), !dbg !10936, !noalias !10764
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !10937, !noalias !10764
  %i.ek = getelementptr inbounds nuw i8, ptr %i.j, i64 48, !dbg !10937
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %i.k, ptr noundef nonnull align 8 dereferenceable(336) %i.ek, i64 336, i1 false), !dbg !10937, !noalias !10764
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !10934, !noalias !10764
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 1672, !dbg !10938 ; 3 uses
  invoke void @_RNvXs_NtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service8executorNtB4_10SharedExecINtNtCsaCYLheajBls_5hyper2rt8ExecutorINtNtNtCsdBNFPP92xfl_5tower6buffer6worker6WorkerNtNtB6_10connection10ConnectionINtNtCs74LoFwSioHw_4http7request7RequestNtNtBc_4body4BodyEEE7executeCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.el, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(336) %i.k)
          to label %bb.ay unwind label %bb.ax, !dbg !10939, !noalias !10765

bb.ax:                                            ; preds = %bb.aw
  %i.em = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !10940, !noalias !10764
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdBNFPP92xfl_5tower6buffer7service6BufferINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB1t_8response8ResponseB22_EIB2S_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB5m_4SyncEL_EEB5k_EL_EEEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(48) %i.l) #27
          to label %bb.bc unwind label %bb.bb, !dbg !10940, !noalias !10765

bb.ay:                                            ; preds = %bb.aw
  %.sroa.055.0.copyload.i.i = load i64, ptr %i.l, align 8, !dbg !10941, !noalias !10764 ; 2 uses
  %.sroa.456.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !10941
  %.sroa.456.0.copyload.i.i = load ptr, ptr %.sroa.456.0..sroa_idx.i.i, align 8, !dbg !10941, !noalias !10764 ; 2 uses
  %.sroa.557.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !10941
  %.sroa.557.0.copyload.i.i = load ptr, ptr %.sroa.557.0..sroa_idx.i.i, align 8, !dbg !10941, !noalias !10764 ; 2 uses
  %.sroa.658.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24, !dbg !10941
  %.sroa.658.0.copyload.i.i = load i8, ptr %.sroa.658.0..sroa_idx.i.i, align 8, !dbg !10941, !noalias !10764 ; 2 uses
  %.sroa.759.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 25, !dbg !10941
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.645.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.759.0..sroa_idx.i.i, i64 7, i1 false), !dbg !10941, !noalias !10764
  %.sroa.860.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32, !dbg !10941
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.747.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.860.0..sroa_idx.i.i, i64 16, i1 false), !dbg !10941, !noalias !10764
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !10940, !noalias !10764
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !10940, !noalias !10764
  call void @llvm.experimental.noalias.scope.decl(metadata !10775), !dbg !10942
  call void @llvm.experimental.noalias.scope.decl(metadata !10776), !dbg !10943
  call void @llvm.experimental.noalias.scope.decl(metadata !10777), !dbg !10944
  %i.en = load ptr, ptr %i.el, align 8, !dbg !10945, !alias.scope !10778, !noalias !10764, !nonnull !786, !noundef !786
  %i.eo = atomicrmw add ptr %i.en, i64 -1 release, align 8, !dbg !10946, !noalias !10779
  %i.ep = icmp eq i64 %i.eo, 1, !dbg !10947
  br i1 %i.ep, label %bb.az, label %bb.bm, !dbg !10947

bb.az:                                            ; preds = %bb.ay
  fence acquire, !dbg !10948
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDINtNtCsaCYLheajBls_5hyper2rt8ExecutorINtNtCs3oUPovFnLWP_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1n_6future6future6Futurep6OutputuNtNtB1n_6marker4SendEL_EEEB2L_NtB2N_4SyncEL_E9drop_slowCsfUalJnHtWpm_5tonic(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.el) #25
          to label %bb.bm unwind label %bb.ba, !dbg !10949, !noalias !10765

bb.ba:                                            ; preds = %bb.bg, %bb.az
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service8executor10SharedExecECsbaWXNhtWAp9_11foundations.exit16.i.i

bb.bb:                                            ; preds = %bb.bk, %bb.bi, %bb.be, %bb.ax, %.body.i.i
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !10865, !noalias !10765
  unreachable, !dbg !10865

bb.bc:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !10940, !noalias !10764
  br label %bb.bd, !dbg !10950

bb.bd:                                            ; preds = %bb.bc, %bb.av, %bb.ar
  %i.es = phi ptr [ %i.dz, %bb.ar ], [ %i.cs, %bb.bc ], [ %i.cs, %bb.av ] ; 2 uses
  %i.et = phi ptr [ %i.ea, %bb.ar ], [ %i.ct, %bb.bc ], [ %i.ct, %bb.av ] ; 2 uses
  %i.eu = phi ptr [ %i.eb, %bb.ar ], [ %i.cu, %bb.bc ], [ %i.cu, %bb.av ] ; 2 uses
  %i.ev = phi ptr [ %i.ec, %bb.ar ], [ %i.cv, %bb.bc ], [ %i.cv, %bb.av ] ; 2 uses
  %.pn6.pn.i.i = phi { ptr, i32 } [ %.pn4.i.i, %bb.ar ], [ %i.em, %bb.bc ], [ %i.ej, %bb.av ] ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 1672, !dbg !10942 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10781), !dbg !10942
  call void @llvm.experimental.noalias.scope.decl(metadata !10782), !dbg !10951
  call void @llvm.experimental.noalias.scope.decl(metadata !10783), !dbg !10952
  %i.ex = load ptr, ptr %i.ew, align 8, !dbg !10953, !alias.scope !10784, !noalias !10764, !nonnull !786, !noundef !786
  %i.ey = atomicrmw add ptr %i.ex, i64 -1 release, align 8, !dbg !10954, !noalias !10785
  %i.ez = icmp eq i64 %i.ey, 1, !dbg !10955
  br i1 %i.ez, label %bb.be, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service8executor10SharedExecECsbaWXNhtWAp9_11foundations.exit16.i.i, !dbg !10955

bb.be:                                            ; preds = %bb.bd
  fence acquire, !dbg !10956
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDINtNtCsaCYLheajBls_5hyper2rt8ExecutorINtNtCs3oUPovFnLWP_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1n_6future6future6Futurep6OutputuNtNtB1n_6marker4SendEL_EEEB2L_NtB2N_4SyncEL_E9drop_slowCsfUalJnHtWpm_5tonic(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ew) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service8executor10SharedExecECsbaWXNhtWAp9_11foundations.exit16.i.i unwind label %bb.bb, !dbg !10957, !noalias !10765

bb.bf:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10connection10ConnectionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB2V_4SyncEL_EE7map_errNtNtBQ_5error5ErrorINvMB3C_B3A_11from_sourceB20_EECsbaWXNhtWAp9_11foundations.exit.i.i
  %.sroa.14.0..sroa_idx25.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 17, !dbg !10958
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.645.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.14.0..sroa_idx25.i.i, i64 7, i1 false), !dbg !10958, !noalias !10764
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !10924, !noalias !10764
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 1672, !dbg !10942 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10786), !dbg !10942
  call void @llvm.experimental.noalias.scope.decl(metadata !10787), !dbg !10959
  call void @llvm.experimental.noalias.scope.decl(metadata !10788), !dbg !10960
  %i.fb = load ptr, ptr %i.fa, align 8, !dbg !10961, !alias.scope !10789, !noalias !10764, !nonnull !786, !noundef !786
  %i.fc = atomicrmw add ptr %i.fb, i64 -1 release, align 8, !dbg !10962, !noalias !10790
  %i.fd = icmp eq i64 %i.fc, 1, !dbg !10963
  br i1 %i.fd, label %bb.bg, label %bb.bm, !dbg !10963

bb.bg:                                            ; preds = %bb.bf
  fence acquire, !dbg !10964
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDINtNtCsaCYLheajBls_5hyper2rt8ExecutorINtNtCs3oUPovFnLWP_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1n_6future6future6Futurep6OutputuNtNtB1n_6marker4SendEL_EEEB2L_NtB2N_4SyncEL_E9drop_slowCsfUalJnHtWpm_5tonic(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.fa) #25
          to label %bb.bm unwind label %bb.ba, !dbg !10965, !noalias !10765

bb.bh:                                            ; preds = %bb.bi, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service8executor10SharedExecECsbaWXNhtWAp9_11foundations.exit16.i.i
  store i8 0, ptr %i.bw, align 1, !dbg !10898, !noalias !10764
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 2266, !dbg !10966 ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 2, !dbg !10966, !range !1053, !noalias !10764, !noundef !786
  %i.fg = trunc nuw i8 %i.ff to i1, !dbg !10966
  br i1 %i.fg, label %bb.bj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service9connector9ConnectorNtNtNtNtNtCsgrxNvLvgM5Z_10hyper_util6client6legacy7connect4http13HttpConnectorEECsbaWXNhtWAp9_11foundations.exit.i.i, !dbg !10966

bb.bi:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service8executor10SharedExecECsbaWXNhtWAp9_11foundations.exit16.i.i
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 1120, !dbg !10898
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel8endpoint8EndpointECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(544) %i.fh) #27
          to label %bb.bh unwind label %bb.bb, !dbg !10898, !noalias !10765

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service9connector9ConnectorNtNtNtNtNtCsgrxNvLvgM5Z_10hyper_util6client6legacy7connect4http13HttpConnectorEECsbaWXNhtWAp9_11foundations.exit.i.i: ; preds = %bb.bk, %bb.bj, %bb.bh
  store i8 0, ptr %i.fe, align 2, !dbg !10966, !noalias !10764
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !10966, !noalias !10764
  store i8 2, ptr %i.bu, align 8, !dbg !10865, !noalias !10764
  br label %.body.i, !dbg !10865

bb.bj:                                            ; preds = %bb.bh
  call void @llvm.experimental.noalias.scope.decl(metadata !10791), !dbg !10966
  call void @llvm.experimental.noalias.scope.decl(metadata !10792), !dbg !10967
  call void @llvm.experimental.noalias.scope.decl(metadata !10793), !dbg !10968
  call void @llvm.experimental.noalias.scope.decl(metadata !10794), !dbg !10969
  %i.fi = load ptr, ptr %i.o, align 8, !dbg !10970, !alias.scope !10795, !noalias !10764, !nonnull !786, !noundef !786
  %i.fj = atomicrmw add ptr %i.fi, i64 -1 release, align 8, !dbg !10971, !noalias !10796
  %i.fk = icmp eq i64 %i.fj, 1, !dbg !10972
  br i1 %i.fk, label %bb.bk, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service9connector9ConnectorNtNtNtNtNtCsgrxNvLvgM5Z_10hyper_util6client6legacy7connect4http13HttpConnectorEECsbaWXNhtWAp9_11foundations.exit.i.i, !dbg !10972

bb.bk:                                            ; preds = %bb.bj
  fence acquire, !dbg !10973
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCsgrxNvLvgM5Z_10hyper_util6client6legacy7connect4http6ConfigE9drop_slowCsfUalJnHtWpm_5tonic(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service9connector9ConnectorNtNtNtNtNtCsgrxNvLvgM5Z_10hyper_util6client6legacy7connect4http13HttpConnectorEECsbaWXNhtWAp9_11foundations.exit.i.i unwind label %bb.bb, !dbg !10974, !noalias !10765

bb.bl:                                            ; preds = %bb.w, %bb.v
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !10975

.body.i:                                          ; preds = %bb.bl, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service9connector9ConnectorNtNtNtNtNtCsgrxNvLvgM5Z_10hyper_util6client6legacy7connect4http13HttpConnectorEECsbaWXNhtWAp9_11foundations.exit.i.i
  %i.fm = phi ptr [ %i.ad, %bb.bl ], [ %i.bs, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service9connector9ConnectorNtNtNtNtNtCsgrxNvLvgM5Z_10hyper_util6client6legacy7connect4http13HttpConnectorEECsbaWXNhtWAp9_11foundations.exit.i.i ]
  %i.fn = phi ptr [ %i.ac, %bb.bl ], [ %i.bt, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service9connector9ConnectorNtNtNtNtNtCsgrxNvLvgM5Z_10hyper_util6client6legacy7connect4http13HttpConnectorEECsbaWXNhtWAp9_11foundations.exit.i.i ]
  %i.fo = phi ptr [ %i.aw, %bb.bl ], [ %i.bv, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service9connector9ConnectorNtNtNtNtNtCsgrxNvLvgM5Z_10hyper_util6client6legacy7connect4http13HttpConnectorEECsbaWXNhtWAp9_11foundations.exit.i.i ]
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.fl, %bb.bl ], [ %.pn9.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service9connector9ConnectorNtNtNtNtNtCsgrxNvLvgM5Z_10hyper_util6client6legacy7connect4http13HttpConnectorEECsbaWXNhtWAp9_11foundations.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i), !dbg !10975
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i), !dbg !10975
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvMNtNtCsfUalJnHtWpm_5tonic9transport7channelNtBH_7Channel7connectINtNtNtBH_7service9connector9ConnectorNtNtNtNtNtCsgrxNvLvgM5Z_10hyper_util6client6legacy7connect4http13HttpConnectorEE0ECsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %i.fo) #27
          to label %bb.bp unwind label %bb.k, !dbg !10976, !noalias !10750

bb.bm:                                            ; preds = %bb.bg, %bb.bf, %bb.az, %bb.ay
  %.sroa.035.0.i.i = phi i64 [ -1, %bb.bg ], [ -1, %bb.bf ], [ %.sroa.055.0.copyload.i.i, %bb.ay ], [ %.sroa.055.0.copyload.i.i, %bb.az ], !dbg !10977 ; 2 uses
  %.sroa.337.0.i.i = phi ptr [ %.pre95.i, %bb.bg ], [ %.pre95.i, %bb.bf ], [ %.sroa.456.0.copyload.i.i, %bb.ay ], [ %.sroa.456.0.copyload.i.i, %bb.az ], !dbg !10977
  %.sroa.4.0.i.i = phi ptr [ %.pre97.i, %bb.bg ], [ %.pre97.i, %bb.bf ], [ %.sroa.557.0.copyload.i.i, %bb.ay ], [ %.sroa.557.0.copyload.i.i, %bb.az ], !dbg !10977
  %.sroa.542.0.i.i = phi i8 [ %.pre69.i.i, %bb.bg ], [ %.pre69.i.i, %bb.bf ], [ %.sroa.658.0.copyload.i.i, %bb.ay ], [ %.sroa.658.0.copyload.i.i, %bb.az ], !dbg !10977
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 2265, !dbg !10898
  store i8 0, ptr %i.fp, align 1, !dbg !10898, !noalias !10764
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 2266, !dbg !10966
  store i8 0, ptr %i.fq, align 2, !dbg !10966, !noalias !10764
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !10966, !noalias !10764
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.645.i.i, i64 7, i1 false), !dbg !10978, !noalias !10797
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.747.i.i, i64 16, i1 false), !dbg !10978, !noalias !10797
  store i8 1, ptr %i.cu, align 8, !dbg !10922, !noalias !10764
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.645.i.i), !dbg !10922
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.747.i.i), !dbg !10922
  %i.fr = icmp eq i64 %.sroa.035.0.i.i, -2, !dbg !10864
  br i1 %i.fr, label %bb.bn, label %bb.bo, !dbg !10864

bb.bn:                                            ; preds = %bb.bm, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i), !dbg !10975
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i), !dbg !10975
  br label %bb.dp, !dbg !10864
end_hunk_0
begin_hunk_1_@_RNCNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing16output_otlp_grpc5starts_0B9_:bb.a
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 1704, !dbg !10996 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10802), !dbg !10996
  switch i8 %.pre.i23.i, label %default.unreachable60 [
    i8 0, label %bb.bw
    i8 1, label %bb.bz
    i8 2, label %bb.ca
    i8 3, label %bb.bx
  ], !dbg !10997

bb.bw:                                            ; preds = %bb.bv, %.thread.i52.i
  %i.gy = phi ptr [ %i.fv, %.thread.i52.i ], [ %i.ad, %bb.bv ] ; 2 uses
  %i.gz = phi ptr [ %i.fw, %.thread.i52.i ], [ %i.ac, %bb.bv ] ; 2 uses
  %i.ha = phi ptr [ %i.fx, %.thread.i52.i ], [ %.phi.trans.insert98.i, %bb.bv ] ; 2 uses
  %i.hb = phi ptr [ %i.fy, %.thread.i52.i ], [ %i.fu, %bb.bv ] ; 2 uses
  %i.hc = phi ptr [ %.sroa.8.0..sroa_idx.i53.i, %.thread.i52.i ], [ %.phi.trans.insert.i22.i, %bb.bv ] ; 2 uses
  %i.hd = phi ptr [ %i.gp, %.thread.i52.i ], [ %i.gx, %bb.bv ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10999, !noalias !10801
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 2248, !dbg !10999
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.he, i64 24, i1 false), !dbg !10999, !noalias !10801
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11000, !noalias !10801
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %i.a, ptr noundef nonnull align 8 dereferenceable(544) %i.hd, i64 544, i1 false), !dbg !11000, !noalias !10801
  %i.hf = invoke { ptr, ptr } @_RINvMNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10connectionNtB3_10Connection3newINtNtB5_9connector9ConnectorNtNtB7_13uds_connector12UdsConnectorEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(544) %i.a, i1 noundef zeroext false)
          to label %bb.by unwind label %bb.cl, !dbg !11001, !noalias !10803 ; 2 uses

bb.bx:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10997, !noalias !10801
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10997, !noalias !10801
  br label %bb.cb, !dbg !11002

bb.by:                                            ; preds = %bb.bw
  %i.hg = extractvalue { ptr, ptr } %i.hf, 0, !dbg !11003
  %i.hh = extractvalue { ptr, ptr } %i.hf, 1, !dbg !11003
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 2272, !dbg !11001
  store ptr %i.hg, ptr %i.hi, align 8, !dbg !11001, !noalias !10801
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 2280, !dbg !11001
  store ptr %i.hh, ptr %i.hj, align 8, !dbg !11001, !noalias !10801
  br label %bb.cb, !dbg !11002

.body.i.i26.i:                                    ; preds = %bb.cl, %bb.ck, %bb.cj, %bb.cc
  %i.hk = phi ptr [ %i.hq, %bb.cc ], [ %i.gy, %bb.cl ], [ %i.hq, %bb.ck ], [ %i.hq, %bb.cj ]
  %i.hl = phi ptr [ %i.hr, %bb.cc ], [ %i.gz, %bb.cl ], [ %i.hr, %bb.ck ], [ %i.hr, %bb.cj ]
  %i.hm = phi ptr [ %i.hs, %bb.cc ], [ %i.ha, %bb.cl ], [ %i.hs, %bb.ck ], [ %i.hs, %bb.cj ]
  %i.hn = phi ptr [ %i.ht, %bb.cc ], [ %i.hb, %bb.cl ], [ %i.ht, %bb.ck ], [ %i.ht, %bb.cj ]
  %i.ho = phi ptr [ %i.hu, %bb.cc ], [ %i.hc, %bb.cl ], [ %i.hu, %bb.ck ], [ %i.hu, %bb.cj ]
  %i.hp = phi ptr [ %i.hv, %bb.cc ], [ %i.hd, %bb.cl ], [ %i.hv, %bb.ck ], [ %i.hv, %bb.cj ]
  %.pn2.i.i27.i = phi { ptr, i32 } [ %i.hx, %bb.cc ], [ %i.ip, %bb.cl ], [ %i.ij, %bb.ck ], [ %i.ij, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11004, !noalias !10801
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11005, !noalias !10801
  store i8 2, ptr %i.ho, align 8, !dbg !10997, !noalias !10801
  br label %.body.i28.i, !dbg !10997

bb.bz:                                            ; preds = %bb.bv
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #29
          to label %.noexc.i48.i unwind label %bb.cn, !dbg !10997, !noalias !10799

.noexc.i48.i:                                     ; preds = %bb.bz
  unreachable, !dbg !10997

bb.ca:                                            ; preds = %bb.bv
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #29
          to label %.noexc12.i47.i unwind label %bb.cn, !dbg !10997, !noalias !10799

.noexc12.i47.i:                                   ; preds = %bb.ca
  unreachable, !dbg !10997

bb.cb:                                            ; preds = %bb.by, %bb.bx
  %i.hq = phi ptr [ %i.gy, %bb.by ], [ %i.ad, %bb.bx ] ; 10 uses
  %i.hr = phi ptr [ %i.gz, %bb.by ], [ %i.ac, %bb.bx ] ; 8 uses
  %i.hs = phi ptr [ %i.ha, %bb.by ], [ %.phi.trans.insert98.i, %bb.bx ] ; 9 uses
  %i.ht = phi ptr [ %i.hb, %bb.by ], [ %i.fu, %bb.bx ] ; 8 uses
  %i.hu = phi ptr [ %i.hc, %bb.by ], [ %.phi.trans.insert.i22.i, %bb.bx ] ; 5 uses
  %i.hv = phi ptr [ %i.hd, %bb.by ], [ %i.gx, %bb.bx ] ; 4 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 2272, !dbg !11002 ; 3 uses
  invoke void @_RNvXs0_NtNtCsdBNFPP92xfl_5tower4util5readyINtB5_12ReadyOneshotNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10connection10ConnectionINtNtCs74LoFwSioHw_4http7request7RequestNtNtB18_4body4BodyEENtNtNtCs3oUPovFnLWP_4core6future6future6Future4pollCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.hw, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.cd unwind label %bb.cc, !dbg !11002, !noalias !10799

bb.cc:                                            ; preds = %bb.cb
  %i.hx = landingpad { ptr, i32 }
          cleanup
  %.val5.i.i24.i = load ptr, ptr %i.hw, align 8, !dbg !11006, !noalias !10801, !noundef !786
  %i.hy = getelementptr i8, ptr %0, i64 2280, !dbg !11006
  %.val6.i.i25.i = load ptr, ptr %i.hy, align 8, !dbg !11006, !noalias !10801
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdBNFPP92xfl_5tower4util5ready12ReadyOneshotNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10connection10ConnectionINtNtCs74LoFwSioHw_4http7request7RequestNtNtB1B_4body4BodyEEECsbaWXNhtWAp9_11foundations(ptr %.val5.i.i24.i, ptr %.val6.i.i25.i) #27
          to label %.body.i.i26.i unwind label %bb.cm, !dbg !11006, !noalias !10804

bb.cd:                                            ; preds = %bb.cb
  %i.hz = load i64, ptr %i.f, align 8, !dbg !11002, !range !1033, !alias.scope !10802, !noalias !10798, !noundef !786 ; 2 uses
  %i.ia = icmp eq i64 %i.hz, 2, !dbg !11002
  br i1 %i.ia, label %.thread87.i, label %bb.ce, !dbg !11002

bb.ce:                                            ; preds = %bb.cd
  %.val.i.i34.i = load ptr, ptr %i.hw, align 8, !dbg !11006, !noalias !10801, !noundef !786 ; 4 uses
  %i.ib = getelementptr i8, ptr %0, i64 2280, !dbg !11006
  %.val4.i.i35.i = load ptr, ptr %i.ib, align 8, !dbg !11006, !noalias !10801 ; 6 uses
  %i.ic = icmp eq ptr %.val.i.i34.i, null, !dbg !11007
  br i1 %i.ic, label %bb.co, label %bb.cf, !dbg !11007

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i.i35.i) ]
  %i.id = load ptr, ptr %.val4.i.i35.i, align 8, !dbg !11008, !invariant.load !786, !noalias !10804 ; 2 uses
  %.not.i.i.i.i.i.i.i.i36.i = icmp eq ptr %i.id, null, !dbg !11008
  br i1 %.not.i.i.i.i.i.i.i.i36.i, label %bb.ch, label %bb.cg, !dbg !11008

bb.cg:                                            ; preds = %bb.cf
  invoke void %i.id(ptr noundef nonnull %.val.i.i34.i)
          to label %bb.ch unwind label %bb.cj, !dbg !11008, !noalias !10804

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.ie = getelementptr inbounds nuw i8, ptr %.val4.i.i35.i, i64 8, !dbg !11009
  %i.if = load i64, ptr %i.ie, align 8, !dbg !11009, !range !1009, !invariant.load !786, !noalias !10804 ; 2 uses
  %i.ig = icmp eq i64 %i.if, 0, !dbg !11010
  br i1 %i.ig, label %bb.co, label %bb.ci, !dbg !11010

bb.ci:                                            ; preds = %bb.ch
  %i.ih = getelementptr inbounds nuw i8, ptr %.val4.i.i35.i, i64 16, !dbg !11009
  %i.ii = load i64, ptr %i.ih, align 8, !dbg !11011, !range !1010, !invariant.load !786, !noalias !10804
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i34.i, i64 noundef range(i64 1, 0) %i.if, i64 noundef range(i64 1, 536870913) %i.ii) #19, !dbg !11012, !noalias !10804
  br label %bb.co, !dbg !11013

bb.cj:                                            ; preds = %bb.cg
  %i.ij = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.val4.i.i35.i, i64 8, !dbg !11014
  %i.il = load i64, ptr %i.ik, align 8, !dbg !11014, !range !1009, !invariant.load !786, !noalias !10804 ; 2 uses
  %i.im = icmp eq i64 %i.il, 0, !dbg !11015
  br i1 %i.im, label %.body.i.i26.i, label %bb.ck, !dbg !11015

bb.ck:                                            ; preds = %bb.cj
  %i.in = getelementptr inbounds nuw i8, ptr %.val4.i.i35.i, i64 16, !dbg !11014
  %i.io = load i64, ptr %i.in, align 8, !dbg !11016, !range !1010, !invariant.load !786, !noalias !10804
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i34.i, i64 noundef range(i64 1, 0) %i.il, i64 noundef range(i64 1, 536870913) %i.io) #19, !dbg !11017, !noalias !10804
  br label %.body.i.i26.i, !dbg !11018

bb.cl:                                            ; preds = %bb.bw
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i26.i

bb.cm:                                            ; preds = %bb.cc
  %i.iq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !10997, !noalias !10804
  unreachable, !dbg !10997

bb.cn:                                            ; preds = %bb.ca, %bb.bz
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %.body.i28.i, !dbg !11019

.body.i28.i:                                      ; preds = %bb.cn, %.body.i.i26.i
  %i.is = phi ptr [ %i.ad, %bb.cn ], [ %i.hk, %.body.i.i26.i ]
  %i.it = phi ptr [ %i.ac, %bb.cn ], [ %i.hl, %.body.i.i26.i ]
  %i.iu = phi ptr [ %.phi.trans.insert98.i, %bb.cn ], [ %i.hm, %.body.i.i26.i ]
  %i.iv = phi ptr [ %i.fu, %bb.cn ], [ %i.hn, %.body.i.i26.i ]
  %i.iw = phi ptr [ %i.gx, %bb.cn ], [ %i.hp, %.body.i.i26.i ]
  %eh.lpad-body.i29.i = phi { ptr, i32 } [ %i.ir, %bb.cn ], [ %.pn2.i.i27.i, %.body.i.i26.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !11019, !noalias !10798
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvMNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10connectionNtBH_10Connection7connectINtNtBJ_9connector9ConnectorNtNtBL_13uds_connector12UdsConnectorEE0ECsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %i.iw) #27
          to label %bb.cp unwind label %bb.cz, !dbg !10995, !noalias !10799

.thread87.i:                                      ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11002, !noalias !10801
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11002, !noalias !10801
  store i8 3, ptr %i.hu, align 8, !dbg !11020, !noalias !10801
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !11019, !noalias !10798
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !10996, !noalias !10798
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !10996, !noalias !10798
  store i8 3, ptr %i.hs, align 8, !dbg !11021, !noalias !10798
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.641.i.i), !dbg !11021
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.743.i.i), !dbg !11021
  br label %bb.dl, !dbg !10881

bb.co:                                            ; preds = %bb.ci, %bb.ch, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11004, !noalias !10801
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11005, !noalias !10801
  store i8 1, ptr %i.hu, align 8, !dbg !11020, !noalias !10801
  %.sroa.2.0..sroa_idx.i37.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !11022
  %.sroa.2.0.copyload.i38.i = load ptr, ptr %.sroa.2.0..sroa_idx.i37.i, align 8, !dbg !11022, !noalias !10798 ; 3 uses
  %.sroa.3.0..sroa_idx.i39.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !11022
  %.sroa.3.0.copyload.i40.i = load ptr, ptr %.sroa.3.0..sroa_idx.i39.i, align 8, !dbg !11022, !noalias !10798 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !11019, !noalias !10798
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvMNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10connectionNtBH_10Connection7connectINtNtBJ_9connector9ConnectorNtNtBL_13uds_connector12UdsConnectorEE0ECsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %i.hv)
          to label %bb.cr unwind label %bb.cq, !dbg !10995, !noalias !10799

bb.cp:                                            ; preds = %bb.cq, %.body.i28.i
  %i.ix = phi ptr [ %i.hq, %bb.cq ], [ %i.is, %.body.i28.i ]
  %i.iy = phi ptr [ %i.hr, %bb.cq ], [ %i.it, %.body.i28.i ]
  %i.iz = phi ptr [ %i.hs, %bb.cq ], [ %i.iu, %.body.i28.i ]
  %i.ja = phi ptr [ %i.ht, %bb.cq ], [ %i.iv, %.body.i28.i ]
  %.pn4.i30.i = phi { ptr, i32 } [ %i.jb, %bb.cq ], [ %eh.lpad-body.i29.i, %.body.i28.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !11023, !noalias !10798
  br label %bb.db, !dbg !11024

bb.cq:                                            ; preds = %bb.cs, %bb.co
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.cr:                                            ; preds = %bb.co
  %i.jc = trunc nuw i64 %i.hz to i1, !dbg !11025
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload.i38.i), "nonnull"(ptr %.sroa.3.0.copyload.i40.i) ]
  br i1 %i.jc, label %bb.cs, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10connection10ConnectionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB2V_4SyncEL_EE7map_errNtNtBQ_5error5ErrorINvMB3C_B3A_11from_sourceB20_EECsbaWXNhtWAp9_11foundations.exit.thread.i41.i, !dbg !11025

bb.cs:                                            ; preds = %bb.cr
  invoke void @_RINvMNtNtCsfUalJnHtWpm_5tonic9transport5errorNtB3_5Error11from_sourceINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtB1J_6marker4SendNtB2g_4SyncEL_EECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull %.sroa.2.0.copyload.i38.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.3.0.copyload.i40.i)
          to label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10connection10ConnectionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB2V_4SyncEL_EE7map_errNtNtBQ_5error5ErrorINvMB3C_B3A_11from_sourceB20_EECsbaWXNhtWAp9_11foundations.exit.i45.i unwind label %bb.cq, !dbg !11026, !noalias !10799

_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10connection10ConnectionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB2V_4SyncEL_EE7map_errNtNtBQ_5error5ErrorINvMB3C_B3A_11from_sourceB20_EECsbaWXNhtWAp9_11foundations.exit.i45.i: ; preds = %bb.cs
  %.phi.trans.insert64.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.pre65.i.i = load i8, ptr %.phi.trans.insert64.i.i, align 8, !dbg !11027, !range !1084, !alias.scope !10806, !noalias !10798 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10807), !dbg !10990
  %.not.i.i46.i = icmp eq i8 %.pre65.i.i, -1, !dbg !11027
  %.pre100.i = load ptr, ptr %i.g, align 8, !dbg !11028, !alias.scope !10808, !noalias !10798 ; 3 uses
  %.phi.trans.insert101.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.pre102.i = load ptr, ptr %.phi.trans.insert101.i, align 8, !dbg !11029, !alias.scope !10808, !noalias !10798 ; 3 uses
  br i1 %.not.i.i46.i, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10connection10ConnectionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB2V_4SyncEL_EE7map_errNtNtBQ_5error5ErrorINvMB3C_B3A_11from_sourceB20_EECsbaWXNhtWAp9_11foundations.exit.thread.i41.i, label %bb.dd, !dbg !11030

_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10connection10ConnectionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB2V_4SyncEL_EE7map_errNtNtBQ_5error5ErrorINvMB3C_B3A_11from_sourceB20_EECsbaWXNhtWAp9_11foundations.exit.thread.i41.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10connection10ConnectionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB2V_4SyncEL_EE7map_errNtNtBQ_5error5ErrorINvMB3C_B3A_11from_sourceB20_EECsbaWXNhtWAp9_11foundations.exit.i45.i, %bb.cr
  %i.jd = phi ptr [ %.sroa.3.0.copyload.i40.i, %bb.cr ], [ %.pre102.i, %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10connection10ConnectionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB2V_4SyncEL_EE7map_errNtNtBQ_5error5ErrorINvMB3C_B3A_11from_sourceB20_EECsbaWXNhtWAp9_11foundations.exit.i45.i ], !dbg !11028
  %i.je = phi ptr [ %.sroa.2.0.copyload.i38.i, %bb.cr ], [ %.pre100.i, %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10connection10ConnectionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB2V_4SyncEL_EE7map_errNtNtBQ_5error5ErrorINvMB3C_B3A_11from_sourceB20_EECsbaWXNhtWAp9_11foundations.exit.i45.i ], !dbg !11028
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !11023, !noalias !10798
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !11031, !noalias !10798
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 1680, !dbg !11032
  %i.jg = load i64, ptr %i.jf, align 8, !dbg !11032, !noalias !10798, !noundef !786
  invoke void @_RINvMNtNtCsdBNFPP92xfl_5tower6buffer7serviceINtB3_6BufferINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB2b_6future6future6Futurep6OutputINtNtB2b_6result6ResultINtNtBY_8response8ResponseB1x_EIB2D_DNtNtB2b_5error5ErrorNtNtB2b_6marker4SendNtB59_4SyncEL_EEB57_EL_EEE4pairNtNtNtNtNtB1B_9transport7channel7service10connection10ConnectionECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([384 x i8]) align 8 captures(none) dereferenceable(384) %i.c, ptr noundef nonnull %i.je, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.jd, i64 noundef %i.jg)
          to label %bb.cu unwind label %bb.ct, !dbg !11031, !noalias !10799

bb.ct:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10connection10ConnectionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB2V_4SyncEL_EE7map_errNtNtBQ_5error5ErrorINvMB3C_B3A_11from_sourceB20_EECsbaWXNhtWAp9_11foundations.exit.thread.i41.i
  %i.jh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11033, !noalias !10798
  br label %bb.db, !dbg !11034

bb.cu:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10connection10ConnectionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB2V_4SyncEL_EE7map_errNtNtBQ_5error5ErrorINvMB3C_B3A_11from_sourceB20_EECsbaWXNhtWAp9_11foundations.exit.thread.i41.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !11035, !noalias !10798
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !dbg !11035, !noalias !10798
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !11036, !noalias !10798
  %i.ji = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !11036
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %i.d, ptr noundef nonnull align 8 dereferenceable(336) %i.ji, i64 336, i1 false), !dbg !11036, !noalias !10798
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11033, !noalias !10798
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 1688, !dbg !11037 ; 3 uses
  invoke void @_RNvXs_NtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service8executorNtB4_10SharedExecINtNtCsaCYLheajBls_5hyper2rt8ExecutorINtNtNtCsdBNFPP92xfl_5tower6buffer6worker6WorkerNtNtB6_10connection10ConnectionINtNtCs74LoFwSioHw_4http7request7RequestNtNtBc_4body4BodyEEE7executeCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.jj, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(336) %i.d)
          to label %bb.cw unwind label %bb.cv, !dbg !11038, !noalias !10799

bb.cv:                                            ; preds = %bb.cu
  %i.jk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !11039, !noalias !10798
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdBNFPP92xfl_5tower6buffer7service6BufferINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB1t_8response8ResponseB22_EIB2S_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB5m_4SyncEL_EEB5k_EL_EEEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(48) %i.e) #27
          to label %bb.da unwind label %bb.cz, !dbg !11039, !noalias !10799

bb.cw:                                            ; preds = %bb.cu
  %.sroa.051.0.copyload.i.i = load i64, ptr %i.e, align 8, !dbg !11040, !noalias !10798 ; 2 uses
  %.sroa.452.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !11040
  %.sroa.452.0.copyload.i.i = load ptr, ptr %.sroa.452.0..sroa_idx.i.i, align 8, !dbg !11040, !noalias !10798 ; 2 uses
  %.sroa.553.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !11040
  %.sroa.553.0.copyload.i.i = load ptr, ptr %.sroa.553.0..sroa_idx.i.i, align 8, !dbg !11040, !noalias !10798 ; 2 uses
  %.sroa.654.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !11040
  %.sroa.654.0.copyload.i.i = load i8, ptr %.sroa.654.0..sroa_idx.i.i, align 8, !dbg !11040, !noalias !10798 ; 2 uses
  %.sroa.755.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 25, !dbg !11040
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.641.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.755.0..sroa_idx.i.i, i64 7, i1 false), !dbg !11040, !noalias !10798
  %.sroa.856.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !11040
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.743.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.856.0..sroa_idx.i.i, i64 16, i1 false), !dbg !11040, !noalias !10798
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !11039, !noalias !10798
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !11039, !noalias !10798
  call void @llvm.experimental.noalias.scope.decl(metadata !10809), !dbg !11041
  call void @llvm.experimental.noalias.scope.decl(metadata !10810), !dbg !11042
  call void @llvm.experimental.noalias.scope.decl(metadata !10811), !dbg !11043
  %i.jl = load ptr, ptr %i.jj, align 8, !dbg !11044, !alias.scope !10812, !noalias !10798, !nonnull !786, !noundef !786
  %i.jm = atomicrmw add ptr %i.jl, i64 -1 release, align 8, !dbg !11045, !noalias !10813
  %i.jn = icmp eq i64 %i.jm, 1, !dbg !11046
  br i1 %i.jn, label %bb.cx, label %bb.dk, !dbg !11046

bb.cx:                                            ; preds = %bb.cw
  fence acquire, !dbg !11047
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDINtNtCsaCYLheajBls_5hyper2rt8ExecutorINtNtCs3oUPovFnLWP_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1n_6future6future6Futurep6OutputuNtNtB1n_6marker4SendEL_EEEB2L_NtB2N_4SyncEL_E9drop_slowCsfUalJnHtWpm_5tonic(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.jj) #25
          to label %bb.dk unwind label %bb.cy, !dbg !11048, !noalias !10799

bb.cy:                                            ; preds = %bb.de, %bb.cx
  %i.jo = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service8executor10SharedExecECsbaWXNhtWAp9_11foundations.exit16.i32.i

bb.cz:                                            ; preds = %bb.di, %bb.dg, %bb.dc, %bb.cv, %.body.i28.i
  %i.jp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !10882, !noalias !10799
  unreachable, !dbg !10882

bb.da:                                            ; preds = %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !11039, !noalias !10798
  br label %bb.db, !dbg !11049

bb.db:                                            ; preds = %bb.da, %bb.ct, %bb.cp
  %i.jq = phi ptr [ %i.ix, %bb.cp ], [ %i.hq, %bb.da ], [ %i.hq, %bb.ct ] ; 2 uses
  %i.jr = phi ptr [ %i.iy, %bb.cp ], [ %i.hr, %bb.da ], [ %i.hr, %bb.ct ] ; 2 uses
  %i.js = phi ptr [ %i.iz, %bb.cp ], [ %i.hs, %bb.da ], [ %i.hs, %bb.ct ] ; 2 uses
  %i.jt = phi ptr [ %i.ja, %bb.cp ], [ %i.ht, %bb.da ], [ %i.ht, %bb.ct ] ; 2 uses
  %.pn6.pn.i31.i = phi { ptr, i32 } [ %.pn4.i30.i, %bb.cp ], [ %i.jk, %bb.da ], [ %i.jh, %bb.ct ] ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 1688, !dbg !11041 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10815), !dbg !11041
  call void @llvm.experimental.noalias.scope.decl(metadata !10816), !dbg !11050
  call void @llvm.experimental.noalias.scope.decl(metadata !10817), !dbg !11051
  %i.jv = load ptr, ptr %i.ju, align 8, !dbg !11052, !alias.scope !10818, !noalias !10798, !nonnull !786, !noundef !786
  %i.jw = atomicrmw add ptr %i.jv, i64 -1 release, align 8, !dbg !11053, !noalias !10819
  %i.jx = icmp eq i64 %i.jw, 1, !dbg !11054
  br i1 %i.jx, label %bb.dc, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service8executor10SharedExecECsbaWXNhtWAp9_11foundations.exit16.i32.i, !dbg !11054

bb.dc:                                            ; preds = %bb.db
  fence acquire, !dbg !11055
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDINtNtCsaCYLheajBls_5hyper2rt8ExecutorINtNtCs3oUPovFnLWP_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1n_6future6future6Futurep6OutputuNtNtB1n_6marker4SendEL_EEEB2L_NtB2N_4SyncEL_E9drop_slowCsfUalJnHtWpm_5tonic(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ju) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service8executor10SharedExecECsbaWXNhtWAp9_11foundations.exit16.i32.i unwind label %bb.cz, !dbg !11056, !noalias !10799

bb.dd:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10connection10ConnectionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB2V_4SyncEL_EE7map_errNtNtBQ_5error5ErrorINvMB3C_B3A_11from_sourceB20_EECsbaWXNhtWAp9_11foundations.exit.i45.i
  %.sroa.14.0..sroa_idx24.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 17, !dbg !11057
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.641.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.14.0..sroa_idx24.i.i, i64 7, i1 false), !dbg !11057, !noalias !10798
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !11023, !noalias !10798
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 1688, !dbg !11041 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10820), !dbg !11041
  call void @llvm.experimental.noalias.scope.decl(metadata !10821), !dbg !11058
  call void @llvm.experimental.noalias.scope.decl(metadata !10822), !dbg !11059
  %i.jz = load ptr, ptr %i.jy, align 8, !dbg !11060, !alias.scope !10823, !noalias !10798, !nonnull !786, !noundef !786
  %i.ka = atomicrmw add ptr %i.jz, i64 -1 release, align 8, !dbg !11061, !noalias !10824
  %i.kb = icmp eq i64 %i.ka, 1, !dbg !11062
  br i1 %i.kb, label %bb.de, label %bb.dk, !dbg !11062

bb.de:                                            ; preds = %bb.dd
  fence acquire, !dbg !11063
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDINtNtCsaCYLheajBls_5hyper2rt8ExecutorINtNtCs3oUPovFnLWP_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1n_6future6future6Futurep6OutputuNtNtB1n_6marker4SendEL_EEEB2L_NtB2N_4SyncEL_E9drop_slowCsfUalJnHtWpm_5tonic(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.jy) #25
          to label %bb.dk unwind label %bb.cy, !dbg !11064, !noalias !10799

bb.df:                                            ; preds = %bb.dg, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service8executor10SharedExecECsbaWXNhtWAp9_11foundations.exit16.i32.i
  store i8 0, ptr %i.gu, align 1, !dbg !10998, !noalias !10798
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 2298, !dbg !11065 ; 2 uses
  %i.kd = load i8, ptr %i.kc, align 2, !dbg !11065, !range !1053, !noalias !10798, !noundef !786
  %i.ke = trunc nuw i8 %i.kd to i1, !dbg !11065
  br i1 %i.ke, label %bb.di, label %bb.dh, !dbg !11065

bb.dg:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service8executor10SharedExecECsbaWXNhtWAp9_11foundations.exit16.i32.i
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 1136, !dbg !10998
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel8endpoint8EndpointECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(544) %i.kf) #27
          to label %bb.df unwind label %bb.cz, !dbg !10998, !noalias !10799

bb.dh:                                            ; preds = %bb.di, %bb.df
  store i8 0, ptr %i.kc, align 2, !dbg !11065, !noalias !10798
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !11065, !noalias !10798
  store i8 2, ptr %i.gs, align 8, !dbg !10882, !noalias !10798
  br label %.body56.i, !dbg !10882

bb.di:                                            ; preds = %bb.df
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service9connector9ConnectorNtNtBI_13uds_connector12UdsConnectorEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #27
          to label %bb.dh unwind label %bb.cz, !dbg !11065, !noalias !10799

bb.dj:                                            ; preds = %bb.bu, %bb.bt
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %.body56.i, !dbg !11066

.body56.i:                                        ; preds = %bb.dj, %bb.dh
  %i.kh = phi ptr [ %i.ad, %bb.dj ], [ %i.gq, %bb.dh ]
  %i.ki = phi ptr [ %i.ac, %bb.dj ], [ %i.gr, %bb.dh ]
  %i.kj = phi ptr [ %i.fu, %bb.dj ], [ %i.gt, %bb.dh ]
  %eh.lpad-body57.i = phi { ptr, i32 } [ %i.kg, %bb.dj ], [ %.pn9.i33.i, %bb.dh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1175.i), !dbg !11066
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1276.i), !dbg !11066
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvMNtNtCsfUalJnHtWpm_5tonic9transport7channelNtBH_7Channel7connectINtNtNtBH_7service9connector9ConnectorNtNtBH_13uds_connector12UdsConnectorEE0ECsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %i.kj) #27
          to label %bb.bp unwind label %bb.k, !dbg !10871, !noalias !10750

bb.dk:                                            ; preds = %bb.de, %bb.dd, %bb.cx, %bb.cw
  %.sroa.031.0.i.i = phi i64 [ -1, %bb.de ], [ -1, %bb.dd ], [ %.sroa.051.0.copyload.i.i, %bb.cw ], [ %.sroa.051.0.copyload.i.i, %bb.cx ], !dbg !11067 ; 2 uses
  %.sroa.333.0.i.i = phi ptr [ %.pre100.i, %bb.de ], [ %.pre100.i, %bb.dd ], [ %.sroa.452.0.copyload.i.i, %bb.cw ], [ %.sroa.452.0.copyload.i.i, %bb.cx ], !dbg !11067
  %.sroa.4.0.i43.i = phi ptr [ %.pre102.i, %bb.de ], [ %.pre102.i, %bb.dd ], [ %.sroa.553.0.copyload.i.i, %bb.cw ], [ %.sroa.553.0.copyload.i.i, %bb.cx ], !dbg !11067
  %.sroa.538.0.i.i = phi i8 [ %.pre65.i.i, %bb.de ], [ %.pre65.i.i, %bb.dd ], [ %.sroa.654.0.copyload.i.i, %bb.cw ], [ %.sroa.654.0.copyload.i.i, %bb.cx ], !dbg !11067
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 2297, !dbg !10998
  store i8 0, ptr %i.kk, align 1, !dbg !10998, !noalias !10798
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 2298, !dbg !11065
  store i8 0, ptr %i.kl, align 2, !dbg !11065, !noalias !10798
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !11065, !noalias !10798
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.1175.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.641.i.i, i64 7, i1 false), !dbg !11068, !noalias !10825
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1276.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.743.i.i, i64 16, i1 false), !dbg !11068, !noalias !10825
  store i8 1, ptr %i.hs, align 8, !dbg !11021, !noalias !10798
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.641.i.i), !dbg !11021
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.743.i.i), !dbg !11021
  %i.km = icmp eq i64 %.sroa.031.0.i.i, -2, !dbg !10881
  br i1 %i.km, label %bb.dl, label %bb.dm, !dbg !10881

bb.dl:                                            ; preds = %bb.dk, %.thread87.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1175.i), !dbg !11066
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1276.i), !dbg !11066
  br label %bb.dp, !dbg !10881

bb.dm:                                            ; preds = %bb.dk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.980.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.1175.i, i64 7, i1 false), !dbg !11069, !noalias !10749
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1181.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1276.i, i64 16, i1 false), !dbg !11069, !noalias !10749
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1175.i), !dbg !11066
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1276.i), !dbg !11066
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvMNtNtCsfUalJnHtWpm_5tonic9transport7channelNtBH_7Channel7connectINtNtNtBH_7service9connector9ConnectorNtNtBH_13uds_connector12UdsConnectorEE0ECsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %i.ht)
          to label %bb.ds unwind label %bb.dn, !dbg !10871, !noalias !10750

bb.dn:                                            ; preds = %bb.bo, %bb.dm
  %i.kn = phi ptr [ %i.cs, %bb.bo ], [ %i.hq, %bb.dm ]
end_hunk_1
begin_hunk_2_@_RNCNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing16output_otlp_grpc5starts_0B9_:bb.a
bb.ej:                                            ; preds = %bb.et, %bb.em, %bb.eb, %bb.dz, %.body
  %i.lq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !10849
  unreachable, !dbg !10849

bb.ek:                                            ; preds = %bb.dy, %bb.el
  %.sroa.05.1 = phi ptr [ %i.ky, %bb.el ], [ %i.le, %bb.dy ], !dbg !11072 ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel8endpoint8EndpointECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(544) %0)
          to label %bb.en unwind label %bb.em, !dbg !11090

bb.el:                                            ; preds = %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !11074
  br label %bb.ek, !dbg !11075

bb.em:                                            ; preds = %bb.ek
  %i.lr = landingpad { ptr, i32 }
          cleanup
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 544, !dbg !11090
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs3zuhHmEJ01l_5tokio4sync9broadcast6SenderNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(8) %i.ls) #27
          to label %.body25 unwind label %bb.ej, !dbg !11090

bb.en:                                            ; preds = %bb.ek
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 544, !dbg !11090 ; 5 uses
  invoke void @_RNvXs6_NtNtCs3zuhHmEJ01l_5tokio4sync9broadcastINtB5_6SenderNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.lt)
          to label %bb.eq unwind label %bb.eo, !dbg !11105

bb.eo:                                            ; preds = %bb.en
  %i.lu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10841), !dbg !11105
  call void @llvm.experimental.noalias.scope.decl(metadata !10842), !dbg !11106
  %i.lv = load ptr, ptr %i.lt, align 8, !dbg !11107, !alias.scope !10843, !nonnull !786, !noundef !786
  %i.lw = atomicrmw add ptr %i.lv, i64 -1 release, align 8, !dbg !11108, !noalias !10844
  %i.lx = icmp eq i64 %i.lw, 1, !dbg !11109
  br i1 %i.lx, label %bb.ep, label %.body25, !dbg !11109

bb.ep:                                            ; preds = %bb.eo
  fence acquire, !dbg !11110
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCs3zuhHmEJ01l_5tokio4sync9broadcast6SharedNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelEE9drop_slowCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.lt) #25
          to label %.body25 unwind label %bb.es, !dbg !11111

bb.eq:                                            ; preds = %bb.en
  call void @llvm.experimental.noalias.scope.decl(metadata !10845), !dbg !11105
  call void @llvm.experimental.noalias.scope.decl(metadata !10846), !dbg !11112
  %i.ly = load ptr, ptr %i.lt, align 8, !dbg !11113, !alias.scope !10847, !nonnull !786, !noundef !786
  %i.lz = atomicrmw add ptr %i.ly, i64 -1 release, align 8, !dbg !11114, !noalias !10848
  %i.ma = icmp eq i64 %i.lz, 1, !dbg !11115
  br i1 %i.ma, label %bb.er, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs3zuhHmEJ01l_5tokio4sync9broadcast6SenderNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelEECsbaWXNhtWAp9_11foundations.exit, !dbg !11115

bb.er:                                            ; preds = %bb.eq
  fence acquire, !dbg !11116
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCs3zuhHmEJ01l_5tokio4sync9broadcast6SharedNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelEE9drop_slowCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.lt) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs3zuhHmEJ01l_5tokio4sync9broadcast6SenderNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelEECsbaWXNhtWAp9_11foundations.exit unwind label %bb.ei, !dbg !11117

bb.es:                                            ; preds = %bb.ep
  %i.mb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !11105
  unreachable, !dbg !11105

bb.et:                                            ; preds = %bb.dz
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 544, !dbg !11090
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs3zuhHmEJ01l_5tokio4sync9broadcast6SenderNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(8) %i.mc) #27
          to label %.body25 unwind label %bb.ej, !dbg !11090
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs_NtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10add_originINtB6_9AddOriginINtNtB8_10user_agent9UserAgentINtNtNtBc_7service12grpc_timeout11GrpcTimeoutINtNtNtCsdBNFPP92xfl_5tower4util6either6EitherINtNtNtNtB2K_5limit11concurrency7service16ConcurrencyLimitIB2E_INtNtNtB3u_4rate7service9RateLimitINtNtB8_9reconnect9ReconnectINtNtB8_10connection22MakeSendRequestServiceINtNtB8_9connector9ConnectorNtNtBa_13uds_connector12UdsConnectorEENtNtCs74LoFwSioHw_4http3uri3UriEEB4W_EEB4j_EEEEINtCs694hLx9Nhnx_13tower_service7ServiceINtNtB7e_7request7RequestNtNtBe_4body4BodyEE4call0CsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr nofree noundef nonnull align 8 captures(none) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !11118 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !11120 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !dbg !11120, !range !1052, !noundef !786
  switch i8 %i.c, label %default.unreachable3 [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.e
  ], !dbg !11120

default.unreachable3:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11121
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !11121
  %i.d = invoke { ptr, ptr } @_RNvXse_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtB7_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtNtCsfUalJnHtWpm_5tonic9transport5error5ErrorE4fromCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %_RNvXs1_NtCs3oUPovFnLWP_4core7convertNtNtNtCsfUalJnHtWpm_5tonic9transport5error5ErrorINtB5_4IntoINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB2q_4SyncEL_EE4intoCsbaWXNhtWAp9_11foundations.exit unwind label %bb.c, !dbg !11122 ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11123
  store i8 2, ptr %i.b, align 8, !dbg !11120
  resume { ptr, i32 } %i.e, !dbg !11120

_RNvXs1_NtCs3oUPovFnLWP_4core7convertNtNtNtCsfUalJnHtWpm_5tonic9transport5error5ErrorINtB5_4IntoINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB2q_4SyncEL_EE4intoCsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.b
  %i.f = extractvalue { ptr, ptr } %i.d, 0, !dbg !11121
  %i.g = extractvalue { ptr, ptr } %i.d, 1, !dbg !11121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11123
  store i64 -1, ptr %0, align 8, !dbg !11124
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11124
  store ptr %i.f, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !11124
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11124
  store ptr %i.g, ptr %.sroa.3.0..sroa_idx, align 8, !dbg !11124
  store i8 1, ptr %i.b, align 8, !dbg !11124
  ret void, !dbg !11124

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #29, !dbg !11120
  unreachable, !dbg !11120

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #29, !dbg !11120
  unreachable, !dbg !11120
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs_NtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10add_originINtB6_9AddOriginINtNtB8_10user_agent9UserAgentINtNtNtBc_7service12grpc_timeout11GrpcTimeoutINtNtNtCsdBNFPP92xfl_5tower4util6either6EitherINtNtNtNtB2K_5limit11concurrency7service16ConcurrencyLimitIB2E_INtNtNtB3u_4rate7service9RateLimitINtNtB8_9reconnect9ReconnectINtNtB8_10connection22MakeSendRequestServiceINtNtB8_9connector9ConnectorNtNtBa_13uds_connector12UdsConnectorEENtNtCs74LoFwSioHw_4http3uri3UriEEB4W_EEB4j_EEEEINtCs694hLx9Nhnx_13tower_service7ServiceINtNtB7e_7request7RequestNtNtBe_4body4BodyEE4calls_0CsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !11125 {
bb.a:
  %.sroa.7 = alloca [104 x i8], align 8           ; 2 uses
  %.sroa.5 = alloca [104 x i8], align 8           ; 2 uses
  %i.a = alloca [128 x i8], align 8               ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 288, !dbg !11132 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !dbg !11132, !range !1098, !noundef !786
  switch i8 %i.c, label %default.unreachable13 [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
  ], !dbg !11132

default.unreachable13:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 144, !dbg !11133
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.d, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 144, i1 false), !dbg !11133
  br label %bb.f, !dbg !11134

bb.c:                                             ; preds = %bb.k, %bb.g
  %.pn2 = phi { ptr, i32 } [ %i.j, %bb.k ], [ %i.f, %bb.g ]
  store i8 2, ptr %i.b, align 8, !dbg !11132
  resume { ptr, i32 } %.pn2, !dbg !11132

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #29, !dbg !11132
  unreachable, !dbg !11132

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #29, !dbg !11132
  unreachable, !dbg !11132

bb.f:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11134
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 144, !dbg !11134 ; 3 uses
  invoke void @_RNvXs0_NtNtNtCsfUalJnHtWpm_5tonic9transport7service12grpc_timeoutINtB5_14ResponseFutureINtNtNtCsdBNFPP92xfl_5tower4util6either20EitherResponseFutureINtNtNtNtB1u_5limit11concurrency6future14ResponseFutureIB1o_INtNtNtNtB9_7channel7service9reconnect14ResponseFutureINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB4h_6future6future6Futurep6OutputINtNtB4h_6result6ResultINtNtCs74LoFwSioHw_4http8response8ResponseNtNtBb_4body4BodyEIB4J_DNtNtB4h_5error5ErrorNtNtB4h_6marker4SendNtB7I_4SyncEL_EEB7G_EL_EEEB3k_EEB3f_EEB5i_4pollCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.a, ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.h unwind label %bb.g, !dbg !11134

bb.g:                                             ; preds = %bb.f
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11135
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsfUalJnHtWpm_5tonic9transport7service12grpc_timeout14ResponseFutureINtNtNtCsdBNFPP92xfl_5tower4util6either20EitherResponseFutureINtNtNtNtB1X_5limit11concurrency6future14ResponseFutureIB1R_INtNtNtNtBI_7channel7service9reconnect14ResponseFutureINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtCs74LoFwSioHw_4http8response8ResponseNtNtBK_4body4BodyEIB4W_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB7S_4SyncEL_EEB7Q_EL_EEEB3N_EEB3I_EEECsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %i.e) #27
          to label %bb.c unwind label %bb.o, !dbg !11136

bb.h:                                             ; preds = %bb.f
  %i.g = load i64, ptr %i.a, align 8, !dbg !11134, !range !1032, !noundef !786 ; 3 uses
  %i.h = icmp eq i64 %i.g, -2, !dbg !11134
  br i1 %i.h, label %bb.i, label %bb.j, !dbg !11134

common.ret:                                       ; preds = %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultINtNtCs74LoFwSioHw_4http8response8ResponseNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB2S_4SyncEL_EE7map_errB1X_NvYB1X_INtNtB5_7convert4IntoB1X_E4intoECsbaWXNhtWAp9_11foundations.exit, %bb.i
  %storemerge = phi i8 [ 1, %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultINtNtCs74LoFwSioHw_4http8response8ResponseNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB2S_4SyncEL_EE7map_errB1X_NvYB1X_INtNtB5_7convert4IntoB1X_E4intoECsbaWXNhtWAp9_11foundations.exit ], [ 3, %bb.i ], !dbg !11137
  store i8 %storemerge, ptr %i.b, align 8, !dbg !11137
  ret void, !dbg !11137

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11135
  store i64 -2, ptr %0, align 8, !dbg !11134
  br label %common.ret, !dbg !11134

bb.j:                                             ; preds = %bb.h
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !11138
  %i.i = load <2 x ptr>, ptr %.sroa.3.0..sroa_idx, align 8, !dbg !11138 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !11138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.0..sroa_idx, i64 104, i1 false), !dbg !11138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11135
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsfUalJnHtWpm_5tonic9transport7service12grpc_timeout14ResponseFutureINtNtNtCsdBNFPP92xfl_5tower4util6either20EitherResponseFutureINtNtNtNtB1X_5limit11concurrency6future14ResponseFutureIB1R_INtNtNtNtBI_7channel7service9reconnect14ResponseFutureINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtCs74LoFwSioHw_4http8response8ResponseNtNtBK_4body4BodyEIB4W_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB7S_4SyncEL_EEB7Q_EL_EEEB3N_EEB3I_EEECsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %i.e)
          to label %bb.l unwind label %bb.k, !dbg !11136

bb.k:                                             ; preds = %bb.j
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.l:                                             ; preds = %bb.j
  %i.k = icmp eq i64 %i.g, -1, !dbg !11139
  br i1 %i.k, label %bb.m, label %bb.n, !dbg !11140

bb.m:                                             ; preds = %bb.l
  %i.l = extractelement <2 x ptr> %i.i, i64 0
  %i.m = extractelement <2 x ptr> %i.i, i64 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l), "nonnull"(ptr %i.m) ]
  br label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultINtNtCs74LoFwSioHw_4http8response8ResponseNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB2S_4SyncEL_EE7map_errB1X_NvYB1X_INtNtB5_7convert4IntoB1X_E4intoECsbaWXNhtWAp9_11foundations.exit, !dbg !11141

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5, i64 104, i1 false), !dbg !11142, !alias.scope !11131
  br label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultINtNtCs74LoFwSioHw_4http8response8ResponseNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB2S_4SyncEL_EE7map_errB1X_NvYB1X_INtNtB5_7convert4IntoB1X_E4intoECsbaWXNhtWAp9_11foundations.exit, !dbg !11143

_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultINtNtCs74LoFwSioHw_4http8response8ResponseNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB2S_4SyncEL_EE7map_errB1X_NvYB1X_INtNtB5_7convert4IntoB1X_E4intoECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.n, %bb.m
  store i64 %i.g, ptr %0, align 8, !dbg !11144
  %.sroa.311.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11144
  store <2 x ptr> %i.i, ptr %.sroa.311.0..sroa_idx, align 8, !dbg !11144
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !11144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.7, i64 104, i1 false), !dbg !11144
  br label %common.ret, !dbg !11144

bb.o:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !11132
  unreachable, !dbg !11132
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs_NtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10add_originINtB6_9AddOriginINtNtB8_10user_agent9UserAgentINtNtNtBc_7service12grpc_timeout11GrpcTimeoutINtNtNtCsdBNFPP92xfl_5tower4util6either6EitherINtNtNtNtB2K_5limit11concurrency7service16ConcurrencyLimitIB2E_INtNtNtB3u_4rate7service9RateLimitINtNtB8_9reconnect9ReconnectINtNtB8_10connection22MakeSendRequestServiceINtNtB8_9connector9ConnectorNtNtNtNtNtCsgrxNvLvgM5Z_10hyper_util6client6legacy7connect4http13HttpConnectorEENtNtCs74LoFwSioHw_4http3uri3UriEEB4W_EEB4j_EEEEINtCs694hLx9Nhnx_13tower_service7ServiceINtNtB7U_7request7RequestNtNtBe_4body4BodyEE4call0CsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr nofree noundef nonnull align 8 captures(none) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !11145 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !11147 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !dbg !11147, !range !1052, !noundef !786
  switch i8 %i.c, label %default.unreachable3 [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.e
  ], !dbg !11147

default.unreachable3:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11148
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !11148
  %i.d = invoke { ptr, ptr } @_RNvXse_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtB7_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtNtCsfUalJnHtWpm_5tonic9transport5error5ErrorE4fromCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %_RNvXs1_NtCs3oUPovFnLWP_4core7convertNtNtNtCsfUalJnHtWpm_5tonic9transport5error5ErrorINtB5_4IntoINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB2q_4SyncEL_EE4intoCsbaWXNhtWAp9_11foundations.exit unwind label %bb.c, !dbg !11149 ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11150
  store i8 2, ptr %i.b, align 8, !dbg !11147
  resume { ptr, i32 } %i.e, !dbg !11147

_RNvXs1_NtCs3oUPovFnLWP_4core7convertNtNtNtCsfUalJnHtWpm_5tonic9transport5error5ErrorINtB5_4IntoINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB2q_4SyncEL_EE4intoCsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.b
  %i.f = extractvalue { ptr, ptr } %i.d, 0, !dbg !11148
  %i.g = extractvalue { ptr, ptr } %i.d, 1, !dbg !11148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11150
  store i64 -1, ptr %0, align 8, !dbg !11151
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11151
  store ptr %i.f, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !11151
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11151
  store ptr %i.g, ptr %.sroa.3.0..sroa_idx, align 8, !dbg !11151
  store i8 1, ptr %i.b, align 8, !dbg !11151
  ret void, !dbg !11151

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #29, !dbg !11147
  unreachable, !dbg !11147

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #29, !dbg !11147
  unreachable, !dbg !11147
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs_NtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service10add_originINtB6_9AddOriginINtNtB8_10user_agent9UserAgentINtNtNtBc_7service12grpc_timeout11GrpcTimeoutINtNtNtCsdBNFPP92xfl_5tower4util6either6EitherINtNtNtNtB2K_5limit11concurrency7service16ConcurrencyLimitIB2E_INtNtNtB3u_4rate7service9RateLimitINtNtB8_9reconnect9ReconnectINtNtB8_10connection22MakeSendRequestServiceINtNtB8_9connector9ConnectorNtNtNtNtNtCsgrxNvLvgM5Z_10hyper_util6client6legacy7connect4http13HttpConnectorEENtNtCs74LoFwSioHw_4http3uri3UriEEB4W_EEB4j_EEEEINtCs694hLx9Nhnx_13tower_service7ServiceINtNtB7U_7request7RequestNtNtBe_4body4BodyEE4calls_0CsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !11152 {
bb.a:
  %.sroa.7 = alloca [104 x i8], align 8           ; 2 uses
  %.sroa.5 = alloca [104 x i8], align 8           ; 2 uses
  %i.a = alloca [128 x i8], align 8               ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 288, !dbg !11159 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !dbg !11159, !range !1098, !noundef !786
  switch i8 %i.c, label %default.unreachable13 [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
  ], !dbg !11159

default.unreachable13:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 144, !dbg !11160
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.d, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 144, i1 false), !dbg !11160
  br label %bb.f, !dbg !11161

bb.c:                                             ; preds = %bb.k, %bb.g
  %.pn2 = phi { ptr, i32 } [ %i.j, %bb.k ], [ %i.f, %bb.g ]
  store i8 2, ptr %i.b, align 8, !dbg !11159
  resume { ptr, i32 } %.pn2, !dbg !11159

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #29, !dbg !11159
  unreachable, !dbg !11159

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #29, !dbg !11159
  unreachable, !dbg !11159

bb.f:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11161
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 144, !dbg !11161 ; 3 uses
  invoke void @_RNvXs0_NtNtNtCsfUalJnHtWpm_5tonic9transport7service12grpc_timeoutINtB5_14ResponseFutureINtNtNtCsdBNFPP92xfl_5tower4util6either20EitherResponseFutureINtNtNtNtB1u_5limit11concurrency6future14ResponseFutureIB1o_INtNtNtNtB9_7channel7service9reconnect14ResponseFutureINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB4h_6future6future6Futurep6OutputINtNtB4h_6result6ResultINtNtCs74LoFwSioHw_4http8response8ResponseNtNtBb_4body4BodyEIB4J_DNtNtB4h_5error5ErrorNtNtB4h_6marker4SendNtB7I_4SyncEL_EEB7G_EL_EEEB3k_EEB3f_EEB5i_4pollCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.a, ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.h unwind label %bb.g, !dbg !11161

bb.g:                                             ; preds = %bb.f
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11162
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsfUalJnHtWpm_5tonic9transport7service12grpc_timeout14ResponseFutureINtNtNtCsdBNFPP92xfl_5tower4util6either20EitherResponseFutureINtNtNtNtB1X_5limit11concurrency6future14ResponseFutureIB1R_INtNtNtNtBI_7channel7service9reconnect14ResponseFutureINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtCs74LoFwSioHw_4http8response8ResponseNtNtBK_4body4BodyEIB4W_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB7S_4SyncEL_EEB7Q_EL_EEEB3N_EEB3I_EEECsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %i.e) #27
          to label %bb.c unwind label %bb.o, !dbg !11163

bb.h:                                             ; preds = %bb.f
  %i.g = load i64, ptr %i.a, align 8, !dbg !11161, !range !1032, !noundef !786 ; 3 uses
  %i.h = icmp eq i64 %i.g, -2, !dbg !11161
  br i1 %i.h, label %bb.i, label %bb.j, !dbg !11161

common.ret:                                       ; preds = %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultINtNtCs74LoFwSioHw_4http8response8ResponseNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB2S_4SyncEL_EE7map_errB1X_NvYB1X_INtNtB5_7convert4IntoB1X_E4intoECsbaWXNhtWAp9_11foundations.exit, %bb.i
  %storemerge = phi i8 [ 1, %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultINtNtCs74LoFwSioHw_4http8response8ResponseNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB2S_4SyncEL_EE7map_errB1X_NvYB1X_INtNtB5_7convert4IntoB1X_E4intoECsbaWXNhtWAp9_11foundations.exit ], [ 3, %bb.i ], !dbg !11164
  store i8 %storemerge, ptr %i.b, align 8, !dbg !11164
  ret void, !dbg !11164

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11162
  store i64 -2, ptr %0, align 8, !dbg !11161
  br label %common.ret, !dbg !11161

bb.j:                                             ; preds = %bb.h
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !11165
  %i.i = load <2 x ptr>, ptr %.sroa.3.0..sroa_idx, align 8, !dbg !11165 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !11165
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.0..sroa_idx, i64 104, i1 false), !dbg !11165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11162
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsfUalJnHtWpm_5tonic9transport7service12grpc_timeout14ResponseFutureINtNtNtCsdBNFPP92xfl_5tower4util6either20EitherResponseFutureINtNtNtNtB1X_5limit11concurrency6future14ResponseFutureIB1R_INtNtNtNtBI_7channel7service9reconnect14ResponseFutureINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtCs74LoFwSioHw_4http8response8ResponseNtNtBK_4body4BodyEIB4W_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB7S_4SyncEL_EEB7Q_EL_EEEB3N_EEB3I_EEECsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %i.e)
          to label %bb.l unwind label %bb.k, !dbg !11163

bb.k:                                             ; preds = %bb.j
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.l:                                             ; preds = %bb.j
  %i.k = icmp eq i64 %i.g, -1, !dbg !11166
  br i1 %i.k, label %bb.m, label %bb.n, !dbg !11167

bb.m:                                             ; preds = %bb.l
  %i.l = extractelement <2 x ptr> %i.i, i64 0
  %i.m = extractelement <2 x ptr> %i.i, i64 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l), "nonnull"(ptr %i.m) ]
  br label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultINtNtCs74LoFwSioHw_4http8response8ResponseNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB2S_4SyncEL_EE7map_errB1X_NvYB1X_INtNtB5_7convert4IntoB1X_E4intoECsbaWXNhtWAp9_11foundations.exit, !dbg !11168

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5, i64 104, i1 false), !dbg !11169, !alias.scope !11158
  br label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultINtNtCs74LoFwSioHw_4http8response8ResponseNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB2S_4SyncEL_EE7map_errB1X_NvYB1X_INtNtB5_7convert4IntoB1X_E4intoECsbaWXNhtWAp9_11foundations.exit, !dbg !11170

_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultINtNtCs74LoFwSioHw_4http8response8ResponseNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB2S_4SyncEL_EE7map_errB1X_NvYB1X_INtNtB5_7convert4IntoB1X_E4intoECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.n, %bb.m
  store i64 %i.g, ptr %0, align 8, !dbg !11171
  %.sroa.311.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11171
  store <2 x ptr> %i.i, ptr %.sroa.311.0..sroa_idx, align 8, !dbg !11171
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !11171
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.7, i64 104, i1 false), !dbg !11171
  br label %common.ret, !dbg !11171

bb.o:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !11159
  unreachable, !dbg !11159
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNCNvXsb_NtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc4chanINtBa_2RxppENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop0INtB2_5GuardINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtBc_7bounded9SemaphoreE5drainCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11172 {
bb.a:
  %i.a = alloca [224 x i8], align 8               ; 12 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !786, !align !806, !noundef !786 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !786, !align !806, !noundef !786 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11184
  call void @_RNvMs0_NtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc4listINtB5_2RxINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEE3popCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([224 x i8]) align 8 captures(address) dereferenceable(224) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.d), !dbg !11185
  %i.e = load i64, ptr %i.a, align 8, !dbg !11184, !range !1078, !noundef !786
  %switch5 = icmp ugt i64 %i.e, -3, !dbg !11186
  br i1 %switch5, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5block4ReadINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEEECsbaWXNhtWAp9_11foundations.exit, label %.lr.ph, !dbg !11186

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !786, !align !806, !noundef !786
  br label %bb.b, !dbg !11186

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5block4ReadINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEEECsbaWXNhtWAp9_11foundations.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5block4ReadINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEEECsbaWXNhtWAp9_11foundations.exit4, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11187
  ret void, !dbg !11188

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5block4ReadINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEEECsbaWXNhtWAp9_11foundations.exit4
  invoke void @_RNvXse_NtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc4chanNtNtB7_7bounded9SemaphoreNtB5_9Semaphore10add_permit(ptr noundef nonnull align 8 %i.g)
          to label %bb.e unwind label %bb.c, !dbg !11189

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load i64, ptr %i.a, align 8, !dbg !11190, !range !1078, !alias.scope !11182, !noundef !786
  %switch.i1 = icmp ugt i64 %i.i, -3, !dbg !11190
  br i1 %switch.i1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5block4ReadINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEEECsbaWXNhtWAp9_11foundations.exit2, label %bb.d, !dbg !11190

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5block4ReadINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEEECsbaWXNhtWAp9_11foundations.exit2 unwind label %bb.g, !dbg !11191

bb.e:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.a, align 8, !dbg !11192, !range !1078, !alias.scope !11183, !noundef !786
  %switch.i3 = icmp ugt i64 %i.j, -3, !dbg !11192
  br i1 %switch.i3, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5block4ReadINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEEECsbaWXNhtWAp9_11foundations.exit4, label %bb.f, !dbg !11192

bb.f:                                             ; preds = %bb.e
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %i.a), !dbg !11193
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5block4ReadINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEEECsbaWXNhtWAp9_11foundations.exit4, !dbg !11193

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5block4ReadINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEEECsbaWXNhtWAp9_11foundations.exit4: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11184
  call void @_RNvMs0_NtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc4listINtB5_2RxINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEE3popCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([224 x i8]) align 8 captures(address) dereferenceable(224) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.d), !dbg !11185
  %i.k = load i64, ptr %i.a, align 8, !dbg !11184, !range !1078, !noundef !786
  %switch = icmp ugt i64 %i.k, -3, !dbg !11186
  br i1 %switch, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5block4ReadINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEEECsbaWXNhtWAp9_11foundations.exit, label %bb.b, !dbg !11186

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !11194
  unreachable, !dbg !11194

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5block4ReadINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEEECsbaWXNhtWAp9_11foundations.exit2: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.h, !dbg !11194
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNCNvXsb_NtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc4chanINtBa_2RxppENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop0INtB2_5GuardINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtBc_9unbounded9SemaphoreE5drainCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11195 {
bb.a:
  %i.a = alloca [224 x i8], align 8               ; 12 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !786, !align !806, !noundef !786 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !786, !align !806, !noundef !786 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11207
  call void @_RNvMs0_NtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc4listINtB5_2RxINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEE3popCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([224 x i8]) align 8 captures(address) dereferenceable(224) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.d), !dbg !11208
  %i.e = load i64, ptr %i.a, align 8, !dbg !11207, !range !1078, !noundef !786
  %switch5 = icmp ugt i64 %i.e, -3, !dbg !11209
  br i1 %switch5, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5block4ReadINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEEECsbaWXNhtWAp9_11foundations.exit, label %.lr.ph, !dbg !11209

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !786, !align !806, !noundef !786
  br label %bb.b, !dbg !11209

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5block4ReadINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEEECsbaWXNhtWAp9_11foundations.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5block4ReadINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEEECsbaWXNhtWAp9_11foundations.exit4, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11210
  ret void, !dbg !11211

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5block4ReadINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEEECsbaWXNhtWAp9_11foundations.exit4
  invoke void @_RNvXsf_NtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc4chanNtNtB7_9unbounded9SemaphoreNtB5_9Semaphore10add_permit(ptr noundef nonnull align 8 %i.g)
          to label %bb.e unwind label %bb.c, !dbg !11212

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load i64, ptr %i.a, align 8, !dbg !11213, !range !1078, !alias.scope !11205, !noundef !786
  %switch.i1 = icmp ugt i64 %i.i, -3, !dbg !11213
  br i1 %switch.i1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5block4ReadINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEEECsbaWXNhtWAp9_11foundations.exit2, label %bb.d, !dbg !11213

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5block4ReadINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEEECsbaWXNhtWAp9_11foundations.exit2 unwind label %bb.g, !dbg !11214

bb.e:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.a, align 8, !dbg !11215, !range !1078, !alias.scope !11206, !noundef !786
  %switch.i3 = icmp ugt i64 %i.j, -3, !dbg !11215
  br i1 %switch.i3, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5block4ReadINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEEECsbaWXNhtWAp9_11foundations.exit4, label %bb.f, !dbg !11215

bb.f:                                             ; preds = %bb.e
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %i.a), !dbg !11216
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5block4ReadINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEEECsbaWXNhtWAp9_11foundations.exit4, !dbg !11216

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5block4ReadINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEEECsbaWXNhtWAp9_11foundations.exit4: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11210
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11207
  call void @_RNvMs0_NtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc4listINtB5_2RxINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEE3popCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([224 x i8]) align 8 captures(address) dereferenceable(224) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.d), !dbg !11208
  %i.k = load i64, ptr %i.a, align 8, !dbg !11207, !range !1078, !noundef !786
  %switch = icmp ugt i64 %i.k, -3, !dbg !11209
  br i1 %switch, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5block4ReadINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEEECsbaWXNhtWAp9_11foundations.exit, label %bb.b, !dbg !11209

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !11217
  unreachable, !dbg !11217

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5block4ReadINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEEECsbaWXNhtWAp9_11foundations.exit2: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.h, !dbg !11217
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNCNvXsb_NtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc4chanINtBa_2RxppENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop0INtB2_5GuardINtNtNtCsaCYLheajBls_5hyper6client8dispatch8EnvelopeINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtB2R_8response8ResponseNtNtNtB23_4body8incoming8IncomingEENtNtBc_9unbounded9SemaphoreE5drainCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11218 {
bb.a:
  %i.a = alloca [264 x i8], align 8               ; 10 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !786, !align !806, !noundef !786 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !786, !align !806, !noundef !786 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11220
  call void @_RNvMs0_NtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc4listINtB5_2RxINtNtNtCsaCYLheajBls_5hyper6client8dispatch8EnvelopeINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtB1O_8response8ResponseNtNtNtB10_4body8incoming8IncomingEEE3popCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(address) dereferenceable(264) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.d), !dbg !11221
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 240, !dbg !11220 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !11220, !range !1032, !noundef !786
  %switch1 = icmp ugt i64 %i.f, -3, !dbg !11222
  br i1 %switch1, label %._crit_edge, label %.lr.ph, !dbg !11222

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !786, !align !806, !noundef !786
  br label %bb.b, !dbg !11222

._crit_edge:                                      ; preds = %bb.d, %bb.a
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5block4ReadINtNtNtCsaCYLheajBls_5hyper6client8dispatch8EnvelopeINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtB2G_8response8ResponseNtNtNtB1S_4body8incoming8IncomingEEEEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(264) %i.a), !dbg !11223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11223
  ret void, !dbg !11224

bb.b:                                             ; preds = %.lr.ph, %bb.d
  invoke void @_RNvXsf_NtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc4chanNtNtB7_9unbounded9SemaphoreNtB5_9Semaphore10add_permit(ptr noundef nonnull align 8 %i.h)
          to label %bb.d unwind label %bb.c, !dbg !11225

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5block4ReadINtNtNtCsaCYLheajBls_5hyper6client8dispatch8EnvelopeINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtB2G_8response8ResponseNtNtNtB1S_4body8incoming8IncomingEEEEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(264) %i.a) #27
          to label %bb.f unwind label %bb.e, !dbg !11223

bb.d:                                             ; preds = %bb.b
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc5block4ReadINtNtNtCsaCYLheajBls_5hyper6client8dispatch8EnvelopeINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtB2G_8response8ResponseNtNtNtB1S_4body8incoming8IncomingEEEEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(264) %i.a), !dbg !11223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11223
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11220
  call void @_RNvMs0_NtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc4listINtB5_2RxINtNtNtCsaCYLheajBls_5hyper6client8dispatch8EnvelopeINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtB1O_8response8ResponseNtNtNtB10_4body8incoming8IncomingEEE3popCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(address) dereferenceable(264) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.d), !dbg !11221
  %i.j = load i64, ptr %i.e, align 8, !dbg !11220, !range !1032, !noundef !786
  %switch = icmp ugt i64 %i.j, -3, !dbg !11222
  br i1 %switch, label %._crit_edge, label %bb.b, !dbg !11222

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !11226
  unreachable, !dbg !11226

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.i, !dbg !11226
end_hunk_2
begin_hunk_3_@_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry15otlp_conversion7tracing17convert_log_entry:bb.a
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !16721
  unreachable, !dbg !16721

bb.h:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.q, !dbg !16721
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing16output_otlp_grpc14create_request(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !16722 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [128 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !16734
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !16735
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !16735
  call void @_RNvMNtCsfUalJnHtWpm_5tonic7requestINtB2_7RequestNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestE3newCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !dbg !16736
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !16737
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !16738
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 120, !dbg !16739
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !16733
  store ptr @73, ptr %i.a, align 8, !dbg !16740
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !16740
  store i64 51, ptr %i.f, align 8, !dbg !16740
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !16740
  store ptr @75, ptr %i.g, align 8, !dbg !16740
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !16740
  store i64 6, ptr %i.h, align 8, !dbg !16740
  invoke void @_RINvMs_NtCs74LoFwSioHw_4http10extensionsNtB5_10Extensions6insertNtNtCsfUalJnHtWpm_5tonic10extensions10GrpcMethodECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a)
          to label %bb.c unwind label %bb.b, !dbg !16741

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsfUalJnHtWpm_5tonic7request7RequestNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(128) %i.d) #27
          to label %bb.e unwind label %bb.d, !dbg !16742

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !16744
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %i.d, i64 128, i1 false), !dbg !16745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !16742
  ret void, !dbg !16746

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !16747
  unreachable, !dbg !16747

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.i, !dbg !16747
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing16output_otlp_grpc5start(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noundef nonnull %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !16748 {
bb.a:
  %i.a = alloca [2312 x i8], align 8              ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 2 uses
  %i.h = alloca [544 x i8], align 8               ; 30 uses
  %.sroa.35 = alloca [28 x i8], align 4           ; 5 uses
  %i.i = alloca [544 x i8], align 8               ; 33 uses
  %i.j = alloca [8 x i8], align 8                 ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 7 uses
  store ptr %3, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !16894
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 40, !dbg !16895
  %i.m = load i64, ptr %i.l, align 8, !dbg !16895, !noundef !786
  store i64 %i.m, ptr %i.j, align 8, !dbg !16895
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !16896
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.35), !dbg !16859
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !16859
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !16897
  store ptr %2, ptr %i.f, align 8, !dbg !16897
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !16897
  store ptr @_RNvXsq_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.418.0..sroa_idx, align 8, !dbg !16897
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @76, ptr noundef nonnull %i.f)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit unwind label %bb.d, !dbg !16898

bb.b:                                             ; preds = %.body, %bb.v, %bb.d
  %.pn68 = phi { ptr, i32 } [ %i.q, %bb.d ], [ %.pn.pn.ph, %bb.v ], [ %i.ca, %.body ]
  call void @llvm.experimental.noalias.scope.decl(metadata !16855), !dbg !16886
  call void @llvm.experimental.noalias.scope.decl(metadata !16856), !dbg !16899
  call void @llvm.experimental.noalias.scope.decl(metadata !16857), !dbg !16900
  %i.n = load ptr, ptr %i.k, align 8, !dbg !16901, !alias.scope !16858, !nonnull !786, !noundef !786
  %i.o = atomicrmw add ptr %i.n, i64 -1 release, align 8, !dbg !16902, !noalias !16858
  %i.p = icmp eq i64 %i.o, 1, !dbg !16903
  br i1 %i.p, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit, !dbg !16903

bb.c:                                             ; preds = %bb.b
  fence acquire, !dbg !16904
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCs3zuhHmEJ01l_5tokio4sync5mutex5MutexINtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel8ReceiverINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEEE9drop_slowB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit unwind label %bb.u, !dbg !16905

bb.d:                                             ; preds = %bb.a, %bb.f, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !16906
  invoke void @_RINvMNtNtCsfUalJnHtWpm_5tonic9transport7channelNtB3_7Channel11from_sharedNtNtCs1xwejQucwHj_5alloc6string6StringECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([544 x i8]) align 8 captures(none) dereferenceable(544) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
          to label %bb.e unwind label %bb.d, !dbg !16859

bb.e:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit
  %i.r = load i64, ptr %i.h, align 8, !dbg !16907, !range !1033, !noundef !786 ; 2 uses
  %i.s = icmp eq i64 %i.r, 2, !dbg !16907
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !16908 ; 2 uses
  br i1 %i.s, label %bb.f, label %bb.g, !dbg !16909

bb.f:                                             ; preds = %bb.e
  %i.u = load i8, ptr %i.t, align 8, !dbg !16910, !range !1083, !noundef !786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !16911
  %i.v = invoke noundef nonnull ptr @_RNvXs_NtCs7XllS0bOcsN_6anyhow5errorNtB6_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtNtCs74LoFwSioHw_4http3uri10InvalidUriE4fromCsbaWXNhtWAp9_11foundations(i8 noundef %i.u)
          to label %bb.w unwind label %bb.d, !dbg !16912

bb.g:                                             ; preds = %bb.e
  %.sroa.624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !16913
  %.sroa.624.0.copyload = load i64, ptr %.sroa.624.0..sroa_idx, align 8, !dbg !16913
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32, !dbg !16913
  %.sroa.1127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 48, !dbg !16913
  %.sroa.1531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 64, !dbg !16913
  %.sroa.2238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 96, !dbg !16913
  %.sroa.2238.0.copyload = load i64, ptr %.sroa.2238.0..sroa_idx, align 8, !dbg !16913
  %.sroa.2339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 104, !dbg !16913
  %.sroa.2339.0.copyload = load i32, ptr %.sroa.2339.0..sroa_idx, align 8, !dbg !16913
  %.sroa.2541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 112, !dbg !16913
  %.sroa.2541.0.copyload = load i64, ptr %.sroa.2541.0..sroa_idx, align 8, !dbg !16913
  %.sroa.2642.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 120, !dbg !16913
  %.sroa.2642.0.copyload = load i32, ptr %.sroa.2642.0..sroa_idx, align 8, !dbg !16913
  %.sroa.2844.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 128, !dbg !16913
  %.sroa.2844.0.copyload = load i64, ptr %.sroa.2844.0..sroa_idx, align 8, !dbg !16913
  %.sroa.2945.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 136, !dbg !16913
  %.sroa.2945.0.copyload = load i32, ptr %.sroa.2945.0..sroa_idx, align 8, !dbg !16913
  %.sroa.3147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 144, !dbg !16913
  %.sroa.3147.0.copyload = load i64, ptr %.sroa.3147.0..sroa_idx, align 8, !dbg !16913
  %.sroa.3248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 152, !dbg !16913
  %.sroa.3248.0.copyload = load i32, ptr %.sroa.3248.0..sroa_idx, align 8, !dbg !16913
  %.sroa.3450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 160, !dbg !16913
  %.sroa.3450.0.copyload = load i64, ptr %.sroa.3450.0..sroa_idx, align 8, !dbg !16913
  %.sroa.3551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 168, !dbg !16913
  %.sroa.3551.0.copyload = load i32, ptr %.sroa.3551.0..sroa_idx, align 8, !dbg !16913
  %.sroa.3652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 172, !dbg !16913
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.35, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.3652.0..sroa_idx, i64 28, i1 false), !dbg !16913
  %.sroa.3753.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 200, !dbg !16913
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 200, !dbg !16914
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.w, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3753.0..sroa_idx, i64 88, i1 false), !dbg !16913
  %.sroa.3854.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 288, !dbg !16913
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 288, !dbg !16914
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.x, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3854.0..sroa_idx, i64 40, i1 false), !dbg !16913
  %.sroa.3955.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 328, !dbg !16913
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 328, !dbg !16914
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.y, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3955.0..sroa_idx, i64 88, i1 false), !dbg !16913
  %.sroa.4056.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 416, !dbg !16913
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 416, !dbg !16914
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.z, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4056.0..sroa_idx, i64 88, i1 false), !dbg !16913
  %.sroa.4157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 504, !dbg !16913
  %.sroa.4359.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 520, !dbg !16913
  %.sroa.4359.0.copyload = load i8, ptr %.sroa.4359.0..sroa_idx, align 8, !dbg !16913
  %.sroa.4460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 521, !dbg !16913
  %.sroa.4460.0.copyload = load i8, ptr %.sroa.4460.0..sroa_idx, align 1, !dbg !16913
  %.sroa.4561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 522, !dbg !16913
  %.sroa.4561.0.copyload = load i8, ptr %.sroa.4561.0..sroa_idx, align 2, !dbg !16913
  %.sroa.4662.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 523, !dbg !16913
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 523, !dbg !16914
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.aa, ptr noundef nonnull align 1 dereferenceable(17) %.sroa.4662.0..sroa_idx, i64 17, i1 false), !dbg !16913
  %.sroa.35.176..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.35, i64 4, !dbg !16859
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 176, !dbg !16914
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !16915
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 80, !dbg !16914
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 88, !dbg !16914
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !16914
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !16914
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !16914
  %i.ai = load <4 x i32>, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !16913
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 48, !dbg !16914
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 96, !dbg !16914
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 104, !dbg !16914
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 112, !dbg !16914
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 120, !dbg !16914
  %i.ao = load <4 x i32>, ptr %.sroa.1127.0..sroa_idx, align 8, !dbg !16913
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 520, !dbg !16914
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 128, !dbg !16914
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 136, !dbg !16914
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 144, !dbg !16914
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 152, !dbg !16914
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 521, !dbg !16914
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 64, !dbg !16914
  %i.aw = load <4 x i32>, ptr %.sroa.1531.0..sroa_idx, align 8, !dbg !16913
  %i.ax = load <2 x i64>, ptr %i.t, align 8, !dbg !16913
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 160, !dbg !16914
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 168, !dbg !16914
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 522, !dbg !16914
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 504, !dbg !16914
  %i.bc = load <2 x ptr>, ptr %.sroa.4157.0..sroa_idx, align 8, !dbg !16913 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !16911
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.35.176..sroa_idx, i64 24, i1 false), !dbg !16859
  %i.bd = extractelement <2 x ptr> %i.bc, i64 0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bd) ]
  %i.be = load i64, ptr %i.ac, align 8, !dbg !16915, !noundef !786
  store i64 %i.be, ptr %i.ad, align 8, !dbg !16914
  store i32 0, ptr %i.ae, align 8, !dbg !16914
  store i64 %i.r, ptr %i.i, align 8, !dbg !16914
  store <2 x i64> %i.ax, ptr %i.af, align 8, !dbg !16914
  store i64 %.sroa.624.0.copyload, ptr %i.ag, align 8, !dbg !16914
  store <4 x i32> %i.ai, ptr %i.ah, align 8, !dbg !16914
  store i64 %.sroa.2238.0.copyload, ptr %i.ak, align 8, !dbg !16914
  store i32 %.sroa.2339.0.copyload, ptr %i.al, align 8, !dbg !16914
  store i64 %.sroa.2541.0.copyload, ptr %i.am, align 8, !dbg !16914
  store i32 %.sroa.2642.0.copyload, ptr %i.an, align 8, !dbg !16914
  store <4 x i32> %i.ao, ptr %i.aj, align 8, !dbg !16914
  store i8 %.sroa.4359.0.copyload, ptr %i.ap, align 8, !dbg !16914
  store i64 %.sroa.2844.0.copyload, ptr %i.aq, align 8, !dbg !16914
  store i32 %.sroa.2945.0.copyload, ptr %i.ar, align 8, !dbg !16914
  store i64 %.sroa.3147.0.copyload, ptr %i.as, align 8, !dbg !16914
  store i32 %.sroa.3248.0.copyload, ptr %i.at, align 8, !dbg !16914
  store i8 %.sroa.4460.0.copyload, ptr %i.au, align 1, !dbg !16914
  store <4 x i32> %i.aw, ptr %i.av, align 8, !dbg !16914
  store i64 %.sroa.3450.0.copyload, ptr %i.ay, align 8, !dbg !16914
  store i32 %.sroa.3551.0.copyload, ptr %i.az, align 8, !dbg !16914
  store i8 %.sroa.4561.0.copyload, ptr %i.ba, align 2, !dbg !16914
  store <2 x ptr> %i.bc, ptr %i.bb, align 8, !dbg !16914
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.35), !dbg !16916
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !16917
  invoke void @_RINvNtNtCs3zuhHmEJ01l_5tokio4sync9broadcast7channelNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77)
          to label %bb.i unwind label %bb.h, !dbg !16917

bb.h:                                             ; preds = %bb.g
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !16918
  %i.bg = load ptr, ptr %i.d, align 8, !dbg !16918, !nonnull !786, !noundef !786
  store ptr %i.bg, ptr %i.e, align 8, !dbg !16918
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !16919 ; 5 uses
  invoke void @_RNvXsc_NtNtCs3zuhHmEJ01l_5tokio4sync9broadcastINtB5_8ReceiverNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bh)
          to label %bb.l unwind label %bb.j, !dbg !16920

bb.j:                                             ; preds = %bb.i
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16863), !dbg !16920
  call void @llvm.experimental.noalias.scope.decl(metadata !16864), !dbg !16921
  %i.bj = load ptr, ptr %i.bh, align 8, !dbg !16922, !alias.scope !16865, !nonnull !786, !noundef !786
  %i.bk = atomicrmw add ptr %i.bj, i64 -1 release, align 8, !dbg !16923, !noalias !16866
  %i.bl = icmp eq i64 %i.bk, 1, !dbg !16924
  br i1 %i.bl, label %bb.k, label %.thread80, !dbg !16924

bb.k:                                             ; preds = %bb.j
  fence acquire, !dbg !16925
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCs3zuhHmEJ01l_5tokio4sync9broadcast6SharedNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelEE9drop_slowCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bh) #25
          to label %.thread80 unwind label %bb.n, !dbg !16926

bb.l:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !16867), !dbg !16920
  call void @llvm.experimental.noalias.scope.decl(metadata !16868), !dbg !16927
  %i.bm = load ptr, ptr %i.bh, align 8, !dbg !16928, !alias.scope !16869, !nonnull !786, !noundef !786
  %i.bn = atomicrmw add ptr %i.bm, i64 -1 release, align 8, !dbg !16929, !noalias !16870
  %i.bo = icmp eq i64 %i.bn, 1, !dbg !16930
  br i1 %i.bo, label %bb.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs3zuhHmEJ01l_5tokio4sync9broadcast8ReceiverNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelEECsbaWXNhtWAp9_11foundations.exit, !dbg !16930

bb.m:                                             ; preds = %bb.l
  fence acquire, !dbg !16931
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCs3zuhHmEJ01l_5tokio4sync9broadcast6SharedNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelEE9drop_slowCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bh) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs3zuhHmEJ01l_5tokio4sync9broadcast8ReceiverNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelEECsbaWXNhtWAp9_11foundations.exit unwind label %bb.o, !dbg !16932

bb.n:                                             ; preds = %bb.k
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !16920
  unreachable, !dbg !16920

bb.o:                                             ; preds = %bb.m, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs3zuhHmEJ01l_5tokio4sync9broadcast8ReceiverNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelEECsbaWXNhtWAp9_11foundations.exit
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.thread80

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs3zuhHmEJ01l_5tokio4sync9broadcast8ReceiverNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelEECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !16919
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !16933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !16934
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !16935
  %i.bs = load i64, ptr %i.br, align 8, !dbg !16935, !noundef !786
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !16936
  store i64 0, ptr %i.bt, align 8, !dbg !16936
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !16936
  store i64 %i.bs, ptr %i.bu, align 8, !dbg !16936
  store ptr %i.e, ptr %i.b, align 8, !dbg !16936
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !16936
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !16936
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !16936
  store ptr %i.k, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !16936
  %.sroa.6.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !16936
  store ptr %i.j, ptr %.sroa.6.0..sroa_idx8, align 8, !dbg !16936
  invoke void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCs3oUPovFnLWP_4core3pin3PinINtNtB8_5boxed3BoxDNtNtNtB18_6future6future6Futurep6OutputuNtNtB18_6marker4SendEL_EEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtNtB18_3ops5range5RangejENCNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing16output_otlp_grpc5start0EE9from_iterB4C_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.p unwind label %bb.o, !dbg !16937

bb.p:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs3zuhHmEJ01l_5tokio4sync9broadcast8ReceiverNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelEECsbaWXNhtWAp9_11foundations.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !16938
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !16939
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %i.a, ptr noundef nonnull align 8 dereferenceable(544) %i.i, i64 544, i1 false), !dbg !16939
  %i.bv = load ptr, ptr %i.e, align 8, !dbg !16939, !nonnull !786, !noundef !786
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 544, !dbg !16939
  store ptr %i.bv, ptr %i.bw, align 8, !dbg !16939
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 2304, !dbg !16939
  store i8 0, ptr %i.bx, align 8, !dbg !16939
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !dbg !16940, !noalias !16876
  %i.by = call noundef align 8 dereferenceable_or_null(2312) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 2313) 2312, i64 noundef range(i64 8, 129) 8) #19, !dbg !16941, !noalias !16876 ; 3 uses
  %i.bz = icmp eq ptr %i.by, null, !dbg !16942
  br i1 %i.bz, label %bb.q, label %bb.t, !dbg !16943, !prof !863

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 2312) #28
          to label %.noexc74 unwind label %bb.r, !dbg !16944

.noexc74:                                         ; preds = %bb.q
  unreachable, !dbg !16944

bb.r:                                             ; preds = %bb.q
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing16output_otlp_grpc5starts_0EBL_(ptr noundef nonnull align 8 dereferenceable(2312) %i.a) #27
          to label %.body unwind label %bb.s, !dbg !16945

bb.s:                                             ; preds = %bb.r
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !16946
  unreachable, !dbg !16946

.body:                                            ; preds = %bb.r
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #27
          to label %bb.b unwind label %bb.u, !dbg !16947

bb.t:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2312) %i.by, ptr noundef nonnull align 8 dereferenceable(2312) %i.a, i64 2312, i1 false), !dbg !16948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16949
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !16950
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !16951
  store ptr %i.by, ptr %.sroa.411.0..sroa_idx, align 8, !dbg !16951
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !16951
  store ptr @78, ptr %.sroa.512.0..sroa_idx, align 8, !dbg !16951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !16947
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !16952
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !16953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !16886
  call void @llvm.experimental.noalias.scope.decl(metadata !16882), !dbg !16886
  call void @llvm.experimental.noalias.scope.decl(metadata !16883), !dbg !16954
  call void @llvm.experimental.noalias.scope.decl(metadata !16884), !dbg !16955
  %i.cc = load ptr, ptr %i.k, align 8, !dbg !16956, !alias.scope !16885, !nonnull !786, !noundef !786
  %i.cd = atomicrmw add ptr %i.cc, i64 -1 release, align 8, !dbg !16957, !noalias !16885
  %i.ce = icmp eq i64 %i.cd, 1, !dbg !16958
  br i1 %i.ce, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit75.sink.split, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit75, !dbg !16958

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit75.sink.split: ; preds = %bb.t, %bb.w
  fence acquire, !dbg !16959
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCs3zuhHmEJ01l_5tokio4sync5mutex5MutexINtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel8ReceiverINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEEE9drop_slowB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #25, !dbg !16960
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit75, !dbg !16961

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit75: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit75.sink.split, %bb.w, %bb.t
  ret void, !dbg !16961

bb.u:                                             ; preds = %bb.c, %bb.v, %.thread80, %.body
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !16962
  unreachable, !dbg !16962

.thread80:                                        ; preds = %bb.j, %bb.k, %bb.o
  %.pn83 = phi { ptr, i32 } [ %i.bq, %bb.o ], [ %i.bi, %bb.k ], [ %i.bi, %bb.j ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs3zuhHmEJ01l_5tokio4sync9broadcast6SenderNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(8) %i.e) #27
          to label %bb.v unwind label %bb.u, !dbg !16952

bb.v:                                             ; preds = %.thread80, %bb.h
  %.pn.pn.ph = phi { ptr, i32 } [ %i.bf, %bb.h ], [ %.pn83, %.thread80 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel8endpoint8EndpointECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(544) %i.i) #27
          to label %bb.b unwind label %bb.u, !dbg !16953

bb.w:                                             ; preds = %bb.f
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16963
  store ptr %i.v, ptr %i.cg, align 8, !dbg !16963
  store i64 -1, ptr %0, align 8, !dbg !16963
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.35), !dbg !16916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !16953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !16886
  call void @llvm.experimental.noalias.scope.decl(metadata !16890), !dbg !16886
  call void @llvm.experimental.noalias.scope.decl(metadata !16891), !dbg !16964
  call void @llvm.experimental.noalias.scope.decl(metadata !16892), !dbg !16965
  %i.ch = load ptr, ptr %i.k, align 8, !dbg !16966, !alias.scope !16893, !nonnull !786, !noundef !786
  %i.ci = atomicrmw add ptr %i.ch, i64 -1 release, align 8, !dbg !16967, !noalias !16893
  %i.cj = icmp eq i64 %i.ci, 1, !dbg !16968
  br i1 %i.cj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit75.sink.split, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit75, !dbg !16968

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel18SharedSpanReceiverEBJ_.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %.pn68, !dbg !16962
}
end_hunk_3
