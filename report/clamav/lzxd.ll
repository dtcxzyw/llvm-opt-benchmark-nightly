inline.NumInlined: 32
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@make_decode_table
define internal fastcc range(i32 0, 2) i32 @make_decode_table(i32 noundef range(i32 8, 2577) %0, i32 noundef range(i32 6, 13) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #2 {
bb.a:
  %i.a = shl nuw nsw i32 1, %1
  %.fr141 = freeze i32 %i.a                       ; 8 uses
  %i.b = lshr i32 %.fr141, 1                      ; 2 uses
  %i.c = trunc nuw nsw i32 %1 to i8
  %i.d = trunc nuw nsw i32 %0 to i16
  %i.e = trunc nuw nsw i32 %0 to i16
  br label %.preheader103

.preheader103:                                    ; preds = %bb.a, %.split.us
  %.0118 = phi i32 [ %i.b, %bb.a ], [ %i.ba, %.split.us ] ; 14 uses
  %.073117 = phi i32 [ 0, %bb.a ], [ %.us-phi, %.split.us ] ; 3 uses
  %.075116 = phi i8 [ 1, %bb.a ], [ %i.bb, %.split.us ] ; 4 uses
  %.not100110 = icmp eq i32 %.0118, 0
  br i1 %.not100110, label %.preheader103.split.us.preheader, label %.preheader103.split.preheader

.preheader103.split.preheader:                    ; preds = %.preheader103
  %min.iters.check = icmp samesign ult i32 %.0118, 4
  %i.f = sub nsw i32 0, %.0118
  %min.iters.check166 = icmp samesign ult i32 %.0118, 16
  %n.mod.vf = and i32 %.0118, 12
  %n.vec = and i32 %.0118, 2147483632             ; 4 uses
  %i.g = and i32 %.0118, 15
  %cmp.n = icmp eq i32 %.0118, %n.vec
  %min.epilog.iters.check = icmp eq i32 %n.mod.vf, 0
  %n.vec169 = and i32 %.0118, 2147483644          ; 3 uses
  %i.h = and i32 %.0118, 3
  %cmp.n174 = icmp eq i32 %.0118, %n.vec169
  br label %.preheader103.split

.preheader103.split.us.preheader:                 ; preds = %.preheader103
  %i.i = icmp ule i32 %.073117, %.fr141
  br label %.preheader103.split.us

.preheader103.split.us:                           ; preds = %.preheader103.split.us.preheader, %.preheader101.us
  %.087113.us = phi i16 [ %i.m, %.preheader101.us ], [ 0, %.preheader103.split.us.preheader ] ; 2 uses
  %i.j = zext nneg i16 %.087113.us to i64
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !42
  %.not99.us = icmp ne i8 %i.l, %.075116
  %brmerge = select i1 %.not99.us, i1 true, i1 %i.i
  br i1 %brmerge, label %.preheader101.us, label %.loopexit

.preheader101.us:                                 ; preds = %.preheader103.split.us
  %i.m = add nuw nsw i16 %.087113.us, 1           ; 2 uses
  %i.n = icmp samesign ult i16 %i.m, %i.e
  br i1 %i.n, label %.preheader103.split.us, label %.split.us

.preheader103.split:                              ; preds = %.preheader103.split.preheader, %..loopexit102_crit_edge
  %.174115 = phi i32 [ %.2, %..loopexit102_crit_edge ], [ %.073117, %.preheader103.split.preheader ] ; 8 uses
  %.087113 = phi i16 [ %i.ay, %..loopexit102_crit_edge ], [ 0, %.preheader103.split.preheader ] ; 9 uses
  %i.o = zext nneg i16 %.087113 to i64
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !42
  %.not99 = icmp eq i8 %i.q, %.075116
  br i1 %.not99, label %bb.b, label %..loopexit102_crit_edge

bb.b:                                             ; preds = %.preheader103.split
  %i.r = add i32 %.174115, %.0118                 ; 5 uses
  %i.s = icmp ugt i32 %i.r, %.fr141
  br i1 %i.s, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.b
  %i.t = icmp ugt i32 %.174115, %i.f
  %or.cond = select i1 %min.iters.check, i1 true, i1 %i.t
  br i1 %or.cond, label %.preheader101.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check166, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.u = add i32 %.174115, %n.vec
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %.087113, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = add i32 %.174115, %index
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <8 x i16> %broadcast.splat, ptr %i.x, align 2, !tbaa !58
  store <8 x i16> %broadcast.splat, ptr %i.y, align 2, !tbaa !58
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %i.z = icmp eq i32 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit102_crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.preheader101.preheader, label %vec.epilog.ph, !prof !74

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.aa = add i32 %.174115, %n.vec169
  %broadcast.splatinsert170 = insertelement <4 x i16> poison, i16 %.087113, i64 0
  %broadcast.splat171 = shufflevector <4 x i16> %broadcast.splatinsert170, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index172 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next173, %vec.epilog.vector.body ] ; 2 uses
  %i.ab = add i32 %.174115, %index172
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ac
  store <4 x i16> %broadcast.splat171, ptr %i.ad, align 2, !tbaa !58
  %index.next173 = add nuw i32 %index172, 4       ; 2 uses
  %i.ae = icmp eq i32 %index.next173, %n.vec169
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !75

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n174, label %..loopexit102_crit_edge, label %.preheader101.preheader

