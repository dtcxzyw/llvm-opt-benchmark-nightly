Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/unicodedata?download=true
inline.NumInlined: 234
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_getucname:bb.a
  %storemerge.i.i = phi i32 [ %i.co, %bb.v ], [ 1, %bb.u ] ; 13 uses
  %.012.i.i = phi i32 [ %i.ck, %bb.v ], [ %i.ce, %bb.u ] ; 14 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %_dawg_decode_edge.exit.i
  %.014.i.i60.i = phi i32 [ %i.cj, %_dawg_decode_edge.exit.i ], [ %i.cw, %bb.w ] ; 2 uses
  %.012.i.i61.i = phi i32 [ 0, %_dawg_decode_edge.exit.i ], [ %i.cv, %bb.w ]
  %.011.i.i62.i = phi i32 [ 0, %_dawg_decode_edge.exit.i ], [ %i.cx, %bb.w ] ; 2 uses
  %i.cp = zext i32 %.014.i.i60.i to i64
  %i.cq = getelementptr i8, ptr @packed_name_dawg, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !23  ; 2 uses
  %i.cs = and i8 %i.cr, 127
  %i.ct = zext nneg i8 %i.cs to i32
  %i.cu = shl i32 %i.ct, %.011.i.i62.i
  %i.cv = or i32 %i.cu, %.012.i.i61.i             ; 2 uses
  %i.cw = add i32 %.014.i.i60.i, 1
  %i.cx = add i32 %.011.i.i62.i, 7
  %.not.i.i63.i = icmp slt i8 %i.cr, 0
  br i1 %.not.i.i63.i, label %bb.w, label %_dawg_node_descendant_count.exit.i

_dawg_node_descendant_count.exit.i:               ; preds = %bb.w
  %i.cy = lshr i32 %i.cv, 1                       ; 2 uses
  %i.cz = icmp ult i32 %.244.i, %i.cy
  br i1 %i.cz, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_dawg_node_descendant_count.exit.i
  %i.da = add i32 %storemerge.i.i, %.033.i.ph     ; 3 uses
  %.not55.i = icmp ult i32 %i.da, %3
  br i1 %.not55.i, label %.preheader.i, label %.critedge

