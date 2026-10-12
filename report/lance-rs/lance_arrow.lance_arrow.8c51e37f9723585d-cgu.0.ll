Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_arrow.lance_arrow.8c51e37f9723585d-cgu.0?download=true
inline.NumInlined: 3904
inline.NumDeleted: 1641
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 14
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
begin_hunk_2_@_RNvXs_Csc2V0exE7CWf_11lance_arrowNtNtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_array18FixedSizeListArrayNtB4_21FixedSizeListArrayExt6sample:bb.a
  br i1 %.not.i.i.i.i.i, label %bb.h, label %.loopexit.i, !prof !13147

bb.h:                                             ; preds = %bb.i, %bb.g
  %.sroa.6.1.i.i.i.i.i = phi i64 [ %i.v, %bb.i ], [ %.sroa.6.029.i.i.i.i.i, %bb.g ] ; 2 uses
  %.sroa.0.1.i.i.i.i.i = phi ptr [ %i.w, %bb.i ], [ %.sroa.0.030.i.i.i.i.i, %bb.g ]
  %i.u = icmp eq i64 %.sroa.6.1.i.i.i.i.i, 0
  br i1 %i.u, label %_RNvYNtNtNtCs4Jn2LUi8st0_4rand4rngs5small8SmallRngNtCsgdD1EZdIidU_9rand_core11SeedableRng11from_os_rngCsc2V0exE7CWf_11lance_arrow.exit, label %.preheader.i.i.i.i

bb.i:                                             ; preds = %bb.f
  %i.v = sub nuw nsw i64 %.sroa.6.029.i.i.i.i.i, %i.p
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i.i.i.i.i, i64 %i.p
  br label %bb.h

_RNvCsitxk4pdPh9M_9getrandom4fill.exit.i.i:       ; preds = %bb.d
  %i.x = call noundef i32 @_RNvNtNtCsitxk4pdPh9M_9getrandom8backends27linux_android_with_fallback17use_file_fallback(ptr noalias noundef nonnull %i.d, i64 noundef 32), !noalias !13143 ; 2 uses
  %.not.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i, label %_RNvYNtNtNtCs4Jn2LUi8st0_4rand4rngs5small8SmallRngNtCsgdD1EZdIidU_9rand_core11SeedableRng11from_os_rngCsc2V0exE7CWf_11lance_arrow.exit, label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.g, %bb.f, %bb.e, %_RNvCsitxk4pdPh9M_9getrandom4fill.exit.i.i
  %.sroa.4.0.ph.i = phi i32 [ %i.x, %_RNvCsitxk4pdPh9M_9getrandom4fill.exit.i.i ], [ 65538, %bb.f ], [ 65538, %bb.e ], [ %i.t, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !13148
  store i32 %.sroa.4.0.ph.i, ptr %i.f, align 4, !noalias !13148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13148
  store ptr %i.f, ptr %i.e, align 8, !noalias !13148
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs0_NtCsitxk4pdPh9M_9getrandom5errorNtB5_5ErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !13148
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @596, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @598) #36, !noalias !13148
  unreachable

_RNvYNtNtNtCs4Jn2LUi8st0_4rand4rngs5small8SmallRngNtCsgdD1EZdIidU_9rand_core11SeedableRng11from_os_rngCsc2V0exE7CWf_11lance_arrow.exit: ; preds = %bb.h, %_RNvCsitxk4pdPh9M_9getrandom4fill.exit.i.i
  %.sroa.08.0.copyload.i.i = load i64, ptr %i.d, align 8, !noalias !13143 ; 2 uses
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.49.0.copyload.i.i = load i64, ptr %.sroa.49.0..sroa_idx.i.i, align 8, !noalias !13143 ; 2 uses
  %.sroa.510.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.510.0.copyload.i.i = load i64, ptr %.sroa.510.0..sroa_idx.i.i, align 8, !noalias !13143 ; 2 uses
  %.sroa.611.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.611.0.copyload.i.i = load i64, ptr %.sroa.611.0..sroa_idx.i.i, align 8, !noalias !13143 ; 2 uses
  %i.y = icmp eq i64 %.sroa.08.0.copyload.i.i, 0
  %i.z = icmp eq i64 %.sroa.49.0.copyload.i.i, 0
  %or.cond.i.i.i = select i1 %i.y, i1 %i.z, i1 false
  %i.aa = icmp eq i64 %.sroa.510.0.copyload.i.i, 0
  %or.cond13.i.i.i = select i1 %or.cond.i.i.i, i1 %i.aa, i1 false
  %i.ab = icmp eq i64 %.sroa.611.0.copyload.i.i, 0
  %or.cond14.i.i.i = select i1 %or.cond13.i.i.i, i1 %i.ab, i1 false ; 4 uses
  %..sroa.0.0.copyload2.i.i.i = select i1 %or.cond14.i.i.i, i64 -2152535657050944081, i64 %.sroa.08.0.copyload.i.i
  %..sroa.7.0.copyload4.i.i.i = select i1 %or.cond14.i.i.i, i64 7960286522194355700, i64 %.sroa.49.0.copyload.i.i
  %..sroa.8.0.copyload6.i.i.i = select i1 %or.cond14.i.i.i, i64 487617019471545679, i64 %.sroa.510.0.copyload.i.i
  %..sroa.9.0.copyload8.i.i.i = select i1 %or.cond14.i.i.i, i64 -537132696929009172, i64 %.sroa.611.0.copyload.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ac = trunc i64 %i.k to i32                   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13149)
  %i.ad = shl i64 %2, 2                           ; 4 uses
  %i.ae = icmp ugt i64 %2, 4611686018427387903
  %.not.i.i3 = icmp ugt i64 %i.ad, 9223372036854775804
  %or.cond.i.i = or i1 %i.ae, %.not.i.i3
  br i1 %or.cond.i.i, label %bb.m, label %bb.j, !prof !27

bb.j:                                             ; preds = %_RNvYNtNtNtCs4Jn2LUi8st0_4rand4rngs5small8SmallRngNtCsgdD1EZdIidU_9rand_core11SeedableRng11from_os_rngCsc2V0exE7CWf_11lance_arrow.exit
  %i.af = icmp eq i64 %i.ad, 0
  br i1 %i.af, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !13150
  %i.ag = call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 4) #39, !noalias !13150 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = ptrtoint ptr %i.ag to i64
  br label %bb.n

bb.m:                                             ; preds = %bb.k, %_RNvYNtNtNtCs4Jn2LUi8st0_4rand4rngs5small8SmallRngNtCsgdD1EZdIidU_9rand_core11SeedableRng11from_os_rngCsc2V0exE7CWf_11lance_arrow.exit
  %.sroa.426.0.ph.i = phi i64 [ 4, %bb.k ], [ 0, %_RNvYNtNtNtCs4Jn2LUi8st0_4rand4rngs5small8SmallRngNtCsgdD1EZdIidU_9rand_core11SeedableRng11from_os_rngCsc2V0exE7CWf_11lance_arrow.exit ]
  call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.426.0.ph.i, i64 %i.ad) #36, !noalias !13151
  unreachable

