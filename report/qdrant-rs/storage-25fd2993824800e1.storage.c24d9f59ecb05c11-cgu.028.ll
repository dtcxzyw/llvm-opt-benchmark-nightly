Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/storage-25fd2993824800e1.storage.c24d9f59ecb05c11-cgu.028?download=true
inline.NumInlined: 1397
inline.NumDeleted: 639
begin_hunk_0_@_RNvXs7_NtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_opsNtB5_19ConsensusOperationsNtNtCskKLDkoKarTP_4core5clone5Clone5clone:bb.a
    i64 2, label %bb.dt
    i64 3, label %bb.du
    i64 4, label %bb.dv
    i64 5, label %bb.dw
  ]

bb.dr:                                            ; preds = %.noexc5.i
  %i.mo = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %.val, i64 144
  %i.mq = load i32, ptr %i.mp, align 8, !alias.scope !3135, !noundef !10
  %i.mr = getelementptr inbounds nuw i8, ptr %.val, i64 120
  %i.ms = load i32, ptr %i.mr, align 8, !range !51, !alias.scope !3135, !noundef !10 ; 2 uses
  %i.mt = trunc nuw i32 %i.ms to i1
  %i.mu = getelementptr inbounds nuw i8, ptr %.val, i64 124
  %i.mv = load i32, ptr %i.mu, align 4, !alias.scope !3135
  %.sroa.524.0.i.i.i.i = select i1 %i.mt, i32 %i.mv, i32 undef
  %i.mw = getelementptr inbounds nuw i8, ptr %.val, i64 128
  %i.mx = load <2 x i64>, ptr %i.mw, align 8, !alias.scope !3135
  %i.my = getelementptr inbounds nuw i8, ptr %.val, i64 148
  %i.mz = load i8, ptr %i.my, align 4, !range !25, !alias.scope !3135, !noundef !10
  %i.na = getelementptr inbounds nuw i8, ptr %.val, i64 149
  %i.nb = load i8, ptr %i.na, align 1, !range !43, !alias.scope !3135, !noundef !10
  %i.nc = load i64, ptr %i.mo, align 8, !range !31, !alias.scope !3135, !noundef !10
  %.not31.i.i.i.i = icmp eq i64 %i.nc, -2
  br i1 %.not31.i.i.i.i, label %bb.dy, label %bb.dx

bb.ds:                                            ; preds = %.noexc5.i
  %i.nd = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.ne = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.nf = load i32, ptr %i.ne, align 8, !alias.scope !3135, !noundef !10
  %i.ng = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.nh = getelementptr inbounds nuw i8, ptr %.val, i64 44
  %i.ni = load i8, ptr %i.nh, align 4, !range !21, !alias.scope !3135, !noundef !10
  %i.nj = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.nk = load <2 x i32>, ptr %i.nd, align 8, !alias.scope !3135
  store <2 x i32> %i.nk, ptr %i.nj, align 8, !alias.scope !3133, !noalias !3095
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.nl = load <2 x i64>, ptr %i.ng, align 8, !alias.scope !3135
  store <2 x i64> %i.nl, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !alias.scope !3133, !noalias !3095
  %.sroa.75.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store i32 %i.nf, ptr %.sroa.75.0..sroa_idx.i.i.i.i, align 8, !alias.scope !3133, !noalias !3095
  %.sroa.86.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 36
  store i8 %i.ni, ptr %.sroa.86.0..sroa_idx.i.i.i.i, align 4, !alias.scope !3133, !noalias !3095
  br label %.noexc25.i.i.i

