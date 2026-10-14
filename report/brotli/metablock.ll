Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/brotli/original/metablock?download=true
inline.NumInlined: 13
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 31
begin_hunk_0_@InitBlockSplitterDistance:bb.a
  %.0 = phi i64 [ %.88, %bb.h ], [ %i.x, %bb.i ]  ; 4 uses
  %.not85 = icmp ugt i64 %.0, %i.a
  %i.x = shl nuw nsw i64 %.0, 1
  br i1 %.not85, label %bb.j, label %bb.i, !llvm.loop !169

bb.j:                                             ; preds = %bb.i
  %i.y = shl nuw nsw i64 %.0, 2
  %i.z = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.y) #8 ; 2 uses
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !80  ; 2 uses
  %.not86 = icmp eq i64 %i.aa, 0
  br i1 %.not86, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !81
  %i.ad = shl i64 %i.aa, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.z, ptr align 4 %i.ac, i64 %i.ad, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !81
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.af) #8
  store ptr %i.z, ptr %i.ae, align 8, !tbaa !81
  store i64 %.0, ptr %i.u, align 8, !tbaa !80
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.g
  %i.ag = tail call i64 @llvm.umin.i64(i64 range(i64 1, 36028797018963969) %i.b, i64 257) ; 2 uses
  %i.ah = load ptr, ptr %i.f, align 8, !tbaa !105
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %i.b, ptr %i.ai, align 8, !tbaa !82
  store i64 %i.ag, ptr %5, align 8, !tbaa !24
  %i.aj = mul nuw nsw i64 %i.ag, 2192
  %i.ak = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.aj) #8 ; 4 uses
  store ptr %i.ak, ptr %4, align 8, !tbaa !170
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !63
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 2184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ak, i8 0, i64 2184, i1 false)
  store double +inf, ptr %i.am, align 8, !tbaa !19
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 4464
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @BlockSplitterFinishBlockLiteral(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2176 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !57   ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2144 ; 8 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !60
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !88
  %i.j = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i) ; 3 uses
  store i64 %i.j, ptr %i.f, align 8, !tbaa !60
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 10 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !90
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.n = trunc i64 %i.j to i32
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !81
  store i32 %i.n, ptr %i.p, align 4, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !79
  store i8 0, ptr %i.r, align 1, !tbaa !14
  %i.s = load i64, ptr %0, align 8, !tbaa !87
  %i.t = tail call double @BrotliBitsEntropy(ptr noundef %i.e, i64 noundef %i.s) #8 ; 2 uses
  store double %i.t, ptr %i.c, align 8, !tbaa !108
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2184
  store double %i.t, ptr %i.u, align 8, !tbaa !108
  %i.v = load i64, ptr %i.k, align 8, !tbaa !90
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.k, align 8, !tbaa !90
  %i.x = load i64, ptr %i.b, align 8, !tbaa !109
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.b, align 8, !tbaa !109
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2152 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !58
  %i.ab = add i64 %i.aa, 1                        ; 3 uses
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !58
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !92
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !24
  %i.af = icmp ult i64 %i.ab, %i.ae
  br i1 %i.af, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw [1040 x i8], ptr %i.e, i64 %i.ab ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ag, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.ah, align 8, !tbaa !36
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i64 0, ptr %i.f, align 8, !tbaa !60
  br label %bb.p

bb.e:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.p, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2152 ; 7 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !58
  %i.ak = getelementptr inbounds nuw [1040 x i8], ptr %i.e, i64 %i.aj
  %i.al = load i64, ptr %0, align 8, !tbaa !87
  %i.am = tail call double @BrotliBitsEntropy(ptr noundef %i.ak, i64 noundef %i.al) #8 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2160 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 10 uses
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !24
  %i.aq = load i64, ptr %i.ai, align 8, !tbaa !58
  %i.ar = getelementptr inbounds nuw [1040 x i8], ptr %i.e, i64 %i.aq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.ao, ptr noundef nonnull align 8 dereferenceable(1040) %i.ar, i64 1040, i1 false), !tbaa.struct !110
  %i.as = getelementptr inbounds nuw [1040 x i8], ptr %i.e, i64 %i.ap ; 8 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1024 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !59
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 3 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !59
  %i.ax = add i64 %i.aw, %i.au
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !59
  %bound0 = icmp ult ptr %i.ao, %i.at
  %bound1 = icmp ult ptr %i.as, %i.av
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %vector.memcheck ] ; 4 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load = load <4 x i32>, ptr %i.ay, align 4, !tbaa !13, !alias.scope !181
  %wide.load134 = load <4 x i32>, ptr %i.az, align 4, !tbaa !13, !alias.scope !181
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %index ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %wide.load135 = load <4 x i32>, ptr %i.ba, align 4, !tbaa !13, !alias.scope !182, !noalias !181
  %wide.load136 = load <4 x i32>, ptr %i.bb, align 4, !tbaa !13, !alias.scope !182, !noalias !181
  %i.bc = add <4 x i32> %wide.load135, %wide.load
  %i.bd = add <4 x i32> %wide.load136, %wide.load134
  store <4 x i32> %i.bc, ptr %i.ba, align 4, !tbaa !13, !alias.scope !182, !noalias !181
  store <4 x i32> %i.bd, ptr %i.bb, align 4, !tbaa !13, !alias.scope !182, !noalias !181
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %index.next ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %wide.load.1 = load <4 x i32>, ptr %i.be, align 4, !tbaa !13, !alias.scope !181
  %wide.load134.1 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !13, !alias.scope !181
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %index.next ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  %wide.load135.1 = load <4 x i32>, ptr %i.bg, align 4, !tbaa !13, !alias.scope !182, !noalias !181
  %wide.load136.1 = load <4 x i32>, ptr %i.bh, align 4, !tbaa !13, !alias.scope !182, !noalias !181
  %i.bi = add <4 x i32> %wide.load135.1, %wide.load.1
  %i.bj = add <4 x i32> %wide.load136.1, %wide.load134.1
  store <4 x i32> %i.bi, ptr %i.bg, align 4, !tbaa !13, !alias.scope !182, !noalias !181
  store <4 x i32> %i.bj, ptr %i.bh, align 4, !tbaa !13, !alias.scope !182, !noalias !181
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.bk = icmp eq i64 %index.next.1, 256
  br i1 %i.bk, label %HistogramAddHistogramLiteral.exit, label %vector.body, !llvm.loop !174

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %.0.i127 = phi i64 [ %i.ci, %scalar.ph ], [ 0, %vector.memcheck ] ; 6 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.0.i127
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !13
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.0.i127 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !13
  %i.bp = add i32 %i.bo, %i.bm
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !13
  %i.bq = or disjoint i64 %.0.i127, 1             ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !13
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.bq ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !13
  %i.bv = add i32 %i.bu, %i.bs
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !13
  %i.bw = or disjoint i64 %.0.i127, 2             ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !13
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.bw ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !13
  %i.cb = add i32 %i.ca, %i.by
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !13
  %i.cc = or disjoint i64 %.0.i127, 3             ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !13
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.cc ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !13
  %i.ch = add i32 %i.cg, %i.ce
  store i32 %i.ch, ptr %i.cf, align 4, !tbaa !13
  %i.ci = add nuw nsw i64 %.0.i127, 4             ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ci, 256
  br i1 %exitcond.not.3, label %HistogramAddHistogramLiteral.exit, label %scalar.ph, !llvm.loop !175

HistogramAddHistogramLiteral.exit:                ; preds = %vector.body, %scalar.ph
  %i.cj = load i64, ptr %0, align 8, !tbaa !87
  %i.ck = tail call double @BrotliBitsEntropy(ptr noundef nonnull %i.ao, i64 noundef %i.cj) #8 ; 3 uses
  %2 = fsub double %i.ck, %i.am
  %i.cl = load double, ptr %i.c, align 8, !tbaa !108
  %3 = fsub double %2, %i.cl                      ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 2168
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !24
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 9 uses
  %i.cp = load i64, ptr %i.ai, align 8, !tbaa !58
  %i.cq = getelementptr inbounds nuw [1040 x i8], ptr %i.e, i64 %i.cp
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.co, ptr noundef nonnull align 8 dereferenceable(1040) %i.cq, i64 1040, i1 false), !tbaa.struct !110
  %i.cr = getelementptr inbounds nuw [1040 x i8], ptr %i.e, i64 %i.cn ; 8 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 1024 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !59
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 2120 ; 3 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !59
  %i.cw = add i64 %i.cv, %i.ct
  store i64 %i.cw, ptr %i.cu, align 8, !tbaa !59
  %bound0143 = icmp ult ptr %i.co, %i.cs
  %bound1144 = icmp ult ptr %i.cr, %i.cu
  %found.conflict145 = and i1 %bound0143, %bound1144
  br i1 %found.conflict145, label %scalar.ph141, label %vector.body147

vector.body147:                                   ; preds = %HistogramAddHistogramLiteral.exit, %vector.body147
  %index148 = phi i64 [ %index.next153.1, %vector.body147 ], [ 0, %HistogramAddHistogramLiteral.exit ] ; 4 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %index148 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %wide.load149 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !13, !alias.scope !183
  %wide.load150 = load <4 x i32>, ptr %i.cy, align 4, !tbaa !13, !alias.scope !183
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %index148 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %wide.load151 = load <4 x i32>, ptr %i.cz, align 4, !tbaa !13, !alias.scope !184, !noalias !183
  %wide.load152 = load <4 x i32>, ptr %i.da, align 4, !tbaa !13, !alias.scope !184, !noalias !183
  %i.db = add <4 x i32> %wide.load151, %wide.load149
  %i.dc = add <4 x i32> %wide.load152, %wide.load150
  store <4 x i32> %i.db, ptr %i.cz, align 4, !tbaa !13, !alias.scope !184, !noalias !183
  store <4 x i32> %i.dc, ptr %i.da, align 4, !tbaa !13, !alias.scope !184, !noalias !183
  %index.next153 = or disjoint i64 %index148, 8   ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %index.next153 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %wide.load149.1 = load <4 x i32>, ptr %i.dd, align 4, !tbaa !13, !alias.scope !183
  %wide.load150.1 = load <4 x i32>, ptr %i.de, align 4, !tbaa !13, !alias.scope !183
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %index.next153 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16 ; 2 uses
  %wide.load151.1 = load <4 x i32>, ptr %i.df, align 4, !tbaa !13, !alias.scope !184, !noalias !183
  %wide.load152.1 = load <4 x i32>, ptr %i.dg, align 4, !tbaa !13, !alias.scope !184, !noalias !183
  %i.dh = add <4 x i32> %wide.load151.1, %wide.load149.1
  %i.di = add <4 x i32> %wide.load152.1, %wide.load150.1
  store <4 x i32> %i.dh, ptr %i.df, align 4, !tbaa !13, !alias.scope !184, !noalias !183
  store <4 x i32> %i.di, ptr %i.dg, align 4, !tbaa !13, !alias.scope !184, !noalias !183
  %index.next153.1 = add nuw nsw i64 %index148, 16 ; 2 uses
  %i.dj = icmp eq i64 %index.next153.1, 256
  br i1 %i.dj, label %HistogramAddHistogramLiteral.exit.1, label %vector.body147, !llvm.loop !179

