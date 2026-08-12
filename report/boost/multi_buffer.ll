inline.NumInlined: 6576
inline.NumDeleted: 1413
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5boost5beast18basic_multi_bufferISaIcEED2Ev:bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast18basic_multi_bufferISaIcEE7prepareEm(ptr dead_on_unwind noalias writable sret(%"class.boost::beast::basic_multi_buffer<std::allocator<char>>::subrange") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::length_error", align 8 ; 5 uses
  %4 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %5 = alloca %"class.std::length_error", align 8 ; 5 uses
  %6 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %7 = alloca %"class.boost::intrusive::list_impl", align 8 ; 19 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !147  ; 6 uses
  %i.c = load i64, ptr %1, align 8, !tbaa !99     ; 3 uses
  %i.d = icmp ugt i64 %i.b, %i.c
  %i.e = sub nuw i64 %i.c, %i.b
  %i.f = icmp ugt i64 %2, %i.e
  %or.cond = select i1 %i.d, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.18)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  store ptr @.str.16, ptr %6, align 8, !tbaa !1460
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.19, ptr %i.g, align 8, !tbaa !1462
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 857, ptr %i.h, align 8, !tbaa !1463
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 43, ptr %i.i, align 4, !tbaa !1464
  invoke void @_ZN5boost15throw_exceptionISt12length_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) #30
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.u

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  store ptr %7, ptr %7, align 8, !tbaa !109
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %7, ptr %i.k, align 8, !tbaa !110
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !146  ; 4 uses
  %.not = icmp eq ptr %i.n, %i.m
  br i1 %.not, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !122  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = load i64, ptr %i.q, align 8, !tbaa !148  ; 2 uses
  %i.s = sub i64 %i.p, %i.r                       ; 3 uses
  %i.t = add i64 %i.s, %i.b                       ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !110  ; 3 uses
  %.not89 = icmp eq ptr %i.n, %i.v
  br i1 %.not89, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferISaIcEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISD_Lb1EEERSE_SG_SG_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.p, ptr %i.w, align 8, !tbaa !170
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !109  ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.x, %i.m
  %.not23.i.i.i = icmp eq ptr %7, %i.x
  %or.cond.i.i.i = or i1 %.not23.i.i.i, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferISaIcEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISD_Lb1EEERSE_SG_SG_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !110  ; 2 uses
  store ptr %7, ptr %i.v, align 8, !tbaa !109
  store ptr %i.v, ptr %i.k, align 8, !tbaa !110
  store ptr %i.m, ptr %i.z, align 8, !tbaa !109
  store ptr %i.z, ptr %i.u, align 8, !tbaa !110
  store ptr %i.x, ptr %7, align 8, !tbaa !109
  store ptr %7, ptr %i.y, align 8, !tbaa !110
  br label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferISaIcEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISD_Lb1EEERSE_SG_SG_.exit

_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferISaIcEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISD_Lb1EEERSE_SG_SG_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.aa = phi ptr [ %7, %bb.f ], [ %7, %bb.g ], [ %i.x, %bb.h ] ; 2 uses
  %i.ab = icmp ugt i64 %2, %i.s
  br i1 %i.ab, label %bb.i, label %.thread

bb.i:                                             ; preds = %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferISaIcEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISD_Lb1EEERSE_SG_SG_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.p, ptr %i.ac, align 8, !tbaa !170
  %i.ad = sub nuw i64 %2, %i.s
  br label %bb.j

.thread:                                          ; preds = %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferISaIcEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISD_Lb1EEERSE_SG_SG_.exit
  %i.ae = add i64 %i.r, %2
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !170
  br label %.critedge

bb.j:                                             ; preds = %bb.i, %bb.e
  %i.ag = phi ptr [ %7, %bb.e ], [ %i.aa, %bb.i ]
  %.0 = phi i64 [ %2, %bb.e ], [ %i.ad, %bb.i ]   ; 2 uses
  %.022 = phi i64 [ %i.b, %bb.e ], [ %i.t, %bb.i ] ; 2 uses
  %.not3199 = icmp eq i64 %.0, 0
  br i1 %.not3199, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.m
  %.123101 = phi i64 [ %.022, %.lr.ph ], [ %i.at, %bb.m ] ; 3 uses
  %.1100 = phi i64 [ %.0, %.lr.ph ], [ %i.av, %bb.m ] ; 5 uses
  %i.aj = load ptr, ptr %7, align 8, !tbaa !109   ; 9 uses
  %.not.i.i = icmp eq ptr %i.aj, null
  %i.ak = icmp eq ptr %i.aj, %7                   ; 2 uses
  %i.al = or i1 %.not.i.i, %i.ak
  br i1 %i.al, label %.critedge.thread, label %bb.l

.critedge.thread:                                 ; preds = %bb.k
  br i1 %i.ak, label %_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit.thread88, label %.lr.ph.i.preheader

bb.l:                                             ; preds = %bb.k
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !109, !noalias !1893 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !110, !noalias !1893 ; 2 uses
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !109, !noalias !1893
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !110, !noalias !1893
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !110 ; 2 uses
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !110
  store ptr %i.m, ptr %i.aj, align 8, !tbaa !109
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !110
  store ptr %i.aj, ptr %i.aq, align 8, !tbaa !109
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !122 ; 4 uses
  %i.at = add i64 %i.as, %.123101                 ; 2 uses
  %i.au = icmp ugt i64 %.1100, %i.as
  br i1 %i.au, label %bb.m, label %.thread127

.thread127:                                       ; preds = %bb.l
  store i64 %.1100, ptr %i.ai, align 8, !tbaa !170
  br label %.critedge.loopexit

bb.m:                                             ; preds = %bb.l
  store i64 %i.as, ptr %i.ai, align 8, !tbaa !170
  %i.av = sub nuw i64 %.1100, %i.as               ; 2 uses
  %.not31 = icmp eq i64 %i.av, 0
  br i1 %.not31, label %.critedge.loopexit, label %bb.k, !llvm.loop !1898

.critedge.loopexit:                               ; preds = %bb.m, %.thread127
  %.pre = load ptr, ptr %7, align 8, !tbaa !109
  br label %.critedge

.critedge:                                        ; preds = %.thread, %.critedge.loopexit, %bb.j
  %i.aw = phi ptr [ %i.ag, %bb.j ], [ %.pre, %.critedge.loopexit ], [ %i.aa, %.thread ] ; 3 uses
  %.123.lcssa = phi i64 [ %.022, %bb.j ], [ %i.at, %.critedge.loopexit ], [ %i.t, %.thread ]
  %.not.i.i41 = icmp eq ptr %i.aw, null
  %i.ax = icmp eq ptr %i.aw, %7
  %i.ay = or i1 %.not.i.i41, %i.ax
  br i1 %i.ay, label %_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.critedge.thread, %.critedge
  %.197 = phi i64 [ %.1100, %.critedge.thread ], [ 0, %.critedge ]
  %.12394 = phi i64 [ %.123101, %.critedge.thread ], [ %.123.lcssa, %.critedge ]
  %.not3192 = phi i1 [ false, %.critedge.thread ], [ true, %.critedge ]
  %.sroa.04.07.i.ph = phi ptr [ %i.aj, %.critedge.thread ], [ %i.aw, %.critedge ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.sroa.04.07.i = phi ptr [ %i.az, %.lr.ph.i ], [ %.sroa.04.07.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.az = load ptr, ptr %.sroa.04.07.i, align 8, !tbaa !109, !noalias !1899 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !122
  %i.bc = add i64 %i.bb, 31
  %i.bd = and i64 %i.bc, -8
  call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.07.i, i64 noundef %i.bd) #32
  %.not.i = icmp eq ptr %i.az, %7
  br i1 %.not.i, label %_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit, label %.lr.ph.i, !llvm.loop !127

_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit: ; preds = %.lr.ph.i
  %.pre110 = load i64, ptr %i.a, align 8, !tbaa !147 ; 2 uses
  br i1 %.not3192, label %_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit.thread, label %_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit._ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit.thread88_crit_edge

_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit._ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit.thread88_crit_edge: ; preds = %_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit
  %.pre109 = load i64, ptr %1, align 8, !tbaa !99
  br label %_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit.thread88

_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit.thread88: ; preds = %_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit._ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit.thread88_crit_edge, %.critedge.thread
  %i.be = phi i64 [ %i.c, %.critedge.thread ], [ %.pre109, %_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit._ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit.thread88_crit_edge ]
  %i.bf = phi i64 [ %i.b, %.critedge.thread ], [ %.pre110, %_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit._ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit.thread88_crit_edge ] ; 3 uses
  %.198 = phi i64 [ %.1100, %.critedge.thread ], [ %.197, %_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit._ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit.thread88_crit_edge ] ; 2 uses
  %.12395 = phi i64 [ %.123101, %.critedge.thread ], [ %.12394, %_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit._ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit.thread88_crit_edge ]
  %i.bg = shl i64 %i.bf, 1
  %i.bh = sub i64 %i.be, %.12395                  ; 2 uses
  %.sroa.speculated50 = call i64 @llvm.umax.i64(i64 %i.bg, i64 %.198)
  %i.bi = call i64 @llvm.umax.i64(i64 %.sroa.speculated50, i64 512)
  %i.bj = call i64 @llvm.umin.i64(i64 %i.bi, i64 %i.bh)
  %.inv90 = icmp slt i64 %i.bf, 0
  %.sroa.speculated = select i1 %.inv90, i64 %i.bh, i64 %i.bj ; 3 uses
  %i.bk = icmp ugt i64 %.sroa.speculated, 1152921504606846975
  br i1 %i.bk, label %bb.n, label %_ZNSt16allocator_traitsISaIN5boost11tt_align_ns2a8EEE8allocateERS3_m.exit.i

bb.n:                                             ; preds = %_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit.thread88
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  invoke void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.15)
          to label %.noexc45 unwind label %bb.s

.noexc45:                                         ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store ptr @.str.16, ptr %4, align 8, !tbaa !1460
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.17, ptr %i.bl, align 8, !tbaa !1462
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 1246, ptr %i.bm, align 8, !tbaa !1463
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 70, ptr %i.bn, align 4, !tbaa !1464
  invoke void @_ZN5boost15throw_exceptionISt12length_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #30
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %.noexc45
  unreachable

bb.p:                                             ; preds = %.noexc45
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %.body

_ZNSt16allocator_traitsISaIN5boost11tt_align_ns2a8EEE8allocateERS3_m.exit.i: ; preds = %_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit.thread88
  %i.bp = add nuw nsw i64 %.sroa.speculated, 31
  %i.bq = and i64 %i.bp, 2305843009213693944
  %i.br = invoke noalias noundef nonnull align 8 dereferenceable(24) ptr @_Znwm(i64 noundef %i.bq) #34
          to label %bb.q unwind label %bb.s       ; 6 uses

bb.q:                                             ; preds = %_ZNSt16allocator_traitsISaIN5boost11tt_align_ns2a8EEE8allocateERS3_m.exit.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store i64 %.sroa.speculated, ptr %i.bs, align 8, !tbaa !122
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !110 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !110
  store ptr %i.m, ptr %i.br, align 8, !tbaa !109
  store ptr %i.br, ptr %i.bt, align 8, !tbaa !110
  store ptr %i.br, ptr %i.bu, align 8, !tbaa !109
  %i.bw = load ptr, ptr %i.l, align 8, !tbaa !146
  %i.bx = icmp eq ptr %i.bw, %i.m
  br i1 %i.bx, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  store ptr %i.br, ptr %i.l, align 8, !tbaa !146
  br label %bb.t

bb.s:                                             ; preds = %_ZNSt16allocator_traitsISaIN5boost11tt_align_ns2a8EEE8allocateERS3_m.exit.i, %bb.n
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.t:                                             ; preds = %bb.r, %bb.q
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %.198, ptr %i.bz, align 8, !tbaa !170
  br label %_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit.thread

_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit.thread: ; preds = %.critedge, %_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit, %bb.t
  %i.ca = phi i64 [ %i.b, %.critedge ], [ %.pre110, %_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit ], [ %i.bf, %bb.t ]
  call void @_ZN5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EEC2ERKS3_mm(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %i.ca, i64 noundef %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  ret void

.body:                                            ; preds = %bb.s, %bb.p
  %.pn33 = phi { ptr, i32 } [ %i.by, %bb.s ], [ %i.bo, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.u

bb.u:                                             ; preds = %.body, %bb.d
  %.pn36 = phi { ptr, i32 } [ %i.j, %bb.d ], [ %.pn33, %.body ]
  resume { ptr, i32 } %.pn36
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.boost::beast::unit_test::suite::abort_exception", align 8 ; 5 uses
  %6 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load i8, ptr %1, align 1, !tbaa !115, !range !42, !noundef !43
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i8, ptr %i.c, align 8, !tbaa !67, !range !42, !noundef !43
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.g = load i8, ptr %i.f, align 1, !range !42
  %i.h = trunc nuw i8 %i.g to i1
  %or.cond.i.i = select i1 %i.e, i1 %i.h, i1 false
  br i1 %or.cond.i.i, label %bb.c, label %_ZN5boost5beast9unit_test5suite4passIvEEvv.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast9unit_test5suite15abort_exceptionE, i64 16), ptr %5, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  store ptr @.str.7, ptr %6, align 8, !tbaa !1460
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.8, ptr %i.i, align 8, !tbaa !1462
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 592, ptr %i.j, align 8, !tbaa !1463
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 48, ptr %i.k, align 4, !tbaa !1464
  invoke void @_ZN5boost15throw_exceptionINS_5beast9unit_test5suite15abort_exceptionEEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) #30
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9 ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %common.resume

