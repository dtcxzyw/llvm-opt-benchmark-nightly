Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_touch-88b35e5ce9cfb264.uu_touch.a1ebf4301e4c8f8d-cgu.0?download=true
inline.NumInlined: 849
inline.NumDeleted: 480
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvMNtNtCscxuc9kp9KZq_9jiff_core2tz6offsetNtB2_6Offset11to_datetime:bb.a
bb.d:                                             ; preds = %bb.b
  %i.m = add nsw i32 %i.g, -1
  br label %bb.c

bb.e:                                             ; preds = %.thread, %bb.c
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @80, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #28
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.n = icmp eq i32 %.sroa.09.0, 0
  br i1 %i.n, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = udiv i32 %.sroa.09.0, 3600               ; 2 uses
  %i.p = urem i32 %.sroa.09.0, 3600               ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.h, label %.thread67

bb.h:                                             ; preds = %bb.g, %bb.f, %.thread67
  %.sroa.06.05665 = phi i32 [ %i.e, %bb.f ], [ %i.e, %bb.g ], [ %.sroa.06.0566471, %.thread67 ]
  %.sroa.0.05763 = phi i32 [ %.sroa.0.0, %bb.f ], [ %.sroa.0.0, %bb.g ], [ %.sroa.0.0576272, %.thread67 ] ; 2 uses
  %.sroa.041.0.shrunk = phi i32 [ 0, %bb.f ], [ %i.o, %bb.g ], [ %i.s, %.thread67 ]
  %.sroa.043.0 = phi i64 [ 0, %bb.f ], [ 0, %bb.g ], [ %i.z, %.thread67 ]
  %or.cond2 = icmp ult i32 %.sroa.0.05763, 1000000000
  br i1 %or.cond2, label %bb.j, label %bb.i, !prof !15

