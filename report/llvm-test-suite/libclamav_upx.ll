inline.NumInlined: 49
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@upx_inflate2b:bb.a
  br label %doubleebx.exit184

doubleebx.exit184:                                ; preds = %doubleebx.exit178.thread, %doubleebx.exit178, %bb.ad
  %i.cl = phi i32 [ %i.bw, %bb.ad ], [ %i.bw, %doubleebx.exit178 ], [ %i.cd, %doubleebx.exit178.thread ] ; 2 uses
  %.17226 = phi i32 [ %i.cj, %bb.ad ], [ %i.bx, %doubleebx.exit178 ], [ %i.ce, %doubleebx.exit178.thread ] ; 2 uses
  %.18 = phi i32 [ %i.ck, %bb.ad ], [ %.4, %doubleebx.exit178 ], [ %i.cc, %doubleebx.exit178.thread ] ; 2 uses
  %.0.i180 = phi i32 [ %.val.i183, %bb.ad ], [ %i.bv, %doubleebx.exit178 ], [ %i.cb, %doubleebx.exit178.thread ]
  %cond250 = icmp sgt i32 %.0.i180, -1
  br i1 %cond250, label %.preheader254, label %bb.ae

bb.ae:                                            ; preds = %doubleebx.exit184
  %i.cm = add i32 %i.cl, 2
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %doubleebx.exit172
  %.4213 = phi i32 [ %.17226, %bb.ae ], [ %.13222, %doubleebx.exit172 ]
  %.5 = phi i32 [ %.18, %bb.ae ], [ %.14, %doubleebx.exit172 ]
  %.1107 = phi i32 [ %i.cm, %bb.ae ], [ %i.br, %doubleebx.exit172 ]
  %i.cn = icmp ult i32 %.1109, -3328
  %i.co = zext i1 %i.cn to i32
  %spec.select = add i32 %.1107, %i.co            ; 2 uses
  %i.cp = add i32 %spec.select, 1                 ; 4 uses
  %i.cq = load i32, ptr %3, align 4, !tbaa !4     ; 3 uses
  %i.cr = icmp eq i32 %i.cq, 0
  %i.cs = icmp uge i32 %spec.select, %i.cq
  %or.cond144 = select i1 %i.cr, i1 true, i1 %i.cs
  br i1 %or.cond144, label %doubleebx.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ct = sext i32 %.1109 to i64
  %i.cu = add nsw i64 %indvars.iv, %i.ct          ; 2 uses
  %.not138 = icmp slt i64 %i.cu, 0
  br i1 %.not138, label %doubleebx.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cv = zext i32 %i.cp to i64                   ; 11 uses
  %i.cw = zext i32 %i.cq to i64                   ; 2 uses
  %i.cx = add nuw nsw i64 %i.cu, %i.cv
  %.not139 = icmp samesign ugt i64 %i.cx, %i.cw
  %i.cy = add nuw nsw i64 %indvars.iv, %i.cv
  %.not141 = icmp samesign ugt i64 %i.cy, %i.cw
  %or.cond147 = select i1 %.not139, i1 true, i1 %.not141
  %i.cz = icmp sgt i32 %.1109, -1
  %or.cond148 = select i1 %or.cond147, i1 true, i1 %i.cz
  br i1 %or.cond148, label %doubleebx.exit.thread, label %iter.check

