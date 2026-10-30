Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x_parser-4204840c537c9517.yara_x_parser.b6715538e8e8d337-cgu.15?download=true
inline.NumInlined: 167
inline.NumDeleted: 43
begin_hunk_0_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortjNvYjNtNtBa_3cmp10PartialOrd2ltECsfF8zpZz1lvn_13yara_x_parser:bb.a
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
  %.val.i = load i64, ptr %.sroa.9.236.i, align 8, !alias.scope !69, !noundef !7 ; 2 uses
  %i.bc = icmp ult i64 %.val.i, %i.u              ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %.sroa.43.234.i, i64 -8 ; 3 uses
  %.sroa.01.0.i26.i = select i1 %i.bc, ptr %2, ptr %i.bd
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i26.i, i64 %.sroa.27.235.i
  store i64 %.val.i, ptr %i.be, align 8, !alias.scope !67, !noalias !74
  %i.bf = zext i1 %i.bc to i64
  %i.bg = add i64 %.sroa.27.235.i, %i.bf          ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i, i64 8 ; 3 uses
  %i.bi = icmp ult ptr %i.bh, %i.az
  br i1 %i.bi, label %.lr.ph38.i, label %._crit_edge39.i

bb.k:                                             ; preds = %._crit_edge39.i
  %i.bj = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -8 ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %.sroa.27.2.lcssa.i
  %i.bl = load i64, ptr %.sroa.9.2.lcssa.i, align 8, !alias.scope !66, !noalias !75
  store i64 %i.bl, ptr %i.bk, align 8, !alias.scope !67, !noalias !75
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 8
  br label %bb.j

bb.l:                                             ; preds = %._crit_edge39.i
  %i.bn = shl nuw nsw i64 %.sroa.27.2.lcssa.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph120, ptr nonnull align 8 %2, i64 %i.bn, i1 false), !alias.scope !76
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
  %wide.load278 = load <2 x i64>, ptr %i.bt, align 8, !alias.scope !67
  %wide.load279 = load <2 x i64>, ptr %i.bu, align 8, !alias.scope !67
  %reverse280 = shufflevector <2 x i64> %wide.load278, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse281 = shufflevector <2 x i64> %wide.load279, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bv = getelementptr i8, ptr %i.bs, i64 16
  store <2 x i64> %reverse280, ptr %i.bs, align 8, !alias.scope !66
  store <2 x i64> %reverse281, ptr %i.bv, align 8, !alias.scope !66
  %index.next282 = add nuw i64 %index277, 4       ; 2 uses
  %i.bw = icmp eq i64 %index.next282, %n.vec275
  br i1 %i.bw, label %middle.block283, label %vector.body276, !llvm.loop !39

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
  %i.cb = load i64, ptr %i.bz, align 8, !alias.scope !67
  store i64 %i.cb, ptr %i.ca, align 8, !alias.scope !66
  %exitcond.not.i = icmp eq i64 %i.bx, %i.bo
  br i1 %exitcond.not.i, label %.loopexit, label %scalar.ph272, !llvm.loop !40

.loopexit:                                        ; preds = %scalar.ph272, %middle.block283, %bb.l
  %i.cc = icmp eq i64 %.sroa.27.2.lcssa.i, 0
  br i1 %i.cc, label %.thread, label %bb.m

bb.m:                                             ; preds = %.loopexit
  %.not.i38 = icmp ugt i64 %.sroa.27.2.lcssa.i, %.sroa.16.0113264
  br i1 %.not.i38, label %bb.n, label %_RNvMNtCskKLDkoKarTP_4core5sliceSj12split_at_mutCsfF8zpZz1lvn_13yara_x_parser.exit, !prof !8

bb.n:                                             ; preds = %bb.m
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #21, !noalias !79
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSj12split_at_mutCsfF8zpZz1lvn_13yara_x_parser.exit: ; preds = %bb.m
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph120, i64 %.sroa.27.2.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph120) ]
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortjNvYjNtNtBa_3cmp10PartialOrd2ltECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull align 8 %i.cd, i64 noundef %i.bo, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %i.a, ptr noalias nofree noundef nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ce = icmp ult i64 %.sroa.27.2.lcssa.i, 33
  br i1 %i.ce, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.f, %.loopexit
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph120, i64 %i.r ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !80)
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %.not81 = icmp samesign ult i64 %3, %.sroa.16.0113264
  br i1 %.not81, label %bb.p, label %bb.o, !prof !68

bb.o:                                             ; preds = %.thread
  %i.cg = getelementptr [8 x i8], ptr %2, i64 %.sroa.16.0113264 ; 3 uses
  br label %bb.q

bb.p:                                             ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.q:                                             ; preds = %bb.s, %bb.o
  %.sroa.43.0.i41 = phi ptr [ %i.cg, %bb.o ], [ %i.dt, %bb.s ] ; 2 uses
  %.sroa.27.0.i42 = phi i64 [ 0, %bb.o ], [ %i.dw, %bb.s ] ; 2 uses
  %.sroa.9.0.i43 = phi ptr [ %.sroa.0.0.ph120, %bb.o ], [ %i.dx, %bb.s ] ; 3 uses
  %.sroa.0.0.i44 = phi i64 [ %.sroa.0.0.i, %bb.o ], [ %.sroa.16.0113264, %bb.s ] ; 3 uses
  %i.ch = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i44, i64 3)
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph120, i64 %i.ch ; 2 uses
  %i.cj = icmp ult ptr %.sroa.9.0.i43, %i.ci
  br i1 %i.cj, label %.lr.ph.i64, label %._crit_edge.i45

.lr.ph.i64:                                       ; preds = %bb.q
  %.val22.i65 = load i64, ptr %i.cf, align 8, !alias.scope !82, !noundef !7 ; 4 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.i64
  %.sroa.9.131.i66 = phi ptr [ %.sroa.9.0.i43, %.lr.ph.i64 ], [ %i.dh, %bb.r ] ; 5 uses
  %.sroa.27.130.i67 = phi i64 [ %.sroa.27.0.i42, %.lr.ph.i64 ], [ %i.dg, %bb.r ] ; 2 uses
  %.sroa.43.129.i68 = phi ptr [ %.sroa.43.0.i41, %.lr.ph.i64 ], [ %i.dd, %bb.r ] ; 4 uses
  %.val21.i69 = load i64, ptr %.sroa.9.131.i66, align 8, !alias.scope !83, !noundef !7 ; 2 uses
  %i.ck = icmp uge i64 %.val22.i65, %.val21.i69   ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %.sroa.43.129.i68, i64 -8
  %.sroa.01.0.i.i70 = select i1 %i.ck, ptr %2, ptr %i.cl
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i70, i64 %.sroa.27.130.i67
  store i64 %.val21.i69, ptr %i.cm, align 8, !alias.scope !81, !noalias !84
  %i.cn = zext i1 %i.ck to i64
  %i.co = add i64 %.sroa.27.130.i67, %i.cn        ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i66, i64 8
  %.val19.i71 = load i64, ptr %i.cp, align 8, !alias.scope !83, !noundef !7 ; 2 uses
  %i.cq = icmp uge i64 %.val22.i65, %.val19.i71   ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %.sroa.43.129.i68, i64 -16
  %.sroa.01.0.i23.i72 = select i1 %i.cq, ptr %2, ptr %i.cr
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i23.i72, i64 %i.co
  store i64 %.val19.i71, ptr %i.cs, align 8, !alias.scope !81, !noalias !85
  %i.ct = zext i1 %i.cq to i64
  %i.cu = add i64 %i.co, %i.ct                    ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i66, i64 16
  %.val17.i73 = load i64, ptr %i.cv, align 8, !alias.scope !83, !noundef !7 ; 2 uses
  %i.cw = icmp uge i64 %.val22.i65, %.val17.i73   ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %.sroa.43.129.i68, i64 -24
  %.sroa.01.0.i24.i74 = select i1 %i.cw, ptr %2, ptr %i.cx
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i24.i74, i64 %i.cu
  store i64 %.val17.i73, ptr %i.cy, align 8, !alias.scope !81, !noalias !86
  %i.cz = zext i1 %i.cw to i64
  %i.da = add i64 %i.cu, %i.cz                    ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i66, i64 24
  %.val15.i75 = load i64, ptr %i.db, align 8, !alias.scope !83, !noundef !7 ; 2 uses
  %i.dc = icmp uge i64 %.val22.i65, %.val15.i75   ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %.sroa.43.129.i68, i64 -32 ; 3 uses
  %.sroa.01.0.i25.i76 = select i1 %i.dc, ptr %2, ptr %i.dd
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i25.i76, i64 %i.da
  store i64 %.val15.i75, ptr %i.de, align 8, !alias.scope !81, !noalias !87
  %i.df = zext i1 %i.dc to i64
  %i.dg = add i64 %i.da, %i.df                    ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i66, i64 32 ; 3 uses
  %i.di = icmp ult ptr %i.dh, %i.ci
  br i1 %i.di, label %bb.r, label %._crit_edge.i45

._crit_edge.i45:                                  ; preds = %bb.r, %bb.q
  %.sroa.43.1.lcssa.i46 = phi ptr [ %.sroa.43.0.i41, %bb.q ], [ %i.dd, %bb.r ] ; 2 uses
  %.sroa.27.1.lcssa.i47 = phi i64 [ %.sroa.27.0.i42, %bb.q ], [ %i.dg, %bb.r ] ; 2 uses
  %.sroa.9.1.lcssa.i48 = phi ptr [ %.sroa.9.0.i43, %bb.q ], [ %i.dh, %bb.r ] ; 3 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph120, i64 %.sroa.0.0.i44 ; 2 uses
  %i.dk = icmp ult ptr %.sroa.9.1.lcssa.i48, %i.dj
  br i1 %i.dk, label %.lr.ph38.i57.preheader, label %._crit_edge39.i49

.lr.ph38.i57.preheader:                           ; preds = %._crit_edge.i45
  %.val14.i62 = load i64, ptr %i.cf, align 8, !alias.scope !82, !noundef !7
  br label %.lr.ph38.i57

._crit_edge39.i49:                                ; preds = %.lr.ph38.i57, %._crit_edge.i45
  %.sroa.43.2.lcssa.i50 = phi ptr [ %.sroa.43.1.lcssa.i46, %._crit_edge.i45 ], [ %i.dn, %.lr.ph38.i57 ]
  %.sroa.27.2.lcssa.i51 = phi i64 [ %.sroa.27.1.lcssa.i47, %._crit_edge.i45 ], [ %i.dq, %.lr.ph38.i57 ] ; 9 uses
  %.sroa.9.2.lcssa.i52 = phi ptr [ %.sroa.9.1.lcssa.i48, %._crit_edge.i45 ], [ %i.dr, %.lr.ph38.i57 ] ; 2 uses
  %i.dl = icmp eq i64 %.sroa.0.0.i44, %.sroa.16.0113264
  br i1 %i.dl, label %bb.t, label %bb.s

.lr.ph38.i57:                                     ; preds = %.lr.ph38.i57, %.lr.ph38.i57.preheader
  %.sroa.9.236.i58 = phi ptr [ %.sroa.9.1.lcssa.i48, %.lr.ph38.i57.preheader ], [ %i.dr, %.lr.ph38.i57 ] ; 2 uses
  %.sroa.27.235.i59 = phi i64 [ %.sroa.27.1.lcssa.i47, %.lr.ph38.i57.preheader ], [ %i.dq, %.lr.ph38.i57 ] ; 2 uses
  %.sroa.43.234.i60 = phi ptr [ %.sroa.43.1.lcssa.i46, %.lr.ph38.i57.preheader ], [ %i.dn, %.lr.ph38.i57 ]
  %.val.i61 = load i64, ptr %.sroa.9.236.i58, align 8, !alias.scope !83, !noundef !7 ; 2 uses
  %i.dm = icmp uge i64 %.val14.i62, %.val.i61     ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %.sroa.43.234.i60, i64 -8 ; 3 uses
  %.sroa.01.0.i26.i63 = select i1 %i.dm, ptr %2, ptr %i.dn
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i26.i63, i64 %.sroa.27.235.i59
  store i64 %.val.i61, ptr %i.do, align 8, !alias.scope !81, !noalias !88
  %i.dp = zext i1 %i.dm to i64
  %i.dq = add i64 %.sroa.27.235.i59, %i.dp        ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i58, i64 8 ; 3 uses
  %i.ds = icmp ult ptr %i.dr, %i.dj
  br i1 %i.ds, label %.lr.ph38.i57, label %._crit_edge39.i49

