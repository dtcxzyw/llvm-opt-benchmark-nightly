Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AttributorAttributes?download=true
inline.NumInlined: 25342
inline.NumDeleted: 9938
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 59
begin_hunk_0_@_ZN4llvm11IntervalMapIjbLj21ENS_15IntervalMapInfoIjEEE8iterator10insertNodeEjNS_15IntervalMapImpl7NodeRefEj:bb.a
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
  %wide.load230 = load <2 x i64>, ptr %i.bh, align 8, !tbaa !161, !alias.scope !4804
  %wide.load231 = load <2 x i64>, ptr %i.bi, align 8, !tbaa !161, !alias.scope !4804
  %i.bj = getelementptr inbounds i8, ptr %i.bg, i64 -8
  %i.bk = getelementptr inbounds i8, ptr %i.bg, i64 -24
  store <2 x i64> %wide.load230, ptr %i.bj, align 8, !tbaa !161, !alias.scope !4805, !noalias !4806
  store <2 x i64> %wide.load231, ptr %i.bk, align 8, !tbaa !161, !alias.scope !4805, !noalias !4806
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.bb ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -4
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 -12
  %wide.load232 = load <2 x i32>, ptr %i.bm, align 4, !tbaa !164, !alias.scope !4807
  %wide.load233 = load <2 x i32>, ptr %i.bn, align 4, !tbaa !164, !alias.scope !4807
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.bf ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -4
  %i.bq = getelementptr inbounds i8, ptr %i.bo, i64 -12
  store <2 x i32> %wide.load232, ptr %i.bp, align 4, !tbaa !164, !alias.scope !4808, !noalias !4809
  store <2 x i32> %wide.load233, ptr %i.bq, align 4, !tbaa !164, !alias.scope !4808, !noalias !4809
  %index.next234 = add nuw i64 %index229, 4       ; 2 uses
  %i.br = icmp eq i64 %index.next234, %n.vec227
  br i1 %i.br, label %middle.block235, label %vector.body228, !llvm.loop !4788

middle.block235:                                  ; preds = %vector.body228
  %cmp.n236 = icmp eq i64 %i.q, %n.vec227
  br i1 %cmp.n236, label %_ZN4llvm15IntervalMapImpl10BranchNodeIjbLj15ENS_15IntervalMapInfoIjEEE6insertEjjNS0_7NodeRefEj.exit, label %scalar.ph204.preheader

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
  %i.ca = load i64, ptr %i.bv, align 8, !tbaa !161
  store i64 %i.ca, ptr %i.bz, align 8, !tbaa !161
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.bu
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !164
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.by
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !164
  br label %scalar.ph204.prol.loopexit

scalar.ph204.prol.loopexit:                       ; preds = %scalar.ph204.prol, %scalar.ph204.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph204.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph204.prol ]
  %i.ce = icmp eq i32 %i.bs, 1
  br i1 %i.ce, label %_ZN4llvm15IntervalMapImpl10BranchNodeIjbLj15ENS_15IntervalMapInfoIjEEE6insertEjjNS0_7NodeRefEj.exit, label %scalar.ph204

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
  %i.cm = load i64, ptr %i.ch, align 8, !tbaa !161
  store i64 %i.cm, ptr %i.cl, align 8, !tbaa !161
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.cg
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !164
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ck
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !164
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, -2 ; 2 uses
  %indvars.i.i.1 = trunc i64 %indvars.iv.next.i.i.1 to i32 ; 2 uses
  %i.cq = add i32 %i.j, %indvars.i.i.1
  %i.cr = zext i32 %i.cq to i64                   ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.cr
  %i.ct = trunc nuw i64 %indvars.iv.next.i.i to i32
  %i.cu = add i32 %i.j, %i.ct
  %i.cv = zext i32 %i.cu to i64                   ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.cv
  %i.cx = load i64, ptr %i.cs, align 8, !tbaa !161
  store i64 %i.cx, ptr %i.cw, align 8, !tbaa !161
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.cr
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !164
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.cv
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !164
  %.not.i.i.i.1 = icmp eq i32 %indvars.i.i.1, 0
  br i1 %.not.i.i.i.1, label %_ZN4llvm15IntervalMapImpl10BranchNodeIjbLj15ENS_15IntervalMapInfoIjEEE6insertEjjNS0_7NodeRefEj.exit, label %scalar.ph204, !llvm.loop !4789

_ZN4llvm15IntervalMapImpl10BranchNodeIjbLj15ENS_15IntervalMapInfoIjEEE6insertEjjNS0_7NodeRefEj.exit: ; preds = %scalar.ph204.prol.loopexit, %scalar.ph204, %middle.block235, %bb.c
  %i.db = zext i32 %i.j to i64                    ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.db
  store i64 %2, ptr %i.dc, align 8, !tbaa !161
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.db
  store i32 %3, ptr %i.de, align 4, !tbaa !164
  %i.df = load i32, ptr %i.d, align 4, !tbaa !560
  %i.dg = add i32 %i.df, 1                        ; 2 uses
  store i32 %i.dg, ptr %i.d, align 4, !tbaa !560
  %i.dh = load ptr, ptr %i.b, align 8, !tbaa !132 ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i32 %i.dg, ptr %i.di, align 8, !tbaa !1321
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 12
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !1320
  %i.dl = load ptr, ptr %i.dh, align 8, !tbaa !1322
  %i.dm = zext i32 %i.dk to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dm
  %.sroa.0.0.copyload.i = load i64, ptr %i.dn, align 8, !tbaa !161 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dp = and i64 %.sroa.0.0.copyload.i, -64
  %i.dq = inttoptr i64 %i.dp to ptr
  %i.dr = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.ds = and i32 %i.dr, 63
  %i.dt = add nuw nsw i32 %i.ds, 1
  store ptr %i.dq, ptr %i.do, align 8, !tbaa !630
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  store i32 %i.dt, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !164
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.du = load ptr, ptr %i.b, align 8, !tbaa !132
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !164
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !561 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 3 uses
  %i.ea = load ptr, ptr %i.dy, align 8, !tbaa !1308 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !1329
  store ptr %i.eb, ptr %i.dy, align 8, !tbaa !1308
  br label %.lr.ph.i.i

bb.f:                                             ; preds = %bb.d
  %i.ec = load ptr, ptr %i.dz, align 8, !tbaa !489
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = add i64 %i.ed, 63
  %i.ef = and i64 %i.ee, -64                      ; 2 uses
  %i.eg = add i64 %i.ef, 192                      ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !490
  %i.ej = icmp ult i64 %i.eg, %i.ei
  br i1 %i.ej, label %bb.g, label %bb.h, !prof !191

bb.g:                                             ; preds = %bb.f
  %i.ek = inttoptr i64 %i.eg to ptr
  store ptr %i.ek, ptr %i.dz, align 8, !tbaa !489
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
  %i.ex = getelementptr i8, ptr %i.a, i64 %i.ev   ; 2 uses
  %i.ey = getelementptr i8, ptr %i.a, i64 %i.es
  %i.ez = getelementptr i8, ptr %i.ey, i64 8      ; 2 uses
  %bound0 = icmp ult ptr %i.en, %i.ew
  %bound1 = icmp ult ptr %i.eq, %i.et
  %found.conflict = and i1 %bound0, %bound1
  %bound097 = icmp ult ptr %i.en, %i.ex
  %bound198 = icmp ult ptr %i.ep, %i.et
  %found.conflict99 = and i1 %bound097, %bound198
  %conflict.rdx = or i1 %found.conflict, %found.conflict99
  %bound0100 = icmp ult ptr %i.en, %i.ez
  %bound1101 = icmp ult ptr %i.eo, %i.et
  %found.conflict102 = and i1 %bound0100, %bound1101
  %conflict.rdx103 = or i1 %conflict.rdx, %found.conflict102
  %bound0104 = icmp ult ptr %i.eq, %i.ex
  %bound1105 = icmp ult ptr %i.ep, %i.ew
  %found.conflict106 = and i1 %bound0104, %bound1105
  %conflict.rdx107 = or i1 %conflict.rdx103, %found.conflict106
  %bound0108 = icmp ult ptr %i.eq, %i.ez
  %bound1109 = icmp ult ptr %i.eo, %i.ew
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
  %wide.load = load <2 x i64>, ptr %i.fa, align 8, !tbaa !161, !alias.scope !4810
  %wide.load112 = load <2 x i64>, ptr %i.fc, align 8, !tbaa !161, !alias.scope !4810
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store <2 x i64> %wide.load, ptr %i.fb, align 8, !tbaa !161, !alias.scope !4811, !noalias !4812
  store <2 x i64> %wide.load112, ptr %i.fd, align 8, !tbaa !161, !alias.scope !4811, !noalias !4812
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %index ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %wide.load113 = load <2 x i32>, ptr %i.fe, align 4, !tbaa !164, !alias.scope !4813
  %wide.load114 = load <2 x i32>, ptr %i.ff, align 4, !tbaa !164, !alias.scope !4813
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %index ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store <2 x i32> %wide.load113, ptr %i.fg, align 4, !tbaa !164, !alias.scope !4814, !noalias !4815
  store <2 x i32> %wide.load114, ptr %i.fh, align 4, !tbaa !164, !alias.scope !4814, !noalias !4815
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fi = icmp eq i64 %index.next, %n.vec
  br i1 %i.fi, label %middle.block, label %vector.body, !llvm.loop !4795

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.er
  br i1 %cmp.n, label %_ZN4llvm11IntervalMapIjbLj21ENS_15IntervalMapInfoIjEEE9splitRootEj.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 7 uses
  %xtraiter = and i64 %i.er, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i.ph
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv.i.ph
  %i.fl = load i64, ptr %i.fj, align 8, !tbaa !161
  store i64 %i.fl, ptr %i.fk, align 8, !tbaa !161
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %indvars.iv.i.ph
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !164
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv.i.ph
  store i32 %i.fn, ptr %i.fo, align 4, !tbaa !164
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.fp = add nsw i64 %i.er, -1
  %i.fq = icmp eq i64 %indvars.iv.i.ph, %i.fp
  br i1 %i.fq, label %_ZN4llvm11IntervalMapIjbLj21ENS_15IntervalMapInfoIjEEE9splitRootEj.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv.i
  %i.ft = load i64, ptr %i.fr, align 8, !tbaa !161
  store i64 %i.ft, ptr %i.fs, align 8, !tbaa !161
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %indvars.iv.i
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !164
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv.i
  store i32 %i.fv, ptr %i.fw, align 4, !tbaa !164
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 4 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.next.i
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv.next.i
  %i.fz = load i64, ptr %i.fx, align 8, !tbaa !161
  store i64 %i.fz, ptr %i.fy, align 8, !tbaa !161
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %indvars.iv.next.i
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !164
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv.next.i
  store i32 %i.gb, ptr %i.gc, align 4, !tbaa !164
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.1, %i.er
  br i1 %.not.i.i.1, label %_ZN4llvm11IntervalMapIjbLj21ENS_15IntervalMapInfoIjEEE9splitRootEj.exit, label %scalar.ph, !llvm.loop !4796

