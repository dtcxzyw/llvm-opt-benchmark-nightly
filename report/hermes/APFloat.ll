inline.NumInlined: 1817
inline.NumDeleted: 298
begin_hunk_0_@_ZN4llvh6detail9IEEEFloat7convertERKNS_12fltSemanticsENS_11APFloatBase12roundingModeEPb:bb.a
  br i1 %or.cond82.a, label %bb.h, label %.thread79

bb.h:                                             ; preds = %.thread
  %i.bf = load ptr, ptr %0, align 8, !tbaa !13
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !7
  %i.bi = add i32 %i.bh, -64
  %i.bj = icmp ult i32 %i.bi, -128
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8
  %.0.i66.a = select i1 %i.bj, ptr %i.bl, ptr %i.bk ; 3 uses
  %i.bm = sub nsw i32 0, %.15378                  ; 4 uses
  %i.bn = tail call noundef i32 @_ZN4llvh5APInt5tcLSBEPKmj(ptr noundef %.0.i66.a, i32 noundef range(i32 0, 67108864) %i.i) #25 ; 2 uses
  %.not.i.i = icmp ult i32 %i.bn, %i.bm
  br i1 %.not.i.i, label %bb.i, label %_ZN4llvhL10shiftRightEPmjj.exit

bb.i:                                             ; preds = %bb.h
  %i.bo = add nuw nsw i32 %i.bn, 1
  %i.bp = icmp eq i32 %i.bo, %i.bm
  br i1 %i.bp, label %_ZN4llvhL10shiftRightEPmjj.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bq = and i32 %i.h, -64
  %.not12.i.i = icmp ult i32 %i.bq, %i.bm
  br i1 %.not12.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = xor i32 %.15378, -1
  %i.bs = tail call noundef i32 @_ZN4llvh5APInt12tcExtractBitEPKmj(ptr noundef %.0.i66.a, i32 noundef %i.br) #25
  %.not13.i.i = icmp eq i32 %i.bs, 0
  br i1 %.not13.i.i, label %bb.l, label %_ZN4llvhL10shiftRightEPmjj.exit

bb.l:                                             ; preds = %bb.k, %bb.j
  br label %_ZN4llvhL10shiftRightEPmjj.exit

_ZN4llvhL10shiftRightEPmjj.exit:                  ; preds = %bb.h, %bb.i, %bb.k, %bb.l
  %.0.i.i = phi i32 [ 1, %bb.l ], [ 0, %bb.h ], [ 2, %bb.i ], [ 3, %bb.k ]
  tail call void @_ZN4llvh5APInt12tcShiftRightEPmjj(ptr noundef %.0.i66.a, i32 noundef range(i32 0, 67108864) %i.i, i32 noundef %i.bm) #25
  br label %.thread79

.thread79:                                        ; preds = %.thread, %bb.d, %_ZN4llvhL10shiftRightEPmjj.exit, %bb.g
  %.15377 = phi i32 [ %.15378, %_ZN4llvhL10shiftRightEPmjj.exit ], [ %.15378, %.thread ], [ %i.av, %bb.g ], [ %i.j, %bb.d ] ; 2 uses
  %.048 = phi i32 [ %.0.i.i, %_ZN4llvhL10shiftRightEPmjj.exit ], [ 0, %.thread ], [ 0, %bb.g ], [ 0, %bb.d ] ; 2 uses
  %i.bt = icmp samesign ugt i32 %i.e, %i.i
  br i1 %i.bt, label %bb.m, label %bb.r

