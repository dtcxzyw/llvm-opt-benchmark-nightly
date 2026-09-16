Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/lzxd?download=true
inline.NumInlined: 32
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@read_input:bb.a
  store ptr %i.w, ptr %i.x, align 8, !tbaa !43
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e, %bb.b
  %.017 = phi i32 [ 3, %bb.b ], [ 3, %bb.e ], [ 0, %bb.g ]
  ret i32 %.017
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
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
  %.0118 = phi i32 [ %i.b, %bb.a ], [ %i.bb, %.split.us ] ; 14 uses
  %.073117 = phi i32 [ 0, %bb.a ], [ %.us-phi, %.split.us ] ; 3 uses
  %.075116 = phi i8 [ 1, %bb.a ], [ %i.bc, %.split.us ] ; 4 uses
  %.not100110 = icmp eq i32 %.0118, 0
  br i1 %.not100110, label %.preheader103.split.us.preheader, label %.preheader103.split.preheader

.preheader103.split.preheader:                    ; preds = %.preheader103
  %min.iters.check = icmp samesign ult i32 %.0118, 4
  %i.f = sub nsw i32 0, %.0118
  %min.iters.check166 = icmp samesign ult i32 %.0118, 16
  %i.g = and i32 %.0118, 12
  %n.vec = and i32 %.0118, 2147483632             ; 4 uses
  %i.h = and i32 %.0118, 15
  %cmp.n = icmp eq i32 %.0118, %n.vec
  %min.epilog.iters.check = icmp eq i32 %i.g, 0
  %n.vec168 = and i32 %.0118, 2147483644          ; 3 uses
  %i.i = and i32 %.0118, 3
  %cmp.n173 = icmp eq i32 %.0118, %n.vec168
  br label %.preheader103.split

.preheader103.split.us.preheader:                 ; preds = %.preheader103
  %i.j = icmp ule i32 %.073117, %.fr141
  br label %.preheader103.split.us

.preheader103.split.us:                           ; preds = %.preheader103.split.us.preheader, %.preheader101.us
  %.087113.us = phi i16 [ %i.n, %.preheader101.us ], [ 0, %.preheader103.split.us.preheader ] ; 2 uses
  %i.k = zext nneg i16 %.087113.us to i64
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !41
  %.not99.us = icmp ne i8 %i.m, %.075116
  %brmerge = select i1 %.not99.us, i1 true, i1 %i.j
  br i1 %brmerge, label %.preheader101.us, label %.loopexit

.preheader101.us:                                 ; preds = %.preheader103.split.us
  %i.n = add nuw nsw i16 %.087113.us, 1           ; 2 uses
  %i.o = icmp samesign ult i16 %i.n, %i.e
  br i1 %i.o, label %.preheader103.split.us, label %.split.us

.preheader103.split:                              ; preds = %.preheader103.split.preheader, %..loopexit102_crit_edge
  %.174115 = phi i32 [ %.2, %..loopexit102_crit_edge ], [ %.073117, %.preheader103.split.preheader ] ; 8 uses
  %.087113 = phi i16 [ %i.az, %..loopexit102_crit_edge ], [ 0, %.preheader103.split.preheader ] ; 9 uses
  %i.p = zext nneg i16 %.087113 to i64
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !41
  %.not99 = icmp eq i8 %i.r, %.075116
  br i1 %.not99, label %bb.b, label %..loopexit102_crit_edge

bb.b:                                             ; preds = %.preheader103.split
  %i.s = add i32 %.174115, %.0118                 ; 5 uses
  %i.t = icmp ugt i32 %i.s, %.fr141
  br i1 %i.t, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.b
  %i.u = icmp ugt i32 %.174115, %i.f
  %or.cond = select i1 %min.iters.check, i1 true, i1 %i.u
  br i1 %or.cond, label %.preheader101.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check166, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.v = add i32 %.174115, %n.vec
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %.087113, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.w = add i32 %.174115, %index
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <8 x i16> %broadcast.splat, ptr %i.y, align 2, !tbaa !50
  store <8 x i16> %broadcast.splat, ptr %i.z, align 2, !tbaa !50
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %i.aa = icmp eq i32 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !75

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit102_crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.preheader101.preheader, label %vec.epilog.ph, !prof !54

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ab = add i32 %.174115, %n.vec168
  %broadcast.splatinsert169 = insertelement <4 x i16> poison, i16 %.087113, i64 0
  %broadcast.splat170 = shufflevector <4 x i16> %broadcast.splatinsert169, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index171 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next172, %vec.epilog.vector.body ] ; 2 uses
  %i.ac = add i32 %.174115, %index171
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ad
  store <4 x i16> %broadcast.splat170, ptr %i.ae, align 2, !tbaa !50
  %index.next172 = add nuw i32 %index171, 4       ; 2 uses
  %i.af = icmp eq i32 %index.next172, %n.vec168
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !76

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n173, label %..loopexit102_crit_edge, label %.preheader101.preheader

.preheader101.preheader:                          ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.077112.ph = phi i32 [ %.0118, %iter.check ], [ %i.h, %vec.epilog.iter.check ], [ %i.i, %vec.epilog.middle.block ] ; 4 uses
  %.079111.ph = phi i32 [ %.174115, %iter.check ], [ %i.v, %vec.epilog.iter.check ], [ %i.ab, %vec.epilog.middle.block ] ; 2 uses
  %i.ag = add nsw i32 %.077112.ph, -1
  %xtraiter = and i32 %.077112.ph, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader101.prol.loopexit, label %.preheader101.prol