_ZN4llvm11IntervalMapIjbLj21ENS_15IntervalMapInfoIjEEE9splitRootEj.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.gd = add i32 %i.e, -1
  %i.ge = ptrtoint ptr %i.en to i64
  %i.gf = zext i32 %i.gd to i64                   ; 2 uses
  %i.gg = and i64 %i.ge, -64
  %i.gh = or i64 %i.gg, %i.gf                     ; 2 uses
  %i.gi = and i64 %i.gh, -64
  %i.gj = inttoptr i64 %i.gi to ptr
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 128
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.gf
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !164
  store i32 %i.gm, ptr %i.ep, align 8, !tbaa !164
  store i64 %i.gh, ptr %i.eo, align 8, !tbaa !161
  store i32 1, ptr %i.d, align 4, !tbaa !560
  %i.gn = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 2 uses
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !559
  %i.gp = add i32 %i.go, 1
  store i32 %i.gp, ptr %i.gn, align 8, !tbaa !559
  %.sroa.2.0.insert.ext.i = zext i32 %i.dw to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  tail call void @_ZN4llvm15IntervalMapImpl4Path11replaceRootEPvjSt4pairIjjE(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull %i.eo, i32 noundef 1, i64 %.sroa.2.0.insert.shift.i) #39
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvm11IntervalMapIjbLj21ENS_15IntervalMapInfoIjEEE9splitRootEj.exit, %bb.a
  %.048 = phi i32 [ 2, %_ZN4llvm11IntervalMapIjbLj21ENS_15IntervalMapInfoIjEEE9splitRootEj.exit ], [ %1, %bb.a ]
  %i.gq = add i32 %.048, -1                       ; 6 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !176
  %.not.i.i.i53 = icmp eq i32 %i.gs, 0
  br i1 %.not.i.i.i53, label %_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.thread.i, label %_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.i

_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.i:   ; preds = %bb.i
  %i.gt = load ptr, ptr %i.b, align 8, !tbaa !132 ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 12
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !1320
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !1321
  %i.gy = icmp ult i32 %i.gv, %i.gx
  br i1 %i.gy, label %_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.i._ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit_crit_edge, label %_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.thread.i

_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.i._ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit_crit_edge: ; preds = %_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.i
  %.pre67 = zext i32 %i.gq to i64
  br label %_ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit

_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.thread.i: ; preds = %_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.i, %bb.i
  tail call void @_ZN4llvm15IntervalMapImpl4Path8moveLeftEj(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i32 noundef %i.gq) #39
  %i.gz = zext i32 %i.gq to i64                   ; 2 uses
  %i.ha = load ptr, ptr %i.b, align 8, !tbaa !132 ; 2 uses
  %i.hb = getelementptr inbounds nuw [16 x i8], ptr %i.ha, i64 %i.gz
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 12 ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !1320
  %i.he = add i32 %i.hd, 1
  store i32 %i.he, ptr %i.hc, align 4, !tbaa !1320
  br label %_ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit

_ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit: ; preds = %_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.i._ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit_crit_edge, %_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.thread.i
  %.pre-phi68 = phi i64 [ %.pre67, %_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.i._ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit_crit_edge ], [ %i.gz, %_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.thread.i ] ; 2 uses
  %i.hf = phi ptr [ %i.gt, %_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.i._ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit_crit_edge ], [ %i.ha, %_ZNK4llvm15IntervalMapImpl4Path5validEv.exit.thread.i ] ; 2 uses
  %i.hg = getelementptr inbounds nuw [16 x i8], ptr %i.hf, i64 %.pre-phi68
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !1321 ; 2 uses
  %i.hj = icmp eq i32 %i.hi, 16
  br i1 %i.hj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit
  %i.hk = tail call noundef zeroext i1 @_ZN4llvm11IntervalMapIjbLj21ENS_15IntervalMapInfoIjEEE8iterator8overflowINS_15IntervalMapImpl10BranchNodeIjbLj16ES2_EEEEbj(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %i.gq) ; 2 uses
  %i.hl = zext i1 %i.hk to i32
  %i.hm = add i32 %i.gq, %i.hl                    ; 2 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !132 ; 2 uses
  %.pre64 = zext i32 %i.hm to i64                 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %.pre64
  %.phi.trans.insert65 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 8
  %.pre66 = load i32, ptr %.phi.trans.insert65, align 8, !tbaa !1321
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit
  %i.hn = phi i32 [ %.pre66, %bb.j ], [ %i.hi, %_ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit ] ; 7 uses
  %.pre-phi = phi i64 [ %.pre64, %bb.j ], [ %.pre-phi68, %_ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit ] ; 4 uses
  %i.ho = phi ptr [ %.pre, %bb.j ], [ %i.hf, %_ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit ]
  %.150 = phi i1 [ %i.hk, %bb.j ], [ %i.c, %_ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit ]
  %.1 = phi i32 [ %i.hm, %bb.j ], [ %i.gq, %_ZN4llvm15IntervalMapImpl4Path17legalizeForInsertEj.exit ] ; 3 uses
  %i.hp = getelementptr inbounds nuw [16 x i8], ptr %i.ho, i64 %.pre-phi ; 2 uses
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !1322 ; 19 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 12
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !164 ; 14 uses
  %.not9.i.i.i54 = icmp eq i32 %i.hn, %i.hs
  br i1 %.not9.i.i.i54, label %_ZN4llvm15IntervalMapImpl10BranchNodeIjbLj16ENS_15IntervalMapInfoIjEEE6insertEjjNS0_7NodeRefEj.exit, label %.lr.ph.i.i.i55

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
begin_hunk_1_@_ZN4llvm15IntervalMapImpl18adjustSiblingSizesINS0_10BranchNodeIjbLj16ENS_15IntervalMapInfoIjEEEEEEvPPT_jPjPKj:bb.a
  %indvars.iv.next126155.in = phi i64 [ %indvars.iv.next126155, %bb.b ], [ %indvars.iv123, %.preheader115 ]
  %i.l = phi i32 [ %i.ka, %bb.b ], [ %i.e, %.preheader115 ] ; 12 uses
  %i.m = phi i32 [ %i.kb, %bb.b ], [ %i.g, %.preheader115 ]
  %indvars.iv.next126155 = add nsw i64 %indvars.iv.next126155.in, -1 ; 4 uses
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !1333 ; 54 uses
  %i.o = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv.next126155
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1333 ; 18 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next126155 ; 3 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !164  ; 15 uses
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
  %wide.load261 = load <2 x i64>, ptr %i.bf, align 8, !tbaa !161, !alias.scope !4883
  %wide.load262 = load <2 x i64>, ptr %i.bg, align 8, !tbaa !161, !alias.scope !4883
  %i.bh = getelementptr inbounds i8, ptr %i.be, i64 -8
  %i.bi = getelementptr inbounds i8, ptr %i.be, i64 -24
  store <2 x i64> %wide.load261, ptr %i.bh, align 8, !tbaa !161, !alias.scope !4884, !noalias !4885
  store <2 x i64> %wide.load262, ptr %i.bi, align 8, !tbaa !161, !alias.scope !4884, !noalias !4885
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.ba ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -4
  %i.bl = getelementptr inbounds i8, ptr %i.bj, i64 -12
  %wide.load263 = load <2 x i32>, ptr %i.bk, align 4, !tbaa !164, !alias.scope !4886
  %wide.load264 = load <2 x i32>, ptr %i.bl, align 4, !tbaa !164, !alias.scope !4886
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bd ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -4
  %i.bo = getelementptr inbounds i8, ptr %i.bm, i64 -12
  store <2 x i32> %wide.load263, ptr %i.bn, align 4, !tbaa !164, !alias.scope !4887, !noalias !4888
  store <2 x i32> %wide.load264, ptr %i.bo, align 4, !tbaa !164, !alias.scope !4887, !noalias !4888
  %index.next265 = add nuw i64 %index260, 4       ; 2 uses
  %i.bp = icmp eq i64 %index.next265, %n.vec258
  br i1 %i.bp, label %middle.block266, label %vector.body259, !llvm.loop !4829

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
  %i.bw = load i64, ptr %i.bs, align 8, !tbaa !161
  store i64 %i.bw, ptr %i.bv, align 8, !tbaa !161
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.br
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !164
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bu
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !164
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
  %i.cg = load i64, ptr %i.cc, align 8, !tbaa !161
  store i64 %i.cg, ptr %i.cf, align 8, !tbaa !161
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.cb
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !164
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.ce
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !164
  %indvars.iv.next.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i, -2 ; 3 uses
  %indvars.i.i.i.1 = trunc i64 %indvars.iv.next.i.i.i.1 to i32 ; 2 uses
  %i.ck = and i64 %indvars.iv.next.i.i.i.1, 4294967295 ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ck
  %i.cm = add i32 %.sroa.speculated46.i, %indvars.i.i.i.1
  %i.cn = zext i32 %i.cm to i64                   ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.cn
  %i.cp = load i64, ptr %i.cl, align 8, !tbaa !161
  store i64 %i.cp, ptr %i.co, align 8, !tbaa !161
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.ck
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !164
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.cn
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !164
  %.not.i.i22.i.1 = icmp eq i32 %indvars.i.i.i.1, 0
  br i1 %.not.i.i22.i.1, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEjLj16EE9moveRightEjjj.exit.i.i, label %scalar.ph235, !llvm.loop !4830

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
  %i.dk = shl nuw nsw i64 %i.dj, 2                ; 2 uses
  %i.dl = getelementptr i8, ptr %i.p, i64 %i.dk
  %i.dm = getelementptr i8, ptr %i.dl, i64 128    ; 2 uses
  %i.dn = getelementptr i8, ptr %i.p, i64 %i.dk
  %i.do = getelementptr i8, ptr %i.dn, i64 %i.dg
  %4 = getelementptr i8, ptr %i.do, i64 132       ; 2 uses
  %5 = shl nuw nsw i64 %i.dj, 3                   ; 2 uses
  %i.dp = getelementptr i8, ptr %i.p, i64 %5      ; 2 uses
  %i.dq = getelementptr i8, ptr %i.p, i64 %5
  %i.dr = getelementptr i8, ptr %i.dq, i64 %i.dd
  %i.ds = getelementptr i8, ptr %i.dr, i64 8      ; 2 uses
  %bound0 = icmp ult ptr %i.n, %i.di
  %bound1 = icmp ult ptr %i.cv, %i.df
  %found.conflict = and i1 %bound0, %bound1
  %bound0186 = icmp ult ptr %i.n, %4
  %bound1187 = icmp ult ptr %i.dm, %i.df
  %found.conflict188 = and i1 %bound0186, %bound1187
  %conflict.rdx = or i1 %found.conflict, %found.conflict188
  %bound0189 = icmp ult ptr %i.n, %i.ds
  %bound1190 = icmp ult ptr %i.dp, %i.df
  %found.conflict191 = and i1 %bound0189, %bound1190
  %conflict.rdx192 = or i1 %conflict.rdx, %found.conflict191
  %bound0193 = icmp ult ptr %i.cv, %4
  %bound1194 = icmp ult ptr %i.dm, %i.di
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
  %wide.load = load <2 x i64>, ptr %i.dy, align 8, !tbaa !161, !alias.scope !4889
  %wide.load201 = load <2 x i64>, ptr %i.ea, align 8, !tbaa !161, !alias.scope !4889
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store <2 x i64> %wide.load, ptr %i.dz, align 8, !tbaa !161, !alias.scope !4890, !noalias !4891
  store <2 x i64> %wide.load201, ptr %i.eb, align 8, !tbaa !161, !alias.scope !4890, !noalias !4891
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.dx ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %wide.load202 = load <2 x i32>, ptr %i.ec, align 4, !tbaa !164, !alias.scope !4892
  %wide.load203 = load <2 x i32>, ptr %i.ed, align 4, !tbaa !164, !alias.scope !4892
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %index ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store <2 x i32> %wide.load202, ptr %i.ee, align 4, !tbaa !164, !alias.scope !4893, !noalias !4894
  store <2 x i32> %wide.load203, ptr %i.ef, align 4, !tbaa !164, !alias.scope !4893, !noalias !4894
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eg = icmp eq i64 %index.next, %n.vec
  br i1 %i.eg, label %middle.block, label %vector.body, !llvm.loop !4836

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
  %i.el = load i64, ptr %i.ej, align 8, !tbaa !161
  store i64 %i.el, ptr %i.ek, align 8, !tbaa !161
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.ei
  %i.en = load i32, ptr %i.em, align 4, !tbaa !164
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.i.i.ph
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !164
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
  %i.eu = load i64, ptr %i.es, align 8, !tbaa !161
  store i64 %i.eu, ptr %i.et, align 8, !tbaa !161
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.er
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !164
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.i.i
  store i32 %i.ew, ptr %i.ex, align 4, !tbaa !164
  %i.ey = add i32 %.015.i.i.i, 1
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ez = zext i32 %i.ey to i64                   ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ez
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next.i.i
  %i.fc = load i64, ptr %i.fa, align 8, !tbaa !161
  store i64 %i.fc, ptr %i.fb, align 8, !tbaa !161
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.ez
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !164
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.next.i.i
  store i32 %i.fe, ptr %i.ff, align 4, !tbaa !164
  %i.fg = add i32 %.015.i.i.i, 2                  ; 2 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2
  %.not.i8.i.i.1 = icmp eq i32 %i.fg, %i.r
  br i1 %.not.i8.i.i.1, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEjLj16EE17adjustFromLeftSibEjRS3_ji.exit, label %scalar.ph, !llvm.loop !4837

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
  %i.gg = getelementptr i8, ptr %i.n, i64 %i.gc
  %i.gh = getelementptr i8, ptr %i.gg, i64 128    ; 2 uses
  %i.gi = getelementptr i8, ptr %i.n, i64 %i.fw   ; 2 uses
  %bound0362 = icmp ult ptr %i.fv, %i.gf
  %bound1363 = icmp ult ptr %i.gb, %i.fy
  %found.conflict364 = and i1 %bound0362, %bound1363
  %bound0365 = icmp ult ptr %i.fv, %i.gh
  %bound1366 = icmp ult ptr %i.fk, %i.fy
  %found.conflict367 = and i1 %bound0365, %bound1366
  %conflict.rdx368 = or i1 %found.conflict364, %found.conflict367
  %bound0369 = icmp ult ptr %i.fv, %i.gi
  %bound1370 = icmp ult ptr %i.n, %i.fy
  %found.conflict371 = and i1 %bound0369, %bound1370
  %conflict.rdx372 = or i1 %conflict.rdx368, %found.conflict371
  %bound0373 = icmp ult ptr %i.gb, %i.gh
  %bound1374 = icmp ult ptr %i.fk, %i.gf
  %found.conflict375 = and i1 %bound0373, %bound1374
  %conflict.rdx376 = or i1 %conflict.rdx372, %found.conflict375
  %bound0377 = icmp ult ptr %i.gb, %i.gi
  %bound1378 = icmp ult ptr %i.n, %i.gf
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
  %wide.load385 = load <2 x i64>, ptr %i.gn, align 8, !tbaa !161, !alias.scope !4895
  %wide.load386 = load <2 x i64>, ptr %i.gq, align 8, !tbaa !161, !alias.scope !4895
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  store <2 x i64> %wide.load385, ptr %i.gp, align 8, !tbaa !161, !alias.scope !4896, !noalias !4897
  store <2 x i64> %wide.load386, ptr %i.gr, align 8, !tbaa !161, !alias.scope !4896, !noalias !4897
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %index384 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %wide.load387 = load <2 x i32>, ptr %i.gs, align 4, !tbaa !164, !alias.scope !4898
  %wide.load388 = load <2 x i32>, ptr %i.gt, align 4, !tbaa !164, !alias.scope !4898
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.go ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  store <2 x i32> %wide.load387, ptr %i.gu, align 4, !tbaa !164, !alias.scope !4899, !noalias !4900
  store <2 x i32> %wide.load388, ptr %i.gv, align 4, !tbaa !164, !alias.scope !4899, !noalias !4900
  %index.next389 = add nuw i64 %index384, 4       ; 2 uses
  %i.gw = icmp eq i64 %index.next389, %n.vec382
  br i1 %i.gw, label %middle.block390, label %vector.body383, !llvm.loop !4843

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
  %i.ha = load i64, ptr %i.gx, align 8, !tbaa !161
  store i64 %i.ha, ptr %i.gz, align 8, !tbaa !161
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %indvars.iv.i31.i.ph
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !164
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.gy
  store i32 %i.hc, ptr %i.hd, align 4, !tbaa !164
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
  %i.hk = load i64, ptr %i.hh, align 8, !tbaa !161
  store i64 %i.hk, ptr %i.hj, align 8, !tbaa !161
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %indvars.iv.i31.i
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !164
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.hi
  store i32 %i.hm, ptr %i.hn, align 4, !tbaa !164
  %indvars.iv.next.i32.i = add nuw nsw i64 %indvars.iv.i31.i, 1 ; 2 uses
  %i.ho = add i32 %.01214.i.i.i, 1
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next.i32.i
  %i.hq = zext i32 %i.ho to i64                   ; 2 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.hq
  %i.hs = load i64, ptr %i.hp, align 8, !tbaa !161
  store i64 %i.hs, ptr %i.hr, align 8, !tbaa !161
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %indvars.iv.next.i32.i
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !164
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.hq
  store i32 %i.hu, ptr %i.hv, align 4, !tbaa !164
  %indvars.iv.next.i32.i.1 = add nuw nsw i64 %indvars.iv.i31.i, 2 ; 2 uses
  %i.hw = add i32 %.01214.i.i.i, 2
  %.not.i.i33.i.1 = icmp eq i64 %indvars.iv.next.i32.i.1, %i.fm
  br i1 %.not.i.i33.i.1, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEjLj16EE4copyILj16EEEvRKNS1_IS2_jXT_EEEjjj.exit.i.i, label %scalar.ph359, !llvm.loop !4844

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
  %wide.load322 = load <2 x i64>, ptr %i.is, align 8, !tbaa !161, !alias.scope !4901
  %wide.load323 = load <2 x i64>, ptr %i.iu, align 8, !tbaa !161, !alias.scope !4901
  %i.iv = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  store <2 x i64> %wide.load322, ptr %i.it, align 8, !tbaa !161, !alias.scope !4902, !noalias !4903
  store <2 x i64> %wide.load323, ptr %i.iv, align 8, !tbaa !161, !alias.scope !4902, !noalias !4903
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %i.ir ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %wide.load324 = load <2 x i32>, ptr %i.iw, align 4, !tbaa !164, !alias.scope !4904
  %wide.load325 = load <2 x i32>, ptr %i.ix, align 4, !tbaa !164, !alias.scope !4904
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %index321 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  store <2 x i32> %wide.load324, ptr %i.iy, align 4, !tbaa !164, !alias.scope !4905, !noalias !4906
  store <2 x i32> %wide.load325, ptr %i.iz, align 4, !tbaa !164, !alias.scope !4905, !noalias !4906
  %index.next326 = add nuw i64 %index321, 4       ; 2 uses
  %i.ja = icmp eq i64 %index.next326, %n.vec319
  br i1 %i.ja, label %middle.block327, label %vector.body320, !llvm.loop !4850

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
  %i.je = load i64, ptr %i.jc, align 8, !tbaa !161
  store i64 %i.je, ptr %i.jd, align 8, !tbaa !161
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv.ph
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !164
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv6.i.i.ph
  store i32 %i.jg, ptr %i.jh, align 4, !tbaa !164
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.ph, 1
  %indvars.iv.next7.i.i.prol = or disjoint i64 %indvars.iv6.i.i.ph, 1
  br label %scalar.ph296.prol.loopexit

