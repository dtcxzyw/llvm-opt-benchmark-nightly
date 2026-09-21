Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_parquet_decoders?download=true
inline.NumInlined: 1554
inline.NumDeleted: 946
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN6duckdb21DeltaByteArrayDecoder14InitializePageEv:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !129, !nonnull !29, !align !30
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 304
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !229, !nonnull !29, !align !30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 416 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 464 ; 2 uses
  call void @_ZN6duckdb21DeltaByteArrayDecoder11ReadDbpDataERNS_9AllocatorERNS_16ResizeableBufferES4_Rm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @_ZN6duckdb21DeltaByteArrayDecoder11ReadDbpDataERNS_9AllocatorERNS_16ResizeableBufferES4_Rm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.m = load i64, ptr %i.a, align 8, !tbaa !241
  %i.n = load i64, ptr %i.b, align 8, !tbaa !241
  %.not = icmp eq i64 %i.m, %i.n
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull @.str.2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #24
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.o) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit98

bb.e:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !36   ; 5 uses
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !36   ; 5 uses
  %i.s = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #21, !noalias !394 ; 13 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 8 uses
  store i32 1, ptr %i.t, align 8, !tbaa !250, !noalias !394
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 2 uses
  store i32 1, ptr %i.u, align 4, !tbaa !251, !noalias !394
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6duckdb16ResizeableBufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.s, align 8, !tbaa !237, !noalias !394
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.v, i8 0, i64 16, i1 false), !noalias !394
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  invoke void @_ZN6duckdb13AllocatedDataC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.f unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb16ResizeableBufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i, !noalias !394

common.resume:                                    ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit98, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb16ResizeableBufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.x, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb16ResizeableBufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i ], [ %.pn82, %_ZNSt6vectorIhSaIhEED2Ev.exit98 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb16ResizeableBufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i: ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.s) #22, !noalias !394
  br label %common.resume

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  store i64 0, ptr %i.y, align 8, !tbaa !234, !noalias !394
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !126, !noalias !395
  %.not.i.i.i.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = load i32, ptr %i.t, align 8, !tbaa !13, !noalias !395
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.t, align 8, !tbaa !13, !noalias !395
  br label %_ZN6duckdb10shared_ptrINS_16ResizeableBufferELb1EEC2ESt10shared_ptrIS1_E.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ac = atomicrmw volatile add ptr %i.t, i32 1 acq_rel, align 4, !noalias !395 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_16ResizeableBufferELb1EEC2ESt10shared_ptrIS1_E.exit.i

_ZN6duckdb10shared_ptrINS_16ResizeableBufferELb1EEC2ESt10shared_ptrIS1_E.exit.i: ; preds = %bb.h, %bb.g
  %i.ad = load atomic i64, ptr %i.t acquire, align 8, !noalias !395 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 4294967297
  %i.af = trunc i64 %i.ad to i32                  ; 2 uses
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN6duckdb10shared_ptrINS_16ResizeableBufferELb1EEC2ESt10shared_ptrIS1_E.exit.i
  store i32 0, ptr %i.t, align 8, !tbaa !250, !noalias !395
  store i32 0, ptr %i.u, align 4, !tbaa !251, !noalias !395
  %i.ag = load ptr, ptr %i.s, align 8, !tbaa !237, !noalias !395
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !395
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #23, !noalias !395, !inline_history !386
  %i.aj = load ptr, ptr %i.s, align 8, !tbaa !237, !noalias !395
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !395
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #23, !noalias !395, !inline_history !386
  br label %_ZN6duckdb15make_shared_ptrINS_16ResizeableBufferEJEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit

bb.j:                                             ; preds = %_ZN6duckdb10shared_ptrINS_16ResizeableBufferELb1EEC2ESt10shared_ptrIS1_E.exit.i
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !126, !noalias !395
  %.not.i.i.i.i = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = add nsw i32 %i.af, -1
  store i32 %i.an, ptr %i.t, align 8, !tbaa !13, !noalias !395
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ao = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4, !noalias !395
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.af, %bb.k ], [ %i.ao, %bb.l ]
  %i.ap = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ap, label %bb.m, label %_ZN6duckdb15make_shared_ptrINS_16ResizeableBufferEJEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit, !prof !44

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #23, !noalias !395
  br label %_ZN6duckdb15make_shared_ptrINS_16ResizeableBufferEJEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit

_ZN6duckdb15make_shared_ptrINS_16ResizeableBufferEJEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr %i.v, ptr %i.aq, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !252 ; 8 uses
  store ptr %i.s, ptr %i.ar, align 8, !tbaa !252
  %.not.i.i.i.i85 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i85, label %_ZN6duckdb10shared_ptrINS_16ResizeableBufferELb1EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN6duckdb15make_shared_ptrINS_16ResizeableBufferEJEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 4 uses
  %i.au = load atomic i64, ptr %i.at acquire, align 8 ; 2 uses
  %i.av = icmp eq i64 %i.au, 4294967297
  %i.aw = trunc i64 %i.au to i32                  ; 2 uses
  br i1 %i.av, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.at, align 8, !tbaa !250
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 0, ptr %i.ax, align 4, !tbaa !251
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !237
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #23, !inline_history !387
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !237
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #23, !inline_history !387
  br label %_ZN6duckdb10shared_ptrINS_16ResizeableBufferELb1EED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.be = load i8, ptr @__libc_single_threaded, align 1, !tbaa !126
  %.not.i.i.i.i.i = icmp eq i8 %i.be, 0
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bf = add nsw i32 %i.aw, -1
  store i32 %i.bf, ptr %i.at, align 8, !tbaa !13
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.bg = atomicrmw volatile add ptr %i.at, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i.i = phi i32 [ %i.aw, %bb.q ], [ %i.bg, %bb.r ]
  %i.bh = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bh, label %bb.s, label %_ZN6duckdb10shared_ptrINS_16ResizeableBufferELb1EED2Ev.exit, !prof !44

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #23
  br label %_ZN6duckdb10shared_ptrINS_16ResizeableBufferELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_16ResizeableBufferELb1EED2Ev.exit: ; preds = %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.o, %_ZN6duckdb15make_shared_ptrINS_16ResizeableBufferEJEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !241 ; 9 uses
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN6duckdb10shared_ptrINS_16ResizeableBufferELb1EED2Ev.exit
  %i.bk = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_16ResizeableBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aq)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i64 0, ptr %i.bl, align 8, !tbaa !34
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

