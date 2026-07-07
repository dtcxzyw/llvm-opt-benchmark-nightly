inline.NumInlined: 8639
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 67
loop-unroll.NumUnrolled: 67
begin_hunk_0_@w2c_hermes_llvh0x3A0x3ATwine0x3A0x3AtoVector0x28llvh0x3A0x3ASmallVectorImpl0x3Cchar0x3E0x260x290x20const:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %.val34.i, i64 %i.o
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.v, align 1
  %.val33.i = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %.val33.i, i64 %i.o
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 0, ptr %i.x, align 1
  %.val32.i = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.y = getelementptr inbounds nuw i8, ptr %.val32.i, i64 %i.o
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i32 0, ptr %i.z, align 1
  %i.aa = zext i32 %1 to i64                      ; 4 uses
  %.val90 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ab = getelementptr inbounds nuw i8, ptr %.val90, i64 %i.aa
  %.0.copyload.i = load i32, ptr %i.ab, align 1   ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %.val94 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %.val94, i64 %i.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 44
  store i32 %.0.copyload.i, ptr %i.ad, align 1
  %.val88 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ae = getelementptr inbounds nuw i8, ptr %.val88, i64 %i.aa
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.0.copyload.i99 = load i8, ptr %i.af, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i99) #8, !srcloc !13
  %i.ag = zext i8 %.0.copyload.i99 to i32
  %.val93 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ah = getelementptr inbounds nuw i8, ptr %.val93, i64 %i.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i32 %.0.copyload.i, ptr %i.ai, align 1
  %i.aj = add i32 %i.b, -36
  tail call void @w2c_hermes_llvh0x3A0x3ATwine0x3A0x3AprintOneChild0x28llvh0x3A0x3Araw_ostream0x260x2C0x20llvh0x3A0x3ATwine0x3A0x3AChild0x2C0x20llvh0x3A0x3ATwine0x3A0x3ANodeKind0x290x20const(ptr noundef nonnull %0, i32 noundef %i.n, i32 noundef %i.aj, i32 noundef %i.ag)
  %.val89 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ak = getelementptr inbounds nuw i8, ptr %.val89, i64 %i.aa
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %.0.copyload.i100 = load i32, ptr %i.al, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i100) #8, !srcloc !14
  %.val92 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.am = getelementptr inbounds nuw i8, ptr %.val92, i64 %i.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  store i32 %.0.copyload.i100, ptr %i.an, align 1
  %.val = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %.val, i64 %i.aa
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 9
  %.0.copyload.i101 = load i8, ptr %i.ap, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i101) #8, !srcloc !13
  %i.aq = zext i8 %.0.copyload.i101 to i32
  %.val91 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ar = getelementptr inbounds nuw i8, ptr %.val91, i64 %i.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i32 %.0.copyload.i100, ptr %i.as, align 1
  %i.at = add i32 %i.b, -40
  tail call void @w2c_hermes_llvh0x3A0x3ATwine0x3A0x3AprintOneChild0x28llvh0x3A0x3Araw_ostream0x260x2C0x20llvh0x3A0x3ATwine0x3A0x3AChild0x2C0x20llvh0x3A0x3ATwine0x3A0x3ANodeKind0x290x20const(ptr noundef nonnull %0, i32 noundef %i.n, i32 noundef %i.at, i32 noundef %i.aq)
  %.val22.i = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.au = getelementptr inbounds nuw i8, ptr %.val22.i, i64 %i.o
  store i32 261740, ptr %i.au, align 1
  %.val21.i = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.av = getelementptr inbounds nuw i8, ptr %.val21.i, i64 %i.o
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.0.copyload.i.i102 = load i32, ptr %i.aw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i102) #8, !srcloc !14
  %.not.i103 = icmp eq i32 %.0.copyload.i.i102, 1
  br i1 %.not.i103, label %bb.d, label %w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3A0x7Eraw_ostream0x280x290x2E1.exit

bb.d:                                             ; preds = %w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3ASetBufferAndMode0x28char0x2A0x2C0x20unsigned0x20long0x2C0x20llvh0x3A0x3Araw_ostream0x3A0x3ABufferKind0x29.exit
  %.val.i104 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ax = getelementptr inbounds nuw i8, ptr %.val.i104, i64 %i.o
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %.0.copyload.i23.i = load i32, ptr %i.ay, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i23.i) #8, !srcloc !14
  %.not20.i = icmp eq i32 %.0.copyload.i23.i, 0
  br i1 %.not20.i, label %w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3A0x7Eraw_ostream0x280x290x2E1.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i23.i) #8
  br label %w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3A0x7Eraw_ostream0x280x290x2E1.exit

