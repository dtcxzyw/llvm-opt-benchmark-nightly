inline.NumInlined: 399
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN3DHT16refine_diag_dirsEii:bb.a

bb.g:                                             ; preds = %bb.f
  %i.ck = and i8 %i.s, -25
  store i8 %i.ck, ptr %i.r, align 1, !tbaa !101
  %i.cl = load ptr, ptr %i.h, align 8, !tbaa !81
  %i.cm = load i32, ptr %i.i, align 4, !tbaa !79
  %i.cn = mul nsw i32 %i.cm, %i.g
  %i.co = add nsw i32 %i.cn, %i.l
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds i8, ptr %i.cl, i64 %i.cp ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !101
  %i.cs = or i8 %i.cr, 32
  store i8 %i.cs, ptr %i.cq, align 1, !tbaa !101
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !81
  %.pre93 = load i32, ptr %i.i, align 4, !tbaa !79
  %.pre94 = mul nsw i32 %.pre93, %i.g
  %.pre95 = add nsw i32 %.pre94, %i.l
  %.pre97 = sext i32 %.pre95 to i64
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.g, %bb.f
  %.pre-phi98 = phi i64 [ %i.q, %bb.e ], [ %i.q, %bb.f ], [ %.pre97, %bb.g ]
  %i.ct = phi ptr [ %i.m, %bb.e ], [ %i.m, %bb.f ], [ %.pre, %bb.g ]
  %i.cu = phi i1 [ %spec.select, %bb.e ], [ %i.ci, %bb.f ], [ false, %bb.g ]
  %i.cv = getelementptr inbounds i8, ptr %i.ct, i64 %.pre-phi98 ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !101 ; 2 uses
  %i.cx = and i8 %i.cw, 32
  %i.cy = icmp eq i8 %i.cx, 0
  %i.cz = icmp samesign ult i32 %i.bo, 80
  %or.cond5.not87 = select i1 %i.cy, i1 true, i1 %i.cz
  %or.cond7 = select i1 %or.cond5.not87, i1 true, i1 %i.cu
  br i1 %or.cond7, label %.thread.thread, label %bb.h

bb.h:                                             ; preds = %.thread
  %i.da = and i8 %i.cw, -33
  store i8 %i.da, ptr %i.cv, align 1, !tbaa !101
  %i.db = load ptr, ptr %i.h, align 8, !tbaa !81
  %i.dc = load i32, ptr %i.i, align 4, !tbaa !79
  %i.dd = mul nsw i32 %i.dc, %i.g
  %i.de = add nsw i32 %i.dd, %i.l
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds i8, ptr %i.db, i64 %i.df ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !101
  %i.di = or i8 %i.dh, 16
  store i8 %i.di, ptr %i.dg, align 1, !tbaa !101
  br label %.thread.thread

.thread.thread:                                   ; preds = %bb.d, %.thread, %bb.h, %bb.b
  %i.dj = add nsw i32 %.092, 2                    ; 2 uses
  %i.dk = icmp slt i32 %i.dj, %i.e
  br i1 %i.dk, label %bb.b, label %._crit_edge, !llvm.loop !118
}

; Function Attrs: mustprogress uwtable
define void @_ZN3DHT11make_greensEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92, !nonnull !99, !align !100
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.d = load i16, ptr %i.c, align 4, !tbaa !14
  %.not = icmp eq i16 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.03 = phi i32 [ %i.e, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  tail call void @_ZN3DHT10make_glineEi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %.03)
  %i.e = add nuw nsw i32 %.03, 1                  ; 2 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !92, !nonnull !99, !align !100
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.h = load i16, ptr %i.g, align 4, !tbaa !14
  %i.i = zext i16 %i.h to i32
  %i.j = icmp samesign ult i32 %i.e, %i.i
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !119
}

