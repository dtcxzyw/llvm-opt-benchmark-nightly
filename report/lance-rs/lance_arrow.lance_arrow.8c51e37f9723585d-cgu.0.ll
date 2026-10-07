Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_arrow.lance_arrow.8c51e37f9723585d-cgu.0?download=true
inline.NumInlined: 3904
inline.NumDeleted: 1641
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RNvCsc2V0exE7CWf_11lance_arrow22merge_list_struct_null:bb.a
  store ptr %i.fx, ptr %.sroa.038.sroa.0.sroa.4.0..sroa_idx.i, align 8, !noalias !5699
  %.sroa.038.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ga = load <2 x i64>, ptr %i.fy, align 8
  store <2 x i64> %i.ga, ptr %.sroa.038.sroa.0.sroa.5.0..sroa_idx.i, align 8, !noalias !5699
  %.sroa.038.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.gb = load <2 x i64>, ptr %i.fz, align 8
  store <2 x i64> %i.gb, ptr %.sroa.038.sroa.5.0..sroa_idx.i, align 8, !noalias !5699
  br label %bb.an

bb.ap:                                            ; preds = %bb.al
  call void @llvm.trap()
  unreachable

bb.aq:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !5713
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.gc, i64 32, i1 false), !noalias !5712
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @194, i64 noundef 43, ptr noundef nonnull %i.ai, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @195, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #36
          to label %bb.as unwind label %bb.ar, !noalias !5714

bb.ar:                                            ; preds = %bb.aq
  %i.gd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ai) #37
          to label %common.resume unwind label %bb.at, !noalias !5714

bb.as:                                            ; preds = %bb.aq
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.ge = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !5714
  unreachable

bb.au:                                            ; preds = %bb.an
  %i.gf = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !5699
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.gf, ptr noundef nonnull readonly align 8 dereferenceable(112) %i.ak, i64 112, i1 false), !noalias !5699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !5699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !5699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !5699
  store i64 1, ptr %i.aj, align 8, !noalias !5699
  %i.gg = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 1, ptr %i.gg, align 8, !noalias !5699
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !5715
  %i.gh = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef 8) #39, !noalias !5715 ; 3 uses
  %i.gi = icmp eq ptr %i.gh, null
  br i1 %i.gi, label %bb.av, label %_RINvCsc2V0exE7CWf_11lance_arrow29merge_list_struct_null_helperlRNtNtCs40k4W9msRzi_5alloc6string6StringEB2_.exit, !prof !11

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #36
          to label %.noexc102.i unwind label %bb.aw

.noexc102.i:                                      ; preds = %bb.av
  unreachable

bb.aw:                                            ; preds = %bb.av
  %i.gj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArraylEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.gf)
          to label %common.resume unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread95.i:                                      ; preds = %bb.ag, %.thread87.i
  %.pn91.i = phi { ptr, i32 } [ %i.fb, %.thread87.i ], [ %i.fg, %bb.ag ] ; 2 uses
  %i.gl = atomicrmw sub ptr %i.eq, i64 1 release, align 8, !noalias !5716
  %i.gm = icmp eq i64 %i.gl, 1
  br i1 %i.gm, label %bb.ay, label %common.resume

bb.ay:                                            ; preds = %.thread95.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_array11StructArrayE9drop_slowCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.av)
          to label %common.resume unwind label %bb.az

bb.az:                                            ; preds = %bb.ct, %.thread46.i, %bb.ay
  %i.gn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.ba:                                            ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !5717)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !5699
  store ptr %i.ee, ptr %i.ae, align 8, !noalias !5718
  %i.go = load i64, ptr %i.da, align 8, !alias.scope !5717, !noalias !5699, !noundef !10 ; 3 uses
  %i.gp = load i64, ptr %i.ax, align 8, !range !13, !alias.scope !5717, !noalias !5699, !noundef !10
  %i.gq = icmp eq i64 %i.go, %i.gp
  br i1 %i.gq, label %bb.bb, label %bb.bg

bb.bb:                                            ; preds = %bb.ba
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE8grow_oneB17_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %bb.bg unwind label %bb.bc, !noalias !5699

bb.bc:                                            ; preds = %bb.bb
  %i.gr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gs = atomicrmw sub ptr %i.ee, i64 1 release, align 8, !noalias !5719
  %i.gt = icmp eq i64 %i.gs, 1
  br i1 %i.gt, label %bb.bd, label %.thread46.i

bb.bd:                                            ; preds = %bb.bc
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ae)
          to label %.thread46.i unwind label %bb.be, !noalias !5699

bb.be:                                            ; preds = %bb.bd
  %i.gu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !5699
  unreachable

bb.bf:                                            ; preds = %bb.s
  call void @llvm.trap()
  unreachable

bb.bg:                                            ; preds = %bb.bb, %bb.ba
  %i.gv = load ptr, ptr %i.cz, align 8, !alias.scope !5717, !noalias !5699, !nonnull !10, !noundef !10
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.go
  store ptr %i.ee, ptr %i.gw, align 8, !noalias !5699
  %i.gx = add i64 %i.go, 1
  store i64 %i.gx, ptr %i.da, align 8, !alias.scope !5717, !noalias !5699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !5699
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.gz = load ptr, ptr %i.gy, align 8, !noalias !5699, !nonnull !10, !noundef !10
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ee, i64 32
  %i.hb = load i64, ptr %i.ha, align 8, !noalias !5699, !noundef !10
  %i.hc = invoke noundef align 8 ptr @_RNvMNtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_arrayNtB2_11StructArray14column_by_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.cc, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.gz, i64 noundef %i.hb)
          to label %bb.bh unwind label %.thread73.loopexit.split-lp.loopexit.i, !noalias !5699 ; 3 uses

bb.bh:                                            ; preds = %bb.bg
  %.not58.i = icmp eq ptr %i.hc, null
  br i1 %.not58.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hd = load ptr, ptr %i.hc, align 8, !noalias !5699, !nonnull !10, !noundef !10 ; 4 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.hf = load ptr, ptr %i.he, align 8, !noalias !5699, !nonnull !10, !align !12, !noundef !10 ; 2 uses
  %i.hg = atomicrmw add ptr %i.hd, i64 1 monotonic, align 8, !noalias !5699
  %i.hh = icmp slt i64 %i.hg, 0
  br i1 %i.hh, label %bb.bp, label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ee, i64 40
  %i.hj = invoke { ptr, ptr } @_RNvNtCs4ytUTZt2Gw9_11arrow_array5array14new_null_array(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hi, i64 noundef %i.cf)
          to label %bb.br unwind label %.thread73.loopexit.split-lp.loopexit.i, !noalias !5699 ; 2 uses

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.experimental.noalias.scope.decl(metadata !5720)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !5699
  store ptr %i.hd, ptr %i.ad, align 8, !noalias !5721
  store ptr %i.hf, ptr %i.ds, align 8, !noalias !5721
  %i.hk = load i64, ptr %i.dc, align 8, !alias.scope !5720, !noalias !5722, !noundef !10 ; 3 uses
  %i.hl = load i64, ptr %i.aw, align 8, !range !13, !alias.scope !5720, !noalias !5722, !noundef !10
  %i.hm = icmp eq i64 %i.hk, %i.hl
  br i1 %i.hm, label %bb.bl, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE8push_mutCsc2V0exE7CWf_11lance_arrow.exit.i

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE8grow_oneB18_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE8push_mutCsc2V0exE7CWf_11lance_arrow.exit.i unwind label %bb.bm, !noalias !5699

bb.bm:                                            ; preds = %bb.bl
  %i.hn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ho = atomicrmw sub ptr %i.hd, i64 1 release, align 8, !noalias !5723
  %i.hp = icmp eq i64 %i.ho, 1
  br i1 %i.hp, label %bb.bn, label %.thread46.i

bb.bn:                                            ; preds = %bb.bm
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ad)
          to label %.thread46.i unwind label %bb.bo, !noalias !5699