.thread67:                                        ; preds = %.thread, %bb.g
  %i.r = phi i32 [ %i.p, %bb.g ], [ 3599, %.thread ]
  %i.s = phi i32 [ %i.o, %bb.g ], [ 23, %.thread ]
  %.sroa.0.0576272 = phi i32 [ %.sroa.0.0, %bb.g ], [ %i.i, %.thread ]
  %.sroa.06.0566471 = phi i32 [ %i.e, %bb.g ], [ %i.k, %.thread ]
  %.lhs.trunc = trunc nuw nsw i32 %i.r to i16     ; 2 uses
  %i.t = udiv i16 %.lhs.trunc, 60
  %i.u = zext nneg i16 %i.t to i64
  %i.v = urem i16 %.lhs.trunc, 60
  %i.w = zext nneg i16 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 48
  %i.y = shl nuw nsw i64 %i.u, 40
  %i.z = or disjoint i64 %i.x, %i.y
  br label %bb.h

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @83, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #28
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.aa = shl nuw nsw i32 %.sroa.06.05665, 2
  %i.ab = add nuw nsw i32 %i.aa, 33266051         ; 2 uses
  %i.ac = urem i32 %i.ab, 146097
  %i.ad = or i32 %i.ac, 3
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = mul nuw nsw i64 %i.ae, 2939745          ; 2 uses
  %i.ag = trunc i64 %i.af to i32                  ; 2 uses
  %i.ah = udiv i32 %i.ag, 11758980
  %i.ai = mul nuw nsw i32 %i.ah, 2141
  %i.aj = add nuw nsw i32 %i.ai, 197913           ; 3 uses
  %.lhs.trunc.i = trunc i32 %i.aj to i16
  %i.ak = udiv i16 %.lhs.trunc.i, 2141
  %.zext.i = zext nneg i16 %i.ak to i32
  %.sroa.3.0.insert.ext.i = shl nuw nsw i32 %.zext.i, 24
  %.sroa.3.0.insert.shift.i = add nuw nsw i32 %.sroa.3.0.insert.ext.i, 16777216
  %i.al = icmp ugt i32 %i.ag, -696719417          ; 2 uses
  %i.am = and i32 %i.aj, 4128768
  %i.an = add nuw nsw i32 %i.am, 15990784
  %.sroa.2.0.insert.ext.i = select i1 %i.al, i32 %i.an, i32 %i.aj
  %.sroa.2.0.insert.shift.i = and i32 %.sroa.2.0.insert.ext.i, 16711680
  %.sroa.2.0.insert.insert.i = or disjoint i32 %.sroa.3.0.insert.shift.i, %.sroa.2.0.insert.shift.i
  %i.ao = udiv i32 %i.ab, 146097
  %i.ap = mul nuw nsw i32 %i.ao, 100
  %i.aq = add nuw nsw i32 %i.ap, 32736
  %i.ar = lshr i64 %i.af, 32
  %i.as = trunc nuw nsw i64 %i.ar to i32
  %i.at = add nuw nsw i32 %i.aq, %i.as
  %i.au = zext i1 %i.al to i32
  %i.av = add nuw nsw i32 %i.at, %i.au
  %.sroa.0.0.insert.ext.i = and i32 %i.av, 65535
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.2.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  %.sroa.440.0.insert.ext = zext nneg i32 %.sroa.041.0.shrunk to i64
  %.sroa.440.0.insert.shift = shl nuw nsw i64 %.sroa.440.0.insert.ext, 32
  %.sroa.039.0.insert.ext = zext nneg i32 %.sroa.0.05763 to i64
  %.sroa.440.0.insert.insert = or i64 %.sroa.043.0, %.sroa.039.0.insert.ext
  %.sroa.039.0.insert.insert = or i64 %.sroa.440.0.insert.insert, %.sroa.440.0.insert.shift
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.0.0.insert.insert.i, ptr %i.aw, align 4
  store i64 %.sroa.039.0.insert.insert, ptr %0, align 4
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc range(i48 0, -65534) i48 @_RNvMNtNtCscxuc9kp9KZq_9jiff_core5civil4dateNtB2_4Date11checked_add(i32 noundef %0, i32 noundef %1) unnamed_addr #5 {
bb.a:
  switch i32 %1, label %bb.b [
    i32 0, label %_RNvMNtNtCscxuc9kp9KZq_9jiff_core5civil4dateNtB2_4Date9yesterday.exit
    i32 -1, label %bb.c
    i32 1, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = shl i32 %0, 8
  %i.b = ashr i32 %i.a, 24                        ; 3 uses
  %i.c = icmp ult i32 %i.b, 3                     ; 2 uses
  %i.d = or disjoint i32 %i.b, 12
  %.sroa.02.0.i = select i1 %i.c, i32 %i.d, i32 %i.b
  %i.e = shl i32 %0, 16
  %i.f = ashr exact i32 %i.e, 16
  %i.g = add nsw i32 %i.f, 32800
  %.neg.i = sext i1 %i.c to i32
  %i.h = add nsw i32 %i.g, %.neg.i                ; 3 uses
  %i.i = ashr i32 %0, 24
  %i.j = udiv i32 %i.h, 100
  %i.k = mul nuw nsw i32 %i.h, 1461
  %i.l = lshr i32 %i.k, 2
  %i.m = udiv i32 %i.h, 400
  %i.n = mul nsw i32 %.sroa.02.0.i, 979
  %i.o = add nsw i32 %i.n, -2919
  %i.p = lshr i32 %i.o, 5
  %i.q = add nsw i32 %i.i, -12699423
  %i.r = sub nuw nsw i32 %i.q, %i.j
  %i.s = add nuw nsw i32 %i.r, %i.m
  %i.t = add nsw i32 %i.s, %i.l
  %i.u = add nsw i32 %i.t, %i.p
  %i.v = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.u, i32 %1) ; 2 uses
  %i.w = extractvalue { i32, i1 } %i.v, 0         ; 2 uses
  %i.x = extractvalue { i32, i1 } %i.v, 1
  %i.y = add i32 %i.w, -2932897
  %or.cond = icmp ult i32 %i.y, -7304484
  %or.cond32.not = or i1 %i.x, %or.cond
  br i1 %or.cond32.not, label %_RNvMNtNtCscxuc9kp9KZq_9jiff_core5civil4dateNtB2_4Date9yesterday.exit, label %bb.q, !prof !19

bb.c:                                             ; preds = %bb.a
  %.sroa.04.0.extract.trunc.i = trunc i32 %0 to i16 ; 3 uses
  %.sroa.45.0.extract.shift.i = lshr i32 %0, 16
  %.sroa.45.0.extract.trunc.i = trunc i32 %.sroa.45.0.extract.shift.i to i8 ; 2 uses
  %.sroa.5.0.extract.shift.mask.i = and i32 %0, -16777216
  %i.z = icmp eq i32 %.sroa.5.0.extract.shift.mask.i, 16777216
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = icmp eq i8 %.sroa.45.0.extract.trunc.i, 1
  br i1 %i.aa, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  %.sroa.028.0.insert.insert.i = add i32 %0, -16777216
  br label %_RNvMNtNtCscxuc9kp9KZq_9jiff_core5civil4dateNtB2_4Date9yesterday.exit

