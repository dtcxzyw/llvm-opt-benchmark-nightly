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

; Function Attrs: mustprogress uwtable
define i32 @u_shapeArabic_78(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [300 x i16], align 16             ; 5 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %6 = alloca %struct.uShapeVariables, align 8    ; 8 uses
  %7 = alloca %struct.uShapeVariables, align 8    ; 8 uses
  %8 = alloca %struct.uShapeVariables, align 8    ; 8 uses
  %9 = alloca %struct.uShapeVariables, align 8    ; 8 uses
  %i.d = icmp eq ptr %5, null
  br i1 %i.d, label %bb.bo, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %5, align 4, !tbaa !8
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
  store i32 1, ptr %5, align 4, !tbaa !8
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
  store i32 1, ptr %5, align 4, !tbaa !8
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
  store i32 1, ptr %5, align 4, !tbaa !8
  br label %bb.bo

bb.n:                                             ; preds = %bb.l, %bb.l, %bb.l, %bb.l, %bb.l
  %i.w = icmp eq i32 %1, -1
  br i1 %i.w, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.x = tail call i32 @u_strlen_78(ptr noundef nonnull %0)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0298 = phi i32 [ %i.x, %bb.o ], [ %1, %bb.n ] ; 11 uses
  %i.y = icmp slt i32 %.0298, 1
  br i1 %i.y, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.z = tail call i32 @u_terminateUChars_78(ptr noundef %2, i32 noundef %3, i32 noundef 0, ptr noundef nonnull %5)
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
  store i32 1, ptr %5, align 4, !tbaa !8
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
  store i32 0, ptr %i.b, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 0, ptr %i.c, align 4, !tbaa !10
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
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !11 ; 4 uses
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
  store i16 %i.ay, ptr %i.bg, align 2, !tbaa !11
  %i.bh = add nsw i32 %.0283392.us, 1
  br label %bb.aa

bb.z:                                             ; preds = %.lr.ph.split.us
  %.0289..us = tail call i16 @llvm.umin.i16(i16 %.0289390.us, i16 %i.ay)
  %i.bi = add i16 %.0289..us, -2542               ; 2 uses
  %i.bj = sext i32 %.0296388.us to i64
  %i.bk = getelementptr inbounds [2 x i8], ptr %i.ap, i64 %i.bj
  store i16 %i.bi, ptr %i.bk, align 2, !tbaa !11
  %i.bl = tail call fastcc noundef zeroext i16 @_ZL7getLinkDs(i16 noundef zeroext %i.bi)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.1297.us = phi i32 [ %.0296388.us, %bb.z ], [ %i.be, %bb.y ] ; 2 uses
  %.1292.us = phi i32 [ 0, %bb.z ], [ 1, %bb.y ]
  %.1290.us = phi i16 [ %.0289390.us, %bb.z ], [ %i.ay, %bb.y ]
  %.1286.us = phi i16 [ %i.bl, %bb.z ], [ %i.az, %bb.y ]
  %.1284.us = phi i32 [ %.0283392.us, %bb.z ], [ %i.bh, %bb.y ] ; 2 uses
  %indvars.iv.next411 = add nsw i64 %indvars.iv410, %i.av ; 2 uses
  %i.bm = trunc nsw i64 %indvars.iv.next411 to i32
  %.not335.us = icmp eq i32 %i.am, %i.bm
  br i1 %.not335.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !13

.thread:                                          ; preds = %bb.x
  store i32 7, ptr %5, align 4, !tbaa !8
  br label %.thread379

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %.lr.ph.split
  %indvars.iv405 = phi i64 [ %i.aw, %.lr.ph.split.preheader ], [ %indvars.iv.next406, %.lr.ph.split ]
  %indvars.iv = phi i64 [ %i.au, %.lr.ph.split.preheader ], [ %indvars.iv.next, %.lr.ph.split ] ; 2 uses
  %.0283392 = phi i32 [ 0, %.lr.ph.split.preheader ], [ %i.bq, %.lr.ph.split ]
  %i.bn = getelementptr inbounds [2 x i8], ptr %0, i64 %indvars.iv
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !11
  %indvars.iv.next406 = add nsw i64 %indvars.iv405, %i.av ; 3 uses
  %i.bp = getelementptr inbounds [2 x i8], ptr %i.ap, i64 %indvars.iv.next406
  store i16 %i.bo, ptr %i.bp, align 2, !tbaa !11
  %i.bq = add nuw nsw i32 %.0283392, 1            ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.av ; 2 uses
  %i.br = trunc nsw i64 %indvars.iv.next to i32
  %.not335 = icmp eq i32 %i.am, %i.br
  br i1 %.not335, label %._crit_edge.loopexit403, label %.lr.ph.split, !llvm.loop !13

._crit_edge.loopexit403:                          ; preds = %.lr.ph.split
  %i.bs = trunc nsw i64 %indvars.iv.next406 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.aa, %._crit_edge.loopexit403
  %.0296.lcssa = phi i32 [ %i.bs, %._crit_edge.loopexit403 ], [ %.1297.us, %bb.aa ]
  %.0283.lcssa = phi i32 [ %i.bq, %._crit_edge.loopexit403 ], [ %.1284.us, %bb.aa ]
  %i.bt = select i1 %i.ai, i32 0, i32 %.0296.lcssa
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [2 x i8], ptr %i.ap, i64 %i.bu
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge, %bb.w
  %.0307 = phi ptr [ %i.ap, %._crit_edge ], [ null, %bb.w ] ; 6 uses
  %.2300 = phi i32 [ %.0283.lcssa, %._crit_edge ], [ %.0298, %bb.w ] ; 13 uses
  %.1294 = phi ptr [ %i.bv, %._crit_edge ], [ %0, %bb.w ] ; 2 uses
  %i.bw = icmp eq i32 %i.l, 524288
  %or.cond363 = or i1 %.not324, %i.bw
  br i1 %or.cond363, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bx = tail call fastcc noundef i32 @_ZL13calculateSizePKDsiij(ptr noundef %.1294, i32 noundef %.2300, i32 noundef %4)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %.0304 = phi i32 [ %i.bx, %bb.ac ], [ %.2300, %bb.ab ] ; 4 uses
  %i.by = icmp sgt i32 %.0304, %3
  br i1 %i.by, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  store i32 15, ptr %5, align 4, !tbaa !8
  %.not343 = icmp eq ptr %.0307, null
  br i1 %.not343, label %.thread379, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @uprv_free_78(ptr noundef nonnull %.0307)
  br label %.thread379

bb.ag:                                            ; preds = %bb.ad
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.2300, i32 %.0304) ; 3 uses
  %i.bz = icmp slt i32 %spec.select, 301
  br i1 %i.bz, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ca = shl nuw nsw i32 %spec.select, 1
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.cb) #11 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  store i32 7, ptr %5, align 4, !tbaa !8
  %.not337 = icmp eq ptr %.0307, null
  br i1 %.not337, label %.thread379, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @uprv_free_78(ptr noundef nonnull %.0307)
  br label %.thread379