bb.bo:                                            ; preds = %bb.bn
  %i.hq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !5699
  unreachable

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE8push_mutCsc2V0exE7CWf_11lance_arrow.exit.i: ; preds = %bb.bl, %bb.bk
  %i.hr = load ptr, ptr %i.db, align 8, !alias.scope !5720, !noalias !5722, !nonnull !10, !noundef !10
  %i.hs = getelementptr inbounds nuw [16 x i8], ptr %i.hr, i64 %i.hk ; 2 uses
  store ptr %i.hd, ptr %i.hs, align 8, !noalias !5699
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  store ptr %i.hf, ptr %i.ht, align 8, !noalias !5699
  %i.hu = add i64 %i.hk, 1
  store i64 %i.hu, ptr %i.dc, align 8, !alias.scope !5720, !noalias !5722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !5699
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bi
  call void @llvm.trap()
  unreachable

bb.bq:                                            ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE8push_mutCsc2V0exE7CWf_11lance_arrow.exit119.i, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE8push_mutCsc2V0exE7CWf_11lance_arrow.exit.i
  %umax.i.i = call i64 @llvm.umax.i64(i64 %i.ec, i64 %.sroa.0.0.i.i.i95.i)
  %exitcond.not.i.i203.not = icmp ult i64 %i.ec, %.sroa.0.0.i.i.i95.i
  br i1 %exitcond.not.i.i203.not, label %.lr.ph205, label %._crit_edge206

bb.br:                                            ; preds = %bb.bj
  %i.hv = extractvalue { ptr, ptr } %i.hj, 0      ; 3 uses
  %i.hw = extractvalue { ptr, ptr } %i.hj, 1      ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5724)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !5699
  store ptr %i.hv, ptr %i.ac, align 8, !noalias !5725
  store ptr %i.hw, ptr %i.dt, align 8, !noalias !5725
  %i.hx = load i64, ptr %i.dc, align 8, !alias.scope !5724, !noalias !5726, !noundef !10 ; 3 uses
  %i.hy = load i64, ptr %i.aw, align 8, !range !13, !alias.scope !5724, !noalias !5726, !noundef !10
  %i.hz = icmp eq i64 %i.hx, %i.hy
  br i1 %i.hz, label %bb.bs, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE8push_mutCsc2V0exE7CWf_11lance_arrow.exit119.i

bb.bs:                                            ; preds = %bb.br
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE8grow_oneB18_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE8push_mutCsc2V0exE7CWf_11lance_arrow.exit119.i unwind label %bb.bt, !noalias !5699

bb.bt:                                            ; preds = %bb.bs
  %i.ia = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ib = atomicrmw sub ptr %i.hv, i64 1 release, align 8, !noalias !5727
  %i.ic = icmp eq i64 %i.ib, 1
  br i1 %i.ic, label %bb.bu, label %.thread46.i

bb.bu:                                            ; preds = %bb.bt
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ac)
          to label %.thread46.i unwind label %bb.bv, !noalias !5699

bb.bv:                                            ; preds = %bb.bu
  %i.id = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !5699
  unreachable

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE8push_mutCsc2V0exE7CWf_11lance_arrow.exit119.i: ; preds = %bb.bs, %bb.br
  %i.ie = load ptr, ptr %i.db, align 8, !alias.scope !5724, !noalias !5726, !nonnull !10, !noundef !10
  %i.if = getelementptr inbounds nuw [16 x i8], ptr %i.ie, i64 %i.hx ; 2 uses
  store ptr %i.hv, ptr %i.if, align 8, !noalias !5699
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  store ptr %i.hw, ptr %i.ig, align 8, !noalias !5699
  %i.ih = add i64 %i.hx, 1
  store i64 %i.ih, ptr %i.dc, align 8, !alias.scope !5724, !noalias !5726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !5699
  br label %bb.bq

bb.bw:                                            ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !5728)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !5699
  store ptr %i.dm, ptr %i.ab, align 8, !noalias !5729
  %i.ii = load i64, ptr %i.da, align 8, !alias.scope !5728, !noalias !5699, !noundef !10 ; 3 uses
  %i.ij = load i64, ptr %i.ax, align 8, !range !13, !alias.scope !5728, !noalias !5699, !noundef !10
  %i.ik = icmp eq i64 %i.ii, %i.ij
  br i1 %i.ik, label %bb.bx, label %bb.cc

bb.bx:                                            ; preds = %bb.bw
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE8grow_oneB17_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %bb.cc unwind label %bb.by, !noalias !5699

bb.by:                                            ; preds = %bb.bx
  %i.il = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.im = atomicrmw sub ptr %i.dm, i64 1 release, align 8, !noalias !5730
  %i.in = icmp eq i64 %i.im, 1
  br i1 %i.in, label %bb.bz, label %.thread46.i

bb.bz:                                            ; preds = %bb.by
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %.thread46.i unwind label %bb.ca, !noalias !5699

bb.ca:                                            ; preds = %bb.bz
  %i.io = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !5699
  unreachable

bb.cb:                                            ; preds = %bb.o
  call void @llvm.trap()
  unreachable

bb.cc:                                            ; preds = %bb.bx, %bb.bw
  %i.ip = load ptr, ptr %i.cz, align 8, !alias.scope !5728, !noalias !5699, !nonnull !10, !noundef !10
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %i.ii
  store ptr %i.dm, ptr %i.iq, align 8, !noalias !5699
  %i.ir = add i64 %i.ii, 1
  store i64 %i.ir, ptr %i.da, align 8, !alias.scope !5728, !noalias !5699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !5699
  %i.is = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.it = load ptr, ptr %i.is, align 8, !noalias !5699, !nonnull !10, !noundef !10
  %i.iu = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.iv = load i64, ptr %i.iu, align 8, !noalias !5699, !noundef !10
  %i.iw = invoke noundef align 8 ptr @_RNvMNtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_arrayNtB2_11StructArray14column_by_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.cc, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.it, i64 noundef %i.iv)
          to label %bb.cd unwind label %.thread73.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !5699 ; 3 uses

bb.cd:                                            ; preds = %bb.cc
  %.not59.i = icmp eq ptr %i.iw, null
  br i1 %.not59.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ix = load ptr, ptr %i.iw, align 8, !noalias !5699, !nonnull !10, !noundef !10 ; 4 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.iz = load ptr, ptr %i.iy, align 8, !noalias !5699, !nonnull !10, !align !12, !noundef !10 ; 2 uses
  %i.ja = atomicrmw add ptr %i.ix, i64 1 monotonic, align 8, !noalias !5699
  %i.jb = icmp slt i64 %i.ja, 0
  br i1 %i.jb, label %bb.cl, label %bb.cg

bb.cf:                                            ; preds = %bb.cd
  %i.jc = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  %i.jd = invoke { ptr, ptr } @_RNvNtCs4ytUTZt2Gw9_11arrow_array5array14new_null_array(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jc, i64 noundef %i.cf)
          to label %bb.cn unwind label %.thread73.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !5699 ; 2 uses

bb.cg:                                            ; preds = %bb.ce
  call void @llvm.experimental.noalias.scope.decl(metadata !5731)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !5699
  store ptr %i.ix, ptr %i.aa, align 8, !noalias !5732
  store ptr %i.iz, ptr %i.di, align 8, !noalias !5732
  %i.je = load i64, ptr %i.dc, align 8, !alias.scope !5731, !noalias !5733, !noundef !10 ; 3 uses
  %i.jf = load i64, ptr %i.aw, align 8, !range !13, !alias.scope !5731, !noalias !5733, !noundef !10
  %i.jg = icmp eq i64 %i.je, %i.jf
  br i1 %i.jg, label %bb.ch, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE8push_mutCsc2V0exE7CWf_11lance_arrow.exit131.i

bb.ch:                                            ; preds = %bb.cg
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE8grow_oneB18_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE8push_mutCsc2V0exE7CWf_11lance_arrow.exit131.i unwind label %bb.ci, !noalias !5699

bb.ci:                                            ; preds = %bb.ch
  %i.jh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ji = atomicrmw sub ptr %i.ix, i64 1 release, align 8, !noalias !5734
  %i.jj = icmp eq i64 %i.ji, 1
  br i1 %i.jj, label %bb.cj, label %.thread46.i

