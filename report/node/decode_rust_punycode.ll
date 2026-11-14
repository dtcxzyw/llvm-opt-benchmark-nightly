Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/decode_rust_punycode?download=true
inline.NumInlined: 11
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.absl::debugging_internal::DecodeRustPunycodeOptions" = type { ptr, ptr, ptr, ptr }
%"class.absl::debugging_internal::BoundedUtf8LengthSequence" = type { [8 x i64] }
%"struct.absl::debugging_internal::Utf8ForCodePoint" = type { [4 x i8], i32 }

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4absl18debugging_internal18DecodeRustPunycodeENS0_25DecodeRustPunycodeOptionsE(ptr nofree noundef readonly byval(%"struct.absl::debugging_internal::DecodeRustPunycodeOptions") align 8 captures(none) %0) local_unnamed_addr #0 !guid !9 {
bb.a:
  %1 = alloca %"class.absl::debugging_internal::BoundedUtf8LengthSequence", align 8 ; 26 uses
  %2 = alloca %"struct.absl::debugging_internal::Utf8ForCodePoint", align 4 ; 6 uses
  %i.a = load ptr, ptr %0, align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = icmp eq ptr %i.g, %i.e
  br i1 %i.k, label %_ZN4absl18debugging_internal12_GLOBAL__N_126ConsumeOptionalAsciiPrefixERPKcS3_PcS5_Rj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.e, align 1
  %i.l = ptrtoint ptr %i.c to i64
  %i.m = ptrtoint ptr %i.a to i64
  %i.n = sub i64 %i.l, %i.m                       ; 2 uses
  %.not56.i = icmp sgt i64 %i.n, 0
  br i1 %.not56.i, label %.lr.ph.i, label %bb.g

