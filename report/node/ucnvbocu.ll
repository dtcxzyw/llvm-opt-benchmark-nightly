inline.NumInlined: 10
inline.NumDeleted: 3
begin_hunk_0_@_ZL17_Bocu1FromUnicodeP25UConverterFromUnicodeArgsP10UErrorCode:bb.a
  %i.ce = add nsw i32 %.5171, -1                  ; 2 uses
  %i.cf = icmp slt i32 %.6157, 12288
  br i1 %i.cf, label %bb.b, label %.preheader, !llvm.loop !16

bb.t:                                             ; preds = %_ZL9bocu1Previ.exit
  %i.cg = add i32 %i.bq, 10513
  %or.cond9 = icmp ult i32 %i.cg, 21026
  %i.ch = icmp samesign ugt i32 %.5171, 1
  %or.cond11 = select i1 %or.cond9, i1 %i.ch, i1 false
  br i1 %or.cond11, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.ci = icmp sgt i32 %i.bq, -1
  br i1 %i.ci, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cj = trunc nuw nsw i32 %i.bq to i16
  %.lhs.trunc = add nsw i16 %i.cj, -64            ; 2 uses
  %i.ck = srem i16 %.lhs.trunc, 243
  %.sext = sext i16 %i.ck to i32
  %i.cl = sdiv i16 %.lhs.trunc, 243
  %narrow = add nuw nsw i16 %i.cl, 208
  %i.cm = zext nneg i16 %narrow to i32
  br label %select.unfold

bb.w:                                             ; preds = %bb.u
  %.nonneg = sub nsw i32 -64, %i.bq               ; 2 uses
  %i.cn = urem i32 %.nonneg, 243                  ; 2 uses
  %i.co = udiv i32 %.nonneg, 243
  %.not212 = icmp ne i32 %i.cn, 0                 ; 2 uses
  %i.cp = sub nuw nsw i32 243, %i.cn
  %i.cq = sext i1 %.not212 to i32
  %.0149 = sub nsw i32 %i.cq, %i.co
  %i.cr = add nsw i32 %.0149, 80                  ; 2 uses
  br i1 %.not212, label %select.unfold, label %.thread

.thread:                                          ; preds = %bb.w
  %i.cs = trunc nuw i32 %i.cr to i8
  %i.ct = getelementptr inbounds nuw i8, ptr %.5179, i64 1
  store i8 %i.cs, ptr %.5179, align 1
  br label %bb.y

select.unfold:                                    ; preds = %bb.w, %bb.v
  %.1150 = phi i32 [ %i.cm, %bb.v ], [ %i.cr, %bb.w ]
  %.1146 = phi i32 [ %.sext, %bb.v ], [ %i.cp, %bb.w ] ; 3 uses
  %i.cu = trunc nuw i32 %.1150 to i8
  %i.cv = getelementptr inbounds nuw i8, ptr %.5179, i64 1 ; 2 uses
  store i8 %i.cu, ptr %.5179, align 1
  %i.cw = icmp sgt i32 %.1146, 19
  br i1 %i.cw, label %bb.x, label %bb.y

bb.x:                                             ; preds = %select.unfold
  %i.cx = trunc nuw i32 %.1146 to i8
  %i.cy = add nuw i8 %i.cx, 13
  br label %bb.z

bb.y:                                             ; preds = %.thread, %select.unfold
  %i.cz = phi ptr [ %i.ct, %.thread ], [ %i.cv, %select.unfold ]
  %.1146203 = phi i32 [ 0, %.thread ], [ %.1146, %select.unfold ]
  %i.da = sext i32 %.1146203 to i64
  %i.db = getelementptr inbounds i8, ptr @_ZL16bocu1TrailToByte, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dd = phi ptr [ %i.cv, %bb.x ], [ %i.cz, %bb.y ]
  %i.de = phi i8 [ %i.cy, %bb.x ], [ %i.dc, %bb.y ]
  %i.df = getelementptr inbounds nuw i8, ptr %.5179, i64 2
  store i8 %i.de, ptr %i.dd, align 1
  %i.dg = add nsw i32 %.5171, -2
  br label %.preheader, !llvm.loop !16

