Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/pshinter?download=true
inline.NumInlined: 99
inline.NumDeleted: 50
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 14
begin_hunk_0_@psh_globals_set_scale:bb.a
  %i.ka = mul i64 %2, %spec.select.1.i            ; 2 uses
  %i.kb = ashr i64 %i.ka, 63
  %i.kc = add i64 %i.ka, 32768
  %i.kd = add i64 %i.kc, %i.kb
  %i.ke = icmp slt i64 %i.kd, 4194304
  br i1 %i.ke, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.kf = add i32 %.07396.1.i, -1                 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.07595.1.i, i64 48
  %.not86.1.i = icmp eq i32 %i.kf, 0
  br i1 %.not86.1.i, label %..loopexit_crit_edge.1.i, label %bb.n, !llvm.loop !173

bb.p:                                             ; preds = %bb.n
  %i.kh = getelementptr inbounds nuw i8, ptr %.07595.1.i, i64 32
  %i.ki = getelementptr inbounds nuw i8, ptr %.076100.1.i, i64 32
  %i.kj = load <2 x i64>, ptr %i.kh, align 8, !tbaa !55
  store <2 x i64> %i.kj, ptr %i.ki, align 8, !tbaa !55
  %i.kk = getelementptr inbounds nuw i8, ptr %.07595.1.i, i64 16
  %i.kl = getelementptr inbounds nuw i8, ptr %.076100.1.i, i64 16
  %i.km = load <2 x i64>, ptr %i.kk, align 8, !tbaa !55
  store <2 x i64> %i.km, ptr %i.kl, align 8, !tbaa !55
  br label %..loopexit_crit_edge.1.i

..loopexit_crit_edge.1.i:                         ; preds = %bb.o, %bb.p
  %i.kn = add i32 %.074101.1.i, -1                ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.076100.1.i, i64 48
  %.not.1.i = icmp eq i32 %i.kn, 0
  br i1 %.not.1.i, label %psh_blues_scale_zones.exit, label %.lr.ph98.1.i, !llvm.loop !174

psh_blues_scale_zones.exit:                       ; preds = %..loopexit_crit_edge.1.i, %.lr.ph103.1.i, %._crit_edge104.i, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @psh_glyph_interpolate_strong_points(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = zext nneg i32 %1 to i64
  %i.d = getelementptr inbounds nuw [408 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 400
  %i.f = load i64, ptr %i.e, align 8, !tbaa !44   ; 2 uses
  %i.g = load i32, ptr %0, align 8, !tbaa !26     ; 2 uses
  %.not46 = icmp eq i32 %i.g, 0
  br i1 %.not46, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %.048 = phi ptr [ %i.bj, %bb.l ], [ %i.i, %.lr.ph.preheader ] ; 9 uses
  %.03747 = phi i32 [ %i.bi, %bb.l ], [ %i.g, %.lr.ph.preheader ]
  %i.j = getelementptr inbounds nuw i8, ptr %.048, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !54   ; 9 uses
  %.not42 = icmp eq ptr %i.k, null
  br i1 %.not42, label %bb.l, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.048, i64 28 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !53   ; 6 uses
  %i.n = and i32 %i.m, 512
  %.not43 = icmp eq i32 %i.n, 0
  br i1 %.not43, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !97
  %i.q = getelementptr inbounds nuw i8, ptr %.048, i64 64
  store i64 %i.p, ptr %i.q, align 8, !tbaa !79
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.r = and i32 %i.m, 1024
  %.not44 = icmp eq i32 %i.r, 0
  br i1 %.not44, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !97
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !98
  %i.w = add nsw i64 %i.v, %i.t
  %i.x = getelementptr inbounds nuw i8, ptr %.048, i64 64
  store i64 %i.w, ptr %i.x, align 8, !tbaa !79
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.048, i64 48
  %i.z = load i64, ptr %i.y, align 8, !tbaa !56
  %i.aa = load i32, ptr %i.k, align 8, !tbaa !78
  %i.ab = sext i32 %i.aa to i64
  %i.ac = sub nsw i64 %i.z, %i.ab                 ; 5 uses
  %i.ad = icmp slt i64 %i.ac, 1
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !97
  %i.ag = mul i64 %i.ac, %i.f                     ; 2 uses
  %i.ah = ashr i64 %i.ag, 63
  %i.ai = add i64 %i.ag, 32768
  %i.aj = add i64 %i.ai, %i.ah
  %i.ak = ashr i64 %i.aj, 16
  %i.al = add nsw i64 %i.af, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %.048, i64 64
  store i64 %i.al, ptr %i.am, align 8, !tbaa !79
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !99
  %i.ap = sext i32 %i.ao to i64                   ; 3 uses
  %.not45 = icmp slt i64 %i.ac, %i.ap
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !97 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !98 ; 2 uses
  br i1 %.not45, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = sub nsw i64 %i.ac, %i.ap
  %i.av = mul i64 %i.au, %i.f                     ; 2 uses
  %i.aw = ashr i64 %i.av, 63
  %i.ax = add i64 %i.av, 32768
  %i.ay = add i64 %i.ax, %i.aw
  %i.az = ashr i64 %i.ay, 16
  %i.ba = add i64 %i.ar, %i.az
  %i.bb = add i64 %i.ba, %i.at
  %i.bc = getelementptr inbounds nuw i8, ptr %.048, i64 64
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !79
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bd = tail call i64 @FT_MulDiv(i64 noundef %i.ac, i64 noundef %i.at, i64 noundef %i.ap) #12
  %i.be = add nsw i64 %i.bd, %i.ar
  %i.bf = getelementptr inbounds nuw i8, ptr %.048, i64 64
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !79
  %.pre = load i32, ptr %i.l, align 4, !tbaa !53
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.i, %bb.j, %bb.g, %bb.c
  %i.bg = phi i32 [ %i.m, %bb.e ], [ %i.m, %bb.i ], [ %.pre, %bb.j ], [ %i.m, %bb.g ], [ %i.m, %bb.c ]
  %i.bh = or i32 %i.bg, 32
  store i32 %i.bh, ptr %i.l, align 4, !tbaa !53
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph
  %i.bi = add i32 %.03747, -1                     ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.048, i64 72
  %.not = icmp eq i32 %i.bi, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !180

._crit_edge:                                      ; preds = %bb.l, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @psh_glyph_interpolate_normal_points(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x ptr], align 16              ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.e = zext nneg i32 %1 to i64
  %i.f = getelementptr inbounds nuw [408 x i8], ptr %i.d, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 400
  %i.h = load i64, ptr %i.g, align 8, !tbaa !44   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !22   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !23   ; 14 uses
  %i.m = load i32, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.n = zext i32 %i.m to i64
  %.idx = mul nuw nsw i64 %i.n, 72                ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx ; 3 uses
  %.not144 = icmp eq i32 %i.m, 0
  br i1 %.not144, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.p = ptrtoaddr ptr %i.l to i64                ; 4 uses
  %i.q = add i64 %.idx, %i.p
  %i.r = add i64 %i.p, 72
  %i.s = tail call i64 @llvm.umax.i64(i64 %i.q, i64 %i.r)
  %i.t = add i64 %i.s, -72                        ; 2 uses
  %i.u = icmp ne i64 %i.t, %i.p
  %i.v = zext i1 %i.u to i64                      ; 2 uses
  %i.w = add i64 %i.p, %i.v
  %i.x = sub i64 %i.t, %i.w
  %i.y = udiv i64 %i.x, 72
  %i.z = add nuw nsw i64 %i.y, %i.v               ; 2 uses
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.z, 7
  br i1 %min.iters.check, label %.lr.ph.preheader179, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.aa, 1152921504606846968     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bl, %vector.body ]
  %vec.phi169 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bm, %vector.body ]
  %i.ab = mul i64 %index, 72                      ; 8 uses
  %next.gep = getelementptr i8, ptr %i.l, i64 %i.ab
  %i.ac = getelementptr i8, ptr %i.l, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.l, i64 %i.ab
  %i.ae = getelementptr i8, ptr %i.l, i64 %i.ab
  %i.af = getelementptr i8, ptr %i.l, i64 %i.ab
  %i.ag = getelementptr i8, ptr %i.l, i64 %i.ab
  %i.ah = getelementptr i8, ptr %i.l, i64 %i.ab
  %i.ai = getelementptr i8, ptr %i.l, i64 %i.ab
  %i.aj = getelementptr inbounds nuw i8, ptr %next.gep, i64 28
  %i.ak = getelementptr i8, ptr %i.ac, i64 100
  %i.al = getelementptr i8, ptr %i.ad, i64 172
  %i.am = getelementptr i8, ptr %i.ae, i64 244
  %i.an = getelementptr i8, ptr %i.af, i64 316
  %i.ao = getelementptr i8, ptr %i.ag, i64 388
  %i.ap = getelementptr i8, ptr %i.ah, i64 460
  %i.aq = getelementptr i8, ptr %i.ai, i64 532
  %i.ar = load i32, ptr %i.aj, align 4, !tbaa !53
  %i.as = load i32, ptr %i.ak, align 4, !tbaa !53
  %i.at = load i32, ptr %i.al, align 4, !tbaa !53
  %i.au = load i32, ptr %i.am, align 4, !tbaa !53
  %i.av = insertelement <4 x i32> poison, i32 %i.ar, i64 0
  %i.aw = insertelement <4 x i32> %i.av, i32 %i.as, i64 1
  %i.ax = insertelement <4 x i32> %i.aw, i32 %i.at, i64 2
  %i.ay = insertelement <4 x i32> %i.ax, i32 %i.au, i64 3
  %i.az = load i32, ptr %i.an, align 4, !tbaa !53
  %i.ba = load i32, ptr %i.ao, align 4, !tbaa !53
  %i.bb = load i32, ptr %i.ap, align 4, !tbaa !53
  %i.bc = load i32, ptr %i.aq, align 4, !tbaa !53
  %i.bd = insertelement <4 x i32> poison, i32 %i.az, i64 0
  %i.be = insertelement <4 x i32> %i.bd, i32 %i.ba, i64 1
  %i.bf = insertelement <4 x i32> %i.be, i32 %i.bb, i64 2
  %i.bg = insertelement <4 x i32> %i.bf, i32 %i.bc, i64 3
  %i.bh = lshr <4 x i32> %i.ay, splat (i32 4)
  %i.bi = lshr <4 x i32> %i.bg, splat (i32 4)
  %i.bj = and <4 x i32> %i.bh, splat (i32 1)
  %i.bk = and <4 x i32> %i.bi, splat (i32 1)
  %i.bl = add <4 x i32> %i.bj, %vec.phi           ; 2 uses
  %i.bm = add <4 x i32> %i.bk, %vec.phi169        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !181

middle.block:                                     ; preds = %vector.body
  %2 = mul i64 %n.vec, 72
  %3 = getelementptr i8, ptr %i.l, i64 %2
  %bin.rdx = add <4 x i32> %i.bm, %i.bl
  %i.bo = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader179

