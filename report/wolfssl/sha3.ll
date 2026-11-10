Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/sha3?download=true
inline.NumInlined: 42
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@Sha3Update:bb.a
  %i.da = icmp ult ptr %i.cv, %i.bz
  br i1 %i.da, label %.lr.ph.i32.i, label %xorbuf.exit, !llvm.loop !31

iter.check66:                                     ; preds = %bb.e
  %i.db = zext i8 %.pre137 to i64                 ; 2 uses
  %i.dc = getelementptr i8, ptr %0, i64 %i.db
  %i.dd = getelementptr i8, ptr %i.g, i64 %i.db
  %bound048 = icmp ult ptr %0, %i.dd
  %bound149 = icmp ult ptr %i.g, %i.dc
  %found.conflict50 = and i1 %bound048, %bound149
  br i1 %found.conflict50, label %.lr.ph56.i.preheader, label %vector.ph53

vector.ph53:                                      ; preds = %iter.check66
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
  br i1 %cmp.n65, label %xorbuf.exit, label %vec.epilog.iter.check67

vec.epilog.iter.check67:                          ; preds = %middle.block64
  %min.epilog.iters.check69 = icmp eq i64 %i.de, 0
  br i1 %min.epilog.iters.check69, label %.lr.ph56.i.preheader, label %vec.epilog.vector.body73, !prof !18

.lr.ph56.i.preheader:                             ; preds = %iter.check66, %vec.epilog.iter.check67
  %.254.i.ph = phi ptr [ %i.df, %vec.epilog.iter.check67 ], [ %i.g, %iter.check66 ] ; 2 uses
  %.22453.i.ph = phi ptr [ %i.dg, %vec.epilog.iter.check67 ], [ %0, %iter.check66 ] ; 2 uses
  %.22752.i.ph = phi i32 [ %i.di, %vec.epilog.iter.check67 ], [ %.pre138, %iter.check66 ] ; 4 uses
  %i.eh = add nsw i32 %.22752.i.ph, -1
  %xtraiter218 = and i32 %.22752.i.ph, 3          ; 2 uses
  %lcmp.mod219.not = icmp eq i32 %xtraiter218, 0
  br i1 %lcmp.mod219.not, label %.lr.ph56.i.prol.loopexit, label %.lr.ph56.i.prol

.lr.ph56.i.prol:                                  ; preds = %.lr.ph56.i.preheader, %.lr.ph56.i.prol
  %.254.i.prol = phi ptr [ %i.ei, %.lr.ph56.i.prol ], [ %.254.i.ph, %.lr.ph56.i.preheader ] ; 2 uses
  %.22453.i.prol = phi ptr [ %i.ek, %.lr.ph56.i.prol ], [ %.22453.i.ph, %.lr.ph56.i.preheader ] ; 3 uses
  %.22752.i.prol = phi i32 [ %i.en, %.lr.ph56.i.prol ], [ %.22752.i.ph, %.lr.ph56.i.preheader ]
  %prol.iter220 = phi i32 [ %prol.iter220.next, %.lr.ph56.i.prol ], [ 0, %.lr.ph56.i.preheader ]
  %i.ei = getelementptr inbounds nuw i8, ptr %.254.i.prol, i64 1 ; 2 uses
  %i.ej = load i8, ptr %.254.i.prol, align 1, !tbaa !15
  %i.ek = getelementptr inbounds nuw i8, ptr %.22453.i.prol, i64 1 ; 2 uses
  %i.el = load i8, ptr %.22453.i.prol, align 1, !tbaa !15
  %i.em = xor i8 %i.el, %i.ej
  store i8 %i.em, ptr %.22453.i.prol, align 1, !tbaa !15
  %i.en = add nsw i32 %.22752.i.prol, -1          ; 2 uses
  %prol.iter220.next = add i32 %prol.iter220, 1   ; 2 uses
  %prol.iter220.cmp.not = icmp eq i32 %prol.iter220.next, %xtraiter218
  br i1 %prol.iter220.cmp.not, label %.lr.ph56.i.prol.loopexit, label %.lr.ph56.i.prol, !llvm.loop !35

