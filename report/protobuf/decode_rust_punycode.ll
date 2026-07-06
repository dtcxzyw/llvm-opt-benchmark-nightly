inline.NumInlined: 10
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.absl::lts_20250512::debugging_internal::DecodeRustPunycodeOptions" = type { ptr, ptr, ptr, ptr }
%"class.absl::lts_20250512::debugging_internal::BoundedUtf8LengthSequence" = type { [8 x i64] }
%"struct.absl::lts_20250512::debugging_internal::Utf8ForCodePoint" = type { [4 x i8], i32 }

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN4absl12lts_2025051218debugging_internal18DecodeRustPunycodeENS1_25DecodeRustPunycodeOptionsE(ptr nofree noundef readonly byval(%"struct.absl::lts_20250512::debugging_internal::DecodeRustPunycodeOptions") align 8 captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.absl::lts_20250512::debugging_internal::BoundedUtf8LengthSequence", align 8 ; 26 uses
  %2 = alloca %"struct.absl::lts_20250512::debugging_internal::Utf8ForCodePoint", align 4 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !7      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12   ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13   ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = icmp eq ptr %i.g, %i.e
  br i1 %i.k, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_126ConsumeOptionalAsciiPrefixERPKcS4_PcS6_Rj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.e, align 1, !tbaa !14
  %i.l = ptrtoint ptr %i.c to i64
  %i.m = ptrtoint ptr %i.a to i64
  %i.n = sub i64 %i.l, %i.m                       ; 2 uses
  %.not57.i = icmp sgt i64 %i.n, 0
  br i1 %.not57.i, label %.lr.ph.i, label %bb.g

.lr.ph.i:                                         ; preds = %bb.b, %.thread.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.thread.i ], [ 0, %bb.b ] ; 3 uses
  %.04358.i = phi i32 [ %.14451.i, %.thread.i ], [ -1, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  %i.p = load i8, ptr %i.o, align 1, !tbaa !14    ; 3 uses
  %i.q = icmp eq i8 %i.p, 95
  %i.r = trunc nuw nsw i64 %indvars.iv.i to i32
  br i1 %i.q, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.s = and i8 %i.p, -33
  %i.t = add i8 %i.s, -65
  %or.cond48.i = icmp ult i8 %i.t, 26
  %i.u = add i8 %i.p, -48
  %or.cond9.i = icmp ult i8 %i.u, 10
  %or.cond54.i = or i1 %or.cond9.i, %or.cond48.i
  br i1 %or.cond54.i, label %.thread.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_126ConsumeOptionalAsciiPrefixERPKcS4_PcS6_Rj.exit

.thread.i:                                        ; preds = %bb.c, %.lr.ph.i
  %.14451.i = phi i32 [ %i.r, %.lr.ph.i ], [ %.04358.i, %bb.c ] ; 6 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.n
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !15

._crit_edge.i:                                    ; preds = %.thread.i
  %i.v = icmp slt i32 %.14451.i, 0
  br i1 %i.v, label %bb.g, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  %i.w = icmp eq i32 %.14451.i, 0
  br i1 %i.w, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_126ConsumeOptionalAsciiPrefixERPKcS4_PcS6_Rj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = add nuw nsw i32 %.14451.i, 1
  %i.y = zext nneg i32 %i.x to i64                ; 2 uses
  %i.z = icmp slt i64 %i.j, %i.y
  br i1 %i.z, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_126ConsumeOptionalAsciiPrefixERPKcS4_PcS6_Rj.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = zext nneg i32 %.14451.i to i64          ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.e, ptr nonnull align 1 %i.a, i64 %i.aa, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.aa
  store i8 0, ptr %i.ab, align 1, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.y
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i, %bb.f, %bb.b
  %.175.ph = phi ptr [ %i.a, %bb.b ], [ %i.ac, %bb.f ], [ %i.a, %._crit_edge.i ] ; 2 uses
  %.1.ph = phi i32 [ 0, %bb.b ], [ %.14451.i, %bb.f ], [ 0, %._crit_edge.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %1, i8 0, i64 64, i1 false), !tbaa !17
  %.not96 = icmp eq ptr %.175.ph, %i.c
  br i1 %.not96, label %._crit_edge105, label %.lr.ph104

.lr.ph104:                                        ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %umax = tail call i32 @llvm.umax.i32(i32 %.1.ph, i32 256)
  %exitcond141 = icmp ugt i32 %.1.ph, 255
  br i1 %exitcond141, label %.critedge, label %.lr.ph.i51.preheader

.lr.ph.i51.preheader:                             ; preds = %.lr.ph104
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.lr.ph.i51

bb.h:                                             ; preds = %_ZN4absl12lts_2025051218debugging_internal25BoundedUtf8LengthSequenceILj256EE32InsertAndReturnSumOfPredecessorsEjj.exit
  %i.ar = add nuw nsw i32 %i.cd, 1
  %exitcond = icmp eq i32 %i.br, %umax
  br i1 %exitcond, label %.critedge, label %.lr.ph.i51, !llvm.loop !19

.lr.ph.i51:                                       ; preds = %.lr.ph.i51.preheader, %bb.h
  %.07497147 = phi ptr [ %i.av, %bb.h ], [ %.175.ph, %.lr.ph.i51.preheader ]
  %.07298146 = phi i32 [ %i.ar, %bb.h ], [ 0, %.lr.ph.i51.preheader ] ; 3 uses
  %.099145 = phi i32 [ %i.br, %bb.h ], [ %.1.ph, %.lr.ph.i51.preheader ]
  %.046100144 = phi i32 [ %i.cc, %bb.h ], [ 128, %.lr.ph.i51.preheader ]
  %.043101143 = phi i32 [ %i.ca, %bb.h ], [ 72, %.lr.ph.i51.preheader ] ; 3 uses
  %.040102142 = phi i32 [ %i.hf, %bb.h ], [ %.1.ph, %.lr.ph.i51.preheader ] ; 2 uses
  %i.as = add i32 %.043101143, 1
  %i.at = add i32 %.043101143, 26
  %3 = zext nneg i32 %.07298146 to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i51
  %.02551.i = phi i64 [ 1, %.lr.ph.i51 ], [ %i.bl, %bb.o ] ; 2 uses
  %.03350.i = phi i32 [ 36, %.lr.ph.i51 ], [ %i.bm, %bb.o ] ; 4 uses
  %i.au = phi ptr [ %.07497147, %.lr.ph.i51 ], [ %i.av, %bb.o ] ; 2 uses
  %4 = phi i64 [ %3, %.lr.ph.i51 ], [ %i.bg, %bb.o ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1 ; 4 uses
  %i.aw = load i8, ptr %i.au, align 1, !tbaa !14  ; 4 uses
  %i.ax = sext i8 %i.aw to i32                    ; 3 uses
  %i.ay = add i8 %i.aw, -48
  %or.cond.i.i = icmp ult i8 %i.ay, 10
  br i1 %or.cond.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.az = add nsw i32 %i.ax, -22
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110DigitValueEc.exit.thread.i

bb.k:                                             ; preds = %bb.i
  %i.ba = add i8 %i.aw, -97
  %or.cond5.i.i = icmp ult i8 %i.ba, 26
  br i1 %or.cond5.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bb = add nsw i32 %i.ax, -97
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110DigitValueEc.exit.thread.i

bb.m:                                             ; preds = %bb.k
  %i.bc = add nsw i32 %i.ax, -65
  %i.bd = add i8 %i.aw, -91
  %or.cond.i = icmp ult i8 %i.bd, -26
  br i1 %or.cond.i, label %.critedge, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110DigitValueEc.exit.thread.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110DigitValueEc.exit.thread.i: ; preds = %bb.m, %bb.l, %bb.j
  %.0.i41.i = phi i32 [ %i.bc, %bb.m ], [ %i.bb, %bb.l ], [ %i.az, %bb.j ] ; 2 uses
  %i.be = zext nneg i32 %.0.i41.i to i64
  %i.bf = mul i64 %.02551.i, %i.be
  %i.bg = add i64 %i.bf, %4                       ; 3 uses
  %i.bh = icmp ugt i64 %i.bg, 1073741824
  br i1 %i.bh, label %.critedge, label %bb.n

bb.n:                                             ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110DigitValueEc.exit.thread.i
  %.not37.i = icmp ugt i32 %.03350.i, %i.as
  %.not38.i = icmp ult i32 %.03350.i, %i.at
  %i.bi = sub i32 %.03350.i, %.043101143
  %spec.select39.i = select i1 %.not38.i, i32 %i.bi, i32 26
  %.0.i = select i1 %.not37.i, i32 %spec.select39.i, i32 1 ; 2 uses
  %.not47.i = icmp ult i32 %.0.i41.i, %.0.i
  br i1 %.not47.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_113ScanNextDeltaERPKcS4_jRj.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = sub nsw i32 36, %.0.i
  %i.bk = zext i32 %i.bj to i64
  %i.bl = mul i64 %.02551.i, %i.bk
  %i.bm = add i32 %.03350.i, 36
  %.not.not.i = icmp eq ptr %i.av, %i.c
  br i1 %.not.not.i, label %.critedge, label %bb.i, !llvm.loop !20

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_113ScanNextDeltaERPKcS4_jRj.exit: ; preds = %bb.n
  %5 = trunc nuw nsw i64 %i.bg to i32             ; 3 uses
  %i.bn = sub nsw i32 %5, %.07298146
  %i.bo = icmp eq i32 %.07298146, 0
  %i.bp = select i1 %i.bo, i32 700, i32 2
  %i.bq = udiv i32 %i.bn, %i.bp                   ; 2 uses
  %i.br = add nuw nsw i32 %.099145, 1             ; 5 uses
  %i.bs = udiv i32 %i.bq, %i.br
  %i.bt = add nuw i32 %i.bs, %i.bq                ; 3 uses
  %i.bu = icmp ugt i32 %i.bt, 455
  br i1 %i.bu, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_113ScanNextDeltaERPKcS4_jRj.exit, %.lr.ph
  %.03794 = phi i32 [ %i.bv, %.lr.ph ], [ %i.bt, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_113ScanNextDeltaERPKcS4_jRj.exit ] ; 2 uses
  %.14493 = phi i32 [ %i.bw, %.lr.ph ], [ 0, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_113ScanNextDeltaERPKcS4_jRj.exit ]
  %i.bv = udiv i32 %.03794, 35                    ; 2 uses
  %i.bw = add i32 %.14493, 36                     ; 2 uses
  %i.bx = icmp ugt i32 %.03794, 15959
  br i1 %i.bx, label %.lr.ph, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %.lr.ph, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_113ScanNextDeltaERPKcS4_jRj.exit
  %.144.lcssa = phi i32 [ 0, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_113ScanNextDeltaERPKcS4_jRj.exit ], [ %i.bw, %.lr.ph ]
  %.037.lcssa = phi i32 [ %i.bt, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_113ScanNextDeltaERPKcS4_jRj.exit ], [ %i.bv, %.lr.ph ]
  %i.by = trunc nuw i32 %.037.lcssa to i16        ; 2 uses
  %.lhs.trunc = mul nuw i16 %i.by, 36
  %.rhs.trunc = add nuw nsw i16 %i.by, 38
  %i.bz = udiv i16 %.lhs.trunc, %.rhs.trunc
  %.zext = zext nneg i16 %i.bz to i32
  %i.ca = add i32 %.144.lcssa, %.zext
  %i.cb = udiv i32 %5, %i.br
  %i.cc = add i32 %i.cb, %.046100144              ; 2 uses
  %i.cd = urem i32 %5, %i.br                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  %i.ce = zext i32 %i.cc to i64
  call void @_ZN4absl12lts_2025051218debugging_internal16Utf8ForCodePointC1Em(ptr noundef nonnull align 4 dereferenceable(8) %2, i64 noundef %i.ce)
  %i.cf = load i32, ptr %i.ad, align 4, !tbaa !22 ; 6 uses
  %.not84 = icmp eq i32 %i.cf, 0
  br i1 %.not84, label %.critedge.critedge, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.cg = add i32 %.040102142, 1                  ; 2 uses
  %i.ch = add i32 %i.cg, %i.cf
  %i.ci = zext i32 %i.ch to i64
  %i.cj = icmp ult i64 %i.j, %i.ci
  br i1 %i.cj, label %.critedge.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %spec.store.select.i = call i32 @llvm.umin.i32(i32 %i.cd, i32 255) ; 3 uses
  %i.ck = lshr i32 %spec.store.select.i, 5        ; 4 uses
  %i.cl = shl nuw nsw i32 %spec.store.select.i, 1
  %i.cm = and i32 %i.cl, 62
  %i.cn = zext nneg i32 %i.cm to i64              ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.cn              ; 2 uses
  %i.co = xor i64 %notmask.i, -1                  ; 2 uses
  %i.cp = zext nneg i32 %i.ck to i64              ; 8 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cp ; 3 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !17 ; 2 uses
  %i.cs = and i64 %i.cr, %i.co                    ; 3 uses
  %i.ct = and i64 %i.cs, 3074457345618258602
  %i.cu = insertelement <2 x i64> poison, i64 %i.ct, i64 0
  %i.cv = insertelement <2 x i64> %i.cu, i64 %i.cs, i64 1
  %i.cw = call range(i64 0, 63) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.cv)
  %i.cx = trunc nuw nsw <2 x i64> %i.cw to <2 x i32> ; 2 uses
  %.not42.i = icmp eq i32 %i.ck, 0
  br i1 %.not42.i, label %.lr.ph48.i, label %.lr.ph.i53

.preheader.i:                                     ; preds = %.lr.ph.i53.6, %.lr.ph.i53.5, %.lr.ph.i53.4, %.lr.ph.i53.3, %.lr.ph.i53.2, %.lr.ph.i53.1, %.lr.ph.i53
  %.lcssa153 = phi <2 x i32> [ %i.dg, %.lr.ph.i53 ], [ %i.dq, %.lr.ph.i53.1 ], [ %i.ea, %.lr.ph.i53.2 ], [ %i.ek, %.lr.ph.i53.3 ], [ %i.eu, %.lr.ph.i53.4 ], [ %i.fe, %.lr.ph.i53.5 ], [ %i.fo, %.lr.ph.i53.6 ] ; 2 uses
  %.not49.i = icmp eq i32 %i.ck, 7
  br i1 %.not49.i, label %_ZN4absl12lts_2025051218debugging_internal25BoundedUtf8LengthSequenceILj256EE32InsertAndReturnSumOfPredecessorsEjj.exit, label %.lr.ph48.i

.lr.ph.i53:                                       ; preds = %bb.q
  %i.cy = getelementptr [8 x i8], ptr %1, i64 %i.cp
  %i.cz = getelementptr i8, ptr %i.cy, i64 -8
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !17
  %i.db = insertelement <2 x i64> poison, i64 %i.da, i64 0
  %i.dc = shufflevector <2 x i64> %i.db, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.dd = and <2 x i64> %i.dc, <i64 -6148914691236517206, i64 -1>
  %i.de = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.dd)
  %i.df = trunc nuw nsw <2 x i64> %i.de to <2 x i32>
  %i.dg = add nuw nsw <2 x i32> %i.cx, %i.df      ; 2 uses
  %indvars.iv.next.i55 = add nsw i64 %i.cp, -1    ; 2 uses
  %i.dh = icmp eq i64 %indvars.iv.next.i55, 0
  br i1 %i.dh, label %.preheader.i, label %.lr.ph.i53.1