iter.check:                                       ; preds = %bb.ah
  %i.da = add i32 %.1109, %i.l                    ; 7 uses
  %min.iters.check = icmp ult i32 %i.cp, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.db = add nsw i64 %i.cv, -1                   ; 3 uses
  %i.dc = trunc i64 %i.db to i32
  %i.dd = xor i32 %i.l, -1
  %i.de = icmp ult i32 %i.dd, %i.dc
  %i.df = trunc i64 %i.db to i32
  %i.dg = xor i32 %i.da, -1
  %i.dh = icmp ult i32 %i.dg, %i.df
  %i.di = icmp ugt i64 %i.db, 4294967295
  %i.dj = or i1 %i.dh, %i.di
  %i.dk = or i1 %i.de, %i.dj
  br i1 %i.dk, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.dl = and i64 %indvars.iv, 4294967295
  %i.dm = zext i32 %i.da to i64
  %i.dn = sub nsw i64 %i.dm, %i.dl
  %diff.check = icmp ugt i64 %i.dn, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check328 = icmp ult i32 %i.cp, 32
  br i1 %min.iters.check328, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.cv, 28
  %n.vec = and i64 %i.cv, 4294967264              ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.do = trunc nuw i64 %index to i32
  %i.dp = add i32 %i.da, %i.do
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 %i.dq ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %wide.load = load <16 x i8>, ptr %i.dr, align 1, !tbaa !8
  %wide.load329 = load <16 x i8>, ptr %i.ds, align 1, !tbaa !8
  %i.dt = add nuw i64 %index, %indvars.iv
  %i.du = and i64 %i.dt, 4294967295
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 %i.du ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  store <16 x i8> %wide.load, ptr %i.dv, align 1, !tbaa !8
  store <16 x i8> %wide.load329, ptr %i.dw, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dx = icmp eq i64 %index.next, %n.vec
  br i1 %i.dx, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.cv
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !14

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec331 = and i64 %i.cv, 4294967292           ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index332 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next334, %vec.epilog.vector.body ] ; 3 uses
  %i.dy = trunc nuw i64 %index332 to i32
  %i.dz = add i32 %i.da, %i.dy
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 %i.ea
  %wide.load333 = load <4 x i8>, ptr %i.eb, align 1, !tbaa !8
  %i.ec = add nuw i64 %index332, %indvars.iv
  %i.ed = and i64 %i.ec, 4294967295
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 %i.ed
  store <4 x i8> %wide.load333, ptr %i.ee, align 1, !tbaa !8
  %index.next334 = add nuw i64 %index332, 4       ; 2 uses
  %i.ef = icmp eq i64 %index.next334, %n.vec331
  br i1 %i.ef, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !15

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n335 = icmp eq i64 %n.vec331, %i.cv
  br i1 %cmp.n335, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv274.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec331, %vec.epilog.middle.block ] ; 5 uses
  %xtraiter = and i64 %i.cv, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.eg = trunc nuw i64 %indvars.iv274.ph to i32
  %i.eh = add i32 %i.da, %i.eg
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !8
  %i.el = add nuw i64 %indvars.iv274.ph, %indvars.iv
  %i.em = and i64 %i.el, 4294967295
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 %i.em
  store i8 %i.ek, ptr %i.en, align 1, !tbaa !8
  %indvars.iv.next275.prol = or disjoint i64 %indvars.iv274.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv274.unr = phi i64 [ %indvars.iv274.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next275.prol, %vec.epilog.scalar.ph.prol ]
  %i.eo = add nsw i64 %i.cv, -1
  %i.ep = icmp eq i64 %indvars.iv274.ph, %i.eo
  br i1 %i.ep, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv274 = phi i64 [ %indvars.iv.next275.1, %vec.epilog.scalar.ph ], [ %indvars.iv274.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 4 uses
  %i.eq = trunc nuw i64 %indvars.iv274 to i32
  %i.er = add i32 %i.da, %i.eq
  %i.es = zext i32 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !8
  %i.ev = add nuw i64 %indvars.iv274, %indvars.iv
  %i.ew = and i64 %i.ev, 4294967295
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 %i.ew
  store i8 %i.eu, ptr %i.ex, align 1, !tbaa !8
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 1 ; 2 uses
  %i.ey = trunc nuw i64 %indvars.iv.next275 to i32
  %i.ez = add i32 %i.da, %i.ey
  %i.fa = zext i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !8
  %i.fd = add nuw i64 %indvars.iv.next275, %indvars.iv
  %i.fe = and i64 %i.fd, 4294967295
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 %i.fe
  store i8 %i.fc, ptr %i.ff, align 1, !tbaa !8
  %indvars.iv.next275.1 = add nuw nsw i64 %indvars.iv274, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next275.1, %i.cv
  br i1 %exitcond.not.1, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !16

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.fg = add i32 %i.cp, %i.l
  br label %bb.b

bb.ai:                                            ; preds = %bb.r
  %i.fh = tail call fastcc i32 @pefromupx(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %6, i32 noundef %4, i32 noundef %5, ptr noundef @__const.upx_inflate2b.magic, i32 noundef %i.l)
  br label %doubleebx.exit.thread

doubleebx.exit.thread:                            ; preds = %bb.w, %bb.x, %bb.u, %bb.v, %bb.af, %bb.ag, %bb.ah, %bb.q, %bb.d, %bb.e, %bb.g, %bb.h, %bb.m, %bb.n, %bb.k, %bb.l, %bb.ab, %bb.ac, %bb.z, %bb.aa, %bb.ai
  %.0111 = phi i32 [ %i.fh, %bb.ai ], [ -1, %bb.ab ], [ -1, %bb.m ], [ -1, %bb.d ], [ -1, %bb.aa ], [ -1, %bb.z ], [ -1, %bb.ac ], [ -1, %bb.l ], [ -1, %bb.k ], [ -1, %bb.n ], [ -1, %bb.h ], [ -1, %bb.g ], [ -1, %bb.e ], [ -1, %bb.q ], [ -1, %bb.ah ], [ -1, %bb.ag ], [ -1, %bb.af ], [ -1, %bb.v ], [ -1, %bb.u ], [ -1, %bb.x ], [ -1, %bb.w ]
  ret i32 %.0111
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @pefromupx(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef nonnull readonly captures(none) %7, i32 noundef %8) unnamed_addr #0 {
bb.a:
  %9 = ptrtoint ptr %2 to i64                     ; 3 uses
  %i.a = icmp eq ptr %2, null
  %i.b = icmp eq ptr %0, null
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %bb.aq, label %.preheader378

.preheader378:                                    ; preds = %bb.a
  %i.c = load i32, ptr %7, align 4, !tbaa !4      ; 2 uses
  %.not388 = icmp eq i32 %i.c, 0
  %.pre = sub i32 %4, %6                          ; 3 uses
  br i1 %.not388, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader378
  %i.d = add i32 %1, -5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %i.e = phi i32 [ %i.c, %.lr.ph ], [ %i.u, %bb.e ] ; 2 uses
  %i.f = phi i32 [ 1, %.lr.ph ], [ %i.r, %bb.e ]  ; 3 uses
  %i.g = add i32 %i.e, %.pre                      ; 3 uses
  %.not250 = icmp ugt i32 %i.g, %i.d
  br i1 %.not250, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add i32 %i.g, -2
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !8
  %i.l = icmp eq i8 %i.k, -115
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = add i32 %i.g, -1
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !8
  %i.q = icmp eq i8 %i.p, -66
  br i1 %i.q, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.r = add i32 %i.f, 1                          ; 2 uses
  %i.s = zext i32 %i.f to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !4    ; 2 uses
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !17

._crit_edge:                                      ; preds = %bb.e, %.preheader378
  %.lcssa386 = phi i32 [ 1, %.preheader378 ], [ %i.r, %bb.e ] ; 4 uses
  %i.v = add i32 %.pre, 128                       ; 2 uses
  %i.w = add i32 %1, -8                           ; 2 uses
  %i.x = icmp ult i32 %i.v, %i.w
  br i1 %i.x, label %bb.f, label %.thread345

bb.f:                                             ; preds = %._crit_edge
  %i.y = zext i32 %i.v to i64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.y
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str) #6
  %i.aa = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.ab = sub i32 %1, %.pre
  %i.ac = add i32 %i.ab, -136
  %i.ad = tail call ptr @cli_memstr(ptr noundef %i.z, i32 noundef %i.ac, ptr noundef nonnull @.str.1, i32 noundef 2) #6 ; 2 uses
  %.not252391 = icmp eq ptr %i.ad, null
  br i1 %.not252391, label %.thread345, label %.lr.ph393

