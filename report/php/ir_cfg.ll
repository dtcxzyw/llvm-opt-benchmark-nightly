inline.NumInlined: 22
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@ir_build_dominators_tree:ir_array_init.exit
  %i.bn = phi ptr [ %i.v, %.lr.ph180 ], [ %i.am, %ir_array_set.exit ], [ %i.be, %ir_array_set.exit138 ] ; 2 uses
  %.1105 = phi i32 [ %i.x, %.lr.ph180 ], [ %i.ap, %ir_array_set.exit ], [ %i.bh, %ir_array_set.exit138 ]
  %.1102 = phi ptr [ %i.ab, %.lr.ph180 ], [ %i.aq, %ir_array_set.exit ], [ %i.bi, %ir_array_set.exit138 ]
  %.097 = phi i32 [ %i.ac, %.lr.ph180 ], [ %i.ar, %ir_array_set.exit ], [ %i.bj, %ir_array_set.exit138 ] ; 2 uses
  %i.bo = add i32 %.1105, -1                      ; 2 uses
  %.not132171 = icmp eq i32 %i.bo, 0
  br i1 %.not132171, label %._crit_edge, label %.lr.ph174

.lr.ph174:                                        ; preds = %.loopexit145, %.loopexit144
  %i.bp = phi ptr [ %i.cq, %.loopexit144 ], [ %i.bl, %.loopexit145 ] ; 3 uses
  %i.bq = phi ptr [ %i.cr, %.loopexit144 ], [ %i.bm, %.loopexit145 ] ; 2 uses
  %i.br = phi ptr [ %i.cs, %.loopexit144 ], [ %i.bn, %.loopexit145 ] ; 2 uses
  %i.bs = phi i32 [ %i.ct, %.loopexit144 ], [ %i.bo, %.loopexit145 ]
  %.198173 = phi i32 [ %.4, %.loopexit144 ], [ %.097, %.loopexit145 ] ; 4 uses
  %.2103172 = phi ptr [ %i.bt, %.loopexit144 ], [ %.1102, %.loopexit145 ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.2103172, i64 4 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !41 ; 4 uses
  %i.bv = icmp ult i32 %i.bu, %.0110177
  br i1 %i.bv, label %.preheader143, label %bb.e

.preheader143:                                    ; preds = %.lr.ph174
  %.not133167 = icmp eq i32 %.198173, %i.bu
  br i1 %.not133167, label %.loopexit144, label %.preheader142

.loopexit:                                        ; preds = %.lr.ph165, %.preheader141
  %.3100.lcssa = phi i32 [ %.299168, %.preheader141 ], [ %i.cg, %.lr.ph165 ] ; 2 uses
  %.not133 = icmp eq i32 %.3100.lcssa, %.194.lcssa
  br i1 %.not133, label %.loopexit144, label %.preheader142, !llvm.loop !98

.preheader142:                                    ; preds = %.preheader143, %.loopexit
  %.093169 = phi i32 [ %.194.lcssa, %.loopexit ], [ %i.bu, %.preheader143 ] ; 3 uses
  %.299168 = phi i32 [ %.3100.lcssa, %.loopexit ], [ %.198173, %.preheader143 ] ; 5 uses
  %i.bw = icmp ugt i32 %.093169, %.299168
  br i1 %i.bw, label %.lr.ph162, label %.preheader141

.preheader141:                                    ; preds = %.lr.ph162, %.preheader142
  %.194.lcssa = phi i32 [ %.093169, %.preheader142 ], [ %i.cb, %.lr.ph162 ] ; 5 uses
  %i.bx = icmp ugt i32 %.299168, %.194.lcssa
  br i1 %i.bx, label %.lr.ph165, label %.loopexit

.lr.ph162:                                        ; preds = %.preheader142, %.lr.ph162
  %.194161 = phi i32 [ %i.cb, %.lr.ph162 ], [ %.093169, %.preheader142 ]
  %i.by = zext i32 %.194161 to i64
  %i.bz = getelementptr inbounds nuw [52 x i8], ptr %i.m, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 28
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !39 ; 3 uses
  %i.cc = icmp ugt i32 %i.cb, %.299168
  br i1 %i.cc, label %.lr.ph162, label %.preheader141, !llvm.loop !99

.lr.ph165:                                        ; preds = %.preheader141, %.lr.ph165
  %.3100164 = phi i32 [ %i.cg, %.lr.ph165 ], [ %.299168, %.preheader141 ]
  %i.cd = zext i32 %.3100164 to i64
  %i.ce = getelementptr inbounds nuw [52 x i8], ptr %i.m, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 28
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !39 ; 3 uses
  %i.ch = icmp ugt i32 %i.cg, %.194.lcssa
  br i1 %i.ch, label %.lr.ph165, label %.loopexit, !llvm.loop !100

bb.e:                                             ; preds = %.lr.ph174
  %i.ci = load i32, ptr %i.i, align 4, !tbaa !62
  %i.cj = and i32 %i.ci, -33554433
  store i32 %i.cj, ptr %i.i, align 4, !tbaa !62
  %i.ck = load i32, ptr %i.h, align 8, !tbaa !93  ; 3 uses
  %i.cl = add i32 %i.ck, 1                        ; 2 uses
  store i32 %i.cl, ptr %i.h, align 8, !tbaa !93
  %i.cm = load i32, ptr %i.g, align 8, !tbaa !92
  %.not.i139 = icmp ult i32 %i.ck, %i.cm
  br i1 %.not.i139, label %ir_array_set.exit140, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @ir_array_grow(ptr noundef nonnull %1, i32 noundef %i.cl) #17
  %.pre203 = load ptr, ptr %1, align 8, !tbaa !90
  br label %ir_array_set.exit140

ir_array_set.exit140:                             ; preds = %bb.e, %bb.f
  %i.cn = phi ptr [ %i.bp, %bb.e ], [ %.pre203, %bb.f ] ; 4 uses
  %i.co = zext i32 %i.ck to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.co
  store i32 %i.bu, ptr %i.cp, align 4, !tbaa !41
  br label %.loopexit144

.loopexit144:                                     ; preds = %.loopexit, %.preheader143, %ir_array_set.exit140
  %i.cq = phi ptr [ %i.cn, %ir_array_set.exit140 ], [ %i.bp, %.preheader143 ], [ %i.bp, %.loopexit ] ; 2 uses
  %i.cr = phi ptr [ %i.cn, %ir_array_set.exit140 ], [ %i.bq, %.preheader143 ], [ %i.bq, %.loopexit ] ; 2 uses
  %i.cs = phi ptr [ %i.cn, %ir_array_set.exit140 ], [ %i.br, %.preheader143 ], [ %i.br, %.loopexit ] ; 2 uses
  %.4 = phi i32 [ %.198173, %ir_array_set.exit140 ], [ %.198173, %.preheader143 ], [ %.194.lcssa, %.loopexit ] ; 2 uses
  %i.ct = add i32 %i.bs, -1                       ; 2 uses
  %.not132 = icmp eq i32 %i.ct, 0
  br i1 %.not132, label %._crit_edge, label %.lr.ph174, !llvm.loop !101

._crit_edge:                                      ; preds = %.loopexit144, %.loopexit145
  %i.cu = phi ptr [ %i.bl, %.loopexit145 ], [ %i.cq, %.loopexit144 ] ; 4 uses
  %i.cv = phi ptr [ %i.bm, %.loopexit145 ], [ %i.cr, %.loopexit144 ]
  %i.cw = phi ptr [ %i.bn, %.loopexit145 ], [ %i.cs, %.loopexit144 ]
  %.198.lcssa = phi i32 [ %.097, %.loopexit145 ], [ %.4, %.loopexit144 ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.0107179, i64 28
  store i32 %.198.lcssa, ptr %i.cx, align 4, !tbaa !39
  %i.cy = zext i32 %.198.lcssa to i64
  %i.cz = getelementptr inbounds nuw [52 x i8], ptr %i.m, i64 %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.db = load i32, ptr %i.da, align 4, !tbaa !39
  %i.dc = add i32 %i.db, 1
  %i.dd = getelementptr inbounds nuw i8, ptr %.0107179, i64 32
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !39
  %i.de = add i32 %.0110177, 1                    ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.0107179, i64 52
  %.not = icmp ugt i32 %i.de, %i.p
  br i1 %.not, label %._crit_edge181, label %.lr.ph180, !llvm.loop !102

._crit_edge181:                                   ; preds = %._crit_edge
  %.pre204 = load i32, ptr %i.h, align 8, !tbaa !93 ; 2 uses
  store i32 0, ptr %i.q, align 4, !tbaa !39
  %.not124 = icmp eq i32 %.pre204, 0
  br i1 %.not124, label %.lr.ph189.preheader, label %.preheader

.preheader:                                       ; preds = %._crit_edge181
  %i.dg = load ptr, ptr %i.n, align 8, !tbaa !34  ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %bb.k
  %i.dh = phi i32 [ %.pre204, %.preheader ], [ %i.di, %bb.k ]
  %i.di = add i32 %i.dh, -1                       ; 4 uses
  store i32 %i.di, ptr %i.h, align 8, !tbaa !93
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !41 ; 2 uses
  %i.dm = zext i32 %i.dl to i64                   ; 2 uses
  %i.dn = getelementptr inbounds nuw [52 x i8], ptr %i.m, i64 %i.dm ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 12
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !67 ; 2 uses
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !41 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !68
  switch i32 %i.du, label %bb.l [
    i32 1, label %bb.j
    i32 2, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.dv = zext i32 %i.ds to i64
  %i.dw = getelementptr inbounds nuw [52 x i8], ptr %i.m, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !70
  %i.dy = and i32 %i.dx, 4
  %.not127 = icmp eq i32 %i.dy, 0
  %i.dz = add i32 %i.dp, 1
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !41 ; 2 uses
  br i1 %.not127, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [52 x i8], ptr %i.m, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !70
  %i.eg = and i32 %i.ef, 4
  %.not128 = icmp eq i32 %i.eg, 0
  br i1 %.not128, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.i
  %.092 = phi i32 [ %i.ds, %bb.g ], [ %i.ds, %bb.i ], [ %i.ec, %bb.h ] ; 2 uses
  %i.eh = zext i32 %.092 to i64
  %i.ei = getelementptr inbounds nuw [52 x i8], ptr %i.m, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !39 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.em = load i32, ptr %i.el, align 4, !tbaa !39
  %i.en = icmp ugt i32 %i.em, %i.ek
  br i1 %i.en, label %.lr.ph184, label %._crit_edge185

.lr.ph184:                                        ; preds = %bb.j, %.lr.ph184
  %i.eo = phi i64 [ %i.es, %.lr.ph184 ], [ %i.dm, %bb.j ]
  %i.ep = getelementptr inbounds nuw [52 x i8], ptr %i.m, i64 %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 28
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !39 ; 2 uses
  %i.es = zext i32 %i.er to i64                   ; 2 uses
  %i.et = getelementptr inbounds nuw [52 x i8], ptr %i.m, i64 %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !39
  %i.ew = icmp ugt i32 %i.ev, %i.ek
  br i1 %i.ew, label %.lr.ph184, label %._crit_edge185, !llvm.loop !103

._crit_edge185:                                   ; preds = %.lr.ph184, %bb.j
  %.1111.lcssa = phi i32 [ %i.dl, %bb.j ], [ %i.er, %.lr.ph184 ]
  %.not129 = icmp eq i32 %.1111.lcssa, %.092
  br i1 %.not129, label %bb.k, label %bb.l, !prof !95

bb.k:                                             ; preds = %._crit_edge185
  %.not130 = icmp eq i32 %i.di, 0
  br i1 %.not130, label %.lr.ph189.preheader, label %bb.g, !llvm.loop !104

bb.l:                                             ; preds = %bb.g, %bb.i, %._crit_edge185
  call void @_efree(ptr noundef nonnull %i.cu) #17
  store ptr null, ptr %1, align 8, !tbaa !90
  store i32 0, ptr %i.g, align 8, !tbaa !92
  store i32 0, ptr %i.h, align 8, !tbaa !93
  %i.ex = load ptr, ptr %i.l, align 8, !tbaa !33  ; 18 uses
  %i.ey = load ptr, ptr %i.n, align 8, !tbaa !34
  %i.ez = load i32, ptr %i.a, align 4, !tbaa !12  ; 4 uses
  %i.fa = add i32 %i.ez, 1                        ; 3 uses
  %umax.i = call i32 @llvm.umax.i32(i32 %i.fa, i32 1) ; 2 uses
  %xtraiter = and i32 %umax.i, 7                  ; 3 uses
  %i.fb = icmp ult i32 %i.fa, 8
  br i1 %i.fb, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.l
  %unroll_iter = and i32 %umax.i, -8
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.new
  %.086111.i = phi ptr [ %i.ex, %.new ], [ %i.fk, %bb.m ] ; 9 uses
  %niter = phi i32 [ 0, %.new ], [ %niter.next.7, %bb.m ]
  %i.fc = getelementptr inbounds nuw i8, ptr %.086111.i, i64 32
  store i32 0, ptr %i.fc, align 4, !tbaa !39
  %i.fd = getelementptr inbounds nuw i8, ptr %.086111.i, i64 84
  store i32 0, ptr %i.fd, align 4, !tbaa !39
  %i.fe = getelementptr inbounds nuw i8, ptr %.086111.i, i64 136
  store i32 0, ptr %i.fe, align 4, !tbaa !39
  %i.ff = getelementptr inbounds nuw i8, ptr %.086111.i, i64 188
  store i32 0, ptr %i.ff, align 4, !tbaa !39
  %i.fg = getelementptr inbounds nuw i8, ptr %.086111.i, i64 240
  store i32 0, ptr %i.fg, align 4, !tbaa !39
  %i.fh = getelementptr inbounds nuw i8, ptr %.086111.i, i64 292
  store i32 0, ptr %i.fh, align 4, !tbaa !39
  %i.fi = getelementptr inbounds nuw i8, ptr %.086111.i, i64 344
  store i32 0, ptr %i.fi, align 4, !tbaa !39
  %i.fj = getelementptr inbounds nuw i8, ptr %.086111.i, i64 396
  store i32 0, ptr %i.fj, align 4, !tbaa !39
  %i.fk = getelementptr inbounds nuw i8, ptr %.086111.i, i64 416 ; 2 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.unr-lcssa, label %bb.m, !llvm.loop !105

.unr-lcssa:                                       ; preds = %bb.m
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.l
  %.086111.i.epil.init = phi ptr [ %i.ex, %bb.l ], [ %i.fk, %.unr-lcssa ]
  %lcmp.mod306 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod306)
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.epil.preheader
  %.086111.i.epil = phi ptr [ %.086111.i.epil.init, %.epil.preheader ], [ %i.fm, %bb.n ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.n ]
  %i.fl = getelementptr inbounds nuw i8, ptr %.086111.i.epil, i64 32
  store i32 0, ptr %i.fl, align 4, !tbaa !39
  %i.fm = getelementptr inbounds nuw i8, ptr %.086111.i.epil, i64 52
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.n, !llvm.loop !106

.epilog-lcssa:                                    ; preds = %bb.n, %.unr-lcssa
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ex, i64 80 ; 3 uses
  store i32 1, ptr %i.fn, align 4, !tbaa !39
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ex, i64 104 ; 4 uses
  %.not94126.i = icmp ult i32 %i.ez, 2
  br i1 %.not94126.i, label %.split135.us.thread.i, label %.lr.ph131.preheader.i

.split135.us.thread.i:                            ; preds = %.epilog-lcssa
  store i32 0, ptr %i.fn, align 4, !tbaa !39
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ex, i64 84
  store i32 0, ptr %i.fp, align 4, !tbaa !39
  br label %ir_build_dominators_tree_iterative.exit

.lr.ph131.preheader.i:                            ; preds = %.epilog-lcssa
  %umax151.i = call i32 @llvm.umax.i32(i32 %i.fa, i32 3) ; 3 uses
  br label %.lr.ph131.i

.lr.ph131.i:                                      ; preds = %.thread.i, %.lr.ph131.preheader.i
  %.0129.i = phi i1 [ %.2.i.mux, %.thread.i ], [ false, %.lr.ph131.preheader.i ] ; 3 uses
  %.171128.i = phi i32 [ %.mux, %.thread.i ], [ 2, %.lr.ph131.preheader.i ]
  %.187127.i = phi ptr [ %.mux280, %.thread.i ], [ %i.fo, %.lr.ph131.preheader.i ] ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.187127.i, i64 24
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !71 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.187127.i, i64 20
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !69
  %i.fu = zext i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.fu ; 3 uses
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !41 ; 2 uses
  %i.fx = zext i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [52 x i8], ptr %i.ex, i64 %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 28
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !39
  %i.gb = icmp eq i32 %i.ga, 0
  br i1 %i.gb, label %.preheader106.i.preheader, label %.loopexit107.i

.preheader106.i.preheader:                        ; preds = %.lr.ph131.i
  %i.gc = add i32 %i.fr, -1                       ; 2 uses
  %i.gd = icmp eq i32 %i.gc, 0
  br i1 %i.gd, label %.thread.i, label %.lr.ph279, !prof !96

.preheader106.i:                                  ; preds = %.lr.ph279
  %i.ge = add i32 %i.gg, -1                       ; 2 uses
  %i.gf = icmp eq i32 %i.ge, 0
  br i1 %i.gf, label %.thread.i, label %.lr.ph279, !prof !97

.lr.ph279:                                        ; preds = %.preheader106.i.preheader, %.preheader106.i
  %i.gg = phi i32 [ %i.ge, %.preheader106.i ], [ %i.gc, %.preheader106.i.preheader ] ; 2 uses
  %.079.i278 = phi ptr [ %i.gh, %.preheader106.i ], [ %i.fv, %.preheader106.i.preheader ]
  %i.gh = getelementptr inbounds nuw i8, ptr %.079.i278, i64 4 ; 3 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !41 ; 2 uses
  %i.gj = zext i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw [52 x i8], ptr %i.ex, i64 %i.gj
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 28
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !39
  %.not96.i = icmp eq i32 %i.gm, 0
  br i1 %.not96.i, label %.preheader106.i, label %.loopexit107.i

.loopexit107.i:                                   ; preds = %.lr.ph279, %.lr.ph131.i
  %.184.i = phi i32 [ %i.fr, %.lr.ph131.i ], [ %i.gg, %.lr.ph279 ]
  %.281.i = phi ptr [ %i.fv, %.lr.ph131.i ], [ %i.gh, %.lr.ph279 ]
  %.277.i = phi i32 [ %i.fw, %.lr.ph131.i ], [ %i.gi, %.lr.ph279 ] ; 2 uses
  %i.gn = add i32 %.184.i, -1                     ; 2 uses
  %.not97121.i = icmp eq i32 %i.gn, 0
  br i1 %.not97121.i, label %._crit_edge.i, label %.lr.ph124.i

.lr.ph124.i:                                      ; preds = %.loopexit107.i, %.loopexit105.i
  %i.go = phi i32 [ %i.hh, %.loopexit105.i ], [ %i.gn, %.loopexit107.i ]
  %.378123.i = phi i32 [ %.6.i, %.loopexit105.i ], [ %.277.i, %.loopexit107.i ] ; 3 uses
  %.382122.i = phi ptr [ %i.gp, %.loopexit105.i ], [ %.281.i, %.loopexit107.i ]
  %i.gp = getelementptr inbounds nuw i8, ptr %.382122.i, i64 4 ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !41 ; 3 uses
  %i.gr = zext i32 %i.gq to i64
  %i.gs = getelementptr inbounds nuw [52 x i8], ptr %i.ex, i64 %i.gr
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 28
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !39
  %.not99.i = icmp eq i32 %i.gu, 0
  %.not100117.i = icmp eq i32 %.378123.i, %i.gq
  %or.cond.i = select i1 %.not99.i, i1 true, i1 %.not100117.i
  br i1 %or.cond.i, label %.loopexit105.i, label %.preheader103.i

.loopexit.i:                                      ; preds = %.lr.ph115.i, %.preheader.i
  %.5.lcssa.i = phi i32 [ %.4118.i, %.preheader.i ], [ %i.hf, %.lr.ph115.i ] ; 2 uses
  %.not100.i = icmp eq i32 %.5.lcssa.i, %.174.lcssa.i
  br i1 %.not100.i, label %.loopexit105.i, label %.preheader103.i, !llvm.loop !108

.preheader103.i:                                  ; preds = %.lr.ph124.i, %.loopexit.i
  %.073119.i = phi i32 [ %.174.lcssa.i, %.loopexit.i ], [ %i.gq, %.lr.ph124.i ] ; 3 uses
  %.4118.i = phi i32 [ %.5.lcssa.i, %.loopexit.i ], [ %.378123.i, %.lr.ph124.i ] ; 5 uses
  %i.gv = icmp ugt i32 %.073119.i, %.4118.i
  br i1 %i.gv, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i, %.preheader103.i
  %.174.lcssa.i = phi i32 [ %.073119.i, %.preheader103.i ], [ %i.ha, %.lr.ph.i ] ; 5 uses
  %i.gw = icmp ugt i32 %.4118.i, %.174.lcssa.i
  br i1 %i.gw, label %.lr.ph115.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %.preheader103.i, %.lr.ph.i
  %.174113.i = phi i32 [ %i.ha, %.lr.ph.i ], [ %.073119.i, %.preheader103.i ]
  %i.gx = zext i32 %.174113.i to i64
  %i.gy = getelementptr inbounds nuw [52 x i8], ptr %i.ex, i64 %i.gx
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 28
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !39 ; 3 uses
  %i.hb = icmp ugt i32 %i.ha, %.4118.i
  br i1 %i.hb, label %.lr.ph.i, label %.preheader.i, !llvm.loop !109

.lr.ph115.i:                                      ; preds = %.preheader.i, %.lr.ph115.i
  %.5114.i = phi i32 [ %i.hf, %.lr.ph115.i ], [ %.4118.i, %.preheader.i ]
  %i.hc = zext i32 %.5114.i to i64
  %i.hd = getelementptr inbounds nuw [52 x i8], ptr %i.ex, i64 %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 28
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !39 ; 3 uses
  %i.hg = icmp ugt i32 %i.hf, %.174.lcssa.i
  br i1 %i.hg, label %.lr.ph115.i, label %.loopexit.i, !llvm.loop !110

.loopexit105.i:                                   ; preds = %.loopexit.i, %.lr.ph124.i
  %.6.i = phi i32 [ %.378123.i, %.lr.ph124.i ], [ %.174.lcssa.i, %.loopexit.i ] ; 2 uses
  %i.hh = add i32 %i.go, -1                       ; 2 uses
  %.not97.i = icmp eq i32 %i.hh, 0
  br i1 %.not97.i, label %._crit_edge.i, label %.lr.ph124.i, !llvm.loop !111

._crit_edge.i:                                    ; preds = %.loopexit105.i, %.loopexit107.i
  %.378.lcssa.i = phi i32 [ %.277.i, %.loopexit107.i ], [ %.6.i, %.loopexit105.i ] ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.187127.i, i64 28 ; 2 uses
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !39
  %.not98.i = icmp eq i32 %i.hj, %.378.lcssa.i
  br i1 %.not98.i, label %.thread.i, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i
  store i32 %.378.lcssa.i, ptr %i.hi, align 4, !tbaa !39
  br label %.thread.i

.thread.i:                                        ; preds = %.preheader106.i, %.preheader106.i.preheader, %bb.o, %._crit_edge.i
  %.2.i = phi i1 [ %.0129.i, %._crit_edge.i ], [ true, %bb.o ], [ %.0129.i, %.preheader106.i.preheader ], [ %.0129.i, %.preheader106.i ] ; 2 uses
  %i.hk = add nuw i32 %.171128.i, 1               ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.187127.i, i64 52
  %exitcond152.i = icmp ne i32 %i.hk, %umax151.i  ; 4 uses
  %brmerge = select i1 %exitcond152.i, i1 true, i1 %.2.i
  %.2.i.mux = select i1 %exitcond152.i, i1 %.2.i, i1 false
  %.mux = select i1 %exitcond152.i, i32 %i.hk, i32 2
  %.mux280 = select i1 %exitcond152.i, ptr %i.hl, ptr %i.fo
  br i1 %brmerge, label %.lr.ph131.i, label %.split135.us.i, !llvm.loop !112

.split135.us.i:                                   ; preds = %.thread.i
  store i32 0, ptr %i.fn, align 4, !tbaa !39
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ex, i64 84
  store i32 0, ptr %i.hm, align 4, !tbaa !39
  %i.hn = add i32 %umax151.i, -2                  ; 2 uses
  %2 = add i32 %umax151.i, -3
  %xtraiter307 = and i32 %i.hn, 3                 ; 3 uses
  %i.ho = icmp ult i32 %2, 3
  br i1 %i.ho, label %.lr.ph140.i.epil.preheader, label %.split135.us.i.new

.split135.us.i.new:                               ; preds = %.split135.us.i
  %unroll_iter311 = and i32 %i.hn, -4
  br label %.lr.ph140.i

.lr.ph140.i:                                      ; preds = %.lr.ph140.i, %.split135.us.i.new
  %.288137.i = phi ptr [ %i.fo, %.split135.us.i.new ], [ %i.iv, %.lr.ph140.i ] ; 9 uses
  %niter312 = phi i32 [ 0, %.split135.us.i.new ], [ %niter312.next.3, %.lr.ph140.i ]
  %i.hp = getelementptr inbounds nuw i8, ptr %.288137.i, i64 28
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !39
  %i.hr = zext i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw [52 x i8], ptr %i.ex, i64 %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 32
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !39
  %i.hv = add i32 %i.hu, 1
  %i.hw = getelementptr inbounds nuw i8, ptr %.288137.i, i64 32
  store i32 %i.hv, ptr %i.hw, align 4, !tbaa !39
  %i.hx = getelementptr inbounds nuw i8, ptr %.288137.i, i64 80
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !39
  %i.hz = zext i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw [52 x i8], ptr %i.ex, i64 %i.hz
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 32
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !39
  %i.id = add i32 %i.ic, 1
  %i.ie = getelementptr inbounds nuw i8, ptr %.288137.i, i64 84
  store i32 %i.id, ptr %i.ie, align 4, !tbaa !39
  %i.if = getelementptr inbounds nuw i8, ptr %.288137.i, i64 132
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !39
  %i.ih = zext i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw [52 x i8], ptr %i.ex, i64 %i.ih
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 32
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !39
  %i.il = add i32 %i.ik, 1
  %i.im = getelementptr inbounds nuw i8, ptr %.288137.i, i64 136
  store i32 %i.il, ptr %i.im, align 4, !tbaa !39
  %i.in = getelementptr inbounds nuw i8, ptr %.288137.i, i64 184
  %i.io = load i32, ptr %i.in, align 4, !tbaa !39
  %i.ip = zext i32 %i.io to i64
  %i.iq = getelementptr inbounds nuw [52 x i8], ptr %i.ex, i64 %i.ip
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 32
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !39
  %i.it = add i32 %i.is, 1
  %i.iu = getelementptr inbounds nuw i8, ptr %.288137.i, i64 188
  store i32 %i.it, ptr %i.iu, align 4, !tbaa !39
  %i.iv = getelementptr inbounds nuw i8, ptr %.288137.i, i64 208 ; 2 uses
  %niter312.next.3 = add i32 %niter312, 4         ; 2 uses
  %niter312.ncmp.3 = icmp eq i32 %niter312.next.3, %unroll_iter311
  br i1 %niter312.ncmp.3, label %.lr.ph145.preheader.i.unr-lcssa, label %.lr.ph140.i, !llvm.loop !113

.lr.ph145.preheader.i.unr-lcssa:                  ; preds = %.lr.ph140.i
  %lcmp.mod309.not = icmp eq i32 %xtraiter307, 0
  br i1 %lcmp.mod309.not, label %.lr.ph145.preheader.i, label %.lr.ph140.i.epil.preheader

.lr.ph140.i.epil.preheader:                       ; preds = %.lr.ph145.preheader.i.unr-lcssa, %.split135.us.i
  %.288137.i.epil.init = phi ptr [ %i.fo, %.split135.us.i ], [ %i.iv, %.lr.ph145.preheader.i.unr-lcssa ]
  %lcmp.mod310 = icmp ne i32 %xtraiter307, 0
  call void @llvm.assume(i1 %lcmp.mod310)
  br label %.lr.ph140.i.epil

.lr.ph140.i.epil:                                 ; preds = %.lr.ph140.i.epil, %.lr.ph140.i.epil.preheader
  %.288137.i.epil = phi ptr [ %i.je, %.lr.ph140.i.epil ], [ %.288137.i.epil.init, %.lr.ph140.i.epil.preheader ] ; 3 uses
  %epil.iter308 = phi i32 [ %epil.iter308.next, %.lr.ph140.i.epil ], [ 0, %.lr.ph140.i.epil.preheader ]
  %i.iw = getelementptr inbounds nuw i8, ptr %.288137.i.epil, i64 28
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !39
  %i.iy = zext i32 %i.ix to i64
  %i.iz = getelementptr inbounds nuw [52 x i8], ptr %i.ex, i64 %i.iy
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 32
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !39
  %i.jc = add i32 %i.jb, 1
  %i.jd = getelementptr inbounds nuw i8, ptr %.288137.i.epil, i64 32
  store i32 %i.jc, ptr %i.jd, align 4, !tbaa !39
  %i.je = getelementptr inbounds nuw i8, ptr %.288137.i.epil, i64 52
  %epil.iter308.next = add i32 %epil.iter308, 1   ; 2 uses
  %epil.iter308.cmp.not = icmp eq i32 %epil.iter308.next, %xtraiter307
  br i1 %epil.iter308.cmp.not, label %.lr.ph145.preheader.i, label %.lr.ph140.i.epil, !llvm.loop !114

.lr.ph145.preheader.i:                            ; preds = %.lr.ph140.i.epil, %.lr.ph145.preheader.i.unr-lcssa
  %i.jf = zext i32 %i.ez to i64
  %i.jg = getelementptr inbounds nuw [52 x i8], ptr %i.ex, i64 %i.jf
  br label %.lr.ph145.i

.lr.ph145.i:                                      ; preds = %.lr.ph145.i, %.lr.ph145.preheader.i
  %.3143.i = phi i32 [ %i.jo, %.lr.ph145.i ], [ %i.ez, %.lr.ph145.preheader.i ] ; 2 uses
  %.389142.i = phi ptr [ %i.jp, %.lr.ph145.i ], [ %i.jg, %.lr.ph145.preheader.i ] ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.389142.i, i64 28
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !39
  %i.jj = zext i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw [52 x i8], ptr %i.ex, i64 %i.jj
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 36 ; 2 uses
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !115
  %i.jn = getelementptr inbounds nuw i8, ptr %.389142.i, i64 40
  store i32 %i.jm, ptr %i.jn, align 4, !tbaa !116
  store i32 %.3143.i, ptr %i.jl, align 4, !tbaa !115
  %i.jo = add i32 %.3143.i, -1                    ; 2 uses
  %i.jp = getelementptr inbounds i8, ptr %.389142.i, i64 -52
  %i.jq = icmp ugt i32 %i.jo, 1
  br i1 %i.jq, label %.lr.ph145.i, label %ir_build_dominators_tree_iterative.exit, !llvm.loop !117

.lr.ph189.preheader:                              ; preds = %bb.k, %._crit_edge181
  %i.jr = zext i32 %i.p to i64
  %i.js = getelementptr inbounds nuw [52 x i8], ptr %i.m, i64 %i.jr
  br label %.lr.ph189

.lr.ph189:                                        ; preds = %.lr.ph189.preheader, %.lr.ph189
  %.2109188 = phi ptr [ %i.kb, %.lr.ph189 ], [ %i.js, %.lr.ph189.preheader ] ; 3 uses
  %.2112187 = phi i32 [ %i.ka, %.lr.ph189 ], [ %i.p, %.lr.ph189.preheader ] ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.2109188, i64 28
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !39
  %i.jv = zext i32 %i.ju to i64
  %i.jw = getelementptr inbounds nuw [52 x i8], ptr %i.m, i64 %i.jv
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 36 ; 2 uses
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !115
  %i.jz = getelementptr inbounds nuw i8, ptr %.2109188, i64 40
  store i32 %i.jy, ptr %i.jz, align 4, !tbaa !116
  store i32 %.2112187, ptr %i.jx, align 4, !tbaa !115
  %i.ka = add i32 %.2112187, -1                   ; 2 uses
  %i.kb = getelementptr inbounds i8, ptr %.2109188, i64 -52
  %i.kc = icmp ugt i32 %i.ka, 1
  br i1 %i.kc, label %.lr.ph189, label %._crit_edge190, !llvm.loop !118

._crit_edge190:                                   ; preds = %.lr.ph189, %.critedge135.thread
  %i.kd = phi ptr [ %i.f, %.critedge135.thread ], [ %i.cu, %.lr.ph189 ]
  call void @_efree(ptr noundef %i.kd) #17
  br label %ir_build_dominators_tree_iterative.exit

ir_build_dominators_tree_iterative.exit:          ; preds = %.lr.ph145.i, %.split135.us.thread.i, %.critedge, %._crit_edge190
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ir_build_dominators_tree_slow(ptr nofree noundef captures(none) %0) unnamed_addr #5 {
ir_array_init.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !12
  %i.c = add i32 %i.b, 1
  %i.d = zext i32 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 2
  %i.f = tail call noalias ptr @_emalloc(i64 noundef %i.e) #19 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !33   ; 16 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !34   ; 3 uses
  %i.k = load i32, ptr %i.a, align 4, !tbaa !12   ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !62
  %i.n = and i32 %i.m, -33554433
  store i32 %i.n, ptr %i.l, align 4, !tbaa !62
  %i.o = add i32 %i.k, 1                          ; 2 uses
  %i.p = zext i32 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 2
  %i.r = tail call noalias ptr @_emalloc(i64 noundef %i.q) #19 ; 4 uses
  %i.s = add i32 %i.k, 64
  %i.t = lshr i32 %i.s, 6
  %i.u = zext nneg i32 %i.t to i64
  %i.v = tail call noalias ptr @_ecalloc(i64 noundef %i.u, i64 noundef 8) #18 ; 5 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !40   ; 2 uses
  %i.x = and i64 %i.w, 2
  %.not239.not = icmp eq i64 %i.x, 0
  br i1 %.not239.not, label %.preheader247.preheader, label %._crit_edge

.preheader247.preheader:                          ; preds = %ir_array_init.exit
  %i.y = or disjoint i64 %i.w, 2
  store i64 %i.y, ptr %i.v, align 8, !tbaa !40
  store i32 1, ptr %i.r, align 4, !tbaa !41
  br label %.preheader247

.preheader247:                                    ; preds = %.preheader247.preheader, %.thread
  %.0178281 = phi i32 [ %i.cb, %.thread ], [ 1, %.preheader247.preheader ] ; 3 uses
  %.sroa.11210.0280 = phi i32 [ %i.cd, %.thread ], [ 1, %.preheader247.preheader ] ; 3 uses
  %i.z = add i32 %.sroa.11210.0280, -1
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !41 ; 3 uses
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [52 x i8], ptr %i.h, i64 %i.ad ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !68
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 48 ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !39 ; 2 uses
  %i.aj = sub i32 %i.ag, %i.ai                    ; 2 uses
  %.not202274 = icmp eq i32 %i.aj, 0
  br i1 %.not202274, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader247, %bb.b
  %i.ak = phi i32 [ %i.bv, %bb.b ], [ %i.aj, %.preheader247 ]
  %i.al = phi i32 [ %i.bu, %bb.b ], [ %i.ai, %.preheader247 ]
  %i.am = phi ptr [ %i.bt, %bb.b ], [ %i.ah, %.preheader247 ] ; 2 uses
  %i.an = phi ptr [ %i.br, %bb.b ], [ %i.af, %.preheader247 ]
  %i.ao = phi ptr [ %i.bq, %bb.b ], [ %i.ae, %.preheader247 ] ; 2 uses
  %i.ap = phi i32 [ %i.bo, %bb.b ], [ %i.ac, %.preheader247 ]
  %.sroa.11210.1275 = phi i32 [ %i.bj, %bb.b ], [ %.sroa.11210.0280, %.preheader247 ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !67
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.as
  %i.au = zext i32 %i.al to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.au
  br label %bb.a
end_hunk_0
begin_hunk_1_@ir_schedule_blocks:bb.a
  %spec.select.i = add nuw nsw i32 %i.gm, %i.gi
  br label %bb.aq

bb.ai:                                            ; preds = %bb.af
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !39 ; 2 uses
  %.not167.i = icmp eq i32 %i.go, 0
  br i1 %.not167.i, label %bb.aj, label %bb.aq

bb.aj:                                            ; preds = %bb.ai
  %i.gp = udiv i32 100, %i.et
  br label %bb.aq

bb.ak:                                            ; preds = %bb.af
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ge, i64 12
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !39 ; 2 uses
  %.not166.i = icmp eq i32 %i.gr, 0
  br i1 %.not166.i, label %bb.al, label %bb.aq

bb.al:                                            ; preds = %bb.ak
  %i.gs = udiv i32 100, %i.et
  br label %bb.aq

bb.am:                                            ; preds = %bb.af
  %i.gt = load i32, ptr %i.cn, align 8, !tbaa !159
  %i.gu = and i32 %i.gt, 262144
  %.not164.i = icmp eq i32 %i.gu, 0
  br i1 %.not164.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gv = load i32, ptr %i.fz, align 4, !tbaa !70
  %i.gw = and i32 %i.gv, 64
  %.not165.i = icmp eq i32 %i.gw, 0
  br i1 %.not165.i, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an, %bb.am
  br label %bb.aq

bb.ap:                                            ; preds = %bb.af
  %i.gx = udiv i32 100, %i.et
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %.0132.i = phi i32 [ %i.gh, %bb.ag ], [ 99, %bb.an ], [ %i.gx, %bb.ap ], [ %i.go, %bb.ai ], [ %i.gp, %bb.aj ], [ %i.gr, %bb.ak ], [ %i.gs, %bb.al ], [ %spec.select.i, %bb.ah ], [ 1, %bb.ao ] ; 2 uses
  %.not170.i = icmp eq ptr %.0142203.i, null
  br i1 %.not170.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fz, i64 48
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !39
  %i.ha = getelementptr inbounds nuw i8, ptr %.0142203.i, i64 48
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !39
  %i.hc = icmp ugt i32 %i.gz, %i.hb
  %i.hd = icmp ugt i32 %.0132.i, %.0131205.i
  %or.cond172.i = select i1 %i.hc, i1 true, i1 %i.hd
  br i1 %or.cond172.i, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar, %bb.aq
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %.lr.ph207.i
  %.3152.i = phi i32 [ %i.fp, %bb.as ], [ %.2151202.i, %bb.ar ], [ %.2151202.i, %.lr.ph207.i ] ; 2 uses
  %.1143.i = phi ptr [ %i.fz, %bb.as ], [ %.0142203.i, %bb.ar ], [ %.0142203.i, %.lr.ph207.i ] ; 2 uses
  %.1.i = phi i32 [ %.0132.i, %bb.as ], [ %.0131205.i, %bb.ar ], [ %.0131205.i, %.lr.ph207.i ]
  %i.he = add nuw i32 %.2204.i, 1                 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.0206.i, i64 4
  %exitcond214.not.i = icmp eq i32 %i.he, %i.et
  br i1 %exitcond214.not.i, label %.loopexit.i, label %.lr.ph207.i, !llvm.loop !160

.loopexit.i:                                      ; preds = %bb.at, %bb.ae
  %.4153.i = phi i32 [ %i.ez, %bb.ae ], [ %.3152.i, %bb.at ] ; 5 uses
  %.2144.i = phi ptr [ %i.fj, %bb.ae ], [ %.1143.i, %bb.at ] ; 2 uses
  %.not171.i = icmp eq ptr %.2144.i, null
  br i1 %.not171.i, label %.thread.i, label %bb.ay

.thread.i:                                        ; preds = %.loopexit.i, %bb.ad, %bb.ac
  %.4153190.i = phi i32 [ %.4153.i, %.loopexit.i ], [ %.1150.i, %bb.ac ], [ %i.ez, %bb.ad ] ; 2 uses
  %i.hg = load i32, ptr %.0145.i, align 4, !tbaa !70
  %i.hh = and i32 %i.hg, 64
  %i.hi = icmp ne i32 %i.hh, 0
  %i.hj = icmp ne i32 %.1148.i, 0
  %or.cond.i = select i1 %i.hi, i1 %i.hj, i1 false
  br i1 %or.cond.i, label %bb.au, label %.loopexit294, !llvm.loop !161

bb.au:                                            ; preds = %.thread.i
  %i.hk = zext i32 %.1148.i to i64
  %i.hl = getelementptr inbounds nuw [52 x i8], ptr %i.ds, i64 %i.hk ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !68
  %i.ho = icmp eq i32 %i.hn, 2
  br i1 %i.ho, label %bb.av, label %.loopexit294, !llvm.loop !161

bb.av:                                            ; preds = %bb.au
  %i.hp = load ptr, ptr %0, align 8, !tbaa !38
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !66
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr inbounds [16 x i8], ptr %i.hp, i64 %i.hs
  %i.hu = load i8, ptr %i.ht, align 8, !tbaa !39
  %i.hv = icmp eq i8 %i.hu, 111
  br i1 %i.hv, label %bb.aw, label %.loopexit294, !llvm.loop !161

bb.aw:                                            ; preds = %bb.av
  %i.hw = load ptr, ptr %i.cm, align 8, !tbaa !34 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hl, i64 12
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !67 ; 2 uses
  %i.hz = zext i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.hz
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !41 ; 3 uses
  %i.ic = lshr i32 %i.ib, 6
  %i.id = zext nneg i32 %i.ic to i64              ; 2 uses
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.id
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !40 ; 2 uses
  %i.ig = and i32 %i.ib, 63
  %i.ih = zext nneg i32 %i.ig to i64
  %i.ii = shl nuw i64 1, %i.ih                    ; 2 uses
  %i.ij = and i64 %i.ii, %i.if
  %.not193.i = icmp eq i64 %i.ij, 0
  br i1 %.not193.i, label %bb.ax, label %.thread

bb.ax:                                            ; preds = %bb.aw
  %i.ik = add i32 %i.hy, 1
  %i.il = zext i32 %i.ik to i64
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.il
  %i.in = load i32, ptr %i.im, align 4, !tbaa !41 ; 3 uses
  %.pre215.i = lshr i32 %i.in, 6
  %.pre216.i = zext nneg i32 %.pre215.i to i64    ; 2 uses
  %.pre218.i = and i32 %i.in, 63
  %.pre220.i = zext nneg i32 %.pre218.i to i64
  %.pre222.i = shl nuw i64 1, %.pre220.i          ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.pre216.i
  %.pre159 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !40 ; 2 uses
  %.pre161 = and i64 %.pre159, %.pre222.i
  %i.io = icmp eq i64 %.pre161, 0
  br i1 %i.io, label %.loopexit294, label %.thread, !llvm.loop !161

.thread:                                          ; preds = %bb.aw, %bb.ax
  %.3.i217 = phi i32 [ %i.in, %bb.ax ], [ %i.ib, %bb.aw ] ; 2 uses
  %.pre-phi217.i216 = phi i64 [ %.pre216.i, %bb.ax ], [ %i.id, %bb.aw ]
  %.pre-phi223.i215 = phi i64 [ %.pre222.i, %bb.ax ], [ %i.ii, %bb.aw ]
  %i.ip = phi i64 [ %.pre159, %bb.ax ], [ %i.if, %bb.aw ]
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.pre-phi217.i216
  %i.ir = zext i32 %.3.i217 to i64
  %i.is = getelementptr inbounds nuw [52 x i8], ptr %i.ds, i64 %i.ir
  %i.it = xor i64 %.pre-phi223.i215, -1
  %i.iu = and i64 %i.ip, %i.it
  store i64 %i.iu, ptr %i.iq, align 8, !tbaa !40
  br label %.backedge

bb.ay:                                            ; preds = %.loopexit.i
  %i.iv = and i32 %.4153.i, 63
  %i.iw = zext nneg i32 %i.iv to i64
  %i.ix = shl nuw i64 1, %i.iw
  %i.iy = xor i64 %i.ix, -1
  %i.iz = lshr i32 %.4153.i, 6
  %i.ja = zext nneg i32 %i.iz to i64
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.ja ; 2 uses
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !40
  %i.jd = and i64 %i.jc, %i.iy
  store i64 %i.jd, ptr %i.jb, align 8, !tbaa !40
  br label %.backedge

.backedge:                                        ; preds = %bb.ay, %.thread
  %.1150.i.be = phi i32 [ %.4153.i, %bb.ay ], [ %.4153190.i, %.thread ]
  %.0145.i.be = phi ptr [ %.2144.i, %bb.ay ], [ %i.is, %.thread ]
  %.1134.i.be = phi i32 [ %.4153.i, %bb.ay ], [ %.3.i217, %.thread ]
  br label %bb.w

ir_schedule_blocks_top_down.exit:                 ; preds = %ir_bitqueue_pop.exit.i, %bb.u
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.bu, ptr %i.je, align 8, !tbaa !162
  br label %.sink.split

bb.az:                                            ; preds = %._crit_edge
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.jg = load i32, ptr %i.jf, align 8, !tbaa !32
  %i.jh = lshr i32 %i.jg, 1
  %i.ji = shl nuw nsw i32 %.pre, 2
  %i.jj = add nuw nsw i32 %i.ji, 8
  %i.jk = zext nneg i32 %i.jj to i64
  %i.jl = tail call noalias ptr @_emalloc(i64 noundef %i.jk) #19 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  store ptr %i.jl, ptr %i.jm, align 8, !tbaa !162
  %i.jn = load i32, ptr %i.a, align 4, !tbaa !12  ; 2 uses
  %i.jo = zext i32 %i.jn to i64
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %i.jo
  %i.jq = add i32 %i.jn, 1
  %i.jr = zext i32 %i.jq to i64
  %i.js = mul nuw nsw i64 %i.jr, 12
  %i.jt = tail call noalias ptr @_emalloc(i64 noundef %i.js) #19 ; 50 uses
  store i32 0, ptr %i.jt, align 4, !tbaa !163
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 4
  store i32 0, ptr %i.ju, align 4, !tbaa !165
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  store i32 0, ptr %i.jv, align 4, !tbaa !39
  %i.jw = load i32, ptr %i.a, align 4, !tbaa !12  ; 2 uses
  %.not678.i = icmp eq i32 %i.jw, 0
  br i1 %.not678.i, label %._crit_edge.i, label %.lr.ph.preheader.i61

.lr.ph.preheader.i61:                             ; preds = %bb.az
  %i.jx = add i32 %i.jw, 1
  %umax.i62 = tail call i32 @llvm.umax.i32(i32 %i.jx, i32 2) ; 2 uses
  %wide.trip.count.i = zext i32 %umax.i62 to i64
  %i.jy = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %xtraiter = and i64 %i.jy, 3                    ; 3 uses
  %1 = add i32 %umax.i62, -2
  %i.jz = icmp ult i32 %1, 3
  br i1 %i.jz, label %.lr.ph.i63.epil.preheader, label %.lr.ph.preheader.i61.new

.lr.ph.preheader.i61.new:                         ; preds = %.lr.ph.preheader.i61
  %unroll_iter = and i64 %i.jy, -4
  br label %.lr.ph.i63

.lr.ph.i63:                                       ; preds = %.lr.ph.i63, %.lr.ph.preheader.i61.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i61.new ], [ %indvars.iv.next.i.3, %.lr.ph.i63 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i61.new ], [ %niter.next.3, %.lr.ph.i63 ]
  %i.ka = getelementptr inbounds nuw [12 x i8], ptr %i.jt, i64 %indvars.iv.i ; 3 uses
  %i.kb = trunc nuw i64 %indvars.iv.i to i32      ; 3 uses
  store i32 %i.kb, ptr %i.ka, align 4, !tbaa !163
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 4
  store i32 %i.kb, ptr %i.kc, align 4, !tbaa !165
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  store i32 %i.kb, ptr %i.kd, align 4, !tbaa !39
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ke = getelementptr inbounds nuw [12 x i8], ptr %i.jt, i64 %indvars.iv.next.i ; 3 uses
  %i.kf = trunc nuw i64 %indvars.iv.next.i to i32 ; 3 uses
  store i32 %i.kf, ptr %i.ke, align 4, !tbaa !163
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ke, i64 4
  store i32 %i.kf, ptr %i.kg, align 4, !tbaa !165
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  store i32 %i.kf, ptr %i.kh, align 4, !tbaa !39
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.ki = getelementptr inbounds nuw [12 x i8], ptr %i.jt, i64 %indvars.iv.next.i.1 ; 3 uses
  %i.kj = trunc nuw i64 %indvars.iv.next.i.1 to i32 ; 3 uses
  store i32 %i.kj, ptr %i.ki, align 4, !tbaa !163
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ki, i64 4
  store i32 %i.kj, ptr %i.kk, align 4, !tbaa !165
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  store i32 %i.kj, ptr %i.kl, align 4, !tbaa !39
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.km = getelementptr inbounds nuw [12 x i8], ptr %i.jt, i64 %indvars.iv.next.i.2 ; 3 uses
  %i.kn = trunc nuw i64 %indvars.iv.next.i.2 to i32 ; 3 uses
  store i32 %i.kn, ptr %i.km, align 4, !tbaa !163
  %i.ko = getelementptr inbounds nuw i8, ptr %i.km, i64 4
  store i32 %i.kn, ptr %i.ko, align 4, !tbaa !165
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  store i32 %i.kn, ptr %i.kp, align 4, !tbaa !39
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i63, !llvm.loop !166

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i63
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i63.epil.preheader

.lr.ph.i63.epil.preheader:                        ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.preheader.i61
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i61 ], [ %indvars.iv.next.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod333 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod333)
  br label %.lr.ph.i63.epil

.lr.ph.i63.epil:                                  ; preds = %.lr.ph.i63.epil, %.lr.ph.i63.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i63.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i63.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i63.epil.preheader ], [ %epil.iter.next, %.lr.ph.i63.epil ]
  %i.kq = getelementptr inbounds nuw [12 x i8], ptr %i.jt, i64 %indvars.iv.i.epil ; 3 uses
  %i.kr = trunc nuw i64 %indvars.iv.i.epil to i32 ; 3 uses
  store i32 %i.kr, ptr %i.kq, align 4, !tbaa !163
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kq, i64 4
  store i32 %i.kr, ptr %i.ks, align 4, !tbaa !165
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  store i32 %i.kr, ptr %i.kt, align 4, !tbaa !39
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph.i63.epil, !llvm.loop !167

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i63.epil, %bb.az
  %i.ku = zext nneg i32 %i.jh to i64
  %i.kv = mul nuw nsw i64 %i.ku, 12
  %i.kw = tail call noalias ptr @_emalloc(i64 noundef %i.kv) #19 ; 8 uses
  %i.kx = load i32, ptr %i.a, align 4, !tbaa !12
  %i.ky = add i32 %i.kx, 1
  %i.kz = zext i32 %i.ky to i64
  %i.la = tail call noalias ptr @_ecalloc(i64 noundef %i.kz, i64 noundef 4) #18 ; 14 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 4
  store float 1.000000e+00, ptr %i.lb, align 4, !tbaa !168
  %i.lc = load i32, ptr %i.a, align 4, !tbaa !12
  %i.ld = add i32 %i.lc, 64
  %i.le = lshr i32 %i.ld, 6
  %i.lf = zext nneg i32 %i.le to i64
  %i.lg = tail call noalias ptr @_ecalloc(i64 noundef %i.lf, i64 noundef 8) #18 ; 3 uses
  %i.lh = load i32, ptr %i.a, align 4, !tbaa !12
  %i.li = add i32 %i.lh, 64
  %i.lj = lshr i32 %i.li, 6                       ; 2 uses
  %i.lk = zext nneg i32 %i.lj to i64
  %i.ll = tail call noalias ptr @_ecalloc(i64 noundef %i.lk, i64 noundef 8) #18 ; 10 uses
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !40
  %i.ln = or i64 %i.lm, 2
  store i64 %i.ln, ptr %i.ll, align 8, !tbaa !40
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %.outer644.i

