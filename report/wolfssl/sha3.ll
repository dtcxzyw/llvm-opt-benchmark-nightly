Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/sha3?download=true
inline.NumInlined: 42
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@Sha3Update:bb.a
  %.sroa.039.2.i.ph = phi ptr [ %0, %vector.memcheck25 ], [ %0, %._crit_edge.i.thread ], [ %i.cm, %middle.block36 ]
  %.ph209 = phi ptr [ %i.g, %vector.memcheck25 ], [ %i.g, %._crit_edge.i.thread ], [ %i.cn, %middle.block36 ]
  br label %.lr.ph.i32.i

.lr.ph.i32.i:                                     ; preds = %.lr.ph.i32.i.preheader, %.lr.ph.i32.i
  %.sroa.039.2.i = phi ptr [ %i.cx, %.lr.ph.i32.i ], [ %.sroa.039.2.i.ph, %.lr.ph.i32.i.preheader ] ; 3 uses
  %i.cu = phi ptr [ %i.cv, %.lr.ph.i32.i ], [ %.ph209, %.lr.ph.i32.i.preheader ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !9
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.039.2.i, i64 8
  %i.cy = load i64, ptr %.sroa.039.2.i, align 8, !tbaa !9
  %i.cz = xor i64 %i.cy, %i.cw
  store i64 %i.cz, ptr %.sroa.039.2.i, align 8, !tbaa !9
  %i.da = icmp ult ptr %i.cv, %i.bz
  br i1 %i.da, label %.lr.ph.i32.i, label %xorbuf.exit, !llvm.loop !31

iter.check70:                                     ; preds = %bb.e
  %i.db = zext i8 %.pre137 to i64                 ; 2 uses
  %i.dc = getelementptr i8, ptr %0, i64 %i.db
  %i.dd = getelementptr i8, ptr %i.g, i64 %i.db
  %bound048 = icmp ult ptr %0, %i.dd
  %bound149 = icmp ult ptr %i.g, %i.dc
  %found.conflict50 = and i1 %bound048, %bound149
  br i1 %found.conflict50, label %.lr.ph56.i.preheader, label %vector.ph53

vector.ph53:                                      ; preds = %iter.check70
  %i.de = and i64 %.idx.i30.i149, 24
  %n.vec54 = and i64 %.idx.i30.i149, 224          ; 9 uses
  %i.df = getelementptr i8, ptr %i.g, i64 %n.vec54
  %i.dg = getelementptr i8, ptr %0, i64 %n.vec54
  %i.dh = trunc nuw nsw i64 %n.vec54 to i32
  %i.di = sub nsw i32 %.pre138, %i.dh
  %i.dj = getelementptr i8, ptr %0, i64 216
  %wide.load59 = load <16 x i8>, ptr %i.g, align 8, !tbaa !15, !alias.scope !57
  %wide.load60 = load <16 x i8>, ptr %i.dj, align 8, !tbaa !15, !alias.scope !57
  %i.dk = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %wide.load61 = load <16 x i8>, ptr %0, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %wide.load62 = load <16 x i8>, ptr %i.dk, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %i.dl = xor <16 x i8> %wide.load61, %wide.load59
  %i.dm = xor <16 x i8> %wide.load62, %wide.load60
  store <16 x i8> %i.dl, ptr %0, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  store <16 x i8> %i.dm, ptr %i.dk, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %i.dn = icmp eq i64 %n.vec54, 32
  br i1 %i.dn, label %middle.block64, label %vector.body55.1

vector.body55.1:                                  ; preds = %vector.ph53
  %next.gep57.1 = getelementptr i8, ptr %0, i64 232
  %next.gep58.1 = getelementptr i8, ptr %0, i64 32 ; 2 uses
  %i.do = getelementptr i8, ptr %0, i64 248
  %wide.load59.1 = load <16 x i8>, ptr %next.gep57.1, align 8, !tbaa !15, !alias.scope !57
  %wide.load60.1 = load <16 x i8>, ptr %i.do, align 8, !tbaa !15, !alias.scope !57
  %i.dp = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %wide.load61.1 = load <16 x i8>, ptr %next.gep58.1, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %wide.load62.1 = load <16 x i8>, ptr %i.dp, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %i.dq = xor <16 x i8> %wide.load61.1, %wide.load59.1
  %i.dr = xor <16 x i8> %wide.load62.1, %wide.load60.1
  store <16 x i8> %i.dq, ptr %next.gep58.1, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  store <16 x i8> %i.dr, ptr %i.dp, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %i.ds = icmp eq i64 %n.vec54, 64
  br i1 %i.ds, label %middle.block64, label %vector.body55.2

vector.body55.2:                                  ; preds = %vector.body55.1
  %next.gep57.2 = getelementptr i8, ptr %0, i64 264
  %next.gep58.2 = getelementptr i8, ptr %0, i64 64 ; 2 uses
  %i.dt = getelementptr i8, ptr %0, i64 280
  %wide.load59.2 = load <16 x i8>, ptr %next.gep57.2, align 8, !tbaa !15, !alias.scope !57
  %wide.load60.2 = load <16 x i8>, ptr %i.dt, align 8, !tbaa !15, !alias.scope !57
  %i.du = getelementptr i8, ptr %0, i64 80        ; 2 uses
  %wide.load61.2 = load <16 x i8>, ptr %next.gep58.2, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %wide.load62.2 = load <16 x i8>, ptr %i.du, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %i.dv = xor <16 x i8> %wide.load61.2, %wide.load59.2
  %i.dw = xor <16 x i8> %wide.load62.2, %wide.load60.2
  store <16 x i8> %i.dv, ptr %next.gep58.2, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  store <16 x i8> %i.dw, ptr %i.du, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %i.dx = icmp eq i64 %n.vec54, 96
  br i1 %i.dx, label %middle.block64, label %vector.body55.3

vector.body55.3:                                  ; preds = %vector.body55.2
  %next.gep57.3 = getelementptr i8, ptr %0, i64 296
  %next.gep58.3 = getelementptr i8, ptr %0, i64 96 ; 2 uses
  %i.dy = getelementptr i8, ptr %0, i64 312
  %wide.load59.3 = load <16 x i8>, ptr %next.gep57.3, align 8, !tbaa !15, !alias.scope !57
  %wide.load60.3 = load <16 x i8>, ptr %i.dy, align 8, !tbaa !15, !alias.scope !57
  %i.dz = getelementptr i8, ptr %0, i64 112       ; 2 uses
  %wide.load61.3 = load <16 x i8>, ptr %next.gep58.3, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %wide.load62.3 = load <16 x i8>, ptr %i.dz, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %i.ea = xor <16 x i8> %wide.load61.3, %wide.load59.3
  %i.eb = xor <16 x i8> %wide.load62.3, %wide.load60.3
  store <16 x i8> %i.ea, ptr %next.gep58.3, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  store <16 x i8> %i.eb, ptr %i.dz, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %i.ec = icmp eq i64 %n.vec54, 128
  br i1 %i.ec, label %middle.block64, label %vector.body55.4

vector.body55.4:                                  ; preds = %vector.body55.3
  %next.gep57.4 = getelementptr i8, ptr %0, i64 328
  %next.gep58.4 = getelementptr i8, ptr %0, i64 128 ; 2 uses
  %i.ed = getelementptr i8, ptr %0, i64 344
  %wide.load59.4 = load <16 x i8>, ptr %next.gep57.4, align 8, !tbaa !15, !alias.scope !57
  %wide.load60.4 = load <16 x i8>, ptr %i.ed, align 8, !tbaa !15, !alias.scope !57
  %i.ee = getelementptr i8, ptr %0, i64 144       ; 2 uses
  %wide.load61.4 = load <16 x i8>, ptr %next.gep58.4, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %wide.load62.4 = load <16 x i8>, ptr %i.ee, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %i.ef = xor <16 x i8> %wide.load61.4, %wide.load59.4
  %i.eg = xor <16 x i8> %wide.load62.4, %wide.load60.4
  store <16 x i8> %i.ef, ptr %next.gep58.4, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  store <16 x i8> %i.eg, ptr %i.ee, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  br label %middle.block64

middle.block64:                                   ; preds = %vector.body55.4, %vector.body55.3, %vector.body55.2, %vector.body55.1, %vector.ph53
  %cmp.n65 = icmp eq i64 %n.vec54, %.idx.i30.i149
  br i1 %cmp.n65, label %xorbuf.exit, label %vec.epilog.iter.check72

vec.epilog.iter.check72:                          ; preds = %middle.block64
  %min.epilog.iters.check73 = icmp eq i64 %i.de, 0
  br i1 %min.epilog.iters.check73, label %.lr.ph56.i.preheader, label %vec.epilog.vector.body76, !prof !18

.lr.ph56.i.preheader:                             ; preds = %iter.check70, %vec.epilog.iter.check72
  %.254.i.ph = phi ptr [ %i.df, %vec.epilog.iter.check72 ], [ %i.g, %iter.check70 ] ; 2 uses
  %.22453.i.ph = phi ptr [ %i.dg, %vec.epilog.iter.check72 ], [ %0, %iter.check70 ] ; 2 uses
  %.22752.i.ph = phi i32 [ %i.di, %vec.epilog.iter.check72 ], [ %.pre138, %iter.check70 ] ; 4 uses
  %i.eh = add nsw i32 %.22752.i.ph, -1
  %xtraiter213 = and i32 %.22752.i.ph, 3          ; 2 uses
  %lcmp.mod214.not = icmp eq i32 %xtraiter213, 0
  br i1 %lcmp.mod214.not, label %.lr.ph56.i.prol.loopexit, label %.lr.ph56.i.prol

.lr.ph56.i.prol:                                  ; preds = %.lr.ph56.i.preheader, %.lr.ph56.i.prol
  %.254.i.prol = phi ptr [ %i.ei, %.lr.ph56.i.prol ], [ %.254.i.ph, %.lr.ph56.i.preheader ] ; 2 uses
  %.22453.i.prol = phi ptr [ %i.ek, %.lr.ph56.i.prol ], [ %.22453.i.ph, %.lr.ph56.i.preheader ] ; 3 uses
  %.22752.i.prol = phi i32 [ %i.en, %.lr.ph56.i.prol ], [ %.22752.i.ph, %.lr.ph56.i.preheader ]
  %prol.iter215 = phi i32 [ %prol.iter215.next, %.lr.ph56.i.prol ], [ 0, %.lr.ph56.i.preheader ]
  %i.ei = getelementptr inbounds nuw i8, ptr %.254.i.prol, i64 1 ; 2 uses
  %i.ej = load i8, ptr %.254.i.prol, align 1, !tbaa !15
  %i.ek = getelementptr inbounds nuw i8, ptr %.22453.i.prol, i64 1 ; 2 uses
  %i.el = load i8, ptr %.22453.i.prol, align 1, !tbaa !15
  %i.em = xor i8 %i.el, %i.ej
  store i8 %i.em, ptr %.22453.i.prol, align 1, !tbaa !15
  %i.en = add nsw i32 %.22752.i.prol, -1          ; 2 uses
  %prol.iter215.next = add i32 %prol.iter215, 1   ; 2 uses
  %prol.iter215.cmp.not = icmp eq i32 %prol.iter215.next, %xtraiter213
  br i1 %prol.iter215.cmp.not, label %.lr.ph56.i.prol.loopexit, label %.lr.ph56.i.prol, !llvm.loop !35

.lr.ph56.i.prol.loopexit:                         ; preds = %.lr.ph56.i.prol, %.lr.ph56.i.preheader
  %.254.i.unr = phi ptr [ %.254.i.ph, %.lr.ph56.i.preheader ], [ %i.ei, %.lr.ph56.i.prol ]
  %.22453.i.unr = phi ptr [ %.22453.i.ph, %.lr.ph56.i.preheader ], [ %i.ek, %.lr.ph56.i.prol ]
  %.22752.i.unr = phi i32 [ %.22752.i.ph, %.lr.ph56.i.preheader ], [ %i.en, %.lr.ph56.i.prol ]
  %i.eo = icmp ult i32 %i.eh, 3
  br i1 %i.eo, label %xorbuf.exit, label %.lr.ph56.i

vec.epilog.vector.body76:                         ; preds = %vec.epilog.iter.check72, %vec.epilog.vector.body76
  %index77 = phi i64 [ %index.next82, %vec.epilog.vector.body76 ], [ %n.vec54, %vec.epilog.iter.check72 ] ; 3 uses
  %next.gep78 = getelementptr i8, ptr %i.g, i64 %index77
  %next.gep79 = getelementptr i8, ptr %0, i64 %index77 ; 2 uses
  %wide.load80 = load <4 x i8>, ptr %next.gep78, align 1, !tbaa !15, !alias.scope !57
  %wide.load81 = load <4 x i8>, ptr %next.gep79, align 1, !tbaa !15, !alias.scope !58, !noalias !57
  %i.ep = xor <4 x i8> %wide.load81, %wide.load80
  store <4 x i8> %i.ep, ptr %next.gep79, align 1, !tbaa !15, !alias.scope !58, !noalias !57
  %index.next82 = add nuw i64 %index77, 4         ; 2 uses
  %i.eq = icmp eq i64 %index.next82, %.idx.i30.i149
  br i1 %i.eq, label %xorbuf.exit, label %vec.epilog.vector.body76, !llvm.loop !36

.lr.ph56.i:                                       ; preds = %.lr.ph56.i.prol.loopexit, %.lr.ph56.i
  %.254.i = phi ptr [ %i.fg, %.lr.ph56.i ], [ %.254.i.unr, %.lr.ph56.i.prol.loopexit ] ; 5 uses
  %.22453.i = phi ptr [ %i.fi, %.lr.ph56.i ], [ %.22453.i.unr, %.lr.ph56.i.prol.loopexit ] ; 6 uses
  %.22752.i = phi i32 [ %i.fl, %.lr.ph56.i ], [ %.22752.i.unr, %.lr.ph56.i.prol.loopexit ]
  %i.er = getelementptr inbounds nuw i8, ptr %.254.i, i64 1
  %i.es = load i8, ptr %.254.i, align 1, !tbaa !15
  %i.et = getelementptr inbounds nuw i8, ptr %.22453.i, i64 1 ; 2 uses
  %i.eu = load i8, ptr %.22453.i, align 1, !tbaa !15
  %i.ev = xor i8 %i.eu, %i.es
  store i8 %i.ev, ptr %.22453.i, align 1, !tbaa !15
  %i.ew = getelementptr inbounds nuw i8, ptr %.254.i, i64 2
  %i.ex = load i8, ptr %i.er, align 1, !tbaa !15
  %i.ey = getelementptr inbounds nuw i8, ptr %.22453.i, i64 2 ; 2 uses
  %i.ez = load i8, ptr %i.et, align 1, !tbaa !15
  %i.fa = xor i8 %i.ez, %i.ex
  store i8 %i.fa, ptr %i.et, align 1, !tbaa !15
  %i.fb = getelementptr inbounds nuw i8, ptr %.254.i, i64 3
  %i.fc = load i8, ptr %i.ew, align 1, !tbaa !15
  %i.fd = getelementptr inbounds nuw i8, ptr %.22453.i, i64 3 ; 2 uses
  %i.fe = load i8, ptr %i.ey, align 1, !tbaa !15
  %i.ff = xor i8 %i.fe, %i.fc
  store i8 %i.ff, ptr %i.ey, align 1, !tbaa !15
  %i.fg = getelementptr inbounds nuw i8, ptr %.254.i, i64 4
  %i.fh = load i8, ptr %i.fb, align 1, !tbaa !15
  %i.fi = getelementptr inbounds nuw i8, ptr %.22453.i, i64 4
  %i.fj = load i8, ptr %i.fd, align 1, !tbaa !15
  %i.fk = xor i8 %i.fj, %i.fh
  store i8 %i.fk, ptr %i.fd, align 1, !tbaa !15
  %i.fl = add nsw i32 %.22752.i, -4               ; 2 uses
  %.not.i.3 = icmp eq i32 %i.fl, 0
  br i1 %.not.i.3, label %xorbuf.exit, label %.lr.ph56.i, !llvm.loop !37

xorbuf.exit:                                      ; preds = %vec.epilog.vector.body76, %.lr.ph56.i.prol.loopexit, %.lr.ph56.i, %.lr.ph.i32.i, %.lr.ph.i.i, %middle.block64, %middle.block101, %middle.block36
  tail call void @BlockSha3(ptr noundef nonnull %0)
  store i8 0, ptr %i.c, align 8, !tbaa !14
  br label %._crit_edge136

._crit_edge136:                                   ; preds = %bb.a, %._crit_edge, %xorbuf.exit
  %.050 = phi i32 [ %i.ap, %xorbuf.exit ], [ %i.ap, %._crit_edge ], [ %2, %bb.a ] ; 4 uses
  %.049 = phi ptr [ %i.ao, %xorbuf.exit ], [ %i.ao, %._crit_edge ], [ %1, %bb.a ] ; 4 uses
  %.049106 = ptrtoaddr ptr %.049 to i64           ; 6 uses
  %.not55108 = icmp ult i32 %.050, %.pre138
  br i1 %.not55108, label %._crit_edge115, label %.lr.ph114

.lr.ph114:                                        ; preds = %._crit_edge136
  %i.fm = udiv i32 %.050, %.pre138                ; 2 uses
  %i.fn = ptrtoint ptr %0 to i64                  ; 2 uses
  %.idx.i.i83 = zext i8 %.pre137 to i64           ; 5 uses
  %scevgep = getelementptr i8, ptr %0, i64 8
  %i.fo = add i64 %.049106, %.idx.i.i83
  %i.fp = zext nneg i8 %3 to i64                  ; 2 uses
  %i.fq = shl nuw nsw i64 %i.fp, 3
  %i.fr = add i64 %.049106, 8
  %i.fs = xor i64 %.049106, -1
  %i.ft = mul nsw i64 %i.fp, -8
  %i.fu = zext i8 %.pre137 to i64                 ; 4 uses
  %scevgep131 = getelementptr i8, ptr %0, i64 1
  %i.fv = add nsw i32 %.pre138, -1
  %i.fw = zext i32 %i.fv to i64                   ; 2 uses
  %scevgep132 = getelementptr i8, ptr %scevgep131, i64 %i.fw
  %i.fx = and i64 %i.fu, 24
  %n.vec143 = and i64 %i.fu, 224                  ; 9 uses
  %i.fy = getelementptr i8, ptr %0, i64 %n.vec143
  %i.fz = trunc nuw nsw i64 %n.vec143 to i32
  %i.ga = sub nsw i32 %.pre138, %i.fz
  %i.gb = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.gc = icmp eq i64 %n.vec143, 32
  %next.gep147.1 = getelementptr i8, ptr %0, i64 32 ; 2 uses
  %i.gd = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %i.ge = icmp eq i64 %n.vec143, 64
  %next.gep147.2 = getelementptr i8, ptr %0, i64 64 ; 2 uses
  %i.gf = getelementptr i8, ptr %0, i64 80        ; 2 uses
  %i.gg = icmp eq i64 %n.vec143, 96
  %next.gep147.3 = getelementptr i8, ptr %0, i64 96 ; 2 uses
  %i.gh = getelementptr i8, ptr %0, i64 112       ; 2 uses
  %i.gi = icmp eq i64 %n.vec143, 128
  %next.gep147.4 = getelementptr i8, ptr %0, i64 128 ; 2 uses
  %i.gj = getelementptr i8, ptr %0, i64 144       ; 2 uses
  %cmp.n154 = icmp eq i64 %n.vec143, %i.fu
  %min.epilog.iters.check162 = icmp eq i64 %i.fx, 0
  %.idx.i30.i72 = zext i8 %.pre137 to i64         ; 3 uses
  %scevgep178 = getelementptr i8, ptr %0, i64 8
  %4 = add i64 %.049106, %.idx.i.i83
  %5 = add i64 %.049106, 8
  %6 = xor i64 %.049106, -1
  %7 = zext nneg i8 %3 to i64
  %8 = mul nsw i64 %7, -8
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph114, %xorbuf.exit90
  %indvar = phi i64 [ 0, %.lr.ph114 ], [ %indvar.next, %xorbuf.exit90 ] ; 5 uses
  %.047112 = phi i32 [ %i.fm, %.lr.ph114 ], [ %i.kr, %xorbuf.exit90 ]
  %.1110 = phi ptr [ %.049, %.lr.ph114 ], [ %i.kq, %xorbuf.exit90 ] ; 31 uses
  %i.gk = mul i64 %i.fq, %indvar                  ; 3 uses
  %i.gl = add i64 %i.fo, %i.gk
  %i.gm = add i64 %i.fr, %i.gk
  %umax = tail call i64 @llvm.umax.i64(i64 %i.gl, i64 %i.gm)
  %i.gn = mul i64 %i.ft, %indvar
  %i.go = add i64 %i.gn, %i.fs
  %i.gp = add i64 %umax, %i.go
  %i.gq = and i64 %i.gp, -8                       ; 2 uses
  %scevgep107 = getelementptr i8, ptr %scevgep, i64 %i.gq
  %i.gr = getelementptr i8, ptr %.049, i64 %i.gk
  %scevgep108 = getelementptr i8, ptr %i.gr, i64 8
  %scevgep109 = getelementptr i8, ptr %scevgep108, i64 %i.gq
  %i.gs = ptrtoint ptr %.1110 to i64              ; 2 uses
  %i.gt = or i64 %i.gs, %i.fn
  %i.gu = and i64 %i.gt, 7
  %or.cond.i57 = icmp eq i64 %i.gu, 0
  br i1 %or.cond.i57, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %9 = getelementptr inbounds nuw i8, ptr %.1110, i64 %.idx.i.i83
  %10 = mul nuw nsw i64 %indvar, %.idx.i.i83      ; 2 uses
  %i.gv = add i64 %4, %10
  %11 = add i64 %5, %10
  %12 = tail call i64 @llvm.umax.i64(i64 %i.gv, i64 %11)
  %13 = mul nsw i64 %indvar, %8
  %14 = add i64 %13, %6
  %i.gw = add i64 %12, %14                        ; 2 uses
  %i.gx = lshr i64 %i.gw, 3
  %i.gy = add nuw nsw i64 %i.gx, 1                ; 2 uses
  %min.iters.check114 = icmp ult i64 %i.gw, 24
  br i1 %min.iters.check114, label %.lr.ph.i.i85.preheader, label %vector.memcheck105

vector.memcheck105:                               ; preds = %bb.g
  %bound0110 = icmp ult ptr %0, %scevgep109
  %bound1111 = icmp ult ptr %.1110, %scevgep107
  %found.conflict112 = and i1 %bound0110, %bound1111
  br i1 %found.conflict112, label %.lr.ph.i.i85.preheader, label %vector.ph115

vector.ph115:                                     ; preds = %vector.memcheck105
  %n.vec116 = and i64 %i.gy, 4611686018427387900  ; 3 uses
  %i.gz = shl i64 %n.vec116, 3                    ; 2 uses
  %i.ha = getelementptr i8, ptr %0, i64 %i.gz
  %i.hb = getelementptr i8, ptr %.1110, i64 %i.gz
  br label %vector.body117

vector.body117:                                   ; preds = %vector.body117, %vector.ph115
  %index118 = phi i64 [ 0, %vector.ph115 ], [ %index.next125, %vector.body117 ] ; 2 uses
  %i.hc = shl i64 %index118, 3                    ; 2 uses
  %next.gep119 = getelementptr i8, ptr %0, i64 %i.hc ; 3 uses
  %next.gep120 = getelementptr i8, ptr %.1110, i64 %i.hc ; 2 uses
  %i.hd = getelementptr i8, ptr %next.gep120, i64 16
  %wide.load121 = load <2 x i64>, ptr %next.gep120, align 8, !tbaa !9, !alias.scope !59
  %wide.load122 = load <2 x i64>, ptr %i.hd, align 8, !tbaa !9, !alias.scope !59
  %i.he = getelementptr i8, ptr %next.gep119, i64 16 ; 2 uses
  %wide.load123 = load <2 x i64>, ptr %next.gep119, align 8, !tbaa !9, !alias.scope !60, !noalias !59
  %wide.load124 = load <2 x i64>, ptr %i.he, align 8, !tbaa !9, !alias.scope !60, !noalias !59
  %i.hf = xor <2 x i64> %wide.load123, %wide.load121
  %i.hg = xor <2 x i64> %wide.load124, %wide.load122
  store <2 x i64> %i.hf, ptr %next.gep119, align 8, !tbaa !9, !alias.scope !60, !noalias !59
  store <2 x i64> %i.hg, ptr %i.he, align 8, !tbaa !9, !alias.scope !60, !noalias !59
  %index.next125 = add nuw i64 %index118, 4       ; 2 uses
  %i.hh = icmp eq i64 %index.next125, %n.vec116
  br i1 %i.hh, label %middle.block126, label %vector.body117, !llvm.loop !41

middle.block126:                                  ; preds = %vector.body117
  %cmp.n127 = icmp eq i64 %i.gy, %n.vec116
  br i1 %cmp.n127, label %xorbuf.exit90, label %.lr.ph.i.i85.preheader

.lr.ph.i.i85.preheader:                           ; preds = %vector.memcheck105, %bb.g, %middle.block126
  %.sroa.039.0.i86.ph = phi ptr [ %0, %vector.memcheck105 ], [ %0, %bb.g ], [ %i.ha, %middle.block126 ]
  %.ph = phi ptr [ %.1110, %vector.memcheck105 ], [ %.1110, %bb.g ], [ %i.hb, %middle.block126 ]
  br label %.lr.ph.i.i85

.lr.ph.i.i85:                                     ; preds = %.lr.ph.i.i85.preheader, %.lr.ph.i.i85
  %.sroa.039.0.i86 = phi ptr [ %i.hl, %.lr.ph.i.i85 ], [ %.sroa.039.0.i86.ph, %.lr.ph.i.i85.preheader ] ; 3 uses
  %i.hi = phi ptr [ %i.hj, %.lr.ph.i.i85 ], [ %.ph, %.lr.ph.i.i85.preheader ] ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8 ; 2 uses
  %i.hk = load i64, ptr %i.hi, align 8, !tbaa !9
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.039.0.i86, i64 8
  %i.hm = load i64, ptr %.sroa.039.0.i86, align 8, !tbaa !9
  %i.hn = xor i64 %i.hm, %i.hk
  store i64 %i.hn, ptr %.sroa.039.0.i86, align 8, !tbaa !9
  %i.ho = icmp ult ptr %i.hj, %9
  br i1 %i.ho, label %.lr.ph.i.i85, label %xorbuf.exit90, !llvm.loop !42

bb.h:                                             ; preds = %bb.f
  %i.hp = xor i64 %i.gs, %i.fn
  %i.hq = and i64 %i.hp, 7
  %i.hr = icmp eq i64 %i.hq, 0
  br i1 %i.hr, label %._crit_edge.i68, label %iter.check159

._crit_edge.i68:                                  ; preds = %bb.h
  %.0.lcssa.i71179 = ptrtoaddr ptr %.1110 to i64  ; 6 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.1110, i64 %.idx.i30.i72
  %i.ht = add i64 %.0.lcssa.i71179, %.idx.i30.i72
  %i.hu = add i64 %.0.lcssa.i71179, 8
  %i.hv = tail call i64 @llvm.umax.i64(i64 %i.ht, i64 %i.hu)
  %i.hw = xor i64 %.0.lcssa.i71179, -1
  %i.hx = add i64 %i.hv, %i.hw                    ; 2 uses
  %i.hy = lshr i64 %i.hx, 3
  %i.hz = add nuw nsw i64 %i.hy, 1                ; 2 uses
  %min.iters.check188 = icmp ult i64 %i.hx, 56
  br i1 %min.iters.check188, label %.lr.ph.i32.i74.preheader, label %vector.memcheck177

vector.memcheck177:                               ; preds = %._crit_edge.i68
  %i.ia = add i64 %.0.lcssa.i71179, %.idx.i30.i72
  %i.ib = add i64 %.0.lcssa.i71179, 8
  %umax180 = tail call i64 @llvm.umax.i64(i64 %i.ia, i64 %i.ib)
  %i.ic = xor i64 %.0.lcssa.i71179, -1
  %i.id = add i64 %umax180, %i.ic
  %i.ie = and i64 %i.id, -8                       ; 2 uses
  %scevgep181 = getelementptr i8, ptr %scevgep178, i64 %i.ie
  %scevgep182 = getelementptr i8, ptr %.1110, i64 8
  %scevgep183 = getelementptr i8, ptr %scevgep182, i64 %i.ie
  %bound0184 = icmp ult ptr %0, %scevgep183
  %bound1185 = icmp ult ptr %.1110, %scevgep181
  %found.conflict186 = and i1 %bound0184, %bound1185
  br i1 %found.conflict186, label %.lr.ph.i32.i74.preheader, label %vector.ph189

vector.ph189:                                     ; preds = %vector.memcheck177
  %n.vec190 = and i64 %i.hz, 4611686018427387900  ; 3 uses
  %i.if = shl i64 %n.vec190, 3                    ; 2 uses
  %i.ig = getelementptr i8, ptr %0, i64 %i.if
  %i.ih = getelementptr i8, ptr %.1110, i64 %i.if
  br label %vector.body191

vector.body191:                                   ; preds = %vector.body191, %vector.ph189
  %index192 = phi i64 [ 0, %vector.ph189 ], [ %index.next199, %vector.body191 ] ; 2 uses
  %i.ii = shl i64 %index192, 3                    ; 2 uses
  %next.gep193 = getelementptr i8, ptr %0, i64 %i.ii ; 3 uses
  %next.gep194 = getelementptr i8, ptr %.1110, i64 %i.ii ; 2 uses
  %i.ij = getelementptr i8, ptr %next.gep194, i64 16
  %wide.load195 = load <2 x i64>, ptr %next.gep194, align 8, !tbaa !9, !alias.scope !61
  %wide.load196 = load <2 x i64>, ptr %i.ij, align 8, !tbaa !9, !alias.scope !61
  %i.ik = getelementptr i8, ptr %next.gep193, i64 16 ; 2 uses
  %wide.load197 = load <2 x i64>, ptr %next.gep193, align 8, !tbaa !9, !alias.scope !62, !noalias !61
  %wide.load198 = load <2 x i64>, ptr %i.ik, align 8, !tbaa !9, !alias.scope !62, !noalias !61
  %i.il = xor <2 x i64> %wide.load197, %wide.load195
  %i.im = xor <2 x i64> %wide.load198, %wide.load196
  store <2 x i64> %i.il, ptr %next.gep193, align 8, !tbaa !9, !alias.scope !62, !noalias !61
  store <2 x i64> %i.im, ptr %i.ik, align 8, !tbaa !9, !alias.scope !62, !noalias !61
  %index.next199 = add nuw i64 %index192, 4       ; 2 uses
  %i.in = icmp eq i64 %index.next199, %n.vec190
  br i1 %i.in, label %middle.block200, label %vector.body191, !llvm.loop !46

middle.block200:                                  ; preds = %vector.body191
  %cmp.n201 = icmp eq i64 %i.hz, %n.vec190
  br i1 %cmp.n201, label %xorbuf.exit90, label %.lr.ph.i32.i74.preheader

.lr.ph.i32.i74.preheader:                         ; preds = %vector.memcheck177, %._crit_edge.i68, %middle.block200
  %.sroa.039.2.i75.ph = phi ptr [ %0, %vector.memcheck177 ], [ %0, %._crit_edge.i68 ], [ %i.ig, %middle.block200 ]
  %.ph204 = phi ptr [ %.1110, %vector.memcheck177 ], [ %.1110, %._crit_edge.i68 ], [ %i.ih, %middle.block200 ]
  br label %.lr.ph.i32.i74

.lr.ph.i32.i74:                                   ; preds = %.lr.ph.i32.i74.preheader, %.lr.ph.i32.i74
  %.sroa.039.2.i75 = phi ptr [ %i.ir, %.lr.ph.i32.i74 ], [ %.sroa.039.2.i75.ph, %.lr.ph.i32.i74.preheader ] ; 3 uses
  %i.io = phi ptr [ %i.ip, %.lr.ph.i32.i74 ], [ %.ph204, %.lr.ph.i32.i74.preheader ] ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8 ; 2 uses
  %i.iq = load i64, ptr %i.io, align 8, !tbaa !9
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.039.2.i75, i64 8
  %i.is = load i64, ptr %.sroa.039.2.i75, align 8, !tbaa !9
  %i.it = xor i64 %i.is, %i.iq
  store i64 %i.it, ptr %.sroa.039.2.i75, align 8, !tbaa !9
  %i.iu = icmp ult ptr %i.ip, %i.hs
  br i1 %i.iu, label %.lr.ph.i32.i74, label %xorbuf.exit90, !llvm.loop !47

iter.check159:                                    ; preds = %bb.h
  %scevgep133 = getelementptr i8, ptr %.1110, i64 1
  %scevgep134 = getelementptr i8, ptr %scevgep133, i64 %i.fw
  %bound0135 = icmp ult ptr %0, %scevgep134
  %bound1136 = icmp ult ptr %.1110, %scevgep132
  %found.conflict137 = and i1 %bound0135, %bound1136
  br i1 %found.conflict137, label %.lr.ph56.i62.preheader, label %vector.ph142

vector.ph142:                                     ; preds = %iter.check159
  %i.iv = getelementptr i8, ptr %.1110, i64 %n.vec143
  %i.iw = getelementptr i8, ptr %.1110, i64 16
  %wide.load148 = load <16 x i8>, ptr %.1110, align 1, !tbaa !15, !alias.scope !63
  %wide.load149 = load <16 x i8>, ptr %i.iw, align 1, !tbaa !15, !alias.scope !63
  %wide.load150 = load <16 x i8>, ptr %0, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  %wide.load151 = load <16 x i8>, ptr %i.gb, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  %i.ix = xor <16 x i8> %wide.load150, %wide.load148
  %i.iy = xor <16 x i8> %wide.load151, %wide.load149
  store <16 x i8> %i.ix, ptr %0, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  store <16 x i8> %i.iy, ptr %i.gb, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  br i1 %i.gc, label %middle.block153, label %vector.body144.1

vector.body144.1:                                 ; preds = %vector.ph142
  %next.gep146.1 = getelementptr i8, ptr %.1110, i64 32
  %i.iz = getelementptr i8, ptr %.1110, i64 48
  %wide.load148.1 = load <16 x i8>, ptr %next.gep146.1, align 1, !tbaa !15, !alias.scope !63
  %wide.load149.1 = load <16 x i8>, ptr %i.iz, align 1, !tbaa !15, !alias.scope !63
  %wide.load150.1 = load <16 x i8>, ptr %next.gep147.1, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  %wide.load151.1 = load <16 x i8>, ptr %i.gd, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  %i.ja = xor <16 x i8> %wide.load150.1, %wide.load148.1
  %i.jb = xor <16 x i8> %wide.load151.1, %wide.load149.1
  store <16 x i8> %i.ja, ptr %next.gep147.1, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  store <16 x i8> %i.jb, ptr %i.gd, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  br i1 %i.ge, label %middle.block153, label %vector.body144.2

vector.body144.2:                                 ; preds = %vector.body144.1
  %next.gep146.2 = getelementptr i8, ptr %.1110, i64 64
  %i.jc = getelementptr i8, ptr %.1110, i64 80
  %wide.load148.2 = load <16 x i8>, ptr %next.gep146.2, align 1, !tbaa !15, !alias.scope !63
  %wide.load149.2 = load <16 x i8>, ptr %i.jc, align 1, !tbaa !15, !alias.scope !63
  %wide.load150.2 = load <16 x i8>, ptr %next.gep147.2, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  %wide.load151.2 = load <16 x i8>, ptr %i.gf, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  %i.jd = xor <16 x i8> %wide.load150.2, %wide.load148.2
  %i.je = xor <16 x i8> %wide.load151.2, %wide.load149.2
  store <16 x i8> %i.jd, ptr %next.gep147.2, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  store <16 x i8> %i.je, ptr %i.gf, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  br i1 %i.gg, label %middle.block153, label %vector.body144.3

vector.body144.3:                                 ; preds = %vector.body144.2
  %next.gep146.3 = getelementptr i8, ptr %.1110, i64 96
  %i.jf = getelementptr i8, ptr %.1110, i64 112
  %wide.load148.3 = load <16 x i8>, ptr %next.gep146.3, align 1, !tbaa !15, !alias.scope !63
  %wide.load149.3 = load <16 x i8>, ptr %i.jf, align 1, !tbaa !15, !alias.scope !63
  %wide.load150.3 = load <16 x i8>, ptr %next.gep147.3, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  %wide.load151.3 = load <16 x i8>, ptr %i.gh, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  %i.jg = xor <16 x i8> %wide.load150.3, %wide.load148.3
  %i.jh = xor <16 x i8> %wide.load151.3, %wide.load149.3
  store <16 x i8> %i.jg, ptr %next.gep147.3, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  store <16 x i8> %i.jh, ptr %i.gh, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  br i1 %i.gi, label %middle.block153, label %vector.body144.4

vector.body144.4:                                 ; preds = %vector.body144.3
  %next.gep146.4 = getelementptr i8, ptr %.1110, i64 128
  %i.ji = getelementptr i8, ptr %.1110, i64 144
  %wide.load148.4 = load <16 x i8>, ptr %next.gep146.4, align 1, !tbaa !15, !alias.scope !63
  %wide.load149.4 = load <16 x i8>, ptr %i.ji, align 1, !tbaa !15, !alias.scope !63
  %wide.load150.4 = load <16 x i8>, ptr %next.gep147.4, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  %wide.load151.4 = load <16 x i8>, ptr %i.gj, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  %i.jj = xor <16 x i8> %wide.load150.4, %wide.load148.4
  %i.jk = xor <16 x i8> %wide.load151.4, %wide.load149.4
  store <16 x i8> %i.jj, ptr %next.gep147.4, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  store <16 x i8> %i.jk, ptr %i.gj, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  br label %middle.block153

middle.block153:                                  ; preds = %vector.body144.4, %vector.body144.3, %vector.body144.2, %vector.body144.1, %vector.ph142
  br i1 %cmp.n154, label %xorbuf.exit90, label %vec.epilog.iter.check161

vec.epilog.iter.check161:                         ; preds = %middle.block153
  br i1 %min.epilog.iters.check162, label %.lr.ph56.i62.preheader, label %vec.epilog.vector.body165, !prof !18

.lr.ph56.i62.preheader:                           ; preds = %iter.check159, %vec.epilog.iter.check161
  %.254.i63.ph = phi ptr [ %i.iv, %vec.epilog.iter.check161 ], [ %.1110, %iter.check159 ] ; 2 uses
  %.22453.i64.ph = phi ptr [ %i.fy, %vec.epilog.iter.check161 ], [ %0, %iter.check159 ] ; 2 uses
  %.22752.i65.ph = phi i32 [ %i.ga, %vec.epilog.iter.check161 ], [ %.pre138, %iter.check159 ] ; 4 uses
  %i.jl = add nsw i32 %.22752.i65.ph, -1
  %xtraiter216 = and i32 %.22752.i65.ph, 3        ; 2 uses
  %lcmp.mod217.not = icmp eq i32 %xtraiter216, 0
  br i1 %lcmp.mod217.not, label %.lr.ph56.i62.prol.loopexit, label %.lr.ph56.i62.prol

.lr.ph56.i62.prol:                                ; preds = %.lr.ph56.i62.preheader, %.lr.ph56.i62.prol
  %.254.i63.prol = phi ptr [ %i.jm, %.lr.ph56.i62.prol ], [ %.254.i63.ph, %.lr.ph56.i62.preheader ] ; 2 uses
  %.22453.i64.prol = phi ptr [ %i.jo, %.lr.ph56.i62.prol ], [ %.22453.i64.ph, %.lr.ph56.i62.preheader ] ; 3 uses
  %.22752.i65.prol = phi i32 [ %i.jr, %.lr.ph56.i62.prol ], [ %.22752.i65.ph, %.lr.ph56.i62.preheader ]
  %prol.iter218 = phi i32 [ %prol.iter218.next, %.lr.ph56.i62.prol ], [ 0, %.lr.ph56.i62.preheader ]
  %i.jm = getelementptr inbounds nuw i8, ptr %.254.i63.prol, i64 1 ; 2 uses
  %i.jn = load i8, ptr %.254.i63.prol, align 1, !tbaa !15
  %i.jo = getelementptr inbounds nuw i8, ptr %.22453.i64.prol, i64 1 ; 2 uses
  %i.jp = load i8, ptr %.22453.i64.prol, align 1, !tbaa !15
  %i.jq = xor i8 %i.jp, %i.jn
  store i8 %i.jq, ptr %.22453.i64.prol, align 1, !tbaa !15
  %i.jr = add nsw i32 %.22752.i65.prol, -1        ; 2 uses
  %prol.iter218.next = add i32 %prol.iter218, 1   ; 2 uses
  %prol.iter218.cmp.not = icmp eq i32 %prol.iter218.next, %xtraiter216
  br i1 %prol.iter218.cmp.not, label %.lr.ph56.i62.prol.loopexit, label %.lr.ph56.i62.prol, !llvm.loop !51

.lr.ph56.i62.prol.loopexit:                       ; preds = %.lr.ph56.i62.prol, %.lr.ph56.i62.preheader
  %.254.i63.unr = phi ptr [ %.254.i63.ph, %.lr.ph56.i62.preheader ], [ %i.jm, %.lr.ph56.i62.prol ]
  %.22453.i64.unr = phi ptr [ %.22453.i64.ph, %.lr.ph56.i62.preheader ], [ %i.jo, %.lr.ph56.i62.prol ]
  %.22752.i65.unr = phi i32 [ %.22752.i65.ph, %.lr.ph56.i62.preheader ], [ %i.jr, %.lr.ph56.i62.prol ]
  %i.js = icmp ult i32 %i.jl, 3
  br i1 %i.js, label %xorbuf.exit90, label %.lr.ph56.i62

vec.epilog.vector.body165:                        ; preds = %vec.epilog.iter.check161, %vec.epilog.vector.body165
  %index166 = phi i64 [ %index.next171, %vec.epilog.vector.body165 ], [ %n.vec143, %vec.epilog.iter.check161 ] ; 3 uses
  %next.gep167 = getelementptr i8, ptr %.1110, i64 %index166
  %next.gep168 = getelementptr i8, ptr %0, i64 %index166 ; 2 uses
  %wide.load169 = load <4 x i8>, ptr %next.gep167, align 1, !tbaa !15, !alias.scope !63
  %wide.load170 = load <4 x i8>, ptr %next.gep168, align 1, !tbaa !15, !alias.scope !64, !noalias !63
end_hunk_0
