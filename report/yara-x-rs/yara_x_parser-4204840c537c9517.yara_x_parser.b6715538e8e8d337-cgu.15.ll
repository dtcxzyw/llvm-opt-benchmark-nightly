Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x_parser-4204840c537c9517.yara_x_parser.b6715538e8e8d337-cgu.15?download=true
inline.NumInlined: 167
inline.NumDeleted: 43
begin_hunk_0_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortjNvYjNtNtBa_3cmp10PartialOrd2ltECsfF8zpZz1lvn_13yara_x_parser:bb.a
  %i.n = xor i1 %i.l, %i.m
  %i.o = icmp ult i64 %.val7.i, %.val5.i
  %i.p = xor i1 %i.l, %i.o
  %..i.i = select i1 %i.p, ptr %i.i, ptr %i.h
  %.sroa.0.0.i.i = select i1 %i.n, ptr %.sroa.0.0.ph120, ptr %..i.i
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph._crit_edge, %.outer._crit_edge
  ret void

bb.e:                                             ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3jNvYjNtNtBa_3cmp10PartialOrd2ltECsfF8zpZz1lvn_13yara_x_parser.exit.i, %bb.c
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3jNvYjNtNtBa_3cmp10PartialOrd2ltECsfF8zpZz1lvn_13yara_x_parser.exit.i ], [ %i.k, %bb.c ]
  %i.q = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.r = sub nuw i64 %i.q, %i.c                   ; 3 uses
  %.sroa.0.0.i = lshr exact i64 %i.r, 3           ; 3 uses
  %i.s = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.16.0113264
  call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph120, i64 %i.r
  %i.u = load i64, ptr %i.t, align 8              ; 7 uses
  store i64 %i.u, ptr %i.a, align 8
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.028.0.val = load i64, ptr %.sroa.028.0.ph117, align 8, !alias.scope !7, !noalias !8, !noundef !9
  %i.v = icmp ult i64 %.sroa.028.0.val, %i.u
  br i1 %i.v, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.e, %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !69)
  call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %.not80 = icmp samesign ult i64 %3, %.sroa.16.0113264
  br i1 %.not80, label %bb.i, label %bb.h, !prof !71

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr [8 x i8], ptr %2, i64 %.sroa.16.0113264 ; 3 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %bb.k, %bb.h
  %.sroa.43.0.i = phi ptr [ %i.w, %bb.h ], [ %i.bj, %bb.k ] ; 2 uses
  %.sroa.27.0.i = phi i64 [ 0, %bb.h ], [ %.sroa.27.2.lcssa.i, %bb.k ] ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph120, %bb.h ], [ %i.bm, %bb.k ] ; 3 uses
  %.sroa.0.0.i37 = phi i64 [ %.sroa.0.0.i, %bb.h ], [ %.sroa.16.0113264, %bb.k ] ; 3 uses
  %i.x = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i37, i64 3)
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph120, i64 %i.x ; 2 uses
  %i.z = icmp ult ptr %.sroa.9.0.i, %i.y
  br i1 %i.z, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %.sroa.9.131.i = phi ptr [ %i.ax, %.lr.ph.i ], [ %.sroa.9.0.i, %bb.j ] ; 5 uses
  %.sroa.27.130.i = phi i64 [ %i.aw, %.lr.ph.i ], [ %.sroa.27.0.i, %bb.j ] ; 2 uses
  %.sroa.43.129.i = phi ptr [ %i.at, %.lr.ph.i ], [ %.sroa.43.0.i, %bb.j ] ; 4 uses
  %.val21.i = load i64, ptr %.sroa.9.131.i, align 8, !alias.scope !72, !noalias !73, !noundef !9 ; 2 uses
  %i.aa = icmp ult i64 %.val21.i, %i.u            ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -8
  %.sroa.01.0.i.i = select i1 %i.aa, ptr %2, ptr %i.ab
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.27.130.i
  store i64 %.val21.i, ptr %i.ac, align 8, !alias.scope !70, !noalias !74
  %i.ad = zext i1 %i.aa to i64
  %i.ae = add i64 %.sroa.27.130.i, %i.ad          ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 8
  %.val19.i = load i64, ptr %i.af, align 8, !alias.scope !72, !noalias !73, !noundef !9 ; 2 uses
  %i.ag = icmp ult i64 %.val19.i, %i.u            ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -16
  %.sroa.01.0.i23.i = select i1 %i.ag, ptr %2, ptr %i.ah
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i23.i, i64 %i.ae
  store i64 %.val19.i, ptr %i.ai, align 8, !alias.scope !70, !noalias !75
  %i.aj = zext i1 %i.ag to i64
  %i.ak = add i64 %i.ae, %i.aj                    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 16
  %.val17.i = load i64, ptr %i.al, align 8, !alias.scope !72, !noalias !73, !noundef !9 ; 2 uses
  %i.am = icmp ult i64 %.val17.i, %i.u            ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -24
  %.sroa.01.0.i24.i = select i1 %i.am, ptr %2, ptr %i.an
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i24.i, i64 %i.ak
  store i64 %.val17.i, ptr %i.ao, align 8, !alias.scope !70, !noalias !76
  %i.ap = zext i1 %i.am to i64
  %i.aq = add i64 %i.ak, %i.ap                    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 24
  %.val15.i = load i64, ptr %i.ar, align 8, !alias.scope !72, !noalias !73, !noundef !9 ; 2 uses
  %i.as = icmp ult i64 %.val15.i, %i.u            ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -32 ; 3 uses
  %.sroa.01.0.i25.i = select i1 %i.as, ptr %2, ptr %i.at
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i25.i, i64 %i.aq
  store i64 %.val15.i, ptr %i.au, align 8, !alias.scope !70, !noalias !77
  %i.av = zext i1 %i.as to i64
  %i.aw = add i64 %i.aq, %i.av                    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 32 ; 3 uses
  %i.ay = icmp ult ptr %i.ax, %i.y
  br i1 %i.ay, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.j
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.j ], [ %i.at, %.lr.ph.i ] ; 2 uses
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.j ], [ %i.aw, %.lr.ph.i ] ; 2 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.j ], [ %i.ax, %.lr.ph.i ] ; 3 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph120, i64 %.sroa.0.0.i37 ; 2 uses
  %i.ba = icmp ult ptr %.sroa.9.1.lcssa.i, %i.az
  br i1 %i.ba, label %.lr.ph38.i, label %._crit_edge39.i

._crit_edge39.i:                                  ; preds = %.lr.ph38.i, %._crit_edge.i
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.bd, %.lr.ph38.i ]
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.bg, %.lr.ph38.i ] ; 13 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.bh, %.lr.ph38.i ] ; 2 uses
  %i.bb = icmp eq i64 %.sroa.0.0.i37, %.sroa.16.0113264
  br i1 %i.bb, label %bb.l, label %bb.k

