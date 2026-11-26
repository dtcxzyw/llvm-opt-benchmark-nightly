Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AssignmentTrackingAnalysis?download=true
inline.NumInlined: 9323
inline.NumDeleted: 4259
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 64
begin_hunk_0_@_ZN4llvm11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEE8iterator10insertNodeEjNS_15IntervalMapImpl7NodeRefEj:bb.a
  %bound1219 = icmp ult ptr %i.ap, %i.ak
  %found.conflict220 = and i1 %bound0218, %bound1219
  %conflict.rdx221 = or i1 %conflict.rdx217, %found.conflict220
  %bound0222 = icmp ult ptr %i.ai, %i.ax
  %bound1223 = icmp ult ptr %i.av, %i.ak
  %found.conflict224 = and i1 %bound0222, %bound1223
  %conflict.rdx225 = or i1 %conflict.rdx221, %found.conflict224
  br i1 %conflict.rdx225, label %scalar.ph204.preheader, label %vector.ph226

vector.ph226:                                     ; preds = %vector.memcheck206
  %n.vec227 = and i64 %i.q, 8589934588            ; 3 uses
  %i.ay = sub nsw i64 %i.m, %n.vec227
  %invariant.op243 = add i32 -1, %i.j
  br label %vector.body228

vector.body228:                                   ; preds = %vector.body228, %vector.ph226
  %index229 = phi i64 [ 0, %vector.ph226 ], [ %index.next234, %vector.body228 ] ; 2 uses
  %i.az = sub i64 %i.m, %index229                 ; 2 uses
  %i.ba = trunc i64 %i.az to i32
  %.reass244 = add i32 %i.ba, %invariant.op243
  %i.bb = zext i32 %.reass244 to i64              ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.bb ; 2 uses
  %i.bd = trunc nuw i64 %i.az to i32
  %i.be = add i32 %i.j, %i.bd
  %i.bf = zext i32 %i.be to i64                   ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.bf ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %i.bc, i64 -8
  %i.bi = getelementptr inbounds i8, ptr %i.bc, i64 -24
  %wide.load230 = load <2 x i64>, ptr %i.bh, align 8, !tbaa !205, !alias.scope !2643
  %wide.load231 = load <2 x i64>, ptr %i.bi, align 8, !tbaa !205, !alias.scope !2643
  %i.bj = getelementptr inbounds i8, ptr %i.bg, i64 -8
  %i.bk = getelementptr inbounds i8, ptr %i.bg, i64 -24
  store <2 x i64> %wide.load230, ptr %i.bj, align 8, !tbaa !205, !alias.scope !2644, !noalias !2645
  store <2 x i64> %wide.load231, ptr %i.bk, align 8, !tbaa !205, !alias.scope !2644, !noalias !2645
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.bb ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -4
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 -12
  %wide.load232 = load <2 x i32>, ptr %i.bm, align 4, !tbaa !116, !alias.scope !2646
  %wide.load233 = load <2 x i32>, ptr %i.bn, align 4, !tbaa !116, !alias.scope !2646
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.bf ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -4
  %i.bq = getelementptr inbounds i8, ptr %i.bo, i64 -12
  store <2 x i32> %wide.load232, ptr %i.bp, align 4, !tbaa !116, !alias.scope !2647, !noalias !2648
  store <2 x i32> %wide.load233, ptr %i.bq, align 4, !tbaa !116, !alias.scope !2647, !noalias !2648
  %index.next234 = add nuw i64 %index229, 4       ; 2 uses
  %i.br = icmp eq i64 %index.next234, %n.vec227
  br i1 %i.br, label %middle.block235, label %vector.body228, !llvm.loop !2627

middle.block235:                                  ; preds = %vector.body228
  %cmp.n236 = icmp eq i64 %i.q, %n.vec227
  br i1 %cmp.n236, label %_ZN4llvm15IntervalMapImpl10BranchNodeIjjLj15ENS_23IntervalMapHalfOpenInfoIjEEE6insertEjjNS0_7NodeRefEj.exit, label %scalar.ph204.preheader

scalar.ph204.preheader:                           ; preds = %vector.memcheck206, %vector.scevcheck176, %.lr.ph.i.i.i, %middle.block235
  %indvars.iv.i.i.ph = phi i64 [ %i.m, %vector.memcheck206 ], [ %i.m, %vector.scevcheck176 ], [ %i.m, %.lr.ph.i.i.i ], [ %i.ay, %middle.block235 ] ; 4 uses
  %i.bs = trunc i64 %indvars.iv.i.i.ph to i32     ; 2 uses
  %xtraiter241 = and i32 %i.bs, 1
  %lcmp.mod242.not = icmp eq i32 %xtraiter241, 0
  br i1 %lcmp.mod242.not, label %scalar.ph204.prol.loopexit, label %scalar.ph204.prol

scalar.ph204.prol:                                ; preds = %scalar.ph204.preheader
  %indvars.iv.next.i.i.prol = add nsw i64 %indvars.iv.i.i.ph, -1 ; 2 uses
  %indvars.i.i.prol = trunc i64 %indvars.iv.next.i.i.prol to i32
  %i.bt = add i32 %i.j, %indvars.i.i.prol
  %i.bu = zext i32 %i.bt to i64                   ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.bu
  %i.bw = trunc nuw i64 %indvars.iv.i.i.ph to i32
  %i.bx = add i32 %i.j, %i.bw
  %i.by = zext i32 %i.bx to i64                   ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.by
  %i.ca = load i64, ptr %i.bv, align 8, !tbaa !205
  store i64 %i.ca, ptr %i.bz, align 8, !tbaa !205
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.bu
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !116
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.by
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !116
  br label %scalar.ph204.prol.loopexit

scalar.ph204.prol.loopexit:                       ; preds = %scalar.ph204.prol, %scalar.ph204.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph204.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph204.prol ]
  %i.ce = icmp eq i32 %i.bs, 1
  br i1 %i.ce, label %_ZN4llvm15IntervalMapImpl10BranchNodeIjjLj15ENS_23IntervalMapHalfOpenInfoIjEEE6insertEjjNS0_7NodeRefEj.exit, label %scalar.ph204

scalar.ph204:                                     ; preds = %scalar.ph204.prol.loopexit, %scalar.ph204
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %scalar.ph204 ], [ %indvars.iv.i.i.unr, %scalar.ph204.prol.loopexit ] ; 3 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %indvars.i.i = trunc i64 %indvars.iv.next.i.i to i32
  %i.cf = add i32 %i.j, %indvars.i.i
  %i.cg = zext i32 %i.cf to i64                   ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.cg
  %i.ci = trunc nuw i64 %indvars.iv.i.i to i32
  %i.cj = add i32 %i.j, %i.ci
  %i.ck = zext i32 %i.cj to i64                   ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ck
  %i.cm = load i64, ptr %i.ch, align 8, !tbaa !205
  store i64 %i.cm, ptr %i.cl, align 8, !tbaa !205
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.cg
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !116
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ck
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !116
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, -2 ; 2 uses
  %indvars.i.i.1 = trunc i64 %indvars.iv.next.i.i.1 to i32 ; 2 uses
  %i.cq = add i32 %i.j, %indvars.i.i.1
  %i.cr = zext i32 %i.cq to i64                   ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.cr
  %i.ct = trunc nuw i64 %indvars.iv.next.i.i to i32
  %i.cu = add i32 %i.j, %i.ct
  %i.cv = zext i32 %i.cu to i64                   ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.cv
  %i.cx = load i64, ptr %i.cs, align 8, !tbaa !205
  store i64 %i.cx, ptr %i.cw, align 8, !tbaa !205
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.cr
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !116
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.cv
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !116
  %.not.i.i.i.1 = icmp eq i32 %indvars.i.i.1, 0
  br i1 %.not.i.i.i.1, label %_ZN4llvm15IntervalMapImpl10BranchNodeIjjLj15ENS_23IntervalMapHalfOpenInfoIjEEE6insertEjjNS0_7NodeRefEj.exit, label %scalar.ph204, !llvm.loop !2628

_ZN4llvm15IntervalMapImpl10BranchNodeIjjLj15ENS_23IntervalMapHalfOpenInfoIjEEE6insertEjjNS0_7NodeRefEj.exit: ; preds = %scalar.ph204.prol.loopexit, %scalar.ph204, %middle.block235, %bb.c
  %i.db = zext i32 %i.j to i64                    ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.db
  store i64 %2, ptr %i.dc, align 8, !tbaa !205
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.db
  store i32 %3, ptr %i.de, align 4, !tbaa !116
  %i.df = load i32, ptr %i.d, align 4, !tbaa !459
  %i.dg = add i32 %i.df, 1                        ; 2 uses
  store i32 %i.dg, ptr %i.d, align 4, !tbaa !459
  %i.dh = load ptr, ptr %i.b, align 8, !tbaa !71  ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i32 %i.dg, ptr %i.di, align 8, !tbaa !473
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 12
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !471
  %i.dl = load ptr, ptr %i.dh, align 8, !tbaa !472
  %i.dm = zext i32 %i.dk to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dm
  %.sroa.0.0.copyload.i = load i64, ptr %i.dn, align 8, !tbaa !205 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dp = and i64 %.sroa.0.0.copyload.i, -64
  %i.dq = inttoptr i64 %i.dp to ptr
  %i.dr = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.ds = and i32 %i.dr, 63
  %i.dt = add nuw nsw i32 %i.ds, 1
  store ptr %i.dq, ptr %i.do, align 8, !tbaa !329
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  store i32 %i.dt, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !116
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.du = load ptr, ptr %i.b, align 8, !tbaa !71
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !116
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !460 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 3 uses
  %i.ea = load ptr, ptr %i.dy, align 8, !tbaa !328 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !522
  store ptr %i.eb, ptr %i.dy, align 8, !tbaa !328
  br label %.lr.ph.i.i

bb.f:                                             ; preds = %bb.d
  %i.ec = load ptr, ptr %i.dz, align 8, !tbaa !523
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = add i64 %i.ed, 63
  %i.ef = and i64 %i.ee, -64                      ; 2 uses
  %i.eg = add i64 %i.ef, 192                      ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !524
  %i.ej = icmp ult i64 %i.eg, %i.ei
  br i1 %i.ej, label %bb.g, label %bb.h, !prof !120

bb.g:                                             ; preds = %bb.f
  %i.ek = inttoptr i64 %i.eg to ptr
  store ptr %i.ek, ptr %i.dz, align 8, !tbaa !523
  %i.el = inttoptr i64 %i.ef to ptr
  br label %.lr.ph.i.i

bb.h:                                             ; preds = %bb.f
  %i.em = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.dz, i64 noundef 192, i64 noundef 192, i8 6)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.g, %bb.h
  %i.en = phi ptr [ %i.ea, %bb.e ], [ %i.el, %bb.g ], [ %i.em, %bb.h ] ; 12 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.en, i8 0, i64 192, i1 false)
  %i.eo = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 8 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 7 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 128 ; 7 uses
  %i.er = zext i32 %i.e to i64                    ; 7 uses
  %min.iters.check = icmp ult i32 %i.e, 40
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.es = shl nuw nsw i64 %i.er, 3                ; 2 uses
  %i.et = getelementptr i8, ptr %i.en, i64 %i.es  ; 3 uses
  %i.eu = shl nuw nsw i64 %i.er, 2
  %i.ev = add nuw nsw i64 %i.eu, 128              ; 2 uses
  %i.ew = getelementptr i8, ptr %i.en, i64 %i.ev  ; 3 uses
  %i.ex = getelementptr i8, ptr %i.a, i64 %i.es
  %i.ey = getelementptr i8, ptr %i.ex, i64 8      ; 2 uses
  %i.ez = getelementptr i8, ptr %i.a, i64 %i.ev   ; 2 uses
  %bound0 = icmp ult ptr %i.en, %i.ew
  %bound1 = icmp ult ptr %i.eq, %i.et
  %found.conflict = and i1 %bound0, %bound1
  %bound097 = icmp ult ptr %i.en, %i.ey
  %bound198 = icmp ult ptr %i.eo, %i.et
  %found.conflict99 = and i1 %bound097, %bound198
  %conflict.rdx = or i1 %found.conflict, %found.conflict99
  %bound0100 = icmp ult ptr %i.en, %i.ez
  %bound1101 = icmp ult ptr %i.ep, %i.et
  %found.conflict102 = and i1 %bound0100, %bound1101
  %conflict.rdx103 = or i1 %conflict.rdx, %found.conflict102
  %bound0104 = icmp ult ptr %i.eq, %i.ey
  %bound1105 = icmp ult ptr %i.eo, %i.ew
  %found.conflict106 = and i1 %bound0104, %bound1105
  %conflict.rdx107 = or i1 %conflict.rdx103, %found.conflict106
  %bound0108 = icmp ult ptr %i.eq, %i.ez
  %bound1109 = icmp ult ptr %i.ep, %i.ew
  %found.conflict110 = and i1 %bound0108, %bound1109
  %conflict.rdx111 = or i1 %conflict.rdx107, %found.conflict110
  br i1 %conflict.rdx111, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.er, 4294967292              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %index ; 2 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %index ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %wide.load = load <2 x i64>, ptr %i.fa, align 8, !tbaa !205, !alias.scope !2649
  %wide.load112 = load <2 x i64>, ptr %i.fc, align 8, !tbaa !205, !alias.scope !2649
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store <2 x i64> %wide.load, ptr %i.fb, align 8, !tbaa !205, !alias.scope !2650, !noalias !2651
  store <2 x i64> %wide.load112, ptr %i.fd, align 8, !tbaa !205, !alias.scope !2650, !noalias !2651
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %index ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %wide.load113 = load <2 x i32>, ptr %i.fe, align 4, !tbaa !116, !alias.scope !2652
  %wide.load114 = load <2 x i32>, ptr %i.ff, align 4, !tbaa !116, !alias.scope !2652
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %index ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store <2 x i32> %wide.load113, ptr %i.fg, align 4, !tbaa !116, !alias.scope !2653, !noalias !2654
  store <2 x i32> %wide.load114, ptr %i.fh, align 4, !tbaa !116, !alias.scope !2653, !noalias !2654
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fi = icmp eq i64 %index.next, %n.vec
  br i1 %i.fi, label %middle.block, label %vector.body, !llvm.loop !2634

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.er
  br i1 %cmp.n, label %_ZN4llvm11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEE9splitRootEj.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 7 uses
  %xtraiter = and i64 %i.er, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i.ph
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv.i.ph
  %i.fl = load i64, ptr %i.fj, align 8, !tbaa !205
  store i64 %i.fl, ptr %i.fk, align 8, !tbaa !205
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %indvars.iv.i.ph
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !116
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv.i.ph
  store i32 %i.fn, ptr %i.fo, align 4, !tbaa !116
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.fp = add nsw i64 %i.er, -1
  %i.fq = icmp eq i64 %indvars.iv.i.ph, %i.fp
  br i1 %i.fq, label %_ZN4llvm11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEE9splitRootEj.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv.i
  %i.ft = load i64, ptr %i.fr, align 8, !tbaa !205
  store i64 %i.ft, ptr %i.fs, align 8, !tbaa !205
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %indvars.iv.i
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !116
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv.i
  store i32 %i.fv, ptr %i.fw, align 4, !tbaa !116
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 4 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.next.i
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv.next.i
  %i.fz = load i64, ptr %i.fx, align 8, !tbaa !205
  store i64 %i.fz, ptr %i.fy, align 8, !tbaa !205
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %indvars.iv.next.i
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !116
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv.next.i
  store i32 %i.gb, ptr %i.gc, align 4, !tbaa !116
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.1, %i.er
  br i1 %.not.i.i.1, label %_ZN4llvm11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEE9splitRootEj.exit, label %scalar.ph, !llvm.loop !2635

_ZN4llvm11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEE9splitRootEj.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.gd = add i32 %i.e, -1
  %i.ge = ptrtoint ptr %i.en to i64
  %i.gf = zext i32 %i.gd to i64                   ; 2 uses
  %i.gg = and i64 %i.ge, -64
  %i.gh = or i64 %i.gg, %i.gf                     ; 2 uses
  %i.gi = and i64 %i.gh, -64
  %i.gj = inttoptr i64 %i.gi to ptr
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 128
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.gf
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !116
  store i32 %i.gm, ptr %i.ep, align 8, !tbaa !116
  store i64 %i.gh, ptr %i.eo, align 8, !tbaa !205
  store i32 1, ptr %i.d, align 4, !tbaa !459
  %i.gn = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 2 uses
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !458
  %i.gp = add i32 %i.go, 1
  store i32 %i.gp, ptr %i.gn, align 8, !tbaa !458
  %.sroa.2.0.insert.ext.i = zext i32 %i.dw to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  tail call void @_ZN4llvm15IntervalMapImpl4Path11replaceRootEPvjSt4pairIjjE(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull %i.eo, i32 noundef 1, i64 %.sroa.2.0.insert.shift.i) #22
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvm11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEE9splitRootEj.exit, %bb.a
  %.048 = phi i32 [ 2, %_ZN4llvm11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEE9splitRootEj.exit ], [ %1, %bb.a ]
  %i.gq = add i32 %.048, -1                       ; 6 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !78
  %.not.i.i.i53 = icmp eq i32 %i.gs, 0
  br i1 %.not.i.i.i53, label %_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.thread.i, label %_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.i

_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.i:   ; preds = %bb.i
  %i.gt = load ptr, ptr %i.b, align 8, !tbaa !71  ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 12
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !471
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !473
  %i.gy = icmp ult i32 %i.gv, %i.gx
  br i1 %i.gy, label %_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.i._ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit_crit_edge, label %_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.thread.i

_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.i._ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit_crit_edge: ; preds = %_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.i
  %.pre67 = zext i32 %i.gq to i64
  br label %_ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit

_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.thread.i: ; preds = %_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.i, %bb.i
  tail call void @_ZN4llvm15IntervalMapImpl4Path8moveLeftEj(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i32 noundef %i.gq) #22
  %i.gz = zext i32 %i.gq to i64                   ; 2 uses
  %i.ha = load ptr, ptr %i.b, align 8, !tbaa !71  ; 2 uses
  %i.hb = getelementptr inbounds nuw [16 x i8], ptr %i.ha, i64 %i.gz
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 12 ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !471
  %i.he = add i32 %i.hd, 1
  store i32 %i.he, ptr %i.hc, align 4, !tbaa !471
  br label %_ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit

_ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit: ; preds = %_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.i._ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit_crit_edge, %_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.thread.i
  %.pre-phi68 = phi i64 [ %.pre67, %_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.i._ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit_crit_edge ], [ %i.gz, %_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.thread.i ] ; 2 uses
  %i.hf = phi ptr [ %i.gt, %_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.i._ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit_crit_edge ], [ %i.ha, %_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.thread.i ] ; 2 uses
  %i.hg = getelementptr inbounds nuw [16 x i8], ptr %i.hf, i64 %.pre-phi68
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !473 ; 2 uses
  %i.hj = icmp eq i32 %i.hi, 16
  br i1 %i.hj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit
  %i.hk = tail call noundef zeroext i1 @_ZN4llvm11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEE8iterator8overflowINS_15IntervalMapImpl10BranchNodeIjjLj16ES2_EEEEbj(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %i.gq) ; 2 uses
  %i.hl = zext i1 %i.hk to i32
  %i.hm = add i32 %i.gq, %i.hl                    ; 2 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !71  ; 2 uses
  %.pre64 = zext i32 %i.hm to i64                 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %.pre64
  %.phi.trans.insert65 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 8
  %.pre66 = load i32, ptr %.phi.trans.insert65, align 8, !tbaa !473
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit
  %i.hn = phi i32 [ %.pre66, %bb.j ], [ %i.hi, %_ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit ] ; 7 uses
  %.pre-phi = phi i64 [ %.pre64, %bb.j ], [ %.pre-phi68, %_ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit ] ; 4 uses
  %i.ho = phi ptr [ %.pre, %bb.j ], [ %i.hf, %_ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit ]
  %.150 = phi i1 [ %i.hk, %bb.j ], [ %i.c, %_ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit ]
  %.1 = phi i32 [ %i.hm, %bb.j ], [ %i.gq, %_ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit ] ; 3 uses
  %i.hp = getelementptr inbounds nuw [16 x i8], ptr %i.ho, i64 %.pre-phi ; 2 uses
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !472 ; 19 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 12
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !116 ; 14 uses
  %.not9.i.i.i54 = icmp eq i32 %i.hn, %i.hs
  br i1 %.not9.i.i.i54, label %_ZN4llvm15IntervalMapImpl10BranchNodeIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEE6insertEjjNS0_7NodeRefEj.exit, label %.lr.ph.i.i.i55

.lr.ph.i.i.i55:                                   ; preds = %bb.k
  %i.ht = sub i32 %i.hn, %i.hs
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hq, i64 128 ; 8 uses
  %i.hv = zext i32 %i.ht to i64                   ; 5 uses
  %i.hw = add i32 %i.hn, -1                       ; 2 uses
  %i.hx = sub i32 %i.hw, %i.hs                    ; 2 uses
  %i.hy = zext i32 %i.hx to i64                   ; 3 uses
  %i.hz = add nuw nsw i64 %i.hy, 1                ; 2 uses
  %min.iters.check143 = icmp ult i32 %i.hx, 55
  br i1 %min.iters.check143, label %scalar.ph142.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i.i55
  %i.ia = add i32 %i.hn, -1                       ; 2 uses
  %.neg = sub i32 %i.hs, %i.ia
  %i.ib = add i32 %.neg, %i.hn
  %i.ic = icmp ugt i32 %i.ib, %i.hn
  %i.id = icmp ugt i32 %i.hs, %i.ia
  %i.ie = or i1 %i.ic, %i.id
  br i1 %i.ie, label %scalar.ph142.preheader, label %vector.memcheck144

vector.memcheck144:                               ; preds = %vector.scevcheck
  %i.if = zext i32 %i.hn to i64                   ; 2 uses
  %i.ig = shl nuw nsw i64 %i.if, 3                ; 2 uses
  %i.ih = shl nuw nsw i64 %i.hy, 3                ; 2 uses
  %i.ii = sub nsw i64 %i.ig, %i.ih
  %i.ij = getelementptr i8, ptr %i.hq, i64 %i.ii  ; 3 uses
  %i.ik = getelementptr i8, ptr %i.hq, i64 %i.ig
  %i.il = getelementptr i8, ptr %i.ik, i64 8      ; 3 uses
  %i.im = shl nuw nsw i64 %i.if, 2                ; 2 uses
  %i.in = shl nuw nsw i64 %i.hy, 2                ; 2 uses
  %i.io = add nuw nsw i64 %i.im, 128
end_hunk_0
begin_hunk_1_@_ZN4llvm15IntervalMapImpl18adjustSiblingSizesINS0_10BranchNodeIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEEEEEvPPT_jPjPKj:bb.a
  %indvars.iv.next126155.in = phi i64 [ %indvars.iv.next126155, %bb.b ], [ %indvars.iv123, %.preheader115 ]
  %i.l = phi i32 [ %i.ka, %bb.b ], [ %i.e, %.preheader115 ] ; 12 uses
  %i.m = phi i32 [ %i.kb, %bb.b ], [ %i.g, %.preheader115 ]
  %indvars.iv.next126155 = add nsw i64 %indvars.iv.next126155.in, -1 ; 4 uses
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !528  ; 54 uses
  %i.o = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv.next126155
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !528  ; 18 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next126155 ; 3 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !116  ; 15 uses
  %i.s = sub i32 %i.m, %i.l                       ; 4 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph.i.i.i, label %.lr.ph.i.i24.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph156
  %i.u = sub i32 16, %i.l                         ; 2 uses
  %i.v = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.s)
  %.sroa.speculated46.i = tail call i32 @llvm.umin.i32(i32 %i.u, i32 %i.v) ; 12 uses
  %.not9.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not9.i.i.i, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEjLj16EE9moveRightEjjj.exit.i.i, label %.lr.ph.i.i21.i

.lr.ph.i.i21.i:                                   ; preds = %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 128 ; 10 uses
  %i.x = zext i32 %i.l to i64                     ; 6 uses
  %min.iters.check236 = icmp ult i32 %i.l, 20
  %i.y = sub i32 0, %i.l
  %i.z = icmp ugt i32 %.sroa.speculated46.i, %i.y
  %or.cond650 = select i1 %min.iters.check236, i1 true, i1 %i.z
  br i1 %or.cond650, label %scalar.ph235.preheader, label %vector.memcheck237

vector.memcheck237:                               ; preds = %.lr.ph.i.i21.i
  %i.aa = add i32 %i.l, %.sroa.speculated46.i
  %i.ab = add i32 %i.aa, -1
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = shl nuw nsw i64 %i.ac, 3                ; 2 uses
  %i.ae = add i32 %i.l, -1
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = shl nuw nsw i64 %i.af, 3                ; 2 uses
  %i.ah = sub nsw i64 %i.ad, %i.ag
  %i.ai = getelementptr i8, ptr %i.n, i64 %i.ah   ; 3 uses
  %i.aj = getelementptr i8, ptr %i.n, i64 %i.ad
  %i.ak = getelementptr i8, ptr %i.aj, i64 8      ; 3 uses
  %i.al = shl nuw nsw i64 %i.ac, 2                ; 2 uses
  %i.am = shl nuw nsw i64 %i.af, 2                ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 128
  %i.ao = sub nsw i64 %i.an, %i.am
  %i.ap = getelementptr i8, ptr %i.n, i64 %i.ao   ; 3 uses
  %i.aq = getelementptr i8, ptr %i.n, i64 %i.al
  %i.ar = getelementptr i8, ptr %i.aq, i64 132    ; 3 uses
  %i.as = getelementptr i8, ptr %i.n, i64 %i.ag
  %i.at = getelementptr i8, ptr %i.as, i64 8      ; 2 uses
  %i.au = getelementptr i8, ptr %i.n, i64 %i.am
  %i.av = getelementptr i8, ptr %i.au, i64 132    ; 2 uses
  %bound0238 = icmp ult ptr %i.ai, %i.ar
  %bound1239 = icmp ult ptr %i.ap, %i.ak
  %found.conflict240 = and i1 %bound0238, %bound1239
  %bound0241 = icmp ult ptr %i.ai, %i.at
  %bound1242 = icmp ult ptr %i.n, %i.ak
  %found.conflict243 = and i1 %bound0241, %bound1242
  %conflict.rdx244 = or i1 %found.conflict240, %found.conflict243
  %bound0245 = icmp ult ptr %i.ai, %i.av
  %bound1246 = icmp ult ptr %i.w, %i.ak
  %found.conflict247 = and i1 %bound0245, %bound1246
  %conflict.rdx248 = or i1 %conflict.rdx244, %found.conflict247
  %bound0249 = icmp ult ptr %i.ap, %i.at
  %bound1250 = icmp ult ptr %i.n, %i.ar
  %found.conflict251 = and i1 %bound0249, %bound1250
  %conflict.rdx252 = or i1 %conflict.rdx248, %found.conflict251
  %bound0253 = icmp ult ptr %i.ap, %i.av
  %bound1254 = icmp ult ptr %i.w, %i.ar
  %found.conflict255 = and i1 %bound0253, %bound1254
  %conflict.rdx256 = or i1 %conflict.rdx252, %found.conflict255
  br i1 %conflict.rdx256, label %scalar.ph235.preheader, label %vector.ph257

vector.ph257:                                     ; preds = %vector.memcheck237
  %n.vec258 = and i64 %i.x, 4294967292            ; 2 uses
  %i.aw = and i64 %i.x, 3
  br label %vector.body259

vector.body259:                                   ; preds = %vector.body259, %vector.ph257
  %index260 = phi i64 [ 0, %vector.ph257 ], [ %index.next265, %vector.body259 ] ; 2 uses
  %i.ax = xor i64 %index260, -1
  %i.ay = add i64 %i.ax, %i.x                     ; 2 uses
  %i.az = trunc i64 %i.ay to i32
  %i.ba = and i64 %i.ay, 4294967295               ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ba ; 2 uses
  %i.bc = add i32 %.sroa.speculated46.i, %i.az
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bd ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %i.bb, i64 -8
  %i.bg = getelementptr inbounds i8, ptr %i.bb, i64 -24
  %wide.load261 = load <2 x i64>, ptr %i.bf, align 8, !tbaa !205, !alias.scope !2722
  %wide.load262 = load <2 x i64>, ptr %i.bg, align 8, !tbaa !205, !alias.scope !2722
  %i.bh = getelementptr inbounds i8, ptr %i.be, i64 -8
  %i.bi = getelementptr inbounds i8, ptr %i.be, i64 -24
  store <2 x i64> %wide.load261, ptr %i.bh, align 8, !tbaa !205, !alias.scope !2723, !noalias !2724
  store <2 x i64> %wide.load262, ptr %i.bi, align 8, !tbaa !205, !alias.scope !2723, !noalias !2724
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.ba ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -4
  %i.bl = getelementptr inbounds i8, ptr %i.bj, i64 -12
  %wide.load263 = load <2 x i32>, ptr %i.bk, align 4, !tbaa !116, !alias.scope !2725
  %wide.load264 = load <2 x i32>, ptr %i.bl, align 4, !tbaa !116, !alias.scope !2725
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bd ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -4
  %i.bo = getelementptr inbounds i8, ptr %i.bm, i64 -12
  store <2 x i32> %wide.load263, ptr %i.bn, align 4, !tbaa !116, !alias.scope !2726, !noalias !2727
  store <2 x i32> %wide.load264, ptr %i.bo, align 4, !tbaa !116, !alias.scope !2726, !noalias !2727
  %index.next265 = add nuw i64 %index260, 4       ; 2 uses
  %i.bp = icmp eq i64 %index.next265, %n.vec258
  br i1 %i.bp, label %middle.block266, label %vector.body259, !llvm.loop !2668

middle.block266:                                  ; preds = %vector.body259
  %cmp.n267 = icmp eq i64 %n.vec258, %i.x
  br i1 %cmp.n267, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEjLj16EE9moveRightEjjj.exit.i.i, label %scalar.ph235.preheader

scalar.ph235.preheader:                           ; preds = %vector.memcheck237, %.lr.ph.i.i21.i, %middle.block266
  %indvars.iv.i.i.i.ph = phi i64 [ %i.x, %vector.memcheck237 ], [ %i.x, %.lr.ph.i.i21.i ], [ %i.aw, %middle.block266 ] ; 4 uses
  %i.bq = trunc nuw i64 %indvars.iv.i.i.i.ph to i32
  %xtraiter659 = and i32 %i.bq, 1
  %lcmp.mod660.not = icmp eq i32 %xtraiter659, 0
  br i1 %lcmp.mod660.not, label %scalar.ph235.prol.loopexit, label %scalar.ph235.prol

scalar.ph235.prol:                                ; preds = %scalar.ph235.preheader
  %indvars.iv.next.i.i.i.prol = add nsw i64 %indvars.iv.i.i.i.ph, -1 ; 3 uses
  %indvars.i.i.i.prol = trunc i64 %indvars.iv.next.i.i.i.prol to i32
  %i.br = and i64 %indvars.iv.next.i.i.i.prol, 4294967295 ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.br
  %i.bt = add i32 %.sroa.speculated46.i, %indvars.i.i.i.prol
  %i.bu = zext i32 %i.bt to i64                   ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bu
  %i.bw = load i64, ptr %i.bs, align 8, !tbaa !205
  store i64 %i.bw, ptr %i.bv, align 8, !tbaa !205
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.br
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !116
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bu
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !116
  br label %scalar.ph235.prol.loopexit

scalar.ph235.prol.loopexit:                       ; preds = %scalar.ph235.prol, %scalar.ph235.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph235.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph235.prol ]
  %i.ca = icmp eq i64 %indvars.iv.i.i.i.ph, 1
  br i1 %i.ca, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEjLj16EE9moveRightEjjj.exit.i.i, label %scalar.ph235

scalar.ph235:                                     ; preds = %scalar.ph235.prol.loopexit, %scalar.ph235
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.1, %scalar.ph235 ], [ %indvars.iv.i.i.i.unr, %scalar.ph235.prol.loopexit ] ; 2 uses
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 2 uses
  %indvars.i.i.i = trunc i64 %indvars.iv.next.i.i.i to i32
  %i.cb = and i64 %indvars.iv.next.i.i.i, 4294967295 ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.cb
  %i.cd = add i32 %.sroa.speculated46.i, %indvars.i.i.i
  %i.ce = zext i32 %i.cd to i64                   ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ce
  %i.cg = load i64, ptr %i.cc, align 8, !tbaa !205
  store i64 %i.cg, ptr %i.cf, align 8, !tbaa !205
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.cb
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !116
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.ce
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !116
  %indvars.iv.next.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i, -2 ; 3 uses
  %indvars.i.i.i.1 = trunc i64 %indvars.iv.next.i.i.i.1 to i32 ; 2 uses
  %i.ck = and i64 %indvars.iv.next.i.i.i.1, 4294967295 ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ck
  %i.cm = add i32 %.sroa.speculated46.i, %indvars.i.i.i.1
  %i.cn = zext i32 %i.cm to i64                   ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.cn
  %i.cp = load i64, ptr %i.cl, align 8, !tbaa !205
  store i64 %i.cp, ptr %i.co, align 8, !tbaa !205
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.ck
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !116
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.cn
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !116
  %.not.i.i22.i.1 = icmp eq i32 %indvars.i.i.i.1, 0
  br i1 %.not.i.i22.i.1, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEjLj16EE9moveRightEjjj.exit.i.i, label %scalar.ph235, !llvm.loop !2669

_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEjLj16EE9moveRightEjjj.exit.i.i: ; preds = %scalar.ph235.prol.loopexit, %scalar.ph235, %middle.block266, %.lr.ph.i.i.i
  %.not13.i.i.i = icmp eq i32 %.sroa.speculated46.i, 0
  br i1 %.not13.i.i.i, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEjLj16EE17adjustFromLeftSibEjRS3_ji.exit, label %.lr.ph.i7.i.i

