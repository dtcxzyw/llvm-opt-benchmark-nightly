Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/simpleformatter?download=true
inline.NumInlined: 61
inline.NumDeleted: 24
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.icu_78::UnicodeString" = type { %"class.icu_78::Replaceable", %"union.icu_78::UnicodeString::StackBufferOrFields" }
%"class.icu_78::Replaceable" = type { %"class.icu_78::UObject" }
%"class.icu_78::UObject" = type { ptr }
%"union.icu_78::UnicodeString::StackBufferOrFields" = type { %struct.anon.0, [32 x i8] }
%struct.anon.0 = type { i16, i32, i32, ptr }

@_ZTVN6icu_7813UnicodeStringE = external constant { [13 x ptr] }, align 8

@_ZN6icu_7815SimpleFormatterD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6icu_7815SimpleFormatterD2Ev

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(72) ptr @_ZN6icu_7815SimpleFormatteraSERKS0_(ptr noundef nonnull returned align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.b) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7815SimpleFormatterD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.a) #8
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 2) i8 @_ZN6icu_7815SimpleFormatter27applyPatternMinMaxArgumentsERKNS_13UnicodeStringEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  %i.d = alloca i16, align 2                      ; 4 uses
  %i.e = load i32, ptr %4, align 4, !tbaa !10
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %bb.ag

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i16, ptr %i.g, align 8, !tbaa !11   ; 4 uses
  %i.i = and i16 %i.h, 17
  %.not.i = icmp eq i16 %i.i, 0
  br i1 %.not.i, label %bb.c, label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

bb.c:                                             ; preds = %bb.b
  %i.j = and i16 %i.h, 2
  %.not2.i = icmp eq i16 %i.j, 0
  br i1 %.not2.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 10
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !11
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

_ZNK6icu_7813UnicodeString9getBufferEv.exit:      ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi ptr [ %i.m, %bb.e ], [ %i.k, %bb.d ], [ null, %bb.b ] ; 6 uses
  %i.n = icmp slt i16 %i.h, 0
  %i.o = ashr i16 %i.h, 5
  %i.p = sext i16 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.r = load i32, ptr %i.q, align 4
  %i.s = select i1 %i.n, i32 %i.r, i32 %i.p       ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i16 0, ptr %i.d, align 2, !tbaa !13
  tail call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.v = load i16, ptr %i.u, align 8, !tbaa !11   ; 2 uses
  %i.w = icmp slt i16 %i.v, 0
  %i.x = ashr i16 %i.v, 5
  %i.y = sext i16 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = select i1 %i.w, i32 %i.aa, i32 %i.y
  %i.ac = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.t, i32 noundef 0, i32 noundef %i.ab, ptr noundef nonnull %i.d, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not125151 = icmp sgt i32 %i.s, 0
  br i1 %.not125151, label %.lr.ph.preheader, label %.thread137.thread

