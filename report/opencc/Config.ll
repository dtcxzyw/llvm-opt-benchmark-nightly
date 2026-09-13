Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencc/original/Config?download=true
inline.NumInlined: 5017
inline.NumDeleted: 1341
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E5ParseEPKcm:bb.a
  store ptr %i.n, ptr %i.m, align 8, !tbaa !328
  store <4 x i8> zeroinitializer, ptr %i.g, align 1, !tbaa !60
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !329
  store i8 0, ptr %i.p, align 1, !tbaa !60
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 5 ; 2 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !330
  store i8 0, ptr %i.r, align 1, !tbaa !60
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 6 ; 2 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !325
  store i8 0, ptr %i.s, align 1, !tbaa !60
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E21GetSchemeStringLengthEv.exit, label %.preheader118

.preheader118:                                    ; preds = %_ZN9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E8AllocateEm.exit, %bb.c
  %.098119 = phi i64 [ %i.w, %bb.c ], [ 0, %_ZN9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E8AllocateEm.exit ] ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %.098119
  %i.u = load i8, ptr %i.t, align 1, !tbaa !60
  %i.v = icmp eq i8 %i.u, 58
  br i1 %i.v, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader118
  %i.w = add nuw i64 %.098119, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %2
  br i1 %exitcond.not, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E21GetSchemeStringLengthEv.exit, label %.preheader118, !llvm.loop !1361

bb.d:                                             ; preds = %.preheader118
  %.not109 = icmp eq i64 %.098119, %2
  br i1 %.not109, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E21GetSchemeStringLengthEv.exit, label %.preheader117

.preheader117:                                    ; preds = %bb.d, %bb.e
  %.0120 = phi i64 [ %i.z, %bb.e ], [ 0, %bb.d ]  ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %.0120
  %i.y = load i8, ptr %i.x, align 1, !tbaa !60
  switch i8 %i.y, label %bb.e [
    i8 47, label %bb.f
    i8 63, label %bb.f
    i8 35, label %bb.f
  ]

bb.e:                                             ; preds = %.preheader117
  %i.z = add nuw i64 %.0120, 1                    ; 2 uses
  %exitcond129.not = icmp eq i64 %i.z, %2
  br i1 %exitcond129.not, label %bb.f, label %.preheader117, !llvm.loop !1362

bb.f:                                             ; preds = %.preheader117, %.preheader117, %.preheader117, %bb.e
  %.0.lcssa = phi i64 [ %.0120, %.preheader117 ], [ %.0120, %.preheader117 ], [ %.0120, %.preheader117 ], [ %2, %bb.e ]
  %i.aa = icmp ult i64 %.098119, %.0.lcssa
  br i1 %i.aa, label %bb.g, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E21GetSchemeStringLengthEv.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = add nuw i64 %.098119, 1                 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %i.ab, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ab
  store i8 0, ptr %i.ac, align 1, !tbaa !60
  br label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E21GetSchemeStringLengthEv.exit

_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E21GetSchemeStringLengthEv.exit: ; preds = %bb.c, %bb.d, %bb.g, %bb.f, %_ZN9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E8AllocateEm.exit
  %.099 = phi i64 [ %i.ab, %bb.g ], [ 0, %bb.f ], [ 0, %bb.d ], [ 0, %_ZN9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E8AllocateEm.exit ], [ 0, %bb.c ] ; 7 uses
  %i.ad = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #39
  %i.ae = and i64 %i.ad, 4294967295
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 6 uses
  store ptr %i.ag, ptr %i.i, align 8, !tbaa !326
  store i8 0, ptr %i.ag, align 1, !tbaa !60
  %i.ah = add i64 %2, -1                          ; 3 uses
  %i.ai = icmp ult i64 %.099, %i.ah
  br i1 %i.ai, label %bb.h, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetAuthStringLengthEv.exit

bb.h:                                             ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E21GetSchemeStringLengthEv.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %.099 ; 3 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !60
  %i.al = icmp eq i8 %i.ak, 47
  br i1 %i.al, label %bb.i, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetAuthStringLengthEv.exit

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr i8, ptr %i.aj, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !60
  %i.ao = icmp eq i8 %i.an, 47
  br i1 %i.ao, label %bb.j, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetAuthStringLengthEv.exit

bb.j:                                             ; preds = %bb.i
  %i.ap = add i64 %.099, 2                        ; 3 uses
  %i.aq = icmp ult i64 %i.ap, %2
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.j, %bb.k
  %.1121 = phi i64 [ %i.at, %bb.k ], [ %i.ap, %bb.j ] ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %.1121
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !60
  switch i8 %i.as, label %bb.k [
    i8 47, label %._crit_edge
    i8 63, label %._crit_edge
    i8 35, label %._crit_edge
  ]

bb.k:                                             ; preds = %.lr.ph
  %i.at = add i64 %.1121, 1                       ; 2 uses
  %exitcond130.not = icmp eq i64 %i.at, %2
  br i1 %exitcond130.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1363

._crit_edge:                                      ; preds = %bb.k, %.lr.ph, %.lr.ph, %.lr.ph, %bb.j
  %.1.lcssa = phi i64 [ %i.ap, %bb.j ], [ %.1121, %.lr.ph ], [ %.1121, %.lr.ph ], [ %.1121, %.lr.ph ], [ %2, %bb.k ] ; 2 uses
  %i.au = sub i64 %.1.lcssa, %.099                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr nonnull align 1 %i.aj, i64 %i.au, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.au
  store i8 0, ptr %i.av, align 1, !tbaa !60
  br label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetAuthStringLengthEv.exit

_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetAuthStringLengthEv.exit: ; preds = %._crit_edge, %bb.i, %bb.h, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E21GetSchemeStringLengthEv.exit
  %.1100 = phi i64 [ %.1.lcssa, %._crit_edge ], [ %.099, %bb.i ], [ %.099, %bb.h ], [ %.099, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E21GetSchemeStringLengthEv.exit ] ; 7 uses
  %i.aw = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ag) #39
  %i.ax = and i64 %i.aw, 4294967295
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 10 uses
  store ptr %i.az, ptr %i.k, align 8, !tbaa !327
  store i8 0, ptr %i.az, align 1, !tbaa !60
  %i.ba = icmp ult i64 %.1100, %2
  br i1 %i.ba, label %.preheader116, label %.thread

.preheader116:                                    ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetAuthStringLengthEv.exit, %bb.l
  %.2128 = phi i64 [ %i.bd, %bb.l ], [ %.1100, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetAuthStringLengthEv.exit ] ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 %.2128
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !60
  switch i8 %i.bc, label %bb.l [
    i8 63, label %bb.m
    i8 35, label %bb.m
  ]

bb.l:                                             ; preds = %.preheader116
  %i.bd = add i64 %.2128, 1                       ; 2 uses
  %exitcond131.not = icmp eq i64 %i.bd, %2
  br i1 %exitcond131.not, label %bb.m, label %.preheader116, !llvm.loop !1364

bb.m:                                             ; preds = %.preheader116, %.preheader116, %bb.l
  %.2.lcssa = phi i64 [ %.2128, %.preheader116 ], [ %.2128, %.preheader116 ], [ %2, %bb.l ] ; 4 uses
  %.not110 = icmp eq i64 %.1100, %.2.lcssa
  br i1 %.not110, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 %.1100
  %i.bf = sub nuw i64 %.2.lcssa, %.1100           ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.az, ptr align 1 %i.be, i64 %i.bf, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bf
  store i8 0, ptr %i.bg, align 1, !tbaa !60
  %i.bh = load i8, ptr %i.az, align 1, !tbaa !60
  %i.bi = icmp eq i8 %i.bh, 47
  br i1 %i.bi, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.bj = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.az) #39
  %i.bk = and i64 %i.bj, 4294967295               ; 3 uses
  %.not42.i = icmp eq i64 %i.bk, 0
  br i1 %.not42.i, label %_ZN9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17RemoveDotSegmentsEv.exit, label %.preheader38.i

.preheader38.i:                                   ; preds = %bb.o, %.loopexit.i
  %.03441.i = phi i64 [ %.2.i, %.loopexit.i ], [ 0, %bb.o ] ; 7 uses
  %.03540.i = phi i64 [ %i.cj, %.loopexit.i ], [ 0, %bb.o ] ; 3 uses
  %i.bl = load ptr, ptr %i.k, align 8, !tbaa !327 ; 3 uses
  %invariant.gep.i = getelementptr i8, ptr %i.bl, i64 %.03540.i ; 5 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.preheader38.i
  %.03339.i = phi i64 [ 0, %.preheader38.i ], [ %i.bo, %bb.q ] ; 3 uses
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %.03339.i
  %i.bm = load i8, ptr %gep.i, align 1, !tbaa !60
  %i.bn = icmp eq i8 %i.bm, 47                    ; 2 uses
  br i1 %i.bn, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bo = add nuw nsw i64 %.03339.i, 1            ; 3 uses
  %i.bp = add i64 %i.bo, %.03540.i
  %i.bq = icmp ult i64 %i.bp, %i.bk
  br i1 %i.bq, label %bb.p, label %bb.r, !llvm.loop !31

bb.r:                                             ; preds = %bb.q, %bb.p
  %.033.lcssa.i = phi i64 [ %i.bo, %bb.q ], [ %.03339.i, %bb.p ] ; 4 uses
  switch i64 %.033.lcssa.i, label %bb.w [
    i64 2, label %bb.s
    i64 1, label %bb.v
  ]

