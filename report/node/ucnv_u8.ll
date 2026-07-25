inline.NumInlined: 14
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UConverterStaticData = type { i32, [60 x i8], i32, i8, i8, i8, i8, [4 x i8], i8, i8, i8, i8, i8, [19 x i8] }
%struct.UConverterImpl = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.UConverterSharedData = type { i32, i32, ptr, ptr, i8, i8, ptr, i32, %struct.UConverterMBCSTable }
%struct.UConverterMBCSTable = type { i8, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, [64 x i16], ptr, ptr, i32, i8, i8, i8, i16, i32, ptr, ptr, ptr, ptr }

@_ZL15_UTF8StaticData = internal constant %struct.UConverterStaticData { i32 100, [60 x i8] c"UTF-8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1208, i8 0, i8 4, i8 1, i8 3, [4 x i8] c"\EF\BF\BD\00", i8 3, i8 0, i8 0, i8 0, i8 0, [19 x i8] zeroinitializer }, align 4
@_ZL9_UTF8Impl = internal constant %struct.UConverterImpl { i32 4, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @_ZL19ucnv_toUnicode_UTF8P23UConverterToUnicodeArgsP10UErrorCode, ptr @_ZL33ucnv_toUnicode_UTF8_OFFSETS_LOGICP23UConverterToUnicodeArgsP10UErrorCode, ptr @ucnv_fromUnicode_UTF8_78, ptr @ucnv_fromUnicode_UTF8_OFFSETS_LOGIC_78, ptr @_ZL22ucnv_getNextUChar_UTF8P23UConverterToUnicodeArgsP10UErrorCode, ptr null, ptr null, ptr null, ptr null, ptr @ucnv_getNonSurrogateUnicodeSet_78, ptr @_ZL17ucnv_UTF8FromUTF8P25UConverterFromUnicodeArgsP23UConverterToUnicodeArgsP10UErrorCode, ptr @_ZL17ucnv_UTF8FromUTF8P25UConverterFromUnicodeArgsP23UConverterToUnicodeArgsP10UErrorCode }, align 8
@_UTF8Data_78 = dso_local local_unnamed_addr constant %struct.UConverterSharedData { i32 296, i32 -1, ptr null, ptr @_ZL15_UTF8StaticData, i8 0, i8 0, ptr @_ZL9_UTF8Impl, i32 0, %struct.UConverterMBCSTable zeroinitializer }, align 8
@_ZL16_CESU8StaticData = internal constant %struct.UConverterStaticData { i32 100, [60 x i8] c"CESU-8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9400, i8 -1, i8 31, i8 1, i8 3, [4 x i8] c"\EF\BF\BD\00", i8 3, i8 0, i8 0, i8 0, i8 0, [19 x i8] zeroinitializer }, align 4
@_ZL10_CESU8Impl = internal constant %struct.UConverterImpl { i32 31, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @_ZL19ucnv_toUnicode_UTF8P23UConverterToUnicodeArgsP10UErrorCode, ptr @_ZL33ucnv_toUnicode_UTF8_OFFSETS_LOGICP23UConverterToUnicodeArgsP10UErrorCode, ptr @ucnv_fromUnicode_UTF8_78, ptr @ucnv_fromUnicode_UTF8_OFFSETS_LOGIC_78, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ucnv_getCompleteUnicodeSet_78, ptr null, ptr null }, align 8
@_CESU8Data_78 = dso_local constant %struct.UConverterSharedData { i32 296, i32 -1, ptr null, ptr @_ZL16_CESU8StaticData, i8 0, i8 0, ptr @_ZL10_CESU8Impl, i32 0, %struct.UConverterMBCSTable zeroinitializer }, align 8
@_ZL15offsetsFromUTF8 = internal unnamed_addr constant [5 x i32] [i32 0, i32 0, i32 12416, i32 925824, i32 63447168], align 16
@.str = private unnamed_addr constant [17 x i8] c" 000000000000\1000\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"\00\00\00\00\00\00\00\00\1E\0F\0F\0F\00\00\00\00\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @ucnv_fromUnicode_UTF8_78(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.l = getelementptr i8, ptr %i.c, i64 48
  %.val = load ptr, ptr %i.l, align 8
  %i.m = icmp ne ptr %.val, @_CESU8Data_78
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 84 ; 4 uses
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  %.not104 = icmp ne i32 %i.o, 0
  %i.p = icmp ult ptr %i.i, %i.k
  %or.cond108 = select i1 %.not104, i1 %i.p, i1 false
  %.085.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.085.sroa.gep110 = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  br i1 %or.cond108, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.n, align 4
  br label %bb.k

bb.c:                                             ; preds = %bb.a, %.loopexit
  %.089 = phi ptr [ %.8, %.loopexit ], [ %i.i, %bb.a ] ; 9 uses
  %.0 = phi ptr [ %.4, %.loopexit ], [ %i.e, %bb.a ] ; 4 uses
  %i.q = icmp ult ptr %.0, %i.g
  %i.r = icmp ult ptr %.089, %i.k
  %i.s = select i1 %i.q, i1 %i.r, i1 false
  br i1 %i.s, label %bb.d, label %bb.ad

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.0, i64 2 ; 5 uses
  %i.u = load i16, ptr %.0, align 2               ; 6 uses
  %i.v = zext i16 %i.u to i32                     ; 3 uses
  %i.w = icmp ult i16 %i.u, 128
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = trunc nuw nsw i16 %i.u to i8
  %i.y = getelementptr inbounds nuw i8, ptr %.089, i64 1
  store i8 %i.x, ptr %.089, align 1
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.z = icmp ult i16 %i.u, 2048
  br i1 %i.z, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aa = lshr i16 %i.u, 6
  %i.ab = trunc nuw nsw i16 %i.aa to i8
  %i.ac = or disjoint i8 %i.ab, -64
  %i.ad = getelementptr inbounds nuw i8, ptr %.089, i64 1 ; 3 uses
  store i8 %i.ac, ptr %.089, align 1
  %i.ae = icmp ult ptr %i.ad, %i.k
  %i.af = trunc i16 %i.u to i8
  %i.ag = and i8 %i.af, 63
  %i.ah = or disjoint i8 %i.ag, -128              ; 2 uses
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %.089, i64 2
  store i8 %i.ah, ptr %i.ad, align 1
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  store i8 %i.ah, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 91
  store i8 1, ptr %i.ak, align 1
  store i32 15, ptr %1, align 4
  br label %.loopexit

bb.j:                                             ; preds = %bb.f
  %i.al = and i32 %i.v, 63488
  %i.am = icmp eq i32 %i.al, 55296
  %or.cond = and i1 %i.m, %i.am
  br i1 %or.cond, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j, %bb.b
  %.291 = phi ptr [ %i.i, %bb.b ], [ %.089, %bb.j ] ; 3 uses
  %.086 = phi i32 [ %i.o, %bb.b ], [ %i.v, %bb.j ] ; 4 uses
  %.1 = phi ptr [ %i.e, %bb.b ], [ %i.t, %bb.j ]  ; 5 uses
  %i.an = icmp ult ptr %.1, %i.g
  br i1 %i.an, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ao = and i32 %.086, 1024
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.aq = load i16, ptr %.1, align 2
  %i.ar = zext i16 %i.aq to i32                   ; 2 uses
  %i.as = and i32 %i.ar, 64512
  %i.at = icmp eq i32 %i.as, 56320
  br i1 %i.at, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.au = shl i32 %.086, 10
  %i.av = add i32 %i.au, -56613888
  %i.aw = add i32 %i.av, %i.ar
  %i.ax = getelementptr inbounds nuw i8, ptr %.1, i64 2
  br label %bb.q

bb.o:                                             ; preds = %bb.m, %bb.l
  store i32 %.086, ptr %i.n, align 4
  store i32 12, ptr %1, align 4
  br label %bb.ad

bb.p:                                             ; preds = %bb.k
  store i32 %.086, ptr %i.n, align 4
  br label %bb.ad

bb.q:                                             ; preds = %bb.n, %bb.j
  %.392 = phi ptr [ %.291, %bb.n ], [ %.089, %bb.j ] ; 12 uses
  %.187 = phi i32 [ %i.aw, %bb.n ], [ %i.v, %bb.j ] ; 6 uses
  %.2 = phi ptr [ %i.ax, %bb.n ], [ %i.t, %bb.j ] ; 3 uses
  %i.ay = ptrtoint ptr %i.k to i64
  %i.az = ptrtoint ptr %.392 to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = icmp sgt i64 %i.ba, 3                   ; 3 uses
  %i.bc = select i1 %i.bb, ptr %.392, ptr %i.a    ; 8 uses
  %i.bd = ptrtoaddr ptr %i.bc to i64
  %i.be = icmp slt i32 %.187, 65536
  br i1 %i.be, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bf = lshr i32 %.187, 12
  %i.bg = trunc i32 %i.bf to i8
  %i.bh = or i8 %i.bg, -32
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bi = lshr i32 %.187, 18
  %i.bj = trunc i32 %i.bi to i8
  %i.bk = or i8 %i.bj, -16
  %i.bl = lshr i32 %.187, 12
  %i.bm = trunc i32 %i.bl to i8
  %i.bn = and i8 %i.bm, 63
  %i.bo = or disjoint i8 %i.bn, -128
  %.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.bb, ptr %.392, ptr %i.a
  %.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 1
  store i8 %i.bo, ptr %.sroa.sel.v.sroa.sel.v.sroa.sel, align 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sink = phi i8 [ %i.bh, %bb.r ], [ %i.bk, %bb.s ]
  %.085.sroa.phi = phi ptr [ %.085.sroa.gep, %bb.r ], [ %.085.sroa.gep110, %bb.s ] ; 4 uses
  %.085 = phi i64 [ 2, %bb.r ], [ 3, %bb.s ]      ; 2 uses
  %.085.sroa.phi123 = ptrtoaddr ptr %.085.sroa.phi to i64
  store i8 %.sink, ptr %i.bc, align 1
  %i.bp = lshr i32 %.187, 6
  %i.bq = trunc i32 %i.bp to i8
  %i.br = and i8 %i.bq, 63
  %i.bs = or disjoint i8 %i.br, -128
  %i.bt = getelementptr i8, ptr %i.bc, i64 %.085  ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 -1
  store i8 %i.bs, ptr %i.bu, align 1
  %i.bv = trunc i32 %.187 to i8
  %i.bw = and i8 %i.bv, 63
  %i.bx = or disjoint i8 %i.bw, -128
  store i8 %i.bx, ptr %i.bt, align 1
  %i.by = icmp eq ptr %i.bc, %.392
  br i1 %i.by, label %bb.w, label %.preheader

.preheader:                                       ; preds = %bb.t
  %.not105111 = icmp ugt ptr %i.bc, %.085.sroa.phi
  br i1 %.not105111, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 91 ; 6 uses
  %i.cb = add i64 %.085.sroa.phi123, %i.bd
  %i.cc = and i64 %i.cb, 1
  %lcmp.mod.not.not = icmp eq i64 %i.cc, 0
  br i1 %lcmp.mod.not.not, label %.prol.preheader, label %.prol.loopexit

.prol.preheader:                                  ; preds = %.lr.ph
  %i.cd = icmp ult ptr %.392, %i.k
  %i.ce = load i8, ptr %i.bc, align 1             ; 2 uses
  br i1 %i.cd, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.prol.preheader
  %i.cf = load i8, ptr %i.ca, align 1             ; 2 uses
  %i.cg = add i8 %i.cf, 1
  store i8 %i.cg, ptr %i.ca, align 1
  %i.ch = sext i8 %i.cf to i64
  %i.ci = getelementptr inbounds i8, ptr %i.bz, i64 %i.ch
  store i8 %i.ce, ptr %i.ci, align 1
  store i32 15, ptr %1, align 4
  br label %.prol.loopexit.unr-lcssa

bb.v:                                             ; preds = %.prol.preheader
  %i.cj = getelementptr inbounds nuw i8, ptr %.392, i64 1
  store i8 %i.ce, ptr %.392, align 1
  br label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.v, %bb.u
  %.594.prol = phi ptr [ %i.cj, %bb.v ], [ %.392, %bb.u ] ; 2 uses
  %.sroa.sel.v = select i1 %i.bb, ptr %.392, ptr %i.a
  %.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.v, i64 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.594.lcssa.unr = phi ptr [ poison, %.lr.ph ], [ %.594.prol, %.prol.loopexit.unr-lcssa ]
  %.088113.unr = phi ptr [ %i.bc, %.lr.ph ], [ %.sroa.sel, %.prol.loopexit.unr-lcssa ]
  %.493112.unr = phi ptr [ %.392, %.lr.ph ], [ %.594.prol, %.prol.loopexit.unr-lcssa ]
  %i.ck = icmp eq ptr %.085.sroa.phi, %i.bc
  br i1 %i.ck, label %.loopexit.loopexit, label %.lr.ph.new

bb.w:                                             ; preds = %bb.t
  %i.cl = getelementptr inbounds nuw i8, ptr %.392, i64 %.085
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  br label %.loopexit

.lr.ph.new:                                       ; preds = %.prol.loopexit, %bb.ac
  %.088113 = phi ptr [ %i.dc, %bb.ac ], [ %.088113.unr, %.prol.loopexit ] ; 3 uses
  %.493112 = phi ptr [ %.594.1, %bb.ac ], [ %.493112.unr, %.prol.loopexit ] ; 4 uses
  %i.cn = icmp ult ptr %.493112, %i.k
  %i.co = load i8, ptr %.088113, align 1          ; 2 uses
  br i1 %i.cn, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph.new
  %i.cp = getelementptr inbounds nuw i8, ptr %.493112, i64 1
  store i8 %i.co, ptr %.493112, align 1
  br label %bb.z

bb.y:                                             ; preds = %.lr.ph.new
  %i.cq = load i8, ptr %i.ca, align 1             ; 2 uses
  %i.cr = add i8 %i.cq, 1
  store i8 %i.cr, ptr %i.ca, align 1
  %i.cs = sext i8 %i.cq to i64
  %i.ct = getelementptr inbounds i8, ptr %i.bz, i64 %i.cs
  store i8 %i.co, ptr %i.ct, align 1
  store i32 15, ptr %1, align 4
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %.594 = phi ptr [ %i.cp, %bb.x ], [ %.493112, %bb.y ] ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.088113, i64 1
  %i.cv = icmp ult ptr %.594, %i.k
  %i.cw = load i8, ptr %i.cu, align 1             ; 2 uses
  br i1 %i.cv, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cx = load i8, ptr %i.ca, align 1             ; 2 uses
  %i.cy = add i8 %i.cx, 1
  store i8 %i.cy, ptr %i.ca, align 1
  %i.cz = sext i8 %i.cx to i64
  %i.da = getelementptr inbounds i8, ptr %i.bz, i64 %i.cz
  store i8 %i.cw, ptr %i.da, align 1
  store i32 15, ptr %1, align 4
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.db = getelementptr inbounds nuw i8, ptr %.594, i64 1
  store i8 %i.cw, ptr %.594, align 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.594.1 = phi ptr [ %i.db, %bb.ab ], [ %.594, %bb.aa ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.088113, i64 2 ; 2 uses
  %.not105.1 = icmp ugt ptr %i.dc, %.085.sroa.phi
  br i1 %.not105.1, label %.loopexit.loopexit, label %.lr.ph.new, !llvm.loop !5

.loopexit.loopexit:                               ; preds = %bb.ac, %.prol.loopexit
  %.594.lcssa = phi ptr [ %.594.lcssa.unr, %.prol.loopexit ], [ %.594.1, %bb.ac ]
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %bb.i, %bb.h, %bb.w, %bb.e
  %.8 = phi ptr [ %i.y, %bb.e ], [ %i.ad, %bb.i ], [ %i.ai, %bb.h ], [ %i.cm, %bb.w ], [ %.392, %.preheader ], [ %.594.lcssa, %.loopexit.loopexit ]
  %.4 = phi ptr [ %i.t, %bb.e ], [ %i.t, %bb.i ], [ %i.t, %bb.h ], [ %.2, %bb.w ], [ %.2, %.preheader ], [ %.2, %.loopexit.loopexit ]
  br label %bb.c, !llvm.loop !7

bb.ad:                                            ; preds = %bb.p, %bb.o, %bb.c
  %.9 = phi ptr [ %.089, %bb.c ], [ %.291, %bb.o ], [ %.291, %bb.p ] ; 2 uses
  %.5 = phi ptr [ %.0, %bb.c ], [ %.1, %bb.o ], [ %.1, %bb.p ] ; 2 uses
  %i.dd = icmp uge ptr %.5, %i.g
  %.not106 = icmp ult ptr %.9, %i.k
  %or.cond109 = select i1 %i.dd, i1 true, i1 %.not106
  br i1 %or.cond109, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.de = load i32, ptr %1, align 4
  %i.df = icmp sgt i32 %i.de, 0
  br i1 %i.df, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i32 15, ptr %1, align 4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  store ptr %.9, ptr %i.h, align 8
  store ptr %.5, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @ucnv_fromUnicode_UTF8_OFFSETS_LOGIC_78(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.n = getelementptr i8, ptr %i.c, i64 48
  %.val = load ptr, ptr %i.n, align 8
  %i.o = icmp ne ptr %.val, @_CESU8Data_78
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 84 ; 4 uses
  %i.q = load i32, ptr %i.p, align 4              ; 2 uses
  %.not146 = icmp ne i32 %i.q, 0
  %i.r = icmp ult ptr %i.k, %i.m
  %or.cond150 = select i1 %.not146, i1 %i.r, i1 false
  br i1 %or.cond150, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.p, align 4
  br label %bb.k

bb.c:                                             ; preds = %bb.a, %.loopexit
  %.0128 = phi ptr [ %.8136, %.loopexit ], [ %i.k, %bb.a ] ; 9 uses
  %.0122 = phi ptr [ %.8, %.loopexit ], [ %i.g, %bb.a ] ; 8 uses
  %.0113 = phi i32 [ %.5118, %.loopexit ], [ 0, %bb.a ] ; 9 uses
  %.0 = phi ptr [ %.4, %.loopexit ], [ %i.e, %bb.a ] ; 4 uses
  %i.s = icmp ult ptr %.0, %i.i
  %i.t = icmp ult ptr %.0128, %i.m
  %i.u = select i1 %i.s, i1 %i.t, i1 false
  br i1 %i.u, label %bb.d, label %bb.ab

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.0, i64 2 ; 5 uses
  %i.w = load i16, ptr %.0, align 2               ; 7 uses
  %i.x = zext i16 %i.w to i32                     ; 3 uses
  %i.y = icmp ult i16 %i.w, 128
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = add nsw i32 %.0113, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %.0122, i64 4
  store i32 %.0113, ptr %.0122, align 4
  %i.ab = trunc nuw nsw i16 %i.w to i8
  %i.ac = getelementptr inbounds nuw i8, ptr %.0128, i64 1
  store i8 %i.ab, ptr %.0128, align 1
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.ad = icmp ult i16 %i.w, 2048
  br i1 %i.ad, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %.0122, i64 4 ; 2 uses
  store i32 %.0113, ptr %.0122, align 4
  %i.af = lshr i16 %i.w, 6
  %i.ag = trunc nuw nsw i16 %i.af to i8
  %i.ah = or disjoint i8 %i.ag, -64
  %i.ai = getelementptr inbounds nuw i8, ptr %.0128, i64 1 ; 3 uses
  store i8 %i.ah, ptr %.0128, align 1
  %i.aj = icmp ult ptr %i.ai, %i.m
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = add nsw i32 %.0113, 1
  %i.al = getelementptr inbounds nuw i8, ptr %.0122, i64 8
  store i32 %.0113, ptr %i.ae, align 4
  %i.am = trunc i16 %i.w to i8
  %i.an = and i8 %i.am, 63
  %i.ao = or disjoint i8 %i.an, -128
  %i.ap = getelementptr inbounds nuw i8, ptr %.0128, i64 2
  store i8 %i.ao, ptr %i.ai, align 1
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.aq = trunc i16 %i.w to i8
  %i.ar = and i8 %i.aq, 63
  %i.as = or disjoint i8 %i.ar, -128
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  store i8 %i.as, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 91
  store i8 1, ptr %i.au, align 1
  store i32 15, ptr %1, align 4
  br label %.loopexit

bb.j:                                             ; preds = %bb.f
  %i.av = add nsw i32 %.0113, 1                   ; 2 uses
  %i.aw = and i32 %i.x, 63488
  %i.ax = icmp eq i32 %i.aw, 55296
  %or.cond = and i1 %i.o, %i.ax
  br i1 %or.cond, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j, %bb.b
  %.2130 = phi ptr [ %i.k, %bb.b ], [ %.0128, %bb.j ] ; 3 uses
  %.2124 = phi ptr [ %i.g, %bb.b ], [ %.0122, %bb.j ] ; 3 uses
end_hunk_0