.outer644.i:                                      ; preds = %.loopexit639.i, %._crit_edge.i
  %.sroa.4.0.ph.i = phi i32 [ %.sroa.4.7.i, %.loopexit639.i ], [ 0, %._crit_edge.i ]
  %.0501.ph.i = phi ptr [ %.5506.i, %.loopexit639.i ], [ %i.jp, %._crit_edge.i ]
  %.0485.ph.i = phi i32 [ %.5.i, %.loopexit639.i ], [ 0, %._crit_edge.i ] ; 12 uses
  br label %.loopexit641.i

.loopexit641.i:                                   ; preds = %bb.bh, %.outer644.i
  %.sroa.4.0.i65 = phi i32 [ %.sroa.4.0.ph.i, %.outer644.i ], [ %.020.i.i66, %bb.bh ] ; 2 uses
  %.0501.i = phi ptr [ %.0501.ph.i, %.outer644.i ], [ %i.od, %bb.bh ]
  %i.lr = zext i32 %.sroa.4.0.i65 to i64
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %i.lr
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bb, %.loopexit641.i
  %.020.i.i66 = phi i32 [ %.sroa.4.0.i65, %.loopexit641.i ], [ %i.lv, %bb.bb ] ; 10 uses
  %.019.i.i67 = phi ptr [ %i.ls, %.loopexit641.i ], [ %i.lu, %bb.bb ] ; 3 uses
  %i.lt = load i64, ptr %.019.i.i67, align 8, !tbaa !40 ; 4 uses
  %.not.i.i68 = icmp eq i64 %i.lt, 0
  br i1 %.not.i.i68, label %bb.bb, label %ir_bitqueue_pop.exit.i69

