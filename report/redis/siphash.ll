inline.NumInlined: 15
begin_hunk_0_@siphash:bb.a
  %i.g = and i32 %i.f, 7
  %i.h = shl i64 %1, 56                           ; 8 uses
  %i.i = xor i64 %i.c, 8387220255154660723        ; 2 uses
  %i.j = xor i64 %i.a, 7816392313619706465        ; 2 uses
  %i.k = xor i64 %i.c, 7237128888997146477        ; 2 uses
  %i.l = xor i64 %i.a, 8317987319222330741        ; 2 uses
  %.not164 = icmp eq i64 %i.d, 0
  br i1 %.not164, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0159169 = phi ptr [ %i.ad, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %.0160168 = phi i64 [ %i.ac, %.lr.ph ], [ %i.l, %bb.a ]
  %.0161167 = phi i64 [ %i.aa, %.lr.ph ], [ %i.k, %bb.a ] ; 3 uses
  %.0162166 = phi i64 [ %i.ab, %.lr.ph ], [ %i.j, %bb.a ]
  %.0163165 = phi i64 [ %i.x, %.lr.ph ], [ %i.i, %bb.a ]
  %i.m = load i64, ptr %.0159169, align 8, !tbaa !13 ; 2 uses
  %i.n = xor i64 %i.m, %.0163165                  ; 3 uses
  %i.o = add i64 %.0160168, %.0161167             ; 3 uses
  %i.p = tail call i64 @llvm.fshl.i64(i64 %.0161167, i64 %.0161167, i64 13)
  %i.q = xor i64 %i.o, %i.p                       ; 3 uses
  %i.r = tail call i64 @llvm.fshl.i64(i64 %i.o, i64 %i.o, i64 32)
  %i.s = add i64 %i.n, %.0162166                  ; 2 uses
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
  %i.ad = getelementptr inbounds nuw i8, ptr %.0159169, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ad, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !15

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0163.lcssa = phi i64 [ %i.i, %bb.a ], [ %i.x, %.lr.ph ]
  %.0162.lcssa = phi i64 [ %i.j, %bb.a ], [ %i.ab, %.lr.ph ]
  %.0161.lcssa = phi i64 [ %i.k, %bb.a ], [ %i.aa, %.lr.ph ] ; 3 uses
  %.0160.lcssa = phi i64 [ %i.l, %bb.a ], [ %i.ac, %.lr.ph ]
  %.0159.lcssa = phi ptr [ %0, %bb.a ], [ %i.e, %.lr.ph ] ; 7 uses
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
  %i.ae = getelementptr inbounds nuw i8, ptr %.0159.lcssa, i64 6
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !17
  %i.ag = zext i8 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 48
  %i.ai = or disjoint i64 %i.ah, %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.0 = phi i64 [ %i.ai, %bb.b ], [ %i.h, %._crit_edge ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.0159.lcssa, i64 5
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !17
  %i.al = zext i8 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 40
  %i.an = or i64 %i.am, %.0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.1 = phi i64 [ %i.an, %bb.c ], [ %i.h, %._crit_edge ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0159.lcssa, i64 4
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !17
  %i.aq = zext i8 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 32
  %i.as = or i64 %i.ar, %.1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %.2 = phi i64 [ %i.as, %bb.d ], [ %i.h, %._crit_edge ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0159.lcssa, i64 3
  %i.au = load i8, ptr %i.at, align 1, !tbaa !17
  %i.av = zext i8 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 24
  %i.ax = or i64 %i.aw, %.2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %.3 = phi i64 [ %i.ax, %bb.e ], [ %i.h, %._crit_edge ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.0159.lcssa, i64 2
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !17
  %i.ba = zext i8 %i.az to i64
  %i.bb = shl nuw nsw i64 %i.ba, 16
  %i.bc = or i64 %i.bb, %.3
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %.4 = phi i64 [ %i.bc, %bb.f ], [ %i.h, %._crit_edge ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0159.lcssa, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !17
  %i.bf = zext i8 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 8
  %i.bh = or i64 %i.bg, %.4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %.5 = phi i64 [ %i.bh, %bb.g ], [ %i.h, %._crit_edge ]
  %i.bi = load i8, ptr %.0159.lcssa, align 1, !tbaa !17
  %i.bj = zext i8 %i.bi to i64
  %i.bk = or i64 %.5, %i.bj
  br label %bb.i

default.unreachable:                              ; preds = %._crit_edge
  unreachable

bb.i:                                             ; preds = %._crit_edge, %bb.h
  %.6 = phi i64 [ %i.h, %._crit_edge ], [ %i.bk, %bb.h ] ; 2 uses
  %i.bl = xor i64 %.6, %.0163.lcssa               ; 3 uses
  %i.bm = add i64 %.0160.lcssa, %.0161.lcssa      ; 3 uses
  %i.bn = tail call i64 @llvm.fshl.i64(i64 %.0161.lcssa, i64 %.0161.lcssa, i64 13)
  %i.bo = xor i64 %i.bm, %i.bn                    ; 3 uses
  %i.bp = tail call i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 32)
  %i.bq = add i64 %i.bl, %.0162.lcssa             ; 2 uses
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
define dso_local i64 @siphash_nocase(ptr noundef readonly captures(address) %0, i64 noundef %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #1 {
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
  %.0166204 = phi ptr [ %i.at, %.lr.ph ], [ %0, %bb.a ] ; 3 uses
  %.0167203 = phi i64 [ %i.as, %.lr.ph ], [ %i.l, %bb.a ]
  %.0168202 = phi i64 [ %i.aq, %.lr.ph ], [ %i.k, %bb.a ] ; 3 uses
  %.0169201 = phi i64 [ %i.ar, %.lr.ph ], [ %i.j, %bb.a ]
  %.0170200 = phi i64 [ %i.an, %.lr.ph ], [ %i.i, %bb.a ]
  %i.m = load <4 x i8>, ptr %.0166204, align 1, !tbaa !17 ; 2 uses
  %i.n = zext <4 x i8> %i.m to <4 x i32>
  %i.o = add <4 x i8> %i.m, splat (i8 -65)
  %i.p = icmp ult <4 x i8> %i.o, splat (i8 26)
  %i.q = shl nuw <4 x i32> %i.n, <i32 0, i32 8, i32 16, i32 24> ; 2 uses
  %i.r = or <4 x i32> %i.q, <i32 32, i32 8192, i32 2097152, i32 536870912>
  %i.s = select <4 x i1> %i.p, <4 x i32> %i.r, <4 x i32> %i.q
  %i.t = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.s)
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %.0166204, i64 4
  %i.w = load <4 x i8>, ptr %i.v, align 1, !tbaa !17 ; 2 uses
  %i.x = zext <4 x i8> %i.w to <4 x i32>          ; 2 uses
  %i.y = add <4 x i8> %i.w, splat (i8 -65)
  %i.z = icmp ult <4 x i8> %i.y, splat (i8 26)
  %3 = or disjoint <4 x i32> %i.x, splat (i32 32)
  %4 = select <4 x i1> %i.z, <4 x i32> %3, <4 x i32> %i.x
  %i.aa = zext nneg <4 x i32> %4 to <4 x i64>
  %i.ab = shl nuw <4 x i64> %i.aa, <i64 32, i64 40, i64 48, i64 56>
  %i.ac = tail call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %i.ab)
  %op.rdx = or disjoint i64 %i.ac, %i.u           ; 2 uses
  %i.ad = xor i64 %op.rdx, %.0170200              ; 3 uses
  %i.ae = add i64 %.0167203, %.0168202            ; 3 uses
  %i.af = tail call i64 @llvm.fshl.i64(i64 %.0168202, i64 %.0168202, i64 13)
  %i.ag = xor i64 %i.ae, %i.af                    ; 3 uses
  %i.ah = tail call i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ae, i64 32)
  %i.ai = add i64 %i.ad, %.0169201                ; 2 uses
  %i.aj = tail call i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 16)
  %i.ak = xor i64 %i.aj, %i.ai                    ; 3 uses
  %i.al = add i64 %i.ak, %i.ah                    ; 2 uses
  %i.am = tail call i64 @llvm.fshl.i64(i64 %i.ak, i64 %i.ak, i64 21)
  %i.an = xor i64 %i.am, %i.al                    ; 2 uses
  %i.ao = add i64 %i.ai, %i.ag                    ; 3 uses
  %i.ap = tail call i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 17)
  %i.aq = xor i64 %i.ao, %i.ap                    ; 2 uses
  %i.ar = tail call i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 32) ; 2 uses
  %i.as = xor i64 %i.al, %op.rdx                  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0166204, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.at, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !18

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0170.lcssa = phi i64 [ %i.i, %bb.a ], [ %i.an, %.lr.ph ]
  %.0169.lcssa = phi i64 [ %i.j, %bb.a ], [ %i.ar, %.lr.ph ]
  %.0168.lcssa = phi i64 [ %i.k, %bb.a ], [ %i.aq, %.lr.ph ] ; 3 uses
  %.0167.lcssa = phi i64 [ %i.l, %bb.a ], [ %i.as, %.lr.ph ]
  %.0166.lcssa = phi ptr [ %0, %bb.a ], [ %i.e, %.lr.ph ] ; 7 uses
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
  %i.au = getelementptr inbounds nuw i8, ptr %.0166.lcssa, i64 6
  %i.av = load i8, ptr %i.au, align 1, !tbaa !17  ; 2 uses
  %i.aw = zext i8 %i.av to i32                    ; 2 uses
  %i.ax = add i8 %i.av, -65
  %or.cond.i185 = icmp ult i8 %i.ax, 26
  %i.ay = or disjoint i32 %i.aw, 32
  %.0.i186 = select i1 %or.cond.i185, i32 %i.ay, i32 %i.aw
  %i.az = zext nneg i32 %.0.i186 to i64
  %i.ba = shl nuw nsw i64 %i.az, 48
  %i.bb = or disjoint i64 %i.ba, %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.0 = phi i64 [ %i.bb, %bb.b ], [ %i.h, %._crit_edge ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0166.lcssa, i64 5
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !17  ; 2 uses
  %i.be = zext i8 %i.bd to i32                    ; 2 uses
  %i.bf = add i8 %i.bd, -65
  %or.cond.i187 = icmp ult i8 %i.bf, 26
  %i.bg = or disjoint i32 %i.be, 32
  %.0.i188 = select i1 %or.cond.i187, i32 %i.bg, i32 %i.be
  %i.bh = zext nneg i32 %.0.i188 to i64
  %i.bi = shl nuw nsw i64 %i.bh, 40
  %i.bj = or i64 %i.bi, %.0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.1 = phi i64 [ %i.bj, %bb.c ], [ %i.h, %._crit_edge ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.0166.lcssa, i64 4
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !17  ; 2 uses
  %i.bm = zext i8 %i.bl to i32                    ; 2 uses
  %i.bn = add i8 %i.bl, -65
  %or.cond.i189 = icmp ult i8 %i.bn, 26
  %i.bo = or disjoint i32 %i.bm, 32
  %.0.i190 = select i1 %or.cond.i189, i32 %i.bo, i32 %i.bm
  %i.bp = zext nneg i32 %.0.i190 to i64
  %i.bq = shl nuw nsw i64 %i.bp, 32
  %i.br = or i64 %i.bq, %.1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %.2 = phi i64 [ %i.br, %bb.d ], [ %i.h, %._crit_edge ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.0166.lcssa, i64 3
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !17  ; 2 uses
  %i.bu = zext i8 %i.bt to i32
  %i.bv = add i8 %i.bt, -65
  %or.cond.i191 = icmp ult i8 %i.bv, 26
  %i.bw = shl nuw i32 %i.bu, 24                   ; 2 uses
  %i.bx = or i32 %i.bw, 536870912
  %i.by = select i1 %or.cond.i191, i32 %i.bx, i32 %i.bw
  %i.bz = zext i32 %i.by to i64
  %i.ca = or i64 %.2, %i.bz
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %.3 = phi i64 [ %i.ca, %bb.e ], [ %i.h, %._crit_edge ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.0166.lcssa, i64 2
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !17  ; 2 uses
  %i.cd = zext i8 %i.cc to i32
  %i.ce = add i8 %i.cc, -65
  %or.cond.i193 = icmp ult i8 %i.ce, 26
  %i.cf = shl nuw nsw i32 %i.cd, 16               ; 2 uses
  %i.cg = or i32 %i.cf, 2097152
  %i.ch = select i1 %or.cond.i193, i32 %i.cg, i32 %i.cf
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = or i64 %.3, %i.ci
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %.4 = phi i64 [ %i.cj, %bb.f ], [ %i.h, %._crit_edge ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.0166.lcssa, i64 1
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !17  ; 2 uses
  %i.cm = zext i8 %i.cl to i32
  %i.cn = add i8 %i.cl, -65
  %or.cond.i195 = icmp ult i8 %i.cn, 26
  %i.co = shl nuw nsw i32 %i.cm, 8                ; 2 uses
  %i.cp = or i32 %i.co, 8192
  %i.cq = select i1 %or.cond.i195, i32 %i.cp, i32 %i.co
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = or i64 %.4, %i.cr
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %.5 = phi i64 [ %i.cs, %bb.g ], [ %i.h, %._crit_edge ]
  %i.ct = load i8, ptr %.0166.lcssa, align 1, !tbaa !17 ; 2 uses
  %i.cu = zext i8 %i.ct to i32                    ; 2 uses
  %i.cv = add i8 %i.ct, -65
  %or.cond.i197 = icmp ult i8 %i.cv, 26
  %i.cw = or disjoint i32 %i.cu, 32
  %.0.i198 = select i1 %or.cond.i197, i32 %i.cw, i32 %i.cu
  %i.cx = zext nneg i32 %.0.i198 to i64
  %i.cy = or i64 %.5, %i.cx
  br label %bb.i

default.unreachable:                              ; preds = %._crit_edge
  unreachable

bb.i:                                             ; preds = %._crit_edge, %bb.h
  %.6 = phi i64 [ %i.h, %._crit_edge ], [ %i.cy, %bb.h ] ; 2 uses
  %i.cz = xor i64 %.6, %.0170.lcssa               ; 3 uses
  %i.da = add i64 %.0167.lcssa, %.0168.lcssa      ; 3 uses
  %i.db = tail call i64 @llvm.fshl.i64(i64 %.0168.lcssa, i64 %.0168.lcssa, i64 13)
  %i.dc = xor i64 %i.da, %i.db                    ; 3 uses
  %i.dd = tail call i64 @llvm.fshl.i64(i64 %i.da, i64 %i.da, i64 32)
  %i.de = add i64 %i.cz, %.0169.lcssa             ; 2 uses
  %i.df = tail call i64 @llvm.fshl.i64(i64 %i.cz, i64 %i.cz, i64 16)
  %i.dg = xor i64 %i.df, %i.de                    ; 3 uses
  %i.dh = add i64 %i.dg, %i.dd                    ; 2 uses
  %i.di = tail call i64 @llvm.fshl.i64(i64 %i.dg, i64 %i.dg, i64 21)
  %i.dj = xor i64 %i.di, %i.dh                    ; 3 uses
  %i.dk = add i64 %i.de, %i.dc                    ; 3 uses
  %i.dl = tail call i64 @llvm.fshl.i64(i64 %i.dc, i64 %i.dc, i64 17)
  %i.dm = xor i64 %i.dk, %i.dl                    ; 3 uses
  %i.dn = tail call i64 @llvm.fshl.i64(i64 %i.dk, i64 %i.dk, i64 32)
  %i.do = xor i64 %i.dh, %.6
  %i.dp = xor i64 %i.dn, 255
  %i.dq = add i64 %i.do, %i.dm                    ; 3 uses
  %i.dr = tail call i64 @llvm.fshl.i64(i64 %i.dm, i64 %i.dm, i64 13)
  %i.ds = xor i64 %i.dq, %i.dr                    ; 3 uses
  %i.dt = tail call i64 @llvm.fshl.i64(i64 %i.dq, i64 %i.dq, i64 32)
  %i.du = add i64 %i.dp, %i.dj                    ; 2 uses
  %i.dv = tail call i64 @llvm.fshl.i64(i64 %i.dj, i64 %i.dj, i64 16)
  %i.dw = xor i64 %i.dv, %i.du                    ; 3 uses
  %i.dx = add i64 %i.dt, %i.dw                    ; 2 uses
  %i.dy = tail call i64 @llvm.fshl.i64(i64 %i.dw, i64 %i.dw, i64 21)
  %i.dz = xor i64 %i.dy, %i.dx                    ; 3 uses
  %i.ea = add i64 %i.ds, %i.du                    ; 3 uses
  %i.eb = tail call i64 @llvm.fshl.i64(i64 %i.ds, i64 %i.ds, i64 17)
  %i.ec = xor i64 %i.eb, %i.ea                    ; 3 uses
  %i.ed = tail call i64 @llvm.fshl.i64(i64 %i.ea, i64 %i.ea, i64 32)
  %i.ee = add i64 %i.ec, %i.dx
  %i.ef = tail call i64 @llvm.fshl.i64(i64 %i.ec, i64 %i.ec, i64 13)
  %i.eg = xor i64 %i.ef, %i.ee                    ; 3 uses
  %i.eh = add i64 %i.ed, %i.dz                    ; 2 uses
  %i.ei = tail call i64 @llvm.fshl.i64(i64 %i.dz, i64 %i.dz, i64 16)
  %i.ej = xor i64 %i.ei, %i.eh                    ; 2 uses
  %i.ek = tail call i64 @llvm.fshl.i64(i64 %i.ej, i64 %i.ej, i64 21)
  %i.el = add i64 %i.eg, %i.eh                    ; 3 uses
  %i.em = tail call i64 @llvm.fshl.i64(i64 %i.eg, i64 %i.eg, i64 17)
  %i.en = tail call i64 @llvm.fshl.i64(i64 %i.el, i64 %i.el, i64 32)
  %i.eo = xor i64 %i.ek, %i.em
  %i.ep = xor i64 %i.eo, %i.en
  %i.eq = xor i64 %i.ep, %i.el
  ret i64 %i.eq
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v4i64(<4 x i64>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
end_hunk_0
