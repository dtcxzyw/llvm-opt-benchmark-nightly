Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/decode_rust_punycode?download=true
inline.NumInlined: 10
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.absl::lts_20260526::debugging_internal::DecodeRustPunycodeOptions" = type { ptr, ptr, ptr, ptr }
%"class.absl::lts_20260526::debugging_internal::BoundedUtf8LengthSequence" = type { [8 x i64] }
%"struct.absl::lts_20260526::debugging_internal::Utf8ForCodePoint" = type { [4 x i8], i32 }

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4absl12lts_2026052618debugging_internal18DecodeRustPunycodeENS1_25DecodeRustPunycodeOptionsE(ptr nofree noundef readonly byval(%"struct.absl::lts_20260526::debugging_internal::DecodeRustPunycodeOptions") align 8 captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.absl::lts_20260526::debugging_internal::BoundedUtf8LengthSequence", align 8 ; 26 uses
  %2 = alloca %"struct.absl::lts_20260526::debugging_internal::Utf8ForCodePoint", align 4 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !9      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14   ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15   ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = icmp eq ptr %i.g, %i.e
  br i1 %i.k, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_126ConsumeOptionalAsciiPrefixERPKcS4_PcS6_Rj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.e, align 1, !tbaa !16
  %i.l = ptrtoint ptr %i.c to i64
  %i.m = ptrtoint ptr %i.a to i64
  %i.n = sub i64 %i.l, %i.m                       ; 2 uses
  %.not57.i = icmp sgt i64 %i.n, 0
  br i1 %.not57.i, label %.lr.ph.i, label %bb.g

.lr.ph.i:                                         ; preds = %bb.b, %.thread.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.thread.i ], [ 0, %bb.b ] ; 3 uses
  %.04158.i = phi i32 [ %.14251.i, %.thread.i ], [ -1, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  %i.p = load i8, ptr %i.o, align 1, !tbaa !16    ; 3 uses
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
  br i1 %or.cond54.i, label %.thread.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_126ConsumeOptionalAsciiPrefixERPKcS4_PcS6_Rj.exit

.thread.i:                                        ; preds = %bb.c, %.lr.ph.i
  %.14251.i = phi i32 [ %i.r, %.lr.ph.i ], [ %.04158.i, %bb.c ] ; 6 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.n
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !17

._crit_edge.i:                                    ; preds = %.thread.i
  %i.v = icmp slt i32 %.14251.i, 0
  br i1 %i.v, label %bb.g, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  %i.w = icmp eq i32 %.14251.i, 0
  br i1 %i.w, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_126ConsumeOptionalAsciiPrefixERPKcS4_PcS6_Rj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = add nuw nsw i32 %.14251.i, 1
  %i.y = zext nneg i32 %i.x to i64                ; 2 uses
  %i.z = icmp slt i64 %i.j, %i.y
  br i1 %i.z, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_126ConsumeOptionalAsciiPrefixERPKcS4_PcS6_Rj.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = zext nneg i32 %.14251.i to i64          ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.e, ptr nonnull align 1 %i.a, i64 %i.aa, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.aa
  store i8 0, ptr %i.ab, align 1, !tbaa !16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.y
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i, %bb.f, %bb.b
  %.176.ph = phi ptr [ %i.a, %bb.b ], [ %i.ac, %bb.f ], [ %i.a, %._crit_edge.i ] ; 2 uses
  %.1.ph = phi i32 [ 0, %bb.b ], [ %.14251.i, %bb.f ], [ 0, %._crit_edge.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %1, i8 0, i64 64, i1 false), !tbaa !19
  %.not98 = icmp eq ptr %.176.ph, %i.c
  br i1 %.not98, label %._crit_edge107, label %.lr.ph106

.lr.ph106:                                        ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %umax = tail call i32 @llvm.umax.i32(i32 %.1.ph, i32 256)
  %exitcond143 = icmp ugt i32 %.1.ph, 255
  br i1 %exitcond143, label %.critedge, label %.lr.ph.i51.preheader

.lr.ph.i51.preheader:                             ; preds = %.lr.ph106
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

bb.h:                                             ; preds = %_ZN4absl12lts_2026052618debugging_internal25BoundedUtf8LengthSequenceILj256EE32InsertAndReturnSumOfPredecessorsEjj.exit
  %i.ar = add nuw nsw i32 %i.cf, 1
  %exitcond = icmp eq i32 %i.bt, %umax
  br i1 %exitcond, label %.critedge, label %.lr.ph.i51, !llvm.loop !21

.lr.ph.i51:                                       ; preds = %.lr.ph.i51.preheader, %bb.h
  %.07599149 = phi ptr [ %i.aw, %bb.h ], [ %.176.ph, %.lr.ph.i51.preheader ]
  %.073100148 = phi i32 [ %i.ar, %bb.h ], [ 0, %.lr.ph.i51.preheader ] ; 3 uses
  %.0101147 = phi i32 [ %i.bt, %bb.h ], [ %.1.ph, %.lr.ph.i51.preheader ]
  %.044102146 = phi i32 [ %i.ce, %bb.h ], [ 128, %.lr.ph.i51.preheader ]
  %.041103145 = phi i32 [ %i.cc, %bb.h ], [ 72, %.lr.ph.i51.preheader ] ; 3 uses
  %.038104144 = phi i32 [ %i.hh, %bb.h ], [ %.1.ph, %.lr.ph.i51.preheader ] ; 2 uses
  %i.as = add i32 %.041103145, 1
  %i.at = add i32 %.041103145, 26
  %i.au = zext nneg i32 %.073100148 to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i51
  %.174 = phi i64 [ %i.au, %.lr.ph.i51 ], [ %i.bh, %bb.o ]
  %i.av = phi ptr [ %.07599149, %.lr.ph.i51 ], [ %i.aw, %bb.o ] ; 2 uses
  %.02550.i = phi i32 [ 36, %.lr.ph.i51 ], [ %i.bn, %bb.o ] ; 4 uses
  %.02649.i = phi i64 [ 1, %.lr.ph.i51 ], [ %i.bm, %bb.o ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1 ; 4 uses
  %i.ax = load i8, ptr %i.av, align 1, !tbaa !16  ; 4 uses
  %i.ay = sext i8 %i.ax to i32                    ; 3 uses
  %i.az = add i8 %i.ax, -48
  %or.cond.i.i = icmp ult i8 %i.az, 10
  br i1 %or.cond.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ba = add nsw i32 %i.ay, -22
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_110DigitValueEc.exit.thread.i

bb.k:                                             ; preds = %bb.i
  %i.bb = add i8 %i.ax, -97
  %or.cond5.i.i = icmp ult i8 %i.bb, 26
  br i1 %or.cond5.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bc = add nsw i32 %i.ay, -97
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_110DigitValueEc.exit.thread.i

bb.m:                                             ; preds = %bb.k
  %i.bd = add nsw i32 %i.ay, -65
  %i.be = add i8 %i.ax, -91
  %or.cond.i = icmp ult i8 %i.be, -26
  br i1 %or.cond.i, label %.critedge, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_110DigitValueEc.exit.thread.i

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_110DigitValueEc.exit.thread.i: ; preds = %bb.m, %bb.l, %bb.j
  %.0.i41.i = phi i32 [ %i.bd, %bb.m ], [ %i.bc, %bb.l ], [ %i.ba, %bb.j ] ; 2 uses
  %i.bf = zext nneg i32 %.0.i41.i to i64
  %i.bg = mul i64 %.02649.i, %i.bf
  %i.bh = add i64 %i.bg, %.174                    ; 3 uses
  %i.bi = icmp ugt i64 %i.bh, 1073741824
  br i1 %i.bi, label %.critedge, label %bb.n

bb.n:                                             ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_110DigitValueEc.exit.thread.i
  %.not37.i = icmp ugt i32 %.02550.i, %i.as
  %.not38.i = icmp ult i32 %.02550.i, %i.at
  %i.bj = sub i32 %.02550.i, %.041103145
  %spec.select39.i = select i1 %.not38.i, i32 %i.bj, i32 26
  %.0.i = select i1 %.not37.i, i32 %spec.select39.i, i32 1 ; 2 uses
  %.not47.i = icmp ult i32 %.0.i41.i, %.0.i
  br i1 %.not47.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_113ScanNextDeltaERPKcS4_jRj.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = sub nsw i32 36, %.0.i
  %i.bl = zext i32 %i.bk to i64
  %i.bm = mul i64 %.02649.i, %i.bl
  %i.bn = add i32 %.02550.i, 36
  %.not.not.i = icmp eq ptr %i.aw, %i.c
  br i1 %.not.not.i, label %.critedge, label %bb.i, !llvm.loop !22

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_113ScanNextDeltaERPKcS4_jRj.exit: ; preds = %bb.n
  %i.bo = trunc nuw nsw i64 %i.bh to i32          ; 3 uses
  %i.bp = sub nsw i32 %i.bo, %.073100148
  %i.bq = icmp eq i32 %.073100148, 0
  %i.br = select i1 %i.bq, i32 700, i32 2
  %i.bs = udiv i32 %i.bp, %i.br                   ; 2 uses
  %i.bt = add nuw nsw i32 %.0101147, 1            ; 5 uses
  %i.bu = udiv i32 %i.bs, %i.bt
  %i.bv = add nuw i32 %i.bu, %i.bs                ; 3 uses
  %i.bw = icmp ugt i32 %i.bv, 455
  br i1 %i.bw, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_113ScanNextDeltaERPKcS4_jRj.exit, %.lr.ph
  %.03796 = phi i32 [ %i.bx, %.lr.ph ], [ %i.bv, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_113ScanNextDeltaERPKcS4_jRj.exit ] ; 2 uses
  %.14295 = phi i32 [ %i.by, %.lr.ph ], [ 0, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_113ScanNextDeltaERPKcS4_jRj.exit ]
  %i.bx = udiv i32 %.03796, 35                    ; 2 uses
  %i.by = add i32 %.14295, 36                     ; 2 uses
  %i.bz = icmp ugt i32 %.03796, 15959
  br i1 %i.bz, label %.lr.ph, label %._crit_edge, !llvm.loop !23

._crit_edge:                                      ; preds = %.lr.ph, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_113ScanNextDeltaERPKcS4_jRj.exit
  %.142.lcssa = phi i32 [ 0, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_113ScanNextDeltaERPKcS4_jRj.exit ], [ %i.by, %.lr.ph ]
  %.037.lcssa = phi i32 [ %i.bv, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_113ScanNextDeltaERPKcS4_jRj.exit ], [ %i.bx, %.lr.ph ]
  %i.ca = trunc nuw i32 %.037.lcssa to i16        ; 2 uses
  %.lhs.trunc = mul nuw i16 %i.ca, 36
  %.rhs.trunc = add nuw nsw i16 %i.ca, 38
  %i.cb = udiv i16 %.lhs.trunc, %.rhs.trunc
  %.zext = zext nneg i16 %i.cb to i32
  %i.cc = add i32 %.142.lcssa, %.zext
  %i.cd = udiv i32 %i.bo, %i.bt
  %i.ce = add i32 %i.cd, %.044102146              ; 2 uses
  %i.cf = urem i32 %i.bo, %i.bt                   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  %i.cg = zext i32 %i.ce to i64
  call void @_ZN4absl12lts_2026052618debugging_internal16Utf8ForCodePointC1Em(ptr noundef nonnull align 4 dereferenceable(8) %2, i64 noundef %i.cg)
  %i.ch = load i32, ptr %i.ad, align 4, !tbaa !24 ; 6 uses
  %.not85 = icmp eq i32 %i.ch, 0
  br i1 %.not85, label %.critedge.critedge, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.ci = add i32 %.038104144, 1                  ; 2 uses
  %i.cj = add i32 %i.ci, %i.ch
  %i.ck = zext i32 %i.cj to i64
  %i.cl = icmp ult i64 %i.j, %i.ck
  br i1 %i.cl, label %.critedge.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %spec.store.select.i = call i32 @llvm.umin.i32(i32 %i.cf, i32 255) ; 3 uses
  %i.cm = lshr i32 %spec.store.select.i, 5        ; 4 uses
  %i.cn = shl nuw nsw i32 %spec.store.select.i, 1
  %i.co = and i32 %i.cn, 62
  %i.cp = zext nneg i32 %i.co to i64              ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.cp              ; 2 uses
  %i.cq = xor i64 %notmask.i, -1                  ; 2 uses
  %i.cr = zext nneg i32 %i.cm to i64              ; 8 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cr ; 3 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !19 ; 2 uses
  %i.cu = and i64 %i.ct, %i.cq                    ; 3 uses
  %i.cv = and i64 %i.cu, 3074457345618258602
  %i.cw = insertelement <2 x i64> poison, i64 %i.cv, i64 0
  %i.cx = insertelement <2 x i64> %i.cw, i64 %i.cu, i64 1
  %i.cy = call range(i64 0, 63) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.cx)
  %i.cz = trunc nuw nsw <2 x i64> %i.cy to <2 x i32> ; 2 uses
  %.not42.i = icmp eq i32 %i.cm, 0
  br i1 %.not42.i, label %.lr.ph48.i, label %.lr.ph.i53

.preheader.i:                                     ; preds = %.lr.ph.i53.6, %.lr.ph.i53.5, %.lr.ph.i53.4, %.lr.ph.i53.3, %.lr.ph.i53.2, %.lr.ph.i53.1, %.lr.ph.i53
  %.lcssa155 = phi <2 x i32> [ %i.di, %.lr.ph.i53 ], [ %i.ds, %.lr.ph.i53.1 ], [ %i.ec, %.lr.ph.i53.2 ], [ %i.em, %.lr.ph.i53.3 ], [ %i.ew, %.lr.ph.i53.4 ], [ %i.fg, %.lr.ph.i53.5 ], [ %i.fq, %.lr.ph.i53.6 ] ; 2 uses
  %.not49.i = icmp eq i32 %i.cm, 7
  br i1 %.not49.i, label %_ZN4absl12lts_2026052618debugging_internal25BoundedUtf8LengthSequenceILj256EE32InsertAndReturnSumOfPredecessorsEjj.exit, label %.lr.ph48.i

.lr.ph.i53:                                       ; preds = %bb.q
  %i.da = getelementptr [8 x i8], ptr %1, i64 %i.cr
  %i.db = getelementptr i8, ptr %i.da, i64 -8
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !19
  %i.dd = insertelement <2 x i64> poison, i64 %i.dc, i64 0
  %i.de = shufflevector <2 x i64> %i.dd, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.df = and <2 x i64> %i.de, <i64 -6148914691236517206, i64 -1>
  %i.dg = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.df)
  %i.dh = trunc nuw nsw <2 x i64> %i.dg to <2 x i32>
  %i.di = add nuw nsw <2 x i32> %i.cz, %i.dh      ; 2 uses
  %indvars.iv.next.i55 = add nsw i64 %i.cr, -1    ; 2 uses
  %i.dj = icmp eq i64 %indvars.iv.next.i55, 0
  br i1 %i.dj, label %.preheader.i, label %.lr.ph.i53.1

