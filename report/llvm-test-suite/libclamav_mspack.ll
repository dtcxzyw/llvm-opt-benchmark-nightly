Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/libclamav_mspack?download=true
inline.NumInlined: 60
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 48
begin_hunk_0_@lzx_read_input:bb.a
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !61
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.e
  %.021 = phi i32 [ -123, %bb.e ], [ -123, %bb.h ], [ 0, %bb.j ]
  ret i32 %.021
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 2) i32 @lzx_make_decode_table(i32 noundef range(i32 8, 657) %0, i32 noundef range(i32 6, 13) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #6 {
bb.a:
  %i.a = shl nuw nsw i32 1, %1
  %.fr147 = freeze i32 %i.a                       ; 8 uses
  %i.b = lshr i32 %.fr147, 1                      ; 2 uses
  %i.c = trunc nuw nsw i32 %1 to i8
  %i.d = trunc nuw nsw i32 %0 to i16
  %i.e = trunc nuw nsw i32 %0 to i16
  br label %.preheader108

.preheader108:                                    ; preds = %bb.a, %.split.us
  %.074123 = phi i32 [ %i.b, %bb.a ], [ %i.bb, %.split.us ] ; 14 uses
  %.076122 = phi i32 [ 0, %bb.a ], [ %.us-phi, %.split.us ] ; 3 uses
  %.081121 = phi i8 [ 1, %bb.a ], [ %i.bc, %.split.us ] ; 4 uses
  %.not103115 = icmp eq i32 %.074123, 0
  br i1 %.not103115, label %.preheader108.split.us.preheader, label %.preheader108.split.preheader

.preheader108.split.preheader:                    ; preds = %.preheader108
  %min.iters.check = icmp samesign ult i32 %.074123, 4
  %i.f = sub nsw i32 0, %.074123
  %min.iters.check178 = icmp samesign ult i32 %.074123, 16
  %i.g = and i32 %.074123, 12
  %n.vec = and i32 %.074123, 2147483632           ; 4 uses
  %i.h = and i32 %.074123, 15
  %cmp.n = icmp eq i32 %.074123, %n.vec
  %min.epilog.iters.check = icmp eq i32 %i.g, 0
  %n.vec180 = and i32 %.074123, 2147483644        ; 3 uses
  %i.i = and i32 %.074123, 3
  %cmp.n185 = icmp eq i32 %.074123, %n.vec180
  br label %.preheader108.split

.preheader108.split.us.preheader:                 ; preds = %.preheader108
  %i.j = icmp ule i32 %.076122, %.fr147
  br label %.preheader108.split.us

.preheader108.split.us:                           ; preds = %.preheader108.split.us.preheader, %.preheader106.us
  %.088118.us = phi i16 [ %i.n, %.preheader106.us ], [ 0, %.preheader108.split.us.preheader ] ; 2 uses
  %i.k = zext nneg i16 %.088118.us to i64
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !29
  %.not102.us = icmp ne i8 %i.m, %.081121
  %brmerge = select i1 %.not102.us, i1 true, i1 %i.j
  br i1 %brmerge, label %.preheader106.us, label %.loopexit

.preheader106.us:                                 ; preds = %.preheader108.split.us
  %i.n = add nuw nsw i16 %.088118.us, 1           ; 2 uses
  %i.o = icmp samesign ult i16 %i.n, %i.e
  br i1 %i.o, label %.preheader108.split.us, label %.split.us, !llvm.loop !177

.preheader108.split:                              ; preds = %.preheader108.split.preheader, %..loopexit107_crit_edge
  %.177120 = phi i32 [ %.278, %..loopexit107_crit_edge ], [ %.076122, %.preheader108.split.preheader ] ; 8 uses
  %.088118 = phi i16 [ %i.az, %..loopexit107_crit_edge ], [ 0, %.preheader108.split.preheader ] ; 9 uses
  %i.p = zext nneg i16 %.088118 to i64
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !29
  %.not102 = icmp eq i8 %i.r, %.081121
  br i1 %.not102, label %bb.b, label %..loopexit107_crit_edge

bb.b:                                             ; preds = %.preheader108.split
  %i.s = add i32 %.177120, %.074123               ; 5 uses
  %i.t = icmp ugt i32 %i.s, %.fr147
  br i1 %i.t, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.b
  %i.u = icmp ugt i32 %.177120, %i.f
  %or.cond = select i1 %min.iters.check, i1 true, i1 %i.u
  br i1 %or.cond, label %.preheader106.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check178, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.v = add i32 %.177120, %n.vec
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %.088118, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.w = add i32 %.177120, %index
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <8 x i16> %broadcast.splat, ptr %i.y, align 2, !tbaa !34
  store <8 x i16> %broadcast.splat, ptr %i.z, align 2, !tbaa !34
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %i.aa = icmp eq i32 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !178

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit107_crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.preheader106.preheader, label %vec.epilog.ph, !prof !75

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ab = add i32 %.177120, %n.vec180
  %broadcast.splatinsert181 = insertelement <4 x i16> poison, i16 %.088118, i64 0
  %broadcast.splat182 = shufflevector <4 x i16> %broadcast.splatinsert181, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index183 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next184, %vec.epilog.vector.body ] ; 2 uses
  %i.ac = add i32 %.177120, %index183
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ad
  store <4 x i16> %broadcast.splat182, ptr %i.ae, align 2, !tbaa !34
  %index.next184 = add nuw i32 %index183, 4       ; 2 uses
  %i.af = icmp eq i32 %index.next184, %n.vec180
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !179

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n185, label %..loopexit107_crit_edge, label %.preheader106.preheader