bb.n:                                             ; preds = %bb.l, %bb.j
  %.sroa.426.0.i = phi i64 [ %2, %bb.l ], [ 0, %bb.j ] ; 6 uses
  %.sroa.10.0.i = phi i64 [ %i.ai, %bb.l ], [ 4, %bb.j ]
  %i.aj = inttoptr i64 %.sroa.10.0.i to ptr       ; 9 uses
  %i.ak = icmp samesign ule i64 %2, %.sroa.426.0.i
  call void @llvm.assume(i1 %i.ak)
  %i.al = icmp eq i64 %2, 0
  br i1 %i.al, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeQINtNtNtBa_3ops5range5RangemEENtNtNtB8_6traits8iterator8Iterator9size_hintCsc2V0exE7CWf_11lance_arrow.exit.i.i.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeQINtNtNtBa_3ops5range5RangemEENtNtNtB8_6traits8iterator8Iterator9size_hintCsc2V0exE7CWf_11lance_arrow.exit.i.i.i: ; preds = %bb.n
  %wide.trip.count.i = and i64 %i.k, 4294967295   ; 3 uses
  %i.am = add nsw i64 %2, -1
  %i.an = call i64 @llvm.umin.i64(i64 %i.am, i64 %wide.trip.count.i) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.an, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeQINtNtNtBa_3ops5range5RangemEENtNtNtB8_6traits8iterator8Iterator9size_hintCsc2V0exE7CWf_11lance_arrow.exit.i.i.i
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %i.ap = and i64 %i.ao, 7                        ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  %i.ar = select i1 %i.aq, i64 8, i64 %i.ap
  %n.vec = sub nsw i64 %i.ao, %i.ar               ; 3 uses
  %i.as = sub nsw i64 %2, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store <4 x i32> %vec.ind, ptr %i.at, align 4, !noalias !13152
  store <4 x i32> %step.add, ptr %i.au, align 4, !noalias !13152
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %scalar.ph.preheader, label %vector.body, !llvm.loop !13120

scalar.ph.preheader:                              ; preds = %vector.body, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeQINtNtNtBa_3ops5range5RangemEENtNtNtB8_6traits8iterator8Iterator9size_hintCsc2V0exE7CWf_11lance_arrow.exit.i.i.i
  %.val12.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeQINtNtNtBa_3ops5range5RangemEENtNtNtB8_6traits8iterator8Iterator9size_hintCsc2V0exE7CWf_11lance_arrow.exit.i.i.i ], [ %n.vec, %vector.body ]
  %.sroa.01.0.i.i.i.in.i.i.i.i.i.ph = phi i64 [ %2, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeQINtNtNtBa_3ops5range5RangemEENtNtNtB8_6traits8iterator8Iterator9size_hintCsc2V0exE7CWf_11lance_arrow.exit.i.i.i ], [ %i.as, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.o
  %.val12.i.i.i.i.i.i.i.i = phi i64 [ %i.aw, %bb.o ], [ %.val12.i.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 4 uses
  %.sroa.01.0.i.i.i.in.i.i.i.i.i = phi i64 [ %.sroa.01.0.i.i.i.i.i.i.i.i, %bb.o ], [ %.sroa.01.0.i.i.i.in.i.i.i.i.i.ph, %scalar.ph.preheader ]
  %indvars48.i = trunc i64 %.val12.i.i.i.i.i.i.i.i to i32 ; 2 uses
  %exitcond.i = icmp eq i64 %.val12.i.i.i.i.i.i.i.i, %wide.trip.count.i
  br i1 %exitcond.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %scalar.ph
  %.sroa.01.0.i.i.i.i.i.i.i.i = add nsw i64 %.sroa.01.0.i.i.i.in.i.i.i.i.i, -1 ; 2 uses
  %i.aw = add nuw nsw i64 %.val12.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.val12.i.i.i.i.i.i.i.i
  store i32 %indvars48.i, ptr %i.ax, align 4, !noalias !13152
  %i.ay = icmp eq i64 %.sroa.01.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.ay, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.loopexit.split.loop.exit71.i, label %scalar.ph, !llvm.loop !13121

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.loopexit.split.loop.exit71.i: ; preds = %bb.o
  %indvars.le.i = trunc i64 %i.aw to i32
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i: ; preds = %scalar.ph, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.loopexit.split.loop.exit71.i, %bb.n
  %.sroa.0.1.i = phi i32 [ 0, %bb.n ], [ %indvars.le.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.loopexit.split.loop.exit71.i ], [ %indvars48.i, %scalar.ph ] ; 3 uses
  %.val1.sink.i.i.i.i.i = phi i64 [ 0, %bb.n ], [ %i.aw, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.loopexit.split.loop.exit71.i ], [ %wide.trip.count.i, %scalar.ph ] ; 8 uses
  %i.az = icmp ult i64 %.val1.sink.i.i.i.i.i, 2305843009213693952
  call void @llvm.assume(i1 %i.az)
  %i.ba = icmp eq i64 %.val1.sink.i.i.i.i.i, %2
  br i1 %i.ba, label %.preheader.i, label %bb.p

.preheader.i:                                     ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i
  %i.bb = icmp ult i32 %.sroa.0.1.i, %i.ac
  br i1 %i.bb, label %.lr.ph.i, label %_RINvYINtNtNtCscI6d9CVNmLh_4core3ops5range5RangemENtNtNtCs4Jn2LUi8st0_4rand3seq8iterator14IteratorRandom15choose_multipleNtNtNtBR_4rngs5small8SmallRngECsc2V0exE7CWf_11lance_arrow.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.bc = add nuw nsw i64 %2, 1
  %i.bd = sub nuw i32 %i.ac, %.sroa.0.1.i
  %zext = zext i32 %i.bd to i64
  br label %bb.u

bb.p:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCsc2V0exE7CWf_11lance_arrow.exit.i.i.i
  %i.be = icmp samesign ugt i64 %.sroa.426.0.i, %.val1.sink.i.i.i.i.i
  br i1 %i.be, label %bb.q, label %_RINvYINtNtNtCscI6d9CVNmLh_4core3ops5range5RangemENtNtNtCs4Jn2LUi8st0_4rand3seq8iterator14IteratorRandom15choose_multipleNtNtNtBR_4rngs5small8SmallRngECsc2V0exE7CWf_11lance_arrow.exit

bb.q:                                             ; preds = %bb.p
  %i.bf = shl nuw i64 %.sroa.426.0.i, 2           ; 4 uses
  %i.bg = icmp eq i64 %.val1.sink.i.i.i.i.i, 0
  br i1 %i.bg, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i, label %bb.r

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.q
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %i.bf, i64 noundef range(i64 1, -9223372036854775807) 4) #39, !noalias !13153
  br label %_RINvYINtNtNtCscI6d9CVNmLh_4core3ops5range5RangemENtNtNtCs4Jn2LUi8st0_4rand3seq8iterator14IteratorRandom15choose_multipleNtNtNtBR_4rngs5small8SmallRngECsc2V0exE7CWf_11lance_arrow.exit

bb.r:                                             ; preds = %bb.q
  %i.bh = shl nuw nsw i64 %.val1.sink.i.i.i.i.i, 2 ; 3 uses
  %i.bi = icmp ule i64 %i.bh, %i.bf
  call void @llvm.assume(i1 %i.bi)
  %i.bj = call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc14___rust_realloc(ptr noundef nonnull %i.aj, i64 noundef %i.bf, i64 noundef range(i64 1, -9223372036854775807) 4, i64 noundef range(i64 4, 9223372036854775805) %i.bh) #39, !noalias !13153 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.s, label %_RINvYINtNtNtCscI6d9CVNmLh_4core3ops5range5RangemENtNtNtCs4Jn2LUi8st0_4rand3seq8iterator14IteratorRandom15choose_multipleNtNtNtBR_4rngs5small8SmallRngECsc2V0exE7CWf_11lance_arrow.exit

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.bh) #36
          to label %bb.t unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECsc2V0exE7CWf_11lance_arrow.exit.i, !noalias !13151

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.aa, %.lr.ph.i
  %i.bl = phi i64 [ %..sroa.8.0.copyload6.i.i.i, %.lr.ph.i ], [ %i.ed, %bb.aa ] ; 2 uses
  %i.bm = phi i64 [ %..sroa.7.0.copyload4.i.i.i, %.lr.ph.i ], [ %i.ee, %bb.aa ] ; 6 uses
  %i.bn = phi i64 [ %..sroa.9.0.copyload8.i.i.i, %.lr.ph.i ], [ %i.ef, %bb.aa ] ; 4 uses
  %.sroa.021.044.i = phi i32 [ %.sroa.0.1.i, %.lr.ph.i ], [ %i.bp, %bb.aa ] ; 2 uses
  %.sroa.7.043.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bq, %bb.aa ] ; 2 uses
  %i.bo = phi i64 [ %..sroa.0.0.copyload2.i.i.i, %.lr.ph.i ], [ %i.eg, %bb.aa ] ; 8 uses
  %i.bp = add nuw i32 %.sroa.021.044.i, 1
  %i.bq = add nuw nsw i64 %.sroa.7.043.i, 1       ; 2 uses
  %i.br = add nuw i64 %i.bc, %.sroa.7.043.i       ; 6 uses
  %i.bs = icmp ugt i64 %i.br, 4294967295
  br i1 %i.bs, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bt = trunc nuw i64 %i.br to i32
  %i.bu = add i64 %i.bo, %i.bn                    ; 2 uses
  %i.bv = call noundef i64 @llvm.fshl.i64(i64 %i.bu, i64 %i.bu, i64 23)
  %i.bw = add i64 %i.bv, %i.bo
  %i.bx = shl i64 %i.bm, 17
  %i.by = xor i64 %i.bo, %i.bl                    ; 2 uses
  %i.bz = xor i64 %i.bn, %i.bm                    ; 3 uses
  %i.ca = xor i64 %i.by, %i.bm                    ; 4 uses
  %i.cb = xor i64 %i.bo, %i.bz                    ; 5 uses
  %i.cc = xor i64 %i.by, %i.bx                    ; 2 uses
  %i.cd = call noundef i64 @llvm.fshl.i64(i64 %i.bz, i64 %i.bz, i64 45) ; 3 uses
  %i.ce = lshr i64 %i.bw, 32
  %i.cf = mul nuw i64 %i.ce, %i.br                ; 2 uses
  %i.cg = lshr i64 %i.cf, 32                      ; 2 uses
  %i.ch = trunc i64 %i.cf to i32                  ; 2 uses
  %i.ci = sub i32 0, %i.bt
  %i.cj = icmp ult i32 %i.ci, %i.ch
  br i1 %i.cj, label %bb.w, label %_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs5small8SmallRngNtNtB9_3rng3Rng12random_rangejINtNtNtCscI6d9CVNmLh_4core3ops5range7RangeTojEECsc2V0exE7CWf_11lance_arrow.exit.i

