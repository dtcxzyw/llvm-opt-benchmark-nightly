inline.NumInlined: 10453
inline.NumDeleted: 5814
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZNK6duckdb23PhysicalStreamingWindow16ExecuteFunctionsERNS_16ExecutionContextERNS_9DataChunkES4_RNS_19GlobalOperatorStateE:bb.a
bb.bz:                                            ; preds = %bb.by, %bb.z
  %.pn176.pn.pn.pn = phi { ptr, i32 } [ %.pn176.pn.pn, %bb.by ], [ %i.cc, %bb.z ]
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %7) #27
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.y, %bb.x
  %.pn176.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn176.pn.pn.pn, %bb.bz ], [ %i.cb, %bb.y ], [ %i.ca, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.w
  %.pn176.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn176.pn.pn.pn.pn, %bb.ca ], [ %i.bz, %bb.w ]
  call void @_ZN6duckdb18ExpressionExecutorD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %common.resume

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread: ; preds = %bb.f, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit, %bb.e
  %i.fb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 noundef %.0112282)
  %i.fc = call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fb)
  call void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %i.ay, ptr noundef nonnull align 8 dereferenceable(104) %i.fc)
  br label %.loopexit

bb.cc:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  %i.fd = load ptr, ptr %1, align 8, !tbaa !1034, !nonnull !151, !align !241
  call void @_ZN6duckdb18ExpressionExecutorC1ERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(65) %15, ptr noundef nonnull align 8 dereferenceable(512) %i.fd)
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ax, i64 104 ; 3 uses
  %i.ff = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fe, i64 noundef 0)
          to label %bb.cd unwind label %bb.cr

bb.cd:                                            ; preds = %bb.cc
  %i.fg = invoke noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ff)
          to label %bb.ce unwind label %bb.cr

bb.ce:                                            ; preds = %bb.cd
  invoke void @_ZN6duckdb18ExpressionExecutor13AddExpressionERKNS_10ExpressionE(ptr noundef nonnull align 8 dereferenceable(65) %15, ptr noundef nonnull align 8 dereferenceable(88) %i.fg)
          to label %bb.cf unwind label %bb.cr

bb.cf:                                            ; preds = %bb.ce
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ax, i64 208
  %i.fi = load i8, ptr %i.fh, align 8, !tbaa !1827, !range !150, !noundef !151
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %bb.cg, label %bb.en

bb.cg:                                            ; preds = %bb.cf
  %i.fk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 noundef %.0112282)
          to label %bb.ch unwind label %bb.cs

bb.ch:                                            ; preds = %bb.cg
  %i.fl = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fk)
          to label %bb.ci unwind label %bb.cs     ; 2 uses

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  %i.fm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fe, i64 noundef 0)
          to label %bb.cj unwind label %bb.ct

bb.cj:                                            ; preds = %bb.ci
  %i.fn = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fm)
          to label %bb.ck unwind label %bb.ct

bb.ck:                                            ; preds = %bb.cj
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 56
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %i.fo)
          to label %bb.cl unwind label %bb.ct

bb.cl:                                            ; preds = %bb.ck
  invoke void @_ZN6duckdb6VectorC1ENS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(104) %16, ptr noundef nonnull %17, i64 noundef 2048)
          to label %bb.cm unwind label %bb.cu

bb.cm:                                            ; preds = %bb.cl
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %17) #27
  invoke void @_ZN6duckdb18ExpressionExecutor17ExecuteExpressionERNS_9DataChunkERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(65) %15, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(104) %16)
          to label %bb.cn unwind label %bb.cv

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %18)
          to label %bb.co unwind label %bb.cw

bb.co:                                            ; preds = %bb.cn
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %16, i64 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(73) %18)
          to label %bb.cp unwind label %bb.cx

bb.cp:                                            ; preds = %bb.co
  %i.fp = load ptr, ptr %i.aa, align 8, !tbaa !1645
  %.not.i189 = icmp eq ptr %i.fp, null
  br i1 %.not.i189, label %bb.cq, label %bb.cz

bb.cq:                                            ; preds = %bb.cp
  invoke void @_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_mmm(ptr noundef nonnull align 8 dereferenceable(104) %16, ptr noundef nonnull align 8 dereferenceable(104) %i.ay, i64 noundef %i.h, i64 noundef 0, i64 noundef 0)
          to label %bb.dr unwind label %bb.cy

bb.cr:                                            ; preds = %bb.en, %bb.ce, %bb.cd, %bb.cc
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

bb.cs:                                            ; preds = %bb.ch, %bb.cg
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

