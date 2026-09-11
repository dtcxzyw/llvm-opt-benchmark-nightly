Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/numbers?download=true
inline.NumInlined: 424
inline.NumDeleted: 151
begin_hunk_0_@_ZN4absl16numbers_internal17SixDigitsToBufferEdPc:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 45, ptr %1, align 1
  %i.m = fneg double %0
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1142 = phi ptr [ %i.l, %bb.h ], [ %1, %bb.g ] ; 39 uses
  %.0140 = phi double [ %i.m, %bb.h ], [ %0, %bb.g ] ; 9 uses
  %i.n = fcmp ogt double %.0140, f0x7FEFFFFFFFFFFFFF
  br i1 %i.n, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 6712937, ptr %.1142, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %.1142, i64 3
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %1 to i64
  %i.r = sub i64 %i.p, %i.q
  br label %bb.az

bb.k:                                             ; preds = %bb.i
  %i.s = fcmp ult double %.0140, f0x412E847F00000000
  br i1 %i.s, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = fcmp ult double %.0140, f0x7620427EAD4CFED6 ; 2 uses
  %i.u = fmul nnan double %.0140, f0x0AC8062864AC6F43
  %.087.i = select i1 %i.t, double %.0140, double %i.u ; 3 uses
  %.0.i = select i1 %i.t, i32 5, i32 261          ; 2 uses
  %i.v = fcmp ult double %.087.i, 1.000000e+133   ; 2 uses
  %i.w = or disjoint i32 %.0.i, 128
  %i.x = fmul nnan double %.087.i, 1.000000e-128
  %.188.i = select i1 %i.v, double %.087.i, double %i.x ; 3 uses
  %.1.i = select i1 %i.v, i32 %.0.i, i32 %i.w     ; 2 uses
  %i.y = fcmp ult double %.188.i, 1.000000e+69    ; 2 uses
  %i.z = or disjoint i32 %.1.i, 64
  %i.aa = fmul nnan double %.188.i, f0x32A50FFD44F4A73D
  %.289.i = select i1 %i.y, double %.188.i, double %i.aa ; 3 uses
  %.2.i = select i1 %i.y, i32 %.1.i, i32 %i.z     ; 2 uses
  %i.ab = fcmp ult double %.289.i, f0x479E17B84357691B ; 2 uses
  %i.ac = or disjoint i32 %.2.i, 32
  %i.ad = fmul nnan double %.289.i, 1.000000e-32
  %.390.i = select i1 %i.ab, double %.289.i, double %i.ad ; 3 uses
  %.3.i = select i1 %i.ab, i32 %.2.i, i32 %i.ac   ; 2 uses
  %i.ae = fcmp ult double %.390.i, 1.000000e+21   ; 2 uses
  %i.af = add nuw nsw i32 %.3.i, 16
  %i.ag = fmul nnan double %.390.i, f0x3C9CD2B297D889BC
  %.491.i = select i1 %i.ae, double %.390.i, double %i.ag ; 3 uses
  %.4.i = select i1 %i.ae, i32 %.3.i, i32 %i.af   ; 2 uses
  %i.ah = fcmp ult double %.491.i, 1.000000e+13   ; 2 uses
  %i.ai = add nuw nsw i32 %.4.i, 8
  %i.aj = fmul nnan double %.491.i, 1.000000e-08
  %.592.i = select i1 %i.ah, double %.491.i, double %i.aj ; 3 uses
  %.5.i = select i1 %i.ah, i32 %.4.i, i32 %i.ai   ; 2 uses
  %i.ak = fcmp ult double %.592.i, 1.000000e+09   ; 2 uses
  %i.al = add nuw nsw i32 %.5.i, 4
  %i.am = fmul nnan double %.592.i, 1.000000e-04
  %.693.i = select i1 %i.ak, double %.592.i, double %i.am ; 3 uses
  %.6.i = select i1 %i.ak, i32 %.5.i, i32 %i.al   ; 2 uses
  %i.an = fcmp ult double %.693.i, 1.000000e+07   ; 2 uses
  %i.ao = add nuw nsw i32 %.6.i, 2
  %i.ap = fmul nnan double %.693.i, 1.000000e-02
  %.794.i = select i1 %i.an, double %.693.i, double %i.ap ; 3 uses
  %.7.i = select i1 %i.an, i32 %.6.i, i32 %i.ao   ; 2 uses
  %i.aq = fcmp ult double %.794.i, 1.000000e+06
  br i1 %i.aq, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = add nuw nsw i32 %.7.i, 1
  %i.as = fmul nnan double %.794.i, 1.000000e-01
  br label %bb.p

