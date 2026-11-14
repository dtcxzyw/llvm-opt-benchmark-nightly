Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ryu-52b9754017523787.ryu.2ff3b564546b6a30-cgu.3?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_RNvNtCs47fkClTvdUi_3ryu11digit_table11DIGIT_TABLE = external hidden local_unnamed_addr global [200 x i8]

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvNtNtCs47fkClTvdUi_3ryu6pretty8mantissa19write_mantissa_long(i64 noundef %0, ptr nofree noundef writeonly captures(none) %1) unnamed_addr #0 !guid !3 {
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
  %i.i = urem i32 %i.d, 10000
  %i.j = trunc nuw nsw <2 x i32> %i.h to <2 x i16> ; 2 uses
  %.lhs.trunc = trunc nuw nsw i32 %i.i to i16
  %i.k = urem i16 %.lhs.trunc, 100
  %i.l = shl nuw nsw i16 %i.k, 1
  %i.m = udiv <2 x i16> %i.j, splat (i16 100)     ; 2 uses
  %i.n = extractelement <2 x i16> %i.m, i64 0
  %i.o = shl nuw nsw i16 %i.n, 1
  %i.p = extractelement <2 x i16> %i.j, i64 1
  %i.q = urem i16 %i.p, 100
  %i.r = shl nuw nsw i16 %i.q, 1
  %i.s = extractelement <2 x i16> %i.m, i64 1
  %i.t = shl nuw nsw i16 %i.s, 1
  %i.u = zext nneg i16 %i.l to i64
  %i.v = getelementptr inbounds nuw i8, ptr @_RNvNtCs47fkClTvdUi_3ryu11digit_table11DIGIT_TABLE, i64 %i.u
  %i.w = getelementptr inbounds i8, ptr %1, i64 -2
  %i.x = load i16, ptr %i.v, align 1
  store i16 %i.x, ptr %i.w, align 1
  %i.y = zext nneg i16 %i.o to i64
  %i.z = getelementptr inbounds nuw i8, ptr @_RNvNtCs47fkClTvdUi_3ryu11digit_table11DIGIT_TABLE, i64 %i.y
  %i.aa = getelementptr inbounds i8, ptr %1, i64 -4
  %i.ab = load i16, ptr %i.z, align 1
  store i16 %i.ab, ptr %i.aa, align 1
  %i.ac = zext nneg i16 %i.r to i64
  %i.ad = getelementptr inbounds nuw i8, ptr @_RNvNtCs47fkClTvdUi_3ryu11digit_table11DIGIT_TABLE, i64 %i.ac
  %i.ae = getelementptr inbounds i8, ptr %1, i64 -6
  %i.af = load i16, ptr %i.ad, align 1
  store i16 %i.af, ptr %i.ae, align 1
  %i.ag = zext nneg i16 %i.t to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @_RNvNtCs47fkClTvdUi_3ryu11digit_table11DIGIT_TABLE, i64 %i.ag
  %i.ai = getelementptr inbounds i8, ptr %1, i64 -8 ; 2 uses
  %i.aj = load i16, ptr %i.ah, align 1
  store i16 %i.aj, ptr %i.ai, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.05.0 = phi ptr [ %1, %bb.a ], [ %i.ai, %bb.b ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %0, %bb.a ], [ %i.b, %bb.b ]
  %i.ak = trunc i64 %.sroa.0.0 to i32             ; 3 uses
  %i.al = icmp ugt i32 %i.ak, 9999
  br i1 %i.al, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.sroa.010.0.lcssa.i = phi ptr [ %.sroa.05.0, %bb.c ], [ %i.az, %.lr.ph.i ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %i.ak, %bb.c ], [ %i.an, %.lr.ph.i ] ; 3 uses
  %i.am = icmp samesign ugt i32 %.sroa.0.0.lcssa.i, 99
  br i1 %i.am, label %bb.d, label %bb.e

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.sroa.0.020.i = phi i32 [ %i.an, %.lr.ph.i ], [ %i.ak, %bb.c ] ; 3 uses
  %.sroa.010.019.i = phi ptr [ %i.az, %.lr.ph.i ], [ %.sroa.05.0, %bb.c ] ; 2 uses
  %i.an = udiv i32 %.sroa.0.020.i, 10000          ; 3 uses
  %.neg.i = mul i32 %i.an, -10000
  %i.ao = add i32 %.neg.i, %.sroa.0.020.i         ; 2 uses
  %i.ap = urem i32 %i.ao, 100
  %i.aq = shl nuw nsw i32 %i.ap, 1
  %i.ar = udiv i32 %i.ao, 100
  %i.as = shl nuw nsw i32 %i.ar, 1
  %i.at = zext nneg i32 %i.aq to i64
  %i.au = getelementptr inbounds nuw i8, ptr @_RNvNtCs47fkClTvdUi_3ryu11digit_table11DIGIT_TABLE, i64 %i.at
  %i.av = getelementptr inbounds i8, ptr %.sroa.010.019.i, i64 -2
  %i.aw = load i16, ptr %i.au, align 1
  store i16 %i.aw, ptr %i.av, align 1
  %i.ax = zext nneg i32 %i.as to i64
  %i.ay = getelementptr inbounds nuw i8, ptr @_RNvNtCs47fkClTvdUi_3ryu11digit_table11DIGIT_TABLE, i64 %i.ax
  %i.az = getelementptr inbounds i8, ptr %.sroa.010.019.i, i64 -4 ; 3 uses
  %i.ba = load i16, ptr %i.ay, align 1
  store i16 %i.ba, ptr %i.az, align 1
  %i.bb = icmp ugt i32 %.sroa.0.020.i, 99999999
  br i1 %i.bb, label %.lr.ph.i, label %._crit_edge.i