bb.ak:                                            ; preds = %bb.ag, %bb.ah
  %.0308 = phi ptr [ %i.cc, %bb.ah ], [ %i.a, %bb.ag ] ; 16 uses
  %.2306 = phi i32 [ %spec.select, %bb.ah ], [ 300, %bb.ag ] ; 2 uses
  %i.ce = call ptr @u_memcpy_78(ptr noundef nonnull %.0308, ptr noundef %.1294, i32 noundef %.2300) ; 0 uses
  %.not338 = icmp eq ptr %.0307, null
  br i1 %.not338, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @uprv_free_78(ptr noundef nonnull %.0307)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.cf = icmp slt i32 %.2300, %.2306
  br i1 %i.cf, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.cg = sext i32 %.2300 to i64
  %i.ch = getelementptr inbounds [2 x i8], ptr %.0308, i64 %i.cg
  %i.ci = sub nsw i32 %.2306, %.2300
  %i.cj = shl nuw nsw i32 %i.ci, 1
  %i.ck = zext nneg i32 %i.cj to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.ch, i8 0, i64 %i.ck, i1 false)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.cl = and i32 %4, 4
  %i.cm = icmp eq i32 %i.cl, 0                    ; 2 uses
  br i1 %i.cm, label %bb.ap, label %_ZL12invertBufferPDsijii.exit

