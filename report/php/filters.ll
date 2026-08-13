inline.NumInlined: 20
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@php_conv_qprint_encode_convert:bb.a
  %i.dl = icmp ult i32 %.0189267, 2
  br i1 %i.dl, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.dm = load ptr, ptr %i.p, align 8, !tbaa !68
  %.not230 = icmp eq ptr %i.dm, null
  br i1 %.not230, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dn = load i64, ptr %i.q, align 8, !tbaa !69
  %i.do = add i64 %i.dn, 1
  %i.dp = icmp ult i64 %.0200271, %i.do
  br i1 %i.dp, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dq = getelementptr inbounds nuw i8, ptr %.0209281, i64 1 ; 2 uses
  store i8 61, ptr %.0209281, align 1, !tbaa !28
  %i.dr = load ptr, ptr %i.p, align 8, !tbaa !68
  %i.ds = load i64, ptr %i.q, align 8, !tbaa !69  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dq, ptr align 1 %i.dr, i64 %i.ds, i1 false)
  %i.dt = getelementptr inbounds i8, ptr %i.dq, i64 %i.ds
  %i.du = load i64, ptr %i.q, align 8, !tbaa !69
  %i.dv = xor i64 %i.du, -1
  %i.dw = add i64 %.0200271, %i.dv
  %i.dx = load i32, ptr %i.r, align 8, !tbaa !67
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ab, %bb.aa
  %.4213 = phi ptr [ %i.dt, %bb.ad ], [ %.0209281, %bb.ab ], [ %.0209281, %bb.aa ] ; 3 uses
  %.4204 = phi i64 [ %i.dw, %bb.ad ], [ %.0200271, %bb.ab ], [ %.0200271, %bb.aa ] ; 2 uses
  %.3192 = phi i32 [ %i.dx, %bb.ad ], [ %.0189267, %bb.ab ], [ %.0189267, %bb.aa ] ; 2 uses
  %i.dy = icmp eq i64 %.4204, 0
  br i1 %i.dy, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dz = trunc nuw nsw i32 %i.bw to i8
  %i.ea = getelementptr inbounds nuw i8, ptr %.4213, i64 1 ; 2 uses
  store i8 %i.dz, ptr %.4213, align 1, !tbaa !28
  %i.eb = add i64 %.4204, -1                      ; 2 uses
  %i.ec = add i32 %.3192, -1                      ; 2 uses
  br i1 %i.bo, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ed = add nuw i32 %.0184263, 1
  br label %.outer.backedge

bb.ah:                                            ; preds = %bb.af
  %i.ee = add i64 %.0207275, -1
  %i.ef = getelementptr inbounds nuw i8, ptr %.0217285, i64 1
  br label %.outer.backedge

bb.ai:                                            ; preds = %bb.z, %bb.y
  %i.eg = icmp ult i32 %.0189267, 4
  br i1 %i.eg, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.eh = load ptr, ptr %i.p, align 8, !tbaa !68
  %.not228 = icmp eq ptr %i.eh, null
  br i1 %.not228, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ei = load i64, ptr %i.q, align 8, !tbaa !69
  %i.ej = add i64 %i.ei, 1
  %i.ek = icmp ult i64 %.0200271, %i.ej
  br i1 %i.ek, label %.loopexit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.el = getelementptr inbounds nuw i8, ptr %.0209281, i64 1 ; 2 uses
  store i8 61, ptr %.0209281, align 1, !tbaa !28
  %i.em = load ptr, ptr %i.p, align 8, !tbaa !68
  %i.en = load i64, ptr %i.q, align 8, !tbaa !69  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.el, ptr align 1 %i.em, i64 %i.en, i1 false)
  %i.eo = getelementptr inbounds i8, ptr %i.el, i64 %i.en
  %i.ep = load i64, ptr %i.q, align 8, !tbaa !69
  %i.eq = xor i64 %i.ep, -1
  %i.er = add i64 %.0200271, %i.eq
  %i.es = load i32, ptr %i.r, align 8, !tbaa !67
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.aj, %bb.ai
  %.5214 = phi ptr [ %i.eo, %bb.al ], [ %.0209281, %bb.aj ], [ %.0209281, %bb.ai ] ; 5 uses
  %.5205 = phi i64 [ %i.er, %bb.al ], [ %.0200271, %bb.aj ], [ %.0200271, %bb.ai ] ; 3 uses
  %.4193 = phi i32 [ %i.es, %bb.al ], [ %.0189267, %bb.aj ], [ %.0189267, %bb.ai ] ; 2 uses
  %i.et = icmp ult i64 %.5205, 3
  br i1 %i.et, label %.loopexit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.eu = getelementptr inbounds nuw i8, ptr %.5214, i64 1
  store i8 61, ptr %.5214, align 1, !tbaa !28
  %i.ev = lshr i32 %i.bw, 4
  %i.ew = zext nneg i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw i8, ptr @php_conv_qprint_encode_convert.qp_digits, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !28
  %i.ez = getelementptr inbounds nuw i8, ptr %.5214, i64 2
  store i8 %i.ey, ptr %i.eu, align 1, !tbaa !28
  %i.fa = and i32 %i.bw, 15
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw i8, ptr @php_conv_qprint_encode_convert.qp_digits, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !28
  %i.fe = getelementptr inbounds nuw i8, ptr %.5214, i64 3 ; 2 uses
  store i8 %i.fd, ptr %i.ez, align 1, !tbaa !28
  %i.ff = add i64 %.5205, -3                      ; 2 uses
  %i.fg = add i32 %.4193, -3                      ; 2 uses
  %spec.select = tail call i32 @llvm.usub.sat.i32(i32 %.0177.ph, i32 1) ; 2 uses
  br i1 %i.bo, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fh = add nuw i32 %.0184263, 1
  br label %.outer.backedge

bb.ap:                                            ; preds = %bb.an
  %i.fi = add i64 %.0207275, -1
  %i.fj = getelementptr inbounds nuw i8, ptr %.0217285, i64 1
  br label %.outer.backedge

.loopexit:                                        ; preds = %bb.am, %bb.ak, %bb.ae, %bb.ac, %bb.o, %bb.m, %._crit_edge, %bb.e
  %.0217287 = phi ptr [ %.0217294.us365, %bb.e ], [ %.0217285, %bb.ak ], [ %.0217285, %bb.ae ], [ %.0217285, %bb.ac ], [ %.0217285, %bb.o ], [ %.0217285, %bb.m ], [ %.0217285, %bb.am ], [ %.0217.lcssa, %._crit_edge ]
  %.0207277 = phi i64 [ %.0207296.us363, %bb.e ], [ %.0207275, %bb.ak ], [ %.0207275, %bb.ae ], [ %.0207275, %bb.ac ], [ %.0207275, %bb.o ], [ %.0207275, %bb.m ], [ %.0207275, %bb.am ], [ 0, %._crit_edge ]
  %.0184262 = phi i32 [ %.0184299.us360, %bb.e ], [ %.0184263, %bb.ak ], [ %.0184263, %bb.ae ], [ %.0184263, %bb.ac ], [ %.0184263, %bb.o ], [ %.0184263, %bb.m ], [ %.0184263, %bb.am ], [ %.0184.lcssa, %._crit_edge ]
  %.0179257 = phi i32 [ %.0179300.us359, %bb.e ], [ %.0179258, %bb.ak ], [ %.0179258, %bb.ae ], [ %.0179258, %bb.ac ], [ %.0179258, %bb.o ], [ %.0179258, %bb.m ], [ %.0179258, %bb.am ], [ %.0179.lcssa, %._crit_edge ]
  %.7216 = phi ptr [ %.0209295.us364, %bb.e ], [ %.0209281, %bb.ak ], [ %.4213, %bb.ae ], [ %.0209281, %bb.ac ], [ %.0209281, %bb.o ], [ %.0209281, %bb.m ], [ %.5214, %bb.am ], [ %.0209.lcssa, %._crit_edge ]
  %.7 = phi i64 [ %.0200297.us362, %bb.e ], [ %.0200271, %bb.ak ], [ 0, %bb.ae ], [ %.0200271, %bb.ac ], [ 0, %bb.o ], [ %.0200271, %bb.m ], [ %.5205, %bb.am ], [ %.0200.lcssa, %._crit_edge ]
  %.3199 = phi i32 [ 2, %bb.e ], [ 2, %bb.ak ], [ 2, %bb.ae ], [ 2, %bb.ac ], [ 2, %bb.o ], [ 2, %bb.m ], [ 2, %bb.am ], [ 0, %._crit_edge ]
  %.6195 = phi i32 [ %.0189298.us361, %bb.e ], [ %.0189267, %bb.ak ], [ %.3192, %bb.ae ], [ %.0189267, %bb.ac ], [ %.0189267, %bb.o ], [ %.0189267, %bb.m ], [ %.4193, %bb.am ], [ %.0189.lcssa, %._crit_edge ]
  store ptr %.0217287, ptr %1, align 8, !tbaa !40
  store i64 %.0207277, ptr %2, align 8, !tbaa !25
  store ptr %.7216, ptr %3, align 8, !tbaa !40
  store i64 %.7, ptr %4, align 8, !tbaa !25
  store i32 %.6195, ptr %i.a, align 4, !tbaa !66
  store i32 %.0184262, ptr %i.b, align 4, !tbaa !73
  store i32 %.0179257, ptr %i.c, align 8, !tbaa !74
  br label %bb.aq

