Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ucnv_u8?download=true
inline.NumInlined: 14
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZL33ucnv_toUnicode_UTF8_OFFSETS_LOGICP23UConverterToUnicodeArgsP10UErrorCode:bb.a
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dg = trunc nuw i64 %indvars.iv.next to i32
  %i.dh = icmp sgt i32 %.0.fr, %i.dg
  br i1 %i.dh, label %.lr.ph.split.split.split.us, label %._crit_edge, !llvm.loop !54

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split, %bb.s
  %indvars.iv269 = phi i64 [ %indvars.iv.next270, %bb.s ], [ %i.bj, %.lr.ph.split.split ] ; 7 uses
  %.1105139 = phi i32 [ %i.ec, %bb.s ], [ %.0104, %.lr.ph.split.split ] ; 6 uses
  %.2118138 = phi ptr [ %i.ed, %bb.s ], [ %.1117, %.lr.ph.split.split ] ; 6 uses
  %i.di = icmp ult ptr %.2118138, %i.j
  br i1 %i.di, label %bb.q, label %.split.us.loopexit243

bb.q:                                             ; preds = %.lr.ph.split.split.split
  %i.dj = load i8, ptr %.2118138, align 1, !tbaa !27 ; 5 uses
  %i.dk = zext i8 %i.dj to i32
  %i.dl = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv269
  store i8 %i.dj, ptr %i.dl, align 1, !tbaa !27
  %i.dm = icmp samesign ugt i64 %indvars.iv269, 1
  br i1 %i.dm, label %.split294, label %_ZN6icu_784UTF812isValidTrailEihii.exit

.split294:                                        ; preds = %bb.q
  %i.dn = icmp sgt i8 %i.dj, -65
  br i1 %i.dn, label %.thread295, label %bb.s

.thread295:                                       ; preds = %.split294
  %i.do = trunc nuw nsw i64 %indvars.iv269 to i32
  br label %._crit_edge

_ZN6icu_784UTF812isValidTrailEihii.exit:          ; preds = %bb.q
  %i.dp = lshr i8 %i.dj, 4
  %i.dq = zext nneg i8 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr @.str.1, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !27
  %i.dt = and i32 %.1105139, 7
  %i.du = shl nuw nsw i32 1, %i.dt
  %i.dv = trunc nuw i32 %i.du to i8
  %i.dw = and i8 %i.ds, %i.dv
  %i.dx = icmp eq i8 %i.dw, 0
  br i1 %i.dx, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN6icu_784UTF812isValidTrailEihii.exit
  %i.dy = icmp eq i64 %indvars.iv269, 1
  %i.dz = icmp eq i32 %.1105139, 237
  %or.cond3 = select i1 %i.dy, i1 %i.dz, i1 false
  %i.ea = icmp slt i8 %i.dj, -64
  %or.cond131 = and i1 %or.cond3, %i.ea
  br i1 %or.cond131, label %bb.s, label %._crit_edge.loopexit298.split.loop.exit

bb.s:                                             ; preds = %.split294, %bb.r, %_ZN6icu_784UTF812isValidTrailEihii.exit
  %i.eb = shl i32 %.1105139, 6
  %i.ec = add i32 %i.eb, %i.dk                    ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.2118138, i64 1 ; 2 uses
  %indvars.iv.next270 = add nuw nsw i64 %indvars.iv269, 1 ; 2 uses
  %i.ee = trunc nuw i64 %indvars.iv.next270 to i32
  %i.ef = icmp sgt i32 %.0.fr, %i.ee
  br i1 %i.ef, label %.lr.ph.split.split.split, label %._crit_edge, !llvm.loop !54

.split.us.loopexit238:                            ; preds = %.lr.ph.split.split.us.1, %.lr.ph.split.split.us
  %indvars.iv272.lcssa = phi i64 [ %i.bj, %.lr.ph.split.split.us ], [ %indvars.iv.next273, %.lr.ph.split.split.us.1 ]
  %.1105139.us156.lcssa = phi i32 [ %.0104, %.lr.ph.split.split.us ], [ %i.cd, %.lr.ph.split.split.us.1 ]
  %.2118138.us157.lcssa = phi ptr [ %.1117, %.lr.ph.split.split.us ], [ %i.ce, %.lr.ph.split.split.us.1 ]
  %i.eg = trunc nuw nsw i64 %indvars.iv272.lcssa to i32
  br label %.split.us

.split.us.loopexit243:                            ; preds = %.lr.ph.split.split.split
  %i.eh = trunc nuw nsw i64 %indvars.iv269 to i32
  br label %.split.us

.split.us.loopexit248:                            ; preds = %.lr.ph.split.split.split.us
  %i.ei = trunc nuw nsw i64 %indvars.iv to i32
  br label %.split.us

.split.us:                                        ; preds = %.lr.ph.split.us.split.us, %.lr.ph.split.us.split, %.split.us.loopexit248, %.split.us.loopexit243, %.split.us.loopexit238
  %.us-phi = phi ptr [ %.2118138.us157.lcssa, %.split.us.loopexit238 ], [ %.2118138.us185, %.split.us.loopexit248 ], [ %.1117, %.lr.ph.split.us.split ], [ %.2118138, %.split.us.loopexit243 ], [ %.1117, %.lr.ph.split.us.split.us ]
  %.us-phi147 = phi i32 [ %.1105139.us156.lcssa, %.split.us.loopexit238 ], [ %.1105139.us184, %.split.us.loopexit248 ], [ %.0104, %.lr.ph.split.us.split ], [ %.1105139, %.split.us.loopexit243 ], [ %.0104, %.lr.ph.split.us.split.us ]
  %.us-phi148 = phi i32 [ %i.eg, %.split.us.loopexit238 ], [ %i.ei, %.split.us.loopexit248 ], [ %.0103, %.lr.ph.split.us.split ], [ %i.eh, %.split.us.loopexit243 ], [ %.0103, %.lr.ph.split.us.split.us ]
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 %.us-phi147, ptr %i.ej, align 8, !tbaa !41
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 %.0.fr, ptr %i.ek, align 4, !tbaa !40
  %i.el = trunc i32 %.us-phi148 to i8
  store i8 %i.el, ptr %i.p, align 8, !tbaa !39
  br label %.loopexit

._crit_edge.loopexit298.split.loop.exit:          ; preds = %bb.r
  %i.em = trunc nuw nsw i64 %indvars.iv269 to i32
  br label %._crit_edge

._crit_edge.loopexit302.split.loop.exit:          ; preds = %.split293
  %i.en = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge.loopexit302.split.loop.exit321:       ; preds = %_ZN6icu_784UTF812isValidTrailEihii.exit.us186
  %i.eo = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.p, %bb.s, %bb.m, %bb.n, %bb.l, %._crit_edge.loopexit302.split.loop.exit, %._crit_edge.loopexit302.split.loop.exit321, %._crit_edge.loopexit298.split.loop.exit, %.thread295, %.thread, %_ZN6icu_784UTF812isValidTrailEihii.exit.us.us, %bb.i, %bb.j, %_ZN6icu_784UTF812isValidTrailEihii.exit.us, %bb.h
  %.2118.lcssa = phi ptr [ %.1117, %bb.h ], [ %.1117, %_ZN6icu_784UTF812isValidTrailEihii.exit.us.us ], [ %.2118138.us157.lcssa382, %.thread ], [ %.2118138, %.thread295 ], [ %.1117, %_ZN6icu_784UTF812isValidTrailEihii.exit.us ], [ %i.bh, %bb.j ], [ %i.ba, %bb.i ], [ %i.cn, %bb.n ], [ %.1117, %bb.l ], [ %i.ed, %bb.s ], [ %.2118138, %._crit_edge.loopexit298.split.loop.exit ], [ %.2118138.us185, %._crit_edge.loopexit302.split.loop.exit ], [ %.2118138.us185, %._crit_edge.loopexit302.split.loop.exit321 ], [ %i.ce, %bb.m ], [ %i.df, %bb.p ] ; 2 uses
  %.1105.lcssa = phi i32 [ %.0104, %bb.h ], [ %.0104, %_ZN6icu_784UTF812isValidTrailEihii.exit.us.us ], [ %.1105139.us156.lcssa385, %.thread ], [ %.1105139, %.thread295 ], [ %.0104, %_ZN6icu_784UTF812isValidTrailEihii.exit.us ], [ %i.bg, %bb.j ], [ %i.az, %bb.i ], [ %i.cm, %bb.n ], [ %.0104, %bb.l ], [ %i.ec, %bb.s ], [ %.1105139, %._crit_edge.loopexit298.split.loop.exit ], [ %.1105139.us184, %._crit_edge.loopexit302.split.loop.exit ], [ %.1105139.us184, %._crit_edge.loopexit302.split.loop.exit321 ], [ %i.cd, %bb.m ], [ %i.de, %bb.p ]
  %.1.lcssa = phi i32 [ %.0103, %bb.h ], [ %.0103, %_ZN6icu_784UTF812isValidTrailEihii.exit.us.us ], [ %i.bq, %.thread ], [ %i.do, %.thread295 ], [ %.0103, %_ZN6icu_784UTF812isValidTrailEihii.exit.us ], [ 2, %bb.j ], [ 2, %bb.i ], [ 3, %bb.m ], [ %.0103, %bb.l ], [ %.0.fr, %bb.s ], [ %i.em, %._crit_edge.loopexit298.split.loop.exit ], [ %i.en, %._crit_edge.loopexit302.split.loop.exit ], [ %i.eo, %._crit_edge.loopexit302.split.loop.exit321 ], [ 3, %bb.n ], [ %.0.fr, %bb.p ] ; 3 uses
  %i.ep = icmp ne i32 %.1.lcssa, %.0.fr
  %i.eq = icmp sgt i32 %.1.lcssa, 3
  %or.cond5.not = and i1 %i.o, %i.eq
  %or.cond134 = or i1 %i.ep, %or.cond5.not
  br i1 %or.cond134, label %bb.z, label %bb.t

bb.t:                                             ; preds = %._crit_edge
  %i.er = sext i32 %.0.fr to i64
  %i.es = getelementptr inbounds [4 x i8], ptr @_ZL15offsetsFromUTF8, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !32
  %i.eu = sub i32 %.1105.lcssa, %i.et             ; 4 uses
  %i.ev = icmp ult i32 %i.eu, 65536
  br i1 %i.ev, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ew = trunc nuw i32 %i.eu to i16
  %i.ex = getelementptr inbounds nuw i8, ptr %.1112, i64 2
  store i16 %i.ew, ptr %.1112, align 2, !tbaa !26
  %i.ey = getelementptr inbounds nuw i8, ptr %.1109, i64 4
  store i32 %.1107, ptr %.1109, align 4, !tbaa !32
  br label %bb.y

bb.v:                                             ; preds = %bb.t
  %i.ez = lshr i32 %i.eu, 10
  %i.fa = trunc i32 %i.ez to i16
  %i.fb = add i16 %i.fa, -10304
  %i.fc = getelementptr inbounds nuw i8, ptr %.1112, i64 2 ; 3 uses
  store i16 %i.fb, ptr %.1112, align 2, !tbaa !26
  %i.fd = getelementptr inbounds nuw i8, ptr %.1109, i64 4 ; 2 uses
  store i32 %.1107, ptr %.1109, align 4, !tbaa !32
  %i.fe = trunc i32 %i.eu to i16
  %i.ff = and i16 %i.fe, 1023
  %i.fg = or disjoint i16 %i.ff, -9216            ; 2 uses
  %i.fh = icmp ult ptr %i.fc, %i.l
  br i1 %i.fh, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fi = getelementptr inbounds nuw i8, ptr %.1112, i64 4
  store i16 %i.fg, ptr %i.fc, align 2, !tbaa !26
  %i.fj = getelementptr inbounds nuw i8, ptr %.1109, i64 8
  store i32 %.1107, ptr %i.fd, align 4, !tbaa !32
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.fk = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store i16 %i.fg, ptr %i.fk, align 8, !tbaa !26
  %i.fl = getelementptr inbounds nuw i8, ptr %i.b, i64 93
  store i8 1, ptr %i.fl, align 1, !tbaa !42
  store i32 15, ptr %1, align 4, !tbaa !30
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %bb.u
  %.2113 = phi ptr [ %i.ex, %bb.u ], [ %i.fi, %bb.w ], [ %i.fc, %bb.x ]
  %.2110 = phi ptr [ %i.ey, %bb.u ], [ %i.fj, %bb.w ], [ %i.fd, %bb.x ]
  %i.fm = add nsw i32 %.0.fr, %.1107
  br label %.preheader, !llvm.loop !53

.preheader:                                       ; preds = %bb.a, %bb.y
  %.0116.ph = phi ptr [ %.2118.lcssa, %bb.y ], [ %i.d, %bb.a ]
  %.0111.ph = phi ptr [ %.2113, %bb.y ], [ %i.f, %bb.a ]
  %.0108.ph = phi ptr [ %.2110, %bb.y ], [ %i.h, %bb.a ]
  %.0106.ph = phi i32 [ %i.fm, %bb.y ], [ 0, %bb.a ]
  br label %bb.c