scalar.ph141:                                     ; preds = %HistogramAddHistogramLiteral.exit, %scalar.ph141
  %.0.i127.1 = phi i64 [ %i.eh, %scalar.ph141 ], [ 0, %HistogramAddHistogramLiteral.exit ] ; 6 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %.0.i127.1
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !13
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.0.i127.1 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !13
  %i.do = add i32 %i.dn, %i.dl
  store i32 %i.do, ptr %i.dm, align 4, !tbaa !13
  %i.dp = or disjoint i64 %.0.i127.1, 1           ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !13
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.dp ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !13
  %i.du = add i32 %i.dt, %i.dr
  store i32 %i.du, ptr %i.ds, align 4, !tbaa !13
  %i.dv = or disjoint i64 %.0.i127.1, 2           ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !13
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.dv ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !13
  %i.ea = add i32 %i.dz, %i.dx
  store i32 %i.ea, ptr %i.dy, align 4, !tbaa !13
  %i.eb = or disjoint i64 %.0.i127.1, 3           ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !13
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.eb ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !13
  %i.eg = add i32 %i.ef, %i.ed
  store i32 %i.eg, ptr %i.ee, align 4, !tbaa !13
  %i.eh = add nuw nsw i64 %.0.i127.1, 4           ; 2 uses
  %exitcond.1.not.3 = icmp eq i64 %i.eh, 256
  br i1 %exitcond.1.not.3, label %HistogramAddHistogramLiteral.exit.1, label %scalar.ph141, !llvm.loop !180

HistogramAddHistogramLiteral.exit.1:              ; preds = %vector.body147, %scalar.ph141
  %i.ei = load i64, ptr %0, align 8, !tbaa !87
  %i.ej = tail call double @BrotliBitsEntropy(ptr noundef nonnull %i.co, i64 noundef %i.ei) #8 ; 2 uses
  %i.ek = fsub double %i.ej, %i.am
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 2184
  %i.em = load double, ptr %i.el, align 8, !tbaa !108
  %i.en = fsub double %i.ek, %i.em                ; 2 uses
  %i.eo = load i64, ptr %i.b, align 8, !tbaa !109 ; 2 uses
  %i.ep = icmp ult i64 %i.eo, 256
  br i1 %i.ep, label %bb.f, label %bb.j

bb.f:                                             ; preds = %HistogramAddHistogramLiteral.exit.1
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.er = load double, ptr %i.eq, align 8, !tbaa !89 ; 2 uses
  %i.es = fcmp ogt double %3, %i.er
  %i.et = fcmp ogt double %i.en, %i.er
  %or.cond = select i1 %i.es, i1 %i.et, i1 false
  br i1 %or.cond, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.eu = load i64, ptr %i.f, align 8, !tbaa !60
  %i.ev = trunc i64 %i.eu to i32
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !81
  %i.ey = load i64, ptr %i.k, align 8, !tbaa !90  ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.ey
  store i32 %i.ev, ptr %i.ez, align 4, !tbaa !13
  %i.fa = trunc nuw i64 %i.eo to i8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !79
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.ey
  store i8 %i.fa, ptr %i.fd, align 1, !tbaa !14
  %i.fe = load i64, ptr %i.an, align 8, !tbaa !24
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 2168
  store i64 %i.fe, ptr %i.ff, align 8, !tbaa !24
  %i.fg = load i64, ptr %i.b, align 8, !tbaa !109
  %i.fh = and i64 %i.fg, 255
  store i64 %i.fh, ptr %i.an, align 8, !tbaa !24
  %i.fi = load double, ptr %i.c, align 8, !tbaa !108
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 2184
  store double %i.fi, ptr %i.fj, align 8, !tbaa !108
  store double %i.am, ptr %i.c, align 8, !tbaa !108
  %i.fk = load i64, ptr %i.k, align 8, !tbaa !90
  %i.fl = add i64 %i.fk, 1
  store i64 %i.fl, ptr %i.k, align 8, !tbaa !90
  %i.fm = load i64, ptr %i.b, align 8, !tbaa !109
  %i.fn = add i64 %i.fm, 1
  store i64 %i.fn, ptr %i.b, align 8, !tbaa !109
  %i.fo = load i64, ptr %i.ai, align 8, !tbaa !58
  %i.fp = add i64 %i.fo, 1                        ; 3 uses
  store i64 %i.fp, ptr %i.ai, align 8, !tbaa !58
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !92
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !24
  %i.ft = icmp ult i64 %i.fp, %i.fs
  br i1 %i.ft, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.fu = getelementptr inbounds nuw [1040 x i8], ptr %i.e, i64 %i.fp ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.fu, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.fv, align 8, !tbaa !36
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store i64 0, ptr %i.f, align 8, !tbaa !60
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 2192
  store i64 0, ptr %i.fw, align 8, !tbaa !93
  %i.fx = load i64, ptr %i.h, align 8, !tbaa !88
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 2136
  store i64 %i.fx, ptr %i.fy, align 8, !tbaa !61
  br label %bb.p

bb.j:                                             ; preds = %bb.f, %HistogramAddHistogramLiteral.exit.1
  %i.fz = fadd double %3, -2.000000e+01
  %i.ga = fcmp olt double %i.en, %i.fz
  %i.gb = load i64, ptr %i.f, align 8, !tbaa !60
  %i.gc = trunc i64 %i.gb to i32                  ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !81
  %i.gf = load i64, ptr %i.k, align 8, !tbaa !90  ; 2 uses
  %i.gg = getelementptr [4 x i8], ptr %i.ge, i64 %i.gf ; 2 uses
  br i1 %i.ga, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.gc, ptr %i.gg, align 4, !tbaa !13
  %i.gh = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !79
  %i.gj = getelementptr i8, ptr %i.gi, i64 %i.gf  ; 2 uses
  %i.gk = getelementptr i8, ptr %i.gj, i64 -2
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !14
  store i8 %i.gl, ptr %i.gj, align 1, !tbaa !14
  %i.gm = load i64, ptr %i.an, align 8, !tbaa !24
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 2168 ; 2 uses
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !24 ; 2 uses
  store i64 %i.go, ptr %i.an, align 8, !tbaa !24
  store i64 %i.gm, ptr %i.gn, align 8, !tbaa !24
  %i.gp = getelementptr inbounds nuw [1040 x i8], ptr %i.e, i64 %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 1096
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.gp, ptr noundef nonnull align 8 dereferenceable(1040) %i.gq, i64 1040, i1 false), !tbaa.struct !110
  %i.gr = load double, ptr %i.c, align 8, !tbaa !108
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 2184
  store double %i.gr, ptr %i.gs, align 8, !tbaa !108
  store double %i.ej, ptr %i.c, align 8, !tbaa !108
  %i.gt = load i64, ptr %i.k, align 8, !tbaa !90
  %i.gu = add i64 %i.gt, 1
  store i64 %i.gu, ptr %i.k, align 8, !tbaa !90
  store i64 0, ptr %i.f, align 8, !tbaa !60
  %i.gv = load i64, ptr %i.ai, align 8, !tbaa !58
  %i.gw = getelementptr inbounds nuw [1040 x i8], ptr %i.e, i64 %i.gv ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.gw, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.gx, align 8, !tbaa !36
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 2192
  store i64 0, ptr %i.gy, align 8, !tbaa !93
  %i.gz = load i64, ptr %i.h, align 8, !tbaa !88
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 2136
  store i64 %i.gz, ptr %i.ha, align 8, !tbaa !61
  br label %bb.p

bb.l:                                             ; preds = %bb.j
  %i.hb = getelementptr i8, ptr %i.gg, i64 -4     ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !13
  %i.hd = add i32 %i.hc, %i.gc
  store i32 %i.hd, ptr %i.hb, align 4, !tbaa !13
  %i.he = load i64, ptr %i.an, align 8, !tbaa !24
  %i.hf = getelementptr inbounds nuw [1040 x i8], ptr %i.e, i64 %i.he
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.hf, ptr noundef nonnull align 8 dereferenceable(1040) %i.ao, i64 1040, i1 false), !tbaa.struct !110
  store double %i.ck, ptr %i.c, align 8, !tbaa !108
  %i.hg = load i64, ptr %i.b, align 8, !tbaa !109
  %i.hh = icmp eq i64 %i.hg, 1
  br i1 %i.hh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 2184
  store double %i.ck, ptr %i.hi, align 8, !tbaa !108
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store i64 0, ptr %i.f, align 8, !tbaa !60
  %i.hj = load i64, ptr %i.ai, align 8, !tbaa !58
  %i.hk = getelementptr inbounds nuw [1040 x i8], ptr %i.e, i64 %i.hj ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.hk, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.hl, align 8, !tbaa !36
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 2192 ; 2 uses
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !93
  %i.ho = add i64 %i.hn, 1                        ; 2 uses
  store i64 %i.ho, ptr %i.hm, align 8, !tbaa !93
  %i.hp = icmp ugt i64 %i.ho, 1
  br i1 %i.hp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.hq = load i64, ptr %i.h, align 8, !tbaa !88
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 2136 ; 2 uses
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !61
  %i.ht = add i64 %i.hs, %i.hq
  store i64 %i.ht, ptr %i.hr, align 8, !tbaa !61
  br label %bb.p