.lr.ph.preheader:                                 ; preds = %_ZNK6icu_7813UnicodeString9getBufferEv.exit
  %wide.trip.count = zext nneg i32 %i.s to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ac
  %.089155 = phi i32 [ %.6, %bb.ac ], [ 0, %.lr.ph.preheader ] ; 6 uses
  %.093154 = phi i8 [ %.295, %bb.ac ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %.096153 = phi i32 [ %.399, %bb.ac ], [ -1, %.lr.ph.preheader ] ; 3 uses
  %.0101152 = phi i32 [ %.2103, %bb.ac ], [ 0, %.lr.ph.preheader ] ; 7 uses
  %i.ad = add nsw i32 %.089155, 1                 ; 8 uses
  %i.ae = sext i32 %.089155 to i64
  %i.af = getelementptr inbounds [2 x i8], ptr %.0.i, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !13 ; 3 uses
  %i.ah = icmp eq i16 %i.ag, 39
  br i1 %i.ah, label %bb.f, label %bb.l

bb.f:                                             ; preds = %.lr.ph
  %i.ai = icmp slt i32 %i.ad, %i.s
  br i1 %i.ai, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.aj = sext i32 %i.ad to i64
  %i.ak = getelementptr inbounds [2 x i8], ptr %.0.i, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !13 ; 2 uses
  %i.am = icmp eq i16 %i.al, 39
  br i1 %i.am, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.an = add nsw i32 %.089155, 2
  br label %bb.z

bb.i:                                             ; preds = %bb.g, %bb.f
  %.083 = phi i16 [ %i.al, %bb.g ], [ 39, %bb.f ] ; 2 uses
  %.not124 = icmp eq i8 %.093154, 0
  br i1 %.not124, label %bb.j, label %bb.ac, !llvm.loop !20

bb.j:                                             ; preds = %bb.i
  switch i16 %.083, label %bb.z [
    i16 125, label %bb.k
    i16 123, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.ao = add nsw i32 %.089155, 2
  br label %bb.z

bb.l:                                             ; preds = %.lr.ph
  %i.ap = icmp eq i8 %.093154, 0
  %i.aq = icmp eq i16 %i.ag, 123
  %or.cond5 = and i1 %i.ap, %i.aq
  br i1 %or.cond5, label %bb.m, label %bb.z

bb.m:                                             ; preds = %bb.l
  %i.ar = icmp sgt i32 %.0101152, 0
  br i1 %i.ar, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.as = load i16, ptr %i.u, align 8, !tbaa !11  ; 2 uses
  %i.at = icmp slt i16 %i.as, 0
  %i.au = ashr i16 %i.as, 5
  %i.av = sext i16 %i.au to i32
  %i.aw = load i32, ptr %i.z, align 4
  %i.ax = select i1 %i.at, i32 %i.aw, i32 %i.av
  %i.ay = xor i32 %.0101152, -1
  %i.az = add i32 %i.ax, %i.ay
  %i.ba = trunc i32 %.0101152 to i16
  %i.bb = add i16 %i.ba, 256
  %i.bc = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9setCharAtEiDs(ptr noundef nonnull align 8 dereferenceable(64) %i.t, i32 noundef %i.az, i16 noundef zeroext %i.bb) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1102 = phi i32 [ 0, %bb.n ], [ %.0101152, %bb.m ]
  %i.bd = add nsw i32 %.089155, 2                 ; 4 uses
  %i.be = icmp slt i32 %i.bd, %i.s
  br i1 %i.be, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.bf = sext i32 %i.ad to i64
  %i.bg = getelementptr inbounds [2 x i8], ptr %.0.i, i64 %i.bf
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !13 ; 2 uses
  %i.bi = zext i16 %i.bh to i32
  %i.bj = add nsw i32 %i.bi, -48
  %i.bk = add i16 %i.bh, -48
  %or.cond7 = icmp ult i16 %i.bk, 10
  br i1 %or.cond7, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bl = sext i32 %i.bd to i64
  %i.bm = getelementptr inbounds [2 x i8], ptr %.0.i, i64 %i.bl
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !13
  %i.bo = icmp eq i16 %i.bn, 125
  br i1 %i.bo, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bp = add nsw i32 %.089155, 3
  br label %bb.y

bb.s:                                             ; preds = %bb.q, %bb.p, %bb.o
  %i.bq = icmp slt i32 %i.ad, %i.s
  br i1 %i.bq, label %bb.t, label %.critedge.thread.thread

bb.t:                                             ; preds = %bb.s
  %i.br = sext i32 %i.ad to i64
  %i.bs = getelementptr inbounds [2 x i8], ptr %.0.i, i64 %i.br
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !13 ; 2 uses
  %i.bu = add i16 %i.bt, -49
  %or.cond10 = icmp ult i16 %i.bu, 9
  br i1 %or.cond10, label %bb.u, label %.critedge.thread.thread

bb.u:                                             ; preds = %bb.t
  %exitcond.not175 = icmp eq i32 %i.bd, %i.s
  br i1 %exitcond.not175, label %.critedge.thread, label %.lr.ph178

.lr.ph178:                                        ; preds = %bb.u
  %i.bv = sext i32 %i.bd to i64
  %i.bw = zext nneg i16 %i.bt to i32
  %i.bx = add nsw i32 %i.bw, -48
  br label %bb.w

bb.v:                                             ; preds = %bb.x
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge.thread, label %bb.w, !llvm.loop !21

bb.w:                                             ; preds = %.lr.ph178, %bb.v
  %.0177 = phi i32 [ %i.bx, %.lr.ph178 ], [ %i.ce, %bb.v ] ; 2 uses
  %indvars.iv176 = phi i64 [ %i.bv, %.lr.ph178 ], [ %indvars.iv.next, %bb.v ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv176, 1 ; 3 uses
  %i.by = getelementptr inbounds [2 x i8], ptr %.0.i, i64 %indvars.iv176
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !13 ; 3 uses
  %i.ca = add i16 %i.bz, -48
  %or.cond16 = icmp ult i16 %i.ca, 10
  br i1 %or.cond16, label %bb.x, label %.critedge

bb.x:                                             ; preds = %bb.w
  %i.cb = zext nneg i16 %i.bz to i32
  %i.cc = mul nuw nsw i32 %.0177, 10
  %i.cd = add nsw i32 %i.cc, -48
end_hunk_0
begin_hunk_1_@_ZN6icu_7815SimpleFormatter27applyPatternMinMaxArgumentsERKNS_13UnicodeStringEiiR10UErrorCode:bb.a
  %i.cf = icmp samesign ugt i32 %i.ce, 255
  br i1 %i.cf, label %..critedge.thread.loopexit_crit_edge179, label %bb.v, !llvm.loop !21

.critedge:                                        ; preds = %bb.w
  %i.cg = trunc nsw i64 %indvars.iv.next to i32
  %.not = icmp eq i16 %i.bz, 125
  br i1 %.not, label %bb.y, label %.critedge.thread

bb.y:                                             ; preds = %.critedge, %bb.r
  %.392 = phi i32 [ %i.bp, %bb.r ], [ %i.cg, %.critedge ]
  %.2 = phi i32 [ %i.bj, %bb.r ], [ %.0177, %.critedge ] ; 2 uses
  %spec.select = call i32 @llvm.smax.i32(i32 %.2, i32 %.096153)
  %i.ch = trunc nuw nsw i32 %.2 to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i16 %i.ch, ptr %i.c, align 2, !tbaa !13
  %i.ci = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.t, ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ac, !llvm.loop !20

bb.z:                                             ; preds = %bb.j, %bb.l, %bb.h, %bb.k
  %.194 = phi i8 [ %.093154, %bb.h ], [ 1, %bb.k ], [ %.093154, %bb.l ], [ 0, %bb.j ]
  %.5 = phi i32 [ %i.an, %bb.h ], [ %i.ao, %bb.k ], [ %i.ad, %bb.l ], [ %i.ad, %bb.j ]
  %.3 = phi i16 [ 39, %bb.h ], [ %.083, %bb.k ], [ %i.ag, %bb.l ], [ 39, %bb.j ]
  %i.cj = icmp eq i32 %.0101152, 0
  br i1 %i.cj, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 -1, ptr %i.b, align 2, !tbaa !13
  %i.ck = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.t, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %.3, ptr %i.a, align 2, !tbaa !13
  %i.cl = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.t, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cm = add nsw i32 %.0101152, 1                ; 2 uses
  %i.cn = icmp eq i32 %i.cm, 65279
  %spec.store.select = select i1 %i.cn, i32 0, i32 %i.cm
  br label %bb.ac

bb.ac:                                            ; preds = %bb.y, %bb.i, %bb.ab
  %.2103 = phi i32 [ %spec.store.select, %bb.ab ], [ %.0101152, %bb.i ], [ %.1102, %bb.y ] ; 4 uses
  %.399 = phi i32 [ %.096153, %bb.ab ], [ %.096153, %bb.i ], [ %spec.select, %bb.y ] ; 3 uses
  %.295 = phi i8 [ %.194, %bb.ab ], [ 0, %bb.i ], [ 0, %bb.y ]
  %.6 = phi i32 [ %.5, %bb.ab ], [ %i.ad, %bb.i ], [ %.392, %bb.y ] ; 2 uses
  %.not125 = icmp slt i32 %.6, %i.s
  br i1 %.not125, label %.lr.ph, label %.thread137

.critedge.thread.thread:                          ; preds = %bb.s, %bb.t
  store i32 1, ptr %4, align 4, !tbaa !10
  br label %bb.ag

..critedge.thread.loopexit_crit_edge179:          ; preds = %bb.x
  br label %.critedge.thread, !llvm.loop !21

.critedge.thread:                                 ; preds = %.critedge, %bb.u, %bb.v, %..critedge.thread.loopexit_crit_edge179
  store i32 1, ptr %4, align 4, !tbaa !10
  br label %bb.ag

.thread137:                                       ; preds = %bb.ac
  %i.co = icmp sgt i32 %.2103, 0
  br i1 %i.co, label %bb.ad, label %.thread137.thread

bb.ad:                                            ; preds = %.thread137
  %i.cp = load i16, ptr %i.u, align 8, !tbaa !11  ; 2 uses
  %i.cq = icmp slt i16 %i.cp, 0
  %i.cr = ashr i16 %i.cp, 5
  %i.cs = sext i16 %i.cr to i32
  %i.ct = load i32, ptr %i.z, align 4
  %i.cu = select i1 %i.cq, i32 %i.ct, i32 %i.cs
  %i.cv = xor i32 %.2103, -1
  %i.cw = add i32 %i.cu, %i.cv
  %i.cx = trunc i32 %.2103 to i16
  %i.cy = add i16 %i.cx, 256
  %i.cz = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9setCharAtEiDs(ptr noundef nonnull align 8 dereferenceable(64) %i.t, i32 noundef %i.cw, i16 noundef zeroext %i.cy) ; 0 uses
  br label %.thread137.thread

.thread137.thread:                                ; preds = %_ZNK6icu_7813UnicodeString9getBufferEv.exit, %bb.ad, %.thread137
  %.096.lcssa170 = phi i32 [ %.399, %.thread137 ], [ %.399, %bb.ad ], [ -1, %_ZNK6icu_7813UnicodeString9getBufferEv.exit ] ; 2 uses
  %i.da = add nsw i32 %.096.lcssa170, 1           ; 2 uses
  %i.db = icmp sge i32 %i.da, %2
  %.not126 = icmp sgt i32 %3, %.096.lcssa170
  %or.cond = and i1 %.not126, %i.db
  br i1 %or.cond, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.thread137.thread
  store i32 1, ptr %4, align 4, !tbaa !10
  br label %bb.ag

bb.af:                                            ; preds = %.thread137.thread
  %i.dc = trunc nuw nsw i32 %i.da to i16
  %i.dd = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9setCharAtEiDs(ptr noundef nonnull align 8 dereferenceable(64) %i.t, i32 noundef 0, i16 noundef zeroext %i.dc) ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %.critedge.thread, %.critedge.thread.thread, %bb.af, %bb.ae, %bb.a
  %.6111 = phi i8 [ 0, %bb.a ], [ 0, %.critedge.thread ], [ 0, %bb.ae ], [ 1, %bb.af ], [ 0, %.critedge.thread.thread ]
  ret i8 %.6111
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9setCharAtEiDs(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7815SimpleFormatter6formatERKNS_13UnicodeStringERS1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull returned align 8 dereferenceable(64) %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !10
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i16, ptr %i.c, align 8, !tbaa !11   ; 5 uses
  %i.e = and i16 %i.d, 17
  %.not.i.i.i = icmp eq i16 %i.e, 0               ; 2 uses
  br i1 %.not.i.i.i, label %bb.c, label %_ZNK6icu_7813UnicodeString9getBufferEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.f = and i16 %i.d, 2
  %.not2.i.i.i = icmp eq i16 %i.f, 0
  br i1 %.not2.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 18
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !11
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit.i.i

_ZNK6icu_7813UnicodeString9getBufferEv.exit.i.i:  ; preds = %bb.e, %bb.d, %bb.b
  %.0.i.i.i = phi ptr [ %i.i, %bb.e ], [ %i.g, %bb.d ], [ null, %bb.b ]
  %i.j = icmp slt i16 %i.d, 0
  %i.k = ashr i16 %i.d, 5
  %i.l = sext i16 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.n = load i32, ptr %i.m, align 4
  %i.o = select i1 %i.j, i32 %i.n, i32 %i.l       ; 4 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %.critedge.i, label %_ZNK6icu_7815SimpleFormatter16getArgumentLimitEv.exit.i

_ZNK6icu_7815SimpleFormatter16getArgumentLimitEv.exit.i: ; preds = %_ZNK6icu_7813UnicodeString9getBufferEv.exit.i.i
  %i.q = load i16, ptr %.0.i.i.i, align 2, !tbaa !13
  %i.r = icmp ugt i16 %i.q, 1
  br i1 %i.r, label %_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode.exit.sink.split, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNK6icu_7815SimpleFormatter16getArgumentLimitEv.exit.i, %_ZNK6icu_7813UnicodeString9getBufferEv.exit.i.i
  br i1 %.not.i.i.i, label %bb.f, label %.preheader78.i

bb.f:                                             ; preds = %.critedge.i
  %i.s = and i16 %i.d, 2
  %.not2.i.i = icmp eq i16 %i.s, 0
  br i1 %.not2.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 18
  br label %.preheader78.i

bb.h:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !11
  br label %.preheader78.i

.preheader78.i:                                   ; preds = %.critedge.i, %bb.g, %bb.h
  %.0.i.i = phi ptr [ %i.v, %bb.h ], [ %i.t, %bb.g ], [ null, %.critedge.i ] ; 4 uses
  %i.w = icmp sgt i32 %i.o, 1
  br i1 %i.w, label %.lr.ph81.split.i.preheader, label %_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode.exit

.lr.ph81.split.i.preheader:                       ; preds = %.preheader78.i
  %i.x = icmp eq ptr %1, %2
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 12
  br i1 %i.x, label %.lr.ph81.split.i.us, label %.lr.ph81.split.i

.lr.ph81.split.i.us:                              ; preds = %.lr.ph81.split.i.preheader, %_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit.i.us
  %.05980.i.us = phi i32 [ %i.ak, %_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit.i.us ], [ 1, %.lr.ph81.split.i.preheader ] ; 2 uses
  %i.aa = add nsw i32 %.05980.i.us, 1             ; 2 uses
  %i.ab = sext i32 %.05980.i.us to i64
  %i.ac = getelementptr inbounds [2 x i8], ptr %.0.i.i, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !13 ; 2 uses
  %i.ae = icmp ult i16 %i.ad, 256
  br i1 %i.ae, label %_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode.exit.sink.split, label %bb.i

bb.i:                                             ; preds = %.lr.ph81.split.i.us
  %i.af = zext i16 %i.ad to i32
  %i.ag = add nsw i32 %i.af, -256                 ; 2 uses
  %i.ah = sext i32 %i.aa to i64
  %i.ai = getelementptr inbounds [2 x i8], ptr %.0.i.i, i64 %i.ah ; 3 uses
  %i.aj = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef %i.ai, i32 noundef 0, i32 noundef %i.ag)
          to label %_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit.i.us unwind label %.split.i.split.us ; 0 uses

_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit.i.us: ; preds = %bb.i
  tail call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.ai) #8, !srcloc !15
  %i.ak = add nsw i32 %i.ag, %i.aa                ; 2 uses
  %i.al = icmp slt i32 %i.ak, %i.o
  br i1 %i.al, label %.lr.ph81.split.i.us, label %_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode.exit, !llvm.loop !0

.split.i.split.us:                                ; preds = %bb.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.split.i

.lr.ph81.split.i:                                 ; preds = %.lr.ph81.split.i.preheader, %bb.l
  %.05980.i = phi i32 [ %.261.i, %bb.l ], [ 1, %.lr.ph81.split.i.preheader ] ; 2 uses
  %i.an = add nsw i32 %.05980.i, 1                ; 3 uses
  %i.ao = sext i32 %.05980.i to i64
  %i.ap = getelementptr inbounds [2 x i8], ptr %.0.i.i, i64 %i.ao
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !13 ; 2 uses
  %i.ar = icmp ult i16 %i.aq, 256
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph81.split.i
  %i.as = load i16, ptr %i.y, align 8, !tbaa !11  ; 2 uses
  %i.at = icmp slt i16 %i.as, 0
  %i.au = ashr i16 %i.as, 5
  %i.av = sext i16 %i.au to i32
  %i.aw = load i32, ptr %i.z, align 4
  %i.ax = select i1 %i.at, i32 %i.aw, i32 %i.av
  %i.ay = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 0, i32 noundef %i.ax) ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph81.split.i
  %i.az = zext i16 %i.aq to i32
  %i.ba = add nsw i32 %i.az, -256                 ; 2 uses
  %i.bb = sext i32 %i.an to i64
  %i.bc = getelementptr inbounds [2 x i8], ptr %.0.i.i, i64 %i.bb ; 3 uses
  %i.bd = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef %i.bc, i32 noundef 0, i32 noundef %i.ba)
          to label %_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit.i unwind label %.split.i.split ; 0 uses

