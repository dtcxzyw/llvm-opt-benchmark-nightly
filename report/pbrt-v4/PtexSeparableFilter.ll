Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/PtexSeparableFilter?download=true
inline.NumInlined: 167
inline.NumDeleted: 52
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN4Ptex4v2_419PtexSeparableKernel19adjustMainToSubfaceEi:bb.a
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !47  ; 2 uses
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !48 ; 7 uses
  %i.ao = shl nsw i32 %i.an, 1                    ; 2 uses
  %i.ap = icmp sgt i32 %i.an, 0
  br i1 %i.ap, label %.lr.ph.preheader.i21, label %_ZN4Ptex4v2_419PtexSeparableKernel6upresVEv.exit

.lr.ph.preheader.i21:                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !39 ; 2 uses
  %i.as = zext nneg i32 %i.ao to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.as ; 2 uses
  %i.au = zext nneg i32 %i.an to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.au ; 2 uses
  %xtraiter43 = and i32 %i.an, 3                  ; 2 uses
  %lcmp.mod44.not = icmp eq i32 %xtraiter43, 0
  br i1 %lcmp.mod44.not, label %.lr.ph.i22.prol.loopexit, label %.lr.ph.i22.prol

.lr.ph.i22.prol:                                  ; preds = %.lr.ph.preheader.i21, %.lr.ph.i22.prol
  %.011.i23.prol = phi i32 [ %i.az, %.lr.ph.i22.prol ], [ %i.an, %.lr.ph.preheader.i21 ]
  %.pn810.i24.prol = phi ptr [ %.06.i26.prol, %.lr.ph.i22.prol ], [ %i.at, %.lr.ph.preheader.i21 ] ; 2 uses
  %.pn9.i25.prol = phi ptr [ %.07.i27.prol, %.lr.ph.i22.prol ], [ %i.av, %.lr.ph.preheader.i21 ]
  %prol.iter45 = phi i32 [ %prol.iter45.next, %.lr.ph.i22.prol ], [ 0, %.lr.ph.preheader.i21 ]
  %.06.i26.prol = getelementptr inbounds i8, ptr %.pn810.i24.prol, i64 -8 ; 3 uses
  %.07.i27.prol = getelementptr inbounds i8, ptr %.pn9.i25.prol, i64 -4 ; 3 uses
  %i.aw = load float, ptr %.07.i27.prol, align 4, !tbaa !41
  %i.ax = fmul float %i.aw, 5.000000e-01          ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %.pn810.i24.prol, i64 -4
  store float %i.ax, ptr %i.ay, align 4, !tbaa !41
  store float %i.ax, ptr %.06.i26.prol, align 4, !tbaa !41
  %i.az = add nsw i32 %.011.i23.prol, -1          ; 2 uses
  %prol.iter45.next = add i32 %prol.iter45, 1     ; 2 uses
  %prol.iter45.cmp.not = icmp eq i32 %prol.iter45.next, %xtraiter43
  br i1 %prol.iter45.cmp.not, label %.lr.ph.i22.prol.loopexit, label %.lr.ph.i22.prol, !llvm.loop !119

.lr.ph.i22.prol.loopexit:                         ; preds = %.lr.ph.i22.prol, %.lr.ph.preheader.i21
  %.011.i23.unr = phi i32 [ %i.an, %.lr.ph.preheader.i21 ], [ %i.az, %.lr.ph.i22.prol ]
  %.pn810.i24.unr = phi ptr [ %i.at, %.lr.ph.preheader.i21 ], [ %.06.i26.prol, %.lr.ph.i22.prol ]
  %.pn9.i25.unr = phi ptr [ %i.av, %.lr.ph.preheader.i21 ], [ %.07.i27.prol, %.lr.ph.i22.prol ]
  %i.ba = icmp ult i32 %i.an, 4
  br i1 %i.ba, label %_ZN4Ptex4v2_419PtexSeparableKernel6upresVEv.exit, label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %.lr.ph.i22.prol.loopexit, %.lr.ph.i22
  %.011.i23 = phi i32 [ %i.bn, %.lr.ph.i22 ], [ %.011.i23.unr, %.lr.ph.i22.prol.loopexit ] ; 2 uses
  %.pn810.i24 = phi ptr [ %.06.i26.3, %.lr.ph.i22 ], [ %.pn810.i24.unr, %.lr.ph.i22.prol.loopexit ] ; 8 uses
  %.pn9.i25 = phi ptr [ %.07.i27.3, %.lr.ph.i22 ], [ %.pn9.i25.unr, %.lr.ph.i22.prol.loopexit ] ; 4 uses
  %.06.i26 = getelementptr inbounds i8, ptr %.pn810.i24, i64 -8
  %.07.i27 = getelementptr inbounds i8, ptr %.pn9.i25, i64 -4
  %i.bb = load float, ptr %.07.i27, align 4, !tbaa !41
  %i.bc = fmul float %i.bb, 5.000000e-01          ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %.pn810.i24, i64 -4
  store float %i.bc, ptr %i.bd, align 4, !tbaa !41
  store float %i.bc, ptr %.06.i26, align 4, !tbaa !41
  %.06.i26.1 = getelementptr inbounds i8, ptr %.pn810.i24, i64 -16
  %.07.i27.1 = getelementptr inbounds i8, ptr %.pn9.i25, i64 -8
  %i.be = load float, ptr %.07.i27.1, align 4, !tbaa !41
  %i.bf = fmul float %i.be, 5.000000e-01          ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %.pn810.i24, i64 -12
  store float %i.bf, ptr %i.bg, align 4, !tbaa !41
  store float %i.bf, ptr %.06.i26.1, align 4, !tbaa !41
  %.06.i26.2 = getelementptr inbounds i8, ptr %.pn810.i24, i64 -24
  %.07.i27.2 = getelementptr inbounds i8, ptr %.pn9.i25, i64 -12
  %i.bh = load float, ptr %.07.i27.2, align 4, !tbaa !41
  %i.bi = fmul float %i.bh, 5.000000e-01          ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %.pn810.i24, i64 -20
  store float %i.bi, ptr %i.bj, align 4, !tbaa !41
  store float %i.bi, ptr %.06.i26.2, align 4, !tbaa !41
  %.06.i26.3 = getelementptr inbounds i8, ptr %.pn810.i24, i64 -32 ; 2 uses
  %.07.i27.3 = getelementptr inbounds i8, ptr %.pn9.i25, i64 -16 ; 2 uses
  %i.bk = load float, ptr %.07.i27.3, align 4, !tbaa !41
  %i.bl = fmul float %i.bk, 5.000000e-01          ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %.pn810.i24, i64 -28
  store float %i.bl, ptr %i.bm, align 4, !tbaa !41
  store float %i.bl, ptr %.06.i26.3, align 4, !tbaa !41
  %i.bn = add nsw i32 %.011.i23, -4
  %i.bo = icmp sgt i32 %.011.i23, 4
  br i1 %i.bo, label %.lr.ph.i22, label %_ZN4Ptex4v2_419PtexSeparableKernel6upresVEv.exit, !llvm.loop !1

