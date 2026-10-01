Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_server.libp2p_server.1e58dff6c8062fcd-cgu.02?download=true
inline.NumInlined: 1917
inline.NumDeleted: 551
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1z_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1s_7sort_byNCINvXs1o_NtNtNtB34_11collections5btree3mapINtB3R_8BTreeMapB1t_B2k_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1s_E9from_iterINtNtNtB4U_8adapters4take4TakeINtNtB5R_3map3MapINtNtNtB34_3vec9into_iter8IntoIterINtB1v_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B2m_NtB2m_16ClosestPeersIter11with_configINtB6C_3VecB75_EIB76_NtNtB1z_6record3KeyEE0EEE0E0ECs2Bxje7pdMIr_13libp2p_server:bb.a
.lr.ph85:                                         ; preds = %bb.h, %bb.i
  %.sroa.0.0.i32.183 = phi ptr [ %i.ck, %bb.i ], [ %i.cf, %bb.h ] ; 4 uses
  %i.ck = getelementptr inbounds i8, ptr %.sroa.0.0.i32.183, i64 -160 ; 4 uses
  %i.cl = invoke noundef range(i8 -1, 2) i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.ck)
          to label %bb.j unwind label %.loopexit.split-lp54

bb.j:                                             ; preds = %.lr.ph85
  %i.cm = icmp eq i8 %i.cl, -1
  br i1 %i.cm, label %bb.i, label %._crit_edge86

._crit_edge86:                                    ; preds = %bb.i, %bb.j, %bb.h
  %.sroa.0.0.i32.lcssa.1 = phi ptr [ %i.cb, %bb.h ], [ %i.cb, %bb.i ], [ %.sroa.0.0.i32.183, %bb.j ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.0.0.i32.lcssa.1, ptr noundef nonnull align 8 dereferenceable(160) %i.a, i64 160, i1 false), !noalias !1856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1f_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2K_11collections5btree3mapINtB3x_8BTreeMapB19_B20_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4A_8adapters4take4TakeINtNtB5x_3map3MapINtNtNtB2K_3vec9into_iter8IntoIterINtB1b_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B22_NtB22_16ClosestPeersIter11with_configINtB6i_3VecB6L_EIB6M_NtNtB1f_6record3KeyEE0EEE0E0ECs2Bxje7pdMIr_13libp2p_server.exit.1

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1f_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2K_11collections5btree3mapINtB3x_8BTreeMapB19_B20_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4A_8adapters4take4TakeINtNtB5x_3map3MapINtNtNtB2K_3vec9into_iter8IntoIterINtB1b_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B22_NtB22_16ClosestPeersIter11with_configINtB6i_3VecB6L_EIB6M_NtNtB1f_6record3KeyEE0EEE0E0ECs2Bxje7pdMIr_13libp2p_server.exit.1: ; preds = %._crit_edge86, %.noexc33.1
  %i.cn = add nuw nsw i64 %.sroa.05.043.1, 1      ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.cn, %i.by
  br i1 %exitcond.1.not, label %.loopexit37.1, label %.noexc33.1

.loopexit37.1:                                    ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1f_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2K_11collections5btree3mapINtB3x_8BTreeMapB19_B20_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4A_8adapters4take4TakeINtNtB5x_3map3MapINtNtNtB2K_3vec9into_iter8IntoIterINtB1b_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B22_NtB22_16ClosestPeersIter11with_configINtB6i_3VecB6L_EIB6M_NtNtB1f_6record3KeyEE0EEE0E0ECs2Bxje7pdMIr_13libp2p_server.exit.1, %.loopexit37
  %i.co = add nsw i64 %1, -1                      ; 2 uses
  %i.cp = getelementptr inbounds nuw [160 x i8], ptr %0, i64 %i.co
  %i.cq = getelementptr inbounds nuw [160 x i8], ptr %2, i64 %i.co
  %i.cr = getelementptr i8, ptr %i.cb, i64 -160
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.noexc30
  %i.cs = getelementptr i8, ptr %i.dj, i64 160    ; 2 uses
  %i.ct = getelementptr i8, ptr %i.di, i64 160
  %i.cu = and i64 %1, 1
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %bb.l, label %bb.k

