Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_arrow.lance_arrow.8c51e37f9723585d-cgu.0?download=true
inline.NumInlined: 3904
inline.NumDeleted: 1641
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RINvNtCsc2V0exE7CWf_11lance_arrow4json18convert_json_arrayNCNvB2_24convert_arrow_json_array0EB4_:bb.a
bb.dw:                                            ; preds = %bb.dv
  %i.mb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.z) #37
          to label %.thread75 unwind label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.mc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.dy:                                            ; preds = %bb.ee
  %i.md = landingpad { ptr, i32 }
          cleanup
  br label %.thread75

bb.dz:                                            ; preds = %bb.dv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ma, ptr noundef nonnull align 8 dereferenceable(128) %i.z, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  %i.me = getelementptr inbounds nuw i8, ptr %i.fv, i64 40
  %i.mf = load ptr, ptr %i.me, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.mg = atomicrmw add ptr %i.mf, i64 1 monotonic, align 8
  %i.mh = icmp slt i64 %i.mg, 0
  br i1 %i.mh, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.mi = getelementptr inbounds nuw i8, ptr %i.fv, i64 48
  %i.mj = load ptr, ptr %i.mi, align 8, !noundef !10
  %i.mk = getelementptr inbounds nuw i8, ptr %i.fv, i64 56
  %i.ml = load i64, ptr %i.mk, align 8, !noundef !10
  store ptr %i.mf, ptr %i.bh, align 8
  %.sroa.4226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.mj, ptr %.sroa.4226.0..sroa_idx, align 8
  %.sroa.5227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i64 %i.ml, ptr %.sroa.5227.0..sroa_idx, align 8
  %i.mm = load ptr, ptr %i.bm, align 16, !nonnull !10, !noundef !10
  %i.mn = load ptr, ptr %i.lj, align 8, !nonnull !10, !align !12, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  %i.mo = getelementptr inbounds nuw i8, ptr %i.fv, i64 64
  %i.mp = load ptr, ptr %i.mo, align 8, !noundef !10 ; 3 uses
  %.not336 = icmp eq ptr %i.mp, null
  br i1 %.not336, label %bb.ed, label %bb.ec

bb.eb:                                            ; preds = %bb.dz
  call void @llvm.trap()
  unreachable

bb.ec:                                            ; preds = %bb.ea
  %i.mq = atomicrmw add ptr %i.mp, i64 1 monotonic, align 8
  %i.mr = icmp slt i64 %i.mq, 0
  br i1 %i.mr, label %bb.eg, label %bb.ef

bb.ed:                                            ; preds = %bb.ea
  store ptr null, ptr %i.bg, align 8
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ef, %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  invoke fastcc void @_RNvMs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array10list_arrayINtB5_16GenericListArrayxE7try_newCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 captures(none) dereferenceable(112) %i.y, ptr noundef nonnull %i.ma, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bh, ptr noundef nonnull %i.mm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.mn, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.bg)
          to label %bb.eh unwind label %bb.dy

bb.ef:                                            ; preds = %bb.ec
  %i.ms = getelementptr inbounds nuw i8, ptr %i.fv, i64 72
  %i.mt = load ptr, ptr %i.ms, align 8, !noundef !10
  %i.mu = getelementptr inbounds nuw i8, ptr %i.fv, i64 80
  %i.mv = getelementptr inbounds nuw i8, ptr %i.fv, i64 96
  store ptr %i.mp, ptr %i.bg, align 8
  %.sroa.0228.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.mt, ptr %.sroa.0228.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0228.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.mw = load <2 x i64>, ptr %i.mu, align 8
  store <2 x i64> %i.mw, ptr %.sroa.0228.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0228.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.mx = load <2 x i64>, ptr %i.mv, align 8
  store <2 x i64> %i.mx, ptr %.sroa.0228.sroa.5.0..sroa_idx, align 8
  br label %bb.ee

bb.eg:                                            ; preds = %bb.ec
  call void @llvm.trap()
  unreachable

bb.eh:                                            ; preds = %bb.ee
  call void @llvm.experimental.noalias.scope.decl(metadata !2069)
  %i.my = load i8, ptr %i.y, align 8, !range !23, !alias.scope !2069, !noalias !2070, !noundef !10
  %i.mz = icmp eq i8 %i.my, -1
  br i1 %i.mz, label %bb.ei, label %bb.em, !prof !11

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2071
  %i.na = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.na, i64 32, i1 false), !noalias !2070
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @194, i64 noundef 43, ptr noundef nonnull %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @195, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #36
          to label %bb.ek unwind label %bb.ej, !noalias !2071

bb.ej:                                            ; preds = %bb.ei
  %i.nb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.l) #37
          to label %.thread75 unwind label %bb.el, !noalias !2071

bb.ek:                                            ; preds = %bb.ei
  unreachable

bb.el:                                            ; preds = %bb.ej
  %i.nc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !2071
  unreachable

bb.em:                                            ; preds = %bb.eh
  %i.nd = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.nd, ptr noundef nonnull readonly align 8 dereferenceable(112) %i.y, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bf, ptr noundef nonnull align 8 dereferenceable(112) %i.bk, i64 112, i1 false)
  store i64 1, ptr %i.x, align 8
  %i.ne = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 1, ptr %i.ne, align 8
  %i.nf = invoke fastcc noundef ptr @_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit(i64 noundef 128)
          to label %bb.ep unwind label %bb.en     ; 2 uses

bb.en:                                            ; preds = %bb.em
  %i.ng = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArrayxEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.nd)
          to label %.body353 unwind label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.nh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

.body353:                                         ; preds = %bb.en
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(112) %i.bf) #37
          to label %common.resume unwind label %bb.bw

bb.ep:                                            ; preds = %bb.em
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.nf, ptr noundef nonnull align 8 dereferenceable(128) %i.x, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.bk, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.nf, ptr %.sroa.472.0..sroa_idx, align 8
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr @6, ptr %.sroa.573.0..sroa_idx, align 8
  %.sroa.674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 1, ptr %.sroa.674.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  br label %bb.dq

.thread75:                                        ; preds = %bb.ej, %bb.dy, %bb.dw
  %.sroa.0145.2.lpad-body = phi i1 [ true, %bb.dw ], [ false, %bb.dy ], [ false, %bb.ej ]
  %eh.lpad-body364 = phi { ptr, i32 } [ %i.mb, %bb.dw ], [ %i.md, %bb.dy ], [ %i.nb, %bb.ej ] ; 2 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(112) %i.bk) #37
          to label %bb.dk unwind label %bb.bw

.thread62:                                        ; preds = %bb.ds, %bb.dl, %bb.dk
  %.pn337.pn67 = phi { ptr, i32 } [ %eh.lpad-body364, %bb.dk ], [ %i.ll, %bb.dl ], [ %i.lv, %bb.ds ] ; 2 uses
  %.sroa.0146.066 = phi i1 [ false, %bb.dk ], [ true, %bb.dl ], [ true, %bb.ds ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2072)
  call void @llvm.experimental.noalias.scope.decl(metadata !2073)
  %i.ni = load ptr, ptr %i.bm, align 16, !alias.scope !2074, !nonnull !10, !noundef !10
  %i.nj = atomicrmw sub ptr %i.ni, i64 1 release, align 8, !noalias !2074
  %i.nk = icmp eq i64 %i.nj, 1
  br i1 %i.nk, label %bb.eq, label %.noexc415

bb.eq:                                            ; preds = %.thread62
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bm)
          to label %.noexc415 unwind label %bb.bw

bb.er:                                            ; preds = %.thread68, %.noexc415
  %.pn337.pn.pn71 = phi { ptr, i32 } [ %i.lr, %.thread68 ], [ %.pn337.pn67, %.noexc415 ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(112) %i.bn) #37
          to label %common.resume unwind label %bb.bw

bb.es:                                            ; preds = %_RNvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBF_4cast7AsArray9as_structCsc2V0exE7CWf_11lance_arrow.exit, %bb.ai
  %.sroa.416.0.ph = phi i64 [ 8, %bb.ai ], [ 0, %_RNvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBF_4cast7AsArray9as_structCsc2V0exE7CWf_11lance_arrow.exit ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.416.0.ph, i64 %i.gn) #36
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc2V0exE7CWf_11lance_arrow.exit: ; preds = %bb.aj, %bb.ah
  %.sroa.416.0 = phi i64 [ %i.gm, %bb.aj ], [ 0, %bb.ah ] ; 2 uses
  %.sroa.10.0 = phi i64 [ %i.gs, %bb.aj ], [ 8, %bb.ah ]
  %i.nl = inttoptr i64 %.sroa.10.0 to ptr
  %i.nm = icmp samesign ule i64 %i.gm, %.sroa.416.0
  tail call void @llvm.assume(i1 %i.nm)
  store i64 %.sroa.416.0, ptr %i.ck, align 8
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 2 uses
  store ptr %i.nl, ptr %i.nn, align 8
  %i.no = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 3 uses
  store i64 0, ptr %i.no, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj)
  %i.np = shl i64 %i.gm, 4                        ; 4 uses
  %3 = icmp samesign ugt i64 %i.gm, 1152921504606846975
  %.not.i417 = icmp ugt i64 %i.np, 9223372036854775800
  %or.cond.i418 = or i1 %3, %.not.i417
  br i1 %or.cond.i418, label %bb.ex, label %bb.et, !prof !27

bb.et:                                            ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc2V0exE7CWf_11lance_arrow.exit
  %i.nq = icmp eq i64 %i.np, 0
  br i1 %i.nq, label %bb.ey, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !2075
  %i.nr = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.np, i64 noundef range(i64 1, -9223372036854775807) 8) #39, !noalias !2075 ; 2 uses
  %i.ns = icmp eq ptr %i.nr, null
  br i1 %i.ns, label %bb.ex, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.nt = ptrtoint ptr %i.nr to i64
  br label %bb.ey

bb.ew:                                            ; preds = %bb.gq
  br i1 %.sroa.0141.1.ph, label %bb.gs, label %common.resume

.thread81:                                        ; preds = %bb.ex, %bb.fc, %bb.fx
  %i.nu = landingpad { ptr, i32 }
          cleanup
  br label %bb.gs

bb.ex:                                            ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc2V0exE7CWf_11lance_arrow.exit, %bb.eu
  %.sroa.419.0.ph = phi i64 [ 8, %bb.eu ], [ 0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc2V0exE7CWf_11lance_arrow.exit ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.419.0.ph, i64 %i.np) #36
          to label %bb.gr unwind label %.thread81

.loopexit:                                        ; preds = %bb.ez
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.gq

.loopexit.split-lp:                               ; preds = %.critedge, %bb.fa
  %.sroa.0141.2.ph = phi i1 [ false, %bb.fa ], [ true, %.critedge ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.gq

bb.ey:                                            ; preds = %bb.ev, %bb.et
  %.sroa.419.0 = phi i64 [ %i.gm, %bb.ev ], [ 0, %bb.et ] ; 2 uses
  %.sroa.1021.0 = phi i64 [ %i.nt, %bb.ev ], [ 8, %bb.et ]
  %i.nv = inttoptr i64 %.sroa.1021.0 to ptr
  %4 = icmp samesign ule i64 %i.gm, %.sroa.419.0
  tail call void @llvm.assume(i1 %4)
  store i64 %.sroa.419.0, ptr %i.cj, align 8
  %i.nw = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  store ptr %i.nv, ptr %i.nw, align 8
  %i.nx = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 3 uses
  store i64 0, ptr %i.nx, align 8
  %i.ny = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %i.nz = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.oa = load ptr, ptr %i.nz, align 8, !nonnull !10, !noundef !10
  %i.ob = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.oc = load i64, ptr %i.ob, align 8, !noundef !10
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.oc, i64 %i.gm) ; 2 uses
  %.not165 = icmp eq i64 %.sroa.0.0.i.i.i, 0
  br i1 %.not165, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ey
  %.sroa.4164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %.sroa.5165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  %.sroa.6166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 112
  %.sroa.7167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 120
  %.sroa.8168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 128
  %i.od = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.of = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.2290.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.sroa.3291.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.og = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.ez