bb.cj:                                            ; preds = %bb.ci
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aa)
          to label %.thread46.i unwind label %bb.ck, !noalias !5699

bb.ck:                                            ; preds = %bb.cj
  %i.jk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !5699
  unreachable

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE8push_mutCsc2V0exE7CWf_11lance_arrow.exit131.i: ; preds = %bb.ch, %bb.cg
  %i.jl = load ptr, ptr %i.db, align 8, !alias.scope !5731, !noalias !5733, !nonnull !10, !noundef !10
  %i.jm = getelementptr inbounds nuw [16 x i8], ptr %i.jl, i64 %i.je ; 2 uses
  store ptr %i.ix, ptr %i.jm, align 8, !noalias !5699
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  store ptr %i.iz, ptr %i.jn, align 8, !noalias !5699
  %i.jo = add i64 %i.je, 1
  store i64 %i.jo, ptr %i.dc, align 8, !alias.scope !5731, !noalias !5733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !5699
  br label %bb.cm

bb.cl:                                            ; preds = %bb.ce
  call void @llvm.trap()
  unreachable

bb.cm:                                            ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE8push_mutCsc2V0exE7CWf_11lance_arrow.exit137.i, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE8push_mutCsc2V0exE7CWf_11lance_arrow.exit131.i
  %exitcond.not.i = icmp eq i64 %i.dk, %.sroa.0.0.i.i.i.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.o

bb.cn:                                            ; preds = %bb.cf
  %i.jp = extractvalue { ptr, ptr } %i.jd, 0      ; 3 uses
  %i.jq = extractvalue { ptr, ptr } %i.jd, 1      ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5735)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !5699
  store ptr %i.jp, ptr %i.z, align 8, !noalias !5736
  store ptr %i.jq, ptr %i.dj, align 8, !noalias !5736
  %i.jr = load i64, ptr %i.dc, align 8, !alias.scope !5735, !noalias !5737, !noundef !10 ; 3 uses
  %i.js = load i64, ptr %i.aw, align 8, !range !13, !alias.scope !5735, !noalias !5737, !noundef !10
  %i.jt = icmp eq i64 %i.jr, %i.js
  br i1 %i.jt, label %bb.co, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE8push_mutCsc2V0exE7CWf_11lance_arrow.exit137.i

bb.co:                                            ; preds = %bb.cn
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE8grow_oneB18_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE8push_mutCsc2V0exE7CWf_11lance_arrow.exit137.i unwind label %bb.cp, !noalias !5699

bb.cp:                                            ; preds = %bb.co
  %i.ju = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jv = atomicrmw sub ptr %i.jp, i64 1 release, align 8, !noalias !5738
  %i.jw = icmp eq i64 %i.jv, 1
  br i1 %i.jw, label %bb.cq, label %.thread46.i

bb.cq:                                            ; preds = %bb.cp
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.z)
          to label %.thread46.i unwind label %bb.cr, !noalias !5699

bb.cr:                                            ; preds = %bb.cq
  %i.jx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !5699
  unreachable

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE8push_mutCsc2V0exE7CWf_11lance_arrow.exit137.i: ; preds = %bb.co, %bb.cn
end_hunk_0
begin_hunk_1_@_RNvCsc2V0exE7CWf_11lance_arrow22merge_list_struct_null:bb.a
  store ptr %i.oy, ptr %.sroa.038.sroa.0.sroa.4.0..sroa_idx.i68, align 8, !noalias !5741
  %.sroa.038.sroa.0.sroa.5.0..sroa_idx.i69 = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.pb = load <2 x i64>, ptr %i.oz, align 8
  store <2 x i64> %i.pb, ptr %.sroa.038.sroa.0.sroa.5.0..sroa_idx.i69, align 8, !noalias !5741
  %.sroa.038.sroa.5.0..sroa_idx.i71 = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.pc = load <2 x i64>, ptr %i.pa, align 8
  store <2 x i64> %i.pc, ptr %.sroa.038.sroa.5.0..sroa_idx.i71, align 8, !noalias !5741
  br label %bb.ef

bb.eh:                                            ; preds = %bb.ed
  call void @llvm.trap()
  unreachable

bb.ei:                                            ; preds = %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !5754
  %i.pd = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.pd, i64 32, i1 false), !noalias !5753
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @194, i64 noundef 43, ptr noundef nonnull %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @195, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #36
          to label %bb.ek unwind label %bb.ej, !noalias !5755

bb.ej:                                            ; preds = %bb.ei
  %i.pe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j) #37
          to label %common.resume unwind label %bb.el, !noalias !5755

bb.ek:                                            ; preds = %bb.ei
  unreachable

bb.el:                                            ; preds = %bb.ej
  %i.pf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !5755
  unreachable

bb.em:                                            ; preds = %bb.ef
  %i.pg = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !5741
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.pg, ptr noundef nonnull readonly align 8 dereferenceable(112) %i.l, i64 112, i1 false), !noalias !5741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !5741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !5741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !5741
  store i64 1, ptr %i.k, align 8, !noalias !5741
  %i.ph = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 1, ptr %i.ph, align 8, !noalias !5741
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !5756
  %i.pi = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef 8) #39, !noalias !5756 ; 3 uses
  %i.pj = icmp eq ptr %i.pi, null
  br i1 %i.pj, label %bb.en, label %_RINvCsc2V0exE7CWf_11lance_arrow29merge_list_struct_null_helperxRNtNtCs40k4W9msRzi_5alloc6string6StringEB2_.exit, !prof !11

bb.en:                                            ; preds = %bb.em
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #36
          to label %.noexc102.i73 unwind label %bb.eo

.noexc102.i73:                                    ; preds = %bb.en
  unreachable

bb.eo:                                            ; preds = %bb.en
  %i.pk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArrayxEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.pg)
          to label %common.resume unwind label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.pl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread95.i63:                                    ; preds = %bb.dy, %.thread87.i62
  %.pn91.i64 = phi { ptr, i32 } [ %i.oc, %.thread87.i62 ], [ %i.oh, %bb.dy ] ; 2 uses
  %i.pm = atomicrmw sub ptr %i.nr, i64 1 release, align 8, !noalias !5757
  %i.pn = icmp eq i64 %i.pm, 1
  br i1 %i.pn, label %bb.eq, label %common.resume

bb.eq:                                            ; preds = %.thread95.i63
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_array11StructArrayE9drop_slowCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.w)
          to label %common.resume unwind label %bb.er

bb.er:                                            ; preds = %bb.gl, %.thread46.i23, %bb.eq
  %i.po = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.es:                                            ; preds = %bb.dk
  call void @llvm.experimental.noalias.scope.decl(metadata !5758)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5741
  store ptr %i.nf, ptr %i.f, align 8, !noalias !5759
  %i.pp = load i64, ptr %i.mb, align 8, !alias.scope !5758, !noalias !5741, !noundef !10 ; 3 uses
  %i.pq = load i64, ptr %i.y, align 8, !range !13, !alias.scope !5758, !noalias !5741, !noundef !10
  %i.pr = icmp eq i64 %i.pp, %i.pq
  br i1 %i.pr, label %bb.et, label %bb.ey

bb.et:                                            ; preds = %bb.es
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE8grow_oneB17_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %bb.ey unwind label %bb.eu, !noalias !5741

bb.eu:                                            ; preds = %bb.et
  %i.ps = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pt = atomicrmw sub ptr %i.nf, i64 1 release, align 8, !noalias !5760
  %i.pu = icmp eq i64 %i.pt, 1
  br i1 %i.pu, label %bb.ev, label %.thread46.i23

bb.ev:                                            ; preds = %bb.eu
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.thread46.i23 unwind label %bb.ew, !noalias !5741

bb.ew:                                            ; preds = %bb.ev
  %i.pv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !5741
  unreachable

bb.ex:                                            ; preds = %bb.dk
  call void @llvm.trap()
  unreachable