.lr.ph38.i:                                       ; preds = %._crit_edge.i, %.lr.ph38.i
  %.sroa.9.236.i = phi ptr [ %i.bh, %.lr.ph38.i ], [ %.sroa.9.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.27.235.i = phi i64 [ %i.bg, %.lr.ph38.i ], [ %.sroa.27.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.43.234.i = phi ptr [ %i.bd, %.lr.ph38.i ], [ %.sroa.43.1.lcssa.i, %._crit_edge.i ]
  %.val.i = load i64, ptr %.sroa.9.236.i, align 8, !alias.scope !72, !noalias !73, !noundef !9 ; 2 uses
  %i.bc = icmp ult i64 %.val.i, %i.u              ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %.sroa.43.234.i, i64 -8 ; 3 uses
  %.sroa.01.0.i26.i = select i1 %i.bc, ptr %2, ptr %i.bd
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i26.i, i64 %.sroa.27.235.i
  store i64 %.val.i, ptr %i.be, align 8, !alias.scope !70, !noalias !78
  %i.bf = zext i1 %i.bc to i64
  %i.bg = add i64 %.sroa.27.235.i, %i.bf          ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i, i64 8 ; 3 uses
  %i.bi = icmp ult ptr %i.bh, %i.az
  br i1 %i.bi, label %.lr.ph38.i, label %._crit_edge39.i

bb.k:                                             ; preds = %._crit_edge39.i
  %i.bj = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -8 ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %.sroa.27.2.lcssa.i
  %i.bl = load i64, ptr %.sroa.9.2.lcssa.i, align 8, !alias.scope !69, !noalias !79
  store i64 %i.bl, ptr %i.bk, align 8, !alias.scope !70, !noalias !80
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 8
  br label %bb.j

bb.l:                                             ; preds = %._crit_edge39.i
  %i.bn = shl nuw nsw i64 %.sroa.27.2.lcssa.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph120, ptr nonnull align 8 %2, i64 %i.bn, i1 false), !alias.scope !81
  %i.bo = sub i64 %.sroa.16.0113264, %.sroa.27.2.lcssa.i ; 5 uses
  %.not47.i = icmp eq i64 %.sroa.16.0113264, %.sroa.27.2.lcssa.i
  br i1 %.not47.i, label %.loopexit, label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %bb.l
  %i.bp = getelementptr [8 x i8], ptr %.sroa.0.0.ph120, i64 %.sroa.27.2.lcssa.i ; 2 uses
  %min.iters.check273 = icmp ult i64 %i.bo, 4
  br i1 %min.iters.check273, label %scalar.ph272.preheader, label %vector.ph274

vector.ph274:                                     ; preds = %.lr.ph45.i
  %n.vec275 = and i64 %i.bo, -4                   ; 3 uses
  br label %vector.body276

vector.body276:                                   ; preds = %vector.body276, %vector.ph274
  %index277 = phi i64 [ 0, %vector.ph274 ], [ %index.next282, %vector.body276 ] ; 3 uses
  %i.bq = xor i64 %index277, -1
  %i.br = getelementptr [8 x i8], ptr %i.w, i64 %i.bq ; 2 uses
  %i.bs = getelementptr [8 x i8], ptr %i.bp, i64 %index277 ; 2 uses
  %i.bt = getelementptr i8, ptr %i.br, i64 -8
  %i.bu = getelementptr i8, ptr %i.br, i64 -24
  %wide.load278 = load <2 x i64>, ptr %i.bt, align 8, !alias.scope !70, !noalias !69
  %wide.load279 = load <2 x i64>, ptr %i.bu, align 8, !alias.scope !70, !noalias !69
  %reverse280 = shufflevector <2 x i64> %wide.load278, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse281 = shufflevector <2 x i64> %wide.load279, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bv = getelementptr i8, ptr %i.bs, i64 16
  store <2 x i64> %reverse280, ptr %i.bs, align 8, !alias.scope !69, !noalias !70
  store <2 x i64> %reverse281, ptr %i.bv, align 8, !alias.scope !69, !noalias !70
  %index.next282 = add nuw i64 %index277, 4       ; 2 uses
  %i.bw = icmp eq i64 %index.next282, %n.vec275
  br i1 %i.bw, label %middle.block283, label %vector.body276, !llvm.loop !40

middle.block283:                                  ; preds = %vector.body276
  %cmp.n284 = icmp eq i64 %i.bo, %n.vec275
  br i1 %cmp.n284, label %.loopexit, label %scalar.ph272.preheader

scalar.ph272.preheader:                           ; preds = %.lr.ph45.i, %middle.block283
  %.sroa.07.043.i.ph = phi i64 [ 0, %.lr.ph45.i ], [ %n.vec275, %middle.block283 ]
  br label %scalar.ph272

scalar.ph272:                                     ; preds = %scalar.ph272.preheader, %scalar.ph272
  %.sroa.07.043.i = phi i64 [ %i.bx, %scalar.ph272 ], [ %.sroa.07.043.i.ph, %scalar.ph272.preheader ] ; 3 uses
  %i.bx = add nuw i64 %.sroa.07.043.i, 1          ; 2 uses
  %i.by = xor i64 %.sroa.07.043.i, -1
  %i.bz = getelementptr [8 x i8], ptr %i.w, i64 %i.by
  %i.ca = getelementptr [8 x i8], ptr %i.bp, i64 %.sroa.07.043.i
  %i.cb = load i64, ptr %i.bz, align 8, !alias.scope !70, !noalias !69
  store i64 %i.cb, ptr %i.ca, align 8, !alias.scope !69, !noalias !70
  %exitcond.not.i = icmp eq i64 %i.bx, %i.bo
  br i1 %exitcond.not.i, label %.loopexit, label %scalar.ph272, !llvm.loop !41

.loopexit:                                        ; preds = %scalar.ph272, %middle.block283, %bb.l
  %i.cc = icmp eq i64 %.sroa.27.2.lcssa.i, 0
  br i1 %i.cc, label %.thread, label %bb.m

bb.m:                                             ; preds = %.loopexit
  %.not.i38 = icmp ugt i64 %.sroa.27.2.lcssa.i, %.sroa.16.0113264
  br i1 %.not.i38, label %bb.n, label %_RNvMNtCskKLDkoKarTP_4core5sliceSj12split_at_mutCsfF8zpZz1lvn_13yara_x_parser.exit, !prof !10

bb.n:                                             ; preds = %bb.m
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #21, !noalias !84
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSj12split_at_mutCsfF8zpZz1lvn_13yara_x_parser.exit: ; preds = %bb.m
  %7 = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph120, i64 %.sroa.27.2.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph120) ]
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortjNvYjNtNtBa_3cmp10PartialOrd2ltECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull align 8 %7, i64 noundef %i.bo, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %i.a, ptr noalias nofree noundef nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cd = icmp ult i64 %.sroa.27.2.lcssa.i, 33
  br i1 %i.cd, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.f, %.loopexit
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph120, i64 %i.r ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !85)
  call void @llvm.experimental.noalias.scope.decl(metadata !86)
  %.not81 = icmp samesign ult i64 %3, %.sroa.16.0113264
  br i1 %.not81, label %bb.p, label %bb.o, !prof !71

bb.o:                                             ; preds = %.thread
  %i.cf = getelementptr [8 x i8], ptr %2, i64 %.sroa.16.0113264 ; 3 uses
  br label %bb.q

bb.p:                                             ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.q:                                             ; preds = %bb.s, %bb.o
  %.sroa.43.0.i41 = phi ptr [ %i.cf, %bb.o ], [ %i.ds, %bb.s ] ; 2 uses
  %.sroa.27.0.i42 = phi i64 [ 0, %bb.o ], [ %i.dv, %bb.s ] ; 2 uses
  %.sroa.9.0.i43 = phi ptr [ %.sroa.0.0.ph120, %bb.o ], [ %i.dw, %bb.s ] ; 3 uses
  %.sroa.0.0.i44 = phi i64 [ %.sroa.0.0.i, %bb.o ], [ %.sroa.16.0113264, %bb.s ] ; 3 uses
  %i.cg = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i44, i64 3)
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph120, i64 %i.cg ; 2 uses
  %i.ci = icmp ult ptr %.sroa.9.0.i43, %i.ch
  br i1 %i.ci, label %.lr.ph.i64, label %._crit_edge.i45