.preheader.i:                                     ; preds = %bb.x
  %.not131.i = icmp eq i32 %storemerge.i.i, 0
  br i1 %.not131.i, label %.loopexit.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i
  %min.iters.check = icmp samesign ult i32 %storemerge.i.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.db = add nsw i32 %storemerge.i.i, -1         ; 2 uses
  %i.dc = xor i32 %.012.i.i, -1
  %i.dd = icmp ugt i32 %i.db, %i.dc
  %i.de = xor i32 %.033.i.ph, -1
  %i.df = icmp ugt i32 %i.db, %i.de
  %i.dg = or i1 %i.dd, %i.df
  br i1 %i.dg, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check115 = icmp samesign ult i32 %storemerge.i.i, 32
  br i1 %min.iters.check115, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dh = and i32 %storemerge.i.i, 24
  %n.vec = and i32 %storemerge.i.i, 224           ; 10 uses
  %i.di = add i32 %.033.i.ph, %n.vec
  %i.dj = add i32 %.012.i.i, %n.vec
  %i.dk = zext i32 %.012.i.i to i64
  %i.dl = getelementptr i8, ptr @packed_name_dawg, i64 %i.dk ; 2 uses
  %i.dm = getelementptr i8, ptr %i.dl, i64 16
  %wide.load = load <16 x i8>, ptr %i.dl, align 1, !tbaa !23
  %wide.load116 = load <16 x i8>, ptr %i.dm, align 1, !tbaa !23
  %i.dn = zext i32 %.033.i.ph to i64
  %i.do = getelementptr i8, ptr %2, i64 %i.dn     ; 2 uses
  %i.dp = getelementptr i8, ptr %i.do, i64 16
  store <16 x i8> %wide.load, ptr %i.do, align 1, !tbaa !23
  store <16 x i8> %wide.load116, ptr %i.dp, align 1, !tbaa !23
  %i.dq = icmp eq i32 %n.vec, 32
  br i1 %i.dq, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.dr = add i32 %.033.i.ph, 32
  %i.ds = add i32 %.012.i.i, 32
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr i8, ptr @packed_name_dawg, i64 %i.dt ; 2 uses
  %i.dv = getelementptr i8, ptr %i.du, i64 16
  %wide.load.1 = load <16 x i8>, ptr %i.du, align 1, !tbaa !23
  %wide.load116.1 = load <16 x i8>, ptr %i.dv, align 1, !tbaa !23
  %i.dw = zext i32 %i.dr to i64
  %i.dx = getelementptr i8, ptr %2, i64 %i.dw     ; 2 uses
  %i.dy = getelementptr i8, ptr %i.dx, i64 16
  store <16 x i8> %wide.load.1, ptr %i.dx, align 1, !tbaa !23
  store <16 x i8> %wide.load116.1, ptr %i.dy, align 1, !tbaa !23
  %i.dz = icmp eq i32 %n.vec, 64
  br i1 %i.dz, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.ea = add i32 %.033.i.ph, 64
  %i.eb = add i32 %.012.i.i, 64
  %i.ec = zext i32 %i.eb to i64
  %i.ed = getelementptr i8, ptr @packed_name_dawg, i64 %i.ec ; 2 uses
  %i.ee = getelementptr i8, ptr %i.ed, i64 16
  %wide.load.2 = load <16 x i8>, ptr %i.ed, align 1, !tbaa !23
  %wide.load116.2 = load <16 x i8>, ptr %i.ee, align 1, !tbaa !23
  %i.ef = zext i32 %i.ea to i64
  %i.eg = getelementptr i8, ptr %2, i64 %i.ef     ; 2 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 16
  store <16 x i8> %wide.load.2, ptr %i.eg, align 1, !tbaa !23
  store <16 x i8> %wide.load116.2, ptr %i.eh, align 1, !tbaa !23
  %i.ei = icmp eq i32 %n.vec, 96
  br i1 %i.ei, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.ej = add i32 %.033.i.ph, 96
  %i.ek = add i32 %.012.i.i, 96
  %i.el = zext i32 %i.ek to i64
  %i.em = getelementptr i8, ptr @packed_name_dawg, i64 %i.el ; 2 uses
  %i.en = getelementptr i8, ptr %i.em, i64 16
  %wide.load.3 = load <16 x i8>, ptr %i.em, align 1, !tbaa !23
  %wide.load116.3 = load <16 x i8>, ptr %i.en, align 1, !tbaa !23
  %i.eo = zext i32 %i.ej to i64
  %i.ep = getelementptr i8, ptr %2, i64 %i.eo     ; 2 uses
  %i.eq = getelementptr i8, ptr %i.ep, i64 16
  store <16 x i8> %wide.load.3, ptr %i.ep, align 1, !tbaa !23
  store <16 x i8> %wide.load116.3, ptr %i.eq, align 1, !tbaa !23
  %i.er = icmp eq i32 %n.vec, 128
  br i1 %i.er, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %i.es = add i32 %.033.i.ph, 128
  %i.et = add i32 %.012.i.i, 128
  %i.eu = zext i32 %i.et to i64
  %i.ev = getelementptr i8, ptr @packed_name_dawg, i64 %i.eu ; 2 uses
  %i.ew = getelementptr i8, ptr %i.ev, i64 16
  %wide.load.4 = load <16 x i8>, ptr %i.ev, align 1, !tbaa !23
  %wide.load116.4 = load <16 x i8>, ptr %i.ew, align 1, !tbaa !23
  %i.ex = zext i32 %i.es to i64
  %i.ey = getelementptr i8, ptr %2, i64 %i.ex     ; 2 uses
  %i.ez = getelementptr i8, ptr %i.ey, i64 16
  store <16 x i8> %wide.load.4, ptr %i.ey, align 1, !tbaa !23
  store <16 x i8> %wide.load116.4, ptr %i.ez, align 1, !tbaa !23
  %i.fa = icmp eq i32 %n.vec, 160
  br i1 %i.fa, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %i.fb = add i32 %.033.i.ph, 160
  %i.fc = add i32 %.012.i.i, 160
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr i8, ptr @packed_name_dawg, i64 %i.fd ; 2 uses
  %i.ff = getelementptr i8, ptr %i.fe, i64 16
  %wide.load.5 = load <16 x i8>, ptr %i.fe, align 1, !tbaa !23
  %wide.load116.5 = load <16 x i8>, ptr %i.ff, align 1, !tbaa !23
  %i.fg = zext i32 %i.fb to i64
  %i.fh = getelementptr i8, ptr %2, i64 %i.fg     ; 2 uses
  %i.fi = getelementptr i8, ptr %i.fh, i64 16
  store <16 x i8> %wide.load.5, ptr %i.fh, align 1, !tbaa !23
  store <16 x i8> %wide.load116.5, ptr %i.fi, align 1, !tbaa !23
  %i.fj = icmp eq i32 %n.vec, 192
  br i1 %i.fj, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %i.fk = add i32 %.033.i.ph, 192
  %i.fl = add i32 %.012.i.i, 192
  %i.fm = zext i32 %i.fl to i64
  %i.fn = getelementptr i8, ptr @packed_name_dawg, i64 %i.fm ; 2 uses
  %i.fo = getelementptr i8, ptr %i.fn, i64 16
  %wide.load.6 = load <16 x i8>, ptr %i.fn, align 1, !tbaa !23
  %wide.load116.6 = load <16 x i8>, ptr %i.fo, align 1, !tbaa !23
  %i.fp = zext i32 %i.fk to i64
  %i.fq = getelementptr i8, ptr %2, i64 %i.fp     ; 2 uses
  %i.fr = getelementptr i8, ptr %i.fq, i64 16
  store <16 x i8> %wide.load.6, ptr %i.fq, align 1, !tbaa !23
  store <16 x i8> %wide.load116.6, ptr %i.fr, align 1, !tbaa !23
  br label %middle.block