bb.s:                                             ; preds = %bb.r
  %i.br = load i8, ptr %invariant.gep.i, align 1, !tbaa !60
  %i.bs = icmp eq i8 %i.br, 46
  br i1 %i.bs, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.bt = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !60
  %i.bv = icmp eq i8 %i.bu, 46
  br i1 %i.bv, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.bw = icmp ugt i64 %.03441.i, 1
  br i1 %i.bw, label %.preheader.i.preheader, label %.loopexit.i

.preheader.i.preheader:                           ; preds = %bb.u
  %.0.i152 = add i64 %.03441.i, -1
  br label %.lr.ph156

.preheader.i:                                     ; preds = %.lr.ph156
  %.0.i = add i64 %.0.i155, -1                    ; 2 uses
  %.not.i112 = icmp eq i64 %.0.i, 0
  br i1 %.not.i112, label %.loopexit.i, label %.lr.ph156, !llvm.loop !32

.lr.ph156:                                        ; preds = %.preheader.i.preheader, %.preheader.i
  %.0.i155 = phi i64 [ %.0.i152, %.preheader.i.preheader ], [ %.0.i, %.preheader.i ] ; 3 uses
  %.0.in.i154 = phi i64 [ %.03441.i, %.preheader.i.preheader ], [ %.0.i155, %.preheader.i ]
  %i.bx = getelementptr i8, ptr %i.bl, i64 %.0.in.i154
  %i.by = getelementptr i8, ptr %i.bx, i64 -2
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !60
  %i.ca = icmp eq i8 %i.bz, 47
  br i1 %i.ca, label %.loopexit.i, label %.preheader.i, !llvm.loop !32

bb.v:                                             ; preds = %bb.r
  %i.cb = load i8, ptr %invariant.gep.i, align 1, !tbaa !60
  %i.cc = icmp eq i8 %i.cb, 46
  br i1 %i.cc, label %.loopexit.i, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t, %bb.s, %bb.r
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.03441.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cd, ptr align 1 %invariant.gep.i, i64 %.033.lcssa.i, i1 false)
  %i.ce = add i64 %.033.lcssa.i, %.03441.i        ; 3 uses
  br i1 %i.bn, label %bb.x, label %.loopexit.i

bb.x:                                             ; preds = %bb.w
  %i.cf = load ptr, ptr %i.k, align 8, !tbaa !327
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ce
  store i8 47, ptr %i.cg, align 1, !tbaa !60
  %i.ch = add i64 %i.ce, 1
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph156, %.preheader.i, %bb.x, %bb.w, %bb.v, %bb.u
  %.2.i = phi i64 [ %i.ce, %bb.w ], [ %.03441.i, %bb.v ], [ %i.ch, %bb.x ], [ %.03441.i, %bb.u ], [ %.0.i155, %.lr.ph156 ], [ 0, %.preheader.i ] ; 2 uses
  %i.ci = add i64 %.03540.i, 1
  %i.cj = add i64 %i.ci, %.033.lcssa.i            ; 2 uses
  %i.ck = icmp ult i64 %i.cj, %i.bk
  br i1 %i.ck, label %.preheader38.i, label %._crit_edge.loopexit.i, !llvm.loop !33

._crit_edge.loopexit.i:                           ; preds = %.loopexit.i
  %.pre.i = load ptr, ptr %i.k, align 8, !tbaa !327
  br label %_ZN9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17RemoveDotSegmentsEv.exit

_ZN9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17RemoveDotSegmentsEv.exit: ; preds = %bb.o, %._crit_edge.loopexit.i
  %i.cl = phi ptr [ %i.az, %bb.o ], [ %.pre.i, %._crit_edge.loopexit.i ]
  %.034.lcssa.i = phi i64 [ 0, %bb.o ], [ %.2.i, %._crit_edge.loopexit.i ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.034.lcssa.i
  store i8 0, ptr %i.cm, align 1, !tbaa !60
  %.pr.pre = load ptr, ptr %i.k, align 8, !tbaa !327
  br label %.thread

.thread:                                          ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetAuthStringLengthEv.exit, %bb.m, %_ZN9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17RemoveDotSegmentsEv.exit, %bb.n
  %.2101114 = phi i64 [ %.2.lcssa, %bb.n ], [ %.2.lcssa, %_ZN9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17RemoveDotSegmentsEv.exit ], [ %.1100, %bb.m ], [ %.1100, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetAuthStringLengthEv.exit ] ; 9 uses
  %i.cn = phi ptr [ %i.az, %bb.n ], [ %.pr.pre, %_ZN9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17RemoveDotSegmentsEv.exit ], [ %i.az, %bb.m ], [ %i.az, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetAuthStringLengthEv.exit ] ; 2 uses
  %i.co = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cn) #39
  %i.cp = and i64 %i.co, 4294967295
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 1 ; 2 uses
  store ptr %i.cr, ptr %i.m, align 8, !tbaa !328
  store i8 0, ptr %i.cr, align 1, !tbaa !60
  %i.cs = icmp ult i64 %.2101114, %2
  br i1 %i.cs, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %.thread
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 %.2101114 ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !60
  %i.cv = icmp eq i8 %i.cu, 63
  br i1 %i.cv, label %.preheader.preheader, label %bb.aa

.preheader.preheader:                             ; preds = %bb.y
  %exitcond132.not158 = icmp eq i64 %.2101114, %i.ah
  br i1 %exitcond132.not158, label %.preheader._crit_edge, label %.lr.ph160

.preheader:                                       ; preds = %.lr.ph160
  %exitcond132.not = icmp eq i64 %.3, %i.ah
  br i1 %exitcond132.not, label %.preheader._crit_edge, label %.lr.ph160, !llvm.loop !1365

.lr.ph160:                                        ; preds = %.preheader.preheader, %.preheader
  %.3.in159 = phi i64 [ %.3, %.preheader ], [ %.2101114, %.preheader.preheader ]
  %.3 = add nuw i64 %.3.in159, 1                  ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 %.3
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !60
  %i.cy = icmp eq i8 %i.cx, 35
  br i1 %i.cy, label %._crit_edge161, label %.preheader, !llvm.loop !1365

._crit_edge161:                                   ; preds = %.lr.ph160
  br label %.preheader._crit_edge, !llvm.loop !1365

.preheader._crit_edge:                            ; preds = %.preheader, %._crit_edge161, %.preheader.preheader
  %.3.lcssa = phi i64 [ %.3, %._crit_edge161 ], [ %2, %.preheader.preheader ], [ %2, %.preheader ] ; 3 uses
  %.not111 = icmp eq i64 %.2101114, %.3.lcssa
  br i1 %.not111, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.preheader._crit_edge
  %i.cz = load ptr, ptr %i.m, align 8, !tbaa !328
  %i.da = sub i64 %.3.lcssa, %.2101114            ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cz, ptr nonnull align 1 %i.ct, i64 %i.da, i1 false)
  %i.db = load ptr, ptr %i.m, align 8, !tbaa !328
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.da
  store i8 0, ptr %i.dc, align 1, !tbaa !60
  br label %bb.aa

bb.aa:                                            ; preds = %.preheader._crit_edge, %bb.z, %bb.y, %.thread
  %.3102 = phi i64 [ %.3.lcssa, %bb.z ], [ %.2101114, %.preheader._crit_edge ], [ %.2101114, %bb.y ], [ %.2101114, %.thread ] ; 3 uses
  %i.dd = load ptr, ptr %i.m, align 8, !tbaa !328 ; 3 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E20GetQueryStringLengthEv.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.df = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dd) #39
  %i.dg = and i64 %i.df, 4294967295
  br label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E20GetQueryStringLengthEv.exit

_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E20GetQueryStringLengthEv.exit: ; preds = %bb.aa, %bb.ab
  %i.dh = phi i64 [ %i.dg, %bb.ab ], [ 0, %bb.aa ]
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 1 ; 2 uses
  store ptr %i.dj, ptr %i.o, align 8, !tbaa !329
  store i8 0, ptr %i.dj, align 1, !tbaa !60
  %i.dk = icmp ult i64 %.3102, %2
  br i1 %i.dk, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E20GetQueryStringLengthEv.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 %.3102 ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !60
  %i.dn = icmp eq i8 %i.dm, 35
  br i1 %i.dn, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.do = load ptr, ptr %i.o, align 8, !tbaa !329
  %i.dp = sub nuw i64 %2, %.3102                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.do, ptr nonnull align 1 %i.dl, i64 %i.dp, i1 false)
  %i.dq = load ptr, ptr %i.o, align 8, !tbaa !329
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dp
  store i8 0, ptr %i.dr, align 1, !tbaa !60
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E20GetQueryStringLengthEv.exit
  %i.ds = load ptr, ptr %i.o, align 8, !tbaa !329 ; 3 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetFragStringLengthEv.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.du = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ds) #39
  %i.dv = and i64 %i.du, 4294967295
  br label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetFragStringLengthEv.exit

_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetFragStringLengthEv.exit: ; preds = %bb.ae, %bb.af
  %i.dw = phi i64 [ %i.dv, %bb.af ], [ 0, %bb.ae ]
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 1
  store ptr %i.dy, ptr %i.q, align 8, !tbaa !330
  tail call void @_ZN9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E7SetBaseEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %i.dz = load ptr, ptr %i.q, align 8, !tbaa !330 ; 5 uses
  %i.ea = icmp eq ptr %i.dz, null
  br i1 %i.ea, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetBaseStringLengthEv.exit.thread, label %bb.ag