.lr.ph56.i.prol.loopexit:                         ; preds = %.lr.ph56.i.prol, %.lr.ph56.i.preheader
  %.254.i.unr = phi ptr [ %.254.i.ph, %.lr.ph56.i.preheader ], [ %i.ei, %.lr.ph56.i.prol ]
  %.22453.i.unr = phi ptr [ %.22453.i.ph, %.lr.ph56.i.preheader ], [ %i.ek, %.lr.ph56.i.prol ]
  %.22752.i.unr = phi i32 [ %.22752.i.ph, %.lr.ph56.i.preheader ], [ %i.en, %.lr.ph56.i.prol ]
  %i.eo = icmp ult i32 %i.eh, 3
  br i1 %i.eo, label %xorbuf.exit, label %.lr.ph56.i

vec.epilog.vector.body73:                         ; preds = %vec.epilog.iter.check67, %vec.epilog.vector.body73
  %index74 = phi i64 [ %index.next79, %vec.epilog.vector.body73 ], [ %n.vec54, %vec.epilog.iter.check67 ] ; 3 uses
  %next.gep75 = getelementptr i8, ptr %i.g, i64 %index74
  %next.gep76 = getelementptr i8, ptr %0, i64 %index74 ; 2 uses
  %wide.load77 = load <4 x i8>, ptr %next.gep75, align 1, !tbaa !15, !alias.scope !57
  %wide.load78 = load <4 x i8>, ptr %next.gep76, align 1, !tbaa !15, !alias.scope !58, !noalias !57
  %i.ep = xor <4 x i8> %wide.load78, %wide.load77
  store <4 x i8> %i.ep, ptr %next.gep76, align 1, !tbaa !15, !alias.scope !58, !noalias !57
  %index.next79 = add nuw i64 %index74, 4         ; 2 uses
  %i.eq = icmp eq i64 %index.next79, %.idx.i30.i149
  br i1 %i.eq, label %xorbuf.exit, label %vec.epilog.vector.body73, !llvm.loop !36

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

xorbuf.exit:                                      ; preds = %vec.epilog.vector.body73, %.lr.ph56.i.prol.loopexit, %.lr.ph56.i, %.lr.ph.i32.i, %.lr.ph.i.i, %middle.block64, %middle.block98, %middle.block36
  tail call void @BlockSha3(ptr noundef nonnull %0)
  store i8 0, ptr %i.c, align 8, !tbaa !14
  br label %._crit_edge136

._crit_edge136:                                   ; preds = %bb.a, %._crit_edge, %xorbuf.exit
  %.050 = phi i32 [ %i.ap, %xorbuf.exit ], [ %i.ap, %._crit_edge ], [ %2, %bb.a ] ; 4 uses
  %.049 = phi ptr [ %i.ao, %xorbuf.exit ], [ %i.ao, %._crit_edge ], [ %1, %bb.a ] ; 4 uses
  %.049110 = ptrtoaddr ptr %.049 to i64           ; 6 uses
  %.not55108 = icmp ult i32 %.050, %.pre138
  br i1 %.not55108, label %._crit_edge115, label %.lr.ph114