_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit.i: ; preds = %bb.k
  tail call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.bc) #8, !srcloc !15
  %i.be = add nsw i32 %i.ba, %i.an
  br label %bb.l

.split.i.split:                                   ; preds = %bb.k
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %.split.i

.split.i:                                         ; preds = %.split.i.split.us, %.split.i.split
  %.us-phi = phi ptr [ %i.bc, %.split.i.split ], [ %i.ai, %.split.i.split.us ]
  %.us-phi4 = phi { ptr, i32 } [ %i.bf, %.split.i.split ], [ %i.am, %.split.i.split.us ]
  tail call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %.us-phi) #8, !srcloc !15
  resume { ptr, i32 } %.us-phi4

bb.l:                                             ; preds = %_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit.i, %bb.j
  %.261.i = phi i32 [ %i.be, %_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit.i ], [ %i.an, %bb.j ] ; 2 uses
  %i.bg = icmp slt i32 %.261.i, %i.o
  br i1 %i.bg, label %.lr.ph81.split.i, label %_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode.exit, !llvm.loop !0

_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode.exit.sink.split: ; preds = %.lr.ph81.split.i.us, %_ZNK6icu_7815SimpleFormatter16getArgumentLimitEv.exit.i
  store i32 1, ptr %3, align 4, !tbaa !10
  br label %_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode.exit