; Function Attrs: mustprogress uwtable
define void @_ZN3DHT10make_glineEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92, !nonnull !99, !align !100 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 30
  %i.d = load i16, ptr %i.c, align 2, !tbaa !78   ; 2 uses
  %i.e = zext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 544
  %i.g = load i32, ptr %i.f, align 8, !tbaa !90   ; 4 uses
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_ZN6LibRaw5COLOREii.exit141, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ult i32 %i.g, 1000
  br i1 %i.h, label %_ZN6LibRaw5COLOREii.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 381670
  %i.j = load i16, ptr %i.i, align 2, !tbaa !93   ; 2 uses
  %.not8.i = icmp eq i16 %i.j, 0
  br i1 %.not8.i, label %bb.d, label %_ZN6LibRaw3FCFEii.exit.i

_ZN6LibRaw3FCFEii.exit.i:                         ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 381828
  %i.l = load i32, ptr %i.k, align 4, !tbaa !94
  %.not.i.i = icmp ne i32 %i.l, 0                 ; 2 uses
  %i.m = zext i1 %.not.i.i to i32
  %.sink13.i.i.v = ashr i32 %1, %i.m
  %i.n = zext i16 %i.j to i32
  %.sink13.i.i = add nuw nsw i32 %i.n, 7
  %i.o = add i32 %.sink13.i.i, %.sink13.i.i.v
  %i.p = add nsw i32 %1, 1
  %i.q = lshr i32 %i.p, 1
  %i.r = select i1 %.not.i.i, i32 %i.q, i32 %1
  %i.s = shl i32 %i.o, 1
  %i.t = and i32 %i.s, 14
  %i.u = and i32 %i.r, 1
  %i.v = or disjoint i32 %i.t, %i.u
  %i.w = shl nuw nsw i32 %i.v, 1
  br label %.thread

bb.d:                                             ; preds = %bb.c
  %i.x = shl i32 %1, 2
  %i.y = and i32 %i.x, 28
  br label %.thread

.thread:                                          ; preds = %bb.d, %_ZN6LibRaw3FCFEii.exit.i
  %.sink = phi i32 [ %i.y, %bb.d ], [ %i.w, %_ZN6LibRaw3FCFEii.exit.i ]
  %i.z = lshr i32 %i.g, %.sink                    ; 2 uses
  %i.aa = and i32 %i.z, 1
  br label %bb.g

_ZN6LibRaw5COLOREii.exit:                         ; preds = %bb.b
  %i.ab = tail call noundef i32 @_ZN6LibRaw4fcolEii(ptr noundef nonnull align 8 dereferenceable(768512) %i.b, i32 noundef %1, i32 noundef 0) ; 4 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !92  ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 544
  %.pre153 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !90 ; 3 uses
  %i.ac = and i32 %i.ab, 1                        ; 4 uses
  %.not.i133 = icmp eq i32 %.pre153, 0
  br i1 %.not.i133, label %_ZN6LibRaw5COLOREii.exit141, label %bb.e

bb.e:                                             ; preds = %_ZN6LibRaw5COLOREii.exit
  %i.ad = icmp ult i32 %.pre153, 1000
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = tail call noundef i32 @_ZN6LibRaw4fcolEii(ptr noundef nonnull align 8 dereferenceable(768512) %.pre, i32 noundef %1, i32 noundef %i.ac)
  br label %_ZN6LibRaw5COLOREii.exit141

bb.g:                                             ; preds = %.thread, %bb.e
  %i.af = phi i32 [ %i.g, %.thread ], [ %.pre153, %bb.e ] ; 2 uses
  %i.ag = phi ptr [ %i.b, %.thread ], [ %.pre, %bb.e ] ; 2 uses
  %.0.i168174 = phi i32 [ %i.z, %.thread ], [ %i.ab, %bb.e ] ; 3 uses
  %i.ah = phi i32 [ %i.aa, %.thread ], [ %i.ac, %bb.e ] ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 381670
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !93 ; 2 uses
  %.not8.i134 = icmp eq i16 %i.aj, 0
  br i1 %.not8.i134, label %bb.h, label %_ZN6LibRaw3FCFEii.exit.i136