bb.aq:                                            ; preds = %bb.a, %.loopexit
  %.0176 = phi i32 [ %.3199, %.loopexit ], [ 0, %bb.a ]
  ret i32 %.0176
}

; Function Attrs: nounwind uwtable
define internal void @php_conv_qprint_encode_dtor(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !70
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !68   ; 3 uses
  %.not5 = icmp eq ptr %i.d, null
  br i1 %.not5, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i8, ptr %i.e, align 8, !tbaa !71, !range !37, !noundef !38
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.d) #17
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_efree(ptr noundef nonnull %i.d) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 5) i32 @php_conv_qprint_decode_convert(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.c = icmp eq ptr %1, null
  %i.d = icmp eq ptr %2, null
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !78
  %.not158 = icmp eq i32 %i.f, 0
  %. = select i1 %.not158, i32 0, i32 4
  br label %bb.af

bb.c:                                             ; preds = %bb.a
  %i.g = load i32, ptr %i.b, align 4, !tbaa !80   ; 7 uses
  %i.h = load i32, ptr %i.a, align 8, !tbaa !81   ; 7 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !40     ; 7 uses
  %i.j = load i64, ptr %2, align 8, !tbaa !25     ; 7 uses
  %i.k = load ptr, ptr %3, align 8, !tbaa !40     ; 7 uses
  %i.l = load i64, ptr %4, align 8, !tbaa !25     ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !78
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !79   ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br label %5

5:                                                ; preds = %5, %bb.c
  switch i32 %i.n, label %5 [
    i32 0, label %.loopexit.preheader
    i32 1, label %.loopexit228
    i32 2, label %.loopexit229
    i32 3, label %.loopexit230
    i32 4, label %.loopexit231
    i32 5, label %.loopexit232
    i32 6, label %.loopexit233.preheader.a
  ]

.loopexit233.preheader.a:                         ; preds = %5, %bb.ab
  %.0222.ph = phi i32 [ %.0224, %bb.ab ], [ %i.g, %5 ] ; 2 uses
  %.0118213.ph = phi i32 [ %.0118215, %bb.ab ], [ %i.h, %5 ]
  %.0120206.ph = phi i32 [ %.0120208, %bb.ab ], [ %i.p, %5 ] ; 2 uses
  %.0127194.ph = phi ptr [ %.0127196, %bb.ab ], [ %i.k, %5 ]
  %.0130187.ph = phi ptr [ %.0130189, %bb.ab ], [ %i.i, %5 ] ; 2 uses
  %.0134179.ph = phi i64 [ %.0134181, %bb.ab ], [ %i.l, %5 ]
  %.0137172.ph = phi i64 [ %.0137174, %bb.ab ], [ %i.j, %5 ] ; 2 uses
  br label %.loopexit233

bb.d:                                             ; preds = %bb.k, %bb.p, %bb.v, %bb.ac
  %.0130184.sink = phi ptr [ %.0130189, %bb.ac ], [ %.0130184, %bb.p ], [ %.0130186, %bb.v ], [ %.0130184, %bb.k ]
  %.0137169.sink = phi i64 [ %.0137174, %bb.ac ], [ %.0137169, %bb.p ], [ %.0137171, %bb.v ], [ %.0137169, %bb.k ]
  %.2136.jt5 = phi i64 [ %.0134181, %bb.ac ], [ %.0134176, %bb.p ], [ %.0134178, %bb.v ], [ %.0134176, %bb.k ]
  %.2129.jt5 = phi ptr [ %.0127196, %bb.ac ], [ %.0127191, %bb.p ], [ %.0127193, %bb.v ], [ %.0127191, %bb.k ]
  %.2122.jt5 = phi i32 [ %.0120208, %bb.ac ], [ %.0120203, %bb.p ], [ %.0120205, %bb.v ], [ %.0120203, %bb.k ]
  %.1119.jt5 = phi i32 [ %.0118215, %bb.ac ], [ %.0118210, %bb.p ], [ %.0118212, %bb.v ], [ %.0118210, %bb.k ]
  %.2.jt5 = phi i32 [ %i.cn, %bb.ac ], [ %i.av, %bb.p ], [ %i.bx, %bb.v ], [ 1, %bb.k ]
  %i.s = getelementptr inbounds nuw i8, ptr %.0130184.sink, i64 1
  %i.t = add i64 %.0137169.sink, -1
  br label %.loopexit232

bb.e:                                             ; preds = %bb.u, %bb.u, %bb.j, %bb.j
  %.0130184.sink235 = phi ptr [ %.0130184, %bb.j ], [ %.0130184, %bb.j ], [ %.0130186, %bb.u ], [ %.0130186, %bb.u ]
  %.0137169.sink234 = phi i64 [ %.0137169, %bb.j ], [ %.0137169, %bb.j ], [ %.0137171, %bb.u ], [ %.0137171, %bb.u ]
  %.2136.jt4 = phi i64 [ %.0134176, %bb.j ], [ %.0134176, %bb.j ], [ %.0134178, %bb.u ], [ %.0134178, %bb.u ]
  %.2129.jt4 = phi ptr [ %.0127191, %bb.j ], [ %.0127191, %bb.j ], [ %.0127193, %bb.u ], [ %.0127193, %bb.u ]
  %.2122.jt4 = phi i32 [ %.0120203, %bb.j ], [ %.0120203, %bb.j ], [ %.0120205, %bb.u ], [ %.0120205, %bb.u ]
  %.1119.jt4 = phi i32 [ %.0118210, %bb.j ], [ %.0118210, %bb.j ], [ %.0118212, %bb.u ], [ %.0118212, %bb.u ]
  %.2.jt4 = phi i32 [ %.0219, %bb.j ], [ %.0219, %bb.j ], [ %.0221, %bb.u ], [ %.0221, %bb.u ]
  %i.u = getelementptr inbounds nuw i8, ptr %.0130184.sink235, i64 1
  %i.v = add i64 %.0137169.sink234, -1
  br label %.loopexit231

bb.f:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %.0130188, i64 1
  %i.x = add i64 %.0137173, -1
  br label %.loopexit228

.loopexit.preheader:                              ; preds = %5, %.loopexit233, %bb.m, %bb.r, %bb.y, %bb.z, %bb.aa
  %.0223.ph = phi i32 [ 0, %.loopexit233 ], [ 0, %bb.z ], [ 0, %bb.m ], [ 0, %bb.y ], [ 0, %bb.aa ], [ %.0227, %bb.r ], [ %i.g, %5 ] ; 3 uses
  %.0118214.ph = phi i32 [ 0, %.loopexit233 ], [ 0, %bb.z ], [ 0, %bb.m ], [ 0, %bb.y ], [ 0, %bb.aa ], [ %.0118218, %bb.r ], [ %i.h, %5 ] ; 3 uses
  %.0120207.ph = phi i32 [ %.0120206.ph, %.loopexit233 ], [ %.0120208, %bb.z ], [ %.0120203, %bb.m ], [ %.0120208, %bb.y ], [ %.0120208, %bb.aa ], [ %.1121, %bb.r ], [ %i.p, %5 ] ; 3 uses
  %.0127195.ph = phi ptr [ %.0127194, %.loopexit233 ], [ %.0127196, %bb.z ], [ %.0127191, %bb.m ], [ %.0127196, %bb.y ], [ %.0127196, %bb.aa ], [ %i.bn, %bb.r ], [ %i.k, %5 ]
  %.0130188.ph = phi ptr [ %.0130187.ph, %.loopexit233 ], [ %.0130189, %bb.z ], [ %i.an, %bb.m ], [ %i.ce, %bb.y ], [ %.0130189, %bb.aa ], [ %.1131, %bb.r ], [ %i.i, %5 ]
  %.0134180.ph = phi i64 [ %.0134179, %.loopexit233 ], [ %.0134181, %bb.z ], [ %.0134176, %bb.m ], [ %.0134181, %bb.y ], [ %.0134181, %bb.aa ], [ %i.bo, %bb.r ], [ %i.l, %5 ]
  %.0137173.ph = phi i64 [ %.0137172.ph, %.loopexit233 ], [ %.0137174, %bb.z ], [ %i.ao, %bb.m ], [ %i.cf, %bb.y ], [ %.0137174, %bb.aa ], [ %.1138, %bb.r ], [ %i.j, %5 ]
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.preheader, %bb.i
  %.0127195 = phi ptr [ %i.ac, %bb.i ], [ %.0127195.ph, %.loopexit.preheader ] ; 5 uses
  %.0130188 = phi ptr [ %i.ae, %bb.i ], [ %.0130188.ph, %.loopexit.preheader ] ; 5 uses
  %.0134180 = phi i64 [ %i.ad, %bb.i ], [ %.0134180.ph, %.loopexit.preheader ] ; 4 uses
  %.0137173 = phi i64 [ %i.af, %bb.i ], [ %.0137173.ph, %.loopexit.preheader ] ; 4 uses
  %i.y = icmp eq i64 %.0137173, 0
  br i1 %i.y, label %.loopexit236, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %i.z = load i8, ptr %.0130188, align 1, !tbaa !28 ; 2 uses
  %i.aa = icmp eq i8 %i.z, 61
  br i1 %i.aa, label %bb.f, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = icmp eq i64 %.0134180, 0
  br i1 %i.ab, label %.loopexit236, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %.0127195, i64 1
  store i8 %i.z, ptr %.0127195, align 1, !tbaa !28
  %i.ad = add i64 %.0134180, -1
  %i.ae = getelementptr inbounds nuw i8, ptr %.0130188, i64 1
  %i.af = add i64 %.0137173, -1
  br label %.loopexit

.loopexit228:                                     ; preds = %5, %bb.f
  %.0219 = phi i32 [ %.0223.ph, %bb.f ], [ %i.g, %5 ] ; 8 uses
  %.0118210 = phi i32 [ %.0118214.ph, %bb.f ], [ %i.h, %5 ] ; 7 uses
  %.0120203 = phi i32 [ %.0120207.ph, %bb.f ], [ %i.p, %5 ] ; 8 uses
  %.0127191 = phi ptr [ %.0127195, %bb.f ], [ %i.k, %5 ] ; 8 uses
  %.0130184 = phi ptr [ %i.w, %bb.f ], [ %i.i, %5 ] ; 9 uses
  %.0134176 = phi i64 [ %.0134180, %bb.f ], [ %i.l, %5 ] ; 8 uses
  %.0137169 = phi i64 [ %i.x, %bb.f ], [ %i.j, %5 ] ; 8 uses
  %i.ag = icmp eq i64 %.0137169, 0
  br i1 %i.ag, label %.loopexit236, label %bb.j

bb.j:                                             ; preds = %.loopexit228
  %i.ah = load i8, ptr %.0130184, align 1, !tbaa !28 ; 6 uses
  switch i8 %i.ah, label %bb.k [
    i8 32, label %bb.e
    i8 9, label %bb.e
  ]

bb.k:                                             ; preds = %bb.j
  %i.ai = load ptr, ptr %i.q, align 8, !tbaa !82  ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  %i.ak = icmp eq i32 %.0219, 0
  %or.cond3 = select i1 %i.aj, i1 %i.ak, i1 false ; 2 uses
  %i.al = icmp eq i8 %i.ah, 13
  %or.cond159 = and i1 %i.al, %or.cond3
  br i1 %or.cond159, label %bb.d, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = icmp eq i8 %i.ah, 10
  %or.cond160 = and i1 %i.am, %or.cond3
  br i1 %or.cond160, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %.0130184, i64 1
  %i.ao = add i64 %.0137169, -1
  br label %.loopexit.preheader

bb.n:                                             ; preds = %bb.l
  %i.ap = zext i32 %.0219 to i64                  ; 2 uses
  %i.aq = load i64, ptr %i.r, align 8, !tbaa !83
  %i.ar = icmp ugt i64 %i.aq, %i.ap
  br i1 %i.ar, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ap
  %i.at = load i8, ptr %i.as, align 1, !tbaa !28
  %i.au = icmp eq i8 %i.ah, %i.at
  br i1 %i.au, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.av = add i32 %.0219, 1
  br label %bb.d

.loopexit229:                                     ; preds = %5, %bb.q
  %.0220 = phi i32 [ %.0226, %bb.q ], [ %i.g, %5 ] ; 2 uses
  %.0118211 = phi i32 [ %.0118217, %bb.q ], [ %i.h, %5 ] ; 2 uses
  %.0120204 = phi i32 [ %i.bi, %bb.q ], [ %i.p, %5 ] ; 2 uses
  %.0127192 = phi ptr [ %.0127198, %bb.q ], [ %i.k, %5 ] ; 2 uses
  %.0130185 = phi ptr [ %i.bj, %bb.q ], [ %i.i, %5 ] ; 3 uses
  %.0134177 = phi i64 [ %.0134182, %bb.q ], [ %i.l, %5 ] ; 2 uses
  %.0137170 = phi i64 [ %i.bk, %bb.q ], [ %i.j, %5 ] ; 2 uses
  %i.aw = icmp eq i64 %.0137170, 0
  br i1 %i.aw, label %.loopexit236, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %.loopexit229
  %.pre161 = load i8, ptr %.0130185, align 1, !tbaa !28
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.n, %bb.o
  %.0226 = phi i32 [ %.0220, %..thread_crit_edge ], [ %.0219, %bb.n ], [ %.0219, %bb.o ] ; 3 uses
  %.0118217 = phi i32 [ %.0118211, %..thread_crit_edge ], [ %.0118210, %bb.n ], [ %.0118210, %bb.o ] ; 3 uses
  %.0120209 = phi i32 [ %.0120204, %..thread_crit_edge ], [ %.0120203, %bb.n ], [ %.0120203, %bb.o ] ; 2 uses
  %.not157 = phi i1 [ true, %..thread_crit_edge ], [ false, %bb.n ], [ false, %bb.o ]
  %.0123202 = phi i32 [ 2, %..thread_crit_edge ], [ 1, %bb.n ], [ 1, %bb.o ]
  %.0127198 = phi ptr [ %.0127192, %..thread_crit_edge ], [ %.0127191, %bb.n ], [ %.0127191, %bb.o ] ; 3 uses
  %.0130190 = phi ptr [ %.0130185, %..thread_crit_edge ], [ %.0130184, %bb.n ], [ %.0130184, %bb.o ] ; 2 uses
  %.0134182 = phi i64 [ %.0134177, %..thread_crit_edge ], [ %.0134176, %bb.n ], [ %.0134176, %bb.o ] ; 3 uses
  %.0137175 = phi i64 [ %.0137170, %..thread_crit_edge ], [ %.0137169, %bb.n ], [ %.0137169, %bb.o ] ; 2 uses
  %i.ax = phi i8 [ %.pre161, %..thread_crit_edge ], [ %i.ah, %bb.n ], [ %i.ah, %bb.o ] ; 3 uses
  %i.ay = tail call ptr @__ctype_b_loc() #21
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !98
  %i.ba = zext i8 %i.ax to i64
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !100
  %i.bd = and i16 %i.bc, 4096
  %.not156 = icmp eq i16 %i.bd, 0
  br i1 %.not156, label %.loopexit236, label %bb.q

bb.q:                                             ; preds = %.thread
  %i.be = zext i8 %i.ax to i32
  %i.bf = shl i32 %.0120209, 4
  %i.bg = icmp ugt i8 %i.ax, 64
  %.v = select i1 %i.bg, i32 -55, i32 -48
  %i.bh = add nsw i32 %.v, %i.be
  %i.bi = or i32 %i.bh, %i.bf                     ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0130190, i64 1 ; 2 uses
  %i.bk = add i64 %.0137175, -1                   ; 2 uses
  br i1 %.not157, label %.loopexit230, label %.loopexit229

.loopexit230:                                     ; preds = %5, %bb.q
  %.0227 = phi i32 [ %.0226, %bb.q ], [ %i.g, %5 ] ; 2 uses
  %.0118218 = phi i32 [ %.0118217, %bb.q ], [ %i.h, %5 ] ; 2 uses
  %.0127199 = phi ptr [ %.0127198, %bb.q ], [ %i.k, %5 ] ; 3 uses
  %.0134183 = phi i64 [ %.0134182, %bb.q ], [ %i.l, %5 ] ; 2 uses
  %.1138 = phi i64 [ %i.bk, %bb.q ], [ %i.j, %5 ] ; 2 uses
  %.1131 = phi ptr [ %i.bj, %bb.q ], [ %i.i, %5 ] ; 2 uses
  %.1121 = phi i32 [ %i.bi, %bb.q ], [ %i.p, %5 ] ; 3 uses
  %i.bl = icmp eq i64 %.0134183, 0
  br i1 %i.bl, label %.loopexit236, label %bb.r

bb.r:                                             ; preds = %.loopexit230
  %i.bm = trunc i32 %.1121 to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %.0127199, i64 1
  store i8 %i.bm, ptr %.0127199, align 1, !tbaa !28
  %i.bo = add i64 %.0134183, -1
  br label %.loopexit.preheader

.loopexit231:                                     ; preds = %5, %bb.e
  %.0221 = phi i32 [ %.2.jt4, %bb.e ], [ %i.g, %5 ] ; 6 uses
  %.0118212 = phi i32 [ %.1119.jt4, %bb.e ], [ %i.h, %5 ] ; 5 uses
  %.0120205 = phi i32 [ %.2122.jt4, %bb.e ], [ %i.p, %5 ] ; 5 uses
  %.0127193 = phi ptr [ %.2129.jt4, %bb.e ], [ %i.k, %5 ] ; 5 uses
  %.0130186 = phi ptr [ %i.u, %bb.e ], [ %i.i, %5 ] ; 6 uses
  %.0134178 = phi i64 [ %.2136.jt4, %bb.e ], [ %i.l, %5 ] ; 5 uses
  %.0137171 = phi i64 [ %i.v, %bb.e ], [ %i.j, %5 ] ; 5 uses
  %i.bp = icmp eq i64 %.0137171, 0
  br i1 %i.bp, label %.loopexit236, label %bb.s

bb.s:                                             ; preds = %.loopexit231
  %i.bq = zext i32 %.0221 to i64                  ; 2 uses
  %i.br = load i64, ptr %i.r, align 8, !tbaa !83
  %i.bs = icmp ugt i64 %i.br, %i.bq
  %.pre = load i8, ptr %.0130186, align 1, !tbaa !28 ; 2 uses
  br i1 %i.bs, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bt = load ptr, ptr %i.q, align 8, !tbaa !82
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bq
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !28
  %i.bw = icmp eq i8 %.pre, %i.bv
  br i1 %i.bw, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  switch i8 %.pre, label %.loopexit236 [
    i8 9, label %bb.e
    i8 32, label %bb.e
  ]

bb.v:                                             ; preds = %bb.t
  %i.bx = add i32 %.0221, 1
  br label %bb.d

.loopexit232:                                     ; preds = %5, %bb.d
  %.0224 = phi i32 [ %.2.jt5, %bb.d ], [ %i.g, %5 ] ; 6 uses
  %.0118215 = phi i32 [ %.1119.jt5, %bb.d ], [ %i.h, %5 ] ; 3 uses
  %.0120208 = phi i32 [ %.2122.jt5, %bb.d ], [ %i.p, %5 ] ; 6 uses
  %.0127196 = phi ptr [ %.2129.jt5, %bb.d ], [ %i.k, %5 ] ; 6 uses
  %.0130189 = phi ptr [ %i.s, %bb.d ], [ %i.i, %5 ] ; 8 uses
  %.0134181 = phi i64 [ %.2136.jt5, %bb.d ], [ %i.l, %5 ] ; 6 uses
  %.0137174 = phi i64 [ %i.t, %bb.d ], [ %i.j, %5 ] ; 6 uses
  %i.by = icmp eq i64 %.0137174, 0
  br i1 %i.by, label %.loopexit236, label %bb.w

bb.w:                                             ; preds = %.loopexit232
  %i.bz = load ptr, ptr %i.q, align 8, !tbaa !82  ; 2 uses
  %i.ca = icmp eq ptr %i.bz, null                 ; 2 uses
  %i.cb = icmp eq i32 %.0224, 1
  %or.cond7 = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %or.cond7, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.cc = load i8, ptr %.0130189, align 1, !tbaa !28
  %i.cd = icmp eq i8 %i.cc, 10
  br i1 %i.cd, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ce = getelementptr inbounds nuw i8, ptr %.0130189, i64 1
  %i.cf = add i64 %.0137174, -1
  br label %.loopexit.preheader

bb.z:                                             ; preds = %bb.x, %bb.w
  %i.cg = icmp ne i32 %.0224, 0
  %or.cond9 = select i1 %i.ca, i1 %i.cg, i1 false
  br i1 %or.cond9, label %.loopexit.preheader, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ch = zext i32 %.0224 to i64                  ; 2 uses
  %i.ci = load i64, ptr %i.r, align 8, !tbaa !83
  %.not = icmp ugt i64 %i.ci, %i.ch
  br i1 %.not, label %bb.ab, label %.loopexit.preheader

bb.ab:                                            ; preds = %bb.aa
  %i.cj = load i8, ptr %.0130189, align 1, !tbaa !28
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ch
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !28
  %i.cm = icmp eq i8 %i.cj, %i.cl
  br i1 %i.cm, label %bb.ac, label %.loopexit233.preheader.a

bb.ac:                                            ; preds = %bb.ab
  %i.cn = add i32 %.0224, 1
  br label %bb.d

.loopexit233:                                     ; preds = %.loopexit233.preheader.a, %bb.ae
  %.0118213 = phi i32 [ %i.cr, %bb.ae ], [ %.0118213.ph, %.loopexit233.preheader.a ] ; 4 uses
  %.0127194 = phi ptr [ %i.cv, %bb.ae ], [ %.0127194.ph, %.loopexit233.preheader.a ] ; 4 uses
  %.0134179 = phi i64 [ %i.cw, %bb.ae ], [ %.0134179.ph, %.loopexit233.preheader.a ] ; 3 uses
  %i.co = icmp ult i32 %.0118213, %.0222.ph
  br i1 %i.co, label %bb.ad, label %.loopexit.preheader

bb.ad:                                            ; preds = %.loopexit233
  %i.cp = icmp eq i64 %.0134179, 0
  br i1 %i.cp, label %.loopexit236, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cq = load ptr, ptr %i.q, align 8, !tbaa !82
  %i.cr = add nuw i32 %.0118213, 1
  %i.cs = zext i32 %.0118213 to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !28
  %i.cv = getelementptr inbounds nuw i8, ptr %.0127194, i64 1
  store i8 %i.cu, ptr %.0127194, align 1, !tbaa !28
  %i.cw = add i64 %.0134179, -1
  br label %.loopexit233

.loopexit236:                                     ; preds = %bb.h, %.loopexit, %bb.ad, %bb.u, %.loopexit230, %.thread, %.loopexit232, %.loopexit231, %.loopexit229, %.loopexit228
  %.0225 = phi i32 [ %.0219, %.loopexit228 ], [ %.0221, %bb.u ], [ %.0227, %.loopexit230 ], [ %.0226, %.thread ], [ %.0222.ph, %bb.ad ], [ %.0224, %.loopexit232 ], [ %.0221, %.loopexit231 ], [ %.0220, %.loopexit229 ], [ %.0223.ph, %.loopexit ], [ %.0223.ph, %bb.h ]
  %.0118216 = phi i32 [ %.0118210, %.loopexit228 ], [ %.0118212, %bb.u ], [ %.0118218, %.loopexit230 ], [ %.0118217, %.thread ], [ %.0118213, %bb.ad ], [ %.0118215, %.loopexit232 ], [ %.0118212, %.loopexit231 ], [ %.0118211, %.loopexit229 ], [ %.0118214.ph, %.loopexit ], [ %.0118214.ph, %bb.h ]
  %.0127197 = phi ptr [ %.0127191, %.loopexit228 ], [ %.0127193, %bb.u ], [ %.0127199, %.loopexit230 ], [ %.0127198, %.thread ], [ %.0127194, %bb.ad ], [ %.0127196, %.loopexit232 ], [ %.0127193, %.loopexit231 ], [ %.0127192, %.loopexit229 ], [ %.0127195, %.loopexit ], [ %.0127195, %bb.h ]
  %.0134.lcssa = phi i64 [ %.0134176, %.loopexit228 ], [ %.0134178, %bb.u ], [ 0, %.loopexit230 ], [ %.0134182, %.thread ], [ 0, %bb.ad ], [ %.0134181, %.loopexit232 ], [ %.0134178, %.loopexit231 ], [ %.0134177, %.loopexit229 ], [ 0, %bb.h ], [ %.0134180, %.loopexit ]
  %.0141 = phi i32 [ 0, %.loopexit228 ], [ 3, %bb.u ], [ 2, %.loopexit230 ], [ 3, %.thread ], [ 2, %bb.ad ], [ 0, %.loopexit232 ], [ 0, %.loopexit231 ], [ 0, %.loopexit229 ], [ 2, %bb.h ], [ 0, %.loopexit ]
  %.3140 = phi i64 [ 0, %.loopexit228 ], [ %.0137171, %bb.u ], [ %.1138, %.loopexit230 ], [ %.0137175, %.thread ], [ %.0137172.ph, %bb.ad ], [ 0, %.loopexit232 ], [ 0, %.loopexit231 ], [ 0, %.loopexit229 ], [ %.0137173, %bb.h ], [ 0, %.loopexit ]
  %.3133 = phi ptr [ %.0130184, %.loopexit228 ], [ %.0130186, %bb.u ], [ %.1131, %.loopexit230 ], [ %.0130190, %.thread ], [ %.0130187.ph, %bb.ad ], [ %.0130189, %.loopexit232 ], [ %.0130186, %.loopexit231 ], [ %.0130185, %.loopexit229 ], [ %.0130188, %.loopexit ], [ %.0130188, %bb.h ]
  %.5 = phi i32 [ 1, %.loopexit228 ], [ 4, %bb.u ], [ 3, %.loopexit230 ], [ %.0123202, %.thread ], [ 6, %bb.ad ], [ 5, %.loopexit232 ], [ 4, %.loopexit231 ], [ 2, %.loopexit229 ], [ 0, %.loopexit ], [ 0, %bb.h ]
  %.3 = phi i32 [ %.0120203, %.loopexit228 ], [ %.0120205, %bb.u ], [ %.1121, %.loopexit230 ], [ %.0120209, %.thread ], [ %.0120206.ph, %bb.ad ], [ %.0120208, %.loopexit232 ], [ %.0120205, %.loopexit231 ], [ %.0120204, %.loopexit229 ], [ %.0120207.ph, %.loopexit ], [ %.0120207.ph, %bb.h ]
  store ptr %.3133, ptr %1, align 8, !tbaa !40
  store i64 %.3140, ptr %2, align 8, !tbaa !25
  store ptr %.0127197, ptr %3, align 8, !tbaa !40
  store i64 %.0134.lcssa, ptr %4, align 8, !tbaa !25
  store i32 %.5, ptr %i.m, align 8, !tbaa !78
  store i32 %.0118216, ptr %i.a, align 8, !tbaa !81
  store i32 %.0225, ptr %i.b, align 4, !tbaa !80
  store i32 %.3, ptr %i.o, align 4, !tbaa !79
  br label %bb.af

bb.af:                                            ; preds = %bb.b, %.loopexit236
  %.0142 = phi i32 [ %., %bb.b ], [ %.0141, %.loopexit236 ]
  ret i32 %.0142
}