.lr.ph.i:                                         ; preds = %bb.b, %.thread.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.thread.i ], [ 0, %bb.b ] ; 3 uses
  %.04157.i = phi i32 [ %.14251.i, %.thread.i ], [ -1, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  %i.p = load i8, ptr %i.o, align 1               ; 3 uses
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
  br i1 %or.cond54.i, label %.thread.i, label %_ZN4absl18debugging_internal12_GLOBAL__N_126ConsumeOptionalAsciiPrefixERPKcS3_PcS5_Rj.exit

.thread.i:                                        ; preds = %bb.c, %.lr.ph.i
  %.14251.i = phi i32 [ %i.r, %.lr.ph.i ], [ %.04157.i, %bb.c ] ; 6 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.n
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !5

._crit_edge.i:                                    ; preds = %.thread.i
  %i.v = icmp slt i32 %.14251.i, 0
  br i1 %i.v, label %bb.g, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  %i.w = icmp eq i32 %.14251.i, 0
  br i1 %i.w, label %_ZN4absl18debugging_internal12_GLOBAL__N_126ConsumeOptionalAsciiPrefixERPKcS3_PcS5_Rj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = add nuw nsw i32 %.14251.i, 1
  %i.y = zext nneg i32 %i.x to i64                ; 2 uses
  %i.z = icmp slt i64 %i.j, %i.y
  br i1 %i.z, label %_ZN4absl18debugging_internal12_GLOBAL__N_126ConsumeOptionalAsciiPrefixERPKcS3_PcS5_Rj.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = zext nneg i32 %.14251.i to i64          ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.e, ptr nonnull align 1 %i.a, i64 %i.aa, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.aa
  store i8 0, ptr %i.ab, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.y
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i, %bb.f, %bb.b
  %.178.ph = phi ptr [ %i.a, %bb.b ], [ %i.ac, %bb.f ], [ %i.a, %._crit_edge.i ] ; 2 uses
  %.1.ph = phi i32 [ 0, %bb.b ], [ %.14251.i, %bb.f ], [ 0, %._crit_edge.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %1, i8 0, i64 64, i1 false)
  %.not100 = icmp eq ptr %.178.ph, %i.c
  br i1 %.not100, label %._crit_edge109, label %.lr.ph108

.lr.ph108:                                        ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %umax = tail call i32 @llvm.umax.i32(i32 %.1.ph, i32 256)
  %exitcond145 = icmp ugt i32 %.1.ph, 255
  br i1 %exitcond145, label %.critedge, label %.lr.ph.i51.preheader

.lr.ph.i51.preheader:                             ; preds = %.lr.ph108
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

bb.h:                                             ; preds = %_ZN4absl18debugging_internal25BoundedUtf8LengthSequenceILj256EE32InsertAndReturnSumOfPredecessorsEjj.exit
  %i.ar = add nuw nsw i32 %i.ce, 1
  %exitcond = icmp eq i32 %i.bt, %umax
  br i1 %exitcond, label %.critedge, label %.lr.ph.i51, !llvm.loop !6

.lr.ph.i51:                                       ; preds = %.lr.ph.i51.preheader, %bb.h
  %.077101151 = phi ptr [ %i.aw, %bb.h ], [ %.178.ph, %.lr.ph.i51.preheader ]
  %.075102150 = phi i32 [ %i.ar, %bb.h ], [ 0, %.lr.ph.i51.preheader ] ; 3 uses
  %.0103149 = phi i32 [ %i.bt, %bb.h ], [ %.1.ph, %.lr.ph.i51.preheader ]
  %.044104148 = phi i32 [ %i.cd, %bb.h ], [ 128, %.lr.ph.i51.preheader ]
  %.041105147 = phi i32 [ %i.cb, %bb.h ], [ 72, %.lr.ph.i51.preheader ] ; 3 uses
  %.038106146 = phi i32 [ %i.hg, %bb.h ], [ %.1.ph, %.lr.ph.i51.preheader ] ; 2 uses
  %i.as = add i32 %.041105147, 1
  %i.at = add i32 %.041105147, 26
  %i.au = zext nneg i32 %.075102150 to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i51
  %.176 = phi i64 [ %i.au, %.lr.ph.i51 ], [ %i.bh, %bb.o ]
  %i.av = phi ptr [ %.077101151, %.lr.ph.i51 ], [ %i.aw, %bb.o ] ; 2 uses
  %.02550.i = phi i32 [ 36, %.lr.ph.i51 ], [ %i.bn, %bb.o ] ; 4 uses
  %.02649.i = phi i64 [ 1, %.lr.ph.i51 ], [ %i.bm, %bb.o ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1 ; 4 uses
  %i.ax = load i8, ptr %i.av, align 1             ; 4 uses
  %i.ay = sext i8 %i.ax to i32                    ; 3 uses
  %i.az = add i8 %i.ax, -48
  %or.cond.i.i = icmp ult i8 %i.az, 10
  br i1 %or.cond.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ba = add nsw i32 %i.ay, -22
  br label %_ZN4absl18debugging_internal12_GLOBAL__N_110DigitValueEc.exit.thread.i

bb.k:                                             ; preds = %bb.i
  %i.bb = add i8 %i.ax, -97
  %or.cond5.i.i = icmp ult i8 %i.bb, 26
  br i1 %or.cond5.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bc = add nsw i32 %i.ay, -97
  br label %_ZN4absl18debugging_internal12_GLOBAL__N_110DigitValueEc.exit.thread.i

bb.m:                                             ; preds = %bb.k
  %i.bd = add nsw i32 %i.ay, -65
  %i.be = add i8 %i.ax, -91
  %or.cond.i = icmp ult i8 %i.be, -26
  br i1 %or.cond.i, label %.critedge, label %_ZN4absl18debugging_internal12_GLOBAL__N_110DigitValueEc.exit.thread.i

_ZN4absl18debugging_internal12_GLOBAL__N_110DigitValueEc.exit.thread.i: ; preds = %bb.m, %bb.l, %bb.j
  %.0.i41.i = phi i32 [ %i.bd, %bb.m ], [ %i.bc, %bb.l ], [ %i.ba, %bb.j ] ; 2 uses
  %i.bf = zext nneg i32 %.0.i41.i to i64
  %i.bg = mul i64 %.02649.i, %i.bf
  %i.bh = add i64 %i.bg, %.176                    ; 3 uses
  %i.bi = icmp ugt i64 %i.bh, 1073741824
  br i1 %i.bi, label %.critedge, label %bb.n

bb.n:                                             ; preds = %_ZN4absl18debugging_internal12_GLOBAL__N_110DigitValueEc.exit.thread.i
  %.not37.i = icmp ugt i32 %.02550.i, %i.as
  %.not38.i = icmp ult i32 %.02550.i, %i.at
  %i.bj = sub i32 %.02550.i, %.041105147
  %spec.select39.i = select i1 %.not38.i, i32 %i.bj, i32 26
  %.0.i = select i1 %.not37.i, i32 %spec.select39.i, i32 1 ; 2 uses
  %.not47.i = icmp ult i32 %.0.i41.i, %.0.i
  br i1 %.not47.i, label %_ZN4absl18debugging_internal12_GLOBAL__N_113ScanNextDeltaERPKcS3_jRj.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = sub nsw i32 36, %.0.i
  %i.bl = zext i32 %i.bk to i64
  %i.bm = mul i64 %.02649.i, %i.bl
  %i.bn = add i32 %.02550.i, 36
  %.not.not.i = icmp eq ptr %i.aw, %i.c
  br i1 %.not.not.i, label %.critedge, label %bb.i, !llvm.loop !7

_ZN4absl18debugging_internal12_GLOBAL__N_113ScanNextDeltaERPKcS3_jRj.exit: ; preds = %bb.n
  %i.bo = trunc nuw nsw i64 %i.bh to i32          ; 3 uses
  %i.bp = sub nsw i32 %i.bo, %.075102150
  %i.bq = icmp eq i32 %.075102150, 0
  %i.br = select i1 %i.bq, i32 700, i32 2
  %i.bs = udiv i32 %i.bp, %i.br                   ; 2 uses
  %i.bt = add nuw nsw i32 %.0103149, 1            ; 5 uses
  %i.bu = udiv i32 %i.bs, %i.bt
  %i.bv = add nuw i32 %i.bu, %i.bs                ; 3 uses
  %i.bw = icmp ugt i32 %i.bv, 455
  br i1 %i.bw, label %.lr.ph.a, label %._crit_edge

.lr.ph.a:                                         ; preds = %_ZN4absl18debugging_internal12_GLOBAL__N_113ScanNextDeltaERPKcS3_jRj.exit, %.lr.ph.a
  %.03798 = phi i32 [ %i.bx, %.lr.ph.a ], [ %i.bv, %_ZN4absl18debugging_internal12_GLOBAL__N_113ScanNextDeltaERPKcS3_jRj.exit ] ; 2 uses
  %.14297 = phi i32 [ %3, %.lr.ph.a ], [ 0, %_ZN4absl18debugging_internal12_GLOBAL__N_113ScanNextDeltaERPKcS3_jRj.exit ]
  %i.bx = udiv i32 %.03798, 35                    ; 2 uses
  %3 = add i32 %.14297, 36                        ; 2 uses
  %i.by = icmp ugt i32 %.03798, 15959
  br i1 %i.by, label %.lr.ph.a, label %._crit_edge, !llvm.loop !8

._crit_edge:                                      ; preds = %.lr.ph.a, %_ZN4absl18debugging_internal12_GLOBAL__N_113ScanNextDeltaERPKcS3_jRj.exit
  %.142.lcssa = phi i32 [ 0, %_ZN4absl18debugging_internal12_GLOBAL__N_113ScanNextDeltaERPKcS3_jRj.exit ], [ %3, %.lr.ph.a ]
  %.037.lcssa = phi i32 [ %i.bv, %_ZN4absl18debugging_internal12_GLOBAL__N_113ScanNextDeltaERPKcS3_jRj.exit ], [ %i.bx, %.lr.ph.a ]
  %i.bz = trunc nuw i32 %.037.lcssa to i16        ; 2 uses
  %.lhs.trunc = mul nuw i16 %i.bz, 36
  %.rhs.trunc = add nuw nsw i16 %i.bz, 38
  %i.ca = udiv i16 %.lhs.trunc, %.rhs.trunc
  %.zext = zext nneg i16 %i.ca to i32
  %i.cb = add i32 %.142.lcssa, %.zext
  %i.cc = udiv i32 %i.bo, %i.bt
  %i.cd = add i32 %i.cc, %.044104148              ; 2 uses
  %i.ce = urem i32 %i.bo, %i.bt                   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  %i.cf = zext i32 %i.cd to i64
  call void @_ZN4absl18debugging_internal16Utf8ForCodePointC1Em(ptr noundef nonnull align 4 dereferenceable(8) %2, i64 noundef %i.cf) #5
  %i.cg = load i32, ptr %i.ad, align 4            ; 6 uses
  %.not87 = icmp eq i32 %i.cg, 0
  br i1 %.not87, label %.critedge.critedge, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.ch = add i32 %.038106146, 1                  ; 2 uses
  %i.ci = add i32 %i.ch, %i.cg
  %i.cj = zext i32 %i.ci to i64
  %i.ck = icmp ult i64 %i.j, %i.cj
  br i1 %i.ck, label %.critedge.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %spec.store.select.i = call i32 @llvm.umin.i32(i32 %i.ce, i32 255) ; 3 uses
  %i.cl = lshr i32 %spec.store.select.i, 5        ; 4 uses
  %i.cm = shl nuw nsw i32 %spec.store.select.i, 1
  %i.cn = and i32 %i.cm, 62
  %i.co = zext nneg i32 %i.cn to i64              ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.co              ; 2 uses
  %i.cp = xor i64 %notmask.i, -1                  ; 2 uses
  %i.cq = zext nneg i32 %i.cl to i64              ; 8 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cq ; 3 uses
  %i.cs = load i64, ptr %i.cr, align 8            ; 2 uses
  %i.ct = and i64 %i.cs, %i.cp                    ; 3 uses
  %i.cu = and i64 %i.ct, 3074457345618258602
  %i.cv = insertelement <2 x i64> poison, i64 %i.cu, i64 0
  %i.cw = insertelement <2 x i64> %i.cv, i64 %i.ct, i64 1
  %i.cx = call range(i64 0, 63) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.cw)
  %i.cy = trunc nuw nsw <2 x i64> %i.cx to <2 x i32> ; 2 uses
  %.not42.i = icmp eq i32 %i.cl, 0
  br i1 %.not42.i, label %.lr.ph48.i, label %.lr.ph.i53

.preheader.i:                                     ; preds = %.lr.ph.i53.6, %.lr.ph.i53.5, %.lr.ph.i53.4, %.lr.ph.i53.3, %.lr.ph.i53.2, %.lr.ph.i53.1, %.lr.ph.i53
  %.lcssa157 = phi <2 x i32> [ %i.dh, %.lr.ph.i53 ], [ %i.dr, %.lr.ph.i53.1 ], [ %i.eb, %.lr.ph.i53.2 ], [ %i.el, %.lr.ph.i53.3 ], [ %i.ev, %.lr.ph.i53.4 ], [ %i.ff, %.lr.ph.i53.5 ], [ %i.fp, %.lr.ph.i53.6 ] ; 2 uses
  %.not49.i = icmp eq i32 %i.cl, 7
  br i1 %.not49.i, label %_ZN4absl18debugging_internal25BoundedUtf8LengthSequenceILj256EE32InsertAndReturnSumOfPredecessorsEjj.exit, label %.lr.ph48.i

.lr.ph.i53:                                       ; preds = %bb.q
  %i.cz = getelementptr [8 x i8], ptr %1, i64 %i.cq
  %i.da = getelementptr i8, ptr %i.cz, i64 -8
  %i.db = load i64, ptr %i.da, align 8
  %i.dc = insertelement <2 x i64> poison, i64 %i.db, i64 0
  %i.dd = shufflevector <2 x i64> %i.dc, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.de = and <2 x i64> %i.dd, <i64 -6148914691236517206, i64 -1>
  %i.df = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.de)
  %i.dg = trunc nuw nsw <2 x i64> %i.df to <2 x i32>
  %i.dh = add nuw nsw <2 x i32> %i.cy, %i.dg      ; 2 uses
  %indvars.iv.next.i55 = add nsw i64 %i.cq, -1    ; 2 uses
  %i.di = icmp eq i64 %indvars.iv.next.i55, 0
  br i1 %i.di, label %.preheader.i, label %.lr.ph.i53.1