_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetBaseStringLengthEv.exit.thread: ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetFragStringLengthEv.exit
  store ptr inttoptr (i64 1 to ptr), ptr %0, align 8, !tbaa !325
  br label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetBaseStringLengthEv.exit.i

bb.ag:                                            ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetFragStringLengthEv.exit
  %i.eb = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dz) #39
  %i.ec = and i64 %i.eb, 4294967295
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 1 ; 2 uses
  store ptr %i.ee, ptr %0, align 8, !tbaa !325
  %i.ef = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dz) #39
  %i.eg = and i64 %i.ef, 4294967295
  br label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetBaseStringLengthEv.exit.i

_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetBaseStringLengthEv.exit.i: ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetBaseStringLengthEv.exit.thread, %bb.ag
  %i.eh = phi ptr [ %i.ee, %bb.ag ], [ inttoptr (i64 1 to ptr), %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetBaseStringLengthEv.exit.thread ] ; 2 uses
  %i.ei = phi i64 [ %i.eg, %bb.ag ], [ 0, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetBaseStringLengthEv.exit.thread ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eh, ptr align 1 %i.dz, i64 %i.ei, i1 false)
  %i.ej = load ptr, ptr %i.q, align 8, !tbaa !330 ; 2 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetBaseStringLengthEv.exit6.i, label %bb.ah

bb.ah:                                            ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetBaseStringLengthEv.exit.i
  %i.el = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ej) #39
  %i.em = and i64 %i.el, 4294967295
  br label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetBaseStringLengthEv.exit6.i

_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetBaseStringLengthEv.exit6.i: ; preds = %bb.ah, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetBaseStringLengthEv.exit.i
  %i.en = phi i64 [ %i.em, %bb.ah ], [ 0, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetBaseStringLengthEv.exit.i ]
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.en ; 2 uses
  %i.ep = load ptr, ptr %i.o, align 8, !tbaa !329 ; 3 uses
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetFragStringLengthEv.exit.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetBaseStringLengthEv.exit6.i
  %i.er = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ep) #39
  %i.es = and i64 %i.er, 4294967295
  br label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetFragStringLengthEv.exit.i

_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetFragStringLengthEv.exit.i: ; preds = %bb.ai, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetBaseStringLengthEv.exit6.i
  %i.et = phi i64 [ %i.es, %bb.ai ], [ 0, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetBaseStringLengthEv.exit6.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eo, ptr align 1 %i.ep, i64 %i.et, i1 false)
  %i.eu = load ptr, ptr %i.o, align 8, !tbaa !329 ; 2 uses
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %_ZN9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E6SetUriEv.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetFragStringLengthEv.exit.i
  %i.ew = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.eu) #39
  %i.ex = and i64 %i.ew, 4294967295
  br label %_ZN9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E6SetUriEv.exit

_ZN9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E6SetUriEv.exit: ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetFragStringLengthEv.exit.i, %bb.aj
  %i.ey = phi i64 [ %i.ex, %bb.aj ], [ 0, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetFragStringLengthEv.exit.i ]
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.ey
  store i8 0, ptr %i.ez, align 1, !tbaa !60
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E7SetBaseEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !330  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !194  ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E21GetSchemeStringLengthEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #39
  %i.g = and i64 %i.f, 4294967295
  br label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E21GetSchemeStringLengthEv.exit

_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E21GetSchemeStringLengthEv.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i64 [ %i.g, %bb.b ], [ 0, %bb.a ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.b, ptr align 1 %i.d, i64 %i.h, i1 false)
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !194  ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN9rapidjson21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E13AddSchemaRefsEPNS_8internal6SchemaIS8_EE:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.v, i8 0, i64 44, i1 false)
  %i.w = tail call noundef nonnull align 8 dereferenceable(52) ptr @_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_EaSERKS8_(ptr noundef nonnull align 8 dereferenceable(65) %i.r, ptr noundef nonnull align 8 dereferenceable(52) %i.t) ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  store ptr %1, ptr %i.x, align 8, !tbaa !207
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  store i8 0, ptr %i.y, align 8, !tbaa !206
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !148  ; 2 uses
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !149
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %._crit_edge, label %bb.b, !llvm.loop !27

._crit_edge:                                      ; preds = %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE7ReserveINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorIS2_EEEES2_E11SchemaEntryEEEvm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E7ResolveERKS8_PS5_(ptr dead_on_unwind noalias writable sret(%"class.rapidjson::GenericUri") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false)
  store ptr %3, ptr %i.a, align 8, !tbaa !192
  %i.c = load ptr, ptr %1, align 8, !tbaa !325    ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E15GetStringLengthEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #39
  %i.f = add i64 %i.e, 1
  br label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E15GetStringLengthEv.exit

_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E15GetStringLengthEv.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %i.f, %bb.b ], [ 1, %bb.a ]
  %i.h = load ptr, ptr %2, align 8, !tbaa !325    ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E15GetStringLengthEv.exit32, label %bb.c

bb.c:                                             ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E15GetStringLengthEv.exit
  %i.j = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #39
  br label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E15GetStringLengthEv.exit32

_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E15GetStringLengthEv.exit32: ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E15GetStringLengthEv.exit, %bb.c
  %i.k = phi i64 [ %i.j, %bb.c ], [ 0, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E15GetStringLengthEv.exit ]
  %i.l = add i64 %i.g, %i.k
  %i.m = and i64 %i.l, 4294967295
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E15GetStringLengthEv.exit32
  %i.n = invoke noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #34
          to label %.noexc unwind label %bb.r     ; 2 uses

.noexc:                                           ; preds = %bb.d
  store ptr %i.n, ptr %i.a, align 8, !tbaa !192
  store ptr %i.n, ptr %i.b, align 8, !tbaa !193
  br label %bb.e

bb.e:                                             ; preds = %.noexc, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E15GetStringLengthEv.exit32
  %i.o = mul nuw nsw i64 %i.m, 3
  %i.p = add nuw nsw i64 %i.o, 7
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.p) #37 ; 12 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.q, ptr %i.r, align 8, !tbaa !194
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store ptr %i.t, ptr %i.s, align 8, !tbaa !326
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 16 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  store ptr %i.v, ptr %i.u, align 8, !tbaa !327
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 3
  store ptr %i.x, ptr %i.w, align 8, !tbaa !328
  store <4 x i8> zeroinitializer, ptr %i.q, align 1, !tbaa !60
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 9 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !329
  store i8 0, ptr %i.z, align 1, !tbaa !60
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 5 ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !330
  store i8 0, ptr %i.ab, align 1, !tbaa !60
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 6 ; 2 uses
  store ptr %i.ac, ptr %0, align 8, !tbaa !325
  store i8 0, ptr %i.ac, align 1, !tbaa !60
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !194 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E21GetSchemeStringLengthEv.exit.thread, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E21GetSchemeStringLengthEv.exit

_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E21GetSchemeStringLengthEv.exit: ; preds = %bb.e
  %i.ag = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ae) #39
  %i.ah = and i64 %i.ag, 4294967295               ; 3 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E21GetSchemeStringLengthEv.exit.thread, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E21GetSchemeStringLengthEv.exit33

_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E21GetSchemeStringLengthEv.exit33: ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E21GetSchemeStringLengthEv.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 1 %i.ae, i64 %i.ah, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ah ; 2 uses
  store i8 0, ptr %i.aj, align 1, !tbaa !60
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1 ; 3 uses
  store ptr %i.ak, ptr %i.s, align 8, !tbaa !326
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !326 ; 3 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetAuthStringLengthEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E21GetSchemeStringLengthEv.exit33
  %i.ao = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.am) #39
  %i.ap = and i64 %i.ao, 4294967295
  br label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetAuthStringLengthEv.exit

_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetAuthStringLengthEv.exit: ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E21GetSchemeStringLengthEv.exit33, %bb.f
  %i.aq = phi i64 [ %i.ap, %bb.f ], [ 0, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E21GetSchemeStringLengthEv.exit33 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr align 1 %i.am, i64 %i.aq, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.aq ; 2 uses
  store i8 0, ptr %i.ar, align 1, !tbaa !60
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1 ; 5 uses
  store ptr %i.as, ptr %i.u, align 8, !tbaa !327
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !327 ; 3 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetAuthStringLengthEv.exit
  %i.aw = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.au) #39
  %i.ax = and i64 %i.aw, 4294967295
  br label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit

_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit: ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetAuthStringLengthEv.exit, %bb.g
  %i.ay = phi i64 [ %i.ax, %bb.g ], [ 0, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetAuthStringLengthEv.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.as, ptr align 1 %i.au, i64 %i.ay, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ay ; 2 uses
  store i8 0, ptr %i.az, align 1, !tbaa !60
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1 ; 3 uses
  store ptr %i.ba, ptr %i.w, align 8, !tbaa !328
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !328 ; 3 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E20GetQueryStringLengthEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit
  %i.be = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bc) #39
  %i.bf = and i64 %i.be, 4294967295
  br label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E20GetQueryStringLengthEv.exit