_ZN6LibRaw3FCFEii.exit.i136:                      ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 381828
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !94
  %.not.i.i135 = icmp eq i32 %i.al, 0             ; 3 uses
  %i.am = add i32 %1, 7
  %i.an = xor i32 %i.ah, -1
  %i.ao = lshr i32 %1, 1
  %i.ap = add nsw i32 %i.ao, %i.an
  %.sink13.i.i137 = select i1 %.not.i.i135, i32 %i.am, i32 %i.ap
  %.sink.i.i138 = select i1 %.not.i.i135, i32 %i.ah, i32 %1
  %.sink11.i.i139 = select i1 %.not.i.i135, i32 %1, i32 %.0.i168174
  %i.aq = zext i16 %i.aj to i32
  %i.ar = add i32 %.sink13.i.i137, %i.aq
  %i.as = add nsw i32 %.sink.i.i138, 1
  %i.at = lshr i32 %i.as, 1
  %i.au = add i32 %i.at, %.sink11.i.i139
  %i.av = shl i32 %i.ar, 1
  %i.aw = and i32 %i.av, 14
  %i.ax = and i32 %i.au, 1
  %i.ay = or disjoint i32 %i.ax, %i.aw
  %i.az = shl nuw nsw i32 %i.ay, 1
  %i.ba = lshr i32 %i.af, %i.az
  %i.bb = and i32 %i.ba, 3
  br label %_ZN6LibRaw5COLOREii.exit141

bb.h:                                             ; preds = %bb.g
  %i.bc = shl i32 %1, 1
  %i.bd = and i32 %i.bc, 14
  %i.be = or disjoint i32 %i.ah, %i.bd
  %i.bf = shl nuw nsw i32 %i.be, 1
  %i.bg = lshr i32 %i.af, %i.bf
  %i.bh = and i32 %i.bg, 3
  br label %_ZN6LibRaw5COLOREii.exit141

_ZN6LibRaw5COLOREii.exit141:                      ; preds = %bb.a, %_ZN6LibRaw5COLOREii.exit, %bb.f, %_ZN6LibRaw3FCFEii.exit.i136, %bb.h
  %i.bi = phi i32 [ %i.ac, %bb.f ], [ %i.ac, %_ZN6LibRaw5COLOREii.exit ], [ %i.ah, %_ZN6LibRaw3FCFEii.exit.i136 ], [ %i.ah, %bb.h ], [ 0, %bb.a ]
  %.0.i169 = phi i32 [ %i.ab, %bb.f ], [ %i.ab, %_ZN6LibRaw5COLOREii.exit ], [ %.0.i168174, %_ZN6LibRaw3FCFEii.exit.i136 ], [ %.0.i168174, %bb.h ], [ 6, %bb.a ]
  %.0.i140 = phi i32 [ %i.ae, %bb.f ], [ 6, %_ZN6LibRaw5COLOREii.exit ], [ %i.bb, %_ZN6LibRaw3FCFEii.exit.i136 ], [ %i.bh, %bb.h ], [ 6, %bb.a ]
  %i.bj = icmp samesign ult i32 %i.bi, %i.e
  br i1 %i.bj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN6LibRaw5COLOREii.exit141
  %i.bk = add nsw i32 %1, 4                       ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !81
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !79 ; 9 uses
  %i.bp = mul nsw i32 %i.bo, %i.bk                ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.br = add nsw i32 %1, 3
  %i.bs = mul nsw i32 %i.bo, %i.br
  %i.bt = add nsw i32 %1, 2
  %i.bu = mul nsw i32 %i.bo, %i.bt
  %i.bv = sext i32 %.0.i140 to i64                ; 8 uses
  %i.bw = add nsw i32 %1, 5
  %i.bx = mul nsw i32 %i.bo, %i.bw
  %i.by = add nsw i32 %1, 6
  %i.bz = mul nsw i32 %i.bo, %i.by
  %invariant.op = add i32 %i.bp, 5
  %invariant.op144 = add i32 %i.bp, 6
  %invariant.op146 = add i32 %i.bp, 3
  %invariant.op148 = add i32 %i.bp, 2
  %i.ca = load ptr, ptr %i.bq, align 8, !tbaa !80 ; 15 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.ca, i64 %i.bv ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !82
  %i.cd = uitofp i16 %i.cc to float               ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cf = and i32 %.0.i169, 1
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = sext i32 %i.bp to i64
  %i.ci = sext i32 %i.bs to i64
  %i.cj = sext i32 %i.bu to i64
  %i.ck = sext i32 %i.bx to i64
  %i.cl = sext i32 %i.bz to i64
  %i.cm = zext i16 %i.d to i64
  %invariant.gep175 = getelementptr [12 x i8], ptr %i.ca, i64 %i.ci
  %invariant.gep177 = getelementptr [12 x i8], ptr %i.ca, i64 %i.cj
  %invariant.gep179 = getelementptr [4 x i8], ptr %invariant.gep177, i64 %i.bv
  %invariant.gep181 = getelementptr [4 x i8], ptr %i.ca, i64 %i.bv
  %invariant.gep183 = getelementptr [12 x i8], ptr %i.ca, i64 %i.ck
  %invariant.gep185 = getelementptr [12 x i8], ptr %i.ca, i64 %i.cl
  %invariant.gep187 = getelementptr [4 x i8], ptr %invariant.gep185, i64 %i.bv
  %invariant.gep189 = getelementptr [4 x i8], ptr %i.ca, i64 %i.bv
  %invariant.gep191 = getelementptr [4 x i8], ptr %i.ca, i64 %i.bv
  %invariant.gep193 = getelementptr [4 x i8], ptr %i.ca, i64 %i.bv
  %invariant.gep195 = getelementptr [4 x i8], ptr %i.ca, i64 %i.bv
  br label %bb.i

