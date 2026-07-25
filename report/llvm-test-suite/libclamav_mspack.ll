inline.NumInlined: 60
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 47
begin_hunk_0_@lzx_make_decode_table:bb.a
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !159

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n186, label %..loopexit107_crit_edge, label %.preheader106.preheader

.preheader106.preheader:                          ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.083117.ph = phi i32 [ %.074123, %iter.check ], [ %i.g, %vec.epilog.iter.check ], [ %i.h, %vec.epilog.middle.block ] ; 4 uses
  %.085116.ph = phi i32 [ %.177120, %iter.check ], [ %i.u, %vec.epilog.iter.check ], [ %i.aa, %vec.epilog.middle.block ] ; 2 uses
  %i.af = add nsw i32 %.083117.ph, -1
  %xtraiter = and i32 %.083117.ph, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader106.prol.loopexit, label %.preheader106.prol

.preheader106.prol:                               ; preds = %.preheader106.preheader, %.preheader106.prol
  %.083117.prol = phi i32 [ %i.ag, %.preheader106.prol ], [ %.083117.ph, %.preheader106.preheader ]
  %.085116.prol = phi i32 [ %i.ah, %.preheader106.prol ], [ %.085116.ph, %.preheader106.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader106.prol ], [ 0, %.preheader106.preheader ]
  %i.ag = add nsw i32 %.083117.prol, -1           ; 2 uses
  %i.ah = add i32 %.085116.prol, 1                ; 2 uses
  %i.ai = zext i32 %.085116.prol to i64
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ai
  store i16 %.088118, ptr %i.aj, align 2, !tbaa !51
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader106.prol.loopexit, label %.preheader106.prol, !llvm.loop !160

.preheader106.prol.loopexit:                      ; preds = %.preheader106.prol, %.preheader106.preheader
  %.083117.unr = phi i32 [ %.083117.ph, %.preheader106.preheader ], [ %i.ag, %.preheader106.prol ]
  %.085116.unr = phi i32 [ %.085116.ph, %.preheader106.preheader ], [ %i.ah, %.preheader106.prol ]
  %i.ak = icmp ult i32 %i.af, 3
  br i1 %i.ak, label %..loopexit107_crit_edge, label %.preheader106

.preheader106:                                    ; preds = %.preheader106.prol.loopexit, %.preheader106
  %.083117 = phi i32 [ %i.au, %.preheader106 ], [ %.083117.unr, %.preheader106.prol.loopexit ]
  %.085116 = phi i32 [ %i.av, %.preheader106 ], [ %.085116.unr, %.preheader106.prol.loopexit ] ; 5 uses
  %i.al = add i32 %.085116, 1
  %i.am = zext i32 %.085116 to i64
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.am
  store i16 %.088118, ptr %i.an, align 2, !tbaa !51
  %i.ao = add i32 %.085116, 2
  %i.ap = zext i32 %i.al to i64
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ap
  store i16 %.088118, ptr %i.aq, align 2, !tbaa !51
  %i.ar = add i32 %.085116, 3
  %i.as = zext i32 %i.ao to i64
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.as
  store i16 %.088118, ptr %i.at, align 2, !tbaa !51
  %i.au = add nsw i32 %.083117, -4                ; 2 uses
  %i.av = add i32 %.085116, 4
  %i.aw = zext i32 %i.ar to i64
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.aw
  store i16 %.088118, ptr %i.ax, align 2, !tbaa !51
  %.not103.3 = icmp eq i32 %i.au, 0
  br i1 %.not103.3, label %..loopexit107_crit_edge, label %.preheader106, !llvm.loop !161

..loopexit107_crit_edge:                          ; preds = %.preheader106.prol.loopexit, %.preheader106, %middle.block, %vec.epilog.middle.block, %.preheader108.split
  %.278 = phi i32 [ %.177120, %.preheader108.split ], [ %i.r, %middle.block ], [ %i.r, %vec.epilog.middle.block ], [ %i.r, %.preheader106 ], [ %i.r, %.preheader106.prol.loopexit ] ; 2 uses
  %i.ay = add nuw nsw i16 %.088118, 1             ; 2 uses
  %i.az = icmp samesign ult i16 %i.ay, %i.d
  br i1 %i.az, label %.preheader108.split, label %.split.us, !llvm.loop !156

.split.us:                                        ; preds = %..loopexit107_crit_edge, %.preheader106.us
  %.us-phi = phi i32 [ %.076122, %.preheader106.us ], [ %.278, %..loopexit107_crit_edge ] ; 7 uses
  %i.ba = lshr i32 %.074123, 1
  %i.bb = add nuw nsw i8 %.081121, 1
  %.not.not = icmp samesign ult i8 %.081121, %i.c
  br i1 %.not.not, label %.preheader108, label %bb.c, !llvm.loop !162

bb.c:                                             ; preds = %.split.us
  %i.bc = icmp eq i32 %.us-phi, %.fr147
  br i1 %i.bc, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bd = and i32 %.us-phi, 65535
  %i.be = icmp samesign ugt i32 %.fr147, %i.bd
  br i1 %i.be, label %iter.check204, label %.preheader104.preheader

iter.check204:                                    ; preds = %bb.d
  %i.bf = trunc i32 %.us-phi to i16               ; 8 uses
  %i.bg = add i32 %.us-phi, 1
  %i.bh = and i32 %i.bg, 65535                    ; 2 uses
  %umax191 = tail call i32 @llvm.umax.i32(i32 %.fr147, i32 %i.bh)
  %i.bi = add i32 %umax191, 1
  %i.bj = sub i32 %i.bi, %i.bh                    ; 7 uses
  %min.iters.check192 = icmp ult i32 %i.bj, 4
  br i1 %min.iters.check192, label %.lr.ph.preheader, label %vector.scevcheck189