.preheader106.preheader:                          ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.083117.ph = phi i32 [ %.074123, %iter.check ], [ %i.h, %vec.epilog.iter.check ], [ %i.i, %vec.epilog.middle.block ] ; 4 uses
  %.085116.ph = phi i32 [ %.177120, %iter.check ], [ %i.v, %vec.epilog.iter.check ], [ %i.ab, %vec.epilog.middle.block ] ; 2 uses
  %i.ag = add nsw i32 %.083117.ph, -1
  %xtraiter = and i32 %.083117.ph, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader106.prol.loopexit, label %.preheader106.prol

.preheader106.prol:                               ; preds = %.preheader106.preheader, %.preheader106.prol
  %.083117.prol = phi i32 [ %i.ah, %.preheader106.prol ], [ %.083117.ph, %.preheader106.preheader ]
  %.085116.prol = phi i32 [ %i.ai, %.preheader106.prol ], [ %.085116.ph, %.preheader106.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader106.prol ], [ 0, %.preheader106.preheader ]
  %i.ah = add nsw i32 %.083117.prol, -1           ; 2 uses
  %i.ai = add i32 %.085116.prol, 1                ; 2 uses
  %i.aj = zext i32 %.085116.prol to i64
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.aj
  store i16 %.088118, ptr %i.ak, align 2, !tbaa !34
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader106.prol.loopexit, label %.preheader106.prol, !llvm.loop !180

.preheader106.prol.loopexit:                      ; preds = %.preheader106.prol, %.preheader106.preheader
  %.083117.unr = phi i32 [ %.083117.ph, %.preheader106.preheader ], [ %i.ah, %.preheader106.prol ]
  %.085116.unr = phi i32 [ %.085116.ph, %.preheader106.preheader ], [ %i.ai, %.preheader106.prol ]
  %i.al = icmp ult i32 %i.ag, 3
  br i1 %i.al, label %..loopexit107_crit_edge, label %.preheader106

.preheader106:                                    ; preds = %.preheader106.prol.loopexit, %.preheader106
  %.083117 = phi i32 [ %i.av, %.preheader106 ], [ %.083117.unr, %.preheader106.prol.loopexit ]
  %.085116 = phi i32 [ %i.aw, %.preheader106 ], [ %.085116.unr, %.preheader106.prol.loopexit ] ; 5 uses
  %i.am = add i32 %.085116, 1
  %i.an = zext i32 %.085116 to i64
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.an
  store i16 %.088118, ptr %i.ao, align 2, !tbaa !34
  %i.ap = add i32 %.085116, 2
  %i.aq = zext i32 %i.am to i64
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.aq
  store i16 %.088118, ptr %i.ar, align 2, !tbaa !34
  %i.as = add i32 %.085116, 3
  %i.at = zext i32 %i.ap to i64
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.at
  store i16 %.088118, ptr %i.au, align 2, !tbaa !34
  %i.av = add nsw i32 %.083117, -4                ; 2 uses
  %i.aw = add i32 %.085116, 4
  %i.ax = zext i32 %i.as to i64
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ax
  store i16 %.088118, ptr %i.ay, align 2, !tbaa !34
  %.not103.3 = icmp eq i32 %i.av, 0
  br i1 %.not103.3, label %..loopexit107_crit_edge, label %.preheader106, !llvm.loop !181

..loopexit107_crit_edge:                          ; preds = %.preheader106.prol.loopexit, %.preheader106, %middle.block, %vec.epilog.middle.block, %.preheader108.split
  %.278 = phi i32 [ %.177120, %.preheader108.split ], [ %i.s, %middle.block ], [ %i.s, %vec.epilog.middle.block ], [ %i.s, %.preheader106 ], [ %i.s, %.preheader106.prol.loopexit ] ; 2 uses
  %i.az = add nuw nsw i16 %.088118, 1             ; 2 uses
  %i.ba = icmp samesign ult i16 %i.az, %i.d
  br i1 %i.ba, label %.preheader108.split, label %.split.us, !llvm.loop !177

.split.us:                                        ; preds = %..loopexit107_crit_edge, %.preheader106.us
  %.us-phi = phi i32 [ %.076122, %.preheader106.us ], [ %.278, %..loopexit107_crit_edge ] ; 7 uses
  %i.bb = lshr i32 %.074123, 1
  %i.bc = add nuw nsw i8 %.081121, 1
  %.not.not = icmp samesign ult i8 %.081121, %i.c
  br i1 %.not.not, label %.preheader108, label %bb.c, !llvm.loop !182

bb.c:                                             ; preds = %.split.us
  %i.bd = icmp eq i32 %.us-phi, %.fr147
  br i1 %i.bd, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.be = and i32 %.us-phi, 65535
  %i.bf = icmp samesign ugt i32 %.fr147, %i.be
  br i1 %i.bf, label %iter.check201, label %.preheader104.preheader