.lr.ph.i53.1:                                     ; preds = %.lr.ph.i53
  %i.dk = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.next.i55
  %i.dl = getelementptr i8, ptr %i.dk, i64 -8
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !19
  %i.dn = insertelement <2 x i64> poison, i64 %i.dm, i64 0
  %i.do = shufflevector <2 x i64> %i.dn, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.dp = and <2 x i64> %i.do, <i64 -6148914691236517206, i64 -1>
  %i.dq = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.dp)
  %i.dr = trunc nuw nsw <2 x i64> %i.dq to <2 x i32>
  %i.ds = add nuw nsw <2 x i32> %i.di, %i.dr      ; 2 uses
  %indvars.iv.next.i55.1 = add nsw i64 %i.cr, -2  ; 2 uses
  %i.dt = icmp eq i64 %indvars.iv.next.i55.1, 0
  br i1 %i.dt, label %.preheader.i, label %.lr.ph.i53.2

.lr.ph.i53.2:                                     ; preds = %.lr.ph.i53.1
  %i.du = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.next.i55.1
  %i.dv = getelementptr i8, ptr %i.du, i64 -8
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !19
  %i.dx = insertelement <2 x i64> poison, i64 %i.dw, i64 0
  %i.dy = shufflevector <2 x i64> %i.dx, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.dz = and <2 x i64> %i.dy, <i64 -6148914691236517206, i64 -1>
  %i.ea = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.dz)
  %i.eb = trunc nuw nsw <2 x i64> %i.ea to <2 x i32>
  %i.ec = add nuw nsw <2 x i32> %i.ds, %i.eb      ; 2 uses
  %indvars.iv.next.i55.2 = add nsw i64 %i.cr, -3  ; 2 uses
  %i.ed = icmp eq i64 %indvars.iv.next.i55.2, 0
  br i1 %i.ed, label %.preheader.i, label %.lr.ph.i53.3