.lr.ph393:                                        ; preds = %bb.f, %bb.i
  %i.ae = phi ptr [ %i.av, %bb.i ], [ %i.ad, %bb.f ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 6
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !8
  %i.ah = icmp eq i8 %i.ag, -117
  br i1 %i.ah, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph393
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 7
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !8
  %i.ak = icmp eq i8 %i.aj, 7
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.al = ptrtoint ptr %i.ae to i64
  %i.am = zext i32 %4 to i64
  %i.an = add i64 %i.aa, %i.am
  %reass.sub = sub i64 %i.al, %i.an
  %i.ao = trunc i64 %reass.sub to i32
  %i.ap = add i32 %i.ao, 2
  %i.aq = add i32 %i.ap, %6
  br label %.loopexit

bb.i:                                             ; preds = %bb.g, %.lr.ph393
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 1 ; 2 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %.neg = sub i64 %i.aa, %i.as
  %i.at = trunc i64 %.neg to i32
  %i.au = add i32 %i.w, %i.at
  %i.av = tail call ptr @cli_memstr(ptr noundef nonnull %i.ar, i32 noundef %i.au, ptr noundef nonnull @.str.1, i32 noundef 2) #6 ; 2 uses
  %.not252 = icmp eq ptr %i.av, null
  br i1 %.not252, label %.thread345, label %.lr.ph393, !llvm.loop !18

.loopexit:                                        ; preds = %bb.d, %bb.h
  %i.aw = phi i32 [ %.lcssa386, %bb.h ], [ %i.f, %bb.d ] ; 7 uses
  %.0 = phi i32 [ %i.aq, %bb.h ], [ %i.e, %bb.d ] ; 8 uses
  %i.ax = icmp ne i32 %.0, 0
  %i.ay = icmp ugt i32 %1, 3
  %or.cond5 = and i1 %i.ay, %i.ax
  br i1 %or.cond5, label %bb.j, label %.thread345

bb.j:                                             ; preds = %.loopexit
  %i.az = zext i32 %4 to i64
  %i.ba = zext i32 %6 to i64
  %i.bb = sub nsw i64 %i.az, %i.ba
  %i.bc = zext i32 %.0 to i64
  %i.bd = add nsw i64 %i.bb, %i.bc                ; 3 uses
  %.not253 = icmp slt i64 %i.bd, 0
  %i.be = zext i32 %1 to i64
  %i.bf = add nuw nsw i64 %i.bd, 4
  %.not254 = icmp sgt i64 %i.bf, %i.be
  %or.cond284 = select i1 %.not253, i1 true, i1 %.not254
  br i1 %or.cond284, label %.thread345, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %i.bd
  %.val306 = load i32, ptr %i.bg, align 1         ; 5 uses
  %i.bh = load i32, ptr %3, align 4, !tbaa !4
  %.fr449 = freeze i32 %i.bh                      ; 6 uses
  %.not255 = icmp ult i32 %.val306, %.fr449
  br i1 %.not255, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.2) #6
  br label %.thread345

