Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_mdtest-5ac06286d3ad4859.ruff_mdtest.a1483a2854650328-cgu.14?download=true
inline.NumInlined: 556
inline.NumDeleted: 318
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RINvMsN_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs2AWtUsOyxgP_3std4path7PathBufINtNtBc_3vec3VecNtNtBc_6string6StringENtB1m_4LeafENtB1m_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3V_11VacantEntryB1C_B2b_E12insert_entry0ECsdQv3Ybs94uW_11ruff_mdtest:bb.a
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr %i.by, i64 %.sroa.510.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.f, i64 24, i1 false), !alias.scope !172, !noalias !165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i16 %i.bz, ptr %i.bg, align 2, !noalias !165
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.458, i64 40, i1 false), !noalias !173
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.458)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.not = icmp eq i64 %.sroa.057.0.copyload, -1
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7276)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7276, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.cb = load ptr, ptr %i.o, align 8, !noalias !174, !noundef !4 ; 2 uses
  %.not.i177 = icmp eq ptr %i.cb, null
  br i1 %.not.i177, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.w
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cd = icmp eq i64 %i.aj, 0
  %.sroa.7276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.7276.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7276, i64 16 ; 5 uses
  br label %bb.an

bb.x:                                             ; preds = %.thread, %bb.v
  %.sink.i68 = phi i64 [ %i.y, %.thread ], [ %.sroa.510.0.i, %bb.v ]
  %.sink50.i67 = phi i64 [ %i.bx, %.thread ], [ %spec.select.i, %bb.v ]
  %.sink51.i66 = phi ptr [ %i.o, %.thread ], [ %spec.select32.i, %bb.v ]
  store ptr %.sink51.i66, ptr %0, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink50.i67, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink.i68, ptr %i.cf, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %bb.bx

._crit_edge:                                      ; preds = %bb.bw, %bb.w
  %.sroa.0.0 = phi i64 [ %.sroa.057.0.copyload, %bb.w ], [ %.sroa.0.i.sroa.0.0.copyload, %bb.bw ]
  %.lcssa169 = phi i64 [ 0, %bb.w ], [ %i.dh, %bb.bw ] ; 2 uses
  %.lcssa161 = phi ptr [ %i.ak, %bb.w ], [ %i.fz, %bb.bw ] ; 4 uses
  %.lcssa153 = phi i64 [ %i.aj, %bb.w ], [ %i.dh, %bb.bw ]
  %.lcssa = phi ptr [ %i.o, %bb.w ], [ %i.dc, %bb.bw ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %.sroa.02.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.02.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7276, i64 40, i1 false)
  store i64 %.sroa.0.0, ptr %i.j, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store ptr %.lcssa, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store i64 %.lcssa153, ptr %.sroa.54.0..sroa_idx, align 8
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store ptr %.lcssa161, ptr %.sroa.65.0..sroa_idx, align 8
  %.sroa.76.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store i64 %.lcssa169, ptr %.sroa.76.0..sroa_idx, align 8
  %.val = load ptr, ptr %4, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.cg = load ptr, ptr %.val, align 8, !noalias !175, !noundef !4 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %.not.i23 = icmp eq ptr %i.cg, null
  br i1 %.not.i23, label %bb.y, label %bb.aa, !prof !7

bb.y:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #29
          to label %bb.z unwind label %bb.ak, !noalias !175

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %i.ci = load i64, ptr %i.ch, align 8, !alias.scope !176, !noalias !175, !noundef !4 ; 2 uses
  %i.cj = invoke noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCs2AWtUsOyxgP_3std4path7PathBufINtNtB6_3vec3VecNtNtB6_6string6StringEEE13new_uninit_inCsdQv3Ybs94uW_11ruff_mdtest()
          to label %.noexc.i.i unwind label %bb.ae, !noalias !177 ; 9 uses

.noexc.i.i:                                       ; preds = %bb.aa
  store ptr null, ptr %i.cj, align 8, !noalias !177
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 538 ; 3 uses
  store i16 0, ptr %i.ck, align 2, !noalias !177
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 544 ; 2 uses
  store ptr %i.cg, ptr %i.cl, align 8, !noalias !177
  %i.cm = add i64 %i.ci, 1                        ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not.i.i.i.i.i, label %bb.ab, label %bb.af, !prof !7

bb.ab:                                            ; preds = %.noexc.i.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #29
          to label %bb.ac unwind label %bb.ad, !noalias !177

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cj, i64 noundef 640, i64 noundef 8) #32, !noalias !177
  br label %.body.i.i

bb.ae:                                            ; preds = %bb.aa
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ae, %bb.ad
  tail call void @llvm.trap()
  unreachable

bb.af:                                            ; preds = %.noexc.i.i
  store ptr %i.cj, ptr %i.cg, align 8, !noalias !178
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cg, i64 536
  store i16 0, ptr %i.cp, align 8, !noalias !179
  store ptr %i.cj, ptr %.val, align 8, !alias.scope !176, !noalias !175
  store i64 %i.cm, ptr %i.ch, align 8, !alias.scope !176, !noalias !175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !175
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(80) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !175
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.7276, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.cq, i64 24, i1 false)
  %i.cr = icmp eq i64 %.lcssa169, %i.ci
  br i1 %i.cr, label %bb.ag, label %.invoke.i.i, !prof !3