bb.w:                                             ; preds = %bb.v
  %i.ck = add i64 %i.cb, %i.cd                    ; 2 uses
  %i.cl = call noundef i64 @llvm.fshl.i64(i64 %i.ck, i64 %i.ck, i64 23)
  %i.cm = add i64 %i.cl, %i.cb
  %i.cn = shl i64 %i.ca, 17
  %i.co = xor i64 %i.cc, %i.cb                    ; 2 uses
  %i.cp = xor i64 %i.ca, %i.cd                    ; 3 uses
  %i.cq = xor i64 %i.co, %i.ca
  %i.cr = xor i64 %i.cp, %i.cb
  %i.cs = xor i64 %i.co, %i.cn
  %i.ct = call noundef i64 @llvm.fshl.i64(i64 %i.cp, i64 %i.cp, i64 45)
  %i.cu = lshr i64 %i.cm, 32
  %3 = mul nuw i64 %i.cu, %i.br
  %4 = lshr i64 %3, 32
  %5 = trunc nuw i64 %4 to i32
  %i.cv = xor i32 %i.ch, -1
  %.not11.i.i.i.i.i.i = icmp ult i32 %i.cv, %5
  %i.cw = zext i1 %.not11.i.i.i.i.i.i to i64
  %i.cx = add nuw nsw i64 %i.cg, %i.cw
  br label %_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs5small8SmallRngNtNtB9_3rng3Rng12random_rangejINtNtNtCscI6d9CVNmLh_4core3ops5range7RangeTojEECsc2V0exE7CWf_11lance_arrow.exit.i

bb.x:                                             ; preds = %bb.u
  %i.cy = add i64 %i.bo, %i.bn                    ; 2 uses
  %i.cz = call noundef i64 @llvm.fshl.i64(i64 %i.cy, i64 %i.cy, i64 23)
  %i.da = add i64 %i.cz, %i.bo
  %i.db = shl i64 %i.bm, 17
  %i.dc = xor i64 %i.bo, %i.bl                    ; 2 uses
  %i.dd = xor i64 %i.bn, %i.bm                    ; 3 uses
  %i.de = xor i64 %i.dc, %i.bm                    ; 4 uses
  %i.df = xor i64 %i.bo, %i.dd                    ; 5 uses
  %i.dg = xor i64 %i.dc, %i.db                    ; 2 uses
  %i.dh = call noundef i64 @llvm.fshl.i64(i64 %i.dd, i64 %i.dd, i64 45) ; 3 uses
  %i.di = zext i64 %i.da to i128
  %i.dj = zext i64 %i.br to i128                  ; 2 uses
  %i.dk = mul nuw i128 %i.di, %i.dj               ; 2 uses
  %i.dl = lshr i128 %i.dk, 64
  %i.dm = trunc nuw i128 %i.dl to i64             ; 2 uses
  %i.dn = trunc i128 %i.dk to i64                 ; 2 uses
  %i.do = sub i64 0, %i.br
  %i.dp = icmp ult i64 %i.do, %i.dn
  br i1 %i.dp, label %bb.y, label %_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs5small8SmallRngNtNtB9_3rng3Rng12random_rangejINtNtNtCscI6d9CVNmLh_4core3ops5range7RangeTojEECsc2V0exE7CWf_11lance_arrow.exit.i

bb.y:                                             ; preds = %bb.x
  %i.dq = add i64 %i.df, %i.dh                    ; 2 uses
  %i.dr = call noundef i64 @llvm.fshl.i64(i64 %i.dq, i64 %i.dq, i64 23)
  %i.ds = add i64 %i.dr, %i.df
  %i.dt = shl i64 %i.de, 17
  %i.du = xor i64 %i.dg, %i.df                    ; 2 uses
  %i.dv = xor i64 %i.de, %i.dh                    ; 3 uses
  %i.dw = xor i64 %i.du, %i.de
  %i.dx = xor i64 %i.dv, %i.df
  %i.dy = xor i64 %i.du, %i.dt
  %i.dz = call noundef i64 @llvm.fshl.i64(i64 %i.dv, i64 %i.dv, i64 45)
  %6 = zext i64 %i.ds to i128
  %7 = mul nuw i128 %6, %i.dj
  %8 = lshr i128 %7, 64
  %9 = trunc nuw i128 %8 to i64
  %i.ea = xor i64 %i.dn, -1
  %.not7.i.i.i.i.i.i = icmp ult i64 %i.ea, %9
  %i.eb = zext i1 %.not7.i.i.i.i.i.i to i64
  %i.ec = add nuw i64 %i.eb, %i.dm
  br label %_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs5small8SmallRngNtNtB9_3rng3Rng12random_rangejINtNtNtCscI6d9CVNmLh_4core3ops5range7RangeTojEECsc2V0exE7CWf_11lance_arrow.exit.i

_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs5small8SmallRngNtNtB9_3rng3Rng12random_rangejINtNtNtCscI6d9CVNmLh_4core3ops5range7RangeTojEECsc2V0exE7CWf_11lance_arrow.exit.i: ; preds = %bb.y, %bb.x, %bb.w, %bb.v
  %i.ed = phi i64 [ %i.cc, %bb.v ], [ %i.cs, %bb.w ], [ %i.dy, %bb.y ], [ %i.dg, %bb.x ]
  %i.ee = phi i64 [ %i.ca, %bb.v ], [ %i.cq, %bb.w ], [ %i.dw, %bb.y ], [ %i.de, %bb.x ]
  %i.ef = phi i64 [ %i.cd, %bb.v ], [ %i.ct, %bb.w ], [ %i.dz, %bb.y ], [ %i.dh, %bb.x ]
  %i.eg = phi i64 [ %i.cb, %bb.v ], [ %i.cr, %bb.w ], [ %i.dx, %bb.y ], [ %i.df, %bb.x ]
  %.sroa.62.0.i.i = phi i64 [ %i.cg, %bb.v ], [ %i.cx, %bb.w ], [ %i.ec, %bb.y ], [ %i.dm, %bb.x ] ; 2 uses
  %i.eh = icmp ult i64 %.sroa.62.0.i.i, %2
  br i1 %i.eh, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs5small8SmallRngNtNtB9_3rng3Rng12random_rangejINtNtNtCscI6d9CVNmLh_4core3ops5range7RangeTojEECsc2V0exE7CWf_11lance_arrow.exit.i
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.sroa.62.0.i.i
  store i32 %.sroa.021.044.i, ptr %i.ei, align 4, !noalias !13151
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_RINvYNtNtNtCs4Jn2LUi8st0_4rand4rngs5small8SmallRngNtNtB9_3rng3Rng12random_rangejINtNtNtCscI6d9CVNmLh_4core3ops5range7RangeTojEECsc2V0exE7CWf_11lance_arrow.exit.i
  %i.ej = icmp eq i64 %i.bq, %zext
  br i1 %i.ej, label %_RINvYINtNtNtCscI6d9CVNmLh_4core3ops5range5RangemENtNtNtCs4Jn2LUi8st0_4rand3seq8iterator14IteratorRandom15choose_multipleNtNtNtBR_4rngs5small8SmallRngECsc2V0exE7CWf_11lance_arrow.exit, label %bb.u

