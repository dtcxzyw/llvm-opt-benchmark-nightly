Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lz4/original/lz4?download=true
inline.NumInlined: 758
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@LZ4_decompress_fast_continue:bb.a
.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.0.i40.i.prol = phi i64 [ %i.bj, %.lr.ph.i.prol ], [ %.0.i40.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter304 = phi i64 [ %prol.iter304.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.at, i64 %.0.i40.i.prol
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !15
  %i.bi = getelementptr inbounds nuw i8, ptr %i.x, i64 %.0.i40.i.prol
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !15
  %i.bj = add nuw i64 %.0.i40.i.prol, 1           ; 2 uses
  %prol.iter304.next = add i64 %prol.iter304, 1   ; 2 uses
  %prol.iter304.cmp.not = icmp eq i64 %prol.iter304.next, %xtraiter302
  br i1 %prol.iter304.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !121

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.0.i40.i.unr = phi i64 [ %.0.i40.i.ph, %.lr.ph.i.preheader ], [ %i.bj, %.lr.ph.i.prol ]
  %i.bk = icmp ult i64 %i.bf, 3
  br i1 %i.bk, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.0.i40.i = phi i64 [ %i.ca, %.lr.ph.i ], [ %.0.i40.i.unr, %.lr.ph.i.prol.loopexit ] ; 7 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.at, i64 %.0.i40.i
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !15
  %i.bn = getelementptr inbounds nuw i8, ptr %i.x, i64 %.0.i40.i
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !15
  %i.bo = add nuw i64 %.0.i40.i, 1                ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !15
  %i.br = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bo
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !15
  %i.bs = add nuw i64 %.0.i40.i, 2                ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !15
  %i.bv = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bs
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !15
  %i.bw = add nuw i64 %.0.i40.i, 3                ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !15
  %i.bz = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bw
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !15
  %i.ca = add nuw i64 %.0.i40.i, 4
  %exitcond.not.i.3 = icmp eq i64 %.0.i40.i, %.080.i.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !122

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block262, %vec.epilog.middle.block275, %bb.h
  %i.cb = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ap ; 2 uses
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = sub i64 %i.f, %i.cc
  %i.ce = icmp ult i64 %i.cd, 5
  br i1 %i.ce, label %LZ4_decompress_fast.exit.thread, label %.thread.i

LZ4_decompress_fast.exit:                         ; preds = %bb.e
  %i.cf = ptrtoint ptr %i.y to i64
  %i.cg = ptrtoint ptr %1 to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = trunc i64 %i.ch to i32                  ; 3 uses
  %i.cj = icmp slt i32 %i.ci, 1
  br i1 %i.cj, label %LZ4_decompress_fast.exit.thread, label %bb.i

bb.i:                                             ; preds = %LZ4_decompress_fast.exit
  store i64 %i.d, ptr %i.a, align 8, !tbaa !49
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.ck, align 8, !tbaa !50
  br label %LZ4_decompress_fast.exit.thread

bb.j:                                             ; preds = %bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !50 ; 3 uses
  %i.cn = icmp eq ptr %i.cm, %2
  br i1 %i.cn, label %bb.k, label %bb.y

bb.k:                                             ; preds = %bb.j
  %i.co = load ptr, ptr %0, align 8, !tbaa !51
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !52 ; 2 uses
  %i.cr = sext i32 %3 to i64                      ; 3 uses
  %i.cs = getelementptr inbounds i8, ptr %2, i64 %i.cr ; 2 uses
  %i.ct = sub i64 0, %i.b
  %i.cu = getelementptr inbounds i8, ptr %2, i64 %i.ct ; 2 uses
  %i.cv = ptrtoint ptr %i.cs to i64               ; 3 uses
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cq
  br label %.thread

.thread:                                          ; preds = %._crit_edge, %bb.k
  %.0 = phi ptr [ %1, %bb.k ], [ %.4, %._crit_edge ] ; 2 uses
  %.086.i = phi ptr [ %2, %bb.k ], [ %i.fw, %._crit_edge ] ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  %i.cz = load i8, ptr %.0, align 1, !tbaa !15
  %i.da = zext i8 %i.cz to i32                    ; 2 uses
  %i.db = lshr i32 %i.da, 4                       ; 2 uses
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = icmp eq i32 %i.db, 15
  br i1 %i.dd, label %.preheader110, label %bb.l

.preheader110:                                    ; preds = %.thread, %.preheader110
  %i.de = phi ptr [ %i.dh, %.preheader110 ], [ %i.cy, %.thread ] ; 2 uses
  %.0.i57 = phi i64 [ %i.di, %.preheader110 ], [ 0, %.thread ]
  %i.df = load i8, ptr %i.de, align 1, !tbaa !15  ; 2 uses
  %i.dg = zext i8 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 1 ; 2 uses
  %i.di = add i64 %.0.i57, %i.dg                  ; 2 uses
  %i.dj = icmp eq i8 %i.df, -1
  br i1 %i.dj, label %.preheader110, label %read_long_length_no_check.exit, !llvm.loop !5

read_long_length_no_check.exit:                   ; preds = %.preheader110
  %i.dk = add i64 %i.di, 15
  br label %bb.l

bb.l:                                             ; preds = %read_long_length_no_check.exit, %.thread
  %.1 = phi ptr [ %i.dh, %read_long_length_no_check.exit ], [ %i.cy, %.thread ] ; 2 uses
  %.085.i = phi i64 [ %i.dk, %read_long_length_no_check.exit ], [ %i.dc, %.thread ] ; 4 uses
  %i.dl = ptrtoint ptr %.086.i to i64
  %i.dm = sub i64 %i.cv, %i.dl
  %i.dn = icmp ult i64 %i.dm, %.085.i
  br i1 %i.dn, label %LZ4_decompress_fast.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.086.i, ptr nonnull align 1 %.1, i64 %.085.i, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %.086.i, i64 %.085.i ; 7 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.1, i64 %.085.i ; 3 uses
  %i.dq = ptrtoint ptr %i.do to i64               ; 2 uses
  %i.dr = sub i64 %i.cv, %i.dq                    ; 2 uses
  %i.ds = icmp ult i64 %i.dr, 12
  br i1 %i.ds, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dt = icmp eq ptr %i.do, %i.cs
  br i1 %i.dt, label %LZ4_decompress_unsafe_generic.exit, label %LZ4_decompress_fast.exit.thread

bb.o:                                             ; preds = %bb.m
  %i.du = and i32 %i.da, 15                       ; 2 uses
  %i.dv = zext nneg i32 %i.du to i64
  %.val = load i16, ptr %i.dp, align 1, !tbaa !30
  %i.dw = zext i16 %.val to i64                   ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dp, i64 2 ; 2 uses
  %i.dy = icmp eq i32 %i.du, 15
  br i1 %i.dy, label %.preheader, label %bb.p

.preheader:                                       ; preds = %bb.o, %.preheader
  %i.dz = phi ptr [ %i.ec, %.preheader ], [ %i.dx, %bb.o ] ; 2 uses
  %.0.i59 = phi i64 [ %i.ed, %.preheader ], [ 0, %bb.o ]
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !15  ; 2 uses
  %i.eb = zext i8 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 1 ; 2 uses
  %i.ed = add i64 %.0.i59, %i.eb                  ; 2 uses
  %i.ee = icmp eq i8 %i.ea, -1
  br i1 %i.ee, label %.preheader, label %read_long_length_no_check.exit60, !llvm.loop !5

read_long_length_no_check.exit60:                 ; preds = %.preheader
  %i.ef = add i64 %i.ed, 15
  br label %bb.p

bb.p:                                             ; preds = %read_long_length_no_check.exit60, %bb.o
  %.4 = phi ptr [ %i.ec, %read_long_length_no_check.exit60 ], [ %i.dx, %bb.o ]
  %.080.i = phi i64 [ %i.ef, %read_long_length_no_check.exit60 ], [ %i.dv, %bb.o ]
  %i.eg = add i64 %.080.i, 4                      ; 6 uses
  %i.eh = icmp ult i64 %i.dr, %i.eg
  br i1 %i.eh, label %LZ4_decompress_fast.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ei = sub i64 %i.dq, %i.cw                    ; 3 uses
  %i.ej = add i64 %i.ei, %i.cq
  %.not.i = icmp ult i64 %i.ej, %i.dw
  br i1 %.not.i, label %LZ4_decompress_fast.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ek = sub nsw i64 0, %i.dw
  %i.el = getelementptr inbounds i8, ptr %i.do, i64 %i.ek
  %i.em = icmp ult i64 %i.ei, %i.dw
  br i1 %i.em, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %.neg.i = sub nsw i64 %i.ei, %i.dw              ; 3 uses
  %i.en = getelementptr inbounds i8, ptr %i.cx, i64 %.neg.i ; 2 uses
  %gepdiff.i = sub nsw i64 0, %.neg.i             ; 3 uses
  %i.eo = icmp ult i64 %i.eg, %gepdiff.i
  br i1 %i.eo, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.do, ptr align 1 %i.en, i64 %i.eg, i1 false)
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.do, ptr align 1 %i.en, i64 %gepdiff.i, i1 false)
  %i.ep = add i64 %i.eg, %.neg.i
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn.i = phi i64 [ %i.eg, %bb.t ], [ %gepdiff.i, %bb.u ]
  %.1.i = phi i64 [ 0, %bb.t ], [ %i.ep, %bb.u ]
  %.288.i = getelementptr inbounds nuw i8, ptr %i.do, i64 %.pn.i
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.r
  %.389.i = phi ptr [ %.288.i, %bb.v ], [ %i.do, %bb.r ] ; 9 uses
  %.2.i = phi i64 [ %.1.i, %bb.v ], [ %i.eg, %bb.r ] ; 12 uses
  %.079.i = phi ptr [ %i.cu, %bb.v ], [ %i.el, %bb.r ] ; 8 uses
  %.not = icmp eq i64 %.2.i, 0
  br i1 %.not, label %._crit_edge, label %iter.check236