middle.block:                                     ; preds = %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i32 %storemerge.i.i, %n.vec
  br i1 %cmp.n, label %.loopexit.i.outer.backedge, label %vec.epilog.iter.check

.loopexit.i.outer.backedge:                       ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %vec.epilog.middle.block
  br label %.loopexit.i.outer

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.dh, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !96

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec118 = and i32 %storemerge.i.i, 248        ; 4 uses
  %i.fs = add i32 %.033.i.ph, %n.vec118
  %i.ft = add i32 %.012.i.i, %n.vec118
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index119 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next121, %vec.epilog.vector.body ] ; 3 uses
  %i.fu = add i32 %.033.i.ph, %index119
  %i.fv = add i32 %.012.i.i, %index119
  %i.fw = zext i32 %i.fv to i64
  %i.fx = getelementptr i8, ptr @packed_name_dawg, i64 %i.fw
  %wide.load120 = load <8 x i8>, ptr %i.fx, align 1, !tbaa !23
  %i.fy = zext i32 %i.fu to i64
  %i.fz = getelementptr i8, ptr %2, i64 %i.fy
  store <8 x i8> %wide.load120, ptr %i.fz, align 1, !tbaa !23
  %index.next121 = add nuw i32 %index119, 8       ; 2 uses
  %i.ga = icmp eq i32 %index.next121, %n.vec118
  br i1 %i.ga, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !93

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n122 = icmp eq i32 %storemerge.i.i, %n.vec118
  br i1 %cmp.n122, label %.loopexit.i.outer.backedge, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.235129.i.ph = phi i32 [ %.033.i.ph, %iter.check ], [ %.033.i.ph, %vector.scevcheck ], [ %i.di, %vec.epilog.iter.check ], [ %i.fs, %vec.epilog.middle.block ] ; 4 uses
  %.073128.i.ph = phi i32 [ %.012.i.i, %iter.check ], [ %.012.i.i, %vector.scevcheck ], [ %i.dj, %vec.epilog.iter.check ], [ %i.ft, %vec.epilog.middle.block ] ; 2 uses
  %i.gb = sub i32 %.033.i.ph, %.235129.i.ph
  %i.gc = add i32 %i.gb, %storemerge.i.i
  %xtraiter = and i32 %i.gc, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.235129.i.prol = phi i32 [ %i.gh, %.lr.ph.i.prol ], [ %.235129.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.073128.i.prol = phi i32 [ %i.gd, %.lr.ph.i.prol ], [ %.073128.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.gd = add i32 %.073128.i.prol, 1              ; 2 uses
  %i.ge = zext i32 %.073128.i.prol to i64
  %i.gf = getelementptr i8, ptr @packed_name_dawg, i64 %i.ge
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !23
  %i.gh = add i32 %.235129.i.prol, 1              ; 2 uses
  %i.gi = zext i32 %.235129.i.prol to i64
  %i.gj = getelementptr i8, ptr %2, i64 %i.gi
  store i8 %i.gg, ptr %i.gj, align 1, !tbaa !23
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !94

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.235129.i.unr = phi i32 [ %.235129.i.ph, %.lr.ph.i.preheader ], [ %i.gh, %.lr.ph.i.prol ]
  %.073128.i.unr = phi i32 [ %.073128.i.ph, %.lr.ph.i.preheader ], [ %i.gd, %.lr.ph.i.prol ]
  %i.gk = add i32 %.033.i.ph, %storemerge.i.i
  %i.gl = sub i32 %.235129.i.ph, %i.gk
  %i.gm = icmp ugt i32 %i.gl, -4
  br i1 %i.gm, label %.loopexit.i.outer.backedge, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.235129.i = phi i32 [ %i.hm, %.lr.ph.i ], [ %.235129.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.073128.i = phi i32 [ %i.hi, %.lr.ph.i ], [ %.073128.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.gn = add i32 %.073128.i, 1
  %i.go = zext i32 %.073128.i to i64
  %i.gp = getelementptr i8, ptr @packed_name_dawg, i64 %i.go
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !23
  %i.gr = add i32 %.235129.i, 1
  %i.gs = zext i32 %.235129.i to i64
  %i.gt = getelementptr i8, ptr %2, i64 %i.gs
  store i8 %i.gq, ptr %i.gt, align 1, !tbaa !23
  %i.gu = add i32 %.073128.i, 2
  %i.gv = zext i32 %i.gn to i64
  %i.gw = getelementptr i8, ptr @packed_name_dawg, i64 %i.gv
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !23
  %i.gy = add i32 %.235129.i, 2
  %i.gz = zext i32 %i.gr to i64
  %i.ha = getelementptr i8, ptr %2, i64 %i.gz
  store i8 %i.gx, ptr %i.ha, align 1, !tbaa !23
  %i.hb = add i32 %.073128.i, 3
  %i.hc = zext i32 %i.gu to i64
  %i.hd = getelementptr i8, ptr @packed_name_dawg, i64 %i.hc
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !23
  %i.hf = add i32 %.235129.i, 3
  %i.hg = zext i32 %i.gy to i64
  %i.hh = getelementptr i8, ptr %2, i64 %i.hg
  store i8 %i.he, ptr %i.hh, align 1, !tbaa !23
  %i.hi = add i32 %.073128.i, 4
  %i.hj = zext i32 %i.hb to i64
  %i.hk = getelementptr i8, ptr @packed_name_dawg, i64 %i.hj
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !23
  %i.hm = add i32 %.235129.i, 4                   ; 2 uses
  %i.hn = zext i32 %i.hf to i64
  %i.ho = getelementptr i8, ptr %2, i64 %i.hn
  store i8 %i.hl, ptr %i.ho, align 1, !tbaa !23
  %exitcond.not.i.3 = icmp eq i32 %i.hm, %i.da
  br i1 %exitcond.not.i.3, label %.loopexit.i.outer.backedge, label %.lr.ph.i, !llvm.loop !95

bb.y:                                             ; preds = %_dawg_node_descendant_count.exit.i
  %i.hp = and i32 %i.cd, 1
  %.not.i70 = icmp eq i32 %i.hp, 0
  br i1 %.not.i70, label %bb.z, label %.critedge

bb.z:                                             ; preds = %bb.y
  %i.hq = sub nuw nsw i32 %.244.i, %i.cy
  %i.hr = add i32 %.012.i.i, %storemerge.i.i
  br label %bb.s

.critedge:                                        ; preds = %bb.x, %bb.y, %_dawg_decode_varint_unsigned.exit.i.i, %bb.q, %bb.p, %bb.f, %bb.k, %bb.h, %bb.i, %bb.l, %bb.c, %bb.a, %bb.g
  %.4 = phi i32 [ 0, %bb.a ], [ 0, %bb.l ], [ 0, %bb.g ], [ 0, %bb.c ], [ 0, %bb.f ], [ %.69, %bb.k ], [ 0, %bb.h ], [ 1, %bb.i ], [ 1, %bb.q ], [ 0, %bb.y ], [ 0, %bb.p ], [ 0, %_dawg_decode_varint_unsigned.exit.i.i ], [ 0, %bb.x ]
  ret i32 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @find_prefix_id(i32 noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = icmp ult i32 %0, 13312
  br i1 %i.a, label %.thread, label %bb.am

bb.b:                                             ; preds = %bb.am
  %i.b = icmp ult i32 %0, 19968
  br i1 %i.b, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.1 = icmp ugt i32 %0, 40959
  br i1 %.not.1, label %bb.d, label %bb.an

bb.d:                                             ; preds = %bb.c
  %i.c = icmp ult i32 %0, 44032
  br i1 %i.c, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.2 = icmp ugt i32 %0, 55203
  br i1 %.not.2, label %bb.f, label %bb.an

bb.f:                                             ; preds = %bb.e
  %i.d = icmp ult i32 %0, 63744
  br i1 %i.d, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.3 = icmp ugt i32 %0, 64109
  br i1 %.not.3, label %bb.h, label %bb.an

bb.h:                                             ; preds = %bb.g
  %i.e = icmp ult i32 %0, 64112
  br i1 %i.e, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.4 = icmp ugt i32 %0, 64217
  br i1 %.not.4, label %bb.j, label %bb.an

bb.j:                                             ; preds = %bb.i
  %i.f = icmp ult i32 %0, 78944
  br i1 %i.f, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.5 = icmp ugt i32 %0, 82938
  br i1 %.not.5, label %bb.l, label %bb.an

bb.l:                                             ; preds = %bb.k
  %i.g = icmp ult i32 %0, 94208
  br i1 %i.g, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.6 = icmp ugt i32 %0, 100351
  br i1 %.not.6, label %bb.n, label %bb.an

bb.n:                                             ; preds = %bb.m
  %i.h = icmp ult i32 %0, 101120
  br i1 %i.h, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not.7 = icmp ugt i32 %0, 101589
  br i1 %.not.7, label %bb.p, label %bb.an

bb.p:                                             ; preds = %bb.o
  %i.i = icmp ult i32 %0, 101631
  br i1 %i.i, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not.8.not = icmp eq i32 %0, 101631
  br i1 %.not.8.not, label %bb.an, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not.9 = icmp ugt i32 %0, 101662
  br i1 %.not.9, label %bb.s, label %bb.an

bb.s:                                             ; preds = %bb.r
  %i.j = icmp ult i32 %0, 110960
  br i1 %i.j, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not.10 = icmp ugt i32 %0, 111355
  br i1 %.not.10, label %bb.u, label %bb.an

bb.u:                                             ; preds = %bb.t
  %i.k = icmp ult i32 %0, 131072
  br i1 %i.k, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not.11 = icmp ugt i32 %0, 173791
  br i1 %.not.11, label %bb.w, label %bb.an

bb.w:                                             ; preds = %bb.v
  %i.l = icmp ult i32 %0, 173824
  br i1 %i.l, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not.12 = icmp ugt i32 %0, 177983
  br i1 %.not.12, label %bb.y, label %bb.an

bb.y:                                             ; preds = %bb.x
  %.not.13 = icmp ugt i32 %0, 178205
  br i1 %.not.13, label %bb.z, label %bb.an

bb.z:                                             ; preds = %bb.y
  %i.m = icmp ult i32 %0, 178208
  br i1 %i.m, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.not.14 = icmp ugt i32 %0, 183981
  br i1 %.not.14, label %bb.ab, label %bb.an

bb.ab:                                            ; preds = %bb.aa
  %i.n = icmp ult i32 %0, 183984
  br i1 %i.n, label %.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
end_hunk_0
