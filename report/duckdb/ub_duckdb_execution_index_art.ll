Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_execution_index_art?download=true
inline.NumInlined: 6663
inline.NumDeleted: 2963
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN6duckdb9ARTMerger10MergeNodesERNS0_9NodeEntryE:bb.a
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !58
  %i.bz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb9array_ptrINS_4NodeELb1EEixEm(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 noundef %i.by)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.ca = load ptr, ptr %1, align 8, !tbaa !555, !nonnull !68, !align !69
  %i.cb = load ptr, ptr %i.n, align 8, !tbaa !562, !nonnull !68, !align !69
  %.val.i37 = load i64, ptr %i.ca, align 8, !tbaa !157
  %i.cc = invoke fastcc ptr @_ZN6duckdbL16GetChildInternalIKNS_4NodeEEENS_12optional_ptrIS1_Lb0EEERNS_3ARTERT_hb(ptr noundef nonnull align 8 dereferenceable(433) %i.cb, i64 %.val.i37, i8 noundef zeroext %i.bw, i1 noundef zeroext false)
          to label %_ZNK6duckdb4Node15GetChildMutableERNS_3ARTEhb.exit39 unwind label %bb.y

_ZNK6duckdb4Node15GetChildMutableERNS_3ARTEhb.exit39: ; preds = %bb.u
  %i.cd = load i8, ptr %i.ai, align 8, !tbaa !564
  %i.ce = load i64, ptr %i.aj, align 8, !tbaa !565
  %i.cf = add i64 %i.ce, 1
  invoke void @_ZN6duckdb9ARTMerger7EmplaceERNS_4NodeES2_NS_10GateStatusEm(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noundef nonnull align 8 dereferenceable(8) %i.bz, i8 noundef zeroext %i.cd, i64 noundef %i.cf)
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %_ZNK6duckdb4Node15GetChildMutableERNS_3ARTEhb.exit39
  %i.cg = add nuw i64 %.051, 1                    ; 2 uses
  %i.ch = load ptr, ptr %i.ag, align 8, !tbaa !162
  %i.ci = load ptr, ptr %3, align 8, !tbaa !161   ; 2 uses
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = ashr exact i64 %i.cl, 3
  %i.cn = icmp ult i64 %i.cg, %i.cm
  br i1 %i.cn, label %bb.q, label %._crit_edge, !llvm.loop !1444

