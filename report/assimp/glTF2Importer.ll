Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/glTF2Importer?download=true
inline.NumInlined: 10361
inline.NumDeleted: 3521
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 67
loop-unroll.NumUnrolled: 82
begin_hunk_0_@_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E3KeyEPKcjb:bb.a
  %i.cg = tail call noundef zeroext i1 @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E3KeyEPKcjb(ptr noundef nonnull align 8 dereferenceable(220) %i.cf, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ch = load i32, ptr %i.ca, align 8
  %i.ci = zext i32 %i.ch to i64
  %i.cj = icmp samesign ult i64 %indvars.iv.next, %i.ci
  br i1 %i.cj, label %.lr.ph, label %.loopexit44, !llvm.loop !672

.loopexit44:                                      ; preds = %.lr.ph, %.preheader43, %bb.m
  %i.ck = getelementptr inbounds nuw i8, ptr %.03549, i64 88 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8
  %.not42 = icmp eq ptr %i.cl, null
  br i1 %.not42, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit44
  %i.cm = getelementptr inbounds nuw i8, ptr %.03549, i64 96 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 8
  %.not52 = icmp eq i32 %i.cn, 0
  br i1 %.not52, label %.loopexit, label %.lr.ph47

.lr.ph47:                                         ; preds = %.preheader, %.lr.ph47
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %.lr.ph47 ], [ 0, %.preheader ] ; 2 uses
  %i.co = load ptr, ptr %i.ck, align 8
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv54
  %i.cq = load ptr, ptr %i.cp, align 8, !nonnull !46, !noundef !46
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 -8
  %i.cs = tail call noundef zeroext i1 @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E3KeyEPKcjb(ptr noundef nonnull align 8 dereferenceable(220) %i.cr, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) ; 0 uses
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %i.ct = load i32, ptr %i.cm, align 8
  %i.cu = zext i32 %i.ct to i64
  %i.cv = icmp samesign ult i64 %indvars.iv.next55, %i.cu
  br i1 %i.cv, label %.lr.ph47, label %.loopexit, !llvm.loop !673

.loopexit:                                        ; preds = %.lr.ph47, %.preheader, %.loopexit44
  %i.cw = getelementptr inbounds nuw i8, ptr %.03549, i64 144 ; 2 uses
  %i.cx = load ptr, ptr %i.z, align 8
  %.not = icmp eq ptr %i.cw, %i.cx
  br i1 %.not, label %.sink.split, label %bb.j, !llvm.loop !674