.invoke.i.i:                                      ; preds = %bb.ag, %bb.af
  %i.cs = phi ptr [ @59, %bb.af ], [ @57, %bb.ag ]
  %i.ct = phi i64 [ 48, %bb.af ], [ 32, %bb.ag ]
  %i.cu = phi ptr [ @60, %bb.af ], [ @61, %bb.ag ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cs, i64 noundef %i.ct, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cu) #29
          to label %.cont.i.i unwind label %bb.ah, !noalias !180

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.cv = load i16, ptr %i.ck, align 2, !noalias !180, !noundef !4 ; 3 uses
  %i.cw = icmp ult i16 %i.cv, 11
  br i1 %i.cw, label %bb.by, label %.invoke.i.i, !prof !3

bb.ah:                                            ; preds = %.invoke.i.i
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsdQv3Ybs94uW_11ruff_mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #30
          to label %bb.aj unwind label %bb.ai, !noalias !181

bb.ai:                                            ; preds = %bb.aj, %bb.ah
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !175
  unreachable

bb.aj:                                            ; preds = %bb.ah
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsdQv3Ybs94uW_11ruff_mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #30
          to label %.critedge20 unwind label %bb.ai, !noalias !175

bb.ak:                                            ; preds = %bb.y
  %i.cz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsdQv3Ybs94uW_11ruff_mdtest(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.j) #30
          to label %bb.am unwind label %bb.al

bb.al:                                            ; preds = %bb.am, %bb.ak
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.db = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsdQv3Ybs94uW_11ruff_mdtest(ptr noalias noundef align 8 dereferenceable(24) %i.db) #30
          to label %.critedge20 unwind label %bb.al

bb.an:                                            ; preds = %.lr.ph, %bb.bw
  %.sroa.0.1 = phi i64 [ %.sroa.057.0.copyload, %.lr.ph ], [ %.sroa.0.i.sroa.0.0.copyload, %bb.bw ]
  %i.dc = phi ptr [ %i.cb, %.lr.ph ], [ %i.jt, %bb.bw ] ; 24 uses
  %i.dd = phi ptr [ %i.o, %.lr.ph ], [ %i.dc, %bb.bw ]
  %i.de = phi i64 [ %i.aj, %.lr.ph ], [ %i.dh, %bb.bw ]
  %i.df = phi ptr [ %i.ak, %.lr.ph ], [ %i.fz, %bb.bw ] ; 2 uses
  %i.dg = phi i1 [ %i.cd, %.lr.ph ], [ true, %bb.bw ]
  %i.dh = add i64 %i.de, 1                        ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 536
  %i.dj = load i16, ptr %i.di, align 8, !noalias !174 ; 4 uses
  %i.dk = zext i16 %i.dj to i64                   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.750)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 %.sroa.0.1, ptr %i.l, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7276.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7276, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7276.24..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.4)
  br i1 %i.dg, label %bb.ap, label %bb.ao, !prof !3

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #29
          to label %bb.aq unwind label %.loopexit.split-lp, !noalias !182

bb.ap:                                            ; preds = %bb.an
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dc, i64 538 ; 4 uses
  %i.dm = load i16, ptr %i.dl, align 2, !noalias !182, !noundef !4 ; 5 uses
  %i.dn = icmp ult i16 %i.dm, 11
  br i1 %i.dn, label %bb.as, label %bb.ar

.loopexit.split-lp:                               ; preds = %bb.az, %bb.ao
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.aq:                                            ; preds = %bb.ao
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.do = icmp ult i16 %i.dj, 5
  br i1 %i.do, label %bb.az, label %bb.aw

bb.as:                                            ; preds = %bb.ap
  %i.dp = zext nneg i16 %i.dm to i64              ; 5 uses
  %i.dq = add nuw nsw i16 %i.dm, 1
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 2 uses
  %i.ds = add nuw nsw i64 %i.dk, 1                ; 7 uses
  %.not.i.i32.not = icmp ult i16 %i.dj, %i.dm
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.dr, i64 %i.dk ; 3 uses
  br i1 %.not.i.i32.not, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dt, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !183
  %i.du = getelementptr inbounds nuw i8, ptr %i.dc, i64 272
  %i.dv = getelementptr inbounds nuw [24 x i8], ptr %i.du, i64 %i.dk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dv, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7276.24..sroa_idx, i64 24, i1 false)
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.dw = getelementptr inbounds nuw [24 x i8], ptr %i.dr, i64 %i.ds
  %i.dx = sub nuw nsw i64 %i.dp, %i.dk
  %i.dy = mul nuw nsw i64 %i.dx, 24               ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dw, ptr nonnull align 8 %i.dt, i64 %i.dy, i1 false), !alias.scope !184, !noalias !185
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dt, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !183
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dc, i64 272 ; 2 uses
  %i.ea = getelementptr inbounds nuw [24 x i8], ptr %i.dz, i64 %i.dk
  %i.eb = getelementptr inbounds nuw [24 x i8], ptr %i.dz, i64 %i.ds
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eb, ptr nonnull align 8 %i.ea, i64 %i.dy, i1 false), !alias.scope !186, !noalias !185
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dc, i64 272
  %i.ed = getelementptr inbounds nuw [24 x i8], ptr %i.ec, i64 %i.dk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ed, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7276.24..sroa_idx, i64 24, i1 false)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dc, i64 544 ; 2 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ds
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.dk
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = sub nuw nsw i64 %i.dp, %i.dk
  %i.ej = shl nuw nsw i64 %i.ei, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eh, ptr nonnull align 8 %i.ef, i64 %i.ej, i1 false), !alias.scope !187, !noalias !185
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dc, i64 544
  %i.el = add nuw nsw i64 %i.dp, 2                ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.ds
  store ptr %i.df, ptr %i.em, align 8, !alias.scope !187, !noalias !185
  store i16 %i.dq, ptr %i.dl, align 2, !noalias !185
  %i.en = icmp samesign ult i64 %i.ds, %i.el
  br i1 %i.en, label %.lr.ph.i.i.i.preheader, label %.thread73

