Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/sp_int?download=true
inline.NumInlined: 293
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 57
loop-unroll.NumUnrolled: 75
begin_hunk_0_@_sp_div:bb.a
  %.2.lcssa.ph.i = trunc nuw i64 %.2.lcssa.ph.in.i to i16
  %i.bv = icmp ugt i16 %i.e, %.2.lcssa.ph.i
  br i1 %i.bv, label %.lr.ph74.i.preheader, label %.preheader.i168

.lr.ph74.i.preheader:                             ; preds = %.critedge2.i
  %i.bw = sub nsw i64 %zext, %.2.lcssa.ph.in.i
  %xtraiter503 = and i64 %i.bw, 1
  %lcmp.mod504.not = icmp eq i64 %xtraiter503, 0
  br i1 %lcmp.mod504.not, label %.lr.ph74.i.prol.loopexit, label %.lr.ph74.i.prol

.lr.ph74.i.prol:                                  ; preds = %.lr.ph74.i.preheader
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.2.lcssa.ph.in.i
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !36
  %i.bz = zext i64 %i.by to i128
  %i.ca = add nsw i128 %.049.lcssa.ph.i, %i.bz    ; 2 uses
  %i.cb = trunc i128 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.2.lcssa.ph.in.i
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !36
  %i.cd = ashr i128 %i.ca, 64
  %indvars.iv.next91.i.prol = add nuw nsw i64 %.2.lcssa.ph.in.i, 1
  br label %.lr.ph74.i.prol.loopexit

.lr.ph74.i.prol.loopexit:                         ; preds = %.lr.ph74.i.prol, %.lr.ph74.i.preheader
  %indvars.iv90.i.unr = phi i64 [ %.2.lcssa.ph.in.i, %.lr.ph74.i.preheader ], [ %indvars.iv.next91.i.prol, %.lr.ph74.i.prol ]
  %.173.i.unr = phi i128 [ %.049.lcssa.ph.i, %.lr.ph74.i.preheader ], [ %i.cd, %.lr.ph74.i.prol ]
  %i.ce = add nsw i64 %zext, -1
  %i.cf = icmp eq i64 %.2.lcssa.ph.in.i, %i.ce
  br i1 %i.cf, label %.preheader.i168, label %.lr.ph74.i

.lr.ph74.i:                                       ; preds = %.lr.ph74.i.prol.loopexit, %.lr.ph74.i
  %indvars.iv90.i = phi i64 [ %indvars.iv.next91.i.1, %.lr.ph74.i ], [ %indvars.iv90.i.unr, %.lr.ph74.i.prol.loopexit ] ; 4 uses
  %.173.i = phi i128 [ %i.ct, %.lr.ph74.i ], [ %.173.i.unr, %.lr.ph74.i.prol.loopexit ]
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv90.i
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !36
  %i.ci = zext i64 %i.ch to i128
  %i.cj = add nsw i128 %.173.i, %i.ci             ; 2 uses
  %i.ck = trunc i128 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv90.i
  store i64 %i.ck, ptr %i.cl, align 8, !tbaa !36
  %i.cm = ashr i128 %i.cj, 64
  %indvars.iv.next91.i = add nuw nsw i64 %indvars.iv90.i, 1 ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next91.i
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !36
  %i.cp = zext i64 %i.co to i128
  %i.cq = add nsw i128 %i.cm, %i.cp               ; 2 uses
  %i.cr = trunc i128 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv.next91.i
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !36
  %i.ct = ashr i128 %i.cq, 64
  %indvars.iv.next91.i.1 = add nuw nsw i64 %indvars.iv90.i, 2 ; 2 uses
  %exitcond94.not.i.1 = icmp eq i64 %indvars.iv.next91.i.1, %zext
  br i1 %exitcond94.not.i.1, label %.preheader.i168, label %.lr.ph74.i, !llvm.loop !18

.preheader.i168:                                  ; preds = %.lr.ph74.i.prol.loopexit, %.lr.ph74.i, %.critedge2.i
  %.pre-phi = phi i64 [ %.2.lcssa.ph.in.i, %.critedge2.i ], [ %zext, %.lr.ph74.i ], [ %zext, %.lr.ph74.i.prol.loopexit ] ; 2 uses
  %i.cu = icmp sgt i64 %.pre-phi, 0
  br i1 %i.cu, label %.lr.ph419, label %_sp_sub_off.exit.sink.split

bb.v:                                             ; preds = %.lr.ph419
  %indvars.iv.next96.i = add nsw i64 %indvars.iv95.i418, -1
  %i.cv = icmp sgt i64 %indvars.iv95.i418, 1
  br i1 %i.cv, label %.lr.ph419, label %_sp_sub_off.exit.sink.split, !llvm.loop !19

.lr.ph419:                                        ; preds = %.preheader.i168, %bb.v
  %indvars.iv95.i418 = phi i64 [ %indvars.iv.next96.i, %bb.v ], [ %.pre-phi, %.preheader.i168 ] ; 4 uses
  %i.cw = getelementptr [8 x i8], ptr %3, i64 %indvars.iv95.i418
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !36
  %.not56.i = icmp eq i64 %i.cx, 0
  br i1 %.not56.i, label %bb.v, label %.split.loop.exit.i, !llvm.loop !19

.split.loop.exit.i:                               ; preds = %.lr.ph419
  %i.cy = trunc i64 %indvars.iv95.i418 to i16
  br label %_sp_sub_off.exit.sink.split

_sp_sub_off.exit.sink.split:                      ; preds = %bb.v, %.preheader.i168, %.split.loop.exit.i, %.critedge.i167
  %.0.in.lcssa.i.sink = phi i16 [ 0, %.critedge.i167 ], [ %i.cy, %.split.loop.exit.i ], [ 0, %.preheader.i168 ], [ 0, %bb.v ]
  store i16 %.0.in.lcssa.i.sink, ptr %3, align 8, !tbaa !40
  br label %_sp_sub_off.exit

_sp_sub_off.exit:                                 ; preds = %_sp_sub_off.exit.sink.split, %bb.s
  %.not134 = icmp eq ptr %2, null
  br i1 %.not134, label %sp_lshb.exit.thread253, label %bb.w

bb.w:                                             ; preds = %_sp_sub_off.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 1, ptr %i.cz, align 8, !tbaa !36
  br label %sp_lshb.exit.thread253.sink.split

bb.x:                                             ; preds = %sp_count_bits.exit165
  %i.da = icmp samesign ult i32 %4, 130
  br i1 %i.da, label %bb.y, label %sp_lshb.exit.thread253

bb.y:                                             ; preds = %bb.x
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.b ; 5 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.b ; 27 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.b ; 11 uses
  store volatile i16 0, ptr %i.dc, align 8, !tbaa !34
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 17 uses
  store volatile i64 0, ptr %i.de, align 8, !tbaa !36
  %i.df = trunc nuw nsw i32 %4 to i16             ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 2
  store volatile i16 %i.df, ptr %i.dg, align 2, !tbaa !37
  %i.dh = add i16 %i.e, 2
  %i.di = sub i16 %i.dh, %i.f
  store volatile i16 0, ptr %i.dd, align 8, !tbaa !34
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store volatile i64 0, ptr %i.dj, align 8, !tbaa !36
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 2
  store volatile i16 %i.di, ptr %i.dk, align 2, !tbaa !37
  %i.dl = add i16 %i.f, 1                         ; 2 uses
  store volatile i16 0, ptr %i.d, align 16, !tbaa !34
  %i.dm = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 16 uses
  store volatile i64 0, ptr %i.dm, align 8, !tbaa !36
  %i.dn = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 2 uses
  store volatile i16 %i.dl, ptr %i.dn, align 2, !tbaa !37
  store volatile i16 0, ptr %i.db, align 8, !tbaa !34
  %i.do = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store volatile i64 0, ptr %i.do, align 8, !tbaa !36
  %i.dp = getelementptr inbounds nuw i8, ptr %i.db, i64 2
  store volatile i16 %i.df, ptr %i.dp, align 2, !tbaa !37
  br i1 %.not25.i153, label %sp_count_bits.exit183, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dq = zext i16 %i.f to i64
  br label %bb.ab

bb.aa:                                            ; preds = %bb.ab
  %i.dr = icmp sgt i64 %indvars.iv.i172415, 1
  br i1 %i.dr, label %bb.ab, label %sp_count_bits.exit183, !llvm.loop !2

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %indvars.iv.i172415 = phi i64 [ %i.dq, %bb.z ], [ %indvars.iv.next.i174, %bb.aa ] ; 3 uses
  %indvars.iv.next.i174 = add nsw i64 %indvars.iv.i172415, -1 ; 2 uses
  %i.ds = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.i172415
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !36 ; 5 uses
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %bb.aa, label %.critedge.i175, !llvm.loop !2

.critedge.i175:                                   ; preds = %bb.ab
  %i.dv = trunc nuw nsw i64 %indvars.iv.next.i174 to i32
  %i.dw = shl nuw nsw i32 %i.dv, 6                ; 2 uses
  %i.dx = icmp ugt i64 %i.dt, 4294967295
  br i1 %i.dx, label %bb.ac, label %.lr.ph.preheader.i178

.lr.ph.preheader.i178:                            ; preds = %.critedge.i175
  %i.dy = tail call range(i64 32, 65) i64 @llvm.ctlz.i64(i64 %i.dt, i1 true)
  %i.dz = trunc nuw nsw i64 %i.dy to i32
  %reass.sub.i179 = add nuw nsw i32 %i.dw, 64
  %i.ea = sub nuw nsw i32 %reass.sub.i179, %i.dz
  br label %sp_count_bits.exit183

bb.ac:                                            ; preds = %.critedge.i175
  %i.eb = add nuw nsw i32 %i.dw, 64               ; 2 uses
  %i.ec = icmp sgt i64 %i.dt, -1
  br i1 %i.ec, label %.lr.ph36.i180, label %sp_count_bits.exit183

.lr.ph36.i180:                                    ; preds = %bb.ac, %.lr.ph36.i180
  %.035.i181 = phi i64 [ %i.ee, %.lr.ph36.i180 ], [ %i.dt, %bb.ac ]
  %.234.i182 = phi i32 [ %i.ed, %.lr.ph36.i180 ], [ %i.eb, %bb.ac ]
  %i.ed = add nsw i32 %.234.i182, -1              ; 2 uses
  %i.ee = shl nuw i64 %.035.i181, 1               ; 2 uses
  %i.ef = icmp sgt i64 %i.ee, -1
  br i1 %i.ef, label %.lr.ph36.i180, label %sp_count_bits.exit183, !llvm.loop !3

sp_count_bits.exit183:                            ; preds = %bb.aa, %.lr.ph36.i180, %bb.y, %.lr.ph.preheader.i178, %bb.ac
  %.5.i173 = phi i32 [ %i.eb, %bb.ac ], [ %i.ed, %.lr.ph36.i180 ], [ %i.ea, %.lr.ph.preheader.i178 ], [ 0, %bb.y ], [ 0, %bb.aa ]
  %i.eg = and i32 %.5.i173, 63                    ; 3 uses
  %i.eh = sub nuw nsw i32 64, %i.eg               ; 5 uses
  %i.ei = icmp eq i16 %i.e, 0
  br i1 %i.ei, label %_sp_copy.exit185.thread, label %_sp_copy.exit185

_sp_copy.exit185:                                 ; preds = %sp_count_bits.exit183
  %i.ej = zext i16 %i.e to i64                    ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.el = shl nuw nsw i64 %i.ej, 3                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.de, ptr nonnull readonly align 8 %i.ek, i64 %i.el, i1 false)
  store i16 %i.e, ptr %i.dc, align 8, !tbaa !40
  %.not140 = icmp eq i32 %i.eg, 0
  br i1 %.not140, label %thread-pre-split, label %bb.ad