; Function Attrs: nounwind uwtable
define internal void @php_conv_qprint_decode_dtor(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !84
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !82   ; 3 uses
  %.not5 = icmp eq ptr %i.d, null
  br i1 %.not5, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.f = load i8, ptr %i.e, align 4, !tbaa !85, !range !37, !noundef !38
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.d) #17
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_efree(ptr noundef nonnull %i.d) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define internal noundef i32 @consumed_filter_filter(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !102
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i64 @_php_stream_tell(ptr noundef %0) #17
  store i64 %i.f, ptr %i.c, align 8, !tbaa !102
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !12     ; 2 uses
  %.not22 = icmp eq ptr %i.g, null
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %i.h = phi ptr [ %i.l, %.lr.ph ], [ %i.g, %bb.c ] ; 3 uses
  %.023 = phi i64 [ %i.k, %.lr.ph ], [ 0, %bb.c ]
  tail call void @php_stream_bucket_unlink(ptr noundef nonnull %i.h) #17
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !22
  %i.k = add i64 %i.j, %.023                      ; 2 uses
  tail call void @php_stream_bucket_append(ptr noundef %3, ptr noundef nonnull %i.h) #17
  %i.l = load ptr, ptr %2, align 8, !tbaa !12     ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !104

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.0.lcssa = phi i64 [ 0, %bb.c ], [ %i.k, %.lr.ph ] ; 2 uses
  %.not20 = icmp eq ptr %4, null
  br i1 %.not20, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  store i64 %.0.lcssa, ptr %4, align 8, !tbaa !25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %i.m = and i32 %5, 2
  %.not21 = icmp eq i32 %i.m, 0
  br i1 %.not21, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load i64, ptr %i.c, align 8, !tbaa !102
  %i.o = load i64, ptr %i.b, align 8, !tbaa !105
  %i.p = add i64 %i.o, %i.n
  %i.q = tail call i32 @_php_stream_seek(ptr noundef %0, i64 noundef %i.p, i32 noundef 0) #17 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = load i64, ptr %i.b, align 8, !tbaa !105
  %i.s = add i64 %i.r, %.0.lcssa
  store i64 %i.s, ptr %i.b, align 8, !tbaa !105
  ret i32 2
}