w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3A0x7Eraw_ostream0x280x290x2E1.exit: ; preds = %w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3ASetBufferAndMode0x28char0x2A0x2C0x20unsigned0x20long0x2C0x20llvh0x3A0x3Araw_ostream0x3A0x3ABufferKind0x29.exit, %bb.d, %bb.e
  store i32 %i.b, ptr %i.a, align 8, !tbaa !15
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3Aoperator0x3C0x3C0x28long0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %2 to i64                       ; 2 uses
  %i.b = icmp sgt i32 %2, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @w2c_hermes_void0x20write_unsigned0x3Cunsigned0x20long0x20long0x3E0x28llvh0x3A0x3Araw_ostream0x260x2C0x20unsigned0x20long0x20long0x2C0x20unsigned0x20long0x2C0x20llvh0x3A0x3AIntegerStyle0x2C0x20bool0x29(ptr noundef %0, i32 noundef %1, i64 noundef %i.a, i32 noundef 0) #8
  br label %w2c_hermes_llvh0x3A0x3Awrite_integer0x28llvh0x3A0x3Araw_ostream0x260x2C0x20long0x20long0x2C0x20unsigned0x20long0x2C0x20llvh0x3A0x3AIntegerStyle0x29.exit

bb.c:                                             ; preds = %bb.a
  %i.c = sub nsw i64 0, %i.a
  tail call void @w2c_hermes_void0x20write_unsigned0x3Cunsigned0x20long0x20long0x3E0x28llvh0x3A0x3Araw_ostream0x260x2C0x20unsigned0x20long0x20long0x2C0x20unsigned0x20long0x2C0x20llvh0x3A0x3AIntegerStyle0x2C0x20bool0x29(ptr noundef %0, i32 noundef %1, i64 noundef %i.c, i32 noundef 1) #8
  br label %w2c_hermes_llvh0x3A0x3Awrite_integer0x28llvh0x3A0x3Araw_ostream0x260x2C0x20long0x20long0x2C0x20unsigned0x20long0x2C0x20llvh0x3A0x3AIntegerStyle0x29.exit