.lr.ph.i:                                         ; preds = %.noexc30, %.loopexit37.1
  %.sroa.0.010.i = phi ptr [ %i.da, %.noexc30 ], [ %0, %.loopexit37.1 ] ; 2 uses
  %.sroa.04.09.i = phi i64 [ %i.cw, %.noexc30 ], [ 0, %.loopexit37.1 ]
  %.sroa.06.08.i = phi ptr [ %i.dd, %.noexc30 ], [ %2, %.loopexit37.1 ] ; 3 uses
  %.sroa.011.07.i = phi ptr [ %i.df, %.noexc30 ], [ %i.cb, %.loopexit37.1 ] ; 3 uses
  %.sroa.015.06.i = phi ptr [ %i.dj, %.noexc30 ], [ %i.cr, %.loopexit37.1 ] ; 3 uses
  %.sroa.017.05.i = phi ptr [ %i.di, %.noexc30 ], [ %i.cq, %.loopexit37.1 ] ; 3 uses
  %.sroa.019.04.i = phi ptr [ %i.dk, %.noexc30 ], [ %i.cp, %.loopexit37.1 ] ; 2 uses
  %i.cw = add nuw nsw i64 %.sroa.04.09.i, 1       ; 2 uses
  %i.cx = invoke noundef range(i8 -1, 2) i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %.sroa.011.07.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %.sroa.06.08.i)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %.lr.ph.i
  %i.cy = icmp eq i8 %i.cx, -1                    ; 3 uses
  %..i21.i = select i1 %i.cy, ptr %.sroa.011.07.i, ptr %.sroa.06.08.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.0.010.i, ptr noundef nonnull align 8 dereferenceable(160) %..i21.i, i64 160, i1 false), !noalias !1857
  %i.cz = invoke noundef range(i8 -1, 2) i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %.sroa.017.05.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %.sroa.015.06.i)
          to label %.noexc30 unwind label %.loopexit

.noexc30:                                         ; preds = %.noexc
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 160 ; 2 uses
  %i.db = xor i1 %i.cy, true
  %i.dc = zext i1 %i.db to i64
  %i.dd = getelementptr inbounds nuw [160 x i8], ptr %.sroa.06.08.i, i64 %i.dc ; 5 uses
  %i.de = zext i1 %i.cy to i64
  %i.df = getelementptr inbounds nuw [160 x i8], ptr %.sroa.011.07.i, i64 %i.de ; 4 uses
  %i.dg = icmp eq i8 %i.cz, -1                    ; 3 uses
  %..i.i = select i1 %i.dg, ptr %.sroa.015.06.i, ptr %.sroa.017.05.i
  %i.dh = xor i1 %i.dg, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.019.04.i, ptr noundef nonnull align 8 dereferenceable(160) %..i.i, i64 160, i1 false), !noalias !1858
  %.neg.i.i = sext i1 %i.dh to i64
  %i.di = getelementptr [160 x i8], ptr %.sroa.017.05.i, i64 %.neg.i.i ; 2 uses
  %.neg13.i.i = sext i1 %i.dg to i64
  %i.dj = getelementptr [160 x i8], ptr %.sroa.015.06.i, i64 %.neg13.i.i ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %.sroa.019.04.i, i64 -160
  %exitcond.not.i = icmp eq i64 %i.cw, %i.e
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.k:                                             ; preds = %._crit_edge.i
  %i.dl = icmp ult ptr %i.dd, %i.cs               ; 3 uses
  %.sroa.06.0..sroa.011.0.i = select i1 %i.dl, ptr %i.dd, ptr %i.df
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.da, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.06.0..sroa.011.0.i, i64 160, i1 false)
  %i.dm = zext i1 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [160 x i8], ptr %i.dd, i64 %i.dm
  %i.do = xor i1 %i.dl, true
  %i.dp = zext i1 %i.do to i64
  %i.dq = getelementptr inbounds nuw [160 x i8], ptr %i.df, i64 %i.dp
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.df, %._crit_edge.i ], [ %i.dq, %bb.k ]
  %.sroa.06.1.i = phi ptr [ %i.dd, %._crit_edge.i ], [ %i.dn, %bb.k ]
  %i.dr = icmp ne ptr %.sroa.06.1.i, %i.cs
  %i.ds = icmp ne ptr %.sroa.011.1.i, %i.ct
  %or.cond.i = select i1 %i.dr, i1 true, i1 %i.ds, !prof !26
  br i1 %or.cond.i, label %bb.m, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1n_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1g_7sort_byNCINvXs1o_NtNtNtB2S_11collections5btree3mapINtB3F_8BTreeMapB1h_B28_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1g_E9from_iterINtNtNtB4I_8adapters4take4TakeINtNtB5F_3map3MapINtNtNtB2S_3vec9into_iter8IntoIterINtB1j_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B2a_NtB2a_16ClosestPeersIter11with_configINtB6q_3VecB6T_EIB6U_NtNtB1n_6record3KeyEE0EEE0E0ECs2Bxje7pdMIr_13libp2p_server.exit, !prof !26

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #30
          to label %.noexc31 unwind label %.loopexit.split-lp