vector.scevcheck189:                              ; preds = %iter.check204
  %i.bk = add i32 %.us-phi, 1
  %i.bl = and i32 %i.bk, 65535
  %i.bm = tail call i32 @llvm.usub.sat.i32(i32 %.fr147, i32 %i.bl) ; 3 uses
  %i.bn = trunc i32 %i.bm to i16
  %i.bo = sub i16 -2, %i.bf
  %i.bp = icmp ult i16 %i.bo, %i.bn
  %i.bq = trunc i32 %i.bm to i16
  %i.br = xor i16 %i.bf, -1
  %i.bs = icmp ult i16 %i.br, %i.bq
  %i.bt = icmp ugt i32 %i.bm, 65535
  %i.bu = or i1 %i.bs, %i.bt
  %i.bv = or i1 %i.bp, %i.bu
  br i1 %i.bv, label %.lr.ph.preheader, label %vector.main.loop.iter.check193

vector.main.loop.iter.check193:                   ; preds = %vector.scevcheck189
  %min.iters.check194 = icmp ult i32 %i.bj, 16
  br i1 %min.iters.check194, label %vec.epilog.ph208, label %vector.ph195

vector.ph195:                                     ; preds = %vector.main.loop.iter.check193
  %n.mod.vf196 = and i32 %i.bj, 12
  %n.vec197 = and i32 %i.bj, -16                  ; 4 uses
  %i.bw = trunc i32 %n.vec197 to i16
  %i.bx = add i16 %i.bf, %i.bw
  br label %vector.body198

vector.body198:                                   ; preds = %vector.body198, %vector.ph195
  %index199 = phi i32 [ 0, %vector.ph195 ], [ %index.next200, %vector.body198 ] ; 2 uses
  %i.by = trunc i32 %index199 to i16
  %i.bz = add i16 %i.bf, %i.by
  %i.ca = zext i16 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ca ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store <8 x i16> splat (i16 -1), ptr %i.cb, align 2, !tbaa !51
  store <8 x i16> splat (i16 -1), ptr %i.cc, align 2, !tbaa !51
  %index.next200 = add nuw i32 %index199, 16      ; 2 uses
  %i.cd = icmp eq i32 %index.next200, %n.vec197
  br i1 %i.cd, label %middle.block201, label %vector.body198, !llvm.loop !163

middle.block201:                                  ; preds = %vector.body198
  %cmp.n202 = icmp eq i32 %i.bj, %n.vec197
  br i1 %cmp.n202, label %.preheader104.preheader, label %vec.epilog.iter.check206

vec.epilog.iter.check206:                         ; preds = %middle.block201
  %min.epilog.iters.check207 = icmp eq i32 %n.mod.vf196, 0
  br i1 %min.epilog.iters.check207, label %.lr.ph.preheader, label %vec.epilog.ph208, !prof !158

vec.epilog.ph208:                                 ; preds = %vector.main.loop.iter.check193, %vec.epilog.iter.check206
  %vec.epilog.resume.val203 = phi i32 [ %n.vec197, %vec.epilog.iter.check206 ], [ 0, %vector.main.loop.iter.check193 ]
  %n.vec210 = and i32 %i.bj, -4                   ; 3 uses
  %i.ce = trunc i32 %n.vec210 to i16
  %i.cf = add i16 %i.bf, %i.ce
  br label %vec.epilog.vector.body211

vec.epilog.vector.body211:                        ; preds = %vec.epilog.vector.body211, %vec.epilog.ph208
  %index212 = phi i32 [ %vec.epilog.resume.val203, %vec.epilog.ph208 ], [ %index.next213, %vec.epilog.vector.body211 ] ; 2 uses
  %i.cg = trunc i32 %index212 to i16
  %i.ch = add i16 %i.bf, %i.cg
  %i.ci = zext i16 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ci
  store <4 x i16> splat (i16 -1), ptr %i.cj, align 2, !tbaa !51
  %index.next213 = add nuw i32 %index212, 4       ; 2 uses
  %i.ck = icmp eq i32 %index.next213, %n.vec210
  br i1 %i.ck, label %vec.epilog.middle.block214, label %vec.epilog.vector.body211, !llvm.loop !164

