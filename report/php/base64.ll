Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/base64?download=true
inline.NumInlined: 16
inline.NumDeleted: 11
begin_hunk_0_@php_base64_decode_ex_avx512:zend_string_alloc.exit
  store i8 %i.bp, ptr %i.bm, align 1, !tbaa !16
  %i.bq = shl i8 %i.bc, 6
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bl
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !16
  br label %.outer.us

bb.g:                                             ; preds = %bb.d
  %i.bs = lshr i16 %i.ax, 4
  %i.bt = add i64 %.0.i.ph138.us, 1               ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 %.0.i.ph138.us ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !16
  %i.bw = trunc i16 %i.bs to i8
  %i.bx = or i8 %i.bv, %i.bw
  store i8 %i.bx, ptr %i.bu, align 1, !tbaa !16
  %i.by = shl i8 %i.bc, 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bt
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !16
  br label %.outer.us

bb.h:                                             ; preds = %bb.d
  %i.ca = shl i8 %i.bc, 2
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 %.0.i.ph138.us
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !16
  br label %.outer.us

.outer.us:                                        ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.1.i.us = phi i64 [ %.0.i.ph138.us, %bb.h ], [ %i.bt, %bb.g ], [ %i.bl, %bb.f ], [ %i.bg, %bb.e ] ; 2 uses
  %i.cc = add i64 %.046.i.ph136.us, 1             ; 2 uses
  %i.cd = add i64 %i.ar, -1
  %.not.i94114.us = icmp eq i64 %i.ar, 0
  br i1 %.not.i94114.us, label %.outer61._crit_edge, label %.lr.ph96.lr.ph.us, !llvm.loop !0

.unreachabledefault:                              ; preds = %bb.d
  unreachable

default.unreachable:                              ; preds = %.loopexit60
  unreachable

.lr.ph96.lr.ph:                                   ; preds = %.lr.ph96.lr.ph.lr.ph, %.outer
  %i.ce = phi i64 [ %i.dq, %.outer ], [ %i.ao, %.lr.ph96.lr.ph.lr.ph ]
  %.0.i.ph138 = phi i64 [ %.1.i, %.outer ], [ %.049.lcssa207, %.lr.ph96.lr.ph.lr.ph ] ; 10 uses
  %.045.i.ph137 = phi i64 [ %.045.i.ph64116, %.outer ], [ 0, %.lr.ph96.lr.ph.lr.ph ]
  %.046.i.ph136 = phi i64 [ %i.dp, %.outer ], [ 0, %.lr.ph96.lr.ph.lr.ph ] ; 4 uses
  %.048.i.ph135 = phi ptr [ %i.ch, %.outer ], [ %.040.lcssa208, %.lr.ph96.lr.ph.lr.ph ]
  br label %.lr.ph96

