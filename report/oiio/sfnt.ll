Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/sfnt?download=true
inline.NumInlined: 86
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 18
begin_hunk_0_@tt_cmap8_validate:bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.aq = or disjoint i32 %i.s, %i.w
  %i.ar = or disjoint i32 %i.aq, %i.ab
  %i.as = or disjoint i32 %i.ar, %i.af
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph114, %.loopexit
  %.0113 = phi i32 [ 0, %.lr.ph114 ], [ %i.cb, %.loopexit ]
  %.089112 = phi i32 [ 0, %.lr.ph114 ], [ %i.ej, %.loopexit ] ; 2 uses
  %.090111 = phi ptr [ %i.a, %.lr.ph114 ], [ %i.cc, %.loopexit ] ; 13 uses
  %i.at = load i8, ptr %.090111, align 1, !tbaa !26
  %i.au = zext i8 %i.at to i32
  %i.av = shl nuw i32 %i.au, 24
  %i.aw = getelementptr inbounds nuw i8, ptr %.090111, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !26
  %i.ay = zext i8 %i.ax to i32
  %i.az = shl nuw nsw i32 %i.ay, 16
  %i.ba = or disjoint i32 %i.az, %i.av            ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.090111, i64 2
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !26
  %i.bd = zext i8 %i.bc to i32
  %i.be = shl nuw nsw i32 %i.bd, 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.090111, i64 3
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !26
  %i.bh = zext i8 %i.bg to i32
  %i.bi = or disjoint i32 %i.be, %i.bh
  %i.bj = or disjoint i32 %i.bi, %i.ba            ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.090111, i64 4
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !26
  %i.bm = zext i8 %i.bl to i32
  %i.bn = shl nuw i32 %i.bm, 24
  %i.bo = getelementptr inbounds nuw i8, ptr %.090111, i64 5
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !26
  %i.bq = zext i8 %i.bp to i32
  %i.br = shl nuw nsw i32 %i.bq, 16
  %i.bs = or disjoint i32 %i.br, %i.bn            ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.090111, i64 6
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !26
  %i.bv = zext i8 %i.bu to i32
  %i.bw = shl nuw nsw i32 %i.bv, 8
  %i.bx = getelementptr inbounds nuw i8, ptr %.090111, i64 7
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !26
  %i.bz = zext i8 %i.by to i32
  %i.ca = or disjoint i32 %i.bw, %i.bz
  %i.cb = or disjoint i32 %i.ca, %i.bs            ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.090111, i64 12
  %i.cd = getelementptr inbounds nuw i8, ptr %.090111, i64 8
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !26
  %i.cf = zext i8 %i.ce to i32
  %i.cg = shl nuw i32 %i.cf, 24
  %i.ch = getelementptr inbounds nuw i8, ptr %.090111, i64 9
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !26
  %i.cj = zext i8 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 16
  %i.cl = or disjoint i32 %i.ck, %i.cg
  %i.cm = getelementptr inbounds nuw i8, ptr %.090111, i64 10
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !26
  %i.co = zext i8 %i.cn to i32
  %i.cp = shl nuw nsw i32 %i.co, 8
  %i.cq = or disjoint i32 %i.cl, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %.090111, i64 11
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !26
  %i.ct = zext i8 %i.cs to i32
  %i.cu = or disjoint i32 %i.cq, %i.ct
  %i.cv = icmp ugt i32 %i.bj, %i.cb
  br i1 %i.cv, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @ft_validator_error(ptr noundef %1, i32 noundef 8) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not = icmp eq i32 %.089112, 0
  %.not93 = icmp ugt i32 %i.bj, %.0113
  %or.cond101 = select i1 %.not, i1 true, i1 %.not93
  br i1 %or.cond101, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @ft_validator_error(ptr noundef %1, i32 noundef 8) #26
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cw = load volatile i32, ptr %i.ao, align 8, !tbaa !30
  %.not94 = icmp eq i32 %i.cw, 0
  br i1 %.not94, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cx = sub i32 %i.cb, %i.bj                    ; 3 uses
  %i.cy = load i32, ptr %i.ap, align 8, !tbaa !32 ; 2 uses
  %i.cz = icmp ule i32 %i.cx, %i.cy
  %i.da = sub nuw i32 %i.cy, %i.cx
  %.not95 = icmp ult i32 %i.cu, %i.da
  %or.cond102 = select i1 %i.cz, i1 %.not95, i1 false
  br i1 %or.cond102, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 16) #26
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.db = add i32 %i.cx, 1                        ; 4 uses
  %.not96 = icmp eq i32 %i.ba, 0
  br i1 %.not96, label %bb.s, label %.preheader

.preheader:                                       ; preds = %bb.n
  %.not100104 = icmp eq i32 %i.db, 0
  br i1 %.not100104, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.r
  %.086106 = phi i32 [ %i.dw, %bb.r ], [ %i.db, %.preheader ]
  %.087105 = phi i32 [ %i.dx, %bb.r ], [ %i.bj, %.preheader ] ; 5 uses
  %i.dc = lshr i32 %.087105, 16
  %i.dd = lshr i32 %.087105, 19
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !26
  %i.dh = zext i8 %i.dg to i32
  %i.di = and i32 %i.dc, 7
  %i.dj = lshr exact i32 128, %i.di
  %i.dk = and i32 %i.dj, %i.dh
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph
  tail call void @ft_validator_error(ptr noundef %1, i32 noundef 8) #26
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph
  %i.dm = lshr i32 %.087105, 3
  %i.dn = and i32 %i.dm, 8191
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !26
  %i.dr = zext i8 %i.dq to i32
  %i.ds = and i32 %.087105, 7
  %i.dt = lshr exact i32 128, %i.ds
  %i.du = and i32 %i.dt, %i.dr
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @ft_validator_error(ptr noundef %1, i32 noundef 8) #26
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.dw = add i32 %.086106, -1                    ; 2 uses
  %i.dx = add i32 %.087105, 1
  %.not100 = icmp eq i32 %i.dw, 0
  br i1 %.not100, label %.loopexit, label %.lr.ph, !llvm.loop !349

bb.s:                                             ; preds = %bb.n
  %.not97 = icmp eq i32 %i.bs, 0
  br i1 %.not97, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 8) #26
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.not98107 = icmp eq i32 %i.db, 0
  br i1 %.not98107, label %.loopexit, label %.lr.ph110

.lr.ph110:                                        ; preds = %bb.u, %bb.w
  %.1109 = phi i32 [ %i.eh, %bb.w ], [ %i.db, %bb.u ]
  %.188108 = phi i32 [ %i.ei, %bb.w ], [ %i.bj, %bb.u ] ; 3 uses
  %i.dy = lshr i32 %.188108, 3
  %i.dz = and i32 %i.dy, 8191
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !26
  %i.ed = zext i8 %i.ec to i32
  %i.ee = and i32 %.188108, 7
  %i.ef = lshr exact i32 128, %i.ee
  %i.eg = and i32 %i.ef, %i.ed
  %.not99 = icmp eq i32 %i.eg, 0
  br i1 %.not99, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph110
  tail call void @ft_validator_error(ptr noundef %1, i32 noundef 8) #26
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph110, %bb.v
  %i.eh = add i32 %.1109, -1                      ; 2 uses
  %i.ei = add i32 %.188108, 1
  %.not98 = icmp eq i32 %i.eh, 0
  br i1 %.not98, label %.loopexit, label %.lr.ph110, !llvm.loop !350

.loopexit:                                        ; preds = %bb.r, %bb.w, %.preheader, %bb.u, %bb.k
  %i.ej = add nuw i32 %.089112, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.ej, %i.as
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !351