.preheader101.preheader:                          ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.077112.ph = phi i32 [ %.0118, %iter.check ], [ %i.g, %vec.epilog.iter.check ], [ %i.h, %vec.epilog.middle.block ] ; 4 uses
  %.079111.ph = phi i32 [ %.174115, %iter.check ], [ %i.u, %vec.epilog.iter.check ], [ %i.aa, %vec.epilog.middle.block ] ; 2 uses
  %i.af = add nsw i32 %.077112.ph, -1
  %xtraiter = and i32 %.077112.ph, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader101.prol.loopexit, label %.preheader101.prol

.preheader101.prol:                               ; preds = %.preheader101.preheader, %.preheader101.prol
  %.077112.prol = phi i32 [ %i.ag, %.preheader101.prol ], [ %.077112.ph, %.preheader101.preheader ]
  %.079111.prol = phi i32 [ %i.ah, %.preheader101.prol ], [ %.079111.ph, %.preheader101.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader101.prol ], [ 0, %.preheader101.preheader ]
  %i.ag = add nsw i32 %.077112.prol, -1           ; 2 uses
  %i.ah = add i32 %.079111.prol, 1                ; 2 uses
  %i.ai = zext i32 %.079111.prol to i64
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ai
  store i16 %.087113, ptr %i.aj, align 2, !tbaa !58
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader101.prol.loopexit, label %.preheader101.prol, !llvm.loop !76

.preheader101.prol.loopexit:                      ; preds = %.preheader101.prol, %.preheader101.preheader
  %.077112.unr = phi i32 [ %.077112.ph, %.preheader101.preheader ], [ %i.ag, %.preheader101.prol ]
  %.079111.unr = phi i32 [ %.079111.ph, %.preheader101.preheader ], [ %i.ah, %.preheader101.prol ]
  %i.ak = icmp ult i32 %i.af, 3
  br i1 %i.ak, label %..loopexit102_crit_edge, label %.preheader101