bb.dt:                                            ; preds = %.noexc5.i
  %i.nm = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %.val, i64 144
  %i.no = load i32, ptr %i.nn, align 8, !alias.scope !3135, !noundef !10
  %i.np = getelementptr inbounds nuw i8, ptr %.val, i64 120
  %i.nq = load i32, ptr %i.np, align 8, !range !51, !alias.scope !3135, !noundef !10 ; 2 uses
  %i.nr = trunc nuw i32 %i.nq to i1
  %i.ns = getelementptr inbounds nuw i8, ptr %.val, i64 124
  %i.nt = load i32, ptr %i.ns, align 4, !alias.scope !3135
  %.sroa.518.0.i.i.i.i = select i1 %i.nr, i32 %i.nt, i32 undef
  %i.nu = getelementptr inbounds nuw i8, ptr %.val, i64 128
  %i.nv = load <2 x i64>, ptr %i.nu, align 8, !alias.scope !3135
  %i.nw = getelementptr inbounds nuw i8, ptr %.val, i64 148
  %i.nx = load i8, ptr %i.nw, align 4, !range !25, !alias.scope !3135, !noundef !10
  %i.ny = getelementptr inbounds nuw i8, ptr %.val, i64 149
  %i.nz = load i8, ptr %i.ny, align 1, !range !43, !alias.scope !3135, !noundef !10
  %i.oa = load i64, ptr %i.nm, align 8, !range !31, !alias.scope !3135, !noundef !10
  %.not29.i.i.i.i = icmp eq i64 %i.oa, -2
  br i1 %.not29.i.i.i.i, label %bb.ea, label %bb.dz

bb.du:                                            ; preds = %.noexc5.i
  %i.ob = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.oc = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.oc, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ob, i64 32, i1 false), !alias.scope !3136, !noalias !3078
  br label %.noexc25.i.i.i

bb.dv:                                            ; preds = %.noexc5.i
  %i.od = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.oe = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.oe, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.od, i64 32, i1 false), !alias.scope !3136, !noalias !3078
  br label %.noexc25.i.i.i

bb.dw:                                            ; preds = %.noexc5.i
  %i.of = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.og = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.oh = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.oh, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.og, i64 32, i1 false), !alias.scope !3136, !noalias !3078
  %i.oi = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.oi, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.of)
          to label %.noexc25.i.i.i unwind label %bb.gl, !noalias !3078

bb.dx:                                            ; preds = %bb.dr
  invoke fastcc void @_RNvXse8_NtCs607s0NAIaWN_7segment5typesNtB6_6FilterNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.mo) #24
          to label %.noexc26.i.i.i unwind label %bb.gl, !noalias !3078

.noexc26.i.i.i:                                   ; preds = %bb.dx
  %.sroa.026.0.copyload.i.i.i.i = load i64, ptr %i.t, align 8, !noalias !3137
  br label %bb.dy

bb.dy:                                            ; preds = %.noexc26.i.i.i, %bb.dr
  %.sroa.026.0.i.i.i.i = phi i64 [ %.sroa.026.0.copyload.i.i.i.i, %.noexc26.i.i.i ], [ -2, %bb.dr ]
  %i.oj = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i64 %.sroa.026.0.i.i.i.i, ptr %i.oj, align 8, !alias.scope !3133, !noalias !3095
  %.sroa.0.sroa.4.0..sroa_idx.i20.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0.sroa.4.0..sroa_idx.i20.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %i.mm, i64 96, i1 false), !noalias !3138
  %.sroa.4.0..sroa_idx.i21.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 112
  store i32 %i.ms, ptr %.sroa.4.0..sroa_idx.i21.i.i.i, align 8, !alias.scope !3133, !noalias !3095
  %.sroa.5.0..sroa_idx.i22.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 116
  store i32 %.sroa.524.0.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i22.i.i.i, align 4, !alias.scope !3133, !noalias !3095
  %.sroa.6.0..sroa_idx.i23.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 120
  store <2 x i64> %i.mx, ptr %.sroa.6.0..sroa_idx.i23.i.i.i, align 8, !alias.scope !3133, !noalias !3095
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 136
  store i32 %i.mq, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 8, !alias.scope !3133, !noalias !3095
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 140
  store i8 %i.mz, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 4, !alias.scope !3133, !noalias !3095
  %.sroa.10.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 141
  store i8 %i.nb, ptr %.sroa.10.0..sroa_idx.i.i.i.i, align 1, !alias.scope !3133, !noalias !3095
  br label %.noexc25.i.i.i