.lr.ph.i64:                                       ; preds = %bb.q
  %.val22.i65 = load i64, ptr %i.ce, align 8, !alias.scope !87, !noalias !88, !noundef !9 ; 4 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.i64
  %.sroa.9.131.i66 = phi ptr [ %.sroa.9.0.i43, %.lr.ph.i64 ], [ %i.dg, %bb.r ] ; 5 uses
  %.sroa.27.130.i67 = phi i64 [ %.sroa.27.0.i42, %.lr.ph.i64 ], [ %i.df, %bb.r ] ; 2 uses
  %.sroa.43.129.i68 = phi ptr [ %.sroa.43.0.i41, %.lr.ph.i64 ], [ %i.dc, %bb.r ] ; 4 uses
  %.val21.i69 = load i64, ptr %.sroa.9.131.i66, align 8, !alias.scope !89, !noalias !90, !noundef !9 ; 2 uses
  %i.cj = icmp uge i64 %.val22.i65, %.val21.i69   ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %.sroa.43.129.i68, i64 -8
  %.sroa.01.0.i.i70 = select i1 %i.cj, ptr %2, ptr %i.ck
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i70, i64 %.sroa.27.130.i67
  store i64 %.val21.i69, ptr %i.cl, align 8, !alias.scope !86, !noalias !91
  %i.cm = zext i1 %i.cj to i64
  %i.cn = add i64 %.sroa.27.130.i67, %i.cm        ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i66, i64 8
  %.val19.i71 = load i64, ptr %i.co, align 8, !alias.scope !89, !noalias !90, !noundef !9 ; 2 uses
  %i.cp = icmp uge i64 %.val22.i65, %.val19.i71   ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %.sroa.43.129.i68, i64 -16
  %.sroa.01.0.i23.i72 = select i1 %i.cp, ptr %2, ptr %i.cq
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i23.i72, i64 %i.cn
  store i64 %.val19.i71, ptr %i.cr, align 8, !alias.scope !86, !noalias !92
  %i.cs = zext i1 %i.cp to i64
  %i.ct = add i64 %i.cn, %i.cs                    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i66, i64 16
  %.val17.i73 = load i64, ptr %i.cu, align 8, !alias.scope !89, !noalias !90, !noundef !9 ; 2 uses
  %i.cv = icmp uge i64 %.val22.i65, %.val17.i73   ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %.sroa.43.129.i68, i64 -24
  %.sroa.01.0.i24.i74 = select i1 %i.cv, ptr %2, ptr %i.cw
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i24.i74, i64 %i.ct
  store i64 %.val17.i73, ptr %i.cx, align 8, !alias.scope !86, !noalias !93
  %i.cy = zext i1 %i.cv to i64
  %i.cz = add i64 %i.ct, %i.cy                    ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i66, i64 24
  %.val15.i75 = load i64, ptr %i.da, align 8, !alias.scope !89, !noalias !90, !noundef !9 ; 2 uses
  %i.db = icmp uge i64 %.val22.i65, %.val15.i75   ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %.sroa.43.129.i68, i64 -32 ; 3 uses
  %.sroa.01.0.i25.i76 = select i1 %i.db, ptr %2, ptr %i.dc
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i25.i76, i64 %i.cz
  store i64 %.val15.i75, ptr %i.dd, align 8, !alias.scope !86, !noalias !94
  %i.de = zext i1 %i.db to i64
  %i.df = add i64 %i.cz, %i.de                    ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i66, i64 32 ; 3 uses
  %i.dh = icmp ult ptr %i.dg, %i.ch
  br i1 %i.dh, label %bb.r, label %._crit_edge.i45

._crit_edge.i45:                                  ; preds = %bb.r, %bb.q
  %.sroa.43.1.lcssa.i46 = phi ptr [ %.sroa.43.0.i41, %bb.q ], [ %i.dc, %bb.r ] ; 2 uses
  %.sroa.27.1.lcssa.i47 = phi i64 [ %.sroa.27.0.i42, %bb.q ], [ %i.df, %bb.r ] ; 2 uses
  %.sroa.9.1.lcssa.i48 = phi ptr [ %.sroa.9.0.i43, %bb.q ], [ %i.dg, %bb.r ] ; 3 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph120, i64 %.sroa.0.0.i44 ; 2 uses
  %i.dj = icmp ult ptr %.sroa.9.1.lcssa.i48, %i.di
  br i1 %i.dj, label %.lr.ph38.i57.preheader, label %._crit_edge39.i49

.lr.ph38.i57.preheader:                           ; preds = %._crit_edge.i45
  %.val14.i62 = load i64, ptr %i.ce, align 8, !alias.scope !87, !noalias !88, !noundef !9
  br label %.lr.ph38.i57

._crit_edge39.i49:                                ; preds = %.lr.ph38.i57, %._crit_edge.i45
  %.sroa.43.2.lcssa.i50 = phi ptr [ %.sroa.43.1.lcssa.i46, %._crit_edge.i45 ], [ %i.dm, %.lr.ph38.i57 ]
  %.sroa.27.2.lcssa.i51 = phi i64 [ %.sroa.27.1.lcssa.i47, %._crit_edge.i45 ], [ %i.dp, %.lr.ph38.i57 ] ; 9 uses
  %.sroa.9.2.lcssa.i52 = phi ptr [ %.sroa.9.1.lcssa.i48, %._crit_edge.i45 ], [ %i.dq, %.lr.ph38.i57 ] ; 2 uses
  %i.dk = icmp eq i64 %.sroa.0.0.i44, %.sroa.16.0113264
  br i1 %i.dk, label %bb.t, label %bb.s

.lr.ph38.i57:                                     ; preds = %.lr.ph38.i57.preheader, %.lr.ph38.i57
  %.sroa.9.236.i58 = phi ptr [ %i.dq, %.lr.ph38.i57 ], [ %.sroa.9.1.lcssa.i48, %.lr.ph38.i57.preheader ] ; 2 uses
  %.sroa.27.235.i59 = phi i64 [ %i.dp, %.lr.ph38.i57 ], [ %.sroa.27.1.lcssa.i47, %.lr.ph38.i57.preheader ] ; 2 uses
  %.sroa.43.234.i60 = phi ptr [ %i.dm, %.lr.ph38.i57 ], [ %.sroa.43.1.lcssa.i46, %.lr.ph38.i57.preheader ]
  %.val.i61 = load i64, ptr %.sroa.9.236.i58, align 8, !alias.scope !89, !noalias !90, !noundef !9 ; 2 uses
  %i.dl = icmp uge i64 %.val14.i62, %.val.i61     ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %.sroa.43.234.i60, i64 -8 ; 3 uses
  %.sroa.01.0.i26.i63 = select i1 %i.dl, ptr %2, ptr %i.dm
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i26.i63, i64 %.sroa.27.235.i59
  store i64 %.val.i61, ptr %i.dn, align 8, !alias.scope !86, !noalias !95
  %i.do = zext i1 %i.dl to i64
  %i.dp = add i64 %.sroa.27.235.i59, %i.do        ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i58, i64 8 ; 3 uses
  %i.dr = icmp ult ptr %i.dq, %i.di
  br i1 %i.dr, label %.lr.ph38.i57, label %._crit_edge39.i49

bb.s:                                             ; preds = %._crit_edge39.i49
  %i.ds = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i50, i64 -8
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i51
  %i.du = load i64, ptr %.sroa.9.2.lcssa.i52, align 8, !alias.scope !85, !noalias !96
  store i64 %i.du, ptr %i.dt, align 8, !alias.scope !86, !noalias !97
  %i.dv = add i64 %.sroa.27.2.lcssa.i51, 1
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i52, i64 8
  br label %bb.q