.preheader101:                                    ; preds = %.preheader101.prol.loopexit, %.preheader101
  %.077112 = phi i32 [ %i.au, %.preheader101 ], [ %.077112.unr, %.preheader101.prol.loopexit ]
  %.079111 = phi i32 [ %i.av, %.preheader101 ], [ %.079111.unr, %.preheader101.prol.loopexit ] ; 5 uses
  %i.al = add i32 %.079111, 1
  %i.am = zext i32 %.079111 to i64
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.am
  store i16 %.087113, ptr %i.an, align 2, !tbaa !58
  %i.ao = add i32 %.079111, 2
  %i.ap = zext i32 %i.al to i64
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ap
  store i16 %.087113, ptr %i.aq, align 2, !tbaa !58
  %i.ar = add i32 %.079111, 3
  %i.as = zext i32 %i.ao to i64
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.as
  store i16 %.087113, ptr %i.at, align 2, !tbaa !58
  %i.au = add nsw i32 %.077112, -4                ; 2 uses
  %i.av = add i32 %.079111, 4
  %i.aw = zext i32 %i.ar to i64
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.aw
  store i16 %.087113, ptr %i.ax, align 2, !tbaa !58
  %.not100.3 = icmp eq i32 %i.au, 0
  br i1 %.not100.3, label %..loopexit102_crit_edge, label %.preheader101, !llvm.loop !78

..loopexit102_crit_edge:                          ; preds = %.preheader101.prol.loopexit, %.preheader101, %middle.block, %vec.epilog.middle.block, %.preheader103.split
  %.2 = phi i32 [ %.174115, %.preheader103.split ], [ %i.r, %middle.block ], [ %i.r, %vec.epilog.middle.block ], [ %i.r, %.preheader101 ], [ %i.r, %.preheader101.prol.loopexit ] ; 2 uses
  %i.ay = add nuw nsw i16 %.087113, 1             ; 2 uses
  %i.az = icmp samesign ult i16 %i.ay, %i.d
  br i1 %i.az, label %.preheader103.split, label %.split.us

.split.us:                                        ; preds = %..loopexit102_crit_edge, %.preheader101.us
  %.us-phi = phi i32 [ %.073117, %.preheader101.us ], [ %.2, %..loopexit102_crit_edge ] ; 7 uses
  %i.ba = lshr i32 %.0118, 1
  %i.bb = add nuw nsw i8 %.075116, 1
  %.not.not = icmp samesign ult i8 %.075116, %i.c
  br i1 %.not.not, label %.preheader103, label %bb.c

bb.c:                                             ; preds = %.split.us
  %i.bc = icmp eq i32 %.us-phi, %.fr141
  br i1 %i.bc, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bd = and i32 %.us-phi, 65535
  %i.be = icmp samesign ugt i32 %.fr141, %i.bd
  br i1 %i.be, label %iter.check192, label %.preheader.preheader

iter.check192:                                    ; preds = %bb.d
  %i.bf = trunc i32 %.us-phi to i16               ; 8 uses
  %i.bg = add i32 %.us-phi, 1
  %i.bh = and i32 %i.bg, 65535                    ; 2 uses
  %umax179 = tail call i32 @llvm.umax.i32(i32 %.fr141, i32 %i.bh)
  %i.bi = add i32 %umax179, 1
  %i.bj = sub i32 %i.bi, %i.bh                    ; 7 uses
  %min.iters.check180 = icmp ult i32 %i.bj, 4
  br i1 %min.iters.check180, label %.lr.ph.preheader, label %vector.scevcheck177

vector.scevcheck177:                              ; preds = %iter.check192
  %i.bk = add i32 %.us-phi, 1
  %i.bl = and i32 %i.bk, 65535
  %i.bm = tail call i32 @llvm.usub.sat.i32(i32 %.fr141, i32 %i.bl) ; 3 uses
  %i.bn = trunc i32 %i.bm to i16
  %i.bo = sub i16 -2, %i.bf
  %i.bp = icmp ult i16 %i.bo, %i.bn
  %4 = trunc i32 %i.bm to i16
  %i.bq = xor i16 %i.bf, -1
  %i.br = icmp ult i16 %i.bq, %4
  %i.bs = icmp ugt i32 %i.bm, 65535
  %i.bt = or i1 %i.br, %i.bs
  %i.bu = or i1 %i.bp, %i.bt
  br i1 %i.bu, label %.lr.ph.preheader, label %vector.main.loop.iter.check181