bb.w:                                             ; preds = %bb.r, %bb.q
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.x:                                             ; preds = %bb.t, %bb.s
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %bb.u, %_ZNK6duckdb4Node15GetChildMutableERNS_3ARTEhb.exit39
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.h, %bb.i, %bb.w, %bb.y, %bb.x
  %.pn30.pn.pn = phi { ptr, i32 } [ %i.cp, %bb.x ], [ %i.co, %bb.w ], [ %i.cq, %bb.y ], [ %i.av, %bb.h ], [ %i.aw, %bb.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.cr = load ptr, ptr %3, align 8, !tbaa !161   ; 2 uses
  %.not.i.i.i40 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i40, label %_ZNSt6vectorImSaImEED2Ev.exit41, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZdlPv(ptr noundef nonnull %i.cr) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit41

_ZNSt6vectorImSaImEED2Ev.exit41:                  ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %.pn30.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb9ARTMerger13MergePrefixesERNS0_9NodeEntryE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::Prefix", align 8    ; 4 uses
  %3 = alloca %"class.duckdb::Prefix", align 8    ; 4 uses
  %4 = alloca %"class.duckdb::Prefix", align 8    ; 4 uses
  %5 = alloca %"class.duckdb::Prefix", align 8    ; 4 uses
  %6 = alloca %"class.duckdb::Prefix", align 8    ; 8 uses
  %7 = alloca %"class.duckdb::Prefix", align 8    ; 7 uses
  %8 = alloca %"class.duckdb::optional_idx", align 8 ; 4 uses
  %9 = alloca %"class.duckdb::optional_idx", align 8 ; 4 uses
  %10 = alloca %"class.std::reference_wrapper", align 8 ; 5 uses
  %11 = alloca %"class.duckdb::Node", align 8     ; 4 uses
  %12 = alloca %"class.duckdb::NodeHandle", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 19 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !562, !nonnull !68, !align !69
  %i.c = load ptr, ptr %1, align 8, !tbaa !555, !nonnull !68, !align !69
  %.sroa.029.0.copyload = load i64, ptr %i.c, align 8
  call void @_ZN6duckdb6PrefixC1ERKNS_3ARTENS_4NodeEbb(ptr noundef nonnull align 8 dereferenceable(17) %6, ptr noundef nonnull align 8 dereferenceable(433) %i.b, i64 %.sroa.029.0.copyload, i1 noundef zeroext true, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !562, !nonnull !68, !align !69
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !556, !nonnull !68, !align !69
  %.sroa.028.0.copyload = load i64, ptr %i.f, align 8
  call void @_ZN6duckdb6PrefixC1ERKNS_3ARTENS_4NodeEbb(ptr noundef nonnull align 8 dereferenceable(17) %7, ptr noundef nonnull align 8 dereferenceable(433) %i.d, i64 %.sroa.028.0.copyload, i1 noundef zeroext true, i1 noundef zeroext false)
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !562, !nonnull !68, !align !69
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %i.i = load i8, ptr %i.h, align 8, !tbaa !149
  %i.j = load ptr, ptr %6, align 8, !tbaa !159    ; 2 uses
  %i.k = zext i8 %i.i to i64                      ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !77
  %i.n = load ptr, ptr %7, align 8, !tbaa !159    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k
  %i.p = load i8, ptr %i.o, align 1, !tbaa !77
  %i.q = call noundef i8 @llvm.umin.i8(i8 %i.m, i8 %i.p) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.r = zext i8 %i.q to i64                      ; 7 uses
  %.not66 = icmp eq i8 %i.q, 0
  br i1 %.not66, label %thread-pre-split.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.065 = phi i64 [ %i.w, %bb.b ], [ 0, %bb.a ]   ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 %.065
  %i.t = load i8, ptr %i.s, align 1, !tbaa !77
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 %.065
  %i.v = load i8, ptr %i.u, align 1, !tbaa !77
  %.not = icmp eq i8 %i.t, %i.v
  br i1 %.not, label %bb.b, label %thread-pre-split

bb.b:                                             ; preds = %.lr.ph
  %i.w = add nuw nsw i64 %.065, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.r
  br i1 %exitcond.not, label %thread-pre-split.thread, label %.lr.ph, !llvm.loop !1445

thread-pre-split:                                 ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %9, i64 noundef %.065)
  %i.x = load i64, ptr %9, align 8, !tbaa !58     ; 2 uses
  store i64 %i.x, ptr %8, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %i.y = icmp eq i64 %i.x, -1
  br i1 %i.y, label %thread-pre-split.thread, label %bb.c

bb.c:                                             ; preds = %thread-pre-split
  %i.z = call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %8) ; 2 uses
  %i.aa = trunc i64 %i.z to i8
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !562, !nonnull !68, !align !69
  %i.ac = load ptr, ptr %1, align 8, !tbaa !555, !nonnull !68, !align !69
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %.sroa.0.0.copyload.i = load i64, ptr %i.ac, align 8
  call void @_ZN6duckdb6PrefixC1ERKNS_3ARTENS_4NodeEbb(ptr noundef nonnull align 8 dereferenceable(17) %5, ptr noundef nonnull align 8 dereferenceable(433) %i.ab, i64 %.sroa.0.0.copyload.i, i1 noundef zeroext false, i1 noundef zeroext false)
  %i.ad = load ptr, ptr %5, align 8, !tbaa !159
  %i.ae = and i64 %i.z, 255                       ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !562, !nonnull !68, !align !69
  %i.ai = load ptr, ptr %i.e, align 8, !tbaa !556, !nonnull !68, !align !69
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %.sroa.0.0.copyload.i52 = load i64, ptr %i.ai, align 8
  call void @_ZN6duckdb6PrefixC1ERKNS_3ARTENS_4NodeEbb(ptr noundef nonnull align 8 dereferenceable(17) %4, ptr noundef nonnull align 8 dereferenceable(433) %i.ah, i64 %.sroa.0.0.copyload.i52, i1 noundef zeroext false, i1 noundef zeroext false)
  %i.aj = load ptr, ptr %4, align 8, !tbaa !159
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ae
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.am = load ptr, ptr %1, align 8, !tbaa !555, !nonnull !68, !align !69
  store ptr %i.am, ptr %10, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !562, !nonnull !68, !align !69
  %i.ao = call noundef zeroext i8 @_ZN6duckdb6Prefix5SplitERNS_3ARTERSt17reference_wrapperINS_4NodeEERS4_h(ptr noundef nonnull align 8 dereferenceable(433) %i.an, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %11, i8 noundef zeroext %i.aa)
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !562, !nonnull !68, !align !69
  %i.aq = load ptr, ptr %i.e, align 8, !tbaa !556, !nonnull !68, !align !69
  call void @_ZN6duckdb6Prefix6ReduceERNS_3ARTERNS_4NodeEm(ptr noundef nonnull align 8 dereferenceable(433) %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %i.aq, i64 noundef %i.ae)
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !562, !nonnull !68, !align !69 ; 2 uses
  %i.as = load ptr, ptr %10, align 8, !tbaa !173  ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1448)
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 400
  %i.au = call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10shared_ptrISt5arrayINS_10unique_ptrINS_18FixedSizeAllocatorESt14default_deleteIS3_ELb0EEELm9EELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.at), !noalias !1448
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !156, !noalias !1448
  %i.ax = call i64 @_ZN6duckdb18FixedSizeAllocator3NewEv(ptr noundef nonnull align 8 dereferenceable(240) %i.aw), !noalias !1448
  %i.ay = and i64 %i.ax, 72057594037927935
  %i.az = or disjoint i64 %i.ay, 216172782113783808 ; 2 uses
  store i64 %i.az, ptr %i.as, align 8, !tbaa !157, !noalias !1448
  call void @_ZN6duckdb10NodeHandleINS_8BaseNodeILh4ELNS_5NTypeE3EEEEC2ERNS_3ARTENS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(433) %i.ar, i64 %i.az)
  %i.ba = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !198, !alias.scope !1448, !nonnull !68, !align !69 ; 3 uses
  store i8 0, ptr %i.bb, align 8, !tbaa !200
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i32 0, ptr %i.bc, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, i8 0, i64 32, i1 false), !tbaa !157
  %i.be = load ptr, ptr %12, align 8, !tbaa !184
  %.not.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i, label %_ZN6duckdb10NodeHandleINS_8BaseNodeILh4ELNS_5NTypeE3EEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bf = load ptr, ptr %12, align 8, !tbaa !184
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = atomicrmw sub ptr %i.bg, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb10NodeHandleINS_8BaseNodeILh4ELNS_5NTypeE3EEEED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #33
  unreachable