bb.t:                                             ; preds = %._crit_edge39.i49
  %i.dx = shl nuw nsw i64 %.sroa.27.2.lcssa.i51, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph120, ptr nonnull align 8 %2, i64 %i.dx, i1 false), !alias.scope !98
  %i.dy = sub i64 %.sroa.16.0113264, %.sroa.27.2.lcssa.i51 ; 7 uses
  %.not47.i53 = icmp eq i64 %.sroa.16.0113264, %.sroa.27.2.lcssa.i51
  %i.dz = getelementptr [8 x i8], ptr %.sroa.0.0.ph120, i64 %.sroa.27.2.lcssa.i51 ; 3 uses
  br i1 %.not47.i53, label %.outer.thread, label %.lr.ph45.i54

.lr.ph45.i54:                                     ; preds = %bb.t
  %min.iters.check = icmp ult i64 %i.dy, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph45.i54
  %n.vec = and i64 %i.dy, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ea = xor i64 %index, -1
  %i.eb = getelementptr [8 x i8], ptr %i.cf, i64 %i.ea ; 2 uses
  %i.ec = getelementptr [8 x i8], ptr %i.dz, i64 %index ; 2 uses
  %i.ed = getelementptr i8, ptr %i.eb, i64 -8
  %i.ee = getelementptr i8, ptr %i.eb, i64 -24
  %wide.load = load <2 x i64>, ptr %i.ed, align 8, !alias.scope !86, !noalias !85
  %wide.load270 = load <2 x i64>, ptr %i.ee, align 8, !alias.scope !86, !noalias !85
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse271 = shufflevector <2 x i64> %wide.load270, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ef = getelementptr i8, ptr %i.ec, i64 16
  store <2 x i64> %reverse, ptr %i.ec, align 8, !alias.scope !85, !noalias !86
  store <2 x i64> %reverse271, ptr %i.ef, align 8, !alias.scope !85, !noalias !86
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eg = icmp eq i64 %index.next, %n.vec
  br i1 %i.eg, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dy, %n.vec
  br i1 %cmp.n, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionjNCINvB2_9quicksortjNvYjNtNtBa_3cmp10PartialOrd2ltE0ECsfF8zpZz1lvn_13yara_x_parser.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph45.i54, %middle.block
  %.sroa.07.043.i55.ph = phi i64 [ 0, %.lr.ph45.i54 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.07.043.i55 = phi i64 [ %i.eh, %scalar.ph ], [ %.sroa.07.043.i55.ph, %scalar.ph.preheader ] ; 3 uses
  %i.eh = add nuw i64 %.sroa.07.043.i55, 1        ; 2 uses
  %i.ei = xor i64 %.sroa.07.043.i55, -1
  %i.ej = getelementptr [8 x i8], ptr %i.cf, i64 %i.ei
  %i.ek = getelementptr [8 x i8], ptr %i.dz, i64 %.sroa.07.043.i55
  %i.el = load i64, ptr %i.ej, align 8, !alias.scope !86, !noalias !85
  store i64 %i.el, ptr %i.ek, align 8, !alias.scope !85, !noalias !86
  %exitcond.not.i56 = icmp eq i64 %i.eh, %i.dy
  br i1 %exitcond.not.i56, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionjNCINvB2_9quicksortjNvYjNtNtBa_3cmp10PartialOrd2ltE0ECsfF8zpZz1lvn_13yara_x_parser.exit, label %scalar.ph, !llvm.loop !64

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionjNCINvB2_9quicksortjNvYjNtNtBa_3cmp10PartialOrd2ltE0ECsfF8zpZz1lvn_13yara_x_parser.exit: ; preds = %scalar.ph, %middle.block
  %i.em = icmp ugt i64 %.sroa.27.2.lcssa.i51, %.sroa.16.0113264
  br i1 %i.em, label %bb.u, label %.outer, !prof !10

.outer.thread:                                    ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.outer._crit_edge

.outer:                                           ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionjNCINvB2_9quicksortjNvYjNtNtBa_3cmp10PartialOrd2ltE0ECsfF8zpZz1lvn_13yara_x_parser.exit
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph120, i64 %.sroa.27.2.lcssa.i51 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.eo = icmp ult i64 %i.dy, 33
  br i1 %i.eo, label %.outer._crit_edge, label %.lr.ph

bb.u:                                             ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionjNCINvB2_9quicksortjNvYjNtNtBa_3cmp10PartialOrd2ltE0ECsfF8zpZz1lvn_13yara_x_parser.exit
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.27.2.lcssa.i51, i64 noundef %.sroa.16.0113264, i64 noundef %.sroa.16.0113264, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #21
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %i.b = icmp eq i64 %4, 0
  br i1 %i.b, label %bb.e, label %bb.b, !prof !11
end_hunk_0
begin_hunk_1_@_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast6errors5ErrorE8grow_oneBS_:bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !228, !nonnull !9, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !228
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !228
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !228
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfF8zpZz1lvn_13yara_x_parser9tokenizer6tokens5TokenE8grow_oneBS_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !12, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !231
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !231
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 4, i64 noundef 12), !noalias !231
  %i.f = load i64, ptr %i.a, align 8, !range !13, !noalias !231, !noundef !9
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !14, !noalias !231, !noundef !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !231
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !231, !nonnull !9, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !231
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !231
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !231
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecReE8grow_oneCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !12, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !234)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !234
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !234
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 16), !noalias !234
  %i.f = load i64, ptr %i.a, align 8, !range !13, !noalias !234, !noundef !9
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !14, !noalias !234, !noundef !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !234
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !234, !nonnull !9, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !234
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !234
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !234
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtCsfF8zpZz1lvn_13yara_x_parser4SpanNtNtB7_6string6StringEE8grow_oneBP_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !12, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !237
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !237
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 32), !noalias !237
  %i.f = load i64, ptr %i.a, align 8, !range !13, !noalias !237, !noundef !9
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !14, !noalias !237, !noundef !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !237
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !237, !nonnull !9, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !237
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !237
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !237
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtCskKs5foxPL5A_5rowan5green10SyntaxKindjEE8grow_oneCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !12, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !240
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !240
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 16), !noalias !240
  %i.f = load i64, ptr %i.a, align 8, !range !13, !noalias !240, !noundef !9
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !14, !noalias !240, !noundef !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !240
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !240, !nonnull !9, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !240
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !240
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !240
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTyINtNtCskKs5foxPL5A_5rowan13utility_types11NodeOrTokenNtNtNtBT_5green4node9GreenNodeNtNtB1J_5token10GreenTokenEEE8grow_oneCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !12, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !243
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !243
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 24), !noalias !243
  %i.f = load i64, ptr %i.a, align 8, !range !13, !noalias !243, !noundef !9
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !14, !noalias !243, !noundef !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !243
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !243, !nonnull !9, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !243
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !243
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !243
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsfF8zpZz1lvn_13yara_x_parser(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #7 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !15
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %4 = mul nuw i64 %3, %.0.val                    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.f = icmp uge i64 %i.b, %4
  tail call void @llvm.assume(i1 %i.f)
  %i.g = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #24
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %i.b, 0
  br i1 %i.h, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.i = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24
  %i.j = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #24
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.g, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit ], [ %i.j, %bb.d ] ; 2 uses
  %i.k = icmp eq ptr %.pn8, null
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.l, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.m, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.n, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfF8zpZz1lvn_13yara_x_parser(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !15
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %3 to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.i, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24
  br i1 %2, label %bb.g, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #24
  br label %bb.h

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #24
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %.pn9 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.l = icmp eq ptr %.pn9, null
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.n, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.o = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn9, ptr %i.q, align 8
  br label %bb.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCskKLDkoKarTP_4core4hint20select_unpredictableINtB2_11DropOnPanicPjENtNtNtB6_3ops4drop4Drop4dropCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtCs907JfTDu8Xv_8indexmap6BucketReuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !12, !noundef !9 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsfF8zpZz1lvn_13yara_x_parser.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !9, !noundef !9
  %i.c = mul nuw i64 %.val, 24
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsfF8zpZz1lvn_13yara_x_parser.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsfF8zpZz1lvn_13yara_x_parser.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBR_4ExprNtBP_10DFSContextEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !12, !noundef !9 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsfF8zpZz1lvn_13yara_x_parser.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !9, !noundef !9
  %i.c = shl nuw i64 %.val, 5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsfF8zpZz1lvn_13yara_x_parser.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsfF8zpZz1lvn_13yara_x_parser.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCsdJkkaF0JZ31_10ascii_tree4TreeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !12, !noundef !9 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsfF8zpZz1lvn_13yara_x_parser.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !9, !noundef !9
  %i.c = mul nuw i64 %.val, 48
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsfF8zpZz1lvn_13yara_x_parser.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsfF8zpZz1lvn_13yara_x_parser.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !12, !noundef !9 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsfF8zpZz1lvn_13yara_x_parser.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !9, !noundef !9
  %i.c = mul nuw i64 %.val, 24
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsfF8zpZz1lvn_13yara_x_parser.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsfF8zpZz1lvn_13yara_x_parser.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsfF8zpZz1lvn_13yara_x_parser3ast13HexSubPatternENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !12, !noundef !9 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsfF8zpZz1lvn_13yara_x_parser.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !9, !noundef !9
  %i.c = mul nuw i64 %.val, 24
end_hunk_1
begin_hunk_2_@_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtCs2AhGS15tZfv_4bstr7bstring7BStringNtB6_7Display3fmtCsfF8zpZz1lvn_13yara_x_parser:bb.a
  %i.ai = load i8, ptr %i.ah, align 1, !noalias !263, !noundef !9 ; 2 uses
  %i.aj = add nuw i64 %.sroa.03.0.i.i.i.i56, 1    ; 3 uses
  switch i8 %i.ai, label %.preheader.i.i.i.i [
    i8 12, label %_RINvNtCs2AhGS15tZfv_4bstr4utf86decodeRShECsfF8zpZz1lvn_13yara_x_parser.exit.thread.i.i.i
    i8 0, label %bb.m
  ]

bb.m:                                             ; preds = %_RNvNtCs2AhGS15tZfv_4bstr4utf811decode_step.exit.i.i.i.i
  %..i.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.03.0.i.i.i.i56, i64 1)
  br label %_RINvNtCs2AhGS15tZfv_4bstr4utf86decodeRShECsfF8zpZz1lvn_13yara_x_parser.exit.thread.i.i.i

