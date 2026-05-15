inline.NumInlined: 10360
inline.NumDeleted: 3521
begin_hunk_0_@_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E3KeyEPKcjb:bb.a
  %i.ah = trunc i32 %i.ag to i1
  %or.cond = select i1 %i.ae, i1 true, i1 %i.ah   ; 2 uses
  br i1 %or.cond, label %bb.h, label %.sink.split

bb.h:                                             ; preds = %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E11AppendTokenEPKcj.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = load ptr, ptr %i.z, align 8
  %.not50 = icmp eq ptr %i.aj, %i.ak
  br i1 %.not50, label %.sink.split, label %.lr.ph52

.lr.ph52:                                         ; preds = %bb.h
  %i.al = zext i32 %2 to i64                      ; 2 uses
  %xtraiter = and i64 %i.al, 3                    ; 3 uses
  %i.am = icmp ult i32 %2, 4
  %unroll_iter = and i64 %i.al, 4294967292
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod64 = icmp ne i64 %xtraiter, 0
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph52, %.loopexit
  %.03551 = phi ptr [ %i.aj, %.lr.ph52 ], [ %i.cw, %.loopexit ] ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.03551, i64 56
  %i.ao = load ptr, ptr %i.an, align 8            ; 4 uses
  %.not40 = icmp eq ptr %i.ao, null
  br i1 %.not40, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.not.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.j
  br i1 %i.am, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i