.lr.ph.i53.3:                                     ; preds = %.lr.ph.i53.2
  %i.ee = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.next.i55.2
  %i.ef = getelementptr i8, ptr %i.ee, i64 -8
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !19
  %i.eh = insertelement <2 x i64> poison, i64 %i.eg, i64 0
  %i.ei = shufflevector <2 x i64> %i.eh, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ej = and <2 x i64> %i.ei, <i64 -6148914691236517206, i64 -1>
  %i.ek = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.ej)
  %i.el = trunc nuw nsw <2 x i64> %i.ek to <2 x i32>
  %i.em = add nuw nsw <2 x i32> %i.ec, %i.el      ; 2 uses
  %indvars.iv.next.i55.3 = add nsw i64 %i.cr, -4  ; 2 uses
  %i.en = icmp eq i64 %indvars.iv.next.i55.3, 0
  br i1 %i.en, label %.preheader.i, label %.lr.ph.i53.4

.lr.ph.i53.4:                                     ; preds = %.lr.ph.i53.3
  %i.eo = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.next.i55.3
  %i.ep = getelementptr i8, ptr %i.eo, i64 -8
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !19
  %i.er = insertelement <2 x i64> poison, i64 %i.eq, i64 0
  %i.es = shufflevector <2 x i64> %i.er, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.et = and <2 x i64> %i.es, <i64 -6148914691236517206, i64 -1>
  %i.eu = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.et)
  %i.ev = trunc nuw nsw <2 x i64> %i.eu to <2 x i32>
  %i.ew = add nuw nsw <2 x i32> %i.em, %i.ev      ; 2 uses
  %indvars.iv.next.i55.4 = add nsw i64 %i.cr, -5  ; 2 uses
  %i.ex = icmp eq i64 %indvars.iv.next.i55.4, 0
  br i1 %i.ex, label %.preheader.i, label %.lr.ph.i53.5