bb.n:                                             ; preds = %bb.f
  %i.ak = load i8, ptr %.sroa.0.0.i.i.i, align 1, !alias.scope !265, !noalias !259, !noundef !9
  %i.al = icmp sgt i8 %i.ak, -1
  br i1 %i.al, label %bb.o, label %.preheader.i.preheader.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 1
  %i.an = load i8, ptr %i.am, align 1, !alias.scope !265, !noalias !259, !noundef !9
  %i.ao = icmp sgt i8 %i.an, -1
  br i1 %i.ao, label %bb.p, label %_RINvNtCs2AhGS15tZfv_4bstr4utf86decodeRShECsfF8zpZz1lvn_13yara_x_parser.exit.thread.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.ap = tail call noundef i64 @_RNvNtCs2AhGS15tZfv_4bstr5ascii20first_non_ascii_byte(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i.i, i64 noundef %.sroa.10.0.i.i.i), !noalias !259 ; 5 uses
  %i.aq = icmp ugt i64 %i.ap, %.sroa.10.0.i.i.i
  br i1 %i.aq, label %bb.r, label %bb.q, !prof !10

bb.q:                                             ; preds = %bb.p
  %i.ar = add i64 %i.ap, %.sroa.013.0.i.i.i
  %i.as = sub nuw i64 %.sroa.10.0.i.i.i, %i.ap
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 %i.ap
  br label %bb.g

bb.r:                                             ; preds = %bb.p
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.ap, i64 noundef %.sroa.10.0.i.i.i, i64 noundef %.sroa.10.0.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #21, !noalias !259
  unreachable

_RINvNtCs2AhGS15tZfv_4bstr4utf86decodeRShECsfF8zpZz1lvn_13yara_x_parser.exit.thread.i.i.i: ; preds = %_RNvNtCs2AhGS15tZfv_4bstr4utf811decode_step.exit.i.i.i.i, %bb.o, %bb.m, %.thread.i.i.i
  %.sroa.013.12180.i.i.i = phi i64 [ %.sroa.013.1.i.i.i, %.thread.i.i.i ], [ %.sroa.013.0.i.i.i, %bb.o ], [ %.sroa.013.12187.i.i.i, %bb.m ], [ %.sroa.013.12187.i.i.i, %_RNvNtCs2AhGS15tZfv_4bstr4utf811decode_step.exit.i.i.i.i ]
  %.sroa.10.12379.i.i.i = phi i64 [ %.sroa.10.1.i.i.i, %.thread.i.i.i ], [ %.sroa.10.0.i.i.i, %bb.o ], [ %.sroa.10.12386.i.i.i, %bb.m ], [ %.sroa.10.12386.i.i.i, %_RNvNtCs2AhGS15tZfv_4bstr4utf811decode_step.exit.i.i.i.i ] ; 4 uses
  %.sroa.0.12578.i.i.i = phi ptr [ %.sroa.0.1.i.i.i, %.thread.i.i.i ], [ %.sroa.0.0.i.i.i, %bb.o ], [ %.sroa.0.12585.i.i.i, %bb.m ], [ %.sroa.0.12585.i.i.i, %_RNvNtCs2AhGS15tZfv_4bstr4utf811decode_step.exit.i.i.i.i ]
  %.sroa.6.1.i35.i.i.i = phi i64 [ 1, %.thread.i.i.i ], [ 1, %bb.o ], [ %..i.i.i.i.i, %bb.m ], [ %i.aj, %_RNvNtCs2AhGS15tZfv_4bstr4utf811decode_step.exit.i.i.i.i ] ; 3 uses
  %i.au = icmp ugt i64 %.sroa.6.1.i35.i.i.i, %.sroa.10.12379.i.i.i
  br i1 %i.au, label %bb.s, label %_RINvNtCs2AhGS15tZfv_4bstr4utf86decodeRShECsfF8zpZz1lvn_13yara_x_parser.exit.thread.thread.i.i.i, !prof !266