.lr.ph.i53.1:                                     ; preds = %.lr.ph.i53
  %i.dj = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.next.i55
  %i.dk = getelementptr i8, ptr %i.dj, i64 -8
  %i.dl = load i64, ptr %i.dk, align 8
  %i.dm = insertelement <2 x i64> poison, i64 %i.dl, i64 0
  %i.dn = shufflevector <2 x i64> %i.dm, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.do = and <2 x i64> %i.dn, <i64 -6148914691236517206, i64 -1>
  %i.dp = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.do)
  %i.dq = trunc nuw nsw <2 x i64> %i.dp to <2 x i32>
  %i.dr = add nuw nsw <2 x i32> %i.dh, %i.dq      ; 2 uses
  %indvars.iv.next.i55.1 = add nsw i64 %i.cq, -2  ; 2 uses
  %i.ds = icmp eq i64 %indvars.iv.next.i55.1, 0
  br i1 %i.ds, label %.preheader.i, label %.lr.ph.i53.2

.lr.ph.i53.2:                                     ; preds = %.lr.ph.i53.1
  %i.dt = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.next.i55.1
  %i.du = getelementptr i8, ptr %i.dt, i64 -8
  %i.dv = load i64, ptr %i.du, align 8
  %i.dw = insertelement <2 x i64> poison, i64 %i.dv, i64 0
  %i.dx = shufflevector <2 x i64> %i.dw, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.dy = and <2 x i64> %i.dx, <i64 -6148914691236517206, i64 -1>
  %i.dz = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.dy)
  %i.ea = trunc nuw nsw <2 x i64> %i.dz to <2 x i32>
  %i.eb = add nuw nsw <2 x i32> %i.dr, %i.ea      ; 2 uses
  %indvars.iv.next.i55.2 = add nsw i64 %i.cq, -3  ; 2 uses
  %i.ec = icmp eq i64 %indvars.iv.next.i55.2, 0
  br i1 %i.ec, label %.preheader.i, label %.lr.ph.i53.3