.lr.ph.i53.5:                                     ; preds = %.lr.ph.i53.4
  %i.ey = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.next.i55.4
  %i.ez = getelementptr i8, ptr %i.ey, i64 -8
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !19
  %i.fb = insertelement <2 x i64> poison, i64 %i.fa, i64 0
  %i.fc = shufflevector <2 x i64> %i.fb, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.fd = and <2 x i64> %i.fc, <i64 -6148914691236517206, i64 -1>
  %i.fe = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.fd)
  %i.ff = trunc nuw nsw <2 x i64> %i.fe to <2 x i32>
  %i.fg = add nuw nsw <2 x i32> %i.ew, %i.ff      ; 2 uses
  %indvars.iv.next.i55.5 = add nsw i64 %i.cr, -6  ; 2 uses
  %i.fh = icmp eq i64 %indvars.iv.next.i55.5, 0
  br i1 %i.fh, label %.preheader.i, label %.lr.ph.i53.6

.lr.ph.i53.6:                                     ; preds = %.lr.ph.i53.5
  %i.fi = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.next.i55.5
  %i.fj = getelementptr i8, ptr %i.fi, i64 -8
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !19
  %i.fl = insertelement <2 x i64> poison, i64 %i.fk, i64 0
  %i.fm = shufflevector <2 x i64> %i.fl, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.fn = and <2 x i64> %i.fm, <i64 -6148914691236517206, i64 -1>
  %i.fo = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.fn)
  %i.fp = trunc nuw nsw <2 x i64> %i.fo to <2 x i32>
  %i.fq = add nuw nsw <2 x i32> %i.fg, %i.fp
  br label %.preheader.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph48.i.6, %.lr.ph48.i.5, %.lr.ph48.i.4, %.lr.ph48.i.3, %.lr.ph48.i.2, %.lr.ph48.i.1, %.lr.ph48.i
  %.pre54.i = load i64, ptr %i.cs, align 8, !tbaa !19 ; 2 uses
  %.pre55.i = and i64 %.pre54.i, %i.cq
  br label %_ZN4absl12lts_2026052618debugging_internal25BoundedUtf8LengthSequenceILj256EE32InsertAndReturnSumOfPredecessorsEjj.exit