bb.aa:                                            ; preds = %bb.t
  %i.dh = tail call fastcc noundef i32 @_ZL8packDiffi(i32 noundef %i.bq) ; 9 uses
  %i.di = icmp ult i32 %i.dh, 67108864
  %i.dj = ashr i32 %i.dh, 24                      ; 2 uses
  %i.dk = select i1 %i.di, i32 %i.dj, i32 4       ; 4 uses
  %.not = icmp sgt i32 %i.dk, %.5171
  br i1 %.not, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  switch i32 %i.dk, label %.thread204 [
    i32 4, label %bb.ac
    i32 3, label %bb.ad
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.dl = trunc nsw i32 %i.dj to i8
  %i.dm = getelementptr inbounds nuw i8, ptr %.5179, i64 1
  store i8 %i.dl, ptr %.5179, align 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.6180 = phi ptr [ %i.dm, %bb.ac ], [ %.5179, %bb.ab ] ; 4 uses
  %i.dn = lshr i32 %i.dh, 16
  %i.do = trunc i32 %i.dn to i8
  %i.dp = getelementptr inbounds nuw i8, ptr %.6180, i64 1
  store i8 %i.do, ptr %.6180, align 1
  %i.dq = lshr i32 %i.dh, 8
  %i.dr = trunc i32 %i.dq to i8
  %i.ds = getelementptr inbounds nuw i8, ptr %.6180, i64 2
  store i8 %i.dr, ptr %i.dp, align 1
  %i.dt = trunc i32 %i.dh to i8
  %i.du = getelementptr inbounds nuw i8, ptr %.6180, i64 3
  store i8 %i.dt, ptr %i.ds, align 1
  br label %.thread204

.thread204:                                       ; preds = %bb.ad, %bb.ab
  %.7181 = phi ptr [ %.5179, %bb.ab ], [ %i.du, %bb.ad ]
  %i.dv = sub nsw i32 %.5171, %i.dk
  br label %.preheader, !llvm.loop !16

bb.ae:                                            ; preds = %bb.aa
  %i.dw = sub nsw i32 %i.dk, %.5171               ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 3 uses
  switch i32 %i.dw, label %bb.ai [
    i32 3, label %bb.af
    i32 2, label %bb.ag
    i32 1, label %bb.ah
  ]

bb.af:                                            ; preds = %bb.ae
  %i.dy = lshr i32 %i.dh, 16
  %i.dz = trunc i32 %i.dy to i8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 105
  store i8 %i.dz, ptr %i.dx, align 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.0144 = phi ptr [ %i.ea, %bb.af ], [ %i.dx, %bb.ae ] ; 2 uses
  %i.eb = lshr i32 %i.dh, 8
  %i.ec = trunc i32 %i.eb to i8
  %i.ed = getelementptr inbounds nuw i8, ptr %.0144, i64 1
  store i8 %i.ec, ptr %.0144, align 1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  %.1 = phi ptr [ %i.ed, %bb.ag ], [ %i.dx, %bb.ae ]
  %i.ee = trunc i32 %i.dh to i8
  store i8 %i.ee, ptr %.1, align 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ae, %bb.ah
  %i.ef = trunc nsw i32 %i.dw to i8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 91
  store i8 %i.ef, ptr %i.eg, align 1
  %i.eh = shl nsw i32 %i.dw, 3
  %i.ei = ashr i32 %i.dh, %i.eh                   ; 3 uses
  switch i32 %.5171, label %bb.am [
    i32 3, label %bb.aj
    i32 2, label %bb.ak
    i32 1, label %bb.al
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.ej = lshr i32 %i.ei, 16
  %i.ek = trunc i32 %i.ej to i8
  %i.el = getelementptr inbounds nuw i8, ptr %.5179, i64 1
  store i8 %i.ek, ptr %.5179, align 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.8182 = phi ptr [ %i.el, %bb.aj ], [ %.5179, %bb.ai ] ; 2 uses
  %i.em = lshr i32 %i.ei, 8
  %i.en = trunc i32 %i.em to i8
  %i.eo = getelementptr inbounds nuw i8, ptr %.8182, i64 1
  store i8 %i.en, ptr %.8182, align 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ai
  %.9 = phi ptr [ %i.eo, %bb.ak ], [ %.5179, %bb.ai ] ; 2 uses
  %i.ep = trunc i32 %i.ei to i8
  %i.eq = getelementptr inbounds nuw i8, ptr %.9, i64 1
  store i8 %i.ep, ptr %.9, align 1
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ai
  %.10 = phi ptr [ %.5179, %bb.ai ], [ %i.eq, %bb.al ]
  store i32 15, ptr %1, align 4
  br label %.loopexit

.lr.ph246._crit_edge.loopexit:                    ; preds = %.lr.ph246
  %i.er = zext i16 %i.az to i32
  br label %.lr.ph246._crit_edge

.lr.ph246._crit_edge:                             ; preds = %.lr.ph246._crit_edge.loopexit, %.lr.ph246.preheader
  %.2245.lcssa = phi ptr [ %.2.ph, %.lr.ph246.preheader ], [ %i.ay, %.lr.ph246._crit_edge.loopexit ]
  %.3154244.lcssa = phi i32 [ %.3154.ph, %.lr.ph246.preheader ], [ %i.er, %.lr.ph246._crit_edge.loopexit ]
  %.4162243.lcssa = phi i32 [ %.4162.ph, %.lr.ph246.preheader ], [ %spec.select200, %.lr.ph246._crit_edge.loopexit ]
  %.3177241.lcssa = phi ptr [ %.3177.ph, %.lr.ph246.preheader ], [ %i.bc, %.lr.ph246._crit_edge.loopexit ]
  store i32 15, ptr %1, align 4
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.h
  %i.es = zext i16 %i.az to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %bb.am, %.lr.ph246._crit_edge, %bb.l
  %.13 = phi ptr [ %.3177241.lcssa, %.lr.ph246._crit_edge ], [ %.4178, %bb.l ], [ %.10, %bb.am ], [ %.3177.ph, %.preheader ], [ %i.bc, %.loopexit.loopexit ]
  %.8 = phi i32 [ %.4162243.lcssa, %.lr.ph246._crit_edge ], [ %.6164, %bb.l ], [ %i.bz, %bb.am ], [ %.4162.ph, %.preheader ], [ %spec.select200, %.loopexit.loopexit ]
  %.7 = phi i32 [ %.3154244.lcssa, %.lr.ph246._crit_edge ], [ %i.bp, %bb.l ], [ %.6157, %bb.am ], [ %.3154.ph, %.preheader ], [ %i.es, %.loopexit.loopexit ]
  %.6 = phi ptr [ %.2245.lcssa, %.lr.ph246._crit_edge ], [ %.3, %bb.l ], [ %.5, %bb.am ], [ %.2.ph, %.preheader ], [ %i.ay, %.loopexit.loopexit ]
  %2 = tail call i32 @llvm.smin.i32(i32 %.7, i32 0)
  %i.et = sub nsw i32 0, %2
  store i32 %i.et, ptr %i.o, align 4
  store i32 %.8, ptr %i.q, align 8
  store ptr %.6, ptr %i.c, align 8
  store ptr %.13, ptr %i.g, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL28_Bocu1FromUnicodeWithOffsetsP25UConverterFromUnicodeArgsP10UErrorCode(ptr noundef captures(none) %0, ptr noundef writeonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 84 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4              ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8              ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  %spec.store.select = select i1 %i.u, i32 64, i32 %i.t ; 2 uses
  %i.v = icmp ne i32 %i.r, 0                      ; 2 uses
  %i.w = sext i1 %i.v to i32
  %i.x = icmp sgt i32 %i.n, 0
  %or.cond = select i1 %i.v, i1 %i.x, i1 false
  br i1 %or.cond, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.s, %bb.a
  %.0236 = phi ptr [ %i.ch, %bb.s ], [ %i.h, %bb.a ] ; 2 uses
  %.0227 = phi i32 [ %i.cj, %bb.s ], [ %i.n, %bb.a ]
  %.0218 = phi ptr [ %i.ci, %bb.s ], [ %i.p, %bb.a ] ; 2 uses
  %.0210 = phi i32 [ %i.cd, %bb.s ], [ %spec.store.select, %bb.a ] ; 2 uses
  %.0202 = phi i32 [ %.6208, %bb.s ], [ %i.r, %bb.a ]
  %.0188 = phi i32 [ %.6194, %bb.s ], [ 0, %bb.a ] ; 2 uses
  %.0186 = phi ptr [ %.6, %bb.s ], [ %i.d, %bb.a ] ; 3 uses
  %i.y = ptrtoint ptr %i.f to i64
  %i.z = ptrtoint ptr %.0186 to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = lshr exact i64 %i.aa, 1
  %i.ac = trunc i64 %i.ab to i32
  %spec.select = tail call i32 @llvm.smin.i32(i32 %.0227, i32 %i.ac) ; 2 uses
  %i.ad = icmp sgt i32 %spec.select, 0
  br i1 %i.ad, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b, %bb.g
  %.1187304 = phi ptr [ %.2, %bb.g ], [ %.0186, %bb.b ] ; 4 uses
  %.1189303 = phi i32 [ %.2190, %bb.g ], [ %.0188, %bb.b ] ; 4 uses
  %.1211302 = phi i32 [ %.3213, %bb.g ], [ %.0210, %bb.b ] ; 4 uses
  %.1219301 = phi ptr [ %.2220, %bb.g ], [ %.0218, %bb.b ] ; 4 uses
  %.2229300 = phi i32 [ %.3230, %bb.g ], [ %spec.select, %bb.b ] ; 2 uses
  %.1237299 = phi ptr [ %.2238, %bb.g ], [ %.0236, %bb.b ] ; 4 uses
  %i.ae = load i16, ptr %.1187304, align 2        ; 5 uses
  %i.af = zext i16 %i.ae to i32                   ; 5 uses
  %i.ag = icmp ult i16 %i.ae, 12288
  br i1 %i.ag, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.lr.ph
  %i.ah = icmp samesign ult i16 %i.ae, 33
  br i1 %i.ah, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not266 = icmp eq i16 %i.ae, 32
  %spec.select267 = select i1 %.not266, i32 %.1211302, i32 64
  %i.ai = trunc nuw nsw i16 %i.ae to i8
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.aj = sub nsw i32 %i.af, %.1211302            ; 2 uses
  %i.ak = add i32 %i.aj, 64
  %or.cond3 = icmp ult i32 %i.ak, 128
  br i1 %or.cond3, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.al = and i32 %i.af, 16256
  %i.am = or disjoint i32 %i.al, 64
  %i.an = trunc nsw i32 %i.aj to i8
  %i.ao = add i8 %i.an, -112
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %storemerge = phi i8 [ %i.ao, %bb.f ], [ %i.ai, %bb.d ]
  %.3213 = phi i32 [ %i.am, %bb.f ], [ %spec.select267, %bb.d ] ; 2 uses
  store i8 %storemerge, ptr %.1237299, align 1
  store i32 %.1189303, ptr %.1219301, align 4
  %.2 = getelementptr inbounds nuw i8, ptr %.1187304, i64 2 ; 2 uses
  %.2190 = add nsw i32 %.1189303, 1               ; 2 uses
  %.2220 = getelementptr inbounds nuw i8, ptr %.1219301, i64 4 ; 2 uses
  %.3230 = add nsw i32 %.2229300, -1
  %.2238 = getelementptr inbounds nuw i8, ptr %.1237299, i64 1 ; 2 uses
  %i.ap = icmp sgt i32 %.2229300, 1
  br i1 %i.ap, label %.lr.ph, label %.critedge, !llvm.loop !17

.critedge:                                        ; preds = %.lr.ph, %bb.e, %bb.g, %bb.b
  %.1237.lcssa = phi ptr [ %.0236, %bb.b ], [ %.2238, %bb.g ], [ %.1237299, %bb.e ], [ %.1237299, %.lr.ph ] ; 2 uses
  %.1219.lcssa = phi ptr [ %.0218, %bb.b ], [ %.2220, %bb.g ], [ %.1219301, %bb.e ], [ %.1219301, %.lr.ph ]
  %.1211.lcssa = phi i32 [ %.0210, %bb.b ], [ %.3213, %bb.g ], [ %.1211302, %bb.e ], [ %.1211302, %.lr.ph ]
  %.1189.lcssa = phi i32 [ %.0188, %bb.b ], [ %.2190, %bb.g ], [ %.1189303, %bb.e ], [ %.1189303, %.lr.ph ]
  %.1187.lcssa = phi ptr [ %.0186, %bb.b ], [ %.2, %bb.g ], [ %.1187304, %bb.e ], [ %.1187304, %.lr.ph ]
  %.2204 = phi i32 [ %.0202, %bb.b ], [ %i.af, %bb.g ], [ %i.af, %bb.e ], [ %i.af, %.lr.ph ]
  %i.aq = load ptr, ptr %i.i, align 8
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %.1237.lcssa to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = trunc i64 %i.at to i32
  br label %.preheader

.preheader:                                       ; preds = %bb.z, %bb.s, %.thread272, %.critedge
  %.3239.ph = phi ptr [ %.1237.lcssa, %.critedge ], [ %i.ch, %bb.s ], [ %i.dk, %bb.z ], [ %.8244, %.thread272 ] ; 3 uses
  %.4231.ph = phi i32 [ %i.au, %.critedge ], [ %i.cj, %bb.s ], [ %i.dn, %bb.z ], [ %i.eg, %.thread272 ] ; 2 uses
  %.3221.ph = phi ptr [ %.1219.lcssa, %.critedge ], [ %i.ci, %bb.s ], [ %i.dm, %bb.z ], [ %.8226, %.thread272 ] ; 3 uses
  %.4214.ph = phi i32 [ %.1211.lcssa, %.critedge ], [ %i.cd, %bb.s ], [ %i.cd, %bb.z ], [ %i.cd, %.thread272 ] ; 3 uses
  %.3205.ph = phi i32 [ %.2204, %.critedge ], [ %.6208, %bb.s ], [ %.6208, %bb.z ], [ %.6208, %.thread272 ] ; 2 uses
  %.0195.ph = phi i32 [ %.1189.lcssa, %.critedge ], [ %.6194, %bb.s ], [ %.6194, %bb.z ], [ %.6194, %.thread272 ]
  %.3.ph = phi ptr [ %.1187.lcssa, %.critedge ], [ %.6, %bb.s ], [ %.6, %bb.z ], [ %.6, %.thread272 ] ; 4 uses
  %i.av = icmp ult ptr %.3.ph, %i.f
  br i1 %i.av, label %.lr.ph331.preheader, label %.loopexit

.lr.ph331.preheader:                              ; preds = %.preheader
  %i.aw = icmp sgt i32 %.4231.ph, 0
  br i1 %i.aw, label %.lr.ph419, label %.lr.ph331._crit_edge

.lr.ph331:                                        ; preds = %bb.h
  %i.ax = add nsw i32 %.4231325417, -1
  %i.ay = icmp sgt i32 %.4231325417, 1
  br i1 %i.ay, label %.lr.ph419, label %.lr.ph331._crit_edge.loopexit, !llvm.loop !18

.lr.ph419:                                        ; preds = %.lr.ph331.preheader, %.lr.ph331
  %.3239324418 = phi ptr [ %i.be, %.lr.ph331 ], [ %.3239.ph, %.lr.ph331.preheader ] ; 4 uses
  %.4231325417 = phi i32 [ %i.ax, %.lr.ph331 ], [ %.4231.ph, %.lr.ph331.preheader ] ; 4 uses
  %.3221326416 = phi ptr [ %i.bf, %.lr.ph331 ], [ %.3221.ph, %.lr.ph331.preheader ] ; 4 uses
  %.4214327415 = phi i32 [ %spec.select268, %.lr.ph331 ], [ %.4214.ph, %.lr.ph331.preheader ] ; 3 uses
  %.0195329414 = phi i32 [ %i.bb, %.lr.ph331 ], [ %.0195.ph, %.lr.ph331.preheader ] ; 4 uses
  %.3330413 = phi ptr [ %i.az, %.lr.ph331 ], [ %.3.ph, %.lr.ph331.preheader ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.3330413, i64 2 ; 6 uses
  %i.ba = load i16, ptr %.3330413, align 2        ; 6 uses
  %i.bb = add nsw i32 %.0195329414, 1             ; 3 uses
  %i.bc = icmp ult i16 %i.ba, 33
  br i1 %i.bc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph419
  %.not265 = icmp eq i16 %i.ba, 32
  %spec.select268 = select i1 %.not265, i32 %.4214327415, i32 64 ; 3 uses
  %i.bd = trunc nuw nsw i16 %i.ba to i8
  %i.be = getelementptr inbounds nuw i8, ptr %.3239324418, i64 1 ; 3 uses
  store i8 %i.bd, ptr %.3239324418, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %.3221326416, i64 4 ; 3 uses
  store i32 %.0195329414, ptr %.3221326416, align 4
  %i.bg = icmp ult ptr %i.az, %i.f
  br i1 %i.bg, label %.lr.ph331, label %.loopexit.loopexit, !llvm.loop !18

bb.i:                                             ; preds = %.lr.ph419
  %i.bh = zext i16 %i.ba to i32                   ; 3 uses
  %i.bi = and i32 %i.bh, 64512
  %i.bj = icmp eq i32 %i.bi, 55296
  br i1 %i.bj, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i, %bb.a
  %.4240 = phi ptr [ %i.h, %bb.a ], [ %.3239324418, %bb.i ] ; 2 uses
  %.5232 = phi i32 [ %i.n, %bb.a ], [ %.4231325417, %bb.i ]
  %.4222 = phi ptr [ %i.p, %bb.a ], [ %.3221326416, %bb.i ] ; 2 uses
  %.6216 = phi i32 [ %spec.store.select, %bb.a ], [ %.4214327415, %bb.i ] ; 2 uses
  %.4206 = phi i32 [ %i.r, %bb.a ], [ %i.bh, %bb.i ] ; 3 uses
  %.1196 = phi i32 [ %i.w, %bb.a ], [ %.0195329414, %bb.i ]
  %.4192 = phi i32 [ 0, %bb.a ], [ %i.bb, %bb.i ]
  %.4 = phi ptr [ %i.d, %bb.a ], [ %i.az, %bb.i ] ; 4 uses
  %i.bk = icmp ult ptr %.4, %i.f
  br i1 %i.bk, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bl = load i16, ptr %.4, align 2
  %i.bm = zext i16 %i.bl to i32                   ; 2 uses
  %i.bn = and i32 %i.bm, 64512
  %i.bo = icmp eq i32 %i.bn, 56320                ; 3 uses
  %i.bp = shl i32 %.4206, 10
  %i.bq = add i32 %i.bp, -56613888
  %i.br = add i32 %i.bq, %i.bm
  %.5207 = select i1 %i.bo, i32 %i.br, i32 %.4206
  %i.bs = zext i1 %i.bo to i32
  %.5193 = add nsw i32 %.4192, %i.bs
  %.5.idx = select i1 %i.bo, i64 2, i64 0
  %.5 = getelementptr inbounds nuw i8, ptr %.4, i64 %.5.idx
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bt = sub nsw i32 0, %.4206
  br label %.loopexit

bb.m:                                             ; preds = %bb.k, %bb.i
  %.5241 = phi ptr [ %.4240, %bb.k ], [ %.3239324418, %bb.i ] ; 17 uses
  %.6233 = phi i32 [ %.5232, %bb.k ], [ %.4231325417, %bb.i ] ; 7 uses
end_hunk_0
begin_hunk_1_@_ZL28_Bocu1FromUnicodeWithOffsetsP25UConverterFromUnicodeArgsP10UErrorCode:bb.a
  %i.cv = sext i1 %.not282 to i32
  %.0200 = sub nsw i32 %i.cv, %i.ct
  %i.cw = add nsw i32 %.0200, 80                  ; 2 uses
  br i1 %.not282, label %select.unfold, label %.thread

.thread:                                          ; preds = %bb.w
  %i.cx = trunc nuw i32 %i.cw to i8
  %i.cy = getelementptr inbounds nuw i8, ptr %.5241, i64 1
  store i8 %i.cx, ptr %.5241, align 1
  br label %bb.y

select.unfold:                                    ; preds = %bb.w, %bb.v
  %.1201 = phi i32 [ %i.cr, %bb.v ], [ %i.cw, %bb.w ]
  %.1185 = phi i32 [ %.sext, %bb.v ], [ %i.cu, %bb.w ] ; 3 uses
  %i.cz = trunc nuw i32 %.1201 to i8
  %i.da = getelementptr inbounds nuw i8, ptr %.5241, i64 1 ; 2 uses
  store i8 %i.cz, ptr %.5241, align 1
  %i.db = icmp sgt i32 %.1185, 19
  br i1 %i.db, label %bb.x, label %bb.y

bb.x:                                             ; preds = %select.unfold
  %i.dc = trunc nuw i32 %.1185 to i8
  %i.dd = add nuw i8 %i.dc, 13
  br label %bb.z

bb.y:                                             ; preds = %.thread, %select.unfold
  %i.de = phi ptr [ %i.cy, %.thread ], [ %i.da, %select.unfold ]
  %.1185271 = phi i32 [ 0, %.thread ], [ %.1185, %select.unfold ]
  %i.df = sext i32 %.1185271 to i64
  %i.dg = getelementptr inbounds i8, ptr @_ZL16bocu1TrailToByte, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.di = phi ptr [ %i.da, %bb.x ], [ %i.de, %bb.y ]
  %i.dj = phi i8 [ %i.dd, %bb.x ], [ %i.dh, %bb.y ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.5241, i64 2
  store i8 %i.dj, ptr %i.di, align 1
  %i.dl = getelementptr inbounds nuw i8, ptr %.5223, i64 4
  store i32 %.2197, ptr %.5223, align 4
  %i.dm = getelementptr inbounds nuw i8, ptr %.5223, i64 8
  store i32 %.2197, ptr %i.dl, align 4
  %i.dn = add nsw i32 %.6233, -2
  br label %.preheader, !llvm.loop !18

bb.aa:                                            ; preds = %bb.t
  %i.do = tail call fastcc noundef i32 @_ZL8packDiffi(i32 noundef %i.bu) ; 9 uses
  %i.dp = icmp ult i32 %i.do, 67108864
  %i.dq = ashr i32 %i.do, 24                      ; 2 uses
  %i.dr = select i1 %i.dp, i32 %i.dq, i32 4       ; 4 uses
  %.not = icmp sgt i32 %i.dr, %.6233
  br i1 %.not, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  switch i32 %i.dr, label %.thread272 [
    i32 4, label %bb.ac
    i32 3, label %bb.ad
    i32 2, label %bb.ae
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.ds = trunc nsw i32 %i.dq to i8
  %i.dt = getelementptr inbounds nuw i8, ptr %.5241, i64 1
  store i8 %i.ds, ptr %.5241, align 1
  %i.du = getelementptr inbounds nuw i8, ptr %.5223, i64 4
  store i32 %.2197, ptr %.5223, align 4
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.6242 = phi ptr [ %i.dt, %bb.ac ], [ %.5241, %bb.ab ] ; 2 uses
  %.6224 = phi ptr [ %i.du, %bb.ac ], [ %.5223, %bb.ab ] ; 2 uses
  %i.dv = lshr i32 %i.do, 16
  %i.dw = trunc i32 %i.dv to i8
  %i.dx = getelementptr inbounds nuw i8, ptr %.6242, i64 1
  store i8 %i.dw, ptr %.6242, align 1
  %i.dy = getelementptr inbounds nuw i8, ptr %.6224, i64 4
  store i32 %.2197, ptr %.6224, align 4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ab
  %.7243 = phi ptr [ %i.dx, %bb.ad ], [ %.5241, %bb.ab ] ; 3 uses
  %.7225 = phi ptr [ %i.dy, %bb.ad ], [ %.5223, %bb.ab ] ; 3 uses
  %i.dz = lshr i32 %i.do, 8
  %i.ea = trunc i32 %i.dz to i8
  %i.eb = getelementptr inbounds nuw i8, ptr %.7243, i64 1
  store i8 %i.ea, ptr %.7243, align 1
  %i.ec = getelementptr inbounds nuw i8, ptr %.7225, i64 4
  store i32 %.2197, ptr %.7225, align 4
  %i.ed = trunc i32 %i.do to i8
  %i.ee = getelementptr inbounds nuw i8, ptr %.7243, i64 2
  store i8 %i.ed, ptr %i.eb, align 1
  %i.ef = getelementptr inbounds nuw i8, ptr %.7225, i64 8
  store i32 %.2197, ptr %i.ec, align 4
  br label %.thread272

.thread272:                                       ; preds = %bb.ae, %bb.ab
  %.8244 = phi ptr [ %.5241, %bb.ab ], [ %i.ee, %bb.ae ]
  %.8226 = phi ptr [ %.5223, %bb.ab ], [ %i.ef, %bb.ae ]
  %i.eg = sub nsw i32 %.6233, %i.dr
  br label %.preheader, !llvm.loop !18

bb.af:                                            ; preds = %bb.aa
  %i.eh = sub nsw i32 %i.dr, %.6233               ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 3 uses
  switch i32 %i.eh, label %bb.aj [
    i32 3, label %bb.ag
    i32 2, label %bb.ah
    i32 1, label %bb.ai
  ]

bb.ag:                                            ; preds = %bb.af
  %i.ej = lshr i32 %i.do, 16
  %i.ek = trunc i32 %i.ej to i8
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 105
  store i8 %i.ek, ptr %i.ei, align 1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.0183 = phi ptr [ %i.el, %bb.ag ], [ %i.ei, %bb.af ] ; 2 uses
  %i.em = lshr i32 %i.do, 8
  %i.en = trunc i32 %i.em to i8
  %i.eo = getelementptr inbounds nuw i8, ptr %.0183, i64 1
  store i8 %i.en, ptr %.0183, align 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.af
  %.1 = phi ptr [ %i.eo, %bb.ah ], [ %i.ei, %bb.af ]
  %i.ep = trunc i32 %i.do to i8
  store i8 %i.ep, ptr %.1, align 1
  br label %bb.aj

bb.aj:                                            ; preds = %bb.af, %bb.ai
  %i.eq = trunc nsw i32 %i.eh to i8
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 91
  store i8 %i.eq, ptr %i.er, align 1
  %i.es = shl nsw i32 %i.eh, 3
  %i.et = ashr i32 %i.do, %i.es                   ; 3 uses
  switch i32 %.6233, label %bb.an [
    i32 3, label %bb.ak
    i32 2, label %bb.al
    i32 1, label %bb.am
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.eu = lshr i32 %i.et, 16
  %i.ev = trunc i32 %i.eu to i8
  %i.ew = getelementptr inbounds nuw i8, ptr %.5241, i64 1
  store i8 %i.ev, ptr %.5241, align 1
  %i.ex = getelementptr inbounds nuw i8, ptr %.5223, i64 4
  store i32 %.2197, ptr %.5223, align 4
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.9245 = phi ptr [ %i.ew, %bb.ak ], [ %.5241, %bb.aj ] ; 2 uses
  %.9 = phi ptr [ %i.ex, %bb.ak ], [ %.5223, %bb.aj ] ; 2 uses
  %i.ey = lshr i32 %i.et, 8
  %i.ez = trunc i32 %i.ey to i8
  %i.fa = getelementptr inbounds nuw i8, ptr %.9245, i64 1
  store i8 %i.ez, ptr %.9245, align 1
  %i.fb = getelementptr inbounds nuw i8, ptr %.9, i64 4
  store i32 %.2197, ptr %.9, align 4
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.aj
  %.10246 = phi ptr [ %i.fa, %bb.al ], [ %.5241, %bb.aj ] ; 2 uses
  %.10 = phi ptr [ %i.fb, %bb.al ], [ %.5223, %bb.aj ] ; 2 uses
  %i.fc = trunc i32 %i.et to i8
  %i.fd = getelementptr inbounds nuw i8, ptr %.10246, i64 1
  store i8 %i.fc, ptr %.10246, align 1
  %i.fe = getelementptr inbounds nuw i8, ptr %.10, i64 4
  store i32 %.2197, ptr %.10, align 4
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.aj
  %.11247 = phi ptr [ %.5241, %bb.aj ], [ %i.fd, %bb.am ]
  %.11 = phi ptr [ %.5223, %bb.aj ], [ %i.fe, %bb.am ]
  store i32 15, ptr %1, align 4
  br label %.loopexit

.lr.ph331._crit_edge.loopexit:                    ; preds = %.lr.ph331
  %i.ff = zext i16 %i.ba to i32
  br label %.lr.ph331._crit_edge

.lr.ph331._crit_edge:                             ; preds = %.lr.ph331._crit_edge.loopexit, %.lr.ph331.preheader
  %.3330.lcssa = phi ptr [ %.3.ph, %.lr.ph331.preheader ], [ %i.az, %.lr.ph331._crit_edge.loopexit ]
  %.3205328.lcssa = phi i32 [ %.3205.ph, %.lr.ph331.preheader ], [ %i.ff, %.lr.ph331._crit_edge.loopexit ]
  %.4214327.lcssa = phi i32 [ %.4214.ph, %.lr.ph331.preheader ], [ %spec.select268, %.lr.ph331._crit_edge.loopexit ]
  %.3221326.lcssa = phi ptr [ %.3221.ph, %.lr.ph331.preheader ], [ %i.bf, %.lr.ph331._crit_edge.loopexit ]
  %.3239324.lcssa = phi ptr [ %.3239.ph, %.lr.ph331.preheader ], [ %i.be, %.lr.ph331._crit_edge.loopexit ]
  store i32 15, ptr %1, align 4
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.h
  %i.fg = zext i16 %i.ba to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %bb.an, %.lr.ph331._crit_edge, %bb.l
  %.14250 = phi ptr [ %.3239324.lcssa, %.lr.ph331._crit_edge ], [ %.4240, %bb.l ], [ %.11247, %bb.an ], [ %.3239.ph, %.preheader ], [ %i.be, %.loopexit.loopexit ]
  %.14 = phi ptr [ %.3221326.lcssa, %.lr.ph331._crit_edge ], [ %.4222, %bb.l ], [ %.11, %bb.an ], [ %.3221.ph, %.preheader ], [ %i.bf, %.loopexit.loopexit ]
  %.8 = phi i32 [ %.4214327.lcssa, %.lr.ph331._crit_edge ], [ %.6216, %bb.l ], [ %i.cd, %bb.an ], [ %.4214.ph, %.preheader ], [ %spec.select268, %.loopexit.loopexit ]
  %.7209 = phi i32 [ %.3205328.lcssa, %.lr.ph331._crit_edge ], [ %i.bt, %bb.l ], [ %.6208, %bb.an ], [ %.3205.ph, %.preheader ], [ %i.fg, %.loopexit.loopexit ]
  %.7 = phi ptr [ %.3330.lcssa, %.lr.ph331._crit_edge ], [ %.4, %bb.l ], [ %.6, %bb.an ], [ %.3.ph, %.preheader ], [ %i.az, %.loopexit.loopexit ]
  %2 = tail call i32 @llvm.smin.i32(i32 %.7209, i32 0)
  %i.fh = sub nsw i32 0, %2
  store i32 %i.fh, ptr %i.q, align 4
  store i32 %.8, ptr %i.s, align 8
  store ptr %.7, ptr %i.c, align 8
  store ptr %.14250, ptr %i.g, align 8
  store ptr %.14, ptr %i.o, align 8
  ret void
}

declare void @ucnv_getCompleteUnicodeSet_78(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef range(i32 33554432, 0) i32 @_ZL8packDiffi(i32 noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i32 %0, -65
  br i1 %i.a, label %bb.b, label %bb.y

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i32 %0, 10513
  br i1 %i.b, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.c = trunc nsw i32 %0 to i16
  %.lhs.trunc = add nsw i16 %i.c, -64             ; 2 uses
  %i.d = srem i16 %.lhs.trunc, 243                ; 3 uses
  %i.e = sdiv i16 %.lhs.trunc, 243
  %.sext136 = zext nneg i16 %i.e to i32
  %i.f = icmp sgt i16 %i.d, 19
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %narrow172 = add nuw nsw i16 %i.d, 13
  %i.g = zext nneg i16 %narrow172 to i32
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = sext i16 %i.d to i64
  %i.i = getelementptr inbounds i8, ptr @_ZL16bocu1TrailToByte, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1
  %i.k = sext i8 %i.j to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = phi i32 [ %i.g, %bb.d ], [ %i.k, %bb.e ]
  %i.m = shl nuw nsw i32 %.sext136, 8
  %i.n = add nuw nsw i32 %i.m, 53248
  %i.o = or i32 %i.n, %i.l
  %i.p = or i32 %i.o, 33554432
  br label %bb.av

bb.g:                                             ; preds = %bb.b
  %i.q = icmp samesign ult i32 %0, 187660
  br i1 %i.q, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.r = add nsw i32 %0, -10513                   ; 3 uses
  %i.s = urem i32 %i.r, 243                       ; 3 uses
  %i.t = udiv i32 %i.r, 243
  %i.u = icmp samesign ugt i32 %i.s, 19
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.v = add nuw nsw i32 %i.s, 13
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.w = zext nneg i32 %i.s to i64
  %i.x = getelementptr inbounds nuw i8, ptr @_ZL16bocu1TrailToByte, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1
  %i.z = sext i8 %i.y to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aa = phi i32 [ %i.v, %bb.i ], [ %i.z, %bb.j ]
  %.lhs.trunc137 = trunc nuw nsw i32 %i.t to i16
  %i.ab = urem i16 %.lhs.trunc137, 243            ; 3 uses
  %i.ac = udiv i32 %i.r, 59049
  %i.ad = icmp samesign ugt i16 %i.ab, 19
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %narrow171 = add nuw nsw i16 %i.ab, 13
  %i.ae = zext nneg i16 %narrow171 to i32
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.af = zext nneg i16 %i.ab to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @_ZL16bocu1TrailToByte, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = sext i8 %i.ah to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aj = phi i32 [ %i.ae, %bb.l ], [ %i.ai, %bb.m ]
  %i.ak = shl nsw i32 %i.aj, 8
  %i.al = shl nuw nsw i32 %i.ac, 16
  %i.am = add nuw nsw i32 %i.al, 16449536
  %i.an = or i32 %i.am, %i.aa
  %i.ao = or i32 %i.an, %i.ak
  %i.ap = or i32 %i.ao, 50331648
  br label %bb.av

bb.o:                                             ; preds = %bb.g
  %i.aq = add nsw i32 %0, -187660                 ; 3 uses
  %i.ar = urem i32 %i.aq, 243                     ; 3 uses
  %i.as = udiv i32 %i.aq, 243
  %i.at = icmp samesign ugt i32 %i.ar, 19
  br i1 %i.at, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.au = add nuw nsw i32 %i.ar, 13
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.av = zext nneg i32 %i.ar to i64
  %i.aw = getelementptr inbounds nuw i8, ptr @_ZL16bocu1TrailToByte, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = sext i8 %i.ax to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.az = phi i32 [ %i.au, %bb.p ], [ %i.ay, %bb.q ]
  %i.ba = urem i32 %i.as, 243                     ; 3 uses
  %i.bb = udiv i32 %i.aq, 59049                   ; 2 uses
  %i.bc = icmp samesign ugt i32 %i.ba, 19
  br i1 %i.bc, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bd = add nuw nsw i32 %i.ba, 13
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.be = zext nneg i32 %i.ba to i64
  %i.bf = getelementptr inbounds nuw i8, ptr @_ZL16bocu1TrailToByte, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = sext i8 %i.bg to i32
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bi = phi i32 [ %i.bd, %bb.s ], [ %i.bh, %bb.t ]
  %i.bj = shl nsw i32 %i.bi, 8
  %i.bk = icmp samesign ugt i32 %0, 1368639
  br i1 %i.bk, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bl = add nuw nsw i32 %i.bb, 13
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.bm = zext nneg i32 %i.bb to i64
  %i.bn = getelementptr inbounds nuw i8, ptr @_ZL16bocu1TrailToByte, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = sext i8 %i.bo to i32
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bq = phi i32 [ %i.bl, %bb.v ], [ %i.bp, %bb.w ]
  %i.br = shl i32 %i.bq, 16
  %i.bs = or i32 %i.az, %i.bj
  %i.bt = or i32 %i.bs, %i.br
  %i.bu = or i32 %i.bt, -33554432
  br label %bb.av

bb.y:                                             ; preds = %bb.a
  %i.bv = icmp samesign ugt i32 %0, -10514
  br i1 %i.bv, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.bw = trunc nsw i32 %0 to i16
  %.lhs.trunc138 = sub nuw nsw i16 -64, %i.bw     ; 2 uses
  %i.bx = urem i16 %.lhs.trunc138, 243            ; 2 uses
  %i.by = udiv i16 %.lhs.trunc138, 243
  %.zext143 = zext nneg i16 %i.by to i32
  %.not167 = icmp ne i16 %i.bx, 0                 ; 2 uses
  %narrow168 = sub nuw nsw i16 243, %i.bx
  %i.bz = sext i1 %.not167 to i32
  %.0105 = sub nsw i32 %i.bz, %.zext143
  %narrow169 = select i1 %.not167, i16 %narrow168, i16 0 ; 3 uses
  %i.ca = icmp samesign ugt i16 %narrow169, 19
  br i1 %i.ca, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %narrow170 = add nuw nsw i16 %narrow169, 13
  %i.cb = zext nneg i16 %narrow170 to i32
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.cc = zext nneg i16 %narrow169 to i64
  %i.cd = getelementptr inbounds nuw i8, ptr @_ZL16bocu1TrailToByte, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = sext i8 %i.ce to i32
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cg = phi i32 [ %i.cb, %bb.aa ], [ %i.cf, %bb.ab ]
  %i.ch = shl nsw i32 %.0105, 8
  %i.ci = add nsw i32 %i.ch, 20480
  %i.cj = or i32 %i.ci, %i.cg
  %i.ck = or i32 %i.cj, 33554432
  br label %bb.av

bb.ad:                                            ; preds = %bb.y
end_hunk_1