.lr.ph.i.i.i.preheader:                           ; preds = %bb.av
  %i.eo = add nuw nsw i64 %i.dp, 1
  %i.ep = sub nsw i64 %i.eo, %i.dk
  %i.eq = sub nsw i64 %i.dp, %i.dk
  %xtraiter514 = and i64 %i.ep, 3                 ; 2 uses
  %lcmp.mod515.not = icmp eq i64 %xtraiter514, 0
  br i1 %lcmp.mod515.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol.preheader

.lr.ph.i.i.i.prol.preheader:                      ; preds = %.lr.ph.i.i.i.preheader
  %i.er = getelementptr inbounds nuw i8, ptr %i.dc, i64 544
  br label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.prol.preheader
  %.sroa.0.06.i.i.i.prol = phi i64 [ %i.es, %.lr.ph.i.i.i.prol ], [ %i.ds, %.lr.ph.i.i.i.prol.preheader ] ; 4 uses
  %prol.iter516 = phi i64 [ %prol.iter516.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.prol.preheader ]
  %i.es = add nuw nsw i64 %.sroa.0.06.i.i.i.prol, 1 ; 2 uses
  %i.et = icmp samesign ult i64 %.sroa.0.06.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.et)
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %.sroa.0.06.i.i.i.prol
  %i.ev = load ptr, ptr %i.eu, align 8, !noalias !185, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.dc, ptr %i.ev, align 8, !noalias !185
  %i.ew = trunc nuw nsw i64 %.sroa.0.06.i.i.i.prol to i16
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 536
  store i16 %i.ew, ptr %i.ex, align 8, !noalias !185
  %prol.iter516.next = add i64 %prol.iter516, 1   ; 2 uses
  %prol.iter516.cmp.not = icmp eq i64 %prol.iter516.next, %xtraiter514
  br i1 %prol.iter516.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !119

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.sroa.0.06.i.i.i.unr = phi i64 [ %i.ds, %.lr.ph.i.i.i.preheader ], [ %i.es, %.lr.ph.i.i.i.prol ]
  %i.ey = icmp ult i64 %i.eq, 3
  br i1 %i.ey, label %.thread73, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.prol.loopexit
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dc, i64 544
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dc, i64 544
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dc, i64 544
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dc, i64 544
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.sroa.0.06.i.i.i = phi i64 [ %.sroa.0.06.i.i.i.unr, %.lr.ph.i.i.i.preheader.new ], [ %i.fs, %.lr.ph.i.i.i ] ; 7 uses
  %i.fd = add nuw nsw i64 %.sroa.0.06.i.i.i, 1    ; 2 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %.sroa.0.06.i.i.i
  %i.ff = load ptr, ptr %i.fe, align 8, !noalias !185, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.dc, ptr %i.ff, align 8, !noalias !185
  %i.fg = trunc nuw nsw i64 %.sroa.0.06.i.i.i to i16
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 536
  store i16 %i.fg, ptr %i.fh, align 8, !noalias !185
  %i.fi = add nuw nsw i64 %.sroa.0.06.i.i.i, 2    ; 2 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fd
  %i.fk = load ptr, ptr %i.fj, align 8, !noalias !185, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.dc, ptr %i.fk, align 8, !noalias !185
  %i.fl = trunc nuw nsw i64 %i.fd to i16
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 536
  store i16 %i.fl, ptr %i.fm, align 8, !noalias !185
  %i.fn = add nuw nsw i64 %.sroa.0.06.i.i.i, 3    ; 2 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.fi
  %i.fp = load ptr, ptr %i.fo, align 8, !noalias !185, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.dc, ptr %i.fp, align 8, !noalias !185
  %i.fq = trunc nuw nsw i64 %i.fi to i16
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 536
  store i16 %i.fq, ptr %i.fr, align 8, !noalias !185
  %i.fs = add nuw nsw i64 %.sroa.0.06.i.i.i, 4    ; 2 uses
  %i.ft = icmp ult i64 %.sroa.0.06.i.i.i, 9
  tail call void @llvm.assume(i1 %i.ft)
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.fn
  %i.fv = load ptr, ptr %i.fu, align 8, !noalias !185, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.dc, ptr %i.fv, align 8, !noalias !185
  %i.fw = trunc nuw nsw i64 %i.fn to i16
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 536
  store i16 %i.fw, ptr %i.fx, align 8, !noalias !185
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.fs, %i.el
  br i1 %exitcond.not.i.i.i.3, label %.thread73, label %.lr.ph.i.i.i

