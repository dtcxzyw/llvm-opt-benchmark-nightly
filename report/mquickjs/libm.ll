Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mquickjs/original/libm?download=true
inline.NumInlined: 96
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@pio2_tab = internal unnamed_addr constant [3 x double] [double f0x3FF921FB54400000, double f0x3DD0B4611A600000, double f0x3BA3198A2E000000], align 16
@pio2_t_tab = internal unnamed_addr constant [3 x double] [double f0x3DD0B4611A626331, double f0x3BA3198A2E037073, double f0x397B839A252049C1], align 16
@atanhi = internal unnamed_addr constant [4 x double] [double f0x3FDDAC670561BB4F, double f0x3FE921FB54442D18, double f0x3FEF730BD281F69B, double f0x3FF921FB54442D18], align 16
@atanlo = internal unnamed_addr constant [4 x double] [double f0x3C7A2B7F222F65E2, double f0x3C81A62633145C07, double f0x3C7007887AF0CBBD, double f0x3C91A62633145C07], align 16
@aT_even = internal unnamed_addr constant [6 x double] [double f0x3FD555555555550D, double f0x3FC24924920083FF, double f0x3FB745CDC54C206E, double f0x3FB10D66A0D03D51, double f0x3FA97B4B24760DEB, double f0x3F90AD3AE322DA11], align 16
@aT_odd = internal unnamed_addr constant [5 x double] [double f0xBFC999999998EBC4, double f0xBFBC71C6FE231671, double f0xBFB3B0F2AF749A6D, double f0xBFADDE2D52DEFD9A, double f0xBFA2B4442C6A6C2F], align 16
@ln2HI = internal unnamed_addr constant [2 x double] [double f0x3FE62E42FEE00000, double f0xBFE62E42FEE00000], align 16
@ln2LO = internal unnamed_addr constant [2 x double] [double f0x3DEA39EF35793C76, double f0xBDEA39EF35793C76], align 16
@halF = internal unnamed_addr constant [2 x double] [double 5.000000e-01, double -5.000000e-01], align 16
@T = internal unnamed_addr constant [19 x i64] [i64 1549462648408431338, i64 -7278142537965807806, i64 -3512299194304650054, i64 6722166367014452318, i64 -3183605296591799669, i64 -2644281811660520851, i64 -302932621132653753, i64 -4035746434778044925, i64 2819561105158720014, i64 5648769086999809661, i64 4208363204685324176, i64 -5034868814120038111, i64 4577762542105553359, i64 113236205062349959, i64 7910884519577875640, i64 9193070505571053912, i64 3952090531849364496, i64 9154082963658192752, i64 2935890503282001226], align 16
@S_tab = internal unnamed_addr constant [5 x double] [double f0x3F8111111110F8A6, double f0xBF2A01A019C161D5, double f0x3EC71DE357B1FE7D, double f0xBE5AE5E68A2B9CEB, double f0x3DE5D93A5ACFD57C], align 16
@C_tab = internal unnamed_addr constant [6 x double] [double f0x3FA555555555554C, double f0xBF56C16C16C15177, double f0x3EFA01A019CB1590, double f0xBE927E4F809C52AD, double f0x3E21EE9EBDB4B1C4, double f0xBDA8FAE9BE8838D4], align 16
@pS = internal unnamed_addr constant [6 x double] [double f0x3FC5555555555555, double f0xBFD4D61203EB6F7D, double f0x3FC9C1550E884455, double f0xBFA48228B5688F3B, double f0x3F49EFE07501B288, double f0x3F023DE10DFDF709], align 16
@P = internal unnamed_addr constant [5 x double] [double f0x3FC555555555553E, double f0xBF66C16C16BEBD93, double f0x3F11566AAF25DE2C, double f0xBEBBBD41C5D26BF1, double f0x3E66376972BEA4D0], align 16
@bp = internal unnamed_addr constant [2 x double] [double 1.000000e+00, double 1.500000e+00], align 16
@L_tab = internal unnamed_addr constant [6 x double] [double f0x3FE3333333333303, double f0x3FDB6DB6DB6FABFF, double f0x3FD55555518F264D, double f0x3FD17460A91D4101, double f0x3FCD864A93C9DB65, double f0x3FCA7E284A454EEF], align 16
@dp_l = internal unnamed_addr constant [2 x double] [double 0.000000e+00, double f0x3E4CFDEB43CFD006], align 16
@dp_h = internal unnamed_addr constant [2 x double] [double 0.000000e+00, double f0x3FE2B80340000000], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local i32 @js_lrint(double noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = bitcast double %0 to i64                 ; 3 uses
  %i.b = lshr i64 %i.a, 63
  %i.c = trunc nuw nsw i64 %i.b to i32
  %i.d = lshr i64 %i.a, 52
  %i.e = trunc nuw nsw i64 %i.d to i32
  %i.f = and i32 %i.e, 2047                       ; 4 uses
  %i.g = and i64 %i.a, 4503599627370495           ; 2 uses
  %i.h = icmp eq i32 %i.f, 2047
  %i.i = icmp ne i64 %i.g, 0
  %or.cond.i.i = and i1 %i.i, %i.h
  %spec.select.i.i = select i1 %or.cond.i.i, i32 0, i32 %i.c ; 2 uses
  %i.j = icmp eq i32 %i.f, 0                      ; 2 uses
  %.neg.i.i = sub nsw i32 1075, %i.f
  %1 = icmp samesign ugt i32 %i.f, 1074
  %.043.i.i = select i1 %i.j, i32 1074, i32 %.neg.i.i ; 2 uses
  %i.k = shl nuw nsw i64 %i.g, 10                 ; 2 uses
  %i.l = or disjoint i64 %i.k, 4611686018427387904
  %i.m = select i1 %i.j, i64 %i.k, i64 %i.l       ; 3 uses
  %i.n = xor i32 %spec.select.i.i, 1
  %i.o = sub nuw i32 -2147483648, %i.n            ; 3 uses
  br i1 %1, label %cvt_sf64_i32.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = icmp samesign ugt i32 %.043.i.i, 63
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ne i64 %i.m, 0
  %i.r = zext i1 %i.q to i64
  br label %rshift_rnd64.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.s = zext nneg i32 %.043.i.i to i64           ; 2 uses
  %notmask.i.i.i = shl nsw i64 -1, %i.s
  %i.t = xor i64 %notmask.i.i.i, -1
  %i.u = lshr i64 %i.m, %i.s
  %i.v = and i64 %i.m, %i.t
  %i.w = icmp ne i64 %i.v, 0
  %i.x = zext i1 %i.w to i64
  %i.y = or i64 %i.u, %i.x
  br label %rshift_rnd64.exit.i.i

rshift_rnd64.exit.i.i:                            ; preds = %bb.d, %bb.c
  %.0.i.i.i = phi i64 [ %i.r, %bb.c ], [ %i.y, %bb.d ] ; 2 uses
  %i.z = add nuw nsw i64 %.0.i.i.i, 512
  %i.aa = lshr i64 %i.z, 10                       ; 2 uses
  %i.ab = and i64 %.0.i.i.i, 1023
  %i.ac = icmp eq i64 %i.ab, 512
  %i.ad = and i64 %i.aa, 18014398509481982
  %.142.i.i = select i1 %i.ac, i64 %i.ad, i64 %i.aa ; 2 uses
  %i.ae = zext i32 %i.o to i64
  %i.af = icmp samesign ugt i64 %.142.i.i, %i.ae
  br i1 %i.af, label %cvt_sf64_i32.exit, label %bb.e

bb.e:                                             ; preds = %rshift_rnd64.exit.i.i
  %i.ag = trunc nuw i64 %.142.i.i to i32          ; 2 uses
  %.not.i.i = icmp eq i32 %spec.select.i.i, 0
  %i.ah = sub i32 0, %i.ag
  %.1.i.i = select i1 %.not.i.i, i32 %i.ag, i32 %i.ah
  br label %cvt_sf64_i32.exit

cvt_sf64_i32.exit:                                ; preds = %bb.a, %rshift_rnd64.exit.i.i, %bb.e
  %.046.i.i = phi i32 [ %.1.i.i, %bb.e ], [ %i.o, %bb.a ], [ %i.o, %rshift_rnd64.exit.i.i ]
  ret i32 %.046.i.i
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(none) uwtable
define dso_local double @js_fmod(double noundef %0, double noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = bitcast double %0 to i64                 ; 4 uses
  %i.b = bitcast double %1 to i64                 ; 2 uses
  %i.c = tail call double @llvm.fabs.f64(double %0)
  %i.d = bitcast double %i.c to i64               ; 3 uses
  %i.e = tail call double @llvm.fabs.f64(double %1)
  %i.f = bitcast double %i.e to i64               ; 4 uses
  %i.g = icmp eq i64 %i.f, 0
  %i.h = icmp samesign ugt i64 %i.d, 9218868437227405311
  %or.cond.i = select i1 %i.g, i1 true, i1 %i.h
  %i.i = icmp samesign ugt i64 %i.f, 9218868437227405312
  %or.cond3.i = select i1 %or.cond.i, i1 true, i1 %i.i
  br i1 %or.cond3.i, label %fmod_sf64.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp samesign ult i64 %i.d, %i.f
  br i1 %i.j, label %fmod_sf64.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %i.d, %i.f
  %i.l = and i64 %i.a, -9223372036854775808       ; 3 uses
  br i1 %i.k, label %fmod_sf64.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = lshr i64 %i.a, 52
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = and i32 %i.n, 2047                       ; 2 uses
  %i.p = lshr i64 %i.b, 52
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = and i32 %i.q, 2047                       ; 2 uses
  %i.s = and i64 %i.a, 4503599627370495           ; 3 uses
  %i.t = and i64 %i.b, 4503599627370495           ; 3 uses
  %i.u = icmp eq i32 %i.o, 0
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, 4503599627370496) %i.s, i1 true) ; 2 uses
  %i.w = trunc nuw nsw i64 %i.v to i32
  %i.x = xor i64 %i.v, 63
  %i.y = sub nuw nsw i64 52, %i.x
  %i.z = sub nsw i32 12, %i.w
  %i.aa = shl i64 %i.s, %i.y
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ab = or disjoint i64 %i.s, 4503599627370496
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.052.i = phi i32 [ %i.z, %bb.e ], [ %i.o, %bb.f ]
  %.037.i = phi i64 [ %i.aa, %bb.e ], [ %i.ab, %bb.f ] ; 2 uses
  %i.ac = icmp eq i32 %i.r, 0
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ad = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, 4503599627370496) %i.t, i1 true) ; 2 uses
  %i.ae = trunc nuw nsw i64 %i.ad to i32
  %i.af = xor i64 %i.ad, 63
  %i.ag = sub nuw nsw i64 52, %i.af
  %i.ah = sub nsw i32 12, %i.ae
  %i.ai = shl i64 %i.t, %i.ag
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.aj = or disjoint i64 %i.t, 4503599627370496
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.051.i = phi i32 [ %i.ah, %bb.h ], [ %i.r, %bb.i ] ; 2 uses
  %.0.i = phi i64 [ %i.ai, %bb.h ], [ %i.aj, %bb.i ] ; 4 uses
  %i.ak = sub nsw i32 %.052.i, %.051.i            ; 2 uses
  %.not.i = icmp ult i64 %.037.i, %.0.i
  %i.al = select i1 %.not.i, i64 0, i64 %.0.i
  %spec.select.i = sub nuw nsw i64 %.037.i, %i.al ; 2 uses
  %.not4453.i = icmp eq i32 %i.ak, 0
  br i1 %.not4453.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %.255.i = phi i64 [ %spec.select46.i, %.lr.ph.i ], [ %spec.select.i, %bb.j ]
  %.03854.i = phi i32 [ %i.ao, %.lr.ph.i ], [ %i.ak, %bb.j ]
  %i.am = shl i64 %.255.i, 1                      ; 2 uses
  %.not45.i = icmp ult i64 %i.am, %.0.i
  %i.an = select i1 %.not45.i, i64 0, i64 %.0.i
  %spec.select46.i = sub nuw i64 %i.am, %i.an     ; 2 uses
  %i.ao = add nsw i32 %.03854.i, -1               ; 2 uses
  %.not44.i = icmp eq i32 %i.ao, 0
  br i1 %.not44.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !18

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.j
  %.2.lcssa.i = phi i64 [ %spec.select.i, %bb.j ], [ %spec.select46.i, %.lr.ph.i ]
  %i.ap = shl i64 %.2.lcssa.i, 10                 ; 2 uses
  %i.aq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, -1023) %i.ap, i1 true)
  %i.ar = trunc nuw nsw i64 %i.aq to i32
  %i.as = add nsw i32 %i.ar, -1                   ; 2 uses
  %i.at = sub nsw i32 %.051.i, %i.as              ; 3 uses
  %i.au = zext nneg i32 %i.as to i64
  %i.av = shl i64 %i.ap, %i.au                    ; 4 uses
  %i.aw = icmp slt i32 %i.at, 1
  br i1 %i.aw, label %bb.k, label %bb.n

