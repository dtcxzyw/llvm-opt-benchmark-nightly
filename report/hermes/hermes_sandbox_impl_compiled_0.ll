inline.NumInlined: 15600
inline.NumDeleted: 36
begin_hunk_0_@w2c_hermes_asinh:bb.a
  %i.v = fmul double %1, %1                       ; 2 uses
  %i.w = fadd double %i.v, 1.000000e+00           ; 3 uses
  %i.x = fcmp uno double %i.w, 0.000000e+00
  br i1 %i.x, label %bb.i, label %bb.j, !prof !28

bb.i:                                             ; preds = %bb.h
  %i.y = bitcast double %i.w to i64
  %i.z = or i64 %i.y, 9221120237041090560
  %i.aa = bitcast i64 %i.z to double
  br label %wasm_sqrt.exit80

bb.j:                                             ; preds = %bb.h
  %sqrt81 = tail call double @llvm.sqrt.f64(double %i.w)
  br label %wasm_sqrt.exit80

wasm_sqrt.exit80:                                 ; preds = %bb.i, %bb.j
  %.0.i79 = phi double [ %i.aa, %bb.i ], [ %sqrt81, %bb.j ]
  %i.ab = fadd double %.0.i79, 1.000000e+00
  %i.ac = fdiv double %i.v, %i.ab
  %i.ad = fadd double %i.a, %i.ac
  %i.ae = tail call double @w2c_hermes_log1p(ptr noundef %0, double noundef %i.ad) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %wasm_sqrt.exit80, %wasm_sqrt.exit, %bb.b
  %.0 = phi double [ %i.h, %bb.b ], [ %i.t, %wasm_sqrt.exit ], [ %i.a, %bb.g ], [ %i.ae, %wasm_sqrt.exit80 ] ; 2 uses
  %i.af = fneg double %.0
  %i.ag = icmp slt i64 %i.b, 0
  %i.ah = select i1 %i.ag, double %i.af, double %.0
  ret double %i.ah
}

; Function Attrs: nounwind uwtable
define hidden double @w2c_hermes_atan(ptr noundef readonly captures(none) %0, double noundef %1) #0 {
bb.a:
  %i.a = bitcast double %1 to i64                 ; 2 uses
  %i.b = lshr i64 %i.a, 32
  %i.c = trunc nuw i64 %i.b to i32
  %i.d = and i32 %i.c, 2147483647                 ; 6 uses
  %i.e = icmp samesign ugt i32 %i.d, 1141899263
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call double @llvm.copysign.f64(double f0x3FF921FB54442D18, double %1)
  %i.g = tail call double @llvm.fabs.f64(double %1)
  %i.h = bitcast double %i.g to i64
  %i.i = icmp samesign ugt i64 %i.h, 9218868437227405312
  %i.j = select i1 %i.i, double %1, double %i.f
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.k = icmp samesign ult i32 %i.d, 1071382528   ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = icmp samesign ugt i32 %i.d, 1044381695
  br i1 %i.l, label %bb.l, label %bb.o

bb.e:                                             ; preds = %bb.c
  %i.m = tail call noundef double @llvm.fabs.f64(double %1) ; 8 uses
  %i.n = icmp samesign ult i32 %i.d, 1072889856
  br i1 %i.n, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.o = icmp samesign ult i32 %i.d, 1072037888
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = fadd double %i.m, %i.m
  %i.q = fadd double %i.p, -1.000000e+00
  %i.r = fadd double %i.m, 2.000000e+00
  %i.s = fdiv double %i.q, %i.r
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.t = fadd double %i.m, -1.000000e+00
  %i.u = fadd double %i.m, 1.000000e+00
  %i.v = fdiv double %i.t, %i.u
  br label %bb.l

