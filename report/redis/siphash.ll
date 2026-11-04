Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/siphash?download=true
inline.NumInlined: 15
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @siptlw(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %0, -65
  %or.cond = icmp ult i32 %i.a, 26
  %i.b = or disjoint i32 %0, 32
  %.0 = select i1 %or.cond, i32 %i.b, i32 %0
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @siphash(ptr nofree noundef readonly captures(address) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !14     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !14   ; 2 uses
  %i.d = and i64 %1, -8                           ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 %i.d       ; 2 uses
  %i.f = trunc i64 %1 to i32
  %i.g = and i32 %i.f, 7
  %i.h = shl i64 %1, 56                           ; 8 uses
  %i.i = xor i64 %i.c, 8387220255154660723        ; 2 uses
  %i.j = xor i64 %i.a, 7816392313619706465        ; 2 uses
  %i.k = xor i64 %i.c, 7237128888997146477        ; 2 uses
  %i.l = xor i64 %i.a, 8317987319222330741        ; 2 uses
  %.not164 = icmp eq i64 %i.d, 0
  br i1 %.not164, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0159169 = phi i64 [ %i.x, %.lr.ph ], [ %i.i, %bb.a ]
  %.0160168 = phi i64 [ %i.ab, %.lr.ph ], [ %i.j, %bb.a ]
  %.0161167 = phi i64 [ %i.aa, %.lr.ph ], [ %i.k, %bb.a ] ; 3 uses
  %.0162166 = phi i64 [ %i.ac, %.lr.ph ], [ %i.l, %bb.a ]
  %.0163165 = phi ptr [ %i.ad, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.m = load i64, ptr %.0163165, align 8, !tbaa !14 ; 2 uses
  %i.n = xor i64 %i.m, %.0159169                  ; 3 uses
  %i.o = add i64 %.0161167, %.0162166             ; 3 uses
  %i.p = tail call i64 @llvm.fshl.i64(i64 %.0161167, i64 %.0161167, i64 13)
  %i.q = xor i64 %i.p, %i.o                       ; 3 uses
  %i.r = tail call i64 @llvm.fshl.i64(i64 %i.o, i64 %i.o, i64 32)
  %i.s = add i64 %i.n, %.0160168                  ; 2 uses
  %i.t = tail call i64 @llvm.fshl.i64(i64 %i.n, i64 %i.n, i64 16)
  %i.u = xor i64 %i.t, %i.s                       ; 3 uses
  %i.v = add i64 %i.u, %i.r                       ; 2 uses
  %i.w = tail call i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 21)
  %i.x = xor i64 %i.w, %i.v                       ; 2 uses
  %i.y = add i64 %i.s, %i.q                       ; 3 uses
  %i.z = tail call i64 @llvm.fshl.i64(i64 %i.q, i64 %i.q, i64 17)
  %i.aa = xor i64 %i.y, %i.z                      ; 2 uses
  %i.ab = tail call i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 32) ; 2 uses
  %i.ac = xor i64 %i.v, %i.m                      ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0163165, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ad, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !17

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0163.lcssa = phi ptr [ %0, %bb.a ], [ %i.e, %.lr.ph ] ; 7 uses
  %.0162.lcssa = phi i64 [ %i.l, %bb.a ], [ %i.ac, %.lr.ph ]
  %.0161.lcssa = phi i64 [ %i.k, %bb.a ], [ %i.aa, %.lr.ph ] ; 3 uses
  %.0160.lcssa = phi i64 [ %i.j, %bb.a ], [ %i.ab, %.lr.ph ]
  %.0159.lcssa = phi i64 [ %i.i, %bb.a ], [ %i.x, %.lr.ph ]
  switch i32 %i.g, label %default.unreachable [
    i32 7, label %bb.b
    i32 6, label %bb.c
    i32 5, label %bb.d
    i32 4, label %bb.e
    i32 3, label %bb.f
    i32 2, label %bb.g
    i32 1, label %bb.h
    i32 0, label %bb.i
  ]

bb.b:                                             ; preds = %._crit_edge
  %i.ae = getelementptr inbounds nuw i8, ptr %.0163.lcssa, i64 6
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !16
  %i.ag = zext i8 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 48
  %i.ai = or disjoint i64 %i.ah, %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.0 = phi i64 [ %i.ai, %bb.b ], [ %i.h, %._crit_edge ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.0163.lcssa, i64 5
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !16
  %i.al = zext i8 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 40
  %i.an = or i64 %i.am, %.0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.1 = phi i64 [ %i.an, %bb.c ], [ %i.h, %._crit_edge ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0163.lcssa, i64 4
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !16
  %i.aq = zext i8 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 32
  %i.as = or i64 %i.ar, %.1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %.2 = phi i64 [ %i.as, %bb.d ], [ %i.h, %._crit_edge ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0163.lcssa, i64 3
  %i.au = load i8, ptr %i.at, align 1, !tbaa !16
  %i.av = zext i8 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 24
  %i.ax = or i64 %i.aw, %.2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %.3 = phi i64 [ %i.ax, %bb.e ], [ %i.h, %._crit_edge ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.0163.lcssa, i64 2
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !16
  %i.ba = zext i8 %i.az to i64
  %i.bb = shl nuw nsw i64 %i.ba, 16
  %i.bc = or i64 %i.bb, %.3
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %.4 = phi i64 [ %i.bc, %bb.f ], [ %i.h, %._crit_edge ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0163.lcssa, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !16
  %i.bf = zext i8 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 8
  %i.bh = or i64 %i.bg, %.4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %.5 = phi i64 [ %i.bh, %bb.g ], [ %i.h, %._crit_edge ]
  %i.bi = load i8, ptr %.0163.lcssa, align 1, !tbaa !16
  %i.bj = zext i8 %i.bi to i64
  %i.bk = or i64 %.5, %i.bj
  br label %bb.i

default.unreachable:                              ; preds = %._crit_edge
  unreachable

bb.i:                                             ; preds = %._crit_edge, %bb.h
  %.6 = phi i64 [ %i.h, %._crit_edge ], [ %i.bk, %bb.h ] ; 2 uses
  %i.bl = xor i64 %.6, %.0159.lcssa               ; 3 uses
  %i.bm = add i64 %.0161.lcssa, %.0162.lcssa      ; 3 uses
  %i.bn = tail call i64 @llvm.fshl.i64(i64 %.0161.lcssa, i64 %.0161.lcssa, i64 13)
  %i.bo = xor i64 %i.bn, %i.bm                    ; 3 uses
  %i.bp = tail call i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 32)
  %i.bq = add i64 %i.bl, %.0160.lcssa             ; 2 uses
  %i.br = tail call i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 16)
  %i.bs = xor i64 %i.br, %i.bq                    ; 3 uses
  %i.bt = add i64 %i.bs, %i.bp                    ; 2 uses
  %i.bu = tail call i64 @llvm.fshl.i64(i64 %i.bs, i64 %i.bs, i64 21)
  %i.bv = xor i64 %i.bu, %i.bt                    ; 3 uses
  %i.bw = add i64 %i.bq, %i.bo                    ; 3 uses
  %i.bx = tail call i64 @llvm.fshl.i64(i64 %i.bo, i64 %i.bo, i64 17)
  %i.by = xor i64 %i.bw, %i.bx                    ; 3 uses
  %i.bz = tail call i64 @llvm.fshl.i64(i64 %i.bw, i64 %i.bw, i64 32)
  %i.ca = xor i64 %i.bt, %.6
  %i.cb = xor i64 %i.bz, 255
  %i.cc = add i64 %i.ca, %i.by                    ; 3 uses
  %i.cd = tail call i64 @llvm.fshl.i64(i64 %i.by, i64 %i.by, i64 13)
  %i.ce = xor i64 %i.cc, %i.cd                    ; 3 uses
  %i.cf = tail call i64 @llvm.fshl.i64(i64 %i.cc, i64 %i.cc, i64 32)
  %i.cg = add i64 %i.cb, %i.bv                    ; 2 uses
  %i.ch = tail call i64 @llvm.fshl.i64(i64 %i.bv, i64 %i.bv, i64 16)
  %i.ci = xor i64 %i.ch, %i.cg                    ; 3 uses
  %i.cj = add i64 %i.cf, %i.ci                    ; 2 uses
  %i.ck = tail call i64 @llvm.fshl.i64(i64 %i.ci, i64 %i.ci, i64 21)
  %i.cl = xor i64 %i.ck, %i.cj                    ; 3 uses
  %i.cm = add i64 %i.ce, %i.cg                    ; 3 uses
  %i.cn = tail call i64 @llvm.fshl.i64(i64 %i.ce, i64 %i.ce, i64 17)
  %i.co = xor i64 %i.cn, %i.cm                    ; 3 uses
  %i.cp = tail call i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 32)
  %i.cq = add i64 %i.co, %i.cj
  %i.cr = tail call i64 @llvm.fshl.i64(i64 %i.co, i64 %i.co, i64 13)
  %i.cs = xor i64 %i.cr, %i.cq                    ; 3 uses
  %i.ct = add i64 %i.cp, %i.cl                    ; 2 uses
  %i.cu = tail call i64 @llvm.fshl.i64(i64 %i.cl, i64 %i.cl, i64 16)
  %i.cv = xor i64 %i.cu, %i.ct                    ; 2 uses
  %i.cw = tail call i64 @llvm.fshl.i64(i64 %i.cv, i64 %i.cv, i64 21)
  %i.cx = add i64 %i.cs, %i.ct                    ; 3 uses
  %i.cy = tail call i64 @llvm.fshl.i64(i64 %i.cs, i64 %i.cs, i64 17)
  %i.cz = tail call i64 @llvm.fshl.i64(i64 %i.cx, i64 %i.cx, i64 32)
  %i.da = xor i64 %i.cw, %i.cy
  %i.db = xor i64 %i.da, %i.cz
  %i.dc = xor i64 %i.db, %i.cx
  ret i64 %i.dc
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @siphash_nocase(ptr nofree noundef readonly captures(address) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !14     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !14   ; 2 uses
  %i.d = and i64 %1, -8                           ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 %i.d       ; 2 uses
  %i.f = trunc i64 %1 to i32
  %i.g = and i32 %i.f, 7
  %i.h = shl i64 %1, 56                           ; 8 uses
  %i.i = xor i64 %i.c, 8387220255154660723        ; 2 uses
  %i.j = xor i64 %i.a, 7816392313619706465        ; 2 uses
  %i.k = xor i64 %i.c, 7237128888997146477        ; 2 uses
  %i.l = xor i64 %i.a, 8317987319222330741        ; 2 uses
  %.not199 = icmp eq i64 %i.d, 0
  br i1 %.not199, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0166204 = phi i64 [ %i.ae, %.lr.ph ], [ %i.i, %bb.a ]
  %.0167203 = phi i64 [ %i.ai, %.lr.ph ], [ %i.j, %bb.a ]
  %.0168202 = phi i64 [ %i.ah, %.lr.ph ], [ %i.k, %bb.a ] ; 3 uses
  %.0169201 = phi i64 [ %i.aj, %.lr.ph ], [ %i.l, %bb.a ]
  %.0170200 = phi ptr [ %i.ak, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.m = load <8 x i8>, ptr %.0170200, align 1, !tbaa !16 ; 2 uses
  %i.n = zext <8 x i8> %i.m to <8 x i64>
  %i.o = add <8 x i8> %i.m, splat (i8 -65)
  %i.p = icmp ult <8 x i8> %i.o, splat (i8 26)
  %i.q = shl nuw <8 x i64> %i.n, <i64 0, i64 8, i64 16, i64 24, i64 32, i64 40, i64 48, i64 56> ; 2 uses
  %i.r = or <8 x i64> %i.q, <i64 32, i64 8192, i64 2097152, i64 536870912, i64 137438953472, i64 35184372088832, i64 9007199254740992, i64 2305843009213693952>
  %i.s = select <8 x i1> %i.p, <8 x i64> %i.r, <8 x i64> %i.q
  %i.t = tail call i64 @llvm.vector.reduce.or.v8i64(<8 x i64> %i.s) ; 2 uses
  %i.u = xor i64 %i.t, %.0166204                  ; 3 uses
  %i.v = add i64 %.0168202, %.0169201             ; 3 uses
  %i.w = tail call i64 @llvm.fshl.i64(i64 %.0168202, i64 %.0168202, i64 13)
  %i.x = xor i64 %i.w, %i.v                       ; 3 uses
  %i.y = tail call i64 @llvm.fshl.i64(i64 %i.v, i64 %i.v, i64 32)
  %i.z = add i64 %i.u, %.0167203                  ; 2 uses
  %i.aa = tail call i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 16)
  %i.ab = xor i64 %i.aa, %i.z                     ; 3 uses
  %i.ac = add i64 %i.ab, %i.y                     ; 2 uses
  %i.ad = tail call i64 @llvm.fshl.i64(i64 %i.ab, i64 %i.ab, i64 21)
  %i.ae = xor i64 %i.ad, %i.ac                    ; 2 uses
  %i.af = add i64 %i.z, %i.x                      ; 3 uses
  %i.ag = tail call i64 @llvm.fshl.i64(i64 %i.x, i64 %i.x, i64 17)
  %i.ah = xor i64 %i.af, %i.ag                    ; 2 uses
  %i.ai = tail call i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 32) ; 2 uses
  %i.aj = xor i64 %i.ac, %i.t                     ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0170200, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ak, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !18

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0170.lcssa = phi ptr [ %0, %bb.a ], [ %i.e, %.lr.ph ] ; 7 uses
  %.0169.lcssa = phi i64 [ %i.l, %bb.a ], [ %i.aj, %.lr.ph ]
  %.0168.lcssa = phi i64 [ %i.k, %bb.a ], [ %i.ah, %.lr.ph ] ; 3 uses
  %.0167.lcssa = phi i64 [ %i.j, %bb.a ], [ %i.ai, %.lr.ph ]
  %.0166.lcssa = phi i64 [ %i.i, %bb.a ], [ %i.ae, %.lr.ph ]
  switch i32 %i.g, label %default.unreachable [
    i32 7, label %bb.b
    i32 6, label %bb.c
    i32 5, label %bb.d
    i32 4, label %bb.e
    i32 3, label %bb.f
    i32 2, label %bb.g
    i32 1, label %bb.h
    i32 0, label %bb.i
  ]

bb.b:                                             ; preds = %._crit_edge
  %i.al = getelementptr inbounds nuw i8, ptr %.0170.lcssa, i64 6
  %i.am = load i8, ptr %i.al, align 1, !tbaa !16  ; 2 uses
  %i.an = zext i8 %i.am to i64
  %i.ao = add i8 %i.am, -65
  %or.cond.i185 = icmp ult i8 %i.ao, 26
  %i.ap = shl nuw nsw i64 %i.an, 48               ; 2 uses
  %i.aq = or i64 %i.ap, 9007199254740992
  %i.ar = select i1 %or.cond.i185, i64 %i.aq, i64 %i.ap
  %i.as = or disjoint i64 %i.ar, %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.0 = phi i64 [ %i.as, %bb.b ], [ %i.h, %._crit_edge ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0170.lcssa, i64 5
  %i.au = load i8, ptr %i.at, align 1, !tbaa !16  ; 2 uses
  %i.av = zext i8 %i.au to i64
  %i.aw = add i8 %i.au, -65
  %or.cond.i187 = icmp ult i8 %i.aw, 26
  %i.ax = shl nuw nsw i64 %i.av, 40               ; 2 uses
  %i.ay = or i64 %i.ax, 35184372088832
  %i.az = select i1 %or.cond.i187, i64 %i.ay, i64 %i.ax
  %i.ba = or i64 %i.az, %.0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.1 = phi i64 [ %i.ba, %bb.c ], [ %i.h, %._crit_edge ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0170.lcssa, i64 4
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !16  ; 2 uses
  %i.bd = zext i8 %i.bc to i64
  %i.be = add i8 %i.bc, -65
  %or.cond.i189 = icmp ult i8 %i.be, 26
  %i.bf = shl nuw nsw i64 %i.bd, 32               ; 2 uses
  %i.bg = or i64 %i.bf, 137438953472
  %i.bh = select i1 %or.cond.i189, i64 %i.bg, i64 %i.bf
  %i.bi = or i64 %i.bh, %.1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %.2 = phi i64 [ %i.bi, %bb.d ], [ %i.h, %._crit_edge ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.0170.lcssa, i64 3
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !16  ; 2 uses
  %i.bl = zext i8 %i.bk to i64
  %i.bm = add i8 %i.bk, -65
  %or.cond.i191 = icmp ult i8 %i.bm, 26
  %i.bn = shl nuw nsw i64 %i.bl, 24               ; 2 uses
  %i.bo = or i64 %i.bn, 536870912
  %i.bp = select i1 %or.cond.i191, i64 %i.bo, i64 %i.bn
  %i.bq = or i64 %i.bp, %.2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %.3 = phi i64 [ %i.bq, %bb.e ], [ %i.h, %._crit_edge ]
  %i.br = getelementptr inbounds nuw i8, ptr %.0170.lcssa, i64 2
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !16  ; 2 uses
  %i.bt = zext i8 %i.bs to i64
  %i.bu = add i8 %i.bs, -65
  %or.cond.i193 = icmp ult i8 %i.bu, 26
  %i.bv = shl nuw nsw i64 %i.bt, 16               ; 2 uses
  %i.bw = or i64 %i.bv, 2097152
  %i.bx = select i1 %or.cond.i193, i64 %i.bw, i64 %i.bv
  %i.by = or i64 %i.bx, %.3
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %.4 = phi i64 [ %i.by, %bb.f ], [ %i.h, %._crit_edge ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.0170.lcssa, i64 1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !16  ; 2 uses
  %i.cb = zext i8 %i.ca to i64
  %i.cc = add i8 %i.ca, -65
  %or.cond.i195 = icmp ult i8 %i.cc, 26
  %i.cd = shl nuw nsw i64 %i.cb, 8                ; 2 uses
  %i.ce = or i64 %i.cd, 8192
  %i.cf = select i1 %or.cond.i195, i64 %i.ce, i64 %i.cd
  %i.cg = or i64 %i.cf, %.4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %.5 = phi i64 [ %i.cg, %bb.g ], [ %i.h, %._crit_edge ]
  %i.ch = load i8, ptr %.0170.lcssa, align 1, !tbaa !16 ; 2 uses
  %i.ci = zext i8 %i.ch to i64                    ; 2 uses
  %i.cj = add i8 %i.ch, -65
  %or.cond.i197 = icmp ult i8 %i.cj, 26
  %i.ck = or i64 %i.ci, 32
  %.0.i198 = select i1 %or.cond.i197, i64 %i.ck, i64 %i.ci
  %i.cl = or i64 %.0.i198, %.5
  br label %bb.i

default.unreachable:                              ; preds = %._crit_edge
  unreachable

bb.i:                                             ; preds = %._crit_edge, %bb.h
  %.6 = phi i64 [ %i.h, %._crit_edge ], [ %i.cl, %bb.h ] ; 2 uses
  %i.cm = xor i64 %.6, %.0166.lcssa               ; 3 uses
  %i.cn = add i64 %.0168.lcssa, %.0169.lcssa      ; 3 uses
  %i.co = tail call i64 @llvm.fshl.i64(i64 %.0168.lcssa, i64 %.0168.lcssa, i64 13)
  %i.cp = xor i64 %i.co, %i.cn                    ; 3 uses
  %i.cq = tail call i64 @llvm.fshl.i64(i64 %i.cn, i64 %i.cn, i64 32)
  %i.cr = add i64 %i.cm, %.0167.lcssa             ; 2 uses
  %i.cs = tail call i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 16)
  %i.ct = xor i64 %i.cs, %i.cr                    ; 3 uses
  %i.cu = add i64 %i.ct, %i.cq                    ; 2 uses
  %i.cv = tail call i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 21)
  %i.cw = xor i64 %i.cv, %i.cu                    ; 3 uses
  %i.cx = add i64 %i.cr, %i.cp                    ; 3 uses
  %i.cy = tail call i64 @llvm.fshl.i64(i64 %i.cp, i64 %i.cp, i64 17)
  %i.cz = xor i64 %i.cx, %i.cy                    ; 3 uses
  %i.da = tail call i64 @llvm.fshl.i64(i64 %i.cx, i64 %i.cx, i64 32)
  %i.db = xor i64 %i.cu, %.6
  %i.dc = xor i64 %i.da, 255
  %i.dd = add i64 %i.db, %i.cz                    ; 3 uses
  %i.de = tail call i64 @llvm.fshl.i64(i64 %i.cz, i64 %i.cz, i64 13)
  %i.df = xor i64 %i.dd, %i.de                    ; 3 uses
  %i.dg = tail call i64 @llvm.fshl.i64(i64 %i.dd, i64 %i.dd, i64 32)
  %i.dh = add i64 %i.dc, %i.cw                    ; 2 uses
  %i.di = tail call i64 @llvm.fshl.i64(i64 %i.cw, i64 %i.cw, i64 16)
  %i.dj = xor i64 %i.di, %i.dh                    ; 3 uses
  %i.dk = add i64 %i.dg, %i.dj                    ; 2 uses
  %i.dl = tail call i64 @llvm.fshl.i64(i64 %i.dj, i64 %i.dj, i64 21)
  %i.dm = xor i64 %i.dl, %i.dk                    ; 3 uses
  %i.dn = add i64 %i.df, %i.dh                    ; 3 uses
  %i.do = tail call i64 @llvm.fshl.i64(i64 %i.df, i64 %i.df, i64 17)
  %i.dp = xor i64 %i.do, %i.dn                    ; 3 uses
  %i.dq = tail call i64 @llvm.fshl.i64(i64 %i.dn, i64 %i.dn, i64 32)
  %i.dr = add i64 %i.dp, %i.dk
  %i.ds = tail call i64 @llvm.fshl.i64(i64 %i.dp, i64 %i.dp, i64 13)
  %i.dt = xor i64 %i.ds, %i.dr                    ; 3 uses
  %i.du = add i64 %i.dq, %i.dm                    ; 2 uses
  %i.dv = tail call i64 @llvm.fshl.i64(i64 %i.dm, i64 %i.dm, i64 16)
  %i.dw = xor i64 %i.dv, %i.du                    ; 2 uses
  %i.dx = tail call i64 @llvm.fshl.i64(i64 %i.dw, i64 %i.dw, i64 21)
  %i.dy = add i64 %i.dt, %i.du                    ; 3 uses
  %i.dz = tail call i64 @llvm.fshl.i64(i64 %i.dt, i64 %i.dt, i64 17)
  %i.ea = tail call i64 @llvm.fshl.i64(i64 %i.dy, i64 %i.dy, i64 32)
  %i.eb = xor i64 %i.dx, %i.dz
  %i.ec = xor i64 %i.eb, %i.ea
  %i.ed = xor i64 %i.ec, %i.dy
  ret i64 %i.ed
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v8i64(<8 x i64>) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!12}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"long", !10, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!10, !10, i64 0}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !15}
end_hunk_0