.lr.ph.i53.1:                                     ; preds = %.lr.ph.i53
  %i.di = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.next.i55
  %i.dj = getelementptr i8, ptr %i.di, i64 -8
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !17
  %i.dl = insertelement <2 x i64> poison, i64 %i.dk, i64 0
  %i.dm = shufflevector <2 x i64> %i.dl, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.dn = and <2 x i64> %i.dm, <i64 -6148914691236517206, i64 -1>
  %i.do = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.dn)
  %i.dp = trunc nuw nsw <2 x i64> %i.do to <2 x i32>
  %i.dq = add nuw nsw <2 x i32> %i.dg, %i.dp      ; 2 uses
  %indvars.iv.next.i55.1 = add nsw i64 %i.cp, -2  ; 2 uses
  %i.dr = icmp eq i64 %indvars.iv.next.i55.1, 0
  br i1 %i.dr, label %.preheader.i, label %.lr.ph.i53.2

.lr.ph.i53.2:                                     ; preds = %.lr.ph.i53.1
  %i.ds = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.next.i55.1
  %i.dt = getelementptr i8, ptr %i.ds, i64 -8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !17
  %i.dv = insertelement <2 x i64> poison, i64 %i.du, i64 0
  %i.dw = shufflevector <2 x i64> %i.dv, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.dx = and <2 x i64> %i.dw, <i64 -6148914691236517206, i64 -1>
  %i.dy = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.dx)
  %i.dz = trunc nuw nsw <2 x i64> %i.dy to <2 x i32>
  %i.ea = add nuw nsw <2 x i32> %i.dq, %i.dz      ; 2 uses
  %indvars.iv.next.i55.2 = add nsw i64 %i.cp, -3  ; 2 uses
  %i.eb = icmp eq i64 %indvars.iv.next.i55.2, 0
  br i1 %i.eb, label %.preheader.i, label %.lr.ph.i53.3

