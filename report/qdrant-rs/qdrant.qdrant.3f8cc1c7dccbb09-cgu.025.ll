Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.025?download=true
inline.NumInlined: 4049
inline.NumDeleted: 1792
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXs7_NtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_opsNtB5_19ConsensusOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone:bb.a
    i64 2, label %bb.dt
    i64 3, label %bb.du
    i64 4, label %bb.dv
    i64 5, label %bb.dw
  ]

bb.dr:                                            ; preds = %.noexc5.i
  %i.mo = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %.val, i64 144
  %i.mq = load i32, ptr %i.mp, align 8, !alias.scope !8341, !noundef !23
  %i.mr = getelementptr inbounds nuw i8, ptr %.val, i64 120
  %i.ms = load i32, ptr %i.mr, align 8, !range !76, !alias.scope !8341, !noundef !23 ; 2 uses
  %i.mt = trunc nuw i32 %i.ms to i1
  %i.mu = getelementptr inbounds nuw i8, ptr %.val, i64 124
  %i.mv = load i32, ptr %i.mu, align 4, !alias.scope !8341
  %.sroa.524.0.i.i.i.i = select i1 %i.mt, i32 %i.mv, i32 undef
  %i.mw = getelementptr inbounds nuw i8, ptr %.val, i64 128
  %i.mx = load <2 x i64>, ptr %i.mw, align 8, !alias.scope !8341
  %i.my = getelementptr inbounds nuw i8, ptr %.val, i64 148
  %i.mz = load i8, ptr %i.my, align 4, !range !25, !alias.scope !8341, !noundef !23
  %i.na = getelementptr inbounds nuw i8, ptr %.val, i64 149
  %i.nb = load i8, ptr %i.na, align 1, !range !72, !alias.scope !8341, !noundef !23
  %i.nc = load i64, ptr %i.mo, align 8, !range !41, !alias.scope !8341, !noundef !23
  %.not31.i.i.i.i = icmp eq i64 %i.nc, -2
  br i1 %.not31.i.i.i.i, label %bb.dy, label %bb.dx

bb.ds:                                            ; preds = %.noexc5.i
  %i.nd = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.ne = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.nf = load i32, ptr %i.ne, align 8, !alias.scope !8341, !noundef !23
  %i.ng = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.nh = getelementptr inbounds nuw i8, ptr %.val, i64 44
  %i.ni = load i8, ptr %i.nh, align 4, !range !27, !alias.scope !8341, !noundef !23
  %i.nj = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.nk = load <2 x i32>, ptr %i.nd, align 8, !alias.scope !8341
  store <2 x i32> %i.nk, ptr %i.nj, align 8, !alias.scope !8339, !noalias !8301
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.nl = load <2 x i64>, ptr %i.ng, align 8, !alias.scope !8341
  store <2 x i64> %i.nl, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !alias.scope !8339, !noalias !8301
  %.sroa.75.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store i32 %i.nf, ptr %.sroa.75.0..sroa_idx.i.i.i.i, align 8, !alias.scope !8339, !noalias !8301
  %.sroa.86.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 36
  store i8 %i.ni, ptr %.sroa.86.0..sroa_idx.i.i.i.i, align 4, !alias.scope !8339, !noalias !8301
  br label %.noexc25.i.i.i

bb.dt:                                            ; preds = %.noexc5.i
  %i.nm = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %.val, i64 144
  %i.no = load i32, ptr %i.nn, align 8, !alias.scope !8341, !noundef !23
  %i.np = getelementptr inbounds nuw i8, ptr %.val, i64 120
  %i.nq = load i32, ptr %i.np, align 8, !range !76, !alias.scope !8341, !noundef !23 ; 2 uses
  %i.nr = trunc nuw i32 %i.nq to i1
  %i.ns = getelementptr inbounds nuw i8, ptr %.val, i64 124
  %i.nt = load i32, ptr %i.ns, align 4, !alias.scope !8341
  %.sroa.518.0.i.i.i.i = select i1 %i.nr, i32 %i.nt, i32 undef
  %i.nu = getelementptr inbounds nuw i8, ptr %.val, i64 128
  %i.nv = load <2 x i64>, ptr %i.nu, align 8, !alias.scope !8341
  %i.nw = getelementptr inbounds nuw i8, ptr %.val, i64 148
  %i.nx = load i8, ptr %i.nw, align 4, !range !25, !alias.scope !8341, !noundef !23
  %i.ny = getelementptr inbounds nuw i8, ptr %.val, i64 149
  %i.nz = load i8, ptr %i.ny, align 1, !range !72, !alias.scope !8341, !noundef !23
  %i.oa = load i64, ptr %i.nm, align 8, !range !41, !alias.scope !8341, !noundef !23
  %.not29.i.i.i.i = icmp eq i64 %i.oa, -2
  br i1 %.not29.i.i.i.i, label %bb.ea, label %bb.dz