bb.u:                                             ; preds = %_ZN6duckdb10shared_ptrINS_16ResizeableBufferELb1EED2Ev.exit
  %i.bm = load ptr, ptr %0, align 8, !tbaa !248, !nonnull !29, !align !30
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !106, !nonnull !29, !align !30 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 112
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !235
  %.fr123 = freeze i32 %i.bq
  %.not125 = icmp eq i32 %.fr123, 7               ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 104
  %i.bs = load i32, ptr %i.br, align 8            ; 2 uses
  br i1 %.not125, label %.split.preheader, label %.split.us.preheader

.split.us.preheader:                              ; preds = %bb.u
  %min.iters.check = icmp ult i64 %i.bi, 4
  br i1 %min.iters.check, label %.split.us.preheader174, label %vector.ph

vector.ph:                                        ; preds = %.split.us.preheader
  %n.vec = and i64 %i.bi, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %2, %vector.body ]
  %vec.phi163 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %3, %vector.body ]
  %vec.phi164 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cb, %vector.body ]
  %vec.phi165 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cc, %vector.body ]
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %wide.load = load <2 x i32>, ptr %i.bt, align 4, !tbaa !13
  %wide.load166 = load <2 x i32>, ptr %i.bu, align 4, !tbaa !13
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %index ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %wide.load167 = load <2 x i32>, ptr %i.bv, align 4, !tbaa !13
  %wide.load168 = load <2 x i32>, ptr %i.bw, align 4, !tbaa !13
  %i.bx = add <2 x i32> %wide.load167, %wide.load
  %i.by = add <2 x i32> %wide.load168, %wide.load166
  %i.bz = zext <2 x i32> %i.bx to <2 x i64>       ; 2 uses
  %i.ca = zext <2 x i32> %i.by to <2 x i64>       ; 2 uses
  %i.cb = add <2 x i64> %vec.phi164, %i.bz        ; 2 uses
  %i.cc = add <2 x i64> %vec.phi165, %i.ca        ; 2 uses
  %2 = tail call <2 x i64> @llvm.umax.v2i64(<2 x i64> %vec.phi, <2 x i64> %i.bz) ; 2 uses
  %3 = tail call <2 x i64> @llvm.umax.v2i64(<2 x i64> %vec.phi163, <2 x i64> %i.ca) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !388

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <2 x i64> @llvm.umax.v2i64(<2 x i64> %2, <2 x i64> %3)
  %4 = tail call i64 @llvm.vector.reduce.umax.v2i64(<2 x i64> %rdx.minmax) ; 2 uses
  %bin.rdx = add <2 x i64> %i.cc, %i.cb
  %i.ce = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.bi, %n.vec
  br i1 %cmp.n, label %.split111.us, label %.split.us.preheader174

.split.us.preheader174:                           ; preds = %.split.us.preheader, %middle.block
  %.063109.us.ph = phi i64 [ 0, %.split.us.preheader ], [ %n.vec, %middle.block ]
  %.064108.us.ph = phi i64 [ 0, %.split.us.preheader ], [ %4, %middle.block ]
  %.065107.us.ph = phi i64 [ 0, %.split.us.preheader ], [ %i.ce, %middle.block ]
  br label %.split.us

.split.preheader:                                 ; preds = %bb.u
  %i.cf = zext i32 %i.bs to i64                   ; 2 uses
  br label %.split

.split.us:                                        ; preds = %.split.us.preheader174, %.split.us
  %.063109.us = phi i64 [ %i.co, %.split.us ], [ %.063109.us.ph, %.split.us.preheader174 ] ; 3 uses
  %.064108.us = phi i64 [ %i.cn, %.split.us ], [ %.064108.us.ph, %.split.us.preheader174 ]
  %.065107.us = phi i64 [ %i.cm, %.split.us ], [ %.065107.us.ph, %.split.us.preheader174 ]
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.063109.us
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !13
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.063109.us
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !13
  %i.ck = add i32 %i.cj, %i.ch
  %i.cl = zext i32 %i.ck to i64                   ; 2 uses
  %i.cm = add i64 %.065107.us, %i.cl              ; 2 uses
  %i.cn = tail call noundef i64 @llvm.umax.i64(i64 %.064108.us, i64 %i.cl) ; 2 uses
  %i.co = add nuw i64 %.063109.us, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.co, %i.bi
  br i1 %exitcond.not, label %.split111.us, label %.split.us, !llvm.loop !389

