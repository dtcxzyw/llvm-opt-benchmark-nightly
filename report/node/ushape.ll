inline.NumInlined: 38
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.uShapeVariables = type { i16, i32, i32, i32, i32, i32 }

@_ZL7araLink = internal unnamed_addr constant [178 x i16] [i16 4385, i16 4897, i16 5377, i16 5921, i16 6403, i16 7457, i16 7939, i16 8961, i16 9475, i16 10499, i16 11523, i16 12547, i16 13571, i16 14593, i16 15105, i16 15617, i16 16129, i16 16643, i16 17667, i16 18691, i16 19715, i16 20739, i16 21763, i16 22787, i16 23811, i16 0, i16 0, i16 0, i16 0, i16 0, i16 3, i16 24835, i16 25859, i16 26883, i16 27923, i16 28931, i16 29955, i16 30979, i16 32001, i16 32513, i16 -32509, i16 260, i16 388, i16 388, i16 388, i16 388, i16 388, i16 836, i16 260, i16 1796, i16 2052, i16 2052, i16 260, i16 0, i16 0, i16 0, i16 0, i16 0, i16 -31487, i16 -30975, i16 -30463, i16 -29951, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1540, i16 9, i16 33, i16 33, i16 0, i16 33, i16 1, i16 1, i16 3, i16 5643, i16 3595, i16 523, i16 3, i16 3, i16 1547, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 10763, i16 3, i16 14345, i16 1, i16 1, i16 1, i16 13321, i16 12809, i16 13833, i16 1, i16 1, i16 15369, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 14857, i16 1, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 15883, i16 3, i16 3, i16 3, i16 3, i16 3, i16 16907, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 19977, i16 20491, i16 3, i16 3, i16 23051, i16 3, i16 21513, i16 22027, i16 1, i16 1, i16 1, i16 -28663, i16 -30455, i16 -30967, i16 -29943, i16 -28151, i16 1, i16 -29175, i16 -21493, i16 1, i16 3, i16 3, i16 -27637, i16 3, i16 24073, i16 24585], align 16
@_ZL9presALink = internal unnamed_addr constant [275 x i8] c"\00\01\00\00\00\00\00\01\02\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\02\03\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\01\02\03\00\01\02\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\02\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\04\04\04\04", align 16
@_ZL9presBLink = internal unnamed_addr constant [144 x i8] c"\03\03\03\00\03\00\03\03\03\03\03\03\03\03\03\03\00\00\01\00\01\00\01\00\01\00\01\02\03\00\01\00\01\02\03\00\01\00\01\02\03\00\01\02\03\00\01\02\03\00\01\02\03\00\01\02\03\00\01\00\01\00\01\00\01\00\01\02\03\00\01\02\03\00\01\02\03\00\01\02\03\00\01\02\03\00\01\02\03\00\01\02\03\00\01\02\03\00\01\02\03\00\01\02\03\00\01\02\03\00\01\02\03\00\01\02\03\00\01\02\03\00\01\02\03\00\01\00\01\00\01\02\03\00\01\00\01\00\01\00\01\00\00\00", align 16
@_ZL13convertFBto06 = internal unnamed_addr constant [176 x i16] [i16 1649, i16 1649, i16 1659, i16 1659, i16 1659, i16 1659, i16 1662, i16 1662, i16 1662, i16 1662, i16 0, i16 0, i16 0, i16 0, i16 1658, i16 1658, i16 1658, i16 1658, i16 0, i16 0, i16 0, i16 0, i16 1657, i16 1657, i16 1657, i16 1657, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1670, i16 1670, i16 1670, i16 1670, i16 0, i16 0, i16 0, i16 0, i16 1677, i16 1677, i16 1676, i16 1676, i16 1678, i16 1678, i16 1672, i16 1672, i16 1688, i16 1688, i16 1681, i16 1681, i16 1705, i16 1705, i16 1705, i16 1705, i16 1711, i16 1711, i16 1711, i16 1711, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1722, i16 1722, i16 1723, i16 1723, i16 1723, i16 1723, i16 1728, i16 1728, i16 1729, i16 1729, i16 1729, i16 1729, i16 1726, i16 1726, i16 1726, i16 1726, i16 1746, i16 1746, i16 1747, i16 1747, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1735, i16 1735, i16 1734, i16 1734, i16 1736, i16 1736, i16 0, i16 1739, i16 1739, i16 1733, i16 1733, i16 1737, i16 1737, i16 1744, i16 1744, i16 1744, i16 1744, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1740, i16 1740, i16 1740, i16 1740], align 16
@_ZL13convertFEto06 = internal unnamed_addr constant [141 x i16] [i16 1611, i16 1611, i16 1612, i16 1612, i16 1613, i16 1613, i16 1614, i16 1614, i16 1615, i16 1615, i16 1616, i16 1616, i16 1617, i16 1617, i16 1618, i16 1618, i16 1569, i16 1570, i16 1570, i16 1571, i16 1571, i16 1572, i16 1572, i16 1573, i16 1573, i16 1574, i16 1574, i16 1574, i16 1574, i16 1575, i16 1575, i16 1576, i16 1576, i16 1576, i16 1576, i16 1577, i16 1577, i16 1578, i16 1578, i16 1578, i16 1578, i16 1579, i16 1579, i16 1579, i16 1579, i16 1580, i16 1580, i16 1580, i16 1580, i16 1581, i16 1581, i16 1581, i16 1581, i16 1582, i16 1582, i16 1582, i16 1582, i16 1583, i16 1583, i16 1584, i16 1584, i16 1585, i16 1585, i16 1586, i16 1586, i16 1587, i16 1587, i16 1587, i16 1587, i16 1588, i16 1588, i16 1588, i16 1588, i16 1589, i16 1589, i16 1589, i16 1589, i16 1590, i16 1590, i16 1590, i16 1590, i16 1591, i16 1591, i16 1591, i16 1591, i16 1592, i16 1592, i16 1592, i16 1592, i16 1593, i16 1593, i16 1593, i16 1593, i16 1594, i16 1594, i16 1594, i16 1594, i16 1601, i16 1601, i16 1601, i16 1601, i16 1602, i16 1602, i16 1602, i16 1602, i16 1603, i16 1603, i16 1603, i16 1603, i16 1604, i16 1604, i16 1604, i16 1604, i16 1605, i16 1605, i16 1605, i16 1605, i16 1606, i16 1606, i16 1606, i16 1606, i16 1607, i16 1607, i16 1607, i16 1607, i16 1608, i16 1608, i16 1609, i16 1609, i16 1610, i16 1610, i16 1610, i16 1610, i16 1628, i16 1628, i16 1629, i16 1629, i16 1630, i16 1630, i16 1631, i16 1631], align 16
@_ZL10shapeTable = internal unnamed_addr constant [4 x [4 x [4 x i8]]] [[4 x [4 x i8]] [[4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] c"\00\01\00\03", [4 x i8] c"\00\01\00\01"], [4 x [4 x i8]] [[4 x i8] c"\00\00\02\02", [4 x i8] c"\00\00\01\02", [4 x i8] c"\00\01\01\02", [4 x i8] c"\00\01\01\03"], [4 x [4 x i8]] [[4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] c"\00\01\00\03", [4 x i8] c"\00\01\00\03"], [4 x [4 x i8]] [[4 x i8] c"\00\00\01\02", [4 x i8] c"\00\00\01\02", [4 x i8] c"\00\01\01\02", [4 x i8] c"\00\01\01\03"]], align 16
@_ZL13IrrelevantPos = internal unnamed_addr constant [8 x i8] c"\00\02\04\06\08\0A\0C\0E", align 1
@_ZL14convertLamAlef = internal unnamed_addr constant [8 x i16] [i16 1570, i16 1570, i16 1571, i16 1571, i16 1573, i16 1573, i16 1575, i16 1575], align 16
@_ZL13yehHamzaToYeh = internal unnamed_addr constant [2 x i16] [i16 -273, i16 -272], align 2
@switch.table._ZL12shapeUnicodePDsiijP10UErrorCodei15uShapeVariables = private unnamed_addr constant [6 x i16] [i16 1628, i16 1629, i16 poison, i16 1630, i16 poison, i16 1631], align 2