.preheader101.prol:                               ; preds = %.preheader101.preheader, %.preheader101.prol
  %.077112.prol = phi i32 [ %i.ah, %.preheader101.prol ], [ %.077112.ph, %.preheader101.preheader ]
  %.079111.prol = phi i32 [ %i.ai, %.preheader101.prol ], [ %.079111.ph, %.preheader101.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader101.prol ], [ 0, %.preheader101.preheader ]
  %i.ah = add nsw i32 %.077112.prol, -1           ; 2 uses
  %i.ai = add i32 %.079111.prol, 1                ; 2 uses
  %i.aj = zext i32 %.079111.prol to i64
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.aj
  store i16 %.087113, ptr %i.ak, align 2, !tbaa !50
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader101.prol.loopexit, label %.preheader101.prol, !llvm.loop !77

.preheader101.prol.loopexit:                      ; preds = %.preheader101.prol, %.preheader101.preheader
  %.077112.unr = phi i32 [ %.077112.ph, %.preheader101.preheader ], [ %i.ah, %.preheader101.prol ]
  %.079111.unr = phi i32 [ %.079111.ph, %.preheader101.preheader ], [ %i.ai, %.preheader101.prol ]
  %i.al = icmp ult i32 %i.ag, 3
  br i1 %i.al, label %..loopexit102_crit_edge, label %.preheader101

.preheader101:                                    ; preds = %.preheader101.prol.loopexit, %.preheader101
  %.077112 = phi i32 [ %i.av, %.preheader101 ], [ %.077112.unr, %.preheader101.prol.loopexit ]
  %.079111 = phi i32 [ %i.aw, %.preheader101 ], [ %.079111.unr, %.preheader101.prol.loopexit ] ; 5 uses
  %i.am = add i32 %.079111, 1
  %i.an = zext i32 %.079111 to i64
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.an
  store i16 %.087113, ptr %i.ao, align 2, !tbaa !50
  %i.ap = add i32 %.079111, 2
  %i.aq = zext i32 %i.am to i64
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.aq
  store i16 %.087113, ptr %i.ar, align 2, !tbaa !50
  %i.as = add i32 %.079111, 3
  %i.at = zext i32 %i.ap to i64
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.at
  store i16 %.087113, ptr %i.au, align 2, !tbaa !50
  %i.av = add nsw i32 %.077112, -4                ; 2 uses
  %i.aw = add i32 %.079111, 4
  %i.ax = zext i32 %i.as to i64
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ax
  store i16 %.087113, ptr %i.ay, align 2, !tbaa !50
  %.not100.3 = icmp eq i32 %i.av, 0
  br i1 %.not100.3, label %..loopexit102_crit_edge, label %.preheader101, !llvm.loop !78

..loopexit102_crit_edge:                          ; preds = %.preheader101.prol.loopexit, %.preheader101, %middle.block, %vec.epilog.middle.block, %.preheader103.split
  %.2 = phi i32 [ %.174115, %.preheader103.split ], [ %i.s, %middle.block ], [ %i.s, %vec.epilog.middle.block ], [ %i.s, %.preheader101 ], [ %i.s, %.preheader101.prol.loopexit ] ; 2 uses
  %i.az = add nuw nsw i16 %.087113, 1             ; 2 uses
  %i.ba = icmp samesign ult i16 %i.az, %i.d
  br i1 %i.ba, label %.preheader103.split, label %.split.us

.split.us:                                        ; preds = %..loopexit102_crit_edge, %.preheader101.us
  %.us-phi = phi i32 [ %.073117, %.preheader101.us ], [ %.2, %..loopexit102_crit_edge ] ; 7 uses
  %i.bb = lshr i32 %.0118, 1
  %i.bc = add nuw nsw i8 %.075116, 1
  %.not.not = icmp samesign ult i8 %.075116, %i.c
  br i1 %.not.not, label %.preheader103, label %bb.c

bb.c:                                             ; preds = %.split.us
  %i.bd = icmp eq i32 %.us-phi, %.fr141
  br i1 %i.bd, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.be = and i32 %.us-phi, 65535
  %i.bf = icmp samesign ugt i32 %.fr141, %i.be
  br i1 %i.bf, label %iter.check189, label %.preheader.preheader

iter.check189:                                    ; preds = %bb.d
  %i.bg = trunc i32 %.us-phi to i16               ; 8 uses
  %i.bh = add i32 %.us-phi, 1
  %i.bi = and i32 %i.bh, 65535                    ; 2 uses
  %umax177 = tail call i32 @llvm.umax.i32(i32 %.fr141, i32 %i.bi)
  %i.bj = add i32 %umax177, 1
  %i.bk = sub i32 %i.bj, %i.bi                    ; 7 uses
  %min.iters.check178 = icmp ult i32 %i.bk, 4
  br i1 %min.iters.check178, label %.lr.ph.preheader, label %vector.scevcheck176