bb.s:                                             ; preds = %._crit_edge39.i49
  %i.dt = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i50, i64 -8
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i51
  %i.dv = load i64, ptr %.sroa.9.2.lcssa.i52, align 8, !alias.scope !80, !noalias !89
  store i64 %i.dv, ptr %i.du, align 8, !alias.scope !81, !noalias !89
  %i.dw = add i64 %.sroa.27.2.lcssa.i51, 1
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i52, i64 8
  br label %bb.q

bb.t:                                             ; preds = %._crit_edge39.i49
  %i.dy = shl nuw nsw i64 %.sroa.27.2.lcssa.i51, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph120, ptr nonnull align 8 %2, i64 %i.dy, i1 false), !alias.scope !90
  %i.dz = sub i64 %.sroa.16.0113264, %.sroa.27.2.lcssa.i51 ; 7 uses
  %.not47.i53 = icmp eq i64 %.sroa.16.0113264, %.sroa.27.2.lcssa.i51
  %i.ea = getelementptr [8 x i8], ptr %.sroa.0.0.ph120, i64 %.sroa.27.2.lcssa.i51 ; 3 uses
  br i1 %.not47.i53, label %.outer.thread, label %.lr.ph45.i54

.lr.ph45.i54:                                     ; preds = %bb.t
  %min.iters.check = icmp ult i64 %i.dz, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph45.i54
  %n.vec = and i64 %i.dz, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.eb = xor i64 %index, -1
  %i.ec = getelementptr [8 x i8], ptr %i.cg, i64 %i.eb ; 2 uses
  %i.ed = getelementptr [8 x i8], ptr %i.ea, i64 %index ; 2 uses
  %i.ee = getelementptr i8, ptr %i.ec, i64 -8
  %i.ef = getelementptr i8, ptr %i.ec, i64 -24
  %wide.load = load <2 x i64>, ptr %i.ee, align 8, !alias.scope !81
  %wide.load270 = load <2 x i64>, ptr %i.ef, align 8, !alias.scope !81
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse271 = shufflevector <2 x i64> %wide.load270, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.eg = getelementptr i8, ptr %i.ed, i64 16
  store <2 x i64> %reverse, ptr %i.ed, align 8, !alias.scope !80
  store <2 x i64> %reverse271, ptr %i.eg, align 8, !alias.scope !80
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eh = icmp eq i64 %index.next, %n.vec
  br i1 %i.eh, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dz, %n.vec
  br i1 %cmp.n, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionjNCINvB2_9quicksortjNvYjNtNtBa_3cmp10PartialOrd2ltE0ECsfF8zpZz1lvn_13yara_x_parser.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph45.i54, %middle.block
  %.sroa.07.043.i55.ph = phi i64 [ 0, %.lr.ph45.i54 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.07.043.i55 = phi i64 [ %i.ei, %scalar.ph ], [ %.sroa.07.043.i55.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ei = add nuw i64 %.sroa.07.043.i55, 1        ; 2 uses
  %i.ej = xor i64 %.sroa.07.043.i55, -1
  %i.ek = getelementptr [8 x i8], ptr %i.cg, i64 %i.ej
  %i.el = getelementptr [8 x i8], ptr %i.ea, i64 %.sroa.07.043.i55
  %i.em = load i64, ptr %i.ek, align 8, !alias.scope !81
  store i64 %i.em, ptr %i.el, align 8, !alias.scope !80
  %exitcond.not.i56 = icmp eq i64 %i.ei, %i.dz
  br i1 %exitcond.not.i56, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionjNCINvB2_9quicksortjNvYjNtNtBa_3cmp10PartialOrd2ltE0ECsfF8zpZz1lvn_13yara_x_parser.exit, label %scalar.ph, !llvm.loop !63

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionjNCINvB2_9quicksortjNvYjNtNtBa_3cmp10PartialOrd2ltE0ECsfF8zpZz1lvn_13yara_x_parser.exit: ; preds = %scalar.ph, %middle.block
  %i.en = icmp ugt i64 %.sroa.27.2.lcssa.i51, %.sroa.16.0113264
  br i1 %i.en, label %bb.u, label %.outer, !prof !8

.outer.thread:                                    ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.outer._crit_edge

.outer:                                           ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionjNCINvB2_9quicksortjNvYjNtNtBa_3cmp10PartialOrd2ltE0ECsfF8zpZz1lvn_13yara_x_parser.exit
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph120, i64 %.sroa.27.2.lcssa.i51 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ep = icmp ult i64 %i.dz, 33
  br i1 %i.ep, label %.outer._crit_edge, label %.lr.ph

bb.u:                                             ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionjNCINvB2_9quicksortjNvYjNtNtBa_3cmp10PartialOrd2ltE0ECsfF8zpZz1lvn_13yara_x_parser.exit
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.27.2.lcssa.i51, i64 noundef %.sroa.16.0113264, i64 noundef %.sroa.16.0113264, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #21
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.b = icmp eq i64 %4, 0
  br i1 %i.b, label %bb.e, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8, !range !10, !alias.scope !93, !noundef !7 ; 2 uses
  %i.f = shl nuw i64 %i.e, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 range(i64 0, -1) %i.f)
  %i.g = icmp eq i64 %4, 1
  %i.h = icmp ult i64 %4, 1025
  %..i = select i1 %i.h, i64 4, i64 1
  %.sroa.08.0.i = select i1 %i.g, i64 8, i64 %..i
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 range(i64 0, -1) %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !93
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.i, align 8, !alias.scope !93
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.e, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !93
  %i.j = load i64, ptr %i.a, align 8, !range !11, !noalias !93, !noundef !7
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.l, align 8, !range !12, !noalias !93, !noundef !7
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noalias !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !93
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.b
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.b ], [ %i.o, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ], [ 0, %bb.a ]
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #23
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.l, align 8, !noalias !93, !nonnull !7, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !93
  store ptr %i.p, ptr %i.i, align 8, !alias.scope !93
  %i.q = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.q)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !93
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iterINtB6_4IterNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtB1V_8iterator8Iterator8find_map5checkRB19_NtB1d_4SpanNCNvMNtB1b_13syntax_streamNtB4l_12SyntaxStream8truncate0E0INtNtNtB1Z_3ops12control_flow11ControlFlowB45_EEB1d_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [12 x i8], align 4                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.a, ptr %i.e, align 8, !noalias !115
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.f, align 8, !alias.scope !116, !nonnull !7, !noundef !7 ; 2 uses
  %.promoted.i = load ptr, ptr %i.g, align 8, !alias.scope !116 ; 2 uses
  %i.i = icmp eq ptr %i.h, %.promoted.i
  br i1 %i.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.k, %bb.b ], [ %.promoted.i, %bb.a ]
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -32 ; 4 uses
  store ptr %i.k, ptr %i.g, align 8, !alias.scope !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !115
  call void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8find_map5checkRNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventNtB1U_4SpanNCNvMNtB1S_13syntax_streamNtB2N_12SyntaxStream8truncate0E0INtB7_5FnMutTuB1P_EE8call_mutB1U_(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k), !noalias !117
  %i.l = load i32, ptr %i.d, align 4, !range !118, !alias.scope !119, !noalias !115, !noundef !7
  %i.m = trunc nuw i32 %i.l to i1
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !115
  %i.n = icmp eq ptr %i.h, %i.k
  br i1 %i.n, label %.loopexit, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = load <2 x i32>, ptr %i.o, align 4, !alias.scope !119, !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store <2 x i32> %i.q, ptr %i.p, align 4, !alias.scope !120
  store i32 1, ptr %0, align 4, !alias.scope !120
  br label %bb.f

.loopexit:                                        ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !121)
  call void @llvm.experimental.noalias.scope.decl(metadata !122)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.a, ptr %i.c, align 8, !noalias !123
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load ptr, ptr %1, align 8, !alias.scope !124, !nonnull !7, !noundef !7 ; 2 uses
  %.promoted.i2 = load ptr, ptr %i.r, align 8, !alias.scope !124 ; 2 uses
  %i.t = icmp eq ptr %i.s, %.promoted.i2
end_hunk_0
begin_hunk_1_@_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtCs2AhGS15tZfv_4bstr7bstring7BStringNtB6_7Display3fmtCsfF8zpZz1lvn_13yara_x_parser:bb.a
bb.l:                                             ; preds = %bb.k
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.af, i64 noundef 108, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #21, !noalias !247
  unreachable

_RNvNtCs2AhGS15tZfv_4bstr4utf811decode_step.exit.i.i.i.i: ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr @9, i64 %i.af
  %i.ai = load i8, ptr %i.ah, align 1, !noalias !246, !noundef !7 ; 2 uses
  %i.aj = add nuw i64 %.sroa.03.0.i.i.i.i56, 1    ; 3 uses
  switch i8 %i.ai, label %.preheader.i.i.i.i [
    i8 12, label %_RINvNtCs2AhGS15tZfv_4bstr4utf86decodeRShECsfF8zpZz1lvn_13yara_x_parser.exit.thread.i.i.i
    i8 0, label %bb.m
  ]

bb.m:                                             ; preds = %_RNvNtCs2AhGS15tZfv_4bstr4utf811decode_step.exit.i.i.i.i
  %..i.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.03.0.i.i.i.i56, i64 1)
  br label %_RINvNtCs2AhGS15tZfv_4bstr4utf86decodeRShECsfF8zpZz1lvn_13yara_x_parser.exit.thread.i.i.i

bb.n:                                             ; preds = %bb.f
  %i.ak = load i8, ptr %.sroa.0.0.i.i.i, align 1, !alias.scope !248, !noalias !239, !noundef !7
  %i.al = icmp sgt i8 %i.ak, -1
  br i1 %i.al, label %bb.o, label %.preheader.i.preheader.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 1
  %i.an = load i8, ptr %i.am, align 1, !alias.scope !248, !noalias !239, !noundef !7
  %i.ao = icmp sgt i8 %i.an, -1
  br i1 %i.ao, label %bb.p, label %_RINvNtCs2AhGS15tZfv_4bstr4utf86decodeRShECsfF8zpZz1lvn_13yara_x_parser.exit.thread.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.ap = tail call noundef i64 @_RNvNtCs2AhGS15tZfv_4bstr5ascii20first_non_ascii_byte(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i.i, i64 noundef %.sroa.10.0.i.i.i), !noalias !242 ; 5 uses
  %i.aq = icmp ugt i64 %i.ap, %.sroa.10.0.i.i.i
  br i1 %i.aq, label %bb.r, label %bb.q, !prof !8

bb.q:                                             ; preds = %bb.p
  %i.ar = add i64 %i.ap, %.sroa.013.0.i.i.i
  %i.as = sub nuw i64 %.sroa.10.0.i.i.i, %i.ap
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 %i.ap
  br label %bb.g

bb.r:                                             ; preds = %bb.p
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.ap, i64 noundef %.sroa.10.0.i.i.i, i64 noundef %.sroa.10.0.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #21, !noalias !242
  unreachable