; Function Attrs: mustprogress nounwind uwtable
define dso_local i32 @u_shapeArabic_78(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [300 x i16], align 16             ; 5 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %6 = alloca %struct.uShapeVariables, align 8    ; 5 uses
  %7 = alloca %struct.uShapeVariables, align 8    ; 5 uses
  %8 = alloca %struct.uShapeVariables, align 8    ; 5 uses
  %9 = alloca %struct.uShapeVariables, align 8    ; 5 uses
  %i.d = icmp eq ptr %5, null
  br i1 %i.d, label %bb.bo, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %5, align 4
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.c, label %bb.bo

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq ptr %0, null
  %i.h = icmp slt i32 %1, -1
  %or.cond = or i1 %i.g, %i.h
  br i1 %or.cond, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = icmp eq ptr %2, null                     ; 2 uses
  %i.j = icmp ne i32 %3, 0
  %or.cond4 = and i1 %i.i, %i.j
  %i.k = icmp slt i32 %3, 0
  %or.cond6 = or i1 %i.k, %or.cond4
  br i1 %or.cond6, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = and i32 %4, 917504                       ; 5 uses
  %.not322 = icmp ne i32 %i.l, 0                  ; 2 uses
  %i.m = and i32 %4, 24                           ; 4 uses
  %i.n = icmp eq i32 %i.m, 24
  %or.cond346 = and i1 %.not322, %i.n
  br i1 %or.cond346, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = icmp eq i32 %i.m, 16
  %or.cond349 = and i1 %.not322, %i.o
  %i.p = and i32 %4, 512
  %.not323 = icmp ne i32 %i.p, 0
  %or.cond350.not = or i1 %.not323, %or.cond349
  br i1 %or.cond350.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = and i32 %4, 224                          ; 3 uses
  %i.r = icmp eq i32 %i.q, 160
  br i1 %i.r, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = and i32 %4, 65539                        ; 2 uses
  %.not324 = icmp eq i32 %i.s, 0
  %i.t = and i32 %4, 16384
  %.not325 = icmp eq i32 %i.t, 0                  ; 2 uses
  %i.u = and i32 %4, 65563
  %or.cond351384 = icmp eq i32 %i.u, 24
  %or.cond383 = or i1 %or.cond351384, %.not325
  br i1 %or.cond383, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.e, %bb.d, %bb.g, %bb.c
  store i32 1, ptr %5, align 4
  br label %bb.bo

bb.j:                                             ; preds = %bb.h
  switch i32 %i.s, label %bb.k [
    i32 0, label %bb.l
    i32 3, label %bb.l
    i32 2, label %bb.l
    i32 65536, label %bb.l
    i32 1, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  store i32 1, ptr %5, align 4
  br label %bb.bo

bb.l:                                             ; preds = %bb.j, %bb.j, %bb.j, %bb.j, %bb.j
  %i.v = lshr exact i32 %i.l, 17
  switch i32 %i.v, label %bb.m [
    i32 6, label %bb.n
    i32 4, label %bb.n
    i32 3, label %bb.n
    i32 2, label %bb.n
    i32 0, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  store i32 1, ptr %5, align 4
  br label %bb.bo

bb.n:                                             ; preds = %bb.l, %bb.l, %bb.l, %bb.l, %bb.l
  %i.w = icmp eq i32 %1, -1
  br i1 %i.w, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.x = tail call i32 @u_strlen_78(ptr noundef nonnull %0) #10
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0298 = phi i32 [ %i.x, %bb.o ], [ %1, %bb.n ] ; 11 uses
  %i.y = icmp slt i32 %.0298, 1
  br i1 %i.y, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.z = tail call i32 @u_terminateUChars_78(ptr noundef %2, i32 noundef %3, i32 noundef 0, ptr noundef nonnull %5) #10
  br label %bb.bo

bb.r:                                             ; preds = %bb.p
  br i1 %i.i, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not330 = icmp ule ptr %0, %2
  %i.aa = zext nneg i32 %.0298 to i64
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aa
  %i.ac = icmp ult ptr %2, %i.ab
  %or.cond359 = select i1 %.not330, i1 %i.ac, i1 false
  br i1 %or.cond359, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not331 = icmp ule ptr %2, %0
  %i.ad = zext nneg i32 %3 to i64
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ad
  %i.af = icmp ult ptr %0, %i.ae
  %or.cond362 = select i1 %.not331, i1 %i.af, i1 false
  br i1 %or.cond362, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s
  store i32 1, ptr %5, align 4
  br label %bb.bo

bb.v:                                             ; preds = %bb.t, %bb.r
  %i.ag = and i32 %4, 134217728
  %.not332 = icmp eq i32 %i.ag, 0
  %. = select i1 %.not332, i16 8203, i16 -397     ; 4 uses
  %.not333 = icmp eq i32 %i.m, 0
  br i1 %.not333, label %bb.bd, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 0, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 0, ptr %i.c, align 4
  br i1 %.not325, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ah = and i32 %4, 4
  %i.ai = icmp eq i32 %i.ah, 0                    ; 5 uses
  %i.aj = select i1 %i.ai, i32 1, i32 -1          ; 2 uses
  %i.ak = shl nuw nsw i32 %.0298, 1
  %i.al = select i1 %i.ai, i32 -1, i32 %i.ak      ; 2 uses
  %i.am = select i1 %i.ai, i32 %.0298, i32 -1     ; 2 uses
  %i.an = shl nuw nsw i32 %.0298, 2
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.ao) #11 ; 6 uses
  %.not336 = icmp eq ptr %i.ap, null
  br i1 %.not336, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.x
  %i.aq = and i32 %4, 16408
  %i.ar = icmp eq i32 %i.aq, 16408
  %i.as = add nsw i32 %.0298, -1
  %i.at = select i1 %i.ai, i32 0, i32 %i.as
  %i.au = zext nneg i32 %i.at to i64              ; 2 uses
  %i.av = sext i32 %i.aj to i64                   ; 3 uses
  br i1 %i.ar, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.aw = sext i32 %i.al to i64
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.aa
  %indvars.iv410 = phi i64 [ %indvars.iv.next411, %bb.aa ], [ %i.au, %.lr.ph ] ; 2 uses
  %.0283392.us = phi i32 [ %.1284.us, %bb.aa ], [ 0, %.lr.ph ] ; 2 uses
  %.0285391.us = phi i16 [ %.1286.us, %bb.aa ], [ 0, %.lr.ph ]
  %.0289390.us = phi i16 [ %.1290.us, %bb.aa ], [ 0, %.lr.ph ] ; 2 uses
  %.0291389.us = phi i32 [ %.1292.us, %bb.aa ], [ 1, %.lr.ph ]
  %.0296388.us = phi i32 [ %.1297.us, %bb.aa ], [ %i.al, %.lr.ph ] ; 3 uses
  %i.ax = getelementptr inbounds [2 x i8], ptr %0, i64 %indvars.iv410
  %i.ay = load i16, ptr %i.ax, align 2            ; 4 uses
  %i.az = tail call fastcc noundef zeroext i16 @_ZL7getLinkDs(i16 noundef zeroext %i.ay) ; 2 uses
  %i.ba = or i16 %i.az, %.0285391.us
  %i.bb = and i16 %i.ba, 192
  %i.bc = icmp eq i16 %i.bb, 192
  %i.bd = icmp ne i32 %.0291389.us, 0
  %or.cond8.us = and i1 %i.bd, %i.bc
  br i1 %or.cond8.us, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph.split.us
  %i.be = add nsw i32 %.0296388.us, %i.aj         ; 2 uses
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [2 x i8], ptr %i.ap, i64 %i.bf
  store i16 %i.ay, ptr %i.bg, align 2
  %i.bh = add nsw i32 %.0283392.us, 1
end_hunk_0
begin_hunk_1_@u_shapeArabic_78:bb.a
  store i16 %i.im, ptr %i.ik, align 2
  br label %pred.store.continue485

pred.store.continue485:                           ; preds = %pred.store.if484, %pred.store.continue483
  %i.in = extractelement <8 x i1> %i.gb, i64 5
  br i1 %i.in, label %pred.store.if486, label %pred.store.continue487

pred.store.if486:                                 ; preds = %pred.store.continue485
  %i.io = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index457
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 26
  %i.iq = extractelement <8 x i16> %wide.load459, i64 5
  %i.ir = add nuw nsw i16 %i.fu, %i.iq
  store i16 %i.ir, ptr %i.ip, align 2
  br label %pred.store.continue487

pred.store.continue487:                           ; preds = %pred.store.if486, %pred.store.continue485
  %i.is = extractelement <8 x i1> %i.gb, i64 6
  br i1 %i.is, label %pred.store.if488, label %pred.store.continue489

pred.store.if488:                                 ; preds = %pred.store.continue487
  %i.it = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index457
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 28
  %i.iv = extractelement <8 x i16> %wide.load459, i64 6
  %i.iw = add nuw nsw i16 %i.fu, %i.iv
  store i16 %i.iw, ptr %i.iu, align 2
  br label %pred.store.continue489

pred.store.continue489:                           ; preds = %pred.store.if488, %pred.store.continue487
  %i.ix = extractelement <8 x i1> %i.gb, i64 7
  br i1 %i.ix, label %pred.store.if490, label %pred.store.continue491

pred.store.if490:                                 ; preds = %pred.store.continue489
  %i.iy = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index457
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 30
  %i.ja = extractelement <8 x i16> %wide.load459, i64 7
  %i.jb = add nuw nsw i16 %i.fu, %i.ja
  store i16 %i.jb, ptr %i.iz, align 2
  br label %pred.store.continue491

pred.store.continue491:                           ; preds = %pred.store.if490, %pred.store.continue489
  %index.next492 = add nuw i64 %index457, 16      ; 2 uses
  %i.jc = icmp eq i64 %index.next492, %n.vec455
  br i1 %i.jc, label %middle.block493, label %vector.body456, !llvm.loop !11

middle.block493:                                  ; preds = %pred.store.continue491
  %cmp.n494 = icmp eq i64 %n.vec455, %wide.trip.count418
  br i1 %cmp.n494, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block493
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf454, 0
  br i1 %min.epilog.iters.check, label %.lr.ph399.preheader, label %vec.epilog.ph, !prof !12

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec455, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec496 = and i64 %wide.trip.count418, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue506, %vec.epilog.ph
  %index497 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next507, %pred.store.continue506 ] ; 5 uses
  %i.jd = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index497 ; 2 uses
  %wide.load498 = load <4 x i16>, ptr %i.jd, align 2 ; 5 uses
  %i.je = add <4 x i16> %wide.load498, splat (i16 -48)
  %i.jf = icmp ult <4 x i16> %i.je, splat (i16 10) ; 4 uses
  %i.jg = extractelement <4 x i1> %i.jf, i64 0
  br i1 %i.jg, label %pred.store.if499, label %pred.store.continue500

pred.store.if499:                                 ; preds = %vec.epilog.vector.body
  %i.jh = extractelement <4 x i16> %wide.load498, i64 0
  %i.ji = add nuw nsw i16 %i.fu, %i.jh
  store i16 %i.ji, ptr %i.jd, align 2
  br label %pred.store.continue500

pred.store.continue500:                           ; preds = %pred.store.if499, %vec.epilog.vector.body
  %i.jj = extractelement <4 x i1> %i.jf, i64 1
  br i1 %i.jj, label %pred.store.if501, label %pred.store.continue502

pred.store.if501:                                 ; preds = %pred.store.continue500
  %i.jk = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index497
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 2
  %i.jm = extractelement <4 x i16> %wide.load498, i64 1
  %i.jn = add nuw nsw i16 %i.fu, %i.jm
  store i16 %i.jn, ptr %i.jl, align 2
  br label %pred.store.continue502

pred.store.continue502:                           ; preds = %pred.store.if501, %pred.store.continue500
  %i.jo = extractelement <4 x i1> %i.jf, i64 2
  br i1 %i.jo, label %pred.store.if503, label %pred.store.continue504

pred.store.if503:                                 ; preds = %pred.store.continue502
  %i.jp = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index497
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 4
  %i.jr = extractelement <4 x i16> %wide.load498, i64 2
  %i.js = add nuw nsw i16 %i.fu, %i.jr
  store i16 %i.js, ptr %i.jq, align 2
  br label %pred.store.continue504

pred.store.continue504:                           ; preds = %pred.store.if503, %pred.store.continue502
  %i.jt = extractelement <4 x i1> %i.jf, i64 3
  br i1 %i.jt, label %pred.store.if505, label %pred.store.continue506

pred.store.if505:                                 ; preds = %pred.store.continue504
  %i.ju = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index497
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 6
  %i.jw = extractelement <4 x i16> %wide.load498, i64 3
  %i.jx = add nuw nsw i16 %i.fu, %i.jw
  store i16 %i.jx, ptr %i.jv, align 2
  br label %pred.store.continue506

pred.store.continue506:                           ; preds = %pred.store.if505, %pred.store.continue504
  %index.next507 = add nuw i64 %index497, 4       ; 2 uses
  %i.jy = icmp eq i64 %index.next507, %n.vec496
  br i1 %i.jy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !13

vec.epilog.middle.block:                          ; preds = %pred.store.continue506
  %cmp.n508 = icmp eq i64 %n.vec496, %wide.trip.count418
  br i1 %cmp.n508, label %.loopexit, label %.lr.ph399.preheader

.lr.ph399.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv415.ph = phi i64 [ 0, %iter.check ], [ %n.vec455, %vec.epilog.iter.check ], [ %n.vec496, %vec.epilog.middle.block ]
  br label %.lr.ph399

.lr.ph399:                                        ; preds = %.lr.ph399.preheader, %bb.bk
  %indvars.iv415 = phi i64 [ %indvars.iv.next416, %bb.bk ], [ %indvars.iv415.ph, %.lr.ph399.preheader ] ; 2 uses
  %i.jz = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv415 ; 2 uses
  %i.ka = load i16, ptr %i.jz, align 2            ; 2 uses
  %i.kb = add i16 %i.ka, -48
  %i.kc = icmp ult i16 %i.kb, 10
  br i1 %i.kc, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %.lr.ph399
  %i.kd = add nuw nsw i16 %i.fu, %i.ka
  store i16 %i.kd, ptr %i.jz, align 2
  br label %bb.bk

bb.bk:                                            ; preds = %.lr.ph399, %bb.bj
  %indvars.iv.next416 = add nuw nsw i64 %indvars.iv415, 1 ; 2 uses
  %exitcond419.not = icmp eq i64 %indvars.iv.next416, %wide.trip.count418
  br i1 %exitcond419.not, label %.loopexit, label %.lr.ph399, !llvm.loop !14

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.bm
  %indvars.iv412 = phi i64 [ %indvars.iv.next413, %bb.bm ], [ %indvars.iv412.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ke = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv412 ; 2 uses
  %i.kf = load i16, ptr %i.ke, align 2            ; 2 uses
  %i.kg = zext i16 %i.kf to i32
  %i.kh = sub nsw i32 %i.kg, %i.ec
  %i.ki = icmp ult i32 %i.kh, 10
  br i1 %i.ki, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %scalar.ph
  %i.kj = add i16 %.neg, %i.kf
  store i16 %i.kj, ptr %i.ke, align 2
  br label %bb.bm

bb.bm:                                            ; preds = %scalar.ph, %bb.bl
  %indvars.iv.next413 = add nuw nsw i64 %indvars.iv412, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next413, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !15

bb.bn:                                            ; preds = %bb.bh
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.bh, %bb.bn
  %.sink433 = phi i8 [ 1, %bb.bn ], [ 0, %bb.bh ]
  %i.kk = and i32 %4, 4
  %i.kl = icmp eq i32 %i.kk, 0
  %i.km = zext i1 %i.kl to i8
  call fastcc void @_ZL31_shapeToArabicDigitsWithContextPDsiDsaa(ptr noundef %2, i32 noundef %.2303, i16 noundef zeroext %.367, i8 noundef signext %i.km, i8 noundef signext %.sink433)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bm, %bb.bk, %middle.block, %middle.block493, %vec.epilog.middle.block, %.loopexit.sink.split, %.preheader, %bb.bi, %bb.bh, %bb.bg
  %i.kn = call i32 @u_terminateUChars_78(ptr noundef %2, i32 noundef %3, i32 noundef %.2303, ptr noundef nonnull %5) #10
  br label %bb.bo

bb.bo:                                            ; preds = %.thread379, %bb.a, %bb.b, %.loopexit, %bb.be, %bb.u, %bb.q, %bb.m, %bb.k, %bb.i
  %.3 = phi i32 [ 0, %bb.k ], [ 0, %bb.i ], [ %i.z, %bb.q ], [ 0, %bb.u ], [ %i.kn, %.loopexit ], [ %.2.ph, %.thread379 ], [ %.0298, %bb.be ], [ 0, %bb.m ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @u_strlen_78(ptr noundef) local_unnamed_addr #2

declare i32 @u_terminateUChars_78(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef zeroext i16 @_ZL7getLinkDs(i16 noundef zeroext %0) unnamed_addr #4 {
bb.a:
  %i.a = add i16 %0, -1570
  %or.cond = icmp ult i16 %i.a, 178
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i16 %0 to i64
  %1 = add nuw nsw i64 %i.b, 4294965726
  %2 = and i64 %1, 4294967295
  %3 = getelementptr inbounds nuw [2 x i8], ptr @_ZL7araLink, i64 %2
  %i.c = load i16, ptr %3, align 2
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq i16 %0, 8205
  br i1 %i.d, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = add i16 %0, -8301
  %or.cond5 = icmp ult i16 %i.e, 3
  br i1 %or.cond5, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = add i16 %0, 1200
  %or.cond8 = icmp ult i16 %i.f, 275
  br i1 %or.cond8, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = zext i16 %0 to i64
  %i.h = getelementptr i8, ptr @_ZL9presALink, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 -64336
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext i8 %i.j to i16
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.l = add i16 %0, 400
  %or.cond11 = icmp ult i16 %i.l, 141
  br i1 %or.cond11, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.m = zext i16 %0 to i64
  %i.n = getelementptr i8, ptr @_ZL9presBLink, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -65136
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i16
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.d, %bb.c, %bb.h, %bb.f, %bb.b
  %.0 = phi i16 [ %i.c, %bb.b ], [ 4, %bb.d ], [ 3, %bb.c ], [ %i.k, %bb.f ], [ %i.q, %bb.h ], [ 0, %bb.g ]
  ret i16 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @_ZL13calculateSizePKDsiij(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = and i32 %2, 65547
  %or.cond59 = icmp eq i32 %i.a, 8
  %i.b = and i32 %2, 917528
  %or.cond61 = icmp eq i32 %i.b, 524296
  %brmerge = or i1 %or.cond61, %or.cond59
  br i1 %brmerge, label %.critedge, label %.loopexit76

.critedge:                                        ; preds = %bb.a
  %i.c = and i32 %2, 4
  %.not = icmp eq i32 %i.c, 0
  %i.d = icmp sgt i32 %1, 0                       ; 2 uses
  br i1 %.not, label %.preheader75, label %.preheader77

.preheader77:                                     ; preds = %.critedge
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader77
  %i.e = add nsw i32 %1, -1
  %i.f = zext nneg i32 %i.e to i64                ; 3 uses
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.g = icmp eq i32 %1, 1
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

.preheader75:                                     ; preds = %.critedge
  br i1 %i.d, label %.lr.ph83, label %.loopexit

.lr.ph83:                                         ; preds = %.preheader75
  %i.h = add nsw i32 %1, -1
  %i.i = zext nneg i32 %i.h to i64                ; 3 uses
  %wide.trip.count96 = zext nneg i32 %1 to i64    ; 2 uses
  %xtraiter10 = and i64 %wide.trip.count96, 1
  %i.j = icmp eq i32 %1, 1
  br i1 %i.j, label %.epil.preheader9, label %.lr.ph83.new

.lr.ph83.new:                                     ; preds = %.lr.ph83
  %unroll_iter14 = and i64 %wide.trip.count96, 2147483646
  br label %bb.i

bb.b:                                             ; preds = %bb.h, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.h ] ; 4 uses
  %.04579 = phi i32 [ %1, %.lr.ph.new ], [ %.146.1, %bb.h ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.h ]
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.l = load i16, ptr %i.k, align 2              ; 2 uses
  switch i16 %i.l, label %_ZL10isAlefCharDs.exit.thread [
    i16 1573, label %_ZL10isAlefCharDs.exit
    i16 1571, label %_ZL10isAlefCharDs.exit
    i16 1570, label %_ZL10isAlefCharDs.exit
    i16 1575, label %_ZL10isAlefCharDs.exit
  ]

_ZL10isAlefCharDs.exit:                           ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = icmp samesign ult i64 %indvars.iv, %i.f
  br i1 %i.m, label %bb.c, label %_ZL10isAlefCharDs.exit.thread

bb.c:                                             ; preds = %_ZL10isAlefCharDs.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.o = load i16, ptr %i.n, align 2
  %i.p = icmp eq i16 %i.o, 1604
  br i1 %i.p, label %bb.d, label %bb.e

_ZL10isAlefCharDs.exit.thread:                    ; preds = %bb.b, %_ZL10isAlefCharDs.exit
  %.old = and i16 %i.l, -16
  %.not71.old = icmp eq i16 %.old, -400
  br i1 %.not71.old, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZL10isAlefCharDs.exit.thread, %bb.c
  %i.q = add nsw i32 %.04579, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %_ZL10isAlefCharDs.exit.thread, %bb.d
  %.146 = phi i32 [ %i.q, %bb.d ], [ %.04579, %_ZL10isAlefCharDs.exit.thread ], [ %.04579, %bb.c ] ; 3 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next ; 2 uses
  %i.s = load i16, ptr %i.r, align 2              ; 2 uses
  switch i16 %i.s, label %_ZL10isAlefCharDs.exit.thread.1 [
    i16 1573, label %_ZL10isAlefCharDs.exit.1
    i16 1571, label %_ZL10isAlefCharDs.exit.1
    i16 1570, label %_ZL10isAlefCharDs.exit.1
    i16 1575, label %_ZL10isAlefCharDs.exit.1
  ]

_ZL10isAlefCharDs.exit.1:                         ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  %i.t = icmp samesign ult i64 %indvars.iv.next, %i.f
  br i1 %i.t, label %bb.f, label %_ZL10isAlefCharDs.exit.thread.1

bb.f:                                             ; preds = %_ZL10isAlefCharDs.exit.1
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.v = load i16, ptr %i.u, align 2
  %i.w = icmp eq i16 %i.v, 1604
  br i1 %i.w, label %bb.g, label %bb.h

_ZL10isAlefCharDs.exit.thread.1:                  ; preds = %_ZL10isAlefCharDs.exit.1, %bb.e
  %.old.1 = and i16 %i.s, -16
  %.not71.old.1 = icmp eq i16 %.old.1, -400
  br i1 %.not71.old.1, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZL10isAlefCharDs.exit.thread.1, %bb.f
  %i.x = add nsw i32 %.146, -1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZL10isAlefCharDs.exit.thread.1, %bb.f
  %.146.1 = phi i32 [ %i.x, %bb.g ], [ %.146, %_ZL10isAlefCharDs.exit.thread.1 ], [ %.146, %bb.f ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit76.loopexit6.unr-lcssa, label %bb.b, !llvm.loop !16

bb.i:                                             ; preds = %.thread.1, %.lr.ph83.new
  %indvars.iv93 = phi i64 [ 0, %.lr.ph83.new ], [ %indvars.iv.next94.1, %.thread.1 ] ; 4 uses
  %.24781 = phi i32 [ %1, %.lr.ph83.new ], [ %.3.1, %.thread.1 ] ; 3 uses
  %niter15 = phi i64 [ 0, %.lr.ph83.new ], [ %niter15.next.1, %.thread.1 ]
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv93 ; 2 uses
  %i.z = load i16, ptr %i.y, align 2              ; 2 uses
  %i.aa = icmp eq i16 %i.z, 1604
  %i.ab = icmp samesign ult i64 %indvars.iv93, %i.i
  %or.cond64 = select i1 %i.aa, i1 %i.ab, i1 false
  br i1 %or.cond64, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.ad = load i16, ptr %i.ac, align 2
  switch i16 %i.ad, label %.thread [
    i16 1573, label %_ZL10isAlefCharDs.exit68.thread
    i16 1571, label %_ZL10isAlefCharDs.exit68.thread
    i16 1570, label %_ZL10isAlefCharDs.exit68.thread
    i16 1575, label %_ZL10isAlefCharDs.exit68.thread
  ]

bb.k:                                             ; preds = %bb.i
  %i.ae = and i16 %i.z, -16
  %.not72 = icmp eq i16 %i.ae, -400
  br i1 %.not72, label %_ZL10isAlefCharDs.exit68.thread, label %.thread

_ZL10isAlefCharDs.exit68.thread:                  ; preds = %bb.j, %bb.j, %bb.j, %bb.j, %bb.k
  %i.af = add nsw i32 %.24781, -1
  br label %.thread

.thread:                                          ; preds = %bb.j, %bb.k, %_ZL10isAlefCharDs.exit68.thread
  %.3 = phi i32 [ %i.af, %_ZL10isAlefCharDs.exit68.thread ], [ %.24781, %bb.k ], [ %.24781, %bb.j ] ; 3 uses
  %indvars.iv.next94 = or disjoint i64 %indvars.iv93, 1 ; 2 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next94 ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 2            ; 2 uses
  %i.ai = icmp eq i16 %i.ah, 1604
  %i.aj = icmp samesign ult i64 %indvars.iv.next94, %i.i
  %or.cond64.1 = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %or.cond64.1, label %bb.m, label %bb.l
end_hunk_1
begin_hunk_2_@_ZL13calculateSizePKDsiij:bb.a

bb.o:                                             ; preds = %.epil.preheader9
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %i.au = load i16, ptr %i.at, align 2
  switch i16 %i.au, label %.loopexit76 [
    i16 1573, label %_ZL10isAlefCharDs.exit68.thread.epil
    i16 1571, label %_ZL10isAlefCharDs.exit68.thread.epil
    i16 1570, label %_ZL10isAlefCharDs.exit68.thread.epil
    i16 1575, label %_ZL10isAlefCharDs.exit68.thread.epil
  ]

_ZL10isAlefCharDs.exit68.thread.epil:             ; preds = %bb.o, %bb.o, %bb.o, %bb.o, %bb.n
  %i.av = add nsw i32 %.24781.epil.init, -1
  br label %.loopexit76

.loopexit76.loopexit6.unr-lcssa:                  ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit76, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit76.loopexit6.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit76.loopexit6.unr-lcssa ] ; 2 uses
  %.04579.epil.init = phi i32 [ %1, %.lr.ph ], [ %.146.1, %.loopexit76.loopexit6.unr-lcssa ] ; 3 uses
  %lcmp.mod8 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod8)
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.epil.init ; 2 uses
  %i.ax = load i16, ptr %i.aw, align 2            ; 2 uses
  switch i16 %i.ax, label %_ZL10isAlefCharDs.exit.thread.epil [
    i16 1573, label %_ZL10isAlefCharDs.exit.epil
    i16 1571, label %_ZL10isAlefCharDs.exit.epil
    i16 1570, label %_ZL10isAlefCharDs.exit.epil
    i16 1575, label %_ZL10isAlefCharDs.exit.epil
  ]

_ZL10isAlefCharDs.exit.epil:                      ; preds = %.epil.preheader, %.epil.preheader, %.epil.preheader, %.epil.preheader
  %i.ay = icmp samesign ult i64 %indvars.iv.epil.init, %i.f
  br i1 %i.ay, label %bb.p, label %_ZL10isAlefCharDs.exit.thread.epil

bb.p:                                             ; preds = %_ZL10isAlefCharDs.exit.epil
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  %i.ba = load i16, ptr %i.az, align 2
  %i.bb = icmp eq i16 %i.ba, 1604
  br i1 %i.bb, label %bb.q, label %.loopexit76

_ZL10isAlefCharDs.exit.thread.epil:               ; preds = %_ZL10isAlefCharDs.exit.epil, %.epil.preheader
  %.old.epil = and i16 %i.ax, -16
  %.not71.old.epil = icmp eq i16 %.old.epil, -400
  br i1 %.not71.old.epil, label %bb.q, label %.loopexit76

bb.q:                                             ; preds = %_ZL10isAlefCharDs.exit.thread.epil, %bb.p
  %i.bc = add nsw i32 %.04579.epil.init, -1
  br label %.loopexit76

.loopexit76:                                      ; preds = %.loopexit76.loopexit6.unr-lcssa, %bb.q, %_ZL10isAlefCharDs.exit.thread.epil, %bb.p, %.loopexit76.loopexit.unr-lcssa, %_ZL10isAlefCharDs.exit68.thread.epil, %bb.o, %bb.n, %bb.a
  %.4 = phi i32 [ %.24781.epil.init, %bb.o ], [ %1, %bb.a ], [ %.3.1, %.loopexit76.loopexit.unr-lcssa ], [ %i.av, %_ZL10isAlefCharDs.exit68.thread.epil ], [ %.24781.epil.init, %bb.n ], [ %.146.1, %.loopexit76.loopexit6.unr-lcssa ], [ %i.bc, %bb.q ], [ %.04579.epil.init, %_ZL10isAlefCharDs.exit.thread.epil ], [ %.04579.epil.init, %bb.p ] ; 3 uses
  %i.bd = and i32 %2, 65563
  %or.cond66 = icmp eq i32 %i.bd, 16
  %i.be = icmp sgt i32 %1, 0
  %or.cond90 = and i1 %or.cond66, %i.be
  br i1 %or.cond90, label %.lr.ph87.preheader, label %.loopexit

.lr.ph87.preheader:                               ; preds = %.loopexit76
  %wide.trip.count101 = zext nneg i32 %1 to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph87.preheader4, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph87.preheader
  %n.vec = and i64 %wide.trip.count101, 2147483640 ; 3 uses
  %i.bf = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.4, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.bf, %vector.ph ], [ %i.bo, %vector.body ]
  %vec.phi2 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bp, %vector.body ]
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %wide.load = load <4 x i16>, ptr %i.bg, align 2
  %wide.load3 = load <4 x i16>, ptr %i.bh, align 2
  %i.bi = add <4 x i16> %wide.load, splat (i16 267)
  %i.bj = add <4 x i16> %wide.load3, splat (i16 267)
  %i.bk = icmp ult <4 x i16> %i.bi, splat (i16 8)
  %i.bl = icmp ult <4 x i16> %i.bj, splat (i16 8)
  %i.bm = zext <4 x i1> %i.bk to <4 x i32>
  %i.bn = zext <4 x i1> %i.bl to <4 x i32>
  %i.bo = add <4 x i32> %vec.phi, %i.bm           ; 2 uses
  %i.bp = add <4 x i32> %vec.phi2, %i.bn          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bp, %i.bo
  %i.br = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count101
  br i1 %cmp.n, label %.loopexit, label %.lr.ph87.preheader4

.lr.ph87.preheader4:                              ; preds = %.lr.ph87.preheader, %middle.block
  %indvars.iv98.ph = phi i64 [ 0, %.lr.ph87.preheader ], [ %n.vec, %middle.block ]
  %.585.ph = phi i32 [ %.4, %.lr.ph87.preheader ], [ %i.br, %middle.block ]
  br label %.lr.ph87

.lr.ph87:                                         ; preds = %.lr.ph87.preheader4, %.lr.ph87
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %.lr.ph87 ], [ %indvars.iv98.ph, %.lr.ph87.preheader4 ] ; 2 uses
  %.585 = phi i32 [ %spec.select, %.lr.ph87 ], [ %.585.ph, %.lr.ph87.preheader4 ]
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv98
  %i.bt = load i16, ptr %i.bs, align 2
  %i.bu = add i16 %i.bt, 267
  %i.bv = icmp ult i16 %i.bu, 8
  %i.bw = zext i1 %i.bv to i32
  %spec.select = add nsw i32 %.585, %i.bw         ; 2 uses
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %exitcond102.not = icmp eq i64 %indvars.iv.next99, %wide.trip.count101
  br i1 %exitcond102.not, label %.loopexit, label %.lr.ph87, !llvm.loop !19

.loopexit:                                        ; preds = %.lr.ph87, %middle.block, %.preheader75, %.preheader77, %.loopexit76
  %.7 = phi i32 [ %.4, %.loopexit76 ], [ %1, %.preheader75 ], [ %1, %.preheader77 ], [ %i.br, %middle.block ], [ %spec.select, %.lr.ph87 ]
  ret i32 %.7
}

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #2