.lr.ph96:                                         ; preds = %.lr.ph96.lr.ph, %.split
  %i.cf = phi i64 [ %i.ce, %.lr.ph96.lr.ph ], [ %i.cl, %.split ]
  %.045.i.ph64116 = phi i64 [ %.045.i.ph137, %.lr.ph96.lr.ph ], [ %i.ck, %.split ] ; 4 uses
  %.048.i.ph63115 = phi ptr [ %.048.i.ph135, %.lr.ph96.lr.ph ], [ %i.ch, %.split ]
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph96, %.backedge
  %i.cg = phi i64 [ %i.cf, %.lr.ph96 ], [ %i.cq, %.backedge ] ; 6 uses
  %.048.i95 = phi ptr [ %.048.i.ph63115, %.lr.ph96 ], [ %i.ch, %.backedge ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.048.i95, i64 1 ; 3 uses
  %i.ci = load i8, ptr %.048.i95, align 1, !tbaa !16 ; 2 uses
  %i.cj = icmp eq i8 %i.ci, 61
  br i1 %i.cj, label %.split, label %bb.j

.split:                                           ; preds = %bb.i
  %i.ck = add i64 %.045.i.ph64116, 1              ; 2 uses
  %i.cl = add i64 %i.cg, -1
  %.not.i94 = icmp eq i64 %i.cg, 0
  br i1 %.not.i94, label %.outer61._crit_edge, label %.lr.ph96, !llvm.loop !0

bb.j:                                             ; preds = %bb.i
  %i.cm = zext i8 %i.ci to i64
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr @base64_reverse_table, i64 %i.cm
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !26 ; 4 uses
  %i.cp = icmp slt i16 %i.co, 0
  br i1 %i.cp, label %.backedge, label %.loopexit60

.backedge:                                        ; preds = %bb.j
  %i.cq = add i64 %i.cg, -1
  %.not.i = icmp eq i64 %i.cg, 0
  br i1 %.not.i, label %.outer61._crit_edge, label %bb.i, !llvm.loop !0

.loopexit60:                                      ; preds = %bb.j
  %i.cr = trunc i16 %i.co to i8                   ; 4 uses
  %i.cs = and i64 %.046.i.ph136, 3
  switch i64 %i.cs, label %default.unreachable [
    i64 0, label %bb.k
    i64 1, label %bb.l
    i64 2, label %bb.m
    i64 3, label %bb.n
  ]

bb.k:                                             ; preds = %.loopexit60
  %i.ct = shl i8 %i.cr, 2
  %i.cu = getelementptr inbounds nuw i8, ptr %i.g, i64 %.0.i.ph138
  store i8 %i.ct, ptr %i.cu, align 1, !tbaa !16
  br label %.outer

bb.l:                                             ; preds = %.loopexit60
  %i.cv = lshr i16 %i.co, 4
  %i.cw = add i64 %.0.i.ph138, 1                  ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.g, i64 %.0.i.ph138 ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !16
  %i.cz = trunc i16 %i.cv to i8
  %i.da = or i8 %i.cy, %i.cz
  store i8 %i.da, ptr %i.cx, align 1, !tbaa !16
  %i.db = shl i8 %i.cr, 4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.cw
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !16
  br label %.outer

bb.m:                                             ; preds = %.loopexit60
  %i.dd = lshr i16 %i.co, 2
  %i.de = add i64 %.0.i.ph138, 1                  ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.g, i64 %.0.i.ph138 ; 2 uses
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !16
  %i.dh = trunc i16 %i.dd to i8
  %i.di = or i8 %i.dg, %i.dh
  store i8 %i.di, ptr %i.df, align 1, !tbaa !16
  %i.dj = shl i8 %i.cr, 6
  %i.dk = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.de
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !16
  br label %.outer

bb.n:                                             ; preds = %.loopexit60
  %i.dl = add i64 %.0.i.ph138, 1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.g, i64 %.0.i.ph138 ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !16
  %i.do = or i8 %i.dn, %i.cr
  store i8 %i.do, ptr %i.dm, align 1, !tbaa !16
  br label %.outer

.outer:                                           ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %.1.i = phi i64 [ %.0.i.ph138, %bb.k ], [ %i.cw, %bb.l ], [ %i.de, %bb.m ], [ %i.dl, %bb.n ] ; 2 uses
  %i.dp = add i64 %.046.i.ph136, 1                ; 2 uses
  %i.dq = add i64 %i.cg, -1
  %.not.i94114 = icmp eq i64 %i.cg, 0
  br i1 %.not.i94114, label %.outer61._crit_edge, label %.lr.ph96.lr.ph, !llvm.loop !0

.outer61._crit_edge:                              ; preds = %.outer, %.split, %.backedge, %.outer.us, %.split.us.us.us, %.backedge.us.us.us
  %.046.i.ph.lcssa82 = phi i64 [ %.046.i.ph136.us, %.split.us.us.us ], [ %i.cc, %.outer.us ], [ %.046.i.ph136, %.split ], [ %.046.i.ph136.us, %.backedge.us.us.us ], [ %.046.i.ph136, %.backedge ], [ %i.dp, %.outer ] ; 2 uses
  %.0.i.ph.lcssa80 = phi i64 [ %.0.i.ph138.us, %.split.us.us.us ], [ %.1.i.us, %.outer.us ], [ %.0.i.ph138, %.split ], [ %.0.i.ph138.us, %.backedge.us.us.us ], [ %.0.i.ph138, %.backedge ], [ %.1.i, %.outer ] ; 2 uses
  %.045.i.ph64.lcssa77 = phi i64 [ %i.ba, %.split.us.us.us ], [ 0, %.outer.us ], [ %i.ck, %.split ], [ %.045.i.ph64116.us.us, %.backedge.us.us.us ], [ %.045.i.ph64116, %.backedge ], [ %.045.i.ph64116, %.outer ] ; 3 uses
  %i.dr = and i64 %.046.i.ph.lcssa82, 3
  %i.ds = icmp eq i64 %i.dr, 1
  %or.cond55.i = select i1 %2, i1 %i.ds, i1 false
  br i1 %or.cond55.i, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %.outer61._crit_edge
  %i.dt = icmp ne i64 %.045.i.ph64.lcssa77, 0
  %or.cond3.i = select i1 %2, i1 %i.dt, i1 false
  br i1 %or.cond3.i, label %bb.p, label %.thread217

bb.p:                                             ; preds = %bb.o
  %i.du = icmp ugt i64 %.045.i.ph64.lcssa77, 2
  br i1 %i.du, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dv = add i64 %.045.i.ph64.lcssa77, %.046.i.ph.lcssa82
  %i.dw = and i64 %i.dv, 3
  %.not52.i = icmp eq i64 %i.dw, 0
  br i1 %.not52.i, label %.thread217, label %.loopexit

.loopexit:                                        ; preds = %.split105.us.split.us.us, %.outer61._crit_edge, %bb.p, %bb.q
  tail call void @_efree(ptr noundef nonnull %i.c) #11
  br label %bb.r

.thread217:                                       ; preds = %.thread, %bb.q, %bb.o
  %.0.i.ph.lcssa80215222 = phi i64 [ %.0.i.ph.lcssa80, %bb.o ], [ %.0.i.ph.lcssa80, %bb.q ], [ %.049.lcssa, %.thread ] ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.g, i64 %.0.i.ph.lcssa80215222
  store i8 0, ptr %i.dx, align 1, !tbaa !16
  store i64 %.0.i.ph.lcssa80215222, ptr %i.f, align 8, !tbaa !20
  br label %bb.r

bb.r:                                             ; preds = %.thread217, %.loopexit
  %.0 = phi ptr [ %i.c, %.thread217 ], [ null, %.loopexit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @php_base64_encode_avx2(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) #4 {
bb.a:
  %i.a = add i64 %1, 2
  %i.b = udiv i64 %i.a, 3                         ; 2 uses
  %i.c = tail call noalias ptr @_safe_emalloc(i64 noundef range(i64 0, 6148914691236517206) %i.b, i64 noundef 4, i64 noundef 32) #11 ; 7 uses
  store i32 1, ptr %i.c, align 4, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 22, ptr %i.d, align 4, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !19
  %i.f = shl i64 %i.b, 2
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 %i.f, ptr %i.g, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 4 uses
  %i.i = icmp ugt i64 %1, 31
  br i1 %i.i, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.j = load <8 x i32>, ptr %0, align 1, !tbaa !16
  %i.k = shufflevector <8 x i32> %i.j, <8 x i32> poison, <8 x i32> <i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison>
  %i.l = bitcast <8 x i32> %i.k to <32 x i8>
  %i.m = shufflevector <32 x i8> %i.l, <32 x i8> poison, <32 x i32> <i32 5, i32 4, i32 6, i32 5, i32 8, i32 7, i32 9, i32 8, i32 11, i32 10, i32 12, i32 11, i32 14, i32 13, i32 15, i32 14, i32 17, i32 16, i32 18, i32 17, i32 20, i32 19, i32 21, i32 20, i32 23, i32 22, i32 24, i32 23, i32 26, i32 25, i32 27, i32 26> ; 2 uses
  %i.n = bitcast <32 x i8> %i.m to <16 x i16>
  %i.o = and <16 x i16> %i.n, <i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032>
  %3 = call <16 x i16> @llvm.umulh.v16i16(<16 x i16> %i.o, <16 x i16> <i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024>)
  %i.p = bitcast <32 x i8> %i.m to <16 x i16>
  %i.q = and <16 x i16> %i.p, <i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63>
  %i.r = shl <16 x i16> %i.q, <i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8>
  %i.s = or <16 x i16> %i.r, %3
  %i.t = bitcast <16 x i16> %i.s to <32 x i8>     ; 3 uses
  %i.u = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.t, <32 x i8> splat (i8 51))
  %i.v = icmp sgt <32 x i8> %i.t, splat (i8 25)
  %.neg.i33 = zext <32 x i1> %i.v to <32 x i8>
  %i.w = add nuw <32 x i8> %i.u, %.neg.i33
  %i.x = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 65, i8 71, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -19, i8 -16, i8 0, i8 0, i8 65, i8 71, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -19, i8 -16, i8 0, i8 0>, <32 x i8> %i.w)
  %i.y = add <32 x i8> %i.x, %i.t
  store <32 x i8> %i.y, ptr %i.h, align 8, !tbaa !16
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  %i.ab = add i64 %1, -24                         ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 28
  br i1 %i.ac, label %iter.check, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %i.ad = phi i64 [ %i.ax, %.lr.ph ], [ %i.ab, %bb.b ]
  %i.ae = phi ptr [ %i.aw, %.lr.ph ], [ %i.aa, %bb.b ] ; 2 uses
  %i.af = phi ptr [ %i.av, %.lr.ph ], [ %i.z, %bb.b ] ; 2 uses
  %.02334 = phi ptr [ %i.af, %.lr.ph ], [ %0, %bb.b ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.02334, i64 20
  %i.ah = load <32 x i8>, ptr %i.ag, align 1, !tbaa !16
  %i.ai = shufflevector <32 x i8> %i.ah, <32 x i8> poison, <32 x i32> <i32 5, i32 4, i32 6, i32 5, i32 8, i32 7, i32 9, i32 8, i32 11, i32 10, i32 12, i32 11, i32 14, i32 13, i32 15, i32 14, i32 17, i32 16, i32 18, i32 17, i32 20, i32 19, i32 21, i32 20, i32 23, i32 22, i32 24, i32 23, i32 26, i32 25, i32 27, i32 26> ; 2 uses
  %i.aj = bitcast <32 x i8> %i.ai to <16 x i16>
  %i.ak = and <16 x i16> %i.aj, <i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032>
  %4 = call <16 x i16> @llvm.umulh.v16i16(<16 x i16> %i.ak, <16 x i16> <i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024>)
  %i.al = bitcast <32 x i8> %i.ai to <16 x i16>
  %i.am = and <16 x i16> %i.al, <i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63>
  %i.an = shl <16 x i16> %i.am, <i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8>
  %i.ao = or <16 x i16> %i.an, %4
  %i.ap = bitcast <16 x i16> %i.ao to <32 x i8>   ; 3 uses
  %i.aq = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.ap, <32 x i8> splat (i8 51))
  %i.ar = icmp sgt <32 x i8> %i.ap, splat (i8 25)
  %.neg.i = zext <32 x i1> %i.ar to <32 x i8>
  %i.as = add nuw <32 x i8> %i.aq, %.neg.i
  %i.at = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 65, i8 71, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -19, i8 -16, i8 0, i8 0, i8 65, i8 71, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -19, i8 -16, i8 0, i8 0>, <32 x i8> %i.as)
  %i.au = add <32 x i8> %i.at, %i.ap
  store <32 x i8> %i.au, ptr %i.ae, align 1, !tbaa !16
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 2 uses
  %i.ax = add i64 %i.ad, -24                      ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 28
  br i1 %i.ay, label %iter.check, label %.lr.ph