_ZN6duckdb10NodeHandleINS_8BaseNodeILh4ELNS_5NTypeE3EEEED2Ev.exit: ; preds = %bb.c, %bb.e
  %.not62 = icmp eq i8 %i.ao, 0
  %i.bk = load i64, ptr %i.as, align 8, !tbaa !157
  %i.bl = and i64 %i.bk, 9223372036854775807
  %masksel = select i1 %.not62, i64 0, i64 -9223372036854775808
  %.sink.i = or disjoint i64 %i.bl, %masksel
  store i64 %.sink.i, ptr %i.as, align 8, !tbaa !157
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !562, !nonnull !68, !align !69
  %.sroa.03.0.copyload = load i64, ptr %11, align 8
  call void @_ZN6duckdb5Node411InsertChildERNS_3ARTERNS_4NodeEhS3_(ptr noundef nonnull align 8 dereferenceable(433) %i.bm, ptr noundef nonnull align 8 dereferenceable(8) %i.as, i8 noundef zeroext %i.ag, i64 %.sroa.03.0.copyload)
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !562, !nonnull !68, !align !69
  %i.bo = load ptr, ptr %i.e, align 8, !tbaa !556, !nonnull !68, !align !69
  %.sroa.02.0.copyload = load i64, ptr %i.bo, align 8
  call void @_ZN6duckdb5Node411InsertChildERNS_3ARTERNS_4NodeEhS3_(ptr noundef nonnull align 8 dereferenceable(433) %i.bn, ptr noundef nonnull align 8 dereferenceable(8) %i.as, i8 noundef zeroext %i.al, i64 %.sroa.02.0.copyload)
  %i.bp = load ptr, ptr %i.e, align 8, !tbaa !556, !nonnull !68, !align !69
  store i64 0, ptr %i.bp, align 8, !tbaa !157
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %_ZN6duckdb9ARTMerger18MergeNodeAndPrefixERNS_4NodeES2_NS_10GateStatusEmh.exit

thread-pre-split.thread:                          ; preds = %bb.b, %bb.a, %thread-pre-split
  %i.bq = load ptr, ptr %6, align 8, !tbaa !159
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.k
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !77
  %i.bt = load ptr, ptr %7, align 8, !tbaa !159
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.k
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !77  ; 2 uses
  %i.bw = icmp eq i8 %i.bs, %i.bv
  br i1 %i.bw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %thread-pre-split.thread
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !160
  %.sroa.0.0.copyload = load i64, ptr %i.by, align 8
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !562, !nonnull !68, !align !69
  %i.ca = load ptr, ptr %i.e, align 8, !tbaa !556, !nonnull !68, !align !69 ; 3 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !157
  %i.cc = lshr i64 %i.cb, 56
  %i.cd = trunc nuw i64 %i.cc to i8
  %i.ce = and i8 %i.cd, 127
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 400
  %i.cg = call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10shared_ptrISt5arrayINS_10unique_ptrINS_18FixedSizeAllocatorESt14default_deleteIS3_ELb0EEELm9EELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cf)
  %i.ch = call noundef zeroext i8 @_ZN6duckdb4Node15GetAllocatorIdxENS_5NTypeE(i8 noundef zeroext %i.ce)
  %i.ci = zext nneg i8 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !156
  %.sroa.0.0.copyload.i53 = load i64, ptr %i.ca, align 8, !tbaa !58
  call void @_ZN6duckdb18FixedSizeAllocator4FreeENS_12IndexPointerE(ptr noundef nonnull align 8 dereferenceable(240) %i.ck, i64 %.sroa.0.0.copyload.i53)
  store i64 0, ptr %i.ca, align 8, !tbaa !157
  %i.cl = load ptr, ptr %i.e, align 8, !tbaa !556, !nonnull !68, !align !69
  store i64 %.sroa.0.0.copyload, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !565
  %i.co = load ptr, ptr %6, align 8, !tbaa !159
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.k
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !77
  %i.cr = zext i8 %i.cq to i64
  %i.cs = add i64 %i.cn, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !160
  %i.cv = load ptr, ptr %i.e, align 8, !tbaa !556, !nonnull !68, !align !69
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !564
  call void @_ZN6duckdb9ARTMerger7EmplaceERNS_4NodeES2_NS_10GateStatusEm(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.cu, ptr noundef nonnull align 8 dereferenceable(8) %i.cv, i8 noundef zeroext %i.cx, i64 noundef %i.cs)
  br label %_ZN6duckdb9ARTMerger18MergeNodeAndPrefixERNS_4NodeES2_NS_10GateStatusEmh.exit