bb.ez:                                            ; preds = %.lr.ph, %bb.gm
  %.sroa.014.0164 = phi i1 [ false, %.lr.ph ], [ %i.pt, %bb.gm ]
  %.sroa.9.0163 = phi i64 [ 0, %.lr.ph ], [ %i.oh, %bb.gm ] ; 3 uses
  %i.oh = add nuw i64 %.sroa.9.0163, 1            ; 2 uses
  %i.oi = getelementptr inbounds nuw [8 x i8], ptr %i.ny, i64 %.sroa.9.0163
  %i.oj = getelementptr inbounds nuw [16 x i8], ptr %i.oa, i64 %.sroa.9.0163
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.622)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch)
  %i.ok = load ptr, ptr %i.oi, align 8, !nonnull !10, !noundef !10
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 16
  invoke fastcc void @_RINvNtCsc2V0exE7CWf_11lance_arrow4json18convert_json_arrayNCNvB2_24convert_arrow_json_array0EB4_(ptr noalias noundef align 8 captures(none) dereferenceable(136) %i.ch, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ol, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.oj)
          to label %bb.fw unwind label %.loopexit

._crit_edge:                                      ; preds = %bb.gm
  br i1 %i.pt, label %bb.fa, label %.critedge

.critedge:                                        ; preds = %bb.ey, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  invoke fastcc void @_RNvXs7_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB5_5FieldNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(112) %i.by, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %1)
          to label %bb.fb unwind label %.loopexit.split-lp

bb.fa:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %i.ck, i64 24, i1 false)
  %i.om = invoke { ptr, i64 } @_RNvXs4_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1y_4sync3ArcNtNtB7_5field5FieldEEE4from(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.cf)
          to label %bb.fg unwind label %.loopexit.split-lp ; 2 uses

bb.fb:                                            ; preds = %.critedge
  %i.on = atomicrmw add ptr %.val, i64 1 monotonic, align 8
  %i.oo = icmp slt i64 %i.on, 0
  br i1 %i.oo, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.by, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.val, ptr %.sroa.435.0..sroa_idx, align 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %.val392, ptr %.sroa.536.0..sroa_idx, align 8
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 0, ptr %.sroa.637.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.cj)
          to label %bb.fe unwind label %.thread81

bb.fd:                                            ; preds = %bb.fb
  call void @llvm.trap()
  unreachable

bb.fe:                                            ; preds = %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.ck)
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fs, %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  br label %bb.bv

bb.fg:                                            ; preds = %bb.fa
  %i.op = extractvalue { ptr, i64 } %i.om, 0      ; 5 uses
  %i.oq = extractvalue { ptr, i64 } %i.om, 1      ; 3 uses
  store ptr %i.op, ptr %i.cg, align 8
  %i.or = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i64 %i.oq, ptr %i.or, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd)
  %i.os = atomicrmw add ptr %i.op, i64 1 monotonic, align 8
  %i.ot = icmp slt i64 %i.os, 0
  br i1 %i.ot, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.ou = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %i.op, ptr %i.ou, align 8
  %i.ov = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store i64 %i.oq, ptr %i.ov, align 8
  store i8 32, ptr %i.cd, align 8
  invoke fastcc void @_RNvNtCsc2V0exE7CWf_11lance_arrow4json20field_with_data_type(ptr noalias noundef align 8 captures(address) dereferenceable(112) %i.ce, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.cd)
          to label %bb.fj unwind label %bb.fu

bb.fi:                                            ; preds = %bb.fg
  call void @llvm.trap()
  unreachable

bb.fj:                                            ; preds = %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %i.cj, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  %i.ow = getelementptr inbounds nuw i8, ptr %i.gi, i64 56
  %i.ox = load ptr, ptr %i.ow, align 8, !noundef !10 ; 3 uses
  %.not328 = icmp eq ptr %i.ox, null
  br i1 %.not328, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.oy = atomicrmw add ptr %i.ox, i64 1 monotonic, align 8
  %i.oz = icmp slt i64 %i.oy, 0
  br i1 %i.oz, label %bb.fo, label %bb.fn

bb.fl:                                            ; preds = %bb.fj
  store ptr null, ptr %i.ca, align 8
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fn, %bb.fl
  invoke void @_RNvMNtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_arrayNtB2_11StructArray3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.cc, ptr noundef nonnull %i.op, i64 noundef %i.oq, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.cb, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.ca)
          to label %bb.fp unwind label %bb.ft

bb.fn:                                            ; preds = %bb.fk
  %i.pa = getelementptr inbounds nuw i8, ptr %i.gi, i64 64
  %i.pb = load ptr, ptr %i.pa, align 8, !noundef !10
  %i.pc = getelementptr inbounds nuw i8, ptr %i.gi, i64 72
  %i.pd = getelementptr inbounds nuw i8, ptr %i.gi, i64 88
  store ptr %i.ox, ptr %i.ca, align 8
  %.sroa.0172.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr %i.pb, ptr %.sroa.0172.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0172.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.pe = load <2 x i64>, ptr %i.pc, align 8
  store <2 x i64> %i.pe, ptr %.sroa.0172.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0172.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.pf = load <2 x i64>, ptr %i.pd, align 8
  store <2 x i64> %i.pf, ptr %.sroa.0172.sroa.5.0..sroa_idx, align 8
  br label %bb.fm

bb.fo:                                            ; preds = %bb.fk
  call void @llvm.trap()
  unreachable

bb.fp:                                            ; preds = %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bz, ptr noundef nonnull align 8 dereferenceable(112) %i.ce, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store i64 1, ptr %i.af, align 8
  %i.pg = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 1, ptr %i.pg, align 8
  %i.ph = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ph, ptr noundef nonnull align 8 dereferenceable(104) %i.cc, i64 104, i1 false)
  %i.pi = invoke fastcc noundef ptr @_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit(i64 noundef 120)
          to label %bb.fs unwind label %bb.fq     ; 2 uses

bb.fq:                                            ; preds = %bb.fp
  %i.pj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_array11StructArrayECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.ph)
          to label %.body381 unwind label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.pk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

.body381:                                         ; preds = %bb.fq
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(112) %i.bz) #37
          to label %common.resume unwind label %bb.bw

bb.fs:                                            ; preds = %bb.fp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.pi, ptr noundef nonnull align 8 dereferenceable(120) %i.af, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.ce, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.pi, ptr %.sroa.430.0..sroa_idx, align 8
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr @2, ptr %.sroa.531.0..sroa_idx, align 8
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 1, ptr %.sroa.632.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
end_hunk_0
begin_hunk_1_@_RINvNtCsc2V0exE7CWf_11lance_arrow4json18convert_json_arrayNCNvB2_24convert_lance_json_array0EB4_:bb.a
bb.ek:                                            ; preds = %bb.ej
  %i.or = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.af) #37
          to label %.thread76 unwind label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.os = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.em:                                            ; preds = %bb.es
  %i.ot = landingpad { ptr, i32 }
          cleanup
  br label %.thread76

bb.en:                                            ; preds = %bb.ej
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.oq, ptr noundef nonnull align 8 dereferenceable(128) %i.af, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ij, i64 40
  %i.ov = load ptr, ptr %i.ou, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.ow = atomicrmw add ptr %i.ov, i64 1 monotonic, align 8
  %i.ox = icmp slt i64 %i.ow, 0
  br i1 %i.ox, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ij, i64 48
  %i.oz = load ptr, ptr %i.oy, align 8, !noundef !10
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ij, i64 56
  %i.pb = load i64, ptr %i.pa, align 8, !noundef !10
  store ptr %i.ov, ptr %i.bn, align 8
  %.sroa.4226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %i.oz, ptr %.sroa.4226.0..sroa_idx, align 8
  %.sroa.5227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i64 %i.pb, ptr %.sroa.5227.0..sroa_idx, align 8
  %i.pc = load ptr, ptr %i.bs, align 16, !nonnull !10, !noundef !10
  %i.pd = load ptr, ptr %i.nz, align 8, !nonnull !10, !align !12, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  %i.pe = getelementptr inbounds nuw i8, ptr %i.ij, i64 64
  %i.pf = load ptr, ptr %i.pe, align 8, !noundef !10 ; 3 uses
  %.not336 = icmp eq ptr %i.pf, null
  br i1 %.not336, label %bb.er, label %bb.eq

bb.ep:                                            ; preds = %bb.en
  call void @llvm.trap()
  unreachable

bb.eq:                                            ; preds = %bb.eo
  %i.pg = atomicrmw add ptr %i.pf, i64 1 monotonic, align 8
  %i.ph = icmp slt i64 %i.pg, 0
  br i1 %i.ph, label %bb.eu, label %bb.et

bb.er:                                            ; preds = %bb.eo
  store ptr null, ptr %i.bm, align 8
  br label %bb.es

bb.es:                                            ; preds = %bb.et, %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  invoke fastcc void @_RNvMs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array10list_arrayINtB5_16GenericListArrayxE7try_newCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 captures(none) dereferenceable(112) %i.ae, ptr noundef nonnull %i.oq, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bn, ptr noundef nonnull %i.pc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.pd, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.bm)
          to label %bb.ev unwind label %bb.em

bb.et:                                            ; preds = %bb.eq
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ij, i64 72
  %i.pj = load ptr, ptr %i.pi, align 8, !noundef !10
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ij, i64 80
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ij, i64 96
  store ptr %i.pf, ptr %i.bm, align 8
  %.sroa.0228.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %i.pj, ptr %.sroa.0228.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0228.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.pm = load <2 x i64>, ptr %i.pk, align 8
  store <2 x i64> %i.pm, ptr %.sroa.0228.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0228.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.pn = load <2 x i64>, ptr %i.pl, align 8
  store <2 x i64> %i.pn, ptr %.sroa.0228.sroa.5.0..sroa_idx, align 8
  br label %bb.es

bb.eu:                                            ; preds = %bb.eq
  call void @llvm.trap()
  unreachable

bb.ev:                                            ; preds = %bb.es
  call void @llvm.experimental.noalias.scope.decl(metadata !2273)
  %i.po = load i8, ptr %i.ae, align 8, !range !23, !alias.scope !2273, !noalias !2274, !noundef !10
  %i.pp = icmp eq i8 %i.po, -1
  br i1 %i.pp, label %bb.ew, label %bb.fa, !prof !11

bb.ew:                                            ; preds = %bb.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2275
  %i.pq = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.pq, i64 32, i1 false), !noalias !2274
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @194, i64 noundef 43, ptr noundef nonnull %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @195, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #36
          to label %bb.ey unwind label %bb.ex, !noalias !2275

bb.ex:                                            ; preds = %bb.ew
  %i.pr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.r) #37
          to label %.thread76 unwind label %bb.ez, !noalias !2275

bb.ey:                                            ; preds = %bb.ew
  unreachable

bb.ez:                                            ; preds = %bb.ex
  %i.ps = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38, !noalias !2275
  unreachable

bb.fa:                                            ; preds = %bb.ev
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.pt, ptr noundef nonnull readonly align 8 dereferenceable(112) %i.ae, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bl, ptr noundef nonnull align 8 dereferenceable(112) %i.bq, i64 112, i1 false)
  store i64 1, ptr %i.ad, align 8
  %i.pu = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 1, ptr %i.pu, align 8
  %i.pv = invoke fastcc noundef ptr @_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit(i64 noundef 128)
          to label %bb.fd unwind label %bb.fb     ; 2 uses

bb.fb:                                            ; preds = %bb.fa
  %i.pw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10list_array16GenericListArrayxEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.pt)
          to label %.body353 unwind label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.px = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

.body353:                                         ; preds = %bb.fb
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(112) %i.bl) #37
          to label %common.resume unwind label %bb.ck