iter.check236:                                    ; preds = %bb.w
  %.079.i222 = ptrtoaddr ptr %.079.i to i64
  %.389.i221 = ptrtoaddr ptr %.389.i to i64
  %min.iters.check224 = icmp ult i64 %.2.i, 4
  %i.eq = sub i64 %.079.i222, %.389.i221
  %diff.check223 = icmp ugt i64 %i.eq, -32
  %or.cond278 = select i1 %min.iters.check224, i1 true, i1 %diff.check223
  br i1 %or.cond278, label %.lr.ph.preheader, label %vector.main.loop.iter.check225

vector.main.loop.iter.check225:                   ; preds = %iter.check236
  %min.iters.check226 = icmp ult i64 %.2.i, 32
  br i1 %min.iters.check226, label %vec.epilog.ph240, label %vector.ph227

vector.ph227:                                     ; preds = %vector.main.loop.iter.check225
  %i.er = and i64 %.2.i, 28
  %n.vec228 = and i64 %.2.i, -32                  ; 4 uses
  br label %vector.body229

vector.body229:                                   ; preds = %vector.ph227, %vector.body229
  %index230 = phi i64 [ 0, %vector.ph227 ], [ %index.next233, %vector.body229 ] ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.079.i, i64 %index230 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %wide.load231 = load <16 x i8>, ptr %i.es, align 1, !tbaa !15
  %wide.load232 = load <16 x i8>, ptr %i.et, align 1, !tbaa !15
  %i.eu = getelementptr inbounds nuw i8, ptr %.389.i, i64 %index230 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store <16 x i8> %wide.load231, ptr %i.eu, align 1, !tbaa !15
  store <16 x i8> %wide.load232, ptr %i.ev, align 1, !tbaa !15
  %index.next233 = add nuw i64 %index230, 32      ; 2 uses
  %i.ew = icmp eq i64 %index.next233, %n.vec228
  br i1 %i.ew, label %middle.block234, label %vector.body229, !llvm.loop !123

middle.block234:                                  ; preds = %vector.body229
  %cmp.n235 = icmp eq i64 %.2.i, %n.vec228
  br i1 %cmp.n235, label %._crit_edge, label %vec.epilog.iter.check237

vec.epilog.iter.check237:                         ; preds = %middle.block234
  %min.epilog.iters.check239 = icmp eq i64 %i.er, 0
  br i1 %min.epilog.iters.check239, label %.lr.ph.preheader, label %vec.epilog.ph240, !prof !46

vec.epilog.ph240:                                 ; preds = %vector.main.loop.iter.check225, %vec.epilog.iter.check237
  %vec.epilog.resume.val241 = phi i64 [ %n.vec228, %vec.epilog.iter.check237 ], [ 0, %vector.main.loop.iter.check225 ]
  %n.vec242 = and i64 %.2.i, -4                   ; 3 uses
  br label %vec.epilog.vector.body243

vec.epilog.vector.body243:                        ; preds = %vec.epilog.vector.body243, %vec.epilog.ph240
  %index244 = phi i64 [ %vec.epilog.resume.val241, %vec.epilog.ph240 ], [ %index.next246, %vec.epilog.vector.body243 ] ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.079.i, i64 %index244
  %wide.load245 = load <4 x i8>, ptr %i.ex, align 1, !tbaa !15
  %i.ey = getelementptr inbounds nuw i8, ptr %.389.i, i64 %index244
  store <4 x i8> %wide.load245, ptr %i.ey, align 1, !tbaa !15
  %index.next246 = add nuw i64 %index244, 4       ; 2 uses
  %i.ez = icmp eq i64 %index.next246, %n.vec242
  br i1 %i.ez, label %vec.epilog.middle.block247, label %vec.epilog.vector.body243, !llvm.loop !124