.lr.ph114:                                        ; preds = %._crit_edge136
  %i.fm = udiv i32 %.050, %.pre138                ; 2 uses
  %i.fn = ptrtoint ptr %0 to i64                  ; 2 uses
  %.idx.i.i83 = zext i8 %.pre137 to i64           ; 5 uses
  %i.fo = zext nneg i8 %3 to i64
  %i.fp = mul nsw i64 %i.fo, -8
  %i.fq = xor i64 %.049110, -1
  %i.fr = add i64 %.049110, 8
  %i.fs = add i64 %.049110, %.idx.i.i83
  %.idx.i30.i72 = zext i8 %.pre137 to i64         ; 6 uses
  %i.ft = zext i8 %.pre137 to i64                 ; 2 uses
  %i.fu = getelementptr i8, ptr %0, i64 %i.ft
  %i.fv = and i64 %.idx.i30.i72, 24
  %n.vec148 = and i64 %.idx.i30.i72, 224          ; 9 uses
  %i.fw = getelementptr i8, ptr %0, i64 %n.vec148
  %i.fx = trunc nuw nsw i64 %n.vec148 to i32
  %i.fy = sub nsw i32 %.pre138, %i.fx
  %i.fz = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.ga = icmp eq i64 %n.vec148, 32
  %next.gep152.1.a = getelementptr i8, ptr %0, i64 32 ; 2 uses
  %i.gb = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %i.gc = icmp eq i64 %n.vec148, 64
  %next.gep152.2.a = getelementptr i8, ptr %0, i64 64 ; 2 uses
  %i.gd = getelementptr i8, ptr %0, i64 80        ; 2 uses
  %i.ge = icmp eq i64 %n.vec148, 96
  %next.gep152.3.a = getelementptr i8, ptr %0, i64 96 ; 2 uses
  %i.gf = getelementptr i8, ptr %0, i64 112       ; 2 uses
  %i.gg = icmp eq i64 %n.vec148, 128
  %next.gep152.4.a = getelementptr i8, ptr %0, i64 128 ; 2 uses
  %i.gh = getelementptr i8, ptr %0, i64 144       ; 2 uses
  %cmp.n159 = icmp eq i64 %n.vec148, %.idx.i30.i72
  %min.epilog.iters.check163 = icmp eq i64 %i.fv, 0
  %i.gi = add i64 %.049110, %.idx.i.i83
  %i.gj = add i64 %.049110, 8
  %i.gk = xor i64 %.049110, -1
  %i.gl = zext nneg i8 %3 to i64
  %i.gm = mul nsw i64 %i.gl, -8
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph114, %xorbuf.exit90
  %indvar = phi i64 [ 0, %.lr.ph114 ], [ %indvar.next, %xorbuf.exit90 ] ; 4 uses
  %.047112 = phi i32 [ %i.fm, %.lr.ph114 ], [ %i.ld, %xorbuf.exit90 ]
  %.1110 = phi ptr [ %.049, %.lr.ph114 ], [ %i.lc, %xorbuf.exit90 ] ; 31 uses
  %i.gn = ptrtoint ptr %.1110 to i64              ; 2 uses
  %i.go = or i64 %i.gn, %i.fn
  %i.gp = and i64 %i.go, 7
  %or.cond.i57 = icmp eq i64 %i.gp, 0
  br i1 %or.cond.i57, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.gq = getelementptr inbounds nuw i8, ptr %.1110, i64 %.idx.i.i83
  %i.gr = mul nuw nsw i64 %indvar, %.idx.i.i83    ; 5 uses
  %i.gs = add i64 %i.gi, %i.gr
  %i.gt = add i64 %i.gj, %i.gr
  %i.gu = tail call i64 @llvm.umax.i64(i64 %i.gs, i64 %i.gt)
  %i.gv = mul nsw i64 %indvar, %i.gm
  %i.gw = add i64 %i.gv, %i.gk
  %i.gx = add i64 %i.gu, %i.gw                    ; 2 uses
  %i.gy = lshr i64 %i.gx, 3
  %i.gz = add nuw nsw i64 %i.gy, 1                ; 2 uses
  %min.iters.check112 = icmp ult i64 %i.gx, 24
  br i1 %min.iters.check112, label %.lr.ph.i.i85.preheader, label %vector.memcheck113

