Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/ConstantFolding?download=true
inline.NumInlined: 650
inline.NumDeleted: 342
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4Luau7Compile15ConstantVisitor7analyzeEPNS_7AstExprE:bb.a
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  %3 = alloca %"struct.Luau::Compile::Constant", align 8 ; 3 uses
  %4 = alloca %"struct.Luau::Compile::Constant", align 8 ; 5 uses
  %5 = alloca %"struct.Luau::Compile::Constant", align 8 ; 3 uses
  %6 = alloca %"struct.Luau::Compile::Constant", align 8 ; 11 uses
  %7 = alloca %"struct.Luau::Compile::Constant", align 8 ; 6 uses
  %8 = alloca %"struct.Luau::Compile::Constant", align 8 ; 5 uses
  %9 = alloca %"struct.Luau::AstName", align 8    ; 4 uses
  %10 = alloca %"class.Luau::DenseHashMap.57", align 8 ; 9 uses
  %11 = alloca %"struct.Luau::Compile::Constant", align 8 ; 6 uses
  %12 = alloca %"struct.Luau::Compile::Constant", align 8 ; 7 uses
  %13 = alloca %"struct.Luau::AstName", align 8   ; 5 uses
  %14 = alloca %"struct.Luau::Compile::Constant", align 8 ; 5 uses
  %15 = alloca %"struct.Luau::Compile::Constant", align 8 ; 5 uses
  %16 = alloca %"struct.Luau::Compile::Constant", align 8 ; 4 uses
  %17 = alloca %"struct.Luau::Compile::Constant", align 8 ; 5 uses
  %18 = alloca %"struct.Luau::Compile::Constant", align 8 ; 4 uses
  %19 = alloca %"struct.Luau::Compile::Constant", align 8 ; 5 uses
  %20 = alloca %"struct.Luau::Compile::Constant", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.c = load i32, ptr %i.b, align 8, !tbaa !38   ; 20 uses
  %i.d = load i32, ptr @_ZN4Luau7AstRttiINS_12AstExprGroupEE5valueE, align 4, !tbaa !9
  %i.e = icmp ne i32 %i.c, %i.d
  %.not191282 = icmp eq ptr %2, null              ; 16 uses
  %.not191 = or i1 %.not191282, %i.e
  br i1 %.not191, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !202
  tail call void @_ZN4Luau7Compile15ConstantVisitor7analyzeEPNS_7AstExprE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::Compile::Constant") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1, ptr noundef %i.g)
  br label %bb.cq

bb.c:                                             ; preds = %bb.a
  %i.h = load i32, ptr @_ZN4Luau7AstRttiINS_18AstExprConstantNilEE5valueE, align 4, !tbaa !9
  %i.i = icmp eq i32 %i.c, %i.h
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %0, align 8, !tbaa !76
  br label %bb.cq

bb.e:                                             ; preds = %bb.c
  %i.j = load i32, ptr @_ZN4Luau7AstRttiINS_19AstExprConstantBoolEE5valueE, align 4, !tbaa !9
  %i.k = icmp ne i32 %i.c, %i.j
  %.not192 = or i1 %.not191282, %i.k
  br i1 %.not192, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 2, ptr %0, align 8, !tbaa !76
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.m = load i8, ptr %i.l, align 4, !tbaa !204, !range !35, !noundef !36
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.m, ptr %i.n, align 8, !tbaa !79
  br label %bb.cq

bb.g:                                             ; preds = %bb.e
  %i.o = load i32, ptr @_ZN4Luau7AstRttiINS_21AstExprConstantNumberEE5valueE, align 4, !tbaa !9
  %i.p = icmp ne i32 %i.c, %i.o
  %.not193 = or i1 %.not191282, %i.p
  br i1 %.not193, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 3, ptr %0, align 8, !tbaa !76
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.r = load double, ptr %i.q, align 8, !tbaa !206
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.r, ptr %i.s, align 8, !tbaa !79
  br label %bb.cq