_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode.exit: ; preds = %bb.l, %_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit.i.us, %_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode.exit.sink.split, %.preheader78.i, %bb.a
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr noundef nonnull returned align 8 dereferenceable(64) %3, ptr nofree noundef writeonly captures(address_is_null) %4, i32 noundef %5, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %6, align 4, !tbaa !10
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.c = icmp sgt i32 %2, -1
  %i.d = icmp ne ptr %1, null
  %i.e = icmp eq i32 %2, 0
  %.not20 = or i1 %i.d, %i.e
  %narrow.i.not = and i1 %i.c, %.not20
  br i1 %narrow.i.not, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.f = icmp sgt i32 %5, -1
  %i.g = icmp ne ptr %4, null
  %i.h = icmp eq i32 %5, 0
  %.not23 = or i1 %i.g, %i.h
  %narrow.i17.not = and i1 %i.f, %.not23
  br i1 %narrow.i17.not, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i16, ptr %i.i, align 8, !tbaa !11   ; 5 uses
  %i.k = and i16 %i.j, 17
  %.not.i.i = icmp eq i16 %i.k, 0                 ; 2 uses
  br i1 %.not.i.i, label %bb.e, label %_ZNK6icu_7813UnicodeString9getBufferEv.exit.i

bb.e:                                             ; preds = %bb.d
  %i.l = and i16 %i.j, 2
  %.not2.i.i = icmp eq i16 %i.l, 0
  br i1 %.not2.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 18
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit.i

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !11
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit.i

_ZNK6icu_7813UnicodeString9getBufferEv.exit.i:    ; preds = %bb.g, %bb.f, %bb.d
  %.0.i.i = phi ptr [ %i.o, %bb.g ], [ %i.m, %bb.f ], [ null, %bb.d ]
  %i.p = icmp slt i16 %i.j, 0
  %i.q = ashr i16 %i.j, 5
  %i.r = sext i16 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.t = load i32, ptr %i.s, align 4
  %i.u = select i1 %i.p, i32 %i.t, i32 %i.r       ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.critedge, label %_ZNK6icu_7815SimpleFormatter16getArgumentLimitEv.exit

_ZNK6icu_7815SimpleFormatter16getArgumentLimitEv.exit: ; preds = %_ZNK6icu_7813UnicodeString9getBufferEv.exit.i
  %i.w = load i16, ptr %.0.i.i, align 2, !tbaa !13
  %i.x = zext i16 %i.w to i32
  %i.y = icmp samesign ult i32 %2, %i.x
  br i1 %i.y, label %bb.h, label %.critedge

bb.h:                                             ; preds = %_ZNK6icu_7815SimpleFormatter16getArgumentLimitEv.exit, %bb.c, %bb.b
  store i32 1, ptr %6, align 4, !tbaa !10
  br label %bb.l

.critedge:                                        ; preds = %_ZNK6icu_7813UnicodeString9getBufferEv.exit.i, %_ZNK6icu_7815SimpleFormatter16getArgumentLimitEv.exit
  br i1 %.not.i.i, label %bb.i, label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

bb.i:                                             ; preds = %.critedge
  %i.z = and i16 %i.j, 2
  %.not2.i = icmp eq i16 %i.z, 0
  br i1 %.not2.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 18
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

bb.k:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !11
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

_ZNK6icu_7813UnicodeString9getBufferEv.exit:      ; preds = %.critedge, %bb.j, %bb.k
  %.0.i = phi ptr [ %i.ac, %bb.k ], [ %i.aa, %bb.j ], [ null, %.critedge ]
  %i.ad = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7815SimpleFormatter6formatEPKDsiPKPKNS_13UnicodeStringERS3_S5_aPiiR10UErrorCode(ptr noundef %.0.i, i32 noundef %i.u, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef null, i8 noundef signext 1, ptr noundef %4, i32 noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %6) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %_ZNK6icu_7813UnicodeString9getBufferEv.exit, %bb.h
  ret ptr %3
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7815SimpleFormatter6formatERKNS_13UnicodeStringES3_RS1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull returned align 8 dereferenceable(64) %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %4, align 4, !tbaa !10
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i16, ptr %i.c, align 8, !tbaa !11   ; 5 uses
  %i.e = and i16 %i.d, 17
  %.not.i.i.i = icmp eq i16 %i.e, 0               ; 2 uses
  br i1 %.not.i.i.i, label %bb.c, label %_ZNK6icu_7813UnicodeString9getBufferEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.f = and i16 %i.d, 2
  %.not2.i.i.i = icmp eq i16 %i.f, 0
  br i1 %.not2.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 18
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !11
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit.i.i

_ZNK6icu_7813UnicodeString9getBufferEv.exit.i.i:  ; preds = %bb.e, %bb.d, %bb.b
  %.0.i.i.i = phi ptr [ %i.i, %bb.e ], [ %i.g, %bb.d ], [ null, %bb.b ]
  %i.j = icmp slt i16 %i.d, 0
  %i.k = ashr i16 %i.d, 5
  %i.l = sext i16 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.n = load i32, ptr %i.m, align 4
  %i.o = select i1 %i.j, i32 %i.n, i32 %i.l       ; 3 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %.critedge.i, label %_ZNK6icu_7815SimpleFormatter16getArgumentLimitEv.exit.i

_ZNK6icu_7815SimpleFormatter16getArgumentLimitEv.exit.i: ; preds = %_ZNK6icu_7813UnicodeString9getBufferEv.exit.i.i
  %i.q = load i16, ptr %.0.i.i.i, align 2, !tbaa !13
  %i.r = icmp ugt i16 %i.q, 2
  br i1 %i.r, label %_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode.exit.sink.split, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNK6icu_7815SimpleFormatter16getArgumentLimitEv.exit.i, %_ZNK6icu_7813UnicodeString9getBufferEv.exit.i.i
  br i1 %.not.i.i.i, label %bb.f, label %.preheader78.i

bb.f:                                             ; preds = %.critedge.i
  %i.s = and i16 %i.d, 2
  %.not2.i.i = icmp eq i16 %i.s, 0
  br i1 %.not2.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 18
  br label %.preheader78.i

bb.h:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !11
  br label %.preheader78.i

.preheader78.i:                                   ; preds = %.critedge.i, %bb.g, %bb.h
  %.0.i.i = phi ptr [ %i.v, %bb.h ], [ %i.t, %bb.g ], [ null, %.critedge.i ] ; 2 uses
  %i.w = icmp sgt i32 %i.o, 1
  br i1 %i.w, label %.lr.ph81.split.i, label %_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode.exit