bb.du:                                            ; preds = %.noexc5.i
  %i.ob = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.oc = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.oc, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ob, i64 32, i1 false), !alias.scope !8342, !noalias !8286
  br label %.noexc25.i.i.i

bb.dv:                                            ; preds = %.noexc5.i
  %i.od = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.oe = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.oe, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.od, i64 32, i1 false), !alias.scope !8342, !noalias !8286
  br label %.noexc25.i.i.i

bb.dw:                                            ; preds = %.noexc5.i
  %i.of = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.og = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.oh = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.oh, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.og, i64 32, i1 false), !alias.scope !8342, !noalias !8286
  %i.oi = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.oi, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.of)
          to label %.noexc25.i.i.i unwind label %bb.gl, !noalias !8286

bb.dx:                                            ; preds = %bb.dr
  invoke fastcc void @_RNvXse8_NtCs607s0NAIaWN_7segment5typesNtB6_6FilterNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.mo) #27
          to label %.noexc26.i.i.i unwind label %bb.gl, !noalias !8286

.noexc26.i.i.i:                                   ; preds = %bb.dx
  %.sroa.026.0.copyload.i.i.i.i = load i64, ptr %i.t, align 8, !noalias !8343
  br label %bb.dy

bb.dy:                                            ; preds = %.noexc26.i.i.i, %bb.dr
  %.sroa.026.0.i.i.i.i = phi i64 [ %.sroa.026.0.copyload.i.i.i.i, %.noexc26.i.i.i ], [ -2, %bb.dr ]
  %i.oj = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i64 %.sroa.026.0.i.i.i.i, ptr %i.oj, align 8, !alias.scope !8339, !noalias !8301
  %.sroa.0.sroa.4.0..sroa_idx.i20.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0.sroa.4.0..sroa_idx.i20.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %i.mm, i64 96, i1 false), !noalias !8344
  %.sroa.4.0..sroa_idx.i21.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 112
  store i32 %i.ms, ptr %.sroa.4.0..sroa_idx.i21.i.i.i, align 8, !alias.scope !8339, !noalias !8301
  %.sroa.5.0..sroa_idx.i22.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 116
  store i32 %.sroa.524.0.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i22.i.i.i, align 4, !alias.scope !8339, !noalias !8301
  %.sroa.6.0..sroa_idx.i23.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 120
  store <2 x i64> %i.mx, ptr %.sroa.6.0..sroa_idx.i23.i.i.i, align 8, !alias.scope !8339, !noalias !8301
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 136
  store i32 %i.mq, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 8, !alias.scope !8339, !noalias !8301
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 140
  store i8 %i.mz, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 4, !alias.scope !8339, !noalias !8301
  %.sroa.10.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 141
  store i8 %i.nb, ptr %.sroa.10.0..sroa_idx.i.i.i.i, align 1, !alias.scope !8339, !noalias !8301
  br label %.noexc25.i.i.i

bb.dz:                                            ; preds = %bb.dt
  invoke fastcc void @_RNvXse8_NtCs607s0NAIaWN_7segment5typesNtB6_6FilterNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.nm) #27
          to label %.noexc27.i.i.i unwind label %bb.gl, !noalias !8286

.noexc27.i.i.i:                                   ; preds = %bb.dz
  %.sroa.020.0.copyload.i.i.i.i = load i64, ptr %i.u, align 8, !noalias !8343
  br label %bb.ea