vector.memcheck113:                               ; preds = %bb.g
  %i.ha = add i64 %i.fs, %i.gr
  %i.hb = add i64 %i.fr, %i.gr
  %i.hc = tail call i64 @llvm.umax.i64(i64 %i.ha, i64 %i.hb)
  %i.hd = mul nsw i64 %indvar, %i.fp
  %i.he = add i64 %i.hd, %i.fq
  %i.hf = add i64 %i.hc, %i.he
  %i.hg = and i64 %i.hf, -8                       ; 2 uses
  %4 = getelementptr i8, ptr %0, i64 %i.hg
  %i.hh = getelementptr i8, ptr %4, i64 8
  %i.hi = getelementptr i8, ptr %.049, i64 %i.gr
  %i.hj = getelementptr i8, ptr %i.hi, i64 8
  %i.hk = getelementptr i8, ptr %i.hj, i64 %i.hg
  %bound0114 = icmp ult ptr %0, %i.hk
  %bound1115 = icmp ult ptr %.1110, %i.hh
  %found.conflict116 = and i1 %bound0114, %bound1115
  br i1 %found.conflict116, label %.lr.ph.i.i85.preheader, label %vector.ph117

vector.ph117:                                     ; preds = %vector.memcheck113
  %n.vec118 = and i64 %i.gz, 4611686018427387900  ; 3 uses
  %i.hl = shl i64 %n.vec118, 3                    ; 2 uses
  %i.hm = getelementptr i8, ptr %0, i64 %i.hl
  %i.hn = getelementptr i8, ptr %.1110, i64 %i.hl
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %vector.ph117
  %index120 = phi i64 [ 0, %vector.ph117 ], [ %index.next127, %vector.body119 ] ; 2 uses
  %i.ho = shl i64 %index120, 3                    ; 2 uses
  %next.gep121 = getelementptr i8, ptr %0, i64 %i.ho ; 3 uses
  %next.gep122 = getelementptr i8, ptr %.1110, i64 %i.ho ; 2 uses
  %i.hp = getelementptr i8, ptr %next.gep122, i64 16
  %wide.load123 = load <2 x i64>, ptr %next.gep122, align 8, !tbaa !9, !alias.scope !59
  %wide.load124 = load <2 x i64>, ptr %i.hp, align 8, !tbaa !9, !alias.scope !59
  %i.hq = getelementptr i8, ptr %next.gep121, i64 16 ; 2 uses
  %wide.load125 = load <2 x i64>, ptr %next.gep121, align 8, !tbaa !9, !alias.scope !60, !noalias !59
  %wide.load126 = load <2 x i64>, ptr %i.hq, align 8, !tbaa !9, !alias.scope !60, !noalias !59
  %i.hr = xor <2 x i64> %wide.load125, %wide.load123
  %i.hs = xor <2 x i64> %wide.load126, %wide.load124
  store <2 x i64> %i.hr, ptr %next.gep121, align 8, !tbaa !9, !alias.scope !60, !noalias !59
  store <2 x i64> %i.hs, ptr %i.hq, align 8, !tbaa !9, !alias.scope !60, !noalias !59
  %index.next127 = add nuw i64 %index120, 4       ; 2 uses
  %i.ht = icmp eq i64 %index.next127, %n.vec118
  br i1 %i.ht, label %middle.block128, label %vector.body119, !llvm.loop !41

middle.block128:                                  ; preds = %vector.body119
  %cmp.n129 = icmp eq i64 %i.gz, %n.vec118
  br i1 %cmp.n129, label %xorbuf.exit90, label %.lr.ph.i.i85.preheader

.lr.ph.i.i85.preheader:                           ; preds = %vector.memcheck113, %bb.g, %middle.block128
  %.sroa.039.0.i86.ph = phi ptr [ %0, %vector.memcheck113 ], [ %0, %bb.g ], [ %i.hm, %middle.block128 ]
  %.ph = phi ptr [ %.1110, %vector.memcheck113 ], [ %.1110, %bb.g ], [ %i.hn, %middle.block128 ]
  br label %.lr.ph.i.i85