_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E20GetQueryStringLengthEv.exit: ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit, %bb.h
  %i.bg = phi i64 [ %i.bf, %bb.h ], [ 0, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ba, ptr align 1 %i.bc, i64 %i.bg, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bg ; 2 uses
  store i8 0, ptr %i.bh, align 1, !tbaa !60
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  store ptr %i.bi, ptr %i.y, align 8, !tbaa !329
  %i.bj = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.as) #39
  %i.bk = and i64 %i.bj, 4294967295               ; 3 uses
  %.not42.i = icmp eq i64 %i.bk, 0
  br i1 %.not42.i, label %_ZN9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17RemoveDotSegmentsEv.exit, label %.preheader38.i

.preheader38.i:                                   ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E20GetQueryStringLengthEv.exit, %.loopexit.i
  %.03441.i = phi i64 [ %.2.i, %.loopexit.i ], [ 0, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E20GetQueryStringLengthEv.exit ] ; 7 uses
  %.03540.i = phi i64 [ %i.cj, %.loopexit.i ], [ 0, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E20GetQueryStringLengthEv.exit ] ; 3 uses
  %i.bl = load ptr, ptr %i.u, align 8, !tbaa !327 ; 3 uses
  %invariant.gep.i = getelementptr i8, ptr %i.bl, i64 %.03540.i ; 5 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.preheader38.i
  %.03339.i = phi i64 [ 0, %.preheader38.i ], [ %i.bo, %bb.j ] ; 3 uses
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %.03339.i
  %i.bm = load i8, ptr %gep.i, align 1, !tbaa !60
  %i.bn = icmp eq i8 %i.bm, 47                    ; 2 uses
  br i1 %i.bn, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bo = add nuw nsw i64 %.03339.i, 1            ; 3 uses
  %i.bp = add i64 %i.bo, %.03540.i
  %i.bq = icmp ult i64 %i.bp, %i.bk
  br i1 %i.bq, label %bb.i, label %bb.k, !llvm.loop !31

bb.k:                                             ; preds = %bb.j, %bb.i
  %.033.lcssa.i = phi i64 [ %i.bo, %bb.j ], [ %.03339.i, %bb.i ] ; 4 uses
  switch i64 %.033.lcssa.i, label %bb.p [
    i64 2, label %bb.l
    i64 1, label %bb.o
  ]

bb.l:                                             ; preds = %bb.k
  %i.br = load i8, ptr %invariant.gep.i, align 1, !tbaa !60
  %i.bs = icmp eq i8 %i.br, 46
  br i1 %i.bs, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bt = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !60
  %i.bv = icmp eq i8 %i.bu, 46
  br i1 %i.bv, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bw = icmp ugt i64 %.03441.i, 1
  br i1 %i.bw, label %.preheader.i.preheader, label %.loopexit.i

.preheader.i.preheader:                           ; preds = %bb.n
  %.0.i158 = add i64 %.03441.i, -1
  br label %.lr.ph162

.preheader.i:                                     ; preds = %.lr.ph162
  %.0.i = add i64 %.0.i161, -1                    ; 2 uses
  %.not.i34 = icmp eq i64 %.0.i, 0
  br i1 %.not.i34, label %.loopexit.i, label %.lr.ph162, !llvm.loop !32

.lr.ph162:                                        ; preds = %.preheader.i.preheader, %.preheader.i
  %.0.i161 = phi i64 [ %.0.i158, %.preheader.i.preheader ], [ %.0.i, %.preheader.i ] ; 3 uses
  %.0.in.i160 = phi i64 [ %.03441.i, %.preheader.i.preheader ], [ %.0.i161, %.preheader.i ]
  %i.bx = getelementptr i8, ptr %i.bl, i64 %.0.in.i160
  %i.by = getelementptr i8, ptr %i.bx, i64 -2
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !60
  %i.ca = icmp eq i8 %i.bz, 47
  br i1 %i.ca, label %.loopexit.i, label %.preheader.i, !llvm.loop !32

bb.o:                                             ; preds = %bb.k
  %i.cb = load i8, ptr %invariant.gep.i, align 1, !tbaa !60
  %i.cc = icmp eq i8 %i.cb, 46
  br i1 %i.cc, label %.loopexit.i, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m, %bb.l, %bb.k
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.03441.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cd, ptr align 1 %invariant.gep.i, i64 %.033.lcssa.i, i1 false)
  %i.ce = add i64 %.033.lcssa.i, %.03441.i        ; 3 uses
  br i1 %i.bn, label %bb.q, label %.loopexit.i

bb.q:                                             ; preds = %bb.p
  %i.cf = load ptr, ptr %i.u, align 8, !tbaa !327
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ce
  store i8 47, ptr %i.cg, align 1, !tbaa !60
  %i.ch = add i64 %i.ce, 1
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph162, %.preheader.i, %bb.q, %bb.p, %bb.o, %bb.n
  %.2.i = phi i64 [ %i.ce, %bb.p ], [ %.03441.i, %bb.o ], [ %i.ch, %bb.q ], [ %.03441.i, %bb.n ], [ %.0.i161, %.lr.ph162 ], [ 0, %.preheader.i ] ; 2 uses
  %i.ci = add i64 %.03540.i, 1
  %i.cj = add i64 %i.ci, %.033.lcssa.i            ; 2 uses
  %i.ck = icmp ult i64 %i.cj, %i.bk
  br i1 %i.ck, label %.preheader38.i, label %._crit_edge.loopexit.i, !llvm.loop !33

._crit_edge.loopexit.i:                           ; preds = %.loopexit.i
  %.pre.i = load ptr, ptr %i.u, align 8, !tbaa !327
  br label %_ZN9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17RemoveDotSegmentsEv.exit

_ZN9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17RemoveDotSegmentsEv.exit: ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E20GetQueryStringLengthEv.exit, %._crit_edge.loopexit.i
  %i.cl = phi ptr [ %i.as, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E20GetQueryStringLengthEv.exit ], [ %.pre.i, %._crit_edge.loopexit.i ]
  %.034.lcssa.i = phi i64 [ 0, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E20GetQueryStringLengthEv.exit ], [ %.2.i, %._crit_edge.loopexit.i ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.034.lcssa.i
  store i8 0, ptr %i.cm, align 1, !tbaa !60
  br label %bb.bf

bb.r:                                             ; preds = %bb.d
  %i.cn = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_ED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) #33
  resume { ptr, i32 } %i.cn

_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E21GetSchemeStringLengthEv.exit.thread: ; preds = %bb.e, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E21GetSchemeStringLengthEv.exit
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !194 ; 3 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E21GetSchemeStringLengthEv.exit35, label %bb.s

bb.s:                                             ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E21GetSchemeStringLengthEv.exit.thread
  %i.cr = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cp) #39
  %i.cs = and i64 %i.cr, 4294967295
  br label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E21GetSchemeStringLengthEv.exit35

_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E21GetSchemeStringLengthEv.exit35: ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E21GetSchemeStringLengthEv.exit.thread, %bb.s
  %i.ct = phi i64 [ %i.cs, %bb.s ], [ 0, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E21GetSchemeStringLengthEv.exit.thread ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %i.cp, i64 %i.ct, i1 false)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ct ; 2 uses
  store i8 0, ptr %i.cu, align 1, !tbaa !60
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 1 ; 5 uses
  store ptr %i.cv, ptr %i.s, align 8, !tbaa !326
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !326 ; 3 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetAuthStringLengthEv.exit36.thread, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetAuthStringLengthEv.exit36

_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetAuthStringLengthEv.exit36: ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E21GetSchemeStringLengthEv.exit35
  %i.cz = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cx) #39
  %i.da = and i64 %i.cz, 4294967295               ; 3 uses
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetAuthStringLengthEv.exit36.thread, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetAuthStringLengthEv.exit37

_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetAuthStringLengthEv.exit37: ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetAuthStringLengthEv.exit36
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cv, ptr nonnull align 1 %i.cx, i64 %i.da, i1 false)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.da ; 2 uses
  store i8 0, ptr %i.dc, align 1, !tbaa !60
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 1 ; 5 uses
  store ptr %i.dd, ptr %i.u, align 8, !tbaa !327
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !327 ; 3 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit38, label %bb.t

bb.t:                                             ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetAuthStringLengthEv.exit37
  %i.dh = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.df) #39
  %i.di = and i64 %i.dh, 4294967295
  br label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit38

_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit38: ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetAuthStringLengthEv.exit37, %bb.t
  %i.dj = phi i64 [ %i.di, %bb.t ], [ 0, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetAuthStringLengthEv.exit37 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dd, ptr align 1 %i.df, i64 %i.dj, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dj ; 2 uses
  store i8 0, ptr %i.dk, align 1, !tbaa !60
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 1 ; 3 uses
  store ptr %i.dl, ptr %i.w, align 8, !tbaa !328
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !328 ; 3 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E20GetQueryStringLengthEv.exit39, label %bb.u

bb.u:                                             ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit38
  %i.dp = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dn) #39
  %i.dq = and i64 %i.dp, 4294967295
  br label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E20GetQueryStringLengthEv.exit39

_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E20GetQueryStringLengthEv.exit39: ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit38, %bb.u
  %i.dr = phi i64 [ %i.dq, %bb.u ], [ 0, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit38 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dl, ptr align 1 %i.dn, i64 %i.dr, i1 false)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dr ; 2 uses
  store i8 0, ptr %i.ds, align 1, !tbaa !60
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  store ptr %i.dt, ptr %i.y, align 8, !tbaa !329
  %i.du = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dd) #39
  %i.dv = and i64 %i.du, 4294967295               ; 3 uses
  %.not42.i40 = icmp eq i64 %i.dv, 0
  br i1 %.not42.i40, label %_ZN9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17RemoveDotSegmentsEv.exit57, label %.preheader38.i41