vector.scevcheck176:                              ; preds = %iter.check189
  %i.bl = add i32 %.us-phi, 1
  %i.bm = and i32 %i.bl, 65535
  %i.bn = tail call i32 @llvm.usub.sat.i32(i32 %.fr141, i32 %i.bm) ; 2 uses
  %i.bo = trunc i32 %i.bn to i16                  ; 2 uses
  %i.bp = sub i16 -2, %i.bg
  %i.bq = icmp ult i16 %i.bp, %i.bo
  %i.br = xor i16 %i.bg, -1
  %i.bs = icmp ult i16 %i.br, %i.bo
  %i.bt = icmp ugt i32 %i.bn, 65535
  %i.bu = or i1 %i.bs, %i.bt
  %i.bv = or i1 %i.bq, %i.bu
  br i1 %i.bv, label %.lr.ph.preheader, label %vector.main.loop.iter.check179

vector.main.loop.iter.check179:                   ; preds = %vector.scevcheck176
  %min.iters.check180 = icmp ult i32 %i.bk, 16
  br i1 %min.iters.check180, label %vec.epilog.ph193, label %vector.ph181

vector.ph181:                                     ; preds = %vector.main.loop.iter.check179
  %i.bw = and i32 %i.bk, 12
  %n.vec182 = and i32 %i.bk, -16                  ; 4 uses
  %i.bx = trunc i32 %n.vec182 to i16
  %i.by = add i16 %i.bg, %i.bx
  br label %vector.body183

vector.body183:                                   ; preds = %vector.body183, %vector.ph181
  %index184 = phi i32 [ 0, %vector.ph181 ], [ %index.next185, %vector.body183 ] ; 2 uses
  %i.bz = trunc i32 %index184 to i16
  %i.ca = add i16 %i.bg, %i.bz
  %i.cb = zext i16 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.cb ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store <8 x i16> splat (i16 -1), ptr %i.cc, align 2, !tbaa !50
  store <8 x i16> splat (i16 -1), ptr %i.cd, align 2, !tbaa !50
  %index.next185 = add nuw i32 %index184, 16      ; 2 uses
  %i.ce = icmp eq i32 %index.next185, %n.vec182
  br i1 %i.ce, label %middle.block186, label %vector.body183, !llvm.loop !79

middle.block186:                                  ; preds = %vector.body183
  %cmp.n187 = icmp eq i32 %i.bk, %n.vec182
  br i1 %cmp.n187, label %.preheader.preheader, label %vec.epilog.iter.check191

vec.epilog.iter.check191:                         ; preds = %middle.block186
  %min.epilog.iters.check192 = icmp eq i32 %i.bw, 0
  br i1 %min.epilog.iters.check192, label %.lr.ph.preheader, label %vec.epilog.ph193, !prof !54

vec.epilog.ph193:                                 ; preds = %vector.main.loop.iter.check179, %vec.epilog.iter.check191
  %vec.epilog.resume.val188 = phi i32 [ %n.vec182, %vec.epilog.iter.check191 ], [ 0, %vector.main.loop.iter.check179 ]
  %n.vec194 = and i32 %i.bk, -4                   ; 3 uses
  %i.cf = trunc i32 %n.vec194 to i16
  %i.cg = add i16 %i.bg, %i.cf
  br label %vec.epilog.vector.body195

vec.epilog.vector.body195:                        ; preds = %vec.epilog.vector.body195, %vec.epilog.ph193
  %index196 = phi i32 [ %vec.epilog.resume.val188, %vec.epilog.ph193 ], [ %index.next197, %vec.epilog.vector.body195 ] ; 2 uses
  %i.ch = trunc i32 %index196 to i16
  %i.ci = add i16 %i.bg, %i.ch
  %i.cj = zext i16 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.cj
  store <4 x i16> splat (i16 -1), ptr %i.ck, align 2, !tbaa !50
  %index.next197 = add nuw i32 %index196, 4       ; 2 uses
  %i.cl = icmp eq i32 %index.next197, %n.vec194
  br i1 %i.cl, label %vec.epilog.middle.block198, label %vec.epilog.vector.body195, !llvm.loop !80