declare ptr @u_memcpy_78(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL11countSpacesPDsijPiS0_(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = load i16, ptr %0, align 2
  %i.b = icmp eq i16 %i.a, 32
  %i.c = icmp sgt i32 %1, 0                       ; 2 uses
  %i.d = and i1 %i.b, %i.c
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  %i.f = load i16, ptr %i.e, align 2
  %i.g = icmp eq i16 %i.f, 32
  %i.h = icmp sgt i32 %1, %indvars                ; 2 uses
  %i.i = and i1 %i.g, %i.h
  br i1 %i.i, label %.lr.ph, label %._crit_edge, !llvm.loop !20

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.015.lcssa = phi i32 [ 0, %bb.a ], [ %indvars, %.lr.ph ]
  %.lcssa = phi i1 [ %i.c, %bb.a ], [ %i.h, %.lr.ph ]
  br i1 %.lcssa, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %._crit_edge
  %i.j = sext i32 %1 to i64                       ; 2 uses
  %i.k = getelementptr [2 x i8], ptr %0, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 -2
  %i.m = load i16, ptr %i.l, align 2
  %i.n = icmp eq i16 %i.m, 32
  br i1 %i.n, label %.lr.ph24, label %.loopexit

.lr.ph24:                                         ; preds = %.preheader, %.lr.ph24
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %.lr.ph24 ], [ %i.j, %.preheader ]
  %.023 = phi i32 [ %i.o, %.lr.ph24 ], [ 0, %.preheader ]
  %i.o = add nuw nsw i32 %.023, 1                 ; 2 uses
  %indvars.iv.next33 = add nsw i64 %indvars.iv32, -1 ; 2 uses
  %i.p = getelementptr [2 x i8], ptr %0, i64 %indvars.iv.next33
  %i.q = getelementptr i8, ptr %i.p, i64 -2
  %i.r = load i16, ptr %i.q, align 2
  %i.s = icmp eq i16 %i.r, 32
  br i1 %i.s, label %.lr.ph24, label %.loopexit, !llvm.loop !21

.loopexit:                                        ; preds = %.lr.ph24, %.preheader, %._crit_edge
  %.1 = phi i32 [ 0, %._crit_edge ], [ 0, %.preheader ], [ %i.o, %.lr.ph24 ]
  store i32 %.015.lcssa, ptr %2, align 4
  store i32 %.1, ptr %3, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZL12shapeUnicodePDsiijP10UErrorCodei15uShapeVariables(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull captures(none) %3, i32 noundef range(i32 0, 3) %4, ptr nofree noundef readonly byval(%struct.uShapeVariables) align 8 captures(none) %5) unnamed_addr #0 {
bb.a:
  %i.a = and i32 %2, 32768
  %i.b = icmp eq i32 %i.a, 0
  %i.c = icmp sgt i32 %1, 0                       ; 4 uses
  %or.cond303 = and i1 %i.b, %i.c
  br i1 %or.cond303, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.e = load i16, ptr %i.d, align 2              ; 4 uses
  %i.f = add i16 %i.e, 1200
  %or.cond = icmp ult i16 %i.f, 176
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.g = zext i16 %i.e to i64
  %6 = add nuw nsw i64 %i.g, 4294902960
  %7 = and i64 %6, 4294967295
  %8 = getelementptr inbounds nuw [2 x i8], ptr @_ZL13convertFBto06, i64 %7
  %i.h = load i16, ptr %8, align 2                ; 2 uses
  %.not209 = icmp eq i16 %i.h, 0
  br i1 %.not209, label %bb.e, label %.sink.split

bb.c:                                             ; preds = %.lr.ph
  %i.i = add i16 %i.e, 400
  %or.cond5 = icmp ult i16 %i.i, 141
  br i1 %or.cond5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = zext i16 %i.e to i64
  %i.k = getelementptr [2 x i8], ptr @_ZL13convertFEto06, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 -130272
  %i.m = load i16, ptr %i.l, align 2
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.d
  %.sink = phi i16 [ %i.m, %bb.d ], [ %i.h, %bb.b ]
  store i16 %.sink, ptr %i.d, align 2
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.c, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !22

.loopexit:                                        ; preds = %bb.e, %bb.a
  %i.n = add nsw i32 %1, -1                       ; 3 uses
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [2 x i8], ptr %0, i64 %i.o
  %i.q = load i16, ptr %i.p, align 2              ; 8 uses
  %i.r = add i16 %i.q, -1570
  %or.cond.i = icmp ult i16 %i.r, 178
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.loopexit
  %i.s = zext nneg i16 %i.q to i64
  %9 = add nuw nsw i64 %i.s, 4294965726
  %10 = and i64 %9, 4294967295
  %11 = getelementptr inbounds nuw [2 x i8], ptr @_ZL7araLink, i64 %10
  %i.t = load i16, ptr %11, align 2
  br label %_ZL7getLinkDs.exit

bb.g:                                             ; preds = %.loopexit
  %i.u = icmp eq i16 %i.q, 8205
  br i1 %i.u, label %_ZL7getLinkDs.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = add i16 %i.q, -8301
  %or.cond5.i = icmp ult i16 %i.v, 3
  br i1 %or.cond5.i, label %_ZL7getLinkDs.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = add i16 %i.q, 1200
  %or.cond8.i = icmp ult i16 %i.w, 275
  br i1 %or.cond8.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.x = zext i16 %i.q to i64
  %i.y = getelementptr i8, ptr @_ZL9presALink, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 -64336
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i16
  br label %_ZL7getLinkDs.exit

bb.k:                                             ; preds = %bb.i
  %i.ac = add i16 %i.q, 400
  %or.cond11.i = icmp ult i16 %i.ac, 141
  br i1 %or.cond11.i, label %bb.l, label %_ZL7getLinkDs.exit

bb.l:                                             ; preds = %bb.k
  %i.ad = zext i16 %i.q to i64
  %i.ae = getelementptr i8, ptr @_ZL9presBLink, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ae, i64 -65136
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = zext i8 %i.ag to i16
  br label %_ZL7getLinkDs.exit

_ZL7getLinkDs.exit:                               ; preds = %bb.f, %bb.g, %bb.h, %bb.j, %bb.k, %bb.l
  %.0.i = phi i16 [ %i.t, %bb.f ], [ 4, %bb.h ], [ 3, %bb.g ], [ %i.ab, %bb.j ], [ %i.ah, %bb.l ], [ 0, %bb.k ]
  %.not282 = icmp eq i32 %1, 0
  br i1 %.not282, label %_ZL21handleGeneratedSpacesPDsiijP10UErrorCode15uShapeVariables.exit.thread, label %.lr.ph297

.lr.ph297:                                        ; preds = %_ZL7getLinkDs.exit
  %i.ai = icmp eq i32 %4, 1
  %i.aj = icmp eq i32 %4, 2
  %i.ak = icmp ne i32 %4, 2
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph297, %_ZL7getLinkDs.exit247
  %.1150296 = phi i32 [ %i.n, %.lr.ph297 ], [ %i.fi, %_ZL7getLinkDs.exit247 ] ; 8 uses
  %.0151294 = phi i32 [ %i.n, %.lr.ph297 ], [ %.1152, %_ZL7getLinkDs.exit247 ] ; 3 uses
  %.0153293 = phi i16 [ 0, %.lr.ph297 ], [ %.3156, %_ZL7getLinkDs.exit247 ] ; 4 uses
  %.0157292 = phi i16 [ %.0.i, %.lr.ph297 ], [ %.3160, %_ZL7getLinkDs.exit247 ] ; 6 uses
  %.0161291 = phi i16 [ 0, %.lr.ph297 ], [ %.3164, %_ZL7getLinkDs.exit247 ] ; 5 uses
  %.0165289 = phi i16 [ 0, %.lr.ph297 ], [ %.1166, %_ZL7getLinkDs.exit247 ] ; 3 uses
  %.0167287 = phi i32 [ 0, %.lr.ph297 ], [ %.1168, %_ZL7getLinkDs.exit247 ] ; 8 uses
  %.0169286 = phi i32 [ 0, %.lr.ph297 ], [ %.2171, %_ZL7getLinkDs.exit247 ] ; 9 uses
  %.0172285 = phi i32 [ 0, %.lr.ph297 ], [ %.2174, %_ZL7getLinkDs.exit247 ] ; 7 uses
  %.0175284 = phi i32 [ 0, %.lr.ph297 ], [ %.2177, %_ZL7getLinkDs.exit247 ] ; 4 uses
  %.0181283 = phi i32 [ -2, %.lr.ph297 ], [ %.4185, %_ZL7getLinkDs.exit247 ] ; 6 uses
  %.not191 = icmp ult i16 %.0157292, 256
  br i1 %.not191, label %bb.n, label %_ZL7getLinkDs.exit225.thread259

bb.n:                                             ; preds = %bb.m
  %i.al = sext i32 %.1150296 to i64
  %i.am = getelementptr inbounds [2 x i8], ptr %0, i64 %i.al
  %i.an = load i16, ptr %i.am, align 2            ; 8 uses
  %i.ao = add i16 %i.an, -1570
  %or.cond.i220 = icmp ult i16 %i.ao, 178
  br i1 %or.cond.i220, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ap = zext nneg i16 %i.an to i64
  %12 = add nuw nsw i64 %i.ap, 4294965726
  %13 = and i64 %12, 4294967295
  %14 = getelementptr inbounds nuw [2 x i8], ptr @_ZL7araLink, i64 %13
  %i.aq = load i16, ptr %14, align 2
  br label %_ZL7getLinkDs.exit225

bb.p:                                             ; preds = %bb.n
  %i.ar = icmp eq i16 %i.an, 8205
  br i1 %i.ar, label %_ZL7getLinkDs.exit225.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = add i16 %i.an, -8301
  %or.cond5.i221 = icmp ult i16 %i.as, 3
  br i1 %or.cond5.i221, label %_ZL7getLinkDs.exit225.thread259, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.at = add i16 %i.an, 1200
  %or.cond8.i222 = icmp ult i16 %i.at, 275
  br i1 %or.cond8.i222, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.au = zext i16 %i.an to i64
  %i.av = getelementptr i8, ptr @_ZL9presALink, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.av, i64 -64336
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = zext i8 %i.ax to i16
  br label %_ZL7getLinkDs.exit225

bb.t:                                             ; preds = %bb.r
  %i.az = add i16 %i.an, 400
  %or.cond11.i223 = icmp ult i16 %i.az, 141
  br i1 %or.cond11.i223, label %bb.u, label %_ZL7getLinkDs.exit225.thread

bb.u:                                             ; preds = %bb.t
  %i.ba = zext i16 %i.an to i64
  %i.bb = getelementptr i8, ptr @_ZL9presBLink, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.bb, i64 -65136
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = zext i8 %i.bd to i16
  br label %_ZL7getLinkDs.exit225

_ZL7getLinkDs.exit225:                            ; preds = %bb.o, %bb.s, %bb.u
  %.0.i224 = phi i16 [ %i.aq, %bb.o ], [ %i.ay, %bb.s ], [ %i.be, %bb.u ]
  %i.bf = and i16 %.0.i224, 4
  %.not192 = icmp eq i16 %i.bf, 0
  br i1 %.not192, label %_ZL7getLinkDs.exit225.thread, label %_ZL7getLinkDs.exit225.thread259

_ZL7getLinkDs.exit225.thread259:                  ; preds = %bb.q, %_ZL7getLinkDs.exit225, %bb.m
  %i.bg = icmp slt i32 %.0181283, 0
  br i1 %i.bg, label %.lr.ph280.preheader, label %._crit_edge

.lr.ph280.preheader:                              ; preds = %_ZL7getLinkDs.exit225.thread259
  %i.bh = add nsw i32 %.1150296, -1
  br label %.lr.ph280

.lr.ph280:                                        ; preds = %.lr.ph280.preheader, %_ZL7getLinkDs.exit231.thread
  %.0179279 = phi i32 [ %.1180, %_ZL7getLinkDs.exit231.thread ], [ %i.bh, %.lr.ph280.preheader ] ; 9 uses
  %.1182278 = phi i32 [ %.2183, %_ZL7getLinkDs.exit231.thread ], [ %.0181283, %.lr.ph280.preheader ] ; 2 uses
  %i.bi = icmp eq i32 %.0179279, -1
  br i1 %i.bi, label %._crit_edge, label %bb.v

bb.v:                                             ; preds = %.lr.ph280
  %i.bj = sext i32 %.0179279 to i64
  %i.bk = getelementptr inbounds [2 x i8], ptr %0, i64 %i.bj
  %i.bl = load i16, ptr %i.bk, align 2            ; 8 uses
  %i.bm = add i16 %i.bl, -1570
  %or.cond.i226 = icmp ult i16 %i.bm, 178
  br i1 %or.cond.i226, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bn = zext nneg i16 %i.bl to i64
  %15 = add nuw nsw i64 %i.bn, 4294965726
  %16 = and i64 %15, 4294967295
  %17 = getelementptr inbounds nuw [2 x i8], ptr @_ZL7araLink, i64 %16
  %i.bo = load i16, ptr %17, align 2
  br label %_ZL7getLinkDs.exit231

bb.x:                                             ; preds = %bb.v
  %i.bp = icmp eq i16 %i.bl, 8205
  br i1 %i.bp, label %_ZL7getLinkDs.exit231.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bq = add i16 %i.bl, -8301
  %or.cond5.i227 = icmp ult i16 %i.bq, 3
  br i1 %or.cond5.i227, label %_ZL7getLinkDs.exit231.thread355, label %bb.z

_ZL7getLinkDs.exit231.thread355:                  ; preds = %bb.y
  %spec.select218357 = add nsw i32 %.0179279, -1
  br label %_ZL7getLinkDs.exit231.thread

bb.z:                                             ; preds = %bb.y
  %i.br = add i16 %i.bl, 1200
  %or.cond8.i228 = icmp ult i16 %i.br, 275
  br i1 %or.cond8.i228, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bs = zext i16 %i.bl to i64
  %i.bt = getelementptr i8, ptr @_ZL9presALink, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bt, i64 -64336
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = zext i8 %i.bv to i16
  br label %_ZL7getLinkDs.exit231

bb.ab:                                            ; preds = %bb.z
  %i.bx = add i16 %i.bl, 400
  %or.cond11.i229 = icmp ult i16 %i.bx, 141
  br i1 %or.cond11.i229, label %bb.ac, label %_ZL7getLinkDs.exit231.thread

bb.ac:                                            ; preds = %bb.ab
  %i.by = zext i16 %i.bl to i64
  %i.bz = getelementptr i8, ptr @_ZL9presBLink, i64 %i.by
  %i.ca = getelementptr i8, ptr %i.bz, i64 -65136
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = zext i8 %i.cb to i16
  br label %_ZL7getLinkDs.exit231

_ZL7getLinkDs.exit231:                            ; preds = %bb.w, %bb.aa, %bb.ac
  %.0.i230 = phi i16 [ %i.bo, %bb.w ], [ %i.bw, %bb.aa ], [ %i.cc, %bb.ac ] ; 2 uses
  %i.cd = and i16 %.0.i230, 4
  %i.ce = icmp ne i16 %i.cd, 0                    ; 2 uses
  %i.cf = sext i1 %i.ce to i32
  %spec.select218 = add nsw i32 %.0179279, %i.cf
  %spec.select361 = select i1 %i.ce, i32 %.1182278, i32 %.0179279
  br label %_ZL7getLinkDs.exit231.thread

_ZL7getLinkDs.exit231.thread:                     ; preds = %_ZL7getLinkDs.exit231, %bb.ab, %bb.x, %_ZL7getLinkDs.exit231.thread355
  %.2183 = phi i32 [ %spec.select361, %_ZL7getLinkDs.exit231 ], [ %.0179279, %bb.ab ], [ %.1182278, %_ZL7getLinkDs.exit231.thread355 ], [ %.0179279, %bb.x ] ; 3 uses
  %.1180 = phi i32 [ %spec.select218, %_ZL7getLinkDs.exit231 ], [ %.0179279, %bb.ab ], [ %spec.select218357, %_ZL7getLinkDs.exit231.thread355 ], [ %.0179279, %bb.x ]
  %.2155 = phi i16 [ %.0.i230, %_ZL7getLinkDs.exit231 ], [ 0, %bb.ab ], [ 4, %_ZL7getLinkDs.exit231.thread355 ], [ 3, %bb.x ]
  %i.cg = icmp slt i32 %.2183, 0
  br i1 %i.cg, label %.lr.ph280, label %._crit_edge, !llvm.loop !23

._crit_edge:                                      ; preds = %.lr.ph280, %_ZL7getLinkDs.exit231.thread, %_ZL7getLinkDs.exit225.thread259
  %.1182.lcssa = phi i32 [ %.0181283, %_ZL7getLinkDs.exit225.thread259 ], [ 3000, %.lr.ph280 ], [ %.2183, %_ZL7getLinkDs.exit231.thread ] ; 6 uses
  %.1154.lcssa = phi i16 [ %.0153293, %_ZL7getLinkDs.exit225.thread259 ], [ 0, %.lr.ph280 ], [ %.2155, %_ZL7getLinkDs.exit231.thread ] ; 8 uses
  %i.ch = and i16 %.0157292, 32
  %.not193 = icmp eq i16 %i.ch, 0
  %i.ci = and i16 %.0161291, 16
  %.not194 = icmp eq i16 %i.ci, 0
  %or.cond210 = select i1 %.not193, i1 true, i1 %.not194
  br i1 %or.cond210, label %_ZL7getLinkDs.exit238, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge
  %i.cj = sext i32 %.1150296 to i64
  %i.ck = getelementptr inbounds [2 x i8], ptr %0, i64 %i.cj ; 2 uses
  %i.cl = load i16, ptr %i.ck, align 2
  %switch.tableidx = add i16 %i.cl, -1570         ; 3 uses
  %i.cm = icmp ult i16 %switch.tableidx, 6
  %switch.maskindex = trunc i16 %switch.tableidx to i8
  %switch.shifted = lshr i8 43, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond102 = select i1 %i.cm, i1 %switch.lobit, i1 false
  br i1 %or.cond102, label %switch.lookup, label %_ZL7getLinkDs.exit238

switch.lookup:                                    ; preds = %bb.ad
  %i.cn = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZL12shapeUnicodePDsiijP10UErrorCodei15uShapeVariables, i64 %i.cn
  %switch.load = load i16, ptr %switch.gep, align 2 ; 2 uses
  store i16 -1, ptr %i.ck, align 2
  %i.co = sext i32 %.0151294 to i64
  %i.cp = getelementptr inbounds [2 x i8], ptr %0, i64 %i.co
  store i16 %switch.load, ptr %i.cp, align 2
  %narrow = add nuw nsw i16 %switch.load, 30
  %18 = and i16 %narrow, 63
  %19 = zext nneg i16 %18 to i64
  %20 = getelementptr inbounds nuw [2 x i8], ptr @_ZL7araLink, i64 %19
  %i.cq = load i16, ptr %20, align 2
  br label %_ZL7getLinkDs.exit238

_ZL7getLinkDs.exit238:                            ; preds = %bb.ad, %switch.lookup, %._crit_edge
  %.1176 = phi i32 [ %.0175284, %._crit_edge ], [ 1, %switch.lookup ], [ 1, %bb.ad ] ; 6 uses
  %.1162 = phi i16 [ %.0161291, %._crit_edge ], [ %.0165289, %switch.lookup ], [ %.0165289, %bb.ad ] ; 7 uses
  %.1158 = phi i16 [ %.0157292, %._crit_edge ], [ %i.cq, %switch.lookup ], [ 0, %bb.ad ] ; 7 uses
  %.3 = phi i32 [ %.1150296, %._crit_edge ], [ %.0151294, %switch.lookup ], [ %.1150296, %bb.ad ] ; 11 uses
  %i.cr = icmp sgt i32 %.3, 0
  br i1 %i.cr, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %_ZL7getLinkDs.exit238
  %i.cs = zext nneg i32 %.3 to i64
  %i.ct = getelementptr [2 x i8], ptr %0, i64 %i.cs ; 2 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 -2
  %i.cv = load i16, ptr %i.cu, align 2
  %i.cw = icmp eq i16 %i.cv, 32
  br i1 %i.cw, label %bb.af, label %.thread

bb.af:                                            ; preds = %bb.ae
  %i.cx = load i16, ptr %i.ct, align 2            ; 2 uses
  %i.cy = add i16 %i.cx, -1591
  %or.cond.i239 = icmp ult i16 %i.cy, -4
  br i1 %or.cond.i239, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %bb.af
  %i.cz = icmp eq i16 %i.cx, 1574
  %spec.select = select i1 %i.cz, i32 1, i32 %.0169286
  br label %.thread

bb.ah:                                            ; preds = %_ZL7getLinkDs.exit238
  %i.da = icmp eq i32 %.3, 0
  br i1 %i.da, label %bb.ai, label %.thread

bb.ai:                                            ; preds = %bb.ah
  %i.db = load i16, ptr %0, align 2               ; 2 uses
  %i.dc = add i16 %i.db, -1591
  %or.cond.i240 = icmp ult i16 %i.dc, -4
  br i1 %or.cond.i240, label %bb.aj, label %.thread

bb.aj:                                            ; preds = %bb.ai
  %i.dd = icmp eq i16 %i.db, 1574
  %spec.select211 = select i1 %i.dd, i32 1, i32 %.0169286
  br label %.thread

.thread:                                          ; preds = %bb.ae, %bb.aj, %bb.ag, %bb.ai, %bb.af, %bb.ah
  %.1173 = phi i32 [ %.0172285, %bb.ah ], [ 1, %bb.af ], [ %.0172285, %bb.aj ], [ %.0172285, %bb.ag ], [ 1, %bb.ai ], [ %.0172285, %bb.ae ] ; 6 uses
  %.1170 = phi i32 [ %.0169286, %bb.ah ], [ %.0169286, %bb.af ], [ %spec.select211, %bb.aj ], [ %spec.select, %bb.ag ], [ %.0169286, %bb.ai ], [ %.0169286, %bb.ae ] ; 6 uses
  %i.de = zext i16 %.1154.lcssa to i32            ; 2 uses
  %i.df = and i32 %i.de, 3
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr @_ZL10shapeTable, i64 %i.dg
  %i.di = zext i16 %.1162 to i32                  ; 3 uses
  %i.dj = and i32 %i.di, 3
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.dk
  %i.dm = zext i16 %.1158 to i32                  ; 4 uses
  %i.dn = and i32 %i.dm, 3                        ; 2 uses
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1
  %i.dr = zext i8 %i.dq to i32                    ; 2 uses
  %i.ds = icmp eq i32 %i.dn, 1
  br i1 %i.ds, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.thread
  %i.dt = and i32 %i.dr, 1
  %.pre = sext i32 %.3 to i64                     ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [2 x i8], ptr %0, i64 %.pre
  %.pre306 = load i16, ptr %.phi.trans.insert, align 2
  br label %.thread273

bb.al:                                            ; preds = %.thread
  %i.du = sext i32 %.3 to i64                     ; 6 uses
  %i.dv = getelementptr inbounds [2 x i8], ptr %0, i64 %i.du
  %i.dw = load i16, ptr %i.dv, align 2            ; 7 uses
  %i.dx = add i16 %i.dw, -1619
  %i.dy = icmp ult i16 %i.dx, -8
  br i1 %i.dy, label %.thread273, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dz = and i32 %i.di, 2
  %.not199 = icmp ne i32 %i.dz, 0
  %i.ea = trunc i16 %.1154.lcssa to i1
  %or.cond7 = and i1 %i.ai, %i.ea
  %or.cond213 = select i1 %.not199, i1 %or.cond7, i1 false
  br i1 %or.cond213, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.eb = and i16 %i.dw, 1630
  %switch = icmp eq i16 %i.eb, 1612
  br i1 %switch, label %.thread273, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ec = and i32 %i.de, 32
  %.not202 = icmp eq i32 %i.ec, 0
  %i.ed = and i32 %i.di, 16
  %.not203 = icmp eq i32 %i.ed, 0
  %or.cond214 = or i1 %.not202, %.not203
  %spec.select219 = zext i1 %or.cond214 to i32
  br label %.thread273

bb.ap:                                            ; preds = %bb.am
  %i.ee = icmp eq i16 %i.dw, 1617
  %or.cond274 = and i1 %i.aj, %i.ee
  br i1 %or.cond274, label %.thread339, label %.thread273

.thread339:                                       ; preds = %bb.ap
  %i.ef = getelementptr inbounds [2 x i8], ptr %0, i64 %i.du
  br label %bb.at

.thread273:                                       ; preds = %bb.ap, %bb.an, %bb.ao, %bb.al, %bb.ak
  %i.eg = phi i16 [ %.pre306, %bb.ak ], [ %i.dw, %bb.ao ], [ %i.dw, %bb.al ], [ %i.dw, %bb.an ], [ %i.dw, %bb.ap ] ; 4 uses
  %.pre-phi = phi i64 [ %.pre, %bb.ak ], [ %i.du, %bb.ao ], [ %i.du, %bb.al ], [ %i.du, %bb.an ], [ %i.du, %bb.ap ]
  %.0178 = phi i32 [ %i.dt, %bb.ak ], [ %spec.select219, %bb.ao ], [ %i.dr, %bb.al ], [ 0, %bb.an ], [ 0, %bb.ap ] ; 3 uses
  %i.eh = getelementptr inbounds [2 x i8], ptr %0, i64 %.pre-phi ; 4 uses
  %i.ei = xor i16 %i.eg, 1536
  %i.ej = icmp ult i16 %i.ei, 256
  br i1 %i.ej, label %bb.aq, label %_ZL7getLinkDs.exit225.thread

bb.aq:                                            ; preds = %.thread273
  %i.ek = add i16 %i.eg, -1619
  %i.el = icmp ult i16 %i.ek, -8
  br i1 %i.el, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.not207 = icmp eq i16 %i.eg, 1617
  %or.cond275 = or i1 %i.ak, %.not207
  br i1 %or.cond275, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i16 -2, ptr %i.eh, align 2
  br label %_ZL7getLinkDs.exit225.thread

bb.at:                                            ; preds = %.thread339, %bb.ar
  %i.em = phi ptr [ %i.ef, %.thread339 ], [ %i.eh, %bb.ar ]
  %.0178335338343 = phi i32 [ 1, %.thread339 ], [ %.0178, %bb.ar ]
  %i.en = phi i16 [ 1617, %.thread339 ], [ %i.eg, %bb.ar ]
  %i.eo = zext nneg i16 %i.en to i64
  %i.ep = getelementptr i8, ptr @_ZL13IrrelevantPos, i64 %i.eo
  %i.eq = getelementptr i8, ptr %i.ep, i64 -1611
  %i.er = load i8, ptr %i.eq, align 1
  %i.es = zext i8 %i.er to i32
  %i.et = add nuw nsw i32 %.0178335338343, 65136
  %i.eu = add nuw nsw i32 %i.et, %i.es
  %i.ev = trunc i32 %i.eu to i16
  store i16 %i.ev, ptr %i.em, align 2
  br label %_ZL7getLinkDs.exit225.thread

bb.au:                                            ; preds = %bb.aq
  %i.ew = and i32 %i.dm, 8
  %.not205 = icmp eq i32 %i.ew, 0
  %i.ex = lshr i32 %i.dm, 8                       ; 3 uses
  br i1 %.not205, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ey = add nuw nsw i32 %i.ex, 64336
  %i.ez = add nuw nsw i32 %i.ey, %.0178
  %i.fa = trunc nuw i32 %i.ez to i16
  store i16 %i.fa, ptr %i.eh, align 2
  br label %_ZL7getLinkDs.exit225.thread

bb.aw:                                            ; preds = %bb.au
  %.not206 = icmp ne i32 %i.ex, 0
  %i.fb = and i32 %i.dm, 4
  %i.fc = icmp eq i32 %i.fb, 0
  %or.cond216 = and i1 %.not206, %i.fc
  br i1 %or.cond216, label %bb.ax, label %_ZL7getLinkDs.exit225.thread

bb.ax:                                            ; preds = %bb.aw
  %i.fd = add nuw nsw i32 %i.ex, 65136
  %i.fe = add nuw nsw i32 %i.fd, %.0178
  %i.ff = trunc i32 %i.fe to i16
  store i16 %i.ff, ptr %i.eh, align 2
  br label %_ZL7getLinkDs.exit225.thread

_ZL7getLinkDs.exit225.thread:                     ; preds = %bb.t, %bb.p, %.thread273, %bb.av, %bb.ax, %bb.aw, %bb.as, %bb.at, %_ZL7getLinkDs.exit225
  %.3184 = phi i32 [ %.1182.lcssa, %bb.as ], [ %.1182.lcssa, %bb.at ], [ %.1182.lcssa, %bb.av ], [ %.1182.lcssa, %bb.ax ], [ %.0181283, %_ZL7getLinkDs.exit225 ], [ %.1182.lcssa, %bb.aw ], [ %.1182.lcssa, %.thread273 ], [ %.0181283, %bb.p ], [ %.0181283, %bb.t ] ; 7 uses
  %.2177 = phi i32 [ %.1176, %bb.as ], [ %.1176, %bb.at ], [ %.1176, %bb.av ], [ %.1176, %bb.ax ], [ %.0175284, %_ZL7getLinkDs.exit225 ], [ %.1176, %bb.aw ], [ %.1176, %.thread273 ], [ %.0175284, %bb.p ], [ %.0175284, %bb.t ] ; 2 uses
  %.2174 = phi i32 [ %.1173, %bb.as ], [ %.1173, %bb.at ], [ %.1173, %bb.av ], [ %.1173, %bb.ax ], [ %.0172285, %_ZL7getLinkDs.exit225 ], [ %.1173, %bb.aw ], [ %.1173, %.thread273 ], [ %.0172285, %bb.p ], [ %.0172285, %bb.t ] ; 2 uses
  %.2171 = phi i32 [ %.1170, %bb.as ], [ %.1170, %bb.at ], [ %.1170, %bb.av ], [ %.1170, %bb.ax ], [ %.0169286, %_ZL7getLinkDs.exit225 ], [ %.1170, %bb.aw ], [ %.1170, %.thread273 ], [ %.0169286, %bb.p ], [ %.0169286, %bb.t ] ; 2 uses
  %.1168 = phi i32 [ 1, %bb.as ], [ %.0167287, %bb.at ], [ %.0167287, %bb.av ], [ %.0167287, %bb.ax ], [ %.0167287, %_ZL7getLinkDs.exit225 ], [ %.0167287, %bb.aw ], [ %.0167287, %.thread273 ], [ %.0167287, %bb.p ], [ %.0167287, %bb.t ] ; 2 uses
  %.2163 = phi i16 [ %.1162, %bb.as ], [ %.1162, %bb.at ], [ %.1162, %bb.av ], [ %.1162, %bb.ax ], [ %.0161291, %_ZL7getLinkDs.exit225 ], [ %.1162, %bb.aw ], [ %.1162, %.thread273 ], [ %.0161291, %bb.p ], [ %.0161291, %bb.t ] ; 2 uses
  %.2159 = phi i16 [ %.1158, %bb.as ], [ %.1158, %bb.at ], [ %.1158, %bb.av ], [ %.1158, %bb.ax ], [ %.0157292, %_ZL7getLinkDs.exit225 ], [ %.1158, %bb.aw ], [ %.1158, %.thread273 ], [ %.0157292, %bb.p ], [ %.0157292, %bb.t ] ; 2 uses
  %.3156 = phi i16 [ %.1154.lcssa, %bb.as ], [ %.1154.lcssa, %bb.at ], [ %.1154.lcssa, %bb.av ], [ %.1154.lcssa, %bb.ax ], [ %.0153293, %_ZL7getLinkDs.exit225 ], [ %.1154.lcssa, %bb.aw ], [ %.1154.lcssa, %.thread273 ], [ %.0153293, %bb.p ], [ %.0153293, %bb.t ] ; 2 uses
  %.4 = phi i32 [ %.3, %bb.as ], [ %.3, %bb.at ], [ %.3, %bb.av ], [ %.3, %bb.ax ], [ %.1150296, %_ZL7getLinkDs.exit225 ], [ %.3, %bb.aw ], [ %.3, %.thread273 ], [ %.1150296, %bb.p ], [ %.1150296, %bb.t ] ; 4 uses
  %i.fg = and i16 %.2159, 4
  %i.fh = icmp eq i16 %i.fg, 0                    ; 3 uses
  %.1166 = select i1 %i.fh, i16 %.2163, i16 %.0165289
  %.3164 = select i1 %i.fh, i16 %.2159, i16 %.2163
  %.1152 = select i1 %i.fh, i32 %.4, i32 %.0151294
  %i.fi = add nsw i32 %.4, -1                     ; 3 uses
  %i.fj = icmp eq i32 %i.fi, %.3184
  br i1 %i.fj, label %_ZL7getLinkDs.exit247, label %bb.ay

bb.ay:                                            ; preds = %_ZL7getLinkDs.exit225.thread
  %.not208 = icmp eq i32 %.4, 0
  br i1 %.not208, label %._crit_edge298, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fk = sext i32 %i.fi to i64
  %i.fl = getelementptr inbounds [2 x i8], ptr %0, i64 %i.fk
  %i.fm = load i16, ptr %i.fl, align 2            ; 8 uses
  %i.fn = add i16 %i.fm, -1570
  %or.cond.i242 = icmp ult i16 %i.fn, 178
  br i1 %or.cond.i242, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.fo = zext nneg i16 %i.fm to i64
  %21 = add nuw nsw i64 %i.fo, 4294965726
  %22 = and i64 %21, 4294967295
  %23 = getelementptr inbounds nuw [2 x i8], ptr @_ZL7araLink, i64 %22
  %i.fp = load i16, ptr %23, align 2
  br label %_ZL7getLinkDs.exit247

bb.bb:                                            ; preds = %bb.az
  %i.fq = icmp eq i16 %i.fm, 8205
  br i1 %i.fq, label %_ZL7getLinkDs.exit247, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fr = add i16 %i.fm, -8301
  %or.cond5.i243 = icmp ult i16 %i.fr, 3
  br i1 %or.cond5.i243, label %_ZL7getLinkDs.exit247, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fs = add i16 %i.fm, 1200
  %or.cond8.i244 = icmp ult i16 %i.fs, 275
  br i1 %or.cond8.i244, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.ft = zext i16 %i.fm to i64
  %i.fu = getelementptr i8, ptr @_ZL9presALink, i64 %i.ft
  %i.fv = getelementptr i8, ptr %i.fu, i64 -64336
  %i.fw = load i8, ptr %i.fv, align 1
  %i.fx = zext i8 %i.fw to i16
  br label %_ZL7getLinkDs.exit247

bb.bf:                                            ; preds = %bb.bd
  %i.fy = add i16 %i.fm, 400
  %or.cond11.i245 = icmp ult i16 %i.fy, 141
  br i1 %or.cond11.i245, label %bb.bg, label %_ZL7getLinkDs.exit247

bb.bg:                                            ; preds = %bb.bf
  %i.fz = zext i16 %i.fm to i64
  %i.ga = getelementptr i8, ptr @_ZL9presBLink, i64 %i.fz
  %i.gb = getelementptr i8, ptr %i.ga, i64 -65136
  %i.gc = load i8, ptr %i.gb, align 1
  %i.gd = zext i8 %i.gc to i16
  br label %_ZL7getLinkDs.exit247

_ZL7getLinkDs.exit247:                            ; preds = %bb.bg, %bb.bf, %bb.be, %bb.bc, %bb.bb, %bb.ba, %_ZL7getLinkDs.exit225.thread
  %.4185 = phi i32 [ %.3184, %bb.bg ], [ -2, %_ZL7getLinkDs.exit225.thread ], [ %.3184, %bb.ba ], [ %.3184, %bb.bb ], [ %.3184, %bb.bc ], [ %.3184, %bb.be ], [ %.3184, %bb.bf ]
  %.3160 = phi i16 [ %i.gd, %bb.bg ], [ %.3156, %_ZL7getLinkDs.exit225.thread ], [ %i.fp, %bb.ba ], [ 3, %bb.bb ], [ 4, %bb.bc ], [ %i.fx, %bb.be ], [ 0, %bb.bf ]
  %.not = icmp eq i32 %.4, 0
  br i1 %.not, label %._crit_edge298, label %bb.m, !llvm.loop !24

._crit_edge298:                                   ; preds = %bb.ay, %_ZL7getLinkDs.exit247
  %i.ge = icmp ne i32 %.2177, 0
  %i.gf = icmp ne i32 %.1168, 0
  %i.gg = select i1 %i.ge, i1 true, i1 %i.gf
  %i.gh = icmp ne i32 %.2174, 0
  %i.gi = icmp ne i32 %.2171, 0
  %i.gj = select i1 %i.gh, i1 true, i1 %i.gi      ; 4 uses
  br i1 %i.gg, label %bb.bh, label %_ZL21handleGeneratedSpacesPDsiijP10UErrorCode15uShapeVariables.exit

bb.bh:                                            ; preds = %._crit_edge298
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 4
  %.sroa.3254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.3254.0.copyload = load i32, ptr %.sroa.3254.0..sroa_idx, align 8
  %.sroa.4255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 12
  %.sroa.4255.0.copyload = load i32, ptr %.sroa.4255.0..sroa_idx, align 4 ; 2 uses
  %.sroa.5256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.5256.0.copyload = load i32, ptr %.sroa.5256.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 20
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4 ; 2 uses
  %i.gk = and i32 %2, 65539                       ; 6 uses
  %i.gl = icmp eq i32 %i.gk, 0                    ; 2 uses
  %i.gm = and i32 %2, 917504                      ; 5 uses
  %i.gn = icmp eq i32 %i.gm, 524288               ; 3 uses
  %i.go = icmp slt i32 %1, -1
  br i1 %i.go, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 8, ptr %3, align 4
  br i1 %i.gj, label %bb.cm, label %_ZL21handleGeneratedSpacesPDsiijP10UErrorCode15uShapeVariables.exit.thread

bb.bj:                                            ; preds = %bb.bh
  %i.gp = shl i32 %1, 1                           ; 2 uses
  %i.gq = add i32 %i.gp, 2
  %i.gr = sext i32 %i.gq to i64                   ; 4 uses
  %i.gs = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.gr) #11 ; 22 uses
  %i.gt = icmp eq ptr %i.gs, null
  br i1 %i.gt, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  store i32 7, ptr %3, align 4
  br i1 %i.gj, label %bb.cm, label %_ZL21handleGeneratedSpacesPDsiijP10UErrorCode15uShapeVariables.exit.thread

