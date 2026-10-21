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
  switch i32 %1, label %bb.az [
    i32 0, label %bb.b
    i32 1, label %bb.y
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = bitcast double %0 to i64                 ; 5 uses
  %i.d = and i64 %i.c, 9218868437227405312
  %i.e = icmp eq i64 %i.d, 0                      ; 2 uses
  %i.f = or i64 %i.c, 4503599627370496
  %i.g = lshr i64 %i.c, 52
  %i.h = trunc nuw nsw i64 %i.g to i32
  %i.i = and i32 %i.h, 2047
  %i.j = add nsw i32 %i.i, -1075                  ; 2 uses
  br i1 %i.e, label %.lr.ph.i.i, label %_ZNK2v84base6Double17AsNormalizedDiyFpEv.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.010.i.i = phi i32 [ %i.l, %.lr.ph.i.i ], [ -1074, %bb.b ]
  %.079.i.i = phi i64 [ %i.k, %.lr.ph.i.i ], [ %i.c, %bb.b ] ; 2 uses
  %i.k = shl i64 %.079.i.i, 1                     ; 2 uses
  %i.l = add nsw i32 %.010.i.i, -1                ; 2 uses
  %i.m = and i64 %.079.i.i, 2251799813685248
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.lr.ph.i.i, label %_ZNK2v84base6Double17AsNormalizedDiyFpEv.exit.i, !llvm.loop !5

_ZNK2v84base6Double17AsNormalizedDiyFpEv.exit.i:  ; preds = %.lr.ph.i.i, %bb.b
  %.0.i1.i.i.i = phi i32 [ %i.j, %bb.b ], [ -1074, %.lr.ph.i.i ] ; 3 uses
  %.07.lcssa.i.i = phi i64 [ %i.f, %bb.b ], [ %i.k, %.lr.ph.i.i ]
  %.0.lcssa.i.i = phi i32 [ %i.j, %bb.b ], [ %i.l, %.lr.ph.i.i ] ; 3 uses
  %9 = and i64 %i.c, 4503599627370495             ; 3 uses
  %10 = or disjoint i64 %9, 4503599627370496
  %.0.i.i.i.i = select i1 %i.e, i64 %9, i64 %10   ; 2 uses
  %i.o = shl nuw nsw i64 %.0.i.i.i.i, 1           ; 2 uses
  %i.p = or disjoint i64 %i.o, 1
  %i.q = add nsw i32 %.0.i1.i.i.i, -1             ; 2 uses
  br label %.lr.ph.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i
  %i.r = shl i64 %.07.lcssa.i.i, 11
  %i.s = icmp sgt i64 %i.t, -1
  br i1 %i.s, label %.lr.ph15.i.i.i.i, label %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %_ZNK2v84base6Double17AsNormalizedDiyFpEv.exit.i
  %.011.i.i.i.i = phi i32 [ %i.u, %.lr.ph.i.i.i.i ], [ %i.q, %_ZNK2v84base6Double17AsNormalizedDiyFpEv.exit.i ]
  %.0810.i.i.i.i = phi i64 [ %i.t, %.lr.ph.i.i.i.i ], [ %i.p, %_ZNK2v84base6Double17AsNormalizedDiyFpEv.exit.i ] ; 2 uses
  %i.t = shl nuw i64 %.0810.i.i.i.i, 10           ; 4 uses
  %i.u = add nsw i32 %.011.i.i.i.i, -10           ; 3 uses
  %i.v = icmp ult i64 %.0810.i.i.i.i, 17592186044416
  br i1 %i.v, label %.lr.ph.i.i.i.i, label %.preheader.i.i.i.i, !llvm.loop !6

.lr.ph15.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i, %.lr.ph15.i.i.i.i
  %.114.i.i.i.i = phi i32 [ %i.x, %.lr.ph15.i.i.i.i ], [ %i.u, %.preheader.i.i.i.i ]
  %.1913.i.i.i.i = phi i64 [ %i.w, %.lr.ph15.i.i.i.i ], [ %i.t, %.preheader.i.i.i.i ]
  %i.w = shl nuw i64 %.1913.i.i.i.i, 1            ; 3 uses
  %i.x = add nsw i32 %.114.i.i.i.i, -1            ; 2 uses
  %i.y = icmp sgt i64 %i.w, -1
  br i1 %i.y, label %.lr.ph15.i.i.i.i, label %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i, !llvm.loop !7

_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i: ; preds = %.lr.ph15.i.i.i.i, %.preheader.i.i.i.i
  %.19.lcssa.i.i.i.i = phi i64 [ %i.t, %.preheader.i.i.i.i ], [ %i.w, %.lr.ph15.i.i.i.i ]
  %.1.lcssa.i.i.i.i = phi i32 [ %i.u, %.preheader.i.i.i.i ], [ %i.x, %.lr.ph15.i.i.i.i ]
  %i.z = icmp ne i64 %9, 0
  %.not.i.i = icmp eq i32 %.0.i1.i.i.i, -1074
  %or.cond.i.i = select i1 %i.z, i1 true, i1 %.not.i.i ; 2 uses
  %i.aa = shl nuw nsw i64 %.0.i.i.i.i, 2
  %i.ab = add nsw i32 %.0.i1.i.i.i, -2
  %.sroa.8.0.i.i = select i1 %or.cond.i.i, i32 %i.q, i32 %i.ab
  %.sroa.012.0.v.i.i = select i1 %or.cond.i.i, i64 %i.o, i64 %i.aa
  %.sroa.012.0.i.i = add nsw i64 %.sroa.012.0.v.i.i, -1
  %i.ac = sub nsw i32 %.sroa.8.0.i.i, %.1.lcssa.i.i.i.i
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = shl i64 %.sroa.012.0.i.i, %i.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5
  store i64 0, ptr %8, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i32 0, ptr %i.af, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.ag = sub nsw i32 -113, %.0.lcssa.i.i
  %i.ah = sub nsw i32 -85, %.0.lcssa.i.i
  call void @_ZN2v84base16PowersOfTenCache36GetCachedPowerForBinaryExponentRangeEiiPNS0_5DiyFpEPi(i32 noundef %i.ag, i32 noundef %i.ah, ptr noundef nonnull %8, ptr noundef nonnull %i.b) #5
  %i.ai = zext i64 %i.r to i128
  %i.aj = load i64, ptr %8, align 8
  %i.ak = zext i64 %i.aj to i128                  ; 3 uses
  %i.al = mul nuw i128 %i.ak, %i.ai               ; 2 uses
  %i.am = lshr i128 %i.al, 64
  %i.an = trunc nuw i128 %i.am to i64
  %i.ao = trunc i128 %i.al to i64
  %i.ap = lshr i64 %i.ao, 63
  %i.aq = add nuw i64 %i.ap, %i.an                ; 2 uses
  %i.ar = load i32, ptr %i.af, align 8
  %i.as = add i32 %.0.lcssa.i.i, 53
  %i.at = add i32 %i.as, %i.ar                    ; 2 uses
  %i.au = zext i64 %i.ae to i128
  %i.av = mul nuw i128 %i.ak, %i.au               ; 2 uses
  %i.aw = lshr i128 %i.av, 64
  %i.ax = trunc nuw i128 %i.aw to i64
  %i.ay = trunc i128 %i.av to i64
  %.neg73.i = ashr i64 %i.ay, 63
  %i.az = zext i64 %.19.lcssa.i.i.i.i to i128
  %i.ba = mul nuw i128 %i.ak, %i.az               ; 2 uses
  %i.bb = lshr i128 %i.ba, 64
  %i.bc = trunc nuw i128 %i.bb to i64
  %i.bd = trunc i128 %i.ba to i64
  %i.be = lshr i64 %i.bd, 63
  %i.bf = add nuw i64 %i.be, %i.bc                ; 2 uses
  %i.bg = add nuw i64 %i.bf, 1                    ; 4 uses
  %.neg53.i = sub i64 %.neg73.i, %i.ax
  %i.bh = add i64 %.neg53.i, %i.bf                ; 2 uses
  %i.bi = add i64 %i.bh, 2                        ; 5 uses
  %i.bj = sub nsw i32 0, %i.at
  %i.bk = zext nneg i32 %i.bj to i64              ; 5 uses
  %i.bl = shl nuw i64 1, %i.bk                    ; 6 uses
  %i.bm = lshr i64 %i.bg, %i.bk
  %i.bn = trunc i64 %i.bm to i32                  ; 11 uses
  %i.bo = add i64 %i.bl, -1                       ; 2 uses
  %i.bp = and i64 %i.bg, %i.bo                    ; 2 uses
  switch i32 %i.at, label %bb.m [
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
  %i.bq = icmp ugt i32 %i.bn, 999999999
  br i1 %i.bq, label %.lr.ph.preheader.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i
  %i.br = icmp ugt i32 %i.bn, 99999999
  br i1 %i.br, label %.lr.ph.preheader.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i
  %i.bs = icmp ugt i32 %i.bn, 9999999
  br i1 %i.bs, label %.lr.ph.preheader.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i
  %i.bt = icmp ugt i32 %i.bn, 999999
  br i1 %i.bt, label %.lr.ph.preheader.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i
  %i.bu = icmp ugt i32 %i.bn, 99999
  br i1 %i.bu, label %.lr.ph.preheader.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i
  %i.bv = icmp ugt i32 %i.bn, 9999
  br i1 %i.bv, label %.lr.ph.preheader.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i
  %i.bw = icmp ugt i32 %i.bn, 999
  br i1 %i.bw, label %.lr.ph.preheader.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i
  %i.bx = icmp ugt i32 %i.bn, 99
  br i1 %i.bx, label %.lr.ph.preheader.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i
  %i.by = icmp ugt i32 %i.bn, 9
  br i1 %i.by, label %.lr.ph.preheader.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i, %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i
  %.not.i.i.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i.i.i, label %_ZN2v84baseL9RoundWeedEPcmmmmm.exit.i.i, label %.lr.ph.preheader.i.i

bb.m:                                             ; preds = %_ZNK2v84base6Double20NormalizedBoundariesEPNS0_5DiyFpES3_.exit.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #6
  unreachable

.lr.ph.preheader.i.i:                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sink34.i.ph.i.i = phi i32 [ 1, %bb.l ], [ 1000000000, %bb.c ], [ 100000000, %bb.d ], [ 10000000, %bb.e ], [ 1000000, %bb.f ], [ 100000, %bb.g ], [ 10000, %bb.h ], [ 1000, %bb.i ], [ 100, %bb.j ], [ 10, %bb.k ]
  %.sink.i.ph.i.i = phi i32 [ 0, %bb.l ], [ 9, %bb.c ], [ 8, %bb.d ], [ 7, %bb.e ], [ 6, %bb.f ], [ 5, %bb.g ], [ 4, %bb.h ], [ 3, %bb.i ], [ 2, %bb.j ], [ 1, %bb.k ] ; 2 uses
  %i.bz = add nuw nsw i32 %.sink.i.ph.i.i, 1
  %i.ca = zext nneg i32 %.sink.i.ph.i.i to i64
  br label %.lr.ph.i40.i

thread-pre-split.i.i:                             ; preds = %bb.s
  %i.cb = udiv i32 %.0115148.i.i, 10
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  br label %.lr.ph.i40.i

.lr.ph.i40.i:                                     ; preds = %thread-pre-split.i.i, %.lr.ph.preheader.i.i
  %.239 = phi ptr [ %3, %.lr.ph.preheader.i.i ], [ %i.co, %thread-pre-split.i.i ] ; 4 uses
  %indvars.iv.i = phi i64 [ %i.ca, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i, %thread-pre-split.i.i ] ; 2 uses
  %.2.i = phi i32 [ %i.bz, %.lr.ph.preheader.i.i ], [ %i.cp, %thread-pre-split.i.i ] ; 2 uses
  %.0115148.i.i = phi i32 [ %.sink34.i.ph.i.i, %.lr.ph.preheader.i.i ], [ %i.cb, %thread-pre-split.i.i ] ; 4 uses
  %.0117147.i.i = phi i32 [ %i.bn, %.lr.ph.preheader.i.i ], [ %storemerge.i.i.i, %thread-pre-split.i.i ] ; 4 uses
  %i.cc = icmp eq i32 %.0115148.i.i, 1
  br i1 %i.cc, label %_ZN2v84baseL11fast_divmodEPjjRKNS0_8DivMagicE.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i40.i
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr @_ZN2v84baseL3divE, i64 %indvars.iv.i ; 2 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 4
  %.val43.i.i = load i32, ptr %i.ce, align 4
  %.val.i.i = load i32, ptr %i.cd, align 8
  %i.cf = call i32 @llvm.umulh.i32(i32 %.0117147.i.i, i32 %.val.i.i) ; 2 uses
  %i.cg = sub i32 %.0117147.i.i, %i.cf
  %i.ch = lshr i32 %i.cg, 1
  %i.ci = add i32 %i.ch, %i.cf
  %i.cj = lshr i32 %i.ci, %.val43.i.i             ; 2 uses
  %i.ck = mul i32 %i.cj, %.0115148.i.i
  %i.cl = sub i32 %.0117147.i.i, %i.ck
  br label %_ZN2v84baseL11fast_divmodEPjjRKNS0_8DivMagicE.exit.i.i

_ZN2v84baseL11fast_divmodEPjjRKNS0_8DivMagicE.exit.i.i: ; preds = %bb.n, %.lr.ph.i40.i
end_hunk_0