_ZN5boost5beast9unit_test5suite4passIvEEvv.exit:  ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !82
  tail call void @_ZN5boost5beast9unit_test6runner4passIvEEvv(ptr noundef nonnull align 8 dereferenceable(88) %i.n)
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @_ZN5boost5beast9unit_test6detail11make_reasonIA1_cEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_PKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %3, i32 noundef %4)
  invoke void @_ZN5boost5beast9unit_test5suite4failIvEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(808) %0, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr %7, align 8, !tbaa !15     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.r = load i64, ptr %i.p, align 8, !tbaa !17
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %7, align 8, !tbaa !15     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.h
  %i.x = load i64, ptr %i.v, align 8, !tbaa !17
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %common.resume

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN5boost5beast9unit_test5suite4passIvEEvv.exit
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast9unit_test5suite4passIvEEvv(ptr noundef nonnull align 8 dereferenceable(808) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.boost::beast::unit_test::suite::abort_exception", align 8 ; 5 uses
  %2 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !67, !range !42, !noundef !43
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.e = load i8, ptr %i.d, align 1, !range !42
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond.i = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond.i, label %bb.b, label %_ZN5boost5beast9unit_test5suite15propagate_abortEv.exit

end_hunk_0
begin_hunk_1_@_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb0ELb1ELb1ELb1EEEED2Ev:bb.a

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #29
  br label %_ZN5boost6empty_11empty_valueINS_5beast4test14test_allocatorIcLb1ELb0ELb1ELb1ELb1EEELj0ELb0EED2Ev.exit

_ZN5boost6empty_11empty_valueINS_5beast4test14test_allocatorIcLb1ELb0ELb1ELb1ELb1EEELj0ELb0EED2Ev.exit: ; preds = %_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb0ELb1ELb1ELb1EEEE7destroyERNS_9intrusive9list_implINS6_8bhtraitsINS5_7elementENS6_16list_node_traitsIPvEELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb0EvEE.exit, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb1ELb1ELb1EEEE7prepareEm(ptr dead_on_unwind noalias writable sret(%"class.boost::beast::basic_multi_buffer<boost::beast::test::test_allocator<char, true, true, true, true, true>>::subrange") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::length_error", align 8 ; 5 uses
  %4 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %5 = alloca %"class.boost::intrusive::list_impl.46", align 8 ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !373  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !349  ; 2 uses
  %i.e = icmp ugt i64 %i.b, %i.d
  %i.f = sub nuw i64 %i.d, %i.b
  %i.g = icmp ugt i64 %2, %i.f
  %or.cond = select i1 %i.e, i1 true, i1 %i.g
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.18)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store ptr @.str.16, ptr %4, align 8, !tbaa !1460
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.19, ptr %i.h, align 8, !tbaa !1462
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 857, ptr %i.i, align 8, !tbaa !1463
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 43, ptr %i.j, align 4, !tbaa !1464
  invoke void @_ZN5boost15throw_exceptionISt12length_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #30
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %5, ptr %5, align 8, !tbaa !109
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %5, ptr %i.l, align 8, !tbaa !110
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !368  ; 4 uses
  %.not = icmp eq ptr %i.o, %i.n
  br i1 %.not, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !374  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !376  ; 2 uses
  %i.t = sub i64 %i.q, %i.s                       ; 3 uses
  %i.u = add i64 %i.t, %i.b                       ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !110  ; 3 uses
  %.not87 = icmp eq ptr %i.o, %i.w
  br i1 %.not87, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferINS3_4test14test_allocatorIcLb1ELb1ELb1ELb1ELb1EEEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 %i.q, ptr %i.x, align 8, !tbaa !392
  %i.y = load ptr, ptr %i.o, align 8, !tbaa !109  ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.y, %i.n
  %.not23.i.i.i = icmp eq ptr %5, %i.y
  %or.cond.i.i.i = or i1 %.not23.i.i.i, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferINS3_4test14test_allocatorIcLb1ELb1ELb1ELb1ELb1EEEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !110 ; 2 uses
  store ptr %5, ptr %i.w, align 8, !tbaa !109
  store ptr %i.w, ptr %i.l, align 8, !tbaa !110
  store ptr %i.n, ptr %i.aa, align 8, !tbaa !109
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !110
  store ptr %i.y, ptr %5, align 8, !tbaa !109
  store ptr %5, ptr %i.z, align 8, !tbaa !110
  br label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferINS3_4test14test_allocatorIcLb1ELb1ELb1ELb1ELb1EEEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_.exit

_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferINS3_4test14test_allocatorIcLb1ELb1ELb1ELb1ELb1EEEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.ab = phi ptr [ %5, %bb.f ], [ %5, %bb.g ], [ %i.y, %bb.h ] ; 2 uses
  %i.ac = icmp ugt i64 %2, %i.t
  br i1 %i.ac, label %bb.i, label %.thread

bb.i:                                             ; preds = %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferINS3_4test14test_allocatorIcLb1ELb1ELb1ELb1ELb1EEEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 %i.q, ptr %i.ad, align 8, !tbaa !392
  %i.ae = sub nuw i64 %2, %i.t
  br label %bb.j

.thread:                                          ; preds = %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferINS3_4test14test_allocatorIcLb1ELb1ELb1ELb1ELb1EEEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_.exit
  %i.af = add i64 %i.s, %2
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !392
  br label %.critedge

bb.j:                                             ; preds = %bb.i, %bb.e
  %i.ah = phi ptr [ %5, %bb.e ], [ %i.ab, %bb.i ]
  %.0 = phi i64 [ %2, %bb.e ], [ %i.ae, %bb.i ]   ; 2 uses
  %.023 = phi i64 [ %i.b, %bb.e ], [ %i.u, %bb.i ] ; 2 uses
  %.not3295 = icmp eq i64 %.0, 0
  br i1 %.not3295, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.m
  %.12497 = phi i64 [ %.023, %.lr.ph ], [ %i.au, %bb.m ] ; 2 uses
  %.196 = phi i64 [ %.0, %.lr.ph ], [ %i.aw, %bb.m ] ; 4 uses
  %i.ak = load ptr, ptr %5, align 8, !tbaa !109   ; 9 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  %i.al = icmp eq ptr %i.ak, %5
  %i.am = or i1 %.not.i.i, %i.al
  br i1 %i.am, label %.critedge.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !109, !noalias !2803 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !110, !noalias !2803 ; 2 uses
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !109, !noalias !2803
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !110, !noalias !2803
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !110 ; 2 uses
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !110
  store ptr %i.n, ptr %i.ak, align 8, !tbaa !109
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !110
  store ptr %i.ak, ptr %i.ar, align 8, !tbaa !109
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !374 ; 4 uses
  %i.au = add i64 %i.at, %.12497                  ; 2 uses
  %i.av = icmp ugt i64 %.196, %i.at
  br i1 %i.av, label %bb.m, label %.thread120

.thread120:                                       ; preds = %bb.l
  store i64 %.196, ptr %i.aj, align 8, !tbaa !392
  br label %.critedge.loopexit

bb.m:                                             ; preds = %bb.l
  store i64 %i.at, ptr %i.aj, align 8, !tbaa !392
  %i.aw = sub nuw i64 %.196, %i.at                ; 2 uses
  %.not32 = icmp eq i64 %i.aw, 0
  br i1 %.not32, label %.critedge.loopexit, label %bb.k, !llvm.loop !2808

.critedge.loopexit:                               ; preds = %bb.m, %.thread120
  %.pre = load ptr, ptr %5, align 8, !tbaa !109
  br label %.critedge

.critedge:                                        ; preds = %.thread, %.critedge.loopexit, %bb.j
  %i.ax = phi ptr [ %i.ah, %bb.j ], [ %.pre, %.critedge.loopexit ], [ %i.ab, %.thread ] ; 3 uses
  %.124.lcssa = phi i64 [ %.023, %bb.j ], [ %i.au, %.critedge.loopexit ], [ %i.u, %.thread ]
  %.not.i.i44 = icmp eq ptr %i.ax, null
  %i.ay = icmp eq ptr %i.ax, %5
  %i.az = or i1 %.not.i.i44, %i.ay
  br i1 %i.az, label %bb.t, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.k, %.critedge
  %.194 = phi i64 [ 0, %.critedge ], [ %.196, %bb.k ] ; 2 uses
  %.12492 = phi i64 [ %.124.lcssa, %.critedge ], [ %.12497, %bb.k ]
  %.not3290 = phi i1 [ true, %.critedge ], [ false, %bb.k ]
  %i.ba = phi ptr [ %i.ax, %.critedge ], [ %i.ak, %bb.k ]
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.critedge.thread
  %.sroa.04.0.i = phi ptr [ %i.ba, %.critedge.thread ], [ %i.bb, %bb.o ] ; 3 uses
  %.not.i = icmp eq ptr %.sroa.04.0.i, %5
  br i1 %.not.i, label %_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb1ELb1ELb1EEEE7destroyERNS_9intrusive9list_implINS6_8bhtraitsINS5_7elementENS6_16list_node_traitsIPvEELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb0EvEE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %.sroa.04.0.i, align 8, !tbaa !109, !noalias !2809
  invoke void @_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb1ELb1ELb1EEEE7destroyERNS5_7elementE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.0.i)
          to label %bb.n unwind label %bb.p, !llvm.loop !2696

bb.p:                                             ; preds = %bb.o
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #31
  unreachable

_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb1ELb1ELb1EEEE7destroyERNS_9intrusive9list_implINS6_8bhtraitsINS5_7elementENS6_16list_node_traitsIPvEELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb0EvEE.exit: ; preds = %bb.n
  %.pre105 = load i64, ptr %i.a, align 8, !tbaa !373 ; 3 uses
  br i1 %.not3290, label %bb.t, label %bb.q

bb.q:                                             ; preds = %_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb1ELb1ELb1EEEE7destroyERNS_9intrusive9list_implINS6_8bhtraitsINS5_7elementENS6_16list_node_traitsIPvEELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb0EvEE.exit
  %i.be = shl i64 %.pre105, 1
  %i.bf = load i64, ptr %i.c, align 8, !tbaa !349
  %i.bg = sub i64 %i.bf, %.12492                  ; 2 uses
  %.sroa.speculated50 = call i64 @llvm.umax.i64(i64 %i.be, i64 %.194)
  %i.bh = call i64 @llvm.umax.i64(i64 %.sroa.speculated50, i64 512)
  %i.bi = call i64 @llvm.umin.i64(i64 %i.bh, i64 %i.bg)
  %.inv88 = icmp slt i64 %.pre105, 0
  %.sroa.speculated = select i1 %.inv88, i64 %i.bg, i64 %i.bi
  %i.bj = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb1ELb1ELb1EEEE5allocEm(ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %.sroa.speculated) ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !110 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !110
  store ptr %i.n, ptr %i.bj, align 8, !tbaa !109
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !110
  store ptr %i.bj, ptr %i.bl, align 8, !tbaa !109
  %i.bn = load ptr, ptr %i.m, align 8, !tbaa !368
  %i.bo = icmp eq ptr %i.bn, %i.n
  br i1 %i.bo, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store ptr %i.bj, ptr %i.m, align 8, !tbaa !368
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 %.194, ptr %i.bp, align 8, !tbaa !392
  %.pre104 = load i64, ptr %i.a, align 8, !tbaa !373
  br label %bb.t

bb.t:                                             ; preds = %_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb1ELb1ELb1EEEE7destroyERNS_9intrusive9list_implINS6_8bhtraitsINS5_7elementENS6_16list_node_traitsIPvEELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb0EvEE.exit, %bb.s, %.critedge
  %i.bq = phi i64 [ %.pre105, %_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb1ELb1ELb1EEEE7destroyERNS_9intrusive9list_implINS6_8bhtraitsINS5_7elementENS6_16list_node_traitsIPvEELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb0EvEE.exit ], [ %.pre104, %bb.s ], [ %i.b, %.critedge ]
  call void @_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb1ELb1ELb1EEEE8subrangeILb1EEC2ERKS5_mm(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %i.bq, i64 noundef %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb1ELb1ELb1EEEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::length_error", align 8 ; 5 uses
  %3 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %4 = alloca %"class.boost::beast::basic_multi_buffer<boost::beast::test::test_allocator<char, true, true, true, true, true>>::subrange", align 8 ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !280    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !291  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZN5boost5beast4test14test_allocatorINS_11tt_align_ns2a8ELb1ELb1ELb1ELb1ELb1EEC2IcEERKNS2_IT_Lb1ELb1ELb1ELb1ELb1EEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 7 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i = icmp eq i8 %i.e, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.d, align 4, !tbaa !296
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !296
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.e

_ZN5boost5beast4test14test_allocatorINS_11tt_align_ns2a8ELb1ELb1ELb1ELb1ELb1EEC2IcEERKNS2_IT_Lb1ELb1ELb1ELb1ELb1EEE.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !297
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !297
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.m = load i64, ptr %i.l, align 8, !tbaa !290
  %i.n = icmp ugt i64 %1, %i.m
  br i1 %i.n, label %bb.i, label %bb.l

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !297
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.o, align 8, !tbaa !297
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.s = load i64, ptr %i.r, align 8, !tbaa !290
  %i.t = icmp ugt i64 %1, %i.s                    ; 3 uses
  %i.u = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %.split26, label %bb.f

.split26:                                         ; preds = %bb.e
  store i32 0, ptr %i.d, align 8, !tbaa !285
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !287
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !59
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #29, !inline_history !2721
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !59
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #29, !inline_history !2721
  br i1 %i.t, label %bb.i, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i20 = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i20, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.d, align 8, !tbaa !296
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ag = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.g ], [ %i.ag, %bb.h ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %.split, label %_ZN5boost5beast4test14test_allocatorINS_11tt_align_ns2a8ELb1ELb1ELb1ELb1ELb1EED2Ev.exit, !prof !299

.split:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #29
  br i1 %i.t, label %bb.i, label %bb.l

_ZN5boost5beast4test14test_allocatorINS_11tt_align_ns2a8ELb1ELb1ELb1ELb1ELb1EED2Ev.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  br i1 %i.t, label %bb.i, label %bb.l

bb.i:                                             ; preds = %.split26, %.split, %_ZN5boost5beast4test14test_allocatorINS_11tt_align_ns2a8ELb1ELb1ELb1ELb1ELb1EEC2IcEERKNS2_IT_Lb1ELb1ELb1ELb1ELb1EEE.exit, %_ZN5boost5beast4test14test_allocatorINS_11tt_align_ns2a8ELb1ELb1ELb1ELb1ELb1EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.15)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store ptr @.str.16, ptr %3, align 8, !tbaa !1460
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.23, ptr %i.ai, align 8, !tbaa !1462
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 687, ptr %i.aj, align 8, !tbaa !1463
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 70, ptr %i.ak, align 4, !tbaa !1464
  invoke void @_ZN5boost15throw_exceptionISt12length_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #30
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %i.al

bb.l:                                             ; preds = %.split26, %.split, %_ZN5boost5beast4test14test_allocatorINS_11tt_align_ns2a8ELb1ELb1ELb1ELb1ELb1EEC2IcEERKNS2_IT_Lb1ELb1ELb1ELb1ELb1EEE.exit, %_ZN5boost5beast4test14test_allocatorINS_11tt_align_ns2a8ELb1ELb1ELb1ELb1ELb1EED2Ev.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.an = load i64, ptr %i.am, align 8, !tbaa !373 ; 3 uses
  %.not = icmp ugt i64 %1, %i.an
  br i1 %.not, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !368 ; 3 uses
  %.not27 = icmp eq ptr %i.aq, %i.ap
  br i1 %.not27, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !374
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.au = load i64, ptr %i.at, align 8, !tbaa !376
  %i.av = sub i64 %i.as, %i.au
  %i.aw = add i64 %i.av, %i.an                    ; 2 uses
  %.not18 = icmp ugt i64 %1, %i.aw
  br i1 %.not18, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.n, %bb.o
  %.sroa.021.0 = phi ptr [ %i.ax, %bb.o ], [ %i.aq, %bb.n ]
  %.013 = phi i64 [ %i.bb, %bb.o ], [ %i.aw, %bb.n ]
  %i.ax = load ptr, ptr %.sroa.021.0, align 8, !tbaa !109 ; 3 uses
  %i.ay = icmp eq ptr %i.ax, %i.ap
  br i1 %i.ay, label %.critedge, label %bb.o

bb.o:                                             ; preds = %.preheader
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !374
  %i.bb = add i64 %i.ba, %.013                    ; 2 uses
  %.not19 = icmp ugt i64 %1, %i.bb
  br i1 %.not19, label %.preheader, label %.loopexit, !llvm.loop !2812