.lr.ph81.split.i:                                 ; preds = %.preheader78.i, %bb.l
  %.05980.i = phi i32 [ %.261.i, %bb.l ], [ 1, %.preheader78.i ] ; 2 uses
  %i.x = add nsw i32 %.05980.i, 1                 ; 3 uses
  %i.y = sext i32 %.05980.i to i64
  %i.z = getelementptr inbounds [2 x i8], ptr %.0.i.i, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !13  ; 4 uses
  %i.ab = icmp ult i16 %i.aa, 256
  br i1 %i.ab, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.lr.ph81.split.i
  %.sroa.idx.not = icmp eq i16 %i.aa, 0
  %5 = icmp samesign ult i16 %i.aa, 2
  tail call void @llvm.assume(i1 %5)
  %.sroa.speculated = select i1 %.sroa.idx.not, ptr %1, ptr %2 ; 4 uses
  %i.ac = icmp eq ptr %.sroa.speculated, %3
  br i1 %i.ac, label %_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode.exit.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.speculated, i64 8
  %i.ae = load i16, ptr %i.ad, align 8, !tbaa !11 ; 2 uses
  %i.af = icmp slt i16 %i.ae, 0
  %i.ag = ashr i16 %i.ae, 5
  %i.ah = sext i16 %i.ag to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.speculated, i64 12
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = select i1 %i.af, i32 %i.aj, i32 %i.ah
  %i.al = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.speculated, i32 noundef 0, i32 noundef %i.ak) ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph81.split.i
  %i.am = zext i16 %i.aa to i32
  %i.an = add nsw i32 %i.am, -256                 ; 2 uses
  %i.ao = sext i32 %i.x to i64
  %i.ap = getelementptr inbounds [2 x i8], ptr %.0.i.i, i64 %i.ao ; 3 uses
  %i.aq = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %i.ap, i32 noundef 0, i32 noundef %i.an)
          to label %_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit.i unwind label %.split.i ; 0 uses

_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit.i: ; preds = %bb.k
  tail call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.ap) #8, !srcloc !15
  %i.ar = add nsw i32 %i.an, %i.x
  br label %bb.l

.split.i:                                         ; preds = %bb.k
  %i.as = landingpad { ptr, i32 }
          cleanup
  tail call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.ap) #8, !srcloc !15
  resume { ptr, i32 } %i.as

bb.l:                                             ; preds = %_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit.i, %bb.j
  %.261.i = phi i32 [ %i.ar, %_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit.i ], [ %i.x, %bb.j ] ; 2 uses
  %i.at = icmp slt i32 %.261.i, %i.o
  br i1 %i.at, label %.lr.ph81.split.i, label %_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode.exit, !llvm.loop !0

_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode.exit.sink.split: ; preds = %bb.i, %_ZNK6icu_7815SimpleFormatter16getArgumentLimitEv.exit.i
  store i32 1, ptr %4, align 4, !tbaa !10
  br label %_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode.exit

_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode.exit: ; preds = %bb.l, %_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode.exit.sink.split, %.preheader78.i, %bb.a
  ret ptr %3
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7815SimpleFormatter6formatERKNS_13UnicodeStringES3_S3_RS1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull returned align 8 dereferenceable(64) %4, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store ptr %1, ptr %i.a, align 16, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.b, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %3, ptr %i.c, align 16, !tbaa !18
  %i.d = load i32, ptr %5, align 4, !tbaa !10
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i16, ptr %i.f, align 8, !tbaa !11   ; 5 uses
  %i.h = and i16 %i.g, 17
  %.not.i.i.i = icmp eq i16 %i.h, 0               ; 2 uses
  br i1 %.not.i.i.i, label %bb.c, label %_ZNK6icu_7813UnicodeString9getBufferEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = and i16 %i.g, 2
  %.not2.i.i.i = icmp eq i16 %i.i, 0
  br i1 %.not2.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 18
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !11
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit.i.i

_ZNK6icu_7813UnicodeString9getBufferEv.exit.i.i:  ; preds = %bb.e, %bb.d, %bb.b
  %.0.i.i.i = phi ptr [ %i.l, %bb.e ], [ %i.j, %bb.d ], [ null, %bb.b ]
  %i.m = icmp slt i16 %i.g, 0
  %i.n = ashr i16 %i.g, 5
  %i.o = sext i16 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.q = load i32, ptr %i.p, align 4
  %i.r = select i1 %i.m, i32 %i.q, i32 %i.o       ; 3 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.critedge.i, label %_ZNK6icu_7815SimpleFormatter16getArgumentLimitEv.exit.i

_ZNK6icu_7815SimpleFormatter16getArgumentLimitEv.exit.i: ; preds = %_ZNK6icu_7813UnicodeString9getBufferEv.exit.i.i
  %i.t = load i16, ptr %.0.i.i.i, align 2, !tbaa !13
  %i.u = icmp ugt i16 %i.t, 3
  br i1 %i.u, label %_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode.exit.sink.split, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNK6icu_7815SimpleFormatter16getArgumentLimitEv.exit.i, %_ZNK6icu_7813UnicodeString9getBufferEv.exit.i.i
  br i1 %.not.i.i.i, label %bb.f, label %.preheader78.i

bb.f:                                             ; preds = %.critedge.i
  %i.v = and i16 %i.g, 2
  %.not2.i.i = icmp eq i16 %i.v, 0
  br i1 %.not2.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 18
  br label %.preheader78.i

bb.h:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !11
  br label %.preheader78.i

.preheader78.i:                                   ; preds = %.critedge.i, %bb.g, %bb.h
  %.0.i.i = phi ptr [ %i.y, %bb.h ], [ %i.w, %bb.g ], [ null, %.critedge.i ] ; 2 uses
  %i.z = icmp sgt i32 %i.r, 1
  br i1 %i.z, label %.lr.ph81.split.i, label %_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode.exit

.lr.ph81.split.i:                                 ; preds = %.preheader78.i, %bb.l
  %.05980.i = phi i32 [ %.261.i, %bb.l ], [ 1, %.preheader78.i ] ; 2 uses
  %i.aa = add nsw i32 %.05980.i, 1                ; 3 uses
  %i.ab = sext i32 %.05980.i to i64
  %i.ac = getelementptr inbounds [2 x i8], ptr %.0.i.i, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !13 ; 3 uses
  %i.ae = icmp ult i16 %i.ad, 256
  br i1 %i.ae, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.lr.ph81.split.i
  %i.af = zext nneg i16 %i.ad to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !18 ; 5 uses
  %i.ai = icmp eq ptr %i.ah, null
  %i.aj = icmp eq ptr %i.ah, %4
  %or.cond.i = or i1 %i.ai, %i.aj
  br i1 %or.cond.i, label %_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode.exit.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.al = load i16, ptr %i.ak, align 8, !tbaa !11 ; 2 uses
  %i.am = icmp slt i16 %i.al, 0
  %i.an = ashr i16 %i.al, 5
  %i.ao = sext i16 %i.an to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = select i1 %i.am, i32 %i.aq, i32 %i.ao
  %i.as = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %i.ah, i32 noundef 0, i32 noundef %i.ar) ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph81.split.i
  %i.at = zext i16 %i.ad to i32
  %i.au = add nsw i32 %i.at, -256                 ; 2 uses
  %i.av = sext i32 %i.aa to i64
  %i.aw = getelementptr inbounds [2 x i8], ptr %.0.i.i, i64 %i.av ; 3 uses
  %i.ax = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef %i.aw, i32 noundef 0, i32 noundef %i.au)
          to label %_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit.i unwind label %.split.i ; 0 uses