bb.ey:                                            ; preds = %bb.et, %bb.es
  %i.pw = load ptr, ptr %i.ma, align 8, !alias.scope !5758, !noalias !5741, !nonnull !10, !noundef !10
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.pw, i64 %i.pp
  store ptr %i.nf, ptr %i.px, align 8, !noalias !5741
  %i.py = add i64 %i.pp, 1
  store i64 %i.py, ptr %i.mb, align 8, !alias.scope !5758, !noalias !5741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5741
  %i.pz = getelementptr inbounds nuw i8, ptr %i.nf, i64 24
  %i.qa = load ptr, ptr %i.pz, align 8, !noalias !5741, !nonnull !10, !noundef !10
  %i.qb = getelementptr inbounds nuw i8, ptr %i.nf, i64 32
  %i.qc = load i64, ptr %i.qb, align 8, !noalias !5741, !noundef !10
  %i.qd = invoke noundef align 8 ptr @_RNvMNtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_arrayNtB2_11StructArray14column_by_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ld, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.qa, i64 noundef %i.qc)
          to label %bb.ez unwind label %.thread73.loopexit.split-lp.loopexit.i51, !noalias !5741 ; 3 uses

bb.ez:                                            ; preds = %bb.ey
  %.not58.i53 = icmp eq ptr %i.qd, null
  br i1 %.not58.i53, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.qe = load ptr, ptr %i.qd, align 8, !noalias !5741, !nonnull !10, !noundef !10 ; 4 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qd, i64 8
  %i.qg = load ptr, ptr %i.qf, align 8, !noalias !5741, !nonnull !10, !align !12, !noundef !10 ; 2 uses
  %i.qh = atomicrmw add ptr %i.qe, i64 1 monotonic, align 8, !noalias !5741
  %i.qi = icmp slt i64 %i.qh, 0
  br i1 %i.qi, label %bb.fh, label %bb.fc

bb.fb:                                            ; preds = %bb.ez
  %i.qj = getelementptr inbounds nuw i8, ptr %i.nf, i64 40
  %i.qk = invoke { ptr, ptr } @_RNvNtCs4ytUTZt2Gw9_11arrow_array5array14new_null_array(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qj, i64 noundef %i.lg)
          to label %bb.fj unwind label %.thread73.loopexit.split-lp.loopexit.i51, !noalias !5741 ; 2 uses

bb.fc:                                            ; preds = %bb.fa
  call void @llvm.experimental.noalias.scope.decl(metadata !5761)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5741
  store ptr %i.qe, ptr %i.e, align 8, !noalias !5762
  store ptr %i.qg, ptr %i.mt, align 8, !noalias !5762
  %i.ql = load i64, ptr %i.md, align 8, !alias.scope !5761, !noalias !5763, !noundef !10 ; 3 uses
  %i.qm = load i64, ptr %i.x, align 8, !range !13, !alias.scope !5761, !noalias !5763, !noundef !10
  %i.qn = icmp eq i64 %i.ql, %i.qm
  br i1 %i.qn, label %bb.fd, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE8push_mutCsc2V0exE7CWf_11lance_arrow.exit.i54

bb.fd:                                            ; preds = %bb.fc
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE8grow_oneB18_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE8push_mutCsc2V0exE7CWf_11lance_arrow.exit.i54 unwind label %bb.fe, !noalias !5741

bb.fe:                                            ; preds = %bb.fd
  %i.qo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qp = atomicrmw sub ptr %i.qe, i64 1 release, align 8, !noalias !5764
  %i.qq = icmp eq i64 %i.qp, 1
  br i1 %i.qq, label %bb.ff, label %.thread46.i23

bb.ff:                                            ; preds = %bb.fe
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %.thread46.i23 unwind label %bb.fg, !noalias !5741

bb.fg:                                            ; preds = %bb.ff
  %i.qr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !5741
  unreachable

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE8push_mutCsc2V0exE7CWf_11lance_arrow.exit.i54: ; preds = %bb.fd, %bb.fc
  %i.qs = load ptr, ptr %i.mc, align 8, !alias.scope !5761, !noalias !5763, !nonnull !10, !noundef !10
  %i.qt = getelementptr inbounds nuw [16 x i8], ptr %i.qs, i64 %i.ql ; 2 uses
  store ptr %i.qe, ptr %i.qt, align 8, !noalias !5741
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 8
  store ptr %i.qg, ptr %i.qu, align 8, !noalias !5741
  %i.qv = add i64 %i.ql, 1
  store i64 %i.qv, ptr %i.md, align 8, !alias.scope !5761, !noalias !5763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5741
  br label %bb.fi

bb.fh:                                            ; preds = %bb.fa
  call void @llvm.trap()
  unreachable

bb.fi:                                            ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE8push_mutCsc2V0exE7CWf_11lance_arrow.exit119.i55, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE8push_mutCsc2V0exE7CWf_11lance_arrow.exit.i54
  %umax.i.i45 = call i64 @llvm.umax.i64(i64 %i.nd, i64 %.sroa.0.0.i.i.i95.i43)
  %exitcond.not.i.i46198.not = icmp ult i64 %i.nd, %.sroa.0.0.i.i.i95.i43
  br i1 %exitcond.not.i.i46198.not, label %.lr.ph, label %._crit_edge

bb.fj:                                            ; preds = %bb.fb
  %i.qw = extractvalue { ptr, ptr } %i.qk, 0      ; 3 uses
  %i.qx = extractvalue { ptr, ptr } %i.qk, 1      ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5765)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5741
  store ptr %i.qw, ptr %i.d, align 8, !noalias !5766
  store ptr %i.qx, ptr %i.mu, align 8, !noalias !5766
  %i.qy = load i64, ptr %i.md, align 8, !alias.scope !5765, !noalias !5767, !noundef !10 ; 3 uses
  %i.qz = load i64, ptr %i.x, align 8, !range !13, !alias.scope !5765, !noalias !5767, !noundef !10
  %i.ra = icmp eq i64 %i.qy, %i.qz
  br i1 %i.ra, label %bb.fk, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE8push_mutCsc2V0exE7CWf_11lance_arrow.exit119.i55

bb.fk:                                            ; preds = %bb.fj
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE8grow_oneB18_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE8push_mutCsc2V0exE7CWf_11lance_arrow.exit119.i55 unwind label %bb.fl, !noalias !5741

bb.fl:                                            ; preds = %bb.fk
  %i.rb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rc = atomicrmw sub ptr %i.qw, i64 1 release, align 8, !noalias !5768
  %i.rd = icmp eq i64 %i.rc, 1
  br i1 %i.rd, label %bb.fm, label %.thread46.i23

bb.fm:                                            ; preds = %bb.fl
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %.thread46.i23 unwind label %bb.fn, !noalias !5741

bb.fn:                                            ; preds = %bb.fm
  %i.re = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !5741
  unreachable

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE8push_mutCsc2V0exE7CWf_11lance_arrow.exit119.i55: ; preds = %bb.fk, %bb.fj
  %i.rf = load ptr, ptr %i.mc, align 8, !alias.scope !5765, !noalias !5767, !nonnull !10, !noundef !10
  %i.rg = getelementptr inbounds nuw [16 x i8], ptr %i.rf, i64 %i.qy ; 2 uses
  store ptr %i.qw, ptr %i.rg, align 8, !noalias !5741
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 8
  store ptr %i.qx, ptr %i.rh, align 8, !noalias !5741
  %i.ri = add i64 %i.qy, 1
  store i64 %i.ri, ptr %i.md, align 8, !alias.scope !5765, !noalias !5767
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5741
  br label %bb.fi

bb.fo:                                            ; preds = %bb.dg
  call void @llvm.experimental.noalias.scope.decl(metadata !5769)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5741
  store ptr %i.mn, ptr %i.c, align 8, !noalias !5770
  %i.rj = load i64, ptr %i.mb, align 8, !alias.scope !5769, !noalias !5741, !noundef !10 ; 3 uses
  %i.rk = load i64, ptr %i.y, align 8, !range !13, !alias.scope !5769, !noalias !5741, !noundef !10
  %i.rl = icmp eq i64 %i.rj, %i.rk
  br i1 %i.rl, label %bb.fp, label %bb.fu