bb.f:                                             ; preds = %bb.d
  %i.ab = tail call { i16, i1 } @llvm.sadd.with.overflow.i16(i16 %.sroa.04.0.extract.trunc.i, i16 -1) ; 2 uses
  %i.ac = extractvalue { i16, i1 } %i.ab, 0       ; 2 uses
  %i.ad = extractvalue { i16, i1 } %i.ab, 1
  %i.ae = add i16 %i.ac, -10000
  %or.cond.i = icmp ult i16 %i.ae, -19999
  %or.cond39.not.i = or i1 %i.ad, %or.cond.i
  br i1 %or.cond39.not.i, label %_RNvMNtNtCscxuc9kp9KZq_9jiff_core5civil4dateNtB2_4Date9yesterday.exit, label %bb.j, !prof !19

bb.g:                                             ; preds = %bb.d
  %i.af = add i8 %.sroa.45.0.extract.trunc.i, -1  ; 4 uses
  %i.ag = icmp eq i8 %i.af, 2
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = srem i16 %.sroa.04.0.extract.trunc.i, 25
  %i.ai = icmp eq i16 %i.ah, 0
  %..i.i = select i1 %i.ai, i16 15, i16 3
  %i.aj = and i16 %..i.i, %.sroa.04.0.extract.trunc.i
  %i.ak = icmp eq i16 %i.aj, 0
  %spec.select.i.i = select i1 %i.ak, i8 29, i8 28
  br label %_RNvNtCscxuc9kp9KZq_9jiff_core5civil13days_in_month.exit.i

bb.i:                                             ; preds = %bb.g
  %i.al = ashr i8 %i.af, 3
  %i.am = xor i8 %i.al, %i.af
  %i.an = or i8 %i.am, 30
  br label %_RNvNtCscxuc9kp9KZq_9jiff_core5civil13days_in_month.exit.i

_RNvNtCscxuc9kp9KZq_9jiff_core5civil13days_in_month.exit.i: ; preds = %bb.i, %bb.h
  %.sroa.0.0.i.i = phi i8 [ %spec.select.i.i, %bb.h ], [ %i.an, %bb.i ]
  %.sroa.527.0.insert.ext.i = zext i8 %.sroa.0.0.i.i to i32
  %.sroa.527.0.insert.shift.i = shl nuw i32 %.sroa.527.0.insert.ext.i, 24
  %.sroa.426.0.insert.ext.i = zext i8 %i.af to i32
  %.sroa.426.0.insert.shift.i = shl nuw nsw i32 %.sroa.426.0.insert.ext.i, 16
  %.sroa.426.0.insert.insert.i = or disjoint i32 %.sroa.527.0.insert.shift.i, %.sroa.426.0.insert.shift.i
  %.sroa.025.0.insert.ext.i = and i32 %0, 65535
  %.sroa.025.0.insert.insert.i = or disjoint i32 %.sroa.426.0.insert.insert.i, %.sroa.025.0.insert.ext.i
  br label %_RNvMNtNtCscxuc9kp9KZq_9jiff_core5civil4dateNtB2_4Date9yesterday.exit

bb.j:                                             ; preds = %bb.f
  %.sroa.022.0.insert.ext.i = zext i16 %i.ac to i32
  %.sroa.022.0.insert.insert.i = or disjoint i32 %.sroa.022.0.insert.ext.i, 520880128
  br label %_RNvMNtNtCscxuc9kp9KZq_9jiff_core5civil4dateNtB2_4Date9yesterday.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.03.0.extract.trunc.i = trunc i32 %0 to i16 ; 3 uses
  %.sroa.4.0.extract.shift.i = lshr i32 %0, 16
  %.sroa.4.0.extract.trunc.i = trunc i32 %.sroa.4.0.extract.shift.i to i8 ; 4 uses
  %.sroa.54.0.extract.shift.i = lshr i32 %0, 24
  %.sroa.54.0.extract.trunc.i = trunc nuw i32 %.sroa.54.0.extract.shift.i to i8 ; 3 uses
  %i.ao = icmp sgt i8 %.sroa.54.0.extract.trunc.i, 27
  br i1 %i.ao, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_RNvNtCscxuc9kp9KZq_9jiff_core5civil13days_in_month.exit.thread.i, %_RNvNtCscxuc9kp9KZq_9jiff_core5civil13days_in_month.exit.i33, %bb.k
  %2 = and i32 %0, -16777216
  %.sroa.528.0.insert.shift.i = add i32 %2, 16777216
  %3 = and i32 %0, 16777215
  %.sroa.026.0.insert.insert.i = or disjoint i32 %.sroa.528.0.insert.shift.i, %3
  br label %_RNvMNtNtCscxuc9kp9KZq_9jiff_core5civil4dateNtB2_4Date9yesterday.exit