bb.k:                                             ; preds = %._crit_edge.i
  %i.ax = sub nsw i32 1, %i.at                    ; 2 uses
  %i.ay = icmp samesign ugt i32 %i.ax, 63
  br i1 %i.ay, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.az = icmp ne i64 %i.av, 0
  %i.ba = zext i1 %i.az to i64
  br label %rshift_rnd64.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bb = zext nneg i32 %i.ax to i64              ; 2 uses
  %notmask.i.i.i.i = shl nsw i64 -1, %i.bb
  %i.bc = xor i64 %notmask.i.i.i.i, -1
  %i.bd = lshr i64 %i.av, %i.bb
  %i.be = and i64 %i.av, %i.bc
  %i.bf = icmp ne i64 %i.be, 0
  %i.bg = zext i1 %i.bf to i64
  %i.bh = or i64 %i.bd, %i.bg
  br label %rshift_rnd64.exit.i.i.i

bb.n:                                             ; preds = %._crit_edge.i
  %i.bi = zext nneg i32 %i.at to i64
  br label %rshift_rnd64.exit.i.i.i

rshift_rnd64.exit.i.i.i:                          ; preds = %bb.n, %bb.m, %bb.l
  %.032.i.i.i = phi i64 [ %i.av, %bb.n ], [ %i.ba, %bb.l ], [ %i.bh, %bb.m ] ; 2 uses
  %.0.i.i.i = phi i64 [ %i.bi, %bb.n ], [ 1, %bb.l ], [ 1, %bb.m ]
  %i.bj = add i64 %.032.i.i.i, 512
  %i.bk = lshr i64 %i.bj, 10                      ; 2 uses
  %.03037.i.i.i = and i64 %.032.i.i.i, 1023
  %i.bl = icmp eq i64 %.03037.i.i.i, 512
  %i.bm = and i64 %i.bk, 18014398509481982
  %spec.select.i.i.i = select i1 %i.bl, i64 %i.bm, i64 %i.bk ; 4 uses
  %i.bn = icmp samesign ult i64 %spec.select.i.i.i, 4503599627370496
  br i1 %i.bn, label %normalize_sf64.exit.i, label %bb.o

bb.o:                                             ; preds = %rshift_rnd64.exit.i.i.i
  %i.bo = lshr i64 %spec.select.i.i.i, 53
  %i.bp = add nuw nsw i64 %i.bo, %.0.i.i.i        ; 2 uses
  %i.bq = icmp samesign ugt i64 %i.bp, 2046
  %spec.select38.i.i.i = select i1 %i.bq, i64 0, i64 %spec.select.i.i.i
  %i.br = tail call i64 @llvm.umin.i64(i64 %i.bp, i64 2047)
  %i.bs = shl nuw nsw i64 %i.br, 52
  %i.bt = or disjoint i64 %i.bs, %i.l
  br label %normalize_sf64.exit.i

normalize_sf64.exit.i:                            ; preds = %bb.o, %rshift_rnd64.exit.i.i.i
  %.2.i.i.i = phi i64 [ %spec.select.i.i.i, %rshift_rnd64.exit.i.i.i ], [ %spec.select38.i.i.i, %bb.o ]
  %.1.i.i.i = phi i64 [ %i.l, %rshift_rnd64.exit.i.i.i ], [ %i.bt, %bb.o ]
  %i.bu = and i64 %.2.i.i.i, 4503599627370495
  %i.bv = or disjoint i64 %.1.i.i.i, %i.bu
  br label %fmod_sf64.exit

