Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_xpsnr?download=true
inline.NumInlined: 16
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@do_xpsnr:bb.a
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.au = mul i32 %i.ad, %i.ab
  %i.av = zext i32 %i.au to i64
  %i.aw = call ptr @av_malloc_array(i64 noundef %i.av, i64 noundef 8) #13
  store ptr %i.aw, ptr %i.as, align 8, !tbaa !133
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %i.l, i64 216 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !134
  %.not165 = icmp eq ptr %i.ay, null
  br i1 %.not165, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.az = mul i32 %i.ad, %i.ab
  %i.ba = zext i32 %i.az to i64
  %i.bb = call ptr @av_malloc_array(i64 noundef %i.ba, i64 noundef 8) #13
  store ptr %i.bb, ptr %i.ax, align 8, !tbaa !134
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %i.l, i64 20 ; 7 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !39 ; 3 uses
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.bf = load ptr, ptr %i.c, align 8, !tbaa !130 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 64 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.l, i64 136 ; 2 uses
  %i.bi = zext nneg i32 %i.bd to i64              ; 3 uses
  %min.iters.check = icmp ult i32 %i.bd, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.bj = ptrtoaddr ptr %i.bf to i64
  %i.bk = sub i64 %i.m, %i.bj
  %i.bl = add i64 %i.bk, 71
  %diff.check = icmp ult i64 %i.bl, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bi, 2147483640              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %index ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %wide.load = load <4 x i32>, ptr %i.bm, align 4, !tbaa !32
  %wide.load333 = load <4 x i32>, ptr %i.bn, align 4, !tbaa !32
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store <4 x i32> %wide.load, ptr %i.bo, align 4, !tbaa !32
  store <4 x i32> %wide.load333, ptr %i.bp, align 4, !tbaa !32
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !86

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bi
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !32
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bu = icmp samesign ult i64 %indvars.iv.next, %i.bi
  br i1 %i.bu, label %scalar.ph, label %._crit_edge, !llvm.loop !87

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.h
  %i.bv = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !49 ; 2 uses
  %i.bx = icmp eq i32 %i.bw, 1
  br i1 %i.bx, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge
  %i.by = load i32, ptr %i.n, align 8, !tbaa !32
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge
  %i.bz = getelementptr inbounds nuw i8, ptr %i.l, i64 136
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !32
  %i.cb = sdiv i32 %i.ca, %i.bw
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cc = phi i32 [ %i.by, %bb.i ], [ %i.cb, %bb.j ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 224 ; 3 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !137
  %.not166 = icmp eq ptr %i.ce, null
  br i1 %.not166, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cf = load i32, ptr %i.p, align 8, !tbaa !32
  %i.cg = sext i32 %i.cf to i64
  %i.ch = sext i32 %i.cc to i64
  %i.ci = shl nsw i64 %i.ch, 1
  %i.cj = call noalias ptr @av_calloc(i64 noundef %i.cg, i64 noundef %i.ci) #13
  store ptr %i.cj, ptr %i.cd, align 8, !tbaa !137
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ck = getelementptr inbounds nuw i8, ptr %i.l, i64 232 ; 3 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !138 ; 2 uses
  %.not167 = icmp eq ptr %i.cl, null
  br i1 %.not167, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cm = load i32, ptr %i.p, align 8, !tbaa !32
  %i.cn = sext i32 %i.cm to i64
  %i.co = sext i32 %i.cc to i64
  %i.cp = shl nsw i64 %i.co, 1
  %i.cq = call noalias ptr @av_calloc(i64 noundef %i.cn, i64 noundef %i.cp) #13 ; 2 uses
  store ptr %i.cq, ptr %i.ck, align 8, !tbaa !138
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cr = phi ptr [ %i.cq, %bb.n ], [ %i.cl, %bb.m ] ; 3 uses
  %i.cs = load i32, ptr %i.bv, align 8, !tbaa !49
  %i.ct = icmp eq i32 %i.cs, 1
  %i.cu = load i32, ptr %i.bc, align 4, !tbaa !39 ; 2 uses
  %i.cv = icmp sgt i32 %i.cu, 0                   ; 2 uses
  br i1 %i.ct, label %.preheader187, label %.preheader188

.preheader188:                                    ; preds = %bb.o
  br i1 %i.cv, label %.lr.ph205, label %.loopexit

.lr.ph205:                                        ; preds = %.preheader188
  %i.cw = load ptr, ptr %i.c, align 8, !tbaa !130
  %i.cx = load ptr, ptr %i.d, align 8, !tbaa !130
  %i.cy = zext nneg i32 %i.cu to i64
  %i.cz = shl nuw nsw i64 %i.cy, 3                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.e, ptr align 8 %i.cw, i64 %i.cz, i1 false), !tbaa !139
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.f, ptr align 8 %i.cx, i64 %i.cz, i1 false), !tbaa !139
  br label %.loopexit