.lr.ph.preheader179:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0100121.ph = phi ptr [ %i.l, %.lr.ph.preheader ], [ %3, %middle.block ]
  %.0102120.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.bo, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader179, %.lr.ph
  %.0100121 = phi ptr [ %i.bt, %.lr.ph ], [ %.0100121.ph, %.lr.ph.preheader179 ] ; 2 uses
  %.0102120 = phi i32 [ %spec.select, %.lr.ph ], [ %.0102120.ph, %.lr.ph.preheader179 ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.0100121, i64 28
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !53
  %i.br = lshr i32 %i.bq, 4
  %i.bs = and i32 %i.br, 1
  %spec.select = add i32 %i.bs, %.0102120         ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0100121, i64 72 ; 2 uses
  %i.bu = icmp ult ptr %i.bt, %i.o
  br i1 %i.bu, label %.lr.ph, label %._crit_edge, !llvm.loop !182

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %spec.select.lcssa = phi i32 [ %i.bo, %middle.block ], [ %spec.select, %.lr.ph ] ; 3 uses
  %i.bv = icmp eq i32 %spec.select.lcssa, 0
  br i1 %i.bv, label %._crit_edge.thread, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.bw = icmp ult i32 %spec.select.lcssa, 17
  br i1 %i.bw, label %.lr.ph132.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.bx = zext i32 %spec.select.lcssa to i64
  %i.by = call ptr @ft_mem_qrealloc(ptr noundef %i.j, i64 noundef 8, i64 noundef 0, i64 noundef %i.bx, ptr noundef null, ptr noundef nonnull %i.b) #12
  %i.bz = load i32, ptr %i.b, align 4, !tbaa !24
  %.not = icmp eq i32 %i.bz, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br i1 %.not, label %.lr.ph132.preheader, label %._crit_edge.thread

.lr.ph132.preheader:                              ; preds = %bb.c, %bb.b
  %.0105 = phi ptr [ %i.by, %bb.c ], [ %i.a, %bb.b ] ; 10 uses
  br label %.lr.ph132

.lr.ph142:                                        ; preds = %bb.g
  %.not149 = icmp eq i32 %.3, 0
  %i.ca = zext i32 %.3 to i64                     ; 2 uses
  %i.cb = add i32 %.3, -1
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %.0105, i64 %i.cc
  br label %bb.h

.lr.ph132:                                        ; preds = %.lr.ph132.preheader, %bb.g
  %.1101130 = phi ptr [ %i.cr, %bb.g ], [ %i.l, %.lr.ph132.preheader ] ; 4 uses
  %.2104129 = phi i32 [ %.3, %bb.g ], [ 0, %.lr.ph132.preheader ] ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.1101130, i64 28
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !53
  %i.cg = and i32 %i.cf, 16
  %.not117 = icmp eq i32 %i.cg, 0
  br i1 %.not117, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.lr.ph132
  %i.ch = zext i32 %.2104129 to i64
  %.idx146 = shl nuw nsw i64 %i.ch, 3
  %i.ci = getelementptr inbounds nuw i8, ptr %.0105, i64 %.idx146 ; 2 uses
  %.not147 = icmp eq i32 %.2104129, 0
  br i1 %.not147, label %._crit_edge125, label %.lr.ph124

.lr.ph124:                                        ; preds = %bb.d
  %i.cj = getelementptr inbounds nuw i8, ptr %.1101130, i64 48
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !56
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph124, %bb.f
  %.098122 = phi ptr [ %i.ci, %.lr.ph124 ], [ %i.cl, %bb.f ] ; 3 uses
  %i.cl = getelementptr inbounds i8, ptr %.098122, i64 -8 ; 4 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !188 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 48
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !56
  %.not118 = icmp sgt i64 %i.co, %i.ck
  br i1 %.not118, label %bb.f, label %._crit_edge125

bb.f:                                             ; preds = %bb.e
  store ptr %i.cm, ptr %.098122, align 8, !tbaa !188
  %i.cp = icmp ugt ptr %i.cl, %.0105
  br i1 %i.cp, label %bb.e, label %._crit_edge125, !llvm.loop !183

._crit_edge125:                                   ; preds = %bb.f, %bb.e, %bb.d
  %.098.lcssa = phi ptr [ %i.ci, %bb.d ], [ %.098122, %bb.e ], [ %i.cl, %bb.f ]
  store ptr %.1101130, ptr %.098.lcssa, align 8, !tbaa !188
  %i.cq = add i32 %.2104129, 1
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph132, %._crit_edge125
  %.3 = phi i32 [ %i.cq, %._crit_edge125 ], [ %.2104129, %.lr.ph132 ] ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.1101130, i64 72 ; 2 uses
  %i.cs = icmp ult ptr %i.cr, %i.o
  br i1 %i.cs, label %.lr.ph132, label %.lr.ph142, !llvm.loop !184

bb.h:                                             ; preds = %.lr.ph142, %bb.z
  %.2141 = phi ptr [ %i.l, %.lr.ph142 ], [ %i.gh, %bb.z ] ; 13 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.2141, i64 28 ; 3 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !53 ; 6 uses
  %i.cv = and i32 %i.cu, 16
  %.not112 = icmp eq i32 %i.cv, 0
  br i1 %.not112, label %bb.i, label %bb.z

bb.i:                                             ; preds = %bb.h
  %i.cw = getelementptr inbounds nuw i8, ptr %.2141, i64 24 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !37 ; 2 uses
  %i.cy = and i32 %i.cx, 2
  %.not113 = icmp eq i32 %i.cy, 0
  br i1 %.not113, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cz = getelementptr inbounds nuw i8, ptr %.2141, i64 32
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !39 ; 2 uses
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.z, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dc = getelementptr inbounds nuw i8, ptr %.2141, i64 36
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !40
  %.not114 = icmp ne i32 %i.da, %i.dd
  %i.de = and i32 %i.cu, 64
  %.not115 = icmp eq i32 %i.de, 0
  %or.cond = or i1 %.not115, %.not114
  br i1 %or.cond, label %bb.z, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.df = and i32 %i.cx, -3
  store i32 %i.df, ptr %i.cw, align 8, !tbaa !37
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  br i1 %.not149, label %._crit_edge137.thread, label %.lr.ph136

.lr.ph136:                                        ; preds = %bb.m
  %i.dg = getelementptr inbounds nuw i8, ptr %.2141, i64 48
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !56
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph136, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph136 ], [ %indvars.iv.next, %bb.o ] ; 3 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.0105, i64 %indvars.iv
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !188
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 48
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !56
  %i.dm = icmp sgt i64 %i.dl, %i.dh
  br i1 %i.dm, label %._crit_edge137.split.loop.exit162, label %bb.o

bb.o:                                             ; preds = %bb.n
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ca
  br i1 %exitcond.not, label %._crit_edge137, label %bb.n, !llvm.loop !185

._crit_edge137.split.loop.exit162:                ; preds = %bb.n
  %i.dn = trunc nuw i64 %indvars.iv to i32
  br label %._crit_edge137

._crit_edge137:                                   ; preds = %bb.o, %._crit_edge137.split.loop.exit162
  %.0.lcssa = phi i32 [ %i.dn, %._crit_edge137.split.loop.exit162 ], [ %.3, %bb.o ] ; 2 uses
  %i.do = icmp eq i32 %.0.lcssa, 0
  br i1 %i.do, label %._crit_edge137.thread, label %bb.p

._crit_edge137.thread:                            ; preds = %bb.m, %._crit_edge137
  %i.dp = load ptr, ptr %.0105, align 8, !tbaa !188 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 64
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !79
  %i.ds = getelementptr inbounds nuw i8, ptr %.2141, i64 48
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !56
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 48
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !56
  %i.dw = sub nsw i64 %i.dt, %i.dv
  %i.dx = mul i64 %i.dw, %i.h                     ; 2 uses
  %i.dy = ashr i64 %i.dx, 63
  %i.dz = add i64 %i.dx, 32768
  %i.ea = add i64 %i.dz, %i.dy
  %i.eb = ashr i64 %i.ea, 16
  %i.ec = add nsw i64 %i.eb, %i.dr
  %i.ed = getelementptr inbounds nuw i8, ptr %.2141, i64 64
  store i64 %i.ec, ptr %i.ed, align 8, !tbaa !79
  br label %bb.y

bb.p:                                             ; preds = %._crit_edge137
  %i.ee = add i32 %.0.lcssa, -1
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %.0105, i64 %i.ef
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !188 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.2141, i64 48 ; 2 uses
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !56
  br label %bb.r

bb.q:                                             ; preds = %bb.r
  %.not116 = icmp eq i64 %i.ek, 0
  br i1 %.not116, label %.split.loop.exit164, label %bb.r, !llvm.loop !186

bb.r:                                             ; preds = %bb.p, %bb.q
  %indvars.iv151168 = phi i64 [ %i.ca, %bb.p ], [ %i.ek, %bb.q ] ; 2 uses
  %i.ek = add nsw i64 %indvars.iv151168, -1       ; 3 uses
end_hunk_0
begin_hunk_1_@psh_glyph_interpolate_normal_points:bb.a
  %i.es = load i64, ptr %i.ei, align 8, !tbaa !56 ; 4 uses
  br i1 %i.er, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.split.loop.exit164
  %i.et = load ptr, ptr %i.cd, align 8, !tbaa !188 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 64
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !79
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 48
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !56
  %i.ey = sub nsw i64 %i.es, %i.ex
  %i.ez = mul i64 %i.ey, %i.h                     ; 2 uses
  %i.fa = ashr i64 %i.ez, 63
  %i.fb = add i64 %i.ez, 32768
  %i.fc = add i64 %i.fb, %i.fa
  %i.fd = ashr i64 %i.fc, 16
  %i.fe = add nsw i64 %i.fd, %i.ev
  %i.ff = getelementptr inbounds nuw i8, ptr %.2141, i64 64
  store i64 %i.fe, ptr %i.ff, align 8, !tbaa !79
  br label %bb.y

bb.t:                                             ; preds = %.split.loop.exit164
  %i.fg = zext i32 %.1.lcssa to i64
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %.0105, i64 %i.fg
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !188 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.eh, i64 48
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !56 ; 3 uses
  %i.fl = icmp eq i64 %i.es, %i.fk
  br i1 %i.fl, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fm = getelementptr inbounds nuw i8, ptr %i.eh, i64 64
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !79
  %i.fo = getelementptr inbounds nuw i8, ptr %.2141, i64 64
  store i64 %i.fn, ptr %i.fo, align 8, !tbaa !79
  br label %bb.y

bb.v:                                             ; preds = %bb.t
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fi, i64 48
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !56 ; 2 uses
  %i.fr = icmp eq i64 %i.es, %i.fq
  br i1 %i.fr, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fi, i64 64
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !79
  %i.fu = getelementptr inbounds nuw i8, ptr %.2141, i64 64
  store i64 %i.ft, ptr %i.fu, align 8, !tbaa !79
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.fv = getelementptr inbounds nuw i8, ptr %i.eh, i64 64
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !79 ; 2 uses
  %i.fx = sub nsw i64 %i.es, %i.fk
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fi, i64 64
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !79
  %i.ga = sub nsw i64 %i.fz, %i.fw
  %i.gb = sub nsw i64 %i.fq, %i.fk
  %i.gc = call i64 @FT_MulDiv(i64 noundef %i.fx, i64 noundef %i.ga, i64 noundef %i.gb) #12
  %i.gd = add nsw i64 %i.gc, %i.fw
  %i.ge = getelementptr inbounds nuw i8, ptr %.2141, i64 64
  store i64 %i.gd, ptr %i.ge, align 8, !tbaa !79
  %.pre = load i32, ptr %i.ct, align 4, !tbaa !53
  br label %bb.y

bb.y:                                             ; preds = %bb.u, %bb.x, %bb.w, %bb.s, %._crit_edge137.thread
  %i.gf = phi i32 [ %i.cu, %bb.u ], [ %.pre, %bb.x ], [ %i.cu, %bb.w ], [ %i.cu, %bb.s ], [ %i.cu, %._crit_edge137.thread ]
  %i.gg = or i32 %i.gf, 32
  store i32 %i.gg, ptr %i.ct, align 4, !tbaa !53
  br label %bb.z

bb.z:                                             ; preds = %bb.j, %bb.k, %bb.h, %bb.y
  %i.gh = getelementptr inbounds nuw i8, ptr %.2141, i64 72 ; 2 uses
  %i.gi = icmp ult ptr %i.gh, %i.o
  br i1 %i.gi, label %bb.h, label %._crit_edge143, !llvm.loop !187