bb.ct:                                            ; preds = %bb.ck, %bb.cj, %bb.ci
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

bb.cu:                                            ; preds = %bb.cl
  %i.ft = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %17) #27
  br label %bb.em

bb.cv:                                            ; preds = %bb.cm
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.cw:                                            ; preds = %bb.cn
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ek

bb.cx:                                            ; preds = %bb.co
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ej

bb.cy:                                            ; preds = %bb.cq
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ej

bb.cz:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  %i.fy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fe, i64 noundef 0)
          to label %bb.da unwind label %bb.dg

bb.da:                                            ; preds = %bb.cz
  %i.fz = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fy)
          to label %bb.db unwind label %bb.dg

bb.db:                                            ; preds = %bb.da
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 56
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull align 8 dereferenceable(24) %i.ga)
          to label %bb.dc unwind label %bb.dg

bb.dc:                                            ; preds = %bb.db
  invoke void @_ZN6duckdb6VectorC1ENS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(104) %19, ptr noundef nonnull %20, i64 noundef 2048)
          to label %bb.dd unwind label %bb.dh

bb.dd:                                            ; preds = %bb.dc
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %20) #27
  invoke void @_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_mmm(ptr noundef nonnull align 8 dereferenceable(104) %16, ptr noundef nonnull align 8 dereferenceable(104) %19, i64 noundef %i.h, i64 noundef 0, i64 noundef 0)
          to label %bb.de unwind label %bb.di

bb.de:                                            ; preds = %bb.dd
  %i.gb = load ptr, ptr %i.aa, align 8, !tbaa !1645
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !212
  %i.gd = and i64 %i.gc, 1
  %.not237 = icmp eq i64 %i.gd, 0
  br i1 %.not237, label %bb.df, label %bb.dj

bb.df:                                            ; preds = %bb.de
  invoke void @_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_mmm(ptr noundef nonnull align 8 dereferenceable(104) %i.fl, ptr noundef nonnull align 8 dereferenceable(104) %19, i64 noundef 1, i64 noundef 0, i64 noundef 0)
          to label %bb.dj unwind label %bb.di

bb.dg:                                            ; preds = %bb.db, %bb.da, %bb.cz
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.dh:                                            ; preds = %bb.dc
  %i.gf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %20) #27
  br label %bb.dq

bb.di:                                            ; preds = %bb.df, %bb.dd
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.dj:                                            ; preds = %bb.df, %bb.de
  br i1 %.not287, label %._crit_edge, label %.lr.ph275

.lr.ph275:                                        ; preds = %bb.dj
  %i.gh = load ptr, ptr %18, align 8, !tbaa !1869
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !1665 ; 2 uses
  %.not.i190 = icmp eq ptr %i.gi, null
  %i.gj = load ptr, ptr %i.aa, align 8, !tbaa !1645
  %i.gk = load ptr, ptr %i.ab, align 8, !tbaa !1665
  br label %bb.dk

._crit_edge:                                      ; preds = %bb.dm, %bb.dj
  invoke void @_ZN6duckdb6Vector5SliceERKS0_RKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %i.ay, ptr noundef nonnull align 8 dereferenceable(104) %19, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 noundef %i.h)
          to label %bb.dn unwind label %bb.do

bb.dk:                                            ; preds = %.lr.ph275, %bb.dm
  %i.gl = phi i64 [ 0, %.lr.ph275 ], [ %26, %bb.dm ] ; 3 uses
  %.0113274 = phi i32 [ 0, %.lr.ph275 ], [ %25, %bb.dm ] ; 2 uses
  %.0114273 = phi i32 [ 0, %.lr.ph275 ], [ %spec.select, %bb.dm ]
  br i1 %.not.i190, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %i.gl
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !3
  %i.go = zext i32 %i.gn to i64
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %i.gp = phi i64 [ %i.go, %bb.dl ], [ %i.gl, %bb.dk ] ; 2 uses
  %i.gq = lshr i64 %i.gp, 6
  %i.gr = and i64 %i.gp, 63
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %i.gq
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !212
  %i.gu = shl nuw i64 1, %i.gr
  %i.gv = and i64 %i.gt, %i.gu
  %.not238 = icmp eq i64 %i.gv, 0
  %spec.select = select i1 %.not238, i32 %.0114273, i32 %.0113274 ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.gl
  store i32 %spec.select, ptr %i.gw, align 4, !tbaa !3
  %25 = add i32 %.0113274, 1                      ; 2 uses
  %26 = zext i32 %25 to i64                       ; 2 uses
  %i.gx = icmp ugt i64 %i.h, %26
  br i1 %i.gx, label %bb.dk, label %._crit_edge, !llvm.loop !1876