_ZN4Ptex4v2_419PtexSeparableKernel6upresVEv.exit: ; preds = %.lr.ph.i22.prol.loopexit, %.lr.ph.i22, %bb.d
  store i32 %i.ao, ptr %i.am, align 8, !tbaa !48
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !49
  %i.br = shl nsw i32 %i.bq, 1
  store i32 %i.br, ptr %i.bp, align 8, !tbaa !49
  store i8 1, ptr %i.aj, align 1, !tbaa !47
  br label %bb.e

bb.e:                                             ; preds = %_ZN4Ptex4v2_419PtexSeparableKernel6upresVEv.exit, %bb.c
  %i.bs = phi i8 [ 1, %_ZN4Ptex4v2_419PtexSeparableKernel6upresVEv.exit ], [ %i.ak, %bb.c ] ; 3 uses
  %i.bt = icmp sgt i8 %i.ai, 0
  br i1 %i.bt, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bu = add nsw i8 %i.ai, -1
  store i8 %i.bu, ptr %0, align 8, !tbaa !42
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bv = icmp sgt i8 %i.bs, 0
  br i1 %i.bv, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bw = add nsw i8 %i.bs, -1                    ; 2 uses
  store i8 %i.bw, ptr %i.aj, align 1, !tbaa !47
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bx = phi i8 [ %i.bw, %bb.h ], [ %i.bs, %bb.g ]
  %i.by = load i8, ptr %0, align 8, !tbaa !55
  %i.bz = zext nneg i8 %i.by to i32
  %i.ca = shl nuw i32 1, %i.bz                    ; 5 uses
  %i.cb = zext nneg i8 %i.bx to i32
  %i.cc = shl nuw i32 1, %i.cb                    ; 5 uses
  %i.cd = and i32 %1, 3
  switch i32 %i.cd, label %default.unreachable42 [
    i32 0, label %bb.j
    i32 1, label %bb.l
    i32 2, label %bb.n
    i32 3, label %bb.p
  ]

bb.j:                                             ; preds = %bb.i
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !46 ; 2 uses
  %i.cg = icmp slt i32 %i.cf, %i.ca
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !49
  %i.cj = sub nsw i32 %i.ci, %i.cc
  store i32 %i.cj, ptr %i.ch, align 8, !tbaa !49
  br i1 %i.cg, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ck = sub nsw i32 %i.cf, %i.ca
  store i32 %i.ck, ptr %i.ce, align 4, !tbaa !46
  br label %bb.r

bb.l:                                             ; preds = %bb.i
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !49 ; 2 uses
  %i.cn = icmp slt i32 %i.cm, %i.cc
  br i1 %i.cn, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.co = sub nsw i32 %i.cm, %i.cc
  store i32 %i.co, ptr %i.cl, align 8, !tbaa !49
  br label %bb.r

bb.n:                                             ; preds = %bb.i
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !46 ; 2 uses
  %.not28 = icmp slt i32 %i.cq, %i.ca
  br i1 %.not28, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cr = sub nsw i32 %i.cq, %i.ca
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !46
  br label %bb.r

bb.p:                                             ; preds = %bb.i
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !49 ; 2 uses
  %.not = icmp slt i32 %i.ct, %i.cc
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !46
  %i.cw = sub nsw i32 %i.cv, %i.ca
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !46
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cx = sub nsw i32 %i.ct, %i.cc
  store i32 %i.cx, ptr %i.cs, align 8, !tbaa !49
  br label %bb.r

