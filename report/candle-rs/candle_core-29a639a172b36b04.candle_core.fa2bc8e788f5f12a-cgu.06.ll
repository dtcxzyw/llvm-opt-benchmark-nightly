Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_core-29a639a172b36b04.candle_core.fa2bc8e788f5f12a-cgu.06?download=true
inline.NumInlined: 1431
inline.NumDeleted: 572
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs3_NtCsltEA4u8Pgfu_11candle_core9quantizedNtB5_7QTensor9embedding:bb.a
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [80 x i8], align 8                ; 7 uses
  %.sroa.661 = alloca [32 x i8], align 8          ; 6 uses
  %i.h = alloca [80 x i8], align 8                ; 7 uses
  %.sroa.652 = alloca [24 x i8], align 8          ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 10 uses
  %i.j = alloca [32 x i8], align 8                ; 5 uses
  %i.k = alloca [80 x i8], align 8                ; 7 uses
  %i.l = alloca [8 x i8], align 8                 ; 9 uses
  %i.m = alloca [80 x i8], align 8                ; 8 uses
  %i.n = alloca [8 x i8], align 8                 ; 9 uses
  %i.o = alloca [80 x i8], align 8                ; 9 uses
  %i.p = alloca [8 x i8], align 8                 ; 8 uses
  %i.q = alloca [80 x i8], align 8                ; 10 uses
  %i.r = alloca [8 x i8], align 8                 ; 10 uses
  %i.s = alloca [1 x i8], align 1                 ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 13 uses
  %i.u = alloca [32 x i8], align 8                ; 7 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [80 x i8], align 8                ; 5 uses
  %i.x = alloca [80 x i8], align 8                ; 8 uses
  %i.y = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @_RNvMsY_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape5dims2(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  %i.z = load i64, ptr %i.x, align 8, !range !12, !noundef !8 ; 2 uses
  %.not = icmp eq i64 %i.z, -1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ad = load i64, ptr %i.ac, align 8            ; 5 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.677.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.681.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.681.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.677.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  store i64 %i.z, ptr %0, align 8
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ab, ptr %.sroa.479.0..sroa_idx, align 8
  %.sroa.580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ad, ptr %.sroa.580.0..sroa_idx, align 8
  br label %bb.bt

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store i64 %i.ad, ptr %i.y, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1545)
  %i.af = load i8, ptr %i.ae, align 8, !range !13, !alias.scope !1545, !noundef !8
  switch i8 %i.af, label %default.unreachable257 [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
  ]

default.unreachable257:                           ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit200, %.split, %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !1545, !nonnull !8, !noundef !8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !1545, !nonnull !8, !align !14, !noundef !8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !invariant.load !8, !noalias !1545, !nonnull !8
  %i.am = call noundef i8 %i.al(ptr noundef nonnull %i.ah) #27, !noalias !1545, !inline_history !2
  br label %switch.lookup

bb.e:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.ao = load i8, ptr %i.an, align 1, !range !15, !alias.scope !1545, !noundef !8
  br label %switch.lookup

bb.f:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.aq = load i8, ptr %i.ap, align 1, !range !15, !alias.scope !1545, !noundef !8
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.0.0.i.i = phi i8 [ %i.am, %bb.d ], [ %i.ao, %bb.e ], [ %i.aq, %bb.f ]
  %i.ar = zext nneg i8 %.sroa.0.0.i.i to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvMs3_NtCsltEA4u8Pgfu_11candle_core9quantizedNtB5_7QTensor9embedding, i64 %i.ar
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.as = and i64 %i.ad, %switch.ext
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.j, label %.split

.split:                                           ; preds = %switch.lookup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.experimental.noalias.scope.decl(metadata !1546)
  %i.au = load i8, ptr %i.ae, align 8, !range !13, !alias.scope !1546, !noundef !8
  switch i8 %i.au, label %default.unreachable257 [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.i
  ]

bb.g:                                             ; preds = %.split
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !1546, !nonnull !8, !noundef !8
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !1546, !nonnull !8, !align !14, !noundef !8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !invariant.load !8, !noalias !1546, !nonnull !8
  %i.bb = call noundef i8 %i.ba(ptr noundef nonnull %i.aw) #27, !noalias !1546, !inline_history !2
  br label %switch.lookup261

bb.h:                                             ; preds = %.split
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.bd = load i8, ptr %i.bc, align 1, !range !15, !alias.scope !1546, !noundef !8
  br label %switch.lookup261

bb.i:                                             ; preds = %.split
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.bf = load i8, ptr %i.be, align 1, !range !15, !alias.scope !1546, !noundef !8
  br label %switch.lookup261

switch.lookup261:                                 ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.0.0.i.i176 = phi i8 [ %i.bb, %bb.g ], [ %i.bd, %bb.h ], [ %i.bf, %bb.i ]
  %i.bg = zext nneg i8 %.sroa.0.0.i.i176 to i64
  %switch.gep262 = getelementptr inbounds nuw [2 x i8], ptr @switch.table._RNvNtNtCsltEA4u8Pgfu_11candle_core9quantized9ggml_file17qtensor_from_ggml, i64 %i.bg
  %switch.load263 = load i16, ptr %switch.gep262, align 2
  %switch.ext264 = zext i16 %switch.load263 to i64
  store i64 %switch.ext264, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr %i.y, ptr %i.u, align 8
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.485.0..sroa_idx, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.v, ptr %i.bh, align 8
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.489.0..sroa_idx, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bi, ptr noundef nonnull @117, ptr noundef nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  store i64 -9223372036854775766, ptr %i.w, align 8
  call void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core5errorNtB4_5Error2bt(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.k

bb.j:                                             ; preds = %switch.lookup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %.val171 = load ptr, ptr %2, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.val171, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !8, !noundef !8
  %i.bl = getelementptr inbounds nuw i8, ptr %.val171, i64 32
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.bm, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
  %i.bn = load i64, ptr %i.a, align 8, !range !7, !noundef !8
  %i.bo = trunc nuw i64 %i.bn to i1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !range !9, !noundef !8 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.bo, label %bb.l, label %bb.m, !prof !10

bb.k:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECsltEA4u8Pgfu_11candle_core.exit, %switch.lookup261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.bt

bb.l:                                             ; preds = %bb.j
  %i.bs = load i64, ptr %i.br, align 8
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.bq, i64 %i.bs) #25
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.bt = load ptr, ptr %i.br, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.bu = icmp ule i64 %i.bm, %i.bq
  call void @llvm.assume(i1 %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.bq, ptr %i.t, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  store ptr %i.bt, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  store i64 0, ptr %i.bw, align 8
  %.not150 = icmp eq i64 %i.bm, 0
  br i1 %.not150, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.p, %bb.m
  %i.bx = phi i64 [ %.pre, %bb.p ], [ %i.bq, %bb.m ]
  %i.by = icmp eq i64 %i.bm, %i.bx
  br i1 %i.by, label %bb.o, label %switch.lookup265

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCsOwuIBbUsgI_11safetensors(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t) #30
          to label %switch.lookup265 unwind label %.split258.thread

bb.p:                                             ; preds = %bb.m
  %i.bz = shl nuw nsw i64 %i.bm, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bt, ptr nonnull align 8 %i.bk, i64 %i.bz, i1 false)
  store i64 %i.bm, ptr %i.bw, align 8
  %.pre = load i64, ptr %i.t, align 8, !range !16, !alias.scope !1547
  br label %bb.n

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit202: ; preds = %bb.aq, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit198
  br i1 %.sroa.069.2, label %.thread, label %common.resume

.split258.thread:                                 ; preds = %bb.bx, %bb.be, %switch.lookup265, %bb.o
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