bb.m:                                             ; preds = %.thread79
  %i.bu = shl nuw nsw i32 %i.e, 3
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bv) #23 ; 3 uses
  tail call void @_ZN4llvh5APInt5tcSetEPmmj(ptr noundef nonnull %i.bw, i64 noundef 0, i32 noundef %i.e) #25
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.by = load i8, ptr %i.bx, align 2             ; 2 uses
  %i.bz = and i8 %i.by, 6
  %spec.select.i.not.i67.a = icmp ne i8 %i.bz, 0
  %i.ca = and i8 %i.by, 7                         ; 2 uses
  %i.cb = icmp ne i8 %i.ca, 3
  %i.cc = and i1 %spec.select.i.not.i67.a, %i.cb
  %i.cd = icmp eq i8 %i.ca, 1
  %or.cond83.a = or i1 %i.cd, %i.cc
  br i1 %or.cond83.a, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ce = load ptr, ptr %0, align 8, !tbaa !13
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !7
  %i.ch = add i32 %i.cg, -64
  %i.ci = icmp ult i32 %i.ch, -128
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8
  %.0.i68.a = select i1 %i.ci, ptr %i.ck, ptr %i.cj
  tail call void @_ZN4llvh5APInt8tcAssignEPmPKmj(ptr noundef nonnull %i.bw, ptr noundef %.0.i68.a, i32 noundef %i.i) #25
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.cl = load ptr, ptr %0, align 8, !tbaa !13
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !7
  %i.co = add i32 %i.cn, -64
  %i.cp = icmp ult i32 %i.co, -128
  br i1 %i.cp, label %bb.p, label %_ZN4llvh6detail9IEEEFloat15freeSignificandEv.exit

bb.p:                                             ; preds = %bb.o
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !18 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %_ZN4llvh6detail9IEEEFloat15freeSignificandEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_ZdaPv(ptr noundef nonnull %i.cr) #24
  br label %_ZN4llvh6detail9IEEEFloat15freeSignificandEv.exit

_ZN4llvh6detail9IEEEFloat15freeSignificandEv.exit: ; preds = %bb.o, %bb.p, %bb.q
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bw, ptr %i.ct, align 8, !tbaa !18
  br label %bb.w

bb.r:                                             ; preds = %.thread79
  %i.cu = icmp eq i32 %i.e, 1
  %i.cv = icmp ne i32 %i.i, 1
  %or.cond3 = and i1 %i.cu, %i.cv
  br i1 %or.cond3, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.cx = load i8, ptr %i.cw, align 2             ; 2 uses
  %i.cy = and i8 %i.cx, 6
  %spec.select.i.not.i69 = icmp ne i8 %i.cy, 0
  %i.cz = and i8 %i.cx, 7                         ; 2 uses
  %i.da = icmp ne i8 %i.cz, 3
  %i.db = and i1 %spec.select.i.not.i69, %i.da
  %i.dc = icmp eq i8 %i.cz, 1
  %or.cond84 = or i1 %i.dc, %i.db
  %.pre = load ptr, ptr %0, align 8, !tbaa !13
  %i.dd = getelementptr inbounds nuw i8, ptr %.pre, i64 4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !7
  %i.df = add i32 %i.de, -64                      ; 2 uses
  br i1 %or.cond84, label %bb.t, label %._crit_edge

bb.t:                                             ; preds = %bb.s
  %i.dg = icmp ult i32 %i.df, -128
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8
  %.0.i70 = select i1 %i.dg, ptr %i.di, ptr %i.dh
  %i.dj = load i64, ptr %.0.i70, align 8, !tbaa !22
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.s, %bb.t
  %.0 = phi i64 [ %i.dj, %bb.t ], [ 0, %bb.s ]
  %i.dk = icmp ult i32 %i.df, -128
  br i1 %i.dk, label %bb.u, label %_ZN4llvh6detail9IEEEFloat15freeSignificandEv.exit71

bb.u:                                             ; preds = %._crit_edge
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !18 ; 2 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %_ZN4llvh6detail9IEEEFloat15freeSignificandEv.exit71, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @_ZdaPv(ptr noundef nonnull %i.dm) #24
  br label %_ZN4llvh6detail9IEEEFloat15freeSignificandEv.exit71

_ZN4llvh6detail9IEEEFloat15freeSignificandEv.exit71: ; preds = %._crit_edge, %bb.u, %bb.v
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.0, ptr %i.do, align 8, !tbaa !18
  br label %bb.w