bb.m:                                             ; preds = %bb.k
  %i.bi = sext i32 %.val306 to i64
  %i.bj = getelementptr inbounds i8, ptr %2, i64 %i.bi ; 2 uses
  %i.bk = icmp ult i32 %.fr449, 8
  %.not257402 = icmp slt i32 %.val306, 0
  %or.cond286403 = or i1 %i.bk, %.not257402
  br i1 %or.cond286403, label %.critedge, label %.lr.ph406.split.preheader

.lr.ph406.split.preheader:                        ; preds = %bb.m
  %i.bl = zext i32 %.fr449 to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 %i.bl ; 3 uses
  br label %.lr.ph406.split

.lr.ph406.split:                                  ; preds = %.lr.ph406.split.preheader, %.critedge7
  %.0203404 = phi ptr [ %i.bt, %.critedge7 ], [ %i.bj, %.lr.ph406.split.preheader ] ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.0203404, i64 8 ; 4 uses
  %.not258.not = icmp ugt ptr %i.bn, %i.bm
  br i1 %.not258.not, label %.critedge, label %bb.n

bb.n:                                             ; preds = %.lr.ph406.split
  %.0203.val = load i32, ptr %.0203404, align 1
  %.not259 = icmp eq i32 %.0203.val, 0
  br i1 %.not259, label %.critedge, label %.preheader377

.preheader377:                                    ; preds = %bb.n
  %.not263394 = icmp ult ptr %i.bn, %2
  br i1 %.not263394, label %.critedge7, label %.lr.ph396

.lr.ph396:                                        ; preds = %.preheader377, %.critedge9
  %.1204395 = phi ptr [ %i.bs, %.critedge9 ], [ %i.bn, %.preheader377 ] ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.1204395, i64 2
  %.not264.not = icmp ugt ptr %i.bo, %i.bm
  br i1 %.not264.not, label %.critedge7, label %bb.o