bb.fp:                                            ; preds = %bb.fo
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE8grow_oneB17_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %bb.fu unwind label %bb.fq, !noalias !5741

bb.fq:                                            ; preds = %bb.fp
  %i.rm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rn = atomicrmw sub ptr %i.mn, i64 1 release, align 8, !noalias !5771
  %i.ro = icmp eq i64 %i.rn, 1
  br i1 %i.ro, label %bb.fr, label %.thread46.i23

bb.fr:                                            ; preds = %bb.fq
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.thread46.i23 unwind label %bb.fs, !noalias !5741

bb.fs:                                            ; preds = %bb.fr
  %i.rp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !5741
  unreachable

bb.ft:                                            ; preds = %bb.dg
  call void @llvm.trap()
  unreachable

bb.fu:                                            ; preds = %bb.fp, %bb.fo
  %i.rq = load ptr, ptr %i.ma, align 8, !alias.scope !5769, !noalias !5741, !nonnull !10, !noundef !10
  %i.rr = getelementptr inbounds nuw [8 x i8], ptr %i.rq, i64 %i.rj
  store ptr %i.mn, ptr %i.rr, align 8, !noalias !5741
  %i.rs = add i64 %i.rj, 1
  store i64 %i.rs, ptr %i.mb, align 8, !alias.scope !5769, !noalias !5741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5741
  %i.rt = getelementptr inbounds nuw i8, ptr %i.mn, i64 24
  %i.ru = load ptr, ptr %i.rt, align 8, !noalias !5741, !nonnull !10, !noundef !10
  %i.rv = getelementptr inbounds nuw i8, ptr %i.mn, i64 32
  %i.rw = load i64, ptr %i.rv, align 8, !noalias !5741, !noundef !10
  %i.rx = invoke noundef align 8 ptr @_RNvMNtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_arrayNtB2_11StructArray14column_by_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ld, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ru, i64 noundef %i.rw)
          to label %bb.fv unwind label %.thread73.loopexit.split-lp.loopexit.split-lp.loopexit.i35, !noalias !5741 ; 3 uses

bb.fv:                                            ; preds = %bb.fu
  %.not59.i37 = icmp eq ptr %i.rx, null
  br i1 %.not59.i37, label %bb.fx, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.ry = load ptr, ptr %i.rx, align 8, !noalias !5741, !nonnull !10, !noundef !10 ; 4 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rx, i64 8
  %i.sa = load ptr, ptr %i.rz, align 8, !noalias !5741, !nonnull !10, !align !12, !noundef !10 ; 2 uses
  %i.sb = atomicrmw add ptr %i.ry, i64 1 monotonic, align 8, !noalias !5741
  %i.sc = icmp slt i64 %i.sb, 0
  br i1 %i.sc, label %bb.gd, label %bb.fy

bb.fx:                                            ; preds = %bb.fv
  %i.sd = getelementptr inbounds nuw i8, ptr %i.mn, i64 40
  %i.se = invoke { ptr, ptr } @_RNvNtCs4ytUTZt2Gw9_11arrow_array5array14new_null_array(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.sd, i64 noundef %i.lg)
          to label %bb.gf unwind label %.thread73.loopexit.split-lp.loopexit.split-lp.loopexit.i35, !noalias !5741 ; 2 uses

bb.fy:                                            ; preds = %bb.fw
  call void @llvm.experimental.noalias.scope.decl(metadata !5772)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5741
  store ptr %i.ry, ptr %i.b, align 8, !noalias !5773
  store ptr %i.sa, ptr %i.mj, align 8, !noalias !5773
  %i.sf = load i64, ptr %i.md, align 8, !alias.scope !5772, !noalias !5774, !noundef !10 ; 3 uses
  %i.sg = load i64, ptr %i.x, align 8, !range !13, !alias.scope !5772, !noalias !5774, !noundef !10
  %i.sh = icmp eq i64 %i.sf, %i.sg
  br i1 %i.sh, label %bb.fz, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE8push_mutCsc2V0exE7CWf_11lance_arrow.exit131.i38

bb.fz:                                            ; preds = %bb.fy
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE8grow_oneB18_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE8push_mutCsc2V0exE7CWf_11lance_arrow.exit131.i38 unwind label %bb.ga, !noalias !5741

bb.ga:                                            ; preds = %bb.fz
  %i.si = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sj = atomicrmw sub ptr %i.ry, i64 1 release, align 8, !noalias !5775
  %i.sk = icmp eq i64 %i.sj, 1
  br i1 %i.sk, label %bb.gb, label %.thread46.i23

bb.gb:                                            ; preds = %bb.ga
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %.thread46.i23 unwind label %bb.gc, !noalias !5741

bb.gc:                                            ; preds = %bb.gb
  %i.sl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !5741
  unreachable

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE8push_mutCsc2V0exE7CWf_11lance_arrow.exit131.i38: ; preds = %bb.fz, %bb.fy
  %i.sm = load ptr, ptr %i.mc, align 8, !alias.scope !5772, !noalias !5774, !nonnull !10, !noundef !10
  %i.sn = getelementptr inbounds nuw [16 x i8], ptr %i.sm, i64 %i.sf ; 2 uses
  store ptr %i.ry, ptr %i.sn, align 8, !noalias !5741
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 8
  store ptr %i.sa, ptr %i.so, align 8, !noalias !5741
  %i.sp = add i64 %i.sf, 1
  store i64 %i.sp, ptr %i.md, align 8, !alias.scope !5772, !noalias !5774
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5741
  br label %bb.ge

bb.gd:                                            ; preds = %bb.fw
  call void @llvm.trap()
  unreachable

bb.ge:                                            ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE8push_mutCsc2V0exE7CWf_11lance_arrow.exit137.i76, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE8push_mutCsc2V0exE7CWf_11lance_arrow.exit131.i38
  %exitcond.not.i39 = icmp eq i64 %i.ml, %.sroa.0.0.i.i.i.i31
  br i1 %exitcond.not.i39, label %._crit_edge.i40, label %bb.dg

bb.gf:                                            ; preds = %bb.fx
  %i.sq = extractvalue { ptr, ptr } %i.se, 0      ; 3 uses
  %i.sr = extractvalue { ptr, ptr } %i.se, 1      ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5776)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5741
  store ptr %i.sq, ptr %i.a, align 8, !noalias !5777
  store ptr %i.sr, ptr %i.mk, align 8, !noalias !5777
  %i.ss = load i64, ptr %i.md, align 8, !alias.scope !5776, !noalias !5778, !noundef !10 ; 3 uses
  %i.st = load i64, ptr %i.x, align 8, !range !13, !alias.scope !5776, !noalias !5778, !noundef !10
  %i.su = icmp eq i64 %i.ss, %i.st
  br i1 %i.su, label %bb.gg, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE8push_mutCsc2V0exE7CWf_11lance_arrow.exit137.i76

bb.gg:                                            ; preds = %bb.gf
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE8grow_oneB18_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE8push_mutCsc2V0exE7CWf_11lance_arrow.exit137.i76 unwind label %bb.gh, !noalias !5741

bb.gh:                                            ; preds = %bb.gg
  %i.sv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sw = atomicrmw sub ptr %i.sq, i64 1 release, align 8, !noalias !5779
  %i.sx = icmp eq i64 %i.sw, 1
  br i1 %i.sx, label %bb.gi, label %.thread46.i23

bb.gi:                                            ; preds = %bb.gh
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %.thread46.i23 unwind label %bb.gj, !noalias !5741

bb.gj:                                            ; preds = %bb.gi
  %i.sy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !5741
  unreachable

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EE8push_mutCsc2V0exE7CWf_11lance_arrow.exit137.i76: ; preds = %bb.gg, %bb.gf
end_hunk_1
begin_hunk_2_@_RNvXsc_NtCskKR1pP4skmg_5jsonb5errorNtB5_5ErrorNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt:bb.a

bb.d:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @476, i64 noundef 10)
  br label %bb.v

bb.e:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @541, i64 noundef 12)
  br label %bb.v

bb.f:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @542, i64 noundef 11)
  br label %bb.v