.lr.ph.i53.3:                                     ; preds = %.lr.ph.i53.2
  %i.ec = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.next.i55.2
  %i.ed = getelementptr i8, ptr %i.ec, i64 -8
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !17
  %i.ef = insertelement <2 x i64> poison, i64 %i.ee, i64 0
  %i.eg = shufflevector <2 x i64> %i.ef, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.eh = and <2 x i64> %i.eg, <i64 -6148914691236517206, i64 -1>
  %i.ei = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.eh)
  %i.ej = trunc nuw nsw <2 x i64> %i.ei to <2 x i32>
  %i.ek = add nuw nsw <2 x i32> %i.ea, %i.ej      ; 2 uses
  %indvars.iv.next.i55.3 = add nsw i64 %i.cp, -4  ; 2 uses
  %i.el = icmp eq i64 %indvars.iv.next.i55.3, 0
  br i1 %i.el, label %.preheader.i, label %.lr.ph.i53.4

.lr.ph.i53.4:                                     ; preds = %.lr.ph.i53.3
  %i.em = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.next.i55.3
  %i.en = getelementptr i8, ptr %i.em, i64 -8
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !17
  %i.ep = insertelement <2 x i64> poison, i64 %i.eo, i64 0
  %i.eq = shufflevector <2 x i64> %i.ep, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.er = and <2 x i64> %i.eq, <i64 -6148914691236517206, i64 -1>
  %i.es = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.er)
  %i.et = trunc nuw nsw <2 x i64> %i.es to <2 x i32>
  %i.eu = add nuw nsw <2 x i32> %i.ek, %i.et      ; 2 uses
  %indvars.iv.next.i55.4 = add nsw i64 %i.cp, -5  ; 2 uses
  %i.ev = icmp eq i64 %indvars.iv.next.i55.4, 0
  br i1 %i.ev, label %.preheader.i, label %.lr.ph.i53.5