bb.dn:                                            ; preds = %._crit_edge
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %19) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  br label %bb.dr

bb.do:                                            ; preds = %._crit_edge
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.di
  %.pn.pn = phi { ptr, i32 } [ %i.gg, %bb.di ], [ %i.gy, %bb.do ]
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %19) #27
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.dh, %bb.dg
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.dp ], [ %i.gf, %bb.dh ], [ %i.ge, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  br label %bb.ej

bb.dr:                                            ; preds = %bb.cq, %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #27
  invoke void @_ZNK6duckdb6Vector8GetValueEm(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %21, ptr noundef nonnull align 8 dereferenceable(104) %i.ay, i64 noundef %i.ac)
          to label %bb.ds unwind label %bb.eg

bb.ds:                                            ; preds = %bb.dr
  invoke void @_ZN6duckdb6Vector9ReferenceERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %i.fl, ptr noundef nonnull align 8 dereferenceable(64) %21)
          to label %bb.dt unwind label %bb.eh

bb.dt:                                            ; preds = %bb.ds
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %21) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  %i.gz = load ptr, ptr %i.ad, align 8, !tbaa !9  ; 8 uses
  %.not.i.i.i.i.i192 = icmp eq ptr %i.gz, null
  br i1 %.not.i.i.i.i.i192, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i196, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8 ; 4 uses
  %i.hb = load atomic i64, ptr %i.ha acquire, align 8 ; 2 uses
  %i.hc = icmp eq i64 %i.hb, 4294967297
  %i.hd = trunc i64 %i.hb to i32                  ; 2 uses
  br i1 %i.hc, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  store i32 0, ptr %i.ha, align 8, !tbaa !20
  %i.he = getelementptr inbounds nuw i8, ptr %i.gz, i64 12
  store i32 0, ptr %i.he, align 4, !tbaa !25
  %i.hf = load ptr, ptr %i.gz, align 8, !tbaa !7
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.hh = load ptr, ptr %i.hg, align 8
  call void %i.hh(ptr noundef nonnull align 8 dereferenceable(16) %i.gz) #27, !inline_history !1873
  %i.hi = load ptr, ptr %i.gz, align 8, !tbaa !7
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  %i.hk = load ptr, ptr %i.hj, align 8
  call void %i.hk(ptr noundef nonnull align 8 dereferenceable(16) %i.gz) #27, !inline_history !1873
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i196

bb.dw:                                            ; preds = %bb.du
  %i.hl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i.i.i.i193 = icmp eq i8 %i.hl, 0
  br i1 %.not.i.i.i.i.i.i193, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.hm = add nsw i32 %i.hd, -1
  store i32 %i.hm, ptr %i.ha, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i194

bb.dy:                                            ; preds = %bb.dw
  %i.hn = atomicrmw volatile add ptr %i.ha, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i194

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i194: ; preds = %bb.dy, %bb.dx
  %.0.i.i.i.i.i.i.i195 = phi i32 [ %i.hd, %bb.dx ], [ %i.hn, %bb.dy ]
  %i.ho = icmp eq i32 %.0.i.i.i.i.i.i.i195, 1
  br i1 %i.ho, label %bb.dz, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i196, !prof !33

bb.dz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i194
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gz) #27
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i196

_ZN6duckdb15SelectionVectorD2Ev.exit.i196:        ; preds = %bb.dz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i194, %bb.dv, %bb.dt
  %i.hp = load ptr, ptr %i.ae, align 8, !tbaa !9  ; 8 uses
  %.not.i.i.i.i1.i197 = icmp eq ptr %i.hp, null
  br i1 %.not.i.i.i.i1.i197, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit201, label %bb.ea

bb.ea:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i196
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8 ; 4 uses
  %i.hr = load atomic i64, ptr %i.hq acquire, align 8 ; 2 uses
  %i.hs = icmp eq i64 %i.hr, 4294967297
  %i.ht = trunc i64 %i.hr to i32                  ; 2 uses
  br i1 %i.hs, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  store i32 0, ptr %i.hq, align 8, !tbaa !20
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hp, i64 12
  store i32 0, ptr %i.hu, align 4, !tbaa !25
  %i.hv = load ptr, ptr %i.hp, align 8, !tbaa !7
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  %i.hx = load ptr, ptr %i.hw, align 8
  call void %i.hx(ptr noundef nonnull align 8 dereferenceable(16) %i.hp) #27, !inline_history !1874
  %i.hy = load ptr, ptr %i.hp, align 8, !tbaa !7
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 24
  %i.ia = load ptr, ptr %i.hz, align 8
  call void %i.ia(ptr noundef nonnull align 8 dereferenceable(16) %i.hp) #27, !inline_history !1874
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit201