bb.i:                                             ; preds = %bb.e
  %i.w = icmp samesign ult i32 %i.d, 1073971200
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.x = fadd double %i.m, -1.500000e+00
  %i.y = fmul double %i.m, 1.500000e+00
  %i.z = fadd double %i.y, 1.000000e+00
  %i.aa = fdiv double %i.x, %i.z
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ab = fdiv double -1.000000e+00, %i.m
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %bb.k, %bb.j, %bb.h, %bb.g
  %.0199 = phi i64 [ -8, %bb.d ], [ 0, %bb.g ], [ 8, %bb.h ], [ 16, %bb.j ], [ 24, %bb.k ] ; 2 uses
  %.0 = phi double [ %1, %bb.d ], [ %i.s, %bb.g ], [ %i.v, %bb.h ], [ %i.aa, %bb.j ], [ %i.ab, %bb.k ] ; 6 uses
  %i.ac = fmul double %.0, %.0                    ; 3 uses
  %i.ad = fmul double %i.ac, %i.ac                ; 10 uses
  %i.ae = fmul double %i.ad, f0x3FA2B4442C6A6C2F
  %i.af = fsub double f0xBFADDE2D52DEFD9A, %i.ae
  %i.ag = fmul double %i.ad, %i.af
  %i.ah = fadd double %i.ag, f0xBFB3B0F2AF749A6D
  %i.ai = fmul double %i.ad, %i.ah
  %i.aj = fadd double %i.ai, f0xBFBC71C6FE231671
  %i.ak = fmul double %i.ad, %i.aj
  %i.al = fadd double %i.ak, f0xBFC999999998EBC4
  %i.am = fmul double %i.ad, %i.al                ; 2 uses
  %i.an = fmul double %i.ad, f0x3F90AD3AE322DA11
  %i.ao = fadd double %i.an, f0x3FA97B4B24760DEB
  %i.ap = fmul double %i.ad, %i.ao
  %i.aq = fadd double %i.ap, f0x3FB10D66A0D03D51
  %i.ar = fmul double %i.ad, %i.aq
  %i.as = fadd double %i.ar, f0x3FB745CDC54C206E
  %i.at = fmul double %i.ad, %i.as
  %i.au = fadd double %i.at, f0x3FC24924920083FF
  %i.av = fmul double %i.ad, %i.au
  %i.aw = fadd double %i.av, f0x3FD555555555550D
  %i.ax = fmul double %i.ac, %i.aw                ; 2 uses
  br i1 %i.k, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ay = fadd double %i.am, %i.ax
  %i.az = fmul double %.0, %i.ay
  %i.ba = fsub double %.0, %i.az
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.val201 = load ptr, ptr %i.bb, align 8, !tbaa !21
  %i.bc = getelementptr i8, ptr %.val201, i64 %.0199
  %i.bd = getelementptr i8, ptr %i.bc, i64 231248
  %.0.copyload.i = load double, ptr %i.bd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i) #16, !srcloc !48
  %i.be = fadd double %i.am, %i.ax
  %i.bf = fmul double %.0, %i.be
  %.val = load ptr, ptr %i.bb, align 8, !tbaa !21
  %i.bg = getelementptr i8, ptr %.val, i64 %.0199
  %i.bh = getelementptr i8, ptr %i.bg, i64 231280
  %.0.copyload.i202 = load double, ptr %i.bh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i202) #16, !srcloc !48
  %i.bi = fsub double %i.bf, %.0.copyload.i202
  %i.bj = fsub double %i.bi, %.0
  %i.bk = fsub double %.0.copyload.i, %i.bj       ; 2 uses
  %i.bl = fneg double %i.bk
  %i.bm = icmp slt i64 %i.a, 0
  %i.bn = select i1 %i.bm, double %i.bl, double %i.bk
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.d, %bb.m, %bb.b
  %.0198 = phi double [ %i.j, %bb.b ], [ %i.ba, %bb.m ], [ %i.bn, %bb.n ], [ %1, %bb.d ]
  ret double %.0198
}