bb.bl:                                            ; preds = %bb.bj
  %or.cond.i248 = or i1 %i.gl, %i.gn
  br i1 %or.cond.i248, label %bb.bm, label %bb.bx

bb.bm:                                            ; preds = %bb.bl
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.gs, i8 0, i64 %i.gr, i1 false)
  br i1 %i.c, label %.lr.ph.i, label %.lr.ph184.preheader.i

.lr.ph.i:                                         ; preds = %bb.bm
  br i1 %i.gl, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %.lr.ph.i
  %wide.trip.count221.i = zext nneg i32 %1 to i64
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.bp, %.lr.ph.split.us.preheader.i
  %indvars.iv218.i = phi i64 [ 0, %.lr.ph.split.us.preheader.i ], [ %indvars.iv.next219.i, %bb.bp ] ; 2 uses
  %.0133170.us.i = phi i32 [ 0, %.lr.ph.split.us.preheader.i ], [ %.1134.us.i, %bb.bp ] ; 2 uses
  %.0140169.us.i = phi i32 [ 0, %.lr.ph.split.us.preheader.i ], [ %.1141.us.i, %bb.bp ] ; 3 uses
  %i.gu = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv218.i
  %i.gv = load i16, ptr %i.gu, align 2            ; 3 uses
  %i.gw = icmp eq i16 %i.gv, -1
  %i.gx = icmp eq i16 %i.gv, -2
  %or.cond268.i = and i1 %i.gn, %i.gx
  %or.cond271.i = or i1 %i.gw, %or.cond268.i
  br i1 %or.cond271.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph.split.us.i
  %i.gy = sext i32 %.0140169.us.i to i64
  %i.gz = getelementptr inbounds [2 x i8], ptr %i.gs, i64 %i.gy
  store i16 %i.gv, ptr %i.gz, align 2
  %i.ha = add nsw i32 %.0140169.us.i, 1
  br label %bb.bp

bb.bo:                                            ; preds = %.lr.ph.split.us.i
  %i.hb = add nsw i32 %.0133170.us.i, 1
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.1141.us.i = phi i32 [ %.0140169.us.i, %bb.bo ], [ %i.ha, %bb.bn ]
  %.1134.us.i = phi i32 [ %i.hb, %bb.bo ], [ %.0133170.us.i, %bb.bn ] ; 2 uses
  %indvars.iv.next219.i = add nuw nsw i64 %indvars.iv218.i, 1 ; 2 uses
  %exitcond222.not.i = icmp eq i64 %indvars.iv.next219.i, %wide.trip.count221.i
  br i1 %exitcond222.not.i, label %.preheader166.i, label %.lr.ph.split.us.i, !llvm.loop !25

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  br i1 %i.gn, label %.lr.ph.split.split.us.preheader.i, label %.lr.ph.split.split.preheader.i

.lr.ph.split.split.preheader.i:                   ; preds = %.lr.ph.split.i
  %i.hc = zext i32 %i.gp to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.gs, ptr nonnull align 2 %0, i64 %i.hc, i1 false)
  br label %.lr.ph184.preheader.i

.lr.ph.split.split.us.preheader.i:                ; preds = %.lr.ph.split.i
  %wide.trip.count217.i = zext nneg i32 %1 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count217.i, 1
  %i.hd = icmp eq i32 %1, 1
  br i1 %i.hd, label %.lr.ph.split.split.us.i.epil.preheader, label %.lr.ph.split.split.us.preheader.i.new

.lr.ph.split.split.us.preheader.i.new:            ; preds = %.lr.ph.split.split.us.preheader.i
  %unroll_iter = and i64 %wide.trip.count217.i, 2147483646
  br label %.lr.ph.split.split.us.i

.lr.ph.split.split.us.i:                          ; preds = %bb.bu, %.lr.ph.split.split.us.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.split.split.us.preheader.i.new ], [ %indvars.iv.next.i.1, %bb.bu ] ; 3 uses
  %.0133170.us173.i = phi i32 [ 0, %.lr.ph.split.split.us.preheader.i.new ], [ %.1134.us177.i.1, %bb.bu ] ; 2 uses
  %.0140169.us174.i = phi i32 [ 0, %.lr.ph.split.split.us.preheader.i.new ], [ %.1141.us176.i.1, %bb.bu ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.split.split.us.preheader.i.new ], [ %niter.next.1, %bb.bu ]
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i
  %i.hf = load i16, ptr %i.he, align 2            ; 2 uses
  %i.hg = icmp eq i16 %i.hf, -2
  br i1 %i.hg, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph.split.split.us.i
  %i.hh = sext i32 %.0140169.us174.i to i64
  %i.hi = getelementptr inbounds [2 x i8], ptr %i.gs, i64 %i.hh
  store i16 %i.hf, ptr %i.hi, align 2
  %i.hj = add nsw i32 %.0140169.us174.i, 1
  br label %.lr.ph.split.split.us.i.1

bb.br:                                            ; preds = %.lr.ph.split.split.us.i
  %i.hk = add nsw i32 %.0133170.us173.i, 1
  br label %.lr.ph.split.split.us.i.1

.lr.ph.split.split.us.i.1:                        ; preds = %bb.br, %bb.bq
  %.1141.us176.i = phi i32 [ %.0140169.us174.i, %bb.br ], [ %i.hj, %bb.bq ] ; 3 uses
  %.1134.us177.i = phi i32 [ %i.hk, %bb.br ], [ %.0133170.us173.i, %bb.bq ] ; 2 uses
  %i.hl = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 2
  %i.hn = load i16, ptr %i.hm, align 2            ; 2 uses
  %i.ho = icmp eq i16 %i.hn, -2
  br i1 %i.ho, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %.lr.ph.split.split.us.i.1
  %i.hp = sext i32 %.1141.us176.i to i64
  %i.hq = getelementptr inbounds [2 x i8], ptr %i.gs, i64 %i.hp
  store i16 %i.hn, ptr %i.hq, align 2
  %i.hr = add nsw i32 %.1141.us176.i, 1
  br label %bb.bu