bb.o:                                             ; preds = %.lr.ph396
  %i.bp = load i8, ptr %.1204395, align 1, !tbaa !8
  %.not265 = icmp eq i8 %i.bp, 0
  br i1 %.not265, label %.critedge7, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.o
  %scevgep = getelementptr nuw i8, ptr %.1204395, i64 1
  %.not268 = icmp uge ptr %scevgep, %2
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.p
  %.1204.pn = phi ptr [ %.2205, %bb.p ], [ %.1204395, %.preheader.preheader ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.1204.pn, i64 3
  %.not269 = icmp ule ptr %i.bq, %i.bm
  %or.cond448 = select i1 %.not268, i1 %.not269, i1 false
  br i1 %or.cond448, label %bb.p, label %.critedge9

bb.p:                                             ; preds = %.preheader
  %.2205 = getelementptr inbounds nuw i8, ptr %.1204.pn, i64 1 ; 2 uses
  %i.br = load i8, ptr %.2205, align 1, !tbaa !8
  %.not270 = icmp eq i8 %i.br, 0
  br i1 %.not270, label %.critedge9, label %.preheader, !llvm.loop !19

.critedge9:                                       ; preds = %.preheader, %bb.p
  %i.bs = getelementptr inbounds nuw i8, ptr %.1204.pn, i64 2 ; 3 uses
  %.not263 = icmp ult ptr %i.bs, %2
  br i1 %.not263, label %.critedge7, label %.lr.ph396, !llvm.loop !20

.critedge7:                                       ; preds = %bb.o, %.lr.ph396, %.critedge9, %.preheader377
  %.1204.lcssa = phi ptr [ %i.bn, %.preheader377 ], [ %i.bs, %.critedge9 ], [ %.1204395, %.lr.ph396 ], [ %.1204395, %bb.o ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.1204.lcssa, i64 1 ; 3 uses
  %.not257 = icmp ult ptr %i.bt, %2
  br i1 %.not257, label %.critedge, label %.lr.ph406.split, !llvm.loop !21

.critedge:                                        ; preds = %bb.n, %.critedge7, %.lr.ph406.split, %bb.m
  %.0203.lcssa = phi ptr [ %i.bj, %bb.m ], [ %.0203404, %.lr.ph406.split ], [ %i.bt, %.critedge7 ], [ %.0203404, %bb.n ] ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0203.lcssa, i64 4 ; 3 uses
  %i.bv = icmp ult i32 %.fr449, 248
  %.not.i = icmp ult ptr %i.bu, %2
  %or.cond.i = or i1 %i.bv, %.not.i
  br i1 %or.cond.i, label %checkpe.exit, label %bb.q

bb.q:                                             ; preds = %.critedge
  %i.bw = getelementptr inbounds nuw i8, ptr %.0203.lcssa, i64 252 ; 3 uses
  %i.bx = zext i32 %.fr449 to i64
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 %i.bx ; 2 uses
  %.not39.not.i = icmp ugt ptr %i.bw, %i.by
  br i1 %.not39.not.i, label %checkpe.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val49.i = load i32, ptr %i.bu, align 1
  %.not40.i = icmp eq i32 %.val49.i, 17744
  br i1 %.not40.i, label %bb.s, label %checkpe.exit

bb.s:                                             ; preds = %bb.r
  %i.bz = getelementptr inbounds nuw i8, ptr %.0203.lcssa, i64 60
  %.val.i = load i32, ptr %i.bz, align 1          ; 4 uses
  %.not41.i = icmp eq i32 %.val.i, 0
  br i1 %.not41.i, label %checkpe.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ca = getelementptr inbounds nuw i8, ptr %.0203.lcssa, i64 10
  %i.cb = load i16, ptr %i.ca, align 1            ; 2 uses
  %i.cc = zext i16 %i.cb to i32                   ; 3 uses
  %.not42.i = icmp eq i16 %i.cb, 0
  br i1 %.not42.i, label %checkpe.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cd = mul nuw nsw i32 %i.cc, 40               ; 2 uses
  %.not43.i = icmp ugt i32 %i.cd, %.fr449
  br i1 %.not43.i, label %checkpe.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.ce
  %.not45.not.i = icmp ugt ptr %i.cf, %i.by
  %spec.select.i = select i1 %.not45.not.i, ptr null, ptr %i.bw
  br label %checkpe.exit

checkpe.exit:                                     ; preds = %.critedge, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v
  %.5343 = phi i32 [ %i.aw, %.critedge ], [ %i.aw, %bb.q ], [ %i.aw, %bb.s ], [ 0, %bb.t ], [ %i.cc, %bb.u ], [ %i.cc, %bb.v ], [ %i.aw, %bb.r ]
  %.5336 = phi i32 [ %.0, %.critedge ], [ %.0, %bb.q ], [ 0, %bb.s ], [ %.val.i, %bb.t ], [ %.val.i, %bb.u ], [ %.val.i, %bb.v ], [ %.0, %bb.r ]
  %.0.i = phi ptr [ null, %.critedge ], [ null, %bb.q ], [ null, %bb.s ], [ null, %bb.t ], [ null, %bb.u ], [ %spec.select.i, %bb.v ], [ null, %bb.r ] ; 2 uses
  %.not260 = icmp eq ptr %.0.i, null
  %spec.select = select i1 %.not260, ptr null, ptr %i.bu
  br label %.thread345

.thread345:                                       ; preds = %bb.i, %bb.f, %._crit_edge, %checkpe.exit, %bb.l, %bb.j, %.loopexit
  %.1339 = phi i32 [ %i.aw, %bb.j ], [ %.5343, %checkpe.exit ], [ %i.aw, %bb.l ], [ %i.aw, %.loopexit ], [ %.lcssa386, %._crit_edge ], [ %.lcssa386, %bb.f ], [ %.lcssa386, %bb.i ] ; 3 uses
  %.1 = phi i32 [ %.0, %bb.j ], [ %.5336, %checkpe.exit ], [ %.0, %bb.l ], [ %.0, %.loopexit ], [ 0, %._crit_edge ], [ 0, %bb.f ], [ 0, %bb.i ] ; 3 uses
  %.0213 = phi i32 [ 0, %bb.j ], [ %.val306, %checkpe.exit ], [ %.val306, %bb.l ], [ 0, %.loopexit ], [ 0, %._crit_edge ], [ 0, %bb.f ], [ 0, %bb.i ]
  %.3206 = phi ptr [ null, %bb.j ], [ %spec.select, %checkpe.exit ], [ null, %bb.l ], [ null, %.loopexit ], [ null, %._crit_edge ], [ null, %bb.f ], [ null, %bb.i ] ; 2 uses
  %.0199 = phi ptr [ undef, %bb.j ], [ %.0.i, %checkpe.exit ], [ undef, %bb.l ], [ undef, %.loopexit ], [ undef, %._crit_edge ], [ undef, %bb.f ], [ undef, %bb.i ]
  %i.cg = icmp eq ptr %.3206, null
  %i.ch = icmp ugt i32 %8, 288
  %or.cond11 = and i1 %i.ch, %i.cg
  br i1 %or.cond11, label %.lr.ph419, label %bb.aa

.lr.ph419:                                        ; preds = %.thread345
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.3) #6
  %i.ci = add i32 %8, -288
  %i.cj = zext i32 %i.ci to i64                   ; 2 uses
  %i.ck = load i32, ptr %3, align 4, !tbaa !4     ; 3 uses
  %i.cl = icmp ult i32 %i.ck, 248
  %i.cm = zext i32 %i.ck to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 %i.cm ; 2 uses
  br i1 %i.cl, label %select.unfold.us.preheader, label %.lr.ph419.split.preheader

.lr.ph419.split.preheader:                        ; preds = %.lr.ph419
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 %i.cj
  br label %.lr.ph419.split

select.unfold.us.preheader:                       ; preds = %.lr.ph419
  %i.cp = add i64 %9, %i.cj
  %i.cq = add i64 %i.cp, -1
  %i.cr = tail call i64 @llvm.usub.sat.i64(i64 %9, i64 %i.cq)
  %i.cs = sub i64 0, %i.cr
  %scevgep467 = getelementptr i8, ptr %2, i64 %i.cs
  br label %checkpe.exit319

.lr.ph419.split:                                  ; preds = %.lr.ph419.split.preheader, %select.unfold
  %.4207417 = phi ptr [ %i.db, %select.unfold ], [ %i.co, %.lr.ph419.split.preheader ] ; 6 uses
  %.2416 = phi i32 [ %.6337.ph, %select.unfold ], [ %.1, %.lr.ph419.split.preheader ] ; 2 uses
  %.2340415 = phi i32 [ %.6344.ph, %select.unfold ], [ %.1339, %.lr.ph419.split.preheader ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.4207417, i64 248 ; 3 uses
  %.not39.not.i309 = icmp ugt ptr %i.ct, %i.cn
  br i1 %.not39.not.i309, label %select.unfold, label %bb.w

bb.w:                                             ; preds = %.lr.ph419.split
  %.val49.i310 = load i32, ptr %.4207417, align 1
  %.not40.i311 = icmp eq i32 %.val49.i310, 17744
  br i1 %.not40.i311, label %bb.x, label %select.unfold

bb.x:                                             ; preds = %bb.w
  %i.cu = getelementptr inbounds nuw i8, ptr %.4207417, i64 56
  %.val.i313 = load i32, ptr %i.cu, align 1       ; 4 uses
  %.not41.i314 = icmp eq i32 %.val.i313, 0
  br i1 %.not41.i314, label %select.unfold, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cv = getelementptr inbounds nuw i8, ptr %.4207417, i64 6
  %i.cw = load i16, ptr %i.cv, align 1            ; 2 uses
  %.not42.i315 = icmp eq i16 %i.cw, 0
  br i1 %.not42.i315, label %select.unfold, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cx = zext i16 %i.cw to i32                   ; 3 uses
  %i.cy = mul nuw nsw i32 %i.cx, 40               ; 2 uses
  %.not43.i316 = icmp ugt i32 %i.cy, %i.ck
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cz
  %.not45.not.i317 = icmp ugt ptr %i.da, %i.cn
  %or.cond370 = select i1 %.not43.i316, i1 true, i1 %.not45.not.i317
  br i1 %or.cond370, label %select.unfold, label %checkpe.exit319

select.unfold:                                    ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %.lr.ph419.split
  %.6344.ph = phi i32 [ %.2340415, %.lr.ph419.split ], [ %.2340415, %bb.w ], [ %i.cx, %bb.z ], [ 0, %bb.y ], [ %.2340415, %bb.x ] ; 2 uses
  %.6337.ph = phi i32 [ %.2416, %.lr.ph419.split ], [ %.2416, %bb.w ], [ %.val.i313, %bb.z ], [ %.val.i313, %bb.y ], [ 0, %bb.x ] ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %.4207417, i64 -1 ; 3 uses
  %i.dc = icmp ugt ptr %i.db, %2
  br i1 %i.dc, label %.lr.ph419.split, label %checkpe.exit319, !llvm.loop !22

checkpe.exit319:                                  ; preds = %select.unfold, %bb.z, %select.unfold.us.preheader
  %.4207.lcssa = phi ptr [ %scevgep467, %select.unfold.us.preheader ], [ %.4207417, %bb.z ], [ %i.db, %select.unfold ] ; 2 uses
  %.3341 = phi i32 [ %.1339, %select.unfold.us.preheader ], [ %i.cx, %bb.z ], [ %.6344.ph, %select.unfold ]
  %.3334 = phi i32 [ %.1, %select.unfold.us.preheader ], [ %.val.i313, %bb.z ], [ %.6337.ph, %select.unfold ]
  %.2201 = phi ptr [ null, %select.unfold.us.preheader ], [ %i.ct, %bb.z ], [ null, %select.unfold ]
  %i.dd = ptrtoint ptr %.4207.lcssa to i64
  %i.de = sub i64 %i.dd, %9
  %i.df = trunc i64 %i.de to i32                  ; 2 uses
  %.not272 = icmp eq i32 %i.df, 0
  br i1 %.not272, label %.thread355, label %bb.aa

bb.aa:                                            ; preds = %checkpe.exit319, %.thread345
  %.4342 = phi i32 [ %.3341, %checkpe.exit319 ], [ %.1339, %.thread345 ] ; 8 uses
  %.4335 = phi i32 [ %.3334, %checkpe.exit319 ], [ %.1, %.thread345 ] ; 9 uses
  %.1214 = phi i32 [ %i.df, %checkpe.exit319 ], [ %.0213, %.thread345 ]
  %.5208 = phi ptr [ %.4207.lcssa, %checkpe.exit319 ], [ %.3206, %.thread345 ] ; 5 uses
  %.3202 = phi ptr [ %.2201, %checkpe.exit319 ], [ %.0199, %.thread345 ]
  %.1214.fr = freeze i32 %.1214                   ; 3 uses
  %.not273 = icmp eq ptr %.5208, null
  br i1 %.not273, label %.thread355, label %bb.ad

.thread355:                                       ; preds = %checkpe.exit319, %bb.aa
  %i.dg = and i32 %8, 4095
  %.not274 = icmp eq i32 %i.dg, 0
  %i.dh = select i1 %.not274, i32 0, i32 4096
  %i.di = add i32 %i.dh, %8
  %i.dj = and i32 %i.di, -4096                    ; 4 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.4) #6
  %i.dk = or disjoint i32 %i.dj, 512              ; 2 uses
  %i.dl = zext i32 %i.dk to i64
  %i.dm = tail call ptr @cli_calloc(i64 noundef %i.dl, i64 noundef 1) #6 ; 6 uses
  %.not275 = icmp eq ptr %i.dm, null
  br i1 %.not275, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.thread355
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.5) #6
  br label %bb.aq