bb.p:                                             ; preds = %bb.i, %bb.n, %bb.o, %bb.k, %bb.e, %bb.d
  %.not124 = icmp eq i32 %1, 0
  br i1 %.not124, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.hu = load i64, ptr %i.b, align 8, !tbaa !109
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !92
  store i64 %i.hu, ptr %i.hw, align 8, !tbaa !24
  %i.hx = load i64, ptr %i.k, align 8, !tbaa !90
  %i.hy = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.hx, ptr %i.hy, align 8, !tbaa !82
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ContextBlockSplitterFinishBlock(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [13 x double], align 16           ; 5 uses
  %i.b = alloca [26 x double], align 16           ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !74   ; 15 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !69   ; 23 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !84   ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 8 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !86   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !71   ; 3 uses
  %i.n = icmp ult i64 %i.k, %i.m
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %i.m, ptr %i.j, align 8, !tbaa !86
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = phi i64 [ %i.m, %bb.b ], [ %i.k, %bb.a ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 10 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !73
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.s = trunc i64 %i.o to i32
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !81
  store i32 %i.s, ptr %i.u, align 4, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !79
  store i8 0, ptr %i.w, align 1, !tbaa !14
  %.not232.a = icmp eq i64 %i.f, 0
  br i1 %.not232.a, label %._crit_edge223, label %.lr.ph222

.lr.ph222:                                        ; preds = %bb.d
  %i.x = getelementptr [8 x i8], ptr %i.g, i64 %i.f
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph222, %bb.e
  %.0185220 = phi i64 [ 0, %.lr.ph222 ], [ %i.ad, %bb.e ] ; 4 uses
  %i.y = getelementptr inbounds nuw [1040 x i8], ptr %i.i, i64 %.0185220
  %i.z = load i64, ptr %0, align 8, !tbaa !68
  %i.aa = tail call double @BrotliBitsEntropy(ptr noundef %i.y, i64 noundef %i.z) #8 ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.0185220
  store double %i.aa, ptr %i.ab, align 8, !tbaa !108
  %i.ac = getelementptr [8 x i8], ptr %i.x, i64 %.0185220
  store double %i.aa, ptr %i.ac, align 8, !tbaa !108
  %i.ad = add nuw i64 %.0185220, 1                ; 2 uses
  %exitcond239.not.a = icmp eq i64 %i.ad, %i.f
  br i1 %exitcond239.not.a, label %._crit_edge223, label %bb.e, !llvm.loop !185

._crit_edge223:                                   ; preds = %bb.e, %bb.d
  %i.ae = load i64, ptr %i.p, align 8, !tbaa !73
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr %i.p, align 8, !tbaa !73
  %i.ag = load i64, ptr %i.d, align 8, !tbaa !109
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.d, align 8, !tbaa !109
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !85
  %i.ak = add i64 %i.aj, %i.f                     ; 3 uses
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !85
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !75
  %i.an = load i64, ptr %i.am, align 8, !tbaa !24
  %i.ao = icmp ult i64 %i.ak, %i.an
  br i1 %i.ao, label %bb.f, label %ClearHistogramsLiteral.exit200

bb.f:                                             ; preds = %._crit_edge223
  %i.ap = load ptr, ptr %i.h, align 8, !tbaa !84
  %i.aq = getelementptr inbounds nuw [1040 x i8], ptr %i.ap, i64 %i.ak ; 5 uses
  %i.ar = load i64, ptr %i.e, align 8, !tbaa !69  ; 4 uses
  %.not233 = icmp eq i64 %i.ar, 0
  br i1 %.not233, label %ClearHistogramsLiteral.exit200, label %.lr.ph226.preheader

.lr.ph226.preheader:                              ; preds = %bb.f
  %xtraiter293 = and i64 %i.ar, 3                 ; 3 uses
  %i.as = icmp ult i64 %i.ar, 4
  br i1 %i.as, label %.lr.ph226.epil.preheader, label %.lr.ph226.preheader.new

.lr.ph226.preheader.new:                          ; preds = %.lr.ph226.preheader
  %unroll_iter297 = and i64 %i.ar, -4
  br label %.lr.ph226

.lr.ph226:                                        ; preds = %.lr.ph226, %.lr.ph226.preheader.new
  %.0.i199224 = phi i64 [ 0, %.lr.ph226.preheader.new ], [ %i.be, %.lr.ph226 ] ; 5 uses
  %niter298 = phi i64 [ 0, %.lr.ph226.preheader.new ], [ %niter298.next.3, %.lr.ph226 ]
  %i.at = getelementptr inbounds nuw [1040 x i8], ptr %i.aq, i64 %.0.i199224 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.at, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.au, align 8, !tbaa !36
  %i.av = getelementptr inbounds nuw [1040 x i8], ptr %i.aq, i64 %.0.i199224 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1040
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.aw, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.ax, align 8, !tbaa !36
  %i.ay = getelementptr inbounds nuw [1040 x i8], ptr %i.aq, i64 %.0.i199224 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 2080
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 3112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.az, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.ba, align 8, !tbaa !36
  %i.bb = getelementptr inbounds nuw [1040 x i8], ptr %i.aq, i64 %.0.i199224 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 3120
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 4152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bc, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.bd, align 8, !tbaa !36
  %i.be = add nuw i64 %.0.i199224, 4              ; 2 uses
  %niter298.next.3 = add nuw i64 %niter298, 4     ; 2 uses
  %niter298.ncmp.3 = icmp eq i64 %niter298.next.3, %unroll_iter297
  br i1 %niter298.ncmp.3, label %ClearHistogramsLiteral.exit200.loopexit.unr-lcssa, label %.lr.ph226, !llvm.loop !0

ClearHistogramsLiteral.exit200.loopexit.unr-lcssa: ; preds = %.lr.ph226
  %lcmp.mod295.not = icmp eq i64 %xtraiter293, 0
  br i1 %lcmp.mod295.not, label %ClearHistogramsLiteral.exit200, label %.lr.ph226.epil.preheader

.lr.ph226.epil.preheader:                         ; preds = %ClearHistogramsLiteral.exit200.loopexit.unr-lcssa, %.lr.ph226.preheader
  %.0.i199224.epil.init = phi i64 [ 0, %.lr.ph226.preheader ], [ %i.be, %ClearHistogramsLiteral.exit200.loopexit.unr-lcssa ]
  %lcmp.mod296 = icmp ne i64 %xtraiter293, 0
  tail call void @llvm.assume(i1 %lcmp.mod296)
  br label %.lr.ph226.epil

.lr.ph226.epil:                                   ; preds = %.lr.ph226.epil, %.lr.ph226.epil.preheader
  %.0.i199224.epil = phi i64 [ %i.bh, %.lr.ph226.epil ], [ %.0.i199224.epil.init, %.lr.ph226.epil.preheader ] ; 2 uses
  %epil.iter294 = phi i64 [ %epil.iter294.next, %.lr.ph226.epil ], [ 0, %.lr.ph226.epil.preheader ]
  %i.bf = getelementptr inbounds nuw [1040 x i8], ptr %i.aq, i64 %.0.i199224.epil ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bf, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.bg, align 8, !tbaa !36
  %i.bh = add nuw i64 %.0.i199224.epil, 1
  %epil.iter294.next = add i64 %epil.iter294, 1   ; 2 uses
  %epil.iter294.cmp.not = icmp eq i64 %epil.iter294.next, %xtraiter293
  br i1 %epil.iter294.cmp.not, label %ClearHistogramsLiteral.exit200, label %.lr.ph226.epil, !llvm.loop !186

ClearHistogramsLiteral.exit200:                   ; preds = %ClearHistogramsLiteral.exit200.loopexit.unr-lcssa, %.lr.ph226.epil, %bb.f, %._crit_edge223
  store i64 0, ptr %i.j, align 8, !tbaa !86
  br label %bb.v

bb.g:                                             ; preds = %bb.c
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %bb.v, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %.mask = and i64 %i.f, 9223372036854775807
  %.not195 = icmp eq i64 %.mask, 0
  br i1 %.not195, label %bb.i, label %.thread

.thread:                                          ; preds = %bb.h
  %i.bi = mul i64 %i.f, 2080
  %i.bj = tail call ptr @BrotliAllocate(ptr noundef %1, i64 noundef %i.bi) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  br label %.lr.ph

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %.not227 = icmp eq i64 %i.f, 0
  br i1 %.not227, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.thread, %bb.i
  %i.bk = phi ptr [ %i.bj, %.thread ], [ null, %bb.i ] ; 7 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bo = mul i64 %i.f, 1040                      ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bk, i64 %i.bo
  %i.bp = mul i64 %i.f, 2080
  %i.bq = getelementptr i8, ptr %i.bk, i64 %i.bp
  %scevgep259 = getelementptr i8, ptr %i.bq, i64 -16
  %i.br = getelementptr i8, ptr %i.bk, i64 %i.bo
  %scevgep264 = getelementptr i8, ptr %i.br, i64 -16
  br label %vector.memcheck263

vector.memcheck263:                               ; preds = %.lr.ph, %HistogramAddHistogramLiteral.exit.1
  %.sroa.0.0 = phi double [ 0.000000e+00, %.lr.ph ], [ %5, %HistogramAddHistogramLiteral.exit.1 ]
  %.sroa.7.0 = phi double [ 0.000000e+00, %.lr.ph ], [ %i.fv, %HistogramAddHistogramLiteral.exit.1 ]
  %.0184204 = phi i64 [ 0, %.lr.ph ], [ %i.fw, %HistogramAddHistogramLiteral.exit.1 ] ; 8 uses
  %i.bs = load i64, ptr %i.bl, align 8, !tbaa !85
  %i.bt = getelementptr [1040 x i8], ptr %i.i, i64 %i.bs
  %i.bu = getelementptr [1040 x i8], ptr %i.bt, i64 %.0184204 ; 3 uses
  %i.bv = load i64, ptr %0, align 8, !tbaa !68
  %i.bw = tail call double @BrotliBitsEntropy(ptr noundef %i.bu, i64 noundef %i.bv) #8 ; 3 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0184204
  store double %i.bw, ptr %i.bx, align 8, !tbaa !108
  %invariant.gep = getelementptr [1040 x i8], ptr %i.i, i64 %.0184204 ; 2 uses
  %i.by = load i64, ptr %i.bm, align 8, !tbaa !24
  %i.bz = getelementptr inbounds nuw [1040 x i8], ptr %i.bk, i64 %.0184204 ; 9 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.bz, ptr noundef nonnull align 8 dereferenceable(1040) %i.bu, i64 1040, i1 false), !tbaa.struct !110
  %gep = getelementptr [1040 x i8], ptr %invariant.gep, i64 %i.by ; 8 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %gep, i64 1024 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !59
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 1024 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !59
  %i.ce = add i64 %i.cd, %i.cb
  store i64 %i.ce, ptr %i.cc, align 8, !tbaa !59
  %bound0265 = icmp ult ptr %i.bk, %i.ca
  %bound1266 = icmp ult ptr %gep, %scevgep264
  %found.conflict267 = and i1 %bound0265, %bound1266
  br i1 %found.conflict267, label %scalar.ph268, label %vector.body270

vector.body270:                                   ; preds = %vector.memcheck263, %vector.body270
  %index271 = phi i64 [ %index.next276.1, %vector.body270 ], [ 0, %vector.memcheck263 ] ; 4 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %gep, i64 %index271 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %wide.load272 = load <4 x i32>, ptr %i.cf, align 4, !tbaa !13, !alias.scope !203
  %wide.load273 = load <4 x i32>, ptr %i.cg, align 4, !tbaa !13, !alias.scope !203
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %index271 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 2 uses
  %wide.load274 = load <4 x i32>, ptr %i.ch, align 4, !tbaa !13, !alias.scope !204, !noalias !203
  %wide.load275 = load <4 x i32>, ptr %i.ci, align 4, !tbaa !13, !alias.scope !204, !noalias !203
  %i.cj = add <4 x i32> %wide.load274, %wide.load272
  %i.ck = add <4 x i32> %wide.load275, %wide.load273
  store <4 x i32> %i.cj, ptr %i.ch, align 4, !tbaa !13, !alias.scope !204, !noalias !203
  store <4 x i32> %i.ck, ptr %i.ci, align 4, !tbaa !13, !alias.scope !204, !noalias !203
  %index.next276 = or disjoint i64 %index271, 8   ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %gep, i64 %index.next276 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %wide.load272.1 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !13, !alias.scope !203
  %wide.load273.1 = load <4 x i32>, ptr %i.cm, align 4, !tbaa !13, !alias.scope !203
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %index.next276 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 2 uses
  %wide.load274.1 = load <4 x i32>, ptr %i.cn, align 4, !tbaa !13, !alias.scope !204, !noalias !203
  %wide.load275.1 = load <4 x i32>, ptr %i.co, align 4, !tbaa !13, !alias.scope !204, !noalias !203
  %i.cp = add <4 x i32> %wide.load274.1, %wide.load272.1
  %i.cq = add <4 x i32> %wide.load275.1, %wide.load273.1
  store <4 x i32> %i.cp, ptr %i.cn, align 4, !tbaa !13, !alias.scope !204, !noalias !203
  store <4 x i32> %i.cq, ptr %i.co, align 4, !tbaa !13, !alias.scope !204, !noalias !203
  %index.next276.1 = add nuw nsw i64 %index271, 16 ; 2 uses
  %i.cr = icmp eq i64 %index.next276.1, 256
  br i1 %i.cr, label %HistogramAddHistogramLiteral.exit, label %vector.body270, !llvm.loop !190

scalar.ph268:                                     ; preds = %vector.memcheck263, %scalar.ph268
  %.0.i201202 = phi i64 [ %i.dp, %scalar.ph268 ], [ 0, %vector.memcheck263 ] ; 6 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %gep, i64 %.0.i201202
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !13
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %.0.i201202 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !13
  %i.cw = add i32 %i.cv, %i.ct
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !13
  %i.cx = or disjoint i64 %.0.i201202, 1          ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %gep, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !13
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.cx ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !13
  %i.dc = add i32 %i.db, %i.cz
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !13
  %i.dd = or disjoint i64 %.0.i201202, 2          ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %gep, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !13
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.dd ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !13
  %i.di = add i32 %i.dh, %i.df
  store i32 %i.di, ptr %i.dg, align 4, !tbaa !13
  %i.dj = or disjoint i64 %.0.i201202, 3          ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %gep, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !13
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.dj ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !13
  %i.do = add i32 %i.dn, %i.dl
  store i32 %i.do, ptr %i.dm, align 4, !tbaa !13
  %i.dp = add nuw nsw i64 %.0.i201202, 4          ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.dp, 256
  br i1 %exitcond.not.3, label %HistogramAddHistogramLiteral.exit, label %scalar.ph268, !llvm.loop !191

HistogramAddHistogramLiteral.exit:                ; preds = %vector.body270, %scalar.ph268
  %i.dq = load i64, ptr %0, align 8, !tbaa !68
  %i.dr = tail call double @BrotliBitsEntropy(ptr noundef nonnull %i.bz, i64 noundef %i.dq) #8 ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.0184204
  store double %i.dr, ptr %i.ds, align 8, !tbaa !108
  %3 = fsub double %i.dr, %i.bw
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.0184204
  %i.du = load double, ptr %i.dt, align 8, !tbaa !108
  %4 = fsub double %3, %i.du
  %5 = fadd double %.sroa.0.0, %4                 ; 2 uses
  %i.dv = add i64 %i.f, %.0184204                 ; 3 uses
  %i.dw = load i64, ptr %i.bn, align 8, !tbaa !24
  %i.dx = getelementptr inbounds nuw [1040 x i8], ptr %i.bk, i64 %i.dv ; 9 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.dx, ptr noundef nonnull align 8 dereferenceable(1040) %i.bu, i64 1040, i1 false), !tbaa.struct !110
  %gep.1 = getelementptr [1040 x i8], ptr %invariant.gep, i64 %i.dw ; 8 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %gep.1, i64 1024 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !59
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 1024 ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !59
  %i.ec = add i64 %i.eb, %i.dz
  store i64 %i.ec, ptr %i.ea, align 8, !tbaa !59
  %bound0 = icmp ult ptr %scevgep, %i.dy
  %bound1 = icmp ult ptr %gep.1, %scevgep259
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %HistogramAddHistogramLiteral.exit, %vector.body
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %HistogramAddHistogramLiteral.exit ] ; 4 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %gep.1, i64 %index ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %wide.load = load <4 x i32>, ptr %i.ed, align 4, !tbaa !13, !alias.scope !205
  %wide.load260 = load <4 x i32>, ptr %i.ee, align 4, !tbaa !13, !alias.scope !205
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %index ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 2 uses
  %wide.load261 = load <4 x i32>, ptr %i.ef, align 4, !tbaa !13, !alias.scope !206, !noalias !205
  %wide.load262 = load <4 x i32>, ptr %i.eg, align 4, !tbaa !13, !alias.scope !206, !noalias !205
  %i.eh = add <4 x i32> %wide.load261, %wide.load
  %i.ei = add <4 x i32> %wide.load262, %wide.load260
  store <4 x i32> %i.eh, ptr %i.ef, align 4, !tbaa !13, !alias.scope !206, !noalias !205
  store <4 x i32> %i.ei, ptr %i.eg, align 4, !tbaa !13, !alias.scope !206, !noalias !205
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %gep.1, i64 %index.next ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %wide.load.1 = load <4 x i32>, ptr %i.ej, align 4, !tbaa !13, !alias.scope !205
  %wide.load260.1 = load <4 x i32>, ptr %i.ek, align 4, !tbaa !13, !alias.scope !205
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %index.next ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16 ; 2 uses
  %wide.load261.1 = load <4 x i32>, ptr %i.el, align 4, !tbaa !13, !alias.scope !206, !noalias !205
  %wide.load262.1 = load <4 x i32>, ptr %i.em, align 4, !tbaa !13, !alias.scope !206, !noalias !205
  %i.en = add <4 x i32> %wide.load261.1, %wide.load.1
  %i.eo = add <4 x i32> %wide.load262.1, %wide.load260.1
  store <4 x i32> %i.en, ptr %i.el, align 4, !tbaa !13, !alias.scope !206, !noalias !205
  store <4 x i32> %i.eo, ptr %i.em, align 4, !tbaa !13, !alias.scope !206, !noalias !205
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.ep = icmp eq i64 %index.next.1, 256
  br i1 %i.ep, label %HistogramAddHistogramLiteral.exit.1, label %vector.body, !llvm.loop !195