.lr.ph.i.i85:                                     ; preds = %.lr.ph.i.i85.preheader, %.lr.ph.i.i85
  %.sroa.039.0.i86 = phi ptr [ %i.hx, %.lr.ph.i.i85 ], [ %.sroa.039.0.i86.ph, %.lr.ph.i.i85.preheader ] ; 3 uses
  %i.hu = phi ptr [ %i.hv, %.lr.ph.i.i85 ], [ %.ph, %.lr.ph.i.i85.preheader ] ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8 ; 2 uses
  %i.hw = load i64, ptr %i.hu, align 8, !tbaa !9
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.039.0.i86, i64 8
  %i.hy = load i64, ptr %.sroa.039.0.i86, align 8, !tbaa !9
  %i.hz = xor i64 %i.hy, %i.hw
  store i64 %i.hz, ptr %.sroa.039.0.i86, align 8, !tbaa !9
  %i.ia = icmp ult ptr %i.hv, %i.gq
  br i1 %i.ia, label %.lr.ph.i.i85, label %xorbuf.exit90, !llvm.loop !42

bb.h:                                             ; preds = %bb.f
  %i.ib = xor i64 %i.gn, %i.fn
  %i.ic = and i64 %i.ib, 7
  %i.id = icmp eq i64 %i.ic, 0
  br i1 %i.id, label %._crit_edge.i68, label %iter.check160

._crit_edge.i68:                                  ; preds = %bb.h
  %i.ie = getelementptr inbounds nuw i8, ptr %.1110, i64 %.idx.i30.i72
  %.0.lcssa.i71187 = ptrtoaddr ptr %.1110 to i64  ; 3 uses
  %i.if = add i64 %.0.lcssa.i71187, %.idx.i30.i72
  %i.ig = add i64 %.0.lcssa.i71187, 8
  %i.ih = tail call i64 @llvm.umax.i64(i64 %i.if, i64 %i.ig)
  %i.ii = xor i64 %.0.lcssa.i71187, -1
  %i.ij = add i64 %i.ih, %i.ii                    ; 3 uses
  %i.ik = lshr i64 %i.ij, 3
  %i.il = add nuw nsw i64 %i.ik, 1                ; 2 uses
  %min.iters.check189 = icmp ult i64 %i.ij, 56
  br i1 %min.iters.check189, label %.lr.ph.i32.i74.preheader, label %vector.memcheck190

vector.memcheck190:                               ; preds = %._crit_edge.i68
  %i.im = and i64 %i.ij, -8
  %i.in = add i64 %i.im, 8                        ; 2 uses
  %i.io = getelementptr i8, ptr %0, i64 %i.in
  %i.ip = getelementptr i8, ptr %.1110, i64 %i.in
  %bound0191 = icmp ult ptr %0, %i.ip
  %bound1192 = icmp ult ptr %.1110, %i.io
  %found.conflict193 = and i1 %bound0191, %bound1192
  br i1 %found.conflict193, label %.lr.ph.i32.i74.preheader, label %vector.ph194

vector.ph194:                                     ; preds = %vector.memcheck190
  %n.vec195 = and i64 %i.il, 4611686018427387900  ; 3 uses
  %i.iq = shl i64 %n.vec195, 3                    ; 2 uses
  %i.ir = getelementptr i8, ptr %0, i64 %i.iq
  %i.is = getelementptr i8, ptr %.1110, i64 %i.iq
  br label %vector.body196

vector.body196:                                   ; preds = %vector.body196, %vector.ph194
  %index197 = phi i64 [ 0, %vector.ph194 ], [ %index.next204, %vector.body196 ] ; 2 uses
  %i.it = shl i64 %index197, 3                    ; 2 uses
  %next.gep198 = getelementptr i8, ptr %0, i64 %i.it ; 3 uses
  %next.gep199 = getelementptr i8, ptr %.1110, i64 %i.it ; 2 uses
  %i.iu = getelementptr i8, ptr %next.gep199, i64 16
  %wide.load200 = load <2 x i64>, ptr %next.gep199, align 8, !tbaa !9, !alias.scope !61
  %wide.load201 = load <2 x i64>, ptr %i.iu, align 8, !tbaa !9, !alias.scope !61
  %i.iv = getelementptr i8, ptr %next.gep198, i64 16 ; 2 uses
  %wide.load202 = load <2 x i64>, ptr %next.gep198, align 8, !tbaa !9, !alias.scope !62, !noalias !61
  %wide.load203 = load <2 x i64>, ptr %i.iv, align 8, !tbaa !9, !alias.scope !62, !noalias !61
  %i.iw = xor <2 x i64> %wide.load202, %wide.load200
  %i.ix = xor <2 x i64> %wide.load203, %wide.load201
  store <2 x i64> %i.iw, ptr %next.gep198, align 8, !tbaa !9, !alias.scope !62, !noalias !61
  store <2 x i64> %i.ix, ptr %i.iv, align 8, !tbaa !9, !alias.scope !62, !noalias !61
  %index.next204 = add nuw i64 %index197, 4       ; 2 uses
  %i.iy = icmp eq i64 %index.next204, %n.vec195
  br i1 %i.iy, label %middle.block205, label %vector.body196, !llvm.loop !46