bb.n:                                             ; preds = %bb.k
  %i.at = fcmp olt double %.0140, 1.000000e-250   ; 2 uses
  %i.au = fmul nnan double %.0140, 1.000000e+256
  %.895.i = select i1 %i.at, double %i.au, double %.0140 ; 3 uses
  %.8.i = select i1 %i.at, i32 -251, i32 5        ; 2 uses
  %i.av = fcmp olt double %.895.i, 1.000000e-122  ; 2 uses
  %i.aw = add nsw i32 %.8.i, -128
  %i.ax = fmul nnan double %.895.i, 1.000000e+128
  %.996.i = select i1 %i.av, double %i.ax, double %.895.i ; 3 uses
  %.9.i = select i1 %i.av, i32 %i.aw, i32 %.8.i   ; 2 uses
  %i.ay = fcmp olt double %.996.i, 1.000000e-58   ; 2 uses
  %i.az = add nsw i32 %.9.i, -64
  %i.ba = fmul nnan double %.996.i, 1.000000e+64
  %.1097.i = select i1 %i.ay, double %i.ba, double %.996.i ; 3 uses
  %.10.i = select i1 %i.ay, i32 %i.az, i32 %.9.i  ; 2 uses
  %i.bb = fcmp olt double %.1097.i, 1.000000e-26  ; 2 uses
  %i.bc = add nsw i32 %.10.i, -32
  %i.bd = fmul nnan double %.1097.i, 1.000000e+32
  %.1198.i = select i1 %i.bb, double %i.bd, double %.1097.i ; 3 uses
  %.11.i = select i1 %i.bb, i32 %i.bc, i32 %.10.i ; 2 uses
  %i.be = fcmp olt double %.1198.i, 1.000000e-10  ; 2 uses
  %i.bf = add nsw i32 %.11.i, -16
  %i.bg = fmul nnan double %.1198.i, 1.000000e+16
  %.1299.i = select i1 %i.be, double %i.bg, double %.1198.i ; 3 uses
  %.12.i = select i1 %i.be, i32 %i.bf, i32 %.11.i ; 2 uses
  %i.bh = fcmp olt double %.1299.i, 1.000000e-02  ; 2 uses
  %i.bi = add nsw i32 %.12.i, -8
  %i.bj = fmul nnan double %.1299.i, 1.000000e+08
  %.13100.i = select i1 %i.bh, double %i.bj, double %.1299.i ; 3 uses
  %.13.i = select i1 %i.bh, i32 %i.bi, i32 %.12.i ; 2 uses
  %i.bk = fcmp olt double %.13100.i, 1.000000e+02 ; 2 uses
  %i.bl = add nsw i32 %.13.i, -4
  %i.bm = fmul nnan double %.13100.i, 1.000000e+04
  %.14101.i = select i1 %i.bk, double %i.bm, double %.13100.i ; 3 uses
  %.14.i = select i1 %i.bk, i32 %i.bl, i32 %.13.i ; 2 uses
  %i.bn = fcmp olt double %.14101.i, 1.000000e+04 ; 2 uses
  %i.bo = add nsw i32 %.14.i, -2
  %i.bp = fmul nnan double %.14101.i, 1.000000e+02
  %.15102.i = select i1 %i.bn, double %i.bp, double %.14101.i ; 3 uses
  %.15.i = select i1 %i.bn, i32 %i.bo, i32 %.14.i ; 2 uses
  %i.bq = fcmp olt double %.15102.i, 1.000000e+05
  br i1 %i.bq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.br = add nsw i32 %.15.i, -1
  %i.bs = fmul nnan double %.15102.i, 1.000000e+01
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %.16103.i = phi double [ %i.as, %bb.m ], [ %.794.i, %bb.l ], [ %i.bs, %bb.o ], [ %.15102.i, %bb.n ]
  %.16.i = phi i32 [ %i.ar, %bb.m ], [ %.7.i, %bb.l ], [ %i.br, %bb.o ], [ %.15.i, %bb.n ] ; 4 uses
  %i.bt = fmul double %.16103.i, 6.553600e+04
  %i.bu = fptoui double %i.bt to i64              ; 3 uses
  %i.bv = and i64 %i.bu, 65535
  %.off.i = add nsw i64 %i.bv, -32767
  %switch.i = icmp ult i64 %.off.i, 2
  br i1 %switch.i, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.bw = lshr i64 %i.bu, 16                      ; 2 uses
  %i.bx = trunc i64 %i.bw to i32                  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.by = call double @frexp(double noundef %.0140, ptr noundef nonnull %i.a) #12
  %i.bz = fmul double %i.by, f0x43E0000000000000
  %i.ca = fptoui double %i.bz to i64
  %i.cb = shl i64 %i.ca, 1                        ; 2 uses
  %i.cc = icmp sgt i32 %.16.i, 5
  %i.cd = shl nuw nsw i64 %i.bw, 1
  %i.ce = and i64 %i.cd, 4294967294
  %i.cf = or disjoint i64 %i.ce, 1                ; 3 uses
  br i1 %i.cc, label %bb.r, label %_ZN4abslL7PowFiveEmi.exit.i