scalar.ph:                                        ; preds = %HistogramAddHistogramLiteral.exit, %scalar.ph
  %.0.i201202.1 = phi i64 [ %i.fn, %scalar.ph ], [ 0, %HistogramAddHistogramLiteral.exit ] ; 6 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %gep.1, i64 %.0.i201202.1
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !13
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %.0.i201202.1 ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !13
  %i.eu = add i32 %i.et, %i.er
  store i32 %i.eu, ptr %i.es, align 4, !tbaa !13
  %i.ev = or disjoint i64 %.0.i201202.1, 1        ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %gep.1, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !13
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.ev ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !13
  %i.fa = add i32 %i.ez, %i.ex
  store i32 %i.fa, ptr %i.ey, align 4, !tbaa !13
  %i.fb = or disjoint i64 %.0.i201202.1, 2        ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %gep.1, i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !13
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.fb ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !13
  %i.fg = add i32 %i.ff, %i.fd
  store i32 %i.fg, ptr %i.fe, align 4, !tbaa !13
  %i.fh = or disjoint i64 %.0.i201202.1, 3        ; 2 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %gep.1, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !13
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.fh ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !13
  %i.fm = add i32 %i.fl, %i.fj
  store i32 %i.fm, ptr %i.fk, align 4, !tbaa !13
  %i.fn = add nuw nsw i64 %.0.i201202.1, 4        ; 2 uses
  %exitcond.1.not.3 = icmp eq i64 %i.fn, 256
  br i1 %exitcond.1.not.3, label %HistogramAddHistogramLiteral.exit.1, label %scalar.ph, !llvm.loop !196

HistogramAddHistogramLiteral.exit.1:              ; preds = %vector.body, %scalar.ph
  %i.fo = load i64, ptr %0, align 8, !tbaa !68
  %i.fp = tail call double @BrotliBitsEntropy(ptr noundef nonnull %i.dx, i64 noundef %i.fo) #8 ; 2 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.dv
  store double %i.fp, ptr %i.fq, align 8, !tbaa !108
  %i.fr = fsub double %i.fp, %i.bw
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.dv
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !108
  %i.fu = fsub double %i.fr, %i.ft
  %i.fv = fadd double %.sroa.7.0, %i.fu           ; 2 uses
  %i.fw = add nuw i64 %.0184204, 1                ; 2 uses
  %exitcond234.not = icmp eq i64 %i.fw, %i.f
  br i1 %exitcond234.not, label %._crit_edge, label %vector.memcheck263, !llvm.loop !197

._crit_edge:                                      ; preds = %HistogramAddHistogramLiteral.exit.1, %bb.i
  %.not227256 = phi i1 [ true, %bb.i ], [ false, %HistogramAddHistogramLiteral.exit.1 ] ; 3 uses
  %i.fx = phi ptr [ null, %bb.i ], [ %i.bk, %HistogramAddHistogramLiteral.exit.1 ] ; 3 uses
  %.sroa.0.1 = phi double [ 0.000000e+00, %bb.i ], [ %5, %HistogramAddHistogramLiteral.exit.1 ] ; 2 uses
  %.sroa.7.1 = phi double [ 0.000000e+00, %bb.i ], [ %i.fv, %HistogramAddHistogramLiteral.exit.1 ] ; 2 uses
  %i.fy = load i64, ptr %i.d, align 8, !tbaa !109 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !70
  %i.gb = icmp ult i64 %i.fy, %i.ga
  br i1 %i.gb, label %bb.j, label %bb.m

bb.j:                                             ; preds = %._crit_edge
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !72 ; 2 uses
  %i.ge = fcmp ogt double %.sroa.0.1, %i.gd
  %i.gf = fcmp ogt double %.sroa.7.1, %i.gd
  %or.cond = select i1 %i.ge, i1 %i.gf, i1 false
  br i1 %or.cond, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.gg = load i64, ptr %i.j, align 8, !tbaa !86
  %i.gh = trunc i64 %i.gg to i32
  %i.gi = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !81
  %i.gk = load i64, ptr %i.p, align 8, !tbaa !73  ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %i.gk
  store i32 %i.gh, ptr %i.gl, align 4, !tbaa !13
  %i.gm = trunc i64 %i.fy to i8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !79
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gk
  store i8 %i.gm, ptr %i.gp, align 1, !tbaa !14
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !24
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.gr, ptr %i.gs, align 8, !tbaa !24
  %i.gt = load i64, ptr %i.d, align 8, !tbaa !109
  %i.gu = mul i64 %i.gt, %i.f
  store i64 %i.gu, ptr %i.gq, align 8, !tbaa !24
  br i1 %.not227256, label %._crit_edge216, label %.lr.ph215

.lr.ph215:                                        ; preds = %bb.k
  %i.gv = getelementptr [8 x i8], ptr %i.g, i64 %i.f ; 2 uses
  %min.iters.check = icmp ult i64 %i.f, 4
  br i1 %min.iters.check, label %scalar.ph278.preheader, label %vector.ph279

vector.ph279:                                     ; preds = %.lr.ph215
  %n.vec = and i64 %i.f, -4                       ; 3 uses
  br label %vector.body280

vector.body280:                                   ; preds = %vector.body280, %vector.ph279
  %index281 = phi i64 [ 0, %vector.ph279 ], [ %index.next286, %vector.body280 ] ; 4 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index281 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16 ; 2 uses
  %wide.load282 = load <2 x double>, ptr %i.gw, align 8, !tbaa !108
  %wide.load283 = load <2 x double>, ptr %i.gx, align 8, !tbaa !108
  %i.gy = getelementptr [8 x i8], ptr %i.gv, i64 %index281 ; 2 uses
  %i.gz = getelementptr i8, ptr %i.gy, i64 16
  store <2 x double> %wide.load282, ptr %i.gy, align 8, !tbaa !108
  store <2 x double> %wide.load283, ptr %i.gz, align 8, !tbaa !108
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index281 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %wide.load284 = load <2 x double>, ptr %i.ha, align 16, !tbaa !108
  %wide.load285 = load <2 x double>, ptr %i.hb, align 16, !tbaa !108
  store <2 x double> %wide.load284, ptr %i.gw, align 8, !tbaa !108
  store <2 x double> %wide.load285, ptr %i.gx, align 8, !tbaa !108
  %index.next286 = add nuw i64 %index281, 4       ; 2 uses
  %i.hc = icmp eq i64 %index.next286, %n.vec
  br i1 %i.hc, label %middle.block287, label %vector.body280, !llvm.loop !198

middle.block287:                                  ; preds = %vector.body280
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %._crit_edge216, label %scalar.ph278.preheader

scalar.ph278.preheader:                           ; preds = %.lr.ph215, %middle.block287
  %.1213.ph = phi i64 [ 0, %.lr.ph215 ], [ %n.vec, %middle.block287 ]
  br label %scalar.ph278

scalar.ph278:                                     ; preds = %scalar.ph278.preheader, %scalar.ph278
  %.1213 = phi i64 [ %i.hi, %scalar.ph278 ], [ %.1213.ph, %scalar.ph278.preheader ] ; 4 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.1213 ; 2 uses
  %i.he = load double, ptr %i.hd, align 8, !tbaa !108
  %i.hf = getelementptr [8 x i8], ptr %i.gv, i64 %.1213
  store double %i.he, ptr %i.hf, align 8, !tbaa !108
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.1213
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !108
  store double %i.hh, ptr %i.hd, align 8, !tbaa !108
  %i.hi = add nuw nsw i64 %.1213, 1               ; 2 uses
  %exitcond237.not = icmp eq i64 %i.hi, %i.f
  br i1 %exitcond237.not, label %._crit_edge216, label %scalar.ph278, !llvm.loop !199