bb.ac:                                            ; preds = %.thread355
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(208) %i.dm, ptr noundef nonnull align 1 dereferenceable(208) @.str.6, i64 208, i1 false)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 208
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(288) %i.dn, ptr noundef nonnull align 1 dereferenceable(288) @.str.7, i64 288, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 512
  %i.dp = zext i32 %8 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.do, ptr align 1 %2, i64 %i.dp, i1 false)
  %i.dq = add i32 %8, 512
  %i.dr = zext i32 %i.dq to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr nonnull align 1 %i.dm, i64 %i.dr, i1 false)
  tail call void @free(ptr noundef nonnull %i.dm) #6
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.dt = add i32 %i.dj, 4096
  store i32 %i.dt, ptr %i.ds, align 1
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 464
  store i32 %i.dj, ptr %i.du, align 1
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 472
  store i32 %i.dj, ptr %i.dv, align 1
  store i32 %i.dk, ptr %3, align 4, !tbaa !4
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.8) #6
  br label %bb.aq

bb.ad:                                            ; preds = %bb.aa
  %.not276 = icmp eq i32 %.4335, 0                ; 2 uses
  %i.dw = mul i32 %.4342, 40
  %i.dx = add i32 %i.dw, 456                      ; 3 uses
  br i1 %.not276, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dy = udiv i32 %i.dx, %.4335
  %i.dz = urem i32 %i.dx, %.4335
  %i.ea = icmp ne i32 %i.dz, 0
  %i.eb = zext i1 %i.ea to i32
  %i.ec = add i32 %i.dy, %i.eb
  %i.ed = mul i32 %i.ec, %.4335
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.ee = phi i32 [ %i.ed, %bb.ae ], [ %i.dx, %bb.ad ] ; 2 uses
  %.not451 = icmp eq i32 %.4342, 0                ; 2 uses
  br i1 %.not451, label %._crit_edge438, label %.lr.ph437