vec.epilog.middle.block247:                       ; preds = %vec.epilog.vector.body243
  %cmp.n248 = icmp eq i64 %.2.i, %n.vec242
  br i1 %cmp.n248, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check236, %vec.epilog.iter.check237, %vec.epilog.middle.block247
  %.0.i130.ph = phi i64 [ 0, %iter.check236 ], [ %n.vec228, %vec.epilog.iter.check237 ], [ %n.vec242, %vec.epilog.middle.block247 ] ; 3 uses
  %xtraiter299 = and i64 %.2.i, 3                 ; 2 uses
  %lcmp.mod300.not = icmp eq i64 %xtraiter299, 0
  br i1 %lcmp.mod300.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.0.i130.prol = phi i64 [ %i.fd, %.lr.ph.prol ], [ %.0.i130.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter301 = phi i64 [ %prol.iter301.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.fa = getelementptr inbounds nuw i8, ptr %.079.i, i64 %.0.i130.prol
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !15
  %i.fc = getelementptr inbounds nuw i8, ptr %.389.i, i64 %.0.i130.prol
  store i8 %i.fb, ptr %i.fc, align 1, !tbaa !15
  %i.fd = add nuw i64 %.0.i130.prol, 1            ; 2 uses
  %prol.iter301.next = add i64 %prol.iter301, 1   ; 2 uses
  %prol.iter301.cmp.not = icmp eq i64 %prol.iter301.next, %xtraiter299
  br i1 %prol.iter301.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !125

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.0.i130.unr = phi i64 [ %.0.i130.ph, %.lr.ph.preheader ], [ %i.fd, %.lr.ph.prol ]
  %i.fe = sub i64 %.0.i130.ph, %.2.i
  %i.ff = icmp ugt i64 %i.fe, -4
  br i1 %i.ff, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0.i130 = phi i64 [ %i.fv, %.lr.ph ], [ %.0.i130.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.079.i, i64 %.0.i130
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !15
  %i.fi = getelementptr inbounds nuw i8, ptr %.389.i, i64 %.0.i130
  store i8 %i.fh, ptr %i.fi, align 1, !tbaa !15
  %i.fj = add nuw i64 %.0.i130, 1                 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.079.i, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !15
  %i.fm = getelementptr inbounds nuw i8, ptr %.389.i, i64 %i.fj
  store i8 %i.fl, ptr %i.fm, align 1, !tbaa !15
  %i.fn = add nuw i64 %.0.i130, 2                 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.079.i, i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !15
  %i.fq = getelementptr inbounds nuw i8, ptr %.389.i, i64 %i.fn
  store i8 %i.fp, ptr %i.fq, align 1, !tbaa !15
  %i.fr = add nuw i64 %.0.i130, 3                 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.079.i, i64 %i.fr
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !15
  %i.fu = getelementptr inbounds nuw i8, ptr %.389.i, i64 %i.fr
  store i8 %i.ft, ptr %i.fu, align 1, !tbaa !15
  %i.fv = add nuw i64 %.0.i130, 4                 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.fv, %.2.i
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !126

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block234, %vec.epilog.middle.block247, %bb.w
  %i.fw = getelementptr inbounds nuw i8, ptr %.389.i, i64 %.2.i ; 2 uses
  %i.fx = ptrtoint ptr %i.fw to i64
  %i.fy = sub i64 %i.cv, %i.fx
  %i.fz = icmp ult i64 %i.fy, 5
  br i1 %i.fz, label %LZ4_decompress_fast.exit.thread, label %.thread

LZ4_decompress_unsafe_generic.exit:               ; preds = %bb.n
  %i.ga = ptrtoint ptr %i.dp to i64
  %i.gb = ptrtoint ptr %1 to i64
  %i.gc = sub i64 %i.ga, %i.gb
  %i.gd = trunc i64 %i.gc to i32                  ; 3 uses
  %i.ge = icmp slt i32 %i.gd, 1
  br i1 %i.ge, label %LZ4_decompress_fast.exit.thread, label %bb.x

bb.x:                                             ; preds = %LZ4_decompress_unsafe_generic.exit
  %i.gf = load i64, ptr %i.a, align 8, !tbaa !49
  %i.gg = add i64 %i.gf, %i.cr
  store i64 %i.gg, ptr %i.a, align 8, !tbaa !49
  %i.gh = load ptr, ptr %i.cl, align 8, !tbaa !50
  %i.gi = getelementptr inbounds i8, ptr %i.gh, i64 %i.cr
  store ptr %i.gi, ptr %i.cl, align 8, !tbaa !50
  br label %LZ4_decompress_fast.exit.thread

bb.y:                                             ; preds = %bb.j
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.gj, align 8, !tbaa !52
  %i.gk = sub i64 0, %i.b
  %i.gl = getelementptr inbounds i8, ptr %i.cm, i64 %i.gk
  store ptr %i.gl, ptr %0, align 8, !tbaa !51
  %i.gm = sext i32 %3 to i64                      ; 2 uses
  %i.gn = getelementptr inbounds i8, ptr %2, i64 %i.gm ; 3 uses
  %i.go = ptrtoint ptr %i.gn to i64               ; 3 uses
  %i.gp = ptrtoint ptr %2 to i64
  br label %.thread.i61

.thread.i61:                                      ; preds = %._crit_edge.i73, %bb.y
  %.0.i62 = phi ptr [ %1, %bb.y ], [ %.4.i67, %._crit_edge.i73 ] ; 2 uses
  %.086.i.i63 = phi ptr [ %2, %bb.y ], [ %i.jo, %._crit_edge.i73 ] ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.0.i62, i64 1 ; 2 uses
  %i.gr = load i8, ptr %.0.i62, align 1, !tbaa !15
  %i.gs = zext i8 %i.gr to i32                    ; 2 uses
  %i.gt = lshr i32 %i.gs, 4                       ; 2 uses
  %i.gu = zext nneg i32 %i.gt to i64
  %i.gv = icmp eq i32 %i.gt, 15
  br i1 %i.gv, label %.preheader37.i, label %bb.z

.preheader37.i:                                   ; preds = %.thread.i61, %.preheader37.i
  %i.gw = phi ptr [ %i.gz, %.preheader37.i ], [ %i.gq, %.thread.i61 ] ; 2 uses
  %.0.i4.i76 = phi i64 [ %i.ha, %.preheader37.i ], [ 0, %.thread.i61 ]
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !15  ; 2 uses
  %i.gy = zext i8 %i.gx to i64
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 1 ; 2 uses
  %i.ha = add i64 %.0.i4.i76, %i.gy               ; 2 uses
  %i.hb = icmp eq i8 %i.gx, -1
  br i1 %i.hb, label %.preheader37.i, label %read_long_length_no_check.exit.i77, !llvm.loop !5

read_long_length_no_check.exit.i77:               ; preds = %.preheader37.i
  %i.hc = add i64 %i.ha, 15
  br label %bb.z

bb.z:                                             ; preds = %read_long_length_no_check.exit.i77, %.thread.i61
  %.1.i64 = phi ptr [ %i.gz, %read_long_length_no_check.exit.i77 ], [ %i.gq, %.thread.i61 ] ; 2 uses
  %.085.i.i65 = phi i64 [ %i.hc, %read_long_length_no_check.exit.i77 ], [ %i.gu, %.thread.i61 ] ; 4 uses
  %i.hd = ptrtoint ptr %.086.i.i63 to i64
  %i.he = sub i64 %i.go, %i.hd
  %i.hf = icmp ult i64 %i.he, %.085.i.i65
  br i1 %i.hf, label %LZ4_decompress_fast.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.086.i.i63, ptr nonnull align 1 %.1.i64, i64 %.085.i.i65, i1 false)
  %i.hg = getelementptr inbounds nuw i8, ptr %.086.i.i63, i64 %.085.i.i65 ; 7 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.1.i64, i64 %.085.i.i65 ; 3 uses
  %i.hi = ptrtoint ptr %i.hg to i64               ; 2 uses
  %i.hj = sub i64 %i.go, %i.hi                    ; 2 uses
  %i.hk = icmp ult i64 %i.hj, 12
  br i1 %i.hk, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.hl = icmp eq ptr %i.hg, %i.gn
  br i1 %i.hl, label %LZ4_decompress_fast_extDict.exit, label %LZ4_decompress_fast.exit.thread

bb.ac:                                            ; preds = %bb.aa
  %i.hm = and i32 %i.gs, 15                       ; 2 uses
  %i.hn = zext nneg i32 %i.hm to i64
  %.val.i66 = load i16, ptr %i.hh, align 1, !tbaa !30
  %i.ho = zext i16 %.val.i66 to i64               ; 4 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hh, i64 2 ; 2 uses
  %i.hq = icmp eq i32 %i.hm, 15
  br i1 %i.hq, label %.preheader.i75, label %bb.ad

.preheader.i75:                                   ; preds = %bb.ac, %.preheader.i75
  %i.hr = phi ptr [ %i.hu, %.preheader.i75 ], [ %i.hp, %bb.ac ] ; 2 uses
  %.0.i6.i = phi i64 [ %i.hv, %.preheader.i75 ], [ 0, %bb.ac ]
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !15  ; 2 uses
  %i.ht = zext i8 %i.hs to i64
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 1 ; 2 uses
  %i.hv = add i64 %.0.i6.i, %i.ht                 ; 2 uses
  %i.hw = icmp eq i8 %i.hs, -1
  br i1 %i.hw, label %.preheader.i75, label %read_long_length_no_check.exit7.i, !llvm.loop !5

read_long_length_no_check.exit7.i:                ; preds = %.preheader.i75
  %i.hx = add i64 %i.hv, 15
  br label %bb.ad

bb.ad:                                            ; preds = %read_long_length_no_check.exit7.i, %bb.ac
  %.4.i67 = phi ptr [ %i.hu, %read_long_length_no_check.exit7.i ], [ %i.hp, %bb.ac ]
  %.080.i.i68 = phi i64 [ %i.hx, %read_long_length_no_check.exit7.i ], [ %i.hn, %bb.ac ]
  %i.hy = add i64 %.080.i.i68, 4                  ; 6 uses
  %i.hz = icmp ult i64 %i.hj, %i.hy
  br i1 %i.hz, label %LZ4_decompress_fast.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ia = sub i64 %i.hi, %i.gp                    ; 3 uses
  %i.ib = add i64 %i.ia, %i.b
  %.not.i.i69 = icmp ult i64 %i.ib, %i.ho
  br i1 %.not.i.i69, label %LZ4_decompress_fast.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ic = sub nsw i64 0, %i.ho
  %i.id = getelementptr inbounds i8, ptr %i.hg, i64 %i.ic
  %i.ie = icmp ult i64 %i.ia, %i.ho
  br i1 %i.ie, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %.neg.i.i = sub nsw i64 %i.ia, %i.ho            ; 3 uses
  %i.if = getelementptr inbounds i8, ptr %i.cm, i64 %.neg.i.i ; 2 uses
  %gepdiff.i.i = sub nsw i64 0, %.neg.i.i         ; 3 uses
  %i.ig = icmp ult i64 %i.hy, %gepdiff.i.i
  br i1 %i.ig, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.hg, ptr readonly align 1 %i.if, i64 %i.hy, i1 false)
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.hg, ptr readonly align 1 %i.if, i64 %gepdiff.i.i, i1 false)
  %i.ih = add i64 %i.hy, %.neg.i.i
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pn.i.i = phi i64 [ %i.hy, %bb.ah ], [ %gepdiff.i.i, %bb.ai ]
  %.1.i.i = phi i64 [ 0, %bb.ah ], [ %i.ih, %bb.ai ]
  %.288.i.i = getelementptr inbounds nuw i8, ptr %i.hg, i64 %.pn.i.i
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.af
  %.389.i.i = phi ptr [ %.288.i.i, %bb.aj ], [ %i.hg, %bb.af ] ; 9 uses
  %.2.i.i = phi i64 [ %.1.i.i, %bb.aj ], [ %i.hy, %bb.af ] ; 12 uses
  %.079.i.i = phi ptr [ %2, %bb.aj ], [ %i.id, %bb.af ] ; 8 uses
  %.not.i70 = icmp eq i64 %.2.i.i, 0
  br i1 %.not.i70, label %._crit_edge.i73, label %iter.check

