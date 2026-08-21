Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/siphash?download=true
inline.NumInlined: 15
begin_hunk_0_@siptlw:bb.a
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @siphash(ptr nofree noundef readonly captures(address) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !13     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !13   ; 2 uses
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
  %i.m = load i64, ptr %.0163165, align 8, !tbaa !13 ; 2 uses
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
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !15

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
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !17
  %i.ag = zext i8 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 48
  %i.ai = or disjoint i64 %i.ah, %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.0 = phi i64 [ %i.ai, %bb.b ], [ %i.h, %._crit_edge ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.0163.lcssa, i64 5
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !17
  %i.al = zext i8 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 40
  %i.an = or i64 %i.am, %.0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.1 = phi i64 [ %i.an, %bb.c ], [ %i.h, %._crit_edge ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0163.lcssa, i64 4
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !17
  %i.aq = zext i8 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 32
  %i.as = or i64 %i.ar, %.1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %.2 = phi i64 [ %i.as, %bb.d ], [ %i.h, %._crit_edge ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0163.lcssa, i64 3
  %i.au = load i8, ptr %i.at, align 1, !tbaa !17
  %i.av = zext i8 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 24
  %i.ax = or i64 %i.aw, %.2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %.3 = phi i64 [ %i.ax, %bb.e ], [ %i.h, %._crit_edge ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.0163.lcssa, i64 2
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !17
  %i.ba = zext i8 %i.az to i64
  %i.bb = shl nuw nsw i64 %i.ba, 16
  %i.bc = or i64 %i.bb, %.3
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %.4 = phi i64 [ %i.bc, %bb.f ], [ %i.h, %._crit_edge ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0163.lcssa, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !17
  %i.bf = zext i8 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 8
  %i.bh = or i64 %i.bg, %.4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %.5 = phi i64 [ %i.bh, %bb.g ], [ %i.h, %._crit_edge ]
  %i.bi = load i8, ptr %.0163.lcssa, align 1, !tbaa !17
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
  %i.a = load i64, ptr %2, align 8, !tbaa !13     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !13   ; 2 uses
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
  %.0166204 = phi i64 [ %i.x, %.lr.ph ], [ %i.i, %bb.a ]
  %.0167203 = phi i64 [ %i.ab, %.lr.ph ], [ %i.j, %bb.a ]
  %.0168202 = phi i64 [ %i.aa, %.lr.ph ], [ %i.k, %bb.a ] ; 3 uses
  %.0169201 = phi i64 [ %i.ac, %.lr.ph ], [ %i.l, %bb.a ]
  %.0170200 = phi ptr [ %i.ad, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %3 = load <8 x i8>, ptr %.0170200, align 1, !tbaa !17 ; 2 uses
  %4 = zext <8 x i8> %3 to <8 x i32>              ; 2 uses
  %5 = shl nuw <8 x i32> %4, <i32 0, i32 8, i32 16, i32 24, i32 0, i32 0, i32 0, i32 0>
  %6 = add <8 x i8> %3, splat (i8 -65)
  %7 = icmp ult <8 x i8> %6, splat (i8 26)
  %8 = or <8 x i32> %5, <i32 32, i32 8192, i32 2097152, i32 536870912, i32 32, i32 32, i32 32, i32 32>
  %9 = shl nuw <8 x i32> %4, <i32 0, i32 8, i32 16, i32 24, i32 0, i32 0, i32 0, i32 0>
  %10 = select <8 x i1> %7, <8 x i32> %8, <8 x i32> %9
  %11 = zext <8 x i32> %10 to <8 x i64>
  %12 = shl <8 x i64> %11, <i64 0, i64 0, i64 0, i64 0, i64 32, i64 40, i64 48, i64 56>
  %i.m = tail call i64 @llvm.vector.reduce.or.v8i64(<8 x i64> %12) ; 2 uses
  %i.n = xor i64 %i.m, %.0166204                  ; 3 uses
  %i.o = add i64 %.0168202, %.0169201             ; 3 uses
  %i.p = tail call i64 @llvm.fshl.i64(i64 %.0168202, i64 %.0168202, i64 13)
  %i.q = xor i64 %i.p, %i.o                       ; 3 uses
  %i.r = tail call i64 @llvm.fshl.i64(i64 %i.o, i64 %i.o, i64 32)
  %i.s = add i64 %i.n, %.0167203                  ; 2 uses
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
  %i.ad = getelementptr inbounds nuw i8, ptr %.0170200, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ad, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !18

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0170.lcssa = phi ptr [ %0, %bb.a ], [ %i.e, %.lr.ph ] ; 7 uses
  %.0169.lcssa = phi i64 [ %i.l, %bb.a ], [ %i.ac, %.lr.ph ]
  %.0168.lcssa = phi i64 [ %i.k, %bb.a ], [ %i.aa, %.lr.ph ] ; 3 uses
  %.0167.lcssa = phi i64 [ %i.j, %bb.a ], [ %i.ab, %.lr.ph ]
  %.0166.lcssa = phi i64 [ %i.i, %bb.a ], [ %i.x, %.lr.ph ]
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
  %i.ae = getelementptr inbounds nuw i8, ptr %.0170.lcssa, i64 6
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !17  ; 2 uses
  %i.ag = zext i8 %i.af to i32                    ; 2 uses
  %i.ah = add i8 %i.af, -65
  %or.cond.i185 = icmp ult i8 %i.ah, 26
  %i.ai = or disjoint i32 %i.ag, 32
  %.0.i186 = select i1 %or.cond.i185, i32 %i.ai, i32 %i.ag
  %i.aj = zext nneg i32 %.0.i186 to i64
  %i.ak = shl nuw nsw i64 %i.aj, 48
  %i.al = or disjoint i64 %i.ak, %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.0 = phi i64 [ %i.al, %bb.b ], [ %i.h, %._crit_edge ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0170.lcssa, i64 5
  %i.an = load i8, ptr %i.am, align 1, !tbaa !17  ; 2 uses
  %i.ao = zext i8 %i.an to i32                    ; 2 uses
  %i.ap = add i8 %i.an, -65
  %or.cond.i187 = icmp ult i8 %i.ap, 26
  %i.aq = or disjoint i32 %i.ao, 32
  %.0.i188 = select i1 %or.cond.i187, i32 %i.aq, i32 %i.ao
  %i.ar = zext nneg i32 %.0.i188 to i64
  %i.as = shl nuw nsw i64 %i.ar, 40
  %i.at = or i64 %i.as, %.0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.1 = phi i64 [ %i.at, %bb.c ], [ %i.h, %._crit_edge ]
  %i.au = getelementptr inbounds nuw i8, ptr %.0170.lcssa, i64 4
  %i.av = load i8, ptr %i.au, align 1, !tbaa !17  ; 2 uses
  %i.aw = zext i8 %i.av to i32                    ; 2 uses
  %i.ax = add i8 %i.av, -65
  %or.cond.i189 = icmp ult i8 %i.ax, 26
  %i.ay = or disjoint i32 %i.aw, 32
  %.0.i190 = select i1 %or.cond.i189, i32 %i.ay, i32 %i.aw
  %i.az = zext nneg i32 %.0.i190 to i64
  %i.ba = shl nuw nsw i64 %i.az, 32
  %i.bb = or i64 %i.ba, %.1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %.2 = phi i64 [ %i.bb, %bb.d ], [ %i.h, %._crit_edge ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0170.lcssa, i64 3
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !17  ; 2 uses
  %i.be = zext i8 %i.bd to i32
  %i.bf = add i8 %i.bd, -65
  %or.cond.i191 = icmp ult i8 %i.bf, 26
  %i.bg = shl nuw i32 %i.be, 24                   ; 2 uses
  %i.bh = or i32 %i.bg, 536870912
  %i.bi = select i1 %or.cond.i191, i32 %i.bh, i32 %i.bg
  %i.bj = zext i32 %i.bi to i64
  %i.bk = or i64 %.2, %i.bj
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %.3 = phi i64 [ %i.bk, %bb.e ], [ %i.h, %._crit_edge ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0170.lcssa, i64 2
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !17  ; 2 uses
  %i.bn = zext i8 %i.bm to i32
  %i.bo = add i8 %i.bm, -65
  %or.cond.i193 = icmp ult i8 %i.bo, 26
  %i.bp = shl nuw nsw i32 %i.bn, 16               ; 2 uses
  %i.bq = or i32 %i.bp, 2097152
  %i.br = select i1 %or.cond.i193, i32 %i.bq, i32 %i.bp
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = or i64 %.3, %i.bs
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %.4 = phi i64 [ %i.bt, %bb.f ], [ %i.h, %._crit_edge ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.0170.lcssa, i64 1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !17  ; 2 uses
  %i.bw = zext i8 %i.bv to i32
  %i.bx = add i8 %i.bv, -65
  %or.cond.i195 = icmp ult i8 %i.bx, 26
  %i.by = shl nuw nsw i32 %i.bw, 8                ; 2 uses
  %i.bz = or i32 %i.by, 8192
  %i.ca = select i1 %or.cond.i195, i32 %i.bz, i32 %i.by
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = or i64 %.4, %i.cb
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %.5 = phi i64 [ %i.cc, %bb.g ], [ %i.h, %._crit_edge ]
  %i.cd = load i8, ptr %.0170.lcssa, align 1, !tbaa !17 ; 2 uses
  %i.ce = zext i8 %i.cd to i32                    ; 2 uses
  %i.cf = add i8 %i.cd, -65
  %or.cond.i197 = icmp ult i8 %i.cf, 26
  %i.cg = or disjoint i32 %i.ce, 32
  %.0.i198 = select i1 %or.cond.i197, i32 %i.cg, i32 %i.ce
  %i.ch = zext nneg i32 %.0.i198 to i64
  %i.ci = or i64 %.5, %i.ch
  br label %bb.i

default.unreachable:                              ; preds = %._crit_edge
  unreachable

bb.i:                                             ; preds = %._crit_edge, %bb.h
  %.6 = phi i64 [ %i.h, %._crit_edge ], [ %i.ci, %bb.h ] ; 2 uses
  %i.cj = xor i64 %.6, %.0166.lcssa               ; 3 uses
  %i.ck = add i64 %.0168.lcssa, %.0169.lcssa      ; 3 uses
  %i.cl = tail call i64 @llvm.fshl.i64(i64 %.0168.lcssa, i64 %.0168.lcssa, i64 13)
  %i.cm = xor i64 %i.cl, %i.ck                    ; 3 uses
  %i.cn = tail call i64 @llvm.fshl.i64(i64 %i.ck, i64 %i.ck, i64 32)
  %i.co = add i64 %i.cj, %.0167.lcssa             ; 2 uses
  %i.cp = tail call i64 @llvm.fshl.i64(i64 %i.cj, i64 %i.cj, i64 16)
  %i.cq = xor i64 %i.cp, %i.co                    ; 3 uses
  %i.cr = add i64 %i.cq, %i.cn                    ; 2 uses
  %i.cs = tail call i64 @llvm.fshl.i64(i64 %i.cq, i64 %i.cq, i64 21)
  %i.ct = xor i64 %i.cs, %i.cr                    ; 3 uses
  %i.cu = add i64 %i.co, %i.cm                    ; 3 uses
  %i.cv = tail call i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 17)
  %i.cw = xor i64 %i.cu, %i.cv                    ; 3 uses
  %i.cx = tail call i64 @llvm.fshl.i64(i64 %i.cu, i64 %i.cu, i64 32)
  %i.cy = xor i64 %i.cr, %.6
  %i.cz = xor i64 %i.cx, 255
  %i.da = add i64 %i.cy, %i.cw                    ; 3 uses
  %i.db = tail call i64 @llvm.fshl.i64(i64 %i.cw, i64 %i.cw, i64 13)
  %i.dc = xor i64 %i.da, %i.db                    ; 3 uses
  %i.dd = tail call i64 @llvm.fshl.i64(i64 %i.da, i64 %i.da, i64 32)
  %i.de = add i64 %i.cz, %i.ct                    ; 2 uses
  %i.df = tail call i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 16)
  %i.dg = xor i64 %i.df, %i.de                    ; 3 uses
  %i.dh = add i64 %i.dd, %i.dg                    ; 2 uses
  %i.di = tail call i64 @llvm.fshl.i64(i64 %i.dg, i64 %i.dg, i64 21)
  %i.dj = xor i64 %i.di, %i.dh                    ; 3 uses
  %i.dk = add i64 %i.dc, %i.de                    ; 3 uses
  %i.dl = tail call i64 @llvm.fshl.i64(i64 %i.dc, i64 %i.dc, i64 17)
  %i.dm = xor i64 %i.dl, %i.dk                    ; 3 uses
  %i.dn = tail call i64 @llvm.fshl.i64(i64 %i.dk, i64 %i.dk, i64 32)
  %i.do = add i64 %i.dm, %i.dh
  %i.dp = tail call i64 @llvm.fshl.i64(i64 %i.dm, i64 %i.dm, i64 13)
  %i.dq = xor i64 %i.dp, %i.do                    ; 3 uses
  %i.dr = add i64 %i.dn, %i.dj                    ; 2 uses
  %i.ds = tail call i64 @llvm.fshl.i64(i64 %i.dj, i64 %i.dj, i64 16)
  %i.dt = xor i64 %i.ds, %i.dr                    ; 2 uses
  %i.du = tail call i64 @llvm.fshl.i64(i64 %i.dt, i64 %i.dt, i64 21)
  %i.dv = add i64 %i.dq, %i.dr                    ; 3 uses
  %i.dw = tail call i64 @llvm.fshl.i64(i64 %i.dq, i64 %i.dq, i64 17)
  %i.dx = tail call i64 @llvm.fshl.i64(i64 %i.dv, i64 %i.dv, i64 32)
  %i.dy = xor i64 %i.du, %i.dw
  %i.dz = xor i64 %i.dy, %i.dx
  %i.ea = xor i64 %i.dz, %i.dv
  ret i64 %i.ea
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
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !11, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!11, !11, i64 0}
!18 = distinct !{!18, !16}
end_hunk_0