.noexc31:                                         ; preds = %bb.m
  unreachable

.loopexit:                                        ; preds = %.lr.ph.i, %.noexc
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp:                               ; preds = %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.dt = mul nuw nsw i64 %1, 160
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %2, i64 %i.dt, i1 false), !noalias !1859
  br label %.body

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1n_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1g_7sort_byNCINvXs1o_NtNtNtB2S_11collections5btree3mapINtB3F_8BTreeMapB1h_B28_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1g_E9from_iterINtNtNtB4I_8adapters4take4TakeINtNtB5F_3map3MapINtNtNtB2S_3vec9into_iter8IntoIterINtB1j_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B2a_NtB2a_16ClosestPeersIter11with_configINtB6q_3VecB6T_EIB6U_NtNtB1n_6record3KeyEE0EEE0E0ECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.l, %bb.a
  ret void

.body:                                            ; preds = %bb.r, %bb.n
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.n ], [ %lpad.phi59, %bb.r ]
  resume { ptr, i32 } %.pn

.noexc33:                                         ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1f_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2K_11collections5btree3mapINtB3x_8BTreeMapB19_B20_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4A_8adapters4take4TakeINtNtB5x_3map3MapINtNtNtB2K_3vec9into_iter8IntoIterINtB1b_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B22_NtB22_16ClosestPeersIter11with_configINtB6i_3VecB6L_EIB6M_NtNtB1f_6record3KeyEE0EEE0E0ECs2Bxje7pdMIr_13libp2p_server.exit
  %.sroa.05.043 = phi i64 [ %i.ee, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1f_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2K_11collections5btree3mapINtB3x_8BTreeMapB19_B20_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4A_8adapters4take4TakeINtNtB5x_3map3MapINtNtNtB2K_3vec9into_iter8IntoIterINtB1b_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B22_NtB22_16ClosestPeersIter11with_configINtB6i_3VecB6L_EIB6M_NtNtB1f_6record3KeyEE0EEE0E0ECs2Bxje7pdMIr_13libp2p_server.exit ], [ %.sroa.0.0, %bb.g ] ; 4 uses
  %i.du = getelementptr inbounds nuw [160 x i8], ptr %0, i64 %.sroa.05.043 ; 2 uses
  %.idx = mul nuw nsw i64 %.sroa.05.043, 160
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.dv, ptr noundef nonnull align 8 dereferenceable(160) %i.du, i64 160, i1 false)
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 -160 ; 3 uses
  %i.dx = call noundef range(i8 -1, 2) i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.dv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.dw)
  %i.dy = icmp eq i8 %i.dx, -1
  br i1 %i.dy, label %bb.o, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1f_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2K_11collections5btree3mapINtB3x_8BTreeMapB19_B20_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4A_8adapters4take4TakeINtNtB5x_3map3MapINtNtNtB2K_3vec9into_iter8IntoIterINtB1b_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B22_NtB22_16ClosestPeersIter11with_configINtB6i_3VecB6L_EIB6M_NtNtB1f_6record3KeyEE0EEE0E0ECs2Bxje7pdMIr_13libp2p_server.exit

bb.o:                                             ; preds = %.noexc33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.a, ptr noundef nonnull align 8 dereferenceable(160) %i.du, i64 160, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.dv, ptr noundef nonnull align 8 dereferenceable(160) %i.dw, i64 160, i1 false)
  %i.dz = icmp eq i64 %.sroa.05.043, 1
  br i1 %i.dz, label %._crit_edge, label %.lr.ph

bb.p:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.0.0.i3280, ptr noundef nonnull align 8 dereferenceable(160) %i.eb, i64 160, i1 false)
  %i.ea = icmp eq ptr %i.eb, %2
  br i1 %i.ea, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o, %bb.p
  %.sroa.0.0.i3280 = phi ptr [ %i.eb, %bb.p ], [ %i.dw, %bb.o ] ; 4 uses
  %i.eb = getelementptr inbounds i8, ptr %.sroa.0.0.i3280, i64 -160 ; 4 uses
  %i.ec = invoke noundef range(i8 -1, 2) i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.eb)
          to label %bb.q unwind label %.loopexit53