.lr.ph.i53.3:                                     ; preds = %.lr.ph.i53.2
  %i.ed = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.next.i55.2
  %i.ee = getelementptr i8, ptr %i.ed, i64 -8
  %i.ef = load i64, ptr %i.ee, align 8
  %i.eg = insertelement <2 x i64> poison, i64 %i.ef, i64 0
  %i.eh = shufflevector <2 x i64> %i.eg, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ei = and <2 x i64> %i.eh, <i64 -6148914691236517206, i64 -1>
  %i.ej = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.ei)
  %i.ek = trunc nuw nsw <2 x i64> %i.ej to <2 x i32>
  %i.el = add nuw nsw <2 x i32> %i.eb, %i.ek      ; 2 uses
  %indvars.iv.next.i55.3 = add nsw i64 %i.cq, -4  ; 2 uses
  %i.em = icmp eq i64 %indvars.iv.next.i55.3, 0
  br i1 %i.em, label %.preheader.i, label %.lr.ph.i53.4

.lr.ph.i53.4:                                     ; preds = %.lr.ph.i53.3
  %i.en = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.next.i55.3
  %i.eo = getelementptr i8, ptr %i.en, i64 -8
  %i.ep = load i64, ptr %i.eo, align 8
  %i.eq = insertelement <2 x i64> poison, i64 %i.ep, i64 0
  %i.er = shufflevector <2 x i64> %i.eq, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.es = and <2 x i64> %i.er, <i64 -6148914691236517206, i64 -1>
  %i.et = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.es)
  %i.eu = trunc nuw nsw <2 x i64> %i.et to <2 x i32>
  %i.ev = add nuw nsw <2 x i32> %i.el, %i.eu      ; 2 uses
  %indvars.iv.next.i55.4 = add nsw i64 %i.cq, -5  ; 2 uses
  %i.ew = icmp eq i64 %indvars.iv.next.i55.4, 0
  br i1 %i.ew, label %.preheader.i, label %.lr.ph.i53.5