bb.g:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @543, i64 noundef 11)
  br label %bb.v

bb.h:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @544, i64 noundef 12)
  br label %bb.v

bb.i:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @545, i64 noundef 18)
  br label %bb.v

bb.j:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @546, i64 noundef 18)
  br label %bb.v

bb.k:                                             ; preds = %bb.a
  %i.o = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @547, i64 noundef 18)
  br label %bb.v

bb.l:                                             ; preds = %bb.a
  %i.p = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @548, i64 noundef 21)
  br label %bb.v

bb.m:                                             ; preds = %bb.a
  %i.q = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @549, i64 noundef 15)
  br label %bb.v

bb.n:                                             ; preds = %bb.a
  %i.r = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @550, i64 noundef 24)
  br label %bb.v

bb.o:                                             ; preds = %bb.a
  %i.s = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @551, i64 noundef 14)
  br label %bb.v

bb.p:                                             ; preds = %bb.a
  %i.t = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @552, i64 noundef 15)
  br label %bb.v

bb.q:                                             ; preds = %bb.a
  %i.u = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @553, i64 noundef 13)
  br label %bb.v

bb.r:                                             ; preds = %bb.a
  %i.v = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @493, i64 noundef 18)
  br label %bb.v

bb.s:                                             ; preds = %bb.a
  %i.w = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @554, i64 noundef 14)
  br label %bb.v

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.b, align 8
  %i.y = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @555, i64 noundef 7, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.v

bb.u:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.z, ptr %i.a, align 8
  %i.aa = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @557, i64 noundef 6, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @556, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @471)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.c ], [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.j, %bb.f ], [ %i.k, %bb.g ], [ %i.l, %bb.h ], [ %i.m, %bb.i ], [ %i.n, %bb.j ], [ %i.o, %bb.k ], [ %i.p, %bb.l ], [ %i.q, %bb.m ], [ %i.r, %bb.n ], [ %i.s, %bb.o ], [ %i.t, %bb.p ], [ %i.u, %bb.q ], [ %i.v, %bb.r ], [ %i.w, %bb.s ], [ %i.y, %bb.t ], [ %i.aa, %bb.u ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsd_NtNtCscI6d9CVNmLh_4core5alloc6layoutNtB5_11LayoutErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @558, i64 noundef 11)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsm_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorEL_ENtNtBM_3fmt7Display3fmtCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !10, !align !12, !noundef !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !10, !nonnull !10
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsn_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10
  %i.b = tail call fastcc noundef zeroext i1 @_RNvXs3_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !10
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCscI6d9CVNmLh_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !10
  %i.e = tail call noundef zeroext i1 @_RNvXsh_NtCscI6d9CVNmLh_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNvYINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB7_5array10byte_array16GenericByteArrayINtNtB7_5types17GenericStringTypelEEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCsc2V0exE7CWf_11lance_arrow(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13449)
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB1i_5array10byte_array16GenericByteArrayINtNtB1i_5types17GenericStringTypelEEENtB4_13SpecAdvanceBy15spec_advance_byCsc2V0exE7CWf_11lance_arrow.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13450)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !13451, !noalias !13452, !noundef !10 ; 4 uses
  %.promoted.i.i = load i64, ptr %i.a, align 8, !alias.scope !13451, !noalias !13452 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !13453
  %.fr.i.i = freeze ptr %i.e
  %.not.i.i.i.i = icmp eq ptr %.fr.i.i, null
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !13453
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !13453
  %.val.i.i.i = load ptr, ptr %0, align 8, !alias.scope !13453, !nonnull !10, !align !12
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 40 ; 2 uses
  br i1 %.not.i.i.i.i, label %.split.us.i.i.preheader, label %.split.i.preheader.i

.split.us.i.i.preheader:                          ; preds = %bb.b
  %i.k = sub i64 %i.c, %.promoted.i.i
  %i.l = add i64 %1, -1
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.l)
  %i.n = add i64 %i.m, 1                          ; 3 uses
  %min.iters.check15 = icmp ult i64 %i.n, 5
  br i1 %min.iters.check15, label %.split.us.i.i.preheader32, label %vector.ph16

.split.us.i.i.preheader32.loopexit:               ; preds = %vector.body21
  store i64 %i.v, ptr %i.a, align 8, !alias.scope !13451, !noalias !13452
  br label %.split.us.i.i.preheader32

.split.us.i.i.preheader32:                        ; preds = %.split.us.i.i.preheader32.loopexit, %.split.us.i.i.preheader
  %.ph = phi i64 [ %.promoted.i.i, %.split.us.i.i.preheader ], [ %i.r, %.split.us.i.i.preheader32.loopexit ]
  %.sroa.01.0.us.i.i.ph = phi i64 [ %1, %.split.us.i.i.preheader ], [ %i.s, %.split.us.i.i.preheader32.loopexit ]
  br label %.split.us.i.i

vector.ph16:                                      ; preds = %.split.us.i.i.preheader
  %i.o = and i64 %i.n, 3                          ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  %i.q = select i1 %i.p, i64 4, i64 %i.o
  %n.vec17 = sub i64 %i.n, %i.q                   ; 3 uses
  %i.r = add i64 %.promoted.i.i, %n.vec17
  %i.s = sub i64 %1, %n.vec17
  %i.t = add i64 %.promoted.i.i, 1
  br label %vector.body21

vector.body21:                                    ; preds = %vector.body21, %vector.ph16
  %index22 = phi i64 [ 0, %vector.ph16 ], [ %index.next27, %vector.body21 ]
  %i.u = phi i64 [ %i.t, %vector.ph16 ], [ %i.w, %vector.body21 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13454)
  %i.v = add i64 %i.u, 3
  %index.next27 = add nuw i64 %index22, 4         ; 2 uses
  %i.w = add i64 %i.u, 4
  %i.x = icmp eq i64 %index.next27, %n.vec17
  br i1 %i.x, label %.split.us.i.i.preheader32.loopexit, label %vector.body21, !llvm.loop !13441

.split.i.preheader.i:                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !13453
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.promoted.i.i, i64 %i.z) ; 2 uses
  %i.aa = sub i64 %umax.i, %.promoted.i.i
  %i.ab = add i64 %1, -1
  %.fr = freeze i64 %i.aa
  %i.ac = tail call i64 @llvm.umin.i64(i64 %.fr, i64 %i.ab)
  %i.ad = sub i64 %i.c, %.promoted.i.i
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 %i.ad)
  %i.af = add i64 %i.ae, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.af, 5
  br i1 %min.iters.check, label %.split.i.i.preheader, label %vector.ph

.split.i.i.preheader.loopexit:                    ; preds = %vector.body
  store i64 %i.an, ptr %i.a, align 8, !alias.scope !13451, !noalias !13452
  br label %.split.i.i.preheader

.split.i.i.preheader:                             ; preds = %.split.i.i.preheader.loopexit, %.split.i.preheader.i
  %.ph33 = phi i64 [ %.promoted.i.i, %.split.i.preheader.i ], [ %i.aj, %.split.i.i.preheader.loopexit ]
  %.sroa.01.0.i.i.ph = phi i64 [ %1, %.split.i.preheader.i ], [ %i.ak, %.split.i.i.preheader.loopexit ]
  br label %.split.i.i

vector.ph:                                        ; preds = %.split.i.preheader.i
  %i.ag = and i64 %i.af, 3                        ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  %i.ai = select i1 %i.ah, i64 4, i64 %i.ag
  %n.vec = sub i64 %i.af, %i.ai                   ; 3 uses
  %i.aj = add i64 %.promoted.i.i, %n.vec
  %i.ak = sub i64 %1, %n.vec
  %i.al = add i64 %.promoted.i.i, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.am = phi i64 [ %i.al, %vector.ph ], [ %i.ao, %vector.body ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13454)
  %i.an = add i64 %i.am, 3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = add i64 %i.am, 4
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %.split.i.i.preheader.loopexit, label %vector.body, !llvm.loop !13442