bb.q:                                             ; preds = %.lr.ph
  %i.ed = icmp eq i8 %i.ec, -1
  br i1 %i.ed, label %bb.p, label %._crit_edge

._crit_edge:                                      ; preds = %bb.p, %bb.q, %bb.o
  %.sroa.0.0.i32.lcssa = phi ptr [ %2, %bb.o ], [ %2, %bb.p ], [ %.sroa.0.0.i3280, %bb.q ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.0.0.i32.lcssa, ptr noundef nonnull align 8 dereferenceable(160) %i.a, i64 160, i1 false), !noalias !1856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1f_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2K_11collections5btree3mapINtB3x_8BTreeMapB19_B20_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4A_8adapters4take4TakeINtNtB5x_3map3MapINtNtNtB2K_3vec9into_iter8IntoIterINtB1b_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B22_NtB22_16ClosestPeersIter11with_configINtB6i_3VecB6L_EIB6M_NtNtB1f_6record3KeyEE0EEE0E0ECs2Bxje7pdMIr_13libp2p_server.exit

.loopexit53:                                      ; preds = %.lr.ph
  %lpad.loopexit57 = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp54:                             ; preds = %.lr.ph85
  %lpad.loopexit.split-lp58 = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.split-lp54, %.loopexit53
  %.sroa.0.0.i32.lcssa50 = phi ptr [ %.sroa.0.0.i3280, %.loopexit53 ], [ %.sroa.0.0.i32.183, %.loopexit.split-lp54 ]
  %lpad.phi59 = phi { ptr, i32 } [ %lpad.loopexit57, %.loopexit53 ], [ %lpad.loopexit.split-lp58, %.loopexit.split-lp54 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.0.0.i32.lcssa50, ptr noundef nonnull align 8 dereferenceable(160) %i.a, i64 160, i1 false), !noalias !1860
  br label %.body

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1f_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2K_11collections5btree3mapINtB3x_8BTreeMapB19_B20_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4A_8adapters4take4TakeINtNtB5x_3map3MapINtNtNtB2K_3vec9into_iter8IntoIterINtB1b_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B22_NtB22_16ClosestPeersIter11with_configINtB6i_3VecB6L_EIB6M_NtNtB1f_6record3KeyEE0EEE0E0ECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %._crit_edge, %.noexc33
  %i.ee = add nuw nsw i64 %.sroa.05.043, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ee, %i.e
  br i1 %exitcond.not, label %.loopexit37, label %.noexc33
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable8heapsort8heapsortTyjENvYB15_NtNtBa_3cmp10PartialOrd2ltECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 33, 576460752303423488) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i64 %1, 1
  %i.b = add nuw nsw i64 %i.a, %1
  br label %bb.c

bb.b:                                             ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable8heapsort9sift_downTyjENvYB16_NtNtBa_3cmp10PartialOrd2ltECs2Bxje7pdMIr_13libp2p_server.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable8heapsort9sift_downTyjENvYB16_NtNtBa_3cmp10PartialOrd2ltECs2Bxje7pdMIr_13libp2p_server.exit
  %.sroa.2.04 = phi i64 [ %i.b, %bb.a ], [ %i.c, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable8heapsort9sift_downTyjENvYB16_NtNtBa_3cmp10PartialOrd2ltECs2Bxje7pdMIr_13libp2p_server.exit ]
  %i.c = add nsw i64 %.sroa.2.04, -1              ; 6 uses
  %.not9 = icmp ult i64 %i.c, %1
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = sub nuw i64 %i.c, %1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvMNtCskKLDkoKarTP_4core5sliceSTyjE14swap_uncheckedCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, i64 noundef 0, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.04.0 = phi i64 [ %i.d, %bb.d ], [ 0, %bb.e ] ; 3 uses
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 %i.c) ; 4 uses
  %i.e = icmp ule i64 %.sroa.04.0, %..i
  tail call void @llvm.assume(i1 %i.e)
  %i.f = shl nuw nsw i64 %.sroa.04.0, 1           ; 2 uses
  %i.g = or disjoint i64 %i.f, 1                  ; 2 uses
  %.not.i1 = icmp samesign ult i64 %i.g, %..i
  br i1 %.not.i1, label %.lr.ph, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable8heapsort9sift_downTyjENvYB16_NtNtBa_3cmp10PartialOrd2ltECs2Bxje7pdMIr_13libp2p_server.exit

