Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ryu-52b9754017523787.ryu.2ff3b564546b6a30-cgu.3?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_RNvNtCs47fkClTvdUi_3ryu11digit_table11DIGIT_TABLE = external hidden local_unnamed_addr global [200 x i8]

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvNtNtCs47fkClTvdUi_3ryu6pretty8mantissa19write_mantissa_long(i64 noundef %0, ptr nofree noundef writeonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %0, 4294967296
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = udiv i64 %0, 100000000                   ; 2 uses
  %.neg = mul i64 %i.b, 4194967296
  %i.c = add i64 %.neg, %0
  %i.d = trunc i64 %i.c to i32                    ; 3 uses
  %i.e = udiv i32 %i.d, 10000
  %i.f = insertelement <2 x i32> poison, i32 %i.d, i64 0
  %i.g = insertelement <2 x i32> %i.f, i32 %i.e, i64 1
  %i.h = urem <2 x i32> %i.g, splat (i32 10000)
  %2 = urem i32 %i.d, 10000
  %3 = trunc nuw nsw <2 x i32> %i.h to <2 x i16>  ; 2 uses
  %.lhs.trunc = trunc nuw nsw i32 %2 to i16
  %4 = urem i16 %.lhs.trunc, 100
  %i.i = shl nuw nsw i16 %4, 1
  %5 = udiv <2 x i16> %3, splat (i16 100)         ; 2 uses
  %i.j = extractelement <2 x i16> %5, i64 0
  %i.k = shl nuw nsw i16 %i.j, 1
  %i.l = extractelement <2 x i16> %3, i64 1
  %6 = urem i16 %i.l, 100
  %i.m = shl nuw nsw i16 %6, 1
  %i.n = extractelement <2 x i16> %5, i64 1
  %i.o = shl nuw nsw i16 %i.n, 1
  %i.p = zext nneg i16 %i.i to i64
  %i.q = getelementptr inbounds nuw i8, ptr @_RNvNtCs47fkClTvdUi_3ryu11digit_table11DIGIT_TABLE, i64 %i.p
  %i.r = getelementptr inbounds i8, ptr %1, i64 -2
  %i.s = load i16, ptr %i.q, align 1
  store i16 %i.s, ptr %i.r, align 1
  %i.t = zext nneg i16 %i.k to i64
  %i.u = getelementptr inbounds nuw i8, ptr @_RNvNtCs47fkClTvdUi_3ryu11digit_table11DIGIT_TABLE, i64 %i.t
  %i.v = getelementptr inbounds i8, ptr %1, i64 -4
  %i.w = load i16, ptr %i.u, align 1
  store i16 %i.w, ptr %i.v, align 1
  %i.x = zext nneg i16 %i.m to i64
  %i.y = getelementptr inbounds nuw i8, ptr @_RNvNtCs47fkClTvdUi_3ryu11digit_table11DIGIT_TABLE, i64 %i.x
  %i.z = getelementptr inbounds i8, ptr %1, i64 -6
  %i.aa = load i16, ptr %i.y, align 1
  store i16 %i.aa, ptr %i.z, align 1
  %i.ab = zext nneg i16 %i.o to i64
  %i.ac = getelementptr inbounds nuw i8, ptr @_RNvNtCs47fkClTvdUi_3ryu11digit_table11DIGIT_TABLE, i64 %i.ab
  %i.ad = getelementptr inbounds i8, ptr %1, i64 -8 ; 2 uses
  %i.ae = load i16, ptr %i.ac, align 1
  store i16 %i.ae, ptr %i.ad, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.05.0 = phi ptr [ %1, %bb.a ], [ %i.ad, %bb.b ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %0, %bb.a ], [ %i.b, %bb.b ]
  %i.af = trunc i64 %.sroa.0.0 to i32             ; 3 uses
  %i.ag = icmp ugt i32 %i.af, 9999
  br i1 %i.ag, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.sroa.010.0.lcssa.i = phi ptr [ %.sroa.05.0, %bb.c ], [ %i.au, %.lr.ph.i ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %i.af, %bb.c ], [ %i.ai, %.lr.ph.i ] ; 3 uses
  %i.ah = icmp samesign ugt i32 %.sroa.0.0.lcssa.i, 99
  br i1 %i.ah, label %bb.d, label %bb.e

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.sroa.0.020.i = phi i32 [ %i.ai, %.lr.ph.i ], [ %i.af, %bb.c ] ; 3 uses
  %.sroa.010.019.i = phi ptr [ %i.au, %.lr.ph.i ], [ %.sroa.05.0, %bb.c ] ; 2 uses
  %i.ai = udiv i32 %.sroa.0.020.i, 10000          ; 3 uses
  %.neg.i = mul i32 %i.ai, -10000
  %i.aj = add i32 %.neg.i, %.sroa.0.020.i         ; 2 uses
  %i.ak = urem i32 %i.aj, 100
  %i.al = shl nuw nsw i32 %i.ak, 1
  %i.am = udiv i32 %i.aj, 100
  %i.an = shl nuw nsw i32 %i.am, 1
  %i.ao = zext nneg i32 %i.al to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @_RNvNtCs47fkClTvdUi_3ryu11digit_table11DIGIT_TABLE, i64 %i.ao
  %i.aq = getelementptr inbounds i8, ptr %.sroa.010.019.i, i64 -2
  %i.ar = load i16, ptr %i.ap, align 1
  store i16 %i.ar, ptr %i.aq, align 1
  %i.as = zext nneg i32 %i.an to i64
  %i.at = getelementptr inbounds nuw i8, ptr @_RNvNtCs47fkClTvdUi_3ryu11digit_table11DIGIT_TABLE, i64 %i.as
  %i.au = getelementptr inbounds i8, ptr %.sroa.010.019.i, i64 -4 ; 3 uses
  %i.av = load i16, ptr %i.at, align 1
  store i16 %i.av, ptr %i.au, align 1
  %i.aw = icmp ugt i32 %.sroa.0.020.i, 99999999
  br i1 %i.aw, label %.lr.ph.i, label %._crit_edge.i

bb.d:                                             ; preds = %._crit_edge.i
  %.lhs.trunc.i = trunc nuw i32 %.sroa.0.0.lcssa.i to i16 ; 2 uses
  %i.ax = urem i16 %.lhs.trunc.i, 100
  %i.ay = shl nuw nsw i16 %i.ax, 1
  %i.az = udiv i16 %.lhs.trunc.i, 100
  %.zext18.i = zext nneg i16 %i.az to i32
  %i.ba = zext nneg i16 %i.ay to i64
  %i.bb = getelementptr inbounds nuw i8, ptr @_RNvNtCs47fkClTvdUi_3ryu11digit_table11DIGIT_TABLE, i64 %i.ba
  %i.bc = getelementptr inbounds i8, ptr %.sroa.010.0.lcssa.i, i64 -2 ; 2 uses
  %i.bd = load i16, ptr %i.bb, align 1
  store i16 %i.bd, ptr %i.bc, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.sroa.010.1.i = phi ptr [ %i.bc, %bb.d ], [ %.sroa.010.0.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.0.1.i = phi i32 [ %.zext18.i, %bb.d ], [ %.sroa.0.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.be = icmp samesign ugt i32 %.sroa.0.1.i, 9
  br i1 %i.be, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bf = trunc nuw nsw i32 %.sroa.0.1.i to i8
  %i.bg = getelementptr inbounds i8, ptr %.sroa.010.1.i, i64 -1
  %i.bh = or disjoint i8 %i.bf, 48
  store i8 %i.bh, ptr %i.bg, align 1
  br label %_RNvNtNtCs47fkClTvdUi_3ryu6pretty8mantissa14write_mantissa.exit

bb.g:                                             ; preds = %bb.e
  %i.bi = shl nuw nsw i32 %.sroa.0.1.i, 1
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr @_RNvNtCs47fkClTvdUi_3ryu11digit_table11DIGIT_TABLE, i64 %i.bj
  %i.bl = getelementptr inbounds i8, ptr %.sroa.010.1.i, i64 -2
  %i.bm = load i16, ptr %i.bk, align 1
  store i16 %i.bm, ptr %i.bl, align 1
  br label %_RNvNtNtCs47fkClTvdUi_3ryu6pretty8mantissa14write_mantissa.exit

_RNvNtNtCs47fkClTvdUi_3ryu6pretty8mantissa14write_mantissa.exit: ; preds = %bb.f, %bb.g
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
end_hunk_0