._crit_edge143:                                   ; preds = %bb.z
  %.not111 = icmp eq ptr %.0105, %i.a
  br i1 %.not111, label %._crit_edge.thread, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge143
  call void @ft_mem_free(ptr noundef %i.j, ptr noundef %.0105) #12
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge143, %bb.aa, %._crit_edge, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @psh_glyph_interpolate_other_points(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = zext nneg i32 %1 to i64
  %i.e = getelementptr inbounds nuw [408 x i8], ptr %i.c, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 392
  %i.g = load i64, ptr %i.f, align 8, !tbaa !44   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !27   ; 2 uses
  %.not136 = icmp eq i32 %i.i, 0
  br i1 %.not136, label %._crit_edge142, label %.lr.ph141.preheader

.lr.ph141.preheader:                              ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 400
  %i.m = load i64, ptr %i.l, align 8, !tbaa !91
  br label %.lr.ph141

.lr.ph141:                                        ; preds = %.lr.ph141.preheader, %.loopexit
  %.097139 = phi i32 [ %i.cs, %.loopexit ], [ %i.i, %.lr.ph141.preheader ]
  %.098138 = phi ptr [ %i.ct, %.loopexit ], [ %i.k, %.lr.ph141.preheader ] ; 3 uses
  %.099137 = phi i64 [ %.2101, %.loopexit ], [ %i.m, %.lr.ph141.preheader ] ; 4 uses
  %i.n = load ptr, ptr %.098138, align 8, !tbaa !30 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.098138, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !31   ; 2 uses
  %i.q = zext i32 %i.p to i64
  %.idx = mul nuw nsw i64 %i.q, 72
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx ; 2 uses
  %.not143 = icmp eq i32 %i.p, 0
  br i1 %.not143, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph141, %.lr.ph
  %.090131 = phi i32 [ %.1, %.lr.ph ], [ 0, %.lr.ph141 ]
  %.091130 = phi ptr [ %i.x, %.lr.ph ], [ %i.n, %.lr.ph141 ] ; 3 uses
  %.094129 = phi ptr [ %.296, %.lr.ph ], [ null, %.lr.ph141 ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.091130, i64 28
  %i.t = load i32, ptr %i.s, align 4, !tbaa !53
  %i.u = and i32 %i.t, 32                         ; 2 uses
  %.not120 = icmp eq i32 %i.u, 0
  %.not121 = icmp ne ptr %.094129, null
  %i.v = select i1 %.not120, i1 true, i1 %.not121
  %.296 = select i1 %i.v, ptr %.094129, ptr %.091130 ; 7 uses
  %i.w = lshr exact i32 %i.u, 5
  %.1 = add i32 %i.w, %.090131                    ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.091130, i64 72 ; 2 uses
  %i.y = icmp ult ptr %i.x, %i.r
  br i1 %i.y, label %.lr.ph, label %._crit_edge, !llvm.loop !189

._crit_edge:                                      ; preds = %.lr.ph
  %i.z = icmp ult i32 %.1, 2
  br i1 %i.z, label %bb.b, label %.preheader123

bb.b:                                             ; preds = %._crit_edge
  %i.aa = icmp eq i32 %.1, 1
  br i1 %i.aa, label %bb.c, label %.lr.ph135.preheader

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %.296, i64 64
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !79
  %i.ad = getelementptr inbounds nuw i8, ptr %.296, i64 48
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !56
  %i.af = mul i64 %i.ae, %i.g                     ; 2 uses
  %i.ag = ashr i64 %i.af, 63
  %i.ah = add i64 %i.af, 32768
  %i.ai = add i64 %i.ah, %i.ag
  %i.aj = ashr i64 %i.ai, 16
  %i.ak = sub nsw i64 %i.ac, %i.aj
  br label %.lr.ph135.preheader

.lr.ph135.preheader:                              ; preds = %bb.c, %bb.b
  %.1100.ph = phi i64 [ %.099137, %bb.b ], [ %i.ak, %bb.c ] ; 2 uses
  br label %.lr.ph135

.lr.ph135:                                        ; preds = %.lr.ph135.preheader, %bb.e
  %.192133 = phi ptr [ %i.au, %bb.e ], [ %i.n, %.lr.ph135.preheader ] ; 4 uses
  %.not119 = icmp eq ptr %.192133, %.296
  br i1 %.not119, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph135
  %i.al = getelementptr inbounds nuw i8, ptr %.192133, i64 48
  %i.am = load i64, ptr %i.al, align 8, !tbaa !56
  %i.an = mul i64 %i.am, %i.g                     ; 2 uses
  %i.ao = ashr i64 %i.an, 63
  %i.ap = add i64 %i.an, 32768
  %i.aq = add i64 %i.ap, %i.ao
  %i.ar = ashr i64 %i.aq, 16
  %i.as = add nsw i64 %i.ar, %.1100.ph
  %i.at = getelementptr inbounds nuw i8, ptr %.192133, i64 64
  store i64 %i.as, ptr %i.at, align 8, !tbaa !79
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph135, %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %.192133, i64 72 ; 2 uses
  %i.av = icmp ult ptr %i.au, %i.r
  br i1 %i.av, label %.lr.ph135, label %.loopexit, !llvm.loop !190

.preheader123:                                    ; preds = %._crit_edge, %.preheader123.backedge
  %.4 = phi ptr [ %.4.be, %.preheader123.backedge ], [ %.296, %._crit_edge ] ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.4, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !34 ; 5 uses
  %i.ay = icmp eq ptr %i.ax, %.296
  br i1 %i.ay, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.preheader123
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 28
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !53
  %i.bb = and i32 %i.ba, 32
  %.not112 = icmp eq i32 %i.bb, 0
  br i1 %.not112, label %bb.g, label %.preheader123.backedge

.preheader123.backedge:                           ; preds = %bb.f, %bb.t
  %.4.be = phi ptr [ %i.ax, %bb.f ], [ %i.bd, %bb.t ]
  br label %.preheader123, !llvm.loop !191

bb.g:                                             ; preds = %bb.f, %bb.g
  %.093 = phi ptr [ %i.bd, %bb.g ], [ %i.ax, %bb.f ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.093, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !34 ; 8 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 28
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !53
  %i.bg = and i32 %i.bf, 32
  %.not113 = icmp eq i32 %i.bg, 0
  br i1 %.not113, label %bb.g, label %bb.h

bb.h:                                             ; preds = %bb.g
  %2 = getelementptr inbounds nuw i8, ptr %.4, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.4, i64 48
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !56 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !56 ; 4 uses
  %.not114 = icmp sgt i64 %i.bi, %i.bk
  br i1 %.not114, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bl = sub nsw i64 %i.bk, %i.bi
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bm = sub nsw i64 %i.bi, %i.bk
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.4.lcssa.sink = phi ptr [ %.4, %bb.j ], [ %i.bd, %bb.i ]
  %.pn = phi ptr [ %i.bd, %bb.j ], [ %.4, %bb.i ]
  %.089 = phi i64 [ %i.bk, %bb.j ], [ %i.bi, %bb.i ]
  %.088 = phi i64 [ %i.bm, %bb.j ], [ %i.bl, %bb.i ] ; 4 uses
  %.sink179.in = getelementptr inbounds nuw i8, ptr %.pn, i64 64
  %.sink179 = load i64, ptr %.sink179.in, align 8, !tbaa !79 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.4.lcssa.sink, i64 64
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !79 ; 2 uses
  %.not115 = icmp eq i64 %.088, 0
  br i1 %.not115, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bp = sub nsw i64 %i.bo, %.sink179
  %i.bq = tail call i64 @FT_DivFix(i64 noundef %i.bp, i64 noundef %.088) #12
  %.pre = load ptr, ptr %2, align 8, !tbaa !34
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.br = phi ptr [ %.pre, %bb.l ], [ %i.ax, %bb.k ]
  %.0 = phi i64 [ %i.bq, %bb.l ], [ 65536, %bb.k ]
  br label %bb.n

bb.n:                                             ; preds = %bb.s, %bb.m
  %.2 = phi ptr [ %i.br, %bb.m ], [ %i.cr, %bb.s ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.2, i64 48
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !56
  %i.bu = sub nsw i64 %i.bt, %.089                ; 5 uses
  %i.bv = icmp slt i64 %i.bu, 1
  br i1 %i.bv, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bw = mul i64 %i.bu, %i.g                     ; 2 uses
  %i.bx = ashr i64 %i.bw, 63
  %i.by = add i64 %i.bw, 32768
  %i.bz = add i64 %i.by, %i.bx
  %i.ca = ashr i64 %i.bz, 16
  %i.cb = add nsw i64 %i.ca, %.sink179
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  %.not116 = icmp slt i64 %i.bu, %.088
  br i1 %.not116, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cc = sub nuw nsw i64 %i.bu, %.088
  %i.cd = mul i64 %i.cc, %i.g                     ; 2 uses
  %i.ce = ashr i64 %i.cd, 63
  %i.cf = add i64 %i.cd, 32768
  %i.cg = add i64 %i.cf, %i.ce
  %i.ch = ashr i64 %i.cg, 16
  %i.ci = add nsw i64 %i.bo, %i.ch
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.cj = mul i64 %i.bu, %.0                      ; 2 uses
  %i.ck = ashr i64 %i.cj, 63
  %i.cl = add i64 %i.cj, 32768
  %i.cm = add i64 %i.cl, %i.ck
  %i.cn = ashr i64 %i.cm, 16
  %i.co = add nsw i64 %i.cn, %.sink179
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.o
  %.085 = phi i64 [ %i.cb, %bb.o ], [ %i.ci, %bb.q ], [ %i.co, %bb.r ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.2, i64 64
  store i64 %.085, ptr %i.cp, align 8, !tbaa !79
  %i.cq = getelementptr inbounds nuw i8, ptr %.2, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !34 ; 2 uses
  %.not117 = icmp eq ptr %i.cr, %i.bd
  br i1 %.not117, label %bb.t, label %bb.n, !llvm.loop !192

bb.t:                                             ; preds = %bb.s
  %.not118 = icmp eq ptr %i.bd, %.296
  br i1 %.not118, label %.loopexit, label %.preheader123.backedge

.loopexit:                                        ; preds = %bb.t, %.preheader123, %bb.e, %.lr.ph141
  %.2101 = phi i64 [ %.099137, %.lr.ph141 ], [ %.1100.ph, %bb.e ], [ %.099137, %.preheader123 ], [ %.099137, %bb.t ]
  %i.cs = add i32 %.097139, -1                    ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.098138, i64 16
  %.not = icmp eq i32 %i.cs, 0
  br i1 %.not, label %._crit_edge142, label %.lr.ph141, !llvm.loop !193

._crit_edge142:                                   ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @ps_hinter_init(ptr noundef initializes((24, 168), (176, 224)) %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !194
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.d, i8 0, i64 112, i1 false)
  store ptr %i.b, ptr %i.c, align 8, !tbaa !112
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr @psh_globals_new, ptr %i.e, align 8, !tbaa !195
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr @psh_globals_set_scale, ptr %i.f, align 8, !tbaa !196
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr @psh_globals_destroy, ptr %i.g, align 8, !tbaa !197
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr @t1_hints_open, ptr %i.i, align 8, !tbaa !198
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr @t1_hints_close, ptr %i.j, align 8, !tbaa !199
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr @t1_hints_stem, ptr %i.k, align 8, !tbaa !200
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr @ps_hints_t1stem3, ptr %i.l, align 8, !tbaa !201
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr @ps_hints_t1reset, ptr %i.m, align 8, !tbaa !202
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr @t1_hints_apply, ptr %i.n, align 8, !tbaa !203
  store ptr %i.c, ptr %i.h, align 8, !tbaa !113
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr @t2_hints_open, ptr %i.p, align 8, !tbaa !204
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr @t2_hints_close, ptr %i.q, align 8, !tbaa !205
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr @t2_hints_stems, ptr %i.r, align 8, !tbaa !206
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr @ps_hints_t2mask, ptr %i.s, align 8, !tbaa !207
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr @ps_hints_t2counter, ptr %i.t, align 8, !tbaa !208
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr @t2_hints_apply, ptr %i.u, align 8, !tbaa !209
  store ptr %i.c, ptr %i.o, align 8, !tbaa !114
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @ps_hinter_done(ptr nofree noundef captures(none) initializes((168, 176), (224, 232)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr null, ptr %i.a, align 8, !tbaa !113
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr null, ptr %i.b, align 8, !tbaa !114
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !112  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call fastcc void @ps_dimension_done(ptr noundef nonnull %i.e, ptr noundef %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call fastcc void @ps_dimension_done(ptr noundef nonnull %i.f, ptr noundef %i.d)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.g, align 8, !tbaa !115
  store ptr null, ptr %i.c, align 8, !tbaa !112
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare hidden ptr @ft_mem_qrealloc(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden i32 @ft_corner_is_flat(i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @psh_hint_table_init(ptr nofree noundef nonnull captures(none) initializes((16, 24)) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = load i32, ptr %1, align 8, !tbaa !118    ; 12 uses
  %i.c = shl i32 %i.b, 1                          ; 2 uses
  %i.d = zext i32 %i.c to i64
  %i.e = call ptr @ft_mem_qrealloc(ptr noundef %3, i64 noundef 8, i64 noundef 0, i64 noundef %i.d, ptr noundef null, ptr noundef nonnull %i.a) #12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !76
  %i.g = load i32, ptr %i.a, align 4, !tbaa !24
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.h = zext i32 %i.b to i64                     ; 4 uses
  %i.i = call ptr @ft_mem_qrealloc(ptr noundef %3, i64 noundef 48, i64 noundef 0, i64 noundef %i.h, ptr noundef null, ptr noundef nonnull %i.a) #12
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !63
  %i.k = load i32, ptr %i.a, align 4, !tbaa !24
  %.not56 = icmp eq i32 %i.k, 0
  br i1 %.not56, label %bb.c, label %.loopexit
end_hunk_1
begin_hunk_2_@psh_hint_table_find_strong_points:bb.a
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !219

.lr.ph:                                           ; preds = %.preheader21, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %.preheader21 ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.16.val, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !77   ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !78
  %i.r = sext i32 %i.q to i64
  %i.s = sub nsw i64 %i.d, %i.r                   ; 2 uses
  %i.t = icmp slt i64 %i.s, %i.a
  %i.u = icmp sgt i64 %i.s, %invariant.op
  %or.cond = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond, label %bb.e, label %bb.d

bb.e:                                             ; preds = %.lr.ph
  %i.v = or i32 %i.f, 528
  store i32 %i.v, ptr %i.e, align 4, !tbaa !53
  %i.w = getelementptr inbounds nuw i8, ptr %.010441, i64 40
  store ptr %i.p, ptr %i.w, align 8, !tbaa !54
  br label %.loopexit

bb.f:                                             ; preds = %bb.c
  %.not117 = icmp eq i32 %i.m, 0
  br i1 %.not117, label %bb.i, label %.preheader19

.preheader19:                                     ; preds = %bb.f
  br i1 %.not46, label %.loopexit, label %.lr.ph29

bb.g:                                             ; preds = %.lr.ph29
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %exitcond68.not = icmp eq i64 %indvars.iv.next65, %wide.trip.count67
  br i1 %exitcond68.not, label %.loopexit, label %.lr.ph29, !llvm.loop !220

.lr.ph29:                                         ; preds = %.preheader19, %bb.g
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %bb.g ], [ 0, %.preheader19 ] ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.16.val, i64 %indvars.iv64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !77   ; 3 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !78
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !99
  %i.ad = sext i32 %i.ac to i64
  %i.ae = add nsw i64 %i.aa, %i.ad
  %i.af = sub i64 %i.d, %i.ae                     ; 2 uses
  %i.ag = icmp slt i64 %i.af, %i.a
  %i.ah = icmp sgt i64 %i.af, %invariant.op
  %or.cond126 = select i1 %i.ag, i1 %i.ah, i1 false
  br i1 %or.cond126, label %bb.h, label %bb.g

bb.h:                                             ; preds = %.lr.ph29
  %i.ai = or i32 %i.f, 1040
  store i32 %i.ai, ptr %i.e, align 4, !tbaa !53
  %i.aj = getelementptr inbounds nuw i8, ptr %.010441, i64 40
  store ptr %i.y, ptr %i.aj, align 8, !tbaa !54
  br label %.loopexit

bb.i:                                             ; preds = %bb.f
  %i.ak = and i32 %i.f, 64
  %.not118 = icmp eq i32 %i.ak, 0
  br i1 %.not118, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = and i32 %i.f, %.
  %.not119 = icmp eq i32 %i.al, 0
  br i1 %.not119, label %bb.l, label %.preheader17

.preheader17:                                     ; preds = %bb.j
  br i1 %.not46, label %.loopexit, label %.lr.ph32

bb.k:                                             ; preds = %.lr.ph32
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %exitcond73.not = icmp eq i64 %indvars.iv.next70, %wide.trip.count72
  br i1 %exitcond73.not, label %.loopexit16, label %.lr.ph32, !llvm.loop !221

.lr.ph32:                                         ; preds = %.preheader17, %bb.k
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %bb.k ], [ 0, %.preheader17 ] ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.16.val, i64 %indvars.iv69
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !77 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !78
  %i.ap = sext i32 %i.ao to i64
  %i.aq = sub nsw i64 %i.d, %i.ap                 ; 2 uses
  %i.ar = icmp slt i64 %i.aq, %i.a
  %i.as = icmp sgt i64 %i.aq, %invariant.op
  %or.cond129 = select i1 %i.ar, i1 %i.as, i1 false
  br i1 %or.cond129, label %.loopexit16.sink.split, label %bb.k

bb.l:                                             ; preds = %bb.j
  %i.at = and i32 %i.f, %.127
  %.not120 = icmp eq i32 %i.at, 0
  %brmerge = select i1 %.not120, i1 true, i1 %.not46
  br i1 %brmerge, label %.loopexit16, label %.lr.ph35

bb.m:                                             ; preds = %.lr.ph35
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count77
  br i1 %exitcond78.not, label %.loopexit16, label %.lr.ph35, !llvm.loop !222

.lr.ph35:                                         ; preds = %bb.l, %bb.m
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.16.val, i64 %indvars.iv74
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !77 ; 3 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !78
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !99
  %i.ba = sext i32 %i.az to i64
  %i.bb = add nsw i64 %i.ax, %i.ba
  %i.bc = sub i64 %i.d, %i.bb                     ; 2 uses
  %i.bd = icmp slt i64 %i.bc, %i.a
  %i.be = icmp sgt i64 %i.bc, %invariant.op
  %or.cond131 = select i1 %i.bd, i1 %i.be, i1 false
  br i1 %or.cond131, label %.loopexit16.sink.split, label %bb.m

.loopexit16.sink.split:                           ; preds = %.lr.ph32, %.lr.ph35
  %.lcssa96.sink = phi ptr [ %i.av, %.lr.ph35 ], [ %i.an, %.lr.ph32 ]
  %.sink100 = phi i32 [ 1040, %.lr.ph35 ], [ 528, %.lr.ph32 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.010441, i64 40
  store ptr %.lcssa96.sink, ptr %i.bf, align 8, !tbaa !54
  %i.bg = or i32 %i.f, %.sink100
  store i32 %i.bg, ptr %i.e, align 4, !tbaa !53
  br label %.loopexit16

.loopexit16:                                      ; preds = %bb.k, %bb.m, %.loopexit16.sink.split, %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %.010441, i64 40 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !54
  %.not121 = icmp ne ptr %i.bi, null
  %brmerge45 = select i1 %.not121, i1 true, i1 %.not46
  br i1 %brmerge45, label %.loopexit, label %.lr.ph38

.lr.ph38:                                         ; preds = %.loopexit16, %bb.p
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %bb.p ], [ 0, %.loopexit16 ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.16.val, i64 %indvars.iv79
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !77 ; 3 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !78 ; 2 uses
  %i.bm = sext i32 %i.bl to i64
  %.not122 = icmp slt i64 %i.d, %i.bm
  br i1 %.not122, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.lr.ph38
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !99
  %i.bp = add i32 %i.bo, %i.bl
  %i.bq = sext i32 %i.bp to i64
  %.not123 = icmp sgt i64 %i.d, %i.bq
  br i1 %.not123, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %i.bk, ptr %i.bh, align 8, !tbaa !54
  br label %.loopexit

bb.p:                                             ; preds = %bb.n, %.lr.ph38
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %exitcond83.not = icmp eq i64 %indvars.iv.next80, %wide.trip.count82
  br i1 %exitcond83.not, label %.loopexit, label %.lr.ph38, !llvm.loop !223

.loopexit:                                        ; preds = %bb.d, %bb.g, %bb.p, %.preheader17, %.loopexit16, %.preheader21, %.preheader19, %bb.o, %bb.h, %bb.e, %bb.i, %bb.b
  %i.br = add i32 %.010540, -1                    ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.010441, i64 72
  %.not = icmp eq i32 %i.br, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !224

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void
}

declare hidden void @ft_mem_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal nonnull ptr @pshinter_get_globals_funcs(ptr nofree noundef readnone captures(ret: address, provenance) %0) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal nonnull ptr @pshinter_get_t1_funcs(ptr nofree noundef readnone captures(ret: address, provenance) %0) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal nonnull ptr @pshinter_get_t2_funcs(ptr nofree noundef readnone captures(ret: address, provenance) %0) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal i32 @psh_globals_new(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = call ptr @ft_mem_qalloc(ptr noundef %0, i64 noundef 3952, ptr noundef nonnull %i.a) #12 ; 14 uses
  %i.c = load i32, ptr %i.a, align 4, !tbaa !24   ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %i.b, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 424
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.f = load i16, ptr %i.e, align 8, !tbaa !28
  %i.g = zext i16 %i.f to i32
  store i32 %i.g, ptr %i.d, align 8, !tbaa !93
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.i = load i8, ptr %i.h, align 4, !tbaa !238   ; 3 uses
  %i.j = zext i8 %i.i to i32                      ; 4 uses
  %.not76105 = icmp eq i8 %i.i, 0
  br i1 %.not76105, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 448 ; 2 uses
  %xtraiter = and i32 %i.j, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.072108.prol = phi ptr [ %i.o, %.lr.ph.prol ], [ %i.l, %.lr.ph.preheader ] ; 2 uses
  %.073107.prol = phi ptr [ %i.p, %.lr.ph.prol ], [ %i.k, %.lr.ph.preheader ] ; 2 uses
  %.074106.prol = phi i32 [ %i.q, %.lr.ph.prol ], [ %i.j, %.lr.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.m = load i16, ptr %.073107.prol, align 2, !tbaa !28
  %i.n = sext i16 %i.m to i32
  store i32 %i.n, ptr %.072108.prol, align 8, !tbaa !93
  %i.o = getelementptr inbounds nuw i8, ptr %.072108.prol, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.073107.prol, i64 2 ; 2 uses
  %i.q = add nsw i32 %.074106.prol, -1            ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !225

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.072108.unr = phi ptr [ %i.l, %.lr.ph.preheader ], [ %i.o, %.lr.ph.prol ]
  %.073107.unr = phi ptr [ %i.k, %.lr.ph.preheader ], [ %i.p, %.lr.ph.prol ]
  %.074106.unr = phi i32 [ %i.j, %.lr.ph.preheader ], [ %i.q, %.lr.ph.prol ]
  %i.r = icmp ult i8 %i.i, 8
  br i1 %i.r, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.072108 = phi ptr [ %i.aw, %.lr.ph ], [ %.072108.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.073107 = phi ptr [ %i.ax, %.lr.ph ], [ %.073107.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.074106 = phi i32 [ %i.ay, %.lr.ph ], [ %.074106.unr, %.lr.ph.prol.loopexit ]
  %i.s = load i16, ptr %.073107, align 2, !tbaa !28
  %i.t = sext i16 %i.s to i32
  store i32 %i.t, ptr %.072108, align 8, !tbaa !93
  %i.u = getelementptr inbounds nuw i8, ptr %.072108, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %.073107, i64 2
  %i.w = load i16, ptr %i.v, align 2, !tbaa !28
  %i.x = sext i16 %i.w to i32
  store i32 %i.x, ptr %i.u, align 8, !tbaa !93
  %i.y = getelementptr inbounds nuw i8, ptr %.072108, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %.073107, i64 4
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !28
  %i.ab = sext i16 %i.aa to i32
  store i32 %i.ab, ptr %i.y, align 8, !tbaa !93
  %i.ac = getelementptr inbounds nuw i8, ptr %.072108, i64 72
  %i.ad = getelementptr inbounds nuw i8, ptr %.073107, i64 6
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !28
  %i.af = sext i16 %i.ae to i32
  store i32 %i.af, ptr %i.ac, align 8, !tbaa !93
  %i.ag = getelementptr inbounds nuw i8, ptr %.072108, i64 96
  %i.ah = getelementptr inbounds nuw i8, ptr %.073107, i64 8
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !28
  %i.aj = sext i16 %i.ai to i32
  store i32 %i.aj, ptr %i.ag, align 8, !tbaa !93
  %i.ak = getelementptr inbounds nuw i8, ptr %.072108, i64 120
  %i.al = getelementptr inbounds nuw i8, ptr %.073107, i64 10
  %i.am = load i16, ptr %i.al, align 2, !tbaa !28
  %i.an = sext i16 %i.am to i32
  store i32 %i.an, ptr %i.ak, align 8, !tbaa !93
  %i.ao = getelementptr inbounds nuw i8, ptr %.072108, i64 144
  %i.ap = getelementptr inbounds nuw i8, ptr %.073107, i64 12
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !28
  %i.ar = sext i16 %i.aq to i32
  store i32 %i.ar, ptr %i.ao, align 8, !tbaa !93
  %i.as = getelementptr inbounds nuw i8, ptr %.072108, i64 168
  %i.at = getelementptr inbounds nuw i8, ptr %.073107, i64 14
  %i.au = load i16, ptr %i.at, align 2, !tbaa !28
  %i.av = sext i16 %i.au to i32
  store i32 %i.av, ptr %i.as, align 8, !tbaa !93
  %i.aw = getelementptr inbounds nuw i8, ptr %.072108, i64 192
  %i.ax = getelementptr inbounds nuw i8, ptr %.073107, i64 16
  %i.ay = add nsw i32 %.074106, -8                ; 2 uses
  %.not76.7 = icmp eq i32 %i.ay, 0
  br i1 %.not76.7, label %._crit_edge, label %.lr.ph, !llvm.loop !226

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.b
  %3 = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  %i.az = add nuw nsw i32 %i.j, 1
  store i32 %i.az, ptr %3, align 8, !tbaa !123
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 130
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !28
  %i.bd = zext i16 %i.bc to i32
  store i32 %i.bd, ptr %i.ba, align 8, !tbaa !93
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 133
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !239 ; 3 uses
  %i.bg = zext i8 %i.bf to i32                    ; 4 uses
  %.not77109 = icmp eq i8 %i.bf, 0
  br i1 %.not77109, label %._crit_edge115, label %.lr.ph114.preheader

.lr.ph114.preheader:                              ; preds = %._crit_edge
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 162 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %xtraiter196 = and i32 %i.bg, 7                 ; 2 uses
  %lcmp.mod197.not = icmp eq i32 %xtraiter196, 0
  br i1 %lcmp.mod197.not, label %.lr.ph114.prol.loopexit, label %.lr.ph114.prol

.lr.ph114.prol:                                   ; preds = %.lr.ph114.preheader, %.lr.ph114.prol
  %.0112.prol = phi ptr [ %i.bl, %.lr.ph114.prol ], [ %i.bi, %.lr.ph114.preheader ] ; 2 uses
  %.1111.prol = phi ptr [ %i.bm, %.lr.ph114.prol ], [ %i.bh, %.lr.ph114.preheader ] ; 2 uses
  %.175110.prol = phi i32 [ %i.bn, %.lr.ph114.prol ], [ %i.bg, %.lr.ph114.preheader ]
  %prol.iter198 = phi i32 [ %prol.iter198.next, %.lr.ph114.prol ], [ 0, %.lr.ph114.preheader ]
  %i.bj = load i16, ptr %.1111.prol, align 2, !tbaa !28
  %i.bk = sext i16 %i.bj to i32
  store i32 %i.bk, ptr %.0112.prol, align 8, !tbaa !93
  %i.bl = getelementptr inbounds nuw i8, ptr %.0112.prol, i64 24 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.1111.prol, i64 2 ; 2 uses
  %i.bn = add nsw i32 %.175110.prol, -1           ; 2 uses
  %prol.iter198.next = add i32 %prol.iter198, 1   ; 2 uses
  %prol.iter198.cmp.not = icmp eq i32 %prol.iter198.next, %xtraiter196
  br i1 %prol.iter198.cmp.not, label %.lr.ph114.prol.loopexit, label %.lr.ph114.prol, !llvm.loop !227

.lr.ph114.prol.loopexit:                          ; preds = %.lr.ph114.prol, %.lr.ph114.preheader
  %.0112.unr = phi ptr [ %i.bi, %.lr.ph114.preheader ], [ %i.bl, %.lr.ph114.prol ]
  %.1111.unr = phi ptr [ %i.bh, %.lr.ph114.preheader ], [ %i.bm, %.lr.ph114.prol ]
  %.175110.unr = phi i32 [ %i.bg, %.lr.ph114.preheader ], [ %i.bn, %.lr.ph114.prol ]
  %i.bo = icmp ult i8 %i.bf, 8
  br i1 %i.bo, label %._crit_edge115, label %.lr.ph114

.lr.ph114:                                        ; preds = %.lr.ph114.prol.loopexit, %.lr.ph114
  %.0112 = phi ptr [ %i.ct, %.lr.ph114 ], [ %.0112.unr, %.lr.ph114.prol.loopexit ] ; 9 uses
  %.1111 = phi ptr [ %i.cu, %.lr.ph114 ], [ %.1111.unr, %.lr.ph114.prol.loopexit ] ; 9 uses
  %.175110 = phi i32 [ %i.cv, %.lr.ph114 ], [ %.175110.unr, %.lr.ph114.prol.loopexit ]
  %i.bp = load i16, ptr %.1111, align 2, !tbaa !28
  %i.bq = sext i16 %i.bp to i32
  store i32 %i.bq, ptr %.0112, align 8, !tbaa !93
  %i.br = getelementptr inbounds nuw i8, ptr %.0112, i64 24
  %i.bs = getelementptr inbounds nuw i8, ptr %.1111, i64 2
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !28
  %i.bu = sext i16 %i.bt to i32
  store i32 %i.bu, ptr %i.br, align 8, !tbaa !93
  %i.bv = getelementptr inbounds nuw i8, ptr %.0112, i64 48
  %i.bw = getelementptr inbounds nuw i8, ptr %.1111, i64 4
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !28
  %i.by = sext i16 %i.bx to i32
  store i32 %i.by, ptr %i.bv, align 8, !tbaa !93
  %i.bz = getelementptr inbounds nuw i8, ptr %.0112, i64 72
  %i.ca = getelementptr inbounds nuw i8, ptr %.1111, i64 6
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !28
  %i.cc = sext i16 %i.cb to i32
  store i32 %i.cc, ptr %i.bz, align 8, !tbaa !93
  %i.cd = getelementptr inbounds nuw i8, ptr %.0112, i64 96
  %i.ce = getelementptr inbounds nuw i8, ptr %.1111, i64 8
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !28
  %i.cg = sext i16 %i.cf to i32
  store i32 %i.cg, ptr %i.cd, align 8, !tbaa !93
  %i.ch = getelementptr inbounds nuw i8, ptr %.0112, i64 120
  %i.ci = getelementptr inbounds nuw i8, ptr %.1111, i64 10
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !28
  %i.ck = sext i16 %i.cj to i32
  store i32 %i.ck, ptr %i.ch, align 8, !tbaa !93
  %i.cl = getelementptr inbounds nuw i8, ptr %.0112, i64 144
  %i.cm = getelementptr inbounds nuw i8, ptr %.1111, i64 12
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !28
  %i.co = sext i16 %i.cn to i32
  store i32 %i.co, ptr %i.cl, align 8, !tbaa !93
  %i.cp = getelementptr inbounds nuw i8, ptr %.0112, i64 168
  %i.cq = getelementptr inbounds nuw i8, ptr %.1111, i64 14
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !28
  %i.cs = sext i16 %i.cr to i32
  store i32 %i.cs, ptr %i.cp, align 8, !tbaa !93
  %i.ct = getelementptr inbounds nuw i8, ptr %.0112, i64 192
  %i.cu = getelementptr inbounds nuw i8, ptr %.1111, i64 16
  %i.cv = add nsw i32 %.175110, -8                ; 2 uses
  %.not77.7 = icmp eq i32 %i.cv, 0
  br i1 %.not77.7, label %._crit_edge115, label %.lr.ph114, !llvm.loop !228

._crit_edge115:                                   ; preds = %.lr.ph114.prol.loopexit, %.lr.ph114, %._crit_edge
  %4 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cw = add nuw nsw i32 %i.bg, 1
  store i32 %i.cw, ptr %4, align 8, !tbaa !123
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 824 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 8, !tbaa !240
  %i.da = zext i8 %i.cz to i32
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !241
  %i.de = zext i8 %i.dd to i32
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 124 ; 3 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !242
  call fastcc void @psh_blues_set_zones(ptr noundef nonnull %i.cx, i32 noundef %i.da, ptr noundef nonnull %i.db, i32 noundef %i.de, ptr noundef nonnull %i.df, i32 noundef %i.dh, i32 noundef 0)
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.dj = load i8, ptr %i.di, align 2, !tbaa !243
  %i.dk = zext i8 %i.dj to i32
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 11 ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !244
  %i.do = zext i8 %i.dn to i32
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.dq = load i32, ptr %i.dg, align 4, !tbaa !242
  call fastcc void @psh_blues_set_zones(ptr noundef nonnull %i.cx, i32 noundef %i.dk, ptr noundef nonnull %i.dl, i32 noundef %i.do, ptr noundef nonnull %i.dp, i32 noundef %i.dq, i32 noundef 1)
  %i.dr = load i8, ptr %i.cy, align 8, !tbaa !240 ; 3 uses
  %.not.i = icmp eq i8 %i.dr, 0
  br i1 %.not.i, label %psh_calc_max_height.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge115
  %i.ds = zext i8 %i.dr to i64                    ; 2 uses
  %i.dt = add nsw i64 %i.ds, -1
  %i.du = lshr i64 %i.dt, 1
  %i.dv = add nuw i64 %i.du, 1                    ; 2 uses
  %min.iters.check = icmp ult i8 %i.dr, 15
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.dv, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i16> [ splat (i16 1), %vector.ph ], [ %i.ec, %vector.body ]
  %vec.phi120 = phi <4 x i16> [ splat (i16 1), %vector.ph ], [ %i.ed, %vector.body ]
  %i.dw = shl nuw i64 %index, 1                   ; 2 uses
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.dw
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.dw
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %wide.vec = load <8 x i16>, ptr %i.dx, align 2, !tbaa !28 ; 2 uses
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec121 = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec122 = load <8 x i16>, ptr %i.dz, align 2, !tbaa !28 ; 2 uses
  %strided.vec123 = shufflevector <8 x i16> %wide.vec122, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec124 = shufflevector <8 x i16> %wide.vec122, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ea = sub <4 x i16> %strided.vec121, %strided.vec
  %i.eb = sub <4 x i16> %strided.vec124, %strided.vec123
  %i.ec = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.ea, <4 x i16> %vec.phi) ; 2 uses
  %i.ed = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.eb, <4 x i16> %vec.phi120) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ee = icmp eq i64 %index.next, %n.vec
  br i1 %i.ee, label %middle.block, label %vector.body, !llvm.loop !229

middle.block:                                     ; preds = %vector.body
  %5 = shl i64 %n.vec, 1
  %rdx.minmax = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.ec, <4 x i16> %i.ed)
  %i.ef = call i16 @llvm.vector.reduce.smax.v4i16(<4 x i16> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.dv, %n.vec
  br i1 %cmp.n, label %psh_calc_max_height.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %5, %middle.block ]
  %.01011.i.ph = phi i16 [ 1, %.lr.ph.preheader.i ], [ %i.ef, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01011.i = phi i16 [ %spec.select.i, %.lr.ph.i ], [ %.01011.i.ph, %.lr.ph.i.preheader ]
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %indvars.iv.i ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 2
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !28
  %i.ej = load i16, ptr %i.eg, align 2, !tbaa !28
  %i.ek = sub i16 %i.ei, %i.ej
  %spec.select.i = call i16 @llvm.smax.i16(i16 %i.ek, i16 %.01011.i) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.el = icmp samesign ult i64 %indvars.iv.next.i, %i.ds
  br i1 %i.el, label %.lr.ph.i, label %psh_calc_max_height.exit, !llvm.loop !230

psh_calc_max_height.exit:                         ; preds = %.lr.ph.i, %middle.block, %._crit_edge115
  %.010.lcssa.i = phi i16 [ 1, %._crit_edge115 ], [ %i.ef, %middle.block ], [ %spec.select.i, %.lr.ph.i ] ; 3 uses
  %i.em = load i8, ptr %i.dc, align 1, !tbaa !241 ; 3 uses
  %.not.i78 = icmp eq i8 %i.em, 0
  br i1 %.not.i78, label %psh_calc_max_height.exit86, label %.lr.ph.preheader.i79

.lr.ph.preheader.i79:                             ; preds = %psh_calc_max_height.exit
  %i.en = zext i8 %i.em to i64                    ; 2 uses
  %i.eo = add nsw i64 %i.en, -1
  %i.ep = lshr i64 %i.eo, 1
  %i.eq = add nuw i64 %i.ep, 1                    ; 2 uses
  %min.iters.check126 = icmp ult i8 %i.em, 15
  br i1 %min.iters.check126, label %.lr.ph.i80.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %.lr.ph.preheader.i79
  %n.vec128 = and i64 %i.eq, -8                   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i16> poison, i16 %.010.lcssa.i, i64 0
  %broadcast.splat = shufflevector <4 x i16> %broadcast.splatinsert, <4 x i16> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body129

vector.body129:                                   ; preds = %vector.body129, %vector.ph127
  %index130 = phi i64 [ 0, %vector.ph127 ], [ %index.next139, %vector.body129 ] ; 2 uses
  %vec.phi131 = phi <4 x i16> [ %broadcast.splat, %vector.ph127 ], [ %i.ex, %vector.body129 ]
  %vec.phi132 = phi <4 x i16> [ %broadcast.splat, %vector.ph127 ], [ %i.ey, %vector.body129 ]
  %i.er = shl nuw i64 %index130, 1                ; 2 uses
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.df, i64 %i.er
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %i.df, i64 %i.er
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %wide.vec133 = load <8 x i16>, ptr %i.es, align 2, !tbaa !28 ; 2 uses
  %strided.vec134 = shufflevector <8 x i16> %wide.vec133, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec135 = shufflevector <8 x i16> %wide.vec133, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec136 = load <8 x i16>, ptr %i.eu, align 2, !tbaa !28 ; 2 uses
  %strided.vec137 = shufflevector <8 x i16> %wide.vec136, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec138 = shufflevector <8 x i16> %wide.vec136, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ev = sub <4 x i16> %strided.vec135, %strided.vec134
  %i.ew = sub <4 x i16> %strided.vec138, %strided.vec137
  %i.ex = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.ev, <4 x i16> %vec.phi131) ; 2 uses
  %i.ey = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.ew, <4 x i16> %vec.phi132) ; 2 uses
  %index.next139 = add nuw i64 %index130, 8       ; 2 uses
  %i.ez = icmp eq i64 %index.next139, %n.vec128
  br i1 %i.ez, label %middle.block140, label %vector.body129, !llvm.loop !231

middle.block140:                                  ; preds = %vector.body129
  %6 = shl i64 %n.vec128, 1
  %rdx.minmax141 = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.ex, <4 x i16> %i.ey)
  %i.fa = call i16 @llvm.vector.reduce.smax.v4i16(<4 x i16> %rdx.minmax141) ; 2 uses
  %cmp.n142 = icmp eq i64 %i.eq, %n.vec128
  br i1 %cmp.n142, label %psh_calc_max_height.exit86, label %.lr.ph.i80.preheader

.lr.ph.i80.preheader:                             ; preds = %.lr.ph.preheader.i79, %middle.block140
  %indvars.iv.i81.ph = phi i64 [ 0, %.lr.ph.preheader.i79 ], [ %6, %middle.block140 ]
  %.01011.i82.ph = phi i16 [ %.010.lcssa.i, %.lr.ph.preheader.i79 ], [ %i.fa, %middle.block140 ]
  br label %.lr.ph.i80

.lr.ph.i80:                                       ; preds = %.lr.ph.i80.preheader, %.lr.ph.i80
  %indvars.iv.i81 = phi i64 [ %indvars.iv.next.i84, %.lr.ph.i80 ], [ %indvars.iv.i81.ph, %.lr.ph.i80.preheader ] ; 2 uses
  %.01011.i82 = phi i16 [ %spec.select.i83, %.lr.ph.i80 ], [ %.01011.i82.ph, %.lr.ph.i80.preheader ]
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.df, i64 %indvars.iv.i81 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 2
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !28
  %i.fe = load i16, ptr %i.fb, align 2, !tbaa !28
  %i.ff = sub i16 %i.fd, %i.fe
  %spec.select.i83 = call i16 @llvm.smax.i16(i16 %i.ff, i16 %.01011.i82) ; 2 uses
  %indvars.iv.next.i84 = add nuw nsw i64 %indvars.iv.i81, 2 ; 2 uses
  %i.fg = icmp samesign ult i64 %indvars.iv.next.i84, %i.en
  br i1 %i.fg, label %.lr.ph.i80, label %psh_calc_max_height.exit86, !llvm.loop !232

psh_calc_max_height.exit86:                       ; preds = %.lr.ph.i80, %middle.block140, %psh_calc_max_height.exit
  %.010.lcssa.i85 = phi i16 [ %.010.lcssa.i, %psh_calc_max_height.exit ], [ %i.fa, %middle.block140 ], [ %spec.select.i83, %.lr.ph.i80 ] ; 3 uses
  %i.fh = load i8, ptr %i.di, align 2, !tbaa !243 ; 3 uses
  %.not.i87 = icmp eq i8 %i.fh, 0
  br i1 %.not.i87, label %psh_calc_max_height.exit95, label %.lr.ph.preheader.i88

.lr.ph.preheader.i88:                             ; preds = %psh_calc_max_height.exit86
  %i.fi = zext i8 %i.fh to i64                    ; 2 uses
  %i.fj = add nsw i64 %i.fi, -1
  %i.fk = lshr i64 %i.fj, 1
  %i.fl = add nuw i64 %i.fk, 1                    ; 2 uses
  %min.iters.check146 = icmp ult i8 %i.fh, 15
  br i1 %min.iters.check146, label %.lr.ph.i89.preheader, label %vector.ph147

vector.ph147:                                     ; preds = %.lr.ph.preheader.i88
  %n.vec148 = and i64 %i.fl, -8                   ; 3 uses
  %broadcast.splatinsert149 = insertelement <4 x i16> poison, i16 %.010.lcssa.i85, i64 0
  %broadcast.splat150 = shufflevector <4 x i16> %broadcast.splatinsert149, <4 x i16> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body151

vector.body151:                                   ; preds = %vector.body151, %vector.ph147
  %index152 = phi i64 [ 0, %vector.ph147 ], [ %index.next161, %vector.body151 ] ; 2 uses
  %vec.phi153 = phi <4 x i16> [ %broadcast.splat150, %vector.ph147 ], [ %i.fs, %vector.body151 ]
  %vec.phi154 = phi <4 x i16> [ %broadcast.splat150, %vector.ph147 ], [ %i.ft, %vector.body151 ]
  %i.fm = shl nuw i64 %index152, 1                ; 2 uses
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.dl, i64 %i.fm
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %i.dl, i64 %i.fm
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %wide.vec155 = load <8 x i16>, ptr %i.fn, align 2, !tbaa !28 ; 2 uses
  %strided.vec156 = shufflevector <8 x i16> %wide.vec155, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec157 = shufflevector <8 x i16> %wide.vec155, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec158 = load <8 x i16>, ptr %i.fp, align 2, !tbaa !28 ; 2 uses
  %strided.vec159 = shufflevector <8 x i16> %wide.vec158, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec160 = shufflevector <8 x i16> %wide.vec158, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.fq = sub <4 x i16> %strided.vec157, %strided.vec156
  %i.fr = sub <4 x i16> %strided.vec160, %strided.vec159
  %i.fs = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.fq, <4 x i16> %vec.phi153) ; 2 uses
  %i.ft = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.fr, <4 x i16> %vec.phi154) ; 2 uses
  %index.next161 = add nuw i64 %index152, 8       ; 2 uses
  %i.fu = icmp eq i64 %index.next161, %n.vec148
  br i1 %i.fu, label %middle.block162, label %vector.body151, !llvm.loop !233

middle.block162:                                  ; preds = %vector.body151
  %7 = shl i64 %n.vec148, 1
  %rdx.minmax163 = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.fs, <4 x i16> %i.ft)
  %i.fv = call i16 @llvm.vector.reduce.smax.v4i16(<4 x i16> %rdx.minmax163) ; 2 uses
  %cmp.n164 = icmp eq i64 %i.fl, %n.vec148
  br i1 %cmp.n164, label %psh_calc_max_height.exit95, label %.lr.ph.i89.preheader

.lr.ph.i89.preheader:                             ; preds = %.lr.ph.preheader.i88, %middle.block162
  %indvars.iv.i90.ph = phi i64 [ 0, %.lr.ph.preheader.i88 ], [ %7, %middle.block162 ]
  %.01011.i91.ph = phi i16 [ %.010.lcssa.i85, %.lr.ph.preheader.i88 ], [ %i.fv, %middle.block162 ]
  br label %.lr.ph.i89

.lr.ph.i89:                                       ; preds = %.lr.ph.i89.preheader, %.lr.ph.i89
  %indvars.iv.i90 = phi i64 [ %indvars.iv.next.i93, %.lr.ph.i89 ], [ %indvars.iv.i90.ph, %.lr.ph.i89.preheader ] ; 2 uses
  %.01011.i91 = phi i16 [ %spec.select.i92, %.lr.ph.i89 ], [ %.01011.i91.ph, %.lr.ph.i89.preheader ]
  %i.fw = getelementptr inbounds nuw [2 x i8], ptr %i.dl, i64 %indvars.iv.i90 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 2
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !28
  %i.fz = load i16, ptr %i.fw, align 2, !tbaa !28
  %i.ga = sub i16 %i.fy, %i.fz
  %spec.select.i92 = call i16 @llvm.smax.i16(i16 %i.ga, i16 %.01011.i91) ; 2 uses
  %indvars.iv.next.i93 = add nuw nsw i64 %indvars.iv.i90, 2 ; 2 uses
  %i.gb = icmp samesign ult i64 %indvars.iv.next.i93, %i.fi
  br i1 %i.gb, label %.lr.ph.i89, label %psh_calc_max_height.exit95, !llvm.loop !234

psh_calc_max_height.exit95:                       ; preds = %.lr.ph.i89, %middle.block162, %psh_calc_max_height.exit86
  %.010.lcssa.i94 = phi i16 [ %.010.lcssa.i85, %psh_calc_max_height.exit86 ], [ %i.fv, %middle.block162 ], [ %spec.select.i92, %.lr.ph.i89 ] ; 3 uses
  %i.gc = load i8, ptr %i.dm, align 1, !tbaa !244 ; 3 uses
  %.not.i96 = icmp eq i8 %i.gc, 0
  br i1 %.not.i96, label %psh_calc_max_height.exit104, label %.lr.ph.preheader.i97

.lr.ph.preheader.i97:                             ; preds = %psh_calc_max_height.exit95
  %i.gd = zext i8 %i.gc to i64                    ; 2 uses
  %i.ge = add nsw i64 %i.gd, -1
  %i.gf = lshr i64 %i.ge, 1
  %i.gg = add nuw i64 %i.gf, 1                    ; 2 uses
  %min.iters.check168 = icmp ult i8 %i.gc, 15
  br i1 %min.iters.check168, label %.lr.ph.i98.preheader, label %vector.ph169

vector.ph169:                                     ; preds = %.lr.ph.preheader.i97
  %n.vec170 = and i64 %i.gg, -8                   ; 3 uses
  %broadcast.splatinsert171 = insertelement <4 x i16> poison, i16 %.010.lcssa.i94, i64 0
  %broadcast.splat172 = shufflevector <4 x i16> %broadcast.splatinsert171, <4 x i16> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body173

vector.body173:                                   ; preds = %vector.body173, %vector.ph169
  %index174 = phi i64 [ 0, %vector.ph169 ], [ %index.next183, %vector.body173 ] ; 2 uses
  %vec.phi175 = phi <4 x i16> [ %broadcast.splat172, %vector.ph169 ], [ %i.gn, %vector.body173 ]
  %vec.phi176 = phi <4 x i16> [ %broadcast.splat172, %vector.ph169 ], [ %i.go, %vector.body173 ]
  %i.gh = shl nuw i64 %index174, 1                ; 2 uses
  %i.gi = getelementptr inbounds nuw [2 x i8], ptr %i.dp, i64 %i.gh
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %i.dp, i64 %i.gh
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %wide.vec177 = load <8 x i16>, ptr %i.gi, align 2, !tbaa !28 ; 2 uses
  %strided.vec178 = shufflevector <8 x i16> %wide.vec177, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec179 = shufflevector <8 x i16> %wide.vec177, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec180 = load <8 x i16>, ptr %i.gk, align 2, !tbaa !28 ; 2 uses
  %strided.vec181 = shufflevector <8 x i16> %wide.vec180, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec182 = shufflevector <8 x i16> %wide.vec180, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.gl = sub <4 x i16> %strided.vec179, %strided.vec178
  %i.gm = sub <4 x i16> %strided.vec182, %strided.vec181
  %i.gn = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.gl, <4 x i16> %vec.phi175) ; 2 uses
  %i.go = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.gm, <4 x i16> %vec.phi176) ; 2 uses
  %index.next183 = add nuw i64 %index174, 8       ; 2 uses
  %i.gp = icmp eq i64 %index.next183, %n.vec170
  br i1 %i.gp, label %middle.block184, label %vector.body173, !llvm.loop !235

middle.block184:                                  ; preds = %vector.body173
  %8 = shl i64 %n.vec170, 1
  %rdx.minmax185 = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.gn, <4 x i16> %i.go)
  %i.gq = call i16 @llvm.vector.reduce.smax.v4i16(<4 x i16> %rdx.minmax185) ; 2 uses
  %cmp.n186 = icmp eq i64 %i.gg, %n.vec170
  br i1 %cmp.n186, label %psh_calc_max_height.exit104, label %.lr.ph.i98.preheader

.lr.ph.i98.preheader:                             ; preds = %.lr.ph.preheader.i97, %middle.block184
  %indvars.iv.i99.ph = phi i64 [ 0, %.lr.ph.preheader.i97 ], [ %8, %middle.block184 ]
  %.01011.i100.ph = phi i16 [ %.010.lcssa.i94, %.lr.ph.preheader.i97 ], [ %i.gq, %middle.block184 ]
  br label %.lr.ph.i98

.lr.ph.i98:                                       ; preds = %.lr.ph.i98.preheader, %.lr.ph.i98
  %indvars.iv.i99 = phi i64 [ %indvars.iv.next.i102, %.lr.ph.i98 ], [ %indvars.iv.i99.ph, %.lr.ph.i98.preheader ] ; 2 uses
  %.01011.i100 = phi i16 [ %spec.select.i101, %.lr.ph.i98 ], [ %.01011.i100.ph, %.lr.ph.i98.preheader ]
  %i.gr = getelementptr inbounds nuw [2 x i8], ptr %i.dp, i64 %indvars.iv.i99 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 2
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !28
  %i.gu = load i16, ptr %i.gr, align 2, !tbaa !28
  %i.gv = sub i16 %i.gt, %i.gu
  %spec.select.i101 = call i16 @llvm.smax.i16(i16 %i.gv, i16 %.01011.i100) ; 2 uses
  %indvars.iv.next.i102 = add nuw nsw i64 %indvars.iv.i99, 2 ; 2 uses
  %i.gw = icmp samesign ult i64 %indvars.iv.next.i102, %i.gd
  br i1 %i.gw, label %.lr.ph.i98, label %psh_calc_max_height.exit104, !llvm.loop !236

psh_calc_max_height.exit104:                      ; preds = %.lr.ph.i98, %middle.block184, %psh_calc_max_height.exit95
  %.010.lcssa.i103 = phi i16 [ %.010.lcssa.i94, %psh_calc_max_height.exit95 ], [ %i.gq, %middle.block184 ], [ %spec.select.i101, %.lr.ph.i98 ] ; 2 uses
  %i.gx = zext nneg i16 %.010.lcssa.i103 to i64
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !245 ; 2 uses
  %i.ha = mul i64 %i.gz, %i.gx                    ; 2 uses
  %i.hb = ashr i64 %i.ha, 63
  %i.hc = add i64 %i.ha, 32768
  %i.hd = add i64 %i.hc, %i.hb
  %i.he = icmp slt i64 %i.hd, 65536000
  br i1 %i.he, label %bb.c, label %bb.d

bb.c:                                             ; preds = %psh_calc_max_height.exit104
  %i.hf = shl nsw i64 %i.gz, 3
  %i.hg = sdiv i64 %i.hf, 125
  br label %bb.e

bb.d:                                             ; preds = %psh_calc_max_height.exit104
  %.rhs.trunc = zext nneg i16 %.010.lcssa.i103 to i32
  %i.hh = udiv i32 4194304, %.rhs.trunc
  %.sext = zext nneg i32 %i.hh to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sext.sink = phi i64 [ %i.hg, %bb.c ], [ %.sext, %bb.d ]
  %i.hi = getelementptr inbounds nuw i8, ptr %i.b, i64 3928
  store i64 %.sext.sink, ptr %i.hi, align 8, !tbaa !246
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.hk = load i32, ptr %i.hj, align 8, !tbaa !247
  %i.hl = getelementptr inbounds nuw i8, ptr %i.b, i64 3936
  store i32 %i.hk, ptr %i.hl, align 8, !tbaa !248
  %i.hm = load i32, ptr %i.dg, align 4, !tbaa !242
  %i.hn = getelementptr inbounds nuw i8, ptr %i.b, i64 3944
  store i32 %i.hm, ptr %i.hn, align 8, !tbaa !249
  %i.ho = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  %i.hp = getelementptr inbounds nuw i8, ptr %i.b, i64 808
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ho, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hp, i8 0, i64 16, i1 false)
  %.pre = load i32, ptr %i.a, align 4, !tbaa !24
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %i.hq = phi i32 [ %.pre, %bb.e ], [ %i.c, %bb.a ]
  store ptr %i.b, ptr %2, align 8, !tbaa !250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %i.hq
}