vec.epilog.middle.block198:                       ; preds = %vec.epilog.vector.body195
  %cmp.n199 = icmp eq i32 %i.bk, %n.vec194
  br i1 %cmp.n199, label %.preheader.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.scevcheck176, %iter.check189, %vec.epilog.iter.check191, %vec.epilog.middle.block198
  %.188119.ph = phi i16 [ %i.bg, %iter.check189 ], [ %i.bg, %vector.scevcheck176 ], [ %i.by, %vec.epilog.iter.check191 ], [ %i.cg, %vec.epilog.middle.block198 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.188119 = phi i16 [ %i.co, %.lr.ph ], [ %.188119.ph, %.lr.ph.preheader ] ; 2 uses
  %i.cm = zext i16 %.188119 to i64
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.cm
  store i16 -1, ptr %i.cn, align 2, !tbaa !50
  %i.co = add i16 %.188119, 1                     ; 2 uses
  %i.cp = zext i16 %i.co to i32
  %i.cq = icmp samesign ugt i32 %.fr141, %i.cp
  br i1 %i.cq, label %.lr.ph, label %.preheader.preheader, !llvm.loop !81

.preheader.preheader:                             ; preds = %.lr.ph, %middle.block186, %vec.epilog.middle.block198, %bb.d
  %i.cr = shl nuw nsw i32 65536, %1               ; 2 uses
  %i.cs = shl i32 %.us-phi, 16
  %i.ct = tail call i32 @llvm.umax.i32(i32 %i.b, i32 %0)
  %i.cu = trunc nuw nsw i32 %i.ct to i16
  %i.cv = add nuw nsw i32 %1, 1
  %i.cw = trunc nuw nsw i32 %0 to i16
  br label %.preheader.split.us.preheader

.preheader.split.us.preheader:                    ; preds = %.split131.us, %.preheader.preheader
  %indvars.iv149 = phi i32 [ %i.cv, %.preheader.preheader ], [ %indvars.iv.next150, %.split131.us ] ; 2 uses
  %indvars.iv = phi i32 [ 1, %.preheader.preheader ], [ %indvars.iv.next, %.split131.us ] ; 2 uses
  %.1137 = phi i32 [ 32768, %.preheader.preheader ], [ %i.dw, %.split131.us ] ; 2 uses
  %.3136 = phi i32 [ %i.cs, %.preheader.preheader ], [ %.5.us, %.split131.us ]
  %.082135 = phi i16 [ %i.cu, %.preheader.preheader ], [ %.486.us, %.split131.us ]
  br label %.preheader.split.us

.preheader.split.us:                              ; preds = %.preheader.split.us.preheader, %bb.i
  %.4129.us = phi i32 [ %.5.us, %bb.i ], [ %.3136, %.preheader.split.us.preheader ] ; 5 uses
  %.183128.us = phi i16 [ %.486.us, %bb.i ], [ %.082135, %.preheader.split.us.preheader ] ; 2 uses
  %.289127.us = phi i16 [ %i.dr, %bb.i ], [ 0, %.preheader.split.us.preheader ] ; 3 uses
  %i.cx = zext nneg i16 %.289127.us to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !41
  %i.da = zext i8 %i.cz to i32
  %.not96.us = icmp eq i32 %indvars.iv149, %i.da
  br i1 %.not96.us, label %bb.e, label %bb.i

bb.e:                                             ; preds = %.preheader.split.us
  %.not97.us = icmp ult i32 %.4129.us, %i.cr
  br i1 %.not97.us, label %.lr.ph124.us, label %.loopexit

.lr.ph124.us:                                     ; preds = %bb.e
  %i.db = lshr i32 %.4129.us, 16
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph124.us, %bb.h
  %.178122.us = phi i32 [ 0, %.lr.ph124.us ], [ %i.dq, %bb.h ] ; 2 uses
  %.180121.us = phi i32 [ %i.db, %.lr.ph124.us ], [ %spec.select.us, %bb.h ]
  %.284120.us = phi i16 [ %.183128.us, %.lr.ph124.us ], [ %.385.us, %bb.h ] ; 5 uses
  %i.dc = zext nneg i32 %.180121.us to i64
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.dc ; 2 uses
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !50 ; 2 uses
  %i.df = icmp eq i16 %i.de, -1
  br i1 %i.df, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.dg = zext i16 %.284120.us to i64
  %.idx.us = shl nuw nsw i64 %i.dg, 2
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 %.idx.us ; 2 uses
  store i16 -1, ptr %i.dh, align 2, !tbaa !50
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 2
  store i16 -1, ptr %i.di, align 2, !tbaa !50
  %i.dj = add i16 %.284120.us, 1
  store i16 %.284120.us, ptr %i.dd, align 2, !tbaa !50
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.dk = phi i16 [ %.284120.us, %bb.g ], [ %i.de, %bb.f ]
  %.385.us = phi i16 [ %i.dj, %bb.g ], [ %.284120.us, %bb.f ] ; 2 uses
  %i.dl = zext i16 %i.dk to i32
  %i.dm = shl nuw nsw i32 %i.dl, 1
  %i.dn = sub nuw nsw i32 15, %.178122.us
  %i.do = lshr i32 %.4129.us, %i.dn
  %i.dp = and i32 %i.do, 1
  %spec.select.us = or disjoint i32 %i.dm, %i.dp  ; 2 uses
  %i.dq = add nuw nsw i32 %.178122.us, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.dq, %indvars.iv
  br i1 %exitcond.not, label %._crit_edge125.us, label %bb.f

bb.i:                                             ; preds = %._crit_edge125.us, %.preheader.split.us
  %.486.us = phi i16 [ %.183128.us, %.preheader.split.us ], [ %.385.us, %._crit_edge125.us ] ; 2 uses
  %.5.us = phi i32 [ %.4129.us, %.preheader.split.us ], [ %i.dv, %._crit_edge125.us ] ; 3 uses
  %i.dr = add nuw nsw i16 %.289127.us, 1          ; 2 uses
  %i.ds = icmp samesign ult i16 %i.dr, %i.cw
  br i1 %i.ds, label %.preheader.split.us, label %.split131.us

._crit_edge125.us:                                ; preds = %bb.h
  %i.dt = zext nneg i32 %spec.select.us to i64
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.dt
  store i16 %.289127.us, ptr %i.du, align 2, !tbaa !50
  %i.dv = add i32 %.4129.us, %.1137
  br label %bb.i

.split131.us:                                     ; preds = %bb.i
  %i.dw = lshr i32 %.1137, 1
  %indvars.iv.next150 = add nuw nsw i32 %indvars.iv149, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond152.not = icmp eq i32 %indvars.iv.next150, 17
  br i1 %exitcond152.not, label %._crit_edge139, label %.preheader.split.us.preheader

._crit_edge139:                                   ; preds = %.split131.us
  %i.dx = icmp ne i32 %.5.us, %i.cr
  %i.dy = zext i1 %i.dx to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.preheader103.split.us, %bb.e, %bb.c, %._crit_edge139
  %.090 = phi i32 [ %i.dy, %._crit_edge139 ], [ 1, %.preheader103.split.us ], [ 0, %bb.c ], [ 1, %bb.e ], [ 1, %bb.b ]
  ret i32 %.090
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @lzxd_read_lens(ptr nofree noundef nonnull %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef range(i32 0, 257) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 14 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 14 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !44
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !45
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 28 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 103 ; 14 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 4 uses
  br label %.preheader469

.preheader469:                                    ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0246641 = phi i32 [ %i.h, %bb.a ], [ %i.bn, %._crit_edge ] ; 3 uses
  %.0252640 = phi i32 [ %i.f, %bb.a ], [ %i.bm, %._crit_edge ] ; 2 uses
  %.0267639 = phi ptr [ %i.d, %bb.a ], [ %.1268.lcssa, %._crit_edge ] ; 2 uses
  %.0282638 = phi ptr [ %i.b, %bb.a ], [ %.1283.lcssa, %._crit_edge ] ; 2 uses
  %i.n = icmp slt i32 %.0246641, 4
  br i1 %i.n, label %.lr.ph, label %._crit_edge

end_hunk_0
begin_hunk_1_@lzxd_read_lens:bb.a
vector.ph996:                                     ; preds = %vector.main.loop.iter.check994
  %i.abs = and i32 %i.tx, 28
  %n.vec997 = and i32 %i.tx, -32                  ; 4 uses
  %i.abt = and i32 %i.tx, 31
  %i.abu = add i32 %.1235704, %n.vec997           ; 2 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.abp, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body998

vector.body998:                                   ; preds = %vector.body998, %vector.ph996
  %index999 = phi i32 [ 0, %vector.ph996 ], [ %index.next1000, %vector.body998 ] ; 2 uses
  %i.abv = add i32 %.1235704, %index999
  %i.abw = zext i32 %i.abv to i64
  %i.abx = getelementptr inbounds nuw i8, ptr %1, i64 %i.abw ; 2 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abx, i64 16
  store <16 x i8> %broadcast.splat, ptr %i.abx, align 1, !tbaa !41
  store <16 x i8> %broadcast.splat, ptr %i.aby, align 1, !tbaa !41
  %index.next1000 = add nuw i32 %index999, 32     ; 2 uses
  %i.abz = icmp eq i32 %index.next1000, %n.vec997
  br i1 %i.abz, label %middle.block1001, label %vector.body998, !llvm.loop !87

middle.block1001:                                 ; preds = %vector.body998
  %cmp.n1002 = icmp eq i32 %i.tx, %n.vec997
  br i1 %cmp.n1002, label %.loopexit.loopexit711, label %vec.epilog.iter.check1007

vec.epilog.iter.check1007:                        ; preds = %middle.block1001
  %min.epilog.iters.check1008 = icmp eq i32 %i.abs, 0
  br i1 %min.epilog.iters.check1008, label %vec.epilog.scalar.ph1006.preheader, label %vec.epilog.ph1009, !prof !53

vec.epilog.ph1009:                                ; preds = %vector.main.loop.iter.check994, %vec.epilog.iter.check1007
  %vec.epilog.resume.val1003 = phi i32 [ %n.vec997, %vec.epilog.iter.check1007 ], [ 0, %vector.main.loop.iter.check994 ]
  %n.vec1010 = and i32 %i.tx, -4                  ; 3 uses
  %i.aca = and i32 %i.tx, 3
  %i.acb = add i32 %.1235704, %n.vec1010          ; 2 uses
  %broadcast.splatinsert1011 = insertelement <4 x i8> poison, i8 %i.abp, i64 0
  %broadcast.splat1012 = shufflevector <4 x i8> %broadcast.splatinsert1011, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body1013

vec.epilog.vector.body1013:                       ; preds = %vec.epilog.vector.body1013, %vec.epilog.ph1009
  %index1014 = phi i32 [ %vec.epilog.resume.val1003, %vec.epilog.ph1009 ], [ %index.next1015, %vec.epilog.vector.body1013 ] ; 2 uses
  %i.acc = add i32 %.1235704, %index1014
  %i.acd = zext i32 %i.acc to i64
  %i.ace = getelementptr inbounds nuw i8, ptr %1, i64 %i.acd
  store <4 x i8> %broadcast.splat1012, ptr %i.ace, align 1, !tbaa !41
  %index.next1015 = add nuw i32 %index1014, 4     ; 2 uses
  %i.acf = icmp eq i32 %index.next1015, %n.vec1010
  br i1 %i.acf, label %vec.epilog.middle.block1016, label %vec.epilog.vector.body1013, !llvm.loop !88

vec.epilog.middle.block1016:                      ; preds = %vec.epilog.vector.body1013
  %cmp.n1017 = icmp eq i32 %i.tx, %n.vec1010
  br i1 %cmp.n1017, label %.loopexit.loopexit711, label %vec.epilog.scalar.ph1006.preheader

vec.epilog.scalar.ph1006.preheader:               ; preds = %iter.check1005, %vec.epilog.iter.check1007, %vec.epilog.middle.block1016
  %.2233675.ph = phi i32 [ %i.tx, %iter.check1005 ], [ %i.abt, %vec.epilog.iter.check1007 ], [ %i.aca, %vec.epilog.middle.block1016 ] ; 4 uses
  %.4238674.ph = phi i32 [ %.1235704, %iter.check1005 ], [ %i.abu, %vec.epilog.iter.check1007 ], [ %i.acb, %vec.epilog.middle.block1016 ] ; 2 uses
  %i.acg = add nsw i32 %.2233675.ph, -1
  %xtraiter = and i32 %.2233675.ph, 3             ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph1006.prol.loopexit, label %vec.epilog.scalar.ph1006.prol

vec.epilog.scalar.ph1006.prol:                    ; preds = %vec.epilog.scalar.ph1006.preheader, %vec.epilog.scalar.ph1006.prol
  %.2233675.prol = phi i32 [ %i.ach, %vec.epilog.scalar.ph1006.prol ], [ %.2233675.ph, %vec.epilog.scalar.ph1006.preheader ]
  %.4238674.prol = phi i32 [ %i.aci, %vec.epilog.scalar.ph1006.prol ], [ %.4238674.ph, %vec.epilog.scalar.ph1006.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %vec.epilog.scalar.ph1006.prol ], [ 0, %vec.epilog.scalar.ph1006.preheader ]
  %i.ach = add nsw i32 %.2233675.prol, -1         ; 2 uses
  %i.aci = add i32 %.4238674.prol, 1              ; 3 uses
  %i.acj = zext i32 %.4238674.prol to i64
  %i.ack = getelementptr inbounds nuw i8, ptr %1, i64 %i.acj
  store i8 %i.abp, ptr %i.ack, align 1, !tbaa !41
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph1006.prol.loopexit, label %vec.epilog.scalar.ph1006.prol, !llvm.loop !89

vec.epilog.scalar.ph1006.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1006.prol, %vec.epilog.scalar.ph1006.preheader
  %.lcssa1030.unr = phi i32 [ poison, %vec.epilog.scalar.ph1006.preheader ], [ %i.aci, %vec.epilog.scalar.ph1006.prol ]
  %.2233675.unr = phi i32 [ %.2233675.ph, %vec.epilog.scalar.ph1006.preheader ], [ %i.ach, %vec.epilog.scalar.ph1006.prol ]
  %.4238674.unr = phi i32 [ %.4238674.ph, %vec.epilog.scalar.ph1006.preheader ], [ %i.aci, %vec.epilog.scalar.ph1006.prol ]
  %i.acl = icmp ult i32 %i.acg, 3
  br i1 %i.acl, label %.loopexit.loopexit711, label %vec.epilog.scalar.ph1006

vec.epilog.scalar.ph1006:                         ; preds = %vec.epilog.scalar.ph1006.prol.loopexit, %vec.epilog.scalar.ph1006
  %.2233675 = phi i32 [ %i.acv, %vec.epilog.scalar.ph1006 ], [ %.2233675.unr, %vec.epilog.scalar.ph1006.prol.loopexit ]
  %.4238674 = phi i32 [ %i.acw, %vec.epilog.scalar.ph1006 ], [ %.4238674.unr, %vec.epilog.scalar.ph1006.prol.loopexit ] ; 5 uses
  %i.acm = add i32 %.4238674, 1
  %i.acn = zext i32 %.4238674 to i64
  %i.aco = getelementptr inbounds nuw i8, ptr %1, i64 %i.acn
  store i8 %i.abp, ptr %i.aco, align 1, !tbaa !41
  %i.acp = add i32 %.4238674, 2
  %i.acq = zext i32 %i.acm to i64
  %i.acr = getelementptr inbounds nuw i8, ptr %1, i64 %i.acq
  store i8 %i.abp, ptr %i.acr, align 1, !tbaa !41
  %i.acs = add i32 %.4238674, 3
  %i.act = zext i32 %i.acp to i64
  %i.acu = getelementptr inbounds nuw i8, ptr %1, i64 %i.act
  store i8 %i.abp, ptr %i.acu, align 1, !tbaa !41
  %i.acv = add nsw i32 %.2233675, -4              ; 2 uses
  %i.acw = add i32 %.4238674, 4                   ; 2 uses
  %i.acx = zext i32 %i.acs to i64
  %i.acy = getelementptr inbounds nuw i8, ptr %1, i64 %i.acx
  store i8 %i.abp, ptr %i.acy, align 1, !tbaa !41
  %.not347.3 = icmp eq i32 %i.acv, 0
  br i1 %.not347.3, label %.loopexit.loopexit711, label %vec.epilog.scalar.ph1006, !llvm.loop !90

bb.cd:                                            ; preds = %.loopexit466
  %i.acz = zext nneg i16 %.1241 to i32
  %i.ada = zext i32 %.1235704 to i64
  %i.adb = getelementptr inbounds nuw i8, ptr %1, i64 %i.ada ; 2 uses
  %i.adc = load i8, ptr %i.adb, align 1, !tbaa !41
  %i.add = zext i8 %i.adc to i32
  %i.ade = sub nsw i32 %i.add, %i.acz             ; 3 uses
  %i.adf = icmp slt i32 %i.ade, 0
  %i.adg = add nsw i32 %i.ade, 17
  %spec.select374 = select i1 %i.adf, i32 %i.adg, i32 %i.ade
  %i.adh = trunc i32 %spec.select374 to i8
  %i.adi = add i32 %.1235704, 1
  store i8 %i.adh, ptr %i.adb, align 1, !tbaa !41
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %vector.body
  %.lcssa955 = phi i32 [ %i.na, %vec.epilog.middle.block ], [ %i.mv, %vector.body ], [ %.lcssa1038.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.ob, %vec.epilog.scalar.ph ]
  %i.adj = shl i32 %.6258.lcssa, 4
  %i.adk = add nsw i32 %.6.lcssa, -4
  br label %.loopexit

.loopexit.loopexit710:                            ; preds = %vec.epilog.scalar.ph980.prol.loopexit, %vec.epilog.scalar.ph980, %vec.epilog.middle.block988, %middle.block975
  %.lcssa951 = phi i32 [ %i.qg, %vec.epilog.middle.block988 ], [ %i.pu, %middle.block975 ], [ %.lcssa1034.unr, %vec.epilog.scalar.ph980.prol.loopexit ], [ %i.rb, %vec.epilog.scalar.ph980 ]
  %i.adl = shl i32 %.8260.lcssa, 5
  %i.adm = add nsw i32 %.8.lcssa, -5
  br label %.loopexit

.loopexit.loopexit711:                            ; preds = %vec.epilog.scalar.ph1006.prol.loopexit, %vec.epilog.scalar.ph1006, %vec.epilog.middle.block1016, %middle.block1001
  %.lcssa947 = phi i32 [ %i.acb, %vec.epilog.middle.block1016 ], [ %i.abu, %middle.block1001 ], [ %.lcssa1030.unr, %vec.epilog.scalar.ph1006.prol.loopexit ], [ %i.acw, %vec.epilog.scalar.ph1006 ]
  %i.adn = zext i8 %i.abh to i32                  ; 2 uses
  %i.ado = shl i32 %.12264.lcssa, %i.adn
  %i.adp = sub nsw i32 %.12.lcssa, %i.adn
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit711, %.loopexit.loopexit710, %.loopexit.loopexit, %bb.cd
  %.26308 = phi ptr [ %.6288.lcssa, %bb.cd ], [ %.10292.lcssa, %.loopexit.loopexit ], [ %.14296.lcssa, %.loopexit.loopexit710 ], [ %.22304.lcssa, %.loopexit.loopexit711 ] ; 2 uses
  %.26 = phi ptr [ %.6273.lcssa, %bb.cd ], [ %.10277.lcssa, %.loopexit.loopexit ], [ %.14281.lcssa, %.loopexit.loopexit710 ], [ %.22.lcssa, %.loopexit.loopexit711 ] ; 2 uses
  %.14266 = phi i32 [ %i.lc, %bb.cd ], [ %i.adj, %.loopexit.loopexit ], [ %i.adl, %.loopexit.loopexit710 ], [ %i.ado, %.loopexit.loopexit711 ] ; 2 uses
  %.14 = phi i32 [ %i.ld, %bb.cd ], [ %i.adk, %.loopexit.loopexit ], [ %i.adm, %.loopexit.loopexit710 ], [ %i.adp, %.loopexit.loopexit711 ] ; 2 uses
  %.5239 = phi i32 [ %i.adi, %bb.cd ], [ %.lcssa955, %.loopexit.loopexit ], [ %.lcssa951, %.loopexit.loopexit710 ], [ %.lcssa947, %.loopexit.loopexit711 ] ; 2 uses
  %i.adq = icmp ult i32 %.5239, %3
  br i1 %i.adq, label %.preheader467, label %._crit_edge705

._crit_edge705:                                   ; preds = %.loopexit, %.preheader468
  %.5287.lcssa = phi ptr [ %.1283.lcssa, %.preheader468 ], [ %.26308, %.loopexit ]
  %.5272.lcssa = phi ptr [ %.1268.lcssa, %.preheader468 ], [ %.26, %.loopexit ]
  %.3255.lcssa = phi i32 [ %i.bm, %.preheader468 ], [ %.14266, %.loopexit ]
  %.3249.lcssa = phi i32 [ %i.bn, %.preheader468 ], [ %.14, %.loopexit ]
  store ptr %.5287.lcssa, ptr %i.a, align 8, !tbaa !42
  store ptr %.5272.lcssa, ptr %i.c, align 8, !tbaa !43
  store i32 %.3255.lcssa, ptr %i.e, align 8, !tbaa !44
  store i32 %.3249.lcssa, ptr %i.g, align 4, !tbaa !45
  br label %.thread

.thread:                                          ; preds = %bb.bm, %bb.bj, %bb.ba, %bb.ax, %bb.ao, %bb.al, %bb.af, %bb.ac, %bb.x, %bb.u, %bb.n, %bb.k, %bb.f, %bb.c, %bb.bz, %bb.bv, %bb.br, %bb.bf, %bb.at, %._crit_edge705, %bb.cc, %bb.aj, %bb.s
  %.15324 = phi i32 [ 0, %._crit_edge705 ], [ 11, %bb.s ], [ %i.tc, %bb.bv ], [ 11, %bb.aj ], [ 3, %bb.n ], [ 3, %bb.af ], [ 3, %bb.ao ], [ 3, %bb.ba ], [ 11, %bb.cc ], [ 3, %bb.f ], [ 3, %bb.x ], [ %i.md, %bb.at ], [ %i.pa, %bb.bf ], [ %i.sa, %bb.br ], [ %i.tj, %bb.bz ], [ 3, %bb.c ], [ 3, %bb.k ], [ 3, %bb.u ], [ 3, %bb.ac ], [ 3, %bb.al ], [ 3, %bb.ax ], [ 3, %bb.bj ], [ 3, %bb.bm ]
  ret i32 %.15324
}

; Function Attrs: nounwind uwtable
define void @lzxd_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  tail call void %i.c(ptr noundef %i.e) #5
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15
  tail call void %i.f(ptr noundef %i.h) #5
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !17
  tail call void %i.i(ptr noundef nonnull %0) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"mspack_system", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80}