; Function Attrs: nounwind uwtable
define hidden double @w2c_hermes_atanh(ptr noundef %0, double noundef %1) #0 {
bb.a:
  %i.a = tail call noundef double @llvm.fabs.f64(double %1) ; 7 uses
  %i.b = bitcast double %1 to i64                 ; 2 uses
  %i.c = lshr i64 %i.b, 52
  %i.d = trunc nuw nsw i64 %i.c to i32
  %i.e = and i32 %i.d, 2047                       ; 2 uses
  %i.f = icmp samesign ult i32 %i.e, 1022
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = icmp samesign ult i32 %i.e, 991
  br i1 %i.g, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = fadd double %i.a, %i.a                   ; 2 uses
  %i.i = fmul double %i.a, %i.h
  %i.j = fsub double 1.000000e+00, %i.a
  %i.k = fdiv double %i.i, %i.j
  %i.l = fadd double %i.h, %i.k
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.m = fsub double 1.000000e+00, %i.a
  %i.n = fdiv double %i.a, %i.m                   ; 2 uses
  %i.o = fadd double %i.n, %i.n
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi double [ %i.l, %bb.c ], [ %i.o, %bb.d ]
  %i.p = tail call double @w2c_hermes_log1p(ptr noundef %0, double noundef %.0) #16
  %i.q = fmul double %i.p, 5.000000e-01
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %.059 = phi double [ %i.a, %bb.b ], [ %i.q, %bb.e ] ; 2 uses
  %i.r = fneg double %.059
  %i.s = icmp slt i64 %i.b, 0
  %i.t = select i1 %i.s, double %i.r, double %.059
  ret double %i.t
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden double @w2c_hermes_cbrt(ptr readnone captures(none) %0, double noundef %1) #3 {
bb.a:
  %i.a = bitcast double %1 to i64                 ; 2 uses
  %i.b = lshr i64 %i.a, 32
  %i.c = trunc nuw i64 %i.b to i32
  %i.d = and i32 %i.c, 2147483647                 ; 3 uses
  %i.e = icmp samesign ugt i32 %i.d, 2146435071
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = fadd double %1, %1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = icmp samesign ult i32 %i.d, 1048576
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = fmul double %1, f0x4350000000000000
  %i.i = bitcast double %i.h to i64               ; 2 uses
  %i.j = lshr i64 %i.i, 32
  %i.k = trunc nuw i64 %i.j to i32
  %i.l = and i32 %i.k, 2147483647                 ; 2 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0127 = phi i64 [ %i.i, %bb.d ], [ %i.a, %bb.c ]
  %.0126 = phi i32 [ 696219795, %bb.d ], [ 715094163, %bb.c ]
  %.0124 = phi i32 [ %i.l, %bb.d ], [ %i.d, %bb.c ]
  %2 = and i64 %.0127, -9223372036854775808
  %i.m = udiv i32 %.0124, 3
  %i.n = add nuw nsw i32 %i.m, %.0126
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 32
  %3 = or disjoint i64 %i.p, %2
  %4 = bitcast i64 %3 to double                   ; 4 uses
  %i.q = fmul double %4, %4
  %i.r = fdiv double %4, %1
  %i.s = fmul double %i.q, %i.r                   ; 6 uses
  %i.t = fmul double %i.s, %i.s
  %i.u = fmul double %i.s, %i.t
  %i.v = fmul double %i.s, f0x3FC2B000D4E4EDD7
  %i.w = fadd double %i.v, f0xBFE844CBBEE751D9
  %i.x = fmul double %i.u, %i.w
  %i.y = fmul double %i.s, f0x3FF9F1604A49D6C2
  %i.z = fadd double %i.y, f0xBFFE28E092F02420
  %i.aa = fmul double %i.s, %i.z
  %i.ab = fadd double %i.aa, f0x3FFE03E60F61E692
  %i.ac = fadd double %i.x, %i.ab
  %i.ad = fmul double %i.ac, %4
  %i.ae = bitcast double %i.ad to i64
  %i.af = and i64 %i.ae, -1073741824
  %i.ag = add i64 %i.af, 2147483648
  %i.ah = bitcast i64 %i.ag to double             ; 7 uses
  %i.ai = fmul double %i.ah, %i.ah
  %i.aj = fdiv double %1, %i.ai                   ; 2 uses
  %i.ak = fsub double %i.aj, %i.ah
  %i.al = fadd double %i.ah, %i.ah
  %i.am = fadd double %i.al, %i.aj
  %i.an = fdiv double %i.ak, %i.am
  %i.ao = fmul double %i.an, %i.ah
  %i.ap = fadd double %i.ao, %i.ah
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0125 = phi double [ %i.f, %bb.b ], [ %1, %bb.d ], [ %i.ap, %bb.e ]
  ret double %.0125
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef double @w2c_hermes_ceil(ptr readnone captures(none) %0, double noundef %1) #3 {
bb.a:
  %i.a = fcmp uno double %1, 0.000000e+00
  br i1 %i.a, label %bb.b, label %bb.c, !prof !28