.preheader187:                                    ; preds = %bb.o
  br i1 %i.cv, label %.lr.ph212, label %.loopexit

.lr.ph212:                                        ; preds = %.preheader187
  %i.da = getelementptr inbounds nuw i8, ptr %i.l, i64 136
  %i.db = getelementptr inbounds nuw i8, ptr %i.l, i64 240
  %i.dc = getelementptr inbounds nuw i8, ptr %i.l, i64 264
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph212, %._crit_edge210.split
  %indvars.iv252 = phi i64 [ 0, %.lr.ph212 ], [ %indvars.iv.next253, %._crit_edge210.split ] ; 13 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv252
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !32 ; 2 uses
  %i.df = load ptr, ptr %i.d, align 8, !tbaa !130
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv252
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !32 ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv252 ; 3 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !32 ; 3 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv252 ; 3 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !140 ; 2 uses
  %.not170 = icmp eq ptr %i.dm, null
  br i1 %.not170, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dn = sext i32 %i.dk to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv252
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !32
  %i.dq = sext i32 %i.dp to i64
  %i.dr = shl nsw i64 %i.dq, 1
  %i.ds = call noalias ptr @av_calloc(i64 noundef %i.dn, i64 noundef %i.dr) #13 ; 2 uses
  store ptr %i.ds, ptr %i.dl, align 8, !tbaa !140
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.dt = phi ptr [ %i.ds, %bb.q ], [ %i.dm, %bb.p ]
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv252 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !140 ; 2 uses
  %.not171 = icmp eq ptr %i.dv, null
  br i1 %.not171, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dw = load i32, ptr %i.dj, align 4, !tbaa !32
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv252
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !32
  %i.ea = sext i32 %i.dz to i64
  %i.eb = shl nsw i64 %i.ea, 1
  %i.ec = call noalias ptr @av_calloc(i64 noundef %i.dx, i64 noundef %i.eb) #13 ; 2 uses
  store ptr %i.ec, ptr %i.du, align 8, !tbaa !140
  %.pre = load ptr, ptr %i.dl, align 8, !tbaa !140
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ed = phi ptr [ %i.ec, %bb.s ], [ %i.dv, %bb.r ] ; 10 uses
  %i.ee = phi ptr [ %.pre, %bb.s ], [ %i.dt, %bb.r ] ; 10 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv252
  store ptr %i.ee, ptr %i.ef, align 8, !tbaa !140
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv252
  store ptr %i.ed, ptr %i.eg, align 8, !tbaa !140
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv252
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !32 ; 2 uses
  %i.ej = icmp sgt i32 %i.ei, 0
  br i1 %i.ej, label %.preheader.lr.ph, label %._crit_edge210.split