bb.ea:                                            ; preds = %.noexc27.i.i.i, %bb.dt
  %.sroa.020.0.i.i.i.i = phi i64 [ %.sroa.020.0.copyload.i.i.i.i, %.noexc27.i.i.i ], [ -2, %bb.dt ]
  %i.ok = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i64 %.sroa.020.0.i.i.i.i, ptr %i.ok, align 8, !alias.scope !8339, !noalias !8301
  %.sroa.08.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.08.sroa.4.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %i.ml, i64 96, i1 false), !noalias !8344
  %.sroa.49.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 112
  store i32 %i.nq, ptr %.sroa.49.0..sroa_idx.i.i.i.i, align 8, !alias.scope !8339, !noalias !8301
  %.sroa.510.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 116
  store i32 %.sroa.518.0.i.i.i.i, ptr %.sroa.510.0..sroa_idx.i.i.i.i, align 4, !alias.scope !8339, !noalias !8301
  %.sroa.611.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 120
  store <2 x i64> %i.nv, ptr %.sroa.611.0..sroa_idx.i.i.i.i, align 8, !alias.scope !8339, !noalias !8301
  %.sroa.813.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 136
  store i32 %i.no, ptr %.sroa.813.0..sroa_idx.i.i.i.i, align 8, !alias.scope !8339, !noalias !8301
  %.sroa.914.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 140
  store i8 %i.nx, ptr %.sroa.914.0..sroa_idx.i.i.i.i, align 4, !alias.scope !8339, !noalias !8301
  %.sroa.1015.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 141
  store i8 %i.nz, ptr %.sroa.1015.0..sroa_idx.i.i.i.i, align 1, !alias.scope !8339, !noalias !8301
  br label %.noexc25.i.i.i

bb.eb:                                            ; preds = %bb.c
  %i.ol = getelementptr inbounds nuw i8, ptr %.val, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !8301
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8346)
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(40) %i.ap, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ol)
          to label %.noexc6.i unwind label %bb.gm

.noexc6.i:                                        ; preds = %bb.eb
  %i.om = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.on = load i32, ptr %i.om, align 8, !alias.scope !8347, !noundef !23
  %i.oo = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.op = load i64, ptr %i.oo, align 8, !alias.scope !8347, !noundef !23
  %i.oq = getelementptr inbounds nuw i8, ptr %.val, i64 44
  %i.or = load i8, ptr %i.oq, align 4, !range !8348, !alias.scope !8347, !noundef !23
  %i.os = getelementptr inbounds nuw i8, ptr %.val, i64 45
  %i.ot = load i8, ptr %i.os, align 1, !range !69, !alias.scope !8347, !noundef !23
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store i32 %i.on, ptr %i.ou, align 8, !alias.scope !8345, !noalias !8301
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store i64 %i.op, ptr %i.ov, align 8, !alias.scope !8345, !noalias !8301
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ap, i64 36
  store i8 %i.or, ptr %i.ow, align 4, !alias.scope !8345, !noalias !8301
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ap, i64 37
  store i8 %i.ot, ptr %i.ox, align 1, !alias.scope !8345, !noalias !8301
  %i.oy = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.oy, ptr noundef nonnull align 8 dereferenceable(40) %i.ap, i64 40, i1 false), !noalias !8288
  store i64 7, ptr %i.at, align 8, !alias.scope !8286, !noalias !8285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !8301
  br label %_RNvXsd_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxNtNtNtCsgGgPqgSfnMH_7storage15content_manager19collection_meta_ops24CollectionMetaOperationsENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit

bb.ec:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.074.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8349)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !8350
  %i.oz = getelementptr inbounds nuw i8, ptr %.val, i64 32
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.oz)
          to label %.noexc7.i unwind label %bb.gm

.noexc7.i:                                        ; preds = %bb.ec
  %i.pa = getelementptr inbounds nuw i8, ptr %.val, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !8350
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8352)
  %i.pb = load i64, ptr %i.pa, align 8, !range !32, !alias.scope !8353, !noundef !23
  %i.pc = trunc nuw i64 %i.pb to i1               ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %.sink.i.sroa.gep.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sink.i.sroa.gep4.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  br i1 %i.pc, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %.noexc7.i
  %i.pe = load i64, ptr %i.pd, align 8, !alias.scope !8353, !noundef !23
  br label %bb.ei