bb.b:                                             ; preds = %bb.a
  %i.b = bitcast double %1 to i64
  %i.c = or i64 %i.b, 9221120237041090560
  %i.d = bitcast i64 %i.c to double
  br label %wasm_ceil.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call double @llvm.ceil.f64(double %1)
  br label %wasm_ceil.exit

wasm_ceil.exit:                                   ; preds = %bb.b, %bb.c
  %.0.i = phi double [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret double %.0.i
}

; Function Attrs: nounwind uwtable
define hidden double @w2c_hermes_cos(ptr noundef %0, double noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = add i32 %i.b, -16                        ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !19
  %i.d = bitcast double %1 to i64
  %i.e = lshr i64 %i.d, 32
  %i.f = trunc nuw i64 %i.e to i32
  %i.g = and i32 %i.f, 2147483647                 ; 3 uses
  %i.h = icmp samesign ult i32 %i.g, 1072243196
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i32 %i.g, 1044816030
  br i1 %i.i, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = fmul double %1, %1                       ; 9 uses
  %i.k = fmul double %i.j, 5.000000e-01           ; 2 uses
  %i.l = fsub double 1.000000e+00, %i.k           ; 2 uses
  %i.m = fsub double 1.000000e+00, %i.l
  %i.n = fsub double %i.m, %i.k
  %i.o = fmul double %i.j, f0x3EFA01A019CB1590
  %i.p = fadd double %i.o, f0xBF56C16C16C15177
  %i.q = fmul double %i.j, %i.p
  %i.r = fadd double %i.q, f0x3FA555555555554C
  %i.s = fmul double %i.j, %i.r
  %i.t = fmul double %i.j, %i.j                   ; 2 uses
  %i.u = fmul double %i.t, %i.t
  %i.v = fmul double %i.j, f0x3DA8FAE9BE8838D4
  %i.w = fsub double f0x3E21EE9EBDB4B1C4, %i.v
  %i.x = fmul double %i.j, %i.w
  %i.y = fadd double %i.x, f0xBE927E4F809C52AD
  %i.z = fmul double %i.u, %i.y
  %i.aa = fadd double %i.s, %i.z
  %i.ab = fmul double %i.j, %i.aa
  %i.ac = fmul double %1, 0.000000e+00
  %i.ad = fsub double %i.ab, %i.ac
  %i.ae = fadd double %i.n, %i.ad
  %i.af = fadd double %i.l, %i.ae
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.ag = fsub double %1, %1
  %i.ah = icmp samesign ugt i32 %i.g, 2146435071
  br i1 %i.ah, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = tail call i32 @w2c_hermes_0x5F_rem_pio2(ptr noundef nonnull %0, double noundef %1, i32 noundef %i.c)
  %i.aj = and i32 %i.ai, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.al = zext i32 %i.c to i64                    ; 2 uses
  %.val95 = load ptr, ptr %i.ak, align 8, !tbaa !21
  %i.am = getelementptr inbounds nuw i8, ptr %.val95, i64 %i.al
  %.0.copyload.i = load double, ptr %i.am, align 1 ; 9 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i) #16
  %.val94 = load ptr, ptr %i.ak, align 8, !tbaa !21
  %i.an = getelementptr inbounds nuw i8, ptr %.val94, i64 %i.al
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.0.copyload.i96 = load double, ptr %i.ao, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i96) #16
  %i.ap = fmul double %.0.copyload.i, %.0.copyload.i ; 34 uses
  switch i32 %i.aj, label %default.unreachable [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.aq = fmul double %i.ap, 5.000000e-01         ; 2 uses
  %i.ar = fsub double 1.000000e+00, %i.aq         ; 2 uses
  %i.as = fsub double 1.000000e+00, %i.ar
  %i.at = fsub double %i.as, %i.aq
  %i.au = fmul double %i.ap, f0x3EFA01A019CB1590
  %i.av = fadd double %i.au, f0xBF56C16C16C15177
  %i.aw = fmul double %i.ap, %i.av
  %i.ax = fadd double %i.aw, f0x3FA555555555554C
  %i.ay = fmul double %i.ap, %i.ax
  %i.az = fmul double %i.ap, %i.ap                ; 2 uses
  %i.ba = fmul double %i.az, %i.az
  %i.bb = fmul double %i.ap, f0x3DA8FAE9BE8838D4
  %i.bc = fsub double f0x3E21EE9EBDB4B1C4, %i.bb
  %i.bd = fmul double %i.ap, %i.bc
  %i.be = fadd double %i.bd, f0xBE927E4F809C52AD
  %i.bf = fmul double %i.ba, %i.be
  %i.bg = fadd double %i.ay, %i.bf
  %i.bh = fmul double %i.ap, %i.bg
  %i.bi = fmul double %.0.copyload.i, %.0.copyload.i96
  %i.bj = fsub double %i.bh, %i.bi
  %i.bk = fadd double %i.at, %i.bj
  %i.bl = fadd double %i.ar, %i.bk
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.bm = fmul double %i.ap, %i.ap
  %i.bn = fmul double %i.ap, %i.bm
  %i.bo = fmul double %i.ap, f0x3DE5D93A5ACFD57C
  %i.bp = fadd double %i.bo, f0xBE5AE5E68A2B9CEB
  %i.bq = fmul double %i.bn, %i.bp
  %i.br = fmul double %i.ap, f0x3EC71DE357B1FE7D
  %i.bs = fadd double %i.br, f0xBF2A01A019C161D5
  %i.bt = fmul double %i.ap, %i.bs
  %i.bu = fadd double %i.bt, f0x3F8111111110F8A6
  %i.bv = fadd double %i.bq, %i.bu
  %i.bw = fmul double %.0.copyload.i, %i.ap       ; 2 uses
  %i.bx = fmul double %.0.copyload.i96, 5.000000e-01
  %i.by = fmul double %i.bw, %i.bv
  %i.bz = fsub double %i.bx, %i.by
  %i.ca = fmul double %i.ap, %i.bz
  %i.cb = fsub double %i.ca, %.0.copyload.i96
  %i.cc = fmul double %i.bw, f0x3FC5555555555549
  %i.cd = fadd double %i.cc, %i.cb
  %i.ce = fsub double %.0.copyload.i, %i.cd
  %i.cf = fneg double %i.ce
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.cg = fmul double %i.ap, 5.000000e-01         ; 2 uses
  %i.ch = fsub double 1.000000e+00, %i.cg         ; 2 uses
  %i.ci = fsub double 1.000000e+00, %i.ch
  %i.cj = fsub double %i.ci, %i.cg
  %i.ck = fmul double %i.ap, f0x3EFA01A019CB1590
  %i.cl = fadd double %i.ck, f0xBF56C16C16C15177
  %i.cm = fmul double %i.ap, %i.cl
  %i.cn = fadd double %i.cm, f0x3FA555555555554C
  %i.co = fmul double %i.ap, %i.cn
  %i.cp = fmul double %i.ap, %i.ap                ; 2 uses
  %i.cq = fmul double %i.cp, %i.cp
  %i.cr = fmul double %i.ap, f0x3DA8FAE9BE8838D4
  %i.cs = fsub double f0x3E21EE9EBDB4B1C4, %i.cr
  %i.ct = fmul double %i.ap, %i.cs
  %i.cu = fadd double %i.ct, f0xBE927E4F809C52AD
  %i.cv = fmul double %i.cq, %i.cu
  %i.cw = fadd double %i.co, %i.cv
  %i.cx = fmul double %i.ap, %i.cw
  %i.cy = fmul double %.0.copyload.i, %.0.copyload.i96
  %i.cz = fsub double %i.cx, %i.cy
  %i.da = fadd double %i.cj, %i.cz
  %i.db = fadd double %i.ch, %i.da
  %i.dc = fneg double %i.db
  br label %bb.j

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.i:                                             ; preds = %bb.e
  %i.dd = fmul double %i.ap, %i.ap
  %i.de = fmul double %i.ap, %i.dd
  %i.df = fmul double %i.ap, f0x3DE5D93A5ACFD57C
  %i.dg = fadd double %i.df, f0xBE5AE5E68A2B9CEB
  %i.dh = fmul double %i.de, %i.dg
  %i.di = fmul double %i.ap, f0x3EC71DE357B1FE7D
  %i.dj = fadd double %i.di, f0xBF2A01A019C161D5
  %i.dk = fmul double %i.ap, %i.dj
  %i.dl = fadd double %i.dk, f0x3F8111111110F8A6
  %i.dm = fadd double %i.dh, %i.dl
  %i.dn = fmul double %.0.copyload.i, %i.ap       ; 2 uses
end_hunk_0