.preheader.lr.ph:                                 ; preds = %bb.t
  %i.ek = load i32, ptr %i.dj, align 4, !tbaa !32 ; 4 uses
  %i.el = icmp sgt i32 %i.ek, 0
  br i1 %i.el, label %.preheader.lr.ph.split, label %._crit_edge210.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.em = load ptr, ptr %i.d, align 8
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv252
  %i.eo = load ptr, ptr %i.c, align 8
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv252
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !141 ; 4 uses
  %i.er = load ptr, ptr %i.en, align 8, !tbaa !141 ; 4 uses
  %i.es = sext i32 %i.de to i64                   ; 2 uses
  %i.et = sext i32 %i.dk to i64                   ; 2 uses
  %i.eu = sext i32 %i.di to i64                   ; 2 uses
  %wide.trip.count250 = zext nneg i32 %i.ei to i64 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ek to i64   ; 11 uses
  %i.ev = add nsw i64 %wide.trip.count250, -1     ; 3 uses
  %i.ew = mul nsw i64 %i.ev, %i.eu
  %1 = getelementptr i8, ptr %i.er, i64 %i.ew
  %scevgep = getelementptr i8, ptr %1, i64 %wide.trip.count ; 2 uses
  %i.ex = mul nsw i64 %i.ev, %i.es
  %i.ey = getelementptr i8, ptr %i.eq, i64 %i.ex
  %scevgep355 = getelementptr i8, ptr %i.ey, i64 %wide.trip.count ; 2 uses
  %2 = shl nsw i64 %i.ev, 1
  %3 = mul i64 %2, %i.et
  %4 = shl nuw nsw i64 %wide.trip.count, 1
  %5 = add i64 %3, %4                             ; 2 uses
  %scevgep356 = getelementptr i8, ptr %i.ed, i64 %5 ; 3 uses
  %scevgep357 = getelementptr i8, ptr %i.ee, i64 %5 ; 3 uses
  %min.iters.check359 = icmp ult i32 %i.ek, 4
  %bound0 = icmp ult ptr %i.ee, %scevgep356
  %bound1 = icmp ult ptr %i.ed, %scevgep357
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.dk, 0
  %6 = or i1 %found.conflict, %stride.check
  %bound0361 = icmp ult ptr %i.ee, %scevgep355
  %bound1362 = icmp ult ptr %i.eq, %scevgep357
  %found.conflict363 = and i1 %bound0361, %bound1362
  %stride.check364 = icmp slt i32 %i.de, 0
  %i.ez = or i1 %found.conflict363, %stride.check364
  %conflict.rdx = or i1 %6, %i.ez
  %bound0365.a = icmp ult ptr %i.ee, %scevgep
  %bound1366 = icmp ult ptr %i.er, %scevgep357
  %found.conflict367.a = and i1 %bound0365.a, %bound1366
  %stride.check368 = icmp slt i32 %i.di, 0
  %i.fa = or i1 %found.conflict367.a, %stride.check368
  %conflict.rdx369 = or i1 %conflict.rdx, %i.fa
  %bound0370 = icmp ult ptr %i.ed, %scevgep355
  %bound1371 = icmp ult ptr %i.eq, %scevgep356
  %found.conflict372 = and i1 %bound0370, %bound1371
  %conflict.rdx373 = or i1 %conflict.rdx369, %found.conflict372
  %bound0374 = icmp ult ptr %i.ed, %scevgep
  %bound1375 = icmp ult ptr %i.er, %scevgep356
  %found.conflict376 = and i1 %bound0374, %bound1375
  %conflict.rdx377 = or i1 %conflict.rdx373, %found.conflict376
  %min.iters.check378 = icmp ult i32 %i.ek, 16
  %i.fb = and i64 %wide.trip.count, 12
  %n.vec380 = and i64 %wide.trip.count, 2147483632 ; 4 uses
  %cmp.n389 = icmp eq i64 %n.vec380, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.fb, 0
  %n.vec390 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n395 = icmp eq i64 %n.vec390, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.fc = add nsw i64 %wide.trip.count, -1
  br label %iter.check