.lr.ph.i7.i.i:                                    ; preds = %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEjLj16EE9moveRightEjjj.exit.i.i
  %i.ct = sub i32 %i.r, %.sroa.speculated46.i     ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.p, i64 128 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.n, i64 128 ; 7 uses
  %i.cw = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.s)
  %i.cx = tail call i32 @llvm.umin.i32(i32 %i.cw, i32 %i.u) ; 2 uses
  %i.cy = zext nneg i32 %i.cx to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.cx, 24
  %i.cz = add i32 %i.r, -1
  %i.da = icmp ult i32 %i.cz, %i.ct
  %or.cond652 = select i1 %min.iters.check, i1 true, i1 %i.da
  br i1 %or.cond652, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i7.i.i
  %i.db = add nsw i32 %.sroa.speculated46.i, -1
  %i.dc = zext i32 %i.db to i64                   ; 2 uses
  %i.dd = shl nuw nsw i64 %i.dc, 3                ; 2 uses
  %i.de = getelementptr i8, ptr %i.n, i64 %i.dd
  %i.df = getelementptr i8, ptr %i.de, i64 8      ; 3 uses
  %i.dg = shl nuw nsw i64 %i.dc, 2                ; 2 uses
  %i.dh = getelementptr i8, ptr %i.n, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 132    ; 3 uses
  %i.dj = zext i32 %i.ct to i64                   ; 2 uses
  %i.dk = shl nuw nsw i64 %i.dj, 3                ; 2 uses
  %i.dl = getelementptr i8, ptr %i.p, i64 %i.dk   ; 2 uses
  %i.dm = getelementptr i8, ptr %i.p, i64 %i.dk
  %i.dn = getelementptr i8, ptr %i.dm, i64 %i.dd
  %i.do = getelementptr i8, ptr %i.dn, i64 8      ; 2 uses
  %4 = shl nuw nsw i64 %i.dj, 2                   ; 2 uses
  %5 = getelementptr i8, ptr %i.p, i64 %4
  %i.dp = getelementptr i8, ptr %5, i64 128       ; 2 uses
  %i.dq = getelementptr i8, ptr %i.p, i64 %4
  %i.dr = getelementptr i8, ptr %i.dq, i64 %i.dg
  %i.ds = getelementptr i8, ptr %i.dr, i64 132    ; 2 uses
  %bound0 = icmp ult ptr %i.n, %i.di
  %bound1 = icmp ult ptr %i.cv, %i.df
  %found.conflict = and i1 %bound0, %bound1
  %bound0186 = icmp ult ptr %i.n, %i.do
  %bound1187 = icmp ult ptr %i.dl, %i.df
  %found.conflict188 = and i1 %bound0186, %bound1187
  %conflict.rdx = or i1 %found.conflict, %found.conflict188
  %bound0189 = icmp ult ptr %i.n, %i.ds
  %bound1190 = icmp ult ptr %i.dp, %i.df
  %found.conflict191 = and i1 %bound0189, %bound1190
  %conflict.rdx192 = or i1 %conflict.rdx, %found.conflict191
  %bound0193 = icmp ult ptr %i.cv, %i.do
  %bound1194 = icmp ult ptr %i.dl, %i.di
  %found.conflict195 = and i1 %bound0193, %bound1194
  %conflict.rdx196 = or i1 %conflict.rdx192, %found.conflict195
  %bound0197 = icmp ult ptr %i.cv, %i.ds
  %bound1198 = icmp ult ptr %i.dp, %i.di
  %found.conflict199 = and i1 %bound0197, %bound1198
  %conflict.rdx200 = or i1 %conflict.rdx196, %found.conflict199
  br i1 %conflict.rdx200, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cy, 2147483644              ; 4 uses
  %i.dt = trunc nuw nsw i64 %n.vec to i32
  %i.du = add i32 %i.ct, %i.dt
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.dv = trunc i64 %index to i32
  %i.dw = add i32 %i.ct, %i.dv
  %i.dx = zext i32 %i.dw to i64                   ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.dx ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %wide.load = load <2 x i64>, ptr %i.dy, align 8, !tbaa !205, !alias.scope !2728
  %wide.load201 = load <2 x i64>, ptr %i.ea, align 8, !tbaa !205, !alias.scope !2728
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store <2 x i64> %wide.load, ptr %i.dz, align 8, !tbaa !205, !alias.scope !2729, !noalias !2730
  store <2 x i64> %wide.load201, ptr %i.eb, align 8, !tbaa !205, !alias.scope !2729, !noalias !2730
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.dx ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %wide.load202 = load <2 x i32>, ptr %i.ec, align 4, !tbaa !116, !alias.scope !2731
  %wide.load203 = load <2 x i32>, ptr %i.ed, align 4, !tbaa !116, !alias.scope !2731
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %index ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store <2 x i32> %wide.load202, ptr %i.ee, align 4, !tbaa !116, !alias.scope !2732, !noalias !2733
  store <2 x i32> %wide.load203, ptr %i.ef, align 4, !tbaa !116, !alias.scope !2732, !noalias !2733
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eg = icmp eq i64 %index.next, %n.vec
  br i1 %i.eg, label %middle.block, label %vector.body, !llvm.loop !2675

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.cy
  br i1 %cmp.n, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEjLj16EE17adjustFromLeftSibEjRS3_ji.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i7.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i7.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %.015.i.i.i.ph = phi i32 [ %i.ct, %vector.memcheck ], [ %i.ct, %.lr.ph.i7.i.i ], [ %i.du, %middle.block ] ; 5 uses
  %i.eh = sub i32 %i.r, %.015.i.i.i.ph
  %.neg = add i32 %.015.i.i.i.ph, 1
  %xtraiter661 = and i32 %i.eh, 1
  %lcmp.mod662.not = icmp eq i32 %xtraiter661, 0
  br i1 %lcmp.mod662.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ei = zext i32 %.015.i.i.i.ph to i64          ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ei
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i.i.ph
  %i.el = load i64, ptr %i.ej, align 8, !tbaa !205
  store i64 %i.el, ptr %i.ek, align 8, !tbaa !205
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.ei
  %i.en = load i32, ptr %i.em, align 4, !tbaa !116
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.i.i.ph
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !116
  %i.ep = add i32 %.015.i.i.i.ph, 1
  %indvars.iv.next.i.i.prol = or disjoint i64 %indvars.iv.i.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ]
  %.015.i.i.i.unr = phi i32 [ %.015.i.i.i.ph, %scalar.ph.preheader ], [ %i.ep, %scalar.ph.prol ]
  %i.eq = icmp eq i32 %i.r, %.neg
  br i1 %i.eq, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEjLj16EE17adjustFromLeftSibEjRS3_ji.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %scalar.ph ], [ %indvars.iv.i.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %.015.i.i.i = phi i32 [ %i.fg, %scalar.ph ], [ %.015.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.er = zext i32 %.015.i.i.i to i64             ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.er
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i.i
  %i.eu = load i64, ptr %i.es, align 8, !tbaa !205
  store i64 %i.eu, ptr %i.et, align 8, !tbaa !205
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.er
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !116
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.i.i
  store i32 %i.ew, ptr %i.ex, align 4, !tbaa !116
  %i.ey = add i32 %.015.i.i.i, 1
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ez = zext i32 %i.ey to i64                   ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ez
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next.i.i
  %i.fc = load i64, ptr %i.fa, align 8, !tbaa !205
  store i64 %i.fc, ptr %i.fb, align 8, !tbaa !205
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.ez
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !116
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.next.i.i
  store i32 %i.fe, ptr %i.ff, align 4, !tbaa !116
  %i.fg = add i32 %.015.i.i.i, 2                  ; 2 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2
  %.not.i8.i.i.1 = icmp eq i32 %i.fg, %i.r
  br i1 %.not.i8.i.i.1, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEjLj16EE17adjustFromLeftSibEjRS3_ji.exit, label %scalar.ph, !llvm.loop !2676

.lr.ph.i.i24.i:                                   ; preds = %.lr.ph156
  %i.fh = sub nsw i32 0, %i.s                     ; 2 uses
  %i.fi = sub i32 16, %i.r                        ; 2 uses
  %i.fj = tail call i32 @llvm.umin.i32(i32 %i.l, i32 %i.fh)
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %i.fi, i32 %i.fj) ; 5 uses
  %.not13.i.i29.i = icmp eq i32 %.sroa.speculated.i, 0
  br i1 %.not13.i.i29.i, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEjLj16EE4copyILj16EEEvRKNS1_IS2_jXT_EEEjjj.exit.i.i, label %.lr.ph.i.i30.i

.lr.ph.i.i30.i:                                   ; preds = %.lr.ph.i.i24.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.n, i64 128 ; 6 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.p, i64 128 ; 4 uses
  %i.fm = zext i32 %.sroa.speculated.i to i64     ; 8 uses
  %min.iters.check360 = icmp ult i32 %.sroa.speculated.i, 26
  br i1 %min.iters.check360, label %scalar.ph359.preheader, label %vector.scevcheck331

vector.scevcheck331:                              ; preds = %.lr.ph.i.i30.i
  %i.fn = add nsw i64 %i.fm, -1                   ; 2 uses
  %i.fo = trunc nsw i64 %i.fn to i32
  %i.fp = xor i32 %i.r, -1
  %i.fq = icmp ult i32 %i.fp, %i.fo
  %i.fr = icmp ugt i64 %i.fn, 4294967295
  %i.fs = or i1 %i.fq, %i.fr
  br i1 %i.fs, label %scalar.ph359.preheader, label %vector.memcheck361

vector.memcheck361:                               ; preds = %vector.scevcheck331
  %i.ft = zext i32 %i.r to i64                    ; 2 uses
  %i.fu = shl nuw nsw i64 %i.ft, 3                ; 2 uses
  %i.fv = getelementptr i8, ptr %i.p, i64 %i.fu   ; 3 uses
  %i.fw = shl nuw nsw i64 %i.fm, 3                ; 2 uses
  %i.fx = getelementptr i8, ptr %i.p, i64 %i.fw
  %i.fy = getelementptr i8, ptr %i.fx, i64 %i.fu  ; 3 uses
  %i.fz = shl nuw nsw i64 %i.ft, 2                ; 2 uses
  %i.ga = getelementptr i8, ptr %i.p, i64 %i.fz
  %i.gb = getelementptr i8, ptr %i.ga, i64 128    ; 3 uses
  %i.gc = shl nuw nsw i64 %i.fm, 2                ; 2 uses
  %i.gd = getelementptr i8, ptr %i.p, i64 %i.gc
  %i.ge = getelementptr i8, ptr %i.gd, i64 %i.fz
  %i.gf = getelementptr i8, ptr %i.ge, i64 128    ; 3 uses
  %i.gg = getelementptr i8, ptr %i.n, i64 %i.fw   ; 2 uses
  %i.gh = getelementptr i8, ptr %i.n, i64 %i.gc
  %i.gi = getelementptr i8, ptr %i.gh, i64 128    ; 2 uses
  %bound0362 = icmp ult ptr %i.fv, %i.gf
  %bound1363 = icmp ult ptr %i.gb, %i.fy
  %found.conflict364 = and i1 %bound0362, %bound1363
  %bound0365 = icmp ult ptr %i.fv, %i.gg
  %bound1366 = icmp ult ptr %i.n, %i.fy
  %found.conflict367 = and i1 %bound0365, %bound1366
  %conflict.rdx368 = or i1 %found.conflict364, %found.conflict367
  %bound0369 = icmp ult ptr %i.fv, %i.gi
  %bound1370 = icmp ult ptr %i.fk, %i.fy
  %found.conflict371 = and i1 %bound0369, %bound1370
  %conflict.rdx372 = or i1 %conflict.rdx368, %found.conflict371
  %bound0373 = icmp ult ptr %i.gb, %i.gg
  %bound1374 = icmp ult ptr %i.n, %i.gf
  %found.conflict375 = and i1 %bound0373, %bound1374
  %conflict.rdx376 = or i1 %conflict.rdx372, %found.conflict375
  %bound0377 = icmp ult ptr %i.gb, %i.gi
  %bound1378 = icmp ult ptr %i.fk, %i.gf
  %found.conflict379 = and i1 %bound0377, %bound1378
  %conflict.rdx380 = or i1 %conflict.rdx376, %found.conflict379
  br i1 %conflict.rdx380, label %scalar.ph359.preheader, label %vector.ph381

vector.ph381:                                     ; preds = %vector.memcheck361
  %n.vec382 = and i64 %i.fm, 2147483644           ; 4 uses
  %i.gj = trunc nuw nsw i64 %n.vec382 to i32
  %i.gk = add i32 %i.r, %i.gj
  br label %vector.body383

vector.body383:                                   ; preds = %vector.body383, %vector.ph381
  %index384 = phi i64 [ 0, %vector.ph381 ], [ %index.next389, %vector.body383 ] ; 4 uses
  %i.gl = trunc i64 %index384 to i32
  %i.gm = add i32 %i.r, %i.gl
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index384 ; 2 uses
  %i.go = zext i32 %i.gm to i64                   ; 2 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.go ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %wide.load385 = load <2 x i64>, ptr %i.gn, align 8, !tbaa !205, !alias.scope !2734
  %wide.load386 = load <2 x i64>, ptr %i.gq, align 8, !tbaa !205, !alias.scope !2734
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  store <2 x i64> %wide.load385, ptr %i.gp, align 8, !tbaa !205, !alias.scope !2735, !noalias !2736
  store <2 x i64> %wide.load386, ptr %i.gr, align 8, !tbaa !205, !alias.scope !2735, !noalias !2736
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %index384 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %wide.load387 = load <2 x i32>, ptr %i.gs, align 4, !tbaa !116, !alias.scope !2737
  %wide.load388 = load <2 x i32>, ptr %i.gt, align 4, !tbaa !116, !alias.scope !2737
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.go ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  store <2 x i32> %wide.load387, ptr %i.gu, align 4, !tbaa !116, !alias.scope !2738, !noalias !2739
  store <2 x i32> %wide.load388, ptr %i.gv, align 4, !tbaa !116, !alias.scope !2738, !noalias !2739
  %index.next389 = add nuw i64 %index384, 4       ; 2 uses
  %i.gw = icmp eq i64 %index.next389, %n.vec382
  br i1 %i.gw, label %middle.block390, label %vector.body383, !llvm.loop !2682

middle.block390:                                  ; preds = %vector.body383
  %cmp.n391 = icmp eq i64 %n.vec382, %i.fm
  br i1 %cmp.n391, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEjLj16EE4copyILj16EEEvRKNS1_IS2_jXT_EEEjjj.exit.i.i, label %scalar.ph359.preheader

scalar.ph359.preheader:                           ; preds = %vector.memcheck361, %vector.scevcheck331, %.lr.ph.i.i30.i, %middle.block390
  %indvars.iv.i31.i.ph = phi i64 [ 0, %vector.memcheck361 ], [ 0, %vector.scevcheck331 ], [ 0, %.lr.ph.i.i30.i ], [ %n.vec382, %middle.block390 ] ; 5 uses
  %.01214.i.i.i.ph = phi i32 [ %i.r, %vector.memcheck361 ], [ %i.r, %vector.scevcheck331 ], [ %i.r, %.lr.ph.i.i30.i ], [ %i.gk, %middle.block390 ] ; 3 uses
  %xtraiter = and i64 %i.fm, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph359.prol.loopexit, label %scalar.ph359.prol

scalar.ph359.prol:                                ; preds = %scalar.ph359.preheader
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i31.i.ph
  %i.gy = zext i32 %.01214.i.i.i.ph to i64        ; 2 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.gy
  %i.ha = load i64, ptr %i.gx, align 8, !tbaa !205
  store i64 %i.ha, ptr %i.gz, align 8, !tbaa !205
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %indvars.iv.i31.i.ph
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !116
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.gy
  store i32 %i.hc, ptr %i.hd, align 4, !tbaa !116
  %indvars.iv.next.i32.i.prol = or disjoint i64 %indvars.iv.i31.i.ph, 1
  %i.he = add i32 %.01214.i.i.i.ph, 1
  br label %scalar.ph359.prol.loopexit

scalar.ph359.prol.loopexit:                       ; preds = %scalar.ph359.prol, %scalar.ph359.preheader
  %indvars.iv.i31.i.unr = phi i64 [ %indvars.iv.i31.i.ph, %scalar.ph359.preheader ], [ %indvars.iv.next.i32.i.prol, %scalar.ph359.prol ]
  %.01214.i.i.i.unr = phi i32 [ %.01214.i.i.i.ph, %scalar.ph359.preheader ], [ %i.he, %scalar.ph359.prol ]
  %i.hf = add nsw i64 %i.fm, -1
  %i.hg = icmp eq i64 %indvars.iv.i31.i.ph, %i.hf
  br i1 %i.hg, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEjLj16EE4copyILj16EEEvRKNS1_IS2_jXT_EEEjjj.exit.i.i, label %scalar.ph359

scalar.ph359:                                     ; preds = %scalar.ph359.prol.loopexit, %scalar.ph359
  %indvars.iv.i31.i = phi i64 [ %indvars.iv.next.i32.i.1, %scalar.ph359 ], [ %indvars.iv.i31.i.unr, %scalar.ph359.prol.loopexit ] ; 4 uses
  %.01214.i.i.i = phi i32 [ %i.hw, %scalar.ph359 ], [ %.01214.i.i.i.unr, %scalar.ph359.prol.loopexit ] ; 3 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i31.i
  %i.hi = zext i32 %.01214.i.i.i to i64           ; 2 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.hi
  %i.hk = load i64, ptr %i.hh, align 8, !tbaa !205
  store i64 %i.hk, ptr %i.hj, align 8, !tbaa !205
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %indvars.iv.i31.i
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !116
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.hi
  store i32 %i.hm, ptr %i.hn, align 4, !tbaa !116
  %indvars.iv.next.i32.i = add nuw nsw i64 %indvars.iv.i31.i, 1 ; 2 uses
  %i.ho = add i32 %.01214.i.i.i, 1
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next.i32.i
  %i.hq = zext i32 %i.ho to i64                   ; 2 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.hq
  %i.hs = load i64, ptr %i.hp, align 8, !tbaa !205
  store i64 %i.hs, ptr %i.hr, align 8, !tbaa !205
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %indvars.iv.next.i32.i
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !116
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.hq
  store i32 %i.hu, ptr %i.hv, align 4, !tbaa !116
  %indvars.iv.next.i32.i.1 = add nuw nsw i64 %indvars.iv.i31.i, 2 ; 2 uses
  %i.hw = add i32 %.01214.i.i.i, 2
  %.not.i.i33.i.1 = icmp eq i64 %indvars.iv.next.i32.i.1, %i.fm
  br i1 %.not.i.i33.i.1, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEjLj16EE4copyILj16EEEvRKNS1_IS2_jXT_EEEjjj.exit.i.i, label %scalar.ph359, !llvm.loop !2683

_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEjLj16EE4copyILj16EEEvRKNS1_IS2_jXT_EEEjjj.exit.i.i: ; preds = %scalar.ph359.prol.loopexit, %scalar.ph359, %middle.block390, %.lr.ph.i.i24.i
  %.not13.i.i.i.i.i = icmp eq i32 %i.l, %.sroa.speculated.i
  br i1 %.not13.i.i.i.i.i, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEjLj16EE17transferToLeftSibEjRS3_jj.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEjLj16EE4copyILj16EEEvRKNS1_IS2_jXT_EEEjjj.exit.i.i
  %i.hx = getelementptr inbounds nuw i8, ptr %i.n, i64 128 ; 11 uses
  %i.hy = zext i32 %i.l to i64                    ; 6 uses
  %i.hz = tail call i32 @llvm.umin.i32(i32 %i.l, i32 %i.fh)
  %i.ia = tail call i32 @llvm.umin.i32(i32 %i.hz, i32 %i.fi)
  %umin122 = zext i32 %i.ia to i64                ; 7 uses
  %i.ib = sub nsw i64 %i.hy, %umin122             ; 3 uses
  %min.iters.check297 = icmp ult i64 %i.ib, 18
  br i1 %min.iters.check297, label %scalar.ph296.preheader, label %vector.memcheck298

vector.memcheck298:                               ; preds = %.lr.ph.i.i.i.i.i
  %i.ic = shl nuw nsw i64 %i.hy, 3                ; 2 uses
  %i.id = shl nuw nsw i64 %umin122, 3             ; 2 uses
  %i.ie = sub nsw i64 %i.ic, %i.id
  %i.if = getelementptr i8, ptr %i.n, i64 %i.ie   ; 3 uses
  %i.ig = shl nuw nsw i64 %i.hy, 2
  %i.ih = shl nuw nsw i64 %umin122, 2             ; 2 uses
  %i.ii = add nuw nsw i64 %i.ig, 128              ; 2 uses
  %i.ij = sub nsw i64 %i.ii, %i.ih
  %i.ik = getelementptr i8, ptr %i.n, i64 %i.ij   ; 3 uses
  %i.il = getelementptr i8, ptr %i.n, i64 %i.id   ; 2 uses
  %i.im = getelementptr i8, ptr %i.n, i64 %i.ic   ; 2 uses
  %i.in = getelementptr i8, ptr %i.n, i64 %i.ih
  %i.io = getelementptr i8, ptr %i.in, i64 128    ; 2 uses
  %i.ip = getelementptr i8, ptr %i.n, i64 %i.ii   ; 2 uses
  %bound0299 = icmp ult ptr %i.n, %i.ik
  %bound1300 = icmp ult ptr %i.hx, %i.if
  %found.conflict301 = and i1 %bound0299, %bound1300
  %bound0302 = icmp ult ptr %i.n, %i.im
  %bound1303 = icmp ult ptr %i.il, %i.if
  %found.conflict304 = and i1 %bound0302, %bound1303
  %conflict.rdx305 = or i1 %found.conflict301, %found.conflict304
  %bound0306 = icmp ult ptr %i.n, %i.ip
  %bound1307 = icmp ult ptr %i.io, %i.if
  %found.conflict308 = and i1 %bound0306, %bound1307
  %conflict.rdx309 = or i1 %conflict.rdx305, %found.conflict308
  %bound0310 = icmp ult ptr %i.hx, %i.im
  %bound1311 = icmp ult ptr %i.il, %i.ik
  %found.conflict312 = and i1 %bound0310, %bound1311
  %conflict.rdx313 = or i1 %conflict.rdx309, %found.conflict312
  %bound0314 = icmp ult ptr %i.hx, %i.ip
  %bound1315 = icmp ult ptr %i.io, %i.ik
  %found.conflict316 = and i1 %bound0314, %bound1315
  %conflict.rdx317 = or i1 %conflict.rdx313, %found.conflict316
  br i1 %conflict.rdx317, label %scalar.ph296.preheader, label %vector.ph318

vector.ph318:                                     ; preds = %vector.memcheck298
  %n.vec319 = and i64 %i.ib, -4                   ; 4 uses
  %i.iq = add nsw i64 %n.vec319, %umin122
  br label %vector.body320

vector.body320:                                   ; preds = %vector.body320, %vector.ph318
  %index321 = phi i64 [ 0, %vector.ph318 ], [ %index.next326, %vector.body320 ] ; 4 uses
  %i.ir = add nuw i64 %index321, %umin122         ; 2 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ir ; 2 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index321 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %wide.load322 = load <2 x i64>, ptr %i.is, align 8, !tbaa !205, !alias.scope !2740
  %wide.load323 = load <2 x i64>, ptr %i.iu, align 8, !tbaa !205, !alias.scope !2740
  %i.iv = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  store <2 x i64> %wide.load322, ptr %i.it, align 8, !tbaa !205, !alias.scope !2741, !noalias !2742
  store <2 x i64> %wide.load323, ptr %i.iv, align 8, !tbaa !205, !alias.scope !2741, !noalias !2742
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %i.ir ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %wide.load324 = load <2 x i32>, ptr %i.iw, align 4, !tbaa !116, !alias.scope !2743
  %wide.load325 = load <2 x i32>, ptr %i.ix, align 4, !tbaa !116, !alias.scope !2743
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %index321 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  store <2 x i32> %wide.load324, ptr %i.iy, align 4, !tbaa !116, !alias.scope !2744, !noalias !2745
  store <2 x i32> %wide.load325, ptr %i.iz, align 4, !tbaa !116, !alias.scope !2744, !noalias !2745
  %index.next326 = add nuw i64 %index321, 4       ; 2 uses
  %i.ja = icmp eq i64 %index.next326, %n.vec319
  br i1 %i.ja, label %middle.block327, label %vector.body320, !llvm.loop !2689

middle.block327:                                  ; preds = %vector.body320
  %cmp.n328 = icmp eq i64 %i.ib, %n.vec319
  br i1 %cmp.n328, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEjLj16EE17transferToLeftSibEjRS3_jj.exit.i, label %scalar.ph296.preheader

scalar.ph296.preheader:                           ; preds = %vector.memcheck298, %.lr.ph.i.i.i.i.i, %middle.block327
  %indvars.iv.ph = phi i64 [ %umin122, %vector.memcheck298 ], [ %umin122, %.lr.ph.i.i.i.i.i ], [ %i.iq, %middle.block327 ] ; 6 uses
  %indvars.iv6.i.i.ph = phi i64 [ 0, %vector.memcheck298 ], [ 0, %.lr.ph.i.i.i.i.i ], [ %n.vec319, %middle.block327 ] ; 4 uses
  %i.jb = sub nsw i64 %i.hy, %indvars.iv.ph
  %xtraiter657 = and i64 %i.jb, 1
  %lcmp.mod658.not = icmp eq i64 %xtraiter657, 0
  br i1 %lcmp.mod658.not, label %scalar.ph296.prol.loopexit, label %scalar.ph296.prol

scalar.ph296.prol:                                ; preds = %scalar.ph296.preheader
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.ph
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv6.i.i.ph
  %i.je = load i64, ptr %i.jc, align 8, !tbaa !205
  store i64 %i.je, ptr %i.jd, align 8, !tbaa !205
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv.ph
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !116
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv6.i.i.ph
  store i32 %i.jg, ptr %i.jh, align 4, !tbaa !116
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.ph, 1
  %indvars.iv.next7.i.i.prol = or disjoint i64 %indvars.iv6.i.i.ph, 1
  br label %scalar.ph296.prol.loopexit

scalar.ph296.prol.loopexit:                       ; preds = %scalar.ph296.prol, %scalar.ph296.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph296.preheader ], [ %indvars.iv.next.prol, %scalar.ph296.prol ]
end_hunk_1
begin_hunk_2_@_ZN4llvm15IntervalMapImpl18adjustSiblingSizesINS0_10BranchNodeIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEEEEEvPPT_jPjPKj:bb.a
  %.0159 = phi i32 [ %.0, %bb.c ], [ %.0157, %.preheader ] ; 2 uses
  %i.kj = phi i32 [ %i.uz, %bb.c ], [ %i.kd, %.preheader ] ; 16 uses
  %i.kk = phi i32 [ %i.va, %bb.c ], [ %i.kf, %.preheader ]
  %i.kl = zext i32 %.0159 to i64                  ; 2 uses
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.kl
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !528 ; 54 uses
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.kl ; 3 uses
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !116 ; 11 uses
  %i.kq = load ptr, ptr %i.kh, align 8, !tbaa !528 ; 18 uses
  %i.kr = sub i32 %i.kj, %i.kk                    ; 4 uses
  %i.ks = icmp sgt i32 %i.kr, 0
  br i1 %i.ks, label %.lr.ph.i.i.i96, label %.lr.ph.i.i24.i78