default.unreachable42:                            ; preds = %bb.i
  unreachable

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.n, %bb.o, %bb.l, %bb.m, %bb.j, %bb.k
  %.0.in = phi i1 [ true, %bb.j ], [ false, %bb.k ], [ true, %bb.l ], [ false, %bb.m ], [ true, %bb.o ], [ false, %bb.n ], [ true, %bb.q ], [ false, %bb.p ]
  ret i1 %.0.in
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4Ptex4v2_419PtexSeparableKernel6rotateEi(ptr noundef nonnull align 8 dereferenceable(124) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = and i32 %1, 3
  switch i32 %i.a, label %default.unreachable45 [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 0, label %bb.e
  ]

default.unreachable45:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 8, !tbaa !55      ; 2 uses
  %i.c = zext nneg i8 %i.b to i32
  %i.d = shl nuw i32 1, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !43   ; 4 uses
  %i.i = add i32 %i.h, %i.f
  %i.j = sub i32 %i.d, %i.i
  %i.k = icmp sgt i32 %i.h, 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !58   ; 3 uses
  br i1 %i.k, label %.lr.ph.i.i.preheader.i, label %_ZN4Ptex4v2_419PtexSeparableKernel5flipUEv.exit

.lr.ph.i.i.preheader.i:                           ; preds = %bb.b
  %i.n = zext nneg i32 %i.h to i64
  %.idx.i = shl nuw nsw i64 %i.n, 2
  %i.o = getelementptr i8, ptr %i.m, i64 %.idx.i
  %.012.i.i.i = getelementptr i8, ptr %i.o, i64 -4
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.preheader.i
  %.014.i.i.i = phi ptr [ %.0.i.i.i, %.lr.ph.i.i.i ], [ %.012.i.i.i, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %.0913.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %i.m, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %i.p = load float, ptr %.0913.i.i.i, align 4, !tbaa !41
  %i.q = load float, ptr %.014.i.i.i, align 4, !tbaa !41
  store float %i.q, ptr %.0913.i.i.i, align 4, !tbaa !41
  store float %i.p, ptr %.014.i.i.i, align 4, !tbaa !41
  %i.r = getelementptr inbounds nuw i8, ptr %.0913.i.i.i, i64 4 ; 2 uses
  %.0.i.i.i = getelementptr inbounds i8, ptr %.014.i.i.i, i64 -4 ; 2 uses
  %i.s = icmp ult ptr %i.r, %.0.i.i.i
  br i1 %i.s, label %.lr.ph.i.i.i, label %_ZN4Ptex4v2_419PtexSeparableKernel5flipUEv.exit, !llvm.loop !120

_ZN4Ptex4v2_419PtexSeparableKernel5flipUEv.exit:  ; preds = %.lr.ph.i.i.i, %bb.b
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !56
  %.sroa.2.0.insert.ext.i.i.i = zext i8 %i.b to i16
  %.sroa.2.0.insert.shift.i.i.i = shl nuw i16 %.sroa.2.0.insert.ext.i.i.i, 8
  %.sroa.0.0.insert.ext.i.i.i = zext i8 %3 to i16
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i16 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  store i16 %.sroa.0.0.insert.insert.i.i.i, ptr %0, align 8, !tbaa !50
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !28
  store i32 %i.u, ptr %i.e, align 4, !tbaa !28
  store i32 %i.j, ptr %i.t, align 8, !tbaa !28
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !28
  store i32 %i.w, ptr %i.g, align 4, !tbaa !28
  store i32 %i.h, ptr %i.v, align 8, !tbaa !28
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !58
  store ptr %i.z, ptr %i.x, align 8, !tbaa !58
  store ptr %i.m, ptr %i.y, align 8, !tbaa !58
  br label %_ZN4Ptex4v2_419PtexSeparableKernel5flipVEv.exit

bb.c:                                             ; preds = %bb.a
  %i.aa = load i8, ptr %0, align 8, !tbaa !55
  %i.ab = zext nneg i8 %i.aa to i32
  %i.ac = shl nuw i32 1, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !46
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !43 ; 3 uses
  %i.ah = add i32 %i.ag, %i.ae
  %i.ai = sub i32 %i.ac, %i.ah
  store i32 %i.ai, ptr %i.ad, align 4, !tbaa !46
  %i.aj = icmp sgt i32 %i.ag, 1
  br i1 %i.aj, label %.lr.ph.i.i.preheader.i2, label %_ZN4Ptex4v2_419PtexSeparableKernel5flipUEv.exit9

.lr.ph.i.i.preheader.i2:                          ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !38 ; 2 uses
  %i.am = zext nneg i32 %i.ag to i64
  %.idx.i3 = shl nuw nsw i64 %i.am, 2
  %i.an = getelementptr i8, ptr %i.al, i64 %.idx.i3
  %.012.i.i.i4 = getelementptr i8, ptr %i.an, i64 -4
  br label %.lr.ph.i.i.i5

.lr.ph.i.i.i5:                                    ; preds = %.lr.ph.i.i.i5, %.lr.ph.i.i.preheader.i2
  %.014.i.i.i6 = phi ptr [ %.0.i.i.i8, %.lr.ph.i.i.i5 ], [ %.012.i.i.i4, %.lr.ph.i.i.preheader.i2 ] ; 3 uses
  %.0913.i.i.i7 = phi ptr [ %i.aq, %.lr.ph.i.i.i5 ], [ %i.al, %.lr.ph.i.i.preheader.i2 ] ; 3 uses
  %i.ao = load float, ptr %.0913.i.i.i7, align 4, !tbaa !41
  %i.ap = load float, ptr %.014.i.i.i6, align 4, !tbaa !41
  store float %i.ap, ptr %.0913.i.i.i7, align 4, !tbaa !41
  store float %i.ao, ptr %.014.i.i.i6, align 4, !tbaa !41
  %i.aq = getelementptr inbounds nuw i8, ptr %.0913.i.i.i7, i64 4 ; 2 uses
  %.0.i.i.i8 = getelementptr inbounds i8, ptr %.014.i.i.i6, i64 -4 ; 2 uses
  %i.ar = icmp ult ptr %i.aq, %.0.i.i.i8
  br i1 %i.ar, label %.lr.ph.i.i.i5, label %_ZN4Ptex4v2_419PtexSeparableKernel5flipUEv.exit9, !llvm.loop !120

_ZN4Ptex4v2_419PtexSeparableKernel5flipUEv.exit9: ; preds = %.lr.ph.i.i.i5, %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !56
  %i.au = zext nneg i8 %i.at to i32
  %i.av = shl nuw i32 1, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !49
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !48 ; 3 uses
  %i.ba = add i32 %i.az, %i.ax
  %i.bb = sub i32 %i.av, %i.ba
  store i32 %i.bb, ptr %i.aw, align 8, !tbaa !49
  %i.bc = icmp sgt i32 %i.az, 1
  br i1 %i.bc, label %.lr.ph.i.i.preheader.i10, label %_ZN4Ptex4v2_419PtexSeparableKernel5flipVEv.exit

.lr.ph.i.i.preheader.i10:                         ; preds = %_ZN4Ptex4v2_419PtexSeparableKernel5flipUEv.exit9
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !39 ; 2 uses
  %i.bf = zext nneg i32 %i.az to i64
  %.idx.i11 = shl nuw nsw i64 %i.bf, 2
  %i.bg = getelementptr i8, ptr %i.be, i64 %.idx.i11
  %.012.i.i.i12 = getelementptr i8, ptr %i.bg, i64 -4
  br label %.lr.ph.i.i.i13

.lr.ph.i.i.i13:                                   ; preds = %.lr.ph.i.i.i13, %.lr.ph.i.i.preheader.i10
  %.014.i.i.i14 = phi ptr [ %.0.i.i.i16, %.lr.ph.i.i.i13 ], [ %.012.i.i.i12, %.lr.ph.i.i.preheader.i10 ] ; 3 uses
  %.0913.i.i.i15 = phi ptr [ %i.bj, %.lr.ph.i.i.i13 ], [ %i.be, %.lr.ph.i.i.preheader.i10 ] ; 3 uses
  %i.bh = load float, ptr %.0913.i.i.i15, align 4, !tbaa !41
  %i.bi = load float, ptr %.014.i.i.i14, align 4, !tbaa !41
  store float %i.bi, ptr %.0913.i.i.i15, align 4, !tbaa !41
  store float %i.bh, ptr %.014.i.i.i14, align 4, !tbaa !41
  %i.bj = getelementptr inbounds nuw i8, ptr %.0913.i.i.i15, i64 4 ; 2 uses
  %.0.i.i.i16 = getelementptr inbounds i8, ptr %.014.i.i.i14, i64 -4 ; 2 uses
  %i.bk = icmp ult ptr %i.bj, %.0.i.i.i16
  br i1 %i.bk, label %.lr.ph.i.i.i13, label %_ZN4Ptex4v2_419PtexSeparableKernel5flipVEv.exit, !llvm.loop !120

bb.d:                                             ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !56  ; 2 uses
  %i.bn = zext nneg i8 %i.bm to i32
  %i.bo = shl nuw i32 1, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !49
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !48 ; 4 uses
  %i.bt = add i32 %i.bs, %i.bq
  %i.bu = sub i32 %i.bo, %i.bt
  %i.bv = icmp sgt i32 %i.bs, 1
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !58 ; 3 uses
  br i1 %i.bv, label %.lr.ph.i.i.preheader.i17, label %_ZN4Ptex4v2_419PtexSeparableKernel5flipVEv.exit24

.lr.ph.i.i.preheader.i17:                         ; preds = %bb.d
  %i.by = zext nneg i32 %i.bs to i64
  %.idx.i18 = shl nuw nsw i64 %i.by, 2
  %i.bz = getelementptr i8, ptr %i.bx, i64 %.idx.i18
  %.012.i.i.i19 = getelementptr i8, ptr %i.bz, i64 -4
  br label %.lr.ph.i.i.i20

.lr.ph.i.i.i20:                                   ; preds = %.lr.ph.i.i.i20, %.lr.ph.i.i.preheader.i17
  %.014.i.i.i21 = phi ptr [ %.0.i.i.i23, %.lr.ph.i.i.i20 ], [ %.012.i.i.i19, %.lr.ph.i.i.preheader.i17 ] ; 3 uses
  %.0913.i.i.i22 = phi ptr [ %i.cc, %.lr.ph.i.i.i20 ], [ %i.bx, %.lr.ph.i.i.preheader.i17 ] ; 3 uses
  %i.ca = load float, ptr %.0913.i.i.i22, align 4, !tbaa !41
  %i.cb = load float, ptr %.014.i.i.i21, align 4, !tbaa !41
  store float %i.cb, ptr %.0913.i.i.i22, align 4, !tbaa !41
  store float %i.ca, ptr %.014.i.i.i21, align 4, !tbaa !41
  %i.cc = getelementptr inbounds nuw i8, ptr %.0913.i.i.i22, i64 4 ; 2 uses
  %.0.i.i.i23 = getelementptr inbounds i8, ptr %.014.i.i.i21, i64 -4 ; 2 uses
  %i.cd = icmp ult ptr %i.cc, %.0.i.i.i23
  br i1 %i.cd, label %.lr.ph.i.i.i20, label %_ZN4Ptex4v2_419PtexSeparableKernel5flipVEv.exit24, !llvm.loop !120

_ZN4Ptex4v2_419PtexSeparableKernel5flipVEv.exit24: ; preds = %.lr.ph.i.i.i20, %bb.d
  %4 = load i8, ptr %0, align 8, !tbaa !55
  %.sroa.2.0.insert.ext.i.i.i25 = zext i8 %4 to i16
  %.sroa.2.0.insert.shift.i.i.i26 = shl nuw i16 %.sroa.2.0.insert.ext.i.i.i25, 8
  %.sroa.0.0.insert.ext.i.i.i27 = zext i8 %i.bm to i16
  %.sroa.0.0.insert.insert.i.i.i28 = or disjoint i16 %.sroa.2.0.insert.shift.i.i.i26, %.sroa.0.0.insert.ext.i.i.i27
  store i16 %.sroa.0.0.insert.insert.i.i.i28, ptr %0, align 8, !tbaa !50
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !28
  store i32 %i.bu, ptr %i.ce, align 4, !tbaa !28
  store i32 %i.cf, ptr %i.bp, align 8, !tbaa !28
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !28
  store i32 %i.bs, ptr %i.cg, align 4, !tbaa !28
  store i32 %i.ch, ptr %i.br, align 8, !tbaa !28
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ck = load ptr, ptr %i.ci, align 8, !tbaa !58
  store ptr %i.bx, ptr %i.ci, align 8, !tbaa !58
  store ptr %i.ck, ptr %i.cj, align 8, !tbaa !58
  br label %_ZN4Ptex4v2_419PtexSeparableKernel5flipVEv.exit

_ZN4Ptex4v2_419PtexSeparableKernel5flipVEv.exit:  ; preds = %.lr.ph.i.i.i13, %_ZN4Ptex4v2_419PtexSeparableKernel5flipUEv.exit9, %_ZN4Ptex4v2_419PtexSeparableKernel5flipVEv.exit24, %_ZN4Ptex4v2_419PtexSeparableKernel5flipUEv.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !40
  %i.cn = add nsw i32 %i.cm, %1
  %i.co = and i32 %i.cn, 3
  store i32 %i.co, ptr %i.cl, align 8, !tbaa !40
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN4Ptex4v2_419PtexSeparableKernel5flipVEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4Ptex4v2_419PtexSeparableFilter17applyToCornerFaceERNS0_19PtexSeparableKernelERKNS0_8FaceInfoEiiS6_i(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull align 4 dereferenceable(20) %5, i32 noundef %6) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.b = load i8, ptr %i.a, align 1, !tbaa !34
  %i.c = and i8 %i.b, 8
  %i.d = icmp ne i8 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 3
  %i.f = load i8, ptr %i.e, align 1, !tbaa !34
  %i.g = and i8 %i.f, 8
  %i.h = icmp ne i8 %i.g, 0                       ; 3 uses
  %i.i = xor i1 %i.d, %i.h
  br i1 %i.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %3, 3                        ; 2 uses
  br i1 %i.h, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.k = tail call noundef zeroext i1 @_ZN4Ptex4v2_419PtexSeparableKernel19adjustMainToSubfaceEi(ptr noundef nonnull align 8 dereferenceable(124) %1, i32 noundef %i.j) ; 0 uses
  %i.l = add i32 %3, 2
  %i.m = sub i32 %i.l, %6
  tail call void @_ZN4Ptex4v2_419PtexSeparableKernel6rotateEi(ptr noundef nonnull align 8 dereferenceable(124) %1, i32 noundef %i.m)
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.n = and i32 %i.j, 3
  switch i32 %i.n, label %default.unreachable [
    i32 0, label %bb.d
    i32 3, label %bb.f
    i32 2, label %bb.e
    i32 1, label %.thread19
  ]

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !56
  %i.q = zext nneg i8 %i.p to i32
  %i.r = shl nuw i32 1, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !49
  %i.u = add nsw i32 %i.r, %i.t
  store i32 %i.u, ptr %i.s, align 8, !tbaa !49
  br label %.thread19

bb.e:                                             ; preds = %bb.c
  %i.v = load i8, ptr %1, align 8, !tbaa !55
  %i.w = zext nneg i8 %i.v to i32
  %i.x = shl nuw i32 1, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !46
  %i.aa = add nsw i32 %i.x, %i.z
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !46
  br label %.thread19

bb.f:                                             ; preds = %bb.c
  %i.ab = load i8, ptr %1, align 8, !tbaa !55
  %i.ac = zext nneg i8 %i.ab to i32
  %i.ad = shl nuw i32 1, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !46
  %i.ag = add nsw i32 %i.ad, %i.af
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !46
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !56
  %i.aj = zext nneg i8 %i.ai to i32
  %i.ak = shl nuw i32 1, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !49
  %i.an = add nsw i32 %i.ak, %i.am
  store i32 %i.an, ptr %i.al, align 8, !tbaa !49
  br label %.thread19

default.unreachable:                              ; preds = %bb.c
  unreachable

.thread19:                                        ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.ao = load i8, ptr %1, align 8, !tbaa !42
  %i.ap = add i8 %i.ao, 1
  store i8 %i.ap, ptr %1, align 8, !tbaa !42
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !47
  %i.as = add i8 %i.ar, 1
  store i8 %i.as, ptr %i.aq, align 1, !tbaa !47
  %i.at = add i32 %3, 2
  %i.au = sub i32 %i.at, %6
  tail call void @_ZN4Ptex4v2_419PtexSeparableKernel6rotateEi(ptr noundef nonnull align 8 dereferenceable(124) %1, i32 noundef %i.au)
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.av = add i32 %3, 2
  %i.aw = sub i32 %i.av, %6
  tail call void @_ZN4Ptex4v2_419PtexSeparableKernel6rotateEi(ptr noundef nonnull align 8 dereferenceable(124) %1, i32 noundef %i.aw)
  br i1 %i.h, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread, %bb.g
  tail call void @_ZN4Ptex4v2_419PtexSeparableFilter13splitAndApplyERNS0_19PtexSeparableKernelEiRKNS0_8FaceInfoE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, i32 noundef %4, ptr noundef nonnull align 4 dereferenceable(20) %5)
  br label %bb.j

bb.i:                                             ; preds = %.thread19, %bb.g
  tail call void @_ZN4Ptex4v2_419PtexSeparableFilter5applyERNS0_19PtexSeparableKernelEiRKNS0_8FaceInfoE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, i32 noundef %4, ptr noundef nonnull align 4 dereferenceable(20) %5)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef float @_ZN4Ptex4v2_419PtexSeparableKernel13makeSymmetricEf(ptr noundef nonnull align 8 dereferenceable(124) %0, float noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !42      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !47    ; 6 uses
  %i.d = icmp sgt i8 %i.a, %i.c
  br i1 %i.d, label %.preheader46, label %bb.d

.preheader46:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.i = ptrtoint ptr %i.f to i64
  %.promoted56 = load i32, ptr %i.g, align 4, !tbaa !46
  %.pre87 = load i32, ptr %i.h, align 4
  br label %bb.b

bb.b:                                             ; preds = %.preheader46, %_ZN4Ptex4v2_419PtexSeparableKernel8downresUEv.exit
  %i.j = phi i32 [ %.pre87, %.preheader46 ], [ %i.at, %_ZN4Ptex4v2_419PtexSeparableKernel8downresUEv.exit ]
  %i.k = phi i8 [ %i.a, %.preheader46 ], [ %i.au, %_ZN4Ptex4v2_419PtexSeparableKernel8downresUEv.exit ]
  %i.l = phi i32 [ %.promoted56, %.preheader46 ], [ %i.ap, %_ZN4Ptex4v2_419PtexSeparableKernel8downresUEv.exit ] ; 3 uses
  %.not.i = trunc i32 %i.l to i1
  %i.m = and i32 %i.l, 1
  %i.n = sub nsw i32 %i.j, %i.m                   ; 3 uses
  %.011.idx.i = select i1 %.not.i, i64 4, i64 0
  %.011.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.011.idx.i ; 9 uses
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.p = lshr i32 %i.n, 1                         ; 3 uses
  %i.q = add nsw i32 %i.p, -1                     ; 2 uses
  %i.r = zext i32 %i.q to i64
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check123 = icmp ult i32 %i.q, 7
  br i1 %min.iters.check123, label %.lr.ph.i.preheader, label %vector.ph124

vector.ph124:                                     ; preds = %.lr.ph.preheader.i
  %n.vec125 = and i64 %i.s, 8589934584            ; 5 uses
  %i.t = trunc i64 %n.vec125 to i32
  %i.u = sub i32 %i.p, %i.t
  %i.v = shl nuw nsw i64 %n.vec125, 2
  %i.w = getelementptr i8, ptr %.011.i, i64 %i.v  ; 2 uses
  %i.x = shl nuw nsw i64 %n.vec125, 3
  %i.y = getelementptr i8, ptr %.011.i, i64 %i.x  ; 2 uses
  br label %vector.body126

vector.body126:                                   ; preds = %vector.body126, %vector.ph124
  %index127 = phi i64 [ 0, %vector.ph124 ], [ %index.next137, %vector.body126 ] ; 3 uses
  %i.z = shl i64 %index127, 2
  %next.gep128 = getelementptr i8, ptr %.011.i, i64 %i.z ; 2 uses
  %i.aa = shl i64 %index127, 3                    ; 2 uses
  %next.gep129 = getelementptr i8, ptr %.011.i, i64 %i.aa
  %i.ab = getelementptr i8, ptr %.011.i, i64 %i.aa
  %next.gep130 = getelementptr i8, ptr %i.ab, i64 32
  %wide.vec131 = load <8 x float>, ptr %next.gep129, align 4, !tbaa !41 ; 2 uses
  %strided.vec132 = shufflevector <8 x float> %wide.vec131, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec133 = shufflevector <8 x float> %wide.vec131, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec134 = load <8 x float>, ptr %next.gep130, align 4, !tbaa !41 ; 2 uses
  %strided.vec135 = shufflevector <8 x float> %wide.vec134, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec136 = shufflevector <8 x float> %wide.vec134, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ac = fadd <4 x float> %strided.vec132, %strided.vec133
  %i.ad = fadd <4 x float> %strided.vec135, %strided.vec136
  %i.ae = getelementptr i8, ptr %next.gep128, i64 16
end_hunk_0
begin_hunk_1_@_ZN4Ptex4v2_419PtexSeparableKernel13makeSymmetricEf:bb.a
  %i.dg = fadd float %i.dd, %i.df                 ; 3 uses
  store float %i.dg, ptr %i.de, align 4, !tbaa !41
  store float %i.dg, ptr %i.dc, align 4, !tbaa !41
  %i.dh = fadd float %.02761.epil.init, %i.dg
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.epil.preheader
  %.lcssa = phi float [ %i.dy, %._crit_edge.loopexit.unr-lcssa ], [ %i.dh, %.epil.preheader ] ; 2 uses
  %i.di = fmul float %.lcssa, %.lcssa
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.g
  %.027.lcssa = phi float [ 0.000000e+00, %bb.g ], [ %i.di, %._crit_edge.loopexit ] ; 4 uses
  %i.dj = fcmp oeq float %.027.lcssa, 0.000000e+00
  %i.dk = fdiv float %1, %.027.lcssa
  %i.dl = select i1 %i.dj, float 1.000000e+00, float %i.dk ; 4 uses
  %i.dm = fcmp ult float %i.dl, 1.000000e+00
  br i1 %i.dm, label %bb.i, label %.loopexit

bb.h:                                             ; preds = %bb.h, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.h ] ; 4 uses
  %.02761 = phi float [ 0.000000e+00, %.lr.ph.new ], [ %i.dy, %bb.h ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.h ]
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv ; 2 uses
  %i.do = load float, ptr %i.dn, align 4, !tbaa !41
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv ; 2 uses
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !41
  %i.dr = fadd float %i.do, %i.dq                 ; 3 uses
  store float %i.dr, ptr %i.dp, align 4, !tbaa !41
  store float %i.dr, ptr %i.dn, align 4, !tbaa !41
  %i.ds = fadd float %.02761, %i.dr
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv.next ; 2 uses
  %i.du = load float, ptr %i.dt, align 4, !tbaa !41
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv.next ; 2 uses
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !41
  %i.dx = fadd float %i.du, %i.dw                 ; 3 uses
  store float %i.dx, ptr %i.dv, align 4, !tbaa !41
  store float %i.dx, ptr %i.dt, align 4, !tbaa !41
  %i.dy = fadd float %i.ds, %i.dx                 ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.h, !llvm.loop !127