.critedge:                                        ; preds = %.preheader, %bb.m
  %i.bc = sub i64 %1, %i.an
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb1ELb1ELb1EEEE7prepareEm(ptr dead_on_unwind nonnull writable sret(%"class.boost::beast::basic_multi_buffer<boost::beast::test::test_allocator<char, true, true, true, true, true>>::subrange") align 8 %4, ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %.loopexit

.loopexit:                                        ; preds = %bb.o, %bb.n, %bb.l, %.critedge
  ret void
}

end_hunk_1
begin_hunk_2_@_ZTv0_n24_N5boost5beast6detail14ostream_helperINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb0ELb1ELb1ELb1ELb1EEEEEcSt11char_traitsIcELb1EED0Ev:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5boost5beast6detail14ostream_helperINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb0ELb1ELb1ELb1ELb1EEEEEcSt11char_traitsIcELb1EEE, i64 64), ptr %i.e, align 8, !tbaa !59
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  tail call void @_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb0ELb1ELb1ELb1ELb1EEEEEcSt11char_traitsIcELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.f) #29, !inline_history !2897
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.e) #29, !inline_history !2897
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 noundef 344) #32, !inline_history !2898
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb0ELb1ELb1ELb1ELb1EEEE7prepareEm(ptr dead_on_unwind noalias writable sret(%"class.boost::beast::basic_multi_buffer<boost::beast::test::test_allocator<char, false, true, true, true, true>>::subrange") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::length_error", align 8 ; 5 uses
  %4 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %5 = alloca %"class.boost::intrusive::list_impl.37", align 8 ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !450  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !317  ; 2 uses
  %i.e = icmp ugt i64 %i.b, %i.d
  %i.f = sub nuw i64 %i.d, %i.b
  %i.g = icmp ugt i64 %2, %i.f
  %or.cond = select i1 %i.e, i1 true, i1 %i.g
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.18)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store ptr @.str.16, ptr %4, align 8, !tbaa !1460
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.19, ptr %i.h, align 8, !tbaa !1462
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 857, ptr %i.i, align 8, !tbaa !1463
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 43, ptr %i.j, align 4, !tbaa !1464
  invoke void @_ZN5boost15throw_exceptionISt12length_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #30
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %5, ptr %5, align 8, !tbaa !109
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %5, ptr %i.l, align 8, !tbaa !110
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !451  ; 4 uses
  %.not = icmp eq ptr %i.o, %i.n
  br i1 %.not, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !452  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !454  ; 2 uses
  %i.t = sub i64 %i.q, %i.s                       ; 3 uses
  %i.u = add i64 %i.t, %i.b                       ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !110  ; 3 uses
  %.not87 = icmp eq ptr %i.o, %i.w
  br i1 %.not87, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferINS3_4test14test_allocatorIcLb0ELb1ELb1ELb1ELb1EEEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 %i.q, ptr %i.x, align 8, !tbaa !470
  %i.y = load ptr, ptr %i.o, align 8, !tbaa !109  ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.y, %i.n
  %.not23.i.i.i = icmp eq ptr %5, %i.y
  %or.cond.i.i.i = or i1 %.not23.i.i.i, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferINS3_4test14test_allocatorIcLb0ELb1ELb1ELb1ELb1EEEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !110 ; 2 uses
  store ptr %5, ptr %i.w, align 8, !tbaa !109
  store ptr %i.w, ptr %i.l, align 8, !tbaa !110
  store ptr %i.n, ptr %i.aa, align 8, !tbaa !109
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !110
  store ptr %i.y, ptr %5, align 8, !tbaa !109
  store ptr %5, ptr %i.z, align 8, !tbaa !110
  br label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferINS3_4test14test_allocatorIcLb0ELb1ELb1ELb1ELb1EEEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_.exit

_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferINS3_4test14test_allocatorIcLb0ELb1ELb1ELb1ELb1EEEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.ab = phi ptr [ %5, %bb.f ], [ %5, %bb.g ], [ %i.y, %bb.h ] ; 2 uses
  %i.ac = icmp ugt i64 %2, %i.t
  br i1 %i.ac, label %bb.i, label %.thread

bb.i:                                             ; preds = %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferINS3_4test14test_allocatorIcLb0ELb1ELb1ELb1ELb1EEEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 %i.q, ptr %i.ad, align 8, !tbaa !470
  %i.ae = sub nuw i64 %2, %i.t
  br label %bb.j

.thread:                                          ; preds = %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferINS3_4test14test_allocatorIcLb0ELb1ELb1ELb1ELb1EEEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_.exit
  %i.af = add i64 %i.s, %2
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !470
  br label %.critedge

bb.j:                                             ; preds = %bb.i, %bb.e
  %i.ah = phi ptr [ %5, %bb.e ], [ %i.ab, %bb.i ]
  %.0 = phi i64 [ %2, %bb.e ], [ %i.ae, %bb.i ]   ; 2 uses
  %.023 = phi i64 [ %i.b, %bb.e ], [ %i.u, %bb.i ] ; 2 uses
  %.not3295 = icmp eq i64 %.0, 0
  br i1 %.not3295, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.m
  %.12497 = phi i64 [ %.023, %.lr.ph ], [ %i.au, %bb.m ] ; 2 uses
  %.196 = phi i64 [ %.0, %.lr.ph ], [ %i.aw, %bb.m ] ; 4 uses
  %i.ak = load ptr, ptr %5, align 8, !tbaa !109   ; 9 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  %i.al = icmp eq ptr %i.ak, %5
  %i.am = or i1 %.not.i.i, %i.al
  br i1 %i.am, label %.critedge.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !109, !noalias !2899 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !110, !noalias !2899 ; 2 uses
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !109, !noalias !2899
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !110, !noalias !2899
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !110 ; 2 uses
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !110
  store ptr %i.n, ptr %i.ak, align 8, !tbaa !109
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !110
  store ptr %i.ak, ptr %i.ar, align 8, !tbaa !109
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !452 ; 4 uses
  %i.au = add i64 %i.at, %.12497                  ; 2 uses
  %i.av = icmp ugt i64 %.196, %i.at
  br i1 %i.av, label %bb.m, label %.thread120

.thread120:                                       ; preds = %bb.l
  store i64 %.196, ptr %i.aj, align 8, !tbaa !470
  br label %.critedge.loopexit

bb.m:                                             ; preds = %bb.l
  store i64 %i.at, ptr %i.aj, align 8, !tbaa !470
  %i.aw = sub nuw i64 %.196, %i.at                ; 2 uses
  %.not32 = icmp eq i64 %i.aw, 0
  br i1 %.not32, label %.critedge.loopexit, label %bb.k, !llvm.loop !2904

.critedge.loopexit:                               ; preds = %bb.m, %.thread120
  %.pre = load ptr, ptr %5, align 8, !tbaa !109
  br label %.critedge

.critedge:                                        ; preds = %.thread, %.critedge.loopexit, %bb.j
  %i.ax = phi ptr [ %i.ah, %bb.j ], [ %.pre, %.critedge.loopexit ], [ %i.ab, %.thread ] ; 3 uses
  %.124.lcssa = phi i64 [ %.023, %bb.j ], [ %i.au, %.critedge.loopexit ], [ %i.u, %.thread ]
  %.not.i.i44 = icmp eq ptr %i.ax, null
  %i.ay = icmp eq ptr %i.ax, %5
  %i.az = or i1 %.not.i.i44, %i.ay
  br i1 %i.az, label %bb.t, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.k, %.critedge
  %.194 = phi i64 [ 0, %.critedge ], [ %.196, %bb.k ] ; 2 uses
  %.12492 = phi i64 [ %.124.lcssa, %.critedge ], [ %.12497, %bb.k ]
  %.not3290 = phi i1 [ true, %.critedge ], [ false, %bb.k ]
  %i.ba = phi ptr [ %i.ax, %.critedge ], [ %i.ak, %bb.k ]
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.critedge.thread
  %.sroa.04.0.i = phi ptr [ %i.ba, %.critedge.thread ], [ %i.bb, %bb.o ] ; 3 uses
  %.not.i = icmp eq ptr %.sroa.04.0.i, %5
  br i1 %.not.i, label %_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb0ELb1ELb1ELb1ELb1EEEE7destroyERNS_9intrusive9list_implINS6_8bhtraitsINS5_7elementENS6_16list_node_traitsIPvEELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb0EvEE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %.sroa.04.0.i, align 8, !tbaa !109, !noalias !2905
  invoke void @_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb0ELb1ELb1ELb1ELb1EEEE7destroyERNS5_7elementE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.0.i)
          to label %bb.n unwind label %bb.p, !llvm.loop !2670

bb.p:                                             ; preds = %bb.o
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #31
  unreachable

_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb0ELb1ELb1ELb1ELb1EEEE7destroyERNS_9intrusive9list_implINS6_8bhtraitsINS5_7elementENS6_16list_node_traitsIPvEELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb0EvEE.exit: ; preds = %bb.n
  %.pre105 = load i64, ptr %i.a, align 8, !tbaa !450 ; 3 uses
  br i1 %.not3290, label %bb.t, label %bb.q

bb.q:                                             ; preds = %_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb0ELb1ELb1ELb1ELb1EEEE7destroyERNS_9intrusive9list_implINS6_8bhtraitsINS5_7elementENS6_16list_node_traitsIPvEELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb0EvEE.exit
  %i.be = shl i64 %.pre105, 1
  %i.bf = load i64, ptr %i.c, align 8, !tbaa !317
  %i.bg = sub i64 %i.bf, %.12492                  ; 2 uses
  %.sroa.speculated50 = call i64 @llvm.umax.i64(i64 %i.be, i64 %.194)
  %i.bh = call i64 @llvm.umax.i64(i64 %.sroa.speculated50, i64 512)
  %i.bi = call i64 @llvm.umin.i64(i64 %i.bh, i64 %i.bg)
  %.inv88 = icmp slt i64 %.pre105, 0
  %.sroa.speculated = select i1 %.inv88, i64 %i.bg, i64 %i.bi
  %i.bj = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb0ELb1ELb1ELb1ELb1EEEE5allocEm(ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %.sroa.speculated) ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !110 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !110
  store ptr %i.n, ptr %i.bj, align 8, !tbaa !109
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !110
  store ptr %i.bj, ptr %i.bl, align 8, !tbaa !109
  %i.bn = load ptr, ptr %i.m, align 8, !tbaa !451
  %i.bo = icmp eq ptr %i.bn, %i.n
  br i1 %i.bo, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store ptr %i.bj, ptr %i.m, align 8, !tbaa !451
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 %.194, ptr %i.bp, align 8, !tbaa !470
  %.pre104 = load i64, ptr %i.a, align 8, !tbaa !450
  br label %bb.t

bb.t:                                             ; preds = %_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb0ELb1ELb1ELb1ELb1EEEE7destroyERNS_9intrusive9list_implINS6_8bhtraitsINS5_7elementENS6_16list_node_traitsIPvEELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb0EvEE.exit, %bb.s, %.critedge
  %i.bq = phi i64 [ %.pre105, %_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb0ELb1ELb1ELb1ELb1EEEE7destroyERNS_9intrusive9list_implINS6_8bhtraitsINS5_7elementENS6_16list_node_traitsIPvEELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb0EvEE.exit ], [ %.pre104, %bb.s ], [ %i.b, %.critedge ]
  call void @_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb0ELb1ELb1ELb1ELb1EEEE8subrangeILb1EEC2ERKS5_mm(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %i.bq, i64 noundef %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb0ELb1ELb1ELb1ELb1EEEEEcSt11char_traitsIcELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2908, !nonnull !43, !align !55 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !135
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !136
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !109  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  %i.l = icmp eq ptr %i.k, %i.j
  %i.m = or i1 %.not.i.i.i.i, %i.l
  br i1 %i.m, label %_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb0ELb1ELb1ELb1ELb1EEEEEcSt11char_traitsIcELb1EE4syncEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !451  ; 5 uses
  %i.p = icmp eq ptr %i.o, %i.j
  br i1 %i.p, label %_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb0ELb1ELb1ELb1ELb1EEEEEcSt11char_traitsIcELb1EE4syncEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !110  ; 3 uses
  %.not1419.i.i = icmp eq ptr %i.o, %i.r
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 5 uses
  br i1 %.not1419.i.i, label %.._crit_edge_crit_edge.i.i, label %.lr.ph.i.i

.._crit_edge_crit_edge.i.i:                       ; preds = %bb.c
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !454
  %.phi.trans.insert30.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.pre31.i.i = load i64, ptr %.phi.trans.insert30.i.i, align 8, !tbaa !450
  br label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %.promoted22.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !454 ; 2 uses
  %.promoted23.i.i = load i64, ptr %i.s, align 8  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !452
  %i.v = sub i64 %i.u, %.promoted22.i.i           ; 3 uses
  %.not.peel.i.i = icmp ult i64 %i.i, %i.v
  br i1 %.not.peel.i.i, label %.thread.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !109  ; 4 uses
  store ptr %i.w, ptr %i.n, align 8, !tbaa !451
  %i.x = sub nuw i64 %i.i, %i.v                   ; 2 uses
  %i.y = add i64 %i.v, %.promoted23.i.i           ; 2 uses
  %.not14.peel.i.i = icmp eq ptr %i.w, %i.r
  br i1 %.not14.peel.i.i, label %._crit_edge.i.i, label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %bb.d, %bb.e
  %i.z = phi i64 [ %i.ai, %bb.e ], [ %i.y, %bb.d ] ; 2 uses
  %.020.i.i = phi i64 [ %i.ah, %bb.e ], [ %i.x, %bb.d ] ; 3 uses
  %i.aa = phi ptr [ %i.ag, %bb.e ], [ %i.w, %bb.d ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !452 ; 3 uses
  %.not.i.i = icmp ult i64 %.020.i.i, %i.ac
  br i1 %.not.i.i, label %.thread.i.i, label %bb.e

.thread.i.i:                                      ; preds = %.peel.next.i.i, %.lr.ph.i.i
  %i.ad = phi i64 [ %.promoted23.i.i, %.lr.ph.i.i ], [ %i.z, %.peel.next.i.i ]
  %.lcssa25.i.i = phi i64 [ %.promoted22.i.i, %.lr.ph.i.i ], [ 0, %.peel.next.i.i ]
  %.020.lcssa.i.i = phi i64 [ %i.i, %.lr.ph.i.i ], [ %.020.i.i, %.peel.next.i.i ] ; 2 uses
  %i.ae = add i64 %.020.lcssa.i.i, %.lcssa25.i.i
  store i64 %i.ae, ptr %.phi.trans.insert.i.i, align 8, !tbaa !454
  %i.af = add i64 %.020.lcssa.i.i, %i.ad
  store i64 %i.af, ptr %i.s, align 8, !tbaa !450
  br label %_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb0ELb1ELb1ELb1ELb1EEEEEcSt11char_traitsIcELb1EE4syncEv.exit

bb.e:                                             ; preds = %.peel.next.i.i
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !109 ; 4 uses
  store ptr %i.ag, ptr %i.n, align 8, !tbaa !451
  %i.ah = sub nuw i64 %.020.i.i, %i.ac            ; 2 uses
  %i.ai = add i64 %i.ac, %i.z                     ; 2 uses
  %.not14.i.i = icmp eq ptr %i.ag, %i.r
  br i1 %.not14.i.i, label %._crit_edge.i.i, label %.peel.next.i.i, !llvm.loop !2910

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.d, %.._crit_edge_crit_edge.i.i
  %i.aj = phi i64 [ %.pre31.i.i, %.._crit_edge_crit_edge.i.i ], [ %i.y, %bb.d ], [ %i.ai, %bb.e ]
  %i.ak = phi i64 [ %.pre.i.i, %.._crit_edge_crit_edge.i.i ], [ 0, %bb.d ], [ 0, %bb.e ] ; 2 uses
  %.0.lcssa.i.i = phi i64 [ %i.i, %.._crit_edge_crit_edge.i.i ], [ %i.x, %bb.d ], [ %i.ah, %bb.e ]
  %.lcssa.i.i = phi ptr [ %i.o, %.._crit_edge_crit_edge.i.i ], [ %i.w, %bb.d ], [ %i.ag, %bb.e ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.am = load i64, ptr %i.al, align 8, !tbaa !470
  %i.an = sub i64 %i.am, %i.ak
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.an, i64 %.0.lcssa.i.i) ; 2 uses
  %i.ao = add i64 %.sroa.speculated.i.i, %i.ak    ; 2 uses
  store i64 %i.ao, ptr %.phi.trans.insert.i.i, align 8, !tbaa !454
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.aq = add i64 %.sroa.speculated.i.i, %i.aj
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !450
  %i.ar = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !452
  %i.at = icmp eq i64 %i.ao, %i.as
  br i1 %i.at, label %bb.f, label %_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb0ELb1ELb1ELb1ELb1EEEEEcSt11char_traitsIcELb1EE4syncEv.exit

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.au = load ptr, ptr %.lcssa.i.i, align 8, !tbaa !109
  store ptr %i.au, ptr %i.n, align 8, !tbaa !451
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.phi.trans.insert.i.i, i8 0, i64 16, i1 false)
  br label %_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb0ELb1ELb1ELb1ELb1EEEEEcSt11char_traitsIcELb1EE4syncEv.exit

_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb0ELb1ELb1ELb1ELb1EEEEEcSt11char_traitsIcELb1EE4syncEv.exit: ; preds = %bb.a, %bb.b, %.thread.i.i, %._crit_edge.i.i, %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %0, align 8, !tbaa !59
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.av) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb0ELb1ELb1ELb1ELb1EEEEEcSt11char_traitsIcELb1EED0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb0ELb1ELb1ELb1ELb1EEEEEcSt11char_traitsIcELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb0ELb1ELb1ELb1ELb1EEEEEcSt11char_traitsIcELb1EE4syncEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2908, !nonnull !43, !align !55 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !135
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !136
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !109  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  %i.l = icmp eq ptr %i.k, %i.j
  %i.m = or i1 %.not.i.i.i, %i.l
  br i1 %i.m, label %_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb0ELb1ELb1ELb1ELb1EEEE6commitEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !451  ; 5 uses
  %i.p = icmp eq ptr %i.o, %i.j
  br i1 %i.p, label %_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb0ELb1ELb1ELb1ELb1EEEE6commitEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !110  ; 3 uses
  %.not1419.i = icmp eq ptr %i.o, %i.r
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 5 uses
  br i1 %.not1419.i, label %.._crit_edge_crit_edge.i, label %.lr.ph.i