._crit_edge:                                      ; preds = %.loopexit, %bb.f
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @tt_cmap8_get_info(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 8, ptr %i.d, align 8, !tbaa !35
  %2 = load i8, ptr %i.c, align 1, !tbaa !26
  %3 = zext i8 %2 to i64
  %4 = shl nuw nsw i64 %3, 24
  %5 = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %6 = load i8, ptr %5, align 1, !tbaa !26
  %7 = zext i8 %6 to i64
  %8 = shl nuw nsw i64 %7, 16
  %9 = or disjoint i64 %8, %4
  %10 = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %11 = load i8, ptr %10, align 1, !tbaa !26
  %12 = zext i8 %11 to i64
  %13 = shl nuw nsw i64 %12, 8
  %14 = or disjoint i64 %9, %13
  %15 = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  %16 = load i8, ptr %15, align 1, !tbaa !26
  %i.e = zext i8 %16 to i64
  %17 = or disjoint i64 %14, %i.e
  store i64 %17, ptr %1, align 8, !tbaa !36
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 65536) i32 @tt_cmap10_char_index(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 1
  %i.e = tail call i32 @llvm.bswap.i32(i32 %i.d)  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.g = icmp ult i32 %1, %i.e
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = load i32, ptr %i.h, align 1
  %i.j = tail call i32 @llvm.bswap.i32(i32 %i.i)
  %i.k = sub nuw i32 %1, %i.e                     ; 2 uses
  %i.l = icmp ult i32 %i.k, %i.j
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = shl i32 %i.k, 1
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.n ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !26
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !26
  %i.u = zext i8 %i.t to i32
  %i.v = or disjoint i32 %i.r, %i.u
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.024 = phi i32 [ 0, %bb.a ], [ %i.v, %bb.c ], [ 0, %bb.b ]
  ret i32 %.024
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 65536) i32 @tt_cmap10_char_next(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i8, ptr %i.c, align 1, !tbaa !26
  %i.e = zext i8 %i.d to i32
  %i.f = shl nuw i32 %i.e, 24
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  %i.h = load i8, ptr %i.g, align 1, !tbaa !26
  %i.i = zext i8 %i.h to i32
  %i.j = shl nuw nsw i32 %i.i, 16
  %i.k = or disjoint i32 %i.j, %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  %i.m = load i8, ptr %i.l, align 1, !tbaa !26
  %i.n = zext i8 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 8
  %i.p = or disjoint i32 %i.k, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 19
  %i.r = load i8, ptr %i.q, align 1, !tbaa !26
  %i.s = zext i8 %i.r to i32
  %i.t = or disjoint i32 %i.p, %i.s               ; 2 uses
  %i.u = load i32, ptr %1, align 4, !tbaa !16     ; 2 uses
  %i.v = icmp eq i32 %i.u, -1
  br i1 %i.v, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.x = load i32, ptr %i.w, align 1
  %i.y = tail call i32 @llvm.bswap.i32(i32 %i.x)  ; 2 uses
  %i.z = add nuw i32 %i.u, 1
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.z, i32 %i.y) ; 3 uses
  %i.aa = sub i32 %spec.select, %i.y              ; 3 uses
  %i.ab = icmp ult i32 %i.aa, %i.t
  br i1 %i.ab, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.ad = shl i32 %i.aa, 1
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ae
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.046 = phi i32 [ %i.aq, %bb.d ], [ %i.aa, %.lr.ph.preheader ]
  %.03445 = phi ptr [ %i.ag, %bb.d ], [ %i.af, %.lr.ph.preheader ] ; 3 uses
  %.13744 = phi i32 [ %i.ap, %bb.d ], [ %spec.select, %.lr.ph.preheader ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.03445, i64 2
  %i.ah = load i8, ptr %.03445, align 1, !tbaa !26
  %i.ai = zext i8 %i.ah to i32
  %i.aj = shl nuw nsw i32 %i.ai, 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.03445, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !26
  %i.am = zext i8 %i.al to i32
  %i.an = or disjoint i32 %i.aj, %i.am            ; 2 uses
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %.lr.ph
  %i.ao = icmp eq i32 %.13744, -1
  br i1 %i.ao, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = add nuw i32 %.13744, 1                  ; 2 uses
  %i.aq = add nuw i32 %.046, 1                    ; 2 uses
  %i.ar = icmp ult i32 %i.aq, %i.t
  br i1 %i.ar, label %.lr.ph, label %._crit_edge, !llvm.loop !352

._crit_edge:                                      ; preds = %bb.d, %.lr.ph, %bb.b
  %.137.lcssa = phi i32 [ %spec.select, %bb.b ], [ %.13744, %.lr.ph ], [ %i.ap, %bb.d ]
  %.1 = phi i32 [ 0, %bb.b ], [ %i.an, %.lr.ph ], [ 0, %bb.d ]
  store i32 %.137.lcssa, ptr %1, align 4, !tbaa !16
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.a, %._crit_edge
  %.038 = phi i32 [ 0, %bb.a ], [ %.1, %._crit_edge ], [ 0, %bb.c ]
  ret i32 %.038
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @tt_cmap10_validate(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.c = load volatile ptr, ptr %i.b, align 8, !tbaa !29
  %i.d = icmp ugt ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 8) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 1
  %i.g = tail call i32 @llvm.bswap.i32(i32 %i.f)  ; 2 uses
  %i.h = zext i32 %i.g to i64                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i8, ptr %i.i, align 1, !tbaa !26
  %i.k = zext i8 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.n = load i8, ptr %i.m, align 1, !tbaa !26
  %i.o = zext i8 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 16
  %i.q = or disjoint i64 %i.p, %i.l
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.s = load i8, ptr %i.r, align 1, !tbaa !26
  %i.t = zext i8 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 8
  %i.v = or disjoint i64 %i.q, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 19
  %i.x = load i8, ptr %i.w, align 1, !tbaa !26
  %i.y = zext i8 %i.x to i64
  %i.z = or disjoint i64 %i.v, %i.y               ; 3 uses
  %i.aa = load volatile ptr, ptr %i.b, align 8, !tbaa !29
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %0 to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = icmp ult i64 %i.ad, %i.h
  %i.af = icmp ult i32 %i.g, 20
  %or.cond = or i1 %i.ae, %i.af
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = add nsw i64 %i.h, -20
  %i.ah = lshr i64 %i.ag, 1
  %i.ai = icmp samesign ult i64 %i.ah, %i.z
  br i1 %i.ai, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 8) #26
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ak = load volatile i32, ptr %i.aj, align 8, !tbaa !30
  %.not = icmp eq i32 %i.ak, 0
  %.not3335 = icmp eq i64 %i.z, 0
  %or.cond38 = select i1 %.not, i1 true, i1 %.not3335
  br i1 %or.cond38, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 224
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.i
  %.037 = phi i64 [ %i.z, %.lr.ph ], [ %i.av, %bb.i ]
  %.03136 = phi ptr [ %i.a, %.lr.ph ], [ %i.am, %bb.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.03136, i64 2
  %i.an = load i8, ptr %.03136, align 1, !tbaa !26
  %i.ao = zext i8 %i.an to i32
  %i.ap = shl nuw nsw i32 %i.ao, 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.03136, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !26
  %i.as = zext i8 %i.ar to i32
  %i.at = or disjoint i32 %i.ap, %i.as
  %i.au = load i32, ptr %i.al, align 8, !tbaa !32
  %.not34 = icmp ult i32 %i.at, %i.au
  br i1 %.not34, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 16) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.av = add nsw i64 %.037, -1                   ; 2 uses
  %.not33 = icmp eq i64 %i.av, 0
  br i1 %.not33, label %.loopexit, label %bb.g, !llvm.loop !353

.loopexit:                                        ; preds = %bb.i, %bb.f
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @tt_cmap10_get_info(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 10, ptr %i.d, align 8, !tbaa !35
  %2 = load i8, ptr %i.c, align 1, !tbaa !26
  %3 = zext i8 %2 to i64
  %4 = shl nuw nsw i64 %3, 24
  %5 = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %6 = load i8, ptr %5, align 1, !tbaa !26
  %7 = zext i8 %6 to i64
  %8 = shl nuw nsw i64 %7, 16
  %9 = or disjoint i64 %8, %4
  %10 = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %11 = load i8, ptr %10, align 1, !tbaa !26
  %12 = zext i8 %11 to i64
  %13 = shl nuw nsw i64 %12, 8
  %14 = or disjoint i64 %9, %13
  %15 = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  %16 = load i8, ptr %15, align 1, !tbaa !26
  %i.e = zext i8 %16 to i64
  %17 = or disjoint i64 %14, %i.e
  store i64 %17, ptr %1, align 8, !tbaa !36
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @tt_cmap12_init(ptr nofree noundef writeonly captures(none) initializes((24, 32), (40, 41), (72, 80)) %0, ptr noundef %1) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.a, align 8, !tbaa !61
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  %2 = load i8, ptr %i.b, align 1, !tbaa !26
  %3 = zext i8 %2 to i64
  %4 = shl nuw nsw i64 %3, 24
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 13
  %6 = load i8, ptr %5, align 1, !tbaa !26
  %7 = zext i8 %6 to i64
  %8 = shl nuw nsw i64 %7, 16
  %9 = or disjoint i64 %8, %4
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 14
  %11 = load i8, ptr %10, align 1, !tbaa !26
  %12 = zext i8 %11 to i64
  %13 = shl nuw nsw i64 %12, 8
  %14 = or disjoint i64 %9, %13
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 15
  %16 = load i8, ptr %15, align 1, !tbaa !26
  %i.c = zext i8 %16 to i64
  %17 = or disjoint i64 %14, %i.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %17, ptr %i.d, align 8, !tbaa !62
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.e, align 8, !tbaa !63
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @tt_cmap12_char_index(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 1              ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %tt_cmap12_char_map_binary.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.a
  %i.e = tail call i32 @llvm.bswap.i32(i32 %i.d)
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.e
  %.067.i = phi i32 [ %.168.i, %bb.e ], [ %i.e, %.preheader.i.preheader ] ; 2 uses
  %.066.i = phi i32 [ %.1.i, %bb.e ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %i.f = add i32 %.066.i, %.067.i
  %i.g = lshr i32 %i.f, 1                         ; 3 uses
  %i.h = mul i32 %i.g, 12
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.i ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 1
  %i.m = tail call i32 @llvm.bswap.i32(i32 %i.l)  ; 2 uses
  %i.n = icmp ult i32 %1, %i.m
  br i1 %i.n, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.preheader.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.p = load i32, ptr %i.o, align 1
  %i.q = tail call i32 @llvm.bswap.i32(i32 %i.p)
  %i.r = icmp ugt i32 %1, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = add nuw i32 %i.g, 1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.u = load i32, ptr %i.t, align 1
  %i.v = tail call i32 @llvm.bswap.i32(i32 %i.u)  ; 2 uses
  %i.w = sub nuw i32 %1, %i.m                     ; 2 uses
  %i.x = xor i32 %i.w, -1
  %i.y = icmp ugt i32 %i.v, %i.x
  %i.z = add i32 %i.v, %i.w
  %spec.select.i = select i1 %i.y, i32 0, i32 %i.z
  br label %tt_cmap12_char_map_binary.exit

bb.e:                                             ; preds = %bb.c, %.preheader.i
  %.168.i = phi i32 [ %.067.i, %bb.c ], [ %i.g, %.preheader.i ] ; 2 uses
  %.1.i = phi i32 [ %i.s, %bb.c ], [ %.066.i, %.preheader.i ] ; 2 uses
  %i.aa = icmp ult i32 %.1.i, %.168.i
  br i1 %i.aa, label %.preheader.i, label %tt_cmap12_char_map_binary.exit, !llvm.loop !0

tt_cmap12_char_map_binary.exit:                   ; preds = %bb.e, %bb.d, %bb.a
  %.172.i = phi i32 [ 0, %bb.a ], [ %spec.select.i, %bb.d ], [ 0, %bb.e ]
  ret i32 %.172.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @tt_cmap12_char_next(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) #3 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !16     ; 2 uses
  %i.b = zext i32 %i.a to i64
  %i.c = icmp eq i32 %i.a, -1
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !63
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !64
  %i.h = icmp eq i64 %i.g, %i.b
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @tt_cmap12_next(ptr noundef nonnull %0)
  %i.i = load i8, ptr %i.d, align 8, !tbaa !63
  %.not15 = icmp eq i8 %i.i, 0
  br i1 %.not15, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load i32, ptr %i.j, align 8, !tbaa !65
  %i.l = load i64, ptr %i.f, align 8, !tbaa !64
  %i.m = trunc i64 %i.l to i32
  store i32 %i.m, ptr %1, align 4, !tbaa !16
  br label %bb.g

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.n = tail call fastcc i32 @tt_cmap12_char_map_binary(ptr noundef nonnull %0, ptr noundef nonnull %1, i8 noundef zeroext 1)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.a
  %.013 = phi i32 [ 0, %bb.a ], [ %i.k, %bb.e ], [ %i.n, %bb.f ], [ 0, %bb.d ]
  ret i32 %.013
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @tt_cmap12_validate(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.c = load volatile ptr, ptr %i.b, align 8, !tbaa !29
  %i.d = icmp ugt ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 8) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 1
  %i.g = tail call i32 @llvm.bswap.i32(i32 %i.f)  ; 3 uses
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i8, ptr %i.i, align 1, !tbaa !26
  %i.k = zext i8 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 24                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.n = load i8, ptr %i.m, align 1, !tbaa !26
  %i.o = zext i8 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 16                 ; 2 uses
  %i.q = or disjoint i64 %i.p, %i.l
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.s = load i8, ptr %i.r, align 1, !tbaa !26
  %i.t = zext i8 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 8                  ; 2 uses
  %i.v = or disjoint i64 %i.q, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.x = load i8, ptr %i.w, align 1, !tbaa !26
  %i.y = zext i8 %i.x to i64                      ; 2 uses
  %i.z = or disjoint i64 %i.v, %i.y               ; 2 uses
  %i.aa = load volatile ptr, ptr %i.b, align 8, !tbaa !29
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %0 to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = icmp ult i64 %i.ad, %i.h
  %i.af = icmp ult i32 %i.g, 16
  %or.cond = or i1 %i.ae, %i.af
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.lhs.trunc = add i32 %i.g, -16
  %i.ag = udiv i32 %.lhs.trunc, 12
  %.zext = zext nneg i32 %i.ag to i64
  %i.ah = icmp samesign ugt i64 %i.z, %.zext
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 8) #26
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not71 = icmp eq i64 %i.z, 0
  br i1 %.not71, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.ak = or disjoint i64 %i.l, %i.p
  %i.al = or disjoint i64 %i.ak, %i.u
  %i.am = or disjoint i64 %i.al, %i.y             ; 2 uses
  %i.an = load i32, ptr %i.a, align 1
  %i.ao = tail call i32 @llvm.bswap.i32(i32 %i.an) ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.aq = load i32, ptr %i.ap, align 1
  %i.ar = tail call i32 @llvm.bswap.i32(i32 %i.aq) ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = load i8, ptr %i.at, align 1, !tbaa !26
  %i.av = zext i8 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 24
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !26
  %i.az = zext i8 %i.ay to i64
  %i.ba = shl nuw nsw i64 %i.az, 16
  %i.bb = or disjoint i64 %i.ba, %i.aw
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !26
  %i.be = zext i8 %i.bd to i64
  %i.bf = shl nuw nsw i64 %i.be, 8
  %i.bg = or disjoint i64 %i.bb, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 27
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !26
  %i.bj = zext i8 %i.bi to i64
  %i.bk = or disjoint i64 %i.bg, %i.bj
  %i.bl = icmp ugt i32 %i.ao, %i.ar
  br i1 %i.bl, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 8) #26
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.g
  %i.bm = load volatile i32, ptr %i.ai, align 8, !tbaa !30
  %.not63.peel = icmp eq i32 %i.bm, 0
  br i1 %.not63.peel, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bn = sub i32 %i.ar, %i.ao                    ; 2 uses
  %i.bo = load i32, ptr %i.aj, align 8, !tbaa !32 ; 2 uses
  %i.bp = icmp uge i32 %i.bo, %i.bn
  %i.bq = sub nuw i32 %i.bo, %i.bn
  %i.br = zext i32 %i.bq to i64
  %.not64.peel = icmp samesign ult i64 %i.bk, %i.br
  %or.cond67.peel = select i1 %i.bp, i1 %.not64.peel, i1 false
  br i1 %or.cond67.peel, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 16) #26
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %exitcond.peel.not = icmp eq i64 %i.am, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %bb.k, %bb.r
  %.070.in = phi i32 [ %i.bw, %bb.r ], [ %i.ar, %bb.k ]
  %.05769 = phi i64 [ %i.cx, %bb.r ], [ 1, %bb.k ]
  %.05868 = phi ptr [ %i.bx, %bb.r ], [ %i.as, %bb.k ] ; 7 uses
  %i.bs = load i32, ptr %.05868, align 1
  %i.bt = tail call i32 @llvm.bswap.i32(i32 %i.bs) ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.05868, i64 4
  %i.bv = load i32, ptr %i.bu, align 1
  %i.bw = tail call i32 @llvm.bswap.i32(i32 %i.bv) ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.05868, i64 12
  %i.by = getelementptr inbounds nuw i8, ptr %.05868, i64 8
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !26
  %i.ca = zext i8 %i.bz to i64
  %i.cb = shl nuw nsw i64 %i.ca, 24
  %i.cc = getelementptr inbounds nuw i8, ptr %.05868, i64 9
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !26
  %i.ce = zext i8 %i.cd to i64
  %i.cf = shl nuw nsw i64 %i.ce, 16
  %i.cg = or disjoint i64 %i.cf, %i.cb
  %i.ch = getelementptr inbounds nuw i8, ptr %.05868, i64 10
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !26
  %i.cj = zext i8 %i.ci to i64
  %i.ck = shl nuw nsw i64 %i.cj, 8
  %i.cl = or disjoint i64 %i.cg, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %.05868, i64 11
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !26
  %i.co = zext i8 %i.cn to i64
  %i.cp = or disjoint i64 %i.cl, %i.co
  %i.cq = icmp ugt i32 %i.bt, %i.bw
  br i1 %i.cq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.peel.next
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 8) #26
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.peel.next
  %.not62 = icmp ult i32 %.070.in, %i.bt
  br i1 %.not62, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 8) #26
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cr = load volatile i32, ptr %i.ai, align 8, !tbaa !30
  %.not63 = icmp eq i32 %i.cr, 0
  br i1 %.not63, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cs = sub i32 %i.bw, %i.bt                    ; 2 uses
  %i.ct = load i32, ptr %i.aj, align 8, !tbaa !32 ; 2 uses
  %i.cu = icmp uge i32 %i.ct, %i.cs
  %i.cv = sub nuw i32 %i.ct, %i.cs
  %i.cw = zext i32 %i.cv to i64
  %.not64 = icmp samesign ult i64 %i.cp, %i.cw
  %or.cond67 = select i1 %i.cu, i1 %.not64, i1 false
  br i1 %or.cond67, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 16) #26
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %i.cx = add nuw nsw i64 %.05769, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.cx, %i.am
  br i1 %exitcond.not, label %._crit_edge, label %.peel.next, !llvm.loop !354