bb.i:                                             ; preds = %._crit_edge
  %i.dz = fcmp olt float %i.dl, -1.000000e+00
  br i1 %i.dz, label %.preheader, label %.preheader45

.preheader45:                                     ; preds = %bb.i
  br i1 %i.cw, label %.lr.ph63, label %.loopexit

.lr.ph63:                                         ; preds = %.preheader45
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !38 ; 2 uses
  %wide.trip.count80 = zext nneg i32 %i.cv to i64 ; 3 uses
  %min.iters.check144 = icmp ult i32 %i.cv, 8
  br i1 %min.iters.check144, label %scalar.ph143.preheader, label %vector.ph145

vector.ph145:                                     ; preds = %.lr.ph63
  %n.vec146 = and i64 %wide.trip.count80, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.dl, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph145
  %index148 = phi i64 [ 0, %vector.ph145 ], [ %index.next150, %vector.body147 ] ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %index148 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.ec, align 4, !tbaa !41
  %wide.load149 = load <4 x float>, ptr %i.ed, align 4, !tbaa !41
  %i.ee = fmul <4 x float> %broadcast.splat, %wide.load
  %i.ef = fmul <4 x float> %broadcast.splat, %wide.load149
  store <4 x float> %i.ee, ptr %i.ec, align 4, !tbaa !41
  store <4 x float> %i.ef, ptr %i.ed, align 4, !tbaa !41
  %index.next150 = add nuw i64 %index148, 8       ; 2 uses
  %i.eg = icmp eq i64 %index.next150, %n.vec146
  br i1 %i.eg, label %middle.block151, label %vector.body147, !llvm.loop !128