.lr.ph.i.i.i96:                                   ; preds = %.lr.ph160
  %i.kt = sub i32 16, %i.kp                       ; 2 uses
  %i.ku = tail call i32 @llvm.umin.i32(i32 %i.kj, i32 %i.kr)
  %.sroa.speculated46.i98 = tail call i32 @llvm.umin.i32(i32 %i.kt, i32 %i.ku) ; 12 uses
  %.not9.i.i.i99 = icmp eq i32 %i.kp, 0
  br i1 %.not9.i.i.i99, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEjLj16EE9moveRightEjjj.exit.i.i105, label %.lr.ph.i.i21.i100

.lr.ph.i.i21.i100:                                ; preds = %.lr.ph.i.i.i96
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kn, i64 128 ; 10 uses
  %i.kw = zext i32 %i.kp to i64                   ; 6 uses
  %min.iters.check491 = icmp ult i32 %i.kp, 20
  %i.kx = sub i32 0, %i.kp
  %i.ky = icmp ugt i32 %.sroa.speculated46.i98, %i.kx
  %or.cond654 = select i1 %min.iters.check491, i1 true, i1 %i.ky
  br i1 %or.cond654, label %scalar.ph490.preheader, label %vector.memcheck492

vector.memcheck492:                               ; preds = %.lr.ph.i.i21.i100
  %i.kz = add i32 %i.kp, %.sroa.speculated46.i98
  %i.la = add i32 %i.kz, -1
  %i.lb = zext i32 %i.la to i64                   ; 2 uses
  %i.lc = shl nuw nsw i64 %i.lb, 3                ; 2 uses
  %i.ld = add i32 %i.kp, -1
  %i.le = zext i32 %i.ld to i64                   ; 2 uses
  %i.lf = shl nuw nsw i64 %i.le, 3                ; 2 uses
  %i.lg = sub nsw i64 %i.lc, %i.lf
  %i.lh = getelementptr i8, ptr %i.kn, i64 %i.lg  ; 3 uses
  %i.li = getelementptr i8, ptr %i.kn, i64 %i.lc
  %i.lj = getelementptr i8, ptr %i.li, i64 8      ; 3 uses
  %i.lk = shl nuw nsw i64 %i.lb, 2                ; 2 uses
  %i.ll = shl nuw nsw i64 %i.le, 2                ; 2 uses
  %i.lm = add nuw nsw i64 %i.lk, 128
  %i.ln = sub nsw i64 %i.lm, %i.ll
  %i.lo = getelementptr i8, ptr %i.kn, i64 %i.ln  ; 3 uses
  %i.lp = getelementptr i8, ptr %i.kn, i64 %i.lk
  %i.lq = getelementptr i8, ptr %i.lp, i64 132    ; 3 uses
  %i.lr = getelementptr i8, ptr %i.kn, i64 %i.lf
  %i.ls = getelementptr i8, ptr %i.lr, i64 8      ; 2 uses
  %i.lt = getelementptr i8, ptr %i.kn, i64 %i.ll
  %i.lu = getelementptr i8, ptr %i.lt, i64 132    ; 2 uses
  %bound0493 = icmp ult ptr %i.lh, %i.lq
  %bound1494 = icmp ult ptr %i.lo, %i.lj
  %found.conflict495 = and i1 %bound0493, %bound1494
  %bound0496 = icmp ult ptr %i.lh, %i.ls
  %bound1497 = icmp ult ptr %i.kn, %i.lj
  %found.conflict498 = and i1 %bound0496, %bound1497
  %conflict.rdx499 = or i1 %found.conflict495, %found.conflict498
  %bound0500 = icmp ult ptr %i.lh, %i.lu
  %bound1501 = icmp ult ptr %i.kv, %i.lj
  %found.conflict502 = and i1 %bound0500, %bound1501
  %conflict.rdx503 = or i1 %conflict.rdx499, %found.conflict502
  %bound0504 = icmp ult ptr %i.lo, %i.ls
  %bound1505 = icmp ult ptr %i.kn, %i.lq
  %found.conflict506 = and i1 %bound0504, %bound1505
  %conflict.rdx507 = or i1 %conflict.rdx503, %found.conflict506
  %bound0508 = icmp ult ptr %i.lo, %i.lu
  %bound1509 = icmp ult ptr %i.kv, %i.lq
  %found.conflict510 = and i1 %bound0508, %bound1509
  %conflict.rdx511 = or i1 %conflict.rdx507, %found.conflict510
  br i1 %conflict.rdx511, label %scalar.ph490.preheader, label %vector.ph512

vector.ph512:                                     ; preds = %vector.memcheck492
  %n.vec513 = and i64 %i.kw, 4294967292           ; 2 uses
  %i.lv = and i64 %i.kw, 3
  br label %vector.body514

vector.body514:                                   ; preds = %vector.body514, %vector.ph512
  %index515 = phi i64 [ 0, %vector.ph512 ], [ %index.next520, %vector.body514 ] ; 2 uses
  %i.lw = xor i64 %index515, -1
  %i.lx = add i64 %i.lw, %i.kw                    ; 2 uses
  %i.ly = trunc i64 %i.lx to i32
  %i.lz = and i64 %i.lx, 4294967295               ; 2 uses
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %i.lz ; 2 uses
  %i.mb = add i32 %.sroa.speculated46.i98, %i.ly
  %i.mc = zext i32 %i.mb to i64                   ; 2 uses
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %i.mc ; 2 uses
  %i.me = getelementptr inbounds i8, ptr %i.ma, i64 -8
  %i.mf = getelementptr inbounds i8, ptr %i.ma, i64 -24
  %wide.load516 = load <2 x i64>, ptr %i.me, align 8, !tbaa !205, !alias.scope !2746
  %wide.load517 = load <2 x i64>, ptr %i.mf, align 8, !tbaa !205, !alias.scope !2746
  %i.mg = getelementptr inbounds i8, ptr %i.md, i64 -8
  %i.mh = getelementptr inbounds i8, ptr %i.md, i64 -24
  store <2 x i64> %wide.load516, ptr %i.mg, align 8, !tbaa !205, !alias.scope !2747, !noalias !2748
  store <2 x i64> %wide.load517, ptr %i.mh, align 8, !tbaa !205, !alias.scope !2747, !noalias !2748
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %i.lz ; 2 uses
  %i.mj = getelementptr inbounds i8, ptr %i.mi, i64 -4
  %i.mk = getelementptr inbounds i8, ptr %i.mi, i64 -12
  %wide.load518 = load <2 x i32>, ptr %i.mj, align 4, !tbaa !116, !alias.scope !2749
  %wide.load519 = load <2 x i32>, ptr %i.mk, align 4, !tbaa !116, !alias.scope !2749
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %i.mc ; 2 uses
  %i.mm = getelementptr inbounds i8, ptr %i.ml, i64 -4
  %i.mn = getelementptr inbounds i8, ptr %i.ml, i64 -12
  store <2 x i32> %wide.load518, ptr %i.mm, align 4, !tbaa !116, !alias.scope !2750, !noalias !2751
  store <2 x i32> %wide.load519, ptr %i.mn, align 4, !tbaa !116, !alias.scope !2750, !noalias !2751
  %index.next520 = add nuw i64 %index515, 4       ; 2 uses
  %i.mo = icmp eq i64 %index.next520, %n.vec513
  br i1 %i.mo, label %middle.block521, label %vector.body514, !llvm.loop !2698

middle.block521:                                  ; preds = %vector.body514
  %cmp.n522 = icmp eq i64 %n.vec513, %i.kw
  br i1 %cmp.n522, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEjLj16EE9moveRightEjjj.exit.i.i105, label %scalar.ph490.preheader

scalar.ph490.preheader:                           ; preds = %vector.memcheck492, %.lr.ph.i.i21.i100, %middle.block521
  %indvars.iv.i.i.i101.ph = phi i64 [ %i.kw, %vector.memcheck492 ], [ %i.kw, %.lr.ph.i.i21.i100 ], [ %i.lv, %middle.block521 ] ; 4 uses
  %i.mp = trunc nuw i64 %indvars.iv.i.i.i101.ph to i32
  %xtraiter667 = and i32 %i.mp, 1
  %lcmp.mod668.not = icmp eq i32 %xtraiter667, 0
  br i1 %lcmp.mod668.not, label %scalar.ph490.prol.loopexit, label %scalar.ph490.prol

scalar.ph490.prol:                                ; preds = %scalar.ph490.preheader
  %indvars.iv.next.i.i.i102.prol = add nsw i64 %indvars.iv.i.i.i101.ph, -1 ; 3 uses
  %indvars.i.i.i103.prol = trunc i64 %indvars.iv.next.i.i.i102.prol to i32
  %i.mq = and i64 %indvars.iv.next.i.i.i102.prol, 4294967295 ; 2 uses
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %i.mq
  %i.ms = add i32 %.sroa.speculated46.i98, %indvars.i.i.i103.prol
  %i.mt = zext i32 %i.ms to i64                   ; 2 uses
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %i.mt
  %i.mv = load i64, ptr %i.mr, align 8, !tbaa !205
  store i64 %i.mv, ptr %i.mu, align 8, !tbaa !205
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %i.mq
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !116
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %i.mt
  store i32 %i.mx, ptr %i.my, align 4, !tbaa !116
  br label %scalar.ph490.prol.loopexit

scalar.ph490.prol.loopexit:                       ; preds = %scalar.ph490.prol, %scalar.ph490.preheader
  %indvars.iv.i.i.i101.unr = phi i64 [ %indvars.iv.i.i.i101.ph, %scalar.ph490.preheader ], [ %indvars.iv.next.i.i.i102.prol, %scalar.ph490.prol ]
  %i.mz = icmp eq i64 %indvars.iv.i.i.i101.ph, 1
  br i1 %i.mz, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEjLj16EE9moveRightEjjj.exit.i.i105, label %scalar.ph490