bb.fd:                                            ; preds = %bb.fa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.pv, ptr noundef nonnull align 8 dereferenceable(128) %i.ad, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.bq, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.pv, ptr %.sroa.472.0..sroa_idx, align 8
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr @6, ptr %.sroa.573.0..sroa_idx, align 8
  %.sroa.674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 1, ptr %.sroa.674.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  br label %bb.ee

.thread76:                                        ; preds = %bb.ex, %bb.em, %bb.ek
  %.sroa.0145.2.lpad-body = phi i1 [ true, %bb.ek ], [ false, %bb.em ], [ false, %bb.ex ]
  %eh.lpad-body364 = phi { ptr, i32 } [ %i.or, %bb.ek ], [ %i.ot, %bb.em ], [ %i.pr, %bb.ex ] ; 2 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(112) %i.bq) #37
          to label %bb.dy unwind label %bb.ck

.thread63:                                        ; preds = %bb.eg, %bb.dz, %bb.dy
  %.pn337.pn68 = phi { ptr, i32 } [ %eh.lpad-body364, %bb.dy ], [ %i.ob, %bb.dz ], [ %i.ol, %bb.eg ] ; 2 uses
  %.sroa.0146.067 = phi i1 [ false, %bb.dy ], [ true, %bb.dz ], [ true, %bb.eg ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2276)
  call void @llvm.experimental.noalias.scope.decl(metadata !2277)
  %i.py = load ptr, ptr %i.bs, align 16, !alias.scope !2278, !nonnull !10, !noundef !10
  %i.pz = atomicrmw sub ptr %i.py, i64 1 release, align 8, !noalias !2278
  %i.qa = icmp eq i64 %i.pz, 1
  br i1 %i.qa, label %bb.fe, label %.noexc418

bb.fe:                                            ; preds = %.thread63
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bs)
          to label %.noexc418 unwind label %bb.ck

bb.ff:                                            ; preds = %.thread69, %.noexc418
  %.pn337.pn.pn72 = phi { ptr, i32 } [ %i.oh, %.thread69 ], [ %.pn337.pn68, %.noexc418 ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(112) %i.bt) #37
          to label %common.resume unwind label %bb.ck

bb.fg:                                            ; preds = %_RNvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBF_4cast7AsArray9as_structCsc2V0exE7CWf_11lance_arrow.exit, %bb.aw
  %.sroa.419.0.ph = phi i64 [ 8, %bb.aw ], [ 0, %_RNvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBF_4cast7AsArray9as_structCsc2V0exE7CWf_11lance_arrow.exit ]
  call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.419.0.ph, i64 %i.jb) #36
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc2V0exE7CWf_11lance_arrow.exit: ; preds = %bb.ax, %bb.av
  %.sroa.419.0 = phi i64 [ %i.ja, %bb.ax ], [ 0, %bb.av ] ; 2 uses
  %.sroa.1021.0 = phi i64 [ %i.jg, %bb.ax ], [ 8, %bb.av ]
  %i.qb = inttoptr i64 %.sroa.1021.0 to ptr
  %i.qc = icmp samesign ule i64 %i.ja, %.sroa.419.0
  call void @llvm.assume(i1 %i.qc)
  store i64 %.sroa.419.0, ptr %i.cq, align 8
  %i.qd = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  store ptr %i.qb, ptr %i.qd, align 8
  %i.qe = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 3 uses
  store i64 0, ptr %i.qe, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp)
  %i.qf = shl i64 %i.ja, 4                        ; 4 uses
  %3 = icmp samesign ugt i64 %i.ja, 1152921504606846975
  %.not.i420 = icmp ugt i64 %i.qf, 9223372036854775800
  %or.cond.i421 = or i1 %3, %.not.i420
  br i1 %or.cond.i421, label %bb.fl, label %bb.fh, !prof !27

bb.fh:                                            ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc2V0exE7CWf_11lance_arrow.exit
  %i.qg = icmp eq i64 %i.qf, 0
  br i1 %i.qg, label %bb.fm, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !2279
  %i.qh = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.qf, i64 noundef range(i64 1, -9223372036854775807) 8) #39, !noalias !2279 ; 2 uses
  %i.qi = icmp eq ptr %i.qh, null
  br i1 %i.qi, label %bb.fl, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.qj = ptrtoint ptr %i.qh to i64
  br label %bb.fm

bb.fk:                                            ; preds = %bb.he
  br i1 %.sroa.0141.1.ph, label %bb.hg, label %common.resume

.thread82:                                        ; preds = %bb.fl, %bb.fq, %bb.gl
  %i.qk = landingpad { ptr, i32 }
          cleanup
  br label %bb.hg

bb.fl:                                            ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc2V0exE7CWf_11lance_arrow.exit, %bb.fi
  %.sroa.423.0.ph = phi i64 [ 8, %bb.fi ], [ 0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc2V0exE7CWf_11lance_arrow.exit ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.423.0.ph, i64 %i.qf) #36
          to label %bb.hf unwind label %.thread82

.loopexit:                                        ; preds = %bb.fn
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.he

.loopexit.split-lp:                               ; preds = %.critedge, %bb.fo
  %.sroa.0141.2.ph = phi i1 [ false, %bb.fo ], [ true, %.critedge ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.he

bb.fm:                                            ; preds = %bb.fj, %bb.fh
  %.sroa.423.0 = phi i64 [ %i.ja, %bb.fj ], [ 0, %bb.fh ] ; 2 uses
  %.sroa.1025.0 = phi i64 [ %i.qj, %bb.fj ], [ 8, %bb.fh ]
  %i.ql = inttoptr i64 %.sroa.1025.0 to ptr
  %4 = icmp samesign ule i64 %i.ja, %.sroa.423.0
  call void @llvm.assume(i1 %4)
  store i64 %.sroa.423.0, ptr %i.cp, align 8
  %i.qm = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 2 uses
  store ptr %i.ql, ptr %i.qm, align 8
  %i.qn = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 3 uses
  store i64 0, ptr %i.qn, align 8
  %i.qo = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  %i.qp = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.qq = load ptr, ptr %i.qp, align 8, !nonnull !10, !noundef !10
  %i.qr = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %i.qs = load i64, ptr %i.qr, align 8, !noundef !10
  %.sroa.0.0.i.i.i = call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.qs, i64 %i.ja) ; 2 uses
  %.not167 = icmp eq i64 %.sroa.0.0.i.i.i, 0
  br i1 %.not167, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.fm
  %.sroa.4164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %.sroa.5165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  %.sroa.6166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 112
  %.sroa.7167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 120
  %.sroa.8168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 128
  %i.qt = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.qu = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.qv = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.sroa.2290.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %.sroa.3291.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  %i.qw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.fn

bb.fn:                                            ; preds = %.lr.ph, %bb.ha
  %.sroa.014.0166 = phi i1 [ false, %.lr.ph ], [ %i.sl, %bb.ha ]
  %.sroa.911.0165 = phi i64 [ 0, %.lr.ph ], [ %i.qx, %bb.ha ] ; 3 uses
  %i.qx = add nuw i64 %.sroa.911.0165, 1          ; 2 uses
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %i.qo, i64 %.sroa.911.0165
  %i.qz = getelementptr inbounds nuw [16 x i8], ptr %i.qq, i64 %.sroa.911.0165
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.622)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  %i.ra = load ptr, ptr %i.qy, align 8, !nonnull !10, !noundef !10
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 16
  invoke fastcc void @_RINvNtCsc2V0exE7CWf_11lance_arrow4json18convert_json_arrayNCNvB2_24convert_lance_json_array0EB4_(ptr noalias noundef align 8 captures(none) dereferenceable(136) %i.cn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.rb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.qz)
          to label %bb.gk unwind label %.loopexit

._crit_edge:                                      ; preds = %bb.ha
  br i1 %i.sl, label %bb.fo, label %.critedge

.critedge:                                        ; preds = %bb.fm, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  invoke fastcc void @_RNvXs7_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB5_5FieldNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(112) %i.ce, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %1)
          to label %bb.fp unwind label %.loopexit.split-lp

bb.fo:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %i.cq, i64 24, i1 false)
  %i.rc = invoke { ptr, i64 } @_RNvXs4_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB1y_4sync3ArcNtNtB7_5field5FieldEEE4from(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.cl)
          to label %bb.fu unwind label %.loopexit.split-lp ; 2 uses

bb.fp:                                            ; preds = %.critedge
  %i.rd = load <2 x ptr>, ptr %2, align 8
  %i.re = load ptr, ptr %2, align 8, !nonnull !10, !noundef !10
  %i.rf = atomicrmw add ptr %i.re, i64 1 monotonic, align 8
  %i.rg = icmp slt i64 %i.rf, 0
  br i1 %i.rg, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.ce, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <2 x ptr> %i.rd, ptr %.sroa.435.0..sroa_idx, align 8
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 0, ptr %.sroa.637.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.cp)
          to label %bb.fs unwind label %.thread82

bb.fr:                                            ; preds = %bb.fp
  call void @llvm.trap()
  unreachable

bb.fs:                                            ; preds = %bb.fq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.cq)
  br label %bb.ft

bb.ft:                                            ; preds = %bb.gg, %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  br label %bb.cj

bb.fu:                                            ; preds = %bb.fo
  %i.rh = extractvalue { ptr, i64 } %i.rc, 0      ; 5 uses
  %i.ri = extractvalue { ptr, i64 } %i.rc, 1      ; 3 uses
  store ptr %i.rh, ptr %i.cm, align 8
  %i.rj = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store i64 %i.ri, ptr %i.rj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj)
  %i.rk = atomicrmw add ptr %i.rh, i64 1 monotonic, align 8
  %i.rl = icmp slt i64 %i.rk, 0
  br i1 %i.rl, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.rm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %i.rh, ptr %i.rm, align 8
  %i.rn = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store i64 %i.ri, ptr %i.rn, align 8
  store i8 32, ptr %i.cj, align 8
  invoke fastcc void @_RNvNtCsc2V0exE7CWf_11lance_arrow4json20field_with_data_type(ptr noalias noundef align 8 captures(address) dereferenceable(112) %i.ck, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.cj)
          to label %bb.fx unwind label %bb.gi

bb.fw:                                            ; preds = %bb.fu
  call void @llvm.trap()
  unreachable

bb.fx:                                            ; preds = %bb.fv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %i.cp, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  %i.ro = getelementptr inbounds nuw i8, ptr %i.iw, i64 56
  %i.rp = load ptr, ptr %i.ro, align 8, !noundef !10 ; 3 uses
  %.not328 = icmp eq ptr %i.rp, null
  br i1 %.not328, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.rq = atomicrmw add ptr %i.rp, i64 1 monotonic, align 8
  %i.rr = icmp slt i64 %i.rq, 0
  br i1 %i.rr, label %bb.gc, label %bb.gb

bb.fz:                                            ; preds = %bb.fx
  store ptr null, ptr %i.cg, align 8
  br label %bb.ga

bb.ga:                                            ; preds = %bb.gb, %bb.fz
  invoke void @_RNvMNtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_arrayNtB2_11StructArray3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.ci, ptr noundef nonnull %i.rh, i64 noundef %i.ri, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ch, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.cg)
          to label %bb.gd unwind label %bb.gh

bb.gb:                                            ; preds = %bb.fy
  %i.rs = getelementptr inbounds nuw i8, ptr %i.iw, i64 64
  %i.rt = load ptr, ptr %i.rs, align 8, !noundef !10
  %i.ru = getelementptr inbounds nuw i8, ptr %i.iw, i64 72
  %i.rv = getelementptr inbounds nuw i8, ptr %i.iw, i64 88
  store ptr %i.rp, ptr %i.cg, align 8
  %.sroa.0172.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store ptr %i.rt, ptr %.sroa.0172.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0172.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.rw = load <2 x i64>, ptr %i.ru, align 8
  store <2 x i64> %i.rw, ptr %.sroa.0172.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0172.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.rx = load <2 x i64>, ptr %i.rv, align 8
  store <2 x i64> %i.rx, ptr %.sroa.0172.sroa.5.0..sroa_idx, align 8
  br label %bb.ga

