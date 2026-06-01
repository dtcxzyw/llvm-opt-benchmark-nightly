inline.NumInlined: 46
inline.NumDeleted: 15
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UConverterImpl = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.UConverterSharedData = type { i32, i32, ptr, ptr, i8, i8, ptr, i32, %struct.UConverterMBCSTable }
%struct.UConverterMBCSTable = type { i8, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, [64 x i16], ptr, ptr, i32, i8, i8, i8, i16, i32, ptr, ptr, ptr, ptr }
%struct.UDataInfo = type { i16, i16, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8] }
%struct.UConverterLoadArgs = type { i32, i32, i8, i8, i16, i32, ptr, ptr, ptr }

@_ZL9_MBCSImpl = internal constant %struct.UConverterImpl { i32 2, ptr @_ZL13ucnv_MBCSLoadP20UConverterSharedDataP18UConverterLoadArgsPKhP10UErrorCode, ptr @_ZL15ucnv_MBCSUnloadP20UConverterSharedData, ptr @_ZL13ucnv_MBCSOpenP10UConverterP18UConverterLoadArgsP10UErrorCode, ptr null, ptr null, ptr @ucnv_MBCSToUnicodeWithOffsets_78, ptr @ucnv_MBCSToUnicodeWithOffsets_78, ptr @ucnv_MBCSFromUnicodeWithOffsets_78, ptr @ucnv_MBCSFromUnicodeWithOffsets_78, ptr @_ZL21ucnv_MBCSGetNextUCharP23UConverterToUnicodeArgsP10UErrorCode, ptr @_ZL20ucnv_MBCSGetStartersPK10UConverterPaP10UErrorCode, ptr @_ZL16ucnv_MBCSGetNamePK10UConverter, ptr @_ZL17ucnv_MBCSWriteSubP25UConverterFromUnicodeArgsiP10UErrorCode, ptr null, ptr @_ZL22ucnv_MBCSGetUnicodeSetPK10UConverterPK9USetAdder20UConverterUnicodeSetP10UErrorCode, ptr null, ptr null }, align 8
@_MBCSData_78 = dso_local local_unnamed_addr constant %struct.UConverterSharedData { i32 296, i32 1, ptr null, ptr null, i8 0, i8 1, ptr @_ZL9_MBCSImpl, i32 0, %struct.UConverterMBCSTable zeroinitializer }, align 8
@_ZL13_SBCSUTF8Impl = internal constant %struct.UConverterImpl { i32 2, ptr @_ZL13ucnv_MBCSLoadP20UConverterSharedDataP18UConverterLoadArgsPKhP10UErrorCode, ptr @_ZL15ucnv_MBCSUnloadP20UConverterSharedData, ptr @_ZL13ucnv_MBCSOpenP10UConverterP18UConverterLoadArgsP10UErrorCode, ptr null, ptr null, ptr @ucnv_MBCSToUnicodeWithOffsets_78, ptr @ucnv_MBCSToUnicodeWithOffsets_78, ptr @ucnv_MBCSFromUnicodeWithOffsets_78, ptr @ucnv_MBCSFromUnicodeWithOffsets_78, ptr @_ZL21ucnv_MBCSGetNextUCharP23UConverterToUnicodeArgsP10UErrorCode, ptr @_ZL20ucnv_MBCSGetStartersPK10UConverterPaP10UErrorCode, ptr @_ZL16ucnv_MBCSGetNamePK10UConverter, ptr @_ZL17ucnv_MBCSWriteSubP25UConverterFromUnicodeArgsiP10UErrorCode, ptr null, ptr @_ZL22ucnv_MBCSGetUnicodeSetPK10UConverterPK9USetAdder20UConverterUnicodeSetP10UErrorCode, ptr null, ptr @_ZL17ucnv_SBCSFromUTF8P25UConverterFromUnicodeArgsP23UConverterToUnicodeArgsP10UErrorCode }, align 8
@_ZL13_DBCSUTF8Impl = internal constant %struct.UConverterImpl { i32 2, ptr @_ZL13ucnv_MBCSLoadP20UConverterSharedDataP18UConverterLoadArgsPKhP10UErrorCode, ptr @_ZL15ucnv_MBCSUnloadP20UConverterSharedData, ptr @_ZL13ucnv_MBCSOpenP10UConverterP18UConverterLoadArgsP10UErrorCode, ptr null, ptr null, ptr @ucnv_MBCSToUnicodeWithOffsets_78, ptr @ucnv_MBCSToUnicodeWithOffsets_78, ptr @ucnv_MBCSFromUnicodeWithOffsets_78, ptr @ucnv_MBCSFromUnicodeWithOffsets_78, ptr @_ZL21ucnv_MBCSGetNextUCharP23UConverterToUnicodeArgsP10UErrorCode, ptr @_ZL20ucnv_MBCSGetStartersPK10UConverterPaP10UErrorCode, ptr @_ZL16ucnv_MBCSGetNamePK10UConverter, ptr @_ZL17ucnv_MBCSWriteSubP25UConverterFromUnicodeArgsiP10UErrorCode, ptr null, ptr @_ZL22ucnv_MBCSGetUnicodeSetPK10UConverterPK9USetAdder20UConverterUnicodeSetP10UErrorCode, ptr null, ptr @_ZL17ucnv_DBCSFromUTF8P25UConverterFromUnicodeArgsP23UConverterToUnicodeArgsP10UErrorCode }, align 8
@.str = private unnamed_addr constant [17 x i8] c" 000000000000\1000\00", align 1
@_ZL12utf8_offsets = internal unnamed_addr constant [5 x i32] [i32 0, i32 0, i32 12416, i32 925824, i32 63447168], align 16
@_ZZL17ucnv_SBCSFromUTF8P25UConverterFromUnicodeArgsP23UConverterToUnicodeArgsP10UErrorCodeE3nul = internal constant i16 0, align 2
@.str.1 = private unnamed_addr constant [17 x i8] c"\00\00\00\00\00\00\00\00\1E\0F\0F\0F\00\00\00\00\00", align 1
@_ZZL17ucnv_DBCSFromUTF8P25UConverterFromUnicodeArgsP23UConverterToUnicodeArgsP10UErrorCodeE3nul = internal constant i16 0, align 2
@.str.2 = private unnamed_addr constant [6 x i8] c"18030\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"gb18030\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"GB18030\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"KEIS\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"keis\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"JEF\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"jef\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"JIPS\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"jips\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c",swaplfnl\00", align 1
@_ZL13gb18030Ranges = internal unnamed_addr constant [14 x [4 x i32]] [[4 x i32] [i32 65536, i32 1114111, i32 1876218, i32 2924793], [4 x i32] [i32 40870, i32 55295, i32 1706261, i32 1720686], [4 x i32] [i32 1106, i32 7742, i32 1688038, i32 1694674], [4 x i32] [i32 7744, i32 8207, i32 1694676, i32 1695139], [4 x i32] [i32 59493, i32 63787, i32 1720768, i32 1725062], [4 x i32] [i32 9795, i32 11904, i32 1696437, i32 1698546], [4 x i32] [i32 64042, i32 65071, i32 1725296, i32 1726325], [4 x i32] [i32 15585, i32 16469, i32 1701916, i32 1702800], [4 x i32] [i32 13851, i32 14615, i32 1700191, i32 1700955], [4 x i32] [i32 18872, i32 19574, i32 1705179, i32 1705881], [4 x i32] [i32 16736, i32 17206, i32 1703065, i32 1703535], [4 x i32] [i32 18318, i32 18758, i32 1704636, i32 1705076], [4 x i32] [i32 17623, i32 17995, i32 1703947, i32 1704319], [4 x i32] [i32 65510, i32 65535, i32 1726612, i32 1726637]], align 16
@switch.table.ucnv_MBCSGetFilteredUnicodeSetForUnicode_78 = private unnamed_addr constant [8 x i32] [i32 3, i32 4, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3], align 4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @ucnv_MBCSGetFilteredUnicodeSetForUnicode_78(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 253
  %i.d = load i8, ptr %i.c, align 1
  %i.e = and i8 %i.d, 1
  %.not = icmp eq i8 %i.e, 0
  %. = select i1 %.not, i32 64, i32 1088          ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.g = load i8, ptr %i.f, align 4               ; 2 uses
  %i.h = icmp eq i8 %i.g, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i32 %2, 0
  %.190 = select i1 %i.k, i32 3840, i32 2048
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %wide.trip.count = zext nneg i32 %. to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.loopexit191
  %indvars.iv238 = phi i64 [ 0, %bb.b ], [ %indvars.iv.next239, %.loopexit191 ] ; 2 uses
  %.0160219 = phi i32 [ 0, %bb.b ], [ %.4164, %.loopexit191 ] ; 2 uses
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv238
  %i.n = load i16, ptr %i.m, align 2              ; 2 uses
  %i.o = zext i16 %i.n to i32
  %i.p = icmp samesign ult i32 %., %i.o
  br i1 %i.p, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.q = zext i16 %i.n to i64
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.q
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit
  %indvars.iv234 = phi i64 [ 0, %bb.d ], [ %indvars.iv.next235, %.loopexit ] ; 2 uses
  %.1161217 = phi i32 [ %.0160219, %bb.d ], [ %.3163, %.loopexit ] ; 2 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv234
  %i.t = load i16, ptr %i.s, align 2              ; 2 uses
  %.not187 = icmp eq i16 %i.t, 0
  br i1 %.not187, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = zext i16 %i.t to i64
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.u
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.2162 = phi i32 [ %.1161217, %bb.f ], [ %i.ab, %bb.i ] ; 2 uses
  %.0159 = phi ptr [ %i.v, %bb.f ], [ %i.w, %bb.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0159, i64 2
  %i.x = load i16, ptr %.0159, align 2
  %i.y = zext i16 %i.x to i32
  %.not188 = icmp samesign ugt i32 %.190, %i.y
  br i1 %.not188, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %i.l, align 8
  %i.aa = load ptr, ptr %1, align 8
  tail call void %i.z(ptr noundef %i.aa, i32 noundef %.2162) #16
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ab = add nsw i32 %.2162, 1                   ; 3 uses
  %i.ac = and i32 %i.ab, 15
  %.not189 = icmp eq i32 %i.ac, 0
  br i1 %.not189, label %.loopexit, label %bb.g, !llvm.loop !5

bb.j:                                             ; preds = %bb.e
  %i.ad = add nsw i32 %.1161217, 16
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %bb.j
  %.3163 = phi i32 [ %i.ad, %bb.j ], [ %i.ab, %bb.i ] ; 2 uses
  %indvars.iv.next235 = add nuw nsw i64 %indvars.iv234, 1 ; 2 uses
  %exitcond237.not = icmp eq i64 %indvars.iv.next235, 64
  br i1 %exitcond237.not, label %.loopexit191, label %bb.e, !llvm.loop !7

bb.k:                                             ; preds = %bb.c
  %i.ae = add nsw i32 %.0160219, 1024
  br label %.loopexit191

.loopexit191:                                     ; preds = %.loopexit, %bb.k
  %.4164 = phi i32 [ %i.ae, %bb.k ], [ %.3163, %.loopexit ]
  %indvars.iv.next239 = add nuw nsw i64 %indvars.iv238, 1 ; 2 uses
  %exitcond241.not = icmp eq i64 %indvars.iv.next239, %wide.trip.count
  br i1 %exitcond241.not, label %.critedge, label %bb.c, !llvm.loop !8

bb.l:                                             ; preds = %bb.a
  %i.af = icmp eq i32 %2, 1                       ; 6 uses
  %switch.tableidx = add i8 %i.g, -2              ; 2 uses
  %5 = icmp ult i8 %switch.tableidx, 8
  br i1 %5, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %6 = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.ucnv_MBCSGetFilteredUnicodeSetForUnicode_78, i64 %6
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.0146 = phi i32 [ %switch.load, %bb.m ], [ 2, %bb.l ] ; 3 uses
  %i.ag = lshr exact i32 %., 1
  %i.ah = shl nuw nsw i32 %.0146, 4
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.aj = zext nneg i32 %.0146 to i64
  %i.ak = trunc nuw nsw i32 %. to i16
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.loopexit203
  %.1148216 = phi i16 [ 0, %bb.n ], [ %i.dw, %.loopexit203 ] ; 2 uses
  %.5165215 = phi i32 [ 0, %bb.n ], [ %.14, %.loopexit203 ] ; 2 uses
  %i.al = zext nneg i16 %.1148216 to i64
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.al
  %i.an = load i16, ptr %i.am, align 2            ; 2 uses
  %i.ao = zext i16 %i.an to i32
  %i.ap = icmp samesign ult i32 %i.ag, %i.ao
  br i1 %i.ap, label %bb.p, label %bb.at

bb.p:                                             ; preds = %bb.o
  %i.aq = zext i16 %i.an to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.aq
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.loopexit192
  %indvars.iv = phi i64 [ 0, %bb.p ], [ %indvars.iv.next, %.loopexit192 ] ; 2 uses
  %.6166213 = phi i32 [ %.5165215, %bb.p ], [ %.13, %.loopexit192 ] ; 7 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv
  %i.at = load i32, ptr %i.as, align 4            ; 3 uses
  %.not177 = icmp eq i32 %i.at, 0
  br i1 %.not177, label %bb.as, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = and i32 %i.at, 65535
  %i.av = mul nuw nsw i32 %i.ah, %i.au
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.aw ; 6 uses
  %i.ay = lshr i32 %i.at, 16                      ; 6 uses
  switch i32 %3, label %bb.ar [
    i32 0, label %.preheader
    i32 1, label %.preheader193
    i32 2, label %.preheader195
    i32 3, label %.preheader197
    i32 4, label %.preheader199
    i32 5, label %.preheader201
  ]

.preheader:                                       ; preds = %bb.r, %bb.z
  %.7167 = phi i32 [ %i.br, %bb.z ], [ %.6166213, %bb.r ] ; 3 uses
  %.0149 = phi ptr [ %.4153, %bb.z ], [ %i.ax, %bb.r ] ; 6 uses
  %.0143 = phi i32 [ %i.bq, %bb.z ], [ %i.ay, %bb.r ] ; 2 uses
  %i.az = and i32 %.0143, 1
  %.not183 = icmp eq i32 %i.az, 0
  br i1 %.not183, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.preheader
  %i.ba = load ptr, ptr %i.ai, align 8
  %i.bb = load ptr, ptr %1, align 8
  tail call void %i.ba(ptr noundef %i.bb, i32 noundef %.7167) #16
  %i.bc = getelementptr inbounds nuw i8, ptr %.0149, i64 %i.aj
  br label %bb.z

bb.t:                                             ; preds = %.preheader
  br i1 %i.af, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  switch i32 %.0146, label %default.unreachable245 [
    i32 4, label %bb.v
    i32 3, label %bb.w
    i32 2, label %bb.x
  ]

bb.v:                                             ; preds = %bb.u
  %i.bd = getelementptr inbounds nuw i8, ptr %.0149, i64 1
  %i.be = load i8, ptr %.0149, align 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.1150 = phi ptr [ %i.bd, %bb.v ], [ %.0149, %bb.u ] ; 2 uses
  %.0142 = phi i8 [ %i.be, %bb.v ], [ 0, %bb.u ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.1150, i64 1
  %i.bg = load i8, ptr %.1150, align 1
  %i.bh = or i8 %i.bg, %.0142
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  %.2151 = phi ptr [ %i.bf, %bb.w ], [ %.0149, %bb.u ] ; 3 uses
  %.1 = phi i8 [ %i.bh, %bb.w ], [ 0, %bb.u ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.2151, i64 2 ; 2 uses
  %i.bj = load i8, ptr %.2151, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %.2151, i64 1
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = or i8 %i.bj, %.1
  %i.bn = or i8 %i.bm, %i.bl
  %.not184 = icmp eq i8 %i.bn, 0
  br i1 %.not184, label %bb.z, label %bb.y

default.unreachable245:                           ; preds = %bb.u
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.bo = load ptr, ptr %i.ai, align 8
  %i.bp = load ptr, ptr %1, align 8
  tail call void %i.bo(ptr noundef %i.bp, i32 noundef %.7167) #16
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.t, %bb.s
  %.4153 = phi ptr [ %i.bc, %bb.s ], [ %.0149, %bb.t ], [ %i.bi, %bb.y ], [ %i.bi, %bb.x ]
  %i.bq = lshr i32 %.0143, 1
  %i.br = add nsw i32 %.7167, 1                   ; 3 uses
  %i.bs = and i32 %i.br, 15
  %.not185 = icmp eq i32 %i.bs, 0
  br i1 %.not185, label %.loopexit192, label %.preheader, !llvm.loop !9

.preheader193:                                    ; preds = %bb.r, %bb.ac
  %.8168 = phi i32 [ %i.ca, %bb.ac ], [ %.6166213, %bb.r ] ; 2 uses
  %.5154 = phi ptr [ %i.bz, %bb.ac ], [ %i.ax, %bb.r ] ; 2 uses
  %.1144 = phi i32 [ %i.by, %bb.ac ], [ %i.ay, %bb.r ] ; 2 uses
  %i.bt = trunc i32 %.1144 to i1
  %or.cond = or i1 %i.af, %i.bt
  br i1 %or.cond, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %.preheader193
  %i.bu = load i16, ptr %.5154, align 2
  %i.bv = icmp ugt i16 %i.bu, 255
  br i1 %i.bv, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bw = load ptr, ptr %i.ai, align 8
  %i.bx = load ptr, ptr %1, align 8
  tail call void %i.bw(ptr noundef %i.bx, i32 noundef %.8168) #16
  br label %bb.ac

bb.ac:                                            ; preds = %.preheader193, %bb.ab, %bb.aa
  %i.by = lshr i32 %.1144, 1
  %i.bz = getelementptr inbounds nuw i8, ptr %.5154, i64 2
  %i.ca = add nsw i32 %.8168, 1                   ; 3 uses
  %i.cb = and i32 %i.ca, 15
  %.not182 = icmp eq i32 %i.cb, 0
  br i1 %.not182, label %.loopexit192, label %.preheader193, !llvm.loop !10

.preheader195:                                    ; preds = %bb.r, %bb.af
  %.9169 = phi i32 [ %i.cj, %bb.af ], [ %.6166213, %bb.r ] ; 2 uses
  %.6 = phi ptr [ %i.ci, %bb.af ], [ %i.ax, %bb.r ] ; 2 uses
  %.2145 = phi i32 [ %i.ch, %bb.af ], [ %i.ay, %bb.r ] ; 2 uses
  %i.cc = trunc i32 %.2145 to i1
  %or.cond3 = or i1 %i.af, %i.cc
  br i1 %or.cond3, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %.preheader195
  %i.cd = load i8, ptr %.6, align 1
  %i.ce = add i8 %i.cd, 127
  %or.cond5 = icmp ult i8 %i.ce, 2
  br i1 %or.cond5, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cf = load ptr, ptr %i.ai, align 8
  %i.cg = load ptr, ptr %1, align 8
  tail call void %i.cf(ptr noundef %i.cg, i32 noundef %.9169) #16
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %.preheader195, %bb.ae
  %i.ch = lshr i32 %.2145, 1
  %i.ci = getelementptr inbounds nuw i8, ptr %.6, i64 3
  %i.cj = add nsw i32 %.9169, 1                   ; 3 uses
  %i.ck = and i32 %i.cj, 15
  %.not181 = icmp eq i32 %i.ck, 0
  br i1 %.not181, label %.loopexit192, label %.preheader195, !llvm.loop !11

.preheader197:                                    ; preds = %bb.r, %bb.ai
  %.10 = phi i32 [ %i.cs, %bb.ai ], [ %.6166213, %bb.r ] ; 2 uses
  %.7 = phi ptr [ %i.cr, %bb.ai ], [ %i.ax, %bb.r ] ; 2 uses
  %.3 = phi i32 [ %i.cq, %bb.ai ], [ %i.ay, %bb.r ] ; 2 uses
  %i.cl = trunc i32 %.3 to i1
  %or.cond7 = or i1 %i.af, %i.cl
  br i1 %or.cond7, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %.preheader197
  %i.cm = load i16, ptr %.7, align 2
  %i.cn = add i16 %i.cm, 32448
  %or.cond9 = icmp ult i16 %i.cn, 28349
  br i1 %or.cond9, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.co = load ptr, ptr %i.ai, align 8
  %i.cp = load ptr, ptr %1, align 8
  tail call void %i.co(ptr noundef %i.cp, i32 noundef %.10) #16
  br label %bb.ai

bb.ai:                                            ; preds = %.preheader197, %bb.ah, %bb.ag
  %i.cq = lshr i32 %.3, 1
  %i.cr = getelementptr inbounds nuw i8, ptr %.7, i64 2
  %i.cs = add nsw i32 %.10, 1                     ; 3 uses
  %i.ct = and i32 %i.cs, 15
  %.not180 = icmp eq i32 %i.ct, 0
  br i1 %.not180, label %.loopexit192, label %.preheader197, !llvm.loop !12

.preheader199:                                    ; preds = %bb.r, %bb.am
  %.11 = phi i32 [ %i.df, %bb.am ], [ %.6166213, %bb.r ] ; 2 uses
  %.8 = phi ptr [ %i.de, %bb.am ], [ %i.ax, %bb.r ] ; 2 uses
  %.4 = phi i32 [ %i.dd, %bb.am ], [ %i.ay, %bb.r ] ; 2 uses
  %i.cu = trunc i32 %.4 to i1
end_hunk_0