.lr.ph.i53.5:                                     ; preds = %.lr.ph.i53.4
  %i.ew = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.next.i55.4
  %i.ex = getelementptr i8, ptr %i.ew, i64 -8
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !17
  %i.ez = insertelement <2 x i64> poison, i64 %i.ey, i64 0
  %i.fa = shufflevector <2 x i64> %i.ez, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.fb = and <2 x i64> %i.fa, <i64 -6148914691236517206, i64 -1>
  %i.fc = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.fb)
  %i.fd = trunc nuw nsw <2 x i64> %i.fc to <2 x i32>
  %i.fe = add nuw nsw <2 x i32> %i.eu, %i.fd      ; 2 uses
  %indvars.iv.next.i55.5 = add nsw i64 %i.cp, -6  ; 2 uses
  %i.ff = icmp eq i64 %indvars.iv.next.i55.5, 0
  br i1 %i.ff, label %.preheader.i, label %.lr.ph.i53.6

.lr.ph.i53.6:                                     ; preds = %.lr.ph.i53.5
  %i.fg = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.next.i55.5
  %i.fh = getelementptr i8, ptr %i.fg, i64 -8
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !17
  %i.fj = insertelement <2 x i64> poison, i64 %i.fi, i64 0
  %i.fk = shufflevector <2 x i64> %i.fj, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.fl = and <2 x i64> %i.fk, <i64 -6148914691236517206, i64 -1>
  %i.fm = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.fl)
  %i.fn = trunc nuw nsw <2 x i64> %i.fm to <2 x i32>
  %i.fo = add nuw nsw <2 x i32> %i.fe, %i.fn
  br label %.preheader.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph48.i.6, %.lr.ph48.i.5, %.lr.ph48.i.4, %.lr.ph48.i.3, %.lr.ph48.i.2, %.lr.ph48.i.1, %.lr.ph48.i
  %.pre54.i = load i64, ptr %i.cq, align 8, !tbaa !17 ; 2 uses
  %.pre55.i = and i64 %.pre54.i, %i.co
  br label %_ZN4absl12lts_2025051218debugging_internal25BoundedUtf8LengthSequenceILj256EE32InsertAndReturnSumOfPredecessorsEjj.exit