bb.r:                                             ; preds = %bb.q
  %i.cg = add nsw i32 %.16.i, -5
  %i.ch = tail call fastcc { i64, i64 } @_ZN4abslL7PowFiveEmi(i64 noundef %i.cf, i32 noundef %i.cg) ; 2 uses
  %i.ci = extractvalue { i64, i64 } %i.ch, 0
  %i.cj = extractvalue { i64, i64 } %i.ch, 1
  br label %_ZStssImmENSt26common_comparison_categoryIJDTclL_ZNSt8__detail11__synth3wayEEclsr3stdE7declvalIRT_EEclsr3stdE7declvalIS3_EEEEDTclL_ZNS1_11__synth3wayEEclsr3stdE7declvalIRT0_EEclsr3stdE7declvalIS6_EEEEEE4typeERKSt4pairIS2_S5_ESD_.exit.i

_ZN4abslL7PowFiveEmi.exit.i:                      ; preds = %bb.q
  %i.ck = tail call range(i64 32, 64) i64 @llvm.ctlz.i64(i64 %i.cf, i1 true)
  %i.cl = shl i64 %i.cf, %i.ck
  %i.cm = sub nsw i32 5, %.16.i
  %i.cn = tail call fastcc { i64, i64 } @_ZN4abslL7PowFiveEmi(i64 noundef %i.cb, i32 noundef %i.cm) ; 2 uses
  %i.co = extractvalue { i64, i64 } %i.cn, 0
  %i.cp = extractvalue { i64, i64 } %i.cn, 1
  br label %_ZStssImmENSt26common_comparison_categoryIJDTclL_ZNSt8__detail11__synth3wayEEclsr3stdE7declvalIRT_EEclsr3stdE7declvalIS3_EEEEDTclL_ZNS1_11__synth3wayEEclsr3stdE7declvalIRT0_EEclsr3stdE7declvalIS6_EEEEEE4typeERKSt4pairIS2_S5_ESD_.exit.i

_ZStssImmENSt26common_comparison_categoryIJDTclL_ZNSt8__detail11__synth3wayEEclsr3stdE7declvalIRT_EEclsr3stdE7declvalIS3_EEEEDTclL_ZNS1_11__synth3wayEEclsr3stdE7declvalIRT0_EEclsr3stdE7declvalIS6_EEEEEE4typeERKSt4pairIS2_S5_ESD_.exit.i: ; preds = %_ZN4abslL7PowFiveEmi.exit.i, %bb.r
  %.sroa.7.0.i = phi i64 [ 0, %bb.r ], [ %i.cp, %_ZN4abslL7PowFiveEmi.exit.i ] ; 2 uses
  %.sroa.0122.0.i = phi i64 [ %i.cb, %bb.r ], [ %i.co, %_ZN4abslL7PowFiveEmi.exit.i ] ; 2 uses
  %.sroa.7128.0.i = phi i64 [ %i.cj, %bb.r ], [ 0, %_ZN4abslL7PowFiveEmi.exit.i ] ; 2 uses
  %.sroa.0126.0.i = phi i64 [ %i.ci, %bb.r ], [ %i.cl, %_ZN4abslL7PowFiveEmi.exit.i ] ; 2 uses
  %i.cq = icmp eq i64 %.sroa.0122.0.i, %.sroa.0126.0.i ; 2 uses
  %i.cr = icmp ugt i64 %.sroa.7.0.i, %.sroa.7128.0.i
  %i.cs = icmp ugt i64 %.sroa.0122.0.i, %.sroa.0126.0.i
  %i.ct = select i1 %i.cq, i1 %i.cr, i1 %i.cs
  br i1 %i.ct, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZStssImmENSt26common_comparison_categoryIJDTclL_ZNSt8__detail11__synth3wayEEclsr3stdE7declvalIRT_EEclsr3stdE7declvalIS3_EEEEDTclL_ZNS1_11__synth3wayEEclsr3stdE7declvalIRT0_EEclsr3stdE7declvalIS6_EEEEEE4typeERKSt4pairIS2_S5_ESD_.exit.i
  %i.cu = add i32 %i.bx, 1
  br label %bb.v