.preheader38.i41:                                 ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E20GetQueryStringLengthEv.exit39, %.loopexit.i48
  %.03441.i42 = phi i64 [ %.2.i49, %.loopexit.i48 ], [ 0, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E20GetQueryStringLengthEv.exit39 ] ; 7 uses
  %.03540.i43 = phi i64 [ %i.eu, %.loopexit.i48 ], [ 0, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E20GetQueryStringLengthEv.exit39 ] ; 3 uses
  %i.dw = load ptr, ptr %i.u, align 8, !tbaa !327 ; 3 uses
  %invariant.gep.i44 = getelementptr i8, ptr %i.dw, i64 %.03540.i43 ; 5 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %.preheader38.i41
  %.03339.i45 = phi i64 [ 0, %.preheader38.i41 ], [ %i.dz, %bb.w ] ; 3 uses
  %gep.i46 = getelementptr i8, ptr %invariant.gep.i44, i64 %.03339.i45
  %i.dx = load i8, ptr %gep.i46, align 1, !tbaa !60
  %i.dy = icmp eq i8 %i.dx, 47                    ; 2 uses
  br i1 %i.dy, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dz = add nuw nsw i64 %.03339.i45, 1          ; 3 uses
  %i.ea = add i64 %i.dz, %.03540.i43
  %i.eb = icmp ult i64 %i.ea, %i.dv
  br i1 %i.eb, label %bb.v, label %bb.x, !llvm.loop !31

bb.x:                                             ; preds = %bb.w, %bb.v
  %.033.lcssa.i47 = phi i64 [ %i.dz, %bb.w ], [ %.03339.i45, %bb.v ] ; 4 uses
  switch i64 %.033.lcssa.i47, label %bb.ac [
    i64 2, label %bb.y
    i64 1, label %bb.ab
  ]

bb.y:                                             ; preds = %bb.x
  %i.ec = load i8, ptr %invariant.gep.i44, align 1, !tbaa !60
  %i.ed = icmp eq i8 %i.ec, 46
  br i1 %i.ed, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.ee = getelementptr inbounds nuw i8, ptr %invariant.gep.i44, i64 1
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !60
  %i.eg = icmp eq i8 %i.ef, 46
  br i1 %i.eg, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.eh = icmp ugt i64 %.03441.i42, 1
  br i1 %i.eh, label %.preheader.i53.preheader, label %.loopexit.i48

.preheader.i53.preheader:                         ; preds = %bb.aa
  %.0.i55164 = add i64 %.03441.i42, -1
  br label %.lr.ph168

.preheader.i53:                                   ; preds = %.lr.ph168
  %.0.i55 = add i64 %.0.i55167, -1                ; 2 uses
  %.not.i56 = icmp eq i64 %.0.i55, 0
  br i1 %.not.i56, label %.loopexit.i48, label %.lr.ph168, !llvm.loop !32

.lr.ph168:                                        ; preds = %.preheader.i53.preheader, %.preheader.i53
  %.0.i55167 = phi i64 [ %.0.i55164, %.preheader.i53.preheader ], [ %.0.i55, %.preheader.i53 ] ; 3 uses
  %.0.in.i54166 = phi i64 [ %.03441.i42, %.preheader.i53.preheader ], [ %.0.i55167, %.preheader.i53 ]
  %i.ei = getelementptr i8, ptr %i.dw, i64 %.0.in.i54166
  %i.ej = getelementptr i8, ptr %i.ei, i64 -2
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !60
  %i.el = icmp eq i8 %i.ek, 47
  br i1 %i.el, label %.loopexit.i48, label %.preheader.i53, !llvm.loop !32

bb.ab:                                            ; preds = %bb.x
  %i.em = load i8, ptr %invariant.gep.i44, align 1, !tbaa !60
  %i.en = icmp eq i8 %i.em, 46
  br i1 %i.en, label %.loopexit.i48, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z, %bb.y, %bb.x
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.03441.i42
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.eo, ptr align 1 %invariant.gep.i44, i64 %.033.lcssa.i47, i1 false)
  %i.ep = add i64 %.033.lcssa.i47, %.03441.i42    ; 3 uses
  br i1 %i.dy, label %bb.ad, label %.loopexit.i48

bb.ad:                                            ; preds = %bb.ac
  %i.eq = load ptr, ptr %i.u, align 8, !tbaa !327
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.ep
  store i8 47, ptr %i.er, align 1, !tbaa !60
  %i.es = add i64 %i.ep, 1
  br label %.loopexit.i48

.loopexit.i48:                                    ; preds = %.lr.ph168, %.preheader.i53, %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %.2.i49 = phi i64 [ %i.ep, %bb.ac ], [ %.03441.i42, %bb.ab ], [ %i.es, %bb.ad ], [ %.03441.i42, %bb.aa ], [ %.0.i55167, %.lr.ph168 ], [ 0, %.preheader.i53 ] ; 2 uses
  %i.et = add i64 %.03540.i43, 1
  %i.eu = add i64 %i.et, %.033.lcssa.i47          ; 2 uses
  %i.ev = icmp ult i64 %i.eu, %i.dv
  br i1 %i.ev, label %.preheader38.i41, label %._crit_edge.loopexit.i50, !llvm.loop !33

._crit_edge.loopexit.i50:                         ; preds = %.loopexit.i48
  %.pre.i51 = load ptr, ptr %i.u, align 8, !tbaa !327
  br label %_ZN9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17RemoveDotSegmentsEv.exit57

_ZN9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17RemoveDotSegmentsEv.exit57: ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E20GetQueryStringLengthEv.exit39, %._crit_edge.loopexit.i50
  %i.ew = phi ptr [ %i.dd, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E20GetQueryStringLengthEv.exit39 ], [ %.pre.i51, %._crit_edge.loopexit.i50 ]
  %.034.lcssa.i52 = phi i64 [ 0, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E20GetQueryStringLengthEv.exit39 ], [ %.2.i49, %._crit_edge.loopexit.i50 ]
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %.034.lcssa.i52
  store i8 0, ptr %i.ex, align 1, !tbaa !60
  br label %bb.bf

_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetAuthStringLengthEv.exit36.thread: ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E21GetSchemeStringLengthEv.exit35, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetAuthStringLengthEv.exit36
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !326 ; 4 uses
  %i.fa = icmp eq ptr %i.ez, null                 ; 2 uses
  br i1 %i.fa, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetAuthStringLengthEv.exit58, label %bb.ae

bb.ae:                                            ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetAuthStringLengthEv.exit36.thread
  %i.fb = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ez) #39
  %i.fc = and i64 %i.fb, 4294967295
  br label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetAuthStringLengthEv.exit58

_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetAuthStringLengthEv.exit58: ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetAuthStringLengthEv.exit36.thread, %bb.ae
  %i.fd = phi i64 [ %i.fc, %bb.ae ], [ 0, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetAuthStringLengthEv.exit36.thread ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cv, ptr align 1 %i.ez, i64 %i.fd, i1 false)
  %i.fe = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.fd ; 2 uses
  store i8 0, ptr %i.fe, align 1, !tbaa !60
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 1 ; 11 uses
  store ptr %i.ff, ptr %i.u, align 8, !tbaa !327
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !327 ; 7 uses
  %i.fi = icmp eq ptr %i.fh, null
  br i1 %i.fi, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit59.thread, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit59

_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit59: ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetAuthStringLengthEv.exit58
  %i.fj = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fh) #39
  %i.fk = and i64 %i.fj, 4294967295
  %i.fl = icmp eq i64 %i.fk, 0
  br i1 %i.fl, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit59.thread, label %bb.ah

_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit59.thread: ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetAuthStringLengthEv.exit58, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit59
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !327 ; 3 uses
  %i.fo = icmp eq ptr %i.fn, null
  br i1 %i.fo, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit60, label %bb.af

bb.af:                                            ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit59.thread
  %i.fp = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fn) #39
  %i.fq = and i64 %i.fp, 4294967295
  br label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit60

_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit60: ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit59.thread, %bb.af
  %i.fr = phi i64 [ %i.fq, %bb.af ], [ 0, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit59.thread ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ff, ptr align 1 %i.fn, i64 %i.fr, i1 false)
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fr ; 2 uses
  store i8 0, ptr %i.fs, align 1, !tbaa !60
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 1 ; 5 uses
  store ptr %i.ft, ptr %i.w, align 8, !tbaa !328
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !328 ; 3 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E20GetQueryStringLengthEv.exit61.thread, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E20GetQueryStringLengthEv.exit61

_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E20GetQueryStringLengthEv.exit61: ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit60
  %i.fx = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fv) #39
  %i.fy = and i64 %i.fx, 4294967295               ; 3 uses
  %i.fz = icmp eq i64 %i.fy, 0
  br i1 %i.fz, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E20GetQueryStringLengthEv.exit61.thread, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E20GetQueryStringLengthEv.exit63

_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E20GetQueryStringLengthEv.exit61.thread: ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit60, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E20GetQueryStringLengthEv.exit61
  %i.ga = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !328 ; 3 uses
  %i.gc = icmp eq ptr %i.gb, null
  br i1 %i.gc, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E20GetQueryStringLengthEv.exit62, label %bb.ag

