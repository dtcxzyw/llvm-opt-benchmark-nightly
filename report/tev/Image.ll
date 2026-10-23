Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/Image?download=true
inline.NumInlined: 33261
inline.NumDeleted: 8209
loop-unroll.NumCompletelyUnrolled: 79
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 139
begin_hunk_0_@_ZN4tlog6Logger3logIJRfRNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOSF_:bb.a
  store i64 %i.aq, ptr %9, align 8, !alias.scope !3789
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.ag, ptr %i.ar, align 8, !tbaa !126, !alias.scope !3789
  br label %bb.g

bb.f:                                             ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit
  %i.as = trunc nuw nsw i64 %i.ag to i8
  %i.at = shl nuw nsw i8 %i.as, 1
  store i8 %i.at, ptr %9, align 8, !alias.scope !3789
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 1 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %.noexc.i
  %.017.i.i.i.i = phi ptr [ %i.ao, %.noexc.i ], [ %i.au, %bb.f ] ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.017.i.i.i.i, ptr align 1 %i.ai, i64 %i.ag, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.018.i.i.i.i = phi ptr [ %i.au, %bb.f ], [ %.017.i.i.i.i, %bb.g ]
  %i.av = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 %i.ag
  store i8 0, ptr %i.av, align 1, !tbaa !126
  %i.aw = load ptr, ptr %7, align 8, !tbaa !400, !noalias !3787 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aw, %i.u
  br i1 %.not.i.i.i, label %_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef %i.aw) #44, !noalias !3787
  br label %_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit

bb.j:                                             ; preds = %bb.e, %bb.d, %.thread.i.i.i.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %i.ay = load ptr, ptr %7, align 8, !tbaa !400, !noalias !3787 ; 2 uses
  %.not.i.i7.i = icmp eq ptr %i.ay, %i.u
  br i1 %.not.i.i7.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef %i.ay) #44, !noalias !3787
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i

common.resume:                                    ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit10, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i
  %common.resume.op = phi { ptr, i32 } [ %i.ax, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i ], [ %i.cm, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit10 ]
  resume { ptr, i32 } %common.resume.op

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i: ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #44, !noalias !3787
  br label %common.resume

_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #44, !noalias !3787
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #44, !noalias !3786
  %i.az = load i8, ptr %9, align 8                ; 4 uses
  %i.ba = trunc i8 %i.az to i1                    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 1
  %i.be = select i1 %i.ba, ptr %i.bc, ptr %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = lshr i8 %i.az, 1
  %i.bi = zext nneg i8 %i.bh to i64
  %i.bj = select i1 %i.ba, i64 %i.bg, i64 %i.bi
  %i.bk = load i32, ptr %0, align 8, !tbaa !247
  %i.bl = and i32 %i.bk, %1
  %i.bm = icmp eq i32 %i.bl, %1
  br i1 %i.bm, label %_ZN4tlog6Logger3logENS_9ESeverityENSt3__117basic_string_viewIcNS2_11char_traitsIcEEEE.exit, label %bb.l

bb.l:                                             ; preds = %_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !248 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !249 ; 2 uses
  %.not12.i = icmp eq ptr %i.bo, %i.bq
  br i1 %.not12.i, label %_ZN4tlog6Logger3logENS_9ESeverityENSt3__117basic_string_viewIcNS2_11char_traitsIcEEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.m

bb.m:                                             ; preds = %.noexc, %.lr.ph.i
  %.sroa.09.013.i = phi ptr [ %i.bo, %.lr.ph.i ], [ %i.cg, %.noexc ] ; 2 uses
  %i.bv = load ptr, ptr %.sroa.09.013.i, align 8, !tbaa !252 ; 2 uses
  %i.bw = load i8, ptr %i.br, align 8             ; 2 uses
  %i.bx = trunc i8 %i.bw to i1                    ; 2 uses
  %i.by = load ptr, ptr %i.bs, align 8
  %i.bz = select i1 %i.bx, ptr %i.by, ptr %i.bt
  %i.ca = load i64, ptr %i.bu, align 8
  %i.cb = lshr i8 %i.bw, 1
  %i.cc = zext nneg i8 %i.cb to i64
  %i.cd = select i1 %i.bx, i64 %i.ca, i64 %i.cc
  %i.ce = load ptr, ptr %i.bv, align 8, !tbaa !193
  %i.cf = load ptr, ptr %i.ce, align 8
  invoke void %i.cf(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, ptr %i.bz, i64 %i.cd, i32 noundef %1, ptr %i.be, i64 %i.bj)
          to label %.noexc unwind label %bb.p, !inline_history !105

.noexc:                                           ; preds = %bb.m
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.cg, %i.bq
  br i1 %.not.i, label %_ZN4tlog6Logger3logENS_9ESeverityENSt3__117basic_string_viewIcNS2_11char_traitsIcEEEE.exit.loopexit, label %bb.m

_ZN4tlog6Logger3logENS_9ESeverityENSt3__117basic_string_viewIcNS2_11char_traitsIcEEEE.exit.loopexit: ; preds = %.noexc
  %.pre = load i8, ptr %9, align 8
  br label %_ZN4tlog6Logger3logENS_9ESeverityENSt3__117basic_string_viewIcNS2_11char_traitsIcEEEE.exit