_RINvNtCs2AhGS15tZfv_4bstr4utf86decodeRShECsfF8zpZz1lvn_13yara_x_parser.exit.thread.thread.i.i.i: ; preds = %.preheader.i.i.i.i, %_RINvNtCs2AhGS15tZfv_4bstr4utf86decodeRShECsfF8zpZz1lvn_13yara_x_parser.exit.thread.i.i.i
  %.sroa.6.1.i3595.i.i.i = phi i64 [ %.sroa.6.1.i35.i.i.i, %_RINvNtCs2AhGS15tZfv_4bstr4utf86decodeRShECsfF8zpZz1lvn_13yara_x_parser.exit.thread.i.i.i ], [ %.sroa.10.12386.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %.sroa.0.1257894.i.i.i = phi ptr [ %.sroa.0.12578.i.i.i, %_RINvNtCs2AhGS15tZfv_4bstr4utf86decodeRShECsfF8zpZz1lvn_13yara_x_parser.exit.thread.i.i.i ], [ %.sroa.0.12585.i.i.i, %.preheader.i.i.i.i ]
  %.sroa.10.1237993.i.i.i = phi i64 [ %.sroa.10.12379.i.i.i, %_RINvNtCs2AhGS15tZfv_4bstr4utf86decodeRShECsfF8zpZz1lvn_13yara_x_parser.exit.thread.i.i.i ], [ %.sroa.10.12386.i.i.i, %.preheader.i.i.i.i ]
  %.sroa.013.1218092.i.i.i = phi i64 [ %.sroa.013.12180.i.i.i, %_RINvNtCs2AhGS15tZfv_4bstr4utf86decodeRShECsfF8zpZz1lvn_13yara_x_parser.exit.thread.i.i.i ], [ %.sroa.013.12187.i.i.i, %.preheader.i.i.i.i ]
  %i.av = add i64 %.sroa.013.1218092.i.i.i, 1
  %i.aw = sub nuw i64 %.sroa.10.1237993.i.i.i, %.sroa.6.1.i3595.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.1257894.i.i.i, i64 %.sroa.6.1.i3595.i.i.i
  br label %bb.f

bb.s:                                             ; preds = %_RINvNtCs2AhGS15tZfv_4bstr4utf86decodeRShECsfF8zpZz1lvn_13yara_x_parser.exit.thread.i.i.i
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.6.1.i35.i.i.i, i64 noundef %.sroa.10.12379.i.i.i, i64 noundef %.sroa.10.12379.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #21, !noalias !259
  unreachable

_RNvXs_NtCs2AhGS15tZfv_4bstr4utf8NtB4_5CharsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator5count.exit.i.i: ; preds = %bb.g
  %i.ay = tail call i64 @llvm.usub.sat.i64(i64 %i.m, i64 %.sroa.013.1.i.i.i)
  %i.az = select i1 %i.j, i64 0, i64 %i.ay        ; 4 uses
  switch i64 %.sroa.01.0.i.i, label %default.unreachable [
    i64 0, label %bb.t
    i64 1, label %bb.u
    i64 2, label %bb.v
  ]

bb.t:                                             ; preds = %_RNvXs_NtCs2AhGS15tZfv_4bstr4utf8NtB4_5CharsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator5count.exit.i.i
  %i.ba = tail call noundef zeroext i1 @_RNvNvXNtNtCs2AhGS15tZfv_4bstr5impls4bstrNtNtB8_4bstr4BStrNtNtCskKLDkoKarTP_4core3fmt7Display3fmt10write_bstr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1)
  br i1 %i.ba, label %bb.aa, label %bb.w

bb.u:                                             ; preds = %_RNvXs_NtCs2AhGS15tZfv_4bstr4utf8NtB4_5CharsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator5count.exit.i.i
  %i.bb = tail call noundef zeroext i1 @_RNvNvXNtNtCs2AhGS15tZfv_4bstr5impls4bstrNtNtB8_4bstr4BStrNtNtCskKLDkoKarTP_4core3fmt7Display3fmt10write_pads(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.az)
  br i1 %i.bb, label %bb.aa, label %bb.x

bb.v:                                             ; preds = %_RNvXs_NtCs2AhGS15tZfv_4bstr4utf8NtB4_5CharsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator5count.exit.i.i
  %i.bc = lshr i64 %i.az, 1                       ; 2 uses
  %i.bd = and i64 %i.az, 1
  %.sroa.04.0.i.i = add nuw nsw i64 %i.bc, %i.bd
  %i.be = tail call noundef zeroext i1 @_RNvNvXNtNtCs2AhGS15tZfv_4bstr5impls4bstrNtNtB8_4bstr4BStrNtNtCskKLDkoKarTP_4core3fmt7Display3fmt10write_pads(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.bc)
  br i1 %i.be, label %bb.aa, label %bb.y

bb.w:                                             ; preds = %bb.t
  %i.bf = tail call noundef zeroext i1 @_RNvNvXNtNtCs2AhGS15tZfv_4bstr5impls4bstrNtNtB8_4bstr4BStrNtNtCskKLDkoKarTP_4core3fmt7Display3fmt10write_pads(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.az)
  br i1 %i.bf, label %bb.aa, label %_RNvXNtNtCs2AhGS15tZfv_4bstr5impls7bstringNtNtB6_7bstring7BStringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt.exit

bb.x:                                             ; preds = %bb.u
  %i.bg = tail call noundef zeroext i1 @_RNvNvXNtNtCs2AhGS15tZfv_4bstr5impls4bstrNtNtB8_4bstr4BStrNtNtCskKLDkoKarTP_4core3fmt7Display3fmt10write_bstr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1)
  br i1 %i.bg, label %bb.aa, label %_RNvXNtNtCs2AhGS15tZfv_4bstr5impls7bstringNtNtB6_7bstring7BStringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt.exit

bb.y:                                             ; preds = %bb.v
  %i.bh = tail call noundef zeroext i1 @_RNvNvXNtNtCs2AhGS15tZfv_4bstr5impls4bstrNtNtB8_4bstr4BStrNtNtCskKLDkoKarTP_4core3fmt7Display3fmt10write_bstr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1)
  br i1 %i.bh, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bi = tail call noundef zeroext i1 @_RNvNvXNtNtCs2AhGS15tZfv_4bstr5impls4bstrNtNtB8_4bstr4BStrNtNtCskKLDkoKarTP_4core3fmt7Display3fmt10write_pads(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.sroa.04.0.i.i)
  br i1 %i.bi, label %bb.aa, label %_RNvXNtNtCs2AhGS15tZfv_4bstr5impls7bstringNtNtB6_7bstring7BStringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt.exit

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.b
  br label %_RNvXNtNtCs2AhGS15tZfv_4bstr5impls7bstringNtNtB6_7bstring7BStringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt.exit

_RNvXNtNtCs2AhGS15tZfv_4bstr5impls7bstringNtNtB6_7bstring7BStringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt.exit: ; preds = %bb.b, %bb.w, %bb.x, %bb.z, %bb.aa
  %.sroa.0.2.i.i = phi i1 [ true, %bb.aa ], [ false, %bb.w ], [ false, %bb.x ], [ false, %bb.z ], [ false, %bb.b ]
  ret i1 %.sroa.0.2.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtCs94G7V7CXYRk_8bitflags4iterINtB5_9IterNamesNtNtCsfF8zpZz1lvn_13yara_x_parser3ast9RuleFlagsENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextBT_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.c = load i64, ptr %i.a, align 8, !noundef !9
  %i.d = load i64, ptr %i.b, align 8, !noundef !9 ; 2 uses
  %i.e = icmp ult i64 %i.d, %i.c
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 25 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.b

._crit_edge:                                      ; preds = %.backedge, %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %i.h = phi i64 [ %i.d, %.lr.ph ], [ %i.u, %.backedge ]
  %i.i = load ptr, ptr %1, align 8, !nonnull !9, !align !16, !noundef !9
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.h ; 4 uses
  %i.k = tail call noundef zeroext i1 @_RNvYNtNtCsfF8zpZz1lvn_13yara_x_parser3ast9RuleFlagsNtNtCs94G7V7CXYRk_8bitflags6traits5Flags8is_emptyB6_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.f)
  br i1 %i.k, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.e, %bb.h, %._crit_edge
  ret void

bb.d:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.b, align 8, !noundef !9
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.b, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.o = load i64, ptr %i.n, align 8, !noundef !9
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.backedge, label %bb.f

