Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/erc_do_p?download=true
inline.NumInlined: 24
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 39
begin_hunk_0_@copy_to_conceal:bb.a
  %n.vec256 = and i64 %wide.trip.count49.i, 1073741820 ; 3 uses
  %cmp.n263 = icmp eq i64 %n.vec256, %wide.trip.count49.i
  %xtraiter268 = and i64 %wide.trip.count49.i, 1
  %lcmp.mod269.not = icmp eq i64 %xtraiter268, 0
  %i.by = add nsw i64 %wide.trip.count49.i, -1
  br label %iter.check251

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %indvars.iv.i
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !61
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %indvars.iv.i
  store i16 %i.ca, ptr %i.cb, align 2, !tbaa !61
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %indvars.iv.next.i
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !61
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %indvars.iv.next.i
  store i16 %i.cd, ptr %i.ce, align 2, !tbaa !61
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %indvars.iv.next.i.1
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !61
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %indvars.iv.next.i.1
  store i16 %i.cg, ptr %i.ch, align 2, !tbaa !61
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %indvars.iv.next.i.2
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !61
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %indvars.iv.next.i.2
  store i16 %i.cj, ptr %i.ck, align 2, !tbaa !61
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %vec.epilog.scalar.ph, !llvm.loop !160

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1 ; 2 uses
  %exitcond45.not.i = icmp eq i64 %indvars.iv.next42.i, %wide.trip.count44.i
  br i1 %exitcond45.not.i, label %.preheader32.i, label %iter.check, !llvm.loop !161

iter.check251:                                    ; preds = %._crit_edge37.i, %.preheader.lr.ph.split.i
  %indvars.iv51.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %indvars.iv.next52.i, %._crit_edge37.i ] ; 5 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv51.i
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !60 ; 6 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv51.i
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !60 ; 6 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv51.i
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !60 ; 6 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv51.i
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !60 ; 6 uses
  br i1 %min.iters.check236, label %vec.epilog.scalar.ph252.preheader, label %vector.memcheck227

vector.memcheck227:                               ; preds = %iter.check251
  %i.ct = ptrtoaddr ptr %i.cs to i64              ; 3 uses
  %i.cu = ptrtoaddr ptr %i.cq to i64              ; 2 uses
  %i.cv = ptrtoaddr ptr %i.co to i64              ; 3 uses
  %i.cw = ptrtoaddr ptr %i.cm to i64              ; 2 uses
  %i.cx = sub i64 %i.cv, %i.ct
  %diff.check228 = icmp ugt i64 %i.cx, -32
  %i.cy = sub i64 %i.cw, %i.cv
  %diff.check229 = icmp ugt i64 %i.cy, -32
  %conflict.rdx = or i1 %diff.check228, %diff.check229
  %i.cz = sub i64 %i.cv, %i.cu
  %diff.check230 = icmp ugt i64 %i.cz, -32
  %conflict.rdx231 = or i1 %conflict.rdx, %diff.check230
  %i.da = sub i64 %i.cw, %i.ct
  %diff.check232 = icmp ugt i64 %i.da, -32
  %conflict.rdx233 = or i1 %conflict.rdx231, %diff.check232
  %i.db = sub i64 %i.cu, %i.ct
  %diff.check234 = icmp ugt i64 %i.db, -32
  %conflict.rdx235 = or i1 %conflict.rdx233, %diff.check234
  br i1 %conflict.rdx235, label %vec.epilog.scalar.ph252.preheader, label %vector.main.loop.iter.check237

vector.main.loop.iter.check237:                   ; preds = %vector.memcheck227
  br i1 %min.iters.check238, label %vec.epilog.ph255, label %vector.body241

vector.body241:                                   ; preds = %vector.main.loop.iter.check237, %vector.body241
  %index242 = phi i64 [ %index.next247, %vector.body241 ], [ 0, %vector.main.loop.iter.check237 ] ; 5 uses
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %index242 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %wide.load243 = load <8 x i16>, ptr %i.dc, align 2, !tbaa !61
  %wide.load244 = load <8 x i16>, ptr %i.dd, align 2, !tbaa !61
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %index242 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store <8 x i16> %wide.load243, ptr %i.de, align 2, !tbaa !61
  store <8 x i16> %wide.load244, ptr %i.df, align 2, !tbaa !61
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.cq, i64 %index242 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %wide.load245 = load <8 x i16>, ptr %i.dg, align 2, !tbaa !61
  %wide.load246 = load <8 x i16>, ptr %i.dh, align 2, !tbaa !61
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %index242 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store <8 x i16> %wide.load245, ptr %i.di, align 2, !tbaa !61
  store <8 x i16> %wide.load246, ptr %i.dj, align 2, !tbaa !61
  %index.next247 = add nuw i64 %index242, 16      ; 2 uses
  %i.dk = icmp eq i64 %index.next247, %n.vec240
  br i1 %i.dk, label %middle.block248, label %vector.body241, !llvm.loop !162

middle.block248:                                  ; preds = %vector.body241
  br i1 %cmp.n249, label %._crit_edge37.i, label %vec.epilog.iter.check253

vec.epilog.iter.check253:                         ; preds = %middle.block248
  br i1 %min.epilog.iters.check254, label %vec.epilog.scalar.ph252.preheader, label %vec.epilog.ph255, !prof !71

vec.epilog.ph255:                                 ; preds = %vector.main.loop.iter.check237, %vec.epilog.iter.check253
  %vec.epilog.resume.val250 = phi i64 [ %n.vec240, %vec.epilog.iter.check253 ], [ 0, %vector.main.loop.iter.check237 ]
  br label %vec.epilog.vector.body257

