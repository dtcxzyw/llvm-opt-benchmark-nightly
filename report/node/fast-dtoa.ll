Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/fast-dtoa?download=true
inline.NumInlined: 120
inline.NumDeleted: 31
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.v8::base::DivMagic" = type { i32, i32 }
%"class.v8::base::DiyFp" = type <{ i64, i32, [4 x i8] }>

@.str = private unnamed_addr constant [17 x i8] c"unreachable code\00", align 1
@_ZN2v84baseL3divE = internal unnamed_addr constant [9 x %"struct.v8::base::DivMagic"] [%"struct.v8::base::DivMagic" zeroinitializer, %"struct.v8::base::DivMagic" { i32 -1717986918, i32 3 }, %"struct.v8::base::DivMagic" { i32 1202590843, i32 6 }, %"struct.v8::base::DivMagic" { i32 103079216, i32 9 }, %"struct.v8::base::DivMagic" { i32 -1553060174, i32 13 }, %"struct.v8::base::DivMagic" { i32 1334532239, i32 16 }, %"struct.v8::base::DivMagic" { i32 208632332, i32 19 }, %"struct.v8::base::DivMagic" { i32 -1384175188, i32 23 }, %"struct.v8::base::DivMagic" { i32 1469640228, i32 26 }], align 16

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN2v84base8FastDtoaEdNS0_12FastDtoaModeEiNS0_6VectorIcEEPiS4_(double noundef %0, i32 noundef %1, i32 noundef %2, ptr %3, i64 %4, ptr nofree noundef captures(none) %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %"class.v8::base::DiyFp", align 8   ; 8 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %8 = alloca %"class.v8::base::DiyFp", align 8   ; 8 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  switch i32 %1, label %bb.ba [
    i32 0, label %bb.b
    i32 1, label %bb.z
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = bitcast double %0 to i64                 ; 3 uses
  %i.d = and i64 %i.c, 4503599627370495           ; 4 uses
  %i.e = and i64 %i.c, 9218868437227405312
  %i.f = icmp eq i64 %i.e, 0
  %i.g = or disjoint i64 %i.d, 4503599627370496   ; 2 uses
  %i.h = lshr i64 %i.c, 52
  %i.i = trunc nuw nsw i64 %i.h to i32
  %i.j = and i32 %i.i, 2047
  %i.k = add nsw i32 %i.j, -1075                  ; 2 uses
  br i1 %i.f, label %.lr.ph.i.i, label %_ZNK2v84base6Double17AsNormalizedDiyFpEv.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.010.i.i = phi i32 [ %i.m, %.lr.ph.i.i ], [ -1074, %bb.b ]
  %.079.i.i = phi i64 [ %i.l, %.lr.ph.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.l = shl i64 %.079.i.i, 1                     ; 2 uses
  %i.m = add nsw i32 %.010.i.i, -1                ; 2 uses
  %i.n = and i64 %.079.i.i, 2251799813685248
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.lr.ph.i.i, label %_ZNK2v84base6Double17AsNormalizedDiyFpEv.exit.i, !llvm.loop !5

_ZNK2v84base6Double17AsNormalizedDiyFpEv.exit.i:  ; preds = %.lr.ph.i.i, %bb.b
  %.0.i1.i.i.i = phi i32 [ %i.k, %bb.b ], [ -1074, %.lr.ph.i.i ] ; 3 uses
  %.0.i.i.i.i = phi i64 [ %i.g, %bb.b ], [ %i.d, %.lr.ph.i.i ] ; 2 uses
  %.07.lcssa.i.i = phi i64 [ %i.g, %bb.b ], [ %i.l, %.lr.ph.i.i ]
  %.0.lcssa.i.i = phi i32 [ %i.k, %bb.b ], [ %i.m, %.lr.ph.i.i ] ; 3 uses
  %i.p = shl nuw nsw i64 %.0.i.i.i.i, 1           ; 2 uses
  %i.q = or disjoint i64 %i.p, 1
  %i.r = add nsw i32 %.0.i1.i.i.i, -1             ; 2 uses
  br label %.lr.ph.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i
  %i.s = shl i64 %.07.lcssa.i.i, 11
  %i.t = icmp sgt i64 %i.u, -1
  br i1 %i.t, label %.lr.ph15.i.i.i.i, label %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %_ZNK2v84base6Double17AsNormalizedDiyFpEv.exit.i
  %.011.i.i.i.i = phi i32 [ %i.v, %.lr.ph.i.i.i.i ], [ %i.r, %_ZNK2v84base6Double17AsNormalizedDiyFpEv.exit.i ]
  %.0810.i.i.i.i = phi i64 [ %i.u, %.lr.ph.i.i.i.i ], [ %i.q, %_ZNK2v84base6Double17AsNormalizedDiyFpEv.exit.i ] ; 2 uses
  %i.u = shl nuw i64 %.0810.i.i.i.i, 10           ; 4 uses
  %i.v = add nsw i32 %.011.i.i.i.i, -10           ; 3 uses
  %i.w = icmp ult i64 %.0810.i.i.i.i, 17592186044416
  br i1 %i.w, label %.lr.ph.i.i.i.i, label %.preheader.i.i.i.i, !llvm.loop !6

.lr.ph15.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i, %.lr.ph15.i.i.i.i
  %.114.i.i.i.i = phi i32 [ %i.y, %.lr.ph15.i.i.i.i ], [ %i.v, %.preheader.i.i.i.i ]
  %.1913.i.i.i.i = phi i64 [ %i.x, %.lr.ph15.i.i.i.i ], [ %i.u, %.preheader.i.i.i.i ]
  %i.x = shl nuw i64 %.1913.i.i.i.i, 1            ; 3 uses
  %i.y = add nsw i32 %.114.i.i.i.i, -1            ; 2 uses
  %i.z = icmp sgt i64 %i.x, -1
  br i1 %i.z, label %.lr.ph15.i.i.i.i, label %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i, !llvm.loop !7

_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i: ; preds = %.lr.ph15.i.i.i.i, %.preheader.i.i.i.i
  %.19.lcssa.i.i.i.i = phi i64 [ %i.u, %.preheader.i.i.i.i ], [ %i.x, %.lr.ph15.i.i.i.i ]
  %.1.lcssa.i.i.i.i = phi i32 [ %i.v, %.preheader.i.i.i.i ], [ %i.y, %.lr.ph15.i.i.i.i ]
  %i.aa = icmp ne i64 %i.d, 0
  %.not.i.i = icmp eq i32 %.0.i1.i.i.i, -1074
  %or.cond.i.i = select i1 %i.aa, i1 true, i1 %.not.i.i ; 2 uses
  %i.ab = shl nuw nsw i64 %.0.i.i.i.i, 2
  %i.ac = add nsw i32 %.0.i1.i.i.i, -2
  %.sroa.8.0.i.i = select i1 %or.cond.i.i, i32 %i.r, i32 %i.ac
  %.sroa.012.0.v.i.i = select i1 %or.cond.i.i, i64 %i.p, i64 %i.ab
  %.sroa.012.0.i.i = add nsw i64 %.sroa.012.0.v.i.i, -1
  %i.ad = sub nsw i32 %.sroa.8.0.i.i, %.1.lcssa.i.i.i.i
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = shl i64 %.sroa.012.0.i.i, %i.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5
  store i64 0, ptr %8, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i32 0, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.ah = sub nsw i32 -113, %.0.lcssa.i.i
  %i.ai = sub nsw i32 -85, %.0.lcssa.i.i
  call void @_ZN2v84base16PowersOfTenCache36GetCachedPowerForBinaryExponentRangeEiiPNS0_5DiyFpEPi(i32 noundef %i.ah, i32 noundef %i.ai, ptr noundef nonnull %8, ptr noundef nonnull %i.b) #5
  %i.aj = zext i64 %i.s to i128
  %i.ak = load i64, ptr %8, align 8
  %i.al = zext i64 %i.ak to i128                  ; 3 uses
  %i.am = mul nuw i128 %i.al, %i.aj               ; 2 uses
  %i.an = lshr i128 %i.am, 64
  %i.ao = trunc nuw i128 %i.an to i64
  %i.ap = trunc i128 %i.am to i64
  %i.aq = lshr i64 %i.ap, 63
  %i.ar = add nuw i64 %i.aq, %i.ao                ; 2 uses
  %i.as = load i32, ptr %i.ag, align 8
  %i.at = add i32 %.0.lcssa.i.i, 53
  %i.au = add i32 %i.at, %i.as                    ; 2 uses
  %i.av = zext i64 %i.af to i128
  %i.aw = mul nuw i128 %i.al, %i.av               ; 2 uses
  %i.ax = lshr i128 %i.aw, 64
  %i.ay = trunc nuw i128 %i.ax to i64
  %i.az = trunc i128 %i.aw to i64
  %.neg67.i = ashr i64 %i.az, 63
  %i.ba = zext i64 %.19.lcssa.i.i.i.i to i128
  %i.bb = mul nuw i128 %i.al, %i.ba               ; 2 uses
  %i.bc = lshr i128 %i.bb, 64
  %i.bd = trunc nuw i128 %i.bc to i64
  %i.be = trunc i128 %i.bb to i64
  %i.bf = lshr i64 %i.be, 63
  %i.bg = add nuw i64 %i.bf, %i.bd                ; 2 uses
  %i.bh = add nuw i64 %i.bg, 1                    ; 4 uses
  %.neg53.i = sub i64 %.neg67.i, %i.ay
  %i.bi = add i64 %.neg53.i, %i.bg                ; 2 uses
  %i.bj = add i64 %i.bi, 2                        ; 4 uses
  %i.bk = sub nsw i32 0, %i.au
  %i.bl = zext nneg i32 %i.bk to i64              ; 5 uses
  %i.bm = shl nuw i64 1, %i.bl                    ; 5 uses
  %i.bn = lshr i64 %i.bh, %i.bl
  %i.bo = trunc i64 %i.bn to i32                  ; 11 uses
  %i.bp = add i64 %i.bm, -1                       ; 2 uses
  %i.bq = and i64 %i.bh, %i.bp                    ; 2 uses
  switch i32 %i.au, label %bb.m [
    i32 -32, label %bb.c
    i32 -33, label %bb.c
    i32 -34, label %bb.c
    i32 -35, label %bb.d
    i32 -36, label %bb.d
    i32 -37, label %bb.d
    i32 -38, label %bb.e
    i32 -39, label %bb.e
    i32 -40, label %bb.e
    i32 -41, label %bb.f
    i32 -42, label %bb.f
    i32 -43, label %bb.f
    i32 -44, label %bb.f
    i32 -45, label %bb.g
    i32 -46, label %bb.g
    i32 -47, label %bb.g
    i32 -48, label %bb.h
    i32 -49, label %bb.h
    i32 -50, label %bb.h
    i32 -51, label %bb.i
    i32 -52, label %bb.i
    i32 -53, label %bb.i
    i32 -54, label %bb.i
    i32 -55, label %bb.j
    i32 -56, label %bb.j
    i32 -57, label %bb.j
    i32 -58, label %bb.k
    i32 -59, label %bb.k
    i32 -60, label %bb.k
    i32 -61, label %bb.l
    i32 -62, label %bb.l
    i32 -63, label %bb.l
    i32 -64, label %_ZN2v84baseL9RoundWeedEPcmmmmm.exit.i.i
  ]

bb.c:                                             ; preds = %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i
  %i.br = icmp ugt i32 %i.bo, 999999999
  br i1 %i.br, label %.lr.ph.preheader.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i
  %i.bs = icmp ugt i32 %i.bo, 99999999
  br i1 %i.bs, label %.lr.ph.preheader.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i
  %i.bt = icmp ugt i32 %i.bo, 9999999
  br i1 %i.bt, label %.lr.ph.preheader.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i
  %i.bu = icmp ugt i32 %i.bo, 999999
  br i1 %i.bu, label %.lr.ph.preheader.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i
  %i.bv = icmp ugt i32 %i.bo, 99999
  br i1 %i.bv, label %.lr.ph.preheader.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i
  %i.bw = icmp ugt i32 %i.bo, 9999
  br i1 %i.bw, label %.lr.ph.preheader.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i
  %i.bx = icmp ugt i32 %i.bo, 999
  br i1 %i.bx, label %.lr.ph.preheader.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i
  %i.by = icmp ugt i32 %i.bo, 99
  br i1 %i.by, label %.lr.ph.preheader.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i
  %i.bz = icmp ugt i32 %i.bo, 9
  br i1 %i.bz, label %.lr.ph.preheader.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i
  %.not.i.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i.i, label %_ZN2v84baseL9RoundWeedEPcmmmmm.exit.i.i, label %.lr.ph.preheader.i.i

bb.m:                                             ; preds = %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #6
  unreachable

.lr.ph.preheader.i.i:                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sink34.i.ph.i.i = phi i32 [ 1, %bb.l ], [ 1000000000, %bb.c ], [ 100000000, %bb.d ], [ 10000000, %bb.e ], [ 1000000, %bb.f ], [ 100000, %bb.g ], [ 10000, %bb.h ], [ 1000, %bb.i ], [ 100, %bb.j ], [ 10, %bb.k ]
  %.sink.i.ph.i.i = phi i32 [ 0, %bb.l ], [ 9, %bb.c ], [ 8, %bb.d ], [ 7, %bb.e ], [ 6, %bb.f ], [ 5, %bb.g ], [ 4, %bb.h ], [ 3, %bb.i ], [ 2, %bb.j ], [ 1, %bb.k ] ; 2 uses
  %i.ca = add nuw nsw i32 %.sink.i.ph.i.i, 1
  %i.cb = zext nneg i32 %.sink.i.ph.i.i to i64
  br label %.lr.ph.i40.i

thread-pre-split.i.i:                             ; preds = %bb.s
  %i.cc = udiv i32 %.0113132.i.i, 10
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  br label %.lr.ph.i40.i

.lr.ph.i40.i:                                     ; preds = %thread-pre-split.i.i, %.lr.ph.preheader.i.i
  %.240 = phi ptr [ %3, %.lr.ph.preheader.i.i ], [ %i.co, %thread-pre-split.i.i ] ; 3 uses
  %indvars.iv.i = phi i64 [ %i.cb, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i, %thread-pre-split.i.i ] ; 2 uses
  %.2.i = phi i32 [ %i.ca, %.lr.ph.preheader.i.i ], [ %i.cp, %thread-pre-split.i.i ] ; 2 uses
  %.0113132.i.i = phi i32 [ %.sink34.i.ph.i.i, %.lr.ph.preheader.i.i ], [ %i.cc, %thread-pre-split.i.i ] ; 4 uses
  %.0115131.i.i = phi i32 [ %i.bo, %.lr.ph.preheader.i.i ], [ %storemerge.i.i.i, %thread-pre-split.i.i ] ; 4 uses
  %i.cd = icmp eq i32 %.0113132.i.i, 1
  br i1 %i.cd, label %_ZN2v84baseL11fast_divmodEPjjRKNS0_8DivMagicE.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i40.i
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr @_ZN2v84baseL3divE, i64 %indvars.iv.i ; 2 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 4
  %.val43.i.i = load i32, ptr %i.cf, align 4
  %.val.i.i = load i32, ptr %i.ce, align 8
  %9 = call i32 @llvm.umulh.i32(i32 %.0115131.i.i, i32 %.val.i.i) ; 2 uses
  %i.cg = sub i32 %.0115131.i.i, %9
  %i.ch = lshr i32 %i.cg, 1
  %i.ci = add i32 %i.ch, %9
  %i.cj = lshr i32 %i.ci, %.val43.i.i             ; 2 uses
  %i.ck = mul i32 %i.cj, %.0113132.i.i
  %i.cl = sub i32 %.0115131.i.i, %i.ck
  br label %_ZN2v84baseL11fast_divmodEPjjRKNS0_8DivMagicE.exit.i.i

_ZN2v84baseL11fast_divmodEPjjRKNS0_8DivMagicE.exit.i.i: ; preds = %bb.n, %.lr.ph.i40.i
  %storemerge.i.i.i = phi i32 [ %i.cl, %bb.n ], [ 0, %.lr.ph.i40.i ] ; 2 uses
  %.0.i.i.i = phi i32 [ %i.cj, %bb.n ], [ %.0115131.i.i, %.lr.ph.i40.i ]
  %i.cm = trunc i32 %.0.i.i.i to i8
  %i.cn = add i8 %i.cm, 48                        ; 2 uses
  store i8 %i.cn, ptr %.240, align 1
  %i.co = getelementptr inbounds nuw i8, ptr %.240, i64 1 ; 4 uses
  %i.cp = add nsw i32 %.2.i, -1                   ; 2 uses
  %i.cq = zext i32 %storemerge.i.i.i to i64
  %i.cr = shl i64 %i.cq, %i.bl
  %i.cs = add i64 %i.cr, %i.bq                    ; 5 uses
  %i.ct = icmp ult i64 %i.cs, %i.bj
  br i1 %i.ct, label %bb.o, label %bb.s

bb.o:                                             ; preds = %_ZN2v84baseL11fast_divmodEPjjRKNS0_8DivMagicE.exit.i.i
  %i.cu = sub i64 %i.bh, %i.ar                    ; 2 uses
  %i.cv = zext nneg i32 %.0113132.i.i to i64
  %i.cw = shl i64 %i.cv, %i.bl                    ; 4 uses
  %i.cx = add i64 %i.cu, -1                       ; 5 uses
  %i.cy = add i64 %i.cu, 1                        ; 4 uses
  %i.cz = icmp uge i64 %i.cs, %i.cx
  %i.da = sub nuw i64 %i.bj, %i.cs
  %.not50.i.i.i = icmp ult i64 %i.da, %i.cw       ; 2 uses
  %or.cond51.i.i.i = or i1 %i.cz, %.not50.i.i.i
  br i1 %or.cond51.i.i.i, label %.critedge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.o, %.critedge2.i.i.i
  %i.db = phi i8 [ %i.dg, %.critedge2.i.i.i ], [ %i.cn, %bb.o ]
  %.04052.i.i.i = phi i64 [ %i.dc, %.critedge2.i.i.i ], [ %i.cs, %bb.o ] ; 3 uses
  %i.dc = add i64 %.04052.i.i.i, %i.cw            ; 6 uses
  %i.dd = icmp ult i64 %i.dc, %i.cx
  br i1 %i.dd, label %.critedge2.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i
  %i.de = sub nuw i64 %i.cx, %.04052.i.i.i
  %i.df = sub nuw i64 %i.dc, %i.cx
  %.not46.i.i.i = icmp ult i64 %i.de, %i.df
  br i1 %.not46.i.i.i, label %.critedge.i.i.i, label %.critedge2.i.i.i

.critedge2.i.i.i:                                 ; preds = %bb.p, %.lr.ph.i.i.i
  %i.dg = add i8 %i.db, -1                        ; 2 uses
  store i8 %i.dg, ptr %.240, align 1
  %i.dh = icmp uge i64 %i.dc, %i.cx
  %i.di = sub i64 %i.bj, %i.dc
  %.not.i49.i.i = icmp ult i64 %i.di, %i.cw       ; 2 uses
  %or.cond.i.i.i = or i1 %i.dh, %.not.i49.i.i
  br i1 %or.cond.i.i.i, label %.critedge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !8

.critedge.i.i.i:                                  ; preds = %.critedge2.i.i.i, %bb.p, %bb.o
  %.040.lcssa.i.i.i = phi i64 [ %i.cs, %bb.o ], [ %.04052.i.i.i, %bb.p ], [ %i.dc, %.critedge2.i.i.i ] ; 5 uses
  %.not.lcssa.i.i.i = phi i1 [ %.not50.i.i.i, %bb.o ], [ false, %bb.p ], [ %.not.i49.i.i, %.critedge2.i.i.i ]
  %i.dj = icmp uge i64 %.040.lcssa.i.i.i, %i.cy
  %or.cond49.i.i.i = or i1 %i.dj, %.not.lcssa.i.i.i
  br i1 %or.cond49.i.i.i, label %.split, label %bb.q

bb.q:                                             ; preds = %.critedge.i.i.i
  %i.dk = add i64 %.040.lcssa.i.i.i, %i.cw        ; 2 uses
  %i.dl = icmp ult i64 %i.dk, %i.cy
  br i1 %i.dl, label %_ZN2v84baseL6Grisu3EdPPcPi.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dm = sub nuw i64 %i.cy, %.040.lcssa.i.i.i
  %i.dn = sub nuw i64 %i.dk, %i.cy
  %i.do = icmp ugt i64 %i.dm, %i.dn
  br i1 %i.do, label %_ZN2v84baseL6Grisu3EdPPcPi.exit.thread, label %.split

.split:                                           ; preds = %bb.r, %.critedge.i.i.i
  %.not48.i.i.i = icmp ugt i64 %.040.lcssa.i.i.i, 1
  %i.dp = add i64 %i.bi, -2
  %i.dq = icmp ule i64 %.040.lcssa.i.i.i, %i.dp
  %i.dr = and i1 %.not48.i.i.i, %i.dq
  %i.ds = load i32, ptr %i.b, align 4
  %i.dt = sub nsw i32 %i.cp, %i.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  %i.du = ptrtoint ptr %i.co to i64
  %i.dv = ptrtoint ptr %3 to i64
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = trunc i64 %i.dw to i32                  ; 2 uses
  store i32 %i.dx, ptr %5, align 4
  br i1 %i.dr, label %bb.bc, label %bb.bd

bb.s:                                             ; preds = %_ZN2v84baseL11fast_divmodEPjjRKNS0_8DivMagicE.exit.i.i
  %i.dy = icmp samesign ult i32 %.2.i, 2
  br i1 %i.dy, label %_ZN2v84baseL9RoundWeedEPcmmmmm.exit.i.i, label %thread-pre-split.i.i

_ZN2v84baseL9RoundWeedEPcmmmmm.exit.i.i:          ; preds = %bb.s, %bb.l, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i
  %.038 = phi ptr [ %3, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i ], [ %3, %bb.l ], [ %i.co, %bb.s ]
  %i.dz = sub i64 %i.bh, %i.ar
  br label %bb.t

bb.t:                                             ; preds = %_ZN2v84baseL9RoundWeedEPcmmmmm.exit70.i.i, %_ZN2v84baseL9RoundWeedEPcmmmmm.exit.i.i
  %.139 = phi ptr [ %.038, %_ZN2v84baseL9RoundWeedEPcmmmmm.exit.i.i ], [ %i.eg, %_ZN2v84baseL9RoundWeedEPcmmmmm.exit70.i.i ] ; 3 uses
  %.1.i = phi i32 [ 0, %_ZN2v84baseL9RoundWeedEPcmmmmm.exit.i.i ], [ %i.ei, %_ZN2v84baseL9RoundWeedEPcmmmmm.exit70.i.i ]
  %.sroa.089.0.i.i = phi i64 [ %i.bj, %_ZN2v84baseL9RoundWeedEPcmmmmm.exit.i.i ], [ %i.ec, %_ZN2v84baseL9RoundWeedEPcmmmmm.exit70.i.i ]
  %.040.i.i = phi i64 [ %i.bq, %_ZN2v84baseL9RoundWeedEPcmmmmm.exit.i.i ], [ %i.eh, %_ZN2v84baseL9RoundWeedEPcmmmmm.exit70.i.i ]
  %.037.i.i = phi i64 [ 1, %_ZN2v84baseL9RoundWeedEPcmmmmm.exit.i.i ], [ %i.eb, %_ZN2v84baseL9RoundWeedEPcmmmmm.exit70.i.i ] ; 3 uses
  %.3.i.i = phi i1 [ undef, %_ZN2v84baseL9RoundWeedEPcmmmmm.exit.i.i ], [ %.4.i.i, %_ZN2v84baseL9RoundWeedEPcmmmmm.exit70.i.i ]
  %i.ea = mul i64 %.040.i.i, 10                   ; 2 uses
  %i.eb = mul i64 %.037.i.i, 10                   ; 4 uses
  %i.ec = mul i64 %.sroa.089.0.i.i, 10            ; 5 uses
  %i.ed = lshr i64 %i.ea, %i.bl
  %i.ee = trunc i64 %i.ed to i8
  %i.ef = add i8 %i.ee, 48                        ; 2 uses
  store i8 %i.ef, ptr %.139, align 1
  %i.eg = getelementptr inbounds nuw i8, ptr %.139, i64 1 ; 2 uses
  %i.eh = and i64 %i.ea, %i.bp                    ; 6 uses
  %i.ei = add nsw i32 %.1.i, -1                   ; 2 uses
  %.not.i39.i = icmp ult i64 %i.eh, %i.ec         ; 2 uses
  br i1 %.not.i39.i, label %bb.u, label %_ZN2v84baseL9RoundWeedEPcmmmmm.exit70.i.i

bb.u:                                             ; preds = %bb.t
  %i.ej = mul i64 %i.eb, %i.dz                    ; 2 uses
  %i.ek = sub i64 %i.ej, %i.eb                    ; 5 uses
  %i.el = add i64 %i.ej, %i.eb                    ; 4 uses
  %i.em = icmp uge i64 %i.eh, %i.ek
  %i.en = sub nuw i64 %i.ec, %i.eh
  %.not50.i56.i.i = icmp ult i64 %i.en, %i.bm     ; 2 uses
  %or.cond51.i57.i.i = or i1 %.not50.i56.i.i, %i.em
  br i1 %or.cond51.i57.i.i, label %.critedge.i64.i.i, label %.lr.ph.i58.i.i

.lr.ph.i58.i.i:                                   ; preds = %bb.u, %.critedge2.i61.i.i
  %i.eo = phi i8 [ %i.et, %.critedge2.i61.i.i ], [ %i.ef, %bb.u ]
  %.04052.i59.i.i = phi i64 [ %i.ep, %.critedge2.i61.i.i ], [ %i.eh, %bb.u ] ; 3 uses
  %i.ep = add i64 %.04052.i59.i.i, %i.bm          ; 6 uses
  %i.eq = icmp ult i64 %i.ep, %i.ek
  br i1 %i.eq, label %.critedge2.i61.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i58.i.i
  %i.er = sub nuw i64 %i.ek, %.04052.i59.i.i
  %i.es = sub nuw i64 %i.ep, %i.ek
  %.not46.i60.i.i = icmp ult i64 %i.er, %i.es
  br i1 %.not46.i60.i.i, label %.critedge.i64.i.i, label %.critedge2.i61.i.i

.critedge2.i61.i.i:                               ; preds = %bb.v, %.lr.ph.i58.i.i
  %i.et = add i8 %i.eo, -1                        ; 2 uses
  store i8 %i.et, ptr %.139, align 1
  %i.eu = icmp uge i64 %i.ep, %i.ek
  %i.ev = sub i64 %i.ec, %i.ep
  %.not.i62.i.i = icmp ult i64 %i.ev, %i.bm       ; 2 uses
  %or.cond.i63.i.i = or i1 %i.eu, %.not.i62.i.i
  br i1 %or.cond.i63.i.i, label %.critedge.i64.i.i, label %.lr.ph.i58.i.i, !llvm.loop !8

.critedge.i64.i.i:                                ; preds = %.critedge2.i61.i.i, %bb.v, %bb.u
  %.040.lcssa.i65.i.i = phi i64 [ %i.eh, %bb.u ], [ %.04052.i59.i.i, %bb.v ], [ %i.ep, %.critedge2.i61.i.i ] ; 5 uses
  %.not.lcssa.i66.i.i = phi i1 [ %.not50.i56.i.i, %bb.u ], [ false, %bb.v ], [ %.not.i62.i.i, %.critedge2.i61.i.i ]
  %i.ew = icmp uge i64 %.040.lcssa.i65.i.i, %i.el
  %or.cond49.i67.i.i = or i1 %i.ew, %.not.lcssa.i66.i.i
  br i1 %or.cond49.i67.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %.critedge.i64.i.i
  %i.ex = add i64 %.040.lcssa.i65.i.i, %i.bm      ; 2 uses
  %i.ey = icmp ult i64 %i.ex, %i.el
  br i1 %i.ey, label %_ZN2v84baseL9RoundWeedEPcmmmmm.exit70.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ez = sub nuw i64 %i.el, %.040.lcssa.i65.i.i
  %i.fa = sub nuw i64 %i.ex, %i.el
  %i.fb = icmp ugt i64 %i.ez, %i.fa
  br i1 %i.fb, label %_ZN2v84baseL9RoundWeedEPcmmmmm.exit70.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x, %.critedge.i64.i.i
  %i.fc = mul i64 %.037.i.i, 20
  %.not48.i68.i.i = icmp ule i64 %i.fc, %.040.lcssa.i65.i.i
  %.neg.i.i = mul i64 %.037.i.i, -40
  %i.fd = add i64 %.neg.i.i, %i.ec
  %i.fe = icmp ule i64 %.040.lcssa.i65.i.i, %i.fd
  %i.ff = and i1 %.not48.i68.i.i, %i.fe
  br label %_ZN2v84baseL9RoundWeedEPcmmmmm.exit70.i.i

_ZN2v84baseL9RoundWeedEPcmmmmm.exit70.i.i:        ; preds = %bb.y, %bb.x, %bb.w, %bb.t
  %.4.i.i = phi i1 [ %.3.i.i, %bb.t ], [ %i.ff, %bb.y ], [ false, %bb.x ], [ false, %bb.w ] ; 2 uses
  br i1 %.not.i39.i, label %_ZN2v84baseL6Grisu3EdPPcPi.exit, label %bb.t, !llvm.loop !9

_ZN2v84baseL6Grisu3EdPPcPi.exit.thread:           ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  %i.fg = ptrtoint ptr %i.co to i64
  %i.fh = ptrtoint ptr %3 to i64
  %i.fi = sub i64 %i.fg, %i.fh
  %i.fj = trunc i64 %i.fi to i32
  store i32 %i.fj, ptr %5, align 4
  br label %bb.bd

_ZN2v84baseL6Grisu3EdPPcPi.exit:                  ; preds = %_ZN2v84baseL9RoundWeedEPcmmmmm.exit70.i.i
  %i.fk = load i32, ptr %i.b, align 4
  %i.fl = sub nsw i32 %i.ei, %i.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  %i.fm = ptrtoint ptr %i.eg to i64
  %i.fn = ptrtoint ptr %3 to i64
  %i.fo = sub i64 %i.fm, %i.fn
  %i.fp = trunc i64 %i.fo to i32                  ; 2 uses
  store i32 %i.fp, ptr %5, align 4
  br i1 %.4.i.i, label %bb.bc, label %bb.bd

bb.z:                                             ; preds = %bb.a
  %i.fq = bitcast double %0 to i64                ; 4 uses
  %i.fr = and i64 %i.fq, 9218868437227405312
  %i.fs = icmp eq i64 %i.fr, 0
  %i.ft = or i64 %i.fq, 4503599627370496
  %i.fu = lshr i64 %i.fq, 52
  %i.fv = trunc nuw nsw i64 %i.fu to i32
  %i.fw = and i32 %i.fv, 2047
  %i.fx = add nsw i32 %i.fw, -1075
  br i1 %i.fs, label %.lr.ph.i.i25, label %_ZNK2v84base6Double17AsNormalizedDiyFpEv.exit.i10

.lr.ph.i.i25:                                     ; preds = %bb.z, %.lr.ph.i.i25
  %.010.i.i26 = phi i32 [ %i.fz, %.lr.ph.i.i25 ], [ -1074, %bb.z ]
  %.079.i.i27 = phi i64 [ %i.fy, %.lr.ph.i.i25 ], [ %i.fq, %bb.z ] ; 2 uses
  %i.fy = shl i64 %.079.i.i27, 1                  ; 2 uses
  %i.fz = add nsw i32 %.010.i.i26, -1             ; 2 uses
  %i.ga = and i64 %.079.i.i27, 2251799813685248
  %i.gb = icmp eq i64 %i.ga, 0
  br i1 %i.gb, label %.lr.ph.i.i25, label %_ZNK2v84base6Double17AsNormalizedDiyFpEv.exit.i10, !llvm.loop !5

_ZNK2v84base6Double17AsNormalizedDiyFpEv.exit.i10: ; preds = %.lr.ph.i.i25, %bb.z
  %.07.lcssa.i.i11 = phi i64 [ %i.ft, %bb.z ], [ %i.fy, %.lr.ph.i.i25 ]
  %.0.lcssa.i.i12 = phi i32 [ %i.fx, %bb.z ], [ %i.fz, %.lr.ph.i.i25 ] ; 3 uses
  %i.gc = shl i64 %.07.lcssa.i.i11, 11
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  store i64 0, ptr %7, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 0, ptr %i.gd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.ge = sub nsw i32 -113, %.0.lcssa.i.i12
  %i.gf = sub nsw i32 -85, %.0.lcssa.i.i12
  call void @_ZN2v84base16PowersOfTenCache36GetCachedPowerForBinaryExponentRangeEiiPNS0_5DiyFpEPi(i32 noundef %i.ge, i32 noundef %i.gf, ptr noundef nonnull %7, ptr noundef nonnull %i.a) #5
  %i.gg = zext i64 %i.gc to i128
  %i.gh = load i64, ptr %7, align 8
  %i.gi = zext i64 %i.gh to i128
  %i.gj = mul nuw i128 %i.gi, %i.gg               ; 2 uses
  %i.gk = lshr i128 %i.gj, 64
  %i.gl = trunc nuw i128 %i.gk to i64
  %i.gm = trunc i128 %i.gj to i64
  %i.gn = lshr i64 %i.gm, 63
  %i.go = add nuw i64 %i.gn, %i.gl                ; 2 uses
  %i.gp = load i32, ptr %i.gd, align 8
  %i.gq = add i32 %.0.lcssa.i.i12, 53
  %i.gr = add i32 %i.gq, %i.gp                    ; 2 uses
  %i.gs = sub nsw i32 0, %i.gr
  %i.gt = zext nneg i32 %i.gs to i64              ; 5 uses
  %i.gu = shl nuw i64 1, %i.gt                    ; 6 uses
  %i.gv = lshr i64 %i.go, %i.gt
  %i.gw = trunc i64 %i.gv to i32                  ; 12 uses
  %i.gx = add i64 %i.gu, -1                       ; 2 uses
  %i.gy = and i64 %i.gx, %i.go                    ; 3 uses
  switch i32 %i.gr, label %bb.ak [
    i32 -32, label %bb.aa
    i32 -33, label %bb.aa
    i32 -34, label %bb.aa
    i32 -35, label %bb.ab
    i32 -36, label %bb.ab
    i32 -37, label %bb.ab
    i32 -38, label %bb.ac
    i32 -39, label %bb.ac
    i32 -40, label %bb.ac
    i32 -41, label %bb.ad
    i32 -42, label %bb.ad
    i32 -43, label %bb.ad
    i32 -44, label %bb.ad
    i32 -45, label %bb.ae
    i32 -46, label %bb.ae
    i32 -47, label %bb.ae
    i32 -48, label %bb.af
    i32 -49, label %bb.af
    i32 -50, label %bb.af
    i32 -51, label %bb.ag
    i32 -52, label %bb.ag
    i32 -53, label %bb.ag
    i32 -54, label %bb.ag
    i32 -55, label %bb.ah
    i32 -56, label %bb.ah
    i32 -57, label %bb.ah
    i32 -58, label %bb.ai
    i32 -59, label %bb.ai
    i32 -60, label %bb.ai
    i32 -61, label %bb.aj
    i32 -62, label %bb.aj
    i32 -63, label %bb.aj
    i32 -64, label %._crit_edge.i.i
  ]

bb.aa:                                            ; preds = %_ZNK2v84base6Double17AsNormalizedDiyFpEv.exit.i10, %_ZNK2v84base6Double17AsNormalizedDiyFpEv.exit.i10, %_ZNK2v84base6Double17AsNormalizedDiyFpEv.exit.i10
  %i.gz = icmp ugt i32 %i.gw, 999999999
  br i1 %i.gz, label %_ZN2v84baseL15BiggestPowerTenEjiPjS1_.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZNK2v84base6Double17AsNormalizedDiyFpEv.exit.i10, %_ZNK2v84base6Double17AsNormalizedDiyFpEv.exit.i10, %_ZNK2v84base6Double17AsNormalizedDiyFpEv.exit.i10
  %i.ha = icmp ugt i32 %i.gw, 99999999
  br i1 %i.ha, label %_ZN2v84baseL15BiggestPowerTenEjiPjS1_.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZNK2v84base6Double17AsNormalizedDiyFpEv.exit.i10, %_ZNK2v84base6Double17AsNormalizedDiyFpEv.exit.i10, %_ZNK2v84base6Double17AsNormalizedDiyFpEv.exit.i10
  %i.hb = icmp ugt i32 %i.gw, 9999999
  br i1 %i.hb, label %_ZN2v84baseL15BiggestPowerTenEjiPjS1_.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_ZNK2v84base6Double17AsNormalizedDiyFpEv.exit.i10, %_ZNK2v84base6Double17AsNormalizedDiyFpEv.exit.i10, %_ZNK2v84base6Double17AsNormalizedDiyFpEv.exit.i10, %_ZNK2v84base6Double17AsNormalizedDiyFpEv.exit.i10
  %i.hc = icmp ugt i32 %i.gw, 999999
  br i1 %i.hc, label %_ZN2v84baseL15BiggestPowerTenEjiPjS1_.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_ZNK2v84base6Double17AsNormalizedDiyFpEv.exit.i10, %_ZNK2v84base6Double17AsNormalizedDiyFpEv.exit.i10, %_ZNK2v84base6Double17AsNormalizedDiyFpEv.exit.i10
  %i.hd = icmp ugt i32 %i.gw, 99999
  br i1 %i.hd, label %_ZN2v84baseL15BiggestPowerTenEjiPjS1_.exit.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZNK2v84base6Double17AsNormalizedDiyFpEv.exit.i10, %_ZNK2v84base6Double17AsNormalizedDiyFpEv.exit.i10, %_ZNK2v84base6Double17AsNormalizedDiyFpEv.exit.i10
  %i.he = icmp ugt i32 %i.gw, 9999
  br i1 %i.he, label %_ZN2v84baseL15BiggestPowerTenEjiPjS1_.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_ZNK2v84base6Double17AsNormalizedDiyFpEv.exit.i10, %_ZNK2v84base6Double17AsNormalizedDiyFpEv.exit.i10, %_ZNK2v84base6Double17AsNormalizedDiyFpEv.exit.i10, %_ZNK2v84base6Double17AsNormalizedDiyFpEv.exit.i10
  %i.hf = icmp ugt i32 %i.gw, 999
  br i1 %i.hf, label %_ZN2v84baseL15BiggestPowerTenEjiPjS1_.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %_ZNK2v84base6Double17AsNormalizedDiyFpEv.exit.i10, %_ZNK2v84base6Double17AsNormalizedDiyFpEv.exit.i10, %_ZNK2v84base6Double17AsNormalizedDiyFpEv.exit.i10
  %i.hg = icmp ugt i32 %i.gw, 99
  br i1 %i.hg, label %_ZN2v84baseL15BiggestPowerTenEjiPjS1_.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZNK2v84base6Double17AsNormalizedDiyFpEv.exit.i10, %_ZNK2v84base6Double17AsNormalizedDiyFpEv.exit.i10, %_ZNK2v84base6Double17AsNormalizedDiyFpEv.exit.i10
  %i.hh = icmp ugt i32 %i.gw, 9
  br i1 %i.hh, label %_ZN2v84baseL15BiggestPowerTenEjiPjS1_.exit.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZNK2v84base6Double17AsNormalizedDiyFpEv.exit.i10, %_ZNK2v84base6Double17AsNormalizedDiyFpEv.exit.i10, %_ZNK2v84base6Double17AsNormalizedDiyFpEv.exit.i10
  %.not.i.i.i18 = icmp eq i32 %i.gw, 0
  br i1 %.not.i.i.i18, label %._crit_edge.i.i, label %_ZN2v84baseL15BiggestPowerTenEjiPjS1_.exit.i.i

bb.ak:                                            ; preds = %_ZNK2v84base6Double17AsNormalizedDiyFpEv.exit.i10
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #6
  unreachable

_ZN2v84baseL15BiggestPowerTenEjiPjS1_.exit.i.i:   ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %.sink34.i.i.i = phi i32 [ 1, %bb.aj ], [ 10, %bb.ai ], [ 100, %bb.ah ], [ 1000, %bb.ag ], [ 10000, %bb.af ], [ 100000, %bb.ae ], [ 1000000, %bb.ad ], [ 10000000, %bb.ac ], [ 100000000, %bb.ab ], [ 1000000000, %bb.aa ]
  %.sink.i.i.i = phi i32 [ 0, %bb.aj ], [ 1, %bb.ai ], [ 2, %bb.ah ], [ 3, %bb.ag ], [ 4, %bb.af ], [ 5, %bb.ae ], [ 6, %bb.ad ], [ 7, %bb.ac ], [ 8, %bb.ab ], [ 9, %bb.aa ] ; 2 uses
  %i.hi = add nuw nsw i32 %.sink.i.i.i, 1         ; 3 uses
  %i.hj = zext nneg i32 %.sink.i.i.i to i64
  %wide.trip.count = zext nneg i32 %i.hi to i64
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %bb.am, %_ZN2v84baseL15BiggestPowerTenEjiPjS1_.exit.i.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.am ], [ 0, %_ZN2v84baseL15BiggestPowerTenEjiPjS1_.exit.i.i ] ; 2 uses
  %indvars.iv.i19 = phi i64 [ %indvars.iv.next.i24, %bb.am ], [ %i.hj, %_ZN2v84baseL15BiggestPowerTenEjiPjS1_.exit.i.i ] ; 2 uses
  %.4.i = phi i32 [ %i.hx, %bb.am ], [ %i.hi, %_ZN2v84baseL15BiggestPowerTenEjiPjS1_.exit.i.i ]
  %.03598.i.i = phi i32 [ %i.hw, %bb.am ], [ %2, %_ZN2v84baseL15BiggestPowerTenEjiPjS1_.exit.i.i ]
  %.07896.i.i = phi i32 [ %i.hz, %bb.am ], [ %.sink34.i.i.i, %_ZN2v84baseL15BiggestPowerTenEjiPjS1_.exit.i.i ] ; 4 uses
  %.08195.i.i = phi i32 [ %storemerge.i.i.i22, %bb.am ], [ %i.gw, %_ZN2v84baseL15BiggestPowerTenEjiPjS1_.exit.i.i ] ; 4 uses
  %i.hk = icmp eq i32 %.07896.i.i, 1
  br i1 %i.hk, label %_ZN2v84baseL11fast_divmodEPjjRKNS0_8DivMagicE.exit.i.i21, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i19.i
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr @_ZN2v84baseL3divE, i64 %indvars.iv.i19 ; 2 uses
  %i.hm = getelementptr i8, ptr %i.hl, i64 4
  %.val39.i.i = load i32, ptr %i.hm, align 4
  %.val.i.i20 = load i32, ptr %i.hl, align 8
  %10 = call i32 @llvm.umulh.i32(i32 %.08195.i.i, i32 %.val.i.i20) ; 2 uses
  %i.hn = sub i32 %.08195.i.i, %10
  %i.ho = lshr i32 %i.hn, 1
  %i.hp = add i32 %i.ho, %10
  %i.hq = lshr i32 %i.hp, %.val39.i.i             ; 2 uses
  %i.hr = mul i32 %i.hq, %.07896.i.i
  %i.hs = sub i32 %.08195.i.i, %i.hr
  br label %_ZN2v84baseL11fast_divmodEPjjRKNS0_8DivMagicE.exit.i.i21

_ZN2v84baseL11fast_divmodEPjjRKNS0_8DivMagicE.exit.i.i21: ; preds = %bb.al, %.lr.ph.i19.i
  %storemerge.i.i.i22 = phi i32 [ %i.hs, %bb.al ], [ 0, %.lr.ph.i19.i ] ; 3 uses
  %.0.i.i.i23 = phi i32 [ %i.hq, %bb.al ], [ %.08195.i.i, %.lr.ph.i19.i ]
  %i.ht = trunc i32 %.0.i.i.i23 to i8
  %i.hu = add i8 %i.ht, 48
  %i.hv = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  store i8 %i.hu, ptr %i.hv, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.hw = add nsw i32 %.03598.i.i, -1             ; 3 uses
  %i.hx = add nsw i32 %.4.i, -1                   ; 3 uses
  %i.hy = icmp eq i32 %i.hw, 0
  br i1 %i.hy, label %.thread86.i.i.loopexit, label %bb.am

bb.am:                                            ; preds = %_ZN2v84baseL11fast_divmodEPjjRKNS0_8DivMagicE.exit.i.i21
  %i.hz = udiv i32 %.07896.i.i, 10                ; 2 uses
  %indvars.iv.next.i24 = add nsw i64 %indvars.iv.i19, -1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.i.i, label %.lr.ph.i19.i

._crit_edge.i.i:                                  ; preds = %bb.am, %_ZNK2v84base6Double17AsNormalizedDiyFpEv.exit.i10, %bb.aj
  %.0 = phi i32 [ 0, %_ZNK2v84base6Double17AsNormalizedDiyFpEv.exit.i10 ], [ 0, %bb.aj ], [ %i.hi, %bb.am ] ; 3 uses
  %.0.i = phi i32 [ 0, %_ZNK2v84base6Double17AsNormalizedDiyFpEv.exit.i10 ], [ 0, %bb.aj ], [ %i.hx, %bb.am ] ; 2 uses
  %.081.lcssa.i.i = phi i32 [ %i.gw, %_ZNK2v84base6Double17AsNormalizedDiyFpEv.exit.i10 ], [ 0, %bb.aj ], [ %storemerge.i.i.i22, %bb.am ]
  %.078.lcssa.i.i = phi i32 [ 0, %_ZNK2v84base6Double17AsNormalizedDiyFpEv.exit.i10 ], [ 0, %bb.aj ], [ %i.hz, %bb.am ]
  %.035.lcssa.i.i = phi i32 [ %2, %_ZNK2v84base6Double17AsNormalizedDiyFpEv.exit.i10 ], [ %2, %bb.aj ], [ %i.hw, %bb.am ] ; 3 uses
  %i.ia = icmp eq i32 %.035.lcssa.i.i, 0
  br i1 %i.ia, label %.thread86.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i
  %i.ib = icmp sgt i32 %.035.lcssa.i.i, 0
  %i.ic = icmp ugt i64 %i.gy, 1
  %i.id = select i1 %i.ib, i1 %i.ic, i1 false
  br i1 %i.id, label %.lr.ph104.i.i.preheader, label %.thread

.lr.ph104.i.i.preheader:                          ; preds = %.preheader.i.i
  %i.ie = zext nneg i32 %.0 to i64
  br label %.lr.ph104.i.i

.thread86.i.i.loopexit:                           ; preds = %_ZN2v84baseL11fast_divmodEPjjRKNS0_8DivMagicE.exit.i.i21
  %i.if = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.thread86.i.i

.thread86.i.i:                                    ; preds = %.thread86.i.i.loopexit, %._crit_edge.i.i
  %.3 = phi i32 [ %.0, %._crit_edge.i.i ], [ %i.if, %.thread86.i.i.loopexit ] ; 8 uses
  %.3.i15 = phi i32 [ %.0.i, %._crit_edge.i.i ], [ %i.hx, %.thread86.i.i.loopexit ] ; 3 uses
  %.07893.i.i = phi i32 [ %.078.lcssa.i.i, %._crit_edge.i.i ], [ %.07896.i.i, %.thread86.i.i.loopexit ]
  %.18289.i.i = phi i32 [ %.081.lcssa.i.i, %._crit_edge.i.i ], [ %storemerge.i.i.i22, %.thread86.i.i.loopexit ]
  %i.ig = zext i32 %.18289.i.i to i64
  %i.ih = shl i64 %i.ig, %i.gt
  %i.ii = add i64 %i.ih, %i.gy                    ; 5 uses
  %i.ij = zext nneg i32 %.07893.i.i to i64
  %i.ik = shl i64 %i.ij, %i.gt                    ; 4 uses
  %or.cond.i.i.i16 = icmp ugt i64 %i.ik, 2
  br i1 %or.cond.i.i.i16, label %bb.an, label %.thread

bb.an:                                            ; preds = %.thread86.i.i
  %i.il = sub i64 %i.ik, %i.ii
  %i.im = icmp ugt i64 %i.il, %i.ii
  br i1 %i.im, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.in = shl i64 %i.ii, 1
  %i.io = sub i64 %i.ik, %i.in
  %.not31.i.i.i = icmp ult i64 %i.io, 2
  br i1 %.not31.i.i.i, label %bb.ap, label %.thread50

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.ip = icmp ugt i64 %i.ii, 1
  br i1 %i.ip, label %bb.aq, label %.thread

bb.aq:                                            ; preds = %bb.ap
  %i.iq = add i64 %i.ii, -1                       ; 2 uses
  %i.ir = sub i64 %i.ik, %i.iq
  %.not32.i.i.i = icmp ugt i64 %i.ir, %i.iq
  br i1 %.not32.i.i.i, label %.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.is = add nsw i32 %.3, -1                     ; 2 uses
  %i.it = sext i32 %i.is to i64
  %i.iu = getelementptr inbounds nuw i8, ptr %3, i64 %i.it ; 2 uses
  %i.iv = load i8, ptr %i.iu, align 1
  %i.iw = add i8 %i.iv, 1
  store i8 %i.iw, ptr %i.iu, align 1
  %i.ix = icmp sgt i32 %.3, 1
  br i1 %i.ix, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.ar
  %.phi.trans.insert.i.i.i = zext nneg i32 %i.is to i64 ; 2 uses
  %.phi.trans.insert41.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 %.phi.trans.insert.i.i.i
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert41.i.i.i, align 1
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %bb.as, %.lr.ph.preheader.i.i.i
  %indvars.iv119.i.i = phi i64 [ %indvars.iv.next120.i.i, %bb.as ], [ %.phi.trans.insert.i.i.i, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.iy = phi i8 [ %i.jc, %bb.as ], [ %.pre.i.i.i, %.lr.ph.preheader.i.i.i ]
  %.not33.i.i.i = icmp eq i8 %i.iy, 58
  br i1 %.not33.i.i.i, label %bb.as, label %._crit_edge.i.i.i

bb.as:                                            ; preds = %.lr.ph.i.i.i17
  %i.iz = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv119.i.i
  store i8 48, ptr %i.iz, align 1
  %indvars.iv.next120.i.i = add nsw i64 %indvars.iv119.i.i, -1 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next120.i.i ; 2 uses
  %i.jb = load i8, ptr %i.ja, align 1
  %i.jc = add i8 %i.jb, 1                         ; 2 uses
  store i8 %i.jc, ptr %i.ja, align 1
  %i.jd = icmp sgt i64 %indvars.iv119.i.i, 1
  br i1 %i.jd, label %.lr.ph.i.i.i17, label %._crit_edge.i.i.i, !llvm.loop !10

._crit_edge.i.i.i:                                ; preds = %bb.as, %.lr.ph.i.i.i17, %bb.ar
  %i.je = load i8, ptr %3, align 1
  %i.jf = icmp eq i8 %i.je, 58
  br i1 %i.jf, label %_ZN2v84baseL16RoundWeedCountedENS0_6VectorIcEEimmmPi.exit.sink.split.i.i, label %.thread50

.lr.ph104.i.i:                                    ; preds = %.lr.ph104.i.i.preheader, %.lr.ph104.i.i
  %indvars.iv122 = phi i64 [ %i.ie, %.lr.ph104.i.i.preheader ], [ %indvars.iv.next123, %.lr.ph104.i.i ] ; 5 uses
  %.1.i13 = phi i32 [ %.0.i, %.lr.ph104.i.i.preheader ], [ %i.jo, %.lr.ph104.i.i ]
  %.2103.i.i = phi i32 [ %.035.lcssa.i.i, %.lr.ph104.i.i.preheader ], [ %i.jm, %.lr.ph104.i.i ] ; 2 uses
  %.036102.i.i = phi i64 [ 1, %.lr.ph104.i.i.preheader ], [ %i.jh, %.lr.ph104.i.i ] ; 2 uses
  %.037101.i.i = phi i64 [ %i.gy, %.lr.ph104.i.i.preheader ], [ %i.jn, %.lr.ph104.i.i ]
  %i.jg = mul i64 %.037101.i.i, 10                ; 2 uses
  %i.jh = mul i64 %.036102.i.i, 10                ; 6 uses
  %i.ji = lshr i64 %i.jg, %i.gt
  %i.jj = trunc i64 %i.ji to i8                   ; 2 uses
  %i.jk = add i8 %i.jj, 48
  %i.jl = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv122
  store i8 %i.jk, ptr %i.jl, align 1
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %i.jm = add nsw i32 %.2103.i.i, -1              ; 2 uses
  %i.jn = and i64 %i.jg, %i.gx                    ; 6 uses
  %i.jo = add nsw i32 %.1.i13, -1                 ; 4 uses
  %i.jp = icmp samesign ugt i32 %.2103.i.i, 1
  %i.jq = icmp ugt i64 %i.jn, %i.jh               ; 3 uses
  %i.jr = select i1 %i.jp, i1 %i.jq, i1 false
  br i1 %i.jr, label %.lr.ph104.i.i, label %._crit_edge105.i.i, !llvm.loop !11

._crit_edge105.i.i:                               ; preds = %.lr.ph104.i.i
  %i.js = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv122
  %i.jt = trunc nsw i64 %indvars.iv.next123 to i32 ; 8 uses
  %i.ju = icmp eq i32 %i.jm, 0
  br i1 %i.ju, label %bb.at, label %.thread

bb.at:                                            ; preds = %._crit_edge105.i.i
  %.not.i41.i.i = icmp ult i64 %i.jh, %i.gu
  %i.jv = sub nuw i64 %i.gu, %i.jh
  %.not30.i42.i.i = icmp ugt i64 %i.jv, %i.jh
  %or.cond.i43.i.i = select i1 %.not.i41.i.i, i1 %.not30.i42.i.i, i1 false
  br i1 %or.cond.i43.i.i, label %bb.au, label %.thread

bb.au:                                            ; preds = %bb.at
  %i.jw = sub i64 %i.gu, %i.jn
  %i.jx = icmp ugt i64 %i.jw, %i.jn
  br i1 %i.jx, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.jy = shl nuw i64 %i.jn, 1
  %i.jz = sub i64 %i.gu, %i.jy
  %i.ka = mul i64 %.036102.i.i, 20
  %.not31.i54.i.i = icmp ult i64 %i.jz, %i.ka     ; 2 uses
  %brmerge.i.i.not = select i1 %.not31.i54.i.i, i1 %i.jq, i1 false
  br i1 %brmerge.i.i.not, label %bb.ax, label %bb.bb

bb.aw:                                            ; preds = %bb.au
  br i1 %i.jq, label %bb.ax, label %.thread

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.kb = sub nuw nsw i64 %i.jn, %i.jh            ; 2 uses
  %i.kc = sub i64 %i.gu, %i.kb
  %.not32.i45.i.i = icmp ugt i64 %i.kc, %i.kb
  br i1 %.not32.i45.i.i, label %.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.kd = add i8 %i.jj, 49                        ; 2 uses
  store i8 %i.kd, ptr %i.js, align 1
  %.not = icmp eq i64 %indvars.iv122, 0
  br i1 %.not, label %._crit_edge.i46.i.i, label %.lr.ph.preheader.i47.i.i

.lr.ph.preheader.i47.i.i:                         ; preds = %bb.ay
  %.phi.trans.insert.i48.i.i = and i64 %indvars.iv122, 4294967295
  br label %.lr.ph.i51.i.i

.lr.ph.i51.i.i:                                   ; preds = %bb.az, %.lr.ph.preheader.i47.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.az ], [ %.phi.trans.insert.i48.i.i, %.lr.ph.preheader.i47.i.i ] ; 3 uses
  %i.ke = phi i8 [ %i.ki, %bb.az ], [ %i.kd, %.lr.ph.preheader.i47.i.i ]
  %.not33.i53.i.i = icmp eq i8 %i.ke, 58
  br i1 %.not33.i53.i.i, label %bb.az, label %._crit_edge.i46.i.i

bb.az:                                            ; preds = %.lr.ph.i51.i.i
  %i.kf = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.i.i
  store i8 48, ptr %i.kf, align 1
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next.i.i ; 2 uses
  %i.kh = load i8, ptr %i.kg, align 1
  %i.ki = add i8 %i.kh, 1                         ; 2 uses
  store i8 %i.ki, ptr %i.kg, align 1
  %i.kj = icmp sgt i64 %indvars.iv.i.i, 1
  br i1 %i.kj, label %.lr.ph.i51.i.i, label %._crit_edge.i46.i.i, !llvm.loop !10

._crit_edge.i46.i.i:                              ; preds = %bb.az, %.lr.ph.i51.i.i, %bb.ay
  %i.kk = load i8, ptr %3, align 1
  %i.kl = icmp eq i8 %i.kk, 58
  br i1 %i.kl, label %_ZN2v84baseL16RoundWeedCountedENS0_6VectorIcEEimmmPi.exit.sink.split.i.i, label %.thread50

_ZN2v84baseL16RoundWeedCountedENS0_6VectorIcEEimmmPi.exit.sink.split.i.i: ; preds = %._crit_edge.i46.i.i, %._crit_edge.i.i.i
  %.2 = phi i32 [ %.3, %._crit_edge.i.i.i ], [ %i.jt, %._crit_edge.i46.i.i ]
  %.2.i14 = phi i32 [ %.3.i15, %._crit_edge.i.i.i ], [ %i.jo, %._crit_edge.i46.i.i ]
  store i8 49, ptr %3, align 1
  %i.km = add nsw i32 %.2.i14, 1
  br label %.thread50

bb.ba:                                            ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #6
  unreachable

.thread:                                          ; preds = %bb.aq, %bb.ap, %.thread86.i.i, %bb.ax, %bb.aw, %bb.at, %._crit_edge105.i.i, %.preheader.i.i
  %.5.ph = phi i32 [ %.0, %.preheader.i.i ], [ %i.jt, %._crit_edge105.i.i ], [ %i.jt, %bb.at ], [ %i.jt, %bb.aw ], [ %i.jt, %bb.ax ], [ %.3, %.thread86.i.i ], [ %.3, %bb.ap ], [ %.3, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  store i32 %.5.ph, ptr %5, align 4
  br label %bb.bd

.thread50:                                        ; preds = %._crit_edge.i46.i.i, %_ZN2v84baseL16RoundWeedCountedENS0_6VectorIcEEimmmPi.exit.sink.split.i.i, %._crit_edge.i.i.i, %bb.ao
  %.5.ph49 = phi i32 [ %.3, %bb.ao ], [ %.3, %._crit_edge.i.i.i ], [ %.2, %_ZN2v84baseL16RoundWeedCountedENS0_6VectorIcEEimmmPi.exit.sink.split.i.i ], [ %i.jt, %._crit_edge.i46.i.i ] ; 2 uses
  %.5.i.ph = phi i32 [ %.3.i15, %bb.ao ], [ %.3.i15, %._crit_edge.i.i.i ], [ %i.km, %_ZN2v84baseL16RoundWeedCountedENS0_6VectorIcEEimmmPi.exit.sink.split.i.i ], [ %i.jo, %._crit_edge.i46.i.i ]
  %i.kn = load i32, ptr %i.a, align 4
  %i.ko = sub nsw i32 %.5.i.ph, %i.kn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  store i32 %.5.ph49, ptr %5, align 4
  br label %bb.bc

bb.bb:                                            ; preds = %bb.av
  %i.kp = load i32, ptr %i.a, align 4
  %i.kq = sub nsw i32 %i.jo, %i.kp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  store i32 %i.jt, ptr %5, align 4
  br i1 %.not31.i54.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %.split, %.thread50, %_ZN2v84baseL6Grisu3EdPPcPi.exit, %bb.bb
  %i.kr = phi i32 [ %i.fp, %_ZN2v84baseL6Grisu3EdPPcPi.exit ], [ %i.jt, %bb.bb ], [ %.5.ph49, %.thread50 ], [ %i.dx, %.split ]
  %.03742 = phi i32 [ %i.fl, %_ZN2v84baseL6Grisu3EdPPcPi.exit ], [ %i.kq, %bb.bb ], [ %i.ko, %.thread50 ], [ %i.dt, %.split ]
  %i.ks = add nsw i32 %i.kr, %.03742
  store i32 %i.ks, ptr %6, align 4
  %i.kt = load i32, ptr %5, align 4
  %i.ku = sext i32 %i.kt to i64
  %i.kv = getelementptr inbounds nuw i8, ptr %3, i64 %i.ku
  store i8 0, ptr %i.kv, align 1
  br label %bb.bd

bb.bd:                                            ; preds = %.split, %_ZN2v84baseL6Grisu3EdPPcPi.exit.thread, %.thread, %_ZN2v84baseL6Grisu3EdPPcPi.exit, %bb.bc, %bb.bb
  %.0.in43 = phi i1 [ false, %_ZN2v84baseL6Grisu3EdPPcPi.exit ], [ true, %bb.bc ], [ false, %bb.bb ], [ false, %.thread ], [ false, %_ZN2v84baseL6Grisu3EdPPcPi.exit.thread ], [ false, %.split ]
  ret i1 %.0.in43
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #2

declare void @_ZN2v84base16PowersOfTenCache36GetCachedPowerForBinaryExponentRangeEiiPNS0_5DiyFpEPi(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umulh.i32(i32, i32) #4

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = distinct !{!5, !12}
!6 = distinct !{!6, !12}
!7 = distinct !{!7, !12}
!8 = distinct !{!8, !12}
!9 = distinct !{!9, !12}
!10 = distinct !{!10, !12}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
end_hunk_0