middle.block205:                                  ; preds = %vector.body196
  %cmp.n206 = icmp eq i64 %i.il, %n.vec195
  br i1 %cmp.n206, label %xorbuf.exit90, label %.lr.ph.i32.i74.preheader

.lr.ph.i32.i74.preheader:                         ; preds = %vector.memcheck190, %._crit_edge.i68, %middle.block205
  %.sroa.039.2.i75.ph = phi ptr [ %0, %vector.memcheck190 ], [ %0, %._crit_edge.i68 ], [ %i.ir, %middle.block205 ]
  %.ph209 = phi ptr [ %.1110, %vector.memcheck190 ], [ %.1110, %._crit_edge.i68 ], [ %i.is, %middle.block205 ]
  br label %.lr.ph.i32.i74

.lr.ph.i32.i74:                                   ; preds = %.lr.ph.i32.i74.preheader, %.lr.ph.i32.i74
  %.sroa.039.2.i75 = phi ptr [ %i.jc, %.lr.ph.i32.i74 ], [ %.sroa.039.2.i75.ph, %.lr.ph.i32.i74.preheader ] ; 3 uses
  %i.iz = phi ptr [ %i.ja, %.lr.ph.i32.i74 ], [ %.ph209, %.lr.ph.i32.i74.preheader ] ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8 ; 2 uses
  %i.jb = load i64, ptr %i.iz, align 8, !tbaa !9
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.039.2.i75, i64 8
  %i.jd = load i64, ptr %.sroa.039.2.i75, align 8, !tbaa !9
  %i.je = xor i64 %i.jd, %i.jb
  store i64 %i.je, ptr %.sroa.039.2.i75, align 8, !tbaa !9
  %i.jf = icmp ult ptr %i.ja, %i.ie
  br i1 %i.jf, label %.lr.ph.i32.i74, label %xorbuf.exit90, !llvm.loop !47

iter.check160:                                    ; preds = %bb.h
  %i.jg = getelementptr i8, ptr %.1110, i64 %i.ft
  %bound0142 = icmp ult ptr %0, %i.jg
  %bound1143 = icmp ult ptr %.1110, %i.fu
  %found.conflict144 = and i1 %bound0142, %bound1143
  br i1 %found.conflict144, label %.lr.ph56.i62.preheader, label %vector.ph147

vector.ph147:                                     ; preds = %iter.check160
  %i.jh = getelementptr i8, ptr %.1110, i64 %n.vec148
  %i.ji = getelementptr i8, ptr %.1110, i64 16
  %wide.load153 = load <16 x i8>, ptr %.1110, align 1, !tbaa !15, !alias.scope !63
  %wide.load154 = load <16 x i8>, ptr %i.ji, align 1, !tbaa !15, !alias.scope !63
  %wide.load155 = load <16 x i8>, ptr %0, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  %wide.load156 = load <16 x i8>, ptr %i.fz, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  %i.jj = xor <16 x i8> %wide.load155, %wide.load153
  %i.jk = xor <16 x i8> %wide.load156, %wide.load154
  store <16 x i8> %i.jj, ptr %0, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  store <16 x i8> %i.jk, ptr %i.fz, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  br i1 %i.ga, label %middle.block158, label %vector.body149.1