_RINvNtCs2AhGS15tZfv_4bstr4utf86decodeRShECsfF8zpZz1lvn_13yara_x_parser.exit.thread.i.i.i: ; preds = %_RNvNtCs2AhGS15tZfv_4bstr4utf811decode_step.exit.i.i.i.i, %bb.o, %bb.m, %.thread.i.i.i
  %.sroa.013.12180.i.i.i = phi i64 [ %.sroa.013.1.i.i.i, %.thread.i.i.i ], [ %.sroa.013.0.i.i.i, %bb.o ], [ %.sroa.013.12187.i.i.i, %bb.m ], [ %.sroa.013.12187.i.i.i, %_RNvNtCs2AhGS15tZfv_4bstr4utf811decode_step.exit.i.i.i.i ]
  %.sroa.10.12379.i.i.i = phi i64 [ %.sroa.10.1.i.i.i, %.thread.i.i.i ], [ %.sroa.10.0.i.i.i, %bb.o ], [ %.sroa.10.12386.i.i.i, %bb.m ], [ %.sroa.10.12386.i.i.i, %_RNvNtCs2AhGS15tZfv_4bstr4utf811decode_step.exit.i.i.i.i ] ; 4 uses
  %.sroa.0.12578.i.i.i = phi ptr [ %.sroa.0.1.i.i.i, %.thread.i.i.i ], [ %.sroa.0.0.i.i.i, %bb.o ], [ %.sroa.0.12585.i.i.i, %bb.m ], [ %.sroa.0.12585.i.i.i, %_RNvNtCs2AhGS15tZfv_4bstr4utf811decode_step.exit.i.i.i.i ]
  %.sroa.6.1.i35.i.i.i = phi i64 [ 1, %.thread.i.i.i ], [ 1, %bb.o ], [ %..i.i.i.i.i, %bb.m ], [ %i.aj, %_RNvNtCs2AhGS15tZfv_4bstr4utf811decode_step.exit.i.i.i.i ] ; 3 uses
  %i.au = icmp ugt i64 %.sroa.6.1.i35.i.i.i, %.sroa.10.12379.i.i.i
  br i1 %i.au, label %bb.s, label %_RINvNtCs2AhGS15tZfv_4bstr4utf86decodeRShECsfF8zpZz1lvn_13yara_x_parser.exit.thread.thread.i.i.i, !prof !249

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
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.6.1.i35.i.i.i, i64 noundef %.sroa.10.12379.i.i.i, i64 noundef %.sroa.10.12379.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #21, !noalias !242
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
  %i.c = load i64, ptr %i.a, align 8, !noundef !7
  %i.d = load i64, ptr %i.b, align 8, !noundef !7 ; 2 uses
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
  %i.i = load ptr, ptr %1, align 8, !nonnull !7, !align !14, !noundef !7
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.h ; 4 uses
  %i.k = tail call noundef zeroext i1 @_RNvYNtNtCsfF8zpZz1lvn_13yara_x_parser3ast9RuleFlagsNtNtCs94G7V7CXYRk_8bitflags6traits5Flags8is_emptyB6_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.f)
  br i1 %i.k, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.e, %bb.h, %._crit_edge
  ret void

bb.d:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.b, align 8, !noundef !7
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.b, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.o = load i64, ptr %i.n, align 8, !noundef !7
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.backedge, label %bb.f

bb.e:                                             ; preds = %bb.b
  store ptr null, ptr %0, align 8
  br label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.val = load i8, ptr %i.q, align 8, !noundef !7 ; 4 uses
  %i.r = tail call noundef zeroext i1 @_RNvYNtNtCsfF8zpZz1lvn_13yara_x_parser3ast9RuleFlagsNtNtCs94G7V7CXYRk_8bitflags6traits5Flags8containsB6_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.g, i8 noundef %.val)
  br i1 %i.r, label %bb.g, label %.backedge

bb.g:                                             ; preds = %bb.f
  %i.s = tail call noundef zeroext i1 @_RNvYNtNtCsfF8zpZz1lvn_13yara_x_parser3ast9RuleFlagsNtNtCs94G7V7CXYRk_8bitflags6traits5Flags10intersectsB6_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.f, i8 noundef %.val)
  br i1 %i.s, label %bb.h, label %.backedge

.backedge:                                        ; preds = %bb.f, %bb.g, %bb.d
  %i.t = load i64, ptr %i.a, align 8, !noundef !7
  %i.u = load i64, ptr %i.b, align 8, !noundef !7 ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  br i1 %i.v, label %bb.b, label %._crit_edge

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  tail call void @_RNvYNtNtCsfF8zpZz1lvn_13yara_x_parser3ast9RuleFlagsNtNtCs94G7V7CXYRk_8bitflags6traits5Flags6removeB6_(ptr noalias nofree noundef nonnull dereferenceable(1) %i.f, i8 noundef %.val)
  %i.x = load ptr, ptr %i.j, align 8, !nonnull !7, !noundef !7
  %i.y = load i64, ptr %i.w, align 8, !noundef !7
  store ptr %i.x, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.y, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.val, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvXs_NtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfsNtB4_7DFSIterNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 50 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 32 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !7 ; 53 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs9dfs_enter.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i64 %i.c, -1                     ; 3 uses
  store i64 %i.e, ptr %i.b, align 8
  %i.f = load i64, ptr %i.a, align 8, !range !10, !noundef !7 ; 18 uses
  %i.g = icmp samesign ult i64 %i.e, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 31 uses
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !7, !noundef !7 ; 19 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346)
  store i64 1, ptr %i.k, align 8, !noalias !346
  store ptr %.sroa.420.0.copyload, ptr %.sroa.420.0..sroa_idx, align 8, !noalias !346
  store i64 %.sroa.521.0.copyload, ptr %.sroa.521.0..sroa_idx, align 8, !noalias !346
  store ptr %.sroa.622.0.copyload, ptr %.sroa.622.0..sroa_idx, align 8, !noalias !346
  store i64 %i.c, ptr %i.b, align 8, !alias.scope !346
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.q = load i32, ptr %.sroa.420.0.copyload, align 8, !range !349, !alias.scope !347, !noundef !7
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
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !347, !nonnull !7, !noundef !7 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !range !350, !noalias !347, !noundef !7
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  switch i64 %i.t, label %bb.s [
    i64 2, label %_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs9dfs_enter.exit
    i64 0, label %bb.v
  ]

bb.f:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.420.0.copyload, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !347, !nonnull !7, !noundef !7 ; 3 uses
  %i.x = load i32, ptr %i.w, align 8, !range !351, !noalias !347, !noundef !7
  %.not151.i = icmp eq i32 %i.x, -1
  br i1 %.not151.i, label %_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs9dfs_enter.exit, label %bb.x

