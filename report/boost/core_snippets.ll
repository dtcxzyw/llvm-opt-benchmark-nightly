inline.NumInlined: 5845
inline.NumDeleted: 2719
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5boost5beast4http18basic_dynamic_bodyINS0_18basic_multi_bufferISaIcEEEE6reader3putINS_4asio12const_bufferEEEmRKT_RNS_6system10error_codeE:bb.a
  ret i64 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast18basic_multi_bufferISaIcEE7prepareEm(ptr dead_on_unwind noalias writable sret(%"class.boost::beast::basic_multi_buffer<std::allocator<char>>::subrange") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %2) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::length_error", align 8 ; 5 uses
  %4 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %5 = alloca %"class.std::length_error", align 8 ; 5 uses
  %6 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %7 = alloca %"class.boost::intrusive::list_impl.20", align 8 ; 19 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !382  ; 6 uses
  %i.c = load i64, ptr %1, align 8, !tbaa !132    ; 3 uses
  %i.d = icmp ugt i64 %i.b, %i.c
  %i.e = sub nuw i64 %i.c, %i.b
  %i.f = icmp ugt i64 %2, %i.e
  %or.cond = select i1 %i.d, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.43)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  store ptr @.str.44, ptr %6, align 8, !tbaa !82
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.45, ptr %i.g, align 8, !tbaa !84
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 857, ptr %i.h, align 8, !tbaa !85
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 43, ptr %i.i, align 4, !tbaa !86
  invoke void @_ZN5boost15throw_exceptionISt12length_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) #34
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.u

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  store ptr %7, ptr %7, align 8, !tbaa !110
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %7, ptr %i.k, align 8, !tbaa !113
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !398  ; 4 uses
  %.not = icmp eq ptr %i.n, %i.m
  br i1 %.not, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !220  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = load i64, ptr %i.q, align 8, !tbaa !399  ; 2 uses
  %i.s = sub i64 %i.p, %i.r                       ; 3 uses
  %i.t = add i64 %i.s, %i.b                       ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !113  ; 3 uses
  %.not89 = icmp eq ptr %i.n, %i.v
  br i1 %.not89, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferISaIcEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISD_Lb1EEERSE_SG_SG_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.p, ptr %i.w, align 8, !tbaa !402
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !110  ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.x, %i.m
  %.not23.i.i.i = icmp eq ptr %7, %i.x
  %or.cond.i.i.i = or i1 %.not23.i.i.i, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferISaIcEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISD_Lb1EEERSE_SG_SG_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !113  ; 2 uses
  store ptr %7, ptr %i.v, align 8, !tbaa !110
  store ptr %i.v, ptr %i.k, align 8, !tbaa !113
  store ptr %i.m, ptr %i.z, align 8, !tbaa !110
  store ptr %i.z, ptr %i.u, align 8, !tbaa !113
  store ptr %i.x, ptr %7, align 8, !tbaa !110
  store ptr %7, ptr %i.y, align 8, !tbaa !113
  br label %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferISaIcEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISD_Lb1EEERSE_SG_SG_.exit

_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferISaIcEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISD_Lb1EEERSE_SG_SG_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.aa = phi ptr [ %7, %bb.f ], [ %7, %bb.g ], [ %i.x, %bb.h ] ; 2 uses
  %i.ab = icmp ugt i64 %2, %i.s
  br i1 %i.ab, label %bb.i, label %.thread

bb.i:                                             ; preds = %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferISaIcEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISD_Lb1EEERSE_SG_SG_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.p, ptr %i.ac, align 8, !tbaa !402
  %i.ad = sub nuw i64 %2, %i.s
  br label %bb.j

.thread:                                          ; preds = %_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_5beast18basic_multi_bufferISaIcEE7elementENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb0EvE6spliceENS0_13list_iteratorISD_Lb1EEERSE_SG_SG_.exit
  %i.ae = add i64 %i.r, %2
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !402
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
  %i.aj = load ptr, ptr %7, align 8, !tbaa !110   ; 9 uses
  %.not.i.i = icmp eq ptr %i.aj, null
  %i.ak = icmp eq ptr %i.aj, %7                   ; 2 uses
  %i.al = or i1 %.not.i.i, %i.ak
  br i1 %i.al, label %.critedge.thread, label %bb.l

.critedge.thread:                                 ; preds = %bb.k
  br i1 %i.ak, label %_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit.thread88, label %.lr.ph.i.preheader