bb.aw:                                            ; preds = %bb.ar
  switch i16 %i.dj, label %bb.ax [
    i16 5, label %bb.az
    i16 6, label %bb.ay
  ]

bb.ax:                                            ; preds = %bb.aw
  %i.fy = add nsw i64 %i.dk, -7
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.ar
  %.sroa.06.0.i = phi i64 [ 5, %bb.ay ], [ 6, %bb.ax ], [ 4, %bb.ar ], [ 5, %bb.aw ] ; 7 uses
  %.sroa.5.0.i = phi i64 [ 0, %bb.ay ], [ %i.fy, %bb.ax ], [ %i.dk, %bb.ar ], [ 5, %bb.aw ] ; 9 uses
  %.sroa.03.0.i = phi i1 [ true, %bb.ay ], [ true, %bb.ax ], [ false, %bb.ar ], [ false, %bb.aw ]
  %i.fz = invoke noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCs2AWtUsOyxgP_3std4path7PathBufINtNtB6_3vec3VecNtNtB6_6string6StringEEE13new_uninit_inCsdQv3Ybs94uW_11ruff_mdtest()
          to label %.noexc.i29 unwind label %.loopexit.split-lp, !noalias !182 ; 10 uses

.noexc.i29:                                       ; preds = %bb.az
  store ptr null, ptr %i.fz, align 8, !noalias !188
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 538 ; 3 uses
  store i16 0, ptr %i.ga, align 2, !noalias !188
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !188
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %i.gb = load i16, ptr %i.dl, align 2, !noalias !190, !noundef !4
  %i.gc = zext i16 %i.gb to i64
  %i.gd = xor i64 %.sroa.06.0.i, -1
  %i.ge = add nsw i64 %i.gc, %i.gd                ; 4 uses
  %i.gf = trunc i64 %i.ge to i16
  store i16 %i.gf, ptr %i.ga, align 2, !alias.scope !189, !noalias !188
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !190
  %i.gg = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 2 uses
  %i.gh = getelementptr inbounds nuw [24 x i8], ptr %i.gg, i64 %.sroa.06.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.gh, i64 24, i1 false), !noalias !190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !190
  %i.gi = getelementptr inbounds nuw i8, ptr %i.dc, i64 272 ; 2 uses
  %i.gj = getelementptr inbounds nuw [24 x i8], ptr %i.gi, i64 %.sroa.06.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.gj, i64 24, i1 false), !noalias !190
  %i.gk = icmp ult i64 %i.ge, 12
  br i1 %i.gk, label %bb.bf, label %bb.ba, !prof !161

bb.ba:                                            ; preds = %.noexc.i29
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ge, i64 noundef 11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #29
          to label %bb.bc unwind label %bb.bb, !noalias !190

bb.bb:                                            ; preds = %bb.ba
  %i.gl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsdQv3Ybs94uW_11ruff_mdtest(ptr noalias noundef align 8 dereferenceable(24) %i.a) #30
          to label %bb.be unwind label %bb.bd, !noalias !190

bb.bc:                                            ; preds = %bb.ba
  unreachable

bb.bd:                                            ; preds = %bb.be, %bb.bb
  %i.gm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !190
  unreachable

bb.be:                                            ; preds = %bb.bb
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsdQv3Ybs94uW_11ruff_mdtest(ptr noalias noundef align 8 dereferenceable(24) %i.b) #30
          to label %bb.bo unwind label %bb.bd, !noalias !190

bb.bf:                                            ; preds = %.noexc.i29
  %i.gn = add nuw nsw i64 %.sroa.06.0.i, 1        ; 2 uses
  %i.go = getelementptr inbounds nuw [24 x i8], ptr %i.gg, i64 %i.gn
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gq = mul nuw nsw i64 %i.ge, 24               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gp, ptr nonnull readonly align 8 %i.go, i64 %i.gq, i1 false), !alias.scope !191, !noalias !192
  %i.gr = getelementptr inbounds nuw [24 x i8], ptr %i.gi, i64 %i.gn
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fz, i64 272
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gs, ptr nonnull readonly align 8 %i.gr, i64 %i.gq, i1 false), !alias.scope !193, !noalias !192
  %i.gt = trunc nuw nsw i64 %.sroa.06.0.i to i16
  store i16 %i.gt, ptr %i.dl, align 2, !noalias !190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !194
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !190
  %i.gu = load i16, ptr %i.ga, align 2, !noalias !188, !noundef !4 ; 2 uses
  %i.gv = zext i16 %i.gu to i64                   ; 3 uses
  %i.gw = add nuw nsw i64 %i.gv, 1                ; 3 uses
  %i.gx = icmp ult i16 %i.gu, 12
  br i1 %i.gx, label %bb.bg, label %bb.bi, !prof !161

bb.bg:                                            ; preds = %bb.bf
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fz, i64 544 ; 2 uses
  %i.gz = zext i16 %i.dm to i64
  %i.ha = sub nuw nsw i64 %i.gz, %.sroa.06.0.i
  %i.hb = icmp eq i64 %i.ha, %i.gw
  br i1 %i.hb, label %bb.bk, label %bb.bh, !prof !3

bb.bh:                                            ; preds = %bb.bg
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #29
          to label %.noexc.i.i30 unwind label %bb.bj, !noalias !188

.noexc.i.i30:                                     ; preds = %bb.bh
  unreachable