bb.gc:                                            ; preds = %bb.fy
  call void @llvm.trap()
  unreachable

bb.gd:                                            ; preds = %bb.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.cf, ptr noundef nonnull align 8 dereferenceable(112) %i.ck, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store i64 1, ptr %i.al, align 8
  %i.ry = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 1, ptr %i.ry, align 8
  %i.rz = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.rz, ptr noundef nonnull align 8 dereferenceable(104) %i.ci, i64 104, i1 false)
  %i.sa = invoke fastcc noundef ptr @_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit(i64 noundef 120)
          to label %bb.gg unwind label %bb.ge     ; 2 uses

bb.ge:                                            ; preds = %bb.gd
  %i.sb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4ytUTZt2Gw9_11arrow_array5array12struct_array11StructArrayECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.rz)
          to label %.body381 unwind label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.sc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

.body381:                                         ; preds = %bb.ge
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(112) %i.cf) #37
          to label %common.resume unwind label %bb.ck

bb.gg:                                            ; preds = %bb.gd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.sa, ptr noundef nonnull align 8 dereferenceable(120) %i.al, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.ck, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.sa, ptr %.sroa.430.0..sroa_idx, align 8
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr @2, ptr %.sroa.531.0..sroa_idx, align 8
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 1, ptr %.sroa.632.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
end_hunk_1
begin_hunk_2_@_RNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataINtNtCscI6d9CVNmLh_4core7convert4FromINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEEE4fromCsc2V0exE7CWf_11lance_arrow:bb.a
bb.e:                                             ; preds = %bb.j, %bb.h, %bb.g, %bb.d
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !10943)
  call void @llvm.experimental.noalias.scope.decl(metadata !10944)
  call void @llvm.experimental.noalias.scope.decl(metadata !10945)
  %i.v = load ptr, ptr %i.f, align 8, !alias.scope !10946, !nonnull !10, !noundef !10
  %i.w = atomicrmw sub ptr %i.v, i64 1 release, align 8, !noalias !10946
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.g, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit unwind label %bb.e

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit: ; preds = %bb.g, %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10947)
  call void @llvm.experimental.noalias.scope.decl(metadata !10948)
  call void @llvm.experimental.noalias.scope.decl(metadata !10949)
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !10950, !nonnull !10, !noundef !10
  %i.aa = atomicrmw sub ptr %i.z, i64 1 release, align 8, !noalias !10950
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.h, label %.thread31

bb.h:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %.thread31 unwind label %bb.e

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECsc2V0exE7CWf_11lance_arrow.exit: ; preds = %bb.i, %.thread31, %bb.j
  resume { ptr, i32 } %.pn3035

.thread31:                                        ; preds = %bb.h, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit, %.thread36
  %.pn3035 = phi { ptr, i32 } [ %i.n, %.thread36 ], [ %i.t, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit ], [ %i.t, %bb.h ]
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10951)
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !10951, !noundef !10 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECsc2V0exE7CWf_11lance_arrow.exit, label %bb.i

bb.i:                                             ; preds = %.thread31
  %i.af = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !10952
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.j, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECsc2V0exE7CWf_11lance_arrow.exit

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ac)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferEECsc2V0exE7CWf_11lance_arrow.exit unwind label %bb.e
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCsc2V0exE7CWf_11lance_arrow, ptr %.sroa.44.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !10, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !10, !align !12, !noundef !10
  %i.h = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @448, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.h, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !10969)
  call void @llvm.experimental.noalias.scope.decl(metadata !10970)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !10971, !noalias !10972, !noundef !10 ; 7 uses
  %i.k = lshr i64 %i.j, 2                         ; 7 uses
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.k, i64 10) ; 3 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !10973, !noalias !10972, !noundef !10
  %.not.i.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !10969, !noalias !10972
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !10969, !noalias !10972
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !10969, !noalias !10972
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val114.i = load ptr, ptr %i.t, align 8, !alias.scope !10969, !noalias !10972 ; 2 uses
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.us.i, label %.lr.ph.split.i

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.us.i: ; preds = %.lr.ph.i, %bb.e
  %.sroa.015.0124.us.i = phi i64 [ %i.u, %bb.e ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.015.0124.us.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10974)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !10970, !noalias !10975, !nonnull !10, !noundef !10
  %i.w = load ptr, ptr %i.f, align 8, !alias.scope !10970, !noalias !10975, !nonnull !10, !align !12, !noundef !10
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !10, !noalias !10976, !nonnull !10
  %i.z = call noundef zeroext i1 %i.y(ptr noundef nonnull %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 2), !noalias !10976, !inline_history !10964
  br i1 %i.z, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.us.i
  %i.aa = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types10UInt32TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Csc2V0exE7CWf_11lance_arrow(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !10969
  br i1 %i.aa, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !10970, !noalias !10975, !nonnull !10, !noundef !10
  %i.ac = load ptr, ptr %i.f, align 8, !alias.scope !10970, !noalias !10975, !nonnull !10, !align !12, !noundef !10
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !10, !noalias !10976, !nonnull !10
  %i.af = call noundef zeroext i1 %i.ae(ptr noundef nonnull %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 2), !noalias !10976, !inline_history !10964
  br i1 %i.af, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %exitcond145.not.i = icmp eq i64 %i.u, %.sroa.0.0.i.i
  br i1 %exitcond145.not.i, label %._crit_edge.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.us.i

._crit_edge.i:                                    ; preds = %bb.t, %bb.e, %bb.b
  %i.ag = icmp ugt i64 %i.j, 43
  br i1 %i.ag, label %bb.g, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.t
  %.sroa.015.0124.i = phi i64 [ %i.ah, %bb.t ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.ah = add nuw nsw i64 %.sroa.015.0124.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10974)
  %exitcond.not.i = icmp eq i64 %.sroa.015.0124.i, %i.o
  br i1 %exitcond.not.i, label %bb.f, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.i, !prof !11

bb.f:                                             ; preds = %.lr.ph.split.i
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @190, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #36, !noalias !10977
  unreachable

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.i: ; preds = %.lr.ph.split.i
  %i.ai = add i64 %.sroa.015.0124.i, %i.s         ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !10977, !noundef !10
  %i.am = trunc i64 %i.ai to i8
  %i.an = and i8 %i.am, 7
  %i.ao = xor i8 %i.al, -1
  %i.ap = lshr i8 %i.ao, %i.an
  %i.aq = trunc i8 %i.ap to i1
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !10970, !noalias !10975, !nonnull !10, !noundef !10 ; 2 uses
  %i.as = load ptr, ptr %i.f, align 8, !alias.scope !10970, !noalias !10975, !nonnull !10, !align !12, !noundef !10
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !invariant.load !10, !noalias !10976, !nonnull !10 ; 2 uses
  br i1 %i.aq, label %bb.u, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.av = icmp ugt i64 %i.j, 83
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10978
  %i.aw = add nsw i64 %i.k, -20
  store i64 %i.aw, ptr %i.b, align 8, !noalias !10978
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10978
  store ptr %i.b, ptr %i.a, align 8, !noalias !10978
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx.i, align 8, !noalias !10978
  %i.ax = load ptr, ptr %1, align 8, !alias.scope !10970, !noalias !10975, !nonnull !10, !noundef !10
  %i.ay = load ptr, ptr %i.f, align 8, !alias.scope !10970, !noalias !10975, !nonnull !10, !align !12, !noundef !10
  %i.az = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ay, ptr noundef nonnull @27, ptr noundef nonnull %i.a), !noalias !10976
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10978
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10978
  br i1 %i.az, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ba = add nsw i64 %i.k, -10
  %.sroa.0.0.i117.i = call noundef i64 @llvm.umax.i64(i64 %i.ba, i64 %.sroa.0.0.i.i) ; 3 uses
  %i.bb = icmp ult i64 %.sroa.0.0.i117.i, %i.k
  br i1 %i.bb, label %.lr.ph127.i, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit

.lr.ph127.i:                                      ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !10979, !noalias !10972, !noundef !10
  %.not.i.i118.i = icmp eq ptr %i.bd, null
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !10969, !noalias !10972
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !10969, !noalias !10972
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !10969, !noalias !10972
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val110.i = load ptr, ptr %i.bk, align 8, !alias.scope !10969, !noalias !10972 ; 2 uses
  br i1 %.not.i.i118.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.thread.us.i, label %.lr.ph127.split.i

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.thread.us.i: ; preds = %.lr.ph127.i, %bb.l
  %.sroa.068.0125.us.i = phi i64 [ %i.bl, %bb.l ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 2 uses
  %i.bl = add nsw i64 %.sroa.068.0125.us.i, 1     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10980)
  %i.bm = load ptr, ptr %1, align 8, !alias.scope !10970, !noalias !10975, !nonnull !10, !noundef !10
  %i.bn = load ptr, ptr %i.f, align 8, !alias.scope !10970, !noalias !10975, !nonnull !10, !align !12, !noundef !10
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !invariant.load !10, !noalias !10976, !nonnull !10
  %i.bq = call noundef zeroext i1 %i.bp(ptr noundef nonnull %i.bm, ptr noalias noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 2), !noalias !10976, !inline_history !10964
  br i1 %i.bq, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.j

bb.j:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.thread.us.i
  %i.br = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types10UInt32TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Csc2V0exE7CWf_11lance_arrow(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !10969
  br i1 %i.br, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr %1, align 8, !alias.scope !10970, !noalias !10975, !nonnull !10, !noundef !10
  %i.bt = load ptr, ptr %i.f, align 8, !alias.scope !10970, !noalias !10975, !nonnull !10, !align !12, !noundef !10
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !invariant.load !10, !noalias !10976, !nonnull !10
  %i.bw = call noundef zeroext i1 %i.bv(ptr noundef nonnull %i.bs, ptr noalias noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 2), !noalias !10976, !inline_history !10964
  br i1 %i.bw, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %exitcond147.not.i = icmp eq i64 %i.bl, %i.k
  br i1 %exitcond147.not.i, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.thread.us.i

.lr.ph127.split.i:                                ; preds = %.lr.ph127.i, %bb.p
  %.sroa.068.0125.i = phi i64 [ %i.bx, %bb.p ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 4 uses
  %i.bx = add nsw i64 %.sroa.068.0125.i, 1        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10980)
  %i.by = icmp ult i64 %.sroa.068.0125.i, %i.bf
  br i1 %i.by, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.i, label %bb.m, !prof !15

bb.m:                                             ; preds = %.lr.ph127.split.i
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @190, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #36, !noalias !10981
  unreachable

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.i: ; preds = %.lr.ph127.split.i
  %i.bz = add i64 %.sroa.068.0125.i, %i.bj        ; 2 uses
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !noalias !10981, !noundef !10
  %i.cd = trunc i64 %i.bz to i8
  %i.ce = and i8 %i.cd, 7
  %i.cf = xor i8 %i.cc, -1
  %i.cg = lshr i8 %i.cf, %i.ce
  %i.ch = trunc i8 %i.cg to i1
  %i.ci = load ptr, ptr %1, align 8, !alias.scope !10970, !noalias !10975, !nonnull !10, !noundef !10 ; 2 uses
  %i.cj = load ptr, ptr %i.f, align 8, !alias.scope !10970, !noalias !10975, !nonnull !10, !align !12, !noundef !10
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !invariant.load !10, !noalias !10976, !nonnull !10 ; 2 uses
  br i1 %i.ch, label %bb.q, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.thread.i

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.thread.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.i
  %i.cm = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 2), !noalias !10976, !inline_history !10964
  br i1 %i.cm, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.n