scalar.ph296.prol.loopexit:                       ; preds = %scalar.ph296.prol, %scalar.ph296.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph296.preheader ], [ %indvars.iv.next.prol, %scalar.ph296.prol ]
end_hunk_1
begin_hunk_2_@_ZN4llvm15IntervalMapImpl18adjustSiblingSizesINS0_10BranchNodeIjbLj16ENS_15IntervalMapInfoIjEEEEEEvPPT_jPjPKj:bb.a
  %.0159 = phi i32 [ %.0, %bb.c ], [ %.0157, %.preheader ] ; 2 uses
  %i.kj = phi i32 [ %i.uz, %bb.c ], [ %i.kd, %.preheader ] ; 16 uses
  %i.kk = phi i32 [ %i.va, %bb.c ], [ %i.kf, %.preheader ]
  %i.kl = zext i32 %.0159 to i64                  ; 2 uses
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.kl
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !1333 ; 54 uses
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.kl ; 3 uses
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !164 ; 11 uses
  %i.kq = load ptr, ptr %i.kh, align 8, !tbaa !1333 ; 18 uses
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
  %wide.load516 = load <2 x i64>, ptr %i.me, align 8, !tbaa !161, !alias.scope !4907
  %wide.load517 = load <2 x i64>, ptr %i.mf, align 8, !tbaa !161, !alias.scope !4907
  %i.mg = getelementptr inbounds i8, ptr %i.md, i64 -8
  %i.mh = getelementptr inbounds i8, ptr %i.md, i64 -24
  store <2 x i64> %wide.load516, ptr %i.mg, align 8, !tbaa !161, !alias.scope !4908, !noalias !4909
  store <2 x i64> %wide.load517, ptr %i.mh, align 8, !tbaa !161, !alias.scope !4908, !noalias !4909
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %i.lz ; 2 uses
  %i.mj = getelementptr inbounds i8, ptr %i.mi, i64 -4
  %i.mk = getelementptr inbounds i8, ptr %i.mi, i64 -12
  %wide.load518 = load <2 x i32>, ptr %i.mj, align 4, !tbaa !164, !alias.scope !4910
  %wide.load519 = load <2 x i32>, ptr %i.mk, align 4, !tbaa !164, !alias.scope !4910
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %i.mc ; 2 uses
  %i.mm = getelementptr inbounds i8, ptr %i.ml, i64 -4
  %i.mn = getelementptr inbounds i8, ptr %i.ml, i64 -12
  store <2 x i32> %wide.load518, ptr %i.mm, align 4, !tbaa !164, !alias.scope !4911, !noalias !4912
  store <2 x i32> %wide.load519, ptr %i.mn, align 4, !tbaa !164, !alias.scope !4911, !noalias !4912
  %index.next520 = add nuw i64 %index515, 4       ; 2 uses
  %i.mo = icmp eq i64 %index.next520, %n.vec513
  br i1 %i.mo, label %middle.block521, label %vector.body514, !llvm.loop !4859

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
  %i.mv = load i64, ptr %i.mr, align 8, !tbaa !161
  store i64 %i.mv, ptr %i.mu, align 8, !tbaa !161
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %i.mq
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !164
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %i.mt
  store i32 %i.mx, ptr %i.my, align 4, !tbaa !164
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
  %i.nf = load i64, ptr %i.nb, align 8, !tbaa !161
  store i64 %i.nf, ptr %i.ne, align 8, !tbaa !161
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %i.na
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !164
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %i.nd
  store i32 %i.nh, ptr %i.ni, align 4, !tbaa !164
  %indvars.iv.next.i.i.i102.1 = add nsw i64 %indvars.iv.i.i.i101, -2 ; 3 uses
  %indvars.i.i.i103.1 = trunc i64 %indvars.iv.next.i.i.i102.1 to i32 ; 2 uses
  %i.nj = and i64 %indvars.iv.next.i.i.i102.1, 4294967295 ; 2 uses
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %i.nj
  %i.nl = add i32 %.sroa.speculated46.i98, %indvars.i.i.i103.1
  %i.nm = zext i32 %i.nl to i64                   ; 2 uses
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %i.nm
  %i.no = load i64, ptr %i.nk, align 8, !tbaa !161
  store i64 %i.no, ptr %i.nn, align 8, !tbaa !161
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %i.nj
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !164
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %i.nm
  store i32 %i.nq, ptr %i.nr, align 4, !tbaa !164
  %.not.i.i22.i104.1 = icmp eq i32 %indvars.i.i.i103.1, 0
  br i1 %.not.i.i22.i104.1, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEjLj16EE9moveRightEjjj.exit.i.i105, label %scalar.ph490, !llvm.loop !4860

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
  %i.oj = shl nuw nsw i64 %i.oi, 2                ; 2 uses
  %i.ok = getelementptr i8, ptr %i.kq, i64 %i.oj
  %i.ol = getelementptr i8, ptr %i.ok, i64 128    ; 2 uses
  %i.om = getelementptr i8, ptr %i.kq, i64 %i.oj
  %i.on = getelementptr i8, ptr %i.om, i64 %i.of
  %6 = getelementptr i8, ptr %i.on, i64 132       ; 2 uses
  %7 = shl nuw nsw i64 %i.oi, 3                   ; 2 uses
  %i.oo = getelementptr i8, ptr %i.kq, i64 %7     ; 2 uses
  %i.op = getelementptr i8, ptr %i.kq, i64 %7
  %i.oq = getelementptr i8, ptr %i.op, i64 %i.oc
  %i.or = getelementptr i8, ptr %i.oq, i64 8      ; 2 uses
  %bound0428 = icmp ult ptr %i.kn, %i.oh
  %bound1429 = icmp ult ptr %i.nu, %i.oe
  %found.conflict430 = and i1 %bound0428, %bound1429
  %bound0431 = icmp ult ptr %i.kn, %6
  %bound1432 = icmp ult ptr %i.ol, %i.oe
  %found.conflict433 = and i1 %bound0431, %bound1432
  %conflict.rdx434 = or i1 %found.conflict430, %found.conflict433
  %bound0435 = icmp ult ptr %i.kn, %i.or
  %bound1436 = icmp ult ptr %i.oo, %i.oe
  %found.conflict437 = and i1 %bound0435, %bound1436
  %conflict.rdx438 = or i1 %conflict.rdx434, %found.conflict437
  %bound0439 = icmp ult ptr %i.nu, %6
  %bound1440 = icmp ult ptr %i.ol, %i.oh
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
  %wide.load451 = load <2 x i64>, ptr %i.ox, align 8, !tbaa !161, !alias.scope !4913
  %wide.load452 = load <2 x i64>, ptr %i.oz, align 8, !tbaa !161, !alias.scope !4913
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oy, i64 16
  store <2 x i64> %wide.load451, ptr %i.oy, align 8, !tbaa !161, !alias.scope !4914, !noalias !4915
  store <2 x i64> %wide.load452, ptr %i.pa, align 8, !tbaa !161, !alias.scope !4914, !noalias !4915
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.nt, i64 %i.ow ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  %wide.load453 = load <2 x i32>, ptr %i.pb, align 4, !tbaa !164, !alias.scope !4916
  %wide.load454 = load <2 x i32>, ptr %i.pc, align 4, !tbaa !164, !alias.scope !4916
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %index450 ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 8
  store <2 x i32> %wide.load453, ptr %i.pd, align 4, !tbaa !164, !alias.scope !4917, !noalias !4918
  store <2 x i32> %wide.load454, ptr %i.pe, align 4, !tbaa !164, !alias.scope !4917, !noalias !4918
  %index.next455 = add nuw i64 %index450, 4       ; 2 uses
  %i.pf = icmp eq i64 %index.next455, %n.vec448
  br i1 %i.pf, label %middle.block456, label %vector.body449, !llvm.loop !4866

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
  %i.pk = load i64, ptr %i.pi, align 8, !tbaa !161
  store i64 %i.pk, ptr %i.pj, align 8, !tbaa !161
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.nt, i64 %i.ph
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !164
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %indvars.iv.i.i108.ph
  store i32 %i.pm, ptr %i.pn, align 4, !tbaa !164
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
  %i.pt = load i64, ptr %i.pr, align 8, !tbaa !161
  store i64 %i.pt, ptr %i.ps, align 8, !tbaa !161
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.nt, i64 %i.pq
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !164
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %indvars.iv.i.i108
  store i32 %i.pv, ptr %i.pw, align 4, !tbaa !164
  %i.px = add i32 %.015.i.i.i109, 1
  %indvars.iv.next.i.i110 = add nuw nsw i64 %indvars.iv.i.i108, 1 ; 2 uses
  %i.py = zext i32 %i.px to i64                   ; 2 uses
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %i.py
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %indvars.iv.next.i.i110
  %i.qb = load i64, ptr %i.pz, align 8, !tbaa !161
  store i64 %i.qb, ptr %i.qa, align 8, !tbaa !161
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.nt, i64 %i.py
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !164
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %indvars.iv.next.i.i110
  store i32 %i.qd, ptr %i.qe, align 4, !tbaa !164
  %i.qf = add i32 %.015.i.i.i109, 2               ; 2 uses
  %indvars.iv.next.i.i110.1 = add nuw nsw i64 %indvars.iv.i.i108, 2
  %.not.i8.i.i111.1 = icmp eq i32 %i.qf, %i.kj
  br i1 %.not.i8.i.i111.1, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEjLj16EE17adjustFromLeftSibEjRS3_ji.exit112, label %scalar.ph425, !llvm.loop !4867

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
  %i.rf = getelementptr i8, ptr %i.kn, i64 %i.rb
  %i.rg = getelementptr i8, ptr %i.rf, i64 128    ; 2 uses
  %i.rh = getelementptr i8, ptr %i.kn, i64 %i.qv  ; 2 uses
  %bound0617 = icmp ult ptr %i.qu, %i.re
  %bound1618 = icmp ult ptr %i.ra, %i.qx
  %found.conflict619 = and i1 %bound0617, %bound1618
  %bound0620 = icmp ult ptr %i.qu, %i.rg
  %bound1621 = icmp ult ptr %i.qj, %i.qx
  %found.conflict622 = and i1 %bound0620, %bound1621
  %conflict.rdx623 = or i1 %found.conflict619, %found.conflict622
  %bound0624 = icmp ult ptr %i.qu, %i.rh
  %bound1625 = icmp ult ptr %i.kn, %i.qx
  %found.conflict626 = and i1 %bound0624, %bound1625
  %conflict.rdx627 = or i1 %conflict.rdx623, %found.conflict626
  %bound0628 = icmp ult ptr %i.ra, %i.rg
  %bound1629 = icmp ult ptr %i.qj, %i.re
  %found.conflict630 = and i1 %bound0628, %bound1629
  %conflict.rdx631 = or i1 %conflict.rdx627, %found.conflict630
  %bound0632 = icmp ult ptr %i.ra, %i.rh
  %bound1633 = icmp ult ptr %i.kn, %i.re
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
  %wide.load640 = load <2 x i64>, ptr %i.rm, align 8, !tbaa !161, !alias.scope !4919
  %wide.load641 = load <2 x i64>, ptr %i.rp, align 8, !tbaa !161, !alias.scope !4919
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ro, i64 16
  store <2 x i64> %wide.load640, ptr %i.ro, align 8, !tbaa !161, !alias.scope !4920, !noalias !4921
  store <2 x i64> %wide.load641, ptr %i.rq, align 8, !tbaa !161, !alias.scope !4920, !noalias !4921
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.qj, i64 %index639 ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 8
  %wide.load642 = load <2 x i32>, ptr %i.rr, align 4, !tbaa !164, !alias.scope !4922
  %wide.load643 = load <2 x i32>, ptr %i.rs, align 4, !tbaa !164, !alias.scope !4922
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.qk, i64 %i.rn ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 8
  store <2 x i32> %wide.load642, ptr %i.rt, align 4, !tbaa !164, !alias.scope !4923, !noalias !4924
  store <2 x i32> %wide.load643, ptr %i.ru, align 4, !tbaa !164, !alias.scope !4923, !noalias !4924
  %index.next644 = add nuw i64 %index639, 4       ; 2 uses
  %i.rv = icmp eq i64 %index.next644, %n.vec637
  br i1 %i.rv, label %middle.block645, label %vector.body638, !llvm.loop !4873

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
  %i.rz = load i64, ptr %i.rw, align 8, !tbaa !161
  store i64 %i.rz, ptr %i.ry, align 8, !tbaa !161
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %i.qj, i64 %indvars.iv.i31.i83.ph
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !164
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %i.qk, i64 %i.rx
  store i32 %i.sb, ptr %i.sc, align 4, !tbaa !164
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
  %i.sj = load i64, ptr %i.sg, align 8, !tbaa !161
  store i64 %i.sj, ptr %i.si, align 8, !tbaa !161
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.qj, i64 %indvars.iv.i31.i83
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !164
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %i.qk, i64 %i.sh
  store i32 %i.sl, ptr %i.sm, align 4, !tbaa !164
  %indvars.iv.next.i32.i85 = add nuw nsw i64 %indvars.iv.i31.i83, 1 ; 2 uses
  %i.sn = add i32 %.01214.i.i.i84, 1
  %i.so = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %indvars.iv.next.i32.i85
  %i.sp = zext i32 %i.sn to i64                   ; 2 uses
  %i.sq = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %i.sp
  %i.sr = load i64, ptr %i.so, align 8, !tbaa !161
  store i64 %i.sr, ptr %i.sq, align 8, !tbaa !161
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.qj, i64 %indvars.iv.next.i32.i85
  %i.st = load i32, ptr %i.ss, align 4, !tbaa !164
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.qk, i64 %i.sp
  store i32 %i.st, ptr %i.su, align 4, !tbaa !164
  %indvars.iv.next.i32.i85.1 = add nuw nsw i64 %indvars.iv.i31.i83, 2 ; 2 uses
  %i.sv = add i32 %.01214.i.i.i84, 2
  %.not.i.i33.i86.1 = icmp eq i64 %indvars.iv.next.i32.i85.1, %i.ql
  br i1 %.not.i.i33.i86.1, label %_ZN4llvm15IntervalMapImpl8NodeBaseINS0_7NodeRefEjLj16EE4copyILj16EEEvRKNS1_IS2_jXT_EEEjjj.exit.i.i87, label %scalar.ph614, !llvm.loop !4874

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
  %wide.load577 = load <2 x i64>, ptr %i.tr, align 8, !tbaa !161, !alias.scope !4925
  %wide.load578 = load <2 x i64>, ptr %i.tt, align 8, !tbaa !161, !alias.scope !4925
  %i.tu = getelementptr inbounds nuw i8, ptr %i.ts, i64 16
  store <2 x i64> %wide.load577, ptr %i.ts, align 8, !tbaa !161, !alias.scope !4926, !noalias !4927
  store <2 x i64> %wide.load578, ptr %i.tu, align 8, !tbaa !161, !alias.scope !4926, !noalias !4927
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %i.sw, i64 %i.tq ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 8
  %wide.load579 = load <2 x i32>, ptr %i.tv, align 4, !tbaa !164, !alias.scope !4928
  %wide.load580 = load <2 x i32>, ptr %i.tw, align 4, !tbaa !164, !alias.scope !4928
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %i.sw, i64 %index576 ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 8
  store <2 x i32> %wide.load579, ptr %i.tx, align 4, !tbaa !164, !alias.scope !4929, !noalias !4930
  store <2 x i32> %wide.load580, ptr %i.ty, align 4, !tbaa !164, !alias.scope !4929, !noalias !4930
  %index.next581 = add nuw i64 %index576, 4       ; 2 uses
  %i.tz = icmp eq i64 %index.next581, %n.vec574
  br i1 %i.tz, label %middle.block582, label %vector.body575, !llvm.loop !4880

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
  %i.ud = load i64, ptr %i.ub, align 8, !tbaa !161
  store i64 %i.ud, ptr %i.uc, align 8, !tbaa !161
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.sw, i64 %indvars.iv131.ph
  %i.uf = load i32, ptr %i.ue, align 4, !tbaa !164
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %i.sw, i64 %indvars.iv6.i.i90.ph
  store i32 %i.uf, ptr %i.ug, align 4, !tbaa !164
  %indvars.iv.next132.prol = add nuw nsw i64 %indvars.iv131.ph, 1
  %indvars.iv.next7.i.i92.prol = or disjoint i64 %indvars.iv6.i.i90.ph, 1
  br label %scalar.ph551.prol.loopexit