bb.dz:                                            ; preds = %bb.dt
  invoke fastcc void @_RNvXse8_NtCs607s0NAIaWN_7segment5typesNtB6_6FilterNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.nm) #24
          to label %.noexc27.i.i.i unwind label %bb.gl, !noalias !3078

.noexc27.i.i.i:                                   ; preds = %bb.dz
  %.sroa.020.0.copyload.i.i.i.i = load i64, ptr %i.u, align 8, !noalias !3137
  br label %bb.ea

bb.ea:                                            ; preds = %.noexc27.i.i.i, %bb.dt
  %.sroa.020.0.i.i.i.i = phi i64 [ %.sroa.020.0.copyload.i.i.i.i, %.noexc27.i.i.i ], [ -2, %bb.dt ]
  %i.ok = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i64 %.sroa.020.0.i.i.i.i, ptr %i.ok, align 8, !alias.scope !3133, !noalias !3095
  %.sroa.08.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.08.sroa.4.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %i.ml, i64 96, i1 false), !noalias !3138
  %.sroa.49.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 112
  store i32 %i.nq, ptr %.sroa.49.0..sroa_idx.i.i.i.i, align 8, !alias.scope !3133, !noalias !3095
  %.sroa.510.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 116
  store i32 %.sroa.518.0.i.i.i.i, ptr %.sroa.510.0..sroa_idx.i.i.i.i, align 4, !alias.scope !3133, !noalias !3095
  %.sroa.611.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 120
  store <2 x i64> %i.nv, ptr %.sroa.611.0..sroa_idx.i.i.i.i, align 8, !alias.scope !3133, !noalias !3095
  %.sroa.813.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 136
  store i32 %i.no, ptr %.sroa.813.0..sroa_idx.i.i.i.i, align 8, !alias.scope !3133, !noalias !3095
  %.sroa.914.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 140
  store i8 %i.nx, ptr %.sroa.914.0..sroa_idx.i.i.i.i, align 4, !alias.scope !3133, !noalias !3095
  %.sroa.1015.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 141
  store i8 %i.nz, ptr %.sroa.1015.0..sroa_idx.i.i.i.i, align 1, !alias.scope !3133, !noalias !3095
  br label %.noexc25.i.i.i

bb.eb:                                            ; preds = %bb.c
  %i.ol = getelementptr inbounds nuw i8, ptr %.val, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !3095
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3140)
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(40) %i.ap, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ol)
          to label %.noexc6.i unwind label %bb.gm

.noexc6.i:                                        ; preds = %bb.eb
  %i.om = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.on = load i32, ptr %i.om, align 8, !alias.scope !3141, !noundef !10
  %i.oo = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.op = load i64, ptr %i.oo, align 8, !alias.scope !3141, !noundef !10
  %i.oq = getelementptr inbounds nuw i8, ptr %.val, i64 44
  %i.or = load i8, ptr %i.oq, align 4, !range !46, !alias.scope !3141, !noundef !10
  %i.os = getelementptr inbounds nuw i8, ptr %.val, i64 45
  %i.ot = load i8, ptr %i.os, align 1, !range !47, !alias.scope !3141, !noundef !10
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store i32 %i.on, ptr %i.ou, align 8, !alias.scope !3139, !noalias !3095
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store i64 %i.op, ptr %i.ov, align 8, !alias.scope !3139, !noalias !3095
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ap, i64 36
  store i8 %i.or, ptr %i.ow, align 4, !alias.scope !3139, !noalias !3095
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ap, i64 37
  store i8 %i.ot, ptr %i.ox, align 1, !alias.scope !3139, !noalias !3095
  %i.oy = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.oy, ptr noundef nonnull align 8 dereferenceable(40) %i.ap, i64 40, i1 false), !noalias !3080
  store i64 7, ptr %i.at, align 8, !alias.scope !3078, !noalias !3077
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !3095
  br label %_RNvXsd_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxNtNtNtCsgGgPqgSfnMH_7storage15content_manager19collection_meta_ops24CollectionMetaOperationsENtNtCskKLDkoKarTP_4core5clone5Clone5cloneBN_.exit