scalar.ph490:                                     ; preds = %scalar.ph490.prol.loopexit, %scalar.ph490
  %indvars.iv.i.i.i101 = phi i64 [ %indvars.iv.next.i.i.i102.1, %scalar.ph490 ], [ %indvars.iv.i.i.i101.unr, %scalar.ph490.prol.loopexit ] ; 2 uses
  %indvars.iv.next.i.i.i102 = add nsw i64 %indvars.iv.i.i.i101, -1 ; 2 uses
  %indvars.i.i.i103 = trunc i64 %indvars.iv.next.i.i.i102 to i32
  %i.na = and i64 %indvars.iv.next.i.i.i102, 4294967295 ; 2 uses
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %i.na
  %i.nc = add i32 %.sroa.speculated46.i98, %indvars.i.i.i103
  %i.nd = zext i32 %i.nc to i64                   ; 2 uses
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %i.nd
  %i.nf = load i64, ptr %i.nb, align 8, !tbaa !205
  store i64 %i.nf, ptr %i.ne, align 8, !tbaa !205
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %i.na
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !116
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %i.nd
  store i32 %i.nh, ptr %i.ni, align 4, !tbaa !116
  %indvars.iv.next.i.i.i102.1 = add nsw i64 %indvars.iv.i.i.i101, -2 ; 3 uses
  %indvars.i.i.i103.1 = trunc i64 %indvars.iv.next.i.i.i102.1 to i32 ; 2 uses
  %i.nj = and i64 %indvars.iv.next.i.i.i102.1, 4294967295 ; 2 uses
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %i.nj
  %i.nl = add i32 %.sroa.speculated46.i98, %indvars.i.i.i103.1
  %i.nm = zext i32 %i.nl to i64                   ; 2 uses
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %i.nm
  %i.no = load i64, ptr %i.nk, align 8, !tbaa !205
  store i64 %i.no, ptr %i.nn, align 8, !tbaa !205
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %i.nj
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !116
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %i.nm
  store i32 %i.nq, ptr %i.nr, align 4, !tbaa !116
  %.not.i.i22.i104.1 = icmp eq i32 %indvars.i.i.i103.1, 0
  br i1 %.not.i.i22.i104.1, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEjLj16EE9moveRightEjjj.exit.i.i105, label %scalar.ph490, !llvm.loop !2699

_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEjLj16EE9moveRightEjjj.exit.i.i105: ; preds = %scalar.ph490.prol.loopexit, %scalar.ph490, %middle.block521, %.lr.ph.i.i.i96
  %.not13.i.i.i106 = icmp eq i32 %.sroa.speculated46.i98, 0
  br i1 %.not13.i.i.i106, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEjLj16EE17adjustFromLeftSibEjRS3_ji.exit112, label %.lr.ph.i7.i.i107

.lr.ph.i7.i.i107:                                 ; preds = %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEjLj16EE9moveRightEjjj.exit.i.i105
  %i.ns = sub i32 %i.kj, %.sroa.speculated46.i98  ; 6 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.kq, i64 128 ; 4 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.kn, i64 128 ; 7 uses
  %i.nv = tail call i32 @llvm.umin.i32(i32 %i.kj, i32 %i.kr)
  %i.nw = tail call i32 @llvm.umin.i32(i32 %i.nv, i32 %i.kt) ; 2 uses
  %i.nx = zext nneg i32 %i.nw to i64              ; 2 uses
  %min.iters.check426 = icmp ult i32 %i.nw, 24
  %i.ny = add i32 %i.kj, -1
  %i.nz = icmp ult i32 %i.ny, %i.ns
  %or.cond656 = select i1 %min.iters.check426, i1 true, i1 %i.nz
  br i1 %or.cond656, label %scalar.ph425.preheader, label %vector.memcheck427

vector.memcheck427:                               ; preds = %.lr.ph.i7.i.i107
  %i.oa = add nsw i32 %.sroa.speculated46.i98, -1
  %i.ob = zext i32 %i.oa to i64                   ; 2 uses
  %i.oc = shl nuw nsw i64 %i.ob, 3                ; 2 uses
  %i.od = getelementptr i8, ptr %i.kn, i64 %i.oc
  %i.oe = getelementptr i8, ptr %i.od, i64 8      ; 3 uses
  %i.of = shl nuw nsw i64 %i.ob, 2                ; 2 uses
  %i.og = getelementptr i8, ptr %i.kn, i64 %i.of
  %i.oh = getelementptr i8, ptr %i.og, i64 132    ; 3 uses
  %i.oi = zext i32 %i.ns to i64                   ; 2 uses
  %i.oj = shl nuw nsw i64 %i.oi, 3                ; 2 uses
  %i.ok = getelementptr i8, ptr %i.kq, i64 %i.oj  ; 2 uses
  %i.ol = getelementptr i8, ptr %i.kq, i64 %i.oj
  %i.om = getelementptr i8, ptr %i.ol, i64 %i.oc
  %i.on = getelementptr i8, ptr %i.om, i64 8      ; 2 uses
  %6 = shl nuw nsw i64 %i.oi, 2                   ; 2 uses
  %7 = getelementptr i8, ptr %i.kq, i64 %6
  %i.oo = getelementptr i8, ptr %7, i64 128       ; 2 uses
  %i.op = getelementptr i8, ptr %i.kq, i64 %6
  %i.oq = getelementptr i8, ptr %i.op, i64 %i.of
  %i.or = getelementptr i8, ptr %i.oq, i64 132    ; 2 uses
  %bound0428 = icmp ult ptr %i.kn, %i.oh
  %bound1429 = icmp ult ptr %i.nu, %i.oe
  %found.conflict430 = and i1 %bound0428, %bound1429
  %bound0431 = icmp ult ptr %i.kn, %i.on
  %bound1432 = icmp ult ptr %i.ok, %i.oe
  %found.conflict433 = and i1 %bound0431, %bound1432
  %conflict.rdx434 = or i1 %found.conflict430, %found.conflict433
  %bound0435 = icmp ult ptr %i.kn, %i.or
  %bound1436 = icmp ult ptr %i.oo, %i.oe
  %found.conflict437 = and i1 %bound0435, %bound1436
  %conflict.rdx438 = or i1 %conflict.rdx434, %found.conflict437
  %bound0439 = icmp ult ptr %i.nu, %i.on
  %bound1440 = icmp ult ptr %i.ok, %i.oh
  %found.conflict441 = and i1 %bound0439, %bound1440
  %conflict.rdx442 = or i1 %conflict.rdx438, %found.conflict441
  %bound0443 = icmp ult ptr %i.nu, %i.or
  %bound1444 = icmp ult ptr %i.oo, %i.oh
  %found.conflict445 = and i1 %bound0443, %bound1444
  %conflict.rdx446 = or i1 %conflict.rdx442, %found.conflict445
  br i1 %conflict.rdx446, label %scalar.ph425.preheader, label %vector.ph447

vector.ph447:                                     ; preds = %vector.memcheck427
  %n.vec448 = and i64 %i.nx, 2147483644           ; 4 uses
  %i.os = trunc nuw nsw i64 %n.vec448 to i32
  %i.ot = add i32 %i.ns, %i.os
  br label %vector.body449

vector.body449:                                   ; preds = %vector.body449, %vector.ph447
  %index450 = phi i64 [ 0, %vector.ph447 ], [ %index.next455, %vector.body449 ] ; 4 uses
  %i.ou = trunc i64 %index450 to i32
  %i.ov = add i32 %i.ns, %i.ou
  %i.ow = zext i32 %i.ov to i64                   ; 2 uses
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %i.ow ; 2 uses
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %index450 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ox, i64 16
  %wide.load451 = load <2 x i64>, ptr %i.ox, align 8, !tbaa !205, !alias.scope !2752
  %wide.load452 = load <2 x i64>, ptr %i.oz, align 8, !tbaa !205, !alias.scope !2752
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oy, i64 16
  store <2 x i64> %wide.load451, ptr %i.oy, align 8, !tbaa !205, !alias.scope !2753, !noalias !2754
  store <2 x i64> %wide.load452, ptr %i.pa, align 8, !tbaa !205, !alias.scope !2753, !noalias !2754
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.nt, i64 %i.ow ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  %wide.load453 = load <2 x i32>, ptr %i.pb, align 4, !tbaa !116, !alias.scope !2755
  %wide.load454 = load <2 x i32>, ptr %i.pc, align 4, !tbaa !116, !alias.scope !2755
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %index450 ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 8
  store <2 x i32> %wide.load453, ptr %i.pd, align 4, !tbaa !116, !alias.scope !2756, !noalias !2757
  store <2 x i32> %wide.load454, ptr %i.pe, align 4, !tbaa !116, !alias.scope !2756, !noalias !2757
  %index.next455 = add nuw i64 %index450, 4       ; 2 uses
  %i.pf = icmp eq i64 %index.next455, %n.vec448
  br i1 %i.pf, label %middle.block456, label %vector.body449, !llvm.loop !2705

middle.block456:                                  ; preds = %vector.body449
  %cmp.n457 = icmp eq i64 %n.vec448, %i.nx
  br i1 %cmp.n457, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEjLj16EE17adjustFromLeftSibEjRS3_ji.exit112, label %scalar.ph425.preheader

scalar.ph425.preheader:                           ; preds = %vector.memcheck427, %.lr.ph.i7.i.i107, %middle.block456
  %indvars.iv.i.i108.ph = phi i64 [ 0, %vector.memcheck427 ], [ 0, %.lr.ph.i7.i.i107 ], [ %n.vec448, %middle.block456 ] ; 4 uses
  %.015.i.i.i109.ph = phi i32 [ %i.ns, %vector.memcheck427 ], [ %i.ns, %.lr.ph.i7.i.i107 ], [ %i.ot, %middle.block456 ] ; 5 uses
  %i.pg = sub i32 %i.kj, %.015.i.i.i109.ph
  %.neg671 = add i32 %.015.i.i.i109.ph, 1
  %xtraiter669 = and i32 %i.pg, 1
  %lcmp.mod670.not = icmp eq i32 %xtraiter669, 0
  br i1 %lcmp.mod670.not, label %scalar.ph425.prol.loopexit, label %scalar.ph425.prol

scalar.ph425.prol:                                ; preds = %scalar.ph425.preheader
  %i.ph = zext i32 %.015.i.i.i109.ph to i64       ; 2 uses
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %i.ph
  %i.pj = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %indvars.iv.i.i108.ph
  %i.pk = load i64, ptr %i.pi, align 8, !tbaa !205
  store i64 %i.pk, ptr %i.pj, align 8, !tbaa !205
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.nt, i64 %i.ph
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !116
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %indvars.iv.i.i108.ph
  store i32 %i.pm, ptr %i.pn, align 4, !tbaa !116
  %i.po = add i32 %.015.i.i.i109.ph, 1
  %indvars.iv.next.i.i110.prol = or disjoint i64 %indvars.iv.i.i108.ph, 1
  br label %scalar.ph425.prol.loopexit

scalar.ph425.prol.loopexit:                       ; preds = %scalar.ph425.prol, %scalar.ph425.preheader
  %indvars.iv.i.i108.unr = phi i64 [ %indvars.iv.i.i108.ph, %scalar.ph425.preheader ], [ %indvars.iv.next.i.i110.prol, %scalar.ph425.prol ]
  %.015.i.i.i109.unr = phi i32 [ %.015.i.i.i109.ph, %scalar.ph425.preheader ], [ %i.po, %scalar.ph425.prol ]
  %i.pp = icmp eq i32 %i.kj, %.neg671
  br i1 %i.pp, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEjLj16EE17adjustFromLeftSibEjRS3_ji.exit112, label %scalar.ph425

scalar.ph425:                                     ; preds = %scalar.ph425.prol.loopexit, %scalar.ph425
  %indvars.iv.i.i108 = phi i64 [ %indvars.iv.next.i.i110.1, %scalar.ph425 ], [ %indvars.iv.i.i108.unr, %scalar.ph425.prol.loopexit ] ; 4 uses
  %.015.i.i.i109 = phi i32 [ %i.qf, %scalar.ph425 ], [ %.015.i.i.i109.unr, %scalar.ph425.prol.loopexit ] ; 3 uses
  %i.pq = zext i32 %.015.i.i.i109 to i64          ; 2 uses
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %i.pq
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %indvars.iv.i.i108
  %i.pt = load i64, ptr %i.pr, align 8, !tbaa !205
  store i64 %i.pt, ptr %i.ps, align 8, !tbaa !205
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.nt, i64 %i.pq
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !116
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %indvars.iv.i.i108
  store i32 %i.pv, ptr %i.pw, align 4, !tbaa !116
  %i.px = add i32 %.015.i.i.i109, 1
  %indvars.iv.next.i.i110 = add nuw nsw i64 %indvars.iv.i.i108, 1 ; 2 uses
  %i.py = zext i32 %i.px to i64                   ; 2 uses
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %i.py
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %indvars.iv.next.i.i110
  %i.qb = load i64, ptr %i.pz, align 8, !tbaa !205
  store i64 %i.qb, ptr %i.qa, align 8, !tbaa !205
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.nt, i64 %i.py
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !116
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %indvars.iv.next.i.i110
  store i32 %i.qd, ptr %i.qe, align 4, !tbaa !116
  %i.qf = add i32 %.015.i.i.i109, 2               ; 2 uses
  %indvars.iv.next.i.i110.1 = add nuw nsw i64 %indvars.iv.i.i108, 2
  %.not.i8.i.i111.1 = icmp eq i32 %i.qf, %i.kj
  br i1 %.not.i8.i.i111.1, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEjLj16EE17adjustFromLeftSibEjRS3_ji.exit112, label %scalar.ph425, !llvm.loop !2706

.lr.ph.i.i24.i78:                                 ; preds = %.lr.ph160
  %i.qg = sub nsw i32 0, %i.kr                    ; 2 uses
  %i.qh = sub i32 16, %i.kj                       ; 2 uses
  %i.qi = tail call i32 @llvm.umin.i32(i32 %i.kp, i32 %i.qg)
  %.sroa.speculated.i80 = tail call i32 @llvm.umin.i32(i32 %i.qh, i32 %i.qi) ; 5 uses
  %.not13.i.i29.i81 = icmp eq i32 %.sroa.speculated.i80, 0
  br i1 %.not13.i.i29.i81, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEjLj16EE4copyILj16EEEvRKNS1_IS2_jXT_EEEjjj.exit.i.i87, label %.lr.ph.i.i30.i82

.lr.ph.i.i30.i82:                                 ; preds = %.lr.ph.i.i24.i78
  %i.qj = getelementptr inbounds nuw i8, ptr %i.kn, i64 128 ; 6 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.kq, i64 128 ; 4 uses
  %i.ql = zext i32 %.sroa.speculated.i80 to i64   ; 8 uses
  %min.iters.check615 = icmp ult i32 %.sroa.speculated.i80, 26
  br i1 %min.iters.check615, label %scalar.ph614.preheader, label %vector.scevcheck586

vector.scevcheck586:                              ; preds = %.lr.ph.i.i30.i82
  %i.qm = add nsw i64 %i.ql, -1                   ; 2 uses
  %i.qn = trunc nsw i64 %i.qm to i32
  %i.qo = xor i32 %i.kj, -1
  %i.qp = icmp ult i32 %i.qo, %i.qn
  %i.qq = icmp ugt i64 %i.qm, 4294967295
  %i.qr = or i1 %i.qp, %i.qq
  br i1 %i.qr, label %scalar.ph614.preheader, label %vector.memcheck616

vector.memcheck616:                               ; preds = %vector.scevcheck586
  %i.qs = zext i32 %i.kj to i64                   ; 2 uses
  %i.qt = shl nuw nsw i64 %i.qs, 3                ; 2 uses
  %i.qu = getelementptr i8, ptr %i.kq, i64 %i.qt  ; 3 uses
  %i.qv = shl nuw nsw i64 %i.ql, 3                ; 2 uses
  %i.qw = getelementptr i8, ptr %i.kq, i64 %i.qv
  %i.qx = getelementptr i8, ptr %i.qw, i64 %i.qt  ; 3 uses
  %i.qy = shl nuw nsw i64 %i.qs, 2                ; 2 uses
  %i.qz = getelementptr i8, ptr %i.kq, i64 %i.qy
  %i.ra = getelementptr i8, ptr %i.qz, i64 128    ; 3 uses
  %i.rb = shl nuw nsw i64 %i.ql, 2                ; 2 uses
  %i.rc = getelementptr i8, ptr %i.kq, i64 %i.rb
  %i.rd = getelementptr i8, ptr %i.rc, i64 %i.qy
  %i.re = getelementptr i8, ptr %i.rd, i64 128    ; 3 uses
  %i.rf = getelementptr i8, ptr %i.kn, i64 %i.qv  ; 2 uses
  %i.rg = getelementptr i8, ptr %i.kn, i64 %i.rb
  %i.rh = getelementptr i8, ptr %i.rg, i64 128    ; 2 uses
  %bound0617 = icmp ult ptr %i.qu, %i.re
  %bound1618 = icmp ult ptr %i.ra, %i.qx
  %found.conflict619 = and i1 %bound0617, %bound1618
  %bound0620 = icmp ult ptr %i.qu, %i.rf
  %bound1621 = icmp ult ptr %i.kn, %i.qx
  %found.conflict622 = and i1 %bound0620, %bound1621
  %conflict.rdx623 = or i1 %found.conflict619, %found.conflict622
  %bound0624 = icmp ult ptr %i.qu, %i.rh
  %bound1625 = icmp ult ptr %i.qj, %i.qx
  %found.conflict626 = and i1 %bound0624, %bound1625
  %conflict.rdx627 = or i1 %conflict.rdx623, %found.conflict626
  %bound0628 = icmp ult ptr %i.ra, %i.rf
  %bound1629 = icmp ult ptr %i.kn, %i.re
  %found.conflict630 = and i1 %bound0628, %bound1629
  %conflict.rdx631 = or i1 %conflict.rdx627, %found.conflict630
  %bound0632 = icmp ult ptr %i.ra, %i.rh
  %bound1633 = icmp ult ptr %i.qj, %i.re
  %found.conflict634 = and i1 %bound0632, %bound1633
  %conflict.rdx635 = or i1 %conflict.rdx631, %found.conflict634
  br i1 %conflict.rdx635, label %scalar.ph614.preheader, label %vector.ph636