!10 = !{!"p1 _ZTS13mspack_system", !8, i64 0}
!11 = !{!"p1 _ZTS11mspack_file", !8, i64 0}
!12 = !{!"long", !4, i64 0}
!13 = !{!"p1 omnipotent char", !8, i64 0}
!14 = !{!"lzxd_stream", !10, i64 0, !11, i64 8, !11, i64 16, !12, i64 24, !12, i64 32, !13, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !4, i64 100, !4, i64 101, !4, i64 102, !4, i64 103, !4, i64 104, !5, i64 108, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !5, i64 152, !5, i64 156, !5, i64 160, !4, i64 164, !4, i64 248, !4, i64 2888, !4, i64 3202, !4, i64 3274, !4, i64 3482, !4, i64 21978, !4, i64 31170, !4, i64 31458, !4, i64 31459}
!15 = !{!14, !13, i64 40}
!16 = !{!14, !13, i64 112}
!17 = !{!9, !8, i64 64}
!18 = !{!14, !10, i64 0}
!19 = !{!14, !11, i64 8}
!20 = !{!14, !11, i64 16}
!21 = !{!14, !12, i64 24}
!22 = !{!14, !12, i64 32}
!23 = !{!14, !5, i64 160}
!24 = !{!14, !5, i64 48}
!25 = !{!14, !5, i64 52}
!26 = !{!14, !5, i64 60}
!27 = !{!14, !5, i64 64}
!28 = !{!14, !5, i64 68}
!29 = !{!14, !5, i64 72}
!30 = !{!14, !5, i64 96}
!31 = !{!14, !5, i64 108}
!32 = !{!5, !5, i64 0}
!33 = !{!14, !5, i64 56}
!34 = !{!14, !4, i64 104}
!35 = !{!14, !13, i64 144}
!36 = !{!14, !13, i64 136}
!37 = !{!14, !5, i64 76}
!38 = !{!14, !5, i64 80}
!39 = !{!14, !5, i64 84}
!40 = !{!14, !5, i64 92}
!41 = !{!4, !4, i64 0}
!42 = !{!14, !13, i64 120}
!43 = !{!14, !13, i64 128}
!44 = !{!14, !5, i64 152}
!45 = !{!14, !5, i64 156}
!46 = !{!9, !8, i64 16}
!47 = !{ptr @read_input}
!48 = !{!14, !4, i64 103}
!49 = !{!"short", !4, i64 0}
!50 = !{!49, !49, i64 0}
!51 = !{!"llvm.loop.isvectorized", i32 1}
!52 = !{!"llvm.loop.unroll.runtime.disable"}
!53 = !{!"branch_weights", i32 4, i32 28}
!54 = !{!"branch_weights", i32 4, i32 12}
!55 = !{!"llvm.loop.unroll.disable"}
!56 = !{!9, !8, i64 56}
!57 = distinct !{!57, !51, !52}
!58 = distinct !{!58, !51, !52}
!59 = distinct !{!59, !51}
!60 = distinct !{!60, !51, !52}
!61 = distinct !{!61, !51, !52}
!62 = distinct !{!62, !51}
!63 = distinct !{!63, !51, !52}
!64 = distinct !{!64, !51, !52}
!65 = distinct !{!65, !51}
!66 = !{!9, !8, i64 24}
!67 = !{!9, !8, i64 48}
!68 = !{!14, !4, i64 102}
!69 = !{!14, !4, i64 101}
!70 = !{!14, !5, i64 88}
!71 = !{!13, !13, i64 0}
!72 = !{!14, !4, i64 100}
!73 = !{!14, !4, i64 31458}
!74 = !{!9, !8, i64 72}
!75 = distinct !{!75, !51, !52}
!76 = distinct !{!76, !51, !52}
!77 = distinct !{!77, !55}
!78 = distinct !{!78, !51}
!79 = distinct !{!79, !51, !52}
!80 = distinct !{!80, !51, !52}
!81 = distinct !{!81, !51}
!82 = distinct !{!82, !55}
!83 = distinct !{!83, !51}
!84 = distinct !{!84, !51, !52}
!85 = distinct !{!85, !55}
!86 = distinct !{!86, !51}
!87 = distinct !{!87, !51, !52}
!88 = distinct !{!88, !51, !52}
!89 = distinct !{!89, !55}
!90 = distinct !{!90, !51}
end_hunk_1