.split111.us:                                     ; preds = %.split.us, %bb.ac, %middle.block
  %.us-phi = phi i64 [ %i.dp, %bb.ac ], [ %i.ce, %middle.block ], [ %i.cm, %.split.us ]
  %.us-phi112 = phi i64 [ %i.cf, %bb.ac ], [ %4, %middle.block ], [ %i.cn, %.split.us ] ; 3 uses
  %i.cp = shl i64 %i.bi, 2
  %i.cq = select i1 %.not125, i64 0, i64 %i.cp
  %.166 = add i64 %.us-phi, %i.cq                 ; 4 uses
  %i.cr = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_16ResizeableBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i64 %.166, ptr %i.cs, align 8, !tbaa !34
  %i.ct = icmp eq i64 %.166, 0
  br i1 %i.ct, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i, label %bb.v

bb.v:                                             ; preds = %.split111.us
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 40 ; 3 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !234
  %i.cw = icmp ugt i64 %.166, %i.cv
  br i1 %i.cw, label %bb.w, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.w:                                             ; preds = %bb.v
  %i.cx = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %.166)
  store i64 %i.cx, ptr %i.cu, align 8, !tbaa !234
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cr, i64 16 ; 2 uses
  tail call void @_ZN6duckdb13AllocatedData5ResetEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cy)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.cz = load i64, ptr %i.cu, align 8, !tbaa !234 ; 2 uses
  %i.da = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef %i.cz), !noalias !396
  call void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef %i.da, i64 noundef %i.cz)
  %i.db = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb13AllocatedDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, ptr noundef nonnull align 8 dereferenceable(24) %1) #23 ; 0 uses
  call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !232
  store ptr %i.dd, ptr %i.cr, align 8, !tbaa !36
  br label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.w, %bb.v, %.split111.us
  %.not.i.i.i.i.i89 = icmp eq i64 %.us-phi112, 0
  br i1 %.not.i.i.i.i.i89, label %_ZN6duckdb6vectorIhLb0ESaIhEECI2St6vectorIhS1_EEmRKS1_.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.de = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.us-phi112) #21
          to label %.noexc91 unwind label %bb.ag  ; 4 uses

.noexc91:                                         ; preds = %bb.x
  store i8 0, ptr %i.de, align 1, !tbaa !126
  %i.df = add nsw i64 %.us-phi112, -1             ; 2 uses
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %_ZN6duckdb6vectorIhLb0ESaIhEECI2St6vectorIhS1_EEmRKS1_.exit, label %bb.y

bb.y:                                             ; preds = %.noexc91
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dh, i8 0, i64 %i.df, i1 false)
  br label %_ZN6duckdb6vectorIhLb0ESaIhEECI2St6vectorIhS1_EEmRKS1_.exit

.split:                                           ; preds = %.split.preheader, %bb.ac
  %.063109 = phi i64 [ %i.dq, %bb.ac ], [ 0, %.split.preheader ] ; 3 uses
  %.065107 = phi i64 [ %i.dp, %bb.ac ], [ 0, %.split.preheader ]
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.063109
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !13
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.063109
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !13
  %i.dm = add i32 %i.dl, %i.dj
  %.not79 = icmp eq i32 %i.bs, %i.dm
  br i1 %.not79, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %.split
  %i.dn = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, ptr noundef nonnull @.str.3)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  tail call void @__cxa_throw(ptr nonnull %i.dn, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #24
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.do = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.dn) #23
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit98

bb.ac:                                            ; preds = %.split
  %i.dp = add i64 %.065107, %i.cf                 ; 2 uses
  %i.dq = add nuw i64 %.063109, 1                 ; 2 uses
  %exitcond134.not = icmp eq i64 %i.dq, %i.bi
  br i1 %exitcond134.not, label %.split111.us, label %.split, !llvm.loop !392

_ZN6duckdb6vectorIhLb0ESaIhEECI2St6vectorIhS1_EEmRKS1_.exit: ; preds = %bb.y, %.noexc91, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i
  %.sroa.099.0 = phi ptr [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.de, %.noexc91 ], [ %i.de, %bb.y ] ; 8 uses
  %i.dr = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_16ResizeableBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aq)
          to label %.lr.ph unwind label %bb.ah

.lr.ph:                                           ; preds = %_ZN6duckdb6vectorIhLb0ESaIhEECI2St6vectorIhS1_EEmRKS1_.exit
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !36 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 6 uses
  br i1 %.not125, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.ae
  %.0115.us = phi i64 [ %i.em, %bb.ae ], [ 0, %.lr.ph ] ; 3 uses
  %.061114.us = phi ptr [ %i.el, %bb.ae ], [ %i.ds, %.lr.ph ] ; 2 uses
  %.062113.us = phi i64 [ %i.ek, %bb.ae ], [ 0, %.lr.ph ]
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.0115.us
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !13 ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.0115.us
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !13 ; 2 uses
  %i.dy = add i32 %i.dx, %i.dv                    ; 2 uses
  %i.dz = zext i32 %i.dv to i64                   ; 3 uses
  %i.ea = icmp samesign ult i64 %.062113.us, %i.dz
  br i1 %i.ea, label %.split117.us, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.split.us
  store i32 %i.dy, ptr %.061114.us, align 1
  %i.eb = getelementptr inbounds nuw i8, ptr %.061114.us, i64 4 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eb, ptr align 1 %.sroa.099.0, i64 %i.dz, i1 false)
  %i.ec = zext i32 %i.dx to i64                   ; 5 uses
  %i.ed = load i64, ptr %i.dt, align 8, !tbaa !34
  %.not.i.us = icmp ult i64 %i.ed, %i.ec
  br i1 %.not.i.us, label %.split119.us, label %_ZNK6duckdb10ByteBuffer9availableEm.exit.us