vec.epilog.middle.block214:                       ; preds = %vec.epilog.vector.body211
  %cmp.n215 = icmp eq i32 %i.bj, %n.vec210
  br i1 %cmp.n215, label %.preheader104.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.scevcheck189, %iter.check204, %vec.epilog.iter.check206, %vec.epilog.middle.block214
  %.189124.ph = phi i16 [ %i.bf, %iter.check204 ], [ %i.bf, %vector.scevcheck189 ], [ %i.bx, %vec.epilog.iter.check206 ], [ %i.cf, %vec.epilog.middle.block214 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.189124 = phi i16 [ %i.cn, %.lr.ph ], [ %.189124.ph, %.lr.ph.preheader ] ; 2 uses
  %i.cl = zext i16 %.189124 to i64
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.cl
  store i16 -1, ptr %i.cm, align 2, !tbaa !51
  %i.cn = add i16 %.189124, 1                     ; 2 uses
  %i.co = zext i16 %i.cn to i32
  %i.cp = icmp samesign ugt i32 %.fr147, %i.co
  br i1 %i.cp, label %.lr.ph, label %.preheader104.preheader, !llvm.loop !165

.preheader104.preheader:                          ; preds = %.lr.ph, %middle.block201, %vec.epilog.middle.block214, %bb.d
  %i.cq = shl nuw nsw i32 65536, %1               ; 2 uses
  %i.cr = shl i32 %.us-phi, 16
  %i.cs = add nuw nsw i32 %1, 1
  %i.ct = trunc nuw nsw i32 %0 to i16
  br label %.preheader104.split.us.preheader

.preheader104.split.us.preheader:                 ; preds = %.split136.us, %.preheader104.preheader
  %indvars.iv156 = phi i32 [ %i.cs, %.preheader104.preheader ], [ %indvars.iv.next157, %.split136.us ] ; 2 uses
  %indvars.iv = phi i32 [ 1, %.preheader104.preheader ], [ %indvars.iv.next, %.split136.us ] ; 2 uses
  %.0142 = phi i32 [ %i.b, %.preheader104.preheader ], [ %.4.us, %.split136.us ]
  %.175141 = phi i32 [ 32768, %.preheader104.preheader ], [ %i.dw, %.split136.us ] ; 2 uses
  %.379140 = phi i32 [ %i.cr, %.preheader104.preheader ], [ %.5.us, %.split136.us ]
  br label %.preheader104.split.us

.preheader104.split.us:                           ; preds = %.preheader104.split.us.preheader, %4
  %.1134.us = phi i32 [ %.4.us, %4 ], [ %.0142, %.preheader104.split.us.preheader ] ; 2 uses
  %.480133.us = phi i32 [ %.5.us, %4 ], [ %.379140, %.preheader104.split.us.preheader ] ; 4 uses
  %.290132.us = phi i16 [ %5, %4 ], [ 0, %.preheader104.split.us.preheader ] ; 3 uses
  %i.cu = zext nneg i16 %.290132.us to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !31
  %i.cx = zext i8 %i.cw to i32
  %.not100.us = icmp eq i32 %indvars.iv156, %i.cx
  br i1 %.not100.us, label %.lr.ph129.us, label %4

.lr.ph129.us:                                     ; preds = %.preheader104.split.us
  %i.cy = lshr i32 %.480133.us, 16
  br label %bb.e

4:                                                ; preds = %._crit_edge130.us, %.preheader104.split.us
  %.5.us = phi i32 [ %.480133.us, %.preheader104.split.us ], [ %i.du, %._crit_edge130.us ] ; 3 uses
  %.4.us = phi i32 [ %.1134.us, %.preheader104.split.us ], [ %.3.us, %._crit_edge130.us ] ; 2 uses
  %5 = add nuw nsw i16 %.290132.us, 1             ; 2 uses
  %6 = icmp samesign ult i16 %5, %i.ct
  br i1 %6, label %.preheader104.split.us, label %.split136.us, !llvm.loop !166

bb.e:                                             ; preds = %.lr.ph129.us, %bb.g
  %.2127.us = phi i32 [ %.1134.us, %.lr.ph129.us ], [ %.3.us, %bb.g ] ; 4 uses
  %.184126.us = phi i32 [ 0, %.lr.ph129.us ], [ %i.dr, %bb.g ] ; 2 uses
  %.186125.us = phi i32 [ %i.cy, %.lr.ph129.us ], [ %spec.select.us, %bb.g ]
  %i.cz = zext nneg i32 %.186125.us to i64
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.cz ; 2 uses
  %i.db = load i16, ptr %i.da, align 2, !tbaa !51 ; 2 uses
  %i.dc = icmp eq i16 %i.db, -1
  br i1 %i.dc, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.dd = shl i32 %.2127.us, 1                    ; 2 uses
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.de
  store i16 -1, ptr %i.df, align 2, !tbaa !51
  %i.dg = or disjoint i32 %i.dd, 1
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.dh
  store i16 -1, ptr %i.di, align 2, !tbaa !51
  %i.dj = add i32 %.2127.us, 1
  %i.dk = trunc i32 %.2127.us to i16              ; 2 uses
  store i16 %i.dk, ptr %i.da, align 2, !tbaa !51
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.dl = phi i16 [ %i.dk, %bb.f ], [ %i.db, %bb.e ]
  %.3.us = phi i32 [ %i.dj, %bb.f ], [ %.2127.us, %bb.e ] ; 2 uses
  %i.dm = zext i16 %i.dl to i32
  %i.dn = shl nuw nsw i32 %i.dm, 1
  %i.do = sub nuw nsw i32 15, %.184126.us
  %i.dp = lshr i32 %.480133.us, %i.do
  %i.dq = and i32 %i.dp, 1
  %spec.select.us = or disjoint i32 %i.dn, %i.dq  ; 2 uses
  %i.dr = add nuw nsw i32 %.184126.us, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.dr, %indvars.iv
  br i1 %exitcond.not, label %._crit_edge130.us, label %bb.e, !llvm.loop !167

._crit_edge130.us:                                ; preds = %bb.g
  %i.ds = zext nneg i32 %spec.select.us to i64
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ds
  store i16 %.290132.us, ptr %i.dt, align 2, !tbaa !51
  %i.du = add i32 %.480133.us, %.175141           ; 2 uses
  %i.dv = icmp ugt i32 %i.du, %i.cq
  br i1 %i.dv, label %.loopexit, label %4

.split136.us:                                     ; preds = %4
  %i.dw = lshr i32 %.175141, 1
  %indvars.iv.next157 = add nuw nsw i32 %indvars.iv156, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond159.not = icmp eq i32 %indvars.iv.next157, 17
  br i1 %exitcond159.not, label %._crit_edge144, label %.preheader104.split.us.preheader, !llvm.loop !168

._crit_edge144:                                   ; preds = %.split136.us
  %i.dx = icmp eq i32 %.5.us, %i.cq
  br i1 %i.dx, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %._crit_edge144
  %i.dy = trunc nuw nsw i32 %0 to i16
  br label %.preheader

bb.h:                                             ; preds = %.preheader
  %i.dz = add nuw nsw i16 %.391145, 1             ; 2 uses
  %i.ea = icmp samesign ult i16 %i.dz, %i.dy
  br i1 %i.ea, label %.preheader, label %.loopexit, !llvm.loop !169

.preheader:                                       ; preds = %.preheader.preheader, %bb.h
  %.391145 = phi i16 [ %i.dz, %bb.h ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.eb = zext nneg i16 %.391145 to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !31
  %.not99 = icmp eq i8 %i.ed, 0
  br i1 %.not99, label %bb.h, label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.preheader108.split.us, %._crit_edge130.us, %bb.h, %.preheader, %._crit_edge144, %bb.c
  %.092 = phi i32 [ 0, %._crit_edge144 ], [ 1, %._crit_edge130.us ], [ 0, %bb.c ], [ 1, %.preheader108.split.us ], [ 1, %.preheader ], [ 0, %bb.h ], [ 1, %bb.b ]
  ret i32 %.092
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -124, 1) i32 @lzx_read_lens(ptr nofree noundef nonnull %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef range(i32 0, 257) %2, i32 noundef range(i32 249, 2297) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !100
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !105
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !104
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 54888 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 54880 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 24 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 12 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 4 uses
  br label %.preheader309

.preheader309:                                    ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0191433 = phi ptr [ %i.d, %bb.a ], [ %.1192.lcssa, %._crit_edge ] ; 2 uses
  %.0197432 = phi ptr [ %i.b, %bb.a ], [ %.1198.lcssa, %._crit_edge ] ; 2 uses
  %.0218431 = phi i32 [ %i.h, %bb.a ], [ %i.at, %._crit_edge ] ; 3 uses
  %.0227430 = phi i32 [ %i.f, %bb.a ], [ %i.as, %._crit_edge ] ; 2 uses
  %i.o = icmp slt i32 %.0218431, 4
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader309, %bb.l
  %.1192426 = phi ptr [ %.2193, %bb.l ], [ %.0191433, %.preheader309 ] ; 2 uses
  %.1198425 = phi ptr [ %i.ap, %bb.l ], [ %.0197432, %.preheader309 ] ; 2 uses
  %.1219424 = phi i32 [ %i.ao, %bb.l ], [ %.0218431, %.preheader309 ] ; 3 uses
  %.1228423 = phi i32 [ %i.an, %bb.l ], [ %.0227430, %.preheader309 ]
  %i.p = getelementptr inbounds nuw i8, ptr %.1198425, i64 1
  %.not259 = icmp ult ptr %i.p, %.1192426
  br i1 %.not259, label %bb.l, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !87   ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !80   ; 2 uses
  %i.s = load i32, ptr %i.l, align 8, !tbaa !88   ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !86
  %i.u = tail call i32 %i.q(ptr noundef %i.t, ptr noundef %i.r, i32 noundef %i.s) #11, !inline_history !112
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.v = load i32, ptr %0, align 8, !tbaa !81
  %i.w = tail call i32 @cli_readn(i32 noundef %i.v, ptr noundef %i.r, i32 noundef %i.s) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.x = phi i32 [ %i.u, %bb.c ], [ %i.w, %bb.d ] ; 3 uses
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 -123, ptr %i.z, align 8, !tbaa !99
  br label %bb.cb

bb.g:                                             ; preds = %bb.e
  %i.aa = icmp eq i32 %i.x, 0
  br i1 %i.aa, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ab = load i8, ptr %i.m, align 4, !tbaa !98
  %.not24.i = icmp eq i8 %i.ab, 0
  br i1 %.not24.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.24) #11
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 -123, ptr %i.ac, align 8, !tbaa !99
  br label %bb.cb

bb.j:                                             ; preds = %bb.h
  %i.ad = load ptr, ptr %i.k, align 8, !tbaa !80
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  store i8 0, ptr %i.ae, align 1, !tbaa !31
  %i.af = load ptr, ptr %i.k, align 8, !tbaa !80
  store i8 0, ptr %i.af, align 1, !tbaa !31
  store i8 1, ptr %i.m, align 4, !tbaa !98
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.0.i = phi i32 [ 2, %bb.j ], [ %i.x, %bb.g ]
  %i.ag = load ptr, ptr %i.k, align 8, !tbaa !80  ; 3 uses
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !101
  %i.ah = zext nneg i32 %.0.i to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah ; 2 uses
  store ptr %i.ai, ptr %i.c, align 8, !tbaa !100
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph
  %.2199 = phi ptr [ %i.ag, %bb.k ], [ %.1198425, %.lr.ph ] ; 2 uses
  %.2193 = phi ptr [ %i.ai, %bb.k ], [ %.1192426, %.lr.ph ] ; 2 uses
  %i.aj = load i16, ptr %.2199, align 1
  %i.ak = zext i16 %i.aj to i32
  %i.al = sub i32 16, %.1219424
  %i.am = shl i32 %i.ak, %i.al
  %i.an = or i32 %i.am, %.1228423                 ; 2 uses
  %i.ao = add nsw i32 %.1219424, 16               ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.2199, i64 2 ; 2 uses
  %i.aq = icmp slt i32 %.1219424, -12
  br i1 %i.aq, label %.lr.ph, label %._crit_edge, !llvm.loop !170

._crit_edge:                                      ; preds = %bb.l, %.preheader309
  %.1228.lcssa = phi i32 [ %.0227430, %.preheader309 ], [ %i.an, %bb.l ] ; 2 uses
  %.1219.lcssa = phi i32 [ %.0218431, %.preheader309 ], [ %i.ao, %bb.l ]
  %.1198.lcssa = phi ptr [ %.0197432, %.preheader309 ], [ %i.ap, %bb.l ] ; 3 uses
  %.1192.lcssa = phi ptr [ %.0191433, %.preheader309 ], [ %.2193, %bb.l ] ; 3 uses
  %i.ar = lshr i32 %.1228.lcssa, 28
  %i.as = shl i32 %.1228.lcssa, 4                 ; 3 uses
  %i.at = add nsw i32 %.1219.lcssa, -4            ; 3 uses
  %i.au = trunc nuw nsw i32 %i.ar to i8
  %i.av = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv
  store i8 %i.au, ptr %i.av, align 1, !tbaa !31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 20
  br i1 %exitcond.not, label %bb.m, label %.preheader309, !llvm.loop !171

bb.m:                                             ; preds = %._crit_edge
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1346 ; 7 uses
  %i.ax = tail call fastcc i32 @lzx_make_decode_table(i32 noundef 20, i32 noundef 6, ptr noundef %i.n, ptr noundef %i.aw)
  %.not = icmp eq i32 %i.ax, 0
  br i1 %.not, label %.preheader308, label %bb.n

.preheader308:                                    ; preds = %bb.m
  %i.ay = icmp samesign ult i32 %2, %3
  br i1 %i.ay, label %.preheader307, label %._crit_edge497

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.25) #11
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 -124, ptr %i.az, align 8, !tbaa !99
  br label %bb.cb