_sp_copy.exit185.thread:                          ; preds = %sp_count_bits.exit183
  store i64 0, ptr %i.de, align 8, !tbaa !36
  store i16 0, ptr %i.dc, align 8, !tbaa !40
  %.not140247 = icmp eq i32 %i.eg, 0
  br i1 %.not140247, label %thread-pre-split, label %.thread248

bb.ad:                                            ; preds = %_sp_copy.exit185
  %i.em = zext i16 %i.e to i32                    ; 4 uses
  %i.en = trunc nuw nsw i32 %i.eh to i16
  %i.eo = lshr i16 %i.en, 6                       ; 5 uses
  %i.ep = and i32 %i.eh, 63                       ; 3 uses
  %.not54.i = icmp eq i32 %i.ep, 0
  %i.eq = zext nneg i16 %i.eo to i32              ; 7 uses
  %i.er = add nuw nsw i32 %i.em, %i.eq            ; 2 uses
  br i1 %.not54.i, label %5, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.not55.i187 = icmp samesign ult i32 %i.er, %4
  br i1 %.not55.i187, label %.thread73.i, label %sp_lshb.exit.thread253

.thread73.i:                                      ; preds = %bb.ae
  %i.es = add nsw i32 %i.em, -1                   ; 2 uses
  %i.et = zext nneg i32 %i.es to i64              ; 10 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.et
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !36
  %i.ew = sub nuw nsw i32 64, %i.ep
  %i.ex = zext nneg i32 %i.ew to i64              ; 5 uses
  %i.ey = lshr i64 %i.ev, %i.ex                   ; 2 uses
  %.not5883.i = icmp eq i32 %i.es, 0
  %.pre.i189 = zext nneg i32 %i.ep to i64         ; 5 uses
  br i1 %.not5883.i, label %._crit_edge.i191, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.thread73.i
  %min.iters.check = icmp ult i16 %i.e, 23
  br i1 %min.iters.check, label %.lr.ph.i.preheader476, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.preheader
  %i.ez = add nsw i64 %i.et, -1                   ; 2 uses
  %i.fa = add nuw nsw i32 %i.eq, %i.em
  %i.fb = add nsw i32 %i.fa, -1
  %i.fc = trunc nsw i64 %i.ez to i32
  %i.fd = icmp ult i32 %i.fb, %i.fc
  %i.fe = icmp ugt i64 %i.ez, 4294967295
  %i.ff = or i1 %i.fd, %i.fe
  br i1 %i.ff, label %.lr.ph.i.preheader476, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.fg = shl nuw nsw i64 %i.et, 3                ; 2 uses
  %i.fh = add nuw nsw i32 %i.eq, %i.em
  %i.fi = add nsw i32 %i.fh, -1
  %i.fj = zext i32 %i.fi to i64
  %i.fk = shl nuw nsw i64 %i.fj, 3                ; 2 uses
  %i.fl = sub nsw i64 %i.fk, %i.fg
  %diff.check = icmp ugt i64 %i.fl, -32
  %i.fm = sub nsw i64 %i.fg, %i.fk
  %i.fn = add nsw i64 %i.fm, -9
  %diff.check420 = icmp ult i64 %i.fn, 31
  %conflict.rdx = or i1 %diff.check, %diff.check420
  br i1 %conflict.rdx, label %.lr.ph.i.preheader476, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.et, 2147483644              ; 2 uses
  %i.fo = and i64 %i.et, 3
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.pre.i189, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert421 = insertelement <2 x i64> poison, i64 %i.ex, i64 0
  %broadcast.splat422 = shufflevector <2 x i64> %broadcast.splatinsert421, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fp = sub i64 %i.et, %index                   ; 3 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.fp ; 2 uses
  %i.fr = getelementptr inbounds i8, ptr %i.fq, i64 -8
  %i.fs = getelementptr inbounds i8, ptr %i.fq, i64 -24
  %wide.load = load <2 x i64>, ptr %i.fr, align 8, !tbaa !36
  %wide.load423 = load <2 x i64>, ptr %i.fs, align 8, !tbaa !36
  %i.ft = shl <2 x i64> %wide.load, %broadcast.splat
  %i.fu = shl <2 x i64> %wide.load423, %broadcast.splat
  %i.fv = getelementptr [8 x i8], ptr %i.dc, i64 %i.fp ; 2 uses
  %i.fw = getelementptr i8, ptr %i.fv, i64 -8
  %i.fx = getelementptr i8, ptr %i.fv, i64 -24
  %wide.load424 = load <2 x i64>, ptr %i.fw, align 8, !tbaa !36
  %wide.load425 = load <2 x i64>, ptr %i.fx, align 8, !tbaa !36
  %i.fy = lshr <2 x i64> %wide.load424, %broadcast.splat422
  %i.fz = lshr <2 x i64> %wide.load425, %broadcast.splat422
  %i.ga = or <2 x i64> %i.fy, %i.ft
  %i.gb = or <2 x i64> %i.fz, %i.fu
  %i.gc = trunc nuw i64 %i.fp to i32
  %i.gd = add i32 %i.gc, %i.eq
  %i.ge = zext i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.ge ; 2 uses
  %i.gg = getelementptr inbounds i8, ptr %i.gf, i64 -8
  %i.gh = getelementptr inbounds i8, ptr %i.gf, i64 -24
  store <2 x i64> %i.ga, ptr %i.gg, align 8, !tbaa !36
  store <2 x i64> %i.gb, ptr %i.gh, align 8, !tbaa !36
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gi = icmp eq i64 %index.next, %n.vec
  br i1 %i.gi, label %middle.block, label %vector.body, !llvm.loop !108

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.et
  br i1 %cmp.n, label %._crit_edge.i191, label %.lr.ph.i.preheader476

.lr.ph.i.preheader476:                            ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i190.ph = phi i64 [ %i.et, %vector.memcheck ], [ %i.et, %vector.scevcheck ], [ %i.et, %.lr.ph.i.preheader ], [ %i.fo, %middle.block ] ; 7 uses
  %xtraiter = and i64 %indvars.iv.i190.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader476
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv.i190.ph
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !36
  %i.gl = shl i64 %i.gk, %.pre.i189
  %i.gm = add nsw i64 %indvars.iv.i190.ph, -1
  %i.gn = getelementptr [8 x i8], ptr %i.dc, i64 %indvars.iv.i190.ph
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !36
  %i.gp = lshr i64 %i.go, %i.ex
  %i.gq = or i64 %i.gp, %i.gl
  %i.gr = trunc nuw nsw i64 %indvars.iv.i190.ph to i32
  %i.gs = add nuw i32 %i.gr, %i.eq
  %i.gt = zext i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.gt
  store i64 %i.gq, ptr %i.gu, align 8, !tbaa !36
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader476
  %indvars.iv.i190.unr = phi i64 [ %indvars.iv.i190.ph, %.lr.ph.i.preheader476 ], [ %i.gm, %.lr.ph.i.prol ]
  %i.gv = icmp eq i64 %indvars.iv.i190.ph, 1
  br i1 %i.gv, label %._crit_edge.i191, label %.lr.ph.i

5:                                                ; preds = %bb.ad
  %.not82.i = icmp samesign ugt i32 %i.er, %4
  br i1 %.not82.i, label %sp_lshb.exit.thread253, label %bb.ag

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i190 = phi i64 [ %i.hl, %.lr.ph.i ], [ %indvars.iv.i190.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv.i190
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !36
  %i.gy = shl i64 %i.gx, %.pre.i189
  %i.gz = add nsw i64 %indvars.iv.i190, -1        ; 2 uses
  %i.ha = getelementptr [8 x i8], ptr %i.dc, i64 %indvars.iv.i190
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !36
  %i.hc = lshr i64 %i.hb, %i.ex
  %i.hd = or i64 %i.hc, %i.gy
  %i.he = trunc nuw i64 %indvars.iv.i190 to i32
  %i.hf = add i32 %i.he, %i.eq
  %i.hg = zext i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.hg
  store i64 %i.hd, ptr %i.hh, align 8, !tbaa !36
  %i.hi = getelementptr [8 x i8], ptr %i.dc, i64 %indvars.iv.i190
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !36
  %i.hk = shl i64 %i.hj, %.pre.i189
  %i.hl = add nsw i64 %indvars.iv.i190, -2        ; 2 uses
  %i.hm = getelementptr [8 x i8], ptr %i.dc, i64 %i.gz
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !36
  %i.ho = lshr i64 %i.hn, %i.ex
  %i.hp = or i64 %i.ho, %i.hk
  %i.hq = trunc nuw i64 %i.gz to i32
  %i.hr = add i32 %i.hq, %i.eq
  %i.hs = zext i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.hs
  store i64 %i.hp, ptr %i.ht, align 8, !tbaa !36
  %.not58.wide.i.1 = icmp eq i64 %i.hl, 0
  br i1 %.not58.wide.i.1, label %._crit_edge.i191, label %.lr.ph.i, !llvm.loop !109

._crit_edge.i191:                                 ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %.thread73.i
  %i.hu = load i64, ptr %i.de, align 8, !tbaa !36
  %i.hv = shl i64 %i.hu, %.pre.i189
  %i.hw = zext nneg i16 %i.eo to i64              ; 2 uses
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.hw
  store i64 %i.hv, ptr %i.hx, align 8, !tbaa !36
  %.not59.i = icmp eq i64 %i.ey, 0
  br i1 %.not59.i, label %.thread70.i, label %bb.af

bb.af:                                            ; preds = %._crit_edge.i191
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.ej
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %i.hw
  store i64 %i.ey, ptr %i.hz, align 8, !tbaa !36
  %i.ia = add i16 %i.e, 1
  br label %.thread70.i

bb.ag:                                            ; preds = %5
  %i.ib = zext nneg i16 %i.eo to i64
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.ib
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ic, ptr nonnull align 8 %i.de, i64 %i.el, i1 false)
  br label %.thread70.i

.thread70.i:                                      ; preds = %bb.ag, %bb.af, %._crit_edge.i191
  %i.id = phi i16 [ %i.e, %._crit_edge.i191 ], [ %i.ia, %bb.af ], [ %i.e, %bb.ag ]
  %i.ie = add i16 %i.id, %i.eo
  store i16 %i.ie, ptr %i.dc, align 8, !tbaa !40
  %i.if = shl nuw nsw i16 %i.eo, 3
  %i.ig = zext nneg i16 %i.if to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.de, i8 0, i64 %i.ig, i1 false)
  br label %.thread248

.thread248:                                       ; preds = %_sp_copy.exit185.thread, %.thread70.i
  br i1 %.not25.i153, label %sp_lshb.exit.thread253, label %bb.ah

bb.ah:                                            ; preds = %.thread248
  %i.ih = zext i16 %i.f to i64                    ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ij = shl nuw nsw i64 %i.ih, 3                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dm, ptr nonnull readonly align 8 %i.ii, i64 %i.ij, i1 false)
  %i.ik = zext i16 %i.f to i32                    ; 4 uses
  %i.il = trunc nuw nsw i32 %i.eh to i16
  %i.im = lshr i16 %i.il, 6                       ; 5 uses
  %i.in = and i32 %i.eh, 63                       ; 3 uses
  %.not54.i196 = icmp eq i32 %i.in, 0
  %i.io = zext nneg i16 %i.im to i32              ; 7 uses
  %i.ip = add nuw nsw i32 %i.ik, %i.io            ; 2 uses
  %i.iq = load i16, ptr %i.dn, align 2, !tbaa !39
  %i.ir = zext i16 %i.iq to i32                   ; 2 uses
  br i1 %.not54.i196, label %6, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.not55.i197 = icmp samesign ult i32 %i.ip, %i.ir
  br i1 %.not55.i197, label %.thread73.i199, label %sp_lshb.exit.thread253