w2c_hermes_llvh0x3A0x3Awrite_integer0x28llvh0x3A0x3Araw_ostream0x260x2C0x20long0x20long0x2C0x20unsigned0x20long0x2C0x20llvh0x3A0x3AIntegerStyle0x29.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3Aoperator0x3C0x3C0x28unsigned0x20long0x20long0x29(ptr noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call void @w2c_hermes_void0x20write_unsigned0x3Cunsigned0x20long0x20long0x3E0x28llvh0x3A0x3Araw_ostream0x260x2C0x20unsigned0x20long0x20long0x2C0x20unsigned0x20long0x2C0x20llvh0x3A0x3AIntegerStyle0x2C0x20bool0x29(ptr noundef %0, i32 noundef %1, i64 noundef %2, i32 noundef 0) #8
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3Aoperator0x3C0x3C0x28long0x20long0x29(ptr noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i64 %2, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @w2c_hermes_void0x20write_unsigned0x3Cunsigned0x20long0x20long0x3E0x28llvh0x3A0x3Araw_ostream0x260x2C0x20unsigned0x20long0x20long0x2C0x20unsigned0x20long0x2C0x20llvh0x3A0x3AIntegerStyle0x2C0x20bool0x29(ptr noundef %0, i32 noundef %1, i64 noundef %2, i32 noundef 0) #8
  br label %w2c_hermes_llvh0x3A0x3Awrite_integer0x28llvh0x3A0x3Araw_ostream0x260x2C0x20long0x20long0x2C0x20unsigned0x20long0x2C0x20llvh0x3A0x3AIntegerStyle0x29.exit

bb.c:                                             ; preds = %bb.a
  %i.b = sub i64 0, %2
  tail call void @w2c_hermes_void0x20write_unsigned0x3Cunsigned0x20long0x20long0x3E0x28llvh0x3A0x3Araw_ostream0x260x2C0x20unsigned0x20long0x20long0x2C0x20unsigned0x20long0x2C0x20llvh0x3A0x3AIntegerStyle0x2C0x20bool0x29(ptr noundef %0, i32 noundef %1, i64 noundef %i.b, i32 noundef 1) #8
  br label %w2c_hermes_llvh0x3A0x3Awrite_integer0x28llvh0x3A0x3Araw_ostream0x260x2C0x20long0x20long0x2C0x20unsigned0x20long0x2C0x20llvh0x3A0x3AIntegerStyle0x29.exit

w2c_hermes_llvh0x3A0x3Awrite_integer0x28llvh0x3A0x3Araw_ostream0x260x2C0x20long0x20long0x2C0x20unsigned0x20long0x2C0x20llvh0x3A0x3AIntegerStyle0x29.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_llvh0x3A0x3Awrite_hex0x28llvh0x3A0x3Araw_ostream0x260x2C0x20unsigned0x20long0x20long0x2C0x20llvh0x3A0x3AHexPrintStyle0x2C0x20llvh0x3A0x3AOptional0x3Cunsigned0x20long0x3E0x29(ptr noundef %0, i32 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15
  %i.c = add i32 %i.b, -128                       ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.e = zext i32 %3 to i64                       ; 2 uses
  %.val = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.0.copyload.i = load i8, ptr %i.g, align 1     ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i) #8, !srcloc !13
  %.val115 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %.val115, i64 %i.e
  %.0.copyload.i116 = load i32, ptr %i.h, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i116) #8, !srcloc !14
  %i.i = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef %0, i32 noundef %i.c, i32 noundef 48, i32 noundef 128) #8 ; 3 uses
  %i.j = tail call i32 @llvm.umin.i32(i32 %.0.copyload.i116, i32 128)
  %.not = icmp eq i8 %.0.copyload.i, 0
  %.not113 = icmp eq i64 %2, 0
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %2, i1 false)
  %i.l = trunc nuw nsw i64 %i.k to i32
  %i.m = sub nuw nsw i32 67, %i.l
  %i.n = lshr i32 %i.m, 2
  %i.o = icmp ult i64 %2, 16
  %i.p = select i1 %i.o, i32 1, i32 %i.n          ; 2 uses
  %i.q = tail call i32 @llvm.umax.i32(i32 %i.j, i32 %i.p)
  %i.r = select i1 %.not, i32 %i.p, i32 %i.q      ; 2 uses
  br i1 %.not113, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = add i32 %i.r, %i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0111 = phi i32 [ %i.s, %bb.b ], [ %i.t, %bb.c ]
  %.0 = phi i64 [ %2, %bb.b ], [ %i.ae, %bb.c ]   ; 3 uses
  %i.t = add i32 %.0111, -1                       ; 2 uses
  %i.u = trunc i64 %.0 to i32
  %i.v = and i32 %i.u, 15                         ; 3 uses
  %i.w = or disjoint i32 %i.v, 48
  %i.x = add nuw nsw i32 %i.v, 87
  %i.y = icmp samesign ult i32 %i.v, 10
  %i.z = select i1 %i.y, i32 %i.w, i32 %i.x
  %i.aa = zext i32 %i.t to i64
  %.val114 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ab = trunc nuw nsw i32 %i.z to i8
  %i.ac = getelementptr inbounds nuw i8, ptr %.val114, i64 %i.aa
  store i8 %i.ab, ptr %i.ac, align 1
  %i.ad = icmp ugt i64 %.0, 15
  %i.ae = lshr i64 %.0, 4
  br i1 %i.ad, label %bb.c, label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.a
  %i.af = tail call i32 @w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3Awrite0x28char0x20const0x2A0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.i, i32 noundef %i.r) ; 0 uses
  %i.ag = add i32 %i.i, 128
  store i32 %i.ag, ptr %i.a, align 8, !tbaa !15
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef double @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AyearFromTime0x28double0x29(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef double @llvm.fabs.f64(double %1)
  %i.b = fcmp ueq double %i.a, +inf
  br i1 %i.b, label %.loopexit, label %wasm_floor.exit176

wasm_floor.exit176:                               ; preds = %bb.a
  %i.c = fdiv double %1, f0x421D63C37F000000
  %i.d = tail call double @llvm.floor.f64(double %i.c)
  %i.e = fadd double %i.d, 1.970000e+03           ; 6 uses
  %i.f = fadd nnan double %i.e, -1.601000e+03
  %2 = fdiv nnan double %i.f, 4.000000e+02
  %i.g = tail call nnan double @llvm.floor.f64(double %2)
  %i.h = fadd nnan double %i.e, -1.970000e+03
  %3 = fmul nnan double %i.h, 3.650000e+02
  %4 = fadd nnan double %i.e, -1.969000e+03
  %5 = fmul nnan double %4, 2.500000e-01
  %6 = tail call nnan double @llvm.floor.f64(double %5)
  %7 = fadd double %3, %6
  %8 = fadd nnan double %i.e, -1.901000e+03
  %9 = fdiv nnan double %8, 1.000000e+02
  %i.i = tail call nnan double @llvm.floor.f64(double %9)
  %i.j = fsub double %7, %i.i
  %i.k = fadd double %i.g, %i.j
  %i.l = fmul double %i.k, 8.640000e+07           ; 2 uses
  %i.m = fcmp olt double %1, %i.l
  br i1 %i.m, label %.preheader, label %.loopexit189.preheader

.preheader:                                       ; preds = %wasm_floor.exit176, %wasm_floor.exit182
  %.0165 = phi double [ %i.n, %wasm_floor.exit182 ], [ %i.e, %wasm_floor.exit176 ]
  %i.n = fadd double %.0165, -1.000000e+00        ; 6 uses
  %i.o = fadd double %i.n, -1.601000e+03
  %i.p = fdiv double %i.o, 4.000000e+02           ; 3 uses
  %i.q = fcmp uno double %i.p, 0.000000e+00
  br i1 %i.q, label %bb.b, label %bb.c, !prof !26

bb.b:                                             ; preds = %.preheader
  %i.r = bitcast double %i.p to i64
  %i.s = or i64 %i.r, 9221120237041090560
  %i.t = bitcast i64 %i.s to double
  br label %wasm_floor.exit178

bb.c:                                             ; preds = %.preheader
  %i.u = tail call nnan double @llvm.floor.f64(double %i.p)
  br label %wasm_floor.exit178

wasm_floor.exit178:                               ; preds = %bb.b, %bb.c
  %.0.i177 = phi double [ %i.t, %bb.b ], [ %i.u, %bb.c ]
  %i.v = fadd double %i.n, -1.970000e+03
  %i.w = fmul double %i.v, 3.650000e+02
  %i.x = fadd double %i.n, -1.969000e+03
  %i.y = fmul double %i.x, 2.500000e-01           ; 3 uses
  %i.z = fcmp uno double %i.y, 0.000000e+00
  br i1 %i.z, label %bb.d, label %bb.e, !prof !26

bb.d:                                             ; preds = %wasm_floor.exit178
  %i.aa = bitcast double %i.y to i64
  %i.ab = or i64 %i.aa, 9221120237041090560
  %i.ac = bitcast i64 %i.ab to double
  br label %wasm_floor.exit180

bb.e:                                             ; preds = %wasm_floor.exit178
  %i.ad = tail call double @llvm.floor.f64(double %i.y)
  br label %wasm_floor.exit180

wasm_floor.exit180:                               ; preds = %bb.d, %bb.e
  %.0.i179 = phi double [ %i.ac, %bb.d ], [ %i.ad, %bb.e ]
  %i.ae = fadd double %i.w, %.0.i179
  %i.af = fadd double %i.n, -1.901000e+03
  %i.ag = fdiv double %i.af, 1.000000e+02         ; 3 uses
  %i.ah = fcmp uno double %i.ag, 0.000000e+00
  br i1 %i.ah, label %bb.f, label %bb.g, !prof !26

bb.f:                                             ; preds = %wasm_floor.exit180
  %i.ai = bitcast double %i.ag to i64
  %i.aj = or i64 %i.ai, 9221120237041090560
  %i.ak = bitcast i64 %i.aj to double
  br label %wasm_floor.exit182

bb.g:                                             ; preds = %wasm_floor.exit180
  %i.al = tail call nnan double @llvm.floor.f64(double %i.ag)
  br label %wasm_floor.exit182

wasm_floor.exit182:                               ; preds = %bb.f, %bb.g
  %.0.i181 = phi double [ %i.ak, %bb.f ], [ %i.al, %bb.g ]
  %i.am = fsub double %i.ae, %.0.i181
  %i.an = fadd double %.0.i177, %i.am
  %i.ao = fmul double %i.an, 8.640000e+07         ; 2 uses
  %i.ap = fcmp ogt double %i.ao, %1
  br i1 %i.ap, label %.preheader, label %.loopexit189.preheader

.loopexit189.preheader:                           ; preds = %wasm_floor.exit182, %wasm_floor.exit176
  %.1168.ph = phi double [ %i.l, %wasm_floor.exit176 ], [ %i.ao, %wasm_floor.exit182 ]
  %.2.ph = phi double [ %i.e, %wasm_floor.exit176 ], [ %i.n, %wasm_floor.exit182 ]
  br label %.loopexit189

.loopexit189:                                     ; preds = %.loopexit189.preheader, %wasm_floor.exit188
  %.1168 = phi double [ %i.cb, %wasm_floor.exit188 ], [ %.1168.ph, %.loopexit189.preheader ]
  %.2 = phi double [ %i.ba, %wasm_floor.exit188 ], [ %.2.ph, %.loopexit189.preheader ] ; 5 uses
  %i.aq = tail call double @w2c_hermes_fmod(ptr noundef %0, double noundef %.2, double noundef 4.000000e+00) #8
  %i.ar = fcmp oeq double %i.aq, 0.000000e+00
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.loopexit189
  %i.as = tail call double @w2c_hermes_fmod(ptr noundef %0, double noundef %.2, double noundef 4.000000e+02) #8
  %i.at = fcmp oeq double %i.as, 0.000000e+00
  %i.au = tail call double @w2c_hermes_fmod(ptr noundef %0, double noundef %.2, double noundef 1.000000e+02) #8
  %i.av = fcmp une double %i.au, 0.000000e+00
  %i.aw = select i1 %i.av, i1 true, i1 %i.at
  %i.ax = select i1 %i.aw, double 3.162240e+10, double 3.153600e+10
  br label %bb.i

bb.i:                                             ; preds = %.loopexit189, %bb.h
  %.0166 = phi double [ %i.ax, %bb.h ], [ 3.153600e+10, %.loopexit189 ]
  %i.ay = fadd double %.1168, %.0166
  %i.az = fcmp ugt double %i.ay, %1
  br i1 %i.az, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = fadd double %.2, 1.000000e+00           ; 5 uses
  %i.bb = fadd double %i.ba, -1.601000e+03
  %i.bc = fdiv double %i.bb, 4.000000e+02         ; 3 uses
  %i.bd = fcmp uno double %i.bc, 0.000000e+00
  br i1 %i.bd, label %bb.k, label %bb.l, !prof !26

bb.k:                                             ; preds = %bb.j
  %i.be = bitcast double %i.bc to i64
  %i.bf = or i64 %i.be, 9221120237041090560
  %i.bg = bitcast i64 %i.bf to double
  br label %wasm_floor.exit184

bb.l:                                             ; preds = %bb.j
  %i.bh = tail call nnan double @llvm.floor.f64(double %i.bc)
  br label %wasm_floor.exit184

wasm_floor.exit184:                               ; preds = %bb.k, %bb.l
  %.0.i183 = phi double [ %i.bg, %bb.k ], [ %i.bh, %bb.l ]
  %i.bi = fadd double %i.ba, -1.970000e+03
  %i.bj = fmul double %i.bi, 3.650000e+02
  %i.bk = fadd double %i.ba, -1.969000e+03
  %i.bl = fmul double %i.bk, 2.500000e-01         ; 3 uses
  %i.bm = fcmp uno double %i.bl, 0.000000e+00
  br i1 %i.bm, label %bb.m, label %bb.n, !prof !26

bb.m:                                             ; preds = %wasm_floor.exit184
  %i.bn = bitcast double %i.bl to i64
  %i.bo = or i64 %i.bn, 9221120237041090560
  %i.bp = bitcast i64 %i.bo to double
  br label %wasm_floor.exit186

bb.n:                                             ; preds = %wasm_floor.exit184
  %i.bq = tail call double @llvm.floor.f64(double %i.bl)
  br label %wasm_floor.exit186

wasm_floor.exit186:                               ; preds = %bb.m, %bb.n
  %.0.i185 = phi double [ %i.bp, %bb.m ], [ %i.bq, %bb.n ]
  %i.br = fadd double %i.bj, %.0.i185
  %i.bs = fadd double %i.ba, -1.901000e+03
  %i.bt = fdiv double %i.bs, 1.000000e+02         ; 3 uses
  %i.bu = fcmp uno double %i.bt, 0.000000e+00
  br i1 %i.bu, label %bb.o, label %bb.p, !prof !26

bb.o:                                             ; preds = %wasm_floor.exit186
  %i.bv = bitcast double %i.bt to i64
  %i.bw = or i64 %i.bv, 9221120237041090560
  %i.bx = bitcast i64 %i.bw to double
  br label %wasm_floor.exit188

bb.p:                                             ; preds = %wasm_floor.exit186
  %i.by = tail call nnan double @llvm.floor.f64(double %i.bt)
  br label %wasm_floor.exit188

wasm_floor.exit188:                               ; preds = %bb.o, %bb.p
  %.0.i187 = phi double [ %i.bx, %bb.o ], [ %i.by, %bb.p ]
  %i.bz = fsub double %i.br, %.0.i187
  %i.ca = fadd double %.0.i183, %i.bz
  %i.cb = fmul double %i.ca, 8.640000e+07
  br label %.loopexit189

.loopexit:                                        ; preds = %bb.i, %bb.a
  %.0 = phi double [ %1, %bb.a ], [ %.2, %bb.i ]
  ret double %.0
}