.split.us.i.i:                                    ; preds = %.split.us.i.i.preheader32, %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i.us.i.i
  %i.aq = phi i64 [ %i.as, %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i.us.i.i ], [ %.ph, %.split.us.i.i.preheader32 ] ; 2 uses
  %.sroa.01.0.us.i.i = phi i64 [ %i.aw, %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i.us.i.i ], [ %.sroa.01.0.us.i.i.ph, %.split.us.i.i.preheader32 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13454)
  %i.ar = icmp eq i64 %i.aq, %i.c
  br i1 %i.ar, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB1i_5array10byte_array16GenericByteArrayINtNtB1i_5types17GenericStringTypelEEENtB4_13SpecAdvanceBy15spec_advance_byCsc2V0exE7CWf_11lance_arrow.exit, label %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i.us.i.i

_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i.us.i.i: ; preds = %.split.us.i.i
  %i.as = add i64 %i.aq, 1                        ; 3 uses
  store i64 %i.as, ptr %i.a, align 8, !alias.scope !13451, !noalias !13452
  %i.at = load i64, ptr %i.j, align 8, !alias.scope !13455, !noalias !13456, !noundef !10
  %i.au = lshr i64 %i.at, 2
  %i.av = icmp ult i64 %i.as, %i.au
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = add i64 %.sroa.01.0.us.i.i, -1          ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB1i_5array10byte_array16GenericByteArrayINtNtB1i_5types17GenericStringTypelEEENtB4_13SpecAdvanceBy15spec_advance_byCsc2V0exE7CWf_11lance_arrow.exit, label %.split.us.i.i, !llvm.loop !13445

.split.i.i:                                       ; preds = %.split.i.i.preheader, %bb.e
  %i.ay = phi i64 [ %i.bj, %bb.e ], [ %.ph33, %.split.i.i.preheader ] ; 4 uses
  %.sroa.01.0.i.i = phi i64 [ %i.bn, %bb.e ], [ %.sroa.01.0.i.i.ph, %.split.i.i.preheader ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13454)
  %i.az = icmp eq i64 %i.ay, %i.c
  br i1 %i.az, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB1i_5array10byte_array16GenericByteArrayINtNtB1i_5types17GenericStringTypelEEENtB4_13SpecAdvanceBy15spec_advance_byCsc2V0exE7CWf_11lance_arrow.exit, label %bb.c

bb.c:                                             ; preds = %.split.i.i
  %exitcond.not.i = icmp eq i64 %i.ay, %umax.i
  br i1 %exitcond.not.i, label %bb.d, label %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.i.i.i, !prof !11

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @190, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #36, !noalias !13457
  unreachable

_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.i.i.i: ; preds = %bb.c
  %i.ba = add i64 %i.ay, %i.i                     ; 2 uses
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !noalias !13457, !noundef !10
  %i.be = trunc i64 %i.ba to i8
  %i.bf = and i8 %i.be, 7
  %i.bg = xor i8 %i.bd, -1
  %i.bh = lshr i8 %i.bg, %i.bf
  %i.bi = trunc i8 %i.bh to i1
  %i.bj = add i64 %i.ay, 1                        ; 3 uses
  br i1 %i.bi, label %bb.e, label %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i.i.i

_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i.i.i: ; preds = %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.i.i.i
  %i.bk = load i64, ptr %i.j, align 8, !alias.scope !13455, !noalias !13456, !noundef !10
  %i.bl = lshr i64 %i.bk, 2
  %i.bm = icmp ult i64 %i.bj, %i.bl
  tail call void @llvm.assume(i1 %i.bm)
  br label %bb.e

bb.e:                                             ; preds = %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i.i.i, %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.i.i.i
  store i64 %i.bj, ptr %i.a, align 8, !alias.scope !13451, !noalias !13452
  %i.bn = add i64 %.sroa.01.0.i.i, -1             ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB1i_5array10byte_array16GenericByteArrayINtNtB1i_5types17GenericStringTypelEEENtB4_13SpecAdvanceBy15spec_advance_byCsc2V0exE7CWf_11lance_arrow.exit, label %.split.i.i, !llvm.loop !13448

_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB1i_5array10byte_array16GenericByteArrayINtNtB1i_5types17GenericStringTypelEEENtB4_13SpecAdvanceBy15spec_advance_byCsc2V0exE7CWf_11lance_arrow.exit: ; preds = %.split.i.i, %bb.e, %.split.us.i.i, %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i.us.i.i, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ 0, %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i.us.i.i ], [ %.sroa.01.0.us.i.i, %.split.us.i.i ], [ %.sroa.01.0.i.i, %.split.i.i ], [ 0, %bb.e ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNvYINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB7_5array10byte_array16GenericByteArrayINtNtB7_5types17GenericStringTypexEEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCsc2V0exE7CWf_11lance_arrow(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13473)
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB1i_5array10byte_array16GenericByteArrayINtNtB1i_5types17GenericStringTypexEEENtB4_13SpecAdvanceBy15spec_advance_byCsc2V0exE7CWf_11lance_arrow.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13474)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !13475, !noalias !13476, !noundef !10 ; 4 uses
  %.promoted.i.i = load i64, ptr %i.a, align 8, !alias.scope !13475, !noalias !13476 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !13477
  %.fr.i.i = freeze ptr %i.e
  %.not.i.i.i.i = icmp eq ptr %.fr.i.i, null
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !13477
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !13477
  %.val.i.i.i = load ptr, ptr %0, align 8, !alias.scope !13477, !nonnull !10, !align !12
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 40 ; 2 uses
  br i1 %.not.i.i.i.i, label %.split.us.i.i.preheader, label %.split.i.preheader.i

.split.us.i.i.preheader:                          ; preds = %bb.b
  %i.k = sub i64 %i.c, %.promoted.i.i
  %i.l = add i64 %1, -1
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.l)
  %i.n = add i64 %i.m, 1                          ; 3 uses
  %min.iters.check15 = icmp ult i64 %i.n, 5
  br i1 %min.iters.check15, label %.split.us.i.i.preheader32, label %vector.ph16

.split.us.i.i.preheader32.loopexit:               ; preds = %vector.body21
  store i64 %i.v, ptr %i.a, align 8, !alias.scope !13475, !noalias !13476
  br label %.split.us.i.i.preheader32

.split.us.i.i.preheader32:                        ; preds = %.split.us.i.i.preheader32.loopexit, %.split.us.i.i.preheader
  %.ph = phi i64 [ %.promoted.i.i, %.split.us.i.i.preheader ], [ %i.r, %.split.us.i.i.preheader32.loopexit ]
  %.sroa.01.0.us.i.i.ph = phi i64 [ %1, %.split.us.i.i.preheader ], [ %i.s, %.split.us.i.i.preheader32.loopexit ]
  br label %.split.us.i.i

vector.ph16:                                      ; preds = %.split.us.i.i.preheader
  %i.o = and i64 %i.n, 3                          ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  %i.q = select i1 %i.p, i64 4, i64 %i.o
  %n.vec17 = sub i64 %i.n, %i.q                   ; 3 uses
  %i.r = add i64 %.promoted.i.i, %n.vec17
  %i.s = sub i64 %1, %n.vec17
  %i.t = add i64 %.promoted.i.i, 1
  br label %vector.body21

vector.body21:                                    ; preds = %vector.body21, %vector.ph16
  %index22 = phi i64 [ 0, %vector.ph16 ], [ %index.next27, %vector.body21 ]
  %i.u = phi i64 [ %i.t, %vector.ph16 ], [ %i.w, %vector.body21 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13478)
  %i.v = add i64 %i.u, 3
  %index.next27 = add nuw i64 %index22, 4         ; 2 uses
  %i.w = add i64 %i.u, 4
  %i.x = icmp eq i64 %index.next27, %n.vec17
  br i1 %i.x, label %.split.us.i.i.preheader32.loopexit, label %vector.body21, !llvm.loop !13465