bb.e:                                             ; preds = %bb.b
  store ptr null, ptr %0, align 8
  br label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.val = load i8, ptr %i.q, align 8, !noundef !9 ; 4 uses
  %i.r = tail call noundef zeroext i1 @_RNvYNtNtCsfF8zpZz1lvn_13yara_x_parser3ast9RuleFlagsNtNtCs94G7V7CXYRk_8bitflags6traits5Flags8containsB6_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.g, i8 noundef %.val)
  br i1 %i.r, label %bb.g, label %.backedge

bb.g:                                             ; preds = %bb.f
  %i.s = tail call noundef zeroext i1 @_RNvYNtNtCsfF8zpZz1lvn_13yara_x_parser3ast9RuleFlagsNtNtCs94G7V7CXYRk_8bitflags6traits5Flags10intersectsB6_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.f, i8 noundef %.val)
  br i1 %i.s, label %bb.h, label %.backedge

.backedge:                                        ; preds = %bb.f, %bb.g, %bb.d
  %i.t = load i64, ptr %i.a, align 8, !noundef !9
  %i.u = load i64, ptr %i.b, align 8, !noundef !9 ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  br i1 %i.v, label %bb.b, label %._crit_edge

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  tail call void @_RNvYNtNtCsfF8zpZz1lvn_13yara_x_parser3ast9RuleFlagsNtNtCs94G7V7CXYRk_8bitflags6traits5Flags6removeB6_(ptr noalias nofree noundef nonnull dereferenceable(1) %i.f, i8 noundef %.val)
  %i.x = load ptr, ptr %i.j, align 8, !nonnull !9, !noundef !9
  %i.y = load i64, ptr %i.w, align 8, !noundef !9
  store ptr %i.x, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.y, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.val, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvXs_NtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfsNtB4_7DFSIterNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef align 8 dereferenceable(40) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 61 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 32 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !9 ; 54 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs9dfs_enter.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i64 %i.c, -1                     ; 3 uses
  store i64 %i.e, ptr %i.b, align 8
  %i.f = load i64, ptr %i.a, align 8, !range !12, !noundef !9
  %i.g = icmp samesign ult i64 %i.e, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 30 uses
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !9, !noundef !9
  %i.j = icmp ult i64 %i.c, 288230376151711745
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %i.e ; 5 uses
  %.sroa.019.0.copyload = load i64, ptr %i.k, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %.sroa.420.0.copyload = load ptr, ptr %.sroa.420.0..sroa_idx, align 8 ; 83 uses
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.sroa.521.0.copyload = load i64, ptr %.sroa.521.0..sroa_idx, align 8 ; 3 uses
  %.sroa.622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %.sroa.622.0.copyload = load ptr, ptr %.sroa.622.0..sroa_idx, align 8 ; 2 uses
  %i.l = trunc nuw i64 %.sroa.019.0.copyload to i1
  br i1 %i.l, label %bb.c, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit

_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs9dfs_enter.exit: ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit186.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit172.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit171.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit167.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit185.i, %.loopexit312.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit180.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit179.i, %.loopexit311.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit174.i, %bb.ao, %bb.al, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit170.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit169.i, %._crit_edge.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit166.i, %bb.aa, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit165.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit163.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit162.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit160.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit158.i, %bb.j, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit157.i, %bb.f, %bb.e, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit, %bb.c, %bb.a
  %.sroa.4.0 = phi ptr [ undef, %bb.a ], [ %.sroa.420.0.copyload, %bb.c ], [ %.sroa.420.0.copyload, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit ], [ %.sroa.420.0.copyload, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit ], [ %.sroa.420.0.copyload, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit ], [ %.sroa.420.0.copyload, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit ], [ %.sroa.420.0.copyload, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit ], [ %.sroa.420.0.copyload, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit ], [ %.sroa.420.0.copyload, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit ], [ %.sroa.420.0.copyload, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit ], [ %.sroa.420.0.copyload, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit ], [ %.sroa.420.0.copyload, %bb.e ], [ %.sroa.420.0.copyload, %bb.f ], [ %.sroa.420.0.copyload, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit157.i ], [ %.sroa.420.0.copyload, %bb.j ], [ %.sroa.420.0.copyload, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit158.i ], [ %.sroa.420.0.copyload, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit160.i ], [ %.sroa.420.0.copyload, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit162.i ], [ %.sroa.420.0.copyload, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit163.i ], [ %.sroa.420.0.copyload, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit165.i ], [ %.sroa.420.0.copyload, %bb.aa ], [ %.sroa.420.0.copyload, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit166.i ], [ %.sroa.420.0.copyload, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit172.i ], [ %.sroa.420.0.copyload, %._crit_edge.i ], [ %.sroa.420.0.copyload, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit169.i ], [ %.sroa.420.0.copyload, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit170.i ], [ %.sroa.420.0.copyload, %bb.al ], [ %.sroa.420.0.copyload, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit167.i ], [ %.sroa.420.0.copyload, %bb.ao ], [ %.sroa.420.0.copyload, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit171.i ], [ %.sroa.420.0.copyload, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit174.i ], [ %.sroa.420.0.copyload, %.loopexit311.i ], [ %.sroa.420.0.copyload, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit179.i ], [ %.sroa.420.0.copyload, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit180.i ], [ %.sroa.420.0.copyload, %.loopexit312.i ], [ %.sroa.420.0.copyload, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit185.i ], [ %.sroa.420.0.copyload, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit186.i ]
  %.sroa.0.0 = phi i64 [ 2, %bb.a ], [ 1, %bb.c ], [ 0, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit ], [ 0, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit ], [ 0, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit ], [ 0, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit ], [ 0, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit ], [ 0, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit ], [ 0, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit ], [ 0, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit ], [ 0, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit157.i ], [ 0, %bb.j ], [ 0, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit158.i ], [ 0, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit160.i ], [ 0, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit162.i ], [ 0, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit163.i ], [ 0, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit165.i ], [ 0, %bb.aa ], [ 0, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit166.i ], [ 0, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit172.i ], [ 0, %._crit_edge.i ], [ 0, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit169.i ], [ 0, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit170.i ], [ 0, %bb.al ], [ 0, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit167.i ], [ 0, %bb.ao ], [ 0, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit171.i ], [ 0, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit174.i ], [ 0, %.loopexit311.i ], [ 0, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit179.i ], [ 0, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit180.i ], [ 0, %.loopexit312.i ], [ 0, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit185.i ], [ 0, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit186.i ]
  %i.m = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.n = insertvalue { i64, ptr } %i.m, ptr %.sroa.4.0, 1
  ret { i64, ptr } %i.n

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ult i64 %.sroa.521.0.copyload, 11
  tail call void @llvm.assume(i1 %i.o)
  store i64 %.sroa.521.0.copyload, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.622.0.copyload, ptr %i.p, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.420.0.copyload) ]
  br label %_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs9dfs_enter.exit

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.420.0.copyload) ]
  store i64 -1, ptr %0, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366)
  store i64 1, ptr %i.k, align 8, !noalias !366
  store ptr %.sroa.420.0.copyload, ptr %.sroa.420.0..sroa_idx, align 8, !noalias !366
  store i64 %.sroa.521.0.copyload, ptr %.sroa.521.0..sroa_idx, align 8, !noalias !366
  store ptr %.sroa.622.0.copyload, ptr %.sroa.622.0..sroa_idx, align 8, !noalias !366
  store i64 %i.c, ptr %i.b, align 8, !alias.scope !366, !noalias !367
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !369)
  %i.q = load i32, ptr %.sroa.420.0.copyload, align 8, !range !370, !alias.scope !368, !noalias !369, !noundef !9
  switch i32 %i.q, label %default.unreachable [
    i32 0, label %_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs9dfs_enter.exit
    i32 1, label %_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs9dfs_enter.exit
    i32 2, label %_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs9dfs_enter.exit
    i32 3, label %_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs9dfs_enter.exit
    i32 4, label %_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs9dfs_enter.exit
    i32 5, label %_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs9dfs_enter.exit
    i32 6, label %_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs9dfs_enter.exit
    i32 7, label %_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs9dfs_enter.exit
    i32 8, label %_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs9dfs_enter.exit
    i32 9, label %bb.e
    i32 10, label %bb.f
    i32 11, label %bb.aa
    i32 12, label %bb.aa
    i32 13, label %bb.g
    i32 14, label %bb.j
    i32 15, label %bb.k
    i32 16, label %bb.aj
    i32 17, label %bb.aj
    i32 18, label %bb.al
    i32 19, label %bb.al
    i32 20, label %bb.aj
    i32 21, label %bb.ao
    i32 22, label %bb.ao
    i32 23, label %bb.ao
    i32 24, label %bb.ao
    i32 25, label %bb.ao
    i32 26, label %bb.aj
    i32 27, label %bb.ar
    i32 28, label %bb.ar
    i32 29, label %bb.ar
    i32 30, label %bb.ar
    i32 31, label %bb.ar
    i32 32, label %bb.ar
    i32 33, label %bb.ar
    i32 34, label %bb.ar
    i32 35, label %bb.ar
    i32 36, label %bb.ar
    i32 37, label %bb.ar
    i32 38, label %bb.ar
    i32 39, label %bb.ar
    i32 40, label %bb.ar
    i32 41, label %bb.ar
    i32 42, label %bb.ar
    i32 43, label %bb.ar
    i32 44, label %bb.ar
    i32 45, label %bb.ar
    i32 46, label %bb.l
    i32 47, label %bb.m
    i32 48, label %bb.o
    i32 49, label %bb.q
  ]