._crit_edge216:                                   ; preds = %scalar.ph278, %middle.block287, %bb.k
  %i.hj = load i64, ptr %i.p, align 8, !tbaa !73
  %i.hk = add i64 %i.hj, 1
  store i64 %i.hk, ptr %i.p, align 8, !tbaa !73
  %i.hl = load i64, ptr %i.d, align 8, !tbaa !109
  %i.hm = add i64 %i.hl, 1
  store i64 %i.hm, ptr %i.d, align 8, !tbaa !109
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !85
  %i.hp = add i64 %i.ho, %i.f                     ; 3 uses
  store i64 %i.hp, ptr %i.hn, align 8, !tbaa !85
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !75
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !24
  %i.ht = icmp ult i64 %i.hp, %i.hs
  br i1 %i.ht, label %bb.l, label %ClearHistogramsLiteral.exit

bb.l:                                             ; preds = %._crit_edge216
  %i.hu = load ptr, ptr %i.h, align 8, !tbaa !84
  %i.hv = getelementptr inbounds nuw [1040 x i8], ptr %i.hu, i64 %i.hp ; 5 uses
  %i.hw = load i64, ptr %i.e, align 8, !tbaa !69  ; 4 uses
  %.not231 = icmp eq i64 %i.hw, 0
  br i1 %.not231, label %ClearHistogramsLiteral.exit, label %.lr.ph219.preheader

.lr.ph219.preheader:                              ; preds = %bb.l
  %xtraiter = and i64 %i.hw, 3                    ; 3 uses
  %i.hx = icmp ult i64 %i.hw, 4
  br i1 %i.hx, label %.lr.ph219.epil.preheader, label %.lr.ph219.preheader.new

.lr.ph219.preheader.new:                          ; preds = %.lr.ph219.preheader
  %unroll_iter = and i64 %i.hw, -4
  br label %.lr.ph219

.lr.ph219:                                        ; preds = %.lr.ph219, %.lr.ph219.preheader.new
  %.0.i217 = phi i64 [ 0, %.lr.ph219.preheader.new ], [ %i.ij, %.lr.ph219 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph219.preheader.new ], [ %niter.next.3, %.lr.ph219 ]
  %i.hy = getelementptr inbounds nuw [1040 x i8], ptr %i.hv, i64 %.0.i217 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.hy, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.hz, align 8, !tbaa !36
  %i.ia = getelementptr inbounds nuw [1040 x i8], ptr %i.hv, i64 %.0.i217 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 1040
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ib, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.ic, align 8, !tbaa !36
  %i.id = getelementptr inbounds nuw [1040 x i8], ptr %i.hv, i64 %.0.i217 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 2080
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 3112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ie, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.if, align 8, !tbaa !36
  %i.ig = getelementptr inbounds nuw [1040 x i8], ptr %i.hv, i64 %.0.i217 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 3120
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 4152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ih, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.ii, align 8, !tbaa !36
  %i.ij = add nuw i64 %.0.i217, 4                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %ClearHistogramsLiteral.exit.loopexit.unr-lcssa, label %.lr.ph219, !llvm.loop !0

ClearHistogramsLiteral.exit.loopexit.unr-lcssa:   ; preds = %.lr.ph219
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %ClearHistogramsLiteral.exit, label %.lr.ph219.epil.preheader

.lr.ph219.epil.preheader:                         ; preds = %ClearHistogramsLiteral.exit.loopexit.unr-lcssa, %.lr.ph219.preheader
  %.0.i217.epil.init = phi i64 [ 0, %.lr.ph219.preheader ], [ %i.ij, %ClearHistogramsLiteral.exit.loopexit.unr-lcssa ]
  %lcmp.mod292 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod292)
  br label %.lr.ph219.epil

.lr.ph219.epil:                                   ; preds = %.lr.ph219.epil, %.lr.ph219.epil.preheader
  %.0.i217.epil = phi i64 [ %i.im, %.lr.ph219.epil ], [ %.0.i217.epil.init, %.lr.ph219.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph219.epil ], [ 0, %.lr.ph219.epil.preheader ]
  %i.ik = getelementptr inbounds nuw [1040 x i8], ptr %i.hv, i64 %.0.i217.epil ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ik, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.il, align 8, !tbaa !36
  %i.im = add nuw i64 %.0.i217.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %ClearHistogramsLiteral.exit, label %.lr.ph219.epil, !llvm.loop !200

ClearHistogramsLiteral.exit:                      ; preds = %ClearHistogramsLiteral.exit.loopexit.unr-lcssa, %.lr.ph219.epil, %bb.l, %._crit_edge216
  store i64 0, ptr %i.j, align 8, !tbaa !86
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i64 0, ptr %i.in, align 8, !tbaa !77
  %i.io = load i64, ptr %i.l, align 8, !tbaa !71
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.io, ptr %i.ip, align 8, !tbaa !76
  br label %bb.u

bb.m:                                             ; preds = %bb.j, %._crit_edge
  %i.iq = fadd double %.sroa.0.1, -2.000000e+01
  %i.ir = fcmp olt double %.sroa.7.1, %i.iq
  %i.is = load i64, ptr %i.j, align 8, !tbaa !86
  %i.it = trunc i64 %i.is to i32                  ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !81
  %i.iw = load i64, ptr %i.p, align 8, !tbaa !73  ; 2 uses
  %i.ix = getelementptr [4 x i8], ptr %i.iv, i64 %i.iw ; 2 uses
  br i1 %i.ir, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  store i32 %i.it, ptr %i.ix, align 4, !tbaa !13
  %i.iy = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !79
end_hunk_0
begin_hunk_1_@ContextBlockSplitterFinishBlock:bb.a
  %i.kv = add nuw nsw i64 %.3205, 1               ; 2 uses
  %exitcond235.not = icmp eq i64 %i.kv, %i.f
  br i1 %exitcond235.not, label %._crit_edge208, label %bb.q, !llvm.loop !202

._crit_edge208:                                   ; preds = %bb.s, %bb.p
  store i64 0, ptr %i.j, align 8, !tbaa !86
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !77
  %i.ky = add i64 %i.kx, 1                        ; 2 uses
  store i64 %i.ky, ptr %i.kw, align 8, !tbaa !77
  %i.kz = icmp ugt i64 %i.ky, 1
  br i1 %i.kz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge208
  %i.la = load i64, ptr %i.l, align 8, !tbaa !71
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !76
  %i.ld = add i64 %i.lc, %i.la
  store i64 %i.ld, ptr %i.lb, align 8, !tbaa !76
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge212, %bb.t, %._crit_edge208, %ClearHistogramsLiteral.exit
  tail call void @BrotliFree(ptr noundef %1, ptr noundef %i.fx) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.v

bb.v:                                             ; preds = %bb.g, %bb.u, %ClearHistogramsLiteral.exit200
  %.not196 = icmp eq i32 %2, 0
  br i1 %.not196, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.le = load i64, ptr %i.d, align 8, !tbaa !109
  %i.lf = mul i64 %i.le, %i.f
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !75
  store i64 %i.lf, ptr %i.lh, align 8, !tbaa !24
  %i.li = load i64, ptr %i.p, align 8, !tbaa !73
  %i.lj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.li, ptr %i.lj, align 8, !tbaa !82
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @BlockSplitterFinishBlockCommand(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5760 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !51   ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 5728 ; 8 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !54
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !95
  %i.j = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i) ; 3 uses
  store i64 %i.j, ptr %i.f, align 8, !tbaa !54
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 10 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !97
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.n = trunc i64 %i.j to i32
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !81
  store i32 %i.n, ptr %i.p, align 4, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !79
  store i8 0, ptr %i.r, align 1, !tbaa !14
  %i.s = load i64, ptr %0, align 8, !tbaa !94
  %i.t = tail call double @BrotliBitsEntropy(ptr noundef %i.e, i64 noundef %i.s) #8 ; 2 uses
  store double %i.t, ptr %i.c, align 8, !tbaa !108
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 5768
  store double %i.t, ptr %i.u, align 8, !tbaa !108
  %i.v = load i64, ptr %i.k, align 8, !tbaa !97
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.k, align 8, !tbaa !97
  %i.x = load i64, ptr %i.b, align 8, !tbaa !109
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.b, align 8, !tbaa !109
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 5736 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !52
  %i.ab = add i64 %i.aa, 1                        ; 3 uses
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !52
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !99
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !24
  %i.af = icmp ult i64 %i.ab, %i.ae
  br i1 %i.af, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw [2832 x i8], ptr %i.e, i64 %i.ab ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.ag, i8 0, i64 2824, i1 false)
  store double +inf, ptr %i.ah, align 8, !tbaa !41
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i64 0, ptr %i.f, align 8, !tbaa !54
  br label %bb.p

bb.e:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.p, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 5736 ; 7 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !52
  %i.ak = getelementptr inbounds nuw [2832 x i8], ptr %i.e, i64 %i.aj
  %i.al = load i64, ptr %0, align 8, !tbaa !94
  %i.am = tail call double @BrotliBitsEntropy(ptr noundef %i.ak, i64 noundef %i.al) #8 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 5744 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 10 uses
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !24
  %i.aq = load i64, ptr %i.ai, align 8, !tbaa !52
  %i.ar = getelementptr inbounds nuw [2832 x i8], ptr %i.e, i64 %i.aq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2832) %i.ao, ptr noundef nonnull align 8 dereferenceable(2832) %i.ar, i64 2832, i1 false), !tbaa.struct !217
  %i.as = getelementptr inbounds nuw [2832 x i8], ptr %i.e, i64 %i.ap ; 8 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 2816 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !53
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 2872 ; 3 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !53
  %i.ax = add i64 %i.aw, %i.au
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !53
  %bound0 = icmp ult ptr %i.ao, %i.at
  %bound1 = icmp ult ptr %i.as, %i.av
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %vector.memcheck ] ; 4 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load = load <4 x i32>, ptr %i.ay, align 4, !tbaa !13, !alias.scope !218
  %wide.load134 = load <4 x i32>, ptr %i.az, align 4, !tbaa !13, !alias.scope !218
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %index ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %wide.load135 = load <4 x i32>, ptr %i.ba, align 4, !tbaa !13, !alias.scope !219, !noalias !218
  %wide.load136 = load <4 x i32>, ptr %i.bb, align 4, !tbaa !13, !alias.scope !219, !noalias !218
  %i.bc = add <4 x i32> %wide.load135, %wide.load
  %i.bd = add <4 x i32> %wide.load136, %wide.load134
  store <4 x i32> %i.bc, ptr %i.ba, align 4, !tbaa !13, !alias.scope !219, !noalias !218
  store <4 x i32> %i.bd, ptr %i.bb, align 4, !tbaa !13, !alias.scope !219, !noalias !218
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %index.next ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %wide.load.1 = load <4 x i32>, ptr %i.be, align 4, !tbaa !13, !alias.scope !218
  %wide.load134.1 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !13, !alias.scope !218
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %index.next ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  %wide.load135.1 = load <4 x i32>, ptr %i.bg, align 4, !tbaa !13, !alias.scope !219, !noalias !218
  %wide.load136.1 = load <4 x i32>, ptr %i.bh, align 4, !tbaa !13, !alias.scope !219, !noalias !218
  %i.bi = add <4 x i32> %wide.load135.1, %wide.load.1
  %i.bj = add <4 x i32> %wide.load136.1, %wide.load134.1
  store <4 x i32> %i.bi, ptr %i.bg, align 4, !tbaa !13, !alias.scope !219, !noalias !218
  store <4 x i32> %i.bj, ptr %i.bh, align 4, !tbaa !13, !alias.scope !219, !noalias !218
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.bk = icmp eq i64 %index.next.1, 704
  br i1 %i.bk, label %HistogramAddHistogramCommand.exit, label %vector.body, !llvm.loop !210

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %.0.i127 = phi i64 [ %i.ci, %scalar.ph ], [ 0, %vector.memcheck ] ; 6 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.0.i127
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !13
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.0.i127 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !13
  %i.bp = add i32 %i.bo, %i.bm
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !13
  %i.bq = or disjoint i64 %.0.i127, 1             ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !13
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.bq ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !13
  %i.bv = add i32 %i.bu, %i.bs
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !13
  %i.bw = or disjoint i64 %.0.i127, 2             ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !13
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.bw ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !13
  %i.cb = add i32 %i.ca, %i.by
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !13
  %i.cc = or disjoint i64 %.0.i127, 3             ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !13
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.cc ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !13
  %i.ch = add i32 %i.cg, %i.ce
  store i32 %i.ch, ptr %i.cf, align 4, !tbaa !13
  %i.ci = add nuw nsw i64 %.0.i127, 4             ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ci, 704
  br i1 %exitcond.not.3, label %HistogramAddHistogramCommand.exit, label %scalar.ph, !llvm.loop !211