.lr.ph.i53.5:                                     ; preds = %.lr.ph.i53.4
  %i.ex = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.next.i55.4
  %i.ey = getelementptr i8, ptr %i.ex, i64 -8
  %i.ez = load i64, ptr %i.ey, align 8
  %i.fa = insertelement <2 x i64> poison, i64 %i.ez, i64 0
  %i.fb = shufflevector <2 x i64> %i.fa, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.fc = and <2 x i64> %i.fb, <i64 -6148914691236517206, i64 -1>
  %i.fd = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.fc)
  %i.fe = trunc nuw nsw <2 x i64> %i.fd to <2 x i32>
  %i.ff = add nuw nsw <2 x i32> %i.ev, %i.fe      ; 2 uses
  %indvars.iv.next.i55.5 = add nsw i64 %i.cq, -6  ; 2 uses
  %i.fg = icmp eq i64 %indvars.iv.next.i55.5, 0
  br i1 %i.fg, label %.preheader.i, label %.lr.ph.i53.6

.lr.ph.i53.6:                                     ; preds = %.lr.ph.i53.5
  %i.fh = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.next.i55.5
  %i.fi = getelementptr i8, ptr %i.fh, i64 -8
  %i.fj = load i64, ptr %i.fi, align 8
  %i.fk = insertelement <2 x i64> poison, i64 %i.fj, i64 0
  %i.fl = shufflevector <2 x i64> %i.fk, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.fm = and <2 x i64> %i.fl, <i64 -6148914691236517206, i64 -1>
  %i.fn = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.fm)
  %i.fo = trunc nuw nsw <2 x i64> %i.fn to <2 x i32>
  %i.fp = add nuw nsw <2 x i32> %i.ff, %i.fo
  br label %.preheader.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph48.i.6, %.lr.ph48.i.5, %.lr.ph48.i.4, %.lr.ph48.i.3, %.lr.ph48.i.2, %.lr.ph48.i.1, %.lr.ph48.i
  %.pre54.i = load i64, ptr %i.cr, align 8        ; 2 uses
  %.pre55.i = and i64 %.pre54.i, %i.cp
  br label %_ZN4absl18debugging_internal25BoundedUtf8LengthSequenceILj256EE32InsertAndReturnSumOfPredecessorsEjj.exit