.preheader307:                                    ; preds = %.preheader308, %.loopexit
  %.1189496 = phi i32 [ %.5, %.loopexit ], [ %2, %.preheader308 ] ; 25 uses
  %.3194495 = phi ptr [ %.14, %.loopexit ], [ %.1192.lcssa, %.preheader308 ] ; 2 uses
  %.3200494 = phi ptr [ %.14211, %.loopexit ], [ %.1198.lcssa, %.preheader308 ] ; 2 uses
  %.2220493 = phi i32 [ %.8226, %.loopexit ], [ %i.at, %.preheader308 ] ; 3 uses
  %.2229492 = phi i32 [ %.8235, %.loopexit ], [ %i.as, %.preheader308 ] ; 2 uses
  %i.ba = icmp slt i32 %.2220493, 16
  br i1 %i.ba, label %.lr.ph439, label %._crit_edge440

.lr.ph439:                                        ; preds = %.preheader307, %bb.y
  %.4195438 = phi ptr [ %.5196, %bb.y ], [ %.3194495, %.preheader307 ] ; 2 uses
  %.4201437 = phi ptr [ %i.cb, %bb.y ], [ %.3200494, %.preheader307 ] ; 2 uses
  %.3221436 = phi i32 [ %i.ca, %bb.y ], [ %.2220493, %.preheader307 ] ; 3 uses
  %.3230435 = phi i32 [ %i.bz, %bb.y ], [ %.2229492, %.preheader307 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.4201437, i64 1
  %.not257 = icmp ult ptr %i.bb, %.4195438
  br i1 %.not257, label %bb.y, label %bb.o
end_hunk_0
begin_hunk_1_@mszip_make_decode_table:bb.a
  %i.an = add i32 %.1109.prol, -1                 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter224
  br i1 %prol.iter.cmp.not, label %.preheader175.prol.loopexit, label %.preheader175.prol, !llvm.loop !270

.preheader175.prol.loopexit:                      ; preds = %.preheader175.prol, %iter.check
  %.1117.unr = phi i32 [ %.lcssa221, %iter.check ], [ %i.am, %.preheader175.prol ]
  %.1109.unr = phi i32 [ %.0154, %iter.check ], [ %i.an, %.preheader175.prol ]
  br i1 %i.l, label %.loopexit140, label %.preheader175

.preheader175:                                    ; preds = %.preheader175.prol.loopexit, %.preheader175
  %.1117 = phi i32 [ %i.az, %.preheader175 ], [ %.1117.unr, %.preheader175.prol.loopexit ] ; 2 uses
  %.1109 = phi i32 [ %i.ba, %.preheader175 ], [ %.1109.unr, %.preheader175.prol.loopexit ]
  %i.ao = zext i32 %.1117 to i64
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ao
  store i16 %.0105150, ptr %i.ap, align 2, !tbaa !51
  %i.aq = add i32 %.1117, %i.g                    ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ar
  store i16 %.0105150, ptr %i.as, align 2, !tbaa !51
  %i.at = add i32 %i.aq, %i.g                     ; 2 uses
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.au
  store i16 %.0105150, ptr %i.av, align 2, !tbaa !51
  %i.aw = add i32 %i.at, %i.g                     ; 2 uses
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ax
  store i16 %.0105150, ptr %i.ay, align 2, !tbaa !51
  %i.az = add i32 %i.aw, %i.g
  %i.ba = add i32 %.1109, -4                      ; 2 uses
  %.not137.3 = icmp eq i32 %i.ba, 0
  br i1 %.not137.3, label %.loopexit140, label %.preheader175, !llvm.loop !271

.loopexit140:                                     ; preds = %.preheader175.prol.loopexit, %.preheader175, %bb.b
  %.2 = phi i32 [ %.197151, %bb.b ], [ %i.ai, %.preheader175 ], [ %i.ai, %.preheader175.prol.loopexit ] ; 6 uses
  %i.bb = add nuw nsw i16 %.0105150, 1            ; 2 uses
  %i.bc = icmp samesign ult i16 %i.bb, %i.d
  br i1 %i.bc, label %bb.b, label %bb.e, !llvm.loop !272

bb.e:                                             ; preds = %.loopexit140
  %i.bd = lshr i32 %.0154, 1
  %i.be = add nuw nsw i8 %.098152, 1              ; 2 uses
  %i.bf = zext nneg i8 %i.be to i32
  %.not.not = icmp samesign ult i8 %.098152, %i.c
  %indvar.next = add i32 %indvar, 1
  br i1 %.not.not, label %.preheader141, label %bb.f, !llvm.loop !273

bb.f:                                             ; preds = %bb.e
  %i.bg = icmp eq i32 %.2, %i.a
  br i1 %i.bg, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = and i32 %.2, 65535                      ; 2 uses
  %i.bi = icmp samesign ugt i32 %i.a, %i.bh
  br i1 %i.bi, label %.preheader139.preheader, label %.preheader138.preheader

.preheader139.preheader:                          ; preds = %bb.g
  %i.bj = trunc i32 %.2 to i16
  %xtraiter228 = and i32 %1, 3                    ; 3 uses
  %unroll_iter234 = and i32 %1, 12
  %lcmp.mod230.not = icmp eq i32 %xtraiter228, 0
  %lcmp.mod233 = icmp ne i32 %xtraiter228, 0
  br label %.preheader139

.preheader139:                                    ; preds = %.preheader139.preheader, %.epilog-lcssa231
  %i.bk = phi i32 [ %i.cg, %.epilog-lcssa231 ], [ %i.bh, %.preheader139.preheader ]
  %.1106155 = phi i16 [ %i.cf, %.epilog-lcssa231 ], [ %i.bj, %.preheader139.preheader ]
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.preheader139
  %.2118 = phi i32 [ 0, %.preheader139 ], [ %i.bx, %bb.h ]
  %.1114 = phi i32 [ %i.bk, %.preheader139 ], [ %i.by, %bb.h ] ; 5 uses
  %niter235 = phi i32 [ 0, %.preheader139 ], [ %niter235.next.3, %bb.h ]
  %i.bl = shl i32 %.2118, 3
  %i.bm = shl nsw i32 %.1114, 2
  %i.bn = and i32 %i.bm, 4
  %i.bo = or disjoint i32 %i.bl, %i.bn
  %i.bp = and i32 %.1114, 2
  %i.bq = or disjoint i32 %i.bp, %i.bo
  %i.br = lshr i32 %.1114, 2
  %i.bs = and i32 %i.br, 1
  %i.bt = or disjoint i32 %i.bs, %i.bq
  %i.bu = lshr i32 %.1114, 3
  %i.bv = shl i32 %i.bt, 1
  %i.bw = and i32 %i.bu, 1
  %i.bx = or disjoint i32 %i.bw, %i.bv            ; 3 uses
  %i.by = lshr i32 %.1114, 4                      ; 2 uses
  %niter235.next.3 = add nuw nsw i32 %niter235, 4 ; 2 uses
  %niter235.ncmp.3 = icmp eq i32 %niter235.next.3, %unroll_iter234
  br i1 %niter235.ncmp.3, label %.unr-lcssa226, label %bb.h, !llvm.loop !274

.unr-lcssa226:                                    ; preds = %bb.h
  br i1 %lcmp.mod230.not, label %.epilog-lcssa231, label %.epil.preheader227

.epil.preheader227:                               ; preds = %.unr-lcssa226
  tail call void @llvm.assume(i1 %lcmp.mod233)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader227
  %.2118.epil = phi i32 [ %i.cb, %bb.i ], [ %i.bx, %.epil.preheader227 ]
  %.1114.epil = phi i32 [ %i.cc, %bb.i ], [ %i.by, %.epil.preheader227 ] ; 2 uses
  %epil.iter229 = phi i32 [ %epil.iter229.next, %bb.i ], [ 0, %.epil.preheader227 ]
  %i.bz = shl i32 %.2118.epil, 1
  %i.ca = and i32 %.1114.epil, 1
  %i.cb = or disjoint i32 %i.ca, %i.bz            ; 2 uses
  %i.cc = lshr i32 %.1114.epil, 1
  %epil.iter229.next = add i32 %epil.iter229, 1   ; 2 uses
  %epil.iter229.cmp.not = icmp eq i32 %epil.iter229.next, %xtraiter228
  br i1 %epil.iter229.cmp.not, label %.epilog-lcssa231, label %bb.i, !llvm.loop !275

.epilog-lcssa231:                                 ; preds = %bb.i, %.unr-lcssa226
  %.lcssa219 = phi i32 [ %i.bx, %.unr-lcssa226 ], [ %i.cb, %bb.i ]
  %i.cd = zext i32 %.lcssa219 to i64
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.cd
  store i16 -1, ptr %i.ce, align 2, !tbaa !51
  %i.cf = add nuw i16 %.1106155, 1                ; 2 uses
  %i.cg = zext i16 %i.cf to i32                   ; 2 uses
  %i.ch = icmp samesign ugt i32 %i.a, %i.cg
  br i1 %i.ch, label %.preheader139, label %.preheader138.preheader, !llvm.loop !276

.preheader138.preheader:                          ; preds = %.epilog-lcssa231, %bb.g
  %i.ci = shl nuw nsw i32 65536, %1               ; 2 uses
  %i.cj = shl i32 %.2, 16
  %i.ck = tail call i32 @llvm.umax.i32(i32 %i.b, i32 %0)
  %i.cl = trunc nuw nsw i32 %i.ck to i16
  %i.cm = add nuw nsw i32 %1, 1
  %xtraiter238 = and i32 %1, 3                    ; 3 uses
  %unroll_iter243 = and i32 %1, 12
  %lcmp.mod240.not = icmp eq i32 %xtraiter238, 0
  %lcmp.mod242 = icmp ne i32 %xtraiter238, 0
  br label %.preheader138.split.us.preheader

.preheader138.split.us.preheader:                 ; preds = %.split.us, %.preheader138.preheader
  %indvars.iv181 = phi i32 [ %i.cm, %.preheader138.preheader ], [ %indvars.iv.next182, %.split.us ] ; 2 uses
  %indvars.iv = phi i32 [ 1, %.preheader138.preheader ], [ %indvars.iv.next, %.split.us ] ; 2 uses
  %.1168 = phi i32 [ 32768, %.preheader138.preheader ], [ %i.ee, %.split.us ] ; 2 uses
  %.3167 = phi i32 [ %i.cj, %.preheader138.preheader ], [ %.5.us, %.split.us ]
  %.0100166 = phi i16 [ %i.cl, %.preheader138.preheader ], [ %.4104.us, %.split.us ]
  br label %.preheader138.split.us

.preheader138.split.us:                           ; preds = %.preheader138.split.us.preheader, %4
  %.4163.us = phi i32 [ %.5.us, %4 ], [ %.3167, %.preheader138.split.us.preheader ] ; 4 uses
  %.1101162.us = phi i16 [ %.4104.us, %4 ], [ %.0100166, %.preheader138.split.us.preheader ] ; 2 uses
  %.2107161.us = phi i16 [ %5, %4 ], [ 0, %.preheader138.split.us.preheader ] ; 3 uses
  %i.cn = zext nneg i16 %.2107161.us to i64
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !31
  %i.cq = zext i8 %i.cp to i32
  %.not132.us = icmp eq i32 %indvars.iv181, %i.cq
  br i1 %.not132.us, label %.new236, label %4

.new236:                                          ; preds = %.preheader138.split.us
  %i.cr = lshr i32 %.4163.us, 16
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.new236
  %.3119.us = phi i32 [ 0, %.new236 ], [ %i.de, %bb.j ]
  %.2115.us = phi i32 [ %i.cr, %.new236 ], [ %i.df, %bb.j ] ; 5 uses
  %niter244 = phi i32 [ 0, %.new236 ], [ %niter244.next.3, %bb.j ]
  %i.cs = shl i32 %.3119.us, 3
  %i.ct = shl nsw i32 %.2115.us, 2
  %i.cu = and i32 %i.ct, 4
  %i.cv = or disjoint i32 %i.cs, %i.cu
  %i.cw = and i32 %.2115.us, 2
  %i.cx = or disjoint i32 %i.cw, %i.cv
  %i.cy = lshr i32 %.2115.us, 2
  %i.cz = and i32 %i.cy, 1
  %i.da = or disjoint i32 %i.cz, %i.cx
  %i.db = lshr i32 %.2115.us, 3
  %i.dc = shl i32 %i.da, 1
  %i.dd = and i32 %i.db, 1
  %i.de = or disjoint i32 %i.dd, %i.dc            ; 3 uses
  %i.df = lshr i32 %.2115.us, 4                   ; 2 uses
  %niter244.next.3 = add nuw nsw i32 %niter244, 4 ; 2 uses
  %niter244.ncmp.3 = icmp eq i32 %niter244.next.3, %unroll_iter243
  br i1 %niter244.ncmp.3, label %.preheader.us.preheader.unr-lcssa, label %bb.j, !llvm.loop !277

.preheader.us.preheader.unr-lcssa:                ; preds = %bb.j
  br i1 %lcmp.mod240.not, label %.preheader.us.preheader, label %.epil.preheader237

.epil.preheader237:                               ; preds = %.preheader.us.preheader.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod242)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader237
  %.3119.us.epil = phi i32 [ %i.de, %.epil.preheader237 ], [ %i.di, %bb.k ]
  %.2115.us.epil = phi i32 [ %i.df, %.epil.preheader237 ], [ %i.dj, %bb.k ] ; 2 uses
  %epil.iter239 = phi i32 [ 0, %.epil.preheader237 ], [ %epil.iter239.next, %bb.k ]
  %i.dg = shl i32 %.3119.us.epil, 1
  %i.dh = and i32 %.2115.us.epil, 1
  %i.di = or disjoint i32 %i.dh, %i.dg            ; 2 uses
  %i.dj = lshr i32 %.2115.us.epil, 1
  %epil.iter239.next = add i32 %epil.iter239, 1   ; 2 uses
  %epil.iter239.cmp.not = icmp eq i32 %epil.iter239.next, %xtraiter238
  br i1 %epil.iter239.cmp.not, label %.preheader.us.preheader, label %bb.k, !llvm.loop !278