switch.lookup265:                                 ; preds = %bb.n, %bb.o
  %i.ca = load ptr, ptr %i.bv, align 8, !alias.scope !1547, !nonnull !8, !noundef !8
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.bm
  store i64 %i.ad, ptr %i.cb, align 8
  %i.cc = add nuw i64 %i.bm, 1
  store i64 %i.cc, ptr %i.bw, align 8, !alias.scope !1547
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %.val172 = load i8, ptr %i.ae, align 8, !range !13, !noundef !8
  %i.cd = shl nuw nsw i8 %.val172, 3
  %switch.shiftamt = zext nneg i8 %i.cd to i24
  %switch.downshift = lshr i24 66048, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  store i8 %switch.masked, ptr %i.s, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor9to_device(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.s)
          to label %bb.q unwind label %.split258.thread

bb.q:                                             ; preds = %switch.lookup265
  %i.ce = load i64, ptr %i.k, align 8, !range !12, !noundef !8 ; 2 uses
  %.not151 = icmp eq i64 %i.ce, -1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8            ; 6 uses
  br i1 %.not151, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.597.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.5100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5100.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.597.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i64 %i.ce, ptr %0, align 8
  %.sroa.499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cg, ptr %.sroa.499.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit222

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store ptr %i.cg, ptr %i.l, align 8
  invoke void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor8to_dtype(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l, i8 noundef 1)
          to label %bb.v unwind label %bb.u

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit186: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit188, %bb.y, %bb.u
  %.pn164 = phi { ptr, i32 } [ %i.cj, %bb.u ], [ %.pn162, %bb.y ], [ %.pn162, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit188 ] ; 2 uses
  %i.ch = atomicrmw add ptr %i.cg, i64 -1 release, align 8, !noalias !1548
  %i.ci = icmp eq i64 %i.ch, 1
  br i1 %i.ci, label %bb.t, label %.thread

bb.t:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit186
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.l) #30
          to label %.thread unwind label %bb.bf, !inline_history !0

bb.u:                                             ; preds = %bb.bw, %bb.s
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit186

bb.v:                                             ; preds = %bb.s
  %i.ck = load i64, ptr %i.m, align 8, !range !12, !noundef !8 ; 2 uses
  %.not152 = icmp eq i64 %i.ck, -1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8            ; 6 uses
  br i1 %.not152, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.5106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.5109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5109.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5106.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i64 %i.ck, ptr %0, align 8
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cm, ptr %.sroa.4108.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit220

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store ptr %i.cm, ptr %i.n, align 8
  invoke void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor11flatten_all(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n)
          to label %bb.aa unwind label %bb.z

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit188: ; preds = %bb.ad, %bb.ae, %bb.z
  %.pn162 = phi { ptr, i32 } [ %i.cp, %bb.z ], [ %i.ct, %bb.ae ], [ %i.ct, %bb.ad ] ; 2 uses
  %i.cn = atomicrmw add ptr %i.cm, i64 -1 release, align 8, !noalias !1549
  %i.co = icmp eq i64 %i.cn, 1
  br i1 %i.co, label %bb.y, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit186

bb.y:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit188
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.n) #30
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit186 unwind label %bb.bf, !inline_history !0

bb.z:                                             ; preds = %bb.ah, %bb.x
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit188

bb.aa:                                            ; preds = %bb.x
  %i.cq = load i64, ptr %i.o, align 8, !range !12, !noundef !8 ; 2 uses
  %.not153 = icmp eq i64 %i.cq, -1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8            ; 5 uses
  br i1 %.not153, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.sroa.5115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.5118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5118.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5115.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  store i64 %i.cq, ptr %0, align 8
  %.sroa.4117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cs, ptr %.sroa.4117.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit190

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  store ptr %i.cs, ptr %i.p, align 8
  invoke void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor10contiguous(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p)
          to label %bb.af unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cu = atomicrmw add ptr %i.cs, i64 -1 release, align 8, !noalias !1550
  %i.cv = icmp eq i64 %i.cu, 1
  br i1 %i.cv, label %bb.ae, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit188

bb.ae:                                            ; preds = %bb.ad
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.p) #30
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit188 unwind label %bb.bf, !inline_history !0

bb.af:                                            ; preds = %bb.ac
  %i.cw = load i64, ptr %i.q, align 8, !range !12, !noundef !8 ; 2 uses
  %.not154 = icmp eq i64 %i.cw, -1
  %i.cx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8            ; 5 uses
  br i1 %.not154, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.sroa.5124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.5127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5127.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5124.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store i64 %i.cw, ptr %0, align 8
  %.sroa.4126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cy, ptr %.sroa.4126.0..sroa_idx, align 8
  %i.cz = atomicrmw add ptr %i.cs, i64 -1 release, align 8, !noalias !1551
  %i.da = icmp eq i64 %i.cz, 1
  br i1 %i.da, label %bb.ah, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit190

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.p) #30
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit190 unwind label %bb.z, !inline_history !0

bb.ai:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store ptr %i.cy, ptr %i.r, align 8
  %i.db = atomicrmw add ptr %i.cs, i64 -1 release, align 8, !noalias !1552
  %i.dc = icmp eq i64 %i.db, 1
  br i1 %i.dc, label %bb.aj, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit192

bb.aj:                                            ; preds = %bb.ai
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.p) #30
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit192 unwind label %bb.ak, !inline_history !0

bb.ak:                                            ; preds = %bb.aj
  %i.dd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.de = atomicrmw add ptr %i.cm, i64 -1 release, align 8, !noalias !1553
  %i.df = icmp eq i64 %i.de, 1
  br i1 %i.df, label %bb.al, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit194

bb.al:                                            ; preds = %bb.ak
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.n) #30
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit194 unwind label %bb.bf, !inline_history !0

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit192: ; preds = %bb.ai, %bb.aj
  %i.dg = atomicrmw add ptr %i.cm, i64 -1 release, align 8, !noalias !1554
end_hunk_0
begin_hunk_1_@_RNvMs3_NtCsltEA4u8Pgfu_11candle_core9quantizedNtB5_7QTensor9embedding:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.661, ptr noundef nonnull align 8 dereferenceable(32) %i.eh, i64 32, i1 false)
  br i1 %.not159, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.sroa.5142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.5145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5145.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5142.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.sroa.4144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4144.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.661, i64 32, i1 false)
  store i64 %i.eg, ptr %0, align 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i)
          to label %bb.bc unwind label %bb.ar

bb.bb:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.661, i64 32, i1 false)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i)
          to label %bb.bq unwind label %bb.ar

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.661)
  br label %bb.bd

bb.bd:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEB1G_.exit213, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEB1G_.exit207, %bb.bc, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.ei = atomicrmw add ptr %i.cy, i64 -1 release, align 8, !noalias !1558
  %i.ej = icmp eq i64 %i.ei, 1
  br i1 %i.ej, label %bb.be, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit204

bb.be:                                            ; preds = %bb.bd
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.r) #30
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit204 unwind label %.split258.thread, !inline_history !0

bb.bf:                                            ; preds = %bb.bn, %bb.bi, %bb.aq, %bb.an, %bb.al, %bb.ae, %bb.y, %bb.t, %.thread, %bb.ay
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.bg:                                            ; preds = %bb.at
  %i.el = extractvalue { ptr, ptr } %i.dr, 0      ; 2 uses
  %i.em = extractvalue { ptr, ptr } %i.dr, 1
  store ptr %i.el, ptr %i.f, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.em, ptr %i.en, align 8
  %i.eo = load i64, ptr %i.el, align 8, !range !11, !noundef !8
  %i.ep = icmp eq i64 %i.eo, 15
  br i1 %i.ep, label %bb.bj, label %bb.bh, !prof !30