._crit_edge:                                      ; preds = %bb.s, %_ZN6LibRaw5COLOREii.exit141
  ret void

bb.i:                                             ; preds = %.lr.ph, %bb.s
  %indvars.iv = phi i64 [ %i.cg, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 3 uses
  %i.cn = add nuw nsw i64 %indvars.iv, 4          ; 6 uses
  %i.co = add nsw i64 %i.cn, %i.ch                ; 5 uses
  %i.cp = getelementptr inbounds i8, ptr %i.bm, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !101
  %i.cr = and i8 %i.cq, 4
  %.not = icmp eq i8 %i.cr, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %gep176 = getelementptr [12 x i8], ptr %invariant.gep175, i64 %i.cn
  %i.cs = getelementptr inbounds nuw i8, ptr %gep176, i64 4
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !84
  %i.cu = fmul reassoc nsz arcp contract afn float %i.ct, 2.000000e+00
  %gep180 = getelementptr [12 x i8], ptr %invariant.gep179, i64 %i.cn
  %i.cv = load float, ptr %gep180, align 4, !tbaa !84
  %gep182 = getelementptr [12 x i8], ptr %invariant.gep181, i64 %i.co
  %i.cw = load float, ptr %gep182, align 4, !tbaa !84 ; 2 uses
  %i.cx = fadd reassoc nsz arcp contract afn float %i.cw, %i.cv
  %i.cy = fdiv reassoc nsz arcp contract afn float %i.cu, %i.cx
  %gep184 = getelementptr [12 x i8], ptr %invariant.gep183, i64 %i.cn
  %i.cz = getelementptr inbounds nuw i8, ptr %gep184, i64 4
  %i.da = load float, ptr %i.cz, align 4, !tbaa !84
  %i.db = fmul reassoc nsz arcp contract afn float %i.da, 2.000000e+00
  %gep188 = getelementptr [12 x i8], ptr %invariant.gep187, i64 %i.cn
  %i.dc = load float, ptr %gep188, align 4, !tbaa !84
  %i.dd = fadd reassoc nsz arcp contract afn float %i.dc, %i.cw
  %i.de = fdiv reassoc nsz arcp contract afn float %i.db, %i.dd
  %gep190 = getelementptr [12 x i8], ptr %invariant.gep189, i64 %i.co
  %.pre156 = load float, ptr %gep190, align 4, !tbaa !84
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.df = trunc nuw nsw i64 %indvars.iv to i32    ; 4 uses
  %.reass = add i32 %invariant.op, %i.df
  %i.dg = sext i32 %.reass to i64
  %i.dh = getelementptr inbounds [12 x i8], ptr %i.ca, i64 %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dj = load float, ptr %i.di, align 4, !tbaa !84
  %i.dk = fmul reassoc nsz arcp contract afn float %i.dj, 2.000000e+00
  %.reass145 = add i32 %invariant.op144, %i.df
  %i.dl = sext i32 %.reass145 to i64
  %gep192 = getelementptr [12 x i8], ptr %invariant.gep191, i64 %i.dl
  %i.dm = load float, ptr %gep192, align 4, !tbaa !84
  %gep194 = getelementptr [12 x i8], ptr %invariant.gep193, i64 %i.co
  %i.dn = load float, ptr %gep194, align 4, !tbaa !84 ; 3 uses
  %i.do = fadd reassoc nsz arcp contract afn float %i.dn, %i.dm
  %i.dp = fdiv reassoc nsz arcp contract afn float %i.dk, %i.do
  %.reass147 = add i32 %invariant.op146, %i.df
  %i.dq = sext i32 %.reass147 to i64
  %i.dr = getelementptr inbounds [12 x i8], ptr %i.ca, i64 %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !84
  %i.du = fmul reassoc nsz arcp contract afn float %i.dt, 2.000000e+00
  %.reass149 = add i32 %invariant.op148, %i.df
  %i.dv = sext i32 %.reass149 to i64
  %gep196 = getelementptr [12 x i8], ptr %invariant.gep195, i64 %i.dv
  %i.dw = load float, ptr %gep196, align 4, !tbaa !84
  %i.dx = fadd reassoc nsz arcp contract afn float %i.dw, %i.dn
  %i.dy = fdiv reassoc nsz arcp contract afn float %i.du, %i.dx
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.dz = phi float [ %.pre156, %bb.j ], [ %i.dn, %bb.k ] ; 7 uses
  %.0124 = phi i32 [ 0, %bb.j ], [ 1, %bb.k ]     ; 2 uses
  %.0123 = phi i32 [ -1, %bb.j ], [ 0, %bb.k ]    ; 2 uses
  %.0122 = phi i32 [ 0, %bb.j ], [ -1, %bb.k ]    ; 2 uses
  %.0121 = phi i32 [ 1, %bb.j ], [ 0, %bb.k ]     ; 2 uses
  %.0120 = phi nsz float [ %i.cy, %bb.j ], [ %i.dp, %bb.k ]
  %.0119 = phi nsz float [ %i.de, %bb.j ], [ %i.dy, %bb.k ]
  %i.ea = getelementptr inbounds [12 x i8], ptr %i.ca, i64 %i.co
  %2 = shl nsw i32 %.0123, 1
  %3 = add nsw i32 %2, %i.bk
  %4 = shl nuw nsw i32 %.0124, 1
  %5 = trunc nuw nsw i64 %i.cn to i32             ; 4 uses
  %6 = add nuw nsw i32 %4, %5
  %7 = mul nsw i32 %3, %i.bo
  %8 = add nsw i32 %6, %7
  %i.eb = sext i32 %8 to i64
  %gep = getelementptr [12 x i8], ptr %invariant.gep, i64 %i.eb
  %i.ec = load float, ptr %gep, align 4, !tbaa !84 ; 3 uses
  %i.ed = fcmp reassoc nsz arcp contract afn ogt float %i.dz, %i.ec
  %i.ee = fdiv reassoc nsz arcp contract afn float %i.dz, %i.ec
  %i.ef = fdiv reassoc nsz arcp contract afn float %i.ec, %i.dz
  %i.eg = select reassoc nsz arcp contract afn i1 %i.ed, float %i.ee, float %i.ef
  %i.eh = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.eg ; 2 uses
  %9 = shl nuw nsw i32 %.0121, 1
  %10 = add nsw i32 %9, %i.bk
  %11 = shl nsw i32 %.0122, 1
  %12 = add nsw i32 %11, %5
  %13 = mul nsw i32 %10, %i.bo
  %14 = add nsw i32 %12, %13
  %i.ei = sext i32 %14 to i64
  %gep151 = getelementptr [12 x i8], ptr %invariant.gep, i64 %i.ei
  %i.ej = load float, ptr %gep151, align 4, !tbaa !84 ; 3 uses
  %i.ek = fcmp reassoc nsz arcp contract afn ogt float %i.dz, %i.ej
  %i.el = fdiv reassoc nsz arcp contract afn float %i.dz, %i.ej
  %i.em = fdiv reassoc nsz arcp contract afn float %i.ej, %i.dz
  %i.en = select reassoc nsz arcp contract afn i1 %i.ek, float %i.el, float %i.em
  %i.eo = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.en ; 2 uses
  %i.ep = fmul reassoc nsz arcp contract afn float %i.eh, %i.eh ; 2 uses
  %i.eq = fmul reassoc nsz arcp contract afn float %i.eo, %i.eo ; 2 uses
  %i.er = fmul reassoc nsz arcp contract afn float %i.ep, %.0120
  %i.es = fmul reassoc nsz arcp contract afn float %i.eq, %.0119
  %i.et = fadd reassoc nsz arcp contract afn float %i.es, %i.er
  %i.eu = fmul reassoc nsz arcp contract afn float %i.et, %i.dz
  %i.ev = fadd reassoc nsz arcp contract afn float %i.eq, %i.ep
  %i.ew = fdiv reassoc nsz arcp contract afn float %i.eu, %i.ev ; 5 uses
  %i.ex = add nsw i32 %.0123, %i.bk
  %i.ey = add nuw nsw i32 %.0124, %5
  %i.ez = mul nsw i32 %i.ex, %i.bo
  %i.fa = add nsw i32 %i.ey, %i.ez
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds [12 x i8], ptr %i.ca, i64 %i.fb ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !84 ; 2 uses
  %i.ff = add nsw i32 %.0121, %i.bk
  %i.fg = add nsw i32 %.0122, %5
  %i.fh = mul nsw i32 %i.ff, %i.bo
  %i.fi = add nsw i32 %i.fg, %i.fh
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds [12 x i8], ptr %i.ca, i64 %i.fj ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !84 ; 2 uses
  %i.fn = fcmp reassoc nsz arcp contract afn olt float %i.fe, %i.fm
  %.pn = select i1 %i.fn, ptr %i.fc, ptr %i.fk
  %.in = getelementptr inbounds nuw i8, ptr %.pn, i64 4
  %i.fo = load float, ptr %.in, align 4, !tbaa !84 ; 4 uses
  %i.fp = fcmp reassoc nsz arcp contract afn ogt float %i.fe, %i.fm
  %.pn132 = select i1 %i.fp, ptr %i.fc, ptr %i.fk
  %.in131 = getelementptr inbounds nuw i8, ptr %.pn132, i64 4
  %i.fq = load float, ptr %.in131, align 4, !tbaa !84 ; 4 uses
  %i.fr = fmul reassoc nsz arcp contract afn float %i.fo, f0x3F555555
  %i.fs = fcmp reassoc nsz arcp contract afn olt float %i.ew, %i.fr
  br i1 %i.fs, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ft = fmul reassoc nsz arcp contract afn float %i.fo, 5.000000e-01
  %i.fu = fmul reassoc nsz arcp contract afn float %i.fo, f0x3FAAAAAA
  %i.fv = fsub reassoc nsz arcp contract afn float %i.fu, %i.ew
  %i.fw = fmul reassoc nsz arcp contract afn float %i.fv, %i.ft
  %i.fx = tail call reassoc nsz arcp contract afn noundef float @llvm.sqrt.f32(float %i.fw)
  %i.fy = fmul reassoc nsz arcp contract afn float %i.fo, f0x3FAAAAAB
  %i.fz = fsub reassoc nsz arcp contract afn float %i.fy, %i.fx
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.ga = fmul reassoc nsz arcp contract afn float %i.fq, 1.200000e+00
  %i.gb = fcmp reassoc nsz arcp contract afn ogt float %i.ew, %i.ga
  br i1 %i.gb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.gc = fmul reassoc nsz arcp contract afn float %i.fq, f0x3EF5C290
  %i.gd = fmul reassoc nsz arcp contract afn float %i.fq, -7.200000e-01
  %i.ge = fadd reassoc nsz arcp contract afn float %i.gd, %i.ew
  %i.gf = fmul reassoc nsz arcp contract afn float %i.ge, %i.gc
  %i.gg = tail call reassoc nsz arcp contract afn noundef float @llvm.sqrt.f32(float %i.gf)
  %i.gh = fmul reassoc nsz arcp contract afn float %i.fq, 7.200000e-01
  %i.gi = fadd reassoc nsz arcp contract afn float %i.gg, %i.gh
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.m
  %.0 = phi nsz float [ %i.fz, %bb.m ], [ %i.gi, %bb.o ], [ %i.ew, %bb.n ] ; 3 uses
  %i.gj = fcmp reassoc nsz arcp contract afn ogt float %.0, %i.cd
  br i1 %i.gj, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gk = load float, ptr %i.ce, align 4, !tbaa !84 ; 2 uses
  %i.gl = fcmp reassoc nsz arcp contract afn olt float %.0, %i.gk
  br i1 %i.gl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
  %.1 = phi nsz float [ %.0, %bb.q ], [ %i.gk, %bb.r ], [ %i.cd, %bb.p ]
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  store float %.1, ptr %i.gm, align 4, !tbaa !84
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.gn = icmp samesign ult i64 %indvars.iv.next, %i.cm
  br i1 %i.gn, label %bb.i, label %._crit_edge, !llvm.loop !120
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN3DHT15illustrate_dirsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92, !nonnull !99, !align !100 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.d = load i16, ptr %i.c, align 4, !tbaa !14   ; 2 uses
  %i.e = zext i16 %i.d to i32
  %.not = icmp eq i16 %i.d, 0
  br i1 %.not, label %._crit_edge.split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 30
  %i.g = load i16, ptr %i.f, align 2, !tbaa !78   ; 3 uses
  %.not22.i = icmp eq i16 %i.g, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = load i32, ptr %i.j, align 4              ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8              ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20
  %wide.trip.count.i = zext i16 %i.g to i64       ; 8 uses
  br i1 %.not22.i, label %._crit_edge.split, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph
  %i.p = add nsw i64 %wide.trip.count.i, -1       ; 2 uses
  %i.q = shl i32 %i.k, 2
  %i.r = add i32 %i.q, 4                          ; 2 uses
  %i.s = mul nuw nsw i64 %wide.trip.count.i, 12
  %scevgep4 = getelementptr i8, ptr %i.i, i64 %i.s
  %scevgep7 = getelementptr i8, ptr %i.m, i64 %wide.trip.count.i
  %min.iters.check = icmp ult i16 %i.g, 8
  %i.t = trunc nsw i64 %i.p to i32
  %i.u = icmp ugt i64 %i.p, 4294967295
  %n.vec = and i64 %wide.trip.count.i, 65528      ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.v = add nsw i64 %wide.trip.count.i, -1
  br label %.lr.ph.i

._crit_edge.split:                                ; preds = %_ZN3DHT16illustrate_dlineEi.exit.loopexit, %.lr.ph, %bb.a
  ret void

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN3DHT16illustrate_dlineEi.exit.loopexit
  %.03 = phi i32 [ %i.bs, %_ZN3DHT16illustrate_dlineEi.exit.loopexit ], [ 0, %.lr.ph.i.preheader ] ; 4 uses
  %i.w = mul i32 %i.k, %.03
  %i.x = add i32 %i.r, %i.w
  %i.y = sext i32 %i.x to i64                     ; 3 uses
  %i.z = mul nsw i64 %i.y, 12                     ; 2 uses
  %scevgep = getelementptr i8, ptr %i.i, i64 %i.z
  %scevgep5 = getelementptr i8, ptr %scevgep4, i64 %i.z
  %scevgep6 = getelementptr i8, ptr %i.m, i64 %i.y
  %scevgep8 = getelementptr i8, ptr %scevgep7, i64 %i.y
  %i.aa = add nuw nsw i32 %.03, 4
  %i.ab = mul nsw i32 %i.k, %i.aa
  %invariant.op.i = add i32 %i.ab, 4              ; 4 uses
  %i.ac = load i16, ptr %i.n, align 8
  %i.ad = uitofp i16 %i.ac to float
  %i.ae = fmul reassoc nnan nsz arcp contract afn float %i.ad, 5.000000e-01 ; 4 uses
  %i.af = load i16, ptr %i.o, align 4
  %i.ag = uitofp i16 %i.af to float
  %i.ah = fmul reassoc nnan nsz arcp contract afn float %i.ag, 5.000000e-01 ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i
  %i.ai = mul i32 %i.k, %.03
  %i.aj = add i32 %i.r, %i.ai                     ; 2 uses
  %i.ak = add i32 %i.aj, %i.t
  %i.al = icmp slt i32 %i.ak, %i.aj
  %i.am = or i1 %i.al, %i.u
  br i1 %i.am, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %scevgep, %scevgep8
  %bound1 = icmp ult ptr %scevgep6, %scevgep5
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %invariant.op.i, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert9 = insertelement <8 x float> poison, float %i.ae, i64 0
  %broadcast.splat10 = shufflevector <8 x float> %broadcast.splatinsert9, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert11 = insertelement <8 x float> poison, float %i.ah, i64 0
  %broadcast.splat12 = shufflevector <8 x float> %broadcast.splatinsert11, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.an = add <8 x i32> %broadcast.splat, %vec.ind
  %i.ao = sext <8 x i32> %i.an to <8 x i64>       ; 2 uses
  %i.ap = extractelement <8 x i64> %i.ao, i64 0
  %wide.gep = getelementptr inbounds [12 x i8], ptr %i.i, <8 x i64> %i.ao ; 3 uses
  %i.aq = extractelement <8 x ptr> %wide.gep, i64 0
  %wide.gep13 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  store <24 x float> splat (float 5.000000e-01), ptr %i.aq, align 4, !tbaa !84, !alias.scope !121, !noalias !124
  %i.ar = getelementptr inbounds i8, ptr %i.m, i64 %i.ap
  %wide.load = load <8 x i8>, ptr %i.ar, align 1, !tbaa !101, !alias.scope !124
  %i.as = and <8 x i8> %wide.load, splat (i8 64)
  %i.at = icmp eq <8 x i8> %i.as, zeroinitializer ; 2 uses
  %i.au = xor <8 x i1> %i.at, splat (i1 true)
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %broadcast.splat10, <8 x ptr> align 4 %wide.gep, <8 x i1> %i.au), !tbaa !84, !alias.scope !121, !noalias !124
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %broadcast.splat12, <8 x ptr> align 4 %wide.gep13, <8 x i1> %i.at), !tbaa !84, !alias.scope !121, !noalias !124
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !126

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN3DHT16illustrate_dlineEi.exit.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 4 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.aw = trunc nuw nsw i64 %indvars.iv.i.ph to i32
  %.reass.i.prol = add i32 %invariant.op.i, %i.aw
  %i.ax = sext i32 %.reass.i.prol to i64          ; 2 uses
  %i.ay = getelementptr inbounds [12 x i8], ptr %i.i, i64 %i.ax ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  store float 5.000000e-01, ptr %i.az, align 4, !tbaa !84
  store <2 x float> splat (float 5.000000e-01), ptr %i.ay, align 4, !tbaa !84
  %i.ba = getelementptr inbounds i8, ptr %i.m, i64 %i.ax
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !101
  %i.bc = and i8 %i.bb, 64
  %.not.i.prol = icmp eq i8 %i.bc, 0
  br i1 %.not.i.prol, label %bb.c, label %bb.b

bb.b:                                             ; preds = %scalar.ph.prol
  store float %i.ae, ptr %i.ay, align 4, !tbaa !84
end_hunk_0