.lr.ph437:                                        ; preds = %bb.af
  %i.ef = icmp eq i32 %.1214.fr, 0
  %i.eg = add i32 %.1214.fr, %5
  br i1 %i.ef, label %.split, label %.lr.ph437.split

.lr.ph437.split:                                  ; preds = %.lr.ph437, %bb.ak
  %.4435 = phi ptr [ %i.fd, %bb.ak ], [ %.3202, %.lr.ph437 ] ; 8 uses
  %.0211434 = phi i32 [ %i.fc, %bb.ak ], [ %i.ee, %.lr.ph437 ] ; 2 uses
  %.0215433 = phi i32 [ %i.fe, %bb.ak ], [ 0, %.lr.ph437 ] ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.4435, i64 8
  %.val303 = load i32, ptr %i.eh, align 1         ; 3 uses
  br i1 %.not276, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph437.split
  %i.ei = udiv i32 %.val303, %.4335
  %i.ej = urem i32 %.val303, %.4335
  %i.ek = icmp ne i32 %i.ej, 0
  %i.el = zext i1 %i.ek to i32
  %i.em = add i32 %i.ei, %i.el
  %i.en = mul i32 %i.em, %.4335
  %i.eo = getelementptr inbounds nuw i8, ptr %.4435, i64 12
  %.val302 = load i32, ptr %i.eo, align 1
  %.fr = freeze i32 %.val302                      ; 2 uses
  %i.ep = urem i32 %.fr, %.4335
  %i.eq = sub nuw i32 %.fr, %i.ep
  br label %bb.ai

bb.ah:                                            ; preds = %.lr.ph437.split
  %i.er = getelementptr inbounds nuw i8, ptr %.4435, i64 12
  %.val301 = load i32, ptr %i.er, align 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.es = phi i32 [ %i.en, %bb.ag ], [ %.val303, %bb.ah ] ; 5 uses
  %i.et = phi i32 [ %i.eq, %bb.ag ], [ %.val301, %bb.ah ] ; 3 uses
  %i.eu = add i32 %i.es, -1
  %i.ev = icmp uge i32 %i.eu, %.1214.fr
  %.not281 = icmp ult i32 %i.et, %5
  %or.cond294 = select i1 %i.ev, i1 true, i1 %.not281
  br i1 %or.cond294, label %.split, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ew = add i32 %i.et, %i.es                    ; 2 uses
  %.not282 = icmp ule i32 %i.ew, %i.eg
  %i.ex = icmp ugt i32 %i.ew, %5
  %or.cond295 = and i1 %.not282, %i.ex
  br i1 %or.cond295, label %bb.ak, label %.split