bb.bh:                                            ; preds = %bb.bg
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @118, ptr noundef nonnull inttoptr (i64 157 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #25
          to label %bb.bk unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.eq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsh_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit198 unwind label %bb.bf

bb.bj:                                            ; preds = %bb.bg
  store i64 -9223372036854775783, ptr %0, align 8
  invoke void @_RNvXsh_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEB1G_.exit207 unwind label %bb.ar

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEB1G_.exit207: ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.bd

bb.bk:                                            ; preds = %bb.bm, %bb.bh
  unreachable

bb.bl:                                            ; preds = %bb.au
  %i.er = extractvalue { ptr, ptr } %i.ds, 0      ; 2 uses
  %i.es = extractvalue { ptr, ptr } %i.ds, 1
  store ptr %i.er, ptr %i.e, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.es, ptr %i.et, align 8
  %i.eu = load i64, ptr %i.er, align 8, !range !11, !noundef !8
  %i.ev = icmp eq i64 %i.eu, 14
  br i1 %i.ev, label %bb.bo, label %bb.bm, !prof !30

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @118, ptr noundef nonnull inttoptr (i64 157 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #25
          to label %bb.bk unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ew = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsh_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit198 unwind label %bb.bf

bb.bo:                                            ; preds = %bb.bl
  store i64 -9223372036854775784, ptr %0, align 8
  invoke void @_RNvXsh_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEB1G_.exit213 unwind label %bb.ar

bb.bp:                                            ; preds = %bb.bq
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit198

bb.bq:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.661)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 -1, ptr %i.d, align 8, !alias.scope !1559
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  %i.ey = invoke noundef nonnull ptr @_RINvNtCsltEA4u8Pgfu_11candle_core6tensor12from_storageINtNtCsgCecv3eZDcN_5alloc3vec3VecjEEB4_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.d, i1 noundef zeroext false)
          to label %bb.br unwind label %bb.bp

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ey, ptr %i.ez, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.fa = atomicrmw add ptr %i.cy, i64 -1 release, align 8, !noalias !1560
  %i.fb = icmp eq i64 %i.fa, 1
  br i1 %i.fb, label %bb.bs, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit217

bb.bs:                                            ; preds = %bb.br
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.r) #30, !inline_history !0
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit217

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit217: ; preds = %bb.bs, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.bt

bb.bt:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit217, %bb.k, %bb.b
  ret void

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEB1G_.exit213: ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.bd

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit204: ; preds = %bb.bd, %bb.be, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit222
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECsltEA4u8Pgfu_11candle_core.exit unwind label %bb.bu

bb.bu:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit204
  %i.fc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %common.resume unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.fd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

common.resume:                                    ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit202, %.thread, %bb.bu
  %common.resume.op = phi { ptr, i32 } [ %i.fc, %bb.bu ], [ %.pn166249, %.thread ], [ %.pn160, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit202 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECsltEA4u8Pgfu_11candle_core.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit204
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.k

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit190: ; preds = %bb.ag, %bb.ah, %bb.ab
  %i.fe = atomicrmw add ptr %i.cm, i64 -1 release, align 8, !noalias !1561
  %i.ff = icmp eq i64 %i.fe, 1
  br i1 %i.ff, label %bb.bw, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit220

bb.bw:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit190
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.n) #30
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit220 unwind label %bb.u, !inline_history !0

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit220: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit190, %bb.bw, %bb.w
  %i.fg = atomicrmw add ptr %i.cg, i64 -1 release, align 8, !noalias !1562
  %i.fh = icmp eq i64 %i.fg, 1
  br i1 %i.fh, label %bb.bx, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit222

bb.bx:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit220
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.l) #30
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit222 unwind label %.split258.thread, !inline_history !0

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit222: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit220, %bb.bx, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit204