bb.bb:                                            ; preds = %bb.ba
  %i.lu = getelementptr inbounds nuw i8, ptr %.019.i.i67, i64 8
  %i.lv = add i32 %.020.i.i66, 1                  ; 2 uses
  %i.lw = icmp ult i32 %i.lv, %i.lj
  br i1 %i.lw, label %bb.ba, label %ir_bitqueue_pop.exit.thread.i, !llvm.loop !158

ir_bitqueue_pop.exit.i69:                         ; preds = %bb.ba
  %i.lx = shl i32 %.020.i.i66, 6
  %i.ly = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.lt, i1 true)
  %i.lz = trunc nuw nsw i64 %i.ly to i32
  %i.ma = or disjoint i32 %i.lx, %i.lz            ; 2 uses
  %i.mb = add i64 %i.lt, -1
  %i.mc = and i64 %i.mb, %i.lt
  store i64 %i.mc, ptr %.019.i.i67, align 8, !tbaa !40
  %.not546.i = icmp eq i32 %i.ma, -1
  br i1 %.not546.i, label %ir_bitqueue_pop.exit.thread.i, label %.preheader640.i

.preheader640.i:                                  ; preds = %ir_bitqueue_pop.exit.i69
  %i.md = load ptr, ptr %i.lo, align 8, !tbaa !33 ; 14 uses
  br label %.outer.i