.preheader.us.preheader:                          ; preds = %bb.k, %.preheader.us.preheader.unr-lcssa
  %.lcssa = phi i32 [ %i.de, %.preheader.us.preheader.unr-lcssa ], [ %i.di, %bb.k ]
  br label %.preheader.us

4:                                                ; preds = %._crit_edge159.us, %.preheader138.split.us
  %.4104.us = phi i16 [ %.1101162.us, %.preheader138.split.us ], [ %.3103.us, %._crit_edge159.us ] ; 2 uses
  %.5.us = phi i32 [ %.4163.us, %.preheader138.split.us ], [ %i.ec, %._crit_edge159.us ] ; 3 uses
  %5 = add nuw nsw i16 %.2107161.us, 1            ; 2 uses
  %6 = icmp samesign ult i16 %5, %i.d
  br i1 %6, label %.preheader138.split.us, label %.split.us, !llvm.loop !279

.preheader.us:                                    ; preds = %.preheader.us.preheader, %bb.m
  %.2102158.us = phi i16 [ %.3103.us, %bb.m ], [ %.1101162.us, %.preheader.us.preheader ] ; 5 uses
  %.4112157.us = phi i32 [ %i.dz, %bb.m ], [ 0, %.preheader.us.preheader ] ; 2 uses
  %.4120156.us = phi i32 [ %i.dy, %bb.m ], [ %.lcssa, %.preheader.us.preheader ]
  %i.dk = zext i32 %.4120156.us to i64
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.dk ; 2 uses
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !51 ; 2 uses
  %i.dn = icmp eq i16 %i.dm, -1
  br i1 %i.dn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.preheader.us
  %i.do = zext i16 %.2102158.us to i64
  %.idx.us = shl nuw nsw i64 %i.do, 2
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 %.idx.us ; 2 uses
  store i16 -1, ptr %i.dp, align 2, !tbaa !51
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 2
  store i16 -1, ptr %i.dq, align 2, !tbaa !51
  %i.dr = add i16 %.2102158.us, 1
  store i16 %.2102158.us, ptr %i.dl, align 2, !tbaa !51
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.preheader.us
  %i.ds = phi i16 [ %.2102158.us, %bb.l ], [ %i.dm, %.preheader.us ]
  %.3103.us = phi i16 [ %i.dr, %bb.l ], [ %.2102158.us, %.preheader.us ] ; 2 uses
  %i.dt = zext i16 %i.ds to i32
  %i.du = shl nuw nsw i32 %i.dt, 1
  %i.dv = sub nuw nsw i32 15, %.4112157.us
  %i.dw = lshr i32 %.4163.us, %i.dv
  %i.dx = and i32 %i.dw, 1
  %i.dy = or disjoint i32 %i.du, %i.dx            ; 2 uses
  %i.dz = add nuw nsw i32 %.4112157.us, 1         ; 2 uses
  %exitcond.not = icmp eq i32 %i.dz, %indvars.iv
  br i1 %exitcond.not, label %._crit_edge159.us, label %.preheader.us, !llvm.loop !280