vector.body149.1:                                 ; preds = %vector.ph147
  %next.gep151.1 = getelementptr i8, ptr %.1110, i64 32
  %i.jl = getelementptr i8, ptr %.1110, i64 48
  %wide.load153.1 = load <16 x i8>, ptr %next.gep151.1, align 1, !tbaa !15, !alias.scope !63
  %wide.load154.1 = load <16 x i8>, ptr %i.jl, align 1, !tbaa !15, !alias.scope !63
  %wide.load155.1 = load <16 x i8>, ptr %next.gep152.1.a, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  %wide.load156.1 = load <16 x i8>, ptr %i.gb, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  %i.jm = xor <16 x i8> %wide.load155.1, %wide.load153.1
  %i.jn = xor <16 x i8> %wide.load156.1, %wide.load154.1
  store <16 x i8> %i.jm, ptr %next.gep152.1.a, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  store <16 x i8> %i.jn, ptr %i.gb, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  br i1 %i.gc, label %middle.block158, label %vector.body149.2

vector.body149.2:                                 ; preds = %vector.body149.1
  %next.gep151.2 = getelementptr i8, ptr %.1110, i64 64
  %i.jo = getelementptr i8, ptr %.1110, i64 80
  %wide.load153.2 = load <16 x i8>, ptr %next.gep151.2, align 1, !tbaa !15, !alias.scope !63
  %wide.load154.2 = load <16 x i8>, ptr %i.jo, align 1, !tbaa !15, !alias.scope !63
  %wide.load155.2 = load <16 x i8>, ptr %next.gep152.2.a, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  %wide.load156.2 = load <16 x i8>, ptr %i.gd, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  %i.jp = xor <16 x i8> %wide.load155.2, %wide.load153.2
  %i.jq = xor <16 x i8> %wide.load156.2, %wide.load154.2
  store <16 x i8> %i.jp, ptr %next.gep152.2.a, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  store <16 x i8> %i.jq, ptr %i.gd, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  br i1 %i.ge, label %middle.block158, label %vector.body149.3

vector.body149.3:                                 ; preds = %vector.body149.2
  %next.gep151.3 = getelementptr i8, ptr %.1110, i64 96
  %i.jr = getelementptr i8, ptr %.1110, i64 112
  %wide.load153.3 = load <16 x i8>, ptr %next.gep151.3, align 1, !tbaa !15, !alias.scope !63
  %wide.load154.3 = load <16 x i8>, ptr %i.jr, align 1, !tbaa !15, !alias.scope !63
  %wide.load155.3 = load <16 x i8>, ptr %next.gep152.3.a, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  %wide.load156.3 = load <16 x i8>, ptr %i.gf, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  %i.js = xor <16 x i8> %wide.load155.3, %wide.load153.3
  %i.jt = xor <16 x i8> %wide.load156.3, %wide.load154.3
  store <16 x i8> %i.js, ptr %next.gep152.3.a, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  store <16 x i8> %i.jt, ptr %i.gf, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  br i1 %i.gg, label %middle.block158, label %vector.body149.4

vector.body149.4:                                 ; preds = %vector.body149.3
  %next.gep151.4 = getelementptr i8, ptr %.1110, i64 128
  %i.ju = getelementptr i8, ptr %.1110, i64 144
  %wide.load153.4 = load <16 x i8>, ptr %next.gep151.4, align 1, !tbaa !15, !alias.scope !63
  %wide.load154.4 = load <16 x i8>, ptr %i.ju, align 1, !tbaa !15, !alias.scope !63
  %wide.load155.4 = load <16 x i8>, ptr %next.gep152.4.a, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  %wide.load156.4 = load <16 x i8>, ptr %i.gh, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  %i.jv = xor <16 x i8> %wide.load155.4, %wide.load153.4
  %i.jw = xor <16 x i8> %wide.load156.4, %wide.load154.4
  store <16 x i8> %i.jv, ptr %next.gep152.4.a, align 8, !tbaa !15, !alias.scope !64, !noalias !63
end_hunk_0