.outer.i:                                         ; preds = %bb.bi, %.preheader640.i
  %.1514.ph.i = phi i32 [ %i.ma, %.preheader640.i ], [ %i.oa, %bb.bi ] ; 3 uses
  %.1502.ph.i = phi ptr [ %.0501.i, %.preheader640.i ], [ %i.od, %bb.bi ] ; 9 uses
  %i.me = zext i32 %.1514.ph.i to i64
  %i.mf = getelementptr inbounds nuw [52 x i8], ptr %i.md, i64 %i.me ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 24
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !71 ; 2 uses
  %.not562682.i = icmp eq i32 %i.mh, 0
  br i1 %.not562682.i, label %.thread626.i, label %.lr.ph684.i

.lr.ph684.i:                                      ; preds = %.outer.i
  %i.mi = load ptr, ptr %i.lp, align 8, !tbaa !34
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bg, %.lr.ph684.i
  %i.mj = phi i32 [ %i.mh, %.lr.ph684.i ], [ %i.ni, %bb.bg ]
  %i.mk = phi ptr [ %i.mf, %.lr.ph684.i ], [ %i.ng, %bb.bg ] ; 2 uses
  %.1514683.i = phi i32 [ %.1514.ph.i, %.lr.ph684.i ], [ %i.mp, %bb.bg ] ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 20
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !69
  %i.mn = zext i32 %i.mm to i64
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %i.mn
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bf, %bb.bc
  %.0496681.i = phi ptr [ %i.mo, %bb.bc ], [ %i.mz, %bb.bf ] ; 2 uses
  %.0497680.i = phi i32 [ %i.mj, %bb.bc ], [ %i.na, %bb.bf ]
  %i.mp = load i32, ptr %.0496681.i, align 4, !tbaa !41 ; 6 uses
  %i.mq = icmp ult i32 %i.mp, %.1514683.i
  br i1 %i.mq, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.mr = lshr i32 %i.mp, 6
  %i.ms = zext nneg i32 %i.mr to i64              ; 2 uses
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %i.ms
  %i.mu = load i64, ptr %i.mt, align 8, !tbaa !40
  %i.mv = and i32 %i.mp, 63
  %i.mw = zext nneg i32 %i.mv to i64
  %i.mx = shl nuw i64 1, %i.mw                    ; 2 uses
  %i.my = and i64 %i.mu, %i.mx
  %.not633.i = icmp eq i64 %i.my, 0
  br i1 %.not633.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.mz = getelementptr inbounds nuw i8, ptr %.0496681.i, i64 4
  %i.na = add i32 %.0497680.i, -1                 ; 2 uses
  %.not563.i = icmp eq i32 %i.na, 0
  br i1 %.not563.i, label %.thread626.i, label %bb.bd, !llvm.loop !170

bb.bg:                                            ; preds = %bb.be
  %i.nb = xor i64 %i.mx, -1
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %i.ms ; 2 uses
  %i.nd = load i64, ptr %i.nc, align 8, !tbaa !40
  %i.ne = and i64 %i.nd, %i.nb
  store i64 %i.ne, ptr %i.nc, align 8, !tbaa !40
  %i.nf = zext i32 %i.mp to i64
  %i.ng = getelementptr inbounds nuw [52 x i8], ptr %i.md, i64 %i.nf ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 24
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !71 ; 2 uses
  %.not562.i = icmp eq i32 %i.ni, 0
  br i1 %.not562.i, label %.thread626.i, label %bb.bc
end_hunk_1