._crit_edge159.us:                                ; preds = %bb.m
  %i.ea = zext nneg i32 %i.dy to i64
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ea
  store i16 %.2107161.us, ptr %i.eb, align 2, !tbaa !51
  %i.ec = add i32 %.4163.us, %.1168               ; 2 uses
  %i.ed = icmp ugt i32 %i.ec, %i.ci
  br i1 %i.ed, label %.loopexit, label %4

.split.us:                                        ; preds = %4
  %i.ee = lshr i32 %.1168, 1
  %indvars.iv.next182 = add nuw nsw i32 %indvars.iv181, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond184.not = icmp eq i32 %indvars.iv.next182, 17
  br i1 %exitcond184.not, label %._crit_edge170, label %.preheader138.split.us.preheader, !llvm.loop !281

._crit_edge170:                                   ; preds = %.split.us
  %.not131 = icmp ne i32 %.5.us, %i.ci
  %i.ef = zext i1 %.not131 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.epilog-lcssa, %._crit_edge159.us, %bb.f, %._crit_edge170
  %.0121 = phi i32 [ %i.ef, %._crit_edge170 ], [ 1, %._crit_edge159.us ], [ 0, %bb.f ], [ 1, %.epilog-lcssa ]
  ret i32 %.0121
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !11, i64 40}
!9 = !{!"mszip_stream", !5, i64 0, !5, i64 4, !6, i64 8, !5, i64 12, !10, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !5, i64 80, !5, i64 84, !5, i64 88, !6, i64 92, !6, i64 380, !6, i64 412, !6, i64 2716, !6, i64 2972, !12, i64 35744, !10, i64 35752}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!"p1 _ZTS8cab_file", !10, i64 0}
!13 = !{!9, !5, i64 0}
!14 = !{!9, !5, i64 4}
!15 = !{!9, !6, i64 8}
!16 = !{!9, !5, i64 88}
!17 = !{!9, !5, i64 24}
!18 = !{!9, !5, i64 28}
!19 = !{!9, !10, i64 16}
!20 = !{!9, !5, i64 36}
!21 = !{!9, !11, i64 56}
!22 = !{!9, !11, i64 48}
!23 = !{!9, !12, i64 35744}
!24 = !{!9, !10, i64 35752}
!25 = !{!9, !5, i64 32}
!26 = !{!9, !11, i64 72}
!27 = !{!9, !11, i64 64}
!28 = !{!9, !5, i64 80}
!29 = !{!9, !5, i64 84}
!30 = distinct !{null}
!31 = !{!6, !6, i64 0}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = distinct !{!34, !33}
!35 = !{!9, !5, i64 12}
!36 = distinct !{!36, !33}
!37 = distinct !{!37, !33}
!38 = distinct !{!38, !33}
!39 = distinct !{!39, !33}
!40 = distinct !{!40, !33}
!41 = distinct !{null, null}
!42 = distinct !{!42, !33}
!43 = distinct !{!43, !33}
!44 = distinct !{!44, !33}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = distinct !{!47, !33}
!48 = distinct !{!48, !33}
!49 = distinct !{!49, !33}
!50 = distinct !{!50, !33}
!51 = !{!52, !52, i64 0}
!52 = !{!"short", !6, i64 0}
!53 = distinct !{!53, !33}
!54 = distinct !{!54, !33}
!55 = distinct !{!55, !33}
!56 = distinct !{!56, !33, !57, !58}
!57 = !{!"llvm.loop.isvectorized", i32 1}
!58 = !{!"llvm.loop.unroll.runtime.disable"}
!59 = !{!"branch_weights", i32 8, i32 24}
!60 = distinct !{!60, !33, !57, !58}
!61 = distinct !{!61, !46}
!62 = distinct !{!62, !33, !57}
!63 = distinct !{!63, !33}
!64 = distinct !{!64, !33}
!65 = distinct !{!65, !33}
!66 = distinct !{!66, !33}
!67 = distinct !{!67, !33}
!68 = distinct !{!68, !33}
!69 = distinct !{!69, !33, !57, !58}
!70 = !{!"branch_weights", i32 4, i32 28}
!71 = distinct !{!71, !33, !57, !58}
!72 = distinct !{!72, !46}
!73 = distinct !{!73, !33, !57}
!74 = distinct !{!74, !33}
!75 = distinct !{!75, !33}
!76 = distinct !{!76, !33}
!77 = !{!78, !11, i64 32}
!78 = !{!"lzx_stream", !5, i64 0, !5, i64 4, !6, i64 8, !79, i64 16, !79, i64 24, !11, i64 32, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !6, i64 88, !6, i64 89, !6, i64 90, !6, i64 91, !6, i64 92, !5, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !5, i64 144, !5, i64 148, !5, i64 152, !6, i64 156, !6, i64 240, !6, i64 960, !6, i64 1274, !6, i64 1346, !6, i64 1554, !6, i64 12370, !6, i64 21562, !6, i64 21852, !6, i64 22056, !6, i64 22107, !12, i64 54880, !10, i64 54888}
!79 = !{!"long", !6, i64 0}
!80 = !{!78, !11, i64 104}
!81 = !{!78, !5, i64 0}
!82 = !{!78, !5, i64 4}
!83 = !{!78, !6, i64 8}
!84 = !{!78, !79, i64 16}
!85 = !{!78, !79, i64 24}
!86 = !{!78, !12, i64 54880}
!87 = !{!78, !10, i64 54888}
!88 = !{!78, !5, i64 152}
!89 = !{!78, !5, i64 40}
!90 = !{!78, !5, i64 44}
!91 = !{!78, !5, i64 48}
!92 = !{!78, !5, i64 52}
!93 = !{!78, !5, i64 56}
!94 = !{!78, !5, i64 80}
!95 = !{!78, !5, i64 84}
!96 = !{!78, !6, i64 91}
!97 = !{!78, !6, i64 88}
!98 = !{!78, !6, i64 92}
!99 = !{!78, !5, i64 96}
!100 = !{!78, !11, i64 120}
!101 = !{!78, !11, i64 112}
!102 = !{!78, !11, i64 136}
!103 = !{!78, !11, i64 128}
!104 = !{!78, !5, i64 148}
!105 = !{!78, !5, i64 144}
!106 = !{!78, !5, i64 60}
!107 = !{!78, !5, i64 64}
!108 = !{!78, !5, i64 68}
!109 = !{!78, !6, i64 90}
!110 = !{!78, !5, i64 76}
!111 = !{!78, !6, i64 89}
!112 = !{ptr @lzx_read_input}
!113 = distinct !{!113, !33}
!114 = distinct !{!114, !33}
!115 = distinct !{!115, !33}
!116 = !{!78, !5, i64 72}
!117 = distinct !{!117, !33}
!118 = distinct !{!118, !33}
!119 = distinct !{!119, !33}
!120 = distinct !{!120, !33}
!121 = distinct !{!121, !33}
!122 = !{!11, !11, i64 0}
!123 = distinct !{!123, !33}
!124 = distinct !{!124, !33}
!125 = distinct !{!125, !33}
!126 = distinct !{!126, !33}
!127 = distinct !{!127, !33, !57, !58}
!128 = distinct !{!128, !33, !57, !58}
!129 = distinct !{!129, !33, !57}
end_hunk_1