bb.l:                                             ; preds = %bb.k
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !110, !noalias !403 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !113, !noalias !403 ; 2 uses
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !110, !noalias !403
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !113, !noalias !403
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !113 ; 2 uses
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !113
  store ptr %i.m, ptr %i.aj, align 8, !tbaa !110
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !113
  store ptr %i.aj, ptr %i.aq, align 8, !tbaa !110
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !220 ; 4 uses
  %i.at = add i64 %i.as, %.123101                 ; 2 uses
  %i.au = icmp ugt i64 %.1100, %i.as
  br i1 %i.au, label %bb.m, label %.thread127

.thread127:                                       ; preds = %bb.l
  store i64 %.1100, ptr %i.ai, align 8, !tbaa !402
  br label %.critedge.loopexit

bb.m:                                             ; preds = %bb.l
  store i64 %i.as, ptr %i.ai, align 8, !tbaa !402
  %i.av = sub nuw i64 %.1100, %i.as               ; 2 uses
  %.not31 = icmp eq i64 %i.av, 0
  br i1 %.not31, label %.critedge.loopexit, label %bb.k, !llvm.loop !408

.critedge.loopexit:                               ; preds = %bb.m, %.thread127
  %.pre = load ptr, ptr %7, align 8, !tbaa !110
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
  %i.az = load ptr, ptr %.sroa.04.07.i, align 8, !tbaa !110, !noalias !409 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !220
  %i.bc = add i64 %i.bb, 31
  %i.bd = and i64 %i.bc, -8
  call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.07.i, i64 noundef %i.bd) #36
  %.not.i = icmp eq ptr %i.az, %7
  br i1 %.not.i, label %_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit, label %.lr.ph.i, !llvm.loop !225

_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit: ; preds = %.lr.ph.i
  %.pre110 = load i64, ptr %i.a, align 8, !tbaa !382 ; 2 uses
  br i1 %.not3192, label %_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit.thread, label %_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit._ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit.thread88_crit_edge

_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit._ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit.thread88_crit_edge: ; preds = %_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit
  %.pre109 = load i64, ptr %1, align 8, !tbaa !132
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
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  invoke void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.46)
          to label %.noexc45 unwind label %bb.s

.noexc45:                                         ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  store ptr @.str.44, ptr %4, align 8, !tbaa !82
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.47, ptr %i.bl, align 8, !tbaa !84
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 1246, ptr %i.bm, align 8, !tbaa !85
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 70, ptr %i.bn, align 4, !tbaa !86
  invoke void @_ZN5boost15throw_exceptionISt12length_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #34
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %.noexc45
  unreachable

bb.p:                                             ; preds = %.noexc45
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %.body

_ZNSt16allocator_traitsISaIN5boost11tt_align_ns2a8EEE8allocateERS3_m.exit.i: ; preds = %_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit.thread88
  %i.bp = add nuw nsw i64 %.sroa.speculated, 31
  %i.bq = and i64 %i.bp, 2305843009213693944
  %i.br = invoke noalias noundef nonnull align 8 dereferenceable(24) ptr @_Znwm(i64 noundef %i.bq) #35
          to label %bb.q unwind label %bb.s       ; 6 uses

bb.q:                                             ; preds = %_ZNSt16allocator_traitsISaIN5boost11tt_align_ns2a8EEE8allocateERS3_m.exit.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store i64 %.sroa.speculated, ptr %i.bs, align 8, !tbaa !220
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !113 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !113
  store ptr %i.m, ptr %i.br, align 8, !tbaa !110
  store ptr %i.br, ptr %i.bt, align 8, !tbaa !113
  store ptr %i.br, ptr %i.bu, align 8, !tbaa !110
  %i.bw = load ptr, ptr %i.l, align 8, !tbaa !398
  %i.bx = icmp eq ptr %i.bw, %i.m
  br i1 %i.bx, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  store ptr %i.br, ptr %i.l, align 8, !tbaa !398
  br label %bb.t

bb.s:                                             ; preds = %_ZNSt16allocator_traitsISaIN5boost11tt_align_ns2a8EEE8allocateERS3_m.exit.i, %bb.n
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.t:                                             ; preds = %bb.r, %bb.q
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %.198, ptr %i.bz, align 8, !tbaa !402
  br label %_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit.thread