.._crit_edge_crit_edge.i:                         ; preds = %bb.c
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !454
  %.phi.trans.insert30.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.pre31.i = load i64, ptr %.phi.trans.insert30.i, align 8, !tbaa !450
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZTv0_n24_N5boost5beast6detail14ostream_helperINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb0ELb1ELb0ELb1ELb1EEEEEcSt11char_traitsIcELb1EED0Ev:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5boost5beast6detail14ostream_helperINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb0ELb1ELb0ELb1ELb1EEEEEcSt11char_traitsIcELb1EEE, i64 64), ptr %i.e, align 8, !tbaa !59
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  tail call void @_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb0ELb1ELb0ELb1ELb1EEEEEcSt11char_traitsIcELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.f) #29, !inline_history !3010
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.e) #29, !inline_history !3010
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 noundef 344) #32, !inline_history !3011
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb0ELb1ELb0ELb1ELb1EEEE7prepareEm(ptr dead_on_unwind noalias writable sret(%"class.boost::beast::basic_multi_buffer<boost::beast::test::test_allocator<char, false, true, false, true, true>>::subrange") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::length_error", align 8 ; 5 uses
  %4 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %5 = alloca %"class.boost::intrusive::list_impl.63", align 8 ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !725  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !698  ; 2 uses
  %i.e = icmp ugt i64 %i.b, %i.d
  %i.f = sub nuw i64 %i.d, %i.b
  %i.g = icmp ugt i64 %2, %i.f
  %or.cond = select i1 %i.e, i1 true, i1 %i.g
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.18)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store ptr @.str.16, ptr %4, align 8, !tbaa !1460
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.19, ptr %i.h, align 8, !tbaa !1462
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 857, ptr %i.i, align 8, !tbaa !1463
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 43, ptr %i.j, align 4, !tbaa !1464
  invoke void @_ZN5boost15throw_exceptionISt12length_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #30
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %5, ptr %5, align 8, !tbaa !109
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %5, ptr %i.l, align 8, !tbaa !110
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !726  ; 4 uses
  %.not = icmp eq ptr %i.o, %i.n
  br i1 %.not, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !727  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !729  ; 2 uses
  %i.t = sub i64 %i.q, %i.s                       ; 3 uses
  %i.u = add i64 %i.t, %i.b                       ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !110  ; 3 uses
  %.not84 = icmp eq ptr %i.o, %i.w
  br i1 %.not84, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferINS3_4test14test_allocatorIcLb0ELb1ELb0ELb1ELb1EEEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 %i.q, ptr %i.x, align 8, !tbaa !745
  %i.y = load ptr, ptr %i.o, align 8, !tbaa !109  ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.y, %i.n
  %.not23.i.i.i = icmp eq ptr %5, %i.y
  %or.cond.i.i.i = or i1 %.not23.i.i.i, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferINS3_4test14test_allocatorIcLb0ELb1ELb0ELb1ELb1EEEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !110 ; 2 uses
  store ptr %5, ptr %i.w, align 8, !tbaa !109
  store ptr %i.w, ptr %i.l, align 8, !tbaa !110
  store ptr %i.n, ptr %i.aa, align 8, !tbaa !109
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !110
  store ptr %i.y, ptr %5, align 8, !tbaa !109
  store ptr %5, ptr %i.z, align 8, !tbaa !110
  br label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferINS3_4test14test_allocatorIcLb0ELb1ELb0ELb1ELb1EEEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_.exit

_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferINS3_4test14test_allocatorIcLb0ELb1ELb0ELb1ELb1EEEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.ab = phi ptr [ %5, %bb.f ], [ %5, %bb.g ], [ %i.y, %bb.h ] ; 2 uses
  %i.ac = icmp ugt i64 %2, %i.t
  br i1 %i.ac, label %bb.i, label %.thread

bb.i:                                             ; preds = %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferINS3_4test14test_allocatorIcLb0ELb1ELb0ELb1ELb1EEEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 %i.q, ptr %i.ad, align 8, !tbaa !745
  %i.ae = sub nuw i64 %2, %i.t
  br label %bb.j

.thread:                                          ; preds = %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferINS3_4test14test_allocatorIcLb0ELb1ELb0ELb1ELb1EEEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_.exit
  %i.af = add i64 %i.s, %2
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !745
  br label %.critedge

bb.j:                                             ; preds = %bb.i, %bb.e
  %i.ah = phi ptr [ %5, %bb.e ], [ %i.ab, %bb.i ]
  %.0 = phi i64 [ %2, %bb.e ], [ %i.ae, %bb.i ]   ; 2 uses
  %.022 = phi i64 [ %i.b, %bb.e ], [ %i.u, %bb.i ] ; 2 uses
  %.not3192 = icmp eq i64 %.0, 0
  br i1 %.not3192, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.m
  %.12394 = phi i64 [ %.022, %.lr.ph ], [ %i.au, %bb.m ] ; 2 uses
  %.193 = phi i64 [ %.0, %.lr.ph ], [ %i.aw, %bb.m ] ; 4 uses
  %i.ak = load ptr, ptr %5, align 8, !tbaa !109   ; 9 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  %i.al = icmp eq ptr %i.ak, %5
  %i.am = or i1 %.not.i.i, %i.al
  br i1 %i.am, label %.critedge.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !109, !noalias !3012 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !110, !noalias !3012 ; 2 uses
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !109, !noalias !3012
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !110, !noalias !3012
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !110 ; 2 uses
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !110
  store ptr %i.n, ptr %i.ak, align 8, !tbaa !109
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !110
  store ptr %i.ak, ptr %i.ar, align 8, !tbaa !109
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !727 ; 4 uses
  %i.au = add i64 %i.at, %.12394                  ; 2 uses
  %i.av = icmp ugt i64 %.193, %i.at
  br i1 %i.av, label %bb.m, label %.thread117

.thread117:                                       ; preds = %bb.l
  store i64 %.193, ptr %i.aj, align 8, !tbaa !745
  br label %.critedge.loopexit

bb.m:                                             ; preds = %bb.l
  store i64 %i.at, ptr %i.aj, align 8, !tbaa !745
  %i.aw = sub nuw i64 %.193, %i.at                ; 2 uses
  %.not31 = icmp eq i64 %i.aw, 0
  br i1 %.not31, label %.critedge.loopexit, label %bb.k, !llvm.loop !3017

.critedge.loopexit:                               ; preds = %bb.m, %.thread117
  %.pre = load ptr, ptr %5, align 8, !tbaa !109
  br label %.critedge

.critedge:                                        ; preds = %.thread, %.critedge.loopexit, %bb.j
  %i.ax = phi ptr [ %i.ah, %bb.j ], [ %.pre, %.critedge.loopexit ], [ %i.ab, %.thread ] ; 3 uses
  %.123.lcssa = phi i64 [ %.022, %bb.j ], [ %i.au, %.critedge.loopexit ], [ %i.u, %.thread ]
  %.not.i.i41 = icmp eq ptr %i.ax, null
  %i.ay = icmp eq ptr %i.ax, %5
  %i.az = or i1 %.not.i.i41, %i.ay
  br i1 %i.az, label %bb.t, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.k, %.critedge
  %.191 = phi i64 [ 0, %.critedge ], [ %.193, %bb.k ] ; 2 uses
  %.12389 = phi i64 [ %.123.lcssa, %.critedge ], [ %.12394, %bb.k ]
  %.not3187 = phi i1 [ true, %.critedge ], [ false, %bb.k ]
  %i.ba = phi ptr [ %i.ax, %.critedge ], [ %i.ak, %bb.k ]
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.critedge.thread
  %.sroa.04.0.i = phi ptr [ %i.ba, %.critedge.thread ], [ %i.bb, %bb.o ] ; 3 uses
  %.not.i = icmp eq ptr %.sroa.04.0.i, %5
  br i1 %.not.i, label %_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb0ELb1ELb0ELb1ELb1EEEE7destroyERNS_9intrusive9list_implINS6_8bhtraitsINS5_7elementENS6_16list_node_traitsIPvEELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb0EvEE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %.sroa.04.0.i, align 8, !tbaa !109, !noalias !3018
  invoke void @_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb0ELb1ELb0ELb1ELb1EEEE7destroyERNS5_7elementE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.0.i)
          to label %bb.n unwind label %bb.p, !llvm.loop !2749

bb.p:                                             ; preds = %bb.o
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #31
  unreachable

_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb0ELb1ELb0ELb1ELb1EEEE7destroyERNS_9intrusive9list_implINS6_8bhtraitsINS5_7elementENS6_16list_node_traitsIPvEELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb0EvEE.exit: ; preds = %bb.n
  %.pre102 = load i64, ptr %i.a, align 8, !tbaa !725 ; 3 uses
  br i1 %.not3187, label %bb.t, label %bb.q

bb.q:                                             ; preds = %_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb0ELb1ELb0ELb1ELb1EEEE7destroyERNS_9intrusive9list_implINS6_8bhtraitsINS5_7elementENS6_16list_node_traitsIPvEELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb0EvEE.exit
  %i.be = shl i64 %.pre102, 1
  %i.bf = load i64, ptr %i.c, align 8, !tbaa !698
  %i.bg = sub i64 %i.bf, %.12389                  ; 2 uses
  %.sroa.speculated47 = call i64 @llvm.umax.i64(i64 %i.be, i64 %.191)
  %i.bh = call i64 @llvm.umax.i64(i64 %.sroa.speculated47, i64 512)
  %i.bi = call i64 @llvm.umin.i64(i64 %i.bh, i64 %i.bg)
  %.inv85 = icmp slt i64 %.pre102, 0
  %.sroa.speculated = select i1 %.inv85, i64 %i.bg, i64 %i.bi
  %i.bj = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb0ELb1ELb0ELb1ELb1EEEE5allocEm(ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %.sroa.speculated) ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !110 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !110
  store ptr %i.n, ptr %i.bj, align 8, !tbaa !109
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !110
  store ptr %i.bj, ptr %i.bl, align 8, !tbaa !109
  %i.bn = load ptr, ptr %i.m, align 8, !tbaa !726
  %i.bo = icmp eq ptr %i.bn, %i.n
  br i1 %i.bo, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store ptr %i.bj, ptr %i.m, align 8, !tbaa !726
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 %.191, ptr %i.bp, align 8, !tbaa !745
  %.pre101 = load i64, ptr %i.a, align 8, !tbaa !725
  br label %bb.t

