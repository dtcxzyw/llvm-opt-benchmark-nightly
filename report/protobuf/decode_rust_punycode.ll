inline.NumInlined: 10
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.absl::lts_20250512::debugging_internal::DecodeRustPunycodeOptions" = type { ptr, ptr, ptr, ptr }
%"class.absl::lts_20250512::debugging_internal::BoundedUtf8LengthSequence" = type { [8 x i64] }
%"struct.absl::lts_20250512::debugging_internal::Utf8ForCodePoint" = type { [4 x i8], i32 }

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN4absl12lts_2025051218debugging_internal18DecodeRustPunycodeENS1_25DecodeRustPunycodeOptionsE(ptr noundef readonly byval(%"struct.absl::lts_20250512::debugging_internal::DecodeRustPunycodeOptions") align 8 captures(none) %0) local_unnamed_addr #0 {
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
  %i.ar = add nuw nsw i32 %i.cg, 1
  %exitcond = icmp eq i32 %i.bu, %umax
  br i1 %exitcond, label %.critedge, label %.lr.ph.i51, !llvm.loop !19

.lr.ph.i51:                                       ; preds = %.lr.ph.i51.preheader, %bb.h
  %.07497147 = phi ptr [ %i.aw, %bb.h ], [ %.175.ph, %.lr.ph.i51.preheader ]
  %.07298146 = phi i32 [ %i.ar, %bb.h ], [ 0, %.lr.ph.i51.preheader ] ; 3 uses
  %.099145 = phi i32 [ %i.bu, %bb.h ], [ %.1.ph, %.lr.ph.i51.preheader ]
  %.046100144 = phi i32 [ %i.cf, %bb.h ], [ 128, %.lr.ph.i51.preheader ]
  %.043101143 = phi i32 [ %i.cd, %bb.h ], [ 72, %.lr.ph.i51.preheader ] ; 3 uses
  %.040102142 = phi i32 [ %i.hi, %bb.h ], [ %.1.ph, %.lr.ph.i51.preheader ] ; 2 uses
  %i.as = add i32 %.043101143, 1
  %i.at = add i32 %.043101143, 26
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i51
  %.02551.i = phi i64 [ 1, %.lr.ph.i51 ], [ %i.bo, %bb.o ] ; 2 uses
  %.03350.i = phi i32 [ 36, %.lr.ph.i51 ], [ %i.bp, %bb.o ] ; 4 uses
  %i.au = phi ptr [ %.07497147, %.lr.ph.i51 ], [ %i.aw, %bb.o ] ; 2 uses
  %i.av = phi i32 [ %.07298146, %.lr.ph.i51 ], [ %i.bk, %bb.o ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 1 ; 4 uses
  %i.ax = load i8, ptr %i.au, align 1, !tbaa !14
  %.fr47.i = freeze i8 %i.ax                      ; 4 uses
  %i.ay = sext i8 %.fr47.i to i32                 ; 3 uses
  %i.az = add i8 %.fr47.i, -48
  %or.cond.i.i = icmp ult i8 %i.az, 10
  br i1 %or.cond.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ba = add nsw i32 %i.ay, -22
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110DigitValueEc.exit.thread.i

bb.k:                                             ; preds = %bb.i
  %i.bb = add i8 %.fr47.i, -97
  %or.cond5.i.i = icmp ult i8 %i.bb, 26
  br i1 %or.cond5.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bc = add nsw i32 %i.ay, -97
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110DigitValueEc.exit.thread.i

bb.m:                                             ; preds = %bb.k
  %i.bd = add nsw i32 %i.ay, -65
  %i.be = add i8 %.fr47.i, -91
  %or.cond.i = icmp ult i8 %i.be, -26
  br i1 %or.cond.i, label %.critedge, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110DigitValueEc.exit.thread.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110DigitValueEc.exit.thread.i: ; preds = %bb.m, %bb.l, %bb.j
  %.0.i41.i = phi i32 [ %i.bd, %bb.m ], [ %i.bc, %bb.l ], [ %i.ba, %bb.j ] ; 2 uses
  %i.bf = zext nneg i32 %i.av to i64
  %i.bg = zext nneg i32 %.0.i41.i to i64
  %i.bh = mul i64 %.02551.i, %i.bg
  %i.bi = add i64 %i.bh, %i.bf                    ; 2 uses
  %i.bj = icmp ugt i64 %i.bi, 1073741824
  br i1 %i.bj, label %.critedge, label %bb.n

bb.n:                                             ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110DigitValueEc.exit.thread.i
  %i.bk = trunc nuw nsw i64 %i.bi to i32          ; 4 uses
  %.not37.i = icmp ugt i32 %.03350.i, %i.as
  %.not38.i = icmp ult i32 %.03350.i, %i.at
  %i.bl = sub i32 %.03350.i, %.043101143
  %spec.select39.i = select i1 %.not38.i, i32 %i.bl, i32 26
  %.0.i = select i1 %.not37.i, i32 %spec.select39.i, i32 1 ; 2 uses
  %.not47.i = icmp ult i32 %.0.i41.i, %.0.i
  br i1 %.not47.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_113ScanNextDeltaERPKcS4_jRj.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bm = sub nsw i32 36, %.0.i
  %i.bn = zext i32 %i.bm to i64
  %i.bo = mul i64 %.02551.i, %i.bn
  %i.bp = add i32 %.03350.i, 36
  %.not.not.i = icmp eq ptr %i.aw, %i.c
  br i1 %.not.not.i, label %.critedge, label %bb.i, !llvm.loop !20

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_113ScanNextDeltaERPKcS4_jRj.exit: ; preds = %bb.n
  %i.bq = sub nsw i32 %i.bk, %.07298146
  %i.br = icmp eq i32 %.07298146, 0
  %i.bs = select i1 %i.br, i32 700, i32 2
  %i.bt = udiv i32 %i.bq, %i.bs                   ; 2 uses
  %i.bu = add nuw nsw i32 %.099145, 1             ; 5 uses
  %i.bv = udiv i32 %i.bt, %i.bu
  %i.bw = add nuw i32 %i.bv, %i.bt                ; 3 uses
  %i.bx = icmp ugt i32 %i.bw, 455
  br i1 %i.bx, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_113ScanNextDeltaERPKcS4_jRj.exit, %.lr.ph
  %.03794 = phi i32 [ %i.by, %.lr.ph ], [ %i.bw, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_113ScanNextDeltaERPKcS4_jRj.exit ] ; 2 uses
  %.14493 = phi i32 [ %i.bz, %.lr.ph ], [ 0, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_113ScanNextDeltaERPKcS4_jRj.exit ]
  %i.by = udiv i32 %.03794, 35                    ; 2 uses
  %i.bz = add i32 %.14493, 36                     ; 2 uses
  %i.ca = icmp ugt i32 %.03794, 15959
  br i1 %i.ca, label %.lr.ph, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %.lr.ph, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_113ScanNextDeltaERPKcS4_jRj.exit
  %.144.lcssa = phi i32 [ 0, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_113ScanNextDeltaERPKcS4_jRj.exit ], [ %i.bz, %.lr.ph ]
  %.037.lcssa = phi i32 [ %i.bw, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_113ScanNextDeltaERPKcS4_jRj.exit ], [ %i.by, %.lr.ph ]
  %i.cb = trunc nuw i32 %.037.lcssa to i16        ; 2 uses
  %.lhs.trunc = mul nuw i16 %i.cb, 36
  %.rhs.trunc = add nuw nsw i16 %i.cb, 38
  %i.cc = udiv i16 %.lhs.trunc, %.rhs.trunc
  %.zext = zext nneg i16 %i.cc to i32
  %i.cd = add i32 %.144.lcssa, %.zext
  %i.ce = udiv i32 %i.bk, %i.bu
  %i.cf = add i32 %i.ce, %.046100144              ; 2 uses
  %i.cg = urem i32 %i.bk, %i.bu                   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  %i.ch = zext i32 %i.cf to i64
  call void @_ZN4absl12lts_2025051218debugging_internal16Utf8ForCodePointC1Em(ptr noundef nonnull align 4 dereferenceable(8) %2, i64 noundef %i.ch)
  %i.ci = load i32, ptr %i.ad, align 4, !tbaa !22 ; 6 uses
  %.not84 = icmp eq i32 %i.ci, 0
  br i1 %.not84, label %.critedge.critedge, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.cj = add i32 %.040102142, 1                  ; 2 uses
  %i.ck = add i32 %i.cj, %i.ci
  %i.cl = zext i32 %i.ck to i64
  %i.cm = icmp ult i64 %i.j, %i.cl
  br i1 %i.cm, label %.critedge.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %spec.store.select.i = call i32 @llvm.umin.i32(i32 %i.cg, i32 255) ; 3 uses
  %i.cn = lshr i32 %spec.store.select.i, 5        ; 4 uses
  %i.co = shl nuw nsw i32 %spec.store.select.i, 1
  %i.cp = and i32 %i.co, 62
  %i.cq = zext nneg i32 %i.cp to i64              ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.cq              ; 2 uses
  %i.cr = xor i64 %notmask.i, -1                  ; 2 uses
  %i.cs = zext nneg i32 %i.cn to i64              ; 8 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cs ; 3 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !17 ; 2 uses
  %i.cv = and i64 %i.cu, %i.cr                    ; 3 uses
  %i.cw = and i64 %i.cv, 3074457345618258602
  %i.cx = insertelement <2 x i64> poison, i64 %i.cw, i64 0
  %i.cy = insertelement <2 x i64> %i.cx, i64 %i.cv, i64 1
  %i.cz = call range(i64 0, 63) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.cy)
  %i.da = trunc nuw nsw <2 x i64> %i.cz to <2 x i32> ; 2 uses
  %.not42.i = icmp eq i32 %i.cn, 0
  br i1 %.not42.i, label %.lr.ph48.i, label %.lr.ph.i53