_ZNK6duckdb10ByteBuffer9availableEm.exit.us:      ; preds = %bb.ad
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.dz
  %i.ef = load ptr, ptr %i.e, align 8, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ee, ptr align 1 %i.ef, i64 %i.ec, i1 false)
  %i.eg = load i64, ptr %i.dt, align 8, !tbaa !34 ; 2 uses
  %.not.i.i.us = icmp ult i64 %i.eg, %i.ec
  br i1 %.not.i.i.us, label %.split121.us, label %bb.ae

bb.ae:                                            ; preds = %_ZNK6duckdb10ByteBuffer9availableEm.exit.us
  %i.eh = sub nuw i64 %i.eg, %i.ec
  store i64 %i.eh, ptr %i.dt, align 8, !tbaa !34
  %i.ei = load ptr, ptr %i.e, align 8, !tbaa !36
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ec
  store ptr %i.ej, ptr %i.e, align 8, !tbaa !36
  %i.ek = zext i32 %i.dy to i64                   ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.099.0, ptr nonnull align 1 %i.eb, i64 %i.ek, i1 false)
  %i.el = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ek
  %i.em = add nuw i64 %.0115.us, 1                ; 2 uses
  %exitcond135.not = icmp eq i64 %i.em, %i.bi
  br i1 %exitcond135.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !393

._crit_edge:                                      ; preds = %bb.ae, %bb.an
  %.not.i.i.i92 = icmp eq ptr %.sroa.099.0, null
  br i1 %.not.i.i.i92, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %._crit_edge
  call void @_ZdlPv(ptr noundef nonnull %.sroa.099.0) #22
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

bb.ag:                                            ; preds = %bb.x
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit98

bb.ah:                                            ; preds = %_ZN6duckdb6vectorIhLb0ESaIhEECI2St6vectorIhS1_EEmRKS1_.exit
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.an
  %.0115 = phi i64 [ %i.fo, %bb.an ], [ 0, %.lr.ph ] ; 3 uses
  %.061114 = phi ptr [ %i.fn, %bb.an ], [ %i.ds, %.lr.ph ] ; 4 uses
  %.062113 = phi i64 [ %i.fm, %bb.an ], [ 0, %.lr.ph ]
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.0115
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !13 ; 2 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.0115
  %i.es = load i32, ptr %i.er, align 4, !tbaa !13 ; 2 uses
  %i.et = add i32 %i.es, %i.eq
  %i.eu = zext i32 %i.eq to i64                   ; 3 uses
  %i.ev = icmp samesign ult i64 %.062113, %i.eu
  br i1 %i.ev, label %.split117.us, label %bb.ak

.split117.us:                                     ; preds = %.lr.ph.split.us, %.lr.ph.split
  %i.ew = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ew, ptr noundef nonnull @.str.4)
          to label %.invoke unwind label %bb.ai

bb.ai:                                            ; preds = %.split117.us
  %i.ex = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ew) #23
  br label %.body

bb.aj:                                            ; preds = %.invoke
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ak:                                            ; preds = %.lr.ph.split
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.061114, ptr align 1 %.sroa.099.0, i64 %i.eu, i1 false)
  %i.ez = zext i32 %i.es to i64                   ; 5 uses
  %i.fa = load i64, ptr %i.dt, align 8, !tbaa !34
  %.not.i = icmp ult i64 %i.fa, %i.ez
  br i1 %.not.i, label %.split119.us, label %_ZNK6duckdb10ByteBuffer9availableEm.exit

.split119.us:                                     ; preds = %bb.ad, %bb.ak
  %i.fb = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.fb, ptr noundef nonnull @.str.16)
          to label %.invoke unwind label %bb.al

bb.al:                                            ; preds = %.split119.us
  %i.fc = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.fb) #23
  br label %.body
end_hunk_0
begin_hunk_1_@_ZN6duckdb12ColumnReader22PlainTemplatedInternalIbNS_31TemplatedParquetValueConversionIbEELb1ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE:bb.a
  %i.q = phi ptr [ %.pre.i, %bb.d ], [ %i.o, %bb.c ]
  %i.r = lshr i64 %.014, 6
  %i.s = and i64 %.014, 63
  %i.t = shl nuw i64 1, %i.s
  %i.u = xor i64 %i.t, -1
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.r ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !241
  %i.x = and i64 %i.w, %i.u
  store i64 %i.x, ptr %i.v, align 8, !tbaa !241
  br label %bb.i

bb.e:                                             ; preds = %bb.b
  %i.y = load i64, ptr %i.h, align 8, !tbaa !34   ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i, label %bb.f, label %_ZN6duckdb31TemplatedParquetValueConversionIbE9PlainReadILb1EEEbRNS_10ByteBufferERNS_12ColumnReaderE.exit

bb.f:                                             ; preds = %bb.e
  %i.z = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull @.str.16)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.z, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #24
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.z) #23
  resume { ptr, i32 } %i.aa