bb.t:                                             ; preds = %_ZStssImmENSt26common_comparison_categoryIJDTclL_ZNSt8__detail11__synth3wayEEclsr3stdE7declvalIRT_EEclsr3stdE7declvalIS3_EEEEDTclL_ZNS1_11__synth3wayEEclsr3stdE7declvalIRT0_EEclsr3stdE7declvalIS6_EEEEEE4typeERKSt4pairIS2_S5_ESD_.exit.i
  %i.cv = icmp eq i64 %.sroa.7.0.i, %.sroa.7128.0.i
  %i.cw = select i1 %i.cq, i1 %i.cv, i1 false
  br i1 %i.cw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cx = and i32 %i.bx, 1
  %i.cy = add i32 %i.cx, %i.bx
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.0104.i = phi i32 [ %i.cu, %bb.s ], [ %i.cy, %bb.u ], [ %i.bx, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.x

bb.w:                                             ; preds = %bb.p
  %i.cz = add i64 %i.bu, 32768
  %i.da = lshr i64 %i.cz, 16
  %i.db = trunc i64 %i.da to i32
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.1105.i = phi i32 [ %.0104.i, %bb.v ], [ %i.db, %bb.w ] ; 2 uses
  %i.dc = icmp eq i32 %.1105.i, 1000000           ; 2 uses
  %spec.select.i = select i1 %i.dc, i32 100000, i32 %.1105.i ; 3 uses
  %i.dd = icmp ult i32 %spec.select.i, 1000000
  br i1 %i.dd, label %_ZN4absl16numbers_internal12PutTwoDigitsEjPc.exit.i, label %2

2:                                                ; preds = %bb.x
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str, i32 noundef 288, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl16numbers_internal12PutTwoDigitsEjPc) #13
  unreachable

_ZN4absl16numbers_internal12PutTwoDigitsEjPc.exit.i: ; preds = %bb.x
  %3 = udiv i32 %spec.select.i, 10000             ; 3 uses
  %.neg.i = mul nsw i32 %3, -10000
  %4 = add nsw i32 %.neg.i, %spec.select.i        ; 3 uses
  %5 = udiv i32 %4, 100                           ; 3 uses
  %.neg110.i = mul i32 %5, -100
  %6 = add i32 %.neg110.i, %4                     ; 3 uses
  %7 = icmp ult i32 %4, 10000
  br i1 %7, label %_ZN4absl16numbers_internal12PutTwoDigitsEjPc.exit114.i, label %8

8:                                                ; preds = %_ZN4absl16numbers_internal12PutTwoDigitsEjPc.exit.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str, i32 noundef 288, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl16numbers_internal12PutTwoDigitsEjPc) #13
  unreachable

_ZN4absl16numbers_internal12PutTwoDigitsEjPc.exit114.i: ; preds = %_ZN4absl16numbers_internal12PutTwoDigitsEjPc.exit.i
  %9 = icmp ult i32 %6, 100
  br i1 %9, label %_ZN4abslL10SplitToSixEd.exit, label %bb.y

bb.y:                                             ; preds = %_ZN4absl16numbers_internal12PutTwoDigitsEjPc.exit114.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str, i32 noundef 288, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl16numbers_internal12PutTwoDigitsEjPc) #13
  unreachable