common.resume:                                    ; preds = %.body, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECsc2V0exE7CWf_11lance_arrow.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.ek, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECsc2V0exE7CWf_11lance_arrow.exit.i ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECsc2V0exE7CWf_11lance_arrow.exit.i: ; preds = %bb.s
  %i.ek = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %i.bf, i64 noundef range(i64 1, -9223372036854775807) 4) #39, !noalias !13151
  br label %common.resume

_RINvYINtNtNtCscI6d9CVNmLh_4core3ops5range5RangemENtNtNtCs4Jn2LUi8st0_4rand3seq8iterator14IteratorRandom15choose_multipleNtNtNtBR_4rngs5small8SmallRngECsc2V0exE7CWf_11lance_arrow.exit: ; preds = %bb.aa, %.preheader.i, %bb.p, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.r
  %.sroa.426.0.sink.i = phi i64 [ %.val1.sink.i.i.i.i.i, %bb.r ], [ %.sroa.426.0.i, %bb.p ], [ 0, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i ], [ %.sroa.426.0.i, %.preheader.i ], [ %.sroa.426.0.i, %bb.aa ]
  %.sink74.i = phi ptr [ %i.bj, %bb.r ], [ %i.aj, %bb.p ], [ inttoptr (i64 4 to ptr), %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i ], [ %i.aj, %.preheader.i ], [ %i.aj, %bb.aa ]
  %.sink.i = phi i64 [ %.val1.sink.i.i.i.i.i, %bb.r ], [ %.val1.sink.i.i.i.i.i, %bb.p ], [ 0, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i ], [ %2, %.preheader.i ], [ %2, %bb.aa ]
  store i64 %.sroa.426.0.sink.i, ptr %i.i, align 8, !alias.scope !13149, !noalias !13154
  %.sroa.9.0..sroa_idx51.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %.sink74.i, ptr %.sroa.9.0..sroa_idx51.i, align 8, !alias.scope !13149, !noalias !13154
  %.sroa.15.0..sroa_idx54.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.sink.i, ptr %.sroa.15.0..sroa_idx54.i, align 8, !alias.scope !13149, !noalias !13154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvXsG_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecmEE4from(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.i)
  invoke void @_RNvNtCs485oD0LSutp_12arrow_select4take4take(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) @42, ptr noundef nonnull %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) @338, i8 noundef 2)
          to label %bb.ai unwind label %bb.ah

bb.ab:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13155)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13156
  call fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %1), !noalias !13157
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.em = load <2 x ptr>, ptr %i.el, align 8, !alias.scope !13155, !noalias !13157
  %i.en = load ptr, ptr %i.el, align 8, !alias.scope !13155, !noalias !13157, !nonnull !10, !noundef !10
  %i.eo = atomicrmw add ptr %i.en, i64 1 monotonic, align 8, !noalias !13156
  %i.ep = icmp slt i64 %i.eo, 0
  br i1 %i.ep, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.er = load ptr, ptr %i.eq, align 8, !alias.scope !13155, !noalias !13157, !noundef !10 ; 3 uses
  %.not.i = icmp eq ptr %i.er, null
  br i1 %.not.i, label %_RNvXs6_NtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_arrayNtB5_18FixedSizeListArrayNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit, label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  tail call void @llvm.trap()
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.es = atomicrmw add ptr %i.er, i64 1 monotonic, align 8, !noalias !13156
  %i.et = icmp slt i64 %i.es, 0
  br i1 %i.et, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ev = load ptr, ptr %i.eu, align 8, !alias.scope !13155, !noalias !13157, !noundef !10
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ex = load <2 x i64>, ptr %i.ew, align 8, !alias.scope !13155, !noalias !13157
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ez = load <2 x i64>, ptr %i.ey, align 8, !alias.scope !13155, !noalias !13157
  br label %_RNvXs6_NtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_arrayNtB5_18FixedSizeListArrayNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit

bb.ag:                                            ; preds = %bb.ae
  tail call void @llvm.trap()
  unreachable

_RNvXs6_NtNtCs4ytUTZt2Gw9_11arrow_array5array21fixed_size_list_arrayNtB5_18FixedSizeListArrayNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit: ; preds = %bb.ac, %bb.af
  %.sroa.5.sroa.0.sroa.0.sroa.0.0.i = phi ptr [ %i.ev, %bb.af ], [ undef, %bb.ac ]
  %i.fa = phi <2 x i64> [ %i.ex, %bb.af ], [ undef, %bb.ac ]
  %i.fb = phi <2 x i64> [ %i.ez, %bb.af ], [ undef, %bb.ac ]
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.fd = load i32, ptr %i.fc, align 8, !alias.scope !13155, !noalias !13157, !noundef !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13156
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x ptr> %i.em, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.er, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.5.sroa.0.sroa.0.sroa.0.0.i, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <2 x i64> %i.fa, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store <2 x i64> %i.fb, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.k, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %i.fd, ptr %.sroa.13.0..sroa_idx, align 8
  br label %bb.ay

bb.ah:                                            ; preds = %bb.au, %_RINvYINtNtNtCscI6d9CVNmLh_4core3ops5range5RangemENtNtNtCs4Jn2LUi8st0_4rand3seq8iterator14IteratorRandom15choose_multipleNtNtNtBR_4rngs5small8SmallRngECsc2V0exE7CWf_11lance_arrow.exit
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.am, %bb.an, %bb.ah
  %eh.lpad-body = phi { ptr, i32 } [ %i.fe, %bb.ah ], [ %i.fk, %bb.an ], [ %i.fk, %bb.am ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types10UInt32TypeEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.g) #37
          to label %common.resume unwind label %bb.az

bb.ai:                                            ; preds = %_RINvYINtNtNtCscI6d9CVNmLh_4core3ops5range5RangemENtNtNtCs4Jn2LUi8st0_4rand3seq8iterator14IteratorRandom15choose_multipleNtNtNtBR_4rngs5small8SmallRngECsc2V0exE7CWf_11lance_arrow.exit
  %i.ff = load i64, ptr %i.h, align 8, !range !35, !noundef !10
  %.not2 = icmp eq i64 %i.ff, -1
  br i1 %.not2, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fg, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  store i8 -1, ptr %0, align 8
  br label %bb.ax

bb.ak:                                            ; preds = %bb.ai
  %i.fh = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.08)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.fi = load <2 x ptr>, ptr %i.fh, align 8
  store <2 x ptr> %i.fi, ptr %i.b, align 16, !noalias !13158
  %i.fj = invoke noundef align 8 ptr @_RNvXs1_NtCs4ytUTZt2Gw9_11arrow_array4castINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB7_5array5ArrayEL_ENtB5_7AsArray22as_fixed_size_list_opt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %.noexc.i unwind label %bb.am, !noalias !13159 ; 9 uses

.noexc.i:                                         ; preds = %bb.ak
  %.not.i.i4 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i4, label %bb.al, label %_RNvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBF_4cast7AsArray18as_fixed_size_listCsc2V0exE7CWf_11lance_arrow.exit.i, !prof !11