scalar.ph551.prol.loopexit:                       ; preds = %scalar.ph551.prol, %scalar.ph551.preheader
  %indvars.iv131.unr = phi i64 [ %indvars.iv131.ph, %scalar.ph551.preheader ], [ %indvars.iv.next132.prol, %scalar.ph551.prol ]
end_hunk_2
begin_hunk_3_@llvm.scmp.i32.i64
!4612 = distinct !{!4612, i1 true, !"_ZN4llvm11IntervalMapIjbLj21ENS_15IntervalMapInfoIjEEE14const_iteratorppEi"}
!4613 = distinct !{!4613, !4612, !"_ZN4llvm11IntervalMapIjbLj21ENS_15IntervalMapInfoIjEEE14const_iteratorppEi: argument 0"}
!4614 = distinct !{!4614, i1 true, !"_ZNK4llvm11IntervalMapIjbLj21ENS_15IntervalMapInfoIjEEE3endEv"}
!4615 = distinct !{!4615, !4614, !"_ZNK4llvm11IntervalMapIjbLj21ENS_15IntervalMapInfoIjEEE3endEv: argument 0:h.rot"}
!4616 = distinct !{!4616, !197}
!4617 = !{!4609}
!4618 = !{!4611}
!4619 = !{!"_ZTSN4llvm18raw_string_ostreamE", !646, i64 0, !1091, i64 48}
!4620 = !{!4619, !1091, i64 48}
!4621 = !{!4613}
!4622 = !{!4615}
!4623 = distinct !{!4623, i1 true, !"_ZN4llvm11IntervalMapIjbLj21ENS_15IntervalMapInfoIjEEE5beginEv"}
!4624 = distinct !{!4624, !4623, !"_ZN4llvm11IntervalMapIjbLj21ENS_15IntervalMapInfoIjEEE5beginEv: argument 0"}
!4625 = distinct !{!4625, i1 true, !"_ZN4llvm11IntervalMapIjbLj21ENS_15IntervalMapInfoIjEEE3endEv"}
!4626 = distinct !{!4626, !4625, !"_ZN4llvm11IntervalMapIjbLj21ENS_15IntervalMapInfoIjEEE3endEv: argument 0:pre.rot"}
!4627 = distinct !{!4627, i1 true, !"_ZN4llvm11IntervalMapIjbLj21ENS_15IntervalMapInfoIjEEE14const_iteratorppEi"}
!4628 = distinct !{!4628, !4627, !"_ZN4llvm11IntervalMapIjbLj21ENS_15IntervalMapInfoIjEEE14const_iteratorppEi: argument 0"}
!4629 = distinct !{!4629, i1 true, !"_ZN4llvm11IntervalMapIjbLj21ENS_15IntervalMapInfoIjEEE3endEv"}
!4630 = distinct !{!4630, !4629, !"_ZN4llvm11IntervalMapIjbLj21ENS_15IntervalMapInfoIjEEE3endEv: argument 0:h.rot"}
!4631 = distinct !{!4631, !197}
!4632 = !{!4624}
!4633 = !{!4626}
!4634 = !{!1324, !1324, i64 0}
!4635 = !{!4628}
!4636 = !{!4630}
!4637 = distinct !{!4637, !197}
!4638 = distinct !{!4638, !197}
!4639 = distinct !{!4639, !197}
!4640 = distinct !{!4640, !197}
!4641 = distinct !{!4641, !197}
!4642 = distinct !{!4642, !197}
!4643 = distinct !{!4643, !197}
!4644 = !{!"_ZTSSt4pairIPvmE", !130, i64 0, !156, i64 8}
!4645 = !{!4644, !130, i64 0}
!4646 = !{!4644, !156, i64 8}
!4647 = distinct !{!4647, i1 true, !"_ZN4llvm11IntervalMapIjbLj21ENS_15IntervalMapInfoIjEEE4findEj"}
!4648 = distinct !{!4648, !4647, !"_ZN4llvm11IntervalMapIjbLj21ENS_15IntervalMapInfoIjEEE4findEj: argument 0"}
!4649 = distinct !{!4649, i1 true, !"_ZN4llvm11IntervalMapIjbLj21ENS_15IntervalMapInfoIjEEE3endEv"}
!4650 = distinct !{!4650, !4649, !"_ZN4llvm11IntervalMapIjbLj21ENS_15IntervalMapInfoIjEEE3endEv: argument 0"}
!4651 = distinct !{!4651, i1 false, !"LVerDomain"}
!4652 = distinct !{!4652, !4651}
!4653 = distinct !{!4653, !4651}
!4654 = distinct !{!4654, !197, !1284, !1285}
!4655 = distinct !{!4655, !197, !1284}
!4656 = !{!4648}
!4657 = !{!4650}
!4658 = !{!4652}
!4659 = !{!4653}
!4660 = distinct !{!4660, i1 true, !"_ZN4llvm11IntervalMapIjbLj21ENS_15IntervalMapInfoIjEEE4findEj"}
!4661 = distinct !{!4661, !4660, !"_ZN4llvm11IntervalMapIjbLj21ENS_15IntervalMapInfoIjEEE4findEj: argument 0"}
!4662 = distinct !{!4662, i1 true, !"_ZN4llvm11IntervalMapIjbLj21ENS_15IntervalMapInfoIjEEE4findEj"}
!4663 = distinct !{!4663, !4662, !"_ZN4llvm11IntervalMapIjbLj21ENS_15IntervalMapInfoIjEEE4findEj: argument 0:thread"}
!4664 = !{!4661}
!4665 = !{!4663}
!4666 = distinct !{!4666, i1 false, !"LVerDomain"}
!4667 = distinct !{!4667, !4666}
!4668 = distinct !{!4668, !4666}
!4669 = distinct !{!4669, !197, !1284, !1285}
!4670 = distinct !{!4670, !197, !1284}
!4671 = distinct !{!4671, i1 false, !"LVerDomain"}
!4672 = distinct !{!4672, !4671}
!4673 = distinct !{!4673, !4671}
!4674 = distinct !{!4674, !197, !1284, !1285}
!4675 = distinct !{!4675, !197, !1284}
!4676 = !{!4667}
!4677 = !{!4668}
!4678 = !{!4672}
!4679 = !{!4673}
!4680 = distinct !{!4680, !197}
!4681 = distinct !{!4681, !197}
!4682 = distinct !{!4682, !197}
!4683 = distinct !{!4683, !197}
!4684 = distinct !{!4684, i1 false, !"LVerDomain"}
!4685 = distinct !{!4685, !4684}
!4686 = distinct !{!4686, !4684}
!4687 = distinct !{!4687, !197, !1284, !1285}
!4688 = distinct !{!4688, !197, !1284}
!4689 = distinct !{!4689, i1 false, !"LVerDomain"}
!4690 = distinct !{!4690, !4689}
!4691 = distinct !{!4691, !4689}
!4692 = distinct !{!4692, !197, !1284, !1285}
!4693 = distinct !{!4693, !197, !1284}
!4694 = !{!4685}
!4695 = !{!4686}
!4696 = !{!4690}
!4697 = !{!4691}
!4698 = distinct !{!4698, !197}
!4699 = distinct !{!4699, i1 false, !"LVerDomain"}
!4700 = distinct !{!4700, !4699}
!4701 = distinct !{!4701, !4699}
!4702 = distinct !{!4702, !197, !1284, !1285}
!4703 = distinct !{!4703, !197, !1284}
!4704 = !{!4700}
!4705 = !{!4701}
!4706 = distinct !{!4706, !197}
!4707 = distinct !{!4707, i1 false, !"LVerDomain"}
!4708 = distinct !{!4708, !4707}
!4709 = distinct !{!4709, !4707}
!4710 = distinct !{!4710, !4707}
!4711 = distinct !{!4711, !4707}
!4712 = distinct !{!4712, !197, !1284, !1285}
!4713 = distinct !{!4713, !197, !1284}
!4714 = distinct !{!4714, i1 false, !"LVerDomain"}
!4715 = distinct !{!4715, !4714}
!4716 = distinct !{!4716, !4714}
!4717 = distinct !{!4717, !4714}
!4718 = distinct !{!4718, !4714}
!4719 = distinct !{!4719, !197, !1284, !1285}
!4720 = distinct !{!4720, !197, !1284}
!4721 = !{!4708}
!4722 = !{!4709}
!4723 = !{!4711, !4708, !4710}
!4724 = !{!4710}
!4725 = !{!4711}
!4726 = !{!4708, !4710}
!4727 = !{!4715}
!4728 = !{!4716}
!4729 = !{!4718, !4715, !4717}
!4730 = !{!4717}
!4731 = !{!4718}
!4732 = !{!4715, !4717}
!4733 = distinct !{!4733, !197}
!4734 = distinct !{!4734, i1 false, !"LVerDomain"}
!4735 = distinct !{!4735, !4734}
!4736 = distinct !{!4736, !4734}
!4737 = distinct !{!4737, !197, !1284, !1285}
!4738 = distinct !{!4738, !197, !1284}
!4739 = distinct !{!4739, i1 false, !"LVerDomain"}
!4740 = distinct !{!4740, !4739}
!4741 = distinct !{!4741, !4739}
!4742 = distinct !{!4742, !197, !1284, !1285}
!4743 = distinct !{!4743, !197, !1284}
!4744 = distinct !{!4744, i1 false, !"LVerDomain"}
!4745 = distinct !{!4745, !4744}
!4746 = distinct !{!4746, !4744}
!4747 = distinct !{!4747, !197, !1284, !1285}
!4748 = distinct !{!4748, !197, !1284}
!4749 = distinct !{!4749, !197, !1284, !1285}
!4750 = distinct !{!4750, !197, !1285, !1284}
!4751 = distinct !{!4751, !197}
!4752 = distinct !{!4752, !197}
!4753 = distinct !{!4753, i1 false, !"LVerDomain"}
!4754 = distinct !{!4754, !4753}
!4755 = distinct !{!4755, !4753}
!4756 = distinct !{!4756, !197, !1284, !1285}
!4757 = distinct !{!4757, !197, !1284}
!4758 = distinct !{!4758, i1 false, !"LVerDomain"}
!4759 = distinct !{!4759, !4758}
!4760 = distinct !{!4760, !4758}
!4761 = distinct !{!4761, !197, !1284, !1285}
!4762 = distinct !{!4762, !197, !1284}
!4763 = distinct !{!4763, i1 false, !"LVerDomain"}
!4764 = distinct !{!4764, !4763}
!4765 = distinct !{!4765, !4763}
!4766 = distinct !{!4766, !197, !1284, !1285}
!4767 = distinct !{!4767, !197, !1284}
!4768 = distinct !{!4768, !197, !1284, !1285}
!4769 = distinct !{!4769, !197, !1285, !1284}
!4770 = distinct !{!4770, !197}
!4771 = !{!4735}
!4772 = !{!4736}
!4773 = !{!4740}
!4774 = !{!4741}
!4775 = !{!4745}
!4776 = !{!4746}
!4777 = !{!4754}
!4778 = !{!4755}
!4779 = !{!4759}
!4780 = !{!4760}
!4781 = !{!4764}
!4782 = !{!4765}
!4783 = distinct !{!4783, i1 false, !"LVerDomain"}
!4784 = distinct !{!4784, !4783}
!4785 = distinct !{!4785, !4783}
!4786 = distinct !{!4786, !4783}
!4787 = distinct !{!4787, !4783}
!4788 = distinct !{!4788, !197, !1284, !1285}
!4789 = distinct !{!4789, !197, !1284}
!4790 = distinct !{!4790, i1 false, !"LVerDomain"}
!4791 = distinct !{!4791, !4790}
!4792 = distinct !{!4792, !4790}
!4793 = distinct !{!4793, !4790}
!4794 = distinct !{!4794, !4790}
!4795 = distinct !{!4795, !197, !1284, !1285}
!4796 = distinct !{!4796, !197, !1284}
!4797 = distinct !{!4797, i1 false, !"LVerDomain"}
!4798 = distinct !{!4798, !4797}
!4799 = distinct !{!4799, !4797}
!4800 = distinct !{!4800, !4797}
!4801 = distinct !{!4801, !4797}
!4802 = distinct !{!4802, !197, !1284, !1285}
!4803 = distinct !{!4803, !197, !1284}
!4804 = !{!4784}
!4805 = !{!4785}
!4806 = !{!4787, !4784, !4786}
!4807 = !{!4786}
!4808 = !{!4787}
!4809 = !{!4784, !4786}
!4810 = !{!4791}
!4811 = !{!4792}
!4812 = !{!4794, !4793, !4791}
!4813 = !{!4793}
!4814 = !{!4794}
!4815 = !{!4793, !4791}
!4816 = !{!4798}
!4817 = !{!4799}
!4818 = !{!4801, !4798, !4800}
!4819 = !{!4800}
!4820 = !{!4801}
!4821 = !{!4798, !4800}
!4822 = distinct !{!4822, !197}
!4823 = distinct !{!4823, !197}
!4824 = distinct !{!4824, i1 false, !"LVerDomain"}
!4825 = distinct !{!4825, !4824}
!4826 = distinct !{!4826, !4824}
!4827 = distinct !{!4827, !4824}
!4828 = distinct !{!4828, !4824}
!4829 = distinct !{!4829, !197, !1284, !1285}
!4830 = distinct !{!4830, !197, !1284}
!4831 = distinct !{!4831, i1 false, !"LVerDomain"}
!4832 = distinct !{!4832, !4831}
!4833 = distinct !{!4833, !4831}
!4834 = distinct !{!4834, !4831}
!4835 = distinct !{!4835, !4831}
!4836 = distinct !{!4836, !197, !1284, !1285}
!4837 = distinct !{!4837, !197, !1284}
!4838 = distinct !{!4838, i1 false, !"LVerDomain"}
!4839 = distinct !{!4839, !4838}
!4840 = distinct !{!4840, !4838}
!4841 = distinct !{!4841, !4838}
!4842 = distinct !{!4842, !4838}
!4843 = distinct !{!4843, !197, !1284, !1285}
!4844 = distinct !{!4844, !197, !1284}
!4845 = distinct !{!4845, i1 false, !"LVerDomain"}
!4846 = distinct !{!4846, !4845}
!4847 = distinct !{!4847, !4845}
!4848 = distinct !{!4848, !4845}
!4849 = distinct !{!4849, !4845}
!4850 = distinct !{!4850, !197, !1284, !1285}
!4851 = distinct !{!4851, !197, !1284}
!4852 = distinct !{!4852, !197}
!4853 = distinct !{!4853, !197}
!4854 = distinct !{!4854, i1 false, !"LVerDomain"}
!4855 = distinct !{!4855, !4854}
!4856 = distinct !{!4856, !4854}
!4857 = distinct !{!4857, !4854}
!4858 = distinct !{!4858, !4854}
!4859 = distinct !{!4859, !197, !1284, !1285}
!4860 = distinct !{!4860, !197, !1284}
!4861 = distinct !{!4861, i1 false, !"LVerDomain"}
!4862 = distinct !{!4862, !4861}
!4863 = distinct !{!4863, !4861}
!4864 = distinct !{!4864, !4861}
!4865 = distinct !{!4865, !4861}
!4866 = distinct !{!4866, !197, !1284, !1285}
!4867 = distinct !{!4867, !197, !1284}
!4868 = distinct !{!4868, i1 false, !"LVerDomain"}
!4869 = distinct !{!4869, !4868}
!4870 = distinct !{!4870, !4868}
!4871 = distinct !{!4871, !4868}
!4872 = distinct !{!4872, !4868}
!4873 = distinct !{!4873, !197, !1284, !1285}
!4874 = distinct !{!4874, !197, !1284}
!4875 = distinct !{!4875, i1 false, !"LVerDomain"}
!4876 = distinct !{!4876, !4875}
!4877 = distinct !{!4877, !4875}
!4878 = distinct !{!4878, !4875}
!4879 = distinct !{!4879, !4875}
!4880 = distinct !{!4880, !197, !1284, !1285}
!4881 = distinct !{!4881, !197, !1284}
!4882 = distinct !{!4882, !197}
!4883 = !{!4825}
!4884 = !{!4826}
!4885 = !{!4828, !4825, !4827}
!4886 = !{!4827}
!4887 = !{!4828}
!4888 = !{!4825, !4827}
!4889 = !{!4832}
!4890 = !{!4833}
!4891 = !{!4835, !4834, !4832}
!4892 = !{!4834}
!4893 = !{!4835}
!4894 = !{!4834, !4832}
!4895 = !{!4839}
!4896 = !{!4840}
!4897 = !{!4842, !4841, !4839}
!4898 = !{!4841}
!4899 = !{!4842}
!4900 = !{!4841, !4839}
!4901 = !{!4846}
!4902 = !{!4847}
!4903 = !{!4849, !4846, !4848}
!4904 = !{!4848}
!4905 = !{!4849}
!4906 = !{!4846, !4848}
!4907 = !{!4855}
!4908 = !{!4856}
!4909 = !{!4858, !4855, !4857}
!4910 = !{!4857}
!4911 = !{!4858}
!4912 = !{!4855, !4857}
!4913 = !{!4862}
!4914 = !{!4863}
!4915 = !{!4865, !4864, !4862}
!4916 = !{!4864}
!4917 = !{!4865}
!4918 = !{!4864, !4862}
!4919 = !{!4869}
!4920 = !{!4870}
!4921 = !{!4872, !4871, !4869}
!4922 = !{!4871}
!4923 = !{!4872}
!4924 = !{!4871, !4869}
!4925 = !{!4876}
!4926 = !{!4877}
!4927 = !{!4879, !4876, !4878}
!4928 = !{!4878}
!4929 = !{!4879}
!4930 = !{!4876, !4878}
!4931 = distinct !{!4931, !197}
!4932 = !{i64 0, i64 8, !630, i64 8, i64 4, !164, i64 12, i64 4, !164}
!4933 = distinct !{!4933, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv"}
!4934 = distinct !{!4934, !4933, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6getRepEv: argument 0"}
!4935 = distinct !{!4935, i1 true, !"_ZNK4llvm8DenseMapIPNS_8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv"}
!4936 = distinct !{!4936, !4935, !"_ZNK4llvm8DenseMapIPNS_8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE6getRepEv: argument 0"}
!4937 = !{!"_ZTSZN12_GLOBAL__N_122AANoAliasAddrSpaceImpl8manifestERN4llvm10AttributorEEUlRKNS1_3UseERbE_", !1186, i64 0, !467, i64 8, !1324, i64 16, !787, i64 24}
!4938 = !{!4937, !1186, i64 0}
!4939 = !{!4937, !467, i64 8}
!4940 = !{!4936, !4934}
!4941 = !{!4937, !1324, i64 16}
!4942 = !{!4937, !787, i64 24}
!4943 = distinct !{!4943, i1 true, !"_ZNSt7__cxx119to_stringEm"}
!4944 = distinct !{!4944, !4943, !"_ZNSt7__cxx119to_stringEm: argument 0"}
!4945 = distinct !{!4945, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!4946 = distinct !{!4946, !4945, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!4947 = distinct !{!4947, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!4948 = distinct !{!4948, !4947, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!4949 = !{!4944}
!4950 = !{!4946}
!4951 = !{!4948}
!4952 = distinct !{!4952, i1 true, !"_ZN12_GLOBAL__N_120AAAllocationInfoImpl25findInitialAllocationSizeEPN4llvm11InstructionERKNS1_10DataLayoutE"}
!4953 = distinct !{!4953, !4952, !"_ZN12_GLOBAL__N_120AAAllocationInfoImpl25findInitialAllocationSizeEPN4llvm11InstructionERKNS1_10DataLayoutE: argument 0"}
!4954 = !{!4953}
!4955 = !{!1336, !138, i64 8}
!4956 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIjvEE", !131, i64 0}
!4957 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIjLb1EEE", !4956, i64 0}
!4958 = !{!"_ZTSN4llvm15SmallVectorImplIjEE", !4957, i64 0}
!4959 = !{!"_ZTSN4llvm18SmallVectorStorageIjLj4EEE", !126, i64 0}
!4960 = !{!"_ZTSN4llvm11SmallVectorIjLj4EEE", !4958, i64 0, !4959, i64 16}
!4961 = !{!"_ZTSSt4lessIjE"}
!4962 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIjEE", !4961, i64 0}
!4963 = !{!"_ZTSNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE13_Rb_tree_implIS3_Lb1EEE", !4962, i64 0, !202, i64 8}
!4964 = !{!"_ZTSSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE", !4963, i64 0}
!4965 = !{!"_ZTSSt3setIjSt4lessIjESaIjEE", !4964, i64 0}
!4966 = !{!"_ZTSN4llvm8SmallSetIjLj4ESt4lessIjEEE", !4960, i64 0, !4965, i64 32}
!4967 = !{!"_ZTSSt4pairIN4llvm2AA7RangeTyENS0_8SmallSetIjLj4ESt4lessIjEEEE", !195, i64 0, !4966, i64 16}
!4968 = !{!4967, !156, i64 0}
!4969 = !{!4967, !156, i64 8}
!4970 = distinct !{!4970, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10IRPositionENS_11SmallVectorISt8functionIFSt8optionalIPNS_5ValueEERKS2_PKNS_17AbstractAttributeERbEELj1EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SH_EEEES2_SH_SJ_SM_E6getRepEv"}
!4971 = distinct !{!4971, !4970, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10IRPositionENS_11SmallVectorISt8functionIFSt8optionalIPNS_5ValueEERKS2_PKNS_17AbstractAttributeERbEELj1EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SH_EEEES2_SH_SJ_SM_E6getRepEv: argument 0"}
!4972 = distinct !{!4972, i1 true, !"_ZNK4llvm8DenseMapINS_10IRPositionENS_11SmallVectorISt8functionIFSt8optionalIPNS_5ValueEERKS1_PKNS_17AbstractAttributeERbEELj1EEENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_SG_EEE6getRepEv"}
!4973 = distinct !{!4973, !4972, !"_ZNK4llvm8DenseMapINS_10IRPositionENS_11SmallVectorISt8functionIFSt8optionalIPNS_5ValueEERKS1_PKNS_17AbstractAttributeERbEELj1EEENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_SG_EEE6getRepEv: argument 0"}
!4974 = !{!4973, !4971}
!4975 = distinct !{!4975, i1 true, !"_ZNK4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEE6lookupERKS3_"}
!4976 = distinct !{!4976, !4975, !"_ZNK4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEE6lookupERKS3_: argument 0"}
!4977 = distinct !{!4977, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E7find_asIS5_EENS_16DenseMapIteratorISC_S6_SE_SH_Lb1EEERKT_"}
!4978 = distinct !{!4978, !4977, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E7find_asIS5_EENS_16DenseMapIteratorISC_S6_SE_SH_Lb1EEERKT_: argument 0"}
!4979 = distinct !{!4979, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E6getRepEv"}
!4980 = distinct !{!4980, !4979, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E6getRepEv: argument 0"}
!4981 = distinct !{!4981, i1 true, !"_ZNK4llvm8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS4_NS_3sys10SmartMutexILb0EEEEEEES5_NS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_S5_EEE6getRepEv"}
!4982 = distinct !{!4982, !4981, !"_ZNK4llvm8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS4_NS_3sys10SmartMutexILb0EEEEEEES5_NS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_S5_EEE6getRepEv: argument 0"}
!4983 = distinct !{null}
!4984 = distinct !{!4984, i1 true, !"_ZNK4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEE4WrapES3_"}
!4985 = distinct !{!4985, !4984, !"_ZNK4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEE4WrapES3_: argument 0"}
!4986 = !{!4976}
!4987 = !{!4982, !4980, !4978, !4976}
!4988 = !{!4978, !4976}
!4989 = !{!4985}
!4990 = distinct !{!4990, !197}
!4991 = distinct !{!4991, !197}
!4992 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKNS_8MetadataENS_13TrackingMDRefEEE", !130, i64 0}
!4993 = !{!"_ZTSN4llvm8DenseMapIPKNS_8MetadataENS_13TrackingMDRefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEE", !4992, i64 0, !144, i64 8, !127, i64 16, !127, i64 20}
!4994 = !{!4993, !127, i64 20}
!4995 = !{!4993, !4992, i64 0}
!4996 = !{!4993, !144, i64 8}
!4997 = !{!"_ZTSN4llvm13TrackingMDRefE", !1093, i64 0}
!4998 = !{!4997, !1093, i64 0}
!4999 = distinct !{!4999, i1 true, !"_ZNK4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEE4WrapES3_"}
!5000 = distinct !{!5000, !4999, !"_ZNK4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEE4WrapES3_: argument 0"}
!5001 = !{!5000}
!5002 = distinct !{!5002, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E6getRepEv"}
!5003 = distinct !{!5003, !5002, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E6getRepEv: argument 0"}
!5004 = distinct !{!5004, i1 true, !"_ZNK4llvm8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS4_NS_3sys10SmartMutexILb0EEEEEEES5_NS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_S5_EEE6getRepEv"}
!5005 = distinct !{!5005, !5004, !"_ZNK4llvm8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS4_NS_3sys10SmartMutexILb0EEEEEEES5_NS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_S5_EEE6getRepEv: argument 0"}
!5006 = !{!5005, !5003}
!5007 = distinct !{!5007, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E6getRepEv"}
!5008 = distinct !{!5008, !5007, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E6getRepEv: argument 0"}
!5009 = distinct !{!5009, i1 true, !"_ZNK4llvm8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS4_NS_3sys10SmartMutexILb0EEEEEEES5_NS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_S5_EEE6getRepEv"}
!5010 = distinct !{!5010, !5009, !"_ZNK4llvm8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS4_NS_3sys10SmartMutexILb0EEEEEEES5_NS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_S5_EEE6getRepEv: argument 0"}
!5011 = !{!5010, !5008}
!5012 = distinct !{!5012, !197}
!5013 = distinct !{null, null}
!5014 = distinct !{null}
!5015 = distinct !{!5015, !197}
!5016 = distinct !{!5016, !197}
!5017 = distinct !{!5017, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E6getRepEv"}
!5018 = distinct !{!5018, !5017, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E6getRepEv: argument 0"}
!5019 = distinct !{!5019, i1 true, !"_ZNK4llvm8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS4_NS_3sys10SmartMutexILb0EEEEEEES5_NS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_S5_EEE6getRepEv"}
!5020 = distinct !{!5020, !5019, !"_ZNK4llvm8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS4_NS_3sys10SmartMutexILb0EEEEEEES5_NS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_S5_EEE6getRepEv: argument 0"}
!5021 = distinct !{null, null}
!5022 = !{!5020, !5018}
!5023 = distinct !{!5023, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E4findERKSC_"}
!5024 = distinct !{!5024, !5023, !"_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E4findERKSC_: argument 0"}
!5025 = distinct !{!5025, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E7find_asISC_EENS_16DenseMapIteratorISC_S6_SE_SH_Lb0EEERKT_"}
!5026 = distinct !{!5026, !5025, !"_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E7find_asISC_EENS_16DenseMapIteratorISC_S6_SE_SH_Lb0EEERKT_: argument 0"}
!5027 = distinct !{!5027, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E6getRepEv"}
!5028 = distinct !{!5028, !5027, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E6getRepEv: argument 0"}
!5029 = distinct !{!5029, i1 true, !"_ZNK4llvm8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS4_NS_3sys10SmartMutexILb0EEEEEEES5_NS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_S5_EEE6getRepEv"}
!5030 = distinct !{!5030, !5029, !"_ZNK4llvm8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS4_NS_3sys10SmartMutexILb0EEEEEEES5_NS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_S5_EEE6getRepEv: argument 0"}
!5031 = distinct !{null, null}
!5032 = distinct !{!5032, i1 true, !"_ZSt9make_pairIRPKN4llvm5ValueENS0_14WeakTrackingVHEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS7_INS8_IT0_E4typeEE6__typeEEOS9_OSE_"}
!5033 = distinct !{!5033, !5032, !"_ZSt9make_pairIRPKN4llvm5ValueENS0_14WeakTrackingVHEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS7_INS8_IT0_E4typeEE6__typeEEOS9_OSE_: argument 0"}
!5034 = !{!5030, !5028, !5026, !5024}
!5035 = !{!5026, !5024}
!5036 = !{!5033}
!5037 = distinct !{!5037, i1 true, !"_ZNK4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEE4WrapES3_"}
!5038 = distinct !{!5038, !5037, !"_ZNK4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEE4WrapES3_: argument 0"}
!5039 = distinct !{!5039, i1 true, !"_ZSt9make_pairIN4llvm18ValueMapCallbackVHIPKNS0_5ValueENS0_14WeakTrackingVHENS0_14ValueMapConfigIS4_NS0_3sys10SmartMutexILb0EEEEEEES5_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSD_INSE_IT0_E4typeEE6__typeEEOSF_OSK_"}
!5040 = distinct !{!5040, !5039, !"_ZSt9make_pairIN4llvm18ValueMapCallbackVHIPKNS0_5ValueENS0_14WeakTrackingVHENS0_14ValueMapConfigIS4_NS0_3sys10SmartMutexILb0EEEEEEES5_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSD_INSE_IT0_E4typeEE6__typeEEOSF_OSK_: argument 0"}
!5041 = distinct !{null, null, null}
!5042 = distinct !{null, null}
!5043 = distinct !{!5043, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E6insertEOSt4pairISC_S6_E"}
!5044 = distinct !{!5044, !5043, !"_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E6insertEOSt4pairISC_S6_E: argument 0"}
!5045 = distinct !{!5045, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E16try_emplace_implISC_JS6_EEESt4pairINS_16DenseMapIteratorISC_S6_SE_SH_Lb0EEEbEOT_DpOT0_"}
!5046 = distinct !{!5046, !5045, !"_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E16try_emplace_implISC_JS6_EEESt4pairINS_16DenseMapIteratorISC_S6_SE_SH_Lb0EEEbEOT_DpOT0_: argument 0"}
!5047 = distinct !{null, null}
!5048 = distinct !{!5048, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E12makeIteratorEPSH_"}
!5049 = distinct !{!5049, !5048, !"_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E12makeIteratorEPSH_: argument 0"}
!5050 = !{!5038}
!5051 = !{!5040}
!5052 = !{!5046, !5044}
!5053 = !{!5049, !5046, !5044}
!5054 = !{!"_ZTSN4llvm16DenseMapIteratorINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS4_NS_3sys10SmartMutexILb0EEEEEEES5_NS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_S5_EELb0EEE", !1338, i64 0, !1338, i64 8, !1338, i64 16, !144, i64 24}
!5055 = !{!"_ZTSN4llvm20ValueMapIteratorImplINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEES5_Lb0EEE", !5054, i64 0}
!5056 = !{!"_ZTSSt4pairIN4llvm20ValueMapIteratorImplINS0_8DenseMapINS0_18ValueMapCallbackVHIPKNS0_5ValueENS0_14WeakTrackingVHENS0_14ValueMapConfigIS6_NS0_3sys10SmartMutexILb0EEEEEEES7_NS0_12DenseMapInfoISD_vEENS0_6detail12DenseMapPairISD_S7_EEEES6_Lb0EEEbE", !5055, i64 0, !138, i64 32}
!5057 = !{!5056, !138, i64 32}
!5058 = distinct !{!5058, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E6getRepEv"}
!5059 = distinct !{!5059, !5058, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E6getRepEv: argument 0"}
!5060 = distinct !{!5060, i1 true, !"_ZNK4llvm8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS4_NS_3sys10SmartMutexILb0EEEEEEES5_NS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_S5_EEE6getRepEv"}
!5061 = distinct !{!5061, !5060, !"_ZNK4llvm8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS4_NS_3sys10SmartMutexILb0EEEEEEES5_NS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_S5_EEE6getRepEv: argument 0"}
!5062 = !{!5061, !5059}
!5063 = distinct !{!5063, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10IRPositionENS_11SmallVectorISt8functionIFSt8optionalIPNS_5ValueEERKS2_PKNS_17AbstractAttributeERbEELj1EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SH_EEEES2_SH_SJ_SM_E6getRepEv"}
!5064 = distinct !{!5064, !5063, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10IRPositionENS_11SmallVectorISt8functionIFSt8optionalIPNS_5ValueEERKS2_PKNS_17AbstractAttributeERbEELj1EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SH_EEEES2_SH_SJ_SM_E6getRepEv: argument 0"}
!5065 = distinct !{!5065, i1 true, !"_ZNK4llvm8DenseMapINS_10IRPositionENS_11SmallVectorISt8functionIFSt8optionalIPNS_5ValueEERKS1_PKNS_17AbstractAttributeERbEELj1EEENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_SG_EEE6getRepEv"}
!5066 = distinct !{!5066, !5065, !"_ZNK4llvm8DenseMapINS_10IRPositionENS_11SmallVectorISt8functionIFSt8optionalIPNS_5ValueEERKS1_PKNS_17AbstractAttributeERbEELj1EEENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_SG_EEE6getRepEv: argument 0"}
!5067 = !{!5066, !5064}
!5068 = distinct !{null, null}
!5069 = distinct !{!5069, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10IRPositionENS_11SmallVectorISt8functionIFSt8optionalIPNS_5ValueEERKS2_PKNS_17AbstractAttributeERbEELj1EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SH_EEEES2_SH_SJ_SM_E6getRepEv"}
!5070 = distinct !{!5070, !5069, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10IRPositionENS_11SmallVectorISt8functionIFSt8optionalIPNS_5ValueEERKS2_PKNS_17AbstractAttributeERbEELj1EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SH_EEEES2_SH_SJ_SM_E6getRepEv: argument 0"}
!5071 = distinct !{!5071, i1 true, !"_ZNK4llvm8DenseMapINS_10IRPositionENS_11SmallVectorISt8functionIFSt8optionalIPNS_5ValueEERKS1_PKNS_17AbstractAttributeERbEELj1EEENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_SG_EEE6getRepEv"}
!5072 = distinct !{!5072, !5071, !"_ZNK4llvm8DenseMapINS_10IRPositionENS_11SmallVectorISt8functionIFSt8optionalIPNS_5ValueEERKS1_PKNS_17AbstractAttributeERbEELj1EEENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_SG_EEE6getRepEv: argument 0"}
!5073 = !{!5072, !5070}
!5074 = !{i64 0, i64 20, !161}
!5075 = !{!1362, !467, i64 8}
!5076 = !{!1365, !467, i64 8}
!5077 = distinct !{!5077, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10IRPositionENS_11SmallVectorISt8functionIFSt8optionalIPNS_5ValueEERKS2_PKNS_17AbstractAttributeERbEELj1EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SH_EEEES2_SH_SJ_SM_E6getRepEv"}
!5078 = distinct !{!5078, !5077, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10IRPositionENS_11SmallVectorISt8functionIFSt8optionalIPNS_5ValueEERKS2_PKNS_17AbstractAttributeERbEELj1EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SH_EEEES2_SH_SJ_SM_E6getRepEv: argument 0"}
!5079 = distinct !{!5079, i1 true, !"_ZNK4llvm8DenseMapINS_10IRPositionENS_11SmallVectorISt8functionIFSt8optionalIPNS_5ValueEERKS1_PKNS_17AbstractAttributeERbEELj1EEENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_SG_EEE6getRepEv"}
!5080 = distinct !{!5080, !5079, !"_ZNK4llvm8DenseMapINS_10IRPositionENS_11SmallVectorISt8functionIFSt8optionalIPNS_5ValueEERKS1_PKNS_17AbstractAttributeERbEELj1EEENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_SG_EEE6getRepEv: argument 0"}
!5081 = !{!5080, !5078}
!5082 = distinct !{!5082, i1 true, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKcNS_10IRPositionEEPNS_17AbstractAttributeENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E6getRepEv"}
!5083 = distinct !{!5083, !5082, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKcNS_10IRPositionEEPNS_17AbstractAttributeENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E6getRepEv: argument 0"}
!5084 = distinct !{!5084, i1 true, !"_ZNK4llvm8DenseMapISt4pairIPKcNS_10IRPositionEEPNS_17AbstractAttributeENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEE6getRepEv"}
!5085 = distinct !{!5085, !5084, !"_ZNK4llvm8DenseMapISt4pairIPKcNS_10IRPositionEEPNS_17AbstractAttributeENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEE6getRepEv: argument 0"}
!5086 = distinct !{null}
!5087 = !{!5085, !5083}
!5088 = distinct !{!5088, i1 true, !"_ZN4llvm6detail12DenseSetImplIPKNS_10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE6insertEOS4_"}
!5089 = distinct !{!5089, !5088, !"_ZN4llvm6detail12DenseSetImplIPKNS_10BasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE6insertEOS4_: argument 0"}
!5090 = distinct !{!5090, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJEEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbEOS4_DpOT_"}
!5091 = distinct !{!5091, !5090, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJEEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbEOS4_DpOT_: argument 0"}
!5092 = distinct !{!5092, i1 true, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16try_emplace_implIS4_JEEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbEOT_DpOT0_"}
!5093 = distinct !{!5093, !5092, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16try_emplace_implIS4_JEEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbEOT_DpOT0_: argument 0"}
!5094 = !{!5093, !5091, !5089}
!5095 = distinct !{!5095, i1 true, !"_ZNSt7__cxx119to_stringEj"}
!5096 = distinct !{!5096, !5095, !"_ZNSt7__cxx119to_stringEj: argument 0"}
!5097 = distinct !{!5097, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!5098 = distinct !{!5098, !5097, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!5099 = distinct !{!5099, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!5100 = distinct !{!5100, !5099, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!5101 = distinct !{!5101, i1 true, !"_ZNSt7__cxx119to_stringEm"}
!5102 = distinct !{!5102, !5101, !"_ZNSt7__cxx119to_stringEm: argument 0"}
!5103 = distinct !{!5103, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!5104 = distinct !{!5104, !5103, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!5105 = distinct !{!5105, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!5106 = distinct !{!5106, !5105, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!5107 = distinct !{!5107, i1 true, !"_ZNSt7__cxx119to_stringEm"}
!5108 = distinct !{!5108, !5107, !"_ZNSt7__cxx119to_stringEm: argument 0"}
!5109 = distinct !{!5109, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!5110 = distinct !{!5110, !5109, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!5111 = distinct !{!5111, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!5112 = distinct !{!5112, !5111, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!5113 = distinct !{!5113, i1 true, !"_ZNSt7__cxx119to_stringEm"}
!5114 = distinct !{!5114, !5113, !"_ZNSt7__cxx119to_stringEm: argument 0"}
!5115 = distinct !{!5115, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!5116 = distinct !{!5116, !5115, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!5117 = distinct !{!5117, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!5118 = distinct !{!5118, !5117, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!5119 = !{!5096}
!5120 = !{!5098}
!5121 = !{!5100}
!5122 = !{!5102}
!5123 = !{!5104}
!5124 = !{!5106}
end_hunk_3
