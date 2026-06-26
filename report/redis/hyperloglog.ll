inline.NumInlined: 34
inline.NumDeleted: 3
begin_hunk_0_@hllPatLen:bb.a
  %i.bx = add nuw nsw i32 %i.bw, 1
  %i.by = and i64 %i.bs, 16383
  store i64 %i.by, ptr %2, align 8, !tbaa !13
  ret i32 %i.bx
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @hllDenseSet(ptr nofree noundef captures(none) %0, i64 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #4 {
bb.a:
  %i.a = mul nsw i64 %1, 6                        ; 2 uses
  %i.b = sdiv i64 %i.a, 8
  %i.c = and i64 %i.a, 6                          ; 4 uses
  %i.d = sub nuw nsw i64 8, %i.c                  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.b ; 3 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !17    ; 2 uses
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr i8, ptr %i.e, i64 1        ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !17    ; 2 uses
  %i.j = zext i8 %i.i to i64
  %i.k = lshr i64 %i.g, %i.c
  %i.l = shl nuw nsw i64 %i.j, %i.d
  %i.m = or i64 %i.l, %i.k
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = and i32 %i.n, 63
  %i.p = zext i8 %2 to i32
  %i.q = icmp samesign ult i32 %i.o, %i.p
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = zext i8 %2 to i64                        ; 2 uses
  %i.s = trunc nuw nsw i64 %i.c to i8
  %i.t = shl i8 63, %i.s
  %i.u = xor i8 %i.t, -1
  %i.v = and i8 %i.f, %i.u
  %i.w = shl nuw nsw i64 %i.r, %i.c
  %i.x = trunc i64 %i.w to i8
  %i.y = or i8 %i.v, %i.x
  store i8 %i.y, ptr %i.e, align 1, !tbaa !17
  %i.z = trunc nuw nsw i64 %i.d to i16
  %i.aa = ashr i16 -64, %i.z
  %i.ab = trunc nsw i16 %i.aa to i8
  %i.ac = and i8 %i.i, %i.ab
  %i.ad = lshr i64 %i.r, %i.d
  %i.ae = trunc nuw nsw i64 %i.ad to i8
  %i.af = or i8 %i.ac, %i.ae
  store i8 %i.af, ptr %i.h, align 1, !tbaa !17
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @hllDenseAdd(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = mul i64 %2, -4132994306676758123
  %i.b = xor i64 %i.a, 2915580697                 ; 3 uses
  %i.c = and i64 %2, 7
  %i.d = and i64 %2, -8                           ; 2 uses
  %i.e = getelementptr i8, ptr %1, i64 %i.d       ; 3 uses
  %.not39.i.i = icmp samesign eq i64 %i.d, 0
  br i1 %.not39.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %i.f = add i64 %2, -8                           ; 2 uses
  %i.g = and i64 %i.f, 8
  %lcmp.mod.not.not = icmp eq i64 %i.g, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.prol, label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.h = load i64, ptr %1, align 8, !tbaa !13
  %i.i = mul i64 %i.h, -4132994306676758123       ; 2 uses
  %i.j = lshr i64 %i.i, 47
  %i.k = xor i64 %i.j, %i.i
  %i.l = mul i64 %i.k, -4132994306676758123
  %i.m = xor i64 %i.l, %i.b
  %i.n = mul i64 %i.m, -4132994306676758123       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.preheader ], [ %i.n, %.lr.ph.i.i.prol ]
  %.041.i.i.unr = phi i64 [ %i.b, %.lr.ph.i.i.preheader ], [ %i.n, %.lr.ph.i.i.prol ]
  %.03840.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.preheader ], [ %i.o, %.lr.ph.i.i.prol ]
  %i.p = icmp ult i64 %i.f, 8
  br i1 %i.p, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.041.i.i = phi i64 [ %i.ae, %.lr.ph.i.i ], [ %.041.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.03840.i.i = phi ptr [ %i.af, %.lr.ph.i.i ], [ %.03840.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 3 uses
  %i.q = load i64, ptr %.03840.i.i, align 8, !tbaa !13
  %i.r = mul i64 %i.q, -4132994306676758123       ; 2 uses
  %i.s = lshr i64 %i.r, 47
  %i.t = xor i64 %i.s, %i.r
  %i.u = mul i64 %i.t, -4132994306676758123
  %i.v = xor i64 %i.u, %.041.i.i
  %i.w = mul i64 %i.v, -4132994306676758123
  %i.x = getelementptr inbounds nuw i8, ptr %.03840.i.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !13
  %i.z = mul i64 %i.y, -4132994306676758123       ; 2 uses
  %i.aa = lshr i64 %i.z, 47
  %i.ab = xor i64 %i.aa, %i.z
  %i.ac = mul i64 %i.ab, -4132994306676758123
  %i.ad = xor i64 %i.ac, %i.w
  %i.ae = mul i64 %i.ad, -4132994306676758123     ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.03840.i.i, i64 16 ; 2 uses
  %.not.i.i.1 = icmp eq ptr %i.af, %i.e
  br i1 %.not.i.i.1, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !15

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.a
  %.038.lcssa.i.i = phi ptr [ %1, %bb.a ], [ %i.e, %.lr.ph.i.i ], [ %i.e, %.lr.ph.i.i.prol.loopexit ] ; 7 uses
  %.0.lcssa.i.i = phi i64 [ %i.b, %bb.a ], [ %.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.ae, %.lr.ph.i.i ] ; 8 uses
  switch i64 %i.c, label %default.unreachable [
    i64 7, label %bb.b
    i64 6, label %bb.c
    i64 5, label %bb.d
    i64 4, label %bb.e
    i64 3, label %bb.f
    i64 2, label %bb.g
    i64 1, label %bb.h
    i64 0, label %hllPatLen.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.038.lcssa.i.i, i64 6
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !17
  %i.ai = zext i8 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 48
  %i.ak = xor i64 %i.aj, %.0.lcssa.i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.i.i
  %.1.i.i = phi i64 [ %i.ak, %bb.b ], [ %.0.lcssa.i.i, %._crit_edge.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %.038.lcssa.i.i, i64 5
  %i.am = load i8, ptr %i.al, align 1, !tbaa !17
  %i.an = zext i8 %i.am to i64
  %i.ao = shl nuw nsw i64 %i.an, 40
  %i.ap = xor i64 %i.ao, %.1.i.i
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  %.2.i.i = phi i64 [ %i.ap, %bb.c ], [ %.0.lcssa.i.i, %._crit_edge.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.038.lcssa.i.i, i64 4
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !17
  %i.as = zext i8 %i.ar to i64
  %i.at = shl nuw nsw i64 %i.as, 32
  %i.au = xor i64 %i.at, %.2.i.i
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i
  %.3.i.i = phi i64 [ %i.au, %bb.d ], [ %.0.lcssa.i.i, %._crit_edge.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %.038.lcssa.i.i, i64 3
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !17
  %i.ax = zext i8 %i.aw to i64
  %i.ay = shl nuw nsw i64 %i.ax, 24
  %i.az = xor i64 %i.ay, %.3.i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i
  %.4.i.i = phi i64 [ %i.az, %bb.e ], [ %.0.lcssa.i.i, %._crit_edge.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.038.lcssa.i.i, i64 2
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !17
  %i.bc = zext i8 %i.bb to i64
  %i.bd = shl nuw nsw i64 %i.bc, 16
  %i.be = xor i64 %i.bd, %.4.i.i
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i
  %.5.i.i = phi i64 [ %i.be, %bb.f ], [ %.0.lcssa.i.i, %._crit_edge.i.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.038.lcssa.i.i, i64 1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !17
  %i.bh = zext i8 %i.bg to i64
  %i.bi = shl nuw nsw i64 %i.bh, 8
  %i.bj = xor i64 %i.bi, %.5.i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i
  %.6.i.i = phi i64 [ %i.bj, %bb.g ], [ %.0.lcssa.i.i, %._crit_edge.i.i ]
  %i.bk = load i8, ptr %.038.lcssa.i.i, align 1, !tbaa !17
  %i.bl = zext i8 %i.bk to i64
  %i.bm = xor i64 %.6.i.i, %i.bl
  %i.bn = mul i64 %i.bm, -4132994306676758123
  br label %hllPatLen.exit

default.unreachable:                              ; preds = %._crit_edge.i.i
  unreachable

hllPatLen.exit:                                   ; preds = %._crit_edge.i.i, %bb.h
  %.7.i.i = phi i64 [ %i.bn, %bb.h ], [ %.0.lcssa.i.i, %._crit_edge.i.i ] ; 2 uses
  %i.bo = lshr i64 %.7.i.i, 47
  %i.bp = xor i64 %i.bo, %.7.i.i
  %i.bq = mul i64 %i.bp, -4132994306676758123     ; 2 uses
  %i.br = lshr i64 %i.bq, 47
  %i.bs = xor i64 %i.br, %i.bq                    ; 2 uses
  %i.bt = lshr i64 %i.bs, 14
  %i.bu = or disjoint i64 %i.bt, 1125899906842624
  %i.bv = tail call range(i64 0, 51) i64 @llvm.cttz.i64(i64 %i.bu, i1 true)
  %3 = trunc nuw nsw i64 %i.bv to i8
  %4 = add nuw nsw i8 %3, 1                       ; 2 uses
  %i.bw = and i64 %i.bs, 16383
  %i.bx = mul nuw nsw i64 %i.bw, 6                ; 2 uses
  %.zext = lshr i64 %i.bx, 3
  %i.by = and i64 %i.bx, 6                        ; 4 uses
  %i.bz = sub nuw nsw i64 8, %i.by                ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 %.zext ; 3 uses
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !17  ; 2 uses
  %i.cc = zext i8 %i.cb to i64
  %i.cd = getelementptr i8, ptr %i.ca, i64 1      ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !17  ; 2 uses
  %i.cf = zext i8 %i.ce to i64
  %i.cg = lshr i64 %i.cc, %i.by
  %i.ch = shl nuw nsw i64 %i.cf, %i.bz
  %i.ci = or i64 %i.ch, %i.cg
  %i.cj = trunc nuw nsw i64 %i.ci to i32
  %i.ck = and i32 %i.cj, 63
  %5 = zext nneg i8 %4 to i32
  %6 = icmp samesign ult i32 %i.ck, %5
  br i1 %6, label %bb.i, label %hllDenseSet.exit

bb.i:                                             ; preds = %hllPatLen.exit
  %7 = zext nneg i8 %4 to i64                     ; 2 uses
  %i.cl = trunc nuw nsw i64 %i.by to i8
  %i.cm = shl i8 63, %i.cl
  %i.cn = xor i8 %i.cm, -1
  %i.co = and i8 %i.cb, %i.cn
  %i.cp = shl nuw nsw i64 %7, %i.by
  %i.cq = trunc i64 %i.cp to i8
  %i.cr = or i8 %i.co, %i.cq
  store i8 %i.cr, ptr %i.ca, align 1, !tbaa !17
  %i.cs = trunc nuw nsw i64 %i.bz to i16
  %i.ct = ashr i16 -64, %i.cs
  %i.cu = trunc nsw i16 %i.ct to i8
  %i.cv = and i8 %i.ce, %i.cu
  %i.cw = lshr i64 %7, %i.bz
  %i.cx = trunc nuw nsw i64 %i.cw to i8
  %i.cy = or i8 %i.cv, %i.cx
  store i8 %i.cy, ptr %i.cd, align 1, !tbaa !17
  br label %hllDenseSet.exit

hllDenseSet.exit:                                 ; preds = %hllPatLen.exit, %bb.i
  %.0.i = phi i32 [ 1, %bb.i ], [ 0, %hllPatLen.exit ]
  ret i32 %.0.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @hllDenseRegHisto(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.068 = phi i32 [ 0, %bb.a ], [ %i.ec, %bb.b ]
  %.05967 = phi ptr [ %0, %bb.a ], [ %i.eb, %bb.b ] ; 13 uses
  %i.a = load i8, ptr %.05967, align 1, !tbaa !17
  %i.b = zext i8 %i.a to i32                      ; 2 uses
  %i.c = and i32 %i.b, 63
  %i.d = zext nneg i32 %i.c to i64
  %i.e = lshr i32 %i.b, 6
  %i.f = getelementptr inbounds nuw i8, ptr %.05967, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !17
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = shl nuw nsw i32 %i.h, 2
  %.masked = and i32 %i.i, 60
  %i.j = or disjoint i32 %.masked, %i.e
  %i.k = zext nneg i32 %i.j to i64
  %i.l = lshr i32 %i.h, 4
  %i.m = getelementptr inbounds nuw i8, ptr %.05967, i64 2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !17
  %i.o = zext i8 %i.n to i32                      ; 2 uses
  %i.p = shl nuw nsw i32 %i.o, 4
  %.masked60 = and i32 %i.p, 48
  %i.q = or disjoint i32 %.masked60, %i.l
  %i.r = zext nneg i32 %i.q to i64
  %i.s = lshr i32 %i.o, 2
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %.05967, i64 3
  %i.v = load i8, ptr %i.u, align 1, !tbaa !17
  %i.w = zext i8 %i.v to i32                      ; 2 uses
  %i.x = and i32 %i.w, 63
  %i.y = zext nneg i32 %i.x to i64
  %i.z = lshr i32 %i.w, 6
  %i.aa = getelementptr inbounds nuw i8, ptr %.05967, i64 4
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !17
  %i.ac = zext i8 %i.ab to i32                    ; 2 uses
  %i.ad = shl nuw nsw i32 %i.ac, 2
  %.masked61 = and i32 %i.ad, 60
  %i.ae = or disjoint i32 %.masked61, %i.z
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = lshr i32 %i.ac, 4
  %i.ah = getelementptr inbounds nuw i8, ptr %.05967, i64 5
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !17
  %i.aj = zext i8 %i.ai to i32                    ; 2 uses
  %i.ak = shl nuw nsw i32 %i.aj, 4
  %.masked62 = and i32 %i.ak, 48
  %i.al = or disjoint i32 %.masked62, %i.ag
  %i.am = zext nneg i32 %i.al to i64
  %i.an = lshr i32 %i.aj, 2
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %.05967, i64 6
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !17
  %i.ar = zext i8 %i.aq to i32                    ; 2 uses
  %i.as = and i32 %i.ar, 63
  %i.at = zext nneg i32 %i.as to i64
  %i.au = lshr i32 %i.ar, 6
  %i.av = getelementptr inbounds nuw i8, ptr %.05967, i64 7
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !17
  %i.ax = zext i8 %i.aw to i32                    ; 2 uses
  %i.ay = shl nuw nsw i32 %i.ax, 2
  %.masked63 = and i32 %i.ay, 60
  %i.az = or disjoint i32 %.masked63, %i.au
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = lshr i32 %i.ax, 4
  %i.bc = getelementptr inbounds nuw i8, ptr %.05967, i64 8
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !17
  %i.be = zext i8 %i.bd to i32                    ; 2 uses
  %i.bf = shl nuw nsw i32 %i.be, 4
  %.masked64 = and i32 %i.bf, 48
  %i.bg = or disjoint i32 %.masked64, %i.bb
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = lshr i32 %i.be, 2
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %.05967, i64 9
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !17
  %i.bm = zext i8 %i.bl to i32                    ; 2 uses
  %i.bn = and i32 %i.bm, 63
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = lshr i32 %i.bm, 6
  %i.bq = getelementptr inbounds nuw i8, ptr %.05967, i64 10
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !17
  %i.bs = zext i8 %i.br to i32                    ; 2 uses
  %i.bt = shl nuw nsw i32 %i.bs, 2
  %.masked65 = and i32 %i.bt, 60
  %i.bu = or disjoint i32 %.masked65, %i.bp
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = lshr i32 %i.bs, 4
  %i.bx = getelementptr inbounds nuw i8, ptr %.05967, i64 11
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !17
  %i.bz = zext i8 %i.by to i32                    ; 2 uses
  %i.ca = shl nuw nsw i32 %i.bz, 4
  %.masked66 = and i32 %i.ca, 48
  %i.cb = or disjoint i32 %.masked66, %i.bw
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = lshr i32 %i.bz, 2
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.d ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !9
  %i.ch = add nsw i32 %i.cg, 1
  store i32 %i.ch, ptr %i.cf, align 4, !tbaa !9
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.k ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !9
  %i.ck = add nsw i32 %i.cj, 1
  store i32 %i.ck, ptr %i.ci, align 4, !tbaa !9
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.r ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !9
  %i.cn = add nsw i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !9
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.t ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !9
  %i.cq = add nsw i32 %i.cp, 1
  store i32 %i.cq, ptr %i.co, align 4, !tbaa !9
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.y ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !9
  %i.ct = add nsw i32 %i.cs, 1
  store i32 %i.ct, ptr %i.cr, align 4, !tbaa !9
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.af ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !9
  %i.cw = add nsw i32 %i.cv, 1
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !9
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.am ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !9
  %i.cz = add nsw i32 %i.cy, 1
  store i32 %i.cz, ptr %i.cx, align 4, !tbaa !9
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ao ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !9
  %i.dc = add nsw i32 %i.db, 1
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !9
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.at ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !9
  %i.df = add nsw i32 %i.de, 1
  store i32 %i.df, ptr %i.dd, align 4, !tbaa !9
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ba ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !9
  %i.di = add nsw i32 %i.dh, 1
  store i32 %i.di, ptr %i.dg, align 4, !tbaa !9
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bh ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !9
  %i.dl = add nsw i32 %i.dk, 1
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !9
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bj ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !9
  %i.do = add nsw i32 %i.dn, 1
  store i32 %i.do, ptr %i.dm, align 4, !tbaa !9
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bo ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !9
  %i.dr = add nsw i32 %i.dq, 1
  store i32 %i.dr, ptr %i.dp, align 4, !tbaa !9
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bv ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !9
  %i.du = add nsw i32 %i.dt, 1
  store i32 %i.du, ptr %i.ds, align 4, !tbaa !9
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cc ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !9
  %i.dx = add nsw i32 %i.dw, 1
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !9
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ce ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !9
  %i.ea = add nsw i32 %i.dz, 1
  store i32 %i.ea, ptr %i.dy, align 4, !tbaa !9
  %i.eb = getelementptr inbounds nuw i8, ptr %.05967, i64 12
  %i.ec = add nuw nsw i32 %.068, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ec, 1024
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !18

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @hllSparseToDense(ptr nofree noundef captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 9 uses
  %i.c = getelementptr i8, ptr %i.b, i64 -1
  %.val.i = load i8, ptr %i.c, align 1, !tbaa !17 ; 2 uses
  %i.d = and i8 %.val.i, 7
  switch i8 %i.d, label %sdslen.exit [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i8 %.val.i, 3
end_hunk_0
begin_hunk_1_@pfmergeCommand:bb.a
bb.v:                                             ; preds = %bb.s
  %i.dy = call i32 @hllSparseSet(ptr noundef nonnull %.0, i64 noundef %indvars.iv78, i8 noundef zeroext %i.cn) ; 0 uses
  br label %hllDenseSet.exit

hllDenseSet.exit:                                 ; preds = %bb.u, %bb.t, %bb.s, %bb.v, %bb.r
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next79, 16384
  br i1 %exitcond.not, label %hllDenseCompress.exit, label %bb.r, !llvm.loop !98

hllDenseCompress.exit:                            ; preds = %bb.q, %hllDenseSet.exit, %bb.p
  %i.dz = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !19
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 15 ; 2 uses
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !17
  %i.ed = or i8 %i.ec, -128
  store i8 %i.ed, ptr %i.eb, align 1, !tbaa !17
  %i.ee = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !87
  %.not66 = icmp eq i32 %i.ee, 0
  br i1 %.not66, label %bb.x, label %bb.w

bb.w:                                             ; preds = %hllDenseCompress.exit
  %i.ef = load ptr, ptr %i.aa, align 8, !tbaa !70
  %i.eg = load ptr, ptr %i.ac, align 8, !tbaa !85
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !86
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !19
  %i.el = call i32 @getKeySlot(ptr noundef %i.ek) #19
  %i.em = call i64 @kvobjAllocSize(ptr noundef nonnull %.0) #19
  call void @updateSlotAllocSize(ptr noundef %i.ef, i32 noundef %i.el, ptr noundef nonnull %.0, i64 noundef %.060, i64 noundef %i.em) #19
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %hllDenseCompress.exit
  %i.en = load ptr, ptr %i.aa, align 8, !tbaa !70
  %i.eo = load ptr, ptr %i.ac, align 8, !tbaa !85
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !86
  call void @keyModified(ptr noundef %0, ptr noundef %i.en, ptr noundef %i.eq, ptr noundef nonnull %.0, i32 noundef 1) #19
  %i.er = load ptr, ptr %i.ac, align 8, !tbaa !85
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !86
  %i.eu = load ptr, ptr %i.aa, align 8, !tbaa !70
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 72
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !90
  call void @notifyKeyspaceEvent(i32 noundef 8, ptr noundef nonnull @.str.7, ptr noundef %i.et, i32 noundef %i.ew) #19
  %i.ex = load ptr, ptr %i.aa, align 8, !tbaa !70
  %i.ey = load ptr, ptr %i.ac, align 8, !tbaa !85
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !86
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !19
  %i.fd = call i32 @getKeySlot(ptr noundef %i.fc) #19
  %i.fe = call i64 @stringObjectLen(ptr noundef nonnull %.0) #19
  call void @updateKeysizesHist(ptr noundef %i.ex, i32 noundef %i.fd, i32 noundef 0, i64 noundef %i.az, i64 noundef %i.fe) #19
  %i.ff = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !93
  %i.fg = add nsw i64 %i.ff, 1
  store i64 %i.fg, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !93
  %i.fh = load ptr, ptr @shared, align 8, !tbaa !99
  call void @addReply(ptr noundef %0, ptr noundef %i.fh) #19
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.e, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @pfselftestCommand(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [16384 x i8], align 16            ; 4 uses
  %i.b = tail call ptr @sdsnewlen(ptr noundef null, i64 noundef 12304) #19 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  br label %.preheader126

.preheader126:                                    ; preds = %bb.a, %bb.d
  %.084137 = phi i32 [ 0, %bb.a ], [ %i.bb, %bb.d ]
  br label %bb.b

bb.b:                                             ; preds = %.preheader126, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader126 ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.d = tail call i32 @rand() #19
  %i.e = and i32 %i.d, 63                         ; 2 uses
  %i.f = trunc nuw nsw i32 %i.e to i8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 %i.f, ptr %i.g, align 1, !tbaa !17
  %i.h = trunc i64 %indvars.iv to i32
  %i.i = mul i32 %i.h, 6                          ; 2 uses
  %i.j = lshr i32 %i.i, 3
  %i.k = zext nneg i32 %i.j to i64
  %i.l = and i32 %i.i, 6                          ; 2 uses
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = sub nuw nsw i64 8, %i.m                  ; 2 uses
  %i.o = zext nneg i32 %i.e to i64                ; 2 uses
  %i.p = shl nuw nsw i32 63, %i.l
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.k ; 3 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !17
  %i.s = trunc i32 %i.p to i8
  %i.t = xor i8 %i.s, -1
  %i.u = and i8 %i.r, %i.t
  %i.v = shl nuw nsw i64 %i.o, %i.m
  %i.w = trunc i64 %i.v to i8
  %i.x = or i8 %i.u, %i.w
  store i8 %i.x, ptr %i.q, align 1, !tbaa !17
  %i.y = trunc nuw nsw i64 %i.n to i16
  %i.z = ashr i16 -64, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !17
  %i.ac = trunc nsw i16 %i.z to i8
  %i.ad = and i8 %i.ab, %i.ac
  %i.ae = lshr i64 %i.o, %i.n
  %i.af = trunc nuw nsw i64 %i.ae to i8
  %i.ag = or i8 %i.ad, %i.af
  store i8 %i.ag, ptr %i.aa, align 1, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16384
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !100

.preheader:                                       ; preds = %bb.b, %bb.c
  %indvars.iv151 = phi i64 [ %indvars.iv.next152, %bb.c ], [ 0, %bb.b ] ; 4 uses
  %i.ah = trunc i64 %indvars.iv151 to i32
  %i.ai = mul i32 %i.ah, 6                        ; 2 uses
  %i.aj = lshr i32 %i.ai, 3
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = and i32 %i.ai, 6                        ; 2 uses
  %i.am = sub nuw nsw i32 8, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ak ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !17
  %i.ap = zext i8 %i.ao to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !17
  %i.as = zext i8 %i.ar to i32
  %i.at = lshr i32 %i.ap, %i.al
  %i.au = shl nuw nsw i32 %i.as, %i.am
  %i.av = or i32 %i.au, %i.at
  %i.aw = and i32 %i.av, 63                       ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv151
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !17
  %i.az = zext i8 %i.ay to i32                    ; 2 uses
  %.not98 = icmp eq i32 %i.aw, %i.az
  br i1 %.not98, label %bb.c, label %.thread123

.thread123:                                       ; preds = %.preheader
  %i.ba = trunc nuw nsw i64 %indvars.iv151 to i32
  tail call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %i.ba, i32 noundef %i.az, i32 noundef %i.aw) #19
  tail call void @sdsfree(ptr noundef nonnull %i.b) #19
  br label %bb.o

bb.c:                                             ; preds = %.preheader
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %exitcond154.not = icmp eq i64 %indvars.iv.next152, 16384
  br i1 %exitcond154.not, label %bb.d, label %.preheader, !llvm.loop !101

bb.d:                                             ; preds = %bb.c
  %i.bb = add nuw nsw i32 %.084137, 1             ; 2 uses
  %exitcond155.not = icmp eq i32 %i.bb, 1000
  br i1 %exitcond155.not, label %bb.e, label %.preheader126, !llvm.loop !102

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12288) %i.c, i8 0, i64 12288, i1 false)
  %i.bc = tail call ptr @sdsnewlen(ptr noundef null, i64 noundef 18) #19 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store i8 127, ptr %i.bd, align 1, !tbaa !17
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 17
  store i8 -1, ptr %i.be, align 1, !tbaa !17
  %i.bf = tail call ptr @createObject(i32 noundef 0, ptr noundef %i.bc) #19 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 4 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !19 ; 2 uses
  store i32 1280072008, ptr %i.bh, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store i8 1, ptr %i.bi, align 1, !tbaa !17
  %i.bj = tail call i32 @rand() #19
  %i.bk = sext i32 %i.bj to i64
  %i.bl = tail call i32 @rand() #19
  %i.bm = sext i32 %i.bl to i64
  %i.bn = shl nsw i64 %i.bm, 32
  %i.bo = or i64 %i.bn, %i.bk
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.critedge100
  %indvars.iv156 = phi i64 [ 1, %bb.e ], [ %indvars.iv.next157, %.critedge100 ] ; 9 uses
  %.085138 = phi i64 [ 1, %bb.e ], [ %.2, %.critedge100 ] ; 2 uses
  %i.bp = xor i64 %i.bo, %indvars.iv156
  %i.bq = mul i64 %i.bp, -4132994306676758123     ; 2 uses
  %i.br = lshr i64 %i.bq, 47
  %i.bs = xor i64 %i.br, %i.bq
  %i.bt = mul i64 %i.bs, -4132994306676758123
  %i.bu = xor i64 %i.bt, 3829533692205168561
  %i.bv = mul i64 %i.bu, -4132994306676758123     ; 2 uses
  %i.bw = lshr i64 %i.bv, 47
  %i.bx = xor i64 %i.bw, %i.bv
  %i.by = mul i64 %i.bx, -4132994306676758123     ; 2 uses
  %i.bz = lshr i64 %i.by, 47
  %i.ca = xor i64 %i.bz, %i.by                    ; 2 uses
  %i.cb = lshr i64 %i.ca, 14
  %i.cc = or disjoint i64 %i.cb, 1125899906842624
  %i.cd = tail call range(i64 0, 51) i64 @llvm.cttz.i64(i64 %i.cc, i1 true)
  %1 = trunc nuw nsw i64 %i.cd to i8
  %2 = add nuw nsw i8 %1, 1                       ; 4 uses
  %i.ce = and i64 %i.ca, 16383                    ; 2 uses
  %i.cf = mul nuw nsw i64 %i.ce, 6                ; 2 uses
  %.zext.i = lshr i64 %i.cf, 3                    ; 2 uses
  %i.cg = and i64 %i.cf, 6                        ; 7 uses
  %i.ch = sub nuw nsw i64 8, %i.cg                ; 6 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 %.zext.i ; 3 uses
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !17  ; 2 uses
  %i.ck = zext i8 %i.cj to i64
  %i.cl = getelementptr i8, ptr %i.ci, i64 1      ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !17  ; 2 uses
  %i.cn = zext i8 %i.cm to i64
  %i.co = lshr i64 %i.ck, %i.cg
  %i.cp = shl nuw nsw i64 %i.cn, %i.ch
  %i.cq = or i64 %i.cp, %i.co
  %i.cr = trunc nuw nsw i64 %i.cq to i32
  %i.cs = and i32 %i.cr, 63
  %3 = zext nneg i8 %2 to i32                     ; 2 uses
  %4 = icmp samesign ult i32 %i.cs, %3
  br i1 %4, label %bb.f, label %hllDenseAdd.exit

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %5 = zext nneg i8 %2 to i64                     ; 2 uses
  %i.ct = trunc nuw nsw i64 %i.cg to i8
  %i.cu = shl i8 63, %i.ct
  %i.cv = xor i8 %i.cu, -1
  %i.cw = and i8 %i.cj, %i.cv
  %i.cx = shl nuw nsw i64 %5, %i.cg
  %i.cy = trunc i64 %i.cx to i8
  %i.cz = or i8 %i.cw, %i.cy
  store i8 %i.cz, ptr %i.ci, align 1, !tbaa !17
  %i.da = trunc nuw nsw i64 %i.ch to i16
  %i.db = ashr i16 -64, %i.da
  %i.dc = trunc nsw i16 %i.db to i8
  %i.dd = and i8 %i.cm, %i.dc
  %i.de = lshr i64 %5, %i.ch
  %i.df = trunc nuw nsw i64 %i.de to i8
  %i.dg = or i8 %i.dd, %i.df
  store i8 %i.dg, ptr %i.cl, align 1, !tbaa !17
  br label %hllDenseAdd.exit

hllDenseAdd.exit:                                 ; preds = %.lr.ph.i.i.i, %bb.f
  %i.dh = load ptr, ptr %i.bg, align 8, !tbaa !19 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !17
  switch i8 %i.dj, label %hllAdd.exit [
    i8 0, label %.lr.ph.i.i.i107
    i8 1, label %.lr.ph.i.i.i102.preheader
  ]

.lr.ph.i.i.i102.preheader:                        ; preds = %hllDenseAdd.exit
  %i.dk = tail call range(i32 -1, 2) i32 @hllSparseSet(ptr noundef nonnull %i.bf, i64 noundef %i.ce, i8 noundef zeroext %2) ; 0 uses
  br label %hllAdd.exit

.lr.ph.i.i.i107:                                  ; preds = %hllDenseAdd.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.zext.i ; 3 uses
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !17  ; 2 uses
  %i.do = zext i8 %i.dn to i64
  %i.dp = getelementptr i8, ptr %i.dm, i64 1      ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !17  ; 2 uses
  %i.dr = zext i8 %i.dq to i64
  %i.ds = lshr i64 %i.do, %i.cg
  %i.dt = shl nuw nsw i64 %i.dr, %i.ch
  %i.du = or i64 %i.dt, %i.ds
  %i.dv = trunc nuw nsw i64 %i.du to i32
  %i.dw = and i32 %i.dv, 63
  %6 = icmp samesign ult i32 %i.dw, %3
  br i1 %6, label %bb.g, label %hllAdd.exit

bb.g:                                             ; preds = %.lr.ph.i.i.i107
  %7 = zext nneg i8 %2 to i64                     ; 2 uses
  %i.dx = trunc nuw nsw i64 %i.cg to i8
  %i.dy = shl i8 63, %i.dx
  %i.dz = xor i8 %i.dy, -1
  %i.ea = and i8 %i.dn, %i.dz
  %i.eb = shl nuw nsw i64 %7, %i.cg
  %i.ec = trunc i64 %i.eb to i8
  %i.ed = or i8 %i.ea, %i.ec
  store i8 %i.ed, ptr %i.dm, align 1, !tbaa !17
  %i.ee = trunc nuw nsw i64 %i.ch to i16
  %i.ef = ashr i16 -64, %i.ee
  %i.eg = trunc nsw i16 %i.ef to i8
  %i.eh = and i8 %i.dq, %i.eg
  %i.ei = lshr i64 %7, %i.ch
  %i.ej = trunc nuw nsw i64 %i.ei to i8
  %i.ek = or i8 %i.eh, %i.ej
  store i8 %i.ek, ptr %i.dp, align 1, !tbaa !17
  br label %hllAdd.exit

hllAdd.exit:                                      ; preds = %bb.g, %.lr.ph.i.i.i107, %hllDenseAdd.exit, %.lr.ph.i.i.i102.preheader
  %i.el = icmp eq i64 %.085138, %indvars.iv156
  br i1 %i.el, label %bb.h, label %.critedge100

bb.h:                                             ; preds = %hllAdd.exit
  %i.em = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7992), align 8, !tbaa !25
  %i.en = lshr i64 %i.em, 1
  %i.eo = icmp samesign ugt i64 %i.en, %indvars.iv156
  br i1 %i.eo, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ep = load ptr, ptr %i.bg, align 8, !tbaa !19
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !17
  %.not = icmp eq i8 %i.er, 1
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @addReplyError(ptr noundef %0, ptr noundef nonnull @.str.9) #19
  br label %.thread119

bb.k:                                             ; preds = %bb.h, %bb.i
  %i.es = tail call i64 @hllCount(ptr noundef nonnull %i.b, ptr noundef null)
  %i.et = load ptr, ptr %i.bg, align 8, !tbaa !19
  %i.eu = tail call i64 @hllCount(ptr noundef %i.et, ptr noundef null)
  %.not97 = icmp eq i64 %i.es, %i.eu
  br i1 %.not97, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @addReplyError(ptr noundef %0, ptr noundef nonnull @.str.10) #19
  br label %.thread119

.critedge:                                        ; preds = %bb.k
  %i.ev = tail call i64 @hllCount(ptr noundef nonnull %i.b, ptr noundef null)
  %i.ew = sub nsw i64 %indvars.iv156, %i.ev
  %i.ex = uitofp nneg i64 %indvars.iv156 to double
  %i.ey = fmul nnan double %i.ex, 4.875000e-02
  %i.ez = tail call double @llvm.ceil.f64(double %i.ey)
  %i.fa = fptoui double %i.ez to i64
  %i.fb = icmp eq i64 %indvars.iv156, 10
  %spec.store.select = select i1 %i.fb, i64 1, i64 %i.fa
  %spec.select = tail call i64 @llvm.abs.i64(i64 %i.ew, i1 true) ; 2 uses
  %i.fc = icmp sgt i64 %spec.select, %spec.store.select
  br i1 %i.fc, label %bb.m, label %.thread116

.thread116:                                       ; preds = %.critedge
  %i.fd = mul nuw nsw i64 %indvars.iv156, 10
  br label %.critedge100

bb.m:                                             ; preds = %.critedge
  tail call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef %0, ptr noundef nonnull @.str.11, i64 noundef %indvars.iv156, i64 noundef %spec.select) #19
  br label %.thread119

.critedge100:                                     ; preds = %.thread116, %hllAdd.exit
  %.2 = phi i64 [ %i.fd, %.thread116 ], [ %.085138, %hllAdd.exit ]
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1 ; 2 uses
  %exitcond159.not = icmp eq i64 %indvars.iv.next157, 10000001
  br i1 %exitcond159.not, label %bb.n, label %.lr.ph.i.i.i, !llvm.loop !103

bb.n:                                             ; preds = %.critedge100
  %i.fe = load ptr, ptr @shared, align 8, !tbaa !99
  tail call void @addReply(ptr noundef %0, ptr noundef %i.fe) #19
  br label %.thread119

.thread119:                                       ; preds = %bb.m, %bb.l, %bb.j, %bb.n
  tail call void @sdsfree(ptr noundef %i.b) #19
  tail call void @decrRefCount(ptr noundef nonnull %i.bf) #19
  br label %bb.o

bb.o:                                             ; preds = %.thread123, %.thread119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #14

declare void @addReplyErrorFormat(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #10

declare void @decrRefCount(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @pfdebugCommand(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !86
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19   ; 7 uses
  %i.g = tail call i32 @strcasecmp(ptr noundef %i.f, ptr noundef nonnull @.str.12) #21
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load i32, ptr %i.h, align 8, !tbaa !88
  %.not125 = icmp eq i32 %i.i, 3
  br i1 %.not125, label %bb.c, label %bb.aq

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !86
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !19   ; 2 uses
  %i.n = tail call i32 @strcasecmp(ptr noundef %i.m, ptr noundef nonnull @.str.13) #21
  %.not126 = icmp eq i32 %i.n, 0
  br i1 %.not126, label %.thread147, label %bb.d

.thread147:                                       ; preds = %bb.c
  store i1 false, ptr @simd_enabled, align 4
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = tail call i32 @strcasecmp(ptr noundef %i.m, ptr noundef nonnull @.str.14) #21
  %.not127 = icmp eq i32 %i.o, 0
  br i1 %.not127, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  store i1 true, ptr @simd_enabled, align 4
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.15) #19
  %.b.pr = load i1, ptr @simd_enabled, align 4
  br i1 %.b.pr, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread147, %bb.e
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @__cpu_model, i64 12), align 4
  %i.q = and i32 %i.p, 1024
  %.not128 = icmp eq i32 %i.q, 0
  br i1 %.not128, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.thread, %bb.f, %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = phi ptr [ @.str.16, %bb.f ], [ @.str.17, %bb.g ]
  tail call void @addReplyStatus(ptr noundef nonnull %0, ptr noundef nonnull %i.r) #19
  br label %.thread157

bb.i:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !70
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !86
  %i.w = tail call ptr @lookupKeyWrite(ptr noundef %i.t, ptr noundef %i.v) #19 ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.18) #19
  br label %.thread157

bb.k:                                             ; preds = %bb.i
  %i.y = tail call i32 @isHLLObjectOrReply(ptr noundef nonnull %0, ptr noundef nonnull %i.w)
  %.not129 = icmp eq i32 %i.y, 0
  br i1 %.not129, label %bb.l, label %.thread157

bb.l:                                             ; preds = %bb.k
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !70
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !85
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !86
  %i.ad = tail call ptr @dbUnshareStringValue(ptr noundef %i.z, ptr noundef %i.ac, ptr noundef nonnull %i.w) #19 ; 12 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !19 ; 4 uses
  %i.ag = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !87
  %.not130 = icmp eq i32 %i.ag, 0
  br i1 %.not130, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = tail call i64 @kvobjAllocSize(ptr noundef nonnull %i.ad) #19
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0120 = phi i64 [ %i.ah, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %i.ai = tail call i32 @strcasecmp(ptr noundef %i.f, ptr noundef nonnull @.str.19) #21
  %.not131 = icmp eq i32 %i.ai, 0
  br i1 %.not131, label %bb.o, label %bb.w

bb.o:                                             ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !88
  %.not132 = icmp eq i32 %i.ak, 3
  br i1 %.not132, label %bb.p, label %bb.aq

bb.p:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.am = load i8, ptr %i.al, align 1, !tbaa !17
  %i.an = icmp eq i8 %i.am, 1
  br i1 %i.an, label %bb.q, label %bb.u
end_hunk_1