vector.ph636:                                     ; preds = %vector.memcheck616
  %n.vec637 = and i64 %i.ql, 2147483644           ; 4 uses
  %i.ri = trunc nuw nsw i64 %n.vec637 to i32
  %i.rj = add i32 %i.kj, %i.ri
  br label %vector.body638

vector.body638:                                   ; preds = %vector.body638, %vector.ph636
  %index639 = phi i64 [ 0, %vector.ph636 ], [ %index.next644, %vector.body638 ] ; 4 uses
  %i.rk = trunc i64 %index639 to i32
  %i.rl = add i32 %i.kj, %i.rk
  %i.rm = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %index639 ; 2 uses
  %i.rn = zext i32 %i.rl to i64                   ; 2 uses
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %i.rn ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rm, i64 16
  %wide.load640 = load <2 x i64>, ptr %i.rm, align 8, !tbaa !205, !alias.scope !2758
  %wide.load641 = load <2 x i64>, ptr %i.rp, align 8, !tbaa !205, !alias.scope !2758
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ro, i64 16
  store <2 x i64> %wide.load640, ptr %i.ro, align 8, !tbaa !205, !alias.scope !2759, !noalias !2760
  store <2 x i64> %wide.load641, ptr %i.rq, align 8, !tbaa !205, !alias.scope !2759, !noalias !2760
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.qj, i64 %index639 ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 8
  %wide.load642 = load <2 x i32>, ptr %i.rr, align 4, !tbaa !116, !alias.scope !2761
  %wide.load643 = load <2 x i32>, ptr %i.rs, align 4, !tbaa !116, !alias.scope !2761
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.qk, i64 %i.rn ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 8
  store <2 x i32> %wide.load642, ptr %i.rt, align 4, !tbaa !116, !alias.scope !2762, !noalias !2763
  store <2 x i32> %wide.load643, ptr %i.ru, align 4, !tbaa !116, !alias.scope !2762, !noalias !2763
  %index.next644 = add nuw i64 %index639, 4       ; 2 uses
  %i.rv = icmp eq i64 %index.next644, %n.vec637
  br i1 %i.rv, label %middle.block645, label %vector.body638, !llvm.loop !2712

middle.block645:                                  ; preds = %vector.body638
  %cmp.n646 = icmp eq i64 %n.vec637, %i.ql
  br i1 %cmp.n646, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEjLj16EE4copyILj16EEEvRKNS1_IS2_jXT_EEEjjj.exit.i.i87, label %scalar.ph614.preheader

scalar.ph614.preheader:                           ; preds = %vector.memcheck616, %vector.scevcheck586, %.lr.ph.i.i30.i82, %middle.block645
  %indvars.iv.i31.i83.ph = phi i64 [ 0, %vector.memcheck616 ], [ 0, %vector.scevcheck586 ], [ 0, %.lr.ph.i.i30.i82 ], [ %n.vec637, %middle.block645 ] ; 5 uses
  %.01214.i.i.i84.ph = phi i32 [ %i.kj, %vector.memcheck616 ], [ %i.kj, %vector.scevcheck586 ], [ %i.kj, %.lr.ph.i.i30.i82 ], [ %i.rj, %middle.block645 ] ; 3 uses
  %xtraiter663 = and i64 %i.ql, 1
  %lcmp.mod664.not = icmp eq i64 %xtraiter663, 0
  br i1 %lcmp.mod664.not, label %scalar.ph614.prol.loopexit, label %scalar.ph614.prol

scalar.ph614.prol:                                ; preds = %scalar.ph614.preheader
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %indvars.iv.i31.i83.ph
  %i.rx = zext i32 %.01214.i.i.i84.ph to i64      ; 2 uses
  %i.ry = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %i.rx
  %i.rz = load i64, ptr %i.rw, align 8, !tbaa !205
  store i64 %i.rz, ptr %i.ry, align 8, !tbaa !205
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %i.qj, i64 %indvars.iv.i31.i83.ph
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !116
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %i.qk, i64 %i.rx
  store i32 %i.sb, ptr %i.sc, align 4, !tbaa !116
  %indvars.iv.next.i32.i85.prol = or disjoint i64 %indvars.iv.i31.i83.ph, 1
  %i.sd = add i32 %.01214.i.i.i84.ph, 1
  br label %scalar.ph614.prol.loopexit

scalar.ph614.prol.loopexit:                       ; preds = %scalar.ph614.prol, %scalar.ph614.preheader
  %indvars.iv.i31.i83.unr = phi i64 [ %indvars.iv.i31.i83.ph, %scalar.ph614.preheader ], [ %indvars.iv.next.i32.i85.prol, %scalar.ph614.prol ]
  %.01214.i.i.i84.unr = phi i32 [ %.01214.i.i.i84.ph, %scalar.ph614.preheader ], [ %i.sd, %scalar.ph614.prol ]
  %i.se = add nsw i64 %i.ql, -1
  %i.sf = icmp eq i64 %indvars.iv.i31.i83.ph, %i.se
  br i1 %i.sf, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEjLj16EE4copyILj16EEEvRKNS1_IS2_jXT_EEEjjj.exit.i.i87, label %scalar.ph614

scalar.ph614:                                     ; preds = %scalar.ph614.prol.loopexit, %scalar.ph614
  %indvars.iv.i31.i83 = phi i64 [ %indvars.iv.next.i32.i85.1, %scalar.ph614 ], [ %indvars.iv.i31.i83.unr, %scalar.ph614.prol.loopexit ] ; 4 uses
  %.01214.i.i.i84 = phi i32 [ %i.sv, %scalar.ph614 ], [ %.01214.i.i.i84.unr, %scalar.ph614.prol.loopexit ] ; 3 uses
  %i.sg = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %indvars.iv.i31.i83
  %i.sh = zext i32 %.01214.i.i.i84 to i64         ; 2 uses
  %i.si = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %i.sh
  %i.sj = load i64, ptr %i.sg, align 8, !tbaa !205
  store i64 %i.sj, ptr %i.si, align 8, !tbaa !205
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.qj, i64 %indvars.iv.i31.i83
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !116
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %i.qk, i64 %i.sh
  store i32 %i.sl, ptr %i.sm, align 4, !tbaa !116
  %indvars.iv.next.i32.i85 = add nuw nsw i64 %indvars.iv.i31.i83, 1 ; 2 uses
  %i.sn = add i32 %.01214.i.i.i84, 1
  %i.so = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %indvars.iv.next.i32.i85
  %i.sp = zext i32 %i.sn to i64                   ; 2 uses
  %i.sq = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %i.sp
  %i.sr = load i64, ptr %i.so, align 8, !tbaa !205
  store i64 %i.sr, ptr %i.sq, align 8, !tbaa !205
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.qj, i64 %indvars.iv.next.i32.i85
  %i.st = load i32, ptr %i.ss, align 4, !tbaa !116
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.qk, i64 %i.sp
  store i32 %i.st, ptr %i.su, align 4, !tbaa !116
  %indvars.iv.next.i32.i85.1 = add nuw nsw i64 %indvars.iv.i31.i83, 2 ; 2 uses
  %i.sv = add i32 %.01214.i.i.i84, 2
  %.not.i.i33.i86.1 = icmp eq i64 %indvars.iv.next.i32.i85.1, %i.ql
  br i1 %.not.i.i33.i86.1, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEjLj16EE4copyILj16EEEvRKNS1_IS2_jXT_EEEjjj.exit.i.i87, label %scalar.ph614, !llvm.loop !2713

_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEjLj16EE4copyILj16EEEvRKNS1_IS2_jXT_EEEjjj.exit.i.i87: ; preds = %scalar.ph614.prol.loopexit, %scalar.ph614, %middle.block645, %.lr.ph.i.i24.i78
  %.not13.i.i.i.i.i88 = icmp eq i32 %i.kp, %.sroa.speculated.i80
  br i1 %.not13.i.i.i.i.i88, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEjLj16EE17transferToLeftSibEjRS3_jj.exit.i94, label %.lr.ph.i.i.i.i.i89

.lr.ph.i.i.i.i.i89:                               ; preds = %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEjLj16EE4copyILj16EEEvRKNS1_IS2_jXT_EEEjjj.exit.i.i87
  %i.sw = getelementptr inbounds nuw i8, ptr %i.kn, i64 128 ; 11 uses
  %i.sx = zext i32 %i.kp to i64                   ; 6 uses
  %i.sy = tail call i32 @llvm.umin.i32(i32 %i.kp, i32 %i.qg)
  %i.sz = tail call i32 @llvm.umin.i32(i32 %i.sy, i32 %i.qh)
  %umin130 = zext i32 %i.sz to i64                ; 7 uses
  %i.ta = sub nsw i64 %i.sx, %umin130             ; 3 uses
  %min.iters.check552 = icmp ult i64 %i.ta, 18
  br i1 %min.iters.check552, label %scalar.ph551.preheader, label %vector.memcheck553

vector.memcheck553:                               ; preds = %.lr.ph.i.i.i.i.i89
  %i.tb = shl nuw nsw i64 %i.sx, 3                ; 2 uses
  %i.tc = shl nuw nsw i64 %umin130, 3             ; 2 uses
  %i.td = sub nsw i64 %i.tb, %i.tc
  %i.te = getelementptr i8, ptr %i.kn, i64 %i.td  ; 3 uses
  %i.tf = shl nuw nsw i64 %i.sx, 2
  %i.tg = shl nuw nsw i64 %umin130, 2             ; 2 uses
  %i.th = add nuw nsw i64 %i.tf, 128              ; 2 uses
  %i.ti = sub nsw i64 %i.th, %i.tg
  %i.tj = getelementptr i8, ptr %i.kn, i64 %i.ti  ; 3 uses
  %i.tk = getelementptr i8, ptr %i.kn, i64 %i.tc  ; 2 uses
  %i.tl = getelementptr i8, ptr %i.kn, i64 %i.tb  ; 2 uses
  %i.tm = getelementptr i8, ptr %i.kn, i64 %i.tg
  %i.tn = getelementptr i8, ptr %i.tm, i64 128    ; 2 uses
  %i.to = getelementptr i8, ptr %i.kn, i64 %i.th  ; 2 uses
  %bound0554 = icmp ult ptr %i.kn, %i.tj
  %bound1555 = icmp ult ptr %i.sw, %i.te
  %found.conflict556 = and i1 %bound0554, %bound1555
  %bound0557 = icmp ult ptr %i.kn, %i.tl
  %bound1558 = icmp ult ptr %i.tk, %i.te
  %found.conflict559 = and i1 %bound0557, %bound1558
  %conflict.rdx560 = or i1 %found.conflict556, %found.conflict559
  %bound0561 = icmp ult ptr %i.kn, %i.to
  %bound1562 = icmp ult ptr %i.tn, %i.te
  %found.conflict563 = and i1 %bound0561, %bound1562
  %conflict.rdx564 = or i1 %conflict.rdx560, %found.conflict563
  %bound0565 = icmp ult ptr %i.sw, %i.tl
  %bound1566 = icmp ult ptr %i.tk, %i.tj
  %found.conflict567 = and i1 %bound0565, %bound1566
  %conflict.rdx568 = or i1 %conflict.rdx564, %found.conflict567
  %bound0569 = icmp ult ptr %i.sw, %i.to
  %bound1570 = icmp ult ptr %i.tn, %i.tj
  %found.conflict571 = and i1 %bound0569, %bound1570
  %conflict.rdx572 = or i1 %conflict.rdx568, %found.conflict571
  br i1 %conflict.rdx572, label %scalar.ph551.preheader, label %vector.ph573

vector.ph573:                                     ; preds = %vector.memcheck553
  %n.vec574 = and i64 %i.ta, -4                   ; 4 uses
  %i.tp = add nsw i64 %n.vec574, %umin130
  br label %vector.body575

vector.body575:                                   ; preds = %vector.body575, %vector.ph573
  %index576 = phi i64 [ 0, %vector.ph573 ], [ %index.next581, %vector.body575 ] ; 4 uses
  %i.tq = add nuw i64 %index576, %umin130         ; 2 uses
  %i.tr = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %i.tq ; 2 uses
  %i.ts = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %index576 ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tr, i64 16
  %wide.load577 = load <2 x i64>, ptr %i.tr, align 8, !tbaa !205, !alias.scope !2764
  %wide.load578 = load <2 x i64>, ptr %i.tt, align 8, !tbaa !205, !alias.scope !2764
  %i.tu = getelementptr inbounds nuw i8, ptr %i.ts, i64 16
  store <2 x i64> %wide.load577, ptr %i.ts, align 8, !tbaa !205, !alias.scope !2765, !noalias !2766
  store <2 x i64> %wide.load578, ptr %i.tu, align 8, !tbaa !205, !alias.scope !2765, !noalias !2766
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %i.sw, i64 %i.tq ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 8
  %wide.load579 = load <2 x i32>, ptr %i.tv, align 4, !tbaa !116, !alias.scope !2767
  %wide.load580 = load <2 x i32>, ptr %i.tw, align 4, !tbaa !116, !alias.scope !2767
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %i.sw, i64 %index576 ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 8
  store <2 x i32> %wide.load579, ptr %i.tx, align 4, !tbaa !116, !alias.scope !2768, !noalias !2769
  store <2 x i32> %wide.load580, ptr %i.ty, align 4, !tbaa !116, !alias.scope !2768, !noalias !2769
  %index.next581 = add nuw i64 %index576, 4       ; 2 uses
  %i.tz = icmp eq i64 %index.next581, %n.vec574
  br i1 %i.tz, label %middle.block582, label %vector.body575, !llvm.loop !2719

middle.block582:                                  ; preds = %vector.body575
  %cmp.n583 = icmp eq i64 %i.ta, %n.vec574
  br i1 %cmp.n583, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEjLj16EE17transferToLeftSibEjRS3_jj.exit.i94, label %scalar.ph551.preheader

scalar.ph551.preheader:                           ; preds = %vector.memcheck553, %.lr.ph.i.i.i.i.i89, %middle.block582
  %indvars.iv131.ph = phi i64 [ %umin130, %vector.memcheck553 ], [ %umin130, %.lr.ph.i.i.i.i.i89 ], [ %i.tp, %middle.block582 ] ; 6 uses
  %indvars.iv6.i.i90.ph = phi i64 [ 0, %vector.memcheck553 ], [ 0, %.lr.ph.i.i.i.i.i89 ], [ %n.vec574, %middle.block582 ] ; 4 uses
  %i.ua = sub nsw i64 %i.sx, %indvars.iv131.ph
  %xtraiter665 = and i64 %i.ua, 1
  %lcmp.mod666.not = icmp eq i64 %xtraiter665, 0
  br i1 %lcmp.mod666.not, label %scalar.ph551.prol.loopexit, label %scalar.ph551.prol

scalar.ph551.prol:                                ; preds = %scalar.ph551.preheader
  %i.ub = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %indvars.iv131.ph
  %i.uc = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %indvars.iv6.i.i90.ph
  %i.ud = load i64, ptr %i.ub, align 8, !tbaa !205
  store i64 %i.ud, ptr %i.uc, align 8, !tbaa !205
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.sw, i64 %indvars.iv131.ph
  %i.uf = load i32, ptr %i.ue, align 4, !tbaa !116
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %i.sw, i64 %indvars.iv6.i.i90.ph
  store i32 %i.uf, ptr %i.ug, align 4, !tbaa !116
  %indvars.iv.next132.prol = add nuw nsw i64 %indvars.iv131.ph, 1
  %indvars.iv.next7.i.i92.prol = or disjoint i64 %indvars.iv6.i.i90.ph, 1
  br label %scalar.ph551.prol.loopexit

scalar.ph551.prol.loopexit:                       ; preds = %scalar.ph551.prol, %scalar.ph551.preheader
  %indvars.iv131.unr = phi i64 [ %indvars.iv131.ph, %scalar.ph551.preheader ], [ %indvars.iv.next132.prol, %scalar.ph551.prol ]