.preheader.i:                                     ; preds = %.lr.ph.i53.6, %.lr.ph.i53.5, %.lr.ph.i53.4, %.lr.ph.i53.3, %.lr.ph.i53.2, %.lr.ph.i53.1, %.lr.ph.i53
  %.lcssa153 = phi <2 x i32> [ %i.dj, %.lr.ph.i53 ], [ %i.dt, %.lr.ph.i53.1 ], [ %i.ed, %.lr.ph.i53.2 ], [ %i.en, %.lr.ph.i53.3 ], [ %i.ex, %.lr.ph.i53.4 ], [ %i.fh, %.lr.ph.i53.5 ], [ %i.fr, %.lr.ph.i53.6 ] ; 2 uses
  %.not49.i = icmp eq i32 %i.cn, 7
  br i1 %.not49.i, label %_ZN4absl12lts_2025051218debugging_internal25BoundedUtf8LengthSequenceILj256EE32InsertAndReturnSumOfPredecessorsEjj.exit, label %.lr.ph48.i

.lr.ph.i53:                                       ; preds = %bb.q
  %i.db = getelementptr [8 x i8], ptr %1, i64 %i.cs
  %i.dc = getelementptr i8, ptr %i.db, i64 -8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !17
  %i.de = insertelement <2 x i64> poison, i64 %i.dd, i64 0
  %i.df = shufflevector <2 x i64> %i.de, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.dg = and <2 x i64> %i.df, <i64 -6148914691236517206, i64 -1>
  %i.dh = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.dg)
  %i.di = trunc nuw nsw <2 x i64> %i.dh to <2 x i32>
  %i.dj = add nuw nsw <2 x i32> %i.da, %i.di      ; 2 uses
  %indvars.iv.next.i55 = add nsw i64 %i.cs, -1    ; 2 uses
  %i.dk = icmp eq i64 %indvars.iv.next.i55, 0
  br i1 %i.dk, label %.preheader.i, label %.lr.ph.i53.1