iter.check:                                       ; preds = %bb.ak
  %.079.i.i212 = ptrtoaddr ptr %.079.i.i to i64
  %.389.i.i211 = ptrtoaddr ptr %.389.i.i to i64
  %min.iters.check = icmp ult i64 %.2.i.i, 4
  %i.ii = sub i64 %.079.i.i212, %.389.i.i211
  %diff.check = icmp ugt i64 %i.ii, -32
  %or.cond279 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond279, label %.lr.ph.i71.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check213 = icmp ult i64 %.2.i.i, 32
  br i1 %min.iters.check213, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ij = and i64 %.2.i.i, 28
  %n.vec = and i64 %.2.i.i, -32                   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 %index ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %wide.load = load <16 x i8>, ptr %i.ik, align 1, !tbaa !15
  %wide.load214 = load <16 x i8>, ptr %i.il, align 1, !tbaa !15
  %i.im = getelementptr inbounds nuw i8, ptr %.389.i.i, i64 %index ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  store <16 x i8> %wide.load, ptr %i.im, align 1, !tbaa !15
  store <16 x i8> %wide.load214, ptr %i.in, align 1, !tbaa !15
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.io = icmp eq i64 %index.next, %n.vec
  br i1 %i.io, label %middle.block, label %vector.body, !llvm.loop !127

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.2.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.i73, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ij, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i71.preheader, label %vec.epilog.ph, !prof !46

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec215 = and i64 %.2.i.i, -4                 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index216 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next218, %vec.epilog.vector.body ] ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 %index216
  %wide.load217 = load <4 x i8>, ptr %i.ip, align 1, !tbaa !15
  %i.iq = getelementptr inbounds nuw i8, ptr %.389.i.i, i64 %index216
  store <4 x i8> %wide.load217, ptr %i.iq, align 1, !tbaa !15
  %index.next218 = add nuw i64 %index216, 4       ; 2 uses
  %i.ir = icmp eq i64 %index.next218, %n.vec215
  br i1 %i.ir, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !128

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n219 = icmp eq i64 %.2.i.i, %n.vec215
  br i1 %cmp.n219, label %._crit_edge.i73, label %.lr.ph.i71.preheader