bb.ee:                                            ; preds = %.noexc7.i
  %i.pf = getelementptr inbounds nuw i8, ptr %.val, i64 31
  %i.pg = load i8, ptr %i.pf, align 1, !alias.scope !8353, !noundef !23
  %.not.i.i28.i.i.i = icmp slt i8 %i.pg, 0
  %i.ph = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %.val.i.i37.i.i.i = load ptr, ptr %i.pd, align 8, !alias.scope !8353 ; 4 uses
  %.val21.i.i38.i.i.i = load i64, ptr %i.ph, align 8, !alias.scope !8353 ; 2 uses
  %.not.i.i.i.i39.i.i.i = icmp eq ptr %.val.i.i37.i.i.i, inttoptr (i64 16 to ptr)
  %or.cond = select i1 %.not.i.i28.i.i.i, i1 true, i1 %.not.i.i.i.i39.i.i.i
  br i1 %or.cond, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i31.i.i.i, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.pi = getelementptr inbounds i8, ptr %.val.i.i37.i.i.i, i64 -16
  %i.pj = atomicrmw add ptr %i.pi, i64 1 monotonic, align 8, !noalias !8354
  %i.pk = icmp slt i64 %i.pj, 0
  br i1 %i.pk, label %bb.eg, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i31.i.i.i, !prof !38

bb.eg:                                            ; preds = %bb.ef
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i.i37.i.i.i, i64 noundef %.val21.i.i38.i.i.i) #28
          to label %.noexc.i40.i.i.i unwind label %bb.eh, !noalias !8355

.noexc.i40.i.i.i:                                 ; preds = %bb.eg
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i31.i.i.i: ; preds = %bb.ee, %bb.ef
  store ptr %.val.i.i37.i.i.i, ptr %.sink.i.sroa.gep4.i.i.i.i, align 8, !alias.scope !8351, !noalias !8350
  br label %bb.ei

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types8ShardKeyECsl8OoimOLbh_6qdrant.exit.i.i.i.i: ; preds = %bb.ek, %bb.ej, %bb.eh
  %.pn.i36.i.i.i = phi { ptr, i32 } [ %i.pl, %bb.eh ], [ %i.po, %bb.ek ], [ %i.po, %bb.ej ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s) #24
          to label %bb.gn unwind label %bb.el, !noalias !8355

bb.eh:                                            ; preds = %bb.eg
  %i.pl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types8ShardKeyECsl8OoimOLbh_6qdrant.exit.i.i.i.i

bb.ei:                                            ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i31.i.i.i, %bb.ed
  %.sink.i.sroa.phi.i34.i.i.i = phi ptr [ %.sink.i.sroa.gep.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i31.i.i.i ], [ %.sink.i.sroa.gep4.i.i.i.i, %bb.ed ]
  %.sroa.58.0.sink.i.i35.i.i.i = phi i64 [ %.val21.i.i38.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i31.i.i.i ], [ %i.pe, %bb.ed ]
  %i.pm = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i31.i.i.i ], [ 1, %bb.ed ]
  store i64 %.sroa.58.0.sink.i.i35.i.i.i, ptr %.sink.i.sroa.phi.i34.i.i.i, align 8, !alias.scope !8351, !noalias !8350
  store i64 %i.pm, ptr %i.r, align 8, !alias.scope !8351, !noalias !8350
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !8350
  %i.pn = getelementptr inbounds nuw i8, ptr %.val, i64 56
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_yEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pn)
          to label %_RNvXs1N_NtNtCsgGgPqgSfnMH_7storage15content_manager19collection_meta_opsNtB6_14CreateShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i unwind label %bb.ej, !noalias !8355

bb.ej:                                            ; preds = %bb.ei
  %i.po = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.r, i64 23
  %i.pq = load i8, ptr %i.pp, align 1, !alias.scope !8356, !noalias !8350
  %.not.i.i.i.i.i.i.i.i = icmp slt i8 %i.pq, 0
  %or.cond.i.not.i.i.i.i = select i1 %i.pc, i1 true, i1 %.not.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.not.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types8ShardKeyECsl8OoimOLbh_6qdrant.exit.i.i.i.i, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink.i.sroa.gep4.i.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types8ShardKeyECsl8OoimOLbh_6qdrant.exit.i.i.i.i unwind label %bb.el, !noalias !8355

bb.el:                                            ; preds = %bb.ek, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types8ShardKeyECsl8OoimOLbh_6qdrant.exit.i.i.i.i
  %i.pr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !8355
  unreachable