bb.ag:                                            ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E20GetQueryStringLengthEv.exit61.thread
  %i.gd = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gb) #39
  %i.ge = and i64 %i.gd, 4294967295
  br label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E20GetQueryStringLengthEv.exit62

_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E20GetQueryStringLengthEv.exit62: ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E20GetQueryStringLengthEv.exit61.thread, %bb.ag
  %i.gf = phi i64 [ %i.ge, %bb.ag ], [ 0, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E20GetQueryStringLengthEv.exit61.thread ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ft, ptr align 1 %i.gb, i64 %i.gf, i1 false)
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.gf ; 2 uses
  store i8 0, ptr %i.gg, align 1, !tbaa !60
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 1
  store ptr %i.gh, ptr %i.y, align 8, !tbaa !329
  br label %bb.bf

_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E20GetQueryStringLengthEv.exit63: ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E20GetQueryStringLengthEv.exit61
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ft, ptr nonnull align 1 %i.fv, i64 %i.fy, i1 false)
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fy ; 2 uses
  store i8 0, ptr %i.gi, align 1, !tbaa !60
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 1
  store ptr %i.gj, ptr %i.y, align 8, !tbaa !329
  br label %bb.bf

bb.ah:                                            ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit59
  %i.gk = load i8, ptr %i.fh, align 1, !tbaa !60
  %i.gl = icmp eq i8 %i.gk, 47
  br i1 %i.gl, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit64, label %bb.ar

_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit64: ; preds = %bb.ah
  %i.gm = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fh) #39
  %i.gn = and i64 %i.gm, 4294967295               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ff, ptr nonnull align 1 %i.fh, i64 %i.gn, i1 false)
  %i.go = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.gn ; 2 uses
  store i8 0, ptr %i.go, align 1, !tbaa !60
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 1
  store ptr %i.gp, ptr %i.w, align 8, !tbaa !328
  %i.gq = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ff) #39
  %i.gr = and i64 %i.gq, 4294967295               ; 3 uses
  %.not42.i65 = icmp eq i64 %i.gr, 0
  br i1 %.not42.i65, label %_ZN9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17RemoveDotSegmentsEv.exit82, label %.preheader38.i66

.preheader38.i66:                                 ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit64, %.loopexit.i73
  %.03441.i67 = phi i64 [ %.2.i74, %.loopexit.i73 ], [ 0, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit64 ] ; 7 uses
  %.03540.i68 = phi i64 [ %i.hq, %.loopexit.i73 ], [ 0, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit64 ] ; 3 uses
  %i.gs = load ptr, ptr %i.u, align 8, !tbaa !327 ; 3 uses
  %invariant.gep.i69 = getelementptr i8, ptr %i.gs, i64 %.03540.i68 ; 5 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.aj, %.preheader38.i66
  %.03339.i70 = phi i64 [ 0, %.preheader38.i66 ], [ %i.gv, %bb.aj ] ; 3 uses
  %gep.i71 = getelementptr i8, ptr %invariant.gep.i69, i64 %.03339.i70
  %i.gt = load i8, ptr %gep.i71, align 1, !tbaa !60
  %i.gu = icmp eq i8 %i.gt, 47                    ; 2 uses
  br i1 %i.gu, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gv = add nuw nsw i64 %.03339.i70, 1          ; 3 uses
  %i.gw = add i64 %i.gv, %.03540.i68
  %i.gx = icmp ult i64 %i.gw, %i.gr
  br i1 %i.gx, label %bb.ai, label %bb.ak, !llvm.loop !31

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.033.lcssa.i72 = phi i64 [ %i.gv, %bb.aj ], [ %.03339.i70, %bb.ai ] ; 4 uses
  switch i64 %.033.lcssa.i72, label %bb.ap [
    i64 2, label %bb.al
    i64 1, label %bb.ao
  ]

bb.al:                                            ; preds = %bb.ak
  %i.gy = load i8, ptr %invariant.gep.i69, align 1, !tbaa !60
  %i.gz = icmp eq i8 %i.gy, 46
  br i1 %i.gz, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.ha = getelementptr inbounds nuw i8, ptr %invariant.gep.i69, i64 1
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !60
  %i.hc = icmp eq i8 %i.hb, 46
  br i1 %i.hc, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.hd = icmp ugt i64 %.03441.i67, 1
  br i1 %i.hd, label %.preheader.i78.preheader, label %.loopexit.i73

.preheader.i78.preheader:                         ; preds = %bb.an
  %.0.i80178 = add i64 %.03441.i67, -1
  br label %.lr.ph182

.preheader.i78:                                   ; preds = %.lr.ph182
  %.0.i80 = add i64 %.0.i80181, -1                ; 2 uses
  %.not.i81 = icmp eq i64 %.0.i80, 0
  br i1 %.not.i81, label %.loopexit.i73, label %.lr.ph182, !llvm.loop !32

.lr.ph182:                                        ; preds = %.preheader.i78.preheader, %.preheader.i78
  %.0.i80181 = phi i64 [ %.0.i80178, %.preheader.i78.preheader ], [ %.0.i80, %.preheader.i78 ] ; 3 uses
  %.0.in.i79180 = phi i64 [ %.03441.i67, %.preheader.i78.preheader ], [ %.0.i80181, %.preheader.i78 ]
  %i.he = getelementptr i8, ptr %i.gs, i64 %.0.in.i79180
  %i.hf = getelementptr i8, ptr %i.he, i64 -2
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !60
  %i.hh = icmp eq i8 %i.hg, 47
  br i1 %i.hh, label %.loopexit.i73, label %.preheader.i78, !llvm.loop !32

bb.ao:                                            ; preds = %bb.ak
  %i.hi = load i8, ptr %invariant.gep.i69, align 1, !tbaa !60
  %i.hj = icmp eq i8 %i.hi, 46
  br i1 %i.hj, label %.loopexit.i73, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.am, %bb.al, %bb.ak
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gs, i64 %.03441.i67
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.hk, ptr align 1 %invariant.gep.i69, i64 %.033.lcssa.i72, i1 false)
  %i.hl = add i64 %.033.lcssa.i72, %.03441.i67    ; 3 uses
  br i1 %i.gu, label %bb.aq, label %.loopexit.i73

bb.aq:                                            ; preds = %bb.ap
  %i.hm = load ptr, ptr %i.u, align 8, !tbaa !327
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.hl
  store i8 47, ptr %i.hn, align 1, !tbaa !60
  %i.ho = add i64 %i.hl, 1
  br label %.loopexit.i73

.loopexit.i73:                                    ; preds = %.lr.ph182, %.preheader.i78, %bb.aq, %bb.ap, %bb.ao, %bb.an
  %.2.i74 = phi i64 [ %i.hl, %bb.ap ], [ %.03441.i67, %bb.ao ], [ %i.ho, %bb.aq ], [ %.03441.i67, %bb.an ], [ %.0.i80181, %.lr.ph182 ], [ 0, %.preheader.i78 ] ; 2 uses
  %i.hp = add i64 %.03540.i68, 1
  %i.hq = add i64 %i.hp, %.033.lcssa.i72          ; 2 uses
  %i.hr = icmp ult i64 %i.hq, %i.gr
  br i1 %i.hr, label %.preheader38.i66, label %._crit_edge.loopexit.i75, !llvm.loop !33

._crit_edge.loopexit.i75:                         ; preds = %.loopexit.i73
  %.pre.i76 = load ptr, ptr %i.u, align 8, !tbaa !327
  br label %_ZN9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17RemoveDotSegmentsEv.exit82

_ZN9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17RemoveDotSegmentsEv.exit82: ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit64, %._crit_edge.loopexit.i75
  %i.hs = phi ptr [ %i.ff, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit64 ], [ %.pre.i76, %._crit_edge.loopexit.i75 ]
  %.034.lcssa.i77 = phi i64 [ 0, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit64 ], [ %.2.i74, %._crit_edge.loopexit.i75 ]
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 %.034.lcssa.i77
  store i8 0, ptr %i.ht, align 1, !tbaa !60
  br label %bb.bd

bb.ar:                                            ; preds = %bb.ah
  br i1 %i.fa, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetAuthStringLengthEv.exit83.thread, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetAuthStringLengthEv.exit83

_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetAuthStringLengthEv.exit83: ; preds = %bb.ar
  %i.hu = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ez) #39
  %i.hv = and i64 %i.hu, 4294967295
  %i.hw = icmp eq i64 %i.hv, 0
  br i1 %i.hw, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetAuthStringLengthEv.exit83.thread, label %bb.as

bb.as:                                            ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetAuthStringLengthEv.exit83
  %i.hx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !327 ; 2 uses
  %i.hz = icmp eq ptr %i.hy, null
  br i1 %i.hz, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit84.thread, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit84

_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit84: ; preds = %bb.as
  %i.ia = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hy) #39
  %i.ib = and i64 %i.ia, 4294967295
  %i.ic = icmp eq i64 %i.ib, 0
  br i1 %i.ic, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit84.thread, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetAuthStringLengthEv.exit83.thread

_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit84.thread: ; preds = %bb.as, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit84
  store i8 47, ptr %i.ff, align 1, !tbaa !60
  br label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetAuthStringLengthEv.exit83.thread