vec.epilog.vector.body257:                        ; preds = %vec.epilog.vector.body257, %vec.epilog.ph255
  %index258 = phi i64 [ %vec.epilog.resume.val250, %vec.epilog.ph255 ], [ %index.next261, %vec.epilog.vector.body257 ] ; 5 uses
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %index258
  %wide.load259 = load <4 x i16>, ptr %i.dl, align 2, !tbaa !61
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %index258
  store <4 x i16> %wide.load259, ptr %i.dm, align 2, !tbaa !61
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.cq, i64 %index258
  %wide.load260 = load <4 x i16>, ptr %i.dn, align 2, !tbaa !61
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %index258
  store <4 x i16> %wide.load260, ptr %i.do, align 2, !tbaa !61
  %index.next261 = add nuw i64 %index258, 4       ; 2 uses
  %i.dp = icmp eq i64 %index.next261, %n.vec256
  br i1 %i.dp, label %vec.epilog.middle.block262, label %vec.epilog.vector.body257, !llvm.loop !163

vec.epilog.middle.block262:                       ; preds = %vec.epilog.vector.body257
  br i1 %cmp.n263, label %._crit_edge37.i, label %vec.epilog.scalar.ph252.preheader

vec.epilog.scalar.ph252.preheader:                ; preds = %vector.memcheck227, %iter.check251, %vec.epilog.iter.check253, %vec.epilog.middle.block262
  %indvars.iv46.i.ph = phi i64 [ 0, %iter.check251 ], [ 0, %vector.memcheck227 ], [ %n.vec240, %vec.epilog.iter.check253 ], [ %n.vec256, %vec.epilog.middle.block262 ] ; 7 uses
  br i1 %lcmp.mod269.not, label %vec.epilog.scalar.ph252.prol.loopexit, label %vec.epilog.scalar.ph252.prol

vec.epilog.scalar.ph252.prol:                     ; preds = %vec.epilog.scalar.ph252.preheader
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %indvars.iv46.i.ph
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !61
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %indvars.iv46.i.ph
  store i16 %i.dr, ptr %i.ds, align 2, !tbaa !61
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.cq, i64 %indvars.iv46.i.ph
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !61
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %indvars.iv46.i.ph
  store i16 %i.du, ptr %i.dv, align 2, !tbaa !61
  %indvars.iv.next47.i.prol = or disjoint i64 %indvars.iv46.i.ph, 1
  br label %vec.epilog.scalar.ph252.prol.loopexit

vec.epilog.scalar.ph252.prol.loopexit:            ; preds = %vec.epilog.scalar.ph252.prol, %vec.epilog.scalar.ph252.preheader
  %indvars.iv46.i.unr = phi i64 [ %indvars.iv46.i.ph, %vec.epilog.scalar.ph252.preheader ], [ %indvars.iv.next47.i.prol, %vec.epilog.scalar.ph252.prol ]
  %i.dw = icmp eq i64 %indvars.iv46.i.ph, %i.by
  br i1 %i.dw, label %._crit_edge37.i, label %vec.epilog.scalar.ph252

vec.epilog.scalar.ph252:                          ; preds = %vec.epilog.scalar.ph252.prol.loopexit, %vec.epilog.scalar.ph252
  %indvars.iv46.i = phi i64 [ %indvars.iv.next47.i.1, %vec.epilog.scalar.ph252 ], [ %indvars.iv46.i.unr, %vec.epilog.scalar.ph252.prol.loopexit ] ; 6 uses
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %indvars.iv46.i
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !61
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %indvars.iv46.i
  store i16 %i.dy, ptr %i.dz, align 2, !tbaa !61
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.cq, i64 %indvars.iv46.i
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !61
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %indvars.iv46.i
  store i16 %i.eb, ptr %i.ec, align 2, !tbaa !61
  %indvars.iv.next47.i = add nuw nsw i64 %indvars.iv46.i, 1 ; 4 uses
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %indvars.iv.next47.i
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !61
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %indvars.iv.next47.i
  store i16 %i.ee, ptr %i.ef, align 2, !tbaa !61
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.cq, i64 %indvars.iv.next47.i
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !61
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %indvars.iv.next47.i
  store i16 %i.eh, ptr %i.ei, align 2, !tbaa !61
  %indvars.iv.next47.i.1 = add nuw nsw i64 %indvars.iv46.i, 2 ; 2 uses
  %exitcond50.not.i.1 = icmp eq i64 %indvars.iv.next47.i.1, %wide.trip.count49.i
  br i1 %exitcond50.not.i.1, label %._crit_edge37.i, label %vec.epilog.scalar.ph252, !llvm.loop !164

._crit_edge37.i:                                  ; preds = %vec.epilog.scalar.ph252.prol.loopexit, %vec.epilog.scalar.ph252, %vec.epilog.middle.block262, %middle.block248
  %indvars.iv.next52.i = add nuw nsw i64 %indvars.iv51.i, 1 ; 2 uses
  %exitcond55.not.i = icmp eq i64 %indvars.iv.next52.i, %wide.trip.count54.i
  br i1 %exitcond55.not.i, label %CopyImgData.exit, label %iter.check251, !llvm.loop !165

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 5932
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !16
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 5936
  %i.em = load i32, ptr %i.el, align 8, !tbaa !30
  %i.en = mul nsw i32 %i.em, %i.ek
  %i.eo = sdiv i32 %i.en, 8
  %i.ep = add nsw i32 %i.eo, 16
  %i.eq = sext i32 %i.ep to i64
  %i.er = shl nsw i64 %i.eq, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink = phi i64 [ %i.er, %bb.d ], [ 32, %bb.c ]
  %i.es = tail call noalias ptr @malloc(i64 noundef %.sink) #24 ; 29 uses
  store ptr %2, ptr @erc_img, align 8, !tbaa !14
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 316908
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !156 ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 316908
  store i32 %i.eu, ptr %i.ev, align 4, !tbaa !156
  %i.ew = load i32, ptr %i.c, align 8, !tbaa !154 ; 2 uses
  store i32 %i.ew, ptr %i.e, align 8, !tbaa !154
  %i.ex = udiv i32 %i.ew, %i.eu                   ; 2 uses
  %i.ey = load i32, ptr %i.f, align 4, !tbaa !106
  %i.ez = icmp eq i32 %i.ey, 1                    ; 2 uses
  %i.fa = load i32, ptr %i.i, align 8, !tbaa !107 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 5592
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !166
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !167 ; 2 uses
  br i1 %i.ez, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @init_lists_for_non_reference_loss(i32 noundef %i.fa, i32 noundef %i.fe)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @init_lists(i32 noundef %i.fa, i32 noundef %i.fe) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ff = shl nsw i32 %i.ex, 2
  %i.fg = icmp sgt i32 %i.ex, 0
  br i1 %i.fg, label %.lr.ph198, label %._crit_edge199.split