.loopexit:                                        ; preds = %bb.a
  %i.az = icmp samesign ugt i64 %1, 2
  br i1 %i.az, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.lr.ph, %bb.b, %.loopexit
  %.159 = phi ptr [ %i.h, %.loopexit ], [ %i.aa, %bb.b ], [ %i.aw, %.lr.ph ] ; 8 uses
  %.12458 = phi ptr [ %0, %.loopexit ], [ %i.z, %bb.b ], [ %i.av, %.lr.ph ] ; 54 uses
  %.12657 = phi i64 [ %1, %.loopexit ], [ %i.ab, %bb.b ], [ %i.ax, %.lr.ph ] ; 8 uses
  %i.ba = sub nsw i64 2, %.12657
  %i.bb = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 -3)
  %i.bc = add nsw i64 %i.bb, %.12657              ; 3 uses
  %i.bd = udiv i64 %i.bc, 3
  %i.be = add nuw nsw i64 %i.bd, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.bc, 45
  br i1 %min.iters.check, label %.lr.ph40.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bf = sub nsw i64 2, %.12657
  %i.bg = tail call i64 @llvm.umax.i64(i64 %i.bf, i64 -3)
  %i.bh = add nsw i64 %i.bg, %.12657
  %i.bi = udiv i64 %i.bh, 3                       ; 2 uses
  %i.bj = shl i64 %i.bi, 2
  %i.bk = getelementptr i8, ptr %.159, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 4
  %i.bm = mul nuw i64 %i.bi, 3
  %i.bn = getelementptr i8, ptr %.12458, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.bn, i64 3
  %bound0 = icmp ult ptr %.159, %i.bo
  %bound1 = icmp ult ptr %.12458, %i.bl
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph40.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check71 = icmp ult i64 %i.bc, 93
  br i1 %min.iters.check71, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bp = and i64 %i.be, 16
  %n.vec = and i64 %i.be, 9223372036854775776     ; 6 uses
  %i.bq = mul i64 %n.vec, 3
  %i.br = getelementptr i8, ptr %.12458, i64 %i.bq ; 2 uses
  %i.bs = shl i64 %n.vec, 2
  %i.bt = getelementptr i8, ptr %.159, i64 %i.bs  ; 2 uses
  %i.bu = mul i64 %n.vec, -3
  %i.bv = or disjoint i64 %.12657, %i.bu          ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bw = mul i64 %index, 3                       ; 32 uses
  %next.gep = getelementptr i8, ptr %.12458, i64 %i.bw ; 3 uses
  %i.bx = getelementptr i8, ptr %.12458, i64 %i.bw ; 3 uses
  %next.gep72 = getelementptr i8, ptr %i.bx, i64 3
  %i.by = getelementptr i8, ptr %.12458, i64 %i.bw ; 3 uses
  %next.gep73 = getelementptr i8, ptr %i.by, i64 6
  %i.bz = getelementptr i8, ptr %.12458, i64 %i.bw ; 3 uses
  %next.gep74 = getelementptr i8, ptr %i.bz, i64 9
  %i.ca = getelementptr i8, ptr %.12458, i64 %i.bw ; 3 uses
  %next.gep75 = getelementptr i8, ptr %i.ca, i64 12
  %i.cb = getelementptr i8, ptr %.12458, i64 %i.bw ; 3 uses
  %next.gep76 = getelementptr i8, ptr %i.cb, i64 15
  %i.cc = getelementptr i8, ptr %.12458, i64 %i.bw ; 3 uses
  %next.gep77 = getelementptr i8, ptr %i.cc, i64 18
  %i.cd = getelementptr i8, ptr %.12458, i64 %i.bw ; 3 uses
  %next.gep78 = getelementptr i8, ptr %i.cd, i64 21
  %i.ce = getelementptr i8, ptr %.12458, i64 %i.bw ; 3 uses
  %next.gep79 = getelementptr i8, ptr %i.ce, i64 24
  %i.cf = getelementptr i8, ptr %.12458, i64 %i.bw ; 3 uses
  %next.gep80 = getelementptr i8, ptr %i.cf, i64 27
  %i.cg = getelementptr i8, ptr %.12458, i64 %i.bw ; 3 uses
  %next.gep81 = getelementptr i8, ptr %i.cg, i64 30
  %i.ch = getelementptr i8, ptr %.12458, i64 %i.bw ; 3 uses
  %next.gep82 = getelementptr i8, ptr %i.ch, i64 33
  %i.ci = getelementptr i8, ptr %.12458, i64 %i.bw ; 3 uses
  %next.gep83 = getelementptr i8, ptr %i.ci, i64 36
  %i.cj = getelementptr i8, ptr %.12458, i64 %i.bw ; 3 uses
  %next.gep84 = getelementptr i8, ptr %i.cj, i64 39
  %i.ck = getelementptr i8, ptr %.12458, i64 %i.bw ; 3 uses
  %next.gep85 = getelementptr i8, ptr %i.ck, i64 42
  %i.cl = getelementptr i8, ptr %.12458, i64 %i.bw ; 3 uses
  %next.gep86 = getelementptr i8, ptr %i.cl, i64 45
  %i.cm = getelementptr i8, ptr %.12458, i64 %i.bw ; 3 uses
  %next.gep87 = getelementptr i8, ptr %i.cm, i64 48
  %i.cn = getelementptr i8, ptr %.12458, i64 %i.bw ; 3 uses
  %next.gep88 = getelementptr i8, ptr %i.cn, i64 51
  %i.co = getelementptr i8, ptr %.12458, i64 %i.bw ; 3 uses
  %next.gep89 = getelementptr i8, ptr %i.co, i64 54
  %i.cp = getelementptr i8, ptr %.12458, i64 %i.bw ; 3 uses
  %next.gep90 = getelementptr i8, ptr %i.cp, i64 57
  %i.cq = getelementptr i8, ptr %.12458, i64 %i.bw ; 3 uses
  %next.gep91 = getelementptr i8, ptr %i.cq, i64 60
  %i.cr = getelementptr i8, ptr %.12458, i64 %i.bw ; 3 uses
  %next.gep92 = getelementptr i8, ptr %i.cr, i64 63
  %i.cs = getelementptr i8, ptr %.12458, i64 %i.bw ; 3 uses
  %next.gep93 = getelementptr i8, ptr %i.cs, i64 66
  %i.ct = getelementptr i8, ptr %.12458, i64 %i.bw ; 3 uses
  %next.gep94 = getelementptr i8, ptr %i.ct, i64 69
  %i.cu = getelementptr i8, ptr %.12458, i64 %i.bw ; 3 uses
  %next.gep95 = getelementptr i8, ptr %i.cu, i64 72
  %i.cv = getelementptr i8, ptr %.12458, i64 %i.bw ; 3 uses
  %next.gep96 = getelementptr i8, ptr %i.cv, i64 75
  %i.cw = getelementptr i8, ptr %.12458, i64 %i.bw ; 3 uses
  %next.gep97 = getelementptr i8, ptr %i.cw, i64 78
  %i.cx = getelementptr i8, ptr %.12458, i64 %i.bw ; 3 uses
  %next.gep98 = getelementptr i8, ptr %i.cx, i64 81
  %i.cy = getelementptr i8, ptr %.12458, i64 %i.bw ; 3 uses
  %next.gep99 = getelementptr i8, ptr %i.cy, i64 84
  %i.cz = getelementptr i8, ptr %.12458, i64 %i.bw ; 3 uses
  %next.gep100 = getelementptr i8, ptr %i.cz, i64 87
  %i.da = getelementptr i8, ptr %.12458, i64 %i.bw ; 3 uses
  %next.gep101 = getelementptr i8, ptr %i.da, i64 90
  %i.db = getelementptr i8, ptr %.12458, i64 %i.bw ; 3 uses
  %next.gep102 = getelementptr i8, ptr %i.db, i64 93
  %i.dc = shl i64 %index, 2
  %next.gep103 = getelementptr i8, ptr %.159, i64 %i.dc
  %i.dd = load i8, ptr %next.gep, align 1, !tbaa !16, !alias.scope !52 ; 2 uses
  %i.de = load i8, ptr %next.gep72, align 1, !tbaa !16, !alias.scope !52 ; 2 uses
  %i.df = load i8, ptr %next.gep73, align 1, !tbaa !16, !alias.scope !52 ; 2 uses
  %i.dg = load i8, ptr %next.gep74, align 1, !tbaa !16, !alias.scope !52 ; 2 uses
  %i.dh = load i8, ptr %next.gep75, align 1, !tbaa !16, !alias.scope !52 ; 2 uses
  %i.di = load i8, ptr %next.gep76, align 1, !tbaa !16, !alias.scope !52 ; 2 uses
  %i.dj = load i8, ptr %next.gep77, align 1, !tbaa !16, !alias.scope !52 ; 2 uses
  %i.dk = load i8, ptr %next.gep78, align 1, !tbaa !16, !alias.scope !52 ; 2 uses
  %i.dl = load i8, ptr %next.gep79, align 1, !tbaa !16, !alias.scope !52 ; 2 uses
  %i.dm = load i8, ptr %next.gep80, align 1, !tbaa !16, !alias.scope !52 ; 2 uses
  %i.dn = load i8, ptr %next.gep81, align 1, !tbaa !16, !alias.scope !52 ; 2 uses
  %i.do = load i8, ptr %next.gep82, align 1, !tbaa !16, !alias.scope !52 ; 2 uses
  %i.dp = load i8, ptr %next.gep83, align 1, !tbaa !16, !alias.scope !52 ; 2 uses
  %i.dq = load i8, ptr %next.gep84, align 1, !tbaa !16, !alias.scope !52 ; 2 uses
  %i.dr = load i8, ptr %next.gep85, align 1, !tbaa !16, !alias.scope !52 ; 2 uses
  %i.ds = load i8, ptr %next.gep86, align 1, !tbaa !16, !alias.scope !52 ; 2 uses
  %i.dt = load i8, ptr %next.gep87, align 1, !tbaa !16, !alias.scope !52 ; 2 uses
  %i.du = load i8, ptr %next.gep88, align 1, !tbaa !16, !alias.scope !52 ; 2 uses
  %i.dv = load i8, ptr %next.gep89, align 1, !tbaa !16, !alias.scope !52 ; 2 uses
  %i.dw = load i8, ptr %next.gep90, align 1, !tbaa !16, !alias.scope !52 ; 2 uses
  %i.dx = load i8, ptr %next.gep91, align 1, !tbaa !16, !alias.scope !52 ; 2 uses
  %i.dy = load i8, ptr %next.gep92, align 1, !tbaa !16, !alias.scope !52 ; 2 uses
  %i.dz = load i8, ptr %next.gep93, align 1, !tbaa !16, !alias.scope !52 ; 2 uses
  %i.ea = load i8, ptr %next.gep94, align 1, !tbaa !16, !alias.scope !52 ; 2 uses
  %i.eb = load i8, ptr %next.gep95, align 1, !tbaa !16, !alias.scope !52 ; 2 uses
  %i.ec = load i8, ptr %next.gep96, align 1, !tbaa !16, !alias.scope !52 ; 2 uses
  %i.ed = load i8, ptr %next.gep97, align 1, !tbaa !16, !alias.scope !52 ; 2 uses
  %i.ee = load i8, ptr %next.gep98, align 1, !tbaa !16, !alias.scope !52 ; 2 uses
  %i.ef = load i8, ptr %next.gep99, align 1, !tbaa !16, !alias.scope !52 ; 2 uses
  %i.eg = load i8, ptr %next.gep100, align 1, !tbaa !16, !alias.scope !52 ; 2 uses
  %i.eh = load i8, ptr %next.gep101, align 1, !tbaa !16, !alias.scope !52 ; 2 uses
  %i.ei = load i8, ptr %next.gep102, align 1, !tbaa !16, !alias.scope !52 ; 2 uses
  %i.ej = lshr i8 %i.dd, 2
  %i.ek = lshr i8 %i.de, 2
  %i.el = lshr i8 %i.df, 2
  %i.em = lshr i8 %i.dg, 2
  %i.en = lshr i8 %i.dh, 2
  %i.eo = lshr i8 %i.di, 2
  %i.ep = lshr i8 %i.dj, 2
  %i.eq = lshr i8 %i.dk, 2
  %i.er = lshr i8 %i.dl, 2
  %i.es = lshr i8 %i.dm, 2
  %i.et = lshr i8 %i.dn, 2
  %i.eu = lshr i8 %i.do, 2
  %i.ev = lshr i8 %i.dp, 2
  %i.ew = lshr i8 %i.dq, 2
  %i.ex = lshr i8 %i.dr, 2
  %i.ey = lshr i8 %i.ds, 2
  %i.ez = lshr i8 %i.dt, 2
  %i.fa = lshr i8 %i.du, 2
  %i.fb = lshr i8 %i.dv, 2
  %i.fc = lshr i8 %i.dw, 2
  %i.fd = lshr i8 %i.dx, 2
  %i.fe = lshr i8 %i.dy, 2
  %i.ff = lshr i8 %i.dz, 2
  %i.fg = lshr i8 %i.ea, 2
  %i.fh = lshr i8 %i.eb, 2
  %i.fi = lshr i8 %i.ec, 2
  %i.fj = lshr i8 %i.ed, 2
  %i.fk = lshr i8 %i.ee, 2
  %i.fl = lshr i8 %i.ef, 2
  %i.fm = lshr i8 %i.eg, 2
  %i.fn = lshr i8 %i.eh, 2
  %i.fo = lshr i8 %i.ei, 2
  %i.fp = zext nneg i8 %i.ej to i64
  %i.fq = zext nneg i8 %i.ek to i64
  %i.fr = zext nneg i8 %i.el to i64
  %i.fs = zext nneg i8 %i.em to i64
  %i.ft = zext nneg i8 %i.en to i64
  %i.fu = zext nneg i8 %i.eo to i64
  %i.fv = zext nneg i8 %i.ep to i64