; Function Attrs: nounwind uwtable
define internal void @consumed_filter_dtor(ptr nofree noundef readonly captures(address_is_null) %0) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 4 uses
  %.not7 = icmp eq ptr %i.b, null
  br i1 %.not7, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i8, ptr %i.c, align 8, !tbaa !106, !range !37, !noundef !38
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.b) #17
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_efree(ptr noundef nonnull %i.b) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b, %bb.a
  ret void
}

declare i64 @_php_stream_tell(ptr noundef) local_unnamed_addr #2

declare i32 @_php_stream_seek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @consumed_filter_create(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i8 noundef zeroext %2) #0 {
bb.a:
  %i.a = tail call i32 @strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.19) #20
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not9 = icmp eq i8 %2, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noalias dereferenceable_or_null(24) ptr @__zend_calloc(i64 noundef 1, i64 noundef 24) #22
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = tail call noalias dereferenceable_or_null(24) ptr @_ecalloc(i64 noundef 1, i64 noundef 24) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.d = phi ptr [ %i.b, %bb.c ], [ %i.c, %bb.d ] ; 4 uses
  %i.e = icmp ne i8 %2, 0
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = zext i1 %i.e to i8
  store i8 %i.g, ptr %i.f, align 8, !tbaa !106
  store i64 0, ptr %i.d, align 8, !tbaa !105
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 -1, ptr %i.h, align 8, !tbaa !102
  %i.i = tail call ptr @_php_stream_filter_alloc(ptr noundef nonnull @consumed_filter_ops, ptr noundef nonnull %i.d, i8 noundef zeroext %2) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.0 = phi ptr [ %i.i, %bb.e ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: allocsize(0,1)
declare noalias ptr @__zend_calloc(i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: allocsize(0,1)
declare noalias ptr @_ecalloc(i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define internal noundef i32 @php_chunked_filter(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4, i32 %5) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 12 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !12     ; 2 uses
  %.not27 = icmp eq ptr %i.c, null
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 12 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %php_dechunk.exit
  %i.e = phi ptr [ %i.c, %.lr.ph ], [ %i.co, %php_dechunk.exit ]
  %.028 = phi i64 [ 0, %.lr.ph ], [ %i.i, %php_dechunk.exit ]
  %i.f = tail call ptr @php_stream_bucket_make_writeable(ptr noundef nonnull %i.e) #17 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !22   ; 5 uses
  %i.i = add i64 %i.h, %.028                      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !16   ; 18 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h ; 12 uses
  %.not193.i = icmp eq i64 %i.h, 0
  br i1 %.not193.i, label %php_dechunk.exit, label %.lr.ph188.i

.lr.ph188.i:                                      ; preds = %bb.b
  %i.m = ptrtoaddr ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.o = add i64 %i.h, %i.m                       ; 2 uses
  %.pre.i = load i32, ptr %i.d, align 8, !tbaa !107
  switch i32 %.pre.i, label %.backedge.i [
    i32 0, label %.loopexit277.i
    i32 1, label %.loopexit278.i
    i32 2, label %._crit_edge230.i
    i32 3, label %.loopexit280.i
    i32 4, label %thread-pre-split139.i
    i32 5, label %._crit_edge.i
    i32 6, label %.loopexit281.i
    i32 7, label %thread-pre-split141.i
    i32 8, label %php_dechunk.exit
    i32 9, label %._crit_edge229.i
  ]

.backedge.i:                                      ; preds = %.lr.ph188.i, %.backedge.i
  br label %.backedge.i

._crit_edge.i:                                    ; preds = %.lr.ph188.i
  %.pre226.i = load i64, ptr %i.b, align 8, !tbaa !109
  br label %bb.w

.loopexit277.i:                                   ; preds = %.lr.ph188.i, %.backedge.jt0.i
  %.sink.i = phi ptr [ %i.bs, %.backedge.jt0.i ], [ %i.k, %.lr.ph188.i ]
  %.0111183261.i = phi ptr [ %.2113.i, %.backedge.jt0.i ], [ %i.k, %.lr.ph188.i ]
  %.0184252.i = phi i64 [ %.2.i, %.backedge.jt0.i ], [ 0, %.lr.ph188.i ]
  store i64 0, ptr %i.b, align 8, !tbaa !109
  br label %.loopexit278.i

.loopexit278.i:                                   ; preds = %.lr.ph188.i, %.loopexit277.i
  %.0115182272.i = phi ptr [ %.sink.i, %.loopexit277.i ], [ %i.k, %.lr.ph188.i ] ; 8 uses
  %.0111183264.i = phi ptr [ %.0111183261.i, %.loopexit277.i ], [ %i.k, %.lr.ph188.i ] ; 2 uses
  %.0184255.i = phi i64 [ %.0184252.i, %.loopexit277.i ], [ 0, %.lr.ph188.i ] ; 3 uses
  %i.p = phi i1 [ true, %.loopexit277.i ], [ false, %.lr.ph188.i ]
  %i.q = icmp ult ptr %.0115182272.i, %i.l
  br i1 %i.q, label %.lr.ph.preheader.i, label %thread-pre-split.thread.i

.lr.ph.preheader.i:                               ; preds = %.loopexit278.i
  %.0115182217274.i = ptrtoaddr ptr %.0115182272.i to i64
  %i.r = sub i64 %i.o, %.0115182217274.i          ; 2 uses
  %scevgep218.i = getelementptr i8, ptr %.0115182272.i, i64 %i.r ; 2 uses
  %i.s = load i8, ptr %.0115182272.i, align 1, !tbaa !28 ; 5 uses
  %i.t = add i8 %i.s, -48                         ; 2 uses
  %or.cond.i.peel = icmp ult i8 %i.t, 10
  br i1 %or.cond.i.peel, label %bb.g, label %bb.c

bb.c:                                             ; preds = %.lr.ph.preheader.i
  %i.u = add i8 %i.s, -65
  %or.cond137.i.peel = icmp ult i8 %i.u, 6
  br i1 %or.cond137.i.peel, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = add i8 %i.s, -97
  %or.cond138.i.peel = icmp ult i8 %i.v, 6
  br i1 %or.cond138.i.peel, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.w = load i64, ptr %i.b, align 8, !tbaa !109
  %i.x = shl i64 %i.w, 4
  %narrow.i.peel = add nuw nsw i8 %i.s, 9
  %i.y = and i8 %narrow.i.peel, 31
  %i.z = zext nneg i8 %i.y to i64
  %i.aa = add nuw i64 %i.x, %i.z
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !109
  %i.ac = shl i64 %i.ab, 4
  %narrow135.i.peel = add nuw nsw i8 %i.s, 9
  %i.ad = and i8 %narrow135.i.peel, 31
  %i.ae = zext nneg i8 %i.ad to i64
  %i.af = add nuw i64 %i.ac, %i.ae
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.preheader.i
  %i.ag = load i64, ptr %i.b, align 8, !tbaa !109
  %i.ah = shl i64 %i.ag, 4
  %i.ai = zext nneg i8 %i.t to i64
  %i.aj = or disjoint i64 %i.ah, %i.ai
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.sink299.i.peel = phi i64 [ %i.af, %bb.f ], [ %i.aa, %bb.e ], [ %i.aj, %bb.g ] ; 2 uses
  store i64 %.sink299.i.peel, ptr %i.b, align 8, !tbaa !109
  store i32 1, ptr %i.d, align 8, !tbaa !107
  %exitcond.not.i.peel = icmp eq i64 %i.r, 1
  br i1 %exitcond.not.i.peel, label %thread-pre-split.thread.i, label %.lr.ph.i.peel.next

.lr.ph.i.peel.next:                               ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %.0115182272.i, i64 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.i.peel.next
  %i.al = phi i64 [ %.sink299.i, %bb.n ], [ %.sink299.i.peel, %.lr.ph.i.peel.next ] ; 3 uses
  %.1116174.i = phi ptr [ %i.bb, %bb.n ], [ %i.ak, %.lr.ph.i.peel.next ] ; 3 uses
  %i.am = load i8, ptr %.1116174.i, align 1, !tbaa !28 ; 5 uses
  %i.an = add i8 %i.am, -48                       ; 2 uses
  %or.cond.i = icmp ult i8 %i.an, 10
  br i1 %or.cond.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i
  %i.ao = shl i64 %i.al, 4
  %i.ap = zext nneg i8 %i.an to i64
  %i.aq = or disjoint i64 %i.ao, %i.ap
  br label %bb.n

bb.j:                                             ; preds = %.lr.ph.i
  %i.ar = add i8 %i.am, -65
  %or.cond137.i = icmp ult i8 %i.ar, 6
  br i1 %or.cond137.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.as = shl i64 %i.al, 4
  %narrow135.i = add nuw nsw i8 %i.am, 9
  %i.at = and i8 %narrow135.i, 31
  %i.au = zext nneg i8 %i.at to i64
  %i.av = add nuw i64 %i.as, %i.au
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.aw = add i8 %i.am, -97
  %or.cond138.i = icmp ult i8 %i.aw, 6
  br i1 %or.cond138.i, label %bb.m, label %.thread.i

bb.m:                                             ; preds = %bb.l
  %i.ax = shl i64 %i.al, 4
  %narrow.i = add nuw nsw i8 %i.am, 9
  %i.ay = and i8 %narrow.i, 31
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = add nuw i64 %i.ax, %i.az
  br label %bb.n

.loopexit:                                        ; preds = %bb.d
  br i1 %i.p, label %.backedge.jt9.i, label %.thread.i

.thread.i:                                        ; preds = %bb.l, %.loopexit
  %.1116174.i.lcssa56 = phi ptr [ %.0115182272.i, %.loopexit ], [ %.1116174.i, %bb.l ]
  store i32 2, ptr %i.d, align 8, !tbaa !107
  br label %thread-pre-split.thread.i

bb.n:                                             ; preds = %bb.m, %bb.k, %bb.i
  %.sink299.i = phi i64 [ %i.av, %bb.k ], [ %i.ba, %bb.m ], [ %i.aq, %bb.i ] ; 2 uses
  store i64 %.sink299.i, ptr %i.b, align 8, !tbaa !109
  store i32 1, ptr %i.d, align 8, !tbaa !107
  %i.bb = getelementptr inbounds nuw i8, ptr %.1116174.i, i64 1 ; 3 uses
  %exitcond.not.i = icmp eq ptr %i.bb, %scevgep218.i
  br i1 %exitcond.not.i, label %thread-pre-split.thread.i, label %.lr.ph.i, !llvm.loop !110

thread-pre-split.thread.i:                        ; preds = %bb.n, %bb.h, %.loopexit278.i, %.thread.i
  %.1116146.i = phi ptr [ %.1116174.i.lcssa56, %.thread.i ], [ %.0115182272.i, %.loopexit278.i ], [ %scevgep218.i, %bb.h ], [ %i.bb, %bb.n ] ; 2 uses
  %i.bc = icmp eq ptr %.1116146.i, %i.l
  br i1 %i.bc, label %php_dechunk.exit, label %._crit_edge230.i

._crit_edge230.i:                                 ; preds = %.lr.ph188.i, %thread-pre-split.thread.i
  %.sink300.i = phi ptr [ %.1116146.i, %thread-pre-split.thread.i ], [ %i.k, %.lr.ph188.i ] ; 5 uses
  %.0111183265.i = phi ptr [ %.0111183264.i, %thread-pre-split.thread.i ], [ %i.k, %.lr.ph188.i ]
  %.0184256.i = phi i64 [ %.0184255.i, %thread-pre-split.thread.i ], [ 0, %.lr.ph188.i ] ; 2 uses
  %i.bd = icmp ult ptr %.sink300.i, %i.l
  br i1 %i.bd, label %.lr.ph176.preheader.i, label %.critedge.i

.lr.ph176.preheader.i:                            ; preds = %._crit_edge230.i
  %.0115182217.le.i = ptrtoaddr ptr %.sink300.i to i64
  %scevgep219.i = getelementptr i8, ptr %.sink300.i, i64 %i.o
  %i.be = sub i64 0, %.0115182217.le.i
  %scevgep221.i = getelementptr i8, ptr %scevgep219.i, i64 %i.be ; 2 uses
  br label %.lr.ph176.i

.lr.ph176.i:                                      ; preds = %bb.o, %.lr.ph176.preheader.i
  %.3175.i = phi ptr [ %i.bg, %bb.o ], [ %.sink300.i, %.lr.ph176.preheader.i ] ; 4 uses
  %i.bf = load i8, ptr %.3175.i, align 1, !tbaa !28
  switch i8 %i.bf, label %bb.o [
    i8 13, label %.critedge.i
    i8 10, label %.critedge.i
  ]

bb.o:                                             ; preds = %.lr.ph176.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.3175.i, i64 1 ; 2 uses
  %exitcond222.not.i = icmp eq ptr %i.bg, %scevgep221.i
  br i1 %exitcond222.not.i, label %.critedge.i, label %.lr.ph176.i, !llvm.loop !112

.critedge.i:                                      ; preds = %bb.o, %.lr.ph176.i, %.lr.ph176.i, %._crit_edge230.i
  %.3.lcssa.i = phi ptr [ %.sink300.i, %._crit_edge230.i ], [ %scevgep221.i, %bb.o ], [ %.3175.i, %.lr.ph176.i ], [ %.3175.i, %.lr.ph176.i ] ; 2 uses
  %i.bh = icmp eq ptr %.3.lcssa.i, %i.l
  br i1 %i.bh, label %php_dechunk.exit, label %.loopexit280.i

.loopexit280.i:                                   ; preds = %.lr.ph188.i, %.critedge.i
  %.0111183266.i = phi ptr [ %.0111183265.i, %.critedge.i ], [ %i.k, %.lr.ph188.i ] ; 2 uses
  %.0184257.i = phi i64 [ %.0184256.i, %.critedge.i ], [ 0, %.lr.ph188.i ] ; 3 uses
  %.4.i = phi ptr [ %.3.lcssa.i, %.critedge.i ], [ %i.k, %.lr.ph188.i ] ; 3 uses
  %i.bi = load i8, ptr %.4.i, align 1, !tbaa !28  ; 2 uses
  %i.bj = icmp eq i8 %i.bi, 13
  br i1 %i.bj, label %bb.p, label %bb.r

bb.p:                                             ; preds = %.loopexit280.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.4.i, i64 1 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.l
  br i1 %i.bl, label %bb.q, label %thread-pre-split139.i

bb.q:                                             ; preds = %bb.p
  store i32 4, ptr %i.d, align 8, !tbaa !107
  br label %php_dechunk.exit

thread-pre-split139.i:                            ; preds = %.lr.ph188.i, %bb.p
  %.0111183268.i = phi ptr [ %.0111183266.i, %bb.p ], [ %i.k, %.lr.ph188.i ]
  %.0184259.i = phi i64 [ %.0184257.i, %bb.p ], [ 0, %.lr.ph188.i ]
  %.5.ph.i = phi ptr [ %i.bk, %bb.p ], [ %i.k, %.lr.ph188.i ] ; 2 uses
  %.pr140.i = load i8, ptr %.5.ph.i, align 1, !tbaa !28
  br label %bb.r

bb.r:                                             ; preds = %thread-pre-split139.i, %.loopexit280.i
  %.0111183267.i = phi ptr [ %.0111183268.i, %thread-pre-split139.i ], [ %.0111183266.i, %.loopexit280.i ] ; 2 uses
  %.0184258.i = phi i64 [ %.0184259.i, %thread-pre-split139.i ], [ %.0184257.i, %.loopexit280.i ] ; 4 uses
  %i.bm = phi i8 [ %.pr140.i, %thread-pre-split139.i ], [ %i.bi, %.loopexit280.i ]
  %.5.i = phi ptr [ %.5.ph.i, %thread-pre-split139.i ], [ %.4.i, %.loopexit280.i ] ; 2 uses
  %i.bn = icmp eq i8 %i.bm, 10
  br i1 %i.bn, label %bb.s, label %.backedge.jt9.i

bb.s:                                             ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %.5.i, i64 1 ; 3 uses
  %i.bp = load i64, ptr %i.b, align 8, !tbaa !109 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 8, ptr %i.d, align 8, !tbaa !107
  %i.br = icmp ult ptr %i.bo, %i.l                ; 0 uses
  br label %php_dechunk.exit

.backedge.jt0.i:                                  ; preds = %bb.ag
  %i.bs = getelementptr inbounds nuw i8, ptr %.8.i, i64 1 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !107
  %i.bt = icmp ult ptr %i.bs, %i.l
  br i1 %i.bt, label %.loopexit277.i, label %php_dechunk.exit, !llvm.loop !113

.backedge.jt9.i:                                  ; preds = %.loopexit, %bb.r, %bb.ag
  %.0115.be.jt9.ph.i = phi ptr [ %.8.i, %bb.ag ], [ %.5.i, %bb.r ], [ %.0115182272.i, %.loopexit ] ; 4 uses
  %.0111.be.jt9.ph.i = phi ptr [ %.2113.i, %bb.ag ], [ %.0111183267.i, %bb.r ], [ %.0111183264.i, %.loopexit ] ; 2 uses
  %.0.be.jt9.ph.i = phi i64 [ %.2.i, %bb.ag ], [ %.0184258.i, %bb.r ], [ %.0184255.i, %.loopexit ] ; 3 uses
  store i32 9, ptr %i.d, align 8, !tbaa !107
  %i.bu = icmp ult ptr %.0115.be.jt9.ph.i, %i.l
  br i1 %i.bu, label %.loopexit283.i, label %php_dechunk.exit, !llvm.loop !113

bb.u:                                             ; preds = %bb.s
  %i.bv = icmp eq ptr %i.bo, %i.l
  br i1 %i.bv, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 5, ptr %i.d, align 8, !tbaa !107
  br label %php_dechunk.exit

bb.w:                                             ; preds = %bb.u, %._crit_edge.i
  %.0111183269.i = phi ptr [ %i.k, %._crit_edge.i ], [ %.0111183267.i, %bb.u ] ; 4 uses
  %.0184260.i = phi i64 [ 0, %._crit_edge.i ], [ %.0184258.i, %bb.u ] ; 2 uses
  %i.bw = phi i64 [ %.pre226.i, %._crit_edge.i ], [ %i.bp, %bb.u ] ; 4 uses
  %.6.i = phi ptr [ %i.k, %._crit_edge.i ], [ %i.bo, %bb.u ] ; 5 uses
  %i.bx = ptrtoint ptr %.6.i to i64
  %i.by = sub i64 %i.n, %i.bx                     ; 4 uses
  %.not131.i = icmp ult i64 %i.by, %i.bw
  %.not132.i = icmp eq ptr %.6.i, %.0111183269.i  ; 2 uses
  br i1 %.not131.i, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %.not132.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0111183269.i, ptr align 1 %.6.i, i64 %i.bw, i1 false)
  %.pre227.i = load i64, ptr %i.b, align 8, !tbaa !109
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bz = phi i64 [ %.pre227.i, %bb.y ], [ %i.bw, %bb.x ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0111183269.i, i64 %i.bz
  %i.cb = add i64 %i.bz, %.0184260.i              ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.6.i, i64 %i.bz ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.l
  br i1 %i.cd, label %bb.aa, label %.loopexit281.i

bb.aa:                                            ; preds = %bb.z
  store i32 6, ptr %i.d, align 8, !tbaa !107
  br label %php_dechunk.exit

bb.ab:                                            ; preds = %bb.w
  br i1 %.not132.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0111183269.i, ptr align 1 %.6.i, i64 %i.by, i1 false)
  %.pre228.i = load i64, ptr %i.b, align 8, !tbaa !109
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ce = phi i64 [ %.pre228.i, %bb.ac ], [ %i.bw, %bb.ab ]
  %i.cf = sub i64 %i.ce, %i.by
  store i64 %i.cf, ptr %i.b, align 8, !tbaa !109
  store i32 5, ptr %i.d, align 8, !tbaa !107
  %i.cg = add i64 %i.by, %.0184260.i
  br label %php_dechunk.exit

.loopexit281.i:                                   ; preds = %.lr.ph188.i, %bb.z
  %.7.i = phi ptr [ %i.cc, %bb.z ], [ %i.k, %.lr.ph188.i ] ; 3 uses
  %.1112.i = phi ptr [ %i.ca, %bb.z ], [ %i.k, %.lr.ph188.i ] ; 2 uses
  %.1.i = phi i64 [ %i.cb, %bb.z ], [ 0, %.lr.ph188.i ] ; 3 uses
  %i.ch = load i8, ptr %.7.i, align 1, !tbaa !28  ; 2 uses
  %i.ci = icmp eq i8 %i.ch, 13
  br i1 %i.ci, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %.loopexit281.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.7.i, i64 1 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.l
  br i1 %i.ck, label %bb.af, label %thread-pre-split141.i

bb.af:                                            ; preds = %bb.ae
  store i32 7, ptr %i.d, align 8, !tbaa !107
  br label %php_dechunk.exit

thread-pre-split141.i:                            ; preds = %.lr.ph188.i, %bb.ae
  %.8.ph.i = phi ptr [ %i.cj, %bb.ae ], [ %i.k, %.lr.ph188.i ] ; 2 uses
  %.2113.ph.i = phi ptr [ %.1112.i, %bb.ae ], [ %i.k, %.lr.ph188.i ]
  %.2.ph.i = phi i64 [ %.1.i, %bb.ae ], [ 0, %.lr.ph188.i ]
  %.pr142.i = load i8, ptr %.8.ph.i, align 1, !tbaa !28
  br label %bb.ag

bb.ag:                                            ; preds = %thread-pre-split141.i, %.loopexit281.i
  %i.cl = phi i8 [ %.pr142.i, %thread-pre-split141.i ], [ %i.ch, %.loopexit281.i ]
  %.8.i = phi ptr [ %.8.ph.i, %thread-pre-split141.i ], [ %.7.i, %.loopexit281.i ] ; 2 uses
  %.2113.i = phi ptr [ %.2113.ph.i, %thread-pre-split141.i ], [ %.1112.i, %.loopexit281.i ] ; 2 uses
  %.2.i = phi i64 [ %.2.ph.i, %thread-pre-split141.i ], [ %.1.i, %.loopexit281.i ] ; 3 uses
  %i.cm = icmp eq i8 %i.cl, 10
  br i1 %i.cm, label %.backedge.jt0.i, label %.backedge.jt9.i

.loopexit283.i:                                   ; preds = %.backedge.jt9.i
  %.not.i = icmp eq ptr %.0115.be.jt9.ph.i, %.0111.be.jt9.ph.i
  %.pre232.i = ptrtoint ptr %.0115.be.jt9.ph.i to i64
  %.pre233.i = sub i64 %i.n, %.pre232.i           ; 3 uses
  br i1 %.not.i, label %._crit_edge229.i, label %bb.ah

bb.ah:                                            ; preds = %.loopexit283.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0111.be.jt9.ph.i, ptr nonnull align 1 %.0115.be.jt9.ph.i, i64 %.pre233.i, i1 false)
  br label %._crit_edge229.i

._crit_edge229.i:                                 ; preds = %.lr.ph188.i, %bb.ah, %.loopexit283.i
  %.pre233.i23 = phi i64 [ %.pre233.i, %.loopexit283.i ], [ %.pre233.i, %bb.ah ], [ %i.h, %.lr.ph188.i ]
  %.0184254.i22 = phi i64 [ %.0.be.jt9.ph.i, %.loopexit283.i ], [ %.0.be.jt9.ph.i, %bb.ah ], [ 0, %.lr.ph188.i ]
  %i.cn = add i64 %.0184254.i22, %.pre233.i23
  br label %php_dechunk.exit

php_dechunk.exit:                                 ; preds = %.lr.ph188.i, %bb.t, %bb.b, %thread-pre-split.thread.i, %.critedge.i, %bb.q, %.backedge.jt0.i, %.backedge.jt9.i, %bb.v, %bb.aa, %bb.ad, %bb.af, %._crit_edge229.i
  %.0114.i = phi i64 [ %i.cg, %bb.ad ], [ %i.cn, %._crit_edge229.i ], [ %.0184257.i, %bb.q ], [ %.0184258.i, %bb.v ], [ %i.cb, %bb.aa ], [ %.1.i, %bb.af ], [ 0, %bb.b ], [ %.2.i, %.backedge.jt0.i ], [ %.0184256.i, %.critedge.i ], [ %.0184255.i, %thread-pre-split.thread.i ], [ %.0.be.jt9.ph.i, %.backedge.jt9.i ], [ 0, %.lr.ph188.i ], [ %.0184258.i, %bb.t ]
  store i64 %.0114.i, ptr %i.g, align 8, !tbaa !22
  tail call void @php_stream_bucket_append(ptr noundef %3, ptr noundef %i.f) #17
  %i.co = load ptr, ptr %2, align 8, !tbaa !12    ; 2 uses
  %.not = icmp eq ptr %i.co, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !114

._crit_edge:                                      ; preds = %php_dechunk.exit, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.i, %php_dechunk.exit ]
  %.not15 = icmp eq ptr %4, null
  br i1 %.not15, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge
  store i64 %.0.lcssa, ptr %4, align 8, !tbaa !25
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %._crit_edge
  ret i32 2
}