bb.m:                                             ; preds = %bb.k
  %i.ap = icmp eq i8 %.sroa.4.0.extract.trunc.i, 2
  br i1 %i.ap, label %_RNvNtCscxuc9kp9KZq_9jiff_core5civil13days_in_month.exit.thread.i, label %_RNvNtCscxuc9kp9KZq_9jiff_core5civil13days_in_month.exit.i33

_RNvNtCscxuc9kp9KZq_9jiff_core5civil13days_in_month.exit.i33: ; preds = %bb.m
  %i.aq = ashr i8 %.sroa.4.0.extract.trunc.i, 3
  %i.ar = xor i8 %i.aq, %.sroa.4.0.extract.trunc.i
  %i.as = or i8 %i.ar, 30
  %i.at = icmp eq i8 %i.as, %.sroa.54.0.extract.trunc.i
  br i1 %i.at, label %bb.n, label %bb.l

_RNvNtCscxuc9kp9KZq_9jiff_core5civil13days_in_month.exit.thread.i: ; preds = %bb.m
  %i.au = srem i16 %.sroa.03.0.extract.trunc.i, 25
  %i.av = icmp eq i16 %i.au, 0
  %..i.i35 = select i1 %i.av, i16 15, i16 3
  %i.aw = and i16 %..i.i35, %.sroa.03.0.extract.trunc.i
  %i.ax = icmp eq i16 %i.aw, 0
  %spec.select.i.i36 = select i1 %i.ax, i8 29, i8 28
  %i.ay = icmp eq i8 %spec.select.i.i36, %.sroa.54.0.extract.trunc.i
  br i1 %i.ay, label %.thread.i, label %bb.l

bb.n:                                             ; preds = %_RNvNtCscxuc9kp9KZq_9jiff_core5civil13days_in_month.exit.i33
  %i.az = icmp eq i8 %.sroa.4.0.extract.trunc.i, 12
  br i1 %i.az, label %bb.o, label %.thread.i

bb.o:                                             ; preds = %bb.n
  %i.ba = tail call { i16, i1 } @llvm.sadd.with.overflow.i16(i16 %.sroa.03.0.extract.trunc.i, i16 1) ; 2 uses
  %i.bb = extractvalue { i16, i1 } %i.ba, 0       ; 2 uses
  %i.bc = extractvalue { i16, i1 } %i.ba, 1
  %i.bd = add i16 %i.bb, -10000
  %or.cond.i34 = icmp ult i16 %i.bd, -19999
  %or.cond37.not.i = or i1 %i.bc, %or.cond.i34
  br i1 %or.cond37.not.i, label %_RNvMNtNtCscxuc9kp9KZq_9jiff_core5civil4dateNtB2_4Date9yesterday.exit, label %bb.p, !prof !19

.thread.i:                                        ; preds = %bb.n, %_RNvNtCscxuc9kp9KZq_9jiff_core5civil13days_in_month.exit.thread.i
  %.sroa.424.0.insert.ext.i = add i32 %0, 65536
  %.sroa.424.0.insert.shift.i = and i32 %.sroa.424.0.insert.ext.i, 16711680
  %.sroa.023.0.insert.ext.i = and i32 %0, 65535
  %.sroa.424.0.insert.insert.i = or disjoint i32 %.sroa.023.0.insert.ext.i, %.sroa.424.0.insert.shift.i
  %.sroa.023.0.insert.insert.i = or disjoint i32 %.sroa.424.0.insert.insert.i, 16777216
  br label %_RNvMNtNtCscxuc9kp9KZq_9jiff_core5civil4dateNtB2_4Date9yesterday.exit

