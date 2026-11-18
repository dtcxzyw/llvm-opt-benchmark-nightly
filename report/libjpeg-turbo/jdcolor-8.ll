Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/jdcolor-8?download=true
inline.NumInlined: 2
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 20
begin_hunk_0_@gray_rgb565_convert:bb.a
  %next.gep26 = getelementptr i8, ptr %i.aq, i64 2
  %i.ar = getelementptr i8, ptr %.038.i, i64 %i.ap ; 2 uses
  %next.gep27 = getelementptr i8, ptr %i.ar, i64 4
  %i.as = getelementptr i8, ptr %.038.i, i64 %i.ap ; 2 uses
  %next.gep28 = getelementptr i8, ptr %i.as, i64 6
  %i.at = getelementptr inbounds nuw i8, ptr %next.gep25, i64 1
  %i.au = getelementptr i8, ptr %i.aq, i64 3
  %i.av = getelementptr i8, ptr %i.ar, i64 5
  %i.aw = getelementptr i8, ptr %i.as, i64 7
  %i.ax = load i8, ptr %next.gep25, align 1, !tbaa !34, !alias.scope !150
  %i.ay = load i8, ptr %next.gep26, align 1, !tbaa !34, !alias.scope !150
  %i.az = load i8, ptr %next.gep27, align 1, !tbaa !34, !alias.scope !150
  %i.ba = load i8, ptr %next.gep28, align 1, !tbaa !34, !alias.scope !150
  %i.bb = insertelement <4 x i8> poison, i8 %i.ax, i64 0
  %i.bc = insertelement <4 x i8> %i.bb, i8 %i.ay, i64 1
  %i.bd = insertelement <4 x i8> %i.bc, i8 %i.az, i64 2
  %i.be = insertelement <4 x i8> %i.bd, i8 %i.ba, i64 3
  %i.bf = zext <4 x i8> %i.be to <4 x i32>        ; 3 uses
  %i.bg = shl nuw nsw <4 x i32> %i.bf, splat (i32 8)
  %i.bh = and <4 x i32> %i.bg, splat (i32 63488)
  %i.bi = shl nuw nsw <4 x i32> %i.bf, splat (i32 3)
  %i.bj = and <4 x i32> %i.bi, splat (i32 2016)
  %i.bk = lshr <4 x i32> %i.bf, splat (i32 3)
  %i.bl = load i8, ptr %i.at, align 1, !tbaa !34, !alias.scope !150
  %i.bm = load i8, ptr %i.au, align 1, !tbaa !34, !alias.scope !150
  %i.bn = load i8, ptr %i.av, align 1, !tbaa !34, !alias.scope !150
  %i.bo = load i8, ptr %i.aw, align 1, !tbaa !34, !alias.scope !150
  %i.bp = insertelement <4 x i8> poison, i8 %i.bl, i64 0
  %i.bq = insertelement <4 x i8> %i.bp, i8 %i.bm, i64 1
  %i.br = insertelement <4 x i8> %i.bq, i8 %i.bn, i64 2
  %i.bs = insertelement <4 x i8> %i.br, i8 %i.bo, i64 3
  %i.bt = zext <4 x i8> %i.bs to <4 x i32>        ; 3 uses
  %i.bu = shl nuw nsw <4 x i32> %i.bt, splat (i32 8)
  %i.bv = and <4 x i32> %i.bu, splat (i32 63488)
  %i.bw = shl nuw nsw <4 x i32> %i.bt, splat (i32 3)
  %i.bx = and <4 x i32> %i.bw, splat (i32 2016)
  %i.by = or disjoint <4 x i32> %i.bv, %i.bx
  %i.bz = lshr <4 x i32> %i.bt, splat (i32 3)
  %i.ca = or disjoint <4 x i32> %i.by, %i.bz
  %i.cb = shl nuw <4 x i32> %i.ca, splat (i32 16)
  %i.cc = or disjoint <4 x i32> %i.bj, %i.bk
  %i.cd = or disjoint <4 x i32> %i.cc, %i.bh
  %i.ce = or disjoint <4 x i32> %i.cd, %i.cb
  store <4 x i32> %i.ce, ptr %next.gep, align 4, !tbaa !44, !alias.scope !151, !noalias !150
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !147

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.aa
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader31