.lr.ph.i71.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0.i43.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec215, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.2.i.i, 3                  ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i71.prol.loopexit, label %.lr.ph.i71.prol

.lr.ph.i71.prol:                                  ; preds = %.lr.ph.i71.preheader, %.lr.ph.i71.prol
  %.0.i43.i.prol = phi i64 [ %i.iv, %.lr.ph.i71.prol ], [ %.0.i43.i.ph, %.lr.ph.i71.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i71.prol ], [ 0, %.lr.ph.i71.preheader ]
  %i.is = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 %.0.i43.i.prol
  %i.it = load i8, ptr %i.is, align 1, !tbaa !15
  %i.iu = getelementptr inbounds nuw i8, ptr %.389.i.i, i64 %.0.i43.i.prol
  store i8 %i.it, ptr %i.iu, align 1, !tbaa !15
  %i.iv = add nuw i64 %.0.i43.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i71.prol.loopexit, label %.lr.ph.i71.prol, !llvm.loop !129

.lr.ph.i71.prol.loopexit:                         ; preds = %.lr.ph.i71.prol, %.lr.ph.i71.preheader
  %.0.i43.i.unr = phi i64 [ %.0.i43.i.ph, %.lr.ph.i71.preheader ], [ %i.iv, %.lr.ph.i71.prol ]
  %i.iw = sub i64 %.0.i43.i.ph, %.2.i.i
  %i.ix = icmp ugt i64 %i.iw, -4
  br i1 %i.ix, label %._crit_edge.i73, label %.lr.ph.i71

.lr.ph.i71:                                       ; preds = %.lr.ph.i71.prol.loopexit, %.lr.ph.i71
  %.0.i43.i = phi i64 [ %i.jn, %.lr.ph.i71 ], [ %.0.i43.i.unr, %.lr.ph.i71.prol.loopexit ] ; 6 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 %.0.i43.i
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !15
  %i.ja = getelementptr inbounds nuw i8, ptr %.389.i.i, i64 %.0.i43.i
  store i8 %i.iz, ptr %i.ja, align 1, !tbaa !15
  %i.jb = add nuw i64 %.0.i43.i, 1                ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 %i.jb
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !15
  %i.je = getelementptr inbounds nuw i8, ptr %.389.i.i, i64 %i.jb
  store i8 %i.jd, ptr %i.je, align 1, !tbaa !15
  %i.jf = add nuw i64 %.0.i43.i, 2                ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 %i.jf
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !15
  %i.ji = getelementptr inbounds nuw i8, ptr %.389.i.i, i64 %i.jf
  store i8 %i.jh, ptr %i.ji, align 1, !tbaa !15
  %i.jj = add nuw i64 %.0.i43.i, 3                ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 %i.jj
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !15
  %i.jm = getelementptr inbounds nuw i8, ptr %.389.i.i, i64 %i.jj
  store i8 %i.jl, ptr %i.jm, align 1, !tbaa !15
  %i.jn = add nuw i64 %.0.i43.i, 4                ; 2 uses
  %exitcond.not.i72.3 = icmp eq i64 %i.jn, %.2.i.i
  br i1 %exitcond.not.i72.3, label %._crit_edge.i73, label %.lr.ph.i71, !llvm.loop !130

._crit_edge.i73:                                  ; preds = %.lr.ph.i71.prol.loopexit, %.lr.ph.i71, %middle.block, %vec.epilog.middle.block, %bb.ak
  %i.jo = getelementptr inbounds nuw i8, ptr %.389.i.i, i64 %.2.i.i ; 2 uses
  %i.jp = ptrtoint ptr %i.jo to i64
  %i.jq = sub i64 %i.go, %i.jp
  %i.jr = icmp ult i64 %i.jq, 5
  br i1 %i.jr, label %LZ4_decompress_fast.exit.thread, label %.thread.i61

LZ4_decompress_fast_extDict.exit:                 ; preds = %bb.ab
  %i.js = ptrtoint ptr %i.hh to i64
  %i.jt = ptrtoint ptr %1 to i64
  %i.ju = sub i64 %i.js, %i.jt
  %i.jv = trunc i64 %i.ju to i32                  ; 3 uses
  %i.jw = icmp slt i32 %i.jv, 1
  br i1 %i.jw, label %LZ4_decompress_fast.exit.thread, label %bb.al

bb.al:                                            ; preds = %LZ4_decompress_fast_extDict.exit
  store i64 %i.gm, ptr %i.a, align 8, !tbaa !49
  store ptr %i.gn, ptr %i.cl, align 8, !tbaa !50
  br label %LZ4_decompress_fast.exit.thread