end_hunk_0
begin_hunk_1_@php_base64_encode_avx2:bb.a
  %i.bia = getelementptr inbounds nuw i8, ptr @base64_table, i64 %i.bhk
  %i.bib = getelementptr inbounds nuw i8, ptr @base64_table, i64 %i.bhl
  %i.bic = getelementptr inbounds nuw i8, ptr @base64_table, i64 %i.bhm
  %i.bid = load i8, ptr %i.bhn, align 1, !tbaa !16
  %i.bie = load i8, ptr %i.bho, align 1, !tbaa !16
  %i.bif = load i8, ptr %i.bhp, align 1, !tbaa !16
  %i.big = load i8, ptr %i.bhq, align 1, !tbaa !16
  %i.bih = load i8, ptr %i.bhr, align 1, !tbaa !16
  %i.bii = load i8, ptr %i.bhs, align 1, !tbaa !16
  %i.bij = load i8, ptr %i.bht, align 1, !tbaa !16
  %i.bik = load i8, ptr %i.bhu, align 1, !tbaa !16
  %i.bil = load i8, ptr %i.bhv, align 1, !tbaa !16
  %i.bim = load i8, ptr %i.bhw, align 1, !tbaa !16
  %i.bin = load i8, ptr %i.bhx, align 1, !tbaa !16
  %i.bio = load i8, ptr %i.bhy, align 1, !tbaa !16
  %i.bip = load i8, ptr %i.bhz, align 1, !tbaa !16
  %i.biq = load i8, ptr %i.bia, align 1, !tbaa !16
  %i.bir = load i8, ptr %i.bib, align 1, !tbaa !16
  %i.bis = load i8, ptr %i.bic, align 1, !tbaa !16
  %i.bit = insertelement <16 x i8> poison, i8 %i.bid, i64 0
  %i.biu = insertelement <16 x i8> %i.bit, i8 %i.bie, i64 1
  %i.biv = insertelement <16 x i8> %i.biu, i8 %i.bif, i64 2
  %i.biw = insertelement <16 x i8> %i.biv, i8 %i.big, i64 3
  %i.bix = insertelement <16 x i8> %i.biw, i8 %i.bih, i64 4
  %i.biy = insertelement <16 x i8> %i.bix, i8 %i.bii, i64 5
  %i.biz = insertelement <16 x i8> %i.biy, i8 %i.bij, i64 6
  %i.bja = insertelement <16 x i8> %i.biz, i8 %i.bik, i64 7
  %i.bjb = insertelement <16 x i8> %i.bja, i8 %i.bil, i64 8
  %i.bjc = insertelement <16 x i8> %i.bjb, i8 %i.bim, i64 9
  %i.bjd = insertelement <16 x i8> %i.bjc, i8 %i.bin, i64 10
  %i.bje = insertelement <16 x i8> %i.bjd, i8 %i.bio, i64 11
  %i.bjf = insertelement <16 x i8> %i.bje, i8 %i.bip, i64 12
  %i.bjg = insertelement <16 x i8> %i.bjf, i8 %i.biq, i64 13
  %i.bjh = insertelement <16 x i8> %i.bjg, i8 %i.bir, i64 14
  %i.bji = insertelement <16 x i8> %i.bjh, i8 %i.bis, i64 15
  %i.bjj = shufflevector <16 x i8> %i.aty, <16 x i8> %i.bac, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bjk = shufflevector <16 x i8> %i.bgg, <16 x i8> %i.bji, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec125 = shufflevector <32 x i8> %i.bjj, <32 x i8> %i.bjk, <64 x i32> <i32 0, i32 16, i32 32, i32 48, i32 1, i32 17, i32 33, i32 49, i32 2, i32 18, i32 34, i32 50, i32 3, i32 19, i32 35, i32 51, i32 4, i32 20, i32 36, i32 52, i32 5, i32 21, i32 37, i32 53, i32 6, i32 22, i32 38, i32 54, i32 7, i32 23, i32 39, i32 55, i32 8, i32 24, i32 40, i32 56, i32 9, i32 25, i32 41, i32 57, i32 10, i32 26, i32 42, i32 58, i32 11, i32 27, i32 43, i32 59, i32 12, i32 28, i32 44, i32 60, i32 13, i32 29, i32 45, i32 61, i32 14, i32 30, i32 46, i32 62, i32 15, i32 31, i32 47, i32 63>
  store <64 x i8> %interleaved.vec125, ptr %next.gep124, align 1, !tbaa !16, !alias.scope !53, !noalias !52
  %index.next126 = add nuw i64 %index107, 16      ; 2 uses
  %i.bjl = icmp eq i64 %index.next126, %n.vec106
  br i1 %i.bjl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !50

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n127 = icmp eq i64 %i.be, %n.vec106
  br i1 %cmp.n127, label %._crit_edge, label %.lr.ph40.preheader

.lr.ph40.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0.i39.ph = phi ptr [ %.12458, %iter.check ], [ %.12458, %vector.memcheck ], [ %i.br, %vec.epilog.iter.check ], [ %i.apl, %vec.epilog.middle.block ]
  %.030.i38.ph = phi ptr [ %.159, %iter.check ], [ %.159, %vector.memcheck ], [ %i.bt, %vec.epilog.iter.check ], [ %i.apn, %vec.epilog.middle.block ]
  %.031.i37.ph = phi i64 [ %.12657, %iter.check ], [ %.12657, %vector.memcheck ], [ %i.bv, %vec.epilog.iter.check ], [ %i.app, %vec.epilog.middle.block ]
  br label %.lr.ph40