bb.p:                                             ; preds = %bb.o
  %.sroa.020.0.insert.ext.i = zext i16 %i.bb to i32
  %.sroa.020.0.insert.insert.i = or disjoint i32 %.sroa.020.0.insert.ext.i, 16842752
  br label %_RNvMNtNtCscxuc9kp9KZq_9jiff_core5civil4dateNtB2_4Date9yesterday.exit

_RNvMNtNtCscxuc9kp9KZq_9jiff_core5civil4dateNtB2_4Date9yesterday.exit: ; preds = %bb.p, %.thread.i, %bb.o, %bb.l, %bb.j, %_RNvNtCscxuc9kp9KZq_9jiff_core5civil13days_in_month.exit.i, %bb.f, %bb.e, %bb.b, %bb.a, %bb.q
  %.sroa.6.0 = phi i32 [ %0, %bb.a ], [ %.sroa.0.0.insert.insert.i, %bb.q ], [ 8447, %bb.f ], [ 6399, %bb.b ], [ %.sroa.028.0.insert.insert.i, %bb.e ], [ %.sroa.022.0.insert.insert.i, %bb.j ], [ %.sroa.025.0.insert.insert.i, %_RNvNtCscxuc9kp9KZq_9jiff_core5civil13days_in_month.exit.i ], [ %.sroa.026.0.insert.insert.i, %bb.l ], [ %.sroa.020.0.insert.insert.i, %bb.p ], [ %.sroa.023.0.insert.insert.i, %.thread.i ], [ 8447, %bb.o ]
  %.sroa.06.0 = phi i16 [ 0, %bb.a ], [ 0, %bb.q ], [ 1, %bb.f ], [ 1, %bb.b ], [ 0, %bb.e ], [ 0, %bb.j ], [ 0, %_RNvNtCscxuc9kp9KZq_9jiff_core5civil13days_in_month.exit.i ], [ 0, %bb.l ], [ 0, %bb.p ], [ 0, %.thread.i ], [ 1, %bb.o ]
  %.sroa.6.0.insert.ext = zext i32 %.sroa.6.0 to i48
  %.sroa.6.0.insert.shift = shl nuw i48 %.sroa.6.0.insert.ext, 16
  %.sroa.06.0.insert.ext = zext nneg i16 %.sroa.06.0 to i48
  %.sroa.06.0.insert.insert = or disjoint i48 %.sroa.6.0.insert.shift, %.sroa.06.0.insert.ext
  ret i48 %.sroa.06.0.insert.insert