bb.t:                                             ; preds = %_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb0ELb1ELb0ELb1ELb1EEEE7destroyERNS_9intrusive9list_implINS6_8bhtraitsINS5_7elementENS6_16list_node_traitsIPvEELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb0EvEE.exit, %bb.s, %.critedge
  %i.bq = phi i64 [ %.pre102, %_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb0ELb1ELb0ELb1ELb1EEEE7destroyERNS_9intrusive9list_implINS6_8bhtraitsINS5_7elementENS6_16list_node_traitsIPvEELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb0EvEE.exit ], [ %.pre101, %bb.s ], [ %i.b, %.critedge ]
  call void @_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb0ELb1ELb0ELb1ELb1EEEE8subrangeILb1EEC2ERKS5_mm(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %i.bq, i64 noundef %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb0ELb1ELb0ELb1ELb1EEEEEcSt11char_traitsIcELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3021, !nonnull !43, !align !55 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !135
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !136
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !109  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  %i.l = icmp eq ptr %i.k, %i.j
  %i.m = or i1 %.not.i.i.i.i, %i.l
  br i1 %i.m, label %_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb0ELb1ELb0ELb1ELb1EEEEEcSt11char_traitsIcELb1EE4syncEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !726  ; 5 uses
  %i.p = icmp eq ptr %i.o, %i.j
  br i1 %i.p, label %_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb0ELb1ELb0ELb1ELb1EEEEEcSt11char_traitsIcELb1EE4syncEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !110  ; 3 uses
  %.not1419.i.i = icmp eq ptr %i.o, %i.r
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 5 uses
  br i1 %.not1419.i.i, label %.._crit_edge_crit_edge.i.i, label %.lr.ph.i.i

.._crit_edge_crit_edge.i.i:                       ; preds = %bb.c
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !729
  %.phi.trans.insert30.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.pre31.i.i = load i64, ptr %.phi.trans.insert30.i.i, align 8, !tbaa !725
  br label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %.promoted22.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !729 ; 2 uses
  %.promoted23.i.i = load i64, ptr %i.s, align 8  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !727
  %i.v = sub i64 %i.u, %.promoted22.i.i           ; 3 uses
  %.not.peel.i.i = icmp ult i64 %i.i, %i.v
  br i1 %.not.peel.i.i, label %.thread.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !109  ; 4 uses
  store ptr %i.w, ptr %i.n, align 8, !tbaa !726
  %i.x = sub nuw i64 %i.i, %i.v                   ; 2 uses
  %i.y = add i64 %i.v, %.promoted23.i.i           ; 2 uses
  %.not14.peel.i.i = icmp eq ptr %i.w, %i.r
  br i1 %.not14.peel.i.i, label %._crit_edge.i.i, label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %bb.d, %bb.e
  %i.z = phi i64 [ %i.ai, %bb.e ], [ %i.y, %bb.d ] ; 2 uses
  %.020.i.i = phi i64 [ %i.ah, %bb.e ], [ %i.x, %bb.d ] ; 3 uses
  %i.aa = phi ptr [ %i.ag, %bb.e ], [ %i.w, %bb.d ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !727 ; 3 uses
  %.not.i.i = icmp ult i64 %.020.i.i, %i.ac
  br i1 %.not.i.i, label %.thread.i.i, label %bb.e

.thread.i.i:                                      ; preds = %.peel.next.i.i, %.lr.ph.i.i
  %i.ad = phi i64 [ %.promoted23.i.i, %.lr.ph.i.i ], [ %i.z, %.peel.next.i.i ]
  %.lcssa25.i.i = phi i64 [ %.promoted22.i.i, %.lr.ph.i.i ], [ 0, %.peel.next.i.i ]
  %.020.lcssa.i.i = phi i64 [ %i.i, %.lr.ph.i.i ], [ %.020.i.i, %.peel.next.i.i ] ; 2 uses
  %i.ae = add i64 %.020.lcssa.i.i, %.lcssa25.i.i
  store i64 %i.ae, ptr %.phi.trans.insert.i.i, align 8, !tbaa !729
  %i.af = add i64 %.020.lcssa.i.i, %i.ad
  store i64 %i.af, ptr %i.s, align 8, !tbaa !725
  br label %_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb0ELb1ELb0ELb1ELb1EEEEEcSt11char_traitsIcELb1EE4syncEv.exit

bb.e:                                             ; preds = %.peel.next.i.i
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !109 ; 4 uses
  store ptr %i.ag, ptr %i.n, align 8, !tbaa !726
  %i.ah = sub nuw i64 %.020.i.i, %i.ac            ; 2 uses
  %i.ai = add i64 %i.ac, %i.z                     ; 2 uses
  %.not14.i.i = icmp eq ptr %i.ag, %i.r
  br i1 %.not14.i.i, label %._crit_edge.i.i, label %.peel.next.i.i, !llvm.loop !3023

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.d, %.._crit_edge_crit_edge.i.i
  %i.aj = phi i64 [ %.pre31.i.i, %.._crit_edge_crit_edge.i.i ], [ %i.y, %bb.d ], [ %i.ai, %bb.e ]
  %i.ak = phi i64 [ %.pre.i.i, %.._crit_edge_crit_edge.i.i ], [ 0, %bb.d ], [ 0, %bb.e ] ; 2 uses
  %.0.lcssa.i.i = phi i64 [ %i.i, %.._crit_edge_crit_edge.i.i ], [ %i.x, %bb.d ], [ %i.ah, %bb.e ]
  %.lcssa.i.i = phi ptr [ %i.o, %.._crit_edge_crit_edge.i.i ], [ %i.w, %bb.d ], [ %i.ag, %bb.e ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.am = load i64, ptr %i.al, align 8, !tbaa !745
  %i.an = sub i64 %i.am, %i.ak
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.an, i64 %.0.lcssa.i.i) ; 2 uses
  %i.ao = add i64 %.sroa.speculated.i.i, %i.ak    ; 2 uses
  store i64 %i.ao, ptr %.phi.trans.insert.i.i, align 8, !tbaa !729
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.aq = add i64 %.sroa.speculated.i.i, %i.aj
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !725
  %i.ar = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !727
  %i.at = icmp eq i64 %i.ao, %i.as
  br i1 %i.at, label %bb.f, label %_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb0ELb1ELb0ELb1ELb1EEEEEcSt11char_traitsIcELb1EE4syncEv.exit

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.au = load ptr, ptr %.lcssa.i.i, align 8, !tbaa !109
  store ptr %i.au, ptr %i.n, align 8, !tbaa !726
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.phi.trans.insert.i.i, i8 0, i64 16, i1 false)
  br label %_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb0ELb1ELb0ELb1ELb1EEEEEcSt11char_traitsIcELb1EE4syncEv.exit

_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb0ELb1ELb0ELb1ELb1EEEEEcSt11char_traitsIcELb1EE4syncEv.exit: ; preds = %bb.a, %bb.b, %.thread.i.i, %._crit_edge.i.i, %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %0, align 8, !tbaa !59
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.av) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb0ELb1ELb0ELb1ELb1EEEEEcSt11char_traitsIcELb1EED0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb0ELb1ELb0ELb1ELb1EEEEEcSt11char_traitsIcELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb0ELb1ELb0ELb1ELb1EEEEEcSt11char_traitsIcELb1EE4syncEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3021, !nonnull !43, !align !55 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !135
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !136
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !109  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  %i.l = icmp eq ptr %i.k, %i.j
  %i.m = or i1 %.not.i.i.i, %i.l
  br i1 %i.m, label %_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb0ELb1ELb0ELb1ELb1EEEE6commitEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !726  ; 5 uses
  %i.p = icmp eq ptr %i.o, %i.j
  br i1 %i.p, label %_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb0ELb1ELb0ELb1ELb1EEEE6commitEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !110  ; 3 uses
  %.not1419.i = icmp eq ptr %i.o, %i.r
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 5 uses
  br i1 %.not1419.i, label %.._crit_edge_crit_edge.i, label %.lr.ph.i

.._crit_edge_crit_edge.i:                         ; preds = %bb.c
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !729
  %.phi.trans.insert30.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.pre31.i = load i64, ptr %.phi.trans.insert30.i, align 8, !tbaa !725
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZTv0_n24_N5boost5beast6detail14ostream_helperINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb0ELb1ELb1EEEEEcSt11char_traitsIcELb1EED0Ev:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5boost5beast6detail14ostream_helperINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb0ELb1ELb1EEEEEcSt11char_traitsIcELb1EEE, i64 64), ptr %i.e, align 8, !tbaa !59
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  tail call void @_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb0ELb1ELb1EEEEEcSt11char_traitsIcELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.f) #29, !inline_history !3184
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.e) #29, !inline_history !3184
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 noundef 344) #32, !inline_history !3185
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb0ELb1ELb1EEEE7prepareEm(ptr dead_on_unwind noalias writable sret(%"class.boost::beast::basic_multi_buffer<boost::beast::test::test_allocator<char, true, true, false, true, true>>::subrange") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::length_error", align 8 ; 5 uses
  %4 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %5 = alloca %"class.boost::intrusive::list_impl.76", align 8 ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !828  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !804  ; 2 uses
  %i.e = icmp ugt i64 %i.b, %i.d
  %i.f = sub nuw i64 %i.d, %i.b
  %i.g = icmp ugt i64 %2, %i.f
  %or.cond = select i1 %i.e, i1 true, i1 %i.g
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.18)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store ptr @.str.16, ptr %4, align 8, !tbaa !1460
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.19, ptr %i.h, align 8, !tbaa !1462
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 857, ptr %i.i, align 8, !tbaa !1463
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 43, ptr %i.j, align 4, !tbaa !1464
  invoke void @_ZN5boost15throw_exceptionISt12length_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #30
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %5, ptr %5, align 8, !tbaa !109
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %5, ptr %i.l, align 8, !tbaa !110
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !3186 ; 4 uses
  %.not = icmp eq ptr %i.o, %i.n
  br i1 %.not, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !844  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !3187 ; 2 uses
  %i.t = sub i64 %i.q, %i.s                       ; 3 uses
  %i.u = add i64 %i.t, %i.b                       ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !110  ; 3 uses
  %.not84 = icmp eq ptr %i.o, %i.w
  br i1 %.not84, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferINS3_4test14test_allocatorIcLb1ELb1ELb0ELb1ELb1EEEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 %i.q, ptr %i.x, align 8, !tbaa !843
  %i.y = load ptr, ptr %i.o, align 8, !tbaa !109  ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.y, %i.n
  %.not23.i.i.i = icmp eq ptr %5, %i.y
  %or.cond.i.i.i = or i1 %.not23.i.i.i, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferINS3_4test14test_allocatorIcLb1ELb1ELb0ELb1ELb1EEEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !110 ; 2 uses
  store ptr %5, ptr %i.w, align 8, !tbaa !109
  store ptr %i.w, ptr %i.l, align 8, !tbaa !110
  store ptr %i.n, ptr %i.aa, align 8, !tbaa !109
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !110
  store ptr %i.y, ptr %5, align 8, !tbaa !109
  store ptr %5, ptr %i.z, align 8, !tbaa !110
  br label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferINS3_4test14test_allocatorIcLb1ELb1ELb0ELb1ELb1EEEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_.exit

_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferINS3_4test14test_allocatorIcLb1ELb1ELb0ELb1ELb1EEEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.ab = phi ptr [ %5, %bb.f ], [ %5, %bb.g ], [ %i.y, %bb.h ] ; 2 uses
  %i.ac = icmp ugt i64 %2, %i.t
  br i1 %i.ac, label %bb.i, label %.thread

bb.i:                                             ; preds = %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferINS3_4test14test_allocatorIcLb1ELb1ELb0ELb1ELb1EEEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 %i.q, ptr %i.ad, align 8, !tbaa !843
  %i.ae = sub nuw i64 %2, %i.t
  br label %bb.j

.thread:                                          ; preds = %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferINS3_4test14test_allocatorIcLb1ELb1ELb0ELb1ELb1EEEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_.exit
  %i.af = add i64 %i.s, %2
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !843
  br label %.critedge

bb.j:                                             ; preds = %bb.i, %bb.e
  %i.ah = phi ptr [ %5, %bb.e ], [ %i.ab, %bb.i ]
  %.0 = phi i64 [ %2, %bb.e ], [ %i.ae, %bb.i ]   ; 2 uses
  %.022 = phi i64 [ %i.b, %bb.e ], [ %i.u, %bb.i ] ; 2 uses
  %.not3192 = icmp eq i64 %.0, 0
  br i1 %.not3192, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.m
  %.12394 = phi i64 [ %.022, %.lr.ph ], [ %i.au, %bb.m ] ; 2 uses
  %.193 = phi i64 [ %.0, %.lr.ph ], [ %i.aw, %bb.m ] ; 4 uses
  %i.ak = load ptr, ptr %5, align 8, !tbaa !109   ; 9 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  %i.al = icmp eq ptr %i.ak, %5
  %i.am = or i1 %.not.i.i, %i.al
  br i1 %i.am, label %.critedge.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !109, !noalias !3188 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !110, !noalias !3188 ; 2 uses
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !109, !noalias !3188
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !110, !noalias !3188
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !110 ; 2 uses
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !110
  store ptr %i.n, ptr %i.ak, align 8, !tbaa !109
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !110
  store ptr %i.ak, ptr %i.ar, align 8, !tbaa !109
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !844 ; 4 uses
  %i.au = add i64 %i.at, %.12394                  ; 2 uses
  %i.av = icmp ugt i64 %.193, %i.at
  br i1 %i.av, label %bb.m, label %.thread117

.thread117:                                       ; preds = %bb.l
  store i64 %.193, ptr %i.aj, align 8, !tbaa !843
  br label %.critedge.loopexit

bb.m:                                             ; preds = %bb.l
  store i64 %i.at, ptr %i.aj, align 8, !tbaa !843
  %i.aw = sub nuw i64 %.193, %i.at                ; 2 uses
  %.not31 = icmp eq i64 %i.aw, 0
  br i1 %.not31, label %.critedge.loopexit, label %bb.k, !llvm.loop !3193

.critedge.loopexit:                               ; preds = %bb.m, %.thread117
  %.pre = load ptr, ptr %5, align 8, !tbaa !109
  br label %.critedge

.critedge:                                        ; preds = %.thread, %.critedge.loopexit, %bb.j
  %i.ax = phi ptr [ %i.ah, %bb.j ], [ %.pre, %.critedge.loopexit ], [ %i.ab, %.thread ] ; 3 uses
  %.123.lcssa = phi i64 [ %.022, %bb.j ], [ %i.au, %.critedge.loopexit ], [ %i.u, %.thread ]
  %.not.i.i41 = icmp eq ptr %i.ax, null
  %i.ay = icmp eq ptr %i.ax, %5
  %i.az = or i1 %.not.i.i41, %i.ay
  br i1 %i.az, label %bb.t, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.k, %.critedge
  %.191 = phi i64 [ 0, %.critedge ], [ %.193, %bb.k ] ; 2 uses
  %.12389 = phi i64 [ %.123.lcssa, %.critedge ], [ %.12394, %bb.k ]
  %.not3187 = phi i1 [ true, %.critedge ], [ false, %bb.k ]
  %i.ba = phi ptr [ %i.ax, %.critedge ], [ %i.ak, %bb.k ]
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.critedge.thread
  %.sroa.04.0.i = phi ptr [ %i.ba, %.critedge.thread ], [ %i.bb, %bb.o ] ; 3 uses
  %.not.i = icmp eq ptr %.sroa.04.0.i, %5
  br i1 %.not.i, label %_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb0ELb1ELb1EEEE7destroyERNS_9intrusive9list_implINS6_8bhtraitsINS5_7elementENS6_16list_node_traitsIPvEELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb0EvEE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %.sroa.04.0.i, align 8, !tbaa !109, !noalias !3194
  invoke void @_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb0ELb1ELb1EEEE7destroyERNS5_7elementE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.0.i)
          to label %bb.n unwind label %bb.p, !llvm.loop !2775

bb.p:                                             ; preds = %bb.o
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #31
  unreachable

_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb0ELb1ELb1EEEE7destroyERNS_9intrusive9list_implINS6_8bhtraitsINS5_7elementENS6_16list_node_traitsIPvEELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb0EvEE.exit: ; preds = %bb.n
  %.pre102 = load i64, ptr %i.a, align 8, !tbaa !828 ; 3 uses
  br i1 %.not3187, label %bb.t, label %bb.q