bb.g:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.420.0.copyload, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !347, !nonnull !7, !noundef !7 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %i.ab = icmp eq i64 %i.c, %i.f
  br i1 %i.ab, label %bb.h, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBR_4ExprNtBP_10DFSContextEEE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #22, !noalias !353
  %.pre48.a = load ptr, ptr %i.h, align 8, !alias.scope !354
  %.pre49.a = load i64, ptr %i.a, align 8, !range !10, !alias.scope !355
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit.i

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit.i: ; preds = %bb.h, %bb.g
  %i.ac = phi i64 [ %.pre49.a, %bb.h ], [ %i.f, %bb.g ]
  %i.ad = phi ptr [ %.pre48.a, %bb.h ], [ %i.i, %bb.g ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %i.c ; 4 uses
  store i64 0, ptr %i.ae, align 8, !noalias !356
  %.sroa.4210.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.aa, ptr %.sroa.4210.0..sroa_idx.i, align 8, !noalias !356
  %.sroa.5211.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 8, ptr %.sroa.5211.0..sroa_idx.i, align 8, !noalias !356
  %.sroa.6212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr %.sroa.420.0.copyload, ptr %.sroa.6212.0..sroa_idx.i, align 8, !noalias !356
  %i.af = add nuw nsw i64 %i.c, 1                 ; 3 uses
  store i64 %i.af, ptr %i.b, align 8, !alias.scope !354
  tail call void @llvm.experimental.noalias.scope.decl(metadata !357)
  %i.ag = icmp eq i64 %i.af, %i.ac
  br i1 %i.ag, label %bb.i, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit157.i

bb.i:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit.i
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBR_4ExprNtBP_10DFSContextEEE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #22, !noalias !358
  %.pre50.a = load ptr, ptr %i.h, align 8, !alias.scope !355
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit157.i

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit157.i: ; preds = %bb.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit.i
  %i.ah = phi ptr [ %.pre50.a, %bb.i ], [ %i.ad, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit.i ]
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %i.af ; 4 uses
  store i64 0, ptr %i.ai, align 8, !noalias !357
  %.sroa.4214.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.z, ptr %.sroa.4214.0..sroa_idx.i, align 8, !noalias !357
  %.sroa.5215.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 3, ptr %.sroa.5215.0..sroa_idx.i, align 8, !noalias !357
  %.sroa.6216.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %.sroa.420.0.copyload, ptr %.sroa.6216.0..sroa_idx.i, align 8, !noalias !357
  %i.aj = add nuw nsw i64 %i.c, 2
  store i64 %i.aj, ptr %i.b, align 8, !alias.scope !355
  br label %_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs9dfs_enter.exit

bb.j:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.420.0.copyload, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !347, !nonnull !7, !noundef !7 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !noalias !347, !nonnull !7, !noundef !7 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !347, !noundef !7 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs9dfs_enter.exit, label %.lr.ph327.i

.lr.ph327.i:                                      ; preds = %bb.j
  %.idx333.i = shl nuw nsw i64 %i.ap, 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx333.i
  br label %bb.ad

bb.k:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.420.0.copyload, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !347, !nonnull !7, !noundef !7 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !noalias !347, !nonnull !7, !noundef !7 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !347, !noundef !7 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %._crit_edge.i, label %.lr.ph324.i

.lr.ph324.i:                                      ; preds = %bb.k
  %.idx332.i = shl nuw nsw i64 %i.ax, 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 %.idx332.i
  br label %bb.af

bb.l:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.420.0.copyload, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !347, !nonnull !7, !noundef !7 ; 7 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load i64, ptr %i.bc, align 8, !range !350, !noalias !347, !noundef !7
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 40 ; 3 uses
  switch i64 %i.bd, label %bb.av [
    i64 2, label %bb.au
    i64 0, label %bb.ay
  ]

bb.m:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.420.0.copyload, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !alias.scope !347, !nonnull !7, !noundef !7 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  %i.bi = icmp eq i64 %i.c, %i.f
  br i1 %i.bi, label %bb.n, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit158.i

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBR_4ExprNtBP_10DFSContextEEE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #22, !noalias !360
  %.pre33.a = load ptr, ptr %i.h, align 8, !alias.scope !361
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit158.i

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit158.i: ; preds = %bb.n, %bb.m
  %i.bj = phi ptr [ %.pre33.a, %bb.n ], [ %i.i, %bb.m ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.bj, i64 %i.c ; 4 uses
  store i64 0, ptr %i.bk, align 8, !noalias !362
  %.sroa.4270.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bh, ptr %.sroa.4270.0..sroa_idx.i, align 8, !noalias !362
  %.sroa.5271.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store i64 1, ptr %.sroa.5271.0..sroa_idx.i, align 8, !noalias !362
  %.sroa.6272.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store ptr %.sroa.420.0.copyload, ptr %.sroa.6272.0..sroa_idx.i, align 8, !noalias !362
  %i.bl = add nuw nsw i64 %i.c, 1                 ; 3 uses
  store i64 %i.bl, ptr %i.b, align 8, !alias.scope !361
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bn = load i32, ptr %i.bm, align 8, !range !363, !noundef !7
  %i.bo = icmp samesign ugt i32 %i.bn, 2
  br i1 %i.bo, label %bb.bf, label %_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs9dfs_enter.exit

bb.o:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.420.0.copyload, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !347, !nonnull !7, !noundef !7 ; 8 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  %i.bs = icmp eq i64 %i.c, %i.f
  br i1 %i.bs, label %bb.p, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit159.i

bb.p:                                             ; preds = %bb.o
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBR_4ExprNtBP_10DFSContextEEE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #22, !noalias !365
  %.pre30 = load ptr, ptr %i.h, align 8, !alias.scope !366
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit159.i

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit159.i: ; preds = %bb.p, %bb.o
  %i.bt = phi ptr [ %.pre30, %bb.p ], [ %i.i, %bb.o ] ; 5 uses
  %i.bu = getelementptr inbounds nuw [32 x i8], ptr %i.bt, i64 %i.c ; 4 uses
  store i64 0, ptr %i.bu, align 8, !noalias !367
  %.sroa.4278.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %i.br, ptr %.sroa.4278.0..sroa_idx.i, align 8, !noalias !367
  %.sroa.5279.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store i64 1, ptr %.sroa.5279.0..sroa_idx.i, align 8, !noalias !367
  %.sroa.6280.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  store ptr %.sroa.420.0.copyload, ptr %.sroa.6280.0..sroa_idx.i, align 8, !noalias !367
  %i.bv = add nuw nsw i64 %i.c, 1                 ; 8 uses
  store i64 %i.bv, ptr %i.b, align 8, !alias.scope !366
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 64 ; 3 uses
  %i.bx = load i32, ptr %i.bw, align 8, !range !368, !noundef !7 ; 2 uses
  %i.by = icmp samesign ugt i32 %i.bx, 49
  %i.bz = zext nneg i32 %i.bx to i64
  %i.ca = add nsw i64 %i.bz, -49
  %i.cb = select i1 %i.by, i64 %i.ca, i64 0
  switch i64 %i.cb, label %bb.d [
    i64 0, label %bb.bh
    i64 1, label %bb.bj
    i64 2, label %bb.bk
  ]

bb.q:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.420.0.copyload, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !347, !nonnull !7, !noundef !7 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !369)
  %i.cf = icmp eq i64 %i.c, %i.f
  br i1 %i.cf, label %bb.r, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit160.i

bb.r:                                             ; preds = %bb.q
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBR_4ExprNtBP_10DFSContextEEE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #22, !noalias !370
  %.pre = load ptr, ptr %i.h, align 8, !alias.scope !371
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit160.i

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit160.i: ; preds = %bb.r, %bb.q
  %i.cg = phi ptr [ %.pre, %bb.r ], [ %i.i, %bb.q ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [32 x i8], ptr %i.cg, i64 %i.c ; 4 uses
  store i64 0, ptr %i.ch, align 8, !noalias !372
  %.sroa.4302.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr %i.ce, ptr %.sroa.4302.0..sroa_idx.i, align 8, !noalias !372
  %.sroa.5303.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store i64 1, ptr %.sroa.5303.0..sroa_idx.i, align 8, !noalias !372
  %.sroa.6304.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  store ptr %.sroa.420.0.copyload, ptr %.sroa.6304.0..sroa_idx.i, align 8, !noalias !372
  %i.ci = add nuw nsw i64 %i.c, 1                 ; 2 uses
  store i64 %i.ci, ptr %i.b, align 8, !alias.scope !371
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !noundef !7 ; 2 uses
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs9dfs_enter.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit160.i
  %.idx.i = mul nuw nsw i64 %i.cm, 48
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.idx.i
  br label %.lr.ph.i

bb.s:                                             ; preds = %bb.e
  %i.cp = load ptr, ptr %i.u, align 8, !noalias !347, !nonnull !7, !noundef !7
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !373)
  %i.cr = icmp eq i64 %i.c, %i.f
  br i1 %i.cr, label %bb.t, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit161.i

bb.t:                                             ; preds = %bb.s
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBR_4ExprNtBP_10DFSContextEEE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #22, !noalias !374
  %.pre56.a = load ptr, ptr %i.h, align 8, !alias.scope !375
  %.pre57.a = load i64, ptr %i.a, align 8, !range !10, !alias.scope !376
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit161.i

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit161.i: ; preds = %bb.t, %bb.s
  %i.cs = phi i64 [ %.pre57.a, %bb.t ], [ %i.f, %bb.s ]
  %i.ct = phi ptr [ %.pre56.a, %bb.t ], [ %i.i, %bb.s ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [32 x i8], ptr %i.ct, i64 %i.c ; 4 uses
  store i64 0, ptr %i.cu, align 8, !noalias !377
  %.sroa.4202.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr %i.cq, ptr %.sroa.4202.0..sroa_idx.i, align 8, !noalias !377
  %.sroa.5203.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store i64 6, ptr %.sroa.5203.0..sroa_idx.i, align 8, !noalias !377
  %.sroa.6204.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  store ptr %.sroa.420.0.copyload, ptr %.sroa.6204.0..sroa_idx.i, align 8, !noalias !377
  %i.cv = add nuw nsw i64 %i.c, 1                 ; 3 uses
  store i64 %i.cv, ptr %i.b, align 8, !alias.scope !375
  %i.cw = load ptr, ptr %i.u, align 8, !nonnull !7, !noundef !7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  %i.cx = icmp eq i64 %i.cv, %i.cs
  br i1 %i.cx, label %bb.u, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit162.i

bb.u:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit161.i
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBR_4ExprNtBP_10DFSContextEEE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #22, !noalias !379
  %.pre58.a = load ptr, ptr %i.h, align 8, !alias.scope !376
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit162.i

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit162.i: ; preds = %bb.u, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit161.i
  %i.cy = phi ptr [ %.pre58.a, %bb.u ], [ %i.ct, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit161.i ]
  %i.cz = getelementptr inbounds nuw [32 x i8], ptr %i.cy, i64 %i.cv ; 4 uses
  store i64 0, ptr %i.cz, align 8, !noalias !378
  %.sroa.4206.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr %i.cw, ptr %.sroa.4206.0..sroa_idx.i, align 8, !noalias !378
  %.sroa.5207.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store i64 6, ptr %.sroa.5207.0..sroa_idx.i, align 8, !noalias !378
  %.sroa.6208.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  store ptr %.sroa.420.0.copyload, ptr %.sroa.6208.0..sroa_idx.i, align 8, !noalias !378
  %i.da = add nuw nsw i64 %i.c, 2
  store i64 %i.da, ptr %i.b, align 8, !alias.scope !376
  br label %_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs9dfs_enter.exit

bb.v:                                             ; preds = %bb.e
  %i.db = load ptr, ptr %i.u, align 8, !noalias !347, !nonnull !7, !noundef !7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  %i.dc = icmp eq i64 %i.c, %i.f
  br i1 %i.dc, label %bb.w, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit163.i

bb.w:                                             ; preds = %bb.v
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBR_4ExprNtBP_10DFSContextEEE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #22, !noalias !381
  %.pre55 = load ptr, ptr %i.h, align 8, !alias.scope !382
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit163.i

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit163.i: ; preds = %bb.w, %bb.v
  %i.dd = phi ptr [ %.pre55, %bb.w ], [ %i.i, %bb.v ]
  %i.de = getelementptr inbounds nuw [32 x i8], ptr %i.dd, i64 %i.c ; 4 uses
  store i64 0, ptr %i.de, align 8, !noalias !383
  %.sroa.4198.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store ptr %i.db, ptr %.sroa.4198.0..sroa_idx.i, align 8, !noalias !383
  %.sroa.5199.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store i64 6, ptr %.sroa.5199.0..sroa_idx.i, align 8, !noalias !383
  %.sroa.6200.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  store ptr %.sroa.420.0.copyload, ptr %.sroa.6200.0..sroa_idx.i, align 8, !noalias !383
  %i.df = add nuw nsw i64 %i.c, 1
  store i64 %i.df, ptr %i.b, align 8, !alias.scope !382
  br label %_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs9dfs_enter.exit

bb.x:                                             ; preds = %bb.f
  %i.dg = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  %i.dh = icmp eq i64 %i.c, %i.f
  br i1 %i.dh, label %bb.y, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit164.i

bb.y:                                             ; preds = %bb.x
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBR_4ExprNtBP_10DFSContextEEE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #22, !noalias !385
  %.pre52.a = load ptr, ptr %i.h, align 8, !alias.scope !386
  %.pre53 = load i64, ptr %i.a, align 8, !range !10, !alias.scope !387
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit164.i

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit164.i: ; preds = %bb.y, %bb.x
  %i.di = phi i64 [ %.pre53, %bb.y ], [ %i.f, %bb.x ]
  %i.dj = phi ptr [ %.pre52.a, %bb.y ], [ %i.i, %bb.x ] ; 2 uses
  %i.dk = getelementptr inbounds nuw [32 x i8], ptr %i.dj, i64 %i.c ; 4 uses
  store i64 0, ptr %i.dk, align 8, !noalias !388
  %.sroa.4.0..sroa_idx187.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store ptr %i.dg, ptr %.sroa.4.0..sroa_idx187.i, align 8, !noalias !388
  %.sroa.5.0..sroa_idx188.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store i64 5, ptr %.sroa.5.0..sroa_idx188.i, align 8, !noalias !388
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  store ptr %.sroa.420.0.copyload, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !388
  %i.dl = add nuw nsw i64 %i.c, 1                 ; 3 uses
  store i64 %i.dl, ptr %i.b, align 8, !alias.scope !386
  tail call void @llvm.experimental.noalias.scope.decl(metadata !389)
  %i.dm = icmp eq i64 %i.dl, %i.di
  br i1 %i.dm, label %bb.z, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit165.i

bb.z:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit164.i
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBR_4ExprNtBP_10DFSContextEEE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #22, !noalias !390
  %.pre54 = load ptr, ptr %i.h, align 8, !alias.scope !387
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit165.i

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit165.i: ; preds = %bb.z, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit164.i
  %i.dn = phi ptr [ %.pre54, %bb.z ], [ %i.dj, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit164.i ]
  %i.do = getelementptr inbounds nuw [32 x i8], ptr %i.dn, i64 %i.dl ; 4 uses
  store i64 0, ptr %i.do, align 8, !noalias !389
  %.sroa.4190.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store ptr %i.w, ptr %.sroa.4190.0..sroa_idx.i, align 8, !noalias !389
  %.sroa.5191.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store i64 5, ptr %.sroa.5191.0..sroa_idx.i, align 8, !noalias !389
  %.sroa.6192.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  store ptr %.sroa.420.0.copyload, ptr %.sroa.6192.0..sroa_idx.i, align 8, !noalias !389
  %i.dp = add nuw nsw i64 %i.c, 2
  store i64 %i.dp, ptr %i.b, align 8, !alias.scope !387
  br label %_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs9dfs_enter.exit

bb.aa:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit
  %.sroa.04.0.i = getelementptr inbounds nuw i8, ptr %.sroa.420.0.copyload, i64 8
  %i.dq = load ptr, ptr %.sroa.04.0.i, align 8, !alias.scope !347, !nonnull !7, !noundef !7 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 8, !range !351, !noalias !347, !noundef !7
  %.not150.i = icmp eq i32 %i.dr, -1
  br i1 %.not150.i, label %_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs9dfs_enter.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  %i.ds = icmp eq i64 %i.c, %i.f
  br i1 %i.ds, label %bb.ac, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit166.i

bb.ac:                                            ; preds = %bb.ab
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBR_4ExprNtBP_10DFSContextEEE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #22, !noalias !392
  %.pre51.a = load ptr, ptr %i.h, align 8, !alias.scope !393
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit166.i

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit166.i: ; preds = %bb.ac, %bb.ab
  %i.dt = phi ptr [ %.pre51.a, %bb.ac ], [ %i.i, %bb.ab ]
  %i.du = getelementptr inbounds nuw [32 x i8], ptr %i.dt, i64 %i.c ; 4 uses
  store i64 0, ptr %i.du, align 8, !noalias !394
  %.sroa.4194.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store ptr %i.dq, ptr %.sroa.4194.0..sroa_idx.i, align 8, !noalias !394
  %.sroa.5195.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store i64 8, ptr %.sroa.5195.0..sroa_idx.i, align 8, !noalias !394
  %.sroa.6196.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  store ptr %.sroa.420.0.copyload, ptr %.sroa.6196.0..sroa_idx.i, align 8, !noalias !394
  %i.dv = add nuw nsw i64 %i.c, 1
  store i64 %i.dv, ptr %i.b, align 8, !alias.scope !393
  br label %_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs9dfs_enter.exit

bb.ad:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit167.i, %.lr.ph327.i
  %i.dw = phi ptr [ %i.i, %.lr.ph327.i ], [ %i.eb, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit167.i ]
  %i.dx = phi i64 [ %i.c, %.lr.ph327.i ], [ %i.ed, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit167.i ] ; 3 uses
  %.sroa.424.0325.i = phi ptr [ %i.ar, %.lr.ph327.i ], [ %i.dy, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit167.i ]
  %i.dy = getelementptr inbounds i8, ptr %.sroa.424.0325.i, i64 -16 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  %i.dz = load i64, ptr %i.a, align 8, !range !10, !alias.scope !396, !noundef !7
  %i.ea = icmp eq i64 %i.dx, %i.dz
  br i1 %i.ea, label %bb.ae, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit167.i

bb.ae:                                            ; preds = %bb.ad
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBR_4ExprNtBP_10DFSContextEEE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #22, !noalias !397
  %.pre47.a = load ptr, ptr %i.h, align 8, !alias.scope !396
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit167.i

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit167.i: ; preds = %bb.ae, %bb.ad
  %i.eb = phi ptr [ %.pre47.a, %bb.ae ], [ %i.dw, %bb.ad ] ; 2 uses
  %i.ec = getelementptr inbounds nuw [32 x i8], ptr %i.eb, i64 %i.dx ; 4 uses
  store i64 0, ptr %i.ec, align 8, !noalias !395
  %.sroa.4218.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store ptr %i.dy, ptr %.sroa.4218.0..sroa_idx.i, align 8, !noalias !395
  %.sroa.5219.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store i64 3, ptr %.sroa.5219.0..sroa_idx.i, align 8, !noalias !395
  %.sroa.6220.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  store ptr %.sroa.420.0.copyload, ptr %.sroa.6220.0..sroa_idx.i, align 8, !noalias !398
  %i.ed = add i64 %i.dx, 1                        ; 2 uses
  store i64 %i.ed, ptr %i.b, align 8, !alias.scope !396
  %i.ee = icmp eq ptr %i.an, %i.dy
  br i1 %i.ee, label %_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs9dfs_enter.exit, label %bb.ad

bb.af:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit168.i, %.lr.ph324.i
  %i.ef = phi ptr [ %i.i, %.lr.ph324.i ], [ %i.ek, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit168.i ]
  %i.eg = phi i64 [ %i.c, %.lr.ph324.i ], [ %i.em, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit168.i ] ; 3 uses
  %.sroa.432.0323.i = phi ptr [ %i.az, %.lr.ph324.i ], [ %i.eh, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit168.i ]
  %i.eh = getelementptr inbounds i8, ptr %.sroa.432.0323.i, i64 -16 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !399)
  %i.ei = load i64, ptr %i.a, align 8, !range !10, !alias.scope !400, !noundef !7
  %i.ej = icmp eq i64 %i.eg, %i.ei
  br i1 %i.ej, label %bb.ag, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit168.i

bb.ag:                                            ; preds = %bb.af
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBR_4ExprNtBP_10DFSContextEEE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #22, !noalias !401
  %.pre46.a = load ptr, ptr %i.h, align 8, !alias.scope !400
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit168.i

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit168.i: ; preds = %bb.ag, %bb.af
  %i.ek = phi ptr [ %.pre46.a, %bb.ag ], [ %i.ef, %bb.af ] ; 3 uses
  %i.el = getelementptr inbounds nuw [32 x i8], ptr %i.ek, i64 %i.eg ; 4 uses
  store i64 0, ptr %i.el, align 8, !noalias !399
  %.sroa.4222.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store ptr %i.eh, ptr %.sroa.4222.0..sroa_idx.i, align 8, !noalias !399
  %.sroa.5223.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store i64 9, ptr %.sroa.5223.0..sroa_idx.i, align 8, !noalias !399
  %.sroa.6224.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  store ptr %.sroa.420.0.copyload, ptr %.sroa.6224.0..sroa_idx.i, align 8, !noalias !402
  %i.em = add i64 %i.eg, 1                        ; 3 uses
  store i64 %i.em, ptr %i.b, align 8, !alias.scope !400
  %i.en = icmp eq ptr %i.av, %i.eh
  br i1 %i.en, label %._crit_edge.i, label %bb.af

._crit_edge.i:                                    ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit168.i, %bb.k
  %1 = phi ptr [ %i.i, %bb.k ], [ %i.ek, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit168.i ]
  %i.eo = phi i64 [ %i.c, %bb.k ], [ %i.em, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit168.i ] ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.at, i64 24 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 8, !range !351, !noundef !7
  %.not149.i = icmp eq i32 %i.eq, -1
  br i1 %.not149.i, label %_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs9dfs_enter.exit, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  %i.er = load i64, ptr %i.a, align 8, !range !10, !alias.scope !404, !noundef !7
  %i.es = icmp eq i64 %i.eo, %i.er
  br i1 %i.es, label %bb.ai, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit169.i

bb.ai:                                            ; preds = %bb.ah
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBR_4ExprNtBP_10DFSContextEEE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #22, !noalias !405
  %.pre51 = load ptr, ptr %i.h, align 8, !alias.scope !404
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit169.i

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit169.i: ; preds = %bb.ai, %bb.ah
  %2 = phi ptr [ %.pre51, %bb.ai ], [ %1, %bb.ah ]
  %i.et = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.eo ; 4 uses
  store i64 0, ptr %i.et, align 8, !noalias !403
  %.sroa.4226.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store ptr %i.ep, ptr %.sroa.4226.0..sroa_idx.i, align 8, !noalias !403
  %.sroa.5227.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store i64 10, ptr %.sroa.5227.0..sroa_idx.i, align 8, !noalias !403
  %.sroa.6228.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  store ptr %.sroa.420.0.copyload, ptr %.sroa.6228.0..sroa_idx.i, align 8, !noalias !403
  %i.eu = add i64 %i.eo, 1
  store i64 %i.eu, ptr %i.b, align 8, !alias.scope !404
  br label %_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs9dfs_enter.exit

bb.aj:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit
  %.sroa.042.0.i = getelementptr inbounds nuw i8, ptr %.sroa.420.0.copyload, i64 8
  %i.ev = load ptr, ptr %.sroa.042.0.i, align 8, !alias.scope !347, !nonnull !7, !noundef !7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !406)
  %i.ew = icmp eq i64 %i.c, %i.f
  br i1 %i.ew, label %bb.ak, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit170.i