HistogramAddHistogramCommand.exit:                ; preds = %vector.body, %scalar.ph
  %i.cj = load i64, ptr %0, align 8, !tbaa !94
  %i.ck = tail call double @BrotliBitsEntropy(ptr noundef nonnull %i.ao, i64 noundef %i.cj) #8 ; 3 uses
  %2 = fsub double %i.ck, %i.am
  %i.cl = load double, ptr %i.c, align 8, !tbaa !108
  %3 = fsub double %2, %i.cl                      ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 5752
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !24
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 2888 ; 9 uses
  %i.cp = load i64, ptr %i.ai, align 8, !tbaa !52
  %i.cq = getelementptr inbounds nuw [2832 x i8], ptr %i.e, i64 %i.cp
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2832) %i.co, ptr noundef nonnull align 8 dereferenceable(2832) %i.cq, i64 2832, i1 false), !tbaa.struct !217
  %i.cr = getelementptr inbounds nuw [2832 x i8], ptr %i.e, i64 %i.cn ; 8 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 2816 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !53
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 5704 ; 3 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !53
  %i.cw = add i64 %i.cv, %i.ct
  store i64 %i.cw, ptr %i.cu, align 8, !tbaa !53
  %bound0143 = icmp ult ptr %i.co, %i.cs
  %bound1144 = icmp ult ptr %i.cr, %i.cu
  %found.conflict145 = and i1 %bound0143, %bound1144
  br i1 %found.conflict145, label %scalar.ph141, label %vector.body147

vector.body147:                                   ; preds = %HistogramAddHistogramCommand.exit, %vector.body147
  %index148 = phi i64 [ %index.next153.1, %vector.body147 ], [ 0, %HistogramAddHistogramCommand.exit ] ; 4 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %index148 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %wide.load149 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !13, !alias.scope !220
  %wide.load150 = load <4 x i32>, ptr %i.cy, align 4, !tbaa !13, !alias.scope !220
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %index148 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %wide.load151 = load <4 x i32>, ptr %i.cz, align 4, !tbaa !13, !alias.scope !221, !noalias !220
  %wide.load152 = load <4 x i32>, ptr %i.da, align 4, !tbaa !13, !alias.scope !221, !noalias !220
  %i.db = add <4 x i32> %wide.load151, %wide.load149
  %i.dc = add <4 x i32> %wide.load152, %wide.load150
  store <4 x i32> %i.db, ptr %i.cz, align 4, !tbaa !13, !alias.scope !221, !noalias !220
  store <4 x i32> %i.dc, ptr %i.da, align 4, !tbaa !13, !alias.scope !221, !noalias !220
  %index.next153 = or disjoint i64 %index148, 8   ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %index.next153 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %wide.load149.1 = load <4 x i32>, ptr %i.dd, align 4, !tbaa !13, !alias.scope !220
  %wide.load150.1 = load <4 x i32>, ptr %i.de, align 4, !tbaa !13, !alias.scope !220
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %index.next153 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16 ; 2 uses
  %wide.load151.1 = load <4 x i32>, ptr %i.df, align 4, !tbaa !13, !alias.scope !221, !noalias !220
  %wide.load152.1 = load <4 x i32>, ptr %i.dg, align 4, !tbaa !13, !alias.scope !221, !noalias !220
  %i.dh = add <4 x i32> %wide.load151.1, %wide.load149.1
  %i.di = add <4 x i32> %wide.load152.1, %wide.load150.1
  store <4 x i32> %i.dh, ptr %i.df, align 4, !tbaa !13, !alias.scope !221, !noalias !220
  store <4 x i32> %i.di, ptr %i.dg, align 4, !tbaa !13, !alias.scope !221, !noalias !220
  %index.next153.1 = add nuw nsw i64 %index148, 16 ; 2 uses
  %i.dj = icmp eq i64 %index.next153.1, 704
  br i1 %i.dj, label %HistogramAddHistogramCommand.exit.1, label %vector.body147, !llvm.loop !215

scalar.ph141:                                     ; preds = %HistogramAddHistogramCommand.exit, %scalar.ph141
  %.0.i127.1 = phi i64 [ %i.eh, %scalar.ph141 ], [ 0, %HistogramAddHistogramCommand.exit ] ; 6 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %.0.i127.1
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !13
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.0.i127.1 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !13
  %i.do = add i32 %i.dn, %i.dl
  store i32 %i.do, ptr %i.dm, align 4, !tbaa !13
  %i.dp = or disjoint i64 %.0.i127.1, 1           ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !13
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.dp ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !13
  %i.du = add i32 %i.dt, %i.dr
  store i32 %i.du, ptr %i.ds, align 4, !tbaa !13
  %i.dv = or disjoint i64 %.0.i127.1, 2           ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !13
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.dv ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !13
  %i.ea = add i32 %i.dz, %i.dx
  store i32 %i.ea, ptr %i.dy, align 4, !tbaa !13
  %i.eb = or disjoint i64 %.0.i127.1, 3           ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !13
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.eb ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !13
  %i.eg = add i32 %i.ef, %i.ed
  store i32 %i.eg, ptr %i.ee, align 4, !tbaa !13
  %i.eh = add nuw nsw i64 %.0.i127.1, 4           ; 2 uses
  %exitcond.1.not.3 = icmp eq i64 %i.eh, 704
  br i1 %exitcond.1.not.3, label %HistogramAddHistogramCommand.exit.1, label %scalar.ph141, !llvm.loop !216

HistogramAddHistogramCommand.exit.1:              ; preds = %vector.body147, %scalar.ph141
  %i.ei = load i64, ptr %0, align 8, !tbaa !94
  %i.ej = tail call double @BrotliBitsEntropy(ptr noundef nonnull %i.co, i64 noundef %i.ei) #8 ; 2 uses
  %i.ek = fsub double %i.ej, %i.am
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 5768
  %i.em = load double, ptr %i.el, align 8, !tbaa !108
  %i.en = fsub double %i.ek, %i.em                ; 2 uses
  %i.eo = load i64, ptr %i.b, align 8, !tbaa !109 ; 2 uses
  %i.ep = icmp ult i64 %i.eo, 256
  br i1 %i.ep, label %bb.f, label %bb.j

bb.f:                                             ; preds = %HistogramAddHistogramCommand.exit.1
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.er = load double, ptr %i.eq, align 8, !tbaa !96 ; 2 uses
  %i.es = fcmp ogt double %3, %i.er
  %i.et = fcmp ogt double %i.en, %i.er
  %or.cond = select i1 %i.es, i1 %i.et, i1 false
  br i1 %or.cond, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.eu = load i64, ptr %i.f, align 8, !tbaa !54
  %i.ev = trunc i64 %i.eu to i32
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !81
  %i.ey = load i64, ptr %i.k, align 8, !tbaa !97  ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.ey
  store i32 %i.ev, ptr %i.ez, align 4, !tbaa !13
  %i.fa = trunc nuw i64 %i.eo to i8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !79
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.ey
  store i8 %i.fa, ptr %i.fd, align 1, !tbaa !14
  %i.fe = load i64, ptr %i.an, align 8, !tbaa !24
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 5752
  store i64 %i.fe, ptr %i.ff, align 8, !tbaa !24
  %i.fg = load i64, ptr %i.b, align 8, !tbaa !109
  %i.fh = and i64 %i.fg, 255
  store i64 %i.fh, ptr %i.an, align 8, !tbaa !24
  %i.fi = load double, ptr %i.c, align 8, !tbaa !108
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 5768
  store double %i.fi, ptr %i.fj, align 8, !tbaa !108
  store double %i.am, ptr %i.c, align 8, !tbaa !108
  %i.fk = load i64, ptr %i.k, align 8, !tbaa !97
  %i.fl = add i64 %i.fk, 1
  store i64 %i.fl, ptr %i.k, align 8, !tbaa !97
  %i.fm = load i64, ptr %i.b, align 8, !tbaa !109
  %i.fn = add i64 %i.fm, 1
  store i64 %i.fn, ptr %i.b, align 8, !tbaa !109
  %i.fo = load i64, ptr %i.ai, align 8, !tbaa !52
  %i.fp = add i64 %i.fo, 1                        ; 3 uses
  store i64 %i.fp, ptr %i.ai, align 8, !tbaa !52
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !99
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !24
  %i.ft = icmp ult i64 %i.fp, %i.fs
  br i1 %i.ft, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.fu = getelementptr inbounds nuw [2832 x i8], ptr %i.e, i64 %i.fp ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.fu, i8 0, i64 2824, i1 false)
  store double +inf, ptr %i.fv, align 8, !tbaa !41
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store i64 0, ptr %i.f, align 8, !tbaa !54
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 5776
  store i64 0, ptr %i.fw, align 8, !tbaa !100
  %i.fx = load i64, ptr %i.h, align 8, !tbaa !95
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 5720
  store i64 %i.fx, ptr %i.fy, align 8, !tbaa !55
  br label %bb.p