.lr.ph198:                                        ; preds = %bb.h
  %i.fh = icmp sgt i32 %i.eu, 0
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 316976
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 316952
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 316976
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 316952
  %i.fm = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.fn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.fp = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.fq = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.fr = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.fs = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.ft = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.fu = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.fv = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.fw = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.fx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.fy = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.fz = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ga = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.gb = getelementptr inbounds nuw i8, ptr %i.es, i64 2
  %i.gc = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %i.gd = getelementptr inbounds nuw i8, ptr %i.es, i64 6
  %i.ge = getelementptr nuw i8, ptr %i.es, i64 8  ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.es, i64 10
  %i.gg = getelementptr inbounds nuw i8, ptr %i.es, i64 12
  %i.gh = getelementptr inbounds nuw i8, ptr %i.es, i64 14
  %i.gi = getelementptr nuw i8, ptr %i.es, i64 16 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.es, i64 18
  %i.gk = getelementptr inbounds nuw i8, ptr %i.es, i64 20
  %i.gl = getelementptr inbounds nuw i8, ptr %i.es, i64 22
  %i.gm = getelementptr nuw i8, ptr %i.es, i64 24 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.es, i64 26
  %i.go = getelementptr inbounds nuw i8, ptr %i.es, i64 28
  %i.gp = getelementptr inbounds nuw i8, ptr %i.es, i64 30
  %i.gq = getelementptr nuw i8, ptr %i.es, i64 32 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 316920
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 316928
  br i1 %i.fh, label %.lr.ph.preheader, label %._crit_edge199.split