vector.main.loop.iter.check181:                   ; preds = %vector.scevcheck177
  %min.iters.check182 = icmp ult i32 %i.bj, 16
  br i1 %min.iters.check182, label %vec.epilog.ph196, label %vector.ph183

vector.ph183:                                     ; preds = %vector.main.loop.iter.check181
  %n.mod.vf184 = and i32 %i.bj, 12
  %n.vec185 = and i32 %i.bj, -16                  ; 4 uses
  %i.bv = trunc i32 %n.vec185 to i16
  %i.bw = add i16 %i.bf, %i.bv
  br label %vector.body186

vector.body186:                                   ; preds = %vector.body186, %vector.ph183
  %index187 = phi i32 [ 0, %vector.ph183 ], [ %index.next188, %vector.body186 ] ; 2 uses
  %i.bx = trunc i32 %index187 to i16
  %i.by = add i16 %i.bf, %i.bx
  %i.bz = zext i16 %i.by to i64
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store <8 x i16> splat (i16 -1), ptr %i.ca, align 2, !tbaa !58
  store <8 x i16> splat (i16 -1), ptr %i.cb, align 2, !tbaa !58
  %index.next188 = add nuw i32 %index187, 16      ; 2 uses
  %i.cc = icmp eq i32 %index.next188, %n.vec185
  br i1 %i.cc, label %middle.block189, label %vector.body186, !llvm.loop !79

middle.block189:                                  ; preds = %vector.body186
  %cmp.n190 = icmp eq i32 %i.bj, %n.vec185
  br i1 %cmp.n190, label %.preheader.preheader, label %vec.epilog.iter.check194

vec.epilog.iter.check194:                         ; preds = %middle.block189
  %min.epilog.iters.check195 = icmp eq i32 %n.mod.vf184, 0
  br i1 %min.epilog.iters.check195, label %.lr.ph.preheader, label %vec.epilog.ph196, !prof !74

vec.epilog.ph196:                                 ; preds = %vector.main.loop.iter.check181, %vec.epilog.iter.check194
  %vec.epilog.resume.val191 = phi i32 [ %n.vec185, %vec.epilog.iter.check194 ], [ 0, %vector.main.loop.iter.check181 ]
  %n.vec198 = and i32 %i.bj, -4                   ; 3 uses
  %i.cd = trunc i32 %n.vec198 to i16
  %i.ce = add i16 %i.bf, %i.cd
  br label %vec.epilog.vector.body199

vec.epilog.vector.body199:                        ; preds = %vec.epilog.vector.body199, %vec.epilog.ph196
  %index200 = phi i32 [ %vec.epilog.resume.val191, %vec.epilog.ph196 ], [ %index.next201, %vec.epilog.vector.body199 ] ; 2 uses
  %i.cf = trunc i32 %index200 to i16
  %i.cg = add i16 %i.bf, %i.cf
  %i.ch = zext i16 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ch
  store <4 x i16> splat (i16 -1), ptr %i.ci, align 2, !tbaa !58
  %index.next201 = add nuw i32 %index200, 4       ; 2 uses
  %i.cj = icmp eq i32 %index.next201, %n.vec198
  br i1 %i.cj, label %vec.epilog.middle.block202, label %vec.epilog.vector.body199, !llvm.loop !80