.lr.ph:                                           ; preds = %bb.f, %bb.i
  %i.h = phi i64 [ %i.ac, %bb.i ], [ %i.g, %bb.f ] ; 3 uses
  %i.i = phi i64 [ %i.ab, %bb.i ], [ %i.f, %bb.f ]
  %.sroa.0.0.i2 = phi i64 [ %.sroa.04.0.i, %bb.i ], [ %.sroa.04.0, %bb.f ]
  %i.j = add nuw nsw i64 %i.i, 2                  ; 2 uses
  %i.k = icmp samesign ult i64 %i.j, %..i
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.h ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.j ; 2 uses
  %.val = load i64, ptr %i.l, align 8, !noundef !8 ; 2 uses
  %i.n = getelementptr i8, ptr %i.l, i64 8
  %.val11 = load i64, ptr %i.n, align 8
  %.val12 = load i64, ptr %i.m, align 8, !noundef !8 ; 2 uses
  %i.o = getelementptr i8, ptr %i.m, i64 8
  %.val13 = load i64, ptr %i.o, align 8
  %i.p = icmp eq i64 %.val, %.val12
  %i.q = icmp ult i64 %.val, %.val12
  %i.r = icmp ult i64 %.val11, %.val13
  %.sroa.0.0.i.i = select i1 %i.p, i1 %i.r, i1 %i.q
  %i.s = zext i1 %.sroa.0.0.i.i to i64
  %i.t = add nuw nsw i64 %i.h, %i.s
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph
  %.sroa.04.0.i = phi i64 [ %i.t, %bb.g ], [ %i.h, %.lr.ph ] ; 3 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.0.i2 ; 3 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.04.0.i ; 3 uses
  %.val14 = load i64, ptr %i.u, align 8, !noundef !8 ; 2 uses
  %i.w = getelementptr i8, ptr %i.u, i64 8
  %.val15 = load i64, ptr %i.w, align 8
  %.val16 = load i64, ptr %i.v, align 8, !noundef !8 ; 2 uses
  %i.x = getelementptr i8, ptr %i.v, i64 8
  %.val17 = load i64, ptr %i.x, align 8
  %i.y = icmp eq i64 %.val14, %.val16
  %i.z = icmp ult i64 %.val14, %.val16
  %i.aa = icmp ult i64 %.val15, %.val17
  %.sroa.0.0.i.i18 = select i1 %i.y, i1 %i.aa, i1 %i.z
  br i1 %.sroa.0.0.i.i18, label %bb.i, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable8heapsort9sift_downTyjENvYB16_NtNtBa_3cmp10PartialOrd2ltECs2Bxje7pdMIr_13libp2p_server.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs2Bxje7pdMIr_13libp2p_server(ptr noundef nonnull %i.u, ptr noundef nonnull %i.v, i64 noundef 2)
  %i.ab = shl nuw nsw i64 %.sroa.04.0.i, 1        ; 2 uses
  %i.ac = or disjoint i64 %i.ab, 1                ; 2 uses
  %.not.i = icmp samesign ult i64 %i.ac, %..i
  br i1 %.not.i, label %.lr.ph, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable8heapsort9sift_downTyjENvYB16_NtNtBa_3cmp10PartialOrd2ltECs2Bxje7pdMIr_13libp2p_server.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable8heapsort9sift_downTyjENvYB16_NtNtBa_3cmp10PartialOrd2ltECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.h, %bb.i, %bb.f
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort9quicksortTyjENvYB17_NtNtBa_3cmp10PartialOrd2ltECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(16) %2, i32 noundef range(i32 0, 127) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %i.b = alloca [16 x i8], align 16               ; 5 uses
  %i.c = alloca [768 x i8], align 8               ; 20 uses
  %i.d = icmp samesign ult i64 %1, 33
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = icmp eq i32 %3, 0
  br i1 %i.e, label %._crit_edge20, label %.lr.ph19