.thread73.i199:                                   ; preds = %bb.ai
  %i.is = add nsw i32 %i.ik, -1                   ; 2 uses
  %i.it = zext nneg i32 %i.is to i64              ; 10 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.it
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !36
  %i.iw = sub nuw nsw i32 64, %i.in
  %i.ix = zext nneg i32 %i.iw to i64              ; 5 uses
  %i.iy = lshr i64 %i.iv, %i.ix                   ; 2 uses
  %.not5883.i200 = icmp eq i32 %i.is, 0
  %.pre.i201 = zext nneg i32 %i.in to i64         ; 5 uses
  br i1 %.not5883.i200, label %._crit_edge.i205, label %.lr.ph.i202.preheader

.lr.ph.i202.preheader:                            ; preds = %.thread73.i199
  %min.iters.check432 = icmp ult i16 %i.f, 23
  br i1 %min.iters.check432, label %.lr.ph.i202.preheader475, label %vector.scevcheck426

vector.scevcheck426:                              ; preds = %.lr.ph.i202.preheader
  %i.iz = add nsw i64 %i.it, -1                   ; 2 uses
  %i.ja = add nuw nsw i32 %i.io, %i.ik
  %i.jb = add nsw i32 %i.ja, -1
  %i.jc = trunc nsw i64 %i.iz to i32
  %i.jd = icmp ult i32 %i.jb, %i.jc
  %i.je = icmp ugt i64 %i.iz, 4294967295
  %i.jf = or i1 %i.jd, %i.je
  br i1 %i.jf, label %.lr.ph.i202.preheader475, label %vector.memcheck427

vector.memcheck427:                               ; preds = %vector.scevcheck426
  %i.jg = shl nuw nsw i64 %i.it, 3                ; 2 uses
  %i.jh = add nuw nsw i32 %i.io, %i.ik
  %i.ji = add nsw i32 %i.jh, -1
  %i.jj = zext i32 %i.ji to i64
  %i.jk = shl nuw nsw i64 %i.jj, 3                ; 2 uses
  %i.jl = sub nsw i64 %i.jk, %i.jg
  %diff.check428 = icmp ugt i64 %i.jl, -32
  %i.jm = sub nsw i64 %i.jg, %i.jk
  %i.jn = add nsw i64 %i.jm, -9
  %diff.check429 = icmp ult i64 %i.jn, 31
  %conflict.rdx430 = or i1 %diff.check428, %diff.check429
  br i1 %conflict.rdx430, label %.lr.ph.i202.preheader475, label %vector.ph433

vector.ph433:                                     ; preds = %vector.memcheck427
  %n.vec434 = and i64 %i.it, 2147483644           ; 2 uses
  %i.jo = and i64 %i.it, 3
  %broadcast.splatinsert435 = insertelement <2 x i64> poison, i64 %.pre.i201, i64 0
  %broadcast.splat436 = shufflevector <2 x i64> %broadcast.splatinsert435, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert437 = insertelement <2 x i64> poison, i64 %i.ix, i64 0
  %broadcast.splat438 = shufflevector <2 x i64> %broadcast.splatinsert437, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body439

vector.body439:                                   ; preds = %vector.body439, %vector.ph433
  %index440 = phi i64 [ 0, %vector.ph433 ], [ %index.next445, %vector.body439 ] ; 2 uses
  %i.jp = sub i64 %i.it, %index440                ; 3 uses
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.jp ; 2 uses
  %i.jr = getelementptr inbounds i8, ptr %i.jq, i64 -8
  %i.js = getelementptr inbounds i8, ptr %i.jq, i64 -24
  %wide.load441 = load <2 x i64>, ptr %i.jr, align 8, !tbaa !36
  %wide.load442 = load <2 x i64>, ptr %i.js, align 8, !tbaa !36
  %i.jt = shl <2 x i64> %wide.load441, %broadcast.splat436
  %i.ju = shl <2 x i64> %wide.load442, %broadcast.splat436
  %i.jv = getelementptr [8 x i8], ptr %i.d, i64 %i.jp ; 2 uses
  %i.jw = getelementptr i8, ptr %i.jv, i64 -8
  %i.jx = getelementptr i8, ptr %i.jv, i64 -24
  %wide.load443 = load <2 x i64>, ptr %i.jw, align 8, !tbaa !36
  %wide.load444 = load <2 x i64>, ptr %i.jx, align 8, !tbaa !36
  %i.jy = lshr <2 x i64> %wide.load443, %broadcast.splat438
  %i.jz = lshr <2 x i64> %wide.load444, %broadcast.splat438
  %i.ka = or <2 x i64> %i.jy, %i.jt
  %i.kb = or <2 x i64> %i.jz, %i.ju
  %i.kc = trunc nuw i64 %i.jp to i32
  %i.kd = add i32 %i.kc, %i.io
  %i.ke = zext i32 %i.kd to i64
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.ke ; 2 uses
  %i.kg = getelementptr inbounds i8, ptr %i.kf, i64 -8
  %i.kh = getelementptr inbounds i8, ptr %i.kf, i64 -24
  store <2 x i64> %i.ka, ptr %i.kg, align 8, !tbaa !36
  store <2 x i64> %i.kb, ptr %i.kh, align 8, !tbaa !36
  %index.next445 = add nuw i64 %index440, 4       ; 2 uses
  %i.ki = icmp eq i64 %index.next445, %n.vec434
  br i1 %i.ki, label %middle.block446, label %vector.body439, !llvm.loop !110

middle.block446:                                  ; preds = %vector.body439
  %cmp.n447 = icmp eq i64 %n.vec434, %i.it
  br i1 %cmp.n447, label %._crit_edge.i205, label %.lr.ph.i202.preheader475

.lr.ph.i202.preheader475:                         ; preds = %vector.memcheck427, %vector.scevcheck426, %.lr.ph.i202.preheader, %middle.block446
  %indvars.iv.i203.ph = phi i64 [ %i.it, %vector.memcheck427 ], [ %i.it, %vector.scevcheck426 ], [ %i.it, %.lr.ph.i202.preheader ], [ %i.jo, %middle.block446 ] ; 7 uses
  %xtraiter492 = and i64 %indvars.iv.i203.ph, 1
  %lcmp.mod493.not = icmp eq i64 %xtraiter492, 0
  br i1 %lcmp.mod493.not, label %.lr.ph.i202.prol.loopexit, label %.lr.ph.i202.prol

.lr.ph.i202.prol:                                 ; preds = %.lr.ph.i202.preheader475
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv.i203.ph
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !36
  %i.kl = shl i64 %i.kk, %.pre.i201
  %i.km = add nsw i64 %indvars.iv.i203.ph, -1
  %i.kn = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv.i203.ph
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !36
  %i.kp = lshr i64 %i.ko, %i.ix
  %i.kq = or i64 %i.kp, %i.kl
  %i.kr = trunc nuw nsw i64 %indvars.iv.i203.ph to i32
  %i.ks = add nuw i32 %i.kr, %i.io
  %i.kt = zext i32 %i.ks to i64
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.kt
  store i64 %i.kq, ptr %i.ku, align 8, !tbaa !36
  br label %.lr.ph.i202.prol.loopexit

.lr.ph.i202.prol.loopexit:                        ; preds = %.lr.ph.i202.prol, %.lr.ph.i202.preheader475
  %indvars.iv.i203.unr = phi i64 [ %indvars.iv.i203.ph, %.lr.ph.i202.preheader475 ], [ %i.km, %.lr.ph.i202.prol ]
  %i.kv = icmp eq i64 %indvars.iv.i203.ph, 1
  br i1 %i.kv, label %._crit_edge.i205, label %.lr.ph.i202

6:                                                ; preds = %bb.ah
  %.not82.i209 = icmp samesign ugt i32 %i.ip, %i.ir
  br i1 %.not82.i209, label %sp_lshb.exit.thread253, label %bb.ak

.lr.ph.i202:                                      ; preds = %.lr.ph.i202.prol.loopexit, %.lr.ph.i202
  %indvars.iv.i203 = phi i64 [ %i.ll, %.lr.ph.i202 ], [ %indvars.iv.i203.unr, %.lr.ph.i202.prol.loopexit ] ; 6 uses
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv.i203
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !36
  %i.ky = shl i64 %i.kx, %.pre.i201
  %i.kz = add nsw i64 %indvars.iv.i203, -1        ; 2 uses
  %i.la = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv.i203
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !36
  %i.lc = lshr i64 %i.lb, %i.ix
  %i.ld = or i64 %i.lc, %i.ky
  %i.le = trunc nuw i64 %indvars.iv.i203 to i32
  %i.lf = add i32 %i.le, %i.io
  %i.lg = zext i32 %i.lf to i64
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.lg
  store i64 %i.ld, ptr %i.lh, align 8, !tbaa !36
  %i.li = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv.i203
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !36
  %i.lk = shl i64 %i.lj, %.pre.i201
  %i.ll = add nsw i64 %indvars.iv.i203, -2        ; 2 uses
  %i.lm = getelementptr [8 x i8], ptr %i.d, i64 %i.kz
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !36
  %i.lo = lshr i64 %i.ln, %i.ix
  %i.lp = or i64 %i.lo, %i.lk
  %i.lq = trunc nuw i64 %i.kz to i32
  %i.lr = add i32 %i.lq, %i.io
  %i.ls = zext i32 %i.lr to i64
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.ls
  store i64 %i.lp, ptr %i.lt, align 8, !tbaa !36
  %.not58.wide.i204.1 = icmp eq i64 %i.ll, 0
  br i1 %.not58.wide.i204.1, label %._crit_edge.i205, label %.lr.ph.i202, !llvm.loop !111

._crit_edge.i205:                                 ; preds = %.lr.ph.i202.prol.loopexit, %.lr.ph.i202, %middle.block446, %.thread73.i199
  %i.lu = load i64, ptr %i.dm, align 8, !tbaa !36
  %i.lv = shl i64 %i.lu, %.pre.i201
  %i.lw = zext nneg i16 %i.im to i64              ; 2 uses
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.lw
  store i64 %i.lv, ptr %i.lx, align 8, !tbaa !36
  %.not59.i206 = icmp eq i64 %i.iy, 0
  br i1 %.not59.i206, label %.thread70.i207, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge.i205
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.ih
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %i.lw
  store i64 %i.iy, ptr %i.lz, align 8, !tbaa !36
  br label %.thread70.i207

bb.ak:                                            ; preds = %6
  %i.ma = zext nneg i16 %i.im to i64
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.ma
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.mb, ptr nonnull align 8 %i.dm, i64 %i.ij, i1 false)
  br label %.thread70.i207

.thread70.i207:                                   ; preds = %bb.ak, %bb.aj, %._crit_edge.i205
  %i.mc = phi i16 [ %i.f, %._crit_edge.i205 ], [ %i.dl, %bb.aj ], [ %i.f, %bb.ak ]
  %i.md = add i16 %i.mc, %i.im                    ; 2 uses
  store i16 %i.md, ptr %i.d, align 16, !tbaa !40
  %i.me = shl nuw nsw i16 %i.im, 3
  %i.mf = zext nneg i16 %i.me to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dm, i8 0, i64 %i.mf, i1 false)
  br label %bb.al

thread-pre-split:                                 ; preds = %_sp_copy.exit185, %_sp_copy.exit185.thread
  %.pr = load i16, ptr %1, align 8, !tbaa !40
  br label %bb.al