bb.q:                                             ; preds = %bb.b
  %i.be = shl nsw i32 %i.w, 2
  %i.bf = add nsw i32 %i.be, 50797691             ; 2 uses
  %i.bg = urem i32 %i.bf, 146097
  %i.bh = or i32 %i.bg, 3
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = mul nuw nsw i64 %i.bi, 2939745          ; 2 uses
  %i.bk = trunc i64 %i.bj to i32                  ; 2 uses
  %i.bl = udiv i32 %i.bk, 11758980
  %i.bm = mul nuw nsw i32 %i.bl, 2141
  %i.bn = add nuw nsw i32 %i.bm, 197913           ; 3 uses
  %i.bo = and i32 %i.bn, 4128768
  %i.bp = icmp ugt i32 %i.bk, -696719417          ; 2 uses
  %i.bq = udiv i32 %i.bf, 146097
  %i.br = mul nuw nsw i32 %i.bq, 100
  %i.bs = lshr i64 %i.bj, 32
  %i.bt = trunc nuw nsw i64 %i.bs to i32
  %i.bu = zext i1 %i.bp to i32
  %i.bv = add nuw nsw i32 %i.br, 32736
  %i.bw = add nuw nsw i32 %i.bv, %i.bt
  %i.bx = add nuw nsw i32 %i.bw, %i.bu
  %.lhs.trunc.i = trunc i32 %i.bn to i16
  %i.by = udiv i16 %.lhs.trunc.i, 2141
  %.zext.i = zext nneg i16 %i.by to i32
  %.sroa.3.0.insert.ext.i = shl nuw nsw i32 %.zext.i, 24
  %.sroa.3.0.insert.shift.i = add nuw nsw i32 %.sroa.3.0.insert.ext.i, 16777216
  %i.bz = add nuw nsw i32 %i.bo, 15990784
  %.sroa.2.0.insert.ext.i = select i1 %i.bp, i32 %i.bz, i32 %i.bn
  %.sroa.2.0.insert.shift.i = and i32 %.sroa.2.0.insert.ext.i, 16711680
  %.sroa.2.0.insert.insert.i = or disjoint i32 %.sroa.3.0.insert.shift.i, %.sroa.2.0.insert.shift.i
  %.sroa.0.0.insert.ext.i = and i32 %i.bx, 65535
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.2.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  br label %_RNvMNtNtCscxuc9kp9KZq_9jiff_core5civil4dateNtB2_4Date9yesterday.exit
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtCs3JjgEOiFeOI_4jiff2tz9ambiguousNtB5_14AmbiguousZoned10compatible(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 13 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [12 x i8], align 8                ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.030.0.copyload = load i64, ptr %i.f, align 4 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4 ; 3 uses
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.419.0.copyload = load i32, ptr %.sroa.419.0..sroa_idx, align 4 ; 2 uses
  %i.g = shl i32 %.sroa.4.0.copyload, 8
  %i.h = ashr i32 %i.g, 24                        ; 3 uses
  %i.i = icmp ult i32 %i.h, 3                     ; 2 uses
  %i.j = or disjoint i32 %i.h, 12
  %.sroa.02.0.i.i.i = select i1 %i.i, i32 %i.j, i32 %i.h
  %i.k = shl i32 %.sroa.4.0.copyload, 16
  %i.l = ashr exact i32 %i.k, 16
  %i.m = add nsw i32 %i.l, 32800
  %.neg.i.i.i = sext i1 %i.i to i32
  %i.n = add nsw i32 %i.m, %.neg.i.i.i            ; 3 uses
  %i.o = ashr i32 %.sroa.4.0.copyload, 24
  %i.p = udiv i32 %i.n, 100
  %i.q = mul nuw nsw i32 %i.n, 1461
  %i.r = lshr i32 %i.q, 2
  %i.s = udiv i32 %i.n, 400
  %i.t = mul nsw i32 %.sroa.02.0.i.i.i, 979
  %i.u = add nsw i32 %i.t, -2919
  %i.v = lshr i32 %i.u, 5
  %i.w = add nsw i32 %i.o, -12699423
  %i.x = sub nuw nsw i32 %i.w, %i.p
  %i.y = add nuw nsw i32 %i.x, %i.s
  %i.z = add nsw i32 %i.y, %i.r
  %i.aa = add nsw i32 %i.z, %i.v
  %i.ab = sext i32 %i.aa to i64
  %i.ac = mul nsw i64 %i.ab, 86400
  %i.ad = shl i64 %.sroa.030.0.copyload, 24
  %i.ae = ashr i64 %i.ad, 56
  %i.af = mul nsw i64 %i.ae, 3600
  %i.ag = shl i64 %.sroa.030.0.copyload, 16
  %i.ah = ashr i64 %i.ag, 56
  %i.ai = mul nsw i64 %i.ah, 60
  %i.aj = shl i64 %.sroa.030.0.copyload, 8
  %i.ak = ashr i64 %i.aj, 56
  %.sroa.02.0.extract.trunc.i = trunc i64 %.sroa.030.0.copyload to i32 ; 3 uses
  %i.al = sext i32 %.sroa.419.0.copyload to i64
  %i.am = sub nsw i64 %i.ak, %i.al
  %i.an = add nsw i64 %i.am, %i.af
  %i.ao = add nsw i64 %i.an, %i.ai
  %i.ap = add nsw i64 %i.ao, %i.ac                ; 2 uses
  %i.aq = icmp slt i64 %i.ap, 0
  %i.ar = icmp ne i32 %.sroa.02.0.extract.trunc.i, 0
  %or.cond3.not.i.i = and i1 %i.ar, %i.aq         ; 2 uses
  %i.as = zext i1 %or.cond3.not.i.i to i64
  %.sroa.05.0.i.i = add nsw i64 %i.ap, %i.as      ; 6 uses
  %i.at = add nsw i64 %.sroa.05.0.i.i, 377705023201
  %or.cond.i.i = icmp ult i64 %i.at, 631107230402
  br i1 %or.cond.i.i, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1604
  store i32 0, ptr %i.d, align 8, !noalias !1604
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %.sroa.419.0.copyload, ptr %.sroa.6.0..sroa_idx.i, align 4, !noalias !1604
  %i.au = tail call noundef ptr @_RNvMs_NtCs3JjgEOiFeOI_4jiff5errorNtB4_5Error11jcore_range(i32 7167) #26, !noalias !1604
  %i.av = call noundef ptr @_RNvXs_NtNtNtCs3JjgEOiFeOI_4jiff5error2tz6offsetNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d) #27, !noalias !1604
  %i.aw = call noundef ptr @_RNvMs_NtCs3JjgEOiFeOI_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.au, ptr noundef %i.av) #26, !noalias !1604 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1604
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val26 = load ptr, ptr %i.ax, align 8, !noundef !4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !1605)
  %i.ay = ptrtoint ptr %.val26 to i64
  %i.az = and i64 %i.ay, 7
  switch i64 %i.az, label %bb.c [
    i64 1, label %_RNCINvXsk_NtCs3JjgEOiFeOI_4jiff5errorINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtBa_9timestamp9TimestampNtB8_5ErrorEINtB8_12ErrorContextB1b_B1C_E12with_contextNtNtNtB8_2tz9ambiguous5ErrorNCNvMs0_NtNtBa_2tz9ambiguousNtB35_14AmbiguousZoned10compatible0E0CsdTU8hOCbdCr_8uu_touch.exit
    i64 2, label %_RNCINvXsk_NtCs3JjgEOiFeOI_4jiff5errorINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtBa_9timestamp9TimestampNtB8_5ErrorEINtB8_12ErrorContextB1b_B1C_E12with_contextNtNtNtB8_2tz9ambiguous5ErrorNCNvMs0_NtNtBa_2tz9ambiguousNtB35_14AmbiguousZoned10compatible0E0CsdTU8hOCbdCr_8uu_touch.exit
    i64 3, label %_RNCINvXsk_NtCs3JjgEOiFeOI_4jiff5errorINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtBa_9timestamp9TimestampNtB8_5ErrorEINtB8_12ErrorContextB1b_B1C_E12with_contextNtNtNtB8_2tz9ambiguous5ErrorNCNvMs0_NtNtBa_2tz9ambiguousNtB35_14AmbiguousZoned10compatible0E0CsdTU8hOCbdCr_8uu_touch.exit
    i64 0, label %_RNCINvXsk_NtCs3JjgEOiFeOI_4jiff5errorINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtBa_9timestamp9TimestampNtB8_5ErrorEINtB8_12ErrorContextB1b_B1C_E12with_contextNtNtNtB8_2tz9ambiguous5ErrorNCNvMs0_NtNtBa_2tz9ambiguousNtB35_14AmbiguousZoned10compatible0E0CsdTU8hOCbdCr_8uu_touch.exit
    i64 4, label %bb.d
    i64 5, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.ba = getelementptr i8, ptr %.val26, i64 -20  ; 3 uses
  %i.bb = atomicrmw add ptr %i.ba, i64 1 monotonic, align 8, !noalias !1605
  %i.bc = icmp slt i64 %i.bb, 0
  br i1 %i.bc, label %bb.e, label %_RNCINvXsk_NtCs3JjgEOiFeOI_4jiff5errorINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtBa_9timestamp9TimestampNtB8_5ErrorEINtB8_12ErrorContextB1b_B1C_E12with_contextNtNtNtB8_2tz9ambiguous5ErrorNCNvMs0_NtNtBa_2tz9ambiguousNtB35_14AmbiguousZoned10compatible0E0CsdTU8hOCbdCr_8uu_touch.exit.thread

_RNCINvXsk_NtCs3JjgEOiFeOI_4jiff5errorINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtBa_9timestamp9TimestampNtB8_5ErrorEINtB8_12ErrorContextB1b_B1C_E12with_contextNtNtNtB8_2tz9ambiguous5ErrorNCNvMs0_NtNtBa_2tz9ambiguousNtB35_14AmbiguousZoned10compatible0E0CsdTU8hOCbdCr_8uu_touch.exit.thread: ; preds = %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.val26, ptr %i.bd, align 8, !alias.scope !1605
  store i32 2, ptr %i.c, align 8, !alias.scope !1605
  %i.be = call noundef ptr @_RNvXs_NtNtNtCs3JjgEOiFeOI_4jiff5error2tz9ambiguousNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bf = call noundef ptr @_RNvMs_NtCs3JjgEOiFeOI_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.aw, ptr noundef %i.be) #26
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bf, ptr %i.bg, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.ba, ptr %i.b, align 8
  %i.bh = atomicrmw add ptr %i.ba, i64 -1 release, align 8, !noalias !1606
  %i.bi = icmp eq i64 %i.bh, 1
  br i1 %i.bi, label %bb.h, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsdTU8hOCbdCr_8uu_touch.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.bj = getelementptr i8, ptr %.val26, i64 -21  ; 3 uses
  %i.bk = atomicrmw add ptr %i.bj, i64 1 monotonic, align 8, !noalias !1605
  %i.bl = icmp slt i64 %i.bk, 0
  br i1 %i.bl, label %bb.g, label %_RNCINvXsk_NtCs3JjgEOiFeOI_4jiff5errorINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtBa_9timestamp9TimestampNtB8_5ErrorEINtB8_12ErrorContextB1b_B1C_E12with_contextNtNtNtB8_2tz9ambiguous5ErrorNCNvMs0_NtNtBa_2tz9ambiguousNtB35_14AmbiguousZoned10compatible0E0CsdTU8hOCbdCr_8uu_touch.exit.thread35

