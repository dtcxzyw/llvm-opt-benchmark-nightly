Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67643
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 141
loop-unroll.NumRuntimeUnrolled: 258
loop-unroll.NumUnrolled: 400
begin_hunk_0_@_RINvNtCsbNMRYq9Xj9a_14rustworkx_core19max_weight_matching19max_weight_matchingRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2r_5types3any5PyAnyEB2m_NtB1m_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8matching19max_weight_matching0NtNtB2r_3err5PyErrEB3Q_:bb.a

bb.in:                                            ; preds = %.lr.ph.i.i380.i
  %i.ayj = add i16 %.sroa.05.0.i31.i.i381.i, -1
  %i.ayk = and i16 %i.ayj, %.sroa.05.0.i31.i.i381.i ; 2 uses
  %.not.i.not.i.i383.i = icmp eq i16 %i.ayk, 0
  br i1 %.not.i.not.i.i383.i, label %._crit_edge.i.i384.i, label %.lr.ph.i.i380.i

bb.io:                                            ; preds = %._crit_edge.i.i384.i
  %i.ayl = add i64 %.sroa.011.0.i.i.i375.i, 16    ; 2 uses
  %i.aym = add i64 %.sroa.01.0.i.i.i377.i, %i.ayl
  br label %bb.im

.invoke14897:                                     ; preds = %bb.dx, %bb.ij, %bb.id, %bb.hs, %bb.hm
  %i.ayn = phi ptr [ @322, %bb.id ], [ @315, %bb.hs ], [ @312, %bb.hm ], [ @325, %bb.ij ], [ @285, %bb.dx ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ayn) #60
          to label %.cont14898 unwind label %.loopexit.split-lp469.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont14898:                                       ; preds = %.invoke14897
  unreachable

_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjjE9get_innerjECskcxRuJ53GpR_9rustworkx.exit389.i: ; preds = %.lr.ph.i.i380.i
  %i.ayo = getelementptr inbounds i8, ptr %i.ayd, i64 -8
  %i.ayp = load i64, ptr %i.ayo, align 8, !noalias !14290, !noundef !56
  %i.ayq = icmp eq i64 %i.awm, %i.ayp
  br i1 %i.ayq, label %bb.ip, label %select.unfold495.i.invoke, !prof !66

bb.ip:                                            ; preds = %_RINvMs3_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6_7HashMapjjE9get_innerjECskcxRuJ53GpR_9rustworkx.exit389.i, %bb.ih
  %.not4413 = icmp ugt i64 %i.awm, %i.eb
  br i1 %.not4413, label %.invoke14895, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.ayr = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.awm
  %i.ays = load i64, ptr %i.ayr, align 8, !alias.scope !14283, !noundef !56 ; 3 uses
  %i.ayt = icmp ult i64 %i.ays, %.val.i491
  br i1 %i.ayt, label %bb.ir, label %.invoke14895

bb.ir:                                            ; preds = %bb.iq
  %i.ayu = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.ays
  %i.ayv = load i64, ptr %i.ayu, align 8, !alias.scope !14276, !noundef !56 ; 2 uses
  %.not.i738 = icmp eq i64 %i.ayv, %i.yl
  br i1 %.not.i738, label %._crit_edge.loopexit.i, label %bb.ee

bb.is:                                            ; preds = %bb.ds
  %i.ayw = load ptr, ptr %i.ca, align 8, !nonnull !56, !noundef !56
  %i.ayx = load i64, ptr %i.cb, align 8, !noundef !56
  %i.ayy = load ptr, ptr %i.ma, align 8, !nonnull !56, !noundef !56
  %i.ayz = load i64, ptr %.sroa.6132.0..sroa_idx, align 8, !noundef !56
  %i.aza = load ptr, ptr %i.mb, align 8, !nonnull !56, !noundef !56
  %i.azb = load i64, ptr %.sroa.6140.0..sroa_idx, align 8, !noundef !56
  invoke void @_RNvNtCsbNMRYq9Xj9a_14rustworkx_core19max_weight_matching16augment_matching(i64 noundef %i.rx, i64 noundef %.val.i491, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) %i.ayw, i64 noundef %i.ayx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.fq, i64 noundef %.val.i491, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ayy, i64 noundef %i.ayz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.aza, i64 noundef %i.azb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.gc, i64 noundef %i.ga, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ds, i64 noundef %i.dq, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ae)
          to label %.preheader490.backedge unwind label %.loopexit.split-lp469.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.it:                                            ; preds = %bb.ep, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapjjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit342.i
  %.sroa.12.0.ph = phi i64 [ %.sroa.5157.0.copyload.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapjjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit342.i ], [ %.sroa.5142.0.copyload.i, %bb.ep ]
  %.sroa.10193.0.ph = phi ptr [ %.sroa.4156.0.copyload.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapjjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit342.i ], [ %.sroa.4141.0.copyload.i, %bb.ep ]
  %.sroa.7192.0.ph = phi i64 [ %.sroa.0155.0.copyload.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapjjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit342.i ], [ %.sroa.0140.0.copyload.i, %bb.ep ]
  %.sroa.6239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6239.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.14194, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14194)
  %i.azc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7192.0.ph, ptr %i.azc, align 8
  %.sroa.4237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.10193.0.ph, ptr %.sroa.4237.0..sroa_idx, align 8
  %.sroa.5238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.12.0.ph, ptr %.sroa.5238.0..sroa_idx, align 8
  br label %bb.nx

bb.iu:                                            ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i350.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i348.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !14297
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14194)
  br label %.backedge

bb.iv:                                            ; preds = %bb.dj
  %i.azd = load i64, ptr %i.p, align 8, !range !57, !noundef !56
  %i.aze = trunc nuw i64 %i.azd to i1
  br i1 %i.aze, label %bb.iw, label %bb.ix

bb.iw:                                            ; preds = %bb.iv
  %i.azf = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.azg = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.azg, ptr noundef nonnull align 8 dereferenceable(64) %i.azf, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.nx

bb.ix:                                            ; preds = %bb.iv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %.backedge

bb.iy:                                            ; preds = %bb.bv
  br i1 %2, label %.lr.ph4359, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.azh = load i64, ptr %i.ll, align 8, !noundef !56 ; 2 uses
  %.not316 = icmp ugt i64 %.val.i491, %i.azh
  br i1 %.not316, label %.invoke14905, label %bb.ja, !prof !76

.lr.ph4359:                                       ; preds = %bb.iy, %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IternENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRnNtNtBa_3cmp3Ord3minECskcxRuJ53GpR_9rustworkx.exit.thread401
  %.sroa.13.0 = phi i128 [ undef, %bb.iy ], [ %i.bag, %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IternENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRnNtNtBa_3cmp3Ord3minECskcxRuJ53GpR_9rustworkx.exit.thread401 ]
  %.sroa.078.0.off0 = phi i64 [ 0, %bb.iy ], [ 1, %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IternENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRnNtNtBa_3cmp3Ord3minECskcxRuJ53GpR_9rustworkx.exit.thread401 ]
  %.sroa.040.0 = phi i32 [ -1, %bb.iy ], [ 1, %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IternENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRnNtNtBa_3cmp3Ord3minECskcxRuJ53GpR_9rustworkx.exit.thread401 ]
  %i.azi = load i64, ptr %.sroa.6132.0..sroa_idx, align 8 ; 2 uses
  %i.azj = load ptr, ptr %i.ma, align 8, !nonnull !56
  %i.azk = load i64, ptr %.sroa.6149.0..sroa_idx, align 8 ; 2 uses
  %i.azl = load ptr, ptr %i.mc, align 8, !nonnull !56
  %i.azm = load ptr, ptr %i.ca, align 8, !nonnull !56
  %i.azn = load i64, ptr %i.cb, align 8           ; 2 uses
  %i.azo = load ptr, ptr %i.lk, align 8, !nonnull !56 ; 2 uses
  %i.azp = load i64, ptr %i.ll, align 8           ; 4 uses
  br label %bb.md

bb.ja:                                            ; preds = %bb.iz
  %i.azq = load ptr, ptr %i.lk, align 8, !nonnull !56, !noundef !56 ; 5 uses
  %i.azr = getelementptr inbounds nuw i8, ptr %i.azq, i64 16 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14405)
  br i1 %i.mo, label %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IternENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRnNtNtBa_3cmp3Ord3minECskcxRuJ53GpR_9rustworkx.exit.thread401, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %.pre.i.i801 = load i128, ptr %i.azq, align 16, !alias.scope !14406 ; 2 uses
  br i1 %i.mv, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.jb, %.new
  %i.azs = phi i128 [ %i.bac, %.new ], [ %.pre.i.i801, %bb.jb ] ; 2 uses
  %.sroa.04.0.i.i = phi i64 [ %i.bab, %.new ], [ 0, %bb.jb ] ; 3 uses
  %.sroa.02.0.i.i = phi ptr [ %..i.i.i.i.1, %.new ], [ %i.azq, %bb.jb ]
  %niter15798 = phi i64 [ %niter15798.next.1, %.new ], [ 0, %bb.jb ]
  %i.azt = getelementptr inbounds nuw [16 x i8], ptr %i.azr, i64 %.sroa.04.0.i.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14407)
  call void @llvm.experimental.noalias.scope.decl(metadata !14408)
  call void @llvm.experimental.noalias.scope.decl(metadata !14409)
  call void @llvm.experimental.noalias.scope.decl(metadata !14410)
  call void @llvm.experimental.noalias.scope.decl(metadata !14411)
  call void @llvm.experimental.noalias.scope.decl(metadata !14412)
  %i.azu = load i128, ptr %i.azt, align 16, !alias.scope !14413, !noalias !14405, !noundef !56 ; 2 uses
  %i.azv = icmp slt i128 %i.azu, %i.azs
  %..i.i.i.i = select i1 %i.azv, ptr %i.azt, ptr %.sroa.02.0.i.i
  %i.azw = call i128 @llvm.smin.i128(i128 %i.azu, i128 %i.azs) ; 2 uses
  %i.azx = getelementptr inbounds nuw [16 x i8], ptr %i.azr, i64 %.sroa.04.0.i.i
  %i.azy = getelementptr inbounds nuw i8, ptr %i.azx, i64 16 ; 2 uses
  %i.azz = load i128, ptr %i.azy, align 16, !alias.scope !14414, !noalias !14405, !noundef !56 ; 2 uses
  %i.baa = icmp slt i128 %i.azz, %i.azw
  %..i.i.i.i.1 = select i1 %i.baa, ptr %i.azy, ptr %..i.i.i.i ; 3 uses
  %i.bab = add nuw i64 %.sroa.04.0.i.i, 2         ; 2 uses
  %i.bac = call i128 @llvm.smin.i128(i128 %i.azz, i128 %i.azw) ; 2 uses
  %niter15798.next.1 = add i64 %niter15798, 2     ; 2 uses
  %niter15798.ncmp.1 = icmp eq i64 %niter15798.next.1, %unroll_iter15797
  br i1 %niter15798.ncmp.1, label %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IternENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRnNtNtBa_3cmp3Ord3minECskcxRuJ53GpR_9rustworkx.exit.thread401.loopexit.unr-lcssa, label %.new

_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IternENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRnNtNtBa_3cmp3Ord3minECskcxRuJ53GpR_9rustworkx.exit.thread401.loopexit.unr-lcssa: ; preds = %.new
  br i1 %lcmp.mod15794.not, label %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IternENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRnNtNtBa_3cmp3Ord3minECskcxRuJ53GpR_9rustworkx.exit.thread401, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IternENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRnNtNtBa_3cmp3Ord3minECskcxRuJ53GpR_9rustworkx.exit.thread401.loopexit.unr-lcssa, %bb.jb
  %.epil.init15793 = phi i128 [ %.pre.i.i801, %bb.jb ], [ %i.bac, %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IternENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRnNtNtBa_3cmp3Ord3minECskcxRuJ53GpR_9rustworkx.exit.thread401.loopexit.unr-lcssa ]
  %.sroa.04.0.i.i.epil.init = phi i64 [ 0, %bb.jb ], [ %i.bab, %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IternENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRnNtNtBa_3cmp3Ord3minECskcxRuJ53GpR_9rustworkx.exit.thread401.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.epil.init = phi ptr [ %i.azq, %bb.jb ], [ %..i.i.i.i.1, %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IternENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRnNtNtBa_3cmp3Ord3minECskcxRuJ53GpR_9rustworkx.exit.thread401.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod15796)
  %i.bad = getelementptr inbounds nuw [16 x i8], ptr %i.azr, i64 %.sroa.04.0.i.i.epil.init ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14407)
  call void @llvm.experimental.noalias.scope.decl(metadata !14408)
  call void @llvm.experimental.noalias.scope.decl(metadata !14409)
  call void @llvm.experimental.noalias.scope.decl(metadata !14410)
  call void @llvm.experimental.noalias.scope.decl(metadata !14411)
  call void @llvm.experimental.noalias.scope.decl(metadata !14412)
  %i.bae = load i128, ptr %i.bad, align 16, !alias.scope !14413, !noalias !14405, !noundef !56
  %i.baf = icmp slt i128 %i.bae, %.epil.init15793
  %..i.i.i.i.epil = select i1 %i.baf, ptr %i.bad, ptr %.sroa.02.0.i.i.epil.init
  br label %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IternENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRnNtNtBa_3cmp3Ord3minECskcxRuJ53GpR_9rustworkx.exit.thread401

_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IternENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRnNtNtBa_3cmp3Ord3minECskcxRuJ53GpR_9rustworkx.exit.thread401: ; preds = %.epil.preheader, %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IternENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRnNtNtBa_3cmp3Ord3minECskcxRuJ53GpR_9rustworkx.exit.thread401.loopexit.unr-lcssa, %bb.ja
  %.sroa.0.0.i802404 = phi ptr [ %i.azq, %bb.ja ], [ %..i.i.i.i.1, %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IternENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRnNtNtBa_3cmp3Ord3minECskcxRuJ53GpR_9rustworkx.exit.thread401.loopexit.unr-lcssa ], [ %..i.i.i.i.epil, %.epil.preheader ]
  %i.bag = load i128, ptr %.sroa.0.0.i802404, align 16, !noundef !56
  br label %.lr.ph4359

.lr.ph4371:                                       ; preds = %bb.mh
  %i.bah = load i64, ptr %.sroa.6132.0..sroa_idx, align 8 ; 2 uses
  %i.bai = load ptr, ptr %i.ma, align 8, !nonnull !56
  %i.baj = load i64, ptr %.sroa.6149.0..sroa_idx, align 8 ; 2 uses
  %i.bak = load ptr, ptr %i.mc, align 8, !nonnull !56
  %i.bal = load ptr, ptr %i.ca, align 8, !nonnull !56
  %i.bam = load i64, ptr %i.cb, align 8           ; 2 uses
  %i.ban = load ptr, ptr %i.lk, align 8, !nonnull !56 ; 2 uses
  %i.bao = load i64, ptr %i.ll, align 8           ; 4 uses
  br label %bb.lq

.lr.ph4383:                                       ; preds = %bb.lr
  %i.bap = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !noundef !56 ; 2 uses
  %i.baq = load i64, ptr %.sroa.6132.0..sroa_idx, align 8 ; 2 uses
  %i.bar = load ptr, ptr %i.ma, align 8, !nonnull !56
  %umax7480 = call i64 @llvm.umax.i64(i64 %i.bap, i64 %.val.i491) ; 2 uses
  %i.bas = load ptr, ptr %.sroa.4.0..sroa_idx.i552, align 8, !nonnull !56
  %.pre7494 = load i64, ptr %i.ll, align 8        ; 4 uses
  %i.bat = load ptr, ptr %i.lk, align 8, !nonnull !56 ; 2 uses
  br label %.outer

._crit_edge4384:                                  ; preds = %bb.lg
  %i.bau = icmp eq i32 %.sroa.040.34382.ph, -1
  br i1 %i.bau, label %bb.jd, label %.lr.ph4392

bb.jc:                                            ; preds = %.outer, %bb.lg
  %.sroa.078.3.off04379 = phi i64 [ %.sroa.078.5.off0, %bb.lg ], [ %.sroa.078.3.off04379.ph, %.outer ] ; 5 uses
  %.sroa.0166.04377 = phi i64 [ %i.bav, %bb.lg ], [ %.sroa.0166.04377.ph, %.outer ] ; 15 uses
  %i.bav = add i64 %.sroa.0166.04377, 1           ; 4 uses
  %exitcond7481.not = icmp eq i64 %.sroa.0166.04377, %umax7480
  br i1 %exitcond7481.not, label %.invoke14899, label %bb.lf

bb.jd:                                            ; preds = %._crit_edge4384
  br i1 %2, label %bb.je, label %.invoke14901, !prof !66

bb.je:                                            ; preds = %bb.jd
  %i.baw = load i64, ptr %i.ll, align 8, !noundef !56 ; 2 uses
  %.not338 = icmp ugt i64 %.val.i491, %i.baw
  br i1 %.not338, label %.invoke14905, label %bb.jf, !prof !76

.invoke14905:                                     ; preds = %bb.je, %bb.iz
  %i.bax = phi i64 [ %i.azh, %bb.iz ], [ %i.baw, %bb.je ]
  %i.bay = phi ptr [ @419, %bb.iz ], [ @422, %bb.je ]
  invoke void @_RNvNtNtCslwFuT2d6ECx_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.val.i491, i64 noundef %i.bax, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bay) #61
          to label %.cont14906 unwind label %.loopexit.split-lp469.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont14906:                                       ; preds = %.invoke14905
  unreachable

bb.jf:                                            ; preds = %bb.je
  %i.baz = load ptr, ptr %i.lk, align 8, !nonnull !56, !noundef !56 ; 5 uses
  %i.bba = getelementptr inbounds nuw i8, ptr %i.baz, i64 16 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14415)
  br i1 %i.mo, label %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IternENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRnNtNtBa_3cmp3Ord3minECskcxRuJ53GpR_9rustworkx.exit808.thread407, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %.pre.i.i803 = load i128, ptr %i.baz, align 16, !alias.scope !14416 ; 2 uses
  br i1 %i.mw, label %.epil.preheader15801, label %.new15800

.new15800:                                        ; preds = %bb.jg, %.new15800
  %i.bbb = phi i128 [ %i.bbl, %.new15800 ], [ %.pre.i.i803, %bb.jg ] ; 2 uses
  %.sroa.04.0.i.i804 = phi i64 [ %i.bbk, %.new15800 ], [ 0, %bb.jg ] ; 3 uses
  %.sroa.02.0.i.i805 = phi ptr [ %..i.i.i.i806.1, %.new15800 ], [ %i.baz, %bb.jg ]
  %niter15810 = phi i64 [ %niter15810.next.1, %.new15800 ], [ 0, %bb.jg ]
  %i.bbc = getelementptr inbounds nuw [16 x i8], ptr %i.bba, i64 %.sroa.04.0.i.i804 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14417)
  call void @llvm.experimental.noalias.scope.decl(metadata !14418)
  call void @llvm.experimental.noalias.scope.decl(metadata !14419)
  call void @llvm.experimental.noalias.scope.decl(metadata !14420)
  call void @llvm.experimental.noalias.scope.decl(metadata !14421)
  call void @llvm.experimental.noalias.scope.decl(metadata !14422)
  %i.bbd = load i128, ptr %i.bbc, align 16, !alias.scope !14423, !noalias !14415, !noundef !56 ; 2 uses
  %i.bbe = icmp slt i128 %i.bbd, %i.bbb
  %..i.i.i.i806 = select i1 %i.bbe, ptr %i.bbc, ptr %.sroa.02.0.i.i805
  %i.bbf = call i128 @llvm.smin.i128(i128 %i.bbd, i128 %i.bbb) ; 2 uses
  %i.bbg = getelementptr inbounds nuw [16 x i8], ptr %i.bba, i64 %.sroa.04.0.i.i804
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.bbg, i64 16 ; 2 uses
  %i.bbi = load i128, ptr %i.bbh, align 16, !alias.scope !14424, !noalias !14415, !noundef !56 ; 2 uses
  %i.bbj = icmp slt i128 %i.bbi, %i.bbf
  %..i.i.i.i806.1 = select i1 %i.bbj, ptr %i.bbh, ptr %..i.i.i.i806 ; 3 uses
  %i.bbk = add nuw i64 %.sroa.04.0.i.i804, 2      ; 2 uses
  %i.bbl = call i128 @llvm.smin.i128(i128 %i.bbi, i128 %i.bbf) ; 2 uses
  %niter15810.next.1 = add i64 %niter15810, 2     ; 2 uses
  %niter15810.ncmp.1 = icmp eq i64 %niter15810.next.1, %unroll_iter15809
  br i1 %niter15810.ncmp.1, label %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IternENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRnNtNtBa_3cmp3Ord3minECskcxRuJ53GpR_9rustworkx.exit808.thread407.loopexit.unr-lcssa, label %.new15800

_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IternENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRnNtNtBa_3cmp3Ord3minECskcxRuJ53GpR_9rustworkx.exit808.thread407.loopexit.unr-lcssa: ; preds = %.new15800
  br i1 %lcmp.mod15806.not, label %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IternENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRnNtNtBa_3cmp3Ord3minECskcxRuJ53GpR_9rustworkx.exit808.thread407, label %.epil.preheader15801

.epil.preheader15801:                             ; preds = %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IternENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRnNtNtBa_3cmp3Ord3minECskcxRuJ53GpR_9rustworkx.exit808.thread407.loopexit.unr-lcssa, %bb.jg
  %.epil.init15805 = phi i128 [ %.pre.i.i803, %bb.jg ], [ %i.bbl, %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IternENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRnNtNtBa_3cmp3Ord3minECskcxRuJ53GpR_9rustworkx.exit808.thread407.loopexit.unr-lcssa ]
  %.sroa.04.0.i.i804.epil.init = phi i64 [ 0, %bb.jg ], [ %i.bbk, %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IternENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRnNtNtBa_3cmp3Ord3minECskcxRuJ53GpR_9rustworkx.exit808.thread407.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i805.epil.init = phi ptr [ %i.baz, %bb.jg ], [ %..i.i.i.i806.1, %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IternENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRnNtNtBa_3cmp3Ord3minECskcxRuJ53GpR_9rustworkx.exit808.thread407.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod15808)
  %i.bbm = getelementptr inbounds nuw [16 x i8], ptr %i.bba, i64 %.sroa.04.0.i.i804.epil.init ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14417)
  call void @llvm.experimental.noalias.scope.decl(metadata !14418)
  call void @llvm.experimental.noalias.scope.decl(metadata !14419)
  call void @llvm.experimental.noalias.scope.decl(metadata !14420)
  call void @llvm.experimental.noalias.scope.decl(metadata !14421)
  call void @llvm.experimental.noalias.scope.decl(metadata !14422)
  %i.bbn = load i128, ptr %i.bbm, align 16, !alias.scope !14423, !noalias !14415, !noundef !56
  %i.bbo = icmp slt i128 %i.bbn, %.epil.init15805
  %..i.i.i.i806.epil = select i1 %i.bbo, ptr %i.bbm, ptr %.sroa.02.0.i.i805.epil.init
  br label %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IternENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRnNtNtBa_3cmp3Ord3minECskcxRuJ53GpR_9rustworkx.exit808.thread407

_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IternENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRnNtNtBa_3cmp3Ord3minECskcxRuJ53GpR_9rustworkx.exit808.thread407: ; preds = %.epil.preheader15801, %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IternENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRnNtNtBa_3cmp3Ord3minECskcxRuJ53GpR_9rustworkx.exit808.thread407.loopexit.unr-lcssa, %bb.jf
  %.sroa.0.0.i807410 = phi ptr [ %i.baz, %bb.jf ], [ %..i.i.i.i806.1, %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IternENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRnNtNtBa_3cmp3Ord3minECskcxRuJ53GpR_9rustworkx.exit808.thread407.loopexit.unr-lcssa ], [ %..i.i.i.i806.epil, %.epil.preheader15801 ]
  %i.bbp = load i128, ptr %.sroa.0.0.i807410, align 16, !noundef !56
  %i.bbq = call i128 @llvm.smax.i128(i128 %i.bbp, i128 0)
  br label %.lr.ph4392

.lr.ph4392:                                       ; preds = %.thread7844, %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IternENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRnNtNtBa_3cmp3Ord3minECskcxRuJ53GpR_9rustworkx.exit808.thread407, %._crit_edge4384
  %.sroa.376.178527861 = phi i64 [ %.sroa.376.04380.ph, %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IternENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRnNtNtBa_3cmp3Ord3minECskcxRuJ53GpR_9rustworkx.exit808.thread407 ], [ %.sroa.376.04380.ph, %._crit_edge4384 ], [ %.sroa.0166.04377, %.thread7844 ]
  %.sroa.075.178537860 = phi i1 [ %.sroa.075.04381.ph, %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IternENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRnNtNtBa_3cmp3Ord3minECskcxRuJ53GpR_9rustworkx.exit808.thread407 ], [ %.sroa.075.04381.ph, %._crit_edge4384 ], [ true, %.thread7844 ]
  %.sroa.13.4 = phi i128 [ %i.bbq, %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IternENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRnNtNtBa_3cmp3Ord3minECskcxRuJ53GpR_9rustworkx.exit808.thread407 ], [ %.sroa.13.34378.ph, %._crit_edge4384 ], [ %i.bgl, %.thread7844 ] ; 4 uses
  %.sroa.078.4.off0 = phi i64 [ 1, %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IternENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRnNtNtBa_3cmp3Ord3minECskcxRuJ53GpR_9rustworkx.exit808.thread407 ], [ %.sroa.078.5.off0, %._crit_edge4384 ], [ 1, %.thread7844 ] ; 2 uses
  %.sroa.040.4 = phi i32 [ 1, %_RINvYINtNtNtCslwFuT2d6ECx_4core5slice4iter4IternENtNtNtNtBa_4iter6traits8iterator8Iterator6reduceNvYRnNtNtBa_3cmp3Ord3minECskcxRuJ53GpR_9rustworkx.exit808.thread407 ], [ %.sroa.040.34382.ph, %._crit_edge4384 ], [ 4, %.thread7844 ]
  %i.bbr = trunc nuw i64 %.sroa.078.4.off0 to i1  ; 2 uses
  %i.bbs = load i64, ptr %i.ll, align 8           ; 4 uses
  %i.bbt = load ptr, ptr %i.lk, align 8, !nonnull !56 ; 2 uses
  br label %bb.kv

.lr.ph4394:                                       ; preds = %bb.lc
  %i.bbu = trunc nuw i64 %.sroa.078.4.off0 to i1  ; 2 uses
  %i.bbv = load i64, ptr %i.ll, align 8           ; 4 uses
  %i.bbw = load ptr, ptr %i.lk, align 8, !nonnull !56 ; 2 uses
  br label %bb.jh

._crit_edge4395:                                  ; preds = %bb.kk
  switch i32 %.sroa.040.4, label %.preheader490.backedge [
    i32 1, label %.loopexit494
    i32 2, label %bb.ji
    i32 3, label %bb.jv
    i32 4, label %bb.ke
  ]

bb.jh:                                            ; preds = %.lr.ph4394, %bb.kk
  %.sroa.0170.04393 = phi i64 [ %.val.i491, %.lr.ph4394 ], [ %i.bbx, %bb.kk ] ; 14 uses
  %i.bbx = add nuw nsw i64 %.sroa.0170.04393, 1   ; 2 uses
  %i.bby = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !noundef !56 ; 2 uses
  %i.bbz = icmp ult i64 %.sroa.0170.04393, %i.bby
  br i1 %i.bbz, label %bb.kj, label %.invoke14899

bb.ji:                                            ; preds = %._crit_edge4395
  %i.bca = trunc nuw i64 %.sroa.060.2 to i1
  br i1 %i.bca, label %bb.jj, label %.invoke14903, !prof !66

bb.jj:                                            ; preds = %bb.ji
  %i.bcb = icmp ult i64 %.sroa.764.2, %.val.i
  br i1 %i.bcb, label %bb.jk, label %.invoke14899

bb.jk:                                            ; preds = %bb.jj
  %i.bcc = getelementptr inbounds nuw i8, ptr %i.pf, i64 %.sroa.764.2
  store i8 1, ptr %i.bcc, align 1
  %i.bcd = load i64, ptr %i.cb, align 8, !noundef !56 ; 2 uses
  %i.bce = icmp ult i64 %.sroa.764.2, %i.bcd
  br i1 %i.bce, label %bb.jl, label %.invoke14899

bb.jl:                                            ; preds = %bb.jk
  %i.bcf = load ptr, ptr %i.ca, align 8, !nonnull !56, !noundef !56
  %i.bcg = getelementptr inbounds nuw [32 x i8], ptr %i.bcf, i64 %.sroa.764.2 ; 2 uses
  %i.bch = load i64, ptr %i.bcg, align 16, !noundef !56 ; 5 uses
  %i.bci = getelementptr inbounds nuw i8, ptr %i.bcg, i64 8
  %i.bcj = load i64, ptr %i.bci, align 8, !noundef !56
  %i.bck = icmp ult i64 %i.bch, %.val.i491
  br i1 %i.bck, label %bb.jm, label %.invoke14899

bb.jm:                                            ; preds = %bb.jl
  %i.bcl = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.bch
  %i.bcm = load i64, ptr %i.bcl, align 8, !noundef !56 ; 3 uses
  %i.bcn = load i64, ptr %.sroa.6132.0..sroa_idx, align 8, !noundef !56 ; 4 uses
  %i.bco = icmp ult i64 %i.bcm, %i.bcn
  br i1 %i.bco, label %bb.jn, label %.invoke14899

bb.jn:                                            ; preds = %bb.jm
  %i.bcp = load ptr, ptr %i.ma, align 8, !nonnull !56, !noundef !56 ; 2 uses
  %i.bcq = getelementptr inbounds nuw [16 x i8], ptr %i.bcp, i64 %i.bcm ; 2 uses
  %i.bcr = load i64, ptr %i.bcq, align 8, !range !57, !noundef !56
  %i.bcs = trunc nuw i64 %i.bcr to i1
  br i1 %i.bcs, label %bb.jo, label %bb.jp

bb.jo:                                            ; preds = %bb.jn
  %i.bct = getelementptr inbounds nuw i8, ptr %i.bcq, i64 8
  %i.bcu = load i64, ptr %i.bct, align 8, !noundef !56
  %i.bcv = icmp eq i64 %i.bcu, 0
  %spec.select = select i1 %i.bcv, i64 %i.bcj, i64 %i.bch
  br label %bb.jp

bb.jp:                                            ; preds = %bb.jo, %bb.jn
  %.sroa.0114.0 = phi i64 [ %i.bch, %bb.jn ], [ %spec.select, %bb.jo ] ; 4 uses
  %i.bcw = icmp ult i64 %.sroa.0114.0, %.val.i491
  br i1 %i.bcw, label %bb.jq, label %.invoke14899

bb.jq:                                            ; preds = %bb.jp
  %i.bcx = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %.sroa.0114.0
  %i.bcy = load i64, ptr %i.bcx, align 8, !noundef !56 ; 3 uses
  %i.bcz = icmp ult i64 %i.bcy, %i.bcn
  br i1 %i.bcz, label %bb.jr, label %.invoke14899

bb.jr:                                            ; preds = %bb.jq
  %i.bda = getelementptr inbounds nuw [16 x i8], ptr %i.bcp, i64 %i.bcy ; 2 uses
  %i.bdb = load i64, ptr %i.bda, align 8, !range !57, !noundef !56
  %i.bdc = trunc nuw i64 %i.bdb to i1
  br i1 %i.bdc, label %bb.js, label %.invoke14901, !prof !66

bb.js:                                            ; preds = %bb.jr
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.bda, i64 8
  %i.bde = load i64, ptr %i.bdd, align 8, !noundef !56
  %i.bdf = icmp eq i64 %i.bde, 1
  br i1 %i.bdf, label %bb.jt, label %.invoke14901, !prof !66

bb.jt:                                            ; preds = %bb.js
  %i.bdg = load i64, ptr %i.lz, align 8, !alias.scope !14425, !noundef !56 ; 3 uses
  %i.bdh = load i64, ptr %i.r, align 8, !range !59, !alias.scope !14425, !noundef !56
  %i.bdi = icmp eq i64 %i.bdg, %i.bdh
  br i1 %i.bdi, label %bb.ju, label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjE8push_mutCskcxRuJ53GpR_9rustworkx.exit

bb.ju:                                            ; preds = %bb.jt
  invoke void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCsLUcHuY3yQf_15crossbeam_utils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r) #62
          to label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjE8push_mutCskcxRuJ53GpR_9rustworkx.exit unwind label %.loopexit.split-lp469.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecjE8push_mutCskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.ju, %bb.jt
  %i.bdj = load ptr, ptr %i.ly, align 8, !alias.scope !14425, !nonnull !56, !noundef !56
  %i.bdk = getelementptr inbounds nuw [8 x i8], ptr %i.bdj, i64 %i.bdg
  store i64 %.sroa.0114.0, ptr %i.bdk, align 8
  %i.bdl = add i64 %i.bdg, 1
  store i64 %i.bdl, ptr %i.lz, align 8, !alias.scope !14425
  br label %.preheader490.backedge
end_hunk_0
begin_hunk_1_@_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTjNtNtCskcxRuJ53GpR_9rustworkx9iterators11PathMappingEEBH_:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25253)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !25254, !noundef !56 ; 4 uses
  %i.c = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.c, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !25254, !nonnull !56, !noundef !56
  %i.e = shl i64 %.val1.i.i.i, 3
  %i.f = icmp slt i64 %.val1.i.i.i, 2305843009213693950
  tail call void @llvm.assume(i1 %i.f)
  %i.g = and i64 %i.e, -16                        ; 2 uses
  %i.h = add i64 %i.g, 16                         ; 2 uses
  %i.i = add nsw i64 %.val1.i.i.i, 17
  %i.j = add i64 %i.i, %i.h                       ; 3 uses
  %i.k = icmp uge i64 %i.j, %i.h
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp ult i64 %i.j, 9223372036854775793
  tail call void @llvm.assume(i1 %i.l)
  %i.m = sub nuw nsw i64 -16, %i.g
  %i.n = getelementptr inbounds i8, ptr %.val.i.i.i, i64 %i.m
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !25254
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25255)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !25256, !nonnull !56, !noundef !56 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i.i = load i64, ptr %i.p, align 8, !alias.scope !25256, !noundef !56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25257)
  %i.q = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.q, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtCsfztDQZkQYYe_8indexmap6BucketjIBw_jEEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketjINtNtCs87CvPiUlf0m_5alloc3vec3VecjEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %.sroa.0.012.i.i.i.i.i.i = phi i64 [ %i.s, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketjINtNtCs87CvPiUlf0m_5alloc3vec3VecjEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw [40 x i8], ptr %.val.i.i.i.i, i64 %.sroa.0.012.i.i.i.i.i.i ; 2 uses
  %i.s = add nuw nsw i64 %.sroa.0.012.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !25258, !noalias !25256 ; 2 uses
  %i.t = icmp eq i64 %.val8.i.i.i.i.i.i, 0
  br i1 %i.t, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketjINtNtCs87CvPiUlf0m_5alloc3vec3VecjEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.u = getelementptr i8, ptr %i.r, i64 8
  %.val9.i.i.i.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !25257, !noalias !25256, !nonnull !56, !noundef !56
  %i.v = shl nuw i64 %.val8.i.i.i.i.i.i, 3
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !25259
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketjINtNtCs87CvPiUlf0m_5alloc3vec3VecjEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketjINtNtCs87CvPiUlf0m_5alloc3vec3VecjEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.w = icmp eq i64 %i.s, %.val1.i.i.i.i
  br i1 %i.w, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtCsfztDQZkQYYe_8indexmap6BucketjIBw_jEEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtCsfztDQZkQYYe_8indexmap6BucketjIBw_jEEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketjINtNtCs87CvPiUlf0m_5alloc3vec3VecjEEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %.val2.i.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !25256 ; 2 uses
  %i.x = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.x, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCskcxRuJ53GpR_9rustworkx9iterators11PathMappingEBF_.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtCsfztDQZkQYYe_8indexmap6BucketjIBw_jEEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %i.y = mul nuw i64 %.val2.i.i.i.i, 40
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !25256
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCskcxRuJ53GpR_9rustworkx9iterators11PathMappingEBF_.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCskcxRuJ53GpR_9rustworkx9iterators11PathMappingEBF_.exit: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtCsfztDQZkQYYe_8indexmap6BucketjIBw_jEEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTjNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEEBH_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25268)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !25269, !noundef !56 ; 4 uses
  %i.c = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.c, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !25269, !nonnull !56, !noundef !56
  %i.e = shl i64 %.val1.i.i.i, 3
  %i.f = icmp slt i64 %.val1.i.i.i, 2305843009213693950
  tail call void @llvm.assume(i1 %i.f)
  %i.g = and i64 %i.e, -16                        ; 2 uses
  %i.h = add i64 %i.g, 16                         ; 2 uses
  %i.i = add nsw i64 %.val1.i.i.i, 17
  %i.j = add i64 %i.i, %i.h                       ; 3 uses
  %i.k = icmp uge i64 %i.j, %i.h
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp ult i64 %i.j, 9223372036854775793
  tail call void @llvm.assume(i1 %i.l)
  %i.m = sub nuw nsw i64 -16, %i.g
  %i.n = getelementptr inbounds i8, ptr %.val.i.i.i, i64 %i.m
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !25269
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i, %bb.a
  %.val2.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !25269 ; 2 uses
  %i.o = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.o, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEBF_.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !25269, !nonnull !56, !noundef !56
  %i.q = mul nuw i64 %.val2.i.i.i, 24
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !25269
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEBF_.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCskcxRuJ53GpR_9rustworkx9iterators17PathLengthMappingEBF_.exit: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i6.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTjTjjINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEEEECskcxRuJ53GpR_9rustworkx(ptr %.24.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.24.val) ]
  %i.a = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i = load i64, ptr %i.a, align 8, !noundef !56
  %i.b = icmp sgt i64 %.val.i.i.i.i.i, 0
  br i1 %i.b, label %bb.c, label %bb.b, !prof !109

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.24.val)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTjjINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBJ_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_Py_DecRef(ptr noundef nonnull %.24.val) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTjjINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBJ_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTjjINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBJ_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTjjINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBJ_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx(ptr %.16.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.16.val) ]
  %i.a = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i = load i64, ptr %i.a, align 8, !noundef !56
  %i.b = icmp sgt i64 %.val.i.i.i.i, 0
  br i1 %i.b, label %bb.c, label %bb.b, !prof !109

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.16.val)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_Py_DecRef(ptr noundef nonnull %.16.val) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort10merge_sortNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBN_INtB4_16ParallelSliceMutBN_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2y_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtBP_5GraphuuNtBR_10UndirectedENCINvB3z_40greedy_edge_color_with_coloring_strategyRINtNtBP_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6U_5types3any5PyAnyEB6P_B58_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6U_3err5PyErrEs1_0B92_E0E0EB85_(ptr noalias nofree noundef nonnull align 4 captures(address) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noundef %2, ptr nofree readonly captures(none) %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i64 0, ptr %i.d, align 8
  %.not81 = icmp eq i64 %1, 0
  br i1 %.not81, label %.loopexit22, label %.lr.ph80

.lr.ph80:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = xor i64 %i.a, -1
  %i.g = add i64 %i.a, 4
  br label %bb.b

.loopexit22:                                      ; preds = %._crit_edge, %bb.a, %bb.f
  %.sroa.0.0 = phi i8 [ %., %bb.f ], [ 2, %bb.a ], [ 2, %._crit_edge ]
  %.val30 = load i64, ptr %i.b, align 8           ; 2 uses
  %i.h = icmp eq i64 %.val30, 0
  br i1 %i.h, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i: ; preds = %.loopexit22
  %.val31 = load ptr, ptr %i.c, align 8, !nonnull !56, !noundef !56
  %i.i = shl nuw i64 %.val30, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val31, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %.loopexit22, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i8 %.sroa.0.0

bb.b:                                             ; preds = %.lr.ph80, %._crit_edge
  %i.j = phi ptr [ inttoptr (i64 8 to ptr), %.lr.ph80 ], [ %i.ay, %._crit_edge ]
  %i.k = phi i64 [ 0, %.lr.ph80 ], [ %i.by, %._crit_edge ] ; 3 uses
  %.sroa.02.078 = phi i64 [ 0, %.lr.ph80 ], [ %.sroa.0.0.i37, %._crit_edge ] ; 10 uses
  %i.l = sub nuw nsw i64 %1, %.sroa.02.078        ; 7 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.02.078 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25340)
  %i.n = icmp samesign ult i64 %i.l, 2
  br i1 %i.n, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val17.i = load i32, ptr %i.o, align 4, !alias.scope !25340 ; 3 uses
  %.val18.i = load i32, ptr %i.m, align 4, !alias.scope !25340
  %i.p = tail call fastcc noundef zeroext i1 @_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_(ptr nonnull readonly %.0.val, i32 %.val17.i, i32 %.val18.i) #64, !noalias !25340
  %.not11.i = icmp eq i64 %i.l, 2                 ; 2 uses
  br i1 %i.p, label %.preheader.i, label %.preheader1.i

.preheader1.i:                                    ; preds = %bb.c
  br i1 %.not11.i, label %.loopexit, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.c
  br i1 %.not11.i, label %.loopexit, label %.lr.ph7.i

.lr.ph.i:                                         ; preds = %.preheader1.i, %bb.d
  %.val15.i = phi i32 [ %.val14.i, %bb.d ], [ %.val17.i, %.preheader1.i ]
  %.sroa.01.03.i = phi i64 [ %i.s, %bb.d ], [ 2, %.preheader1.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.01.03.i
  %.val14.i = load i32, ptr %i.q, align 4, !alias.scope !25340 ; 2 uses
  %i.r = tail call fastcc noundef zeroext i1 @_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_(ptr nonnull readonly %.0.val, i32 %.val14.i, i32 %.val15.i) #64, !noalias !25340
  br i1 %i.r, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.s = add nuw nsw i64 %.sroa.01.03.i, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.s, %i.l
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph7.i:                                        ; preds = %.preheader.i, %bb.e
  %.val12.i = phi i32 [ %.val11.i, %bb.e ], [ %.val17.i, %.preheader.i ]
  %.sroa.01.16.i = phi i64 [ %i.v, %bb.e ], [ 2, %.preheader.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.01.16.i
  %.val11.i = load i32, ptr %i.t, align 4, !alias.scope !25340 ; 2 uses
  %i.u = tail call fastcc noundef zeroext i1 @_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_(ptr nonnull readonly %.0.val, i32 %.val11.i, i32 %.val12.i) #64, !noalias !25340
  br i1 %i.u, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %.lr.ph7.i
  %i.v = add nuw nsw i64 %.sroa.01.16.i, 1        ; 2 uses
  %exitcond14.not.i = icmp eq i64 %i.v, %i.l
  br i1 %exitcond14.not.i, label %.loopexit, label %.lr.ph7.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.m, %bb.j, %.invoke230, %.invoke, %bb.h
  %lpad.loopexit.split-lp291 = landingpad { ptr, i32 }
          cleanup
  %.val = load i64, ptr %i.b, align 8             ; 2 uses
  %i.w = icmp eq i64 %.val, 0
  br i1 %i.w, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit36, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i35

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i35: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val29 = load ptr, ptr %i.c, align 8, !nonnull !56, !noundef !56
  %i.x = shl nuw i64 %.val, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val29, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) 8) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit36

.loopexit:                                        ; preds = %bb.d, %.lr.ph.i, %bb.e, %.lr.ph7.i, %.preheader.i, %.preheader1.i, %bb.b
  %.sroa.4.0.i = phi i1 [ false, %bb.b ], [ true, %.preheader.i ], [ true, %bb.e ], [ false, %.preheader1.i ], [ true, %.lr.ph7.i ], [ false, %.lr.ph.i ], [ false, %bb.d ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %i.l, %bb.b ], [ 2, %.preheader.i ], [ %i.l, %bb.e ], [ 2, %.preheader1.i ], [ %.sroa.01.16.i, %.lr.ph7.i ], [ %i.l, %bb.d ], [ %.sroa.01.03.i, %.lr.ph.i ] ; 7 uses
  %i.y = add i64 %.sroa.0.0.i, %.sroa.02.078      ; 8 uses
  %i.z = icmp eq i64 %.sroa.02.078, 0
  %i.aa = icmp eq i64 %i.y, %1
  %or.cond = and i1 %i.z, %i.aa
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.loopexit
  %. = zext i1 %.sroa.4.0.i to i8
  br label %.loopexit22

bb.g:                                             ; preds = %.loopexit
  br i1 %.sroa.4.0.i, label %bb.k, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit

_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i, %middle.block, %bb.l, %bb.g
  %3 = icmp uge i64 %i.y, %.sroa.02.078
  %4 = icmp ule i64 %i.y, %1
  %or.cond.i = and i1 %3, %4
  br i1 %or.cond.i, label %bb.i, label %bb.h, !prof !109

bb.h:                                             ; preds = %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @586, i64 noundef 44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @587) #60
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit
  %i.ab = icmp samesign ult i64 %.sroa.0.0.i, 10
  %i.ac = icmp samesign ult i64 %i.y, %1
  %or.cond3.i = and i1 %i.ab, %i.ac
  br i1 %or.cond3.i, label %bb.j, label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2I_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtBZ_5GraphuuNtB11_10UndirectedENCINvB3J_40greedy_edge_color_with_coloring_strategyRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB75_5types3any5PyAnyEB70_B5i_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB75_3err5PyErrEs1_0B9d_E0E0EB8g_.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = add nuw nsw i64 %.sroa.02.078, 10
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 range(i64 0, 2305843009213693952) %1) ; 2 uses
  %i.af = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 1)
  %i.ag = sub i64 %i.ae, %.sroa.02.078            ; 2 uses
  invoke fastcc void @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort25insertion_sort_shift_leftNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSB12_INtB4_16ParallelSliceMutB12_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2P_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB14_5GraphuuNtB16_10UndirectedENCINvB3Q_40greedy_edge_color_with_coloring_strategyRINtNtB14_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7e_5types3any5PyAnyEB79_B5q_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB7e_3err5PyErrEs1_0B9m_E0E0EB8p_(ptr noalias nofree noundef nonnull align 4 %i.m, i64 noundef %i.ag, i64 noundef %i.af, ptr readonly %.0.val) #62
          to label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2I_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtBZ_5GraphuuNtB11_10UndirectedENCINvB3J_40greedy_edge_color_with_coloring_strategyRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB75_5types3any5PyAnyEB70_B5i_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB75_3err5PyErrEs1_0B9d_E0E0EB8g_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.g
  %5 = icmp ult i64 %i.y, %.sroa.02.078
  %.not = icmp ugt i64 %i.y, %1
  %or.cond27 = or i1 %5, %.not
  br i1 %or.cond27, label %.invoke, label %bb.l, !prof !76

bb.l:                                             ; preds = %bb.k
  %i.ah = lshr i64 %.sroa.0.0.i, 1                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25341)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25342)
  %.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i: ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.0.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %.sroa.0.0.i, 16
  br i1 %min.iters.check, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i
  %n.vec = and i64 %i.ah, 4611686018427387896     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aj = xor i64 %index, -1
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index ; 3 uses
  %i.al = getelementptr [4 x i8], ptr %i.ai, i64 %i.aj ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ak, align 4, !alias.scope !25341
  %wide.load277 = load <4 x i32>, ptr %i.am, align 4, !alias.scope !25341
  %i.an = getelementptr i8, ptr %i.al, i64 -12    ; 2 uses
  %i.ao = getelementptr i8, ptr %i.al, i64 -28    ; 2 uses
  %wide.load278 = load <4 x i32>, ptr %i.an, align 4, !alias.scope !25342
  %wide.load279 = load <4 x i32>, ptr %i.ao, align 4, !alias.scope !25342
  %reverse = shufflevector <4 x i32> %wide.load278, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse280 = shufflevector <4 x i32> %wide.load279, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %i.ak, align 4, !alias.scope !25341
  store <4 x i32> %reverse280, ptr %i.am, align 4, !alias.scope !25341
  %reverse281 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse282 = shufflevector <4 x i32> %wide.load277, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse281, ptr %i.an, align 4, !alias.scope !25342
  store <4 x i32> %reverse282, ptr %i.ao, align 4, !alias.scope !25342
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !25275

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i, %middle.block
  %.sroa.0.016.i.ph = phi i64 [ 0, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i
  %.sroa.0.016.i = phi i64 [ %i.av, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i ], [ %.sroa.0.016.i.ph, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader ] ; 3 uses
  %i.aq = xor i64 %.sroa.0.016.i, -1
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.016.i ; 2 uses
  %i.as = getelementptr [4 x i8], ptr %i.ai, i64 %i.aq ; 2 uses
  %i.at = load i32, ptr %i.ar, align 4, !alias.scope !25341, !noundef !56
  %i.au = load i32, ptr %i.as, align 4, !alias.scope !25342
  store i32 %i.au, ptr %i.ar, align 4, !alias.scope !25341
  store i32 %i.at, ptr %i.as, align 4, !alias.scope !25342
  %i.av = add nuw nsw i64 %.sroa.0.016.i, 1       ; 2 uses
  %exitcond.not.i39 = icmp eq i64 %i.av, %i.ah
  br i1 %exitcond.not.i39, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i, !llvm.loop !25276

_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2I_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtBZ_5GraphuuNtB11_10UndirectedENCINvB3J_40greedy_edge_color_with_coloring_strategyRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB75_5types3any5PyAnyEB70_B5i_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB75_3err5PyErrEs1_0B9d_E0E0EB8g_.exit: ; preds = %bb.i, %bb.j
  %.pre-phi = phi i64 [ %i.ag, %bb.j ], [ %.sroa.0.0.i, %bb.i ]
  %.sroa.0.0.i37 = phi i64 [ %i.ae, %bb.j ], [ %i.y, %bb.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25343)
  %i.aw = load i64, ptr %i.b, align 8, !range !59, !alias.scope !25343, !noundef !56
  %i.ax = icmp eq i64 %i.k, %i.aw
  br i1 %i.ax, label %bb.m, label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit

bb.m:                                             ; preds = %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2I_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtBZ_5GraphuuNtB11_10UndirectedENCINvB3J_40greedy_edge_color_with_coloring_strategyRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB75_5types3any5PyAnyEB70_B5i_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB75_3err5PyErrEs1_0B9d_E0E0EB8g_.exit
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #62
          to label %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge: ; preds = %bb.m
  %.pre = load ptr, ptr %i.c, align 8, !alias.scope !25343
  br label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit

_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit: ; preds = %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2I_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtBZ_5GraphuuNtB11_10UndirectedENCINvB3J_40greedy_edge_color_with_coloring_strategyRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB75_5types3any5PyAnyEB70_B5i_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB75_3err5PyErrEs1_0B9d_E0E0EB8g_.exit
  %i.ay = phi ptr [ %.pre, %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge ], [ %i.j, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2I_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtBZ_5GraphuuNtB11_10UndirectedENCINvB3J_40greedy_edge_color_with_coloring_strategyRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB75_5types3any5PyAnyEB70_B5i_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB75_3err5PyErrEs1_0B9d_E0E0EB8g_.exit ] ; 6 uses
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.k ; 2 uses
  store i64 %.pre-phi, ptr %i.az, align 8, !noalias !25343
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %.sroa.02.078, ptr %i.ba, align 8, !noalias !25343
  %i.bb = add i64 %i.k, 1                         ; 4 uses
  store i64 %i.bb, ptr %i.d, align 8
  %i.bc = icmp samesign ugt i64 %i.bb, 1
  br i1 %i.bc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit
  %storemerge74 = phi i64 [ %i.kj, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit ], [ %i.bb, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit ] ; 14 uses
  %i.bd = getelementptr [16 x i8], ptr %i.ay, i64 %storemerge74 ; 5 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 -16
  %i.bf = getelementptr i8, ptr %i.bd, i64 -8
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !25344, !noundef !56
  %i.bh = load i64, ptr %i.be, align 8, !alias.scope !25344, !noundef !56 ; 4 uses
  %i.bi = add i64 %i.bh, %i.bg
  %i.bj = icmp eq i64 %i.bi, %1
  br i1 %i.bj, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.bk = getelementptr i8, ptr %i.bd, i64 -32
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !25344, !noundef !56 ; 3 uses
  %.not.i43 = icmp ugt i64 %i.bl, %i.bh
  br i1 %.not.i43, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.not14.i = icmp eq i64 %storemerge74, 2
  br i1 %.not14.i, label %._crit_edge, label %bb.r

bb.p:                                             ; preds = %bb.n, %.lr.ph
  %.not17.i = icmp eq i64 %storemerge74, 2
  br i1 %.not17.i, label %bb.t, label %.thread.i

bb.q:                                             ; preds = %bb.r
  %i.bm = icmp samesign ugt i64 %storemerge74, 3
  br i1 %i.bm, label %bb.s, label %._crit_edge

bb.r:                                             ; preds = %bb.o
  %i.bn = getelementptr i8, ptr %i.bd, i64 -48
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !25344, !noundef !56 ; 2 uses
  %i.bp = add i64 %i.bl, %i.bh
  %.not15.i = icmp ugt i64 %i.bo, %i.bp
  br i1 %.not15.i, label %bb.q, label %.thread.i

bb.s:                                             ; preds = %bb.q
  %i.bq = getelementptr i8, ptr %i.bd, i64 -64
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !25344, !noundef !56
  %i.bs = add i64 %i.bo, %i.bl
  %.not16.i = icmp ugt i64 %i.br, %i.bs
  br i1 %.not16.i, label %._crit_edge, label %.thread.i

bb.t:                                             ; preds = %.thread.i, %bb.p
  %i.bt = add nsw i64 %storemerge74, -2
  br label %bb.u

.thread.i:                                        ; preds = %bb.p, %bb.s, %bb.r
  %i.bu = add nsw i64 %storemerge74, -3           ; 2 uses
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !25344, !noundef !56
  %i.bx = icmp ult i64 %i.bw, %i.bh
  br i1 %i.bx, label %bb.u, label %bb.t

._crit_edge:                                      ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit, %bb.o, %bb.q, %bb.s, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit
  %i.by = phi i64 [ %i.bb, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit ], [ %i.kj, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit ], [ 2, %bb.o ], [ 3, %bb.q ], [ %storemerge74, %bb.s ]
  %i.bz = icmp ult i64 %.sroa.0.0.i37, %1
  br i1 %i.bz, label %bb.b, label %.loopexit22

bb.u:                                             ; preds = %bb.t, %.thread.i
  %.sroa.4.0.i41.ph = phi i64 [ %i.bu, %.thread.i ], [ %i.bt, %bb.t ] ; 5 uses
  %i.ca = icmp ult i64 %.sroa.4.0.i41.ph, %storemerge74
  br i1 %i.ca, label %bb.v, label %.invoke230

bb.v:                                             ; preds = %bb.u
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %.sroa.4.0.i41.ph ; 4 uses
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !56 ; 7 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !noundef !56 ; 5 uses
  %i.cf = add nuw nsw i64 %.sroa.4.0.i41.ph, 1    ; 3 uses
  %i.cg = icmp ult i64 %i.cf, %storemerge74
  br i1 %i.cg, label %bb.w, label %.invoke230

bb.w:                                             ; preds = %bb.v
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.cf ; 3 uses
  %i.ci = load i64, ptr %i.ch, align 8, !noundef !56 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !noundef !56
  %i.cl = add i64 %i.ck, %i.ci                    ; 5 uses
  %i.cm = icmp ult i64 %i.cl, %i.ce
  %.not26 = icmp ugt i64 %i.cl, %1
  %or.cond28 = or i1 %i.cm, %.not26
  br i1 %or.cond28, label %.invoke, label %bb.x, !prof !76

.invoke230:                                       ; preds = %bb.v, %bb.u
  %i.cn = phi i64 [ %.sroa.4.0.i41.ph, %bb.u ], [ %i.cf, %bb.v ]
  %i.co = phi ptr [ @575, %bb.u ], [ @576, %bb.v ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.cn, i64 noundef %storemerge74, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.co) #61
          to label %.cont231 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont231:                                         ; preds = %.invoke230
  unreachable

.invoke:                                          ; preds = %bb.k, %bb.w
  %i.cp = phi i64 [ %i.ce, %bb.w ], [ %.sroa.02.078, %bb.k ]
  %i.cq = phi i64 [ %i.cl, %bb.w ], [ %i.y, %bb.k ]
  %i.cr = phi ptr [ @577, %bb.w ], [ @578, %bb.k ]
  invoke void @_RNvNtNtCslwFuT2d6ECx_4core5slice5index16slice_index_fail(i64 noundef %i.cp, i64 noundef %i.cq, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cr) #61
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.cs = sub nuw i64 %i.cl, %i.ce                ; 3 uses
  %.idx = shl i64 %i.ce, 2                        ; 2 uses
  %i.ct = getelementptr i8, ptr %0, i64 %.idx     ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25345)
  %.idx29.i = shl i64 %i.cc, 2                    ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.idx29.i ; 5 uses
  %.idx82 = shl nuw nsw i64 %i.cl, 2              ; 2 uses
end_hunk_1
begin_hunk_2_@_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort10merge_sortNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBN_INtB4_16ParallelSliceMutBN_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2y_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtBP_5GraphuuNtBR_10UndirectedENCINvB3z_40greedy_edge_color_with_coloring_strategyRINtNtBP_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6U_5types3any5PyAnyEB6P_B58_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6U_3err5PyErrEs1_0B92_E0E0EB85_:bb.a
  %i.hs = shufflevector <16 x i8> %i.hr, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ak

bb.ak:                                            ; preds = %bb.am, %bb.aj
  %.sroa.011.0.i.i.i.i.i = phi i64 [ 0, %bb.aj ], [ %i.ij, %bb.am ]
  %.pn.i.i.i.i = phi i64 [ %i.ho, %bb.aj ], [ %i.ik, %bb.am ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.eg ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i = load <16 x i8>, ptr %i.ht, align 1, !noalias !25360 ; 2 uses
  %i.hu = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, %i.hs
  %i.hv = bitcast <16 x i1> %i.hu to i16          ; 2 uses
  %.not.i.not30.i.i.i.i = icmp eq i16 %i.hv, 0
  br i1 %.not.i.not30.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ak, %bb.al
  %.sroa.05.0.i31.i.i.i.i = phi i16 [ %i.ii, %bb.al ], [ %i.hv, %bb.ak ] ; 3 uses
  %i.hw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i.i, i1 true)
  %i.hx = zext nneg i16 %i.hw to i64
  %i.hy = add i64 %.sroa.01.0.i.i.i.i.i, %i.hx
  %.fr173 = freeze i64 %i.hy
  %i.hz = and i64 %.fr173, %i.eg
  %i.ia = sub i64 0, %i.hz
  %i.ib = getelementptr [16 x i8], ptr %i.eh, i64 %i.ia ; 2 uses
  %i.ic = getelementptr inbounds i8, ptr %i.ib, i64 -16
  %.val2.i.i.i.i.i = load i32, ptr %i.ic, align 4, !noalias !25361, !noundef !56
  %i.id = icmp eq i32 %.sroa.0.0.val.i, %.val2.i.i.i.i.i
  br i1 %i.id, label %_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphuuNtB1u_10UndirectedENCINvB4_40greedy_edge_color_with_coloring_strategyRINtNtB1s_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Y_5types3any5PyAnyEB3T_B2b_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB3Y_3err5PyErrEs1_0B66_E0B59_.exit.i, label %bb.al, !prof !66

._crit_edge.i.i.i.i:                              ; preds = %bb.al, %bb.ak
  %i.ie = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, splat (i8 -1)
  %i.if = bitcast <16 x i1> %i.ie to i16
  %i.ig = icmp eq i16 %i.if, 0
  br i1 %i.ig, label %bb.am, label %_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphuuNtB1u_10UndirectedENCINvB4_40greedy_edge_color_with_coloring_strategyRINtNtB1s_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Y_5types3any5PyAnyEB3T_B2b_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB3Y_3err5PyErrEs1_0B66_E0B59_.exit.i, !prof !60

bb.al:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ih = add i16 %.sroa.05.0.i31.i.i.i.i, -1
  %i.ii = and i16 %i.ih, %.sroa.05.0.i31.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.ii, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.am:                                            ; preds = %._crit_edge.i.i.i.i
  %i.ij = add i64 %.sroa.011.0.i.i.i.i.i, 16      ; 2 uses
  %i.ik = add i64 %.sroa.01.0.i.i.i.i.i, %i.ij
  br label %bb.ak

_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphuuNtB1u_10UndirectedENCINvB4_40greedy_edge_color_with_coloring_strategyRINtNtB1s_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Y_5types3any5PyAnyEB3T_B2b_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB3Y_3err5PyErrEs1_0B66_E0B59_.exit.i: ; preds = %._crit_edge.i.i.i.i, %.lr.ph.i.i.i.i
  %.fr = phi ptr [ %i.ib, %.lr.ph.i.i.i.i ], [ null, %._crit_edge.i.i.i.i ] ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %.fr, null        ; 2 uses
  %i.il = getelementptr inbounds i8, ptr %.fr, i64 -8
  %i.im = zext i32 %.val31.i to i64
  %i.in = xor i64 %.val.i.i.i, %i.im
  %i.io = zext i64 %i.in to i128
  %i.ip = mul nuw i128 %i.dt, %i.io               ; 2 uses
  %i.iq = lshr i128 %i.ip, 64
  %i.ir = xor i128 %i.iq, %i.ip
  %i.is = trunc i128 %i.ir to i64                 ; 2 uses
  %i.it = lshr i64 %i.is, 57
  %i.iu = trunc nuw nsw i64 %i.it to i8
  %i.iv = insertelement <16 x i8> poison, i8 %i.iu, i64 0
  %i.iw = shufflevector <16 x i8> %i.iv, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.an

bb.an:                                            ; preds = %bb.ap, %_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphuuNtB1u_10UndirectedENCINvB4_40greedy_edge_color_with_coloring_strategyRINtNtB1s_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Y_5types3any5PyAnyEB3T_B2b_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB3Y_3err5PyErrEs1_0B66_E0B59_.exit.i
  %.sroa.011.0.i.i.i.i7.i = phi i64 [ 0, %_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphuuNtB1u_10UndirectedENCINvB4_40greedy_edge_color_with_coloring_strategyRINtNtB1s_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Y_5types3any5PyAnyEB3T_B2b_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB3Y_3err5PyErrEs1_0B66_E0B59_.exit.i ], [ %i.jn, %bb.ap ]
  %.pn.i.i.i8.i = phi i64 [ %i.is, %_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphuuNtB1u_10UndirectedENCINvB4_40greedy_edge_color_with_coloring_strategyRINtNtB1s_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Y_5types3any5PyAnyEB3T_B2b_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB3Y_3err5PyErrEs1_0B66_E0B59_.exit.i ], [ %i.jo, %bb.ap ]
  %.sroa.01.0.i.i.i.i9.i = and i64 %.pn.i.i.i8.i, %i.eg ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.sroa.01.0.i.i.i.i9.i
  %.sroa.0.0.copyload.i24.i.i.i10.i = load <16 x i8>, ptr %i.ix, align 1, !noalias !25362 ; 2 uses
  %i.iy = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i10.i, %i.iw
  %i.iz = bitcast <16 x i1> %i.iy to i16          ; 2 uses
  %.not.i.not30.i.i.i11.i = icmp eq i16 %i.iz, 0
  br i1 %.not.i.not30.i.i.i11.i, label %._crit_edge.i.i.i16.i, label %.lr.ph.i.i.i12.i

.lr.ph.i.i.i12.i:                                 ; preds = %bb.an, %bb.ao
  %.sroa.05.0.i31.i.i.i13.i = phi i16 [ %i.jm, %bb.ao ], [ %i.iz, %bb.an ] ; 3 uses
  %i.ja = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i13.i, i1 true)
  %i.jb = zext nneg i16 %i.ja to i64
  %i.jc = add i64 %.sroa.01.0.i.i.i.i9.i, %i.jb
  %i.jd = and i64 %i.jc, %i.eg
  %i.je = sub nsw i64 0, %i.jd
  %i.jf = getelementptr inbounds [16 x i8], ptr %i.eh, i64 %i.je ; 2 uses
  %i.jg = getelementptr inbounds i8, ptr %i.jf, i64 -16
  %.val2.i.i.i.i14.i = load i32, ptr %i.jg, align 4, !noalias !25363, !noundef !56
  %i.jh = icmp eq i32 %.val31.i, %.val2.i.i.i.i14.i
  br i1 %i.jh, label %bb.aq, label %bb.ao, !prof !66

._crit_edge.i.i.i16.i:                            ; preds = %bb.ao, %bb.an
  %i.ji = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i10.i, splat (i8 -1)
  %i.jj = bitcast <16 x i1> %i.ji to i16
  %i.jk = icmp eq i16 %i.jj, 0
  br i1 %i.jk, label %bb.ap, label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_.exit, !prof !60

bb.ao:                                            ; preds = %.lr.ph.i.i.i12.i
  %i.jl = add i16 %.sroa.05.0.i31.i.i.i13.i, -1
  %i.jm = and i16 %i.jl, %.sroa.05.0.i31.i.i.i13.i ; 2 uses
  %.not.i.not.i.i.i15.i = icmp eq i16 %i.jm, 0
  br i1 %.not.i.not.i.i.i15.i, label %._crit_edge.i.i.i16.i, label %.lr.ph.i.i.i12.i

bb.ap:                                            ; preds = %._crit_edge.i.i.i16.i
  %i.jn = add i64 %.sroa.011.0.i.i.i.i7.i, 16     ; 2 uses
  %i.jo = add i64 %.sroa.01.0.i.i.i.i9.i, %i.jn
  br label %bb.an

bb.aq:                                            ; preds = %.lr.ph.i.i.i12.i
  br i1 %.not.i.i.i.not, label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_.exit.thread, label %.split14

.split14:                                         ; preds = %bb.aq
  %i.jp = getelementptr inbounds i8, ptr %i.jf, i64 -8
  %.val.i.i.i.i.i = load i64, ptr %i.jp, align 8, !noalias !25345, !noundef !56
  %.val1.i.i.i.i.i = load i64, ptr %i.il, align 8, !noalias !25345, !noundef !56
  %i.jq = icmp ult i64 %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  br i1 %i.jq, label %bb.ar, label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_.exit.thread

_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_.exit: ; preds = %._crit_edge.i.i.i16.i
  br i1 %.not.i.i.i.not, label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %.split14, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_.exit
  br label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_.exit.thread

_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_.exit.thread: ; preds = %bb.aq, %.split14, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_.exit, %bb.ar
  %.sroa.0.0.i.i.i.i13 = phi i1 [ true, %bb.ar ], [ false, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_.exit ], [ false, %.split14 ], [ false, %bb.aq ] ; 2 uses
  %i.jr = phi i32 [ %.sroa.0.0.val.i, %bb.ar ], [ %.val31.i, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_.exit ], [ %.val31.i, %.split14 ], [ %.val31.i, %bb.aq ]
  store i32 %i.jr, ptr %.sroa.18.318.i, align 4, !alias.scope !25345
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.18.318.i, i64 4 ; 2 uses
  %i.jt = zext i1 %.sroa.0.0.i.i.i.i13 to i64
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.020.i, i64 %i.jt ; 2 uses
  %i.jv = xor i1 %.sroa.0.0.i.i.i.i13, true
  %i.jw = zext i1 %i.jv to i64
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.219.i, i64 %i.jw ; 3 uses
  %i.jy = icmp ult ptr %i.jx, %i.dm
  %i.jz = icmp ult ptr %i.ju, %i.cv
  %or.cond30.i = select i1 %i.jy, i1 %i.jz, i1 false
  br i1 %or.cond30.i, label %bb.aj, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_.exit.thread, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_.exit.thread.us, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_.exit75.thread, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_.exit75.thread.us, %.lr.ph.i45.split.us.split.us, %bb.z, %bb.y
  %.sroa.18.1.i = phi ptr [ %i.ea, %.lr.ph.i45.split.us.split.us ], [ %i.cu, %bb.y ], [ %i.ct, %bb.z ], [ %i.eb, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_.exit.thread.us ], [ %i.hc, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_.exit75.thread ], [ %i.cu, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_.exit75.thread.us ], [ %i.js, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_.exit.thread ]
  %.sroa.10.1.i = phi ptr [ %i.dm, %.lr.ph.i45.split.us.split.us ], [ %i.cy, %bb.y ], [ %i.dm, %bb.z ], [ %i.dm, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_.exit.thread.us ], [ %i.hb, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_.exit75.thread ], [ %i.de, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_.exit75.thread.us ], [ %i.dm, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_.exit.thread ]
  %.sroa.0.015.i = phi ptr [ %i.e, %.lr.ph.i45.split.us.split.us ], [ %2, %bb.y ], [ %2, %bb.z ], [ %i.ec, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_.exit.thread.us ], [ %2, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_.exit75.thread ], [ %2, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_.exit75.thread.us ], [ %i.jx, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_color0NtNtB6s_3err5PyErrEs1_0B8A_E0E0B7D_.exit.thread ] ; 2 uses
  %i.ka = ptrtoint ptr %.sroa.10.1.i to i64
  %i.kb = ptrtoint ptr %.sroa.0.015.i to i64
  %i.kc = sub i64 %i.ka, %i.kb
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.sroa.18.1.i, ptr align 4 %.sroa.0.015.i, i64 %i.kc, i1 false), !noalias !25364
  %i.kd = add i64 %i.ci, %i.cc
  store i64 %i.kd, ptr %i.ch, align 8
  store i64 %i.ce, ptr %i.cj, align 8
  %i.ke = icmp samesign ult i64 %storemerge74, 576460752303423488
  tail call void @llvm.assume(i1 %i.ke)
  %i.kf = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.kg = xor i64 %.sroa.4.0.i41.ph, -1
  %i.kh = add nsw i64 %storemerge74, %i.kg
  %i.ki = shl nuw nsw i64 %i.kh, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cb, ptr nonnull align 8 %i.kf, i64 %i.ki, i1 false), !noalias !25365
  %i.kj = add nsw i64 %storemerge74, -1           ; 3 uses
  store i64 %i.kj, ptr %i.d, align 8
  %i.kk = icmp samesign ugt i64 %storemerge74, 2
  br i1 %i.kk, label %.lr.ph, label %._crit_edge

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit36: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i35, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp291
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort10merge_sortNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBN_INtB4_16ParallelSliceMutBN_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2y_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtBP_5GraphuuNtBR_10UndirectedENCINvB3z_40greedy_edge_color_with_coloring_strategyRINtNtBP_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6U_5types3any5PyAnyEB6P_B58_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0EB85_(ptr noalias nofree noundef nonnull align 4 captures(address) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noundef %2, ptr nofree readonly captures(none) %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i64 0, ptr %i.d, align 8
  %.not81 = icmp eq i64 %1, 0
  br i1 %.not81, label %.loopexit22, label %.lr.ph80

.lr.ph80:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = xor i64 %i.a, -1
  %i.g = add i64 %i.a, 4
  br label %bb.b

.loopexit22:                                      ; preds = %._crit_edge, %bb.a, %bb.f
  %.sroa.0.0 = phi i8 [ %., %bb.f ], [ 2, %bb.a ], [ 2, %._crit_edge ]
  %.val30 = load i64, ptr %i.b, align 8           ; 2 uses
  %i.h = icmp eq i64 %.val30, 0
  br i1 %i.h, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i: ; preds = %.loopexit22
  %.val31 = load ptr, ptr %i.c, align 8, !nonnull !56, !noundef !56
  %i.i = shl nuw i64 %.val30, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val31, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %.loopexit22, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i8 %.sroa.0.0

bb.b:                                             ; preds = %.lr.ph80, %._crit_edge
  %i.j = phi ptr [ inttoptr (i64 8 to ptr), %.lr.ph80 ], [ %i.ay, %._crit_edge ]
  %i.k = phi i64 [ 0, %.lr.ph80 ], [ %i.by, %._crit_edge ] ; 3 uses
  %.sroa.02.078 = phi i64 [ 0, %.lr.ph80 ], [ %.sroa.0.0.i37, %._crit_edge ] ; 10 uses
  %i.l = sub nuw nsw i64 %1, %.sroa.02.078        ; 7 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.02.078 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25436)
  %i.n = icmp samesign ult i64 %i.l, 2
  br i1 %i.n, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val17.i = load i32, ptr %i.o, align 4, !alias.scope !25436 ; 3 uses
  %.val18.i = load i32, ptr %i.m, align 4, !alias.scope !25436
  %i.p = tail call fastcc noundef zeroext i1 @_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_(ptr nonnull readonly %.0.val, i32 %.val17.i, i32 %.val18.i) #64, !noalias !25436
  %.not11.i = icmp eq i64 %i.l, 2                 ; 2 uses
  br i1 %i.p, label %.preheader.i, label %.preheader1.i

.preheader1.i:                                    ; preds = %bb.c
  br i1 %.not11.i, label %.loopexit, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.c
  br i1 %.not11.i, label %.loopexit, label %.lr.ph7.i

.lr.ph.i:                                         ; preds = %.preheader1.i, %bb.d
  %.val15.i = phi i32 [ %.val14.i, %bb.d ], [ %.val17.i, %.preheader1.i ]
  %.sroa.01.03.i = phi i64 [ %i.s, %bb.d ], [ 2, %.preheader1.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.01.03.i
  %.val14.i = load i32, ptr %i.q, align 4, !alias.scope !25436 ; 2 uses
  %i.r = tail call fastcc noundef zeroext i1 @_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_(ptr nonnull readonly %.0.val, i32 %.val14.i, i32 %.val15.i) #64, !noalias !25436
  br i1 %i.r, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.s = add nuw nsw i64 %.sroa.01.03.i, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.s, %i.l
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph7.i:                                        ; preds = %.preheader.i, %bb.e
  %.val12.i = phi i32 [ %.val11.i, %bb.e ], [ %.val17.i, %.preheader.i ]
  %.sroa.01.16.i = phi i64 [ %i.v, %bb.e ], [ 2, %.preheader.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.01.16.i
  %.val11.i = load i32, ptr %i.t, align 4, !alias.scope !25436 ; 2 uses
  %i.u = tail call fastcc noundef zeroext i1 @_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_(ptr nonnull readonly %.0.val, i32 %.val11.i, i32 %.val12.i) #64, !noalias !25436
  br i1 %i.u, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %.lr.ph7.i
  %i.v = add nuw nsw i64 %.sroa.01.16.i, 1        ; 2 uses
  %exitcond14.not.i = icmp eq i64 %i.v, %i.l
  br i1 %exitcond14.not.i, label %.loopexit, label %.lr.ph7.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.m, %bb.j, %.invoke230, %.invoke, %bb.h
  %lpad.loopexit.split-lp291 = landingpad { ptr, i32 }
          cleanup
  %.val = load i64, ptr %i.b, align 8             ; 2 uses
  %i.w = icmp eq i64 %.val, 0
  br i1 %i.w, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit36, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i35

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i35: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val29 = load ptr, ptr %i.c, align 8, !nonnull !56, !noundef !56
  %i.x = shl nuw i64 %.val, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val29, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) 8) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit36

.loopexit:                                        ; preds = %bb.d, %.lr.ph.i, %bb.e, %.lr.ph7.i, %.preheader.i, %.preheader1.i, %bb.b
  %.sroa.4.0.i = phi i1 [ false, %bb.b ], [ true, %.preheader.i ], [ true, %bb.e ], [ false, %.preheader1.i ], [ true, %.lr.ph7.i ], [ false, %.lr.ph.i ], [ false, %bb.d ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %i.l, %bb.b ], [ 2, %.preheader.i ], [ %i.l, %bb.e ], [ 2, %.preheader1.i ], [ %.sroa.01.16.i, %.lr.ph7.i ], [ %i.l, %bb.d ], [ %.sroa.01.03.i, %.lr.ph.i ] ; 7 uses
  %i.y = add i64 %.sroa.0.0.i, %.sroa.02.078      ; 8 uses
  %i.z = icmp eq i64 %.sroa.02.078, 0
  %i.aa = icmp eq i64 %i.y, %1
  %or.cond = and i1 %i.z, %i.aa
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.loopexit
  %. = zext i1 %.sroa.4.0.i to i8
  br label %.loopexit22

bb.g:                                             ; preds = %.loopexit
  br i1 %.sroa.4.0.i, label %bb.k, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit

_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i, %middle.block, %bb.l, %bb.g
  %3 = icmp uge i64 %i.y, %.sroa.02.078
  %4 = icmp ule i64 %i.y, %1
  %or.cond.i = and i1 %3, %4
  br i1 %or.cond.i, label %bb.i, label %bb.h, !prof !109

bb.h:                                             ; preds = %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @586, i64 noundef 44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @587) #60
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit
  %i.ab = icmp samesign ult i64 %.sroa.0.0.i, 10
  %i.ac = icmp samesign ult i64 %i.y, %1
  %or.cond3.i = and i1 %i.ab, %i.ac
  br i1 %or.cond3.i, label %bb.j, label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2I_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtBZ_5GraphuuNtB11_10UndirectedENCINvB3J_40greedy_edge_color_with_coloring_strategyRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB75_5types3any5PyAnyEB70_B5i_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0EB8g_.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = add nuw nsw i64 %.sroa.02.078, 10
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 range(i64 0, 2305843009213693952) %1) ; 2 uses
  %i.af = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 1)
  %i.ag = sub i64 %i.ae, %.sroa.02.078            ; 2 uses
  invoke fastcc void @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort25insertion_sort_shift_leftNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSB12_INtB4_16ParallelSliceMutB12_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2P_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB14_5GraphuuNtB16_10UndirectedENCINvB3Q_40greedy_edge_color_with_coloring_strategyRINtNtB14_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7e_5types3any5PyAnyEB79_B5q_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0EB8p_(ptr noalias nofree noundef nonnull align 4 %i.m, i64 noundef %i.ag, i64 noundef %i.af, ptr readonly %.0.val) #62
          to label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2I_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtBZ_5GraphuuNtB11_10UndirectedENCINvB3J_40greedy_edge_color_with_coloring_strategyRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB75_5types3any5PyAnyEB70_B5i_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0EB8g_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.g
  %5 = icmp ult i64 %i.y, %.sroa.02.078
  %.not = icmp ugt i64 %i.y, %1
  %or.cond27 = or i1 %5, %.not
  br i1 %or.cond27, label %.invoke, label %bb.l, !prof !76

bb.l:                                             ; preds = %bb.k
  %i.ah = lshr i64 %.sroa.0.0.i, 1                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25438)
  %.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i: ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.0.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %.sroa.0.0.i, 16
  br i1 %min.iters.check, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i
  %n.vec = and i64 %i.ah, 4611686018427387896     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aj = xor i64 %index, -1
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index ; 3 uses
  %i.al = getelementptr [4 x i8], ptr %i.ai, i64 %i.aj ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ak, align 4, !alias.scope !25437
  %wide.load277 = load <4 x i32>, ptr %i.am, align 4, !alias.scope !25437
  %i.an = getelementptr i8, ptr %i.al, i64 -12    ; 2 uses
  %i.ao = getelementptr i8, ptr %i.al, i64 -28    ; 2 uses
  %wide.load278 = load <4 x i32>, ptr %i.an, align 4, !alias.scope !25438
  %wide.load279 = load <4 x i32>, ptr %i.ao, align 4, !alias.scope !25438
  %reverse = shufflevector <4 x i32> %wide.load278, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse280 = shufflevector <4 x i32> %wide.load279, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %i.ak, align 4, !alias.scope !25437
  store <4 x i32> %reverse280, ptr %i.am, align 4, !alias.scope !25437
  %reverse281 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse282 = shufflevector <4 x i32> %wide.load277, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse281, ptr %i.an, align 4, !alias.scope !25438
  store <4 x i32> %reverse282, ptr %i.ao, align 4, !alias.scope !25438
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !25371

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i, %middle.block
  %.sroa.0.016.i.ph = phi i64 [ 0, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i
  %.sroa.0.016.i = phi i64 [ %i.av, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i ], [ %.sroa.0.016.i.ph, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader ] ; 3 uses
  %i.aq = xor i64 %.sroa.0.016.i, -1
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.016.i ; 2 uses
  %i.as = getelementptr [4 x i8], ptr %i.ai, i64 %i.aq ; 2 uses
  %i.at = load i32, ptr %i.ar, align 4, !alias.scope !25437, !noundef !56
  %i.au = load i32, ptr %i.as, align 4, !alias.scope !25438
  store i32 %i.au, ptr %i.ar, align 4, !alias.scope !25437
  store i32 %i.at, ptr %i.as, align 4, !alias.scope !25438
  %i.av = add nuw nsw i64 %.sroa.0.016.i, 1       ; 2 uses
  %exitcond.not.i39 = icmp eq i64 %i.av, %i.ah
  br i1 %exitcond.not.i39, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i, !llvm.loop !25372

_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2I_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtBZ_5GraphuuNtB11_10UndirectedENCINvB3J_40greedy_edge_color_with_coloring_strategyRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB75_5types3any5PyAnyEB70_B5i_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0EB8g_.exit: ; preds = %bb.i, %bb.j
  %.pre-phi = phi i64 [ %i.ag, %bb.j ], [ %.sroa.0.0.i, %bb.i ]
  %.sroa.0.0.i37 = phi i64 [ %i.ae, %bb.j ], [ %i.y, %bb.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25439)
  %i.aw = load i64, ptr %i.b, align 8, !range !59, !alias.scope !25439, !noundef !56
  %i.ax = icmp eq i64 %i.k, %i.aw
  br i1 %i.ax, label %bb.m, label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit

bb.m:                                             ; preds = %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2I_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtBZ_5GraphuuNtB11_10UndirectedENCINvB3J_40greedy_edge_color_with_coloring_strategyRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB75_5types3any5PyAnyEB70_B5i_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0EB8g_.exit
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #62
          to label %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge: ; preds = %bb.m
  %.pre = load ptr, ptr %i.c, align 8, !alias.scope !25439
  br label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit

_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit: ; preds = %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2I_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtBZ_5GraphuuNtB11_10UndirectedENCINvB3J_40greedy_edge_color_with_coloring_strategyRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB75_5types3any5PyAnyEB70_B5i_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0EB8g_.exit
  %i.ay = phi ptr [ %.pre, %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge ], [ %i.j, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2I_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtBZ_5GraphuuNtB11_10UndirectedENCINvB3J_40greedy_edge_color_with_coloring_strategyRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB75_5types3any5PyAnyEB70_B5i_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0EB8g_.exit ] ; 6 uses
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.k ; 2 uses
  store i64 %.pre-phi, ptr %i.az, align 8, !noalias !25439
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %.sroa.02.078, ptr %i.ba, align 8, !noalias !25439
  %i.bb = add i64 %i.k, 1                         ; 4 uses
  store i64 %i.bb, ptr %i.d, align 8
  %i.bc = icmp samesign ugt i64 %i.bb, 1
  br i1 %i.bc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit
  %storemerge74 = phi i64 [ %i.kj, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit ], [ %i.bb, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit ] ; 14 uses
  %i.bd = getelementptr [16 x i8], ptr %i.ay, i64 %storemerge74 ; 5 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 -16
  %i.bf = getelementptr i8, ptr %i.bd, i64 -8
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !25440, !noundef !56
  %i.bh = load i64, ptr %i.be, align 8, !alias.scope !25440, !noundef !56 ; 4 uses
  %i.bi = add i64 %i.bh, %i.bg
  %i.bj = icmp eq i64 %i.bi, %1
  br i1 %i.bj, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.bk = getelementptr i8, ptr %i.bd, i64 -32
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !25440, !noundef !56 ; 3 uses
  %.not.i43 = icmp ugt i64 %i.bl, %i.bh
  br i1 %.not.i43, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.not14.i = icmp eq i64 %storemerge74, 2
  br i1 %.not14.i, label %._crit_edge, label %bb.r

bb.p:                                             ; preds = %bb.n, %.lr.ph
  %.not17.i = icmp eq i64 %storemerge74, 2
  br i1 %.not17.i, label %bb.t, label %.thread.i

bb.q:                                             ; preds = %bb.r
  %i.bm = icmp samesign ugt i64 %storemerge74, 3
  br i1 %i.bm, label %bb.s, label %._crit_edge

bb.r:                                             ; preds = %bb.o
  %i.bn = getelementptr i8, ptr %i.bd, i64 -48
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !25440, !noundef !56 ; 2 uses
  %i.bp = add i64 %i.bl, %i.bh
  %.not15.i = icmp ugt i64 %i.bo, %i.bp
  br i1 %.not15.i, label %bb.q, label %.thread.i

bb.s:                                             ; preds = %bb.q
  %i.bq = getelementptr i8, ptr %i.bd, i64 -64
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !25440, !noundef !56
  %i.bs = add i64 %i.bo, %i.bl
  %.not16.i = icmp ugt i64 %i.br, %i.bs
  br i1 %.not16.i, label %._crit_edge, label %.thread.i

bb.t:                                             ; preds = %.thread.i, %bb.p
  %i.bt = add nsw i64 %storemerge74, -2
  br label %bb.u

.thread.i:                                        ; preds = %bb.p, %bb.s, %bb.r
  %i.bu = add nsw i64 %storemerge74, -3           ; 2 uses
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !25440, !noundef !56
  %i.bx = icmp ult i64 %i.bw, %i.bh
  br i1 %i.bx, label %bb.u, label %bb.t

._crit_edge:                                      ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit, %bb.o, %bb.q, %bb.s, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit
  %i.by = phi i64 [ %i.bb, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit ], [ %i.kj, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit ], [ 2, %bb.o ], [ 3, %bb.q ], [ %storemerge74, %bb.s ]
  %i.bz = icmp ult i64 %.sroa.0.0.i37, %1
  br i1 %i.bz, label %bb.b, label %.loopexit22

bb.u:                                             ; preds = %bb.t, %.thread.i
  %.sroa.4.0.i41.ph = phi i64 [ %i.bu, %.thread.i ], [ %i.bt, %bb.t ] ; 5 uses
  %i.ca = icmp ult i64 %.sroa.4.0.i41.ph, %storemerge74
  br i1 %i.ca, label %bb.v, label %.invoke230

bb.v:                                             ; preds = %bb.u
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %.sroa.4.0.i41.ph ; 4 uses
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !56 ; 7 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !noundef !56 ; 5 uses
  %i.cf = add nuw nsw i64 %.sroa.4.0.i41.ph, 1    ; 3 uses
  %i.cg = icmp ult i64 %i.cf, %storemerge74
  br i1 %i.cg, label %bb.w, label %.invoke230

bb.w:                                             ; preds = %bb.v
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.cf ; 3 uses
  %i.ci = load i64, ptr %i.ch, align 8, !noundef !56 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !noundef !56
  %i.cl = add i64 %i.ck, %i.ci                    ; 5 uses
  %i.cm = icmp ult i64 %i.cl, %i.ce
  %.not26 = icmp ugt i64 %i.cl, %1
  %or.cond28 = or i1 %i.cm, %.not26
  br i1 %or.cond28, label %.invoke, label %bb.x, !prof !76

.invoke230:                                       ; preds = %bb.v, %bb.u
  %i.cn = phi i64 [ %.sroa.4.0.i41.ph, %bb.u ], [ %i.cf, %bb.v ]
  %i.co = phi ptr [ @575, %bb.u ], [ @576, %bb.v ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.cn, i64 noundef %storemerge74, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.co) #61
          to label %.cont231 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont231:                                         ; preds = %.invoke230
  unreachable

.invoke:                                          ; preds = %bb.k, %bb.w
  %i.cp = phi i64 [ %i.ce, %bb.w ], [ %.sroa.02.078, %bb.k ]
  %i.cq = phi i64 [ %i.cl, %bb.w ], [ %i.y, %bb.k ]
  %i.cr = phi ptr [ @577, %bb.w ], [ @578, %bb.k ]
  invoke void @_RNvNtNtCslwFuT2d6ECx_4core5slice5index16slice_index_fail(i64 noundef %i.cp, i64 noundef %i.cq, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cr) #61
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.cs = sub nuw i64 %i.cl, %i.ce                ; 3 uses
  %.idx = shl i64 %i.ce, 2                        ; 2 uses
  %i.ct = getelementptr i8, ptr %0, i64 %.idx     ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25441)
  %.idx29.i = shl i64 %i.cc, 2                    ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.idx29.i ; 5 uses
  %.idx82 = shl nuw nsw i64 %i.cl, 2              ; 2 uses
end_hunk_2
begin_hunk_3_@_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort10merge_sortNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBN_INtB4_16ParallelSliceMutBN_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2y_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtBP_5GraphuuNtBR_10UndirectedENCINvB3z_40greedy_edge_color_with_coloring_strategyRINtNtBP_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6U_5types3any5PyAnyEB6P_B58_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0EB85_:bb.a
  %i.hs = shufflevector <16 x i8> %i.hr, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ak

bb.ak:                                            ; preds = %bb.am, %bb.aj
  %.sroa.011.0.i.i.i.i.i = phi i64 [ 0, %bb.aj ], [ %i.ij, %bb.am ]
  %.pn.i.i.i.i = phi i64 [ %i.ho, %bb.aj ], [ %i.ik, %bb.am ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.eg ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i = load <16 x i8>, ptr %i.ht, align 1, !noalias !25456 ; 2 uses
  %i.hu = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, %i.hs
  %i.hv = bitcast <16 x i1> %i.hu to i16          ; 2 uses
  %.not.i.not30.i.i.i.i = icmp eq i16 %i.hv, 0
  br i1 %.not.i.not30.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ak, %bb.al
  %.sroa.05.0.i31.i.i.i.i = phi i16 [ %i.ii, %bb.al ], [ %i.hv, %bb.ak ] ; 3 uses
  %i.hw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i.i, i1 true)
  %i.hx = zext nneg i16 %i.hw to i64
  %i.hy = add i64 %.sroa.01.0.i.i.i.i.i, %i.hx
  %.fr173 = freeze i64 %i.hy
  %i.hz = and i64 %.fr173, %i.eg
  %i.ia = sub i64 0, %i.hz
  %i.ib = getelementptr [16 x i8], ptr %i.eh, i64 %i.ia ; 2 uses
  %i.ic = getelementptr inbounds i8, ptr %i.ib, i64 -16
  %.val2.i.i.i.i.i = load i32, ptr %i.ic, align 4, !noalias !25457, !noundef !56
  %i.id = icmp eq i32 %.sroa.0.0.val.i, %.val2.i.i.i.i.i
  br i1 %i.id, label %_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphuuNtB1u_10UndirectedENCINvB4_40greedy_edge_color_with_coloring_strategyRINtNtB1s_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Y_5types3any5PyAnyEB3T_B2b_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0B59_.exit.i, label %bb.al, !prof !66

._crit_edge.i.i.i.i:                              ; preds = %bb.al, %bb.ak
  %i.ie = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, splat (i8 -1)
  %i.if = bitcast <16 x i1> %i.ie to i16
  %i.ig = icmp eq i16 %i.if, 0
  br i1 %i.ig, label %bb.am, label %_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphuuNtB1u_10UndirectedENCINvB4_40greedy_edge_color_with_coloring_strategyRINtNtB1s_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Y_5types3any5PyAnyEB3T_B2b_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0B59_.exit.i, !prof !60

bb.al:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ih = add i16 %.sroa.05.0.i31.i.i.i.i, -1
  %i.ii = and i16 %i.ih, %.sroa.05.0.i31.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.ii, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.am:                                            ; preds = %._crit_edge.i.i.i.i
  %i.ij = add i64 %.sroa.011.0.i.i.i.i.i, 16      ; 2 uses
  %i.ik = add i64 %.sroa.01.0.i.i.i.i.i, %i.ij
  br label %bb.ak

_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphuuNtB1u_10UndirectedENCINvB4_40greedy_edge_color_with_coloring_strategyRINtNtB1s_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Y_5types3any5PyAnyEB3T_B2b_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0B59_.exit.i: ; preds = %._crit_edge.i.i.i.i, %.lr.ph.i.i.i.i
  %.fr = phi ptr [ %i.ib, %.lr.ph.i.i.i.i ], [ null, %._crit_edge.i.i.i.i ] ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %.fr, null        ; 2 uses
  %i.il = getelementptr inbounds i8, ptr %.fr, i64 -8
  %i.im = zext i32 %.val31.i to i64
  %i.in = xor i64 %.val.i.i.i, %i.im
  %i.io = zext i64 %i.in to i128
  %i.ip = mul nuw i128 %i.dt, %i.io               ; 2 uses
  %i.iq = lshr i128 %i.ip, 64
  %i.ir = xor i128 %i.iq, %i.ip
  %i.is = trunc i128 %i.ir to i64                 ; 2 uses
  %i.it = lshr i64 %i.is, 57
  %i.iu = trunc nuw nsw i64 %i.it to i8
  %i.iv = insertelement <16 x i8> poison, i8 %i.iu, i64 0
  %i.iw = shufflevector <16 x i8> %i.iv, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.an

bb.an:                                            ; preds = %bb.ap, %_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphuuNtB1u_10UndirectedENCINvB4_40greedy_edge_color_with_coloring_strategyRINtNtB1s_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Y_5types3any5PyAnyEB3T_B2b_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0B59_.exit.i
  %.sroa.011.0.i.i.i.i7.i = phi i64 [ 0, %_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphuuNtB1u_10UndirectedENCINvB4_40greedy_edge_color_with_coloring_strategyRINtNtB1s_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Y_5types3any5PyAnyEB3T_B2b_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0B59_.exit.i ], [ %i.jn, %bb.ap ]
  %.pn.i.i.i8.i = phi i64 [ %i.is, %_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtCs68Jln09rRqb_8petgraph10graph_impl5GraphuuNtB1u_10UndirectedENCINvB4_40greedy_edge_color_with_coloring_strategyRINtNtB1s_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3Y_5types3any5PyAnyEB3T_B2b_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0B59_.exit.i ], [ %i.jo, %bb.ap ]
  %.sroa.01.0.i.i.i.i9.i = and i64 %.pn.i.i.i8.i, %i.eg ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.sroa.01.0.i.i.i.i9.i
  %.sroa.0.0.copyload.i24.i.i.i10.i = load <16 x i8>, ptr %i.ix, align 1, !noalias !25458 ; 2 uses
  %i.iy = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i10.i, %i.iw
  %i.iz = bitcast <16 x i1> %i.iy to i16          ; 2 uses
  %.not.i.not30.i.i.i11.i = icmp eq i16 %i.iz, 0
  br i1 %.not.i.not30.i.i.i11.i, label %._crit_edge.i.i.i16.i, label %.lr.ph.i.i.i12.i

.lr.ph.i.i.i12.i:                                 ; preds = %bb.an, %bb.ao
  %.sroa.05.0.i31.i.i.i13.i = phi i16 [ %i.jm, %bb.ao ], [ %i.iz, %bb.an ] ; 3 uses
  %i.ja = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i13.i, i1 true)
  %i.jb = zext nneg i16 %i.ja to i64
  %i.jc = add i64 %.sroa.01.0.i.i.i.i9.i, %i.jb
  %i.jd = and i64 %i.jc, %i.eg
  %i.je = sub nsw i64 0, %i.jd
  %i.jf = getelementptr inbounds [16 x i8], ptr %i.eh, i64 %i.je ; 2 uses
  %i.jg = getelementptr inbounds i8, ptr %i.jf, i64 -16
  %.val2.i.i.i.i14.i = load i32, ptr %i.jg, align 4, !noalias !25459, !noundef !56
  %i.jh = icmp eq i32 %.val31.i, %.val2.i.i.i.i14.i
  br i1 %i.jh, label %bb.aq, label %bb.ao, !prof !66

._crit_edge.i.i.i16.i:                            ; preds = %bb.ao, %bb.an
  %i.ji = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i10.i, splat (i8 -1)
  %i.jj = bitcast <16 x i1> %i.ji to i16
  %i.jk = icmp eq i16 %i.jj, 0
  br i1 %i.jk, label %bb.ap, label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_.exit, !prof !60

bb.ao:                                            ; preds = %.lr.ph.i.i.i12.i
  %i.jl = add i16 %.sroa.05.0.i31.i.i.i13.i, -1
  %i.jm = and i16 %i.jl, %.sroa.05.0.i31.i.i.i13.i ; 2 uses
  %.not.i.not.i.i.i15.i = icmp eq i16 %i.jm, 0
  br i1 %.not.i.not.i.i.i15.i, label %._crit_edge.i.i.i16.i, label %.lr.ph.i.i.i12.i

bb.ap:                                            ; preds = %._crit_edge.i.i.i16.i
  %i.jn = add i64 %.sroa.011.0.i.i.i.i7.i, 16     ; 2 uses
  %i.jo = add i64 %.sroa.01.0.i.i.i.i9.i, %i.jn
  br label %bb.an

bb.aq:                                            ; preds = %.lr.ph.i.i.i12.i
  br i1 %.not.i.i.i.not, label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_.exit.thread, label %.split14

.split14:                                         ; preds = %bb.aq
  %i.jp = getelementptr inbounds i8, ptr %i.jf, i64 -8
  %.val.i.i.i.i.i = load i64, ptr %i.jp, align 8, !noalias !25441, !noundef !56
  %.val1.i.i.i.i.i = load i64, ptr %i.il, align 8, !noalias !25441, !noundef !56
  %i.jq = icmp ult i64 %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  br i1 %i.jq, label %bb.ar, label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_.exit.thread

_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_.exit: ; preds = %._crit_edge.i.i.i16.i
  br i1 %.not.i.i.i.not, label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %.split14, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_.exit
  br label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_.exit.thread

_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_.exit.thread: ; preds = %bb.aq, %.split14, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_.exit, %bb.ar
  %.sroa.0.0.i.i.i.i13 = phi i1 [ true, %bb.ar ], [ false, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_.exit ], [ false, %.split14 ], [ false, %bb.aq ] ; 2 uses
  %i.jr = phi i32 [ %.sroa.0.0.val.i, %bb.ar ], [ %.val31.i, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_.exit ], [ %.val31.i, %.split14 ], [ %.val31.i, %bb.aq ]
  store i32 %i.jr, ptr %.sroa.18.318.i, align 4, !alias.scope !25441
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.18.318.i, i64 4 ; 2 uses
  %i.jt = zext i1 %.sroa.0.0.i.i.i.i13 to i64
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.020.i, i64 %i.jt ; 2 uses
  %i.jv = xor i1 %.sroa.0.0.i.i.i.i13, true
  %i.jw = zext i1 %i.jv to i64
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.219.i, i64 %i.jw ; 3 uses
  %i.jy = icmp ult ptr %i.jx, %i.dm
  %i.jz = icmp ult ptr %i.ju, %i.cv
  %or.cond30.i = select i1 %i.jy, i1 %i.jz, i1 false
  br i1 %or.cond30.i, label %bb.aj, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_.exit.thread, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_.exit.thread.us, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_.exit75.thread, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_.exit75.thread.us, %.lr.ph.i45.split.us.split.us, %bb.z, %bb.y
  %.sroa.18.1.i = phi ptr [ %i.ea, %.lr.ph.i45.split.us.split.us ], [ %i.cu, %bb.y ], [ %i.ct, %bb.z ], [ %i.eb, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_.exit.thread.us ], [ %i.hc, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_.exit75.thread ], [ %i.cu, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_.exit75.thread.us ], [ %i.js, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_.exit.thread ]
  %.sroa.10.1.i = phi ptr [ %i.dm, %.lr.ph.i45.split.us.split.us ], [ %i.cy, %bb.y ], [ %i.dm, %bb.z ], [ %i.dm, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_.exit.thread.us ], [ %i.hb, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_.exit75.thread ], [ %i.de, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_.exit75.thread.us ], [ %i.dm, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_.exit.thread ]
  %.sroa.0.015.i = phi ptr [ %i.e, %.lr.ph.i45.split.us.split.us ], [ %2, %bb.y ], [ %2, %bb.z ], [ %i.ec, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_.exit.thread.us ], [ %2, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_.exit75.thread ], [ %2, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_.exit75.thread.us ], [ %i.jx, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtB8_5GraphuuNtBa_10UndirectedENCINvB37_40greedy_edge_color_with_coloring_strategyRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6s_5types3any5PyAnyEB6n_B4G_ENCNvNtCskcxRuJ53GpR_9rustworkx8coloring23graph_greedy_edge_colors_0zEs1_0zE0E0B7D_.exit.thread ] ; 2 uses
  %i.ka = ptrtoint ptr %.sroa.10.1.i to i64
  %i.kb = ptrtoint ptr %.sroa.0.015.i to i64
  %i.kc = sub i64 %i.ka, %i.kb
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.sroa.18.1.i, ptr align 4 %.sroa.0.015.i, i64 %i.kc, i1 false), !noalias !25460
  %i.kd = add i64 %i.ci, %i.cc
  store i64 %i.kd, ptr %i.ch, align 8
  store i64 %i.ce, ptr %i.cj, align 8
  %i.ke = icmp samesign ult i64 %storemerge74, 576460752303423488
  tail call void @llvm.assume(i1 %i.ke)
  %i.kf = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.kg = xor i64 %.sroa.4.0.i41.ph, -1
  %i.kh = add nsw i64 %storemerge74, %i.kg
  %i.ki = shl nuw nsw i64 %i.kh, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cb, ptr nonnull align 8 %i.kf, i64 %i.ki, i1 false), !noalias !25461
  %i.kj = add nsw i64 %storemerge74, -1           ; 3 uses
  store i64 %i.kj, ptr %i.d, align 8
  %i.kk = icmp samesign ugt i64 %storemerge74, 2
  br i1 %i.kk, label %.lr.ph, label %._crit_edge

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit36: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i35, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp291
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort10merge_sortNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBN_INtB4_16ParallelSliceMutBN_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2y_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtBP_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5y_5types3any5PyAnyEB5t_NtBR_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB5y_3err5PyErrE0E0EB6W_(ptr noalias nofree noundef nonnull align 4 captures(address) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noundef %2, ptr nofree readonly captures(none) %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i64 0, ptr %i.d, align 8
  %.not81 = icmp eq i64 %1, 0
  br i1 %.not81, label %.loopexit22, label %.lr.ph80

.lr.ph80:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = xor i64 %i.a, -1
  %i.g = add i64 %i.a, 4
  br label %bb.b

.loopexit22:                                      ; preds = %._crit_edge, %bb.a, %bb.f
  %.sroa.0.0 = phi i8 [ %., %bb.f ], [ 2, %bb.a ], [ 2, %._crit_edge ]
  %.val30 = load i64, ptr %i.b, align 8           ; 2 uses
  %i.h = icmp eq i64 %.val30, 0
  br i1 %i.h, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i: ; preds = %.loopexit22
  %.val31 = load ptr, ptr %i.c, align 8, !nonnull !56, !noundef !56
  %i.i = shl nuw i64 %.val30, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val31, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %.loopexit22, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i8 %.sroa.0.0

bb.b:                                             ; preds = %.lr.ph80, %._crit_edge
  %i.j = phi ptr [ inttoptr (i64 8 to ptr), %.lr.ph80 ], [ %i.ay, %._crit_edge ]
  %i.k = phi i64 [ 0, %.lr.ph80 ], [ %i.by, %._crit_edge ] ; 3 uses
  %.sroa.02.078 = phi i64 [ 0, %.lr.ph80 ], [ %.sroa.0.0.i37, %._crit_edge ] ; 10 uses
  %i.l = sub nuw nsw i64 %1, %.sroa.02.078        ; 7 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.02.078 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25532)
  %i.n = icmp samesign ult i64 %i.l, 2
  br i1 %i.n, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val17.i = load i32, ptr %i.o, align 4, !alias.scope !25532 ; 3 uses
  %.val18.i = load i32, ptr %i.m, align 4, !alias.scope !25532
  %i.p = tail call fastcc noundef zeroext i1 @_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_(ptr nonnull readonly %.0.val, i32 %.val17.i, i32 %.val18.i) #64, !noalias !25532
  %.not11.i = icmp eq i64 %i.l, 2                 ; 2 uses
  br i1 %i.p, label %.preheader.i, label %.preheader1.i

.preheader1.i:                                    ; preds = %bb.c
  br i1 %.not11.i, label %.loopexit, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.c
  br i1 %.not11.i, label %.loopexit, label %.lr.ph7.i

.lr.ph.i:                                         ; preds = %.preheader1.i, %bb.d
  %.val15.i = phi i32 [ %.val14.i, %bb.d ], [ %.val17.i, %.preheader1.i ]
  %.sroa.01.03.i = phi i64 [ %i.s, %bb.d ], [ 2, %.preheader1.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.01.03.i
  %.val14.i = load i32, ptr %i.q, align 4, !alias.scope !25532 ; 2 uses
  %i.r = tail call fastcc noundef zeroext i1 @_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_(ptr nonnull readonly %.0.val, i32 %.val14.i, i32 %.val15.i) #64, !noalias !25532
  br i1 %i.r, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.s = add nuw nsw i64 %.sroa.01.03.i, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.s, %i.l
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph7.i:                                        ; preds = %.preheader.i, %bb.e
  %.val12.i = phi i32 [ %.val11.i, %bb.e ], [ %.val17.i, %.preheader.i ]
  %.sroa.01.16.i = phi i64 [ %i.v, %bb.e ], [ 2, %.preheader.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.01.16.i
  %.val11.i = load i32, ptr %i.t, align 4, !alias.scope !25532 ; 2 uses
  %i.u = tail call fastcc noundef zeroext i1 @_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_(ptr nonnull readonly %.0.val, i32 %.val11.i, i32 %.val12.i) #64, !noalias !25532
  br i1 %i.u, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %.lr.ph7.i
  %i.v = add nuw nsw i64 %.sroa.01.16.i, 1        ; 2 uses
  %exitcond14.not.i = icmp eq i64 %i.v, %i.l
  br i1 %exitcond14.not.i, label %.loopexit, label %.lr.ph7.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.m, %bb.j, %.invoke230, %.invoke, %bb.h
  %lpad.loopexit.split-lp291 = landingpad { ptr, i32 }
          cleanup
  %.val = load i64, ptr %i.b, align 8             ; 2 uses
  %i.w = icmp eq i64 %.val, 0
  br i1 %i.w, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit36, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i35

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i35: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val29 = load ptr, ptr %i.c, align 8, !nonnull !56, !noundef !56
  %i.x = shl nuw i64 %.val, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val29, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) 8) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit36

.loopexit:                                        ; preds = %bb.d, %.lr.ph.i, %bb.e, %.lr.ph7.i, %.preheader.i, %.preheader1.i, %bb.b
  %.sroa.4.0.i = phi i1 [ false, %bb.b ], [ true, %.preheader.i ], [ true, %bb.e ], [ false, %.preheader1.i ], [ true, %.lr.ph7.i ], [ false, %.lr.ph.i ], [ false, %bb.d ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %i.l, %bb.b ], [ 2, %.preheader.i ], [ %i.l, %bb.e ], [ 2, %.preheader1.i ], [ %.sroa.01.16.i, %.lr.ph7.i ], [ %i.l, %bb.d ], [ %.sroa.01.03.i, %.lr.ph.i ] ; 7 uses
  %i.y = add i64 %.sroa.0.0.i, %.sroa.02.078      ; 8 uses
  %i.z = icmp eq i64 %.sroa.02.078, 0
  %i.aa = icmp eq i64 %i.y, %1
  %or.cond = and i1 %i.z, %i.aa
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.loopexit
  %. = zext i1 %.sroa.4.0.i to i8
  br label %.loopexit22

bb.g:                                             ; preds = %.loopexit
  br i1 %.sroa.4.0.i, label %bb.k, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit

_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i, %middle.block, %bb.l, %bb.g
  %3 = icmp uge i64 %i.y, %.sroa.02.078
  %4 = icmp ule i64 %i.y, %1
  %or.cond.i = and i1 %3, %4
  br i1 %or.cond.i, label %bb.i, label %bb.h, !prof !109

bb.h:                                             ; preds = %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @586, i64 noundef 44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @587) #60
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit
  %i.ab = icmp samesign ult i64 %.sroa.0.0.i, 10
  %i.ac = icmp samesign ult i64 %i.y, %1
  %or.cond3.i = and i1 %i.ab, %i.ac
  br i1 %or.cond3.i, label %bb.j, label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2I_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5I_5types3any5PyAnyEB5D_NtB11_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB5I_3err5PyErrE0E0EB77_.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = add nuw nsw i64 %.sroa.02.078, 10
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 range(i64 0, 2305843009213693952) %1) ; 2 uses
  %i.af = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 1)
  %i.ag = sub i64 %i.ae, %.sroa.02.078            ; 2 uses
  invoke fastcc void @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort25insertion_sort_shift_leftNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSB12_INtB4_16ParallelSliceMutB12_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2P_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB14_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5Q_5types3any5PyAnyEB5L_NtB16_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB5Q_3err5PyErrE0E0EB7f_(ptr noalias nofree noundef nonnull align 4 %i.m, i64 noundef %i.ag, i64 noundef %i.af, ptr readonly %.0.val) #62
          to label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2I_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5I_5types3any5PyAnyEB5D_NtB11_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB5I_3err5PyErrE0E0EB77_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.g
  %5 = icmp ult i64 %i.y, %.sroa.02.078
  %.not = icmp ugt i64 %i.y, %1
  %or.cond27 = or i1 %5, %.not
  br i1 %or.cond27, label %.invoke, label %bb.l, !prof !76

bb.l:                                             ; preds = %bb.k
  %i.ah = lshr i64 %.sroa.0.0.i, 1                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25533)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25534)
  %.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i: ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.0.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %.sroa.0.0.i, 16
  br i1 %min.iters.check, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i
  %n.vec = and i64 %i.ah, 4611686018427387896     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aj = xor i64 %index, -1
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index ; 3 uses
  %i.al = getelementptr [4 x i8], ptr %i.ai, i64 %i.aj ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ak, align 4, !alias.scope !25533
  %wide.load277 = load <4 x i32>, ptr %i.am, align 4, !alias.scope !25533
  %i.an = getelementptr i8, ptr %i.al, i64 -12    ; 2 uses
  %i.ao = getelementptr i8, ptr %i.al, i64 -28    ; 2 uses
  %wide.load278 = load <4 x i32>, ptr %i.an, align 4, !alias.scope !25534
  %wide.load279 = load <4 x i32>, ptr %i.ao, align 4, !alias.scope !25534
  %reverse = shufflevector <4 x i32> %wide.load278, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse280 = shufflevector <4 x i32> %wide.load279, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %i.ak, align 4, !alias.scope !25533
  store <4 x i32> %reverse280, ptr %i.am, align 4, !alias.scope !25533
  %reverse281 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse282 = shufflevector <4 x i32> %wide.load277, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse281, ptr %i.an, align 4, !alias.scope !25534
  store <4 x i32> %reverse282, ptr %i.ao, align 4, !alias.scope !25534
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !25467

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i, %middle.block
  %.sroa.0.016.i.ph = phi i64 [ 0, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i
  %.sroa.0.016.i = phi i64 [ %i.av, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i ], [ %.sroa.0.016.i.ph, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader ] ; 3 uses
  %i.aq = xor i64 %.sroa.0.016.i, -1
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.016.i ; 2 uses
  %i.as = getelementptr [4 x i8], ptr %i.ai, i64 %i.aq ; 2 uses
  %i.at = load i32, ptr %i.ar, align 4, !alias.scope !25533, !noundef !56
  %i.au = load i32, ptr %i.as, align 4, !alias.scope !25534
  store i32 %i.au, ptr %i.ar, align 4, !alias.scope !25533
  store i32 %i.at, ptr %i.as, align 4, !alias.scope !25534
  %i.av = add nuw nsw i64 %.sroa.0.016.i, 1       ; 2 uses
  %exitcond.not.i39 = icmp eq i64 %i.av, %i.ah
  br i1 %exitcond.not.i39, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i, !llvm.loop !25468

_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2I_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5I_5types3any5PyAnyEB5D_NtB11_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB5I_3err5PyErrE0E0EB77_.exit: ; preds = %bb.i, %bb.j
  %.pre-phi = phi i64 [ %i.ag, %bb.j ], [ %.sroa.0.0.i, %bb.i ]
  %.sroa.0.0.i37 = phi i64 [ %i.ae, %bb.j ], [ %i.y, %bb.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25535)
  %i.aw = load i64, ptr %i.b, align 8, !range !59, !alias.scope !25535, !noundef !56
  %i.ax = icmp eq i64 %i.k, %i.aw
  br i1 %i.ax, label %bb.m, label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit

bb.m:                                             ; preds = %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2I_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5I_5types3any5PyAnyEB5D_NtB11_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB5I_3err5PyErrE0E0EB77_.exit
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #62
          to label %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge: ; preds = %bb.m
  %.pre = load ptr, ptr %i.c, align 8, !alias.scope !25535
  br label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit

_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit: ; preds = %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2I_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5I_5types3any5PyAnyEB5D_NtB11_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB5I_3err5PyErrE0E0EB77_.exit
  %i.ay = phi ptr [ %.pre, %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge ], [ %i.j, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2I_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5I_5types3any5PyAnyEB5D_NtB11_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB5I_3err5PyErrE0E0EB77_.exit ] ; 6 uses
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.k ; 2 uses
  store i64 %.pre-phi, ptr %i.az, align 8, !noalias !25535
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %.sroa.02.078, ptr %i.ba, align 8, !noalias !25535
  %i.bb = add i64 %i.k, 1                         ; 4 uses
  store i64 %i.bb, ptr %i.d, align 8
  %i.bc = icmp samesign ugt i64 %i.bb, 1
  br i1 %i.bc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit
  %storemerge74 = phi i64 [ %i.kj, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit ], [ %i.bb, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit ] ; 14 uses
  %i.bd = getelementptr [16 x i8], ptr %i.ay, i64 %storemerge74 ; 5 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 -16
  %i.bf = getelementptr i8, ptr %i.bd, i64 -8
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !25536, !noundef !56
  %i.bh = load i64, ptr %i.be, align 8, !alias.scope !25536, !noundef !56 ; 4 uses
  %i.bi = add i64 %i.bh, %i.bg
  %i.bj = icmp eq i64 %i.bi, %1
  br i1 %i.bj, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.bk = getelementptr i8, ptr %i.bd, i64 -32
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !25536, !noundef !56 ; 3 uses
  %.not.i43 = icmp ugt i64 %i.bl, %i.bh
  br i1 %.not.i43, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.not14.i = icmp eq i64 %storemerge74, 2
  br i1 %.not14.i, label %._crit_edge, label %bb.r

bb.p:                                             ; preds = %bb.n, %.lr.ph
  %.not17.i = icmp eq i64 %storemerge74, 2
  br i1 %.not17.i, label %bb.t, label %.thread.i

bb.q:                                             ; preds = %bb.r
  %i.bm = icmp samesign ugt i64 %storemerge74, 3
  br i1 %i.bm, label %bb.s, label %._crit_edge

bb.r:                                             ; preds = %bb.o
  %i.bn = getelementptr i8, ptr %i.bd, i64 -48
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !25536, !noundef !56 ; 2 uses
  %i.bp = add i64 %i.bl, %i.bh
  %.not15.i = icmp ugt i64 %i.bo, %i.bp
  br i1 %.not15.i, label %bb.q, label %.thread.i

bb.s:                                             ; preds = %bb.q
  %i.bq = getelementptr i8, ptr %i.bd, i64 -64
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !25536, !noundef !56
  %i.bs = add i64 %i.bo, %i.bl
  %.not16.i = icmp ugt i64 %i.br, %i.bs
  br i1 %.not16.i, label %._crit_edge, label %.thread.i

bb.t:                                             ; preds = %.thread.i, %bb.p
  %i.bt = add nsw i64 %storemerge74, -2
  br label %bb.u

.thread.i:                                        ; preds = %bb.p, %bb.s, %bb.r
  %i.bu = add nsw i64 %storemerge74, -3           ; 2 uses
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !25536, !noundef !56
  %i.bx = icmp ult i64 %i.bw, %i.bh
  br i1 %i.bx, label %bb.u, label %bb.t

._crit_edge:                                      ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit, %bb.o, %bb.q, %bb.s, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit
  %i.by = phi i64 [ %i.bb, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit ], [ %i.kj, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit ], [ 2, %bb.o ], [ 3, %bb.q ], [ %storemerge74, %bb.s ]
  %i.bz = icmp ult i64 %.sroa.0.0.i37, %1
  br i1 %i.bz, label %bb.b, label %.loopexit22

bb.u:                                             ; preds = %bb.t, %.thread.i
  %.sroa.4.0.i41.ph = phi i64 [ %i.bu, %.thread.i ], [ %i.bt, %bb.t ] ; 5 uses
  %i.ca = icmp ult i64 %.sroa.4.0.i41.ph, %storemerge74
  br i1 %i.ca, label %bb.v, label %.invoke230

bb.v:                                             ; preds = %bb.u
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %.sroa.4.0.i41.ph ; 4 uses
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !56 ; 7 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !noundef !56 ; 5 uses
  %i.cf = add nuw nsw i64 %.sroa.4.0.i41.ph, 1    ; 3 uses
  %i.cg = icmp ult i64 %i.cf, %storemerge74
  br i1 %i.cg, label %bb.w, label %.invoke230

bb.w:                                             ; preds = %bb.v
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.cf ; 3 uses
  %i.ci = load i64, ptr %i.ch, align 8, !noundef !56 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !noundef !56
  %i.cl = add i64 %i.ck, %i.ci                    ; 5 uses
  %i.cm = icmp ult i64 %i.cl, %i.ce
  %.not26 = icmp ugt i64 %i.cl, %1
  %or.cond28 = or i1 %i.cm, %.not26
  br i1 %or.cond28, label %.invoke, label %bb.x, !prof !76

.invoke230:                                       ; preds = %bb.v, %bb.u
  %i.cn = phi i64 [ %.sroa.4.0.i41.ph, %bb.u ], [ %i.cf, %bb.v ]
  %i.co = phi ptr [ @575, %bb.u ], [ @576, %bb.v ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.cn, i64 noundef %storemerge74, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.co) #61
          to label %.cont231 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont231:                                         ; preds = %.invoke230
  unreachable

.invoke:                                          ; preds = %bb.k, %bb.w
  %i.cp = phi i64 [ %i.ce, %bb.w ], [ %.sroa.02.078, %bb.k ]
  %i.cq = phi i64 [ %i.cl, %bb.w ], [ %i.y, %bb.k ]
  %i.cr = phi ptr [ @577, %bb.w ], [ @578, %bb.k ]
  invoke void @_RNvNtNtCslwFuT2d6ECx_4core5slice5index16slice_index_fail(i64 noundef %i.cp, i64 noundef %i.cq, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cr) #61
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.cs = sub nuw i64 %i.cl, %i.ce                ; 3 uses
  %.idx = shl i64 %i.ce, 2                        ; 2 uses
  %i.ct = getelementptr i8, ptr %0, i64 %.idx     ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25537)
  %.idx29.i = shl i64 %i.cc, 2                    ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.idx29.i ; 5 uses
  %.idx82 = shl nuw nsw i64 %i.cl, 2              ; 2 uses
end_hunk_3
begin_hunk_4_@_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort10merge_sortNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBN_INtB4_16ParallelSliceMutBN_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2y_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtBP_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5y_5types3any5PyAnyEB5t_NtBR_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB5y_3err5PyErrE0E0EB6W_:bb.a
  %i.hs = shufflevector <16 x i8> %i.hr, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ak

bb.ak:                                            ; preds = %bb.am, %bb.aj
  %.sroa.011.0.i.i.i.i.i = phi i64 [ 0, %bb.aj ], [ %i.ij, %bb.am ]
  %.pn.i.i.i.i = phi i64 [ %i.ho, %bb.aj ], [ %i.ik, %bb.am ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.eg ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i = load <16 x i8>, ptr %i.ht, align 1, !noalias !25552 ; 2 uses
  %i.hu = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, %i.hs
  %i.hv = bitcast <16 x i1> %i.hu to i16          ; 2 uses
  %.not.i.not30.i.i.i.i = icmp eq i16 %i.hv, 0
  br i1 %.not.i.not30.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ak, %bb.al
  %.sroa.05.0.i31.i.i.i.i = phi i16 [ %i.ii, %bb.al ], [ %i.hv, %bb.ak ] ; 3 uses
  %i.hw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i.i, i1 true)
  %i.hx = zext nneg i16 %i.hw to i64
  %i.hy = add i64 %.sroa.01.0.i.i.i.i.i, %i.hx
  %.fr173 = freeze i64 %i.hy
  %i.hz = and i64 %.fr173, %i.eg
  %i.ia = sub i64 0, %i.hz
  %i.ib = getelementptr [16 x i8], ptr %i.eh, i64 %i.ia ; 2 uses
  %i.ic = getelementptr inbounds i8, ptr %i.ib, i64 -16
  %.val2.i.i.i.i.i = load i32, ptr %i.ic, align 4, !noalias !25553, !noundef !56
  %i.id = icmp eq i32 %.sroa.0.0.val.i, %.val2.i.i.i.i.i
  br i1 %i.id, label %_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2B_5types3any5PyAnyEB2w_NtB1w_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB2B_3err5PyErrE0B40_.exit.i, label %bb.al, !prof !66

._crit_edge.i.i.i.i:                              ; preds = %bb.al, %bb.ak
  %i.ie = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, splat (i8 -1)
  %i.if = bitcast <16 x i1> %i.ie to i16
  %i.ig = icmp eq i16 %i.if, 0
  br i1 %i.ig, label %bb.am, label %_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2B_5types3any5PyAnyEB2w_NtB1w_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB2B_3err5PyErrE0B40_.exit.i, !prof !60

bb.al:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ih = add i16 %.sroa.05.0.i31.i.i.i.i, -1
  %i.ii = and i16 %i.ih, %.sroa.05.0.i31.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.ii, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.am:                                            ; preds = %._crit_edge.i.i.i.i
  %i.ij = add i64 %.sroa.011.0.i.i.i.i.i, 16      ; 2 uses
  %i.ik = add i64 %.sroa.01.0.i.i.i.i.i, %i.ij
  br label %bb.ak

_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2B_5types3any5PyAnyEB2w_NtB1w_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB2B_3err5PyErrE0B40_.exit.i: ; preds = %._crit_edge.i.i.i.i, %.lr.ph.i.i.i.i
  %.fr = phi ptr [ %i.ib, %.lr.ph.i.i.i.i ], [ null, %._crit_edge.i.i.i.i ] ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %.fr, null        ; 2 uses
  %i.il = getelementptr inbounds i8, ptr %.fr, i64 -8
  %i.im = zext i32 %.val31.i to i64
  %i.in = xor i64 %.val.i.i.i, %i.im
  %i.io = zext i64 %i.in to i128
  %i.ip = mul nuw i128 %i.dt, %i.io               ; 2 uses
  %i.iq = lshr i128 %i.ip, 64
  %i.ir = xor i128 %i.iq, %i.ip
  %i.is = trunc i128 %i.ir to i64                 ; 2 uses
  %i.it = lshr i64 %i.is, 57
  %i.iu = trunc nuw nsw i64 %i.it to i8
  %i.iv = insertelement <16 x i8> poison, i8 %i.iu, i64 0
  %i.iw = shufflevector <16 x i8> %i.iv, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.an

bb.an:                                            ; preds = %bb.ap, %_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2B_5types3any5PyAnyEB2w_NtB1w_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB2B_3err5PyErrE0B40_.exit.i
  %.sroa.011.0.i.i.i.i7.i = phi i64 [ 0, %_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2B_5types3any5PyAnyEB2w_NtB1w_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB2B_3err5PyErrE0B40_.exit.i ], [ %i.jn, %bb.ap ]
  %.pn.i.i.i8.i = phi i64 [ %i.is, %_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2B_5types3any5PyAnyEB2w_NtB1w_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB2B_3err5PyErrE0B40_.exit.i ], [ %i.jo, %bb.ap ]
  %.sroa.01.0.i.i.i.i9.i = and i64 %.pn.i.i.i8.i, %i.eg ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.sroa.01.0.i.i.i.i9.i
  %.sroa.0.0.copyload.i24.i.i.i10.i = load <16 x i8>, ptr %i.ix, align 1, !noalias !25554 ; 2 uses
  %i.iy = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i10.i, %i.iw
  %i.iz = bitcast <16 x i1> %i.iy to i16          ; 2 uses
  %.not.i.not30.i.i.i11.i = icmp eq i16 %i.iz, 0
  br i1 %.not.i.not30.i.i.i11.i, label %._crit_edge.i.i.i16.i, label %.lr.ph.i.i.i12.i

.lr.ph.i.i.i12.i:                                 ; preds = %bb.an, %bb.ao
  %.sroa.05.0.i31.i.i.i13.i = phi i16 [ %i.jm, %bb.ao ], [ %i.iz, %bb.an ] ; 3 uses
  %i.ja = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i13.i, i1 true)
  %i.jb = zext nneg i16 %i.ja to i64
  %i.jc = add i64 %.sroa.01.0.i.i.i.i9.i, %i.jb
  %i.jd = and i64 %i.jc, %i.eg
  %i.je = sub nsw i64 0, %i.jd
  %i.jf = getelementptr inbounds [16 x i8], ptr %i.eh, i64 %i.je ; 2 uses
  %i.jg = getelementptr inbounds i8, ptr %i.jf, i64 -16
  %.val2.i.i.i.i14.i = load i32, ptr %i.jg, align 4, !noalias !25555, !noundef !56
  %i.jh = icmp eq i32 %.val31.i, %.val2.i.i.i.i14.i
  br i1 %i.jh, label %bb.aq, label %bb.ao, !prof !66

._crit_edge.i.i.i16.i:                            ; preds = %bb.ao, %bb.an
  %i.ji = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i10.i, splat (i8 -1)
  %i.jj = bitcast <16 x i1> %i.ji to i16
  %i.jk = icmp eq i16 %i.jj, 0
  br i1 %i.jk, label %bb.ap, label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_.exit, !prof !60

bb.ao:                                            ; preds = %.lr.ph.i.i.i12.i
  %i.jl = add i16 %.sroa.05.0.i31.i.i.i13.i, -1
  %i.jm = and i16 %i.jl, %.sroa.05.0.i31.i.i.i13.i ; 2 uses
  %.not.i.not.i.i.i15.i = icmp eq i16 %i.jm, 0
  br i1 %.not.i.not.i.i.i15.i, label %._crit_edge.i.i.i16.i, label %.lr.ph.i.i.i12.i

bb.ap:                                            ; preds = %._crit_edge.i.i.i16.i
  %i.jn = add i64 %.sroa.011.0.i.i.i.i7.i, 16     ; 2 uses
  %i.jo = add i64 %.sroa.01.0.i.i.i.i9.i, %i.jn
  br label %bb.an

bb.aq:                                            ; preds = %.lr.ph.i.i.i12.i
  br i1 %.not.i.i.i.not, label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_.exit.thread, label %.split14

.split14:                                         ; preds = %bb.aq
  %i.jp = getelementptr inbounds i8, ptr %i.jf, i64 -8
  %.val.i.i.i.i.i = load i64, ptr %i.jp, align 8, !noalias !25537, !noundef !56
  %.val1.i.i.i.i.i = load i64, ptr %i.il, align 8, !noalias !25537, !noundef !56
  %i.jq = icmp ult i64 %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  br i1 %i.jq, label %bb.ar, label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_.exit.thread

_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_.exit: ; preds = %._crit_edge.i.i.i16.i
  br i1 %.not.i.i.i.not, label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %.split14, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_.exit
  br label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_.exit.thread

_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_.exit.thread: ; preds = %bb.aq, %.split14, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_.exit, %bb.ar
  %.sroa.0.0.i.i.i.i13 = phi i1 [ true, %bb.ar ], [ false, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_.exit ], [ false, %.split14 ], [ false, %bb.aq ] ; 2 uses
  %i.jr = phi i32 [ %.sroa.0.0.val.i, %bb.ar ], [ %.val31.i, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_.exit ], [ %.val31.i, %.split14 ], [ %.val31.i, %bb.aq ]
  store i32 %i.jr, ptr %.sroa.18.318.i, align 4, !alias.scope !25537
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.18.318.i, i64 4 ; 2 uses
  %i.jt = zext i1 %.sroa.0.0.i.i.i.i13 to i64
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.020.i, i64 %i.jt ; 2 uses
  %i.jv = xor i1 %.sroa.0.0.i.i.i.i13, true
  %i.jw = zext i1 %i.jv to i64
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.219.i, i64 %i.jw ; 3 uses
  %i.jy = icmp ult ptr %i.jx, %i.dm
  %i.jz = icmp ult ptr %i.ju, %i.cv
  %or.cond30.i = select i1 %i.jy, i1 %i.jz, i1 false
  br i1 %or.cond30.i, label %bb.aj, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_.exit.thread, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_.exit.thread.us, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_.exit75.thread, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_.exit75.thread.us, %.lr.ph.i45.split.us.split.us, %bb.z, %bb.y
  %.sroa.18.1.i = phi ptr [ %i.ea, %.lr.ph.i45.split.us.split.us ], [ %i.cu, %bb.y ], [ %i.ct, %bb.z ], [ %i.eb, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_.exit.thread.us ], [ %i.hc, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_.exit75.thread ], [ %i.cu, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_.exit75.thread.us ], [ %i.js, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_.exit.thread ]
  %.sroa.10.1.i = phi ptr [ %i.dm, %.lr.ph.i45.split.us.split.us ], [ %i.cy, %bb.y ], [ %i.dm, %bb.z ], [ %i.dm, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_.exit.thread.us ], [ %i.hb, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_.exit75.thread ], [ %i.de, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_.exit75.thread.us ], [ %i.dm, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_.exit.thread ]
  %.sroa.0.015.i = phi ptr [ %i.e, %.lr.ph.i45.split.us.split.us ], [ %2, %bb.y ], [ %2, %bb.z ], [ %i.ec, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_.exit.thread.us ], [ %2, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_.exit75.thread ], [ %2, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_.exit75.thread.us ], [ %i.jx, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_color0NtNtB56_3err5PyErrE0E0B6u_.exit.thread ] ; 2 uses
  %i.ka = ptrtoint ptr %.sroa.10.1.i to i64
  %i.kb = ptrtoint ptr %.sroa.0.015.i to i64
  %i.kc = sub i64 %i.ka, %i.kb
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.sroa.18.1.i, ptr align 4 %.sroa.0.015.i, i64 %i.kc, i1 false), !noalias !25556
  %i.kd = add i64 %i.ci, %i.cc
  store i64 %i.kd, ptr %i.ch, align 8
  store i64 %i.ce, ptr %i.cj, align 8
  %i.ke = icmp samesign ult i64 %storemerge74, 576460752303423488
  tail call void @llvm.assume(i1 %i.ke)
  %i.kf = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.kg = xor i64 %.sroa.4.0.i41.ph, -1
  %i.kh = add nsw i64 %storemerge74, %i.kg
  %i.ki = shl nuw nsw i64 %i.kh, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cb, ptr nonnull align 8 %i.kf, i64 %i.ki, i1 false), !noalias !25557
  %i.kj = add nsw i64 %storemerge74, -1           ; 3 uses
  store i64 %i.kj, ptr %i.d, align 8
  %i.kk = icmp samesign ugt i64 %storemerge74, 2
  br i1 %i.kk, label %.lr.ph, label %._crit_edge

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit36: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i35, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp291
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort10merge_sortNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBN_INtB4_16ParallelSliceMutBN_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2y_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtBP_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5y_5types3any5PyAnyEB5t_NtBR_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0EB6W_(ptr noalias nofree noundef nonnull align 4 captures(address) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noundef %2, ptr nofree readonly captures(none) %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i64 0, ptr %i.d, align 8
  %.not81 = icmp eq i64 %1, 0
  br i1 %.not81, label %.loopexit22, label %.lr.ph80

.lr.ph80:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = xor i64 %i.a, -1
  %i.g = add i64 %i.a, 4
  br label %bb.b

.loopexit22:                                      ; preds = %._crit_edge, %bb.a, %bb.f
  %.sroa.0.0 = phi i8 [ %., %bb.f ], [ 2, %bb.a ], [ 2, %._crit_edge ]
  %.val30 = load i64, ptr %i.b, align 8           ; 2 uses
  %i.h = icmp eq i64 %.val30, 0
  br i1 %i.h, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i: ; preds = %.loopexit22
  %.val31 = load ptr, ptr %i.c, align 8, !nonnull !56, !noundef !56
  %i.i = shl nuw i64 %.val30, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val31, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %.loopexit22, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i8 %.sroa.0.0

bb.b:                                             ; preds = %.lr.ph80, %._crit_edge
  %i.j = phi ptr [ inttoptr (i64 8 to ptr), %.lr.ph80 ], [ %i.ay, %._crit_edge ]
  %i.k = phi i64 [ 0, %.lr.ph80 ], [ %i.by, %._crit_edge ] ; 3 uses
  %.sroa.02.078 = phi i64 [ 0, %.lr.ph80 ], [ %.sroa.0.0.i37, %._crit_edge ] ; 10 uses
  %i.l = sub nuw nsw i64 %1, %.sroa.02.078        ; 7 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.02.078 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25628)
  %i.n = icmp samesign ult i64 %i.l, 2
  br i1 %i.n, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val17.i = load i32, ptr %i.o, align 4, !alias.scope !25628 ; 3 uses
  %.val18.i = load i32, ptr %i.m, align 4, !alias.scope !25628
  %i.p = tail call fastcc noundef zeroext i1 @_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_(ptr nonnull readonly %.0.val, i32 %.val17.i, i32 %.val18.i) #64, !noalias !25628
  %.not11.i = icmp eq i64 %i.l, 2                 ; 2 uses
  br i1 %i.p, label %.preheader.i, label %.preheader1.i

.preheader1.i:                                    ; preds = %bb.c
  br i1 %.not11.i, label %.loopexit, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.c
  br i1 %.not11.i, label %.loopexit, label %.lr.ph7.i

.lr.ph.i:                                         ; preds = %.preheader1.i, %bb.d
  %.val15.i = phi i32 [ %.val14.i, %bb.d ], [ %.val17.i, %.preheader1.i ]
  %.sroa.01.03.i = phi i64 [ %i.s, %bb.d ], [ 2, %.preheader1.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.01.03.i
  %.val14.i = load i32, ptr %i.q, align 4, !alias.scope !25628 ; 2 uses
  %i.r = tail call fastcc noundef zeroext i1 @_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_(ptr nonnull readonly %.0.val, i32 %.val14.i, i32 %.val15.i) #64, !noalias !25628
  br i1 %i.r, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.s = add nuw nsw i64 %.sroa.01.03.i, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.s, %i.l
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph7.i:                                        ; preds = %.preheader.i, %bb.e
  %.val12.i = phi i32 [ %.val11.i, %bb.e ], [ %.val17.i, %.preheader.i ]
  %.sroa.01.16.i = phi i64 [ %i.v, %bb.e ], [ 2, %.preheader.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.01.16.i
  %.val11.i = load i32, ptr %i.t, align 4, !alias.scope !25628 ; 2 uses
  %i.u = tail call fastcc noundef zeroext i1 @_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_(ptr nonnull readonly %.0.val, i32 %.val11.i, i32 %.val12.i) #64, !noalias !25628
  br i1 %i.u, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %.lr.ph7.i
  %i.v = add nuw nsw i64 %.sroa.01.16.i, 1        ; 2 uses
  %exitcond14.not.i = icmp eq i64 %i.v, %i.l
  br i1 %exitcond14.not.i, label %.loopexit, label %.lr.ph7.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.m, %bb.j, %.invoke230, %.invoke, %bb.h
  %lpad.loopexit.split-lp291 = landingpad { ptr, i32 }
          cleanup
  %.val = load i64, ptr %i.b, align 8             ; 2 uses
  %i.w = icmp eq i64 %.val, 0
  br i1 %i.w, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit36, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i35

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i35: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val29 = load ptr, ptr %i.c, align 8, !nonnull !56, !noundef !56
  %i.x = shl nuw i64 %.val, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val29, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) 8) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit36

.loopexit:                                        ; preds = %bb.d, %.lr.ph.i, %bb.e, %.lr.ph7.i, %.preheader.i, %.preheader1.i, %bb.b
  %.sroa.4.0.i = phi i1 [ false, %bb.b ], [ true, %.preheader.i ], [ true, %bb.e ], [ false, %.preheader1.i ], [ true, %.lr.ph7.i ], [ false, %.lr.ph.i ], [ false, %bb.d ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %i.l, %bb.b ], [ 2, %.preheader.i ], [ %i.l, %bb.e ], [ 2, %.preheader1.i ], [ %.sroa.01.16.i, %.lr.ph7.i ], [ %i.l, %bb.d ], [ %.sroa.01.03.i, %.lr.ph.i ] ; 7 uses
  %i.y = add i64 %.sroa.0.0.i, %.sroa.02.078      ; 8 uses
  %i.z = icmp eq i64 %.sroa.02.078, 0
  %i.aa = icmp eq i64 %i.y, %1
  %or.cond = and i1 %i.z, %i.aa
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.loopexit
  %. = zext i1 %.sroa.4.0.i to i8
  br label %.loopexit22

bb.g:                                             ; preds = %.loopexit
  br i1 %.sroa.4.0.i, label %bb.k, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit

_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i, %middle.block, %bb.l, %bb.g
  %3 = icmp uge i64 %i.y, %.sroa.02.078
  %4 = icmp ule i64 %i.y, %1
  %or.cond.i = and i1 %3, %4
  br i1 %or.cond.i, label %bb.i, label %bb.h, !prof !109

bb.h:                                             ; preds = %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @586, i64 noundef 44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @587) #60
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit
  %i.ab = icmp samesign ult i64 %.sroa.0.0.i, 10
  %i.ac = icmp samesign ult i64 %i.y, %1
  %or.cond3.i = and i1 %i.ab, %i.ac
  br i1 %or.cond3.i, label %bb.j, label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2I_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5I_5types3any5PyAnyEB5D_NtB11_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0EB77_.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = add nuw nsw i64 %.sroa.02.078, 10
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 range(i64 0, 2305843009213693952) %1) ; 2 uses
  %i.af = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 1)
  %i.ag = sub i64 %i.ae, %.sroa.02.078            ; 2 uses
  invoke fastcc void @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort25insertion_sort_shift_leftNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSB12_INtB4_16ParallelSliceMutB12_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2P_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB14_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5Q_5types3any5PyAnyEB5L_NtB16_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0EB7f_(ptr noalias nofree noundef nonnull align 4 %i.m, i64 noundef %i.ag, i64 noundef %i.af, ptr readonly %.0.val) #62
          to label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2I_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5I_5types3any5PyAnyEB5D_NtB11_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0EB77_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.g
  %5 = icmp ult i64 %i.y, %.sroa.02.078
  %.not = icmp ugt i64 %i.y, %1
  %or.cond27 = or i1 %5, %.not
  br i1 %or.cond27, label %.invoke, label %bb.l, !prof !76

bb.l:                                             ; preds = %bb.k
  %i.ah = lshr i64 %.sroa.0.0.i, 1                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25629)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25630)
  %.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i: ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.0.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %.sroa.0.0.i, 16
  br i1 %min.iters.check, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i
  %n.vec = and i64 %i.ah, 4611686018427387896     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aj = xor i64 %index, -1
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index ; 3 uses
  %i.al = getelementptr [4 x i8], ptr %i.ai, i64 %i.aj ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ak, align 4, !alias.scope !25629
  %wide.load277 = load <4 x i32>, ptr %i.am, align 4, !alias.scope !25629
  %i.an = getelementptr i8, ptr %i.al, i64 -12    ; 2 uses
  %i.ao = getelementptr i8, ptr %i.al, i64 -28    ; 2 uses
  %wide.load278 = load <4 x i32>, ptr %i.an, align 4, !alias.scope !25630
  %wide.load279 = load <4 x i32>, ptr %i.ao, align 4, !alias.scope !25630
  %reverse = shufflevector <4 x i32> %wide.load278, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse280 = shufflevector <4 x i32> %wide.load279, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %i.ak, align 4, !alias.scope !25629
  store <4 x i32> %reverse280, ptr %i.am, align 4, !alias.scope !25629
  %reverse281 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse282 = shufflevector <4 x i32> %wide.load277, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse281, ptr %i.an, align 4, !alias.scope !25630
  store <4 x i32> %reverse282, ptr %i.ao, align 4, !alias.scope !25630
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !25563

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i, %middle.block
  %.sroa.0.016.i.ph = phi i64 [ 0, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i
  %.sroa.0.016.i = phi i64 [ %i.av, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i ], [ %.sroa.0.016.i.ph, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader ] ; 3 uses
  %i.aq = xor i64 %.sroa.0.016.i, -1
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.016.i ; 2 uses
  %i.as = getelementptr [4 x i8], ptr %i.ai, i64 %i.aq ; 2 uses
  %i.at = load i32, ptr %i.ar, align 4, !alias.scope !25629, !noundef !56
  %i.au = load i32, ptr %i.as, align 4, !alias.scope !25630
  store i32 %i.au, ptr %i.ar, align 4, !alias.scope !25629
  store i32 %i.at, ptr %i.as, align 4, !alias.scope !25630
  %i.av = add nuw nsw i64 %.sroa.0.016.i, 1       ; 2 uses
  %exitcond.not.i39 = icmp eq i64 %i.av, %i.ah
  br i1 %exitcond.not.i39, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i, !llvm.loop !25564

_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2I_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5I_5types3any5PyAnyEB5D_NtB11_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0EB77_.exit: ; preds = %bb.i, %bb.j
  %.pre-phi = phi i64 [ %i.ag, %bb.j ], [ %.sroa.0.0.i, %bb.i ]
  %.sroa.0.0.i37 = phi i64 [ %i.ae, %bb.j ], [ %i.y, %bb.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25631)
  %i.aw = load i64, ptr %i.b, align 8, !range !59, !alias.scope !25631, !noundef !56
  %i.ax = icmp eq i64 %i.k, %i.aw
  br i1 %i.ax, label %bb.m, label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit

bb.m:                                             ; preds = %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2I_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5I_5types3any5PyAnyEB5D_NtB11_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0EB77_.exit
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #62
          to label %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge: ; preds = %bb.m
  %.pre = load ptr, ptr %i.c, align 8, !alias.scope !25631
  br label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit

_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit: ; preds = %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2I_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5I_5types3any5PyAnyEB5D_NtB11_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0EB77_.exit
  %i.ay = phi ptr [ %.pre, %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge ], [ %i.j, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2I_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5I_5types3any5PyAnyEB5D_NtB11_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0EB77_.exit ] ; 6 uses
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.k ; 2 uses
  store i64 %.pre-phi, ptr %i.az, align 8, !noalias !25631
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %.sroa.02.078, ptr %i.ba, align 8, !noalias !25631
  %i.bb = add i64 %i.k, 1                         ; 4 uses
  store i64 %i.bb, ptr %i.d, align 8
  %i.bc = icmp samesign ugt i64 %i.bb, 1
  br i1 %i.bc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit
  %storemerge74 = phi i64 [ %i.kj, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit ], [ %i.bb, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit ] ; 14 uses
  %i.bd = getelementptr [16 x i8], ptr %i.ay, i64 %storemerge74 ; 5 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 -16
  %i.bf = getelementptr i8, ptr %i.bd, i64 -8
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !25632, !noundef !56
  %i.bh = load i64, ptr %i.be, align 8, !alias.scope !25632, !noundef !56 ; 4 uses
  %i.bi = add i64 %i.bh, %i.bg
  %i.bj = icmp eq i64 %i.bi, %1
  br i1 %i.bj, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.bk = getelementptr i8, ptr %i.bd, i64 -32
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !25632, !noundef !56 ; 3 uses
  %.not.i43 = icmp ugt i64 %i.bl, %i.bh
  br i1 %.not.i43, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.not14.i = icmp eq i64 %storemerge74, 2
  br i1 %.not14.i, label %._crit_edge, label %bb.r

bb.p:                                             ; preds = %bb.n, %.lr.ph
  %.not17.i = icmp eq i64 %storemerge74, 2
  br i1 %.not17.i, label %bb.t, label %.thread.i

bb.q:                                             ; preds = %bb.r
  %i.bm = icmp samesign ugt i64 %storemerge74, 3
  br i1 %i.bm, label %bb.s, label %._crit_edge

bb.r:                                             ; preds = %bb.o
  %i.bn = getelementptr i8, ptr %i.bd, i64 -48
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !25632, !noundef !56 ; 2 uses
  %i.bp = add i64 %i.bl, %i.bh
  %.not15.i = icmp ugt i64 %i.bo, %i.bp
  br i1 %.not15.i, label %bb.q, label %.thread.i

bb.s:                                             ; preds = %bb.q
  %i.bq = getelementptr i8, ptr %i.bd, i64 -64
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !25632, !noundef !56
  %i.bs = add i64 %i.bo, %i.bl
  %.not16.i = icmp ugt i64 %i.br, %i.bs
  br i1 %.not16.i, label %._crit_edge, label %.thread.i

bb.t:                                             ; preds = %.thread.i, %bb.p
  %i.bt = add nsw i64 %storemerge74, -2
  br label %bb.u

.thread.i:                                        ; preds = %bb.p, %bb.s, %bb.r
  %i.bu = add nsw i64 %storemerge74, -3           ; 2 uses
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !25632, !noundef !56
  %i.bx = icmp ult i64 %i.bw, %i.bh
  br i1 %i.bx, label %bb.u, label %bb.t

._crit_edge:                                      ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit, %bb.o, %bb.q, %bb.s, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit
  %i.by = phi i64 [ %i.bb, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit ], [ %i.kj, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit ], [ 2, %bb.o ], [ 3, %bb.q ], [ %storemerge74, %bb.s ]
  %i.bz = icmp ult i64 %.sroa.0.0.i37, %1
  br i1 %i.bz, label %bb.b, label %.loopexit22

bb.u:                                             ; preds = %bb.t, %.thread.i
  %.sroa.4.0.i41.ph = phi i64 [ %i.bu, %.thread.i ], [ %i.bt, %bb.t ] ; 5 uses
  %i.ca = icmp ult i64 %.sroa.4.0.i41.ph, %storemerge74
  br i1 %i.ca, label %bb.v, label %.invoke230

bb.v:                                             ; preds = %bb.u
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %.sroa.4.0.i41.ph ; 4 uses
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !56 ; 7 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !noundef !56 ; 5 uses
  %i.cf = add nuw nsw i64 %.sroa.4.0.i41.ph, 1    ; 3 uses
  %i.cg = icmp ult i64 %i.cf, %storemerge74
  br i1 %i.cg, label %bb.w, label %.invoke230

bb.w:                                             ; preds = %bb.v
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.cf ; 3 uses
  %i.ci = load i64, ptr %i.ch, align 8, !noundef !56 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !noundef !56
  %i.cl = add i64 %i.ck, %i.ci                    ; 5 uses
  %i.cm = icmp ult i64 %i.cl, %i.ce
  %.not26 = icmp ugt i64 %i.cl, %1
  %or.cond28 = or i1 %i.cm, %.not26
  br i1 %or.cond28, label %.invoke, label %bb.x, !prof !76

.invoke230:                                       ; preds = %bb.v, %bb.u
  %i.cn = phi i64 [ %.sroa.4.0.i41.ph, %bb.u ], [ %i.cf, %bb.v ]
  %i.co = phi ptr [ @575, %bb.u ], [ @576, %bb.v ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.cn, i64 noundef %storemerge74, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.co) #61
          to label %.cont231 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont231:                                         ; preds = %.invoke230
  unreachable

.invoke:                                          ; preds = %bb.k, %bb.w
  %i.cp = phi i64 [ %i.ce, %bb.w ], [ %.sroa.02.078, %bb.k ]
  %i.cq = phi i64 [ %i.cl, %bb.w ], [ %i.y, %bb.k ]
  %i.cr = phi ptr [ @577, %bb.w ], [ @578, %bb.k ]
  invoke void @_RNvNtNtCslwFuT2d6ECx_4core5slice5index16slice_index_fail(i64 noundef %i.cp, i64 noundef %i.cq, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cr) #61
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.cs = sub nuw i64 %i.cl, %i.ce                ; 3 uses
  %.idx = shl i64 %i.ce, 2                        ; 2 uses
  %i.ct = getelementptr i8, ptr %0, i64 %.idx     ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25633)
  %.idx29.i = shl i64 %i.cc, 2                    ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.idx29.i ; 5 uses
  %.idx82 = shl nuw nsw i64 %i.cl, 2              ; 2 uses
end_hunk_4
begin_hunk_5_@_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort10merge_sortNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBN_INtB4_16ParallelSliceMutBN_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB2y_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtBP_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5y_5types3any5PyAnyEB5t_NtBR_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0EB6W_:bb.a
  %i.hs = shufflevector <16 x i8> %i.hr, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ak

bb.ak:                                            ; preds = %bb.am, %bb.aj
  %.sroa.011.0.i.i.i.i.i = phi i64 [ 0, %bb.aj ], [ %i.ij, %bb.am ]
  %.pn.i.i.i.i = phi i64 [ %i.ho, %bb.aj ], [ %i.ik, %bb.am ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.eg ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i = load <16 x i8>, ptr %i.ht, align 1, !noalias !25648 ; 2 uses
  %i.hu = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, %i.hs
  %i.hv = bitcast <16 x i1> %i.hu to i16          ; 2 uses
  %.not.i.not30.i.i.i.i = icmp eq i16 %i.hv, 0
  br i1 %.not.i.not30.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ak, %bb.al
  %.sroa.05.0.i31.i.i.i.i = phi i16 [ %i.ii, %bb.al ], [ %i.hv, %bb.ak ] ; 3 uses
  %i.hw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i.i, i1 true)
  %i.hx = zext nneg i16 %i.hw to i64
  %i.hy = add i64 %.sroa.01.0.i.i.i.i.i, %i.hx
  %.fr173 = freeze i64 %i.hy
  %i.hz = and i64 %.fr173, %i.eg
  %i.ia = sub i64 0, %i.hz
  %i.ib = getelementptr [16 x i8], ptr %i.eh, i64 %i.ia ; 2 uses
  %i.ic = getelementptr inbounds i8, ptr %i.ib, i64 -16
  %.val2.i.i.i.i.i = load i32, ptr %i.ic, align 4, !noalias !25649, !noundef !56
  %i.id = icmp eq i32 %.sroa.0.0.val.i, %.val2.i.i.i.i.i
  br i1 %i.id, label %_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2B_5types3any5PyAnyEB2w_NtB1w_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0B40_.exit.i, label %bb.al, !prof !66

._crit_edge.i.i.i.i:                              ; preds = %bb.al, %bb.ak
  %i.ie = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, splat (i8 -1)
  %i.if = bitcast <16 x i1> %i.ie to i16
  %i.ig = icmp eq i16 %i.if, 0
  br i1 %i.ig, label %bb.am, label %_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2B_5types3any5PyAnyEB2w_NtB1w_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0B40_.exit.i, !prof !60

bb.al:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ih = add i16 %.sroa.05.0.i31.i.i.i.i, -1
  %i.ii = and i16 %i.ih, %.sroa.05.0.i31.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.ii, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.am:                                            ; preds = %._crit_edge.i.i.i.i
  %i.ij = add i64 %.sroa.011.0.i.i.i.i.i, 16      ; 2 uses
  %i.ik = add i64 %.sroa.01.0.i.i.i.i.i, %i.ij
  br label %bb.ak

_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2B_5types3any5PyAnyEB2w_NtB1w_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0B40_.exit.i: ; preds = %._crit_edge.i.i.i.i, %.lr.ph.i.i.i.i
  %.fr = phi ptr [ %i.ib, %.lr.ph.i.i.i.i ], [ null, %._crit_edge.i.i.i.i ] ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %.fr, null        ; 2 uses
  %i.il = getelementptr inbounds i8, ptr %.fr, i64 -8
  %i.im = zext i32 %.val31.i to i64
  %i.in = xor i64 %.val.i.i.i, %i.im
  %i.io = zext i64 %i.in to i128
  %i.ip = mul nuw i128 %i.dt, %i.io               ; 2 uses
  %i.iq = lshr i128 %i.ip, 64
  %i.ir = xor i128 %i.iq, %i.ip
  %i.is = trunc i128 %i.ir to i64                 ; 2 uses
  %i.it = lshr i64 %i.is, 57
  %i.iu = trunc nuw nsw i64 %i.it to i8
  %i.iv = insertelement <16 x i8> poison, i8 %i.iu, i64 0
  %i.iw = shufflevector <16 x i8> %i.iv, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.an

bb.an:                                            ; preds = %bb.ap, %_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2B_5types3any5PyAnyEB2w_NtB1w_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0B40_.exit.i
  %.sroa.011.0.i.i.i.i7.i = phi i64 [ 0, %_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2B_5types3any5PyAnyEB2w_NtB1w_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0B40_.exit.i ], [ %i.jn, %bb.ap ]
  %.pn.i.i.i8.i = phi i64 [ %i.is, %_RNCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2B_5types3any5PyAnyEB2w_NtB1w_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0B40_.exit.i ], [ %i.jo, %bb.ap ]
  %.sroa.01.0.i.i.i.i9.i = and i64 %.pn.i.i.i8.i, %i.eg ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.sroa.01.0.i.i.i.i9.i
  %.sroa.0.0.copyload.i24.i.i.i10.i = load <16 x i8>, ptr %i.ix, align 1, !noalias !25650 ; 2 uses
  %i.iy = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i10.i, %i.iw
  %i.iz = bitcast <16 x i1> %i.iy to i16          ; 2 uses
  %.not.i.not30.i.i.i11.i = icmp eq i16 %i.iz, 0
  br i1 %.not.i.not30.i.i.i11.i, label %._crit_edge.i.i.i16.i, label %.lr.ph.i.i.i12.i

.lr.ph.i.i.i12.i:                                 ; preds = %bb.an, %bb.ao
  %.sroa.05.0.i31.i.i.i13.i = phi i16 [ %i.jm, %bb.ao ], [ %i.iz, %bb.an ] ; 3 uses
  %i.ja = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i13.i, i1 true)
  %i.jb = zext nneg i16 %i.ja to i64
  %i.jc = add i64 %.sroa.01.0.i.i.i.i9.i, %i.jb
  %i.jd = and i64 %i.jc, %i.eg
  %i.je = sub nsw i64 0, %i.jd
  %i.jf = getelementptr inbounds [16 x i8], ptr %i.eh, i64 %i.je ; 2 uses
  %i.jg = getelementptr inbounds i8, ptr %i.jf, i64 -16
  %.val2.i.i.i.i14.i = load i32, ptr %i.jg, align 4, !noalias !25651, !noundef !56
  %i.jh = icmp eq i32 %.val31.i, %.val2.i.i.i.i14.i
  br i1 %i.jh, label %bb.aq, label %bb.ao, !prof !66

._crit_edge.i.i.i16.i:                            ; preds = %bb.ao, %bb.an
  %i.ji = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i10.i, splat (i8 -1)
  %i.jj = bitcast <16 x i1> %i.ji to i16
  %i.jk = icmp eq i16 %i.jj, 0
  br i1 %i.jk, label %bb.ap, label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_.exit, !prof !60

bb.ao:                                            ; preds = %.lr.ph.i.i.i12.i
  %i.jl = add i16 %.sroa.05.0.i31.i.i.i13.i, -1
  %i.jm = and i16 %i.jl, %.sroa.05.0.i31.i.i.i13.i ; 2 uses
  %.not.i.not.i.i.i15.i = icmp eq i16 %i.jm, 0
  br i1 %.not.i.not.i.i.i15.i, label %._crit_edge.i.i.i16.i, label %.lr.ph.i.i.i12.i

bb.ap:                                            ; preds = %._crit_edge.i.i.i16.i
  %i.jn = add i64 %.sroa.011.0.i.i.i.i7.i, 16     ; 2 uses
  %i.jo = add i64 %.sroa.01.0.i.i.i.i9.i, %i.jn
  br label %bb.an

bb.aq:                                            ; preds = %.lr.ph.i.i.i12.i
  br i1 %.not.i.i.i.not, label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_.exit.thread, label %.split14

.split14:                                         ; preds = %bb.aq
  %i.jp = getelementptr inbounds i8, ptr %i.jf, i64 -8
  %.val.i.i.i.i.i = load i64, ptr %i.jp, align 8, !noalias !25633, !noundef !56
  %.val1.i.i.i.i.i = load i64, ptr %i.il, align 8, !noalias !25633, !noundef !56
  %i.jq = icmp ult i64 %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  br i1 %i.jq, label %bb.ar, label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_.exit.thread

_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_.exit: ; preds = %._crit_edge.i.i.i16.i
  br i1 %.not.i.i.i.not, label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %.split14, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_.exit
  br label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_.exit.thread

_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_.exit.thread: ; preds = %bb.aq, %.split14, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_.exit, %bb.ar
  %.sroa.0.0.i.i.i.i13 = phi i1 [ true, %bb.ar ], [ false, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_.exit ], [ false, %.split14 ], [ false, %bb.aq ] ; 2 uses
  %i.jr = phi i32 [ %.sroa.0.0.val.i, %bb.ar ], [ %.val31.i, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_.exit ], [ %.val31.i, %.split14 ], [ %.val31.i, %bb.aq ]
  store i32 %i.jr, ptr %.sroa.18.318.i, align 4, !alias.scope !25633
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.18.318.i, i64 4 ; 2 uses
  %i.jt = zext i1 %.sroa.0.0.i.i.i.i13 to i64
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.020.i, i64 %i.jt ; 2 uses
  %i.jv = xor i1 %.sroa.0.0.i.i.i.i13, true
  %i.jw = zext i1 %i.jv to i64
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.219.i, i64 %i.jw ; 3 uses
  %i.jy = icmp ult ptr %i.jx, %i.dm
  %i.jz = icmp ult ptr %i.ju, %i.cv
  %or.cond30.i = select i1 %i.jy, i1 %i.jz, i1 false
  br i1 %or.cond30.i, label %bb.aj, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_.exit.thread, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_.exit.thread.us, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_.exit75.thread, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_.exit75.thread.us, %.lr.ph.i45.split.us.split.us, %bb.z, %bb.y
  %.sroa.18.1.i = phi ptr [ %i.ea, %.lr.ph.i45.split.us.split.us ], [ %i.cu, %bb.y ], [ %i.ct, %bb.z ], [ %i.eb, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_.exit.thread.us ], [ %i.hc, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_.exit75.thread ], [ %i.cu, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_.exit75.thread.us ], [ %i.js, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_.exit.thread ]
  %.sroa.10.1.i = phi ptr [ %i.dm, %.lr.ph.i45.split.us.split.us ], [ %i.cy, %bb.y ], [ %i.dm, %bb.z ], [ %i.dm, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_.exit.thread.us ], [ %i.hb, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_.exit75.thread ], [ %i.de, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_.exit75.thread.us ], [ %i.dm, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_.exit.thread ]
  %.sroa.0.015.i = phi ptr [ %i.e, %.lr.ph.i45.split.us.split.us ], [ %2, %bb.y ], [ %2, %bb.z ], [ %i.ec, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_.exit.thread.us ], [ %2, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_.exit75.thread ], [ %2, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_.exit75.thread.us ], [ %i.jx, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core3cmp7ReverseINtNtB26_6option6OptionRjEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core8coloring39inner_greedy_node_color_strategy_degreeRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB56_5types3any5PyAnyEB51_NtBa_10UndirectedENCNvNtCskcxRuJ53GpR_9rustworkx8coloring18graph_greedy_colors_0zE0E0B6u_.exit.thread ] ; 2 uses
  %i.ka = ptrtoint ptr %.sroa.10.1.i to i64
  %i.kb = ptrtoint ptr %.sroa.0.015.i to i64
  %i.kc = sub i64 %i.ka, %i.kb
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.sroa.18.1.i, ptr align 4 %.sroa.0.015.i, i64 %i.kc, i1 false), !noalias !25652
  %i.kd = add i64 %i.ci, %i.cc
  store i64 %i.kd, ptr %i.ch, align 8
  store i64 %i.ce, ptr %i.cj, align 8
  %i.ke = icmp samesign ult i64 %storemerge74, 576460752303423488
  tail call void @llvm.assume(i1 %i.ke)
  %i.kf = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.kg = xor i64 %.sroa.4.0.i41.ph, -1
  %i.kh = add nsw i64 %storemerge74, %i.kg
  %i.ki = shl nuw nsw i64 %i.kh, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cb, ptr nonnull align 8 %i.kf, i64 %i.ki, i1 false), !noalias !25653
  %i.kj = add nsw i64 %storemerge74, -1           ; 3 uses
  store i64 %i.kj, ptr %i.d, align 8
  %i.kk = icmp samesign ugt i64 %storemerge74, 2
  br i1 %i.kk, label %.lr.ph, label %._crit_edge

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit36: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i35, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp291
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort10merge_sortNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBN_INtB4_16ParallelSliceMutBN_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtBP_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB54_5types3any5PyAnyEB4Z_EE0E0ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 4 captures(address) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noundef %2, ptr nofree readonly captures(none) %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i64 0, ptr %i.d, align 8
  %.not93 = icmp eq i64 %1, 0
  br i1 %.not93, label %.loopexit34, label %.lr.ph92

.lr.ph92:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = xor i64 %i.a, -1
  %i.g = add i64 %i.a, 4
  br label %bb.b

.loopexit34:                                      ; preds = %._crit_edge, %bb.a, %bb.f
  %.sroa.0.0 = phi i8 [ %., %bb.f ], [ 2, %bb.a ], [ 2, %._crit_edge ]
  %.val30 = load i64, ptr %i.b, align 8           ; 2 uses
  %i.h = icmp eq i64 %.val30, 0
  br i1 %i.h, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i: ; preds = %.loopexit34
  %.val31 = load ptr, ptr %i.c, align 8, !nonnull !56, !noundef !56
  %i.i = shl nuw i64 %.val30, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val31, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %.loopexit34, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i8 %.sroa.0.0

bb.b:                                             ; preds = %.lr.ph92, %._crit_edge
  %i.j = phi ptr [ inttoptr (i64 8 to ptr), %.lr.ph92 ], [ %i.ay, %._crit_edge ]
  %i.k = phi i64 [ 0, %.lr.ph92 ], [ %i.by, %._crit_edge ] ; 3 uses
  %.sroa.02.090 = phi i64 [ 0, %.lr.ph92 ], [ %.sroa.0.0.i37, %._crit_edge ] ; 10 uses
  %i.l = sub nuw nsw i64 %1, %.sroa.02.090        ; 7 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.02.090 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25724)
  %i.n = icmp samesign ult i64 %i.l, 2
  br i1 %i.n, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val17.i = load i32, ptr %i.o, align 4, !alias.scope !25724 ; 3 uses
  %.val18.i = load i32, ptr %i.m, align 4, !alias.scope !25724
  %i.p = tail call fastcc noundef zeroext i1 @_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx(ptr nonnull readonly %.0.val, i32 %.val17.i, i32 %.val18.i) #64, !noalias !25724
  %.not11.i = icmp eq i64 %i.l, 2                 ; 2 uses
  br i1 %i.p, label %.preheader.i, label %.preheader1.i

.preheader1.i:                                    ; preds = %bb.c
  br i1 %.not11.i, label %.loopexit, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.c
  br i1 %.not11.i, label %.loopexit, label %.lr.ph7.i

.lr.ph.i:                                         ; preds = %.preheader1.i, %bb.d
  %.val15.i = phi i32 [ %.val14.i, %bb.d ], [ %.val17.i, %.preheader1.i ]
  %.sroa.01.03.i = phi i64 [ %i.s, %bb.d ], [ 2, %.preheader1.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.01.03.i
  %.val14.i = load i32, ptr %i.q, align 4, !alias.scope !25724 ; 2 uses
  %i.r = tail call fastcc noundef zeroext i1 @_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx(ptr nonnull readonly %.0.val, i32 %.val14.i, i32 %.val15.i) #64, !noalias !25724
  br i1 %i.r, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.s = add nuw nsw i64 %.sroa.01.03.i, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.s, %i.l
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph7.i:                                        ; preds = %.preheader.i, %bb.e
  %.val12.i = phi i32 [ %.val11.i, %bb.e ], [ %.val17.i, %.preheader.i ]
  %.sroa.01.16.i = phi i64 [ %i.v, %bb.e ], [ 2, %.preheader.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.01.16.i
  %.val11.i = load i32, ptr %i.t, align 4, !alias.scope !25724 ; 2 uses
  %i.u = tail call fastcc noundef zeroext i1 @_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx(ptr nonnull readonly %.0.val, i32 %.val11.i, i32 %.val12.i) #64, !noalias !25724
  br i1 %i.u, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %.lr.ph7.i
  %i.v = add nuw nsw i64 %.sroa.01.16.i, 1        ; 2 uses
  %exitcond14.not.i = icmp eq i64 %i.v, %i.l
  br i1 %exitcond14.not.i, label %.loopexit, label %.lr.ph7.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.m, %bb.j, %.invoke246, %.invoke, %bb.h
  %lpad.loopexit.split-lp311 = landingpad { ptr, i32 }
          cleanup
  %.val = load i64, ptr %i.b, align 8             ; 2 uses
  %i.w = icmp eq i64 %.val, 0
  br i1 %i.w, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit36, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i35

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i35: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val29 = load ptr, ptr %i.c, align 8, !nonnull !56, !noundef !56
  %i.x = shl nuw i64 %.val, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val29, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) 8) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit36

.loopexit:                                        ; preds = %bb.d, %.lr.ph.i, %bb.e, %.lr.ph7.i, %.preheader.i, %.preheader1.i, %bb.b
  %.sroa.4.0.i = phi i1 [ false, %bb.b ], [ true, %.preheader.i ], [ true, %bb.e ], [ false, %.preheader1.i ], [ true, %.lr.ph7.i ], [ false, %.lr.ph.i ], [ false, %bb.d ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %i.l, %bb.b ], [ 2, %.preheader.i ], [ %i.l, %bb.e ], [ 2, %.preheader1.i ], [ %.sroa.01.16.i, %.lr.ph7.i ], [ %i.l, %bb.d ], [ %.sroa.01.03.i, %.lr.ph.i ] ; 7 uses
  %i.y = add i64 %.sroa.0.0.i, %.sroa.02.090      ; 8 uses
  %i.z = icmp eq i64 %.sroa.02.090, 0
  %i.aa = icmp eq i64 %i.y, %1
  %or.cond = and i1 %i.z, %i.aa
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.loopexit
  %. = zext i1 %.sroa.4.0.i to i8
  br label %.loopexit34

bb.g:                                             ; preds = %.loopexit
  br i1 %.sroa.4.0.i, label %bb.k, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit

_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i, %middle.block, %bb.l, %bb.g
  %3 = icmp uge i64 %i.y, %.sroa.02.090
  %4 = icmp ule i64 %i.y, %1
  %or.cond.i = and i1 %3, %4
  br i1 %or.cond.i, label %bb.i, label %bb.h, !prof !109

bb.h:                                             ; preds = %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @586, i64 noundef 44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @587) #60
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit
  %i.ab = icmp samesign ult i64 %.sroa.0.0.i, 10
  %i.ac = icmp samesign ult i64 %i.y, %1
  %or.cond3.i = and i1 %i.ab, %i.ac
  br i1 %or.cond3.i, label %bb.j, label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5e_5types3any5PyAnyEB59_EE0E0ECskcxRuJ53GpR_9rustworkx.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = add nuw nsw i64 %.sroa.02.090, 10
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 range(i64 1, 2305843009213693952) %1) ; 2 uses
  %i.af = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 1)
  %i.ag = sub nsw i64 %i.ae, %.sroa.02.090        ; 2 uses
  invoke fastcc void @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort25insertion_sort_shift_leftNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSB12_INtB4_16ParallelSliceMutB12_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB14_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5m_5types3any5PyAnyEB5h_EE0E0ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 4 %i.m, i64 noundef %i.ag, i64 noundef %i.af, ptr readonly %.0.val) #62
          to label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5e_5types3any5PyAnyEB59_EE0E0ECskcxRuJ53GpR_9rustworkx.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.g
  %5 = icmp ult i64 %i.y, %.sroa.02.090
  %.not = icmp ugt i64 %i.y, %1
  %or.cond27 = or i1 %5, %.not
  br i1 %or.cond27, label %.invoke, label %bb.l, !prof !76

bb.l:                                             ; preds = %bb.k
  %i.ah = lshr i64 %.sroa.0.0.i, 1                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25725)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25726)
  %.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i: ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.0.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %.sroa.0.0.i, 16
  br i1 %min.iters.check, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i
  %n.vec = and i64 %i.ah, 4611686018427387896     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aj = xor i64 %index, -1
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index ; 3 uses
  %i.al = getelementptr [4 x i8], ptr %i.ai, i64 %i.aj ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ak, align 4, !alias.scope !25725
  %wide.load295 = load <4 x i32>, ptr %i.am, align 4, !alias.scope !25725
  %i.an = getelementptr i8, ptr %i.al, i64 -12    ; 2 uses
  %i.ao = getelementptr i8, ptr %i.al, i64 -28    ; 2 uses
  %wide.load296 = load <4 x i32>, ptr %i.an, align 4, !alias.scope !25726
  %wide.load297 = load <4 x i32>, ptr %i.ao, align 4, !alias.scope !25726
  %reverse = shufflevector <4 x i32> %wide.load296, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse298 = shufflevector <4 x i32> %wide.load297, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %i.ak, align 4, !alias.scope !25725
  store <4 x i32> %reverse298, ptr %i.am, align 4, !alias.scope !25725
  %reverse299 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse300 = shufflevector <4 x i32> %wide.load295, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse299, ptr %i.an, align 4, !alias.scope !25726
  store <4 x i32> %reverse300, ptr %i.ao, align 4, !alias.scope !25726
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !25659

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i, %middle.block
  %.sroa.0.016.i.ph = phi i64 [ 0, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i
  %.sroa.0.016.i = phi i64 [ %i.av, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i ], [ %.sroa.0.016.i.ph, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader ] ; 3 uses
  %i.aq = xor i64 %.sroa.0.016.i, -1
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.016.i ; 2 uses
  %i.as = getelementptr [4 x i8], ptr %i.ai, i64 %i.aq ; 2 uses
  %i.at = load i32, ptr %i.ar, align 4, !alias.scope !25725, !noundef !56
  %i.au = load i32, ptr %i.as, align 4, !alias.scope !25726
  store i32 %i.au, ptr %i.ar, align 4, !alias.scope !25725
  store i32 %i.at, ptr %i.as, align 4, !alias.scope !25726
  %i.av = add nuw nsw i64 %.sroa.0.016.i, 1       ; 2 uses
  %exitcond.not.i39 = icmp eq i64 %i.av, %i.ah
  br i1 %exitcond.not.i39, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i, !llvm.loop !25660

_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5e_5types3any5PyAnyEB59_EE0E0ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.i, %bb.j
  %.pre-phi = phi i64 [ %i.ag, %bb.j ], [ %.sroa.0.0.i, %bb.i ]
  %.sroa.0.0.i37 = phi i64 [ %i.ae, %bb.j ], [ %i.y, %bb.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25727)
  %i.aw = load i64, ptr %i.b, align 8, !range !59, !alias.scope !25727, !noundef !56
  %i.ax = icmp eq i64 %i.k, %i.aw
  br i1 %i.ax, label %bb.m, label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit

bb.m:                                             ; preds = %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5e_5types3any5PyAnyEB59_EE0E0ECskcxRuJ53GpR_9rustworkx.exit
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #62
          to label %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge: ; preds = %bb.m
  %.pre = load ptr, ptr %i.c, align 8, !alias.scope !25727
  br label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit

_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit: ; preds = %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5e_5types3any5PyAnyEB59_EE0E0ECskcxRuJ53GpR_9rustworkx.exit
  %i.ay = phi ptr [ %.pre, %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge ], [ %i.j, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5e_5types3any5PyAnyEB59_EE0E0ECskcxRuJ53GpR_9rustworkx.exit ] ; 6 uses
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.k ; 2 uses
  store i64 %.pre-phi, ptr %i.az, align 8, !noalias !25727
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %.sroa.02.090, ptr %i.ba, align 8, !noalias !25727
  %i.bb = add i64 %i.k, 1                         ; 4 uses
  store i64 %i.bb, ptr %i.d, align 8
  %i.bc = icmp samesign ugt i64 %i.bb, 1
  br i1 %i.bc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit
  %storemerge86 = phi i64 [ %i.kl, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit ], [ %i.bb, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit ] ; 14 uses
  %i.bd = getelementptr [16 x i8], ptr %i.ay, i64 %storemerge86 ; 5 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 -16
  %i.bf = getelementptr i8, ptr %i.bd, i64 -8
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !25728, !noundef !56
  %i.bh = load i64, ptr %i.be, align 8, !alias.scope !25728, !noundef !56 ; 4 uses
  %i.bi = add i64 %i.bh, %i.bg
  %i.bj = icmp eq i64 %i.bi, %1
  br i1 %i.bj, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.bk = getelementptr i8, ptr %i.bd, i64 -32
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !25728, !noundef !56 ; 3 uses
  %.not.i43 = icmp ugt i64 %i.bl, %i.bh
  br i1 %.not.i43, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.not14.i = icmp eq i64 %storemerge86, 2
  br i1 %.not14.i, label %._crit_edge, label %bb.r

bb.p:                                             ; preds = %bb.n, %.lr.ph
  %.not17.i = icmp eq i64 %storemerge86, 2
  br i1 %.not17.i, label %bb.t, label %.thread.i

bb.q:                                             ; preds = %bb.r
  %i.bm = icmp samesign ugt i64 %storemerge86, 3
  br i1 %i.bm, label %bb.s, label %._crit_edge

bb.r:                                             ; preds = %bb.o
  %i.bn = getelementptr i8, ptr %i.bd, i64 -48
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !25728, !noundef !56 ; 2 uses
  %i.bp = add i64 %i.bl, %i.bh
  %.not15.i = icmp ugt i64 %i.bo, %i.bp
  br i1 %.not15.i, label %bb.q, label %.thread.i

bb.s:                                             ; preds = %bb.q
  %i.bq = getelementptr i8, ptr %i.bd, i64 -64
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !25728, !noundef !56
  %i.bs = add i64 %i.bo, %i.bl
  %.not16.i = icmp ugt i64 %i.br, %i.bs
  br i1 %.not16.i, label %._crit_edge, label %.thread.i

bb.t:                                             ; preds = %.thread.i, %bb.p
  %i.bt = add nsw i64 %storemerge86, -2
  br label %bb.u

.thread.i:                                        ; preds = %bb.p, %bb.s, %bb.r
  %i.bu = add nsw i64 %storemerge86, -3           ; 2 uses
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !25728, !noundef !56
  %i.bx = icmp ult i64 %i.bw, %i.bh
  br i1 %i.bx, label %bb.u, label %bb.t

._crit_edge:                                      ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit, %bb.o, %bb.q, %bb.s, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit
  %i.by = phi i64 [ %i.bb, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit ], [ %i.kl, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit ], [ 2, %bb.o ], [ 3, %bb.q ], [ %storemerge86, %bb.s ]
  %i.bz = icmp samesign ult i64 %.sroa.0.0.i37, %1
  br i1 %i.bz, label %bb.b, label %.loopexit34

bb.u:                                             ; preds = %bb.t, %.thread.i
  %.sroa.4.0.i41.ph = phi i64 [ %i.bu, %.thread.i ], [ %i.bt, %bb.t ] ; 5 uses
  %i.ca = icmp ult i64 %.sroa.4.0.i41.ph, %storemerge86
  br i1 %i.ca, label %bb.v, label %.invoke246

bb.v:                                             ; preds = %bb.u
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %.sroa.4.0.i41.ph ; 4 uses
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !56 ; 7 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !noundef !56 ; 5 uses
  %i.cf = add nuw nsw i64 %.sroa.4.0.i41.ph, 1    ; 3 uses
  %i.cg = icmp ult i64 %i.cf, %storemerge86
  br i1 %i.cg, label %bb.w, label %.invoke246

bb.w:                                             ; preds = %bb.v
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.cf ; 3 uses
  %i.ci = load i64, ptr %i.ch, align 8, !noundef !56 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !noundef !56
  %i.cl = add i64 %i.ck, %i.ci                    ; 5 uses
  %i.cm = icmp ult i64 %i.cl, %i.ce
  %.not26 = icmp ugt i64 %i.cl, %1
  %or.cond28 = or i1 %i.cm, %.not26
  br i1 %or.cond28, label %.invoke, label %bb.x, !prof !76

.invoke246:                                       ; preds = %bb.v, %bb.u
  %i.cn = phi i64 [ %.sroa.4.0.i41.ph, %bb.u ], [ %i.cf, %bb.v ]
  %i.co = phi ptr [ @575, %bb.u ], [ @576, %bb.v ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.cn, i64 noundef %storemerge86, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.co) #61
          to label %.cont247 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont247:                                         ; preds = %.invoke246
  unreachable

.invoke:                                          ; preds = %bb.k, %bb.w
  %i.cp = phi i64 [ %i.ce, %bb.w ], [ %.sroa.02.090, %bb.k ]
  %i.cq = phi i64 [ %i.cl, %bb.w ], [ %i.y, %bb.k ]
  %i.cr = phi ptr [ @577, %bb.w ], [ @578, %bb.k ]
  invoke void @_RNvNtNtCslwFuT2d6ECx_4core5slice5index16slice_index_fail(i64 noundef %i.cp, i64 noundef %i.cq, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cr) #61
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.cs = sub nuw i64 %i.cl, %i.ce                ; 3 uses
  %.idx = shl i64 %i.ce, 2                        ; 2 uses
  %i.ct = getelementptr i8, ptr %0, i64 %.idx     ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25729)
  %.idx29.i = shl i64 %i.cc, 2                    ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.idx29.i ; 5 uses
  %.idx94 = shl nuw nsw i64 %i.cl, 2              ; 2 uses
end_hunk_5
begin_hunk_6_@_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort10merge_sortNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBN_INtB4_16ParallelSliceMutBN_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtBP_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB54_5types3any5PyAnyEB4Z_EE0E0ECskcxRuJ53GpR_9rustworkx:bb.a
  %.pn.i.i.i.i = phi i64 [ %i.hp, %bb.aj ], [ %i.il, %bb.am ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.eg ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i = load <16 x i8>, ptr %i.hu, align 1, !noalias !25744 ; 2 uses
  %i.hv = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, %i.ht
  %i.hw = bitcast <16 x i1> %i.hv to i16          ; 2 uses
  %.not.i.not30.i.i.i.i = icmp eq i16 %i.hw, 0
  br i1 %.not.i.not30.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ak, %bb.al
  %.sroa.05.0.i31.i.i.i.i = phi i16 [ %i.ij, %bb.al ], [ %i.hw, %bb.ak ] ; 3 uses
  %i.hx = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i.i, i1 true)
  %i.hy = zext nneg i16 %i.hx to i64
  %i.hz = add i64 %.sroa.01.0.i.i.i.i.i, %i.hy
  %i.ia = and i64 %i.hz, %i.eg
  %i.ib = sub nsw i64 0, %i.ia
  %i.ic = getelementptr inbounds [16 x i8], ptr %i.eh, i64 %i.ib ; 2 uses
  %i.id = getelementptr inbounds i8, ptr %i.ic, i64 -16
  %.val2.i.i.i.i.i = load i32, ptr %i.id, align 4, !noalias !25745, !noundef !56
  %i.ie = icmp eq i32 %.sroa.0.0.val.i, %.val2.i.i.i.i.i
  br i1 %i.ie, label %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_EE0CskcxRuJ53GpR_9rustworkx.exit.i, label %bb.al, !prof !66

._crit_edge.i.i.i.i:                              ; preds = %bb.al, %bb.ak
  %i.if = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, splat (i8 -1)
  %i.ig = bitcast <16 x i1> %i.if to i16
  %i.ih = icmp eq i16 %i.ig, 0
  br i1 %i.ih, label %bb.am, label %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_EE0CskcxRuJ53GpR_9rustworkx.exit.i, !prof !60

bb.al:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ii = add i16 %.sroa.05.0.i31.i.i.i.i, -1
  %i.ij = and i16 %i.ii, %.sroa.05.0.i31.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.ij, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.am:                                            ; preds = %._crit_edge.i.i.i.i
  %i.ik = add i64 %.sroa.011.0.i.i.i.i.i, 16      ; 2 uses
  %i.il = add i64 %.sroa.01.0.i.i.i.i.i, %i.ik
  br label %bb.ak

_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_EE0CskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %._crit_edge.i.i.i.i, %.lr.ph.i.i.i.i
  %i.im = phi ptr [ %i.ic, %.lr.ph.i.i.i.i ], [ null, %._crit_edge.i.i.i.i ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.im, null
  %i.in = getelementptr inbounds i8, ptr %i.im, i64 -8
  %i.io = zext i32 %.val31.i to i64
  %i.ip = xor i64 %.val.i.i.i, %i.io
  %i.iq = zext i64 %i.ip to i128
  %i.ir = mul nuw i128 %i.dt, %i.iq               ; 2 uses
  %i.is = lshr i128 %i.ir, 64
  %i.it = xor i128 %i.is, %i.ir
  %i.iu = trunc i128 %i.it to i64                 ; 2 uses
  %i.iv = lshr i64 %i.iu, 57
  %i.iw = trunc nuw nsw i64 %i.iv to i8
  %i.ix = insertelement <16 x i8> poison, i8 %i.iw, i64 0
  %i.iy = shufflevector <16 x i8> %i.ix, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.an

bb.an:                                            ; preds = %bb.ap, %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_EE0CskcxRuJ53GpR_9rustworkx.exit.i
  %.sroa.011.0.i.i.i.i7.i = phi i64 [ 0, %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_EE0CskcxRuJ53GpR_9rustworkx.exit.i ], [ %i.jp, %bb.ap ]
  %.pn.i.i.i8.i = phi i64 [ %i.iu, %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_EE0CskcxRuJ53GpR_9rustworkx.exit.i ], [ %i.jq, %bb.ap ]
  %.sroa.01.0.i.i.i.i9.i = and i64 %.pn.i.i.i8.i, %i.eg ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.sroa.01.0.i.i.i.i9.i
  %.sroa.0.0.copyload.i24.i.i.i10.i = load <16 x i8>, ptr %i.iz, align 1, !noalias !25746 ; 2 uses
  %i.ja = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i10.i, %i.iy
  %i.jb = bitcast <16 x i1> %i.ja to i16          ; 2 uses
  %.not.i.not30.i.i.i11.i = icmp eq i16 %i.jb, 0
  br i1 %.not.i.not30.i.i.i11.i, label %._crit_edge.i.i.i16.i, label %.lr.ph.i.i.i12.i

.lr.ph.i.i.i12.i:                                 ; preds = %bb.an, %bb.ao
  %.sroa.05.0.i31.i.i.i13.i = phi i16 [ %i.jo, %bb.ao ], [ %i.jb, %bb.an ] ; 3 uses
  %i.jc = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i13.i, i1 true)
  %i.jd = zext nneg i16 %i.jc to i64
  %i.je = add i64 %.sroa.01.0.i.i.i.i9.i, %i.jd
  %.fr187 = freeze i64 %i.je
  %i.jf = and i64 %.fr187, %i.eg
  %i.jg = sub i64 0, %i.jf
  %i.jh = getelementptr [16 x i8], ptr %i.eh, i64 %i.jg ; 2 uses
  %i.ji = getelementptr inbounds i8, ptr %i.jh, i64 -16
  %.val2.i.i.i.i14.i = load i32, ptr %i.ji, align 4, !noalias !25747, !noundef !56
  %i.jj = icmp eq i32 %.val31.i, %.val2.i.i.i.i14.i
  br i1 %i.jj, label %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_jE0ECskcxRuJ53GpR_9rustworkx.exit.i.i17.i, label %bb.ao, !prof !66

._crit_edge.i.i.i16.i:                            ; preds = %bb.ao, %bb.an
  %i.jk = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i10.i, splat (i8 -1)
  %i.jl = bitcast <16 x i1> %i.jk to i16
  %i.jm = icmp eq i16 %i.jl, 0
  br i1 %i.jm, label %bb.ap, label %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_jE0ECskcxRuJ53GpR_9rustworkx.exit.i.i17.i, !prof !60

bb.ao:                                            ; preds = %.lr.ph.i.i.i12.i
  %i.jn = add i16 %.sroa.05.0.i31.i.i.i13.i, -1
  %i.jo = and i16 %i.jn, %.sroa.05.0.i31.i.i.i13.i ; 2 uses
  %.not.i.not.i.i.i15.i = icmp eq i16 %i.jo, 0
  br i1 %.not.i.not.i.i.i15.i, label %._crit_edge.i.i.i16.i, label %.lr.ph.i.i.i12.i

bb.ap:                                            ; preds = %._crit_edge.i.i.i16.i
  %i.jp = add i64 %.sroa.011.0.i.i.i.i7.i, 16     ; 2 uses
  %i.jq = add i64 %.sroa.01.0.i.i.i.i9.i, %i.jp
  br label %bb.an

_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_jE0ECskcxRuJ53GpR_9rustworkx.exit.i.i17.i: ; preds = %._crit_edge.i.i.i16.i, %.lr.ph.i.i.i12.i
  %.fr = phi ptr [ %i.jh, %.lr.ph.i.i.i12.i ], [ null, %._crit_edge.i.i.i16.i ] ; 2 uses
  %.not.i.i18.i.not = icmp eq ptr %.fr, null      ; 2 uses
  %i.jr = getelementptr inbounds i8, ptr %.fr, i64 -8
  br i1 %.not.i.i.i, label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx.exit, label %bb.aq

bb.aq:                                            ; preds = %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_jE0ECskcxRuJ53GpR_9rustworkx.exit.i.i17.i
  br i1 %.not.i.i18.i.not, label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx.exit.thread22, label %.split20

.split20:                                         ; preds = %bb.aq
  %.val.i.i.i.i = load i64, ptr %i.in, align 8, !noalias !25729, !noundef !56
  %.val1.i.i.i.i = load i64, ptr %i.jr, align 8, !noalias !25729, !noundef !56
  %i.js = icmp ult i64 %.val.i.i.i.i, %.val1.i.i.i.i
  br i1 %i.js, label %bb.ar, label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx.exit.thread22

_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_jE0ECskcxRuJ53GpR_9rustworkx.exit.i.i17.i
  br i1 %.not.i.i18.i.not, label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx.exit.thread22, label %bb.ar

bb.ar:                                            ; preds = %.split20, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx.exit
  br label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx.exit.thread22

_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx.exit.thread22: ; preds = %bb.aq, %.split20, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx.exit, %bb.ar
  %.sroa.0.0.i.i25.i19 = phi i1 [ true, %bb.ar ], [ false, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx.exit ], [ false, %bb.aq ], [ false, %.split20 ] ; 2 uses
  %i.jt = phi i32 [ %.sroa.0.0.val.i, %bb.ar ], [ %.val31.i, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx.exit ], [ %.val31.i, %bb.aq ], [ %.val31.i, %.split20 ]
  store i32 %i.jt, ptr %.sroa.18.318.i, align 4, !alias.scope !25729
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.18.318.i, i64 4 ; 2 uses
  %i.jv = zext i1 %.sroa.0.0.i.i25.i19 to i64
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.020.i, i64 %i.jv ; 2 uses
  %i.jx = xor i1 %.sroa.0.0.i.i25.i19, true
  %i.jy = zext i1 %i.jx to i64
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.219.i, i64 %i.jy ; 3 uses
  %i.ka = icmp ult ptr %i.jz, %i.dm
  %i.kb = icmp ult ptr %i.jw, %i.cv
  %or.cond30.i = select i1 %i.ka, i1 %i.kb, i1 false
  br i1 %or.cond30.i, label %bb.aj, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx.exit.thread22, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx.exit.thread22.us, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx.exit81.thread, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx.exit81.thread10.us, %.lr.ph.i45.split.us.split.us, %bb.z, %bb.y
  %.sroa.18.1.i = phi ptr [ %i.ea, %.lr.ph.i45.split.us.split.us ], [ %i.cu, %bb.y ], [ %i.ct, %bb.z ], [ %i.eb, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx.exit.thread22.us ], [ %i.hd, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx.exit81.thread ], [ %i.cu, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx.exit81.thread10.us ], [ %i.ju, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx.exit.thread22 ]
  %.sroa.10.1.i = phi ptr [ %i.dm, %.lr.ph.i45.split.us.split.us ], [ %i.cy, %bb.y ], [ %i.dm, %bb.z ], [ %i.dm, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx.exit.thread22.us ], [ %i.hc, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx.exit81.thread ], [ %i.de, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx.exit81.thread10.us ], [ %i.dm, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx.exit.thread22 ]
  %.sroa.0.015.i = phi ptr [ %i.e, %.lr.ph.i45.split.us.split.us ], [ %2, %bb.y ], [ %2, %bb.z ], [ %i.ec, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx.exit.thread22.us ], [ %2, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx.exit81.thread ], [ %2, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx.exit81.thread10.us ], [ %i.jz, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_EE0E0CskcxRuJ53GpR_9rustworkx.exit.thread22 ] ; 2 uses
  %i.kc = ptrtoint ptr %.sroa.10.1.i to i64
  %i.kd = ptrtoint ptr %.sroa.0.015.i to i64
  %i.ke = sub i64 %i.kc, %i.kd
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.sroa.18.1.i, ptr align 4 %.sroa.0.015.i, i64 %i.ke, i1 false), !noalias !25748
  %i.kf = add i64 %i.ci, %i.cc
  store i64 %i.kf, ptr %i.ch, align 8
  store i64 %i.ce, ptr %i.cj, align 8
  %i.kg = icmp samesign ult i64 %storemerge86, 576460752303423488
  tail call void @llvm.assume(i1 %i.kg)
  %i.kh = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.ki = xor i64 %.sroa.4.0.i41.ph, -1
  %i.kj = add nsw i64 %storemerge86, %i.ki
  %i.kk = shl nuw nsw i64 %i.kj, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cb, ptr nonnull align 8 %i.kh, i64 %i.kk, i1 false), !noalias !25749
  %i.kl = add nsw i64 %storemerge86, -1           ; 3 uses
  store i64 %i.kl, ptr %i.d, align 8
  %i.km = icmp samesign ugt i64 %storemerge86, 2
  br i1 %i.km, label %.lr.ph, label %._crit_edge

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit36: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i35, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp311
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort10merge_sortNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBN_INtB4_16ParallelSliceMutBN_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtBP_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB54_5types3any5PyAnyEB4Z_NtBR_10UndirectedEE0E0ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 4 captures(address) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noundef %2, ptr nofree readonly captures(none) %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i64 0, ptr %i.d, align 8
  %.not93 = icmp eq i64 %1, 0
  br i1 %.not93, label %.loopexit34, label %.lr.ph92

.lr.ph92:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = xor i64 %i.a, -1
  %i.g = add i64 %i.a, 4
  br label %bb.b

.loopexit34:                                      ; preds = %._crit_edge, %bb.a, %bb.f
  %.sroa.0.0 = phi i8 [ %., %bb.f ], [ 2, %bb.a ], [ 2, %._crit_edge ]
  %.val30 = load i64, ptr %i.b, align 8           ; 2 uses
  %i.h = icmp eq i64 %.val30, 0
  br i1 %i.h, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i: ; preds = %.loopexit34
  %.val31 = load ptr, ptr %i.c, align 8, !nonnull !56, !noundef !56
  %i.i = shl nuw i64 %.val30, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val31, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %.loopexit34, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i8 %.sroa.0.0

bb.b:                                             ; preds = %.lr.ph92, %._crit_edge
  %i.j = phi ptr [ inttoptr (i64 8 to ptr), %.lr.ph92 ], [ %i.ay, %._crit_edge ]
  %i.k = phi i64 [ 0, %.lr.ph92 ], [ %i.by, %._crit_edge ] ; 3 uses
  %.sroa.02.090 = phi i64 [ 0, %.lr.ph92 ], [ %.sroa.0.0.i37, %._crit_edge ] ; 10 uses
  %i.l = sub nuw nsw i64 %1, %.sroa.02.090        ; 7 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.02.090 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25820)
  %i.n = icmp samesign ult i64 %i.l, 2
  br i1 %i.n, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val17.i = load i32, ptr %i.o, align 4, !alias.scope !25820 ; 3 uses
  %.val18.i = load i32, ptr %i.m, align 4, !alias.scope !25820
  %i.p = tail call fastcc noundef zeroext i1 @_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx(ptr nonnull readonly %.0.val, i32 %.val17.i, i32 %.val18.i) #64, !noalias !25820
  %.not11.i = icmp eq i64 %i.l, 2                 ; 2 uses
  br i1 %i.p, label %.preheader.i, label %.preheader1.i

.preheader1.i:                                    ; preds = %bb.c
  br i1 %.not11.i, label %.loopexit, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.c
  br i1 %.not11.i, label %.loopexit, label %.lr.ph7.i

.lr.ph.i:                                         ; preds = %.preheader1.i, %bb.d
  %.val15.i = phi i32 [ %.val14.i, %bb.d ], [ %.val17.i, %.preheader1.i ]
  %.sroa.01.03.i = phi i64 [ %i.s, %bb.d ], [ 2, %.preheader1.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.01.03.i
  %.val14.i = load i32, ptr %i.q, align 4, !alias.scope !25820 ; 2 uses
  %i.r = tail call fastcc noundef zeroext i1 @_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx(ptr nonnull readonly %.0.val, i32 %.val14.i, i32 %.val15.i) #64, !noalias !25820
  br i1 %i.r, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.s = add nuw nsw i64 %.sroa.01.03.i, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.s, %i.l
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph7.i:                                        ; preds = %.preheader.i, %bb.e
  %.val12.i = phi i32 [ %.val11.i, %bb.e ], [ %.val17.i, %.preheader.i ]
  %.sroa.01.16.i = phi i64 [ %i.v, %bb.e ], [ 2, %.preheader.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.01.16.i
  %.val11.i = load i32, ptr %i.t, align 4, !alias.scope !25820 ; 2 uses
  %i.u = tail call fastcc noundef zeroext i1 @_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx(ptr nonnull readonly %.0.val, i32 %.val11.i, i32 %.val12.i) #64, !noalias !25820
  br i1 %i.u, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %.lr.ph7.i
  %i.v = add nuw nsw i64 %.sroa.01.16.i, 1        ; 2 uses
  %exitcond14.not.i = icmp eq i64 %i.v, %i.l
  br i1 %exitcond14.not.i, label %.loopexit, label %.lr.ph7.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.m, %bb.j, %.invoke246, %.invoke, %bb.h
  %lpad.loopexit.split-lp311 = landingpad { ptr, i32 }
          cleanup
  %.val = load i64, ptr %i.b, align 8             ; 2 uses
  %i.w = icmp eq i64 %.val, 0
  br i1 %i.w, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit36, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i35

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i35: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val29 = load ptr, ptr %i.c, align 8, !nonnull !56, !noundef !56
  %i.x = shl nuw i64 %.val, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val29, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) 8) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit36

.loopexit:                                        ; preds = %bb.d, %.lr.ph.i, %bb.e, %.lr.ph7.i, %.preheader.i, %.preheader1.i, %bb.b
  %.sroa.4.0.i = phi i1 [ false, %bb.b ], [ true, %.preheader.i ], [ true, %bb.e ], [ false, %.preheader1.i ], [ true, %.lr.ph7.i ], [ false, %.lr.ph.i ], [ false, %bb.d ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %i.l, %bb.b ], [ 2, %.preheader.i ], [ %i.l, %bb.e ], [ 2, %.preheader1.i ], [ %.sroa.01.16.i, %.lr.ph7.i ], [ %i.l, %bb.d ], [ %.sroa.01.03.i, %.lr.ph.i ] ; 7 uses
  %i.y = add i64 %.sroa.0.0.i, %.sroa.02.090      ; 8 uses
  %i.z = icmp eq i64 %.sroa.02.090, 0
  %i.aa = icmp eq i64 %i.y, %1
  %or.cond = and i1 %i.z, %i.aa
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.loopexit
  %. = zext i1 %.sroa.4.0.i to i8
  br label %.loopexit34

bb.g:                                             ; preds = %.loopexit
  br i1 %.sroa.4.0.i, label %bb.k, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit

_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i, %middle.block, %bb.l, %bb.g
  %3 = icmp uge i64 %i.y, %.sroa.02.090
  %4 = icmp ule i64 %i.y, %1
  %or.cond.i = and i1 %3, %4
  br i1 %or.cond.i, label %bb.i, label %bb.h, !prof !109

bb.h:                                             ; preds = %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @586, i64 noundef 44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @587) #60
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit
  %i.ab = icmp samesign ult i64 %.sroa.0.0.i, 10
  %i.ac = icmp samesign ult i64 %i.y, %1
  %or.cond3.i = and i1 %i.ab, %i.ac
  br i1 %or.cond3.i, label %bb.j, label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5e_5types3any5PyAnyEB59_NtB11_10UndirectedEE0E0ECskcxRuJ53GpR_9rustworkx.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = add nuw nsw i64 %.sroa.02.090, 10
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 range(i64 0, 2305843009213693952) %1) ; 2 uses
  %i.af = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 1)
  %i.ag = sub i64 %i.ae, %.sroa.02.090            ; 2 uses
  invoke fastcc void @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort25insertion_sort_shift_leftNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSB12_INtB4_16ParallelSliceMutB12_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB14_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5m_5types3any5PyAnyEB5h_NtB16_10UndirectedEE0E0ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 4 %i.m, i64 noundef %i.ag, i64 noundef %i.af, ptr readonly %.0.val) #62
          to label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5e_5types3any5PyAnyEB59_NtB11_10UndirectedEE0E0ECskcxRuJ53GpR_9rustworkx.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.g
  %5 = icmp ult i64 %i.y, %.sroa.02.090
  %.not = icmp ugt i64 %i.y, %1
  %or.cond27 = or i1 %5, %.not
  br i1 %or.cond27, label %.invoke, label %bb.l, !prof !76

bb.l:                                             ; preds = %bb.k
  %i.ah = lshr i64 %.sroa.0.0.i, 1                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25821)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25822)
  %.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i: ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.0.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %.sroa.0.0.i, 16
  br i1 %min.iters.check, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i
  %n.vec = and i64 %i.ah, 4611686018427387896     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aj = xor i64 %index, -1
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index ; 3 uses
  %i.al = getelementptr [4 x i8], ptr %i.ai, i64 %i.aj ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ak, align 4, !alias.scope !25821
  %wide.load295 = load <4 x i32>, ptr %i.am, align 4, !alias.scope !25821
  %i.an = getelementptr i8, ptr %i.al, i64 -12    ; 2 uses
  %i.ao = getelementptr i8, ptr %i.al, i64 -28    ; 2 uses
  %wide.load296 = load <4 x i32>, ptr %i.an, align 4, !alias.scope !25822
  %wide.load297 = load <4 x i32>, ptr %i.ao, align 4, !alias.scope !25822
  %reverse = shufflevector <4 x i32> %wide.load296, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse298 = shufflevector <4 x i32> %wide.load297, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %i.ak, align 4, !alias.scope !25821
  store <4 x i32> %reverse298, ptr %i.am, align 4, !alias.scope !25821
  %reverse299 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse300 = shufflevector <4 x i32> %wide.load295, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse299, ptr %i.an, align 4, !alias.scope !25822
  store <4 x i32> %reverse300, ptr %i.ao, align 4, !alias.scope !25822
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !25755

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i, %middle.block
  %.sroa.0.016.i.ph = phi i64 [ 0, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i
  %.sroa.0.016.i = phi i64 [ %i.av, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i ], [ %.sroa.0.016.i.ph, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader ] ; 3 uses
  %i.aq = xor i64 %.sroa.0.016.i, -1
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.016.i ; 2 uses
  %i.as = getelementptr [4 x i8], ptr %i.ai, i64 %i.aq ; 2 uses
  %i.at = load i32, ptr %i.ar, align 4, !alias.scope !25821, !noundef !56
  %i.au = load i32, ptr %i.as, align 4, !alias.scope !25822
  store i32 %i.au, ptr %i.ar, align 4, !alias.scope !25821
  store i32 %i.at, ptr %i.as, align 4, !alias.scope !25822
  %i.av = add nuw nsw i64 %.sroa.0.016.i, 1       ; 2 uses
  %exitcond.not.i39 = icmp eq i64 %i.av, %i.ah
  br i1 %exitcond.not.i39, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i, !llvm.loop !25756

_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5e_5types3any5PyAnyEB59_NtB11_10UndirectedEE0E0ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.i, %bb.j
  %.pre-phi = phi i64 [ %i.ag, %bb.j ], [ %.sroa.0.0.i, %bb.i ]
  %.sroa.0.0.i37 = phi i64 [ %i.ae, %bb.j ], [ %i.y, %bb.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25823)
  %i.aw = load i64, ptr %i.b, align 8, !range !59, !alias.scope !25823, !noundef !56
  %i.ax = icmp eq i64 %i.k, %i.aw
  br i1 %i.ax, label %bb.m, label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit

bb.m:                                             ; preds = %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5e_5types3any5PyAnyEB59_NtB11_10UndirectedEE0E0ECskcxRuJ53GpR_9rustworkx.exit
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #62
          to label %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge: ; preds = %bb.m
  %.pre = load ptr, ptr %i.c, align 8, !alias.scope !25823
  br label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit

_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit: ; preds = %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5e_5types3any5PyAnyEB59_NtB11_10UndirectedEE0E0ECskcxRuJ53GpR_9rustworkx.exit
  %i.ay = phi ptr [ %.pre, %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge ], [ %i.j, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBX_INtB4_16ParallelSliceMutBX_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtBZ_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5e_5types3any5PyAnyEB59_NtB11_10UndirectedEE0E0ECskcxRuJ53GpR_9rustworkx.exit ] ; 6 uses
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.k ; 2 uses
  store i64 %.pre-phi, ptr %i.az, align 8, !noalias !25823
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %.sroa.02.090, ptr %i.ba, align 8, !noalias !25823
  %i.bb = add i64 %i.k, 1                         ; 4 uses
  store i64 %i.bb, ptr %i.d, align 8
  %i.bc = icmp samesign ugt i64 %i.bb, 1
  br i1 %i.bc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit
  %storemerge86 = phi i64 [ %i.kl, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit ], [ %i.bb, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit ] ; 14 uses
  %i.bd = getelementptr [16 x i8], ptr %i.ay, i64 %storemerge86 ; 5 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 -16
  %i.bf = getelementptr i8, ptr %i.bd, i64 -8
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !25824, !noundef !56
  %i.bh = load i64, ptr %i.be, align 8, !alias.scope !25824, !noundef !56 ; 4 uses
  %i.bi = add i64 %i.bh, %i.bg
  %i.bj = icmp eq i64 %i.bi, %1
  br i1 %i.bj, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.bk = getelementptr i8, ptr %i.bd, i64 -32
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !25824, !noundef !56 ; 3 uses
  %.not.i43 = icmp ugt i64 %i.bl, %i.bh
  br i1 %.not.i43, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.not14.i = icmp eq i64 %storemerge86, 2
  br i1 %.not14.i, label %._crit_edge, label %bb.r

bb.p:                                             ; preds = %bb.n, %.lr.ph
  %.not17.i = icmp eq i64 %storemerge86, 2
  br i1 %.not17.i, label %bb.t, label %.thread.i

bb.q:                                             ; preds = %bb.r
  %i.bm = icmp samesign ugt i64 %storemerge86, 3
  br i1 %i.bm, label %bb.s, label %._crit_edge

bb.r:                                             ; preds = %bb.o
  %i.bn = getelementptr i8, ptr %i.bd, i64 -48
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !25824, !noundef !56 ; 2 uses
  %i.bp = add i64 %i.bl, %i.bh
  %.not15.i = icmp ugt i64 %i.bo, %i.bp
  br i1 %.not15.i, label %bb.q, label %.thread.i

bb.s:                                             ; preds = %bb.q
  %i.bq = getelementptr i8, ptr %i.bd, i64 -64
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !25824, !noundef !56
  %i.bs = add i64 %i.bo, %i.bl
  %.not16.i = icmp ugt i64 %i.br, %i.bs
  br i1 %.not16.i, label %._crit_edge, label %.thread.i

bb.t:                                             ; preds = %.thread.i, %bb.p
  %i.bt = add nsw i64 %storemerge86, -2
  br label %bb.u

.thread.i:                                        ; preds = %bb.p, %bb.s, %bb.r
  %i.bu = add nsw i64 %storemerge86, -3           ; 2 uses
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !25824, !noundef !56
  %i.bx = icmp ult i64 %i.bw, %i.bh
  br i1 %i.bx, label %bb.u, label %bb.t

._crit_edge:                                      ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit, %bb.o, %bb.q, %bb.s, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit
  %i.by = phi i64 [ %i.bb, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit ], [ %i.kl, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit ], [ 2, %bb.o ], [ 3, %bb.q ], [ %storemerge86, %bb.s ]
  %i.bz = icmp ult i64 %.sroa.0.0.i37, %1
  br i1 %i.bz, label %bb.b, label %.loopexit34

bb.u:                                             ; preds = %bb.t, %.thread.i
  %.sroa.4.0.i41.ph = phi i64 [ %i.bu, %.thread.i ], [ %i.bt, %bb.t ] ; 5 uses
  %i.ca = icmp ult i64 %.sroa.4.0.i41.ph, %storemerge86
  br i1 %i.ca, label %bb.v, label %.invoke246

bb.v:                                             ; preds = %bb.u
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %.sroa.4.0.i41.ph ; 4 uses
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !56 ; 7 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !noundef !56 ; 5 uses
  %i.cf = add nuw nsw i64 %.sroa.4.0.i41.ph, 1    ; 3 uses
  %i.cg = icmp ult i64 %i.cf, %storemerge86
  br i1 %i.cg, label %bb.w, label %.invoke246

bb.w:                                             ; preds = %bb.v
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.cf ; 3 uses
  %i.ci = load i64, ptr %i.ch, align 8, !noundef !56 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !noundef !56
  %i.cl = add i64 %i.ck, %i.ci                    ; 5 uses
  %i.cm = icmp ult i64 %i.cl, %i.ce
  %.not26 = icmp ugt i64 %i.cl, %1
  %or.cond28 = or i1 %i.cm, %.not26
  br i1 %or.cond28, label %.invoke, label %bb.x, !prof !76

.invoke246:                                       ; preds = %bb.v, %bb.u
  %i.cn = phi i64 [ %.sroa.4.0.i41.ph, %bb.u ], [ %i.cf, %bb.v ]
  %i.co = phi ptr [ @575, %bb.u ], [ @576, %bb.v ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.cn, i64 noundef %storemerge86, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.co) #61
          to label %.cont247 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont247:                                         ; preds = %.invoke246
  unreachable

.invoke:                                          ; preds = %bb.k, %bb.w
  %i.cp = phi i64 [ %i.ce, %bb.w ], [ %.sroa.02.090, %bb.k ]
  %i.cq = phi i64 [ %i.cl, %bb.w ], [ %i.y, %bb.k ]
  %i.cr = phi ptr [ @577, %bb.w ], [ @578, %bb.k ]
  invoke void @_RNvNtNtCslwFuT2d6ECx_4core5slice5index16slice_index_fail(i64 noundef %i.cp, i64 noundef %i.cq, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cr) #61
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.cs = sub nuw i64 %i.cl, %i.ce                ; 3 uses
  %.idx = shl i64 %i.ce, 2                        ; 2 uses
  %i.ct = getelementptr i8, ptr %0, i64 %.idx     ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25825)
  %.idx29.i = shl i64 %i.cc, 2                    ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.idx29.i ; 5 uses
  %.idx94 = shl nuw nsw i64 %i.cl, 2              ; 2 uses
end_hunk_6
begin_hunk_7_@_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort10merge_sortNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNCINvYSBN_INtB4_16ParallelSliceMutBN_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtBP_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB54_5types3any5PyAnyEB4Z_NtBR_10UndirectedEE0E0ECskcxRuJ53GpR_9rustworkx:bb.a
  %i.hr = trunc nuw nsw i64 %i.hq to i8
  %i.hs = insertelement <16 x i8> poison, i8 %i.hr, i64 0
  %i.ht = shufflevector <16 x i8> %i.hs, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ak

bb.ak:                                            ; preds = %bb.am, %bb.aj
  %.sroa.011.0.i.i.i.i.i = phi i64 [ 0, %bb.aj ], [ %i.ik, %bb.am ]
  %.pn.i.i.i.i = phi i64 [ %i.hp, %bb.aj ], [ %i.il, %bb.am ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.eg ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i = load <16 x i8>, ptr %i.hu, align 1, !noalias !25840 ; 2 uses
  %i.hv = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, %i.ht
  %i.hw = bitcast <16 x i1> %i.hv to i16          ; 2 uses
  %.not.i.not30.i.i.i.i = icmp eq i16 %i.hw, 0
  br i1 %.not.i.not30.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ak, %bb.al
  %.sroa.05.0.i31.i.i.i.i = phi i16 [ %i.ij, %bb.al ], [ %i.hw, %bb.ak ] ; 3 uses
  %i.hx = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i.i, i1 true)
  %i.hy = zext nneg i16 %i.hx to i64
  %i.hz = add i64 %.sroa.01.0.i.i.i.i.i, %i.hy
  %i.ia = and i64 %i.hz, %i.eg
  %i.ib = sub nsw i64 0, %i.ia
  %i.ic = getelementptr inbounds [16 x i8], ptr %i.eh, i64 %i.ib ; 2 uses
  %i.id = getelementptr inbounds i8, ptr %i.ic, i64 -16
  %.val2.i.i.i.i.i = load i32, ptr %i.id, align 4, !noalias !25841, !noundef !56
  %i.ie = icmp eq i32 %.sroa.0.0.val.i, %.val2.i.i.i.i.i
  br i1 %i.ie, label %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_NtB1o_10UndirectedEE0CskcxRuJ53GpR_9rustworkx.exit.i, label %bb.al, !prof !66

._crit_edge.i.i.i.i:                              ; preds = %bb.al, %bb.ak
  %i.if = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, splat (i8 -1)
  %i.ig = bitcast <16 x i1> %i.if to i16
  %i.ih = icmp eq i16 %i.ig, 0
  br i1 %i.ih, label %bb.am, label %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_NtB1o_10UndirectedEE0CskcxRuJ53GpR_9rustworkx.exit.i, !prof !60

bb.al:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ii = add i16 %.sroa.05.0.i31.i.i.i.i, -1
  %i.ij = and i16 %i.ii, %.sroa.05.0.i31.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.ij, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.am:                                            ; preds = %._crit_edge.i.i.i.i
  %i.ik = add i64 %.sroa.011.0.i.i.i.i.i, 16      ; 2 uses
  %i.il = add i64 %.sroa.01.0.i.i.i.i.i, %i.ik
  br label %bb.ak

_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_NtB1o_10UndirectedEE0CskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %._crit_edge.i.i.i.i, %.lr.ph.i.i.i.i
  %i.im = phi ptr [ %i.ic, %.lr.ph.i.i.i.i ], [ null, %._crit_edge.i.i.i.i ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.im, null
  %i.in = getelementptr inbounds i8, ptr %i.im, i64 -8
  %i.io = zext i32 %.val31.i to i64
  %i.ip = xor i64 %.val.i.i.i, %i.io
  %i.iq = zext i64 %i.ip to i128
  %i.ir = mul nuw i128 %i.dt, %i.iq               ; 2 uses
  %i.is = lshr i128 %i.ir, 64
  %i.it = xor i128 %i.is, %i.ir
  %i.iu = trunc i128 %i.it to i64                 ; 2 uses
  %i.iv = lshr i64 %i.iu, 57
  %i.iw = trunc nuw nsw i64 %i.iv to i8
  %i.ix = insertelement <16 x i8> poison, i8 %i.iw, i64 0
  %i.iy = shufflevector <16 x i8> %i.ix, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.an

bb.an:                                            ; preds = %bb.ap, %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_NtB1o_10UndirectedEE0CskcxRuJ53GpR_9rustworkx.exit.i
  %.sroa.011.0.i.i.i.i7.i = phi i64 [ 0, %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_NtB1o_10UndirectedEE0CskcxRuJ53GpR_9rustworkx.exit.i ], [ %i.jp, %bb.ap ]
  %.pn.i.i.i8.i = phi i64 [ %i.iu, %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2t_5types3any5PyAnyEB2o_NtB1o_10UndirectedEE0CskcxRuJ53GpR_9rustworkx.exit.i ], [ %i.jq, %bb.ap ]
  %.sroa.01.0.i.i.i.i9.i = and i64 %.pn.i.i.i8.i, %i.eg ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.sroa.01.0.i.i.i.i9.i
  %.sroa.0.0.copyload.i24.i.i.i10.i = load <16 x i8>, ptr %i.iz, align 1, !noalias !25842 ; 2 uses
  %i.ja = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i10.i, %i.iy
  %i.jb = bitcast <16 x i1> %i.ja to i16          ; 2 uses
  %.not.i.not30.i.i.i11.i = icmp eq i16 %i.jb, 0
  br i1 %.not.i.not30.i.i.i11.i, label %._crit_edge.i.i.i16.i, label %.lr.ph.i.i.i12.i

.lr.ph.i.i.i12.i:                                 ; preds = %bb.an, %bb.ao
  %.sroa.05.0.i31.i.i.i13.i = phi i16 [ %i.jo, %bb.ao ], [ %i.jb, %bb.an ] ; 3 uses
  %i.jc = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i13.i, i1 true)
  %i.jd = zext nneg i16 %i.jc to i64
  %i.je = add i64 %.sroa.01.0.i.i.i.i9.i, %i.jd
  %.fr187 = freeze i64 %i.je
  %i.jf = and i64 %.fr187, %i.eg
  %i.jg = sub i64 0, %i.jf
  %i.jh = getelementptr [16 x i8], ptr %i.eh, i64 %i.jg ; 2 uses
  %i.ji = getelementptr inbounds i8, ptr %i.jh, i64 -16
  %.val2.i.i.i.i14.i = load i32, ptr %i.ji, align 4, !noalias !25843, !noundef !56
  %i.jj = icmp eq i32 %.val31.i, %.val2.i.i.i.i14.i
  br i1 %i.jj, label %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_jE0ECskcxRuJ53GpR_9rustworkx.exit.i.i17.i, label %bb.ao, !prof !66

._crit_edge.i.i.i16.i:                            ; preds = %bb.ao, %bb.an
  %i.jk = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i10.i, splat (i8 -1)
  %i.jl = bitcast <16 x i1> %i.jk to i16
  %i.jm = icmp eq i16 %i.jl, 0
  br i1 %i.jm, label %bb.ap, label %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_jE0ECskcxRuJ53GpR_9rustworkx.exit.i.i17.i, !prof !60

bb.ao:                                            ; preds = %.lr.ph.i.i.i12.i
  %i.jn = add i16 %.sroa.05.0.i31.i.i.i13.i, -1
  %i.jo = and i16 %i.jn, %.sroa.05.0.i31.i.i.i13.i ; 2 uses
  %.not.i.not.i.i.i15.i = icmp eq i16 %i.jo, 0
  br i1 %.not.i.not.i.i.i15.i, label %._crit_edge.i.i.i16.i, label %.lr.ph.i.i.i12.i

bb.ap:                                            ; preds = %._crit_edge.i.i.i16.i
  %i.jp = add i64 %.sroa.011.0.i.i.i.i7.i, 16     ; 2 uses
  %i.jq = add i64 %.sroa.01.0.i.i.i.i9.i, %i.jp
  br label %bb.an

_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_jE0ECskcxRuJ53GpR_9rustworkx.exit.i.i17.i: ; preds = %._crit_edge.i.i.i16.i, %.lr.ph.i.i.i12.i
  %.fr = phi ptr [ %i.jh, %.lr.ph.i.i.i12.i ], [ null, %._crit_edge.i.i.i16.i ] ; 2 uses
  %.not.i.i18.i.not = icmp eq ptr %.fr, null      ; 2 uses
  %i.jr = getelementptr inbounds i8, ptr %.fr, i64 -8
  br i1 %.not.i.i.i, label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit, label %bb.aq

bb.aq:                                            ; preds = %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_jE0ECskcxRuJ53GpR_9rustworkx.exit.i.i17.i
  br i1 %.not.i.i18.i.not, label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit.thread22, label %.split20

.split20:                                         ; preds = %bb.aq
  %.val.i.i.i.i = load i64, ptr %i.in, align 8, !noalias !25825, !noundef !56
  %.val1.i.i.i.i = load i64, ptr %i.jr, align 8, !noalias !25825, !noundef !56
  %i.js = icmp ult i64 %.val.i.i.i.i, %.val1.i.i.i.i
  br i1 %i.js, label %bb.ar, label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit.thread22

_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_jE0ECskcxRuJ53GpR_9rustworkx.exit.i.i17.i
  br i1 %.not.i.i18.i.not, label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit.thread22, label %bb.ar

bb.ar:                                            ; preds = %.split20, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit
  br label %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit.thread22

_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit.thread22: ; preds = %bb.aq, %.split20, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit, %bb.ar
  %.sroa.0.0.i.i25.i19 = phi i1 [ true, %bb.ar ], [ false, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit ], [ false, %bb.aq ], [ false, %.split20 ] ; 2 uses
  %i.jt = phi i32 [ %.sroa.0.0.val.i, %bb.ar ], [ %.val31.i, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit ], [ %.val31.i, %bb.aq ], [ %.val31.i, %.split20 ]
  store i32 %i.jt, ptr %.sroa.18.318.i, align 4, !alias.scope !25825
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.18.318.i, i64 4 ; 2 uses
  %i.jv = zext i1 %.sroa.0.0.i.i25.i19 to i64
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.020.i, i64 %i.jv ; 2 uses
  %i.jx = xor i1 %.sroa.0.0.i.i25.i19, true
  %i.jy = zext i1 %i.jx to i64
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.219.i, i64 %i.jy ; 3 uses
  %i.ka = icmp ult ptr %i.jz, %i.dm
  %i.kb = icmp ult ptr %i.jw, %i.cv
  %or.cond30.i = select i1 %i.ka, i1 %i.kb, i1 false
  br i1 %or.cond30.i, label %bb.aj, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit.thread22, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit.thread22.us, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit81.thread, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit81.thread10.us, %.lr.ph.i45.split.us.split.us, %bb.z, %bb.y
  %.sroa.18.1.i = phi ptr [ %i.ea, %.lr.ph.i45.split.us.split.us ], [ %i.cu, %bb.y ], [ %i.ct, %bb.z ], [ %i.eb, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit.thread22.us ], [ %i.hd, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit81.thread ], [ %i.cu, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit81.thread10.us ], [ %i.ju, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit.thread22 ]
  %.sroa.10.1.i = phi ptr [ %i.dm, %.lr.ph.i45.split.us.split.us ], [ %i.cy, %bb.y ], [ %i.dm, %bb.z ], [ %i.dm, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit.thread22.us ], [ %i.hc, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit81.thread ], [ %i.de, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit81.thread10.us ], [ %i.dm, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit.thread22 ]
  %.sroa.0.015.i = phi ptr [ %i.e, %.lr.ph.i45.split.us.split.us ], [ %2, %bb.y ], [ %2, %bb.z ], [ %i.ec, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit.thread22.us ], [ %2, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit81.thread ], [ %2, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit81.thread10.us ], [ %i.jz, %_RNCINvYSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutB6_E15par_sort_by_keyINtNtCslwFuT2d6ECx_4core6option6OptionRjENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core12connectivity11core_number11core_numberRINtNtB8_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4C_5types3any5PyAnyEB4x_NtBa_10UndirectedEE0E0CskcxRuJ53GpR_9rustworkx.exit.thread22 ] ; 2 uses
  %i.kc = ptrtoint ptr %.sroa.10.1.i to i64
  %i.kd = ptrtoint ptr %.sroa.0.015.i to i64
  %i.ke = sub i64 %i.kc, %i.kd
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.sroa.18.1.i, ptr align 4 %.sroa.0.015.i, i64 %i.ke, i1 false), !noalias !25844
  %i.kf = add i64 %i.ci, %i.cc
  store i64 %i.kf, ptr %i.ch, align 8
  store i64 %i.ce, ptr %i.cj, align 8
  %i.kg = icmp samesign ult i64 %storemerge86, 576460752303423488
  tail call void @llvm.assume(i1 %i.kg)
  %i.kh = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.ki = xor i64 %.sroa.4.0.i41.ph, -1
  %i.kj = add nsw i64 %storemerge86, %i.ki
  %i.kk = shl nuw nsw i64 %i.kj, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cb, ptr nonnull align 8 %i.kh, i64 %i.kk, i1 false), !noalias !25845
  %i.kl = add nsw i64 %storemerge86, -1           ; 3 uses
  store i64 %i.kl, ptr %i.d, align 8
  %i.km = icmp samesign ugt i64 %storemerge86, 2
  br i1 %i.km, label %.lr.ph, label %._crit_edge

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit36: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i35, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp311
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort10merge_sortNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNvYBN_NtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2ltECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 4 captures(address) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.c, align 8
  %.not57 = icmp eq i64 %1, 0
  br i1 %.not57, label %.loopexit7, label %.lr.ph56

.loopexit7:                                       ; preds = %._crit_edge, %bb.a, %bb.e
  %.sroa.0.0 = phi i8 [ %., %bb.e ], [ 2, %bb.a ], [ 2, %._crit_edge ]
  %.val30 = load i64, ptr %i.a, align 8           ; 2 uses
  %i.d = icmp eq i64 %.val30, 0
  br i1 %i.d, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i: ; preds = %.loopexit7
  %.val31 = load ptr, ptr %i.b, align 8, !nonnull !56, !noundef !56
  %i.e = shl nuw i64 %.val30, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val31, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %.loopexit7, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i8 %.sroa.0.0

.lr.ph56:                                         ; preds = %bb.a, %._crit_edge
  %i.f = phi ptr [ %i.au, %._crit_edge ], [ inttoptr (i64 8 to ptr), %bb.a ]
  %i.g = phi i64 [ %storemerge.lcssa, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %.sroa.02.054 = phi i64 [ %.sroa.0.0.i34, %._crit_edge ], [ 0, %bb.a ] ; 10 uses
  %i.h = sub nuw nsw i64 %1, %.sroa.02.054        ; 7 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.02.054 ; 8 uses
  %i.j = icmp samesign ult i64 %i.h, 2
  br i1 %i.j, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph56
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %.val14.i = load i32, ptr %i.k, align 4, !alias.scope !25868, !noundef !56 ; 3 uses
  %.val15.i = load i32, ptr %i.i, align 4, !alias.scope !25868, !noundef !56
  %i.l = icmp ult i32 %.val14.i, %.val15.i
  %.not11.i = icmp eq i64 %i.h, 2                 ; 2 uses
  br i1 %i.l, label %.preheader.i, label %.preheader1.i

.preheader1.i:                                    ; preds = %bb.b
  br i1 %.not11.i, label %.loopexit, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.b
  br i1 %.not11.i, label %.loopexit, label %.lr.ph7.i

.lr.ph.i:                                         ; preds = %.preheader1.i, %bb.c
  %.val13.i = phi i32 [ %.val12.i, %bb.c ], [ %.val14.i, %.preheader1.i ]
  %.sroa.01.03.i = phi i64 [ %i.o, %bb.c ], [ 2, %.preheader1.i ] ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.sroa.01.03.i
  %.val12.i = load i32, ptr %i.m, align 4, !alias.scope !25868, !noundef !56 ; 2 uses
  %i.n = icmp ult i32 %.val12.i, %.val13.i
  br i1 %i.n, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.o = add nuw nsw i64 %.sroa.01.03.i, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.o, %i.h
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph7.i:                                        ; preds = %.preheader.i, %bb.d
  %.val11.i = phi i32 [ %.val.i, %bb.d ], [ %.val14.i, %.preheader.i ]
  %.sroa.01.16.i = phi i64 [ %i.r, %bb.d ], [ 2, %.preheader.i ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.sroa.01.16.i
  %.val.i = load i32, ptr %i.p, align 4, !alias.scope !25868, !noundef !56 ; 2 uses
  %i.q = icmp ult i32 %.val.i, %.val11.i
  br i1 %i.q, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %.lr.ph7.i
  %i.r = add nuw nsw i64 %.sroa.01.16.i, 1        ; 2 uses
  %exitcond14.not.i = icmp eq i64 %i.r, %i.h
  br i1 %exitcond14.not.i, label %.loopexit, label %.lr.ph7.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.l, %bb.i, %.invoke153, %.invoke, %bb.g
  %lpad.loopexit.split-lp195 = landingpad { ptr, i32 }
          cleanup
  %.val = load i64, ptr %i.a, align 8             ; 2 uses
  %i.s = icmp eq i64 %.val, 0
  br i1 %i.s, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit33, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i32

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i32: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val29 = load ptr, ptr %i.b, align 8, !nonnull !56, !noundef !56
  %i.t = shl nuw i64 %.val, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val29, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit33

.loopexit:                                        ; preds = %bb.c, %.lr.ph.i, %bb.d, %.lr.ph7.i, %.preheader.i, %.preheader1.i, %.lr.ph56
  %.sroa.4.0.i = phi i1 [ false, %.lr.ph56 ], [ true, %.preheader.i ], [ true, %bb.d ], [ false, %.preheader1.i ], [ true, %.lr.ph7.i ], [ false, %.lr.ph.i ], [ false, %bb.c ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %i.h, %.lr.ph56 ], [ 2, %.preheader.i ], [ %i.h, %bb.d ], [ 2, %.preheader1.i ], [ %.sroa.01.16.i, %.lr.ph7.i ], [ %i.h, %bb.c ], [ %.sroa.01.03.i, %.lr.ph.i ] ; 7 uses
  %i.u = add i64 %.sroa.0.0.i, %.sroa.02.054      ; 8 uses
  %i.v = icmp eq i64 %.sroa.02.054, 0
  %i.w = icmp eq i64 %i.u, %1
  %or.cond = and i1 %i.v, %i.w
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.loopexit
  %. = zext i1 %.sroa.4.0.i to i8
  br label %.loopexit7

bb.f:                                             ; preds = %.loopexit
  br i1 %.sroa.4.0.i, label %bb.j, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit

_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i, %middle.block, %bb.k, %bb.f
  %3 = icmp uge i64 %i.u, %.sroa.02.054
  %4 = icmp ule i64 %i.u, %1
  %or.cond.i = and i1 %3, %4
  br i1 %or.cond.i, label %bb.h, label %bb.g, !prof !109

bb.g:                                             ; preds = %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @586, i64 noundef 44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @587) #60
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit
  %i.x = icmp samesign ult i64 %.sroa.0.0.i, 10
  %i.y = icmp samesign ult i64 %i.u, %1
  %or.cond3.i = and i1 %i.x, %i.y
  br i1 %or.cond3.i, label %bb.i, label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNvYBX_NtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2ltECskcxRuJ53GpR_9rustworkx.exit

bb.i:                                             ; preds = %bb.h
  %i.z = add nuw nsw i64 %.sroa.02.054, 10
  %i.aa = tail call i64 @llvm.umin.i64(i64 %i.z, i64 range(i64 0, 2305843009213693952) %1) ; 2 uses
  %i.ab = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 1)
  %i.ac = sub i64 %i.aa, %.sroa.02.054            ; 2 uses
  invoke fastcc void @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort25insertion_sort_shift_leftNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNvYB12_NtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2ltECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 4 %i.i, i64 noundef %i.ac, i64 noundef %i.ab) #62
          to label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNvYBX_NtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2ltECskcxRuJ53GpR_9rustworkx.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.f
  %5 = icmp ult i64 %i.u, %.sroa.02.054
  %.not = icmp ugt i64 %i.u, %1
  %or.cond27 = or i1 %5, %.not
  br i1 %or.cond27, label %.invoke, label %bb.k, !prof !76

bb.k:                                             ; preds = %bb.j
  %i.ad = lshr i64 %.sroa.0.0.i, 1                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25869)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25870)
  %.not.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i: ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.sroa.0.0.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %.sroa.0.0.i, 16
  br i1 %min.iters.check, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i
  %n.vec = and i64 %i.ad, 4611686018427387896     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.af = xor i64 %index, -1
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index ; 3 uses
  %i.ah = getelementptr [4 x i8], ptr %i.ae, i64 %i.af ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ag, align 4, !alias.scope !25869
  %wide.load185 = load <4 x i32>, ptr %i.ai, align 4, !alias.scope !25869
  %i.aj = getelementptr i8, ptr %i.ah, i64 -12    ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ah, i64 -28    ; 2 uses
  %wide.load186 = load <4 x i32>, ptr %i.aj, align 4, !alias.scope !25870
  %wide.load187 = load <4 x i32>, ptr %i.ak, align 4, !alias.scope !25870
  %reverse = shufflevector <4 x i32> %wide.load186, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse188 = shufflevector <4 x i32> %wide.load187, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %i.ag, align 4, !alias.scope !25869
  store <4 x i32> %reverse188, ptr %i.ai, align 4, !alias.scope !25869
  %reverse189 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse190 = shufflevector <4 x i32> %wide.load185, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse189, ptr %i.aj, align 4, !alias.scope !25870
  store <4 x i32> %reverse190, ptr %i.ak, align 4, !alias.scope !25870
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !25851

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i, %middle.block
  %.sroa.0.016.i.ph = phi i64 [ 0, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i
  %.sroa.0.016.i = phi i64 [ %i.ar, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i ], [ %.sroa.0.016.i.ph, %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader ] ; 3 uses
  %i.am = xor i64 %.sroa.0.016.i, -1
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.sroa.0.016.i ; 2 uses
  %i.ao = getelementptr [4 x i8], ptr %i.ae, i64 %i.am ; 2 uses
  %i.ap = load i32, ptr %i.an, align 4, !alias.scope !25869, !noundef !56
  %i.aq = load i32, ptr %i.ao, align 4, !alias.scope !25870
  store i32 %i.aq, ptr %i.an, align 4, !alias.scope !25869
  store i32 %i.ap, ptr %i.ao, align 4, !alias.scope !25870
  %i.ar = add nuw nsw i64 %.sroa.0.016.i, 1       ; 2 uses
  %exitcond.not.i36 = icmp eq i64 %i.ar, %i.ad
  br i1 %exitcond.not.i36, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndex12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i, !llvm.loop !25852

_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNvYBX_NtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2ltECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.h, %bb.i
  %.pre-phi = phi i64 [ %i.ac, %bb.i ], [ %.sroa.0.0.i, %bb.h ]
  %.sroa.0.0.i34 = phi i64 [ %i.aa, %bb.i ], [ %i.u, %bb.h ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25871)
  %i.as = load i64, ptr %i.a, align 8, !range !59, !alias.scope !25871, !noundef !56
  %i.at = icmp eq i64 %i.g, %i.as
  br i1 %i.at, label %bb.l, label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit

bb.l:                                             ; preds = %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNvYBX_NtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2ltECskcxRuJ53GpR_9rustworkx.exit
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #62
          to label %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge: ; preds = %bb.l
  %.pre = load ptr, ptr %i.b, align 8, !alias.scope !25871
  br label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit

_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit: ; preds = %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNvYBX_NtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2ltECskcxRuJ53GpR_9rustworkx.exit
  %i.au = phi ptr [ %.pre, %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge ], [ %i.f, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNvYBX_NtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2ltECskcxRuJ53GpR_9rustworkx.exit ] ; 6 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.g ; 2 uses
  store i64 %.pre-phi, ptr %i.av, align 8, !noalias !25871
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 %.sroa.02.054, ptr %i.aw, align 8, !noalias !25871
  %i.ax = add i64 %i.g, 1                         ; 3 uses
  %i.ay = icmp samesign ugt i64 %i.ax, 1
  br i1 %i.ay, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit
  %storemerge47 = phi i64 [ %i.ea, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit ], [ %i.ax, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit ] ; 14 uses
  %i.az = getelementptr [16 x i8], ptr %i.au, i64 %storemerge47 ; 5 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 -16
  %i.bb = getelementptr i8, ptr %i.az, i64 -8
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !25872, !noundef !56
  %i.bd = load i64, ptr %i.ba, align 8, !alias.scope !25872, !noundef !56 ; 4 uses
  %i.be = add i64 %i.bd, %i.bc
  %i.bf = icmp eq i64 %i.be, %1
  br i1 %i.bf, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.bg = getelementptr i8, ptr %i.az, i64 -32
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !25872, !noundef !56 ; 3 uses
  %.not.i40 = icmp ugt i64 %i.bh, %i.bd
  br i1 %.not.i40, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.not14.i = icmp eq i64 %storemerge47, 2
  br i1 %.not14.i, label %._crit_edge, label %bb.q

bb.o:                                             ; preds = %bb.m, %.lr.ph
  %.not17.i = icmp eq i64 %storemerge47, 2
  br i1 %.not17.i, label %bb.s, label %.thread.i

bb.p:                                             ; preds = %bb.q
  %i.bi = icmp samesign ugt i64 %storemerge47, 3
  br i1 %i.bi, label %bb.r, label %._crit_edge

bb.q:                                             ; preds = %bb.n
  %i.bj = getelementptr i8, ptr %i.az, i64 -48
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !25872, !noundef !56 ; 2 uses
  %i.bl = add i64 %i.bh, %i.bd
  %.not15.i = icmp ugt i64 %i.bk, %i.bl
  br i1 %.not15.i, label %bb.p, label %.thread.i

bb.r:                                             ; preds = %bb.p
  %i.bm = getelementptr i8, ptr %i.az, i64 -64
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !25872, !noundef !56
  %i.bo = add i64 %i.bk, %i.bh
  %.not16.i = icmp ugt i64 %i.bn, %i.bo
  br i1 %.not16.i, label %._crit_edge, label %.thread.i

bb.s:                                             ; preds = %.thread.i, %bb.o
  %i.bp = add nsw i64 %storemerge47, -2
  br label %bb.t

.thread.i:                                        ; preds = %bb.o, %bb.r, %bb.q
  %i.bq = add nsw i64 %storemerge47, -3           ; 2 uses
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.bq
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !25872, !noundef !56
  %i.bt = icmp ult i64 %i.bs, %i.bd
  br i1 %i.bt, label %bb.t, label %bb.s

._crit_edge:                                      ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit, %bb.n, %bb.p, %bb.r, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit
  %storemerge.lcssa = phi i64 [ %i.ax, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit ], [ %storemerge47, %bb.r ], [ 3, %bb.p ], [ 2, %bb.n ], [ 1, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit ] ; 2 uses
  store i64 %storemerge.lcssa, ptr %i.c, align 8
  %i.bu = icmp ult i64 %.sroa.0.0.i34, %1
  br i1 %i.bu, label %.lr.ph56, label %.loopexit7

bb.t:                                             ; preds = %bb.s, %.thread.i
  %.sroa.4.0.i38.ph = phi i64 [ %i.bq, %.thread.i ], [ %i.bp, %bb.s ] ; 5 uses
  %i.bv = icmp ult i64 %.sroa.4.0.i38.ph, %storemerge47
  br i1 %i.bv, label %bb.u, label %.invoke153

bb.u:                                             ; preds = %bb.t
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %.sroa.4.0.i38.ph ; 4 uses
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !56 ; 7 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !noundef !56 ; 5 uses
  %i.ca = add nuw nsw i64 %.sroa.4.0.i38.ph, 1    ; 3 uses
  %i.cb = icmp ult i64 %i.ca, %storemerge47
  br i1 %i.cb, label %bb.v, label %.invoke153

bb.v:                                             ; preds = %bb.u
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.ca ; 3 uses
  %i.cd = load i64, ptr %i.cc, align 8, !noundef !56 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !noundef !56
  %i.cg = add i64 %i.cf, %i.cd                    ; 5 uses
  %i.ch = icmp ult i64 %i.cg, %i.bz
  %.not26 = icmp ugt i64 %i.cg, %1
  %or.cond28 = or i1 %i.ch, %.not26
  br i1 %or.cond28, label %.invoke, label %bb.w, !prof !76

.invoke153:                                       ; preds = %bb.u, %bb.t
  %i.ci = phi i64 [ %.sroa.4.0.i38.ph, %bb.t ], [ %i.ca, %bb.u ]
  %i.cj = phi ptr [ @575, %bb.t ], [ @576, %bb.u ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.ci, i64 noundef %storemerge47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cj) #61
          to label %.cont154 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont154:                                         ; preds = %.invoke153
  unreachable

.invoke:                                          ; preds = %bb.j, %bb.v
  %i.ck = phi i64 [ %i.bz, %bb.v ], [ %.sroa.02.054, %bb.j ]
  %i.cl = phi i64 [ %i.cg, %bb.v ], [ %i.u, %bb.j ]
  %i.cm = phi ptr [ @577, %bb.v ], [ @578, %bb.j ]
  invoke void @_RNvNtNtCslwFuT2d6ECx_4core5slice5index16slice_index_fail(i64 noundef %i.ck, i64 noundef %i.cl, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cm) #61
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.cn = sub nuw i64 %i.cg, %i.bz                ; 3 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bz ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25873)
  %.idx30.i = shl nuw nsw i64 %i.bx, 2            ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %.idx30.i ; 4 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cg ; 2 uses
  %i.cr = sub i64 %i.cn, %i.bx                    ; 2 uses
  %.not.i41 = icmp ugt i64 %i.bx, %i.cr
  br i1 %.not.i41, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cs = shl nuw nsw i64 %i.cr, 2                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr nonnull align 4 %i.cp, i64 %i.cs, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 %i.cs ; 2 uses
  %.not32.i = icmp eq i64 %i.cn, %i.bx
  br i1 %.not32.i, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit, label %.lr.ph27.i

bb.y:                                             ; preds = %bb.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr nonnull align 4 %i.co, i64 %.idx30.i, i1 false)
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 %.idx30.i ; 3 uses
  %i.cv = icmp ne i64 %i.bx, 0
  %i.cw = icmp samesign ult i64 %i.bx, %i.cn
  %or.cond3018.i = select i1 %i.cv, i1 %i.cw, i1 false
  br i1 %or.cond3018.i, label %.lr.ph.i42, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit

.lr.ph27.i:                                       ; preds = %bb.x, %.lr.ph27.i
  %.sroa.08.026.i = phi ptr [ %i.dd, %.lr.ph27.i ], [ %i.cq, %bb.x ]
  %.sroa.10.025.i = phi ptr [ %i.dc, %.lr.ph27.i ], [ %i.ct, %bb.x ] ; 2 uses
  %.sroa.18.024.i = phi ptr [ %i.da, %.lr.ph27.i ], [ %i.cp, %bb.x ] ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %.sroa.10.025.i, i64 -4
  %i.cy = getelementptr inbounds i8, ptr %.sroa.18.024.i, i64 -4
  %.val31.i = load i32, ptr %i.cx, align 4, !noalias !25873, !noundef !56
  %.val32.i = load i32, ptr %i.cy, align 4, !alias.scope !25873, !noundef !56
  %i.cz = icmp ult i32 %.val31.i, %.val32.i       ; 3 uses
  %.neg.i = sext i1 %i.cz to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %.sroa.18.024.i, i64 %.neg.i ; 4 uses
  %i.db = xor i1 %i.cz, true
  %.neg29.i = sext i1 %i.db to i64
  %i.dc = getelementptr inbounds [4 x i8], ptr %.sroa.10.025.i, i64 %.neg29.i ; 4 uses
  %.sroa.020.0.i = select i1 %i.cz, ptr %i.da, ptr %i.dc
  %i.dd = getelementptr inbounds i8, ptr %.sroa.08.026.i, i64 -4 ; 2 uses
  %i.de = load i32, ptr %.sroa.020.0.i, align 4
  store i32 %i.de, ptr %i.dd, align 4, !alias.scope !25873
  %i.df = icmp ult ptr %i.co, %i.da
  %i.dg = icmp ult ptr %2, %i.dc
  %or.cond.i44 = select i1 %i.df, i1 %i.dg, i1 false
  br i1 %or.cond.i44, label %.lr.ph27.i, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit

.lr.ph.i42:                                       ; preds = %bb.y, %.lr.ph.i42
  %.sroa.0.021.i = phi ptr [ %i.dl, %.lr.ph.i42 ], [ %i.cp, %bb.y ] ; 2 uses
  %.sroa.0.120.i = phi ptr [ %i.do, %.lr.ph.i42 ], [ %2, %bb.y ] ; 2 uses
  %.sroa.18.219.i = phi ptr [ %i.dj, %.lr.ph.i42 ], [ %i.co, %bb.y ] ; 2 uses
  %.sroa.0.0.val.i = load i32, ptr %.sroa.0.021.i, align 4, !alias.scope !25873, !noundef !56 ; 2 uses
  %.val.i43 = load i32, ptr %.sroa.0.120.i, align 4, !noalias !25873, !noundef !56 ; 2 uses
  %i.dh = icmp ult i32 %.sroa.0.0.val.i, %.val.i43 ; 2 uses
  %i.di = tail call i32 @llvm.umin.i32(i32 %.sroa.0.0.val.i, i32 %.val.i43)
  store i32 %i.di, ptr %.sroa.18.219.i, align 4, !alias.scope !25873
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.18.219.i, i64 4 ; 2 uses
  %i.dk = zext i1 %i.dh to i64
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.021.i, i64 %i.dk ; 2 uses
  %i.dm = xor i1 %i.dh, true
  %i.dn = zext i1 %i.dm to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.120.i, i64 %i.dn ; 3 uses
  %i.dp = icmp ult ptr %i.do, %i.cu
  %i.dq = icmp ult ptr %i.dl, %i.cq
  %or.cond30.i = select i1 %i.dp, i1 %i.dq, i1 false
  br i1 %or.cond30.i, label %.lr.ph.i42, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit: ; preds = %.lr.ph.i42, %.lr.ph27.i, %bb.y, %bb.x
  %.sroa.18.1.i = phi ptr [ %i.da, %.lr.ph27.i ], [ %i.cp, %bb.x ], [ %i.co, %bb.y ], [ %i.dj, %.lr.ph.i42 ]
  %.sroa.10.1.i = phi ptr [ %i.dc, %.lr.ph27.i ], [ %i.ct, %bb.x ], [ %i.cu, %bb.y ], [ %i.cu, %.lr.ph.i42 ]
  %.sroa.0.015.i = phi ptr [ %2, %.lr.ph27.i ], [ %2, %bb.x ], [ %2, %bb.y ], [ %i.do, %.lr.ph.i42 ] ; 2 uses
  %i.dr = ptrtoint ptr %.sroa.10.1.i to i64
  %i.ds = ptrtoint ptr %.sroa.0.015.i to i64
  %i.dt = sub i64 %i.dr, %i.ds
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.18.1.i, ptr align 4 %.sroa.0.015.i, i64 %i.dt, i1 false), !noalias !25874
  %i.du = add i64 %i.cd, %i.bx
  store i64 %i.du, ptr %i.cc, align 8
  store i64 %i.bz, ptr %i.ce, align 8
  %i.dv = icmp samesign ult i64 %storemerge47, 576460752303423488
  tail call void @llvm.assume(i1 %i.dv)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.dx = xor i64 %.sroa.4.0.i38.ph, -1
  %i.dy = add nsw i64 %storemerge47, %i.dx
  %i.dz = shl nuw nsw i64 %i.dy, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bw, ptr nonnull align 8 %i.dw, i64 %i.dz, i1 false), !noalias !25875
  %i.ea = add nsw i64 %storemerge47, -1
  %i.eb = icmp samesign ugt i64 %storemerge47, 2
  br i1 %i.eb, label %.lr.ph, label %._crit_edge

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit33: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i32, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp195
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort10merge_sortjNCINvYSjINtB4_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB2q_11Vf2ppSorterINtB2q_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0EB2u_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noundef %2, ptr nofree readonly captures(none) %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.c, align 8
  %.not254 = icmp eq i64 %1, 0
  br i1 %.not254, label %.loopexit7, label %.lr.ph253

.lr.ph253:                                        ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.0.val, i64 8     ; 3 uses
  br label %bb.b

.loopexit7:                                       ; preds = %._crit_edge, %bb.a, %bb.l
  %.sroa.0.0 = phi i8 [ %., %bb.l ], [ 2, %bb.a ], [ 2, %._crit_edge ]
  %.val30 = load i64, ptr %i.a, align 8           ; 2 uses
  %i.e = icmp eq i64 %.val30, 0
  br i1 %i.e, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i: ; preds = %.loopexit7
  %.val31 = load ptr, ptr %i.b, align 8, !nonnull !56, !noundef !56
  %i.f = shl nuw i64 %.val30, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val31, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 8) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %.loopexit7, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i8 %.sroa.0.0

bb.b:                                             ; preds = %.lr.ph253, %._crit_edge
  %i.g = phi ptr [ inttoptr (i64 8 to ptr), %.lr.ph253 ], [ %i.dc, %._crit_edge ]
  %i.h = phi i64 [ 0, %.lr.ph253 ], [ %storemerge.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.02.0251 = phi i64 [ 0, %.lr.ph253 ], [ %.sroa.0.0.i48, %._crit_edge ] ; 10 uses
  %i.i = sub nuw nsw i64 %1, %.sroa.02.0251       ; 7 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.02.0251 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25922)
  %i.k = icmp samesign ult i64 %i.i, 2
  br i1 %i.k, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val17.i = load i64, ptr %i.l, align 8, !alias.scope !25922, !noundef !56 ; 9 uses
  %.val18.i = load i64, ptr %i.j, align 8, !alias.scope !25922 ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val3.i.i = load ptr, ptr %.0.val, align 8, !noalias !25922, !nonnull !56, !align !82, !noundef !56 ; 2 uses
  %.val4.i.i = load ptr, ptr %i.d, align 8, !noalias !25922 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val3.i.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !25923, !noundef !56 ; 12 uses
  %i.o = icmp ult i64 %.val17.i, %i.n
  br i1 %i.o, label %bb.d, label %.invoke

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i.i) ]
  %i.p = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noalias !25923, !noundef !56 ; 12 uses
  %i.r = icmp ult i64 %.val17.i, %i.q
  br i1 %i.r, label %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i.i, label %.invoke

_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i.i: ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !noalias !25923, !nonnull !56, !noundef !56 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val3.i.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !noalias !25923, !nonnull !56, !noundef !56 ; 6 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.val17.i
  %i.x = load i64, ptr %i.w, align 8, !noalias !25923, !noundef !56 ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.val17.i
  %i.z = load i64, ptr %i.y, align 8, !noalias !25923, !noundef !56 ; 2 uses
  %i.aa = icmp ult i64 %.val18.i, %i.n
  br i1 %i.aa, label %bb.e, label %.invoke

bb.e:                                             ; preds = %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i.i
  %i.ab = icmp ult i64 %.val18.i, %i.q
  br i1 %i.ab, label %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0B24_.exit.i, label %.invoke

_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0B24_.exit.i: ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.val18.i
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !25924, !noundef !56 ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.val18.i
  %i.af = load i64, ptr %i.ae, align 8, !noalias !25924, !noundef !56 ; 2 uses
  %i.ag = icmp eq i64 %i.x, %i.ad
  %i.ah = icmp ult i64 %i.x, %i.ad
  %i.ai = icmp eq i64 %i.z, %i.af
  %i.aj = icmp ult i64 %i.z, %i.af
  %i.ak = icmp ult i64 %.val18.i, %.val17.i
  %spec.select.i.i = select i1 %i.ai, i1 %i.ak, i1 %i.aj
  %.sroa.0.1.in.i.i.i = select i1 %i.ag, i1 %spec.select.i.i, i1 %i.ah
  %.not29.i = icmp eq i64 %i.i, 2                 ; 2 uses
  br i1 %.sroa.0.1.in.i.i.i, label %.preheader.i, label %.preheader1.i

.preheader1.i:                                    ; preds = %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0B24_.exit.i
  br i1 %.not29.i, label %.loopexit, label %.lr.ph.i

.preheader.i:                                     ; preds = %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0B24_.exit.i
  br i1 %.not29.i, label %.loopexit, label %.lr.ph26.i

.lr.ph.i:                                         ; preds = %.preheader1.i, %bb.h
  %.val15.i = phi i64 [ %.val14.i, %bb.h ], [ %.val17.i, %.preheader1.i ] ; 7 uses
  %.sroa.01.023.i = phi i64 [ %i.bd, %bb.h ], [ 2, %.preheader1.i ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.01.023.i
  %.val14.i = load i64, ptr %i.al, align 8, !alias.scope !25922, !noundef !56 ; 8 uses
  %i.am = icmp ult i64 %.val14.i, %i.n
  br i1 %i.am, label %bb.f, label %.invoke

bb.f:                                             ; preds = %.lr.ph.i
  %i.an = icmp ult i64 %.val14.i, %i.q
  br i1 %i.an, label %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i21.i, label %.invoke

_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i21.i: ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.val14.i
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !25925, !noundef !56 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.val14.i
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !25925, !noundef !56 ; 2 uses
  %i.as = icmp ult i64 %.val15.i, %i.n
  br i1 %i.as, label %bb.g, label %.invoke

bb.g:                                             ; preds = %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i21.i
  %i.at = icmp ult i64 %.val15.i, %i.q
  br i1 %i.at, label %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0B24_.exit24.i, label %.invoke

_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0B24_.exit24.i: ; preds = %bb.g
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.val15.i
  %i.av = load i64, ptr %i.au, align 8, !noalias !25926, !noundef !56 ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.val15.i
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !25926, !noundef !56 ; 2 uses
  %i.ay = icmp eq i64 %i.ap, %i.av
  %i.az = icmp ult i64 %i.ap, %i.av
  %i.ba = icmp eq i64 %i.ar, %i.ax
  %i.bb = icmp ult i64 %i.ar, %i.ax
  %i.bc = icmp ult i64 %.val15.i, %.val14.i
  %spec.select.i22.i = select i1 %i.ba, i1 %i.bc, i1 %i.bb
  %.sroa.0.1.in.i.i23.i = select i1 %i.ay, i1 %spec.select.i22.i, i1 %i.az
  br i1 %.sroa.0.1.in.i.i23.i, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0B24_.exit24.i
  %i.bd = add nuw nsw i64 %.sroa.01.023.i, 1      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bd, %i.i
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph26.i:                                       ; preds = %.preheader.i, %bb.k
  %.val12.i = phi i64 [ %.val11.i, %bb.k ], [ %.val17.i, %.preheader.i ] ; 7 uses
  %.sroa.01.125.i = phi i64 [ %i.bz, %bb.k ], [ 2, %.preheader.i ] ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.01.125.i
  %.val11.i = load i64, ptr %i.be, align 8, !alias.scope !25922, !noundef !56 ; 8 uses
  %i.bf = icmp ult i64 %.val11.i, %i.n
  br i1 %i.bf, label %bb.i, label %.invoke

bb.i:                                             ; preds = %.lr.ph26.i
  %i.bg = icmp ult i64 %.val11.i, %i.q
  br i1 %i.bg, label %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i27.i, label %.invoke

_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i27.i: ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.val11.i
  %i.bi = load i64, ptr %i.bh, align 8, !noalias !25927, !noundef !56 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.val11.i
  %i.bk = load i64, ptr %i.bj, align 8, !noalias !25927, !noundef !56 ; 2 uses
  %i.bl = icmp ult i64 %.val12.i, %i.n
  br i1 %i.bl, label %bb.j, label %.invoke

bb.j:                                             ; preds = %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i27.i
  %i.bm = icmp ult i64 %.val12.i, %i.q
  br i1 %i.bm, label %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0B24_.exit30.i, label %.invoke

.invoke:                                          ; preds = %bb.e, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i.i, %bb.d, %bb.c, %bb.g, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i21.i, %bb.f, %.lr.ph.i, %bb.j, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i27.i, %bb.i, %.lr.ph26.i
  %i.bn = phi i64 [ %.val15.i, %bb.g ], [ %.val12.i, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i27.i ], [ %.val11.i, %bb.i ], [ %.val11.i, %.lr.ph26.i ], [ %.val12.i, %bb.j ], [ %.val15.i, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i21.i ], [ %.val14.i, %bb.f ], [ %.val14.i, %.lr.ph.i ], [ %.val18.i, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i.i ], [ %.val17.i, %bb.d ], [ %.val17.i, %bb.c ], [ %.val18.i, %bb.e ]
  %i.bo = phi i64 [ %i.q, %bb.g ], [ %i.n, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i27.i ], [ %i.q, %bb.i ], [ %i.n, %.lr.ph26.i ], [ %i.q, %bb.j ], [ %i.n, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i21.i ], [ %i.q, %bb.f ], [ %i.n, %.lr.ph.i ], [ %i.n, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i.i ], [ %i.q, %bb.d ], [ %i.n, %bb.c ], [ %i.q, %bb.e ]
  %i.bp = phi ptr [ @1472, %bb.g ], [ @1471, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i27.i ], [ @1472, %bb.i ], [ @1471, %.lr.ph26.i ], [ @1472, %bb.j ], [ @1471, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i21.i ], [ @1472, %bb.f ], [ @1471, %.lr.ph.i ], [ @1471, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i.i ], [ @1472, %bb.d ], [ @1471, %bb.c ], [ @1472, %bb.e ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.bn, i64 noundef %i.bo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bp) #60
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0B24_.exit30.i: ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.val12.i
  %i.br = load i64, ptr %i.bq, align 8, !noalias !25928, !noundef !56 ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.val12.i
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !25928, !noundef !56 ; 2 uses
  %i.bu = icmp eq i64 %i.bi, %i.br
  %i.bv = icmp ult i64 %i.bi, %i.br
  %i.bw = icmp eq i64 %i.bk, %i.bt
  %i.bx = icmp ult i64 %i.bk, %i.bt
  %i.by = icmp ult i64 %.val12.i, %.val11.i
  %spec.select.i28.i = select i1 %i.bw, i1 %i.by, i1 %i.bx
  %.sroa.0.1.in.i.i29.i = select i1 %i.bu, i1 %spec.select.i28.i, i1 %i.bv
  br i1 %.sroa.0.1.in.i.i29.i, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0B24_.exit30.i
  %i.bz = add nuw nsw i64 %.sroa.01.125.i, 1      ; 2 uses
  %exitcond48.not.i = icmp eq i64 %i.bz, %i.i
  br i1 %exitcond48.not.i, label %.loopexit, label %.lr.ph26.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.s, %bb.p, %.invoke744.a, %.invoke742, %.invoke, %bb.n
  %lpad.loopexit.split-lp913 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ao
  %eh.lpad-body = phi { ptr, i32 } [ %i.ib, %bb.ao ], [ %lpad.loopexit.split-lp913, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.val = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ca = icmp eq i64 %.val, 0
  br i1 %i.ca, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit47, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i46

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i46: ; preds = %.body
  %.val29 = load ptr, ptr %i.b, align 8, !nonnull !56, !noundef !56
  %i.cb = shl nuw i64 %.val, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val29, i64 noundef %i.cb, i64 noundef range(i64 1, -9223372036854775807) 8) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit47

.loopexit:                                        ; preds = %bb.h, %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0B24_.exit24.i, %bb.k, %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0B24_.exit30.i, %.preheader.i, %.preheader1.i, %bb.b
  %.sroa.4.0.i = phi i1 [ false, %bb.b ], [ true, %.preheader.i ], [ true, %bb.k ], [ false, %.preheader1.i ], [ true, %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0B24_.exit30.i ], [ false, %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0B24_.exit24.i ], [ false, %bb.h ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %i.i, %bb.b ], [ 2, %.preheader.i ], [ %i.i, %bb.k ], [ 2, %.preheader1.i ], [ %.sroa.01.125.i, %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0B24_.exit30.i ], [ %i.i, %bb.h ], [ %.sroa.01.023.i, %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0B24_.exit24.i ] ; 7 uses
  %i.cc = add i64 %.sroa.0.0.i, %.sroa.02.0251    ; 8 uses
  %i.cd = icmp eq i64 %.sroa.02.0251, 0
  %i.ce = icmp eq i64 %i.cc, %1
  %or.cond = and i1 %i.cd, %i.ce
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.loopexit
  %. = zext i1 %.sroa.4.0.i to i8
  br label %.loopexit7

bb.m:                                             ; preds = %.loopexit
  br i1 %.sroa.4.0.i, label %bb.q, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapjECskcxRuJ53GpR_9rustworkx.exit

_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapjECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i, %middle.block, %bb.r, %bb.m
  %3 = icmp uge i64 %i.cc, %.sroa.02.0251
  %4 = icmp ule i64 %i.cc, %1
  %or.cond.i = and i1 %3, %4
  br i1 %or.cond.i, label %bb.o, label %bb.n, !prof !109

bb.n:                                             ; preds = %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapjECskcxRuJ53GpR_9rustworkx.exit
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @586, i64 noundef 44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @587) #60
          to label %.noexc49 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc49:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapjECskcxRuJ53GpR_9rustworkx.exit
  %i.cf = icmp samesign ult i64 %.sroa.0.0.i, 10
  %i.cg = icmp samesign ult i64 %i.cc, %1
  %or.cond3.i = and i1 %i.cf, %i.cg
  br i1 %or.cond3.i, label %bb.p, label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchjNCINvYSjINtB4_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB2A_11Vf2ppSorterINtB2A_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0EB2E_.exit

bb.p:                                             ; preds = %bb.o
  %i.ch = add nuw nsw i64 %.sroa.02.0251, 10
  %i.ci = tail call i64 @llvm.umin.i64(i64 %i.ch, i64 range(i64 1, 1152921504606846976) %1) ; 2 uses
  %i.cj = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 1)
  %i.ck = sub nsw i64 %i.ci, %.sroa.02.0251       ; 2 uses
  invoke fastcc void @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort25insertion_sort_shift_leftjNCINvYSjINtB4_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB2F_11Vf2ppSorterINtB2F_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0EB2J_(ptr noalias nofree noundef nonnull align 8 %i.j, i64 noundef %i.ck, i64 noundef %i.cj, ptr readonly %.0.val) #62
          to label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchjNCINvYSjINtB4_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB2A_11Vf2ppSorterINtB2A_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0EB2E_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.m
  %5 = icmp ult i64 %i.cc, %.sroa.02.0251
  %.not = icmp ugt i64 %i.cc, %1
  %or.cond27 = or i1 %5, %.not
  br i1 %or.cond27, label %.invoke742, label %bb.r, !prof !76

bb.r:                                             ; preds = %bb.q
  %i.cl = lshr i64 %.sroa.0.0.i, 1                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25929)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25930)
  %.not.i = icmp eq i64 %i.cl, 0
  br i1 %.not.i, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapjECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i: ; preds = %bb.r
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.0.0.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %.sroa.0.0.i, 8
  br i1 %min.iters.check, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i
  %n.vec = and i64 %i.cl, 4611686018427387900     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cn = xor i64 %index, -1
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %index ; 3 uses
  %i.cp = getelementptr [8 x i8], ptr %i.cm, i64 %i.cn ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.co, align 8, !alias.scope !25929
  %wide.load889 = load <2 x i64>, ptr %i.cq, align 8, !alias.scope !25929
  %i.cr = getelementptr i8, ptr %i.cp, i64 -8     ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cp, i64 -24    ; 2 uses
  %wide.load890 = load <2 x i64>, ptr %i.cr, align 8, !alias.scope !25930
  %wide.load891 = load <2 x i64>, ptr %i.cs, align 8, !alias.scope !25930
  %reverse = shufflevector <2 x i64> %wide.load890, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse892 = shufflevector <2 x i64> %wide.load891, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.co, align 8, !alias.scope !25929
  store <2 x i64> %reverse892, ptr %i.cq, align 8, !alias.scope !25929
  %reverse893 = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse894 = shufflevector <2 x i64> %wide.load889, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse893, ptr %i.cr, align 8, !alias.scope !25930
  store <2 x i64> %reverse894, ptr %i.cs, align 8, !alias.scope !25930
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ct = icmp eq i64 %index.next, %n.vec
  br i1 %i.ct, label %middle.block, label %vector.body, !llvm.loop !25893

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cl, %n.vec
  br i1 %cmp.n, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapjECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader

_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i, %middle.block
  %.sroa.0.016.i.ph = phi i64 [ 0, %_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader, %_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i
  %.sroa.0.016.i = phi i64 [ %i.cz, %_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i ], [ %.sroa.0.016.i.ph, %_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader ] ; 3 uses
  %i.cu = xor i64 %.sroa.0.016.i, -1
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.0.016.i ; 2 uses
  %i.cw = getelementptr [8 x i8], ptr %i.cm, i64 %i.cu ; 2 uses
  %i.cx = load i64, ptr %i.cv, align 8, !alias.scope !25929, !noundef !56
  %i.cy = load i64, ptr %i.cw, align 8, !alias.scope !25930
  store i64 %i.cy, ptr %i.cv, align 8, !alias.scope !25929
  store i64 %i.cx, ptr %i.cw, align 8, !alias.scope !25930
  %i.cz = add nuw nsw i64 %.sroa.0.016.i, 1       ; 2 uses
  %exitcond.not.i51 = icmp eq i64 %i.cz, %i.cl
  br i1 %exitcond.not.i51, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapjECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i, !llvm.loop !25894

_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchjNCINvYSjINtB4_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB2A_11Vf2ppSorterINtB2A_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0EB2E_.exit: ; preds = %bb.o, %bb.p
  %.pre-phi = phi i64 [ %i.ck, %bb.p ], [ %.sroa.0.0.i, %bb.o ]
  %.sroa.0.0.i48 = phi i64 [ %i.ci, %bb.p ], [ %i.cc, %bb.o ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25931)
  %i.da = load i64, ptr %i.a, align 8, !range !59, !alias.scope !25931, !noundef !56
  %i.db = icmp eq i64 %i.h, %i.da
  br i1 %i.db, label %bb.s, label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit

bb.s:                                             ; preds = %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchjNCINvYSjINtB4_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB2A_11Vf2ppSorterINtB2A_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0EB2E_.exit
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #62
          to label %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge: ; preds = %bb.s
  %.pre = load ptr, ptr %i.b, align 8, !alias.scope !25931
  br label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit

_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit: ; preds = %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchjNCINvYSjINtB4_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB2A_11Vf2ppSorterINtB2A_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0EB2E_.exit
  %i.dc = phi ptr [ %.pre, %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge ], [ %i.g, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchjNCINvYSjINtB4_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB2A_11Vf2ppSorterINtB2A_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0EB2E_.exit ] ; 6 uses
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %i.h ; 2 uses
  store i64 %.pre-phi, ptr %i.dd, align 8, !noalias !25931
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i64 %.sroa.02.0251, ptr %i.de, align 8, !noalias !25931
  %i.df = add i64 %i.h, 1                         ; 3 uses
  %i.dg = icmp samesign ugt i64 %i.df, 1
  br i1 %i.dg, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit
  %storemerge244 = phi i64 [ %i.io, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit ], [ %i.df, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit ] ; 14 uses
  %i.dh = getelementptr [16 x i8], ptr %i.dc, i64 %storemerge244 ; 5 uses
  %i.di = getelementptr i8, ptr %i.dh, i64 -16
  %i.dj = getelementptr i8, ptr %i.dh, i64 -8
  %i.dk = load i64, ptr %i.dj, align 8, !alias.scope !25932, !noundef !56
  %i.dl = load i64, ptr %i.di, align 8, !alias.scope !25932, !noundef !56 ; 4 uses
  %i.dm = add i64 %i.dl, %i.dk
  %i.dn = icmp eq i64 %i.dm, %1
  br i1 %i.dn, label %bb.v, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.do = getelementptr i8, ptr %i.dh, i64 -32
  %i.dp = load i64, ptr %i.do, align 8, !alias.scope !25932, !noundef !56 ; 3 uses
  %.not.i55 = icmp ugt i64 %i.dp, %i.dl
  br i1 %.not.i55, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %.not14.i = icmp eq i64 %storemerge244, 2
  br i1 %.not14.i, label %._crit_edge, label %bb.x

bb.v:                                             ; preds = %bb.t, %.lr.ph
  %.not17.i = icmp eq i64 %storemerge244, 2
  br i1 %.not17.i, label %bb.z, label %.thread.i

bb.w:                                             ; preds = %bb.x
  %i.dq = icmp samesign ugt i64 %storemerge244, 3
  br i1 %i.dq, label %bb.y, label %._crit_edge

bb.x:                                             ; preds = %bb.u
  %i.dr = getelementptr i8, ptr %i.dh, i64 -48
  %i.ds = load i64, ptr %i.dr, align 8, !alias.scope !25932, !noundef !56 ; 2 uses
  %i.dt = add i64 %i.dp, %i.dl
  %.not15.i = icmp ugt i64 %i.ds, %i.dt
  br i1 %.not15.i, label %bb.w, label %.thread.i

bb.y:                                             ; preds = %bb.w
  %i.du = getelementptr i8, ptr %i.dh, i64 -64
  %i.dv = load i64, ptr %i.du, align 8, !alias.scope !25932, !noundef !56
  %i.dw = add i64 %i.ds, %i.dp
  %.not16.i = icmp ugt i64 %i.dv, %i.dw
  br i1 %.not16.i, label %._crit_edge, label %.thread.i

bb.z:                                             ; preds = %.thread.i, %bb.v
  %i.dx = add nsw i64 %storemerge244, -2
  br label %bb.aa

.thread.i:                                        ; preds = %bb.v, %bb.y, %bb.x
  %i.dy = add nsw i64 %storemerge244, -3          ; 2 uses
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %i.dy
  %i.ea = load i64, ptr %i.dz, align 8, !alias.scope !25932, !noundef !56
  %i.eb = icmp ult i64 %i.ea, %i.dl
  br i1 %i.eb, label %bb.aa, label %bb.z

._crit_edge:                                      ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit, %bb.u, %bb.w, %bb.y, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit
  %storemerge.lcssa = phi i64 [ %i.df, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit ], [ %storemerge244, %bb.y ], [ 3, %bb.w ], [ 2, %bb.u ], [ 1, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit ] ; 2 uses
  store i64 %storemerge.lcssa, ptr %i.c, align 8
  %i.ec = icmp samesign ult i64 %.sroa.0.0.i48, %1
  br i1 %i.ec, label %bb.b, label %.loopexit7

bb.aa:                                            ; preds = %bb.z, %.thread.i
  %.sroa.4.0.i53.ph = phi i64 [ %i.dy, %.thread.i ], [ %i.dx, %bb.z ] ; 5 uses
  %i.ed = icmp ult i64 %.sroa.4.0.i53.ph, %storemerge244
  br i1 %i.ed, label %bb.ab, label %.invoke744.a

bb.ab:                                            ; preds = %bb.aa
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %.sroa.4.0.i53.ph ; 4 uses
  %i.ef = load i64, ptr %i.ee, align 8, !noundef !56 ; 7 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eh = load i64, ptr %i.eg, align 8, !noundef !56 ; 5 uses
  %i.ei = add nuw nsw i64 %.sroa.4.0.i53.ph, 1    ; 3 uses
  %i.ej = icmp ult i64 %i.ei, %storemerge244
  br i1 %i.ej, label %bb.ac, label %.invoke744.a

bb.ac:                                            ; preds = %bb.ab
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %i.ei ; 3 uses
  %i.el = load i64, ptr %i.ek, align 8, !noundef !56 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 2 uses
  %i.en = load i64, ptr %i.em, align 8, !noundef !56
  %i.eo = add i64 %i.en, %i.el                    ; 5 uses
  %i.ep = icmp ult i64 %i.eo, %i.eh
  %.not26 = icmp ugt i64 %i.eo, %1
  %or.cond28 = or i1 %i.ep, %.not26
  br i1 %or.cond28, label %.invoke742, label %bb.ad, !prof !76

.invoke744.a:                                     ; preds = %bb.ab, %bb.aa
  %i.eq = phi i64 [ %.sroa.4.0.i53.ph, %bb.aa ], [ %i.ei, %bb.ab ]
  %i.er = phi ptr [ @575, %bb.aa ], [ @576, %bb.ab ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.eq, i64 noundef %storemerge244, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.er) #61
          to label %.cont745.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont745.a:                                       ; preds = %.invoke744.a
  unreachable

.invoke742:                                       ; preds = %bb.q, %bb.ac
  %i.es = phi i64 [ %i.eh, %bb.ac ], [ %.sroa.02.0251, %bb.q ]
  %i.et = phi i64 [ %i.eo, %bb.ac ], [ %i.cc, %bb.q ]
  %i.eu = phi ptr [ @577, %bb.ac ], [ @578, %bb.q ]
  invoke void @_RNvNtNtCslwFuT2d6ECx_4core5slice5index16slice_index_fail(i64 noundef %i.es, i64 noundef %i.et, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eu) #61
          to label %.cont743 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont743:                                         ; preds = %.invoke742
  unreachable

bb.ad:                                            ; preds = %bb.ac
  %i.ev = sub nuw i64 %i.eo, %i.eh                ; 3 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.eh ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25933)
  %.idx70.i = shl nuw nsw i64 %i.ef, 3            ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %.idx70.i ; 4 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.eo ; 2 uses
  %i.ez = sub i64 %i.ev, %i.ef                    ; 2 uses
end_hunk_7
begin_hunk_8_@_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort10merge_sortjNCINvYSjINtB4_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB2q_11Vf2ppSorterINtB2q_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0E0EB2u_:bb.a
  %i.fq = getelementptr inbounds i8, ptr %.sroa.18.064.i, i64 -8
  %.val33.i = load i64, ptr %i.fp, align 8, !noalias !25933, !noundef !56 ; 7 uses
  %.val34.i = load i64, ptr %i.fq, align 8, !alias.scope !25933 ; 7 uses
  %i.fr = icmp ult i64 %.val33.i, %i.fd
  br i1 %i.fr, label %bb.ah, label %.invoke897.a

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i.i59) ]
  %i.fs = load i64, ptr %i.fe, align 8, !noalias !25934, !noundef !56 ; 4 uses
  %i.ft = icmp ult i64 %.val33.i, %i.fs
  br i1 %i.ft, label %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i.i60, label %.invoke897.a

_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i.i60: ; preds = %bb.ah
  %i.fu = load ptr, ptr %i.ff, align 8, !noalias !25934, !nonnull !56, !noundef !56 ; 2 uses
  %i.fv = load ptr, ptr %i.fg, align 8, !noalias !25934, !nonnull !56, !noundef !56 ; 2 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %.val33.i
  %i.fx = load i64, ptr %i.fw, align 8, !noalias !25934, !noundef !56 ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %.val33.i
  %i.fz = load i64, ptr %i.fy, align 8, !noalias !25934, !noundef !56 ; 2 uses
  %i.ga = icmp ult i64 %.val34.i, %i.fd
  br i1 %i.ga, label %bb.ai, label %.invoke897.a

bb.ai:                                            ; preds = %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i.i60
  %i.gb = icmp ult i64 %.val34.i, %i.fs
  br i1 %i.gb, label %bb.aj, label %.invoke897.a

.invoke897.a:                                     ; preds = %bb.ai, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i.i60, %bb.ah, %bb.ag
  %i.gc = phi i64 [ %.val34.i, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i.i60 ], [ %.val33.i, %bb.ah ], [ %.val33.i, %bb.ag ], [ %.val34.i, %bb.ai ]
  %i.gd = phi i64 [ %i.fd, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i.i60 ], [ %i.fs, %bb.ah ], [ %i.fd, %bb.ag ], [ %i.fs, %bb.ai ]
  %i.ge = phi ptr [ @1471, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i.i60 ], [ @1472, %bb.ah ], [ @1471, %bb.ag ], [ @1472, %bb.ai ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.gc, i64 noundef %i.gd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ge) #60
          to label %.cont898.a unwind label %bb.ao, !noalias !25933

.cont898.a:                                       ; preds = %.invoke897.a
  unreachable

bb.aj:                                            ; preds = %bb.ai
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %.val34.i
  %i.gg = load i64, ptr %i.gf, align 8, !noalias !25936, !noundef !56 ; 2 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %.val34.i
  %i.gi = load i64, ptr %i.gh, align 8, !noalias !25936, !noundef !56 ; 2 uses
  %i.gj = icmp eq i64 %i.fx, %i.gg
  %i.gk = icmp ult i64 %i.fx, %i.gg
  %i.gl = icmp eq i64 %i.fz, %i.gi
  %i.gm = icmp ult i64 %i.fz, %i.gi
  %i.gn = icmp ult i64 %.val34.i, %.val33.i
  %spec.select.i.i61 = select i1 %i.gl, i1 %i.gn, i1 %i.gm
  %.sroa.0.1.in.i.i.i62 = select i1 %i.gj, i1 %spec.select.i.i61, i1 %i.gk ; 3 uses
  %.neg.i = sext i1 %.sroa.0.1.in.i.i.i62 to i64
  %i.go = getelementptr inbounds [8 x i8], ptr %.sroa.18.064.i, i64 %.neg.i ; 4 uses
  %i.gp = xor i1 %.sroa.0.1.in.i.i.i62, true
  %.neg29.i = sext i1 %i.gp to i64
  %i.gq = getelementptr inbounds [8 x i8], ptr %.sroa.10.065.i, i64 %.neg29.i ; 4 uses
  %.sroa.020.0.i = select i1 %.sroa.0.1.in.i.i.i62, ptr %i.go, ptr %i.gq
  %i.gr = getelementptr inbounds i8, ptr %.sroa.08.066.i, i64 -8 ; 2 uses
  %i.gs = load i64, ptr %.sroa.020.0.i, align 8
  store i64 %i.gs, ptr %i.gr, align 8, !alias.scope !25933
  %i.gt = icmp ult ptr %i.ew, %i.go
  %i.gu = icmp ult ptr %2, %i.gq
  %or.cond.i63 = select i1 %i.gt, i1 %i.gu, i1 false
  br i1 %or.cond.i63, label %bb.ag, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit

bb.ak:                                            ; preds = %bb.an, %.lr.ph.i57
  %.sroa.0.061.i = phi ptr [ %i.ex, %.lr.ph.i57 ], [ %i.hv, %bb.an ] ; 2 uses
  %.sroa.0.260.i = phi ptr [ %2, %.lr.ph.i57 ], [ %i.hy, %bb.an ] ; 3 uses
  %.sroa.18.359.i = phi ptr [ %i.ew, %.lr.ph.i57 ], [ %i.ht, %bb.an ] ; 3 uses
  %.sroa.0.0.val.i = load i64, ptr %.sroa.0.061.i, align 8, !alias.scope !25933, !noundef !56 ; 8 uses
  %.val31.i = load i64, ptr %.sroa.0.260.i, align 8, !noalias !25933 ; 8 uses
  %i.gv = icmp ult i64 %.sroa.0.0.val.i, %i.fl
  br i1 %i.gv, label %bb.al, label %.invoke895

bb.al:                                            ; preds = %bb.ak
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i39.i) ]
  %i.gw = load i64, ptr %i.fm, align 8, !noalias !25935, !noundef !56 ; 4 uses
  %i.gx = icmp ult i64 %.sroa.0.0.val.i, %i.gw
  br i1 %i.gx, label %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i40.i, label %.invoke895

_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i40.i: ; preds = %bb.al
  %i.gy = load ptr, ptr %i.fn, align 8, !noalias !25935, !nonnull !56, !noundef !56 ; 2 uses
  %i.gz = load ptr, ptr %i.fo, align 8, !noalias !25935, !nonnull !56, !noundef !56 ; 2 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %.sroa.0.0.val.i
  %i.hb = load i64, ptr %i.ha, align 8, !noalias !25935, !noundef !56 ; 2 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %.sroa.0.0.val.i
  %i.hd = load i64, ptr %i.hc, align 8, !noalias !25935, !noundef !56 ; 2 uses
  %i.he = icmp ult i64 %.val31.i, %i.fl
  br i1 %i.he, label %bb.am, label %.invoke895

bb.am:                                            ; preds = %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i40.i
  %i.hf = icmp ult i64 %.val31.i, %i.gw
  br i1 %i.hf, label %bb.an, label %.invoke895

.invoke895:                                       ; preds = %bb.am, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i40.i, %bb.al, %bb.ak
  %i.hg = phi i64 [ %.val31.i, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i40.i ], [ %.sroa.0.0.val.i, %bb.al ], [ %.sroa.0.0.val.i, %bb.ak ], [ %.val31.i, %bb.am ]
  %i.hh = phi i64 [ %i.fl, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i40.i ], [ %i.gw, %bb.al ], [ %i.fl, %bb.ak ], [ %i.gw, %bb.am ]
  %i.hi = phi ptr [ @1471, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph10UndirectedE4sorts3_0Ba_.exit.i40.i ], [ @1472, %bb.al ], [ @1471, %bb.ak ], [ @1472, %bb.am ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.hg, i64 noundef %i.hh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hi) #60
          to label %.cont896 unwind label %bb.ao, !noalias !25933

.cont896:                                         ; preds = %.invoke895
  unreachable

bb.an:                                            ; preds = %bb.am
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %.val31.i
  %i.hk = load i64, ptr %i.hj, align 8, !noalias !25937, !noundef !56 ; 2 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %.val31.i
  %i.hm = load i64, ptr %i.hl, align 8, !noalias !25937, !noundef !56 ; 2 uses
  %i.hn = icmp eq i64 %i.hb, %i.hk
  %i.ho = icmp ult i64 %i.hb, %i.hk
  %i.hp = icmp eq i64 %i.hd, %i.hm
  %i.hq = icmp ult i64 %i.hd, %i.hm
  %i.hr = icmp ult i64 %.val31.i, %.sroa.0.0.val.i
  %spec.select.i41.i = select i1 %i.hp, i1 %i.hr, i1 %i.hq
  %.sroa.0.1.in.i.i42.i = select i1 %i.hn, i1 %spec.select.i41.i, i1 %i.ho ; 3 uses
  %i.hs = select i1 %.sroa.0.1.in.i.i42.i, i64 %.sroa.0.0.val.i, i64 %.val31.i
  store i64 %i.hs, ptr %.sroa.18.359.i, align 8, !alias.scope !25933
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.18.359.i, i64 8 ; 2 uses
  %i.hu = zext i1 %.sroa.0.1.in.i.i42.i to i64
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.061.i, i64 %i.hu ; 2 uses
  %i.hw = xor i1 %.sroa.0.1.in.i.i42.i, true
  %i.hx = zext i1 %i.hw to i64
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.260.i, i64 %i.hx ; 3 uses
  %i.hz = icmp ult ptr %i.hy, %i.fh
  %i.ia = icmp ult ptr %i.hv, %i.ey
  %or.cond30.i = select i1 %i.hz, i1 %i.ia, i1 false
  br i1 %or.cond30.i, label %bb.ak, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit

bb.ao:                                            ; preds = %.invoke897.a, %.invoke895
  %.sroa.18.2.i = phi ptr [ %.sroa.18.064.i, %.invoke897.a ], [ %.sroa.18.359.i, %.invoke895 ]
  %.sroa.10.2.i = phi ptr [ %.sroa.10.065.i, %.invoke897.a ], [ %i.fh, %.invoke895 ]
  %.sroa.0.1.i = phi ptr [ %2, %.invoke897.a ], [ %.sroa.0.260.i, %.invoke895 ] ; 2 uses
  %i.ib = landingpad { ptr, i32 }
          cleanup
  %i.ic = ptrtoint ptr %.sroa.10.2.i to i64
  %i.id = ptrtoint ptr %.sroa.0.1.i to i64
  %i.ie = sub i64 %i.ic, %i.id
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.18.2.i, ptr align 8 %.sroa.0.1.i, i64 %i.ie, i1 false), !noalias !25938
  br label %.body

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.an, %bb.aj, %bb.af, %bb.ae
  %.sroa.18.1.i = phi ptr [ %i.go, %bb.aj ], [ %i.ex, %bb.ae ], [ %i.ew, %bb.af ], [ %i.ht, %bb.an ]
  %.sroa.10.1.i = phi ptr [ %i.gq, %bb.aj ], [ %i.fb, %bb.ae ], [ %i.fh, %bb.af ], [ %i.fh, %bb.an ]
  %.sroa.0.015.i = phi ptr [ %2, %bb.aj ], [ %2, %bb.ae ], [ %2, %bb.af ], [ %i.hy, %bb.an ] ; 2 uses
  %i.if = ptrtoint ptr %.sroa.10.1.i to i64
  %i.ig = ptrtoint ptr %.sroa.0.015.i to i64
  %i.ih = sub i64 %i.if, %i.ig
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.sroa.18.1.i, ptr align 8 %.sroa.0.015.i, i64 %i.ih, i1 false), !noalias !25939
  %i.ii = add i64 %i.el, %i.ef
  store i64 %i.ii, ptr %i.ek, align 8
  store i64 %i.eh, ptr %i.em, align 8
  %i.ij = icmp samesign ult i64 %storemerge244, 576460752303423488
  tail call void @llvm.assume(i1 %i.ij)
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.il = xor i64 %.sroa.4.0.i53.ph, -1
  %i.im = add nsw i64 %storemerge244, %i.il
  %i.in = shl nuw nsw i64 %i.im, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ee, ptr nonnull align 8 %i.ik, i64 %i.in, i1 false), !noalias !25940
  %i.io = add nsw i64 %storemerge244, -1
  %i.ip = icmp samesign ugt i64 %storemerge244, 2
  br i1 %i.ip, label %.lr.ph, label %._crit_edge

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit47: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i46, %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort10merge_sortjNCINvYSjINtB4_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB2q_11Vf2ppSorterINtB2q_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0EB2u_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noundef %2, ptr nofree readonly captures(none) %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.c, align 8
  %.not254 = icmp eq i64 %1, 0
  br i1 %.not254, label %.loopexit7, label %.lr.ph253

.lr.ph253:                                        ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.0.val, i64 8     ; 3 uses
  br label %bb.b

.loopexit7:                                       ; preds = %._crit_edge, %bb.a, %bb.l
  %.sroa.0.0 = phi i8 [ %., %bb.l ], [ 2, %bb.a ], [ 2, %._crit_edge ]
  %.val30 = load i64, ptr %i.a, align 8           ; 2 uses
  %i.e = icmp eq i64 %.val30, 0
  br i1 %i.e, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i: ; preds = %.loopexit7
  %.val31 = load ptr, ptr %i.b, align 8, !nonnull !56, !noundef !56
  %i.f = shl nuw i64 %.val30, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val31, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 8) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %.loopexit7, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i8 %.sroa.0.0

bb.b:                                             ; preds = %.lr.ph253, %._crit_edge
  %i.g = phi ptr [ inttoptr (i64 8 to ptr), %.lr.ph253 ], [ %i.dc, %._crit_edge ]
  %i.h = phi i64 [ 0, %.lr.ph253 ], [ %storemerge.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.02.0251 = phi i64 [ 0, %.lr.ph253 ], [ %.sroa.0.0.i48, %._crit_edge ] ; 10 uses
  %i.i = sub nuw nsw i64 %1, %.sroa.02.0251       ; 7 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.02.0251 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25987)
  %i.k = icmp samesign ult i64 %i.i, 2
  br i1 %i.k, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val17.i = load i64, ptr %i.l, align 8, !alias.scope !25987, !noundef !56 ; 9 uses
  %.val18.i = load i64, ptr %i.j, align 8, !alias.scope !25987 ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val3.i.i = load ptr, ptr %.0.val, align 8, !noalias !25987, !nonnull !56, !align !82, !noundef !56 ; 2 uses
  %.val4.i.i = load ptr, ptr %i.d, align 8, !noalias !25987 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val3.i.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !25988, !noundef !56 ; 12 uses
  %i.o = icmp ult i64 %.val17.i, %i.n
  br i1 %i.o, label %bb.d, label %.invoke

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i.i) ]
  %i.p = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noalias !25988, !noundef !56 ; 12 uses
  %i.r = icmp ult i64 %.val17.i, %i.q
  br i1 %i.r, label %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0Ba_.exit.i.i, label %.invoke

_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0Ba_.exit.i.i: ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !noalias !25988, !nonnull !56, !noundef !56 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val3.i.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !noalias !25988, !nonnull !56, !noundef !56 ; 6 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.val17.i
  %i.x = load i64, ptr %i.w, align 8, !noalias !25988, !noundef !56 ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.val17.i
  %i.z = load i64, ptr %i.y, align 8, !noalias !25988, !noundef !56 ; 2 uses
  %i.aa = icmp ult i64 %.val18.i, %i.n
  br i1 %i.aa, label %bb.e, label %.invoke

bb.e:                                             ; preds = %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0Ba_.exit.i.i
  %i.ab = icmp ult i64 %.val18.i, %i.q
  br i1 %i.ab, label %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0B24_.exit.i, label %.invoke

_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0B24_.exit.i: ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.val18.i
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !25989, !noundef !56 ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.val18.i
  %i.af = load i64, ptr %i.ae, align 8, !noalias !25989, !noundef !56 ; 2 uses
  %i.ag = icmp eq i64 %i.x, %i.ad
  %i.ah = icmp ult i64 %i.x, %i.ad
  %i.ai = icmp eq i64 %i.z, %i.af
  %i.aj = icmp ult i64 %i.z, %i.af
  %i.ak = icmp ult i64 %.val18.i, %.val17.i
  %spec.select.i.i = select i1 %i.ai, i1 %i.ak, i1 %i.aj
  %.sroa.0.1.in.i.i.i = select i1 %i.ag, i1 %spec.select.i.i, i1 %i.ah
  %.not29.i = icmp eq i64 %i.i, 2                 ; 2 uses
  br i1 %.sroa.0.1.in.i.i.i, label %.preheader.i, label %.preheader1.i

.preheader1.i:                                    ; preds = %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0B24_.exit.i
  br i1 %.not29.i, label %.loopexit, label %.lr.ph.i

.preheader.i:                                     ; preds = %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0B24_.exit.i
  br i1 %.not29.i, label %.loopexit, label %.lr.ph26.i

.lr.ph.i:                                         ; preds = %.preheader1.i, %bb.h
  %.val15.i = phi i64 [ %.val14.i, %bb.h ], [ %.val17.i, %.preheader1.i ] ; 7 uses
  %.sroa.01.023.i = phi i64 [ %i.bd, %bb.h ], [ 2, %.preheader1.i ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.01.023.i
  %.val14.i = load i64, ptr %i.al, align 8, !alias.scope !25987, !noundef !56 ; 8 uses
  %i.am = icmp ult i64 %.val14.i, %i.n
  br i1 %i.am, label %bb.f, label %.invoke

bb.f:                                             ; preds = %.lr.ph.i
  %i.an = icmp ult i64 %.val14.i, %i.q
  br i1 %i.an, label %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0Ba_.exit.i21.i, label %.invoke

_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0Ba_.exit.i21.i: ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.val14.i
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !25990, !noundef !56 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.val14.i
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !25990, !noundef !56 ; 2 uses
  %i.as = icmp ult i64 %.val15.i, %i.n
  br i1 %i.as, label %bb.g, label %.invoke

bb.g:                                             ; preds = %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0Ba_.exit.i21.i
  %i.at = icmp ult i64 %.val15.i, %i.q
  br i1 %i.at, label %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0B24_.exit24.i, label %.invoke

_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0B24_.exit24.i: ; preds = %bb.g
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.val15.i
  %i.av = load i64, ptr %i.au, align 8, !noalias !25991, !noundef !56 ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.val15.i
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !25991, !noundef !56 ; 2 uses
  %i.ay = icmp eq i64 %i.ap, %i.av
  %i.az = icmp ult i64 %i.ap, %i.av
  %i.ba = icmp eq i64 %i.ar, %i.ax
  %i.bb = icmp ult i64 %i.ar, %i.ax
  %i.bc = icmp ult i64 %.val15.i, %.val14.i
  %spec.select.i22.i = select i1 %i.ba, i1 %i.bc, i1 %i.bb
  %.sroa.0.1.in.i.i23.i = select i1 %i.ay, i1 %spec.select.i22.i, i1 %i.az
  br i1 %.sroa.0.1.in.i.i23.i, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0B24_.exit24.i
  %i.bd = add nuw nsw i64 %.sroa.01.023.i, 1      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bd, %i.i
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph26.i:                                       ; preds = %.preheader.i, %bb.k
  %.val12.i = phi i64 [ %.val11.i, %bb.k ], [ %.val17.i, %.preheader.i ] ; 7 uses
  %.sroa.01.125.i = phi i64 [ %i.bz, %bb.k ], [ 2, %.preheader.i ] ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.01.125.i
  %.val11.i = load i64, ptr %i.be, align 8, !alias.scope !25987, !noundef !56 ; 8 uses
  %i.bf = icmp ult i64 %.val11.i, %i.n
  br i1 %i.bf, label %bb.i, label %.invoke

bb.i:                                             ; preds = %.lr.ph26.i
  %i.bg = icmp ult i64 %.val11.i, %i.q
  br i1 %i.bg, label %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0Ba_.exit.i27.i, label %.invoke

_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0Ba_.exit.i27.i: ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.val11.i
  %i.bi = load i64, ptr %i.bh, align 8, !noalias !25992, !noundef !56 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.val11.i
  %i.bk = load i64, ptr %i.bj, align 8, !noalias !25992, !noundef !56 ; 2 uses
  %i.bl = icmp ult i64 %.val12.i, %i.n
  br i1 %i.bl, label %bb.j, label %.invoke

bb.j:                                             ; preds = %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0Ba_.exit.i27.i
  %i.bm = icmp ult i64 %.val12.i, %i.q
  br i1 %i.bm, label %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0B24_.exit30.i, label %.invoke

.invoke:                                          ; preds = %bb.e, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0Ba_.exit.i.i, %bb.d, %bb.c, %bb.g, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0Ba_.exit.i21.i, %bb.f, %.lr.ph.i, %bb.j, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0Ba_.exit.i27.i, %bb.i, %.lr.ph26.i
  %i.bn = phi i64 [ %.val15.i, %bb.g ], [ %.val12.i, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0Ba_.exit.i27.i ], [ %.val11.i, %bb.i ], [ %.val11.i, %.lr.ph26.i ], [ %.val12.i, %bb.j ], [ %.val15.i, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0Ba_.exit.i21.i ], [ %.val14.i, %bb.f ], [ %.val14.i, %.lr.ph.i ], [ %.val18.i, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0Ba_.exit.i.i ], [ %.val17.i, %bb.d ], [ %.val17.i, %bb.c ], [ %.val18.i, %bb.e ]
  %i.bo = phi i64 [ %i.q, %bb.g ], [ %i.n, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0Ba_.exit.i27.i ], [ %i.q, %bb.i ], [ %i.n, %.lr.ph26.i ], [ %i.q, %bb.j ], [ %i.n, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0Ba_.exit.i21.i ], [ %i.q, %bb.f ], [ %i.n, %.lr.ph.i ], [ %i.n, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0Ba_.exit.i.i ], [ %i.q, %bb.d ], [ %i.n, %bb.c ], [ %i.q, %bb.e ]
  %i.bp = phi ptr [ @1472, %bb.g ], [ @1471, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0Ba_.exit.i27.i ], [ @1472, %bb.i ], [ @1471, %.lr.ph26.i ], [ @1472, %bb.j ], [ @1471, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0Ba_.exit.i21.i ], [ @1472, %bb.f ], [ @1471, %.lr.ph.i ], [ @1471, %_RNCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6_11Vf2ppSorterINtB6_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0Ba_.exit.i.i ], [ @1472, %bb.d ], [ @1471, %bb.c ], [ @1472, %bb.e ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.bn, i64 noundef %i.bo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bp) #60
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0B24_.exit30.i: ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.val12.i
  %i.br = load i64, ptr %i.bq, align 8, !noalias !25993, !noundef !56 ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.val12.i
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !25993, !noundef !56 ; 2 uses
  %i.bu = icmp eq i64 %i.bi, %i.br
  %i.bv = icmp ult i64 %i.bi, %i.br
  %i.bw = icmp eq i64 %i.bk, %i.bt
  %i.bx = icmp ult i64 %i.bk, %i.bt
  %i.by = icmp ult i64 %.val12.i, %.val11.i
  %spec.select.i28.i = select i1 %i.bw, i1 %i.by, i1 %i.bx
  %.sroa.0.1.in.i.i29.i = select i1 %i.bu, i1 %spec.select.i28.i, i1 %i.bv
  br i1 %.sroa.0.1.in.i.i29.i, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0B24_.exit30.i
  %i.bz = add nuw nsw i64 %.sroa.01.125.i, 1      ; 2 uses
  %exitcond48.not.i = icmp eq i64 %i.bz, %i.i
  br i1 %exitcond48.not.i, label %.loopexit, label %.lr.ph26.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.s, %bb.p, %.invoke744.a, %.invoke742, %.invoke, %bb.n
  %lpad.loopexit.split-lp913 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ao
  %eh.lpad-body = phi { ptr, i32 } [ %i.ib, %bb.ao ], [ %lpad.loopexit.split-lp913, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.val = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ca = icmp eq i64 %.val, 0
  br i1 %i.ca, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit47, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i46

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i46: ; preds = %.body
  %.val29 = load ptr, ptr %i.b, align 8, !nonnull !56, !noundef !56
  %i.cb = shl nuw i64 %.val, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val29, i64 noundef %i.cb, i64 noundef range(i64 1, -9223372036854775807) 8) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunEECskcxRuJ53GpR_9rustworkx.exit47

.loopexit:                                        ; preds = %bb.h, %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0B24_.exit24.i, %bb.k, %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0B24_.exit30.i, %.preheader.i, %.preheader1.i, %bb.b
  %.sroa.4.0.i = phi i1 [ false, %bb.b ], [ true, %.preheader.i ], [ true, %bb.k ], [ false, %.preheader1.i ], [ true, %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0B24_.exit30.i ], [ false, %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0B24_.exit24.i ], [ false, %bb.h ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %i.i, %bb.b ], [ 2, %.preheader.i ], [ %i.i, %bb.k ], [ 2, %.preheader1.i ], [ %.sroa.01.125.i, %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0B24_.exit30.i ], [ %i.i, %bb.h ], [ %.sroa.01.023.i, %_RNCINvYSjINtNtCs1JJT1bG4y5L_5rayon5slice16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB20_11Vf2ppSorterINtB20_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0B24_.exit24.i ] ; 7 uses
  %i.cc = add i64 %.sroa.0.0.i, %.sroa.02.0251    ; 8 uses
  %i.cd = icmp eq i64 %.sroa.02.0251, 0
  %i.ce = icmp eq i64 %i.cc, %1
  %or.cond = and i1 %i.cd, %i.ce
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.loopexit
  %. = zext i1 %.sroa.4.0.i to i8
  br label %.loopexit7

bb.m:                                             ; preds = %.loopexit
  br i1 %.sroa.4.0.i, label %bb.q, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapjECskcxRuJ53GpR_9rustworkx.exit

_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapjECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i, %middle.block, %bb.r, %bb.m
  %3 = icmp uge i64 %i.cc, %.sroa.02.0251
  %4 = icmp ule i64 %i.cc, %1
  %or.cond.i = and i1 %3, %4
  br i1 %or.cond.i, label %bb.o, label %bb.n, !prof !109

bb.n:                                             ; preds = %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapjECskcxRuJ53GpR_9rustworkx.exit
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @586, i64 noundef 44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @587) #60
          to label %.noexc49 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc49:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapjECskcxRuJ53GpR_9rustworkx.exit
  %i.cf = icmp samesign ult i64 %.sroa.0.0.i, 10
  %i.cg = icmp samesign ult i64 %i.cc, %1
  %or.cond3.i = and i1 %i.cf, %i.cg
  br i1 %or.cond3.i, label %bb.p, label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchjNCINvYSjINtB4_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB2A_11Vf2ppSorterINtB2A_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0EB2E_.exit

bb.p:                                             ; preds = %bb.o
  %i.ch = add nuw nsw i64 %.sroa.02.0251, 10
  %i.ci = tail call i64 @llvm.umin.i64(i64 %i.ch, i64 range(i64 1, 1152921504606846976) %1) ; 2 uses
  %i.cj = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 1)
  %i.ck = sub nsw i64 %i.ci, %.sroa.02.0251       ; 2 uses
  invoke fastcc void @_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort25insertion_sort_shift_leftjNCINvYSjINtB4_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB2F_11Vf2ppSorterINtB2F_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0EB2J_(ptr noalias nofree noundef nonnull align 8 %i.j, i64 noundef %i.ck, i64 noundef %i.cj, ptr readonly %.0.val) #62
          to label %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchjNCINvYSjINtB4_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB2A_11Vf2ppSorterINtB2A_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0EB2E_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.m
  %5 = icmp ult i64 %i.cc, %.sroa.02.0251
  %.not = icmp ugt i64 %i.cc, %1
  %or.cond27 = or i1 %5, %.not
  br i1 %or.cond27, label %.invoke742, label %bb.r, !prof !76

bb.r:                                             ; preds = %bb.q
  %i.cl = lshr i64 %.sroa.0.0.i, 1                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25994)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25995)
  %.not.i = icmp eq i64 %i.cl, 0
  br i1 %.not.i, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapjECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i: ; preds = %bb.r
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.0.0.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %.sroa.0.0.i, 8
  br i1 %min.iters.check, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i
  %n.vec = and i64 %i.cl, 4611686018427387900     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cn = xor i64 %index, -1
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %index ; 3 uses
  %i.cp = getelementptr [8 x i8], ptr %i.cm, i64 %i.cn ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.co, align 8, !alias.scope !25994
  %wide.load889 = load <2 x i64>, ptr %i.cq, align 8, !alias.scope !25994
  %i.cr = getelementptr i8, ptr %i.cp, i64 -8     ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cp, i64 -24    ; 2 uses
  %wide.load890 = load <2 x i64>, ptr %i.cr, align 8, !alias.scope !25995
  %wide.load891 = load <2 x i64>, ptr %i.cs, align 8, !alias.scope !25995
  %reverse = shufflevector <2 x i64> %wide.load890, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse892 = shufflevector <2 x i64> %wide.load891, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.co, align 8, !alias.scope !25994
  store <2 x i64> %reverse892, ptr %i.cq, align 8, !alias.scope !25994
  %reverse893 = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse894 = shufflevector <2 x i64> %wide.load889, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse893, ptr %i.cr, align 8, !alias.scope !25995
  store <2 x i64> %reverse894, ptr %i.cs, align 8, !alias.scope !25995
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ct = icmp eq i64 %index.next, %n.vec
  br i1 %i.ct, label %middle.block, label %vector.body, !llvm.loop !25958

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cl, %n.vec
  br i1 %cmp.n, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapjECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader

_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i, %middle.block
  %.sroa.0.016.i.ph = phi i64 [ 0, %_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.preheader.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i

_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i: ; preds = %_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader, %_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i
  %.sroa.0.016.i = phi i64 [ %i.cz, %_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i ], [ %.sroa.0.016.i.ph, %_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i.preheader ] ; 3 uses
  %i.cu = xor i64 %.sroa.0.016.i, -1
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.0.016.i ; 2 uses
  %i.cw = getelementptr [8 x i8], ptr %i.cm, i64 %i.cu ; 2 uses
  %i.cx = load i64, ptr %i.cv, align 8, !alias.scope !25994, !noundef !56
  %i.cy = load i64, ptr %i.cw, align 8, !alias.scope !25995
  store i64 %i.cy, ptr %i.cv, align 8, !alias.scope !25994
  store i64 %i.cx, ptr %i.cw, align 8, !alias.scope !25995
  %i.cz = add nuw nsw i64 %.sroa.0.016.i, 1       ; 2 uses
  %exitcond.not.i51 = icmp eq i64 %i.cz, %i.cl
  br i1 %exitcond.not.i51, label %_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapjECskcxRuJ53GpR_9rustworkx.exit, label %_RNvMNtCslwFuT2d6ECx_4core5sliceSj12split_at_mutCskcxRuJ53GpR_9rustworkx.exit11.i, !llvm.loop !25959

_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchjNCINvYSjINtB4_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB2A_11Vf2ppSorterINtB2A_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0EB2E_.exit: ; preds = %bb.o, %bb.p
  %.pre-phi = phi i64 [ %i.ck, %bb.p ], [ %.sroa.0.0.i, %bb.o ]
  %.sroa.0.0.i48 = phi i64 [ %i.ci, %bb.p ], [ %i.cc, %bb.o ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25996)
  %i.da = load i64, ptr %i.a, align 8, !range !59, !alias.scope !25996, !noundef !56
  %i.db = icmp eq i64 %i.h, %i.da
  br i1 %i.db, label %bb.s, label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit

bb.s:                                             ; preds = %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchjNCINvYSjINtB4_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB2A_11Vf2ppSorterINtB2A_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0EB2E_.exit
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #62
          to label %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge: ; preds = %bb.s
  %.pre = load ptr, ptr %i.b, align 8, !alias.scope !25996
  br label %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit

_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit: ; preds = %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchjNCINvYSjINtB4_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB2A_11Vf2ppSorterINtB2A_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0EB2E_.exit
  %i.dc = phi ptr [ %.pre, %._RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit_crit_edge ], [ %i.g, %_RINvNtNtCs1JJT1bG4y5L_5rayon5slice4sort20provide_sorted_batchjNCINvYSjINtB4_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB2A_11Vf2ppSorterINtB2A_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0EB2E_.exit ] ; 6 uses
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %i.h ; 2 uses
  store i64 %.pre-phi, ptr %i.dd, align 8, !noalias !25996
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i64 %.sroa.02.0251, ptr %i.de, align 8, !noalias !25996
  %i.df = add i64 %i.h, 1                         ; 3 uses
  %i.dg = icmp samesign ugt i64 %i.df, 1
  br i1 %i.dg, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit
  %storemerge244 = phi i64 [ %i.io, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit ], [ %i.df, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit ] ; 14 uses
  %i.dh = getelementptr [16 x i8], ptr %i.dc, i64 %storemerge244 ; 5 uses
  %i.di = getelementptr i8, ptr %i.dh, i64 -16
  %i.dj = getelementptr i8, ptr %i.dh, i64 -8
  %i.dk = load i64, ptr %i.dj, align 8, !alias.scope !25997, !noundef !56
  %i.dl = load i64, ptr %i.di, align 8, !alias.scope !25997, !noundef !56 ; 4 uses
  %i.dm = add i64 %i.dl, %i.dk
  %i.dn = icmp eq i64 %i.dm, %1
  br i1 %i.dn, label %bb.v, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.do = getelementptr i8, ptr %i.dh, i64 -32
  %i.dp = load i64, ptr %i.do, align 8, !alias.scope !25997, !noundef !56 ; 3 uses
  %.not.i55 = icmp ugt i64 %i.dp, %i.dl
  br i1 %.not.i55, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %.not14.i = icmp eq i64 %storemerge244, 2
  br i1 %.not14.i, label %._crit_edge, label %bb.x

bb.v:                                             ; preds = %bb.t, %.lr.ph
  %.not17.i = icmp eq i64 %storemerge244, 2
  br i1 %.not17.i, label %bb.z, label %.thread.i

bb.w:                                             ; preds = %bb.x
  %i.dq = icmp samesign ugt i64 %storemerge244, 3
  br i1 %i.dq, label %bb.y, label %._crit_edge

bb.x:                                             ; preds = %bb.u
  %i.dr = getelementptr i8, ptr %i.dh, i64 -48
  %i.ds = load i64, ptr %i.dr, align 8, !alias.scope !25997, !noundef !56 ; 2 uses
  %i.dt = add i64 %i.dp, %i.dl
  %.not15.i = icmp ugt i64 %i.ds, %i.dt
  br i1 %.not15.i, label %bb.w, label %.thread.i

bb.y:                                             ; preds = %bb.w
  %i.du = getelementptr i8, ptr %i.dh, i64 -64
  %i.dv = load i64, ptr %i.du, align 8, !alias.scope !25997, !noundef !56
  %i.dw = add i64 %i.ds, %i.dp
  %.not16.i = icmp ugt i64 %i.dv, %i.dw
  br i1 %.not16.i, label %._crit_edge, label %.thread.i

bb.z:                                             ; preds = %.thread.i, %bb.v
  %i.dx = add nsw i64 %storemerge244, -2
  br label %bb.aa

.thread.i:                                        ; preds = %bb.v, %bb.y, %bb.x
  %i.dy = add nsw i64 %storemerge244, -3          ; 2 uses
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %i.dy
  %i.ea = load i64, ptr %i.dz, align 8, !alias.scope !25997, !noundef !56
  %i.eb = icmp ult i64 %i.ea, %i.dl
  br i1 %i.eb, label %bb.aa, label %bb.z

._crit_edge:                                      ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit, %bb.u, %bb.w, %bb.y, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit
  %storemerge.lcssa = phi i64 [ %i.df, %_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE8push_mutCskcxRuJ53GpR_9rustworkx.exit ], [ %storemerge244, %bb.y ], [ 3, %bb.w ], [ 2, %bb.u ], [ 1, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtNtCs1JJT1bG4y5L_5rayon5slice4sort10TimSortRunE6removeCskcxRuJ53GpR_9rustworkx.exit ] ; 2 uses
  store i64 %storemerge.lcssa, ptr %i.c, align 8
  %i.ec = icmp samesign ult i64 %.sroa.0.0.i48, %1
  br i1 %i.ec, label %bb.b, label %.loopexit7

bb.aa:                                            ; preds = %bb.z, %.thread.i
  %.sroa.4.0.i53.ph = phi i64 [ %i.dy, %.thread.i ], [ %i.dx, %bb.z ] ; 5 uses
  %i.ed = icmp ult i64 %.sroa.4.0.i53.ph, %storemerge244
  br i1 %i.ed, label %bb.ab, label %.invoke744.a

bb.ab:                                            ; preds = %bb.aa
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %.sroa.4.0.i53.ph ; 4 uses
  %i.ef = load i64, ptr %i.ee, align 8, !noundef !56 ; 7 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eh = load i64, ptr %i.eg, align 8, !noundef !56 ; 5 uses
  %i.ei = add nuw nsw i64 %.sroa.4.0.i53.ph, 1    ; 3 uses
  %i.ej = icmp ult i64 %i.ei, %storemerge244
  br i1 %i.ej, label %bb.ac, label %.invoke744.a

bb.ac:                                            ; preds = %bb.ab
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %i.ei ; 3 uses
  %i.el = load i64, ptr %i.ek, align 8, !noundef !56 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 2 uses
  %i.en = load i64, ptr %i.em, align 8, !noundef !56
  %i.eo = add i64 %i.en, %i.el                    ; 5 uses
  %i.ep = icmp ult i64 %i.eo, %i.eh
  %.not26 = icmp ugt i64 %i.eo, %1
  %or.cond28 = or i1 %i.ep, %.not26
  br i1 %or.cond28, label %.invoke742, label %bb.ad, !prof !76

.invoke744.a:                                     ; preds = %bb.ab, %bb.aa
  %i.eq = phi i64 [ %.sroa.4.0.i53.ph, %bb.aa ], [ %i.ei, %bb.ab ]
  %i.er = phi ptr [ @575, %bb.aa ], [ @576, %bb.ab ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.eq, i64 noundef %storemerge244, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.er) #61
          to label %.cont745.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont745.a:                                       ; preds = %.invoke744.a
  unreachable

.invoke742:                                       ; preds = %bb.q, %bb.ac
  %i.es = phi i64 [ %i.eh, %bb.ac ], [ %.sroa.02.0251, %bb.q ]
  %i.et = phi i64 [ %i.eo, %bb.ac ], [ %i.cc, %bb.q ]
  %i.eu = phi ptr [ @577, %bb.ac ], [ @578, %bb.q ]
  invoke void @_RNvNtNtCslwFuT2d6ECx_4core5slice5index16slice_index_fail(i64 noundef %i.es, i64 noundef %i.et, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eu) #61
          to label %.cont743 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont743:                                         ; preds = %.invoke742
  unreachable

bb.ad:                                            ; preds = %bb.ac
  %i.ev = sub nuw i64 %i.eo, %i.eh                ; 3 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.eh ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25998)
  %.idx70.i = shl nuw nsw i64 %i.ef, 3            ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %.idx70.i ; 4 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.eo ; 2 uses
  %i.ez = sub i64 %i.ev, %i.ef                    ; 2 uses
end_hunk_8
begin_hunk_9_@_RNvMs7l_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_12Pos2DMapping25___pymethod___contains____:.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.422.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.420.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.019.0.copyload, ptr %i.w, align 8
  store i32 1, ptr %0, align 8
  %i.x = atomicrmw add ptr %i.e, i64 -1 release, align 8 ; 0 uses
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx9iterators12Pos2DMappingEEEB1T_.exit32
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvMs7l_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_12Pos2DMapping25___pymethod___getstate____(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
.noexc:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.9.i = alloca [56 x i8], align 8          ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [56 x i8], align 8                ; 13 uses
  %i.f = alloca [64 x i8], align 8                ; 11 uses
  %i.g = alloca [72 x i8], align 8                ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.i = tail call noundef zeroext i1 @_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker10try_borrow(ptr noundef nonnull align 8 %i.h)
  br i1 %i.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx9iterators12Pos2DMappingEEEB1T_.exit17, label %bb.a

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx9iterators12Pos2DMappingEEEB1T_.exit17: ; preds = %.noexc
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  call void @_RNvXsn_NtCsi0YPOvDEjiZ_4pyo36pycellNtNtB7_3err5PyErrINtNtCslwFuT2d6ECx_4core7convert4FromNtB5_13PyBorrowErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.k)
  %.sroa.08.0.copyload = load ptr, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.08.0.copyload, ptr %i.l, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.411.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 56, i1 false)
  store i64 1, ptr %0, align 8
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx9iterators12Pos2DMappingEEEB1T_.exit22

.body:                                            ; preds = %.body.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i
  call void @_Py_DecRef(ptr noundef nonnull %i.cv) #59, !noalias !66375
  br label %.body.thread42

.body.thread42:                                   ; preds = %.body, %bb.z, %bb.l
  %eh.lpad-body46 = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body ], [ %i.ef, %bb.z ], [ %i.co, %bb.l ]
  %i.m = atomicrmw add ptr %i.h, i64 -1 release, align 8 ; 0 uses
  resume { ptr, i32 } %eh.lpad-body46

bb.a:                                             ; preds = %.noexc
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66376)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66377)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66378)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !66379
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) @112, i64 32, i1 false), !noalias !66379
  store i64 0, ptr %i.e, align 8, !noalias !66379
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 6 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !66379
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 5 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !66379
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66381)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  invoke fastcc void @_RNvXsb_NtCslcZTgAvcSNH_9hashbrown3rawINtB5_8RawTablejENtNtCslwFuT2d6ECx_4core5clone5Clone10clone_fromCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(32) %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o)
          to label %.noexc.i.i.i unwind label %bb.l, !noalias !66382

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.p = load i64, ptr %i.e, align 8, !range !59, !alias.scope !66380, !noalias !66379, !noundef !56 ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !66383, !noundef !56 ; 12 uses
  %i.s = icmp ult i64 %i.r, 288230376151711744
  tail call void @llvm.assume(i1 %i.s)
  %i.t = icmp samesign ult i64 %i.p, %i.r
  %i.u = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !66380, !noalias !66379 ; 9 uses
  br i1 %i.t, label %bb.b, label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejAdj2_E15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

bb.b:                                             ; preds = %.noexc.i.i.i
  %i.v = icmp ult i64 %i.u, 288230376151711744
  tail call void @llvm.assume(i1 %i.v)
  %i.w = sub nsw i64 %i.r, %i.u                   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66384)
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !66385, !noalias !66379, !noundef !56
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !66385, !noalias !66379, !noundef !56
  %i.ab = add i64 %i.aa, %i.y                     ; 2 uses
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 288230376151711743) ; 3 uses
  %i.ad = sub nsw i64 %i.ac, %i.u                 ; 2 uses
  %i.ae = icmp ugt i64 %i.ad, %i.w
  br i1 %i.ae, label %bb.g, label %._RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit_crit_edge.i.i.i.i.i

._RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit_crit_edge.i.i.i.i.i: ; preds = %bb.b
  %.pre3.i.i.i.i.i = sub nsw i64 %i.p, %i.u
  br label %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %bb.j, %bb.h, %._RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit_crit_edge.i.i.i.i.i
  %.pre-phi.i.i.i.i.i = phi i64 [ %.pre3.i.i.i.i.i, %._RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit_crit_edge.i.i.i.i.i ], [ %i.ao, %bb.j ], [ %i.ao, %bb.h ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66387)
  %i.af = icmp ugt i64 %i.w, %.pre-phi.i.i.i.i.i
  br i1 %i.af, label %bb.c, label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejAdj2_E15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

bb.c:                                             ; preds = %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66388)
  %i.ag = icmp samesign ult i64 %i.r, %i.u
  br i1 %i.ag, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !66389
  %.val11.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !66390, !noalias !66379
  call fastcc void @_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.d, i64 %i.p, ptr %.val11.i.i.i.i.i.i.i.i, i64 noundef %i.r, i64 noundef 8, i64 noundef range(i64 16, 89) 32), !noalias !66389
  %i.ah = load i64, ptr %i.d, align 8, !range !57, !noalias !66389, !noundef !56
  %i.ai = trunc nuw i64 %i.ah to i1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br i1 %i.ai, label %bb.e, label %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ak = load i64, ptr %i.aj, align 8, !range !112, !noalias !66389, !noundef !56
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.am = load i64, ptr %i.al, align 8, !noalias !66389
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !66389
  br label %bb.f

_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.an = load ptr, ptr %i.aj, align 8, !noalias !66389, !nonnull !56, !noundef !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !66389
  br label %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCskcxRuJ53GpR_9rustworkx.exit.sink.split.i.i.i.i.i

bb.f:                                             ; preds = %bb.e, %bb.c
  %.sroa.3.0.i.i.i.i.i.i.i = phi i64 [ %i.am, %bb.e ], [ undef, %bb.c ]
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ %i.ak, %bb.e ], [ 0, %bb.c ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.i.i.i.i.i.i, i64 %.sroa.3.0.i.i.i.i.i.i.i) #61
          to label %.noexc3.i.i.i unwind label %bb.l, !noalias !66379

.noexc3.i.i.i:                                    ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66391)
  %i.ao = sub nsw i64 %i.p, %i.u                  ; 3 uses
  %i.ap = icmp ugt i64 %i.ad, %i.ao
  br i1 %i.ap, label %bb.h, label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejAdj2_E15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66392)
  %i.aq = icmp ult i64 %i.ab, %i.u
  br i1 %i.aq, label %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !66393
  %.val11.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !66394, !noalias !66379
  call fastcc void @_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.c, i64 %i.p, ptr %.val11.i.i.i.i.i.i.i, i64 noundef %i.ac, i64 noundef 8, i64 noundef range(i64 16, 89) 32), !noalias !66393
  %i.ar = load i64, ptr %i.c, align 8, !range !57, !noalias !66393, !noundef !56
  %i.as = trunc nuw i64 %i.ar to i1
  br i1 %i.as, label %bb.j, label %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !66393
  br label %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !noalias !66393, !nonnull !56, !noundef !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !66393
  br label %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCskcxRuJ53GpR_9rustworkx.exit.sink.split.i.i.i.i.i

_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCskcxRuJ53GpR_9rustworkx.exit.sink.split.i.i.i.i.i: ; preds = %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i
  %storemerge.i.i.i = phi ptr [ %i.au, %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i ], [ %i.an, %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i ]
  %.sink.i.i.i.i.i = phi i64 [ %i.ac, %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i ], [ %i.r, %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i ] ; 2 uses
  store ptr %storemerge.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !66385, !noalias !66379
  store i64 %.sink.i.i.i.i.i, ptr %i.e, align 8, !alias.scope !66385, !noalias !66379
  br label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejAdj2_E15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejAdj2_E15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCskcxRuJ53GpR_9rustworkx.exit.sink.split.i.i.i.i.i, %bb.g, %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.av = phi i64 [ %i.p, %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ %.sink.i.i.i.i.i, %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCskcxRuJ53GpR_9rustworkx.exit.sink.split.i.i.i.i.i ], [ %i.p, %bb.g ], [ %i.p, %.noexc.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !66383, !nonnull !56, !noundef !56 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66395)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66396)
  %i.ay = icmp ugt i64 %i.r, %i.u
  br i1 %i.ay, label %.preheader.i.i.i.i.i.i, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtCsfztDQZkQYYe_8indexmap6BucketjAdj2_EE8truncateCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtCsfztDQZkQYYe_8indexmap6BucketjAdj2_EE8truncateCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i: ; preds = %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejAdj2_E15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  store i64 %i.r, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !66397, !noalias !66379
  br label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtCsfztDQZkQYYe_8indexmap6BucketjAdj2_EE8truncateCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i, %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejAdj2_E15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %i.az = phi i64 [ %i.r, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtCsfztDQZkQYYe_8indexmap6BucketjAdj2_EE8truncateCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i ], [ %i.u, %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejAdj2_E15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ] ; 12 uses
  %.idx3.i.i.i.i.i = shl nuw nsw i64 %i.az, 5
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.idx3.i.i.i.i.i ; 3 uses
  %i.bb = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !66398, !noalias !66379, !nonnull !56, !noundef !56 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66399)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66400)
  %.not.i1.i.i.i.i.i = icmp eq i64 %i.az, 0
  br i1 %.not.i1.i.i.i.i.i, label %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketjAdj2_EINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.preheader.i.i.i.i.i.i
  %xtraiter = and i64 %i.az, 1
  %i.bc = icmp eq i64 %i.az, 1
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.preheader.new:                 ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.az, -2
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader.new
  %.sroa.0.01.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %i.bo, %.lr.ph.i.i.i.i.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i.i.i ]
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %i.bb, i64 %.sroa.0.01.i.i.i.i.i.i ; 2 uses
  %i.be = getelementptr inbounds nuw [32 x i8], ptr %i.ax, i64 %.sroa.0.01.i.i.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66402)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bh = load <2 x i64>, ptr %i.bf, align 8, !alias.scope !66403, !noalias !66404
  store <2 x i64> %i.bh, ptr %i.bg, align 8, !alias.scope !66405, !noalias !66406
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.be, i64 16, i1 false), !alias.scope !66407, !noalias !66408
  %i.bi = or disjoint i64 %.sroa.0.01.i.i.i.i.i.i, 1 ; 2 uses
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %i.bb, i64 %i.bi ; 2 uses
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.ax, i64 %i.bi ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66410)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bn = load <2 x i64>, ptr %i.bl, align 8, !alias.scope !66411, !noalias !66404
  store <2 x i64> %i.bn, ptr %i.bm, align 8, !alias.scope !66412, !noalias !66406
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.bk, i64 16, i1 false), !alias.scope !66413, !noalias !66408
  %i.bo = add nuw nsw i64 %.sroa.0.01.i.i.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketjAdj2_EINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i

_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketjAdj2_EINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketjAdj2_EINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.epil.preheader:                ; preds = %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketjAdj2_EINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.preheader
  %.sroa.0.01.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bo, %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketjAdj2_EINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod105 = trunc i64 %i.az to i1
  tail call void @llvm.assume(i1 %lcmp.mod105)
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %i.bb, i64 %.sroa.0.01.i.i.i.i.i.i.epil.init ; 2 uses
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %i.ax, i64 %.sroa.0.01.i.i.i.i.i.i.epil.init ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66402)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.bt = load <2 x i64>, ptr %i.br, align 8, !alias.scope !66403, !noalias !66404
  store <2 x i64> %i.bt, ptr %i.bs, align 8, !alias.scope !66405, !noalias !66406
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.bq, i64 16, i1 false), !alias.scope !66407, !noalias !66408
  br label %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketjAdj2_EINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketjAdj2_EINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.epil.preheader, %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketjAdj2_EINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.loopexit.unr-lcssa, %.preheader.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66416)
  %i.bu = sub nuw nsw i64 %i.r, %i.az             ; 5 uses
  %i.bv = sub nsw i64 %i.av, %i.az
  %i.bw = icmp ugt i64 %i.bu, %i.bv
  br i1 %i.bw, label %bb.k, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtCsfztDQZkQYYe_8indexmap6BucketjAdj2_EE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i, !prof !60

bb.k:                                             ; preds = %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketjAdj2_EINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.e, i64 noundef %i.az, i64 noundef %i.bu, i64 noundef 8, i64 noundef 32)
          to label %.noexc4.i.i.i unwind label %bb.l, !noalias !66379

.noexc4.i.i.i:                                    ; preds = %bb.k
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !66417, !noalias !66379
  %.pre.i1.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !66417, !noalias !66379
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtCsfztDQZkQYYe_8indexmap6BucketjAdj2_EE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtCsfztDQZkQYYe_8indexmap6BucketjAdj2_EE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc4.i.i.i, %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketjAdj2_EINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %i.bx = phi ptr [ %i.bb, %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketjAdj2_EINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ %.pre.i1.i.i.i.i, %.noexc4.i.i.i ] ; 3 uses
  %i.by = phi i64 [ %i.az, %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketjAdj2_EINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i, %.noexc4.i.i.i ] ; 3 uses
  %i.bz = icmp eq i64 %i.az, %i.r
  br i1 %i.bz, label %.loopexit, label %.preheader.i.i.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.i.i.preheader:             ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtCsfztDQZkQYYe_8indexmap6BucketjAdj2_EE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i
  %.neg = add i64 %i.az, 1
  %xtraiter106 = and i64 %i.bu, 1
  %i.ca = icmp eq i64 %i.r, %.neg
  br i1 %i.ca, label %.preheader.i.i.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.i.i.preheader.new:         ; preds = %.preheader.i.i.i.i.i.i.i.i.preheader
  %unroll_iter110 = and i64 %i.bu, 288230376151711742
  br label %.preheader.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.preheader.new
  %i.cb = phi i64 [ %i.by, %.preheader.i.i.i.i.i.i.i.i.preheader.new ], [ %i.cm, %.preheader.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.preheader.new ], [ %i.cn, %.preheader.i.i.i.i.i.i.i.i ] ; 3 uses
  %niter111 = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.preheader.new ], [ %niter111.next.1, %.preheader.i.i.i.i.i.i.i.i ]
  %i.cc = getelementptr inbounds nuw [32 x i8], ptr %i.ba, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66418)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = getelementptr inbounds nuw [32 x i8], ptr %i.bx, i64 %i.cb ; 2 uses
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cf = load <2 x i64>, ptr %i.cd, align 8, !alias.scope !66419, !noalias !66420
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.cc, i64 16, i1 false), !noalias !66421
  store <2 x i64> %i.cf, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !66422
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %i.ba, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66423)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  %i.cj = getelementptr [32 x i8], ptr %i.bx, i64 %i.cb ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 32
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr i8, ptr %i.cj, i64 48
  %i.cl = load <2 x i64>, ptr %i.ci, align 8, !alias.scope !66424, !noalias !66420
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ch, i64 16, i1 false), !noalias !66421
  store <2 x i64> %i.cl, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !66425
  %i.cm = add i64 %i.cb, 2                        ; 3 uses
  %i.cn = add nuw i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter111.next.1 = add i64 %niter111, 2         ; 2 uses
  %niter111.ncmp.1 = icmp eq i64 %niter111.next.1, %unroll_iter110
  br i1 %niter111.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.preheader.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.k, %bb.f, %bb.a
  %i.co = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap5inner4CorejAdj2_EECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(56) %i.e) #63, !noalias !66379
  br label %.body.thread42

.loopexit.loopexit.unr-lcssa:                     ; preds = %.preheader.i.i.i.i.i.i.i.i
  %lcmp.mod107.not = icmp eq i64 %xtraiter106, 0
  br i1 %lcmp.mod107.not, label %.loopexit, label %.preheader.i.i.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.i.i.epil.preheader:        ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.i.i.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ %i.by, %.preheader.i.i.i.i.i.i.i.i.preheader ], [ %i.cm, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.preheader ], [ %i.cn, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod109 = trunc i64 %i.bu to i1
  tail call void @llvm.assume(i1 %lcmp.mod109)
  %i.cp = getelementptr inbounds nuw [32 x i8], ptr %i.ba, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.epil.init ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66418)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = getelementptr inbounds nuw [32 x i8], ptr %i.bx, i64 %.epil.init ; 2 uses
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.cs = load <2 x i64>, ptr %i.cq, align 8, !alias.scope !66419, !noalias !66420
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cr, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.cp, i64 16, i1 false), !noalias !66421
  store <2 x i64> %i.cs, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !66422
  %i.ct = add i64 %.epil.init, 1
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.i.i.i.i.i.i.i.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtCsfztDQZkQYYe_8indexmap6BucketjAdj2_EE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i
  %storemerge.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.by, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtCsfztDQZkQYYe_8indexmap6BucketjAdj2_EE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i ], [ %i.cm, %.loopexit.loopexit.unr-lcssa ], [ %i.ct, %.preheader.i.i.i.i.i.i.i.i.epil.preheader ]
  store i64 %storemerge.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !66417, !noalias !66426
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !66379
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i.i18 = load i64, ptr %i.cu, align 8, !alias.scope !66427, !noundef !56
  %.sroa.45.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i64 %.val.i.i18, ptr %.sroa.45.sroa.4.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66429)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !66375
  %i.cv = invoke noundef nonnull ptr @_RNvMNtNtCsi0YPOvDEjiZ_4pyo35types4dictNtB2_6PyDict3new()
          to label %bb.m unwind label %bb.z, !noalias !66375 ; 4 uses

bb.m:                                             ; preds = %.loopexit
  store ptr %i.cv, ptr %i.b, align 8, !noalias !66375
  %.sroa.023.0.copyload.i.i = load i64, ptr %i.f, align 8, !alias.scope !66430 ; 6 uses
  %.sroa.424.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.424.0.copyload.i.i = load ptr, ptr %.sroa.424.0..sroa_idx.i.i, align 8, !alias.scope !66430 ; 6 uses
  %.sroa.525.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.525.0.copyload.i.i = load i64, ptr %.sroa.525.0..sroa_idx.i.i, align 8, !alias.scope !66430 ; 3 uses
  %.sroa.727.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.727.0.copyload.i.i = load i64, ptr %.sroa.727.0..sroa_idx.i.i, align 8, !alias.scope !66430 ; 4 uses
  %i.cw = icmp eq i64 %.sroa.727.0.copyload.i.i, 0
  br i1 %i.cw, label %bb.n, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i: ; preds = %bb.m
  %.sroa.626.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.626.0.copyload.i.i = load ptr, ptr %.sroa.626.0..sroa_idx.i.i, align 8, !alias.scope !66430, !nonnull !56, !noundef !56
  %i.cx = shl i64 %.sroa.727.0.copyload.i.i, 3
  %i.cy = icmp slt i64 %.sroa.727.0.copyload.i.i, 2305843009213693950
  tail call void @llvm.assume(i1 %i.cy)
  %i.cz = and i64 %i.cx, -16                      ; 2 uses
  %i.da = add i64 %i.cz, 16                       ; 2 uses
  %i.db = add nsw i64 %.sroa.727.0.copyload.i.i, 17
  %i.dc = add i64 %i.db, %i.da                    ; 3 uses
  %i.dd = icmp uge i64 %i.dc, %i.da
  tail call void @llvm.assume(i1 %i.dd)
  %i.de = icmp ult i64 %i.dc, 9223372036854775793
  tail call void @llvm.assume(i1 %i.de)
  %i.df = sub nuw nsw i64 -16, %i.cz
  %i.dg = getelementptr inbounds i8, ptr %.sroa.626.0.copyload.i.i, i64 %i.df
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dg, i64 noundef %i.dc, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !66431
  br label %bb.n

bb.n:                                             ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i, %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.424.0.copyload.i.i) ]
  %i.dh = icmp ult i64 %.sroa.525.0.copyload.i.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.dh)
  %.idx.i.i = shl nuw nsw i64 %.sroa.525.0.copyload.i.i, 5
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.424.0.copyload.i.i, i64 %.idx.i.i
  %i.dj = icmp eq i64 %.sroa.525.0.copyload.i.i, 0
  br i1 %i.dj, label %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketjAdj2_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i, label %.lr.ph.i.i

bb.o:                                             ; preds = %.lr.ph.i.i
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.v, %bb.o
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.dk, %bb.o ], [ %.pn.i.i.i, %bb.v ]
  %i.dl = icmp eq i64 %.sroa.023.0.copyload.i.i, 0
  br i1 %i.dl, label %.body, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i.i.i: ; preds = %.body.i.i
  %i.dm = shl nuw i64 %.sroa.023.0.copyload.i.i, 5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.424.0.copyload.i.i, i64 noundef %i.dm, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !66432
  br label %.body

.lr.ph.i.i:                                       ; preds = %bb.n, %bb.y
  %.sroa.729.058.i.i = phi ptr [ %i.dn, %bb.y ], [ %.sroa.424.0.copyload.i.i, %bb.n ] ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.729.058.i.i, i64 32 ; 2 uses
  %.sroa.535.sroa.0.0.copyload.i.i = load double, ptr %.sroa.729.058.i.i, align 8, !noalias !66433
  %.sroa.535.sroa.5.0..sroa.729.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.729.058.i.i, i64 8
  %.sroa.535.sroa.5.0.copyload.i.i = load double, ptr %.sroa.535.sroa.5.0..sroa.729.8..sroa_idx.i.i, align 8, !noalias !66433
  %.sroa.7.8..sroa.729.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.729.058.i.i, i64 24
  %.sroa.7.8.copyload.i.i = load i64, ptr %.sroa.7.8..sroa.729.8..sroa_idx.i.i, align 8, !noalias !66433
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !66375
  %i.do = invoke noundef nonnull ptr @_RNvXso_NtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std3numjNtNtBb_10conversion12IntoPyObject13into_pyobject(i64 noundef %.sroa.7.8.copyload.i.i)
          to label %.noexc.i.i unwind label %bb.o, !noalias !66375 ; 3 uses

.noexc.i.i:                                       ; preds = %.lr.ph.i.i
  %i.dp = call noundef ptr @PyList_New(i64 noundef 2) #59, !noalias !66434 ; 7 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %bb.s, label %bb.q, !prof !60

bb.p:                                             ; preds = %bb.s
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.q:                                             ; preds = %.noexc.i.i
  %i.ds = invoke noundef nonnull ptr @_RNvMNtNtCsi0YPOvDEjiZ_4pyo35types5floatNtB2_7PyFloat3new(double noundef %.sroa.535.sroa.0.0.copyload.i.i)
          to label %bb.r unwind label %.body.i.i.i.i.i.i, !noalias !66434

bb.r:                                             ; preds = %bb.q
  %i.dt = call noundef i32 @PyList_SetItem(ptr noundef nonnull %i.dp, i64 noundef 0, ptr noundef nonnull %i.ds) #59, !noalias !66435 ; 0 uses
  %i.du = invoke noundef nonnull ptr @_RNvMNtNtCsi0YPOvDEjiZ_4pyo35types5floatNtB2_7PyFloat3new(double noundef %.sroa.535.sroa.5.0.copyload.i.i)
          to label %bb.u unwind label %.body.i.i.i.i.i.i, !noalias !66434

bb.s:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtCsi0YPOvDEjiZ_4pyo38instance13panic_on_null(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #61
          to label %.noexc.i.i.i19 unwind label %bb.p, !noalias !66436

.noexc.i.i.i19:                                   ; preds = %bb.s
  unreachable

.body.i.i.i.i.i.i:                                ; preds = %bb.r, %bb.q
  %lpad.loopexit18.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %i.dp) #59, !noalias !66434
  br label %bb.v

bb.t:                                             ; preds = %bb.u
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %i.dp) #59, !noalias !66437
  br label %bb.v

bb.u:                                             ; preds = %bb.r
  %i.dw = call noundef i32 @PyList_SetItem(ptr noundef nonnull %i.dp, i64 noundef 1, ptr noundef nonnull %i.du) #59, !noalias !66435 ; 0 uses
  invoke void @_RNvNvXs_NtNtCsi0YPOvDEjiZ_4pyo35types4dictINtNtBa_8instance5BoundNtB6_6PyDictENtB6_13PyDictMethods8set_item5inner(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef nonnull %i.do, ptr noundef nonnull %i.dp)
          to label %bb.w unwind label %bb.t, !noalias !66438

bb.v:                                             ; preds = %bb.t, %.body.i.i.i.i.i.i, %bb.p
  %.pn.i.i.i = phi { ptr, i32 } [ %i.dv, %bb.t ], [ %i.dr, %bb.p ], [ %lpad.loopexit18.i.i.i.i.i.i, %.body.i.i.i.i.i.i ]
  call void @_Py_DecRef(ptr noundef nonnull %i.do) #59, !noalias !66437
  br label %.body.i.i

_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketjAdj2_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.y, %bb.n
  %i.dx = icmp eq i64 %.sroa.023.0.copyload.i.i, 0
  br i1 %i.dx, label %bb.ab, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i18.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i.i18.i.i: ; preds = %_RNvXs4_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterINtCsfztDQZkQYYe_8indexmap6BucketjAdj2_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.dy = shl nuw i64 %.sroa.023.0.copyload.i.i, 5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.424.0.copyload.i.i, i64 noundef %i.dy, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !66439
end_hunk_9
begin_hunk_10_@_RNvMsfv_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_7NodeMap25___pymethod___contains____:.noexc
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.422.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.420.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.019.0.copyload, ptr %i.w, align 8
  store i32 1, ptr %0, align 8
  %i.x = atomicrmw add ptr %i.e, i64 -1 release, align 8 ; 0 uses
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx9iterators7NodeMapEEEB1T_.exit32
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvMsfv_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_7NodeMap25___pymethod___getstate____(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
.noexc:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [56 x i8], align 8                ; 13 uses
  %i.d = alloca [64 x i8], align 8                ; 5 uses
  %i.e = alloca [72 x i8], align 8                ; 5 uses
  %i.f = alloca [72 x i8], align 8                ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.h = tail call noundef zeroext i1 @_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker10try_borrow(ptr noundef nonnull align 8 %i.g)
  br i1 %i.h, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx9iterators7NodeMapEEEB1T_.exit17, label %bb.a

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx9iterators7NodeMapEEEB1T_.exit17: ; preds = %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  call void @_RNvXsn_NtCsi0YPOvDEjiZ_4pyo36pycellNtNtB7_3err5PyErrINtNtCslwFuT2d6ECx_4core7convert4FromNtB5_13PyBorrowErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.j)
  %.sroa.08.0.copyload = load ptr, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.08.0.copyload, ptr %i.k, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.411.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 56, i1 false)
  store i64 1, ptr %0, align 8
  br label %bb.o

.body:                                            ; preds = %.loopexit
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx9iterators7NodeMapEEEB1T_.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx9iterators7NodeMapEEEB1T_.exit: ; preds = %.body, %.body.thread
  %eh.lpad-body27 = phi { ptr, i32 } [ %i.co, %.body.thread ], [ %lpad.thr_comm.split-lp, %.body ]
  %i.l = atomicrmw add ptr %i.g, i64 -1 release, align 8 ; 0 uses
  resume { ptr, i32 } %eh.lpad-body27

bb.a:                                             ; preds = %.noexc
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75985)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75986)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75987)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !75988
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) @112, i64 32, i1 false), !noalias !75988
  store i64 0, ptr %i.c, align 8, !noalias !75988
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 6 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !75988
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 5 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !75988
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75989)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75990)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  invoke fastcc void @_RNvXsb_NtCslcZTgAvcSNH_9hashbrown3rawINtB5_8RawTablejENtNtCslwFuT2d6ECx_4core5clone5Clone10clone_fromCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(32) %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n)
          to label %.noexc.i.i.i unwind label %.body.thread, !noalias !75991

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.o = load i64, ptr %i.c, align 8, !range !59, !alias.scope !75989, !noalias !75988, !noundef !56 ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !75992, !noundef !56 ; 12 uses
  %i.r = icmp ult i64 %i.q, 384307168202282326
  tail call void @llvm.assume(i1 %i.r)
  %i.s = icmp samesign ult i64 %i.o, %i.q
  %i.t = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !75989, !noalias !75988 ; 9 uses
  br i1 %i.s, label %bb.b, label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejjE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

bb.b:                                             ; preds = %.noexc.i.i.i
  %i.u = icmp ult i64 %i.t, 384307168202282326
  tail call void @llvm.assume(i1 %i.u)
  %i.v = sub nsw i64 %i.q, %i.t                   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75993)
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !75994, !noalias !75988, !noundef !56
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !75994, !noalias !75988, !noundef !56
  %i.aa = add i64 %i.z, %i.x                      ; 2 uses
  %i.ab = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 384307168202282325) ; 3 uses
  %i.ac = sub nsw i64 %i.ab, %i.t                 ; 2 uses
  %i.ad = icmp ugt i64 %i.ac, %i.v
  br i1 %i.ad, label %bb.g, label %._RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit_crit_edge.i.i.i.i.i

._RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit_crit_edge.i.i.i.i.i: ; preds = %bb.b
  %.pre3.i.i.i.i.i = sub nsw i64 %i.o, %i.t
  br label %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %bb.j, %bb.h, %._RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit_crit_edge.i.i.i.i.i
  %.pre-phi.i.i.i.i.i = phi i64 [ %.pre3.i.i.i.i.i, %._RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit_crit_edge.i.i.i.i.i ], [ %i.an, %bb.j ], [ %i.an, %bb.h ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75995)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75996)
  %i.ae = icmp ugt i64 %i.v, %.pre-phi.i.i.i.i.i
  br i1 %i.ae, label %bb.c, label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejjE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

bb.c:                                             ; preds = %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75997)
  %i.af = icmp samesign ult i64 %i.q, %i.t
  br i1 %i.af, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !75998
  %.val11.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !75999, !noalias !75988
  call fastcc void @_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, i64 %i.o, ptr %.val11.i.i.i.i.i.i.i.i, i64 noundef %i.q, i64 noundef 8, i64 noundef range(i64 16, 89) 24), !noalias !75998
  %i.ag = load i64, ptr %i.b, align 8, !range !57, !noalias !75998, !noundef !56
  %i.ah = trunc nuw i64 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.ah, label %bb.e, label %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.aj = load i64, ptr %i.ai, align 8, !range !112, !noalias !75998, !noundef !56
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !noalias !75998
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !75998
  br label %bb.f

_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.am = load ptr, ptr %i.ai, align 8, !noalias !75998, !nonnull !56, !noundef !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !75998
  br label %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCskcxRuJ53GpR_9rustworkx.exit.sink.split.i.i.i.i.i

bb.f:                                             ; preds = %bb.e, %bb.c
  %.sroa.3.0.i.i.i.i.i.i.i = phi i64 [ %i.al, %bb.e ], [ undef, %bb.c ]
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ %i.aj, %bb.e ], [ 0, %bb.c ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.i.i.i.i.i.i, i64 %.sroa.3.0.i.i.i.i.i.i.i) #61
          to label %.noexc3.i.i.i unwind label %.body.thread, !noalias !75988

.noexc3.i.i.i:                                    ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76000)
  %i.an = sub nsw i64 %i.o, %i.t                  ; 3 uses
  %i.ao = icmp ugt i64 %i.ac, %i.an
  br i1 %i.ao, label %bb.h, label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejjE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76001)
  %i.ap = icmp ult i64 %i.aa, %i.t
  br i1 %i.ap, label %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !76002
  %.val11.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !76003, !noalias !75988
  call fastcc void @_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.o, ptr %.val11.i.i.i.i.i.i.i, i64 noundef %i.ab, i64 noundef 8, i64 noundef range(i64 16, 89) 24), !noalias !76002
  %i.aq = load i64, ptr %i.a, align 8, !range !57, !noalias !76002, !noundef !56
  %i.ar = trunc nuw i64 %i.aq to i1
  br i1 %i.ar, label %bb.j, label %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !76002
  br label %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !noalias !76002, !nonnull !56, !noundef !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !76002
  br label %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCskcxRuJ53GpR_9rustworkx.exit.sink.split.i.i.i.i.i

_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCskcxRuJ53GpR_9rustworkx.exit.sink.split.i.i.i.i.i: ; preds = %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i
  %storemerge.i.i.i = phi ptr [ %i.at, %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i ], [ %i.am, %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i ]
  %.sink.i.i.i.i.i = phi i64 [ %i.ab, %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i ], [ %i.q, %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i ] ; 2 uses
  store ptr %storemerge.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !75994, !noalias !75988
  store i64 %.sink.i.i.i.i.i, ptr %i.c, align 8, !alias.scope !75994, !noalias !75988
  br label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejjE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejjE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCskcxRuJ53GpR_9rustworkx.exit.sink.split.i.i.i.i.i, %bb.g, %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.au = phi i64 [ %i.o, %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ %.sink.i.i.i.i.i, %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCskcxRuJ53GpR_9rustworkx.exit.sink.split.i.i.i.i.i ], [ %i.o, %bb.g ], [ %i.o, %.noexc.i.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !75992, !nonnull !56, !noundef !56 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76004)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76005)
  %i.ax = icmp ugt i64 %i.q, %i.t
  br i1 %i.ax, label %.preheader.i.i.i.i.i.i, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtCsfztDQZkQYYe_8indexmap6BucketjjEE8truncateCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtCsfztDQZkQYYe_8indexmap6BucketjjEE8truncateCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i: ; preds = %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejjE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  store i64 %i.q, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !76006, !noalias !75988
  br label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtCsfztDQZkQYYe_8indexmap6BucketjjEE8truncateCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i, %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejjE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %i.ay = phi i64 [ %i.q, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtCsfztDQZkQYYe_8indexmap6BucketjjEE8truncateCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i ], [ %i.t, %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejjE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ] ; 12 uses
  %.idx3.i.i.i.i.i = mul nuw nsw i64 %i.ay, 24
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx3.i.i.i.i.i ; 3 uses
  %i.ba = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !76007, !noalias !75988, !nonnull !56, !noundef !56 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76008)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76009)
  %.not.i1.i.i.i.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i1.i.i.i.i.i, label %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketjjEINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.preheader.i.i.i.i.i.i
  %xtraiter = and i64 %i.ay, 1
  %i.bb = icmp eq i64 %i.ay, 1
  br i1 %i.bb, label %.lr.ph.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.preheader.new:                 ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.ay, -2
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader.new
  %.sroa.0.01.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %i.bn, %.lr.ph.i.i.i.i.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i.i.i ]
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %.sroa.0.01.i.i.i.i.i.i ; 2 uses
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %.sroa.0.01.i.i.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76010)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76011)
  %i.be = load <2 x i64>, ptr %i.bd, align 8, !alias.scope !76012, !noalias !76013
  store <2 x i64> %i.be, ptr %i.bc, align 8, !alias.scope !76014, !noalias !76015
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.bg, align 8, !alias.scope !76016, !noalias !76013, !noundef !56
  store i64 %.val.i.i.i.i.i.i.i, ptr %i.bf, align 8, !alias.scope !76017, !noalias !76015
  %i.bh = or disjoint i64 %.sroa.0.01.i.i.i.i.i.i, 1 ; 2 uses
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %i.bh ; 2 uses
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %i.bh ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76018)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76019)
  %i.bk = load <2 x i64>, ptr %i.bj, align 8, !alias.scope !76020, !noalias !76013
  store <2 x i64> %i.bk, ptr %i.bi, align 8, !alias.scope !76021, !noalias !76015
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %.val.i.i.i.i.i.i.i.1 = load i64, ptr %i.bm, align 8, !alias.scope !76022, !noalias !76013, !noundef !56
  store i64 %.val.i.i.i.i.i.i.i.1, ptr %i.bl, align 8, !alias.scope !76023, !noalias !76015
  %i.bn = add nuw nsw i64 %.sroa.0.01.i.i.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketjjEINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i

_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketjjEINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketjjEINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.epil.preheader:                ; preds = %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketjjEINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.preheader
  %.sroa.0.01.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bn, %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketjjEINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod37 = trunc i64 %i.ay to i1
  tail call void @llvm.assume(i1 %lcmp.mod37)
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %.sroa.0.01.i.i.i.i.i.i.epil.init ; 2 uses
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %.sroa.0.01.i.i.i.i.i.i.epil.init ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76010)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76011)
  %i.bq = load <2 x i64>, ptr %i.bp, align 8, !alias.scope !76012, !noalias !76013
  store <2 x i64> %i.bq, ptr %i.bo, align 8, !alias.scope !76014, !noalias !76015
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %.val.i.i.i.i.i.i.i.epil = load i64, ptr %i.bs, align 8, !alias.scope !76016, !noalias !76013, !noundef !56
  store i64 %.val.i.i.i.i.i.i.i.epil, ptr %i.br, align 8, !alias.scope !76017, !noalias !76015
  br label %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketjjEINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketjjEINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.epil.preheader, %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketjjEINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.loopexit.unr-lcssa, %.preheader.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76024)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76025)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76026)
  %.idx4.i.i.i.i.i = sub nsw i64 %i.q, %i.ay      ; 5 uses
  %i.bt = sub nsw i64 %i.au, %i.ay
  %i.bu = icmp ugt i64 %.idx4.i.i.i.i.i, %i.bt
  br i1 %i.bu, label %bb.k, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtCsfztDQZkQYYe_8indexmap6BucketjjEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i, !prof !60

bb.k:                                             ; preds = %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketjjEINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %i.ay, i64 noundef %.idx4.i.i.i.i.i, i64 noundef 8, i64 noundef 24)
          to label %.noexc4.i.i.i unwind label %.body.thread, !noalias !75988

.noexc4.i.i.i:                                    ; preds = %bb.k
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !76027, !noalias !75988
  %.pre.i1.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !76027, !noalias !75988
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtCsfztDQZkQYYe_8indexmap6BucketjjEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtCsfztDQZkQYYe_8indexmap6BucketjjEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc4.i.i.i, %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketjjEINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %i.bv = phi ptr [ %i.ba, %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketjjEINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ %.pre.i1.i.i.i.i, %.noexc4.i.i.i ] ; 3 uses
  %i.bw = phi i64 [ %i.ay, %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketjjEINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i, %.noexc4.i.i.i ] ; 3 uses
  %i.bx = icmp eq i64 %i.ay, %i.q
  br i1 %i.bx, label %.loopexit, label %.preheader.i.i.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.i.i.preheader:             ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtCsfztDQZkQYYe_8indexmap6BucketjjEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i
  %.neg = add i64 %i.ay, 1
  %xtraiter38 = and i64 %.idx4.i.i.i.i.i, 1
  %i.by = icmp eq i64 %i.q, %.neg
  br i1 %i.by, label %.preheader.i.i.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.i.i.preheader.new:         ; preds = %.preheader.i.i.i.i.i.i.i.i.preheader
  %unroll_iter42 = and i64 %.idx4.i.i.i.i.i, -2
  br label %.preheader.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.preheader.new
  %i.bz = phi i64 [ %i.bw, %.preheader.i.i.i.i.i.i.i.i.preheader.new ], [ %i.cm, %.preheader.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.preheader.new ], [ %i.cn, %.preheader.i.i.i.i.i.i.i.i ] ; 3 uses
  %niter43 = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.preheader.new ], [ %niter43.next.1, %.preheader.i.i.i.i.i.i.i.i ]
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76028)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !76029, !noalias !76030, !noundef !56
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %i.bv, i64 %i.bz ; 2 uses
  %i.ce = load <2 x i64>, ptr %i.ca, align 8, !alias.scope !76031, !noalias !76030
  store <2 x i64> %i.ce, ptr %i.cd, align 8, !noalias !76032
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store i64 %i.cc, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !76032
  %i.cf = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76033)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  %i.ci = load i64, ptr %i.ch, align 8, !alias.scope !76034, !noalias !76030, !noundef !56
  %i.cj = getelementptr [24 x i8], ptr %i.bv, i64 %i.bz ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 24
  %i.cl = load <2 x i64>, ptr %i.cg, align 8, !alias.scope !76035, !noalias !76030
  store <2 x i64> %i.cl, ptr %i.ck, align 8, !noalias !76036
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr i8, ptr %i.cj, i64 40
  store i64 %i.ci, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !76036
  %i.cm = add i64 %i.bz, 2                        ; 3 uses
  %i.cn = add nuw i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter43.next.1 = add i64 %niter43, 2           ; 2 uses
  %niter43.ncmp.1 = icmp eq i64 %niter43.next.1, %unroll_iter42
  br i1 %niter43.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.preheader.i.i.i.i.i.i.i.i

.body.thread:                                     ; preds = %bb.a, %bb.f, %bb.k
  %i.co = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap5inner4CorejjEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(56) %i.c) #63, !noalias !75988
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx9iterators7NodeMapEEEB1T_.exit

.loopexit.loopexit.unr-lcssa:                     ; preds = %.preheader.i.i.i.i.i.i.i.i
  %lcmp.mod39.not = icmp eq i64 %xtraiter38, 0
  br i1 %lcmp.mod39.not, label %.loopexit, label %.preheader.i.i.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.i.i.epil.preheader:        ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.i.i.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ %i.bw, %.preheader.i.i.i.i.i.i.i.i.preheader ], [ %i.cm, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.preheader ], [ %i.cn, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod41 = trunc i64 %.idx4.i.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod41)
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.epil.init ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76028)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !76029, !noalias !76030, !noundef !56
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %i.bv, i64 %.epil.init ; 2 uses
  %i.ct = load <2 x i64>, ptr %i.cp, align 8, !alias.scope !76031, !noalias !76030
  store <2 x i64> %i.ct, ptr %i.cs, align 8, !noalias !76032
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store i64 %i.cr, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !76032
  %i.cu = add i64 %.epil.init, 1
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.i.i.i.i.i.i.i.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtCsfztDQZkQYYe_8indexmap6BucketjjEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i
  %storemerge.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bw, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtCsfztDQZkQYYe_8indexmap6BucketjjEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i ], [ %i.cm, %.loopexit.loopexit.unr-lcssa ], [ %i.cu, %.preheader.i.i.i.i.i.i.i.i.epil.preheader ]
  store i64 %storemerge.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !76027, !noalias !76037
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !75988
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i.i18 = load i64, ptr %i.cv, align 8, !alias.scope !76038, !noundef !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %.sroa.45.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i64 %.val.i.i18, ptr %.sroa.45.sroa.4.0..sroa_idx, align 8
  invoke fastcc void @_RNvYINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapjjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateENtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.e, ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.d)
          to label %bb.l unwind label %.body

bb.l:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.cw = load i64, ptr %i.e, align 8, !range !57, !noundef !56
  %i.cx = trunc nuw i64 %i.cw to i1
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br i1 %i.cx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cy, ptr noundef nonnull align 8 dereferenceable(64) %i.cz, i64 64, i1 false)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx9iterators7NodeMapEEEB1T_.exit19

bb.n:                                             ; preds = %bb.l
  %i.da = load ptr, ptr %i.cz, align 8, !nonnull !56, !noundef !56
  store ptr %i.da, ptr %i.cy, align 8
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx9iterators7NodeMapEEEB1T_.exit19

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx9iterators7NodeMapEEEB1T_.exit19: ; preds = %bb.n, %bb.m
  %.sink = phi i64 [ 1, %bb.m ], [ 0, %bb.n ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.db = atomicrmw add ptr %i.g, i64 -1 release, align 8 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx9iterators7NodeMapEEEB1T_.exit19, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx9iterators7NodeMapEEEB1T_.exit17
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvMsfv_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_7NodeMap25___pymethod___setstate____(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef %1, ptr nofree noundef readonly captures(address) %2, i64 noundef %3, ptr noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 3 uses
  %i.e = alloca [72 x i8], align 8                ; 7 uses
  %i.f = alloca [72 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 12 uses
  %i.h = alloca [32 x i8], align 8                ; 5 uses
  %i.i = alloca [64 x i8], align 8                ; 21 uses
  %i.j = alloca [8 x i8], align 8                 ; 6 uses
  %i.k = alloca [64 x i8], align 8                ; 4 uses
  %i.l = alloca [72 x i8], align 8                ; 9 uses
  %i.m = alloca [64 x i8], align 8                ; 2 uses
  %i.n = alloca [72 x i8], align 8                ; 5 uses
  %.sroa.57 = alloca [64 x i8], align 8           ; 7 uses
  %i.o = alloca [72 x i8], align 8                ; 5 uses
  %i.p = alloca [72 x i8], align 8                ; 6 uses
  %i.q = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr null, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call fastcc void @_RINvMs5_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @1945, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noalias nofree noundef nonnull align 8 %i.q, i64 noundef 1)
  %i.r = load i64, ptr %i.p, align 8, !range !57, !noundef !56
  %i.s = trunc nuw i64 %i.r to i1
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.u, ptr noundef nonnull align 8 dereferenceable(64) %i.t, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  store i64 1, ptr %0, align 8
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard15PyClassGuardMutNtNtCskcxRuJ53GpR_9rustworkx9iterators7NodeMapEEEB1W_.exit32

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.w = invoke noundef zeroext i1 @_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker14try_borrow_mut(ptr noundef nonnull align 8 %i.v)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.c
  br i1 %i.w, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.noexc
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  invoke void @_RNvXsr_NtCsi0YPOvDEjiZ_4pyo36pycellNtNtB7_3err5PyErrINtNtCslwFuT2d6ECx_4core7convert4FromNtB5_16PyBorrowMutErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.x)
          to label %.thread43 unwind label %bb.e

bb.e:                                             ; preds = %.noexc23, %bb.k, %bb.i, %.noexc24, %bb.h, %bb.g, %bb.d, %bb.c
  %.sroa.0.0 = phi ptr [ %1, %.noexc23 ], [ %1, %bb.g ], [ %1, %bb.k ], [ %1, %bb.i ], [ %1, %.noexc24 ], [ %1, %bb.h ], [ null, %bb.d ], [ null, %bb.c ]
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.p, %bb.e
  %.sroa.0.3 = phi ptr [ %.sroa.0.0, %bb.e ], [ %1, %bb.p ] ; 2 uses
  %eh.lpad-body29 = phi { ptr, i32 } [ %i.y, %bb.e ], [ %.pn45.i.i.i, %bb.p ] ; 2 uses
  %i.z = icmp eq ptr %.sroa.0.3, null
  br i1 %i.z, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard15PyClassGuardMutNtNtCskcxRuJ53GpR_9rustworkx9iterators7NodeMapEEEB1W_.exit, label %.body.thread

.body.thread:                                     ; preds = %bb.m, %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i, %.body
  %eh.lpad-body2948 = phi { ptr, i32 } [ %eh.lpad-body29, %.body ], [ %i.as, %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i ], [ %i.as, %bb.m ]
  %.sroa.0.347 = phi ptr [ %.sroa.0.3, %.body ], [ %1, %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i ], [ %1, %bb.m ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.347, i64 80
  invoke void @_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker18release_borrow_mut(ptr noundef nonnull align 8 %i.aa)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard15PyClassGuardMutNtNtCskcxRuJ53GpR_9rustworkx9iterators7NodeMapEEEB1W_.exit unwind label %bb.ah

.thread43:                                        ; preds = %bb.d
  %.sroa.013.0.copyload = load ptr, ptr %i.x, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.416.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.414.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.013.0.copyload, ptr %i.ab, align 8
  store i64 1, ptr %0, align 8
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard15PyClassGuardMutNtNtCskcxRuJ53GpR_9rustworkx9iterators7NodeMapEEEB1W_.exit32

bb.f:                                             ; preds = %.noexc
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.57)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ad = load ptr, ptr %i.q, align 8, !nonnull !56, !noundef !56 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !76067
  call void @llvm.experimental.noalias.scope.decl(metadata !76068)
  call void @llvm.experimental.noalias.scope.decl(metadata !76069)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !76070
end_hunk_10
begin_hunk_11_@_RNvXNtCs3sCKvcUjPpt_9hashbrown3mapINtB2_7HashMapjINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEENtNtCslwFuT2d6ECx_4core5clone5Clone10clone_fromCskcxRuJ53GpR_9rustworkx:bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !148402, !noundef !56 ; 3 uses
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvXs_NtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit.i
  %.val24.i.i2.i = load <16 x i8>, ptr %i.br, align 16, !noalias !148403
  %i.bv = icmp sgt <16 x i8> %.val24.i.i2.i, splat (i8 -1)
  %i.bw = bitcast <16 x i1> %i.bv to i16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 6 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.cd = ptrtoint ptr %i.br to i64
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.i.i, %.lr.ph.i.i
  %.sroa.0.031.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.gl, %.loopexit.i.i ]
  %.sroa.14.030.i.i = phi i64 [ %i.bt, %.lr.ph.i.i ], [ %i.cp, %.loopexit.i.i ]
  %.sroa.10.029.i.i = phi i16 [ %i.bw, %.lr.ph.i.i ], [ %i.cm, %.loopexit.i.i ] ; 2 uses
  %.sroa.012.028.i.i = phi ptr [ %i.br, %.lr.ph.i.i ], [ %.sroa.012.1.i.i, %.loopexit.i.i ] ; 2 uses
  %.sroa.6.027.i.i = phi ptr [ %i.bx, %.lr.ph.i.i ], [ %.sroa.6.1.i4.i, %.loopexit.i.i ] ; 2 uses
  %.not10.i.i3.i = icmp eq i16 %.sroa.10.029.i.i, 0
  br i1 %.not10.i.i3.i, label %.lr.ph.i.i6.i, label %.loopexit17.i.i

.lr.ph.i.i6.i:                                    ; preds = %bb.l, %.lr.ph.i.i6.i
  %i.ce = phi ptr [ %i.ci, %.lr.ph.i.i6.i ], [ %.sroa.6.027.i.i, %bb.l ] ; 2 uses
  %i.cf = phi ptr [ %i.ch, %.lr.ph.i.i6.i ], [ %.sroa.012.028.i.i, %bb.l ]
  %.val68.i.i7.i = load <16 x i8>, ptr %i.ce, align 16, !noalias !148404
  %i.cg = icmp sgt <16 x i8> %.val68.i.i7.i, splat (i8 -1)
  %i.ch = getelementptr inbounds i8, ptr %i.cf, i64 -1152 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 2 uses
  %.cast.i.i8.i = bitcast <16 x i1> %i.cg to i16  ; 2 uses
  %.not.i.i9.i = icmp eq i16 %.cast.i.i8.i, 0
  br i1 %.not.i.i9.i, label %.lr.ph.i.i6.i, label %.loopexit17.i.i

.loopexit17.i.i:                                  ; preds = %.lr.ph.i.i6.i, %bb.l
  %.sroa.6.1.i4.i = phi ptr [ %.sroa.6.027.i.i, %bb.l ], [ %i.ci, %.lr.ph.i.i6.i ]
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.028.i.i, %bb.l ], [ %i.ch, %.lr.ph.i.i6.i ] ; 2 uses
  %.lcssa.i.i5.i = phi i16 [ %.sroa.10.029.i.i, %bb.l ], [ %.cast.i.i8.i, %.lr.ph.i.i6.i ] ; 3 uses
  %i.cj = add i16 %.lcssa.i.i5.i, -1
  %i.ck = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i5.i, i1 true)
  %i.cl = zext nneg i16 %i.ck to i64
  %i.cm = and i16 %i.cj, %.lcssa.i.i5.i
  %i.cn = sub nsw i64 0, %i.cl
  %i.co = getelementptr inbounds [72 x i8], ptr %.sroa.012.1.i.i, i64 %i.cn ; 6 uses
  %i.cp = add i64 %.sroa.14.030.i.i, -1           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.415.i.i)
  %i.cq = getelementptr inbounds i8, ptr %i.co, i64 -72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148405)
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !148405, !noalias !148400, !noundef !56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148407)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !148408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.by, ptr noundef nonnull align 8 dereferenceable(32) @112, i64 32, i1 false), !noalias !148408
  store i64 0, ptr %i.c, align 8, !noalias !148408
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !148408
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !148408
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148410)
  %i.cs = getelementptr inbounds i8, ptr %i.co, i64 -40
  invoke fastcc void @_RNvXsb_NtCslcZTgAvcSNH_9hashbrown3rawINtB5_8RawTablejENtNtCslwFuT2d6ECx_4core5clone5Clone10clone_fromCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(32) %i.by, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cs)
          to label %.noexc.i.i.i.i.i unwind label %.body.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !148411

.noexc.i.i.i.i.i:                                 ; preds = %.loopexit17.i.i
  %i.ct = load i64, ptr %i.c, align 8, !range !59, !alias.scope !148409, !noalias !148408, !noundef !56 ; 8 uses
  %i.cu = getelementptr inbounds i8, ptr %i.co, i64 -48
  %i.cv = load i64, ptr %i.cu, align 8, !alias.scope !148412, !noalias !148400, !noundef !56 ; 12 uses
  %i.cw = icmp ult i64 %i.cv, 384307168202282326
  tail call void @llvm.assume(i1 %i.cw)
  %i.cx = icmp samesign ult i64 %i.ct, %i.cv
  %i.cy = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !148409, !noalias !148408 ; 9 uses
  br i1 %i.cx, label %bb.m, label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %.noexc.i.i.i.i.i
  %i.cz = icmp ult i64 %i.cy, 384307168202282326
  tail call void @llvm.assume(i1 %i.cz)
  %i.da = sub nsw i64 %i.cv, %i.cy                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148413)
  %i.db = load i64, ptr %i.bz, align 8, !alias.scope !148414, !noalias !148408, !noundef !56
  %i.dc = load i64, ptr %i.ca, align 8, !alias.scope !148414, !noalias !148408, !noundef !56
  %i.dd = add i64 %i.dc, %i.db                    ; 2 uses
  %i.de = tail call i64 @llvm.umin.i64(i64 %i.dd, i64 384307168202282325) ; 3 uses
  %i.df = sub nsw i64 %i.de, %i.cy                ; 2 uses
  %i.dg = icmp ugt i64 %i.df, %i.da
  br i1 %i.dg, label %bb.q, label %._RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit_crit_edge.i.i.i.i.i.i.i

._RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit_crit_edge.i.i.i.i.i.i.i: ; preds = %bb.m
  %.pre3.i.i.i.i.i.i.i = sub nsw i64 %i.ct, %i.cy
  br label %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i

_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i: ; preds = %bb.t, %bb.r, %._RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit_crit_edge.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i = phi i64 [ %.pre3.i.i.i.i.i.i.i, %._RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit_crit_edge.i.i.i.i.i.i.i ], [ %i.dp, %bb.t ], [ %i.dp, %bb.r ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148416)
  %i.dh = icmp ugt i64 %i.da, %.pre-phi.i.i.i.i.i.i.i
  br i1 %i.dh, label %bb.n, label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148417)
  %i.di = icmp samesign ult i64 %i.cv, %i.cy
  br i1 %i.di, label %.loopexit18.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !148418
  %.val11.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !148419, !noalias !148408
  call fastcc void @_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, i64 %i.ct, ptr %.val11.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.cv, i64 noundef 8, i64 noundef range(i64 16, 89) 24), !noalias !148418
  %i.dj = load i64, ptr %i.b, align 8, !range !57, !noalias !148418, !noundef !56
  %i.dk = trunc nuw i64 %i.dj to i1
  br i1 %i.dk, label %bb.p, label %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.dl = load i64, ptr %i.cc, align 8, !range !112, !noalias !148418, !noundef !56
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.dn = load i64, ptr %i.dm, align 8, !noalias !148418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !148418
  br label %.loopexit18.i.i

_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.o
  %i.do = load ptr, ptr %i.cc, align 8, !noalias !148418, !nonnull !56, !noundef !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !148418
  br label %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCskcxRuJ53GpR_9rustworkx.exit.sink.split.i.i.i.i.i.i.i

.loopexit18.i.i:                                  ; preds = %bb.n, %bb.p
  %.sroa.3.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dn, %bb.p ], [ undef, %bb.n ]
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dl, %bb.p ], [ 0, %bb.n ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.i.i.i.i.i.i.i.i, i64 %.sroa.3.0.i.i.i.i.i.i.i.i.i) #61
          to label %.noexc3.i.i.i.i.i unwind label %.body.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !148408

.noexc3.i.i.i.i.i:                                ; preds = %.loopexit18.i.i
  unreachable

bb.q:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148420)
  %i.dp = sub nsw i64 %i.ct, %i.cy                ; 3 uses
  %i.dq = icmp ugt i64 %i.df, %i.dp
  br i1 %i.dq, label %bb.r, label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148421)
  %i.dr = icmp ult i64 %i.dd, %i.cy
  br i1 %i.dr, label %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !148422
  %.val11.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !148423, !noalias !148408
  call fastcc void @_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.ct, ptr %.val11.i.i.i.i.i.i.i.i.i, i64 noundef %i.de, i64 noundef 8, i64 noundef range(i64 16, 89) 24), !noalias !148422
  %i.ds = load i64, ptr %i.a, align 8, !range !57, !noalias !148422, !noundef !56
  %i.dt = trunc nuw i64 %i.ds to i1
  br i1 %i.dt, label %bb.t, label %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !148422
  br label %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i

_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i: ; preds = %bb.s
  %i.du = load ptr, ptr %i.cb, align 8, !noalias !148422, !nonnull !56, !noundef !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !148422
  br label %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCskcxRuJ53GpR_9rustworkx.exit.sink.split.i.i.i.i.i.i.i

_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCskcxRuJ53GpR_9rustworkx.exit.sink.split.i.i.i.i.i.i.i: ; preds = %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i, %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i
  %storemerge.i.i.i.i.i = phi ptr [ %i.du, %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i ], [ %i.do, %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i ]
  %.sink.i.i.i.i.i.i.i = phi i64 [ %i.de, %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i ], [ %i.cv, %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  store ptr %storemerge.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !148414, !noalias !148408
  store i64 %.sink.i.i.i.i.i.i.i, ptr %i.c, align 8, !alias.scope !148414, !noalias !148408
  br label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i

_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCskcxRuJ53GpR_9rustworkx.exit.sink.split.i.i.i.i.i.i.i, %bb.q, %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.dv = phi i64 [ %i.ct, %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i ], [ %.sink.i.i.i.i.i.i.i, %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCskcxRuJ53GpR_9rustworkx.exit.sink.split.i.i.i.i.i.i.i ], [ %i.ct, %bb.q ], [ %i.ct, %.noexc.i.i.i.i.i ]
  %i.dw = getelementptr inbounds i8, ptr %i.co, i64 -56
  %i.dx = load ptr, ptr %i.dw, align 8, !alias.scope !148412, !noalias !148400, !nonnull !56, !noundef !56 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148425)
  %i.dy = icmp ugt i64 %i.cv, %i.cy
  br i1 %i.dy, label %.preheader.i.i.i.i.i.i.i.i, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEE8truncateCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i.i

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEE8truncateCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i.i: ; preds = %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  store i64 %i.cv, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !148426, !noalias !148408
  br label %.preheader.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEE8truncateCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i.i, %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %i.dz = phi i64 [ %i.cv, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEE8truncateCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i.i ], [ %i.cy, %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i ] ; 12 uses
  %.idx3.i.i.i.i.i.i.i = mul nuw nsw i64 %i.dz, 24
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 %.idx3.i.i.i.i.i.i.i ; 3 uses
  %i.eb = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !148427, !noalias !148408, !nonnull !56, !noundef !56 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148429)
  %.not.i1.i.i.i.i.i.i.i = icmp eq i64 %i.dz, 0
  br i1 %.not.i1.i.i.i.i.i.i.i, label %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.preheader.i.i.i.i.i.i.i.i
  %xtraiter = and i64 %i.dz, 1
  %i.ec = icmp eq i64 %i.dz, 1
  br i1 %i.ec, label %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.preheader.new:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.dz, -2
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new
  %.sroa.0.01.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new ], [ %i.es, %.lr.ph.i.i.i.i.i.i.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.ed = getelementptr inbounds nuw [24 x i8], ptr %i.eb, i64 %.sroa.0.01.i.i.i.i.i.i.i.i ; 3 uses
  %i.ee = getelementptr inbounds nuw [24 x i8], ptr %i.dx, i64 %.sroa.0.01.i.i.i.i.i.i.i.i ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148430)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148431)
  %i.ef = load i64, ptr %i.ee, align 8, !alias.scope !148432, !noalias !148433, !noundef !56
  store i64 %i.ef, ptr %i.ed, align 8, !alias.scope !148434, !noalias !148435
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %.val1.i.i.i.i.i.i.i.i.i = load i32, ptr %i.eh, align 8, !alias.scope !148436, !noalias !148433, !noundef !56
  store i32 %.val1.i.i.i.i.i.i.i.i.i, ptr %i.eg, align 8, !alias.scope !148437, !noalias !148435
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %.val.i.i.i.i.i.i.i.i.i = load double, ptr %i.ej, align 8, !alias.scope !148438, !noalias !148433, !noundef !56
  store double %.val.i.i.i.i.i.i.i.i.i, ptr %i.ei, align 8, !alias.scope !148439, !noalias !148435
  %i.ek = or disjoint i64 %.sroa.0.01.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.el = getelementptr inbounds nuw [24 x i8], ptr %i.eb, i64 %i.ek ; 3 uses
  %i.em = getelementptr inbounds nuw [24 x i8], ptr %i.dx, i64 %i.ek ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148440)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148441)
  %i.en = load i64, ptr %i.em, align 8, !alias.scope !148442, !noalias !148433, !noundef !56
  store i64 %i.en, ptr %i.el, align 8, !alias.scope !148443, !noalias !148435
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %.val1.i.i.i.i.i.i.i.i.i.1 = load i32, ptr %i.ep, align 8, !alias.scope !148444, !noalias !148433, !noundef !56
  store i32 %.val1.i.i.i.i.i.i.i.i.i.1, ptr %i.eo, align 8, !alias.scope !148445, !noalias !148435
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %.val.i.i.i.i.i.i.i.i.i.1 = load double, ptr %i.er, align 8, !alias.scope !148446, !noalias !148433, !noundef !56
  store double %.val.i.i.i.i.i.i.i.i.i.1, ptr %i.eq, align 8, !alias.scope !148447, !noalias !148435
  %i.es = add nuw nsw i64 %.sroa.0.01.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i

_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.epil.preheader:            ; preds = %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %.sroa.0.01.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.es, %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod63 = trunc i64 %i.dz to i1
  tail call void @llvm.assume(i1 %lcmp.mod63)
  %i.et = getelementptr inbounds nuw [24 x i8], ptr %i.eb, i64 %.sroa.0.01.i.i.i.i.i.i.i.i.epil.init ; 3 uses
  %i.eu = getelementptr inbounds nuw [24 x i8], ptr %i.dx, i64 %.sroa.0.01.i.i.i.i.i.i.i.i.epil.init ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148430)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148431)
  %i.ev = load i64, ptr %i.eu, align 8, !alias.scope !148432, !noalias !148433, !noundef !56
  store i64 %i.ev, ptr %i.et, align 8, !alias.scope !148434, !noalias !148435
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %.val1.i.i.i.i.i.i.i.i.i.epil = load i32, ptr %i.ex, align 8, !alias.scope !148436, !noalias !148433, !noundef !56
  store i32 %.val1.i.i.i.i.i.i.i.i.i.epil, ptr %i.ew, align 8, !alias.scope !148437, !noalias !148435
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %.val.i.i.i.i.i.i.i.i.i.epil = load double, ptr %i.ez, align 8, !alias.scope !148438, !noalias !148433, !noundef !56
  store double %.val.i.i.i.i.i.i.i.i.i.epil, ptr %i.ey, align 8, !alias.scope !148439, !noalias !148435
  br label %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i

_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader, %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.preheader.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148448)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148450)
  %.idx4.i.i.i.i.i.i.i = sub nsw i64 %i.cv, %i.dz ; 5 uses
  %i.fa = sub nsw i64 %i.dv, %i.dz
  %i.fb = icmp ugt i64 %.idx4.i.i.i.i.i.i.i, %i.fa
  br i1 %i.fb, label %bb.u, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i, !prof !60

bb.u:                                             ; preds = %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %i.dz, i64 noundef %.idx4.i.i.i.i.i.i.i, i64 noundef 8, i64 noundef 24)
          to label %.noexc4.i.i.i.i.i unwind label %.body.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !148408

.noexc4.i.i.i.i.i:                                ; preds = %bb.u
  %.pre.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !148451, !noalias !148408
  %.pre.i1.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !148451, !noalias !148408
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc4.i.i.i.i.i, %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i
  %i.fc = phi ptr [ %i.eb, %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i ], [ %.pre.i1.i.i.i.i.i.i, %.noexc4.i.i.i.i.i ] ; 3 uses
  %i.fd = phi i64 [ %i.dz, %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i, %.noexc4.i.i.i.i.i ] ; 3 uses
  %i.fe = icmp eq i64 %i.dz, %i.cv
  br i1 %i.fe, label %.loopexit.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i
  %.neg = add i64 %i.dz, 1
  %xtraiter64 = and i64 %.idx4.i.i.i.i.i.i.i, 1
  %i.ff = icmp eq i64 %i.cv, %.neg
  br i1 %i.ff, label %.preheader.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.i.i.i.i.preheader.new:     ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter68 = and i64 %.idx4.i.i.i.i.i.i.i, -2
  br label %.preheader.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.new
  %i.fg = phi i64 [ %i.fd, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.fv, %.preheader.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.fw, %.preheader.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %niter69 = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter69.next.1, %.preheader.i.i.i.i.i.i.i.i.i.i ]
  %i.fh = getelementptr inbounds nuw [24 x i8], ptr %i.ea, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148452)
  %i.fi = load i64, ptr %i.fh, align 8, !alias.scope !148453, !noalias !148454, !noundef !56
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.fj, align 8, !alias.scope !148455, !noalias !148454, !noundef !56
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fl = load double, ptr %i.fk, align 8, !alias.scope !148456, !noalias !148454, !noundef !56
  %i.fm = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %i.fg ; 3 uses
  store i64 %i.fi, ptr %i.fm, align 8, !noalias !148457
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store double %i.fl, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !148457
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !148457
  %i.fn = getelementptr inbounds nuw [24 x i8], ptr %i.ea, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148458)
  %i.fp = load i64, ptr %i.fo, align 8, !alias.scope !148459, !noalias !148454, !noundef !56
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 40
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = load i32, ptr %i.fq, align 8, !alias.scope !148460, !noalias !148454, !noundef !56
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %i.fs = load double, ptr %i.fr, align 8, !alias.scope !148461, !noalias !148454, !noundef !56
  %i.ft = getelementptr [24 x i8], ptr %i.fc, i64 %i.fg ; 3 uses
  %i.fu = getelementptr i8, ptr %i.ft, i64 24
  store i64 %i.fp, ptr %i.fu, align 8, !noalias !148462
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr i8, ptr %i.ft, i64 32
  store double %i.fs, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !148462
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr i8, ptr %i.ft, i64 40
  store i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !148462
  %i.fv = add i64 %i.fg, 2                        ; 3 uses
  %i.fw = add nuw i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter69.next.1 = add i64 %niter69, 2           ; 2 uses
  %niter69.ncmp.1 = icmp eq i64 %niter69.next.1, %unroll_iter68
  br i1 %niter69.ncmp.1, label %.loopexit.i.i.loopexit.unr-lcssa, label %.preheader.i.i.i.i.i.i.i.i.i.i

.body.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %.loopexit17.i.i, %bb.u, %.loopexit18.i.i
  %lpad.loopexit.split-lp53 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap5inner4CoreNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(56) %i.c) #63, !noalias !148408
  tail call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown10scopeguard10ScopeGuardTjQINtNtBG_3raw8RawTableTjINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEEEENCNvMsd_B1y_B1v_15clone_from_impl0EECskcxRuJ53GpR_9rustworkx(i64 %.sroa.0.031.i.i, ptr nonnull align 8 dereferenceable(32) %0) #63, !noalias !148399
  br label %.body.i

.loopexit.i.i.loopexit.unr-lcssa:                 ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod65.not = icmp eq i64 %xtraiter64, 0
  br i1 %lcmp.mod65.not, label %.loopexit.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.i.i.i.i.epil.preheader:    ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ %i.fd, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.fv, %.loopexit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.fw, %.loopexit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod67 = trunc i64 %.idx4.i.i.i.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod67)
  %i.fx = getelementptr inbounds nuw [24 x i8], ptr %i.ea, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148452)
  %i.fy = load i64, ptr %i.fx, align 8, !alias.scope !148453, !noalias !148454, !noundef !56
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = load i32, ptr %i.fz, align 8, !alias.scope !148455, !noalias !148454, !noundef !56
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.gb = load double, ptr %i.ga, align 8, !alias.scope !148456, !noalias !148454, !noundef !56
  %i.gc = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %.epil.init ; 3 uses
  store i64 %i.fy, ptr %i.gc, align 8, !noalias !148457
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store double %i.gb, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !148457
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  store i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !148457
  %i.gd = add i64 %.epil.init, 1
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.epil.preheader, %.loopexit.i.i.loopexit.unr-lcssa, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i
  %storemerge.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fd, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.fv, %.loopexit.i.i.loopexit.unr-lcssa ], [ %i.gd, %.preheader.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  store i64 %storemerge.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !148451, !noalias !148463
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.415.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !noalias !148464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !148408
  %i.ge = getelementptr inbounds i8, ptr %i.co, i64 -8
  %.val.i.i.i.i = load i64, ptr %i.ge, align 8, !alias.scope !148465, !noalias !148400, !noundef !56
  %i.gf = ptrtoint ptr %i.co to i64
  %i.gg = sub i64 %i.cd, %i.gf
  %i.gh = sdiv exact i64 %i.gg, 72                ; 2 uses
  %i.gi = sub nsw i64 0, %i.gh
  %i.gj = getelementptr inbounds [72 x i8], ptr %i.bq, i64 %i.gi ; 3 uses
  %i.gk = getelementptr inbounds i8, ptr %i.gj, i64 -72
  store i64 %i.cr, ptr %i.gk, align 8, !noalias !148400
  %.sroa.415.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.gj, i64 -64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.415.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.415.i.i, i64 56, i1 false), !noalias !148400
  %.sroa.516.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.gj, i64 -8
  store i64 %.val.i.i.i.i, ptr %.sroa.516.0..sroa_idx.i.i, align 8, !noalias !148400
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.415.i.i)
  %i.gl = add nsw i64 %i.gh, 1
  %i.gm = icmp eq i64 %i.cp, 0
  br i1 %i.gm, label %.loopexit.i, label %bb.l

bb.v:                                             ; preds = %_RNvXs_NtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i7.i.i = phi ptr [ %i.bo, %_RNvXs_NtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i7.i.i, i64 %i.bi ; 4 uses
  %i.go = icmp ult i64 %i.f, 8
  %i.gp = lshr i64 %i.bd, 3
  %i.gq = mul nuw nsw i64 %i.gp, 7
  %.sroa.02.0.i.i = select i1 %i.go, i64 %i.f, i64 %i.gq
  %i.gr = load ptr, ptr %0, align 8, !alias.scope !148380, !nonnull !56, !noundef !56
  store ptr %i.gn, ptr %0, align 8, !alias.scope !148380
  store i64 %i.f, ptr %i.bb, align 8, !alias.scope !148380
  %.sroa.3.0..sroa.0.0.11.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.02.0.i.i, ptr %.sroa.3.0..sroa.0.0.11.sroa_idx.i, align 8, !alias.scope !148380
  store i64 0, ptr %i.h, align 8, !alias.scope !148380
  %i.gs = icmp eq i64 %i.bc, 0
  br i1 %i.gs, label %_RNvXs_NtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.v
  %i.gt = mul i64 %i.bc, 72
  %i.gu = icmp slt i64 %i.bc, 256204778801521550
  tail call void @llvm.assume(i1 %i.gu)
  %i.gv = and i64 %i.gt, -16                      ; 2 uses
  %i.gw = add i64 %i.gv, 80                       ; 2 uses
  %i.gx = add nsw i64 %i.bc, 17
  %i.gy = add i64 %i.gx, %i.gw                    ; 4 uses
  %i.gz = icmp uge i64 %i.gy, %i.gw
  %i.ha = icmp ult i64 %i.gy, 9223372036854775793
  tail call void @llvm.assume(i1 %i.gz)
  tail call void @llvm.assume(i1 %i.ha)
  %i.hb = icmp eq i64 %i.gy, 0
  br i1 %i.hb, label %_RNvXs_NtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit.i, label %bb.w

bb.w:                                             ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.hc = sub i64 -80, %i.gv
  %i.hd = getelementptr inbounds i8, ptr %i.gr, i64 %i.hc
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hd, i64 noundef %i.gy, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !148394
  br label %_RNvXs_NtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit.i

.loopexit.i:                                      ; preds = %.loopexit.i.i, %_RNvXs_NtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit.i
  store i64 %i.bt, ptr %i.h, align 8, !alias.scope !148395
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hf = load i64, ptr %i.he, align 8, !alias.scope !148399, !noundef !56
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.hf, ptr %i.hg, align 8, !alias.scope !148395
  br label %_RNvXsb_NtCs3sCKvcUjPpt_9hashbrown3rawINtB5_8RawTableTjINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEEENtNtCslwFuT2d6ECx_4core5clone5Clone10clone_fromCskcxRuJ53GpR_9rustworkx.exit

bb.x:                                             ; preds = %bb.g, %.body.i
  %i.hh = phi i64 [ %spec.select.i.i.i.i, %bb.g ], [ 0, %.body.i ]
  store i64 0, ptr %i.h, align 8, !alias.scope !148380
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.hh, ptr %i.hi, align 8, !alias.scope !148380
  resume { ptr, i32 } %eh.lpad-body.i

_RNvXsb_NtCs3sCKvcUjPpt_9hashbrown3rawINtB5_8RawTableTjINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEEENtNtCslwFuT2d6ECx_4core5clone5Clone10clone_fromCskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.e, %.loopexit.i
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load i64, ptr %i.hk, align 8, !noundef !56
  store i64 %.val, ptr %i.hj, align 8, !alias.scope !148466
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXNtCs3sCKvcUjPpt_9hashbrown3mapINtB2_7HashMapjdENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load i64, ptr %i.a, align 8, !noundef !56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148482)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !148482, !noundef !56 ; 4 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXsb_NtCs3sCKvcUjPpt_9hashbrown3rawINtB5_8RawTableTjdEENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %i.c, 1                          ; 2 uses
  %i.f = icmp ugt i64 %i.e, 1152921504606846975
  br i1 %i.f, label %bb.d, label %bb.c, !prof !60

bb.c:                                             ; preds = %bb.b
  %i.g = shl nuw i64 %i.e, 4                      ; 3 uses
  %i.h = add nsw i64 %i.c, 17                     ; 2 uses
  %i.i = add i64 %i.g, %i.h                       ; 5 uses
  %i.j = icmp ult i64 %i.i, %i.g
  %i.k = icmp ugt i64 %i.i, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.j, %i.k
  br i1 %or.cond.i.i.i, label %bb.d, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !prof !62

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %bb.c
  %i.l = icmp eq i64 %i.i, 0
  br i1 %i.l, label %_RNvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB5_8RawTableTjdEE17new_uninitializedCskcxRuJ53GpR_9rustworkx.exit.i, label %_RNvXs_NtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i.i

_RNvXs_NtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i.i: ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !148483
  %i.m = tail call noundef align 16 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !148483 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %_RNvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB5_8RawTableTjdEE17new_uninitializedCskcxRuJ53GpR_9rustworkx.exit.i

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @113, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #60, !noalias !148483
  unreachable

end_hunk_11
begin_hunk_12_@_RNvXNtCsbNMRYq9Xj9a_14rustworkx_core7dictmapINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapjjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateENtB2_14InitWithHasher13with_capacityCskcxRuJ53GpR_9rustworkx:bb.a
  store i64 %i.b, ptr %i.v, align 8, !alias.scope !148623
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNtCsbNMRYq9Xj9a_14rustworkx_core8dag_algoINtB2_20TopologicalSortErrorNtNtCsi0YPOvDEjiZ_4pyo33err5PyErrENtNtCslwFuT2d6ECx_4core3fmt7Display3fmtCskcxRuJ53GpR_9rustworkx(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i64, ptr %0, align 8, !range !57, !noundef !56
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %_RNvMsa_NtCslwFuT2d6ECx_4core3fmtNtB5_9Formatter9write_fmt.exit, label %bb.b

_RNvMsa_NtCslwFuT2d6ECx_4core3fmtNtB5_9Formatter9write_fmt.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCslwFuT2d6ECx_4core3fmtRNtNtCsi0YPOvDEjiZ_4pyo33err5PyErrNtB6_5Debug3fmtCskcxRuJ53GpR_9rustworkx, ptr %.sroa.43.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val6 = load ptr, ptr %i.f, align 8, !nonnull !56, !noundef !56
  %.val5 = load ptr, ptr %1, align 8, !nonnull !56, !noundef !56
  %i.g = call noundef zeroext i1 @_RNvNtCslwFuT2d6ECx_4core3fmt5write(ptr noundef nonnull %.val5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val6, ptr noundef nonnull @4123, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !nonnull !56, !noundef !56
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load ptr, ptr %i.h, align 8, !nonnull !56, !noundef !56
  %i.i = getelementptr inbounds nuw i8, ptr %.val4, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !invariant.load !56, !nonnull !56
  %i.k = tail call noundef zeroext i1 %i.j(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4122, i64 noundef 51) #64, !inline_history !148627
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNvMsa_NtCslwFuT2d6ECx_4core3fmtNtB5_9Formatter9write_fmt.exit
  %.sroa.0.0.in = phi i1 [ %i.g, %_RNvMsa_NtCslwFuT2d6ECx_4core3fmtNtB5_9Formatter9write_fmt.exit ], [ %i.k, %bb.b ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXNtCsfztDQZkQYYe_8indexmap3mapINtB2_8IndexMapTjjEjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [56 x i8], align 8                ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148687)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !148688
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) @112, i64 32, i1 false), !noalias !148688
  store i64 0, ptr %i.c, align 8, !noalias !148688
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 6 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !148688
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 5 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !148688
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148689)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148690)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke fastcc void @_RNvXsb_NtCslcZTgAvcSNH_9hashbrown3rawINtB5_8RawTablejENtNtCslwFuT2d6ECx_4core5clone5Clone10clone_fromCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
          to label %.noexc.i unwind label %bb.l, !noalias !148691

.noexc.i:                                         ; preds = %bb.a
  %i.f = load i64, ptr %i.c, align 8, !range !59, !alias.scope !148689, !noalias !148688, !noundef !56 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !148692, !noundef !56 ; 12 uses
  %i.i = icmp ult i64 %i.h, 288230376151711744
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp samesign ult i64 %i.f, %i.h
  %i.k = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !148689, !noalias !148688 ; 9 uses
  br i1 %i.j, label %bb.b, label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreTjjEjE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i

bb.b:                                             ; preds = %.noexc.i
  %i.l = icmp ult i64 %i.k, 288230376151711744
  tail call void @llvm.assume(i1 %i.l)
  %i.m = sub nsw i64 %i.h, %i.k                   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148693)
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !148694, !noalias !148688, !noundef !56
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !148694, !noalias !148688, !noundef !56
  %i.r = add i64 %i.q, %i.o                       ; 2 uses
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 288230376151711743) ; 3 uses
  %i.t = sub nsw i64 %i.s, %i.k                   ; 2 uses
  %i.u = icmp ugt i64 %i.t, %i.m
  br i1 %i.u, label %bb.g, label %._RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit_crit_edge.i.i.i

._RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit_crit_edge.i.i.i: ; preds = %bb.b
  %.pre3.i.i.i = sub nsw i64 %i.f, %i.k
  br label %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %bb.j, %bb.h, %._RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit_crit_edge.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %.pre3.i.i.i, %._RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit_crit_edge.i.i.i ], [ %i.ae, %bb.j ], [ %i.ae, %bb.h ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148695)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148696)
  %i.v = icmp ugt i64 %i.m, %.pre-phi.i.i.i
  br i1 %i.v, label %bb.c, label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreTjjEjE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i

bb.c:                                             ; preds = %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148697)
  %i.w = icmp samesign ult i64 %i.h, %i.k
  br i1 %i.w, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !148698
  %.val11.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !148699, !noalias !148688
  call fastcc void @_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, i64 %i.f, ptr %.val11.i.i.i.i.i.i, i64 noundef %i.h, i64 noundef 8, i64 noundef range(i64 16, 89) 32), !noalias !148698
  %i.x = load i64, ptr %i.b, align 8, !range !57, !noalias !148698, !noundef !56
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.y, label %bb.e, label %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.aa = load i64, ptr %i.z, align 8, !range !112, !noalias !148698, !noundef !56
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !148698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !148698
  br label %bb.f

_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %bb.d
  %i.ad = load ptr, ptr %i.z, align 8, !noalias !148698, !nonnull !56, !noundef !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !148698
  br label %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCskcxRuJ53GpR_9rustworkx.exit.sink.split.i.i.i

bb.f:                                             ; preds = %bb.e, %bb.c
  %.sroa.3.0.i.i.i.i.i = phi i64 [ %i.ac, %bb.e ], [ undef, %bb.c ]
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %i.aa, %bb.e ], [ 0, %bb.c ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.i.i.i.i, i64 %.sroa.3.0.i.i.i.i.i) #61
          to label %.noexc3.i unwind label %bb.l, !noalias !148688

.noexc3.i:                                        ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148700)
  %i.ae = sub nsw i64 %i.f, %i.k                  ; 3 uses
  %i.af = icmp ugt i64 %i.t, %i.ae
  br i1 %i.af, label %bb.h, label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreTjjEjE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148701)
  %i.ag = icmp ult i64 %i.r, %i.k
  br i1 %i.ag, label %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !148702
  %.val11.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !148703, !noalias !148688
  call fastcc void @_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.f, ptr %.val11.i.i.i.i.i, i64 noundef %i.s, i64 noundef 8, i64 noundef range(i64 16, 89) 32), !noalias !148702
  %i.ah = load i64, ptr %i.a, align 8, !range !57, !noalias !148702, !noundef !56
  %i.ai = trunc nuw i64 %i.ah to i1
  br i1 %i.ai, label %bb.j, label %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !148702
  br label %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !148702, !nonnull !56, !noundef !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !148702
  br label %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCskcxRuJ53GpR_9rustworkx.exit.sink.split.i.i.i

_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCskcxRuJ53GpR_9rustworkx.exit.sink.split.i.i.i: ; preds = %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %storemerge.i = phi ptr [ %i.ak, %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ %i.ad, %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ]
  %.sink.i.i.i = phi i64 [ %i.s, %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ %i.h, %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ] ; 2 uses
  store ptr %storemerge.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !148694, !noalias !148688
  store i64 %.sink.i.i.i, ptr %i.c, align 8, !alias.scope !148694, !noalias !148688
  br label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreTjjEjE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i

_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreTjjEjE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCskcxRuJ53GpR_9rustworkx.exit.sink.split.i.i.i, %bb.g, %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %.noexc.i
  %i.al = phi i64 [ %i.f, %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ %.sink.i.i.i, %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCskcxRuJ53GpR_9rustworkx.exit.sink.split.i.i.i ], [ %i.f, %bb.g ], [ %i.f, %.noexc.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !148692, !nonnull !56, !noundef !56 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148704)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148705)
  %i.ao = icmp ugt i64 %i.h, %i.k
  br i1 %i.ao, label %.preheader.i.i.i.i, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtCsfztDQZkQYYe_8indexmap6BucketTjjEjEE8truncateCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtCsfztDQZkQYYe_8indexmap6BucketTjjEjEE8truncateCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i: ; preds = %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreTjjEjE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !148706, !noalias !148688
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtCsfztDQZkQYYe_8indexmap6BucketTjjEjEE8truncateCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i, %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreTjjEjE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.ap = phi i64 [ %i.h, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtCsfztDQZkQYYe_8indexmap6BucketTjjEjEE8truncateCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i ], [ %i.k, %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CoreTjjEjE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i ] ; 12 uses
  %.idx3.i.i.i = shl nuw nsw i64 %i.ap, 5
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx3.i.i.i ; 3 uses
  %i.ar = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !148707, !noalias !148688, !nonnull !56, !noundef !56 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148708)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148709)
  %.not.i1.i.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i1.i.i.i, label %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketTjjEjEINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.preheader.i.i.i.i
  %xtraiter = and i64 %i.ap, 1
  %i.as = icmp eq i64 %i.ap, 1
  br i1 %i.as, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter = and i64 %i.ap, -2
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %.sroa.0.01.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %i.bg, %.lr.ph.i.i.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i ]
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.ar, i64 %.sroa.0.01.i.i.i.i ; 2 uses
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.an, i64 %.sroa.0.01.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148710)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148711)
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ax = load <2 x i64>, ptr %i.au, align 8, !alias.scope !148712, !noalias !148713
  store <2 x i64> %i.ax, ptr %i.at, align 8, !alias.scope !148714, !noalias !148715
  %i.ay = load <2 x i64>, ptr %i.av, align 8, !alias.scope !148712, !noalias !148713
  store <2 x i64> %i.ay, ptr %i.aw, align 8, !alias.scope !148716, !noalias !148715
  %i.az = or disjoint i64 %.sroa.0.01.i.i.i.i, 1  ; 2 uses
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %i.ar, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %i.an, i64 %i.az ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148717)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148718)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.be = load <2 x i64>, ptr %i.bb, align 8, !alias.scope !148719, !noalias !148713
  store <2 x i64> %i.be, ptr %i.ba, align 8, !alias.scope !148720, !noalias !148715
  %i.bf = load <2 x i64>, ptr %i.bc, align 8, !alias.scope !148719, !noalias !148713
  store <2 x i64> %i.bf, ptr %i.bd, align 8, !alias.scope !148721, !noalias !148715
  %i.bg = add nuw nsw i64 %.sroa.0.01.i.i.i.i, 2  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketTjjEjEINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i

_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketTjjEjEINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketTjjEjEINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketTjjEjEINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %.sroa.0.01.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %i.bg, %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketTjjEjEINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod7 = trunc i64 %i.ap to i1
  tail call void @llvm.assume(i1 %lcmp.mod7)
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %i.ar, i64 %.sroa.0.01.i.i.i.i.epil.init ; 2 uses
  %i.bi = getelementptr inbounds nuw [32 x i8], ptr %i.an, i64 %.sroa.0.01.i.i.i.i.epil.init ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148710)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148711)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bl = load <2 x i64>, ptr %i.bi, align 8, !alias.scope !148712, !noalias !148713
  store <2 x i64> %i.bl, ptr %i.bh, align 8, !alias.scope !148714, !noalias !148715
  %i.bm = load <2 x i64>, ptr %i.bj, align 8, !alias.scope !148712, !noalias !148713
  store <2 x i64> %i.bm, ptr %i.bk, align 8, !alias.scope !148716, !noalias !148715
  br label %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketTjjEjEINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketTjjEjEINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.epil.preheader, %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketTjjEjEINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i.loopexit.unr-lcssa, %.preheader.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148722)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148723)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148724)
  %i.bn = sub nuw nsw i64 %i.h, %i.ap             ; 5 uses
  %i.bo = sub nsw i64 %i.al, %i.ap
  %i.bp = icmp ugt i64 %i.bn, %i.bo
  br i1 %i.bp, label %bb.k, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtCsfztDQZkQYYe_8indexmap6BucketTjjEjEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, !prof !60

bb.k:                                             ; preds = %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketTjjEjEINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %i.ap, i64 noundef %i.bn, i64 noundef 8, i64 noundef 32)
          to label %.noexc4.i unwind label %bb.l, !noalias !148688

.noexc4.i:                                        ; preds = %bb.k
  %.pre.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !148725, !noalias !148688
  %.pre.i1.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !148725, !noalias !148688
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtCsfztDQZkQYYe_8indexmap6BucketTjjEjEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtCsfztDQZkQYYe_8indexmap6BucketTjjEjEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %.noexc4.i, %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketTjjEjEINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %i.bq = phi ptr [ %i.ar, %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketTjjEjEINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ %.pre.i1.i.i, %.noexc4.i ] ; 3 uses
  %i.br = phi i64 [ %i.ap, %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketTjjEjEINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ %.pre.i.i.i.i.i.i, %.noexc4.i ] ; 3 uses
  %i.bs = icmp eq i64 %i.ap, %i.h
  br i1 %i.bs, label %.loopexit, label %.preheader.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.preheader:                 ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtCsfztDQZkQYYe_8indexmap6BucketTjjEjEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %.neg = add i64 %i.ap, 1
  %xtraiter8 = and i64 %i.bn, 1
  %i.bt = icmp eq i64 %i.h, %.neg
  br i1 %i.bt, label %.preheader.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.preheader.new:             ; preds = %.preheader.i.i.i.i.i.i.preheader
  %unroll_iter12 = and i64 %i.bn, 288230376151711742
  br label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.preheader.new
  %i.bu = phi i64 [ %i.br, %.preheader.i.i.i.i.i.i.preheader.new ], [ %i.ch, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %.sroa.01.0.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader.new ], [ %i.ci, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %niter13 = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader.new ], [ %niter13.next.1, %.preheader.i.i.i.i.i.i ]
  %i.bv = getelementptr inbounds nuw [32 x i8], ptr %i.aq, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148726)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = getelementptr inbounds nuw [32 x i8], ptr %i.bq, i64 %i.bu ; 2 uses
  %i.by = load <2 x i64>, ptr %i.bv, align 8, !alias.scope !148727, !noalias !148728
  store <2 x i64> %i.by, ptr %i.bx, align 8, !noalias !148729
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load <2 x i64>, ptr %i.bw, align 8, !alias.scope !148727, !noalias !148728
  store <2 x i64> %i.bz, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !148729
  %i.ca = getelementptr inbounds nuw [32 x i8], ptr %i.aq, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148730)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.cd = getelementptr [32 x i8], ptr %i.bq, i64 %i.bu ; 2 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 32
  %i.cf = load <2 x i64>, ptr %i.cb, align 8, !alias.scope !148731, !noalias !148728
  store <2 x i64> %i.cf, ptr %i.ce, align 8, !noalias !148732
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.1 = getelementptr i8, ptr %i.cd, i64 48
  %i.cg = load <2 x i64>, ptr %i.cc, align 8, !alias.scope !148731, !noalias !148728
  store <2 x i64> %i.cg, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !148732
  %i.ch = add i64 %i.bu, 2                        ; 3 uses
  %i.ci = add nuw i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter13.next.1 = add i64 %niter13, 2           ; 2 uses
  %niter13.ncmp.1 = icmp eq i64 %niter13.next.1, %unroll_iter12
  br i1 %niter13.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.preheader.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.k, %bb.f, %bb.a
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap5inner4CoreTjjEjEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(56) %i.c) #63, !noalias !148688
  resume { ptr, i32 } %i.cj

.loopexit.loopexit.unr-lcssa:                     ; preds = %.preheader.i.i.i.i.i.i
  %lcmp.mod9.not = icmp eq i64 %xtraiter8, 0
  br i1 %lcmp.mod9.not, label %.loopexit, label %.preheader.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.epil.preheader:            ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ %i.br, %.preheader.i.i.i.i.i.i.preheader ], [ %i.ch, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader ], [ %i.ci, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod11 = trunc i64 %i.bn to i1
  tail call void @llvm.assume(i1 %lcmp.mod11)
  %i.ck = getelementptr inbounds nuw [32 x i8], ptr %i.aq, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.epil.init ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148726)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = getelementptr inbounds nuw [32 x i8], ptr %i.bq, i64 %.epil.init ; 2 uses
  %i.cn = load <2 x i64>, ptr %i.ck, align 8, !alias.scope !148727, !noalias !148728
  store <2 x i64> %i.cn, ptr %i.cm, align 8, !noalias !148729
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load <2 x i64>, ptr %i.cl, align 8, !alias.scope !148727, !noalias !148728
  store <2 x i64> %i.co, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !148729
  %i.cp = add i64 %.epil.init, 1
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.i.i.i.i.i.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtCsfztDQZkQYYe_8indexmap6BucketTjjEjEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %storemerge.i.i.i.i.i.i.i.i = phi i64 [ %i.br, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtCsfztDQZkQYYe_8indexmap6BucketTjjEjEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i ], [ %i.ch, %.loopexit.loopexit.unr-lcssa ], [ %i.cp, %.preheader.i.i.i.i.i.i.epil.preheader ]
  store i64 %storemerge.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !148725, !noalias !148733
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !148688
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val = load i64, ptr %i.cq, align 8, !noundef !56
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.val, ptr %i.cr, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXNtCsfztDQZkQYYe_8indexmap3mapINtB2_8IndexMapjINtNtCs87CvPiUlf0m_5alloc3vec3VecIBM_jEENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.01.i.i.i.i.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [56 x i8], align 8                ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148867)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !148868
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) @112, i64 32, i1 false), !noalias !148868
  store i64 0, ptr %i.d, align 8, !noalias !148868
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !148868
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 7 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !148868
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148869)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148870)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke fastcc void @_RNvXsb_NtCslcZTgAvcSNH_9hashbrown3rawINtB5_8RawTablejENtNtCslwFuT2d6ECx_4core5clone5Clone10clone_fromCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(32) %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !148871

.noexc.i:                                         ; preds = %bb.a
  %i.g = load i64, ptr %i.d, align 8, !range !59, !alias.scope !148869, !noalias !148868, !noundef !56 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !148872, !noundef !56 ; 15 uses
  %i.j = icmp ult i64 %i.i, 230584300921369396
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp samesign ult i64 %i.g, %i.i
  %i.l = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !148869, !noalias !148868 ; 11 uses
  br i1 %i.k, label %bb.b, label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejINtNtCs87CvPiUlf0m_5alloc3vec3VecIBM_jEEE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i

bb.b:                                             ; preds = %.noexc.i
  %i.m = icmp ult i64 %i.l, 230584300921369396
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nsw i64 %i.i, %i.l                   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148873)
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !148874, !noalias !148868, !noundef !56
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !148874, !noalias !148868, !noundef !56
  %i.s = add i64 %i.r, %i.p                       ; 2 uses
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.s, i64 230584300921369395) ; 3 uses
  %i.u = sub nsw i64 %i.t, %i.l                   ; 2 uses
  %i.v = icmp ugt i64 %i.u, %i.n
  br i1 %i.v, label %bb.g, label %._RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit_crit_edge.i.i.i

._RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit_crit_edge.i.i.i: ; preds = %bb.b
  %.pre3.i.i.i = sub nsw i64 %i.g, %i.l
  br label %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %bb.j, %bb.h, %._RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit_crit_edge.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %.pre3.i.i.i, %._RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit_crit_edge.i.i.i ], [ %i.af, %bb.j ], [ %i.af, %bb.h ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148875)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148876)
  %i.w = icmp ugt i64 %i.n, %.pre-phi.i.i.i
  br i1 %i.w, label %bb.c, label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejINtNtCs87CvPiUlf0m_5alloc3vec3VecIBM_jEEE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i

bb.c:                                             ; preds = %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148877)
  %i.x = icmp samesign ult i64 %i.i, %i.l
  br i1 %i.x, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !148878
  %.val11.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !148879, !noalias !148868
  call fastcc void @_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.c, i64 %i.g, ptr %.val11.i.i.i.i.i.i, i64 noundef %i.i, i64 noundef 8, i64 noundef range(i64 16, 89) 40), !noalias !148878
  %i.y = load i64, ptr %i.c, align 8, !range !57, !noalias !148878, !noundef !56
  %i.z = trunc nuw i64 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %i.z, label %bb.e, label %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ab = load i64, ptr %i.aa, align 8, !range !112, !noalias !148878, !noundef !56
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !148878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !148878
  br label %bb.f

_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %bb.d
  %i.ae = load ptr, ptr %i.aa, align 8, !noalias !148878, !nonnull !56, !noundef !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !148878
  br label %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCskcxRuJ53GpR_9rustworkx.exit.sink.split.i.i.i

bb.f:                                             ; preds = %bb.e, %bb.c
  %.sroa.3.0.i.i.i.i.i = phi i64 [ %i.ad, %bb.e ], [ undef, %bb.c ]
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %i.ab, %bb.e ], [ 0, %bb.c ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.i.i.i.i, i64 %.sroa.3.0.i.i.i.i.i) #61
          to label %.noexc3.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !148868

.noexc3.i:                                        ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148880)
  %i.af = sub nsw i64 %i.g, %i.l                  ; 3 uses
  %i.ag = icmp ugt i64 %i.u, %i.af
  br i1 %i.ag, label %bb.h, label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejINtNtCs87CvPiUlf0m_5alloc3vec3VecIBM_jEEE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148881)
  %i.ah = icmp ult i64 %i.s, %i.l
  br i1 %i.ah, label %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !148882
  %.val11.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !148883, !noalias !148868
  call fastcc void @_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, i64 %i.g, ptr %.val11.i.i.i.i.i, i64 noundef %i.t, i64 noundef 8, i64 noundef range(i64 16, 89) 40), !noalias !148882
  %i.ai = load i64, ptr %i.b, align 8, !range !57, !noalias !148882, !noundef !56
  %i.aj = trunc nuw i64 %i.ai to i1
  br i1 %i.aj, label %bb.j, label %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !148882
  br label %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !148882, !nonnull !56, !noundef !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !148882
  br label %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCskcxRuJ53GpR_9rustworkx.exit.sink.split.i.i.i

end_hunk_12
begin_hunk_13_@_RNvXNtCsfztDQZkQYYe_8indexmap3mapINtB2_8IndexMapjINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx:bb.a
bb.q:                                             ; preds = %bb.p, %.preheader.i.i.i.i.i.i
  %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ci, %bb.p ], [ inttoptr (i64 8 to ptr), %.preheader.i.i.i.i.i.i ]
  %i.ck = getelementptr inbounds nuw [40 x i8], ptr %i.bx, i64 %.val10.i.i.i.i.i.i.i.i.i ; 4 uses
  store i64 %.val1.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ck, align 8, !noalias !149096
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !149096
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store <2 x i64> %i.cf, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !149096
  %.sroa.75.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  store i64 %i.cc, ptr %.sroa.75.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !149096
  %i.cl = add i64 %.val10.i.i.i.i.i.i.i.i.i, 1    ; 2 uses
  %i.cm = add nuw i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.cn = icmp eq i64 %i.cm, %.idx4.i.i.i
  br i1 %i.cn, label %.loopexit, label %.preheader.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.o
  %i.co = landingpad { ptr, i32 }
          cleanup
  store i64 %.val10.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !149086, !noalias !149097
  br label %.body.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecjE7reserveCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i.i.i.i, %bb.m, %bb.f, %bb.a
  %lpad.loopexit.split-lp27 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.r
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.co, %bb.r ], [ %lpad.loopexit.split-lp27, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap5inner4CorejINtNtCs87CvPiUlf0m_5alloc3vec3VecjEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(56) %i.c) #63, !noalias !149042
  resume { ptr, i32 } %eh.lpad-body.i

.loopexit:                                        ; preds = %bb.q, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtCsfztDQZkQYYe_8indexmap6BucketjIBv_jEEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %storemerge.i.i.i.i.i.i.i.i = phi i64 [ %i.by, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtCsfztDQZkQYYe_8indexmap6BucketjIBv_jEEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i ], [ %i.cl, %bb.q ]
  store i64 %storemerge.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !149086, !noalias !149097
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !149042
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val = load i64, ptr %i.cp, align 8, !noundef !56
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.val, ptr %i.cq, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXNtCsfztDQZkQYYe_8indexmap3mapINtB2_8IndexMapjdNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [56 x i8], align 8                ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149161)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !149162
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) @112, i64 32, i1 false), !noalias !149162
  store i64 0, ptr %i.c, align 8, !noalias !149162
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 6 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !149162
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 5 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !149162
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149164)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke fastcc void @_RNvXsb_NtCslcZTgAvcSNH_9hashbrown3rawINtB5_8RawTablejENtNtCslwFuT2d6ECx_4core5clone5Clone10clone_fromCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
          to label %.noexc.i unwind label %bb.l, !noalias !149165

.noexc.i:                                         ; preds = %bb.a
  %i.f = load i64, ptr %i.c, align 8, !range !59, !alias.scope !149163, !noalias !149162, !noundef !56 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !149166, !noundef !56 ; 12 uses
  %i.i = icmp ult i64 %i.h, 384307168202282326
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp samesign ult i64 %i.f, %i.h
  %i.k = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !149163, !noalias !149162 ; 9 uses
  br i1 %i.j, label %bb.b, label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejdE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i

bb.b:                                             ; preds = %.noexc.i
  %i.l = icmp ult i64 %i.k, 384307168202282326
  tail call void @llvm.assume(i1 %i.l)
  %i.m = sub nsw i64 %i.h, %i.k                   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149167)
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !149168, !noalias !149162, !noundef !56
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !149168, !noalias !149162, !noundef !56
  %i.r = add i64 %i.q, %i.o                       ; 2 uses
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 384307168202282325) ; 3 uses
  %i.t = sub nsw i64 %i.s, %i.k                   ; 2 uses
  %i.u = icmp ugt i64 %i.t, %i.m
  br i1 %i.u, label %bb.g, label %._RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit_crit_edge.i.i.i

._RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit_crit_edge.i.i.i: ; preds = %bb.b
  %.pre3.i.i.i = sub nsw i64 %i.f, %i.k
  br label %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %bb.j, %bb.h, %._RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit_crit_edge.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %.pre3.i.i.i, %._RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit_crit_edge.i.i.i ], [ %i.ae, %bb.j ], [ %i.ae, %bb.h ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149170)
  %i.v = icmp ugt i64 %i.m, %.pre-phi.i.i.i
  br i1 %i.v, label %bb.c, label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejdE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i

bb.c:                                             ; preds = %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149171)
  %i.w = icmp samesign ult i64 %i.h, %i.k
  br i1 %i.w, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !149172
  %.val11.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !149173, !noalias !149162
  call fastcc void @_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, i64 %i.f, ptr %.val11.i.i.i.i.i.i, i64 noundef %i.h, i64 noundef 8, i64 noundef range(i64 16, 89) 24), !noalias !149172
  %i.x = load i64, ptr %i.b, align 8, !range !57, !noalias !149172, !noundef !56
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.y, label %bb.e, label %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.aa = load i64, ptr %i.z, align 8, !range !112, !noalias !149172, !noundef !56
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !149172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !149172
  br label %bb.f

_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %bb.d
  %i.ad = load ptr, ptr %i.z, align 8, !noalias !149172, !nonnull !56, !noundef !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !149172
  br label %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCskcxRuJ53GpR_9rustworkx.exit.sink.split.i.i.i

bb.f:                                             ; preds = %bb.e, %bb.c
  %.sroa.3.0.i.i.i.i.i = phi i64 [ %i.ac, %bb.e ], [ undef, %bb.c ]
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %i.aa, %bb.e ], [ 0, %bb.c ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.i.i.i.i, i64 %.sroa.3.0.i.i.i.i.i) #61
          to label %.noexc3.i unwind label %bb.l, !noalias !149162

.noexc3.i:                                        ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149174)
  %i.ae = sub nsw i64 %i.f, %i.k                  ; 3 uses
  %i.af = icmp ugt i64 %i.t, %i.ae
  br i1 %i.af, label %bb.h, label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejdE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149175)
  %i.ag = icmp ult i64 %i.r, %i.k
  br i1 %i.ag, label %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !149176
  %.val11.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !149177, !noalias !149162
  call fastcc void @_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.f, ptr %.val11.i.i.i.i.i, i64 noundef %i.s, i64 noundef 8, i64 noundef range(i64 16, 89) 24), !noalias !149176
  %i.ah = load i64, ptr %i.a, align 8, !range !57, !noalias !149176, !noundef !56
  %i.ai = trunc nuw i64 %i.ah to i1
  br i1 %i.ai, label %bb.j, label %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !149176
  br label %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !149176, !nonnull !56, !noundef !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !149176
  br label %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCskcxRuJ53GpR_9rustworkx.exit.sink.split.i.i.i

_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCskcxRuJ53GpR_9rustworkx.exit.sink.split.i.i.i: ; preds = %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %storemerge.i = phi ptr [ %i.ak, %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ %i.ad, %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ]
  %.sink.i.i.i = phi i64 [ %i.s, %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i ], [ %i.h, %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ] ; 2 uses
  store ptr %storemerge.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !149168, !noalias !149162
  store i64 %.sink.i.i.i, ptr %i.c, align 8, !alias.scope !149168, !noalias !149162
  br label %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejdE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i

_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejdE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCskcxRuJ53GpR_9rustworkx.exit.sink.split.i.i.i, %bb.g, %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %.noexc.i
  %i.al = phi i64 [ %i.f, %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ %.sink.i.i.i, %_RNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCskcxRuJ53GpR_9rustworkx.exit.sink.split.i.i.i ], [ %i.f, %bb.g ], [ %i.f, %.noexc.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !149166, !nonnull !56, !noundef !56 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149179)
  %i.ao = icmp ugt i64 %i.h, %i.k
  br i1 %i.ao, label %.preheader.i.i.i.i, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtCsfztDQZkQYYe_8indexmap6BucketjdEE8truncateCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtCsfztDQZkQYYe_8indexmap6BucketjdEE8truncateCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i: ; preds = %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejdE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !149180, !noalias !149162
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtCsfztDQZkQYYe_8indexmap6BucketjdEE8truncateCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i, %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejdE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.ap = phi i64 [ %i.h, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtCsfztDQZkQYYe_8indexmap6BucketjdEE8truncateCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i ], [ %i.k, %_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejdE15reserve_entriesCskcxRuJ53GpR_9rustworkx.exit.i.i ] ; 12 uses
  %.idx3.i.i.i = mul nuw nsw i64 %i.ap, 24
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx3.i.i.i ; 3 uses
  %i.ar = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !149181, !noalias !149162, !nonnull !56, !noundef !56 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149183)
  %.not.i1.i.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i1.i.i.i, label %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketjdEINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.preheader.i.i.i.i
  %xtraiter = and i64 %i.ap, 1
  %i.as = icmp eq i64 %i.ap, 1
  br i1 %i.as, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter = and i64 %i.ap, -2
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %.sroa.0.01.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %i.be, %.lr.ph.i.i.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i ]
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.ar, i64 %.sroa.0.01.i.i.i.i ; 2 uses
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %.sroa.0.01.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149185)
  %i.av = load <2 x i64>, ptr %i.au, align 8, !alias.scope !149186, !noalias !149187
  store <2 x i64> %i.av, ptr %i.at, align 8, !alias.scope !149188, !noalias !149189
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.val1.i.i.i.i.i = load double, ptr %i.ax, align 8, !alias.scope !149190, !noalias !149187, !noundef !56
  store double %.val1.i.i.i.i.i, ptr %i.aw, align 8, !alias.scope !149191, !noalias !149189
  %i.ay = or disjoint i64 %.sroa.0.01.i.i.i.i, 1  ; 2 uses
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.ar, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %i.ay ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149193)
  %i.bb = load <2 x i64>, ptr %i.ba, align 8, !alias.scope !149194, !noalias !149187
  store <2 x i64> %i.bb, ptr %i.az, align 8, !alias.scope !149195, !noalias !149189
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %.val1.i.i.i.i.i.1 = load double, ptr %i.bd, align 8, !alias.scope !149196, !noalias !149187, !noundef !56
  store double %.val1.i.i.i.i.i.1, ptr %i.bc, align 8, !alias.scope !149197, !noalias !149189
  %i.be = add nuw nsw i64 %.sroa.0.01.i.i.i.i, 2  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketjdEINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i

_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketjdEINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketjdEINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketjdEINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %.sroa.0.01.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %i.be, %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketjdEINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod6 = trunc i64 %i.ap to i1
  tail call void @llvm.assume(i1 %lcmp.mod6)
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.ar, i64 %.sroa.0.01.i.i.i.i.epil.init ; 2 uses
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %.sroa.0.01.i.i.i.i.epil.init ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149185)
  %i.bh = load <2 x i64>, ptr %i.bg, align 8, !alias.scope !149186, !noalias !149187
  store <2 x i64> %i.bh, ptr %i.bf, align 8, !alias.scope !149188, !noalias !149189
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %.val1.i.i.i.i.i.epil = load double, ptr %i.bj, align 8, !alias.scope !149190, !noalias !149187, !noundef !56
  store double %.val1.i.i.i.i.i.epil, ptr %i.bi, align 8, !alias.scope !149191, !noalias !149189
  br label %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketjdEINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketjdEINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.epil.preheader, %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketjdEINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i.loopexit.unr-lcssa, %.preheader.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149200)
  %.idx4.i.i.i = sub nsw i64 %i.h, %i.ap          ; 5 uses
  %i.bk = sub nsw i64 %i.al, %i.ap
  %i.bl = icmp ugt i64 %.idx4.i.i.i, %i.bk
  br i1 %i.bl, label %bb.k, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtCsfztDQZkQYYe_8indexmap6BucketjdEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, !prof !60

bb.k:                                             ; preds = %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketjdEINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %i.ap, i64 noundef %.idx4.i.i.i, i64 noundef 8, i64 noundef 24)
          to label %.noexc4.i unwind label %bb.l, !noalias !149162

.noexc4.i:                                        ; preds = %bb.k
  %.pre.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !149201, !noalias !149162
  %.pre.i1.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !149201, !noalias !149162
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtCsfztDQZkQYYe_8indexmap6BucketjdEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtCsfztDQZkQYYe_8indexmap6BucketjdEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %.noexc4.i, %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketjdEINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %i.bm = phi ptr [ %i.ar, %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketjdEINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ %.pre.i1.i.i, %.noexc4.i ] ; 3 uses
  %i.bn = phi i64 [ %i.ap, %_RNvXs3_NtCslwFuT2d6ECx_4core5sliceSINtCsfztDQZkQYYe_8indexmap6BucketjdEINtB5_13CloneFromSpecBx_E15spec_clone_fromCskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ %.pre.i.i.i.i.i.i, %.noexc4.i ] ; 3 uses
  %i.bo = icmp eq i64 %i.ap, %i.h
  br i1 %i.bo, label %.loopexit, label %.preheader.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.preheader:                 ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtCsfztDQZkQYYe_8indexmap6BucketjdEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %.neg = add i64 %i.ap, 1
  %xtraiter7 = and i64 %.idx4.i.i.i, 1
  %i.bp = icmp eq i64 %i.h, %.neg
  br i1 %i.bp, label %.preheader.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.preheader.new:             ; preds = %.preheader.i.i.i.i.i.i.preheader
  %unroll_iter11 = and i64 %.idx4.i.i.i, -2
  br label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.preheader.new
  %i.bq = phi i64 [ %i.bn, %.preheader.i.i.i.i.i.i.preheader.new ], [ %i.cd, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %.sroa.01.0.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader.new ], [ %i.ce, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %niter12 = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader.new ], [ %niter12.next.1, %.preheader.i.i.i.i.i.i ]
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149202)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load double, ptr %i.bs, align 8, !alias.scope !149203, !noalias !149204, !noundef !56
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %i.bq ; 2 uses
  %i.bv = load <2 x i64>, ptr %i.br, align 8, !alias.scope !149205, !noalias !149204
  store <2 x i64> %i.bv, ptr %i.bu, align 8, !noalias !149206
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store double %i.bt, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !149206
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149207)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.bz = load double, ptr %i.by, align 8, !alias.scope !149208, !noalias !149204, !noundef !56
  %i.ca = getelementptr [24 x i8], ptr %i.bm, i64 %i.bq ; 2 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 24
  %i.cc = load <2 x i64>, ptr %i.bx, align 8, !alias.scope !149209, !noalias !149204
  store <2 x i64> %i.cc, ptr %i.cb, align 8, !noalias !149210
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.1 = getelementptr i8, ptr %i.ca, i64 40
  store double %i.bz, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !149210
  %i.cd = add i64 %i.bq, 2                        ; 3 uses
  %i.ce = add nuw i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter12.next.1 = add i64 %niter12, 2           ; 2 uses
  %niter12.ncmp.1 = icmp eq i64 %niter12.next.1, %unroll_iter11
  br i1 %niter12.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.preheader.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.k, %bb.f, %bb.a
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap5inner4CorejdEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(56) %i.c) #63, !noalias !149162
  resume { ptr, i32 } %i.cf

.loopexit.loopexit.unr-lcssa:                     ; preds = %.preheader.i.i.i.i.i.i
  %lcmp.mod8.not = icmp eq i64 %xtraiter7, 0
  br i1 %lcmp.mod8.not, label %.loopexit, label %.preheader.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.epil.preheader:            ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ %i.bn, %.preheader.i.i.i.i.i.i.preheader ], [ %i.cd, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader ], [ %i.ce, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod10 = trunc i64 %.idx4.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod10)
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.epil.init ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149202)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load double, ptr %i.ch, align 8, !alias.scope !149203, !noalias !149204, !noundef !56
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %.epil.init ; 2 uses
  %i.ck = load <2 x i64>, ptr %i.cg, align 8, !alias.scope !149205, !noalias !149204
  store <2 x i64> %i.ck, ptr %i.cj, align 8, !noalias !149206
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store double %i.ci, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !149206
  %i.cl = add i64 %.epil.init, 1
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.i.i.i.i.i.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtCsfztDQZkQYYe_8indexmap6BucketjdEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %storemerge.i.i.i.i.i.i.i.i = phi i64 [ %i.bn, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecINtCsfztDQZkQYYe_8indexmap6BucketjdEE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i ], [ %i.cd, %.loopexit.loopexit.unr-lcssa ], [ %i.cl, %.preheader.i.i.i.i.i.i.epil.preheader ]
  store i64 %storemerge.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !149201, !noalias !149211
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !149162
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val = load i64, ptr %i.cm, align 8, !noundef !56
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.val, ptr %i.cn, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXNtCskcxRuJ53GpR_9rustworkx7graphmlNtB2_5ErrorINtNtCslwFuT2d6ECx_4core7convert4FromNtNtCs1zNYWXRTdJn_9quick_xml6errors5ErrorE4from(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsa_NtCs1zNYWXRTdJn_9quick_xml6errorsNtB5_5ErrorNtNtCslwFuT2d6ECx_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs87CvPiUlf0m_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @4124, ptr noundef nonnull %i.a)
          to label %_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs1zNYWXRTdJn_9quick_xml6errors5ErrorECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(48) %1) #63
          to label %bb.d unwind label %bb.c

_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs1zNYWXRTdJn_9quick_xml6errors5ErrorECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(48) %1)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvXNtNtCs1zNYWXRTdJn_9quick_xml6parser7elementNtB2_13ElementParserNtB4_6Parser4feed(ptr noalias nofree noundef nonnull captures(none) dereferenceable(1) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 1, -9223372036854775808) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 %2         ; 4 uses
  %.promoted = load i8, ptr %0, align 1
  %i.b = load atomic ptr, ptr @_RNvNvNtNtNtCsbPr7k8qemyf_6memchr4arch6x86_646memchr11memchr3_raw2FN monotonic, align 8, !noalias !149217, !nonnull !56, !noundef !56
  %i.c = tail call { i64, ptr } %i.b(i8 noundef 62, i8 noundef 39, i8 noundef 34, ptr noundef nonnull %1, ptr noundef %i.a), !noalias !149217, !inline_history !149216 ; 2 uses
  %i.d = extractvalue { i64, ptr } %i.c, 0
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.g = extractvalue { i64, ptr } %i.c, 1        ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = sub i64 %i.h, %i.f                       ; 7 uses
  %i.j = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.j), !noalias !149218
  %i.k = icmp samesign ult i64 %i.i, %2
  br i1 %i.k, label %bb.e, label %bb.i

bb.b:                                             ; preds = %.backedge.jt0
  %i.l = extractvalue { i64, ptr } %i.bd, 1       ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.f                       ; 5 uses
  %i.o = icmp sgt i64 %i.n, -1
  tail call void @llvm.assume(i1 %i.o), !noalias !149218
  %i.p = icmp samesign ult i64 %i.n, %2
  br i1 %i.p, label %bb.f, label %bb.i

bb.c:                                             ; preds = %.backedge.jt2
  %i.q = extractvalue { i64, ptr } %i.bj, 1       ; 2 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = sub i64 %i.r, %i.f                       ; 5 uses
  %i.t = icmp sgt i64 %i.s, -1
  tail call void @llvm.assume(i1 %i.t), !noalias !149218
  %i.u = icmp samesign ult i64 %i.s, %2
  br i1 %i.u, label %bb.g, label %bb.i

bb.d:                                             ; preds = %.backedge.jt1
  %i.v = extractvalue { i64, ptr } %i.bp, 1       ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 5 uses
  %i.y = icmp sgt i64 %i.x, -1
  tail call void @llvm.assume(i1 %i.y), !noalias !149218
  %i.z = icmp samesign ult i64 %i.x, %2
  br i1 %i.z, label %bb.h, label %bb.i

._crit_edge:                                      ; preds = %bb.j, %.backedge.jt1, %.backedge.jt2, %.backedge.jt0, %bb.a
  %.sroa.3.0.i17 = phi i64 [ undef, %bb.a ], [ %i.bb, %.backedge.jt0 ], [ %i.bh, %.backedge.jt2 ], [ %i.bn, %.backedge.jt1 ], [ %i.ar, %bb.j ]
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ 0, %.backedge.jt0 ], [ 0, %.backedge.jt2 ], [ 0, %.backedge.jt1 ], [ 1, %bb.j ]
  %i.aa = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.ab = insertvalue { i64, i64 } %i.aa, i64 %.sroa.3.0.i17, 1
  ret { i64, i64 } %i.ab

bb.e:                                             ; preds = %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  %i.ae = load i8, ptr %i.ad, align 1, !noundef !56 ; 3 uses
  switch i8 %.promoted, label %default.unreachable [
    i8 0, label %bb.j
    i8 1, label %bb.k
    i8 2, label %bb.l
  ]

bb.f:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.n
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !56
  br label %bb.j

bb.g:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %i.s
  %i.ak = load i8, ptr %i.aj, align 1, !noundef !56
  br label %bb.l

bb.h:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.x
  %i.an = load i8, ptr %i.am, align 1, !noundef !56
  br label %bb.k

bb.i:                                             ; preds = %bb.b, %bb.c, %bb.d, %.lr.ph
  %i.ao = phi i64 [ %i.n, %bb.b ], [ %i.s, %bb.c ], [ %i.x, %bb.d ], [ %i.i, %.lr.ph ]
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.ao, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4128) #60
  unreachable
end_hunk_13