_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit.i: ; preds = %bb.k
  tail call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.aw) #8, !srcloc !15
  %i.ay = add nsw i32 %i.au, %i.aa
  br label %bb.l

.split.i:                                         ; preds = %bb.k
  %i.az = landingpad { ptr, i32 }
          cleanup
  tail call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.aw) #8, !srcloc !15
  resume { ptr, i32 } %i.az

bb.l:                                             ; preds = %_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit.i, %bb.j
  %.261.i = phi i32 [ %i.ay, %_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit.i ], [ %i.aa, %bb.j ] ; 2 uses
  %i.ba = icmp slt i32 %.261.i, %i.r
  br i1 %i.ba, label %.lr.ph81.split.i, label %_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode.exit, !llvm.loop !0

_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode.exit.sink.split: ; preds = %bb.i, %_ZNK6icu_7815SimpleFormatter16getArgumentLimitEv.exit.i
  store i32 1, ptr %5, align 4, !tbaa !10
  br label %_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode.exit

_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode.exit: ; preds = %bb.l, %_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode.exit.sink.split, %.preheader78.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret ptr %4
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7815SimpleFormatter6formatEPKDsiPKPKNS_13UnicodeStringERS3_S5_aPiiR10UErrorCode(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef nonnull returned align 8 dereferenceable(64) %3, ptr noundef %4, i8 noundef signext %5, ptr nofree noundef writeonly captures(none) %6, i32 noundef %7, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %8) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %8, align 4, !tbaa !10
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %.preheader78, label %.loopexit

.preheader78:                                     ; preds = %bb.a
  %i.c = icmp sgt i32 %7, 0
  br i1 %i.c, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %.preheader78
  %i.d = zext nneg i32 %7 to i64
  %i.e = shl nuw nsw i64 %i.d, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %6, i8 -1, i64 %i.e, i1 false), !tbaa !19
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.preheader, %.preheader78
  %i.f = icmp sgt i32 %1, 1
  br i1 %i.f, label %.lr.ph81, label %.loopexit

.lr.ph81:                                         ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  %.not68 = icmp eq i8 %5, 0
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 12
  br i1 %.not68, label %.lr.ph81.split.us, label %.lr.ph81.split

.lr.ph81.split.us:                                ; preds = %.lr.ph81, %bb.n
  %.05980.us = phi i32 [ %.261.us, %bb.n ], [ 1, %.lr.ph81 ] ; 2 uses
  %i.k = add nsw i32 %.05980.us, 1                ; 5 uses
  %i.l = sext i32 %.05980.us to i64
  %i.m = getelementptr inbounds [2 x i8], ptr %0, i64 %i.l
  %i.n = load i16, ptr %i.m, align 2, !tbaa !13   ; 3 uses
  %i.o = zext i16 %i.n to i32                     ; 3 uses
  %i.p = icmp ult i16 %i.n, 256
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph81.split.us
  %i.q = add nsw i32 %i.o, -256                   ; 2 uses
  %i.r = sext i32 %i.k to i64
  %i.s = getelementptr inbounds [2 x i8], ptr %0, i64 %i.r ; 3 uses
  %i.t = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %i.s, i32 noundef 0, i32 noundef %i.q)
          to label %_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit.us unwind label %.split.us ; 0 uses

_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit.us: ; preds = %bb.b
  tail call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.s) #8, !srcloc !15
  %i.u = add nsw i32 %i.q, %i.k
  br label %bb.n

bb.c:                                             ; preds = %.lr.ph81.split.us
  %i.v = zext nneg i16 %i.n to i64                ; 4 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !18   ; 5 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %.loopexit.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = icmp eq ptr %i.x, %3
  br i1 %i.z, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = icmp sgt i32 %7, %i.o
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = load i16, ptr %i.g, align 8, !tbaa !11  ; 2 uses
  %i.ac = icmp slt i16 %i.ab, 0
  %i.ad = ashr i16 %i.ab, 5
  %i.ae = sext i16 %i.ad to i32
  %i.af = load i32, ptr %i.h, align 4
  %i.ag = select i1 %i.ac, i32 %i.af, i32 %i.ae
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.v
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aj = load i16, ptr %i.ai, align 8, !tbaa !11 ; 2 uses
  %i.ak = icmp slt i16 %i.aj, 0
  %i.al = ashr i16 %i.aj, 5
  %i.am = sext i16 %i.al to i32
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = select i1 %i.ak, i32 %i.ao, i32 %i.am
  %i.aq = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %i.x, i32 noundef 0, i32 noundef %i.ap) ; 0 uses
  br label %bb.n

bb.h:                                             ; preds = %bb.d
  %i.ar = icmp eq i32 %i.k, 2
  %i.as = icmp sgt i32 %7, %i.o                   ; 2 uses
  br i1 %i.ar, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.at = load i16, ptr %i.g, align 8, !tbaa !11  ; 2 uses
  %i.au = icmp slt i16 %i.at, 0
  %i.av = ashr i16 %i.at, 5
  %i.aw = sext i16 %i.av to i32
  %i.ax = load i32, ptr %i.h, align 4
  %i.ay = select i1 %i.au, i32 %i.ax, i32 %i.aw
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.v
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !19
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ba = load i16, ptr %i.i, align 8, !tbaa !11  ; 2 uses
  %i.bb = icmp slt i16 %i.ba, 0
  %i.bc = ashr i16 %i.ba, 5
  %i.bd = sext i16 %i.bc to i32
  %i.be = load i32, ptr %i.j, align 4
  %i.bf = select i1 %i.bb, i32 %i.be, i32 %i.bd
  %i.bg = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef 0, i32 noundef %i.bf) ; 0 uses
  br label %bb.n

bb.l:                                             ; preds = %bb.h
  br i1 %i.as, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.v
  store i32 0, ptr %i.bh, align 4, !tbaa !19
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.g, %_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit.us
  %.261.us = phi i32 [ %i.u, %_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit.us ], [ %i.k, %bb.g ], [ 2, %bb.l ], [ 2, %bb.m ], [ %i.k, %bb.k ] ; 2 uses
  %i.bi = icmp slt i32 %.261.us, %1
  br i1 %i.bi, label %.lr.ph81.split.us, label %.loopexit, !llvm.loop !0

.split.us:                                        ; preds = %bb.b
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.lr.ph81.split:                                   ; preds = %.lr.ph81, %bb.u
  %.05980 = phi i32 [ %.261, %bb.u ], [ 1, %.lr.ph81 ] ; 2 uses
  %i.bk = add nsw i32 %.05980, 1                  ; 3 uses
  %i.bl = sext i32 %.05980 to i64
  %i.bm = getelementptr inbounds [2 x i8], ptr %0, i64 %i.bl
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !13 ; 3 uses
  %i.bo = zext i16 %i.bn to i32                   ; 2 uses
  %i.bp = icmp ult i16 %i.bn, 256
  br i1 %i.bp, label %bb.o, label %bb.s