.sink.split:                                      ; preds = %.loopexit, %bb.i, %bb.h
  %.sink = phi i8 [ 0, %bb.h ], [ 1, %bb.i ], [ 1, %.loopexit ]
  %.036.ph = phi i1 [ false, %bb.h ], [ true, %bb.i ], [ true, %.loopexit ]
  store i8 %.sink, ptr %i.a, align 8
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.a
  %.036 = phi i1 [ false, %bb.a ], [ %.036.ph, %.sink.split ]
  ret i1 %.036
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E9EndObjectEj(ptr noundef nonnull align 8 dereferenceable(220) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !45, !noundef !46
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not36 = icmp eq ptr %i.e, %i.g
  br i1 %.not36, label %._crit_edge, label %.lr.ph38

.lr.ph38:                                         ; preds = %bb.b
  %i.h = shl i32 %1, 1
  %i.i = zext i32 %i.h to i64
  %.neg.i.i = mul nsw i64 %i.i, -8
  %.not.i = icmp eq i32 %1, 0
  %wide.trip.count.i = zext i32 %1 to i64         ; 5 uses
  %i.j = add i32 %1, -18
  %or.cond = icmp ult i32 %i.j, 2147483631
  %n.vec = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.k = add nsw i64 %wide.trip.count.i, -1
  br label %bb.c

._crit_edge:                                      ; preds = %.loopexit, %bb.b
  %i.l = phi ptr [ %i.g, %bb.b ], [ %i.dh, %.loopexit ] ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -128
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 -144
  %i.p = tail call noundef zeroext i1 @_ZNK9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE9EndObjectERNS0_23SchemaValidationContextISA_EEj(ptr noundef nonnull align 8 dereferenceable(419) %i.n, ptr noundef nonnull align 8 dereferenceable(139) %i.o, i32 noundef %1)
  br i1 %i.p, label %bb.h, label %bb.g

bb.c:                                             ; preds = %.lr.ph38, %.loopexit
  %.02337 = phi ptr [ %i.e, %.lr.ph38 ], [ %i.dg, %.loopexit ] ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.02337, i64 56
  %i.r = load ptr, ptr %i.q, align 8              ; 4 uses
  %.not28 = icmp eq ptr %i.r, null
  br i1 %.not28, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %.neg.i.i ; 11 uses
  store ptr %i.u, ptr %i.s, align 8
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  br i1 %or.cond, label %vector.body, label %.lr.ph.i.preheader57

vector.body:                                      ; preds = %.lr.ph.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.ai, %vector.body ], [ <i64 3298534884633, i64 0>, %.lr.ph.i.preheader ]
  %vec.phi51 = phi <2 x i64> [ %i.aj, %vector.body ], [ zeroinitializer, %.lr.ph.i.preheader ]
  %i.v = shl i64 %index, 1
  %i.w = shl i64 %index, 1
  %i.x = and i64 %i.v, 4294967288
  %i.y = and i64 %i.w, 4294967288
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.x
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.y
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %wide.vec = load <4 x i64>, ptr %i.z, align 8   ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec52 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec53 = load <4 x i64>, ptr %i.ab, align 8 ; 2 uses
  %strided.vec54 = shufflevector <4 x i64> %wide.vec53, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec55 = shufflevector <4 x i64> %wide.vec53, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.ac = mul <2 x i64> %strided.vec, splat (i64 1099511628211)
  %i.ad = mul <2 x i64> %strided.vec54, splat (i64 1099511628211)
  %i.ae = xor <2 x i64> %strided.vec52, %i.ac
  %i.af = xor <2 x i64> %strided.vec55, %i.ad
  %i.ag = mul <2 x i64> %i.ae, splat (i64 1099511628211)
  %i.ah = mul <2 x i64> %i.af, splat (i64 1099511628211)
  %i.ai = xor <2 x i64> %i.ag, %vec.phi           ; 2 uses
  %i.aj = xor <2 x i64> %i.ah, %vec.phi51         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !675

middle.block:                                     ; preds = %vector.body
  %bin.rdx = xor <2 x i64> %i.aj, %i.ai
  %i.al = tail call i64 @llvm.vector.reduce.xor.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader57