._crit_edge:                                      ; preds = %bb.r, %bb.k, %bb.f
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @tt_cmap12_get_info(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 12, ptr %i.d, align 8, !tbaa !35
  %2 = load i8, ptr %i.c, align 1, !tbaa !26
  %3 = zext i8 %2 to i64
  %4 = shl nuw nsw i64 %3, 24
  %5 = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %6 = load i8, ptr %5, align 1, !tbaa !26
  %7 = zext i8 %6 to i64
  %8 = shl nuw nsw i64 %7, 16
  %9 = or disjoint i64 %8, %4
  %10 = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %11 = load i8, ptr %10, align 1, !tbaa !26
  %12 = zext i8 %11 to i64
  %13 = shl nuw nsw i64 %12, 8
  %14 = or disjoint i64 %9, %13
  %15 = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  %16 = load i8, ptr %15, align 1, !tbaa !26
  %i.e = zext i8 %16 to i64
  %17 = or disjoint i64 %14, %i.e
  store i64 %17, ptr %1, align 8, !tbaa !36
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @tt_cmap13_init(ptr nofree noundef writeonly captures(none) initializes((24, 32), (40, 41), (72, 80)) %0, ptr noundef %1) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.a, align 8, !tbaa !68
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  %2 = load i8, ptr %i.b, align 1, !tbaa !26
  %3 = zext i8 %2 to i64
  %4 = shl nuw nsw i64 %3, 24
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 13
  %6 = load i8, ptr %5, align 1, !tbaa !26
  %7 = zext i8 %6 to i64
  %8 = shl nuw nsw i64 %7, 16
  %9 = or disjoint i64 %8, %4
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 14
  %11 = load i8, ptr %10, align 1, !tbaa !26
  %12 = zext i8 %11 to i64
  %13 = shl nuw nsw i64 %12, 8
  %14 = or disjoint i64 %9, %13
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 15
  %16 = load i8, ptr %15, align 1, !tbaa !26
  %i.c = zext i8 %16 to i64
  %17 = or disjoint i64 %14, %i.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %17, ptr %i.d, align 8, !tbaa !69
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.e, align 8, !tbaa !70
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @tt_cmap13_char_index(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 1              ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %tt_cmap13_char_map_binary.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.a
  %i.e = tail call i32 @llvm.bswap.i32(i32 %i.d)
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.e
  %.061.i = phi i32 [ %.162.i, %bb.e ], [ %i.e, %.preheader.i.preheader ] ; 2 uses
  %.060.i = phi i32 [ %.1.i, %bb.e ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %i.f = add i32 %.060.i, %.061.i
  %i.g = lshr i32 %i.f, 1                         ; 3 uses
  %i.h = mul i32 %i.g, 12
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.i ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 1
  %i.m = tail call i32 @llvm.bswap.i32(i32 %i.l)
  %i.n = icmp ult i32 %1, %i.m
  br i1 %i.n, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.preheader.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.p = load i32, ptr %i.o, align 1
  %i.q = tail call i32 @llvm.bswap.i32(i32 %i.p)
  %i.r = icmp ugt i32 %1, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = add nuw i32 %i.g, 1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.u = load i32, ptr %i.t, align 1
  %i.v = tail call i32 @llvm.bswap.i32(i32 %i.u)
  br label %tt_cmap13_char_map_binary.exit

bb.e:                                             ; preds = %bb.c, %.preheader.i
  %.162.i = phi i32 [ %.061.i, %bb.c ], [ %i.g, %.preheader.i ] ; 2 uses
  %.1.i = phi i32 [ %i.s, %bb.c ], [ %.060.i, %.preheader.i ] ; 2 uses
  %i.w = icmp ult i32 %.1.i, %.162.i
  br i1 %i.w, label %.preheader.i, label %tt_cmap13_char_map_binary.exit, !llvm.loop !1

tt_cmap13_char_map_binary.exit:                   ; preds = %bb.e, %bb.d, %bb.a
  %.166.i = phi i32 [ 0, %bb.a ], [ %i.v, %bb.d ], [ 0, %bb.e ]
  ret i32 %.166.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @tt_cmap13_char_next(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) #3 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !16     ; 2 uses
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = icmp eq i32 %i.a, -1
  br i1 %i.c, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !70
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !71
  %i.h = icmp eq i64 %i.g, %i.b
  br i1 %i.h, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !72   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load i64, ptr %i.k, align 8, !tbaa !69   ; 2 uses
  %i.m = icmp ult i64 %i.j, %i.l
  br i1 %i.m, label %.lr.ph.i, label %tt_cmap13_next.exit.thread

.lr.ph.i:                                         ; preds = %bb.d
  %i.n = add nuw nsw i64 %i.b, 1
  %i.o = load ptr, ptr %0, align 8, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !68
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.lr.ph.i
  %.044.i = phi i64 [ %i.j, %.lr.ph.i ], [ %i.ai, %bb.g ] ; 3 uses
  %.03843.i = phi i64 [ %i.n, %.lr.ph.i ], [ %spec.select.i, %bb.g ]
  %i.s = mul i64 %.044.i, 12
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.s ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i32, ptr %i.u, align 1
  %i.w = tail call i32 @llvm.bswap.i32(i32 %i.v)
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %i.aa = load i32, ptr %i.z, align 1
  %i.ab = tail call i32 @llvm.bswap.i32(i32 %i.aa)
  %i.ac = zext i32 %i.ab to i64
  %i.ad = load i32, ptr %i.y, align 1             ; 2 uses
  %spec.select.i = tail call i64 @llvm.umax.i64(i64 %.03843.i, i64 %i.x) ; 4 uses
  %.not.i = icmp samesign ugt i64 %spec.select.i, %i.ac
  %.not41.i = icmp eq i32 %i.ad, 0
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not41.i
  br i1 %or.cond.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = tail call i32 @llvm.bswap.i32(i32 %i.ad) ; 3 uses
  %i.af = load i64, ptr %i.r, align 8, !tbaa !59
  %i.ag = trunc i64 %i.af to i32
  %i.ah = icmp ult i32 %i.ae, %i.ag
  br i1 %i.ah, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ai = add i64 %.044.i, 1                      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ai, %i.l
  br i1 %exitcond.not.i, label %tt_cmap13_next.exit.thread, label %bb.e, !llvm.loop !2

tt_cmap13_next.exit.thread:                       ; preds = %bb.g, %bb.d
  store i8 0, ptr %i.d, align 8, !tbaa !70
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  store i64 %spec.select.i, ptr %i.f, align 8, !tbaa !71
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.ae, ptr %i.aj, align 8, !tbaa !73
  store i64 %.044.i, ptr %i.i, align 8, !tbaa !72
  %i.ak = trunc nuw i64 %spec.select.i to i32
  store i32 %i.ak, ptr %1, align 4, !tbaa !16
  br label %bb.j

bb.i:                                             ; preds = %bb.c, %bb.b
  %i.al = tail call fastcc i32 @tt_cmap13_char_map_binary(ptr noundef nonnull %0, ptr noundef nonnull %1, i8 noundef zeroext 1)
  br label %bb.j

bb.j:                                             ; preds = %tt_cmap13_next.exit.thread, %bb.i, %bb.h, %bb.a
  %.013 = phi i32 [ 0, %bb.a ], [ %i.ae, %bb.h ], [ %i.al, %bb.i ], [ 0, %tt_cmap13_next.exit.thread ]
  ret i32 %.013
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @tt_cmap13_validate(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.c = load volatile ptr, ptr %i.b, align 8, !tbaa !29
  %i.d = icmp ugt ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 8) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 1
  %i.g = tail call i32 @llvm.bswap.i32(i32 %i.f)  ; 3 uses
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i8, ptr %i.i, align 1, !tbaa !26
  %i.k = zext i8 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 24                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.n = load i8, ptr %i.m, align 1, !tbaa !26
  %i.o = zext i8 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 16                 ; 2 uses
  %i.q = or disjoint i64 %i.p, %i.l
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.s = load i8, ptr %i.r, align 1, !tbaa !26
  %i.t = zext i8 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 8                  ; 2 uses
  %i.v = or disjoint i64 %i.q, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.x = load i8, ptr %i.w, align 1, !tbaa !26
  %i.y = zext i8 %i.x to i64                      ; 2 uses
  %i.z = or disjoint i64 %i.v, %i.y               ; 2 uses
  %i.aa = load volatile ptr, ptr %i.b, align 8, !tbaa !29
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %0 to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = icmp ult i64 %i.ad, %i.h
  %i.af = icmp ult i32 %i.g, 16
  %or.cond = or i1 %i.ae, %i.af
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.lhs.trunc = add i32 %i.g, -16
  %i.ag = udiv i32 %.lhs.trunc, 12
  %.zext = zext nneg i32 %i.ag to i64
  %i.ah = icmp samesign ugt i64 %i.z, %.zext
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 8) #26
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not62 = icmp eq i64 %i.z, 0
  br i1 %.not62, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.ak = or disjoint i64 %i.l, %i.p
  %i.al = or disjoint i64 %i.ak, %i.u
  %i.am = or disjoint i64 %i.al, %i.y             ; 2 uses
  %i.an = load i32, ptr %i.a, align 1
  %i.ao = tail call i32 @llvm.bswap.i32(i32 %i.an)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.aq = load i32, ptr %i.ap, align 1
  %i.ar = tail call i32 @llvm.bswap.i32(i32 %i.aq) ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = load i8, ptr %i.at, align 1, !tbaa !26
  %i.av = zext i8 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 24
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !26
  %i.az = zext i8 %i.ay to i64
  %i.ba = shl nuw nsw i64 %i.az, 16
  %i.bb = or disjoint i64 %i.ba, %i.aw
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !26
  %i.be = zext i8 %i.bd to i64
  %i.bf = shl nuw nsw i64 %i.be, 8
  %i.bg = or disjoint i64 %i.bb, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 27
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !26
  %i.bj = zext i8 %i.bi to i64
  %i.bk = or disjoint i64 %i.bg, %i.bj
  %i.bl = icmp ugt i32 %i.ao, %i.ar
  br i1 %i.bl, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 8) #26
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.g
  %i.bm = load volatile i32, ptr %i.ai, align 8, !tbaa !30
  %.not56.peel = icmp eq i32 %i.bm, 0
  br i1 %.not56.peel, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bn = load i32, ptr %i.aj, align 8, !tbaa !32
  %i.bo = zext i32 %i.bn to i64
  %.not57.peel = icmp samesign ult i64 %i.bk, %i.bo
  br i1 %.not57.peel, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 16) #26
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %exitcond.peel.not = icmp eq i64 %i.am, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %bb.k, %bb.r
  %.061.in = phi i32 [ %i.bt, %bb.r ], [ %i.ar, %bb.k ]
  %.05260 = phi i64 [ %i.cr, %bb.r ], [ 1, %bb.k ]
  %.05359 = phi ptr [ %i.bu, %bb.r ], [ %i.as, %bb.k ] ; 7 uses
  %i.bp = load i32, ptr %.05359, align 1
  %i.bq = tail call i32 @llvm.bswap.i32(i32 %i.bp) ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.05359, i64 4
  %i.bs = load i32, ptr %i.br, align 1
  %i.bt = tail call i32 @llvm.bswap.i32(i32 %i.bs) ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.05359, i64 12
  %i.bv = getelementptr inbounds nuw i8, ptr %.05359, i64 8
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !26
  %i.bx = zext i8 %i.bw to i64
  %i.by = shl nuw nsw i64 %i.bx, 24
  %i.bz = getelementptr inbounds nuw i8, ptr %.05359, i64 9
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !26
  %i.cb = zext i8 %i.ca to i64
  %i.cc = shl nuw nsw i64 %i.cb, 16
  %i.cd = or disjoint i64 %i.cc, %i.by
  %i.ce = getelementptr inbounds nuw i8, ptr %.05359, i64 10
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !26
  %i.cg = zext i8 %i.cf to i64
  %i.ch = shl nuw nsw i64 %i.cg, 8
  %i.ci = or disjoint i64 %i.cd, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %.05359, i64 11
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !26
  %i.cl = zext i8 %i.ck to i64
  %i.cm = or disjoint i64 %i.ci, %i.cl
  %i.cn = icmp ugt i32 %i.bq, %i.bt
  br i1 %i.cn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.peel.next
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 8) #26
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.peel.next
  %.not55 = icmp ugt i32 %i.bq, %.061.in
  br i1 %.not55, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 8) #26
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.co = load volatile i32, ptr %i.ai, align 8, !tbaa !30
  %.not56 = icmp eq i32 %i.co, 0
  br i1 %.not56, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cp = load i32, ptr %i.aj, align 8, !tbaa !32
  %i.cq = zext i32 %i.cp to i64
  %.not57 = icmp samesign ult i64 %i.cm, %i.cq
  br i1 %.not57, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 16) #26
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.o
  %i.cr = add nuw nsw i64 %.05260, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.cr, %i.am
  br i1 %exitcond.not, label %._crit_edge, label %.peel.next, !llvm.loop !355