bb.ec:                                            ; preds = %bb.ea
  %i.ib = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i.i.i2.i198 = icmp eq i8 %i.ib, 0
  br i1 %.not.i.i.i.i.i2.i198, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.ic = add nsw i32 %i.ht, -1
  store i32 %i.ic, ptr %i.hq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i199

bb.ee:                                            ; preds = %bb.ec
  %i.id = atomicrmw volatile add ptr %i.hq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i199

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i199: ; preds = %bb.ee, %bb.ed
  %.0.i.i.i.i.i.i4.i200 = phi i32 [ %i.ht, %bb.ed ], [ %i.id, %bb.ee ]
  %i.ie = icmp eq i32 %.0.i.i.i.i.i.i4.i200, 1
  br i1 %i.ie, label %bb.ef, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit201, !prof !33

bb.ef:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i199
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hp) #27
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit201

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit201:      ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i196, %bb.eb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i199, %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %16) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  br label %bb.eo

bb.eg:                                            ; preds = %bb.dr
  %i.if = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

bb.eh:                                            ; preds = %bb.ds
  %i.ig = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %21) #27
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %.pn156 = phi { ptr, i32 } [ %i.ig, %bb.eh ], [ %i.if, %bb.eg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  br label %bb.ej

bb.ej:                                            ; preds = %bb.cy, %bb.dq, %bb.ei, %bb.cx
  %.pn156.pn.pn = phi { ptr, i32 } [ %i.fw, %bb.cx ], [ %.pn156, %bb.ei ], [ %i.fx, %bb.cy ], [ %.pn.pn.pn, %bb.dq ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %18) #27
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.cw
  %.pn156.pn.pn.pn = phi { ptr, i32 } [ %.pn156.pn.pn, %bb.ej ], [ %i.fv, %bb.cw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.cv
  %.pn156.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn156.pn.pn.pn, %bb.ek ], [ %i.fu, %bb.cv ]
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %16) #27
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.cu, %bb.ct
  %.pn156.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn156.pn.pn.pn.pn, %bb.el ], [ %i.ft, %bb.cu ], [ %i.fs, %bb.ct ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  br label %bb.es

bb.en:                                            ; preds = %bb.cf
  invoke void @_ZN6duckdb18ExpressionExecutor17ExecuteExpressionERNS_9DataChunkERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(65) %15, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(104) %i.ay)
          to label %bb.eo unwind label %bb.cr

bb.eo:                                            ; preds = %bb.en, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit201
  %i.ih = load ptr, ptr %i.af, align 8, !tbaa !169 ; 3 uses
  %i.ii = load ptr, ptr %i.ag, align 8, !tbaa !172 ; 2 uses
  %.not4.i.i.i.i202 = icmp eq ptr %i.ih, %i.ii
  br i1 %.not4.i.i.i.i202, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i213, label %.lr.ph.i.i.i.i203

.lr.ph.i.i.i.i203:                                ; preds = %bb.eo, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i209
  %.05.i.i.i.i204 = phi ptr [ %i.io, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i209 ], [ %i.ih, %bb.eo ] ; 2 uses
  %i.ij = load ptr, ptr %.05.i.i.i.i204, align 8, !tbaa !173 ; 3 uses
  %.not.i.i.i.i.i.i205 = icmp eq ptr %i.ij, null
  br i1 %.not.i.i.i.i.i.i205, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i209, label %bb.ep

bb.ep:                                            ; preds = %.lr.ph.i.i.i.i203
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !175 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i206 = icmp eq ptr %i.ik, null
  br i1 %.not.i.i.i.i.i.i.i.i.i206, label %_ZNKSt14default_deleteIN6duckdb23ExpressionExecutorStateEEclEPS1_.exit.i.i.i.i.i.i208, label %_ZNKSt14default_deleteIN6duckdb15ExpressionStateEEclEPS1_.exit.i.i.i.i.i.i.i.i.i207

_ZNKSt14default_deleteIN6duckdb15ExpressionStateEEclEPS1_.exit.i.i.i.i.i.i.i.i.i207: ; preds = %bb.ep
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !7
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.in = load ptr, ptr %i.im, align 8
  call void %i.in(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.ik) #27, !inline_history !1875
end_hunk_0