bb.o:                                             ; preds = %.lr.ph81.split
  %i.bq = zext nneg i16 %i.bn to i64              ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !18 ; 5 uses
  %i.bt = icmp eq ptr %i.bs, null
  %i.bu = icmp eq ptr %i.bs, %3
  %or.cond = or i1 %i.bt, %i.bu
  br i1 %or.cond, label %.loopexit.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bv = icmp sgt i32 %7, %i.bo
  br i1 %i.bv, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bw = load i16, ptr %i.g, align 8, !tbaa !11  ; 2 uses
  %i.bx = icmp slt i16 %i.bw, 0
  %i.by = ashr i16 %i.bw, 5
  %i.bz = sext i16 %i.by to i32
  %i.ca = load i32, ptr %i.h, align 4
  %i.cb = select i1 %i.bx, i32 %i.ca, i32 %i.bz
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.bq
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !19
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.ce = load i16, ptr %i.cd, align 8, !tbaa !11 ; 2 uses
  %i.cf = icmp slt i16 %i.ce, 0
  %i.cg = ashr i16 %i.ce, 5
  %i.ch = sext i16 %i.cg to i32
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = select i1 %i.cf, i32 %i.cj, i32 %i.ch
  %i.cl = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %i.bs, i32 noundef 0, i32 noundef %i.ck) ; 0 uses
  br label %bb.u

bb.s:                                             ; preds = %.lr.ph81.split
  %i.cm = add nsw i32 %i.bo, -256                 ; 2 uses
  %i.cn = sext i32 %i.bk to i64
  %i.co = getelementptr inbounds [2 x i8], ptr %0, i64 %i.cn ; 3 uses
  %i.cp = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %i.co, i32 noundef 0, i32 noundef %i.cm)
          to label %_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit unwind label %.split ; 0 uses

_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit: ; preds = %bb.s
  tail call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.co) #8, !srcloc !15
  %i.cq = add nsw i32 %i.cm, %i.bk
  br label %bb.u

.split:                                           ; preds = %bb.s
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %.split.us, %.split
  %.us-phi = phi ptr [ %i.co, %.split ], [ %i.s, %.split.us ]
  %.us-phi82 = phi { ptr, i32 } [ %i.cr, %.split ], [ %i.bj, %.split.us ]
  tail call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %.us-phi) #8, !srcloc !15
  resume { ptr, i32 } %.us-phi82

bb.u:                                             ; preds = %bb.r, %_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit
  %.261 = phi i32 [ %i.cq, %_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit ], [ %i.bk, %bb.r ] ; 2 uses
  %i.cs = icmp slt i32 %.261, %1
  br i1 %i.cs, label %.lr.ph81.split, label %.loopexit, !llvm.loop !0

.loopexit.sink.split:                             ; preds = %bb.o, %bb.c
  store i32 1, ptr %8, align 4, !tbaa !10
  br label %.loopexit

.loopexit:                                        ; preds = %bb.u, %bb.n, %.loopexit.sink.split, %.preheader, %bb.a
  ret ptr %3
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7815SimpleFormatter16formatAndReplaceEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr noundef nonnull returned align 8 dereferenceable(64) %3, ptr nofree noundef writeonly captures(address_is_null) %4, i32 noundef %5, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.icu_78::UnicodeString", align 8 ; 12 uses
  %i.a = load i32, ptr %6, align 4, !tbaa !10
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.c = icmp sgt i32 %2, -1
  %i.d = icmp ne ptr %1, null
  %i.e = icmp eq i32 %2, 0
  %.not62 = or i1 %i.d, %i.e
  %narrow.i.not = and i1 %i.c, %.not62
  br i1 %narrow.i.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = icmp sgt i32 %5, -1
  %i.g = icmp ne ptr %4, null
  %i.h = icmp eq i32 %5, 0
  %.not65 = or i1 %i.g, %i.h
  %narrow.i57.not = and i1 %i.f, %.not65
  br i1 %narrow.i57.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 1, ptr %6, align 4, !tbaa !10
  br label %bb.t

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i16, ptr %i.i, align 8, !tbaa !11   ; 4 uses
  %i.k = and i16 %i.j, 17
  %.not.i = icmp eq i16 %i.k, 0
  br i1 %.not.i, label %bb.f, label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

bb.f:                                             ; preds = %bb.e
  %i.l = and i16 %i.j, 2
  %.not2.i = icmp eq i16 %i.l, 0
  br i1 %.not2.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 18
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

bb.h:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !11
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

_ZNK6icu_7813UnicodeString9getBufferEv.exit:      ; preds = %bb.e, %bb.g, %bb.h
  %.0.i = phi ptr [ %i.o, %bb.h ], [ %i.m, %bb.g ], [ null, %bb.e ] ; 3 uses
  %i.p = icmp slt i16 %i.j, 0
  %i.q = ashr i16 %i.j, 5
  %i.r = sext i16 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.t = load i32, ptr %i.s, align 4
  %i.u = select i1 %i.p, i32 %i.t, i32 %i.r       ; 4 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZN6icu_7815SimpleFormatter16getArgumentLimitEPKDsi.exit58.thread, label %_ZN6icu_7815SimpleFormatter16getArgumentLimitEPKDsi.exit.thread

_ZN6icu_7815SimpleFormatter16getArgumentLimitEPKDsi.exit.thread: ; preds = %_ZNK6icu_7813UnicodeString9getBufferEv.exit
  %i.w = load i16, ptr %.0.i, align 2, !tbaa !13  ; 2 uses
  %i.x = zext i16 %i.w to i32
  %i.y = icmp samesign ult i32 %2, %i.x
  br i1 %i.y, label %bb.i, label %_ZN6icu_7815SimpleFormatter16getArgumentLimitEPKDsi.exit58

bb.i:                                             ; preds = %_ZN6icu_7815SimpleFormatter16getArgumentLimitEPKDsi.exit.thread
  store i32 1, ptr %6, align 4, !tbaa !10
  br label %bb.t

_ZN6icu_7815SimpleFormatter16getArgumentLimitEPKDsi.exit58.thread: ; preds = %_ZNK6icu_7813UnicodeString9getBufferEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %7, align 8, !tbaa !24
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i16 2, ptr %i.z, align 8, !tbaa !11
  br label %.critedge

_ZN6icu_7815SimpleFormatter16getArgumentLimitEPKDsi.exit58: ; preds = %_ZN6icu_7815SimpleFormatter16getArgumentLimitEPKDsi.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %7, align 8, !tbaa !24
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i16 2, ptr %i.aa, align 8, !tbaa !11
  %.not = icmp ne i16 %i.w, 0
  %i.ab = icmp sgt i32 %i.u, 1
  %or.cond = and i1 %.not, %i.ab
  br i1 %or.cond, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZN6icu_7815SimpleFormatter16getArgumentLimitEPKDsi.exit58
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.j

._crit_edge:                                      ; preds = %bb.q
  %i.ad = icmp slt i32 %.144, 0
  br i1 %i.ad, label %.critedge, label %bb.r

bb.j:                                             ; preds = %.lr.ph, %bb.q
  %.068 = phi i32 [ 1, %.lr.ph ], [ %.1, %bb.q ]  ; 3 uses
  %.04367 = phi i32 [ -1, %.lr.ph ], [ %.144, %bb.q ] ; 5 uses
  %i.ae = add nsw i32 %.068, 1                    ; 5 uses
  %i.af = sext i32 %.068 to i64
  %i.ag = getelementptr inbounds [2 x i8], ptr %.0.i, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !13 ; 3 uses
  %i.ai = zext i16 %i.ah to i32                   ; 2 uses
  %i.aj = icmp ult i16 %i.ah, 256
  br i1 %i.aj, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.ak = zext nneg i16 %i.ah to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.an = icmp eq ptr %i.am, %3
  br i1 %i.an, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp eq i32 %i.ae, 2
  br i1 %i.ao, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = load i16, ptr %i.aa, align 8, !tbaa !11
  %i.aq = icmp ugt i16 %i.ap, 31
  br i1 %i.aq, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = load i16, ptr %i.ac, align 8, !tbaa !11
  %i.as = icmp ugt i16 %i.ar, 31
  br i1 %i.as, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.at = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.o, %bb.r
  %lpad.loopexit.split-lp76 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  resume { ptr, i32 } %lpad.loopexit.split-lp76