_ZN4abslL10SplitToSixEd.exit:                     ; preds = %_ZN4absl16numbers_internal12PutTwoDigitsEjPc.exit114.i
  %narrow.i112.i = mul nuw nsw i32 %5, 103
  %i.de = lshr i32 %narrow.i112.i, 10             ; 2 uses
  %.neg.i113.i = mul nsw i32 %i.de, -10
  %i.df = add nsw i32 %.neg.i113.i, %5
  %i.dg = shl nsw i32 %i.df, 8
  %narrow.i.i = mul nuw nsw i32 %3, 103
  %i.dh = lshr i32 %narrow.i.i, 10                ; 2 uses
  %.neg.i.i = mul nsw i32 %i.dh, -10
  %i.di = add nsw i32 %.neg.i.i, %3
  %i.dj = shl nsw i32 %i.di, 8
  %i.dk = zext i1 %i.dc to i32
  %spec.select111.i = add nsw i32 %.16.i, %i.dk   ; 4 uses
  %narrow.i115.i = mul nuw nsw i32 %6, 103
  %i.dl = lshr i32 %narrow.i115.i, 10             ; 2 uses
  %.neg.i116.i = mul nsw i32 %i.dl, -10
  %i.dm = add nsw i32 %.neg.i116.i, %6
  %i.dn = shl nsw i32 %i.dm, 8
  %10 = or disjoint i32 %i.dl, 12336              ; 2 uses
  %i.do = add nsw i32 %i.dn, %10                  ; 4 uses
  %i.dp = add nuw nsw i32 %i.de, 12336
  %i.dq = add i32 %i.dp, %i.dg                    ; 2 uses
  %i.dr = and i32 %i.dq, 65535
  %.sroa.3.0.insert.ext.i = zext nneg i32 %i.dr to i64 ; 2 uses
  %.sroa.3.0.insert.shift.i = shl nuw i64 %.sroa.3.0.insert.ext.i, 48
  %i.ds = or disjoint i32 %i.dh, 12336            ; 2 uses
  %i.dt = add nsw i32 %i.dj, %i.ds
  %i.du = and i32 %i.dt, 65280
  %.sroa.2.0.insert.ext.i = zext nneg i32 %i.du to i64
  %.sroa.2.0.insert.shift.i = shl nuw nsw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0131.0.insert.insert.i = or disjoint i64 %.sroa.3.0.insert.shift.i, %.sroa.2.0.insert.shift.i
  %.sroa.4132.8.insert.ext.i = and i32 %i.do, 65343 ; 9 uses
  %.sroa.0.sroa.4.0.extract.trunc = trunc i32 %i.ds to i8 ; 8 uses
  %.sroa.0.sroa.12.0.extract.shift = lshr exact i64 %.sroa.0131.0.insert.insert.i, 40 ; 3 uses
  %.sroa.0.sroa.12.0.extract.trunc = trunc nuw i64 %.sroa.0.sroa.12.0.extract.shift to i24 ; 6 uses
  store i8 48, ptr %.1142, align 1
  %i.dv = getelementptr inbounds nuw i8, ptr %.1142, i64 1 ; 8 uses
  store i8 46, ptr %i.dv, align 1
  switch i32 %spec.select111.i, label %bb.at [
    i32 5, label %bb.z
    i32 4, label %bb.aa
    i32 3, label %bb.ad
    i32 2, label %bb.ah
    i32 1, label %bb.aj
    i32 0, label %bb.al
    i32 -4, label %bb.an
    i32 -3, label %bb.ao
    i32 -2, label %bb.ap
    i32 -1, label %bb.aq
  ]

bb.z:                                             ; preds = %_ZN4abslL10SplitToSixEd.exit
  store i8 %.sroa.0.sroa.4.0.extract.trunc, ptr %.1142, align 1
  store i24 %.sroa.0.sroa.12.0.extract.trunc, ptr %i.dv, align 1
  %.sroa.16.4..1142.sroa_idx = getelementptr inbounds nuw i8, ptr %.1142, i64 4
  %.sroa.16.4.extract.trunc = trunc nuw i32 %.sroa.4132.8.insert.ext.i to i16
  store i16 %.sroa.16.4.extract.trunc, ptr %.sroa.16.4..1142.sroa_idx, align 1
  %i.dw = getelementptr inbounds nuw i8, ptr %.1142, i64 6 ; 2 uses
  store i8 0, ptr %i.dw, align 1
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = ptrtoint ptr %1 to i64
  %i.dz = sub i64 %i.dx, %i.dy
  br label %bb.az

bb.aa:                                            ; preds = %_ZN4abslL10SplitToSixEd.exit
  store i8 %.sroa.0.sroa.4.0.extract.trunc, ptr %.1142, align 1
  store i24 %.sroa.0.sroa.12.0.extract.trunc, ptr %i.dv, align 1
  %.sroa.16.4..1142.sroa_idx153 = getelementptr inbounds nuw i8, ptr %.1142, i64 4
  %.sroa.16.4.extract.trunc155 = trunc i32 %.sroa.4132.8.insert.ext.i to i8
  store i8 %.sroa.16.4.extract.trunc155, ptr %.sroa.16.4..1142.sroa_idx153, align 1
  %i.ea = getelementptr inbounds nuw i8, ptr %.1142, i64 5 ; 2 uses
  %i.eb = and i32 %i.do, 65280
  %.not201 = icmp eq i32 %i.eb, 12288
  br i1 %.not201, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.sroa.16.9.extract.shift = lshr i32 %i.do, 8
  %.sroa.16.9.extract.trunc = trunc i32 %.sroa.16.9.extract.shift to i8
  %i.ec = getelementptr inbounds nuw i8, ptr %.1142, i64 6
  store i8 46, ptr %i.ea, align 1
  %i.ed = getelementptr inbounds nuw i8, ptr %.1142, i64 7
  store i8 %.sroa.16.9.extract.trunc, ptr %i.ec, align 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.2 = phi ptr [ %i.ed, %bb.ab ], [ %i.ea, %bb.aa ] ; 2 uses
  store i8 0, ptr %.2, align 1
  %i.ee = ptrtoint ptr %.2 to i64
  %i.ef = ptrtoint ptr %1 to i64
  %i.eg = sub i64 %i.ee, %i.ef
  br label %bb.az