bb.q:                                             ; preds = %_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb0ELb1ELb1EEEE7destroyERNS_9intrusive9list_implINS6_8bhtraitsINS5_7elementENS6_16list_node_traitsIPvEELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb0EvEE.exit
  %i.be = shl i64 %.pre102, 1
  %i.bf = load i64, ptr %i.c, align 8, !tbaa !804
  %i.bg = sub i64 %i.bf, %.12389                  ; 2 uses
  %.sroa.speculated47 = call i64 @llvm.umax.i64(i64 %i.be, i64 %.191)
  %i.bh = call i64 @llvm.umax.i64(i64 %.sroa.speculated47, i64 512)
  %i.bi = call i64 @llvm.umin.i64(i64 %i.bh, i64 %i.bg)
  %.inv85 = icmp slt i64 %.pre102, 0
  %.sroa.speculated = select i1 %.inv85, i64 %i.bg, i64 %i.bi
  %i.bj = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb0ELb1ELb1EEEE5allocEm(ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %.sroa.speculated) ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !110 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !110
  store ptr %i.n, ptr %i.bj, align 8, !tbaa !109
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !110
  store ptr %i.bj, ptr %i.bl, align 8, !tbaa !109
  %i.bn = load ptr, ptr %i.m, align 8, !tbaa !3186
  %i.bo = icmp eq ptr %i.bn, %i.n
  br i1 %i.bo, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store ptr %i.bj, ptr %i.m, align 8, !tbaa !3186
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 %.191, ptr %i.bp, align 8, !tbaa !843
  %.pre101 = load i64, ptr %i.a, align 8, !tbaa !828
  br label %bb.t

bb.t:                                             ; preds = %_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb0ELb1ELb1EEEE7destroyERNS_9intrusive9list_implINS6_8bhtraitsINS5_7elementENS6_16list_node_traitsIPvEELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb0EvEE.exit, %bb.s, %.critedge
  %i.bq = phi i64 [ %.pre102, %_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb0ELb1ELb1EEEE7destroyERNS_9intrusive9list_implINS6_8bhtraitsINS5_7elementENS6_16list_node_traitsIPvEELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb0EvEE.exit ], [ %.pre101, %bb.s ], [ %i.b, %.critedge ]
  call void @_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb0ELb1ELb1EEEE8subrangeILb1EEC2ERKS5_mm(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %i.bq, i64 noundef %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb0ELb1ELb1EEEEEcSt11char_traitsIcELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3197, !nonnull !43, !align !55 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !135
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !136
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !109  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  %i.l = icmp eq ptr %i.k, %i.j
  %i.m = or i1 %.not.i.i.i.i, %i.l
  br i1 %i.m, label %_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb0ELb1ELb1EEEEEcSt11char_traitsIcELb1EE4syncEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !3186 ; 5 uses
  %i.p = icmp eq ptr %i.o, %i.j
  br i1 %i.p, label %_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb0ELb1ELb1EEEEEcSt11char_traitsIcELb1EE4syncEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !110  ; 3 uses
  %.not1419.i.i = icmp eq ptr %i.o, %i.r
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 5 uses
  br i1 %.not1419.i.i, label %.._crit_edge_crit_edge.i.i, label %.lr.ph.i.i

.._crit_edge_crit_edge.i.i:                       ; preds = %bb.c
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !3187
  %.phi.trans.insert30.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.pre31.i.i = load i64, ptr %.phi.trans.insert30.i.i, align 8, !tbaa !828
  br label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %.promoted22.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !3187 ; 2 uses
  %.promoted23.i.i = load i64, ptr %i.s, align 8  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !844
  %i.v = sub i64 %i.u, %.promoted22.i.i           ; 3 uses
  %.not.peel.i.i = icmp ult i64 %i.i, %i.v
  br i1 %.not.peel.i.i, label %.thread.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !109  ; 4 uses
  store ptr %i.w, ptr %i.n, align 8, !tbaa !3186
  %i.x = sub nuw i64 %i.i, %i.v                   ; 2 uses
  %i.y = add i64 %i.v, %.promoted23.i.i           ; 2 uses
  %.not14.peel.i.i = icmp eq ptr %i.w, %i.r
  br i1 %.not14.peel.i.i, label %._crit_edge.i.i, label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %bb.d, %bb.e
  %i.z = phi i64 [ %i.ai, %bb.e ], [ %i.y, %bb.d ] ; 2 uses
  %.020.i.i = phi i64 [ %i.ah, %bb.e ], [ %i.x, %bb.d ] ; 3 uses
  %i.aa = phi ptr [ %i.ag, %bb.e ], [ %i.w, %bb.d ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !844 ; 3 uses
  %.not.i.i = icmp ult i64 %.020.i.i, %i.ac
  br i1 %.not.i.i, label %.thread.i.i, label %bb.e

.thread.i.i:                                      ; preds = %.peel.next.i.i, %.lr.ph.i.i
  %i.ad = phi i64 [ %.promoted23.i.i, %.lr.ph.i.i ], [ %i.z, %.peel.next.i.i ]
  %.lcssa25.i.i = phi i64 [ %.promoted22.i.i, %.lr.ph.i.i ], [ 0, %.peel.next.i.i ]
  %.020.lcssa.i.i = phi i64 [ %i.i, %.lr.ph.i.i ], [ %.020.i.i, %.peel.next.i.i ] ; 2 uses
  %i.ae = add i64 %.020.lcssa.i.i, %.lcssa25.i.i
  store i64 %i.ae, ptr %.phi.trans.insert.i.i, align 8, !tbaa !3187
  %i.af = add i64 %.020.lcssa.i.i, %i.ad
  store i64 %i.af, ptr %i.s, align 8, !tbaa !828
  br label %_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb0ELb1ELb1EEEEEcSt11char_traitsIcELb1EE4syncEv.exit

bb.e:                                             ; preds = %.peel.next.i.i
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !109 ; 4 uses
  store ptr %i.ag, ptr %i.n, align 8, !tbaa !3186
  %i.ah = sub nuw i64 %.020.i.i, %i.ac            ; 2 uses
  %i.ai = add i64 %i.ac, %i.z                     ; 2 uses
  %.not14.i.i = icmp eq ptr %i.ag, %i.r
  br i1 %.not14.i.i, label %._crit_edge.i.i, label %.peel.next.i.i, !llvm.loop !3199

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.d, %.._crit_edge_crit_edge.i.i
  %i.aj = phi i64 [ %.pre31.i.i, %.._crit_edge_crit_edge.i.i ], [ %i.y, %bb.d ], [ %i.ai, %bb.e ]
  %i.ak = phi i64 [ %.pre.i.i, %.._crit_edge_crit_edge.i.i ], [ 0, %bb.d ], [ 0, %bb.e ] ; 2 uses
  %.0.lcssa.i.i = phi i64 [ %i.i, %.._crit_edge_crit_edge.i.i ], [ %i.x, %bb.d ], [ %i.ah, %bb.e ]
  %.lcssa.i.i = phi ptr [ %i.o, %.._crit_edge_crit_edge.i.i ], [ %i.w, %bb.d ], [ %i.ag, %bb.e ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.am = load i64, ptr %i.al, align 8, !tbaa !843
  %i.an = sub i64 %i.am, %i.ak
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.an, i64 %.0.lcssa.i.i) ; 2 uses
  %i.ao = add i64 %.sroa.speculated.i.i, %i.ak    ; 2 uses
  store i64 %i.ao, ptr %.phi.trans.insert.i.i, align 8, !tbaa !3187
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.aq = add i64 %.sroa.speculated.i.i, %i.aj
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !828
  %i.ar = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !844
  %i.at = icmp eq i64 %i.ao, %i.as
  br i1 %i.at, label %bb.f, label %_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb0ELb1ELb1EEEEEcSt11char_traitsIcELb1EE4syncEv.exit

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.au = load ptr, ptr %.lcssa.i.i, align 8, !tbaa !109
  store ptr %i.au, ptr %i.n, align 8, !tbaa !3186
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.phi.trans.insert.i.i, i8 0, i64 16, i1 false)
  br label %_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb0ELb1ELb1EEEEEcSt11char_traitsIcELb1EE4syncEv.exit

_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb0ELb1ELb1EEEEEcSt11char_traitsIcELb1EE4syncEv.exit: ; preds = %bb.a, %bb.b, %.thread.i.i, %._crit_edge.i.i, %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %0, align 8, !tbaa !59
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.av) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb0ELb1ELb1EEEEEcSt11char_traitsIcELb1EED0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb0ELb1ELb1EEEEEcSt11char_traitsIcELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb0ELb1ELb1EEEEEcSt11char_traitsIcELb1EE4syncEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3197, !nonnull !43, !align !55 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !135
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !136
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !109  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  %i.l = icmp eq ptr %i.k, %i.j
  %i.m = or i1 %.not.i.i.i, %i.l
  br i1 %i.m, label %_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb0ELb1ELb1EEEE6commitEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !3186 ; 5 uses
  %i.p = icmp eq ptr %i.o, %i.j
  br i1 %i.p, label %_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb0ELb1ELb1EEEE6commitEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !110  ; 3 uses
  %.not1419.i = icmp eq ptr %i.o, %i.r
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 5 uses
  br i1 %.not1419.i, label %.._crit_edge_crit_edge.i, label %.lr.ph.i

.._crit_edge_crit_edge.i:                         ; preds = %bb.c
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !3187
  %.phi.trans.insert30.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.pre31.i = load i64, ptr %.phi.trans.insert30.i, align 8, !tbaa !828
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZTv0_n24_N5boost5beast6detail14ostream_helperINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb0ELb1ELb1ELb1EEEEEcSt11char_traitsIcELb1EED0Ev:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5boost5beast6detail14ostream_helperINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb0ELb1ELb1ELb1EEEEEcSt11char_traitsIcELb1EEE, i64 64), ptr %i.e, align 8, !tbaa !59
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  tail call void @_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb0ELb1ELb1ELb1EEEEEcSt11char_traitsIcELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.f) #29, !inline_history !3303
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.e) #29, !inline_history !3303
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 noundef 344) #32, !inline_history !3304
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb0ELb1ELb1ELb1EEEE7prepareEm(ptr dead_on_unwind noalias writable sret(%"class.boost::beast::basic_multi_buffer<boost::beast::test::test_allocator<char, true, false, true, true, true>>::subrange") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::length_error", align 8 ; 5 uses
  %4 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %5 = alloca %"class.boost::intrusive::list_impl.89", align 8 ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !982  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !958  ; 2 uses
  %i.e = icmp ugt i64 %i.b, %i.d
  %i.f = sub nuw i64 %i.d, %i.b
  %i.g = icmp ugt i64 %2, %i.f
  %or.cond = select i1 %i.e, i1 true, i1 %i.g
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.18)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store ptr @.str.16, ptr %4, align 8, !tbaa !1460
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.19, ptr %i.h, align 8, !tbaa !1462
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 857, ptr %i.i, align 8, !tbaa !1463
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 43, ptr %i.j, align 4, !tbaa !1464
  invoke void @_ZN5boost15throw_exceptionISt12length_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #30
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %5, ptr %5, align 8, !tbaa !109
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %5, ptr %i.l, align 8, !tbaa !110
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !3305 ; 4 uses
  %.not = icmp eq ptr %i.o, %i.n
  br i1 %.not, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !998  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !3306 ; 2 uses
  %i.t = sub i64 %i.q, %i.s                       ; 3 uses
  %i.u = add i64 %i.t, %i.b                       ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !110  ; 3 uses
  %.not84 = icmp eq ptr %i.o, %i.w
  br i1 %.not84, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferINS3_4test14test_allocatorIcLb1ELb0ELb1ELb1ELb1EEEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 %i.q, ptr %i.x, align 8, !tbaa !997
  %i.y = load ptr, ptr %i.o, align 8, !tbaa !109  ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.y, %i.n
  %.not23.i.i.i = icmp eq ptr %5, %i.y
  %or.cond.i.i.i = or i1 %.not23.i.i.i, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferINS3_4test14test_allocatorIcLb1ELb0ELb1ELb1ELb1EEEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !110 ; 2 uses
  store ptr %5, ptr %i.w, align 8, !tbaa !109
  store ptr %i.w, ptr %i.l, align 8, !tbaa !110
  store ptr %i.n, ptr %i.aa, align 8, !tbaa !109
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !110
  store ptr %i.y, ptr %5, align 8, !tbaa !109
  store ptr %5, ptr %i.z, align 8, !tbaa !110
  br label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferINS3_4test14test_allocatorIcLb1ELb0ELb1ELb1ELb1EEEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_.exit

_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferINS3_4test14test_allocatorIcLb1ELb0ELb1ELb1ELb1EEEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.ab = phi ptr [ %5, %bb.f ], [ %5, %bb.g ], [ %i.y, %bb.h ] ; 2 uses
  %i.ac = icmp ugt i64 %2, %i.t
  br i1 %i.ac, label %bb.i, label %.thread

bb.i:                                             ; preds = %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferINS3_4test14test_allocatorIcLb1ELb0ELb1ELb1ELb1EEEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 %i.q, ptr %i.ad, align 8, !tbaa !997
  %i.ae = sub nuw i64 %2, %i.t
  br label %bb.j

.thread:                                          ; preds = %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferINS3_4test14test_allocatorIcLb1ELb0ELb1ELb1ELb1EEEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_.exit
  %i.af = add i64 %i.s, %2
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !997
  br label %.critedge

bb.j:                                             ; preds = %bb.i, %bb.e
  %i.ah = phi ptr [ %5, %bb.e ], [ %i.ab, %bb.i ]
  %.0 = phi i64 [ %2, %bb.e ], [ %i.ae, %bb.i ]   ; 2 uses
  %.022 = phi i64 [ %i.b, %bb.e ], [ %i.u, %bb.i ] ; 2 uses
  %.not3192 = icmp eq i64 %.0, 0
  br i1 %.not3192, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.m
  %.12394 = phi i64 [ %.022, %.lr.ph ], [ %i.au, %bb.m ] ; 2 uses
  %.193 = phi i64 [ %.0, %.lr.ph ], [ %i.aw, %bb.m ] ; 4 uses
  %i.ak = load ptr, ptr %5, align 8, !tbaa !109   ; 9 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  %i.al = icmp eq ptr %i.ak, %5
  %i.am = or i1 %.not.i.i, %i.al
  br i1 %i.am, label %.critedge.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !109, !noalias !3307 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !110, !noalias !3307 ; 2 uses
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !109, !noalias !3307
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !110, !noalias !3307
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !110 ; 2 uses
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !110
  store ptr %i.n, ptr %i.ak, align 8, !tbaa !109
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !110
  store ptr %i.ak, ptr %i.ar, align 8, !tbaa !109
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !998 ; 4 uses
  %i.au = add i64 %i.at, %.12394                  ; 2 uses
  %i.av = icmp ugt i64 %.193, %i.at
  br i1 %i.av, label %bb.m, label %.thread117

.thread117:                                       ; preds = %bb.l
  store i64 %.193, ptr %i.aj, align 8, !tbaa !997
  br label %.critedge.loopexit

bb.m:                                             ; preds = %bb.l
  store i64 %i.at, ptr %i.aj, align 8, !tbaa !997
  %i.aw = sub nuw i64 %.193, %i.at                ; 2 uses
  %.not31 = icmp eq i64 %i.aw, 0
  br i1 %.not31, label %.critedge.loopexit, label %bb.k, !llvm.loop !3312