.lr.ph48.i:                                       ; preds = %bb.q, %.preheader.i
  %i.fq = phi <2 x i32> [ %.lcssa157, %.preheader.i ], [ %i.cy, %bb.q ]
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  %i.fr = load i64, ptr %i.af, align 8            ; 2 uses
  %i.fs = call i64 @llvm.fshl.i64(i64 %.pre.i, i64 %i.fr, i64 2)
  store i64 %i.fs, ptr %i.ae, align 8
  %i.ft = icmp ult i32 %i.ce, 192
  br i1 %i.ft, label %.lr.ph48.i.1, label %._crit_edge.loopexit.i

.lr.ph48.i.1:                                     ; preds = %.lr.ph48.i
  %i.fu = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.fv = call i64 @llvm.fshl.i64(i64 %i.fr, i64 %i.fu, i64 2)
  store i64 %i.fv, ptr %i.ag, align 8
  %i.fw = icmp ult i32 %i.ce, 160
  br i1 %i.fw, label %.lr.ph48.i.2, label %._crit_edge.loopexit.i

.lr.ph48.i.2:                                     ; preds = %.lr.ph48.i.1
  %i.fx = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.fy = call i64 @llvm.fshl.i64(i64 %i.fu, i64 %i.fx, i64 2)
  store i64 %i.fy, ptr %i.ai, align 8
  %i.fz = icmp ult i32 %i.ce, 128
  br i1 %i.fz, label %.lr.ph48.i.3, label %._crit_edge.loopexit.i

.lr.ph48.i.3:                                     ; preds = %.lr.ph48.i.2
  %i.ga = load i64, ptr %i.al, align 8            ; 2 uses
  %i.gb = call i64 @llvm.fshl.i64(i64 %i.fx, i64 %i.ga, i64 2)
  store i64 %i.gb, ptr %i.ak, align 8
  %i.gc = icmp ult i32 %i.ce, 96
  br i1 %i.gc, label %.lr.ph48.i.4, label %._crit_edge.loopexit.i

.lr.ph48.i.4:                                     ; preds = %.lr.ph48.i.3
  %i.gd = load i64, ptr %i.an, align 8            ; 2 uses
  %i.ge = call i64 @llvm.fshl.i64(i64 %i.ga, i64 %i.gd, i64 2)
  store i64 %i.ge, ptr %i.am, align 8
  %i.gf = icmp ult i32 %i.ce, 64
  br i1 %i.gf, label %.lr.ph48.i.5, label %._crit_edge.loopexit.i

.lr.ph48.i.5:                                     ; preds = %.lr.ph48.i.4
  %i.gg = load i64, ptr %i.ap, align 8            ; 2 uses
  %i.gh = call i64 @llvm.fshl.i64(i64 %i.gd, i64 %i.gg, i64 2)
  store i64 %i.gh, ptr %i.ao, align 8
  %i.gi = icmp eq i32 %i.cl, 0
  br i1 %i.gi, label %.lr.ph48.i.6, label %._crit_edge.loopexit.i

.lr.ph48.i.6:                                     ; preds = %.lr.ph48.i.5
  %i.gj = load i64, ptr %1, align 8
  %i.gk = call i64 @llvm.fshl.i64(i64 %i.gg, i64 %i.gj, i64 2)
  store i64 %i.gk, ptr %i.aq, align 8
  br label %._crit_edge.loopexit.i