bb.b:                                             ; preds = %.backedge
  %i.f = icmp eq i32 %i.fx, 0
  br i1 %i.f, label %._crit_edge20, label %.lr.ph19

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ] ; 9 uses
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ] ; 22 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1906)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1906
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1907)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1908)
  %i.g = icmp samesign ult i64 %.sroa.15.0.lcssa, 2
  br i1 %i.g, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort18small_sort_generalTyjENvYB1f_NtNtBa_3cmp10PartialOrd2ltECs2Bxje7pdMIr_13libp2p_server.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.h = lshr i64 %.sroa.15.0.lcssa, 1            ; 12 uses
  %i.i = icmp samesign ugt i64 %.sroa.15.0.lcssa, 15
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp samesign ugt i64 %.sroa.15.0.lcssa, 7
  br i1 %i.j, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %.sroa.15.0.lcssa ; 2 uses
  call fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort12sort8_stableTyjENvYB19_NtNtBa_3cmp10PartialOrd2ltECs2Bxje7pdMIr_13libp2p_server(ptr noundef nonnull align 8 %.sroa.0.0.lcssa, ptr noundef nonnull align 8 %i.c, ptr noundef %i.k)
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.h
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  call fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort12sort8_stableTyjENvYB19_NtNtBa_3cmp10PartialOrd2ltECs2Bxje7pdMIr_13libp2p_server(ptr noundef %i.l, ptr noundef %i.m, ptr noundef %i.n)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 16
  %.val16.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !1909, !noalias !1908, !noundef !8 ; 2 uses
  %i.p = getelementptr i8, ptr %.sroa.0.0.lcssa, i64 24
  %.val17.i.i.i = load i64, ptr %i.p, align 8, !alias.scope !1909, !noalias !1908
  %.val18.i.i.i = load i64, ptr %.sroa.0.0.lcssa, align 8, !alias.scope !1909, !noalias !1908, !noundef !8 ; 2 uses
  %i.q = getelementptr i8, ptr %.sroa.0.0.lcssa, i64 8
  %.val19.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !1909, !noalias !1908
  %i.r = icmp eq i64 %.val16.i.i.i, %.val18.i.i.i
  %i.s = icmp ult i64 %.val16.i.i.i, %.val18.i.i.i
  %i.t = icmp ult i64 %.val17.i.i.i, %.val19.i.i.i
  %.sroa.0.0.i.i.i.i.i = select i1 %i.r, i1 %i.t, i1 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 32
  %.val12.i.i.i = load i64, ptr %i.u, align 8, !alias.scope !1909, !noalias !1908, !noundef !8 ; 2 uses
  %i.w = getelementptr i8, ptr %.sroa.0.0.lcssa, i64 56
  %.val13.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !1909, !noalias !1908
  %.val14.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !1909, !noalias !1908, !noundef !8 ; 2 uses
  %i.x = getelementptr i8, ptr %.sroa.0.0.lcssa, i64 40
  %.val15.i.i.i = load i64, ptr %i.x, align 8, !alias.scope !1909, !noalias !1908
  %i.y = icmp eq i64 %.val12.i.i.i, %.val14.i.i.i
  %i.z = icmp ult i64 %.val12.i.i.i, %.val14.i.i.i
  %i.aa = icmp ult i64 %.val13.i.i.i, %.val15.i.i.i
  %.sroa.0.0.i.i20.i.i.i = select i1 %i.y, i1 %i.aa, i1 %i.z ; 2 uses
  %i.ab = zext i1 %.sroa.0.0.i.i.i.i.i to i64
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.ab ; 4 uses
  %i.ad = xor i1 %.sroa.0.0.i.i.i.i.i, true
  %i.ae = zext i1 %i.ad to i64
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.ae ; 5 uses
  %i.ag = select i1 %.sroa.0.0.i.i20.i.i.i, i64 3, i64 2
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.ag ; 5 uses
  %i.ai = select i1 %.sroa.0.0.i.i20.i.i.i, i64 2, i64 3
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.ai ; 4 uses
  %.val8.i.i.i = load i64, ptr %i.ah, align 8, !alias.scope !1909, !noalias !1908, !noundef !8 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ah, i64 8
  %.val9.i.i.i = load i64, ptr %i.ak, align 8, !alias.scope !1909, !noalias !1908
  %.val10.i.i.i = load i64, ptr %i.ac, align 8, !alias.scope !1909, !noalias !1908, !noundef !8 ; 2 uses
  %i.al = getelementptr i8, ptr %i.ac, i64 8
  %.val11.i.i.i = load i64, ptr %i.al, align 8, !alias.scope !1909, !noalias !1908
  %i.am = icmp eq i64 %.val8.i.i.i, %.val10.i.i.i
  %i.an = icmp ult i64 %.val8.i.i.i, %.val10.i.i.i
  %i.ao = icmp ult i64 %.val9.i.i.i, %.val11.i.i.i
  %.sroa.0.0.i.i21.i.i.i = select i1 %i.am, i1 %i.ao, i1 %i.an ; 3 uses
  %.val4.i.i.i = load i64, ptr %i.aj, align 8, !alias.scope !1909, !noalias !1908, !noundef !8 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.aj, i64 8
  %.val5.i.i.i = load i64, ptr %i.ap, align 8, !alias.scope !1909, !noalias !1908
  %.val6.i.i.i = load i64, ptr %i.af, align 8, !alias.scope !1909, !noalias !1908, !noundef !8 ; 2 uses
  %i.aq = getelementptr i8, ptr %i.af, i64 8
  %.val7.i.i.i = load i64, ptr %i.aq, align 8, !alias.scope !1909, !noalias !1908
  %i.ar = icmp eq i64 %.val4.i.i.i, %.val6.i.i.i
  %i.as = icmp ult i64 %.val4.i.i.i, %.val6.i.i.i
  %i.at = icmp ult i64 %.val5.i.i.i, %.val7.i.i.i
  %.sroa.0.0.i.i22.i.i.i = select i1 %i.ar, i1 %i.at, i1 %i.as ; 3 uses
  %i.au = select i1 %.sroa.0.0.i.i21.i.i.i, ptr %i.ah, ptr %i.ac, !unpredictable !8
  %i.av = select i1 %.sroa.0.0.i.i22.i.i.i, ptr %i.af, ptr %i.aj, !unpredictable !8
  %i.aw = select i1 %.sroa.0.0.i.i22.i.i.i, ptr %i.ah, ptr %i.af, !unpredictable !8
  %i.ax = select i1 %.sroa.0.0.i.i21.i.i.i, ptr %i.ac, ptr %i.aw, !unpredictable !8 ; 4 uses
  %i.ay = select i1 %.sroa.0.0.i.i21.i.i.i, ptr %i.af, ptr %i.ah, !unpredictable !8
  %i.az = select i1 %.sroa.0.0.i.i22.i.i.i, ptr %i.aj, ptr %i.ay, !unpredictable !8 ; 4 uses
  %.val.i.i.i = load i64, ptr %i.az, align 8, !alias.scope !1909, !noalias !1908, !noundef !8 ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 8
  %.val1.i.i.i = load i64, ptr %i.ba, align 8, !alias.scope !1909, !noalias !1908
  %.val2.i.i.i = load i64, ptr %i.ax, align 8, !alias.scope !1909, !noalias !1908, !noundef !8 ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ax, i64 8
  %.val3.i.i.i = load i64, ptr %i.bb, align 8, !alias.scope !1909, !noalias !1908
  %i.bc = icmp eq i64 %.val.i.i.i, %.val2.i.i.i
  %i.bd = icmp ult i64 %.val.i.i.i, %.val2.i.i.i
  %i.be = icmp ult i64 %.val1.i.i.i, %.val3.i.i.i
  %.sroa.0.0.i.i23.i.i.i = select i1 %i.bc, i1 %i.be, i1 %i.bd ; 2 uses
  %i.bf = select i1 %.sroa.0.0.i.i23.i.i.i, ptr %i.az, ptr %i.ax, !unpredictable !8
  %i.bg = select i1 %.sroa.0.0.i.i23.i.i.i, ptr %i.ax, ptr %i.az, !unpredictable !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false), !alias.scope !1910
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i64 16, i1 false), !alias.scope !1910
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i64 16, i1 false), !alias.scope !1910
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull align 8 dereferenceable(16) %i.av, i64 16, i1 false), !alias.scope !1910
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.h ; 12 uses
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.h ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %.val16.i30.i.i = load i64, ptr %i.bm, align 8, !alias.scope !1909, !noalias !1908, !noundef !8 ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bk, i64 24
  %.val17.i31.i.i = load i64, ptr %i.bn, align 8, !alias.scope !1909, !noalias !1908
  %.val18.i32.i.i = load i64, ptr %i.bk, align 8, !alias.scope !1909, !noalias !1908, !noundef !8 ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bk, i64 8
end_hunk_0