bb.d:                                             ; preds = %._crit_edge.i
  %.lhs.trunc.i = trunc nuw i32 %.sroa.0.0.lcssa.i to i16 ; 2 uses
  %i.bc = urem i16 %.lhs.trunc.i, 100
  %i.bd = shl nuw nsw i16 %i.bc, 1
  %i.be = udiv i16 %.lhs.trunc.i, 100
  %.zext18.i = zext nneg i16 %i.be to i32
  %i.bf = zext nneg i16 %i.bd to i64
  %i.bg = getelementptr inbounds nuw i8, ptr @_RNvNtCs47fkClTvdUi_3ryu11digit_table11DIGIT_TABLE, i64 %i.bf
  %i.bh = getelementptr inbounds i8, ptr %.sroa.010.0.lcssa.i, i64 -2 ; 2 uses
  %i.bi = load i16, ptr %i.bg, align 1
  store i16 %i.bi, ptr %i.bh, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.sroa.010.1.i = phi ptr [ %i.bh, %bb.d ], [ %.sroa.010.0.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.0.1.i = phi i32 [ %.zext18.i, %bb.d ], [ %.sroa.0.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bj = icmp samesign ugt i32 %.sroa.0.1.i, 9
  br i1 %i.bj, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bk = trunc nuw nsw i32 %.sroa.0.1.i to i8
  %i.bl = getelementptr inbounds i8, ptr %.sroa.010.1.i, i64 -1
  %i.bm = or disjoint i8 %i.bk, 48
  store i8 %i.bm, ptr %i.bl, align 1
  br label %_RNvNtNtCs47fkClTvdUi_3ryu6pretty8mantissa14write_mantissa.exit

bb.g:                                             ; preds = %bb.e
  %i.bn = shl nuw nsw i32 %.sroa.0.1.i, 1
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr @_RNvNtCs47fkClTvdUi_3ryu11digit_table11DIGIT_TABLE, i64 %i.bo
  %i.bq = getelementptr inbounds i8, ptr %.sroa.010.1.i, i64 -2
  %i.br = load i16, ptr %i.bp, align 1
  store i16 %i.br, ptr %i.bq, align 1
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
!3 = !{i64 -5736664939430397337}
end_hunk_0