_ZN6duckdb31TemplatedParquetValueConversionIbE9PlainReadILb1EEEbRNS_10ByteBufferERNS_12ColumnReaderE.exit: ; preds = %bb.e
  %i.ab = load ptr, ptr %1, align 8, !tbaa !36    ; 2 uses
  %.0.copyload.i.i.i.i.i = load i8, ptr %i.ab, align 1
  %i.ac = add i64 %i.y, -1
  store i64 %i.ac, ptr %i.h, align 8, !tbaa !34
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  store ptr %i.ad, ptr %1, align 8, !tbaa !36
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 %.014
  %i.af = and i8 %.0.copyload.i.i.i.i.i, 1
  store i8 %i.af, ptr %i.ae, align 1, !tbaa !291
  br label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb31TemplatedParquetValueConversionIbE9PlainReadILb1EEEbRNS_10ByteBufferERNS_12ColumnReaderE.exit, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit
  %i.ag = add i64 %.014, 1                        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !574
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIbEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !256
  %i.e = icmp eq i8 %i.d, 1
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.30, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 1, ptr %i.a, align 1, !tbaa !333
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.g = load i8, ptr %i.c, align 1, !tbaa !256
  store i8 %i.g, ptr %i.b, align 1, !tbaa !333
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.j = load ptr, ptr %1, align 8, !tbaa !47     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.j) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #23
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb12ColumnReader22PlainTemplatedInternalIbNS_31TemplatedParquetValueConversionIbEELb0ELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %5) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIbEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !273
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.c = add i64 %4, %3                           ; 2 uses
  %i.d = icmp ult i64 %4, %i.c
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.pre = load i64, ptr %i.e, align 8, !tbaa !34
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN6duckdb31TemplatedParquetValueConversionIbE9PlainReadILb1EEEbRNS_10ByteBufferERNS_12ColumnReaderE.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN6duckdb31TemplatedParquetValueConversionIbE9PlainReadILb1EEEbRNS_10ByteBufferERNS_12ColumnReaderE.exit
  %i.f = phi i64 [ %.pre, %.lr.ph ], [ %i.j, %_ZN6duckdb31TemplatedParquetValueConversionIbE9PlainReadILb1EEEbRNS_10ByteBufferERNS_12ColumnReaderE.exit ] ; 2 uses
  %.010 = phi i64 [ %4, %.lr.ph ], [ %i.n, %_ZN6duckdb31TemplatedParquetValueConversionIbE9PlainReadILb1EEEbRNS_10ByteBufferERNS_12ColumnReaderE.exit ] ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i, label %bb.c, label %_ZN6duckdb31TemplatedParquetValueConversionIbE9PlainReadILb1EEEbRNS_10ByteBufferERNS_12ColumnReaderE.exit

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull @.str.16)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #24
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.g) #23
  resume { ptr, i32 } %i.h