.lr.ph.i53.1:                                     ; preds = %.lr.ph.i53
  %i.dl = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.next.i55
  %i.dm = getelementptr i8, ptr %i.dl, i64 -8
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !17
  %i.do = insertelement <2 x i64> poison, i64 %i.dn, i64 0
  %i.dp = shufflevector <2 x i64> %i.do, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.dq = and <2 x i64> %i.dp, <i64 -6148914691236517206, i64 -1>
  %i.dr = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.dq)
  %i.ds = trunc nuw nsw <2 x i64> %i.dr to <2 x i32>
  %i.dt = add nuw nsw <2 x i32> %i.dj, %i.ds      ; 2 uses
  %indvars.iv.next.i55.1 = add nsw i64 %i.cs, -2  ; 2 uses
  %i.du = icmp eq i64 %indvars.iv.next.i55.1, 0
  br i1 %i.du, label %.preheader.i, label %.lr.ph.i53.2

.lr.ph.i53.2:                                     ; preds = %.lr.ph.i53.1
  %i.dv = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.next.i55.1
  %i.dw = getelementptr i8, ptr %i.dv, i64 -8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !17
  %i.dy = insertelement <2 x i64> poison, i64 %i.dx, i64 0
  %i.dz = shufflevector <2 x i64> %i.dy, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ea = and <2 x i64> %i.dz, <i64 -6148914691236517206, i64 -1>
  %i.eb = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.ea)
  %i.ec = trunc nuw nsw <2 x i64> %i.eb to <2 x i32>
  %i.ed = add nuw nsw <2 x i32> %i.dt, %i.ec      ; 2 uses
  %indvars.iv.next.i55.2 = add nsw i64 %i.cs, -3  ; 2 uses
  %i.ee = icmp eq i64 %indvars.iv.next.i55.2, 0
  br i1 %i.ee, label %.preheader.i, label %.lr.ph.i53.3

