Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/sha3?download=true
inline.NumInlined: 42
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@Sha3Update:bb.a
  %.sroa.039.2.i.ph = phi ptr [ %0, %vector.memcheck24 ], [ %0, %._crit_edge.i.thread ], [ %i.cn, %middle.block35 ]
  %.ph208 = phi ptr [ %i.g, %vector.memcheck24 ], [ %i.g, %._crit_edge.i.thread ], [ %i.co, %middle.block35 ]
  br label %.lr.ph.i32.i

.lr.ph.i32.i:                                     ; preds = %.lr.ph.i32.i.preheader, %.lr.ph.i32.i
  %.sroa.039.2.i = phi ptr [ %i.cy, %.lr.ph.i32.i ], [ %.sroa.039.2.i.ph, %.lr.ph.i32.i.preheader ] ; 3 uses
  %i.cv = phi ptr [ %i.cw, %.lr.ph.i32.i ], [ %.ph208, %.lr.ph.i32.i.preheader ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 2 uses
  %i.cx = load i64, ptr %i.cv, align 8, !tbaa !9
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.039.2.i, i64 8
  %i.cz = load i64, ptr %.sroa.039.2.i, align 8, !tbaa !9
  %i.da = xor i64 %i.cz, %i.cx
  store i64 %i.da, ptr %.sroa.039.2.i, align 8, !tbaa !9
  %i.db = icmp ult ptr %i.cw, %i.bz
  br i1 %i.db, label %.lr.ph.i32.i, label %xorbuf.exit, !llvm.loop !31

iter.check69:                                     ; preds = %bb.e
  %i.dc = zext i8 %.pre137 to i64                 ; 2 uses
  %i.dd = getelementptr i8, ptr %0, i64 %i.dc
  %i.de = getelementptr i8, ptr %i.g, i64 %i.dc
  %bound047 = icmp ult ptr %0, %i.de
  %bound148 = icmp ult ptr %i.g, %i.dd
  %found.conflict49 = and i1 %bound047, %bound148
  br i1 %found.conflict49, label %.lr.ph56.i.preheader, label %vector.ph52

vector.ph52:                                      ; preds = %iter.check69
  %i.df = and i64 %.idx.i30.i149, 24
  %n.vec53 = and i64 %.idx.i30.i149, 224          ; 9 uses
  %i.dg = getelementptr i8, ptr %i.g, i64 %n.vec53
  %i.dh = getelementptr i8, ptr %0, i64 %n.vec53
  %i.di = trunc nuw nsw i64 %n.vec53 to i32
  %i.dj = sub nsw i32 %.pre138, %i.di
  %i.dk = getelementptr i8, ptr %0, i64 216
  %wide.load58 = load <16 x i8>, ptr %i.g, align 8, !tbaa !15, !alias.scope !57
  %wide.load59 = load <16 x i8>, ptr %i.dk, align 8, !tbaa !15, !alias.scope !57
  %i.dl = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %wide.load60 = load <16 x i8>, ptr %0, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %wide.load61 = load <16 x i8>, ptr %i.dl, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %i.dm = xor <16 x i8> %wide.load60, %wide.load58
  %i.dn = xor <16 x i8> %wide.load61, %wide.load59
  store <16 x i8> %i.dm, ptr %0, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  store <16 x i8> %i.dn, ptr %i.dl, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %i.do = icmp eq i64 %n.vec53, 32
  br i1 %i.do, label %middle.block63, label %vector.body54.1

vector.body54.1:                                  ; preds = %vector.ph52
  %next.gep56.1 = getelementptr i8, ptr %0, i64 232
  %next.gep57.1 = getelementptr i8, ptr %0, i64 32 ; 2 uses
  %i.dp = getelementptr i8, ptr %0, i64 248
  %wide.load58.1 = load <16 x i8>, ptr %next.gep56.1, align 8, !tbaa !15, !alias.scope !57
  %wide.load59.1 = load <16 x i8>, ptr %i.dp, align 8, !tbaa !15, !alias.scope !57
  %i.dq = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %wide.load60.1 = load <16 x i8>, ptr %next.gep57.1, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %wide.load61.1 = load <16 x i8>, ptr %i.dq, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %i.dr = xor <16 x i8> %wide.load60.1, %wide.load58.1
  %i.ds = xor <16 x i8> %wide.load61.1, %wide.load59.1
  store <16 x i8> %i.dr, ptr %next.gep57.1, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  store <16 x i8> %i.ds, ptr %i.dq, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %i.dt = icmp eq i64 %n.vec53, 64
  br i1 %i.dt, label %middle.block63, label %vector.body54.2

vector.body54.2:                                  ; preds = %vector.body54.1
  %next.gep56.2 = getelementptr i8, ptr %0, i64 264
  %next.gep57.2 = getelementptr i8, ptr %0, i64 64 ; 2 uses
  %i.du = getelementptr i8, ptr %0, i64 280
  %wide.load58.2 = load <16 x i8>, ptr %next.gep56.2, align 8, !tbaa !15, !alias.scope !57
  %wide.load59.2 = load <16 x i8>, ptr %i.du, align 8, !tbaa !15, !alias.scope !57
  %i.dv = getelementptr i8, ptr %0, i64 80        ; 2 uses
  %wide.load60.2 = load <16 x i8>, ptr %next.gep57.2, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %wide.load61.2 = load <16 x i8>, ptr %i.dv, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %i.dw = xor <16 x i8> %wide.load60.2, %wide.load58.2
  %i.dx = xor <16 x i8> %wide.load61.2, %wide.load59.2
  store <16 x i8> %i.dw, ptr %next.gep57.2, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  store <16 x i8> %i.dx, ptr %i.dv, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %i.dy = icmp eq i64 %n.vec53, 96
  br i1 %i.dy, label %middle.block63, label %vector.body54.3

vector.body54.3:                                  ; preds = %vector.body54.2
  %next.gep56.3 = getelementptr i8, ptr %0, i64 296
  %next.gep57.3 = getelementptr i8, ptr %0, i64 96 ; 2 uses
  %i.dz = getelementptr i8, ptr %0, i64 312
  %wide.load58.3 = load <16 x i8>, ptr %next.gep56.3, align 8, !tbaa !15, !alias.scope !57
  %wide.load59.3 = load <16 x i8>, ptr %i.dz, align 8, !tbaa !15, !alias.scope !57
  %i.ea = getelementptr i8, ptr %0, i64 112       ; 2 uses
  %wide.load60.3 = load <16 x i8>, ptr %next.gep57.3, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %wide.load61.3 = load <16 x i8>, ptr %i.ea, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %i.eb = xor <16 x i8> %wide.load60.3, %wide.load58.3
  %i.ec = xor <16 x i8> %wide.load61.3, %wide.load59.3
  store <16 x i8> %i.eb, ptr %next.gep57.3, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  store <16 x i8> %i.ec, ptr %i.ea, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %i.ed = icmp eq i64 %n.vec53, 128
  br i1 %i.ed, label %middle.block63, label %vector.body54.4

vector.body54.4:                                  ; preds = %vector.body54.3
  %next.gep56.4 = getelementptr i8, ptr %0, i64 328
  %next.gep57.4 = getelementptr i8, ptr %0, i64 128 ; 2 uses
  %i.ee = getelementptr i8, ptr %0, i64 344
  %wide.load58.4 = load <16 x i8>, ptr %next.gep56.4, align 8, !tbaa !15, !alias.scope !57
  %wide.load59.4 = load <16 x i8>, ptr %i.ee, align 8, !tbaa !15, !alias.scope !57
  %i.ef = getelementptr i8, ptr %0, i64 144       ; 2 uses
  %wide.load60.4 = load <16 x i8>, ptr %next.gep57.4, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %wide.load61.4 = load <16 x i8>, ptr %i.ef, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %i.eg = xor <16 x i8> %wide.load60.4, %wide.load58.4
  %i.eh = xor <16 x i8> %wide.load61.4, %wide.load59.4
  store <16 x i8> %i.eg, ptr %next.gep57.4, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  store <16 x i8> %i.eh, ptr %i.ef, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  br label %middle.block63

middle.block63:                                   ; preds = %vector.body54.4, %vector.body54.3, %vector.body54.2, %vector.body54.1, %vector.ph52
  %cmp.n64 = icmp eq i64 %n.vec53, %.idx.i30.i149
  br i1 %cmp.n64, label %xorbuf.exit, label %vec.epilog.iter.check71

vec.epilog.iter.check71:                          ; preds = %middle.block63
  %min.epilog.iters.check72 = icmp eq i64 %i.df, 0
  br i1 %min.epilog.iters.check72, label %.lr.ph56.i.preheader, label %vec.epilog.vector.body75, !prof !18

.lr.ph56.i.preheader:                             ; preds = %iter.check69, %vec.epilog.iter.check71
  %.254.i.ph = phi ptr [ %i.dg, %vec.epilog.iter.check71 ], [ %i.g, %iter.check69 ] ; 2 uses
  %.22453.i.ph = phi ptr [ %i.dh, %vec.epilog.iter.check71 ], [ %0, %iter.check69 ] ; 2 uses
  %.22752.i.ph = phi i32 [ %i.dj, %vec.epilog.iter.check71 ], [ %.pre138, %iter.check69 ] ; 4 uses
  %i.ei = add nsw i32 %.22752.i.ph, -1
  %xtraiter212 = and i32 %.22752.i.ph, 3          ; 2 uses
  %lcmp.mod213.not = icmp eq i32 %xtraiter212, 0
  br i1 %lcmp.mod213.not, label %.lr.ph56.i.prol.loopexit, label %.lr.ph56.i.prol

.lr.ph56.i.prol:                                  ; preds = %.lr.ph56.i.preheader, %.lr.ph56.i.prol
  %.254.i.prol = phi ptr [ %i.ej, %.lr.ph56.i.prol ], [ %.254.i.ph, %.lr.ph56.i.preheader ] ; 2 uses
  %.22453.i.prol = phi ptr [ %i.el, %.lr.ph56.i.prol ], [ %.22453.i.ph, %.lr.ph56.i.preheader ] ; 3 uses
  %.22752.i.prol = phi i32 [ %i.eo, %.lr.ph56.i.prol ], [ %.22752.i.ph, %.lr.ph56.i.preheader ]
  %prol.iter214 = phi i32 [ %prol.iter214.next, %.lr.ph56.i.prol ], [ 0, %.lr.ph56.i.preheader ]
  %i.ej = getelementptr inbounds nuw i8, ptr %.254.i.prol, i64 1 ; 2 uses
  %i.ek = load i8, ptr %.254.i.prol, align 1, !tbaa !15
  %i.el = getelementptr inbounds nuw i8, ptr %.22453.i.prol, i64 1 ; 2 uses
  %i.em = load i8, ptr %.22453.i.prol, align 1, !tbaa !15
  %i.en = xor i8 %i.em, %i.ek
  store i8 %i.en, ptr %.22453.i.prol, align 1, !tbaa !15
  %i.eo = add nsw i32 %.22752.i.prol, -1          ; 2 uses
  %prol.iter214.next = add i32 %prol.iter214, 1   ; 2 uses
  %prol.iter214.cmp.not = icmp eq i32 %prol.iter214.next, %xtraiter212
  br i1 %prol.iter214.cmp.not, label %.lr.ph56.i.prol.loopexit, label %.lr.ph56.i.prol, !llvm.loop !35

.lr.ph56.i.prol.loopexit:                         ; preds = %.lr.ph56.i.prol, %.lr.ph56.i.preheader
  %.254.i.unr = phi ptr [ %.254.i.ph, %.lr.ph56.i.preheader ], [ %i.ej, %.lr.ph56.i.prol ]
  %.22453.i.unr = phi ptr [ %.22453.i.ph, %.lr.ph56.i.preheader ], [ %i.el, %.lr.ph56.i.prol ]
  %.22752.i.unr = phi i32 [ %.22752.i.ph, %.lr.ph56.i.preheader ], [ %i.eo, %.lr.ph56.i.prol ]
  %i.ep = icmp ult i32 %i.ei, 3
  br i1 %i.ep, label %xorbuf.exit, label %.lr.ph56.i

vec.epilog.vector.body75:                         ; preds = %vec.epilog.iter.check71, %vec.epilog.vector.body75
  %index76 = phi i64 [ %index.next81, %vec.epilog.vector.body75 ], [ %n.vec53, %vec.epilog.iter.check71 ] ; 3 uses
  %next.gep77 = getelementptr i8, ptr %i.g, i64 %index76
  %next.gep78 = getelementptr i8, ptr %0, i64 %index76 ; 2 uses
  %wide.load79 = load <4 x i8>, ptr %next.gep77, align 1, !tbaa !15, !alias.scope !57
  %wide.load80 = load <4 x i8>, ptr %next.gep78, align 1, !tbaa !15, !alias.scope !58, !noalias !57
  %i.eq = xor <4 x i8> %wide.load80, %wide.load79
  store <4 x i8> %i.eq, ptr %next.gep78, align 1, !tbaa !15, !alias.scope !58, !noalias !57
  %index.next81 = add nuw i64 %index76, 4         ; 2 uses
  %i.er = icmp eq i64 %index.next81, %.idx.i30.i149
  br i1 %i.er, label %xorbuf.exit, label %vec.epilog.vector.body75, !llvm.loop !36

.lr.ph56.i:                                       ; preds = %.lr.ph56.i.prol.loopexit, %.lr.ph56.i
  %.254.i = phi ptr [ %i.fh, %.lr.ph56.i ], [ %.254.i.unr, %.lr.ph56.i.prol.loopexit ] ; 5 uses
  %.22453.i = phi ptr [ %i.fj, %.lr.ph56.i ], [ %.22453.i.unr, %.lr.ph56.i.prol.loopexit ] ; 6 uses
  %.22752.i = phi i32 [ %i.fm, %.lr.ph56.i ], [ %.22752.i.unr, %.lr.ph56.i.prol.loopexit ]
  %i.es = getelementptr inbounds nuw i8, ptr %.254.i, i64 1
  %i.et = load i8, ptr %.254.i, align 1, !tbaa !15
  %i.eu = getelementptr inbounds nuw i8, ptr %.22453.i, i64 1 ; 2 uses
  %i.ev = load i8, ptr %.22453.i, align 1, !tbaa !15
  %i.ew = xor i8 %i.ev, %i.et
  store i8 %i.ew, ptr %.22453.i, align 1, !tbaa !15
  %i.ex = getelementptr inbounds nuw i8, ptr %.254.i, i64 2
  %i.ey = load i8, ptr %i.es, align 1, !tbaa !15
  %i.ez = getelementptr inbounds nuw i8, ptr %.22453.i, i64 2 ; 2 uses
  %i.fa = load i8, ptr %i.eu, align 1, !tbaa !15
  %i.fb = xor i8 %i.fa, %i.ey
  store i8 %i.fb, ptr %i.eu, align 1, !tbaa !15
  %i.fc = getelementptr inbounds nuw i8, ptr %.254.i, i64 3
  %i.fd = load i8, ptr %i.ex, align 1, !tbaa !15
  %i.fe = getelementptr inbounds nuw i8, ptr %.22453.i, i64 3 ; 2 uses
  %i.ff = load i8, ptr %i.ez, align 1, !tbaa !15
  %i.fg = xor i8 %i.ff, %i.fd
  store i8 %i.fg, ptr %i.ez, align 1, !tbaa !15
  %i.fh = getelementptr inbounds nuw i8, ptr %.254.i, i64 4
  %i.fi = load i8, ptr %i.fc, align 1, !tbaa !15
  %i.fj = getelementptr inbounds nuw i8, ptr %.22453.i, i64 4
  %i.fk = load i8, ptr %i.fe, align 1, !tbaa !15
  %i.fl = xor i8 %i.fk, %i.fi
  store i8 %i.fl, ptr %i.fe, align 1, !tbaa !15
  %i.fm = add nsw i32 %.22752.i, -4               ; 2 uses
  %.not.i.3 = icmp eq i32 %i.fm, 0
  br i1 %.not.i.3, label %xorbuf.exit, label %.lr.ph56.i, !llvm.loop !37

xorbuf.exit:                                      ; preds = %vec.epilog.vector.body75, %.lr.ph56.i.prol.loopexit, %.lr.ph56.i, %.lr.ph.i32.i, %.lr.ph.i.i, %middle.block63, %middle.block100, %middle.block35
  tail call void @BlockSha3(ptr noundef nonnull %0)
  store i8 0, ptr %i.c, align 8, !tbaa !14
  br label %._crit_edge136

._crit_edge136:                                   ; preds = %bb.a, %._crit_edge, %xorbuf.exit
  %.050 = phi i32 [ %i.ap, %xorbuf.exit ], [ %i.ap, %._crit_edge ], [ %2, %bb.a ] ; 4 uses
  %.049 = phi ptr [ %i.ao, %xorbuf.exit ], [ %i.ao, %._crit_edge ], [ %1, %bb.a ] ; 4 uses
  %.not55108 = icmp ult i32 %.050, %.pre138
  br i1 %.not55108, label %._crit_edge115, label %.lr.ph114

.lr.ph114:                                        ; preds = %._crit_edge136
  %.049105 = ptrtoaddr ptr %.049 to i64           ; 4 uses
  %i.fn = udiv i32 %.050, %.pre138                ; 2 uses
  %i.fo = ptrtoint ptr %0 to i64                  ; 2 uses
  %.idx.i.i83 = zext i8 %.pre137 to i64           ; 4 uses
  %scevgep = getelementptr i8, ptr %0, i64 8
  %i.fp = add i64 %.049105, %.idx.i.i83
  %i.fq = zext nneg i8 %3 to i64                  ; 2 uses
  %i.fr = shl nuw nsw i64 %i.fq, 3
  %i.fs = add i64 %.049105, 8                     ; 2 uses
  %i.ft = xor i64 %.049105, -1                    ; 2 uses
  %4 = mul nsw i64 %i.fq, -8
  %5 = zext nneg i8 %3 to i64                     ; 2 uses
  %i.fu = mul nsw i64 %5, -8
  %6 = shl nuw nsw i64 %5, 3
  %7 = add i64 %.049105, %.idx.i.i83
  %i.fv = zext i8 %.pre137 to i64                 ; 4 uses
  %scevgep130 = getelementptr i8, ptr %0, i64 1
  %i.fw = add nsw i32 %.pre138, -1
  %i.fx = zext i32 %i.fw to i64                   ; 2 uses
  %scevgep131 = getelementptr i8, ptr %scevgep130, i64 %i.fx
  %i.fy = and i64 %i.fv, 24
  %n.vec142 = and i64 %i.fv, 224                  ; 9 uses
  %i.fz = getelementptr i8, ptr %0, i64 %n.vec142
  %i.ga = trunc nuw nsw i64 %n.vec142 to i32
  %i.gb = sub nsw i32 %.pre138, %i.ga
  %i.gc = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.gd = icmp eq i64 %n.vec142, 32
  %next.gep146.1 = getelementptr i8, ptr %0, i64 32 ; 2 uses
  %i.ge = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %i.gf = icmp eq i64 %n.vec142, 64
  %next.gep146.2 = getelementptr i8, ptr %0, i64 64 ; 2 uses
  %i.gg = getelementptr i8, ptr %0, i64 80        ; 2 uses
  %i.gh = icmp eq i64 %n.vec142, 96
  %next.gep146.3 = getelementptr i8, ptr %0, i64 96 ; 2 uses
  %i.gi = getelementptr i8, ptr %0, i64 112       ; 2 uses
  %i.gj = icmp eq i64 %n.vec142, 128
  %next.gep146.4 = getelementptr i8, ptr %0, i64 128 ; 2 uses
  %i.gk = getelementptr i8, ptr %0, i64 144       ; 2 uses
  %cmp.n153 = icmp eq i64 %n.vec142, %i.fv
  %min.epilog.iters.check161 = icmp eq i64 %i.fy, 0
  %.idx.i30.i72 = zext i8 %.pre137 to i64         ; 3 uses
  %scevgep177 = getelementptr i8, ptr %0, i64 8
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph114, %xorbuf.exit90
  %indvar = phi i64 [ 0, %.lr.ph114 ], [ %indvar.next, %xorbuf.exit90 ] ; 5 uses
  %.047112 = phi i32 [ %i.fn, %.lr.ph114 ], [ %i.ks, %xorbuf.exit90 ]
  %.1110 = phi ptr [ %.049, %.lr.ph114 ], [ %i.kr, %xorbuf.exit90 ] ; 31 uses
  %i.gl = mul i64 %i.fr, %indvar                  ; 3 uses
  %i.gm = add i64 %i.fp, %i.gl
  %i.gn = add i64 %i.fs, %i.gl
  %umax = tail call i64 @llvm.umax.i64(i64 %i.gm, i64 %i.gn)
  %i.go = mul i64 %4, %indvar
  %i.gp = add i64 %i.go, %i.ft
  %i.gq = add i64 %umax, %i.gp
  %i.gr = and i64 %i.gq, -8                       ; 2 uses
  %scevgep106 = getelementptr i8, ptr %scevgep, i64 %i.gr
  %i.gs = getelementptr i8, ptr %.049, i64 %i.gl
  %scevgep107 = getelementptr i8, ptr %i.gs, i64 8
  %scevgep108 = getelementptr i8, ptr %scevgep107, i64 %i.gr
  %i.gt = ptrtoint ptr %.1110 to i64              ; 2 uses
  %i.gu = or i64 %i.gt, %i.fo
  %i.gv = and i64 %i.gu, 7
  %or.cond.i57 = icmp eq i64 %i.gv, 0
  br i1 %or.cond.i57, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %8 = mul i64 %6, %indvar                        ; 2 uses
  %9 = add i64 %7, %8
  %i.gw = add i64 %i.fs, %8
  %10 = mul i64 %i.fu, %indvar
  %11 = add i64 %10, %i.ft
  %12 = getelementptr inbounds nuw i8, ptr %.1110, i64 %.idx.i.i83
  %13 = tail call i64 @llvm.umax.i64(i64 %9, i64 %i.gw)
  %i.gx = add i64 %13, %11                        ; 2 uses
  %i.gy = lshr i64 %i.gx, 3
  %i.gz = add nuw nsw i64 %i.gy, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %i.gx, 24
  br i1 %min.iters.check113, label %.lr.ph.i.i85.preheader, label %vector.memcheck104

vector.memcheck104:                               ; preds = %bb.g
  %bound0109 = icmp ult ptr %0, %scevgep108
  %bound1110 = icmp ult ptr %.1110, %scevgep106
  %found.conflict111 = and i1 %bound0109, %bound1110
  br i1 %found.conflict111, label %.lr.ph.i.i85.preheader, label %vector.ph114

vector.ph114:                                     ; preds = %vector.memcheck104
  %n.vec115 = and i64 %i.gz, 4611686018427387900  ; 3 uses
  %i.ha = shl i64 %n.vec115, 3                    ; 2 uses
  %i.hb = getelementptr i8, ptr %0, i64 %i.ha
  %i.hc = getelementptr i8, ptr %.1110, i64 %i.ha
  br label %vector.body116

vector.body116:                                   ; preds = %vector.body116, %vector.ph114
  %index117 = phi i64 [ 0, %vector.ph114 ], [ %index.next124, %vector.body116 ] ; 2 uses
  %i.hd = shl i64 %index117, 3                    ; 2 uses
  %next.gep118 = getelementptr i8, ptr %0, i64 %i.hd ; 3 uses
  %next.gep119 = getelementptr i8, ptr %.1110, i64 %i.hd ; 2 uses
  %i.he = getelementptr i8, ptr %next.gep119, i64 16
  %wide.load120 = load <2 x i64>, ptr %next.gep119, align 8, !tbaa !9, !alias.scope !59
  %wide.load121 = load <2 x i64>, ptr %i.he, align 8, !tbaa !9, !alias.scope !59
  %i.hf = getelementptr i8, ptr %next.gep118, i64 16 ; 2 uses
  %wide.load122 = load <2 x i64>, ptr %next.gep118, align 8, !tbaa !9, !alias.scope !60, !noalias !59
  %wide.load123 = load <2 x i64>, ptr %i.hf, align 8, !tbaa !9, !alias.scope !60, !noalias !59
  %i.hg = xor <2 x i64> %wide.load122, %wide.load120
  %i.hh = xor <2 x i64> %wide.load123, %wide.load121
  store <2 x i64> %i.hg, ptr %next.gep118, align 8, !tbaa !9, !alias.scope !60, !noalias !59
  store <2 x i64> %i.hh, ptr %i.hf, align 8, !tbaa !9, !alias.scope !60, !noalias !59
  %index.next124 = add nuw i64 %index117, 4       ; 2 uses
  %i.hi = icmp eq i64 %index.next124, %n.vec115
  br i1 %i.hi, label %middle.block125, label %vector.body116, !llvm.loop !41

middle.block125:                                  ; preds = %vector.body116
  %cmp.n126 = icmp eq i64 %i.gz, %n.vec115
  br i1 %cmp.n126, label %xorbuf.exit90, label %.lr.ph.i.i85.preheader

.lr.ph.i.i85.preheader:                           ; preds = %vector.memcheck104, %bb.g, %middle.block125
  %.sroa.039.0.i86.ph = phi ptr [ %0, %vector.memcheck104 ], [ %0, %bb.g ], [ %i.hb, %middle.block125 ]
  %.ph = phi ptr [ %.1110, %vector.memcheck104 ], [ %.1110, %bb.g ], [ %i.hc, %middle.block125 ]
  br label %.lr.ph.i.i85

.lr.ph.i.i85:                                     ; preds = %.lr.ph.i.i85.preheader, %.lr.ph.i.i85
  %.sroa.039.0.i86 = phi ptr [ %i.hm, %.lr.ph.i.i85 ], [ %.sroa.039.0.i86.ph, %.lr.ph.i.i85.preheader ] ; 3 uses
  %i.hj = phi ptr [ %i.hk, %.lr.ph.i.i85 ], [ %.ph, %.lr.ph.i.i85.preheader ] ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8 ; 2 uses
  %i.hl = load i64, ptr %i.hj, align 8, !tbaa !9
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.039.0.i86, i64 8
  %i.hn = load i64, ptr %.sroa.039.0.i86, align 8, !tbaa !9
  %i.ho = xor i64 %i.hn, %i.hl
  store i64 %i.ho, ptr %.sroa.039.0.i86, align 8, !tbaa !9
  %i.hp = icmp ult ptr %i.hk, %12
  br i1 %i.hp, label %.lr.ph.i.i85, label %xorbuf.exit90, !llvm.loop !42

bb.h:                                             ; preds = %bb.f
  %i.hq = xor i64 %i.gt, %i.fo
  %i.hr = and i64 %i.hq, 7
  %i.hs = icmp eq i64 %i.hr, 0
  br i1 %i.hs, label %._crit_edge.i68, label %iter.check158

._crit_edge.i68:                                  ; preds = %bb.h
  %.0.lcssa.i71178 = ptrtoaddr ptr %.1110 to i64  ; 6 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.1110, i64 %.idx.i30.i72
  %i.hu = add i64 %.0.lcssa.i71178, %.idx.i30.i72
  %i.hv = add i64 %.0.lcssa.i71178, 8
  %i.hw = tail call i64 @llvm.umax.i64(i64 %i.hu, i64 %i.hv)
  %i.hx = xor i64 %.0.lcssa.i71178, -1
  %i.hy = add i64 %i.hw, %i.hx                    ; 2 uses
  %i.hz = lshr i64 %i.hy, 3
  %i.ia = add nuw nsw i64 %i.hz, 1                ; 2 uses
  %min.iters.check187 = icmp ult i64 %i.hy, 56
  br i1 %min.iters.check187, label %.lr.ph.i32.i74.preheader, label %vector.memcheck176

vector.memcheck176:                               ; preds = %._crit_edge.i68
  %i.ib = add i64 %.0.lcssa.i71178, %.idx.i30.i72
  %i.ic = add i64 %.0.lcssa.i71178, 8
  %umax179 = tail call i64 @llvm.umax.i64(i64 %i.ib, i64 %i.ic)
  %i.id = xor i64 %.0.lcssa.i71178, -1
  %i.ie = add i64 %umax179, %i.id
  %i.if = and i64 %i.ie, -8                       ; 2 uses
  %scevgep180 = getelementptr i8, ptr %scevgep177, i64 %i.if
  %scevgep181 = getelementptr i8, ptr %.1110, i64 8
  %scevgep182 = getelementptr i8, ptr %scevgep181, i64 %i.if
  %bound0183 = icmp ult ptr %0, %scevgep182
  %bound1184 = icmp ult ptr %.1110, %scevgep180
  %found.conflict185 = and i1 %bound0183, %bound1184
  br i1 %found.conflict185, label %.lr.ph.i32.i74.preheader, label %vector.ph188

vector.ph188:                                     ; preds = %vector.memcheck176
  %n.vec189 = and i64 %i.ia, 4611686018427387900  ; 3 uses
  %i.ig = shl i64 %n.vec189, 3                    ; 2 uses
  %i.ih = getelementptr i8, ptr %0, i64 %i.ig
  %i.ii = getelementptr i8, ptr %.1110, i64 %i.ig
  br label %vector.body190

vector.body190:                                   ; preds = %vector.body190, %vector.ph188
  %index191 = phi i64 [ 0, %vector.ph188 ], [ %index.next198, %vector.body190 ] ; 2 uses
  %i.ij = shl i64 %index191, 3                    ; 2 uses
  %next.gep192 = getelementptr i8, ptr %0, i64 %i.ij ; 3 uses
  %next.gep193 = getelementptr i8, ptr %.1110, i64 %i.ij ; 2 uses
  %i.ik = getelementptr i8, ptr %next.gep193, i64 16
  %wide.load194 = load <2 x i64>, ptr %next.gep193, align 8, !tbaa !9, !alias.scope !61
  %wide.load195 = load <2 x i64>, ptr %i.ik, align 8, !tbaa !9, !alias.scope !61
  %i.il = getelementptr i8, ptr %next.gep192, i64 16 ; 2 uses
  %wide.load196 = load <2 x i64>, ptr %next.gep192, align 8, !tbaa !9, !alias.scope !62, !noalias !61
  %wide.load197 = load <2 x i64>, ptr %i.il, align 8, !tbaa !9, !alias.scope !62, !noalias !61
  %i.im = xor <2 x i64> %wide.load196, %wide.load194
  %i.in = xor <2 x i64> %wide.load197, %wide.load195
  store <2 x i64> %i.im, ptr %next.gep192, align 8, !tbaa !9, !alias.scope !62, !noalias !61
  store <2 x i64> %i.in, ptr %i.il, align 8, !tbaa !9, !alias.scope !62, !noalias !61
  %index.next198 = add nuw i64 %index191, 4       ; 2 uses
  %i.io = icmp eq i64 %index.next198, %n.vec189
  br i1 %i.io, label %middle.block199, label %vector.body190, !llvm.loop !46

middle.block199:                                  ; preds = %vector.body190
  %cmp.n200 = icmp eq i64 %i.ia, %n.vec189
  br i1 %cmp.n200, label %xorbuf.exit90, label %.lr.ph.i32.i74.preheader

.lr.ph.i32.i74.preheader:                         ; preds = %vector.memcheck176, %._crit_edge.i68, %middle.block199
  %.sroa.039.2.i75.ph = phi ptr [ %0, %vector.memcheck176 ], [ %0, %._crit_edge.i68 ], [ %i.ih, %middle.block199 ]
  %.ph203 = phi ptr [ %.1110, %vector.memcheck176 ], [ %.1110, %._crit_edge.i68 ], [ %i.ii, %middle.block199 ]
  br label %.lr.ph.i32.i74

.lr.ph.i32.i74:                                   ; preds = %.lr.ph.i32.i74.preheader, %.lr.ph.i32.i74
  %.sroa.039.2.i75 = phi ptr [ %i.is, %.lr.ph.i32.i74 ], [ %.sroa.039.2.i75.ph, %.lr.ph.i32.i74.preheader ] ; 3 uses
  %i.ip = phi ptr [ %i.iq, %.lr.ph.i32.i74 ], [ %.ph203, %.lr.ph.i32.i74.preheader ] ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8 ; 2 uses
  %i.ir = load i64, ptr %i.ip, align 8, !tbaa !9
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.039.2.i75, i64 8
  %i.it = load i64, ptr %.sroa.039.2.i75, align 8, !tbaa !9
  %i.iu = xor i64 %i.it, %i.ir
  store i64 %i.iu, ptr %.sroa.039.2.i75, align 8, !tbaa !9
  %i.iv = icmp ult ptr %i.iq, %i.ht
  br i1 %i.iv, label %.lr.ph.i32.i74, label %xorbuf.exit90, !llvm.loop !47

iter.check158:                                    ; preds = %bb.h
  %scevgep132 = getelementptr i8, ptr %.1110, i64 1
  %scevgep133 = getelementptr i8, ptr %scevgep132, i64 %i.fx
  %bound0134 = icmp ult ptr %0, %scevgep133
  %bound1135 = icmp ult ptr %.1110, %scevgep131
  %found.conflict136 = and i1 %bound0134, %bound1135
  br i1 %found.conflict136, label %.lr.ph56.i62.preheader, label %vector.ph141

vector.ph141:                                     ; preds = %iter.check158
  %i.iw = getelementptr i8, ptr %.1110, i64 %n.vec142
  %i.ix = getelementptr i8, ptr %.1110, i64 16
  %wide.load147 = load <16 x i8>, ptr %.1110, align 1, !tbaa !15, !alias.scope !63
  %wide.load148 = load <16 x i8>, ptr %i.ix, align 1, !tbaa !15, !alias.scope !63
  %wide.load149 = load <16 x i8>, ptr %0, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  %wide.load150 = load <16 x i8>, ptr %i.gc, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  %i.iy = xor <16 x i8> %wide.load149, %wide.load147
  %i.iz = xor <16 x i8> %wide.load150, %wide.load148
  store <16 x i8> %i.iy, ptr %0, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  store <16 x i8> %i.iz, ptr %i.gc, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  br i1 %i.gd, label %middle.block152, label %vector.body143.1

vector.body143.1:                                 ; preds = %vector.ph141
  %next.gep145.1 = getelementptr i8, ptr %.1110, i64 32
  %i.ja = getelementptr i8, ptr %.1110, i64 48
  %wide.load147.1 = load <16 x i8>, ptr %next.gep145.1, align 1, !tbaa !15, !alias.scope !63
  %wide.load148.1 = load <16 x i8>, ptr %i.ja, align 1, !tbaa !15, !alias.scope !63
  %wide.load149.1 = load <16 x i8>, ptr %next.gep146.1, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  %wide.load150.1 = load <16 x i8>, ptr %i.ge, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  %i.jb = xor <16 x i8> %wide.load149.1, %wide.load147.1
  %i.jc = xor <16 x i8> %wide.load150.1, %wide.load148.1
  store <16 x i8> %i.jb, ptr %next.gep146.1, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  store <16 x i8> %i.jc, ptr %i.ge, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  br i1 %i.gf, label %middle.block152, label %vector.body143.2

vector.body143.2:                                 ; preds = %vector.body143.1
  %next.gep145.2 = getelementptr i8, ptr %.1110, i64 64
  %i.jd = getelementptr i8, ptr %.1110, i64 80
  %wide.load147.2 = load <16 x i8>, ptr %next.gep145.2, align 1, !tbaa !15, !alias.scope !63
  %wide.load148.2 = load <16 x i8>, ptr %i.jd, align 1, !tbaa !15, !alias.scope !63
  %wide.load149.2 = load <16 x i8>, ptr %next.gep146.2, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  %wide.load150.2 = load <16 x i8>, ptr %i.gg, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  %i.je = xor <16 x i8> %wide.load149.2, %wide.load147.2
  %i.jf = xor <16 x i8> %wide.load150.2, %wide.load148.2
  store <16 x i8> %i.je, ptr %next.gep146.2, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  store <16 x i8> %i.jf, ptr %i.gg, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  br i1 %i.gh, label %middle.block152, label %vector.body143.3

vector.body143.3:                                 ; preds = %vector.body143.2
  %next.gep145.3 = getelementptr i8, ptr %.1110, i64 96
  %i.jg = getelementptr i8, ptr %.1110, i64 112
  %wide.load147.3 = load <16 x i8>, ptr %next.gep145.3, align 1, !tbaa !15, !alias.scope !63
  %wide.load148.3 = load <16 x i8>, ptr %i.jg, align 1, !tbaa !15, !alias.scope !63
  %wide.load149.3 = load <16 x i8>, ptr %next.gep146.3, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  %wide.load150.3 = load <16 x i8>, ptr %i.gi, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  %i.jh = xor <16 x i8> %wide.load149.3, %wide.load147.3
  %i.ji = xor <16 x i8> %wide.load150.3, %wide.load148.3
  store <16 x i8> %i.jh, ptr %next.gep146.3, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  store <16 x i8> %i.ji, ptr %i.gi, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  br i1 %i.gj, label %middle.block152, label %vector.body143.4

vector.body143.4:                                 ; preds = %vector.body143.3
  %next.gep145.4 = getelementptr i8, ptr %.1110, i64 128
  %i.jj = getelementptr i8, ptr %.1110, i64 144
  %wide.load147.4 = load <16 x i8>, ptr %next.gep145.4, align 1, !tbaa !15, !alias.scope !63
  %wide.load148.4 = load <16 x i8>, ptr %i.jj, align 1, !tbaa !15, !alias.scope !63
  %wide.load149.4 = load <16 x i8>, ptr %next.gep146.4, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  %wide.load150.4 = load <16 x i8>, ptr %i.gk, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  %i.jk = xor <16 x i8> %wide.load149.4, %wide.load147.4
  %i.jl = xor <16 x i8> %wide.load150.4, %wide.load148.4
  store <16 x i8> %i.jk, ptr %next.gep146.4, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  store <16 x i8> %i.jl, ptr %i.gk, align 8, !tbaa !15, !alias.scope !64, !noalias !63
  br label %middle.block152

middle.block152:                                  ; preds = %vector.body143.4, %vector.body143.3, %vector.body143.2, %vector.body143.1, %vector.ph141
  br i1 %cmp.n153, label %xorbuf.exit90, label %vec.epilog.iter.check160

vec.epilog.iter.check160:                         ; preds = %middle.block152
  br i1 %min.epilog.iters.check161, label %.lr.ph56.i62.preheader, label %vec.epilog.vector.body164, !prof !18

.lr.ph56.i62.preheader:                           ; preds = %iter.check158, %vec.epilog.iter.check160
  %.254.i63.ph = phi ptr [ %i.iw, %vec.epilog.iter.check160 ], [ %.1110, %iter.check158 ] ; 2 uses
  %.22453.i64.ph = phi ptr [ %i.fz, %vec.epilog.iter.check160 ], [ %0, %iter.check158 ] ; 2 uses
  %.22752.i65.ph = phi i32 [ %i.gb, %vec.epilog.iter.check160 ], [ %.pre138, %iter.check158 ] ; 4 uses
  %i.jm = add nsw i32 %.22752.i65.ph, -1
  %xtraiter215 = and i32 %.22752.i65.ph, 3        ; 2 uses
  %lcmp.mod216.not = icmp eq i32 %xtraiter215, 0
  br i1 %lcmp.mod216.not, label %.lr.ph56.i62.prol.loopexit, label %.lr.ph56.i62.prol

.lr.ph56.i62.prol:                                ; preds = %.lr.ph56.i62.preheader, %.lr.ph56.i62.prol
  %.254.i63.prol = phi ptr [ %i.jn, %.lr.ph56.i62.prol ], [ %.254.i63.ph, %.lr.ph56.i62.preheader ] ; 2 uses
  %.22453.i64.prol = phi ptr [ %i.jp, %.lr.ph56.i62.prol ], [ %.22453.i64.ph, %.lr.ph56.i62.preheader ] ; 3 uses
  %.22752.i65.prol = phi i32 [ %i.js, %.lr.ph56.i62.prol ], [ %.22752.i65.ph, %.lr.ph56.i62.preheader ]
  %prol.iter217 = phi i32 [ %prol.iter217.next, %.lr.ph56.i62.prol ], [ 0, %.lr.ph56.i62.preheader ]
  %i.jn = getelementptr inbounds nuw i8, ptr %.254.i63.prol, i64 1 ; 2 uses
  %i.jo = load i8, ptr %.254.i63.prol, align 1, !tbaa !15
  %i.jp = getelementptr inbounds nuw i8, ptr %.22453.i64.prol, i64 1 ; 2 uses
  %i.jq = load i8, ptr %.22453.i64.prol, align 1, !tbaa !15
  %i.jr = xor i8 %i.jq, %i.jo
  store i8 %i.jr, ptr %.22453.i64.prol, align 1, !tbaa !15
  %i.js = add nsw i32 %.22752.i65.prol, -1        ; 2 uses
  %prol.iter217.next = add i32 %prol.iter217, 1   ; 2 uses
  %prol.iter217.cmp.not = icmp eq i32 %prol.iter217.next, %xtraiter215
  br i1 %prol.iter217.cmp.not, label %.lr.ph56.i62.prol.loopexit, label %.lr.ph56.i62.prol, !llvm.loop !51

.lr.ph56.i62.prol.loopexit:                       ; preds = %.lr.ph56.i62.prol, %.lr.ph56.i62.preheader
  %.254.i63.unr = phi ptr [ %.254.i63.ph, %.lr.ph56.i62.preheader ], [ %i.jn, %.lr.ph56.i62.prol ]
  %.22453.i64.unr = phi ptr [ %.22453.i64.ph, %.lr.ph56.i62.preheader ], [ %i.jp, %.lr.ph56.i62.prol ]
  %.22752.i65.unr = phi i32 [ %.22752.i65.ph, %.lr.ph56.i62.preheader ], [ %i.js, %.lr.ph56.i62.prol ]
  %i.jt = icmp ult i32 %i.jm, 3
  br i1 %i.jt, label %xorbuf.exit90, label %.lr.ph56.i62

vec.epilog.vector.body164:                        ; preds = %vec.epilog.iter.check160, %vec.epilog.vector.body164
  %index165 = phi i64 [ %index.next170, %vec.epilog.vector.body164 ], [ %n.vec142, %vec.epilog.iter.check160 ] ; 3 uses
  %next.gep166 = getelementptr i8, ptr %.1110, i64 %index165
  %next.gep167 = getelementptr i8, ptr %0, i64 %index165 ; 2 uses
  %wide.load168 = load <4 x i8>, ptr %next.gep166, align 1, !tbaa !15, !alias.scope !63
  %wide.load169 = load <4 x i8>, ptr %next.gep167, align 1, !tbaa !15, !alias.scope !64, !noalias !63
end_hunk_0