.lr.ph.preheader31:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.035.i11.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.aj, %middle.block ]
  %.137.i10.ph = phi ptr [ %.036.i, %vector.memcheck ], [ %.036.i, %.lr.ph.preheader ], [ %i.al, %middle.block ]
  %.139.i9.ph = phi ptr [ %.038.i, %vector.memcheck ], [ %.038.i, %.lr.ph.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader31, %.lr.ph
  %.035.i11 = phi i32 [ %i.dd, %.lr.ph ], [ %.035.i11.ph, %.lr.ph.preheader31 ]
  %.137.i10 = phi ptr [ %i.dc, %.lr.ph ], [ %.137.i10.ph, %.lr.ph.preheader31 ] ; 2 uses
  %.139.i9 = phi ptr [ %i.co, %.lr.ph ], [ %.139.i9.ph, %.lr.ph.preheader31 ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.139.i9, i64 1
  %i.ch = load i8, ptr %.139.i9, align 1, !tbaa !34
  %i.ci = zext i8 %i.ch to i32                    ; 3 uses
  %i.cj = shl nuw nsw i32 %i.ci, 8
  %i.ck = and i32 %i.cj, 63488
  %i.cl = shl nuw nsw i32 %i.ci, 3
  %i.cm = and i32 %i.cl, 2016
  %i.cn = lshr i32 %i.ci, 3
  %i.co = getelementptr inbounds nuw i8, ptr %.139.i9, i64 2 ; 2 uses
  %i.cp = load i8, ptr %i.cg, align 1, !tbaa !34
  %i.cq = zext i8 %i.cp to i32                    ; 3 uses
  %i.cr = shl nuw nsw i32 %i.cq, 8
  %i.cs = and i32 %i.cr, 63488
  %i.ct = shl nuw nsw i32 %i.cq, 3
  %i.cu = and i32 %i.ct, 2016
  %i.cv = or disjoint i32 %i.cs, %i.cu
  %i.cw = lshr i32 %i.cq, 3
  %i.cx = or disjoint i32 %i.cv, %i.cw
  %i.cy = shl nuw i32 %i.cx, 16
  %i.cz = or disjoint i32 %i.cm, %i.cn
  %i.da = or disjoint i32 %i.cz, %i.ck
  %i.db = or disjoint i32 %i.da, %i.cy
  store i32 %i.db, ptr %.137.i10, align 4, !tbaa !44
  %i.dc = getelementptr inbounds nuw i8, ptr %.137.i10, i64 4 ; 2 uses
  %i.dd = add nuw nsw i32 %.035.i11, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.dd, %i.z
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !148

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.d
  %.139.i.lcssa = phi ptr [ %.038.i, %bb.d ], [ %i.an, %middle.block ], [ %i.co, %.lr.ph ]
  %.137.i.lcssa = phi ptr [ %.036.i, %bb.d ], [ %i.al, %middle.block ], [ %i.dc, %.lr.ph ]
  %i.de = and i32 %.1.i, 1
  %.not44.i = icmp eq i32 %i.de, 0
  br i1 %.not44.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.df = load i8, ptr %.139.i.lcssa, align 1, !tbaa !34
  %i.dg = zext i8 %i.df to i16                    ; 3 uses
  %i.dh = shl nuw i16 %i.dg, 8
  %i.di = and i16 %i.dh, -2048
  %i.dj = shl nuw nsw i16 %i.dg, 3
  %i.dk = and i16 %i.dj, 2016
  %i.dl = lshr i16 %i.dg, 3
  %i.dm = or disjoint i16 %i.dk, %i.dl
  %i.dn = or disjoint i16 %i.dm, %i.di
  store i16 %i.dn, ptr %.137.i.lcssa, align 2, !tbaa !56
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %i.do = icmp samesign ugt i32 %.in, 1
  br i1 %i.do, label %bb.b, label %gray_rgb565_convert_le.exit, !llvm.loop !149

gray_rgb565_convert_le.exit:                      ; preds = %bb.f, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @rgb_rgb565_convert(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #2 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.lr.ph21, label %rgb_rgb565_convert_le.exit

.lr.ph21:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load i32, ptr %i.b, align 8, !tbaa !52
  %i.d = load ptr, ptr %1, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph21, %bb.f
  %.in = phi i32 [ %4, %.lr.ph21 ], [ %i.i, %bb.f ] ; 2 uses
  %.0.i19 = phi i32 [ %i.c, %.lr.ph21 ], [ %.1.i, %bb.f ] ; 2 uses
  %.058.i18 = phi ptr [ %3, %.lr.ph21 ], [ %i.r, %bb.f ] ; 2 uses
  %.059.i17 = phi i32 [ %2, %.lr.ph21 ], [ %i.q, %bb.f ] ; 2 uses
  %i.i = add nsw i32 %.in, -1
  %i.j = zext i32 %.059.i17 to i64                ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !54   ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.j
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !54   ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !54   ; 3 uses
  %i.q = add i32 %.059.i17, 1
  %i.r = getelementptr inbounds nuw i8, ptr %.058.i18, i64 8
  %i.s = load ptr, ptr %.058.i18, align 8, !tbaa !54 ; 4 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = and i64 %i.t, 3
  %.not.i = icmp eq i64 %i.u, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.w = load i8, ptr %i.l, align 1, !tbaa !34
  %i.x = zext i8 %i.w to i16
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.z = load i8, ptr %i.n, align 1, !tbaa !34
  %i.aa = zext i8 %i.z to i16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.ac = load i8, ptr %i.p, align 1, !tbaa !34
  %i.ad = shl nuw i16 %i.x, 8
  %i.ae = and i16 %i.ad, -2048
  %i.af = shl nuw nsw i16 %i.aa, 3
  %i.ag = and i16 %i.af, 2016
  %i.ah = or disjoint i16 %i.ag, %i.ae
  %i.ai = lshr i8 %i.ac, 3
  %i.aj = zext nneg i8 %i.ai to i16
  %i.ak = or disjoint i16 %i.ah, %i.aj
  store i16 %i.ak, ptr %i.s, align 2, !tbaa !56
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.am = add i32 %.0.i19, -1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.055.i = phi ptr [ %i.al, %bb.c ], [ %i.s, %bb.b ] ; 9 uses
  %.053.i = phi ptr [ %i.v, %bb.c ], [ %i.l, %bb.b ] ; 10 uses
  %.051.i = phi ptr [ %i.y, %bb.c ], [ %i.n, %bb.b ] ; 10 uses
  %.049.i = phi ptr [ %i.ab, %bb.c ], [ %i.p, %bb.b ] ; 10 uses
  %.1.i = phi i32 [ %i.am, %bb.c ], [ %.0.i19, %bb.b ] ; 4 uses
  %i.an = lshr i32 %.1.i, 1                       ; 4 uses
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.ao = zext nneg i32 %i.an to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %.1.i, 8
  br i1 %min.iters.check, label %.lr.ph.preheader69, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ap = add nsw i32 %i.an, -1
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = shl nuw nsw i64 %i.aq, 2
  %i.as = getelementptr i8, ptr %.055.i, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.as, i64 4      ; 3 uses
  %i.au = shl nuw nsw i64 %i.aq, 1
  %i.av = add nuw nsw i64 %i.au, 2                ; 3 uses
  %5 = getelementptr i8, ptr %.053.i, i64 %i.av
  %i.aw = getelementptr i8, ptr %.051.i, i64 %i.av
  %6 = getelementptr i8, ptr %.049.i, i64 %i.av
  %bound0.a = icmp ult ptr %.055.i, %5
  %bound1 = icmp ult ptr %.053.i, %i.at
  %found.conflict = and i1 %bound0.a, %bound1
  %bound046 = icmp ult ptr %.055.i, %i.aw
  %bound147 = icmp ult ptr %.051.i, %i.at
  %found.conflict48 = and i1 %bound046, %bound147
  %conflict.rdx = or i1 %found.conflict, %found.conflict48
  %bound049 = icmp ult ptr %.055.i, %6
  %bound150 = icmp ult ptr %.049.i, %i.at
  %found.conflict51 = and i1 %bound049, %bound150
  %conflict.rdx52 = or i1 %conflict.rdx, %found.conflict51
  br i1 %conflict.rdx52, label %.lr.ph.preheader69, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ao, 2147483644              ; 5 uses
  %i.ax = trunc nuw nsw i64 %n.vec to i32
  %i.ay = shl nuw nsw i64 %n.vec, 1               ; 3 uses
  %i.az = getelementptr i8, ptr %.049.i, i64 %i.ay ; 2 uses
  %i.ba = getelementptr i8, ptr %.051.i, i64 %i.ay ; 2 uses
  %i.bb = getelementptr i8, ptr %.053.i, i64 %i.ay ; 2 uses
  %i.bc = shl nuw nsw i64 %n.vec, 2
  %i.bd = getelementptr i8, ptr %.055.i, i64 %i.bc ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.be = shl i64 %index, 1                       ; 6 uses
  %i.bf = or disjoint i64 %i.be, 2                ; 3 uses
  %i.bg = or disjoint i64 %i.be, 4                ; 3 uses
  %i.bh = or disjoint i64 %i.be, 6                ; 3 uses
  %next.gep = getelementptr i8, ptr %.049.i, i64 %i.be ; 2 uses
  %next.gep53 = getelementptr i8, ptr %.049.i, i64 %i.bf ; 2 uses
  %next.gep54 = getelementptr i8, ptr %.049.i, i64 %i.bg ; 2 uses
  %next.gep55 = getelementptr i8, ptr %.049.i, i64 %i.bh ; 2 uses
  %next.gep56 = getelementptr i8, ptr %.051.i, i64 %i.be ; 2 uses
  %next.gep57 = getelementptr i8, ptr %.051.i, i64 %i.bf ; 2 uses
  %next.gep58 = getelementptr i8, ptr %.051.i, i64 %i.bg ; 2 uses
  %next.gep59 = getelementptr i8, ptr %.051.i, i64 %i.bh ; 2 uses
  %next.gep60 = getelementptr i8, ptr %.053.i, i64 %i.be ; 2 uses
  %next.gep61 = getelementptr i8, ptr %.053.i, i64 %i.bf ; 2 uses
  %next.gep62 = getelementptr i8, ptr %.053.i, i64 %i.bg ; 2 uses
  %next.gep63 = getelementptr i8, ptr %.053.i, i64 %i.bh ; 2 uses
  %i.bi = shl i64 %index, 2
  %next.gep64 = getelementptr i8, ptr %.055.i, i64 %i.bi
  %i.bj = getelementptr inbounds nuw i8, ptr %next.gep60, i64 1
  %i.bk = getelementptr inbounds nuw i8, ptr %next.gep61, i64 1
  %i.bl = getelementptr inbounds nuw i8, ptr %next.gep62, i64 1
  %i.bm = getelementptr inbounds nuw i8, ptr %next.gep63, i64 1
  %i.bn = load i8, ptr %next.gep60, align 1, !tbaa !34, !alias.scope !160
  %i.bo = load i8, ptr %next.gep61, align 1, !tbaa !34, !alias.scope !160
  %i.bp = load i8, ptr %next.gep62, align 1, !tbaa !34, !alias.scope !160
  %i.bq = load i8, ptr %next.gep63, align 1, !tbaa !34, !alias.scope !160
  %i.br = insertelement <4 x i8> poison, i8 %i.bn, i64 0
  %i.bs = insertelement <4 x i8> %i.br, i8 %i.bo, i64 1
  %i.bt = insertelement <4 x i8> %i.bs, i8 %i.bp, i64 2
  %i.bu = insertelement <4 x i8> %i.bt, i8 %i.bq, i64 3
  %i.bv = zext <4 x i8> %i.bu to <4 x i32>
  %i.bw = getelementptr inbounds nuw i8, ptr %next.gep56, i64 1
  %i.bx = getelementptr inbounds nuw i8, ptr %next.gep57, i64 1
  %i.by = getelementptr inbounds nuw i8, ptr %next.gep58, i64 1
  %i.bz = getelementptr inbounds nuw i8, ptr %next.gep59, i64 1
  %i.ca = load i8, ptr %next.gep56, align 1, !tbaa !34, !alias.scope !161
  %i.cb = load i8, ptr %next.gep57, align 1, !tbaa !34, !alias.scope !161
  %i.cc = load i8, ptr %next.gep58, align 1, !tbaa !34, !alias.scope !161
  %i.cd = load i8, ptr %next.gep59, align 1, !tbaa !34, !alias.scope !161
  %i.ce = insertelement <4 x i8> poison, i8 %i.ca, i64 0
  %i.cf = insertelement <4 x i8> %i.ce, i8 %i.cb, i64 1
  %i.cg = insertelement <4 x i8> %i.cf, i8 %i.cc, i64 2
  %i.ch = insertelement <4 x i8> %i.cg, i8 %i.cd, i64 3
  %i.ci = zext <4 x i8> %i.ch to <4 x i32>
  %i.cj = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.ck = getelementptr inbounds nuw i8, ptr %next.gep53, i64 1
  %i.cl = getelementptr inbounds nuw i8, ptr %next.gep54, i64 1
  %i.cm = getelementptr inbounds nuw i8, ptr %next.gep55, i64 1
  %i.cn = load i8, ptr %next.gep, align 1, !tbaa !34, !alias.scope !162
  %i.co = load i8, ptr %next.gep53, align 1, !tbaa !34, !alias.scope !162
  %i.cp = load i8, ptr %next.gep54, align 1, !tbaa !34, !alias.scope !162
  %i.cq = load i8, ptr %next.gep55, align 1, !tbaa !34, !alias.scope !162
  %i.cr = insertelement <4 x i8> poison, i8 %i.cn, i64 0
  %i.cs = insertelement <4 x i8> %i.cr, i8 %i.co, i64 1
  %i.ct = insertelement <4 x i8> %i.cs, i8 %i.cp, i64 2
  %i.cu = insertelement <4 x i8> %i.ct, i8 %i.cq, i64 3
  %i.cv = shl nuw nsw <4 x i32> %i.bv, splat (i32 8)
  %i.cw = and <4 x i32> %i.cv, splat (i32 63488)
  %i.cx = shl nuw nsw <4 x i32> %i.ci, splat (i32 3)
  %i.cy = and <4 x i32> %i.cx, splat (i32 2016)
  %i.cz = or disjoint <4 x i32> %i.cy, %i.cw
  %i.da = lshr <4 x i8> %i.cu, splat (i8 3)
  %i.db = zext nneg <4 x i8> %i.da to <4 x i32>
  %i.dc = or disjoint <4 x i32> %i.cz, %i.db
  %i.dd = load i8, ptr %i.bj, align 1, !tbaa !34, !alias.scope !160
  %i.de = load i8, ptr %i.bk, align 1, !tbaa !34, !alias.scope !160
  %i.df = load i8, ptr %i.bl, align 1, !tbaa !34, !alias.scope !160
  %i.dg = load i8, ptr %i.bm, align 1, !tbaa !34, !alias.scope !160
  %i.dh = insertelement <4 x i8> poison, i8 %i.dd, i64 0
  %i.di = insertelement <4 x i8> %i.dh, i8 %i.de, i64 1
  %i.dj = insertelement <4 x i8> %i.di, i8 %i.df, i64 2
  %i.dk = insertelement <4 x i8> %i.dj, i8 %i.dg, i64 3
  %i.dl = zext <4 x i8> %i.dk to <4 x i32>
  %i.dm = load i8, ptr %i.bw, align 1, !tbaa !34, !alias.scope !161
  %i.dn = load i8, ptr %i.bx, align 1, !tbaa !34, !alias.scope !161
  %i.do = load i8, ptr %i.by, align 1, !tbaa !34, !alias.scope !161
  %i.dp = load i8, ptr %i.bz, align 1, !tbaa !34, !alias.scope !161
  %i.dq = insertelement <4 x i8> poison, i8 %i.dm, i64 0
  %i.dr = insertelement <4 x i8> %i.dq, i8 %i.dn, i64 1
  %i.ds = insertelement <4 x i8> %i.dr, i8 %i.do, i64 2
  %i.dt = insertelement <4 x i8> %i.ds, i8 %i.dp, i64 3
  %i.du = zext <4 x i8> %i.dt to <4 x i32>
  %i.dv = load i8, ptr %i.cj, align 1, !tbaa !34, !alias.scope !162
  %i.dw = load i8, ptr %i.ck, align 1, !tbaa !34, !alias.scope !162
  %i.dx = load i8, ptr %i.cl, align 1, !tbaa !34, !alias.scope !162
  %i.dy = load i8, ptr %i.cm, align 1, !tbaa !34, !alias.scope !162
  %i.dz = insertelement <4 x i8> poison, i8 %i.dv, i64 0
  %i.ea = insertelement <4 x i8> %i.dz, i8 %i.dw, i64 1
  %i.eb = insertelement <4 x i8> %i.ea, i8 %i.dx, i64 2
  %i.ec = insertelement <4 x i8> %i.eb, i8 %i.dy, i64 3
  %i.ed = shl nuw nsw <4 x i32> %i.dl, splat (i32 8)
  %i.ee = and <4 x i32> %i.ed, splat (i32 63488)
  %i.ef = shl nuw nsw <4 x i32> %i.du, splat (i32 3)
  %i.eg = and <4 x i32> %i.ef, splat (i32 2016)
  %i.eh = or disjoint <4 x i32> %i.ee, %i.eg
  %i.ei = lshr <4 x i8> %i.ec, splat (i8 3)
  %i.ej = zext nneg <4 x i8> %i.ei to <4 x i32>
  %i.ek = or disjoint <4 x i32> %i.eh, %i.ej
  %i.el = shl nuw <4 x i32> %i.ek, splat (i32 16)
  %i.em = or disjoint <4 x i32> %i.dc, %i.el
  store <4 x i32> %i.em, ptr %next.gep64, align 4, !tbaa !44, !alias.scope !163, !noalias !164
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.en = icmp eq i64 %index.next, %n.vec
  br i1 %i.en, label %middle.block, label %vector.body, !llvm.loop !157

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ao
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader69

.lr.ph.preheader69:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.048.i13.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.ax, %middle.block ]
  %.150.i12.ph = phi ptr [ %.049.i, %vector.memcheck ], [ %.049.i, %.lr.ph.preheader ], [ %i.az, %middle.block ]
  %.152.i11.ph = phi ptr [ %.051.i, %vector.memcheck ], [ %.051.i, %.lr.ph.preheader ], [ %i.ba, %middle.block ]
  %.154.i10.ph = phi ptr [ %.053.i, %vector.memcheck ], [ %.053.i, %.lr.ph.preheader ], [ %i.bb, %middle.block ]
  %.156.i9.ph = phi ptr [ %.055.i, %vector.memcheck ], [ %.055.i, %.lr.ph.preheader ], [ %i.bd, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader69, %.lr.ph
  %.048.i13 = phi i32 [ %i.ff, %.lr.ph ], [ %.048.i13.ph, %.lr.ph.preheader69 ]
  %.150.i12 = phi ptr [ %i.eq, %.lr.ph ], [ %.150.i12.ph, %.lr.ph.preheader69 ] ; 2 uses
  %.152.i11 = phi ptr [ %i.ep, %.lr.ph ], [ %.152.i11.ph, %.lr.ph.preheader69 ] ; 2 uses
  %.154.i10 = phi ptr [ %i.eo, %.lr.ph ], [ %.154.i10.ph, %.lr.ph.preheader69 ] ; 2 uses
  %.156.i9 = phi ptr [ %i.fe, %.lr.ph ], [ %.156.i9.ph, %.lr.ph.preheader69 ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.154.i10, i64 2 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.152.i11, i64 2 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.150.i12, i64 2 ; 2 uses
  %i.er = load <2 x i8>, ptr %.154.i10, align 1, !tbaa !34
  %i.es = zext <2 x i8> %i.er to <2 x i16>
  %i.et = load <2 x i8>, ptr %.152.i11, align 1, !tbaa !34
  %i.eu = zext <2 x i8> %i.et to <2 x i16>
  %i.ev = load <2 x i8>, ptr %.150.i12, align 1, !tbaa !34
  %i.ew = shl nuw <2 x i16> %i.es, splat (i16 8)
  %i.ex = and <2 x i16> %i.ew, splat (i16 -2048)
  %i.ey = shl nuw nsw <2 x i16> %i.eu, splat (i16 3)
  %i.ez = and <2 x i16> %i.ey, splat (i16 2016)
  %i.fa = or disjoint <2 x i16> %i.ex, %i.ez
  %i.fb = lshr <2 x i8> %i.ev, splat (i8 3)
  %i.fc = zext nneg <2 x i8> %i.fb to <2 x i16>
  %i.fd = or disjoint <2 x i16> %i.fa, %i.fc
  store <2 x i16> %i.fd, ptr %.156.i9, align 4, !tbaa !44
  %i.fe = getelementptr inbounds nuw i8, ptr %.156.i9, i64 4 ; 2 uses
  %i.ff = add nuw nsw i32 %.048.i13, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ff, %i.an
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !158

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.d
  %.156.i.lcssa = phi ptr [ %.055.i, %bb.d ], [ %i.bd, %middle.block ], [ %i.fe, %.lr.ph ]
  %.154.i.lcssa = phi ptr [ %.053.i, %bb.d ], [ %i.bb, %middle.block ], [ %i.eo, %.lr.ph ]
  %.152.i.lcssa = phi ptr [ %.051.i, %bb.d ], [ %i.ba, %middle.block ], [ %i.ep, %.lr.ph ]
  %.150.i.lcssa = phi ptr [ %.049.i, %bb.d ], [ %i.az, %middle.block ], [ %i.eq, %.lr.ph ]
  %i.fg = and i32 %.1.i, 1
  %.not61.i = icmp eq i32 %i.fg, 0
  br i1 %.not61.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.fh = load i8, ptr %.154.i.lcssa, align 1, !tbaa !34
  %i.fi = zext i8 %i.fh to i16
  %i.fj = load i8, ptr %.152.i.lcssa, align 1, !tbaa !34
  %i.fk = zext i8 %i.fj to i16
  %i.fl = load i8, ptr %.150.i.lcssa, align 1, !tbaa !34
  %i.fm = shl nuw i16 %i.fi, 8
  %i.fn = and i16 %i.fm, -2048
  %i.fo = shl nuw nsw i16 %i.fk, 3
  %i.fp = and i16 %i.fo, 2016
  %i.fq = or disjoint i16 %i.fp, %i.fn
  %i.fr = lshr i8 %i.fl, 3
  %i.fs = zext nneg i8 %i.fr to i16
  %i.ft = or disjoint i16 %i.fq, %i.fs
  store i16 %i.ft, ptr %.156.i.lcssa, align 2, !tbaa !56
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %i.fu = icmp samesign ugt i32 %.in, 1
  br i1 %i.fu, label %bb.b, label %rgb_rgb565_convert_le.exit, !llvm.loop !159

rgb_rgb565_convert_le.exit:                       ; preds = %bb.f, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ycc_rgb565D_convert(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #2 {
end_hunk_0