bb.ec:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.074.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3142)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !3143
  %i.oz = getelementptr inbounds nuw i8, ptr %.val, i64 32
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.oz)
          to label %.noexc7.i unwind label %bb.gm

.noexc7.i:                                        ; preds = %bb.ec
  %i.pa = getelementptr inbounds nuw i8, ptr %.val, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !3143
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3145)
  %i.pb = load i64, ptr %i.pa, align 8, !range !16, !alias.scope !3146, !noundef !10
  %i.pc = trunc nuw i64 %i.pb to i1               ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %.sink.i.sroa.gep.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sink.i.sroa.gep4.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  br i1 %i.pc, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %.noexc7.i
  %i.pe = load i64, ptr %i.pd, align 8, !alias.scope !3146, !noundef !10
  br label %bb.ei

bb.ee:                                            ; preds = %.noexc7.i
  %i.pf = getelementptr inbounds nuw i8, ptr %.val, i64 31
  %i.pg = load i8, ptr %i.pf, align 1, !alias.scope !3146, !noundef !10
  %.not.i.i28.i.i.i = icmp slt i8 %i.pg, 0
  %i.ph = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %.val.i.i37.i.i.i = load ptr, ptr %i.pd, align 8, !alias.scope !3146 ; 4 uses
  %.val21.i.i38.i.i.i = load i64, ptr %i.ph, align 8, !alias.scope !3146 ; 2 uses
  %.not.i.i.i.i39.i.i.i = icmp eq ptr %.val.i.i37.i.i.i, inttoptr (i64 16 to ptr)
  %or.cond = select i1 %.not.i.i28.i.i.i, i1 true, i1 %.not.i.i.i.i39.i.i.i
  br i1 %or.cond, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsgGgPqgSfnMH_7storage.exit.i.i31.i.i.i, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.pi = getelementptr inbounds i8, ptr %.val.i.i37.i.i.i, i64 -16
  %i.pj = atomicrmw add ptr %i.pi, i64 1 monotonic, align 8, !noalias !3147
  %i.pk = icmp slt i64 %i.pj, 0
  br i1 %i.pk, label %bb.eg, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsgGgPqgSfnMH_7storage.exit.i.i31.i.i.i, !prof !19

bb.eg:                                            ; preds = %bb.ef
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsgGgPqgSfnMH_7storage(ptr noundef nonnull %.val.i.i37.i.i.i, i64 noundef %.val21.i.i38.i.i.i) #23
          to label %.noexc.i40.i.i.i unwind label %bb.eh, !noalias !3148

.noexc.i40.i.i.i:                                 ; preds = %bb.eg
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsgGgPqgSfnMH_7storage.exit.i.i31.i.i.i: ; preds = %bb.ee, %bb.ef
  store ptr %.val.i.i37.i.i.i, ptr %.sink.i.sroa.gep4.i.i.i.i, align 8, !alias.scope !3144, !noalias !3143
  br label %bb.ei

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types8ShardKeyECsgGgPqgSfnMH_7storage.exit.i.i.i.i: ; preds = %bb.ek, %bb.ej, %bb.eh
  %.pn.i36.i.i.i = phi { ptr, i32 } [ %i.pl, %bb.eh ], [ %i.po, %bb.ek ], [ %i.po, %bb.ej ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s) #19
          to label %bb.gn unwind label %bb.el, !noalias !3148

bb.eh:                                            ; preds = %bb.eg
  %i.pl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types8ShardKeyECsgGgPqgSfnMH_7storage.exit.i.i.i.i