LZ4_decompress_fast.exit.thread:                  ; preds = %bb.z, %bb.ae, %bb.ad, %._crit_edge.i73, %bb.l, %bb.q, %bb.p, %._crit_edge, %bb.c, %bb.g, %._crit_edge.i, %bb.n, %bb.ab, %bb.e, %bb.i, %bb.al, %bb.x, %LZ4_decompress_fast_extDict.exit, %LZ4_decompress_unsafe_generic.exit, %LZ4_decompress_fast.exit
  %.044 = phi i32 [ %i.gd, %LZ4_decompress_unsafe_generic.exit ], [ %i.jv, %LZ4_decompress_fast_extDict.exit ], [ %i.ci, %LZ4_decompress_fast.exit ], [ %i.ci, %bb.i ], [ %i.gd, %bb.x ], [ %i.jv, %bb.al ], [ -1, %bb.l ], [ -1, %bb.ab ], [ -1, %bb.e ], [ -1, %bb.c ], [ -1, %bb.n ], [ -1, %._crit_edge.i ], [ -1, %bb.g ], [ -1, %._crit_edge ], [ -1, %bb.p ], [ -1, %bb.q ], [ -1, %._crit_edge.i73 ], [ -1, %bb.ad ], [ -1, %bb.ae ], [ -1, %bb.z ]
  ret i32 %.044
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @LZ4_decompress_safe_usingDict(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(address) %4, i32 noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i32 %5, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @LZ4_decompress_safe(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.c = sext i32 %5 to i64                       ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %4, i64 %i.c
  %i.e = icmp eq ptr %i.d, %1
  br i1 %i.e, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.f = icmp sgt i32 %5, 65534
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 @LZ4_decompress_safe_withPrefix64k(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.h = tail call fastcc i32 @LZ4_decompress_safe_withSmallPrefix(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %i.c)
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.i = tail call i32 @LZ4_decompress_safe_forceExtDict(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i64 noundef %i.c)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ %i.g, %bb.e ], [ %i.h, %bb.f ], [ %i.i, %bb.g ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @LZ4_decompress_safe_partial_usingDict(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(address) %5, i32 noundef %6) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i32 %6, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @LZ4_decompress_safe_partial(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  br label %LZ4_decompress_safe_partial_withPrefix64k.exit

bb.c:                                             ; preds = %bb.a
  %i.c = sext i32 %6 to i64                       ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %5, i64 %i.c
  %i.e = icmp eq ptr %i.d, %1
  br i1 %i.e, label %bb.d, label %bb.cz

bb.d:                                             ; preds = %bb.c
  %i.f = icmp sgt i32 %6, 65534
  %i.g = tail call i32 @llvm.smin.i32(i32 %3, i32 %4) ; 8 uses
  br i1 %i.f, label %bb.e, label %bb.bc

bb.e:                                             ; preds = %bb.d
  %i.h = icmp eq ptr %0, null
  %i.i = icmp slt i32 %i.g, 0
  %or.cond.i.i = or i1 %i.h, %i.i
  br i1 %or.cond.i.i, label %LZ4_decompress_safe_partial_withPrefix64k.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = sext i32 %2 to i64
  %i.k = getelementptr inbounds i8, ptr %0, i64 %i.j ; 11 uses
  %i.l = zext nneg i32 %i.g to i64                ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %i.l ; 3 uses
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 -16
  %i.o = icmp eq i32 %i.g, 0
  br i1 %i.o, label %LZ4_decompress_safe_partial_withPrefix64k.exit, label %bb.g, !prof !27
end_hunk_0
begin_hunk_1_@LZ4_decompress_fast_usingDict:bb.a
  %wide.load145 = load <4 x i8>, ptr %i.be, align 1, !tbaa !15
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aa, i64 %index144
  store <4 x i8> %wide.load145, ptr %i.bf, align 1, !tbaa !15
  %index.next146 = add nuw i64 %index144, 4       ; 2 uses
  %i.bg = icmp eq i64 %index.next146, %n.vec142
  br i1 %i.bg, label %vec.epilog.middle.block147, label %vec.epilog.vector.body143, !llvm.loop !142

vec.epilog.middle.block147:                       ; preds = %vec.epilog.vector.body143
  %cmp.n148 = icmp eq i64 %i.as, %n.vec142
  br i1 %cmp.n148, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check136, %vec.epilog.iter.check137, %vec.epilog.middle.block147
  %.0.i64.ph = phi i64 [ 0, %iter.check136 ], [ %n.vec128, %vec.epilog.iter.check137 ], [ %n.vec142, %vec.epilog.middle.block147 ] ; 3 uses
  %i.bh = add i64 %.080.i, 3
  %i.bi = sub i64 %i.bh, %.0.i64.ph
  %xtraiter164 = and i64 %.080.i, 3               ; 2 uses
  %lcmp.mod165.not = icmp eq i64 %xtraiter164, 0
  br i1 %lcmp.mod165.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.0.i64.prol = phi i64 [ %i.bm, %.lr.ph.prol ], [ %.0.i64.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter166 = phi i64 [ %prol.iter166.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.0.i64.prol
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !15
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.0.i64.prol
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !15
  %i.bm = add nuw i64 %.0.i64.prol, 1             ; 2 uses
  %prol.iter166.next = add i64 %prol.iter166, 1   ; 2 uses
  %prol.iter166.cmp.not = icmp eq i64 %prol.iter166.next, %xtraiter164
  br i1 %prol.iter166.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !143

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.0.i64.unr = phi i64 [ %.0.i64.ph, %.lr.ph.preheader ], [ %i.bm, %.lr.ph.prol ]
  %i.bn = icmp ult i64 %i.bi, 3
  br i1 %i.bn, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0.i64 = phi i64 [ %i.cd, %.lr.ph ], [ %.0.i64.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.0.i64
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !15
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.0.i64
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !15
  %i.br = add nuw i64 %.0.i64, 1                  ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !15
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.br
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !15
  %i.bv = add nuw i64 %.0.i64, 2                  ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !15
  %i.by = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.bv
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !15
  %i.bz = add nuw i64 %.0.i64, 3                  ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !15
  %i.cc = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.bz
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !15
  %i.cd = add nuw i64 %.0.i64, 4
  %exitcond.not.3 = icmp eq i64 %.0.i64, %.080.i
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !144

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block134, %vec.epilog.middle.block147, %bb.h
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.as ; 2 uses
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = sub i64 %i.i, %i.cf
  %i.ch = icmp ult i64 %i.cg, 5
  br i1 %i.ch, label %LZ4_decompress_unsafe_generic.exit, label %.thread

bb.i:                                             ; preds = %bb.e
  %i.ci = ptrtoint ptr %i.ab to i64
  %i.cj = ptrtoint ptr %0 to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = trunc i64 %i.ck to i32
  br label %LZ4_decompress_unsafe_generic.exit

bb.j:                                             ; preds = %bb.b
  %i.cm = sext i32 %2 to i64
  %i.cn = getelementptr inbounds i8, ptr %1, i64 %i.cm ; 2 uses
  %i.co = ptrtoint ptr %i.cn to i64               ; 3 uses
  %i.cp = ptrtoint ptr %1 to i64
  br label %.thread.i

.thread.i:                                        ; preds = %._crit_edge.i, %bb.j
  %.0.i19 = phi ptr [ %0, %bb.j ], [ %.4.i20, %._crit_edge.i ] ; 2 uses
  %.086.i.i = phi ptr [ %1, %bb.j ], [ %i.fo, %._crit_edge.i ] ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i19, i64 1 ; 2 uses
  %i.cr = load i8, ptr %.0.i19, align 1, !tbaa !15
  %i.cs = zext i8 %i.cr to i32                    ; 2 uses
  %i.ct = lshr i32 %i.cs, 4                       ; 2 uses
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = icmp eq i32 %i.ct, 15
  br i1 %i.cv, label %.preheader37.i, label %bb.k

.preheader37.i:                                   ; preds = %.thread.i, %.preheader37.i
  %i.cw = phi ptr [ %i.cz, %.preheader37.i ], [ %i.cq, %.thread.i ] ; 2 uses
  %.0.i4.i = phi i64 [ %i.da, %.preheader37.i ], [ 0, %.thread.i ]
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !15  ; 2 uses
  %i.cy = zext i8 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 1 ; 2 uses
  %i.da = add i64 %.0.i4.i, %i.cy                 ; 2 uses
  %i.db = icmp eq i8 %i.cx, -1
  br i1 %i.db, label %.preheader37.i, label %read_long_length_no_check.exit.i, !llvm.loop !5

read_long_length_no_check.exit.i:                 ; preds = %.preheader37.i
  %i.dc = add i64 %i.da, 15
  br label %bb.k

bb.k:                                             ; preds = %read_long_length_no_check.exit.i, %.thread.i
  %.1.i = phi ptr [ %i.cz, %read_long_length_no_check.exit.i ], [ %i.cq, %.thread.i ] ; 2 uses
  %.085.i.i = phi i64 [ %i.dc, %read_long_length_no_check.exit.i ], [ %i.cu, %.thread.i ] ; 4 uses
  %i.dd = ptrtoint ptr %.086.i.i to i64
  %i.de = sub i64 %i.co, %i.dd
  %i.df = icmp ult i64 %i.de, %.085.i.i
  br i1 %i.df, label %LZ4_decompress_unsafe_generic.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.086.i.i, ptr nonnull align 1 %.1.i, i64 %.085.i.i, i1 false)
  %i.dg = getelementptr inbounds nuw i8, ptr %.086.i.i, i64 %.085.i.i ; 7 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.1.i, i64 %.085.i.i ; 3 uses
  %i.di = ptrtoint ptr %i.dg to i64               ; 2 uses
  %i.dj = sub i64 %i.co, %i.di                    ; 2 uses
  %i.dk = icmp ult i64 %i.dj, 12
  br i1 %i.dk, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dl = icmp eq ptr %i.dg, %i.cn
  br i1 %i.dl, label %bb.w, label %LZ4_decompress_unsafe_generic.exit

bb.n:                                             ; preds = %bb.l
  %i.dm = and i32 %i.cs, 15                       ; 2 uses
  %i.dn = zext nneg i32 %i.dm to i64
  %.val.i = load i16, ptr %i.dh, align 1, !tbaa !30
  %i.do = zext i16 %.val.i to i64                 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dh, i64 2 ; 2 uses
  %i.dq = icmp eq i32 %i.dm, 15
  br i1 %i.dq, label %.preheader.i, label %bb.o

.preheader.i:                                     ; preds = %bb.n, %.preheader.i
  %i.dr = phi ptr [ %i.du, %.preheader.i ], [ %i.dp, %bb.n ] ; 2 uses
  %.0.i6.i = phi i64 [ %i.dv, %.preheader.i ], [ 0, %bb.n ]
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !15  ; 2 uses
  %i.dt = zext i8 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 1 ; 2 uses
  %i.dv = add i64 %.0.i6.i, %i.dt                 ; 2 uses
  %i.dw = icmp eq i8 %i.ds, -1
  br i1 %i.dw, label %.preheader.i, label %read_long_length_no_check.exit7.i, !llvm.loop !5

read_long_length_no_check.exit7.i:                ; preds = %.preheader.i
  %i.dx = add i64 %i.dv, 15
  br label %bb.o

bb.o:                                             ; preds = %read_long_length_no_check.exit7.i, %bb.n
  %.4.i20 = phi ptr [ %i.du, %read_long_length_no_check.exit7.i ], [ %i.dp, %bb.n ]
  %.080.i.i = phi i64 [ %i.dx, %read_long_length_no_check.exit7.i ], [ %i.dn, %bb.n ]
  %i.dy = add i64 %.080.i.i, 4                    ; 6 uses
  %i.dz = icmp ult i64 %i.dj, %i.dy
  br i1 %i.dz, label %LZ4_decompress_unsafe_generic.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ea = sub i64 %i.di, %i.cp                    ; 3 uses
  %i.eb = add i64 %i.ea, %i.b
  %.not.i.i = icmp ult i64 %i.eb, %i.do
  br i1 %.not.i.i, label %LZ4_decompress_unsafe_generic.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ec = sub nsw i64 0, %i.do
  %i.ed = getelementptr inbounds i8, ptr %i.dg, i64 %i.ec
  %i.ee = icmp ult i64 %i.ea, %i.do
  br i1 %i.ee, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %.neg.i.i = sub nsw i64 %i.ea, %i.do            ; 3 uses
  %i.ef = getelementptr inbounds i8, ptr %i.c, i64 %.neg.i.i ; 2 uses
  %gepdiff.i.i = sub nsw i64 0, %.neg.i.i         ; 3 uses
  %i.eg = icmp ult i64 %i.dy, %gepdiff.i.i
  br i1 %i.eg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.dg, ptr nonnull readonly align 1 %i.ef, i64 %i.dy, i1 false)
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.dg, ptr nonnull readonly align 1 %i.ef, i64 %gepdiff.i.i, i1 false)
  %i.eh = add i64 %i.dy, %.neg.i.i
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn.i.i = phi i64 [ %i.dy, %bb.s ], [ %gepdiff.i.i, %bb.t ]
  %.1.i.i = phi i64 [ 0, %bb.s ], [ %i.eh, %bb.t ]
  %.288.i.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.pn.i.i
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.q
  %.389.i.i = phi ptr [ %.288.i.i, %bb.u ], [ %i.dg, %bb.q ] ; 9 uses
  %.2.i.i = phi i64 [ %.1.i.i, %bb.u ], [ %i.dy, %bb.q ] ; 12 uses
  %.079.i.i = phi ptr [ %1, %bb.u ], [ %i.ed, %bb.q ] ; 8 uses
  %.not.i21 = icmp eq i64 %.2.i.i, 0
  br i1 %.not.i21, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %bb.v
  %.079.i.i114 = ptrtoaddr ptr %.079.i.i to i64
  %.389.i.i113 = ptrtoaddr ptr %.389.i.i to i64
  %min.iters.check = icmp ult i64 %.2.i.i, 4
  %i.ei = sub i64 %.079.i.i114, %.389.i.i113
  %diff.check = icmp ugt i64 %i.ei, -32
  %or.cond151 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond151, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check115 = icmp ult i64 %.2.i.i, 32
  br i1 %min.iters.check115, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ej = and i64 %.2.i.i, 28
  %n.vec = and i64 %.2.i.i, -32                   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 %index ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %wide.load = load <16 x i8>, ptr %i.ek, align 1, !tbaa !15
  %wide.load116 = load <16 x i8>, ptr %i.el, align 1, !tbaa !15
  %i.em = getelementptr inbounds nuw i8, ptr %.389.i.i, i64 %index ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store <16 x i8> %wide.load, ptr %i.em, align 1, !tbaa !15
  store <16 x i8> %wide.load116, ptr %i.en, align 1, !tbaa !15
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.eo = icmp eq i64 %index.next, %n.vec
  br i1 %i.eo, label %middle.block, label %vector.body, !llvm.loop !145

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.2.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ej, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !46

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec117 = and i64 %.2.i.i, -4                 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index118 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next120, %vec.epilog.vector.body ] ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 %index118
  %wide.load119 = load <4 x i8>, ptr %i.ep, align 1, !tbaa !15
  %i.eq = getelementptr inbounds nuw i8, ptr %.389.i.i, i64 %index118
  store <4 x i8> %wide.load119, ptr %i.eq, align 1, !tbaa !15
  %index.next120 = add nuw i64 %index118, 4       ; 2 uses
  %i.er = icmp eq i64 %index.next120, %n.vec117
  br i1 %i.er, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !146

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n121 = icmp eq i64 %.2.i.i, %n.vec117
  br i1 %cmp.n121, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0.i43.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec117, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.2.i.i, 3                  ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.0.i43.i.prol = phi i64 [ %i.ev, %.lr.ph.i.prol ], [ %.0.i43.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.es = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 %.0.i43.i.prol
  %i.et = load i8, ptr %i.es, align 1, !tbaa !15
  %i.eu = getelementptr inbounds nuw i8, ptr %.389.i.i, i64 %.0.i43.i.prol
  store i8 %i.et, ptr %i.eu, align 1, !tbaa !15
  %i.ev = add nuw i64 %.0.i43.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !147

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.0.i43.i.unr = phi i64 [ %.0.i43.i.ph, %.lr.ph.i.preheader ], [ %i.ev, %.lr.ph.i.prol ]
  %i.ew = sub i64 %.0.i43.i.ph, %.2.i.i
  %i.ex = icmp ugt i64 %i.ew, -4
  br i1 %i.ex, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.0.i43.i = phi i64 [ %i.fn, %.lr.ph.i ], [ %.0.i43.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 %.0.i43.i
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !15
  %i.fa = getelementptr inbounds nuw i8, ptr %.389.i.i, i64 %.0.i43.i
  store i8 %i.ez, ptr %i.fa, align 1, !tbaa !15
  %i.fb = add nuw i64 %.0.i43.i, 1                ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !15
  %i.fe = getelementptr inbounds nuw i8, ptr %.389.i.i, i64 %i.fb
  store i8 %i.fd, ptr %i.fe, align 1, !tbaa !15
  %i.ff = add nuw i64 %.0.i43.i, 2                ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !15
  %i.fi = getelementptr inbounds nuw i8, ptr %.389.i.i, i64 %i.ff
  store i8 %i.fh, ptr %i.fi, align 1, !tbaa !15
  %i.fj = add nuw i64 %.0.i43.i, 3                ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !15
  %i.fm = getelementptr inbounds nuw i8, ptr %.389.i.i, i64 %i.fj
  store i8 %i.fl, ptr %i.fm, align 1, !tbaa !15
  %i.fn = add nuw i64 %.0.i43.i, 4                ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.fn, %.2.i.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !148

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.v
  %i.fo = getelementptr inbounds nuw i8, ptr %.389.i.i, i64 %.2.i.i ; 2 uses
  %i.fp = ptrtoint ptr %i.fo to i64
  %i.fq = sub i64 %i.co, %i.fp
  %i.fr = icmp ult i64 %i.fq, 5
  br i1 %i.fr, label %LZ4_decompress_unsafe_generic.exit, label %.thread.i

bb.w:                                             ; preds = %bb.m
  %i.fs = ptrtoint ptr %i.dh to i64
  %i.ft = ptrtoint ptr %0 to i64
  %i.fu = sub i64 %i.fs, %i.ft
  %i.fv = trunc i64 %i.fu to i32
  br label %LZ4_decompress_unsafe_generic.exit

LZ4_decompress_unsafe_generic.exit:               ; preds = %._crit_edge.i, %bb.p, %bb.o, %bb.k, %bb.c, %bb.g, %._crit_edge, %bb.e, %bb.w, %bb.m, %bb.i
  %.0 = phi i32 [ -1, %bb.c ], [ -1, %bb.e ], [ %i.cl, %bb.i ], [ -1, %bb.m ], [ %i.fv, %bb.w ], [ -1, %._crit_edge ], [ -1, %bb.g ], [ -1, %bb.k ], [ -1, %bb.o ], [ -1, %bb.p ], [ -1, %._crit_edge.i ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @LZ4_compress_limitedOutput(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %union.LZ4_stream_u, align 8        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.a = call i32 @LZ4_compress_fast_extState(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret i32 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @LZ4_compress(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %3 = alloca %union.LZ4_stream_u, align 8        ; 3 uses
  %i.a = icmp ugt i32 %2, 2113929216
  br i1 %i.a, label %LZ4_compressBound.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = udiv i32 %2, 255
  %i.c = add nuw nsw i32 %2, 16
  %i.d = add nuw nsw i32 %i.c, %i.b
  br label %LZ4_compressBound.exit

LZ4_compressBound.exit:                           ; preds = %bb.a, %bb.b
  %i.e = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.f = call i32 @LZ4_compress_fast_extState(ptr noundef nonnull %3, ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %i.e, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i32 %i.f
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @LZ4_compress_limitedOutput_withState(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @LZ4_compress_fast_extState(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @LZ4_compress_withState(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ugt i32 %3, 2113929216
  br i1 %i.a, label %LZ4_compressBound.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = udiv i32 %3, 255
  %i.c = add nuw nsw i32 %3, 16
  %i.d = add nuw nsw i32 %i.c, %i.b
  br label %LZ4_compressBound.exit

LZ4_compressBound.exit:                           ; preds = %bb.a, %bb.b
  %i.e = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  %i.f = tail call i32 @LZ4_compress_fast_extState(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %i.e, i32 noundef 1)
  ret i32 %i.f
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @LZ4_compress_limitedOutput_continue(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @LZ4_compress_fast_continue(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @LZ4_compress_continue(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ugt i32 %3, 2113929216
  br i1 %i.a, label %LZ4_compressBound.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = udiv i32 %3, 255
  %i.c = add nuw nsw i32 %3, 16
  %i.d = add nuw nsw i32 %i.c, %i.b
  br label %LZ4_compressBound.exit

LZ4_compressBound.exit:                           ; preds = %bb.a, %bb.b
  %i.e = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  %i.f = tail call i32 @LZ4_compress_fast_continue(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %i.e, i32 noundef 1)
end_hunk_1