.thread:                                          ; preds = %bb.t, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit186, %.split258.thread, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit202
  %.pn166249 = phi { ptr, i32 } [ %lpad.thr_comm, %.split258.thread ], [ %.pn160, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit202 ], [ %.pn164, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit186 ], [ %.pn164, %bb.t ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t) #26
          to label %common.resume unwind label %bb.bf
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtCsltEA4u8Pgfu_11candle_core9quantizedNtB5_7QMatMul12from_qtensor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1565
  %i.d = tail call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef 8) #29, !noalias !1565 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEE3newB14_.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #25
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEBF_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync8ArcInnerNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEB1i_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync8ArcInnerNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEB1i_.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEE3newB14_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvMs4_NtCsltEA4u8Pgfu_11candle_core9quantizedNtB5_7QMatMul8from_arc(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtCsltEA4u8Pgfu_11candle_core9quantizedNtB5_7QMatMul14dequantize_f16(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = load i64, ptr %1, align 8, !range !18, !noundef !8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  switch i64 %i.b, label %default.unreachable2 [
    i64 0, label %switch.lookup
    i64 1, label %bb.b
    i64 2, label %bb.c
  ]

default.unreachable2:                             ; preds = %bb.a
  unreachable

switch.lookup:                                    ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = getelementptr i8, ptr %i.d, i64 40
  %.val = load i8, ptr %i.f, align 8, !range !13, !noundef !8
  %i.g = shl nuw nsw i8 %.val, 3
  %switch.shiftamt = zext nneg i8 %i.g to i24
  %switch.downshift = lshr i24 66048, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  store i8 %switch.masked, ptr %i.a, align 1
  call void @_RNvMs3_NtCsltEA4u8Pgfu_11candle_core9quantizedNtB5_7QTensor14dequantize_f16(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %0, ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor8to_dtype(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, i8 noundef 6)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %.val1 = load ptr, ptr %i.c, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.h = atomicrmw add ptr %.val1, i64 1 monotonic, align 8
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.d, label %_RNvXsj_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6TensorNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

_RNvXsj_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6TensorNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.val1, ptr %i.j, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RNvXsj_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6TensorNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit, %bb.b, %switch.lookup
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtCsltEA4u8Pgfu_11candle_core9quantizedNtB5_7QMatMul15forward_via_f16(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [80 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 8 uses
  %i.d = alloca [80 x i8], align 8                ; 8 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [80 x i8], align 8                ; 7 uses
  %i.g = alloca [80 x i8], align 8                ; 7 uses
  %i.h = alloca [8 x i8], align 8                 ; 8 uses
  %i.i = alloca [80 x i8], align 8                ; 8 uses
  %i.j = alloca [80 x i8], align 8                ; 7 uses
  %i.k = alloca [8 x i8], align 8                 ; 8 uses
  %i.l = alloca [80 x i8], align 8                ; 8 uses
  %i.m = alloca [8 x i8], align 8                 ; 15 uses
  %i.n = alloca [80 x i8], align 8                ; 8 uses
  %i.o = alloca [8 x i8], align 8                 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1673)
  %i.p = load i64, ptr %1, align 8, !range !18, !alias.scope !1673, !noundef !8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  switch i64 %i.p, label %default.unreachable [
    i64 0, label %switch.lookup
    i64 1, label %bb.b
    i64 2, label %bb.c
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

switch.lookup:                                    ; preds = %bb.a
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !1673, !nonnull !8, !noundef !8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1674
  %i.t = getelementptr i8, ptr %i.r, i64 40
  %.val.i = load i8, ptr %i.t, align 8, !range !13, !noalias !1674, !noundef !8
  %i.u = shl nuw nsw i8 %.val.i, 3
  %switch.shiftamt = zext nneg i8 %i.u to i24
  %switch.downshift = lshr i24 66048, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  store i8 %switch.masked, ptr %i.a, align 1, !noalias !1674
  call void @_RNvMs3_NtCsltEA4u8Pgfu_11candle_core9quantizedNtB5_7QTensor14dequantize_f16(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.n, ptr noundef nonnull align 8 %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a), !noalias !1673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1674
  br label %_RNvMs4_NtCsltEA4u8Pgfu_11candle_core9quantizedNtB5_7QMatMul14dequantize_f16.exit

bb.b:                                             ; preds = %bb.a
  call void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor8to_dtype(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q, i8 noundef 6)
  br label %_RNvMs4_NtCsltEA4u8Pgfu_11candle_core9quantizedNtB5_7QMatMul14dequantize_f16.exit

bb.c:                                             ; preds = %bb.a
  %.val1.i = load ptr, ptr %i.q, align 8, !alias.scope !1673, !nonnull !8, !noundef !8 ; 2 uses
  %i.v = atomicrmw add ptr %.val1.i, i64 1 monotonic, align 8, !noalias !1674
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %bb.d, label %_RNvMs4_NtCsltEA4u8Pgfu_11candle_core9quantizedNtB5_7QMatMul14dequantize_f16.exit.thread

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

_RNvMs4_NtCsltEA4u8Pgfu_11candle_core9quantizedNtB5_7QMatMul14dequantize_f16.exit: ; preds = %switch.lookup, %bb.b
  %.pr = load i64, ptr %i.n, align 8              ; 2 uses
  %.not = icmp eq i64 %.pr, -1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8 ; 2 uses
  br i1 %.not, label %_RNvMs4_NtCsltEA4u8Pgfu_11candle_core9quantizedNtB5_7QMatMul14dequantize_f16.exit.thread, label %bb.e

bb.e:                                             ; preds = %_RNvMs4_NtCsltEA4u8Pgfu_11candle_core9quantizedNtB5_7QMatMul14dequantize_f16.exit
  %.sroa.581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.584.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.581.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  store i64 %.pr, ptr %0, align 8
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pre, ptr %.sroa.483.0..sroa_idx, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit172

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit167: ; preds = %bb.al, %bb.am, %bb.ab, %bb.ac, %bb.l, %bb.m, %bb.g
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.ab ], [ %i.z, %bb.g ], [ %i.an, %bb.l ], [ %i.an, %bb.m ], [ %i.bf, %bb.ac ], [ %i.bs, %bb.am ], [ %i.bs, %bb.al ] ; 2 uses
  %i.x = atomicrmw add ptr %i.aa, i64 -1 release, align 8, !noalias !1675
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit

bb.f:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit167
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.o) #30
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit unwind label %bb.t, !inline_history !0

bb.g:                                             ; preds = %bb.ah, %bb.af, %bb.r, %bb.p, %bb.x, %bb.w, %bb.h
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit167

_RNvMs4_NtCsltEA4u8Pgfu_11candle_core9quantizedNtB5_7QMatMul14dequantize_f16.exit.thread: ; preds = %_RNvMs4_NtCsltEA4u8Pgfu_11candle_core9quantizedNtB5_7QMatMul14dequantize_f16.exit, %bb.c
  %i.aa = phi ptr [ %.val1.i, %bb.c ], [ %.pre, %_RNvMs4_NtCsltEA4u8Pgfu_11candle_core9quantizedNtB5_7QMatMul14dequantize_f16.exit ] ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  store ptr %i.aa, ptr %i.o, align 8
end_hunk_1
begin_hunk_2_@_RNvMs8_NtCsltEA4u8Pgfu_11candle_core11safetensorsNtB5_10MmapedFile11deserialize:bb.a
  call void @_RNvMs2_NtCsOwuIBbUsgI_11safetensors6tensorNtB5_11SafeTensors11deserialize(ptr noalias nofree noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.f)
  %i.g = load i64, ptr %i.b, align 8, !range !20, !noundef !8 ; 2 uses
  %i.h = icmp eq i64 %i.g, -1
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false)
  store i64 -9223372036854775773, ptr %i.a, align 8
  call void @_RINvMs_NtCsltEA4u8Pgfu_11candle_core5errorNtB5_5Error9with_pathRNtNtCs5Xr050g3D4S_3std4path7PathBufEB7_(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %.sroa.66, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.66, ptr noundef nonnull align 8 dereferenceable(80) %i.i, i64 80, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx, i64 48, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.66, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  store i64 %i.g, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object11int_or_long(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 16)) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !23, !noundef !8 ; 2 uses
  %i.b = icmp slt i64 %i.a, 0
  %i.c = add i64 %i.a, -9223372036854775807
  %i.d = select i1 %i.b, i64 %i.c, i64 0
  switch i64 %i.d, label %bb.b [
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 8, !noundef !8
  %i.g = sext i32 %i.f to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink = phi i64 [ %i.i, %bb.d ], [ %i.g, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink, ptr %i.j, align 8
  store i64 -1, ptr %0, align 8
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object15persistent_load(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 56)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !23, !noundef !8
  %i.b = icmp eq i64 %i.a, -9223372036854775796
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  store i64 0, ptr %0, align 8
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 48, i64 noundef 8) #29
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  store i64 1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object16into_tensor_info(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.497 = alloca [40 x i8], align 8          ; 5 uses
  %i.c = alloca [80 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = alloca [80 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 6 uses
  %i.g = alloca [80 x i8], align 8                ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 2 uses
  %i.l = alloca [56 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.035 = alloca [104 x i8], align 8         ; 4 uses
  %i.n = alloca [48 x i8], align 8                ; 4 uses
  %i.o = alloca [96 x i8], align 8                ; 9 uses
  %.sroa.626 = alloca [72 x i8], align 8          ; 7 uses
  %.sroa.10 = alloca [7 x i8], align 1            ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %i.s = alloca [48 x i8], align 8                ; 4 uses
  %i.t = alloca [96 x i8], align 8                ; 6 uses
  %.sroa.620 = alloca [88 x i8], align 8          ; 8 uses
  %.sroa.8295 = alloca [24 x i8], align 8         ; 6 uses
  %.sroa.10297 = alloca [16 x i8], align 8        ; 4 uses
  %.sroa.7203 = alloca [24 x i8], align 8         ; 5 uses
  %.sroa.611 = alloca [24 x i8], align 8          ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 10 uses
  %i.v = alloca [24 x i8], align 8                ; 7 uses
  %i.w = alloca [24 x i8], align 8                ; 7 uses
  %i.x = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.7197 = alloca [24 x i8], align 8         ; 5 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 5 uses
  %i.y = alloca [24 x i8], align 8                ; 8 uses
  %i.z = alloca [24 x i8], align 8                ; 7 uses
  %i.aa = alloca [24 x i8], align 8               ; 7 uses
  %i.ab = alloca [48 x i8], align 8               ; 8 uses
  %i.ac = alloca [48 x i8], align 8               ; 24 uses
  %i.ad = alloca [96 x i8], align 8               ; 14 uses
  %i.ae = alloca [48 x i8], align 8               ; 23 uses
  %i.af = alloca [48 x i8], align 8               ; 8 uses
  %i.ag = alloca [24 x i8], align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1886)
  %i.ah = load i64, ptr %2, align 8, !range !23, !alias.scope !1887, !noundef !8
  %i.ai = icmp eq i64 %i.ah, -9223372036854775805
  %.sink1.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %.sink1.i.sroa.gep186 = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  br i1 %i.ai, label %_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object7unicode.exit.thread, label %_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object7unicode.exit

_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object7unicode.exit.thread: ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.aj, i64 24, i1 false), !alias.scope !1888
  br label %bb.b

.body165:                                         ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit.i164
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 0
  %i.am = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 1
  br label %bb.cq

_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object7unicode.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr noundef nonnull readonly align 8 dereferenceable(48) %2, i64 48, i1 false), !alias.scope !1888
  %.pr = load i64, ptr %i.af, align 8
  %.not = icmp eq i64 %.pr, -1
  br i1 %.not, label %bb.b, label %bb.cp

bb.b:                                             ; preds = %_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object7unicode.exit, %_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object7unicode.exit.thread
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %.sroa.0.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  %.sroa.5189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5189.0.copyload = load ptr, ptr %.sroa.5189.0..sroa_idx, align 8 ; 4 uses
  %.sroa.6192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6192.0.copyload = load ptr, ptr %.sroa.6192.0..sroa_idx, align 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1889)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1890)
  %i.ao = icmp eq i64 %.sroa.0.0.copyload, -9223372036854775798
  br i1 %i.ao, label %_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object6reduce.exit, label %_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object6reduce.exit.thread

_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object6reduce.exit.thread: ; preds = %bb.b
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.sroa.0.0.copyload, ptr %.sink1.i.sroa.gep186, align 8, !alias.scope !1891
  %.sroa.5189.0..sroa_idx190 = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %.sroa.5189.0.copyload, ptr %.sroa.5189.0..sroa_idx190, align 8, !alias.scope !1891
  %.sroa.6192.0..sroa_idx193 = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr %.sroa.6192.0.copyload, ptr %.sroa.6192.0..sroa_idx193, align 8, !alias.scope !1891
  %.sroa.7.0..sroa_idx195 = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx195, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx, i64 24, i1 false)
  store i64 -1, ptr %i.ad, align 8, !alias.scope !1889
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectBC_EEBG_.exit.i170

.critedge143:                                     ; preds = %.body146.a, %.critedge141.thread, %bb.cn, %.critedge141
  %.sroa.36.2289 = phi i32 [ %.sroa.36.2290, %.critedge141.thread ], [ %.sroa.36.2290, %bb.cn ], [ %.sroa.36.2, %.critedge141 ], [ %i.ay, %.body146.a ] ; 2 uses
  %.sroa.0101.2287 = phi ptr [ %.sroa.0101.2288, %.critedge141.thread ], [ %.sroa.0101.2288, %bb.cn ], [ %.sroa.0101.2, %.critedge141 ], [ %i.ax, %.body146.a ] ; 2 uses
  %.sroa.055.2285 = phi i1 [ %.sroa.055.2286, %.critedge141.thread ], [ %.sroa.055.2286, %bb.cn ], [ %.sroa.055.2, %.critedge141 ], [ %.sroa.055.3.ph, %.body146.a ]
  br i1 %.sroa.055.2285, label %bb.co, label %bb.cq

.body.thread230:                                  ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectBC_EEBG_.exit.i170, %bb.cg
  %lpad.thr_comm228 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = extractvalue { ptr, i32 } %lpad.thr_comm228, 0
  %i.aq = extractvalue { ptr, i32 } %lpad.thr_comm228, 1
  br label %bb.co

.body:                                            ; preds = %bb.bs
  %lpad.thr_comm.split-lp229 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp229, 0
  %i.as = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp229, 1
  br label %bb.cq

_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object6reduce.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5189.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6192.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5189.0.copyload, i64 48, i1 false), !noalias !1891
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.at, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6192.0.copyload, i64 48, i1 false), !noalias !1891
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ad, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false), !noalias !1890
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6192.0.copyload, i64 noundef 48, i64 noundef 8) #29, !noalias !1891
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5189.0.copyload, i64 noundef 48, i64 noundef 8) #29, !noalias !1891
  %.pr233 = load i64, ptr %i.ad, align 8
  %i.au = icmp eq i64 %.pr233, -1
  br i1 %i.au, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectBC_EEBG_.exit.i170, label %bb.c