bb.ei:                                            ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsgGgPqgSfnMH_7storage.exit.i.i31.i.i.i, %bb.ed
  %.sink.i.sroa.phi.i34.i.i.i = phi ptr [ %.sink.i.sroa.gep.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsgGgPqgSfnMH_7storage.exit.i.i31.i.i.i ], [ %.sink.i.sroa.gep4.i.i.i.i, %bb.ed ]
  %.sroa.58.0.sink.i.i35.i.i.i = phi i64 [ %.val21.i.i38.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsgGgPqgSfnMH_7storage.exit.i.i31.i.i.i ], [ %i.pe, %bb.ed ]
  %i.pm = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsgGgPqgSfnMH_7storage.exit.i.i31.i.i.i ], [ 1, %bb.ed ]
  store i64 %.sroa.58.0.sink.i.i35.i.i.i, ptr %.sink.i.sroa.phi.i34.i.i.i, align 8, !alias.scope !3144, !noalias !3143
  store i64 %i.pm, ptr %i.r, align 8, !alias.scope !3144, !noalias !3143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !3143
  %i.pn = getelementptr inbounds nuw i8, ptr %.val, i64 56
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_yEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pn)
          to label %_RNvXs1N_NtNtCsgGgPqgSfnMH_7storage15content_manager19collection_meta_opsNtB6_14CreateShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i unwind label %bb.ej, !noalias !3148

bb.ej:                                            ; preds = %bb.ei
  %i.po = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.r, i64 23
  %i.pq = load i8, ptr %i.pp, align 1, !alias.scope !3149, !noalias !3143
  %.not.i.i.i.i.i.i.i.i = icmp slt i8 %i.pq, 0
  %or.cond.i.not.i.i.i.i = select i1 %i.pc, i1 true, i1 %.not.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.not.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types8ShardKeyECsgGgPqgSfnMH_7storage.exit.i.i.i.i, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink.i.sroa.gep4.i.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types8ShardKeyECsgGgPqgSfnMH_7storage.exit.i.i.i.i unwind label %bb.el, !noalias !3148

bb.el:                                            ; preds = %bb.ek, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types8ShardKeyECsgGgPqgSfnMH_7storage.exit.i.i.i.i
  %i.pr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !3148
  unreachable

_RNvXs1N_NtNtCsgGgPqgSfnMH_7storage15content_manager19collection_meta_opsNtB6_14CreateShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.ei
  %i.ps = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.pt = load i8, ptr %i.ps, align 8, !range !47, !alias.scope !3150, !noundef !10
  %.sroa.074.24..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.074.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.074.24..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !3151
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.074.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !3151
  %.sroa.074.48..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.074.i.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.074.48..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !3151
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !3143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !3143
  %i.pu = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.pu, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.074.i.i.i, i64 72, i1 false), !noalias !3080
  %.sroa.675.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 80
  store i8 %i.pt, ptr %.sroa.675.0..sroa_idx.i.i.i, align 8, !alias.scope !3078, !noalias !3077
  store i64 8, ptr %i.at, align 8, !alias.scope !3078, !noalias !3077
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.074.i.i.i)
  br label %_RNvXsd_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxNtNtNtCsgGgPqgSfnMH_7storage15content_manager19collection_meta_ops24CollectionMetaOperationsENtNtCskKLDkoKarTP_4core5clone5Clone5cloneBN_.exit

bb.em:                                            ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3152)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3153
  %i.pv = getelementptr inbounds nuw i8, ptr %.val, i64 32
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pv)
          to label %.noexc8.i unwind label %bb.gm

.noexc8.i:                                        ; preds = %bb.em
  %i.pw = getelementptr inbounds nuw i8, ptr %.val, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i41.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3155)
  %i.px = load i64, ptr %i.pw, align 8, !range !16, !alias.scope !3156, !noundef !10
  %i.py = trunc nuw i64 %i.px to i1
  %i.pz = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  br i1 %i.py, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %.noexc8.i
  %i.qa = load i64, ptr %i.pz, align 8, !alias.scope !3156, !noundef !10
  br label %_RNvXs1T_NtNtCsgGgPqgSfnMH_7storage15content_manager19collection_meta_opsNtB6_12DropShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i