bb.bi:                                            ; preds = %bb.bf
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.gw, i64 noundef 12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #29
          to label %bb.bm unwind label %bb.bj, !noalias !188

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.hc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCs2AWtUsOyxgP_3std4path7PathBufINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1g_6string6StringEEECsdQv3Ybs94uW_11ruff_mdtest(ptr noalias noundef align 8 dereferenceable(48) %i.c) #30
          to label %bb.bo unwind label %bb.bn, !noalias !188

bb.bk:                                            ; preds = %bb.bg
  %i.hd = getelementptr i8, ptr %i.dc, i64 552
  %i.he = getelementptr [8 x i8], ptr %i.hd, i64 %.sroa.06.0.i
  %i.hf = shl nuw nsw i64 %i.gw, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gy, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.he, i64 %i.hf, i1 false), !alias.scope !195, !noalias !188
  %i.hg = icmp ne i64 %i.dh, 0
  tail call void @llvm.assume(i1 %i.hg)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bl, %bb.bk
  %.sroa.0.013.i.i.i.i = phi i64 [ 0, %bb.bk ], [ %spec.select10.i.i.i.i, %bb.bl ] ; 5 uses
  %i.hh = icmp samesign uge i64 %.sroa.0.013.i.i.i.i, %i.gv ; 2 uses
  %not..i.i.i.i = xor i1 %i.hh, true
  %i.hi = zext i1 %not..i.i.i.i to i64
  %spec.select10.i.i.i.i = add nuw nsw i64 %.sroa.0.013.i.i.i.i, %i.hi ; 2 uses
  %i.hj = icmp samesign ult i64 %.sroa.0.013.i.i.i.i, 12
  tail call void @llvm.assume(i1 %i.hj)
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %.sroa.0.013.i.i.i.i
  %i.hl = load ptr, ptr %i.hk, align 8, !alias.scope !196, !noalias !197, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.fz, ptr %i.hl, align 8, !noalias !198
  %i.hm = trunc nuw nsw i64 %.sroa.0.013.i.i.i.i to i16
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 536
  store i16 %i.hm, ptr %i.hn, align 8, !noalias !197
  %.not.i.i.i.i.i.i = icmp samesign ugt i64 %spec.select10.i.i.i.i, %i.gv
  %or.cond.i.i.i.i = select i1 %i.hh, i1 true, i1 %.not.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.bp, label %bb.bl

bb.bm:                                            ; preds = %bb.bi
  unreachable

bb.bn:                                            ; preds = %bb.bj
  %i.ho = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !188
  unreachable

bb.bo:                                            ; preds = %bb.bj, %bb.be
  %.pn.i.i = phi { ptr, i32 } [ %i.hc, %bb.bj ], [ %i.gl, %bb.be ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fz, i64 noundef 640, i64 noundef 8) #32, !noalias !188
  br label %bb.bu

bb.bp:                                            ; preds = %bb.bl
  %.sroa.0.i.sroa.0.0.copyload = load i64, ptr %i.c, align 8, !noalias !182 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.i.sroa.4, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.i.sroa.4.0..sroa_idx, i64 40, i1 false), !noalias !182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !188
  %spec.select.i31 = select i1 %.sroa.03.0.i, ptr %i.fz, ptr %i.dc ; 11 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %spec.select.i31, i64 538 ; 2 uses
  %i.hq = load i16, ptr %i.hp, align 2, !noalias !199, !noundef !4 ; 2 uses
  %i.hr = zext i16 %i.hq to i64                   ; 5 uses
  %i.hs = add i16 %i.hq, 1
  %i.ht = getelementptr inbounds nuw i8, ptr %spec.select.i31, i64 8 ; 2 uses
  %i.hu = add nuw nsw i64 %.sroa.5.0.i, 1         ; 7 uses
  %.not.i10.not.i = icmp samesign ult i64 %.sroa.5.0.i, %i.hr
  %i.hv = getelementptr inbounds nuw [24 x i8], ptr %i.ht, i64 %.sroa.5.0.i ; 3 uses
  br i1 %.not.i10.not.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hv, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !183
  %i.hw = getelementptr inbounds nuw i8, ptr %spec.select.i31, i64 272
  %i.hx = getelementptr inbounds nuw [24 x i8], ptr %i.hw, i64 %.sroa.5.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7276.24..sroa_idx, i64 24, i1 false)
  br label %bb.bs