bb.ak:                                            ; preds = %bb.aj
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBR_4ExprNtBP_10DFSContextEEE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #22, !noalias !407
  %.pre45.a = load ptr, ptr %i.h, align 8, !alias.scope !408
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit170.i

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit170.i: ; preds = %bb.ak, %bb.aj
  %i.ex = phi ptr [ %.pre45.a, %bb.ak ], [ %i.i, %bb.aj ]
  %i.ey = getelementptr inbounds nuw [32 x i8], ptr %i.ex, i64 %i.c ; 4 uses
  store i64 0, ptr %i.ey, align 8, !noalias !409
  %.sroa.4230.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store ptr %i.ev, ptr %.sroa.4230.0..sroa_idx.i, align 8, !noalias !409
  %.sroa.5231.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store i64 3, ptr %.sroa.5231.0..sroa_idx.i, align 8, !noalias !409
  %.sroa.6232.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  store ptr %.sroa.420.0.copyload, ptr %.sroa.6232.0..sroa_idx.i, align 8, !noalias !409
  %i.ez = add nuw nsw i64 %i.c, 1
  store i64 %i.ez, ptr %i.b, align 8, !alias.scope !408
  br label %_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs9dfs_enter.exit

bb.al:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit
  %.sroa.046.0.i = getelementptr inbounds nuw i8, ptr %.sroa.420.0.copyload, i64 8
  %i.fa = load ptr, ptr %.sroa.046.0.i, align 8, !alias.scope !347, !nonnull !7, !noundef !7 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !noalias !347, !nonnull !7, !noundef !7 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fe = load i64, ptr %i.fd, align 8, !noalias !347, !noundef !7 ; 2 uses
  %i.ff = icmp eq i64 %i.fe, 0
  br i1 %i.ff, label %_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs9dfs_enter.exit, label %.lr.ph322.i

.lr.ph322.i:                                      ; preds = %bb.al
  %.idx331.i = shl nuw nsw i64 %i.fe, 4
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 %.idx331.i
  br label %bb.am

bb.am:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit171.i, %.lr.ph322.i
  %i.fh = phi ptr [ %i.i, %.lr.ph322.i ], [ %i.fm, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit171.i ]
  %i.fi = phi i64 [ %i.c, %.lr.ph322.i ], [ %i.fo, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit171.i ] ; 3 uses
  %.sroa.448.0321.i = phi ptr [ %i.fg, %.lr.ph322.i ], [ %i.fj, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit171.i ]
  %i.fj = getelementptr inbounds i8, ptr %.sroa.448.0321.i, i64 -16 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !410)
  %i.fk = load i64, ptr %i.a, align 8, !range !10, !alias.scope !411, !noundef !7
  %i.fl = icmp eq i64 %i.fi, %i.fk
  br i1 %i.fl, label %bb.an, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit171.i

bb.an:                                            ; preds = %bb.am
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBR_4ExprNtBP_10DFSContextEEE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #22, !noalias !412
  %.pre44.a = load ptr, ptr %i.h, align 8, !alias.scope !411
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit171.i

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit171.i: ; preds = %bb.an, %bb.am
  %i.fm = phi ptr [ %.pre44.a, %bb.an ], [ %i.fh, %bb.am ] ; 2 uses
  %i.fn = getelementptr inbounds nuw [32 x i8], ptr %i.fm, i64 %i.fi ; 4 uses
  store i64 0, ptr %i.fn, align 8, !noalias !410
  %.sroa.4234.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  store ptr %i.fj, ptr %.sroa.4234.0..sroa_idx.i, align 8, !noalias !410
  %.sroa.5235.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  store i64 3, ptr %.sroa.5235.0..sroa_idx.i, align 8, !noalias !410
  %.sroa.6236.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  store ptr %.sroa.420.0.copyload, ptr %.sroa.6236.0..sroa_idx.i, align 8, !noalias !413
  %i.fo = add i64 %i.fi, 1                        ; 2 uses
  store i64 %i.fo, ptr %i.b, align 8, !alias.scope !411
  %i.fp = icmp eq ptr %i.fc, %i.fj
  br i1 %i.fp, label %_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs9dfs_enter.exit, label %bb.am

bb.ao:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit
  %.sroa.055.0.i = getelementptr inbounds nuw i8, ptr %.sroa.420.0.copyload, i64 8
  %i.fq = load ptr, ptr %.sroa.055.0.i, align 8, !alias.scope !347, !nonnull !7, !noundef !7 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !noalias !347, !nonnull !7, !noundef !7 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fu = load i64, ptr %i.ft, align 8, !noalias !347, !noundef !7 ; 2 uses
  %i.fv = icmp eq i64 %i.fu, 0
  br i1 %i.fv, label %_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs9dfs_enter.exit, label %.lr.ph320.i

.lr.ph320.i:                                      ; preds = %bb.ao
  %.idx330.i = shl nuw nsw i64 %i.fu, 4
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.idx330.i
  br label %bb.ap