.critedge.loopexit:                               ; preds = %bb.m, %.thread117
  %.pre = load ptr, ptr %5, align 8, !tbaa !109
  br label %.critedge

.critedge:                                        ; preds = %.thread, %.critedge.loopexit, %bb.j
  %i.ax = phi ptr [ %i.ah, %bb.j ], [ %.pre, %.critedge.loopexit ], [ %i.ab, %.thread ] ; 3 uses
  %.123.lcssa = phi i64 [ %.022, %bb.j ], [ %i.au, %.critedge.loopexit ], [ %i.u, %.thread ]
  %.not.i.i41 = icmp eq ptr %i.ax, null
  %i.ay = icmp eq ptr %i.ax, %5
  %i.az = or i1 %.not.i.i41, %i.ay
  br i1 %i.az, label %bb.t, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.k, %.critedge
  %.191 = phi i64 [ 0, %.critedge ], [ %.193, %bb.k ] ; 2 uses
  %.12389 = phi i64 [ %.123.lcssa, %.critedge ], [ %.12394, %bb.k ]
  %.not3187 = phi i1 [ true, %.critedge ], [ false, %bb.k ]
  %i.ba = phi ptr [ %i.ax, %.critedge ], [ %i.ak, %bb.k ]
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.critedge.thread
  %.sroa.04.0.i = phi ptr [ %i.ba, %.critedge.thread ], [ %i.bb, %bb.o ] ; 3 uses
  %.not.i = icmp eq ptr %.sroa.04.0.i, %5
  br i1 %.not.i, label %_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb0ELb1ELb1ELb1EEEE7destroyERNS_9intrusive9list_implINS6_8bhtraitsINS5_7elementENS6_16list_node_traitsIPvEELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb0EvEE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %.sroa.04.0.i, align 8, !tbaa !109, !noalias !3313
  invoke void @_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb0ELb1ELb1ELb1EEEE7destroyERNS5_7elementE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.0.i)
          to label %bb.n unwind label %bb.p, !llvm.loop !2801

bb.p:                                             ; preds = %bb.o
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #31
  unreachable

_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb0ELb1ELb1ELb1EEEE7destroyERNS_9intrusive9list_implINS6_8bhtraitsINS5_7elementENS6_16list_node_traitsIPvEELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb0EvEE.exit: ; preds = %bb.n
  %.pre102 = load i64, ptr %i.a, align 8, !tbaa !982 ; 3 uses
  br i1 %.not3187, label %bb.t, label %bb.q

bb.q:                                             ; preds = %_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb0ELb1ELb1ELb1EEEE7destroyERNS_9intrusive9list_implINS6_8bhtraitsINS5_7elementENS6_16list_node_traitsIPvEELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb0EvEE.exit
  %i.be = shl i64 %.pre102, 1
  %i.bf = load i64, ptr %i.c, align 8, !tbaa !958
  %i.bg = sub i64 %i.bf, %.12389                  ; 2 uses
  %.sroa.speculated47 = call i64 @llvm.umax.i64(i64 %i.be, i64 %.191)
  %i.bh = call i64 @llvm.umax.i64(i64 %.sroa.speculated47, i64 512)
  %i.bi = call i64 @llvm.umin.i64(i64 %i.bh, i64 %i.bg)
  %.inv85 = icmp slt i64 %.pre102, 0
  %.sroa.speculated = select i1 %.inv85, i64 %i.bg, i64 %i.bi
  %i.bj = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb0ELb1ELb1ELb1EEEE5allocEm(ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %.sroa.speculated) ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !110 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !110
  store ptr %i.n, ptr %i.bj, align 8, !tbaa !109
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !110
  store ptr %i.bj, ptr %i.bl, align 8, !tbaa !109
  %i.bn = load ptr, ptr %i.m, align 8, !tbaa !3305
  %i.bo = icmp eq ptr %i.bn, %i.n
  br i1 %i.bo, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store ptr %i.bj, ptr %i.m, align 8, !tbaa !3305
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 %.191, ptr %i.bp, align 8, !tbaa !997
  %.pre101 = load i64, ptr %i.a, align 8, !tbaa !982
  br label %bb.t

bb.t:                                             ; preds = %_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb0ELb1ELb1ELb1EEEE7destroyERNS_9intrusive9list_implINS6_8bhtraitsINS5_7elementENS6_16list_node_traitsIPvEELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb0EvEE.exit, %bb.s, %.critedge
  %i.bq = phi i64 [ %.pre102, %_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb0ELb1ELb1ELb1EEEE7destroyERNS_9intrusive9list_implINS6_8bhtraitsINS5_7elementENS6_16list_node_traitsIPvEELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb0EvEE.exit ], [ %.pre101, %bb.s ], [ %i.b, %.critedge ]
  call void @_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb0ELb1ELb1ELb1EEEE8subrangeILb1EEC2ERKS5_mm(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %i.bq, i64 noundef %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb0ELb1ELb1ELb1EEEEEcSt11char_traitsIcELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3316, !nonnull !43, !align !55 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !135
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !136
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !109  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  %i.l = icmp eq ptr %i.k, %i.j
  %i.m = or i1 %.not.i.i.i.i, %i.l
  br i1 %i.m, label %_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb0ELb1ELb1ELb1EEEEEcSt11char_traitsIcELb1EE4syncEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !3305 ; 5 uses
  %i.p = icmp eq ptr %i.o, %i.j
  br i1 %i.p, label %_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb0ELb1ELb1ELb1EEEEEcSt11char_traitsIcELb1EE4syncEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !110  ; 3 uses
  %.not1419.i.i = icmp eq ptr %i.o, %i.r
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 5 uses
  br i1 %.not1419.i.i, label %.._crit_edge_crit_edge.i.i, label %.lr.ph.i.i

.._crit_edge_crit_edge.i.i:                       ; preds = %bb.c
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !3306
  %.phi.trans.insert30.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.pre31.i.i = load i64, ptr %.phi.trans.insert30.i.i, align 8, !tbaa !982
  br label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %.promoted22.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !3306 ; 2 uses
  %.promoted23.i.i = load i64, ptr %i.s, align 8  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !998
  %i.v = sub i64 %i.u, %.promoted22.i.i           ; 3 uses
  %.not.peel.i.i = icmp ult i64 %i.i, %i.v
  br i1 %.not.peel.i.i, label %.thread.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !109  ; 4 uses
  store ptr %i.w, ptr %i.n, align 8, !tbaa !3305
  %i.x = sub nuw i64 %i.i, %i.v                   ; 2 uses
  %i.y = add i64 %i.v, %.promoted23.i.i           ; 2 uses
  %.not14.peel.i.i = icmp eq ptr %i.w, %i.r
  br i1 %.not14.peel.i.i, label %._crit_edge.i.i, label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %bb.d, %bb.e
  %i.z = phi i64 [ %i.ai, %bb.e ], [ %i.y, %bb.d ] ; 2 uses
  %.020.i.i = phi i64 [ %i.ah, %bb.e ], [ %i.x, %bb.d ] ; 3 uses
  %i.aa = phi ptr [ %i.ag, %bb.e ], [ %i.w, %bb.d ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !998 ; 3 uses
  %.not.i.i = icmp ult i64 %.020.i.i, %i.ac
  br i1 %.not.i.i, label %.thread.i.i, label %bb.e

.thread.i.i:                                      ; preds = %.peel.next.i.i, %.lr.ph.i.i
  %i.ad = phi i64 [ %.promoted23.i.i, %.lr.ph.i.i ], [ %i.z, %.peel.next.i.i ]
  %.lcssa25.i.i = phi i64 [ %.promoted22.i.i, %.lr.ph.i.i ], [ 0, %.peel.next.i.i ]
  %.020.lcssa.i.i = phi i64 [ %i.i, %.lr.ph.i.i ], [ %.020.i.i, %.peel.next.i.i ] ; 2 uses
  %i.ae = add i64 %.020.lcssa.i.i, %.lcssa25.i.i
  store i64 %i.ae, ptr %.phi.trans.insert.i.i, align 8, !tbaa !3306
  %i.af = add i64 %.020.lcssa.i.i, %i.ad
  store i64 %i.af, ptr %i.s, align 8, !tbaa !982
  br label %_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb0ELb1ELb1ELb1EEEEEcSt11char_traitsIcELb1EE4syncEv.exit

bb.e:                                             ; preds = %.peel.next.i.i
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !109 ; 4 uses
  store ptr %i.ag, ptr %i.n, align 8, !tbaa !3305
  %i.ah = sub nuw i64 %.020.i.i, %i.ac            ; 2 uses
  %i.ai = add i64 %i.ac, %i.z                     ; 2 uses
  %.not14.i.i = icmp eq ptr %i.ag, %i.r
  br i1 %.not14.i.i, label %._crit_edge.i.i, label %.peel.next.i.i, !llvm.loop !3318

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.d, %.._crit_edge_crit_edge.i.i
  %i.aj = phi i64 [ %.pre31.i.i, %.._crit_edge_crit_edge.i.i ], [ %i.y, %bb.d ], [ %i.ai, %bb.e ]
  %i.ak = phi i64 [ %.pre.i.i, %.._crit_edge_crit_edge.i.i ], [ 0, %bb.d ], [ 0, %bb.e ] ; 2 uses
  %.0.lcssa.i.i = phi i64 [ %i.i, %.._crit_edge_crit_edge.i.i ], [ %i.x, %bb.d ], [ %i.ah, %bb.e ]
  %.lcssa.i.i = phi ptr [ %i.o, %.._crit_edge_crit_edge.i.i ], [ %i.w, %bb.d ], [ %i.ag, %bb.e ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.am = load i64, ptr %i.al, align 8, !tbaa !997
  %i.an = sub i64 %i.am, %i.ak
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.an, i64 %.0.lcssa.i.i) ; 2 uses
  %i.ao = add i64 %.sroa.speculated.i.i, %i.ak    ; 2 uses
  store i64 %i.ao, ptr %.phi.trans.insert.i.i, align 8, !tbaa !3306
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.aq = add i64 %.sroa.speculated.i.i, %i.aj
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !982
  %i.ar = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !998
  %i.at = icmp eq i64 %i.ao, %i.as
  br i1 %i.at, label %bb.f, label %_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb0ELb1ELb1ELb1EEEEEcSt11char_traitsIcELb1EE4syncEv.exit

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.au = load ptr, ptr %.lcssa.i.i, align 8, !tbaa !109
  store ptr %i.au, ptr %i.n, align 8, !tbaa !3305
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.phi.trans.insert.i.i, i8 0, i64 16, i1 false)
  br label %_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb0ELb1ELb1ELb1EEEEEcSt11char_traitsIcELb1EE4syncEv.exit

_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb0ELb1ELb1ELb1EEEEEcSt11char_traitsIcELb1EE4syncEv.exit: ; preds = %bb.a, %bb.b, %.thread.i.i, %._crit_edge.i.i, %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %0, align 8, !tbaa !59
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.av) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb0ELb1ELb1ELb1EEEEEcSt11char_traitsIcELb1EED0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb0ELb1ELb1ELb1EEEEEcSt11char_traitsIcELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb0ELb1ELb1ELb1EEEEEcSt11char_traitsIcELb1EE4syncEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3316, !nonnull !43, !align !55 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !135
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !136
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !109  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  %i.l = icmp eq ptr %i.k, %i.j
  %i.m = or i1 %.not.i.i.i, %i.l
  br i1 %i.m, label %_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb0ELb1ELb1ELb1EEEE6commitEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !3305 ; 5 uses
  %i.p = icmp eq ptr %i.o, %i.j
  br i1 %i.p, label %_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb0ELb1ELb1ELb1EEEE6commitEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !110  ; 3 uses
  %.not1419.i = icmp eq ptr %i.o, %i.r
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 5 uses
  br i1 %.not1419.i, label %.._crit_edge_crit_edge.i, label %.lr.ph.i

.._crit_edge_crit_edge.i:                         ; preds = %bb.c
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !3306
  %.phi.trans.insert30.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.pre31.i = load i64, ptr %.phi.trans.insert30.i, align 8, !tbaa !982
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
end_hunk_5
begin_hunk_6_@_ZTv0_n24_N5boost5beast6detail14ostream_helperINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb1ELb0ELb1EEEEEcSt11char_traitsIcELb1EED0Ev:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5boost5beast6detail14ostream_helperINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb1ELb0ELb1EEEEEcSt11char_traitsIcELb1EEE, i64 64), ptr %i.e, align 8, !tbaa !59
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  tail call void @_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb1ELb0ELb1EEEEEcSt11char_traitsIcELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.f) #29, !inline_history !3364
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.e) #29, !inline_history !3364
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 noundef 344) #32, !inline_history !3365
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb1ELb0ELb1EEEE7prepareEm(ptr dead_on_unwind noalias writable sret(%"class.boost::beast::basic_multi_buffer<boost::beast::test::test_allocator<char, true, true, true, false, true>>::subrange") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::length_error", align 8 ; 5 uses
  %4 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %5 = alloca %"class.boost::intrusive::list_impl.102", align 8 ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1338 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !2814 ; 2 uses
  %i.e = icmp ugt i64 %i.b, %i.d
  %i.f = sub nuw i64 %i.d, %i.b
  %i.g = icmp ugt i64 %2, %i.f
  %or.cond = select i1 %i.e, i1 true, i1 %i.g
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.18)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store ptr @.str.16, ptr %4, align 8, !tbaa !1460
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.19, ptr %i.h, align 8, !tbaa !1462
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 857, ptr %i.i, align 8, !tbaa !1463
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 43, ptr %i.j, align 4, !tbaa !1464
  invoke void @_ZN5boost15throw_exceptionISt12length_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #30
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %5, ptr %5, align 8, !tbaa !109
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %5, ptr %i.l, align 8, !tbaa !110
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !1329 ; 4 uses
  %.not = icmp eq ptr %i.o, %i.n
  br i1 %.not, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !1360 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !3366 ; 2 uses
  %i.t = sub i64 %i.q, %i.s                       ; 3 uses
  %i.u = add i64 %i.t, %i.b                       ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !110  ; 3 uses
  %.not84 = icmp eq ptr %i.o, %i.w
  br i1 %.not84, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferINS3_4test14test_allocatorIcLb1ELb1ELb1ELb0ELb1EEEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 %i.q, ptr %i.x, align 8, !tbaa !1359
  %i.y = load ptr, ptr %i.o, align 8, !tbaa !109  ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.y, %i.n
  %.not23.i.i.i = icmp eq ptr %5, %i.y
  %or.cond.i.i.i = or i1 %.not23.i.i.i, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferINS3_4test14test_allocatorIcLb1ELb1ELb1ELb0ELb1EEEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !110 ; 2 uses
  store ptr %5, ptr %i.w, align 8, !tbaa !109
  store ptr %i.w, ptr %i.l, align 8, !tbaa !110
  store ptr %i.n, ptr %i.aa, align 8, !tbaa !109
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !110
  store ptr %i.y, ptr %5, align 8, !tbaa !109
  store ptr %5, ptr %i.z, align 8, !tbaa !110
  br label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferINS3_4test14test_allocatorIcLb1ELb1ELb1ELb0ELb1EEEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_.exit