_ZN4tlog6Logger3logENS_9ESeverityENSt3__117basic_string_viewIcNS2_11char_traitsIcEEEE.exit: ; preds = %_ZN4tlog6Logger3logENS_9ESeverityENSt3__117basic_string_viewIcNS2_11char_traitsIcEEEE.exit.loopexit, %bb.l, %_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  %i.ch = phi i8 [ %.pre, %_ZN4tlog6Logger3logENS_9ESeverityENSt3__117basic_string_viewIcNS2_11char_traitsIcEEEE.exit.loopexit ], [ %i.az, %bb.l ], [ %i.az, %_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit ]
  %i.ci = trunc i8 %i.ch to i1
  br i1 %i.ci, label %bb.n, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.n:                                             ; preds = %_ZN4tlog6Logger3logENS_9ESeverityENSt3__117basic_string_viewIcNS2_11char_traitsIcEEEE.exit
  %i.cj = load ptr, ptr %i.bb, align 8, !tbaa !126
  %i.ck = load i64, ptr %9, align 8
  %i.cl = and i64 %i.ck, -2
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cl) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %_ZN4tlog6Logger3logENS_9ESeverityENSt3__117basic_string_viewIcNS2_11char_traitsIcEEEE.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #44
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  ret void

bb.p:                                             ; preds = %bb.m
  %i.cm = landingpad { ptr, i32 }
          cleanup
  %i.cn = load i8, ptr %9, align 8
  %i.co = trunc i8 %i.cn to i1
  br i1 %i.co, label %bb.q, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit10

bb.q:                                             ; preds = %bb.p
  %i.cp = load ptr, ptr %i.bb, align 8, !tbaa !126
  %i.cq = load i64, ptr %9, align 8
  %i.cr = and i64 %i.cq, -2
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cr) #45
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit10

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit10: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #44
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__16__treeINS_12__value_typeINS_10shared_ptrIN3tev11PixelBufferEEEPNS3_7ChannelEEENS_19__map_value_compareIS5_S8_NS_4lessIS5_EELb1EEENS_9allocatorIS8_EEE7destroyEPNS_11__tree_nodeIS8_PvEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !271
  tail call void @_ZNSt3__16__treeINS_12__value_typeINS_10shared_ptrIN3tev11PixelBufferEEEPNS3_7ChannelEEENS_19__map_value_compareIS5_S8_NS_4lessIS5_EELb1EEENS_9allocatorIS8_EEE7destroyEPNS_11__tree_nodeIS8_PvEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.a) #44
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !273
  tail call void @_ZNSt3__16__treeINS_12__value_typeINS_10shared_ptrIN3tev11PixelBufferEEEPNS3_7ChannelEEENS_19__map_value_compareIS5_S8_NS_4lessIS5_EELb1EEENS_9allocatorIS8_EEE7destroyEPNS_11__tree_nodeIS8_PvEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.c) #44
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !323  ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_10shared_ptrIN3tev11PixelBufferEEEPNS5_7ChannelEEEPvEEEEE7destroyB8ne180100INS_4pairIKS7_S9_EEvvEEvRSD_PT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = atomicrmw add ptr %i.f, i64 -1 acq_rel, align 8
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.d, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_10shared_ptrIN3tev11PixelBufferEEEPNS5_7ChannelEEEPvEEEEE7destroyB8ne180100INS_4pairIKS7_S9_EEvvEEvRSD_PT_.exit

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !193
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(24) %i.e) #44, !inline_history !3790
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.e) #44
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_10shared_ptrIN3tev11PixelBufferEEEPNS5_7ChannelEEEPvEEEEE7destroyB8ne180100INS_4pairIKS7_S9_EEvvEEvRSD_PT_.exit