declare double @w2c_hermes_fmod(ptr noundef, double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden double @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AutcTime0x28double0x2C0x20hermes0x3A0x3Avm0x3A0x3ALocalTimeOffsetCache0x260x29(ptr noundef %0, double noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef double @llvm.fabs.f64(double %1)
  %i.b = fcmp ueq double %i.a, +inf
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call double @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ALocalTimeOffsetCache0x3A0x3AgetLocalTimeOffset0x28double0x2C0x20hermes0x3A0x3Avm0x3A0x3ATimeType0x29(ptr noundef %0, i32 noundef %2, double noundef %1, i32 noundef 0) #8
  %i.d = fsub double %1, %i.c
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi double [ %i.d, %bb.b ], [ +qnan, %bb.a ]
  ret double %.0
}

declare double @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ALocalTimeOffsetCache0x3A0x3AgetLocalTimeOffset0x28double0x2C0x20hermes0x3A0x3Avm0x3A0x3ATimeType0x29(ptr noundef, i32 noundef, double noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden noundef i32 @w2c_hermes_llvh0x3A0x3Aouts0x280x29(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 15 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = add i32 %i.b, -32                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 98 uses
  %.val577 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %.val577, i64 273393
  %.0.copyload.i = load i8, ptr %i.e, align 1     ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i) #8, !srcloc !13
  %.not = icmp eq i8 %.0.copyload.i, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.val589 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %.val589, i64 273393
  store i8 1, ptr %i.f, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.val576 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %.val576, i64 282936
  %.0.copyload.i656 = load i8, ptr %i.g, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i656) #8, !srcloc !13
  %.not551 = icmp eq i8 %.0.copyload.i656, 0
  br i1 %.not551, label %bb.d, label %bb.au

bb.d:                                             ; preds = %bb.c
  %i.h = zext i32 %i.c to i64                     ; 6 uses
  %.val639 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %.val639, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  store i32 1, ptr %i.j, align 1
  %i.k = add nuw nsw i64 %i.h, 24                 ; 2 uses
  %.val638 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %.val638, i64 %i.k
  store i32 62243, ptr %i.l, align 1
  %.val653 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %.val653, i64 %i.k
  %.0.copyload.i657 = load i64, ptr %i.m, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i657) #8, !srcloc !33
  %i.n = add nuw nsw i64 %i.h, 8                  ; 2 uses
  %.val650 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %.val650, i64 %i.n
  store i64 %.0.copyload.i657, ptr %i.o, align 1
  %i.p = load i32, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.q = add i32 %i.p, -48                        ; 2 uses
  store i32 %i.q, ptr %i.a, align 8, !tbaa !15
  %.val652 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %.val652, i64 %i.n
  %.0.copyload.i658 = load i64, ptr %i.r, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i658) #8, !srcloc !33
  %i.s = zext i32 %i.q to i64                     ; 14 uses
  %.val649 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %.val649, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %.0.copyload.i658, ptr %i.u, align 1
  %i.v = and i64 %.0.copyload.i658, -4294967296
  %.not552 = icmp eq i64 %i.v, 4294967296
  br i1 %.not552, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.w = and i64 %.0.copyload.i658, 4294967295
  %.val575 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.x = getelementptr inbounds nuw i8, ptr %.val575, i64 %i.w
  %.0.copyload.i659 = load i8, ptr %i.x, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i659) #8, !srcloc !13
  %.not553 = icmp eq i8 %.0.copyload.i659, 45
  br i1 %.not553, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %.val574 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.y = getelementptr inbounds nuw i8, ptr %.val574, i64 273393
  %.0.copyload.i660 = load i8, ptr %i.y, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i660) #8, !srcloc !13
  %.not554 = icmp eq i8 %.0.copyload.i660, 0
  br i1 %.not554, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.val588 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %.val588, i64 273393
  store i8 1, ptr %i.z, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.val637 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aa = getelementptr inbounds nuw i8, ptr %.val637, i64 %i.h
end_hunk_0
