Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ucnvmbcs?download=true
inline.NumInlined: 46
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 16
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UConverterImpl = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.UConverterSharedData = type { i32, i32, ptr, ptr, i8, i8, ptr, i32, %struct.UConverterMBCSTable }
%struct.UConverterMBCSTable = type { i8, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, [64 x i16], ptr, ptr, i32, i8, i8, i8, i16, i32, ptr, ptr, ptr, ptr }
%struct.UDataInfo = type { i16, i16, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8] }
%struct.UConverterLoadArgs = type { i32, i32, i8, i8, i16, i32, ptr, ptr, ptr }

@_ZL9_MBCSImpl = internal constant %struct.UConverterImpl { i32 2, ptr @_ZL13ucnv_MBCSLoadP20UConverterSharedDataP18UConverterLoadArgsPKhP10UErrorCode, ptr @_ZL15ucnv_MBCSUnloadP20UConverterSharedData, ptr @_ZL13ucnv_MBCSOpenP10UConverterP18UConverterLoadArgsP10UErrorCode, ptr null, ptr null, ptr @ucnv_MBCSToUnicodeWithOffsets_78, ptr @ucnv_MBCSToUnicodeWithOffsets_78, ptr @ucnv_MBCSFromUnicodeWithOffsets_78, ptr @ucnv_MBCSFromUnicodeWithOffsets_78, ptr @_ZL21ucnv_MBCSGetNextUCharP23UConverterToUnicodeArgsP10UErrorCode, ptr @_ZL20ucnv_MBCSGetStartersPK10UConverterPaP10UErrorCode, ptr @_ZL16ucnv_MBCSGetNamePK10UConverter, ptr @_ZL17ucnv_MBCSWriteSubP25UConverterFromUnicodeArgsiP10UErrorCode, ptr null, ptr @_ZL22ucnv_MBCSGetUnicodeSetPK10UConverterPK9USetAdder20UConverterUnicodeSetP10UErrorCode, ptr null, ptr null }, align 8
@_MBCSData_78 = local_unnamed_addr constant %struct.UConverterSharedData { i32 296, i32 1, ptr null, ptr null, i8 0, i8 1, ptr @_ZL9_MBCSImpl, i32 0, %struct.UConverterMBCSTable zeroinitializer }, align 8
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
@switch.table.ucnv_MBCSGetFilteredUnicodeSetForUnicode_78 = private unnamed_addr constant [8 x i8] c"\03\04\02\02\02\02\02\03", align 4