.lr.ph.preheader:                                 ; preds = %.lr.ph198
  %i.gt = shl i32 %i.eu, 2
  %smax = tail call i32 @llvm.smax.i32(i32 %i.gt, i32 1)
  %i.gu = zext nneg i32 %i.ff to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  %i.gv = getelementptr nuw i8, ptr %i.es, i64 34
  %i.gw = getelementptr nuw i8, ptr %i.es, i64 36
  %i.gx = getelementptr nuw i8, ptr %i.es, i64 38
  %i.gy = getelementptr nuw i8, ptr %i.es, i64 40
  %i.gz = getelementptr nuw i8, ptr %i.es, i64 42
  %i.ha = getelementptr nuw i8, ptr %i.es, i64 44
  %i.hb = getelementptr nuw i8, ptr %i.es, i64 46
  %scevgep208.1 = getelementptr nuw i8, ptr %i.es, i64 36
  %scevgep208.1212 = getelementptr nuw i8, ptr %i.es, i64 40
  %scevgep208.1.1 = getelementptr nuw i8, ptr %i.es, i64 44
  %3 = insertelement <2 x i1> poison, i1 %i.ez, i64 0
  %4 = shufflevector <2 x i1> %3, <2 x i1> poison, <2 x i32> zeroinitializer
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 9 uses
  %i.hc = shl nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.hd = shl i32 %indvars.iv.tr, 2               ; 2 uses
  %i.he = zext i32 %i.hd to i64                   ; 4 uses
  %i.hf = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  %indvars.iv.tr219 = trunc i64 %indvars.iv to i32
  %i.hg = shl i32 %indvars.iv.tr219, 4
  %i.hh = or disjoint i64 %i.hc, 1                ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %.loopexit ] ; 9 uses
  %i.hi = shl nuw nsw i64 %indvar, 2              ; 5 uses
  %i.hj = trunc nuw nsw i64 %indvar to i32        ; 3 uses
  %i.hk = shl i64 %indvar, 3
  %i.hl = and i64 %i.hk, 8589934584               ; 4 uses
  %i.hm = load ptr, ptr %i.fi, align 8, !tbaa !170
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !171
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %indvars.iv
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !65
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %indvar
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !60
  %i.hs = load ptr, ptr %i.fj, align 8, !tbaa !172
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !173
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %indvars.iv
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !174
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 %indvar
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !175
  %narrow = call i8 @llvm.smax.i8(i8 %i.hx, i8 0) ; 3 uses
  %spec.select = zext nneg i8 %narrow to i32
  %i.hy = load ptr, ptr %i.fk, align 8, !tbaa !170
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !171
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %indvars.iv
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !65
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %indvar
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !60
  %5 = load <2 x i16>, ptr %i.hr, align 2, !tbaa !61 ; 2 uses
  %6 = sdiv <2 x i16> %5, splat (i16 2)
  %7 = select <2 x i1> %4, <2 x i16> %6, <2 x i16> %5 ; 3 uses
  %8 = extractelement <2 x i16> %7, i64 0
  %9 = sext i16 %8 to i32                         ; 3 uses
  %10 = extractelement <2 x i16> %7, i64 1
  %11 = sext i16 %10 to i32                       ; 3 uses
  store <2 x i16> %7, ptr %i.id, align 2, !tbaa !61
  %i.ie = load ptr, ptr %i.fl, align 8, !tbaa !172
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !173
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !174
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 %indvar
  store i8 %narrow, ptr %i.ii, align 1, !tbaa !175
  %i.ij = or i32 %i.hj, %i.hf
  %i.ik = and i32 %i.ij, 3
  %or.cond = icmp eq i32 %i.ik, 0
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.il = load i32, ptr %i.b, align 4, !tbaa !153
  %i.im = add i32 %i.il, 1
  store i32 %i.im, ptr %i.b, align 4, !tbaa !153
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.in = load ptr, ptr @erc_img, align 8, !tbaa !14 ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.io = load ptr, ptr @dec_picture, align 8, !tbaa !50
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 317044
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !63
  %i.ir = getelementptr inbounds nuw i8, ptr %i.in, i64 72
  store i32 %i.hj, ptr %i.ir, align 8, !tbaa !176
  %i.is = getelementptr inbounds nuw i8, ptr %i.in, i64 68
  store i32 %i.hf, ptr %i.is, align 4, !tbaa !177
  %i.it = getelementptr inbounds nuw i8, ptr %i.in, i64 76
  store i32 %i.hd, ptr %i.it, align 4, !tbaa !178
  %i.iu = getelementptr inbounds nuw i8, ptr %i.in, i64 5936 ; 2 uses
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !30
  %i.iw = mul nsw i32 %i.iv, %i.hf
  %i.ix = sdiv i32 %i.iw, 4
  %i.iy = getelementptr inbounds nuw i8, ptr %i.in, i64 88 ; 2 uses
  store i32 %i.ix, ptr %i.iy, align 8, !tbaa !179
  %i.iz = getelementptr inbounds nuw i8, ptr %i.in, i64 92
  %i.ja = trunc nsw i64 %i.hi to i32
  store i32 %i.ja, ptr %i.iz, align 4, !tbaa !180
  %i.jb = getelementptr inbounds nuw i8, ptr %i.in, i64 5932 ; 2 uses
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !16
  %i.jd = mul nsw i32 %i.jc, %i.hj
  %i.je = sdiv i32 %i.jd, 4
  %i.jf = getelementptr inbounds nuw i8, ptr %i.in, i64 96 ; 2 uses
  store i32 %i.je, ptr %i.jf, align 8, !tbaa !181
  %indvar.tr = trunc i64 %indvar to i32
  %i.jg = shl i32 %indvar.tr, 4
  %i.jh = add nsw i32 %i.jg, %9
  %i.ji = add nsw i32 %i.hg, %11
  %i.jj = load ptr, ptr @listX, align 16, !tbaa !48
  call void @get_block(i32 noundef %spec.select, ptr noundef %i.jj, i32 noundef %i.jh, i32 noundef %i.ji, ptr noundef %i.in, ptr noundef nonnull %i.a) #23
  %i.jk = getelementptr inbounds nuw i8, ptr %i.in, i64 104 ; 3 uses
  %i.jl = load i32, ptr %i.a, align 16, !tbaa !4
  %i.jm = trunc i32 %i.jl to i16                  ; 2 uses
  store i16 %i.jm, ptr %i.jk, align 8, !tbaa !61
  %i.jn = load i32, ptr %i.fm, align 4, !tbaa !4
  %i.jo = trunc i32 %i.jn to i16                  ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.in, i64 106 ; 3 uses
  store i16 %i.jo, ptr %i.jp, align 2, !tbaa !61
  %i.jq = load i32, ptr %i.fn, align 8, !tbaa !4
  %i.jr = trunc i32 %i.jq to i16                  ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.in, i64 108
  store i16 %i.jr, ptr %i.js, align 4, !tbaa !61
  %i.jt = load i32, ptr %i.fo, align 4, !tbaa !4
  %i.ju = trunc i32 %i.jt to i16                  ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.in, i64 110
  store i16 %i.ju, ptr %i.jv, align 2, !tbaa !61
  %i.jw = getelementptr inbounds nuw i8, ptr %i.in, i64 136 ; 3 uses
  %i.jx = load i32, ptr %i.fp, align 16, !tbaa !4
  %i.jy = trunc i32 %i.jx to i16                  ; 2 uses
  store i16 %i.jy, ptr %i.jw, align 8, !tbaa !61
  %i.jz = load i32, ptr %i.fq, align 4, !tbaa !4
  %i.ka = trunc i32 %i.jz to i16                  ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.in, i64 138 ; 3 uses
  store i16 %i.ka, ptr %i.kb, align 2, !tbaa !61
  %i.kc = load i32, ptr %i.fr, align 8, !tbaa !4
  %i.kd = trunc i32 %i.kc to i16                  ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.in, i64 140
  store i16 %i.kd, ptr %i.ke, align 4, !tbaa !61
  %i.kf = load i32, ptr %i.fs, align 4, !tbaa !4
  %i.kg = trunc i32 %i.kf to i16                  ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.in, i64 142
  store i16 %i.kg, ptr %i.kh, align 2, !tbaa !61
  %i.ki = getelementptr inbounds nuw i8, ptr %i.in, i64 168
  %i.kj = load i32, ptr %i.ft, align 16, !tbaa !4
  %i.kk = trunc i32 %i.kj to i16                  ; 2 uses
  store i16 %i.kk, ptr %i.ki, align 8, !tbaa !61
  %i.kl = load i32, ptr %i.fu, align 4, !tbaa !4
  %i.km = trunc i32 %i.kl to i16                  ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.in, i64 170
  store i16 %i.km, ptr %i.kn, align 2, !tbaa !61
  %i.ko = load i32, ptr %i.fv, align 8, !tbaa !4
  %i.kp = trunc i32 %i.ko to i16                  ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.in, i64 172
  store i16 %i.kp, ptr %i.kq, align 4, !tbaa !61
  %i.kr = load i32, ptr %i.fw, align 4, !tbaa !4
  %i.ks = trunc i32 %i.kr to i16                  ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.in, i64 174
  store i16 %i.ks, ptr %i.kt, align 2, !tbaa !61
  %i.ku = getelementptr inbounds nuw i8, ptr %i.in, i64 200
  %i.kv = load i32, ptr %i.fx, align 16, !tbaa !4
  %i.kw = trunc i32 %i.kv to i16                  ; 2 uses
  store i16 %i.kw, ptr %i.ku, align 8, !tbaa !61
  %i.kx = load i32, ptr %i.fy, align 4, !tbaa !4
  %i.ky = trunc i32 %i.kx to i16                  ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.in, i64 202
  store i16 %i.ky, ptr %i.kz, align 2, !tbaa !61
  %i.la = load i32, ptr %i.fz, align 8, !tbaa !4
  %i.lb = trunc i32 %i.la to i16                  ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.in, i64 204
  store i16 %i.lb, ptr %i.lc, align 4, !tbaa !61
  %i.ld = load i32, ptr %i.ga, align 4, !tbaa !4
  %i.le = trunc i32 %i.ld to i16                  ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.in, i64 206
  store i16 %i.le, ptr %i.lf, align 2, !tbaa !61
  store i16 %i.jm, ptr %i.es, align 2, !tbaa !61
  store i16 %i.jo, ptr %i.gb, align 2, !tbaa !61
  store i16 %i.jr, ptr %i.gc, align 2, !tbaa !61
  store i16 %i.ju, ptr %i.gd, align 2, !tbaa !61
  store i16 %i.jy, ptr %i.ge, align 2, !tbaa !61
  store i16 %i.ka, ptr %i.gf, align 2, !tbaa !61
  store i16 %i.kd, ptr %i.gg, align 2, !tbaa !61
  store i16 %i.kg, ptr %i.gh, align 2, !tbaa !61
  store i16 %i.kk, ptr %i.gi, align 2, !tbaa !61
  store i16 %i.km, ptr %i.gj, align 2, !tbaa !61
  store i16 %i.kp, ptr %i.gk, align 2, !tbaa !61
  store i16 %i.ks, ptr %i.gl, align 2, !tbaa !61
  store i16 %i.kw, ptr %i.gm, align 2, !tbaa !61
  store i16 %i.ky, ptr %i.gn, align 2, !tbaa !61
  store i16 %i.lb, ptr %i.go, align 2, !tbaa !61
  store i16 %i.le, ptr %i.gp, align 2, !tbaa !61
  %i.lg = load ptr, ptr @dec_picture, align 8, !tbaa !50 ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 317044 ; 2 uses
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !63
  %.not.i = icmp eq i32 %i.li, 0
  br i1 %.not.i, label %buildPredblockRegionYUV.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.k
  %i.lj = add nsw i32 %i.iq, -1
  %i.lk = load i32, ptr %i.jb, align 4, !tbaa !16
  %i.ll = sdiv i32 64, %i.lk                      ; 10 uses
  %i.lm = add nsw i32 %i.ll, -1                   ; 4 uses
  %i.ln = load i32, ptr %i.iu, align 8, !tbaa !30
  %i.lo = sdiv i32 64, %i.ln                      ; 10 uses
  %i.lp = add nsw i32 %i.lo, -1                   ; 4 uses
  %i.lq = mul nsw i32 %i.lo, %i.ll                ; 9 uses
  %i.lr = ashr i32 %i.lq, 1                       ; 8 uses
  %i.ls = sext i32 %i.lj to i64                   ; 2 uses
  %i.lt = getelementptr inbounds [32 x i8], ptr @subblk_offset_y, i64 %i.ls
  %i.lu = load i8, ptr %i.lt, align 16, !tbaa !175
  %i.lv = zext i8 %i.lu to i32
  %i.lw = load i32, ptr %i.iy, align 8, !tbaa !179
  %i.lx = add nsw i32 %i.lw, %i.lv                ; 2 uses
  %i.ly = getelementptr inbounds [32 x i8], ptr @subblk_offset_x, i64 %i.ls
  %i.lz = load i8, ptr %i.ly, align 16, !tbaa !175
  %i.ma = zext i8 %i.lz to i32
  %i.mb = load i32, ptr %i.jf, align 8, !tbaa !181
  %i.mc = add nsw i32 %i.mb, %i.ma                ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.lg, i64 316872
  %i.me = load i32, ptr %i.md, align 8, !tbaa !182
  %i.mf = add nsw i32 %i.me, -1                   ; 4 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lg, i64 316876
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !183
  %i.mi = add nsw i32 %i.mh, -1                   ; 4 uses
  %i.mj = load ptr, ptr @listX, align 16, !tbaa !48
  %i.mk = zext nneg i8 %narrow to i64
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.mj, i64 %i.mk
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !50
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 316928
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !64 ; 2 uses
  %i.mp = mul i32 %i.mc, %i.ll
  %i.mq = add i32 %i.mp, %9                       ; 3 uses
  %i.mr = mul i32 %i.lx, %i.lo
  %i.ms = add i32 %i.mr, %11                      ; 3 uses
  %i.mt = sdiv i32 %i.ms, %i.lo
  %i.mu = call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.mt, i32 0)
  %i.mv = call noundef i32 @llvm.smin.i32(i32 %i.mu, i32 range(i32 -2147483648, 2147483647) %i.mi)
  %i.mw = add i32 %i.ms, %i.lp
  %i.mx = sdiv i32 %i.mw, %i.lo
  %i.my = call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.mx, i32 0)
  %i.mz = call noundef i32 @llvm.smin.i32(i32 %i.my, i32 range(i32 -2147483648, 2147483647) %i.mi)
  %i.na = and i32 %i.ms, %i.lp                    ; 5 uses
  %i.nb = sub nsw i32 %i.lo, %i.na                ; 4 uses
  %i.nc = sext i32 %i.mv to i64                   ; 2 uses
  %i.nd = sext i32 %i.mz to i64                   ; 2 uses
  %i.ne = sdiv i32 %i.mq, %i.ll
  %i.nf = call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.ne, i32 0)
  %i.ng = call noundef i32 @llvm.smin.i32(i32 %i.nf, i32 range(i32 -2147483648, 2147483647) %i.mf)
  %i.nh = add i32 %i.mq, %i.lm
  %i.ni = sdiv i32 %i.nh, %i.ll
  %i.nj = call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.ni, i32 0)
  %i.nk = call noundef i32 @llvm.smin.i32(i32 %i.nj, i32 range(i32 -2147483648, 2147483647) %i.mf)
  %i.nl = and i32 %i.mq, %i.lm                    ; 5 uses
  %i.nm = sub nsw i32 %i.ll, %i.nl                ; 4 uses
  %i.nn = sext i32 %i.ng to i64                   ; 8 uses
  %i.no = sext i32 %i.nk to i64                   ; 8 uses
  %i.np = add i32 %i.mc, 1
  %i.nq = mul i32 %i.np, %i.ll
  %i.nr = add i32 %i.nq, %9                       ; 3 uses
  %i.ns = sdiv i32 %i.nr, %i.ll
  %i.nt = call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.ns, i32 0)
  %i.nu = call noundef i32 @llvm.smin.i32(i32 %i.nt, i32 range(i32 -2147483648, 2147483647) %i.mf)
  %i.nv = add i32 %i.nr, %i.lm
  %i.nw = sdiv i32 %i.nv, %i.ll
  %i.nx = call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.nw, i32 0)
  %i.ny = call noundef i32 @llvm.smin.i32(i32 %i.nx, i32 range(i32 -2147483648, 2147483647) %i.mf)
  %i.nz = and i32 %i.nr, %i.lm                    ; 5 uses
  %i.oa = sub nsw i32 %i.ll, %i.nz                ; 4 uses
  %i.ob = sext i32 %i.nu to i64                   ; 8 uses
  %i.oc = sext i32 %i.ny to i64                   ; 8 uses
  %i.od = add i32 %i.lx, 1
  %i.oe = mul i32 %i.od, %i.lo
  %i.of = add i32 %i.oe, %11                      ; 3 uses
  %i.og = sdiv i32 %i.of, %i.lo
  %i.oh = call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.og, i32 0)
  %i.oi = call noundef i32 @llvm.smin.i32(i32 %i.oh, i32 range(i32 -2147483648, 2147483647) %i.mi)
  %i.oj = add i32 %i.of, %i.lp
  %i.ok = sdiv i32 %i.oj, %i.lo
  %i.ol = call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.ok, i32 0)
  %i.om = call noundef i32 @llvm.smin.i32(i32 %i.ol, i32 range(i32 -2147483648, 2147483647) %i.mi)
  %i.on = and i32 %i.of, %i.lp                    ; 5 uses
  %i.oo = sub nsw i32 %i.lo, %i.on                ; 4 uses
  %i.op = sext i32 %i.oi to i64                   ; 2 uses
  %i.oq = sext i32 %i.om to i64                   ; 2 uses
  %factor.op.mul = mul i32 %i.nm, %i.na           ; 2 uses
  %factor.op.mul174 = mul i32 %i.nl, %i.na        ; 2 uses
  %factor.op.mul175 = mul i32 %i.nm, %i.nb        ; 2 uses
  %factor.op.mul176 = mul i32 %i.nl, %i.nb        ; 2 uses
  %factor.op.mul177 = mul i32 %i.oa, %i.na        ; 2 uses
  %factor.op.mul178 = mul i32 %i.nz, %i.na        ; 2 uses
  %factor.op.mul179 = mul i32 %i.oa, %i.nb        ; 2 uses
  %factor.op.mul180 = mul i32 %i.nz, %i.nb        ; 2 uses
  %factor.op.mul181 = mul i32 %i.nm, %i.on        ; 2 uses
  %factor.op.mul182 = mul i32 %i.nl, %i.on        ; 2 uses
  %factor.op.mul183 = mul i32 %i.nm, %i.oo        ; 2 uses
  %factor.op.mul184 = mul i32 %i.nl, %i.oo        ; 2 uses
  %factor.op.mul185 = mul i32 %i.oa, %i.on        ; 2 uses
  %factor.op.mul186 = mul i32 %i.nz, %i.on        ; 2 uses
  %factor.op.mul187 = mul i32 %i.oa, %i.oo        ; 2 uses
  %factor.op.mul188 = mul i32 %i.nz, %i.oo        ; 2 uses
  %i.or = load ptr, ptr %i.mo, align 8, !tbaa !65 ; 4 uses
  %i.os = getelementptr inbounds [8 x i8], ptr %i.or, i64 %i.nc
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !60 ; 4 uses
  %i.ou = getelementptr inbounds [8 x i8], ptr %i.or, i64 %i.nd
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !60 ; 4 uses
  %i.ow = getelementptr inbounds [2 x i8], ptr %i.ot, i64 %i.nn
  %i.ox = load i16, ptr %i.ow, align 2, !tbaa !61
  %i.oy = zext i16 %i.ox to i32
  %.reass183.i.reass = mul i32 %factor.op.mul175, %i.oy
  %i.oz = getelementptr inbounds [2 x i8], ptr %i.ot, i64 %i.no
  %i.pa = load i16, ptr %i.oz, align 2, !tbaa !61
  %i.pb = zext i16 %i.pa to i32
  %.reass185.i.reass = mul i32 %factor.op.mul176, %i.pb
  %i.pc = getelementptr inbounds [2 x i8], ptr %i.ov, i64 %i.nn
  %i.pd = load i16, ptr %i.pc, align 2, !tbaa !61
  %i.pe = zext i16 %i.pd to i32
  %.reass.i.reass = mul i32 %factor.op.mul, %i.pe
  %i.pf = getelementptr inbounds [2 x i8], ptr %i.ov, i64 %i.no
  %i.pg = load i16, ptr %i.pf, align 2, !tbaa !61
  %i.ph = zext i16 %i.pg to i32
  %.reass181.i.reass = mul i32 %factor.op.mul174, %i.ph
  %reass.add = add i32 %.reass181.i.reass, %.reass.i.reass
  %reass.add158 = add i32 %.reass185.i.reass, %.reass183.i.reass
  %i.pi = add i32 %reass.add158, %i.lr
  %i.pj = add i32 %i.pi, %reass.add
  %i.pk = sdiv i32 %i.pj, %i.lq
  %i.pl = trunc i32 %i.pk to i16                  ; 2 uses
  store i16 %i.pl, ptr %i.jk, align 8, !tbaa !61
  %i.pm = getelementptr inbounds [2 x i8], ptr %i.ot, i64 %i.ob
  %i.pn = load i16, ptr %i.pm, align 2, !tbaa !61
  %i.po = zext i16 %i.pn to i32
  %.reass191.i.reass = mul i32 %factor.op.mul179, %i.po
  %i.pp = getelementptr inbounds [2 x i8], ptr %i.ot, i64 %i.oc
  %i.pq = load i16, ptr %i.pp, align 2, !tbaa !61
  %i.pr = zext i16 %i.pq to i32
  %.reass193.i.reass = mul i32 %factor.op.mul180, %i.pr
  %i.ps = getelementptr inbounds [2 x i8], ptr %i.ov, i64 %i.ob
  %i.pt = load i16, ptr %i.ps, align 2, !tbaa !61
  %i.pu = zext i16 %i.pt to i32
  %.reass187.i.reass = mul i32 %factor.op.mul177, %i.pu
  %i.pv = getelementptr inbounds [2 x i8], ptr %i.ov, i64 %i.oc
  %i.pw = load i16, ptr %i.pv, align 2, !tbaa !61
  %i.px = zext i16 %i.pw to i32
  %.reass189.i.reass = mul i32 %factor.op.mul178, %i.px
  %reass.add160 = add i32 %.reass189.i.reass, %.reass187.i.reass
  %reass.add162 = add i32 %.reass193.i.reass, %.reass191.i.reass
  %i.py = add i32 %reass.add162, %i.lr
  %i.pz = add i32 %i.py, %reass.add160
  %i.qa = sdiv i32 %i.pz, %i.lq
  %i.qb = trunc i32 %i.qa to i16                  ; 2 uses
  store i16 %i.qb, ptr %i.jp, align 2, !tbaa !61
  %i.qc = getelementptr inbounds [8 x i8], ptr %i.or, i64 %i.op
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !60 ; 4 uses
  %i.qe = getelementptr inbounds [8 x i8], ptr %i.or, i64 %i.oq
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !60 ; 4 uses
  %i.qg = getelementptr inbounds [2 x i8], ptr %i.qd, i64 %i.nn
  %i.qh = load i16, ptr %i.qg, align 2, !tbaa !61
  %i.qi = zext i16 %i.qh to i32
  %.reass199.i.reass = mul i32 %factor.op.mul183, %i.qi
  %i.qj = getelementptr inbounds [2 x i8], ptr %i.qd, i64 %i.no
  %i.qk = load i16, ptr %i.qj, align 2, !tbaa !61
  %i.ql = zext i16 %i.qk to i32
  %.reass201.i.reass = mul i32 %factor.op.mul184, %i.ql
  %i.qm = getelementptr inbounds [2 x i8], ptr %i.qf, i64 %i.nn
  %i.qn = load i16, ptr %i.qm, align 2, !tbaa !61
  %i.qo = zext i16 %i.qn to i32
  %.reass195.i.reass = mul i32 %factor.op.mul181, %i.qo
  %i.qp = getelementptr inbounds [2 x i8], ptr %i.qf, i64 %i.no
  %i.qq = load i16, ptr %i.qp, align 2, !tbaa !61
  %i.qr = zext i16 %i.qq to i32
  %.reass197.i.reass = mul i32 %factor.op.mul182, %i.qr
  %reass.add164 = add i32 %.reass197.i.reass, %.reass195.i.reass
  %reass.add166 = add i32 %.reass201.i.reass, %.reass199.i.reass
  %i.qs = add i32 %reass.add166, %i.lr
  %i.qt = add i32 %i.qs, %reass.add164
  %i.qu = sdiv i32 %i.qt, %i.lq
  %i.qv = trunc i32 %i.qu to i16                  ; 2 uses
  store i16 %i.qv, ptr %i.jw, align 8, !tbaa !61
  %i.qw = getelementptr inbounds [2 x i8], ptr %i.qd, i64 %i.ob
  %i.qx = load i16, ptr %i.qw, align 2, !tbaa !61
  %i.qy = zext i16 %i.qx to i32
  %.reass207.i.reass = mul i32 %factor.op.mul187, %i.qy
  %i.qz = getelementptr inbounds [2 x i8], ptr %i.qd, i64 %i.oc
  %i.ra = load i16, ptr %i.qz, align 2, !tbaa !61
  %i.rb = zext i16 %i.ra to i32
  %.reass209.i.reass = mul i32 %factor.op.mul188, %i.rb
  %i.rc = getelementptr inbounds [2 x i8], ptr %i.qf, i64 %i.ob
  %i.rd = load i16, ptr %i.rc, align 2, !tbaa !61
  %i.re = zext i16 %i.rd to i32
  %.reass203.i.reass = mul i32 %factor.op.mul185, %i.re
  %i.rf = getelementptr inbounds [2 x i8], ptr %i.qf, i64 %i.oc
  %i.rg = load i16, ptr %i.rf, align 2, !tbaa !61
  %i.rh = zext i16 %i.rg to i32
  %.reass205.i.reass = mul i32 %factor.op.mul186, %i.rh
  %reass.add168 = add i32 %.reass205.i.reass, %.reass203.i.reass
  %reass.add170 = add i32 %.reass209.i.reass, %.reass207.i.reass
  %i.ri = add i32 %reass.add170, %i.lr
  %i.rj = add i32 %i.ri, %reass.add168
  %i.rk = sdiv i32 %i.rj, %i.lq
  %i.rl = trunc i32 %i.rk to i16                  ; 2 uses
  store i16 %i.rl, ptr %i.kb, align 2, !tbaa !61
  store i16 %i.pl, ptr %i.gq, align 2, !tbaa !61
  store i16 %i.qb, ptr %i.gv, align 2, !tbaa !61
  store i16 %i.qv, ptr %i.gw, align 2, !tbaa !61
  store i16 %i.rl, ptr %i.gx, align 2, !tbaa !61
  %i.rm = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !65 ; 4 uses
  %i.ro = getelementptr inbounds [8 x i8], ptr %i.rn, i64 %i.nc
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !60 ; 4 uses
  %i.rq = getelementptr inbounds [8 x i8], ptr %i.rn, i64 %i.nd
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !60 ; 4 uses
  %i.rs = getelementptr inbounds [2 x i8], ptr %i.rp, i64 %i.nn
  %i.rt = load i16, ptr %i.rs, align 2, !tbaa !61
  %i.ru = zext i16 %i.rt to i32
  %.reass183.i.reass.1 = mul i32 %factor.op.mul175, %i.ru
  %i.rv = getelementptr inbounds [2 x i8], ptr %i.rp, i64 %i.no
  %i.rw = load i16, ptr %i.rv, align 2, !tbaa !61
  %i.rx = zext i16 %i.rw to i32
  %.reass185.i.reass.1 = mul i32 %factor.op.mul176, %i.rx
  %i.ry = getelementptr inbounds [2 x i8], ptr %i.rr, i64 %i.nn
  %i.rz = load i16, ptr %i.ry, align 2, !tbaa !61
  %i.sa = zext i16 %i.rz to i32
  %.reass.i.reass.1 = mul i32 %factor.op.mul, %i.sa
  %i.sb = getelementptr inbounds [2 x i8], ptr %i.rr, i64 %i.no
  %i.sc = load i16, ptr %i.sb, align 2, !tbaa !61
  %i.sd = zext i16 %i.sc to i32
  %.reass181.i.reass.1 = mul i32 %factor.op.mul174, %i.sd
  %reass.add.1 = add i32 %.reass181.i.reass.1, %.reass.i.reass.1
  %reass.add158.1 = add i32 %.reass185.i.reass.1, %.reass183.i.reass.1
  %i.se = add i32 %reass.add158.1, %i.lr
  %i.sf = add i32 %i.se, %reass.add.1
  %i.sg = sdiv i32 %i.sf, %i.lq
  %i.sh = trunc i32 %i.sg to i16                  ; 2 uses
  store i16 %i.sh, ptr %i.jk, align 8, !tbaa !61
  %i.si = getelementptr inbounds [2 x i8], ptr %i.rp, i64 %i.ob
  %i.sj = load i16, ptr %i.si, align 2, !tbaa !61
  %i.sk = zext i16 %i.sj to i32
  %.reass191.i.reass.1 = mul i32 %factor.op.mul179, %i.sk
  %i.sl = getelementptr inbounds [2 x i8], ptr %i.rp, i64 %i.oc
  %i.sm = load i16, ptr %i.sl, align 2, !tbaa !61
  %i.sn = zext i16 %i.sm to i32
  %.reass193.i.reass.1 = mul i32 %factor.op.mul180, %i.sn
  %i.so = getelementptr inbounds [2 x i8], ptr %i.rr, i64 %i.ob
  %i.sp = load i16, ptr %i.so, align 2, !tbaa !61
  %i.sq = zext i16 %i.sp to i32
  %.reass187.i.reass.1 = mul i32 %factor.op.mul177, %i.sq
  %i.sr = getelementptr inbounds [2 x i8], ptr %i.rr, i64 %i.oc
  %i.ss = load i16, ptr %i.sr, align 2, !tbaa !61
  %i.st = zext i16 %i.ss to i32
  %.reass189.i.reass.1 = mul i32 %factor.op.mul178, %i.st
  %reass.add160.1 = add i32 %.reass189.i.reass.1, %.reass187.i.reass.1
  %reass.add162.1 = add i32 %.reass193.i.reass.1, %.reass191.i.reass.1
  %i.su = add i32 %reass.add162.1, %i.lr
  %i.sv = add i32 %i.su, %reass.add160.1
  %i.sw = sdiv i32 %i.sv, %i.lq
  %i.sx = trunc i32 %i.sw to i16                  ; 2 uses
  store i16 %i.sx, ptr %i.jp, align 2, !tbaa !61
  %i.sy = getelementptr inbounds [8 x i8], ptr %i.rn, i64 %i.op
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !60 ; 4 uses
  %i.ta = getelementptr inbounds [8 x i8], ptr %i.rn, i64 %i.oq
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !60 ; 4 uses
  %i.tc = getelementptr inbounds [2 x i8], ptr %i.sz, i64 %i.nn
  %i.td = load i16, ptr %i.tc, align 2, !tbaa !61
  %i.te = zext i16 %i.td to i32
  %.reass199.i.reass.1 = mul i32 %factor.op.mul183, %i.te
  %i.tf = getelementptr inbounds [2 x i8], ptr %i.sz, i64 %i.no
  %i.tg = load i16, ptr %i.tf, align 2, !tbaa !61
  %i.th = zext i16 %i.tg to i32
  %.reass201.i.reass.1 = mul i32 %factor.op.mul184, %i.th
  %i.ti = getelementptr inbounds [2 x i8], ptr %i.tb, i64 %i.nn
  %i.tj = load i16, ptr %i.ti, align 2, !tbaa !61
  %i.tk = zext i16 %i.tj to i32
  %.reass195.i.reass.1 = mul i32 %factor.op.mul181, %i.tk
end_hunk_0