.lr.ph48.i:                                       ; preds = %bb.q, %.preheader.i
  %i.fr = phi <2 x i32> [ %.lcssa155, %.preheader.i ], [ %i.cz, %bb.q ]
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !19
  %i.fs = load i64, ptr %i.af, align 8, !tbaa !19 ; 2 uses
  %i.ft = call i64 @llvm.fshl.i64(i64 %.pre.i, i64 %i.fs, i64 2)
  store i64 %i.ft, ptr %i.ae, align 8, !tbaa !19
  %i.fu = icmp ult i32 %i.cf, 192
  br i1 %i.fu, label %.lr.ph48.i.1, label %._crit_edge.loopexit.i

.lr.ph48.i.1:                                     ; preds = %.lr.ph48.i
  %i.fv = load i64, ptr %i.ah, align 8, !tbaa !19 ; 2 uses
  %i.fw = call i64 @llvm.fshl.i64(i64 %i.fs, i64 %i.fv, i64 2)
  store i64 %i.fw, ptr %i.ag, align 8, !tbaa !19
  %i.fx = icmp ult i32 %i.cf, 160
  br i1 %i.fx, label %.lr.ph48.i.2, label %._crit_edge.loopexit.i

.lr.ph48.i.2:                                     ; preds = %.lr.ph48.i.1
  %i.fy = load i64, ptr %i.aj, align 8, !tbaa !19 ; 2 uses
  %i.fz = call i64 @llvm.fshl.i64(i64 %i.fv, i64 %i.fy, i64 2)
  store i64 %i.fz, ptr %i.ai, align 8, !tbaa !19
  %i.ga = icmp ult i32 %i.cf, 128
  br i1 %i.ga, label %.lr.ph48.i.3, label %._crit_edge.loopexit.i

.lr.ph48.i.3:                                     ; preds = %.lr.ph48.i.2
  %i.gb = load i64, ptr %i.al, align 8, !tbaa !19 ; 2 uses
end_hunk_0