bb.ap:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit172.i, %.lr.ph320.i
  %i.fx = phi ptr [ %i.i, %.lr.ph320.i ], [ %i.gc, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit172.i ]
  %i.fy = phi i64 [ %i.c, %.lr.ph320.i ], [ %i.ge, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit172.i ] ; 3 uses
  %.sroa.457.0319.i = phi ptr [ %i.fw, %.lr.ph320.i ], [ %i.fz, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit172.i ]
  %i.fz = getelementptr inbounds i8, ptr %.sroa.457.0319.i, i64 -16 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !414)
  %i.ga = load i64, ptr %i.a, align 8, !range !10, !alias.scope !415, !noundef !7
  %i.gb = icmp eq i64 %i.fy, %i.ga
  br i1 %i.gb, label %bb.aq, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit172.i

bb.aq:                                            ; preds = %bb.ap
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBR_4ExprNtBP_10DFSContextEEE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #22, !noalias !416
  %.pre43.a = load ptr, ptr %i.h, align 8, !alias.scope !415
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit172.i

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit172.i: ; preds = %bb.aq, %bb.ap
  %i.gc = phi ptr [ %.pre43.a, %bb.aq ], [ %i.fx, %bb.ap ] ; 2 uses
  %i.gd = getelementptr inbounds nuw [32 x i8], ptr %i.gc, i64 %i.fy ; 4 uses
  store i64 0, ptr %i.gd, align 8, !noalias !414
  %.sroa.4238.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store ptr %i.fz, ptr %.sroa.4238.0..sroa_idx.i, align 8, !noalias !414
  %.sroa.5239.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  store i64 3, ptr %.sroa.5239.0..sroa_idx.i, align 8, !noalias !414
  %.sroa.6240.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  store ptr %.sroa.420.0.copyload, ptr %.sroa.6240.0..sroa_idx.i, align 8, !noalias !417
  %i.ge = add i64 %i.fy, 1                        ; 2 uses
  store i64 %i.ge, ptr %i.b, align 8, !alias.scope !415
  %i.gf = icmp eq ptr %i.fs, %i.fz
  br i1 %i.gf, label %_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs9dfs_enter.exit, label %bb.ap

bb.ar:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit
  %.sroa.064.0.i = getelementptr inbounds nuw i8, ptr %.sroa.420.0.copyload, i64 8
  %i.gg = load ptr, ptr %.sroa.064.0.i, align 8, !alias.scope !347, !nonnull !7, !noundef !7 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !418)
  %i.gi = icmp eq i64 %i.c, %i.f
  br i1 %i.gi, label %bb.as, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit173.i

bb.as:                                            ; preds = %bb.ar
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBR_4ExprNtBP_10DFSContextEEE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #22, !noalias !419
  %.pre40.a = load ptr, ptr %i.h, align 8, !alias.scope !420
  %.pre41.a = load i64, ptr %i.a, align 8, !range !10, !alias.scope !421
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit173.i

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit173.i: ; preds = %bb.as, %bb.ar
  %i.gj = phi i64 [ %.pre41.a, %bb.as ], [ %i.f, %bb.ar ]
  %i.gk = phi ptr [ %.pre40.a, %bb.as ], [ %i.i, %bb.ar ] ; 2 uses
  %i.gl = getelementptr inbounds nuw [32 x i8], ptr %i.gk, i64 %i.c ; 4 uses
  store i64 0, ptr %i.gl, align 8, !noalias !422
  %.sroa.4242.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  store ptr %i.gh, ptr %.sroa.4242.0..sroa_idx.i, align 8, !noalias !422
  %.sroa.5243.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  store i64 3, ptr %.sroa.5243.0..sroa_idx.i, align 8, !noalias !422
  %.sroa.6244.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  store ptr %.sroa.420.0.copyload, ptr %.sroa.6244.0..sroa_idx.i, align 8, !noalias !422
  %i.gm = add nuw nsw i64 %i.c, 1                 ; 3 uses
  store i64 %i.gm, ptr %i.b, align 8, !alias.scope !420
  tail call void @llvm.experimental.noalias.scope.decl(metadata !423)
  %i.gn = icmp eq i64 %i.gm, %i.gj
  br i1 %i.gn, label %bb.at, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit174.i

bb.at:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit173.i
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBR_4ExprNtBP_10DFSContextEEE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #22, !noalias !424
  %.pre42 = load ptr, ptr %i.h, align 8, !alias.scope !421
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit174.i

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit174.i: ; preds = %bb.at, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit173.i
  %i.go = phi ptr [ %.pre42, %bb.at ], [ %i.gk, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit173.i ]
  %i.gp = getelementptr inbounds nuw [32 x i8], ptr %i.go, i64 %i.gm ; 4 uses
  store i64 0, ptr %i.gp, align 8, !noalias !423
  %.sroa.4246.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  store ptr %i.gg, ptr %.sroa.4246.0..sroa_idx.i, align 8, !noalias !423
  %.sroa.5247.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  store i64 3, ptr %.sroa.5247.0..sroa_idx.i, align 8, !noalias !423
  %.sroa.6248.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  store ptr %.sroa.420.0.copyload, ptr %.sroa.6248.0..sroa_idx.i, align 8, !noalias !423
  %i.gq = add nuw nsw i64 %i.c, 2
  store i64 %i.gq, ptr %i.b, align 8, !alias.scope !421
  br label %_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs9dfs_enter.exit

.sink.split:                                      ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit176.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit177.i
  %.sink86 = phi ptr [ %i.hi, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit177.i ], [ %i.he, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit176.i ] ; 3 uses
  %.sink85 = phi ptr [ %i.hf, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit177.i ], [ %i.hb, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit176.i ]
  %.sink83 = phi i64 [ 1, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit177.i ], [ 2, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit176.i ]
  %.ph = phi ptr [ %i.hh, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit177.i ], [ %i.hd, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit176.i ]
  %.sroa.4250.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink86, i64 8
  store ptr %.sink85, ptr %.sroa.4250.0..sroa_idx.i, align 8, !noalias !7
  %.sroa.5251.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink86, i64 16
  store i64 6, ptr %.sroa.5251.0..sroa_idx.i, align 8, !noalias !7
  %.sroa.6252.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink86, i64 24
  store ptr %.sroa.420.0.copyload, ptr %.sroa.6252.0..sroa_idx.i, align 8, !noalias !7
  %i.gr = add nuw nsw i64 %i.c, %.sink83          ; 2 uses
  store i64 %i.gr, ptr %i.b, align 8, !alias.scope !348
  br label %bb.au

bb.au:                                            ; preds = %.sink.split, %bb.l
  %3 = phi ptr [ %i.i, %bb.l ], [ %.ph, %.sink.split ]
  %.pre.i = phi i64 [ %i.c, %bb.l ], [ %i.gr, %.sink.split ] ; 3 uses
  %i.gs = load i64, ptr %i.bb, align 8, !range !11, !noundef !7
  %i.gt = trunc nuw i64 %i.gs to i1
  br i1 %i.gt, label %bb.ba, label %.loopexit311.i

bb.av:                                            ; preds = %bb.l
  %i.gu = load ptr, ptr %i.be, align 8, !noalias !347, !nonnull !7, !noundef !7
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  %i.gw = icmp eq i64 %i.c, %i.f
  br i1 %i.gw, label %bb.aw, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit175.i

bb.aw:                                            ; preds = %bb.av
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBR_4ExprNtBP_10DFSContextEEE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #22, !noalias !426
  %.pre36 = load ptr, ptr %i.h, align 8, !alias.scope !427
  %.pre37.a = load i64, ptr %i.a, align 8, !range !10, !alias.scope !428
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit175.i

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit175.i: ; preds = %bb.aw, %bb.av
  %i.gx = phi i64 [ %.pre37.a, %bb.aw ], [ %i.f, %bb.av ]
  %i.gy = phi ptr [ %.pre36, %bb.aw ], [ %i.i, %bb.av ] ; 2 uses
  %i.gz = getelementptr inbounds nuw [32 x i8], ptr %i.gy, i64 %i.c ; 4 uses
  store i64 0, ptr %i.gz, align 8, !noalias !429
  %.sroa.4254.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store ptr %i.gv, ptr %.sroa.4254.0..sroa_idx.i, align 8, !noalias !429
  %.sroa.5255.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  store i64 6, ptr %.sroa.5255.0..sroa_idx.i, align 8, !noalias !429
  %.sroa.6256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  store ptr %.sroa.420.0.copyload, ptr %.sroa.6256.0..sroa_idx.i, align 8, !noalias !429
  %i.ha = add nuw nsw i64 %i.c, 1                 ; 3 uses
  store i64 %i.ha, ptr %i.b, align 8, !alias.scope !427
  %i.hb = load ptr, ptr %i.be, align 8, !nonnull !7, !noundef !7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !430)
  %i.hc = icmp eq i64 %i.ha, %i.gx
  br i1 %i.hc, label %bb.ax, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit176.i

bb.ax:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit175.i
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBR_4ExprNtBP_10DFSContextEEE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #22, !noalias !431
  %.pre38.a = load ptr, ptr %i.h, align 8, !alias.scope !428
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit176.i

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit176.i: ; preds = %bb.ax, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit175.i
  %i.hd = phi ptr [ %.pre38.a, %bb.ax ], [ %i.gy, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit175.i ] ; 2 uses
  %i.he = getelementptr inbounds nuw [32 x i8], ptr %i.hd, i64 %i.ha ; 2 uses
  store i64 0, ptr %i.he, align 8, !noalias !430
  br label %.sink.split

bb.ay:                                            ; preds = %bb.l
  %i.hf = load ptr, ptr %i.be, align 8, !noalias !347, !nonnull !7, !noundef !7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !432)
  %i.hg = icmp eq i64 %i.c, %i.f
  br i1 %i.hg, label %bb.az, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit177.i

bb.az:                                            ; preds = %bb.ay
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBR_4ExprNtBP_10DFSContextEEE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #22, !noalias !433
  %.pre35.a = load ptr, ptr %i.h, align 8, !alias.scope !434
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit177.i

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit177.i: ; preds = %bb.az, %bb.ay
  %i.hh = phi ptr [ %.pre35.a, %bb.az ], [ %i.i, %bb.ay ] ; 2 uses
  %i.hi = getelementptr inbounds nuw [32 x i8], ptr %i.hh, i64 %i.c ; 2 uses
  store i64 0, ptr %i.hi, align 8, !noalias !435
  br label %.sink.split

bb.ba:                                            ; preds = %bb.au
  %i.hj = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.hk = load ptr, ptr %i.hj, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.hm = load i64, ptr %i.hl, align 8, !noundef !7 ; 2 uses
  %i.hn = icmp eq i64 %i.hm, 0
  br i1 %i.hn, label %.loopexit311.i, label %.lr.ph318.i

.lr.ph318.i:                                      ; preds = %bb.ba
  %.idx329.i = shl nuw nsw i64 %i.hm, 4
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hk, i64 %.idx329.i
  br label %bb.bb

.loopexit311.i:                                   ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit178.i, %bb.ba, %bb.au
  %i.hp = phi i64 [ %.pre.i, %bb.au ], [ %.pre.i, %bb.ba ], [ %i.hy, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit178.i ] ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.hr = load i32, ptr %i.hq, align 8, !range !363, !noundef !7
  %i.hs = icmp samesign ugt i32 %i.hr, 2
  br i1 %i.hs, label %bb.bd, label %_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs9dfs_enter.exit

