Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/fse_compress?download=true
inline.NumInlined: 48
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@FSE_normalizeCount.rtbTable = internal unnamed_addr constant [8 x i32] [i32 0, i32 473195, i32 504333, i32 520860, i32 550000, i32 700000, i32 750000, i32 830000], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i64 -44, 1) i64 @FSE_buildCTable_wksp(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4, i64 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = shl nuw i32 1, %3                        ; 12 uses
  %i.b = add i32 %i.a, -1                         ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %.not = icmp eq i32 %3, 0
  %i.d = lshr i32 %i.a, 1                         ; 2 uses
  %i.e = select i1 %.not, i32 1, i32 %i.d
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.f ; 3 uses
  %i.h = lshr i32 %i.a, 3
  %i.i = add nuw nsw i32 %i.h, 3
  %i.j = add nuw nsw i32 %i.i, %i.d               ; 5 uses
  %i.k = add i32 %2, 1                            ; 4 uses
  %i.l = add i32 %2, 2                            ; 2 uses
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.m ; 11 uses
  %i.o = zext nneg i32 %3 to i64
  %i.p = shl nuw i64 1, %i.o
  %i.q = add nuw i64 %i.p, %i.m
  %i.r = shl i64 %i.q, 1
  %i.s = and i64 %i.r, -4
  %i.t = add i64 %i.s, 8
  %i.u = icmp ugt i64 %i.t, %5
  br i1 %i.u, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = trunc i32 %3 to i16
  store i16 %i.v, ptr %0, align 2, !tbaa !9
  %i.w = trunc i32 %2 to i16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.w, ptr %i.x, align 2, !tbaa !9
  store i16 0, ptr %4, align 2, !tbaa !9
  %.not170177 = icmp eq i32 %i.k, 0
  br i1 %.not170177, label %.thread, label %.lr.ph.preheader

.thread:                                          ; preds = %bb.b
  %i.y = trunc i32 %i.a to i16
  %i.z = add i16 %i.y, 1
  %i.aa = zext nneg i32 %i.k to i64
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.aa
  store i16 %i.z, ptr %i.ab, align 2, !tbaa !9
  %i.ac = zext i32 %i.a to i64
  br label %.preheader173

.lr.ph.preheader:                                 ; preds = %bb.b
  %umax = tail call i32 @llvm.umax.i32(i32 %i.l, i32 2)
  %wide.trip.count = zext i32 %umax to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.0162178 = phi i32 [ %i.b, %.lr.ph.preheader ], [ %.1163, %bb.e ] ; 3 uses
  %i.ad = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !9  ; 2 uses
  %i.ag = icmp eq i16 %i.af, -1
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.ad
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !9  ; 2 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv ; 2 uses
  br i1 %i.ag, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.ak = add i16 %i.ai, 1
  store i16 %i.ak, ptr %i.aj, align 2, !tbaa !9
  %i.al = trunc i64 %i.ad to i8
  %i.am = add i32 %.0162178, -1
  %i.an = zext i32 %.0162178 to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.an
  store i8 %i.al, ptr %i.ao, align 1, !tbaa !10
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.ap = add i16 %i.ai, %i.af
  store i16 %i.ap, ptr %i.aj, align 2, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1163 = phi i32 [ %i.am, %bb.c ], [ %.0162178, %bb.d ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !llvm.loop !18

._crit_edge:                                      ; preds = %bb.e
  %i.aq = trunc i32 %i.a to i16
  %i.ar = add i16 %i.aq, 1
  %i.as = zext i32 %i.k to i64                    ; 3 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.as
  store i16 %i.ar, ptr %i.at, align 2, !tbaa !9
  %i.au = icmp eq i32 %.1163, %i.b
  br i1 %i.au, label %bb.f, label %.lr.ph188

bb.f:                                             ; preds = %._crit_edge
  %i.av = zext i32 %i.a to i64                    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.av
  br label %.lr.ph197

.preheader173:                                    ; preds = %._crit_edge192, %.thread
  %i.ax = phi i64 [ %i.ac, %.thread ], [ %i.av, %._crit_edge192 ] ; 2 uses
  %i.ay = zext nneg i32 %i.j to i64
  %i.az = zext nneg i32 %i.b to i64               ; 3 uses
  %i.ba = shl nuw i32 %i.j, 1
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ax
  br label %.preheader172

.lr.ph197:                                        ; preds = %bb.f, %._crit_edge192
  %indvars.iv217 = phi i64 [ %indvars.iv.next218, %._crit_edge192 ], [ 0, %bb.f ] ; 2 uses
  %.0159194 = phi i64 [ %i.bx, %._crit_edge192 ], [ 0, %bb.f ] ; 4 uses
  %.0160193 = phi i64 [ %i.bw, %._crit_edge192 ], [ 0, %bb.f ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv217
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !9  ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.0160193 ; 3 uses
  store i64 %.0159194, ptr %i.bf, align 1, !tbaa !13
  %i.bg = icmp sgt i16 %i.be, 8
  br i1 %i.bg, label %.lr.ph191.preheader, label %._crit_edge192

.lr.ph191.preheader:                              ; preds = %.lr.ph197
  %i.bh = zext nneg i16 %i.be to i64              ; 2 uses
  %i.bi = tail call i64 @llvm.umax.i64(i64 %i.bh, i64 16)
  %i.bj = add nsw i64 %i.bi, -9                   ; 2 uses
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bj, 24
  br i1 %min.iters.check, label %.lr.ph191.preheader240, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph191.preheader
  %n.vec = and i64 %i.bl, 4611686018427387900     ; 3 uses
  %i.bm = shl i64 %n.vec, 3
  %i.bn = or disjoint i64 %i.bm, 8
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.0159194, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bo = shl nuw i64 %index, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bo ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store <2 x i64> %broadcast.splat, ptr %i.bq, align 1, !tbaa !13
  store <2 x i64> %broadcast.splat, ptr %i.br, align 1, !tbaa !13
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %._crit_edge192, label %.lr.ph191.preheader240

.lr.ph191.preheader240:                           ; preds = %.lr.ph191.preheader, %middle.block
  %indvars.iv214.ph = phi i64 [ 8, %.lr.ph191.preheader ], [ %i.bn, %middle.block ]
  br label %.lr.ph191

.lr.ph191:                                        ; preds = %.lr.ph191.preheader240, %.lr.ph191
  %indvars.iv214 = phi i64 [ %indvars.iv.next215, %.lr.ph191 ], [ %indvars.iv214.ph, %.lr.ph191.preheader240 ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bf, i64 %indvars.iv214
  store i64 %.0159194, ptr %i.bt, align 1, !tbaa !13
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 8 ; 2 uses
  %i.bu = icmp samesign ult i64 %indvars.iv.next215, %i.bh
  br i1 %i.bu, label %.lr.ph191, label %._crit_edge192, !llvm.loop !20

._crit_edge192:                                   ; preds = %.lr.ph191, %middle.block, %.lr.ph197
  %i.bv = sext i16 %i.be to i64
  %i.bw = add i64 %.0160193, %i.bv
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1 ; 2 uses
  %i.bx = add i64 %.0159194, 72340172838076673
  %exitcond221.not = icmp eq i64 %indvars.iv.next218, %i.as
  br i1 %exitcond221.not, label %.preheader173, label %.lr.ph197, !llvm.loop !21

.preheader172:                                    ; preds = %.preheader173, %.preheader172
  %.0155200 = phi i64 [ 0, %.preheader173 ], [ %i.cj, %.preheader172 ] ; 2 uses
  %.0156199 = phi i64 [ 0, %.preheader173 ], [ %i.ci, %.preheader172 ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.0155200 ; 2 uses
  %i.bz = and i64 %.0156199, %i.az
  %i.ca = load i8, ptr %i.by, align 1, !tbaa !10
  %i.cb = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bz
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !10
  %i.cc = add nuw nsw i64 %.0156199, %i.ay
  %i.cd = and i64 %i.cc, %i.az
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !10
  %i.cg = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.cd
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !10
  %i.ch = add nuw nsw i64 %.0156199, %i.bb
  %i.ci = and i64 %i.ch, %i.az
  %i.cj = add nuw nsw i64 %.0155200, 2            ; 2 uses
  %i.ck = icmp samesign ult i64 %i.cj, %i.ax
  br i1 %i.ck, label %.preheader172, label %.loopexit174, !llvm.loop !22

.lr.ph188:                                        ; preds = %._crit_edge, %._crit_edge184
  %indvars.iv209 = phi i64 [ %indvars.iv.next210, %._crit_edge184 ], [ 0, %._crit_edge ] ; 3 uses
  %.0152186 = phi i32 [ %.1153.lcssa, %._crit_edge184 ], [ 0, %._crit_edge ] ; 3 uses
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv209
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !9  ; 5 uses
  %i.cn = icmp sgt i16 %i.cm, 0
  br i1 %i.cn, label %.lr.ph183, label %._crit_edge184

end_hunk_0
begin_hunk_1_@FSE_normalizeCount:bb.a
  %indvars.iv.next176.i = or disjoint i64 %indvars.iv175.i, 1 ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next176.i
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !17 ; 2 uses
  %i.dp = icmp ugt i32 %i.do, %spec.select150.i
  %i.dq = trunc nuw i64 %indvars.iv.next176.i to i32
  %spec.select.i.1 = select i1 %i.dp, i32 %i.dq, i32 %spec.select.i
  %spec.select150.i.1 = tail call i32 @llvm.umax.i32(i32 %i.do, i32 %spec.select150.i) ; 2 uses
  %indvars.iv.next176.i.1 = or disjoint i64 %indvars.iv175.i, 2 ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next176.i.1
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !17 ; 2 uses
  %i.dt = icmp ugt i32 %i.ds, %spec.select150.i.1
  %i.du = trunc nuw i64 %indvars.iv.next176.i.1 to i32
  %spec.select.i.2 = select i1 %i.dt, i32 %i.du, i32 %spec.select.i.1
  %spec.select150.i.2 = tail call i32 @llvm.umax.i32(i32 %i.ds, i32 %spec.select150.i.1) ; 2 uses
  %indvars.iv.next176.i.2 = or disjoint i64 %indvars.iv175.i, 3 ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next176.i.2
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !17 ; 2 uses
  %i.dx = icmp ugt i32 %i.dw, %spec.select150.i.2
  %i.dy = trunc nuw i64 %indvars.iv.next176.i.2 to i32
  %spec.select.i.3 = select i1 %i.dx, i32 %i.dy, i32 %spec.select.i.2 ; 3 uses
  %spec.select150.i.3 = tail call i32 @llvm.umax.i32(i32 %i.dw, i32 %spec.select150.i.2) ; 2 uses
  %indvars.iv.next176.i.3 = add nuw nsw i64 %indvars.iv175.i, 4 ; 2 uses
  %niter134.next.3 = add i64 %niter134, 4         ; 2 uses
  %niter134.ncmp.3 = icmp eq i64 %niter134.next.3, %unroll_iter133
  br i1 %niter134.ncmp.3, label %.unr-lcssa127, label %.preheader.i, !llvm.loop !38

.unr-lcssa127:                                    ; preds = %.preheader.i
  %lcmp.mod129.not = icmp eq i64 %xtraiter128, 0
  br i1 %lcmp.mod129.not, label %.epilog-lcssa130, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %.unr-lcssa127, %.preheader.i.preheader
  %indvars.iv175.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %indvars.iv.next176.i.3, %.unr-lcssa127 ]
  %.0109168.i.epil.init = phi i32 [ 0, %.preheader.i.preheader ], [ %spec.select150.i.3, %.unr-lcssa127 ]
  %.0111167.i.epil.init = phi i32 [ 0, %.preheader.i.preheader ], [ %spec.select.i.3, %.unr-lcssa127 ]
  %lcmp.mod132 = icmp ne i64 %xtraiter128, 0
  tail call void @llvm.assume(i1 %lcmp.mod132)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %indvars.iv175.i.epil = phi i64 [ %indvars.iv.next176.i.epil, %.preheader.i.epil ], [ %indvars.iv175.i.epil.init, %.preheader.i.epil.preheader ] ; 3 uses
  %.0109168.i.epil = phi i32 [ %spec.select150.i.epil, %.preheader.i.epil ], [ %.0109168.i.epil.init, %.preheader.i.epil.preheader ] ; 2 uses
  %.0111167.i.epil = phi i32 [ %spec.select.i.epil, %.preheader.i.epil ], [ %.0111167.i.epil.init, %.preheader.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.epil ], [ 0, %.preheader.i.epil.preheader ]
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv175.i.epil
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !17 ; 2 uses
  %i.eb = icmp ugt i32 %i.ea, %.0109168.i.epil
  %i.ec = trunc nuw i64 %indvars.iv175.i.epil to i32
  %spec.select.i.epil = select i1 %i.eb, i32 %i.ec, i32 %.0111167.i.epil ; 2 uses
  %spec.select150.i.epil = tail call i32 @llvm.umax.i32(i32 %i.ea, i32 %.0109168.i.epil)
  %indvars.iv.next176.i.epil = add nuw nsw i64 %indvars.iv175.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter128
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa130, label %.preheader.i.epil, !llvm.loop !39

.epilog-lcssa130:                                 ; preds = %.preheader.i.epil, %.unr-lcssa127
  %spec.select.i.lcssa = phi i32 [ %spec.select.i.3, %.unr-lcssa127 ], [ %spec.select.i.epil, %.preheader.i.epil ]
  %i.ed = zext i32 %spec.select.i.lcssa to i64
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ed ; 2 uses
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !9
  %i.eg = trunc i32 %.0115.i to i16
  %i.eh = add i16 %i.ef, %i.eg
  store i16 %i.eh, ptr %i.ee, align 2, !tbaa !9
  br label %select.unfold

bb.ak:                                            ; preds = %bb.aj
  %i.ei = icmp eq i64 %.4135.i, 0
  br i1 %i.ei, label %.preheader153.i, label %bb.an

.preheader153.i:                                  ; preds = %bb.ak
  %.not145163.i = icmp eq i32 %.0115.i, 0
  br i1 %.not145163.i, label %select.unfold, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader153.i, %bb.am
  %.1116165.i = phi i32 [ %.2117.i, %bb.am ], [ %.0115.i, %.preheader153.i ] ; 2 uses
  %.3124164.i = phi i32 [ %i.er, %bb.am ], [ 0, %.preheader153.i ] ; 3 uses
  %i.ej = zext i32 %.3124164.i to i64
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ej ; 2 uses
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !9  ; 2 uses
  %i.em = icmp sgt i16 %i.el, 0
  br i1 %i.em, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.lr.ph.i
  %i.en = add i32 %.1116165.i, -1
  %i.eo = add nuw i16 %i.el, 1
  store i16 %i.eo, ptr %i.ek, align 2, !tbaa !9
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.lr.ph.i
  %.2117.i = phi i32 [ %i.en, %bb.al ], [ %.1116165.i, %.lr.ph.i ] ; 2 uses
  %i.ep = add i32 %.3124164.i, 1
  %i.eq = icmp eq i32 %.3124164.i, %4
  %i.er = select i1 %i.eq, i32 0, i32 %i.ep
  %.not145.i = icmp eq i32 %.2117.i, 0
  br i1 %.not145.i, label %select.unfold, label %.lr.ph.i, !llvm.loop !40

bb.an:                                            ; preds = %bb.ak
  %i.es = add nsw i64 %i.m, -1
  %notmask.i = shl nsw i64 -1, %i.es
  %i.et = xor i64 %notmask.i, -1                  ; 2 uses
  %i.eu = zext i32 %.0115.i to i64
  %i.ev = shl i64 %i.eu, %i.m
  %i.ew = add i64 %i.ev, %i.et
  %i.ex = and i64 %.4135.i, 4294967295
  %i.ey = udiv i64 %i.ew, %i.ex
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ar, %bb.an
  %.0161.i = phi i64 [ %i.et, %bb.an ], [ %.2.i, %bb.ar ] ; 3 uses
  %.4125160.i = phi i32 [ 0, %bb.an ], [ %i.fn, %bb.ar ] ; 2 uses
  %i.ez = zext i32 %.4125160.i to i64             ; 2 uses
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ez ; 2 uses
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !9
  %i.fc = icmp eq i16 %i.fb, -2
  br i1 %i.fc, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ez
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !17
  %i.ff = zext i32 %i.fe to i64
  %i.fg = mul i64 %i.ey, %i.ff
  %i.fh = add i64 %i.fg, %.0161.i                 ; 2 uses
  %i.fi = lshr i64 %.0161.i, %i.m                 ; 2 uses
  %i.fj = lshr i64 %i.fh, %i.m                    ; 2 uses
  %.not144.i = icmp eq i64 %i.fj, %i.fi
  br i1 %.not144.i, label %select.unfold, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fk = trunc nuw nsw i64 %i.fi to i16
  %i.fl = trunc nuw nsw i64 %i.fj to i16
  %i.fm = sub nsw i16 %i.fl, %i.fk
  store i16 %i.fm, ptr %i.fa, align 2, !tbaa !9
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ao
  %.2.i = phi i64 [ %i.fh, %bb.aq ], [ %.0161.i, %bb.ao ]
  %i.fn = add i32 %.4125160.i, 1                  ; 2 uses
  %.not143.not.i = icmp ugt i32 %i.fn, %4
  br i1 %.not143.not.i, label %select.unfold, label %bb.ao, !llvm.loop !41

bb.as:                                            ; preds = %bb.n
  %i.fo = trunc i32 %.181 to i16
  %i.fp = add i16 %i.bb, %i.fo
  store i16 %i.fp, ptr %i.ba, align 2, !tbaa !9
  br label %select.unfold

select.unfold:                                    ; preds = %bb.e, %bb.ap, %bb.ar, %bb.am, %.preheader153.i, %bb.x, %.epilog-lcssa130, %bb.as, %bb.c, %bb.b, %bb.a
  %.3 = phi i64 [ -1, %bb.c ], [ -1, %bb.a ], [ -44, %bb.b ], [ %i.r, %bb.am ], [ %i.r, %.preheader153.i ], [ %i.r, %bb.as ], [ %i.r, %bb.ar ], [ %i.r, %.epilog-lcssa130 ], [ %i.r, %bb.x ], [ -1, %bb.ap ], [ 0, %bb.e ]
  ret i64 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef i64 @FSE_buildCTable_rle(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, i8 noundef zeroext %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 0, ptr %0, align 2, !tbaa !9
  %i.c = zext i8 %1 to i16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.c, ptr %i.d, align 2, !tbaa !9
  store i16 0, ptr %i.a, align 2, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i16 0, ptr %i.e, align 2, !tbaa !9
  %i.f = zext i8 %1 to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 0, ptr %i.h, align 4, !tbaa !15
  store i32 0, ptr %i.g, align 4, !tbaa !16
  ret i64 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @FSE_compress_usingCTable(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(address) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i64 %3, 7
  %i.b = add i64 %3, 12
  %i.c = add i64 %i.b, %i.a
  %.not = icmp uge i64 %1, %i.c
  %. = zext i1 %.not to i32
  %i.d = tail call fastcc i64 @FSE_compress_usingCTable_generic(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %.)
  ret i64 %i.d
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @FSE_compress_usingCTable_generic(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(address) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 %3 ; 4 uses
  %i.b = icmp ult i64 %3, 3
  br i1 %i.b, label %BIT_closeCStream.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 13 uses
  %i.e = icmp ugt i64 %1, 8
  br i1 %i.e, label %bb.c, label %BIT_closeCStream.exit

bb.c:                                             ; preds = %bb.b
  %i.f = and i64 %3, 1
  %.not36 = icmp eq i64 %i.f, 0
  %i.g = getelementptr inbounds i8, ptr %i.a, i64 -1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !10
  %.val.i.i52 = load i16, ptr %4, align 1, !tbaa !9 ; 2 uses
  %i.i = zext i16 %.val.i.i52 to i32              ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 5 uses
  %.not.i.i53 = icmp eq i16 %.val.i.i52, 0
  %i.k = add nsw i32 %i.i, -1
  %i.l = shl nuw i32 1, %i.k
  %i.m = sext i32 %i.l to i64
  %i.n = select i1 %.not.i.i53, i64 1, i64 %i.m
  %i.o = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.n ; 10 uses
  %i.p = zext i8 %i.h to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.p ; 2 uses
  %.sroa.0.0.copyload.i54 = load i32, ptr %i.q, align 4, !tbaa !17
  %.sroa.4.0..sroa_idx.i55 = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %.sroa.4.0.copyload.i56 = load i32, ptr %.sroa.4.0..sroa_idx.i55, align 4, !tbaa !17 ; 2 uses
  %i.r = add i32 %.sroa.4.0.copyload.i56, 32768   ; 2 uses
  %i.s = lshr i32 %i.r, 16
  %i.t = and i32 %i.r, -65536
  %i.u = sub i32 %i.t, %.sroa.4.0.copyload.i56
  %i.v = zext i32 %i.u to i64
  %i.w = zext nneg i32 %i.s to i64
  %i.x = lshr i64 %i.v, %i.w
  %i.y = sext i32 %.sroa.0.0.copyload.i54 to i64
  %i.z = getelementptr [2 x i8], ptr %i.j, i64 %i.x
  %i.aa = getelementptr [2 x i8], ptr %i.z, i64 %i.y
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !9  ; 2 uses
  br i1 %.not36, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = zext i16 %i.ab to i64                   ; 3 uses
  %i.ad = getelementptr inbounds i8, ptr %i.a, i64 -2
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !10
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.af ; 2 uses
  %.sroa.0.0.copyload.i46 = load i32, ptr %i.ag, align 4, !tbaa !17
  %.sroa.4.0..sroa_idx.i47 = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %.sroa.4.0.copyload.i48 = load i32, ptr %.sroa.4.0..sroa_idx.i47, align 4, !tbaa !17 ; 2 uses
  %i.ah = add i32 %.sroa.4.0.copyload.i48, 32768  ; 2 uses
  %i.ai = lshr i32 %i.ah, 16
  %i.aj = and i32 %i.ah, -65536
  %i.ak = sub i32 %i.aj, %.sroa.4.0.copyload.i48
  %i.al = zext i32 %i.ak to i64
  %i.am = zext nneg i32 %i.ai to i64
  %i.an = lshr i64 %i.al, %i.am
  %i.ao = sext i32 %.sroa.0.0.copyload.i46 to i64
  %i.ap = getelementptr [2 x i8], ptr %i.j, i64 %i.an
  %i.aq = getelementptr [2 x i8], ptr %i.ap, i64 %i.ao
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !9  ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.a, i64 -3 ; 3 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !10
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.au ; 2 uses
  %.sroa.0.0.copyload.i49 = load i32, ptr %i.av, align 4, !tbaa !17
  %.sroa.4.0..sroa_idx.i50 = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %.sroa.4.0.copyload.i51 = load i32, ptr %.sroa.4.0..sroa_idx.i50, align 4, !tbaa !17
  %i.aw = zext i32 %.sroa.4.0.copyload.i51 to i64
  %i.ax = add nuw nsw i64 %i.aw, %i.ac            ; 2 uses
  %i.ay = lshr i64 %i.ax, 16                      ; 2 uses
  %i.az = trunc nuw nsw i64 %i.ay to i32          ; 3 uses
  %notmask.i.i = shl nsw i32 -1, %i.az
  %6 = xor i32 %notmask.i.i, -1
  %i.ba = zext nneg i32 %6 to i64
  %i.bb = and i64 %i.ba, %i.ac                    ; 3 uses
  %i.bc = lshr i64 %i.ac, %i.ay
  %i.bd = sext i32 %.sroa.0.0.copyload.i49 to i64
  %i.be = getelementptr [2 x i8], ptr %i.j, i64 %i.bc
  %i.bf = getelementptr [2 x i8], ptr %i.be, i64 %i.bd
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !9  ; 2 uses
  %.not37 = icmp eq i32 %5, 0
  %i.bh = lshr i64 %i.ax, 19                      ; 3 uses
  store i64 %i.bb, ptr %0, align 1, !tbaa !13
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %i.bh ; 3 uses
  br i1 %.not37, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bj = and i32 %i.az, 7
  %i.bk = shl nuw nsw i64 %i.bh, 3
  %i.bl = lshr i64 %i.bb, %i.bk
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.bm = icmp ugt ptr %i.bi, %i.d
  %spec.store.select.i = select i1 %i.bm, ptr %i.d, ptr %i.bi
  %i.bn = and i32 %i.az, 7
  %i.bo = shl nuw nsw i64 %i.bh, 3
  %i.bp = lshr i64 %i.bb, %i.bo
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.bq = getelementptr inbounds i8, ptr %i.a, i64 -2 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !10
  %i.bs = zext i8 %i.br to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.bs ; 2 uses
  %.sroa.0.0.copyload.i59 = load i32, ptr %i.bt, align 4, !tbaa !17
  %.sroa.4.0..sroa_idx.i60 = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %.sroa.4.0.copyload.i61 = load i32, ptr %.sroa.4.0..sroa_idx.i60, align 4, !tbaa !17 ; 2 uses
  %i.bu = add i32 %.sroa.4.0.copyload.i61, 32768  ; 2 uses
  %i.bv = lshr i32 %i.bu, 16
  %i.bw = and i32 %i.bu, -65536
  %i.bx = sub i32 %i.bw, %.sroa.4.0.copyload.i61
  %i.by = zext i32 %i.bx to i64
  %i.bz = zext nneg i32 %i.bv to i64
  %i.ca = lshr i64 %i.by, %i.bz
  %i.cb = sext i32 %.sroa.0.0.copyload.i59 to i64
  %i.cc = getelementptr [2 x i8], ptr %i.j, i64 %i.ca
  %i.cd = getelementptr [2 x i8], ptr %i.cc, i64 %i.cb
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !9
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.sroa.47.0 = phi i32 [ 0, %bb.g ], [ %i.bn, %bb.f ], [ %i.bj, %bb.e ] ; 3 uses
  %.sroa.0102.0 = phi i64 [ 0, %bb.g ], [ %i.bp, %bb.f ], [ %i.bl, %bb.e ] ; 2 uses
  %.sroa.82.0 = phi ptr [ %0, %bb.g ], [ %spec.store.select.i, %bb.f ], [ %i.bi, %bb.e ] ; 3 uses
  %.sroa.091.0.in = phi i16 [ %i.ce, %bb.g ], [ %i.bg, %bb.f ], [ %i.bg, %bb.e ]
  %.sroa.0.0.in = phi i16 [ %i.ab, %bb.g ], [ %i.ar, %bb.f ], [ %i.ar, %bb.e ]
  %.032 = phi ptr [ %i.bq, %bb.g ], [ %i.as, %bb.f ], [ %i.as, %bb.e ] ; 3 uses
  %.sroa.0.0 = zext i16 %.sroa.0.0.in to i64      ; 4 uses
  %.sroa.091.0 = zext i16 %.sroa.091.0.in to i64  ; 4 uses
  %i.cf = and i64 %3, 2
  %.not38.not = icmp eq i64 %i.cf, 0
  br i1 %.not38.not, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %.032, i64 -1
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !10
  %i.cj = zext i8 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.cj ; 2 uses
  %.sroa.0.0.copyload.i62 = load i32, ptr %i.ck, align 4, !tbaa !17
  %.sroa.4.0..sroa_idx.i63 = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %.sroa.4.0.copyload.i64 = load i32, ptr %.sroa.4.0..sroa_idx.i63, align 4, !tbaa !17
  %i.cl = zext i32 %.sroa.4.0.copyload.i64 to i64
  %i.cm = add nuw nsw i64 %i.cl, %.sroa.0.0
  %i.cn = lshr i64 %i.cm, 16                      ; 2 uses
  %i.co = trunc nuw nsw i64 %i.cn to i32          ; 2 uses
  %notmask.i.i65 = shl nsw i32 -1, %i.co
  %7 = xor i32 %notmask.i.i65, -1
  %i.cp = zext nneg i32 %7 to i64
  %i.cq = and i64 %i.cp, %.sroa.0.0
  %i.cr = zext nneg i32 %.sroa.47.0 to i64
  %i.cs = shl nuw nsw i64 %i.cq, %i.cr
  %i.ct = add nuw nsw i32 %.sroa.47.0, %i.co      ; 2 uses
  %i.cu = lshr i64 %.sroa.0.0, %i.cn
  %i.cv = sext i32 %.sroa.0.0.copyload.i62 to i64
  %i.cw = getelementptr [2 x i8], ptr %i.cg, i64 %i.cu
  %i.cx = getelementptr [2 x i8], ptr %i.cw, i64 %i.cv
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !9
  %i.cz = zext i16 %i.cy to i64                   ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %.032, i64 -2 ; 3 uses
  %i.db = load i8, ptr %i.da, align 1, !tbaa !10
  %i.dc = zext i8 %i.db to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.dc ; 2 uses
  %.sroa.0.0.copyload.i65 = load i32, ptr %i.dd, align 4, !tbaa !17
  %.sroa.4.0..sroa_idx.i66 = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %.sroa.4.0.copyload.i67 = load i32, ptr %.sroa.4.0..sroa_idx.i66, align 4, !tbaa !17
  %i.de = zext i32 %.sroa.4.0.copyload.i67 to i64
  %i.df = add nuw nsw i64 %i.de, %.sroa.091.0
  %i.dg = lshr i64 %i.df, 16                      ; 2 uses
  %i.dh = trunc nuw nsw i64 %i.dg to i32          ; 2 uses
  %notmask.i.i69 = shl nsw i32 -1, %i.dh
  %8 = xor i32 %notmask.i.i69, -1
  %i.di = zext nneg i32 %8 to i64
  %i.dj = and i64 %i.di, %.sroa.091.0
  %i.dk = zext nneg i32 %i.ct to i64
  %i.dl = shl i64 %i.dj, %i.dk
  %i.dm = or i64 %i.cs, %i.dl
  %i.dn = or i64 %i.dm, %.sroa.0102.0             ; 3 uses
  %i.do = add nuw nsw i32 %i.ct, %i.dh            ; 3 uses
  %i.dp = lshr i64 %.sroa.091.0, %i.dg
  %i.dq = sext i32 %.sroa.0.0.copyload.i65 to i64
  %i.dr = getelementptr [2 x i8], ptr %i.cg, i64 %i.dp
  %i.ds = getelementptr [2 x i8], ptr %i.dr, i64 %i.dq
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !9
  %i.du = zext i16 %i.dt to i64                   ; 2 uses
  %.not39 = icmp eq i32 %5, 0
  %i.dv = lshr i32 %i.do, 3
  %i.dw = zext nneg i32 %i.dv to i64              ; 3 uses
  store i64 %i.dn, ptr %.sroa.82.0, align 1, !tbaa !13
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.82.0, i64 %i.dw ; 3 uses
  br i1 %.not39, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dy = and i32 %i.do, 7
  %i.dz = shl nuw nsw i64 %i.dw, 3
  %i.ea = lshr i64 %i.dn, %i.dz
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.eb = icmp ugt ptr %i.dx, %i.d
  %spec.store.select.i68 = select i1 %i.eb, ptr %i.d, ptr %i.dx
  %i.ec = and i32 %i.do, 7
  %i.ed = shl nuw nsw i64 %i.dw, 3
  %i.ee = lshr i64 %i.dn, %i.ed
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.h
  %.sroa.47.1 = phi i32 [ %i.ec, %bb.k ], [ %i.dy, %bb.j ], [ %.sroa.47.0, %bb.h ] ; 2 uses
  %.sroa.0102.1 = phi i64 [ %i.ee, %bb.k ], [ %i.ea, %bb.j ], [ %.sroa.0102.0, %bb.h ] ; 2 uses
  %.sroa.82.1 = phi ptr [ %spec.store.select.i68, %bb.k ], [ %i.dx, %bb.j ], [ %.sroa.82.0, %bb.h ] ; 2 uses
  %.sroa.091.1 = phi i64 [ %i.du, %bb.k ], [ %i.du, %bb.j ], [ %.sroa.091.0, %bb.h ] ; 2 uses
  %.sroa.0.1 = phi i64 [ %i.cz, %bb.k ], [ %i.cz, %bb.j ], [ %.sroa.0.0, %bb.h ] ; 2 uses
  %.1 = phi ptr [ %i.da, %bb.k ], [ %i.da, %bb.j ], [ %.032, %bb.h ] ; 2 uses
  %i.ef = icmp ugt ptr %.1, %2
  br i1 %i.ef, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.l
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  %.not40 = icmp eq i32 %5, 0
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.m
  %.2161 = phi ptr [ %.1, %.lr.ph ], [ %i.gm, %bb.m ] ; 4 uses
  %.sroa.0.2160 = phi i64 [ %.sroa.0.1, %.lr.ph ], [ %i.gl, %bb.m ] ; 3 uses
  %.sroa.091.2159 = phi i64 [ %.sroa.091.1, %.lr.ph ], [ %i.hi, %bb.m ] ; 3 uses
  %.sroa.82.2158 = phi ptr [ %.sroa.82.1, %.lr.ph ], [ %.sroa.82.3, %bb.m ] ; 2 uses
  %.sroa.0102.2157 = phi i64 [ %.sroa.0102.1, %.lr.ph ], [ %.sroa.0102.3, %bb.m ]
  %.sroa.47.2156 = phi i32 [ %.sroa.47.1, %.lr.ph ], [ %.sroa.47.3, %bb.m ] ; 2 uses
  %i.eh = getelementptr inbounds i8, ptr %.2161, i64 -1
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !10
  %i.ej = zext i8 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ej ; 2 uses
  %.sroa.0.0.copyload.i69 = load i32, ptr %i.ek, align 4, !tbaa !17
  %.sroa.4.0..sroa_idx.i70 = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  %.sroa.4.0.copyload.i71 = load i32, ptr %.sroa.4.0..sroa_idx.i70, align 4, !tbaa !17
  %i.el = zext i32 %.sroa.4.0.copyload.i71 to i64
  %i.em = add nuw nsw i64 %.sroa.0.2160, %i.el
  %i.en = lshr i64 %i.em, 16                      ; 2 uses
  %i.eo = trunc nuw nsw i64 %i.en to i32          ; 2 uses
  %notmask.i.i74 = shl nsw i32 -1, %i.eo
  %9 = xor i32 %notmask.i.i74, -1
  %i.ep = zext nneg i32 %9 to i64
  %i.eq = and i64 %.sroa.0.2160, %i.ep
  %i.er = zext nneg i32 %.sroa.47.2156 to i64
  %i.es = shl nuw nsw i64 %i.eq, %i.er
  %i.et = add nuw nsw i32 %.sroa.47.2156, %i.eo   ; 2 uses
  %i.eu = lshr i64 %.sroa.0.2160, %i.en
  %i.ev = sext i32 %.sroa.0.0.copyload.i69 to i64
  %i.ew = getelementptr [2 x i8], ptr %i.eg, i64 %i.eu
  %i.ex = getelementptr [2 x i8], ptr %i.ew, i64 %i.ev
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !9
  %i.ez = zext i16 %i.ey to i64                   ; 3 uses
  %i.fa = getelementptr inbounds i8, ptr %.2161, i64 -2
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !10
  %i.fc = zext i8 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.fc ; 2 uses
  %.sroa.0.0.copyload.i72 = load i32, ptr %i.fd, align 4, !tbaa !17
  %.sroa.4.0..sroa_idx.i73 = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  %.sroa.4.0.copyload.i74 = load i32, ptr %.sroa.4.0..sroa_idx.i73, align 4, !tbaa !17
  %i.fe = zext i32 %.sroa.4.0.copyload.i74 to i64
  %i.ff = add nuw nsw i64 %.sroa.091.2159, %i.fe
  %i.fg = lshr i64 %i.ff, 16                      ; 2 uses
  %i.fh = trunc nuw nsw i64 %i.fg to i32          ; 2 uses
  %notmask.i.i78 = shl nsw i32 -1, %i.fh
  %10 = xor i32 %notmask.i.i78, -1
  %i.fi = zext nneg i32 %10 to i64
  %i.fj = and i64 %.sroa.091.2159, %i.fi
  %i.fk = zext nneg i32 %i.et to i64
  %i.fl = shl i64 %i.fj, %i.fk
  %i.fm = add nuw nsw i32 %i.et, %i.fh            ; 2 uses
  %i.fn = lshr i64 %.sroa.091.2159, %i.fg
  %i.fo = sext i32 %.sroa.0.0.copyload.i72 to i64
  %i.fp = getelementptr [2 x i8], ptr %i.eg, i64 %i.fn
  %i.fq = getelementptr [2 x i8], ptr %i.fp, i64 %i.fo
  %i.fr = load i16, ptr %i.fq, align 2, !tbaa !9
  %i.fs = zext i16 %i.fr to i64                   ; 3 uses
  %i.ft = getelementptr inbounds i8, ptr %.2161, i64 -3
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !10
  %i.fv = zext i8 %i.fu to i64
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.fv ; 2 uses
  %.sroa.0.0.copyload.i75 = load i32, ptr %i.fw, align 4, !tbaa !17
  %.sroa.4.0..sroa_idx.i76 = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  %.sroa.4.0.copyload.i77 = load i32, ptr %.sroa.4.0..sroa_idx.i76, align 4, !tbaa !17
  %i.fx = zext i32 %.sroa.4.0.copyload.i77 to i64
  %i.fy = add nuw nsw i64 %i.fx, %i.ez
  %i.fz = lshr i64 %i.fy, 16                      ; 2 uses
  %i.ga = trunc nuw nsw i64 %i.fz to i32          ; 2 uses
  %notmask.i.i82 = shl nsw i32 -1, %i.ga
  %11 = xor i32 %notmask.i.i82, -1
  %i.gb = zext nneg i32 %11 to i64
  %i.gc = and i64 %i.gb, %i.ez
  %i.gd = zext nneg i32 %i.fm to i64
  %i.ge = shl i64 %i.gc, %i.gd
  %i.gf = add nuw nsw i32 %i.fm, %i.ga            ; 2 uses
  %i.gg = lshr i64 %i.ez, %i.fz
  %i.gh = sext i32 %.sroa.0.0.copyload.i75 to i64
  %i.gi = getelementptr [2 x i8], ptr %i.eg, i64 %i.gg
  %i.gj = getelementptr [2 x i8], ptr %i.gi, i64 %i.gh
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !9
  %i.gl = zext i16 %i.gk to i64                   ; 2 uses
  %i.gm = getelementptr inbounds i8, ptr %.2161, i64 -4 ; 3 uses
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !10
  %i.go = zext i8 %i.gn to i64
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.go ; 2 uses
  %.sroa.0.0.copyload.i78 = load i32, ptr %i.gp, align 4, !tbaa !17
  %.sroa.4.0..sroa_idx.i79 = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  %.sroa.4.0.copyload.i80 = load i32, ptr %.sroa.4.0..sroa_idx.i79, align 4, !tbaa !17
  %i.gq = zext i32 %.sroa.4.0.copyload.i80 to i64
  %i.gr = add nuw nsw i64 %i.gq, %i.fs
  %i.gs = lshr i64 %i.gr, 16                      ; 2 uses
  %i.gt = trunc nuw nsw i64 %i.gs to i32          ; 2 uses
  %notmask.i.i86 = shl nsw i32 -1, %i.gt
  %12 = xor i32 %notmask.i.i86, -1
  %i.gu = zext nneg i32 %12 to i64
  %i.gv = and i64 %i.gu, %i.fs
  %i.gw = zext nneg i32 %i.gf to i64
  %i.gx = shl i64 %i.gv, %i.gw
  %i.gy = or i64 %i.es, %.sroa.0102.2157
  %i.gz = or i64 %i.gy, %i.fl
  %i.ha = or i64 %i.gz, %i.ge
  %i.hb = or i64 %i.ha, %i.gx                     ; 2 uses
  %i.hc = add nuw nsw i32 %i.gf, %i.gt            ; 2 uses
  %i.hd = lshr i64 %i.fs, %i.gs
  %i.he = sext i32 %.sroa.0.0.copyload.i78 to i64
  %i.hf = getelementptr [2 x i8], ptr %i.eg, i64 %i.hd
  %i.hg = getelementptr [2 x i8], ptr %i.hf, i64 %i.he
  %i.hh = load i16, ptr %i.hg, align 2, !tbaa !9
  %i.hi = zext i16 %i.hh to i64                   ; 2 uses
  %i.hj = lshr i32 %i.hc, 3
  %i.hk = zext nneg i32 %i.hj to i64              ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.82.2158, i64 %i.hk ; 2 uses
  %i.hm = icmp ugt ptr %i.hl, %i.d
  %i.hn = select i1 %.not40, i1 %i.hm, i1 false
  %.sroa.82.3 = select i1 %i.hn, ptr %i.d, ptr %i.hl ; 2 uses
  store i64 %i.hb, ptr %.sroa.82.2158, align 1, !tbaa !13
  %.pn = shl nuw nsw i64 %i.hk, 3
  %.sroa.0102.3 = lshr i64 %i.hb, %.pn            ; 2 uses
  %.sroa.47.3 = and i32 %i.hc, 7                  ; 2 uses
  %i.ho = icmp ugt ptr %i.gm, %2
  br i1 %i.ho, label %bb.m, label %._crit_edge, !llvm.loop !43

._crit_edge:                                      ; preds = %bb.m, %bb.l
  %.sroa.47.2.lcssa = phi i32 [ %.sroa.47.1, %bb.l ], [ %.sroa.47.3, %bb.m ] ; 2 uses
  %.sroa.0102.2.lcssa = phi i64 [ %.sroa.0102.1, %bb.l ], [ %.sroa.0102.3, %bb.m ]
  %.sroa.82.2.lcssa = phi ptr [ %.sroa.82.1, %bb.l ], [ %.sroa.82.3, %bb.m ] ; 2 uses
  %.sroa.091.2.lcssa = phi i64 [ %.sroa.091.1, %bb.l ], [ %i.hi, %bb.m ]
  %.sroa.0.2.lcssa = phi i64 [ %.sroa.0.1, %bb.l ], [ %i.gl, %bb.m ]
  %notmask.i.i88 = shl nsw i32 -1, %i.i
  %13 = xor i32 %notmask.i.i88, -1
  %i.hp = zext nneg i32 %13 to i64                ; 2 uses
  %i.hq = and i64 %.sroa.0.2.lcssa, %i.hp
  %i.hr = zext nneg i32 %.sroa.47.2.lcssa to i64
  %i.hs = shl nuw nsw i64 %i.hq, %i.hr
  %i.ht = or i64 %i.hs, %.sroa.0102.2.lcssa       ; 2 uses
  %i.hu = add nuw nsw i32 %.sroa.47.2.lcssa, %i.i ; 2 uses
  %i.hv = lshr i32 %i.hu, 3
  %i.hw = zext nneg i32 %i.hv to i64              ; 2 uses
  store i64 %i.ht, ptr %.sroa.82.2.lcssa, align 1, !tbaa !13
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.82.2.lcssa, i64 %i.hw ; 2 uses
  %i.hy = icmp ugt ptr %i.hx, %i.d
  %spec.store.select.i.i = select i1 %i.hy, ptr %i.d, ptr %i.hx ; 2 uses
  %i.hz = and i32 %i.hu, 7                        ; 2 uses
  %i.ia = shl nuw nsw i64 %i.hw, 3
  %i.ib = lshr i64 %i.ht, %i.ia
  %i.ic = and i64 %.sroa.091.2.lcssa, %i.hp
  %i.id = zext nneg i32 %i.hz to i64
  %i.ie = shl nuw nsw i64 %i.ic, %i.id
  %i.if = or i64 %i.ib, %i.ie                     ; 2 uses
  %i.ig = add nuw nsw i32 %i.hz, %i.i             ; 2 uses
  %i.ih = lshr i32 %i.ig, 3
  %i.ii = zext nneg i32 %i.ih to i64              ; 2 uses
  store i64 %i.if, ptr %spec.store.select.i.i, align 1, !tbaa !13
  %i.ij = getelementptr inbounds nuw i8, ptr %spec.store.select.i.i, i64 %i.ii ; 2 uses
  %i.ik = icmp ugt ptr %i.ij, %i.d
  %spec.store.select.i.i82 = select i1 %i.ik, ptr %i.d, ptr %i.ij ; 2 uses
  %i.il = and i32 %i.ig, 7                        ; 2 uses
  %i.im = shl nuw nsw i64 %i.ii, 3
  %i.in = lshr i64 %i.if, %i.im
  %i.io = zext nneg i32 %i.il to i64
  %i.ip = shl nuw nsw i64 1, %i.io
  %i.iq = or i64 %i.in, %i.ip
  %i.ir = add nuw nsw i32 %i.il, 1                ; 2 uses
  %i.is = lshr i32 %i.ir, 3
  %i.it = zext nneg i32 %i.is to i64
  store i64 %i.iq, ptr %spec.store.select.i.i82, align 1, !tbaa !13
  %i.iu = getelementptr inbounds nuw i8, ptr %spec.store.select.i.i82, i64 %i.it ; 2 uses
  %i.iv = icmp ugt ptr %i.iu, %i.d
  %spec.store.select.i.i83 = select i1 %i.iv, ptr %i.d, ptr %i.iu ; 2 uses
  %.not.i = icmp ult ptr %spec.store.select.i.i83, %i.d
  br i1 %.not.i, label %bb.n, label %BIT_closeCStream.exit

bb.n:                                             ; preds = %._crit_edge
  %i.iw = and i32 %i.ir, 7
  %i.ix = ptrtoint ptr %spec.store.select.i.i83 to i64
  %i.iy = ptrtoint ptr %0 to i64
  %i.iz = icmp ne i32 %i.iw, 0
  %i.ja = zext i1 %i.iz to i64
  %i.jb = sub i64 %i.ja, %i.iy
  %i.jc = add i64 %i.jb, %i.ix
  br label %BIT_closeCStream.exit

BIT_closeCStream.exit:                            ; preds = %bb.n, %._crit_edge, %bb.a, %bb.b
  %.134 = phi i64 [ 0, %bb.b ], [ 0, %bb.a ], [ %i.jc, %bb.n ], [ 0, %._crit_edge ]
  ret i64 %.134
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @FSE_compressBound(i64 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i64 %0, 7
  %i.b = add i64 %0, 524
  %i.c = add i64 %i.b, %i.a
  ret i64 %i.c
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"short", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!4, !4, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"long", !4, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"", !5, i64 0, !5, i64 4}
!15 = !{!14, !5, i64 4}
!16 = !{!14, !5, i64 0}
!17 = !{!5, !5, i64 0}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11, !28, !29}
!20 = distinct !{!20, !11, !29, !28}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !11}
!26 = distinct !{!26, !11}
!27 = distinct !{!27, !11}
!28 = !{!"llvm.loop.isvectorized", i32 1}
!29 = !{!"llvm.loop.unroll.runtime.disable"}
!30 = distinct !{!30, !11}
!31 = distinct !{!31, !11}
!32 = distinct !{!32, !11}
!33 = distinct !{!33, !11}
!34 = distinct !{!34, !11}
!35 = distinct !{!35, !11}
!36 = distinct !{!36, !11}
!37 = distinct !{!37, !11}
!38 = distinct !{!38, !11}
!39 = distinct !{!39, !42}
!40 = distinct !{!40, !11}
!41 = distinct !{!41, !11}
!42 = !{!"llvm.loop.unroll.disable"}
!43 = distinct !{!43, !11}
end_hunk_1
