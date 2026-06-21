inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UConverterStaticData = type { i32, [60 x i8], i32, i8, i8, i8, i8, [4 x i8], i8, i8, i8, i8, i8, [19 x i8] }
%struct.UConverterImpl = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.UConverterSharedData = type { i32, i32, ptr, ptr, i8, i8, ptr, i32, %struct.UConverterMBCSTable }
%struct.UConverterMBCSTable = type { i8, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, [64 x i16], ptr, ptr, i32, i8, i8, i8, i16, i32, ptr, ptr, ptr, ptr }

@_ZL17_Latin1StaticData = internal constant %struct.UConverterStaticData { i32 100, [60 x i8] c"ISO-8859-1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 819, i8 0, i8 3, i8 1, i8 1, [4 x i8] c"\1A\00\00\00", i8 1, i8 0, i8 0, i8 0, i8 0, [19 x i8] zeroinitializer }, align 4
@_ZL11_Latin1Impl = internal constant %struct.UConverterImpl { i32 3, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @_ZL27_Latin1ToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode, ptr @_ZL27_Latin1ToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode, ptr @_ZL29_Latin1FromUnicodeWithOffsetsP25UConverterFromUnicodeArgsP10UErrorCode, ptr @_ZL29_Latin1FromUnicodeWithOffsetsP25UConverterFromUnicodeArgsP10UErrorCode, ptr @_ZL19_Latin1GetNextUCharP23UConverterToUnicodeArgsP10UErrorCode, ptr null, ptr null, ptr null, ptr null, ptr @_ZL20_Latin1GetUnicodeSetPK10UConverterPK9USetAdder20UConverterUnicodeSetP10UErrorCode, ptr null, ptr @_ZL19ucnv_Latin1FromUTF8P25UConverterFromUnicodeArgsP23UConverterToUnicodeArgsP10UErrorCode }, align 8
@_Latin1Data_78 = dso_local constant %struct.UConverterSharedData { i32 296, i32 -1, ptr null, ptr @_ZL17_Latin1StaticData, i8 0, i8 0, ptr @_ZL11_Latin1Impl, i32 0, %struct.UConverterMBCSTable zeroinitializer }, align 8
@_ZL16_ASCIIStaticData = internal constant %struct.UConverterStaticData { i32 100, [60 x i8] c"US-ASCII\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 367, i8 0, i8 26, i8 1, i8 1, [4 x i8] c"\1A\00\00\00", i8 1, i8 0, i8 0, i8 0, i8 0, [19 x i8] zeroinitializer }, align 4
@_ZL10_ASCIIImpl = internal constant %struct.UConverterImpl { i32 26, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @_ZL26_ASCIIToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode, ptr @_ZL26_ASCIIToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode, ptr @_ZL29_Latin1FromUnicodeWithOffsetsP25UConverterFromUnicodeArgsP10UErrorCode, ptr @_ZL29_Latin1FromUnicodeWithOffsetsP25UConverterFromUnicodeArgsP10UErrorCode, ptr @_ZL18_ASCIIGetNextUCharP23UConverterToUnicodeArgsP10UErrorCode, ptr null, ptr null, ptr null, ptr null, ptr @_ZL19_ASCIIGetUnicodeSetPK10UConverterPK9USetAdder20UConverterUnicodeSetP10UErrorCode, ptr null, ptr @_ZL18ucnv_ASCIIFromUTF8P25UConverterFromUnicodeArgsP23UConverterToUnicodeArgsP10UErrorCode }, align 8
@_ASCIIData_78 = dso_local local_unnamed_addr constant %struct.UConverterSharedData { i32 296, i32 -1, ptr null, ptr @_ZL16_ASCIIStaticData, i8 0, i8 0, ptr @_ZL10_ASCIIImpl, i32 0, %struct.UConverterMBCSTable zeroinitializer }, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL27_Latin1ToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 1
  %i.k = trunc i64 %i.j to i32                    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.b to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %.not = icmp sgt i32 %i.s, %i.k
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 15, ptr %1, align 4
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
  %i.v = load i8, ptr %.082, align 1
  %i.w = zext i8 %i.v to i16
  store i16 %i.w, ptr %.079, align 2
  %i.x = getelementptr inbounds nuw i8, ptr %.082, i64 1
  %i.y = load i8, ptr %i.x, align 1
  %i.z = zext i8 %i.y to i16
  %i.aa = getelementptr inbounds nuw i8, ptr %.079, i64 2
  store i16 %i.z, ptr %i.aa, align 2
  %i.ab = getelementptr inbounds nuw i8, ptr %.082, i64 2
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = zext i8 %i.ac to i16
  %i.ae = getelementptr inbounds nuw i8, ptr %.079, i64 4
  store i16 %i.ad, ptr %i.ae, align 2
  %i.af = getelementptr inbounds nuw i8, ptr %.082, i64 3
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = zext i8 %i.ag to i16
  %i.ai = getelementptr inbounds nuw i8, ptr %.079, i64 6
  store i16 %i.ah, ptr %i.ai, align 2
  %i.aj = getelementptr inbounds nuw i8, ptr %.082, i64 4
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = zext i8 %i.ak to i16
  %i.am = getelementptr inbounds nuw i8, ptr %.079, i64 8
  store i16 %i.al, ptr %i.am, align 2
  %i.an = getelementptr inbounds nuw i8, ptr %.082, i64 5
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = zext i8 %i.ao to i16
  %i.aq = getelementptr inbounds nuw i8, ptr %.079, i64 10
  store i16 %i.ap, ptr %i.aq, align 2
  %i.ar = getelementptr inbounds nuw i8, ptr %.082, i64 6
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = zext i8 %i.as to i16
  %i.au = getelementptr inbounds nuw i8, ptr %.079, i64 12
  store i16 %i.at, ptr %i.au, align 2
  %i.av = getelementptr inbounds nuw i8, ptr %.082, i64 7
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = zext i8 %i.aw to i16
  %i.ay = getelementptr inbounds nuw i8, ptr %.079, i64 14
  store i16 %i.ax, ptr %i.ay, align 2
  %i.az = getelementptr inbounds nuw i8, ptr %.079, i64 16 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.082, i64 8 ; 4 uses
  %i.bb = add nsw i32 %.067, -1
  %i.bc = icmp samesign ugt i32 %.067, 1
  br i1 %i.bc, label %bb.e, label %bb.f, !llvm.loop !5

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
  store <4 x i32> %i.bh, ptr %.069, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %.069, i64 16
  %i.bj = add nuw nsw i32 %.068, 8                ; 2 uses
  store <4 x i32> %i.bg, ptr %i.bi, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %.069, i64 32 ; 2 uses
  %i.bl = add nsw i32 %.0, -1
  %i.bm = icmp samesign ugt i32 %.0, 1
  br i1 %i.bm, label %.preheader91, label %.loopexit, !llvm.loop !7

.loopexit:                                        ; preds = %.preheader91, %bb.c
  %.183 = phi ptr [ %i.b, %bb.c ], [ %i.ba, %.preheader91 ] ; 2 uses
  %.180 = phi ptr [ %i.d, %bb.c ], [ %i.az, %.preheader91 ] ; 2 uses
  %.174 = phi i32 [ %.073, %bb.c ], [ %i.bd, %.preheader91 ] ; 2 uses
  %.271 = phi ptr [ %i.m, %bb.c ], [ %i.bk, %.preheader91 ] ; 3 uses
  %.2 = phi i32 [ 0, %bb.c ], [ %i.bj, %.preheader91 ]
  %i.bn = icmp sgt i32 %.174, 0
  br i1 %i.bn, label %iter.check, label %._crit_edge.thread

.loopexit.thread:                                 ; preds = %bb.f
  %.not140 = icmp eq i32 %i.bd, 0
  br i1 %.not140, label %._crit_edge.thread.thread, label %iter.check

._crit_edge.thread.thread:                        ; preds = %.loopexit.thread
  store ptr %i.ba, ptr %i.a, align 8
  store ptr %i.az, ptr %i.c, align 8
  br label %bb.g

iter.check:                                       ; preds = %.loopexit.thread, %.loopexit
  %.2129 = phi i32 [ 0, %.loopexit.thread ], [ %.2, %.loopexit ] ; 4 uses
  %.271127 = phi ptr [ null, %.loopexit.thread ], [ %.271, %.loopexit ] ; 4 uses
  %.174126 = phi i32 [ %i.bd, %.loopexit.thread ], [ %.174, %.loopexit ] ; 11 uses
  %.180124 = phi ptr [ %i.az, %.loopexit.thread ], [ %.180, %.loopexit ] ; 8 uses
  %.183122 = phi ptr [ %i.ba, %.loopexit.thread ], [ %.183, %.loopexit ] ; 8 uses
  %i.bo = zext nneg i32 %.174126 to i64           ; 7 uses
  %min.iters.check = icmp samesign ult i32 %.174126, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bp = add nsw i32 %.174126, -1
  %i.bq = zext i32 %i.bp to i64
  %i.br = shl nuw nsw i64 %i.bq, 1
  %i.bs = getelementptr i8, ptr %.180124, i64 %i.br
  %scevgep = getelementptr i8, ptr %i.bs, i64 2
  %i.bt = zext nneg i32 %.174126 to i64
  %scevgep147 = getelementptr i8, ptr %.183122, i64 %i.bt
  %bound0 = icmp ult ptr %.180124, %scevgep147
  %bound1 = icmp ult ptr %.183122, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check149 = icmp samesign ult i32 %.174126, 16
  br i1 %min.iters.check149, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.bo, 12
  %n.vec = and i64 %i.bo, 2147483632              ; 6 uses
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
  %next.gep150 = getelementptr i8, ptr %.183122, i64 %index ; 2 uses
  %i.ca = getelementptr i8, ptr %next.gep150, i64 8
  %wide.load = load <8 x i8>, ptr %next.gep150, align 1, !alias.scope !8
  %wide.load151 = load <8 x i8>, ptr %i.ca, align 1, !alias.scope !8
  %i.cb = zext <8 x i8> %wide.load to <8 x i16>
  %i.cc = zext <8 x i8> %wide.load151 to <8 x i16>
  %i.cd = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %i.cb, ptr %next.gep, align 2, !alias.scope !11, !noalias !8
  store <8 x i16> %i.cc, ptr %i.cd, align 2, !alias.scope !11, !noalias !8
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bo
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !16

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec155 = and i64 %i.bo, 2147483644           ; 5 uses
  %i.cf = trunc nuw nsw i64 %n.vec155 to i32
  %i.cg = sub nsw i32 %.174126, %i.cf
  %i.ch = shl nuw nsw i64 %n.vec155, 1
  %i.ci = getelementptr i8, ptr %.180124, i64 %i.ch ; 2 uses
  %i.cj = getelementptr i8, ptr %.183122, i64 %n.vec155 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index156 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next160, %vec.epilog.vector.body ] ; 3 uses
  %i.ck = shl i64 %index156, 1
  %next.gep157.a = getelementptr i8, ptr %.180124, i64 %i.ck
  %next.gep158 = getelementptr i8, ptr %.183122, i64 %index156
  %wide.load159 = load <4 x i8>, ptr %next.gep158, align 1, !alias.scope !8
  %i.cl = zext <4 x i8> %wide.load159 to <4 x i16>
  store <4 x i16> %i.cl, ptr %next.gep157.a, align 2, !alias.scope !11, !noalias !8
  %index.next160 = add nuw i64 %index156, 4       ; 2 uses
  %i.cm = icmp eq i64 %index.next160, %n.vec155
  br i1 %i.cm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !17

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n161 = icmp eq i64 %n.vec155, %i.bo
  br i1 %cmp.n161, label %._crit_edge, label %.lr.ph.preheader

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
  %i.co = load i8, ptr %.28495, align 1
  %i.cp = zext i8 %i.co to i16
  %i.cq = getelementptr inbounds nuw i8, ptr %.28196, i64 2 ; 2 uses
  store i16 %i.cp, ptr %.28196, align 2
  %i.cr = add nsw i32 %.27897, -1
  %i.cs = icmp samesign ugt i32 %.27897, 1
  br i1 %i.cs, label %.lr.ph, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa142 = phi ptr [ %i.cj, %vec.epilog.middle.block ], [ %i.by, %middle.block ], [ %i.cn, %.lr.ph ]
  %.lcssa141 = phi ptr [ %i.ci, %vec.epilog.middle.block ], [ %i.bx, %middle.block ], [ %i.cq, %.lr.ph ]
  store ptr %.lcssa142, ptr %i.a, align 8
  store ptr %.lcssa141, ptr %i.c, align 8
  %.not90 = icmp eq ptr %.271127, null
  br i1 %.not90, label %bb.g, label %.lr.ph102.preheader

._crit_edge.thread:                               ; preds = %.loopexit
  store ptr %.183, ptr %i.a, align 8
  store ptr %.180, ptr %i.c, align 8
  %.not90116 = icmp eq ptr %.271, null
  br i1 %.not90116, label %bb.g, label %._crit_edge103

.lr.ph102.preheader:                              ; preds = %._crit_edge
  %i.ct = add i32 %.174126, %.2129
  %min.iters.check165 = icmp samesign ult i32 %.174126, 8
  br i1 %min.iters.check165, label %.lr.ph102.preheader176, label %vector.ph166

vector.ph166:                                     ; preds = %.lr.ph102.preheader
  %n.vec168 = and i64 %i.bo, 2147483640           ; 4 uses
  %i.cu = trunc nuw nsw i64 %n.vec168 to i32
  %i.cv = add i32 %.2129, %i.cu
  %i.cw = shl nuw nsw i64 %n.vec168, 2
  %i.cx = getelementptr i8, ptr %.271127, i64 %i.cw ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.2129, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body169

vector.body169:                                   ; preds = %vector.body169, %vector.ph166
  %index170 = phi i64 [ 0, %vector.ph166 ], [ %index.next172, %vector.body169 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph166 ], [ %vec.ind.next, %vector.body169 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.cy = shl i64 %index170, 2
  %next.gep171 = getelementptr i8, ptr %.271127, i64 %i.cy ; 2 uses
  %i.cz = getelementptr i8, ptr %next.gep171, i64 16
  store <4 x i32> %vec.ind, ptr %next.gep171, align 4
  store <4 x i32> %step.add, ptr %i.cz, align 4
  %index.next172 = add nuw i64 %index170, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.da = icmp eq i64 %index.next172, %n.vec168
  br i1 %i.da, label %middle.block173, label %vector.body169, !llvm.loop !19

middle.block173:                                  ; preds = %vector.body169
  %cmp.n174 = icmp eq i64 %n.vec168, %i.bo
  br i1 %cmp.n174, label %._crit_edge103, label %.lr.ph102.preheader176

.lr.ph102.preheader176:                           ; preds = %.lr.ph102.preheader, %middle.block173
  %.3101.ph = phi i32 [ %.2129, %.lr.ph102.preheader ], [ %i.cv, %middle.block173 ]
  %.372100.ph = phi ptr [ %.271127, %.lr.ph102.preheader ], [ %i.cx, %middle.block173 ]
  br label %.lr.ph102

.lr.ph102:                                        ; preds = %.lr.ph102.preheader176, %.lr.ph102
  %.3101 = phi i32 [ %i.db, %.lr.ph102 ], [ %.3101.ph, %.lr.ph102.preheader176 ] ; 2 uses
  %.372100 = phi ptr [ %i.dc, %.lr.ph102 ], [ %.372100.ph, %.lr.ph102.preheader176 ] ; 2 uses
  %i.db = add i32 %.3101, 1                       ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.372100, i64 4 ; 2 uses
  store i32 %.3101, ptr %.372100, align 4
  %exitcond.not = icmp eq i32 %i.db, %i.ct
  br i1 %exitcond.not, label %._crit_edge103, label %.lr.ph102, !llvm.loop !20

._crit_edge103:                                   ; preds = %.lr.ph102, %middle.block173, %._crit_edge.thread
  %.372.lcssa = phi ptr [ %.271, %._crit_edge.thread ], [ %i.cx, %middle.block173 ], [ %i.dc, %.lr.ph102 ]
  store ptr %.372.lcssa, ptr %i.l, align 8
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.thread.thread, %._crit_edge.thread, %._crit_edge103, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL29_Latin1FromUnicodeWithOffsetsP25UConverterFromUnicodeArgsP10UErrorCode(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = trunc i64 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = icmp eq ptr %i.r, @_Latin1Data_78
  %. = select i1 %i.s, i32 255, i32 127           ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 84 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  %i.v = icmp ne i32 %i.u, 0                      ; 3 uses
  %i.w = sext i1 %i.v to i32                      ; 6 uses
  %i.x = ptrtoint ptr %i.f to i64
  %i.y = ptrtoint ptr %i.d to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = lshr i64 %i.z, 1
  %i.ab = trunc i64 %i.aa to i32
  %.0184 = tail call i32 @llvm.smin.i32(i32 %i.ab, i32 %i.n) ; 6 uses
  %i.ac = icmp sgt i32 %.0184, 0
  %or.cond = select i1 %i.v, i1 %i.ac, i1 false
  br i1 %or.cond, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = icmp sgt i32 %.0184, 15
  br i1 %i.ad, label %bb.c, label %.loopexit227

bb.c:                                             ; preds = %bb.b
  %i.ae = lshr i32 %.0184, 4                      ; 2 uses
  %i.af = trunc nuw nsw i32 %. to i16
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.0187 = phi i32 [ %i.ae, %bb.c ], [ %i.di, %bb.e ] ; 3 uses
  %.0172 = phi ptr [ %i.h, %bb.c ], [ %i.dg, %bb.e ] ; 18 uses
  %.0171 = phi ptr [ %i.d, %bb.c ], [ %i.dh, %bb.e ] ; 18 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0171, i64 2
  %i.ah = load i16, ptr %.0171, align 2           ; 2 uses
  %i.ai = trunc i16 %i.ah to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %.0172, i64 1
  store i8 %i.ai, ptr %.0172, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %.0171, i64 4
  %i.al = load i16, ptr %i.ag, align 2            ; 2 uses
  %i.am = or i16 %i.al, %i.ah
  %i.an = trunc i16 %i.al to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %.0172, i64 2
  store i8 %i.an, ptr %i.aj, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %.0171, i64 6
  %i.aq = load i16, ptr %i.ak, align 2            ; 2 uses
  %i.ar = or i16 %i.am, %i.aq
  %i.as = trunc i16 %i.aq to i8
  %i.at = getelementptr inbounds nuw i8, ptr %.0172, i64 3
  store i8 %i.as, ptr %i.ao, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %.0171, i64 8
  %i.av = load i16, ptr %i.ap, align 2            ; 2 uses
  %i.aw = or i16 %i.ar, %i.av
  %i.ax = trunc i16 %i.av to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %.0172, i64 4
  store i8 %i.ax, ptr %i.at, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %.0171, i64 10
  %i.ba = load i16, ptr %i.au, align 2            ; 2 uses
  %i.bb = or i16 %i.aw, %i.ba
  %i.bc = trunc i16 %i.ba to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %.0172, i64 5
  store i8 %i.bc, ptr %i.ay, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %.0171, i64 12
  %i.bf = load i16, ptr %i.az, align 2            ; 2 uses
  %i.bg = or i16 %i.bb, %i.bf
  %i.bh = trunc i16 %i.bf to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %.0172, i64 6
  store i8 %i.bh, ptr %i.bd, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %.0171, i64 14
  %i.bk = load i16, ptr %i.be, align 2            ; 2 uses
  %i.bl = or i16 %i.bg, %i.bk
  %i.bm = trunc i16 %i.bk to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %.0172, i64 7
  store i8 %i.bm, ptr %i.bi, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %.0171, i64 16
  %i.bp = load i16, ptr %i.bj, align 2            ; 2 uses
  %i.bq = or i16 %i.bl, %i.bp
  %i.br = trunc i16 %i.bp to i8
  %i.bs = getelementptr inbounds nuw i8, ptr %.0172, i64 8
  store i8 %i.br, ptr %i.bn, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %.0171, i64 18
  %i.bu = load i16, ptr %i.bo, align 2            ; 2 uses
  %i.bv = or i16 %i.bq, %i.bu
  %i.bw = trunc i16 %i.bu to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %.0172, i64 9
  store i8 %i.bw, ptr %i.bs, align 1
  %i.by = getelementptr inbounds nuw i8, ptr %.0171, i64 20
  %i.bz = load i16, ptr %i.bt, align 2            ; 2 uses
  %i.ca = or i16 %i.bv, %i.bz
  %i.cb = trunc i16 %i.bz to i8
  %i.cc = getelementptr inbounds nuw i8, ptr %.0172, i64 10
  store i8 %i.cb, ptr %i.bx, align 1
  %i.cd = getelementptr inbounds nuw i8, ptr %.0171, i64 22
  %i.ce = load i16, ptr %i.by, align 2            ; 2 uses
  %i.cf = or i16 %i.ca, %i.ce
  %i.cg = trunc i16 %i.ce to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %.0172, i64 11
  store i8 %i.cg, ptr %i.cc, align 1
  %i.ci = getelementptr inbounds nuw i8, ptr %.0171, i64 24
  %i.cj = load i16, ptr %i.cd, align 2            ; 2 uses
  %i.ck = or i16 %i.cf, %i.cj
  %i.cl = trunc i16 %i.cj to i8
  %i.cm = getelementptr inbounds nuw i8, ptr %.0172, i64 12
  store i8 %i.cl, ptr %i.ch, align 1
  %i.cn = getelementptr inbounds nuw i8, ptr %.0171, i64 26
  %i.co = load i16, ptr %i.ci, align 2            ; 2 uses
  %i.cp = or i16 %i.ck, %i.co
  %i.cq = trunc i16 %i.co to i8
  %i.cr = getelementptr inbounds nuw i8, ptr %.0172, i64 13
  store i8 %i.cq, ptr %i.cm, align 1
  %i.cs = getelementptr inbounds nuw i8, ptr %.0171, i64 28
  %i.ct = load i16, ptr %i.cn, align 2            ; 2 uses
  %i.cu = or i16 %i.cp, %i.ct
  %i.cv = trunc i16 %i.ct to i8
  %i.cw = getelementptr inbounds nuw i8, ptr %.0172, i64 14
  store i8 %i.cv, ptr %i.cr, align 1
  %i.cx = getelementptr inbounds nuw i8, ptr %.0171, i64 30
  %i.cy = load i16, ptr %i.cs, align 2            ; 2 uses
  %i.cz = or i16 %i.cu, %i.cy
  %i.da = trunc i16 %i.cy to i8
  %i.db = getelementptr inbounds nuw i8, ptr %.0172, i64 15
  store i8 %i.da, ptr %i.cw, align 1
  %i.dc = load i16, ptr %i.cx, align 2            ; 2 uses
  %i.dd = or i16 %i.cz, %i.dc
  %i.de = trunc i16 %i.dc to i8
  store i8 %i.de, ptr %i.db, align 1
  %i.df = icmp ugt i16 %i.dd, %i.af
  br i1 %i.df, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dg = getelementptr inbounds nuw i8, ptr %.0172, i64 16 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.0171, i64 32 ; 2 uses
  %i.di = add nsw i32 %.0187, -1
  %i.dj = icmp sgt i32 %.0187, 1
  br i1 %i.dj, label %bb.d, label %bb.f, !llvm.loop !21

bb.f:                                             ; preds = %bb.d, %bb.e
  %.1188 = phi i32 [ 0, %bb.e ], [ %.0187, %bb.d ] ; 3 uses
  %.1173 = phi ptr [ %i.dg, %bb.e ], [ %.0172, %bb.d ] ; 4 uses
  %.1 = phi ptr [ %i.dh, %bb.e ], [ %.0171, %bb.d ] ; 4 uses
  %i.dk = sub nsw i32 %i.ae, %.1188               ; 4 uses
  %i.dl = shl nsw i32 %i.dk, 4                    ; 2 uses
  %i.dm = sub nsw i32 %.0184, %i.dl               ; 4 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %.loopexit227, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dn = sext i32 %i.dl to i64
  %i.do = getelementptr inbounds i8, ptr %i.h, i64 %i.dn ; 3 uses
  %i.dp = icmp sgt i32 %i.dk, 0
  br i1 %i.dp, label %.lr.ph.preheader, label %.loopexit227

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.dq = lshr i32 %.0184, 4                      ; 2 uses
  %i.dr = sub i32 %i.dq, %.1188
  %.neg = add i32 %.1188, 1
  %xtraiter = and i32 %i.dr, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
end_hunk_0