middle.block151:                                  ; preds = %vector.body147
  %cmp.n152 = icmp eq i64 %n.vec146, %wide.trip.count80
  br i1 %cmp.n152, label %.loopexit, label %scalar.ph143.preheader

scalar.ph143.preheader:                           ; preds = %.lr.ph63, %middle.block151
  %indvars.iv77.ph = phi i64 [ 0, %.lr.ph63 ], [ %n.vec146, %middle.block151 ]
  br label %scalar.ph143

.preheader:                                       ; preds = %bb.i
  br i1 %i.cw, label %.lr.ph65, label %._crit_edge66

.lr.ph65:                                         ; preds = %.preheader
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !38 ; 2 uses
  %wide.trip.count85 = zext nneg i32 %i.cv to i64 ; 3 uses
  %min.iters.check155 = icmp ult i32 %i.cv, 8
  br i1 %min.iters.check155, label %scalar.ph154.preheader, label %vector.ph156

vector.ph156:                                     ; preds = %.lr.ph65
  %n.vec157 = and i64 %wide.trip.count85, 2147483640 ; 3 uses
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph156
  %index159 = phi i64 [ 0, %vector.ph156 ], [ %index.next162, %vector.body158 ] ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %index159 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16 ; 2 uses
  %wide.load160 = load <4 x float>, ptr %i.ej, align 4, !tbaa !41
  %wide.load161 = load <4 x float>, ptr %i.ek, align 4, !tbaa !41
  %i.el = fneg <4 x float> %wide.load160
  %i.em = fneg <4 x float> %wide.load161
  store <4 x float> %i.el, ptr %i.ej, align 4, !tbaa !41
  store <4 x float> %i.em, ptr %i.ek, align 4, !tbaa !41
  %index.next162 = add nuw i64 %index159, 8       ; 2 uses
  %i.en = icmp eq i64 %index.next162, %n.vec157
  br i1 %i.en, label %middle.block163, label %vector.body158, !llvm.loop !129