_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetAuthStringLengthEv.exit83.thread: ; preds = %bb.ar, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit84.thread, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit84, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetAuthStringLengthEv.exit83
  %.028 = phi i64 [ 0, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetAuthStringLengthEv.exit83 ], [ 1, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit84.thread ], [ 0, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit84 ], [ 0, %bb.ar ]
  %i.id = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !327 ; 4 uses
  %i.if = icmp eq ptr %i.ie, null
  br i1 %i.if, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit86, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit85

_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit85: ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetAuthStringLengthEv.exit83.thread
  %i.ig = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ie) #39
  %i.ih = and i64 %i.ig, 4294967295               ; 2 uses
  %.not109 = icmp eq i64 %i.ih, 0
  br i1 %.not109, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit86, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit85, %bb.at
  %.0110 = phi i64 [ %i.im, %bb.at ], [ %i.ih, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit85 ] ; 3 uses
  %i.ii = getelementptr i8, ptr %i.ie, i64 %.0110
  %i.ij = getelementptr i8, ptr %i.ii, i64 -1
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !60
  %i.il = icmp eq i8 %i.ik, 47
  br i1 %i.il, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit86, label %bb.at

bb.at:                                            ; preds = %.lr.ph
  %i.im = add nsw i64 %.0110, -1                  ; 2 uses
  %.not = icmp eq i64 %i.im, 0
  br i1 %.not, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit86, label %.lr.ph, !llvm.loop !1369

_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit86: ; preds = %bb.at, %.lr.ph, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetAuthStringLengthEv.exit83.thread, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit85
  %.0.lcssa = phi i64 [ 0, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit85 ], [ 0, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetAuthStringLengthEv.exit83.thread ], [ 0, %bb.at ], [ %.0110, %.lr.ph ] ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ff, i64 %.028 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.in, ptr align 1 %i.ie, i64 %.0.lcssa, i1 false)
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 %.0.lcssa ; 2 uses
  %i.ip = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fh) #39
  %i.iq = and i64 %i.ip, 4294967295               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.io, ptr nonnull align 1 %i.fh, i64 %i.iq, i1 false)
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.iq ; 2 uses
  store i8 0, ptr %i.ir, align 1, !tbaa !60
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 1
  store ptr %i.is, ptr %i.w, align 8, !tbaa !328
  %i.it = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ff) #39
  %i.iu = and i64 %i.it, 4294967295               ; 3 uses
  %.not42.i87 = icmp eq i64 %i.iu, 0
  br i1 %.not42.i87, label %_ZN9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17RemoveDotSegmentsEv.exit104, label %.preheader38.i88

.preheader38.i88:                                 ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit86, %.loopexit.i95
  %.03441.i89 = phi i64 [ %.2.i96, %.loopexit.i95 ], [ 0, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit86 ] ; 7 uses
  %.03540.i90 = phi i64 [ %i.jt, %.loopexit.i95 ], [ 0, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit86 ] ; 3 uses
  %i.iv = load ptr, ptr %i.u, align 8, !tbaa !327 ; 3 uses
  %invariant.gep.i91 = getelementptr i8, ptr %i.iv, i64 %.03540.i90 ; 5 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.av, %.preheader38.i88
  %.03339.i92 = phi i64 [ 0, %.preheader38.i88 ], [ %i.iy, %bb.av ] ; 3 uses
  %gep.i93 = getelementptr i8, ptr %invariant.gep.i91, i64 %.03339.i92
  %i.iw = load i8, ptr %gep.i93, align 1, !tbaa !60
  %i.ix = icmp eq i8 %i.iw, 47                    ; 2 uses
  br i1 %i.ix, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.iy = add nuw nsw i64 %.03339.i92, 1          ; 3 uses
  %i.iz = add i64 %i.iy, %.03540.i90
  %i.ja = icmp ult i64 %i.iz, %i.iu
  br i1 %i.ja, label %bb.au, label %bb.aw, !llvm.loop !31

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.033.lcssa.i94 = phi i64 [ %i.iy, %bb.av ], [ %.03339.i92, %bb.au ] ; 4 uses
  switch i64 %.033.lcssa.i94, label %bb.bb [
    i64 2, label %bb.ax
    i64 1, label %bb.ba
  ]

bb.ax:                                            ; preds = %bb.aw
  %i.jb = load i8, ptr %invariant.gep.i91, align 1, !tbaa !60
  %i.jc = icmp eq i8 %i.jb, 46
  br i1 %i.jc, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  %i.jd = getelementptr inbounds nuw i8, ptr %invariant.gep.i91, i64 1
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !60
  %i.jf = icmp eq i8 %i.je, 46
  br i1 %i.jf, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.jg = icmp ugt i64 %.03441.i89, 1
  br i1 %i.jg, label %.preheader.i100.preheader, label %.loopexit.i95

.preheader.i100.preheader:                        ; preds = %bb.az
  %.0.i102171 = add i64 %.03441.i89, -1
  br label %.lr.ph175

.preheader.i100:                                  ; preds = %.lr.ph175
  %.0.i102 = add i64 %.0.i102174, -1              ; 2 uses
  %.not.i103 = icmp eq i64 %.0.i102, 0
  br i1 %.not.i103, label %.loopexit.i95, label %.lr.ph175, !llvm.loop !32

.lr.ph175:                                        ; preds = %.preheader.i100.preheader, %.preheader.i100
  %.0.i102174 = phi i64 [ %.0.i102171, %.preheader.i100.preheader ], [ %.0.i102, %.preheader.i100 ] ; 3 uses
  %.0.in.i101173 = phi i64 [ %.03441.i89, %.preheader.i100.preheader ], [ %.0.i102174, %.preheader.i100 ]
  %i.jh = getelementptr i8, ptr %i.iv, i64 %.0.in.i101173
  %i.ji = getelementptr i8, ptr %i.jh, i64 -2
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !60
  %i.jk = icmp eq i8 %i.jj, 47
  br i1 %i.jk, label %.loopexit.i95, label %.preheader.i100, !llvm.loop !32

bb.ba:                                            ; preds = %bb.aw
  %i.jl = load i8, ptr %invariant.gep.i91, align 1, !tbaa !60
  %i.jm = icmp eq i8 %i.jl, 46
  br i1 %i.jm, label %.loopexit.i95, label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.ay, %bb.ax, %bb.aw
  %i.jn = getelementptr inbounds nuw i8, ptr %i.iv, i64 %.03441.i89
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.jn, ptr align 1 %invariant.gep.i91, i64 %.033.lcssa.i94, i1 false)
  %i.jo = add i64 %.033.lcssa.i94, %.03441.i89    ; 3 uses
  br i1 %i.ix, label %bb.bc, label %.loopexit.i95

bb.bc:                                            ; preds = %bb.bb
  %i.jp = load ptr, ptr %i.u, align 8, !tbaa !327
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.jo
  store i8 47, ptr %i.jq, align 1, !tbaa !60
  %i.jr = add i64 %i.jo, 1
  br label %.loopexit.i95

.loopexit.i95:                                    ; preds = %.lr.ph175, %.preheader.i100, %bb.bc, %bb.bb, %bb.ba, %bb.az
  %.2.i96 = phi i64 [ %i.jo, %bb.bb ], [ %.03441.i89, %bb.ba ], [ %i.jr, %bb.bc ], [ %.03441.i89, %bb.az ], [ %.0.i102174, %.lr.ph175 ], [ 0, %.preheader.i100 ] ; 2 uses
  %i.js = add i64 %.03540.i90, 1
  %i.jt = add i64 %i.js, %.033.lcssa.i94          ; 2 uses
  %i.ju = icmp ult i64 %i.jt, %i.iu
  br i1 %i.ju, label %.preheader38.i88, label %._crit_edge.loopexit.i97, !llvm.loop !33

._crit_edge.loopexit.i97:                         ; preds = %.loopexit.i95
  %.pre.i98 = load ptr, ptr %i.u, align 8, !tbaa !327
  br label %_ZN9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17RemoveDotSegmentsEv.exit104

_ZN9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17RemoveDotSegmentsEv.exit104: ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit86, %._crit_edge.loopexit.i97
  %i.jv = phi ptr [ %i.ff, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit86 ], [ %.pre.i98, %._crit_edge.loopexit.i97 ]
  %.034.lcssa.i99 = phi i64 [ 0, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetPathStringLengthEv.exit86 ], [ %.2.i96, %._crit_edge.loopexit.i97 ]
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 %.034.lcssa.i99
  store i8 0, ptr %i.jw, align 1, !tbaa !60
  br label %bb.bd

bb.bd:                                            ; preds = %_ZN9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17RemoveDotSegmentsEv.exit104, %_ZN9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17RemoveDotSegmentsEv.exit82
  %i.jx = load ptr, ptr %i.w, align 8, !tbaa !328 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !328 ; 3 uses
  %i.ka = icmp eq ptr %i.jz, null
  br i1 %i.ka, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E20GetQueryStringLengthEv.exit105, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.kb = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jz) #39
  %i.kc = and i64 %i.kb, 4294967295
  br label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E20GetQueryStringLengthEv.exit105

_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E20GetQueryStringLengthEv.exit105: ; preds = %bb.bd, %bb.be
  %i.kd = phi i64 [ %i.kc, %bb.be ], [ 0, %bb.bd ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jx, ptr align 1 %i.jz, i64 %i.kd, i1 false)
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jx, i64 %i.kd ; 2 uses
  store i8 0, ptr %i.ke, align 1, !tbaa !60
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 1
  store ptr %i.kf, ptr %i.y, align 8, !tbaa !329
  br label %bb.bf