.split.i.preheader.i:                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !13477
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.promoted.i.i, i64 %i.z) ; 2 uses
  %i.aa = sub i64 %umax.i, %.promoted.i.i
  %i.ab = add i64 %1, -1
  %.fr = freeze i64 %i.aa
  %i.ac = tail call i64 @llvm.umin.i64(i64 %.fr, i64 %i.ab)
  %i.ad = sub i64 %i.c, %.promoted.i.i
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 %i.ad)
  %i.af = add i64 %i.ae, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.af, 5
  br i1 %min.iters.check, label %.split.i.i.preheader, label %vector.ph

.split.i.i.preheader.loopexit:                    ; preds = %vector.body
  store i64 %i.an, ptr %i.a, align 8, !alias.scope !13475, !noalias !13476
  br label %.split.i.i.preheader

.split.i.i.preheader:                             ; preds = %.split.i.i.preheader.loopexit, %.split.i.preheader.i
  %.ph33 = phi i64 [ %.promoted.i.i, %.split.i.preheader.i ], [ %i.aj, %.split.i.i.preheader.loopexit ]
  %.sroa.01.0.i.i.ph = phi i64 [ %1, %.split.i.preheader.i ], [ %i.ak, %.split.i.i.preheader.loopexit ]
  br label %.split.i.i

vector.ph:                                        ; preds = %.split.i.preheader.i
  %i.ag = and i64 %i.af, 3                        ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  %i.ai = select i1 %i.ah, i64 4, i64 %i.ag
  %n.vec = sub i64 %i.af, %i.ai                   ; 3 uses
  %i.aj = add i64 %.promoted.i.i, %n.vec
  %i.ak = sub i64 %1, %n.vec
  %i.al = add i64 %.promoted.i.i, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.am = phi i64 [ %i.al, %vector.ph ], [ %i.ao, %vector.body ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13478)
  %i.an = add i64 %i.am, 3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = add i64 %i.am, 4
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %.split.i.i.preheader.loopexit, label %vector.body, !llvm.loop !13466

.split.us.i.i:                                    ; preds = %.split.us.i.i.preheader32, %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypexEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i.us.i.i
  %i.aq = phi i64 [ %i.as, %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypexEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i.us.i.i ], [ %.ph, %.split.us.i.i.preheader32 ] ; 2 uses
  %.sroa.01.0.us.i.i = phi i64 [ %i.aw, %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypexEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i.us.i.i ], [ %.sroa.01.0.us.i.i.ph, %.split.us.i.i.preheader32 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13478)
  %i.ar = icmp eq i64 %i.aq, %i.c
  br i1 %i.ar, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB1i_5array10byte_array16GenericByteArrayINtNtB1i_5types17GenericStringTypexEEENtB4_13SpecAdvanceBy15spec_advance_byCsc2V0exE7CWf_11lance_arrow.exit, label %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypexEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i.us.i.i

_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypexEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i.us.i.i: ; preds = %.split.us.i.i
  %i.as = add i64 %i.aq, 1                        ; 3 uses
  store i64 %i.as, ptr %i.a, align 8, !alias.scope !13475, !noalias !13476
  %i.at = load i64, ptr %i.j, align 8, !alias.scope !13479, !noalias !13480, !noundef !10
  %i.au = lshr i64 %i.at, 3
  %i.av = icmp ult i64 %i.as, %i.au
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = add i64 %.sroa.01.0.us.i.i, -1          ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB1i_5array10byte_array16GenericByteArrayINtNtB1i_5types17GenericStringTypexEEENtB4_13SpecAdvanceBy15spec_advance_byCsc2V0exE7CWf_11lance_arrow.exit, label %.split.us.i.i, !llvm.loop !13469

.split.i.i:                                       ; preds = %.split.i.i.preheader, %bb.e
  %i.ay = phi i64 [ %i.bj, %bb.e ], [ %.ph33, %.split.i.i.preheader ] ; 4 uses
  %.sroa.01.0.i.i = phi i64 [ %i.bn, %bb.e ], [ %.sroa.01.0.i.i.ph, %.split.i.i.preheader ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13478)
  %i.az = icmp eq i64 %i.ay, %i.c
  br i1 %i.az, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB1i_5array10byte_array16GenericByteArrayINtNtB1i_5types17GenericStringTypexEEENtB4_13SpecAdvanceBy15spec_advance_byCsc2V0exE7CWf_11lance_arrow.exit, label %bb.c

bb.c:                                             ; preds = %.split.i.i
  %exitcond.not.i = icmp eq i64 %i.ay, %umax.i
  br i1 %exitcond.not.i, label %bb.d, label %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypexEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.i.i.i, !prof !11

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @190, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #36, !noalias !13481
  unreachable

_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypexEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.i.i.i: ; preds = %bb.c
  %i.ba = add i64 %i.ay, %i.i                     ; 2 uses
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !noalias !13481, !noundef !10
  %i.be = trunc i64 %i.ba to i8
  %i.bf = and i8 %i.be, 7
  %i.bg = xor i8 %i.bd, -1
  %i.bh = lshr i8 %i.bg, %i.bf
  %i.bi = trunc i8 %i.bh to i1
  %i.bj = add i64 %i.ay, 1                        ; 3 uses
  br i1 %i.bi, label %bb.e, label %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypexEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i.i.i

_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypexEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i.i.i: ; preds = %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypexEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.i.i.i
  %i.bk = load i64, ptr %i.j, align 8, !alias.scope !13479, !noalias !13480, !noundef !10
  %i.bl = lshr i64 %i.bk, 3
  %i.bm = icmp ult i64 %i.bj, %i.bl
  tail call void @llvm.assume(i1 %i.bm)
  br label %bb.e

bb.e:                                             ; preds = %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypexEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i.i.i, %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypexEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.i.i.i
  store i64 %i.bj, ptr %i.a, align 8, !alias.scope !13475, !noalias !13476
  %i.bn = add i64 %.sroa.01.0.i.i, -1             ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB1i_5array10byte_array16GenericByteArrayINtNtB1i_5types17GenericStringTypexEEENtB4_13SpecAdvanceBy15spec_advance_byCsc2V0exE7CWf_11lance_arrow.exit, label %.split.i.i, !llvm.loop !13472

_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB1i_5array10byte_array16GenericByteArrayINtNtB1i_5types17GenericStringTypexEEENtB4_13SpecAdvanceBy15spec_advance_byCsc2V0exE7CWf_11lance_arrow.exit: ; preds = %.split.i.i, %bb.e, %.split.us.i.i, %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypexEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i.us.i.i, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ 0, %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypexEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i.us.i.i ], [ %.sroa.01.0.us.i.i, %.split.us.i.i ], [ %.sroa.01.0.i.i, %.split.i.i ], [ 0, %bb.e ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array10null_countCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !13484, !noundef !10
  %.not.i = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load i64, ptr %i.c, align 8
  %.sroa.0.0 = select i1 %.not.i, i64 0, i64 %i.d
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array11is_nullableCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !13487, !noundef !10
  %.not.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !13487
  %i.e = icmp ne i64 %i.d, 0
  %i.f = select i1 %.not.i, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal void @_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array13logical_nullsCsc2V0exE7CWf_11lance_arrow(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %1) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !13490, !noundef !10 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = atomicrmw add ptr %i.b, i64 1 monotonic, align 8
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !noundef !10
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.b, ptr %0, align 8
  %.sroa.02.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %.sroa.02.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.02.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load <2 x i64>, ptr %i.g, align 8
  store <2 x i64> %i.i, ptr %.sroa.02.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.02.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load <2 x i64>, ptr %i.h, align 8
  store <2 x i64> %i.j, ptr %.sroa.02.sroa.5.0..sroa_idx, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !13493, !noundef !10
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load i64, ptr %i.c, align 8, !noundef !10
  %i.e = icmp ult i64 %1, %i.d
  br i1 %i.e, label %bb.e, label %bb.d, !prof !15

bb.c:                                             ; preds = %bb.a, %bb.e
  %.sroa.0.0 = phi i1 [ %i.r, %bb.e ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @190, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #36
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !noundef !10
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = load i64, ptr %i.h, align 8, !noundef !10
  %i.j = add i64 %i.i, %1                         ; 2 uses
  %i.k = lshr i64 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !noundef !10
end_hunk_2