_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_10shared_ptrIN3tev11PixelBufferEEEPNS5_7ChannelEEEPvEEEEE7destroyB8ne180100INS_4pairIKS7_S9_EEvvEEvRSD_PT_.exit: ; preds = %bb.d, %bb.c, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 56) #45
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_10shared_ptrIN3tev11PixelBufferEEEPNS5_7ChannelEEEPvEEEEE7destroyB8ne180100INS_4pairIKS7_S9_EEvvEEvRSD_PT_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__127__tree_balance_after_insertB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_S5_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, %0                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = zext i1 %i.a to i8
  store i8 %i.c, ptr %i.b, align 8, !tbaa !3792
  br i1 %i.a, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.ad
  %.04469 = phi ptr [ %i.i, %bb.ad ], [ %1, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.04469, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !270  ; 17 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !3792, !range !174, !noundef !175
  %2 = trunc nuw i8 %i.g to i1
  br i1 %2, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !270  ; 13 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !271  ; 4 uses
  %i.k = icmp eq ptr %i.e, %i.j
  br i1 %i.k, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !273  ; 2 uses
  %.not50.a = icmp eq ptr %i.m, null
  br i1 %.not50.a, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !3792, !range !174, !noundef !175
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  store i8 1, ptr %i.f, align 8, !tbaa !3792
  %i.q = icmp eq ptr %i.i, %0
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.s = zext i1 %i.q to i8
  store i8 %i.s, ptr %i.r, align 8, !tbaa !3792
  store i8 1, ptr %i.n, align 8, !tbaa !3792
  br label %bb.ad

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !271
  %i.v = icmp eq ptr %.04469, %i.u
  br i1 %i.v, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !273  ; 8 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !271  ; 3 uses
  store ptr %i.y, ptr %i.w, align 8, !tbaa !273
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %.thread91, label %bb.g

.thread91:                                        ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  store ptr %i.i, ptr %i.z, align 8, !tbaa !270
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.e, ptr %i.aa, align 8, !tbaa !270
  %.pre76.a = load ptr, ptr %i.t, align 8, !tbaa !270 ; 4 uses
  %.pre77 = load ptr, ptr %.pre76.a, align 8, !tbaa !271
  %i.ab = icmp eq ptr %i.e, %.pre77
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 3 uses
  store ptr %.pre76.a, ptr %i.ac, align 8, !tbaa !270
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread91, %bb.g
  %i.ad = phi ptr [ %i.z, %.thread91 ], [ %i.ac, %bb.g ]
  %i.ae = phi ptr [ %i.i, %.thread91 ], [ %.pre76.a, %bb.g ]
  store ptr %i.x, ptr %i.ae, align 8, !tbaa !271
  br label %_ZNSt3__118__tree_left_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit

bb.i:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %.pre76.a, i64 8
  store ptr %i.x, ptr %i.af, align 8, !tbaa !273
  br label %_ZNSt3__118__tree_left_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit

_ZNSt3__118__tree_left_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit: ; preds = %bb.h, %bb.i
  %i.ag = phi ptr [ %i.ad, %bb.h ], [ %i.ac, %bb.i ]
  store ptr %i.e, ptr %i.x, align 8, !tbaa !271
  store ptr %i.x, ptr %i.t, align 8, !tbaa !270
  %.pre78 = load ptr, ptr %i.ag, align 8, !tbaa !270 ; 2 uses
  %.pre79 = load ptr, ptr %.pre78, align 8, !tbaa !271
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt3__118__tree_left_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit, %bb.e
  %i.ah = phi ptr [ %i.j, %bb.e ], [ %.pre79, %_ZNSt3__118__tree_left_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit ] ; 5 uses
  %i.ai = phi ptr [ %i.i, %bb.e ], [ %.pre78, %_ZNSt3__118__tree_left_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit ] ; 6 uses
  %i.aj = phi ptr [ %i.e, %bb.e ], [ %i.x, %_ZNSt3__118__tree_left_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store i8 1, ptr %i.ak, align 8, !tbaa !3792
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store i8 0, ptr %i.al, align 8, !tbaa !3792
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !273 ; 3 uses
  store ptr %i.an, ptr %i.ai, align 8, !tbaa !271
  %.not.i51 = icmp eq ptr %i.an, null
  br i1 %.not.i51, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %i.ai, ptr %i.ao, align 8, !tbaa !270
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !270 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !270
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !271
  %i.at = icmp eq ptr %i.ai, %i.as
  br i1 %i.at, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr %i.ah, ptr %i.aq, align 8, !tbaa !271
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.ah, ptr %i.au, align 8, !tbaa !273
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store ptr %i.ai, ptr %i.am, align 8, !tbaa !273
  store ptr %i.ah, ptr %i.ap, align 8, !tbaa !270
  br label %.critedge

bb.p:                                             ; preds = %bb.b
  %.not49 = icmp eq ptr %i.j, null
  br i1 %.not49, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !3792, !range !174, !noundef !175
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.r, label %.thread58

.thread58:                                        ; preds = %bb.q
  store i8 1, ptr %i.f, align 8, !tbaa !3792
  %i.ay = icmp eq ptr %i.i, %0
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.ba = zext i1 %i.ay to i8
  store i8 %i.ba, ptr %i.az, align 8, !tbaa !3792
  store i8 1, ptr %i.av, align 8, !tbaa !3792
  br label %bb.ad

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.bc = load ptr, ptr %i.e, align 8, !tbaa !271 ; 7 uses
  %i.bd = icmp eq ptr %.04469, %i.bc
  br i1 %i.bd, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !273 ; 3 uses
  store ptr %i.bf, ptr %i.e, align 8, !tbaa !271
  %.not.i52 = icmp eq ptr %i.bf, null
  br i1 %.not.i52, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store ptr %i.e, ptr %i.bg, align 8, !tbaa !270
  %.pre = load ptr, ptr %i.bb, align 8, !tbaa !270
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bh = phi ptr [ %.pre, %bb.t ], [ %i.i, %bb.s ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !270
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !271
  %i.bk = icmp eq ptr %i.e, %i.bj
  br i1 %i.bk, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store ptr %i.bc, ptr %i.bh, align 8, !tbaa !271
  br label %_ZNSt3__119__tree_right_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit53

bb.w:                                             ; preds = %bb.u
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.bc, ptr %i.bl, align 8, !tbaa !273
  br label %_ZNSt3__119__tree_right_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit53

_ZNSt3__119__tree_right_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit53: ; preds = %bb.v, %bb.w
  store ptr %i.e, ptr %i.be, align 8, !tbaa !273
  store ptr %i.bc, ptr %i.bb, align 8, !tbaa !270
  %.pre75 = load ptr, ptr %i.bi, align 8, !tbaa !270
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt3__119__tree_right_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit53, %bb.r
  %i.bm = phi ptr [ %.pre75, %_ZNSt3__119__tree_right_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit53 ], [ %i.i, %bb.r ] ; 6 uses
  %i.bn = phi ptr [ %i.bc, %_ZNSt3__119__tree_right_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit53 ], [ %i.e, %bb.r ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store i8 1, ptr %i.bo, align 8, !tbaa !3792
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store i8 0, ptr %i.bp, align 8, !tbaa !3792
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !273 ; 6 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !271 ; 3 uses
  store ptr %i.bs, ptr %i.bq, align 8, !tbaa !273
  %.not.i54 = icmp eq ptr %i.bs, null
  br i1 %.not.i54, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store ptr %i.bm, ptr %i.bt, align 8, !tbaa !270
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
end_hunk_0
begin_hunk_1_@"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNS_9ImageData27convertToDesiredPixelFormatEiE3$_0EENS_4TaskIvEES4_S4_mT0_iENKUlmmE_clEmm":.from.
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.cs = landingpad { ptr, i32 }
          catch ptr null
  %i.ct = extractvalue { ptr, i32 } %i.cs, 0
  call void @__clang_call_terminate(ptr %i.ct) #49
  unreachable

bb.q:                                             ; preds = %bb.l
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.90 unwind label %bb.t

.from.86:                                         ; preds = %bb.m
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.90

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, %_ZN3tev5Latch9countDownEv.exit.i24
  %i.cw = load ptr, ptr %i.h, align 8, !tbaa !200 ; 5 uses
  %.not.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = atomicrmw add ptr %i.cx, i64 -1 acq_rel, align 8
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %bb.s, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.s:                                             ; preds = %bb.r
  %i.da = load ptr, ptr %i.cw, align 8, !tbaa !193
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(24) %i.cw) #44, !inline_history !6
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cw) #44
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.r, %bb.s
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr97) #44
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 104) #44
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %AfterCoroSave, %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend63
  ret void