bb.i:                                             ; preds = %bb.g
  %i.t = load i32, ptr @_ZN4Luau7AstRttiINS_22AstExprConstantIntegerEE5valueE, align 4, !tbaa !9
  %i.u = icmp ne i32 %i.c, %i.t
  %.not194 = or i1 %.not191282, %i.u
  br i1 %.not194, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 4, ptr %0, align 8, !tbaa !76
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !210
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !79
  br label %bb.cq

bb.k:                                             ; preds = %bb.i
  %i.y = load i32, ptr @_ZN4Luau7AstRttiINS_21AstExprConstantStringEE5valueE, align 4, !tbaa !9
  %i.z = icmp ne i32 %i.c, %i.y
  %.not195 = or i1 %.not191282, %i.z
  br i1 %.not195, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 7, ptr %0, align 8, !tbaa !76
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !212
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !79
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !216
  %i.af = trunc i64 %i.ae to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !217
  br label %bb.cq

bb.m:                                             ; preds = %bb.k
  %i.ah = load i32, ptr @_ZN4Luau7AstRttiINS_12AstExprLocalEE5valueE, align 4, !tbaa !9
  %i.ai = icmp ne i32 %i.c, %i.ah
  %.not196 = or i1 %.not191282, %i.ai
  br i1 %.not196, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !198, !nonnull !36, !align !195
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.am = tail call noundef ptr @_ZN4Luau12DenseHashMapIPNS_8AstLocalENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %i.al) ; 2 uses
  %.not223 = icmp eq ptr %i.am, null
  br i1 %.not223, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.am, i64 40, i1 false), !tbaa.struct !77
  br label %bb.cq

bb.p:                                             ; preds = %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ao = tail call noundef ptr @_ZN4Luau12DenseHashMapIPNS_8AstLocalENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.an, ptr noundef nonnull align 8 dereferenceable(8) %i.al) ; 2 uses
  %.not224 = icmp eq ptr %i.ao, null
  br i1 %.not224, label %bb.cq, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.ao, i64 40, i1 false), !tbaa.struct !77
  br label %bb.cq

bb.r:                                             ; preds = %bb.m
  %i.ap = load i32, ptr @_ZN4Luau7AstRttiINS_13AstExprGlobalEE5valueE, align 4, !tbaa !9
  %i.aq = icmp eq i32 %i.c, %i.ap
  %i.ar = load i32, ptr @_ZN4Luau7AstRttiINS_14AstExprVarargsEE5valueE, align 4
  %i.as = icmp eq i32 %i.c, %i.ar
  %or.cond281 = select i1 %i.aq, i1 true, i1 %i.as
  br i1 %or.cond281, label %bb.cq, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.at = load i32, ptr @_ZN4Luau7AstRttiINS_11AstExprCallEE5valueE, align 4, !tbaa !9
  %i.au = icmp eq i32 %i.c, %i.at
  %..i230 = select i1 %i.au, ptr %2, ptr null     ; 2 uses
  store ptr %..i230, ptr %i.a, align 8, !tbaa !218
  %.not197 = icmp eq ptr %..i230, null
  br i1 %.not197, label %bb.aa, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !156
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @_ZN4Luau7Compile15ConstantVisitor7analyzeEPNS_7AstExprE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::Compile::Constant") align 8 %3, ptr noundef nonnull align 8 dereferenceable(184) %1, ptr noundef %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !106 ; 2 uses
  %.not220 = icmp eq ptr %i.ay, null
  br i1 %.not220, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.az = call noundef ptr @_ZNK4Luau12DenseHashMapIPNS_11AstExprCallEiNS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.ay, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 3 uses
  %.not221 = icmp eq ptr %i.az, null
  br i1 %.not221, label %..thread_crit_edge, label %bb.v

..thread_crit_edge:                               ; preds = %bb.u
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !218
  br label %.thread

bb.v:                                             ; preds = %bb.u
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !9
  %.not222 = icmp eq i32 %i.ba, 0
  %.pre371 = load ptr, ptr %i.a, align 8, !tbaa !218 ; 2 uses
  br i1 %.not222, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !220
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !134
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg                    ; 2 uses
  %i.bi = sdiv exact i64 %i.bh, 40                ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.pre371, i64 64
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !221
  %i.bl = add i64 %i.bi, %i.bk
  call void @_ZNSt6vectorIN4Luau7Compile8ConstantESaIS2_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 noundef %i.bl)
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !218 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 64
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !221
  %.not354 = icmp eq i64 %i.bo, 0
  br i1 %.not354, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %bb.y
  br i1 %.1164, label %._crit_edge.thread, label %bb.z