fmod_sf64.exit:                                   ; preds = %bb.a, %bb.b, %bb.c, %normalize_sf64.exit.i
  %.039.i = phi i64 [ %i.bv, %normalize_sf64.exit.i ], [ 9221120237041090560, %bb.a ], [ %i.a, %bb.b ], [ %i.l, %bb.c ]
  %i.bw = bitcast i64 %.039.i to double
  ret double %i.bw
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local double @js_floor(double noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc double @rint_sf64(double noundef %0, i32 noundef 2) #8
  ret double %i.a
end_hunk_0
begin_hunk_1_@js_trunc:bb.a
bb.d:                                             ; preds = %bb.c
  %i.k = sub nuw nsw i32 1075, %i.d
  %i.l = zext nneg i32 %i.k to i64
  %.neg = shl nsw i64 -1, %i.l
  %i.m = and i64 %.neg, %i.a
  br label %rint_sf64.exit

rint_sf64.exit:                                   ; preds = %bb.b, %bb.c, %bb.d
  %.1.i = phi i64 [ %spec.select, %bb.b ], [ %i.a, %bb.c ], [ %i.m, %bb.d ]
  %i.n = bitcast i64 %.1.i to double
  ret double %i.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local double @js_round_inf(double noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc double @rint_sf64(double noundef %0, i32 noundef 5) #8
  ret double %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef double @js_fabs(double noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %0)
  ret double %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local double @js_scalbn(double noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = bitcast double %0 to i64                 ; 2 uses
  %i.b = lshr i64 %i.a, 32
  %i.c = trunc nuw i64 %i.b to i32                ; 3 uses
  %i.d = lshr i32 %i.c, 20
  %i.e = and i32 %i.d, 2047                       ; 2 uses
  switch i32 %i.e, label %.thread [
    i32 0, label %bb.b
    i32 2047, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = trunc i64 %i.a to i32
  %i.g = and i32 %i.c, 2147483647
  %i.h = or i32 %i.g, %i.f
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = fmul double %0, f0x4350000000000000      ; 3 uses
  %i.k = bitcast double %i.j to i64
  %i.l = lshr i64 %i.k, 32
  %i.m = trunc nuw i64 %i.l to i32                ; 2 uses
  %i.n = lshr i32 %i.m, 20
  %i.o = and i32 %i.n, 2047
  %i.p = add nsw i32 %i.o, -54
  %i.q = icmp slt i32 %1, -50000
  br i1 %i.q, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.r = fmul double %i.j, 1.000000e-300
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  %i.s = fadd double %0, %0
  br label %bb.n

.thread:                                          ; preds = %bb.a, %bb.c
  %.03444 = phi i32 [ %i.c, %bb.a ], [ %i.m, %bb.c ] ; 2 uses
  %.03543 = phi i32 [ %i.e, %bb.a ], [ %i.p, %bb.c ]
  %.03642 = phi double [ %0, %bb.a ], [ %i.j, %bb.c ] ; 5 uses
  %i.t = add nsw i32 %.03543, %1                  ; 5 uses
  %i.u = icmp sgt i32 %i.t, 2046
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.thread
  %i.v = tail call double @llvm.copysign.f64(double 1.000000e+300, double %.03642)
  %i.w = fmul nnan double %i.v, 1.000000e+300
  br label %bb.n

bb.g:                                             ; preds = %.thread
  %i.x = icmp sgt i32 %i.t, 0
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = and i32 %.03444, -2146435073
  %i.z = shl nuw nsw i32 %i.t, 20
  %i.aa = or disjoint i32 %i.z, %i.y
  %i.ab = bitcast double %.03642 to i64
  %i.ac = and i64 %i.ab, 4294967295
  %i.ad = zext i32 %i.aa to i64
  %i.ae = shl nuw i64 %i.ad, 32
  %i.af = or disjoint i64 %i.ae, %i.ac
  %i.ag = bitcast i64 %i.af to double
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.ah = icmp slt i32 %i.t, -53
  br i1 %i.ah, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ai = icmp sgt i32 %1, 50000
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call double @llvm.copysign.f64(double 1.000000e+300, double %.03642)
  %i.ak = fmul nnan double %i.aj, 1.000000e+300
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.al = tail call double @llvm.copysign.f64(double 1.000000e-300, double %.03642)
  %i.am = fmul nnan double %i.al, 1.000000e-300
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.an = and i32 %.03444, -2146435073
  %i.ao = shl nsw i32 %i.t, 20
  %i.ap = add nsw i32 %i.ao, 56623104
  %i.aq = or i32 %i.ap, %i.an
  %i.ar = bitcast double %.03642 to i64
  %i.as = and i64 %i.ar, 4294967295
  %i.at = zext i32 %i.aq to i64
  %i.au = shl nuw i64 %i.at, 32
  %i.av = or disjoint i64 %i.au, %i.as
  %i.aw = bitcast i64 %i.av to double
  %i.ax = fmul double %i.aw, f0x3C90000000000000
  br label %bb.n

bb.n:                                             ; preds = %bb.b, %bb.m, %bb.l, %bb.k, %bb.h, %bb.f, %bb.e, %bb.d
  %.0 = phi double [ %i.ax, %bb.m ], [ %i.r, %bb.d ], [ %i.s, %bb.e ], [ %i.w, %bb.f ], [ %i.ag, %bb.h ], [ %i.ak, %bb.k ], [ %i.am, %bb.l ], [ %0, %bb.b ]
  ret double %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.copysign.f64(double, double) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef double @js_sqrt(double noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call double @llvm.sqrt.f64(double %0)
  ret double %i.a
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #3

; Function Attrs: nofree norecurse nosync nounwind optsize memory(argmem: write) uwtable
define dso_local i32 @js_rem_pio2(double noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [3 x i64], align 16               ; 6 uses
  %i.b = alloca i64, align 8                      ; 13 uses
  %i.c = bitcast double %0 to i64                 ; 6 uses
  %i.d = lshr i64 %i.c, 32
  %i.e = trunc nuw i64 %i.d to i32
  %i.f = and i32 %i.e, 2147483647                 ; 5 uses
  %i.g = icmp samesign ult i32 %i.f, 1072243196
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store double %0, ptr %1, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double 0.000000e+00, ptr %i.h, align 8, !tbaa !15
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i32 %i.f, 1094263292
  br i1 %i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.j = tail call double @llvm.fabs.f64(double %0) ; 2 uses
  %i.k = icmp samesign ult i32 %i.f, 1073928572   ; 2 uses
  %i.l = tail call double @llvm.fmuladd.f64(double %i.j, double f0x3FE45F306DC9C883, double 5.000000e-01)
  %i.m = fptosi double %i.l to i32                ; 2 uses
  %i.n = uitofp nneg i32 %i.m to double
  %.046 = select i1 %i.k, double 1.000000e+00, double %i.n ; 3 uses
  %.045 = select i1 %i.k, i32 1, i32 %i.m         ; 2 uses
  %i.o = fneg double %.046                        ; 2 uses
  %i.p = tail call double @llvm.fmuladd.f64(double %i.o, double f0x3FF921FB54400000, double %i.j) ; 3 uses
  %i.q = fmul nnan double %.046, f0x3DD0B4611A626331 ; 2 uses
  %i.r = fsub double %i.p, %i.q                   ; 2 uses
  %i.s = lshr i32 %i.f, 20                        ; 2 uses
  %i.t = bitcast double %i.r to i64
  %sum.shift58 = lshr i64 %i.t, 52
  %i.u = trunc nuw nsw i64 %sum.shift58 to i32
  %i.v = and i32 %i.u, 2047
  %i.w = sub nsw i32 %i.s, %i.v
  %.not59 = icmp sgt i32 %i.w, 16
  br i1 %.not59, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %invariant.op = sub nsw i32 %i.s, 49
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %i.x = phi double [ %i.aa, %bb.e ], [ %i.p, %.lr.ph.preheader ]
  %indvars.iv60 = phi i64 [ 2, %bb.e ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %2 = phi i1 [ true, %bb.e ], [ false, %.lr.ph.preheader ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr @pio2_tab, i64 %indvars.iv60
  %i.z = load double, ptr %i.y, align 8, !tbaa !15
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.o, double %i.z, double %i.x) ; 4 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr @pio2_t_tab, i64 %indvars.iv60
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !15
  %i.ad = fmul double %.046, %i.ac                ; 3 uses
  %i.ae = fsub double %i.aa, %i.ad                ; 3 uses
  br i1 %2, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.af = bitcast double %i.ae to i64
  %sum.shift = lshr i64 %i.af, 52
  %i.ag = trunc nuw nsw i64 %sum.shift to i32
  %i.ah = and i32 %i.ag, 2047
  %.not = icmp slt i32 %i.ah, %invariant.op
  br i1 %.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %.lr.ph, %bb.d
  %.lcssa52 = phi double [ %i.r, %bb.d ], [ %i.ae, %.lr.ph ], [ %i.ae, %bb.e ] ; 3 uses
  %.lcssa51 = phi double [ %i.p, %bb.d ], [ %i.aa, %.lr.ph ], [ %i.aa, %bb.e ]
  %.lcssa50 = phi double [ %i.q, %bb.d ], [ %i.ad, %.lr.ph ], [ %i.ad, %bb.e ]
  store double %.lcssa52, ptr %1, align 8, !tbaa !15
  %i.ai = fsub double %.lcssa51, %.lcssa52
  %i.aj = fsub double %i.ai, %.lcssa50            ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.aj, ptr %i.ak, align 8, !tbaa !15
  %i.al = icmp slt i64 %i.c, 0
  br i1 %i.al, label %bb.f, label %bb.s

bb.f:                                             ; preds = %._crit_edge
  %i.am = insertelement <2 x double> poison, double %.lcssa52, i64 0
  %i.an = insertelement <2 x double> %i.am, double %i.aj, i64 1
  %i.ao = fneg <2 x double> %i.an
  store <2 x double> %i.ao, ptr %1, align 8, !tbaa !15
  %i.ap = sub nsw i32 0, %.045
  br label %bb.s

bb.g:                                             ; preds = %bb.c
  %i.aq = icmp samesign ugt i32 %i.f, 2146435071
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ar = fsub double %0, %0                      ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.ar, ptr %i.as, align 8, !tbaa !15
  store double %i.ar, ptr %1, align 8, !tbaa !15
  br label %bb.s

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.at = lshr i64 %i.c, 52                       ; 2 uses
  %i.au = and i64 %i.at, 2047
  %i.av = trunc nuw nsw i64 %i.at to i32
  %i.aw = sub nsw i32 51, %i.av
  %i.ax = and i32 %i.aw, 63                       ; 3 uses
  %i.ay = zext nneg i32 %i.ax to i64
  %.not.i.i = icmp ne i32 %i.ax, 0
  %i.az = sub nuw nsw i32 64, %i.ax
  %i.ba = zext nneg i32 %i.az to i64
  br label %bb.j

bb.j:                                             ; preds = %get_u64_at_bit.exit.i, %bb.i
  %indvars.iv.i = phi i64 [ 0, %bb.i ], [ %indvars.iv.next.i, %get_u64_at_bit.exit.i ] ; 3 uses
  %i.bb = shl nuw nsw i64 %indvars.iv.i, 6
  %i.bc = sub nsw i64 %i.bb, %i.au                ; 2 uses
  %i.bd = add nsw i64 %i.bc, 2099
  %i.be = lshr i64 %i.bd, 6
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr @T, i64 %i.be ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !17
  %i.bh = lshr i64 %i.bg, %i.ay                   ; 2 uses
  %i.bi = icmp slt i64 %i.bc, -947
  %or.cond.i.i = and i1 %.not.i.i, %i.bi
  br i1 %or.cond.i.i, label %bb.k, label %get_u64_at_bit.exit.i

bb.k:                                             ; preds = %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !17
  %i.bl = shl i64 %i.bk, %i.ba
  %i.bm = or i64 %i.bl, %i.bh
  br label %get_u64_at_bit.exit.i

get_u64_at_bit.exit.i:                            ; preds = %bb.k, %bb.j
  %.0.i.i = phi i64 [ %i.bm, %bb.k ], [ %i.bh, %bb.j ]
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i
  store i64 %.0.i.i, ptr %i.bn, align 8, !tbaa !17
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 3
  br i1 %exitcond.not.i, label %bb.l, label %bb.j, !llvm.loop !19

bb.l:                                             ; preds = %get_u64_at_bit.exit.i
  %i.bo = lshr i64 %i.c, 63                       ; 2 uses
  %i.bp = and i64 %i.c, 4503599627370495
  %i.bq = or disjoint i64 %i.bp, 4503599627370496 ; 3 uses
  %i.br = load i64, ptr %i.a, align 16, !tbaa !17
  %i.bs = call fastcc i64 @mul_u64(ptr noundef %i.b, i64 noundef %i.bq, i64 noundef %i.br) #8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !17
  %i.bv = call fastcc i64 @mul_u64(ptr noundef %i.b, i64 noundef %i.bq, i64 noundef %i.bu) #8
  %i.bw = load i64, ptr %i.b, align 8, !tbaa !17  ; 2 uses
  %i.bx = add i64 %i.bw, %i.bs                    ; 3 uses
  %i.by = icmp ult i64 %i.bx, %i.bw
  %i.bz = zext i1 %i.by to i64
  %i.ca = add i64 %i.bv, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cc = load i64, ptr %i.cb, align 16, !tbaa !17
  %i.cd = call fastcc i64 @mul_u64(ptr noundef %i.b, i64 noundef %i.bq, i64 noundef %i.cc) #8 ; 0 uses
  %i.ce = load i64, ptr %i.b, align 8, !tbaa !17
  %i.cf = add i64 %i.ca, %i.ce                    ; 3 uses
  %i.cg = lshr i64 %i.cf, 61
  %i.ch = trunc nuw nsw i64 %i.cg to i32
  %i.ci = and i32 %i.ch, 1                        ; 2 uses
  %i.cj = tail call i64 @llvm.fshl.i64(i64 %i.cf, i64 %i.bx, i64 2) ; 2 uses
  %i.ck = shl i64 %i.bx, 2                        ; 3 uses
  %.not.i = icmp eq i32 %i.ci, 0
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cl = xor i64 %i.bo, 1
  %i.cm = sub i64 0, %i.ck
  %i.cn = icmp ne i64 %i.ck, 0
  %i.co = sext i1 %i.cn to i64
  %spec.select.i = sub i64 %i.co, %i.cj
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0.i = phi i64 [ %i.bo, %bb.l ], [ %i.cl, %bb.m ]
  %.sroa.14.0.i = phi i64 [ %i.cj, %bb.l ], [ %spec.select.i, %bb.m ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %i.ck, %bb.l ], [ %i.cm, %bb.m ]
  %i.cp = call fastcc i64 @mul_u64(ptr noundef %i.b, i64 noundef %.sroa.0.0.i, i64 noundef -3958705157555305932) #8
  %i.cq = load i64, ptr %i.b, align 8, !tbaa !17
  %i.cr = call fastcc i64 @mul_u64(ptr noundef %i.b, i64 noundef %.sroa.14.0.i, i64 noundef -4267615245585081135) #8 ; 2 uses
  %i.cs = load i64, ptr %i.b, align 8, !tbaa !17
  %i.ct = xor i64 %i.cs, -1
  %i.cu = icmp ugt i64 %i.cq, %i.ct
  %i.cv = add i64 %i.cr, %i.cp                    ; 2 uses
  %i.cw = icmp ult i64 %i.cv, %i.cr
  %i.cx = zext i1 %i.cu to i64                    ; 2 uses
  %i.cy = add i64 %i.cv, %i.cx                    ; 2 uses
  %i.cz = icmp ult i64 %i.cy, %i.cx
  %i.da = or i1 %i.cw, %i.cz
  %i.db = zext i1 %i.da to i64
  %i.dc = call fastcc i64 @mul_u64(ptr noundef %i.b, i64 noundef %.sroa.14.0.i, i64 noundef -3958705157555305932) #8
  %i.dd = load i64, ptr %i.b, align 8, !tbaa !17  ; 2 uses
  %i.de = add i64 %i.cy, %i.dd                    ; 3 uses
  %i.df = icmp ult i64 %i.de, %i.dd
  %i.dg = zext i1 %i.df to i64
  %i.dh = add i64 %i.dc, %i.db
  %i.di = add i64 %i.dh, %i.dg                    ; 3 uses
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %rem_pio2_large.exit

bb.p:                                             ; preds = %bb.n
  %i.dk = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.di, i1 true) ; 4 uses
  %i.dl = tail call i64 @llvm.fshl.i64(i64 %i.di, i64 %i.de, i64 %i.dk) ; 2 uses
  %i.dm = shl i64 %i.de, %i.dk
  %i.dn = lshr i64 %i.dl, 11
  %i.do = and i64 %i.dn, 4503599627370495
  %i.dp = shl i64 %i.dl, 42
  %i.dq = and i64 %i.dp, 9002801208229888
  %i.dr = lshr i64 %i.dm, 22
  %i.ds = or disjoint i64 %i.dq, %i.dr            ; 3 uses
  %i.dt = shl nuw i64 %.0.i, 63                   ; 2 uses
  %i.du = shl nuw nsw i64 %i.dk, 52
  %i.dv = or disjoint i64 %i.do, %i.du
  %i.dw = or disjoint i64 %i.dv, %i.dt
  %i.dx = xor i64 %i.dw, 4607182418800017408
  store i64 %i.dx, ptr %1, align 8, !tbaa !15
  %i.dy = icmp eq i64 %i.ds, 0
  br i1 %i.dy, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double 0.000000e+00, ptr %i.dz, align 8, !tbaa !15
  br label %rem_pio2_large.exit

bb.r:                                             ; preds = %bb.p
  %i.ea = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ds, i1 true) ; 2 uses
  %i.eb = add nsw i64 %i.ea, -11
  %i.ec = shl i64 %i.ds, %i.eb
  %i.ed = and i64 %i.ec, 4503599627370495
  %i.ee = add nuw nsw i64 %i.ea, %i.dk
  %reass.sub77.i = or disjoint i64 %i.dt, 4418031234450456576
  %i.ef = shl nuw nsw i64 %i.ee, 52
  %i.eg = sub nuw nsw i64 %reass.sub77.i, %i.ef
  %i.eh = or disjoint i64 %i.eg, %i.ed
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.eh, ptr %i.ei, align 8, !tbaa !15
  br label %rem_pio2_large.exit

rem_pio2_large.exit:                              ; preds = %bb.o, %bb.q, %bb.r
  %i.ej = lshr i64 %i.cf, 62
  %i.ek = trunc nuw nsw i64 %i.ej to i32
  %i.el = add nuw nsw i32 %i.ci, %i.ek            ; 2 uses
  %i.em = sub nsw i32 0, %i.el
  %.not6972.i = icmp slt i64 %i.c, 0
end_hunk_1
begin_hunk_2_@js_acos:bb.a

bb.m:                                             ; preds = %bb.f, %bb.c, %bb.l, %bb.k, %R.exit, %bb.d
  %.0 = phi double [ %., %bb.c ], [ %i.bc, %bb.l ], [ %i.l, %bb.d ], [ %i.as, %bb.k ], [ %i.ab, %R.exit ], [ f0x3FF921FB54442D18, %bb.f ]
  ret double %.0
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(none) uwtable
define dso_local double @js_atan(double noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = bitcast double %0 to i64                 ; 3 uses
  %i.b = lshr i64 %i.a, 32
  %i.c = trunc nuw i64 %i.b to i32                ; 2 uses
  %i.d = and i32 %i.c, 2147483647                 ; 8 uses
  %i.e = icmp samesign ugt i32 %i.d, 1141899263
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = icmp samesign ugt i32 %i.d, 2146435072
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ne i32 %i.d, 2146435072
  %i.h = and i64 %i.a, 4294967295
  %.not = icmp eq i64 %i.h, 0
  %or.cond55 = or i1 %.not, %i.g
  br i1 %or.cond55, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = fadd double %0, %0
  br label %bb.s

bb.e:                                             ; preds = %bb.c
  %i.j = icmp sgt i32 %i.c, 0
  %. = select i1 %i.j, double f0x3FF921FB54442D18, double f0xBFF921FB54442D18
  br label %bb.s

bb.f:                                             ; preds = %bb.a
  %i.k = icmp samesign ult i32 %i.d, 1071382528   ; 2 uses
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = icmp samesign ult i32 %i.d, 1042284544
  %i.m = fadd double %0, 1.000000e+300
  %i.n = fcmp ogt double %i.m, 1.000000e+00
  %or.cond = and i1 %i.n, %i.l
  br i1 %or.cond, label %bb.s, label %bb.o

bb.h:                                             ; preds = %bb.f
  %i.o = tail call double @llvm.fabs.f64(double %0) ; 7 uses
  %i.p = icmp samesign ult i32 %i.d, 1072889856
  br i1 %i.p, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.q = icmp samesign ult i32 %i.d, 1072037888
  br i1 %i.q, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.r = tail call double @llvm.fmuladd.f64(double %i.o, double 2.000000e+00, double -1.000000e+00)
  %i.s = fadd double %i.o, 2.000000e+00
  %i.t = fdiv double %i.r, %i.s
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  %i.u = fadd double %i.o, -1.000000e+00
  %i.v = fadd double %i.o, 1.000000e+00
  %i.w = fdiv double %i.u, %i.v
  br label %bb.o

bb.l:                                             ; preds = %bb.h
  %i.x = icmp samesign ult i32 %i.d, 1073971200
  br i1 %i.x, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.y = fadd double %i.o, -1.500000e+00
  %i.z = tail call double @llvm.fmuladd.f64(double %i.o, double 1.500000e+00, double 1.000000e+00)
  %i.aa = fdiv double %i.y, %i.z
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ab = fdiv double -1.000000e+00, %i.o
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %bb.k, %bb.j, %bb.n, %bb.m
  %.046 = phi double [ %i.ab, %bb.n ], [ %i.t, %bb.j ], [ %i.w, %bb.k ], [ %i.aa, %bb.m ], [ %0, %bb.g ] ; 6 uses
  %.0 = phi i64 [ 3, %bb.n ], [ 0, %bb.j ], [ 1, %bb.k ], [ 2, %bb.m ], [ 4294967295, %bb.g ] ; 2 uses
  %i.ac = fmul double %.046, %.046                ; 3 uses
  %i.ad = fmul double %i.ac, %i.ac                ; 3 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %indvars.iv.i = phi i64 [ 4, %bb.o ], [ %indvars.iv.next.i, %bb.p ] ; 3 uses
  %.0910.i = phi double [ f0x3F90AD3AE322DA11, %bb.o ], [ %i.ag, %bb.p ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr @aT_even, i64 %indvars.iv.i
  %i.af = load double, ptr %i.ae, align 8, !tbaa !15
  %i.ag = tail call double @llvm.fmuladd.f64(double %.0910.i, double %i.ad, double %i.af) ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %.not.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not.i, label %eval_poly.exit, label %bb.p, !llvm.loop !0

eval_poly.exit:                                   ; preds = %bb.p, %eval_poly.exit
  %indvars.iv.i50 = phi i64 [ %indvars.iv.next.i52, %eval_poly.exit ], [ 3, %bb.p ] ; 3 uses
  %.0910.i51 = phi double [ %i.aj, %eval_poly.exit ], [ f0xBFA2B4442C6A6C2F, %bb.p ]
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr @aT_odd, i64 %indvars.iv.i50
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !15
  %i.aj = tail call double @llvm.fmuladd.f64(double %.0910.i51, double %i.ad, double %i.ai) ; 2 uses
  %indvars.iv.next.i52 = add nsw i64 %indvars.iv.i50, -1
  %.not.i53 = icmp eq i64 %indvars.iv.i50, 0
  br i1 %.not.i53, label %eval_poly.exit54, label %eval_poly.exit, !llvm.loop !0

eval_poly.exit54:                                 ; preds = %eval_poly.exit
  %i.ak = fmul double %i.ac, %i.ag                ; 2 uses
  %i.al = fmul double %i.ad, %i.aj                ; 2 uses
  br i1 %i.k, label %bb.q, label %bb.r

bb.q:                                             ; preds = %eval_poly.exit54
  %i.am = fadd double %i.ak, %i.al
  %i.an = fneg double %.046
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.an, double %i.am, double %.046)
  br label %bb.s

bb.r:                                             ; preds = %eval_poly.exit54
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @atanhi, i64 %.0
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !15
  %i.ar = fadd double %i.ak, %i.al
  %i.as = getelementptr inbounds nuw [8 x i8], ptr @atanlo, i64 %.0
  %i.at = load double, ptr %i.as, align 8, !tbaa !15
  %i.au = fneg double %i.at
  %i.av = tail call double @llvm.fmuladd.f64(double %.046, double %i.ar, double %i.au)
  %i.aw = fsub double %i.av, %.046
  %i.ax = fsub double %i.aq, %i.aw                ; 2 uses
  %i.ay = icmp slt i64 %i.a, 0
  %i.az = fneg double %i.ax
  %i.ba = select i1 %i.ay, double %i.az, double %i.ax
  br label %bb.s

bb.s:                                             ; preds = %bb.g, %bb.e, %bb.r, %bb.q, %bb.d
  %.047 = phi double [ %i.i, %bb.d ], [ %., %bb.e ], [ %i.ba, %bb.r ], [ %i.ao, %bb.q ], [ %0, %bb.g ]
  ret double %.047
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(none) uwtable
define dso_local double @js_atan2(double noundef %0, double noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = bitcast double %1 to i64                 ; 3 uses
  %i.b = lshr i64 %i.a, 32
  %i.c = trunc nuw i64 %i.b to i32                ; 3 uses
  %i.d = trunc i64 %i.a to i32                    ; 3 uses
  %i.e = bitcast double %0 to i64                 ; 2 uses
  %i.f = lshr i64 %i.e, 32
  %i.g = trunc nuw i64 %i.f to i32                ; 2 uses
  %i.h = trunc i64 %i.e to i32                    ; 2 uses
  %i.i = and i32 %i.c, 2147483647                 ; 4 uses
  %i.j = and i32 %i.g, 2147483647                 ; 4 uses
  %i.k = icmp ne i32 %i.d, 0
  %i.l = zext i1 %i.k to i32
  %i.m = or i32 %i.i, %i.l
  %i.n = icmp samesign ugt i32 %i.m, 2146435072
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = icmp ne i32 %i.h, 0
  %i.p = zext i1 %i.o to i32
  %i.q = or i32 %i.j, %i.p
  %i.r = icmp samesign ugt i32 %i.q, 2146435072
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.s = fadd double %0, %1
  br label %bb.t

bb.d:                                             ; preds = %bb.b
  %i.t = add nsw i32 %i.c, -1072693248
  %i.u = or i32 %i.t, %i.d
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = tail call double @js_atan(double noundef %0) #8
  br label %bb.t

bb.f:                                             ; preds = %bb.d
  %i.x = lshr i32 %i.g, 31
  %i.y = lshr i32 %i.c, 30
  %i.z = and i32 %i.y, 2
  %i.aa = or disjoint i32 %i.z, %i.x
  %i.ab = or i32 %i.j, %i.h
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.p, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = or i32 %i.i, %i.d
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.af = tail call double @llvm.copysign.f64(double f0x3FF921FB54442D18, double %0)
  br label %bb.t

bb.i:                                             ; preds = %bb.g
  %i.ag = icmp eq i32 %i.i, 2146435072
  %i.ah = icmp eq i32 %i.j, 2146435072            ; 4 uses
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %. = select i1 %i.ah, double f0x3FE921FB54442D17, double f0xBCA1A62633145C07
  %.49 = select i1 %i.ah, double f0xC002D97C7F3321D2, double f0xC00921FB54442D18
  %..a = select i1 %i.ah, double f0x3FE921FB54442D18, double 0.000000e+00
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  br i1 %i.ah, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ai = tail call double @llvm.copysign.f64(double f0x3FF921FB54442D18, double %0)
  br label %bb.t

bb.m:                                             ; preds = %bb.k
  %i.aj = sub nsw i32 %i.j, %i.i
  %i.ak = ashr i32 %i.aj, 20                      ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 60
  br i1 %i.al, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = icmp slt i64 %i.a, 0
  %i.an = icmp slt i32 %i.ak, -60
  %or.cond = and i1 %i.am, %i.an
  br i1 %or.cond, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = fdiv double %0, %1
  %i.ap = tail call double @llvm.fabs.f64(double %i.ao)
  %i.aq = tail call double @js_atan(double noundef %i.ap) #8 ; 2 uses
  %2 = fadd double %i.aq, f0xBCA1A62633145C07     ; 2 uses
  %3 = fadd double %2, f0xC00921FB54442D18
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.m, %bb.j, %bb.f, %bb.o
  %.045 = phi double [ %2, %bb.o ], [ %., %bb.j ], [ f0xBCA1A62633145C07, %bb.f ], [ f0x3FF921FB54442D17, %bb.m ], [ f0xBCA1A62633145C07, %bb.n ]
  %4 = phi double [ %3, %bb.o ], [ %.49, %bb.j ], [ f0xC00921FB54442D18, %bb.f ], [ f0xBFF921FB54442D19, %bb.m ], [ f0xC00921FB54442D18, %bb.n ]
  %.045.a = phi double [ %i.aq, %bb.o ], [ %..a, %bb.j ], [ 0.000000e+00, %bb.f ], [ f0x3FF921FB54442D18, %bb.m ], [ 0.000000e+00, %bb.n ] ; 2 uses
  switch i32 %i.aa, label %default.unreachable [
    i32 0, label %bb.t
    i32 1, label %bb.q
    i32 2, label %bb.r
    i32 3, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  %i.ar = fneg double %.045.a
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.as = fsub double f0x400921FB54442D18, %.045
  br label %bb.t

default.unreachable:                              ; preds = %bb.p
  unreachable

bb.s:                                             ; preds = %bb.p
  br label %bb.t

bb.t:                                             ; preds = %bb.p, %bb.s, %bb.r, %bb.q, %bb.l, %bb.h, %bb.e, %bb.c
  %.0 = phi double [ %i.s, %bb.c ], [ %i.w, %bb.e ], [ %4, %bb.s ], [ %i.ai, %bb.l ], [ %i.ar, %bb.q ], [ %i.as, %bb.r ], [ %i.af, %bb.h ], [ %.045.a, %bb.p ]
  ret double %.0
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(none) uwtable
define dso_local double @js_exp(double noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = bitcast double %0 to i64                 ; 3 uses
  %i.b = lshr i64 %i.a, 32
  %i.c = trunc nuw i64 %i.b to i32                ; 3 uses
  %i.d = lshr i32 %i.c, 31                        ; 4 uses
  %i.e = and i32 %i.c, 2147483647                 ; 5 uses
  %i.f = icmp samesign ugt i32 %i.e, 1082535489
  br i1 %i.f, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = icmp samesign ugt i32 %i.e, 2146435071
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = and i32 %i.c, 1048575
  %i.i = trunc i64 %i.a to i32
  %i.j = or i32 %i.h, %i.i
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = fadd double %0, %0
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.l = icmp sgt i64 %i.a, -1
  %i.m = select i1 %i.l, double %0, double 0.000000e+00
  br label %bb.l

bb.f:                                             ; preds = %bb.b
  %i.n = fcmp ogt double %0, f0x40862E42FEFA39EF
  br i1 %i.n, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = fcmp olt double %0, f0xC0874910D52D3051
  br i1 %i.o, label %bb.l, label %.thread49

bb.h:                                             ; preds = %bb.a
  %i.p = icmp samesign ugt i32 %i.e, 1071001154
  br i1 %i.p, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.q = icmp samesign ult i32 %i.e, 1072734898
  br i1 %i.q, label %.thread56, label %.thread49

.thread56:                                        ; preds = %bb.i
  %i.r = zext nneg i32 %i.d to i64                ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @ln2HI, i64 %i.r
  %i.t = load double, ptr %i.s, align 8, !tbaa !15
  %i.u = fsub double %0, %i.t                     ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr @ln2LO, i64 %i.r
  %i.w = load double, ptr %i.v, align 8, !tbaa !15 ; 2 uses
  %i.x = xor i32 %i.d, 1
  %i.y = sub nsw i32 %i.x, %i.d
  %i.z = fsub double %i.u, %i.w
  br label %.split

bb.j:                                             ; preds = %bb.h
  %i.aa = icmp samesign ult i32 %i.e, 1043333120
  %i.ab = fadd double %0, 1.000000e+300
  %i.ac = fcmp ogt double %i.ab, 1.000000e+00
  %or.cond = and i1 %i.ac, %i.aa
  br i1 %or.cond, label %bb.k, label %.split45

bb.k:                                             ; preds = %bb.j
  %i.ad = fadd double %0, 1.000000e+00
  br label %bb.l

.thread49:                                        ; preds = %bb.g, %bb.i
  %i.ae = zext nneg i32 %i.d to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr @halF, i64 %i.ae
  %i.ag = load double, ptr %i.af, align 8, !tbaa !15
  %i.ah = tail call double @llvm.fmuladd.f64(double %0, double f0x3FF71547652B82FE, double %i.ag)
  %i.ai = fptosi double %i.ah to i32              ; 3 uses
  %i.aj = sitofp i32 %i.ai to double              ; 2 uses
  %i.ak = fneg double %i.aj
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ak, double f0x3FE62E42FEE00000, double %0) ; 2 uses
  %i.am = fmul nnan double %i.aj, f0x3DEA39EF35793C76 ; 2 uses
  %1 = icmp eq i32 %i.ai, 0
  %2 = fsub double %i.al, %i.am                   ; 2 uses
  br i1 %1, label %.split45, label %.split

.split:                                           ; preds = %.thread56, %.thread49
  %i.an = phi double [ %i.z, %.thread56 ], [ %2, %.thread49 ]
  %.062 = phi i32 [ %i.y, %.thread56 ], [ %i.ai, %.thread49 ]
  %.03761 = phi double [ %i.w, %.thread56 ], [ %i.am, %.thread49 ]
  %.03960 = phi double [ %i.u, %.thread56 ], [ %i.al, %.thread49 ]
  %i.ao = tail call fastcc double @kernel_exp(double noundef %i.an, double noundef 0.000000e+00, double noundef %.03761, double noundef %.03960, i32 noundef %.062) #8
  br label %bb.l

.split45:                                         ; preds = %bb.j, %.thread49
  %.04255 = phi double [ %2, %.thread49 ], [ %0, %bb.j ] ; 2 uses
  %i.ap = tail call fastcc double @kernel_exp(double noundef %.04255, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %.04255, i32 noundef 0) #8
  br label %bb.l

bb.l:                                             ; preds = %.split45, %.split, %bb.g, %bb.f, %bb.k, %bb.e, %bb.d
  %.043 = phi double [ %i.k, %bb.d ], [ %i.m, %bb.e ], [ %i.ad, %bb.k ], [ +inf, %bb.f ], [ 0.000000e+00, %bb.g ], [ %i.ao, %.split ], [ %i.ap, %.split45 ]
  ret double %.043
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(none) uwtable
define internal fastcc double @kernel_exp(double noundef %0, double noundef %1, double noundef %2, double noundef %3, i32 noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = fmul double %0, %0                       ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ 3, %bb.a ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %.0910.i = phi double [ f0x3E66376972BEA4D0, %bb.a ], [ %i.d, %bb.b ]
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @P, i64 %indvars.iv.i
  %i.c = load double, ptr %i.b, align 8, !tbaa !15
  %i.d = tail call double @llvm.fmuladd.f64(double %.0910.i, double %i.a, double %i.c) ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %.not.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not.i, label %eval_poly.exit, label %bb.b, !llvm.loop !0

eval_poly.exit:                                   ; preds = %bb.b
  %i.e = fneg double %i.a
  %i.f = tail call double @llvm.fmuladd.f64(double %i.e, double %i.d, double %0) ; 2 uses
  %i.g = fmul double %0, %i.f
  %i.h = fadd double %i.f, -2.000000e+00
  %i.i = fdiv double %i.g, %i.h
  %i.j = tail call double @llvm.fmuladd.f64(double %0, double %1, double %1)
  %i.k = fsub double %i.i, %i.j
  %i.l = fadd double %2, %i.k
  %i.m = fsub double %3, %i.l
  %i.n = fadd double %i.m, 1.000000e+00           ; 2 uses
  %i.o = bitcast double %i.n to i64               ; 2 uses
  %i.p = lshr i64 %i.o, 32
  %i.q = trunc nuw i64 %i.p to i32
  %i.r = shl i32 %4, 20
  %i.s = add nsw i32 %i.r, %i.q                   ; 2 uses
  %i.t = icmp slt i32 %i.s, 1048576
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %eval_poly.exit
  %i.u = tail call double @js_scalbn(double noundef %i.n, i32 noundef %4) #8
  br label %bb.e

bb.d:                                             ; preds = %eval_poly.exit
  %i.v = and i64 %i.o, 4294967295
  %i.w = zext nneg i32 %i.s to i64
  %i.x = shl nuw nsw i64 %i.w, 32
  %i.y = or disjoint i64 %i.x, %i.v
  %i.z = bitcast i64 %i.y to double
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi double [ %i.u, %bb.c ], [ %i.z, %bb.d ]
  ret double %.0
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(none) uwtable
define dso_local double @js_log2(double noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc double @js_log_internal(double noundef %0, i32 noundef 0) #8
  ret double %i.a
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(none) uwtable
define internal fastcc double @js_log_internal(double noundef %0, i32 noundef range(i32 0, 3) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.c = bitcast double %0 to i64                 ; 4 uses
  %i.d = lshr i64 %i.c, 32
  %i.e = trunc nuw i64 %i.d to i32                ; 2 uses
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = trunc i64 %i.c to i32
  %i.h = and i32 %i.e, 2147483647
  %i.i = or i32 %i.h, %i.g
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp slt i64 %i.c, 0
  br i1 %i.k, label %bb.k, label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %i.c, 9218868437227405311
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = fadd double %0, %0
  br label %bb.k

bb.f:                                             ; preds = %bb.d, %bb.c
  call fastcc void @kernel_log2(ptr noundef %i.a, ptr noundef %i.b, double noundef %0) #8
  %i.n = load double, ptr %i.a, align 8, !tbaa !15 ; 2 uses
  %i.o = load double, ptr %i.b, align 8, !tbaa !15 ; 2 uses
  %i.p = fadd double %i.n, %i.o                   ; 2 uses
  %i.q = icmp eq i32 %1, 0
  br i1 %i.q, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = bitcast double %i.p to i64
  %i.s = and i64 %i.r, -4294967296
  %i.t = bitcast i64 %i.s to double               ; 5 uses
  %i.u = icmp eq i32 %1, 1
  %i.v = fsub double %i.t, %i.n
  %i.w = fsub double %i.o, %i.v                   ; 2 uses
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = fmul double %i.t, f0x3FE62E4300000000
  %i.y = fmul double %i.t, f0xBE205C610CA86C39
  %i.z = tail call double @llvm.fmuladd.f64(double %i.w, double f0x3FE62E42FEFA39EF, double %i.y)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.aa = fmul double %i.t, f0x3FD3441300000000
  %i.ab = fmul double %i.t, f0x3E7427DE7FBCC47C
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.w, double f0x3FD34413509F79FF, double %i.ab)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.024 = phi double [ %i.x, %bb.h ], [ %i.aa, %bb.i ]
  %.023 = phi double [ %i.z, %bb.h ], [ %i.ac, %bb.i ]
  %i.ad = fadd double %.024, %.023
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %bb.c, %bb.b, %bb.j, %bb.e
  %.0 = phi double [ %i.m, %bb.e ], [ -inf, %bb.b ], [ +qnan, %bb.c ], [ %i.ad, %bb.j ], [ %i.p, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret double %.0
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(none) uwtable
define dso_local double @js_log(double noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc double @js_log_internal(double noundef %0, i32 noundef 1) #8
  ret double %i.a
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(none) uwtable
define dso_local double @js_log10(double noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc double @js_log_internal(double noundef %0, i32 noundef 2) #8
  ret double %i.a
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(none) uwtable
define dso_local double @js_pow(double noundef %0, double noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.c = bitcast double %0 to i64                 ; 5 uses
  %i.d = lshr i64 %i.c, 32
  %i.e = trunc nuw i64 %i.d to i32                ; 2 uses
  %i.f = trunc i64 %i.c to i32                    ; 2 uses
  %i.g = bitcast double %1 to i64                 ; 9 uses
  %i.h = lshr i64 %i.g, 32                        ; 3 uses
  %i.i = trunc nuw i64 %i.h to i32                ; 3 uses
  %i.j = trunc i64 %i.g to i32                    ; 4 uses
  %i.k = and i32 %i.e, 2147483647                 ; 8 uses
  %i.l = and i32 %i.i, 2147483647                 ; 12 uses
  %i.m = or i32 %i.l, %i.j
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.bh, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = icmp samesign ugt i32 %i.k, 2146435072
  br i1 %i.o, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = icmp eq i32 %i.k, 2146435072
  %i.q = icmp ne i32 %i.f, 0                      ; 2 uses
  %or.cond = and i1 %i.q, %i.p
  %i.r = icmp samesign ugt i32 %i.l, 2146435072
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.r
  br i1 %or.cond3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = icmp eq i32 %i.l, 2146435072             ; 2 uses
  %i.t = icmp ne i32 %i.j, 0                      ; 3 uses
  %or.cond5 = and i1 %i.t, %i.s
  br i1 %or.cond5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.u = fadd double %0, %1
  br label %bb.bh

bb.f:                                             ; preds = %bb.d
  %i.v = icmp slt i64 %i.c, 0                     ; 2 uses
end_hunk_2
begin_hunk_3_@js_pow:bb.a

bb.ap:                                            ; preds = %bb.ao
  %i.ce = icmp slt i64 %i.g, 0
  %i.cf = fmul nnan double %spec.store.select, 1.000000e+300
  %i.cg = fmul nnan double %i.cf, 1.000000e+300
  %i.ch = fmul nnan double %spec.store.select, 1.000000e-300
  %i.ci = fmul nnan double %i.ch, 1.000000e-300
  %i.cj = select i1 %i.ce, double %i.cg, double %i.ci
  br label %bb.bh

bb.aq:                                            ; preds = %bb.ao
  %i.ck = icmp samesign ugt i32 %i.k, 1072693248
  br i1 %i.ck, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.cl = icmp sgt i32 %i.i, 0
  %i.cm = fmul nnan double %spec.store.select, 1.000000e+300
  %i.cn = fmul nnan double %i.cm, 1.000000e+300
  %i.co = fmul nnan double %spec.store.select, 1.000000e-300
  %i.cp = fmul nnan double %i.co, 1.000000e-300
  %i.cq = select i1 %i.cl, double %i.cn, double %i.cp
  br label %bb.bh

bb.as:                                            ; preds = %bb.aq
  %i.cr = fadd double %i.be, -1.000000e+00        ; 5 uses
  %i.cs = fmul double %i.cr, %i.cr
  %i.ct = fneg double %i.cr                       ; 2 uses
  %i.cu = tail call double @llvm.fmuladd.f64(double %i.ct, double 2.500000e-01, double f0x3FD5555555555555)
  %i.cv = tail call double @llvm.fmuladd.f64(double %i.ct, double %i.cu, double 5.000000e-01)
  %i.cw = fmul double %i.cs, %i.cv
  %i.cx = fmul double %i.cr, f0x3FF7154760000000  ; 2 uses
  %i.cy = fmul double %i.cw, f0xBFF71547652B82FE
  %i.cz = tail call double @llvm.fmuladd.f64(double %i.cr, double f0x3E54AE0BF85DDF44, double %i.cy) ; 2 uses
  %i.da = fadd double %i.cx, %i.cz
  %i.db = bitcast double %i.da to i64
  %i.dc = and i64 %i.db, -4294967296
  %i.dd = bitcast i64 %i.dc to double             ; 2 uses
  %i.de = fsub double %i.dd, %i.cx
  %i.df = fsub double %i.cz, %i.de
  br label %bb.au

bb.at:                                            ; preds = %bb.aj
  call fastcc void @kernel_log2(ptr noundef %i.a, ptr noundef %i.b, double noundef %i.be) #8
  %.pre = load double, ptr %i.a, align 8, !tbaa !15
  %.pre204 = load double, ptr %i.b, align 8, !tbaa !15
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.dg = phi double [ %.pre204, %bb.at ], [ %i.df, %bb.as ]
  %i.dh = phi double [ %.pre, %bb.at ], [ %i.dd, %bb.as ] ; 2 uses
  %i.di = and i64 %i.g, -4294967296
  %i.dj = bitcast i64 %i.di to double             ; 2 uses
  %i.dk = fsub double %1, %i.dj
  %i.dl = fmul double %1, %i.dg
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.dk, double %i.dh, double %i.dl) ; 5 uses
  %i.dn = fmul double %i.dh, %i.dj                ; 5 uses
  %i.do = fadd double %i.dn, %i.dm                ; 3 uses
  %i.dp = bitcast double %i.do to i64             ; 4 uses
  %i.dq = lshr i64 %i.dp, 32
  %i.dr = trunc nuw i64 %i.dq to i32              ; 6 uses
  %i.ds = trunc i64 %i.dp to i32                  ; 2 uses
  %i.dt = icmp sgt i32 %i.dr, 1083179007
  br i1 %i.dt, label %bb.av, label %bb.az

bb.av:                                            ; preds = %bb.au
  %i.du = add nsw i32 %i.dr, -1083179008
  %i.dv = or i32 %i.du, %i.ds
  %.not192 = icmp eq i32 %i.dv, 0
  br i1 %.not192, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dw = fmul nnan double %spec.store.select, 1.000000e+300
  %i.dx = fmul nnan double %i.dw, 1.000000e+300
  br label %bb.bh

bb.ax:                                            ; preds = %bb.av
  %i.dy = fadd double %i.dm, f0x3C971547652B82FE
  %i.dz = fsub double %i.do, %i.dn
  %i.ea = fcmp ogt double %i.dy, %i.dz
  br i1 %i.ea, label %bb.ay, label %bb.be

bb.ay:                                            ; preds = %bb.ax
  %i.eb = fmul nnan double %spec.store.select, 1.000000e+300
  %i.ec = fmul nnan double %i.eb, 1.000000e+300
  br label %bb.bh

bb.az:                                            ; preds = %bb.au
  %i.ed = and i32 %i.dr, 2147482624
  %i.ee = icmp samesign ugt i32 %i.ed, 1083231231
  br i1 %i.ee, label %bb.ba, label %bb.be

bb.ba:                                            ; preds = %bb.az
  %i.ef = add nsw i32 %i.dr, 1064252416
  %i.eg = or i32 %i.ef, %i.ds
  %.not = icmp eq i32 %i.eg, 0
  br i1 %.not, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.eh = fmul nnan double %spec.store.select, 1.000000e-300
  %i.ei = fmul nnan double %i.eh, 1.000000e-300
  br label %bb.bh

bb.bc:                                            ; preds = %bb.ba
  %i.ej = fsub double %i.do, %i.dn
  %i.ek = fcmp ugt double %i.dm, %i.ej
  br i1 %i.ek, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.el = fmul nnan double %spec.store.select, 1.000000e-300
  %i.em = fmul nnan double %i.el, 1.000000e-300
  br label %bb.bh

bb.be:                                            ; preds = %bb.az, %bb.bc, %bb.ax
  %i.en = and i32 %i.dr, 2147483647               ; 2 uses
  %i.eo = icmp samesign ugt i32 %i.en, 1071644672
  br i1 %i.eo, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ep = lshr i32 %i.en, 20
  %i.eq = add nsw i32 %i.ep, -1022
  %i.er = lshr i32 1048576, %i.eq
  %i.es = add nsw i32 %i.er, %i.dr                ; 3 uses
  %i.et = lshr i32 %i.es, 20
  %i.eu = and i32 %i.et, 2047                     ; 2 uses
  %i.ev = add nsw i32 %i.eu, -1023
  %i.ew = ashr i32 -1048576, %i.ev
  %i.ex = and i32 %i.ew, %i.es
  %i.ey = zext i32 %i.ex to i64
  %i.ez = shl nuw i64 %i.ey, 32
  %i.fa = bitcast i64 %i.ez to double
  %i.fb = and i32 %i.es, 1048575
  %i.fc = or disjoint i32 %i.fb, 1048576
  %i.fd = sub nsw i32 1043, %i.eu
  %i.fe = lshr i32 %i.fc, %i.fd                   ; 2 uses
  %i.ff = icmp slt i64 %i.dp, 0
  %i.fg = sub nsw i32 0, %i.fe
  %spec.select = select i1 %i.ff, i32 %i.fg, i32 %i.fe
  %i.fh = fsub double %i.dn, %i.fa                ; 2 uses
  %.pre205 = fadd double %i.dm, %i.fh
  %.pre206 = bitcast double %.pre205 to i64
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.pre-phi207 = phi i64 [ %.pre206, %bb.bf ], [ %i.dp, %bb.be ]
  %.0184 = phi double [ %i.fh, %bb.bf ], [ %i.dn, %bb.be ]
  %.1182 = phi i32 [ %spec.select, %bb.bf ], [ 0, %bb.be ]
  %i.fi = and i64 %.pre-phi207, -4294967296
  %i.fj = bitcast i64 %i.fi to double             ; 3 uses
  %i.fk = fmul double %i.fj, f0x3FE62E4300000000  ; 2 uses
  %i.fl = fsub double %i.fj, %.0184
  %i.fm = fsub double %i.dm, %i.fl
  %i.fn = fmul double %i.fj, f0xBE205C610CA86C39
  %i.fo = tail call double @llvm.fmuladd.f64(double %i.fm, double f0x3FE62E42FEFA39EF, double %i.fn) ; 2 uses
  %i.fp = fadd double %i.fk, %i.fo                ; 3 uses
  %i.fq = fsub double %i.fp, %i.fk
  %i.fr = fsub double %i.fo, %i.fq
  %i.fs = tail call fastcc double @kernel_exp(double noundef %i.fp, double noundef %i.fr, double noundef 0.000000e+00, double noundef %i.fp, i32 noundef %.1182) #8
  %i.ft = fmul double %spec.store.select, %i.fs
  br label %bb.bh

bb.bh:                                            ; preds = %bb.ac, %bb.af, %bb.ag, %bb.ae, %bb.v, %bb.a, %bb.bg, %bb.bd, %bb.bb, %bb.ay, %bb.aw, %bb.ar, %bb.ap, %bb.an, %bb.am, %bb.ai, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.t, %bb.r, %bb.e
  %.0 = phi double [ %i.em, %bb.bd ], [ %i.u, %bb.e ], [ %i.ap, %bb.r ], [ %i.as, %bb.t ], [ %i.av, %bb.u ], [ %i.ay, %bb.w ], [ 1.000000e+00, %bb.a ], [ %i.ba, %bb.y ], [ %i.bd, %bb.aa ], [ %0, %bb.v ], [ %i.bs, %bb.ai ], [ %i.ca, %bb.am ], [ %i.cc, %bb.an ], [ %i.cj, %bb.ap ], [ %i.cq, %bb.ar ], [ %i.dx, %bb.aw ], [ %i.ec, %bb.ay ], [ %i.ft, %bb.bg ], [ %i.ei, %bb.bb ], [ %i.bl, %bb.ae ], [ %i.bn, %bb.ag ], [ %.0180, %bb.af ], [ %.0180, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret double %.0
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(argmem: write) uwtable
define internal fastcc void @kernel_log2(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, double noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = bitcast double %2 to i64
  %i.b = lshr i64 %i.a, 32
  %i.c = trunc nuw i64 %i.b to i32                ; 2 uses
  %i.d = icmp slt i32 %i.c, 1048576               ; 3 uses
  %i.e = fmul double %2, f0x4340000000000000      ; 2 uses
  %i.f = bitcast double %i.e to i64
  %i.g = lshr i64 %i.f, 32
  %i.h = trunc nuw i64 %i.g to i32
  %.081 = select i1 %i.d, double %i.e, double %2
  %.078 = select i1 %i.d, i32 %i.h, i32 %i.c      ; 2 uses
  %i.i = ashr i32 %.078, 20
  %i.j = select i1 %i.d, i32 -1076, i32 -1023
  %i.k = add nsw i32 %i.j, %i.i                   ; 3 uses
  %i.l = and i32 %.078, 1048575                   ; 4 uses
  %i.m = or disjoint i32 %i.l, 1072693248         ; 2 uses
  %i.n = icmp samesign ult i32 %i.l, 235663
  br i1 %i.n, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = icmp samesign ult i32 %i.l, 767610
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = add nsw i32 %i.k, 1
  %i.q = or disjoint i32 %i.l, 1071644672
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.180 = phi i32 [ %i.p, %bb.c ], [ %i.k, %bb.a ], [ %i.k, %bb.b ]
  %.1 = phi i32 [ %i.q, %bb.c ], [ %i.m, %bb.a ], [ %i.m, %bb.b ] ; 2 uses
  %.0 = phi i64 [ 0, %bb.c ], [ 0, %bb.a ], [ 1, %bb.b ] ; 3 uses
  %.0.a = phi i32 [ 0, %bb.c ], [ 0, %bb.a ], [ 262144, %bb.b ]
  %i.r = bitcast double %.081 to i64
  %i.s = and i64 %i.r, 4294967295
  %i.t = zext nneg i32 %.1 to i64
  %i.u = shl nuw nsw i64 %i.t, 32
  %i.v = or disjoint i64 %i.u, %i.s
  %i.w = bitcast i64 %i.v to double               ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr @bp, i64 %.0
  %i.y = load double, ptr %i.x, align 8, !tbaa !15 ; 3 uses
  %i.z = fsub double %i.w, %i.y                   ; 2 uses
  %i.aa = fadd double %i.y, %i.w
  %i.ab = fdiv double 1.000000e+00, %i.aa         ; 2 uses
  %i.ac = fmul double %i.z, %i.ab                 ; 5 uses
  %i.ad = fmul double %i.ac, %i.ac                ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.i = phi i64 [ 4, %bb.d ], [ %indvars.iv.next.i, %bb.e ] ; 3 uses
  %.0910.i = phi double [ f0x3FCA7E284A454EEF, %bb.d ], [ %i.ag, %bb.e ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr @L_tab, i64 %indvars.iv.i
  %i.af = load double, ptr %i.ae, align 8, !tbaa !15
  %i.ag = tail call double @llvm.fmuladd.f64(double %.0910.i, double %i.ad, double %i.af) ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %.not.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not.i, label %eval_poly.exit, label %bb.e, !llvm.loop !0

eval_poly.exit:                                   ; preds = %bb.e
  %i.ah = fmul double %i.ad, %i.ad
  %i.ai = bitcast double %i.ac to i64
  %i.aj = and i64 %i.ai, -4294967296
  %i.ak = bitcast i64 %i.aj to double             ; 5 uses
  %i.al = fneg double %i.ak                       ; 2 uses
  %i.am = lshr i32 %.1, 1
  %i.an = or i32 %i.am, 536870912
  %i.ao = add nuw nsw i32 %i.an, 524288
  %i.ap = add nuw nsw i32 %i.ao, %.0.a
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 32
  %i.as = bitcast i64 %i.ar to double             ; 2 uses
  %i.at = fsub double %i.y, %i.as
  %i.au = fadd double %i.at, %i.w
  %i.av = tail call double @llvm.fmuladd.f64(double %i.al, double %i.as, double %i.z)
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.al, double %i.au, double %i.av)
  %i.ax = fmul double %i.ab, %i.aw                ; 2 uses
  %i.ay = fmul double %i.ah, %i.ag
  %i.az = fadd double %i.ac, %i.ak
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.ax, double %i.az, double %i.ay) ; 2 uses
  %i.bb = fmul double %i.ak, %i.ak                ; 2 uses
  %i.bc = fadd double %i.bb, 3.000000e+00
  %i.bd = fadd double %i.bc, %i.ba
  %i.be = bitcast double %i.bd to i64
  %i.bf = and i64 %i.be, -4294967296
  %i.bg = bitcast i64 %i.bf to double             ; 3 uses
  %i.bh = fadd double %i.bg, -3.000000e+00
  %i.bi = fsub double %i.bh, %i.bb
  %i.bj = fsub double %i.ba, %i.bi
  %i.bk = fmul double %i.ak, %i.bg                ; 2 uses
  %i.bl = fmul double %i.ac, %i.bj
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.ax, double %i.bg, double %i.bl) ; 2 uses
  %i.bn = fadd double %i.bk, %i.bm
  %i.bo = bitcast double %i.bn to i64
  %i.bp = and i64 %i.bo, -4294967296
  %i.bq = bitcast i64 %i.bp to double             ; 3 uses
  %i.br = fsub double %i.bq, %i.bk
  %i.bs = fsub double %i.bm, %i.br
  %i.bt = fmul double %i.bq, f0x3FEEC709E0000000  ; 2 uses
  %i.bu = fmul double %i.bs, f0x3FEEC709DC3A03FD
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.bq, double f0xBE3E2FE0145B01F5, double %i.bu)
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr @dp_l, i64 %.0
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !15
  %i.by = fadd double %i.bv, %i.bx                ; 2 uses
  %i.bz = sitofp i32 %.180 to double              ; 2 uses
  %i.ca = fadd double %i.bt, %i.by
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr @dp_h, i64 %.0
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !15 ; 2 uses
  %i.cd = fadd double %i.cc, %i.ca
  %i.ce = fadd double %i.cd, %i.bz
  %i.cf = bitcast double %i.ce to i64
  %i.cg = and i64 %i.cf, -4294967296              ; 2 uses
  %i.ch = bitcast i64 %i.cg to double
  %i.ci = fsub double %i.ch, %i.bz
  %i.cj = fsub double %i.ci, %i.cc
  %i.ck = fsub double %i.cj, %i.bt
  %i.cl = fsub double %i.by, %i.ck
  store i64 %i.cg, ptr %0, align 8, !tbaa !15
  store double %i.cl, ptr %1, align 8, !tbaa !15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc i64 @mul_u64(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #6 {
bb.a:
  %i.a = lshr i64 %1, 32                          ; 2 uses
  %i.b = lshr i64 %2, 32                          ; 2 uses
  %i.c = and i64 %1, 4294967295                   ; 2 uses
  %i.d = and i64 %2, 4294967295                   ; 2 uses
  %i.e = mul nuw i64 %i.d, %i.c                   ; 2 uses
  %i.f = mul nuw i64 %i.b, %i.c                   ; 2 uses
  %i.g = mul nuw i64 %i.d, %i.a                   ; 2 uses
  %i.h = mul nuw i64 %i.b, %i.a                   ; 2 uses
  %i.i = lshr i64 %i.e, 32
  %i.j = and i64 %i.f, 4294967295
  %i.k = add nuw nsw i64 %i.i, %i.j
  %i.l = and i64 %i.g, 4294967295
  %i.m = add nuw nsw i64 %i.k, %i.l               ; 2 uses
  %i.n = lshr i64 %i.m, 32
  %i.o = lshr i64 %i.f, 32
  %i.p = lshr i64 %i.g, 32
  %i.q = and i64 %i.h, 4294967295
  %i.r = add nuw nsw i64 %i.p, %i.o
  %i.s = add nuw nsw i64 %i.r, %i.q
  %i.t = add nuw nsw i64 %i.s, %i.n               ; 2 uses
  %i.u = and i64 %i.t, 30064771072
  %i.v = and i64 %i.h, -4294967296
  %i.w = add i64 %i.u, %i.v
  %i.x = shl i64 %i.m, 32
  %i.y = and i64 %i.e, 4294967295
  %i.z = or disjoint i64 %i.x, %i.y
  store i64 %i.z, ptr %0, align 8, !tbaa !17
  %i.aa = and i64 %i.t, 4294967295
  %i.ab = or disjoint i64 %i.w, %i.aa
  ret i64 %i.ab
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree norecurse nosync nounwind optsize memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { optsize }
attributes #9 = { nounwind }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !13}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260908082138+de2a0dd540f7-1~exp1~20260908202305.1836)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"double", !9, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"long", !9, i64 0}
!17 = !{!16, !16, i64 0}
!18 = distinct !{!18, !13}
!19 = distinct !{!19, !13}
end_hunk_3