_RNCINvXsk_NtCs3JjgEOiFeOI_4jiff5errorINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtBa_9timestamp9TimestampNtB8_5ErrorEINtB8_12ErrorContextB1b_B1C_E12with_contextNtNtNtB8_2tz9ambiguous5ErrorNCNvMs0_NtNtBa_2tz9ambiguousNtB35_14AmbiguousZoned10compatible0E0CsdTU8hOCbdCr_8uu_touch.exit.thread35: ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.val26, ptr %i.bm, align 8, !alias.scope !1605
  store i32 2, ptr %i.c, align 8, !alias.scope !1605
  %i.bn = call noundef ptr @_RNvXs_NtNtNtCs3JjgEOiFeOI_4jiff5error2tz9ambiguousNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bo = call noundef ptr @_RNvMs_NtCs3JjgEOiFeOI_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.aw, ptr noundef %i.bn) #26
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bo, ptr %i.bp, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bj, ptr %i.a, align 8
  %i.bq = atomicrmw add ptr %i.bj, i64 -1 release, align 8, !noalias !1607
  %i.br = icmp eq i64 %i.bq, 1
  br i1 %i.br, label %bb.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz5posix8TimeZoneEECsdTU8hOCbdCr_8uu_touch.exit.i.i.i.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.trap()
  unreachable