bb.ad:                                            ; preds = %_ZN4abslL10SplitToSixEd.exit
  store i8 %.sroa.0.sroa.4.0.extract.trunc, ptr %.1142, align 1
  store i24 %.sroa.0.sroa.12.0.extract.trunc, ptr %i.dv, align 1
  %i.eh = getelementptr inbounds nuw i8, ptr %.1142, i64 4 ; 2 uses
  %.sroa.16.9.extract.shift165 = lshr i32 %.sroa.4132.8.insert.ext.i, 8 ; 2 uses
  %.sroa.16.9.extract.trunc166 = trunc nuw i32 %.sroa.16.9.extract.shift165 to i8
  %.sroa.4132.8.insert.ext.i.masked = and i32 %10, 63
  %.mask = or i32 %.sroa.16.9.extract.shift165, %.sroa.4132.8.insert.ext.i.masked
  %.not = icmp eq i32 %.mask, 48
  br i1 %.not, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.sroa.16.8.extract.trunc = trunc i32 %.sroa.4132.8.insert.ext.i to i8
  %i.ei = getelementptr inbounds nuw i8, ptr %.1142, i64 5
  store i8 46, ptr %i.eh, align 1
  %i.ej = getelementptr inbounds nuw i8, ptr %.1142, i64 6 ; 2 uses
  store i8 %.sroa.16.8.extract.trunc, ptr %i.ei, align 1
  %i.ek = and i32 %i.do, 65280
  %.not200 = icmp eq i32 %i.ek, 12288
  br i1 %.not200, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.el = getelementptr inbounds nuw i8, ptr %.1142, i64 7
  store i8 %.sroa.16.9.extract.trunc166, ptr %i.ej, align 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af, %bb.ad
  %.3 = phi ptr [ %i.el, %bb.af ], [ %i.ej, %bb.ae ], [ %i.eh, %bb.ad ] ; 2 uses
  store i8 0, ptr %.3, align 1
  %i.em = ptrtoint ptr %.3 to i64
  %i.en = ptrtoint ptr %1 to i64
  %i.eo = sub i64 %i.em, %i.en
  br label %bb.az

bb.ah:                                            ; preds = %_ZN4abslL10SplitToSixEd.exit
  store i8 %.sroa.0.sroa.4.0.extract.trunc, ptr %.1142, align 1
  %.sroa.0.sroa.12.sroa.0.0.extract.trunc = trunc i64 %.sroa.0.sroa.12.0.extract.shift to i16
  store i16 %.sroa.0.sroa.12.sroa.0.0.extract.trunc, ptr %i.dv, align 1
  %i.ep = getelementptr inbounds nuw i8, ptr %.1142, i64 3
  %i.eq = getelementptr inbounds nuw i8, ptr %.1142, i64 4
  store i8 46, ptr %i.ep, align 1
  %.sroa.0.sroa.12.sroa.0.2.extract.shift197 = lshr i64 %.sroa.3.0.insert.ext.i, 8
  %.sroa.0.sroa.12.sroa.0.2.extract.trunc = trunc nuw i64 %.sroa.0.sroa.12.sroa.0.2.extract.shift197 to i8
  store i8 %.sroa.0.sroa.12.sroa.0.2.extract.trunc, ptr %i.eq, align 1
  %.sroa.16.7..sroa_idx = getelementptr inbounds nuw i8, ptr %.1142, i64 5
  %.sroa.16.7.extract.trunc = trunc nuw i32 %.sroa.4132.8.insert.ext.i to i16
  store i16 %.sroa.16.7.extract.trunc, ptr %.sroa.16.7..sroa_idx, align 1
  %i.er = getelementptr inbounds nuw i8, ptr %.1142, i64 7
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %bb.ah
  %.4 = phi ptr [ %i.er, %bb.ah ], [ %i.es, %bb.ai ] ; 2 uses
  %i.es = getelementptr inbounds i8, ptr %.4, i64 -1 ; 3 uses
  %i.et = load i8, ptr %i.es, align 1
  switch i8 %i.et, label %.loopexit202.loopexit [
    i8 48, label %bb.ai
    i8 46, label %.loopexit202
  ]