; Function Attrs: mustprogress uwtable
define void @ucnv_MBCSGetFilteredUnicodeSetForUnicode_78(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 253
  %i.d = load i8, ptr %i.c, align 1, !tbaa !17
  %i.e = and i8 %i.d, 1
  %.not = icmp eq i8 %i.e, 0
  %. = select i1 %.not, i32 64, i32 1088          ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.g = load i8, ptr %i.f, align 4, !tbaa !18    ; 2 uses
  %i.h = icmp eq i8 %i.g, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19   ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i32 %2, 0
  %.190 = select i1 %i.k, i32 3840, i32 2048
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %wide.trip.count = zext nneg i32 %. to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.loopexit191
  %indvars.iv238 = phi i64 [ 0, %bb.b ], [ %indvars.iv.next239, %.loopexit191 ] ; 2 uses
  %.0149220 = phi i32 [ 0, %bb.b ], [ %.4153, %.loopexit191 ] ; 2 uses
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv238
  %i.n = load i16, ptr %i.m, align 2, !tbaa !21   ; 2 uses
  %i.o = zext i16 %i.n to i32
  %i.p = icmp samesign ult i32 %., %i.o
  br i1 %i.p, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.q = zext i16 %i.n to i64
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.q
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit
  %indvars.iv234 = phi i64 [ 0, %bb.d ], [ %indvars.iv.next235, %.loopexit ] ; 2 uses
  %.1150218 = phi i32 [ %.0149220, %bb.d ], [ %.3152, %.loopexit ] ; 2 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv234
  %i.t = load i16, ptr %i.s, align 2, !tbaa !21   ; 2 uses
  %.not187 = icmp eq i16 %i.t, 0
  br i1 %.not187, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = zext i16 %i.t to i64
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.u
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.2151 = phi i32 [ %.1150218, %bb.f ], [ %i.ab, %bb.i ] ; 2 uses
  %.0148 = phi ptr [ %i.v, %bb.f ], [ %i.w, %bb.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0148, i64 2
  %i.x = load i16, ptr %.0148, align 2, !tbaa !21
  %i.y = zext i16 %i.x to i32
  %.not188 = icmp samesign ugt i32 %.190, %i.y
  br i1 %.not188, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !110
  %i.aa = load ptr, ptr %1, align 8, !tbaa !24
  tail call void %i.z(ptr noundef %i.aa, i32 noundef %.2151)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ab = add nsw i32 %.2151, 1                   ; 3 uses
  %i.ac = and i32 %i.ab, 15
  %.not189 = icmp eq i32 %i.ac, 0
  br i1 %.not189, label %.loopexit, label %bb.g, !llvm.loop !99

bb.j:                                             ; preds = %bb.e
  %i.ad = add nsw i32 %.1150218, 16
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %bb.j
  %.3152 = phi i32 [ %i.ad, %bb.j ], [ %i.ab, %bb.i ] ; 2 uses
  %indvars.iv.next235 = add nuw nsw i64 %indvars.iv234, 1 ; 2 uses
  %exitcond237.not = icmp eq i64 %indvars.iv.next235, 64
  br i1 %exitcond237.not, label %.loopexit191, label %bb.e, !llvm.loop !100

bb.k:                                             ; preds = %bb.c
  %i.ae = add nsw i32 %.0149220, 1024
  br label %.loopexit191

.loopexit191:                                     ; preds = %.loopexit, %bb.k
  %.4153 = phi i32 [ %i.ae, %bb.k ], [ %.3152, %.loopexit ]
  %indvars.iv.next239 = add nuw nsw i64 %indvars.iv238, 1 ; 2 uses
  %exitcond241.not = icmp eq i64 %indvars.iv.next239, %wide.trip.count
  br i1 %exitcond241.not, label %.critedge, label %bb.c, !llvm.loop !101

bb.l:                                             ; preds = %bb.a
  %i.af = icmp eq i32 %2, 1                       ; 6 uses
  %switch.tableidx = add i8 %i.g, -2              ; 2 uses
  %i.ag = icmp ult i8 %switch.tableidx, 8
  br i1 %i.ag, label %switch.lookup, label %bb.m

switch.lookup:                                    ; preds = %bb.l
  %i.ah = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.ucnv_MBCSGetFilteredUnicodeSetForUnicode_78, i64 %i.ah
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %switch.lookup
  %.0143 = phi i32 [ %switch.ext, %switch.lookup ], [ 2, %bb.l ] ; 3 uses
  %i.ai = lshr exact i32 %., 1
  %i.aj = shl nuw nsw i32 %.0143, 4
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.al = zext nneg i32 %.0143 to i64
  %i.am = trunc nuw nsw i32 %. to i16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.loopexit203
  %.5154216 = phi i32 [ 0, %bb.m ], [ %.14, %.loopexit203 ] ; 2 uses
  %.1163215 = phi i16 [ 0, %bb.m ], [ %i.dy, %.loopexit203 ] ; 2 uses
  %i.an = zext nneg i16 %.1163215 to i64
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.an
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !21 ; 2 uses
  %i.aq = zext i16 %i.ap to i32
  %i.ar = icmp samesign ult i32 %i.ai, %i.aq
  br i1 %i.ar, label %bb.o, label %bb.as

bb.o:                                             ; preds = %bb.n
  %i.as = zext i16 %i.ap to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.as
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.loopexit192
  %indvars.iv = phi i64 [ 0, %bb.o ], [ %indvars.iv.next, %.loopexit192 ] ; 2 uses
  %.6155214 = phi i32 [ %.5154216, %bb.o ], [ %.13, %.loopexit192 ] ; 7 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv
  %i.av = load i32, ptr %i.au, align 4, !tbaa !26 ; 3 uses
  %.not177 = icmp eq i32 %i.av, 0
  br i1 %.not177, label %bb.ar, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = and i32 %i.av, 65535
  %i.ax = mul nuw nsw i32 %i.aj, %i.aw
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ay ; 6 uses
  %i.ba = lshr i32 %i.av, 16                      ; 6 uses
  switch i32 %3, label %bb.aq [
    i32 0, label %.preheader
    i32 1, label %.preheader193
    i32 2, label %.preheader195
    i32 3, label %.preheader197
    i32 4, label %.preheader199
    i32 5, label %.preheader201
  ]

.preheader:                                       ; preds = %bb.q, %bb.y
  %.0164 = phi i32 [ %i.bs, %bb.y ], [ %i.ba, %bb.q ] ; 2 uses
  %.7156 = phi i32 [ %i.bt, %bb.y ], [ %.6155214, %bb.q ] ; 3 uses
  %.0144 = phi ptr [ %.4, %bb.y ], [ %i.az, %bb.q ] ; 6 uses
  %i.bb = and i32 %.0164, 1
  %.not183 = icmp eq i32 %i.bb, 0
  br i1 %.not183, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.preheader
  %i.bc = load ptr, ptr %i.ak, align 8, !tbaa !110
  %i.bd = load ptr, ptr %1, align 8, !tbaa !24
  tail call void %i.bc(ptr noundef %i.bd, i32 noundef %.7156)
  %i.be = getelementptr inbounds nuw i8, ptr %.0144, i64 %i.al
  br label %bb.y

bb.s:                                             ; preds = %.preheader
  br i1 %i.af, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  switch i32 %.0143, label %default.unreachable245 [
    i32 4, label %bb.u
    i32 3, label %bb.v
    i32 2, label %bb.w
  ]

bb.u:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %.0144, i64 1
  %i.bg = load i8, ptr %.0144, align 1, !tbaa !27
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.1145 = phi ptr [ %i.bf, %bb.u ], [ %.0144, %bb.t ] ; 2 uses
  %.0142 = phi i8 [ %i.bg, %bb.u ], [ 0, %bb.t ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.1145, i64 1
  %i.bi = load i8, ptr %.1145, align 1, !tbaa !27
  %i.bj = or i8 %i.bi, %.0142
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  %.2146 = phi ptr [ %i.bh, %bb.v ], [ %.0144, %bb.t ] ; 3 uses
  %.1 = phi i8 [ %i.bj, %bb.v ], [ 0, %bb.t ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.2146, i64 2 ; 2 uses
  %i.bl = load i8, ptr %.2146, align 1, !tbaa !27
  %i.bm = getelementptr inbounds nuw i8, ptr %.2146, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !27
  %i.bo = or i8 %i.bl, %.1
  %i.bp = or i8 %i.bo, %i.bn
  %.not184 = icmp eq i8 %i.bp, 0
  br i1 %.not184, label %bb.y, label %bb.x

default.unreachable245:                           ; preds = %bb.t
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.bq = load ptr, ptr %i.ak, align 8, !tbaa !110
  %i.br = load ptr, ptr %1, align 8, !tbaa !24
  tail call void %i.bq(ptr noundef %i.br, i32 noundef %.7156)
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %bb.s, %bb.r
  %.4 = phi ptr [ %i.be, %bb.r ], [ %.0144, %bb.s ], [ %i.bk, %bb.x ], [ %i.bk, %bb.w ]
  %i.bs = lshr i32 %.0164, 1
  %i.bt = add nsw i32 %.7156, 1                   ; 3 uses
  %i.bu = and i32 %i.bt, 15
  %.not185 = icmp eq i32 %i.bu, 0
  br i1 %.not185, label %.loopexit192, label %.preheader, !llvm.loop !102

.preheader193:                                    ; preds = %bb.q, %bb.ab
  %.1165 = phi i32 [ %i.ca, %bb.ab ], [ %i.ba, %bb.q ] ; 2 uses
  %.8157 = phi i32 [ %i.cc, %bb.ab ], [ %.6155214, %bb.q ] ; 2 uses
  %.5 = phi ptr [ %i.cb, %bb.ab ], [ %i.az, %bb.q ] ; 2 uses
  %i.bv = trunc i32 %.1165 to i1
  %or.cond = or i1 %i.af, %i.bv
  br i1 %or.cond, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %.preheader193
  %i.bw = load i16, ptr %.5, align 2, !tbaa !21
  %i.bx = icmp ugt i16 %i.bw, 255
  br i1 %i.bx, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.by = load ptr, ptr %i.ak, align 8, !tbaa !110
  %i.bz = load ptr, ptr %1, align 8, !tbaa !24
  tail call void %i.by(ptr noundef %i.bz, i32 noundef %.8157)
  br label %bb.ab

bb.ab:                                            ; preds = %.preheader193, %bb.aa, %bb.z
  %i.ca = lshr i32 %.1165, 1
  %i.cb = getelementptr inbounds nuw i8, ptr %.5, i64 2
  %i.cc = add nsw i32 %.8157, 1                   ; 3 uses
  %i.cd = and i32 %i.cc, 15
  %.not182 = icmp eq i32 %i.cd, 0
  br i1 %.not182, label %.loopexit192, label %.preheader193, !llvm.loop !103

.preheader195:                                    ; preds = %bb.q, %bb.ae
  %.2166 = phi i32 [ %i.cj, %bb.ae ], [ %i.ba, %bb.q ] ; 2 uses
  %.9158 = phi i32 [ %i.cl, %bb.ae ], [ %.6155214, %bb.q ] ; 2 uses
  %.6 = phi ptr [ %i.ck, %bb.ae ], [ %i.az, %bb.q ] ; 2 uses
  %i.ce = trunc i32 %.2166 to i1
  %or.cond3 = or i1 %i.af, %i.ce
  br i1 %or.cond3, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %.preheader195
  %i.cf = load i8, ptr %.6, align 1, !tbaa !27
  %i.cg = add i8 %i.cf, 127
  %or.cond5 = icmp ult i8 %i.cg, 2
  br i1 %or.cond5, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ch = load ptr, ptr %i.ak, align 8, !tbaa !110
  %i.ci = load ptr, ptr %1, align 8, !tbaa !24
  tail call void %i.ch(ptr noundef %i.ci, i32 noundef %.9158)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %.preheader195, %bb.ad
  %i.cj = lshr i32 %.2166, 1
  %i.ck = getelementptr inbounds nuw i8, ptr %.6, i64 3
  %i.cl = add nsw i32 %.9158, 1                   ; 3 uses
  %i.cm = and i32 %i.cl, 15
  %.not181 = icmp eq i32 %i.cm, 0
  br i1 %.not181, label %.loopexit192, label %.preheader195, !llvm.loop !104

.preheader197:                                    ; preds = %bb.q, %bb.ah
  %.3167 = phi i32 [ %i.cs, %bb.ah ], [ %i.ba, %bb.q ] ; 2 uses
  %.10 = phi i32 [ %i.cu, %bb.ah ], [ %.6155214, %bb.q ] ; 2 uses
  %.7 = phi ptr [ %i.ct, %bb.ah ], [ %i.az, %bb.q ] ; 2 uses
  %i.cn = trunc i32 %.3167 to i1
  %or.cond7 = or i1 %i.af, %i.cn
  br i1 %or.cond7, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %.preheader197
  %i.co = load i16, ptr %.7, align 2, !tbaa !21
  %i.cp = add i16 %i.co, 32448
  %or.cond9 = icmp ult i16 %i.cp, 28349
  br i1 %or.cond9, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cq = load ptr, ptr %i.ak, align 8, !tbaa !110
  %i.cr = load ptr, ptr %1, align 8, !tbaa !24
  tail call void %i.cq(ptr noundef %i.cr, i32 noundef %.10)
  br label %bb.ah

bb.ah:                                            ; preds = %.preheader197, %bb.ag, %bb.af
  %i.cs = lshr i32 %.3167, 1
  %i.ct = getelementptr inbounds nuw i8, ptr %.7, i64 2
  %i.cu = add nsw i32 %.10, 1                     ; 3 uses
  %i.cv = and i32 %i.cu, 15
  %.not180 = icmp eq i32 %i.cv, 0
  br i1 %.not180, label %.loopexit192, label %.preheader197, !llvm.loop !105

.preheader199:                                    ; preds = %bb.q, %bb.al
  %.4168 = phi i32 [ %i.df, %bb.al ], [ %i.ba, %bb.q ] ; 2 uses
  %.11 = phi i32 [ %i.dh, %bb.al ], [ %.6155214, %bb.q ] ; 2 uses
  %.8 = phi ptr [ %i.dg, %bb.al ], [ %i.az, %bb.q ] ; 2 uses
  %i.cw = trunc i32 %.4168 to i1
  %or.cond11 = or i1 %i.af, %i.cw
  br i1 %or.cond11, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %.preheader199
  %i.cx = load i16, ptr %.8, align 2, !tbaa !21   ; 2 uses
  %i.cy = add i16 %i.cx, 24159
  %i.cz = icmp ult i16 %i.cy, 23902
  br i1 %i.cz, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.da = add nuw nsw i16 %i.cx, 95
  %i.db = and i16 %i.da, 254
  %i.dc = icmp samesign ult i16 %i.db, 94
  br i1 %i.dc, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dd = load ptr, ptr %i.ak, align 8, !tbaa !110
  %i.de = load ptr, ptr %1, align 8, !tbaa !24
  tail call void %i.dd(ptr noundef %i.de, i32 noundef %.11)
  br label %bb.al

bb.al:                                            ; preds = %.preheader199, %bb.ak, %bb.aj, %bb.ai
  %i.df = lshr i32 %.4168, 1
  %i.dg = getelementptr inbounds nuw i8, ptr %.8, i64 2
  %i.dh = add nsw i32 %.11, 1                     ; 3 uses
  %i.di = and i32 %i.dh, 15
  %.not179 = icmp eq i32 %i.di, 0
  br i1 %.not179, label %.loopexit192, label %.preheader199, !llvm.loop !106

.preheader201:                                    ; preds = %bb.q, %bb.ap
  %.5169 = phi i32 [ %i.ds, %bb.ap ], [ %i.ba, %bb.q ] ; 2 uses
  %.12 = phi i32 [ %i.du, %bb.ap ], [ %.6155214, %bb.q ] ; 2 uses
  %.9 = phi ptr [ %i.dt, %bb.ap ], [ %i.az, %bb.q ] ; 2 uses
  %i.dj = trunc i32 %.5169 to i1
  %or.cond13 = or i1 %i.af, %i.dj
  br i1 %or.cond13, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %.preheader201
  %i.dk = load i16, ptr %.9, align 2, !tbaa !21   ; 2 uses
  %i.dl = add i16 %i.dk, 24159
  %i.dm = icmp ult i16 %i.dl, 23646
  br i1 %i.dm, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.dn = add nuw nsw i16 %i.dk, 95
  %i.do = and i16 %i.dn, 254
  %i.dp = icmp samesign ult i16 %i.do, 94
  br i1 %i.dp, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.dq = load ptr, ptr %i.ak, align 8, !tbaa !110
  %i.dr = load ptr, ptr %1, align 8, !tbaa !24
  tail call void %i.dq(ptr noundef %i.dr, i32 noundef %.12)
  br label %bb.ap

bb.ap:                                            ; preds = %.preheader201, %bb.ao, %bb.an, %bb.am
  %i.ds = lshr i32 %.5169, 1
  %i.dt = getelementptr inbounds nuw i8, ptr %.9, i64 2
  %i.du = add nsw i32 %.12, 1                     ; 3 uses
  %i.dv = and i32 %i.du, 15
  %.not178 = icmp eq i32 %i.dv, 0
  br i1 %.not178, label %.loopexit192, label %.preheader201, !llvm.loop !107

bb.aq:                                            ; preds = %bb.q
  store i32 5, ptr %4, align 4, !tbaa !29
  br label %bb.at

bb.ar:                                            ; preds = %bb.p
end_hunk_0