bb.bb:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit178.i, %.lr.ph318.i
  %4 = phi ptr [ %3, %.lr.ph318.i ], [ %5, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit178.i ]
  %i.ht = phi i64 [ %.pre.i, %.lr.ph318.i ], [ %i.hy, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit178.i ] ; 3 uses
  %.sroa.482.0317.i = phi ptr [ %i.ho, %.lr.ph318.i ], [ %i.hu, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit178.i ]
  %i.hu = getelementptr inbounds i8, ptr %.sroa.482.0317.i, i64 -16 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  %i.hv = load i64, ptr %i.a, align 8, !range !10, !alias.scope !437, !noundef !7
  %i.hw = icmp eq i64 %i.ht, %i.hv
  br i1 %i.hw, label %bb.bc, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit178.i

bb.bc:                                            ; preds = %bb.bb
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBR_4ExprNtBP_10DFSContextEEE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #22, !noalias !438
  %.pre43 = load ptr, ptr %i.h, align 8, !alias.scope !437
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit178.i

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit178.i: ; preds = %bb.bc, %bb.bb
  %5 = phi ptr [ %.pre43, %bb.bc ], [ %4, %bb.bb ] ; 2 uses
  %i.hx = getelementptr inbounds nuw [32 x i8], ptr %5, i64 %i.ht ; 4 uses
  store i64 0, ptr %i.hx, align 8, !noalias !436
  %.sroa.4262.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  store ptr %i.hu, ptr %.sroa.4262.0..sroa_idx.i, align 8, !noalias !436
  %.sroa.5263.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  store i64 7, ptr %.sroa.5263.0..sroa_idx.i, align 8, !noalias !436
  %.sroa.6264.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hx, i64 24
  store ptr %.sroa.420.0.copyload, ptr %.sroa.6264.0..sroa_idx.i, align 8, !noalias !436
  %i.hy = add i64 %i.ht, 1                        ; 3 uses
  store i64 %i.hy, ptr %i.b, align 8, !alias.scope !437
  %i.hz = icmp eq ptr %i.hk, %i.hu
  br i1 %i.hz, label %.loopexit311.i, label %bb.bb

bb.bd:                                            ; preds = %.loopexit311.i
  %.sroa.089.0.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !439)
  %i.ia = load i64, ptr %i.a, align 8, !range !10, !alias.scope !440, !noundef !7
  %i.ib = icmp eq i64 %i.hp, %i.ia
  br i1 %i.ib, label %bb.be, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit179.i

bb.be:                                            ; preds = %bb.bd
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBR_4ExprNtBP_10DFSContextEEE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #22, !noalias !441
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit179.i

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit179.i: ; preds = %bb.be, %bb.bd
  %i.ic = load ptr, ptr %i.h, align 8, !alias.scope !440, !nonnull !7, !noundef !7
  %i.id = getelementptr inbounds nuw [32 x i8], ptr %i.ic, i64 %i.hp ; 4 uses
  store i64 0, ptr %i.id, align 8, !noalias !439
  %.sroa.4266.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  store ptr %.sroa.089.0.i, ptr %.sroa.4266.0..sroa_idx.i, align 8, !noalias !439
  %.sroa.5267.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  store i64 2, ptr %.sroa.5267.0..sroa_idx.i, align 8, !noalias !439
  %.sroa.6268.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.id, i64 24
  store ptr %.sroa.420.0.copyload, ptr %.sroa.6268.0..sroa_idx.i, align 8, !noalias !439
  %i.ie = add i64 %i.hp, 1
  store i64 %i.ie, ptr %i.b, align 8, !alias.scope !440
  br label %_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs9dfs_enter.exit

bb.bf:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit158.i
  %.sroa.096.0.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !442)
  %i.if = load i64, ptr %i.a, align 8, !range !10, !alias.scope !443, !noundef !7
  %i.ig = icmp eq i64 %i.bl, %i.if
  br i1 %i.ig, label %bb.bg, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit180.i

bb.bg:                                            ; preds = %bb.bf
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBR_4ExprNtBP_10DFSContextEEE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #22, !noalias !444
  %.pre34.a = load ptr, ptr %i.h, align 8, !alias.scope !443
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit180.i

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit180.i: ; preds = %bb.bg, %bb.bf
  %i.ih = phi ptr [ %.pre34.a, %bb.bg ], [ %i.bj, %bb.bf ]
  %i.ii = getelementptr inbounds nuw [32 x i8], ptr %i.ih, i64 %i.bl ; 4 uses
  store i64 0, ptr %i.ii, align 8, !noalias !442
  %.sroa.4274.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  store ptr %.sroa.096.0.i, ptr %.sroa.4274.0..sroa_idx.i, align 8, !noalias !442
  %.sroa.5275.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  store i64 2, ptr %.sroa.5275.0..sroa_idx.i, align 8, !noalias !442
  %.sroa.6276.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ii, i64 24
  store ptr %.sroa.420.0.copyload, ptr %.sroa.6276.0..sroa_idx.i, align 8, !noalias !442
  %i.ij = add nuw nsw i64 %i.c, 2
  store i64 %i.ij, ptr %i.b, align 8, !alias.scope !443
  br label %_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs9dfs_enter.exit

bb.bh:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit159.i
  %i.ik = getelementptr inbounds nuw i8, ptr %i.bq, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !445)
  %i.il = load i64, ptr %i.a, align 8, !range !10, !alias.scope !446, !noundef !7 ; 2 uses
  %i.im = icmp eq i64 %i.bv, %i.il
  br i1 %i.im, label %bb.bi, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit181.i

bb.bi:                                            ; preds = %bb.bh
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBR_4ExprNtBP_10DFSContextEEE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #22, !noalias !447
  %.pre32 = load ptr, ptr %i.h, align 8, !alias.scope !446
  %.pre33 = load i64, ptr %i.a, align 8, !range !10, !alias.scope !448
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit181.i

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit181.i: ; preds = %bb.bi, %bb.bh
  %6 = phi i64 [ %.pre33, %bb.bi ], [ %i.il, %bb.bh ] ; 2 uses
  %i.in = phi ptr [ %.pre32, %bb.bi ], [ %i.bt, %bb.bh ] ; 2 uses
  %i.io = getelementptr inbounds nuw [32 x i8], ptr %i.in, i64 %i.bv ; 4 uses
  store i64 0, ptr %i.io, align 8, !noalias !445
  %.sroa.4282.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  store ptr %i.ik, ptr %.sroa.4282.0..sroa_idx.i, align 8, !noalias !445
  %.sroa.5283.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  store i64 7, ptr %.sroa.5283.0..sroa_idx.i, align 8, !noalias !445
  %.sroa.6284.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.io, i64 24
  store ptr %.sroa.420.0.copyload, ptr %.sroa.6284.0..sroa_idx.i, align 8, !noalias !445
  %i.ip = add nuw nsw i64 %i.c, 2                 ; 3 uses
  store i64 %i.ip, ptr %i.b, align 8, !alias.scope !446
  %i.iq = icmp eq i64 %i.ip, %6
  br i1 %i.iq, label %.loopexit312.sink.split.sink.split.i, label %.loopexit312.sink.split.i

bb.bj:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit159.i
  %i.ir = getelementptr inbounds nuw i8, ptr %i.bq, i64 80
  %i.is = load ptr, ptr %i.ir, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.bq, i64 88
  %i.iu = load i64, ptr %i.it, align 8, !noundef !7 ; 2 uses
  %i.iv = icmp eq i64 %i.iu, 0
  br i1 %i.iv, label %.loopexit312.i, label %.lr.ph316.preheader.i

.lr.ph316.preheader.i:                            ; preds = %bb.bj
  %.idx328.i = shl nuw nsw i64 %i.iu, 4
  %i.iw = getelementptr inbounds nuw i8, ptr %i.is, i64 %.idx328.i
  br label %.lr.ph316.i

bb.bk:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit159.i
  %i.ix = getelementptr inbounds nuw i8, ptr %i.bq, i64 72 ; 2 uses
  %i.iy = load i64, ptr %i.a, align 8, !range !10, !alias.scope !449, !noundef !7
  %i.iz = icmp eq i64 %i.bv, %i.iy
  br i1 %i.iz, label %.loopexit312.sink.split.sink.split.i, label %.loopexit312.sink.split.i

.loopexit312.sink.split.sink.split.i:             ; preds = %bb.bk, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit181.i
  %.sink362.ph.i = phi i64 [ %6, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit181.i ], [ %i.bv, %bb.bk ]
  %.sink358.ph.i = phi ptr [ %i.bw, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit181.i ], [ %i.ix, %bb.bk ]
  %.sink356.ph.i = phi i64 [ 3, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit181.i ], [ 2, %bb.bk ]
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBR_4ExprNtBP_10DFSContextEEE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #22, !noalias !7
  %.pre34 = load ptr, ptr %i.h, align 8, !alias.scope !348
  br label %.loopexit312.sink.split.i

.loopexit312.sink.split.i:                        ; preds = %.loopexit312.sink.split.sink.split.i, %bb.bk, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit181.i
  %7 = phi ptr [ %i.bt, %bb.bk ], [ %i.in, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit181.i ], [ %.pre34, %.loopexit312.sink.split.sink.split.i ] ; 2 uses
  %.sink362.i = phi i64 [ %i.bv, %bb.bk ], [ %i.ip, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit181.i ], [ %.sink362.ph.i, %.loopexit312.sink.split.sink.split.i ]
  %.sink358.i = phi ptr [ %i.ix, %bb.bk ], [ %i.bw, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit181.i ], [ %.sink358.ph.i, %.loopexit312.sink.split.sink.split.i ]
  %.sink356.i = phi i64 [ 2, %bb.bk ], [ 3, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit181.i ], [ %.sink356.ph.i, %.loopexit312.sink.split.sink.split.i ]
  %i.ja = getelementptr inbounds nuw [32 x i8], ptr %7, i64 %.sink362.i ; 4 uses
  store i64 0, ptr %i.ja, align 8, !noalias !7
  %.sroa.4294.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  store ptr %.sink358.i, ptr %.sroa.4294.0..sroa_idx.i, align 8, !noalias !7
  %.sroa.5295.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  store i64 7, ptr %.sroa.5295.0..sroa_idx.i, align 8, !noalias !7
  %.sroa.6296.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  store ptr %.sroa.420.0.copyload, ptr %.sroa.6296.0..sroa_idx.i, align 8, !noalias !7
  %i.jb = add nuw nsw i64 %.sink356.i, %i.c       ; 2 uses
  store i64 %i.jb, ptr %i.b, align 8, !alias.scope !348
  br label %.loopexit312.i

.loopexit312.i:                                   ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit184.i, %.loopexit312.sink.split.i, %bb.bj
  %8 = phi ptr [ %7, %.loopexit312.sink.split.i ], [ %i.bt, %bb.bj ], [ %i.jl, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit184.i ]
  %i.jc = phi i64 [ %i.jb, %.loopexit312.sink.split.i ], [ %i.bv, %bb.bj ], [ %i.jn, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit184.i ] ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.je = load i32, ptr %i.jd, align 8, !range !363, !noundef !7
  %i.jf = icmp samesign ugt i32 %i.je, 2
  br i1 %i.jf, label %bb.bm, label %_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs9dfs_enter.exit

.lr.ph316.i:                                      ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit184.i, %.lr.ph316.preheader.i
  %i.jg = phi ptr [ %i.jl, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit184.i ], [ %i.bt, %.lr.ph316.preheader.i ]
  %i.jh = phi i64 [ %i.jn, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit184.i ], [ %i.bv, %.lr.ph316.preheader.i ] ; 3 uses
  %.sroa.4110.0315.i = phi ptr [ %i.ji, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit184.i ], [ %i.iw, %.lr.ph316.preheader.i ]
  %i.ji = getelementptr inbounds i8, ptr %.sroa.4110.0315.i, i64 -16 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !450)
  %i.jj = load i64, ptr %i.a, align 8, !range !10, !alias.scope !451, !noundef !7
  %i.jk = icmp eq i64 %i.jh, %i.jj
  br i1 %i.jk, label %bb.bl, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit184.i