iter.check201:                                    ; preds = %bb.d
  %i.bg = trunc i32 %.us-phi to i16               ; 8 uses
  %i.bh = add i32 %.us-phi, 1
  %i.bi = and i32 %i.bh, 65535                    ; 2 uses
  %umax189 = tail call i32 @llvm.umax.i32(i32 %.fr147, i32 %i.bi)
  %i.bj = add i32 %umax189, 1
  %i.bk = sub i32 %i.bj, %i.bi                    ; 7 uses
  %min.iters.check190 = icmp ult i32 %i.bk, 4
  br i1 %min.iters.check190, label %.lr.ph.preheader, label %vector.scevcheck188

vector.scevcheck188:                              ; preds = %iter.check201
  %i.bl = add i32 %.us-phi, 1
  %i.bm = and i32 %i.bl, 65535
  %i.bn = tail call i32 @llvm.usub.sat.i32(i32 %.fr147, i32 %i.bm) ; 2 uses
  %i.bo = trunc i32 %i.bn to i16                  ; 2 uses
  %i.bp = sub i16 -2, %i.bg
  %i.bq = icmp ult i16 %i.bp, %i.bo
  %i.br = xor i16 %i.bg, -1
  %i.bs = icmp ult i16 %i.br, %i.bo
  %i.bt = icmp ugt i32 %i.bn, 65535
  %i.bu = or i1 %i.bs, %i.bt
  %i.bv = or i1 %i.bq, %i.bu
  br i1 %i.bv, label %.lr.ph.preheader, label %vector.main.loop.iter.check191

vector.main.loop.iter.check191:                   ; preds = %vector.scevcheck188
  %min.iters.check192 = icmp ult i32 %i.bk, 16
  br i1 %min.iters.check192, label %vec.epilog.ph205, label %vector.ph193

vector.ph193:                                     ; preds = %vector.main.loop.iter.check191
  %i.bw = and i32 %i.bk, 12
  %n.vec194 = and i32 %i.bk, -16                  ; 4 uses
  %i.bx = trunc i32 %n.vec194 to i16
  %i.by = add i16 %i.bg, %i.bx
  br label %vector.body195

vector.body195:                                   ; preds = %vector.body195, %vector.ph193
  %index196 = phi i32 [ 0, %vector.ph193 ], [ %index.next197, %vector.body195 ] ; 2 uses
  %i.bz = trunc i32 %index196 to i16
  %i.ca = add i16 %i.bg, %i.bz
  %i.cb = zext i16 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.cb ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store <8 x i16> splat (i16 -1), ptr %i.cc, align 2, !tbaa !34
  store <8 x i16> splat (i16 -1), ptr %i.cd, align 2, !tbaa !34
  %index.next197 = add nuw i32 %index196, 16      ; 2 uses
  %i.ce = icmp eq i32 %index.next197, %n.vec194
  br i1 %i.ce, label %middle.block198, label %vector.body195, !llvm.loop !183

middle.block198:                                  ; preds = %vector.body195
  %cmp.n199 = icmp eq i32 %i.bk, %n.vec194
  br i1 %cmp.n199, label %.preheader104.preheader, label %vec.epilog.iter.check203

vec.epilog.iter.check203:                         ; preds = %middle.block198
  %min.epilog.iters.check204 = icmp eq i32 %i.bw, 0
  br i1 %min.epilog.iters.check204, label %.lr.ph.preheader, label %vec.epilog.ph205, !prof !75

vec.epilog.ph205:                                 ; preds = %vector.main.loop.iter.check191, %vec.epilog.iter.check203
  %vec.epilog.resume.val200 = phi i32 [ %n.vec194, %vec.epilog.iter.check203 ], [ 0, %vector.main.loop.iter.check191 ]
  %n.vec206 = and i32 %i.bk, -4                   ; 3 uses
  %i.cf = trunc i32 %n.vec206 to i16
  %i.cg = add i16 %i.bg, %i.cf
  br label %vec.epilog.vector.body207

vec.epilog.vector.body207:                        ; preds = %vec.epilog.vector.body207, %vec.epilog.ph205
  %index208 = phi i32 [ %vec.epilog.resume.val200, %vec.epilog.ph205 ], [ %index.next209, %vec.epilog.vector.body207 ] ; 2 uses
  %i.ch = trunc i32 %index208 to i16
  %i.ci = add i16 %i.bg, %i.ch
  %i.cj = zext i16 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.cj
  store <4 x i16> splat (i16 -1), ptr %i.ck, align 2, !tbaa !34
  %index.next209 = add nuw i32 %index208, 4       ; 2 uses
  %i.cl = icmp eq i32 %index.next209, %n.vec206
  br i1 %i.cl, label %vec.epilog.middle.block210, label %vec.epilog.vector.body207, !llvm.loop !184