bb.br:                                            ; preds = %bb.bp
  %i.hy = getelementptr inbounds nuw [24 x i8], ptr %i.ht, i64 %i.hu
  %i.hz = sub nuw nsw i64 %i.hr, %.sroa.5.0.i     ; 2 uses
  %i.ia = mul nuw nsw i64 %i.hz, 24               ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hy, ptr nonnull align 8 %i.hv, i64 %i.ia, i1 false), !alias.scope !200, !noalias !199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hv, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !183
  %i.ib = getelementptr inbounds nuw i8, ptr %spec.select.i31, i64 272 ; 2 uses
  %i.ic = getelementptr inbounds nuw [24 x i8], ptr %i.ib, i64 %.sroa.5.0.i ; 2 uses
  %i.id = getelementptr inbounds nuw [24 x i8], ptr %i.ib, i64 %i.hu
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.id, ptr nonnull align 8 %i.ic, i64 %i.ia, i1 false), !alias.scope !201, !noalias !199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ic, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7276.24..sroa_idx, i64 24, i1 false)
  %i.ie = getelementptr inbounds nuw i8, ptr %spec.select.i31, i64 544 ; 2 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %i.hu
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %.sroa.5.0.i
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %i.ii = shl nuw nsw i64 %i.hz, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ih, ptr nonnull align 8 %i.if, i64 %i.ii, i1 false), !alias.scope !202, !noalias !199
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.ij = getelementptr inbounds nuw i8, ptr %spec.select.i31, i64 544 ; 6 uses
  %i.ik = add nuw nsw i64 %i.hr, 2                ; 2 uses
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.hu
  store ptr %i.df, ptr %i.il, align 8, !alias.scope !202, !noalias !199
  store i16 %i.hs, ptr %i.hp, align 2, !noalias !199
  %i.im = icmp samesign ult i64 %i.hu, %i.ik
  br i1 %i.im, label %.lr.ph.i.i11.i.preheader, label %.loopexit

.lr.ph.i.i11.i.preheader:                         ; preds = %bb.bs
  %i.in = add nuw nsw i64 %i.hr, 1
  %i.io = sub nsw i64 %i.in, %.sroa.5.0.i
  %i.ip = sub nsw i64 %i.hr, %.sroa.5.0.i
  %xtraiter = and i64 %i.io, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i11.i.prol.loopexit, label %.lr.ph.i.i11.i.prol

.lr.ph.i.i11.i.prol:                              ; preds = %.lr.ph.i.i11.i.preheader, %.lr.ph.i.i11.i.prol
  %.sroa.0.06.i.i12.i.prol = phi i64 [ %i.iq, %.lr.ph.i.i11.i.prol ], [ %i.hu, %.lr.ph.i.i11.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i11.i.prol ], [ 0, %.lr.ph.i.i11.i.preheader ]
  %i.iq = add nuw nsw i64 %.sroa.0.06.i.i12.i.prol, 1 ; 2 uses
  %i.ir = icmp samesign ult i64 %.sroa.0.06.i.i12.i.prol, 12
  tail call void @llvm.assume(i1 %i.ir)
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %.sroa.0.06.i.i12.i.prol
  %i.it = load ptr, ptr %i.is, align 8, !noalias !199, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %spec.select.i31, ptr %i.it, align 8, !noalias !199
  %i.iu = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.prol to i16
  %i.iv = getelementptr inbounds nuw i8, ptr %i.it, i64 536
  store i16 %i.iu, ptr %i.iv, align 8, !noalias !199
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i11.i.prol.loopexit, label %.lr.ph.i.i11.i.prol, !llvm.loop !149

.lr.ph.i.i11.i.prol.loopexit:                     ; preds = %.lr.ph.i.i11.i.prol, %.lr.ph.i.i11.i.preheader
  %.sroa.0.06.i.i12.i.unr = phi i64 [ %i.hu, %.lr.ph.i.i11.i.preheader ], [ %i.iq, %.lr.ph.i.i11.i.prol ]
  %i.iw = icmp ult i64 %i.ip, 3
  br i1 %i.iw, label %.loopexit, label %.lr.ph.i.i11.i

.lr.ph.i.i11.i:                                   ; preds = %.lr.ph.i.i11.i.prol.loopexit, %.lr.ph.i.i11.i
  %.sroa.0.06.i.i12.i = phi i64 [ %i.jm, %.lr.ph.i.i11.i ], [ %.sroa.0.06.i.i12.i.unr, %.lr.ph.i.i11.i.prol.loopexit ] ; 7 uses
  %i.ix = add nuw nsw i64 %.sroa.0.06.i.i12.i, 1  ; 2 uses
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %.sroa.0.06.i.i12.i
  %i.iz = load ptr, ptr %i.iy, align 8, !noalias !199, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %spec.select.i31, ptr %i.iz, align 8, !noalias !199
  %i.ja = trunc nuw nsw i64 %.sroa.0.06.i.i12.i to i16
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 536
  store i16 %i.ja, ptr %i.jb, align 8, !noalias !199
  %i.jc = add nuw nsw i64 %.sroa.0.06.i.i12.i, 2  ; 2 uses
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.ix
  %i.je = load ptr, ptr %i.jd, align 8, !noalias !199, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %spec.select.i31, ptr %i.je, align 8, !noalias !199
  %i.jf = trunc nuw nsw i64 %i.ix to i16
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 536
  store i16 %i.jf, ptr %i.jg, align 8, !noalias !199
  %i.jh = add nuw nsw i64 %.sroa.0.06.i.i12.i, 3  ; 2 uses
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.jc
  %i.jj = load ptr, ptr %i.ji, align 8, !noalias !199, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %spec.select.i31, ptr %i.jj, align 8, !noalias !199
  %i.jk = trunc nuw nsw i64 %i.jc to i16
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 536
  store i16 %i.jk, ptr %i.jl, align 8, !noalias !199
  %i.jm = add nuw nsw i64 %.sroa.0.06.i.i12.i, 4  ; 2 uses
  %i.jn = icmp ult i64 %.sroa.0.06.i.i12.i, 9
  tail call void @llvm.assume(i1 %i.jn)
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.jh
  %i.jp = load ptr, ptr %i.jo, align 8, !noalias !199, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %spec.select.i31, ptr %i.jp, align 8, !noalias !199
  %i.jq = trunc nuw nsw i64 %i.jh to i16
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 536
  store i16 %i.jq, ptr %i.jr, align 8, !noalias !199
  %exitcond.not.i.i13.i.3 = icmp eq i64 %i.jm, %i.ik
  br i1 %exitcond.not.i.i13.i.3, label %.loopexit, label %.lr.ph.i.i11.i