_RNvXs1N_NtNtCsgGgPqgSfnMH_7storage15content_manager19collection_meta_opsNtB6_14CreateShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.ei
  %i.ps = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.pt = load i8, ptr %i.ps, align 8, !range !69, !alias.scope !8357, !noundef !23
  %.sroa.074.24..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.074.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.074.24..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !8358
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.074.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !8358
  %.sroa.074.48..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.074.i.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.074.48..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !8358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !8350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !8350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !8350
  %i.pu = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.pu, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.074.i.i.i, i64 72, i1 false), !noalias !8288
  %.sroa.675.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 80
  store i8 %i.pt, ptr %.sroa.675.0..sroa_idx.i.i.i, align 8, !alias.scope !8286, !noalias !8285
  store i64 8, ptr %i.at, align 8, !alias.scope !8286, !noalias !8285
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.074.i.i.i)
  br label %_RNvXsd_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxNtNtNtCsgGgPqgSfnMH_7storage15content_manager19collection_meta_ops24CollectionMetaOperationsENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit

bb.em:                                            ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8359)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !8360
  %i.pv = getelementptr inbounds nuw i8, ptr %.val, i64 32
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pv)
          to label %.noexc8.i unwind label %bb.gm

.noexc8.i:                                        ; preds = %bb.em
  %i.pw = getelementptr inbounds nuw i8, ptr %.val, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i41.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8362)
  %i.px = load i64, ptr %i.pw, align 8, !range !32, !alias.scope !8363, !noundef !23
  %i.py = trunc nuw i64 %i.px to i1
  %i.pz = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  br i1 %i.py, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %.noexc8.i
  %i.qa = load i64, ptr %i.pz, align 8, !alias.scope !8363, !noundef !23
  br label %_RNvXs1T_NtNtCsgGgPqgSfnMH_7storage15content_manager19collection_meta_opsNtB6_12DropShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i

bb.eo:                                            ; preds = %.noexc8.i
  %i.qb = getelementptr inbounds nuw i8, ptr %.val, i64 31
  %i.qc = load i8, ptr %i.qb, align 1, !alias.scope !8363, !noundef !23
  %.not.i.i42.i.i.i = icmp sgt i8 %i.qc, -1
  %i.qd = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %.val.i.i53.i.i.i = load ptr, ptr %i.pz, align 8, !alias.scope !8363 ; 5 uses
  %.val21.i.i54.i.i.i = load i64, ptr %i.qd, align 8, !alias.scope !8363 ; 2 uses
  br i1 %.not.i.i42.i.i.i, label %bb.ep, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i45.i.i.i

bb.ep:                                            ; preds = %bb.eo
  %.not.i.i.i.i55.i.i.i = icmp eq ptr %.val.i.i53.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i55.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i45.i.i.i, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.qe = getelementptr inbounds i8, ptr %.val.i.i53.i.i.i, i64 -16
  %i.qf = atomicrmw add ptr %i.qe, i64 1 monotonic, align 8, !noalias !8364
  %i.qg = icmp slt i64 %i.qf, 0
  br i1 %i.qg, label %bb.er, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i45.i.i.i, !prof !38

bb.er:                                            ; preds = %bb.eq
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i.i53.i.i.i, i64 noundef %.val21.i.i54.i.i.i) #28
          to label %.noexc.i56.i.i.i unwind label %bb.es, !noalias !8365

.noexc.i56.i.i.i:                                 ; preds = %bb.er
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i45.i.i.i: ; preds = %bb.eo, %bb.eq, %bb.ep
  %.sroa.06.0.i.i47.i.i.i = phi ptr [ %.val.i.i53.i.i.i, %bb.eq ], [ inttoptr (i64 16 to ptr), %bb.ep ], [ %.val.i.i53.i.i.i, %bb.eo ]
  %i.qh = ptrtoint ptr %.sroa.06.0.i.i47.i.i.i to i64
  store i64 %i.qh, ptr %.sroa.4.i41.i.i.i, align 8, !alias.scope !8361, !noalias !8360
  br label %_RNvXs1T_NtNtCsgGgPqgSfnMH_7storage15content_manager19collection_meta_opsNtB6_12DropShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i

bb.es:                                            ; preds = %bb.er
  %i.qi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p) #24
          to label %bb.gn unwind label %bb.et, !noalias !8365

bb.et:                                            ; preds = %bb.es
  %i.qj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !8365
  unreachable

