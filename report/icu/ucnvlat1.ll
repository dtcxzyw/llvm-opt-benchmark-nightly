Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ucnvlat1?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UConverterStaticData = type { i32, [60 x i8], i32, i8, i8, i8, i8, [4 x i8], i8, i8, i8, i8, i8, [19 x i8] }
%struct.UConverterImpl = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.UConverterSharedData = type { i32, i32, ptr, ptr, i8, i8, ptr, i32, %struct.UConverterMBCSTable }
%struct.UConverterMBCSTable = type { i8, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, [64 x i16], ptr, ptr, i32, i8, i8, i8, i16, i32, ptr, ptr, ptr, ptr }

@_ZL17_Latin1StaticData = internal constant %struct.UConverterStaticData { i32 100, [60 x i8] c"ISO-8859-1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 819, i8 0, i8 3, i8 1, i8 1, [4 x i8] c"\1A\00\00\00", i8 1, i8 0, i8 0, i8 0, i8 0, [19 x i8] zeroinitializer }, align 4
@_ZL11_Latin1Impl = internal constant %struct.UConverterImpl { i32 3, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @_ZL27_Latin1ToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode, ptr @_ZL27_Latin1ToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode, ptr @_ZL29_Latin1FromUnicodeWithOffsetsP25UConverterFromUnicodeArgsP10UErrorCode, ptr @_ZL29_Latin1FromUnicodeWithOffsetsP25UConverterFromUnicodeArgsP10UErrorCode, ptr @_ZL19_Latin1GetNextUCharP23UConverterToUnicodeArgsP10UErrorCode, ptr null, ptr null, ptr null, ptr null, ptr @_ZL20_Latin1GetUnicodeSetPK10UConverterPK9USetAdder20UConverterUnicodeSetP10UErrorCode, ptr null, ptr @_ZL19ucnv_Latin1FromUTF8P25UConverterFromUnicodeArgsP23UConverterToUnicodeArgsP10UErrorCode }, align 8
@_Latin1Data_78 = constant %struct.UConverterSharedData { i32 296, i32 -1, ptr null, ptr @_ZL17_Latin1StaticData, i8 0, i8 0, ptr @_ZL11_Latin1Impl, i32 0, %struct.UConverterMBCSTable zeroinitializer }, align 8
@_ZL16_ASCIIStaticData = internal constant %struct.UConverterStaticData { i32 100, [60 x i8] c"US-ASCII\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 367, i8 0, i8 26, i8 1, i8 1, [4 x i8] c"\1A\00\00\00", i8 1, i8 0, i8 0, i8 0, i8 0, [19 x i8] zeroinitializer }, align 4
@_ZL10_ASCIIImpl = internal constant %struct.UConverterImpl { i32 26, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @_ZL26_ASCIIToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode, ptr @_ZL26_ASCIIToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode, ptr @_ZL29_Latin1FromUnicodeWithOffsetsP25UConverterFromUnicodeArgsP10UErrorCode, ptr @_ZL29_Latin1FromUnicodeWithOffsetsP25UConverterFromUnicodeArgsP10UErrorCode, ptr @_ZL18_ASCIIGetNextUCharP23UConverterToUnicodeArgsP10UErrorCode, ptr null, ptr null, ptr null, ptr null, ptr @_ZL19_ASCIIGetUnicodeSetPK10UConverterPK9USetAdder20UConverterUnicodeSetP10UErrorCode, ptr null, ptr @_ZL18ucnv_ASCIIFromUTF8P25UConverterFromUnicodeArgsP23UConverterToUnicodeArgsP10UErrorCode }, align 8
@_ASCIIData_78 = local_unnamed_addr constant %struct.UConverterSharedData { i32 296, i32 -1, ptr null, ptr @_ZL16_ASCIIStaticData, i8 0, i8 0, ptr @_ZL10_ASCIIImpl, i32 0, %struct.UConverterMBCSTable zeroinitializer }, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL27_Latin1ToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 1
  %i.k = trunc i64 %i.j to i32                    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !18   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !19
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.b to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %.not = icmp sgt i32 %i.s, %i.k
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 15, ptr %1, align 4, !tbaa !20
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.073 = phi i32 [ %i.k, %bb.b ], [ %i.s, %bb.a ] ; 4 uses
  %i.t = icmp sgt i32 %.073, 7
  br i1 %i.t, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.u = lshr i32 %.073, 3                        ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.082 = phi ptr [ %i.b, %bb.d ], [ %i.ba, %bb.e ] ; 9 uses
  %.079 = phi ptr [ %i.d, %bb.d ], [ %i.az, %bb.e ] ; 9 uses
  %.067 = phi i32 [ %i.u, %bb.d ], [ %i.bb, %bb.e ] ; 2 uses
  %i.v = load i8, ptr %.082, align 1, !tbaa !22
  %i.w = zext i8 %i.v to i16
  store i16 %i.w, ptr %.079, align 2, !tbaa !23
  %i.x = getelementptr inbounds nuw i8, ptr %.082, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !22
  %i.z = zext i8 %i.y to i16
  %i.aa = getelementptr inbounds nuw i8, ptr %.079, i64 2
  store i16 %i.z, ptr %i.aa, align 2, !tbaa !23
  %i.ab = getelementptr inbounds nuw i8, ptr %.082, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !22
  %i.ad = zext i8 %i.ac to i16
  %i.ae = getelementptr inbounds nuw i8, ptr %.079, i64 4
  store i16 %i.ad, ptr %i.ae, align 2, !tbaa !23
  %i.af = getelementptr inbounds nuw i8, ptr %.082, i64 3
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !22
  %i.ah = zext i8 %i.ag to i16
  %i.ai = getelementptr inbounds nuw i8, ptr %.079, i64 6
  store i16 %i.ah, ptr %i.ai, align 2, !tbaa !23
  %i.aj = getelementptr inbounds nuw i8, ptr %.082, i64 4
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !22
  %i.al = zext i8 %i.ak to i16
  %i.am = getelementptr inbounds nuw i8, ptr %.079, i64 8
  store i16 %i.al, ptr %i.am, align 2, !tbaa !23
  %i.an = getelementptr inbounds nuw i8, ptr %.082, i64 5
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !22
  %i.ap = zext i8 %i.ao to i16
  %i.aq = getelementptr inbounds nuw i8, ptr %.079, i64 10
  store i16 %i.ap, ptr %i.aq, align 2, !tbaa !23
  %i.ar = getelementptr inbounds nuw i8, ptr %.082, i64 6
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !22
  %i.at = zext i8 %i.as to i16
  %i.au = getelementptr inbounds nuw i8, ptr %.079, i64 12
  store i16 %i.at, ptr %i.au, align 2, !tbaa !23
  %i.av = getelementptr inbounds nuw i8, ptr %.082, i64 7
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !22
  %i.ax = zext i8 %i.aw to i16
  %i.ay = getelementptr inbounds nuw i8, ptr %.079, i64 14
  store i16 %i.ax, ptr %i.ay, align 2, !tbaa !23
  %i.az = getelementptr inbounds nuw i8, ptr %.079, i64 16 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.082, i64 8 ; 4 uses
  %i.bb = add nsw i32 %.067, -1
  %i.bc = icmp samesign ugt i32 %.067, 1
  br i1 %i.bc, label %bb.e, label %bb.f, !llvm.loop !25

bb.f:                                             ; preds = %bb.e
  %i.bd = and i32 %.073, 7                        ; 3 uses
  %.not89 = icmp eq ptr %i.m, null
  br i1 %.not89, label %.loopexit.thread, label %.preheader91

.preheader91:                                     ; preds = %bb.f, %.preheader91
  %.069 = phi ptr [ %i.bk, %.preheader91 ], [ %i.m, %bb.f ] ; 3 uses
  %.068 = phi i32 [ %i.bj, %.preheader91 ], [ 0, %bb.f ] ; 2 uses
  %.0 = phi i32 [ %i.bl, %.preheader91 ], [ %i.u, %bb.f ] ; 2 uses
  %i.be = insertelement <4 x i32> poison, i32 %.068, i64 0
  %i.bf = shufflevector <4 x i32> %i.be, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bg = or disjoint <4 x i32> %i.bf, <i32 4, i32 5, i32 6, i32 7>
  %i.bh = or disjoint <4 x i32> %i.bf, <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.bh, ptr %.069, align 4, !tbaa !27
  %i.bi = getelementptr inbounds nuw i8, ptr %.069, i64 16
  %i.bj = add nuw nsw i32 %.068, 8                ; 2 uses
  store <4 x i32> %i.bg, ptr %i.bi, align 4, !tbaa !27
  %i.bk = getelementptr inbounds nuw i8, ptr %.069, i64 32 ; 2 uses
  %i.bl = add nsw i32 %.0, -1
  %2 = icmp samesign ugt i32 %.0, 1
  br i1 %2, label %.preheader91, label %.loopexit, !llvm.loop !28

.loopexit:                                        ; preds = %.preheader91, %bb.c
  %.183 = phi ptr [ %i.b, %bb.c ], [ %i.ba, %.preheader91 ] ; 2 uses
  %.180 = phi ptr [ %i.d, %bb.c ], [ %i.az, %.preheader91 ] ; 2 uses
  %.174 = phi i32 [ %.073, %bb.c ], [ %i.bd, %.preheader91 ] ; 2 uses
  %.271 = phi ptr [ %i.m, %bb.c ], [ %i.bk, %.preheader91 ] ; 3 uses
  %.2 = phi i32 [ 0, %bb.c ], [ %i.bj, %.preheader91 ]
  %i.bm = icmp sgt i32 %.174, 0
  br i1 %i.bm, label %iter.check, label %._crit_edge.thread

.loopexit.thread:                                 ; preds = %bb.f
  %.not140 = icmp eq i32 %i.bd, 0
  br i1 %.not140, label %._crit_edge.thread.thread, label %iter.check

._crit_edge.thread.thread:                        ; preds = %.loopexit.thread
  store ptr %i.ba, ptr %i.a, align 8, !tbaa !8
  store ptr %i.az, ptr %i.c, align 8, !tbaa !16
  br label %bb.g

iter.check:                                       ; preds = %.loopexit.thread, %.loopexit
  %.2129 = phi i32 [ 0, %.loopexit.thread ], [ %.2, %.loopexit ] ; 4 uses
  %.271127 = phi ptr [ null, %.loopexit.thread ], [ %.271, %.loopexit ] ; 4 uses
  %.174126 = phi i32 [ %i.bd, %.loopexit.thread ], [ %.174, %.loopexit ] ; 11 uses
  %.180124 = phi ptr [ %i.az, %.loopexit.thread ], [ %.180, %.loopexit ] ; 8 uses
  %.183122 = phi ptr [ %i.ba, %.loopexit.thread ], [ %.183, %.loopexit ] ; 8 uses
  %i.bn = zext nneg i32 %.174126 to i64           ; 7 uses
  %min.iters.check = icmp samesign ult i32 %.174126, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bo = add nsw i32 %.174126, -1
  %i.bp = zext i32 %i.bo to i64
  %i.bq = shl nuw nsw i64 %i.bp, 1
  %i.br = getelementptr i8, ptr %.180124, i64 %i.bq
  %scevgep = getelementptr i8, ptr %i.br, i64 2
  %i.bs = zext nneg i32 %.174126 to i64
  %scevgep147 = getelementptr i8, ptr %.183122, i64 %i.bs
  %bound0 = icmp ult ptr %.180124, %scevgep147
  %bound1 = icmp ult ptr %.183122, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check148 = icmp samesign ult i32 %.174126, 16
  br i1 %min.iters.check148, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bt = and i64 %i.bn, 12
  %n.vec = and i64 %i.bn, 2147483632              ; 6 uses
  %i.bu = trunc nuw nsw i64 %n.vec to i32
  %i.bv = sub nsw i32 %.174126, %i.bu
  %i.bw = shl nuw nsw i64 %n.vec, 1
  %i.bx = getelementptr i8, ptr %.180124, i64 %i.bw ; 2 uses
  %i.by = getelementptr i8, ptr %.183122, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bz = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.180124, i64 %i.bz ; 2 uses
  %next.gep149 = getelementptr i8, ptr %.183122, i64 %index ; 2 uses
  %i.ca = getelementptr i8, ptr %next.gep149, i64 8
  %wide.load = load <8 x i8>, ptr %next.gep149, align 1, !tbaa !22, !alias.scope !29
  %wide.load150 = load <8 x i8>, ptr %i.ca, align 1, !tbaa !22, !alias.scope !29
  %i.cb = zext <8 x i8> %wide.load to <8 x i16>
  %i.cc = zext <8 x i8> %wide.load150 to <8 x i16>
  %i.cd = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %i.cb, ptr %next.gep, align 2, !tbaa !23, !alias.scope !32, !noalias !29
  store <8 x i16> %i.cc, ptr %i.cd, align 2, !tbaa !23, !alias.scope !32, !noalias !29
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bn
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bt, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !37

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec153 = and i64 %i.bn, 2147483644           ; 5 uses
  %i.cf = trunc nuw nsw i64 %n.vec153 to i32
  %i.cg = sub nsw i32 %.174126, %i.cf
  %i.ch = shl nuw nsw i64 %n.vec153, 1
  %i.ci = getelementptr i8, ptr %.180124, i64 %i.ch ; 2 uses
  %i.cj = getelementptr i8, ptr %.183122, i64 %n.vec153 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index154 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next158, %vec.epilog.vector.body ] ; 3 uses
  %i.ck = shl i64 %index154, 1
  %next.gep155 = getelementptr i8, ptr %.180124, i64 %i.ck
  %next.gep156 = getelementptr i8, ptr %.183122, i64 %index154
  %wide.load157 = load <4 x i8>, ptr %next.gep156, align 1, !tbaa !22, !alias.scope !29
  %i.cl = zext <4 x i8> %wide.load157 to <4 x i16>
  store <4 x i16> %i.cl, ptr %next.gep155, align 2, !tbaa !23, !alias.scope !32, !noalias !29
  %index.next158 = add nuw i64 %index154, 4       ; 2 uses
  %i.cm = icmp eq i64 %index.next158, %n.vec153
  br i1 %i.cm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !38

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n159 = icmp eq i64 %n.vec153, %i.bn
  br i1 %cmp.n159, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.27897.ph = phi i32 [ %.174126, %iter.check ], [ %.174126, %vector.memcheck ], [ %i.bv, %vec.epilog.iter.check ], [ %i.cg, %vec.epilog.middle.block ]
  %.28196.ph = phi ptr [ %.180124, %iter.check ], [ %.180124, %vector.memcheck ], [ %i.bx, %vec.epilog.iter.check ], [ %i.ci, %vec.epilog.middle.block ]
  %.28495.ph = phi ptr [ %.183122, %iter.check ], [ %.183122, %vector.memcheck ], [ %i.by, %vec.epilog.iter.check ], [ %i.cj, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.27897 = phi i32 [ %i.cr, %.lr.ph ], [ %.27897.ph, %.lr.ph.preheader ] ; 2 uses
  %.28196 = phi ptr [ %i.cq, %.lr.ph ], [ %.28196.ph, %.lr.ph.preheader ] ; 2 uses
  %.28495 = phi ptr [ %i.cn, %.lr.ph ], [ %.28495.ph, %.lr.ph.preheader ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.28495, i64 1 ; 2 uses
  %i.co = load i8, ptr %.28495, align 1, !tbaa !22
  %i.cp = zext i8 %i.co to i16
  %i.cq = getelementptr inbounds nuw i8, ptr %.28196, i64 2 ; 2 uses
  store i16 %i.cp, ptr %.28196, align 2, !tbaa !23
  %i.cr = add nsw i32 %.27897, -1
  %i.cs = icmp samesign ugt i32 %.27897, 1
  br i1 %i.cs, label %.lr.ph, label %._crit_edge, !llvm.loop !39

._crit_edge:                                      ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa142 = phi ptr [ %i.cj, %vec.epilog.middle.block ], [ %i.by, %middle.block ], [ %i.cn, %.lr.ph ]
  %.lcssa141 = phi ptr [ %i.ci, %vec.epilog.middle.block ], [ %i.bx, %middle.block ], [ %i.cq, %.lr.ph ]
  store ptr %.lcssa142, ptr %i.a, align 8, !tbaa !8
  store ptr %.lcssa141, ptr %i.c, align 8, !tbaa !16
  %.not90 = icmp eq ptr %.271127, null
  br i1 %.not90, label %bb.g, label %.lr.ph102.preheader

._crit_edge.thread:                               ; preds = %.loopexit
  store ptr %.183, ptr %i.a, align 8, !tbaa !8
  store ptr %.180, ptr %i.c, align 8, !tbaa !16
  %.not90116 = icmp eq ptr %.271, null
  br i1 %.not90116, label %bb.g, label %._crit_edge103

.lr.ph102.preheader:                              ; preds = %._crit_edge
  %i.ct = add i32 %.174126, %.2129
  %min.iters.check163 = icmp samesign ult i32 %.174126, 8
  br i1 %min.iters.check163, label %.lr.ph102.preheader173, label %vector.ph164

vector.ph164:                                     ; preds = %.lr.ph102.preheader
  %n.vec165 = and i64 %i.bn, 2147483640           ; 4 uses
  %i.cu = trunc nuw nsw i64 %n.vec165 to i32
  %i.cv = add i32 %.2129, %i.cu
  %i.cw = shl nuw nsw i64 %n.vec165, 2
  %i.cx = getelementptr i8, ptr %.271127, i64 %i.cw ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.2129, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body166

vector.body166:                                   ; preds = %vector.body166, %vector.ph164
  %index167 = phi i64 [ 0, %vector.ph164 ], [ %index.next169, %vector.body166 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph164 ], [ %vec.ind.next, %vector.body166 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.cy = shl i64 %index167, 2
  %next.gep168 = getelementptr i8, ptr %.271127, i64 %i.cy ; 2 uses
  %i.cz = getelementptr i8, ptr %next.gep168, i64 16
  store <4 x i32> %vec.ind, ptr %next.gep168, align 4, !tbaa !27
  store <4 x i32> %step.add, ptr %i.cz, align 4, !tbaa !27
  %index.next169 = add nuw i64 %index167, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.da = icmp eq i64 %index.next169, %n.vec165
  br i1 %i.da, label %middle.block170, label %vector.body166, !llvm.loop !40

middle.block170:                                  ; preds = %vector.body166
  %cmp.n171 = icmp eq i64 %n.vec165, %i.bn
  br i1 %cmp.n171, label %._crit_edge103, label %.lr.ph102.preheader173

.lr.ph102.preheader173:                           ; preds = %.lr.ph102.preheader, %middle.block170
  %.3101.ph = phi i32 [ %.2129, %.lr.ph102.preheader ], [ %i.cv, %middle.block170 ]
  %.372100.ph = phi ptr [ %.271127, %.lr.ph102.preheader ], [ %i.cx, %middle.block170 ]
  br label %.lr.ph102

.lr.ph102:                                        ; preds = %.lr.ph102.preheader173, %.lr.ph102
  %.3101 = phi i32 [ %i.db, %.lr.ph102 ], [ %.3101.ph, %.lr.ph102.preheader173 ] ; 2 uses
  %.372100 = phi ptr [ %i.dc, %.lr.ph102 ], [ %.372100.ph, %.lr.ph102.preheader173 ] ; 2 uses
  %i.db = add i32 %.3101, 1                       ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.372100, i64 4 ; 2 uses
  store i32 %.3101, ptr %.372100, align 4, !tbaa !27
  %exitcond.not = icmp eq i32 %i.db, %i.ct
  br i1 %exitcond.not, label %._crit_edge103, label %.lr.ph102, !llvm.loop !41

._crit_edge103:                                   ; preds = %.lr.ph102, %middle.block170, %._crit_edge.thread
  %.372.lcssa = phi ptr [ %.271, %._crit_edge.thread ], [ %i.cx, %middle.block170 ], [ %i.dc, %.lr.ph102 ]
  store ptr %.372.lcssa, ptr %i.l, align 8, !tbaa !18
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.thread.thread, %._crit_edge.thread, %._crit_edge103, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL29_Latin1FromUnicodeWithOffsetsP25UConverterFromUnicodeArgsP10UErrorCode(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !45   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZL19_ASCIIGetUnicodeSetPK10UConverterPK9USetAdder20UConverterUnicodeSetP10UErrorCode:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59
  %i.c = load ptr, ptr %1, align 8, !tbaa !62
  tail call void %i.b(ptr noundef %i.c, i32 noundef 0, i32 noundef 127)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL18ucnv_ASCIIFromUTF8P25UConverterFromUnicodeArgsP23UConverterToUnicodeArgsP10UErrorCode(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load i8, ptr %i.c, align 8, !tbaa !64
  %i.e = icmp sgt i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 -127, ptr %2, align 4, !tbaa !20
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !46   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !47
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = trunc i64 %i.p to i32
  %i.r = ptrtoint ptr %i.i to i64
  %i.s = ptrtoint ptr %i.g to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = trunc i64 %i.t to i32
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.u, i32 %i.q) ; 4 uses
  %i.v = icmp sgt i32 %spec.select, 15
  br i1 %i.v, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.w = lshr i32 %spec.select, 4                 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.092 = phi ptr [ %i.g, %bb.d ], [ %i.ci, %bb.f ] ; 18 uses
  %.089 = phi ptr [ %i.k, %bb.d ], [ %i.ch, %bb.f ] ; 18 uses
  %.0 = phi i32 [ %i.w, %bb.d ], [ %i.cj, %bb.f ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.092, i64 1
  %i.y = load i8, ptr %.092, align 1, !tbaa !22   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.089, i64 1
  store i8 %i.y, ptr %.089, align 1, !tbaa !22
  %i.aa = getelementptr inbounds nuw i8, ptr %.092, i64 2
  %i.ab = load i8, ptr %i.x, align 1, !tbaa !22   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.089, i64 2
  store i8 %i.ab, ptr %i.z, align 1, !tbaa !22
  %i.ad = or i8 %i.ab, %i.y
  %i.ae = getelementptr inbounds nuw i8, ptr %.092, i64 3
  %i.af = load i8, ptr %i.aa, align 1, !tbaa !22  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.089, i64 3
  store i8 %i.af, ptr %i.ac, align 1, !tbaa !22
  %i.ah = or i8 %i.ad, %i.af
  %i.ai = getelementptr inbounds nuw i8, ptr %.092, i64 4
  %i.aj = load i8, ptr %i.ae, align 1, !tbaa !22  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.089, i64 4
  store i8 %i.aj, ptr %i.ag, align 1, !tbaa !22
  %i.al = or i8 %i.ah, %i.aj
  %i.am = getelementptr inbounds nuw i8, ptr %.092, i64 5
  %i.an = load i8, ptr %i.ai, align 1, !tbaa !22  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.089, i64 5
  store i8 %i.an, ptr %i.ak, align 1, !tbaa !22
  %i.ap = or i8 %i.al, %i.an
  %i.aq = getelementptr inbounds nuw i8, ptr %.092, i64 6
  %i.ar = load i8, ptr %i.am, align 1, !tbaa !22  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.089, i64 6
  store i8 %i.ar, ptr %i.ao, align 1, !tbaa !22
  %i.at = or i8 %i.ap, %i.ar
  %i.au = getelementptr inbounds nuw i8, ptr %.092, i64 7
  %i.av = load i8, ptr %i.aq, align 1, !tbaa !22  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.089, i64 7
  store i8 %i.av, ptr %i.as, align 1, !tbaa !22
  %i.ax = or i8 %i.at, %i.av
  %i.ay = getelementptr inbounds nuw i8, ptr %.092, i64 8
  %i.az = load i8, ptr %i.au, align 1, !tbaa !22  ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.089, i64 8
  store i8 %i.az, ptr %i.aw, align 1, !tbaa !22
  %i.bb = or i8 %i.ax, %i.az
  %i.bc = getelementptr inbounds nuw i8, ptr %.092, i64 9
  %i.bd = load i8, ptr %i.ay, align 1, !tbaa !22  ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.089, i64 9
  store i8 %i.bd, ptr %i.ba, align 1, !tbaa !22
  %i.bf = or i8 %i.bb, %i.bd
  %i.bg = getelementptr inbounds nuw i8, ptr %.092, i64 10
  %i.bh = load i8, ptr %i.bc, align 1, !tbaa !22  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.089, i64 10
  store i8 %i.bh, ptr %i.be, align 1, !tbaa !22
  %i.bj = or i8 %i.bf, %i.bh
  %i.bk = getelementptr inbounds nuw i8, ptr %.092, i64 11
  %i.bl = load i8, ptr %i.bg, align 1, !tbaa !22  ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.089, i64 11
  store i8 %i.bl, ptr %i.bi, align 1, !tbaa !22
  %i.bn = or i8 %i.bj, %i.bl
  %i.bo = getelementptr inbounds nuw i8, ptr %.092, i64 12
  %i.bp = load i8, ptr %i.bk, align 1, !tbaa !22  ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.089, i64 12
  store i8 %i.bp, ptr %i.bm, align 1, !tbaa !22
  %i.br = or i8 %i.bn, %i.bp
  %i.bs = getelementptr inbounds nuw i8, ptr %.092, i64 13
  %i.bt = load i8, ptr %i.bo, align 1, !tbaa !22  ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.089, i64 13
  store i8 %i.bt, ptr %i.bq, align 1, !tbaa !22
  %i.bv = or i8 %i.br, %i.bt
  %i.bw = getelementptr inbounds nuw i8, ptr %.092, i64 14
  %i.bx = load i8, ptr %i.bs, align 1, !tbaa !22  ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.089, i64 14
  store i8 %i.bx, ptr %i.bu, align 1, !tbaa !22
  %i.bz = or i8 %i.bv, %i.bx
  %i.ca = getelementptr inbounds nuw i8, ptr %.092, i64 15
  %i.cb = load i8, ptr %i.bw, align 1, !tbaa !22  ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.089, i64 15
  store i8 %i.cb, ptr %i.by, align 1, !tbaa !22
  %i.cd = or i8 %i.bz, %i.cb
  %i.ce = load i8, ptr %i.ca, align 1, !tbaa !22  ; 2 uses
  store i8 %i.ce, ptr %i.cc, align 1, !tbaa !22
  %i.cf = or i8 %i.cd, %i.ce
  %i.cg = icmp slt i8 %i.cf, 0
  br i1 %i.cg, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ch = getelementptr inbounds nuw i8, ptr %.089, i64 16 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.092, i64 16 ; 2 uses
  %i.cj = add nsw i32 %.0, -1
  %i.ck = icmp sgt i32 %.0, 1
  br i1 %i.ck, label %bb.e, label %bb.g, !llvm.loop !73

bb.g:                                             ; preds = %bb.e, %bb.f
  %.193 = phi ptr [ %i.ci, %bb.f ], [ %.092, %bb.e ]
  %.190 = phi ptr [ %i.ch, %bb.f ], [ %.089, %bb.e ]
  %.1 = phi i32 [ 0, %bb.f ], [ %.0, %bb.e ]
  %.neg = sub i32 %.1, %i.w
  %.neg100 = shl i32 %.neg, 4
  %i.cl = add i32 %.neg100, %spec.select
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %.294 = phi ptr [ %.193, %bb.g ], [ %i.g, %bb.c ] ; 2 uses
  %.291 = phi ptr [ %.190, %bb.g ], [ %i.k, %bb.c ] ; 2 uses
  %.188 = phi i32 [ %i.cl, %bb.g ], [ %spec.select, %bb.c ] ; 2 uses
  %i.cm = icmp sgt i32 %.188, 0
  br i1 %i.cm, label %.lr.ph, label %.critedge101

.lr.ph:                                           ; preds = %bb.h, %bb.i
  %.2108 = phi i32 [ %i.cr, %bb.i ], [ %.188, %bb.h ] ; 2 uses
  %.3107 = phi ptr [ %i.cq, %bb.i ], [ %.291, %bb.h ] ; 3 uses
  %.395106 = phi ptr [ %i.cp, %bb.i ], [ %.294, %bb.h ] ; 3 uses
  %i.cn = load i8, ptr %.395106, align 1, !tbaa !22 ; 2 uses
  %i.co = icmp sgt i8 %i.cn, -1
  br i1 %i.co, label %bb.i, label %.sink.split

bb.i:                                             ; preds = %.lr.ph
  %i.cp = getelementptr inbounds nuw i8, ptr %.395106, i64 1 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.3107, i64 1 ; 2 uses
  store i8 %i.cn, ptr %.3107, align 1, !tbaa !22
  %i.cr = add nsw i32 %.2108, -1
  %i.cs = icmp sgt i32 %.2108, 1
  br i1 %i.cs, label %.lr.ph, label %.critedge101, !llvm.loop !74

.critedge101:                                     ; preds = %bb.i, %bb.h
  %.395.lcssa = phi ptr [ %.294, %bb.h ], [ %i.cp, %bb.i ] ; 4 uses
  %.3.lcssa = phi ptr [ %.291, %bb.h ], [ %i.cq, %bb.i ] ; 4 uses
  %i.ct = icmp ult ptr %.395.lcssa, %i.i
  br i1 %i.ct, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.critedge101
  %i.cu = load ptr, ptr %i.l, align 8, !tbaa !47
  %.not = icmp ult ptr %.3.lcssa, %i.cu
  br i1 %.not, label %bb.k, label %.sink.split

.sink.split:                                      ; preds = %.lr.ph, %bb.j
  %.sink = phi i32 [ 15, %bb.j ], [ -127, %.lr.ph ]
  %.395105.ph = phi ptr [ %.395.lcssa, %bb.j ], [ %.395106, %.lr.ph ]
  %.3103.ph = phi ptr [ %.3.lcssa, %bb.j ], [ %.3107, %.lr.ph ]
  store i32 %.sink, ptr %2, align 4, !tbaa !20
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %.critedge101, %bb.j
  %.395105 = phi ptr [ %.395.lcssa, %.critedge101 ], [ %.395.lcssa, %bb.j ], [ %.395105.ph, %.sink.split ]
  %.3103 = phi ptr [ %.3.lcssa, %.critedge101 ], [ %.3.lcssa, %bb.j ], [ %.3103.ph, %.sink.split ]
  store ptr %.395105, ptr %i.f, align 8, !tbaa !8
  store ptr %.3103, ptr %i.j, align 8, !tbaa !46
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.or.v16i16(<16 x i16>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !13, i64 16}
!9 = !{!"_ZTS23UConverterToUnicodeArgs", !10, i64 0, !6, i64 2, !11, i64 8, !13, i64 16, !13, i64 24, !14, i64 32, !14, i64 40, !15, i64 48}
!10 = !{!"short", !6, i64 0}
!11 = !{!"p1 _ZTS10UConverter", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"p1 char16_t", !12, i64 0}
!15 = !{!"p1 int", !12, i64 0}
!16 = !{!9, !14, i64 32}
!17 = !{!9, !14, i64 40}
!18 = !{!9, !15, i64 48}
!19 = !{!9, !13, i64 24}
!20 = !{!21, !21, i64 0}
!21 = !{!"_ZTS10UErrorCode", !6, i64 0}
!22 = !{!6, !6, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"char16_t", !6, i64 0}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!5, !5, i64 0}
!28 = distinct !{!28, !26}
!29 = !{!30}
!30 = distinct !{!30, !31}
!31 = distinct !{!31, !"LVerDomain"}
!32 = !{!33}
!33 = distinct !{!33, !31}
!34 = distinct !{!34, !26, !35, !36}
!35 = !{!"llvm.loop.isvectorized", i32 1}
!36 = !{!"llvm.loop.unroll.runtime.disable"}
!37 = !{!"branch_weights", i32 4, i32 12}
!38 = distinct !{!38, !26, !35, !36}
!39 = distinct !{!39, !26, !35}
!40 = distinct !{!40, !26, !35, !36}
!41 = distinct !{!41, !26, !36, !35}
!42 = !{!43, !11, i64 8}
!43 = !{!"_ZTS25UConverterFromUnicodeArgs", !10, i64 0, !6, i64 2, !11, i64 8, !14, i64 16, !14, i64 24, !13, i64 32, !13, i64 40, !15, i64 48}
!44 = !{!43, !14, i64 16}
!45 = !{!43, !14, i64 24}
!46 = !{!43, !13, i64 32}
!47 = !{!43, !13, i64 40}
!48 = !{!43, !15, i64 48}
!49 = !{!50, !51, i64 48}
!50 = !{!"_ZTS10UConverter", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !13, i64 40, !51, i64 48, !5, i64 56, !6, i64 60, !6, i64 61, !6, i64 62, !6, i64 63, !6, i64 64, !6, i64 65, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !6, i64 88, !6, i64 89, !6, i64 90, !6, i64 91, !6, i64 92, !6, i64 93, !6, i64 94, !6, i64 95, !6, i64 96, !6, i64 104, !6, i64 136, !6, i64 140, !6, i64 144, !5, i64 208, !6, i64 212, !6, i64 250, !6, i64 281, !6, i64 282, !6, i64 283, !52, i64 284}
!51 = !{!"p1 _ZTS20UConverterSharedData", !12, i64 0}
!52 = !{!"_ZTS24UConverterCallbackReason", !6, i64 0}
!53 = !{!50, !5, i64 84}
!54 = distinct !{!54, !26}
!55 = distinct !{!55, !26}
!56 = distinct !{!56, !26}
!57 = distinct !{!57, !26, !35, !36}
!58 = distinct !{!58, !26, !36, !35}
!59 = !{!60, !12, i64 16}
!60 = !{!"_ZTS9USetAdder", !61, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40}
!61 = !{!"p1 _ZTS4USet", !12, i64 0}
!62 = !{!60, !61, i64 0}
!63 = !{!9, !11, i64 8}
!64 = !{!50, !6, i64 64}
!65 = !{!50, !5, i64 72}
!66 = distinct !{!66, !26}
!67 = !{!50, !5, i64 76}
!68 = distinct !{!68, !26}
!69 = distinct !{!69, !26}
!70 = distinct !{!70, !26}
!71 = distinct !{!71, !26, !35, !36}
!72 = distinct !{!72, !26, !36, !35}
!73 = distinct !{!73, !26}
!74 = distinct !{!74, !26}
end_hunk_1