._crit_edge:                                      ; preds = %bb.r, %bb.k, %bb.f
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @tt_cmap13_get_info(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 13, ptr %i.d, align 8, !tbaa !35
  %2 = load i8, ptr %i.c, align 1, !tbaa !26
  %3 = zext i8 %2 to i64
  %4 = shl nuw nsw i64 %3, 24
  %5 = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %6 = load i8, ptr %5, align 1, !tbaa !26
  %7 = zext i8 %6 to i64
  %8 = shl nuw nsw i64 %7, 16
  %9 = or disjoint i64 %8, %4
  %10 = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %11 = load i8, ptr %10, align 1, !tbaa !26
  %12 = zext i8 %11 to i64
  %13 = shl nuw nsw i64 %12, 8
  %14 = or disjoint i64 %9, %13
  %15 = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  %16 = load i8, ptr %15, align 1, !tbaa !26
  %i.e = zext i8 %16 to i64
  %17 = or disjoint i64 %14, %i.e
  store i64 %17, ptr %1, align 8, !tbaa !36
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @tt_cmap14_init(ptr nofree noundef writeonly captures(none) initializes((24, 32), (40, 52), (56, 64)) %0, ptr noundef %1) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.a, align 8, !tbaa !356
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 6
  %2 = load i8, ptr %i.b, align 1, !tbaa !26
  %3 = zext i8 %2 to i64
  %4 = shl nuw nsw i64 %3, 24
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 7
  %6 = load i8, ptr %5, align 1, !tbaa !26
  %7 = zext i8 %6 to i64
  %8 = shl nuw nsw i64 %7, 16
  %9 = or disjoint i64 %8, %4
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %11 = load i8, ptr %10, align 1, !tbaa !26
  %12 = zext i8 %11 to i64
  %13 = shl nuw nsw i64 %12, 8
  %14 = or disjoint i64 %9, %13
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 9
  %16 = load i8, ptr %15, align 1, !tbaa !26
  %i.c = zext i8 %16 to i64
  %17 = or disjoint i64 %14, %i.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %17, ptr %i.d, align 8, !tbaa !76
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.e, align 8, !tbaa !77
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.f, align 8, !tbaa !78
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @tt_cmap14_done(ptr nofree noundef captures(none) initializes((48, 52)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.c, align 8, !tbaa !77
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !78   ; 2 uses
  %.not9 = icmp eq ptr %i.e, null
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @ft_mem_free(ptr noundef nonnull %i.b, ptr noundef nonnull %i.e) #26
  store ptr null, ptr %i.d, align 8, !tbaa !78
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @tt_cmap14_char_index(ptr nofree readnone captures(none) %0, i32 %1) #8 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @tt_cmap14_char_next(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) #1 {
bb.a:
  store i32 0, ptr %1, align 4, !tbaa !16
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @tt_cmap14_char_var_index(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 6 ; 2 uses
  %i.d = load i32, ptr %i.c, align 1              ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %tt_cmap14_char_map_nondef_binary.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = tail call i32 @llvm.bswap.i32(i32 %i.d)
  %i.f = zext i32 %3 to i64                       ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i
  %.02440.i = phi i32 [ 0, %.lr.ph.i ], [ %.2.i, %bb.e ] ; 2 uses
  %.02539.i = phi i32 [ %i.e, %.lr.ph.i ], [ %.227.i, %bb.e ] ; 2 uses
  %i.g = add i32 %.02539.i, %.02440.i
  %i.h = lshr i32 %i.g, 1                         ; 3 uses
  %i.i = mul i32 %i.h, 11
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i8, ptr %i.l, align 1, !tbaa !26
  %i.n = zext i8 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 5
  %i.q = load i8, ptr %i.p, align 1, !tbaa !26
  %i.r = zext i8 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 8
  %i.t = or disjoint i64 %i.s, %i.o
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 6
  %i.v = load i8, ptr %i.u, align 1, !tbaa !26
  %i.w = zext i8 %i.v to i64
  %i.x = or disjoint i64 %i.t, %i.w               ; 2 uses
  %i.y = icmp samesign ugt i64 %i.x, %i.f
  br i1 %i.y, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = icmp samesign ult i64 %i.x, %i.f
  br i1 %i.z, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.aa = add nuw i32 %i.h, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.227.i = phi i32 [ %i.h, %bb.b ], [ %.02539.i, %bb.d ] ; 2 uses
  %.2.i = phi i32 [ %.02440.i, %bb.b ], [ %i.aa, %bb.d ] ; 2 uses
  %i.ab = icmp ult i32 %.2.i, %.227.i
  br i1 %i.ab, label %bb.b, label %tt_cmap14_char_map_nondef_binary.exit, !llvm.loop !3

bb.f:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 7
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 11
  %i.ae = load i32, ptr %i.ac, align 1            ; 2 uses
  %i.af = load i8, ptr %i.ad, align 1, !tbaa !26
  %i.ag = zext i8 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !26
  %i.ak = zext i8 %i.aj to i64
  %i.al = shl nuw nsw i64 %i.ak, 16
  %i.am = or disjoint i64 %i.al, %i.ah
  %i.an = getelementptr inbounds nuw i8, ptr %i.k, i64 13
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !26
  %i.ap = zext i8 %i.ao to i64
  %i.aq = shl nuw nsw i64 %i.ap, 8
  %i.ar = or disjoint i64 %i.am, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 14
  %i.at = load i8, ptr %i.as, align 1, !tbaa !26
  %i.au = zext i8 %i.at to i64
  %i.av = or disjoint i64 %i.ar, %i.au            ; 2 uses
  %.not28 = icmp eq i32 %i.ae, 0
  br i1 %.not28, label %tt_cmap14_char_map_def_binary.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = tail call i32 @llvm.bswap.i32(i32 %i.ae)
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ax ; 2 uses
  %i.az = load i32, ptr %i.ay, align 1            ; 2 uses
  %.not.i31 = icmp eq i32 %i.az, 0
  br i1 %.not.i31, label %tt_cmap14_char_map_def_binary.exit.thread, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.g
  %i.ba = tail call i32 @llvm.bswap.i32(i32 %i.az)
  %i.bb = zext i32 %2 to i64                      ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.k, %.lr.ph.i32
  %.02535.i = phi i32 [ 0, %.lr.ph.i32 ], [ %.2.i33, %bb.k ] ; 2 uses
  %.02634.i = phi i32 [ %i.ba, %.lr.ph.i32 ], [ %.228.i, %bb.k ] ; 2 uses
  %i.bc = add i32 %.02634.i, %.02535.i
  %i.bd = lshr i32 %i.bc, 1                       ; 3 uses
  %i.be = shl i32 %i.bd, 2
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bf ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !26
  %i.bj = zext i8 %i.bi to i64
  %i.bk = shl nuw nsw i64 %i.bj, 16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 5
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !26
  %i.bn = zext i8 %i.bm to i64
  %i.bo = shl nuw nsw i64 %i.bn, 8
  %i.bp = or disjoint i64 %i.bo, %i.bk
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 6
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !26
  %i.bs = zext i8 %i.br to i64
  %i.bt = or disjoint i64 %i.bp, %i.bs            ; 2 uses
  %i.bu = icmp samesign ugt i64 %i.bt, %i.bb
  br i1 %i.bu, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bg, i64 7
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !26
  %i.bx = zext i8 %i.bw to i64
  %i.by = add nuw nsw i64 %i.bt, %i.bx
  %i.bz = icmp samesign ult i64 %i.by, %i.bb
  br i1 %i.bz, label %bb.j, label %tt_cmap14_char_map_def_binary.exit

bb.j:                                             ; preds = %bb.i
  %i.ca = add nuw i32 %i.bd, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %.228.i = phi i32 [ %i.bd, %bb.h ], [ %.02634.i, %bb.j ] ; 2 uses
  %.2.i33 = phi i32 [ %.02535.i, %bb.h ], [ %i.ca, %bb.j ] ; 2 uses
  %i.cb = icmp ult i32 %.2.i33, %.228.i
  br i1 %i.cb, label %bb.h, label %tt_cmap14_char_map_def_binary.exit.thread, !llvm.loop !4

tt_cmap14_char_map_def_binary.exit:               ; preds = %bb.i
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !357
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !358
  %i.cg = tail call i32 %i.cf(ptr noundef %1, i32 noundef %2) #26
  br label %tt_cmap14_char_map_nondef_binary.exit

tt_cmap14_char_map_def_binary.exit.thread:        ; preds = %bb.k, %bb.g, %bb.f
  %.not30 = icmp eq i64 %i.av, 0
  br i1 %.not30, label %tt_cmap14_char_map_nondef_binary.exit, label %bb.l

bb.l:                                             ; preds = %tt_cmap14_char_map_def_binary.exit.thread
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.av ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 1            ; 2 uses
  %.not.i34 = icmp eq i32 %i.ci, 0
  br i1 %.not.i34, label %tt_cmap14_char_map_nondef_binary.exit, label %.lr.ph.i35.preheader

.lr.ph.i35.preheader:                             ; preds = %bb.l
  %i.cj = tail call i32 @llvm.bswap.i32(i32 %i.ci)
  br label %.lr.ph.i35

.lr.ph.i35:                                       ; preds = %.lr.ph.i35.preheader, %bb.o
end_hunk_0
begin_hunk_1_@sfnt_get_ps_name:bb.a
    i32 13, label %bb.bx
    i32 12, label %bb.by
    i32 11, label %bb.bz
    i32 10, label %bb.ca
    i32 9, label %bb.cb
    i32 8, label %bb.cc
    i32 7, label %bb.cd
    i32 6, label %bb.ce
    i32 5, label %bb.cf
    i32 4, label %bb.cg
    i32 3, label %bb.ch
    i32 2, label %bb.ci
    i32 1, label %bb.cj
    i32 0, label %murmur_hash_3_128.exit.i
  ]

bb.bv:                                            ; preds = %._crit_edge.i245.i
  %i.oq = getelementptr inbounds nuw i8, ptr %i.mp, i64 14
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !26
  %i.os = zext i8 %i.or to i32
  %i.ot = shl nuw nsw i32 %i.os, 16
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %._crit_edge.i245.i
  %.0.i.i = phi i32 [ %i.ot, %bb.bv ], [ 0, %._crit_edge.i245.i ]
  %i.ou = getelementptr inbounds nuw i8, ptr %i.mp, i64 13
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !26
  %i.ow = zext i8 %i.ov to i32
  %i.ox = shl nuw nsw i32 %i.ow, 8
  %i.oy = or disjoint i32 %i.ox, %.0.i.i
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %._crit_edge.i245.i
  %.1.i.i = phi i32 [ %i.oy, %bb.bw ], [ 0, %._crit_edge.i245.i ]
  %i.oz = getelementptr inbounds nuw i8, ptr %i.mp, i64 12
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !26
  %i.pb = zext i8 %i.pa to i32
  %i.pc = xor i32 %.1.i.i, %i.pb                  ; 2 uses
  %i.pd = mul i32 %i.pc, -1578923117
  %i.pe = mul i32 %i.pc, 776732672
  %i.pf = lshr i32 %i.pd, 14
  %i.pg = or disjoint i32 %i.pf, %i.pe
  %i.ph = mul i32 %i.pg, 597399067
  %i.pi = xor i32 %i.ph, %.0177.lcssa.i.i
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %._crit_edge.i245.i
  %.1178.i.i = phi i32 [ %i.pi, %bb.bx ], [ %.0177.lcssa.i.i, %._crit_edge.i245.i ]
  %i.pj = getelementptr inbounds nuw i8, ptr %i.mp, i64 11
  %i.pk = load i8, ptr %i.pj, align 1, !tbaa !26
  %i.pl = zext i8 %i.pk to i32
  %i.pm = shl nuw i32 %i.pl, 24
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %._crit_edge.i245.i
  %.2179.i.i = phi i32 [ %.1178.i.i, %bb.by ], [ %.0177.lcssa.i.i, %._crit_edge.i245.i ]
  %.0163.i.i = phi i32 [ %i.pm, %bb.by ], [ 0, %._crit_edge.i245.i ]
  %i.pn = getelementptr inbounds nuw i8, ptr %i.mp, i64 10
  %i.po = load i8, ptr %i.pn, align 1, !tbaa !26
  %i.pp = zext i8 %i.po to i32
  %i.pq = shl nuw nsw i32 %i.pp, 16
  %i.pr = or disjoint i32 %i.pq, %.0163.i.i
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %._crit_edge.i245.i
  %.3180.i.i = phi i32 [ %.2179.i.i, %bb.bz ], [ %.0177.lcssa.i.i, %._crit_edge.i245.i ]
  %.1164.i.i = phi i32 [ %i.pr, %bb.bz ], [ 0, %._crit_edge.i245.i ]
  %i.ps = getelementptr inbounds nuw i8, ptr %i.mp, i64 9
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !26
  %i.pu = zext i8 %i.pt to i32
  %i.pv = shl nuw nsw i32 %i.pu, 8
  %i.pw = xor i32 %i.pv, %.1164.i.i
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %._crit_edge.i245.i
  %.4181.i.i = phi i32 [ %.3180.i.i, %bb.ca ], [ %.0177.lcssa.i.i, %._crit_edge.i245.i ]
  %.2.i.i = phi i32 [ %i.pw, %bb.ca ], [ 0, %._crit_edge.i245.i ]
  %i.px = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  %i.py = load i8, ptr %i.px, align 1, !tbaa !26
  %i.pz = zext i8 %i.py to i32
  %i.qa = xor i32 %.2.i.i, %i.pz                  ; 2 uses
  %i.qb = mul i32 %i.qa, 951274213
  %i.qc = mul i32 %i.qa, -1781923840
  %i.qd = lshr i32 %i.qb, 15
  %i.qe = or disjoint i32 %i.qd, %i.qc
  %i.qf = mul i32 %i.qe, -1578923117
  %i.qg = xor i32 %i.qf, %.0183.lcssa.i.i
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %._crit_edge.i245.i
  %.1184.i.i = phi i32 [ %i.qg, %bb.cb ], [ %.0183.lcssa.i.i, %._crit_edge.i245.i ]
  %.5182.i.i = phi i32 [ %.4181.i.i, %bb.cb ], [ %.0177.lcssa.i.i, %._crit_edge.i245.i ]
  %i.qh = getelementptr inbounds nuw i8, ptr %i.mp, i64 7
  %i.qi = load i8, ptr %i.qh, align 1, !tbaa !26
  %i.qj = zext i8 %i.qi to i32
  %i.qk = shl nuw i32 %i.qj, 24
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %._crit_edge.i245.i
  %.2185.i.i = phi i32 [ %.1184.i.i, %bb.cc ], [ %.0183.lcssa.i.i, %._crit_edge.i245.i ]
  %.6.i.i = phi i32 [ %.5182.i.i, %bb.cc ], [ %.0177.lcssa.i.i, %._crit_edge.i245.i ]
  %.0165.i.i = phi i32 [ %i.qk, %bb.cc ], [ 0, %._crit_edge.i245.i ]
  %i.ql = getelementptr inbounds nuw i8, ptr %i.mp, i64 6
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !26
  %i.qn = zext i8 %i.qm to i32
  %i.qo = shl nuw nsw i32 %i.qn, 16
  %i.qp = or disjoint i32 %i.qo, %.0165.i.i
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %._crit_edge.i245.i
  %.3186.i.i = phi i32 [ %.2185.i.i, %bb.cd ], [ %.0183.lcssa.i.i, %._crit_edge.i245.i ]
  %.7.i.i = phi i32 [ %.6.i.i, %bb.cd ], [ %.0177.lcssa.i.i, %._crit_edge.i245.i ]
  %.1166.i.i = phi i32 [ %i.qp, %bb.cd ], [ 0, %._crit_edge.i245.i ]
  %i.qq = getelementptr inbounds nuw i8, ptr %i.mp, i64 5
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !26
  %i.qs = zext i8 %i.qr to i32
  %i.qt = shl nuw nsw i32 %i.qs, 8
  %i.qu = xor i32 %i.qt, %.1166.i.i
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %._crit_edge.i245.i
  %.4187.i.i = phi i32 [ %.3186.i.i, %bb.ce ], [ %.0183.lcssa.i.i, %._crit_edge.i245.i ]
  %.8.i.i = phi i32 [ %.7.i.i, %bb.ce ], [ %.0177.lcssa.i.i, %._crit_edge.i245.i ]
  %.2167.i.i = phi i32 [ %i.qu, %bb.ce ], [ 0, %._crit_edge.i245.i ]
  %i.qv = getelementptr inbounds nuw i8, ptr %i.mp, i64 4
  %i.qw = load i8, ptr %i.qv, align 1, !tbaa !26
  %i.qx = zext i8 %i.qw to i32
  %i.qy = xor i32 %.2167.i.i, %i.qx               ; 2 uses
  %i.qz = mul i32 %i.qy, -1425107063
  %i.ra = mul i32 %i.qy, -1752629248
  %i.rb = lshr i32 %i.qz, 16
  %i.rc = or disjoint i32 %i.rb, %i.ra
  %i.rd = mul i32 %i.rc, 951274213
  %i.re = xor i32 %i.rd, %.0173.lcssa.i.i
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %._crit_edge.i245.i
  %.5188.i.i = phi i32 [ %.4187.i.i, %bb.cf ], [ %.0183.lcssa.i.i, %._crit_edge.i245.i ]
  %.9.i.i = phi i32 [ %.8.i.i, %bb.cf ], [ %.0177.lcssa.i.i, %._crit_edge.i245.i ]
  %.1174.i.i = phi i32 [ %i.re, %bb.cf ], [ %.0173.lcssa.i.i, %._crit_edge.i245.i ]
  %i.rf = getelementptr inbounds nuw i8, ptr %i.mp, i64 3
  %i.rg = load i8, ptr %i.rf, align 1, !tbaa !26
  %i.rh = zext i8 %i.rg to i32
  %i.ri = shl nuw i32 %i.rh, 24
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %._crit_edge.i245.i
  %.6189.i.i = phi i32 [ %.5188.i.i, %bb.cg ], [ %.0183.lcssa.i.i, %._crit_edge.i245.i ]
  %.10.i.i = phi i32 [ %.9.i.i, %bb.cg ], [ %.0177.lcssa.i.i, %._crit_edge.i245.i ]
  %.2175.i.i = phi i32 [ %.1174.i.i, %bb.cg ], [ %.0173.lcssa.i.i, %._crit_edge.i245.i ]
  %.0168.i.i = phi i32 [ %i.ri, %bb.cg ], [ 0, %._crit_edge.i245.i ]
  %i.rj = getelementptr inbounds nuw i8, ptr %i.mp, i64 2
  %i.rk = load i8, ptr %i.rj, align 1, !tbaa !26
  %i.rl = zext i8 %i.rk to i32
  %i.rm = shl nuw nsw i32 %i.rl, 16
  %i.rn = or disjoint i32 %i.rm, %.0168.i.i
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %._crit_edge.i245.i
  %.7190.i.i = phi i32 [ %.6189.i.i, %bb.ch ], [ %.0183.lcssa.i.i, %._crit_edge.i245.i ]
  %.11.i.i = phi i32 [ %.10.i.i, %bb.ch ], [ %.0177.lcssa.i.i, %._crit_edge.i245.i ]
  %.3.i.i = phi i32 [ %.2175.i.i, %bb.ch ], [ %.0173.lcssa.i.i, %._crit_edge.i245.i ]
  %.1169.i.i = phi i32 [ %i.rn, %bb.ch ], [ 0, %._crit_edge.i245.i ]
  %i.ro = getelementptr inbounds nuw i8, ptr %i.mp, i64 1
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !26
  %i.rq = zext i8 %i.rp to i32
  %i.rr = shl nuw nsw i32 %i.rq, 8
  %i.rs = xor i32 %i.rr, %.1169.i.i
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %._crit_edge.i245.i
  %.8191.i.i = phi i32 [ %.7190.i.i, %bb.ci ], [ %.0183.lcssa.i.i, %._crit_edge.i245.i ]
  %.12.i.i = phi i32 [ %.11.i.i, %bb.ci ], [ %.0177.lcssa.i.i, %._crit_edge.i245.i ]
  %.4.i.i = phi i32 [ %.3.i.i, %bb.ci ], [ %.0173.lcssa.i.i, %._crit_edge.i245.i ]
  %.2170.i.i = phi i32 [ %i.rs, %bb.ci ], [ 0, %._crit_edge.i245.i ]
  %i.rt = load i8, ptr %i.mp, align 1, !tbaa !26
  %i.ru = zext i8 %i.rt to i32
  %i.rv = xor i32 %.2170.i.i, %i.ru               ; 2 uses
  %i.rw = mul i32 %i.rv, 597399067
  %i.rx = mul i32 %i.rv, -888307712
  %i.ry = lshr i32 %i.rw, 17
  %i.rz = or disjoint i32 %i.ry, %i.rx
  %i.sa = mul i32 %i.rz, -1425107063
  %i.sb = xor i32 %i.sa, %.0171.lcssa.i.i
  br label %murmur_hash_3_128.exit.i

default.unreachable:                              ; preds = %._crit_edge.i245.i
  unreachable

murmur_hash_3_128.exit.i:                         ; preds = %bb.cj, %._crit_edge.i245.i
  %.9192.i.i = phi i32 [ %.8191.i.i, %bb.cj ], [ %.0183.lcssa.i.i, %._crit_edge.i245.i ]
  %.13.i.i = phi i32 [ %.12.i.i, %bb.cj ], [ %.0177.lcssa.i.i, %._crit_edge.i245.i ]
  %.5.i.i = phi i32 [ %.4.i.i, %bb.cj ], [ %.0173.lcssa.i.i, %._crit_edge.i245.i ]
  %.1172.i.i = phi i32 [ %i.sb, %bb.cj ], [ %.0171.lcssa.i.i, %._crit_edge.i245.i ]
  %i.sc = xor i32 %.1172.i.i, %i.ml
  %i.sd = xor i32 %.5.i.i, %i.ml                  ; 2 uses
  %i.se = xor i32 %.9192.i.i, %i.ml               ; 2 uses
  %i.sf = xor i32 %.13.i.i, %i.ml                 ; 2 uses
  %i.sg = add i32 %i.sf, %i.se
  %i.sh = add i32 %i.sg, %i.sd
  %i.si = add i32 %i.sh, %i.sc                    ; 5 uses
  %i.sj = add i32 %i.si, %i.sd                    ; 2 uses
  %i.sk = add i32 %i.si, %i.se                    ; 2 uses
  %i.sl = add i32 %i.si, %i.sf                    ; 2 uses
  %1 = lshr i32 %i.si, 16
  %2 = xor i32 %1, %i.si
  %3 = mul i32 %2, -2048144789                    ; 2 uses
  %4 = lshr i32 %3, 13
  %5 = xor i32 %4, %3
  %6 = mul i32 %5, -1028477387                    ; 2 uses
  %7 = lshr i32 %6, 16
  %8 = xor i32 %7, %6
  %9 = lshr i32 %i.sj, 16
  %10 = xor i32 %9, %i.sj
  %11 = mul i32 %10, -2048144789                  ; 2 uses
  %12 = lshr i32 %11, 13
  %13 = xor i32 %12, %11
  %14 = mul i32 %13, -1028477387                  ; 2 uses
  %15 = lshr i32 %14, 16
  %16 = xor i32 %15, %14                          ; 2 uses
  %17 = lshr i32 %i.sk, 16
  %18 = xor i32 %17, %i.sk
  %19 = mul i32 %18, -2048144789                  ; 2 uses
  %20 = lshr i32 %19, 13
  %21 = xor i32 %20, %19
  %22 = mul i32 %21, -1028477387                  ; 2 uses
  %23 = lshr i32 %22, 16
  %24 = xor i32 %23, %22                          ; 2 uses
  %25 = lshr i32 %i.sl, 16
  %26 = xor i32 %25, %i.sl
  %27 = mul i32 %26, -2048144789                  ; 2 uses
  %28 = lshr i32 %27, 13
  %29 = xor i32 %28, %27
  %30 = mul i32 %29, -1028477387                  ; 2 uses
  %31 = lshr i32 %30, 16
  %32 = xor i32 %31, %30                          ; 2 uses
  %33 = add i32 %16, %8
  %i.sm = add i32 %33, %24
  %34 = add i32 %i.sm, %32                        ; 11 uses
  %i.sn = add i32 %34, %16                        ; 8 uses
  %35 = add i32 %34, %24                          ; 8 uses
  %i.so = add i32 %34, %32                        ; 8 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.sq = load i32, ptr %i.sp, align 8, !tbaa !701
  %i.sr = zext i32 %i.sq to i64
  %i.ss = getelementptr inbounds nuw i8, ptr %.6147.i, i64 %i.sr ; 34 uses
  store i8 45, ptr %i.ss, align 1, !tbaa !26
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 33
  %i.su = getelementptr inbounds nuw i8, ptr %i.ss, i64 32
  store <4 x i8> <i8 46, i8 46, i8 46, i8 0>, ptr %i.st, align 1, !tbaa !26
  %i.sv = and i32 %i.so, 15
  %i.sw = zext nneg i32 %i.sv to i64
  %i.sx = getelementptr inbounds nuw i8, ptr @hexdigits, i64 %i.sw
  %i.sy = load i8, ptr %i.sx, align 1, !tbaa !26
  %i.sz = getelementptr inbounds nuw i8, ptr %i.ss, i64 31
  store i8 %i.sy, ptr %i.su, align 1, !tbaa !26
  %i.ta = lshr i32 %i.so, 4
  %i.tb = and i32 %i.ta, 15
  %i.tc = zext nneg i32 %i.tb to i64
  %i.td = getelementptr inbounds nuw i8, ptr @hexdigits, i64 %i.tc
  %i.te = load i8, ptr %i.td, align 1, !tbaa !26
  %i.tf = getelementptr inbounds nuw i8, ptr %i.ss, i64 30
  store i8 %i.te, ptr %i.sz, align 1, !tbaa !26
  %i.tg = lshr i32 %i.so, 8
  %i.th = and i32 %i.tg, 15
  %i.ti = zext nneg i32 %i.th to i64
  %i.tj = getelementptr inbounds nuw i8, ptr @hexdigits, i64 %i.ti
  %i.tk = load i8, ptr %i.tj, align 1, !tbaa !26
  %i.tl = getelementptr inbounds nuw i8, ptr %i.ss, i64 29
  store i8 %i.tk, ptr %i.tf, align 1, !tbaa !26
  %i.tm = lshr i32 %i.so, 12
  %i.tn = and i32 %i.tm, 15
  %i.to = zext nneg i32 %i.tn to i64
  %i.tp = getelementptr inbounds nuw i8, ptr @hexdigits, i64 %i.to
  %i.tq = load i8, ptr %i.tp, align 1, !tbaa !26
  %i.tr = getelementptr inbounds nuw i8, ptr %i.ss, i64 28
  store i8 %i.tq, ptr %i.tl, align 1, !tbaa !26
  %i.ts = lshr i32 %i.so, 16
  %i.tt = and i32 %i.ts, 15
  %i.tu = zext nneg i32 %i.tt to i64
  %i.tv = getelementptr inbounds nuw i8, ptr @hexdigits, i64 %i.tu
  %i.tw = load i8, ptr %i.tv, align 1, !tbaa !26
  %i.tx = getelementptr inbounds nuw i8, ptr %i.ss, i64 27
  store i8 %i.tw, ptr %i.tr, align 1, !tbaa !26
  %i.ty = lshr i32 %i.so, 20
  %i.tz = and i32 %i.ty, 15
  %i.ua = zext nneg i32 %i.tz to i64
  %i.ub = getelementptr inbounds nuw i8, ptr @hexdigits, i64 %i.ua
  %i.uc = load i8, ptr %i.ub, align 1, !tbaa !26
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ss, i64 26
  store i8 %i.uc, ptr %i.tx, align 1, !tbaa !26
  %i.ue = lshr i32 %i.so, 24
  %i.uf = and i32 %i.ue, 15
  %i.ug = zext nneg i32 %i.uf to i64
  %i.uh = getelementptr inbounds nuw i8, ptr @hexdigits, i64 %i.ug
  %i.ui = load i8, ptr %i.uh, align 1, !tbaa !26
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ss, i64 25
  store i8 %i.ui, ptr %i.ud, align 1, !tbaa !26
  %i.uk = lshr i32 %i.so, 28
  %i.ul = zext nneg i32 %i.uk to i64
  %i.um = getelementptr inbounds nuw i8, ptr @hexdigits, i64 %i.ul
  %i.un = load i8, ptr %i.um, align 1, !tbaa !26
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ss, i64 24
  store i8 %i.un, ptr %i.uj, align 1, !tbaa !26
  %i.up = and i32 %35, 15
  %i.uq = zext nneg i32 %i.up to i64
  %i.ur = getelementptr inbounds nuw i8, ptr @hexdigits, i64 %i.uq
  %i.us = load i8, ptr %i.ur, align 1, !tbaa !26
  %i.ut = getelementptr inbounds nuw i8, ptr %i.ss, i64 23
  store i8 %i.us, ptr %i.uo, align 1, !tbaa !26
  %i.uu = lshr i32 %35, 4
  %i.uv = and i32 %i.uu, 15
  %i.uw = zext nneg i32 %i.uv to i64
  %i.ux = getelementptr inbounds nuw i8, ptr @hexdigits, i64 %i.uw
  %i.uy = load i8, ptr %i.ux, align 1, !tbaa !26
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ss, i64 22
  store i8 %i.uy, ptr %i.ut, align 1, !tbaa !26
  %i.va = lshr i32 %35, 8
  %i.vb = and i32 %i.va, 15
  %i.vc = zext nneg i32 %i.vb to i64
  %i.vd = getelementptr inbounds nuw i8, ptr @hexdigits, i64 %i.vc
  %i.ve = load i8, ptr %i.vd, align 1, !tbaa !26
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ss, i64 21
  store i8 %i.ve, ptr %i.uz, align 1, !tbaa !26
  %i.vg = lshr i32 %35, 12
  %i.vh = and i32 %i.vg, 15
  %i.vi = zext nneg i32 %i.vh to i64
  %i.vj = getelementptr inbounds nuw i8, ptr @hexdigits, i64 %i.vi
  %i.vk = load i8, ptr %i.vj, align 1, !tbaa !26
  %i.vl = getelementptr inbounds nuw i8, ptr %i.ss, i64 20
  store i8 %i.vk, ptr %i.vf, align 1, !tbaa !26
  %i.vm = lshr i32 %35, 16
  %i.vn = and i32 %i.vm, 15
  %i.vo = zext nneg i32 %i.vn to i64
  %i.vp = getelementptr inbounds nuw i8, ptr @hexdigits, i64 %i.vo
  %i.vq = load i8, ptr %i.vp, align 1, !tbaa !26
  %i.vr = getelementptr inbounds nuw i8, ptr %i.ss, i64 19
  store i8 %i.vq, ptr %i.vl, align 1, !tbaa !26
  %i.vs = lshr i32 %35, 20
  %i.vt = and i32 %i.vs, 15
  %i.vu = zext nneg i32 %i.vt to i64
  %i.vv = getelementptr inbounds nuw i8, ptr @hexdigits, i64 %i.vu
  %i.vw = load i8, ptr %i.vv, align 1, !tbaa !26
  %i.vx = getelementptr inbounds nuw i8, ptr %i.ss, i64 18
  store i8 %i.vw, ptr %i.vr, align 1, !tbaa !26
  %i.vy = lshr i32 %35, 24
  %i.vz = and i32 %i.vy, 15
  %i.wa = zext nneg i32 %i.vz to i64
  %i.wb = getelementptr inbounds nuw i8, ptr @hexdigits, i64 %i.wa
  %i.wc = load i8, ptr %i.wb, align 1, !tbaa !26
  %i.wd = getelementptr inbounds nuw i8, ptr %i.ss, i64 17
  store i8 %i.wc, ptr %i.vx, align 1, !tbaa !26
  %i.we = lshr i32 %35, 28
  %i.wf = zext nneg i32 %i.we to i64
  %i.wg = getelementptr inbounds nuw i8, ptr @hexdigits, i64 %i.wf
  %i.wh = load i8, ptr %i.wg, align 1, !tbaa !26
  %i.wi = getelementptr inbounds nuw i8, ptr %i.ss, i64 16
  store i8 %i.wh, ptr %i.wd, align 1, !tbaa !26
  %i.wj = and i32 %i.sn, 15
  %i.wk = zext nneg i32 %i.wj to i64
  %i.wl = getelementptr inbounds nuw i8, ptr @hexdigits, i64 %i.wk
  %i.wm = load i8, ptr %i.wl, align 1, !tbaa !26
  %i.wn = getelementptr inbounds nuw i8, ptr %i.ss, i64 15
  store i8 %i.wm, ptr %i.wi, align 1, !tbaa !26
  %i.wo = lshr i32 %i.sn, 4
  %i.wp = and i32 %i.wo, 15
  %i.wq = zext nneg i32 %i.wp to i64
  %i.wr = getelementptr inbounds nuw i8, ptr @hexdigits, i64 %i.wq
  %i.ws = load i8, ptr %i.wr, align 1, !tbaa !26
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ss, i64 14
  store i8 %i.ws, ptr %i.wn, align 1, !tbaa !26
  %i.wu = lshr i32 %i.sn, 8
  %i.wv = and i32 %i.wu, 15
  %i.ww = zext nneg i32 %i.wv to i64
  %i.wx = getelementptr inbounds nuw i8, ptr @hexdigits, i64 %i.ww
  %i.wy = load i8, ptr %i.wx, align 1, !tbaa !26
  %i.wz = getelementptr inbounds nuw i8, ptr %i.ss, i64 13
  store i8 %i.wy, ptr %i.wt, align 1, !tbaa !26
  %i.xa = lshr i32 %i.sn, 12
  %i.xb = and i32 %i.xa, 15
  %i.xc = zext nneg i32 %i.xb to i64
  %i.xd = getelementptr inbounds nuw i8, ptr @hexdigits, i64 %i.xc
  %i.xe = load i8, ptr %i.xd, align 1, !tbaa !26
  %i.xf = getelementptr inbounds nuw i8, ptr %i.ss, i64 12
  store i8 %i.xe, ptr %i.wz, align 1, !tbaa !26
  %i.xg = lshr i32 %i.sn, 16
  %i.xh = and i32 %i.xg, 15
  %i.xi = zext nneg i32 %i.xh to i64
  %i.xj = getelementptr inbounds nuw i8, ptr @hexdigits, i64 %i.xi
  %i.xk = load i8, ptr %i.xj, align 1, !tbaa !26
  %i.xl = getelementptr inbounds nuw i8, ptr %i.ss, i64 11
  store i8 %i.xk, ptr %i.xf, align 1, !tbaa !26
  %i.xm = lshr i32 %i.sn, 20
  %i.xn = and i32 %i.xm, 15
  %i.xo = zext nneg i32 %i.xn to i64
  %i.xp = getelementptr inbounds nuw i8, ptr @hexdigits, i64 %i.xo
  %i.xq = load i8, ptr %i.xp, align 1, !tbaa !26
  %i.xr = getelementptr inbounds nuw i8, ptr %i.ss, i64 10
  store i8 %i.xq, ptr %i.xl, align 1, !tbaa !26
  %i.xs = lshr i32 %i.sn, 24
  %i.xt = and i32 %i.xs, 15
  %i.xu = zext nneg i32 %i.xt to i64
  %i.xv = getelementptr inbounds nuw i8, ptr @hexdigits, i64 %i.xu
  %i.xw = load i8, ptr %i.xv, align 1, !tbaa !26
  %i.xx = getelementptr inbounds nuw i8, ptr %i.ss, i64 9
  store i8 %i.xw, ptr %i.xr, align 1, !tbaa !26
  %i.xy = lshr i32 %i.sn, 28
  %i.xz = zext nneg i32 %i.xy to i64
  %i.ya = getelementptr inbounds nuw i8, ptr @hexdigits, i64 %i.xz
  %i.yb = load i8, ptr %i.ya, align 1, !tbaa !26
  %i.yc = getelementptr inbounds nuw i8, ptr %i.ss, i64 8
  store i8 %i.yb, ptr %i.xx, align 1, !tbaa !26
  %i.yd = and i32 %34, 15
  %i.ye = zext nneg i32 %i.yd to i64
  %i.yf = getelementptr inbounds nuw i8, ptr @hexdigits, i64 %i.ye
  %i.yg = load i8, ptr %i.yf, align 1, !tbaa !26
  %i.yh = getelementptr inbounds nuw i8, ptr %i.ss, i64 7
  store i8 %i.yg, ptr %i.yc, align 1, !tbaa !26
  %i.yi = lshr i32 %34, 4
  %i.yj = and i32 %i.yi, 15
  %i.yk = zext nneg i32 %i.yj to i64
  %i.yl = getelementptr inbounds nuw i8, ptr @hexdigits, i64 %i.yk
  %i.ym = load i8, ptr %i.yl, align 1, !tbaa !26
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ss, i64 6
  store i8 %i.ym, ptr %i.yh, align 1, !tbaa !26
  %i.yo = lshr i32 %34, 8
  %i.yp = and i32 %i.yo, 15
  %i.yq = zext nneg i32 %i.yp to i64
  %i.yr = getelementptr inbounds nuw i8, ptr @hexdigits, i64 %i.yq
  %i.ys = load i8, ptr %i.yr, align 1, !tbaa !26
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ss, i64 5
  store i8 %i.ys, ptr %i.yn, align 1, !tbaa !26
  %i.yu = lshr i32 %34, 12
  %i.yv = and i32 %i.yu, 15
  %i.yw = zext nneg i32 %i.yv to i64
  %i.yx = getelementptr inbounds nuw i8, ptr @hexdigits, i64 %i.yw
  %i.yy = load i8, ptr %i.yx, align 1, !tbaa !26
  %i.yz = getelementptr inbounds nuw i8, ptr %i.ss, i64 4
  store i8 %i.yy, ptr %i.yt, align 1, !tbaa !26
  %i.za = lshr i32 %34, 16
  %i.zb = and i32 %i.za, 15
  %i.zc = zext nneg i32 %i.zb to i64
  %i.zd = getelementptr inbounds nuw i8, ptr @hexdigits, i64 %i.zc
  %i.ze = load i8, ptr %i.zd, align 1, !tbaa !26
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ss, i64 3
  store i8 %i.ze, ptr %i.yz, align 1, !tbaa !26
  %i.zg = lshr i32 %34, 20
  %i.zh = and i32 %i.zg, 15
  %i.zi = zext nneg i32 %i.zh to i64
  %i.zj = getelementptr inbounds nuw i8, ptr @hexdigits, i64 %i.zi
  %i.zk = load i8, ptr %i.zj, align 1, !tbaa !26
  %i.zl = getelementptr inbounds nuw i8, ptr %i.ss, i64 2
  store i8 %i.zk, ptr %i.zf, align 1, !tbaa !26
  %i.zm = lshr i32 %34, 24
  %i.zn = and i32 %i.zm, 15
  %i.zo = zext nneg i32 %i.zn to i64
  %i.zp = getelementptr inbounds nuw i8, ptr @hexdigits, i64 %i.zo
  %i.zq = load i8, ptr %i.zp, align 1, !tbaa !26
  %i.zr = getelementptr inbounds nuw i8, ptr %i.ss, i64 1
  store i8 %i.zq, ptr %i.zl, align 1, !tbaa !26
  %i.zs = lshr i32 %34, 28
  %i.zt = zext nneg i32 %i.zs to i64
  %i.zu = getelementptr inbounds nuw i8, ptr @hexdigits, i64 %i.zt
  %i.zv = load i8, ptr %i.zu, align 1, !tbaa !26
  store i8 %i.zv, ptr %i.zr, align 1, !tbaa !26
  br label %sfnt_get_var_ps_name.exit

sfnt_get_var_ps_name.exit:                        ; preds = %bb.f, %sfnt_get_name_id.exit237.i, %bb.ad, %.thread277.i, %bb.aq, %bb.bt, %murmur_hash_3_128.exit.i
  %.4157.i = phi ptr [ %.6147.i, %bb.bt ], [ null, %bb.aq ], [ null, %.thread277.i ], [ %.6147.i, %murmur_hash_3_128.exit.i ], [ null, %bb.ad ], [ null, %sfnt_get_name_id.exit237.i ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %sfnt_get_name_id.exit.thread.sink.split

bb.ck:                                            ; preds = %bb.d, %bb.b
  store i32 -1, ptr %i.k, align 4, !tbaa !16
  store i32 -1, ptr %i.l, align 4, !tbaa !16
  %i.zw = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.zx = load i16, ptr %i.zw, align 8, !tbaa !207 ; 2 uses
  %.not26.i = icmp eq i16 %i.zx, 0
  br i1 %.not26.i, label %sfnt_get_name_id.exit.thread, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %bb.ck
  %i.zy = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.zz = load ptr, ptr %i.zy, align 8, !tbaa !309 ; 2 uses
  %wide.trip.count.i = zext i16 %i.zx to i64
  br label %bb.cl

bb.cl:                                            ; preds = %.thread.i, %.lr.ph.i31
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i31 ], [ %indvars.iv.next.i, %.thread.i ] ; 3 uses
  %i.aaa = getelementptr inbounds nuw [32 x i8], ptr %i.zz, i64 %indvars.iv.i ; 7 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 6
  %i.aac = load i16, ptr %i.aab, align 2, !tbaa !310
  %i.aad = icmp eq i16 %i.aac, 6
  br i1 %i.aad, label %bb.cm, label %.thread.i

bb.cm:                                            ; preds = %bb.cl
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aaa, i64 8
  %i.aaf = load i16, ptr %i.aae, align 8, !tbaa !202
  %.not.i33 = icmp eq i16 %i.aaf, 0
  br i1 %.not.i33, label %.thread.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.aag = load i16, ptr %i.aaa, align 8, !tbaa !311
  switch i16 %i.aag, label %.thread.i [
    i16 3, label %bb.co
    i16 1, label %bb.cq
  ]

bb.co:                                            ; preds = %bb.cn
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aaa, i64 2
  %i.aai = load i16, ptr %i.aah, align 2, !tbaa !312
  %switch.i = icmp ult i16 %i.aai, 2
  br i1 %switch.i, label %bb.cp, label %.thread.i

bb.cp:                                            ; preds = %bb.co
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aaa, i64 4
  %i.aak = load i16, ptr %i.aaj, align 4, !tbaa !204
  %i.aal = icmp eq i16 %i.aak, 1033
  %.0..0..0.38 = load i32, ptr %i.k, align 4
  %i.aam = icmp eq i32 %.0..0..0.38, -1
  %or.cond48 = select i1 %i.aal, i1 true, i1 %i.aam
  br i1 %or.cond48, label %.thread.sink.split.i, label %.thread.i

bb.cq:                                            ; preds = %bb.cn
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aaa, i64 2
  %i.aao = load i16, ptr %i.aan, align 2, !tbaa !312
  %i.aap = icmp eq i16 %i.aao, 0
  br i1 %i.aap, label %bb.cr, label %.thread.i

bb.cr:                                            ; preds = %bb.cq
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aaa, i64 4
  %i.aar = load i16, ptr %i.aaq, align 4, !tbaa !204
  %i.aas = icmp eq i16 %i.aar, 0
  %.0..0..0.35 = load i32, ptr %i.l, align 4
  %i.aat = icmp eq i32 %.0..0..0.35, -1
  %or.cond49 = select i1 %i.aas, i1 true, i1 %i.aat
  br i1 %or.cond49, label %.thread.sink.split.i, label %.thread.i

.thread.sink.split.i:                             ; preds = %bb.cr, %bb.cp
  %.sink28.i = phi ptr [ %i.k, %bb.cp ], [ %i.l, %bb.cr ]
  %i.aau = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.aau, ptr %.sink28.i, align 4, !tbaa !16
  br label %.thread.i

.thread.i:                                        ; preds = %bb.cr, %bb.cp, %.thread.sink.split.i, %bb.cq, %bb.co, %bb.cn, %bb.cm, %bb.cl
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i32, label %bb.cl, !llvm.loop !8

._crit_edge.i32:                                  ; preds = %.thread.i
  %.0..0..0.37.pr = load i32, ptr %i.k, align 4, !tbaa !16 ; 3 uses
  %i.aav = icmp sgt i32 %.0..0..0.37.pr, -1
  %.0..0..0..pre.pre = load i32, ptr %i.l, align 4 ; 3 uses
  br i1 %i.aav, label %.thread, label %sfnt_get_name_id.exit

sfnt_get_name_id.exit:                            ; preds = %._crit_edge.i32
  %i.aaw = icmp slt i32 %.0..0..0..pre.pre, 0
  br i1 %i.aaw, label %sfnt_get_name_id.exit.thread, label %bb.cs

bb.cs:                                            ; preds = %sfnt_get_name_id.exit
  %.not30 = icmp eq i32 %.0..0..0.37.pr, -1
  br i1 %.not30, label %bb.ct, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.cs
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 584
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !309
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %._crit_edge.i32
  %i.aax = phi ptr [ %.pre, %..thread_crit_edge ], [ %i.zz, %._crit_edge.i32 ]
  %i.aay = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.aaz = load ptr, ptr %i.aay, align 8, !tbaa !110
  %i.aba = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.abb = load ptr, ptr %i.aba, align 8, !tbaa !313
  %i.abc = sext i32 %.0..0..0.37.pr to i64
  %i.abd = getelementptr inbounds [32 x i8], ptr %i.aax, i64 %i.abc
  %i.abe = tail call fastcc ptr @get_win_string(ptr noundef %i.aaz, ptr noundef %i.abb, ptr noundef %i.abd, ptr noundef nonnull @sfnt_is_postscript)
  br label %bb.ct

bb.ct:                                            ; preds = %.thread, %bb.cs
  %.0 = phi ptr [ %i.abe, %.thread ], [ null, %bb.cs ] ; 2 uses
  %i.abf = icmp eq ptr %.0, null
  %i.abg = icmp ne i32 %.0..0..0..pre.pre, -1
  %or.cond = select i1 %i.abf, i1 %i.abg, i1 false
  br i1 %or.cond, label %bb.cu, label %sfnt_get_name_id.exit.thread.sink.split

bb.cu:                                            ; preds = %bb.ct
  %i.abh = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.abi = load ptr, ptr %i.abh, align 8, !tbaa !110
  %i.abj = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !313
  %i.abl = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.abm = load ptr, ptr %i.abl, align 8, !tbaa !309
  %i.abn = sext i32 %.0..0..0..pre.pre to i64
  %i.abo = getelementptr inbounds [32 x i8], ptr %i.abm, i64 %i.abn
  %i.abp = tail call fastcc ptr @get_apple_string(ptr noundef %i.abi, ptr noundef %i.abk, ptr noundef %i.abo, ptr noundef nonnull @sfnt_is_postscript)
  br label %sfnt_get_name_id.exit.thread.sink.split

sfnt_get_name_id.exit.thread.sink.split:          ; preds = %bb.ct, %bb.cu, %sfnt_get_var_ps_name.exit
  %.1.sink = phi ptr [ %.4157.i, %sfnt_get_var_ps_name.exit ], [ %i.abp, %bb.cu ], [ %.0, %bb.ct ] ; 2 uses
  store ptr %.1.sink, ptr %i.m, align 8, !tbaa !188
  br label %sfnt_get_name_id.exit.thread

sfnt_get_name_id.exit.thread:                     ; preds = %sfnt_get_name_id.exit.thread.sink.split, %bb.ck, %sfnt_get_name_id.exit, %bb.a
  %.022 = phi ptr [ %i.n, %bb.a ], [ null, %sfnt_get_name_id.exit ], [ null, %bb.ck ], [ %.1.sink, %sfnt_get_name_id.exit.thread.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret ptr %.022
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @get_win_string(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.c = load i16, ptr %i.b, align 8, !tbaa !202
  %i.d = lshr i16 %i.c, 1
  %narrow = add nuw i16 %i.d, 1
  %i.e = zext i16 %narrow to i64
  %i.f = call ptr @ft_mem_qalloc(ptr noundef %0, i64 noundef %i.e, ptr noundef nonnull %i.a) #26 ; 5 uses
  %i.g = load i32, ptr %i.a, align 4, !tbaa !16
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !203
  %i.j = call i32 @FT_Stream_Seek(ptr noundef %1, i64 noundef %i.i) #26 ; 2 uses
  store i32 %i.j, ptr %i.a, align 4, !tbaa !16
  %.not34 = icmp eq i32 %i.j, 0
  br i1 %.not34, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.k = load i16, ptr %i.b, align 8, !tbaa !202
  %i.l = zext i16 %i.k to i64
  %i.m = call i32 @FT_Stream_EnterFrame(ptr noundef %1, i64 noundef %i.l) #26 ; 2 uses
  store i32 %i.m, ptr %i.a, align 4, !tbaa !16
  %.not35 = icmp eq i32 %i.m, 0
  br i1 %.not35, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.n = load i16, ptr %i.b, align 8, !tbaa !202
  %i.o = lshr i16 %i.n, 1                         ; 2 uses
  %.not3639 = icmp eq i16 %i.o, 0
  br i1 %.not3639, label %._crit_edge.thread, label %.lr.ph.preheader

._crit_edge.thread:                               ; preds = %bb.d
  store i8 0, ptr %i.f, align 1, !tbaa !26
  call void @FT_Stream_ExitFrame(ptr noundef %1) #26
  br label %bb.h

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.p = zext nneg i16 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !138
  br label %.lr.ph
end_hunk_1