; Function Attrs: nounwind uwtable
define internal void @psh_globals_destroy(ptr noundef %0) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !123
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i32 0, ptr %i.c, align 8, !tbaa !123
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 824
  store i32 0, ptr %i.d, align 8, !tbaa !45
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i32 0, ptr %i.e, align 8, !tbaa !251
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2376
  store i32 0, ptr %i.f, align 8, !tbaa !252
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3152
  store i32 0, ptr %i.g, align 8, !tbaa !253
  tail call void @ft_mem_free(ptr noundef %i.a, ptr noundef nonnull %0) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare hidden ptr @ft_mem_qalloc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @psh_blues_set_zones(ptr nofree noundef %0, i32 noundef range(i32 0, 256) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 0, 256) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #3 {
bb.a:
  %.not = icmp eq i32 %6, 0                       ; 2 uses
  %.092.idx = select i1 %.not, i64 0, i64 1552
  %.092 = getelementptr inbounds nuw i8, ptr %0, i64 %.092.idx ; 8 uses
  %.091.v = select i1 %.not, i64 776, i64 2328    ; 2 uses
  %.091 = getelementptr inbounds nuw i8, ptr %0, i64 %.091.v ; 9 uses
  store i32 0, ptr %.092, align 8, !tbaa !80
  store i32 0, ptr %.091, align 8, !tbaa !80
  %i.a = icmp samesign ugt i32 %1, 1
  br i1 %i.a, label %.lr.ph21.i, label %psh_blues_set_zones_0.exit