; Function Attrs: nounwind uwtable
define internal void @php_chunked_dtor(ptr nofree noundef readonly captures(address_is_null) %0) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 4 uses
  %.not7 = icmp eq ptr %i.b, null
  br i1 %.not7, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i8, ptr %i.c, align 4, !tbaa !115, !range !37, !noundef !38
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.b) #17
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_efree(ptr noundef nonnull %i.b) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @chunked_filter_create(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i8 noundef zeroext %2) #0 {
bb.a:
  %i.a = tail call i32 @strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.20) #20
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not9 = icmp eq i8 %2, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @__zend_calloc(i64 noundef 1, i64 noundef 16) #22
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = tail call noalias dereferenceable_or_null(16) ptr @_ecalloc(i64 noundef 1, i64 noundef 16) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.d = phi ptr [ %i.b, %bb.c ], [ %i.c, %bb.d ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 0, ptr %i.e, align 8, !tbaa !107
  store i64 0, ptr %i.d, align 8, !tbaa !109
  %i.f = icmp ne i8 %2, 0
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.h = zext i1 %i.f to i8
  store i8 %i.h, ptr %i.g, align 4, !tbaa !115
  %i.i = tail call ptr @_php_stream_filter_alloc(ptr noundef nonnull @chunked_filter_ops, ptr noundef nonnull %i.d, i8 noundef zeroext %2) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.0 = phi ptr [ %i.i, %bb.e ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #15

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind allocsize(1) }
attributes #20 = { nounwind willreturn memory(read) }
attributes #21 = { nounwind willreturn memory(none) }
attributes #22 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !14, i64 0}
!13 = !{!"_php_stream_bucket_brigade", !14, i64 0, !14, i64 8}
!14 = !{!"p1 _ZTS18_php_stream_bucket", !15, i64 0}
!15 = !{!"any pointer", !10, i64 0}
!16 = !{!17, !19, i64 24}
!17 = !{!"_php_stream_bucket", !14, i64 0, !14, i64 8, !18, i64 16, !19, i64 24, !20, i64 32, !21, i64 40, !21, i64 41, !9, i64 44}
!18 = !{!"p1 _ZTS26_php_stream_bucket_brigade", !15, i64 0}
!19 = !{!"p1 omnipotent char", !15, i64 0}
!20 = !{!"long", !10, i64 0}
!21 = !{!"_Bool", !10, i64 0}
!22 = !{!17, !20, i64 32}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!20, !20, i64 0}
!26 = distinct !{!26, !24}
!27 = distinct !{!27, !24}
!28 = !{!10, !10, i64 0}
!29 = distinct !{!29, !24}
!30 = !{!31, !32, i64 0}
!31 = !{!"_php_convert_filter", !32, i64 0, !21, i64 8, !19, i64 16, !10, i64 24, !20, i64 152}
!32 = !{!"p1 _ZTS9_php_conv", !15, i64 0}
!33 = !{!34, !15, i64 8}
!34 = !{!"_php_conv", !15, i64 0, !15, i64 8}
!35 = distinct !{null}
!36 = !{!31, !21, i64 8}
!37 = !{i8 0, i8 2}
!38 = !{}
!39 = !{!31, !19, i64 16}
!40 = !{!19, !19, i64 0}
!41 = !{!31, !20, i64 152}
!42 = !{!34, !15, i64 0}
end_hunk_0