bb.w:                                             ; preds = %bb.r, %_ZN4llvh6detail9IEEEFloat15freeSignificandEv.exit71, %_ZN4llvh6detail9IEEEFloat15freeSignificandEv.exit
  store ptr %1, ptr %0, align 8, !tbaa !13
  %i.dp = icmp sgt i32 %.15377, 0
  br i1 %i.dp, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.dr = load i8, ptr %i.dq, align 2             ; 2 uses
  %i.ds = and i8 %i.dr, 6
  %spec.select.i.not.i72.a = icmp ne i8 %i.ds, 0
  %i.dt = and i8 %i.dr, 7                         ; 2 uses
  %i.du = icmp ne i8 %i.dt, 3
  %i.dv = and i1 %spec.select.i.not.i72.a, %i.du
  %i.dw = icmp eq i8 %i.dt, 1
  %or.cond85 = or i1 %i.dw, %i.dv
  br i1 %or.cond85, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dx = load i32, ptr %i.b, align 4, !tbaa !7
  %i.dy = add i32 %i.dx, -64
  %i.dz = icmp ult i32 %i.dy, -128
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8
  %.0.i73 = select i1 %i.dz, ptr %i.eb, ptr %i.ea
  tail call void @_ZN4llvh5APInt11tcShiftLeftEPmjj(ptr noundef %.0.i73, i32 noundef %i.e, i32 noundef %.15377) #25
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.w
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ed = load i8, ptr %i.ec, align 2             ; 2 uses
  %i.ee = and i8 %i.ed, 6
  %spec.select.i.not.i74 = icmp ne i8 %i.ee, 0
  %i.ef = and i8 %i.ed, 7                         ; 2 uses
  %i.eg = icmp ne i8 %i.ef, 3
  %i.eh = and i1 %spec.select.i.not.i74, %i.eg
  br i1 %i.eh, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ei = tail call noundef i32 @_ZN4llvh6detail9IEEEFloat9normalizeENS_11APFloatBase12roundingModeENS_12lostFractionE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %2, i32 noundef %.048) ; 2 uses
  %i.ej = icmp ne i32 %i.ei, 0
  %i.ek = zext i1 %i.ej to i8
  store i8 %i.ek, ptr %3, align 1, !tbaa !35
  br label %bb.af

bb.ab:                                            ; preds = %bb.z
  %i.el = icmp eq i8 %i.ef, 1
  br i1 %i.el, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.em = icmp ne i32 %.048, 0
  %i.en = or i1 %.050, %i.em
  %i.eo = zext i1 %i.en to i8
  store i8 %i.eo, ptr %3, align 1, !tbaa !35
  br i1 %.050, label %bb.af, label %4

4:                                                ; preds = %bb.ac
  %5 = load ptr, ptr %0, align 8, !tbaa !13
  %6 = icmp eq ptr %5, @_ZN4llvhL20semX87DoubleExtendedE
  br i1 %6, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %4
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8
  tail call void @_ZN4llvh5APInt8tcSetBitEPmj(ptr noundef %i.eq, i32 noundef 63) #25
  br label %bb.af

bb.ae:                                            ; preds = %bb.ab
  store i8 0, ptr %3, align 1, !tbaa !35
  br label %bb.af

bb.af:                                            ; preds = %bb.ac, %4, %bb.ad, %bb.ae, %bb.aa
  %.051 = phi i32 [ %i.ei, %bb.aa ], [ 0, %bb.ae ], [ 0, %bb.ad ], [ 0, %4 ], [ 0, %bb.ac ]
  ret i32 %.051
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 4) i32 @_ZN4llvh6detail9IEEEFloat21shiftSignificandRightEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !19
  %i.c = trunc i32 %1 to i16
  %i.d = add i16 %i.b, %i.c
  store i16 %i.d, ptr %i.a, align 8, !tbaa !19
  %i.e = load ptr, ptr %0, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !7    ; 2 uses
  %i.h = add i32 %i.g, -64
  %i.i = icmp ult i32 %i.h, -128
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  %.0.i = select i1 %i.i, ptr %i.k, ptr %i.j      ; 3 uses
  %i.l = add i32 %i.g, 64                         ; 2 uses
  %i.m = lshr i32 %i.l, 6                         ; 2 uses
  %i.n = tail call noundef i32 @_ZN4llvh5APInt5tcLSBEPKmj(ptr noundef %.0.i, i32 noundef range(i32 0, 67108864) %i.m) #25 ; 2 uses
  %.not.i.i = icmp ugt i32 %1, %i.n
  br i1 %.not.i.i, label %bb.b, label %_ZN4llvhL10shiftRightEPmjj.exit