.loopexit202.loopexit:                            ; preds = %bb.ai
  br label %.loopexit202

.loopexit202:                                     ; preds = %bb.ai, %.loopexit202.loopexit
  %.5 = phi ptr [ %.4, %.loopexit202.loopexit ], [ %i.es, %bb.ai ] ; 2 uses
  store i8 0, ptr %.5, align 1
  %i.eu = ptrtoint ptr %.5 to i64
  %i.ev = ptrtoint ptr %1 to i64
  %i.ew = sub i64 %i.eu, %i.ev
  br label %bb.az

bb.aj:                                            ; preds = %_ZN4abslL10SplitToSixEd.exit
  store i8 %.sroa.0.sroa.4.0.extract.trunc, ptr %.1142, align 1
  %.sroa.0.sroa.12.sroa.0.0.extract.trunc189 = trunc i64 %.sroa.0.sroa.12.0.extract.shift to i8
  store i8 %.sroa.0.sroa.12.sroa.0.0.extract.trunc189, ptr %i.dv, align 1
  %i.ex = getelementptr inbounds nuw i8, ptr %.1142, i64 2
  %i.ey = getelementptr inbounds nuw i8, ptr %.1142, i64 3
  store i8 46, ptr %i.ex, align 1
  %.sroa.0.sroa.12.sroa.0.1.extract.trunc = trunc i32 %i.dq to i16
  store i16 %.sroa.0.sroa.12.sroa.0.1.extract.trunc, ptr %i.ey, align 1
  %.sroa.16.6..sroa_idx = getelementptr inbounds nuw i8, ptr %.1142, i64 5
  %.sroa.16.6.extract.trunc = trunc nuw i32 %.sroa.4132.8.insert.ext.i to i16
  store i16 %.sroa.16.6.extract.trunc, ptr %.sroa.16.6..sroa_idx, align 1
  %i.ez = getelementptr inbounds nuw i8, ptr %.1142, i64 7
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %bb.aj
  %.6 = phi ptr [ %i.ez, %bb.aj ], [ %i.fa, %bb.ak ] ; 2 uses
  %i.fa = getelementptr inbounds i8, ptr %.6, i64 -1 ; 3 uses
  %i.fb = load i8, ptr %i.fa, align 1
  switch i8 %i.fb, label %.loopexit203.loopexit [
    i8 48, label %bb.ak
    i8 46, label %.loopexit203
  ]

.loopexit203.loopexit:                            ; preds = %bb.ak
  br label %.loopexit203

.loopexit203:                                     ; preds = %bb.ak, %.loopexit203.loopexit
  %.7 = phi ptr [ %.6, %.loopexit203.loopexit ], [ %i.fa, %bb.ak ] ; 2 uses
  store i8 0, ptr %.7, align 1
  %i.fc = ptrtoint ptr %.7 to i64
  %i.fd = ptrtoint ptr %1 to i64
  %i.fe = sub i64 %i.fc, %i.fd
  br label %bb.az

bb.al:                                            ; preds = %_ZN4abslL10SplitToSixEd.exit
  store i8 %.sroa.0.sroa.4.0.extract.trunc, ptr %.1142, align 1
  %i.ff = getelementptr inbounds nuw i8, ptr %.1142, i64 2
  store i8 46, ptr %i.dv, align 1
  store i24 %.sroa.0.sroa.12.0.extract.trunc, ptr %i.ff, align 1
  %.sroa.16.5..sroa_idx156 = getelementptr inbounds nuw i8, ptr %.1142, i64 5
  %.sroa.16.5.extract.trunc158 = trunc nuw i32 %.sroa.4132.8.insert.ext.i to i16
  store i16 %.sroa.16.5.extract.trunc158, ptr %.sroa.16.5..sroa_idx156, align 1
  %i.fg = getelementptr inbounds nuw i8, ptr %.1142, i64 7
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %bb.al
  %.8 = phi ptr [ %i.fg, %bb.al ], [ %i.fh, %bb.am ] ; 2 uses
  %i.fh = getelementptr inbounds i8, ptr %.8, i64 -1 ; 3 uses
  %i.fi = load i8, ptr %i.fh, align 1
  switch i8 %i.fi, label %.loopexit204.loopexit [
    i8 48, label %bb.am
    i8 46, label %.loopexit204
  ]

.loopexit204.loopexit:                            ; preds = %bb.am
  br label %.loopexit204