middle.block163:                                  ; preds = %vector.body158
  %cmp.n164 = icmp eq i64 %n.vec157, %wide.trip.count85
  br i1 %cmp.n164, label %._crit_edge66, label %scalar.ph154.preheader

scalar.ph154.preheader:                           ; preds = %.lr.ph65, %middle.block163
  %indvars.iv82.ph = phi i64 [ 0, %.lr.ph65 ], [ %n.vec157, %middle.block163 ]
  br label %scalar.ph154

._crit_edge66:                                    ; preds = %scalar.ph154, %middle.block163, %.preheader
  %i.eo = fneg float %.027.lcssa
  br label %.loopexit

scalar.ph154:                                     ; preds = %scalar.ph154.preheader, %scalar.ph154
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %scalar.ph154 ], [ %indvars.iv82.ph, %scalar.ph154.preheader ] ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv82 ; 2 uses
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !41
  %i.er = fneg float %i.eq
  store float %i.er, ptr %i.ep, align 4, !tbaa !41
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 2 uses
  %exitcond86.not = icmp eq i64 %indvars.iv.next83, %wide.trip.count85
  br i1 %exitcond86.not, label %._crit_edge66, label %scalar.ph154, !llvm.loop !130

scalar.ph143:                                     ; preds = %scalar.ph143.preheader, %scalar.ph143
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %scalar.ph143 ], [ %indvars.iv77.ph, %scalar.ph143.preheader ] ; 2 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv77 ; 2 uses
  %i.et = load float, ptr %i.es, align 4, !tbaa !41
  %i.eu = fmul float %i.dl, %i.et
  store float %i.eu, ptr %i.es, align 4, !tbaa !41
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %exitcond81.not = icmp eq i64 %indvars.iv.next78, %wide.trip.count80
  br i1 %exitcond81.not, label %.loopexit, label %scalar.ph143, !llvm.loop !131