_ZN6duckdb31TemplatedParquetValueConversionIbE9PlainReadILb1EEEbRNS_10ByteBufferERNS_12ColumnReaderE.exit: ; preds = %bb.b
  %i.i = load ptr, ptr %1, align 8, !tbaa !36     ; 2 uses
  %.0.copyload.i.i.i.i.i = load i8, ptr %i.i, align 1
  %i.j = add i64 %i.f, -1                         ; 2 uses
  store i64 %i.j, ptr %i.e, align 8, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store ptr %i.k, ptr %1, align 8, !tbaa !36
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 %.010
  %i.m = and i8 %.0.copyload.i.i.i.i.i, 1
  store i8 %i.m, ptr %i.l, align 1, !tbaa !291
  %i.n = add i64 %.010, 1                         ; 2 uses
  %exitcond.not = icmp eq i64 %i.n, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !575
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.umax.v2i64(<2 x i64>, <2 x i64>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.umax.v2i64(<2 x i64>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v4i32(<4 x i32>) #19

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { builtin nounwind }
attributes #23 = { nounwind }
attributes #24 = { noreturn }

!llvm.module.flags = !{!7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !127}
!1 = distinct !{ptr @_ZN6duckdb10shared_ptrINS_17VectorChildBufferELb1EED2Ev, null, null, null}
!2 = distinct !{ptr @_ZN6duckdb15SelectionVectorD2Ev, ptr @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev, null, null, null}
!3 = distinct !{!3, !127}
!4 = distinct !{!4, !127}
!5 = distinct !{!5, !127}
!6 = distinct !{!6, !127}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"any pointer", !11, i64 0}
!15 = !{!"p1 _ZTSN6duckdb12ColumnReaderE", !14, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"p1 _ZTSN6duckdb16ResizeableBufferE", !14, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"p1 _ZTSN6duckdb10BssDecoderE", !14, i64 0}
!20 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb10BssDecoderELb0EE", !19, i64 0}
!21 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb10BssDecoderESt14default_deleteIS1_EEE", !20, i64 0}
!22 = !{!"_ZTSSt5tupleIJPN6duckdb10BssDecoderESt14default_deleteIS1_EEE", !21, i64 0}
!23 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb10BssDecoderESt14default_deleteIS1_EE", !22, i64 0}
!24 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb10BssDecoderESt14default_deleteIS1_ELb1ELb1EE", !23, i64 0}
!25 = !{!"_ZTSSt10unique_ptrIN6duckdb10BssDecoderESt14default_deleteIS1_EE", !24, i64 0}
!26 = !{!"_ZTSN6duckdb10unique_ptrINS_10BssDecoderESt14default_deleteIS1_ELb1EEE", !25, i64 0}
!27 = !{!"_ZTSN6duckdb22ByteStreamSplitDecoderE", !15, i64 0, !17, i64 8, !26, i64 16}
!28 = !{!27, !15, i64 0}
!29 = !{}
!30 = !{i64 8}
!31 = !{!"p1 omnipotent char", !14, i64 0}
!32 = !{!"long", !11, i64 0}
!33 = !{!"_ZTSN6duckdb10ByteBufferE", !31, i64 0, !32, i64 8}
!34 = !{!33, !32, i64 8}
!35 = !{!31, !31, i64 0}
!36 = !{!33, !31, i64 0}
!37 = !{!"_ZTSN6duckdb10BssDecoderE", !33, i64 0, !12, i64 16}
!38 = !{!37, !12, i64 16}
!39 = !{!19, !19, i64 0}
!40 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !14, i64 0}
!41 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !40, i64 0}
!42 = !{!"_ZTSSt12__shared_ptrIN6duckdb16ResizeableBufferELN9__gnu_cxx12_Lock_policyE2EE", !17, i64 0, !41, i64 8}
!43 = !{!42, !17, i64 0}
!44 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!45 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !31, i64 0}
!46 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !45, i64 0, !32, i64 8, !11, i64 16}
!47 = !{!46, !31, i64 0}
!48 = !{!"p1 _ZTSN6duckdb19ParquetColumnSchemaE", !14, i64 0}
!49 = !{!"p1 _ZTSN6duckdb13ParquetReaderE", !14, i64 0}
!50 = !{!"bool", !11, i64 0}
!51 = !{!"p1 _ZTSN14duckdb_parquet11ColumnChunkE", !14, i64 0}
!52 = !{!"p1 _ZTSN13duckdb_apache6thrift8protocol9TProtocolE", !14, i64 0}
!53 = !{!"_ZTSSt10shared_ptrIN6duckdb16ResizeableBufferEE", !42, i64 0}
!54 = !{!"_ZTSN6duckdb10shared_ptrINS_16ResizeableBufferELb1EEE", !53, i64 0}
!55 = !{!"_ZTSN6duckdb14ColumnEncodingE", !11, i64 0}
!56 = !{!"p1 _ZTSN6duckdb12RleBpDecoderE", !14, i64 0}
!57 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb12RleBpDecoderELb0EE", !56, i64 0}
!58 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb12RleBpDecoderESt14default_deleteIS1_EEE", !57, i64 0}
!59 = !{!"_ZTSSt5tupleIJPN6duckdb12RleBpDecoderESt14default_deleteIS1_EEE", !58, i64 0}
!60 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb12RleBpDecoderESt14default_deleteIS1_EE", !59, i64 0}
!61 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb12RleBpDecoderESt14default_deleteIS1_ELb1ELb1EE", !60, i64 0}
!62 = !{!"_ZTSSt10unique_ptrIN6duckdb12RleBpDecoderESt14default_deleteIS1_EE", !61, i64 0}
!63 = !{!"_ZTSN6duckdb10unique_ptrINS_12RleBpDecoderESt14default_deleteIS1_ELb1EEE", !62, i64 0}
!64 = !{!"p1 int", !14, i64 0}
!65 = !{!"p1 _ZTSN6duckdb13SelectionDataE", !14, i64 0}
!66 = !{!"_ZTSSt12__shared_ptrIN6duckdb13SelectionDataELN9__gnu_cxx12_Lock_policyE2EE", !65, i64 0, !41, i64 8}
!67 = !{!"_ZTSSt10shared_ptrIN6duckdb13SelectionDataEE", !66, i64 0}
!68 = !{!"_ZTSN6duckdb10shared_ptrINS_13SelectionDataELb1EEE", !67, i64 0}
!69 = !{!"_ZTSN6duckdb15SelectionVectorE", !64, i64 0, !68, i64 8}
!70 = !{!"p1 _ZTSN6duckdb17VectorChildBufferE", !14, i64 0}
!71 = !{!"_ZTSSt12__shared_ptrIN6duckdb17VectorChildBufferELN9__gnu_cxx12_Lock_policyE2EE", !70, i64 0, !41, i64 8}
!72 = !{!"_ZTSSt10shared_ptrIN6duckdb17VectorChildBufferEE", !71, i64 0}
!73 = !{!"_ZTSN6duckdb10shared_ptrINS_17VectorChildBufferELb1EEE", !72, i64 0}
!74 = !{!"p1 bool", !14, i64 0}
!75 = !{!"_ZTSSt10_Head_baseILm0EPbLb0EE", !74, i64 0}
!76 = !{!"_ZTSSt11_Tuple_implILm0EJPbSt14default_deleteIA_bEEE", !75, i64 0}
!77 = !{!"_ZTSSt5tupleIJPbSt14default_deleteIA_bEEE", !76, i64 0}
!78 = !{!"_ZTSSt15__uniq_ptr_implIbSt14default_deleteIA_bEE", !77, i64 0}
!79 = !{!"_ZTSSt15__uniq_ptr_dataIbSt14default_deleteIA_bELb1ELb1EE", !78, i64 0}
!80 = !{!"_ZTSSt10unique_ptrIA_bSt14default_deleteIS0_EE", !79, i64 0}
!81 = !{!"_ZTSN6duckdb10unique_ptrIA_bSt14default_deleteIS1_ELb0EEE", !80, i64 0}
!82 = !{!"_ZTSN6duckdb17DictionaryDecoderE", !15, i64 0, !17, i64 8, !63, i64 16, !69, i64 24, !69, i64 48, !32, i64 72, !73, i64 80, !81, i64 96, !32, i64 104, !50, i64 112}
!83 = !{!"p1 _ZTSN6duckdb10DbpDecoderE", !14, i64 0}
!84 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb10DbpDecoderELb0EE", !83, i64 0}
!85 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb10DbpDecoderESt14default_deleteIS1_EEE", !84, i64 0}
!86 = !{!"_ZTSSt5tupleIJPN6duckdb10DbpDecoderESt14default_deleteIS1_EEE", !85, i64 0}
!87 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb10DbpDecoderESt14default_deleteIS1_EE", !86, i64 0}
!88 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb10DbpDecoderESt14default_deleteIS1_ELb1ELb1EE", !87, i64 0}
!89 = !{!"_ZTSSt10unique_ptrIN6duckdb10DbpDecoderESt14default_deleteIS1_EE", !88, i64 0}
!90 = !{!"_ZTSN6duckdb10unique_ptrINS_10DbpDecoderESt14default_deleteIS1_ELb1EEE", !89, i64 0}
!91 = !{!"_ZTSN6duckdb24DeltaBinaryPackedDecoderE", !15, i64 0, !17, i64 8, !90, i64 16}
!92 = !{!"_ZTSN6duckdb10RLEDecoderE", !15, i64 0, !17, i64 8, !63, i64 16}
!93 = !{!"_ZTSN6duckdb27DeltaLengthByteArrayDecoderE", !15, i64 0, !17, i64 8, !32, i64 16, !32, i64 24}
!94 = !{!"_ZTSN6duckdb21DeltaByteArrayDecoderE", !15, i64 0, !54, i64 8}
!95 = !{!"short", !11, i64 0}
!96 = !{!"p1 _ZTSN6duckdb34ParquetAdditionalAuthenticatedDataE", !14, i64 0}
!97 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb34ParquetAdditionalAuthenticatedDataELb0EE", !96, i64 0}
!98 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb34ParquetAdditionalAuthenticatedDataESt14default_deleteIS1_EEE", !97, i64 0}
!99 = !{!"_ZTSSt5tupleIJPN6duckdb34ParquetAdditionalAuthenticatedDataESt14default_deleteIS1_EEE", !98, i64 0}
!100 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb34ParquetAdditionalAuthenticatedDataESt14default_deleteIS1_EE", !99, i64 0}
!101 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb34ParquetAdditionalAuthenticatedDataESt14default_deleteIS1_ELb1ELb1EE", !100, i64 0}
!102 = !{!"_ZTSSt10unique_ptrIN6duckdb34ParquetAdditionalAuthenticatedDataESt14default_deleteIS1_EE", !101, i64 0}
!103 = !{!"_ZTSN6duckdb10unique_ptrINS_34ParquetAdditionalAuthenticatedDataESt14default_deleteIS1_ELb1EEE", !102, i64 0}
!104 = !{!"_ZTSN6duckdb14CryptoMetaDataE", !46, i64 0, !11, i64 32, !95, i64 34, !95, i64 36, !95, i64 38, !103, i64 40}
!105 = !{!"_ZTSN6duckdb12ColumnReaderE", !48, i64 8, !49, i64 16, !32, i64 24, !50, i64 32, !51, i64 40, !52, i64 48, !32, i64 56, !32, i64 64, !32, i64 72, !54, i64 80, !55, i64 96, !63, i64 104, !63, i64 112, !82, i64 120, !91, i64 240, !92, i64 264, !93, i64 288, !94, i64 320, !27, i64 344, !104, i64 368, !11, i64 416}
!106 = !{!105, !48, i64 8}
!107 = !{!"_ZTSN6duckdb12optional_idxE", !32, i64 0}
!108 = !{!"_ZTSN6duckdb23ParquetColumnSchemaTypeE", !11, i64 0}
!109 = !{!"_ZTSN6duckdb13LogicalTypeIdE", !11, i64 0}
!110 = !{!"_ZTSN6duckdb12PhysicalTypeE", !11, i64 0}
!111 = !{!"p1 _ZTSN6duckdb13ExtraTypeInfoE", !14, i64 0}
!112 = !{!"_ZTSSt12__shared_ptrIN6duckdb13ExtraTypeInfoELN9__gnu_cxx12_Lock_policyE2EE", !111, i64 0, !41, i64 8}
!113 = !{!"_ZTSSt10shared_ptrIN6duckdb13ExtraTypeInfoEE", !112, i64 0}
!114 = !{!"_ZTSN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEE", !113, i64 0}
!115 = !{!"_ZTSN6duckdb11LogicalTypeE", !109, i64 0, !110, i64 1, !114, i64 8}
!116 = !{!"_ZTSN14duckdb_parquet4Type4typeE", !11, i64 0}
!117 = !{!"_ZTSN6duckdb20ParquetExtraTypeInfoE", !11, i64 0}
!118 = !{!"_ZTSNSt12_Vector_baseIN6duckdb19ParquetColumnSchemaESaIS1_EE17_Vector_impl_dataE", !48, i64 0, !48, i64 8, !48, i64 16}
!119 = !{!"_ZTSNSt12_Vector_baseIN6duckdb19ParquetColumnSchemaESaIS1_EE12_Vector_implE", !118, i64 0}
!120 = !{!"_ZTSSt12_Vector_baseIN6duckdb19ParquetColumnSchemaESaIS1_EE", !119, i64 0}
!121 = !{!"_ZTSSt6vectorIN6duckdb19ParquetColumnSchemaESaIS1_EE", !120, i64 0}
!122 = !{!"_ZTSN6duckdb6vectorINS_19ParquetColumnSchemaELb1ESaIS1_EEE", !121, i64 0}
!123 = !{!"_ZTSN14duckdb_parquet19FieldRepetitionType4typeE", !11, i64 0}
!124 = !{!"_ZTSN6duckdb19ParquetColumnSchemaE", !46, i64 0, !32, i64 32, !32, i64 40, !107, i64 48, !32, i64 56, !108, i64 64, !115, i64 72, !107, i64 96, !12, i64 104, !12, i64 108, !116, i64 112, !117, i64 116, !122, i64 120, !107, i64 144, !123, i64 152, !50, i64 156}
!125 = !{!124, !32, i64 32}
!126 = !{!11, !11, i64 0}
!127 = !{!"llvm.loop.mustprogress"}
!128 = !{!"llvm.loop.unroll.disable"}
!129 = !{!105, !49, i64 16}
!130 = !{!"p1 _ZTSN6duckdb14BaseFileReaderE", !14, i64 0}
!131 = !{!"_ZTSSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EE", !40, i64 0}
!132 = !{!"_ZTSSt10__weak_ptrIN6duckdb14BaseFileReaderELN9__gnu_cxx12_Lock_policyE2EE", !130, i64 0, !131, i64 8}
!133 = !{!"_ZTSSt8weak_ptrIN6duckdb14BaseFileReaderEE", !132, i64 0}
!134 = !{!"_ZTSN6duckdb8weak_ptrINS_14BaseFileReaderELb1EEE", !133, i64 0}
!135 = !{!"_ZTSN6duckdb23enable_shared_from_thisINS_14BaseFileReaderEEE", !134, i64 0}
!136 = !{!"p1 _ZTSN6duckdb20ExtendedOpenFileInfoE", !14, i64 0}
!137 = !{!"_ZTSSt12__shared_ptrIN6duckdb20ExtendedOpenFileInfoELN9__gnu_cxx12_Lock_policyE2EE", !136, i64 0, !41, i64 8}
!138 = !{!"_ZTSSt10shared_ptrIN6duckdb20ExtendedOpenFileInfoEE", !137, i64 0}
!139 = !{!"_ZTSN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EEE", !138, i64 0}
!140 = !{!"_ZTSN6duckdb12OpenFileInfoE", !46, i64 0, !139, i64 32}
!141 = !{!"p1 _ZTSN6duckdb25MultiFileColumnDefinitionE", !14, i64 0}
!142 = !{!"_ZTSNSt12_Vector_baseIN6duckdb25MultiFileColumnDefinitionESaIS1_EE17_Vector_impl_dataE", !141, i64 0, !141, i64 8, !141, i64 16}
!143 = !{!"_ZTSNSt12_Vector_baseIN6duckdb25MultiFileColumnDefinitionESaIS1_EE12_Vector_implE", !142, i64 0}
!144 = !{!"_ZTSSt12_Vector_baseIN6duckdb25MultiFileColumnDefinitionESaIS1_EE", !143, i64 0}
!145 = !{!"_ZTSSt6vectorIN6duckdb25MultiFileColumnDefinitionESaIS1_EE", !144, i64 0}
!146 = !{!"_ZTSN6duckdb6vectorINS_25MultiFileColumnDefinitionELb1ESaIS1_EEE", !145, i64 0}
!147 = !{!"p1 _ZTSN6duckdb22MultiFileLocalColumnIdE", !14, i64 0}
!148 = !{!"_ZTSNSt12_Vector_baseIN6duckdb22MultiFileLocalColumnIdESaIS1_EE17_Vector_impl_dataE", !147, i64 0, !147, i64 8, !147, i64 16}
!149 = !{!"_ZTSNSt12_Vector_baseIN6duckdb22MultiFileLocalColumnIdESaIS1_EE12_Vector_implE", !148, i64 0}
!150 = !{!"_ZTSSt12_Vector_baseIN6duckdb22MultiFileLocalColumnIdESaIS1_EE", !149, i64 0}
!151 = !{!"_ZTSSt6vectorIN6duckdb22MultiFileLocalColumnIdESaIS1_EE", !150, i64 0}
!152 = !{!"_ZTSN6duckdb6vectorINS_22MultiFileLocalColumnIdELb1ESaIS1_EEE", !151, i64 0}
!153 = !{!"_ZTSN6duckdb23MultiFileLocalColumnIdsINS_22MultiFileLocalColumnIdEEE", !152, i64 0}
!154 = !{!"p1 _ZTSN6duckdb11ColumnIndexE", !14, i64 0}
!155 = !{!"_ZTSNSt12_Vector_baseIN6duckdb11ColumnIndexESaIS1_EE17_Vector_impl_dataE", !154, i64 0, !154, i64 8, !154, i64 16}
!156 = !{!"_ZTSNSt12_Vector_baseIN6duckdb11ColumnIndexESaIS1_EE12_Vector_implE", !155, i64 0}
!157 = !{!"_ZTSSt12_Vector_baseIN6duckdb11ColumnIndexESaIS1_EE", !156, i64 0}
!158 = !{!"_ZTSSt6vectorIN6duckdb11ColumnIndexESaIS1_EE", !157, i64 0}
!159 = !{!"_ZTSN6duckdb6vectorINS_11ColumnIndexELb1ESaIS1_EEE", !158, i64 0}
end_hunk_1