.loopexit204:                                     ; preds = %bb.am, %.loopexit204.loopexit
  %.9 = phi ptr [ %.8, %.loopexit204.loopexit ], [ %i.fh, %bb.am ] ; 2 uses
  store i8 0, ptr %.9, align 1
  %i.fj = ptrtoint ptr %.9 to i64
  %i.fk = ptrtoint ptr %1 to i64
  %i.fl = sub i64 %i.fj, %i.fk
  br label %bb.az

bb.an:                                            ; preds = %_ZN4abslL10SplitToSixEd.exit
  %i.fm = getelementptr inbounds nuw i8, ptr %.1142, i64 2
  store i8 48, ptr %i.fm, align 1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %_ZN4abslL10SplitToSixEd.exit
  %.10 = phi ptr [ %i.dv, %bb.an ], [ %.1142, %_ZN4abslL10SplitToSixEd.exit ] ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.10, i64 2
  store i8 48, ptr %i.fn, align 1
  %i.fo = getelementptr inbounds nuw i8, ptr %.10, i64 1
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %_ZN4abslL10SplitToSixEd.exit
  %.11 = phi ptr [ %i.fo, %bb.ao ], [ %.1142, %_ZN4abslL10SplitToSixEd.exit ] ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.11, i64 2
  store i8 48, ptr %i.fp, align 1
  %i.fq = getelementptr inbounds nuw i8, ptr %.11, i64 1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %_ZN4abslL10SplitToSixEd.exit
  %.12 = phi ptr [ %i.fq, %bb.ap ], [ %.1142, %_ZN4abslL10SplitToSixEd.exit ] ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.12, i64 2
  store i8 %.sroa.0.sroa.4.0.extract.trunc, ptr %i.fr, align 1
  %.sroa.0.sroa.12.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.12, i64 3
  store i24 %.sroa.0.sroa.12.0.extract.trunc, ptr %.sroa.0.sroa.12.4..sroa_idx, align 1
  %.sroa.16.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.12, i64 6
  %.sroa.16.4.extract.trunc152 = trunc nuw i32 %.sroa.4132.8.insert.ext.i to i16
  store i16 %.sroa.16.4.extract.trunc152, ptr %.sroa.16.4..sroa_idx, align 1
  %i.fs = getelementptr inbounds nuw i8, ptr %.12, i64 8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %bb.aq
  %.13 = phi ptr [ %i.fs, %bb.aq ], [ %i.ft, %bb.ar ] ; 3 uses
  %i.ft = getelementptr inbounds i8, ptr %.13, i64 -1 ; 2 uses
  %i.fu = load i8, ptr %i.ft, align 1
  %i.fv = icmp eq i8 %i.fu, 48
  br i1 %i.fv, label %bb.ar, label %bb.as, !llvm.loop !24

bb.as:                                            ; preds = %bb.ar
  store i8 0, ptr %.13, align 1
  %i.fw = ptrtoint ptr %.13 to i64
  %i.fx = ptrtoint ptr %1 to i64
  %i.fy = sub i64 %i.fw, %i.fx
  br label %bb.az

bb.at:                                            ; preds = %_ZN4abslL10SplitToSixEd.exit
  %i.fz = add nsw i32 %spec.select111.i, -6
  %i.ga = icmp ult i32 %i.fz, -10
  br i1 %i.ga, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void @__assert_fail(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str, i32 noundef 650, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl16numbers_internal17SixDigitsToBufferEdPc) #13
  unreachable

bb.av:                                            ; preds = %bb.at
  store i8 %.sroa.0.sroa.4.0.extract.trunc, ptr %.1142, align 1
  %i.gb = getelementptr inbounds nuw i8, ptr %.1142, i64 2
  store i24 %.sroa.0.sroa.12.0.extract.trunc, ptr %i.gb, align 1
  %.sroa.16.5..sroa_idx = getelementptr inbounds nuw i8, ptr %.1142, i64 5
  %.sroa.16.5.extract.trunc = trunc nuw i32 %.sroa.4132.8.insert.ext.i to i16
  store i16 %.sroa.16.5.extract.trunc, ptr %.sroa.16.5..sroa_idx, align 1
  %i.gc = getelementptr inbounds nuw i8, ptr %.1142, i64 7
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %bb.av
  %.14 = phi ptr [ %i.gc, %bb.av ], [ %i.gd, %bb.aw ] ; 2 uses
  %i.gd = getelementptr inbounds i8, ptr %.14, i64 -1 ; 3 uses
  %i.ge = load i8, ptr %i.gd, align 1
  switch i8 %i.ge, label %.loopexit.loopexit [
    i8 48, label %bb.aw
    i8 46, label %.loopexit
end_hunk_0