bb.c:                                             ; preds = %_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object6reduce.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i64 48, i1 false)
  %.sroa.0299.0.copyload = load i64, ptr %.sink1.i.sroa.gep, align 8 ; 5 uses
  %.sroa.2300.0..sink1.i.sroa.gep.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8295, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2300.0..sink1.i.sroa.gep.sroa_idx, i64 24, i1 false)
  %.sroa.3.0..sink1.i.sroa.gep.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10297, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sink1.i.sroa.gep.sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.av = load i64, ptr %i.ae, align 8, !range !23, !noundef !8 ; 2 uses
  %i.aw = icmp sgt i64 %i.av, -1
  br i1 %i.aw, label %bb.e, label %.thread

bb.d:                                             ; preds = %bb.ax, %bb.au, %bb.ag, %bb.x
  %lpad.thr_comm291 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %5 = extractvalue { ptr, i32 } %lpad.thr_comm291, 0
  %6 = extractvalue { ptr, i32 } %lpad.thr_comm291, 1
  br label %.critedge141.thread

.body146.a:                                       ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit.i155, %bb.bx, %bb.bq
  %.sroa.055.3.ph = phi i1 [ true, %bb.bx ], [ true, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit.i155 ], [ false, %bb.bq ] ; 2 uses
  %lpad.thr_comm.split-lp292 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp292, 0 ; 2 uses
  %i.ay = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp292, 1 ; 2 uses
  br i1 %9, label %.critedge141.thread, label %.critedge143

.body146:                                         ; preds = %bb.cd
  %7 = extractvalue { ptr, i32 } %i.ga, 0         ; 2 uses
  %8 = extractvalue { ptr, i32 } %i.ga, 1         ; 2 uses
  br i1 %9, label %.critedge141.thread, label %bb.co

bb.e:                                             ; preds = %bb.c
  %i.az = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !noundef !8
  switch i64 %i.bb, label %.thread [
    i64 13, label %bb.f
    i64 12, label %bb.j
  ]

.thread:                                          ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.l, %bb.k, %bb.j, %bb.c
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.497, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.497.0..sroa_idx, i64 40, i1 false)
  store i64 %.sroa.0299.0.copyload, ptr %i.b, align 8
  %.sroa.8295.0..sroa_idx296 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8295.0..sroa_idx296, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8295, i64 24, i1 false)
  %.sroa.10297.0..sroa_idx298 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10297.0..sroa_idx298, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10297, i64 16, i1 false)
  br label %bb.z

bb.f:                                             ; preds = %bb.e
  %i.bc = load ptr, ptr %i.az, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 1
  %i.be = xor i64 %i.bd, 8385472057067073396
  %i.bf = getelementptr i8, ptr %i.bc, i64 5
  %i.bg = load i64, ptr %i.bf, align 1
  %i.bh = xor i64 %i.bg, 8245936360724389678
  %i.bi = or i64 %i.be, %i.bh
  %i.bj = icmp ne i64 %i.bi, 0
  %i.bk = zext i1 %i.bj to i32
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !8
  %i.bp = icmp eq i64 %i.bo, 21
  br i1 %i.bp, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.bs = load i128, ptr %i.br, align 1
  %i.bt = xor i128 %i.bs, 161440829424838058664436849268020834911
  %i.bu = getelementptr i8, ptr %i.br, i64 5
  %i.bv = load i128, ptr %i.bu, align 1
  %i.bw = xor i128 %i.bv, 67076025684318814833747688482805148777
  %i.bx = or i128 %i.bt, %i.bw
  %i.by = icmp ne i128 %i.bx, 0
  %i.bz = zext i1 %i.by to i32
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7197)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7197, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8295, i64 24, i1 false)
  switch i64 %.sroa.0299.0.copyload, label %bb.al [
    i64 -9223372036854775802, label %_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object5tuple.exit.thread
    i64 -1, label %_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object5tuple.exit.thread
  ]

bb.j:                                             ; preds = %bb.e
  %i.cb = load ptr, ptr %i.az, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 1
  %i.cd = xor i64 %i.cc, 8457529651105001332
  %i.ce = getelementptr i8, ptr %i.cb, i64 8
  %i.cf = load i32, ptr %i.ce, align 1
  %i.cg = zext i32 %i.cf to i64
  %i.ch = xor i64 %i.cg, 1936484724
  %i.ci = or i64 %i.cd, %i.ch
  %i.cj = icmp ne i64 %i.ci, 0
  %i.ck = zext i1 %i.cj to i32
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.co = load i64, ptr %i.cn, align 8, !noundef !8
  %i.cp = icmp eq i64 %i.co, 18
  br i1 %i.cp, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.cs = load i128, ptr %i.cr, align 1
  %i.ct = xor i128 %i.cs, 154717087996939908351899155867327885919
  %i.cu = getelementptr i8, ptr %i.cr, i64 16
  %i.cv = load i16, ptr %i.cu, align 1
  %i.cw = zext i16 %i.cv to i128
  %i.cx = xor i128 %i.cw, 29285
  %i.cy = or i128 %i.ct, %i.cx
  %i.cz = icmp ne i128 %i.cy, 0
  %i.da = zext i1 %i.cz to i32
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.cm, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.611)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7203)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7203, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8295, i64 24, i1 false)
  switch i64 %.sroa.0299.0.copyload, label %bb.p [
    i64 -9223372036854775802, label %_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object5tuple.exit149.thread
    i64 -1, label %_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object5tuple.exit149.thread
  ]

bb.n:                                             ; preds = %bb.aa, %bb.q, %bb.o
  %.pn = phi { ptr, i32 } [ %i.dc, %bb.o ], [ %i.dm, %bb.aa ], [ %i.dd, %bb.q ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v) #26
          to label %bb.v unwind label %bb.ae