.lr.ph40:                                         ; preds = %.lr.ph40.preheader, %.lr.ph40
  %.0.i39 = phi ptr [ %i.bkr, %.lr.ph40 ], [ %.0.i39.ph, %.lr.ph40.preheader ] ; 4 uses
  %.030.i38 = phi ptr [ %i.bkq, %.lr.ph40 ], [ %.030.i38.ph, %.lr.ph40.preheader ] ; 5 uses
  %.031.i37 = phi i64 [ %i.bks, %.lr.ph40 ], [ %.031.i37.ph, %.lr.ph40.preheader ]
  %i.bjm = load i8, ptr %.0.i39, align 1, !tbaa !16 ; 2 uses
  %i.bjn = lshr i8 %i.bjm, 2
  %i.bjo = zext nneg i8 %i.bjn to i64
  %i.bjp = getelementptr inbounds nuw i8, ptr @base64_table, i64 %i.bjo
  %i.bjq = load i8, ptr %i.bjp, align 1, !tbaa !16
  %i.bjr = getelementptr inbounds nuw i8, ptr %.030.i38, i64 1
  store i8 %i.bjq, ptr %.030.i38, align 1, !tbaa !16
  %i.bjs = shl i8 %i.bjm, 4
  %i.bjt = and i8 %i.bjs, 48
  %i.bju = getelementptr inbounds nuw i8, ptr %.0.i39, i64 1
  %i.bjv = load i8, ptr %i.bju, align 1, !tbaa !16 ; 2 uses
  %i.bjw = lshr i8 %i.bjv, 4
  %i.bjx = or disjoint i8 %i.bjw, %i.bjt
  %i.bjy = zext nneg i8 %i.bjx to i64
  %i.bjz = getelementptr inbounds nuw i8, ptr @base64_table, i64 %i.bjy
  %i.bka = load i8, ptr %i.bjz, align 1, !tbaa !16
  %i.bkb = getelementptr inbounds nuw i8, ptr %.030.i38, i64 2
  store i8 %i.bka, ptr %i.bjr, align 1, !tbaa !16
  %i.bkc = shl i8 %i.bjv, 2
  %i.bkd = and i8 %i.bkc, 60
  %i.bke = getelementptr inbounds nuw i8, ptr %.0.i39, i64 2
  %i.bkf = load i8, ptr %i.bke, align 1, !tbaa !16 ; 2 uses
  %i.bkg = lshr i8 %i.bkf, 6
  %i.bkh = or disjoint i8 %i.bkg, %i.bkd
  %i.bki = zext nneg i8 %i.bkh to i64
  %i.bkj = getelementptr inbounds nuw i8, ptr @base64_table, i64 %i.bki
  %i.bkk = load i8, ptr %i.bkj, align 1, !tbaa !16
  %i.bkl = getelementptr inbounds nuw i8, ptr %.030.i38, i64 3
  store i8 %i.bkk, ptr %i.bkb, align 1, !tbaa !16
  %i.bkm = and i8 %i.bkf, 63
  %i.bkn = zext nneg i8 %i.bkm to i64
  %i.bko = getelementptr inbounds nuw i8, ptr @base64_table, i64 %i.bkn
  %i.bkp = load i8, ptr %i.bko, align 1, !tbaa !16
  %i.bkq = getelementptr inbounds nuw i8, ptr %.030.i38, i64 4 ; 2 uses
  store i8 %i.bkp, ptr %i.bkl, align 1, !tbaa !16
  %i.bkr = getelementptr inbounds nuw i8, ptr %.0.i39, i64 3 ; 2 uses
  %i.bks = add i64 %.031.i37, -3                  ; 3 uses
  %i.bkt = icmp ugt i64 %i.bks, 2
  br i1 %i.bkt, label %.lr.ph40, label %._crit_edge, !llvm.loop !51

._crit_edge:                                      ; preds = %.lr.ph40, %middle.block, %vec.epilog.middle.block, %.loopexit
  %.031.i.lcssa = phi i64 [ %1, %.loopexit ], [ %i.app, %vec.epilog.middle.block ], [ %i.bv, %middle.block ], [ %i.bks, %.lr.ph40 ] ; 2 uses
  %.030.i.lcssa = phi ptr [ %i.h, %.loopexit ], [ %i.apn, %vec.epilog.middle.block ], [ %i.bt, %middle.block ], [ %i.bkq, %.lr.ph40 ] ; 9 uses
  %.0.i.lcssa = phi ptr [ %0, %.loopexit ], [ %i.apl, %vec.epilog.middle.block ], [ %i.br, %middle.block ], [ %i.bkr, %.lr.ph40 ] ; 2 uses
  %.not.i = icmp eq i64 %.031.i.lcssa, 0
  br i1 %.not.i, label %php_base64_encode_impl.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.bku = load i8, ptr %.0.i.lcssa, align 1, !tbaa !16 ; 2 uses
  %i.bkv = lshr i8 %i.bku, 2
  %i.bkw = zext nneg i8 %i.bkv to i64
  %i.bkx = getelementptr inbounds nuw i8, ptr @base64_table, i64 %i.bkw
  %i.bky = load i8, ptr %i.bkx, align 1, !tbaa !16
  %i.bkz = getelementptr inbounds nuw i8, ptr %.030.i.lcssa, i64 1 ; 2 uses
  store i8 %i.bky, ptr %.030.i.lcssa, align 1, !tbaa !16
  %i.bla = icmp eq i64 %.031.i.lcssa, 2
  %i.blb = shl i8 %i.bku, 4
  %i.blc = and i8 %i.blb, 48                      ; 2 uses
  br i1 %i.bla, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.bld = getelementptr inbounds nuw i8, ptr %.0.i.lcssa, i64 1
  %i.ble = load i8, ptr %i.bld, align 1, !tbaa !16 ; 2 uses
  %i.blf = lshr i8 %i.ble, 4
  %i.blg = or disjoint i8 %i.blf, %i.blc
  %i.blh = zext nneg i8 %i.blg to i64
  %i.bli = getelementptr inbounds nuw i8, ptr @base64_table, i64 %i.blh
  %i.blj = load i8, ptr %i.bli, align 1, !tbaa !16
  %i.blk = getelementptr inbounds nuw i8, ptr %.030.i.lcssa, i64 2
  store i8 %i.blj, ptr %i.bkz, align 1, !tbaa !16
  %i.bll = shl i8 %i.ble, 2
  %i.blm = and i8 %i.bll, 60
  %i.bln = zext nneg i8 %i.blm to i64
  %i.blo = getelementptr inbounds nuw i8, ptr @base64_table, i64 %i.bln
  %i.blp = load i8, ptr %i.blo, align 4, !tbaa !16
  %i.blq = getelementptr inbounds nuw i8, ptr %.030.i.lcssa, i64 3 ; 2 uses
  store i8 %i.blp, ptr %i.blk, align 1, !tbaa !16
  %i.blr = and i64 %2, 1
  %i.bls = icmp eq i64 %i.blr, 0
  br i1 %i.bls, label %bb.e, label %php_base64_encode_impl.exit

bb.e:                                             ; preds = %bb.d
  %i.blt = getelementptr inbounds nuw i8, ptr %.030.i.lcssa, i64 4
  store i8 61, ptr %i.blq, align 1, !tbaa !16
  br label %php_base64_encode_impl.exit

bb.f:                                             ; preds = %bb.c
  %i.blu = zext nneg i8 %i.blc to i64
  %i.blv = getelementptr inbounds nuw i8, ptr @base64_table, i64 %i.blu
  %i.blw = load i8, ptr %i.blv, align 16, !tbaa !16
  %i.blx = getelementptr inbounds nuw i8, ptr %.030.i.lcssa, i64 2 ; 2 uses
  store i8 %i.blw, ptr %i.bkz, align 1, !tbaa !16
  %i.bly = and i64 %2, 1
  %i.blz = icmp eq i64 %i.bly, 0
  br i1 %i.blz, label %bb.g, label %php_base64_encode_impl.exit

bb.g:                                             ; preds = %bb.f
  %i.bma = getelementptr inbounds nuw i8, ptr %.030.i.lcssa, i64 3
  store i8 61, ptr %i.blx, align 1, !tbaa !16
  %i.bmb = getelementptr inbounds nuw i8, ptr %.030.i.lcssa, i64 4
  store i8 61, ptr %i.bma, align 1, !tbaa !16
  br label %php_base64_encode_impl.exit