.lr.ph.i.preheader57:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %.01011.i.ph = phi i64 [ 3298534884633, %.lr.ph.i.preheader ], [ %i.al, %middle.block ] ; 2 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader57
  %i.am = trunc nuw i64 %indvars.iv.i.ph to i32
  %i.an = shl i32 %i.am, 1                        ; 2 uses
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = mul i64 %i.aq, 1099511628211
  %i.as = or disjoint i32 %i.an, 1
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = xor i64 %i.av, %i.ar
  %i.ax = mul i64 %i.aw, 1099511628211
  %i.ay = xor i64 %i.ax, %.01011.i.ph             ; 2 uses
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader57
  %.lcssa59.unr = phi i64 [ poison, %.lr.ph.i.preheader57 ], [ %i.ay, %.lr.ph.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader57 ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %.01011.i.unr = phi i64 [ %.01011.i.ph, %.lr.ph.i.preheader57 ], [ %i.ay, %.lr.ph.i.prol ]
  %i.az = icmp eq i64 %indvars.iv.i.ph, %i.k
  br i1 %i.az, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.d
  %.010.lcssa.i = phi i64 [ 3298534884633, %bb.d ], [ %i.al, %middle.block ], [ %.lcssa59.unr, %.lr.ph.i.prol.loopexit ], [ %i.cf, %.lr.ph.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.u to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = icmp slt i64 %i.be, 8
  br i1 %i.bf, label %bb.e, label %_ZN9rapidjson8internal6HasherINS_4UTF8IcEENS_12CrtAllocatorEE9EndObjectEj.exit, !prof !43

bb.e:                                             ; preds = %._crit_edge.i
  tail call void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandImEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.r, i64 noundef 1)
  %.pre.i = load ptr, ptr %i.s, align 8
  br label %_ZN9rapidjson8internal6HasherINS_4UTF8IcEENS_12CrtAllocatorEE9EndObjectEj.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.01011.i = phi i64 [ %i.cf, %.lr.ph.i ], [ %.01011.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.bg = trunc nuw i64 %indvars.iv.i to i32
  %i.bh = shl i32 %i.bg, 1                        ; 2 uses
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = mul i64 %i.bk, 1099511628211
  %i.bm = or disjoint i32 %i.bh, 1
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = xor i64 %i.bp, %i.bl
  %i.br = mul i64 %i.bq, 1099511628211
  %i.bs = xor i64 %i.br, %.01011.i
  %i.bt = trunc i64 %indvars.iv.i to i32
  %i.bu = shl i32 %i.bt, 1
  %i.bv = add i32 %i.bu, 2                        ; 2 uses
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = mul i64 %i.by, 1099511628211
  %2 = or disjoint i32 %i.bv, 1
  %i.ca = zext i32 %2 to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ca
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = xor i64 %i.cc, %i.bz
  %i.ce = mul i64 %i.cd, 1099511628211
  %i.cf = xor i64 %i.ce, %i.bs                    ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !676

_ZN9rapidjson8internal6HasherINS_4UTF8IcEENS_12CrtAllocatorEE9EndObjectEj.exit: ; preds = %._crit_edge.i, %bb.e
  %i.cg = phi ptr [ %i.u, %._crit_edge.i ], [ %.pre.i, %bb.e ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store ptr %i.ch, ptr %i.s, align 8
  store i64 %.010.lcssa.i, ptr %i.cg, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZN9rapidjson8internal6HasherINS_4UTF8IcEENS_12CrtAllocatorEE9EndObjectEj.exit, %bb.c
  %i.ci = getelementptr inbounds nuw i8, ptr %.02337, i64 72 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8
  %.not29 = icmp eq ptr %i.cj, null
  br i1 %.not29, label %.loopexit32, label %.preheader31

.preheader31:                                     ; preds = %bb.f
  %i.ck = getelementptr inbounds nuw i8, ptr %.02337, i64 80 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8
  %.not39 = icmp eq i32 %i.cl, 0
  br i1 %.not39, label %.loopexit32, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader31, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader31 ] ; 2 uses
  %i.cm = load ptr, ptr %i.ci, align 8
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv
  %i.co = load ptr, ptr %i.cn, align 8, !nonnull !46, !noundef !46
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 -8
  %i.cq = tail call noundef zeroext i1 @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E9EndObjectEj(ptr noundef nonnull align 8 dereferenceable(220) %i.cp, i32 noundef %1) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cr = load i32, ptr %i.ck, align 8
  %i.cs = zext i32 %i.cr to i64
  %i.ct = icmp samesign ult i64 %indvars.iv.next, %i.cs
  br i1 %i.ct, label %.lr.ph, label %.loopexit32, !llvm.loop !677

.loopexit32:                                      ; preds = %.lr.ph, %.preheader31, %bb.f
  %i.cu = getelementptr inbounds nuw i8, ptr %.02337, i64 88 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8
  %.not30 = icmp eq ptr %i.cv, null
  br i1 %.not30, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit32
  %i.cw = getelementptr inbounds nuw i8, ptr %.02337, i64 96 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 8
  %.not40 = icmp eq i32 %i.cx, 0
  br i1 %.not40, label %.loopexit, label %.lr.ph35

.lr.ph35:                                         ; preds = %.preheader, %.lr.ph35
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %.lr.ph35 ], [ 0, %.preheader ] ; 2 uses
  %i.cy = load ptr, ptr %i.cu, align 8
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv42
  %i.da = load ptr, ptr %i.cz, align 8, !nonnull !46, !noundef !46
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 -8
  %i.dc = tail call noundef zeroext i1 @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E9EndObjectEj(ptr noundef nonnull align 8 dereferenceable(220) %i.db, i32 noundef %1) ; 0 uses
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %i.dd = load i32, ptr %i.cw, align 8
  %i.de = zext i32 %i.dd to i64
  %i.df = icmp samesign ult i64 %indvars.iv.next43, %i.de
  br i1 %i.df, label %.lr.ph35, label %.loopexit, !llvm.loop !678

.loopexit:                                        ; preds = %.lr.ph35, %.preheader, %.loopexit32
  %i.dg = getelementptr inbounds nuw i8, ptr %.02337, i64 144 ; 2 uses
  %i.dh = load ptr, ptr %i.f, align 8             ; 2 uses
  %.not = icmp eq ptr %i.dg, %i.dh
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !679

bb.g:                                             ; preds = %._crit_edge
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.dj = load i32, ptr %i.di, align 4
  %i.dk = trunc i32 %i.dj to i1
  br i1 %i.dk, label %bb.h, label %.sink.split

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %i.dl = tail call noundef zeroext i1 @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E8EndValueEv(ptr noundef nonnull align 8 dereferenceable(220) %0)
  br i1 %i.dl, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.dn = load i32, ptr %i.dm, align 4
  %i.do = trunc i32 %i.dn to i1
  br i1 %i.do, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.dp = phi i1 [ false, %bb.i ], [ true, %bb.j ] ; 2 uses
  %i.dq = zext i1 %i.dp to i8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.k
  %.sink = phi i8 [ %i.dq, %bb.k ], [ 0, %bb.g ]
  %.024.ph = phi i1 [ %i.dp, %bb.k ], [ false, %bb.g ]
  store i8 %.sink, ptr %i.a, align 8
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.a
  %.024 = phi i1 [ false, %bb.a ], [ %.024.ph, %.sink.split ]
  ret i1 %.024
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E10StartArrayEv(ptr noundef nonnull align 8 dereferenceable(220) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !45, !noundef !46
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E10BeginValueEv(ptr noundef nonnull align 8 dereferenceable(220) %0)
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.f = load i32, ptr %i.e, align 4
  %i.g = trunc i32 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -128
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -144
  %i.m = tail call noundef zeroext i1 @_ZNK9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE10StartArrayERNS0_23SchemaValidationContextISA_EE(ptr noundef nonnull align 8 dereferenceable(419) %i.k, ptr noundef nonnull align 8 dereferenceable(139) %i.l)
  br i1 %i.m, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.o = load i32, ptr %i.n, align 4
  %i.p = trunc i32 %i.o to i1
  br i1 %i.p, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp slt i64 %i.w, 1
  br i1 %i.x, label %bb.g, label %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE7ReserveIcEEvm.exit, !prof !43

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.y, i64 noundef 1)
  %.pre = load ptr, ptr %i.s, align 8
  br label %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE7ReserveIcEEvm.exit

_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE7ReserveIcEEvm.exit: ; preds = %bb.f, %bb.g
  %i.z = phi ptr [ %i.t, %bb.f ], [ %.pre, %bb.g ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store ptr %i.aa, ptr %i.s, align 8
  store i8 0, ptr %i.z, align 1
  %i.ab = load ptr, ptr %i.s, align 8
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -1
  store ptr %i.ac, ptr %i.s, align 8
  br label %.sink.split

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = load ptr, ptr %i.h, align 8
  %.not31 = icmp eq ptr %i.ae, %i.af
  br i1 %.not31, label %.sink.split, label %.lr.ph33

.lr.ph33:                                         ; preds = %bb.h, %.loopexit
  %.01832 = phi ptr [ %i.be, %.loopexit ], [ %i.ae, %bb.h ] ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.01832, i64 72 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8
  %.not24 = icmp eq ptr %i.ah, null
  br i1 %.not24, label %.loopexit27, label %.preheader26

.preheader26:                                     ; preds = %.lr.ph33
  %i.ai = getelementptr inbounds nuw i8, ptr %.01832, i64 80 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8
  %.not34 = icmp eq i32 %i.aj, 0
  br i1 %.not34, label %.loopexit27, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader26, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader26 ] ; 2 uses
  %i.ak = load ptr, ptr %i.ag, align 8
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !46, !noundef !46
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -8
  %i.ao = tail call noundef zeroext i1 @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E10StartArrayEv(ptr noundef nonnull align 8 dereferenceable(220) %i.an) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ap = load i32, ptr %i.ai, align 8
  %i.aq = zext i32 %i.ap to i64
  %i.ar = icmp samesign ult i64 %indvars.iv.next, %i.aq
  br i1 %i.ar, label %.lr.ph, label %.loopexit27, !llvm.loop !680
end_hunk_0