bb.o:                                             ; preds = %bb.ab, %bb.t, %bb.p
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.p:                                             ; preds = %bb.m
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.517.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10297, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7203)
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.416.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8295, i64 24, i1 false)
  store i64 %.sroa.0299.0.copyload, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvXs4_NtCsltEA4u8Pgfu_11candle_core6pickleNtNtB7_5error5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtB5_6ObjectE4from(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.f)
          to label %bb.af unwind label %bb.o

_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object5tuple.exit149.thread: ; preds = %bb.m, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.611, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7203, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7203)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.611, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.611)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.620)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectE6removeBI_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @127)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object5tuple.exit149.thread
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u) #26
          to label %bb.n unwind label %bb.ae

bb.r:                                             ; preds = %_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object5tuple.exit149.thread
  call void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object6reduce(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.t, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.de = load i64, ptr %i.t, align 8, !range !33, !noundef !8 ; 2 uses
  %i.df = icmp eq i64 %i.de, -1
  %i.dg = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  br i1 %i.df, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.620, ptr noundef nonnull align 8 dereferenceable(48) %i.dg, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.620, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXs4_NtCsltEA4u8Pgfu_11candle_core6pickleNtNtB7_5error5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtB5_6ObjectE4from(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.d)
          to label %bb.ab unwind label %bb.aa

bb.t:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.620, ptr noundef nonnull align 8 dereferenceable(88) %i.dg, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.497, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.620, i64 40, i1 false)
  %.sroa.620.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.620, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.620.48..sroa_idx, i64 48, i1 false)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u)
          to label %bb.u unwind label %bb.o

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.620)
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %bb.x unwind label %bb.w

bb.v:                                             ; preds = %bb.w, %bb.n
  %.pn113 = phi { ptr, i32 } [ %i.dh, %bb.w ], [ %.pn, %bb.n ] ; 2 uses
  %.sroa.36.4 = extractvalue { ptr, i32 } %.pn113, 1
  %.sroa.0101.4 = extractvalue { ptr, i32 } %.pn113, 0
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w) #26
          to label %.critedge141.thread unwind label %bb.ae

bb.w:                                             ; preds = %bb.ad, %bb.u
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.x:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.y unwind label %bb.d

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.z

bb.z:                                             ; preds = %bb.av, %bb.y, %.thread
  %9 = phi i1 [ true, %bb.av ], [ true, %bb.y ], [ false, %.thread ] ; 5 uses
  %.sroa.094.0 = phi i64 [ %.sroa.094.0.copyload96, %bb.av ], [ %i.de, %bb.y ], [ %i.av, %.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store i64 %.sroa.094.0, ptr %i.ac, align 8
  %.sroa.497.0..sroa_idx98 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.497.0..sroa_idx98, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.497, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  %i.di = icmp sgt i64 %.sroa.094.0, -1
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.dk = load i64, ptr %i.dj, align 8
  %i.dl = icmp eq i64 %i.dk, 12
  %or.cond135 = select i1 %i.di, i1 %i.dl, i1 false
  br i1 %or.cond135, label %bb.ba, label %bb.az

bb.aa:                                            ; preds = %bb.s
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u) #26
          to label %bb.n unwind label %bb.ae

bb.ab:                                            ; preds = %bb.s
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.dn, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u)
          to label %bb.ac unwind label %bb.o

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.620)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.af, %bb.ac
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %bb.ag unwind label %bb.w

bb.ae:                                            ; preds = %bb.cr, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %.body151, %.thread238, %bb.bv, %bb.bu, %bb.bm, %bb.bj, %bb.bd, %bb.as, %bb.ap, %bb.am, %bb.aj, %bb.aa, %bb.v, %bb.q, %bb.n
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.af:                                            ; preds = %bb.p
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.dp, ptr noundef nonnull align 8 dereferenceable(80) %i.e, i64 80, i1 false)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.611)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.ad

bb.ag:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.ah unwind label %bb.d

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ay, %bb.ah
  %.old = load i64, ptr %i.ae, align 8, !range !23, !noundef !8
  %.old131 = icmp sgt i64 %.old, -1
  br i1 %.old131, label %bb.cf, label %bb.cg

bb.aj:                                            ; preds = %bb.am, %bb.ak
  %.pn125 = phi { ptr, i32 } [ %i.dq, %bb.ak ], [ %.pn116, %bb.am ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z) #26
          to label %bb.as unwind label %bb.ae

bb.ak:                                            ; preds = %bb.aq, %bb.al
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.al:                                            ; preds = %bb.i
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10297, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7197)
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.48.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8295, i64 24, i1 false)
  store i64 %.sroa.0299.0.copyload, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvXs4_NtCsltEA4u8Pgfu_11candle_core6pickleNtNtB7_5error5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtB5_6ObjectE4from(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.h)
          to label %bb.aw unwind label %bb.ak

_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object5tuple.exit.thread: ; preds = %bb.i, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7197, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7197)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectE6removeBI_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128)
          to label %bb.ao unwind label %bb.an

bb.am:                                            ; preds = %bb.ap, %bb.an
  %.pn116 = phi { ptr, i32 } [ %i.ds, %bb.ap ], [ %i.dr, %bb.an ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y) #26
          to label %bb.aj unwind label %bb.ae

bb.an:                                            ; preds = %_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object5tuple.exit.thread
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ao:                                            ; preds = %_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object5tuple.exit.thread
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectE6removeBI_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129)
          to label %bb.aq unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.x) #26
          to label %bb.am unwind label %bb.ae

bb.aq:                                            ; preds = %bb.ao
  %.sroa.094.0.copyload96 = load i64, ptr %i.x, align 8
  %.sroa.497.0..sroa_idx99 = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.497, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.497.0..sroa_idx99, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y)
          to label %bb.ar unwind label %bb.ak

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %bb.au unwind label %bb.at

bb.as:                                            ; preds = %bb.at, %bb.aj
  %.pn127 = phi { ptr, i32 } [ %i.dt, %bb.at ], [ %.pn125, %bb.aj ] ; 2 uses
  %.sroa.36.7 = extractvalue { ptr, i32 } %.pn127, 1
  %.sroa.0101.7 = extractvalue { ptr, i32 } %.pn127, 0
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa) #26
          to label %.critedge141.thread unwind label %bb.ae

bb.at:                                            ; preds = %bb.aw, %bb.ar
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.au:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %bb.av unwind label %bb.d

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.z

bb.aw:                                            ; preds = %bb.al
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.du, ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 80, i1 false)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %bb.ax unwind label %bb.at

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %bb.ay unwind label %bb.d

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.ai

bb.az:                                            ; preds = %bb.bb, %bb.ba, %bb.z
  store i64 -1, ptr %0, align 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ab)
          to label %bb.bw unwind label %.thread244.thread

bb.ba:                                            ; preds = %bb.z
  %i.dv = load ptr, ptr %.sroa.497.0..sroa_idx98, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 1
  %i.dx = xor i64 %i.dw, 8457529651105001332
  %i.dy = getelementptr i8, ptr %i.dv, i64 8
  %i.dz = load i32, ptr %i.dy, align 1
  %i.ea = zext i32 %i.dz to i64
  %i.eb = xor i64 %i.ea, 1936484724
  %i.ec = or i64 %i.dx, %i.eb
  %i.ed = icmp ne i64 %i.ec, 0
  %i.ee = zext i1 %i.ed to i32
  %i.ef = icmp eq i32 %i.ee, 0
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.eh = load i64, ptr %i.eg, align 8
  %i.ei = icmp eq i64 %i.eh, 18
  %or.cond = select i1 %i.ef, i1 %i.ei, i1 false
  br i1 %or.cond, label %bb.bb, label %bb.az