.lr.ph21.i:                                       ; preds = %bb.a, %bb.k
  %.019.i = phi i32 [ %i.y, %bb.k ], [ %1, %bb.a ]
  %or.cond.not.not.i = phi i1 [ true, %bb.k ], [ false, %bb.a ] ; 5 uses
  %.06217.i = phi i32 [ %.163.i, %bb.k ], [ 0, %bb.a ] ; 7 uses
  %.06416.i = phi i32 [ %.165.i, %bb.k ], [ 0, %bb.a ] ; 7 uses
  %.06615.i = phi ptr [ %i.x, %bb.k ], [ %2, %bb.a ] ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.06615.i, i64 2 ; 2 uses
  %..06615.i = select i1 %or.cond.not.not.i, ptr %i.b, ptr %.06615.i
  %.06615.i. = select i1 %or.cond.not.not.i, ptr %.06615.i, ptr %i.b
  %.06416.i..06217.i = select i1 %or.cond.not.not.i, i32 %.06416.i, i32 %.06217.i ; 3 uses
  %.092..091 = select i1 %or.cond.not.not.i, ptr %.092, ptr %.091 ; 2 uses
  %.sink39.in.i = load i16, ptr %.06615.i., align 2, !tbaa !28
  %.sink39.i = sext i16 %.sink39.in.i to i32      ; 4 uses
  %.sink40.i = load i16, ptr %..06615.i, align 2, !tbaa !28
  %i.c = sext i16 %.sink40.i to i32
  %i.d = sub nsw i32 %i.c, %.sink39.i             ; 6 uses
  %.056.i = getelementptr inbounds nuw i8, ptr %.092..091, i64 8 ; 2 uses
  %.not3.i = icmp eq i32 %.06416.i..06217.i, 0
  br i1 %.not3.i, label %._crit_edge14.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph21.i, %bb.h
  %indvar = phi i64 [ %indvar.next, %bb.h ], [ 0, %.lr.ph21.i ] ; 3 uses
  %.0555.i = phi ptr [ %i.n, %bb.h ], [ %.056.i, %.lr.ph21.i ] ; 5 uses
  %.14.i = phi i32 [ %i.m, %bb.h ], [ %.06416.i..06217.i, %.lr.ph21.i ]
  %i.e = load i32, ptr %.0555.i, align 8, !tbaa !47 ; 2 uses
  %i.f = icmp sgt i32 %i.e, %.sink39.i
  br i1 %i.f, label %.lr.ph13.preheader.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = icmp eq i32 %i.e, %.sink39.i
  br i1 %i.g, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.0555.i, i64 4 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !95   ; 2 uses
  %i.j = icmp slt i32 %i.d, 0
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = icmp slt i32 %i.d, %i.i
  br i1 %i.k, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  store i32 %i.d, ptr %i.h, align 4, !tbaa !95
  br label %bb.k