iter.check:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge208
  %indvars.iv247 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next248, %._crit_edge208 ] ; 4 uses
  %i.fd = mul nsw i64 %indvars.iv247, %i.es
  %i.fe = mul nsw i64 %indvars.iv247, %i.et       ; 5 uses
  %i.ff = mul nsw i64 %indvars.iv247, %i.eu
  %invariant.gep = getelementptr i8, ptr %i.eq, i64 %i.fd ; 5 uses
  %invariant.gep316 = getelementptr i8, ptr %i.er, i64 %i.ff ; 5 uses
  %brmerge = select i1 %min.iters.check359, i1 true, i1 %conflict.rdx377
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check378, label %vec.epilog.ph, label %vector.body381

vector.body381:                                   ; preds = %vector.main.loop.iter.check, %vector.body381
  %index382 = phi i64 [ %index.next387, %vector.body381 ], [ 0, %vector.main.loop.iter.check ] ; 4 uses
  %i.fg = getelementptr i8, ptr %invariant.gep, i64 %index382 ; 2 uses
  %i.fh = getelementptr i8, ptr %i.fg, i64 8
  %wide.load383 = load <8 x i8>, ptr %i.fg, align 1, !tbaa !38, !alias.scope !142
  %wide.load384 = load <8 x i8>, ptr %i.fh, align 1, !tbaa !38, !alias.scope !142
  %i.fi = zext <8 x i8> %wide.load383 to <8 x i16>
  %i.fj = zext <8 x i8> %wide.load384 to <8 x i16>
  %i.fk = add nsw i64 %index382, %i.fe            ; 2 uses
  %i.fl = getelementptr inbounds [2 x i8], ptr %i.ee, i64 %i.fk ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  store <8 x i16> %i.fi, ptr %i.fl, align 2, !tbaa !57, !alias.scope !143, !noalias !144
  store <8 x i16> %i.fj, ptr %i.fm, align 2, !tbaa !57, !alias.scope !143, !noalias !144
  %i.fn = getelementptr i8, ptr %invariant.gep316, i64 %index382 ; 2 uses
  %i.fo = getelementptr i8, ptr %i.fn, i64 8
  %wide.load385 = load <8 x i8>, ptr %i.fn, align 1, !tbaa !38, !alias.scope !145
  %wide.load386 = load <8 x i8>, ptr %i.fo, align 1, !tbaa !38, !alias.scope !145
  %i.fp = zext <8 x i8> %wide.load385 to <8 x i16>
  %i.fq = zext <8 x i8> %wide.load386 to <8 x i16>
  %i.fr = getelementptr inbounds [2 x i8], ptr %i.ed, i64 %i.fk ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  store <8 x i16> %i.fp, ptr %i.fr, align 2, !tbaa !57, !alias.scope !146, !noalias !147
  store <8 x i16> %i.fq, ptr %i.fs, align 2, !tbaa !57, !alias.scope !146, !noalias !147
  %index.next387 = add nuw i64 %index382, 16      ; 2 uses
  %i.ft = icmp eq i64 %index.next387, %n.vec380
  br i1 %i.ft, label %middle.block388, label %vector.body381, !llvm.loop !93