bb.bb:                                            ; preds = %bb.ba
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ek = load ptr, ptr %i.ej, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.el = load i128, ptr %i.ek, align 1
  %i.em = xor i128 %i.el, 126870841934310674893648038352394744415
  %i.en = getelementptr i8, ptr %i.ek, i64 16
  %i.eo = load i16, ptr %i.en, align 1
  %i.ep = zext i16 %i.eo to i128
  %i.eq = xor i128 %i.ep, 12918
  %i.er = or i128 %i.em, %i.eq
  %i.es = icmp ne i128 %i.er, 0
  %i.et = zext i1 %i.es to i32
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %bb.bc, label %bb.az

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.497, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.ev, i64 24, i1 false)
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.be unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ew = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r) #26
          to label %.thread238 unwind label %bb.ae

bb.be:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %bb.bg unwind label %bb.bf

.thread251:                                       ; preds = %bb.bn, %bb.bg
  %.sroa.055.5.ph = phi i1 [ true, %bb.bg ], [ false, %bb.bn ]
  %lpad.thr_comm249 = landingpad { ptr, i32 }
          cleanup
  br label %.thread244

bb.bf:                                            ; preds = %bb.be
  %lpad.thr_comm.split-lp250 = landingpad { ptr, i32 }
          cleanup
  br label %.thread238

bb.bg:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.626)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i64 48, i1 false)
  invoke fastcc void @_RNvNtCsltEA4u8Pgfu_11candle_core6pickle12rebuild_args(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %i.o, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.n)
          to label %bb.bh unwind label %.thread251

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ex = load i64, ptr %i.o, align 8, !range !20, !noundef !8 ; 2 uses
  %i.ey = icmp eq i64 %i.ex, -1
  %i.ez = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.626, ptr noundef nonnull align 8 dereferenceable(72) %i.ez, i64 72, i1 false)
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %.sroa.479.0.copyload = load i8, ptr %.sroa.479.0..sroa_idx, align 8 ; 2 uses
  br i1 %i.ey, label %.thread255, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %.sroa.774.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %.sroa.774.0.copyload = load i64, ptr %.sroa.774.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.626, i64 48, i1 false)
  %.sroa.626.56..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.626, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.626.56..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.626)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false)
  store i64 %i.ex, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
          to label %bb.bl unwind label %bb.bk

bb.bj:                                            ; preds = %bb.bm, %bb.bk
  %.pn120 = phi { ptr, i32 } [ %i.fa, %bb.bk ], [ %i.fc, %bb.bm ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6layout6LayoutEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.l) #26
          to label %bb.bu unwind label %bb.ae

bb.bk:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsltEA4u8Pgfu_11candle_core.exit, %bb.bi
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bl:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.j, ptr %i.i, align 8
  %.sroa.487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXsb_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CoweENtNtCsf3Ta7LF998c_4core3fmt7Display3fmtCsltEA4u8Pgfu_11candle_core, ptr %.sroa.487.0..sroa_idx, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.p, ptr %i.fb, align 8
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXsq_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.491.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noundef nonnull @130, ptr noundef nonnull %i.i)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsltEA4u8Pgfu_11candle_core.exit unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #26
          to label %bb.bj unwind label %bb.ae

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsltEA4u8Pgfu_11candle_core.exit: ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j)
          to label %bb.bn unwind label %bb.bk

bb.bn:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsltEA4u8Pgfu_11candle_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.035, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  %.sroa.035.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.035, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.035.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.l, i64 56, i1 false)
  %.sroa.035.80..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.035, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.035.80..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.035, i64 104, i1 false)
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %.sroa.774.0.copyload, ptr %.sroa.439.0..sroa_idx, align 8
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 %.sroa.479.0.copyload, ptr %.sroa.540.0..sroa_idx, align 8
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.bo unwind label %.thread251

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.fd = load i64, ptr %i.ac, align 8, !range !23, !noundef !8
  %i.fe = icmp sgt i64 %i.fd, -1
  br i1 %i.fe, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bq, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.ff = load i64, ptr %i.ae, align 8, !range !23
  %i.fg = icmp slt i64 %i.ff, 0
  %or.cond139.not = select i1 %9, i1 %i.fg, i1 false
  br i1 %or.cond139.not, label %bb.bs, label %bb.br

bb.bq:                                            ; preds = %bb.bo
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ac)
          to label %bb.bp unwind label %.body146.a

bb.br:                                            ; preds = %bb.bs, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bp
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ae)
          to label %bb.br unwind label %.body

bb.bt:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEEB1D_.exit185, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core.exit168, %bb.br
  ret void

bb.bu:                                            ; preds = %bb.bj
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #26
          to label %bb.bv unwind label %bb.ae

bb.bv:                                            ; preds = %bb.bu
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p) #26
          to label %.thread244 unwind label %bb.ae

bb.bw:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.fh = load i64, ptr %i.ac, align 8, !range !23, !noundef !8
  %i.fi = icmp sgt i64 %i.fh, -1
  br i1 %i.fi, label %bb.by, label %bb.bx

.thread255:                                       ; preds = %bb.bh
  %.sroa.580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.580.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fj, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.626, i64 72, i1 false)
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.583.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10, i64 7, i1 false)
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 %.sroa.479.0.copyload, ptr %.sroa.482.0..sroa_idx, align 8
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.626)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.fk = load i64, ptr %i.ac, align 8, !range !23, !noundef !8
  %i.fl = icmp sgt i64 %i.fk, -1
  br i1 %i.fl, label %.critedge, label %bb.bx

.thread244:                                       ; preds = %bb.bv, %.thread251, %.thread238
  %.sroa.055.6 = phi i1 [ true, %.thread238 ], [ %.sroa.055.5.ph, %.thread251 ], [ false, %bb.bv ] ; 2 uses
  %.pn122.pn = phi { ptr, i32 } [ %.pn122243, %.thread238 ], [ %lpad.thr_comm249, %.thread251 ], [ %.pn120, %bb.bv ] ; 2 uses
  %.sroa.36.10 = extractvalue { ptr, i32 } %.pn122.pn, 1 ; 2 uses
  %.sroa.0101.10 = extractvalue { ptr, i32 } %.pn122.pn, 0 ; 2 uses
  %i.fm = load i64, ptr %i.ac, align 8, !range !23, !noundef !8
  %i.fn = icmp sgt i64 %i.fm, -1
  br i1 %i.fn, label %.critedge141, label %bb.ck

.thread244.thread:                                ; preds = %bb.az
  %i.fo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.sroa.36.10263 = extractvalue { ptr, i32 } %i.fo, 1 ; 2 uses
  %.sroa.0101.10264 = extractvalue { ptr, i32 } %i.fo, 0 ; 2 uses
  %i.fp = load i64, ptr %i.ac, align 8, !range !23, !noundef !8
  %i.fq = icmp sgt i64 %i.fp, -1
  br i1 %i.fq, label %bb.cl, label %bb.ck

.thread238:                                       ; preds = %bb.bd, %bb.bf
  %.pn122243 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp250, %bb.bf ], [ %i.ew, %bb.bd ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ab) #26
          to label %.thread244 unwind label %bb.ae

bb.bx:                                            ; preds = %.thread255, %bb.bw
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ac)
          to label %.critedge unwind label %.body146.a

bb.by:                                            ; preds = %bb.bw
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit.i unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.fr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.body151 unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.fs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit.i: ; preds = %bb.by
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %bb.cc unwind label %bb.cb

bb.cb:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit.i
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %.body151

.body151:                                         ; preds = %bb.bz, %bb.cb
  %eh.lpad-body152 = phi { ptr, i32 } [ %i.ft, %bb.cb ], [ %i.fr, %bb.bz ] ; 2 uses
  %i.fu = extractvalue { ptr, i32 } %eh.lpad-body152, 1
  %i.fv = extractvalue { ptr, i32 } %eh.lpad-body152, 0
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fw) #26
          to label %.critedge141 unwind label %bb.ae

.critedge:                                        ; preds = %.thread255, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit.i155, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.fx = load i64, ptr %i.ae, align 8, !range !23
  %i.fy = icmp slt i64 %i.fx, 0
  %or.cond.not = select i1 %9, i1 %i.fy, i1 false
  br i1 %or.cond.not, label %bb.cg, label %bb.cf