.split:                                           ; preds = %bb.aj, %bb.ai, %.lr.ph437
  %.us-phi440 = phi i32 [ 0, %.lr.ph437 ], [ %.0215433, %bb.ai ], [ %.0215433, %bb.aj ]
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.9, i32 noundef %.us-phi440) #6
  br label %bb.aq

bb.ak:                                            ; preds = %bb.aj
  %i.ey = getelementptr inbounds nuw i8, ptr %.4435, i64 8
  store i32 %i.es, ptr %i.ey, align 1
  %i.ez = getelementptr inbounds nuw i8, ptr %.4435, i64 12
  store i32 %i.et, ptr %i.ez, align 1
  %i.fa = getelementptr inbounds nuw i8, ptr %.4435, i64 16
  store i32 %i.es, ptr %i.fa, align 1
  %i.fb = getelementptr inbounds nuw i8, ptr %.4435, i64 20
  store i32 %.0211434, ptr %i.fb, align 1
  %i.fc = add i32 %i.es, %.0211434                ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.4435, i64 40
  %i.fe = add nuw i32 %.0215433, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.fe, %.4342
  br i1 %exitcond.not, label %._crit_edge438, label %.lr.ph437.split, !llvm.loop !23

._crit_edge438:                                   ; preds = %bb.ak, %bb.af
  %.0211.lcssa = phi i32 [ %i.ee, %bb.af ], [ %i.fc, %bb.ak ] ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.5208, i64 8
  store i32 1296124995, ptr %i.ff, align 1
  %i.fg = getelementptr inbounds nuw i8, ptr %.5208, i64 60
  store i32 %.4335, ptr %i.fg, align 1
  %i.fh = zext i32 %.0211.lcssa to i64            ; 2 uses
  %i.fi = tail call ptr @cli_calloc(i64 noundef %i.fh, i64 noundef 1) #6 ; 9 uses
  %.not277 = icmp eq ptr %i.fi, null
  br i1 %.not277, label %bb.al, label %bb.am

bb.al:                                            ; preds = %._crit_edge438
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.5) #6
  br label %bb.aq

bb.am:                                            ; preds = %._crit_edge438
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(208) %i.fi, ptr noundef nonnull align 1 dereferenceable(208) @.str.6, i64 208, i1 false)
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 208
  %i.fk = mul i32 %.4342, 40
  %i.fl = add i32 %i.fk, 248
  %i.fm = zext i32 %i.fl to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fj, ptr nonnull align 1 %.5208, i64 %i.fm, i1 false)
  br i1 %.not451, label %._crit_edge446, label %.lr.ph445

.lr.ph445:                                        ; preds = %bb.am
  %i.fn = getelementptr inbounds nuw i8, ptr %.5208, i64 248 ; 2 uses
  %i.fo = zext i32 %5 to i64
  %i.fp = sub nsw i64 0, %i.fo
  %invariant.gep = getelementptr i8, ptr %2, i64 %i.fp ; 3 uses
  %xtraiter = and i32 %.4342, 1
  %i.fq = icmp eq i32 %.4342, 1
  br i1 %i.fq, label %.epil.preheader, label %.lr.ph445.new

.lr.ph445.new:                                    ; preds = %.lr.ph445
  %unroll_iter = and i32 %.4342, -2
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %.lr.ph445.new
  %.6443 = phi ptr [ %i.fn, %.lr.ph445.new ], [ %i.gf, %bb.an ] ; 7 uses
  %niter = phi i32 [ 0, %.lr.ph445.new ], [ %niter.next.1, %bb.an ]
  %i.fr = getelementptr inbounds nuw i8, ptr %.6443, i64 20
  %.val300 = load i32, ptr %i.fr, align 1
  %i.fs = sext i32 %.val300 to i64
  %i.ft = getelementptr inbounds i8, ptr %i.fi, i64 %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %.6443, i64 12
  %.val299 = load i32, ptr %i.fu, align 1
  %i.fv = sext i32 %.val299 to i64
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.fv
  %i.fw = getelementptr inbounds nuw i8, ptr %.6443, i64 16
  %.val = load i32, ptr %i.fw, align 1
  %i.fx = sext i32 %.val to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ft, ptr align 1 %gep, i64 %i.fx, i1 false)
  %i.fy = getelementptr inbounds nuw i8, ptr %.6443, i64 60
  %.val300.1 = load i32, ptr %i.fy, align 1
  %i.fz = sext i32 %.val300.1 to i64
  %i.ga = getelementptr inbounds i8, ptr %i.fi, i64 %i.fz
  %i.gb = getelementptr inbounds nuw i8, ptr %.6443, i64 52
  %.val299.1 = load i32, ptr %i.gb, align 1
  %i.gc = sext i32 %.val299.1 to i64
end_hunk_0