bb.bt:                                            ; preds = %bb.bv, %bb.bu
  %i.js = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !203
  unreachable

bb.bu:                                            ; preds = %.loopexit.split-lp, %bb.bo
  %.pn.ph.i27 = phi { ptr, i32 } [ %.pn.i.i, %bb.bo ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsdQv3Ybs94uW_11ruff_mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k) #30
          to label %bb.bv unwind label %bb.bt, !noalias !204

bb.bv:                                            ; preds = %bb.bu
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsdQv3Ybs94uW_11ruff_mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l) #30
          to label %.critedge20 unwind label %bb.bt, !noalias !203

.thread73:                                        ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %.loopexit78

.loopexit:                                        ; preds = %.lr.ph.i.i11.i.prol.loopexit, %.lr.ph.i.i11.i, %bb.bs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.750, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.i.sroa.4, i64 40, i1 false), !noalias !205
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.not16 = icmp eq i64 %.sroa.0.i.sroa.0.0.copyload, -1
  br i1 %.not16, label %.loopexit78, label %bb.bw

bb.bw:                                            ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7276, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.750, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.750)
  %i.jt = load ptr, ptr %i.dc, align 8, !noalias !174, !noundef !4 ; 2 uses
  %.not.i = icmp eq ptr %i.jt, null
  br i1 %.not.i, label %._crit_edge, label %bb.an

.loopexit78:                                      ; preds = %.loopexit, %.thread73
  store ptr %spec.select32.i, ptr %0, align 8
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select.i, ptr %i.ju, align 8
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.510.0.i, ptr %i.jv, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.750)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7276)
  br label %bb.bx

bb.bx:                                            ; preds = %.loopexit78, %bb.x, %bb.by
  ret void

bb.by:                                            ; preds = %bb.ag
  %i.jw = zext nneg i16 %i.cv to i64              ; 3 uses
  %i.jx = add nuw nsw i16 %i.cv, 1
  store i16 %i.jx, ptr %i.ck, align 2, !noalias !180
  %i.jy = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.jz = getelementptr inbounds nuw [24 x i8], ptr %i.jy, i64 %i.jw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jz, ptr noundef nonnull align 8 dereferenceable(80) %i.j, i64 24, i1 false)
  %i.ka = getelementptr inbounds nuw i8, ptr %i.cj, i64 272
  %i.kb = getelementptr inbounds nuw [24 x i8], ptr %i.ka, i64 %i.jw
  %i.kc = getelementptr inbounds nuw i8, ptr %.sroa.7276, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kb, ptr noundef nonnull align 8 dereferenceable(24) %i.kc, i64 24, i1 false)
  %i.kd = add nuw nsw i64 %i.jw, 1                ; 2 uses
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.kd
  store ptr %.lcssa161, ptr %i.ke, align 8, !noalias !180
  store ptr %i.cj, ptr %.lcssa161, align 8, !noalias !180
  %i.kf = trunc nuw nsw i64 %i.kd to i16
  %i.kg = getelementptr inbounds nuw i8, ptr %.lcssa161, i64 536
  store i16 %i.kf, ptr %i.kg, align 8, !noalias !180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store ptr %spec.select32.i, ptr %0, align 8
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select.i, ptr %i.kh, align 8
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.510.0.i, ptr %i.ki, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7276)
  br label %bb.bx