.lr.ph:                                           ; preds = %bb.w, %bb.y
  %i.bp = phi ptr [ %i.bx, %bb.y ], [ %i.bm, %bb.w ]
  %.0162338 = phi i64 [ %i.bw, %bb.y ], [ 0, %bb.w ] ; 2 uses
  %.0163337 = phi i1 [ %.1164, %bb.y ], [ true, %bb.w ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !222
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.0162338
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !42
  call void @_ZN4Luau7Compile15ConstantVisitor7analyzeEPNS_7AstExprE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::Compile::Constant") align 8 %4, ptr noundef nonnull align 8 dereferenceable(184) %1, ptr noundef %i.bt)
  %i.bu = load i32, ptr %4, align 8, !tbaa !76
  %i.bv = and i32 %i.bu, -9
  %or.cond = icmp eq i32 %i.bv, 0
  br i1 %or.cond, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph
  call void @_ZNSt6vectorIN4Luau7Compile8ConstantESaIS2_EE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(40) %4)
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph, %bb.x
  %.1164 = phi i1 [ %.0163337, %bb.x ], [ false, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.bw = add nuw i64 %.0162338, 1                ; 2 uses
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !218 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 64
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !221 ; 2 uses
  %i.ca = icmp ult i64 %i.bw, %i.bz
  br i1 %i.ca, label %.lr.ph, label %._crit_edge, !llvm.loop !223

._crit_edge.thread:                               ; preds = %bb.w, %._crit_edge
  %.lcssa336397 = phi i64 [ %i.bz, %._crit_edge ], [ 0, %bb.w ]
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !224, !nonnull !36, !align !195
  %i.cd = load i32, ptr %i.az, align 4, !tbaa !9
  %i.ce = load ptr, ptr %i.bb, align 8, !tbaa !134
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.bh
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 41
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !126, !range !35, !noundef !36
  %i.ci = trunc nuw i8 %i.ch to i1
  call void @_ZN4Luau7Compile11foldBuiltinERNS_12AstNameTableEiPKNS0_8ConstantEmb(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::Compile::Constant") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %i.cc, i32 noundef %i.cd, ptr noundef %i.cf, i64 noundef %.lcssa336397, i1 noundef zeroext %i.ci)
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge.thread, %._crit_edge
  call void @_ZNSt6vectorIN4Luau7Compile8ConstantESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 noundef %i.bi)
  br label %.loopexit

.thread:                                          ; preds = %..thread_crit_edge, %bb.t, %bb.v
  %i.cj = phi ptr [ %.pre, %..thread_crit_edge ], [ %2, %bb.t ], [ %.pre371, %bb.v ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 64
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !221
  %.not355 = icmp eq i64 %i.cl, 0
  br i1 %.not355, label %.loopexit, label %.lr.ph341

.lr.ph341:                                        ; preds = %.thread, %.lr.ph341
  %i.cm = phi ptr [ %i.cs, %.lr.ph341 ], [ %i.cj, %.thread ]
  %.0161340 = phi i64 [ %i.cr, %.lr.ph341 ], [ 0, %.thread ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 56
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !222
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %.0161340
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @_ZN4Luau7Compile15ConstantVisitor7analyzeEPNS_7AstExprE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::Compile::Constant") align 8 %5, ptr noundef nonnull align 8 dereferenceable(184) %1, ptr noundef %i.cq)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.cr = add nuw i64 %.0161340, 1                ; 2 uses
  %i.cs = load ptr, ptr %i.a, align 8, !tbaa !218 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 64
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !221
  %i.cv = icmp ult i64 %i.cr, %i.cu
  br i1 %i.cv, label %.lr.ph341, label %.loopexit, !llvm.loop !225

bb.aa:                                            ; preds = %bb.s
  %i.cw = load i32, ptr @_ZN4Luau7AstRttiINS_16AstExprIndexNameEE5valueE, align 4, !tbaa !9
  %i.cx = icmp ne i32 %i.c, %i.cw
  %.not198 = or i1 %.not191282, %i.cx
  br i1 %.not198, label %bb.av, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !226
  call void @_ZN4Luau7Compile15ConstantVisitor7analyzeEPNS_7AstExprE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::Compile::Constant") align 8 %6, ptr noundef nonnull align 8 dereferenceable(184) %1, ptr noundef %i.cz)
  %i.da = load i32, ptr %6, align 8, !tbaa !76
  switch i32 %i.da, label %bb.an [
    i32 8, label %bb.ac
    i32 5, label %bb.af
    i32 6, label %bb.aj
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !79 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !137
  %i.dg = load ptr, ptr %i.dd, align 8, !tbaa !136 ; 2 uses
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = sdiv exact i64 %i.dj, 40
  %i.dl = icmp ult i64 %i.dc, %i.dk
  br i1 %i.dl, label %bb.ad, label %_ZNK4Luau7AstNameeqEPKc.exit241.thread

bb.ad:                                            ; preds = %bb.ac
  %i.dm = getelementptr inbounds nuw [40 x i8], ptr %i.dg, i64 %i.dc
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.do = call noundef ptr @_ZNK4Luau12DenseHashMapINS_7AstNameENS_7Compile8ConstantESt4hashIS1_ESt8equal_toIS1_EE4findERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.dm, ptr noundef nonnull align 8 dereferenceable(8) %i.dn) ; 2 uses
  %.not = icmp eq ptr %i.do, null
  br i1 %.not, label %_ZNK4Luau7AstNameeqEPKc.exit241.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.do, i64 40, i1 false), !tbaa.struct !77
  br label %_ZNK4Luau7AstNameeqEPKc.exit241.thread

bb.af:                                            ; preds = %bb.ab
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !228 ; 8 uses
  %.not.i = icmp eq ptr %i.dq, null
  br i1 %.not.i, label %_ZNK4Luau7AstNameeqEPKc.exit241.thread, label %sub_0

sub_0:                                            ; preds = %bb.af
  %i.dr = load i8, ptr %i.dq, align 1
  switch i8 %i.dr, label %_ZNK4Luau7AstNameeqEPKc.exit241.thread [
    i8 120, label %_ZNK4Luau7AstNameeqEPKc.exit.tail
    i8 88, label %_ZNK4Luau7AstNameeqEPKc.exit233.tail
    i8 121, label %_ZNK4Luau7AstNameeqEPKc.exit235.tail
    i8 89, label %_ZNK4Luau7AstNameeqEPKc.exit237.tail
    i8 122, label %_ZNK4Luau7AstNameeqEPKc.exit239.tail
    i8 90, label %_ZNK4Luau7AstNameeqEPKc.exit241.tail
  ]

_ZNK4Luau7AstNameeqEPKc.exit.tail:                ; preds = %sub_0
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  %i.dt = load i8, ptr %i.ds, align 1
  %i.du = icmp eq i8 %i.dt, 0
  br i1 %i.du, label %bb.ag, label %_ZNK4Luau7AstNameeqEPKc.exit241.thread

_ZNK4Luau7AstNameeqEPKc.exit233.tail:             ; preds = %sub_0
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  %i.dw = load i8, ptr %i.dv, align 1
  %i.dx = icmp eq i8 %i.dw, 0
  br i1 %i.dx, label %bb.ag, label %_ZNK4Luau7AstNameeqEPKc.exit241.thread

bb.ag:                                            ; preds = %_ZNK4Luau7AstNameeqEPKc.exit233.tail, %_ZNK4Luau7AstNameeqEPKc.exit.tail
  store i32 3, ptr %0, align 8, !tbaa !76
  %i.dy = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dz = load float, ptr %i.dy, align 8, !tbaa !79
  %i.ea = fpext float %i.dz to double
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.ea, ptr %i.eb, align 8, !tbaa !79
  br label %_ZNK4Luau7AstNameeqEPKc.exit241.thread

_ZNK4Luau7AstNameeqEPKc.exit235.tail:             ; preds = %sub_0
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  %i.ed = load i8, ptr %i.ec, align 1
  %i.ee = icmp eq i8 %i.ed, 0
  br i1 %i.ee, label %bb.ah, label %_ZNK4Luau7AstNameeqEPKc.exit241.thread

_ZNK4Luau7AstNameeqEPKc.exit237.tail:             ; preds = %sub_0
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  %i.eg = load i8, ptr %i.ef, align 1
  %i.eh = icmp eq i8 %i.eg, 0
  br i1 %i.eh, label %bb.ah, label %_ZNK4Luau7AstNameeqEPKc.exit241.thread

bb.ah:                                            ; preds = %_ZNK4Luau7AstNameeqEPKc.exit237.tail, %_ZNK4Luau7AstNameeqEPKc.exit235.tail
  store i32 3, ptr %0, align 8, !tbaa !76
  %i.ei = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !79
  %i.ek = fpext float %i.ej to double
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.ek, ptr %i.el, align 8, !tbaa !79
  br label %_ZNK4Luau7AstNameeqEPKc.exit241.thread

_ZNK4Luau7AstNameeqEPKc.exit239.tail:             ; preds = %sub_0
  %i.em = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  %i.en = load i8, ptr %i.em, align 1
  %i.eo = icmp eq i8 %i.en, 0
  br i1 %i.eo, label %bb.ai, label %_ZNK4Luau7AstNameeqEPKc.exit241.thread

_ZNK4Luau7AstNameeqEPKc.exit241.tail:             ; preds = %sub_0
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  %i.eq = load i8, ptr %i.ep, align 1
  %i.er = icmp eq i8 %i.eq, 0
  br i1 %i.er, label %bb.ai, label %_ZNK4Luau7AstNameeqEPKc.exit241.thread

bb.ai:                                            ; preds = %_ZNK4Luau7AstNameeqEPKc.exit241.tail, %_ZNK4Luau7AstNameeqEPKc.exit239.tail
  store i32 3, ptr %0, align 8, !tbaa !76
  %i.es = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.et = load float, ptr %i.es, align 8, !tbaa !79
  %i.eu = fpext float %i.et to double
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.eu, ptr %i.ev, align 8, !tbaa !79
  br label %_ZNK4Luau7AstNameeqEPKc.exit241.thread

bb.aj:                                            ; preds = %bb.ab
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !228 ; 8 uses
  %.not.i242 = icmp eq ptr %i.ex, null
  br i1 %.not.i242, label %_ZNK4Luau7AstNameeqEPKc.exit241.thread, label %sub_0315

sub_0315:                                         ; preds = %bb.aj
  %i.ey = load i8, ptr %i.ex, align 1
  switch i8 %i.ey, label %_ZNK4Luau7AstNameeqEPKc.exit241.thread [
    i8 120, label %_ZNK4Luau7AstNameeqEPKc.exit243.tail
    i8 88, label %_ZNK4Luau7AstNameeqEPKc.exit245.tail
    i8 121, label %_ZNK4Luau7AstNameeqEPKc.exit247.tail
    i8 89, label %_ZNK4Luau7AstNameeqEPKc.exit249.tail
    i8 122, label %_ZNK4Luau7AstNameeqEPKc.exit251.tail
    i8 90, label %_ZNK4Luau7AstNameeqEPKc.exit253.tail
  ]

_ZNK4Luau7AstNameeqEPKc.exit243.tail:             ; preds = %sub_0315
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 1
  %i.fa = load i8, ptr %i.ez, align 1
  %i.fb = icmp eq i8 %i.fa, 0
  br i1 %i.fb, label %bb.ak, label %_ZNK4Luau7AstNameeqEPKc.exit241.thread

_ZNK4Luau7AstNameeqEPKc.exit245.tail:             ; preds = %sub_0315
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 1
  %i.fd = load i8, ptr %i.fc, align 1
  %i.fe = icmp eq i8 %i.fd, 0
  br i1 %i.fe, label %bb.ak, label %_ZNK4Luau7AstNameeqEPKc.exit241.thread

bb.ak:                                            ; preds = %_ZNK4Luau7AstNameeqEPKc.exit245.tail, %_ZNK4Luau7AstNameeqEPKc.exit243.tail
end_hunk_0