_ZN4absl18debugging_internal25BoundedUtf8LengthSequenceILj256EE32InsertAndReturnSumOfPredecessorsEjj.exit: ; preds = %.preheader.i, %._crit_edge.loopexit.i
  %.pre-phi.i = phi i64 [ %.pre55.i, %._crit_edge.loopexit.i ], [ %i.ct, %.preheader.i ]
  %i.gl = phi i64 [ %.pre54.i, %._crit_edge.loopexit.i ], [ %i.cs, %.preheader.i ]
  %i.gm = phi <2 x i32> [ %i.fq, %._crit_edge.loopexit.i ], [ %.lcssa157, %.preheader.i ] ; 2 uses
  %i.gn = extractelement <2 x i32> %i.gm, i64 0
  %i.go = add nuw i32 %i.gn, %spec.store.select.i
  %i.gp = extractelement <2 x i32> %i.gm, i64 1
  %i.gq = add nuw i32 %i.go, %i.gp                ; 2 uses
  %i.gr = icmp ugt i32 %i.cg, 4
  %i.gs = add nsw i32 %i.cg, -1
  %i.gt = select i1 %i.gr, i32 0, i32 %i.gs
  %i.gu = zext i32 %i.gt to i64
  %i.gv = shl i64 %i.gu, %i.co
  %i.gw = or i64 %.pre-phi.i, %i.gv
  %i.gx = and i64 %i.gl, %notmask.i
  %i.gy = shl i64 %i.gx, 2
  %i.gz = or i64 %i.gw, %i.gy
  store i64 %i.gz, ptr %i.cr, align 8
  %i.ha = zext i32 %i.gq to i64
  %i.hb = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ha ; 3 uses
  %i.hc = zext i32 %i.cg to i64                   ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.hc
  %i.he = sub i32 %i.ch, %i.gq
  %i.hf = zext i32 %i.he to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.hd, ptr nonnull align 1 %i.hb, i64 %i.hf, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hb, ptr nonnull align 4 %2, i64 %i.hc, i1 false)
  %i.hg = add i32 %i.cg, %.038106146              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  %.not = icmp eq ptr %i.aw, %i.c
  br i1 %.not, label %._crit_edge109, label %bb.h, !llvm.loop !6

._crit_edge109:                                   ; preds = %_ZN4absl18debugging_internal25BoundedUtf8LengthSequenceILj256EE32InsertAndReturnSumOfPredecessorsEjj.exit, %bb.g
  %.038.lcssa = phi i32 [ %.1.ph, %bb.g ], [ %i.hg, %_ZN4absl18debugging_internal25BoundedUtf8LengthSequenceILj256EE32InsertAndReturnSumOfPredecessorsEjj.exit ]
  %i.hh = zext i32 %.038.lcssa to i64
  %i.hi = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.hh
  br label %.critedge

.critedge.critedge:                               ; preds = %bb.p, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.m, %_ZN4absl18debugging_internal12_GLOBAL__N_110DigitValueEc.exit.thread.i, %bb.o, %.lr.ph108, %.critedge.critedge, %._crit_edge109
  %.3 = phi ptr [ %i.hi, %._crit_edge109 ], [ null, %.critedge.critedge ], [ null, %.lr.ph108 ], [ null, %bb.m ], [ null, %bb.o ], [ null, %_ZN4absl18debugging_internal12_GLOBAL__N_110DigitValueEc.exit.thread.i ], [ null, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #5
  br label %_ZN4absl18debugging_internal12_GLOBAL__N_126ConsumeOptionalAsciiPrefixERPKcS3_PcS5_Rj.exit

_ZN4absl18debugging_internal12_GLOBAL__N_126ConsumeOptionalAsciiPrefixERPKcS3_PcS5_Rj.exit: ; preds = %bb.c, %.critedge, %bb.d, %bb.e, %bb.a
  %.5 = phi ptr [ null, %bb.a ], [ %.3, %.critedge ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.c ]
  ret ptr %.5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN4absl18debugging_internal16Utf8ForCodePointC1Em(ptr noundef nonnull align 4 dereferenceable(8), i64 noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.ctpop.v2i64(<2 x i64>) #3

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = distinct !{!5, !10}
!6 = distinct !{!6, !10}
!7 = distinct !{!7, !10}
!8 = distinct !{!8, !10}
!9 = !{i64 2823310716616717299}
!10 = !{!"llvm.loop.mustprogress"}
end_hunk_0