bb.b:                                             ; preds = %bb.a
  %i.o = add nuw i32 %i.n, 1
  %i.p = icmp eq i32 %1, %i.o
  br i1 %i.p, label %_ZN4llvhL10shiftRightEPmjj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = and i32 %i.l, -64
  %.not12.i.i = icmp ugt i32 %1, %i.q
  br i1 %.not12.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = add i32 %1, -1
  %i.s = tail call noundef i32 @_ZN4llvh5APInt12tcExtractBitEPKmj(ptr noundef %.0.i, i32 noundef %i.r) #25
  %.not13.i.i = icmp eq i32 %i.s, 0
  br i1 %.not13.i.i, label %bb.e, label %_ZN4llvhL10shiftRightEPmjj.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %_ZN4llvhL10shiftRightEPmjj.exit

_ZN4llvhL10shiftRightEPmjj.exit:                  ; preds = %bb.a, %bb.b, %bb.d, %bb.e
  %.0.i.i = phi i32 [ 1, %bb.e ], [ 0, %bb.a ], [ 2, %bb.b ], [ 3, %bb.d ]
  tail call void @_ZN4llvh5APInt12tcShiftRightEPmjj(ptr noundef %.0.i, i32 noundef range(i32 0, 67108864) %i.m, i32 noundef %1) #25
  ret i32 %.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 4) i32 @_ZN4llvh6detail9IEEEFloat24addOrSubtractSignificandERKS1_b(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %2) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %"class.llvh::detail::IEEEFloat", align 8 ; 19 uses
  %4 = alloca %"class.llvh::detail::IEEEFloat", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 3 uses
  %i.b = load i8, ptr %i.a, align 2
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.d = load i8, ptr %i.c, align 2
  %i.e = xor i8 %i.d, %i.b
  %i.f = and i8 %i.e, 8
  %i.g = icmp eq i8 %i.f, 0
  %.not = xor i1 %2, %i.g
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.i = load i16, ptr %i.h, align 8, !tbaa !19   ; 3 uses
  %i.j = sext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i16, ptr %i.k, align 8, !tbaa !19   ; 2 uses
  %i.m = sext i16 %i.l to i32
  %i.n = sub nsw i32 %i.j, %i.m                   ; 16 uses
  br i1 %.not, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZN4llvh6detail9IEEEFloatC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.o = icmp eq i16 %i.i, %i.l
  br i1 %i.o, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = load i16, ptr %i.h, align 8, !tbaa !19
  %i.q = sext i16 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = load i16, ptr %i.r, align 8, !tbaa !19
  %i.t = sext i16 %i.s to i32
  %i.u = sub nsw i32 %i.q, %i.t                   ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %0, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !7    ; 2 uses
  %i.z = add i32 %i.y, -64
  %i.aa = icmp ult i32 %i.z, -128
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %.0.i.i.i = select i1 %i.aa, ptr %i.ac, ptr %i.ab
  %i.ad = load ptr, ptr %3, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !7
  %i.ag = add i32 %i.af, -64
  %i.ah = icmp ult i32 %i.ag, -128
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %.0.i.i8.i = select i1 %i.ah, ptr %i.aj, ptr %i.ai
  %i.ak = add i32 %i.y, 64
  %i.al = lshr i32 %i.ak, 6
  %i.am = call noundef i32 @_ZN4llvh5APInt9tcCompareEPKmS2_j(ptr noundef %.0.i.i.i, ptr noundef %.0.i.i8.i, i32 noundef %i.al) #25
  br label %bb.p