vec.epilog.middle.block210:                       ; preds = %vec.epilog.vector.body207
  %cmp.n211 = icmp eq i32 %i.bk, %n.vec206
  br i1 %cmp.n211, label %.preheader104.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.scevcheck188, %iter.check201, %vec.epilog.iter.check203, %vec.epilog.middle.block210
  %.189124.ph = phi i16 [ %i.bg, %iter.check201 ], [ %i.bg, %vector.scevcheck188 ], [ %i.by, %vec.epilog.iter.check203 ], [ %i.cg, %vec.epilog.middle.block210 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.189124 = phi i16 [ %i.co, %.lr.ph ], [ %.189124.ph, %.lr.ph.preheader ] ; 2 uses
  %i.cm = zext i16 %.189124 to i64
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.cm
  store i16 -1, ptr %i.cn, align 2, !tbaa !34
  %i.co = add i16 %.189124, 1                     ; 2 uses
  %i.cp = zext i16 %i.co to i32
  %i.cq = icmp samesign ugt i32 %.fr147, %i.cp
  br i1 %i.cq, label %.lr.ph, label %.preheader104.preheader, !llvm.loop !185

.preheader104.preheader:                          ; preds = %.lr.ph, %middle.block198, %vec.epilog.middle.block210, %bb.d
  %i.cr = shl nuw nsw i32 65536, %1               ; 2 uses
  %i.cs = shl i32 %.us-phi, 16
  %i.ct = add nuw nsw i32 %1, 1
  %i.cu = trunc nuw nsw i32 %0 to i16
  br label %.preheader104.split.us.preheader

.preheader104.split.us.preheader:                 ; preds = %.split136.us, %.preheader104.preheader
  %indvars.iv156 = phi i32 [ %i.ct, %.preheader104.preheader ], [ %indvars.iv.next157, %.split136.us ] ; 2 uses
  %indvars.iv = phi i32 [ 1, %.preheader104.preheader ], [ %indvars.iv.next, %.split136.us ] ; 2 uses
  %.0142 = phi i32 [ %i.b, %.preheader104.preheader ], [ %.4.us, %.split136.us ]
  %.175141 = phi i32 [ 32768, %.preheader104.preheader ], [ %i.dz, %.split136.us ] ; 2 uses
  %.379140 = phi i32 [ %i.cs, %.preheader104.preheader ], [ %.5.us, %.split136.us ]
  br label %.preheader104.split.us

.preheader104.split.us:                           ; preds = %.preheader104.split.us.preheader, %bb.h
  %.1134.us = phi i32 [ %.4.us, %bb.h ], [ %.0142, %.preheader104.split.us.preheader ] ; 2 uses
  %.480133.us = phi i32 [ %.5.us, %bb.h ], [ %.379140, %.preheader104.split.us.preheader ] ; 4 uses
  %.290132.us = phi i16 [ %i.dt, %bb.h ], [ 0, %.preheader104.split.us.preheader ] ; 3 uses
  %i.cv = zext nneg i16 %.290132.us to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !29
  %i.cy = zext i8 %i.cx to i32
  %.not100.us = icmp eq i32 %indvars.iv156, %i.cy
  br i1 %.not100.us, label %.lr.ph129.us, label %bb.h

.lr.ph129.us:                                     ; preds = %.preheader104.split.us
  %i.cz = lshr i32 %.480133.us, 16
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph129.us, %bb.g
  %.2127.us = phi i32 [ %.1134.us, %.lr.ph129.us ], [ %.3.us, %bb.g ] ; 4 uses
  %.184126.us = phi i32 [ 0, %.lr.ph129.us ], [ %i.ds, %bb.g ] ; 2 uses
  %.186125.us = phi i32 [ %i.cz, %.lr.ph129.us ], [ %spec.select.us, %bb.g ]
  %i.da = zext nneg i32 %.186125.us to i64
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.da ; 2 uses
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !34 ; 2 uses
  %i.dd = icmp eq i16 %i.dc, -1
  br i1 %i.dd, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.de = shl i32 %.2127.us, 1                    ; 2 uses
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.df
  store i16 -1, ptr %i.dg, align 2, !tbaa !34
  %i.dh = or disjoint i32 %i.de, 1
  %i.di = zext i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.di
  store i16 -1, ptr %i.dj, align 2, !tbaa !34
  %i.dk = add i32 %.2127.us, 1
  %i.dl = trunc i32 %.2127.us to i16              ; 2 uses
  store i16 %i.dl, ptr %i.db, align 2, !tbaa !34
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.dm = phi i16 [ %i.dl, %bb.f ], [ %i.dc, %bb.e ]
  %.3.us = phi i32 [ %i.dk, %bb.f ], [ %.2127.us, %bb.e ] ; 2 uses
  %i.dn = zext i16 %i.dm to i32
  %i.do = shl nuw nsw i32 %i.dn, 1
  %i.dp = sub nuw nsw i32 15, %.184126.us
  %i.dq = lshr i32 %.480133.us, %i.dp
  %i.dr = and i32 %i.dq, 1
  %spec.select.us = or disjoint i32 %i.do, %i.dr  ; 2 uses
  %i.ds = add nuw nsw i32 %.184126.us, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.ds, %indvars.iv
  br i1 %exitcond.not, label %._crit_edge130.us, label %bb.e, !llvm.loop !186

bb.h:                                             ; preds = %._crit_edge130.us, %.preheader104.split.us
  %.5.us = phi i32 [ %.480133.us, %.preheader104.split.us ], [ %i.dx, %._crit_edge130.us ] ; 3 uses
  %.4.us = phi i32 [ %.1134.us, %.preheader104.split.us ], [ %.3.us, %._crit_edge130.us ] ; 2 uses
  %i.dt = add nuw nsw i16 %.290132.us, 1          ; 2 uses
  %i.du = icmp samesign ult i16 %i.dt, %i.cu
  br i1 %i.du, label %.preheader104.split.us, label %.split136.us, !llvm.loop !187

._crit_edge130.us:                                ; preds = %bb.g
  %i.dv = zext nneg i32 %spec.select.us to i64
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.dv
  store i16 %.290132.us, ptr %i.dw, align 2, !tbaa !34
  %i.dx = add i32 %.480133.us, %.175141           ; 2 uses
  %i.dy = icmp ugt i32 %i.dx, %i.cr
  br i1 %i.dy, label %.loopexit, label %bb.h

.split136.us:                                     ; preds = %bb.h
  %i.dz = lshr i32 %.175141, 1
  %indvars.iv.next157 = add nuw nsw i32 %indvars.iv156, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond159.not = icmp eq i32 %indvars.iv.next157, 17
  br i1 %exitcond159.not, label %._crit_edge144, label %.preheader104.split.us.preheader, !llvm.loop !188

._crit_edge144:                                   ; preds = %.split136.us
  %i.ea = icmp eq i32 %.5.us, %i.cr
  br i1 %i.ea, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %._crit_edge144
  %i.eb = trunc nuw nsw i32 %0 to i16
  br label %.preheader

bb.i:                                             ; preds = %.preheader
  %i.ec = add nuw nsw i16 %.391145, 1             ; 2 uses
  %i.ed = icmp samesign ult i16 %i.ec, %i.eb
  br i1 %i.ed, label %.preheader, label %.loopexit, !llvm.loop !189

.preheader:                                       ; preds = %.preheader.preheader, %bb.i
  %.391145 = phi i16 [ %i.ec, %bb.i ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.ee = zext nneg i16 %.391145 to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !29
  %.not99 = icmp eq i8 %i.eg, 0
  br i1 %.not99, label %bb.i, label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.preheader108.split.us, %._crit_edge130.us, %bb.i, %.preheader, %._crit_edge144, %bb.c
  %.092 = phi i32 [ 0, %._crit_edge144 ], [ 1, %._crit_edge130.us ], [ 0, %bb.c ], [ 1, %.preheader108.split.us ], [ 1, %.preheader ], [ 0, %bb.i ], [ 1, %bb.b ]
  ret i32 %.092
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -124, 1) i32 @lzx_read_lens(ptr nofree noundef nonnull %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef range(i32 0, 257) %2, i32 noundef range(i32 249, 2297) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !61
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !66
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !65
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 54888 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 54880 ; 6 uses
end_hunk_0
begin_hunk_1_@mszip_make_decode_table:bb.a

.unr-lcssa225:                                    ; preds = %bb.h
  br i1 %lcmp.mod229.not, label %.epilog-lcssa230, label %.epil.preheader226

.epil.preheader226:                               ; preds = %.unr-lcssa225
  tail call void @llvm.assume(i1 %lcmp.mod232)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader226
  %.2118.epil = phi i32 [ %i.cb, %bb.i ], [ %i.bx, %.epil.preheader226 ]
  %.1114.epil = phi i32 [ %i.cc, %bb.i ], [ %i.by, %.epil.preheader226 ] ; 2 uses
  %epil.iter228 = phi i32 [ %epil.iter228.next, %bb.i ], [ 0, %.epil.preheader226 ]
  %i.bz = shl i32 %.2118.epil, 1
  %i.ca = and i32 %.1114.epil, 1
  %i.cb = or disjoint i32 %i.ca, %i.bz            ; 2 uses
  %i.cc = lshr i32 %.1114.epil, 1
  %epil.iter228.next = add i32 %epil.iter228, 1   ; 2 uses
  %epil.iter228.cmp.not = icmp eq i32 %epil.iter228.next, %xtraiter227
  br i1 %epil.iter228.cmp.not, label %.epilog-lcssa230, label %bb.i, !llvm.loop !267

.epilog-lcssa230:                                 ; preds = %bb.i, %.unr-lcssa225
  %.lcssa218 = phi i32 [ %i.bx, %.unr-lcssa225 ], [ %i.cb, %bb.i ]
  %i.cd = zext i32 %.lcssa218 to i64
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.cd
  store i16 -1, ptr %i.ce, align 2, !tbaa !34
  %i.cf = add nuw i16 %.1106155, 1                ; 2 uses
  %i.cg = zext i16 %i.cf to i32                   ; 2 uses
  %i.ch = icmp samesign ugt i32 %i.a, %i.cg
  br i1 %i.ch, label %.preheader139, label %.preheader138.preheader, !llvm.loop !268

.preheader138.preheader:                          ; preds = %.epilog-lcssa230, %bb.g
  %i.ci = shl nuw nsw i32 65536, %1               ; 2 uses
  %i.cj = shl i32 %.2, 16
  %i.ck = tail call i32 @llvm.umax.i32(i32 %i.b, i32 %0)
  %i.cl = trunc nuw nsw i32 %i.ck to i16
  %i.cm = add nuw nsw i32 %1, 1
  %xtraiter237 = and i32 %1, 3                    ; 3 uses
  %unroll_iter242 = and i32 %1, 12
  %lcmp.mod239.not = icmp eq i32 %xtraiter237, 0
  %lcmp.mod241 = icmp ne i32 %xtraiter237, 0
  br label %.preheader138.split.us.preheader

.preheader138.split.us.preheader:                 ; preds = %.split.us, %.preheader138.preheader
  %indvars.iv181 = phi i32 [ %i.cm, %.preheader138.preheader ], [ %indvars.iv.next182, %.split.us ] ; 2 uses
  %indvars.iv = phi i32 [ 1, %.preheader138.preheader ], [ %indvars.iv.next, %.split.us ] ; 2 uses
  %.1168 = phi i32 [ 32768, %.preheader138.preheader ], [ %i.eg, %.split.us ] ; 2 uses
  %.3167 = phi i32 [ %i.cj, %.preheader138.preheader ], [ %.5.us, %.split.us ]
  %.0100166 = phi i16 [ %i.cl, %.preheader138.preheader ], [ %.4104.us, %.split.us ]
  br label %.preheader138.split.us

.preheader138.split.us:                           ; preds = %.preheader138.split.us.preheader, %bb.n
  %.4163.us = phi i32 [ %.5.us, %bb.n ], [ %.3167, %.preheader138.split.us.preheader ] ; 4 uses
  %.1101162.us = phi i16 [ %.4104.us, %bb.n ], [ %.0100166, %.preheader138.split.us.preheader ] ; 2 uses
  %.2107161.us = phi i16 [ %i.ea, %bb.n ], [ 0, %.preheader138.split.us.preheader ] ; 3 uses
  %i.cn = zext nneg i16 %.2107161.us to i64
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !29
  %i.cq = zext i8 %i.cp to i32
  %.not132.us = icmp eq i32 %indvars.iv181, %i.cq
  br i1 %.not132.us, label %.new235, label %bb.n

.new235:                                          ; preds = %.preheader138.split.us
  %i.cr = lshr i32 %.4163.us, 16
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.new235
  %.3119.us = phi i32 [ 0, %.new235 ], [ %i.de, %bb.j ]
  %.2115.us = phi i32 [ %i.cr, %.new235 ], [ %i.df, %bb.j ] ; 5 uses
  %niter243 = phi i32 [ 0, %.new235 ], [ %niter243.next.3, %bb.j ]
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
  %niter243.next.3 = add nuw nsw i32 %niter243, 4 ; 2 uses
  %niter243.ncmp.3 = icmp eq i32 %niter243.next.3, %unroll_iter242
  br i1 %niter243.ncmp.3, label %.preheader.us.preheader.unr-lcssa, label %bb.j, !llvm.loop !269

.preheader.us.preheader.unr-lcssa:                ; preds = %bb.j
  br i1 %lcmp.mod239.not, label %.preheader.us.preheader, label %.epil.preheader236

.epil.preheader236:                               ; preds = %.preheader.us.preheader.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod241)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader236
  %.3119.us.epil = phi i32 [ %i.de, %.epil.preheader236 ], [ %i.di, %bb.k ]
  %.2115.us.epil = phi i32 [ %i.df, %.epil.preheader236 ], [ %i.dj, %bb.k ] ; 2 uses
  %epil.iter238 = phi i32 [ 0, %.epil.preheader236 ], [ %epil.iter238.next, %bb.k ]
  %i.dg = shl i32 %.3119.us.epil, 1
  %i.dh = and i32 %.2115.us.epil, 1
  %i.di = or disjoint i32 %i.dh, %i.dg            ; 2 uses
  %i.dj = lshr i32 %.2115.us.epil, 1
  %epil.iter238.next = add i32 %epil.iter238, 1   ; 2 uses
  %epil.iter238.cmp.not = icmp eq i32 %epil.iter238.next, %xtraiter237
  br i1 %epil.iter238.cmp.not, label %.preheader.us.preheader, label %bb.k, !llvm.loop !270

.preheader.us.preheader:                          ; preds = %bb.k, %.preheader.us.preheader.unr-lcssa
  %.lcssa = phi i32 [ %i.de, %.preheader.us.preheader.unr-lcssa ], [ %i.di, %bb.k ]
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %bb.m
  %.2102158.us = phi i16 [ %.3103.us, %bb.m ], [ %.1101162.us, %.preheader.us.preheader ] ; 5 uses
  %.4112157.us = phi i32 [ %i.dz, %bb.m ], [ 0, %.preheader.us.preheader ] ; 2 uses
  %.4120156.us = phi i32 [ %i.dy, %bb.m ], [ %.lcssa, %.preheader.us.preheader ]
  %i.dk = zext i32 %.4120156.us to i64
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.dk ; 2 uses
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !34 ; 2 uses
  %i.dn = icmp eq i16 %i.dm, -1
  br i1 %i.dn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.preheader.us
  %i.do = zext i16 %.2102158.us to i64
  %.idx.us = shl nuw nsw i64 %i.do, 2
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 %.idx.us ; 2 uses
  store i16 -1, ptr %i.dp, align 2, !tbaa !34
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 2
  store i16 -1, ptr %i.dq, align 2, !tbaa !34
  %i.dr = add i16 %.2102158.us, 1
  store i16 %.2102158.us, ptr %i.dl, align 2, !tbaa !34
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
  br i1 %exitcond.not, label %._crit_edge159.us, label %.preheader.us, !llvm.loop !271

bb.n:                                             ; preds = %._crit_edge159.us, %.preheader138.split.us
  %.4104.us = phi i16 [ %.1101162.us, %.preheader138.split.us ], [ %.3103.us, %._crit_edge159.us ] ; 2 uses
  %.5.us = phi i32 [ %.4163.us, %.preheader138.split.us ], [ %i.ee, %._crit_edge159.us ] ; 3 uses
  %i.ea = add nuw nsw i16 %.2107161.us, 1         ; 2 uses
  %i.eb = icmp samesign ult i16 %i.ea, %i.d
  br i1 %i.eb, label %.preheader138.split.us, label %.split.us, !llvm.loop !272

._crit_edge159.us:                                ; preds = %bb.m
  %i.ec = zext nneg i32 %i.dy to i64
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ec
  store i16 %.2107161.us, ptr %i.ed, align 2, !tbaa !34
  %i.ee = add i32 %.4163.us, %.1168               ; 2 uses
  %i.ef = icmp ugt i32 %i.ee, %i.ci
  br i1 %i.ef, label %.loopexit, label %bb.n

.split.us:                                        ; preds = %bb.n
  %i.eg = lshr i32 %.1168, 1
  %indvars.iv.next182 = add nuw nsw i32 %indvars.iv181, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond184.not = icmp eq i32 %indvars.iv.next182, 17
  br i1 %exitcond184.not, label %._crit_edge170, label %.preheader138.split.us.preheader, !llvm.loop !273

._crit_edge170:                                   ; preds = %.split.us
  %.not131 = icmp ne i32 %.5.us, %i.ci
  %i.eh = zext i1 %.not131 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.epilog-lcssa, %._crit_edge159.us, %bb.f, %._crit_edge170
  %.0121 = phi i32 [ %i.eh, %._crit_edge170 ], [ 1, %._crit_edge159.us ], [ 0, %bb.f ], [ 1, %.epilog-lcssa ]
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

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!7, !7, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"p1 _ZTS8cab_file", !9, i64 0}
!12 = !{!"mszip_stream", !7, i64 0, !7, i64 4, !6, i64 8, !7, i64 12, !9, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !7, i64 80, !7, i64 84, !7, i64 88, !6, i64 92, !6, i64 380, !6, i64 412, !6, i64 2716, !6, i64 2972, !11, i64 35744, !9, i64 35752}
!13 = !{!12, !10, i64 40}
!14 = !{!12, !7, i64 0}
!15 = !{!12, !7, i64 4}
!16 = !{!12, !6, i64 8}
!17 = !{!12, !7, i64 88}
!18 = !{!12, !7, i64 24}
!19 = !{!12, !7, i64 28}
!20 = !{!12, !9, i64 16}
!21 = !{!12, !7, i64 36}
!22 = !{!12, !10, i64 56}
!23 = !{!12, !10, i64 48}
!24 = !{!12, !11, i64 35744}
!25 = !{!12, !9, i64 35752}
!26 = !{!12, !7, i64 32}
!27 = !{!12, !7, i64 80}
!28 = !{!12, !7, i64 84}
!29 = !{!6, !6, i64 0}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!12, !7, i64 12}
!32 = !{!"llvm.loop.unroll.disable"}
!33 = !{!"short", !6, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!"llvm.loop.isvectorized", i32 1}
!36 = !{!"llvm.loop.unroll.runtime.disable"}
!37 = !{!"branch_weights", i32 4, i32 28}
!38 = !{!"long", !6, i64 0}
!39 = !{!"lzx_stream", !7, i64 0, !7, i64 4, !6, i64 8, !38, i64 16, !38, i64 24, !10, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !6, i64 88, !6, i64 89, !6, i64 90, !6, i64 91, !6, i64 92, !7, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !7, i64 144, !7, i64 148, !7, i64 152, !6, i64 156, !6, i64 240, !6, i64 960, !6, i64 1274, !6, i64 1346, !6, i64 1554, !6, i64 12370, !6, i64 21562, !6, i64 21852, !6, i64 22056, !6, i64 22107, !11, i64 54880, !9, i64 54888}
!40 = !{!39, !10, i64 32}
!41 = !{!39, !10, i64 104}
!42 = !{!39, !7, i64 0}
!43 = !{!39, !7, i64 4}
!44 = !{!39, !6, i64 8}
!45 = !{!39, !38, i64 16}
!46 = !{!39, !38, i64 24}
!47 = !{!39, !11, i64 54880}
!48 = !{!39, !9, i64 54888}
!49 = !{!39, !7, i64 152}
!50 = !{!39, !7, i64 40}
!51 = !{!39, !7, i64 44}
!52 = !{!39, !7, i64 48}
!53 = !{!39, !7, i64 52}
!54 = !{!39, !7, i64 56}
!55 = !{!39, !7, i64 80}
!56 = !{!39, !7, i64 84}
!57 = !{!39, !6, i64 91}
!58 = !{!39, !6, i64 88}
!59 = !{!39, !6, i64 92}
!60 = !{!39, !7, i64 96}
!61 = !{!39, !10, i64 120}
!62 = !{!39, !10, i64 112}
!63 = !{!39, !10, i64 136}
!64 = !{!39, !10, i64 128}
!65 = !{!39, !7, i64 148}
!66 = !{!39, !7, i64 144}
!67 = !{!39, !7, i64 60}
!68 = !{!39, !7, i64 64}
!69 = !{!39, !7, i64 68}
!70 = !{!39, !6, i64 90}
!71 = !{!39, !7, i64 76}
!72 = !{!39, !6, i64 89}
!73 = !{ptr @lzx_read_input}
!74 = !{!10, !10, i64 0}
!75 = !{!"branch_weights", i32 4, i32 12}
!76 = !{!"p1 _ZTS12qtm_modelsym", !9, i64 0}
!77 = !{!"qtm_model", !7, i64 0, !7, i64 4, !76, i64 8}
!78 = !{!"qtm_stream", !7, i64 0, !7, i64 4, !6, i64 8, !10, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !33, i64 36, !33, i64 38, !33, i64 40, !6, i64 42, !7, i64 44, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !7, i64 88, !7, i64 92, !6, i64 96, !6, i64 100, !6, i64 268, !6, i64 310, !6, i64 337, !77, i64 368, !77, i64 384, !77, i64 400, !77, i64 416, !77, i64 432, !77, i64 448, !77, i64 464, !77, i64 480, !77, i64 496, !6, i64 512, !6, i64 772, !6, i64 1032, !6, i64 1292, !6, i64 1552, !6, i64 1652, !6, i64 1800, !6, i64 1972, !6, i64 2084, !11, i64 2120, !9, i64 2128}
!79 = !{!78, !10, i64 16}
!80 = !{!78, !10, i64 48}
!81 = !{!78, !7, i64 0}
!82 = !{!78, !7, i64 4}
!83 = !{!78, !6, i64 8}
!84 = !{!78, !7, i64 92}
!85 = !{!78, !7, i64 24}
!86 = !{!78, !7, i64 28}
!87 = !{!78, !7, i64 32}
!88 = !{!78, !6, i64 42}
!89 = !{!78, !7, i64 44}
!90 = !{!78, !10, i64 64}
!91 = !{!78, !10, i64 56}
!92 = !{!78, !10, i64 80}
!93 = !{!78, !10, i64 72}
!94 = !{!78, !6, i64 96}
!95 = !{!78, !7, i64 88}
!96 = !{!77, !7, i64 0}
!97 = !{!77, !7, i64 4}
!98 = !{!77, !76, i64 8}
!99 = !{!"qtm_modelsym", !33, i64 0, !33, i64 2}
!100 = !{!99, !33, i64 0}
!101 = !{!99, !33, i64 2}
!102 = !{!78, !11, i64 2120}
!103 = !{!78, !9, i64 2128}
!104 = distinct !{!104, !30}
!105 = distinct !{!105, !30}
!106 = distinct !{!106, !30}
!107 = !{!12, !10, i64 72}
!108 = !{!12, !10, i64 64}
!109 = distinct !{!109, !30}
!110 = distinct !{!110, !30}
!111 = distinct !{!111, !30}
!112 = distinct !{!112, !30}
!113 = distinct !{null, null}
!114 = distinct !{!114, !30}
!115 = distinct !{!115, !30}
!116 = distinct !{!116, !32}
!117 = distinct !{!117, !30}
!118 = distinct !{!118, !30}
!119 = distinct !{!119, !30}
!120 = distinct !{!120, !30}
!121 = distinct !{!121, !30}
!122 = distinct !{!122, !30}
!123 = distinct !{!123, !30}
!124 = distinct !{!124, !30}
!125 = distinct !{!125, !30}
!126 = distinct !{!126, !30}
!127 = distinct !{!127, !30}
!128 = distinct !{!128, !30}
!129 = distinct !{!129, !30}
!130 = distinct !{!130, !30, !35, !36}
!131 = distinct !{!131, !30, !35, !36}
!132 = distinct !{!132, !32}
!133 = distinct !{!133, !30, !35}
!134 = distinct !{!134, !30}
!135 = distinct !{!135, !30}
!136 = distinct !{!136, !30}
!137 = distinct !{!137, !30}
!138 = distinct !{!138, !30}
!139 = distinct !{!139, !30}
!140 = distinct !{!140, !30}
!141 = distinct !{!141, !30}
!142 = distinct !{!142, !30}
!143 = distinct !{!143, !30}
!144 = distinct !{!144, !30}
!145 = distinct !{!145, !30}
!146 = distinct !{!146, !30}
!147 = distinct !{!147, !30}
!148 = distinct !{!148, !30}
!149 = distinct !{!149, !30, !35, !36}
!150 = distinct !{!150, !30, !35}
!151 = distinct !{!151, !30, !35, !36}
!152 = distinct !{!152, !30, !35, !36}
!153 = distinct !{!153, !30, !35}
!154 = distinct !{!154, !30, !35, !36}
!155 = distinct !{!155, !30, !35}
!156 = distinct !{!156, !30}
!157 = distinct !{!157, !30}
!158 = distinct !{!158, !30}
!159 = distinct !{!159, !30}
!160 = distinct !{!160, !30}
!161 = distinct !{!161, !30}
!162 = distinct !{!162, !30}
!163 = distinct !{!163, !30}
!164 = distinct !{!164, !30, !35, !36}
!165 = distinct !{!165, !30, !35}
!166 = distinct !{!166, !30, !35, !36}
!167 = distinct !{!167, !30, !35, !36}
!168 = distinct !{!168, !30, !35}
!169 = distinct !{!169, !30, !35, !36}
!170 = distinct !{!170, !30, !35}
!171 = distinct !{!171, !30}
!172 = distinct !{!172, !30}
!173 = distinct !{!173, !30}
!174 = distinct !{!174, !30}
!175 = distinct !{!175, !30}
!176 = !{!39, !7, i64 72}
!177 = distinct !{!177, !30}
!178 = distinct !{!178, !30, !35, !36}
!179 = distinct !{!179, !30, !35, !36}
end_hunk_1