php_base64_encode_impl.exit:                      ; preds = %._crit_edge, %bb.d, %bb.e, %bb.f, %bb.g
  %.1.i = phi ptr [ %i.blt, %bb.e ], [ %i.blq, %bb.d ], [ %i.bmb, %bb.g ], [ %i.blx, %bb.f ], [ %.030.i.lcssa, %._crit_edge ] ; 2 uses
  store i8 0, ptr %.1.i, align 1, !tbaa !16
  %i.bmc = ptrtoint ptr %.1.i to i64
  %i.bmd = ptrtoint ptr %i.h to i64
  %i.bme = sub i64 %i.bmc, %i.bmd
  store i64 %i.bme, ptr %i.g, align 8, !tbaa !20
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @php_base64_encode_ssse3(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) #5 {
bb.a:
  %i.a = add i64 %1, 2
  %i.b = udiv i64 %i.a, 3                         ; 2 uses
  %i.c = tail call noalias ptr @_safe_emalloc(i64 noundef range(i64 0, 6148914691236517206) %i.b, i64 noundef 4, i64 noundef 32) #11 ; 6 uses
  store i32 1, ptr %i.c, align 4, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 22, ptr %i.d, align 4, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !19
  %i.f = shl i64 %i.b, 2
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 %i.f, ptr %i.g, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 4 uses
  %i.i = icmp ugt i64 %1, 15
  br i1 %i.i, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.j = icmp samesign ugt i64 %1, 2
  br i1 %i.j, label %.lr.ph29.preheader, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.023 = phi i64 [ %i.aa, %.lr.ph ], [ %1, %bb.a ]
  %.01922 = phi ptr [ %i.z, %.lr.ph ], [ %i.h, %bb.a ] ; 2 uses
  %.02021 = phi ptr [ %i.y, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.k = load <16 x i8>, ptr %.02021, align 1, !tbaa !16
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 2, i32 1, i32 4, i32 3, i32 5, i32 4, i32 7, i32 6, i32 8, i32 7, i32 10, i32 9, i32 11, i32 10> ; 2 uses
  %i.m = bitcast <16 x i8> %i.l to <8 x i16>
  %i.n = and <8 x i16> %i.m, <i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032>
  %3 = call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.n, <8 x i16> <i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024>)
  %i.o = bitcast <16 x i8> %i.l to <8 x i16>
  %i.p = and <8 x i16> %i.o, <i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63>
  %i.q = shl <8 x i16> %i.p, <i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8>
  %i.r = or <8 x i16> %i.q, %3
  %i.s = bitcast <8 x i16> %i.r to <16 x i8>      ; 3 uses
  %i.t = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.s, <16 x i8> splat (i8 51))
  %i.u = icmp sgt <16 x i8> %i.s, splat (i8 25)
  %.neg.i = zext <16 x i1> %i.u to <16 x i8>
  %i.v = add nuw <16 x i8> %i.t, %.neg.i
  %i.w = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 65, i8 71, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -19, i8 -16, i8 0, i8 0>, <16 x i8> %i.v)
  %i.x = add <16 x i8> %i.w, %i.s
  store <16 x i8> %i.x, ptr %.01922, align 1, !tbaa !16
  %i.y = getelementptr inbounds nuw i8, ptr %.02021, i64 12 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.01922, i64 16 ; 2 uses
  %i.aa = add i64 %.023, -12                      ; 3 uses
  %i.ab = icmp ugt i64 %i.aa, 15
  br i1 %i.ab, label %.lr.ph, label %.lr.ph29.preheader, !llvm.loop !55

.lr.ph29.preheader:                               ; preds = %.lr.ph, %.preheader
  %.0.i28.ph = phi ptr [ %0, %.preheader ], [ %i.y, %.lr.ph ]
  %.030.i27.ph = phi ptr [ %i.h, %.preheader ], [ %i.z, %.lr.ph ]
  %.031.i26.ph = phi i64 [ %1, %.preheader ], [ %i.aa, %.lr.ph ]
  br label %.lr.ph29

.lr.ph29:                                         ; preds = %.lr.ph29.preheader, %.lr.ph29
  %.0.i28 = phi ptr [ %i.bh, %.lr.ph29 ], [ %.0.i28.ph, %.lr.ph29.preheader ] ; 4 uses
  %.030.i27 = phi ptr [ %i.bg, %.lr.ph29 ], [ %.030.i27.ph, %.lr.ph29.preheader ] ; 5 uses
  %.031.i26 = phi i64 [ %i.bi, %.lr.ph29 ], [ %.031.i26.ph, %.lr.ph29.preheader ]
  %i.ac = load i8, ptr %.0.i28, align 1, !tbaa !16 ; 2 uses
  %i.ad = lshr i8 %i.ac, 2
  %i.ae = zext nneg i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr @base64_table, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !16
  %i.ah = getelementptr inbounds nuw i8, ptr %.030.i27, i64 1
  store i8 %i.ag, ptr %.030.i27, align 1, !tbaa !16
  %i.ai = shl i8 %i.ac, 4
  %i.aj = and i8 %i.ai, 48
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i28, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !16  ; 2 uses
  %i.am = lshr i8 %i.al, 4
  %i.an = or disjoint i8 %i.am, %i.aj
  %i.ao = zext nneg i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @base64_table, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !16
  %i.ar = getelementptr inbounds nuw i8, ptr %.030.i27, i64 2
  store i8 %i.aq, ptr %i.ah, align 1, !tbaa !16
  %i.as = shl i8 %i.al, 2
  %i.at = and i8 %i.as, 60
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i28, i64 2
  %i.av = load i8, ptr %i.au, align 1, !tbaa !16  ; 2 uses
  %i.aw = lshr i8 %i.av, 6
  %i.ax = or disjoint i8 %i.aw, %i.at
  %i.ay = zext nneg i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @base64_table, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !16
  %i.bb = getelementptr inbounds nuw i8, ptr %.030.i27, i64 3
  store i8 %i.ba, ptr %i.ar, align 1, !tbaa !16
  %i.bc = and i8 %i.av, 63
  %i.bd = zext nneg i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr @base64_table, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !16
  %i.bg = getelementptr inbounds nuw i8, ptr %.030.i27, i64 4 ; 2 uses
  store i8 %i.bf, ptr %i.bb, align 1, !tbaa !16
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i28, i64 3 ; 2 uses
  %i.bi = add i64 %.031.i26, -3                   ; 3 uses
  %i.bj = icmp ugt i64 %i.bi, 2
  br i1 %i.bj, label %.lr.ph29, label %._crit_edge, !llvm.loop !1

._crit_edge:                                      ; preds = %.lr.ph29, %.preheader
  %.031.i.lcssa = phi i64 [ %1, %.preheader ], [ %i.bi, %.lr.ph29 ] ; 2 uses
  %.030.i.lcssa = phi ptr [ %i.h, %.preheader ], [ %i.bg, %.lr.ph29 ] ; 9 uses
  %.0.i.lcssa = phi ptr [ %0, %.preheader ], [ %i.bh, %.lr.ph29 ] ; 2 uses
  %.not.i = icmp eq i64 %.031.i.lcssa, 0
  br i1 %.not.i, label %php_base64_encode_impl.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.bk = load i8, ptr %.0.i.lcssa, align 1, !tbaa !16 ; 2 uses
  %i.bl = lshr i8 %i.bk, 2
  %i.bm = zext nneg i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr @base64_table, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !16
  %i.bp = getelementptr inbounds nuw i8, ptr %.030.i.lcssa, i64 1 ; 2 uses
  store i8 %i.bo, ptr %.030.i.lcssa, align 1, !tbaa !16
  %i.bq = icmp eq i64 %.031.i.lcssa, 2
  %i.br = shl i8 %i.bk, 4
  %i.bs = and i8 %i.br, 48                        ; 2 uses
  br i1 %i.bq, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i.lcssa, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !16  ; 2 uses
  %i.bv = lshr i8 %i.bu, 4
  %i.bw = or disjoint i8 %i.bv, %i.bs
  %i.bx = zext nneg i8 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr @base64_table, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !16
  %i.ca = getelementptr inbounds nuw i8, ptr %.030.i.lcssa, i64 2
  store i8 %i.bz, ptr %i.bp, align 1, !tbaa !16
  %i.cb = shl i8 %i.bu, 2
  %i.cc = and i8 %i.cb, 60
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr @base64_table, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 4, !tbaa !16
  %i.cg = getelementptr inbounds nuw i8, ptr %.030.i.lcssa, i64 3 ; 2 uses
  store i8 %i.cf, ptr %i.ca, align 1, !tbaa !16
  %i.ch = and i64 %2, 1
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %bb.d, label %php_base64_encode_impl.exit

bb.d:                                             ; preds = %bb.c
  %i.cj = getelementptr inbounds nuw i8, ptr %.030.i.lcssa, i64 4
  store i8 61, ptr %i.cg, align 1, !tbaa !16
  br label %php_base64_encode_impl.exit