_RNvXs1T_NtNtCsgGgPqgSfnMH_7storage15content_manager19collection_meta_opsNtB6_12DropShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i45.i.i.i, %bb.en
  %.sink.i.sroa.phi.i48.i.i.i = phi ptr [ %.sroa.6.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i45.i.i.i ], [ %.sroa.4.i41.i.i.i, %bb.en ]
  %.sroa.58.0.sink.i.i49.i.i.i = phi i64 [ %.val21.i.i54.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i45.i.i.i ], [ %i.qa, %bb.en ]
  %storemerge.i.i50.i.i.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i45.i.i.i ], [ 1, %bb.en ]
  store i64 %.sroa.58.0.sink.i.i49.i.i.i, ptr %.sink.i.sroa.phi.i48.i.i.i, align 8, !alias.scope !8361, !noalias !8360
  %.sroa.678.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.678.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !8288
  %.sroa.4.i41.i.i.i.0..sroa.4.i41.i.i.i.0..sroa.4.i41.i.i.i.0..sroa.4.i41.i.i.0..sroa.4.i41.i.i.0..sroa.4.i41.i.0..sroa.4.i41.i.0..sroa.4.i41.0..sroa.4.i41.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i.i.i = load i64, ptr %.sroa.4.i41.i.i.i, align 8, !noalias !8360
  %.sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i.i.i = load i64, ptr %.sroa.6.i.i.i.i, align 8, !noalias !8360
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i41.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !8360
  %i.qk = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %storemerge.i.i50.i.i.i, ptr %i.qk, align 8, !alias.scope !8286, !noalias !8285
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 %.sroa.4.i41.i.i.i.0..sroa.4.i41.i.i.i.0..sroa.4.i41.i.i.i.0..sroa.4.i41.i.i.0..sroa.4.i41.i.i.0..sroa.4.i41.i.0..sroa.4.i41.i.0..sroa.4.i41.0..sroa.4.i41.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !8286, !noalias !8285
  %.sroa.577.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store i64 %.sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i.i.i, ptr %.sroa.577.0..sroa_idx.i.i.i, align 8, !alias.scope !8286, !noalias !8285
  store i64 9, ptr %i.at, align 8, !alias.scope !8286, !noalias !8285
  br label %_RNvXsd_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxNtNtNtCsgGgPqgSfnMH_7storage15content_manager19collection_meta_ops24CollectionMetaOperationsENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit

bb.eu:                                            ; preds = %bb.c
  %i.ql = getelementptr inbounds nuw i8, ptr %.val, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8366)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !8367
  %i.qm = getelementptr inbounds nuw i8, ptr %.val, i64 112
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qm)
          to label %.noexc9.i unwind label %bb.gm

.noexc9.i:                                        ; preds = %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !8367
  %i.qn = getelementptr inbounds nuw i8, ptr %.val, i64 136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !8368
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.qn)
          to label %.noexc.i59.i.i.i unwind label %bb.ex, !noalias !8369

.noexc.i59.i.i.i:                                 ; preds = %.noexc9.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !8368
  %i.qo = getelementptr inbounds nuw i8, ptr %.val, i64 160
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment9json_path12JsonPathItemENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qo)
          to label %bb.ey unwind label %bb.ev, !noalias !8370

bb.ev:                                            ; preds = %.noexc.i59.i.i.i
  %i.qp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #24
          to label %.body.i57.i.i.i unwind label %bb.ew, !noalias !8370

bb.ew:                                            ; preds = %bb.ev
  %i.qq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !8370
  unreachable