bb.al:                                            ; preds = %.noexc.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @585, i64 noundef 21, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @586) #36
          to label %.noexc1.i unwind label %bb.am, !noalias !13159

.noexc1.i:                                        ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %_RNvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBF_4cast7AsArray18as_fixed_size_listCsc2V0exE7CWf_11lance_arrow.exit.i, %bb.al, %bb.ak
  %i.fk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13160)
  call void @llvm.experimental.noalias.scope.decl(metadata !13161)
  %i.fl = load ptr, ptr %i.b, align 16, !alias.scope !13162, !noalias !13158, !nonnull !10, !noundef !10
  %i.fm = atomicrmw sub ptr %i.fl, i64 1 release, align 8, !noalias !13163
  %i.fn = icmp eq i64 %i.fm, 1
  br i1 %i.fn, label %bb.an, label %.body

bb.an:                                            ; preds = %bb.am
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %.body unwind label %bb.av, !noalias !13159

_RNvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBF_4cast7AsArray18as_fixed_size_listCsc2V0exE7CWf_11lance_arrow.exit.i: ; preds = %.noexc.i
  call void @llvm.experimental.noalias.scope.decl(metadata !13164)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13165
  invoke fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.fj)
          to label %.noexc4.i unwind label %bb.am, !noalias !13159

.noexc4.i:                                        ; preds = %_RNvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBF_4cast7AsArray18as_fixed_size_listCsc2V0exE7CWf_11lance_arrow.exit.i
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 24 ; 2 uses
  %i.fp = load <2 x ptr>, ptr %i.fo, align 8, !alias.scope !13164, !noalias !13166
  %i.fq = load ptr, ptr %i.fo, align 8, !alias.scope !13164, !noalias !13166, !nonnull !10, !noundef !10
  %i.fr = atomicrmw add ptr %i.fq, i64 1 monotonic, align 8, !noalias !13167
  %i.fs = icmp slt i64 %i.fr, 0
  br i1 %i.fs, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.noexc4.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fj, i64 40
  %i.fu = load ptr, ptr %i.ft, align 8, !alias.scope !13164, !noalias !13166, !noundef !10 ; 3 uses
  %.not.i3.i = icmp eq ptr %i.fu, null
  br i1 %.not.i3.i, label %bb.at, label %bb.aq

bb.ap:                                            ; preds = %.noexc4.i
  call void @llvm.trap()
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.fv = atomicrmw add ptr %i.fu, i64 1 monotonic, align 8, !noalias !13167
  %i.fw = icmp slt i64 %i.fv, 0
  br i1 %i.fw, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fj, i64 48
  %i.fy = load ptr, ptr %i.fx, align 8, !alias.scope !13164, !noalias !13166, !noundef !10
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fj, i64 56
  %i.ga = load <2 x i64>, ptr %i.fz, align 8, !alias.scope !13164, !noalias !13166
end_hunk_2
begin_hunk_3_@_RNvXsc_NtCskKR1pP4skmg_5jsonb5errorNtB5_5ErrorNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt:bb.a

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13442)
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB1i_5array10byte_array16GenericByteArrayINtNtB1i_5types17GenericStringTypelEEENtB4_13SpecAdvanceBy15spec_advance_byCsc2V0exE7CWf_11lance_arrow.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13443)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !13444, !noalias !13445, !noundef !10 ; 4 uses
  %.promoted.i.i = load i64, ptr %i.a, align 8, !alias.scope !13444, !noalias !13445 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !13446
  %.fr.i.i = freeze ptr %i.e
  %.not.i.i.i.i = icmp eq ptr %.fr.i.i, null
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !13446
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !13446
  %.val.i.i.i = load ptr, ptr %0, align 8, !alias.scope !13446, !nonnull !10, !align !12
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
  store i64 %i.v, ptr %i.a, align 8, !alias.scope !13444, !noalias !13445
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13447)
  %i.v = add i64 %i.u, 3
  %index.next27 = add nuw i64 %index22, 4         ; 2 uses
  %i.w = add i64 %i.u, 4
  %i.x = icmp eq i64 %index.next27, %n.vec17
  br i1 %i.x, label %.split.us.i.i.preheader32.loopexit, label %vector.body21, !llvm.loop !13434

.split.i.preheader.i:                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !13446
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
  store i64 %i.an, ptr %i.a, align 8, !alias.scope !13444, !noalias !13445
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13447)
  %i.an = add i64 %i.am, 3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = add i64 %i.am, 4
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %.split.i.i.preheader.loopexit, label %vector.body, !llvm.loop !13435

.split.us.i.i:                                    ; preds = %.split.us.i.i.preheader32, %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i.us.i.i
  %i.aq = phi i64 [ %i.as, %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i.us.i.i ], [ %.ph, %.split.us.i.i.preheader32 ] ; 2 uses
  %.sroa.01.0.us.i.i = phi i64 [ %i.aw, %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i.us.i.i ], [ %.sroa.01.0.us.i.i.ph, %.split.us.i.i.preheader32 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13447)
  %i.ar = icmp eq i64 %i.aq, %i.c
  br i1 %i.ar, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB1i_5array10byte_array16GenericByteArrayINtNtB1i_5types17GenericStringTypelEEENtB4_13SpecAdvanceBy15spec_advance_byCsc2V0exE7CWf_11lance_arrow.exit, label %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i.us.i.i

_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i.us.i.i: ; preds = %.split.us.i.i
  %i.as = add i64 %i.aq, 1                        ; 3 uses
  store i64 %i.as, ptr %i.a, align 8, !alias.scope !13444, !noalias !13445
  %i.at = load i64, ptr %i.j, align 8, !alias.scope !13448, !noalias !13449, !noundef !10
  %i.au = lshr i64 %i.at, 2
  %i.av = icmp ult i64 %i.as, %i.au
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = add i64 %.sroa.01.0.us.i.i, -1          ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB1i_5array10byte_array16GenericByteArrayINtNtB1i_5types17GenericStringTypelEEENtB4_13SpecAdvanceBy15spec_advance_byCsc2V0exE7CWf_11lance_arrow.exit, label %.split.us.i.i, !llvm.loop !13438

.split.i.i:                                       ; preds = %.split.i.i.preheader, %bb.e
  %i.ay = phi i64 [ %i.bj, %bb.e ], [ %.ph33, %.split.i.i.preheader ] ; 4 uses
  %.sroa.01.0.i.i = phi i64 [ %i.bn, %bb.e ], [ %.sroa.01.0.i.i.ph, %.split.i.i.preheader ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13447)
  %i.az = icmp eq i64 %i.ay, %i.c
  br i1 %i.az, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB1i_5array10byte_array16GenericByteArrayINtNtB1i_5types17GenericStringTypelEEENtB4_13SpecAdvanceBy15spec_advance_byCsc2V0exE7CWf_11lance_arrow.exit, label %bb.c

bb.c:                                             ; preds = %.split.i.i
  %exitcond.not.i = icmp eq i64 %i.ay, %umax.i
  br i1 %exitcond.not.i, label %bb.d, label %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.i.i.i, !prof !11

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @190, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #36, !noalias !13450
  unreachable

_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.i.i.i: ; preds = %bb.c
  %i.ba = add i64 %i.ay, %i.i                     ; 2 uses
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !noalias !13450, !noundef !10
  %i.be = trunc i64 %i.ba to i8
  %i.bf = and i8 %i.be, 7
  %i.bg = xor i8 %i.bd, -1
  %i.bh = lshr i8 %i.bg, %i.bf
  %i.bi = trunc i8 %i.bh to i1
  %i.bj = add i64 %i.ay, 1                        ; 3 uses
  br i1 %i.bi, label %bb.e, label %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i.i.i

_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i.i.i: ; preds = %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.i.i.i
  %i.bk = load i64, ptr %i.j, align 8, !alias.scope !13448, !noalias !13449, !noundef !10
  %i.bl = lshr i64 %i.bk, 2
  %i.bm = icmp ult i64 %i.bj, %i.bl
  tail call void @llvm.assume(i1 %i.bm)
  br label %bb.e