._crit_edge.i.i.i.loopexit.unr-lcssa:             ; preds = %.lr.ph.i.i.i
  br i1 %lcmp.mod.not, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %._crit_edge.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.0912.i.i.i.epil.init = phi i64 [ -5808596455572525216, %.lr.ph.i.i.i.preheader ], [ %.09.i.i.i.3, %._crit_edge.i.i.i.loopexit.unr-lcssa ]
  %.011.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.bv, %._crit_edge.i.i.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod64)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.0912.i.i.i.epil = phi i64 [ %.09.i.i.i.epil, %.lr.ph.i.i.i.epil ], [ %.0912.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ]
  %.011.i.i.i.epil = phi i64 [ %i.at, %.lr.ph.i.i.i.epil ], [ %.011.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %.011.i.i.i.epil
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = zext i8 %i.aq to i64
  %i.as = xor i64 %.0912.i.i.i.epil, %i.ar
  %i.at = add nuw nsw i64 %.011.i.i.i.epil, 1
  %.09.i.i.i.epil = mul i64 %i.as, 1099511628211  ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !662

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.j
  %.09.lcssa.i.i.i = phi i64 [ -5808596455572525216, %bb.j ], [ %.09.i.i.i.3, %._crit_edge.i.i.i.loopexit.unr-lcssa ], [ %.09.i.i.i.epil, %.lr.ph.i.i.i.epil ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 24 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = icmp slt i64 %i.ba, 8
  br i1 %i.bb, label %bb.k, label %_ZN9rapidjson8internal6HasherINS_4UTF8IcEENS_12CrtAllocatorEE3KeyEPKcjb.exit, !prof !6

bb.k:                                             ; preds = %._crit_edge.i.i.i
  tail call void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandImEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.ao, i64 noundef 1)
  %.pre.i.i.i = load ptr, ptr %i.aw, align 8
  br label %_ZN9rapidjson8internal6HasherINS_4UTF8IcEENS_12CrtAllocatorEE3KeyEPKcjb.exit

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.0912.i.i.i = phi i64 [ %.09.i.i.i.3, %.lr.ph.i.i.i ], [ -5808596455572525216, %.lr.ph.i.i.i.preheader ]
  %.011.i.i.i = phi i64 [ %i.bv, %.lr.ph.i.i.i ], [ 0, %.lr.ph.i.i.i.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i.i.i ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 %.011.i.i.i
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = zext i8 %i.bd to i64
  %i.bf = xor i64 %.0912.i.i.i, %i.be
  %.09.i.i.i = mul i64 %i.bf, 1099511628211
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 %.011.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = zext i8 %i.bi to i64
  %i.bk = xor i64 %.09.i.i.i, %i.bj
  %.09.i.i.i.1 = mul i64 %i.bk, 1099511628211
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %.011.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = zext i8 %i.bn to i64
  %i.bp = xor i64 %.09.i.i.i.1, %i.bo
  %.09.i.i.i.2 = mul i64 %i.bp, 1099511628211
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 %.011.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 3
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = zext i8 %i.bs to i64
  %i.bu = xor i64 %.09.i.i.i.2, %i.bt
  %i.bv = add nuw nsw i64 %.011.i.i.i, 4          ; 2 uses
  %.09.i.i.i.3 = mul i64 %i.bu, 1099511628211     ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !663

_ZN9rapidjson8internal6HasherINS_4UTF8IcEENS_12CrtAllocatorEE3KeyEPKcjb.exit: ; preds = %._crit_edge.i.i.i, %bb.k
  %i.bw = phi ptr [ %i.ax, %._crit_edge.i.i.i ], [ %.pre.i.i.i, %bb.k ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %i.bx, ptr %i.aw, align 8
  store i64 %.09.lcssa.i.i.i, ptr %i.bw, align 8
  br label %bb.l

bb.l:                                             ; preds = %_ZN9rapidjson8internal6HasherINS_4UTF8IcEENS_12CrtAllocatorEE3KeyEPKcjb.exit, %bb.i
  %i.by = getelementptr inbounds nuw i8, ptr %.03551, i64 72 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8
  %.not41 = icmp eq ptr %i.bz, null
  br i1 %.not41, label %.loopexit46, label %.preheader45

.preheader45:                                     ; preds = %bb.l
  %i.ca = getelementptr inbounds nuw i8, ptr %.03551, i64 80 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 8
  %.not53 = icmp eq i32 %i.cb, 0
  br i1 %.not53, label %.loopexit46, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader45, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader45 ] ; 2 uses
  %i.cc = load ptr, ptr %i.by, align 8
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !20, !noundef !20
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -8
  %i.cg = tail call noundef zeroext i1 @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E3KeyEPKcjb(ptr noundef nonnull align 8 dereferenceable(220) %i.cf, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ch = load i32, ptr %i.ca, align 8
  %i.ci = zext i32 %i.ch to i64
  %i.cj = icmp samesign ult i64 %indvars.iv.next, %i.ci
  br i1 %i.cj, label %.lr.ph, label %.loopexit46, !llvm.loop !664

.loopexit46:                                      ; preds = %.lr.ph, %.preheader45, %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %.03551, i64 88 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8
  %.not42 = icmp eq ptr %i.cl, null
  br i1 %.not42, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit46
  %i.cm = getelementptr inbounds nuw i8, ptr %.03551, i64 96 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 8
  %.not54 = icmp eq i32 %i.cn, 0
  br i1 %.not54, label %.loopexit, label %.lr.ph49

.lr.ph49:                                         ; preds = %.preheader, %.lr.ph49
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %.lr.ph49 ], [ 0, %.preheader ] ; 2 uses
  %i.co = load ptr, ptr %i.ck, align 8
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv56
  %i.cq = load ptr, ptr %i.cp, align 8, !nonnull !20, !noundef !20
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 -8
  %i.cs = tail call noundef zeroext i1 @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E3KeyEPKcjb(ptr noundef nonnull align 8 dereferenceable(220) %i.cr, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) ; 0 uses
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %i.ct = load i32, ptr %i.cm, align 8
  %i.cu = zext i32 %i.ct to i64
  %i.cv = icmp samesign ult i64 %indvars.iv.next57, %i.cu
  br i1 %i.cv, label %.lr.ph49, label %.loopexit, !llvm.loop !665

.loopexit:                                        ; preds = %.lr.ph49, %.preheader, %.loopexit46
  %i.cw = getelementptr inbounds nuw i8, ptr %.03551, i64 144 ; 2 uses
  %i.cx = load ptr, ptr %i.z, align 8
  %.not = icmp eq ptr %i.cw, %i.cx
  br i1 %.not, label %.sink.split, label %bb.i, !llvm.loop !666

.sink.split:                                      ; preds = %.loopexit, %bb.h, %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E11AppendTokenEPKcj.exit
  %.sink = phi i8 [ 0, %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E11AppendTokenEPKcj.exit ], [ 1, %bb.h ], [ 1, %.loopexit ]
  store i8 %.sink, ptr %i.a, align 8
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.a
  %.036 = phi i1 [ false, %bb.a ], [ %or.cond, %.sink.split ]
  ret i1 %.036
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E9EndObjectEj(ptr noundef nonnull align 8 dereferenceable(220) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !19, !noundef !20
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not41 = icmp eq ptr %i.e, %i.g
  br i1 %.not41, label %._crit_edge, label %.lr.ph43

.lr.ph43:                                         ; preds = %bb.b
  %i.h = shl i32 %1, 1
  %i.i = zext i32 %i.h to i64
  %.neg.i.i = mul nsw i64 %i.i, -8
  %.not.i = icmp eq i32 %1, 0
  %wide.trip.count.i = zext i32 %1 to i64         ; 5 uses
  %i.j = add i32 %1, -18
  %or.cond62 = icmp ult i32 %i.j, 2147483631
  %n.vec = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.k = add nsw i64 %wide.trip.count.i, -1
  br label %bb.c

._crit_edge:                                      ; preds = %.loopexit, %bb.b
  %i.l = phi ptr [ %i.g, %bb.b ], [ %i.dl, %.loopexit ] ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -128
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 -144
  %i.p = tail call noundef zeroext i1 @_ZNK9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE9EndObjectERNS0_23SchemaValidationContextISA_EEj(ptr noundef nonnull align 8 dereferenceable(419) %i.n, ptr noundef nonnull align 8 dereferenceable(139) %i.o, i32 noundef %1)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4
  %i.s = trunc i32 %i.r to i1
  %or.cond = select i1 %i.p, i1 true, i1 %i.s
  br i1 %or.cond, label %bb.g, label %.sink.split

bb.c:                                             ; preds = %.lr.ph43, %.loopexit
  %.02342 = phi ptr [ %i.e, %.lr.ph43 ], [ %i.dk, %.loopexit ] ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.02342, i64 56
  %i.u = load ptr, ptr %i.t, align 8              ; 4 uses
  %.not28 = icmp eq ptr %i.u, null
  br i1 %.not28, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 4 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 %.neg.i.i ; 11 uses
  store ptr %i.x, ptr %i.v, align 8
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  br i1 %or.cond62, label %vector.body, label %.lr.ph.i.preheader63

vector.body:                                      ; preds = %.lr.ph.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.al, %vector.body ], [ <i64 3298534884633, i64 0>, %.lr.ph.i.preheader ]
  %vec.phi56 = phi <2 x i64> [ %i.am, %vector.body ], [ zeroinitializer, %.lr.ph.i.preheader ]
  %i.y = shl i64 %index, 1
  %i.z = shl i64 %index, 1
  %i.aa = and i64 %i.y, 4294967288
  %i.ab = and i64 %i.z, 4294967288
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.aa
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %wide.vec = load <4 x i64>, ptr %i.ac, align 8  ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec57 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec58 = load <4 x i64>, ptr %i.ae, align 8 ; 2 uses
  %strided.vec59 = shufflevector <4 x i64> %wide.vec58, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec60 = shufflevector <4 x i64> %wide.vec58, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.af = mul <2 x i64> %strided.vec, splat (i64 1099511628211)
  %i.ag = mul <2 x i64> %strided.vec59, splat (i64 1099511628211)
  %i.ah = xor <2 x i64> %strided.vec57, %i.af
  %i.ai = xor <2 x i64> %strided.vec60, %i.ag
  %i.aj = mul <2 x i64> %i.ah, splat (i64 1099511628211)
  %i.ak = mul <2 x i64> %i.ai, splat (i64 1099511628211)
  %i.al = xor <2 x i64> %i.aj, %vec.phi           ; 2 uses
  %i.am = xor <2 x i64> %i.ak, %vec.phi56         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !667

middle.block:                                     ; preds = %vector.body
  %bin.rdx = xor <2 x i64> %i.am, %i.al
  %i.ao = tail call i64 @llvm.vector.reduce.xor.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader63

.lr.ph.i.preheader63:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %.01011.i.ph = phi i64 [ 3298534884633, %.lr.ph.i.preheader ], [ %i.ao, %middle.block ] ; 2 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader63
  %i.ap = trunc nuw i64 %indvars.iv.i.ph to i32
  %i.aq = shl i32 %i.ap, 1                        ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8
  %i.au = mul i64 %i.at, 1099511628211
  %i.av = or disjoint i32 %i.aq, 1
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = xor i64 %i.ay, %i.au
  %i.ba = mul i64 %i.az, 1099511628211
  %i.bb = xor i64 %i.ba, %.01011.i.ph             ; 2 uses
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader63
  %.lcssa65.unr = phi i64 [ poison, %.lr.ph.i.preheader63 ], [ %i.bb, %.lr.ph.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader63 ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %.01011.i.unr = phi i64 [ %.01011.i.ph, %.lr.ph.i.preheader63 ], [ %i.bb, %.lr.ph.i.prol ]
  %i.bc = icmp eq i64 %indvars.iv.i.ph, %i.k
  br i1 %i.bc, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.d
  %.010.lcssa.i = phi i64 [ 3298534884633, %bb.d ], [ %i.ao, %middle.block ], [ %.lcssa65.unr, %.lr.ph.i.prol.loopexit ], [ %i.cj, %.lr.ph.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.x to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = icmp slt i64 %i.bh, 8
  br i1 %i.bi, label %bb.e, label %_ZN9rapidjson8internal6HasherINS_4UTF8IcEENS_12CrtAllocatorEE9EndObjectEj.exit, !prof !6

bb.e:                                             ; preds = %._crit_edge.i
  tail call void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandImEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.u, i64 noundef 1)
  %.pre.i = load ptr, ptr %i.v, align 8
  br label %_ZN9rapidjson8internal6HasherINS_4UTF8IcEENS_12CrtAllocatorEE9EndObjectEj.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.01011.i = phi i64 [ %i.cj, %.lr.ph.i ], [ %.01011.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.bj = trunc nuw i64 %indvars.iv.i to i32
  %i.bk = shl i32 %i.bj, 1                        ; 2 uses
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = mul i64 %i.bn, 1099511628211
  %i.bp = or disjoint i32 %i.bk, 1
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.bq
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = xor i64 %i.bs, %i.bo
  %i.bu = mul i64 %i.bt, 1099511628211
  %i.bv = xor i64 %i.bu, %.01011.i
  %i.bw = trunc i64 %indvars.iv.i to i32
  %i.bx = shl i32 %i.bw, 1
  %i.by = add i32 %i.bx, 2                        ; 2 uses
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = mul i64 %i.cb, 1099511628211
  %i.cd = or disjoint i32 %i.by, 1
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = xor i64 %i.cg, %i.cc
  %i.ci = mul i64 %i.ch, 1099511628211
  %i.cj = xor i64 %i.ci, %i.bv                    ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !668

_ZN9rapidjson8internal6HasherINS_4UTF8IcEENS_12CrtAllocatorEE9EndObjectEj.exit: ; preds = %._crit_edge.i, %bb.e
  %i.ck = phi ptr [ %i.x, %._crit_edge.i ], [ %.pre.i, %bb.e ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %i.cl, ptr %i.v, align 8
  store i64 %.010.lcssa.i, ptr %i.ck, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZN9rapidjson8internal6HasherINS_4UTF8IcEENS_12CrtAllocatorEE9EndObjectEj.exit, %bb.c
  %i.cm = getelementptr inbounds nuw i8, ptr %.02342, i64 72 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8
  %.not29 = icmp eq ptr %i.cn, null
  br i1 %.not29, label %.loopexit37, label %.preheader36

.preheader36:                                     ; preds = %bb.f
  %i.co = getelementptr inbounds nuw i8, ptr %.02342, i64 80 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 8
  %.not44 = icmp eq i32 %i.cp, 0
  br i1 %.not44, label %.loopexit37, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader36, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader36 ] ; 2 uses
  %i.cq = load ptr, ptr %i.cm, align 8
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv
  %i.cs = load ptr, ptr %i.cr, align 8, !nonnull !20, !noundef !20
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 -8
  %i.cu = tail call noundef zeroext i1 @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E9EndObjectEj(ptr noundef nonnull align 8 dereferenceable(220) %i.ct, i32 noundef %1) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cv = load i32, ptr %i.co, align 8
  %i.cw = zext i32 %i.cv to i64
  %i.cx = icmp samesign ult i64 %indvars.iv.next, %i.cw
  br i1 %i.cx, label %.lr.ph, label %.loopexit37, !llvm.loop !669

.loopexit37:                                      ; preds = %.lr.ph, %.preheader36, %bb.f
  %i.cy = getelementptr inbounds nuw i8, ptr %.02342, i64 88 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8
  %.not30 = icmp eq ptr %i.cz, null
  br i1 %.not30, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit37
  %i.da = getelementptr inbounds nuw i8, ptr %.02342, i64 96 ; 2 uses
  %i.db = load i32, ptr %i.da, align 8
  %.not45 = icmp eq i32 %i.db, 0
  br i1 %.not45, label %.loopexit, label %.lr.ph40

.lr.ph40:                                         ; preds = %.preheader, %.lr.ph40
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %.lr.ph40 ], [ 0, %.preheader ] ; 2 uses
  %i.dc = load ptr, ptr %i.cy, align 8
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv47
  %i.de = load ptr, ptr %i.dd, align 8, !nonnull !20, !noundef !20
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 -8
  %i.dg = tail call noundef zeroext i1 @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E9EndObjectEj(ptr noundef nonnull align 8 dereferenceable(220) %i.df, i32 noundef %1) ; 0 uses
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1 ; 2 uses
end_hunk_0