bb.eo:                                            ; preds = %.noexc8.i
  %i.qb = getelementptr inbounds nuw i8, ptr %.val, i64 31
  %i.qc = load i8, ptr %i.qb, align 1, !alias.scope !3156, !noundef !10
  %.not.i.i42.i.i.i = icmp sgt i8 %i.qc, -1
  %i.qd = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %.val.i.i53.i.i.i = load ptr, ptr %i.pz, align 8, !alias.scope !3156 ; 5 uses
  %.val21.i.i54.i.i.i = load i64, ptr %i.qd, align 8, !alias.scope !3156 ; 2 uses
  br i1 %.not.i.i42.i.i.i, label %bb.ep, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsgGgPqgSfnMH_7storage.exit.i.i45.i.i.i

bb.ep:                                            ; preds = %bb.eo
  %.not.i.i.i.i55.i.i.i = icmp eq ptr %.val.i.i53.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i55.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsgGgPqgSfnMH_7storage.exit.i.i45.i.i.i, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.qe = getelementptr inbounds i8, ptr %.val.i.i53.i.i.i, i64 -16
  %i.qf = atomicrmw add ptr %i.qe, i64 1 monotonic, align 8, !noalias !3157
  %i.qg = icmp slt i64 %i.qf, 0
  br i1 %i.qg, label %bb.er, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsgGgPqgSfnMH_7storage.exit.i.i45.i.i.i, !prof !19

bb.er:                                            ; preds = %bb.eq
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsgGgPqgSfnMH_7storage(ptr noundef nonnull %.val.i.i53.i.i.i, i64 noundef %.val21.i.i54.i.i.i) #23
          to label %.noexc.i56.i.i.i unwind label %bb.es, !noalias !3158

.noexc.i56.i.i.i:                                 ; preds = %bb.er
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsgGgPqgSfnMH_7storage.exit.i.i45.i.i.i: ; preds = %bb.eo, %bb.eq, %bb.ep
  %.sroa.06.0.i.i47.i.i.i = phi ptr [ %.val.i.i53.i.i.i, %bb.eq ], [ inttoptr (i64 16 to ptr), %bb.ep ], [ %.val.i.i53.i.i.i, %bb.eo ]
  %i.qh = ptrtoint ptr %.sroa.06.0.i.i47.i.i.i to i64
  store i64 %i.qh, ptr %.sroa.4.i41.i.i.i, align 8, !alias.scope !3154, !noalias !3153
  br label %_RNvXs1T_NtNtCsgGgPqgSfnMH_7storage15content_manager19collection_meta_opsNtB6_12DropShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i

bb.es:                                            ; preds = %bb.er
  %i.qi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p) #19
          to label %bb.gn unwind label %bb.et, !noalias !3158

bb.et:                                            ; preds = %bb.es
  %i.qj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !3158
  unreachable