bb.e:                                             ; preds = %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i.i.i, %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.i.i.i
  store i64 %i.bj, ptr %i.a, align 8, !alias.scope !13444, !noalias !13445
  %i.bn = add i64 %.sroa.01.0.i.i, -1             ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB1i_5array10byte_array16GenericByteArrayINtNtB1i_5types17GenericStringTypelEEENtB4_13SpecAdvanceBy15spec_advance_byCsc2V0exE7CWf_11lance_arrow.exit, label %.split.i.i, !llvm.loop !13441

_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB1i_5array10byte_array16GenericByteArrayINtNtB1i_5types17GenericStringTypelEEENtB4_13SpecAdvanceBy15spec_advance_byCsc2V0exE7CWf_11lance_arrow.exit: ; preds = %.split.i.i, %bb.e, %.split.us.i.i, %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i.us.i.i, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ 0, %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i.us.i.i ], [ %.sroa.01.0.us.i.i, %.split.us.i.i ], [ %.sroa.01.0.i.i, %.split.i.i ], [ 0, %bb.e ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNvYINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB7_5array10byte_array16GenericByteArrayINtNtB7_5types17GenericStringTypexEEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCsc2V0exE7CWf_11lance_arrow(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13466)
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB1i_5array10byte_array16GenericByteArrayINtNtB1i_5types17GenericStringTypexEEENtB4_13SpecAdvanceBy15spec_advance_byCsc2V0exE7CWf_11lance_arrow.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13467)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !13468, !noalias !13469, !noundef !10 ; 4 uses
  %.promoted.i.i = load i64, ptr %i.a, align 8, !alias.scope !13468, !noalias !13469 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !13470
  %.fr.i.i = freeze ptr %i.e
  %.not.i.i.i.i = icmp eq ptr %.fr.i.i, null
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !13470
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !13470
  %.val.i.i.i = load ptr, ptr %0, align 8, !alias.scope !13470, !nonnull !10, !align !12
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
  store i64 %i.v, ptr %i.a, align 8, !alias.scope !13468, !noalias !13469
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13471)
  %i.v = add i64 %i.u, 3
  %index.next27 = add nuw i64 %index22, 4         ; 2 uses
  %i.w = add i64 %i.u, 4
  %i.x = icmp eq i64 %index.next27, %n.vec17
  br i1 %i.x, label %.split.us.i.i.preheader32.loopexit, label %vector.body21, !llvm.loop !13458

.split.i.preheader.i:                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !13470
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
  store i64 %i.an, ptr %i.a, align 8, !alias.scope !13468, !noalias !13469
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13471)
  %i.an = add i64 %i.am, 3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = add i64 %i.am, 4
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %.split.i.i.preheader.loopexit, label %vector.body, !llvm.loop !13459

.split.us.i.i:                                    ; preds = %.split.us.i.i.preheader32, %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypexEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i.us.i.i
  %i.aq = phi i64 [ %i.as, %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypexEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i.us.i.i ], [ %.ph, %.split.us.i.i.preheader32 ] ; 2 uses
  %.sroa.01.0.us.i.i = phi i64 [ %i.aw, %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypexEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i.us.i.i ], [ %.sroa.01.0.us.i.i.ph, %.split.us.i.i.preheader32 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13471)
  %i.ar = icmp eq i64 %i.aq, %i.c
  br i1 %i.ar, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB1i_5array10byte_array16GenericByteArrayINtNtB1i_5types17GenericStringTypexEEENtB4_13SpecAdvanceBy15spec_advance_byCsc2V0exE7CWf_11lance_arrow.exit, label %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypexEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i.us.i.i

_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypexEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i.us.i.i: ; preds = %.split.us.i.i
  %i.as = add i64 %i.aq, 1                        ; 3 uses
  store i64 %i.as, ptr %i.a, align 8, !alias.scope !13468, !noalias !13469
  %i.at = load i64, ptr %i.j, align 8, !alias.scope !13472, !noalias !13473, !noundef !10
  %i.au = lshr i64 %i.at, 3
  %i.av = icmp ult i64 %i.as, %i.au
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = add i64 %.sroa.01.0.us.i.i, -1          ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB1i_5array10byte_array16GenericByteArrayINtNtB1i_5types17GenericStringTypexEEENtB4_13SpecAdvanceBy15spec_advance_byCsc2V0exE7CWf_11lance_arrow.exit, label %.split.us.i.i, !llvm.loop !13462

.split.i.i:                                       ; preds = %.split.i.i.preheader, %bb.e
  %i.ay = phi i64 [ %i.bj, %bb.e ], [ %.ph33, %.split.i.i.preheader ] ; 4 uses
  %.sroa.01.0.i.i = phi i64 [ %i.bn, %bb.e ], [ %.sroa.01.0.i.i.ph, %.split.i.i.preheader ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13471)
  %i.az = icmp eq i64 %i.ay, %i.c
  br i1 %i.az, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB1i_5array10byte_array16GenericByteArrayINtNtB1i_5types17GenericStringTypexEEENtB4_13SpecAdvanceBy15spec_advance_byCsc2V0exE7CWf_11lance_arrow.exit, label %bb.c

bb.c:                                             ; preds = %.split.i.i
  %exitcond.not.i = icmp eq i64 %i.ay, %umax.i
  br i1 %exitcond.not.i, label %bb.d, label %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypexEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.i.i.i, !prof !11

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @190, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #36, !noalias !13474
  unreachable

_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypexEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.i.i.i: ; preds = %bb.c
  %i.ba = add i64 %i.ay, %i.i                     ; 2 uses
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !noalias !13474, !noundef !10
  %i.be = trunc i64 %i.ba to i8
  %i.bf = and i8 %i.be, 7
  %i.bg = xor i8 %i.bd, -1
  %i.bh = lshr i8 %i.bg, %i.bf
  %i.bi = trunc i8 %i.bh to i1
  %i.bj = add i64 %i.ay, 1                        ; 3 uses
  br i1 %i.bi, label %bb.e, label %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypexEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i.i.i

_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypexEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i.i.i: ; preds = %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypexEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.i.i.i
  %i.bk = load i64, ptr %i.j, align 8, !alias.scope !13472, !noalias !13473, !noundef !10
  %i.bl = lshr i64 %i.bk, 3
  %i.bm = icmp ult i64 %i.bj, %i.bl
  tail call void @llvm.assume(i1 %i.bm)
  br label %bb.e

bb.e:                                             ; preds = %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypexEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i.i.i, %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypexEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.i.i.i
  store i64 %i.bj, ptr %i.a, align 8, !alias.scope !13468, !noalias !13469
  %i.bn = add i64 %.sroa.01.0.i.i, -1             ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB1i_5array10byte_array16GenericByteArrayINtNtB1i_5types17GenericStringTypexEEENtB4_13SpecAdvanceBy15spec_advance_byCsc2V0exE7CWf_11lance_arrow.exit, label %.split.i.i, !llvm.loop !13465