.lr.ph48.i:                                       ; preds = %bb.q, %.preheader.i
  %i.fp = phi <2 x i32> [ %.lcssa153, %.preheader.i ], [ %i.cx, %bb.q ]
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !17
  %i.fq = load i64, ptr %i.af, align 8, !tbaa !17 ; 2 uses
  %i.fr = call i64 @llvm.fshl.i64(i64 %.pre.i, i64 %i.fq, i64 2)
  store i64 %i.fr, ptr %i.ae, align 8, !tbaa !17
  %i.fs = icmp ult i32 %i.cd, 192
  br i1 %i.fs, label %.lr.ph48.i.1, label %._crit_edge.loopexit.i

.lr.ph48.i.1:                                     ; preds = %.lr.ph48.i
  %i.ft = load i64, ptr %i.ah, align 8, !tbaa !17 ; 2 uses
  %i.fu = call i64 @llvm.fshl.i64(i64 %i.fq, i64 %i.ft, i64 2)
  store i64 %i.fu, ptr %i.ag, align 8, !tbaa !17
  %i.fv = icmp ult i32 %i.cd, 160
  br i1 %i.fv, label %.lr.ph48.i.2, label %._crit_edge.loopexit.i

.lr.ph48.i.2:                                     ; preds = %.lr.ph48.i.1
  %i.fw = load i64, ptr %i.aj, align 8, !tbaa !17 ; 2 uses
  %i.fx = call i64 @llvm.fshl.i64(i64 %i.ft, i64 %i.fw, i64 2)
  store i64 %i.fx, ptr %i.ai, align 8, !tbaa !17
  %i.fy = icmp ult i32 %i.cd, 128
  br i1 %i.fy, label %.lr.ph48.i.3, label %._crit_edge.loopexit.i

.lr.ph48.i.3:                                     ; preds = %.lr.ph48.i.2
  %i.fz = load i64, ptr %i.al, align 8, !tbaa !17 ; 2 uses
  %i.ga = call i64 @llvm.fshl.i64(i64 %i.fw, i64 %i.fz, i64 2)
  store i64 %i.ga, ptr %i.ak, align 8, !tbaa !17
  %i.gb = icmp ult i32 %i.cd, 96
  br i1 %i.gb, label %.lr.ph48.i.4, label %._crit_edge.loopexit.i

end_hunk_0