bb.f:                                             ; preds = %bb.c
  %i.l = icmp sgt i32 %i.d, %i.i
  br i1 %i.l, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  store i32 %i.d, ptr %i.h, align 4, !tbaa !95
  br label %bb.k

bb.h:                                             ; preds = %bb.b
  %i.m = add i32 %.14.i, -1                       ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0555.i, i64 48 ; 2 uses
  %.not.i = icmp eq i32 %i.m, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i, label %._crit_edge14.i, label %.lr.ph.i, !llvm.loop !254

.lr.ph13.preheader.i:                             ; preds = %.lr.ph.i
  %i.o = mul nuw nsw i64 %indvar, 48
  %i.p = getelementptr i8, ptr %.092..091, i64 %i.o
  %scevgep = getelementptr i8, ptr %i.p, i64 56
  %i.q = zext i32 %.06416.i..06217.i to i64
  %i.r = mul nuw nsw i64 %i.q, 48
  %i.s = mul nsw i64 %indvar, -48
  %i.t = add i64 %i.s, %i.r
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep, ptr nonnull align 8 %.0555.i, i64 %i.t, i1 false)
  br label %._crit_edge14.i

._crit_edge14.i:                                  ; preds = %bb.h, %.lr.ph13.preheader.i, %.lr.ph21.i
  %.055.lcssa33.i = phi ptr [ %.056.i, %.lr.ph21.i ], [ %.0555.i, %.lr.ph13.preheader.i ], [ %i.n, %bb.h ] ; 2 uses
  store i32 %.sink39.i, ptr %.055.lcssa33.i, align 8, !tbaa !47
  %i.u = getelementptr inbounds nuw i8, ptr %.055.lcssa33.i, i64 4
  store i32 %i.d, ptr %i.u, align 4, !tbaa !95
  br i1 %or.cond.not.not.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge14.i
  %i.v = add i32 %.06416.i, 1
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge14.i
  %i.w = add i32 %.06217.i, 1
  br label %bb.k