_RNCINvXsk_NtCs3JjgEOiFeOI_4jiff5errorINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtBa_9timestamp9TimestampNtB8_5ErrorEINtB8_12ErrorContextB1b_B1C_E12with_contextNtNtNtB8_2tz9ambiguous5ErrorNCNvMs0_NtNtBa_2tz9ambiguousNtB35_14AmbiguousZoned10compatible0E0CsdTU8hOCbdCr_8uu_touch.exit: ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.val26, ptr %i.bs, align 8, !alias.scope !1605
  store i32 2, ptr %i.c, align 8, !alias.scope !1605
  %i.bt = call noundef ptr @_RNvXs_NtNtNtCs3JjgEOiFeOI_4jiff5error2tz9ambiguousNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bu = call noundef ptr @_RNvMs_NtCs3JjgEOiFeOI_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.aw, ptr noundef %i.bt) #26
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bu, ptr %i.bv, align 8
  store i64 1, ptr %0, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs3JjgEOiFeOI_4jiff2tz9ambiguous14AmbiguousZonedECsdTU8hOCbdCr_8uu_touch.exit

bb.h:                                             ; preds = %_RNCINvXsk_NtCs3JjgEOiFeOI_4jiff5errorINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtBa_9timestamp9TimestampNtB8_5ErrorEINtB8_12ErrorContextB1b_B1C_E12with_contextNtNtNtB8_2tz9ambiguous5ErrorNCNvMs0_NtNtBa_2tz9ambiguousNtB35_14AmbiguousZoned10compatible0E0CsdTU8hOCbdCr_8uu_touch.exit.thread
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz4tzif18MaybeNamedTimeZoneE9drop_slowCs3JjgEOiFeOI_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #26
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsdTU8hOCbdCr_8uu_touch.exit.i.i.i.i

end_hunk_0