bb.e:                                             ; preds = %bb.b
  %i.an = icmp sgt i32 %i.n, 0
  br i1 %i.an, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.ao = add nsw i32 %i.n, -1                    ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 8, !tbaa !19
  %i.ar = trunc nuw i32 %i.ao to i16
  %i.as = add i16 %i.aq, %i.ar
  store i16 %i.as, ptr %i.ap, align 8, !tbaa !19
  %i.at = load ptr, ptr %3, align 8, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !7  ; 2 uses
  %i.aw = add i32 %i.av, -64
  %i.ax = icmp ult i32 %i.aw, -128
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8
  %.0.i.i = select i1 %i.ax, ptr %i.az, ptr %i.ay ; 3 uses
  %i.ba = add i32 %i.av, 64                       ; 2 uses
  %i.bb = lshr i32 %i.ba, 6                       ; 2 uses
  %i.bc = call noundef i32 @_ZN4llvh5APInt5tcLSBEPKmj(ptr noundef %.0.i.i, i32 noundef range(i32 0, 67108864) %i.bb) #25 ; 2 uses
  %.not.i.i.i = icmp ugt i32 %i.ao, %i.bc
  br i1 %.not.i.i.i, label %bb.g, label %.thread59

bb.g:                                             ; preds = %bb.f
  %i.bd = add nuw nsw i32 %i.bc, 2
  %i.be = icmp eq i32 %i.n, %i.bd
  br i1 %i.be, label %.thread59, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = and i32 %i.ba, -64
  %.not12.i.i.i = icmp ugt i32 %i.ao, %i.bf
  br i1 %.not12.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = add nsw i32 %i.n, -2
  %i.bh = call noundef i32 @_ZN4llvh5APInt12tcExtractBitEPKmj(ptr noundef %.0.i.i, i32 noundef %i.bg) #25
  %.not13.i.i.i = icmp eq i32 %i.bh, 0
  br i1 %.not13.i.i.i, label %bb.j, label %.thread59

bb.j:                                             ; preds = %bb.i, %bb.h
  br label %.thread59

.thread59:                                        ; preds = %bb.j, %bb.i, %bb.g, %bb.f
  %.0.i.i.i23 = phi i32 [ 1, %bb.j ], [ 0, %bb.f ], [ 2, %bb.g ], [ 3, %bb.i ]
  call void @_ZN4llvh5APInt12tcShiftRightEPmjj(ptr noundef %.0.i.i, i32 noundef range(i32 0, 67108864) %i.bb, i32 noundef %i.ao) #25
  %i.bi = load ptr, ptr %0, align 8, !tbaa !13
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !7  ; 2 uses
  %i.bl = add i32 %i.bk, 64
  %i.bm = lshr i32 %i.bl, 6
  %i.bn = add i32 %i.bk, -64
  %i.bo = icmp ult i32 %i.bn, -128
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8
  %.0.i.i24 = select i1 %i.bo, ptr %i.bq, ptr %i.bp
  call void @_ZN4llvh5APInt11tcShiftLeftEPmjj(ptr noundef %.0.i.i24, i32 noundef %i.bm, i32 noundef 1) #25
  %i.br = load i16, ptr %i.h, align 8, !tbaa !19
  %i.bs = add i16 %i.br, -1
  store i16 %i.bs, ptr %i.h, align 8, !tbaa !19
  br label %bb.r

bb.k:                                             ; preds = %bb.e
  %i.bt = xor i32 %i.n, -1                        ; 4 uses
  %i.bu = load i16, ptr %i.h, align 8, !tbaa !19
  %i.bv = trunc i32 %i.bt to i16
  %i.bw = add i16 %i.bu, %i.bv
  store i16 %i.bw, ptr %i.h, align 8, !tbaa !19
  %i.bx = load ptr, ptr %0, align 8, !tbaa !13
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !7  ; 2 uses
  %i.ca = add i32 %i.bz, -64
  %i.cb = icmp ult i32 %i.ca, -128
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8
  %.0.i.i25 = select i1 %i.cb, ptr %i.cd, ptr %i.cc ; 3 uses
  %i.ce = add i32 %i.bz, 64                       ; 2 uses
  %i.cf = lshr i32 %i.ce, 6                       ; 2 uses
  %i.cg = call noundef i32 @_ZN4llvh5APInt5tcLSBEPKmj(ptr noundef %.0.i.i25, i32 noundef range(i32 0, 67108864) %i.cf) #25 ; 2 uses
  %.not.i.i.i26 = icmp ult i32 %i.cg, %i.bt
  br i1 %.not.i.i.i26, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.ch = sub nuw i32 -2, %i.cg
  %i.ci = icmp eq i32 %i.ch, %i.n
  br i1 %i.ci, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cj = and i32 %i.ce, -64
end_hunk_0