bb.bt:                                            ; preds = %.lr.ph.split.split.us.i.1
  %i.hs = add nsw i32 %.1134.us177.i, 1
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.1141.us176.i.1 = phi i32 [ %.1141.us176.i, %bb.bt ], [ %i.hr, %bb.bs ] ; 2 uses
  %.1134.us177.i.1 = phi i32 [ %i.hs, %bb.bt ], [ %.1134.us177.i, %bb.bs ] ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader166.i.loopexit103.unr-lcssa, label %.lr.ph.split.split.us.i, !llvm.loop !25

.preheader166.i.loopexit103.unr-lcssa:            ; preds = %bb.bu
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
end_hunk_2
begin_hunk_3_@_ZL12shapeUnicodePDsiijP10UErrorCodei15uShapeVariables:bb.a
  %i.lu = getelementptr inbounds [2 x i8], ptr %i.gs, i64 %i.lt
  store i16 %i.lp, ptr %i.lu, align 2
  %i.lv = add nsw i32 %.2142188.i, -1
  br label %bb.ce

bb.ce:                                            ; preds = %._crit_edge247.i, %bb.cd
  %.3143.i = phi i32 [ %.2142188.i, %bb.cd ], [ %i.lv, %._crit_edge247.i ]
  %.4137.i = phi i32 [ %i.ls, %bb.cd ], [ %.3136189.i, %._crit_edge247.i ] ; 5 uses
  %indvars.iv.next232.i = add nsw i64 %indvars.iv231.i, -1
  %i.lw = icmp sgt i64 %indvars.iv231.i, 0
  br i1 %i.lw, label %.lr.ph191.i, label %.preheader164.i, !llvm.loop !31

.lr.ph194.i:                                      ; preds = %.lr.ph194.i.preheader, %.lr.ph194.i
  %indvars.iv234.i = phi i64 [ %indvars.iv.next235.i, %.lr.ph194.i ], [ %indvars.iv234.i.ph, %.lr.ph194.i.preheader ] ; 2 uses
  %i.lx = getelementptr inbounds nuw [2 x i8], ptr %i.gs, i64 %indvars.iv234.i
  store i16 32, ptr %i.lx, align 2
  %indvars.iv.next235.i = add nuw nsw i64 %indvars.iv234.i, 1 ; 2 uses
  %exitcond238.not.i = icmp eq i64 %indvars.iv.next235.i, %wide.trip.count237.i
  br i1 %exitcond238.not.i, label %._crit_edge195.i, label %.lr.ph194.i, !llvm.loop !32

._crit_edge195.i:                                 ; preds = %.lr.ph194.i, %middle.block57, %vec.epilog.middle.block70, %.preheader164.i, %bb.cc
  %i.ly = tail call ptr @u_memcpy_78(ptr noundef nonnull %0, ptr noundef nonnull %i.gs, i32 noundef %1) #10 ; 0 uses
  br label %bb.cf

bb.cf:                                            ; preds = %._crit_edge195.i, %bb.cb
  %.2155.i = phi i32 [ %1, %._crit_edge195.i ], [ %.1154.i, %bb.cb ]
  %i.lz = icmp eq i32 %i.gk, %.sroa.3254.0.copyload
  br i1 %i.lz, label %.thread162.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ma = icmp eq i32 %i.gk, 65536
  %i.mb = icmp eq i32 %.sroa.6.0.copyload, 0
  %or.cond9.i = select i1 %i.ma, i1 %i.mb, i1 false
  br i1 %or.cond9.i, label %.thread162.i, label %bb.ch

.thread162.i:                                     ; preds = %bb.cg, %bb.cf
  %i.mc = icmp eq i32 %i.gm, %.sroa.5256.0.copyload
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.md = icmp eq i32 %i.gm, %.sroa.5256.0.copyload
  br i1 %i.md, label %bb.ci, label %bb.cl

bb.ci:                                            ; preds = %bb.ch, %.thread162.i
  %i.me = phi i1 [ %i.mc, %.thread162.i ], [ true, %bb.ch ]
  %i.mf = phi i1 [ true, %.thread162.i ], [ false, %bb.ch ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.gs, i8 0, i64 %i.gr, i1 false)
  br i1 %i.c, label %.lr.ph201.preheader.i, label %iter.check87

.lr.ph201.preheader.i:                            ; preds = %bb.ci
  %wide.trip.count242.i = zext nneg i32 %1 to i64 ; 2 uses
  br label %.lr.ph201.i

.preheader.i:                                     ; preds = %bb.ck
  %i.mg = icmp sgt i32 %.6139.i, -1
  br i1 %i.mg, label %iter.check87, label %._crit_edge207.i

iter.check87:                                     ; preds = %.preheader.i, %bb.ci
  %.5138.lcssa266.i = phi i32 [ %.6139.i, %.preheader.i ], [ 0, %bb.ci ] ; 6 uses
  %.5151.lcssa265.i = phi i64 [ %wide.trip.count242.i, %.preheader.i ], [ 0, %bb.ci ] ; 5 uses
  %narrow101 = add nuw i32 %.5138.lcssa266.i, 1
  %i.mh = zext i32 %narrow101 to i64              ; 5 uses
  %min.iters.check73 = icmp samesign ult i32 %.5138.lcssa266.i, 3
  br i1 %min.iters.check73, label %.lr.ph206.i.preheader, label %vector.main.loop.iter.check74

vector.main.loop.iter.check74:                    ; preds = %iter.check87
  %min.iters.check75 = icmp samesign ult i32 %.5138.lcssa266.i, 15
  br i1 %min.iters.check75, label %vec.epilog.ph91, label %vector.ph76

vector.ph76:                                      ; preds = %vector.main.loop.iter.check74
  %n.mod.vf77 = and i64 %i.mh, 12
  %n.vec78 = and i64 %i.mh, 4294967280            ; 5 uses
  %i.mi = sub nsw i64 %.5151.lcssa265.i, %n.vec78
  %i.mj = trunc nuw i64 %n.vec78 to i32
  %i.mk = sub i32 %.5138.lcssa266.i, %i.mj
  br label %vector.body79

vector.body79:                                    ; preds = %vector.body79, %vector.ph76
  %index80 = phi i64 [ 0, %vector.ph76 ], [ %index.next81, %vector.body79 ] ; 2 uses
  %i.ml = sub i64 %.5151.lcssa265.i, %index80
  %i.mm = getelementptr inbounds [2 x i8], ptr %i.gs, i64 %i.ml ; 2 uses
  %i.mn = getelementptr inbounds i8, ptr %i.mm, i64 -14
  %i.mo = getelementptr inbounds i8, ptr %i.mm, i64 -30
  store <8 x i16> splat (i16 32), ptr %i.mn, align 2
  store <8 x i16> splat (i16 32), ptr %i.mo, align 2
  %index.next81 = add nuw i64 %index80, 16        ; 2 uses
  %i.mp = icmp eq i64 %index.next81, %n.vec78
  br i1 %i.mp, label %middle.block82, label %vector.body79, !llvm.loop !33

middle.block82:                                   ; preds = %vector.body79
  %cmp.n83 = icmp eq i64 %n.vec78, %i.mh
  br i1 %cmp.n83, label %._crit_edge207.i, label %vec.epilog.iter.check89

vec.epilog.iter.check89:                          ; preds = %middle.block82
  %min.epilog.iters.check90 = icmp eq i64 %n.mod.vf77, 0
  br i1 %min.epilog.iters.check90, label %.lr.ph206.i.preheader, label %vec.epilog.ph91, !prof !12

vec.epilog.ph91:                                  ; preds = %vector.main.loop.iter.check74, %vec.epilog.iter.check89
  %vec.epilog.resume.val84 = phi i64 [ %n.vec78, %vec.epilog.iter.check89 ], [ 0, %vector.main.loop.iter.check74 ]
  %n.vec93 = and i64 %i.mh, 4294967292            ; 4 uses
  %i.mq = sub nsw i64 %.5151.lcssa265.i, %n.vec93
  %i.mr = trunc nuw i64 %n.vec93 to i32
  %i.ms = sub i32 %.5138.lcssa266.i, %i.mr
  br label %vec.epilog.vector.body94

vec.epilog.vector.body94:                         ; preds = %vec.epilog.vector.body94, %vec.epilog.ph91
  %index95 = phi i64 [ %vec.epilog.resume.val84, %vec.epilog.ph91 ], [ %index.next96, %vec.epilog.vector.body94 ] ; 2 uses
  %i.mt = sub i64 %.5151.lcssa265.i, %index95
  %i.mu = getelementptr inbounds [2 x i8], ptr %i.gs, i64 %i.mt
  %i.mv = getelementptr inbounds i8, ptr %i.mu, i64 -6
  store <4 x i16> splat (i16 32), ptr %i.mv, align 2
  %index.next96 = add nuw i64 %index95, 4         ; 2 uses
  %i.mw = icmp eq i64 %index.next96, %n.vec93
  br i1 %i.mw, label %vec.epilog.middle.block97, label %vec.epilog.vector.body94, !llvm.loop !34

vec.epilog.middle.block97:                        ; preds = %vec.epilog.vector.body94
  %cmp.n98 = icmp eq i64 %n.vec93, %i.mh
  br i1 %cmp.n98, label %._crit_edge207.i, label %.lr.ph206.i.preheader

.lr.ph206.i.preheader:                            ; preds = %iter.check87, %vec.epilog.iter.check89, %vec.epilog.middle.block97
  %indvars.iv244.i.ph = phi i64 [ %.5151.lcssa265.i, %iter.check87 ], [ %i.mi, %vec.epilog.iter.check89 ], [ %i.mq, %vec.epilog.middle.block97 ]
  %.7205.i.ph = phi i32 [ %.5138.lcssa266.i, %iter.check87 ], [ %i.mk, %vec.epilog.iter.check89 ], [ %i.ms, %vec.epilog.middle.block97 ]
  br label %.lr.ph206.i

.lr.ph201.i:                                      ; preds = %bb.ck, %.lr.ph201.preheader.i
  %indvars.iv239.i = phi i64 [ 0, %.lr.ph201.preheader.i ], [ %indvars.iv.next240.i, %bb.ck ] ; 2 uses
  %.5138199.i = phi i32 [ 0, %.lr.ph201.preheader.i ], [ %.6139.i, %bb.ck ] ; 2 uses
  %.4144198.i = phi i32 [ 0, %.lr.ph201.preheader.i ], [ %.5145.i, %bb.ck ] ; 3 uses
  %i.mx = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv239.i
  %i.my = load i16, ptr %i.mx, align 2            ; 3 uses
  %i.mz = icmp eq i16 %i.my, -1
  %or.cond365 = select i1 %i.mf, i1 %i.mz, i1 false
  %i.na = icmp eq i16 %i.my, -2
  %or.cond270.i = select i1 %i.me, i1 %i.na, i1 false
  %or.cond366 = select i1 %or.cond365, i1 true, i1 %or.cond270.i
  br i1 %or.cond366, label %bb.cj, label %._crit_edge248.i

bb.cj:                                            ; preds = %.lr.ph201.i
  %i.nb = add nsw i32 %.5138199.i, 1
  br label %bb.ck

._crit_edge248.i:                                 ; preds = %.lr.ph201.i
  %i.nc = sext i32 %.4144198.i to i64
  %i.nd = getelementptr inbounds [2 x i8], ptr %i.gs, i64 %i.nc
  store i16 %i.my, ptr %i.nd, align 2
  %i.ne = add nsw i32 %.4144198.i, 1
  br label %bb.ck

bb.ck:                                            ; preds = %._crit_edge248.i, %bb.cj
  %.5145.i = phi i32 [ %.4144198.i, %bb.cj ], [ %i.ne, %._crit_edge248.i ]
  %.6139.i = phi i32 [ %i.nb, %bb.cj ], [ %.5138199.i, %._crit_edge248.i ] ; 3 uses
  %indvars.iv.next240.i = add nuw nsw i64 %indvars.iv239.i, 1 ; 2 uses
  %exitcond243.not.i = icmp eq i64 %indvars.iv.next240.i, %wide.trip.count242.i
  br i1 %exitcond243.not.i, label %.preheader.i, label %.lr.ph201.i, !llvm.loop !35

.lr.ph206.i:                                      ; preds = %.lr.ph206.i.preheader, %.lr.ph206.i
  %indvars.iv244.i = phi i64 [ %indvars.iv.next245.i, %.lr.ph206.i ], [ %indvars.iv244.i.ph, %.lr.ph206.i.preheader ] ; 2 uses
  %.7205.i = phi i32 [ %i.ng, %.lr.ph206.i ], [ %.7205.i.ph, %.lr.ph206.i.preheader ] ; 2 uses
  %i.nf = getelementptr inbounds [2 x i8], ptr %i.gs, i64 %indvars.iv244.i
  store i16 32, ptr %i.nf, align 2
  %indvars.iv.next245.i = add nsw i64 %indvars.iv244.i, -1
  %i.ng = add nsw i32 %.7205.i, -1
  %.not272.i = icmp eq i32 %.7205.i, 0
  br i1 %.not272.i, label %._crit_edge207.i, label %.lr.ph206.i, !llvm.loop !36

._crit_edge207.i:                                 ; preds = %.lr.ph206.i, %middle.block82, %vec.epilog.middle.block97, %.preheader.i
  %i.nh = tail call ptr @u_memcpy_78(ptr noundef nonnull %0, ptr noundef nonnull %i.gs, i32 noundef %1) #10 ; 0 uses
  br label %bb.cl

bb.cl:                                            ; preds = %._crit_edge207.i, %bb.ch
  %.3156.i = phi i32 [ %1, %._crit_edge207.i ], [ %.2155.i, %bb.ch ] ; 2 uses
  tail call void @uprv_free_78(ptr noundef nonnull %i.gs) #10
  br i1 %i.gj, label %bb.cm, label %_ZL21handleGeneratedSpacesPDsiijP10UErrorCode15uShapeVariables.exit.thread

_ZL21handleGeneratedSpacesPDsiijP10UErrorCode15uShapeVariables.exit: ; preds = %._crit_edge298
  br i1 %i.gj, label %bb.cm, label %_ZL21handleGeneratedSpacesPDsiijP10UErrorCode15uShapeVariables.exit.thread

bb.cm:                                            ; preds = %bb.bk, %bb.cl, %bb.bi, %_ZL21handleGeneratedSpacesPDsiijP10UErrorCode15uShapeVariables.exit
  %.0352 = phi i32 [ 0, %bb.bi ], [ %1, %_ZL21handleGeneratedSpacesPDsiijP10UErrorCode15uShapeVariables.exit ], [ %.3156.i, %bb.cl ], [ 0, %bb.bk ]
  %i.ni = tail call fastcc noundef i32 @_ZL18expandCompositCharPDsiijP10UErrorCodei15uShapeVariables(ptr noundef %0, i32 noundef %1, i32 noundef %.0352, i32 noundef %2, ptr noundef %3, i32 noundef 0, ptr noundef nonnull byval(%struct.uShapeVariables) align 8 %5)
  br label %_ZL21handleGeneratedSpacesPDsiijP10UErrorCode15uShapeVariables.exit.thread