.body.from.90:                                    ; preds = %bb.q, %.from.86
  %.pn18 = phi { ptr, i32 } [ %i.cv, %.from.86 ], [ %i.cu, %bb.q ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #44
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr97) #44
  br label %.body

.body:                                            ; preds = %.body.from.90, %.body.from.88, %.body.from.
  %.merged20 = phi { ptr, i32 } [ %.pn18, %.body.from.90 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.88 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 104) #44
  resume { ptr, i32 } %.merged20

bb.t:                                             ; preds = %bb.q
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
  %i.de = extractvalue { ptr, i32 } %i.dd, 0
  call void @__clang_call_terminate(ptr %i.de) #49
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEm"(ptr dead_on_unwind writable sret(%"class.tev::Task") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i64 noundef %2) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %3 = alloca %"class.std::__1::future", align 8  ; 6 uses
  %4 = alloca %"class.std::__1::basic_string_view", align 8 ; 6 uses
  %5 = alloca %"class.std::__1::basic_string_view", align 8 ; 6 uses
  %6 = alloca %"class.std::__1::basic_string_view", align 8 ; 6 uses
  %7 = alloca %"class.std::__1::basic_string_view", align 8 ; 6 uses
  %8 = alloca %"class.std::__1::basic_string_view", align 8 ; 6 uses
  %9 = alloca %"class.std::__1::basic_string_view", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #48 ; 54 uses
  store ptr @"_ZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEm.resume", ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEm.destroy", ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 9 uses
  %.reload.addr292 = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 41 uses
  %.reload.addr300 = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 9 uses
  %.reload.addr301 = getelementptr inbounds nuw i8, ptr %i.a, i64 136 ; 11 uses
  %.reload.addr302 = getelementptr inbounds nuw i8, ptr %i.a, i64 152 ; 2 uses
  %.reload.addr304 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 8 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr304)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3872)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3873)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #46
          to label %bb.a unwind label %.body.from.288 ; 5 uses

.body.from.288:                                   ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr304) #44
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !3874
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !193, !noalias !3874
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !3874
  store i32 2, ptr %i.g, align 8, !tbaa !195, !noalias !3874
  store ptr %i.f, ptr %i.d, align 8, !tbaa !199, !alias.scope !3875
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !200, !alias.scope !3875
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3876)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44, !noalias !3876
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr304)
          to label %bb.b unwind label %bb.d, !noalias !3876

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !201, !alias.scope !3876
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %3, align 8, !tbaa !204, !noalias !3876
  store ptr %i.j, ptr %i.i, align 8, !tbaa !204, !alias.scope !3876
  store ptr null, ptr %3, align 8, !tbaa !204, !noalias !3876
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !200, !noalias !3876 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !201, !noalias !3876
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !201, !alias.scope !3876
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !3876 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #49, !noalias !3876
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #44, !noalias !3876
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44, !noalias !3876
  %i.s = load ptr, ptr %1, align 8, !tbaa !3878, !nonnull !175, !align !773 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !332
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !331  ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 4
  %.not.i = icmp ult i64 %2, %i.z
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNKSt3__16vectorINS_4pairINS_14__map_iteratorINS_15__tree_iteratorINS_12__value_typeINS_10shared_ptrIN3tev11PixelBufferEEEPNS6_7ChannelEEEPNS_11__tree_nodeISB_PvEElEEEESH_EENS_9allocatorISI_EEE20__throw_out_of_rangeB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.s) #47
          to label %.noexc67 unwind label %_ZNSt3__16vectorIPN3tev7ChannelENS_9allocatorIS3_EEED2B8ne180100Ev.exit115.from.278

.noexc67:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %2 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !259 ; 2 uses
  %i.ac = inttoptr i64 %i.ab to ptr               ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !259 ; 2 uses
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !325 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !423 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !210
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !218 ; 4 uses
  %.not137144 = icmp eq i64 %i.ab, %i.ae
  br i1 %.not137144, label %._crit_edge, label %.from..lr.ph

.from..lr.ph:                                     ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %.from._ZNSt3__114__map_iteratorINS_15__tree_iteratorINS_12__value_typeINS_10shared_ptrIN3tev11PixelBufferEEEPNS4_7ChannelEEEPNS_11__tree_nodeIS9_PvEElEEEppB8ne180100Ev.exit

._crit_edge:                                      ; preds = %_ZNSt3__114__map_iteratorINS_15__tree_iteratorINS_12__value_typeINS_10shared_ptrIN3tev11PixelBufferEEEPNS4_7ChannelEEEPNS_11__tree_nodeIS9_PvEElEEEppB8ne180100Ev.exit, %bb.g
  %.034.lcssa = phi i1 [ true, %bb.g ], [ %.135, %_ZNSt3__114__map_iteratorINS_15__tree_iteratorINS_12__value_typeINS_10shared_ptrIN3tev11PixelBufferEEEPNS4_7ChannelEEEPNS_11__tree_nodeIS9_PvEElEEEppB8ne180100Ev.exit ]
  %10 = icmp ne i32 %i.ao, %i.ak
  %or.cond.not = and i1 %10, %.034.lcssa
  br i1 %or.cond.not, label %bb.p, label %bb.n