.body.i57.i.i.i:                                  ; preds = %.body9.i.i.i.i, %bb.ex, %bb.ev
  %.pn.i58.i.i.i = phi { ptr, i32 } [ %eh.lpad-body10.i.i.i.i, %.body9.i.i.i.i ], [ %i.qr, %bb.ex ], [ %i.qp, %bb.ev ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #24
          to label %bb.gn unwind label %bb.ft, !noalias !8369

bb.ex:                                            ; preds = %.noexc9.i
  %i.qr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i57.i.i.i

bb.ey:                                            ; preds = %.noexc.i59.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !8371
  %i.qs = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qs, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !8371
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !8368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !8368
  %i.qt = load i64, ptr %i.ql, align 8, !range !58, !alias.scope !8372, !noundef !23 ; 6 uses
  %.not.i60.i.i.i = icmp eq i64 %i.qt, -1
  br i1 %.not.i60.i.i.i, label %bb.fr, label %bb.ez
end_hunk_0
begin_hunk_1_@_RNvXsa_NtNtNtCsgOCJwUSa4vG_5tonic9transport7channel8endpointNtB5_8EndpointNtNtCskKLDkoKarTP_4core5clone5Clone5clone:bb.a
  store i32 %.sroa.540.0, ptr %i.fe, align 4
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %.sroa.041.0, ptr %i.ff, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %.sroa.542.0, ptr %i.fg, align 4
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %.sroa.043.0, ptr %i.fh, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 %i.dk, ptr %i.fi, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 578
  store i8 %i.do, ptr %i.fj, align 2
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.047.0, ptr %i.fk, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.548.0, ptr %i.fl, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 579
  store i8 %i.dv, ptr %i.fm, align 1
  %.sroa.551.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %0, i64 580
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.551.0..sroa_idx52, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.551, i64 16, i1 false)
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.fo = load <2 x ptr>, ptr %i.dw, align 8
  store <2 x ptr> %i.fo, ptr %i.fn, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.551)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.bg:                                            ; preds = %bb.be
  call void @llvm.trap()
  unreachable

bb.bh:                                            ; preds = %bb.o, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit, %bb.e
  %i.fp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.bi:                                            ; preds = %bb.e
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXse8_NtCs607s0NAIaWN_7segment5typesNtB6_6FilterNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = load i64, ptr %1, align 8, !range !29, !noundef !23
  %.not = icmp eq i64 %i.g, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types9ConditionENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %i.f, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !range !29, !noundef !23
  %.not4 = icmp eq i64 %i.i, -1
  br i1 %.not4, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !8428)
  call void @llvm.experimental.noalias.scope.decl(metadata !8429)
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types9ConditionENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h)
          to label %bb.j unwind label %bb.i

bb.f:                                             ; preds = %bb.d
  store i64 -1, ptr %i.e, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !29, !noundef !23
  %.not5 = icmp eq i64 %i.k, -1
  br i1 %.not5, label %bb.l, label %bb.k

bb.h:                                             ; preds = %bb.n, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.n ], [ %i.l, %bb.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types9ConditionEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #24
          to label %bb.v unwind label %bb.u

bb.i:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !8429, !noundef !23
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.n, ptr %i.o, align 8, !alias.scope !8428
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types9ConditionENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
          to label %bb.p unwind label %bb.o

bb.l:                                             ; preds = %bb.g
  store i64 -1, ptr %i.d, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.p, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !range !29, !noundef !23
  %.not6 = icmp eq i64 %i.q, -1
  br i1 %.not6, label %bb.r, label %bb.q

bb.n:                                             ; preds = %bb.s, %bb.o
  %.pn = phi { ptr, i32 } [ %i.v, %bb.s ], [ %i.r, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types9MinShouldEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32) %i.e) #24
          to label %bb.h unwind label %bb.u

bb.o:                                             ; preds = %bb.k
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.p:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.m

bb.q:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types9ConditionENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
          to label %bb.t unwind label %bb.s

bb.r:                                             ; preds = %bb.m, %bb.t
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload1, %bb.t ], [ -1, %bb.m ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sroa.0.0, ptr %i.u, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.s:                                             ; preds = %bb.q
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types9ConditionEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #24
          to label %bb.n unwind label %bb.u

bb.t:                                             ; preds = %bb.q
  %.sroa.0.0.copyload1 = load i64, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.r

bb.u:                                             ; preds = %bb.s, %bb.n, %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.v:                                             ; preds = %bb.h
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !32, !noundef !23
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.c, align 8, !noundef !23
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.f = load i8, ptr %i.e, align 1, !noundef !23
  %.not = icmp slt i8 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load ptr, ptr %i.c, align 8             ; 4 uses
  %.val21 = load i64, ptr %i.g, align 8           ; 2 uses
  %.not.i.i = icmp eq ptr %.val, inttoptr (i64 16 to ptr)
  %or.cond = select i1 %.not, i1 true, i1 %.not.i.i
  br i1 %or.cond, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds i8, ptr %.val, i64 -16
  %i.i = atomicrmw add ptr %i.h, i64 1 monotonic, align 8
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.e, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit, !prof !38

bb.e:                                             ; preds = %bb.d
  tail call void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val, i64 noundef %.val21) #28
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.c, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.val, ptr %i.k, align 8
  br label %bb.f