.loopexit:                                        ; preds = %scalar.ph143, %middle.block151, %.preheader45, %._crit_edge66, %._crit_edge
  %.1 = phi float [ %.027.lcssa, %._crit_edge ], [ %i.eo, %._crit_edge66 ], [ %1, %.preheader45 ], [ %1, %middle.block151 ], [ %1, %scalar.ph143 ]
  ret float %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4Ptex4v2_410PtexFilterD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4Ptex4v2_419PtexSeparableFilterD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #10
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4Ptex4v2_419PtexSeparableFilter7releaseEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(80) %0) #11
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #4

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #6

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #11 ; 0 uses
  tail call void @_ZSt9terminatev() #10
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smin.i8(i8, i8) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !45}
!1 = distinct !{!1, !45}
!2 = distinct !{!2, !45}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"_ZTSN4Ptex4v2_410PtexFilterE"}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!"p1 _ZTSN4Ptex4v2_411PtexTextureE", !13, i64 0}
!15 = !{!"_ZTSN4Ptex4v2_410PtexFilter10FilterTypeE", !8, i64 0}
!16 = !{!"bool", !8, i64 0}
!17 = !{!"float", !8, i64 0}
!18 = !{!"_ZTSN4Ptex4v2_410PtexFilter7OptionsE", !9, i64 0, !15, i64 4, !16, i64 8, !17, i64 12, !16, i64 16}
!19 = !{!"p1 float", !13, i64 0}
!20 = !{!"_ZTSN4Ptex4v2_48DataTypeE", !8, i64 0}
!21 = !{!"_ZTSN4Ptex4v2_410BorderModeE", !8, i64 0}
!22 = !{!"_ZTSN4Ptex4v2_414EdgeFilterModeE", !8, i64 0}
!23 = !{!"_ZTSN4Ptex4v2_419PtexSeparableFilterE", !12, i64 0, !14, i64 8, !18, i64 16, !19, i64 40, !17, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !20, i64 64, !21, i64 68, !21, i64 72, !22, i64 76}
!24 = !{!23, !14, i64 8}
!25 = !{!"vtable pointer", !7, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!23, !20, i64 64}
!28 = !{!9, !9, i64 0}
!29 = !{!23, !9, i64 52}
!30 = !{!23, !9, i64 60}
!31 = !{!23, !9, i64 56}
!32 = !{!"_ZTSN4Ptex4v2_43ResE", !8, i64 0, !8, i64 1}
!33 = !{!"_ZTSN4Ptex4v2_48FaceInfoE", !32, i64 0, !8, i64 2, !8, i64 3, !8, i64 4}
!34 = !{!33, !8, i64 3}
!35 = !{!23, !21, i64 68}
!36 = !{!23, !21, i64 72}
!37 = !{!"_ZTSN4Ptex4v2_419PtexSeparableKernelE", !32, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !19, i64 24, !19, i64 32, !8, i64 40, !8, i64 80, !9, i64 120}
!38 = !{!37, !19, i64 24}
!39 = !{!37, !19, i64 32}
!40 = !{!37, !9, i64 120}
!41 = !{!17, !17, i64 0}
!42 = !{!37, !8, i64 0}
!43 = !{!37, !9, i64 12}
!44 = !{!"llvm.loop.unroll.disable"}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!37, !9, i64 4}
!47 = !{!37, !8, i64 1}
!48 = !{!37, !9, i64 16}
!49 = !{!37, !9, i64 8}
!50 = !{!8, !8, i64 0}
!51 = !{!23, !17, i64 48}
!52 = !{!23, !19, i64 40}
!53 = !{!"llvm.loop.isvectorized", i32 1}
!54 = !{!"llvm.loop.unroll.runtime.disable"}
!55 = !{!32, !8, i64 0}
!56 = !{!32, !8, i64 1}
!57 = !{!33, !8, i64 2}
!58 = !{!19, !19, i64 0}
!59 = distinct !{!59, !44}
!60 = distinct !{!60, !44}
!61 = distinct !{!61, !45}
!62 = distinct !{!62, !45}
!63 = distinct !{!63, !45}
!64 = distinct !{!64, !45}
!65 = distinct !{!65, !44}
!66 = distinct !{!66, !44}
!67 = distinct !{!67, !45, !53, !54}
!68 = distinct !{!68, !44}
!69 = distinct !{!69, !45, !53}
!70 = !{!33, !8, i64 0}
!71 = !{!33, !8, i64 1}
!72 = distinct !{!72, !44}
!73 = distinct !{!73, !44}
!74 = distinct !{!74, !44}
!75 = distinct !{!75, !44}
!76 = distinct !{!76, !44}
!77 = distinct !{!77, !44}
!78 = distinct !{!78, !44}
!79 = distinct !{!79, !44}
!80 = distinct !{!80, !44}
!81 = distinct !{!81, !44}
!82 = !{!23, !16, i64 32}
!83 = !{i8 0, i8 2}
!84 = !{}
!85 = distinct !{!85, !44}
!86 = distinct !{!86, !45, !53, !54}
!87 = distinct !{!87, !45, !54, !53}
!88 = distinct !{!88, !45}
!89 = distinct !{!89, !45, !53, !54}
!90 = distinct !{!90, !45, !54, !53}
!91 = distinct !{!91, !45}
!92 = distinct !{!92, !44}
!93 = distinct !{!93, !44}
!94 = distinct !{null}
!95 = distinct !{!95, !45}
!96 = distinct !{!96, !44}
!97 = distinct !{!97, !44}
!98 = distinct !{null}
!99 = distinct !{!99, !45}
!100 = distinct !{!100, !"LVerDomain"}
!101 = distinct !{!101, !100}
!102 = distinct !{!102, !100}
!103 = distinct !{!103, !45, !53, !54}
!104 = distinct !{!104, !44}
!105 = distinct !{!105, !45, !53}
!106 = !{!13, !13, i64 0}
!107 = !{!23, !22, i64 76}
!108 = !{!101}
!109 = !{!102}
!110 = distinct !{!110, !45}
!111 = distinct !{!111, !44}
!112 = distinct !{!112, !44}
!113 = distinct !{!113, !45}
!114 = distinct !{!114, !44}
!115 = distinct !{!115, !44}
!116 = !{!"p1 _ZTSN4Ptex4v2_48FaceInfoE", !13, i64 0}
!117 = !{!116, !116, i64 0}
!118 = distinct !{!118, !44}
!119 = distinct !{!119, !44}
!120 = distinct !{!120, !45}
!121 = distinct !{!121, !45, !53, !54}
!122 = distinct !{!122, !45, !54, !53}
!123 = distinct !{!123, !45}
!124 = distinct !{!124, !45, !53, !54}
!125 = distinct !{!125, !45, !54, !53}
!126 = distinct !{!126, !45}
!127 = distinct !{!127, !45}
!128 = distinct !{!128, !45, !53, !54}
!129 = distinct !{!129, !45, !53, !54}
!130 = distinct !{!130, !45, !54, !53}
!131 = distinct !{!131, !45, !54, !53}
end_hunk_1