bb.al:                                            ; preds = %thread-pre-split, %.thread70.i207
  %i.mg = phi i16 [ %.pr, %thread-pre-split ], [ %i.md, %.thread70.i207 ] ; 2 uses
  %.0117.ph = phi i32 [ 64, %thread-pre-split ], [ %i.eh, %.thread70.i207 ] ; 4 uses
  %.0112.ph = phi ptr [ %1, %thread-pre-split ], [ %i.d, %.thread70.i207 ] ; 7 uses
  %.not141 = icmp eq i16 %i.mg, 0
  br i1 %.not141, label %sp_lshb.exit.thread253, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.mh = load i16, ptr %i.dc, align 8, !tbaa !40
  %i.mi = sub i16 %i.mh, %i.mg
  %i.mj = add i16 %i.mi, 1                        ; 3 uses
  store i16 %i.mj, ptr %i.dd, align 8, !tbaa !40
  %.not131.i = icmp eq i16 %i.mj, 0
  br i1 %.not131.i, label %._crit_edge.i212, label %.lr.ph.i211

.lr.ph.i211:                                      ; preds = %bb.am
  %i.mk = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.ml = zext i16 %i.mj to i64
  %i.mm = shl nuw nsw i64 %i.ml, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.mk, i8 0, i64 %i.mm, i1 false), !tbaa !36
  br label %._crit_edge.i212

._crit_edge.i212:                                 ; preds = %.lr.ph.i211, %bb.am
  %i.mn = getelementptr inbounds nuw i8, ptr %.0112.ph, i64 8 ; 3 uses
  %i.mo = load i16, ptr %.0112.ph, align 8, !tbaa !40
  %i.mp = zext i16 %i.mo to i64
  %i.mq = getelementptr [8 x i8], ptr %.0112.ph, i64 %i.mp
  %i.mr = load i64, ptr %i.mq, align 8, !tbaa !36 ; 2 uses
  call fastcc void @_sp_div_same_size(ptr noundef nonnull %i.dc, ptr noundef nonnull readonly %.0112.ph, ptr noundef nonnull %i.dd)
  %i.ms = load i16, ptr %i.dc, align 8, !tbaa !40 ; 2 uses
  %i.mt = load i16, ptr %.0112.ph, align 8, !tbaa !40 ; 9 uses
  %.191124.i = add i16 %i.ms, -1                  ; 2 uses
  %.not125.i = icmp ult i16 %.191124.i, %i.mt
  br i1 %.not125.i, label %._crit_edge129.i, label %.lr.ph128.i

.lr.ph128.i:                                      ; preds = %._crit_edge.i212
  %i.mu = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 6 uses
  %i.mv = zext i64 %i.mr to i128
  %.not132.i = icmp eq i16 %i.mt, 0
  %i.mw = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 10 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.my = add i16 %i.mt, 1                        ; 2 uses
  %umax.i = tail call i16 @llvm.umax.i16(i16 %i.my, i16 1) ; 2 uses
  %wide.trip.count.i = zext i16 %i.mt to i64      ; 3 uses
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.mw, i64 %wide.trip.count.i
  %wide.trip.count139.i = zext i16 %umax.i to i64 ; 2 uses
  %xtraiter494 = and i64 %wide.trip.count.i, 1
  %i.na = icmp eq i16 %i.mt, 1
  %unroll_iter = and i64 %wide.trip.count.i, 65534
  %lcmp.mod495.not = icmp eq i64 %xtraiter494, 0
  %lcmp.mod497 = trunc i16 %i.mt to i1
  %xtraiter498 = and i64 %wide.trip.count139.i, 1
  %i.nb = icmp ult i16 %i.my, 2
  %unroll_iter501 = and i64 %wide.trip.count139.i, 65534
  %lcmp.mod499.not = icmp eq i64 %xtraiter498, 0
  %lcmp.mod500 = trunc i16 %umax.i to i1
  br label %bb.an

bb.an:                                            ; preds = %bb.ar, %.lr.ph128.i
  %.191126.i = phi i16 [ %.191124.i, %.lr.ph128.i ], [ %.191.i, %bb.ar ] ; 4 uses
  %i.nc = zext i16 %.191126.i to i64
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.mu, i64 %i.nc ; 2 uses
  %i.ne = load i64, ptr %i.nd, align 8, !tbaa !36 ; 2 uses
  %i.nf = icmp eq i64 %i.ne, %i.mr
  br i1 %i.nf, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ng = getelementptr i8, ptr %i.nd, i64 -8
  %i.nh = load i64, ptr %i.ng, align 8, !tbaa !36
  %i.ni = zext i64 %i.ne to i128
  %i.nj = shl nuw i128 %i.ni, 64
  %i.nk = zext i64 %i.nh to i128
  %i.nl = or disjoint i128 %i.nj, %i.nk
  %i.nm = udiv i128 %i.nl, %i.mv
  %i.nn = trunc i128 %i.nm to i64
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.085.i = phi i64 [ %i.nn, %bb.ao ], [ -1, %bb.an ] ; 2 uses
  %i.no = sub nuw i16 %.191126.i, %i.mt           ; 2 uses
  %i.np = zext i16 %i.no to i32                   ; 5 uses
  br i1 %.not132.i, label %.split.us, label %.lr.ph107.i

.split.us:                                        ; preds = %bb.ap
  store i64 0, ptr %i.mw, align 8, !tbaa !36
  br label %.preheader.i216.preheader

.lr.ph107.i:                                      ; preds = %bb.ap, %._crit_edge114.loopexit.i
  %.1.i213 = phi i64 [ %i.pe, %._crit_edge114.loopexit.i ], [ %.085.i, %bb.ap ] ; 3 uses
  %i.nq = zext i64 %.1.i213 to i128               ; 3 uses
  br i1 %i.na, label %.epil.preheader, label %.lr.ph107.i.new

.lr.ph107.i.new:                                  ; preds = %.lr.ph107.i, %.lr.ph107.i.new
  %indvars.iv.i214 = phi i64 [ %indvars.iv.next.i215.1, %.lr.ph107.i.new ], [ 0, %.lr.ph107.i ] ; 4 uses
  %.0105.i = phi i128 [ %i.og, %.lr.ph107.i.new ], [ 0, %.lr.ph107.i ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph107.i.new ], [ 0, %.lr.ph107.i ]
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %indvars.iv.i214
  %i.ns = load i64, ptr %i.nr, align 8, !tbaa !36
  %i.nt = zext i64 %i.ns to i128
  %i.nu = mul nuw i128 %i.nt, %i.nq
  %i.nv = add nuw i128 %i.nu, %.0105.i            ; 2 uses
  %i.nw = trunc i128 %i.nv to i64
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.mw, i64 %indvars.iv.i214
  store i64 %i.nw, ptr %i.nx, align 8, !tbaa !36
  %i.ny = lshr i128 %i.nv, 64
  %indvars.iv.next.i215 = or disjoint i64 %indvars.iv.i214, 1 ; 2 uses
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %indvars.iv.next.i215
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !36
  %i.ob = zext i64 %i.oa to i128
  %i.oc = mul nuw i128 %i.ob, %i.nq
  %i.od = add nuw i128 %i.oc, %i.ny               ; 2 uses
  %i.oe = trunc i128 %i.od to i64
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.mw, i64 %indvars.iv.next.i215
  store i64 %i.oe, ptr %i.of, align 8, !tbaa !36
  %i.og = lshr i128 %i.od, 64                     ; 3 uses
  %indvars.iv.next.i215.1 = add nuw nsw i64 %indvars.iv.i214, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph113.preheader.i.unr-lcssa, label %.lr.ph107.i.new, !llvm.loop !112

.lr.ph113.preheader.i.unr-lcssa:                  ; preds = %.lr.ph107.i.new
  %extract.t = trunc nuw i128 %i.og to i64
  br i1 %lcmp.mod495.not, label %.lr.ph113.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph113.preheader.i.unr-lcssa, %.lr.ph107.i
  %indvars.iv.i214.epil.init = phi i64 [ 0, %.lr.ph107.i ], [ %indvars.iv.next.i215.1, %.lr.ph113.preheader.i.unr-lcssa ] ; 2 uses
  %.0105.i.epil.init = phi i128 [ 0, %.lr.ph107.i ], [ %i.og, %.lr.ph113.preheader.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod497)
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %indvars.iv.i214.epil.init
  %i.oi = load i64, ptr %i.oh, align 8, !tbaa !36
  %i.oj = zext i64 %i.oi to i128
  %i.ok = mul nuw i128 %i.oj, %i.nq
  %i.ol = add nuw i128 %i.ok, %.0105.i.epil.init  ; 2 uses
  %i.om = trunc i128 %i.ol to i64
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.mw, i64 %indvars.iv.i214.epil.init
end_hunk_0
begin_hunk_1_@sp_invmod_mont_ct:bb.a
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.kp
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !36
  %i.ks = zext nneg i32 %i.ko to i64
  %i.kt = lshr i64 %i.kr, %i.ks
  %i.ku = trunc i64 %i.kt to i32
  %i.kv = and i32 %i.ku, 1
  br label %sp_is_bit_set.exit147.i

sp_is_bit_set.exit147.i:                          ; preds = %bb.am, %.lr.ph219.i
  %.0.i146.i = phi i32 [ %i.kv, %bb.am ], [ 0, %.lr.ph219.i ] ; 3 uses
  %i.kw = add nsw i32 %.0.i146.i, %.1119217.i     ; 4 uses
  %i.kx = add nsw i32 %.0117218.i, 1              ; 2 uses
  %i.ky = icmp eq i32 %i.kw, 8
  br i1 %i.ky, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %sp_is_bit_set.exit147.i
  %i.kz = icmp eq i32 %.0.i146.i, 0
  %i.la = icmp sgt i32 %i.kw, 0
  %or.cond3.i = and i1 %i.kz, %i.la
  br i1 %or.cond3.i, label %bb.ao, label %.thread174.i

bb.ao:                                            ; preds = %bb.an, %sp_is_bit_set.exit147.i
  %i.lb = xor i32 %.0.i146.i, 1                   ; 2 uses
  %i.lc = sub nsw i32 %i.kx, %i.lb                ; 2 uses
  %i.ld = icmp sgt i32 %i.lc, 0
  br i1 %i.ld, label %.lr.ph213.i, label %.loopexit294.i

.lr.ph213.i:                                      ; preds = %bb.ao, %bb.ap
  %.1212.i = phi i32 [ %i.lg, %bb.ap ], [ %i.lc, %bb.ao ] ; 2 uses
  %i.le = tail call i32 @sp_sqr(ptr noundef nonnull %i.be, ptr noundef nonnull %i.be) ; 2 uses
  %i.lf = icmp eq i32 %i.le, 0
  br i1 %i.lf, label %bb.ap, label %.thread186.i

bb.ap:                                            ; preds = %.lr.ph213.i
  tail call fastcc void @_sp_mont_red(ptr noundef nonnull %i.be, ptr noundef nonnull readonly %1, i64 noundef %3, i32 noundef 0)
  %i.lg = add nsw i32 %.1212.i, -1
  %i.lh = icmp samesign ugt i32 %.1212.i, 1
  br i1 %i.lh, label %.lr.ph213.i, label %.loopexit294.i, !llvm.loop !136

.loopexit294.i:                                   ; preds = %bb.ap, %bb.ao
  %i.li = sext i32 %i.kw to i64
  %i.lj = getelementptr [8 x i8], ptr %i.b, i64 %i.li
  %i.lk = getelementptr i8, ptr %i.lj, i64 -8
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !49
  %i.lm = tail call i32 @sp_mul(ptr noundef nonnull %i.be, ptr noundef %i.ll, ptr noundef nonnull %i.be) ; 2 uses
  %i.ln = icmp eq i32 %i.lm, 0
  br i1 %i.ln, label %bb.aq, label %.thread186.i

