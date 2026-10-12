Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng/original/chunkset_ssse3?download=true
inline.NumInlined: 34
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@inflate_fast_ssse3:bb.a
  %i.bt = and i64 %i.bl, %i.be
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.bt ; 4 uses
  %i.bv = load i8, ptr %i.bu, align 2, !tbaa !86  ; 2 uses
  %i.bw = icmp eq i8 %i.bv, 0
  br i1 %i.bw, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !87
  %i.bz = trunc i16 %i.by to i8
  %i.ca = getelementptr inbounds nuw i8, ptr %.0222, i64 1 ; 2 uses
  store i8 %i.bz, ptr %.0222, align 1, !tbaa !12
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !88  ; 2 uses
  %i.cd = zext i8 %i.cc to i32
  %i.ce = zext nneg i8 %i.cc to i64
  %i.cf = lshr i64 %i.bl, %i.ce                   ; 3 uses
  %i.cg = sub i32 %i.bs, %i.cd                    ; 2 uses
  %i.ch = and i64 %i.cf, %i.be
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ch ; 4 uses
  %i.cj = load i8, ptr %i.ci, align 2, !tbaa !86  ; 2 uses
  %i.ck = icmp eq i8 %i.cj, 0
  br i1 %i.ck, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.e, %bb.d
  %.ph = phi i8 [ %i.bv, %bb.d ], [ %i.cj, %bb.e ]
  %.1223.ph = phi ptr [ %.0222, %bb.d ], [ %i.ca, %bb.e ]
  %.1216.ph = phi i32 [ %i.bs, %bb.d ], [ %i.cg, %bb.e ]
  %.1213.ph = phi i64 [ %i.bl, %bb.d ], [ %i.cf, %bb.e ]
  %.0211.ph = phi ptr [ %i.bu, %bb.d ], [ %i.ci, %bb.e ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0211.ph, i64 1
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !88  ; 2 uses
  %i.cn = zext i8 %i.cm to i32
  %i.co = zext nneg i8 %i.cm to i64
  %i.cp = lshr i64 %.1213.ph, %i.co
  %i.cq = sub i32 %.1216.ph, %i.cn
  br label %.lr.ph.preheader

bb.f:                                             ; preds = %bb.e
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ci, i64 2
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !87
  %i.ct = trunc i16 %i.cs to i8
  %i.cu = getelementptr inbounds nuw i8, ptr %.0222, i64 2 ; 2 uses
  store i8 %i.ct, ptr %i.ca, align 1, !tbaa !12
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !88  ; 2 uses
  %i.cx = zext i8 %i.cw to i32
  %i.cy = zext nneg i8 %i.cw to i64
  %i.cz = lshr i64 %i.cf, %i.cy                   ; 2 uses
  %i.da = and i64 %i.cz, %i.be
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.da ; 4 uses
  %.pre = load i8, ptr %i.db, align 2, !tbaa !86  ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 1
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !88  ; 2 uses
  %i.de = zext i8 %i.dd to i32
  %i.df = zext nneg i8 %i.dd to i64
  %i.dg = lshr i64 %i.cz, %i.df                   ; 2 uses
  %i.dh = add nuw nsw i32 %i.cx, %i.de
  %i.di = sub i32 %i.cg, %i.dh                    ; 2 uses
  %i.dj = icmp eq i8 %.pre, 0
  br i1 %i.dj, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.thread, %bb.f
  %i.dk = phi i32 [ %i.cq, %.thread ], [ %i.di, %bb.f ]
  %i.dl = phi i64 [ %i.cp, %.thread ], [ %i.dg, %bb.f ]
  %.0211801 = phi ptr [ %.0211.ph, %.thread ], [ %i.db, %bb.f ]
  %.1223799 = phi ptr [ %.1223.ph, %.thread ], [ %i.cu, %bb.f ] ; 38 uses
  %i.dm = phi i8 [ %.ph, %.thread ], [ %.pre, %bb.f ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.ec, %bb.f
  %.1223800 = phi ptr [ %i.cu, %bb.f ], [ %.1223799, %bb.ec ] ; 2 uses
  %.1.lcssa = phi ptr [ %i.db, %bb.f ], [ %i.anm, %bb.ec ]
  %.lcssa553 = phi i64 [ %i.dg, %bb.f ], [ %i.anr, %bb.ec ]
  %.lcssa550 = phi i32 [ %i.di, %bb.f ], [ %i.ans, %bb.ec ]
  %i.dn = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 2
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !87
  %i.dp = trunc i16 %i.do to i8
  %i.dq = getelementptr inbounds nuw i8, ptr %.1223800, i64 1
  store i8 %i.dp, ptr %.1223800, align 1, !tbaa !12
  br label %CHUNKCOPY_SAFE.exit357

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ec
  %.in = phi i8 [ %i.ant, %bb.ec ], [ %i.dm, %.lr.ph.preheader ]
  %i.dr = phi i32 [ %i.ans, %bb.ec ], [ %i.dk, %.lr.ph.preheader ] ; 4 uses
  %i.ds = phi i64 [ %i.anr, %bb.ec ], [ %i.dl, %.lr.ph.preheader ] ; 6 uses
  %.1627 = phi ptr [ %i.anm, %bb.ec ], [ %.0211801, %.lr.ph.preheader ] ; 2 uses
  %i.dt = zext i8 %.in to i32                     ; 5 uses
  %i.du = and i32 %i.dt, 16
  %.not254 = icmp eq i32 %i.du, 0
  br i1 %.not254, label %bb.eb, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.dv = getelementptr inbounds nuw i8, ptr %.1627, i64 2
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !87
  %i.dx = and i32 %i.dt, 15                       ; 3 uses
  %notmask257 = shl nsw i32 -1, %i.dx
  %i.dy = xor i32 %notmask257, -1
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = and i64 %i.ds, %i.dz
  %i.eb = zext i16 %i.dw to i64
  %i.ec = add nuw nsw i64 %i.ea, %i.eb            ; 6 uses
  %i.ed = trunc nuw nsw i64 %i.ec to i32          ; 9 uses
  %i.ee = zext nneg i32 %i.dx to i64
  %i.ef = lshr i64 %i.ds, %i.ee                   ; 3 uses
  %i.eg = sub i32 %i.dr, %i.dx                    ; 5 uses
  %i.eh = and i64 %i.ef, %i.bf
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.eh ; 4 uses
  %i.ej = icmp ult i32 %i.eg, 28
  br i1 %i.ej, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.val = load i64, ptr %i.br, align 1, !tbaa !12
  %i.ek = zext nneg i32 %i.eg to i64
  %i.el = shl i64 %.val, %i.ek
  %i.em = or i64 %i.el, %i.ef
  %i.en = getelementptr inbounds nuw i8, ptr %i.br, i64 7
  %i.eo = lshr i32 %i.eg, 3
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = sub nsw i64 0, %i.ep
  %i.er = getelementptr inbounds i8, ptr %i.en, i64 %i.eq
  %i.es = or i32 %i.eg, 56
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1228 = phi ptr [ %i.er, %bb.h ], [ %i.br, %bb.g ] ; 29 uses
  %.3218 = phi i32 [ %i.es, %bb.h ], [ %i.eg, %bb.g ]
  %.3 = phi i64 [ %i.em, %bb.h ], [ %i.ef, %bb.g ]
  %i.et = getelementptr inbounds nuw i8, ptr %i.ei, i64 1
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !88  ; 2 uses
  %i.ev = zext i8 %i.eu to i32
  %i.ew = zext nneg i8 %i.eu to i64
  %i.ex = lshr i64 %.3, %i.ew                     ; 2 uses
  %i.ey = sub i32 %.3218, %i.ev                   ; 2 uses
  %i.ez = load i8, ptr %i.ei, align 2, !tbaa !86
  %i.fa = zext i8 %i.ez to i32                    ; 3 uses
  %i.fb = and i32 %i.fa, 16
  %.not258630 = icmp eq i32 %i.fb, 0
  br i1 %.not258630, label %.lr.ph633, label %._crit_edge634

._crit_edge634:                                   ; preds = %bb.dz, %bb.i
  %.2.lcssa = phi ptr [ %i.ei, %bb.i ], [ %i.amr, %bb.dz ]
  %.lcssa561 = phi i64 [ %i.ex, %bb.i ], [ %i.amw, %bb.dz ] ; 2 uses
  %.lcssa559 = phi i32 [ %i.ey, %bb.i ], [ %i.amx, %bb.dz ]
  %.lcssa = phi i32 [ %i.fa, %bb.i ], [ %i.amz, %bb.dz ]
  %i.fc = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 2
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !87
  %i.fe = and i32 %.lcssa, 15                     ; 3 uses
  %notmask260 = shl nsw i32 -1, %i.fe
  %i.ff = xor i32 %notmask260, -1
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = and i64 %.lcssa561, %i.fg
  %i.fi = zext i16 %i.fd to i64
  %i.fj = add nuw nsw i64 %i.fh, %i.fi            ; 18 uses
  %i.fk = trunc nuw nsw i64 %i.fj to i32          ; 5 uses
  %i.fl = zext nneg i32 %i.fe to i64
  %i.fm = lshr i64 %.lcssa561, %i.fl              ; 28 uses
  %i.fn = sub i32 %.lcssa559, %i.fe               ; 28 uses
  %i.fo = ptrtoint ptr %.1223799 to i64           ; 5 uses
  %i.fp = sub i64 %i.fo, %i.bg
  %i.fq = trunc i64 %i.fp to i32                  ; 2 uses
  %i.fr = icmp ugt i32 %i.fk, %i.fq
  br i1 %i.fr, label %bb.j, label %bb.de

bb.j:                                             ; preds = %._crit_edge634
  %i.fs = sub nuw nsw i32 %i.fk, %i.fq            ; 7 uses
  %i.ft = icmp ugt i32 %i.fs, %i.ad
  br i1 %i.ft, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.fu = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 16209, ptr %i.fu, align 8, !tbaa !89
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @.str, ptr %i.fv, align 8, !tbaa !90
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  br i1 %i.bi, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.fw = sub i32 %i.ab, %i.fs
  %i.fx = zext i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.fx
  br label %CHUNKCOPY_SAFE.exit

bb.n:                                             ; preds = %bb.l
  %.not262 = icmp ult i32 %i.af, %i.fs
  br i1 %.not262, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fz = sub nuw i32 %i.af, %i.fs
  %i.ga = zext i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ga
  br label %CHUNKCOPY_SAFE.exit

bb.p:                                             ; preds = %bb.n
  %i.gc = sub nuw nsw i32 %i.fs, %i.af            ; 5 uses
  %i.gd = sub i32 %i.ab, %i.gc
  %i.ge = zext i32 %i.gd to i64                   ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ge ; 17 uses
  %i.gg = icmp ult i32 %i.gc, %i.ed
  br i1 %i.gg, label %bb.q, label %CHUNKCOPY_SAFE.exit

bb.q:                                             ; preds = %bb.p
  %i.gh = sub nuw nsw i32 %i.ed, %i.gc            ; 7 uses
  %i.gi = zext i32 %i.gc to i64                   ; 2 uses
  %i.gj = icmp eq ptr %.1223799, %i.gf
  br i1 %i.gj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.gk = getelementptr inbounds nuw i8, ptr %.1223799, i64 %i.gi
  br label %CHUNKCOPY_SAFE.exit

bb.s:                                             ; preds = %bb.q
  %i.gl = sub i64 %i.bh, %i.fo                    ; 2 uses
  %i.gm = tail call i64 @llvm.umin.i64(i64 %i.gi, i64 %i.gl) ; 19 uses
  %i.gn = ptrtoint ptr %i.gf to i64               ; 2 uses
  %i.go = sub i64 %reass.sub.i, %i.gn
  %i.gp = icmp ult i64 %i.go, 31
  %i.gq = icmp ult i64 %i.gl, 16
  %i.gr = or i1 %i.gq, %i.gp
  br i1 %i.gr, label %.preheader.i, label %bb.t, !prof !11

.preheader.i:                                     ; preds = %bb.s
  %.not31.i = icmp eq i64 %i.gm, 0
  br i1 %.not31.i, label %CHUNKCOPY_SAFE.exit, label %iter.check1213

iter.check1213:                                   ; preds = %.preheader.i
  %min.iters.check1196 = icmp samesign ult i64 %i.gm, 4
  br i1 %min.iters.check1196, label %.lr.ph.i.preheader, label %vector.memcheck1194

vector.memcheck1194:                              ; preds = %iter.check1213
  %i.gs = add i64 %i.ai, %i.ge
  %i.gt = sub i64 %i.gs, %i.fo
  %diff.check1195 = icmp ugt i64 %i.gt, -32
  br i1 %diff.check1195, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check1197

vector.main.loop.iter.check1197:                  ; preds = %vector.memcheck1194
  %min.iters.check1198 = icmp samesign ult i64 %i.gm, 32
  br i1 %min.iters.check1198, label %vec.epilog.ph1217, label %vector.ph1199

vector.ph1199:                                    ; preds = %vector.main.loop.iter.check1197
  %i.gu = and i64 %i.gm, 28
  %n.vec1200 = and i64 %i.gm, 4294967264          ; 5 uses
  %i.gv = and i64 %i.gm, 31
  %i.gw = getelementptr i8, ptr %i.gf, i64 %n.vec1200
  %i.gx = getelementptr i8, ptr %.1223799, i64 %n.vec1200 ; 2 uses
  br label %vector.body1201

vector.body1201:                                  ; preds = %vector.ph1199, %vector.body1201
  %index1202 = phi i64 [ 0, %vector.ph1199 ], [ %index.next1207, %vector.body1201 ] ; 3 uses
  %next.gep1203 = getelementptr i8, ptr %i.gf, i64 %index1202 ; 2 uses
  %next.gep1204 = getelementptr i8, ptr %.1223799, i64 %index1202 ; 2 uses
  %i.gy = getelementptr i8, ptr %next.gep1203, i64 16
  %wide.load1205 = load <16 x i8>, ptr %next.gep1203, align 1, !tbaa !12
  %wide.load1206 = load <16 x i8>, ptr %i.gy, align 1, !tbaa !12
  %i.gz = getelementptr i8, ptr %next.gep1204, i64 16
  store <16 x i8> %wide.load1205, ptr %next.gep1204, align 1, !tbaa !12
  store <16 x i8> %wide.load1206, ptr %i.gz, align 1, !tbaa !12
  %index.next1207 = add nuw i64 %index1202, 32    ; 2 uses
  %i.ha = icmp eq i64 %index.next1207, %n.vec1200
  br i1 %i.ha, label %middle.block1208, label %vector.body1201, !llvm.loop !19

middle.block1208:                                 ; preds = %vector.body1201
  %cmp.n1209 = icmp eq i64 %i.gm, %n.vec1200
  br i1 %cmp.n1209, label %CHUNKCOPY_SAFE.exit, label %vec.epilog.iter.check1215

vec.epilog.iter.check1215:                        ; preds = %middle.block1208
  %min.epilog.iters.check1216 = icmp eq i64 %i.gu, 0
  br i1 %min.epilog.iters.check1216, label %.lr.ph.i.preheader, label %vec.epilog.ph1217, !prof !93

vec.epilog.ph1217:                                ; preds = %vector.main.loop.iter.check1197, %vec.epilog.iter.check1215
  %vec.epilog.resume.val1210 = phi i64 [ %n.vec1200, %vec.epilog.iter.check1215 ], [ 0, %vector.main.loop.iter.check1197 ]
  %n.vec1218 = and i64 %i.gm, 4294967292          ; 4 uses
  %i.hb = and i64 %i.gm, 3
  %i.hc = getelementptr i8, ptr %i.gf, i64 %n.vec1218
  %i.hd = getelementptr i8, ptr %.1223799, i64 %n.vec1218 ; 2 uses
  br label %vec.epilog.vector.body1219

vec.epilog.vector.body1219:                       ; preds = %vec.epilog.vector.body1219, %vec.epilog.ph1217
  %index1220 = phi i64 [ %vec.epilog.resume.val1210, %vec.epilog.ph1217 ], [ %index.next1224, %vec.epilog.vector.body1219 ] ; 3 uses
  %next.gep1221 = getelementptr i8, ptr %i.gf, i64 %index1220
  %next.gep1222 = getelementptr i8, ptr %.1223799, i64 %index1220
  %wide.load1223 = load <4 x i8>, ptr %next.gep1221, align 1, !tbaa !12
  store <4 x i8> %wide.load1223, ptr %next.gep1222, align 1, !tbaa !12
  %index.next1224 = add nuw i64 %index1220, 4     ; 2 uses
  %i.he = icmp eq i64 %index.next1224, %n.vec1218
  br i1 %i.he, label %vec.epilog.middle.block1225, label %vec.epilog.vector.body1219, !llvm.loop !20

vec.epilog.middle.block1225:                      ; preds = %vec.epilog.vector.body1219
  %cmp.n1226 = icmp eq i64 %i.gm, %n.vec1218
  br i1 %cmp.n1226, label %CHUNKCOPY_SAFE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check1213, %vector.memcheck1194, %vec.epilog.iter.check1215, %vec.epilog.middle.block1225
  %.02134.i.ph = phi i64 [ %i.gm, %iter.check1213 ], [ %i.gm, %vector.memcheck1194 ], [ %i.gv, %vec.epilog.iter.check1215 ], [ %i.hb, %vec.epilog.middle.block1225 ] ; 4 uses
  %.02233.i.ph = phi ptr [ %i.gf, %iter.check1213 ], [ %i.gf, %vector.memcheck1194 ], [ %i.gw, %vec.epilog.iter.check1215 ], [ %i.hc, %vec.epilog.middle.block1225 ] ; 2 uses
  %.02332.i.ph = phi ptr [ %.1223799, %iter.check1213 ], [ %.1223799, %vector.memcheck1194 ], [ %i.gx, %vec.epilog.iter.check1215 ], [ %i.hd, %vec.epilog.middle.block1225 ] ; 2 uses
  %i.hf = add nsw i64 %.02134.i.ph, -1
  %xtraiter1371 = and i64 %.02134.i.ph, 7         ; 2 uses
  %lcmp.mod1372.not = icmp eq i64 %xtraiter1371, 0
  br i1 %lcmp.mod1372.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.02134.i.prol = phi i64 [ %i.hg, %.lr.ph.i.prol ], [ %.02134.i.ph, %.lr.ph.i.preheader ]
  %.02233.i.prol = phi ptr [ %i.hh, %.lr.ph.i.prol ], [ %.02233.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.02332.i.prol = phi ptr [ %i.hj, %.lr.ph.i.prol ], [ %.02332.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter1373 = phi i64 [ %prol.iter1373.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.hg = add nsw i64 %.02134.i.prol, -1          ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.02233.i.prol, i64 1 ; 2 uses
  %i.hi = load i8, ptr %.02233.i.prol, align 1, !tbaa !12
  %i.hj = getelementptr inbounds nuw i8, ptr %.02332.i.prol, i64 1 ; 3 uses
  store i8 %i.hi, ptr %.02332.i.prol, align 1, !tbaa !12
  %prol.iter1373.next = add i64 %prol.iter1373, 1 ; 2 uses
  %prol.iter1373.cmp.not = icmp eq i64 %prol.iter1373.next, %xtraiter1371
  br i1 %prol.iter1373.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !21

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa1317.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.hj, %.lr.ph.i.prol ]
  %.02134.i.unr = phi i64 [ %.02134.i.ph, %.lr.ph.i.preheader ], [ %i.hg, %.lr.ph.i.prol ]
  %.02233.i.unr = phi ptr [ %.02233.i.ph, %.lr.ph.i.preheader ], [ %i.hh, %.lr.ph.i.prol ]
  %.02332.i.unr = phi ptr [ %.02332.i.ph, %.lr.ph.i.preheader ], [ %i.hj, %.lr.ph.i.prol ]
  %i.hk = icmp ult i64 %i.hf, 7
  br i1 %i.hk, label %CHUNKCOPY_SAFE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.02134.i = phi i64 [ %i.ig, %.lr.ph.i ], [ %.02134.i.unr, %.lr.ph.i.prol.loopexit ]
  %.02233.i = phi ptr [ %i.ih, %.lr.ph.i ], [ %.02233.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.02332.i = phi ptr [ %i.ij, %.lr.ph.i ], [ %.02332.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.02233.i, i64 1
  %i.hm = load i8, ptr %.02233.i, align 1, !tbaa !12
  %i.hn = getelementptr inbounds nuw i8, ptr %.02332.i, i64 1
  store i8 %i.hm, ptr %.02332.i, align 1, !tbaa !12
  %i.ho = getelementptr inbounds nuw i8, ptr %.02233.i, i64 2
  %i.hp = load i8, ptr %i.hl, align 1, !tbaa !12
  %i.hq = getelementptr inbounds nuw i8, ptr %.02332.i, i64 2
  store i8 %i.hp, ptr %i.hn, align 1, !tbaa !12
  %i.hr = getelementptr inbounds nuw i8, ptr %.02233.i, i64 3
  %i.hs = load i8, ptr %i.ho, align 1, !tbaa !12
  %i.ht = getelementptr inbounds nuw i8, ptr %.02332.i, i64 3
  store i8 %i.hs, ptr %i.hq, align 1, !tbaa !12
  %i.hu = getelementptr inbounds nuw i8, ptr %.02233.i, i64 4
  %i.hv = load i8, ptr %i.hr, align 1, !tbaa !12
  %i.hw = getelementptr inbounds nuw i8, ptr %.02332.i, i64 4
  store i8 %i.hv, ptr %i.ht, align 1, !tbaa !12
  %i.hx = getelementptr inbounds nuw i8, ptr %.02233.i, i64 5
  %i.hy = load i8, ptr %i.hu, align 1, !tbaa !12
  %i.hz = getelementptr inbounds nuw i8, ptr %.02332.i, i64 5
  store i8 %i.hy, ptr %i.hw, align 1, !tbaa !12
  %i.ia = getelementptr inbounds nuw i8, ptr %.02233.i, i64 6
  %i.ib = load i8, ptr %i.hx, align 1, !tbaa !12
  %i.ic = getelementptr inbounds nuw i8, ptr %.02332.i, i64 6
  store i8 %i.ib, ptr %i.hz, align 1, !tbaa !12
  %i.id = getelementptr inbounds nuw i8, ptr %.02233.i, i64 7
  %i.ie = load i8, ptr %i.ia, align 1, !tbaa !12
  %i.if = getelementptr inbounds nuw i8, ptr %.02332.i, i64 7
  store i8 %i.ie, ptr %i.ic, align 1, !tbaa !12
  %i.ig = add nsw i64 %.02134.i, -8               ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.02233.i, i64 8
  %i.ii = load i8, ptr %i.id, align 1, !tbaa !12
  %i.ij = getelementptr inbounds nuw i8, ptr %.02332.i, i64 8 ; 2 uses
  store i8 %i.ii, ptr %i.if, align 1, !tbaa !12
  %.not.i.7 = icmp eq i64 %i.ig, 0
  br i1 %.not.i.7, label %CHUNKCOPY_SAFE.exit, label %.lr.ph.i, !llvm.loop !22

bb.t:                                             ; preds = %bb.s
  %i.ik = trunc nuw nsw i64 %i.gm to i32          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.il = sub i64 %i.fo, %i.gn                    ; 2 uses
  %i.im = tail call i64 @llvm.abs.i64(i64 %i.il, i1 true) ; 5 uses
  %i.in = icmp slt i64 %i.il, 0
  %i.io = icmp samesign ult i64 %i.im, %i.gm
  %or.cond.i = select i1 %i.in, i1 %i.io, i1 false
  br i1 %or.cond.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.1223799, ptr align 1 %i.gf, i64 %i.gm, i1 false)
  %i.ip = getelementptr inbounds nuw i8, ptr %.1223799, i64 %i.gm
  br label %chunkmemset_ssse3.exit.i

bb.v:                                             ; preds = %bb.t
  %i.iq = icmp eq i64 %i.im, 1
  br i1 %i.iq, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ir = load i8, ptr %i.gf, align 1, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr align 1 %.1223799, i8 %i.ir, i64 %i.gm, i1 false)
  %i.is = getelementptr inbounds nuw i8, ptr %.1223799, i64 %i.gm
  br label %chunkmemset_ssse3.exit.i

bb.x:                                             ; preds = %bb.v
  %i.it = icmp samesign ugt i64 %i.im, 15
  br i1 %i.it, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.iu = add nuw nsw i32 %i.ik, 15
  %i.iv = and i32 %i.iu, 15
  %narrow.i.i.i = add nuw nsw i32 %i.iv, 1        ; 2 uses
  %.val.i.i.i = load <2 x i64>, ptr %i.gf, align 1, !tbaa !12
  store <2 x i64> %.val.i.i.i, ptr %.1223799, align 1, !tbaa !12
  %i.iw = zext nneg i32 %narrow.i.i.i to i64      ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.1223799, i64 %i.iw ; 2 uses
  %i.iy = sub nsw i32 %i.ik, %narrow.i.i.i        ; 2 uses
  %.not20.i.i.i = icmp eq i32 %i.iy, 0
  br i1 %.not20.i.i.i, label %chunkmemset_ssse3.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.y
  %i.iz = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.iw
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.023.i.i.i = phi i32 [ %i.jc, %.lr.ph.i.i.i ], [ %i.iy, %.lr.ph.preheader.i.i.i ]
  %.01522.i.i.i = phi ptr [ %i.jb, %.lr.ph.i.i.i ], [ %i.iz, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.01621.i.i.i = phi ptr [ %i.ja, %.lr.ph.i.i.i ], [ %i.ix, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.015.val.i.i.i = load <2 x i64>, ptr %.01522.i.i.i, align 1, !tbaa !12
  store <2 x i64> %.015.val.i.i.i, ptr %.01621.i.i.i, align 1, !tbaa !12
  %i.ja = getelementptr inbounds nuw i8, ptr %.01621.i.i.i, i64 16 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.01522.i.i.i, i64 16
  %i.jc = add i32 %.023.i.i.i, -16                ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.jc, 0
  br i1 %.not.i.i.i, label %chunkmemset_ssse3.exit.i, label %.lr.ph.i.i.i, !llvm.loop !0

bb.z:                                             ; preds = %bb.x
  switch i64 %i.im, label %bb.ad [
    i64 2, label %bb.aa
    i64 4, label %bb.ab
    i64 8, label %bb.ac
  ]

bb.aa:                                            ; preds = %bb.z
  %.val57.i.i = load i16, ptr %i.gf, align 1, !tbaa !12
  %i.jd = insertelement <8 x i16> poison, i16 %.val57.i.i, i64 0
  %i.je = shufflevector <8 x i16> %i.jd, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.jf = bitcast <8 x i16> %i.je to <2 x i64>
  store <8 x i16> %i.je, ptr %i.e, align 16, !tbaa !12
  br label %bb.ae

bb.ab:                                            ; preds = %bb.z
  %.val58.i.i = load i32, ptr %i.gf, align 1, !tbaa !12
  %i.jg = insertelement <4 x i32> poison, i32 %.val58.i.i, i64 0
  %i.jh = shufflevector <4 x i32> %i.jg, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ji = bitcast <4 x i32> %i.jh to <2 x i64>
  store <4 x i32> %i.jh, ptr %i.e, align 16, !tbaa !12
  br label %bb.ae

bb.ac:                                            ; preds = %bb.z
  %.val59.i.i = load i64, ptr %i.gf, align 1, !tbaa !12
  %i.jj = insertelement <2 x i64> poison, i64 %.val59.i.i, i64 0
  %i.jk = shufflevector <2 x i64> %i.jj, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  store <2 x i64> %i.jk, ptr %i.e, align 16, !tbaa !12
  br label %bb.ae

bb.ad:                                            ; preds = %bb.z
  %.val6062.i.i = load <16 x i8>, ptr %i.gf, align 1, !tbaa !12
  %i.jl = add nuw nsw i64 %i.im, 4294967293
  %i.jm = and i64 %i.jl, 4294967295
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr @perm_idx_lut, i64 %i.jm ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.jn, align 4, !tbaa !16
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.jn, i64 2
  %.sroa.4.0.copyload.i.i.i = load i16, ptr %.sroa.4.0..sroa_idx.i.i.i, align 2, !tbaa !16
  %i.jo = zext i16 %.sroa.4.0.copyload.i.i.i to i32
  %i.jp = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.jq = getelementptr inbounds nuw i8, ptr @permute_table, i64 %i.jp
  %i.jr = load <16 x i8>, ptr %i.jq, align 16, !tbaa !12
  %i.js = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %.val6062.i.i, <16 x i8> %i.jr) ; 2 uses
  %i.jt = bitcast <16 x i8> %i.js to <2 x i64>
  store <16 x i8> %i.js, ptr %i.e, align 16, !tbaa !12
  %i.ju = sub nsw i32 16, %i.jo
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %.0..0..val.i.i = phi <2 x i64> [ %i.jt, %bb.ad ], [ %i.jf, %bb.aa ], [ %i.ji, %bb.ab ], [ %i.jk, %bb.ac ] ; 3 uses
  %.061.i.i = phi i32 [ %i.ju, %bb.ad ], [ 16, %bb.aa ], [ 16, %bb.ab ], [ 16, %bb.ac ] ; 4 uses
  %i.jv = icmp samesign ugt i64 %i.gm, 31
  br i1 %i.jv, label %.lr.ph.i.i, label %.preheader.i.i
end_hunk_0