_RNvXs1T_NtNtCsgGgPqgSfnMH_7storage15content_manager19collection_meta_opsNtB6_12DropShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsgGgPqgSfnMH_7storage.exit.i.i45.i.i.i, %bb.en
  %.sink.i.sroa.phi.i48.i.i.i = phi ptr [ %.sroa.6.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsgGgPqgSfnMH_7storage.exit.i.i45.i.i.i ], [ %.sroa.4.i41.i.i.i, %bb.en ]
  %.sroa.58.0.sink.i.i49.i.i.i = phi i64 [ %.val21.i.i54.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsgGgPqgSfnMH_7storage.exit.i.i45.i.i.i ], [ %i.qa, %bb.en ]
  %storemerge.i.i50.i.i.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsgGgPqgSfnMH_7storage.exit.i.i45.i.i.i ], [ 1, %bb.en ]
  store i64 %.sroa.58.0.sink.i.i49.i.i.i, ptr %.sink.i.sroa.phi.i48.i.i.i, align 8, !alias.scope !3154, !noalias !3153
  %.sroa.678.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.678.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !3080
  %.sroa.4.i41.i.i.i.0..sroa.4.i41.i.i.i.0..sroa.4.i41.i.i.i.0..sroa.4.i41.i.i.0..sroa.4.i41.i.i.0..sroa.4.i41.i.0..sroa.4.i41.i.0..sroa.4.i41.0..sroa.4.i41.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i.i.i = load i64, ptr %.sroa.4.i41.i.i.i, align 8, !noalias !3153
  %.sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i.i.i = load i64, ptr %.sroa.6.i.i.i.i, align 8, !noalias !3153
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i41.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3153
  %i.qk = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %storemerge.i.i50.i.i.i, ptr %i.qk, align 8, !alias.scope !3078, !noalias !3077
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 %.sroa.4.i41.i.i.i.0..sroa.4.i41.i.i.i.0..sroa.4.i41.i.i.i.0..sroa.4.i41.i.i.0..sroa.4.i41.i.i.0..sroa.4.i41.i.0..sroa.4.i41.i.0..sroa.4.i41.0..sroa.4.i41.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !3078, !noalias !3077
  %.sroa.577.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store i64 %.sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i.i.i, ptr %.sroa.577.0..sroa_idx.i.i.i, align 8, !alias.scope !3078, !noalias !3077
  store i64 9, ptr %i.at, align 8, !alias.scope !3078, !noalias !3077
  br label %_RNvXsd_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxNtNtNtCsgGgPqgSfnMH_7storage15content_manager19collection_meta_ops24CollectionMetaOperationsENtNtCskKLDkoKarTP_4core5clone5Clone5cloneBN_.exit

bb.eu:                                            ; preds = %bb.c
  %i.ql = getelementptr inbounds nuw i8, ptr %.val, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3159)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3160
  %i.qm = getelementptr inbounds nuw i8, ptr %.val, i64 112
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qm)
          to label %.noexc9.i unwind label %bb.gm

.noexc9.i:                                        ; preds = %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !3160
  %i.qn = getelementptr inbounds nuw i8, ptr %.val, i64 136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !3161
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.qn)
          to label %.noexc.i59.i.i.i unwind label %bb.ex, !noalias !3162

.noexc.i59.i.i.i:                                 ; preds = %.noexc9.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3161
  %i.qo = getelementptr inbounds nuw i8, ptr %.val, i64 160
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment9json_path12JsonPathItemENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qo)
          to label %bb.ey unwind label %bb.ev, !noalias !3163

bb.ev:                                            ; preds = %.noexc.i59.i.i.i
  %i.qp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #19
          to label %.body.i57.i.i.i unwind label %bb.ew, !noalias !3163

bb.ew:                                            ; preds = %bb.ev
  %i.qq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !3163
  unreachable

.body.i57.i.i.i:                                  ; preds = %.body9.i.i.i.i, %bb.ex, %bb.ev
  %.pn.i58.i.i.i = phi { ptr, i32 } [ %eh.lpad-body10.i.i.i.i, %.body9.i.i.i.i ], [ %i.qr, %bb.ex ], [ %i.qp, %bb.ev ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #19
          to label %bb.gn unwind label %bb.ft, !noalias !3162

bb.ex:                                            ; preds = %.noexc9.i
  %i.qr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i57.i.i.i

bb.ey:                                            ; preds = %.noexc.i59.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !3164
  %i.qs = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qs, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !3164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3161
  %i.qt = load i64, ptr %i.ql, align 8, !range !29, !alias.scope !3165, !noundef !10 ; 6 uses
  %.not.i60.i.i.i = icmp eq i64 %i.qt, -1
  br i1 %.not.i60.i.i.i, label %bb.fr, label %bb.ez
end_hunk_0