_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit.thread: ; preds = %.critedge, %_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit, %bb.t
  %i.ca = phi i64 [ %i.b, %.critedge ], [ %.pre110, %_ZN5boost5beast18basic_multi_bufferISaIcEE7destroyERNS_9intrusive9list_implINS4_8bhtraitsINS3_7elementENS4_16list_node_traitsIPvEELNS4_14link_mode_typeE0ENS4_7dft_tagELj1EEEmLb0EvEE.exit ], [ %i.bf, %bb.t ]
  call void @_ZN5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EEC2ERKS3_mm(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %i.ca, i64 noundef %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  ret void

.body:                                            ; preds = %bb.s, %bb.p
  %.pn33 = phi { ptr, i32 } [ %i.by, %bb.s ], [ %i.bo, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %bb.u

bb.u:                                             ; preds = %.body, %bb.d
  %.pn36 = phi { ptr, i32 } [ %i.j, %bb.d ], [ %.pn33, %.body ]
  resume { ptr, i32 } %.pn36
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #25

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN5boost15throw_exceptionISt12length_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #22 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 64) #32 ; 3 uses
  invoke void @_ZN5boost10wrapexceptISt12length_errorEC2ERKS1_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5boost10wrapexceptISt12length_errorEE, ptr nonnull @_ZN5boost10wrapexceptISt12length_errorED2Ev) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #32
  resume { ptr, i32 } %i.b
}

declare void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EEC2ERKS3_mm(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !412
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.d = load i64, ptr %i.c, align 8, !tbaa !414
  %i.e = add i64 %i.d, %2                         ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 10 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !110, !noalias !415 ; 5 uses
  %i.h = icmp eq ptr %i.g, %i.f
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.f, ptr %i.a, align 8, !tbaa !386
  store ptr %i.f, ptr %i.b, align 8, !tbaa !386
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %3, 0
  br i1 %i.j, label %bb.d, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !113  ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.n = load i64, ptr %i.m, align 8, !tbaa !402  ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.e, label %_ZZN5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EEC1ERKS3_mmENKUlvE0_clEv.exit

bb.d:                                             ; preds = %bb.c
  store ptr %i.f, ptr %i.a, align 8, !tbaa !386
  store ptr %i.f, ptr %i.b, align 8, !tbaa !386
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  br label %bb.u

bb.e:                                             ; preds = %.lr.ph.i.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !220
  br label %_ZZN5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EEC1ERKS3_mmENKUlvE0_clEv.exit

_ZZN5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EEC1ERKS3_mmENKUlvE0_clEv.exit: ; preds = %bb.e, %.lr.ph.i.preheader
  %.0.i = phi i64 [ %i.r, %bb.e ], [ %i.n, %.lr.ph.i.preheader ] ; 8 uses
  %i.s = icmp eq ptr %i.g, %i.l
  br i1 %i.s, label %bb.f, label %.preheader

bb.f:                                             ; preds = %_ZZN5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EEC1ERKS3_mmENKUlvE0_clEv.exit
  %.not50 = icmp ult i64 %i.e, %.0.i
  br i1 %.not50, label %_ZSt4nextIN5boost9intrusive13list_iteratorINS1_8bhtraitsINS0_5beast18basic_multi_bufferISaIcEE7elementENS1_16list_node_traitsIPvEELNS1_14link_mode_typeE0ENS1_7dft_tagELj1EEELb1EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit56, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.f, ptr %i.a, align 8, !tbaa !386
  store ptr %i.f, ptr %i.b, align 8, !tbaa !386
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  br label %bb.u

_ZSt4nextIN5boost9intrusive13list_iteratorINS1_8bhtraitsINS0_5beast18basic_multi_bufferISaIcEE7elementENS1_16list_node_traitsIPvEELNS1_14link_mode_typeE0ENS1_7dft_tagELj1EEELb1EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit56: ; preds = %bb.f
  store ptr %i.g, ptr %i.a, align 8, !tbaa !386
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.e, ptr %i.u, align 8, !tbaa !420
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !110
  store ptr %i.v, ptr %i.b, align 8, !tbaa !386
  %i.w = sub nuw i64 %.0.i, %i.e
  %i.x = icmp ugt i64 %3, %i.w
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZSt4nextIN5boost9intrusive13list_iteratorINS1_8bhtraitsINS0_5beast18basic_multi_bufferISaIcEE7elementENS1_16list_node_traitsIPvEELNS1_14link_mode_typeE0ENS1_7dft_tagELj1EEELb1EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit56
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.0.i, ptr %i.y, align 8, !tbaa !421
  br label %bb.u

bb.i:                                             ; preds = %_ZSt4nextIN5boost9intrusive13list_iteratorINS1_8bhtraitsINS0_5beast18basic_multi_bufferISaIcEE7elementENS1_16list_node_traitsIPvEELNS1_14link_mode_typeE0ENS1_7dft_tagELj1EEELb1EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit56
  %i.z = add i64 %i.e, %3
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !421
  br label %bb.u

.preheader:                                       ; preds = %_ZZN5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EEC1ERKS3_mmENKUlvE0_clEv.exit, %bb.l
  %.sroa.073.0 = phi ptr [ %i.am, %bb.l ], [ %i.g, %_ZZN5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EEC1ERKS3_mmENKUlvE0_clEv.exit ] ; 5 uses
end_hunk_0