bb.p:                                             ; preds = %bb.j
  %i.au = add i32 %.068, -255
  %i.av = add i32 %i.au, %i.ai
  br label %bb.q

bb.q:                                             ; preds = %bb.l, %bb.k, %bb.m, %bb.n, %bb.o, %bb.p
  %.144 = phi i32 [ %.04367, %bb.p ], [ %.04367, %bb.n ], [ %.04367, %bb.o ], [ %.04367, %bb.m ], [ %.04367, %bb.k ], [ %i.ai, %bb.l ] ; 2 uses
  %.1 = phi i32 [ %i.av, %bb.p ], [ %i.ae, %bb.n ], [ %i.ae, %bb.o ], [ %i.ae, %bb.m ], [ %i.ae, %bb.k ], [ 2, %bb.l ] ; 2 uses
  %i.aw = icmp slt i32 %.1, %i.u
  br i1 %i.aw, label %bb.j, label %._crit_edge, !llvm.loop !22

.critedge:                                        ; preds = %_ZN6icu_7815SimpleFormatter16getArgumentLimitEPKDsi.exit58.thread, %_ZN6icu_7815SimpleFormatter16getArgumentLimitEPKDsi.exit58, %._crit_edge
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ay = load i16, ptr %i.ax, align 8, !tbaa !11 ; 2 uses
  %i.az = and i16 %i.ay, 1
  %.not.i59 = icmp eq i16 %i.az, 0
  %i.ba = and i16 %i.ay, 30
  %storemerge.i = select i1 %.not.i59, i16 %i.ba, i16 2
  store i16 %storemerge.i, ptr %i.ax, align 8, !tbaa !11
  br label %bb.r

bb.r:                                             ; preds = %.critedge, %._crit_edge
  %i.bb = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7815SimpleFormatter6formatEPKDsiPKPKNS_13UnicodeStringERS3_S5_aPiiR10UErrorCode(ptr noundef %.0.i, i32 noundef %i.u, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull %7, i8 noundef signext 0, ptr noundef %4, i32 noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %6)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.s:                                             ; preds = %bb.r
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  br label %bb.t

bb.t:                                             ; preds = %bb.i, %bb.s, %bb.a, %bb.d
  ret ptr %3
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7815SimpleFormatter22getTextWithNoArgumentsEPKDsiPii(ptr dead_on_unwind noalias writable sret(%"class.icu_78::UnicodeString") align 8 %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext nneg i32 %4 to i64
  %i.c = shl nuw nsw i64 %i.b, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %3, i8 -1, i64 %i.c, i1 false), !tbaa !19
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  %i.d = icmp eq i32 %2, 0
  br i1 %i.d, label %_ZN6icu_7815SimpleFormatter16getArgumentLimitEPKDsi.exit.thread, label %_ZN6icu_7815SimpleFormatter16getArgumentLimitEPKDsi.exit

_ZN6icu_7815SimpleFormatter16getArgumentLimitEPKDsi.exit.thread: ; preds = %._crit_edge
  tail call void @_ZN6icu_7813UnicodeStringC1Eiii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef -1, i32 noundef 0, i32 noundef 0)
  br label %._crit_edge38

_ZN6icu_7815SimpleFormatter16getArgumentLimitEPKDsi.exit: ; preds = %._crit_edge
  %i.e = load i16, ptr %1, align 2, !tbaa !13
  %i.f = zext i16 %i.e to i32
  %i.g = xor i32 %i.f, -1
  %i.h = add i32 %2, %i.g
  tail call void @_ZN6icu_7813UnicodeStringC1Eiii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.h, i32 noundef 0, i32 noundef 0)
  %i.i = icmp sgt i32 %2, 1
  br i1 %i.i, label %.lr.ph37, label %._crit_edge38

.lr.ph37:                                         ; preds = %_ZN6icu_7815SimpleFormatter16getArgumentLimitEPKDsi.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph37, %bb.g
  %.02736 = phi i32 [ 1, %.lr.ph37 ], [ %.1, %bb.g ] ; 2 uses
  %i.l = add nsw i32 %.02736, 1                   ; 4 uses
  %i.m = sext i32 %.02736 to i64
  %i.n = getelementptr inbounds [2 x i8], ptr %1, i64 %i.m
  %i.o = load i16, ptr %i.n, align 2, !tbaa !13   ; 3 uses
  %i.p = zext i16 %i.o to i32                     ; 2 uses
  %i.q = icmp ugt i16 %i.o, 256
  br i1 %i.q, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.r = add nsw i32 %i.p, -256                   ; 2 uses
  %i.s = sext i32 %i.l to i64
  %i.t = getelementptr inbounds [2 x i8], ptr %1, i64 %i.s ; 3 uses
  %i.u = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %i.t, i32 noundef 0, i32 noundef %i.r)
          to label %_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit unwind label %bb.d ; 0 uses

_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit: ; preds = %bb.c
  tail call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.t) #8, !srcloc !15
  %i.v = add nsw i32 %i.r, %i.l
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.t) #8, !srcloc !15
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #8
  resume { ptr, i32 } %i.w

bb.e:                                             ; preds = %bb.b
  %i.x = icmp sgt i32 %4, %i.p
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = load i16, ptr %i.j, align 8, !tbaa !11   ; 2 uses
  %i.z = icmp slt i16 %i.y, 0
  %i.aa = ashr i16 %i.y, 5
  %i.ab = sext i16 %i.aa to i32
  %i.ac = load i32, ptr %i.k, align 4
  %i.ad = select i1 %i.z, i32 %i.ac, i32 %i.ab
  %i.ae = zext nneg i16 %i.o to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ae
  store i32 %i.ad, ptr %i.af, align 4, !tbaa !19
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit
  %.1 = phi i32 [ %i.v, %_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit ], [ %i.l, %bb.f ], [ %i.l, %bb.e ] ; 2 uses
  %i.ag = icmp slt i32 %.1, %2
  br i1 %i.ag, label %bb.b, label %._crit_edge38, !llvm.loop !25

._crit_edge38:                                    ; preds = %bb.g, %_ZN6icu_7815SimpleFormatter16getArgumentLimitEPKDsi.exit.thread, %_ZN6icu_7815SimpleFormatter16getArgumentLimitEPKDsi.exit
  ret void
}

declare void @_ZN6icu_7813UnicodeStringC1Eiii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #1

declare void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !14}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"_ZTS10UErrorCode", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!5, !5, i64 0}
!12 = !{!"char16_t", !5, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{i64 2148911075}
!16 = !{!"any pointer", !5, i64 0}
!17 = !{!"p1 _ZTSN6icu_7813UnicodeStringE", !16, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!6, !6, i64 0}
!20 = distinct !{!20, !14}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !14}
!23 = !{!"vtable pointer", !4, i64 0}
!24 = !{!23, !23, i64 0}
!25 = distinct !{!25, !14}
end_hunk_1