bb.cc:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fz)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit.i155 unwind label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ga = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fz)
          to label %.body146 unwind label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.gb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit.i155: ; preds = %bb.cc
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fz)
          to label %.critedge unwind label %.body146.a

bb.cf:                                            ; preds = %bb.cg, %.critedge, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.ch

bb.cg:                                            ; preds = %.critedge, %bb.ai
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ae)
          to label %bb.cf unwind label %.body.thread230

bb.ch:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectBY_EBY_EEB12_.exit177, %bb.cf
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit.i164 unwind label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.gc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.body165.thread215 unwind label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.gd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #28
  unreachable

.body165.thread215:                               ; preds = %bb.ci
  %i.ge = extractvalue { ptr, i32 } %i.gc, 0
  %i.gf = extractvalue { ptr, i32 } %i.gc, 1
  br label %bb.cq

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit.i164: ; preds = %bb.ch
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core.exit168 unwind label %.body165

bb.ck:                                            ; preds = %.thread244.thread, %.thread244
  %.sroa.0101.10270 = phi ptr [ %.sroa.0101.10264, %.thread244.thread ], [ %.sroa.0101.10, %.thread244 ]
  %.sroa.36.10268 = phi i32 [ %.sroa.36.10263, %.thread244.thread ], [ %.sroa.36.10, %.thread244 ]
  %.sroa.055.6266 = phi i1 [ true, %.thread244.thread ], [ %.sroa.055.6, %.thread244 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ac) #26
          to label %.critedge141 unwind label %bb.ae

bb.cl:                                            ; preds = %.thread244.thread
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac) #26
          to label %bb.cm unwind label %bb.ae

bb.cm:                                            ; preds = %bb.cl
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gg) #26
          to label %.critedge141 unwind label %bb.ae

.critedge141:                                     ; preds = %.body151, %bb.ck, %bb.cm, %.thread244
  %.sroa.055.2 = phi i1 [ true, %bb.cm ], [ %.sroa.055.6, %.thread244 ], [ true, %.body151 ], [ %.sroa.055.6266, %bb.ck ] ; 2 uses
  %.sroa.0101.2 = phi ptr [ %.sroa.0101.10264, %bb.cm ], [ %.sroa.0101.10, %.thread244 ], [ %i.fv, %.body151 ], [ %.sroa.0101.10270, %bb.ck ] ; 2 uses
  %.sroa.36.2 = phi i32 [ %.sroa.36.10263, %bb.cm ], [ %.sroa.36.10, %.thread244 ], [ %i.fu, %.body151 ], [ %.sroa.36.10268, %bb.ck ] ; 2 uses
  br i1 %9, label %.critedge141.thread, label %.critedge143

.critedge141.thread:                              ; preds = %bb.d, %bb.v, %bb.as, %.body146.a, %.body146, %.critedge141
  %.sroa.36.2290 = phi i32 [ %i.ay, %.body146.a ], [ %.sroa.36.2, %.critedge141 ], [ %8, %.body146 ], [ %.sroa.36.4, %bb.v ], [ %.sroa.36.7, %bb.as ], [ %6, %bb.d ] ; 2 uses
  %.sroa.0101.2288 = phi ptr [ %i.ax, %.body146.a ], [ %.sroa.0101.2, %.critedge141 ], [ %7, %.body146 ], [ %.sroa.0101.4, %bb.v ], [ %.sroa.0101.7, %bb.as ], [ %5, %bb.d ] ; 2 uses
  %.sroa.055.2286 = phi i1 [ %.sroa.055.3.ph, %.body146.a ], [ %.sroa.055.2, %.critedge141 ], [ true, %.body146 ], [ true, %bb.v ], [ true, %bb.as ], [ true, %bb.d ] ; 2 uses
  %i.gh = load i64, ptr %i.ae, align 8, !range !23, !noundef !8
  %i.gi = icmp sgt i64 %i.gh, -1
  br i1 %i.gi, label %.critedge143, label %bb.cn

bb.cn:                                            ; preds = %.critedge141.thread
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ae) #26
          to label %.critedge143 unwind label %bb.ae

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectBC_EEBG_.exit.i170: ; preds = %_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object6reduce.exit.thread, %_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object6reduce.exit
  store i64 -1, ptr %0, align 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %.sink1.i.sroa.gep186)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectBY_EBY_EEB12_.exit177 unwind label %.body.thread230

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectBY_EBY_EEB12_.exit177: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectBC_EEBG_.exit.i170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.ch

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core.exit168: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsltEA4u8Pgfu_11candle_core.exit.i164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.bt

bb.co:                                            ; preds = %.body146, %.body.thread230, %.critedge143
  %.sroa.36.1224 = phi i32 [ %i.aq, %.body.thread230 ], [ %.sroa.36.2289, %.critedge143 ], [ %8, %.body146 ]
  %.sroa.0101.1223 = phi ptr [ %i.ap, %.body.thread230 ], [ %.sroa.0101.2287, %.critedge143 ], [ %7, %.body146 ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag) #26
          to label %bb.cq unwind label %bb.ae

bb.cp:                                            ; preds = %_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object7unicode.exit
  store i64 -1, ptr %0, align 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.af)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEEB1D_.exit185 unwind label %bb.cr

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEEB1D_.exit185: ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %1)
  br label %bb.bt

bb.cq:                                            ; preds = %.critedge143, %bb.co, %.body, %.body165, %.body165.thread215, %bb.cr
  %.sroa.36.0211 = phi i32 [ %i.am, %.body165 ], [ %i.gm, %bb.cr ], [ %i.gf, %.body165.thread215 ], [ %.sroa.36.2289, %.critedge143 ], [ %.sroa.36.1224, %bb.co ], [ %i.as, %.body ]
  %.sroa.0101.0209 = phi ptr [ %i.al, %.body165 ], [ %i.gl, %bb.cr ], [ %i.ge, %.body165.thread215 ], [ %.sroa.0101.2287, %.critedge143 ], [ %.sroa.0101.1223, %bb.co ], [ %i.ar, %.body ]
  %i.gj = insertvalue { ptr, i32 } poison, ptr %.sroa.0101.0209, 0
  %i.gk = insertvalue { ptr, i32 } %i.gj, i32 %.sroa.36.0211, 1
  resume { ptr, i32 } %i.gk

bb.cr:                                            ; preds = %bb.cp
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gl = extractvalue { ptr, i32 } %lpad.thr_comm, 0
  %i.gm = extractvalue { ptr, i32 } %lpad.thr_comm, 1
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %1) #26
          to label %bb.cq unwind label %bb.ae
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object3int(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 12)) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !23, !noundef !8
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !noundef !8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.d, ptr %i.e, align 8
  store i64 -1, ptr %0, align 8
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object4bool(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 9)) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !23, !noundef !8
  %i.b = icmp eq i64 %i.a, -9223372036854775804
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i8, ptr %i.c, align 8, !range !28, !noundef !8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.d, ptr %i.e, align 8
  store i64 -1, ptr %0, align 8
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object4dict(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !23, !noundef !8
  %i.b = icmp eq i64 %i.a, -9223372036854775799
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object4none(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !23, !noundef !8
  %i.b = icmp eq i64 %i.a, -9223372036854775803
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object5class(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 56)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = load i64, ptr %1, align 8, !range !23, !noundef !8
  %i.c = icmp sgt i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink = phi i64 [ 0, %bb.b ], [ 1, %bb.c ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object5tuple(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !23, !noundef !8
  %i.b = icmp eq i64 %i.a, -9223372036854775802
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core6pickleNtB4_6Object6reduce(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) initializes((0, 56)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 5 uses
  %i.b = load i64, ptr %1, align 8, !range !23, !noundef !8
  %i.c = icmp eq i64 %i.b, -9223372036854775798
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !8, !noundef !8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef 48, i64 noundef 8) #29
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef 48, i64 noundef 8) #29
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  store i64 -1, ptr %0, align 8
  br label %bb.d
end_hunk_2