end_hunk_2
begin_hunk_3_@ps_hints_t1reset:bb.a
ps_dimension_reset_mask.exit30:                   ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  store i32 %i.at, ptr %i.am, align 8, !tbaa !68
  br label %bb.o

bb.n:                                             ; preds = %ps_dimension_reset_mask.exit, %bb.b, %ps_dimension_reset_mask.exit30
  %.014.ph = phi i32 [ %i.be, %ps_dimension_reset_mask.exit30 ], [ 6, %bb.b ], [ %i.aa, %ps_dimension_reset_mask.exit ]
  store i32 %.014.ph, ptr %i.c, align 8, !tbaa !115
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.a, %bb.n
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @t1_hints_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = tail call i32 @ps_hints_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ps_dimension_end(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %3 = alloca %struct.PS_MaskRec_, align 8        ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !127  ; 2 uses
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %ps_dimension_end_mask.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !131
  %i.f = zext i32 %i.c to i64
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.f
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -8
  store i32 %1, ptr %i.h, align 8, !tbaa !70
  br label %ps_dimension_end_mask.exit

ps_dimension_end_mask.exit:                       ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !68   ; 4 uses
  %.not.i3 = icmp eq i32 %i.j, 0
  br i1 %.not.i3, label %ps_mask_table_merge_all.exit, label %.lr.ph43.i

.lr.ph43.i:                                       ; preds = %ps_dimension_end_mask.exit
  %.01740.i = add i32 %i.j, -1
  %i.k = getelementptr i8, ptr %0, i64 40
  br label %bb.c

bb.c:                                             ; preds = %ps_mask_table_merge.exit.thread.i, %.lr.ph43.i
  %i.l = phi i32 [ %i.j, %.lr.ph43.i ], [ %i.dh, %ps_mask_table_merge.exit.thread.i ] ; 2 uses
  %.01742.i = phi i32 [ %.01740.i, %.lr.ph43.i ], [ %.017.i, %ps_mask_table_merge.exit.thread.i ] ; 6 uses
  %.017.in41.i = phi i32 [ %i.j, %.lr.ph43.i ], [ %.01742.i, %ps_mask_table_merge.exit.thread.i ]
  %i.m = add i32 %.017.in41.i, -2                 ; 2 uses
  %i.n = icmp ult i32 %i.m, %.01742.i
  br i1 %i.n, label %.lr.ph.i, label %ps_mask_table_merge.exit.thread.i

.lr.ph.i:                                         ; preds = %bb.c
  %.val.i = load ptr, ptr %i.k, align 8, !tbaa !67 ; 2 uses
  %i.o = zext i32 %.01742.i to i64
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %i.o ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !72   ; 3 uses
  %i.s = load i32, ptr %i.p, align 8, !tbaa !71   ; 6 uses
  br label %bb.d

bb.d:                                             ; preds = %ps_mask_table_test_intersect.exit.thread.i, %.lr.ph.i
  %.01639.i = phi i32 [ %i.m, %.lr.ph.i ], [ %i.df, %ps_mask_table_test_intersect.exit.thread.i ] ; 2 uses
  %i.t = zext i32 %.01639.i to i64
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %i.t ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !72   ; 6 uses
  %i.x = load i32, ptr %i.u, align 8, !tbaa !71   ; 2 uses
  %i.y = call i32 @llvm.umin.i32(i32 %i.s, i32 %i.x) ; 4 uses
  %i.z = icmp ugt i32 %i.y, 7
  br i1 %i.z, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.d
  %i.aa = add i32 %i.y, -8
  %i.ab = lshr i32 %i.aa, 3
  %narrow.i.i = add nuw nsw i32 %i.ab, 1
  %i.ac = zext nneg i32 %narrow.i.i to i64        ; 2 uses
  %scevgep.i.i = getelementptr i8, ptr %i.r, i64 %i.ac
  %scevgep11.i.i = getelementptr i8, ptr %i.w, i64 %i.ac
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.preheader.i.i
  %.06.i.i = phi i32 [ %i.ai, %bb.e ], [ %i.y, %.lr.ph.preheader.i.i ]
  %.0225.i.i = phi ptr [ %i.ah, %bb.e ], [ %i.w, %.lr.ph.preheader.i.i ] ; 2 uses
  %.0234.i.i = phi ptr [ %i.ag, %bb.e ], [ %i.r, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.ad = load i8, ptr %.0234.i.i, align 1, !tbaa !38
  %i.ae = load i8, ptr %.0225.i.i, align 1, !tbaa !38
  %i.af = and i8 %i.ae, %i.ad
  %.not.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i, label %bb.e, label %ps_mask_table_test_intersect.exit.thread27.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0234.i.i, i64 1
  %i.ah = getelementptr inbounds nuw i8, ptr %.0225.i.i, i64 1
  %i.ai = add i32 %.06.i.i, -8                    ; 3 uses
  %i.aj = icmp ugt i32 %i.ai, 7
  br i1 %i.aj, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !261

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.d
  %.023.lcssa.i.i = phi ptr [ %i.r, %bb.d ], [ %scevgep.i.i, %bb.e ]
  %.022.lcssa.i.i = phi ptr [ %i.w, %bb.d ], [ %scevgep11.i.i, %bb.e ]
  %.0.lcssa.i.i = phi i32 [ %i.y, %bb.d ], [ %i.ai, %bb.e ] ; 2 uses
  %i.ak = icmp eq i32 %.0.lcssa.i.i, 0
  br i1 %i.ak, label %ps_mask_table_test_intersect.exit.thread.i, label %ps_mask_table_test_intersect.exit.i

ps_mask_table_test_intersect.exit.i:              ; preds = %._crit_edge.i.i
  %i.al = load i8, ptr %.023.lcssa.i.i, align 1, !tbaa !38
  %i.am = load i8, ptr %.022.lcssa.i.i, align 1, !tbaa !38
  %i.an = and i8 %i.am, %i.al
  %i.ao = zext i8 %i.an to i32
  %i.ap = lshr i32 255, %.0.lcssa.i.i
  %.not.not.i = icmp samesign ult i32 %i.ap, %i.ao
  br i1 %.not.not.i, label %ps_mask_table_test_intersect.exit.thread27.i, label %ps_mask_table_test_intersect.exit.thread.i

ps_mask_table_test_intersect.exit.thread27.i:     ; preds = %ps_mask_table_test_intersect.exit.i, %.lr.ph.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.not.i21.i = icmp eq i32 %i.s, 0
  br i1 %.not.i21.i, label %.thread.i.i, label %bb.f

bb.f:                                             ; preds = %ps_mask_table_test_intersect.exit.thread27.i
  %i.ar = icmp ugt i32 %i.s, %i.x
  br i1 %i.ar, label %bb.g, label %._crit_edge.i22.i

._crit_edge.i22.i:                                ; preds = %bb.f
  %.pre76.i.i = add i32 %i.s, 7
  %.pre77.i.i = lshr i32 %.pre76.i.i, 3
  br label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !130
  %i.au = lshr i32 %i.at, 3                       ; 2 uses
  %i.av = add i32 %i.s, 7
  %i.aw = lshr i32 %i.av, 3                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !24
  %i.ax = icmp samesign ugt i32 %i.aw, %i.au
  br i1 %i.ax, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ay = add nuw nsw i32 %i.aw, 7
  %i.az = and i32 %i.ay, 1073741816               ; 2 uses
  %i.ba = zext nneg i32 %i.au to i64
  %i.bb = zext nneg i32 %i.az to i64
  %i.bc = call ptr @ft_mem_realloc(ptr noundef %2, i64 noundef 1, i64 noundef %i.ba, i64 noundef %i.bb, ptr noundef %i.w, ptr noundef nonnull %i.a) #12 ; 2 uses
  store ptr %i.bc, ptr %i.aq, align 8, !tbaa !72
  %i.bd = load i32, ptr %i.a, align 4, !tbaa !24  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i.i, label %bb.i, label %ps_mask_table_merge.exit.i

bb.i:                                             ; preds = %bb.h
  %i.be = shl i32 %i.az, 3
  store i32 %i.be, ptr %i.as, align 4, !tbaa !130
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %i.bf = phi ptr [ %i.bc, %bb.i ], [ %i.w, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  store i32 %i.s, ptr %i.u, align 8, !tbaa !71
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i22.i
  %i.bg = phi ptr [ %i.w, %._crit_edge.i22.i ], [ %i.bf, %bb.j ] ; 8 uses
  %.pre-phi78.i.i = phi i32 [ %.pre77.i.i, %._crit_edge.i22.i ], [ %i.aw, %bb.j ] ; 9 uses
  %.not6672.i.i = icmp eq i32 %.pre-phi78.i.i, 0
  br i1 %.not6672.i.i, label %.thread.i.i, label %iter.check

iter.check:                                       ; preds = %bb.k
  %i.bh = load ptr, ptr %i.q, align 8, !tbaa !72  ; 8 uses
  %i.bi = zext nneg i32 %.pre-phi78.i.i to i64    ; 5 uses
  %min.iters.check = icmp samesign ult i32 %.pre-phi78.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i24.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %i.bg, i64 1
  %i.bj = add nsw i32 %.pre-phi78.i.i, -1
  %i.bk = zext i32 %i.bj to i64                   ; 2 uses
  %scevgep69 = getelementptr i8, ptr %scevgep, i64 %i.bk
  %scevgep70 = getelementptr i8, ptr %i.bh, i64 1
  %scevgep71 = getelementptr i8, ptr %scevgep70, i64 %i.bk
  %bound0 = icmp ult ptr %i.bg, %scevgep71
  %bound1 = icmp ult ptr %i.bh, %scevgep69
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i24.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check72 = icmp samesign ult i32 %.pre-phi78.i.i, 32
  br i1 %min.iters.check72, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.bi, 536870880               ; 6 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.bg, i64 %index ; 3 uses
  %next.gep73 = getelementptr i8, ptr %i.bh, i64 %index ; 2 uses
  %i.bl = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !38, !alias.scope !271, !noalias !272
  %wide.load74 = load <16 x i8>, ptr %i.bl, align 1, !tbaa !38, !alias.scope !271, !noalias !272
  %i.bm = getelementptr i8, ptr %next.gep73, i64 16
  %wide.load75 = load <16 x i8>, ptr %next.gep73, align 1, !tbaa !38, !alias.scope !272
  %wide.load76 = load <16 x i8>, ptr %i.bm, align 1, !tbaa !38, !alias.scope !272
  %i.bn = or <16 x i8> %wide.load75, %wide.load
  %i.bo = or <16 x i8> %wide.load76, %wide.load74
  store <16 x i8> %i.bn, ptr %next.gep, align 1, !tbaa !38, !alias.scope !271, !noalias !272
  store <16 x i8> %i.bo, ptr %i.bl, align 1, !tbaa !38, !alias.scope !271, !noalias !272
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !265

middle.block:                                     ; preds = %vector.body
  %4 = and i64 %i.bi, 28
  %5 = getelementptr i8, ptr %i.bg, i64 %n.vec
  %6 = getelementptr i8, ptr %i.bh, i64 %n.vec
  %7 = trunc nuw nsw i64 %n.vec to i32
  %8 = sub nsw i32 %.pre-phi78.i.i, %7
  %cmp.n = icmp eq i64 %n.vec, %i.bi
  br i1 %cmp.n, label %.thread.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %4, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i24.i.preheader, label %vec.epilog.ph, !prof !273

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec79 = and i64 %i.bi, 536870908             ; 5 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index80 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next85, %vec.epilog.vector.body ] ; 3 uses
  %next.gep81 = getelementptr i8, ptr %i.bg, i64 %index80 ; 2 uses
  %next.gep82 = getelementptr i8, ptr %i.bh, i64 %index80
  %wide.load83 = load <4 x i8>, ptr %next.gep81, align 1, !tbaa !38, !alias.scope !271, !noalias !272
  %wide.load84 = load <4 x i8>, ptr %next.gep82, align 1, !tbaa !38, !alias.scope !272
  %i.bq = or <4 x i8> %wide.load84, %wide.load83
  store <4 x i8> %i.bq, ptr %next.gep81, align 1, !tbaa !38, !alias.scope !271, !noalias !272
  %index.next85 = add nuw i64 %index80, 4         ; 2 uses
  %i.br = icmp eq i64 %index.next85, %n.vec79
  br i1 %i.br, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !266

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %9 = getelementptr i8, ptr %i.bg, i64 %n.vec79
  %10 = getelementptr i8, ptr %i.bh, i64 %n.vec79
  %11 = trunc nuw nsw i64 %n.vec79 to i32
  %12 = sub nsw i32 %.pre-phi78.i.i, %11
  %cmp.n86 = icmp eq i64 %n.vec79, %i.bi
  br i1 %cmp.n86, label %.thread.i.i, label %.lr.ph.i24.i.preheader

.lr.ph.i24.i.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.04975.i.i.ph = phi ptr [ %i.bg, %iter.check ], [ %i.bg, %vector.memcheck ], [ %5, %vec.epilog.iter.check ], [ %9, %vec.epilog.middle.block ] ; 2 uses
  %.05074.i.i.ph = phi ptr [ %i.bh, %iter.check ], [ %i.bh, %vector.memcheck ], [ %6, %vec.epilog.iter.check ], [ %10, %vec.epilog.middle.block ] ; 2 uses
  %.05173.i.i.ph = phi i32 [ %.pre-phi78.i.i, %iter.check ], [ %.pre-phi78.i.i, %vector.memcheck ], [ %8, %vec.epilog.iter.check ], [ %12, %vec.epilog.middle.block ] ; 4 uses
  %i.bs = add nsw i32 %.05173.i.i.ph, -1
  %xtraiter = and i32 %.05173.i.i.ph, 3           ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i24.i.prol.loopexit, label %.lr.ph.i24.i.prol

.lr.ph.i24.i.prol:                                ; preds = %.lr.ph.i24.i.preheader, %.lr.ph.i24.i.prol
  %.04975.i.i.prol = phi ptr [ %i.bw, %.lr.ph.i24.i.prol ], [ %.04975.i.i.ph, %.lr.ph.i24.i.preheader ] ; 3 uses
  %.05074.i.i.prol = phi ptr [ %i.bx, %.lr.ph.i24.i.prol ], [ %.05074.i.i.ph, %.lr.ph.i24.i.preheader ] ; 2 uses
  %.05173.i.i.prol = phi i32 [ %i.by, %.lr.ph.i24.i.prol ], [ %.05173.i.i.ph, %.lr.ph.i24.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i24.i.prol ], [ 0, %.lr.ph.i24.i.preheader ]
  %i.bt = load i8, ptr %.04975.i.i.prol, align 1, !tbaa !38
  %i.bu = load i8, ptr %.05074.i.i.prol, align 1, !tbaa !38
  %i.bv = or i8 %i.bu, %i.bt
  store i8 %i.bv, ptr %.04975.i.i.prol, align 1, !tbaa !38
  %i.bw = getelementptr inbounds nuw i8, ptr %.04975.i.i.prol, i64 1 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.05074.i.i.prol, i64 1 ; 2 uses
  %i.by = add nsw i32 %.05173.i.i.prol, -1        ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i24.i.prol.loopexit, label %.lr.ph.i24.i.prol, !llvm.loop !267

.lr.ph.i24.i.prol.loopexit:                       ; preds = %.lr.ph.i24.i.prol, %.lr.ph.i24.i.preheader
  %.04975.i.i.unr = phi ptr [ %.04975.i.i.ph, %.lr.ph.i24.i.preheader ], [ %i.bw, %.lr.ph.i24.i.prol ]
  %.05074.i.i.unr = phi ptr [ %.05074.i.i.ph, %.lr.ph.i24.i.preheader ], [ %i.bx, %.lr.ph.i24.i.prol ]
  %.05173.i.i.unr = phi i32 [ %.05173.i.i.ph, %.lr.ph.i24.i.preheader ], [ %i.by, %.lr.ph.i24.i.prol ]
  %i.bz = icmp ult i32 %i.bs, 3
  br i1 %i.bz, label %.thread.i.i, label %.lr.ph.i24.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i.prol.loopexit, %.lr.ph.i24.i
  %.04975.i.i = phi ptr [ %i.cs, %.lr.ph.i24.i ], [ %.04975.i.i.unr, %.lr.ph.i24.i.prol.loopexit ] ; 6 uses
  %.05074.i.i = phi ptr [ %i.ct, %.lr.ph.i24.i ], [ %.05074.i.i.unr, %.lr.ph.i24.i.prol.loopexit ] ; 5 uses
  %.05173.i.i = phi i32 [ %i.cu, %.lr.ph.i24.i ], [ %.05173.i.i.unr, %.lr.ph.i24.i.prol.loopexit ]
  %i.ca = load i8, ptr %.04975.i.i, align 1, !tbaa !38
  %i.cb = load i8, ptr %.05074.i.i, align 1, !tbaa !38
  %i.cc = or i8 %i.cb, %i.ca
  store i8 %i.cc, ptr %.04975.i.i, align 1, !tbaa !38
  %i.cd = getelementptr inbounds nuw i8, ptr %.04975.i.i, i64 1 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.05074.i.i, i64 1
  %i.cf = load i8, ptr %i.cd, align 1, !tbaa !38
  %i.cg = load i8, ptr %i.ce, align 1, !tbaa !38
  %i.ch = or i8 %i.cg, %i.cf
  store i8 %i.ch, ptr %i.cd, align 1, !tbaa !38
  %i.ci = getelementptr inbounds nuw i8, ptr %.04975.i.i, i64 2 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.05074.i.i, i64 2
  %i.ck = load i8, ptr %i.ci, align 1, !tbaa !38
  %i.cl = load i8, ptr %i.cj, align 1, !tbaa !38
  %i.cm = or i8 %i.cl, %i.ck
  store i8 %i.cm, ptr %i.ci, align 1, !tbaa !38
  %i.cn = getelementptr inbounds nuw i8, ptr %.04975.i.i, i64 3 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.05074.i.i, i64 3
  %i.cp = load i8, ptr %i.cn, align 1, !tbaa !38
  %i.cq = load i8, ptr %i.co, align 1, !tbaa !38
  %i.cr = or i8 %i.cq, %i.cp
  store i8 %i.cr, ptr %i.cn, align 1, !tbaa !38
  %i.cs = getelementptr inbounds nuw i8, ptr %.04975.i.i, i64 4
  %i.ct = getelementptr inbounds nuw i8, ptr %.05074.i.i, i64 4
  %i.cu = add nsw i32 %.05173.i.i, -4             ; 2 uses
  %.not66.i.i.3 = icmp eq i32 %i.cu, 0
  br i1 %.not66.i.i.3, label %.thread.i.i, label %.lr.ph.i24.i, !llvm.loop !268

.thread.i.i:                                      ; preds = %.lr.ph.i24.i.prol.loopexit, %.lr.ph.i24.i, %middle.block, %vec.epilog.middle.block, %bb.k, %ps_mask_table_test_intersect.exit.thread27.i
  store i32 0, ptr %i.p, align 8, !tbaa !71
  %i.cv = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i32 0, ptr %i.cv, align 8, !tbaa !70
  %i.cw = load i32, ptr %i.i, align 8, !tbaa !68  ; 2 uses
  %i.cx = xor i32 %.01742.i, -1
  %i.cy = add i32 %i.cw, %i.cx                    ; 2 uses
  %.not67.i.i = icmp eq i32 %i.cy, 0
  br i1 %.not67.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !tbaa.struct !275
  %i.cz = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.da = zext i32 %i.cy to i64                   ; 2 uses
  %i.db = mul nuw nsw i64 %i.da, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.p, ptr nonnull align 8 %i.cz, i64 %i.db, i1 false)
  %i.dc = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.da
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dc, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !275
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.pre.i.i = load i32, ptr %i.i, align 8, !tbaa !68
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread.i.i
  %i.dd = phi i32 [ %.pre.i.i, %bb.l ], [ %i.cw, %.thread.i.i ]
  %i.de = add i32 %i.dd, -1                       ; 2 uses
  store i32 %i.de, ptr %i.i, align 8, !tbaa !68
  br label %ps_mask_table_merge.exit.thread.i

ps_mask_table_merge.exit.i:                       ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %ps_mask_table_merge_all.exit

ps_mask_table_test_intersect.exit.thread.i:       ; preds = %ps_mask_table_test_intersect.exit.i, %._crit_edge.i.i
  %i.df = add i32 %.01639.i, -1                   ; 2 uses
  %i.dg = icmp ult i32 %i.df, %.01742.i
  br i1 %i.dg, label %bb.d, label %ps_mask_table_merge.exit.thread.i, !llvm.loop !269

ps_mask_table_merge.exit.thread.i:                ; preds = %ps_mask_table_test_intersect.exit.thread.i, %bb.m, %bb.c
  %i.dh = phi i32 [ %i.de, %bb.m ], [ %i.l, %bb.c ], [ %i.l, %ps_mask_table_test_intersect.exit.thread.i ] ; 2 uses
  %.017.i = add i32 %.01742.i, -1                 ; 2 uses
  %i.di = icmp ult i32 %.017.i, %i.dh
  br i1 %i.di, label %bb.c, label %ps_mask_table_merge_all.exit, !llvm.loop !270

ps_mask_table_merge_all.exit:                     ; preds = %ps_mask_table_merge.exit.thread.i, %ps_dimension_end_mask.exit, %ps_mask_table_merge.exit.i
  %.2.i = phi i32 [ %i.bd, %ps_mask_table_merge.exit.i ], [ 0, %ps_dimension_end_mask.exit ], [ 0, %ps_mask_table_merge.exit.thread.i ]
  ret i32 %.2.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare hidden ptr @ft_mem_realloc(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @FT_RoundFix(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ps_dimension_add_t1stem(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = icmp slt i32 %2, 0
  %i.e = icmp eq i32 %2, -21                      ; 2 uses
  %i.f = add i32 %1, -21
  %spec.select50 = select i1 %i.e, i32 3, i32 1
  %.038 = tail call i32 @llvm.smax.i32(i32 %2, i32 0) ; 2 uses
  %.137 = select i1 %i.e, i32 %i.f, i32 %1        ; 2 uses
  %.1 = select i1 %i.d, i32 %spec.select50, i32 0
  %i.g = load i32, ptr %0, align 8, !tbaa !126    ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !277  ; 3 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.03270 = phi i32 [ %i.o, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %storemerge69 = phi ptr [ %i.p, %bb.c ], [ %i.i, %bb.a ] ; 3 uses
  %i.j = load i32, ptr %storemerge69, align 4, !tbaa !278
  %i.k = icmp eq i32 %i.j, %.137
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %storemerge69, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !279
  %i.n = icmp eq i32 %i.m, %.038
  br i1 %i.n, label %.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.o = add nuw i32 %.03270, 1                   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %storemerge69, i64 12
  %exitcond.not = icmp eq i32 %i.o, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !276

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %i.q = add i32 %i.g, 1                          ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !280  ; 2 uses
  %i.t = icmp ugt i32 %i.q, %i.s
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.u = and i32 %i.g, -8
  %i.v = add i32 %i.u, 8                          ; 2 uses
  %i.w = zext i32 %i.s to i64
  %i.x = zext i32 %i.v to i64
  %i.y = call ptr @ft_mem_qrealloc(ptr noundef %3, i64 noundef 12, i64 noundef %i.w, i64 noundef %i.x, ptr noundef %i.i, ptr noundef nonnull %i.c) #12 ; 2 uses
  store ptr %i.y, ptr %i.h, align 8, !tbaa !119
  %i.z = load i32, ptr %i.c, align 4, !tbaa !24   ; 2 uses
  %.not.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i, label %ps_hint_table_ensure.exit.thread.i, label %ps_hint_table_alloc.exit

ps_hint_table_ensure.exit.thread.i:               ; preds = %bb.d
  store i32 %i.v, ptr %i.r, align 4, !tbaa !280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.e

ps_hint_table_alloc.exit:                         ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.s

bb.e:                                             ; preds = %ps_hint_table_ensure.exit.thread.i, %._crit_edge
  %i.aa = phi ptr [ %i.y, %ps_hint_table_ensure.exit.thread.i ], [ %i.i, %._crit_edge ]
  %i.ab = zext i32 %i.q to i64
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %i.aa, i64 %i.ab ; 3 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -12
  store i32 %i.q, ptr %0, align 8, !tbaa !118
  store i32 %.137, ptr %i.ad, align 4, !tbaa !278
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 -8
  store i32 %.038, ptr %i.ae, align 4, !tbaa !279
  %i.af = getelementptr inbounds i8, ptr %i.ac, i64 -4
  store i32 %.1, ptr %i.af, align 4, !tbaa !121
end_hunk_3