bb.bl:                                            ; preds = %.lr.ph316.i
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBR_4ExprNtBP_10DFSContextEEE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #22, !noalias !452
  %.pre31 = load ptr, ptr %i.h, align 8, !alias.scope !451
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit184.i

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit184.i: ; preds = %bb.bl, %.lr.ph316.i
  %i.jl = phi ptr [ %.pre31, %bb.bl ], [ %i.jg, %.lr.ph316.i ] ; 3 uses
  %i.jm = getelementptr inbounds nuw [32 x i8], ptr %i.jl, i64 %i.jh ; 4 uses
  store i64 0, ptr %i.jm, align 8, !noalias !450
  %.sroa.4290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  store ptr %i.ji, ptr %.sroa.4290.0..sroa_idx.i, align 8, !noalias !450
  %.sroa.5291.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  store i64 7, ptr %.sroa.5291.0..sroa_idx.i, align 8, !noalias !450
  %.sroa.6292.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jm, i64 24
  store ptr %.sroa.420.0.copyload, ptr %.sroa.6292.0..sroa_idx.i, align 8, !noalias !450
  %i.jn = add i64 %i.jh, 1                        ; 3 uses
  store i64 %i.jn, ptr %i.b, align 8, !alias.scope !451
  %i.jo = icmp eq ptr %i.is, %i.ji
  br i1 %i.jo, label %.loopexit312.i, label %.lr.ph316.i

bb.bm:                                            ; preds = %.loopexit312.i
  %.sroa.0120.0.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !453)
  %i.jp = load i64, ptr %i.a, align 8, !range !10, !alias.scope !454, !noundef !7
  %i.jq = icmp eq i64 %i.jc, %i.jp
  br i1 %i.jq, label %bb.bn, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit185.i

bb.bn:                                            ; preds = %bb.bm
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBR_4ExprNtBP_10DFSContextEEE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #22, !noalias !455
  %.pre35 = load ptr, ptr %i.h, align 8, !alias.scope !454
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit185.i

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit185.i: ; preds = %bb.bn, %bb.bm
  %9 = phi ptr [ %.pre35, %bb.bn ], [ %8, %bb.bm ]
  %i.jr = getelementptr inbounds nuw [32 x i8], ptr %9, i64 %i.jc ; 4 uses
  store i64 0, ptr %i.jr, align 8, !noalias !453
  %.sroa.4298.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  store ptr %.sroa.0120.0.i, ptr %.sroa.4298.0..sroa_idx.i, align 8, !noalias !453
  %.sroa.5299.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  store i64 2, ptr %.sroa.5299.0..sroa_idx.i, align 8, !noalias !453
  %.sroa.6300.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jr, i64 24
  store ptr %.sroa.420.0.copyload, ptr %.sroa.6300.0..sroa_idx.i, align 8, !noalias !453
  %i.js = add i64 %i.jc, 1
  store i64 %i.js, ptr %i.b, align 8, !alias.scope !454
  br label %_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs9dfs_enter.exit

.lr.ph.i:                                         ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit186.i, %.lr.ph.preheader.i
  %i.jt = phi ptr [ %i.jy, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit186.i ], [ %i.cg, %.lr.ph.preheader.i ]
  %i.ju = phi i64 [ %i.ka, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit186.i ], [ %i.ci, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.4128.0314.i = phi ptr [ %i.jv, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit186.i ], [ %i.co, %.lr.ph.preheader.i ]
  %i.jv = getelementptr inbounds i8, ptr %.sroa.4128.0314.i, i64 -48 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !456)
  %i.jw = load i64, ptr %i.a, align 8, !range !10, !alias.scope !457, !noundef !7
  %i.jx = icmp eq i64 %i.ju, %i.jw
  br i1 %i.jx, label %bb.bo, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit186.i

bb.bo:                                            ; preds = %.lr.ph.i
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBR_4ExprNtBP_10DFSContextEEE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #22, !noalias !458
  %.pre29 = load ptr, ptr %i.h, align 8, !alias.scope !457
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit186.i

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs8DFSEventTRNtBK_4ExprNtBI_10DFSContextEEE8push_mutBM_.exit186.i: ; preds = %bb.bo, %.lr.ph.i
  %i.jy = phi ptr [ %.pre29, %bb.bo ], [ %i.jt, %.lr.ph.i ] ; 2 uses
  %i.jz = getelementptr inbounds nuw [32 x i8], ptr %i.jy, i64 %i.ju ; 4 uses
  store i64 0, ptr %i.jz, align 8, !noalias !456
  %.sroa.4306.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  store ptr %i.jv, ptr %.sroa.4306.0..sroa_idx.i, align 8, !noalias !456
  %.sroa.5307.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  store i64 4, ptr %.sroa.5307.0..sroa_idx.i, align 8, !noalias !456
  %.sroa.6308.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jz, i64 24
  store ptr %.sroa.420.0.copyload, ptr %.sroa.6308.0..sroa_idx.i, align 8, !noalias !456
  %i.ka = add i64 %i.ju, 1                        ; 2 uses
  store i64 %i.ka, ptr %i.b, align 8, !alias.scope !457
  %i.kb = icmp eq ptr %i.ck, %i.jv
  br i1 %i.kb, label %_RNvNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs9dfs_enter.exit, label %.lr.ph.i
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #12

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortjNvYjNtNtBa_3cmp10PartialOrd2ltECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), i1 noundef zeroext, ptr noalias nofree noundef nonnull) unnamed_addr #3

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #14

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchjNvYjNtNtBa_3cmp10PartialOrd2ltECsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), ptr noalias nofree noundef nonnull) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8find_map5checkRNtNtCsfF8zpZz1lvn_13yara_x_parser3cst5EventNtB1U_4SpanNCNvMNtB1S_13syntax_streamNtB2N_12SyntaxStream8truncate0E0INtB7_5FnMutTuB1P_EE8call_mutB1U_(ptr dead_on_unwind noalias nofree noundef writable sret([12 x i8]) align 4 captures(address) dereferenceable(12), ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNvXs_NtNtNtBb_4iter8adapters9enumerateINtBY_9EnumeratepENtNtNtB12_6traits8iterator8Iterator8try_fold9enumerateRjuINtNtB9_12control_flow11ControlFlowTjB2F_EENCINvNvB1N_4find5checkB3h_NCINvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iter4IterjENtCs2CmfWUMKNor_9itertools9Itertools13find_positionNCNvMNtNtCsfF8zpZz1lvn_13yara_x_parser6parser12token_streamNtB5R_11TokenStream15remove_bookmark0E0E0E0INtB7_5FnMutTuB2F_EE8call_mutB5V_(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #3

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs2CmfWUMKNor_9itertools4free5chainINtNtCskKLDkoKarTP_4core6option4IterNtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast3dfs10DFSContextEINtNtNtNtBI_4iter8adapters10filter_map9FilterMapINtNtB2c_3rev3RevINtNtNtBI_5slice4iter4IterINtB1f_8DFSEventTRNtB1h_4ExprB1d_EEEENCNvMB1f_NtB1f_7DFSIter8contexts0EEB1j_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16), ptr noundef nonnull, ptr noundef) unnamed_addr #3

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #16

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #17

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #5

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #18

; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #12

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNvXNtNtCs2AhGS15tZfv_4bstr5impls4bstrNtNtB8_4bstr4BStrNtNtCskKLDkoKarTP_4core3fmt7Display3fmt10write_bstr(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNvXNtNtCs2AhGS15tZfv_4bstr5impls4bstrNtNtB8_4bstr4BStrNtNtCskKLDkoKarTP_4core3fmt7Display3fmt10write_pads(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYNtNtCsfF8zpZz1lvn_13yara_x_parser3ast9RuleFlagsNtNtCs94G7V7CXYRk_8bitflags6traits5Flags8is_emptyB6_(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYNtNtCsfF8zpZz1lvn_13yara_x_parser3ast9RuleFlagsNtNtCs94G7V7CXYRk_8bitflags6traits5Flags8containsB6_(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), i8 noundef) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYNtNtCsfF8zpZz1lvn_13yara_x_parser3ast9RuleFlagsNtNtCs94G7V7CXYRk_8bitflags6traits5Flags10intersectsB6_(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), i8 noundef) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtCsfF8zpZz1lvn_13yara_x_parser3ast9RuleFlagsNtNtCs94G7V7CXYRk_8bitflags6traits5Flags6removeB6_(ptr noalias nofree noundef dereferenceable(1), i8 noundef) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtCs2AhGS15tZfv_4bstr5ascii20first_non_ascii_byte(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

attributes #0 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #14 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { noinline noreturn }
attributes #22 = { noinline }
attributes #23 = { noreturn }
attributes #24 = { nounwind }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}

!0 = distinct !{!0, i1 true, !"_RNvXsU_NtNtCskKLDkoKarTP_4core3cmp5implsjNtB7_10PartialOrd2lt"}
!1 = distinct !{!1, !0, !"_RNvXsU_NtNtCskKLDkoKarTP_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 0"}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 2, !"RtLibUseGOT", i32 1}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!6 = !{!1}
!7 = !{}
!8 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!9 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!10 = !{i64 0, i64 -9223372036854775808}
!11 = !{i64 0, i64 2}
!12 = !{i64 0, i64 -9223372036854775807}
!13 = !{!"branch_weights", i32 2002, i32 2000}
!14 = !{i64 8}
!15 = distinct !{!15, !0, !"_RNvXsU_NtNtCskKLDkoKarTP_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 1"}
!16 = !{!15}
!17 = distinct !{!17, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotjNvYjNtNtBa_3cmp10PartialOrd2ltECsfF8zpZz1lvn_13yara_x_parser"}
!18 = distinct !{!18, !17, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotjNvYjNtNtBa_3cmp10PartialOrd2ltECsfF8zpZz1lvn_13yara_x_parser: argument 0"}
!19 = distinct !{!19, i1 true, !"_RNvXsU_NtNtCskKLDkoKarTP_4core3cmp5implsjNtB7_10PartialOrd2lt"}
!20 = distinct !{!20, !19, !"_RNvXsU_NtNtCskKLDkoKarTP_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 0"}
!21 = distinct !{!21, !19, !"_RNvXsU_NtNtCskKLDkoKarTP_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 1"}
!22 = distinct !{!22, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionjNvYjNtNtBa_3cmp10PartialOrd2ltECsfF8zpZz1lvn_13yara_x_parser"}
!23 = distinct !{!23, !22, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionjNvYjNtNtBa_3cmp10PartialOrd2ltECsfF8zpZz1lvn_13yara_x_parser: argument 0"}
!24 = distinct !{!24, !22, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionjNvYjNtNtBa_3cmp10PartialOrd2ltECsfF8zpZz1lvn_13yara_x_parser: argument 1"}
!25 = distinct !{!25, i1 true, !"_RNvXsU_NtNtCskKLDkoKarTP_4core3cmp5implsjNtB7_10PartialOrd2lt"}
!26 = distinct !{!26, !25, !"_RNvXsU_NtNtCskKLDkoKarTP_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 0"}
!27 = distinct !{!27, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStatejE13partition_oneCsfF8zpZz1lvn_13yara_x_parser"}
!28 = distinct !{!28, !27, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStatejE13partition_oneCsfF8zpZz1lvn_13yara_x_parser: argument 0"}
!29 = distinct !{!29, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStatejE13partition_oneCsfF8zpZz1lvn_13yara_x_parser"}
!30 = distinct !{!30, !29, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStatejE13partition_oneCsfF8zpZz1lvn_13yara_x_parser: argument 0"}
!31 = distinct !{!31, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStatejE13partition_oneCsfF8zpZz1lvn_13yara_x_parser"}
!32 = distinct !{!32, !31, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStatejE13partition_oneCsfF8zpZz1lvn_13yara_x_parser: argument 0"}
end_hunk_1