_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferINS3_4test14test_allocatorIcLb1ELb1ELb1ELb0ELb1EEEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.ab = phi ptr [ %5, %bb.f ], [ %5, %bb.g ], [ %i.y, %bb.h ] ; 2 uses
  %i.ac = icmp ugt i64 %2, %i.t
  br i1 %i.ac, label %bb.i, label %.thread

bb.i:                                             ; preds = %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferINS3_4test14test_allocatorIcLb1ELb1ELb1ELb0ELb1EEEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 %i.q, ptr %i.ad, align 8, !tbaa !1359
  %i.ae = sub nuw i64 %2, %i.t
  br label %bb.j

.thread:                                          ; preds = %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferINS3_4test14test_allocatorIcLb1ELb1ELb1ELb0ELb1EEEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISF_Lb1EEERSG_SI_SI_.exit
  %i.af = add i64 %i.s, %2
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !1359
  br label %.critedge

bb.j:                                             ; preds = %bb.i, %bb.e
  %i.ah = phi ptr [ %5, %bb.e ], [ %i.ab, %bb.i ]
  %.0 = phi i64 [ %2, %bb.e ], [ %i.ae, %bb.i ]   ; 2 uses
  %.022 = phi i64 [ %i.b, %bb.e ], [ %i.u, %bb.i ] ; 2 uses
  %.not3192 = icmp eq i64 %.0, 0
  br i1 %.not3192, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.m
  %.12394 = phi i64 [ %.022, %.lr.ph ], [ %i.au, %bb.m ] ; 2 uses
  %.193 = phi i64 [ %.0, %.lr.ph ], [ %i.aw, %bb.m ] ; 4 uses
  %i.ak = load ptr, ptr %5, align 8, !tbaa !109   ; 9 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  %i.al = icmp eq ptr %i.ak, %5
  %i.am = or i1 %.not.i.i, %i.al
  br i1 %i.am, label %.critedge.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !109, !noalias !3367 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !110, !noalias !3367 ; 2 uses
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !109, !noalias !3367
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !110, !noalias !3367
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !110 ; 2 uses
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !110
  store ptr %i.n, ptr %i.ak, align 8, !tbaa !109
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !110
  store ptr %i.ak, ptr %i.ar, align 8, !tbaa !109
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !1360 ; 4 uses
  %i.au = add i64 %i.at, %.12394                  ; 2 uses
  %i.av = icmp ugt i64 %.193, %i.at
  br i1 %i.av, label %bb.m, label %.thread117

.thread117:                                       ; preds = %bb.l
  store i64 %.193, ptr %i.aj, align 8, !tbaa !1359
  br label %.critedge.loopexit

bb.m:                                             ; preds = %bb.l
  store i64 %i.at, ptr %i.aj, align 8, !tbaa !1359
  %i.aw = sub nuw i64 %.193, %i.at                ; 2 uses
  %.not31 = icmp eq i64 %i.aw, 0
  br i1 %.not31, label %.critedge.loopexit, label %bb.k, !llvm.loop !3372

.critedge.loopexit:                               ; preds = %bb.m, %.thread117
  %.pre = load ptr, ptr %5, align 8, !tbaa !109
  br label %.critedge

.critedge:                                        ; preds = %.thread, %.critedge.loopexit, %bb.j
  %i.ax = phi ptr [ %i.ah, %bb.j ], [ %.pre, %.critedge.loopexit ], [ %i.ab, %.thread ] ; 3 uses
  %.123.lcssa = phi i64 [ %.022, %bb.j ], [ %i.au, %.critedge.loopexit ], [ %i.u, %.thread ]
  %.not.i.i41 = icmp eq ptr %i.ax, null
  %i.ay = icmp eq ptr %i.ax, %5
  %i.az = or i1 %.not.i.i41, %i.ay
  br i1 %i.az, label %bb.t, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.k, %.critedge
  %.191 = phi i64 [ 0, %.critedge ], [ %.193, %bb.k ] ; 2 uses
  %.12389 = phi i64 [ %.123.lcssa, %.critedge ], [ %.12394, %bb.k ]
  %.not3187 = phi i1 [ true, %.critedge ], [ false, %bb.k ]
  %i.ba = phi ptr [ %i.ax, %.critedge ], [ %i.ak, %bb.k ]
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.critedge.thread
  %.sroa.04.0.i = phi ptr [ %i.ba, %.critedge.thread ], [ %i.bb, %bb.o ] ; 3 uses
  %.not.i = icmp eq ptr %.sroa.04.0.i, %5
  br i1 %.not.i, label %_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb1ELb0ELb1EEEE7destroyERNS_9intrusive9list_implINS6_8bhtraitsINS5_7elementENS6_16list_node_traitsIPvEELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb0EvEE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %.sroa.04.0.i, align 8, !tbaa !109, !noalias !3373
  invoke void @_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb1ELb0ELb1EEEE7destroyERNS5_7elementE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.0.i)
          to label %bb.n unwind label %bb.p, !llvm.loop !2843

bb.p:                                             ; preds = %bb.o
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #31
  unreachable

_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb1ELb0ELb1EEEE7destroyERNS_9intrusive9list_implINS6_8bhtraitsINS5_7elementENS6_16list_node_traitsIPvEELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb0EvEE.exit: ; preds = %bb.n
  %.pre102 = load i64, ptr %i.a, align 8, !tbaa !1338 ; 3 uses
  br i1 %.not3187, label %bb.t, label %bb.q

bb.q:                                             ; preds = %_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb1ELb0ELb1EEEE7destroyERNS_9intrusive9list_implINS6_8bhtraitsINS5_7elementENS6_16list_node_traitsIPvEELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb0EvEE.exit
  %i.be = shl i64 %.pre102, 1
  %i.bf = load i64, ptr %i.c, align 8, !tbaa !2814
  %i.bg = sub i64 %i.bf, %.12389                  ; 2 uses
  %.sroa.speculated47 = call i64 @llvm.umax.i64(i64 %i.be, i64 %.191)
  %i.bh = call i64 @llvm.umax.i64(i64 %.sroa.speculated47, i64 512)
  %i.bi = call i64 @llvm.umin.i64(i64 %i.bh, i64 %i.bg)
  %.inv85 = icmp slt i64 %.pre102, 0
  %.sroa.speculated = select i1 %.inv85, i64 %i.bg, i64 %i.bi
  %i.bj = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb1ELb0ELb1EEEE5allocEm(ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %.sroa.speculated) ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !110 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !110
  store ptr %i.n, ptr %i.bj, align 8, !tbaa !109
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !110
  store ptr %i.bj, ptr %i.bl, align 8, !tbaa !109
  %i.bn = load ptr, ptr %i.m, align 8, !tbaa !1329
  %i.bo = icmp eq ptr %i.bn, %i.n
  br i1 %i.bo, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store ptr %i.bj, ptr %i.m, align 8, !tbaa !1329
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 %.191, ptr %i.bp, align 8, !tbaa !1359
  %.pre101 = load i64, ptr %i.a, align 8, !tbaa !1338
  br label %bb.t

bb.t:                                             ; preds = %_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb1ELb0ELb1EEEE7destroyERNS_9intrusive9list_implINS6_8bhtraitsINS5_7elementENS6_16list_node_traitsIPvEELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb0EvEE.exit, %bb.s, %.critedge
  %i.bq = phi i64 [ %.pre102, %_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb1ELb0ELb1EEEE7destroyERNS_9intrusive9list_implINS6_8bhtraitsINS5_7elementENS6_16list_node_traitsIPvEELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb0EvEE.exit ], [ %.pre101, %bb.s ], [ %i.b, %.critedge ]
  call void @_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb1ELb0ELb1EEEE8subrangeILb1EEC2ERKS5_mm(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %i.bq, i64 noundef %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb1ELb0ELb1EEEEEcSt11char_traitsIcELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3376, !nonnull !43, !align !55 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !135
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !136
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !109  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  %i.l = icmp eq ptr %i.k, %i.j
  %i.m = or i1 %.not.i.i.i.i, %i.l
  br i1 %i.m, label %_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb1ELb0ELb1EEEEEcSt11char_traitsIcELb1EE4syncEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1329 ; 5 uses
  %i.p = icmp eq ptr %i.o, %i.j
  br i1 %i.p, label %_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb1ELb0ELb1EEEEEcSt11char_traitsIcELb1EE4syncEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !110  ; 3 uses
  %.not1419.i.i = icmp eq ptr %i.o, %i.r
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 5 uses
  br i1 %.not1419.i.i, label %.._crit_edge_crit_edge.i.i, label %.lr.ph.i.i

.._crit_edge_crit_edge.i.i:                       ; preds = %bb.c
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !3366
  %.phi.trans.insert30.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.pre31.i.i = load i64, ptr %.phi.trans.insert30.i.i, align 8, !tbaa !1338
  br label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %.promoted22.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !3366 ; 2 uses
  %.promoted23.i.i = load i64, ptr %i.s, align 8  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !1360
  %i.v = sub i64 %i.u, %.promoted22.i.i           ; 3 uses
  %.not.peel.i.i = icmp ult i64 %i.i, %i.v
  br i1 %.not.peel.i.i, label %.thread.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !109  ; 4 uses
  store ptr %i.w, ptr %i.n, align 8, !tbaa !1329
  %i.x = sub nuw i64 %i.i, %i.v                   ; 2 uses
  %i.y = add i64 %i.v, %.promoted23.i.i           ; 2 uses
  %.not14.peel.i.i = icmp eq ptr %i.w, %i.r
  br i1 %.not14.peel.i.i, label %._crit_edge.i.i, label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %bb.d, %bb.e
  %i.z = phi i64 [ %i.ai, %bb.e ], [ %i.y, %bb.d ] ; 2 uses
  %.020.i.i = phi i64 [ %i.ah, %bb.e ], [ %i.x, %bb.d ] ; 3 uses
  %i.aa = phi ptr [ %i.ag, %bb.e ], [ %i.w, %bb.d ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !1360 ; 3 uses
  %.not.i.i = icmp ult i64 %.020.i.i, %i.ac
  br i1 %.not.i.i, label %.thread.i.i, label %bb.e

.thread.i.i:                                      ; preds = %.peel.next.i.i, %.lr.ph.i.i
  %i.ad = phi i64 [ %.promoted23.i.i, %.lr.ph.i.i ], [ %i.z, %.peel.next.i.i ]
  %.lcssa25.i.i = phi i64 [ %.promoted22.i.i, %.lr.ph.i.i ], [ 0, %.peel.next.i.i ]
  %.020.lcssa.i.i = phi i64 [ %i.i, %.lr.ph.i.i ], [ %.020.i.i, %.peel.next.i.i ] ; 2 uses
  %i.ae = add i64 %.020.lcssa.i.i, %.lcssa25.i.i
  store i64 %i.ae, ptr %.phi.trans.insert.i.i, align 8, !tbaa !3366
  %i.af = add i64 %.020.lcssa.i.i, %i.ad
  store i64 %i.af, ptr %i.s, align 8, !tbaa !1338
  br label %_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb1ELb0ELb1EEEEEcSt11char_traitsIcELb1EE4syncEv.exit

bb.e:                                             ; preds = %.peel.next.i.i
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !109 ; 4 uses
  store ptr %i.ag, ptr %i.n, align 8, !tbaa !1329
  %i.ah = sub nuw i64 %.020.i.i, %i.ac            ; 2 uses
  %i.ai = add i64 %i.ac, %i.z                     ; 2 uses
  %.not14.i.i = icmp eq ptr %i.ag, %i.r
  br i1 %.not14.i.i, label %._crit_edge.i.i, label %.peel.next.i.i, !llvm.loop !3378

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.d, %.._crit_edge_crit_edge.i.i
  %i.aj = phi i64 [ %.pre31.i.i, %.._crit_edge_crit_edge.i.i ], [ %i.y, %bb.d ], [ %i.ai, %bb.e ]
  %i.ak = phi i64 [ %.pre.i.i, %.._crit_edge_crit_edge.i.i ], [ 0, %bb.d ], [ 0, %bb.e ] ; 2 uses
  %.0.lcssa.i.i = phi i64 [ %i.i, %.._crit_edge_crit_edge.i.i ], [ %i.x, %bb.d ], [ %i.ah, %bb.e ]
  %.lcssa.i.i = phi ptr [ %i.o, %.._crit_edge_crit_edge.i.i ], [ %i.w, %bb.d ], [ %i.ag, %bb.e ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.am = load i64, ptr %i.al, align 8, !tbaa !1359
  %i.an = sub i64 %i.am, %i.ak
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.an, i64 %.0.lcssa.i.i) ; 2 uses
  %i.ao = add i64 %.sroa.speculated.i.i, %i.ak    ; 2 uses
  store i64 %i.ao, ptr %.phi.trans.insert.i.i, align 8, !tbaa !3366
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.aq = add i64 %.sroa.speculated.i.i, %i.aj
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !1338
  %i.ar = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !1360
  %i.at = icmp eq i64 %i.ao, %i.as
  br i1 %i.at, label %bb.f, label %_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb1ELb0ELb1EEEEEcSt11char_traitsIcELb1EE4syncEv.exit

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.au = load ptr, ptr %.lcssa.i.i, align 8, !tbaa !109
  store ptr %i.au, ptr %i.n, align 8, !tbaa !1329
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.phi.trans.insert.i.i, i8 0, i64 16, i1 false)
  br label %_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb1ELb0ELb1EEEEEcSt11char_traitsIcELb1EE4syncEv.exit

_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb1ELb0ELb1EEEEEcSt11char_traitsIcELb1EE4syncEv.exit: ; preds = %bb.a, %bb.b, %.thread.i.i, %._crit_edge.i.i, %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %0, align 8, !tbaa !59
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.av) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb1ELb0ELb1EEEEEcSt11char_traitsIcELb1EED0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb1ELb0ELb1EEEEEcSt11char_traitsIcELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost5beast6detail14ostream_bufferINS0_18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb1ELb0ELb1EEEEEcSt11char_traitsIcELb1EE4syncEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3376, !nonnull !43, !align !55 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !135
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !136
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !109  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  %i.l = icmp eq ptr %i.k, %i.j
  %i.m = or i1 %.not.i.i.i, %i.l
  br i1 %i.m, label %_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb1ELb0ELb1EEEE6commitEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1329 ; 5 uses
  %i.p = icmp eq ptr %i.o, %i.j
  br i1 %i.p, label %_ZN5boost5beast18basic_multi_bufferINS0_4test14test_allocatorIcLb1ELb1ELb1ELb0ELb1EEEE6commitEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !110  ; 3 uses
  %.not1419.i = icmp eq ptr %i.o, %i.r
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 5 uses
  br i1 %.not1419.i, label %.._crit_edge_crit_edge.i, label %.lr.ph.i

.._crit_edge_crit_edge.i:                         ; preds = %bb.c
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !3366
  %.phi.trans.insert30.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.pre31.i = load i64, ptr %.phi.trans.insert30.i, align 8, !tbaa !1338
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
end_hunk_6