bb.f:                                             ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit, %bb.b
  %.sink = phi i64 [ 16, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit ], [ 8, %bb.b ]
  %.sroa.58.0.sink = phi i64 [ %.val21, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit ], [ %i.d, %bb.b ]
  %storemerge = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit ], [ 1, %bb.b ]
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  store i64 %.sroa.58.0.sink, ptr %.sroa.412.0..sroa_idx, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsk_NtNtCsgGgPqgSfnMH_7storage15content_manager6errorsNtB5_12StorageErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
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
  %i.q = load i32, ptr %0, align 8, !range !63, !noundef !23
  switch i32 %i.q, label %default.unreachable1 [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
    i32 7, label %bb.i
    i32 8, label %bb.j
    i32 9, label %bb.k
    i32 10, label %bb.l
    i32 11, label %bb.m
    i32 12, label %bb.n
    i32 13, label %bb.o
    i32 14, label %bb.p
    i32 15, label %bb.q
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.p, align 8
  %i.s = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @234, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @235, i64 noundef 11, ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @222)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.o, align 8
  %i.u = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @236, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @235, i64 noundef 11, ptr noundef nonnull %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @222)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.r

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.n, align 8
  %i.w = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @237, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @235, i64 noundef 11, ptr noundef nonnull %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @222)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.r

bb.e:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.m, align 8
  %i.z = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @240, i64 noundef 12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @235, i64 noundef 11, ptr noundef nonnull %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @238, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @241, i64 noundef 9, ptr noundef nonnull %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @239)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.r

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.l, align 8
  %i.ab = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @242, i64 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @235, i64 noundef 11, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @222)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.r

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.k, align 8
  %i.ad = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @243, i64 noundef 14, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @235, i64 noundef 11, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @222)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.r

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %i.j, align 8
  %i.af = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @244, i64 noundef 6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @235, i64 noundef 11, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @222)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.r

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ag, ptr %i.i, align 8
  %i.ah = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @245, i64 noundef 7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @235, i64 noundef 11, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @222)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.r

bb.j:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.aj, ptr %i.h, align 8
  %i.ak = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @246, i64 noundef 16, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @247, i64 noundef 8, ptr noundef nonnull %i.ai, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @238, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @248, i64 noundef 6, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @222)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.r

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.al, ptr %i.g, align 8
  %i.am = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @249, i64 noundef 9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @235, i64 noundef 11, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @222)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.r

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.f, align 8
  %i.ao = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @250, i64 noundef 18, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @235, i64 noundef 11, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @222)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.r

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.e, align 8
  %i.aq = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @251, i64 noundef 14, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @235, i64 noundef 11, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @222)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.r

bb.n:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.d, align 8
  %i.at = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @253, i64 noundef 17, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @235, i64 noundef 11, ptr noundef nonnull %i.ar, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @238, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @254, i64 noundef 11, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @252)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.r

bb.o:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.au, ptr %i.c, align 8
  %i.av = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @255, i64 noundef 16, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @235, i64 noundef 11, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @222)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.r

bb.p:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.aw, ptr %i.b, align 8
  %i.ax = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @257, i64 noundef 20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @258, i64 noundef 8, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @256)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.r

bb.q:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ay, ptr %i.a, align 8
  %i.az = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @259, i64 noundef 19, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @235, i64 noundef 11, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @222)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.s, %bb.b ], [ %i.u, %bb.c ], [ %i.w, %bb.d ], [ %i.z, %bb.e ], [ %i.ab, %bb.f ], [ %i.ad, %bb.g ], [ %i.af, %bb.h ], [ %i.ah, %bb.i ], [ %i.ak, %bb.j ], [ %i.am, %bb.k ], [ %i.ao, %bb.l ], [ %i.aq, %bb.m ], [ %i.at, %bb.n ], [ %i.av, %bb.o ], [ %i.ax, %bb.p ], [ %i.az, %bb.q ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsl_NtNtCskKLDkoKarTP_4core3net6parserNtB5_14AddrParseErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @261, i64 noundef 14, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @260)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}
end_hunk_1