bb.h:                                             ; preds = %thread-pre-split.thread
  %i.cy = icmp eq i8 %i.bv, %i.q
  br i1 %i.cy, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.cz = load ptr, ptr %1, align 8, !tbaa !555, !nonnull !68, !align !69 ; 2 uses
  %i.da = load ptr, ptr %i.e, align 8, !tbaa !556, !nonnull !68, !align !69 ; 2 uses
  %.sroa.0.0.copyload.i54 = load i64, ptr %i.cz, align 8
  %i.db = load i64, ptr %i.da, align 8
  store i64 %i.db, ptr %i.cz, align 8
  store i64 %.sroa.0.0.copyload.i54, ptr %i.da, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !160 ; 2 uses
  %i.de = load ptr, ptr %i.e, align 8, !tbaa !556, !nonnull !68, !align !69 ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dg = load i8, ptr %i.df, align 8, !tbaa !564
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !565
  %i.dj = load ptr, ptr %i.a, align 8, !tbaa !562, !nonnull !68, !align !69
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.de, align 8
  call void @_ZN6duckdb6PrefixC1ERKNS_3ARTENS_4NodeEbb(ptr noundef nonnull align 8 dereferenceable(17) %3, ptr noundef nonnull align 8 dereferenceable(433) %i.dj, i64 %.sroa.0.0.copyload.i.i, i1 noundef zeroext false, i1 noundef zeroext false)
  %i.dk = load ptr, ptr %3, align 8, !tbaa !159
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.r
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !77  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.dn = load ptr, ptr %i.a, align 8, !tbaa !562, !nonnull !68, !align !69
  %.val.i.i = load i64, ptr %i.dd, align 8, !tbaa !157
  %i.do = call fastcc ptr @_ZN6duckdbL16GetChildInternalIKNS_4NodeEEENS_12optional_ptrIS1_Lb0EEERNS_3ARTERT_hb(ptr noundef nonnull align 8 dereferenceable(433) %i.dn, i64 %.val.i.i, i8 noundef zeroext %i.dm, i1 noundef zeroext false) ; 2 uses
  %i.dp = load ptr, ptr %i.a, align 8, !tbaa !562, !nonnull !68, !align !69
  call void @_ZN6duckdb6Prefix6ReduceERNS_3ARTERNS_4NodeEm(ptr noundef nonnull align 8 dereferenceable(433) %i.dp, ptr noundef nonnull align 8 dereferenceable(8) %i.de, i64 noundef %i.r)
  %.not.i = icmp eq ptr %i.do, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dq = add nuw nsw i64 %i.r, 1
  %i.dr = add i64 %i.dq, %i.di
  call void @_ZN6duckdb9ARTMerger7EmplaceERNS_4NodeES2_NS_10GateStatusEm(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef nonnull align 8 dereferenceable(8) %i.de, i8 noundef zeroext %i.dg, i64 noundef %i.dr)
  br label %_ZN6duckdb9ARTMerger18MergeNodeAndPrefixERNS_4NodeES2_NS_10GateStatusEmh.exit

bb.k:                                             ; preds = %bb.i
  %i.ds = load ptr, ptr %i.a, align 8, !tbaa !562, !nonnull !68, !align !69
  %.sroa.0.0.copyload.i55 = load i64, ptr %i.de, align 8
  call void @_ZN6duckdb4Node11InsertChildERNS_3ARTERS0_hS0_(ptr noundef nonnull align 8 dereferenceable(433) %i.ds, ptr noundef nonnull align 8 dereferenceable(8) %i.dd, i8 noundef zeroext %i.dm, i64 %.sroa.0.0.copyload.i55)
  store i64 0, ptr %i.de, align 8, !tbaa !157
  br label %_ZN6duckdb9ARTMerger18MergeNodeAndPrefixERNS_4NodeES2_NS_10GateStatusEmh.exit

bb.l:                                             ; preds = %bb.h
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !160 ; 2 uses
  %i.dv = load ptr, ptr %i.e, align 8, !tbaa !556, !nonnull !68, !align !69 ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dx = load i8, ptr %i.dw, align 8, !tbaa !564
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !565
  %i.ea = load ptr, ptr %i.a, align 8, !tbaa !562, !nonnull !68, !align !69
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %.sroa.0.0.copyload.i.i56 = load i64, ptr %i.dv, align 8
  call void @_ZN6duckdb6PrefixC1ERKNS_3ARTENS_4NodeEbb(ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(433) %i.ea, i64 %.sroa.0.0.copyload.i.i56, i1 noundef zeroext false, i1 noundef zeroext false)
  %i.eb = load ptr, ptr %2, align 8, !tbaa !159
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.r
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !77  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.ee = load ptr, ptr %i.a, align 8, !tbaa !562, !nonnull !68, !align !69
  %.val.i.i57 = load i64, ptr %i.du, align 8, !tbaa !157
  %i.ef = call fastcc ptr @_ZN6duckdbL16GetChildInternalIKNS_4NodeEEENS_12optional_ptrIS1_Lb0EEERNS_3ARTERT_hb(ptr noundef nonnull align 8 dereferenceable(433) %i.ee, i64 %.val.i.i57, i8 noundef zeroext %i.ed, i1 noundef zeroext false) ; 2 uses
  %i.eg = load ptr, ptr %i.a, align 8, !tbaa !562, !nonnull !68, !align !69
  call void @_ZN6duckdb6Prefix6ReduceERNS_3ARTERNS_4NodeEm(ptr noundef nonnull align 8 dereferenceable(433) %i.eg, ptr noundef nonnull align 8 dereferenceable(8) %i.dv, i64 noundef %i.r)
  %.not.i58 = icmp eq ptr %i.ef, null
  br i1 %.not.i58, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.eh = add nuw nsw i64 %i.r, 1
  %i.ei = add i64 %i.eh, %i.dz
  call void @_ZN6duckdb9ARTMerger7EmplaceERNS_4NodeES2_NS_10GateStatusEm(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ef, ptr noundef nonnull align 8 dereferenceable(8) %i.dv, i8 noundef zeroext %i.dx, i64 noundef %i.ei)
  br label %_ZN6duckdb9ARTMerger18MergeNodeAndPrefixERNS_4NodeES2_NS_10GateStatusEmh.exit