default.unreachable:                              ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit
  unreachable

bb.d:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit159.i
  unreachable

bb.e:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.420.0.copyload, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !368, !noalias !369, !nonnull !9, !noundef !9 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !range !371, !noalias !368, !noundef !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  switch i64 %i.t, label %bb.s [
    i64 2, label %_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs9dfs_enter.exit
    i64 0, label %bb.v
  ]

bb.f:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.420.0.copyload, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !368, !noalias !369, !nonnull !9, !noundef !9 ; 3 uses
  %i.x = load i32, ptr %i.w, align 8, !range !372, !noalias !368, !noundef !9
  %.not151.i = icmp eq i32 %i.x, -1
  br i1 %.not151.i, label %_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs9dfs_enter.exit, label %bb.x

bb.g:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.420.0.copyload, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !368, !noalias !369, !nonnull !9, !noundef !9 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !373)
  %i.ab = load i64, ptr %i.a, align 8, !range !12, !alias.scope !374, !noalias !375, !noundef !9
  %i.ac = icmp eq i64 %i.c, %i.ab
  br i1 %i.ac, label %bb.h, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBR_4ExprNtBP_10DFSContextEEE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #22, !noalias !375
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit.i

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit.i: ; preds = %bb.h, %bb.g
  %i.ad = load ptr, ptr %i.h, align 8, !alias.scope !374, !noalias !375, !nonnull !9, !noundef !9
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %i.c ; 4 uses
  store i64 0, ptr %i.ae, align 8, !noalias !376
  %.sroa.4210.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.aa, ptr %.sroa.4210.0..sroa_idx.i, align 8, !noalias !376
  %.sroa.5211.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 8, ptr %.sroa.5211.0..sroa_idx.i, align 8, !noalias !376
  %.sroa.6212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr %.sroa.420.0.copyload, ptr %.sroa.6212.0..sroa_idx.i, align 8, !noalias !376
  %i.af = add nuw nsw i64 %i.c, 1                 ; 3 uses
  store i64 %i.af, ptr %i.b, align 8, !alias.scope !374, !noalias !375
  tail call void @llvm.experimental.noalias.scope.decl(metadata !377)
  %i.ag = load i64, ptr %i.a, align 8, !range !12, !alias.scope !378, !noalias !379, !noundef !9
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.i, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit157.i

bb.i:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit.i
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBR_4ExprNtBP_10DFSContextEEE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #22, !noalias !380
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit157.i

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit157.i: ; preds = %bb.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit.i
  %i.ai = load ptr, ptr %i.h, align 8, !alias.scope !378, !noalias !379, !nonnull !9, !noundef !9
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.ai, i64 %i.af ; 4 uses
  store i64 0, ptr %i.aj, align 8, !noalias !377
  %.sroa.4214.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.z, ptr %.sroa.4214.0..sroa_idx.i, align 8, !noalias !377
  %.sroa.5215.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 3, ptr %.sroa.5215.0..sroa_idx.i, align 8, !noalias !377
  %.sroa.6216.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store ptr %.sroa.420.0.copyload, ptr %.sroa.6216.0..sroa_idx.i, align 8, !noalias !377
  %i.ak = add nuw nsw i64 %i.c, 2
  store i64 %i.ak, ptr %i.b, align 8, !alias.scope !378, !noalias !379
  br label %_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs9dfs_enter.exit

bb.j:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.420.0.copyload, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !368, !noalias !369, !nonnull !9, !noundef !9 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !368, !nonnull !9, !noundef !9 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !368, !noundef !9 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs9dfs_enter.exit, label %.lr.ph327.i

.lr.ph327.i:                                      ; preds = %bb.j
  %.idx333.i = shl nuw nsw i64 %i.aq, 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx333.i
  br label %bb.ad

bb.k:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.420.0.copyload, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !368, !noalias !369, !nonnull !9, !noundef !9 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !368, !nonnull !9, !noundef !9 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !noalias !368, !noundef !9 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %._crit_edge.i, label %.lr.ph324.i

.lr.ph324.i:                                      ; preds = %bb.k
  %.idx332.i = shl nuw nsw i64 %i.ay, 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx332.i
  br label %bb.af

bb.l:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.420.0.copyload, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !368, !noalias !369, !nonnull !9, !noundef !9 ; 7 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load i64, ptr %i.bd, align 8, !range !371, !noalias !368, !noundef !9
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 40 ; 3 uses
  switch i64 %i.be, label %bb.av [
    i64 2, label %bb.au
    i64 0, label %bb.ax
  ]

bb.m:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.420.0.copyload, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !368, !noalias !369, !nonnull !9, !noundef !9 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  %i.bj = load i64, ptr %i.a, align 8, !range !12, !alias.scope !382, !noalias !383, !noundef !9
  %i.bk = icmp eq i64 %i.c, %i.bj
  br i1 %i.bk, label %bb.n, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit158.i

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBR_4ExprNtBP_10DFSContextEEE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #22, !noalias !383
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit158.i

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit158.i: ; preds = %bb.n, %bb.m
  %i.bl = load ptr, ptr %i.h, align 8, !alias.scope !382, !noalias !383, !nonnull !9, !noundef !9
  %i.bm = getelementptr inbounds nuw [32 x i8], ptr %i.bl, i64 %i.c ; 4 uses
  store i64 0, ptr %i.bm, align 8, !noalias !384
  %.sroa.4270.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %i.bi, ptr %.sroa.4270.0..sroa_idx.i, align 8, !noalias !384
  %.sroa.5271.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i64 1, ptr %.sroa.5271.0..sroa_idx.i, align 8, !noalias !384
  %.sroa.6272.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store ptr %.sroa.420.0.copyload, ptr %.sroa.6272.0..sroa_idx.i, align 8, !noalias !384
  %i.bn = add nuw nsw i64 %i.c, 1                 ; 3 uses
  store i64 %i.bn, ptr %i.b, align 8, !alias.scope !382, !noalias !383
end_hunk_2