bb.ap:                                            ; preds = %bb.ao
  call fastcc void @_ZL11countSpacesPDsijPiS0_(ptr noundef %.0308, i32 noundef %.2300, ptr noundef %i.b, ptr noundef %i.c)
  %i.cn = load i32, ptr %i.b, align 4, !tbaa !10  ; 2 uses
  %i.co = load i32, ptr %i.c, align 4, !tbaa !10
  %i.cp = xor i32 %i.co, -1
  %i.cq = add i32 %.2300, %i.cp                   ; 2 uses
  %i.cr = icmp slt i32 %i.cn, %i.cq
  br i1 %i.cr, label %.lr.ph.preheader.i, label %_ZL12invertBufferPDsijii.exit.thread

.lr.ph.preheader.i:                               ; preds = %bb.ap
  %i.cs = sext i32 %i.cq to i64
  %i.ct = sext i32 %i.cn to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv18.i = phi i64 [ %i.ct, %.lr.ph.preheader.i ], [ %indvars.iv.next19.i, %.lr.ph.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ %i.cs, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.cu = getelementptr inbounds [2 x i8], ptr %.0308, i64 %indvars.iv18.i ; 2 uses
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !11
  %i.cw = getelementptr inbounds [2 x i8], ptr %.0308, i64 %indvars.iv.i ; 2 uses
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !11
  store i16 %i.cx, ptr %i.cu, align 2, !tbaa !11
  store i16 %i.cv, ptr %i.cw, align 2, !tbaa !11
  %indvars.iv.next19.i = add nsw i64 %indvars.iv18.i, 1 ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.cy = icmp slt i64 %indvars.iv.next19.i, %indvars.iv.next.i
  br i1 %i.cy, label %.lr.ph.i, label %_ZL12invertBufferPDsijii.exit.thread, !llvm.loop !15

_ZL12invertBufferPDsijii.exit:                    ; preds = %bb.ao
  %i.cz = and i32 %4, 67108864
  %.not340 = icmp eq i32 %i.cz, 0
  br i1 %.not340, label %_ZL12invertBufferPDsijii.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %_ZL12invertBufferPDsijii.exit
  br label %_ZL12invertBufferPDsijii.exit.thread

_ZL12invertBufferPDsijii.exit.thread:             ; preds = %.lr.ph.i, %bb.ap, %bb.aq, %_ZL12invertBufferPDsijii.exit
  %.sroa.11.0 = phi i32 [ 393216, %bb.aq ], [ 262144, %_ZL12invertBufferPDsijii.exit ], [ 262144, %bb.ap ], [ 262144, %.lr.ph.i ] ; 4 uses
  %.sroa.10.0 = phi i32 [ 3, %bb.aq ], [ 2, %_ZL12invertBufferPDsijii.exit ], [ 2, %bb.ap ], [ 2, %.lr.ph.i ] ; 4 uses
  %.sroa.994.0 = phi i32 [ 2, %bb.aq ], [ 3, %_ZL12invertBufferPDsijii.exit ], [ 3, %bb.ap ], [ 3, %.lr.ph.i ] ; 4 uses
  %.sroa.13.0.a = phi i32 [ 262144, %bb.aq ], [ 393216, %_ZL12invertBufferPDsijii.exit ], [ 393216, %bb.ap ], [ 393216, %.lr.ph.i ] ; 4 uses
  %.sroa.13.0 = phi i32 [ 1, %bb.aq ], [ 0, %_ZL12invertBufferPDsijii.exit ], [ 0, %bb.ap ], [ 0, %.lr.ph.i ] ; 4 uses
  switch i32 %i.m, label %.unreachabledefault [
    i32 8, label %bb.ar
    i32 24, label %bb.av
    i32 16, label %bb.aw
  ]

bb.ar:                                            ; preds = %_ZL12invertBufferPDsijii.exit.thread
  switch i32 %i.l, label %bb.as [
    i32 786432, label %bb.at
    i32 0, label %bb.at
  ]

bb.as:                                            ; preds = %bb.ar
  store i16 %., ptr %6, align 8, !tbaa !11
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i16 0, ptr %.sroa.9.0..sroa_idx, align 2
  %.sroa.994.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.sroa.994.0, ptr %.sroa.994.0..sroa_idx, align 4, !tbaa !10
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !10
  %.sroa.9.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %.sroa.11.0, ptr %.sroa.9.0..sroa_idx.a, align 4, !tbaa !10
  %.sroa.994.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %.sroa.13.0.a, ptr %.sroa.994.0..sroa_idx.a, align 8, !tbaa !10
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx, align 4, !tbaa !10
  %i.da = call fastcc noundef i32 @_ZL12shapeUnicodePDsiijP10UErrorCodei15uShapeVariables(ptr noundef %.0308, i32 noundef %.2300, i32 noundef %4, ptr noundef %5, i32 noundef 2, ptr noundef nonnull byval(%struct.uShapeVariables) align 8 %6)
  br label %bb.ax

bb.at:                                            ; preds = %bb.ar, %bb.ar
  store i16 %., ptr %7, align 8, !tbaa !11
  %.sroa.9.0..sroa_idx88 = getelementptr inbounds nuw i8, ptr %7, i64 2
  store i16 0, ptr %.sroa.9.0..sroa_idx88, align 2
  %.sroa.994.0..sroa_idx96 = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %.sroa.994.0, ptr %.sroa.994.0..sroa_idx96, align 4, !tbaa !10
  %.sroa.10.0..sroa_idx103 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx103, align 8, !tbaa !10
  %.sroa.9.0..sroa_idx88.a = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %.sroa.11.0, ptr %.sroa.9.0..sroa_idx88.a, align 4, !tbaa !10
  %.sroa.994.0..sroa_idx96.a = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %.sroa.13.0.a, ptr %.sroa.994.0..sroa_idx96.a, align 8, !tbaa !10
  %.sroa.13.0..sroa_idx124 = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx124, align 4, !tbaa !10
  %i.db = call fastcc noundef i32 @_ZL12shapeUnicodePDsiijP10UErrorCodei15uShapeVariables(ptr noundef %.0308, i32 noundef %.2300, i32 noundef %4, ptr noundef %5, i32 noundef 1, ptr noundef nonnull byval(%struct.uShapeVariables) align 8 %7) ; 3 uses
  %i.dc = icmp eq i32 %i.l, 786432
  br i1 %i.dc, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.dd = call fastcc noundef i32 @_ZL25handleTashkeelWithTatweelPDsiijP10UErrorCode(ptr noundef %.0308, i32 noundef %i.db) ; 0 uses
  br label %bb.ax

bb.av:                                            ; preds = %_ZL12invertBufferPDsijii.exit.thread
  store i16 %., ptr %8, align 8, !tbaa !11
  %.sroa.9.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %8, i64 2
  store i16 0, ptr %.sroa.9.0..sroa_idx90, align 2
  %.sroa.994.0..sroa_idx98 = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %.sroa.994.0, ptr %.sroa.994.0..sroa_idx98, align 4, !tbaa !10
  %.sroa.10.0..sroa_idx105 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx105, align 8, !tbaa !10
  %.sroa.9.0..sroa_idx90.a = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 %.sroa.11.0, ptr %.sroa.9.0..sroa_idx90.a, align 4, !tbaa !10
  %.sroa.994.0..sroa_idx98.a = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %.sroa.13.0.a, ptr %.sroa.994.0..sroa_idx98.a, align 8, !tbaa !10
  %.sroa.13.0..sroa_idx126 = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx126, align 4, !tbaa !10
  %i.de = call fastcc noundef i32 @_ZL12shapeUnicodePDsiijP10UErrorCodei15uShapeVariables(ptr noundef %.0308, i32 noundef %.2300, i32 noundef %4, ptr noundef %5, i32 noundef 0, ptr noundef nonnull byval(%struct.uShapeVariables) align 8 %8)
  br label %bb.ax

bb.aw:                                            ; preds = %_ZL12invertBufferPDsijii.exit.thread
  store i16 %., ptr %9, align 8, !tbaa !11
  %.sroa.9.0..sroa_idx92 = getelementptr inbounds nuw i8, ptr %9, i64 2
  store i16 0, ptr %.sroa.9.0..sroa_idx92, align 2
  %.sroa.994.0..sroa_idx100 = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 %.sroa.994.0, ptr %.sroa.994.0..sroa_idx100, align 4, !tbaa !10
  %.sroa.10.0..sroa_idx107 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx107, align 8, !tbaa !10
  %.sroa.9.0..sroa_idx92.a = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 %.sroa.11.0, ptr %.sroa.9.0..sroa_idx92.a, align 4, !tbaa !10
  %.sroa.994.0..sroa_idx100.a = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %.sroa.13.0.a, ptr %.sroa.994.0..sroa_idx100.a, align 8, !tbaa !10
  %.sroa.13.0..sroa_idx128 = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx128, align 4, !tbaa !10
  %i.df = call fastcc noundef i32 @_ZL14deShapeUnicodePDsiijP10UErrorCode15uShapeVariables(ptr noundef %.0308, i32 noundef %.2300, i32 noundef %4, ptr noundef %5, ptr noundef nonnull byval(%struct.uShapeVariables) align 8 %9)
  br label %bb.ax

.unreachabledefault:                              ; preds = %_ZL12invertBufferPDsijii.exit.thread
  unreachable

bb.ax:                                            ; preds = %bb.as, %bb.au, %bb.at, %bb.aw, %bb.av
  %.0301 = phi i32 [ %i.da, %bb.as ], [ %i.db, %bb.au ], [ %i.db, %bb.at ], [ %i.de, %bb.av ], [ %i.df, %bb.aw ] ; 6 uses
  br i1 %i.cm, label %bb.ay, label %_ZL12invertBufferPDsijii.exit374

bb.ay:                                            ; preds = %bb.ax
  call fastcc void @_ZL11countSpacesPDsijPiS0_(ptr noundef %.0308, i32 noundef %.0301, ptr noundef %i.b, ptr noundef %i.c)
  %i.dg = load i32, ptr %i.b, align 4, !tbaa !10  ; 2 uses
  %i.dh = load i32, ptr %i.c, align 4, !tbaa !10
  %i.di = xor i32 %i.dh, -1
  %i.dj = add i32 %.0301, %i.di                   ; 2 uses
  %i.dk = icmp slt i32 %i.dg, %i.dj
  br i1 %i.dk, label %.lr.ph.preheader.i368, label %_ZL12invertBufferPDsijii.exit374

.lr.ph.preheader.i368:                            ; preds = %bb.ay
  %i.dl = sext i32 %i.dj to i64
  %i.dm = sext i32 %i.dg to i64
  br label %.lr.ph.i369

.lr.ph.i369:                                      ; preds = %.lr.ph.i369, %.lr.ph.preheader.i368
  %indvars.iv18.i370 = phi i64 [ %i.dm, %.lr.ph.preheader.i368 ], [ %indvars.iv.next19.i372, %.lr.ph.i369 ] ; 2 uses
  %indvars.iv.i371 = phi i64 [ %i.dl, %.lr.ph.preheader.i368 ], [ %indvars.iv.next.i373, %.lr.ph.i369 ] ; 2 uses
  %i.dn = getelementptr inbounds [2 x i8], ptr %.0308, i64 %indvars.iv18.i370 ; 2 uses
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !11
  %i.dp = getelementptr inbounds [2 x i8], ptr %.0308, i64 %indvars.iv.i371 ; 2 uses
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !11
  store i16 %i.dq, ptr %i.dn, align 2, !tbaa !11
  store i16 %i.do, ptr %i.dp, align 2, !tbaa !11
  %indvars.iv.next19.i372 = add nsw i64 %indvars.iv18.i370, 1 ; 2 uses
  %indvars.iv.next.i373 = add nsw i64 %indvars.iv.i371, -1 ; 2 uses
  %i.dr = icmp slt i64 %indvars.iv.next19.i372, %indvars.iv.next.i373
  br i1 %i.dr, label %.lr.ph.i369, label %_ZL12invertBufferPDsijii.exit374, !llvm.loop !15

_ZL12invertBufferPDsijii.exit374:                 ; preds = %.lr.ph.i369, %bb.ay, %bb.ax
  %i.ds = call i32 @uprv_min_78(i32 noundef %.0301, i32 noundef %3)
  %i.dt = call ptr @u_memcpy_78(ptr noundef %2, ptr noundef nonnull %.0308, i32 noundef %i.ds) ; 0 uses
  %.not342 = icmp eq ptr %.0308, %i.a
  br i1 %.not342, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZL12invertBufferPDsijii.exit374
  call void @uprv_free_78(ptr noundef nonnull %.0308)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %_ZL12invertBufferPDsijii.exit374
  %i.du = icmp sgt i32 %.0301, %3
  br i1 %i.du, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i32 15, ptr %5, align 4, !tbaa !8
  br label %.thread379

.thread379:                                       ; preds = %.thread, %bb.bb, %bb.ai, %bb.ae, %bb.af, %bb.aj
  %.2.ph = phi i32 [ 0, %bb.aj ], [ %.0304, %bb.af ], [ %.0304, %bb.ae ], [ 0, %bb.ai ], [ %.0301, %bb.bb ], [ 0, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.bo

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.bg

bb.bd:                                            ; preds = %bb.v
  %i.dv = icmp samesign ult i32 %3, %.0298
  br i1 %i.dv, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store i32 15, ptr %5, align 4, !tbaa !8
  br label %bb.bo

bb.bf:                                            ; preds = %bb.bd
  %i.dw = tail call ptr @u_memcpy_78(ptr noundef %2, ptr noundef nonnull %0, i32 noundef %.0298) ; 0 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bc, %bb.bf
  %.2303 = phi i32 [ %.0301, %bb.bc ], [ %.0298, %bb.bf ] ; 9 uses
  %.not344 = icmp eq i32 %i.q, 0
  br i1 %.not344, label %.loopexit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.dx = and i32 %4, 256
  %i.dy = icmp eq i32 %i.dx, 0                    ; 2 uses
  %.367 = select i1 %i.dy, i16 1632, i16 1776     ; 3 uses
  %i.dz = lshr exact i32 %i.q, 5
  switch i32 %i.dz, label %.loopexit [
    i32 1, label %bb.bi
    i32 2, label %.preheader
    i32 3, label %.loopexit.sink.split
    i32 4, label %bb.bn
  ]

.preheader:                                       ; preds = %bb.bh
  %i.ea = icmp sgt i32 %.2303, 0
  br i1 %i.ea, label %.lr.ph396, label %.loopexit

.lr.ph396:                                        ; preds = %.preheader
  %i.eb = zext nneg i16 %.367 to i32              ; 2 uses
  %.neg = select i1 %i.dy, i16 -1584, i16 -1728   ; 9 uses
  %wide.trip.count = zext nneg i32 %.2303 to i64  ; 3 uses
  %min.iters.check = icmp ult i32 %.2303, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph396
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.eb, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue449, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue449 ] ; 9 uses
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.ec, align 2, !tbaa !11 ; 9 uses
  %i.ed = zext <8 x i16> %wide.load to <8 x i32>
  %i.ee = sub nsw <8 x i32> %i.ed, %broadcast.splat
  %i.ef = icmp ult <8 x i32> %i.ee, splat (i32 10) ; 8 uses
  %i.eg = extractelement <8 x i1> %i.ef, i64 0
  br i1 %i.eg, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.eh = extractelement <8 x i16> %wide.load, i64 0
  %i.ei = add i16 %.neg, %i.eh
  store i16 %i.ei, ptr %i.ec, align 2, !tbaa !11
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.ej = extractelement <8 x i1> %i.ef, i64 1
  br i1 %i.ej, label %pred.store.if436, label %pred.store.continue437

pred.store.if436:                                 ; preds = %pred.store.continue
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 2
  %i.em = extractelement <8 x i16> %wide.load, i64 1
  %i.en = add i16 %.neg, %i.em
  store i16 %i.en, ptr %i.el, align 2, !tbaa !11
  br label %pred.store.continue437

pred.store.continue437:                           ; preds = %pred.store.if436, %pred.store.continue
  %i.eo = extractelement <8 x i1> %i.ef, i64 2
  br i1 %i.eo, label %pred.store.if438, label %pred.store.continue439

pred.store.if438:                                 ; preds = %pred.store.continue437
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %i.er = extractelement <8 x i16> %wide.load, i64 2
  %i.es = add i16 %.neg, %i.er
  store i16 %i.es, ptr %i.eq, align 2, !tbaa !11
  br label %pred.store.continue439

pred.store.continue439:                           ; preds = %pred.store.if438, %pred.store.continue437
  %i.et = extractelement <8 x i1> %i.ef, i64 3
  br i1 %i.et, label %pred.store.if440, label %pred.store.continue441

pred.store.if440:                                 ; preds = %pred.store.continue439
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 6
  %i.ew = extractelement <8 x i16> %wide.load, i64 3
  %i.ex = add i16 %.neg, %i.ew
  store i16 %i.ex, ptr %i.ev, align 2, !tbaa !11
  br label %pred.store.continue441

pred.store.continue441:                           ; preds = %pred.store.if440, %pred.store.continue439
  %i.ey = extractelement <8 x i1> %i.ef, i64 4
  br i1 %i.ey, label %pred.store.if442, label %pred.store.continue443

pred.store.if442:                                 ; preds = %pred.store.continue441
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = extractelement <8 x i16> %wide.load, i64 4
  %i.fc = add i16 %.neg, %i.fb
  store i16 %i.fc, ptr %i.fa, align 2, !tbaa !11
  br label %pred.store.continue443

pred.store.continue443:                           ; preds = %pred.store.if442, %pred.store.continue441
  %i.fd = extractelement <8 x i1> %i.ef, i64 5
  br i1 %i.fd, label %pred.store.if444, label %pred.store.continue445

pred.store.if444:                                 ; preds = %pred.store.continue443
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 10
  %i.fg = extractelement <8 x i16> %wide.load, i64 5
  %i.fh = add i16 %.neg, %i.fg
  store i16 %i.fh, ptr %i.ff, align 2, !tbaa !11
  br label %pred.store.continue445

pred.store.continue445:                           ; preds = %pred.store.if444, %pred.store.continue443
  %i.fi = extractelement <8 x i1> %i.ef, i64 6
  br i1 %i.fi, label %pred.store.if446, label %pred.store.continue447

pred.store.if446:                                 ; preds = %pred.store.continue445
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 12
  %i.fl = extractelement <8 x i16> %wide.load, i64 6
  %i.fm = add i16 %.neg, %i.fl
end_hunk_0