_ZNSt3__16vectorIPN3tev7ChannelENS_9allocatorIS3_EEED2B8ne180100Ev.exit115.from.278: ; preds = %bb.f
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt3__16vectorIPN3tev7ChannelENS_9allocatorIS3_EEED2B8ne180100Ev.exit115

.from._ZNSt3__114__map_iteratorINS_15__tree_iteratorINS_12__value_typeINS_10shared_ptrIN3tev11PixelBufferEEEPNS4_7ChannelEEEPNS_11__tree_nodeIS9_PvEElEEEppB8ne180100Ev.exit: ; preds = %_ZNSt3__114__map_iteratorINS_15__tree_iteratorINS_12__value_typeINS_10shared_ptrIN3tev11PixelBufferEEEPNS4_7ChannelEEEPNS_11__tree_nodeIS9_PvEElEEEppB8ne180100Ev.exit, %.from..lr.ph
  %.034146 = phi i1 [ true, %.from..lr.ph ], [ %.135, %_ZNSt3__114__map_iteratorINS_15__tree_iteratorINS_12__value_typeINS_10shared_ptrIN3tev11PixelBufferEEEPNS4_7ChannelEEEPNS_11__tree_nodeIS9_PvEElEEEppB8ne180100Ev.exit ]
  %.sroa.0.0145 = phi ptr [ %i.ac, %.from..lr.ph ], [ %.06.i.i.i, %_ZNSt3__114__map_iteratorINS_15__tree_iteratorINS_12__value_typeINS_10shared_ptrIN3tev11PixelBufferEEEPNS4_7ChannelEEEPNS_11__tree_nodeIS9_PvEElEEEppB8ne180100Ev.exit ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0145, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !325 ; 7 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !210
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !218
  %.not = icmp eq i32 %i.be, %i.ao
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.from._ZNSt3__114__map_iteratorINS_15__tree_iteratorINS_12__value_typeINS_10shared_ptrIN3tev11PixelBufferEEEPNS4_7ChannelEEEPNS_11__tree_nodeIS9_PvEElEEEppB8ne180100Ev.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !423
  %.not58 = icmp eq i32 %i.bg, %i.ak
  br i1 %.not58, label %.from.224, label %bb.i

bb.i:                                             ; preds = %bb.h, %.from._ZNSt3__114__map_iteratorINS_15__tree_iteratorINS_12__value_typeINS_10shared_ptrIN3tev11PixelBufferEEEPNS4_7ChannelEEEPNS_11__tree_nodeIS9_PvEElEEEppB8ne180100Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  %i.bh = load i8, ptr %i.ai, align 8             ; 2 uses
  %i.bi = trunc i8 %i.bh to i1                    ; 2 uses
  %i.bj = load ptr, ptr %i.ap, align 8
  %i.bk = select i1 %i.bi, ptr %i.bj, ptr %i.aq
  %i.bl = load i64, ptr %i.ar, align 8
  %i.bm = lshr i8 %i.bh, 1
  %i.bn = zext nneg i8 %i.bm to i64
  %i.bo = select i1 %i.bi, i64 %i.bl, i64 %i.bn
  store ptr %i.bk, ptr %4, align 8
  store i64 %i.bo, ptr %i.as, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  %i.bp = invoke { ptr, i64 } @_ZN3tev8toStringENS_12EPixelFormatE(i32 noundef %i.ao)
          to label %bb.j unwind label %.from.220  ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.bq = extractvalue { ptr, i64 } %i.bp, 0
  store ptr %i.bq, ptr %5, align 8
  %i.br = extractvalue { ptr, i64 } %i.bp, 1
  store i64 %i.br, ptr %i.at, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #44
  %i.bs = invoke { ptr, i64 } @_ZN3tev8toStringENS_12EPixelFormatE(i32 noundef %i.ak)
          to label %bb.k unwind label %.from.217  ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.bt = extractvalue { ptr, i64 } %i.bs, 0
  store ptr %i.bt, ptr %6, align 8
  %i.bu = extractvalue { ptr, i64 } %i.bs, 1
  store i64 %i.bu, ptr %i.au, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #44
  %i.bv = load i8, ptr %i.ba, align 8             ; 2 uses
  %i.bw = trunc i8 %i.bv to i1                    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.ca = select i1 %i.bw, ptr %i.by, ptr %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = lshr i8 %i.bv, 1
  %i.ce = zext nneg i8 %i.cd to i64
  %i.cf = select i1 %i.bw, i64 %i.cc, i64 %i.ce
  store ptr %i.ca, ptr %7, align 8
  store i64 %i.cf, ptr %i.av, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #44
  %i.cg = load ptr, ptr %i.bb, align 8, !tbaa !210
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !218
  %i.cj = invoke { ptr, i64 } @_ZN3tev8toStringENS_12EPixelFormatE(i32 noundef %i.ci)
          to label %bb.l unwind label %.from.214  ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.ck = extractvalue { ptr, i64 } %i.cj, 0
  store ptr %i.ck, ptr %8, align 8
  %i.cl = extractvalue { ptr, i64 } %i.cj, 1
  store i64 %i.cl, ptr %i.aw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #44
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !423
  %i.co = invoke { ptr, i64 } @_ZN3tev8toStringENS_12EPixelFormatE(i32 noundef %i.cn)
          to label %bb.m unwind label %.from.212  ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.cp = extractvalue { ptr, i64 } %i.co, 0
  store ptr %i.cp, ptr %9, align 8
  %i.cq = extractvalue { ptr, i64 } %i.co, 1
  store i64 %i.cq, ptr %i.ax, align 8
  %i.cr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc73 unwind label %.from.212

.noexc73:                                         ; preds = %bb.m
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !240
  invoke void @_ZN4tlog6Logger3logIJNSt3__117basic_string_viewIcNS2_11char_traitsIcEEEES6_S6_S6_S6_S6_EEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOSB_(ptr noundef nonnull align 8 dereferenceable(56) %i.cs, i32 noundef 8, ptr nonnull @.str.216, i64 117, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %.from._ZN4tlog7warningIJNSt3__117basic_string_viewIcNS1_11char_traitsIcEEEES5_S5_S5_S5_S5_EEEvN3fmt3v127fstringIJDpT_EE1tEDpOS9_.exit unwind label %.from.212

.from._ZN4tlog7warningIJNSt3__117basic_string_viewIcNS1_11char_traitsIcEEEES5_S5_S5_S5_S5_EEEvN3fmt3v127fstringIJDpT_EE1tEDpOS9_.exit: ; preds = %.noexc73
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  br label %.from.224

.from.220:                                        ; preds = %bb.i
  %i.ct = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt3__16vectorIPN3tev7ChannelENS_9allocatorIS3_EEED2B8ne180100Ev.exit115.from.

.from.217:                                        ; preds = %bb.j
  %i.cu = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.219

.from.214:                                        ; preds = %bb.k
  %i.cv = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.216

.from.212:                                        ; preds = %bb.l, %bb.m, %.noexc73
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #44
  br label %.from.216

.from.216:                                        ; preds = %.from.214, %.from.212
  %.pn59 = phi { ptr, i32 } [ %i.cw, %.from.212 ], [ %i.cv, %.from.214 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #44
  br label %.from.219

.from.219:                                        ; preds = %.from.217, %.from.216
  %.pn59.pn = phi { ptr, i32 } [ %.pn59, %.from.216 ], [ %i.cu, %.from.217 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  br label %_ZNSt3__16vectorIPN3tev7ChannelENS_9allocatorIS3_EEED2B8ne180100Ev.exit115.from.

_ZNSt3__16vectorIPN3tev7ChannelENS_9allocatorIS3_EEED2B8ne180100Ev.exit115.from.: ; preds = %.from.220, %.from.219
  %.pn59.pn.pn = phi { ptr, i32 } [ %.pn59.pn, %.from.219 ], [ %i.ct, %.from.220 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  br label %_ZNSt3__16vectorIPN3tev7ChannelENS_9allocatorIS3_EEED2B8ne180100Ev.exit115

.from.224:                                        ; preds = %bb.h, %.from._ZN4tlog7warningIJNSt3__117basic_string_viewIcNS1_11char_traitsIcEEEES5_S5_S5_S5_S5_EEEvN3fmt3v127fstringIJDpT_EE1tEDpOS9_.exit
  %.135 = phi i1 [ false, %.from._ZN4tlog7warningIJNSt3__117basic_string_viewIcNS1_11char_traitsIcEEEES5_S5_S5_S5_S5_EEEvN3fmt3v127fstringIJDpT_EE1tEDpOS9_.exit ], [ %.034146, %bb.h ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.0145, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !273 ; 2 uses
  %.not.i.i.i75 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i75, label %.preheader.i.i.i, label %.preheader8.i.i.i

.preheader8.i.i.i:                                ; preds = %.from.224, %.preheader8.i.i.i
  %.0.i.i.i.i = phi ptr [ %i.cz, %.preheader8.i.i.i ], [ %i.cy, %.from.224 ] ; 2 uses
  %i.cz = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !271 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i, label %_ZNSt3__114__map_iteratorINS_15__tree_iteratorINS_12__value_typeINS_10shared_ptrIN3tev11PixelBufferEEEPNS4_7ChannelEEEPNS_11__tree_nodeIS9_PvEElEEEppB8ne180100Ev.exit.from..preheader8.i.i.i, label %.preheader8.i.i.i, !llvm.loop !7

_ZNSt3__114__map_iteratorINS_15__tree_iteratorINS_12__value_typeINS_10shared_ptrIN3tev11PixelBufferEEEPNS4_7ChannelEEEPNS_11__tree_nodeIS9_PvEElEEEppB8ne180100Ev.exit.from..preheader8.i.i.i: ; preds = %.preheader8.i.i.i
  br label %_ZNSt3__114__map_iteratorINS_15__tree_iteratorINS_12__value_typeINS_10shared_ptrIN3tev11PixelBufferEEEPNS4_7ChannelEEEPNS_11__tree_nodeIS9_PvEElEEEppB8ne180100Ev.exit, !llvm.loop !7

.preheader.i.i.i:                                 ; preds = %.from.224, %.preheader.i.i.i
  %.0.i.i.i = phi ptr [ %i.db, %.preheader.i.i.i ], [ %.sroa.0.0145, %.from.224 ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !270 ; 3 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !271
  %i.dd = icmp eq ptr %.0.i.i.i, %i.dc
  br i1 %i.dd, label %_ZNSt3__114__map_iteratorINS_15__tree_iteratorINS_12__value_typeINS_10shared_ptrIN3tev11PixelBufferEEEPNS4_7ChannelEEEPNS_11__tree_nodeIS9_PvEElEEEppB8ne180100Ev.exit.from..preheader.i.i.i, label %.preheader.i.i.i, !llvm.loop !8

_ZNSt3__114__map_iteratorINS_15__tree_iteratorINS_12__value_typeINS_10shared_ptrIN3tev11PixelBufferEEEPNS4_7ChannelEEEPNS_11__tree_nodeIS9_PvEElEEEppB8ne180100Ev.exit.from..preheader.i.i.i: ; preds = %.preheader.i.i.i
  br label %_ZNSt3__114__map_iteratorINS_15__tree_iteratorINS_12__value_typeINS_10shared_ptrIN3tev11PixelBufferEEEPNS4_7ChannelEEEPNS_11__tree_nodeIS9_PvEElEEEppB8ne180100Ev.exit, !llvm.loop !8

_ZNSt3__114__map_iteratorINS_15__tree_iteratorINS_12__value_typeINS_10shared_ptrIN3tev11PixelBufferEEEPNS4_7ChannelEEEPNS_11__tree_nodeIS9_PvEElEEEppB8ne180100Ev.exit: ; preds = %_ZNSt3__114__map_iteratorINS_15__tree_iteratorINS_12__value_typeINS_10shared_ptrIN3tev11PixelBufferEEEPNS4_7ChannelEEEPNS_11__tree_nodeIS9_PvEElEEEppB8ne180100Ev.exit.from..preheader.i.i.i, %_ZNSt3__114__map_iteratorINS_15__tree_iteratorINS_12__value_typeINS_10shared_ptrIN3tev11PixelBufferEEEPNS4_7ChannelEEEPNS_11__tree_nodeIS9_PvEElEEEppB8ne180100Ev.exit.from..preheader8.i.i.i
  %.06.i.i.i = phi ptr [ %i.db, %_ZNSt3__114__map_iteratorINS_15__tree_iteratorINS_12__value_typeINS_10shared_ptrIN3tev11PixelBufferEEEPNS4_7ChannelEEEPNS_11__tree_nodeIS9_PvEElEEEppB8ne180100Ev.exit.from..preheader.i.i.i ], [ %.0.i.i.i.i, %_ZNSt3__114__map_iteratorINS_15__tree_iteratorINS_12__value_typeINS_10shared_ptrIN3tev11PixelBufferEEEPNS4_7ChannelEEEPNS_11__tree_nodeIS9_PvEElEEEppB8ne180100Ev.exit.from..preheader8.i.i.i ] ; 2 uses
  %.not137 = icmp eq ptr %.06.i.i.i, %i.af
  br i1 %.not137, label %._crit_edge, label %.from._ZNSt3__114__map_iteratorINS_15__tree_iteratorINS_12__value_typeINS_10shared_ptrIN3tev11PixelBufferEEEPNS4_7ChannelEEEPNS_11__tree_nodeIS9_PvEElEEEppB8ne180100Ev.exit

bb.n:                                             ; preds = %._crit_edge
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr304)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit111 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.de = landingpad { ptr, i32 }
          catch ptr null
  %i.df = extractvalue { ptr, i32 } %i.de, 0
  call void @__clang_call_terminate(ptr %i.df) #49
  unreachable

bb.p:                                             ; preds = %._crit_edge
  %i.dg = load ptr, ptr %i.ag, align 8, !tbaa !210 ; 2 uses
  store ptr %i.dg, ptr %.reload.addr301, align 8, !tbaa !210
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 144 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !323 ; 3 uses
  store ptr %i.dj, ptr %i.dh, align 8, !tbaa !323
  %.not.i76 = icmp eq ptr %i.dj, null
  br i1 %.not.i76, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEEC2B8ne180100ERKS3_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = atomicrmw add ptr %i.dk, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEEC2B8ne180100ERKS3_.exit

_ZNSt3__110shared_ptrIN3tev11PixelBufferEEC2B8ne180100ERKS3_.exit: ; preds = %bb.p, %bb.q
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !383 ; 2 uses
  invoke void @_ZN3tev11PixelBuffer5allocEmNS_12EPixelFormatE(ptr dead_on_unwind nonnull writable sret(%"class.tev::PixelBuffer") align 8 %.reload.addr, i64 noundef %i.dn, i32 noundef %i.ak)
          to label %bb.r unwind label %_ZN3tev11PixelBufferD2Ev.exit113.from.277

bb.r:                                             ; preds = %_ZNSt3__110shared_ptrIN3tev11PixelBufferEEC2B8ne180100ERKS3_.exit
  store i64 %i.dn, ptr %.reload.addr302, align 8, !tbaa !960
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !3879, !nonnull !175, !align !825
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !286
  store i32 %i.dr, ptr %i.do, align 8, !tbaa !961
  store i32 %i.ak, ptr %.reload.addr300, align 8, !tbaa !963
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store ptr %.reload.addr, ptr %i.ds, align 8, !tbaa !384
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store ptr %.reload.addr302, ptr %i.dt, align 8, !tbaa !201
  switch i32 %i.ao, label %bb.dd [
    i32 0, label %bb.s
    i32 1, label %bb.ad
    i32 2, label %bb.ao
    i32 3, label %bb.az
    i32 4, label %bb.bk
    i32 5, label %bb.bv
    i32 6, label %bb.cg
    i32 7, label %bb.cr
  ]

_ZN3tev11PixelBufferD2Ev.exit113.from.277:        ; preds = %_ZNSt3__110shared_ptrIN3tev11PixelBufferEEC2B8ne180100ERKS3_.exit
  %i.du = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt3__16vectorIPN3tev7ChannelENS_9allocatorIS3_EEED2B8ne180100Ev.exit115.from._ZN3tev11PixelBufferD2Ev.exit113

bb.s:                                             ; preds = %bb.r
  %i.dv = load ptr, ptr %.reload.addr301, align 8, !tbaa !210 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !218
  %.not.i314 = icmp eq i32 %i.dx, 0
  br i1 %.not.i314, label %bb.v, label %bb.t, !prof !219

bb.t:                                             ; preds = %bb.s
  %i.dy = call ptr @__cxa_allocate_exception(i64 16) #44 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.dy, ptr noundef nonnull @.str.213)
          to label %.invoke unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dz = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_free_exception(ptr nonnull %i.dy) #44
  br label %.from.274

bb.v:                                             ; preds = %bb.s
  %i.ea = load ptr, ptr %i.dv, align 8, !tbaa !201
  invoke fastcc void @"_ZZZN3tev9ImageData27convertToDesiredPixelFormatEiENK3$_0clEmENKUlPKT_E_clIhEENS_4TaskIvEES4_"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task") align 8 %.reload.addr292, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr300, ptr noundef %i.ea)
          to label %bb.w unwind label %bb.da

bb.w:                                             ; preds = %bb.v
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !199
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load atomic i32, ptr %i.ed acquire, align 4
  %i.ef = icmp slt i32 %i.ee, 2
  br i1 %i.ef, label %bb.x, label %AfterCoroSave

bb.x:                                             ; preds = %bb.w
  %i.eg = load ptr, ptr %i.eb, align 8, !tbaa !199
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = atomicrmw add ptr %i.eh, i32 -1 acq_rel, align 4
  %i.ej = icmp slt i32 %i.ei, 1
  br i1 %i.ej, label %bb.y, label %.thread.sink.split

bb.y:                                             ; preds = %bb.x
  %i.ek = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i318 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i.i318:                                    ; preds = %bb.y
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !240 ; 7 uses
  %i.em = load i32, ptr %i.el, align 8, !tbaa !247
  %i.en = and i32 %i.em, 8
  %.not.i.i.i.i319 = icmp eq i32 %i.en, 0
  br i1 %.not.i.i.i.i319, label %bb.z, label %.thread.sink.split

bb.z:                                             ; preds = %.noexc.i.i318
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !248 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !249 ; 2 uses
  %.not12.i.i.i.i.i320 = icmp eq ptr %i.ep, %i.er
  br i1 %.not12.i.i.i.i.i320, label %.thread.sink.split, label %.lr.ph.i.i.i.i.i321

.lr.ph.i.i.i.i.i321:                              ; preds = %bb.z
  %i.es = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  %i.et = getelementptr inbounds nuw i8, ptr %i.el, i64 48
  %i.eu = getelementptr inbounds nuw i8, ptr %i.el, i64 33
  %i.ev = getelementptr inbounds nuw i8, ptr %i.el, i64 40
  br label %bb.aa

bb.aa:                                            ; preds = %.noexc2.i.i323, %.lr.ph.i.i.i.i.i321
  %.sroa.09.013.i.i.i.i.i322 = phi ptr [ %i.ep, %.lr.ph.i.i.i.i.i321 ], [ %i.fh, %.noexc2.i.i323 ] ; 2 uses
  %i.ew = load ptr, ptr %.sroa.09.013.i.i.i.i.i322, align 8, !tbaa !252 ; 2 uses
  %i.ex = load i8, ptr %i.es, align 8             ; 2 uses
  %i.ey = trunc i8 %i.ex to i1                    ; 2 uses
  %i.ez = load ptr, ptr %i.et, align 8
  %i.fa = select i1 %i.ey, ptr %i.ez, ptr %i.eu
  %i.fb = load i64, ptr %i.ev, align 8
  %i.fc = lshr i8 %i.ex, 1
  %i.fd = zext nneg i8 %i.fc to i64
  %i.fe = select i1 %i.ey, i64 %i.fb, i64 %i.fd
  %i.ff = load ptr, ptr %i.ew, align 8, !tbaa !193
  %i.fg = load ptr, ptr %i.ff, align 8
  invoke void %i.fg(ptr noundef nonnull align 8 dereferenceable(8) %i.ew, ptr %i.fa, i64 %i.fe, i32 noundef 8, ptr nonnull @.str.125, i64 36)
          to label %.noexc2.i.i323 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !4

.noexc2.i.i323:                                   ; preds = %bb.aa
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i322, i64 16 ; 2 uses
  %.not.i.i.i.i.i324 = icmp eq ptr %i.fh, %i.er
  br i1 %.not.i.i.i.i.i324, label %.thread.sink.split, label %bb.aa

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aa, %bb.y
  %lpad.loopexit.split-lp587 = landingpad { ptr, i32 }
          catch ptr null
  %i.fi = extractvalue { ptr, i32 } %lpad.loopexit.split-lp587, 0
  call void @__clang_call_terminate(ptr %i.fi) #49
  unreachable

AfterCoroSave:                                    ; preds = %bb.w
  %index.addr305 = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store i8 0, ptr %index.addr305, align 8
  %i.fj = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr292, ptr nonnull %i.a) #44
  br i1 %i.fj, label %AfterCoroEnd, label %bb.ab

bb.ab:                                            ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr292, align 8, !tbaa !254 ; 3 uses
  %.not.i77 = icmp eq ptr %.pr, null
  br i1 %.not.i77, label %.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fk = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8
  invoke void %i.fl(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.226, !inline_history !5

.thread.sink.split:                               ; preds = %.noexc2.i.i323, %bb.ac, %bb.z, %.noexc.i.i318, %bb.x
  store ptr null, ptr %.reload.addr292, align 8, !tbaa !254
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.ab
  %i.fm = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fm)
          to label %.sink.split unwind label %.from.226

.from.226:                                        ; preds = %bb.ac, %.thread
  %i.fn = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr292) #44
  br label %.from.274

bb.ad:                                            ; preds = %bb.r
  %i.fo = load ptr, ptr %.reload.addr301, align 8, !tbaa !210 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !218
  %.not.i325 = icmp eq i32 %i.fq, 1
  br i1 %.not.i325, label %bb.ag, label %bb.ae, !prof !219

bb.ae:                                            ; preds = %bb.ad
  %i.fr = call ptr @__cxa_allocate_exception(i64 16) #44 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.fr, ptr noundef nonnull @.str.213)
          to label %.invoke unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fs = landingpad { ptr, i32 }
          catch ptr null
end_hunk_1