middle.block388:                                  ; preds = %vector.body381
  br i1 %cmp.n389, label %._crit_edge208, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block388
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !148

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec380, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index391 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next394, %vec.epilog.vector.body ] ; 4 uses
  %i.fu = getelementptr i8, ptr %invariant.gep, i64 %index391
  %wide.load392 = load <4 x i8>, ptr %i.fu, align 1, !tbaa !38, !alias.scope !142
  %i.fv = zext <4 x i8> %wide.load392 to <4 x i16>
  %i.fw = add nsw i64 %index391, %i.fe            ; 2 uses
  %i.fx = getelementptr inbounds [2 x i8], ptr %i.ee, i64 %i.fw
  store <4 x i16> %i.fv, ptr %i.fx, align 2, !tbaa !57, !alias.scope !143, !noalias !144
  %i.fy = getelementptr i8, ptr %invariant.gep316, i64 %index391
  %wide.load393 = load <4 x i8>, ptr %i.fy, align 1, !tbaa !38, !alias.scope !145
  %i.fz = zext <4 x i8> %wide.load393 to <4 x i16>
  %i.ga = getelementptr inbounds [2 x i8], ptr %i.ed, i64 %i.fw
  store <4 x i16> %i.fz, ptr %i.ga, align 2, !tbaa !57, !alias.scope !146, !noalias !147
  %index.next394 = add nuw i64 %index391, 4       ; 2 uses
  %i.gb = icmp eq i64 %index.next394, %n.vec390
  br i1 %i.gb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !94

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n395, label %._crit_edge208, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv244.ph = phi i64 [ 0, %iter.check ], [ %n.vec390, %vec.epilog.middle.block ], [ %n.vec380, %vec.epilog.iter.check ] ; 6 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %gep.prol = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv244.ph
  %i.gc = load i8, ptr %gep.prol, align 1, !tbaa !38
  %i.gd = zext i8 %i.gc to i16
  %i.ge = add nsw i64 %indvars.iv244.ph, %i.fe    ; 2 uses
  %i.gf = getelementptr inbounds [2 x i8], ptr %i.ee, i64 %i.ge
  store i16 %i.gd, ptr %i.gf, align 2, !tbaa !57
  %gep317.prol = getelementptr i8, ptr %invariant.gep316, i64 %indvars.iv244.ph
  %i.gg = load i8, ptr %gep317.prol, align 1, !tbaa !38
  %i.gh = zext i8 %i.gg to i16
  %i.gi = getelementptr inbounds [2 x i8], ptr %i.ed, i64 %i.ge
  store i16 %i.gh, ptr %i.gi, align 2, !tbaa !57
  %indvars.iv.next245.prol = or disjoint i64 %indvars.iv244.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv244.unr = phi i64 [ %indvars.iv244.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next245.prol, %vec.epilog.scalar.ph.prol ]
  %i.gj = icmp eq i64 %indvars.iv244.ph, %i.fc
  br i1 %i.gj, label %._crit_edge208, label %vec.epilog.scalar.ph

._crit_edge210.split:                             ; preds = %._crit_edge208, %.preheader.lr.ph, %bb.t
  %indvars.iv.next253 = add nuw nsw i64 %indvars.iv252, 1 ; 2 uses
  %i.gk = load i32, ptr %i.bc, align 4, !tbaa !39
  %i.gl = sext i32 %i.gk to i64
  %i.gm = icmp slt i64 %indvars.iv.next253, %i.gl
  br i1 %i.gm, label %bb.p, label %.loopexit.loopexit, !llvm.loop !95