bb.j:                                             ; preds = %bb.f, %HistogramAddHistogramCommand.exit.1
  %i.fz = fadd double %3, -2.000000e+01
  %i.ga = fcmp olt double %i.en, %i.fz
  %i.gb = load i64, ptr %i.f, align 8, !tbaa !54
  %i.gc = trunc i64 %i.gb to i32                  ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !81
  %i.gf = load i64, ptr %i.k, align 8, !tbaa !97  ; 2 uses
  %i.gg = getelementptr [4 x i8], ptr %i.ge, i64 %i.gf ; 2 uses
  br i1 %i.ga, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.gc, ptr %i.gg, align 4, !tbaa !13
  %i.gh = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !79
  %i.gj = getelementptr i8, ptr %i.gi, i64 %i.gf  ; 2 uses
  %i.gk = getelementptr i8, ptr %i.gj, i64 -2
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !14
  store i8 %i.gl, ptr %i.gj, align 1, !tbaa !14
  %i.gm = load i64, ptr %i.an, align 8, !tbaa !24
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 5752 ; 2 uses
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !24 ; 2 uses
  store i64 %i.go, ptr %i.an, align 8, !tbaa !24
  store i64 %i.gm, ptr %i.gn, align 8, !tbaa !24
  %i.gp = getelementptr inbounds nuw [2832 x i8], ptr %i.e, i64 %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 2888
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2832) %i.gp, ptr noundef nonnull align 8 dereferenceable(2832) %i.gq, i64 2832, i1 false), !tbaa.struct !217
  %i.gr = load double, ptr %i.c, align 8, !tbaa !108
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 5768
  store double %i.gr, ptr %i.gs, align 8, !tbaa !108
  store double %i.ej, ptr %i.c, align 8, !tbaa !108
  %i.gt = load i64, ptr %i.k, align 8, !tbaa !97
  %i.gu = add i64 %i.gt, 1
  store i64 %i.gu, ptr %i.k, align 8, !tbaa !97
  store i64 0, ptr %i.f, align 8, !tbaa !54
  %i.gv = load i64, ptr %i.ai, align 8, !tbaa !52
  %i.gw = getelementptr inbounds nuw [2832 x i8], ptr %i.e, i64 %i.gv ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.gw, i8 0, i64 2824, i1 false)
  store double +inf, ptr %i.gx, align 8, !tbaa !41
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 5776
  store i64 0, ptr %i.gy, align 8, !tbaa !100
  %i.gz = load i64, ptr %i.h, align 8, !tbaa !95
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 5720
  store i64 %i.gz, ptr %i.ha, align 8, !tbaa !55
  br label %bb.p

bb.l:                                             ; preds = %bb.j
  %i.hb = getelementptr i8, ptr %i.gg, i64 -4     ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !13
  %i.hd = add i32 %i.hc, %i.gc
  store i32 %i.hd, ptr %i.hb, align 4, !tbaa !13
  %i.he = load i64, ptr %i.an, align 8, !tbaa !24
  %i.hf = getelementptr inbounds nuw [2832 x i8], ptr %i.e, i64 %i.he
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2832) %i.hf, ptr noundef nonnull align 8 dereferenceable(2832) %i.ao, i64 2832, i1 false), !tbaa.struct !217
  store double %i.ck, ptr %i.c, align 8, !tbaa !108
  %i.hg = load i64, ptr %i.b, align 8, !tbaa !109
  %i.hh = icmp eq i64 %i.hg, 1
  br i1 %i.hh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 5768
  store double %i.ck, ptr %i.hi, align 8, !tbaa !108
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store i64 0, ptr %i.f, align 8, !tbaa !54
  %i.hj = load i64, ptr %i.ai, align 8, !tbaa !52
  %i.hk = getelementptr inbounds nuw [2832 x i8], ptr %i.e, i64 %i.hj ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.hk, i8 0, i64 2824, i1 false)
  store double +inf, ptr %i.hl, align 8, !tbaa !41
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 5776 ; 2 uses
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !100
  %i.ho = add i64 %i.hn, 1                        ; 2 uses
  store i64 %i.ho, ptr %i.hm, align 8, !tbaa !100
  %i.hp = icmp ugt i64 %i.ho, 1
  br i1 %i.hp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.hq = load i64, ptr %i.h, align 8, !tbaa !95
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 5720 ; 2 uses
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !55
  %i.ht = add i64 %i.hs, %i.hq
  store i64 %i.ht, ptr %i.hr, align 8, !tbaa !55
  br label %bb.p

bb.p:                                             ; preds = %bb.i, %bb.n, %bb.o, %bb.k, %bb.e, %bb.d
  %.not124 = icmp eq i32 %1, 0
  br i1 %.not124, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.hu = load i64, ptr %i.b, align 8, !tbaa !109
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !99
  store i64 %i.hu, ptr %i.hw, align 8, !tbaa !24
  %i.hx = load i64, ptr %i.k, align 8, !tbaa !97
  %i.hy = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.hx, ptr %i.hy, align 8, !tbaa !82
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @BlockSplitterFinishBlockDistance(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105  ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4480 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63   ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 8 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !65
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !102
  %i.j = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i) ; 3 uses
  store i64 %i.j, ptr %i.f, align 8, !tbaa !65
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 10 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !104
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.n = trunc i64 %i.j to i32
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !81
  store i32 %i.n, ptr %i.p, align 4, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !79
  store i8 0, ptr %i.r, align 1, !tbaa !14
  %i.s = load i64, ptr %0, align 8, !tbaa !101
  %i.t = tail call double @BrotliBitsEntropy(ptr noundef %i.e, i64 noundef %i.s) #8 ; 2 uses
  store double %i.t, ptr %i.c, align 8, !tbaa !108
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4488
  store double %i.t, ptr %i.u, align 8, !tbaa !108
  %i.v = load i64, ptr %i.k, align 8, !tbaa !104
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.k, align 8, !tbaa !104
  %i.x = load i64, ptr %i.b, align 8, !tbaa !109
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.b, align 8, !tbaa !109
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4456 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !64
  %i.ab = add i64 %i.aa, 1                        ; 3 uses
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !64
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !106
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !24
  %i.af = icmp ult i64 %i.ab, %i.ae
  br i1 %i.af, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw [2192 x i8], ptr %i.e, i64 %i.ab ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 2184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ag, i8 0, i64 2184, i1 false)
  store double +inf, ptr %i.ah, align 8, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i64 0, ptr %i.f, align 8, !tbaa !65
  br label %bb.p

bb.e:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.p, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4456 ; 7 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !64
  %i.ak = getelementptr inbounds nuw [2192 x i8], ptr %i.e, i64 %i.aj
  %i.al = load i64, ptr %0, align 8, !tbaa !101
  %i.am = tail call double @BrotliBitsEntropy(ptr noundef %i.ak, i64 noundef %i.al) #8 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4464 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 10 uses
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !24
  %i.aq = load i64, ptr %i.ai, align 8, !tbaa !64
  %i.ar = getelementptr inbounds nuw [2192 x i8], ptr %i.e, i64 %i.aq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2192) %i.ao, ptr noundef nonnull align 8 dereferenceable(2192) %i.ar, i64 2192, i1 false), !tbaa.struct !232
  %i.as = getelementptr inbounds nuw [2192 x i8], ptr %i.e, i64 %i.ap ; 8 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 2176 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !22
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 2232 ; 3 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !22
  %i.ax = add i64 %i.aw, %i.au
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !22
  %bound0 = icmp ult ptr %i.ao, %i.at
  %bound1 = icmp ult ptr %i.as, %i.av
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %vector.memcheck ] ; 4 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load = load <4 x i32>, ptr %i.ay, align 4, !tbaa !13, !alias.scope !233
  %wide.load134 = load <4 x i32>, ptr %i.az, align 4, !tbaa !13, !alias.scope !233
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %index ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %wide.load135 = load <4 x i32>, ptr %i.ba, align 4, !tbaa !13, !alias.scope !234, !noalias !233
  %wide.load136 = load <4 x i32>, ptr %i.bb, align 4, !tbaa !13, !alias.scope !234, !noalias !233
  %i.bc = add <4 x i32> %wide.load135, %wide.load
  %i.bd = add <4 x i32> %wide.load136, %wide.load134
  store <4 x i32> %i.bc, ptr %i.ba, align 4, !tbaa !13, !alias.scope !234, !noalias !233
  store <4 x i32> %i.bd, ptr %i.bb, align 4, !tbaa !13, !alias.scope !234, !noalias !233
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %index.next ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %wide.load.1 = load <4 x i32>, ptr %i.be, align 4, !tbaa !13, !alias.scope !233
  %wide.load134.1 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !13, !alias.scope !233
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %index.next ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  %wide.load135.1 = load <4 x i32>, ptr %i.bg, align 4, !tbaa !13, !alias.scope !234, !noalias !233
  %wide.load136.1 = load <4 x i32>, ptr %i.bh, align 4, !tbaa !13, !alias.scope !234, !noalias !233
  %i.bi = add <4 x i32> %wide.load135.1, %wide.load.1
  %i.bj = add <4 x i32> %wide.load136.1, %wide.load134.1
  store <4 x i32> %i.bi, ptr %i.bg, align 4, !tbaa !13, !alias.scope !234, !noalias !233
  store <4 x i32> %i.bj, ptr %i.bh, align 4, !tbaa !13, !alias.scope !234, !noalias !233
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.bk = icmp eq i64 %index.next.1, 544
  br i1 %i.bk, label %HistogramAddHistogramDistance.exit, label %vector.body, !llvm.loop !225

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %.0.i127 = phi i64 [ %i.ci, %scalar.ph ], [ 0, %vector.memcheck ] ; 6 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.0.i127
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !13
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.0.i127 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !13
  %i.bp = add i32 %i.bo, %i.bm
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !13
  %i.bq = or disjoint i64 %.0.i127, 1             ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !13
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.bq ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !13
  %i.bv = add i32 %i.bu, %i.bs
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !13
  %i.bw = or disjoint i64 %.0.i127, 2             ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !13
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.bw ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !13
  %i.cb = add i32 %i.ca, %i.by
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !13
  %i.cc = or disjoint i64 %.0.i127, 3             ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !13
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.cc ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !13
  %i.ch = add i32 %i.cg, %i.ce
  store i32 %i.ch, ptr %i.cf, align 4, !tbaa !13
  %i.ci = add nuw nsw i64 %.0.i127, 4             ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ci, 544
  br i1 %exitcond.not.3, label %HistogramAddHistogramDistance.exit, label %scalar.ph, !llvm.loop !226

HistogramAddHistogramDistance.exit:               ; preds = %vector.body, %scalar.ph
  %i.cj = load i64, ptr %0, align 8, !tbaa !101
  %i.ck = tail call double @BrotliBitsEntropy(ptr noundef nonnull %i.ao, i64 noundef %i.cj) #8 ; 3 uses
  %2 = fsub double %i.ck, %i.am
  %i.cl = load double, ptr %i.c, align 8, !tbaa !108
  %3 = fsub double %2, %i.cl                      ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 4472
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !24
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 2248 ; 9 uses
  %i.cp = load i64, ptr %i.ai, align 8, !tbaa !64
  %i.cq = getelementptr inbounds nuw [2192 x i8], ptr %i.e, i64 %i.cp
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2192) %i.co, ptr noundef nonnull align 8 dereferenceable(2192) %i.cq, i64 2192, i1 false), !tbaa.struct !232
  %i.cr = getelementptr inbounds nuw [2192 x i8], ptr %i.e, i64 %i.cn ; 8 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 2176 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !22
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 4424 ; 3 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !22
  %i.cw = add i64 %i.cv, %i.ct
  store i64 %i.cw, ptr %i.cu, align 8, !tbaa !22
  %bound0143 = icmp ult ptr %i.co, %i.cs
  %bound1144 = icmp ult ptr %i.cr, %i.cu
  %found.conflict145 = and i1 %bound0143, %bound1144
  br i1 %found.conflict145, label %scalar.ph141, label %vector.body147