end_hunk_2
begin_hunk_3_@llvm.umin.i32
!2451 = distinct !{!2451, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPKNS_11InstructionEPKNS_9DbgRecordEEEEjNS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_jEEEES9_jSB_SE_E6getRepEv"}
!2452 = distinct !{!2452, !2451, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPKNS_11InstructionEPKNS_9DbgRecordEEEEjNS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_jEEEES9_jSB_SE_E6getRepEv: argument 0"}
!2453 = distinct !{!2453, i1 true, !"_ZNK4llvm8DenseMapINS_12PointerUnionIJPKNS_11InstructionEPKNS_9DbgRecordEEEEjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEE6getRepEv"}
!2454 = distinct !{!2454, !2453, !"_ZNK4llvm8DenseMapINS_12PointerUnionIJPKNS_11InstructionEPKNS_9DbgRecordEEEEjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEE6getRepEv: argument 0"}
!2455 = !{!2454, !2452}
!2456 = distinct !{!2456, !109}
!2457 = distinct !{!2457, !109}
!2458 = distinct !{!2458, !109}
!2459 = distinct !{!2459, !109}
!2460 = distinct !{!2460, i1 true, !"_ZNK4llvm9BitVector8set_bitsEv"}
!2461 = distinct !{!2461, !2460, !"_ZNK4llvm9BitVector8set_bitsEv: argument 0"}
!2462 = distinct !{!2462, !109}
!2463 = !{!2461}
!2464 = distinct !{!2464, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIjNS_11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E5beginEv"}
!2465 = distinct !{!2465, !2464, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIjNS_11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E5beginEv: argument 0"}
!2466 = distinct !{!2466, i1 true, !"_ZN4llvm16DenseMapIteratorIjNS_11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EELb1EE9makeBeginEPKS9_PKjjbRKNS_14DebugEpochBaseE"}
!2467 = distinct !{!2467, !2466, !"_ZN4llvm16DenseMapIteratorIjNS_11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EELb1EE9makeBeginEPKS9_PKjjbRKNS_14DebugEpochBaseE: argument 0"}
!2468 = distinct !{!2468, !109}
!2469 = distinct !{!2469, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIjNS_11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E4findERKj"}
!2470 = distinct !{!2470, !2469, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIjNS_11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E4findERKj: argument 0"}
!2471 = distinct !{!2471, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIjNS_11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E7find_asIjEENS_16DenseMapIteratorIjS5_S7_SA_Lb1EEERKT_"}
!2472 = distinct !{!2472, !2471, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIjNS_11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E7find_asIjEENS_16DenseMapIteratorIjS5_S7_SA_Lb1EEERKT_: argument 0"}
!2473 = distinct !{!2473, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIjNS_11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E6getRepEv"}
!2474 = distinct !{!2474, !2473, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIjNS_11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E6getRepEv: argument 0"}
!2475 = distinct !{!2475, i1 true, !"_ZNK4llvm8DenseMapIjNS_11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEE6getRepEv"}
!2476 = distinct !{!2476, !2475, !"_ZNK4llvm8DenseMapIjNS_11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEE6getRepEv: argument 0"}
!2477 = distinct !{!2477, i1 true, !"_ZNK4llvm11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEE5beginEv"}
!2478 = distinct !{!2478, !2477, !"_ZNK4llvm11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEE5beginEv: argument 0"}
!2479 = distinct !{!2479, i1 true, !"_ZNK4llvm11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEE3endEv"}
!2480 = distinct !{!2480, !2479, !"_ZNK4llvm11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEE3endEv: argument 0"}
!2481 = distinct !{!2481, i1 true, !"_ZNK4llvm11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEE5beginEv"}
!2482 = distinct !{!2482, !2481, !"_ZNK4llvm11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEE5beginEv: argument 0"}
!2483 = distinct !{!2483, i1 true, !"_ZNK4llvm11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEE3endEv"}
!2484 = distinct !{!2484, !2483, !"_ZNK4llvm11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEE3endEv: argument 0"}
!2485 = distinct !{!2485, !109}
!2486 = !{!2465}
!2487 = !{!2467, !2465}
!2488 = !{!2476, !2474, !2472, !2470}
!2489 = !{!2472, !2470}
!2490 = !{!2478}
!2491 = !{!2480}
!2492 = !{!2482}
!2493 = !{!2484}
!2494 = distinct !{!2494, !109}
!2495 = distinct !{!2495, !109}
!2496 = distinct !{!2496, !109}
!2497 = distinct !{!2497, !109}
!2498 = distinct !{!2498, !109}
!2499 = distinct !{!2499, !109}
!2500 = distinct !{!2500, !109}
!2501 = distinct !{!2501, !109}
!2502 = distinct !{!2502, !109}
!2503 = distinct !{!2503, !109}
!2504 = distinct !{!2504, !109}
!2505 = distinct !{!2505, !109}
!2506 = distinct !{!2506, !109}
!2507 = distinct !{!2507, i1 true, !"_ZNK4llvm11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEE5beginEv"}
!2508 = distinct !{!2508, !2507, !"_ZNK4llvm11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEE5beginEv: argument 0"}
!2509 = distinct !{!2509, i1 true, !"_ZNK4llvm11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEE3endEv"}
!2510 = distinct !{!2510, !2509, !"_ZNK4llvm11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEE3endEv: argument 0"}
!2511 = distinct !{!2511, !109}
!2512 = !{!2508}
!2513 = !{!2510}
!2514 = distinct !{!2514, i1 true, !"_ZN4llvm11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEE4findEj"}
!2515 = distinct !{!2515, !2514, !"_ZN4llvm11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEE4findEj: argument 0"}
!2516 = distinct !{!2516, i1 true, !"_ZN4llvm11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEE4findEj"}
!2517 = distinct !{!2517, !2516, !"_ZN4llvm11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEE4findEj: argument 0:thread"}
!2518 = !{!2515}
!2519 = !{!2517}
!2520 = distinct !{!2520, i1 false, !"LVerDomain"}
!2521 = distinct !{!2521, !2520}
!2522 = distinct !{!2522, !2520}
!2523 = distinct !{!2523, !2520}
!2524 = distinct !{!2524, !2520}
!2525 = distinct !{!2525, !109, !474, !475}
!2526 = distinct !{!2526, !109, !474}
!2527 = distinct !{!2527, i1 false, !"LVerDomain"}
!2528 = distinct !{!2528, !2527}
!2529 = distinct !{!2529, !2527}
!2530 = distinct !{!2530, !2527}
!2531 = distinct !{!2531, !2527}
!2532 = distinct !{!2532, !109, !474, !475}
!2533 = distinct !{!2533, !109, !474}
!2534 = !{!2521}
!2535 = !{!2522}
!2536 = !{!2524, !2523, !2521}
!2537 = !{!2528}
!2538 = !{!2529}
!2539 = !{!2531, !2530, !2528}
!2540 = distinct !{!2540, !109}
!2541 = distinct !{!2541, i1 false, !"LVerDomain"}
!2542 = distinct !{!2542, !2541}
!2543 = distinct !{!2543, !2541}
!2544 = distinct !{!2544, !2541}
!2545 = distinct !{!2545, !2541}
!2546 = distinct !{!2546, !109, !474, !475}
!2547 = distinct !{!2547, !109, !474}
!2548 = !{!2542}
!2549 = !{!2543}
!2550 = !{!2545, !2544, !2542}
!2551 = distinct !{!2551, !109}
!2552 = distinct !{!2552, i1 false, !"LVerDomain"}
!2553 = distinct !{!2553, !2552}
!2554 = distinct !{!2554, !2552}
!2555 = distinct !{!2555, !2552}
!2556 = distinct !{!2556, !2552}
!2557 = distinct !{!2557, !109, !474, !475}
!2558 = distinct !{!2558, !109, !474}
!2559 = distinct !{!2559, i1 false, !"LVerDomain"}
!2560 = distinct !{!2560, !2559}
!2561 = distinct !{!2561, !2559}
!2562 = distinct !{!2562, !2559}
!2563 = distinct !{!2563, !2559}
!2564 = distinct !{!2564, !109, !474, !475}
!2565 = distinct !{!2565, !109, !474}
!2566 = !{!2553}
!2567 = !{!2554}
!2568 = !{!2556, !2553, !2555}
!2569 = !{!2555}
!2570 = !{!2556}
!2571 = !{!2553, !2555}
!2572 = !{!2560}
!2573 = !{!2561}
!2574 = !{!2563, !2560, !2562}
!2575 = !{!2562}
!2576 = !{!2563}
!2577 = !{!2560, !2562}
!2578 = distinct !{!2578, !109}
!2579 = distinct !{!2579, i1 false, !"LVerDomain"}
!2580 = distinct !{!2580, !2579}
!2581 = distinct !{!2581, !2579}
!2582 = distinct !{!2582, !2579}
!2583 = distinct !{!2583, !2579}
!2584 = distinct !{!2584, !109, !474, !475}
!2585 = distinct !{!2585, !109, !474}
!2586 = distinct !{!2586, i1 false, !"LVerDomain"}
!2587 = distinct !{!2587, !2586}
!2588 = distinct !{!2588, !2586}
!2589 = distinct !{!2589, !2586}
!2590 = distinct !{!2590, !2586}
!2591 = distinct !{!2591, !109, !474, !475}
!2592 = distinct !{!2592, !109, !474}
!2593 = distinct !{!2593, !109}
!2594 = distinct !{!2594, !109}
!2595 = distinct !{!2595, i1 false, !"LVerDomain"}
!2596 = distinct !{!2596, !2595}
!2597 = distinct !{!2597, !2595}
!2598 = distinct !{!2598, !2595}
!2599 = distinct !{!2599, !2595}
!2600 = distinct !{!2600, !109, !474, !475}
!2601 = distinct !{!2601, !109, !474}
!2602 = distinct !{!2602, i1 false, !"LVerDomain"}
!2603 = distinct !{!2603, !2602}
!2604 = distinct !{!2604, !2602}
!2605 = distinct !{!2605, !2602}
!2606 = distinct !{!2606, !2602}
!2607 = distinct !{!2607, !109, !474, !475}
!2608 = distinct !{!2608, !109, !474}
!2609 = distinct !{!2609, !109}
!2610 = !{!2580}
!2611 = !{!2581}
!2612 = !{!2583, !2582, !2580}
!2613 = !{!2587}
!2614 = !{!2588}
!2615 = !{!2590, !2589, !2587}
!2616 = !{!2596}
!2617 = !{!2597}
!2618 = !{!2599, !2598, !2596}
!2619 = !{!2603}
!2620 = !{!2604}
!2621 = !{!2606, !2605, !2603}
!2622 = distinct !{!2622, i1 false, !"LVerDomain"}
!2623 = distinct !{!2623, !2622}
!2624 = distinct !{!2624, !2622}
!2625 = distinct !{!2625, !2622}
!2626 = distinct !{!2626, !2622}
!2627 = distinct !{!2627, !109, !474, !475}
!2628 = distinct !{!2628, !109, !474}
!2629 = distinct !{!2629, i1 false, !"LVerDomain"}
!2630 = distinct !{!2630, !2629}
!2631 = distinct !{!2631, !2629}
!2632 = distinct !{!2632, !2629}
!2633 = distinct !{!2633, !2629}
!2634 = distinct !{!2634, !109, !474, !475}
!2635 = distinct !{!2635, !109, !474}
!2636 = distinct !{!2636, i1 false, !"LVerDomain"}
!2637 = distinct !{!2637, !2636}
!2638 = distinct !{!2638, !2636}
!2639 = distinct !{!2639, !2636}
!2640 = distinct !{!2640, !2636}
!2641 = distinct !{!2641, !109, !474, !475}
!2642 = distinct !{!2642, !109, !474}
!2643 = !{!2623}
!2644 = !{!2624}
!2645 = !{!2626, !2623, !2625}
!2646 = !{!2625}
!2647 = !{!2626}
!2648 = !{!2623, !2625}
!2649 = !{!2630}
!2650 = !{!2631}
!2651 = !{!2633, !2630, !2632}
!2652 = !{!2632}
!2653 = !{!2633}
!2654 = !{!2630, !2632}
!2655 = !{!2637}
!2656 = !{!2638}
!2657 = !{!2640, !2637, !2639}
!2658 = !{!2639}
!2659 = !{!2640}
!2660 = !{!2637, !2639}
!2661 = distinct !{!2661, !109}
!2662 = distinct !{!2662, !109}
!2663 = distinct !{!2663, i1 false, !"LVerDomain"}
!2664 = distinct !{!2664, !2663}
!2665 = distinct !{!2665, !2663}
!2666 = distinct !{!2666, !2663}
!2667 = distinct !{!2667, !2663}
!2668 = distinct !{!2668, !109, !474, !475}
!2669 = distinct !{!2669, !109, !474}
!2670 = distinct !{!2670, i1 false, !"LVerDomain"}
!2671 = distinct !{!2671, !2670}
!2672 = distinct !{!2672, !2670}
!2673 = distinct !{!2673, !2670}
!2674 = distinct !{!2674, !2670}
!2675 = distinct !{!2675, !109, !474, !475}
!2676 = distinct !{!2676, !109, !474}
!2677 = distinct !{!2677, i1 false, !"LVerDomain"}
!2678 = distinct !{!2678, !2677}
!2679 = distinct !{!2679, !2677}
!2680 = distinct !{!2680, !2677}
!2681 = distinct !{!2681, !2677}
!2682 = distinct !{!2682, !109, !474, !475}
!2683 = distinct !{!2683, !109, !474}
!2684 = distinct !{!2684, i1 false, !"LVerDomain"}
!2685 = distinct !{!2685, !2684}
!2686 = distinct !{!2686, !2684}
!2687 = distinct !{!2687, !2684}
!2688 = distinct !{!2688, !2684}
!2689 = distinct !{!2689, !109, !474, !475}
!2690 = distinct !{!2690, !109, !474}
!2691 = distinct !{!2691, !109}
!2692 = distinct !{!2692, !109}
!2693 = distinct !{!2693, i1 false, !"LVerDomain"}
!2694 = distinct !{!2694, !2693}
!2695 = distinct !{!2695, !2693}
!2696 = distinct !{!2696, !2693}
!2697 = distinct !{!2697, !2693}
!2698 = distinct !{!2698, !109, !474, !475}
!2699 = distinct !{!2699, !109, !474}
!2700 = distinct !{!2700, i1 false, !"LVerDomain"}
!2701 = distinct !{!2701, !2700}
!2702 = distinct !{!2702, !2700}
!2703 = distinct !{!2703, !2700}
!2704 = distinct !{!2704, !2700}
!2705 = distinct !{!2705, !109, !474, !475}
!2706 = distinct !{!2706, !109, !474}
!2707 = distinct !{!2707, i1 false, !"LVerDomain"}
!2708 = distinct !{!2708, !2707}
!2709 = distinct !{!2709, !2707}
!2710 = distinct !{!2710, !2707}
!2711 = distinct !{!2711, !2707}
!2712 = distinct !{!2712, !109, !474, !475}
!2713 = distinct !{!2713, !109, !474}
!2714 = distinct !{!2714, i1 false, !"LVerDomain"}
!2715 = distinct !{!2715, !2714}
!2716 = distinct !{!2716, !2714}
!2717 = distinct !{!2717, !2714}
!2718 = distinct !{!2718, !2714}
!2719 = distinct !{!2719, !109, !474, !475}
!2720 = distinct !{!2720, !109, !474}
!2721 = distinct !{!2721, !109}
!2722 = !{!2664}
!2723 = !{!2665}
!2724 = !{!2667, !2664, !2666}
!2725 = !{!2666}
!2726 = !{!2667}
!2727 = !{!2664, !2666}
!2728 = !{!2671}
!2729 = !{!2672}
!2730 = !{!2674, !2671, !2673}
!2731 = !{!2673}
!2732 = !{!2674}
!2733 = !{!2671, !2673}
!2734 = !{!2678}
!2735 = !{!2679}
!2736 = !{!2681, !2678, !2680}
!2737 = !{!2680}
!2738 = !{!2681}
!2739 = !{!2678, !2680}
!2740 = !{!2685}
!2741 = !{!2686}
!2742 = !{!2688, !2685, !2687}
!2743 = !{!2687}
!2744 = !{!2688}
!2745 = !{!2685, !2687}
!2746 = !{!2694}
!2747 = !{!2695}
!2748 = !{!2697, !2694, !2696}
!2749 = !{!2696}
!2750 = !{!2697}
!2751 = !{!2694, !2696}
!2752 = !{!2701}
!2753 = !{!2702}
!2754 = !{!2704, !2701, !2703}
!2755 = !{!2703}
!2756 = !{!2704}
!2757 = !{!2701, !2703}
!2758 = !{!2708}
!2759 = !{!2709}
!2760 = !{!2711, !2708, !2710}
!2761 = !{!2710}
!2762 = !{!2711}
!2763 = !{!2708, !2710}
!2764 = !{!2715}
!2765 = !{!2716}
!2766 = !{!2718, !2715, !2717}
!2767 = !{!2717}
!2768 = !{!2718}
!2769 = !{!2715, !2717}
!2770 = distinct !{!2770, !109}
!2771 = distinct !{!2771, !109}
!2772 = distinct !{!2772, !109}
!2773 = distinct !{!2773, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_9MapVectorINS_12PointerUnionIJPKNS_11InstructionEPKNS_9DbgRecordEEEENS_11SmallVectorIN12_GLOBAL__N_118MemLocFragmentFill10FragMemLocELj2EEENS1_ISD_jNS_12DenseMapInfoISD_vEENS_6detail12DenseMapPairISD_jEEEENSE_ISt4pairISD_SI_ELj0EEELj0EEENSJ_IS4_vEENSM_IS4_SS_EEEES4_SS_ST_SU_E6getRepEv"}
!2774 = distinct !{!2774, !2773, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_9MapVectorINS_12PointerUnionIJPKNS_11InstructionEPKNS_9DbgRecordEEEENS_11SmallVectorIN12_GLOBAL__N_118MemLocFragmentFill10FragMemLocELj2EEENS1_ISD_jNS_12DenseMapInfoISD_vEENS_6detail12DenseMapPairISD_jEEEENSE_ISt4pairISD_SI_ELj0EEELj0EEENSJ_IS4_vEENSM_IS4_SS_EEEES4_SS_ST_SU_E6getRepEv: argument 0"}
!2775 = distinct !{!2775, i1 true, !"_ZNK4llvm8DenseMapIPKNS_10BasicBlockENS_9MapVectorINS_12PointerUnionIJPKNS_11InstructionEPKNS_9DbgRecordEEEENS_11SmallVectorIN12_GLOBAL__N_118MemLocFragmentFill10FragMemLocELj2EEENS0_ISC_jNS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_jEEEENSD_ISt4pairISC_SH_ELj0EEELj0EEENSI_IS3_vEENSL_IS3_SR_EEE6getRepEv"}
!2776 = distinct !{!2776, !2775, !"_ZNK4llvm8DenseMapIPKNS_10BasicBlockENS_9MapVectorINS_12PointerUnionIJPKNS_11InstructionEPKNS_9DbgRecordEEEENS_11SmallVectorIN12_GLOBAL__N_118MemLocFragmentFill10FragMemLocELj2EEENS0_ISC_jNS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_jEEEENSD_ISt4pairISC_SH_ELj0EEELj0EEENSI_IS3_vEENSL_IS3_SR_EEE6getRepEv: argument 0"}
!2777 = !{!2776, !2774}
!2778 = distinct !{!2778, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_15DILocalVariableEPKNS_10DILocationEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E6getRepEv"}
!2779 = distinct !{!2779, !2778, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_15DILocalVariableEPKNS_10DILocationEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E6getRepEv: argument 0"}
!2780 = distinct !{!2780, i1 true, !"_ZNK4llvm8DenseMapISt4pairIPKNS_15DILocalVariableEPKNS_10DILocationEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEE6getRepEv"}
!2781 = distinct !{!2781, !2780, !"_ZNK4llvm8DenseMapISt4pairIPKNS_15DILocalVariableEPKNS_10DILocationEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS8_vEENS9_12DenseSetPairIS8_EEE6getRepEv: argument 0"}
!2782 = distinct !{!2782, i1 true, !"_ZNK4llvm12DIExpression15getFragmentInfoEv"}
!2783 = distinct !{!2783, !2782, !"_ZNK4llvm12DIExpression15getFragmentInfoEv: argument 0"}
!2784 = distinct !{!2784, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E4findERKj"}
!2785 = distinct !{!2785, !2784, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E4findERKj: argument 0"}
!2786 = distinct !{!2786, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E7find_asIjEENS_16DenseMapIteratorIjS5_S7_SA_Lb0EEERKT_"}
!2787 = distinct !{!2787, !2786, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E7find_asIjEENS_16DenseMapIteratorIjS5_S7_SA_Lb0EEERKT_: argument 0"}
!2788 = distinct !{!2788, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIjNS_11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E6getRepEv"}
!2789 = distinct !{!2789, !2788, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIjNS_11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E6getRepEv: argument 0"}
!2790 = distinct !{!2790, i1 true, !"_ZNK4llvm8DenseMapIjNS_11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEE6getRepEv"}
!2791 = distinct !{!2791, !2790, !"_ZNK4llvm8DenseMapIjNS_11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEE6getRepEv: argument 0"}
!2792 = distinct !{!2792, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E11try_emplaceIJS5_EEESt4pairINS_16DenseMapIteratorIjS5_S7_SA_Lb0EEEbERKjDpOT_"}
!2793 = distinct !{!2793, !2792, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E11try_emplaceIJS5_EEESt4pairINS_16DenseMapIteratorIjS5_S7_SA_Lb0EEEbERKjDpOT_: argument 0"}
!2794 = distinct !{!2794, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E16try_emplace_implIRKjJS5_EEESt4pairINS_16DenseMapIteratorIjS5_S7_SA_Lb0EEEbEOT_DpOT0_"}
!2795 = distinct !{!2795, !2794, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E16try_emplace_implIRKjJS5_EEESt4pairINS_16DenseMapIteratorIjS5_S7_SA_Lb0EEEbEOT_DpOT0_: argument 0"}
!2796 = distinct !{!2796, i1 true, !"_ZNK4llvm11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEE4findEj"}
!2797 = distinct !{!2797, !2796, !"_ZNK4llvm11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEE4findEj: argument 0"}
!2798 = distinct !{!2798, i1 true, !"_ZN4llvm11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEE4findEj"}
!2799 = distinct !{!2799, !2798, !"_ZN4llvm11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEE4findEj: argument 0"}
!2800 = distinct !{!2800, i1 true, !"_ZN4llvm11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEE4findEj"}
!2801 = distinct !{!2801, !2800, !"_ZN4llvm11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEE4findEj: argument 0"}
!2802 = distinct !{!2802, i1 false, !"LVerDomain"}
!2803 = distinct !{!2803, !2802}
!2804 = distinct !{!2804, !2802}
!2805 = distinct !{!2805, !2802}
!2806 = distinct !{!2806, !2802}
!2807 = distinct !{!2807, !109, !474, !475}
!2808 = distinct !{!2808, !109, !474}
!2809 = distinct !{!2809, !109}
!2810 = !{!2781, !2779}
!2811 = !{!2783}
!2812 = !{!2791, !2789, !2787, !2785}
!2813 = !{!2787, !2785}
!2814 = !{!2795, !2793}
!2815 = !{!2797}
!2816 = !{!2799}
!2817 = !{!2801}
!2818 = !{!2803}
!2819 = !{!2804}
!2820 = !{!2806, !2805, !2803}
!2821 = distinct !{!2821, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_9MapVectorINS_12PointerUnionIJPKNS_11InstructionEPKNS_9DbgRecordEEEENS_11SmallVectorIN12_GLOBAL__N_118MemLocFragmentFill10FragMemLocELj2EEENS1_ISD_jNS_12DenseMapInfoISD_vEENS_6detail12DenseMapPairISD_jEEEENSE_ISt4pairISD_SI_ELj0EEELj0EEENSJ_IS4_vEENSM_IS4_SS_EEEES4_SS_ST_SU_E6getRepEv"}
!2822 = distinct !{!2822, !2821, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_9MapVectorINS_12PointerUnionIJPKNS_11InstructionEPKNS_9DbgRecordEEEENS_11SmallVectorIN12_GLOBAL__N_118MemLocFragmentFill10FragMemLocELj2EEENS1_ISD_jNS_12DenseMapInfoISD_vEENS_6detail12DenseMapPairISD_jEEEENSE_ISt4pairISD_SI_ELj0EEELj0EEENSJ_IS4_vEENSM_IS4_SS_EEEES4_SS_ST_SU_E6getRepEv: argument 0"}
!2823 = distinct !{!2823, i1 true, !"_ZNK4llvm8DenseMapIPKNS_10BasicBlockENS_9MapVectorINS_12PointerUnionIJPKNS_11InstructionEPKNS_9DbgRecordEEEENS_11SmallVectorIN12_GLOBAL__N_118MemLocFragmentFill10FragMemLocELj2EEENS0_ISC_jNS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_jEEEENSD_ISt4pairISC_SH_ELj0EEELj0EEENSI_IS3_vEENSL_IS3_SR_EEE6getRepEv"}
!2824 = distinct !{!2824, !2823, !"_ZNK4llvm8DenseMapIPKNS_10BasicBlockENS_9MapVectorINS_12PointerUnionIJPKNS_11InstructionEPKNS_9DbgRecordEEEENS_11SmallVectorIN12_GLOBAL__N_118MemLocFragmentFill10FragMemLocELj2EEENS0_ISC_jNS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_jEEEENSD_ISt4pairISC_SH_ELj0EEELj0EEENSI_IS3_vEENSL_IS3_SR_EEE6getRepEv: argument 0"}
!2825 = !{!2824, !2822}
!2826 = distinct !{!2826, !109}
!2827 = distinct !{!2827, !109}
!2828 = distinct !{!2828, !109}
!2829 = distinct !{!2829, !109}
!2830 = distinct !{!2830, !109}
!2831 = distinct !{!2831, i1 true, !"_ZSt19__relocate_object_aISt4pairIPKN4llvm15DILocalVariableEPKNS1_10DILocationEES8_SaIS8_EEvPT_PT0_RT1_"}
!2832 = distinct !{!2832, !2831, !"_ZSt19__relocate_object_aISt4pairIPKN4llvm15DILocalVariableEPKNS1_10DILocationEES8_SaIS8_EEvPT_PT0_RT1_: argument 1"}
!2833 = distinct !{!2833, !2831, !"_ZSt19__relocate_object_aISt4pairIPKN4llvm15DILocalVariableEPKNS1_10DILocationEES8_SaIS8_EEvPT_PT0_RT1_: argument 0"}
!2834 = distinct !{!2834, !109}
!2835 = !{!310, !309, i64 8}
!2836 = !{!2833, !2832}
!2837 = distinct !{!2837, i1 true, !"_ZSt19__relocate_object_aIN4llvm18RawLocationWrapperES1_SaIS1_EEvPT_PT0_RT1_"}
!2838 = distinct !{!2838, !2837, !"_ZSt19__relocate_object_aIN4llvm18RawLocationWrapperES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!2839 = distinct !{!2839, !2837, !"_ZSt19__relocate_object_aIN4llvm18RawLocationWrapperES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!2840 = distinct !{!2840, !109, !474, !475}
!2841 = distinct !{!2841, !109, !475, !474}
!2842 = !{!299, !298, i64 8}
!2843 = !{!2838}
!2844 = !{!2839}
!2845 = distinct !{!2845, i1 true, !"_ZNK4llvm11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEE4findEj"}
!2846 = distinct !{!2846, !2845, !"_ZNK4llvm11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEE4findEj: argument 0"}
!2847 = !{!2846}
!2848 = distinct !{!2848, i1 false, !"LVerDomain"}
!2849 = distinct !{!2849, !2848}
!2850 = distinct !{!2850, !2848}
!2851 = distinct !{!2851, !2848}
!2852 = distinct !{!2852, !2848}
!2853 = distinct !{!2853, !109, !474, !475}
!2854 = distinct !{!2854, !109, !474}
!2855 = !{!2849}
!2856 = !{!2850}
!2857 = !{!2852, !2851, !2849}
!2858 = distinct !{!2858, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPKNS_11InstructionEPKNS_9DbgRecordEEEEjNS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_jEEEES9_jSB_SE_E11try_emplaceIJEEESt4pairINS_16DenseMapIteratorIS9_jSB_SE_Lb0EEEbERKS9_DpOT_"}
!2859 = distinct !{!2859, !2858, !"_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPKNS_11InstructionEPKNS_9DbgRecordEEEEjNS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_jEEEES9_jSB_SE_E11try_emplaceIJEEESt4pairINS_16DenseMapIteratorIS9_jSB_SE_Lb0EEEbERKS9_DpOT_: argument 0"}
!2860 = distinct !{!2860, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPKNS_11InstructionEPKNS_9DbgRecordEEEEjNS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_jEEEES9_jSB_SE_E16try_emplace_implIRKS9_JEEESt4pairINS_16DenseMapIteratorIS9_jSB_SE_Lb0EEEbEOT_DpOT0_"}
!2861 = distinct !{!2861, !2860, !"_ZN4llvm12DenseMapBaseINS_8DenseMapINS_12PointerUnionIJPKNS_11InstructionEPKNS_9DbgRecordEEEEjNS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_jEEEES9_jSB_SE_E16try_emplace_implIRKS9_JEEESt4pairINS_16DenseMapIteratorIS9_jSB_SE_Lb0EEEbEOT_DpOT0_: argument 0"}
!2862 = distinct !{!2862, i1 true, !"_ZSt16forward_as_tupleIJRKN4llvm12PointerUnionIJPKNS0_11InstructionEPKNS0_9DbgRecordEEEEEESt5tupleIJDpOT_EESE_"}
!2863 = distinct !{!2863, !2862, !"_ZSt16forward_as_tupleIJRKN4llvm12PointerUnionIJPKNS0_11InstructionEPKNS0_9DbgRecordEEEEEESt5tupleIJDpOT_EESE_: argument 0"}
!2864 = !{!2861, !2859}
!2865 = !{!2863}
!2866 = distinct !{!2866, i1 false, !"LVerDomain"}
!2867 = distinct !{!2867, !2866}
!2868 = distinct !{!2868, !2866}
!2869 = distinct !{!2869, !2866}
!2870 = distinct !{!2870, !2866}
!2871 = distinct !{!2871, !109, !474, !475}
!2872 = distinct !{!2872, !109, !474}
!2873 = !{!2867}
!2874 = !{!2868}
!2875 = !{!2870, !2869, !2867}
!2876 = distinct !{!2876, !109}
!2877 = !{!"_ZTSSt4pairIKS_IPKN4llvm15DILocalVariableEPKNS0_10DILocationEEjE", !224, i64 0, !55, i64 16}
!2878 = !{!2877, !55, i64 16}
!2879 = distinct !{!2879, !109}
!2880 = distinct !{!2880, !109}
!2881 = !{!"_ZTSSt4pairIKN4llvm18RawLocationWrapperEjE", !125, i64 0, !55, i64 8}
!2882 = !{!2881, !55, i64 8}
!2883 = distinct !{!2883, !109}
!2884 = distinct !{!2884, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIjNS_11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E6getRepEv"}
!2885 = distinct !{!2885, !2884, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIjNS_11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E6getRepEv: argument 0"}
!2886 = distinct !{!2886, i1 true, !"_ZNK4llvm8DenseMapIjNS_11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEE6getRepEv"}
!2887 = distinct !{!2887, !2886, !"_ZNK4llvm8DenseMapIjNS_11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEE6getRepEv: argument 0"}
!2888 = !{!2887, !2885}
!2889 = distinct !{!2889, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIjNS_11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E6getRepEv"}
!2890 = distinct !{!2890, !2889, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIjNS_11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E6getRepEv: argument 0"}
!2891 = distinct !{!2891, i1 true, !"_ZNK4llvm8DenseMapIjNS_11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEE6getRepEv"}
!2892 = distinct !{!2892, !2891, !"_ZNK4llvm8DenseMapIjNS_11IntervalMapIjjLj16ENS_23IntervalMapHalfOpenInfoIjEEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEE6getRepEv: argument 0"}
!2893 = !{!2892, !2890}
!2894 = !{i64 0, i64 4, !116, i64 4, i64 4, !116, i64 8, i64 4, !116, i64 12, i64 4, !116, i64 16, i64 8, !146}
!2895 = distinct !{!2895, i1 true, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_15DILocalVariableEPKNS_10DILocationEENS_9BitVectorELj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SA_EEEES9_SA_SC_SF_E6getRepEv"}
!2896 = distinct !{!2896, !2895, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_15DILocalVariableEPKNS_10DILocationEENS_9BitVectorELj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SA_EEEES9_SA_SC_SF_E6getRepEv: argument 0"}
!2897 = distinct !{!2897, i1 true, !"_ZNK4llvm13SmallDenseMapISt4pairIPKNS_15DILocalVariableEPKNS_10DILocationEENS_9BitVectorELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEE6getRepEv"}
!2898 = distinct !{!2898, !2897, !"_ZNK4llvm13SmallDenseMapISt4pairIPKNS_15DILocalVariableEPKNS_10DILocationEENS_9BitVectorELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEE6getRepEv: argument 0"}
!2899 = !{!2898, !2896}
!2900 = distinct !{!2900, i1 true, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_15DILocalVariableEPKNS_10DILocationEENS_9BitVectorELj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SA_EEEES9_SA_SC_SF_E6getRepEv"}
!2901 = distinct !{!2901, !2900, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_15DILocalVariableEPKNS_10DILocationEENS_9BitVectorELj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SA_EEEES9_SA_SC_SF_E6getRepEv: argument 0"}
!2902 = distinct !{!2902, i1 true, !"_ZNK4llvm13SmallDenseMapISt4pairIPKNS_15DILocalVariableEPKNS_10DILocationEENS_9BitVectorELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEE6getRepEv"}
!2903 = distinct !{!2903, !2902, !"_ZNK4llvm13SmallDenseMapISt4pairIPKNS_15DILocalVariableEPKNS_10DILocationEENS_9BitVectorELj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_S9_EEE6getRepEv: argument 0"}
!2904 = !{!2903, !2901}
!2905 = !{i64 0, i64 8, !532, i64 8, i64 8, !401, i64 16, i64 4, !116}
!2906 = distinct !{!2906, !109}
!2907 = distinct !{!2907, !109}
!2908 = distinct !{!2908, !109}
!2909 = distinct !{!2909, !109}
!2910 = distinct !{!2910, !109}
!2911 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairISt4pairIPKNS_15DILocalVariableEPKNS_10DILocationEENS_13SmallDenseSetINS_23DbgVariableFragmentInfoELj4ENS_12DenseMapInfoISB_vEEEEEE", !60, i64 0}
!2912 = !{!2911, !2911, i64 0}
!2913 = !{i64 0, i64 8, !2912, i64 8, i64 8, !401, i64 16, i64 4, !116}
!2914 = distinct !{!2914, !109}
!2915 = distinct !{!2915, !109}
!2916 = distinct !{!2916, !109}
!2917 = distinct !{!2917, !109}
!2918 = distinct !{!2918, !109}
!2919 = distinct !{!2919, !109}
!2920 = !{!350, !350, i64 0}
!2921 = distinct !{!2921, !109}
!2922 = distinct !{!2922, !109}
!2923 = distinct !{!2923, !109}
!2924 = distinct !{!2924, !109}
!2925 = distinct !{!2925, !109}
!2926 = distinct !{!2926, !109}
!2927 = distinct !{!2927, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_11InstructionESt4pairIjjENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E6getRepEv"}
!2928 = distinct !{!2928, !2927, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_11InstructionESt4pairIjjENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E6getRepEv: argument 0"}
!2929 = distinct !{!2929, i1 true, !"_ZNK4llvm8DenseMapIPKNS_11InstructionESt4pairIjjENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE6getRepEv"}
!2930 = distinct !{!2930, !2929, !"_ZNK4llvm8DenseMapIPKNS_11InstructionESt4pairIjjENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE6getRepEv: argument 0"}
!2931 = !{!2930, !2928}
!2932 = distinct !{!2932, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_11InstructionESt4pairIjjENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E6getRepEv"}
!2933 = distinct !{!2933, !2932, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_11InstructionESt4pairIjjENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E6getRepEv: argument 0"}
!2934 = distinct !{!2934, i1 true, !"_ZNK4llvm8DenseMapIPKNS_11InstructionESt4pairIjjENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE6getRepEv"}
!2935 = distinct !{!2935, !2934, !"_ZNK4llvm8DenseMapIPKNS_11InstructionESt4pairIjjENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE6getRepEv: argument 0"}
!2936 = !{!2935, !2933}
!2937 = distinct !{!2937, !109}
!2938 = distinct !{!2938, !109}
!2939 = distinct !{!2939, !109}
!2940 = distinct !{null, null, null, null}
!2941 = !{!"_ZTSZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS1_EEEvRSt9once_flagOT_DpOT0_EUlvE_", !60, i64 0, !368, i64 8}
!2942 = !{!2941, !60, i64 0}
!2943 = !{!2941, !368, i64 8}
!2944 = !{!"p1 _ZTSN4llvm12PassRegistryE", !60, i64 0}
!2945 = !{!"_ZTSSt17reference_wrapperIN4llvm12PassRegistryEE", !2944, i64 0}
!2946 = !{!2945, !2944, i64 0}
!2947 = !{!372, !55, i64 8}
!2948 = !{!363, !64, i64 8}
end_hunk_3