._crit_edge208:                                   ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block388
  %indvars.iv.next248 = add nuw nsw i64 %indvars.iv247, 1 ; 2 uses
  %exitcond251.not = icmp eq i64 %indvars.iv.next248, %wide.trip.count250
  br i1 %exitcond251.not, label %._crit_edge210.split, label %iter.check, !llvm.loop !96

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv244 = phi i64 [ %indvars.iv.next245.1, %vec.epilog.scalar.ph ], [ %indvars.iv244.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv244
  %i.gn = load i8, ptr %gep, align 1, !tbaa !38
  %i.go = zext i8 %i.gn to i16
  %i.gp = add nsw i64 %indvars.iv244, %i.fe       ; 2 uses
  %i.gq = getelementptr inbounds [2 x i8], ptr %i.ee, i64 %i.gp
  store i16 %i.go, ptr %i.gq, align 2, !tbaa !57
  %gep317 = getelementptr i8, ptr %invariant.gep316, i64 %indvars.iv244
  %i.gr = load i8, ptr %gep317, align 1, !tbaa !38
  %i.gs = zext i8 %i.gr to i16
  %i.gt = getelementptr inbounds [2 x i8], ptr %i.ed, i64 %i.gp
  store i16 %i.gs, ptr %i.gt, align 2, !tbaa !57
  %indvars.iv.next245 = add nuw nsw i64 %indvars.iv244, 1 ; 3 uses
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next245
  %i.gu = load i8, ptr %gep.1, align 1, !tbaa !38
  %i.gv = zext i8 %i.gu to i16
  %i.gw = add nsw i64 %indvars.iv.next245, %i.fe  ; 2 uses
  %i.gx = getelementptr inbounds [2 x i8], ptr %i.ee, i64 %i.gw
  store i16 %i.gv, ptr %i.gx, align 2, !tbaa !57
  %gep317.1 = getelementptr i8, ptr %invariant.gep316, i64 %indvars.iv.next245
  %i.gy = load i8, ptr %gep317.1, align 1, !tbaa !38
  %i.gz = zext i8 %i.gy to i16
  %i.ha = getelementptr inbounds [2 x i8], ptr %i.ed, i64 %i.gw
  store i16 %i.gz, ptr %i.ha, align 2, !tbaa !57
  %indvars.iv.next245.1 = add nuw nsw i64 %indvars.iv244, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next245.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge208, label %vec.epilog.scalar.ph, !llvm.loop !97

.loopexit.loopexit:                               ; preds = %._crit_edge210.split
  %.pre264 = load ptr, ptr %i.ck, align 8, !tbaa !138
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph205, %.loopexit.loopexit, %.preheader188, %.preheader187
  %i.hb = phi ptr [ %i.cr, %.lr.ph205 ], [ %.pre264, %.loopexit.loopexit ], [ %i.cr, %.preheader188 ], [ %i.cr, %.preheader187 ] ; 2 uses
  %i.hc = load ptr, ptr %i.cd, align 8, !tbaa !137 ; 3 uses
  %i.hd = load ptr, ptr %i.k, align 8, !tbaa !19  ; 14 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 168 ; 5 uses
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !32 ; 15 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 152 ; 4 uses
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !32 ; 7 uses
  %i.hi = mul i32 %i.hh, %i.hf                    ; 2 uses
  %i.hj = uitofp nsz i32 %i.hi to double
  %i.hk = fdiv nsz double %i.hj, 8.294400e+06     ; 3 uses
  %i.hl = call nsz double @llvm.sqrt.f64(double %i.hk)
  %i.hm = call nsz double @llvm.fmuladd.f64(double %i.hl, double 3.200000e+01, double 5.000000e-01)
  %i.hn = fptosi double %i.hm to i32              ; 2 uses
  %i.ho = icmp eq i32 %i.hn, 0
  %i.hp = shl nuw nsw i32 %i.hn, 2
  %spec.select.i = select i1 %i.ho, i32 1, i32 %i.hp ; 23 uses
  %i.hq = add i32 %i.hf, -1
  %i.hr = add i32 %i.hq, %spec.select.i
  %i.hs = udiv i32 %i.hr, %spec.select.i          ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hd, i64 12 ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !50 ; 2 uses
  %i.hv = shl nsw i32 %i.hu, 1
  %i.hw = add nsw i32 %i.hv, -9
  %i.hx = shl nuw i32 1, %i.hw
  %i.hy = sitofp nsz i32 %i.hx to double
  %i.hz = fmul nnan nsz double %i.hy, 1.600000e+01
  %i.ia = fcmp nsz olt double %i.hk, 1.000000e-05
  %i.ib = select nsz i1 %i.ia, double 1.000000e-05, double %i.hk
  %i.ic = call nsz double @llvm.sqrt.f64(double %i.ib)
  %i.id = fdiv nsz double %i.hz, %i.ic
  %i.ie = call nsz double @llvm.sqrt.f64(double %i.id) ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.hd, i64 8 ; 3 uses
  %i.ig = load i32, ptr %i.if, align 8, !tbaa !49 ; 2 uses
  %i.ih = icmp eq i32 %i.ig, 1
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hd, i64 136
  %i.ij = select i1 %i.ih, ptr %i.he, ptr %i.ii   ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hd, i64 208
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !133 ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.hd, i64 216
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !134 ; 10 uses
  %i.io = add i32 %i.hu, -17
  %or.cond268.i = icmp ult i32 %i.io, -11
  br i1 %or.cond268.i, label %get_wsse.exit.thread, label %bb.u

bb.u:                                             ; preds = %.loopexit
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hd, i64 20 ; 4 uses
end_hunk_0