bb.e:                                             ; preds = %bb.b
  %i.ck = zext nneg i8 %i.bs to i64
  %i.cl = getelementptr inbounds nuw i8, ptr @base64_table, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 16, !tbaa !16
  %i.cn = getelementptr inbounds nuw i8, ptr %.030.i.lcssa, i64 2 ; 2 uses
  store i8 %i.cm, ptr %i.bp, align 1, !tbaa !16
  %i.co = and i64 %2, 1
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %bb.f, label %php_base64_encode_impl.exit

bb.f:                                             ; preds = %bb.e
  %i.cq = getelementptr inbounds nuw i8, ptr %.030.i.lcssa, i64 3
  store i8 61, ptr %i.cn, align 1, !tbaa !16
  %i.cr = getelementptr inbounds nuw i8, ptr %.030.i.lcssa, i64 4
  store i8 61, ptr %i.cq, align 1, !tbaa !16
  br label %php_base64_encode_impl.exit

php_base64_encode_impl.exit:                      ; preds = %._crit_edge, %bb.c, %bb.d, %bb.e, %bb.f
  %.1.i = phi ptr [ %i.cj, %bb.d ], [ %i.cg, %bb.c ], [ %i.cr, %bb.f ], [ %i.cn, %bb.e ], [ %.030.i.lcssa, %._crit_edge ] ; 2 uses
  store i8 0, ptr %.1.i, align 1, !tbaa !16
  %i.cs = ptrtoint ptr %.1.i to i64
  %i.ct = ptrtoint ptr %i.h to i64
  %i.cu = sub i64 %i.cs, %i.ct
  store i64 %i.cu, ptr %i.g, align 8, !tbaa !20
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @php_base64_decode_ex_avx2(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i1 noundef zeroext %2) #4 {
zend_string_alloc.exit:
  %i.a = and i64 %1, -8
  %i.b = add i64 %i.a, 32
  %i.c = tail call noalias ptr @_emalloc(i64 noundef %i.b) #12 ; 7 uses
  store i32 1, ptr %i.c, align 4, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 22, ptr %i.d, align 4, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 %1, ptr %i.f, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 14 uses
  %i.h = icmp ugt i64 %1, 44
  br i1 %i.h, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %zend_string_alloc.exit, %bb.a
  %.03380 = phi i64 [ %i.aj, %bb.a ], [ %1, %zend_string_alloc.exit ] ; 2 uses
  %.03579 = phi ptr [ %i.ah, %bb.a ], [ %i.g, %zend_string_alloc.exit ] ; 2 uses
  %.03778 = phi ptr [ %i.ag, %bb.a ], [ %0, %zend_string_alloc.exit ] ; 3 uses
  %.04377 = phi i64 [ %i.ai, %bb.a ], [ 0, %zend_string_alloc.exit ] ; 2 uses
  %i.i = load <4 x i64>, ptr %.03778, align 1, !tbaa !16 ; 3 uses
  %i.j = bitcast <4 x i64> %i.i to <8 x i32>
  %i.k = lshr <8 x i32> %i.j, splat (i32 4)
  %i.l = bitcast <8 x i32> %i.k to <32 x i8>
  %i.m = and <32 x i8> %i.l, <i8 47, i8 47, i8 47, i8 15, i8 47, i8 47, i8 47, i8 15, i8 47, i8 47, i8 47, i8 15, i8 47, i8 47, i8 47, i8 15, i8 47, i8 47, i8 47, i8 15, i8 47, i8 47, i8 47, i8 15, i8 47, i8 47, i8 47, i8 15, i8 47, i8 47, i8 47, i8 15> ; 2 uses
  %i.n = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 16, i8 16, i8 1, i8 2, i8 4, i8 8, i8 4, i8 8, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 1, i8 2, i8 4, i8 8, i8 4, i8 8, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16>, <32 x i8> %i.m)
  %i.o = bitcast <32 x i8> %i.n to <4 x i64>
  %i.p = bitcast <4 x i64> %i.i to <32 x i8>
  %i.q = and <32 x i8> %i.p, splat (i8 15)
  %i.r = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 21, i8 17, i8 17, i8 17, i8 17, i8 17, i8 17, i8 17, i8 17, i8 17, i8 19, i8 26, i8 27, i8 27, i8 27, i8 26, i8 21, i8 17, i8 17, i8 17, i8 17, i8 17, i8 17, i8 17, i8 17, i8 17, i8 19, i8 26, i8 27, i8 27, i8 27, i8 26>, <32 x i8> %i.q)
  %i.s = bitcast <32 x i8> %i.r to <4 x i64>
  %i.t = tail call i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.s, <4 x i64> %i.o)
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %.lr.ph90.lr.ph.lr.ph, label %bb.a

bb.a:                                             ; preds = %.lr.ph
  %i.u = bitcast <4 x i64> %i.i to <32 x i8>      ; 2 uses
  %i.v = icmp eq <32 x i8> %i.u, splat (i8 47)
  %i.w = sext <32 x i1> %i.v to <32 x i8>
  %i.x = add nsw <32 x i8> %i.m, %i.w
  %i.y = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 16, i8 19, i8 4, i8 -65, i8 -65, i8 -71, i8 -71, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 16, i8 19, i8 4, i8 -65, i8 -65, i8 -71, i8 -71, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.x)
  %i.z = add <32 x i8> %i.y, %i.u
  %i.aa = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.z, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.ab = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.aa, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.ac = bitcast <8 x i32> %i.ab to <32 x i8>
  %i.ad = shufflevector <32 x i8> %i.ac, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 48, i32 48, i32 48, i32 48>
  %i.ae = bitcast <32 x i8> %i.ad to <8 x i32>
  %i.af = shufflevector <8 x i32> %i.ae, <8 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 4, i32 5, i32 6, i32 7, i32 7>
  store <8 x i32> %i.af, ptr %.03579, align 1, !tbaa !16
  %i.ag = getelementptr inbounds nuw i8, ptr %.03778, i64 32 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.03579, i64 24
  %i.ai = add nuw i64 %.04377, 24                 ; 2 uses
  %i.aj = add i64 %.03380, -32                    ; 3 uses
  %i.ak = icmp ugt i64 %i.aj, 44
  br i1 %i.ak, label %.lr.ph, label %.thread

.thread:                                          ; preds = %bb.a, %zend_string_alloc.exit
  %.043.lcssa = phi i64 [ 0, %zend_string_alloc.exit ], [ %i.ai, %bb.a ] ; 2 uses
  %.037.lcssa = phi ptr [ %0, %zend_string_alloc.exit ], [ %i.ag, %bb.a ]
  %.033.lcssa = phi i64 [ %1, %zend_string_alloc.exit ], [ %i.aj, %bb.a ] ; 2 uses
  %.not.i88108128 = icmp eq i64 %.033.lcssa, 0
end_hunk_1
begin_hunk_2_@zif_base64_decode:bb.a
  br i1 %i.o, label %.critedge, label %bb.d, !prof !61

bb.d:                                             ; preds = %zend_parse_arg_str_ex.exit.thread
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.q = load i8, ptr %i.p, align 8, !tbaa !16
  switch i8 %i.q, label %zend_parse_arg_bool_ex.exit [
    i8 3, label %.split98.thread
    i8 2, label %.split98.thread.fold.split
  ], !prof !62

.split98.thread.fold.split:                       ; preds = %bb.d
  br label %.split98.thread

.split98.thread:                                  ; preds = %bb.d, %.split98.thread.fold.split
  %storemerge.i = phi i8 [ 1, %bb.d ], [ 0, %.split98.thread.fold.split ] ; 2 uses
  store i8 %storemerge.i, ptr %i.b, align 1, !tbaa !58
  br label %.critedge

zend_parse_arg_bool_ex.exit:                      ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.s = call zeroext i1 @zend_parse_arg_bool_slow(ptr noundef nonnull %i.r, ptr noundef nonnull %i.b, i32 noundef 2) #11
  %cond.fr76 = freeze i1 %i.s
  br i1 %cond.fr76, label %zend_parse_arg_bool_ex.exit..critedge_crit_edge, label %.thread86, !prof !63

zend_parse_arg_bool_ex.exit..critedge_crit_edge:  ; preds = %zend_parse_arg_bool_ex.exit
  %.pre100 = load i8, ptr %i.b, align 1, !tbaa !58, !range !64
  br label %.critedge