_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB1i_5array10byte_array16GenericByteArrayINtNtB1i_5types17GenericStringTypexEEENtB4_13SpecAdvanceBy15spec_advance_byCsc2V0exE7CWf_11lance_arrow.exit: ; preds = %.split.i.i, %bb.e, %.split.us.i.i, %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypexEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i.us.i.i, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ 0, %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypexEEE7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i.us.i.i ], [ %.sroa.01.0.us.i.i, %.split.us.i.i ], [ %.sroa.01.0.i.i, %.split.i.i ], [ 0, %bb.e ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array10null_countCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !13477, !noundef !10
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
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !13480, !noundef !10
  %.not.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !13480
  %i.e = icmp ne i64 %i.d, 0
  %i.f = select i1 %.not.i, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal void @_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array13logical_nullsCsc2V0exE7CWf_11lance_arrow(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %1) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !13483, !noundef !10 ; 3 uses
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
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !13486, !noundef !10
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
end_hunk_3
begin_hunk_4_@_RNvMs5_NtCs8SUNSmrkv52_12arrow_schema6schemaNtB5_6Schema16column_with_name
declare { i64, ptr } @_RNvMs5_NtCs8SUNSmrkv52_12arrow_schema6schemaNtB5_6Schema16column_with_name(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs5FCcBHaqpq9_9arrow_ord4sort15sort_to_indices(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176), i8 noundef range(i8 0, 3), i8, i64 noundef range(i64 0, 2), i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs6_NtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_arrayNtB5_11StructArrayINtNtCscI6d9CVNmLh_4core7convert4FromNtNtB9_12record_batch11RecordBatchE4from(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef align 8 ptr @_RNvMs_NtCs4ytUTZt2Gw9_11arrow_array12record_batchNtB4_11RecordBatch14column_by_name(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs2_NtCs4ytUTZt2Gw9_11arrow_array12record_batchNtB5_11RecordBatchINtNtCscI6d9CVNmLh_4core7convert4FromNtNtNtB7_5array12struct_array11StructArrayE4from(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCs4ytUTZt2Gw9_11arrow_array12record_batchNtB4_11RecordBatch11with_schema(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer13shrink_to_fit(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer13shrink_to_fit(ptr noalias noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCs8SUNSmrkv52_12arrow_schema6fieldsNtB2_6FieldsNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCsgczF5crJ4sT_3std2io5errorNtB2_5ErrorNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCs8SUNSmrkv52_12arrow_schema16datatype_displayNtNtB4_8datatype8DataTypeNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCscI6d9CVNmLh_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13shrink_to_fit(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer22from_custom_allocation(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull, i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs9_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_11UnionFieldsNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCscI6d9CVNmLh_4core9panicking13assert_failedNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeBM_ECs4ytUTZt2Gw9_11arrow_array(i8 noundef range(i8 0, 3), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noundef, ptr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #24

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCscI6d9CVNmLh_4core9panicking13assert_failedjjEB4_(i8 noundef range(i8 0, 3), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef, ptr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #24

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtCs4ytUTZt2Gw9_11arrow_array5arrayNtNtB5_23fixed_size_binary_array20FixedSizeBinaryArrayNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB4_5FieldNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCscI6d9CVNmLh_4core9panicking13assert_failedllECsgczF5crJ4sT_3std(i8 noundef range(i8 0, 3), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noundef, ptr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #24

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9debug_map(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_8DebugMap6finish(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsK_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float16TypeEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2k6O4uMwKJm_4half8binary163f16EE4from(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtCskKR1pP4skmg_5jsonb5ownedNtB5_10OwnedJsonbNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs5_NtNtCsgczF5crJ4sT_3std2io5errorNtB5_5ErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4YAKbnGhBJc_12arrow_buffer5alloc10AllocationEL_E9drop_slowBL_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaE9drop_slowCs4ytUTZt2Gw9_11arrow_array(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcSIBx_NtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE9drop_slowBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcSTaIBx_NtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEEE9drop_slowBR_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArceE9drop_slowCs8SUNSmrkv52_12arrow_schema(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impaNtB8_7Display3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtNtCscI6d9CVNmLh_4core3fmt3numaNtB7_8UpperHex3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsf_NtNtCscI6d9CVNmLh_4core3fmt3numaNtB7_8LowerHex3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsx_NtNtCscI6d9CVNmLh_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsv_NtNtCscI6d9CVNmLh_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtNtCscI6d9CVNmLh_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtNtCscI6d9CVNmLh_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCscI6d9CVNmLh_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCs8SUNSmrkv52_12arrow_schema5fieldNtB2_5FieldNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXso_NtNtCscI6d9CVNmLh_4core3fmt3numtNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsm_NtNtCscI6d9CVNmLh_4core3fmt3numtNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsu_NtNtCscI6d9CVNmLh_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsE_NtNtCscI6d9CVNmLh_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsC_NtNtCscI6d9CVNmLh_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCscI6d9CVNmLh_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCscI6d9CVNmLh_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsG_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecmEE4from(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsM_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float32TypeEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecfEE4from(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsO_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float64TypeEINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecdEE4from(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtCscI6d9CVNmLh_4core3fmtbNtB5_7Display3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCscI6d9CVNmLh_4core3str8converts9from_utf8(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef align 8 ptr @_RNvXs1_NtCs4ytUTZt2Gw9_11arrow_array4castINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB7_5array5ArrayEL_ENtB5_7AsArray22as_fixed_size_list_opt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef align 8 ptr @_RNvXs1_NtCs4ytUTZt2Gw9_11arrow_array4castINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB7_5array5ArrayEL_ENtB5_7AsArray10as_map_opt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef align 8 ptr @_RNvXs1_NtCs4ytUTZt2Gw9_11arrow_array4castINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtB7_5array5ArrayEL_ENtB5_7AsArray13as_struct_opt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtCsitxk4pdPh9M_9getrandom5errorNtB5_5ErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #34

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.umin.i128(i128, i128) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.usub.sat.i128(i128, i128) #25

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+f16c,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #10 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #19 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #22 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #29 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #30 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #31 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #32 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #34 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #35 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #36 = { noreturn }
attributes #37 = { cold }
attributes #38 = { cold noreturn nounwind }
attributes #39 = { nounwind }
attributes #40 = { "function-inline-cost-multiplier"="2" }
attributes #41 = { cold "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!7, !8}
!llvm.ident = !{!9}

!0 = distinct !{null, null, null}
!1 = distinct !{null, null, null}
!2 = distinct !{null}
!3 = distinct !{null, null, null}
!4 = distinct !{ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsc2V0exE7CWf_11lance_arrow, ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECsc2V0exE7CWf_11lance_arrow, null}
!5 = distinct !{null}
!6 = distinct !{ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsc2V0exE7CWf_11lance_arrow, null}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 2, !"RtLibUseGOT", i32 1}
!9 = !{!"rustc version 1.97.0 (2d8144b78 2026-07-07)"}
!10 = !{}
!11 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!12 = !{i64 8}
!13 = !{i64 0, i64 -9223372036854775808}
!14 = !{i64 0, i64 -9223372036854775807}
!15 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!16 = !{!"branch_weights", i32 2146410443, i32 1073205}
!17 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!18 = !{i64 -1, i64 -9223372036854775798}
!19 = !{i64 0, i64 2}
!20 = !{i8 0, i8 2}
!21 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1, i32 2000, i32 2000}
!22 = !{!"branch_weights", i32 4000000, i32 4001}
!23 = !{i8 -1, i8 41}
!24 = !{i8 0, i8 41}
!25 = !{i64 1, i64 536870913}
!26 = !{i64 -1, i64 -9223372036854775808}
!27 = !{!"branch_weights", i32 2002, i32 2000}
!28 = !{ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsc2V0exE7CWf_11lance_arrow}
!29 = !{i64 0, i64 -9223372036854775788}
!30 = !{i64 0, i64 -9223372036854775789}
!31 = !{i64 0, i64 -9223372036854775771}
!32 = !{i64 0, i64 3}
!33 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!34 = !{ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCskKR1pP4skmg_5jsonb8jsonpath4path4ExprEECsc2V0exE7CWf_11lance_arrow}
!35 = !{i64 -1, i64 -9223372036854775788}
!36 = !{!"branch_weights", i32 1, i32 2000, i32 2000}
!37 = !{!"llvm.loop.isvectorized", i32 1}
!38 = !{!"llvm.loop.unroll.runtime.disable"}
!39 = !{!"llvm.loop.unroll.disable"}
!40 = !{ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsc2V0exE7CWf_11lance_arrow}
!41 = !{!"branch_weights", i32 4001, i32 4000000}
!42 = !{i64 -2, i64 -9223372036854775808}
!43 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!44 = !{i8 0, i8 3}
!45 = !{i8 0, i8 4}
!46 = !{!"branch_weights", !"expected", i32 3434259, i32 2144049389}
!47 = !{i64 4}
!48 = !{!"branch_weights", i32 2000, i32 2002}
!49 = !{i8 0, i8 42}
!50 = distinct !{!50, i1 false, !"_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsc2V0exE7CWf_11lance_arrow"}
!51 = distinct !{!51, !50, !"_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsc2V0exE7CWf_11lance_arrow: argument 0"}
!52 = distinct !{!52, i1 false, !"_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsc2V0exE7CWf_11lance_arrow"}
!53 = distinct !{!53, !52, !"_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsc2V0exE7CWf_11lance_arrow: argument 0"}
!54 = distinct !{!54, i1 false, !"_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append"}
!55 = distinct !{!55, !54, !"_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append: argument 0"}
!56 = distinct !{!56, i1 false, !"_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance"}
!57 = distinct !{!57, !56, !"_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance: argument 0"}
!58 = distinct !{!58, i1 false, !"_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve"}
!59 = distinct !{!59, !58, !"_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve: argument 0"}
!60 = distinct !{!60, i1 false, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsc2V0exE7CWf_11lance_arrow"}
!61 = distinct !{!61, !60, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecxE8push_mutCsc2V0exE7CWf_11lance_arrow: argument 0"}
!62 = !{!51}
!63 = !{!53, !51}
!64 = !{!55}
!65 = !{!57}
!66 = !{!57, !55}
!67 = !{!59}
!68 = !{!59, !57, !55}
!69 = !{!61}
!70 = distinct !{!70, i1 false, !"_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsc2V0exE7CWf_11lance_arrow"}
!71 = distinct !{!71, !70, !"_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsc2V0exE7CWf_11lance_arrow: argument 0"}
!72 = distinct !{!72, i1 false, !"_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsc2V0exE7CWf_11lance_arrow"}
!73 = distinct !{!73, !72, !"_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsc2V0exE7CWf_11lance_arrow: argument 0"}
!74 = distinct !{!74, i1 false, !"_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append"}
!75 = distinct !{!75, !74, !"_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append: argument 0"}
!76 = distinct !{!76, i1 false, !"_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance"}
!77 = distinct !{!77, !76, !"_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance: argument 0"}
!78 = distinct !{!78, i1 false, !"_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve"}
!79 = distinct !{!79, !78, !"_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve: argument 0"}
!80 = distinct !{!80, i1 false, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VeclE8push_mutCsc2V0exE7CWf_11lance_arrow"}
!81 = distinct !{!81, !80, !"_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VeclE8push_mutCsc2V0exE7CWf_11lance_arrow: argument 0"}
!82 = !{!71}
!83 = !{!73, !71}
!84 = !{!75}
!85 = !{!77}
!86 = !{!77, !75}
!87 = !{!79}
!88 = !{!79, !77, !75}
!89 = !{!81}
!90 = distinct !{!90, i1 false, !"_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneReECsc2V0exE7CWf_11lance_arrow"}
!91 = distinct !{!91, !90, !"_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneReECsc2V0exE7CWf_11lance_arrow: argument 0"}
!92 = distinct !{!92, i1 false, !"_RNvXs_NtNtCsgczF5crJ4sT_3std4hash6randomNtB4_11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher12build_hasher"}
!93 = distinct !{!93, !92, !"_RNvXs_NtNtCsgczF5crJ4sT_3std4hash6randomNtB4_11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher12build_hasher: argument 0"}
!94 = distinct !{!94, i1 false, !"_RINvXs3_NtNtCscI6d9CVNmLh_4core4hash5implsReNtB8_4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc2V0exE7CWf_11lance_arrow"}
!95 = distinct !{!95, !94, !"_RINvXs3_NtNtCscI6d9CVNmLh_4core4hash5implsReNtB8_4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc2V0exE7CWf_11lance_arrow: argument 0"}
!96 = distinct !{!96, i1 false, !"_RINvXs0_NtNtCscI6d9CVNmLh_4core4hash5implseNtB8_4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc2V0exE7CWf_11lance_arrow"}
!97 = distinct !{!97, !96, !"_RINvXs0_NtNtCscI6d9CVNmLh_4core4hash5implseNtB8_4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc2V0exE7CWf_11lance_arrow: argument 1"}
!98 = distinct !{!98, !96, !"_RINvXs0_NtNtCscI6d9CVNmLh_4core4hash5implseNtB8_4Hash4hashNtNtNtCsgczF5crJ4sT_3std4hash6random13DefaultHasherECsc2V0exE7CWf_11lance_arrow: argument 0"}
!99 = distinct !{!99, i1 false, !"_RNvXs2_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_13DefaultHasherNtNtCscI6d9CVNmLh_4core4hash6Hasher9write_str"}
!100 = distinct !{!100, !99, !"_RNvXs2_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_13DefaultHasherNtNtCscI6d9CVNmLh_4core4hash6Hasher9write_str: argument 1"}
!101 = distinct !{!101, !99, !"_RNvXs2_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_13DefaultHasherNtNtCscI6d9CVNmLh_4core4hash6Hasher9write_str: argument 0"}
!102 = distinct !{!102, i1 false, !"_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCsc2V0exE7CWf_11lance_arrow"}
!103 = distinct !{!103, !102, !"_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCsc2V0exE7CWf_11lance_arrow: argument 1"}
!104 = distinct !{!104, !102, !"_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCsc2V0exE7CWf_11lance_arrow: argument 0"}
!105 = distinct !{!105, i1 false, !"_RNvXs2_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_13DefaultHasherNtNtCscI6d9CVNmLh_4core4hash6Hasher6finish"}
!106 = distinct !{!106, !105, !"_RNvXs2_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_13DefaultHasherNtNtCscI6d9CVNmLh_4core4hash6Hasher6finish: argument 0"}
!107 = distinct !{!107, i1 false, !"_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCsc2V0exE7CWf_11lance_arrow"}
!108 = distinct !{!108, !107, !"_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCsc2V0exE7CWf_11lance_arrow: argument 0"}
!109 = distinct !{!109, i1 false, !"_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBQ_EE4findNCINvNtB8_3map14equivalent_keyeBQ_BQ_E0ECsc2V0exE7CWf_11lance_arrow"}
!110 = distinct !{!110, !109, !"_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBQ_EE4findNCINvNtB8_3map14equivalent_keyeBQ_BQ_E0ECsc2V0exE7CWf_11lance_arrow: argument 0"}
!111 = distinct !{!111, i1 false, !"_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!112 = distinct !{!112, !111, !"_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!113 = distinct !{!113, !109, !"_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBQ_EE4findNCINvNtB8_3map14equivalent_keyeBQ_BQ_E0ECsc2V0exE7CWf_11lance_arrow: argument 1"}
!114 = distinct !{!114, i1 false, !"_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_loadu_si128"}
!115 = distinct !{!115, !114, !"_RNvNtNtNtCscI6d9CVNmLh_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!116 = distinct !{!116, i1 false, !"_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBS_EE4findNCINvNtBa_3map14equivalent_keyeBS_BS_E0E0Csc2V0exE7CWf_11lance_arrow"}
!117 = distinct !{!117, !116, !"_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringBS_EE4findNCINvNtBa_3map14equivalent_keyeBS_BS_E0E0Csc2V0exE7CWf_11lance_arrow: argument 0"}
!118 = distinct !{!118, i1 false, !"_RNvXs_NtNtCscI6d9CVNmLh_4core3str6traitseNtNtB8_3cmp9PartialEq2eq"}
!119 = distinct !{!119, !118, !"_RNvXs_NtNtCscI6d9CVNmLh_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 1"}
!120 = distinct !{!120, !118, !"_RNvXs_NtNtCscI6d9CVNmLh_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 0"}
!121 = !{!91}
!122 = !{!93}
!123 = !{!104, !103, !101, !100, !98, !97, !95, !91}
!124 = !{!103, !100, !98, !91}
!125 = !{!108, !106}
!126 = !{!110}
!127 = !{!112}
!128 = !{!112, !110}
!129 = !{!113}
!130 = !{!115, !112, !110, !113}
!131 = !{!117, !112, !110, !113}
!132 = !{!120, !119}
end_hunk_4