bb.aq:                                            ; preds = %.loopexit294.i
  tail call fastcc void @_sp_mont_red(ptr noundef nonnull %i.be, ptr noundef nonnull readonly %1, i64 noundef %3, i32 noundef 0)
  br label %.thread174.i

.thread174.i:                                     ; preds = %bb.aq, %bb.an
  %.2120.i = phi i32 [ %i.kw, %bb.an ], [ 0, %bb.aq ] ; 3 uses
  %.2.i = phi i32 [ %i.kx, %bb.an ], [ %i.lb, %bb.aq ] ; 3 uses
  %i.lo = add nsw i32 %.2124216.i, -1
  %i.lp = icmp sgt i32 %.2124216.i, 0
  br i1 %i.lp, label %.lr.ph219.i, label %.preheader.i, !llvm.loop !137

.preheader.i:                                     ; preds = %.thread174.i
  %i.lq = icmp sgt i32 %.2.i, 0
  br i1 %i.lq, label %.lr.ph225.i, label %.loopexit292.i

.lr.ph225.i:                                      ; preds = %.preheader.i, %bb.ar
  %.4224.i = phi i32 [ %i.lt, %bb.ar ], [ %.2.i, %.preheader.i ] ; 2 uses
  %i.lr = tail call i32 @sp_sqr(ptr noundef nonnull %i.be, ptr noundef nonnull %i.be) ; 2 uses
  %i.ls = icmp eq i32 %i.lr, 0
  br i1 %i.ls, label %bb.ar, label %.thread186.i

bb.ar:                                            ; preds = %.lr.ph225.i
  tail call fastcc void @_sp_mont_red(ptr noundef nonnull %i.be, ptr noundef nonnull readonly %1, i64 noundef %3, i32 noundef 0)
  %i.lt = add nsw i32 %.4224.i, -1
  %i.lu = icmp samesign ugt i32 %.4224.i, 1
  br i1 %i.lu, label %.lr.ph225.i, label %.loopexit292.i, !llvm.loop !138

.loopexit292.i:                                   ; preds = %bb.ar, %.preheader.i
  %i.lv = icmp sgt i32 %.2120.i, 0
  br i1 %i.lv, label %bb.as, label %thread-pre-split.i

bb.as:                                            ; preds = %.loopexit292.i
  %i.lw = zext nneg i32 %.2120.i to i64
  %i.lx = getelementptr [8 x i8], ptr %i.b, i64 %i.lw
  %i.ly = getelementptr i8, ptr %i.lx, i64 -8
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !49
  %i.ma = tail call i32 @sp_mul(ptr noundef nonnull %i.be, ptr noundef %i.lz, ptr noundef %2) ; 2 uses
  %i.mb = icmp eq i32 %i.ma, 0
  br i1 %i.mb, label %bb.at, label %.thread186.i

bb.at:                                            ; preds = %bb.as
  tail call fastcc void @_sp_mont_red(ptr noundef %2, ptr noundef nonnull readonly %1, i64 noundef %3, i32 noundef 0)
  br label %.thread186.i

thread-pre-split.i:                               ; preds = %.loopexit292.i
  %.pr.i = load i16, ptr %i.be, align 8, !tbaa !40
  br label %.thread286.i

.thread286.i:                                     ; preds = %thread-pre-split.i, %_sp_copy.exit144.i
  %i.mc = phi i16 [ %.pr.i, %thread-pre-split.i ], [ %i.ki, %_sp_copy.exit144.i ] ; 2 uses
  %i.md = icmp eq i16 %i.mc, 0
  br i1 %i.md, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.thread286.i
  %i.me = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.me, align 8, !tbaa !36
  br label %_sp_copy.exit149.i

bb.av:                                            ; preds = %.thread286.i
  %i.mf = zext i16 %i.mc to i64
  %i.mg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.mh = shl nuw nsw i64 %i.mf, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.mg, ptr nonnull readonly align 8 %i.bi, i64 %i.mh, i1 false)
  %.pre.i148.i = load i16, ptr %i.be, align 8, !tbaa !40
  br label %_sp_copy.exit149.i

_sp_copy.exit149.i:                               ; preds = %bb.av, %bb.au
  %i.mi = phi i16 [ %.pre.i148.i, %bb.av ], [ 0, %bb.au ]
  store i16 %i.mi, ptr %2, align 8, !tbaa !40
  br label %.thread186.i

.thread186.i:                                     ; preds = %.loopexit294.i, %.lr.ph213.i, %.lr.ph225.i, %bb.j, %_sp_copy.exit.i, %.thread159.i, %bb.k, %.thread159.i.1, %bb.l, %.thread159.i.2, %bb.m, %.thread159.i.3, %bb.n, %.thread159.i.4, %bb.o, %.thread159.i.5, %bb.p, %_sp_copy.exit149.i, %bb.at, %bb.as
  %.17.i = phi i32 [ 0, %bb.at ], [ %i.ma, %bb.as ], [ 0, %_sp_copy.exit149.i ], [ %i.lr, %.lr.ph225.i ], [ %i.ed, %bb.p ], [ %i.le, %.lr.ph213.i ], [ %i.cb, %bb.j ], [ %i.bz, %_sp_copy.exit.i ], [ %i.ci, %.thread159.i ], [ %i.ck, %bb.k ], [ %i.cr, %.thread159.i.1 ], [ %i.ct, %bb.l ], [ %i.da, %.thread159.i.2 ], [ %i.dc, %bb.m ], [ %i.dj, %.thread159.i.3 ], [ %i.dl, %bb.n ], [ %i.ds, %.thread159.i.4 ], [ %i.du, %bb.o ], [ %i.eb, %.thread159.i.5 ], [ %i.lm, %.loopexit294.i ]
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.r) #20
  br label %_sp_invmod_mont_ct.exit