.lr.ph.i53.3:                                     ; preds = %.lr.ph.i53.2
  %i.ef = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.next.i55.2
  %i.eg = getelementptr i8, ptr %i.ef, i64 -8
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !17
  %i.ei = insertelement <2 x i64> poison, i64 %i.eh, i64 0
  %i.ej = shufflevector <2 x i64> %i.ei, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ek = and <2 x i64> %i.ej, <i64 -6148914691236517206, i64 -1>
  %i.el = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.ek)
  %i.em = trunc nuw nsw <2 x i64> %i.el to <2 x i32>
  %i.en = add nuw nsw <2 x i32> %i.ed, %i.em      ; 2 uses
  %indvars.iv.next.i55.3 = add nsw i64 %i.cs, -4  ; 2 uses
  %i.eo = icmp eq i64 %indvars.iv.next.i55.3, 0
  br i1 %i.eo, label %.preheader.i, label %.lr.ph.i53.4

.lr.ph.i53.4:                                     ; preds = %.lr.ph.i53.3
  %i.ep = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.next.i55.3
  %i.eq = getelementptr i8, ptr %i.ep, i64 -8
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !17
  %i.es = insertelement <2 x i64> poison, i64 %i.er, i64 0
  %i.et = shufflevector <2 x i64> %i.es, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.eu = and <2 x i64> %i.et, <i64 -6148914691236517206, i64 -1>
  %i.ev = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.eu)
  %i.ew = trunc nuw nsw <2 x i64> %i.ev to <2 x i32>
  %i.ex = add nuw nsw <2 x i32> %i.en, %i.ew      ; 2 uses
  %indvars.iv.next.i55.4 = add nsw i64 %i.cs, -5  ; 2 uses
  %i.ey = icmp eq i64 %indvars.iv.next.i55.4, 0
  br i1 %i.ey, label %.preheader.i, label %.lr.ph.i53.5

.lr.ph.i53.5:                                     ; preds = %.lr.ph.i53.4
  %i.ez = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.next.i55.4
  %i.fa = getelementptr i8, ptr %i.ez, i64 -8
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !17
  %i.fc = insertelement <2 x i64> poison, i64 %i.fb, i64 0
  %i.fd = shufflevector <2 x i64> %i.fc, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.fe = and <2 x i64> %i.fd, <i64 -6148914691236517206, i64 -1>
  %i.ff = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.fe)
  %i.fg = trunc nuw nsw <2 x i64> %i.ff to <2 x i32>
  %i.fh = add nuw nsw <2 x i32> %i.ex, %i.fg      ; 2 uses
  %indvars.iv.next.i55.5 = add nsw i64 %i.cs, -6  ; 2 uses
  %i.fi = icmp eq i64 %indvars.iv.next.i55.5, 0
  br i1 %i.fi, label %.preheader.i, label %.lr.ph.i53.6

.lr.ph.i53.6:                                     ; preds = %.lr.ph.i53.5
  %i.fj = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.next.i55.5
  %i.fk = getelementptr i8, ptr %i.fj, i64 -8
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !17
  %i.fm = insertelement <2 x i64> poison, i64 %i.fl, i64 0
  %i.fn = shufflevector <2 x i64> %i.fm, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.fo = and <2 x i64> %i.fn, <i64 -6148914691236517206, i64 -1>
  %i.fp = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.fo)
  %i.fq = trunc nuw nsw <2 x i64> %i.fp to <2 x i32>
  %i.fr = add nuw nsw <2 x i32> %i.fh, %i.fq
  br label %.preheader.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph48.i.6, %.lr.ph48.i.5, %.lr.ph48.i.4, %.lr.ph48.i.3, %.lr.ph48.i.2, %.lr.ph48.i.1, %.lr.ph48.i
  %.pre54.i = load i64, ptr %i.ct, align 8, !tbaa !17 ; 2 uses
  %.pre55.i = and i64 %.pre54.i, %i.cr
  br label %_ZN4absl12lts_2025051218debugging_internal25BoundedUtf8LengthSequenceILj256EE32InsertAndReturnSumOfPredecessorsEjj.exit
end_hunk_0