bb.z:                                             ; preds = %._crit_edge
  %i.fn = trunc i32 %.1.lcssa to i8
  store i8 %i.fn, ptr %i.p, align 8, !tbaa !39
  store i32 12, ptr %1, align 4, !tbaa !30
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.z, %.split.us
  %.4120 = phi ptr [ %.us-phi, %.split.us ], [ %.2118.lcssa, %bb.z ], [ %.0116, %bb.c ] ; 2 uses
  %.4115 = phi ptr [ %.1112, %.split.us ], [ %.1112, %bb.z ], [ %.0111, %bb.c ] ; 2 uses
  %.4 = phi ptr [ %.1109, %.split.us ], [ %.1109, %bb.z ], [ %.0108, %bb.c ]
  %i.fo = icmp uge ptr %.4120, %i.j
  %.not128 = icmp ult ptr %.4115, %i.l
  %or.cond132 = select i1 %i.fo, i1 true, i1 %.not128
  br i1 %or.cond132, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %.loopexit
  %i.fp = load i32, ptr %1, align 4, !tbaa !30
  %i.fq = icmp sgt i32 %i.fp, 0
  br i1 %i.fq, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 15, ptr %1, align 4, !tbaa !30
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %.loopexit
  store ptr %.4115, ptr %i.e, align 8, !tbaa !36
  store ptr %.4120, ptr %i.c, align 8, !tbaa !35
  store ptr %.4, ptr %i.g, align 8, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef range(i32 -12582912, 1572864) i32 @_ZL22ucnv_getNextUChar_UTF8P23UConverterToUnicodeArgsP10UErrorCode(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 7 uses
  %2 = ptrtoaddr ptr %i.b to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 17 uses
  %i.e = ptrtoaddr ptr %i.d to i64                ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !37   ; 2 uses
  %.not = icmp ult ptr %i.d, %i.g
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 8, ptr %1, align 4, !tbaa !30
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 12 uses
  %i.i = load i8, ptr %i.d, align 1, !tbaa !27    ; 9 uses
  %i.j = icmp sgt i8 %i.i, -1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %i.h, ptr %i.c, align 8, !tbaa !35
  %i.k = zext nneg i8 %i.i to i32
  br label %bb.u

bb.e:                                             ; preds = %bb.c
  %i.l = zext i8 %i.i to i32                      ; 4 uses
  %i.m = add nsw i8 %i.i, 62
  %i.n = icmp ult i8 %i.m, 51
  br i1 %i.n, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.o = icmp samesign ugt i8 %i.i, -33           ; 2 uses
  %i.p = zext i1 %i.o to i32
  %i.q = icmp samesign ugt i8 %i.i, -17           ; 2 uses
  %i.r = zext i1 %i.q to i32
  %i.s = add nuw nsw i32 %i.p, %i.r
  %.fr149 = freeze i32 %i.s                       ; 2 uses
  %i.t = add nuw nsw i32 %.fr149, 1               ; 2 uses
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.u
  %i.w = icmp ugt ptr %i.v, %i.g
  br i1 %i.w, label %bb.g, label %bb.k

.thread:                                          ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  store i8 %i.i, ptr %i.x, align 1, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i8 1, ptr %i.y, align 8, !tbaa !39
  store i32 12, ptr %1, align 4, !tbaa !30
  store ptr %i.h, ptr %i.c, align 8, !tbaa !35
  br label %bb.u

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 4 uses
  store i8 %i.i, ptr %i.z, align 1, !tbaa !27
  store i32 11, ptr %1, align 4, !tbaa !30
  %i.aa = load ptr, ptr %i.f, align 8, !tbaa !37
  %i.ab = icmp ult ptr %i.h, %i.aa
  br i1 %i.ab, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.g
  %i.ac = icmp eq i32 %.fr149, 0
  %i.ad = and i8 %i.i, 7
  %i.ae = shl nuw i8 1, %i.ad
  %i.af = and i32 %i.l, 15
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @.str, i64 %i.ag
  br i1 %i.ac, label %_ZN6icu_784UTF812isValidTrailEihii.exit.us, label %.lr.ph.split

_ZN6icu_784UTF812isValidTrailEihii.exit.us:       ; preds = %.lr.ph, %bb.h
  %.089130.us = phi i8 [ %i.ak, %bb.h ], [ 1, %.lr.ph ] ; 3 uses
  %.093129.us = phi ptr [ %i.an, %bb.h ], [ %i.h, %.lr.ph ] ; 3 uses
  %i.ai = load i8, ptr %.093129.us, align 1, !tbaa !27 ; 2 uses
  %i.aj = icmp sgt i8 %i.ai, -65
  br i1 %i.aj, label %.thread108, label %bb.h

bb.h:                                             ; preds = %_ZN6icu_784UTF812isValidTrailEihii.exit.us
  %i.ak = add i8 %.089130.us, 1                   ; 2 uses
  %i.al = sext i8 %.089130.us to i64
  %i.am = getelementptr inbounds i8, ptr %i.z, i64 %i.al
  store i8 %i.ai, ptr %i.am, align 1, !tbaa !27
  %i.an = getelementptr inbounds nuw i8, ptr %.093129.us, i64 1 ; 3 uses
  %i.ao = load ptr, ptr %i.f, align 8, !tbaa !37
  %i.ap = icmp ult ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZN6icu_784UTF812isValidTrailEihii.exit.us, label %.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.aq = xor i1 %i.o, %i.q
  %.fr148 = freeze i1 %i.aq
  br i1 %.fr148, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.i
  %.089130.us135 = phi i8 [ %i.az, %bb.i ], [ 1, %.lr.ph.split ] ; 5 uses
  %.093129.us136 = phi ptr [ %i.bc, %bb.i ], [ %i.h, %.lr.ph.split ] ; 4 uses
  %i.ar = load i8, ptr %.093129.us136, align 1, !tbaa !27 ; 3 uses
  %i.as = icmp sgt i8 %.089130.us135, 1
  br i1 %i.as, label %.split, label %_ZN6icu_784UTF812isValidTrailEihii.exit.us137

.split:                                           ; preds = %.lr.ph.split.split.us
  %i.at = icmp sgt i8 %i.ar, -65
  br i1 %i.at, label %.thread108, label %bb.i

_ZN6icu_784UTF812isValidTrailEihii.exit.us137:    ; preds = %.lr.ph.split.split.us
  %i.au = load i8, ptr %i.ah, align 1, !tbaa !27
  %i.av = lshr i8 %i.ar, 5
  %i.aw = shl nuw i8 1, %i.av
  %i.ax = and i8 %i.au, %i.aw
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %.thread108, label %bb.i

bb.i:                                             ; preds = %.split, %_ZN6icu_784UTF812isValidTrailEihii.exit.us137
  %i.az = add i8 %.089130.us135, 1                ; 2 uses
  %i.ba = sext i8 %.089130.us135 to i64
  %i.bb = getelementptr inbounds i8, ptr %i.z, i64 %i.ba
  store i8 %i.ar, ptr %i.bb, align 1, !tbaa !27
  %i.bc = getelementptr inbounds nuw i8, ptr %.093129.us136, i64 1 ; 3 uses
  %i.bd = load ptr, ptr %i.f, align 8, !tbaa !37
  %i.be = icmp ult ptr %i.bc, %i.bd
  br i1 %i.be, label %.lr.ph.split.split.us, label %.loopexit

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.j
  %.089130 = phi i8 [ %i.bo, %bb.j ], [ 1, %.lr.ph.split ] ; 5 uses
  %.093129 = phi ptr [ %i.br, %bb.j ], [ %i.h, %.lr.ph.split ] ; 4 uses
  %i.bf = load i8, ptr %.093129, align 1, !tbaa !27 ; 3 uses
  %i.bg = icmp sgt i8 %.089130, 1
  br i1 %i.bg, label %.split181, label %_ZN6icu_784UTF812isValidTrailEihii.exit

.split181:                                        ; preds = %.lr.ph.split.split
  %i.bh = icmp sgt i8 %i.bf, -65
  br i1 %i.bh, label %.thread108, label %bb.j

_ZN6icu_784UTF812isValidTrailEihii.exit:          ; preds = %.lr.ph.split.split
  %i.bi = lshr i8 %i.bf, 4
  %i.bj = zext nneg i8 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr @.str.1, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !27
  %i.bm = and i8 %i.bl, %i.ae
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %.thread108, label %bb.j

.thread108:                                       ; preds = %_ZN6icu_784UTF812isValidTrailEihii.exit, %.split181, %_ZN6icu_784UTF812isValidTrailEihii.exit.us137, %.split, %_ZN6icu_784UTF812isValidTrailEihii.exit.us
  %.us-phi = phi ptr [ %.093129.us136, %_ZN6icu_784UTF812isValidTrailEihii.exit.us137 ], [ %.093129.us, %_ZN6icu_784UTF812isValidTrailEihii.exit.us ], [ %.093129.us136, %.split ], [ %.093129, %.split181 ], [ %.093129, %_ZN6icu_784UTF812isValidTrailEihii.exit ]
  %.us-phi132 = phi i8 [ %.089130.us135, %_ZN6icu_784UTF812isValidTrailEihii.exit.us137 ], [ %.089130.us, %_ZN6icu_784UTF812isValidTrailEihii.exit.us ], [ %.089130.us135, %.split ], [ %.089130, %.split181 ], [ %.089130, %_ZN6icu_784UTF812isValidTrailEihii.exit ]
  store i32 12, ptr %1, align 4, !tbaa !30
  br label %.loopexit

bb.j:                                             ; preds = %.split181, %_ZN6icu_784UTF812isValidTrailEihii.exit
  %i.bo = add i8 %.089130, 1                      ; 2 uses
  %i.bp = sext i8 %.089130 to i64
  %i.bq = getelementptr inbounds i8, ptr %i.z, i64 %i.bp
  store i8 %i.bf, ptr %i.bq, align 1, !tbaa !27
  %i.br = getelementptr inbounds nuw i8, ptr %.093129, i64 1 ; 3 uses
  %i.bs = load ptr, ptr %i.f, align 8, !tbaa !37
  %i.bt = icmp ult ptr %i.br, %i.bs
  br i1 %i.bt, label %.lr.ph.split.split, label %.loopexit

.loopexit:                                        ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %.thread108
  %.093126 = phi ptr [ %.us-phi, %.thread108 ], [ %i.h, %bb.g ], [ %i.an, %bb.h ], [ %i.bc, %bb.i ], [ %i.br, %bb.j ]
  %.089124 = phi i8 [ %.us-phi132, %.thread108 ], [ 1, %bb.g ], [ %i.ak, %bb.h ], [ %i.az, %bb.i ], [ %i.bo, %bb.j ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i8 %.089124, ptr %i.bu, align 8, !tbaa !39
  store ptr %.093126, ptr %i.c, align 8, !tbaa !35
  br label %bb.u

bb.k:                                             ; preds = %bb.f
  %i.bv = shl nuw nsw i32 %i.l, 6                 ; 3 uses
  %i.bw = load i8, ptr %i.h, align 1, !tbaa !27   ; 4 uses
  switch i32 %i.t, label %bb.q [
    i32 2, label %bb.l
    i32 1, label %bb.o
  ]

bb.l:                                             ; preds = %bb.k
  %i.bx = and i32 %i.l, 15
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr @.str, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !27
  %i.cb = zext i8 %i.ca to i32
  %i.cc = zext i8 %i.bw to i32                    ; 2 uses
  %i.cd = lshr i32 %i.cc, 5
  %i.ce = shl nuw nsw i32 1, %i.cd
  %i.cf = and i32 %i.ce, %i.cb
  %.not106 = icmp eq i32 %i.cf, 0
  br i1 %.not106, label %iter.check, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !27  ; 2 uses
  %i.ci = icmp slt i8 %i.ch, -64
  br i1 %i.ci, label %bb.n, label %iter.check

bb.n:                                             ; preds = %bb.m
  %i.cj = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  store ptr %i.cj, ptr %i.c, align 8, !tbaa !35
  %i.ck = add nuw nsw i32 %i.bv, %i.cc
  %i.cl = shl nuw nsw i32 %i.ck, 6
  %i.cm = zext i8 %i.ch to i32
  %i.cn = add nsw i32 %i.cl, -925824
  %i.co = add nsw i32 %i.cn, %i.cm
  br label %bb.u

bb.o:                                             ; preds = %bb.k
  %i.cp = icmp sgt i8 %i.bw, -65
  br i1 %i.cp, label %iter.check, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cq = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store ptr %i.cq, ptr %i.c, align 8, !tbaa !35
  %i.cr = zext i8 %i.bw to i32
  %i.cs = add nsw i32 %i.bv, -12416
  %i.ct = add nuw nsw i32 %i.cs, %i.cr
  br label %bb.u

bb.q:                                             ; preds = %bb.k
  %i.cu = zext i8 %i.bw to i32                    ; 2 uses
  %i.cv = lshr i32 %i.cu, 4
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr @.str.1, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !27
  %i.cz = zext i8 %i.cy to i32
  %i.da = and i32 %i.l, 7
  %i.db = shl nuw nsw i32 1, %i.da
  %i.dc = and i32 %i.db, %i.cz
  %.not105 = icmp eq i32 %i.dc, 0
  br i1 %.not105, label %iter.check, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dd = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 2 uses
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !27  ; 2 uses
  %i.df = icmp slt i8 %i.de, -64
  br i1 %i.df, label %bb.s, label %iter.check

bb.s:                                             ; preds = %bb.r
  %i.dg = getelementptr inbounds nuw i8, ptr %i.d, i64 3 ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !27  ; 2 uses
  %i.di = icmp slt i8 %i.dh, -64
  br i1 %i.di, label %bb.t, label %iter.check

bb.t:                                             ; preds = %bb.s
  %i.dj = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store ptr %i.dj, ptr %i.c, align 8, !tbaa !35
  %i.dk = add nuw nsw i32 %i.bv, %i.cu
  %i.dl = zext i8 %i.de to i32
  %i.dm = shl nuw nsw i32 %i.dk, 12
  %i.dn = shl nuw nsw i32 %i.dl, 6
  %i.do = zext i8 %i.dh to i32
  %i.dp = add nsw i32 %i.dm, -63447168
  %i.dq = add nsw i32 %i.dp, %i.dn
  %i.dr = add nsw i32 %i.dq, %i.do
  br label %bb.u

iter.check:                                       ; preds = %bb.q, %bb.r, %bb.s, %bb.o, %bb.l, %bb.m
  %.7 = phi ptr [ %i.h, %bb.o ], [ %i.cg, %bb.m ], [ %i.h, %bb.l ], [ %i.h, %bb.q ], [ %i.dd, %bb.r ], [ %i.dg, %bb.s ] ; 3 uses
  %.7214 = ptrtoaddr ptr %.7 to i64               ; 2 uses
  store ptr %.7, ptr %i.c, align 8, !tbaa !35
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 3 uses
  %i.dt = add i64 %i.e, 1
  %umax215 = tail call i64 @llvm.umax.i64(i64 %.7214, i64 %i.dt)
  %i.du = sub i64 %umax215, %i.e                  ; 7 uses
  %min.iters.check = icmp ult i64 %i.du, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.dv = add i64 %i.e, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %.7214, i64 %i.dv)
  %i.dw = sub i64 %i.e, %umax
  %.not228 = icmp ugt i64 %i.dw, -129
  br i1 %.not228, label %vector.memcheck, label %vec.epilog.scalar.ph.preheader

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.dx = sub i64 %2, %i.e
  %i.dy = add i64 %i.dx, 64
  %diff.check = icmp ult i64 %i.dy, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check216 = icmp ult i64 %i.du, 32
  br i1 %min.iters.check216, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dz = and i64 %i.du, 28
  %n.vec = and i64 %i.du, -32                     ; 5 uses
  %i.ea = trunc i64 %n.vec to i8                  ; 2 uses
  %i.eb = getelementptr i8, ptr %i.d, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.d, i64 %index ; 2 uses
  %i.ec = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !27
  %wide.load217 = load <16 x i8>, ptr %i.ec, align 1, !tbaa !27
  %i.ed = shl i64 %index, 56
  %i.ee = ashr exact i64 %i.ed, 56
  %i.ef = getelementptr inbounds i8, ptr %i.ds, i64 %i.ee ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store <16 x i8> %wide.load, ptr %i.ef, align 1, !tbaa !27
  store <16 x i8> %wide.load217, ptr %i.eg, align 1, !tbaa !27
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.eh = icmp eq i64 %index.next, %n.vec
  br i1 %i.eh, label %middle.block, label %vector.body, !llvm.loop !56

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.du, %n.vec
  br i1 %cmp.n, label %.loopexit227, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dz, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !45

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec219 = and i64 %i.du, -4                   ; 4 uses
  %i.ei = trunc i64 %n.vec219 to i8               ; 2 uses
  %i.ej = getelementptr i8, ptr %i.d, i64 %n.vec219
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index220 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next223, %vec.epilog.vector.body ] ; 3 uses
  %next.gep221 = getelementptr i8, ptr %i.d, i64 %index220
  %wide.load222 = load <4 x i8>, ptr %next.gep221, align 1, !tbaa !27
  %i.ek = shl i64 %index220, 56
  %i.el = ashr exact i64 %i.ek, 56
  %i.em = getelementptr inbounds i8, ptr %i.ds, i64 %i.el
  store <4 x i8> %wide.load222, ptr %i.em, align 1, !tbaa !27
  %index.next223 = add nuw i64 %index220, 4       ; 2 uses
  %i.en = icmp eq i64 %index.next223, %n.vec219
  br i1 %i.en, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !57

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n224 = icmp eq i64 %i.du, %n.vec219
  br i1 %cmp.n224, label %.loopexit227, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.392128.ph = phi i8 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ %i.ea, %vec.epilog.iter.check ], [ %i.ei, %vec.epilog.middle.block ]
  %.097127.ph = phi ptr [ %i.d, %iter.check ], [ %i.d, %vector.scevcheck ], [ %i.d, %vector.memcheck ], [ %i.eb, %vec.epilog.iter.check ], [ %i.ej, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.392128 = phi i8 [ %i.es, %vec.epilog.scalar.ph ], [ %.392128.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.097127 = phi ptr [ %i.eo, %vec.epilog.scalar.ph ], [ %.097127.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.097127, i64 1 ; 2 uses
  %i.ep = load i8, ptr %.097127, align 1, !tbaa !27
  %i.eq = sext i8 %.392128 to i64
  %i.er = getelementptr inbounds i8, ptr %i.ds, i64 %i.eq
  store i8 %i.ep, ptr %i.er, align 1, !tbaa !27
  %i.es = add i8 %.392128, 1                      ; 2 uses
  %i.et = icmp ult ptr %i.eo, %.7
  br i1 %i.et, label %vec.epilog.scalar.ph, label %.loopexit227, !llvm.loop !58

.loopexit227:                                     ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa213 = phi i8 [ %i.ei, %vec.epilog.middle.block ], [ %i.ea, %middle.block ], [ %i.es, %vec.epilog.scalar.ph ]
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i8 %.lcssa213, ptr %i.eu, align 8, !tbaa !39
  store i32 12, ptr %1, align 4, !tbaa !30
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.p, %bb.n, %.thread, %.loopexit, %.loopexit227, %bb.d, %bb.b
  %.4102 = phi i32 [ 65535, %bb.b ], [ %i.k, %bb.d ], [ 65535, %.thread ], [ 65535, %.loopexit ], [ 65535, %.loopexit227 ], [ %i.co, %bb.n ], [ %i.ct, %bb.p ], [ %i.dr, %bb.t ]
  ret i32 %.4102
}

declare void @ucnv_getNonSurrogateUnicodeSet_78(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL17ucnv_UTF8FromUTF8P25UConverterFromUnicodeArgsP23UConverterToUnicodeArgsP10UErrorCode(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 26 uses
  %3 = ptrtoaddr ptr %i.b to i64                  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !37   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = trunc i64 %i.m to i32                    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 6 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !39    ; 2 uses
  %i.q = icmp sgt i8 %i.p, 0
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.s = load i32, ptr %i.r, align 4, !tbaa !40
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.u = load i32, ptr %i.t, align 8, !tbaa !41
  %i.v = shl i32 %i.s, 24
  %i.w = ashr exact i32 %i.v, 24
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0203 = phi i8 [ %i.p, %bb.b ], [ 0, %bb.a ]   ; 3 uses
  %.0201 = phi i32 [ %i.w, %bb.b ], [ 0, %bb.a ]  ; 3 uses
  %.0197 = phi i32 [ %i.u, %bb.b ], [ 0, %bb.a ]  ; 2 uses
  %i.x = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.y = ptrtoint ptr %i.d to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = trunc i64 %i.z to i32
  %i.ab = zext nneg i8 %.0203 to i32              ; 3 uses
  %i.ac = add nsw i32 %i.ab, %i.aa                ; 3 uses
  %i.ad = icmp slt i32 %i.ac, %.0201
  br i1 %i.ad, label %bb.s, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = icmp sgt i32 %.0201, %i.n
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 -127, ptr %2, align 4, !tbaa !30
  br label %bb.bb

bb.f:                                             ; preds = %bb.d
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.ac, i32 %i.n)
  %i.af = sub nsw i32 %spec.select, %i.ab         ; 14 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %bb.g, label %bb.r

bb.g:                                             ; preds = %bb.f
  %i.ah = zext nneg i32 %i.af to i64
  %i.ai = getelementptr i8, ptr %i.d, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 -1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !27  ; 4 uses
  %i.al = icmp sgt i8 %i.ak, -1
  br i1 %i.al, label %bb.r, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = zext i8 %i.ak to i32                    ; 2 uses
  %i.an = add nsw i8 %i.ak, 62
  %i.ao = icmp ult i8 %i.an, 51
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ap = add nsw i32 %i.af, -1
  br label %bb.r

bb.j:                                             ; preds = %bb.h
  %i.aq = icmp samesign ult i8 %i.ak, -64
  br i1 %i.aq, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.ar = add nsw i32 %i.af, -2                   ; 2 uses
  %.not = icmp eq i32 %i.af, 1
  br i1 %.not, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !27  ; 4 uses
  %i.av = zext i8 %i.au to i32                    ; 3 uses
  %i.aw = add i8 %i.au, 32
  %or.cond = icmp ult i8 %i.aw, 21
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ax = icmp samesign ult i8 %i.au, -16         ; 2 uses
  %i.ay = lshr i32 %i.am, 4
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @.str.1, i64 %i.az
  %i.bb = and i32 %i.av, 7
  %i.bc = and i32 %i.av, 15
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr @.str, i64 %i.bd
  %i.bf = lshr i32 %i.am, 5
  %.sink497 = select i1 %i.ax, i32 %i.bf, i32 %i.bb
  %.sink496.in.in = select i1 %i.ax, ptr %i.be, ptr %i.ba
  %.sink496.in = load i8, ptr %.sink496.in.in, align 1, !tbaa !27
  %.sink496 = zext i8 %.sink496.in to i32
  %i.bg = shl nuw nsw i32 1, %.sink497
  %i.bh = and i32 %i.bg, %.sink496
  %.not245 = icmp eq i32 %i.bh, 0
  %spec.select254 = select i1 %.not245, i32 %i.af, i32 %i.ar
  br label %bb.r

bb.n:                                             ; preds = %bb.l
  %i.bi = icmp slt i8 %i.au, -64
  br i1 %i.bi, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bj = add nsw i32 %i.af, -3                   ; 2 uses
  %i.bk = icmp samesign ugt i32 %i.af, 2
  br i1 %i.bk, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bl = zext nneg i32 %i.bj to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !27  ; 2 uses
  %i.bo = add i8 %i.bn, 16
  %or.cond5 = icmp ult i8 %i.bo, 5
  br i1 %or.cond5, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bp = lshr i32 %i.av, 4
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr @.str.1, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !27
  %i.bt = zext i8 %i.bs to i32
  %i.bu = and i8 %i.bn, 7
  %i.bv = zext nneg i8 %i.bu to i32
  %i.bw = shl nuw nsw i32 1, %i.bv
  %i.bx = and i32 %i.bw, %i.bt
  %.not244 = icmp eq i32 %i.bx, 0
  %spec.select255 = select i1 %.not244, i32 %i.af, i32 %i.bj
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.m, %bb.g, %bb.j, %bb.k, %bb.i, %bb.p, %bb.n, %bb.o, %bb.f
  %.3 = phi i32 [ %i.af, %bb.f ], [ %i.af, %bb.g ], [ %i.ap, %bb.i ], [ %i.af, %bb.j ], [ 1, %bb.k ], [ %i.af, %bb.n ], [ %spec.select255, %bb.q ], [ %spec.select254, %bb.m ], [ 2, %bb.o ], [ %i.af, %bb.p ]
  %i.by = add nsw i32 %.3, %i.ab
  br label %bb.s

bb.s:                                             ; preds = %bb.c, %bb.r
  %.1212 = phi i32 [ %i.ac, %bb.c ], [ %i.by, %bb.r ] ; 2 uses
  %.not246 = icmp eq i32 %.0197, 0
  br i1 %.not246, label %.preheader261, label %bb.t

.preheader261:                                    ; preds = %._crit_edge339, %bb.s
  %.0219.ph = phi ptr [ %i.d, %bb.s ], [ %.5.lcssa, %._crit_edge339 ] ; 2 uses
  %.0215.ph = phi ptr [ %i.h, %bb.s ], [ %.3218.lcssa, %._crit_edge339 ] ; 2 uses
  %.2213.ph = phi i32 [ %.1212, %bb.s ], [ %i.nt, %._crit_edge339 ] ; 2 uses
  %i.bz = icmp sgt i32 %.2213.ph, 0
  br i1 %i.bz, label %.lr.ph, label %._crit_edge

bb.t:                                             ; preds = %bb.s
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 0, ptr %i.ca, align 8, !tbaa !41
  store i8 0, ptr %i.o, align 8, !tbaa !39
  br label %.thread260

.lr.ph:                                           ; preds = %.preheader261, %.backedge
  %.2213296 = phi i32 [ %i.cf, %.backedge ], [ %.2213.ph, %.preheader261 ] ; 2 uses
  %.0215295 = phi ptr [ %.0215.be, %.backedge ], [ %.0215.ph, %.preheader261 ] ; 12 uses
  %.0219294 = phi ptr [ %.0219.be, %.backedge ], [ %.0219.ph, %.preheader261 ] ; 7 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0219294, i64 1 ; 4 uses
  %i.cc = load i8, ptr %.0219294, align 1, !tbaa !27 ; 10 uses
  %i.cd = icmp sgt i8 %i.cc, -1
  br i1 %i.cd, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph
  %i.ce = getelementptr inbounds nuw i8, ptr %.0215295, i64 1
  store i8 %i.cc, ptr %.0215295, align 1, !tbaa !27
  br label %.backedge

.backedge:                                        ; preds = %bb.u, %bb.z, %bb.ac
  %.sink = phi i32 [ -1, %bb.u ], [ -3, %bb.z ], [ -2, %bb.ac ]
  %.0219.be = phi ptr [ %i.cb, %bb.u ], [ %i.cx, %bb.z ], [ %i.de, %bb.ac ] ; 2 uses
  %.0215.be = phi ptr [ %i.ce, %bb.u ], [ %i.da, %bb.z ], [ %i.dg, %bb.ac ] ; 2 uses
  %i.cf = add nsw i32 %.2213296, %.sink           ; 2 uses
  %i.cg = icmp sgt i32 %i.cf, 0
  br i1 %i.cg, label %.lr.ph, label %._crit_edge, !llvm.loop !59

bb.v:                                             ; preds = %.lr.ph
  %i.ch = zext i8 %i.cc to i32                    ; 2 uses
  %i.ci = icmp samesign ugt i8 %i.cc, -33         ; 2 uses
  br i1 %i.ci, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.cj = icmp samesign ult i8 %i.cc, -16
  br i1 %i.cj, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %bb.w
  %i.ck = and i32 %i.ch, 15
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr @.str, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !27
  %i.co = zext i8 %i.cn to i32
  %i.cp = load i8, ptr %i.cb, align 1, !tbaa !27  ; 2 uses
  %i.cq = lshr i8 %i.cp, 5
  %i.cr = zext nneg i8 %i.cq to i32
  %i.cs = shl nuw nsw i32 1, %i.cr
  %i.ct = and i32 %i.cs, %i.co
  %.not252 = icmp eq i32 %i.ct, 0
  br i1 %.not252, label %.thread.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cu = getelementptr inbounds nuw i8, ptr %.0219294, i64 2
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !27  ; 2 uses
  %i.cw = icmp slt i8 %i.cv, -64
  br i1 %i.cw, label %bb.z, label %.thread.loopexit

bb.z:                                             ; preds = %bb.y
  %i.cx = getelementptr inbounds nuw i8, ptr %.0219294, i64 3
  %i.cy = getelementptr inbounds nuw i8, ptr %.0215295, i64 1
  store i8 %i.cc, ptr %.0215295, align 1, !tbaa !27
  %i.cz = getelementptr inbounds nuw i8, ptr %.0215295, i64 2
  store i8 %i.cp, ptr %i.cy, align 1, !tbaa !27
  %i.da = getelementptr inbounds nuw i8, ptr %.0215295, i64 3
  store i8 %i.cv, ptr %i.cz, align 1, !tbaa !27
  br label %.backedge

bb.aa:                                            ; preds = %bb.v
  %i.db = icmp samesign ugt i8 %i.cc, -63
  br i1 %i.db, label %bb.ab, label %iter.check579

bb.ab:                                            ; preds = %bb.aa
  %i.dc = load i8, ptr %i.cb, align 1, !tbaa !27  ; 2 uses
  %i.dd = icmp slt i8 %i.dc, -64
  br i1 %i.dd, label %bb.ac, label %.thread.loopexit

bb.ac:                                            ; preds = %bb.ab
  %i.de = getelementptr inbounds nuw i8, ptr %.0219294, i64 2
  %i.df = getelementptr inbounds nuw i8, ptr %.0215295, i64 1
  store i8 %i.cc, ptr %.0215295, align 1, !tbaa !27
  %i.dg = getelementptr inbounds nuw i8, ptr %.0215295, i64 2
  store i8 %i.dc, ptr %i.df, align 1, !tbaa !27
  br label %.backedge

bb.ad:                                            ; preds = %bb.w
  %i.dh = icmp samesign ult i8 %i.cc, -11
  br i1 %i.dh, label %.thread, label %iter.check579

.thread.loopexit:                                 ; preds = %bb.ab, %bb.x, %bb.y
  %i.di = zext i1 %i.ci to i32
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.ad
  %i.dj = phi i32 [ %i.di, %.thread.loopexit ], [ 1, %bb.ad ]
  %i.dk = icmp samesign ugt i8 %i.cc, -17
  %i.dl = select i1 %i.dk, i32 3, i32 2
  %i.dm = add nuw nsw i32 %i.dl, %i.dj
  br label %.thread260

.thread260:                                       ; preds = %.thread, %bb.t
  %.1220 = phi ptr [ %i.d, %bb.t ], [ %i.cb, %.thread ] ; 4 uses
  %.1216 = phi ptr [ %i.h, %bb.t ], [ %.0215295, %.thread ] ; 24 uses
  %.3214 = phi i32 [ %.1212, %bb.t ], [ %.2213296, %.thread ]
  %.1208 = phi i8 [ %.0203, %bb.t ], [ 0, %.thread ] ; 17 uses
  %.1204 = phi i8 [ %.0203, %bb.t ], [ 1, %.thread ] ; 4 uses
  %.1202 = phi i32 [ %.0201, %bb.t ], [ %i.dm, %.thread ] ; 9 uses
  %.1198 = phi i32 [ %.0197, %bb.t ], [ %i.ch, %.thread ] ; 2 uses
  %.1216595 = ptrtoaddr ptr %.1216 to i64
  %i.dn = zext nneg i8 %.1204 to i32              ; 4 uses
  %i.do = icmp sgt i32 %.1202, %i.dn
  br i1 %i.do, label %.lr.ph308, label %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge

.lr.ph308:                                        ; preds = %.thread260
  %i.dp = icmp samesign ult i32 %.1202, 3
  %i.dq = icmp eq i32 %.1202, 3
  %i.dr = icmp ult ptr %.1220, %i.f
  br i1 %i.dr, label %.lr.ph545, label %._crit_edge546

bb.ae:                                            ; preds = %bb.aj
  %i.ds = shl i32 %.2199307543, 6
  %i.dt = zext i8 %i.dw to i32
  %i.du = add nsw i32 %i.ds, %i.dt                ; 2 uses
  %indvars.iv.next388 = add nuw i8 %indvars.iv387541, 1 ; 2 uses
  %i.dv = icmp ult ptr %i.ep, %i.f
  br i1 %i.dv, label %.lr.ph545, label %._crit_edge546, !llvm.loop !60

.lr.ph545:                                        ; preds = %.lr.ph308, %bb.ae
  %.2221305544 = phi ptr [ %i.ep, %bb.ae ], [ %.1220, %.lr.ph308 ] ; 3 uses
  %.2199307543 = phi i32 [ %i.du, %bb.ae ], [ %.1198, %.lr.ph308 ] ; 3 uses
  %indvars.iv542 = phi i32 [ %indvars.iv.next, %bb.ae ], [ %i.dn, %.lr.ph308 ] ; 4 uses
  %indvars.iv387541 = phi i8 [ %indvars.iv.next388, %bb.ae ], [ %.1204, %.lr.ph308 ]
  %i.dw = load i8, ptr %.2221305544, align 1, !tbaa !27 ; 4 uses
  %i.dx = icmp samesign ugt i32 %indvars.iv542, 1
  %or.cond.i = or i1 %i.dp, %i.dx
  br i1 %or.cond.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph545
  %i.dy = icmp slt i8 %i.dw, -64
  %i.dz = zext i1 %i.dy to i8
  br label %_ZN6icu_784UTF812isValidTrailEihii.exit

bb.ag:                                            ; preds = %.lr.ph545
  br i1 %i.dq, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ea = and i32 %.2199307543, 15
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr @.str, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !27
  %i.ee = lshr i8 %i.dw, 5
  %i.ef = shl nuw i8 1, %i.ee
  %i.eg = and i8 %i.ed, %i.ef
  br label %_ZN6icu_784UTF812isValidTrailEihii.exit

bb.ai:                                            ; preds = %bb.ag
  %i.eh = lshr i8 %i.dw, 4
  %i.ei = zext nneg i8 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr @.str.1, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !27
  %i.el = and i32 %.2199307543, 7
  %i.em = shl nuw nsw i32 1, %i.el
  %i.en = trunc nuw i32 %i.em to i8
  %i.eo = and i8 %i.ek, %i.en
  br label %_ZN6icu_784UTF812isValidTrailEihii.exit

_ZN6icu_784UTF812isValidTrailEihii.exit:          ; preds = %bb.af, %bb.ah, %bb.ai
  %.0.i = phi i8 [ %i.dz, %bb.af ], [ %i.eg, %bb.ah ], [ %i.eo, %bb.ai ]
  %.not247 = icmp eq i8 %.0.i, 0
  br i1 %.not247, label %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge.loopexit, label %bb.aj

bb.aj:                                            ; preds = %_ZN6icu_784UTF812isValidTrailEihii.exit
  %i.ep = getelementptr inbounds nuw i8, ptr %.2221305544, i64 1 ; 4 uses
  %indvars.iv.next = add nuw i32 %indvars.iv542, 1 ; 4 uses
  %sext = shl i32 %indvars.iv.next, 24
  %i.eq = ashr exact i32 %sext, 24                ; 2 uses
  %i.er = icmp sgt i32 %.1202, %i.eq
  br i1 %i.er, label %bb.ae, label %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge.loopexit, !llvm.loop !60

._crit_edge546:                                   ; preds = %bb.ae, %.lr.ph308
  %indvars.iv387.lcssa = phi i8 [ %.1204, %.lr.ph308 ], [ %indvars.iv.next388, %bb.ae ]
  %indvars.iv.lcssa = phi i32 [ %i.dn, %.lr.ph308 ], [ %indvars.iv.next, %bb.ae ] ; 3 uses
  %.2199307.lcssa = phi i32 [ %.1198, %.lr.ph308 ], [ %i.du, %bb.ae ]
  %.2221305.lcssa = phi ptr [ %.1220, %.lr.ph308 ], [ %i.ep, %bb.ae ] ; 2 uses
  %.2221305.lcssa550 = ptrtoaddr ptr %.2221305.lcssa to i64
  %i.es = trunc nuw nsw i32 %indvars.iv.lcssa to i8 ; 2 uses
  %i.et = zext nneg i8 %.1208 to i32
  %.neg = sub nsw i32 %i.et, %indvars.iv.lcssa
  %i.eu = sext i32 %.neg to i64
  %i.ev = getelementptr inbounds i8, ptr %.2221305.lcssa, i64 %i.eu ; 7 uses
  %i.ew = icmp slt i8 %.1208, %i.es
  br i1 %i.ew, label %iter.check, label %._crit_edge320

iter.check:                                       ; preds = %._crit_edge546
  %i.ex = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 7 uses
  %i.ey = zext i8 %.1208 to i64                   ; 7 uses
  %wide.trip.count = zext i8 %indvars.iv387.lcssa to i64 ; 4 uses
  %i.ez = sub nsw i64 %wide.trip.count, %i.ey     ; 7 uses
  %min.iters.check = icmp ult i64 %i.ez, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.fa = sext i32 %indvars.iv.lcssa to i64
  %i.fb = add i64 %3, %i.fa
  %i.fc = sub i64 %i.fb, %.2221305.lcssa550
  %i.fd = add i64 %i.fc, 64
  %diff.check = icmp ult i64 %i.fd, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check551 = icmp ult i64 %i.ez, 32
  br i1 %min.iters.check551, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fe = and i64 %i.ez, 24
  %n.vec = and i64 %i.ez, -32                     ; 5 uses
  %i.ff = add nsw i64 %n.vec, %i.ey
  %i.fg = getelementptr i8, ptr %i.ev, i64 %n.vec ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.ex, i64 %i.ey
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.ev, i64 %index ; 2 uses
  %i.fh = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !27
  %wide.load552 = load <16 x i8>, ptr %i.fh, align 1, !tbaa !27
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <16 x i8> %wide.load, ptr %gep, align 1, !tbaa !27
  store <16 x i8> %wide.load552, ptr %i.fi, align 1, !tbaa !27
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fj = icmp eq i64 %index.next, %n.vec
  br i1 %i.fj, label %middle.block, label %vector.body, !llvm.loop !61

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ez, %n.vec
  br i1 %cmp.n, label %._crit_edge320, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.fe, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !76

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec554 = and i64 %i.ez, -8                   ; 4 uses
  %i.fk = add nsw i64 %n.vec554, %i.ey
  %i.fl = getelementptr i8, ptr %i.ev, i64 %n.vec554 ; 2 uses
  %invariant.gep757 = getelementptr i8, ptr %i.ex, i64 %i.ey
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index555 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next558, %vec.epilog.vector.body ] ; 3 uses
  %next.gep556 = getelementptr i8, ptr %i.ev, i64 %index555
  %wide.load557 = load <8 x i8>, ptr %next.gep556, align 1, !tbaa !27
  %gep758 = getelementptr i8, ptr %invariant.gep757, i64 %index555
  store <8 x i8> %wide.load557, ptr %gep758, align 1, !tbaa !27
  %index.next558 = add nuw i64 %index555, 8       ; 2 uses
  %i.fm = icmp eq i64 %index.next558, %n.vec554
  br i1 %i.fm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !62

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n559 = icmp eq i64 %i.ez, %n.vec554
  br i1 %cmp.n559, label %._crit_edge320, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv383.ph = phi i64 [ %i.ey, %iter.check ], [ %i.ey, %vector.memcheck ], [ %i.ff, %vec.epilog.iter.check ], [ %i.fk, %vec.epilog.middle.block ] ; 4 uses
  %.3222316.ph = phi ptr [ %i.ev, %iter.check ], [ %i.ev, %vector.memcheck ], [ %i.fg, %vec.epilog.iter.check ], [ %i.fl, %vec.epilog.middle.block ] ; 2 uses
  %i.fn = sub nsw i64 %wide.trip.count, %indvars.iv383.ph
  %xtraiter = and i64 %i.fn, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv383.prol = phi i64 [ %indvars.iv.next384.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv383.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.3222316.prol = phi ptr [ %i.fo, %vec.epilog.scalar.ph.prol ], [ %.3222316.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.fo = getelementptr inbounds nuw i8, ptr %.3222316.prol, i64 1 ; 3 uses
  %i.fp = load i8, ptr %.3222316.prol, align 1, !tbaa !27
  %indvars.iv.next384.prol = add nuw nsw i64 %indvars.iv383.prol, 1 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ex, i64 %indvars.iv383.prol
  store i8 %i.fp, ptr %i.fq, align 1, !tbaa !27
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !63

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa675.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.fo, %vec.epilog.scalar.ph.prol ]
  %indvars.iv383.unr = phi i64 [ %indvars.iv383.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next384.prol, %vec.epilog.scalar.ph.prol ]
  %.3222316.unr = phi ptr [ %.3222316.ph, %vec.epilog.scalar.ph.preheader ], [ %i.fo, %vec.epilog.scalar.ph.prol ]
  %i.fr = sub nsw i64 %indvars.iv383.ph, %wide.trip.count
  %i.fs = icmp ugt i64 %i.fr, -4
  br i1 %i.fs, label %._crit_edge320, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv383 = phi i64 [ %indvars.iv.next384.3, %vec.epilog.scalar.ph ], [ %indvars.iv383.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.3222316 = phi ptr [ %i.ge, %vec.epilog.scalar.ph ], [ %.3222316.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.3222316, i64 1
  %i.fu = load i8, ptr %.3222316, align 1, !tbaa !27
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ex, i64 %indvars.iv383
  store i8 %i.fu, ptr %i.fv, align 1, !tbaa !27
  %i.fw = getelementptr inbounds nuw i8, ptr %.3222316, i64 2
  %i.fx = load i8, ptr %i.ft, align 1, !tbaa !27
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ex, i64 %indvars.iv383
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 1
  store i8 %i.fx, ptr %i.fz, align 1, !tbaa !27
  %i.ga = getelementptr inbounds nuw i8, ptr %.3222316, i64 3
  %i.gb = load i8, ptr %i.fw, align 1, !tbaa !27
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ex, i64 %indvars.iv383
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 2
  store i8 %i.gb, ptr %i.gd, align 1, !tbaa !27
  %i.ge = getelementptr inbounds nuw i8, ptr %.3222316, i64 4 ; 2 uses
  %i.gf = load i8, ptr %i.ga, align 1, !tbaa !27
  %indvars.iv.next384.3 = add nuw nsw i64 %indvars.iv383, 4 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ex, i64 %indvars.iv383
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 3
  store i8 %i.gf, ptr %i.gh, align 1, !tbaa !27
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next384.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge320, label %vec.epilog.scalar.ph, !llvm.loop !64

._crit_edge320:                                   ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %._crit_edge546
  %.3222.lcssa = phi ptr [ %i.ev, %._crit_edge546 ], [ %i.fl, %vec.epilog.middle.block ], [ %i.fg, %middle.block ], [ %.lcssa675.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.ge, %vec.epilog.scalar.ph ]
  %i.gi = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 %.2199307.lcssa, ptr %i.gi, align 8, !tbaa !41
  store i8 %i.es, ptr %i.o, align 8, !tbaa !39
  %i.gj = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 %.1202, ptr %i.gj, align 4, !tbaa !40
  store ptr %.3222.lcssa, ptr %i.c, align 8, !tbaa !35
  store ptr %.1216, ptr %i.g, align 8, !tbaa !18
  br label %bb.bb

_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge.loopexit: ; preds = %_ZN6icu_784UTF812isValidTrailEihii.exit, %bb.aj
  %.2221.lcssa.ph = phi ptr [ %i.ep, %bb.aj ], [ %.2221305544, %_ZN6icu_784UTF812isValidTrailEihii.exit ]
  %.2205.lcssa.ph.in = phi i32 [ %indvars.iv.next, %bb.aj ], [ %indvars.iv542, %_ZN6icu_784UTF812isValidTrailEihii.exit ]
  %.lcssa.ph = phi i32 [ %i.eq, %bb.aj ], [ %indvars.iv542, %_ZN6icu_784UTF812isValidTrailEihii.exit ]
  %.2205.lcssa.ph = trunc i32 %.2205.lcssa.ph.in to i8
  br label %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge

_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge: ; preds = %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge.loopexit, %.thread260
  %.2221.lcssa = phi ptr [ %.1220, %.thread260 ], [ %.2221.lcssa.ph, %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge.loopexit ] ; 3 uses
  %.2205.lcssa = phi i8 [ %.1204, %.thread260 ], [ %.2205.lcssa.ph, %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge.loopexit ] ; 8 uses
  %.lcssa = phi i32 [ %i.dn, %.thread260 ], [ %.lcssa.ph, %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge.loopexit ] ; 2 uses
  %.2221.lcssa628 = ptrtoaddr ptr %.2221.lcssa to i64
  %.not248 = icmp eq i32 %.1202, %.lcssa
  br i1 %.not248, label %.preheader, label %bb.ak

.preheader:                                       ; preds = %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge
  %i.gk = icmp sgt i8 %.1208, 0
  br i1 %i.gk, label %iter.check611, label %._crit_edge331

iter.check611:                                    ; preds = %.preheader
  %i.gl = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 11 uses
  %wide.trip.count400 = zext nneg i8 %.1208 to i64 ; 8 uses
  %min.iters.check597 = icmp ult i8 %.1208, 4
  br i1 %min.iters.check597, label %vec.epilog.scalar.ph612.preheader, label %vector.memcheck594

vector.memcheck594:                               ; preds = %iter.check611
  %i.gm = sub i64 %.1216595, %3
  %i.gn = add i64 %i.gm, -66
  %diff.check596 = icmp ult i64 %i.gn, 15
  br i1 %diff.check596, label %vec.epilog.scalar.ph612.preheader, label %vector.main.loop.iter.check598

vector.main.loop.iter.check598:                   ; preds = %vector.memcheck594
  %min.iters.check599 = icmp ult i8 %.1208, 16
  br i1 %min.iters.check599, label %vec.epilog.ph615, label %vector.ph600

vector.ph600:                                     ; preds = %vector.main.loop.iter.check598
  %i.go = and i64 %wide.trip.count400, 12
  %n.vec601 = and i64 %wide.trip.count400, 112    ; 10 uses
  %i.gp = getelementptr i8, ptr %.1216, i64 %n.vec601 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.b, i64 73
  %wide.load605 = load <8 x i8>, ptr %i.gl, align 1, !tbaa !27
  %wide.load606 = load <8 x i8>, ptr %i.gq, align 1, !tbaa !27
  %i.gr = getelementptr i8, ptr %.1216, i64 8
  store <8 x i8> %wide.load605, ptr %.1216, align 1, !tbaa !27
  store <8 x i8> %wide.load606, ptr %i.gr, align 1, !tbaa !27
  %i.gs = icmp eq i64 %n.vec601, 16
  br i1 %i.gs, label %middle.block608, label %vector.body602.1

vector.body602.1:                                 ; preds = %vector.ph600
  %next.gep604.1 = getelementptr i8, ptr %.1216, i64 16
  %i.gt = getelementptr inbounds nuw i8, ptr %i.b, i64 81
  %i.gu = getelementptr inbounds nuw i8, ptr %i.b, i64 89
  %wide.load605.1 = load <8 x i8>, ptr %i.gt, align 1, !tbaa !27
  %wide.load606.1 = load <8 x i8>, ptr %i.gu, align 1, !tbaa !27
  %i.gv = getelementptr i8, ptr %.1216, i64 24
  store <8 x i8> %wide.load605.1, ptr %next.gep604.1, align 1, !tbaa !27
  store <8 x i8> %wide.load606.1, ptr %i.gv, align 1, !tbaa !27
  %i.gw = icmp eq i64 %n.vec601, 32
  br i1 %i.gw, label %middle.block608, label %vector.body602.2

vector.body602.2:                                 ; preds = %vector.body602.1
  %next.gep604.2 = getelementptr i8, ptr %.1216, i64 32
  %i.gx = getelementptr inbounds nuw i8, ptr %i.b, i64 97
  %i.gy = getelementptr inbounds nuw i8, ptr %i.b, i64 105
  %wide.load605.2 = load <8 x i8>, ptr %i.gx, align 1, !tbaa !27
  %wide.load606.2 = load <8 x i8>, ptr %i.gy, align 1, !tbaa !27
  %i.gz = getelementptr i8, ptr %.1216, i64 40
  store <8 x i8> %wide.load605.2, ptr %next.gep604.2, align 1, !tbaa !27
  store <8 x i8> %wide.load606.2, ptr %i.gz, align 1, !tbaa !27
  %i.ha = icmp eq i64 %n.vec601, 48
  br i1 %i.ha, label %middle.block608, label %vector.body602.3

vector.body602.3:                                 ; preds = %vector.body602.2
  %next.gep604.3 = getelementptr i8, ptr %.1216, i64 48
  %i.hb = getelementptr inbounds nuw i8, ptr %i.b, i64 113
  %i.hc = getelementptr inbounds nuw i8, ptr %i.b, i64 121
  %wide.load605.3 = load <8 x i8>, ptr %i.hb, align 1, !tbaa !27
  %wide.load606.3 = load <8 x i8>, ptr %i.hc, align 1, !tbaa !27
  %i.hd = getelementptr i8, ptr %.1216, i64 56
  store <8 x i8> %wide.load605.3, ptr %next.gep604.3, align 1, !tbaa !27
  store <8 x i8> %wide.load606.3, ptr %i.hd, align 1, !tbaa !27
  %i.he = icmp eq i64 %n.vec601, 64
  br i1 %i.he, label %middle.block608, label %vector.body602.4

vector.body602.4:                                 ; preds = %vector.body602.3
  %next.gep604.4 = getelementptr i8, ptr %.1216, i64 64
  %i.hf = getelementptr inbounds nuw i8, ptr %i.b, i64 129
  %i.hg = getelementptr inbounds nuw i8, ptr %i.b, i64 137
  %wide.load605.4 = load <8 x i8>, ptr %i.hf, align 1, !tbaa !27
  %wide.load606.4 = load <8 x i8>, ptr %i.hg, align 1, !tbaa !27
  %i.hh = getelementptr i8, ptr %.1216, i64 72
  store <8 x i8> %wide.load605.4, ptr %next.gep604.4, align 1, !tbaa !27
  store <8 x i8> %wide.load606.4, ptr %i.hh, align 1, !tbaa !27
  %i.hi = icmp eq i64 %n.vec601, 80
  br i1 %i.hi, label %middle.block608, label %vector.body602.5

vector.body602.5:                                 ; preds = %vector.body602.4
  %next.gep604.5 = getelementptr i8, ptr %.1216, i64 80
  %i.hj = getelementptr inbounds nuw i8, ptr %i.b, i64 145
  %i.hk = getelementptr inbounds nuw i8, ptr %i.b, i64 153
  %wide.load605.5 = load <8 x i8>, ptr %i.hj, align 1, !tbaa !27
  %wide.load606.5 = load <8 x i8>, ptr %i.hk, align 1, !tbaa !27
  %i.hl = getelementptr i8, ptr %.1216, i64 88
  store <8 x i8> %wide.load605.5, ptr %next.gep604.5, align 1, !tbaa !27
  store <8 x i8> %wide.load606.5, ptr %i.hl, align 1, !tbaa !27
  %i.hm = icmp eq i64 %n.vec601, 96
  br i1 %i.hm, label %middle.block608, label %vector.body602.6

vector.body602.6:                                 ; preds = %vector.body602.5
  %next.gep604.6 = getelementptr i8, ptr %.1216, i64 96
  %i.hn = getelementptr inbounds nuw i8, ptr %i.b, i64 161
  %i.ho = getelementptr inbounds nuw i8, ptr %i.b, i64 169
  %wide.load605.6 = load <8 x i8>, ptr %i.hn, align 1, !tbaa !27
  %wide.load606.6 = load <8 x i8>, ptr %i.ho, align 1, !tbaa !27
  %i.hp = getelementptr i8, ptr %.1216, i64 104
  store <8 x i8> %wide.load605.6, ptr %next.gep604.6, align 1, !tbaa !27
  store <8 x i8> %wide.load606.6, ptr %i.hp, align 1, !tbaa !27
  br label %middle.block608

middle.block608:                                  ; preds = %vector.body602.6, %vector.body602.5, %vector.body602.4, %vector.body602.3, %vector.body602.2, %vector.body602.1, %vector.ph600
  %cmp.n609 = icmp eq i64 %n.vec601, %wide.trip.count400
  br i1 %cmp.n609, label %._crit_edge331, label %vec.epilog.iter.check613

vec.epilog.iter.check613:                         ; preds = %middle.block608
  %min.epilog.iters.check614 = icmp eq i64 %i.go, 0
  br i1 %min.epilog.iters.check614, label %vec.epilog.scalar.ph612.preheader, label %vec.epilog.ph615, !prof !78

vec.epilog.ph615:                                 ; preds = %vector.main.loop.iter.check598, %vec.epilog.iter.check613
  %vec.epilog.resume.val610 = phi i64 [ %n.vec601, %vec.epilog.iter.check613 ], [ 0, %vector.main.loop.iter.check598 ]
  %n.vec616 = and i64 %wide.trip.count400, 124    ; 4 uses
  %i.hq = getelementptr i8, ptr %.1216, i64 %n.vec616 ; 2 uses
  br label %vec.epilog.vector.body617

vec.epilog.vector.body617:                        ; preds = %vec.epilog.vector.body617, %vec.epilog.ph615
  %index618 = phi i64 [ %vec.epilog.resume.val610, %vec.epilog.ph615 ], [ %index.next621, %vec.epilog.vector.body617 ] ; 3 uses
  %next.gep619 = getelementptr i8, ptr %.1216, i64 %index618
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gl, i64 %index618
  %wide.load620 = load <4 x i8>, ptr %i.hr, align 1, !tbaa !27
  store <4 x i8> %wide.load620, ptr %next.gep619, align 1, !tbaa !27
  %index.next621 = add nuw i64 %index618, 4       ; 2 uses
  %i.hs = icmp eq i64 %index.next621, %n.vec616
  br i1 %i.hs, label %vec.epilog.middle.block622, label %vec.epilog.vector.body617, !llvm.loop !65

vec.epilog.middle.block622:                       ; preds = %vec.epilog.vector.body617
  %cmp.n623 = icmp eq i64 %n.vec616, %wide.trip.count400
  br i1 %cmp.n623, label %._crit_edge331, label %vec.epilog.scalar.ph612.preheader

vec.epilog.scalar.ph612.preheader:                ; preds = %iter.check611, %vector.memcheck594, %vec.epilog.iter.check613, %vec.epilog.middle.block622
  %indvars.iv396.ph = phi i64 [ 0, %iter.check611 ], [ 0, %vector.memcheck594 ], [ %n.vec601, %vec.epilog.iter.check613 ], [ %n.vec616, %vec.epilog.middle.block622 ] ; 4 uses
  %.2217328.ph = phi ptr [ %.1216, %iter.check611 ], [ %.1216, %vector.memcheck594 ], [ %i.gp, %vec.epilog.iter.check613 ], [ %i.hq, %vec.epilog.middle.block622 ] ; 2 uses
  %i.ht = sub nsw i64 %wide.trip.count400, %indvars.iv396.ph
  %xtraiter706 = and i64 %i.ht, 7                 ; 2 uses
  %lcmp.mod707.not = icmp eq i64 %xtraiter706, 0
  br i1 %lcmp.mod707.not, label %vec.epilog.scalar.ph612.prol.loopexit, label %vec.epilog.scalar.ph612.prol

vec.epilog.scalar.ph612.prol:                     ; preds = %vec.epilog.scalar.ph612.preheader, %vec.epilog.scalar.ph612.prol
  %indvars.iv396.prol = phi i64 [ %indvars.iv.next397.prol, %vec.epilog.scalar.ph612.prol ], [ %indvars.iv396.ph, %vec.epilog.scalar.ph612.preheader ] ; 2 uses
  %.2217328.prol = phi ptr [ %i.hw, %vec.epilog.scalar.ph612.prol ], [ %.2217328.ph, %vec.epilog.scalar.ph612.preheader ] ; 2 uses
  %prol.iter708 = phi i64 [ %prol.iter708.next, %vec.epilog.scalar.ph612.prol ], [ 0, %vec.epilog.scalar.ph612.preheader ]
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gl, i64 %indvars.iv396.prol
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !27
  %i.hw = getelementptr inbounds nuw i8, ptr %.2217328.prol, i64 1 ; 3 uses
  store i8 %i.hv, ptr %.2217328.prol, align 1, !tbaa !27
  %indvars.iv.next397.prol = add nuw nsw i64 %indvars.iv396.prol, 1 ; 2 uses
  %prol.iter708.next = add i64 %prol.iter708, 1   ; 2 uses
  %prol.iter708.cmp.not = icmp eq i64 %prol.iter708.next, %xtraiter706
  br i1 %prol.iter708.cmp.not, label %vec.epilog.scalar.ph612.prol.loopexit, label %vec.epilog.scalar.ph612.prol, !llvm.loop !66

vec.epilog.scalar.ph612.prol.loopexit:            ; preds = %vec.epilog.scalar.ph612.prol, %vec.epilog.scalar.ph612.preheader
  %.lcssa673.unr = phi ptr [ poison, %vec.epilog.scalar.ph612.preheader ], [ %i.hw, %vec.epilog.scalar.ph612.prol ]
  %indvars.iv396.unr = phi i64 [ %indvars.iv396.ph, %vec.epilog.scalar.ph612.preheader ], [ %indvars.iv.next397.prol, %vec.epilog.scalar.ph612.prol ]
  %.2217328.unr = phi ptr [ %.2217328.ph, %vec.epilog.scalar.ph612.preheader ], [ %i.hw, %vec.epilog.scalar.ph612.prol ]
  %i.hx = sub nsw i64 %indvars.iv396.ph, %wide.trip.count400
  %i.hy = icmp ugt i64 %i.hx, -8
  br i1 %i.hy, label %._crit_edge331, label %vec.epilog.scalar.ph612

bb.ak:                                            ; preds = %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge
  %i.hz = zext nneg i8 %.1208 to i32
  %.neg253 = sub nsw i32 %i.hz, %.lcssa
  %i.ia = sext i32 %.neg253 to i64
  %i.ib = getelementptr inbounds i8, ptr %.2221.lcssa, i64 %i.ia ; 2 uses
  %i.ic = icmp slt i8 %.1208, %.2205.lcssa
  br i1 %i.ic, label %iter.check579, label %._crit_edge326

iter.check579:                                    ; preds = %bb.aa, %bb.ad, %bb.ak
  %i.id = phi ptr [ %i.ib, %bb.ak ], [ %.0219294, %bb.ad ], [ %.0219294, %bb.aa ] ; 7 uses
  %.1208430440456 = phi i8 [ %.1208, %bb.ak ], [ 0, %bb.ad ], [ 0, %bb.aa ]
  %.1216428441455 = phi ptr [ %.1216, %bb.ak ], [ %.0215295, %bb.ad ], [ %.0215295, %bb.aa ] ; 4 uses
  %.2205.lcssa443453 = phi i8 [ %.2205.lcssa, %bb.ak ], [ 1, %bb.ad ], [ 1, %bb.aa ] ; 5 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 7 uses
  %i.if = zext i8 %.1208430440456 to i64          ; 8 uses
  %wide.trip.count394 = zext nneg i8 %.2205.lcssa443453 to i64 ; 4 uses
  %i.ig = sub nsw i64 %wide.trip.count394, %i.if  ; 7 uses
  %min.iters.check564 = icmp ult i64 %i.ig, 8
  br i1 %min.iters.check564, label %vec.epilog.scalar.ph580.preheader, label %vector.memcheck562

vector.memcheck562:                               ; preds = %iter.check579
  %i.ih = ptrtoaddr ptr %i.id to i64
  %i.ii = add i64 %3, %i.if
  %i.ij = sub i64 %i.ii, %i.ih
  %i.ik = add i64 %i.ij, 64
  %diff.check563 = icmp ult i64 %i.ik, 31
  br i1 %diff.check563, label %vec.epilog.scalar.ph580.preheader, label %vector.main.loop.iter.check565

vector.main.loop.iter.check565:                   ; preds = %vector.memcheck562
  %min.iters.check566 = icmp ult i64 %i.ig, 32
  br i1 %min.iters.check566, label %vec.epilog.ph583, label %vector.ph567

vector.ph567:                                     ; preds = %vector.main.loop.iter.check565
  %i.il = and i64 %i.ig, 24
  %n.vec568 = and i64 %i.ig, -32                  ; 5 uses
  %i.im = add nsw i64 %n.vec568, %i.if
  %i.in = getelementptr i8, ptr %i.id, i64 %n.vec568 ; 2 uses
  %invariant.gep759 = getelementptr i8, ptr %i.ie, i64 %i.if
  br label %vector.body569

vector.body569:                                   ; preds = %vector.ph567, %vector.body569
  %index570 = phi i64 [ 0, %vector.ph567 ], [ %index.next574, %vector.body569 ] ; 3 uses
  %next.gep571 = getelementptr i8, ptr %i.id, i64 %index570 ; 2 uses
  %i.io = getelementptr i8, ptr %next.gep571, i64 16
  %wide.load572 = load <16 x i8>, ptr %next.gep571, align 1, !tbaa !27
  %wide.load573 = load <16 x i8>, ptr %i.io, align 1, !tbaa !27
  %gep760 = getelementptr i8, ptr %invariant.gep759, i64 %index570 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %gep760, i64 16
  store <16 x i8> %wide.load572, ptr %gep760, align 1, !tbaa !27
  store <16 x i8> %wide.load573, ptr %i.ip, align 1, !tbaa !27
  %index.next574 = add nuw i64 %index570, 32      ; 2 uses
  %i.iq = icmp eq i64 %index.next574, %n.vec568
  br i1 %i.iq, label %middle.block575, label %vector.body569, !llvm.loop !67

middle.block575:                                  ; preds = %vector.body569
  %cmp.n576 = icmp eq i64 %i.ig, %n.vec568
  br i1 %cmp.n576, label %._crit_edge326, label %vec.epilog.iter.check581

vec.epilog.iter.check581:                         ; preds = %middle.block575
  %min.epilog.iters.check582 = icmp eq i64 %i.il, 0
  br i1 %min.epilog.iters.check582, label %vec.epilog.scalar.ph580.preheader, label %vec.epilog.ph583, !prof !76

vec.epilog.ph583:                                 ; preds = %vector.main.loop.iter.check565, %vec.epilog.iter.check581
  %vec.epilog.resume.val577 = phi i64 [ %n.vec568, %vec.epilog.iter.check581 ], [ 0, %vector.main.loop.iter.check565 ]
  %n.vec584 = and i64 %i.ig, -8                   ; 4 uses
  %i.ir = add nsw i64 %n.vec584, %i.if
  %i.is = getelementptr i8, ptr %i.id, i64 %n.vec584 ; 2 uses
  %invariant.gep761 = getelementptr i8, ptr %i.ie, i64 %i.if
  br label %vec.epilog.vector.body585

vec.epilog.vector.body585:                        ; preds = %vec.epilog.vector.body585, %vec.epilog.ph583
  %index586 = phi i64 [ %vec.epilog.resume.val577, %vec.epilog.ph583 ], [ %index.next589, %vec.epilog.vector.body585 ] ; 3 uses
  %next.gep587 = getelementptr i8, ptr %i.id, i64 %index586
  %wide.load588 = load <8 x i8>, ptr %next.gep587, align 1, !tbaa !27
  %gep762 = getelementptr i8, ptr %invariant.gep761, i64 %index586
  store <8 x i8> %wide.load588, ptr %gep762, align 1, !tbaa !27
  %index.next589 = add nuw i64 %index586, 8       ; 2 uses
  %i.it = icmp eq i64 %index.next589, %n.vec584
  br i1 %i.it, label %vec.epilog.middle.block590, label %vec.epilog.vector.body585, !llvm.loop !68

vec.epilog.middle.block590:                       ; preds = %vec.epilog.vector.body585
  %cmp.n591 = icmp eq i64 %i.ig, %n.vec584
  br i1 %cmp.n591, label %._crit_edge326, label %vec.epilog.scalar.ph580.preheader

vec.epilog.scalar.ph580.preheader:                ; preds = %iter.check579, %vector.memcheck562, %vec.epilog.iter.check581, %vec.epilog.middle.block590
  %indvars.iv390.ph = phi i64 [ %i.if, %iter.check579 ], [ %i.if, %vector.memcheck562 ], [ %i.im, %vec.epilog.iter.check581 ], [ %i.ir, %vec.epilog.middle.block590 ] ; 4 uses
  %.4322.ph = phi ptr [ %i.id, %iter.check579 ], [ %i.id, %vector.memcheck562 ], [ %i.in, %vec.epilog.iter.check581 ], [ %i.is, %vec.epilog.middle.block590 ] ; 2 uses
  %i.iu = sub nsw i64 %wide.trip.count394, %indvars.iv390.ph
  %xtraiter703 = and i64 %i.iu, 3                 ; 2 uses
  %lcmp.mod704.not = icmp eq i64 %xtraiter703, 0
  br i1 %lcmp.mod704.not, label %vec.epilog.scalar.ph580.prol.loopexit, label %vec.epilog.scalar.ph580.prol

vec.epilog.scalar.ph580.prol:                     ; preds = %vec.epilog.scalar.ph580.preheader, %vec.epilog.scalar.ph580.prol
  %indvars.iv390.prol = phi i64 [ %indvars.iv.next391.prol, %vec.epilog.scalar.ph580.prol ], [ %indvars.iv390.ph, %vec.epilog.scalar.ph580.preheader ] ; 2 uses
  %.4322.prol = phi ptr [ %i.iv, %vec.epilog.scalar.ph580.prol ], [ %.4322.ph, %vec.epilog.scalar.ph580.preheader ] ; 2 uses
  %prol.iter705 = phi i64 [ %prol.iter705.next, %vec.epilog.scalar.ph580.prol ], [ 0, %vec.epilog.scalar.ph580.preheader ]
  %i.iv = getelementptr inbounds nuw i8, ptr %.4322.prol, i64 1 ; 3 uses
  %i.iw = load i8, ptr %.4322.prol, align 1, !tbaa !27
  %indvars.iv.next391.prol = add nuw nsw i64 %indvars.iv390.prol, 1 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ie, i64 %indvars.iv390.prol
  store i8 %i.iw, ptr %i.ix, align 1, !tbaa !27
  %prol.iter705.next = add i64 %prol.iter705, 1   ; 2 uses
  %prol.iter705.cmp.not = icmp eq i64 %prol.iter705.next, %xtraiter703
  br i1 %prol.iter705.cmp.not, label %vec.epilog.scalar.ph580.prol.loopexit, label %vec.epilog.scalar.ph580.prol, !llvm.loop !69

vec.epilog.scalar.ph580.prol.loopexit:            ; preds = %vec.epilog.scalar.ph580.prol, %vec.epilog.scalar.ph580.preheader
  %.lcssa674.unr = phi ptr [ poison, %vec.epilog.scalar.ph580.preheader ], [ %i.iv, %vec.epilog.scalar.ph580.prol ]
  %indvars.iv390.unr = phi i64 [ %indvars.iv390.ph, %vec.epilog.scalar.ph580.preheader ], [ %indvars.iv.next391.prol, %vec.epilog.scalar.ph580.prol ]
  %.4322.unr = phi ptr [ %.4322.ph, %vec.epilog.scalar.ph580.preheader ], [ %i.iv, %vec.epilog.scalar.ph580.prol ]
  %i.iy = sub nsw i64 %indvars.iv390.ph, %wide.trip.count394
  %i.iz = icmp ugt i64 %i.iy, -4
  br i1 %i.iz, label %._crit_edge326, label %vec.epilog.scalar.ph580

vec.epilog.scalar.ph580:                          ; preds = %vec.epilog.scalar.ph580.prol.loopexit, %vec.epilog.scalar.ph580
  %indvars.iv390 = phi i64 [ %indvars.iv.next391.3, %vec.epilog.scalar.ph580 ], [ %indvars.iv390.unr, %vec.epilog.scalar.ph580.prol.loopexit ] ; 5 uses
  %.4322 = phi ptr [ %i.jl, %vec.epilog.scalar.ph580 ], [ %.4322.unr, %vec.epilog.scalar.ph580.prol.loopexit ] ; 5 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.4322, i64 1
  %i.jb = load i8, ptr %.4322, align 1, !tbaa !27
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ie, i64 %indvars.iv390
  store i8 %i.jb, ptr %i.jc, align 1, !tbaa !27
  %i.jd = getelementptr inbounds nuw i8, ptr %.4322, i64 2
  %i.je = load i8, ptr %i.ja, align 1, !tbaa !27
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ie, i64 %indvars.iv390
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 1
  store i8 %i.je, ptr %i.jg, align 1, !tbaa !27
  %i.jh = getelementptr inbounds nuw i8, ptr %.4322, i64 3
  %i.ji = load i8, ptr %i.jd, align 1, !tbaa !27
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ie, i64 %indvars.iv390
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 2
  store i8 %i.ji, ptr %i.jk, align 1, !tbaa !27
  %i.jl = getelementptr inbounds nuw i8, ptr %.4322, i64 4 ; 2 uses
  %i.jm = load i8, ptr %i.jh, align 1, !tbaa !27
  %indvars.iv.next391.3 = add nuw nsw i64 %indvars.iv390, 4 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ie, i64 %indvars.iv390
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 3
  store i8 %i.jm, ptr %i.jo, align 1, !tbaa !27
  %exitcond395.not.3 = icmp eq i64 %indvars.iv.next391.3, %wide.trip.count394
  br i1 %exitcond395.not.3, label %._crit_edge326, label %vec.epilog.scalar.ph580, !llvm.loop !70

._crit_edge326:                                   ; preds = %vec.epilog.scalar.ph580.prol.loopexit, %vec.epilog.scalar.ph580, %middle.block575, %vec.epilog.middle.block590, %bb.ak
  %.1216428441454 = phi ptr [ %.1216, %bb.ak ], [ %.1216428441455, %middle.block575 ], [ %.1216428441455, %vec.epilog.middle.block590 ], [ %.1216428441455, %vec.epilog.scalar.ph580 ], [ %.1216428441455, %vec.epilog.scalar.ph580.prol.loopexit ]
  %.2205.lcssa443452 = phi i8 [ %.2205.lcssa, %bb.ak ], [ %.2205.lcssa443453, %middle.block575 ], [ %.2205.lcssa443453, %vec.epilog.middle.block590 ], [ %.2205.lcssa443453, %vec.epilog.scalar.ph580 ], [ %.2205.lcssa443453, %vec.epilog.scalar.ph580.prol.loopexit ]
  %.4.lcssa = phi ptr [ %i.ib, %bb.ak ], [ %i.in, %middle.block575 ], [ %i.is, %vec.epilog.middle.block590 ], [ %.lcssa674.unr, %vec.epilog.scalar.ph580.prol.loopexit ], [ %i.jl, %vec.epilog.scalar.ph580 ]
  store i8 %.2205.lcssa443452, ptr %i.o, align 8, !tbaa !39
  store ptr %.4.lcssa, ptr %i.c, align 8, !tbaa !35
  store ptr %.1216428441454, ptr %i.g, align 8, !tbaa !18
  store i32 12, ptr %2, align 4, !tbaa !30
  br label %bb.bb

vec.epilog.scalar.ph612:                          ; preds = %vec.epilog.scalar.ph612.prol.loopexit, %vec.epilog.scalar.ph612
  %indvars.iv396 = phi i64 [ %indvars.iv.next397.7, %vec.epilog.scalar.ph612 ], [ %indvars.iv396.unr, %vec.epilog.scalar.ph612.prol.loopexit ] ; 9 uses
  %.2217328 = phi ptr [ %i.kt, %vec.epilog.scalar.ph612 ], [ %.2217328.unr, %vec.epilog.scalar.ph612.prol.loopexit ] ; 9 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.gl, i64 %indvars.iv396
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !27
  %i.jr = getelementptr inbounds nuw i8, ptr %.2217328, i64 1
  store i8 %i.jq, ptr %.2217328, align 1, !tbaa !27
  %i.js = getelementptr inbounds nuw i8, ptr %i.gl, i64 %indvars.iv396
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 1
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !27
  %i.jv = getelementptr inbounds nuw i8, ptr %.2217328, i64 2
  store i8 %i.ju, ptr %i.jr, align 1, !tbaa !27
  %i.jw = getelementptr inbounds nuw i8, ptr %i.gl, i64 %indvars.iv396
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 2
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !27
  %i.jz = getelementptr inbounds nuw i8, ptr %.2217328, i64 3
  store i8 %i.jy, ptr %i.jv, align 1, !tbaa !27
  %i.ka = getelementptr inbounds nuw i8, ptr %i.gl, i64 %indvars.iv396
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 3
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !27
  %i.kd = getelementptr inbounds nuw i8, ptr %.2217328, i64 4
  store i8 %i.kc, ptr %i.jz, align 1, !tbaa !27
  %i.ke = getelementptr inbounds nuw i8, ptr %i.gl, i64 %indvars.iv396
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 4
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !27
  %i.kh = getelementptr inbounds nuw i8, ptr %.2217328, i64 5
  store i8 %i.kg, ptr %i.kd, align 1, !tbaa !27
  %i.ki = getelementptr inbounds nuw i8, ptr %i.gl, i64 %indvars.iv396
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 5
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !27
  %i.kl = getelementptr inbounds nuw i8, ptr %.2217328, i64 6
  store i8 %i.kk, ptr %i.kh, align 1, !tbaa !27
  %i.km = getelementptr inbounds nuw i8, ptr %i.gl, i64 %indvars.iv396
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 6
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !27
  %i.kp = getelementptr inbounds nuw i8, ptr %.2217328, i64 7
  store i8 %i.ko, ptr %i.kl, align 1, !tbaa !27
  %i.kq = getelementptr inbounds nuw i8, ptr %i.gl, i64 %indvars.iv396
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 7
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !27
  %i.kt = getelementptr inbounds nuw i8, ptr %.2217328, i64 8 ; 2 uses
  store i8 %i.ks, ptr %i.kp, align 1, !tbaa !27
  %indvars.iv.next397.7 = add nuw nsw i64 %indvars.iv396, 8 ; 2 uses
  %exitcond401.not.7 = icmp eq i64 %indvars.iv.next397.7, %wide.trip.count400
  br i1 %exitcond401.not.7, label %._crit_edge331, label %vec.epilog.scalar.ph612, !llvm.loop !71

._crit_edge331:                                   ; preds = %vec.epilog.scalar.ph612.prol.loopexit, %vec.epilog.scalar.ph612, %middle.block608, %vec.epilog.middle.block622, %.preheader
  %.2217.lcssa = phi ptr [ %.1216, %.preheader ], [ %i.hq, %vec.epilog.middle.block622 ], [ %i.gp, %middle.block608 ], [ %.lcssa673.unr, %vec.epilog.scalar.ph612.prol.loopexit ], [ %i.kt, %vec.epilog.scalar.ph612 ] ; 23 uses
  %.0.lcssa = phi i8 [ 0, %.preheader ], [ %.1208, %vec.epilog.middle.block622 ], [ %.1208, %middle.block608 ], [ %.1208, %vec.epilog.scalar.ph612 ], [ %.1208, %vec.epilog.scalar.ph612.prol.loopexit ] ; 5 uses
  %.2217.lcssa627 = ptrtoaddr ptr %.2217.lcssa to i64
  %i.ku = zext nneg i8 %.1208 to i32
  %.neg249 = sub nsw i32 %i.ku, %.1202
  %i.kv = sext i32 %.neg249 to i64
  %i.kw = getelementptr inbounds i8, ptr %.2221.lcssa, i64 %i.kv ; 22 uses
  %i.kx = icmp slt i8 %.0.lcssa, %.2205.lcssa
  br i1 %i.kx, label %iter.check647, label %._crit_edge339

iter.check647:                                    ; preds = %._crit_edge331
  %i.ky = xor i8 %.1208, -1
  %i.kz = add i8 %.2205.lcssa, %i.ky              ; 3 uses
  %i.la = zext i8 %i.kz to i64
  %i.lb = add nuw nsw i64 %i.la, 1                ; 5 uses
  %min.iters.check630 = icmp ult i8 %i.kz, 3
  br i1 %min.iters.check630, label %.lr.ph338.preheader, label %vector.memcheck626

vector.memcheck626:                               ; preds = %iter.check647
  %i.lc = sext i32 %.1202 to i64
  %4 = add i64 %.2217.lcssa627, %i.lc
  %i.ld = zext nneg i8 %.1208 to i64
  %i.le = add i64 %.2221.lcssa628, %i.ld
  %i.lf = sub i64 %i.le, %4
  %diff.check629 = icmp ugt i64 %i.lf, -32
  br i1 %diff.check629, label %.lr.ph338.preheader, label %vector.main.loop.iter.check631

vector.main.loop.iter.check631:                   ; preds = %vector.memcheck626
  %min.iters.check632 = icmp ult i8 %i.kz, 31
  br i1 %min.iters.check632, label %vec.epilog.ph651, label %vector.ph633

vector.ph633:                                     ; preds = %vector.main.loop.iter.check631
  %i.lg = and i64 %i.lb, 28
  %n.vec634 = and i64 %i.lb, 480                  ; 12 uses
  %i.lh = trunc i64 %n.vec634 to i8
  %i.li = add i8 %.0.lcssa, %i.lh
  %i.lj = getelementptr i8, ptr %.2217.lcssa, i64 %n.vec634 ; 2 uses
  %i.lk = getelementptr i8, ptr %i.kw, i64 %n.vec634 ; 2 uses
  %i.ll = getelementptr i8, ptr %i.kw, i64 16
  %wide.load639 = load <16 x i8>, ptr %i.kw, align 1, !tbaa !27
  %wide.load640 = load <16 x i8>, ptr %i.ll, align 1, !tbaa !27
  %i.lm = getelementptr i8, ptr %.2217.lcssa, i64 16
  store <16 x i8> %wide.load639, ptr %.2217.lcssa, align 1, !tbaa !27
  store <16 x i8> %wide.load640, ptr %i.lm, align 1, !tbaa !27
  %i.ln = icmp eq i64 %n.vec634, 32
  br i1 %i.ln, label %middle.block642, label %vector.body635.1

vector.body635.1:                                 ; preds = %vector.ph633
  %next.gep637.1 = getelementptr i8, ptr %.2217.lcssa, i64 32
  %next.gep638.1 = getelementptr i8, ptr %i.kw, i64 32
  %i.lo = getelementptr i8, ptr %i.kw, i64 48
  %wide.load639.1 = load <16 x i8>, ptr %next.gep638.1, align 1, !tbaa !27
  %wide.load640.1 = load <16 x i8>, ptr %i.lo, align 1, !tbaa !27
  %i.lp = getelementptr i8, ptr %.2217.lcssa, i64 48
  store <16 x i8> %wide.load639.1, ptr %next.gep637.1, align 1, !tbaa !27
  store <16 x i8> %wide.load640.1, ptr %i.lp, align 1, !tbaa !27
  %i.lq = icmp eq i64 %n.vec634, 64
  br i1 %i.lq, label %middle.block642, label %vector.body635.2

vector.body635.2:                                 ; preds = %vector.body635.1
  %next.gep637.2 = getelementptr i8, ptr %.2217.lcssa, i64 64
  %next.gep638.2 = getelementptr i8, ptr %i.kw, i64 64
  %i.lr = getelementptr i8, ptr %i.kw, i64 80
  %wide.load639.2 = load <16 x i8>, ptr %next.gep638.2, align 1, !tbaa !27
  %wide.load640.2 = load <16 x i8>, ptr %i.lr, align 1, !tbaa !27
  %i.ls = getelementptr i8, ptr %.2217.lcssa, i64 80
  store <16 x i8> %wide.load639.2, ptr %next.gep637.2, align 1, !tbaa !27
  store <16 x i8> %wide.load640.2, ptr %i.ls, align 1, !tbaa !27
  %i.lt = icmp eq i64 %n.vec634, 96
  br i1 %i.lt, label %middle.block642, label %vector.body635.3

vector.body635.3:                                 ; preds = %vector.body635.2
  %next.gep637.3 = getelementptr i8, ptr %.2217.lcssa, i64 96
  %next.gep638.3 = getelementptr i8, ptr %i.kw, i64 96
  %i.lu = getelementptr i8, ptr %i.kw, i64 112
  %wide.load639.3 = load <16 x i8>, ptr %next.gep638.3, align 1, !tbaa !27
  %wide.load640.3 = load <16 x i8>, ptr %i.lu, align 1, !tbaa !27
  %i.lv = getelementptr i8, ptr %.2217.lcssa, i64 112
  store <16 x i8> %wide.load639.3, ptr %next.gep637.3, align 1, !tbaa !27
  store <16 x i8> %wide.load640.3, ptr %i.lv, align 1, !tbaa !27
  %i.lw = icmp eq i64 %n.vec634, 128
  br i1 %i.lw, label %middle.block642, label %vector.body635.4

vector.body635.4:                                 ; preds = %vector.body635.3
  %next.gep637.4 = getelementptr i8, ptr %.2217.lcssa, i64 128
  %next.gep638.4 = getelementptr i8, ptr %i.kw, i64 128
  %i.lx = getelementptr i8, ptr %i.kw, i64 144
  %wide.load639.4 = load <16 x i8>, ptr %next.gep638.4, align 1, !tbaa !27
  %wide.load640.4 = load <16 x i8>, ptr %i.lx, align 1, !tbaa !27
  %i.ly = getelementptr i8, ptr %.2217.lcssa, i64 144
  store <16 x i8> %wide.load639.4, ptr %next.gep637.4, align 1, !tbaa !27
  store <16 x i8> %wide.load640.4, ptr %i.ly, align 1, !tbaa !27
  %i.lz = icmp eq i64 %n.vec634, 160
  br i1 %i.lz, label %middle.block642, label %vector.body635.5

vector.body635.5:                                 ; preds = %vector.body635.4
  %next.gep637.5 = getelementptr i8, ptr %.2217.lcssa, i64 160
  %next.gep638.5 = getelementptr i8, ptr %i.kw, i64 160
  %i.ma = getelementptr i8, ptr %i.kw, i64 176
  %wide.load639.5 = load <16 x i8>, ptr %next.gep638.5, align 1, !tbaa !27
  %wide.load640.5 = load <16 x i8>, ptr %i.ma, align 1, !tbaa !27
  %i.mb = getelementptr i8, ptr %.2217.lcssa, i64 176
  store <16 x i8> %wide.load639.5, ptr %next.gep637.5, align 1, !tbaa !27
  store <16 x i8> %wide.load640.5, ptr %i.mb, align 1, !tbaa !27
  %i.mc = icmp eq i64 %n.vec634, 192
  br i1 %i.mc, label %middle.block642, label %vector.body635.6

vector.body635.6:                                 ; preds = %vector.body635.5
  %next.gep637.6 = getelementptr i8, ptr %.2217.lcssa, i64 192
  %next.gep638.6 = getelementptr i8, ptr %i.kw, i64 192
  %i.md = getelementptr i8, ptr %i.kw, i64 208
  %wide.load639.6 = load <16 x i8>, ptr %next.gep638.6, align 1, !tbaa !27
  %wide.load640.6 = load <16 x i8>, ptr %i.md, align 1, !tbaa !27
  %i.me = getelementptr i8, ptr %.2217.lcssa, i64 208
  store <16 x i8> %wide.load639.6, ptr %next.gep637.6, align 1, !tbaa !27
  store <16 x i8> %wide.load640.6, ptr %i.me, align 1, !tbaa !27
  %i.mf = icmp eq i64 %n.vec634, 224
  br i1 %i.mf, label %middle.block642, label %vector.body635.7

vector.body635.7:                                 ; preds = %vector.body635.6
  %next.gep637.7 = getelementptr i8, ptr %.2217.lcssa, i64 224
  %next.gep638.7 = getelementptr i8, ptr %i.kw, i64 224
  %i.mg = getelementptr i8, ptr %i.kw, i64 240
  %wide.load639.7 = load <16 x i8>, ptr %next.gep638.7, align 1, !tbaa !27
  %wide.load640.7 = load <16 x i8>, ptr %i.mg, align 1, !tbaa !27
  %i.mh = getelementptr i8, ptr %.2217.lcssa, i64 240
  store <16 x i8> %wide.load639.7, ptr %next.gep637.7, align 1, !tbaa !27
  store <16 x i8> %wide.load640.7, ptr %i.mh, align 1, !tbaa !27
  br label %middle.block642

middle.block642:                                  ; preds = %vector.body635.7, %vector.body635.6, %vector.body635.5, %vector.body635.4, %vector.body635.3, %vector.body635.2, %vector.body635.1, %vector.ph633
  %cmp.n643 = icmp eq i64 %i.lb, %n.vec634
  br i1 %cmp.n643, label %._crit_edge339, label %vec.epilog.iter.check649

vec.epilog.iter.check649:                         ; preds = %middle.block642
  %min.epilog.iters.check650 = icmp eq i64 %i.lg, 0
  br i1 %min.epilog.iters.check650, label %.lr.ph338.preheader, label %vec.epilog.ph651, !prof !45

vec.epilog.ph651:                                 ; preds = %vector.main.loop.iter.check631, %vec.epilog.iter.check649
  %vec.epilog.resume.val644 = phi i64 [ %n.vec634, %vec.epilog.iter.check649 ], [ 0, %vector.main.loop.iter.check631 ]
  %n.vec652 = and i64 %i.lb, 508                  ; 5 uses
  %i.mi = trunc i64 %n.vec652 to i8
  %i.mj = add i8 %.0.lcssa, %i.mi
  %i.mk = getelementptr i8, ptr %.2217.lcssa, i64 %n.vec652 ; 2 uses
  %i.ml = getelementptr i8, ptr %i.kw, i64 %n.vec652 ; 2 uses
  br label %vec.epilog.vector.body653

vec.epilog.vector.body653:                        ; preds = %vec.epilog.vector.body653, %vec.epilog.ph651
  %index654 = phi i64 [ %vec.epilog.resume.val644, %vec.epilog.ph651 ], [ %index.next658, %vec.epilog.vector.body653 ] ; 3 uses
  %next.gep655 = getelementptr i8, ptr %.2217.lcssa, i64 %index654
  %next.gep656 = getelementptr i8, ptr %i.kw, i64 %index654
  %wide.load657 = load <4 x i8>, ptr %next.gep656, align 1, !tbaa !27
  store <4 x i8> %wide.load657, ptr %next.gep655, align 1, !tbaa !27
  %index.next658 = add nuw i64 %index654, 4       ; 2 uses
  %i.mm = icmp eq i64 %index.next658, %n.vec652
  br i1 %i.mm, label %vec.epilog.middle.block659, label %vec.epilog.vector.body653, !llvm.loop !72

vec.epilog.middle.block659:                       ; preds = %vec.epilog.vector.body653
  %cmp.n660 = icmp eq i64 %i.lb, %n.vec652
  br i1 %cmp.n660, label %._crit_edge339, label %.lr.ph338.preheader

.lr.ph338.preheader:                              ; preds = %iter.check647, %vector.memcheck626, %vec.epilog.iter.check649, %vec.epilog.middle.block659
  %.1336.ph = phi i8 [ %.0.lcssa, %iter.check647 ], [ %.0.lcssa, %vector.memcheck626 ], [ %i.li, %vec.epilog.iter.check649 ], [ %i.mj, %vec.epilog.middle.block659 ] ; 4 uses
  %.3218335.ph = phi ptr [ %.2217.lcssa, %iter.check647 ], [ %.2217.lcssa, %vector.memcheck626 ], [ %i.lj, %vec.epilog.iter.check649 ], [ %i.mk, %vec.epilog.middle.block659 ] ; 2 uses
  %.5334.ph = phi ptr [ %i.kw, %iter.check647 ], [ %i.kw, %vector.memcheck626 ], [ %i.lk, %vec.epilog.iter.check649 ], [ %i.ml, %vec.epilog.middle.block659 ] ; 2 uses
  %i.mn = sub i8 %.2205.lcssa, %.1336.ph
  %xtraiter709 = and i8 %i.mn, 7                  ; 2 uses
  %lcmp.mod710.not = icmp eq i8 %xtraiter709, 0
  br i1 %lcmp.mod710.not, label %.lr.ph338.prol.loopexit, label %.lr.ph338.prol

.lr.ph338.prol:                                   ; preds = %.lr.ph338.preheader, %.lr.ph338.prol
  %.1336.prol = phi i8 [ %i.mr, %.lr.ph338.prol ], [ %.1336.ph, %.lr.ph338.preheader ]
  %.3218335.prol = phi ptr [ %i.mq, %.lr.ph338.prol ], [ %.3218335.ph, %.lr.ph338.preheader ] ; 2 uses
  %.5334.prol = phi ptr [ %i.mo, %.lr.ph338.prol ], [ %.5334.ph, %.lr.ph338.preheader ] ; 2 uses
  %prol.iter711 = phi i8 [ %prol.iter711.next, %.lr.ph338.prol ], [ 0, %.lr.ph338.preheader ]
  %i.mo = getelementptr inbounds nuw i8, ptr %.5334.prol, i64 1 ; 3 uses
  %i.mp = load i8, ptr %.5334.prol, align 1, !tbaa !27
  %i.mq = getelementptr inbounds nuw i8, ptr %.3218335.prol, i64 1 ; 3 uses
  store i8 %i.mp, ptr %.3218335.prol, align 1, !tbaa !27
  %i.mr = add nuw nsw i8 %.1336.prol, 1           ; 2 uses
  %prol.iter711.next = add i8 %prol.iter711, 1    ; 2 uses
  %prol.iter711.cmp.not = icmp eq i8 %prol.iter711.next, %xtraiter709
  br i1 %prol.iter711.cmp.not, label %.lr.ph338.prol.loopexit, label %.lr.ph338.prol, !llvm.loop !73

.lr.ph338.prol.loopexit:                          ; preds = %.lr.ph338.prol, %.lr.ph338.preheader
  %.lcssa672.unr = phi ptr [ poison, %.lr.ph338.preheader ], [ %i.mo, %.lr.ph338.prol ]
  %.lcssa671.unr = phi ptr [ poison, %.lr.ph338.preheader ], [ %i.mq, %.lr.ph338.prol ]
  %.1336.unr = phi i8 [ %.1336.ph, %.lr.ph338.preheader ], [ %i.mr, %.lr.ph338.prol ]
  %.3218335.unr = phi ptr [ %.3218335.ph, %.lr.ph338.preheader ], [ %i.mq, %.lr.ph338.prol ]
  %.5334.unr = phi ptr [ %.5334.ph, %.lr.ph338.preheader ], [ %i.mo, %.lr.ph338.prol ]
  %i.ms = sub i8 %.1336.ph, %.2205.lcssa
  %i.mt = icmp ugt i8 %i.ms, -8
  br i1 %i.mt, label %._crit_edge339, label %.lr.ph338

.lr.ph338:                                        ; preds = %.lr.ph338.prol.loopexit, %.lr.ph338
  %.1336 = phi i8 [ %i.ns, %.lr.ph338 ], [ %.1336.unr, %.lr.ph338.prol.loopexit ]
  %.3218335 = phi ptr [ %i.nr, %.lr.ph338 ], [ %.3218335.unr, %.lr.ph338.prol.loopexit ] ; 9 uses
  %.5334 = phi ptr [ %i.np, %.lr.ph338 ], [ %.5334.unr, %.lr.ph338.prol.loopexit ] ; 9 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %.5334, i64 1
  %i.mv = load i8, ptr %.5334, align 1, !tbaa !27
  %i.mw = getelementptr inbounds nuw i8, ptr %.3218335, i64 1
  store i8 %i.mv, ptr %.3218335, align 1, !tbaa !27
  %i.mx = getelementptr inbounds nuw i8, ptr %.5334, i64 2
  %i.my = load i8, ptr %i.mu, align 1, !tbaa !27
  %i.mz = getelementptr inbounds nuw i8, ptr %.3218335, i64 2
  store i8 %i.my, ptr %i.mw, align 1, !tbaa !27
  %i.na = getelementptr inbounds nuw i8, ptr %.5334, i64 3
  %i.nb = load i8, ptr %i.mx, align 1, !tbaa !27
  %i.nc = getelementptr inbounds nuw i8, ptr %.3218335, i64 3
  store i8 %i.nb, ptr %i.mz, align 1, !tbaa !27
  %i.nd = getelementptr inbounds nuw i8, ptr %.5334, i64 4
  %i.ne = load i8, ptr %i.na, align 1, !tbaa !27
  %i.nf = getelementptr inbounds nuw i8, ptr %.3218335, i64 4
  store i8 %i.ne, ptr %i.nc, align 1, !tbaa !27
  %i.ng = getelementptr inbounds nuw i8, ptr %.5334, i64 5
  %i.nh = load i8, ptr %i.nd, align 1, !tbaa !27
  %i.ni = getelementptr inbounds nuw i8, ptr %.3218335, i64 5
  store i8 %i.nh, ptr %i.nf, align 1, !tbaa !27
  %i.nj = getelementptr inbounds nuw i8, ptr %.5334, i64 6
  %i.nk = load i8, ptr %i.ng, align 1, !tbaa !27
  %i.nl = getelementptr inbounds nuw i8, ptr %.3218335, i64 6
  store i8 %i.nk, ptr %i.ni, align 1, !tbaa !27
  %i.nm = getelementptr inbounds nuw i8, ptr %.5334, i64 7
  %i.nn = load i8, ptr %i.nj, align 1, !tbaa !27
end_hunk_0