_sp_invmod_mont_ct.exit:                          ; preds = %bb.g, %.thread186.i
  %.17195.i = phi i32 [ -97, %bb.g ], [ %.17.i, %.thread186.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %.thread28

.thread28:                                        ; preds = %bb.c, %bb.d, %bb.f, %bb.e, %bb.b, %bb.a, %_sp_invmod_mont_ct.exit
  %.2 = phi i32 [ %.17195.i, %_sp_invmod_mont_ct.exit ], [ -98, %bb.d ], [ -98, %bb.a ], [ -98, %bb.b ], [ -98, %bb.e ], [ -98, %bb.f ], [ -98, %bb.c ]
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define range(i32 -98, 1) i32 @sp_exptmod_ex(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2, ptr nofree noundef readonly captures(address) %3, ptr nofree noundef captures(address) %4) local_unnamed_addr #13 {
sp_count_bits.exit:
  %.not.i126 = icmp eq ptr %1, null
  br i1 %.not.i126, label %sp_count_bits.exit139.thread, label %sp_count_bits.exit139

sp_count_bits.exit139.thread:                     ; preds = %sp_count_bits.exit
  %i.a = icmp eq ptr %4, null
  br label %.thread159

sp_count_bits.exit139:                            ; preds = %sp_count_bits.exit
  %.not.i112 = icmp eq ptr %0, null
  %.not.i = icmp eq ptr %3, null
  %i.b = load i16, ptr %1, align 8, !tbaa !40
  %.not25.i127 = icmp eq i16 %i.b, 0
  %i.c = icmp eq ptr %4, null                     ; 2 uses
  %i.d = icmp slt i32 %2, 0
  %i.e = or i1 %i.d, %.not.i
  %i.f = or i1 %.not.i112, %i.e
  %or.cond7 = or i1 %i.c, %i.f
  br i1 %or.cond7, label %.thread159, label %bb.a

bb.a:                                             ; preds = %sp_count_bits.exit139
  %i.g = load i16, ptr %3, align 8, !tbaa !40     ; 2 uses
  %i.h = icmp ult i16 %i.g, 65
  br i1 %i.h, label %bb.b, label %.thread159

bb.b:                                             ; preds = %bb.a
  switch i16 %i.g, label %bb.e [
    i16 0, label %.thread159
    i16 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !36
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.l, align 8, !tbaa !36
  store i16 0, ptr %4, align 8, !tbaa !34
  br label %.thread159

bb.e:                                             ; preds = %bb.b, %bb.c
  br i1 %.not25.i127, label %bb.f, label %.thread159

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 1, ptr %i.m, align 8, !tbaa !36
  store i16 1, ptr %4, align 8, !tbaa !34
  br label %.thread159

.thread159:                                       ; preds = %bb.b, %bb.a, %sp_count_bits.exit139.thread, %sp_count_bits.exit139, %bb.d, %bb.f, %bb.e
  %i.n = phi i1 [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.b ], [ %i.c, %sp_count_bits.exit139 ], [ %i.a, %sp_count_bits.exit139.thread ], [ false, %bb.a ]
  %.194153163 = phi i32 [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ -98, %bb.b ], [ -98, %sp_count_bits.exit139 ], [ -98, %sp_count_bits.exit139.thread ], [ -98, %bb.a ] ; 2 uses
  %.1 = phi i32 [ 1, %bb.f ], [ 0, %bb.e ], [ 1, %bb.d ], [ 0, %bb.b ], [ 0, %sp_count_bits.exit139 ], [ 0, %sp_count_bits.exit139.thread ], [ 0, %bb.a ] ; 3 uses
  %i.o = or disjoint i32 %.1, %.194153163
  %or.cond11 = icmp eq i32 %i.o, 0
  br i1 %or.cond11, label %bb.g, label %_sp_cmp_abs.exit

bb.g:                                             ; preds = %.thread159
  %i.p = load i16, ptr %0, align 8, !tbaa !40     ; 5 uses
  %i.q = load i16, ptr %3, align 8, !tbaa !40     ; 2 uses
  %i.r = icmp ugt i16 %i.p, %i.q
  br i1 %i.r, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = icmp ult i16 %i.p, %i.q
  br i1 %i.s, label %_sp_cmp_abs.exit, label %.preheader.i140

.preheader.i140:                                  ; preds = %bb.h
  %.not = icmp eq i16 %i.p, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i140
  %i.t = zext i16 %i.p to i64
  br label %bb.j

bb.i:                                             ; preds = %bb.k
  %indvars.iv.next.i142213 = add nsw i64 %indvars.iv.i141212, -1
  %i.u = icmp sgt i64 %indvars.iv.i141212, 1
  br i1 %i.u, label %bb.j, label %.loopexit, !llvm.loop !1

bb.j:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv.i141212 = phi i64 [ %i.t, %.lr.ph ], [ %indvars.iv.next.i142213, %bb.i ] ; 4 uses
  %i.v = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.i141212
  %i.w = load i64, ptr %i.v, align 8, !tbaa !36   ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %3, i64 %indvars.iv.i141212
  %i.y = load i64, ptr %i.x, align 8, !tbaa !36   ; 2 uses
  %i.z = icmp ugt i64 %i.w, %i.y
  br i1 %i.z, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = icmp ult i64 %i.w, %i.y
  br i1 %i.aa, label %_sp_cmp_abs.exit, label %bb.i, !llvm.loop !1

.loopexit:                                        ; preds = %bb.i, %bb.j, %.preheader.i140, %bb.g
  %5 = icmp ne ptr %4, %1
  %6 = icmp ne ptr %4, %3
  %or.cond105.not = and i1 %5, %6
  br i1 %or.cond105.not, label %bb.l, label %sp_mod.exit

bb.l:                                             ; preds = %.loopexit
  %i.ab = icmp ugt i16 %i.p, 128
  %or.cond172.not.a = or i1 %i.n, %i.ab
  br i1 %or.cond172.not.a, label %_sp_cmp_abs.exit, label %7

7:                                                ; preds = %bb.l
  %8 = tail call i32 @sp_div(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %3, ptr noundef null, ptr noundef nonnull %4)
  %9 = freeze i32 %8
  br label %sp_mod.exit

sp_mod.exit:                                      ; preds = %7, %.loopexit
  %.3 = phi i32 [ -98, %.loopexit ], [ %9, %7 ]   ; 2 uses
  %i.ac = icmp eq i32 %.3, 0
  %spec.select173 = select i1 %i.ac, ptr %4, ptr %0
  br label %_sp_cmp_abs.exit

_sp_cmp_abs.exit:                                 ; preds = %bb.k, %sp_mod.exit, %bb.l, %bb.h, %.thread159
  %.096 = phi ptr [ %0, %.thread159 ], [ %spec.select173, %sp_mod.exit ], [ %0, %bb.h ], [ %0, %bb.l ], [ %0, %bb.k ] ; 5 uses
  %.4 = phi i32 [ %.194153163, %.thread159 ], [ %.3, %sp_mod.exit ], [ 0, %bb.h ], [ -98, %bb.l ], [ 0, %bb.k ] ; 3 uses
  %i.ad = or i32 %.4, %.1
  %or.cond13 = icmp eq i32 %i.ad, 0
  br i1 %or.cond13, label %bb.m, label %bb.o

bb.m:                                             ; preds = %_sp_cmp_abs.exit
  %i.ae = load i16, ptr %.096, align 8, !tbaa !40
  %i.af = icmp eq i16 %i.ae, 0
  br i1 %i.af, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.ag, align 8, !tbaa !36
  store i16 0, ptr %4, align 8, !tbaa !34
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %_sp_cmp_abs.exit
  %.2 = phi i32 [ 1, %bb.n ], [ 0, %bb.m ], [ %.1, %_sp_cmp_abs.exit ] ; 2 uses
  %i.ah = or i32 %.2, %.4
  %or.cond15 = icmp eq i32 %i.ah, 0
  br i1 %or.cond15, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ai = load i16, ptr %3, align 8, !tbaa !40
  %i.aj = zext i16 %i.ai to i32
  %i.ak = shl nuw nsw i32 %i.aj, 1
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.am = load i16, ptr %i.al, align 2, !tbaa !39
  %i.an = zext i16 %i.am to i32
  %.not99 = icmp samesign ult i32 %i.ak, %i.an
  %spec.select108 = select i1 %.not99, i32 0, i32 -98
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.5 = phi i32 [ %.4, %bb.o ], [ %spec.select108, %bb.p ] ; 2 uses
  %i.ao = or i32 %.5, %.2
  %or.cond19 = icmp eq i32 %i.ao, 0
  br i1 %or.cond19, label %bb.r, label %.critedge109

bb.r:                                             ; preds = %bb.q
  %i.ap = load i16, ptr %.096, align 8, !tbaa !40
  %i.aq = icmp eq i16 %i.ap, 1
  br i1 %i.aq, label %bb.s, label %._crit_edge

._crit_edge:                                      ; preds = %bb.r
  %.pr170.pre = load i16, ptr %3, align 8, !tbaa !40
  br label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %.096, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !36
  %i.at = icmp eq i64 %i.as, 2
  %.pr170.pre189 = load i16, ptr %3, align 8, !tbaa !40 ; 3 uses
  br i1 %i.at, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %.not100 = icmp eq i16 %.pr170.pre189, 0
  br i1 %.not100, label %.critedge, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !36
  %i.aw = and i64 %i.av, 1
  %.not101 = icmp eq i64 %i.aw, 0
  br i1 %.not101, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ax = tail call fastcc i32 @_sp_exptmod_base_2(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %3, ptr noundef %4)
  br label %.critedge109

bb.w:                                             ; preds = %._crit_edge, %bb.s, %bb.u
  %.pr170 = phi i16 [ %.pr170.pre, %._crit_edge ], [ %.pr170.pre189, %bb.s ], [ %.pr170.pre189, %bb.u ]
  %i.ay = icmp ugt i16 %.pr170, 1
  br i1 %i.ay, label %bb.x, label %.critedge

bb.x:                                             ; preds = %bb.w
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !36
  %i.bb = and i64 %i.ba, 1
  %.not102 = icmp eq i64 %i.bb, 0
  br i1 %.not102, label %.critedge, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bc = shl nsw i32 %2, 6
  %i.bd = tail call fastcc i32 @_sp_exptmod_mont_ex(ptr noundef nonnull %.096, ptr noundef %1, i32 noundef %i.bc, ptr noundef nonnull %3, ptr noundef %4)
  br label %.critedge109

.critedge:                                        ; preds = %bb.t, %bb.w, %bb.x
  %i.be = shl nsw i32 %2, 6
  %i.bf = tail call fastcc i32 @_sp_exptmod_ex(ptr noundef nonnull %.096, ptr noundef %1, i32 noundef %i.be, ptr noundef nonnull %3, ptr noundef %4)
  br label %.critedge109

.critedge109:                                     ; preds = %bb.q, %bb.y, %.critedge, %bb.v
  %.6 = phi i32 [ %i.ax, %bb.v ], [ %i.bd, %bb.y ], [ %i.bf, %.critedge ], [ %.5, %bb.q ]
  ret i32 %.6
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -98, 1) i32 @_sp_exptmod_base_2(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #11 {
bb.a:
  %i.a = load i16, ptr %2, align 8, !tbaa !40
  %.fr259 = freeze i16 %i.a                       ; 6 uses
  %i.b = zext i16 %.fr259 to i64
  %i.c = shl nuw nsw i64 %i.b, 2
  %i.d = add nuw nsw i64 %i.c, 4
  %i.e = alloca i64, i64 %i.d, align 16           ; 7 uses
  %i.f = icmp ugt i16 %.fr259, 1                  ; 5 uses
  %i.g = icmp ult i16 %.fr259, 65
  br i1 %i.g, label %.critedge144, label %.loopexit

.critedge144:                                     ; preds = %bb.a
  %i.h = shl nuw nsw i16 %.fr259, 1
  %i.i = or disjoint i16 %i.h, 1                  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.k = shl nuw nsw i16 %.fr259, 4
  %i.l = zext nneg i16 %i.k to i64
  %i.m = getelementptr i8, ptr %i.e, i64 %i.l     ; 4 uses
  %i.n = getelementptr i8, ptr %i.m, i64 16       ; 40 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 18
  store volatile i16 0, ptr %i.e, align 16, !tbaa !34
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store volatile i64 0, ptr %i.p, align 8, !tbaa !36
  store volatile i16 %i.i, ptr %i.j, align 2, !tbaa !37
  store volatile i16 0, ptr %i.n, align 16, !tbaa !34
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  store volatile i64 0, ptr %i.q, align 8, !tbaa !36
  store volatile i16 %i.i, ptr %i.o, align 2, !tbaa !37
  %i.r = icmp samesign ugt i16 %.fr259, 1
  br i1 %i.r, label %.thread168, label %.thread188

.thread188:                                       ; preds = %.critedge144
  store i64 1, ptr %i.q, align 8, !tbaa !36
  store i16 1, ptr %i.n, align 16, !tbaa !34
  br label %bb.d

.thread168:                                       ; preds = %.critedge144
  %i.s = getelementptr i8, ptr %2, i64 8
  %.val = load i64, ptr %i.s, align 8, !tbaa !36  ; 2 uses
  %i.t = mul i64 %.val, 3
  %i.u = xor i64 %i.t, 2                          ; 2 uses
  %i.v = mul i64 %i.u, %.val                      ; 2 uses
  %i.w = sub i64 1, %i.v                          ; 2 uses
  %i.x = sub i64 2, %i.v
  %i.y = mul i64 %i.x, %i.u
  %i.z = mul i64 %i.w, %i.w                       ; 3 uses
  %i.aa = add i64 %i.z, 1
  %i.ab = mul i64 %i.y, %i.aa
  %i.ac = mul i64 %i.z, %i.z                      ; 3 uses
  %i.ad = add i64 %i.ac, 1
  %i.ae = mul i64 %i.ab, %i.ad
  %i.af = mul i64 %i.ac, %i.ac
  %.neg.i = xor i64 %i.af, -1
  %.neg19.i = mul i64 %i.ae, %.neg.i
  %i.ag = call i32 @sp_mont_norm(ptr noundef nonnull %i.n, ptr noundef nonnull %2) ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 0
  %or.cond3 = and i1 %i.f, %i.ah
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.thread168
  %i.ai = call i32 @sp_mul_2d(ptr noundef nonnull %2, i32 noundef 32, ptr noundef nonnull %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread168
  %.2135 = phi i32 [ %i.ai, %bb.b ], [ %i.ag, %.thread168 ] ; 2 uses
  %i.aj = icmp eq i32 %.2135, 0
  br i1 %i.aj, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c, %.thread188
  %.0153166185198 = phi i64 [ 0, %.thread188 ], [ %.neg19.i, %bb.c ] ; 6 uses
  %i.ak = add nsw i32 %1, -2
  %i.al = sext i32 %1 to i64
  %i.am = getelementptr [8 x i8], ptr %0, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8, !tbaa !36 ; 2 uses
  %i.ao = shl nsw i32 %1, 6
  %i.ap = srem i32 %i.ao, 5                       ; 3 uses
  %.not = icmp eq i32 %i.ap, 0                    ; 2 uses
  %i.aq = sub nsw i32 64, %i.ap
  %narrow = select i1 %.not, i32 59, i32 %i.aq    ; 2 uses
  %.pn = zext nneg i32 %narrow to i64
  %narrow238 = select i1 %.not, i32 5, i32 %i.ap
  %.pn142 = zext nneg i32 %narrow238 to i64
  %.0129 = shl i64 %i.an, %.pn142
  %.0137.in = lshr i64 %i.an, %.pn
  %.0137 = trunc nuw nsw i64 %.0137.in to i32
  %i.ar = call i32 @sp_mul_2d(ptr noundef nonnull %i.n, i32 noundef %.0137, ptr noundef nonnull %i.n) ; 2 uses
  %i.as = icmp eq i32 %i.ar, 0
  %or.cond5 = and i1 %i.f, %i.as
  br i1 %or.cond5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.at = call i32 @sp_add(ptr noundef nonnull %i.n, ptr noundef nonnull %i.e, ptr noundef nonnull %i.n)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.4 = phi i32 [ %i.at, %bb.e ], [ %i.ar, %bb.d ] ; 2 uses
  %i.au = icmp eq i32 %.4, 0
  br i1 %i.au, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.av = load i16, ptr %i.n, align 16, !tbaa !40
  %i.aw = icmp ult i16 %i.av, 129
end_hunk_1
begin_hunk_2_@sp_mod_2d:bb.a
bb.c:                                             ; preds = %.thread
  %i.k = zext i16 %.pre to i32
  %i.l = tail call i32 @llvm.umin.i32(i32 %i.e, i32 %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = shl nuw nsw i32 %i.l, 3
  %i.p = zext nneg i32 %i.o to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %i.n, i64 %i.p, i1 false)
  %i.q = load i16, ptr %0, align 8, !tbaa !40     ; 2 uses
  store i16 %i.q, ptr %2, align 8, !tbaa !40
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread
  %i.r = phi i16 [ %i.q, %bb.c ], [ %.pre, %.thread ]
  %i.s = zext i16 %i.r to i32
  %.not55 = icmp samesign ugt i32 %i.e, %i.s
  br i1 %.not55, label %.thread65, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i16 %i.j, ptr %2, align 8, !tbaa !40
  %i.t = and i32 %1, 63                           ; 2 uses
  %.not56 = icmp eq i32 %i.t, 0
  br i1 %.not56, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = zext nneg i32 %i.t to i64
  %notmask = shl nsw i64 -1, %i.u
  %i.v = xor i64 %notmask, -1
  %i.w = zext nneg i32 %i.e to i64
  %i.x = getelementptr [8 x i8], ptr %2, i64 %i.w ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !36
  %i.z = and i64 %i.y, %i.v
  store i64 %i.z, ptr %i.x, align 8, !tbaa !36
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.not57 = icmp eq i32 %i.e, 0
  br i1 %.not57, label %.thread65, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.aa = lshr i32 %i.d, 6                        ; 3 uses
  %i.ab = sub nsw i32 %i.aa, %i.e                 ; 2 uses
  %.not76 = icmp eq i32 %i.aa, 0
  br i1 %.not76, label %.split.loop.exit72, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ac = zext nneg i32 %i.aa to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next = add nsw i64 %indvars.iv75, -1
  %i.ad = icmp sgt i64 %indvars.iv75, 1
  br i1 %i.ad, label %bb.i, label %.split.loop.exit72, !llvm.loop !160

bb.i:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv75 = phi i64 [ %i.ac, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 4 uses
  %i.ae = getelementptr [8 x i8], ptr %2, i64 %indvars.iv75
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !36
  %.not58 = icmp eq i64 %i.af, 0
  br i1 %.not58, label %bb.h, label %.split.loop.exit, !llvm.loop !160

.split.loop.exit:                                 ; preds = %bb.i
  %i.ag = trunc nuw nsw i64 %indvars.iv75 to i32
  br label %.split.loop.exit72

.split.loop.exit72:                               ; preds = %bb.h, %.preheader, %.split.loop.exit
  %.0.in.lcssa = phi i32 [ %i.ag, %.split.loop.exit ], [ %i.ab, %.preheader ], [ %i.ab, %bb.h ]
  %i.ah = trunc nuw i32 %.0.in.lcssa to i16
  store i16 %i.ah, ptr %2, align 8, !tbaa !40
  br label %.thread65

.thread65:                                        ; preds = %bb.a, %bb.b, %bb.g, %.split.loop.exit72, %bb.d
  %.162 = phi i32 [ 0, %bb.g ], [ 0, %.split.loop.exit72 ], [ 0, %bb.d ], [ -98, %bb.b ], [ -98, %bb.a ]
  ret i32 %.162
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 -98, 1) i32 @sp_mul_2d(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, ptr nofree noundef captures(address) %2) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %2, null
  %or.cond.not22 = and i1 %i.a, %i.b
  %i.c = icmp sgt i32 %1, -1
  %or.cond3.not = and i1 %i.c, %or.cond.not22
  br i1 %or.cond3.not, label %bb.b, label %sp_copy.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i16, ptr %0, align 8, !tbaa !40     ; 4 uses
  %.not25.i = icmp eq i16 %i.d, 0                 ; 2 uses
  br i1 %.not25.i, label %sp_count_bits.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = zext i16 %i.d to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.f = icmp sgt i64 %indvars.iv.i51, 1
  br i1 %i.f, label %bb.e, label %sp_count_bits.exit, !llvm.loop !2

bb.e:                                             ; preds = %bb.c, %bb.d
  %indvars.iv.i51 = phi i64 [ %i.e, %bb.c ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i51, -1 ; 2 uses
  %i.g = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.i51
  %i.h = load i64, ptr %i.g, align 8, !tbaa !36   ; 5 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.d, label %.critedge.i, !llvm.loop !2

.critedge.i:                                      ; preds = %bb.e
  %i.j = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.k = shl nuw nsw i32 %i.j, 6                  ; 2 uses
  %i.l = icmp ugt i64 %i.h, 4294967295
  br i1 %i.l, label %bb.f, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.critedge.i
  %i.m = tail call range(i64 32, 65) i64 @llvm.ctlz.i64(i64 %i.h, i1 true)
  %i.n = trunc nuw nsw i64 %i.m to i32
  %reass.sub.i = add nuw nsw i32 %i.k, 64
  %i.o = sub nuw nsw i32 %reass.sub.i, %i.n
  br label %sp_count_bits.exit

bb.f:                                             ; preds = %.critedge.i
  %i.p = add nuw nsw i32 %i.k, 64                 ; 2 uses
  %i.q = icmp sgt i64 %i.h, -1
  br i1 %i.q, label %.lr.ph36.i, label %sp_count_bits.exit

.lr.ph36.i:                                       ; preds = %bb.f, %.lr.ph36.i
  %.035.i = phi i64 [ %i.s, %.lr.ph36.i ], [ %i.h, %bb.f ]
  %.234.i = phi i32 [ %i.r, %.lr.ph36.i ], [ %i.p, %bb.f ]
  %i.r = add nsw i32 %.234.i, -1                  ; 2 uses
  %i.s = shl nuw i64 %.035.i, 1                   ; 2 uses
  %i.t = icmp sgt i64 %i.s, -1
  br i1 %i.t, label %.lr.ph36.i, label %sp_count_bits.exit, !llvm.loop !3

sp_count_bits.exit:                               ; preds = %bb.d, %.lr.ph36.i, %bb.b, %.lr.ph.preheader.i, %bb.f
  %.5.i = phi i32 [ %i.p, %bb.f ], [ %i.r, %.lr.ph36.i ], [ %i.o, %.lr.ph.preheader.i ], [ 0, %bb.b ], [ 0, %bb.d ]
  %i.u = add nsw i32 %.5.i, %1
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.w = load i16, ptr %i.v, align 2, !tbaa !39   ; 2 uses
  %i.x = zext i16 %i.w to i32                     ; 3 uses
  %i.y = shl nuw nsw i32 %i.x, 6
  %i.z = icmp ugt i32 %i.u, %i.y
  br i1 %i.z, label %sp_copy.exit, label %.thread

.thread:                                          ; preds = %sp_count_bits.exit
  %.not = icmp eq ptr %0, %2
  br i1 %.not, label %thread-pre-split, label %bb.g

bb.g:                                             ; preds = %.thread
  %i.aa = icmp ugt i16 %i.d, %i.w
  br i1 %i.aa, label %sp_copy.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.g
  br i1 %.not25.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread.i
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ab, align 8, !tbaa !36
  br label %_sp_copy.exit.i

bb.i:                                             ; preds = %.thread.i
  %i.ac = zext i16 %i.d to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = shl nuw nsw i64 %i.ac, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr nonnull readonly align 8 %i.ae, i64 %i.af, i1 false)
  %.pre.i.i = load i16, ptr %0, align 8, !tbaa !40
  br label %_sp_copy.exit.i

_sp_copy.exit.i:                                  ; preds = %bb.i, %bb.h
  %i.ag = phi i16 [ %.pre.i.i, %bb.i ], [ 0, %bb.h ] ; 2 uses
  store i16 %i.ag, ptr %2, align 8, !tbaa !40
  br label %bb.j

thread-pre-split:                                 ; preds = %.thread
  %.pr = load i16, ptr %2, align 8, !tbaa !40
  br label %bb.j

bb.j:                                             ; preds = %thread-pre-split, %_sp_copy.exit.i
  %i.ah = phi i16 [ %.pr, %thread-pre-split ], [ %i.ag, %_sp_copy.exit.i ] ; 9 uses
  %i.ai = zext i16 %i.ah to i32                   ; 5 uses
  %.not.i25 = icmp eq i16 %i.ah, 0
  br i1 %.not.i25, label %sp_copy.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = trunc i32 %1 to i16
  %i.ak = lshr i16 %i.aj, 6                       ; 7 uses
  %i.al = and i32 %1, 63                          ; 3 uses
  %.not54.i = icmp eq i32 %i.al, 0
  br i1 %.not54.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = zext nneg i16 %i.ak to i32              ; 7 uses
  %i.an = add nuw nsw i32 %i.ai, %i.am
  %.not55.i = icmp samesign ult i32 %i.an, %i.x
  br i1 %.not55.i, label %.thread73.i, label %sp_copy.exit

bb.m:                                             ; preds = %bb.k
  %.not56.i = icmp eq i16 %i.ak, 0
  br i1 %.not56.i, label %.thread70.i, label %3

.thread73.i:                                      ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 11 uses
  %i.ap = add nsw i32 %i.ai, -1                   ; 2 uses
  %i.aq = zext nneg i32 %i.ap to i64              ; 10 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !36
  %i.at = sub nuw nsw i32 64, %i.al
  %i.au = zext nneg i32 %i.at to i64              ; 5 uses
  %i.av = lshr i64 %i.as, %i.au                   ; 2 uses
  %.not5883.i = icmp eq i32 %i.ap, 0
  %.pre.i = zext nneg i32 %i.al to i64            ; 5 uses
  br i1 %.not5883.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.thread73.i
  %min.iters.check = icmp ult i16 %i.ah, 23
  br i1 %min.iters.check, label %.lr.ph.i.preheader58, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.preheader
  %i.aw = add nsw i64 %i.aq, -1                   ; 2 uses
  %i.ax = add nuw nsw i32 %i.am, %i.ai
  %i.ay = add nsw i32 %i.ax, -1
  %i.az = trunc nsw i64 %i.aw to i32
  %i.ba = icmp ult i32 %i.ay, %i.az
  %i.bb = icmp ugt i64 %i.aw, 4294967295
  %i.bc = or i1 %i.ba, %i.bb
  br i1 %i.bc, label %.lr.ph.i.preheader58, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bd = shl nuw nsw i64 %i.aq, 3                ; 2 uses
  %i.be = add nuw nsw i32 %i.am, %i.ai
  %i.bf = add nsw i32 %i.be, -1
  %i.bg = zext i32 %i.bf to i64
  %i.bh = shl nuw nsw i64 %i.bg, 3                ; 2 uses
  %i.bi = sub nsw i64 %i.bh, %i.bd
  %diff.check = icmp ugt i64 %i.bi, -32
  %i.bj = sub nsw i64 %i.bd, %i.bh
  %i.bk = add nsw i64 %i.bj, -9
  %diff.check52 = icmp ult i64 %i.bk, 31
  %conflict.rdx = or i1 %diff.check, %diff.check52
  br i1 %conflict.rdx, label %.lr.ph.i.preheader58, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aq, 2147483644              ; 2 uses
  %i.bl = and i64 %i.aq, 3
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.pre.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert53 = insertelement <2 x i64> poison, i64 %i.au, i64 0
  %broadcast.splat54 = shufflevector <2 x i64> %broadcast.splatinsert53, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bm = sub i64 %i.aq, %index                   ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -8
  %i.bp = getelementptr inbounds i8, ptr %i.bn, i64 -24
  %wide.load = load <2 x i64>, ptr %i.bo, align 8, !tbaa !36
  %wide.load55 = load <2 x i64>, ptr %i.bp, align 8, !tbaa !36
  %i.bq = shl <2 x i64> %wide.load, %broadcast.splat
  %i.br = shl <2 x i64> %wide.load55, %broadcast.splat
  %i.bs = getelementptr [8 x i8], ptr %2, i64 %i.bm ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 -8
  %i.bu = getelementptr i8, ptr %i.bs, i64 -24
  %wide.load56 = load <2 x i64>, ptr %i.bt, align 8, !tbaa !36
  %wide.load57 = load <2 x i64>, ptr %i.bu, align 8, !tbaa !36
  %i.bv = lshr <2 x i64> %wide.load56, %broadcast.splat54
  %i.bw = lshr <2 x i64> %wide.load57, %broadcast.splat54
  %i.bx = or <2 x i64> %i.bv, %i.bq
  %i.by = or <2 x i64> %i.bw, %i.br
  %i.bz = trunc nuw i64 %i.bm to i32
  %i.ca = add i32 %i.bz, %i.am
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.cb ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -8
  %i.ce = getelementptr inbounds i8, ptr %i.cc, i64 -24
  store <2 x i64> %i.bx, ptr %i.cd, align 8, !tbaa !36
  store <2 x i64> %i.by, ptr %i.ce, align 8, !tbaa !36
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !161

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.aq
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader58

.lr.ph.i.preheader58:                             ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i27.ph = phi i64 [ %i.aq, %vector.memcheck ], [ %i.aq, %vector.scevcheck ], [ %i.aq, %.lr.ph.i.preheader ], [ %i.bl, %middle.block ] ; 7 uses
  %xtraiter = and i64 %indvars.iv.i27.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader58
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.i27.ph
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !36
  %i.ci = shl i64 %i.ch, %.pre.i
  %i.cj = add nsw i64 %indvars.iv.i27.ph, -1
  %i.ck = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.i27.ph
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !36
  %i.cm = lshr i64 %i.cl, %i.au
  %i.cn = or i64 %i.cm, %i.ci
  %i.co = trunc nuw nsw i64 %indvars.iv.i27.ph to i32
  %i.cp = add nuw i32 %i.co, %i.am
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.cq
  store i64 %i.cn, ptr %i.cr, align 8, !tbaa !36
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader58
  %indvars.iv.i27.unr = phi i64 [ %indvars.iv.i27.ph, %.lr.ph.i.preheader58 ], [ %i.cj, %.lr.ph.i.prol ]
  %i.cs = icmp eq i64 %indvars.iv.i27.ph, 1
  br i1 %i.cs, label %._crit_edge.i, label %.lr.ph.i

3:                                                ; preds = %bb.m
  %4 = zext nneg i16 %i.ak to i32
  %5 = add nuw nsw i32 %i.ai, %4
  %.not82.i = icmp samesign ugt i32 %5, %i.x
  br i1 %.not82.i, label %sp_copy.exit, label %bb.o

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i27 = phi i64 [ %i.di, %.lr.ph.i ], [ %indvars.iv.i27.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.i27
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !36
  %i.cv = shl i64 %i.cu, %.pre.i
  %i.cw = add nsw i64 %indvars.iv.i27, -1         ; 2 uses
  %i.cx = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.i27
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !36
  %i.cz = lshr i64 %i.cy, %i.au
  %i.da = or i64 %i.cz, %i.cv
  %i.db = trunc nuw i64 %indvars.iv.i27 to i32
  %i.dc = add i32 %i.db, %i.am
  %i.dd = zext i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.dd
  store i64 %i.da, ptr %i.de, align 8, !tbaa !36
  %i.df = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.i27
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !36
  %i.dh = shl i64 %i.dg, %.pre.i
  %i.di = add nsw i64 %indvars.iv.i27, -2         ; 2 uses
  %i.dj = getelementptr [8 x i8], ptr %2, i64 %i.cw
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !36
  %i.dl = lshr i64 %i.dk, %i.au
  %i.dm = or i64 %i.dl, %i.dh
  %i.dn = trunc nuw i64 %i.cw to i32
  %i.do = add i32 %i.dn, %i.am
  %i.dp = zext i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.dp
  store i64 %i.dm, ptr %i.dq, align 8, !tbaa !36
  %.not58.wide.i.1 = icmp eq i64 %i.di, 0
  br i1 %.not58.wide.i.1, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !162

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %.thread73.i
  %i.dr = load i64, ptr %i.ao, align 8, !tbaa !36
  %i.ds = shl i64 %i.dr, %.pre.i
  %i.dt = zext nneg i16 %i.ak to i64              ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.dt
  store i64 %i.ds, ptr %i.du, align 8, !tbaa !36
  %.not59.i = icmp eq i64 %i.av, 0
  br i1 %.not59.i, label %.thread70.i, label %bb.n

bb.n:                                             ; preds = %._crit_edge.i
  %i.dv = zext i16 %i.ah to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.dv
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.dt
  store i64 %i.av, ptr %i.dx, align 8, !tbaa !36
  %i.dy = add i16 %i.ah, 1
  br label %.thread70.i

bb.o:                                             ; preds = %3
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ea = zext nneg i16 %i.ak to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.ea
  %i.ec = zext i16 %i.ah to i64
  %i.ed = shl nuw nsw i64 %i.ec, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eb, ptr nonnull align 8 %i.dz, i64 %i.ed, i1 false)
  br label %.thread70.i

.thread70.i:                                      ; preds = %bb.o, %bb.n, %._crit_edge.i, %bb.m
  %i.ee = phi i16 [ %i.ah, %._crit_edge.i ], [ %i.dy, %bb.n ], [ %i.ah, %bb.o ], [ %i.ah, %bb.m ]
  %i.ef = add i16 %i.ee, %i.ak
  store i16 %i.ef, ptr %2, align 8, !tbaa !40
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eh = shl nuw nsw i16 %i.ak, 3
  %i.ei = zext nneg i16 %i.eh to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.eg, i8 0, i64 %i.ei, i1 false)
  br label %sp_copy.exit

sp_copy.exit:                                     ; preds = %bb.a, %sp_count_bits.exit, %bb.g, %.thread70.i, %3, %bb.l, %bb.j
  %.3 = phi i32 [ -98, %sp_count_bits.exit ], [ -98, %bb.l ], [ 0, %bb.j ], [ 0, %.thread70.i ], [ -98, %3 ], [ -98, %bb.g ], [ -98, %bb.a ]
  ret i32 %.3
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define range(i32 -98, 1) i32 @sp_sqr(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond.not = and i1 %i.a, %i.b
  br i1 %or.cond.not, label %bb.b, label %.thread17

bb.b:                                             ; preds = %bb.a
  %i.c = load i16, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.d = zext i16 %i.c to i32
  %i.e = shl nuw nsw i32 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !39
  %i.h = zext i16 %i.g to i32
  %i.i = icmp samesign ugt i32 %i.e, %i.h
  br i1 %i.i, label %.thread17, label %.thread

.thread:                                          ; preds = %bb.b
  switch i16 %i.c, label %bb.l [
    i16 0, label %bb.c
    i16 4, label %bb.d
  ]

bb.c:                                             ; preds = %.thread
  store volatile i16 0, ptr %1, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store volatile i64 0, ptr %i.j, align 8, !tbaa !36
  br label %.thread17

bb.d:                                             ; preds = %.thread
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !36
  %i.m = zext i64 %i.l to i128                    ; 5 uses
  %i.n = mul nuw i128 %i.m, %i.m                  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !36
  %i.q = zext i64 %i.p to i128                    ; 5 uses
  %i.r = mul nuw i128 %i.q, %i.m                  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !36
  %i.u = zext i64 %i.t to i128                    ; 5 uses
  %i.v = mul nuw i128 %i.u, %i.m                  ; 2 uses
  %i.w = mul nuw i128 %i.q, %i.q                  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load i64, ptr %i.x, align 8, !tbaa !36
  %i.z = zext i64 %i.y to i128                    ; 5 uses
  %i.aa = mul nuw i128 %i.z, %i.m                 ; 2 uses
  %i.ab = mul nuw i128 %i.u, %i.q                 ; 2 uses
  %i.ac = mul nuw i128 %i.z, %i.q                 ; 2 uses
  %i.ad = mul nuw i128 %i.u, %i.u                 ; 2 uses
  %i.ae = mul nuw i128 %i.z, %i.u                 ; 2 uses
  %i.af = mul nuw i128 %i.z, %i.z                 ; 2 uses
  %i.ag = trunc i128 %i.n to i64                  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !36
  %i.ai = lshr i128 %i.n, 64
  %i.aj = shl i128 %i.r, 1
  %reass.add.i = and i128 %i.aj, 36893488147419103230
  %i.ak = add nuw nsw i128 %reass.add.i, %i.ai    ; 2 uses
  %i.al = trunc i128 %i.ak to i64                 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.al, ptr %i.am, align 8, !tbaa !36
  %i.an = lshr i128 %i.ak, 64
  %i.ao = lshr i128 %i.r, 63
  %reass.add113.i = and i128 %i.ao, 36893488147419103230
  %i.ap = shl i128 %i.v, 1
  %reass.add114.i = and i128 %i.ap, 36893488147419103230
  %i.aq = and i128 %i.w, 18446744073709551615
  %i.ar = add nuw nsw i128 %reass.add113.i, %i.aq
  %i.as = add nuw nsw i128 %i.ar, %reass.add114.i
  %i.at = add nuw nsw i128 %i.as, %i.an           ; 2 uses
  %i.au = trunc i128 %i.at to i64                 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.au, ptr %i.av, align 8, !tbaa !36
  %i.aw = lshr i128 %i.at, 64
  %i.ax = lshr i128 %i.v, 63
  %reass.add115.i = and i128 %i.ax, 36893488147419103230
  %i.ay = lshr i128 %i.w, 64
  %i.az = shl i128 %i.aa, 1
  %reass.add116.i = and i128 %i.az, 36893488147419103230
  %i.ba = shl i128 %i.ab, 1
  %reass.add117.i = and i128 %i.ba, 36893488147419103230
  %i.bb = add nuw nsw i128 %reass.add115.i, %i.ay
  %i.bc = add nuw nsw i128 %i.bb, %reass.add117.i
  %i.bd = add nuw nsw i128 %i.bc, %reass.add116.i
  %i.be = add nuw nsw i128 %i.bd, %i.aw           ; 2 uses
  %i.bf = trunc i128 %i.be to i64                 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !36
  %i.bh = lshr i128 %i.be, 64
  %i.bi = lshr i128 %i.aa, 63
  %reass.add118.i = and i128 %i.bi, 36893488147419103230
  %i.bj = lshr i128 %i.ab, 63
  %reass.add119.i = and i128 %i.bj, 36893488147419103230
  %i.bk = shl i128 %i.ac, 1
  %reass.add120.i = and i128 %i.bk, 36893488147419103230
  %i.bl = and i128 %i.ad, 18446744073709551615
  %i.bm = add nuw nsw i128 %reass.add119.i, %i.bl
  %i.bn = add nuw nsw i128 %i.bm, %reass.add118.i
  %i.bo = add nuw nsw i128 %i.bn, %reass.add120.i
  %i.bp = add nuw nsw i128 %i.bo, %i.bh           ; 2 uses
  %i.bq = trunc i128 %i.bp to i64                 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !36
  %i.bs = lshr i128 %i.bp, 64
  %i.bt = lshr i128 %i.ac, 63
  %reass.add121.i = and i128 %i.bt, 36893488147419103230
  %i.bu = lshr i128 %i.ad, 64
  %i.bv = shl i128 %i.ae, 1
  %reass.add122.i = and i128 %i.bv, 36893488147419103230
  %i.bw = add nuw nsw i128 %reass.add121.i, %i.bu
  %i.bx = add nuw nsw i128 %i.bw, %reass.add122.i
  %i.by = add nuw nsw i128 %i.bx, %i.bs           ; 2 uses
  %i.bz = trunc i128 %i.by to i64                 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !36
  %i.cb = lshr i128 %i.by, 64
  %i.cc = lshr i128 %i.ae, 63
  %reass.add123.i = and i128 %i.cc, 36893488147419103230
  %i.cd = and i128 %i.af, 18446744073709551615
  %i.ce = add nuw nsw i128 %reass.add123.i, %i.cd
  %i.cf = add nuw nsw i128 %i.ce, %i.cb           ; 2 uses
  %i.cg = trunc i128 %i.cf to i64                 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !36
  %i.ci = lshr i128 %i.cf, 64
  %i.cj = lshr i128 %i.af, 64
end_hunk_2