bb.bf:                                            ; preds = %_ZN9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17RemoveDotSegmentsEv.exit57, %_ZN9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E17RemoveDotSegmentsEv.exit, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E20GetQueryStringLengthEv.exit62, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E20GetQueryStringLengthEv.exit63, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E20GetQueryStringLengthEv.exit105
  %i.kg = load ptr, ptr %i.y, align 8, !tbaa !329 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !329 ; 3 uses
  %i.kj = icmp eq ptr %i.ki, null
  br i1 %i.kj, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetFragStringLengthEv.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.kk = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ki) #39
  %i.kl = and i64 %i.kk, 4294967295
  br label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetFragStringLengthEv.exit

_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetFragStringLengthEv.exit: ; preds = %bb.bf, %bb.bg
  %i.km = phi i64 [ %i.kl, %bb.bg ], [ 0, %bb.bf ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kg, ptr align 1 %i.ki, i64 %i.km, i1 false)
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.km ; 2 uses
  store i8 0, ptr %i.kn, align 1, !tbaa !60
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 1
  store ptr %i.ko, ptr %i.aa, align 8, !tbaa !330
  tail call void @_ZN9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E7SetBaseEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %i.kp = load ptr, ptr %i.aa, align 8, !tbaa !330 ; 5 uses
  %i.kq = icmp eq ptr %i.kp, null
  br i1 %i.kq, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetBaseStringLengthEv.exit.thread, label %bb.bh

_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetBaseStringLengthEv.exit.thread: ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetFragStringLengthEv.exit
  store ptr inttoptr (i64 1 to ptr), ptr %0, align 8, !tbaa !325
  br label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetBaseStringLengthEv.exit.i

bb.bh:                                            ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetFragStringLengthEv.exit
  %i.kr = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.kp) #39
  %i.ks = and i64 %i.kr, 4294967295
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.ks
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 1 ; 2 uses
  store ptr %i.ku, ptr %0, align 8, !tbaa !325
  %i.kv = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.kp) #39
  %i.kw = and i64 %i.kv, 4294967295
  br label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetBaseStringLengthEv.exit.i

_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetBaseStringLengthEv.exit.i: ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetBaseStringLengthEv.exit.thread, %bb.bh
  %i.kx = phi ptr [ %i.ku, %bb.bh ], [ inttoptr (i64 1 to ptr), %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetBaseStringLengthEv.exit.thread ] ; 2 uses
  %i.ky = phi i64 [ %i.kw, %bb.bh ], [ 0, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetBaseStringLengthEv.exit.thread ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kx, ptr align 1 %i.kp, i64 %i.ky, i1 false)
  %i.kz = load ptr, ptr %i.aa, align 8, !tbaa !330 ; 2 uses
  %i.la = icmp eq ptr %i.kz, null
  br i1 %i.la, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetBaseStringLengthEv.exit6.i, label %bb.bi

bb.bi:                                            ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetBaseStringLengthEv.exit.i
  %i.lb = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.kz) #39
  %i.lc = and i64 %i.lb, 4294967295
  br label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetBaseStringLengthEv.exit6.i

_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetBaseStringLengthEv.exit6.i: ; preds = %bb.bi, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetBaseStringLengthEv.exit.i
  %i.ld = phi i64 [ %i.lc, %bb.bi ], [ 0, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetBaseStringLengthEv.exit.i ]
  %i.le = getelementptr inbounds nuw i8, ptr %i.kx, i64 %i.ld ; 2 uses
  %i.lf = load ptr, ptr %i.y, align 8, !tbaa !329 ; 3 uses
  %i.lg = icmp eq ptr %i.lf, null
  br i1 %i.lg, label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetFragStringLengthEv.exit.i, label %bb.bj

bb.bj:                                            ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetBaseStringLengthEv.exit6.i
  %i.lh = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.lf) #39
  %i.li = and i64 %i.lh, 4294967295
  br label %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetFragStringLengthEv.exit.i

_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetFragStringLengthEv.exit.i: ; preds = %bb.bj, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetBaseStringLengthEv.exit6.i
  %i.lj = phi i64 [ %i.li, %bb.bj ], [ 0, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetBaseStringLengthEv.exit6.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.le, ptr align 1 %i.lf, i64 %i.lj, i1 false)
  %i.lk = load ptr, ptr %i.y, align 8, !tbaa !329 ; 2 uses
  %i.ll = icmp eq ptr %i.lk, null
  br i1 %i.ll, label %_ZN9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E6SetUriEv.exit, label %bb.bk

bb.bk:                                            ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetFragStringLengthEv.exit.i
  %i.lm = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.lk) #39
  %i.ln = and i64 %i.lm, 4294967295
  br label %_ZN9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E6SetUriEv.exit

_ZN9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E6SetUriEv.exit: ; preds = %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetFragStringLengthEv.exit.i, %bb.bk
  %i.lo = phi i64 [ %i.ln, %bb.bk ], [ 0, %_ZNK9rapidjson10GenericUriINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E19GetFragStringLengthEv.exit.i ]
  %i.lp = getelementptr inbounds nuw i8, ptr %i.le, i64 %i.lo
  store i8 0, ptr %i.lp, align 1, !tbaa !60
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE7AddTypeERKS9_(ptr noundef nonnull align 8 dereferenceable(419) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetNullStringEvE1v acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetNullStringEv.exit, !prof !200

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetNullStringEvE1v) #33
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetNullStringEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetNullStringEvE1v, i8 0, i64 16, i1 false)
  store i16 1029, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetNullStringEvE1v, i64 14), align 2, !tbaa !60
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetNullStringEvE1v, i64 8), align 8, !tbaa !60
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = and i64 %i.e, -281474976710656
  %i.g = or i64 %i.f, ptrtoint (ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetNullStringEvE1s to i64)
  %i.h = inttoptr i64 %i.g to ptr
  store ptr %i.h, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetNullStringEvE1v, i64 8), align 8, !tbaa !60
  store i32 4, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetNullStringEvE1v, align 8, !tbaa !60
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetNullStringEvE1v) #33
  br label %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetNullStringEv.exit

_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetNullStringEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.i = tail call noundef zeroext i1 @_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEeqIS5_EEbRKNS0_IS2_T_EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetNullStringEvE1v)
  br i1 %i.i, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetNullStringEv.exit
  %i.j = load atomic i8, ptr @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE16GetBooleanStringEvE1v acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.e, label %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE16GetBooleanStringEv.exit, !prof !200

bb.e:                                             ; preds = %bb.d
  %i.l = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE16GetBooleanStringEvE1v) #33
  %.not.i8 = icmp eq i32 %i.l, 0
  br i1 %.not.i8, label %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE16GetBooleanStringEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE16GetBooleanStringEvE1v, i8 0, i64 16, i1 false)
  store i16 1029, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE16GetBooleanStringEvE1v, i64 14), align 2, !tbaa !60
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE16GetBooleanStringEvE1v, i64 8), align 8, !tbaa !60
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = and i64 %i.n, -281474976710656
  %i.p = or i64 %i.o, ptrtoint (ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE16GetBooleanStringEvE1s to i64)
  %i.q = inttoptr i64 %i.p to ptr
  store ptr %i.q, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE16GetBooleanStringEvE1v, i64 8), align 8, !tbaa !60
  store i32 7, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE16GetBooleanStringEvE1v, align 8, !tbaa !60
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE16GetBooleanStringEvE1v) #33
  br label %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE16GetBooleanStringEv.exit

_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE16GetBooleanStringEv.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.r = tail call noundef zeroext i1 @_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEeqIS5_EEbRKNS0_IS2_T_EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE16GetBooleanStringEvE1v)
  br i1 %i.r, label %.sink.split, label %bb.g

bb.g:                                             ; preds = %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE16GetBooleanStringEv.exit
  %i.s = load atomic i8, ptr @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE15GetObjectStringEvE1v acquire, align 8
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.h, label %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE15GetObjectStringEv.exit, !prof !200

bb.h:                                             ; preds = %bb.g
  %i.u = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE15GetObjectStringEvE1v) #33
  %.not.i9 = icmp eq i32 %i.u, 0
  br i1 %.not.i9, label %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE15GetObjectStringEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE15GetObjectStringEvE1v, i8 0, i64 16, i1 false)
  store i16 1029, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE15GetObjectStringEvE1v, i64 14), align 2, !tbaa !60
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE15GetObjectStringEvE1v, i64 8), align 8, !tbaa !60
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = and i64 %i.w, -281474976710656
  %i.y = or i64 %i.x, ptrtoint (ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE15GetObjectStringEvE1s to i64)
  %i.z = inttoptr i64 %i.y to ptr
  store ptr %i.z, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE15GetObjectStringEvE1v, i64 8), align 8, !tbaa !60
  store i32 6, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE15GetObjectStringEvE1v, align 8, !tbaa !60
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE15GetObjectStringEvE1v) #33
  br label %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE15GetObjectStringEv.exit

_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE15GetObjectStringEv.exit: ; preds = %bb.g, %bb.h, %bb.i
  %i.aa = tail call noundef zeroext i1 @_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEeqIS5_EEbRKNS0_IS2_T_EE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE15GetObjectStringEvE1v)
end_hunk_1