bb.n:                                             ; preds = %bb.l
  %i.ej = load ptr, ptr %i.a, align 8, !tbaa !562, !nonnull !68, !align !69
  %.sroa.0.0.copyload.i59 = load i64, ptr %i.dv, align 8
  call void @_ZN6duckdb4Node11InsertChildERNS_3ARTERS0_hS0_(ptr noundef nonnull align 8 dereferenceable(433) %i.ej, ptr noundef nonnull align 8 dereferenceable(8) %i.du, i8 noundef zeroext %i.ed, i64 %.sroa.0.0.copyload.i59)
  store i64 0, ptr %i.dv, align 8, !tbaa !157
  br label %_ZN6duckdb9ARTMerger18MergeNodeAndPrefixERNS_4NodeES2_NS_10GateStatusEmh.exit

_ZN6duckdb9ARTMerger18MergeNodeAndPrefixERNS_4NodeES2_NS_10GateStatusEmh.exit: ; preds = %bb.n, %bb.m, %bb.k, %bb.j, %bb.g, %_ZN6duckdb10NodeHandleINS_8BaseNodeILh4ELNS_5NTypeE3EEEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb9ARTMerger18MergeNodeAndPrefixERNS_4NodeES2_NS_10GateStatusEm(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef zeroext %3, i64 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.duckdb::Prefix", align 8    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !562, !nonnull !68, !align !69
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8
  call void @_ZN6duckdb6PrefixC1ERKNS_3ARTENS_4NodeEbb(ptr noundef nonnull align 8 dereferenceable(17) %5, ptr noundef nonnull align 8 dereferenceable(433) %i.b, i64 %.sroa.0.0.copyload.i.i, i1 noundef zeroext false, i1 noundef zeroext false)
  %i.c = load ptr, ptr %5, align 8, !tbaa !159
  %i.d = load i8, ptr %i.c, align 1, !tbaa !77    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !562, !nonnull !68, !align !69
  %.val.i.i = load i64, ptr %1, align 8, !tbaa !157
  %i.f = call fastcc ptr @_ZN6duckdbL16GetChildInternalIKNS_4NodeEEENS_12optional_ptrIS1_Lb0EEERNS_3ARTERT_hb(ptr noundef nonnull align 8 dereferenceable(433) %i.e, i64 %.val.i.i, i8 noundef zeroext %i.d, i1 noundef zeroext false) ; 2 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !562, !nonnull !68, !align !69
  call void @_ZN6duckdb6Prefix6ReduceERNS_3ARTERNS_4NodeEm(ptr noundef nonnull align 8 dereferenceable(433) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0)
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i64 %4, 1
  call void @_ZN6duckdb9ARTMerger7EmplaceERNS_4NodeES2_NS_10GateStatusEm(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef zeroext %3, i64 noundef %i.h)
  br label %_ZN6duckdb9ARTMerger18MergeNodeAndPrefixERNS_4NodeES2_NS_10GateStatusEmh.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !562, !nonnull !68, !align !69
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8
  call void @_ZN6duckdb4Node11InsertChildERNS_3ARTERS0_hS0_(ptr noundef nonnull align 8 dereferenceable(433) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef zeroext %i.d, i64 %.sroa.0.0.copyload.i)
  store i64 0, ptr %2, align 8, !tbaa !157
  br label %_ZN6duckdb9ARTMerger18MergeNodeAndPrefixERNS_4NodeES2_NS_10GateStatusEmh.exit

_ZN6duckdb9ARTMerger18MergeNodeAndPrefixERNS_4NodeES2_NS_10GateStatusEmh.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define { ptr, i64 } @_ZN6duckdb9ARTMerger8GetBytesERNS_4NodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::allocator.26", align 1 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = load i64, ptr %1, align 8, !tbaa !157    ; 4 uses
  %i.b = lshr i64 %i.a, 56
  %i.c = trunc nuw i64 %i.b to i8
  %i.d = and i8 %i.c, 127                         ; 2 uses
  switch i8 %i.d, label %bb.e [
    i8 8, label %bb.b
end_hunk_0
begin_hunk_1_@_ZN6duckdb11ARTOperator17InsertIntoInlinedERNS_14ArenaAllocatorERNS_3ARTERNS_4NodeERKNS_6ARTKeyES9_mNS_10GateStatusENS_15DeleteIndexInfoENS_15IndexAppendModeE:bb.a
.lr.ph:                                           ; preds = %bb.d, %.critedge
  %.sroa.038.045 = phi ptr [ %i.y, %.critedge ], [ %i.o, %bb.d ] ; 2 uses
  %i.r = load ptr, ptr %.sroa.038.045, align 8, !tbaa !461 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 392
  %i.t = call ptr @_ZN6duckdb11ARTOperator6LookupERNS_3ARTERKNS_4NodeERKNS_6ARTKeyEm(ptr noundef nonnull align 8 dereferenceable(433) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef 0) ; 2 uses
  %.not43 = icmp eq ptr %i.t, null
  br i1 %.not43, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.u = load i64, ptr %i.t, align 8, !tbaa !157
  %i.v = load i64, ptr %2, align 8, !tbaa !157
  %i.w = xor i64 %i.v, %i.u
  %i.x = and i64 %i.w, 72057594037927935
  %.not.not = icmp eq i64 %i.x, 0
  br i1 %.not.not, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  call void @_ZN6duckdb4Leaf12MergeInlinedERNS_14ArenaAllocatorERNS_3ARTERNS_4NodeES6_NS_10GateStatusEm(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(433) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %10, i8 noundef zeroext %6, i64 noundef %5)
  br label %bb.g

.critedge:                                        ; preds = %bb.e, %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.038.045, i64 8 ; 2 uses
  %.not42 = icmp eq ptr %i.y, %i.q
  br i1 %.not42, label %.critedge35, label %.lr.ph

.critedge35:                                      ; preds = %.critedge, %bb.d, %bb.c
  %i.z = icmp ne i8 %8, 1
  %. = zext i1 %i.z to i8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge35, %bb.b
  %.4 = phi i8 [ 0, %bb.b ], [ %., %.critedge35 ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  ret i8 %.4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb11ARTOperator14InsertIntoNodeERNS_3ARTERNS_4NodeERKNS_6ARTKeyES7_mNS_10GateStatusE(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %4, i8 noundef zeroext %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.duckdb::Prefix", align 8    ; 6 uses
  %.sroa.0 = alloca i64, align 8                  ; 7 uses
  %i.a = icmp eq i8 %5, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !76   ; 2 uses
  %.0.copyload.i.i.i.i = load i64, ptr %i.c, align 1
  %i.d = and i64 %.0.copyload.i.i.i.i, -8
  %i.e = xor i64 %i.d, 135
  %i.f = tail call i64 @llvm.bswap.i64(i64 %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %4
  %i.h = load i8, ptr %i.g, align 1, !tbaa !77
  tail call void @_ZN6duckdb4Node11InsertChildERNS_3ARTERS0_hS0_(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef zeroext %i.h, i64 %i.f)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  store i64 0, ptr %.sroa.0, align 8, !tbaa !157
  %i.i = add i64 %4, 1                            ; 2 uses
  %i.j = load i64, ptr %2, align 8, !tbaa !75     ; 2 uses
  %i.k = icmp ult i64 %i.i, %i.j
  br i1 %i.k, label %bb.d, label %_ZN6duckdb6Prefix3NewERNS_3ARTERSt17reference_wrapperINS_4NodeEERKNS_6ARTKeyEmm.exit

bb.d:                                             ; preds = %bb.c
  %i.l = xor i64 %4, -1
  %i.m = add i64 %i.j, %i.l                       ; 2 uses
  %.not15.i = icmp eq i64 %i.m, 0
  br i1 %.not15.i, label %_ZN6duckdb6Prefix3NewERNS_3ARTERSt17reference_wrapperINS_4NodeEERKNS_6ARTKeyEmm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb6Prefix11NewInternalERNS_3ARTERNS_4NodeEPhhm.exit.i, %.lr.ph.i
  %i.r = phi ptr [ %.sroa.0, %.lr.ph.i ], [ %i.aj, %_ZN6duckdb6Prefix11NewInternalERNS_3ARTERNS_4NodeEPhhm.exit.i ]
  %.017.i = phi i64 [ %i.m, %.lr.ph.i ], [ %i.al, %_ZN6duckdb6Prefix11NewInternalERNS_3ARTERNS_4NodeEPhhm.exit.i ] ; 2 uses
  %.01416.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ak, %_ZN6duckdb6Prefix11NewInternalERNS_3ARTERNS_4NodeEPhhm.exit.i ] ; 2 uses
  %i.s = load i8, ptr %i.n, align 8, !tbaa !149
  %i.t = zext i8 %i.s to i64
  %i.u = call noundef i64 @llvm.umin.i64(i64 %i.t, i64 %.017.i) ; 4 uses
  %i.v = trunc nuw i64 %i.u to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !76   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1752)
  %i.x = call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10shared_ptrISt5arrayINS_10unique_ptrINS_18FixedSizeAllocatorESt14default_deleteIS3_ELb0EEELm9EELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p), !noalias !1752
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !156, !noalias !1752
  %i.z = call i64 @_ZN6duckdb18FixedSizeAllocator3NewEv(ptr noundef nonnull align 8 dereferenceable(240) %i.y), !noalias !1752
  %i.aa = and i64 %i.z, 72057594037927935
  %i.ab = or disjoint i64 %i.aa, 72057594037927936 ; 2 uses
  store i64 %i.ab, ptr %i.r, align 8, !tbaa !157, !noalias !1752
  call void @_ZN6duckdb6PrefixC1ERKNS_3ARTENS_4NodeEbb(ptr noundef nonnull align 8 dereferenceable(17) %6, ptr noundef nonnull align 8 dereferenceable(433) %0, i64 %i.ab, i1 noundef zeroext true, i1 noundef zeroext false)
  %i.ac = load ptr, ptr %6, align 8, !tbaa !159, !alias.scope !1752
  %i.ad = load i8, ptr %i.n, align 8, !tbaa !149, !noalias !1752
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ae
  store i8 %i.v, ptr %i.af, align 1, !tbaa !77
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZN6duckdb6Prefix11NewInternalERNS_3ARTERNS_4NodeEPhhm.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %6, align 8, !tbaa !159, !alias.scope !1752
  %i.ah = getelementptr i8, ptr %i.w, i64 %.01416.i
  %i.ai = getelementptr i8, ptr %i.ah, i64 %i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr nonnull readonly align 1 %i.ai, i64 %i.u, i1 false)
  br label %_ZN6duckdb6Prefix11NewInternalERNS_3ARTERNS_4NodeEPhhm.exit.i

_ZN6duckdb6Prefix11NewInternalERNS_3ARTERNS_4NodeEPhhm.exit.i: ; preds = %bb.f, %bb.e
  %i.aj = load ptr, ptr %i.q, align 8, !tbaa !160, !alias.scope !1752 ; 3 uses
  store i64 0, ptr %i.aj, align 8, !tbaa !157
  %i.ak = add i64 %i.u, %.01416.i
  %i.al = sub nuw i64 %.017.i, %i.u               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %.not.i = icmp eq i64 %i.al, 0
  br i1 %.not.i, label %_ZN6duckdb6Prefix3NewERNS_3ARTERSt17reference_wrapperINS_4NodeEERKNS_6ARTKeyEmm.exit, label %bb.e, !llvm.loop !1

_ZN6duckdb6Prefix3NewERNS_3ARTERSt17reference_wrapperINS_4NodeEERKNS_6ARTKeyEmm.exit: ; preds = %_ZN6duckdb6Prefix11NewInternalERNS_3ARTERNS_4NodeEPhhm.exit.i, %bb.d, %bb.c
  %.sroa.0.0 = phi ptr [ %.sroa.0, %bb.c ], [ %.sroa.0, %bb.d ], [ %i.aj, %_ZN6duckdb6Prefix11NewInternalERNS_3ARTERNS_4NodeEPhhm.exit.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !76
  %.0.copyload.i.i.i.i20 = load i64, ptr %i.an, align 1
  %i.ao = and i64 %.0.copyload.i.i.i.i20, -8
  %i.ap = xor i64 %i.ao, 135
  %i.aq = call i64 @llvm.bswap.i64(i64 %i.ap)
  store i64 %i.aq, ptr %.sroa.0.0, align 8, !tbaa !157
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !76
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %4
  %i.au = load i8, ptr %i.at, align 1, !tbaa !77
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload = load i64, ptr %.sroa.0, align 8
  call void @_ZN6duckdb4Node11InsertChildERNS_3ARTERS0_hS0_(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef zeroext %i.au, i64 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb6Prefix3NewERNS_3ARTERSt17reference_wrapperINS_4NodeEERKNS_6ARTKeyEmm.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb11ARTOperator16InsertIntoPrefixERNS_3ARTERSt17reference_wrapperINS_4NodeEERKNS_6ARTKeyES9_mmNS_10GateStatusE(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %4, i64 noundef %5, i8 noundef zeroext %6) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.duckdb::Prefix", align 8    ; 4 uses
  %8 = alloca %"class.duckdb::Node", align 8      ; 4 uses
  %9 = alloca %"class.duckdb::NodeHandle", align 8 ; 5 uses
  %i.a = trunc i64 %4 to i8
  %i.b = load ptr, ptr %1, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %.sroa.0.0.copyload.i = load i64, ptr %i.b, align 8
  call void @_ZN6duckdb6PrefixC1ERKNS_3ARTENS_4NodeEbb(ptr noundef nonnull align 8 dereferenceable(17) %7, ptr noundef nonnull align 8 dereferenceable(433) %0, i64 %.sroa.0.0.copyload.i, i1 noundef zeroext false, i1 noundef zeroext false)
  %i.c = load ptr, ptr %7, align 8, !tbaa !159
  %i.d = and i64 %4, 255
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.g = call noundef zeroext i8 @_ZN6duckdb6Prefix5SplitERNS_3ARTERSt17reference_wrapperINS_4NodeEERS4_h(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %8, i8 noundef zeroext %i.a)
  %i.h = load ptr, ptr %1, align 8, !tbaa !173
  call void @llvm.experimental.noalias.scope.decl(metadata !1755)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.j = call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10shared_ptrISt5arrayINS_10unique_ptrINS_18FixedSizeAllocatorESt14default_deleteIS3_ELb0EEELm9EELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i), !noalias !1755
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !156, !noalias !1755
  %i.m = call i64 @_ZN6duckdb18FixedSizeAllocator3NewEv(ptr noundef nonnull align 8 dereferenceable(240) %i.l), !noalias !1755
  %i.n = and i64 %i.m, 72057594037927935
  %i.o = or disjoint i64 %i.n, 216172782113783808 ; 2 uses
  store i64 %i.o, ptr %i.h, align 8, !tbaa !157, !noalias !1755
  call void @_ZN6duckdb10NodeHandleINS_8BaseNodeILh4ELNS_5NTypeE3EEEEC2ERNS_3ARTENS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(433) %0, i64 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !198, !alias.scope !1755, !nonnull !68, !align !69 ; 3 uses
  store i8 0, ptr %i.q, align 8, !tbaa !200
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 0, ptr %i.r, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i8 0, i64 32, i1 false), !tbaa !157
  %i.t = load ptr, ptr %9, align 8, !tbaa !184
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %_ZN6duckdb10NodeHandleINS_8BaseNodeILh4ELNS_5NTypeE3EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %9, align 8, !tbaa !184
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = atomicrmw sub ptr %i.v, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb10NodeHandleINS_8BaseNodeILh4ELNS_5NTypeE3EEEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #33
  unreachable

_ZN6duckdb10NodeHandleINS_8BaseNodeILh4ELNS_5NTypeE3EEEED2Ev.exit: ; preds = %bb.a, %bb.c
  %i.z = load ptr, ptr %1, align 8, !tbaa !173    ; 3 uses
  %.not = icmp eq i8 %i.g, 0
  %10 = load i64, ptr %i.z, align 8, !tbaa !157
  %11 = and i64 %10, 9223372036854775807
  %masksel = select i1 %.not, i64 0, i64 -9223372036854775808
  %.sink.i = or disjoint i64 %11, %masksel
  store i64 %.sink.i, ptr %i.z, align 8, !tbaa !157
  %.sroa.0.0.copyload = load i64, ptr %8, align 8
  call void @_ZN6duckdb5Node411InsertChildERNS_3ARTERNS_4NodeEhS3_(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.z, i8 noundef zeroext %i.f, i64 %.sroa.0.0.copyload)
  %i.aa = load ptr, ptr %1, align 8, !tbaa !173
  call void @_ZN6duckdb11ARTOperator14InsertIntoNodeERNS_3ARTERNS_4NodeERKNS_6ARTKeyES7_mNS_10GateStatusE(ptr noundef nonnull align 8 dereferenceable(433) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %5, i8 noundef zeroext %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #17 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #30 ; 0 uses
  tail call void @_ZSt9terminatev() #33
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #18

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #19

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb18FixedSizeAllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !269  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !254 ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #29
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !6

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !270
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.g = load i64, ptr %i.f, align 8, !tbaa !271
  %i.h = shl i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.e, i8 0, i64 %i.h, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !270  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  tail call void @_ZdlPv(ptr noundef %i.i) #29
  br label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit

_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit: ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !269  ; 2 uses
  %.not5.i.i.i.i1 = icmp eq ptr %i.n, null
  br i1 %.not5.i.i.i.i1, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i5, label %.lr.ph.i.i.i.i2

.lr.ph.i.i.i.i2:                                  ; preds = %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit, %.lr.ph.i.i.i.i2
  %.06.i.i.i.i3 = phi ptr [ %i.o, %.lr.ph.i.i.i.i2 ], [ %i.n, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit ] ; 2 uses
  %i.o = load ptr, ptr %.06.i.i.i.i3, align 8, !tbaa !254 ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i3) #29
  %.not.i.i.i.i4 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i4, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i5, label %.lr.ph.i.i.i.i2, !llvm.loop !6

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i5: ; preds = %.lr.ph.i.i.i.i2, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !270
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.r = load i64, ptr %i.q, align 8, !tbaa !271
  %i.s = shl i64 %i.r, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.s, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !270  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit6, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i5
  tail call void @_ZdlPv(ptr noundef %i.t) #29
  br label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit6

_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit6: ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i5, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1757 ; 2 uses
  %.not5.i.i.i.i7 = icmp eq ptr %i.y, null
  br i1 %.not5.i.i.i.i7, label %_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_15FixedSizeBufferESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i8

.lr.ph.i.i.i.i8:                                  ; preds = %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit6, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb10unique_ptrINS4_15FixedSizeBufferESt14default_deleteIS6_ELb1EEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i
  %.06.i.i.i.i9 = phi ptr [ %i.z, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb10unique_ptrINS4_15FixedSizeBufferESt14default_deleteIS6_ELb1EEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i ], [ %i.y, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit6 ] ; 3 uses
  %i.z = load ptr, ptr %.06.i.i.i.i9, align 8, !tbaa !254 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i9, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !685 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb10unique_ptrINS4_15FixedSizeBufferESt14default_deleteIS6_ELb1EEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb15FixedSizeBufferEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15FixedSizeBufferEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i8
  tail call void @_ZN6duckdb15FixedSizeBufferD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %i.ab) #30
  tail call void @_ZdlPv(ptr noundef nonnull %i.ab) #29
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb10unique_ptrINS4_15FixedSizeBufferESt14default_deleteIS6_ELb1EEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb10unique_ptrINS4_15FixedSizeBufferESt14default_deleteIS6_ELb1EEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb15FixedSizeBufferEEclEPS1_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i8
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i9) #29
  %.not.i.i.i.i10 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i10, label %_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_15FixedSizeBufferESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i8, !llvm.loop !1756

_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_15FixedSizeBufferESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb10unique_ptrINS4_15FixedSizeBufferESt14default_deleteIS6_ELb1EEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit6
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !633
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !632
  %i.af = shl i64 %i.ae, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ac, i8 0, i64 %i.af, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  %i.ag = load ptr, ptr %i.w, align 8, !tbaa !633 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_15FixedSizeBufferESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  tail call void @_ZdlPv(ptr noundef %i.ag) #29
  br label %_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEED2Ev.exit

_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_15FixedSizeBufferESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.d
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6duckdb15FixedSizeBufferD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136)) unnamed_addr #10

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !80
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #30, !inline_history !1758
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !77
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !47   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !47
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !80
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #30, !inline_history !1758
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb5IndexD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN6duckdb5IndexE, i64 16), ptr %0, align 8, !tbaa !80
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !269  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !254 ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #29
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !6

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !270
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !271
  %i.h = shl i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.e, i8 0, i64 %i.h, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !270  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
end_hunk_1