.critedge20:                                      ; preds = %bb.bv, %bb.am, %bb.aj, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %.pn.ph.i, %bb.u ], [ %.pn.ph.i27, %bb.bv ], [ %i.cz, %bb.am ], [ %i.cx, %bb.aj ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs45bxiIjzMqg_5salsa12active_query9BacktraceEECsdQv3Ybs94uW_11ruff_mdtest(ptr %.0.val, i64 %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  %i.b = icmp eq i64 %.8.val, 0
  %or.cond = select i1 %i.a, i1 true, i1 %i.b
  br i1 %or.cond, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa12active_query9BacktraceECsdQv3Ybs94uW_11ruff_mdtest.exit, label %.lr.ph.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa12active_query9BacktraceECsdQv3Ybs94uW_11ruff_mdtest.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCs45bxiIjzMqg_5salsa12active_query13CapturedQueryECsdQv3Ybs94uW_11ruff_mdtest.exit.i.i, %bb.a
  ret void

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa12active_query13CapturedQueryECsdQv3Ybs94uW_11ruff_mdtest.exit.i.i.i
  %.sroa.0.09.i.i.i = phi i64 [ %i.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa12active_query13CapturedQueryECsdQv3Ybs94uW_11ruff_mdtest.exit.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %.0.val, i64 %.sroa.0.09.i.i.i
  %i.d = add nuw nsw i64 %.sroa.0.09.i.i.i, 1     ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !224, !nonnull !4, !noundef !4
  %i.g = icmp eq ptr %i.f, @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER
  br i1 %i.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa12active_query13CapturedQueryECsdQv3Ybs94uW_11ruff_mdtest.exit.i.i.i, label %bb.b, !prof !3

bb.b:                                             ; preds = %.lr.ph.i.i.i
  invoke void @_RINvCsaSrGj5dYoxL_8thin_vec18drop_non_singletonNtNtCs45bxiIjzMqg_5salsa5cycle9CycleHeadEBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa12active_query13CapturedQueryECsdQv3Ybs94uW_11ruff_mdtest.exit.i.i.i unwind label %bb.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa12active_query13CapturedQueryECsdQv3Ybs94uW_11ruff_mdtest.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.h = icmp eq i64 %i.d, %.8.val
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCs45bxiIjzMqg_5salsa12active_query13CapturedQueryECsdQv3Ybs94uW_11ruff_mdtest.exit.i.i, label %.lr.ph.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.d, %.8.val
  br i1 %i.j, label %.loopexit.i.i, label %.lr.ph12.i.i.i

.lr.ph12.i.i.i:                                   ; preds = %bb.c, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa12active_query13CapturedQueryECsdQv3Ybs94uW_11ruff_mdtest.exit8.i.i.i
  %.sroa.0.110.i.i.i = phi i64 [ %i.l, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa12active_query13CapturedQueryECsdQv3Ybs94uW_11ruff_mdtest.exit8.i.i.i ], [ %i.d, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %.0.val, i64 %.sroa.0.110.i.i.i
  %i.l = add i64 %.sroa.0.110.i.i.i, 1            ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !225, !nonnull !4, !noundef !4
  %i.o = icmp eq ptr %i.n, @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER
  br i1 %i.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa12active_query13CapturedQueryECsdQv3Ybs94uW_11ruff_mdtest.exit8.i.i.i, label %bb.d, !prof !3

bb.d:                                             ; preds = %.lr.ph12.i.i.i
  invoke void @_RINvCsaSrGj5dYoxL_8thin_vec18drop_non_singletonNtNtCs45bxiIjzMqg_5salsa5cycle9CycleHeadEBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa12active_query13CapturedQueryECsdQv3Ybs94uW_11ruff_mdtest.exit8.i.i.i unwind label %bb.e

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa12active_query13CapturedQueryECsdQv3Ybs94uW_11ruff_mdtest.exit8.i.i.i: ; preds = %bb.d, %.lr.ph12.i.i.i
  %i.p = icmp eq i64 %i.l, %.8.val
  br i1 %i.p, label %.loopexit.i.i, label %.lr.ph12.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCs45bxiIjzMqg_5salsa12active_query13CapturedQueryECsdQv3Ybs94uW_11ruff_mdtest.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa12active_query13CapturedQueryECsdQv3Ybs94uW_11ruff_mdtest.exit.i.i.i
  %i.r = shl nuw nsw i64 %.8.val, 5
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.r, i64 noundef 8) #32
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa12active_query9BacktraceECsdQv3Ybs94uW_11ruff_mdtest.exit

.loopexit.i.i:                                    ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa12active_query13CapturedQueryECsdQv3Ybs94uW_11ruff_mdtest.exit8.i.i.i, %bb.c
  %i.s = shl nuw nsw i64 %.8.val, 5
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.s, i64 noundef 8) #32
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8w9c0syp1Hj_13ruff_notebook5index13NotebookIndexEECsdQv3Ybs94uW_11ruff_mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !4
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8w9c0syp1Hj_13ruff_notebook5index13NotebookIndexECsdQv3Ybs94uW_11ruff_mdtest.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs8w9c0syp1Hj_13ruff_notebook5index9CellStartENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdQv3Ybs94uW_11ruff_mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8w9c0syp1Hj_13ruff_notebook5index13NotebookIndexECsdQv3Ybs94uW_11ruff_mdtest.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs8w9c0syp1Hj_13ruff_notebook5index9CellStartENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdQv3Ybs94uW_11ruff_mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCs8w9c0syp1Hj_13ruff_notebook5index9CellStartEECsdQv3Ybs94uW_11ruff_mdtest.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCs8w9c0syp1Hj_13ruff_notebook5index9CellStartEECsdQv3Ybs94uW_11ruff_mdtest.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8w9c0syp1Hj_13ruff_notebook5index13NotebookIndexECsdQv3Ybs94uW_11ruff_mdtest.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs8w9c0syp1Hj_13ruff_notebook5index9CellStartENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdQv3Ybs94uW_11ruff_mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8w9c0syp1Hj_13ruff_notebook6schema10KernelspecEECsdQv3Ybs94uW_11ruff_mdtest(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !10, !noundef !4
  switch i64 %i.a, label %bb.c [
    i64 -2, label %bb.b
    i64 -1, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8w9c0syp1Hj_13ruff_notebook6schema10KernelspecECsdQv3Ybs94uW_11ruff_mdtest.exit
  ]

bb.b:                                             ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8w9c0syp1Hj_13ruff_notebook6schema10KernelspecECsdQv3Ybs94uW_11ruff_mdtest.exit
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdQv3Ybs94uW_11ruff_mdtest(ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdQv3Ybs94uW_11ruff_mdtest.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdQv3Ybs94uW_11ruff_mdtest(ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
          to label %.body.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
end_hunk_0