vector.body147:                                   ; preds = %HistogramAddHistogramDistance.exit, %vector.body147
  %index148 = phi i64 [ %index.next153.1, %vector.body147 ], [ 0, %HistogramAddHistogramDistance.exit ] ; 4 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %index148 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %wide.load149 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !13, !alias.scope !235
  %wide.load150 = load <4 x i32>, ptr %i.cy, align 4, !tbaa !13, !alias.scope !235
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %index148 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %wide.load151 = load <4 x i32>, ptr %i.cz, align 4, !tbaa !13, !alias.scope !236, !noalias !235
  %wide.load152 = load <4 x i32>, ptr %i.da, align 4, !tbaa !13, !alias.scope !236, !noalias !235
  %i.db = add <4 x i32> %wide.load151, %wide.load149
  %i.dc = add <4 x i32> %wide.load152, %wide.load150
  store <4 x i32> %i.db, ptr %i.cz, align 4, !tbaa !13, !alias.scope !236, !noalias !235
  store <4 x i32> %i.dc, ptr %i.da, align 4, !tbaa !13, !alias.scope !236, !noalias !235
  %index.next153 = or disjoint i64 %index148, 8   ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %index.next153 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %wide.load149.1 = load <4 x i32>, ptr %i.dd, align 4, !tbaa !13, !alias.scope !235
  %wide.load150.1 = load <4 x i32>, ptr %i.de, align 4, !tbaa !13, !alias.scope !235
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %index.next153 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16 ; 2 uses
  %wide.load151.1 = load <4 x i32>, ptr %i.df, align 4, !tbaa !13, !alias.scope !236, !noalias !235
  %wide.load152.1 = load <4 x i32>, ptr %i.dg, align 4, !tbaa !13, !alias.scope !236, !noalias !235
  %i.dh = add <4 x i32> %wide.load151.1, %wide.load149.1
  %i.di = add <4 x i32> %wide.load152.1, %wide.load150.1
  store <4 x i32> %i.dh, ptr %i.df, align 4, !tbaa !13, !alias.scope !236, !noalias !235
  store <4 x i32> %i.di, ptr %i.dg, align 4, !tbaa !13, !alias.scope !236, !noalias !235
  %index.next153.1 = add nuw nsw i64 %index148, 16 ; 2 uses
  %i.dj = icmp eq i64 %index.next153.1, 544
  br i1 %i.dj, label %HistogramAddHistogramDistance.exit.1, label %vector.body147, !llvm.loop !230

scalar.ph141:                                     ; preds = %HistogramAddHistogramDistance.exit, %scalar.ph141
  %.0.i127.1 = phi i64 [ %i.eh, %scalar.ph141 ], [ 0, %HistogramAddHistogramDistance.exit ] ; 6 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %.0.i127.1
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !13
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.0.i127.1 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !13
  %i.do = add i32 %i.dn, %i.dl
  store i32 %i.do, ptr %i.dm, align 4, !tbaa !13
  %i.dp = or disjoint i64 %.0.i127.1, 1           ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !13
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.dp ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !13
  %i.du = add i32 %i.dt, %i.dr
  store i32 %i.du, ptr %i.ds, align 4, !tbaa !13
  %i.dv = or disjoint i64 %.0.i127.1, 2           ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !13
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.dv ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !13
  %i.ea = add i32 %i.dz, %i.dx
  store i32 %i.ea, ptr %i.dy, align 4, !tbaa !13
  %i.eb = or disjoint i64 %.0.i127.1, 3           ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !13
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.eb ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !13
  %i.eg = add i32 %i.ef, %i.ed
  store i32 %i.eg, ptr %i.ee, align 4, !tbaa !13
  %i.eh = add nuw nsw i64 %.0.i127.1, 4           ; 2 uses
  %exitcond.1.not.3 = icmp eq i64 %i.eh, 544
  br i1 %exitcond.1.not.3, label %HistogramAddHistogramDistance.exit.1, label %scalar.ph141, !llvm.loop !231

HistogramAddHistogramDistance.exit.1:             ; preds = %vector.body147, %scalar.ph141
  %i.ei = load i64, ptr %0, align 8, !tbaa !101
  %i.ej = tail call double @BrotliBitsEntropy(ptr noundef nonnull %i.co, i64 noundef %i.ei) #8 ; 2 uses
  %i.ek = fsub double %i.ej, %i.am
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 4488
  %i.em = load double, ptr %i.el, align 8, !tbaa !108
  %i.en = fsub double %i.ek, %i.em                ; 2 uses
  %i.eo = load i64, ptr %i.b, align 8, !tbaa !109 ; 2 uses
  %i.ep = icmp ult i64 %i.eo, 256
  br i1 %i.ep, label %bb.f, label %bb.j

bb.f:                                             ; preds = %HistogramAddHistogramDistance.exit.1
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.er = load double, ptr %i.eq, align 8, !tbaa !103 ; 2 uses
  %i.es = fcmp ogt double %3, %i.er
  %i.et = fcmp ogt double %i.en, %i.er
  %or.cond = select i1 %i.es, i1 %i.et, i1 false
  br i1 %or.cond, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.eu = load i64, ptr %i.f, align 8, !tbaa !65
  %i.ev = trunc i64 %i.eu to i32
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !81
  %i.ey = load i64, ptr %i.k, align 8, !tbaa !104 ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.ey
  store i32 %i.ev, ptr %i.ez, align 4, !tbaa !13
  %i.fa = trunc nuw i64 %i.eo to i8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !79
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.ey
  store i8 %i.fa, ptr %i.fd, align 1, !tbaa !14
  %i.fe = load i64, ptr %i.an, align 8, !tbaa !24
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 4472
  store i64 %i.fe, ptr %i.ff, align 8, !tbaa !24
  %i.fg = load i64, ptr %i.b, align 8, !tbaa !109
  %i.fh = and i64 %i.fg, 255
  store i64 %i.fh, ptr %i.an, align 8, !tbaa !24
  %i.fi = load double, ptr %i.c, align 8, !tbaa !108
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 4488
  store double %i.fi, ptr %i.fj, align 8, !tbaa !108
  store double %i.am, ptr %i.c, align 8, !tbaa !108
  %i.fk = load i64, ptr %i.k, align 8, !tbaa !104
  %i.fl = add i64 %i.fk, 1
  store i64 %i.fl, ptr %i.k, align 8, !tbaa !104
  %i.fm = load i64, ptr %i.b, align 8, !tbaa !109
  %i.fn = add i64 %i.fm, 1
  store i64 %i.fn, ptr %i.b, align 8, !tbaa !109
  %i.fo = load i64, ptr %i.ai, align 8, !tbaa !64
  %i.fp = add i64 %i.fo, 1                        ; 3 uses
  store i64 %i.fp, ptr %i.ai, align 8, !tbaa !64
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !106
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !24
  %i.ft = icmp ult i64 %i.fp, %i.fs
  br i1 %i.ft, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.fu = getelementptr inbounds nuw [2192 x i8], ptr %i.e, i64 %i.fp ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 2184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.fu, i8 0, i64 2184, i1 false)
  store double +inf, ptr %i.fv, align 8, !tbaa !19
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store i64 0, ptr %i.f, align 8, !tbaa !65
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 4496
  store i64 0, ptr %i.fw, align 8, !tbaa !107
  %i.fx = load i64, ptr %i.h, align 8, !tbaa !102
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 4440
  store i64 %i.fx, ptr %i.fy, align 8, !tbaa !66
  br label %bb.p

bb.j:                                             ; preds = %bb.f, %HistogramAddHistogramDistance.exit.1
  %i.fz = fadd double %3, -2.000000e+01
  %i.ga = fcmp olt double %i.en, %i.fz
  %i.gb = load i64, ptr %i.f, align 8, !tbaa !65
  %i.gc = trunc i64 %i.gb to i32                  ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !81
  %i.gf = load i64, ptr %i.k, align 8, !tbaa !104 ; 2 uses
  %i.gg = getelementptr [4 x i8], ptr %i.ge, i64 %i.gf ; 2 uses
  br i1 %i.ga, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.gc, ptr %i.gg, align 4, !tbaa !13
  %i.gh = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !79
  %i.gj = getelementptr i8, ptr %i.gi, i64 %i.gf  ; 2 uses
  %i.gk = getelementptr i8, ptr %i.gj, i64 -2
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !14
  store i8 %i.gl, ptr %i.gj, align 1, !tbaa !14
  %i.gm = load i64, ptr %i.an, align 8, !tbaa !24
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 4472 ; 2 uses
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !24 ; 2 uses
  store i64 %i.go, ptr %i.an, align 8, !tbaa !24
  store i64 %i.gm, ptr %i.gn, align 8, !tbaa !24
  %i.gp = getelementptr inbounds nuw [2192 x i8], ptr %i.e, i64 %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 2248
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2192) %i.gp, ptr noundef nonnull align 8 dereferenceable(2192) %i.gq, i64 2192, i1 false), !tbaa.struct !232
  %i.gr = load double, ptr %i.c, align 8, !tbaa !108
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 4488
  store double %i.gr, ptr %i.gs, align 8, !tbaa !108
  store double %i.ej, ptr %i.c, align 8, !tbaa !108
  %i.gt = load i64, ptr %i.k, align 8, !tbaa !104
  %i.gu = add i64 %i.gt, 1
  store i64 %i.gu, ptr %i.k, align 8, !tbaa !104
  store i64 0, ptr %i.f, align 8, !tbaa !65
  %i.gv = load i64, ptr %i.ai, align 8, !tbaa !64
  %i.gw = getelementptr inbounds nuw [2192 x i8], ptr %i.e, i64 %i.gv ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 2184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.gw, i8 0, i64 2184, i1 false)
  store double +inf, ptr %i.gx, align 8, !tbaa !19
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 4496
  store i64 0, ptr %i.gy, align 8, !tbaa !107
  %i.gz = load i64, ptr %i.h, align 8, !tbaa !102
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 4440
  store i64 %i.gz, ptr %i.ha, align 8, !tbaa !66
  br label %bb.p

bb.l:                                             ; preds = %bb.j
  %i.hb = getelementptr i8, ptr %i.gg, i64 -4     ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !13
  %i.hd = add i32 %i.hc, %i.gc
  store i32 %i.hd, ptr %i.hb, align 4, !tbaa !13
  %i.he = load i64, ptr %i.an, align 8, !tbaa !24
  %i.hf = getelementptr inbounds nuw [2192 x i8], ptr %i.e, i64 %i.he
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2192) %i.hf, ptr noundef nonnull align 8 dereferenceable(2192) %i.ao, i64 2192, i1 false), !tbaa.struct !232
  store double %i.ck, ptr %i.c, align 8, !tbaa !108
  %i.hg = load i64, ptr %i.b, align 8, !tbaa !109
  %i.hh = icmp eq i64 %i.hg, 1
  br i1 %i.hh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 4488
  store double %i.ck, ptr %i.hi, align 8, !tbaa !108
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store i64 0, ptr %i.f, align 8, !tbaa !65
  %i.hj = load i64, ptr %i.ai, align 8, !tbaa !64
  %i.hk = getelementptr inbounds nuw [2192 x i8], ptr %i.e, i64 %i.hj ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 2184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.hk, i8 0, i64 2184, i1 false)
  store double +inf, ptr %i.hl, align 8, !tbaa !19
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 4496 ; 2 uses
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !107
  %i.ho = add i64 %i.hn, 1                        ; 2 uses
  store i64 %i.ho, ptr %i.hm, align 8, !tbaa !107
  %i.hp = icmp ugt i64 %i.ho, 1
  br i1 %i.hp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.hq = load i64, ptr %i.h, align 8, !tbaa !102
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 4440 ; 2 uses
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !66
  %i.ht = add i64 %i.hs, %i.hq
  store i64 %i.ht, ptr %i.hr, align 8, !tbaa !66
  br label %bb.p

bb.p:                                             ; preds = %bb.i, %bb.n, %bb.o, %bb.k, %bb.e, %bb.d
  %.not124 = icmp eq i32 %1, 0
  br i1 %.not124, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.hu = load i64, ptr %i.b, align 8, !tbaa !109
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !106
  store i64 %i.hu, ptr %i.hw, align 8, !tbaa !24
  %i.hx = load i64, ptr %i.k, align 8, !tbaa !104
  %i.hy = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.hx, ptr %i.hy, align 8, !tbaa !82
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  ret void
}

declare hidden double @BrotliBitsEntropy(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
end_hunk_1