_ZL21handleGeneratedSpacesPDsiijP10UErrorCode15uShapeVariables.exit.thread: ; preds = %_ZL7getLinkDs.exit, %bb.bk, %bb.cl, %bb.bi, %_ZL21handleGeneratedSpacesPDsiijP10UErrorCode15uShapeVariables.exit, %bb.cm
  %.1 = phi i32 [ %i.ni, %bb.cm ], [ %1, %_ZL21handleGeneratedSpacesPDsiijP10UErrorCode15uShapeVariables.exit ], [ 0, %bb.bk ], [ 0, %bb.bi ], [ %.3156.i, %bb.cl ], [ 0, %_ZL7getLinkDs.exit ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @_ZL25handleTashkeelWithTatweelPDsiijP10UErrorCode(ptr nofree noundef nonnull captures(none) %0, i32 noundef returned %1) unnamed_addr #7 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.c = load i16, ptr %i.b, align 2              ; 9 uses
  %i.d = and i16 %i.c, -16
  %or.cond.i = icmp eq i16 %i.d, -400
  br i1 %or.cond.i, label %switch.early.test.i, label %bb.b

switch.early.test.i:                              ; preds = %.lr.ph
  switch i16 %i.c, label %_ZL23isTashkeelOnTatweelCharDs.exit [
    i16 -387, label %.sink.split
    i16 -395, label %bb.c
    i16 -397, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.e = add i16 %i.c, 782
  %i.f = icmp ult i16 %i.e, 3
  br i1 %i.f, label %.sink.split, label %bb.c

_ZL23isTashkeelOnTatweelCharDs.exit:              ; preds = %switch.early.test.i
  %2 = and i16 %i.c, 15                           ; 2 uses
  %3 = zext nneg i16 %2 to i64
  %4 = shl nuw nsw i64 1, %3
  %5 = and i64 %4, 43650
  %.not15 = icmp eq i64 %5, 0
  br i1 %.not15, label %switch.early.test.i23, label %.sink.split

switch.early.test.i23:                            ; preds = %_ZL23isTashkeelOnTatweelCharDs.exit
  switch i16 %i.c, label %switch.early.test.i27 [
    i16 -387, label %.sink.split
    i16 -395, label %bb.c
    i16 -397, label %bb.c
  ]

switch.early.test.i27:                            ; preds = %switch.early.test.i23
  %6 = lshr i16 -21886, %2
  %7 = trunc i16 %6 to i1
  br label %_ZL22isIsolatedTashkeelCharDs.exit

bb.c:                                             ; preds = %bb.b, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i23, %switch.early.test.i23
  %i.g = add i16 %i.c, 924
  %or.cond11.i = icmp ult i16 %i.g, -6
  br label %_ZL22isIsolatedTashkeelCharDs.exit

_ZL22isIsolatedTashkeelCharDs.exit:               ; preds = %switch.early.test.i27, %bb.c
  %.0.i26 = phi i1 [ %7, %switch.early.test.i27 ], [ %or.cond11.i, %bb.c ]
  %.not18 = icmp eq i16 %i.c, -388
  %or.cond14 = or i1 %.not18, %.0.i26
  br i1 %or.cond14, label %bb.d, label %.sink.split

.sink.split:                                      ; preds = %_ZL22isIsolatedTashkeelCharDs.exit, %switch.early.test.i23, %switch.early.test.i, %bb.b, %_ZL23isTashkeelOnTatweelCharDs.exit
  %.sink = phi i16 [ 1600, %_ZL23isTashkeelOnTatweelCharDs.exit ], [ %i.c, %switch.early.test.i23 ], [ -387, %bb.b ], [ %i.c, %switch.early.test.i ], [ 32, %_ZL22isIsolatedTashkeelCharDs.exit ]
  store i16 %.sink, ptr %i.b, align 2
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %_ZL22isIsolatedTashkeelCharDs.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !37

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret i32 %1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZL14deShapeUnicodePDsiijP10UErrorCode15uShapeVariables(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef readonly byval(%struct.uShapeVariables) align 8 captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = and i32 %2, 58720256
  %i.b = icmp eq i32 %i.a, 16777216               ; 2 uses
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a
  %i.d = and i32 %2, 7340032
  %i.e = icmp eq i32 %i.d, 2097152
  %i.f = add nsw i32 %1, -1                       ; 2 uses
  br i1 %i.e, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.g = zext nneg i32 %i.f to i64                ; 3 uses
  %wide.trip.count104 = zext nneg i32 %1 to i64   ; 2 uses
  br i1 %i.b, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %bb.k
  %indvars.iv101 = phi i64 [ %indvars.iv.next102, %bb.k ], [ 0, %.lr.ph.split.us ] ; 4 uses
  %.05974.us.us = phi i32 [ %spec.select.us.us, %bb.k ], [ 0, %.lr.ph.split.us ]
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv101 ; 7 uses
  %i.i = load i16, ptr %i.h, align 2              ; 9 uses
  %i.j = add i16 %i.i, 1200
  %or.cond.us.us = icmp ult i16 %i.j, 176
  br i1 %or.cond.us.us, label %bb.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us.split.us
  switch i16 %i.i, label %bb.f [
    i16 -384, label %bb.c
    i16 1569, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.k = icmp samesign ult i64 %indvars.iv101, %i.g
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 2 ; 2 uses
  %i.m = load i16, ptr %i.l, align 2
  switch i16 %i.m, label %bb.f [
    i16 -272, label %bb.e
    i16 -273, label %bb.e
    i16 1609, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d
  store i16 32, ptr %i.h, align 2
  store i16 1574, ptr %i.l, align 2
  br label %bb.k

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  %switch.selectcmp.case1.i.us.us = icmp eq i16 %i.i, -397
  %switch.selectcmp.case2.i.us.us = icmp eq i16 %i.i, 8203
  %switch.selectcmp.i.us.us = or i1 %switch.selectcmp.case1.i.us.us, %switch.selectcmp.case2.i.us.us
  %i.n = icmp samesign ult i64 %indvars.iv101, %i.g
  %or.cond69.us.us = select i1 %switch.selectcmp.i.us.us, i1 %i.n, i1 false
  br i1 %or.cond69.us.us, label %bb.g, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us.us

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.p = load i16, ptr %i.o, align 2              ; 2 uses
  %i.q = add i16 %i.p, 335
  %or.cond.i70.us.us = icmp ult i16 %i.q, 14
  br i1 %or.cond.i70.us.us, label %_ZL20isSeenTailFamilyCharDs.exit.us.us, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us.us

_ZL20isSeenTailFamilyCharDs.exit.us.us:           ; preds = %bb.g
  %i.r = zext i16 %i.p to i64
  %5 = add nuw nsw i64 %i.r, 4294902095
  %6 = and i64 %5, 4294967295
  %7 = shl nuw nsw i64 1, %6
  %8 = and i64 %7, 3276
  %.not65.not.us.us = icmp eq i64 %8, 0
  br i1 %.not65.not.us.us, label %9, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us.us

_ZL20isSeenTailFamilyCharDs.exit.thread.us.us:    ; preds = %_ZL20isSeenTailFamilyCharDs.exit.us.us, %bb.g, %bb.f
  %i.s = add i16 %i.i, 400
  %or.cond8.us.us = icmp ult i16 %i.s, 133
  br i1 %or.cond8.us.us, label %bb.h, label %bb.k

bb.h:                                             ; preds = %_ZL20isSeenTailFamilyCharDs.exit.thread.us.us
  %i.t = zext i16 %i.i to i64
  %i.u = getelementptr [2 x i8], ptr @_ZL13convertFEto06, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 -130272
  %i.w = load i16, ptr %i.v, align 2              ; 2 uses
  store i16 %i.w, ptr %i.h, align 2
  br label %bb.k

9:                                                ; preds = %_ZL20isSeenTailFamilyCharDs.exit.us.us
  store i16 32, ptr %i.h, align 2
  br label %bb.k

bb.i:                                             ; preds = %.lr.ph.split.us.split.us
  %i.x = zext i16 %i.i to i64
  %10 = add nuw nsw i64 %i.x, 4294902960
  %11 = and i64 %10, 4294967295
  %12 = getelementptr inbounds nuw [2 x i8], ptr @_ZL13convertFBto06, i64 %11
  %i.y = load i16, ptr %12, align 2               ; 3 uses
  %.not66.us.us = icmp eq i16 %i.y, 0
  br i1 %.not66.us.us, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i16 %i.y, ptr %i.h, align 2
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %9, %bb.h, %_ZL20isSeenTailFamilyCharDs.exit.thread.us.us, %bb.e
  %i.z = phi i16 [ %i.y, %bb.j ], [ %i.i, %bb.i ], [ 32, %9 ], [ %i.w, %bb.h ], [ %i.i, %_ZL20isSeenTailFamilyCharDs.exit.thread.us.us ], [ 32, %bb.e ]
  %i.aa = add i16 %i.z, 259
  %i.ab = icmp ult i16 %i.aa, -8
  %spec.select.us.us = select i1 %i.ab, i32 %.05974.us.us, i32 1 ; 2 uses
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %exitcond105.not = icmp eq i64 %indvars.iv.next102, %wide.trip.count104
  br i1 %exitcond105.not, label %._crit_edge, label %.lr.ph.split.us.split.us, !llvm.loop !38

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %bb.p
  %indvars.iv96 = phi i64 [ %indvars.iv.next97, %bb.p ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %.05974.us = phi i32 [ %spec.select.us, %bb.p ], [ 0, %.lr.ph.split.us ]
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv96 ; 3 uses
  %i.ad = load i16, ptr %i.ac, align 2            ; 8 uses
  %i.ae = add i16 %i.ad, 1200
  %or.cond.us = icmp ult i16 %i.ae, 176
  br i1 %or.cond.us, label %bb.o, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split.us.split
  %switch.selectcmp.case1.i.us = icmp eq i16 %i.ad, -397
  %switch.selectcmp.case2.i.us = icmp eq i16 %i.ad, 8203
  %switch.selectcmp.i.us = or i1 %switch.selectcmp.case1.i.us, %switch.selectcmp.case2.i.us
  %i.af = icmp samesign ult i64 %indvars.iv96, %i.g
  %or.cond69.us = select i1 %switch.selectcmp.i.us, i1 %i.af, i1 false
  br i1 %or.cond69.us, label %bb.m, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  %i.ah = load i16, ptr %i.ag, align 2            ; 2 uses
  %i.ai = add i16 %i.ah, 335
  %or.cond.i70.us = icmp ult i16 %i.ai, 14
  br i1 %or.cond.i70.us, label %_ZL20isSeenTailFamilyCharDs.exit.us, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us

_ZL20isSeenTailFamilyCharDs.exit.us:              ; preds = %bb.m
  %i.aj = zext i16 %i.ah to i64
  %13 = add nuw nsw i64 %i.aj, 4294902095
  %14 = and i64 %13, 4294967295
  %15 = shl nuw nsw i64 1, %14
  %16 = and i64 %15, 3276
  %.not65.not.us = icmp eq i64 %16, 0
  br i1 %.not65.not.us, label %.sink.split, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us

_ZL20isSeenTailFamilyCharDs.exit.thread.us:       ; preds = %_ZL20isSeenTailFamilyCharDs.exit.us, %bb.m, %bb.l
  %i.ak = add i16 %i.ad, 400
  %or.cond8.us = icmp ult i16 %i.ak, 133
  br i1 %or.cond8.us, label %bb.n, label %bb.p

bb.n:                                             ; preds = %_ZL20isSeenTailFamilyCharDs.exit.thread.us
  %i.al = zext i16 %i.ad to i64
  %i.am = getelementptr [2 x i8], ptr @_ZL13convertFEto06, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 -130272
  %i.ao = load i16, ptr %i.an, align 2
  br label %.sink.split

bb.o:                                             ; preds = %.lr.ph.split.us.split
  %i.ap = zext i16 %i.ad to i64
  %17 = add nuw nsw i64 %i.ap, 4294902960
  %18 = and i64 %17, 4294967295
  %19 = getelementptr inbounds nuw [2 x i8], ptr @_ZL13convertFBto06, i64 %18
  %i.aq = load i16, ptr %19, align 2              ; 2 uses
  %.not66.us = icmp eq i16 %i.aq, 0
  br i1 %.not66.us, label %bb.p, label %.sink.split

.sink.split:                                      ; preds = %bb.o, %_ZL20isSeenTailFamilyCharDs.exit.us, %bb.n
  %.sink = phi i16 [ 32, %_ZL20isSeenTailFamilyCharDs.exit.us ], [ %i.ao, %bb.n ], [ %i.aq, %bb.o ] ; 2 uses
  store i16 %.sink, ptr %i.ac, align 2
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.o, %_ZL20isSeenTailFamilyCharDs.exit.thread.us
  %i.ar = phi i16 [ %i.ad, %_ZL20isSeenTailFamilyCharDs.exit.thread.us ], [ %i.ad, %bb.o ], [ %.sink, %.sink.split ]
  %i.as = add i16 %i.ar, 259
  %i.at = icmp ult i16 %i.as, -8
  %spec.select.us = select i1 %i.at, i32 %.05974.us, i32 1 ; 2 uses
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %exitcond100.not = icmp eq i64 %indvars.iv.next97, %wide.trip.count104
  br i1 %exitcond100.not, label %._crit_edge, label %.lr.ph.split.us.split, !llvm.loop !38

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.b, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph.split.split

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  %i.au = zext nneg i32 %i.f to i64
  %wide.trip.count94 = zext nneg i32 %1 to i64
  br label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.split.us.preheader, %bb.x
  %indvars.iv91 = phi i64 [ 0, %.lr.ph.split.split.us.preheader ], [ %indvars.iv.next92, %bb.x ] ; 3 uses
  %.05974.us78 = phi i32 [ 0, %.lr.ph.split.split.us.preheader ], [ %spec.select.us83, %bb.x ]
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv91 ; 5 uses
  %i.aw = load i16, ptr %i.av, align 2            ; 7 uses
  %i.ax = add i16 %i.aw, 1200
  %or.cond.us79 = icmp ult i16 %i.ax, 176
  br i1 %or.cond.us79, label %bb.v, label %bb.q

bb.q:                                             ; preds = %.lr.ph.split.split.us
  switch i16 %i.aw, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us80 [
    i16 -384, label %bb.r
    i16 1569, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q, %bb.q
  %i.ay = icmp samesign ult i64 %indvars.iv91, %i.au
  br i1 %i.ay, label %bb.s, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us80

bb.s:                                             ; preds = %bb.r
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 2 ; 2 uses
  %i.ba = load i16, ptr %i.az, align 2
  switch i16 %i.ba, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us80 [
    i16 -272, label %bb.t
    i16 -273, label %bb.t
    i16 1609, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s, %bb.s, %bb.s
  store i16 32, ptr %i.av, align 2
  store i16 1574, ptr %i.az, align 2
  br label %bb.x

_ZL20isSeenTailFamilyCharDs.exit.thread.us80:     ; preds = %bb.s, %bb.r, %bb.q
  %i.bb = add i16 %i.aw, 400
  %or.cond8.us81 = icmp ult i16 %i.bb, 133
  br i1 %or.cond8.us81, label %bb.u, label %bb.x

bb.u:                                             ; preds = %_ZL20isSeenTailFamilyCharDs.exit.thread.us80
  %i.bc = zext i16 %i.aw to i64
  %i.bd = getelementptr [2 x i8], ptr @_ZL13convertFEto06, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 -130272
  %i.bf = load i16, ptr %i.be, align 2            ; 2 uses
  store i16 %i.bf, ptr %i.av, align 2
  br label %bb.x

bb.v:                                             ; preds = %.lr.ph.split.split.us
  %i.bg = zext i16 %i.aw to i64
  %20 = add nuw nsw i64 %i.bg, 4294902960
  %21 = and i64 %20, 4294967295
  %22 = getelementptr inbounds nuw [2 x i8], ptr @_ZL13convertFBto06, i64 %21
  %i.bh = load i16, ptr %22, align 2              ; 3 uses
  %.not66.us82 = icmp eq i16 %i.bh, 0
  br i1 %.not66.us82, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i16 %i.bh, ptr %i.av, align 2
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %_ZL20isSeenTailFamilyCharDs.exit.thread.us80, %bb.t
  %i.bi = phi i16 [ %i.bh, %bb.w ], [ %i.aw, %bb.v ], [ %i.bf, %bb.u ], [ %i.aw, %_ZL20isSeenTailFamilyCharDs.exit.thread.us80 ], [ 32, %bb.t ]
  %i.bj = add i16 %i.bi, 259
  %i.bk = icmp ult i16 %i.bj, -8
  %spec.select.us83 = select i1 %i.bk, i32 %.05974.us78, i32 1 ; 2 uses
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %exitcond95.not = icmp eq i64 %indvars.iv.next92, %wide.trip.count94
  br i1 %exitcond95.not, label %._crit_edge, label %.lr.ph.split.split.us, !llvm.loop !38

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %bb.aa
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.split.preheader ], [ %indvars.iv.next, %bb.aa ] ; 2 uses
  %.05974 = phi i32 [ 0, %.lr.ph.split.split.preheader ], [ %spec.select, %bb.aa ]
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.bm = load i16, ptr %i.bl, align 2            ; 6 uses
  %i.bn = add i16 %i.bm, 1200
  %or.cond = icmp ult i16 %i.bn, 176
  br i1 %or.cond, label %bb.y, label %_ZL20isSeenTailFamilyCharDs.exit.thread

bb.y:                                             ; preds = %.lr.ph.split.split
  %i.bo = zext i16 %i.bm to i64
  %23 = add nuw nsw i64 %i.bo, 4294902960
  %24 = and i64 %23, 4294967295
  %25 = getelementptr inbounds nuw [2 x i8], ptr @_ZL13convertFBto06, i64 %24
  %i.bp = load i16, ptr %25, align 2              ; 2 uses
  %.not66 = icmp eq i16 %i.bp, 0
  br i1 %.not66, label %bb.aa, label %.sink.split116

_ZL20isSeenTailFamilyCharDs.exit.thread:          ; preds = %.lr.ph.split.split
  %i.bq = add i16 %i.bm, 400
  %or.cond8 = icmp ult i16 %i.bq, 133
  br i1 %or.cond8, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZL20isSeenTailFamilyCharDs.exit.thread
  %i.br = zext i16 %i.bm to i64
  %i.bs = getelementptr [2 x i8], ptr @_ZL13convertFEto06, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 -130272
  %i.bu = load i16, ptr %i.bt, align 2
  br label %.sink.split116

.sink.split116:                                   ; preds = %bb.y, %bb.z
  %.sink118 = phi i16 [ %i.bu, %bb.z ], [ %i.bp, %bb.y ] ; 2 uses
  store i16 %.sink118, ptr %i.bl, align 2
  br label %bb.aa

bb.aa:                                            ; preds = %.sink.split116, %_ZL20isSeenTailFamilyCharDs.exit.thread, %bb.y
  %i.bv = phi i16 [ %i.bm, %_ZL20isSeenTailFamilyCharDs.exit.thread ], [ %i.bm, %bb.y ], [ %.sink118, %.sink.split116 ]
  %i.bw = add i16 %i.bv, 259
  %i.bx = icmp ult i16 %i.bw, -8
  %spec.select = select i1 %i.bx, i32 %.05974, i32 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.split, !llvm.loop !38

._crit_edge:                                      ; preds = %bb.aa, %bb.x, %bb.p, %bb.k
  %.059.lcssa = phi i32 [ %spec.select.us.us, %bb.k ], [ %spec.select.us83, %bb.x ], [ %spec.select.us, %bb.p ], [ %spec.select, %bb.aa ]
  %.not = icmp eq i32 %.059.lcssa, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge
  %i.by = tail call fastcc noundef i32 @_ZL18expandCompositCharPDsiijP10UErrorCodei15uShapeVariables(ptr noundef %0, i32 noundef %1, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef 1, ptr noundef nonnull byval(%struct.uShapeVariables) align 8 %4)
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.ab, %._crit_edge
  %.0 = phi i32 [ %i.by, %bb.ab ], [ %1, %._crit_edge ], [ %1, %bb.a ]
  ret i32 %.0
}

declare i32 @uprv_min_78(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL31_shapeToArabicDigitsWithContextPDsiDsaa(ptr nofree noundef captures(none) %0, i32 noundef %1, i16 noundef zeroext range(i16 0, 1777) %2, i8 noundef signext range(i8 0, 2) %3, i8 noundef signext range(i8 0, 2) %4) unnamed_addr #0 {
bb.a:
  %i.a = add nsw i16 %2, -48                      ; 2 uses
  %.not = icmp eq i8 %3, 0
  %i.b = icmp sgt i32 %1, 0                       ; 2 uses
  br i1 %.not, label %.preheader, label %.preheader28

.preheader28:                                     ; preds = %bb.a
  br i1 %i.b, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader28
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.preheader:                                       ; preds = %bb.a
  br i1 %i.b, label %.lr.ph34.preheader, label %.loopexit

.lr.ph34.preheader:                               ; preds = %.preheader
  %i.c = zext nneg i32 %1 to i64
  br label %.lr.ph34

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.02430 = phi i8 [ %4, %.lr.ph.preheader ], [ %.125, %bb.g ] ; 2 uses
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.e = load i16, ptr %i.d, align 2              ; 3 uses
  %i.f = zext i16 %i.e to i32
  %i.g = tail call i32 @ubidi_getClass_78(i32 noundef %i.f) #10
  switch i32 %i.g, label %bb.g [
    i32 0, label %bb.b
    i32 1, label %bb.b
    i32 13, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph
  br label %bb.g

bb.c:                                             ; preds = %.lr.ph
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph
  %.not27 = icmp eq i8 %.02430, 0
  br i1 %.not27, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = add i16 %i.e, -48
  %i.i = icmp ult i16 %i.h, 10
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = add nsw i16 %i.e, %i.a
  store i16 %i.j, ptr %i.d, align 2
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.c, %bb.f, %bb.e, %bb.d, %.lr.ph
  %.125 = phi i8 [ %.02430, %.lr.ph ], [ 0, %bb.b ], [ 1, %bb.c ], [ 1, %bb.f ], [ 1, %bb.e ], [ 0, %bb.d ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !39

.lr.ph34:                                         ; preds = %.lr.ph34.preheader, %bb.m
  %indvars.iv36 = phi i64 [ %i.c, %.lr.ph34.preheader ], [ %indvars.iv.next37, %bb.m ] ; 2 uses
  %.232 = phi i8 [ %4, %.lr.ph34.preheader ], [ %.3, %bb.m ] ; 2 uses
  %indvars.iv.next37 = add nsw i64 %indvars.iv36, -1 ; 2 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next37 ; 2 uses
  %i.l = load i16, ptr %i.k, align 2              ; 3 uses
  %i.m = zext i16 %i.l to i32
  %i.n = tail call i32 @ubidi_getClass_78(i32 noundef %i.m) #10
  switch i32 %i.n, label %bb.m [
    i32 0, label %bb.h
    i32 1, label %bb.h
    i32 13, label %bb.i
    i32 2, label %bb.j
  ]

bb.h:                                             ; preds = %.lr.ph34, %.lr.ph34
  br label %bb.m

bb.i:                                             ; preds = %.lr.ph34
  br label %bb.m

bb.j:                                             ; preds = %.lr.ph34
  %.not26 = icmp eq i8 %.232, 0
  br i1 %.not26, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = add i16 %i.l, -48
  %i.p = icmp ult i16 %i.o, 10
  br i1 %i.p, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.q = add nsw i16 %i.l, %i.a
  store i16 %i.q, ptr %i.k, align 2
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph34, %bb.j, %bb.k, %bb.l, %bb.i, %bb.h
  %.3 = phi i8 [ %.232, %.lr.ph34 ], [ 0, %bb.h ], [ 1, %bb.i ], [ 1, %bb.l ], [ 1, %bb.k ], [ 0, %bb.j ]
  %i.r = icmp samesign ugt i64 %indvars.iv36, 1
  br i1 %i.r, label %.lr.ph34, label %.loopexit, !llvm.loop !40

.loopexit:                                        ; preds = %bb.g, %bb.m, %.preheader28, %.preheader
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZL18expandCompositCharPDsiijP10UErrorCodei15uShapeVariables(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull captures(none) %4, i32 noundef range(i32 0, 2) %5, ptr nofree noundef readonly byval(%struct.uShapeVariables) align 8 captures(none) %6) unnamed_addr #0 {
bb.a:
  %.not = icmp ne i32 %5, 0                       ; 4 uses
  %i.a = and i32 %3, 65539                        ; 5 uses
  %i.b = icmp eq i32 %i.a, 65536
  %or.cond109 = and i1 %i.b, %.not
  br i1 %or.cond109, label %bb.b, label %_ZL24expandCompositCharAtNearPDsiiP10UErrorCodeiii15uShapeVariables.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = tail call fastcc noundef i32 @_ZL23expandCompositCharAtEndPDsiiP10UErrorCode(ptr noundef %0, i32 noundef %1, ptr noundef %4)
  %i.g = load i32, ptr %4, align 4
  %i.h = icmp eq i32 %i.g, 20
  br i1 %i.h, label %bb.d, label %_ZL24expandCompositCharAtNearPDsiiP10UErrorCodeiii15uShapeVariables.exit.thread

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %4, align 4
  %i.i = tail call fastcc noundef i32 @_ZL25expandCompositCharAtBeginPDsiiP10UErrorCode(ptr noundef %0, i32 noundef %1, ptr noundef %4)
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.j = tail call fastcc noundef i32 @_ZL25expandCompositCharAtBeginPDsiiP10UErrorCode(ptr noundef %0, i32 noundef %1, ptr noundef %4)
  %i.k = load i32, ptr %4, align 4
  %i.l = icmp eq i32 %i.k, 20
  br i1 %i.l, label %bb.f, label %_ZL24expandCompositCharAtNearPDsiiP10UErrorCodeiii15uShapeVariables.exit.thread

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %4, align 4
  %i.m = tail call fastcc noundef i32 @_ZL23expandCompositCharAtEndPDsiiP10UErrorCode(ptr noundef %0, i32 noundef %1, ptr noundef %4)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.0103.ph = phi i32 [ %i.m, %bb.f ], [ %i.i, %bb.d ]
  %.pr = load i32, ptr %4, align 4
  %i.n = icmp eq i32 %.pr, 20
  br i1 %i.n, label %bb.h, label %_ZL24expandCompositCharAtNearPDsiiP10UErrorCodeiii15uShapeVariables.exit.thread

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %4, align 4
  %.not.not3.i = icmp sgt i32 %1, 0
  br i1 %.not.not3.i, label %.lr.ph.i, label %_ZL24expandCompositCharAtNearPDsiiP10UErrorCodeiii15uShapeVariables.exit.thread

.lr.ph.i:                                         ; preds = %bb.h
end_hunk_3
begin_hunk_4_@_ZL18expandCompositCharPDsiijP10UErrorCodei15uShapeVariables:bb.a

bb.n:                                             ; preds = %_ZL24expandCompositCharAtNearPDsiiP10UErrorCodeiii15uShapeVariables.exit.thread, %bb.m
  %.2.ph = phi i32 [ %.1104139, %_ZL24expandCompositCharAtNearPDsiiP10UErrorCodeiii15uShapeVariables.exit.thread ], [ %i.ac, %bb.m ]
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = icmp eq i32 %i.a, %i.ae
  br i1 %i.af, label %bb.o, label %.thread145

bb.o:                                             ; preds = %bb.n
  %i.ag = tail call fastcc noundef i32 @_ZL25expandCompositCharAtBeginPDsiiP10UErrorCode(ptr noundef %0, i32 noundef %1, ptr noundef %4)
  br label %.thread145

bb.p:                                             ; preds = %_ZL24expandCompositCharAtNearPDsiiP10UErrorCodeiii15uShapeVariables.exit
  %i.ah = and i32 %3, 58720256
  %i.ai = icmp eq i32 %i.ah, 16777216
  %spec.select = zext i1 %i.ai to i32
  %i.aj = and i32 %3, 7340032
  %i.ak = icmp eq i32 %i.aj, 2097152              ; 2 uses
  %i.al = xor i1 %i.ak, true
  br label %.thread145

.thread145:                                       ; preds = %bb.o, %bb.n, %bb.p
  %.3147 = phi i32 [ %.1104, %bb.p ], [ %.2.ph, %bb.n ], [ %i.ag, %bb.o ]
  %.1 = phi i32 [ %spec.select, %bb.p ], [ 0, %bb.n ], [ 0, %bb.o ] ; 2 uses
  %i.am = phi i1 [ %i.ak, %bb.p ], [ false, %bb.n ], [ false, %bb.o ]
  %.096 = phi i1 [ %i.al, %bb.p ], [ true, %bb.n ], [ true, %bb.o ]
  %i.an = icmp eq i32 %i.a, 1
  %or.cond112 = and i1 %i.an, %.not               ; 6 uses
  %i.ao = icmp ne i32 %.1, 0
  %or.cond = or i1 %i.ao, %i.am
  %or.cond3 = or i1 %or.cond112, %or.cond
  br i1 %or.cond3, label %bb.q, label %_ZL24expandCompositCharAtNearPDsiiP10UErrorCodeiii15uShapeVariables.exit128

bb.q:                                             ; preds = %.thread145
  %.sroa.0.0.copyload = load i16, ptr %6, align 8 ; 4 uses
  %.not.not3.i121 = icmp sgt i32 %1, 0
  br i1 %.not.not3.i121, label %.lr.ph.i122, label %_ZL24expandCompositCharAtNearPDsiiP10UErrorCodeiii15uShapeVariables.exit128

.lr.ph.i122:                                      ; preds = %bb.q
  %.not41.i = icmp eq i32 %.1, 0                  ; 2 uses
  br i1 %.096, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i122
  br i1 %.not41.i, label %.lr.ph.split.us.split.us.i, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us.preheader.i

_ZL20isSeenTailFamilyCharDs.exit.thread.us.preheader.i: ; preds = %.lr.ph.split.us.i
  %wide.trip.count45.i = zext nneg i32 %1 to i64
  %i.ap = load i16, ptr %0, align 2               ; 2 uses
  %i.aq = add i16 %i.ap, 373
  %or.cond.i47.us.peel.i = icmp ult i16 %i.aq, -2
  br i1 %or.cond.i47.us.peel.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZL20isSeenTailFamilyCharDs.exit.thread.us.preheader.i
  store i32 20, ptr %4, align 4
  br label %bb.x

bb.s:                                             ; preds = %_ZL20isSeenTailFamilyCharDs.exit.thread.us.preheader.i
  br i1 %or.cond112, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.as = load i16, ptr %i.ar, align 2            ; 2 uses
  %i.at = add i16 %i.as, 259
  %i.au = icmp ult i16 %i.at, -8
  br i1 %i.au, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.av = icmp eq i16 %i.ap, 32
  br i1 %i.av, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i32 20, ptr %4, align 4
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  store i16 1604, ptr %i.ar, align 2
  %i.aw = zext i16 %i.as to i64
  %i.ax = getelementptr [2 x i8], ptr @_ZL14convertLamAlef, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ax, i64 -130538
  %i.az = load i16, ptr %i.ay, align 2
  store i16 %i.az, ptr %0, align 2
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.t, %bb.s, %bb.r
  %exitcond46.peel.not.i = icmp eq i32 %1, 1
  br i1 %exitcond46.peel.not.i, label %_ZL24expandCompositCharAtNearPDsiiP10UErrorCodeiii15uShapeVariables.exit128, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us.i

.lr.ph.split.us.split.us.i:                       ; preds = %.lr.ph.split.us.i
  br i1 %or.cond112, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us.us.preheader.i, label %_ZL24expandCompositCharAtNearPDsiiP10UErrorCodeiii15uShapeVariables.exit128

_ZL20isSeenTailFamilyCharDs.exit.thread.us.us.preheader.i: ; preds = %.lr.ph.split.us.split.us.i
  %wide.trip.count51.i123 = zext nneg i32 %1 to i64
  br label %_ZL20isSeenTailFamilyCharDs.exit.thread.us.us.i124

_ZL20isSeenTailFamilyCharDs.exit.thread.us.us.i124: ; preds = %bb.ab, %_ZL20isSeenTailFamilyCharDs.exit.thread.us.us.preheader.i
  %indvars.iv48.i125 = phi i64 [ 0, %_ZL20isSeenTailFamilyCharDs.exit.thread.us.us.preheader.i ], [ %indvars.iv.next49.i126, %bb.ab ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv48.i125 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 2 ; 2 uses
  %i.bc = load i16, ptr %i.bb, align 2            ; 2 uses
  %i.bd = add i16 %i.bc, 259
  %i.be = icmp ult i16 %i.bd, -8
  br i1 %i.be, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %_ZL20isSeenTailFamilyCharDs.exit.thread.us.us.i124
  %i.bf = load i16, ptr %i.ba, align 2
  %i.bg = icmp eq i16 %i.bf, 32
  br i1 %i.bg, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i32 20, ptr %4, align 4
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  store i16 1604, ptr %i.bb, align 2
  %i.bh = zext i16 %i.bc to i64
  %i.bi = getelementptr [2 x i8], ptr @_ZL14convertLamAlef, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.bi, i64 -130538
  %i.bk = load i16, ptr %i.bj, align 2
  store i16 %i.bk, ptr %i.ba, align 2
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %_ZL20isSeenTailFamilyCharDs.exit.thread.us.us.i124
  %indvars.iv.next49.i126 = add nuw nsw i64 %indvars.iv48.i125, 1 ; 2 uses
  %exitcond52.not.i127 = icmp eq i64 %indvars.iv.next49.i126, %wide.trip.count51.i123
  br i1 %exitcond52.not.i127, label %_ZL24expandCompositCharAtNearPDsiiP10UErrorCodeiii15uShapeVariables.exit128, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us.us.i124, !llvm.loop !41

_ZL20isSeenTailFamilyCharDs.exit.thread.us.i:     ; preds = %bb.x, %bb.ak
  %indvars.iv42.i = phi i64 [ %indvars.iv.next43.i, %bb.ak ], [ 1, %bb.x ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv42.i ; 5 uses
  %i.bm = load i16, ptr %i.bl, align 2            ; 3 uses
  %i.bn = add i16 %i.bm, 373
  %or.cond.i47.us.i = icmp ult i16 %i.bn, -2
  br i1 %or.cond.i47.us.i, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %_ZL20isSeenTailFamilyCharDs.exit.thread.us.i
  %i.bo = getelementptr i8, ptr %i.bl, i64 -2     ; 2 uses
  %i.bp = load i16, ptr %i.bo, align 2
  %i.bq = icmp eq i16 %i.bp, 32
  br i1 %i.bq, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.br = zext i16 %i.bm to i64
  %i.bs = getelementptr [2 x i8], ptr @_ZL13yehHamzaToYeh, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 -130322
  %i.bu = load i16, ptr %i.bt, align 2
  store i16 %i.bu, ptr %i.bl, align 2
  store i16 -384, ptr %i.bo, align 2
  br label %bb.ak

bb.ae:                                            ; preds = %bb.ac
  store i32 20, ptr %4, align 4
  br label %bb.ak

bb.af:                                            ; preds = %_ZL20isSeenTailFamilyCharDs.exit.thread.us.i
  br i1 %or.cond112, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 2 ; 2 uses
  %i.bw = load i16, ptr %i.bv, align 2            ; 2 uses
  %i.bx = add i16 %i.bw, 259
  %i.by = icmp ult i16 %i.bx, -8
  br i1 %i.by, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bz = icmp eq i16 %i.bm, 32
  br i1 %i.bz, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i32 20, ptr %4, align 4
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  store i16 1604, ptr %i.bv, align 2
  %i.ca = zext i16 %i.bw to i64
  %i.cb = getelementptr [2 x i8], ptr @_ZL14convertLamAlef, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.cb, i64 -130538
  %i.cd = load i16, ptr %i.cc, align 2
  store i16 %i.cd, ptr %i.bl, align 2
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ag, %bb.af, %bb.ae, %bb.ad
  %indvars.iv.next43.i = add nuw nsw i64 %indvars.iv42.i, 1 ; 2 uses
  %exitcond46.not.i = icmp eq i64 %indvars.iv.next43.i, %wide.trip.count45.i
  br i1 %exitcond46.not.i, label %_ZL24expandCompositCharAtNearPDsiiP10UErrorCodeiii15uShapeVariables.exit128, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us.i, !llvm.loop !42

.lr.ph.split.i:                                   ; preds = %.lr.ph.i122
  %wide.trip.count39.i = zext nneg i32 %1 to i64  ; 4 uses
  %i.ce = load i16, ptr %0, align 2               ; 9 uses
  %i.cf = add i16 %i.ce, 335
  %or.cond.i.us.us.peel.i = icmp ult i16 %i.cf, 14 ; 4 uses
  br i1 %.not41.i, label %.lr.ph.split.split.us.i, label %.lr.ph.split.split.i

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.split.i
  br i1 %or.cond112, label %.lr.ph.split.split.us.split.preheader.i, label %.lr.ph.split.split.us.split.us.preheader.i

.lr.ph.split.split.us.split.preheader.i:          ; preds = %.lr.ph.split.split.us.i
  br i1 %or.cond.i.us.us.peel.i, label %_ZL20isSeenTailFamilyCharDs.exit.us.peel.i, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us6.peel.i

_ZL20isSeenTailFamilyCharDs.exit.us.peel.i:       ; preds = %.lr.ph.split.split.us.split.preheader.i
  %i.cg = zext i16 %i.ce to i64
  %7 = add nuw nsw i64 %i.cg, 4294902095
  %8 = and i64 %7, 4294967295
  %9 = shl nuw nsw i64 1, %8
  %10 = and i64 %9, 3276
  %.not40.not.us.peel.i = icmp eq i64 %10, 0
  br i1 %.not40.not.us.peel.i, label %11, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us6.peel.i

_ZL20isSeenTailFamilyCharDs.exit.thread.us6.peel.i: ; preds = %_ZL20isSeenTailFamilyCharDs.exit.us.peel.i, %.lr.ph.split.split.us.split.preheader.i
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.ci = load i16, ptr %i.ch, align 2            ; 2 uses
  %i.cj = add i16 %i.ci, 259
  %i.ck = icmp ult i16 %i.cj, -8
  br i1 %i.ck, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %_ZL20isSeenTailFamilyCharDs.exit.thread.us6.peel.i
  %i.cl = icmp eq i16 %i.ce, 32
  br i1 %i.cl, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  store i32 20, ptr %4, align 4
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  store i16 1604, ptr %i.ch, align 2
  %i.cm = zext i16 %i.ci to i64
  %i.cn = getelementptr [2 x i8], ptr @_ZL14convertLamAlef, i64 %i.cm
  %i.co = getelementptr i8, ptr %i.cn, i64 -130538
  %i.cp = load i16, ptr %i.co, align 2
  store i16 %i.cp, ptr %0, align 2
  br label %bb.ao

11:                                               ; preds = %_ZL20isSeenTailFamilyCharDs.exit.us.peel.i
  store i32 20, ptr %4, align 4
  br label %bb.ao

bb.ao:                                            ; preds = %11, %bb.an, %bb.am, %_ZL20isSeenTailFamilyCharDs.exit.thread.us6.peel.i
  %exitcond34.peel.not.i = icmp eq i32 %1, 1
  br i1 %exitcond34.peel.not.i, label %.thread148, label %.lr.ph.split.split.us.split.i

.lr.ph.split.split.us.split.us.preheader.i:       ; preds = %.lr.ph.split.split.us.i
  br i1 %or.cond.i.us.us.peel.i, label %_ZL20isSeenTailFamilyCharDs.exit.us.us.peel.i, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us6.us.peel.i

_ZL20isSeenTailFamilyCharDs.exit.us.us.peel.i:    ; preds = %.lr.ph.split.split.us.split.us.preheader.i
  %i.cq = zext i16 %i.ce to i64
  %12 = add nuw nsw i64 %i.cq, 4294902095
  %13 = and i64 %12, 4294967295
  %14 = shl nuw nsw i64 1, %13
  %15 = and i64 %14, 3276
  %.not40.not.us.us.peel.i = icmp eq i64 %15, 0
  br i1 %.not40.not.us.us.peel.i, label %bb.ap, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us6.us.peel.i

bb.ap:                                            ; preds = %_ZL20isSeenTailFamilyCharDs.exit.us.us.peel.i
  store i32 20, ptr %4, align 4
  br label %_ZL20isSeenTailFamilyCharDs.exit.thread.us6.us.peel.i

_ZL20isSeenTailFamilyCharDs.exit.thread.us6.us.peel.i: ; preds = %bb.ap, %_ZL20isSeenTailFamilyCharDs.exit.us.us.peel.i, %.lr.ph.split.split.us.split.us.preheader.i
  %exitcond40.peel.not.i = icmp eq i32 %1, 1
  br i1 %exitcond40.peel.not.i, label %_ZL24expandCompositCharAtNearPDsiiP10UErrorCodeiii15uShapeVariables.exit128, label %.lr.ph.split.split.us.split.us.i

.lr.ph.split.split.us.split.us.i:                 ; preds = %_ZL20isSeenTailFamilyCharDs.exit.thread.us6.us.peel.i, %_ZL20isSeenTailFamilyCharDs.exit.thread.us6.us.i
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i, %_ZL20isSeenTailFamilyCharDs.exit.thread.us6.us.i ], [ 1, %_ZL20isSeenTailFamilyCharDs.exit.thread.us6.us.peel.i ] ; 2 uses
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv36.i ; 2 uses
  %i.cs = load i16, ptr %i.cr, align 2            ; 2 uses
  %i.ct = add i16 %i.cs, 335
  %or.cond.i.us.us.i = icmp ult i16 %i.ct, 14
  br i1 %or.cond.i.us.us.i, label %_ZL20isSeenTailFamilyCharDs.exit.us.us.i, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us6.us.i

_ZL20isSeenTailFamilyCharDs.exit.us.us.i:         ; preds = %.lr.ph.split.split.us.split.us.i
  %i.cu = zext i16 %i.cs to i64
  %16 = add nuw nsw i64 %i.cu, 4294902095
  %17 = and i64 %16, 4294967295
  %18 = shl nuw nsw i64 1, %17
  %19 = and i64 %18, 3276
  %.not40.not.us.us.i = icmp eq i64 %19, 0
  br i1 %.not40.not.us.us.i, label %bb.aq, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us6.us.i

bb.aq:                                            ; preds = %_ZL20isSeenTailFamilyCharDs.exit.us.us.i
  %i.cv = getelementptr i8, ptr %i.cr, i64 -2     ; 2 uses
  %i.cw = load i16, ptr %i.cv, align 2
  %i.cx = icmp eq i16 %i.cw, 32
  br i1 %i.cx, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i16 %.sroa.0.0.copyload, ptr %i.cv, align 2
  br label %_ZL20isSeenTailFamilyCharDs.exit.thread.us6.us.i

bb.as:                                            ; preds = %bb.aq
  store i32 20, ptr %4, align 4
  br label %_ZL20isSeenTailFamilyCharDs.exit.thread.us6.us.i

_ZL20isSeenTailFamilyCharDs.exit.thread.us6.us.i: ; preds = %bb.as, %bb.ar, %_ZL20isSeenTailFamilyCharDs.exit.us.us.i, %.lr.ph.split.split.us.split.us.i
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1 ; 2 uses
  %exitcond40.not.i = icmp eq i64 %indvars.iv.next37.i, %wide.trip.count39.i
  br i1 %exitcond40.not.i, label %_ZL24expandCompositCharAtNearPDsiiP10UErrorCodeiii15uShapeVariables.exit128, label %.lr.ph.split.split.us.split.us.i, !llvm.loop !44

.lr.ph.split.split.us.split.i:                    ; preds = %bb.ao, %bb.az
  %indvars.iv30.i = phi i64 [ %indvars.iv.next31.i, %bb.az ], [ 1, %bb.ao ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv30.i ; 4 uses
  %i.cz = load i16, ptr %i.cy, align 2            ; 3 uses
  %i.da = add i16 %i.cz, 335
  %or.cond.i.us.i = icmp ult i16 %i.da, 14
  br i1 %or.cond.i.us.i, label %_ZL20isSeenTailFamilyCharDs.exit.us.i, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us6.i

_ZL20isSeenTailFamilyCharDs.exit.us.i:            ; preds = %.lr.ph.split.split.us.split.i
  %i.db = zext i16 %i.cz to i64
  %20 = add nuw nsw i64 %i.db, 4294902095
  %21 = and i64 %20, 4294967295
  %22 = shl nuw nsw i64 1, %21
  %23 = and i64 %22, 3276
  %.not40.not.us.i = icmp eq i64 %23, 0
  br i1 %.not40.not.us.i, label %bb.at, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us6.i

bb.at:                                            ; preds = %_ZL20isSeenTailFamilyCharDs.exit.us.i
  %i.dc = getelementptr i8, ptr %i.cy, i64 -2     ; 2 uses
  %i.dd = load i16, ptr %i.dc, align 2
  %i.de = icmp eq i16 %i.dd, 32
  br i1 %i.de, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i16 %.sroa.0.0.copyload, ptr %i.dc, align 2
  br label %bb.az

bb.av:                                            ; preds = %bb.at
  store i32 20, ptr %4, align 4
  br label %bb.az

_ZL20isSeenTailFamilyCharDs.exit.thread.us6.i:    ; preds = %_ZL20isSeenTailFamilyCharDs.exit.us.i, %.lr.ph.split.split.us.split.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 2 ; 2 uses
  %i.dg = load i16, ptr %i.df, align 2            ; 2 uses
  %i.dh = add i16 %i.dg, 259
  %i.di = icmp ult i16 %i.dh, -8
  br i1 %i.di, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %_ZL20isSeenTailFamilyCharDs.exit.thread.us6.i
  %i.dj = icmp eq i16 %i.cz, 32
  br i1 %i.dj, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  store i32 20, ptr %4, align 4
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  store i16 1604, ptr %i.df, align 2
  %i.dk = zext i16 %i.dg to i64
  %i.dl = getelementptr [2 x i8], ptr @_ZL14convertLamAlef, i64 %i.dk
  %i.dm = getelementptr i8, ptr %i.dl, i64 -130538
  %i.dn = load i16, ptr %i.dm, align 2
  store i16 %i.dn, ptr %i.cy, align 2
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %_ZL20isSeenTailFamilyCharDs.exit.thread.us6.i, %bb.av, %bb.au
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 1 ; 2 uses
  %exitcond34.not.i = icmp eq i64 %indvars.iv.next31.i, %wide.trip.count39.i
  br i1 %exitcond34.not.i, label %_ZL24expandCompositCharAtNearPDsiiP10UErrorCodeiii15uShapeVariables.exit128, label %.lr.ph.split.split.us.split.i, !llvm.loop !45

.lr.ph.split.split.i:                             ; preds = %.lr.ph.split.i
  br i1 %or.cond112, label %.lr.ph.split.split.split.preheader.i, label %.lr.ph.split.split.split.us.preheader.i

.lr.ph.split.split.split.preheader.i:             ; preds = %.lr.ph.split.split.i
  br i1 %or.cond.i.us.us.peel.i, label %_ZL20isSeenTailFamilyCharDs.exit.peel.i, label %_ZL20isSeenTailFamilyCharDs.exit.thread.peel.i

_ZL20isSeenTailFamilyCharDs.exit.peel.i:          ; preds = %.lr.ph.split.split.split.preheader.i
  %i.do = zext i16 %i.ce to i64
  %24 = add nuw nsw i64 %i.do, 4294902095
  %25 = and i64 %24, 4294967295
  %26 = shl nuw nsw i64 1, %25
  %27 = and i64 %26, 3276
  %.not40.not.peel.i = icmp eq i64 %27, 0
  br i1 %.not40.not.peel.i, label %28, label %_ZL20isSeenTailFamilyCharDs.exit.thread.peel.thread.i

_ZL20isSeenTailFamilyCharDs.exit.thread.peel.i:   ; preds = %.lr.ph.split.split.split.preheader.i
  %i.dp = add i16 %i.ce, 373
  %or.cond.i47.peel.i = icmp ult i16 %i.dp, -2
  br i1 %or.cond.i47.peel.i, label %_ZL20isSeenTailFamilyCharDs.exit.thread.peel.thread.i, label %bb.ba

bb.ba:                                            ; preds = %_ZL20isSeenTailFamilyCharDs.exit.thread.peel.i
  store i32 20, ptr %4, align 4
  br label %bb.be

_ZL20isSeenTailFamilyCharDs.exit.thread.peel.thread.i: ; preds = %_ZL20isSeenTailFamilyCharDs.exit.thread.peel.i, %_ZL20isSeenTailFamilyCharDs.exit.peel.i
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.dr = load i16, ptr %i.dq, align 2            ; 2 uses
  %i.ds = add i16 %i.dr, 259
  %i.dt = icmp ult i16 %i.ds, -8
  br i1 %i.dt, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %_ZL20isSeenTailFamilyCharDs.exit.thread.peel.thread.i
  %i.du = icmp eq i16 %i.ce, 32
  br i1 %i.du, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  store i32 20, ptr %4, align 4
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  store i16 1604, ptr %i.dq, align 2
  %i.dv = zext i16 %i.dr to i64
  %i.dw = getelementptr [2 x i8], ptr @_ZL14convertLamAlef, i64 %i.dv
  %i.dx = getelementptr i8, ptr %i.dw, i64 -130538
  %i.dy = load i16, ptr %i.dx, align 2
  store i16 %i.dy, ptr %0, align 2
  br label %bb.be

28:                                               ; preds = %_ZL20isSeenTailFamilyCharDs.exit.peel.i
  store i32 20, ptr %4, align 4
  br label %bb.be

bb.be:                                            ; preds = %28, %bb.bd, %bb.bc, %_ZL20isSeenTailFamilyCharDs.exit.thread.peel.thread.i, %bb.ba
  %exitcond.peel.not.i = icmp eq i32 %1, 1
  br i1 %exitcond.peel.not.i, label %.thread148, label %.lr.ph.split.split.split.i

.lr.ph.split.split.split.us.preheader.i:          ; preds = %.lr.ph.split.split.i
  br i1 %or.cond.i.us.us.peel.i, label %_ZL20isSeenTailFamilyCharDs.exit.us10.peel.i, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us13.peel.i

_ZL20isSeenTailFamilyCharDs.exit.us10.peel.i:     ; preds = %.lr.ph.split.split.split.us.preheader.i
  %i.dz = zext i16 %i.ce to i64
  %29 = add nuw nsw i64 %i.dz, 4294902095
  %30 = and i64 %29, 4294967295
  %31 = shl nuw nsw i64 1, %30
  %32 = and i64 %31, 3276
  %.not40.not.us11.peel.i = icmp eq i64 %32, 0
  br i1 %.not40.not.us11.peel.i, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us13.peel.thread.sink.split.i, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us13.peel.thread.i

_ZL20isSeenTailFamilyCharDs.exit.thread.us13.peel.i: ; preds = %.lr.ph.split.split.split.us.preheader.i
  %i.ea = add i16 %i.ce, 373
  %or.cond.i47.us14.peel.i = icmp ult i16 %i.ea, -2
  br i1 %or.cond.i47.us14.peel.i, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us13.peel.thread.i, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us13.peel.thread.sink.split.i

_ZL20isSeenTailFamilyCharDs.exit.thread.us13.peel.thread.sink.split.i: ; preds = %_ZL20isSeenTailFamilyCharDs.exit.thread.us13.peel.i, %_ZL20isSeenTailFamilyCharDs.exit.us10.peel.i
  store i32 20, ptr %4, align 4
  br label %_ZL20isSeenTailFamilyCharDs.exit.thread.us13.peel.thread.i

_ZL20isSeenTailFamilyCharDs.exit.thread.us13.peel.thread.i: ; preds = %_ZL20isSeenTailFamilyCharDs.exit.thread.us13.peel.thread.sink.split.i, %_ZL20isSeenTailFamilyCharDs.exit.thread.us13.peel.i, %_ZL20isSeenTailFamilyCharDs.exit.us10.peel.i
  %exitcond28.peel.not.i = icmp eq i32 %1, 1
  br i1 %exitcond28.peel.not.i, label %_ZL24expandCompositCharAtNearPDsiiP10UErrorCodeiii15uShapeVariables.exit128, label %.lr.ph.split.split.split.us.i

.lr.ph.split.split.split.us.i:                    ; preds = %_ZL20isSeenTailFamilyCharDs.exit.thread.us13.peel.thread.i, %_ZL20isSeenTailFamilyCharDs.exit.thread.us13.thread.i
  %indvars.iv24.i = phi i64 [ %indvars.iv.next25.i, %_ZL20isSeenTailFamilyCharDs.exit.thread.us13.thread.i ], [ 1, %_ZL20isSeenTailFamilyCharDs.exit.thread.us13.peel.thread.i ] ; 2 uses
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv24.i ; 4 uses
  %i.ec = load i16, ptr %i.eb, align 2            ; 4 uses
  %i.ed = add i16 %i.ec, 335
  %or.cond.i.us9.i = icmp ult i16 %i.ed, 14
  br i1 %or.cond.i.us9.i, label %_ZL20isSeenTailFamilyCharDs.exit.us10.i, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us13.i

_ZL20isSeenTailFamilyCharDs.exit.us10.i:          ; preds = %.lr.ph.split.split.split.us.i
  %i.ee = zext i16 %i.ec to i64
  %33 = add nuw nsw i64 %i.ee, 4294902095
  %34 = and i64 %33, 4294967295
  %35 = shl nuw nsw i64 1, %34
  %36 = and i64 %35, 3276
  %.not40.not.us11.i = icmp eq i64 %36, 0
  br i1 %.not40.not.us11.i, label %bb.bf, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us13.thread.i

bb.bf:                                            ; preds = %_ZL20isSeenTailFamilyCharDs.exit.us10.i
  %i.ef = getelementptr i8, ptr %i.eb, i64 -2     ; 2 uses
  %i.eg = load i16, ptr %i.ef, align 2
  %i.eh = icmp eq i16 %i.eg, 32
  br i1 %i.eh, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i16 %.sroa.0.0.copyload, ptr %i.ef, align 2
  br label %_ZL20isSeenTailFamilyCharDs.exit.thread.us13.thread.i

bb.bh:                                            ; preds = %bb.bf
  store i32 20, ptr %4, align 4
  br label %_ZL20isSeenTailFamilyCharDs.exit.thread.us13.thread.i

_ZL20isSeenTailFamilyCharDs.exit.thread.us13.i:   ; preds = %.lr.ph.split.split.split.us.i
  %i.ei = add i16 %i.ec, 373
  %or.cond.i47.us14.i = icmp ult i16 %i.ei, -2
  br i1 %or.cond.i47.us14.i, label %_ZL20isSeenTailFamilyCharDs.exit.thread.us13.thread.i, label %bb.bi

bb.bi:                                            ; preds = %_ZL20isSeenTailFamilyCharDs.exit.thread.us13.i
  %i.ej = getelementptr i8, ptr %i.eb, i64 -2     ; 2 uses
  %i.ek = load i16, ptr %i.ej, align 2
  %i.el = icmp eq i16 %i.ek, 32
  br i1 %i.el, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.em = zext i16 %i.ec to i64
  %i.en = getelementptr [2 x i8], ptr @_ZL13yehHamzaToYeh, i64 %i.em
  %i.eo = getelementptr i8, ptr %i.en, i64 -130322
  %i.ep = load i16, ptr %i.eo, align 2
  store i16 %i.ep, ptr %i.eb, align 2
  store i16 -384, ptr %i.ej, align 2
  br label %_ZL20isSeenTailFamilyCharDs.exit.thread.us13.thread.i

bb.bk:                                            ; preds = %bb.bi
  store i32 20, ptr %4, align 4
  br label %_ZL20isSeenTailFamilyCharDs.exit.thread.us13.thread.i

_ZL20isSeenTailFamilyCharDs.exit.thread.us13.thread.i: ; preds = %bb.bk, %bb.bj, %_ZL20isSeenTailFamilyCharDs.exit.thread.us13.i, %bb.bh, %bb.bg, %_ZL20isSeenTailFamilyCharDs.exit.us10.i
  %indvars.iv.next25.i = add nuw nsw i64 %indvars.iv24.i, 1 ; 2 uses
  %exitcond28.not.i = icmp eq i64 %indvars.iv.next25.i, %wide.trip.count39.i
  br i1 %exitcond28.not.i, label %_ZL24expandCompositCharAtNearPDsiiP10UErrorCodeiii15uShapeVariables.exit128, label %.lr.ph.split.split.split.us.i, !llvm.loop !46

.lr.ph.split.split.split.i:                       ; preds = %bb.be, %bb.bu
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.bu ], [ 1, %bb.be ] ; 2 uses
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i ; 6 uses
  %i.er = load i16, ptr %i.eq, align 2            ; 5 uses
  %i.es = add i16 %i.er, 335
  %or.cond.i.i = icmp ult i16 %i.es, 14
  br i1 %or.cond.i.i, label %_ZL20isSeenTailFamilyCharDs.exit.i, label %_ZL20isSeenTailFamilyCharDs.exit.thread.i

_ZL20isSeenTailFamilyCharDs.exit.i:               ; preds = %.lr.ph.split.split.split.i
  %i.et = zext i16 %i.er to i64
  %37 = add nuw nsw i64 %i.et, 4294902095
  %38 = and i64 %37, 4294967295
  %39 = shl nuw nsw i64 1, %38
  %40 = and i64 %39, 3276
  %.not40.not.i = icmp eq i64 %40, 0
  br i1 %.not40.not.i, label %bb.bl, label %_ZL20isSeenTailFamilyCharDs.exit.thread.thread.i

bb.bl:                                            ; preds = %_ZL20isSeenTailFamilyCharDs.exit.i
  %i.eu = getelementptr i8, ptr %i.eq, i64 -2     ; 2 uses
  %i.ev = load i16, ptr %i.eu, align 2
  %i.ew = icmp eq i16 %i.ev, 32
  br i1 %i.ew, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store i16 %.sroa.0.0.copyload, ptr %i.eu, align 2
  br label %bb.bu

bb.bn:                                            ; preds = %bb.bl
  store i32 20, ptr %4, align 4
  br label %bb.bu

_ZL20isSeenTailFamilyCharDs.exit.thread.i:        ; preds = %.lr.ph.split.split.split.i
  %i.ex = add i16 %i.er, 373
  %or.cond.i47.i = icmp ult i16 %i.ex, -2
  br i1 %or.cond.i47.i, label %_ZL20isSeenTailFamilyCharDs.exit.thread.thread.i, label %bb.bo

bb.bo:                                            ; preds = %_ZL20isSeenTailFamilyCharDs.exit.thread.i
  %i.ey = getelementptr i8, ptr %i.eq, i64 -2     ; 2 uses
  %i.ez = load i16, ptr %i.ey, align 2
  %i.fa = icmp eq i16 %i.ez, 32
  br i1 %i.fa, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.fb = zext i16 %i.er to i64
  %i.fc = getelementptr [2 x i8], ptr @_ZL13yehHamzaToYeh, i64 %i.fb
  %i.fd = getelementptr i8, ptr %i.fc, i64 -130322
  %i.fe = load i16, ptr %i.fd, align 2
  store i16 %i.fe, ptr %i.eq, align 2
  store i16 -384, ptr %i.ey, align 2
  br label %bb.bu

bb.bq:                                            ; preds = %bb.bo
  store i32 20, ptr %4, align 4
  br label %bb.bu

_ZL20isSeenTailFamilyCharDs.exit.thread.thread.i: ; preds = %_ZL20isSeenTailFamilyCharDs.exit.thread.i, %_ZL20isSeenTailFamilyCharDs.exit.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eq, i64 2 ; 2 uses
  %i.fg = load i16, ptr %i.ff, align 2            ; 2 uses
  %i.fh = add i16 %i.fg, 259
  %i.fi = icmp ult i16 %i.fh, -8
  br i1 %i.fi, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %_ZL20isSeenTailFamilyCharDs.exit.thread.thread.i
  %i.fj = icmp eq i16 %i.er, 32
  br i1 %i.fj, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  store i16 1604, ptr %i.ff, align 2
  %i.fk = zext i16 %i.fg to i64
  %i.fl = getelementptr [2 x i8], ptr @_ZL14convertLamAlef, i64 %i.fk
  %i.fm = getelementptr i8, ptr %i.fl, i64 -130538
  %i.fn = load i16, ptr %i.fm, align 2
  store i16 %i.fn, ptr %i.eq, align 2
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  store i32 20, ptr %4, align 4
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %_ZL20isSeenTailFamilyCharDs.exit.thread.thread.i, %bb.bq, %bb.bp, %bb.bn, %bb.bm
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count39.i
  br i1 %exitcond.not.i, label %_ZL24expandCompositCharAtNearPDsiiP10UErrorCodeiii15uShapeVariables.exit128, label %.lr.ph.split.split.split.i, !llvm.loop !47

_ZL24expandCompositCharAtNearPDsiiP10UErrorCodeiii15uShapeVariables.exit128: ; preds = %_ZL20isSeenTailFamilyCharDs.exit.thread.us13.thread.i, %bb.bu, %_ZL20isSeenTailFamilyCharDs.exit.thread.us6.us.i, %bb.az, %bb.ak, %bb.ab, %_ZL20isSeenTailFamilyCharDs.exit.thread.us13.peel.thread.i, %_ZL20isSeenTailFamilyCharDs.exit.thread.us6.us.peel.i, %.lr.ph.split.us.split.us.i, %bb.x, %bb.q, %.thread145
  %.4 = phi i32 [ %.3147, %.thread145 ], [ %1, %bb.q ], [ 1, %bb.x ], [ %1, %.lr.ph.split.us.split.us.i ], [ 1, %_ZL20isSeenTailFamilyCharDs.exit.thread.us13.peel.thread.i ], [ %1, %bb.ak ], [ %1, %bb.ab ], [ 1, %_ZL20isSeenTailFamilyCharDs.exit.thread.us6.us.peel.i ], [ %1, %_ZL20isSeenTailFamilyCharDs.exit.thread.us6.us.i ], [ %1, %bb.az ], [ %1, %bb.bu ], [ %1, %_ZL20isSeenTailFamilyCharDs.exit.thread.us13.thread.i ]
  %i.fo = icmp eq i32 %i.a, 0
  %or.cond115 = and i1 %i.fo, %.not
  br i1 %or.cond115, label %bb.bv, label %.thread148

bb.bv:                                            ; preds = %_ZL24expandCompositCharAtNearPDsiiP10UErrorCodeiii15uShapeVariables.exit128
  %i.fp = and i32 %3, 8
  %brmerge.i.not = icmp eq i32 %i.fp, 0
  br i1 %brmerge.i.not, label %.loopexit76.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.bv
  %i.fq = and i32 %3, 4
  %.not.i129 = icmp eq i32 %i.fq, 0
  %i.fr = icmp sgt i32 %1, 0                      ; 2 uses
  br i1 %.not.i129, label %.preheader75.i, label %.preheader77.i

.preheader77.i:                                   ; preds = %.critedge.i
  br i1 %i.fr, label %.lr.ph.i130, label %_ZL13calculateSizePKDsiij.exit

.lr.ph.i130:                                      ; preds = %.preheader77.i
  %i.fs = add nsw i32 %1, -1
  %i.ft = zext nneg i32 %i.fs to i64              ; 3 uses
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.fu = icmp eq i32 %1, 1
  br i1 %i.fu, label %.epil.preheader, label %.lr.ph.i130.new

.lr.ph.i130.new:                                  ; preds = %.lr.ph.i130
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.bw

.preheader75.i:                                   ; preds = %.critedge.i
  br i1 %i.fr, label %.lr.ph83.i, label %_ZL13calculateSizePKDsiij.exit

.lr.ph83.i:                                       ; preds = %.preheader75.i
  %i.fv = add nsw i32 %1, -1
  %i.fw = zext nneg i32 %i.fv to i64              ; 3 uses
  %wide.trip.count96.i = zext nneg i32 %1 to i64  ; 2 uses
  %xtraiter198 = and i64 %wide.trip.count96.i, 1
  %i.fx = icmp eq i32 %1, 1
  br i1 %i.fx, label %.epil.preheader197, label %.lr.ph83.i.new

.lr.ph83.i.new:                                   ; preds = %.lr.ph83.i
  %unroll_iter202 = and i64 %wide.trip.count96.i, 2147483646
  br label %bb.cd

bb.bw:                                            ; preds = %bb.cc, %.lr.ph.i130.new
  %indvars.iv.i131 = phi i64 [ 0, %.lr.ph.i130.new ], [ %indvars.iv.next.i132.1, %bb.cc ] ; 4 uses
  %.04579.i = phi i32 [ %1, %.lr.ph.i130.new ], [ %.146.i.1, %bb.cc ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i130.new ], [ %niter.next.1, %bb.cc ]
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i131 ; 2 uses
  %i.fz = load i16, ptr %i.fy, align 2            ; 2 uses
  switch i16 %i.fz, label %_ZL10isAlefCharDs.exit.thread.i [
    i16 1573, label %_ZL10isAlefCharDs.exit.i
    i16 1571, label %_ZL10isAlefCharDs.exit.i
    i16 1570, label %_ZL10isAlefCharDs.exit.i
    i16 1575, label %_ZL10isAlefCharDs.exit.i
  ]

_ZL10isAlefCharDs.exit.i:                         ; preds = %bb.bw, %bb.bw, %bb.bw, %bb.bw
  %i.ga = icmp samesign ult i64 %indvars.iv.i131, %i.ft
  br i1 %i.ga, label %bb.bx, label %_ZL10isAlefCharDs.exit.thread.i

bb.bx:                                            ; preds = %_ZL10isAlefCharDs.exit.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 2
  %i.gc = load i16, ptr %i.gb, align 2
  %i.gd = icmp eq i16 %i.gc, 1604
  br i1 %i.gd, label %bb.by, label %bb.bz

_ZL10isAlefCharDs.exit.thread.i:                  ; preds = %_ZL10isAlefCharDs.exit.i, %bb.bw
  %.old.i = and i16 %i.fz, -16
  %.not71.old.i = icmp eq i16 %.old.i, -400
  br i1 %.not71.old.i, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %_ZL10isAlefCharDs.exit.thread.i, %bb.bx
  %i.ge = add nsw i32 %.04579.i, -1
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %_ZL10isAlefCharDs.exit.thread.i, %bb.bx
  %.146.i = phi i32 [ %i.ge, %bb.by ], [ %.04579.i, %_ZL10isAlefCharDs.exit.thread.i ], [ %.04579.i, %bb.bx ] ; 3 uses
  %indvars.iv.next.i132 = or disjoint i64 %indvars.iv.i131, 1 ; 2 uses
  %i.gf = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.i132 ; 2 uses
  %i.gg = load i16, ptr %i.gf, align 2            ; 2 uses
  switch i16 %i.gg, label %_ZL10isAlefCharDs.exit.thread.i.1 [
    i16 1573, label %_ZL10isAlefCharDs.exit.i.1
    i16 1571, label %_ZL10isAlefCharDs.exit.i.1
    i16 1570, label %_ZL10isAlefCharDs.exit.i.1
    i16 1575, label %_ZL10isAlefCharDs.exit.i.1
  ]

_ZL10isAlefCharDs.exit.i.1:                       ; preds = %bb.bz, %bb.bz, %bb.bz, %bb.bz
  %i.gh = icmp samesign ult i64 %indvars.iv.next.i132, %i.ft
  br i1 %i.gh, label %bb.ca, label %_ZL10isAlefCharDs.exit.thread.i.1

bb.ca:                                            ; preds = %_ZL10isAlefCharDs.exit.i.1
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 2
  %i.gj = load i16, ptr %i.gi, align 2
  %i.gk = icmp eq i16 %i.gj, 1604
  br i1 %i.gk, label %bb.cb, label %bb.cc

_ZL10isAlefCharDs.exit.thread.i.1:                ; preds = %_ZL10isAlefCharDs.exit.i.1, %bb.bz
  %.old.i.1 = and i16 %i.gg, -16
  %.not71.old.i.1 = icmp eq i16 %.old.i.1, -400
  br i1 %.not71.old.i.1, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %_ZL10isAlefCharDs.exit.thread.i.1, %bb.ca
  %i.gl = add nsw i32 %.146.i, -1
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %_ZL10isAlefCharDs.exit.thread.i.1, %bb.ca
  %.146.i.1 = phi i32 [ %i.gl, %bb.cb ], [ %.146.i, %_ZL10isAlefCharDs.exit.thread.i.1 ], [ %.146.i, %bb.ca ] ; 3 uses
  %indvars.iv.next.i132.1 = add nuw nsw i64 %indvars.iv.i131, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit76.i.loopexit189.unr-lcssa, label %bb.bw, !llvm.loop !16

bb.cd:                                            ; preds = %.thread.i.1, %.lr.ph83.i.new
  %indvars.iv93.i = phi i64 [ 0, %.lr.ph83.i.new ], [ %indvars.iv.next94.i.1, %.thread.i.1 ] ; 4 uses
  %.24781.i = phi i32 [ %1, %.lr.ph83.i.new ], [ %.3.i.1, %.thread.i.1 ] ; 3 uses
  %niter203 = phi i64 [ 0, %.lr.ph83.i.new ], [ %niter203.next.1, %.thread.i.1 ]
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv93.i ; 2 uses
  %i.gn = load i16, ptr %i.gm, align 2            ; 2 uses
  %i.go = icmp eq i16 %i.gn, 1604
  %i.gp = icmp samesign ult i64 %indvars.iv93.i, %i.fw
  %or.cond64.i = select i1 %i.go, i1 %i.gp, i1 false
  br i1 %or.cond64.i, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 2
  %i.gr = load i16, ptr %i.gq, align 2
  switch i16 %i.gr, label %.thread.i [
end_hunk_4