bb.n:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.thread.i
  %i.cn = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types10UInt32TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Csc2V0exE7CWf_11lance_arrow(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !10969
  br i1 %i.cn, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = load ptr, ptr %1, align 8, !alias.scope !10970, !noalias !10975, !nonnull !10, !noundef !10
  %i.cp = load ptr, ptr %i.f, align 8, !alias.scope !10970, !noalias !10975, !nonnull !10, !align !12, !noundef !10
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !invariant.load !10, !noalias !10976, !nonnull !10
  %i.cs = call noundef zeroext i1 %i.cr(ptr noundef nonnull %i.co, ptr noalias noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 2), !noalias !10976, !inline_history !10964
  br i1 %i.cs, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %exitcond146.not.i = icmp eq i64 %i.bx, %i.k
  br i1 %exitcond146.not.i, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit, label %.lr.ph127.split.i

bb.q:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.i
  %i.ct = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 8), !noalias !10976, !inline_history !10964
  br i1 %i.ct, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.p

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.i
  %i.cu = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 2), !noalias !10976, !inline_history !10964
  br i1 %i.cu, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.r

bb.r:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i
  %i.cv = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types10UInt32TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Csc2V0exE7CWf_11lance_arrow(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !10969
  br i1 %i.cv, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = load ptr, ptr %1, align 8, !alias.scope !10970, !noalias !10975, !nonnull !10, !noundef !10
  %i.cx = load ptr, ptr %i.f, align 8, !alias.scope !10970, !noalias !10975, !nonnull !10, !align !12, !noundef !10
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !invariant.load !10, !noalias !10976, !nonnull !10
  %i.da = call noundef zeroext i1 %i.cz(ptr noundef nonnull %i.cw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 2), !noalias !10976, !inline_history !10964
  br i1 %i.da, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %exitcond143.not.i = icmp eq i64 %i.ah, %.sroa.0.0.i.i
  br i1 %exitcond143.not.i, label %._crit_edge.i, label %.lr.ph.split.i

bb.u:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.i
  %i.db = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 8), !noalias !10976, !inline_history !10964
  br i1 %i.db, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.t

_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit: ; preds = %bb.p, %bb.l, %bb.i, %._crit_edge.i
  %i.dc = load ptr, ptr %1, align 8, !nonnull !10, !noundef !10
  %i.dd = load ptr, ptr %i.f, align 8, !nonnull !10, !align !12, !noundef !10
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !invariant.load !10, !nonnull !10
  %i.dg = call noundef zeroext i1 %i.df(ptr noundef nonnull %i.dc, ptr noalias noundef nonnull readonly captures(address, read_provenance) @314, i64 noundef 1)
  br label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread

_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread: ; preds = %bb.u, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i, %bb.r, %bb.s, %bb.d, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.us.i, %bb.c, %bb.q, %bb.n, %bb.o, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.thread.i, %bb.k, %bb.j, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.thread.us.i, %bb.h, %bb.a, %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit
  %.sroa.0.1 = phi i1 [ %i.dg, %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit ], [ true, %bb.a ], [ true, %bb.k ], [ true, %bb.q ], [ true, %bb.d ], [ true, %bb.h ], [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.thread.us.i ], [ true, %bb.j ], [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.thread.i ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.c ], [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.us.i ], [ true, %bb.s ], [ true, %bb.r ], [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i ], [ true, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCsc2V0exE7CWf_11lance_arrow, ptr %.sroa.44.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !10, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !10, !align !12, !noundef !10
  %i.h = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @448, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.h, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !10998)
  call void @llvm.experimental.noalias.scope.decl(metadata !10999)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !11000, !noalias !11001, !noundef !10 ; 7 uses
  %i.k = lshr i64 %i.j, 3                         ; 7 uses
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.k, i64 10) ; 3 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !11002, !noalias !11001, !noundef !10
  %.not.i.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !10998, !noalias !11001
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !10998, !noalias !11001
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !10998, !noalias !11001
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val114.i = load ptr, ptr %i.t, align 8, !alias.scope !10998, !noalias !11001 ; 2 uses
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.us.i, label %.lr.ph.split.i

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.us.i: ; preds = %.lr.ph.i, %bb.e
  %.sroa.015.0124.us.i = phi i64 [ %i.u, %bb.e ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.015.0124.us.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11003)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !10999, !noalias !11004, !nonnull !10, !noundef !10
  %i.w = load ptr, ptr %i.f, align 8, !alias.scope !10999, !noalias !11004, !nonnull !10, !align !12, !noundef !10
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !10, !noalias !11005, !nonnull !10
  %i.z = call noundef zeroext i1 %i.y(ptr noundef nonnull %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 2), !noalias !11005, !inline_history !10993
  br i1 %i.z, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.us.i
  %i.aa = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types10UInt64TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Csc2V0exE7CWf_11lance_arrow(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !10998
  br i1 %i.aa, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !10999, !noalias !11004, !nonnull !10, !noundef !10
  %i.ac = load ptr, ptr %i.f, align 8, !alias.scope !10999, !noalias !11004, !nonnull !10, !align !12, !noundef !10
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !10, !noalias !11005, !nonnull !10
  %i.af = call noundef zeroext i1 %i.ae(ptr noundef nonnull %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 2), !noalias !11005, !inline_history !10993
  br i1 %i.af, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %exitcond145.not.i = icmp eq i64 %i.u, %.sroa.0.0.i.i
  br i1 %exitcond145.not.i, label %._crit_edge.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.us.i

._crit_edge.i:                                    ; preds = %bb.t, %bb.e, %bb.b
  %i.ag = icmp ugt i64 %i.j, 87
  br i1 %i.ag, label %bb.g, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.t
  %.sroa.015.0124.i = phi i64 [ %i.ah, %bb.t ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.ah = add nuw nsw i64 %.sroa.015.0124.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11003)
  %exitcond.not.i = icmp eq i64 %.sroa.015.0124.i, %i.o
  br i1 %exitcond.not.i, label %bb.f, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.i, !prof !11

bb.f:                                             ; preds = %.lr.ph.split.i
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @190, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #36, !noalias !11006
  unreachable

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.i: ; preds = %.lr.ph.split.i
  %i.ai = add i64 %.sroa.015.0124.i, %i.s         ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !11006, !noundef !10
  %i.am = trunc i64 %i.ai to i8
  %i.an = and i8 %i.am, 7
  %i.ao = xor i8 %i.al, -1
  %i.ap = lshr i8 %i.ao, %i.an
  %i.aq = trunc i8 %i.ap to i1
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !10999, !noalias !11004, !nonnull !10, !noundef !10 ; 2 uses
  %i.as = load ptr, ptr %i.f, align 8, !alias.scope !10999, !noalias !11004, !nonnull !10, !align !12, !noundef !10
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !invariant.load !10, !noalias !11005, !nonnull !10 ; 2 uses
  br i1 %i.aq, label %bb.u, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.av = icmp ugt i64 %i.j, 167
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11007
  %i.aw = add nsw i64 %i.k, -20
  store i64 %i.aw, ptr %i.b, align 8, !noalias !11007
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11007
  store ptr %i.b, ptr %i.a, align 8, !noalias !11007
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx.i, align 8, !noalias !11007
  %i.ax = load ptr, ptr %1, align 8, !alias.scope !10999, !noalias !11004, !nonnull !10, !noundef !10
  %i.ay = load ptr, ptr %i.f, align 8, !alias.scope !10999, !noalias !11004, !nonnull !10, !align !12, !noundef !10
  %i.az = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ay, ptr noundef nonnull @27, ptr noundef nonnull %i.a), !noalias !11005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11007
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11007
  br i1 %i.az, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ba = add nsw i64 %i.k, -10
  %.sroa.0.0.i117.i = call noundef i64 @llvm.umax.i64(i64 %i.ba, i64 %.sroa.0.0.i.i) ; 3 uses
  %i.bb = icmp ult i64 %.sroa.0.0.i117.i, %i.k
  br i1 %i.bb, label %.lr.ph127.i, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit

.lr.ph127.i:                                      ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !11008, !noalias !11001, !noundef !10
  %.not.i.i118.i = icmp eq ptr %i.bd, null
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !10998, !noalias !11001
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !10998, !noalias !11001
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !10998, !noalias !11001
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val110.i = load ptr, ptr %i.bk, align 8, !alias.scope !10998, !noalias !11001 ; 2 uses
  br i1 %.not.i.i118.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.thread.us.i, label %.lr.ph127.split.i

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.thread.us.i: ; preds = %.lr.ph127.i, %bb.l
  %.sroa.068.0125.us.i = phi i64 [ %i.bl, %bb.l ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 2 uses
  %i.bl = add nsw i64 %.sroa.068.0125.us.i, 1     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11009)
  %i.bm = load ptr, ptr %1, align 8, !alias.scope !10999, !noalias !11004, !nonnull !10, !noundef !10
  %i.bn = load ptr, ptr %i.f, align 8, !alias.scope !10999, !noalias !11004, !nonnull !10, !align !12, !noundef !10
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !invariant.load !10, !noalias !11005, !nonnull !10
  %i.bq = call noundef zeroext i1 %i.bp(ptr noundef nonnull %i.bm, ptr noalias noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 2), !noalias !11005, !inline_history !10993
  br i1 %i.bq, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.j

bb.j:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.thread.us.i
  %i.br = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types10UInt64TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Csc2V0exE7CWf_11lance_arrow(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !10998
  br i1 %i.br, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr %1, align 8, !alias.scope !10999, !noalias !11004, !nonnull !10, !noundef !10
  %i.bt = load ptr, ptr %i.f, align 8, !alias.scope !10999, !noalias !11004, !nonnull !10, !align !12, !noundef !10
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !invariant.load !10, !noalias !11005, !nonnull !10
  %i.bw = call noundef zeroext i1 %i.bv(ptr noundef nonnull %i.bs, ptr noalias noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 2), !noalias !11005, !inline_history !10993
  br i1 %i.bw, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %exitcond147.not.i = icmp eq i64 %i.bl, %i.k
  br i1 %exitcond147.not.i, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.thread.us.i

.lr.ph127.split.i:                                ; preds = %.lr.ph127.i, %bb.p
  %.sroa.068.0125.i = phi i64 [ %i.bx, %bb.p ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 4 uses
  %i.bx = add nsw i64 %.sroa.068.0125.i, 1        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11009)
  %i.by = icmp ult i64 %.sroa.068.0125.i, %i.bf
  br i1 %i.by, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.i, label %bb.m, !prof !15

bb.m:                                             ; preds = %.lr.ph127.split.i
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @190, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #36, !noalias !11010
  unreachable

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.i: ; preds = %.lr.ph127.split.i
  %i.bz = add i64 %.sroa.068.0125.i, %i.bj        ; 2 uses
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !noalias !11010, !noundef !10
  %i.cd = trunc i64 %i.bz to i8
  %i.ce = and i8 %i.cd, 7
  %i.cf = xor i8 %i.cc, -1
  %i.cg = lshr i8 %i.cf, %i.ce
  %i.ch = trunc i8 %i.cg to i1
  %i.ci = load ptr, ptr %1, align 8, !alias.scope !10999, !noalias !11004, !nonnull !10, !noundef !10 ; 2 uses
  %i.cj = load ptr, ptr %i.f, align 8, !alias.scope !10999, !noalias !11004, !nonnull !10, !align !12, !noundef !10
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !invariant.load !10, !noalias !11005, !nonnull !10 ; 2 uses
  br i1 %i.ch, label %bb.q, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.thread.i

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.thread.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.i
  %i.cm = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 2), !noalias !11005, !inline_history !10993
  br i1 %i.cm, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.n