vec.epilog.middle.block202:                       ; preds = %vec.epilog.vector.body199
  %cmp.n203 = icmp eq i32 %i.bj, %n.vec198
  br i1 %cmp.n203, label %.preheader.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.scevcheck177, %iter.check192, %vec.epilog.iter.check194, %vec.epilog.middle.block202
  %.188119.ph = phi i16 [ %i.bf, %iter.check192 ], [ %i.bf, %vector.scevcheck177 ], [ %i.bw, %vec.epilog.iter.check194 ], [ %i.ce, %vec.epilog.middle.block202 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.188119 = phi i16 [ %i.cm, %.lr.ph ], [ %.188119.ph, %.lr.ph.preheader ] ; 2 uses
  %i.ck = zext i16 %.188119 to i64
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ck
  store i16 -1, ptr %i.cl, align 2, !tbaa !58
  %i.cm = add i16 %.188119, 1                     ; 2 uses
  %i.cn = zext i16 %i.cm to i32
  %i.co = icmp samesign ugt i32 %.fr141, %i.cn
  br i1 %i.co, label %.lr.ph, label %.preheader.preheader, !llvm.loop !81

.preheader.preheader:                             ; preds = %.lr.ph, %middle.block189, %vec.epilog.middle.block202, %bb.d
  %i.cp = shl nuw nsw i32 65536, %1               ; 2 uses
  %i.cq = shl i32 %.us-phi, 16
  %i.cr = tail call i32 @llvm.umax.i32(i32 %i.b, i32 %0)
  %i.cs = trunc nuw nsw i32 %i.cr to i16
  %i.ct = add nuw nsw i32 %1, 1
  %i.cu = trunc nuw nsw i32 %0 to i16
  br label %.preheader.split.us.preheader

.preheader.split.us.preheader:                    ; preds = %.split131.us, %.preheader.preheader
  %indvars.iv149 = phi i32 [ %i.ct, %.preheader.preheader ], [ %indvars.iv.next150, %.split131.us ] ; 2 uses
  %indvars.iv = phi i32 [ 1, %.preheader.preheader ], [ %indvars.iv.next, %.split131.us ] ; 2 uses
  %.1137 = phi i32 [ 32768, %.preheader.preheader ], [ %i.du, %.split131.us ] ; 2 uses
  %.3136 = phi i32 [ %i.cq, %.preheader.preheader ], [ %.5.us, %.split131.us ]
  %.082135 = phi i16 [ %i.cs, %.preheader.preheader ], [ %.486.us, %.split131.us ]
  br label %.preheader.split.us

.preheader.split.us:                              ; preds = %.preheader.split.us.preheader, %bb.i
  %.4129.us = phi i32 [ %.5.us, %bb.i ], [ %.3136, %.preheader.split.us.preheader ] ; 5 uses
  %.183128.us = phi i16 [ %.486.us, %bb.i ], [ %.082135, %.preheader.split.us.preheader ] ; 2 uses
  %.289127.us = phi i16 [ %i.dp, %bb.i ], [ 0, %.preheader.split.us.preheader ] ; 3 uses
  %i.cv = zext nneg i16 %.289127.us to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !42
  %i.cy = zext i8 %i.cx to i32
  %.not96.us = icmp eq i32 %indvars.iv149, %i.cy
  br i1 %.not96.us, label %bb.e, label %bb.i

bb.e:                                             ; preds = %.preheader.split.us
  %.not97.us = icmp ult i32 %.4129.us, %i.cp
  br i1 %.not97.us, label %.lr.ph124.us, label %.loopexit

.lr.ph124.us:                                     ; preds = %bb.e
  %i.cz = lshr i32 %.4129.us, 16
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph124.us, %bb.h
  %.178122.us = phi i32 [ 0, %.lr.ph124.us ], [ %i.do, %bb.h ] ; 2 uses
  %.180121.us = phi i32 [ %i.cz, %.lr.ph124.us ], [ %spec.select.us, %bb.h ]
  %.284120.us = phi i16 [ %.183128.us, %.lr.ph124.us ], [ %.385.us, %bb.h ] ; 5 uses
  %i.da = zext nneg i32 %.180121.us to i64
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.da ; 2 uses
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !58 ; 2 uses
  %i.dd = icmp eq i16 %i.dc, -1
  br i1 %i.dd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.de = zext i16 %.284120.us to i64
  %.idx.us = shl nuw nsw i64 %i.de, 2
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 %.idx.us ; 2 uses
  store i16 -1, ptr %i.df, align 2, !tbaa !58
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 2
  store i16 -1, ptr %i.dg, align 2, !tbaa !58
  %i.dh = add i16 %.284120.us, 1
  store i16 %.284120.us, ptr %i.db, align 2, !tbaa !58
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.di = phi i16 [ %.284120.us, %bb.g ], [ %i.dc, %bb.f ]
  %.385.us = phi i16 [ %i.dh, %bb.g ], [ %.284120.us, %bb.f ] ; 2 uses
  %i.dj = zext i16 %i.di to i32
  %i.dk = shl nuw nsw i32 %i.dj, 1
  %i.dl = sub nuw nsw i32 15, %.178122.us
  %i.dm = lshr i32 %.4129.us, %i.dl
  %i.dn = and i32 %i.dm, 1
  %spec.select.us = or disjoint i32 %i.dk, %i.dn  ; 2 uses
  %i.do = add nuw nsw i32 %.178122.us, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.do, %indvars.iv
  br i1 %exitcond.not, label %._crit_edge125.us, label %bb.f

bb.i:                                             ; preds = %._crit_edge125.us, %.preheader.split.us
  %.486.us = phi i16 [ %.183128.us, %.preheader.split.us ], [ %.385.us, %._crit_edge125.us ] ; 2 uses
  %.5.us = phi i32 [ %.4129.us, %.preheader.split.us ], [ %i.dt, %._crit_edge125.us ] ; 3 uses
  %i.dp = add nuw nsw i16 %.289127.us, 1          ; 2 uses
  %i.dq = icmp samesign ult i16 %i.dp, %i.cu
  br i1 %i.dq, label %.preheader.split.us, label %.split131.us

._crit_edge125.us:                                ; preds = %bb.h
  %i.dr = zext nneg i32 %spec.select.us to i64
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.dr
  store i16 %.289127.us, ptr %i.ds, align 2, !tbaa !58
  %i.dt = add i32 %.4129.us, %.1137
  br label %bb.i

.split131.us:                                     ; preds = %bb.i
  %i.du = lshr i32 %.1137, 1
  %indvars.iv.next150 = add nuw nsw i32 %indvars.iv149, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond152.not = icmp eq i32 %indvars.iv.next150, 17
  br i1 %exitcond152.not, label %._crit_edge139, label %.preheader.split.us.preheader

._crit_edge139:                                   ; preds = %.split131.us
  %i.dv = icmp ne i32 %.5.us, %i.cp
  %i.dw = zext i1 %i.dv to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.preheader103.split.us, %bb.e, %bb.c, %._crit_edge139
  %.090 = phi i32 [ %i.dw, %._crit_edge139 ], [ 1, %.preheader103.split.us ], [ 0, %bb.c ], [ 1, %bb.e ], [ 1, %bb.b ]
  ret i32 %.090
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @lzxd_read_lens(ptr nofree noundef nonnull %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef range(i32 0, 257) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 14 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 14 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 28 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 103 ; 14 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 4 uses
  br label %.preheader469

.preheader469:                                    ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0229642 = phi ptr [ %i.b, %bb.a ], [ %.1230.lcssa, %._crit_edge ] ; 2 uses
  %.0245641 = phi ptr [ %i.d, %bb.a ], [ %.1246.lcssa, %._crit_edge ] ; 2 uses
  %.0272640 = phi i32 [ %i.f, %bb.a ], [ %i.bm, %._crit_edge ] ; 2 uses
  %.0287639 = phi i32 [ %i.h, %bb.a ], [ %i.bn, %._crit_edge ] ; 3 uses
  %i.n = icmp slt i32 %.0287639, 4
  br i1 %i.n, label %.lr.ph, label %._crit_edge
end_hunk_0