.thread86:                                        ; preds = %zend_parse_arg_bool_ex.exit, %zend_parse_arg_string.exit, %bb.b
  %.05397 = phi i32 [ 1, %bb.b ], [ 9, %zend_parse_arg_string.exit ], [ 9, %zend_parse_arg_bool_ex.exit ]
  %.05496 = phi i32 [ 0, %bb.b ], [ 4, %zend_parse_arg_string.exit ], [ 2, %zend_parse_arg_bool_ex.exit ]
  %.05595 = phi ptr [ null, %bb.b ], [ %i.f, %zend_parse_arg_string.exit ], [ %i.r, %zend_parse_arg_bool_ex.exit ]
  %.05694 = phi i32 [ 0, %bb.b ], [ 1, %zend_parse_arg_string.exit ], [ 2, %zend_parse_arg_bool_ex.exit ]
  call void @zend_wrong_parameter_error(i32 noundef %.05397, i32 noundef %.05694, ptr noundef null, i32 noundef %.05496, ptr noundef %.05595) #11
  br label %bb.g

.critedge:                                        ; preds = %zend_parse_arg_bool_ex.exit..critedge_crit_edge, %.split98.thread, %zend_parse_arg_str_ex.exit.thread
  %i.t = phi i8 [ %.pre100, %zend_parse_arg_bool_ex.exit..critedge_crit_edge ], [ %storemerge.i, %.split98.thread ], [ 0, %zend_parse_arg_str_ex.exit.thread ]
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = call ptr @php_base64_decode_ex(ptr noundef nonnull %i.l, i64 noundef %i.n, i1 noundef zeroext %i.u) #11 ; 3 uses
  %.not59 = icmp eq ptr %i.v, null
  br i1 %.not59, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.critedge
  store ptr %i.v, ptr %1, align 8, !tbaa !16
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !16
  %i.y = and i32 %i.x, 64
  %.not60 = icmp eq i32 %i.y, 0
  %i.z = select i1 %.not60, i32 262, i32 6
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.z, ptr %i.aa, align 8, !tbaa !16
  br label %bb.g

bb.f:                                             ; preds = %.critedge
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 2, ptr %i.ab, align 8, !tbaa !16
  br label %bb.g

bb.g:                                             ; preds = %.thread86, %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  ret void
}

; Function Attrs: disable_sanitizer_instrumentation nounwind uwtable
define internal nonnull ptr @resolve_base64_encode() #8 {
bb.a:
  tail call void @__cpu_indicator_init() #11
  tail call void @__cpu_indicator_init() #11
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @__cpu_model, i64 12), align 4
  %i.b = and i32 %i.a, 82870272
  %.not.not = icmp eq i32 %i.b, 82870272
  br i1 %.not.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__cpu_indicator_init() #11
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @__cpu_model, i64 12), align 4
  %i.d = and i32 %i.c, 15761408
  %.not1.not = icmp eq i32 %i.d, 15761408
  br i1 %.not1.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__cpu_indicator_init() #11
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @__cpu_model, i64 12), align 4
  %i.f = and i32 %i.e, 1024
  %.not2 = icmp eq i32 %i.f, 0
  br i1 %.not2, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cpu_indicator_init() #11
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @__cpu_model, i64 12), align 4
  %i.h = and i32 %i.g, 64
  %.not3 = icmp eq i32 %i.h, 0
  %php_base64_encode_default.php_base64_encode_ssse3 = select i1 %.not3, ptr @php_base64_encode_default, ptr @php_base64_encode_ssse3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ @php_base64_encode_avx2, %bb.c ], [ @php_base64_encode_avx512_vbmi, %bb.a ], [ @php_base64_encode_avx512, %bb.b ], [ %php_base64_encode_default.php_base64_encode_ssse3, %bb.d ]
  ret ptr %.0
}

declare dso_local void @__cpu_indicator_init() local_unnamed_addr

; Function Attrs: disable_sanitizer_instrumentation nounwind uwtable
define internal nonnull ptr @resolve_base64_decode() #8 {
bb.a:
  tail call void @__cpu_indicator_init() #11
  tail call void @__cpu_indicator_init() #11
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @__cpu_model, i64 12), align 4
  %i.b = and i32 %i.a, 82870272
  %.not.not = icmp eq i32 %i.b, 82870272
  br i1 %.not.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__cpu_indicator_init() #11
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @__cpu_model, i64 12), align 4
  %i.d = and i32 %i.c, 15761408
  %.not1.not = icmp eq i32 %i.d, 15761408
  br i1 %.not1.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__cpu_indicator_init() #11
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @__cpu_model, i64 12), align 4
  %i.f = and i32 %i.e, 1024
  %.not2 = icmp eq i32 %i.f, 0
  br i1 %.not2, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cpu_indicator_init() #11
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @__cpu_model, i64 12), align 4
  %i.h = and i32 %i.g, 64
  %.not3 = icmp eq i32 %i.h, 0
  %php_base64_decode_ex_default.php_base64_decode_ex_ssse3 = select i1 %.not3, ptr @php_base64_decode_ex_default, ptr @php_base64_decode_ex_ssse3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ @php_base64_decode_ex_avx2, %bb.c ], [ @php_base64_decode_ex_avx512_vbmi, %bb.a ], [ @php_base64_decode_ex_avx512, %bb.b ], [ %php_base64_decode_ex_default.php_base64_decode_ex_ssse3, %bb.d ]
  ret ptr %.0
}

declare noalias ptr @_safe_emalloc(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8>, <64 x i8>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <64 x i8> @llvm.x86.avx512.pmultishift.qb.512(<64 x i8>, <64 x i8>) #3

; Function Attrs: allocsize(0)
declare noalias ptr @_emalloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <64 x i8> @llvm.x86.avx512.vpermi2var.qi.512(<64 x i8>, <64 x i8>, <64 x i8>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8>, <64 x i8>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16>, <32 x i16>) #3

declare void @_efree(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8>, <64 x i8>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <64 x i8> @llvm.usub.sat.v64i8(<64 x i8>, <64 x i8>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x i8> @llvm.usub.sat.v32i8(<32 x i8>, <32 x i8>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.usub.sat.v16i8(<16 x i8>, <16 x i8>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8>, <32 x i8>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.avx.ptestz.256(<4 x i64>, <4 x i64>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8>, <32 x i8>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16>, <16 x i16>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8>, <16 x i8>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.ssse3.pmadd.ub.sw.128(<16 x i8>, <16 x i8>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16>, <8 x i16>) #3

declare zeroext i1 @zend_parse_arg_str_slow(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare zeroext i1 @zend_parse_arg_bool_slow(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.umulh.v16i16(<16 x i16>, <16 x i16>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.umulh.v8i16(<8 x i16>, <8 x i16>) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vbmi,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { disable_sanitizer_instrumentation nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !21}
!1 = distinct !{!1, !21}
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"_zend_refcounted_h", !11, i64 0, !10, i64 4}
!15 = !{!14, !11, i64 0}
!16 = !{!10, !10, i64 0}
!17 = !{!"long", !10, i64 0}
!18 = !{!"_zend_string", !14, i64 0, !17, i64 8, !17, i64 16, !10, i64 24}
!19 = !{!18, !17, i64 8}
!20 = !{!18, !17, i64 16}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"llvm.loop.isvectorized", i32 1}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = !{!"branch_weights", i32 16, i32 48}
!25 = !{!"short", !10, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!28 = distinct !{!28, !"LVerDomain"}
!29 = distinct !{!29, !28}
!30 = distinct !{!30, !28}
!31 = distinct !{!31, !21, !22, !23}
!32 = distinct !{!32, !21, !22, !23}
!33 = distinct !{!33, !21}
!34 = distinct !{!34, !21, !22}
!35 = !{!29}
!36 = !{!30}
!37 = distinct !{!37, !"LVerDomain"}
!38 = distinct !{!38, !37}
!39 = distinct !{!39, !37}
!40 = distinct !{!40, !21, !22, !23}
!41 = distinct !{!41, !21, !22, !23}
!42 = distinct !{!42, !21}
!43 = distinct !{!43, !21, !22}
!44 = !{!38}
!45 = !{!39}
!46 = distinct !{!46, !"LVerDomain"}
!47 = distinct !{!47, !46}
!48 = distinct !{!48, !46}
!49 = distinct !{!49, !21, !22, !23}
!50 = distinct !{!50, !21, !22, !23}
!51 = distinct !{!51, !21, !22}
!52 = !{!47}
!53 = !{!48}
!54 = !{!"branch_weights", i32 16, i32 16}
!55 = distinct !{!55, !21}
!56 = !{!"branch_weights", i32 4000000, i32 4001}
!57 = !{!"_Bool", !10, i64 0}
!58 = !{!57, !57, i64 0}
!59 = !{!"branch_weights", i32 4001, i32 4000000}
!60 = !{!"branch_weights", i32 2146410443, i32 1073205}
!61 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!62 = !{!"branch_weights", i32 1, i32 4002000, i32 2000}
!63 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!64 = !{i8 0, i8 2}
end_hunk_2