bb.n:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.thread.i
  %i.cn = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types10UInt64TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Csc2V0exE7CWf_11lance_arrow(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !10998
  br i1 %i.cn, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = load ptr, ptr %1, align 8, !alias.scope !10999, !noalias !11004, !nonnull !10, !noundef !10
  %i.cp = load ptr, ptr %i.f, align 8, !alias.scope !10999, !noalias !11004, !nonnull !10, !align !12, !noundef !10
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !invariant.load !10, !noalias !11005, !nonnull !10
  %i.cs = call noundef zeroext i1 %i.cr(ptr noundef nonnull %i.co, ptr noalias noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 2), !noalias !11005, !inline_history !10993
  br i1 %i.cs, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %exitcond146.not.i = icmp eq i64 %i.bx, %i.k
  br i1 %exitcond146.not.i, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit, label %.lr.ph127.split.i

bb.q:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.i
  %i.ct = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 8), !noalias !11005, !inline_history !10993
  br i1 %i.ct, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.p

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.i
  %i.cu = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 2), !noalias !11005, !inline_history !10993
  br i1 %i.cu, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.r

bb.r:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i
  %i.cv = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types10UInt64TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Csc2V0exE7CWf_11lance_arrow(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !10998
  br i1 %i.cv, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = load ptr, ptr %1, align 8, !alias.scope !10999, !noalias !11004, !nonnull !10, !noundef !10
  %i.cx = load ptr, ptr %i.f, align 8, !alias.scope !10999, !noalias !11004, !nonnull !10, !align !12, !noundef !10
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !invariant.load !10, !noalias !11005, !nonnull !10
  %i.da = call noundef zeroext i1 %i.cz(ptr noundef nonnull %i.cw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 2), !noalias !11005, !inline_history !10993
  br i1 %i.da, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %exitcond143.not.i = icmp eq i64 %i.ah, %.sroa.0.0.i.i
  br i1 %exitcond143.not.i, label %._crit_edge.i, label %.lr.ph.split.i

bb.u:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.i
  %i.db = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 8), !noalias !11005, !inline_history !10993
  br i1 %i.db, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.t

_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit: ; preds = %bb.p, %bb.l, %bb.i, %._crit_edge.i
  %i.dc = load ptr, ptr %1, align 8, !nonnull !10, !noundef !10
  %i.dd = load ptr, ptr %i.f, align 8, !nonnull !10, !align !12, !noundef !10
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !invariant.load !10, !nonnull !10
  %i.dg = call noundef zeroext i1 %i.df(ptr noundef nonnull %i.dc, ptr noalias noundef nonnull readonly captures(address, read_provenance) @314, i64 noundef 1)
  br label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread

_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread: ; preds = %bb.u, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i, %bb.r, %bb.s, %bb.d, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.us.i, %bb.c, %bb.q, %bb.n, %bb.o, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.thread.i, %bb.k, %bb.j, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.thread.us.i, %bb.h, %bb.a, %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit
  %.sroa.0.1 = phi i1 [ %i.dg, %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit ], [ true, %bb.a ], [ true, %bb.k ], [ true, %bb.q ], [ true, %bb.d ], [ true, %bb.h ], [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.thread.us.i ], [ true, %bb.j ], [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.thread.i ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.c ], [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.us.i ], [ true, %bb.s ], [ true, %bb.r ], [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i ], [ true, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float16TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCsc2V0exE7CWf_11lance_arrow, ptr %.sroa.44.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !10, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !10, !align !12, !noundef !10
  %i.h = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @448, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.h, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !11027)
  call void @llvm.experimental.noalias.scope.decl(metadata !11028)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !11029, !noalias !11030, !noundef !10 ; 7 uses
  %i.k = lshr i64 %i.j, 1                         ; 7 uses
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.k, i64 10) ; 3 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !11031, !noalias !11030, !noundef !10
  %.not.i.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !11027, !noalias !11030
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !11027, !noalias !11030
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !11027, !noalias !11030
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val114.i = load ptr, ptr %i.t, align 8, !alias.scope !11027, !noalias !11030 ; 2 uses
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.us.i, label %.lr.ph.split.i

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.us.i: ; preds = %.lr.ph.i, %bb.e
  %.sroa.015.0124.us.i = phi i64 [ %i.u, %bb.e ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.015.0124.us.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11032)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !11028, !noalias !11033, !nonnull !10, !noundef !10
  %i.w = load ptr, ptr %i.f, align 8, !alias.scope !11028, !noalias !11033, !nonnull !10, !align !12, !noundef !10
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !10, !noalias !11033, !nonnull !10
  %i.z = call noundef zeroext i1 %i.y(ptr noundef nonnull %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 2), !noalias !11033, !inline_history !11022
  br i1 %i.z, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.us.i
  %i.aa = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types11Float16TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Csc2V0exE7CWf_11lance_arrow(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !11027
  br i1 %i.aa, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !11028, !noalias !11033, !nonnull !10, !noundef !10
  %i.ac = load ptr, ptr %i.f, align 8, !alias.scope !11028, !noalias !11033, !nonnull !10, !align !12, !noundef !10
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !10, !noalias !11033, !nonnull !10
  %i.af = call noundef zeroext i1 %i.ae(ptr noundef nonnull %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 2), !noalias !11033, !inline_history !11022
  br i1 %i.af, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %exitcond145.not.i = icmp eq i64 %i.u, %.sroa.0.0.i.i
  br i1 %exitcond145.not.i, label %._crit_edge.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.us.i

._crit_edge.i:                                    ; preds = %bb.t, %bb.e, %bb.b
  %i.ag = icmp ugt i64 %i.j, 21
  br i1 %i.ag, label %bb.g, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.t
  %.sroa.015.0124.i = phi i64 [ %i.ah, %bb.t ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.ah = add nuw nsw i64 %.sroa.015.0124.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11032)
  %exitcond.not.i = icmp eq i64 %.sroa.015.0124.i, %i.o
  br i1 %exitcond.not.i, label %bb.f, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.i, !prof !11

bb.f:                                             ; preds = %.lr.ph.split.i
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @190, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #36, !noalias !11034
  unreachable

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.i: ; preds = %.lr.ph.split.i
  %i.ai = add i64 %.sroa.015.0124.i, %i.s         ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !11034, !noundef !10
  %i.am = trunc i64 %i.ai to i8
  %i.an = and i8 %i.am, 7
  %i.ao = xor i8 %i.al, -1
  %i.ap = lshr i8 %i.ao, %i.an
  %i.aq = trunc i8 %i.ap to i1
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !11028, !noalias !11033, !nonnull !10, !noundef !10 ; 2 uses
  %i.as = load ptr, ptr %i.f, align 8, !alias.scope !11028, !noalias !11033, !nonnull !10, !align !12, !noundef !10
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !invariant.load !10, !noalias !11033, !nonnull !10 ; 2 uses
  br i1 %i.aq, label %bb.u, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.av = icmp ugt i64 %i.j, 41
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11035
  %i.aw = add nsw i64 %i.k, -20
  store i64 %i.aw, ptr %i.b, align 8, !noalias !11035
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11035
  store ptr %i.b, ptr %i.a, align 8, !noalias !11035
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx.i, align 8, !noalias !11035
end_hunk_2
begin_hunk_3_@_RNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float16TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsc2V0exE7CWf_11lance_arrow:bb.a
  %i.cn = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types11Float16TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Csc2V0exE7CWf_11lance_arrow(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !11027
  br i1 %i.cn, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = load ptr, ptr %1, align 8, !alias.scope !11028, !noalias !11033, !nonnull !10, !noundef !10
  %i.cp = load ptr, ptr %i.f, align 8, !alias.scope !11028, !noalias !11033, !nonnull !10, !align !12, !noundef !10
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !invariant.load !10, !noalias !11033, !nonnull !10
  %i.cs = call noundef zeroext i1 %i.cr(ptr noundef nonnull %i.co, ptr noalias noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 2), !noalias !11033, !inline_history !11022
  br i1 %i.cs, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %exitcond146.not.i = icmp eq i64 %i.bx, %i.k
  br i1 %exitcond146.not.i, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit, label %.lr.ph127.split.i

bb.q:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.i
  %i.ct = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 8), !noalias !11033, !inline_history !11022
  br i1 %i.ct, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.p

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.i
  %i.cu = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 2), !noalias !11033, !inline_history !11022
  br i1 %i.cu, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.r

bb.r:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i
  %i.cv = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types11Float16TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Csc2V0exE7CWf_11lance_arrow(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !11027
  br i1 %i.cv, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = load ptr, ptr %1, align 8, !alias.scope !11028, !noalias !11033, !nonnull !10, !noundef !10
  %i.cx = load ptr, ptr %i.f, align 8, !alias.scope !11028, !noalias !11033, !nonnull !10, !align !12, !noundef !10
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !invariant.load !10, !noalias !11033, !nonnull !10
  %i.da = call noundef zeroext i1 %i.cz(ptr noundef nonnull %i.cw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 2), !noalias !11033, !inline_history !11022
  br i1 %i.da, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %exitcond143.not.i = icmp eq i64 %i.ah, %.sroa.0.0.i.i
  br i1 %exitcond143.not.i, label %._crit_edge.i, label %.lr.ph.split.i

bb.u:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.i
  %i.db = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 8), !noalias !11033, !inline_history !11022
  br i1 %i.db, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.t

_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit: ; preds = %bb.p, %bb.l, %bb.i, %._crit_edge.i
  %i.dc = load ptr, ptr %1, align 8, !nonnull !10, !noundef !10
  %i.dd = load ptr, ptr %i.f, align 8, !nonnull !10, !align !12, !noundef !10
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !invariant.load !10, !nonnull !10
  %i.dg = call noundef zeroext i1 %i.df(ptr noundef nonnull %i.dc, ptr noalias noundef nonnull readonly captures(address, read_provenance) @314, i64 noundef 1)
  br label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread

_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread: ; preds = %bb.u, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i, %bb.r, %bb.s, %bb.d, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.us.i, %bb.c, %bb.q, %bb.n, %bb.o, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.thread.i, %bb.k, %bb.j, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.thread.us.i, %bb.h, %bb.a, %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit
  %.sroa.0.1 = phi i1 [ %i.dg, %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit ], [ true, %bb.a ], [ true, %bb.k ], [ true, %bb.q ], [ true, %bb.d ], [ true, %bb.h ], [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.thread.us.i ], [ true, %bb.j ], [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.thread.i ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.c ], [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.us.i ], [ true, %bb.s ], [ true, %bb.r ], [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float16TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i ], [ true, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float32TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCsc2V0exE7CWf_11lance_arrow, ptr %.sroa.44.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !10, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !10, !align !12, !noundef !10
  %i.h = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @448, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.h, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !11055)
  call void @llvm.experimental.noalias.scope.decl(metadata !11056)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !11057, !noalias !11058, !noundef !10 ; 7 uses
  %i.k = lshr i64 %i.j, 2                         ; 7 uses
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.k, i64 10) ; 3 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !11059, !noalias !11058, !noundef !10
  %.not.i.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !11055, !noalias !11058
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !11055, !noalias !11058
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !11055, !noalias !11058
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val114.i = load ptr, ptr %i.t, align 8, !alias.scope !11055, !noalias !11058 ; 2 uses
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.us.i, label %.lr.ph.split.i

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.us.i: ; preds = %.lr.ph.i, %bb.e
  %.sroa.015.0124.us.i = phi i64 [ %i.u, %bb.e ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.015.0124.us.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11060)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !11056, !noalias !11061, !nonnull !10, !noundef !10
  %i.w = load ptr, ptr %i.f, align 8, !alias.scope !11056, !noalias !11061, !nonnull !10, !align !12, !noundef !10
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !10, !noalias !11061, !nonnull !10
  %i.z = call noundef zeroext i1 %i.y(ptr noundef nonnull %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 2), !noalias !11061, !inline_history !11050
  br i1 %i.z, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.us.i
  %i.aa = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types11Float32TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Csc2V0exE7CWf_11lance_arrow(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !11055
  br i1 %i.aa, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !11056, !noalias !11061, !nonnull !10, !noundef !10
  %i.ac = load ptr, ptr %i.f, align 8, !alias.scope !11056, !noalias !11061, !nonnull !10, !align !12, !noundef !10
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !10, !noalias !11061, !nonnull !10
  %i.af = call noundef zeroext i1 %i.ae(ptr noundef nonnull %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 2), !noalias !11061, !inline_history !11050
  br i1 %i.af, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %exitcond145.not.i = icmp eq i64 %i.u, %.sroa.0.0.i.i
  br i1 %exitcond145.not.i, label %._crit_edge.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.us.i

._crit_edge.i:                                    ; preds = %bb.t, %bb.e, %bb.b
  %i.ag = icmp ugt i64 %i.j, 43
  br i1 %i.ag, label %bb.g, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.t
  %.sroa.015.0124.i = phi i64 [ %i.ah, %bb.t ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.ah = add nuw nsw i64 %.sroa.015.0124.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11060)
  %exitcond.not.i = icmp eq i64 %.sroa.015.0124.i, %i.o
  br i1 %exitcond.not.i, label %bb.f, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.i, !prof !11

bb.f:                                             ; preds = %.lr.ph.split.i
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @190, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #36, !noalias !11062
  unreachable

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.i: ; preds = %.lr.ph.split.i
  %i.ai = add i64 %.sroa.015.0124.i, %i.s         ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !11062, !noundef !10
  %i.am = trunc i64 %i.ai to i8
  %i.an = and i8 %i.am, 7
  %i.ao = xor i8 %i.al, -1
  %i.ap = lshr i8 %i.ao, %i.an
  %i.aq = trunc i8 %i.ap to i1
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !11056, !noalias !11061, !nonnull !10, !noundef !10 ; 2 uses
  %i.as = load ptr, ptr %i.f, align 8, !alias.scope !11056, !noalias !11061, !nonnull !10, !align !12, !noundef !10
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !invariant.load !10, !noalias !11061, !nonnull !10 ; 2 uses
  br i1 %i.aq, label %bb.u, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.av = icmp ugt i64 %i.j, 83
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11063
  %i.aw = add nsw i64 %i.k, -20
  store i64 %i.aw, ptr %i.b, align 8, !noalias !11063
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11063
  store ptr %i.b, ptr %i.a, align 8, !noalias !11063
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx.i, align 8, !noalias !11063
  %i.ax = load ptr, ptr %1, align 8, !alias.scope !11056, !noalias !11061, !nonnull !10, !noundef !10
  %i.ay = load ptr, ptr %i.f, align 8, !alias.scope !11056, !noalias !11061, !nonnull !10, !align !12, !noundef !10
  %i.az = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ay, ptr noundef nonnull @27, ptr noundef nonnull %i.a), !noalias !11061
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11063
  br i1 %i.az, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ba = add nsw i64 %i.k, -10
  %.sroa.0.0.i117.i = call noundef i64 @llvm.umax.i64(i64 %i.ba, i64 %.sroa.0.0.i.i) ; 3 uses
  %i.bb = icmp ult i64 %.sroa.0.0.i117.i, %i.k
  br i1 %i.bb, label %.lr.ph127.i, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit

.lr.ph127.i:                                      ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !11064, !noalias !11058, !noundef !10
  %.not.i.i118.i = icmp eq ptr %i.bd, null
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !11055, !noalias !11058
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !11055, !noalias !11058
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !11055, !noalias !11058
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val110.i = load ptr, ptr %i.bk, align 8, !alias.scope !11055, !noalias !11058 ; 2 uses
  br i1 %.not.i.i118.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.thread.us.i, label %.lr.ph127.split.i

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.thread.us.i: ; preds = %.lr.ph127.i, %bb.l
  %.sroa.068.0125.us.i = phi i64 [ %i.bl, %bb.l ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 2 uses
  %i.bl = add nsw i64 %.sroa.068.0125.us.i, 1     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11065)
  %i.bm = load ptr, ptr %1, align 8, !alias.scope !11056, !noalias !11061, !nonnull !10, !noundef !10
  %i.bn = load ptr, ptr %i.f, align 8, !alias.scope !11056, !noalias !11061, !nonnull !10, !align !12, !noundef !10
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !invariant.load !10, !noalias !11061, !nonnull !10
  %i.bq = call noundef zeroext i1 %i.bp(ptr noundef nonnull %i.bm, ptr noalias noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 2), !noalias !11061, !inline_history !11050
  br i1 %i.bq, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.j

bb.j:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.thread.us.i
  %i.br = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types11Float32TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Csc2V0exE7CWf_11lance_arrow(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !11055
  br i1 %i.br, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr %1, align 8, !alias.scope !11056, !noalias !11061, !nonnull !10, !noundef !10
  %i.bt = load ptr, ptr %i.f, align 8, !alias.scope !11056, !noalias !11061, !nonnull !10, !align !12, !noundef !10
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !invariant.load !10, !noalias !11061, !nonnull !10
  %i.bw = call noundef zeroext i1 %i.bv(ptr noundef nonnull %i.bs, ptr noalias noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 2), !noalias !11061, !inline_history !11050
  br i1 %i.bw, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %exitcond147.not.i = icmp eq i64 %i.bl, %i.k
  br i1 %exitcond147.not.i, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.thread.us.i

.lr.ph127.split.i:                                ; preds = %.lr.ph127.i, %bb.p
  %.sroa.068.0125.i = phi i64 [ %i.bx, %bb.p ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 4 uses
  %i.bx = add nsw i64 %.sroa.068.0125.i, 1        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11065)
  %i.by = icmp ult i64 %.sroa.068.0125.i, %i.bf
  br i1 %i.by, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.i, label %bb.m, !prof !15

bb.m:                                             ; preds = %.lr.ph127.split.i
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @190, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #36, !noalias !11066
  unreachable

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.i: ; preds = %.lr.ph127.split.i
  %i.bz = add i64 %.sroa.068.0125.i, %i.bj        ; 2 uses
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !noalias !11066, !noundef !10
  %i.cd = trunc i64 %i.bz to i8
  %i.ce = and i8 %i.cd, 7
  %i.cf = xor i8 %i.cc, -1
  %i.cg = lshr i8 %i.cf, %i.ce
  %i.ch = trunc i8 %i.cg to i1
  %i.ci = load ptr, ptr %1, align 8, !alias.scope !11056, !noalias !11061, !nonnull !10, !noundef !10 ; 2 uses
  %i.cj = load ptr, ptr %i.f, align 8, !alias.scope !11056, !noalias !11061, !nonnull !10, !align !12, !noundef !10
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !invariant.load !10, !noalias !11061, !nonnull !10 ; 2 uses
  br i1 %i.ch, label %bb.q, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.thread.i

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.thread.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.i
  %i.cm = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 2), !noalias !11061, !inline_history !11050
  br i1 %i.cm, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.n

bb.n:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.thread.i
  %i.cn = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types11Float32TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Csc2V0exE7CWf_11lance_arrow(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !11055
  br i1 %i.cn, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = load ptr, ptr %1, align 8, !alias.scope !11056, !noalias !11061, !nonnull !10, !noundef !10
  %i.cp = load ptr, ptr %i.f, align 8, !alias.scope !11056, !noalias !11061, !nonnull !10, !align !12, !noundef !10
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !invariant.load !10, !noalias !11061, !nonnull !10
  %i.cs = call noundef zeroext i1 %i.cr(ptr noundef nonnull %i.co, ptr noalias noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 2), !noalias !11061, !inline_history !11050
  br i1 %i.cs, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %exitcond146.not.i = icmp eq i64 %i.bx, %i.k
  br i1 %exitcond146.not.i, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit, label %.lr.ph127.split.i

bb.q:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.i
  %i.ct = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 8), !noalias !11061, !inline_history !11050
  br i1 %i.ct, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.p

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.i
  %i.cu = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 2), !noalias !11061, !inline_history !11050
  br i1 %i.cu, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.r

bb.r:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i
  %i.cv = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types11Float32TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Csc2V0exE7CWf_11lance_arrow(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !11055
  br i1 %i.cv, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = load ptr, ptr %1, align 8, !alias.scope !11056, !noalias !11061, !nonnull !10, !noundef !10
  %i.cx = load ptr, ptr %i.f, align 8, !alias.scope !11056, !noalias !11061, !nonnull !10, !align !12, !noundef !10
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !invariant.load !10, !noalias !11061, !nonnull !10
  %i.da = call noundef zeroext i1 %i.cz(ptr noundef nonnull %i.cw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 2), !noalias !11061, !inline_history !11050
  br i1 %i.da, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %exitcond143.not.i = icmp eq i64 %i.ah, %.sroa.0.0.i.i
  br i1 %exitcond143.not.i, label %._crit_edge.i, label %.lr.ph.split.i

bb.u:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.i
  %i.db = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 8), !noalias !11061, !inline_history !11050
  br i1 %i.db, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.t

_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit: ; preds = %bb.p, %bb.l, %bb.i, %._crit_edge.i
  %i.dc = load ptr, ptr %1, align 8, !nonnull !10, !noundef !10
  %i.dd = load ptr, ptr %i.f, align 8, !nonnull !10, !align !12, !noundef !10
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !invariant.load !10, !nonnull !10
  %i.dg = call noundef zeroext i1 %i.df(ptr noundef nonnull %i.dc, ptr noalias noundef nonnull readonly captures(address, read_provenance) @314, i64 noundef 1)
  br label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread

_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread: ; preds = %bb.u, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i, %bb.r, %bb.s, %bb.d, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.us.i, %bb.c, %bb.q, %bb.n, %bb.o, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.thread.i, %bb.k, %bb.j, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.thread.us.i, %bb.h, %bb.a, %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit
  %.sroa.0.1 = phi i1 [ %i.dg, %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit ], [ true, %bb.a ], [ true, %bb.k ], [ true, %bb.q ], [ true, %bb.d ], [ true, %bb.h ], [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.thread.us.i ], [ true, %bb.j ], [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.thread.i ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.c ], [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.us.i ], [ true, %bb.s ], [ true, %bb.r ], [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float32TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i ], [ true, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types11Float64TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsc2V0exE7CWf_11lance_arrow(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCsc2V0exE7CWf_11lance_arrow, ptr %.sroa.44.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !10, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !10, !align !12, !noundef !10
  %i.h = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @448, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.h, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !11083)
  call void @llvm.experimental.noalias.scope.decl(metadata !11084)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !11085, !noalias !11086, !noundef !10 ; 7 uses
  %i.k = lshr i64 %i.j, 3                         ; 7 uses
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.k, i64 10) ; 3 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !11087, !noalias !11086, !noundef !10
  %.not.i.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !11083, !noalias !11086
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !11083, !noalias !11086
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !11083, !noalias !11086
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val114.i = load ptr, ptr %i.t, align 8, !alias.scope !11083, !noalias !11086 ; 2 uses
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.us.i, label %.lr.ph.split.i

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.us.i: ; preds = %.lr.ph.i, %bb.e
  %.sroa.015.0124.us.i = phi i64 [ %i.u, %bb.e ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.015.0124.us.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11088)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !11084, !noalias !11089, !nonnull !10, !noundef !10
  %i.w = load ptr, ptr %i.f, align 8, !alias.scope !11084, !noalias !11089, !nonnull !10, !align !12, !noundef !10
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !10, !noalias !11089, !nonnull !10
  %i.z = call noundef zeroext i1 %i.y(ptr noundef nonnull %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 2), !noalias !11089, !inline_history !11078
  br i1 %i.z, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.us.i
  %i.aa = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types11Float64TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Csc2V0exE7CWf_11lance_arrow(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !11083
  br i1 %i.aa, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !11084, !noalias !11089, !nonnull !10, !noundef !10
  %i.ac = load ptr, ptr %i.f, align 8, !alias.scope !11084, !noalias !11089, !nonnull !10, !align !12, !noundef !10
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !10, !noalias !11089, !nonnull !10
  %i.af = call noundef zeroext i1 %i.ae(ptr noundef nonnull %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 2), !noalias !11089, !inline_history !11078
  br i1 %i.af, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %exitcond145.not.i = icmp eq i64 %i.u, %.sroa.0.0.i.i
  br i1 %exitcond145.not.i, label %._crit_edge.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.us.i

._crit_edge.i:                                    ; preds = %bb.t, %bb.e, %bb.b
  %i.ag = icmp ugt i64 %i.j, 87
  br i1 %i.ag, label %bb.g, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.t
  %.sroa.015.0124.i = phi i64 [ %i.ah, %bb.t ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.ah = add nuw nsw i64 %.sroa.015.0124.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11088)
  %exitcond.not.i = icmp eq i64 %.sroa.015.0124.i, %i.o
  br i1 %exitcond.not.i, label %bb.f, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.i, !prof !11

bb.f:                                             ; preds = %.lr.ph.split.i
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @190, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #36, !noalias !11090
  unreachable

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.i: ; preds = %.lr.ph.split.i
  %i.ai = add i64 %.sroa.015.0124.i, %i.s         ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !11090, !noundef !10
  %i.am = trunc i64 %i.ai to i8
  %i.an = and i8 %i.am, 7
  %i.ao = xor i8 %i.al, -1
  %i.ap = lshr i8 %i.ao, %i.an
  %i.aq = trunc i8 %i.ap to i1
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !11084, !noalias !11089, !nonnull !10, !noundef !10 ; 2 uses
  %i.as = load ptr, ptr %i.f, align 8, !alias.scope !11084, !noalias !11089, !nonnull !10, !align !12, !noundef !10
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !invariant.load !10, !noalias !11089, !nonnull !10 ; 2 uses
  br i1 %i.aq, label %bb.u, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.av = icmp ugt i64 %i.j, 167
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11091
  %i.aw = add nsw i64 %i.k, -20
  store i64 %i.aw, ptr %i.b, align 8, !noalias !11091
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11091
  store ptr %i.b, ptr %i.a, align 8, !noalias !11091
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx.i, align 8, !noalias !11091
  %i.ax = load ptr, ptr %1, align 8, !alias.scope !11084, !noalias !11089, !nonnull !10, !noundef !10
  %i.ay = load ptr, ptr %i.f, align 8, !alias.scope !11084, !noalias !11089, !nonnull !10, !align !12, !noundef !10
  %i.az = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ay, ptr noundef nonnull @27, ptr noundef nonnull %i.a), !noalias !11089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11091
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11091
  br i1 %i.az, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ba = add nsw i64 %i.k, -10
  %.sroa.0.0.i117.i = call noundef i64 @llvm.umax.i64(i64 %i.ba, i64 %.sroa.0.0.i.i) ; 3 uses
  %i.bb = icmp ult i64 %.sroa.0.0.i117.i, %i.k
  br i1 %i.bb, label %.lr.ph127.i, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit

.lr.ph127.i:                                      ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !11092, !noalias !11086, !noundef !10
  %.not.i.i118.i = icmp eq ptr %i.bd, null
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !11083, !noalias !11086
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !11083, !noalias !11086
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !11083, !noalias !11086
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val110.i = load ptr, ptr %i.bk, align 8, !alias.scope !11083, !noalias !11086 ; 2 uses
  br i1 %.not.i.i118.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.thread.us.i, label %.lr.ph127.split.i

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.thread.us.i: ; preds = %.lr.ph127.i, %bb.l
  %.sroa.068.0125.us.i = phi i64 [ %i.bl, %bb.l ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 2 uses
  %i.bl = add nsw i64 %.sroa.068.0125.us.i, 1     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11093)
  %i.bm = load ptr, ptr %1, align 8, !alias.scope !11084, !noalias !11089, !nonnull !10, !noundef !10
  %i.bn = load ptr, ptr %i.f, align 8, !alias.scope !11084, !noalias !11089, !nonnull !10, !align !12, !noundef !10
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !invariant.load !10, !noalias !11089, !nonnull !10
  %i.bq = call noundef zeroext i1 %i.bp(ptr noundef nonnull %i.bm, ptr noalias noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 2), !noalias !11089, !inline_history !11078
  br i1 %i.bq, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.j

bb.j:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.thread.us.i
  %i.br = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types11Float64TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Csc2V0exE7CWf_11lance_arrow(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !11083
  br i1 %i.br, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr %1, align 8, !alias.scope !11084, !noalias !11089, !nonnull !10, !noundef !10
  %i.bt = load ptr, ptr %i.f, align 8, !alias.scope !11084, !noalias !11089, !nonnull !10, !align !12, !noundef !10
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !invariant.load !10, !noalias !11089, !nonnull !10
  %i.bw = call noundef zeroext i1 %i.bv(ptr noundef nonnull %i.bs, ptr noalias noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 2), !noalias !11089, !inline_history !11078
  br i1 %i.bw, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %exitcond147.not.i = icmp eq i64 %i.bl, %i.k
  br i1 %exitcond147.not.i, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.thread.us.i

.lr.ph127.split.i:                                ; preds = %.lr.ph127.i, %bb.p
  %.sroa.068.0125.i = phi i64 [ %i.bx, %bb.p ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 4 uses
  %i.bx = add nsw i64 %.sroa.068.0125.i, 1        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11093)
  %i.by = icmp ult i64 %.sroa.068.0125.i, %i.bf
  br i1 %i.by, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.i, label %bb.m, !prof !15

bb.m:                                             ; preds = %.lr.ph127.split.i
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @190, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #36, !noalias !11094
  unreachable

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.i: ; preds = %.lr.ph127.split.i
  %i.bz = add i64 %.sroa.068.0125.i, %i.bj        ; 2 uses
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !noalias !11094, !noundef !10
  %i.cd = trunc i64 %i.bz to i8
  %i.ce = and i8 %i.cd, 7
  %i.cf = xor i8 %i.cc, -1
  %i.cg = lshr i8 %i.cf, %i.ce
  %i.ch = trunc i8 %i.cg to i1
  %i.ci = load ptr, ptr %1, align 8, !alias.scope !11084, !noalias !11089, !nonnull !10, !noundef !10 ; 2 uses
  %i.cj = load ptr, ptr %i.f, align 8, !alias.scope !11084, !noalias !11089, !nonnull !10, !align !12, !noundef !10
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !invariant.load !10, !noalias !11089, !nonnull !10 ; 2 uses
  br i1 %i.ch, label %bb.q, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.thread.i

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.thread.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.i
  %i.cm = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 2), !noalias !11089, !inline_history !11078
  br i1 %i.cm, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.n

bb.n:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.thread.i
  %i.cn = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types11Float64TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Csc2V0exE7CWf_11lance_arrow(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !11083
  br i1 %i.cn, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = load ptr, ptr %1, align 8, !alias.scope !11084, !noalias !11089, !nonnull !10, !noundef !10
  %i.cp = load ptr, ptr %i.f, align 8, !alias.scope !11084, !noalias !11089, !nonnull !10, !align !12, !noundef !10
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !invariant.load !10, !noalias !11089, !nonnull !10
  %i.cs = call noundef zeroext i1 %i.cr(ptr noundef nonnull %i.co, ptr noalias noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 2), !noalias !11089, !inline_history !11078
  br i1 %i.cs, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %exitcond146.not.i = icmp eq i64 %i.bx, %i.k
  br i1 %exitcond146.not.i, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit, label %.lr.ph127.split.i

bb.q:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.i
  %i.ct = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 8), !noalias !11089, !inline_history !11078
  br i1 %i.ct, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.p

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.i
  %i.cu = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 2), !noalias !11089, !inline_history !11078
  br i1 %i.cu, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.r

bb.r:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i
  %i.cv = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types11Float64TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0Csc2V0exE7CWf_11lance_arrow(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !11083
  br i1 %i.cv, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = load ptr, ptr %1, align 8, !alias.scope !11084, !noalias !11089, !nonnull !10, !noundef !10
  %i.cx = load ptr, ptr %i.f, align 8, !alias.scope !11084, !noalias !11089, !nonnull !10, !align !12, !noundef !10
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !invariant.load !10, !noalias !11089, !nonnull !10
  %i.da = call noundef zeroext i1 %i.cz(ptr noundef nonnull %i.cw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 2), !noalias !11089, !inline_history !11078
  br i1 %i.da, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %exitcond143.not.i = icmp eq i64 %i.ah, %.sroa.0.0.i.i
  br i1 %exitcond143.not.i, label %._crit_edge.i, label %.lr.ph.split.i

bb.u:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.i
  %i.db = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 8), !noalias !11089, !inline_history !11078
  br i1 %i.db, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread, label %bb.t

_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit: ; preds = %bb.p, %bb.l, %bb.i, %._crit_edge.i
  %i.dc = load ptr, ptr %1, align 8, !nonnull !10, !noundef !10
  %i.dd = load ptr, ptr %i.f, align 8, !nonnull !10, !align !12, !noundef !10
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !invariant.load !10, !nonnull !10
  %i.dg = call noundef zeroext i1 %i.df(ptr noundef nonnull %i.dc, ptr noalias noundef nonnull readonly captures(address, read_provenance) @314, i64 noundef 1)
  br label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread

_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit.thread: ; preds = %bb.u, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i, %bb.r, %bb.s, %bb.d, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.us.i, %bb.c, %bb.q, %bb.n, %bb.o, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.thread.i, %bb.k, %bb.j, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.thread.us.i, %bb.h, %bb.a, %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit
  %.sroa.0.1 = phi i1 [ %i.dg, %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types11Float64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsc2V0exE7CWf_11lance_arrow.exit ], [ true, %bb.a ], [ true, %bb.k ], [ true, %bb.q ], [ true, %bb.d ], [ true, %bb.h ], [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.thread.us.i ], [ true, %bb.j ], [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit120.thread.i ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.c ], [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.us.i ], [ true, %bb.s ], [ true, %bb.r ], [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types11Float64TypeENtB7_5Array7is_nullCsc2V0exE7CWf_11lance_arrow.exit.thread.i ], [ true, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %.sroa.0.1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5_NtCs8SUNSmrkv52_12arrow_schema5errorNtB5_10ArrowErrorNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
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
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = load i64, ptr %0, align 8, !range !29, !noundef !10 ; 3 uses
  %i.s = icmp ne i64 %i.r, -9223372036854775796
  tail call void @llvm.assume(i1 %i.s)
  %i.t = xor i64 %i.r, -9223372036854775808
  %i.u = icmp slt i64 %i.r, 0
  %i.v = select i1 %i.u, i64 %i.t, i64 12
  switch i64 %i.v, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.k
    i64 9, label %bb.l
    i64 10, label %bb.m
    i64 11, label %bb.n
    i64 12, label %bb.o
    i64 13, label %bb.p
    i64 14, label %bb.q
    i64 15, label %bb.r
    i64 16, label %bb.s
    i64 17, label %bb.t
    i64 18, label %bb.u
    i64 19, label %bb.v
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.q, align 8
  %i.x = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @449, i64 noundef 17, ptr noundef nonnull %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.w

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.p, align 8
  %i.z = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @451, i64 noundef 13, ptr noundef nonnull %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @450)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.w

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.o, align 8
  %i.ab = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @452, i64 noundef 9, ptr noundef nonnull %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.w

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.n, align 8
  %i.ad = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @453, i64 noundef 11, ptr noundef nonnull %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.w

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %i.m, align 8
  %i.af = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @454, i64 noundef 10, ptr noundef nonnull %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.w

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ag, ptr %i.l, align 8
  %i.ah = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @455, i64 noundef 11, ptr noundef nonnull %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.w

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ai, ptr %i.k, align 8
  %i.aj = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @456, i64 noundef 12, ptr noundef nonnull %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.w

bb.j:                                             ; preds = %bb.a
  %i.ak = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @457, i64 noundef 12)
  br label %bb.w

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
end_hunk_3
