inline.NumInlined: 8639
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 67
loop-unroll.NumUnrolled: 67
begin_hunk_0_@w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3Aoperator0x3C0x3C0x28llvh0x3A0x3Aformat_object_base0x20const0x260x29:bb.a
func_types_eq.exit255:                            ; preds = %bb.r
  %i.co = load i128, ptr %i.bb, align 1
  %i.cp = load i128, ptr %i.cl, align 1
  %i.cq = xor i128 %i.co, %i.cp
  %i.cr = getelementptr i8, ptr %i.bb, i64 16
  %i.cs = getelementptr i8, ptr %i.cl, i64 16
  %i.ct = load i128, ptr %i.cr, align 1
  %i.cu = load i128, ptr %i.cs, align 1
  %i.cv = xor i128 %i.ct, %i.cu
  %i.cw = or i128 %i.cq, %i.cv
  %i.cx = icmp ne i128 %i.cw, 0
  %i.cy = zext i1 %i.cx to i32
  %.not.i254 = icmp eq i32 %i.cy, 0
  br i1 %.not.i254, label %func_types_eq.exit255.thread, label %.critedge223, !prof !32

.critedge223:                                     ; preds = %bb.r, %bb.p, %bb.o, %func_types_eq.exit255
  tail call void @wasm_rt_trap(i32 noundef 6) #9
  unreachable

func_types_eq.exit255.thread:                     ; preds = %bb.q, %func_types_eq.exit255
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !31
  %i.db = tail call i32 %i.ck(ptr noundef %i.da, i32 noundef %2, i32 noundef %.0.copyload.i249, i32 noundef %.1) #8 ; 3 uses
  %i.dc = icmp ule i32 %.1, %i.db
  %i.dd = zext i1 %i.dc to i32
  %i.de = add i32 %i.db, %i.dd
  %i.df = icmp slt i32 %i.db, 0
  %i.dg = select i1 %i.df, i32 %i.by, i32 %i.de   ; 3 uses
  %i.dh = icmp ult i32 %.1, %i.dg
  br i1 %i.dh, label %bb.h, label %bb.s

bb.s:                                             ; preds = %func_types_eq.exit255.thread
  %.val224 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.di = getelementptr inbounds nuw i8, ptr %.val224, i64 %i.bg
  %.0.copyload.i256 = load i32, ptr %i.di, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i256) #8, !srcloc !14
  %i.dj = tail call i32 @w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3Awrite0x28char0x20const0x2A0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.0.copyload.i256, i32 noundef %i.dg) ; 0 uses
  %.val = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.dk = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bg
  %.0.copyload.i257 = load i32, ptr %i.dk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i257) #8, !srcloc !14
  %i.dl = icmp eq i32 %.0.copyload.i257, %i.bf
  br i1 %i.dl, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i257) #8
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.f
  store i32 %i.b, ptr %i.a, align 8, !tbaa !15
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_llvh0x3A0x3Ahash_value0x28llvh0x3A0x3AStringRef0x29(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = zext i32 %1 to i64                       ; 2 uses
  %.val13 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %.val13, i64 %i.b
  %.0.copyload.i = load i32, ptr %i.c, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %.val = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.0.copyload.i14 = load i32, ptr %i.e, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i14) #8, !srcloc !14
  %i.f = add i32 %.0.copyload.i14, %.0.copyload.i
  %i.g = tail call i32 @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Aenable_if0x3Cis_hashable_data0x3Cunsigned0x20int0x20const0x3E0x3A0x3Avalue0x2C0x20llvh0x3A0x3Ahash_code0x3E0x3A0x3Atype0x20llvh0x3A0x3Ahashing0x3A0x3Adetail0x3A0x3Ahash_combine_range_impl0x3Cunsigned0x20int0x20const0x3E0x28unsigned0x20int0x20const0x2A0x2C0x20unsigned0x20int0x20const0x2A0x29(ptr noundef %0, i32 noundef %.0.copyload.i, i32 noundef %i.f) #8
  ret i32 %i.g
}

declare i32 @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Aenable_if0x3Cis_hashable_data0x3Cunsigned0x20int0x20const0x3E0x3A0x3Avalue0x2C0x20llvh0x3A0x3Ahash_code0x3E0x3A0x3Atype0x20llvh0x3A0x3Ahashing0x3A0x3Adetail0x3A0x3Ahash_combine_range_impl0x3Cunsigned0x20int0x20const0x3E0x28unsigned0x20int0x20const0x2A0x2C0x20unsigned0x20int0x20const0x2A0x29(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3AtcNegate0x28unsigned0x20long0x20long0x2A0x2C0x20unsigned0x20int0x29(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ugt i32 %2, 3
  br i1 %i.a, label %bb.c, label %.loopexit210

bb.c:                                             ; preds = %bb.b
  %i.b = and i32 %2, -4                           ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.d = add i32 %1, 8
  %i.e = add i32 %1, 16
  %i.f = add i32 %1, 24
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.g = trunc nuw i64 %indvars.iv to i32
  %i.h = shl i32 %i.g, 3                          ; 4 uses
  %i.i = add i32 %i.h, %1
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  %.val200 = load ptr, ptr %i.c, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %.val200, i64 %i.j
  %.0.copyload.i = load i64, ptr %i.k, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i) #8, !srcloc !33
  %i.l = xor i64 %.0.copyload.i, -1
  %.val192 = load ptr, ptr %i.c, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %.val192, i64 %i.j
  store i64 %i.l, ptr %i.m, align 1
  %i.n = add i32 %i.d, %i.h
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %.val199 = load ptr, ptr %i.c, align 8, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %.val199, i64 %i.o
  %.0.copyload.i201 = load i64, ptr %i.p, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i201) #8, !srcloc !33
  %i.q = xor i64 %.0.copyload.i201, -1
  %.val191 = load ptr, ptr %i.c, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %.val191, i64 %i.o
  store i64 %i.q, ptr %i.r, align 1
  %i.s = add i32 %i.e, %i.h
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %.val198 = load ptr, ptr %i.c, align 8, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %.val198, i64 %i.t
  %.0.copyload.i202 = load i64, ptr %i.u, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i202) #8, !srcloc !33
  %i.v = xor i64 %.0.copyload.i202, -1
  %.val190 = load ptr, ptr %i.c, align 8, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %.val190, i64 %i.t
  store i64 %i.v, ptr %i.w, align 1
  %i.x = add i32 %i.f, %i.h
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %.val197 = load ptr, ptr %i.c, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %.val197, i64 %i.y
  %.0.copyload.i203 = load i64, ptr %i.z, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i203) #8, !srcloc !33
  %i.aa = xor i64 %.0.copyload.i203, -1
  %.val189 = load ptr, ptr %i.c, align 8, !tbaa !7
  %i.ab = getelementptr inbounds nuw i8, ptr %.val189, i64 %i.y
  store i64 %i.aa, ptr %i.ab, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %indvars212 = trunc i64 %indvars.iv.next to i32
  %.not180 = icmp eq i32 %i.b, %indvars212
  br i1 %.not180, label %.loopexit210, label %bb.d

.loopexit210:                                     ; preds = %bb.d, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ %i.b, %bb.d ]
  %i.ac = and i32 %2, 3                           ; 2 uses
  %.not181 = icmp eq i32 %i.ac, 0
  br i1 %.not181, label %.loopexit209, label %.preheader208

.preheader208:                                    ; preds = %.loopexit210
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader208, %bb.e
  %.2 = phi i32 [ %i.ak, %bb.e ], [ %.1, %.preheader208 ] ; 2 uses
  %.0 = phi i32 [ %i.al, %bb.e ], [ 0, %.preheader208 ]
  %i.ae = shl i32 %.2, 3
  %i.af = add i32 %i.ae, %1
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %.val196 = load ptr, ptr %i.ad, align 8, !tbaa !7
  %i.ah = getelementptr inbounds nuw i8, ptr %.val196, i64 %i.ag
  %.0.copyload.i204 = load i64, ptr %i.ah, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i204) #8, !srcloc !33
  %i.ai = xor i64 %.0.copyload.i204, -1
  %.val188 = load ptr, ptr %i.ad, align 8, !tbaa !7
  %i.aj = getelementptr inbounds nuw i8, ptr %.val188, i64 %i.ag
  store i64 %i.ai, ptr %i.aj, align 1
  %i.ak = add nsw i32 %.2, 1
  %i.al = add nuw nsw i32 %.0, 1                  ; 2 uses
  %.not182 = icmp eq i32 %i.al, %i.ac
  br i1 %.not182, label %.loopexit209, label %bb.e

.loopexit209:                                     ; preds = %bb.e, %.loopexit210
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.an = zext i32 %1 to i64                      ; 3 uses
  %.val195 = load ptr, ptr %i.am, align 8, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %.val195, i64 %i.an
  %.0.copyload.i205 = load i64, ptr %i.ao, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i205) #8, !srcloc !33
  %i.ap = add i64 %.0.copyload.i205, 1            ; 2 uses
  %.val187 = load ptr, ptr %i.am, align 8, !tbaa !7
  %i.aq = getelementptr inbounds nuw i8, ptr %.val187, i64 %i.an
  store i64 %i.ap, ptr %i.aq, align 1
  %i.ar = icmp ne i32 %2, 1
  %.not183 = icmp eq i64 %i.ap, 0
  %or.cond = and i1 %i.ar, %.not183
  br i1 %or.cond, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %.loopexit209
  %i.as = add nuw nsw i64 %i.an, 8                ; 2 uses
  %.val194 = load ptr, ptr %i.am, align 8, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %.val194, i64 %i.as
  %.0.copyload.i206 = load i64, ptr %i.at, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i206) #8, !srcloc !33
  %i.au = add i64 %.0.copyload.i206, 1            ; 2 uses
  %.val186 = load ptr, ptr %i.am, align 8, !tbaa !7
  %i.av = getelementptr inbounds nuw i8, ptr %.val186, i64 %i.as
  store i64 %i.au, ptr %i.av, align 1
  %.not184 = icmp eq i64 %i.au, 0
  br i1 %.not184, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.f
  %3 = add i32 %2, -1                             ; 2 uses
  %wide.trip.count = zext i32 %3 to i64
  %exitcond220 = icmp eq i32 %3, 1
  br i1 %exitcond220, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.preheader, %.lr.ph
  %indvars.iv214221 = phi i64 [ %indvars.iv.next215, %.lr.ph ], [ 1, %.preheader.preheader ]
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214221, 1 ; 3 uses
  %indvars = trunc i64 %indvars.iv.next215 to i32
  %i.aw = shl i32 %indvars, 3
  %i.ax = add i32 %i.aw, %1
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %.val193 = load ptr, ptr %i.am, align 8, !tbaa !7
  %i.az = getelementptr inbounds nuw i8, ptr %.val193, i64 %i.ay
  %.0.copyload.i207 = load i64, ptr %i.az, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i207) #8, !srcloc !33
  %i.ba = add i64 %.0.copyload.i207, 1            ; 2 uses
  %.val = load ptr, ptr %i.am, align 8, !tbaa !7
  %i.bb = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ay
  store i64 %i.ba, ptr %i.bb, align 1
  %.not185 = icmp ne i64 %i.ba, 0
  %exitcond = icmp eq i64 %indvars.iv.next215, %wide.trip.count
  %or.cond222 = or i1 %.not185, %exitcond
  br i1 %or.cond222, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %.preheader.preheader, %bb.f, %.loopexit209, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoUInt32_RJS0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = add i32 %i.b, -16                        ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !15
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoNumber_RJS0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef %0, i32 noundef %i.c, i32 noundef %2, i32 noundef %3)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.e = zext i32 %i.c to i64                     ; 2 uses
  %.val = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 %i.e
  %.0.copyload.i = load i32, ptr %i.f, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %.not = icmp eq i32 %.0.copyload.i, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %1 to i64
  %.val67 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %.val67, i64 %i.g
  store i32 0, ptr %i.h, align 1
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %.val68 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %.val68, i64 %i.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.0.copyload.i70 = load double, ptr %i.j, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i70) #8, !srcloc !35
  %i.k = tail call noundef double @llvm.fabs.f64(double %.0.copyload.i70)
  %i.l = fcmp olt double %i.k, f0x41E0000000000000
  br i1 %i.l, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.m = fcmp ule double %.0.copyload.i70, f0xC1E0000000200000
  %i.n = fcmp uge double %.0.copyload.i70, f0x41E0000000000000
  %.not65 = or i1 %i.m, %i.n
  br i1 %.not65, label %bb.e, label %bb.f, !prof !26

bb.e:                                             ; preds = %bb.d
  tail call void @wasm_rt_trap(i32 noundef 2) #9
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.o = fptosi double %.0.copyload.i70 to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f
  %.0 = phi i32 [ %i.o, %bb.f ], [ -2147483648, %bb.c ] ; 2 uses
  %i.p = sitofp i32 %.0 to double
  %i.q = fcmp une double %.0.copyload.i70, %i.p
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = tail call i32 @w2c_hermes_hermes0x3A0x3AtruncateToInt32SlowPath0x28double0x29(ptr noundef nonnull %0, double noundef %.0.copyload.i70) #8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.061 = phi i32 [ %i.r, %bb.h ], [ %.0, %bb.g ]
  %i.s = zext i32 %1 to i64                       ; 2 uses
  %.val66 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %.val66, i64 %i.s
  store i32 1, ptr %i.t, align 1
  %i.u = uitofp i32 %.061 to double
  %.val69 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %.val69, i64 %i.s
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store double %i.u, ptr %i.w, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b
  store i32 %i.b, ptr %i.a, align 8, !tbaa !15
  ret void
}

declare i32 @w2c_hermes_hermes0x3A0x3AtruncateToInt32SlowPath0x28double0x29(ptr noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_llvh0x3A0x3ASmallPtrSetImplBase0x3A0x3Ainsert_imp_big0x28void0x20const0x2A0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 27 uses
  %i.b = zext i32 %2 to i64                       ; 6 uses
  %i.c = add nuw nsw i64 %i.b, 8                  ; 3 uses
  %.val413 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %.val413, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.e = mul i32 %.0.copyload.i, 3
  %i.f = add nuw nsw i64 %i.b, 12                 ; 3 uses
  %.val412 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %.val412, i64 %i.f
  %.0.copyload.i422 = load i32, ptr %i.g, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i422) #8, !srcloc !14
  %i.h = add nuw nsw i64 %i.b, 16                 ; 3 uses
  %.val411 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %.val411, i64 %i.h
  %.0.copyload.i423 = load i32, ptr %i.i, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i423) #8, !srcloc !14
  %i.j = sub i32 %.0.copyload.i422, %.0.copyload.i423
  %i.k = shl i32 %i.j, 2
  %.not = icmp ugt i32 %i.e, %i.k
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = tail call i32 @llvm.umax.i32(i32 %.0.copyload.i, i32 64)
  %i.m = shl i32 %i.l, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = sub i32 %.0.copyload.i, %.0.copyload.i422
  %i.o = lshr i32 %.0.copyload.i, 3
  %.not382 = icmp ult i32 %i.n, %i.o
  br i1 %.not382, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0370 = phi i32 [ %i.m, %bb.b ], [ %.0.copyload.i, %bb.c ] ; 3 uses
  %i.p = add nuw nsw i64 %i.b, 4                  ; 3 uses
  %.val410 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %.val410, i64 %i.p
  %.0.copyload.i424 = load i32, ptr %i.q, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i424) #8, !srcloc !14
  %.val409 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %.val409, i64 %i.b
  %.0.copyload.i425 = load i32, ptr %i.r, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i425) #8, !srcloc !14
  %.not391 = icmp eq i32 %.0.copyload.i424, %.0.copyload.i425 ; 2 uses
  %i.s = select i1 %.not391, i32 12, i32 8
  %i.t = add i32 %i.s, %2
  %i.u = zext i32 %i.t to i64
  %.val408 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %.val408, i64 %i.u
  %.0.copyload.i426 = load i32, ptr %i.v, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i426) #8, !srcloc !14
  %i.w = shl i32 %.0370, 2                        ; 2 uses
  %i.x = tail call i32 @w2c_hermes_dlmalloc(ptr noundef nonnull %0, i32 noundef %i.w) #8 ; 3 uses
  %.not383 = icmp eq i32 %i.x, 0
  br i1 %.not383, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @w2c_hermes_llvh0x3A0x3Areport_bad_alloc_error0x28char0x20const0x2A0x2C0x20bool0x29(ptr noundef nonnull %0, i32 noundef 54812)
  unreachable

bb.f:                                             ; preds = %bb.d
  %.val421 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.y = getelementptr inbounds nuw i8, ptr %.val421, i64 %i.c
  store i32 %.0370, ptr %i.y, align 1
  %.val420 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %.val420, i64 %i.p
  store i32 %i.x, ptr %i.z, align 1
  %i.aa = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.x, i32 noundef 255, i32 noundef %i.w) #8 ; 0 uses
  %.not384 = icmp eq i32 %.0.copyload.i426, 0
  br i1 %.not384, label %.loopexit454, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = shl i32 %.0.copyload.i426, 2
  %i.ac = add i32 %i.ab, %.0.copyload.i424
  %i.ad = add i32 %.0370, -1                      ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.l, %bb.g
  %.1371 = phi i32 [ %.0.copyload.i424, %bb.g ], [ %i.bc, %bb.l ] ; 2 uses
  %i.ae = zext i32 %.1371 to i64
  %.val407 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %.val407, i64 %i.ae
  %.0.copyload.i427 = load i32, ptr %i.af, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i427) #8, !srcloc !14
  %i.ag = icmp ult i32 %.0.copyload.i427, -2
  br i1 %i.ag, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %.val406 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ah = getelementptr inbounds nuw i8, ptr %.val406, i64 %i.p
  %.0.copyload.i428 = load i32, ptr %i.ah, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i428) #8, !srcloc !14
  %i.ai = lshr i32 %.0.copyload.i427, 4
  %i.aj = lshr i32 %.0.copyload.i427, 9
  %i.ak = xor i32 %i.ai, %i.aj
  %i.al = and i32 %i.ak, %i.ad                    ; 2 uses
  %i.am = shl nuw nsw i32 %i.al, 2
  %i.an = add i32 %.0.copyload.i428, %i.am        ; 3 uses
  %i.ao = zext i32 %i.an to i64
  %.val405 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ap = getelementptr inbounds nuw i8, ptr %.val405, i64 %i.ao
  %.0.copyload.i429 = load i32, ptr %i.ap, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i429) #8, !srcloc !14
  %.not385 = icmp eq i32 %.0.copyload.i429, -1
  br i1 %.not385, label %.thread, label %.preheader453

.preheader453:                                    ; preds = %bb.i, %bb.j
  %.0366 = phi i32 [ %i.av, %bb.j ], [ %i.al, %bb.i ]
  %.0363 = phi i32 [ %.fr, %bb.j ], [ 0, %bb.i ]  ; 2 uses
  %.0361 = phi i32 [ %i.ax, %bb.j ], [ %i.an, %bb.i ] ; 2 uses
  %.0360 = phi i32 [ %.0.copyload.i430, %bb.j ], [ %.0.copyload.i429, %bb.i ] ; 2 uses
  %.0359 = phi i32 [ %i.au, %bb.j ], [ 1, %bb.i ] ; 2 uses
end_hunk_0
begin_hunk_1_@w2c_hermes_hermes_g_strtod:bb.a
  %i.bg = add nsw i32 %i.bf, 208
  %i.bh = and i32 %i.bg, 254
  %i.bi = icmp samesign ult i32 %i.bh, 10
  br i1 %i.bi, label %.preheader5080, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bj = sub i32 %i.ba, %.04203                  ; 6 uses
  %.not4466 = icmp ugt i32 %i.ba, %.04203
  br i1 %.not4466, label %.preheader5078, label %.loopexit5079

.preheader5078:                                   ; preds = %bb.k, %bb.l
  %.04278 = phi i32 [ %i.bk, %bb.l ], [ %i.ba, %bb.k ]
  %.04184 = phi i32 [ %i.bn, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.bk = add i32 %.04278, -1                     ; 2 uses
  %i.bl = zext i32 %i.bk to i64
  %.val4607 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bm = getelementptr inbounds nuw i8, ptr %.val4607, i64 %i.bl
  %.0.copyload.i4871 = load i8, ptr %i.bm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4871) #8, !srcloc !13
  %.not4467 = icmp eq i8 %.0.copyload.i4871, 48
  br i1 %.not4467, label %bb.l, label %.loopexit5079

bb.l:                                             ; preds = %.preheader5078
  %i.bn = add i32 %.04184, 1                      ; 2 uses
  %.not4468 = icmp eq i32 %i.bn, %i.bj
  br i1 %.not4468, label %.loopexit5079, label %.preheader5078

.loopexit5079:                                    ; preds = %bb.l, %.preheader5078, %bb.k
  %.14185 = phi i32 [ 0, %bb.k ], [ %i.bj, %bb.l ], [ %.04184, %.preheader5078 ] ; 2 uses
  %i.bo = icmp eq i8 %.0.copyload.i4870, 46
  br i1 %i.bo, label %bb.o, label %.loopexit5076

bb.m:                                             ; preds = %bb.f
  %i.bp = and i32 %.04318, 255
  %.not4463 = icmp eq i32 %i.bp, 46
  br i1 %.not4463, label %bb.n, label %.loopexit5076

bb.n:                                             ; preds = %bb.m
  %i.bq = add i32 %.04203, 1                      ; 2 uses
  %i.br = zext i32 %.04203 to i64
  %.val4606 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bs = getelementptr inbounds nuw i8, ptr %.val4606, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  %.0.copyload.i4872 = load i8, ptr %i.bt, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4872) #8, !srcloc !13
  %.not4464 = icmp eq i8 %.0.copyload.i4872, 48
  br i1 %.not4464, label %.preheader5081, label %.loopexit5082

.preheader5081:                                   ; preds = %bb.n, %.preheader5081
  %.34346 = phi i32 [ %i.by, %.preheader5081 ], [ %i.bq, %bb.n ] ; 2 uses
  %.04191 = phi i32 [ %i.bu, %.preheader5081 ], [ 0, %bb.n ]
  %i.bu = add i32 %.04191, 1                      ; 2 uses
  %i.bv = zext i32 %.34346 to i64
  %.val4605 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bw = getelementptr inbounds nuw i8, ptr %.val4605, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  %.0.copyload.i4873 = load i8, ptr %i.bx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4873) #8, !srcloc !13
  %i.by = add i32 %.34346, 1                      ; 2 uses
  %i.bz = icmp eq i8 %.0.copyload.i4873, 48
  br i1 %i.bz, label %.preheader5081, label %.loopexit5082

.loopexit5082:                                    ; preds = %.preheader5081, %bb.n
  %.34321.in = phi i8 [ %.0.copyload.i4872, %bb.n ], [ %.0.copyload.i4873, %.preheader5081 ]
  %.14266 = phi i32 [ %i.bq, %bb.n ], [ %i.by, %.preheader5081 ] ; 4 uses
  %.14192 = phi i32 [ 0, %bb.n ], [ %i.bu, %.preheader5081 ] ; 3 uses
  %i.ca = sext i8 %.34321.in to i32               ; 3 uses
  %i.cb = add nsw i32 %i.ca, -49
  %i.cc = icmp ult i32 %i.cb, 9
  br i1 %i.cc, label %bb.p, label %.loopexit5076

bb.o:                                             ; preds = %.loopexit5079
  %i.cd = add i32 %.04265, 2                      ; 2 uses
  %i.ce = sub i32 %i.cd, %.04203                  ; 2 uses
  %i.cf = sub i32 %i.ce, %i.bj
  br label %bb.q

bb.p:                                             ; preds = %.loopexit5082
  %i.cg = add i32 %.14192, 1
  %i.ch = add nsw i32 %i.ca, -48
  %i.ci = sub i32 %.04203, %.14266                ; 2 uses
  %i.cj = add i32 %i.ci, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.44322 = phi i32 [ %.24320, %bb.o ], [ 0, %bb.p ]
  %.34268 = phi i32 [ %i.cd, %bb.o ], [ %.14266, %bb.p ]
  %.24250 = phi i32 [ %.14249, %bb.o ], [ 0, %bb.p ]
  %.14244 = phi i32 [ %i.bb, %bb.o ], [ 0, %bb.p ] ; 3 uses
  %.04216 = phi i32 [ %i.bb, %bb.o ], [ 1, %bb.p ]
  %.04206 = phi i32 [ 0, %bb.o ], [ %i.cg, %bb.p ]
  %.14204 = phi i32 [ %.04203, %bb.o ], [ %.14266, %bb.p ] ; 3 uses
  %.04199 = phi i32 [ %i.bj, %bb.o ], [ %i.ci, %bb.p ] ; 3 uses
  %.34194 = phi i32 [ 0, %bb.o ], [ %.14192, %bb.p ]
  %.24186 = phi i32 [ %.14185, %bb.o ], [ 0, %bb.p ]
  %.04177 = phi i32 [ 0, %bb.o ], [ %i.ch, %bb.p ]
  %.14172 = phi i32 [ %i.cf, %bb.o ], [ 1, %bb.p ] ; 3 uses
  %.14168 = phi i32 [ %i.ce, %bb.o ], [ %i.cj, %bb.p ] ; 3 uses
  br label %.outer

.outer:                                           ; preds = %.loopexit5077, %bb.q
  %.44347.ph = phi i1 [ true, %.loopexit5077 ], [ %i.ar, %bb.q ]
  %.54323.ph = phi i32 [ %.114329, %.loopexit5077 ], [ %.44322, %bb.q ] ; 12 uses
  %.44269.ph = phi i32 [ %i.es, %.loopexit5077 ], [ %.34268, %bb.q ] ; 5 uses
  %.34251.ph = phi i32 [ %.94257, %.loopexit5077 ], [ %.24250, %bb.q ] ; 12 uses
  %.14217.ph = phi i32 [ %.34219, %.loopexit5077 ], [ %.04216, %bb.q ] ; 18 uses
  %.14207.ph = phi i32 [ %.34209, %.loopexit5077 ], [ %.04206, %bb.q ] ; 10 uses
  %.44195.ph = phi i32 [ %.64197, %.loopexit5077 ], [ %.34194, %bb.q ] ; 7 uses
  %.34187.ph = phi i32 [ %.44188, %.loopexit5077 ], [ %.24186, %bb.q ] ; 6 uses
  %.14178.ph = phi i32 [ %.34180, %.loopexit5077 ], [ %.04177, %bb.q ]
  br i1 %.44347.ph, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.outer
  %i.ck = zext i32 %.44269.ph to i64              ; 2 uses
  %i.cl = add i32 %.44195.ph, 1                   ; 5 uses
  %i.cm = icmp slt i32 %.44195.ph, 1
  %i.cn = and i32 %.44195.ph, 1
  %i.co = and i32 %.44195.ph, 2147483646          ; 3 uses
  %.not4472 = icmp eq i32 %i.cn, 0
  br i1 %i.cm, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %.val4823.us = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cp = getelementptr inbounds nuw i8, ptr %.val4823.us, i64 %i.ck
  %.0.copyload.i4874.us = load i8, ptr %i.cp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4874.us) #8, !srcloc !34
  %i.cq = sext i8 %.0.copyload.i4874.us to i32    ; 2 uses
  %i.cr = add nsw i32 %i.cq, -48                  ; 4 uses
  %i.cs = icmp ugt i32 %i.cr, 9
  br i1 %i.cs, label %.loopexit5076, label %bb.r

bb.r:                                             ; preds = %.lr.ph.split.us
  %.not4470.us = icmp eq i32 %i.cr, 0
  br i1 %.not4470.us, label %.loopexit5077, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ct = add i32 %i.cl, %.14207.ph               ; 2 uses
  %i.cu = add i32 %.14217.ph, 1                   ; 2 uses
  %i.cv = icmp sgt i32 %.14217.ph, 8
  br i1 %i.cv, label %.split.us, label %._crit_edge

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.cw = icmp eq i32 %.44195.ph, 1
  %.val4823.us5322 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cx = getelementptr inbounds nuw i8, ptr %.val4823.us5322, i64 %i.ck
  %.0.copyload.i4874.us5323 = load i8, ptr %i.cx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4874.us5323) #8
  %i.cy = sext i8 %.0.copyload.i4874.us5323 to i32 ; 3 uses
  %i.cz = add nsw i32 %i.cy, -48                  ; 7 uses
  %i.da = icmp ugt i32 %i.cz, 9                   ; 2 uses
  br i1 %i.cw, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  br i1 %i.da, label %.loopexit5076, label %bb.t

bb.t:                                             ; preds = %.lr.ph.split.split.us
  %.not4470.us5324 = icmp eq i32 %i.cz, 0
  br i1 %.not4470.us5324, label %.loopexit5077, label %.thread.us

.thread.us:                                       ; preds = %bb.t
  %i.db = add i32 %i.cl, %.14207.ph               ; 2 uses
  %i.dc = mul i32 %.34251.ph, 10
  %i.dd = icmp slt i32 %.14217.ph, 9
  %i.de = select i1 %i.dd, i32 %i.dc, i32 %.34251.ph ; 2 uses
  %i.df = mul i32 %.54323.ph, 10
  %i.dg = add i32 %.14217.ph, -17
  %i.dh = icmp ult i32 %i.dg, -8
  %i.di = select i1 %i.dh, i32 %.54323.ph, i32 %i.df ; 2 uses
  %i.dj = add i32 %.14217.ph, 1                   ; 2 uses
  %i.dk = add i32 %.14217.ph, 2                   ; 2 uses
  %i.dl = icmp sgt i32 %i.dj, 8
  br i1 %i.dl, label %.split.us, label %._crit_edge

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  br i1 %i.da, label %.loopexit5076, label %bb.u

bb.u:                                             ; preds = %.lr.ph.split.split
  %.not4470 = icmp eq i32 %i.cz, 0
  br i1 %.not4470, label %.loopexit5077, label %.preheader5739

.preheader5739:                                   ; preds = %bb.u, %.preheader5739
  %.54348 = phi i32 [ %i.ea, %.preheader5739 ], [ %.14217.ph, %bb.u ] ; 5 uses
  %.64324 = phi i32 [ %i.dz, %.preheader5739 ], [ %.54323.ph, %bb.u ] ; 2 uses
  %.24290 = phi i32 [ %i.eb, %.preheader5739 ], [ 0, %bb.u ]
  %.44252 = phi i32 [ %i.dr, %.preheader5739 ], [ %.34251.ph, %bb.u ] ; 2 uses
  %i.dm = mul i32 %.44252, 10
  %i.dn = icmp slt i32 %.54348, 9
  %i.do = select i1 %i.dn, i32 %i.dm, i32 %.44252 ; 2 uses
  %i.dp = mul i32 %i.do, 10
  %i.dq = icmp slt i32 %.54348, 8
  %i.dr = select i1 %i.dq, i32 %i.dp, i32 %i.do   ; 4 uses
  %i.ds = mul i32 %.64324, 10
  %i.dt = add i32 %.54348, -17
  %i.du = icmp ult i32 %i.dt, -8
  %i.dv = select i1 %i.du, i32 %.64324, i32 %i.ds ; 2 uses
  %i.dw = mul i32 %i.dv, 10
  %i.dx = add i32 %.54348, -16
  %i.dy = icmp ult i32 %i.dx, -8
  %i.dz = select i1 %i.dy, i32 %i.dv, i32 %i.dw   ; 4 uses
  %i.ea = add i32 %.54348, 2
  %i.eb = add i32 %.24290, 2                      ; 2 uses
  %.not4471 = icmp eq i32 %i.eb, %i.co
  br i1 %.not4471, label %bb.v, label %.preheader5739

bb.v:                                             ; preds = %.preheader5739
  %i.ec = add i32 %i.cl, %.14207.ph               ; 2 uses
  br i1 %.not4472, label %bb.w, label %.thread

.thread:                                          ; preds = %bb.v
  %i.ed = add i32 %.14217.ph, %i.co
  %i.ee = mul i32 %i.dr, 10
  %i.ef = icmp slt i32 %i.ed, 9
  %i.eg = select i1 %i.ef, i32 %i.ee, i32 %i.dr
  %i.eh = mul i32 %i.dz, 10
  %op.rdx = add nsw i32 %i.co, -17
  %op.rdx5875 = add i32 %op.rdx, %.14217.ph
  %i.ei = icmp ult i32 %op.rdx5875, -8
  %i.ej = select i1 %i.ei, i32 %i.dz, i32 %i.eh
  br label %bb.w

bb.w:                                             ; preds = %.thread, %bb.v
  %.84326 = phi i32 [ %i.ej, %.thread ], [ %i.dz, %bb.v ] ; 2 uses
  %.64254 = phi i32 [ %i.eg, %.thread ], [ %i.dr, %bb.v ] ; 2 uses
  %i.ek = add i32 %.44195.ph, %.14217.ph          ; 3 uses
  %i.el = add i32 %i.ek, 1                        ; 2 uses
  %i.em = icmp sgt i32 %i.ek, 8
  br i1 %i.em, label %.split.us, label %._crit_edge

._crit_edge:                                      ; preds = %bb.s, %bb.w, %.thread.us, %.outer
  %.54323.lcssa = phi i32 [ %.54323.ph, %.outer ], [ %.54323.ph, %bb.s ], [ %i.di, %.thread.us ], [ %.84326, %bb.w ]
  %.34251.lcssa = phi i32 [ %.34251.ph, %.outer ], [ %.34251.ph, %bb.s ], [ %i.de, %.thread.us ], [ %.64254, %bb.w ]
  %.14217.lcssa = phi i32 [ %.14217.ph, %.outer ], [ %i.cu, %bb.s ], [ %i.dk, %.thread.us ], [ %i.el, %bb.w ]
  %.14207.lcssa = phi i32 [ %.14207.ph, %.outer ], [ %i.ct, %bb.s ], [ %i.db, %.thread.us ], [ %i.ec, %bb.w ]
  %.14178.lcssa = phi i32 [ %.14178.ph, %.outer ], [ %i.cr, %bb.s ], [ %i.cz, %.thread.us ], [ %i.cz, %bb.w ] ; 2 uses
  %i.en = mul i32 %.34251.lcssa, 10
  %i.eo = add i32 %.14178.lcssa, %i.en
  br label %.loopexit5077

.split.us:                                        ; preds = %.thread.us, %bb.w, %bb.s
  %.us-phi5312 = phi i32 [ %.54323.ph, %bb.s ], [ %i.di, %.thread.us ], [ %.84326, %bb.w ] ; 2 uses
  %.us-phi5313 = phi i32 [ %.34251.ph, %bb.s ], [ %i.de, %.thread.us ], [ %.64254, %bb.w ] ; 2 uses
  %.us-phi5314 = phi i32 [ %.14217.ph, %bb.s ], [ %i.dj, %.thread.us ], [ %i.ek, %bb.w ]
  %.us-phi5315 = phi i32 [ %i.cu, %bb.s ], [ %i.dk, %.thread.us ], [ %i.el, %bb.w ] ; 2 uses
  %.us-phi5316 = phi i32 [ %i.ct, %bb.s ], [ %i.db, %.thread.us ], [ %i.ec, %bb.w ] ; 2 uses
  %.us-phi5317 = phi i32 [ %i.cr, %bb.s ], [ %i.cz, %.thread.us ], [ %i.cz, %bb.w ] ; 3 uses
  %i.ep = icmp samesign ugt i32 %.us-phi5314, 16
  br i1 %i.ep, label %.loopexit5077, label %bb.x

bb.x:                                             ; preds = %.split.us
  %i.eq = mul i32 %.us-phi5312, 10
  %i.er = add i32 %i.eq, %.us-phi5317
  br label %.loopexit5077

.loopexit5077:                                    ; preds = %bb.r, %bb.u, %bb.t, %._crit_edge, %bb.x, %.split.us
  %.114329 = phi i32 [ %.54323.lcssa, %._crit_edge ], [ %.us-phi5312, %.split.us ], [ %i.er, %bb.x ], [ %.54323.ph, %bb.r ], [ %.54323.ph, %bb.t ], [ %.54323.ph, %bb.u ]
  %.94257 = phi i32 [ %i.eo, %._crit_edge ], [ %.us-phi5313, %.split.us ], [ %.us-phi5313, %bb.x ], [ %.34251.ph, %bb.r ], [ %.34251.ph, %bb.t ], [ %.34251.ph, %bb.u ]
  %.34219 = phi i32 [ %.14217.lcssa, %._crit_edge ], [ %.us-phi5315, %.split.us ], [ %.us-phi5315, %bb.x ], [ %.14217.ph, %bb.r ], [ %.14217.ph, %bb.t ], [ %.14217.ph, %bb.u ]
  %.34209 = phi i32 [ %.14207.lcssa, %._crit_edge ], [ %.us-phi5316, %.split.us ], [ %.us-phi5316, %bb.x ], [ %.14207.ph, %bb.r ], [ %.14207.ph, %bb.t ], [ %.14207.ph, %bb.u ]
  %.64197 = phi i32 [ 0, %._crit_edge ], [ 0, %.split.us ], [ 0, %bb.x ], [ %i.cl, %bb.r ], [ 2, %bb.t ], [ %i.cl, %bb.u ]
  %.44188 = phi i32 [ 0, %._crit_edge ], [ 0, %.split.us ], [ 0, %bb.x ], [ %.34187.ph, %bb.r ], [ %.34187.ph, %bb.t ], [ %.34187.ph, %bb.u ]
  %.34180 = phi i32 [ %.14178.lcssa, %._crit_edge ], [ %.us-phi5317, %.split.us ], [ %.us-phi5317, %bb.x ], [ 0, %bb.r ], [ 0, %bb.t ], [ 0, %bb.u ]
  %i.es = add i32 %.44269.ph, 1
  br label %.outer

.loopexit5076:                                    ; preds = %.lr.ph.split.us, %.lr.ph.split.split, %.lr.ph.split.split.us, %bb.m, %.loopexit5082, %.loopexit5079
  %.124330 = phi i32 [ 0, %bb.m ], [ %.24320, %.loopexit5079 ], [ 0, %.loopexit5082 ], [ %.54323.ph, %.lr.ph.split.split.us ], [ %.54323.ph, %.lr.ph.split.split ], [ %.54323.ph, %.lr.ph.split.us ]
  %.34291 = phi i32 [ %i.ao, %bb.m ], [ %i.bf, %.loopexit5079 ], [ %i.ca, %.loopexit5082 ], [ %i.cq, %.lr.ph.split.us ], [ %i.cy, %.lr.ph.split.split ], [ %i.cy, %.lr.ph.split.split.us ] ; 2 uses
  %.54270 = phi i32 [ %.04203, %bb.m ], [ %i.ba, %.loopexit5079 ], [ %.14266, %.loopexit5082 ], [ %.44269.ph, %.lr.ph.split.split.us ], [ %.44269.ph, %.lr.ph.split.split ], [ %.44269.ph, %.lr.ph.split.us ] ; 8 uses
  %.104258 = phi i32 [ 0, %bb.m ], [ %.14249, %.loopexit5079 ], [ 0, %.loopexit5082 ], [ %.34251.ph, %.lr.ph.split.split.us ], [ %.34251.ph, %.lr.ph.split.split ], [ %.34251.ph, %.lr.ph.split.us ] ; 4 uses
  %.24245 = phi i32 [ 0, %bb.m ], [ %i.bb, %.loopexit5079 ], [ 0, %.loopexit5082 ], [ %.14244, %.lr.ph.split.split.us ], [ %.14244, %.lr.ph.split.split ], [ %.14244, %.lr.ph.split.us ] ; 2 uses
  %.44220 = phi i32 [ 0, %bb.m ], [ %i.bb, %.loopexit5079 ], [ 0, %.loopexit5082 ], [ %.14217.ph, %.lr.ph.split.split.us ], [ %.14217.ph, %.lr.ph.split.split ], [ %.14217.ph, %.lr.ph.split.us ] ; 14 uses
  %.44210 = phi i32 [ 0, %bb.m ], [ 0, %.loopexit5079 ], [ 0, %.loopexit5082 ], [ %.14207.ph, %.lr.ph.split.split.us ], [ %.14207.ph, %.lr.ph.split.split ], [ %.14207.ph, %.lr.ph.split.us ] ; 2 uses
  %.24205 = phi i32 [ %.04203, %bb.m ], [ %.04203, %.loopexit5079 ], [ %.04203, %.loopexit5082 ], [ %.14204, %.lr.ph.split.split.us ], [ %.14204, %.lr.ph.split.split ], [ %.14204, %.lr.ph.split.us ] ; 11 uses
  %.14200 = phi i32 [ 0, %bb.m ], [ %i.bj, %.loopexit5079 ], [ 0, %.loopexit5082 ], [ %.04199, %.lr.ph.split.split.us ], [ %.04199, %.lr.ph.split.split ], [ %.04199, %.lr.ph.split.us ]
  %.74198 = phi i32 [ 0, %bb.m ], [ 0, %.loopexit5079 ], [ %.14192, %.loopexit5082 ], [ %.44195.ph, %.lr.ph.split.us ], [ 1, %.lr.ph.split.split ], [ 1, %.lr.ph.split.split.us ] ; 2 uses
  %.54189 = phi i32 [ 0, %bb.m ], [ %.14185, %.loopexit5079 ], [ 0, %.loopexit5082 ], [ %.34187.ph, %.lr.ph.split.split.us ], [ %.34187.ph, %.lr.ph.split.split ], [ %.34187.ph, %.lr.ph.split.us ]
  %.24173 = phi i32 [ 0, %bb.m ], [ 0, %.loopexit5079 ], [ 1, %.loopexit5082 ], [ %.14172, %.lr.ph.split.split.us ], [ %.14172, %.lr.ph.split.split ], [ %.14172, %.lr.ph.split.us ] ; 2 uses
  %.24169 = phi i32 [ 0, %bb.m ], [ %i.bj, %.loopexit5079 ], [ 1, %.loopexit5082 ], [ %.14168, %.lr.ph.split.split.us ], [ %.14168, %.lr.ph.split.split ], [ %.14168, %.lr.ph.split.us ] ; 4 uses
  %i.et = and i32 %.34291, -33
  %.not4473 = icmp eq i32 %i.et, 69
  br i1 %.not4473, label %bb.y, label %bb.ag

bb.y:                                             ; preds = %.loopexit5076
  %i.eu = icmp ne i32 %i.ah, 48
  %.not4474 = icmp eq i32 %.44220, 0
  %or.cond = select i1 %i.eu, i1 %.not4474, i1 false
  %.not4475 = icmp eq i32 %.74198, 0
  %or.cond4589 = select i1 %or.cond, i1 %.not4475, i1 false
  br i1 %or.cond4589, label %.loopexit5085, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ev = add i32 %.54270, 1
  %i.ew = zext i32 %.54270 to i64                 ; 2 uses
  %.val4822 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ex = getelementptr inbounds nuw i8, ptr %.val4822, i64 %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 1
  %.0.copyload.i4875 = load i8, ptr %i.ey, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4875) #8, !srcloc !34
  switch i8 %.0.copyload.i4875, label %bb.ac [
    i8 43, label %bb.ab
    i8 45, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.ez = phi i1 [ true, %bb.z ], [ false, %bb.aa ]
  %i.fa = add i32 %.54270, 2
  %.val4821 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.fb = getelementptr inbounds nuw i8, ptr %.val4821, i64 %i.ew
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 2
  %.0.copyload.i4876 = load i8, ptr %i.fc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4876) #8, !srcloc !34
  br label %bb.ac

bb.ac:                                            ; preds = %bb.z, %bb.ab
  %.74350 = phi i32 [ %i.ev, %bb.z ], [ %i.fa, %bb.ab ] ; 2 uses
  %.44292.in = phi i8 [ %.0.copyload.i4875, %bb.z ], [ %.0.copyload.i4876, %bb.ab ] ; 2 uses
  %.04211 = phi i1 [ true, %bb.z ], [ %i.ez, %bb.ab ]
  %.44292 = sext i8 %.44292.in to i32             ; 3 uses
  %i.fd = add nsw i32 %.44292, -58                ; 2 uses
  %i.fe = icmp ult i32 %i.fd, -10
  br i1 %i.fe, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not4476 = icmp eq i8 %.44292.in, 48
  br i1 %.not4476, label %.preheader5074, label %bb.ae

.preheader5074:                                   ; preds = %bb.ad, %.preheader5074
  %.84351 = phi i32 [ %i.fi, %.preheader5074 ], [ %.74350, %bb.ad ] ; 2 uses
  %i.ff = zext i32 %.84351 to i64
  %.val4820 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.fg = getelementptr inbounds nuw i8, ptr %.val4820, i64 %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 1
  %.0.copyload.i4877 = load i8, ptr %i.fh, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4877) #8, !srcloc !34
  %i.fi = add i32 %.84351, 1                      ; 2 uses
  %i.fj = icmp eq i8 %.0.copyload.i4877, 48
  br i1 %i.fj, label %.preheader5074, label %.loopexit5075

.loopexit5075:                                    ; preds = %.preheader5074
  %i.fk = sext i8 %.0.copyload.i4877 to i32       ; 2 uses
  %.pre5537 = add nsw i32 %i.fk, -58
  br label %bb.ae

bb.ae:                                            ; preds = %.loopexit5075, %bb.ad
  %.pre-phi5538 = phi i32 [ %.pre5537, %.loopexit5075 ], [ %i.fd, %bb.ad ]
  %.54293 = phi i32 [ %i.fk, %.loopexit5075 ], [ %.44292, %bb.ad ] ; 2 uses
  %.24280 = phi i32 [ %i.fi, %.loopexit5075 ], [ %.74350, %bb.ad ] ; 4 uses
  %i.fl = icmp ult i32 %.pre-phi5538, -9
  br i1 %i.fl, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fm = add i32 %.24280, 1                      ; 2 uses
  %i.fn = add nsw i32 %.54293, -48                ; 2 uses
  %i.fo = zext i32 %.24280 to i64
  %.val4604 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.fp = getelementptr inbounds nuw i8, ptr %.val4604, i64 %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 1
  %.0.copyload.i4878 = load i8, ptr %i.fq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4878) #8, !srcloc !13
  %i.fr = zext i8 %.0.copyload.i4878 to i32       ; 3 uses
  %i.fs = add nuw nsw i32 %i.fr, 208
  %i.ft = and i32 %i.fs, 254
  %i.fu = icmp samesign ugt i32 %i.ft, 9
  br i1 %i.fu, label %.loopexit5073, label %.preheader5072

.preheader5072:                                   ; preds = %bb.af, %.preheader5072
  %.94352 = phi i32 [ %i.gc, %.preheader5072 ], [ %i.fm, %bb.af ] ; 2 uses
  %.64294 = phi i32 [ %i.gb, %.preheader5072 ], [ %i.fr, %bb.af ]
  %.04232 = phi i32 [ %i.fx, %.preheader5072 ], [ %i.fn, %bb.af ]
  %i.fv = mul i32 %.04232, 10
  %i.fw = add nsw i32 %.64294, -48
  %i.fx = add i32 %i.fw, %i.fv                    ; 2 uses
  %i.fy = zext i32 %.94352 to i64
  %.val4603 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.fz = getelementptr inbounds nuw i8, ptr %.val4603, i64 %i.fy
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 1
  %.0.copyload.i4879 = load i8, ptr %i.ga, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4879) #8, !srcloc !13
  %i.gb = zext i8 %.0.copyload.i4879 to i32       ; 3 uses
  %i.gc = add i32 %.94352, 1                      ; 2 uses
  %i.gd = add nuw nsw i32 %i.gb, 208
  %i.ge = and i32 %i.gd, 254
  %i.gf = icmp samesign ult i32 %i.ge, 10
  br i1 %i.gf, label %.preheader5072, label %.loopexit5073

.loopexit5073:                                    ; preds = %.preheader5072, %bb.af
  %.74295 = phi i32 [ %i.fr, %bb.af ], [ %i.gb, %.preheader5072 ]
  %.14233 = phi i32 [ %i.fn, %bb.af ], [ %i.fx, %.preheader5072 ]
  %.44181 = phi i32 [ %i.fm, %bb.af ], [ %i.gc, %.preheader5072 ] ; 2 uses
  %i.gg = tail call i32 @llvm.umin.i32(i32 %.14233, i32 19999)
  %i.gh = sub i32 %.44181, %.24280
  %i.gi = icmp sgt i32 %i.gh, 8
  %i.gj = select i1 %i.gi, i32 19999, i32 %i.gg   ; 2 uses
  %i.gk = sub nsw i32 0, %i.gj
  %i.gl = select i1 %.04211, i32 %i.gj, i32 %i.gk
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.ac, %.loopexit5076, %.loopexit5073
end_hunk_1
begin_hunk_2_@w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3AshlSlowCase0x28unsigned0x20int0x29:bb.a
  %i.ab = add nsw i32 %i.j, -2                    ; 4 uses
  %i.ac = and i32 %i.p, 1
  %.not328 = icmp eq i32 %i.ac, 0
  br i1 %.not328, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = add nsw i32 %i.m, %i.y
  %i.ae = shl nsw i32 %i.ad, 3
  %i.af = add i32 %.0.copyload.i348, %i.ae
  %i.ag = zext i32 %i.af to i64
  %.val346 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ah = getelementptr inbounds nuw i8, ptr %.val346, i64 %i.ag
  %.0.copyload.i350 = load i64, ptr %i.ah, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i350) #8, !srcloc !33
  %i.ai = lshr i64 %.0.copyload.i350, %i.aa
  %i.aj = or i64 %i.ai, %i.v
  %.val338 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ak = getelementptr inbounds nuw i8, ptr %.val338, i64 %i.w
  store i64 %i.aj, ptr %i.ak, align 1
  %i.al = shl nuw nsw i32 %i.ab, 3
  %i.am = add i32 %.0.copyload.i348, %i.al        ; 2 uses
  %i.an = sub nsw i32 %i.ab, %i.k
  %i.ao = shl nsw i32 %i.an, 3
  %i.ap = add i32 %.0.copyload.i348, %i.ao
  %i.aq = zext i32 %i.ap to i64
  %.val345 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ar = getelementptr inbounds nuw i8, ptr %.val345, i64 %i.aq
  %.0.copyload.i351 = load i64, ptr %i.ar, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i351) #8, !srcloc !33
  %i.as = shl i64 %.0.copyload.i351, %i.u         ; 2 uses
  %i.at = zext i32 %i.am to i64
  %.val337 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.au = getelementptr inbounds nuw i8, ptr %.val337, i64 %i.at
  store i64 %i.as, ptr %i.au, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0317 = phi i32 [ %i.am, %bb.f ], [ %i.o, %bb.e ]
  %.0315 = phi i32 [ %i.ab, %bb.f ], [ %i.m, %bb.e ]
  %.0 = phi i64 [ %i.as, %bb.f ], [ %i.v, %bb.e ]
  %i.av = icmp eq i32 %i.k, %i.ab
  br i1 %i.av, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.g, %.preheader
  %.1318 = phi i32 [ %i.ca, %.preheader ], [ %.0317, %bb.g ]
  %.1316 = phi i32 [ %i.by, %.preheader ], [ %.0315, %bb.g ] ; 3 uses
  %.1 = phi i64 [ %i.cg, %.preheader ], [ %.0, %bb.g ]
  %i.aw = add i32 %.1316, %i.y
  %i.ax = shl i32 %i.aw, 3
  %i.ay = add i32 %i.ax, %.0.copyload.i348
  %i.az = zext i32 %i.ay to i64
  %.val344 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ba = getelementptr inbounds nuw i8, ptr %.val344, i64 %i.az
  %.0.copyload.i352 = load i64, ptr %i.ba, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i352) #8, !srcloc !33
  %i.bb = lshr i64 %.0.copyload.i352, %i.aa
  %i.bc = or i64 %i.bb, %.1
  %i.bd = zext i32 %.1318 to i64
  %.val336 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.be = getelementptr inbounds nuw i8, ptr %.val336, i64 %i.bd
  store i64 %i.bc, ptr %i.be, align 1
  %i.bf = add i32 %.1316, -1                      ; 3 uses
  %i.bg = shl i32 %i.bf, 3
  %i.bh = add i32 %i.bg, %.0.copyload.i348
  %i.bi = sub i32 %i.bf, %i.k
  %i.bj = shl i32 %i.bi, 3
  %i.bk = add i32 %i.bj, %.0.copyload.i348
  %i.bl = zext i32 %i.bk to i64
  %.val343 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bm = getelementptr inbounds nuw i8, ptr %.val343, i64 %i.bl
  %.0.copyload.i353 = load i64, ptr %i.bm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i353) #8, !srcloc !33
  %i.bn = shl i64 %.0.copyload.i353, %i.u         ; 2 uses
  %i.bo = zext i32 %i.bh to i64                   ; 2 uses
  %.val335 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bp = getelementptr inbounds nuw i8, ptr %.val335, i64 %i.bo
  store i64 %i.bn, ptr %i.bp, align 1
  %i.bq = add i32 %i.bf, %i.y
  %i.br = shl i32 %i.bq, 3
  %i.bs = add i32 %i.br, %.0.copyload.i348
  %i.bt = zext i32 %i.bs to i64
  %.val342 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bu = getelementptr inbounds nuw i8, ptr %.val342, i64 %i.bt
  %.0.copyload.i354 = load i64, ptr %i.bu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i354) #8, !srcloc !33
  %i.bv = lshr i64 %.0.copyload.i354, %i.aa
  %i.bw = or i64 %i.bv, %i.bn
  %.val334 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bx = getelementptr inbounds nuw i8, ptr %.val334, i64 %i.bo
  store i64 %i.bw, ptr %i.bx, align 1
  %i.by = add i32 %.1316, -2                      ; 4 uses
  %i.bz = shl i32 %i.by, 3
  %i.ca = add i32 %i.bz, %.0.copyload.i348        ; 2 uses
  %i.cb = sub i32 %i.by, %i.k
  %i.cc = shl i32 %i.cb, 3
  %i.cd = add i32 %i.cc, %.0.copyload.i348
  %i.ce = zext i32 %i.cd to i64
  %.val341 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cf = getelementptr inbounds nuw i8, ptr %.val341, i64 %i.ce
  %.0.copyload.i355 = load i64, ptr %i.cf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i355) #8, !srcloc !33
  %i.cg = shl i64 %.0.copyload.i355, %i.u         ; 2 uses
  %i.ch = zext i32 %i.ca to i64
  %.val333 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ci = getelementptr inbounds nuw i8, ptr %.val333, i64 %i.ch
  store i64 %i.cg, ptr %i.ci, align 1
  %i.cj = icmp ugt i32 %i.by, %i.k
  br i1 %i.cj, label %.preheader, label %.loopexit

bb.h:                                             ; preds = %bb.b
  %i.ck = shl nuw nsw i32 %i.k, 3
  %i.cl = add i32 %.0.copyload.i348, %i.ck
  %i.cm = sub nsw i32 %i.j, %i.k
  %i.cn = shl nsw i32 %i.cm, 3
  %i.co = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %i.cl, i32 noundef %.0.copyload.i348, i32 noundef %i.cn) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.g, %bb.d, %bb.c, %bb.h
  %i.cp = shl nuw nsw i32 %i.k, 3
  %i.cq = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %.0.copyload.i348, i32 noundef 0, i32 noundef %i.cp) #8 ; 0 uses
  %.val329 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cr = getelementptr inbounds nuw i8, ptr %.val329, i64 %i.c
  %.0.copyload.i356 = load i32, ptr %i.cr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i356) #8, !srcloc !14
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %bb.a
  %.2 = phi i32 [ %.0.copyload.i356, %.loopexit ], [ %.0.copyload.i, %bb.a ] ; 3 uses
  %i.cs = icmp ugt i32 %.2, 64
  br i1 %i.cs, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.val = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ct = getelementptr inbounds nuw i8, ptr %.val, i64 %i.b
  %.0.copyload.i357 = load i32, ptr %i.ct, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i357) #8, !srcloc !14
  %i.cu = zext i32 %.2 to i64
  %i.cv = add nuw nsw i64 %i.cu, 63
  %sh.diff = lshr i64 %i.cv, 3
  %tr.sh.diff = trunc nuw nsw i64 %sh.diff to i32
  %i.cw = and i32 %tr.sh.diff, 1073741816
  %i.cx = add nsw i32 %i.cw, -8
  %i.cy = add i32 %i.cx, %.0.copyload.i357
  %.pre = zext i32 %i.cy to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre-phi = phi i64 [ %.pre, %bb.j ], [ %i.b, %bb.i ] ; 2 uses
  %.val340 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cz = getelementptr inbounds nuw i8, ptr %.val340, i64 %.pre-phi
  %.0.copyload.i358 = load i64, ptr %i.cz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i358) #8, !srcloc !33
  %i.da = sub i32 0, %.2
  %i.db = and i32 %i.da, 63
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = lshr i64 -1, %i.dc
  %i.de = and i64 %.0.copyload.i358, %i.dd
  %.val332 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.df = getelementptr inbounds nuw i8, ptr %.val332, i64 %.pre-phi
  store i64 %i.de, ptr %i.df, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3AtcMultiplyPart0x28unsigned0x20long0x20long0x2A0x2C0x20unsigned0x20long0x20long0x20const0x2A0x2C0x20unsigned0x20long0x20long0x2C0x20unsigned0x20long0x20long0x2C0x20unsigned0x20int0x2C0x20unsigned0x20int0x2C0x20bool0x29(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %4, %5
  %i.b = tail call i32 @llvm.umin.i32(i32 %4, i32 %5) ; 8 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.loopexit566, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not511 = icmp eq i64 %3, 0
  br i1 %.not511, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %.not517 = icmp eq i32 %6, 0
  br i1 %.not517, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = and i32 %i.b, 1
  %.not521 = icmp eq i32 %i.b, 1
  br i1 %.not521, label %.thread, label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 16 uses
  %i.e = zext i32 %1 to i64
  %.val545 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %.val545, i64 %i.e
  store i64 0, ptr %i.f, align 1
  %i.g = icmp eq i32 %i.b, 1
  br i1 %i.g, label %.loopexit566, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = add i32 %i.b, -1                         ; 2 uses
  %i.i = and i32 %i.h, 7                          ; 7 uses
  %i.j = icmp ugt i32 %i.b, 8
  br i1 %i.j, label %bb.g, label %.loopexit567

bb.g:                                             ; preds = %bb.f
  %i.k = and i32 %i.h, -8                         ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %indvars.iv589 = phi i64 [ %indvars.iv.next590, %bb.h ], [ 1, %bb.g ] ; 2 uses
  %.0497 = phi i32 [ %i.ae, %bb.h ], [ 0, %bb.g ]
  %i.l = trunc nuw i64 %indvars.iv589 to i32
  %i.m = shl i32 %i.l, 3
  %i.n = add i32 %i.m, %1
  %i.o = zext i32 %i.n to i64                     ; 8 uses
  %.val544 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %.val544, i64 %i.o
  store i64 0, ptr %i.p, align 1
  %.val543 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %.val543, i64 %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  store i64 0, ptr %i.r, align 1
  %.val542 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %.val542, i64 %i.o
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  store i64 0, ptr %i.t, align 1
  %.val541 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %.val541, i64 %i.o
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  store i64 0, ptr %i.v, align 1
  %.val540 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %.val540, i64 %i.o
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store i64 0, ptr %i.x, align 1
  %.val539 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.y = getelementptr inbounds nuw i8, ptr %.val539, i64 %i.o
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i64 0, ptr %i.z, align 1
  %.val538 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aa = getelementptr inbounds nuw i8, ptr %.val538, i64 %i.o
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 0, ptr %i.ab, align 1
  %.val537 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %.val537, i64 %i.o
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 0, ptr %i.ad, align 1
  %indvars.iv.next590 = add nuw nsw i64 %indvars.iv589, 8
  %i.ae = add i32 %.0497, 8                       ; 2 uses
  %.not518 = icmp eq i32 %i.ae, %i.k
  br i1 %.not518, label %.loopexit567.loopexit, label %bb.h

.loopexit567.loopexit:                            ; preds = %bb.h
  %7 = shl i32 %i.k, 3
  %8 = or disjoint i32 %7, 8
  br label %.loopexit567

.loopexit567:                                     ; preds = %.loopexit567.loopexit, %bb.f
  %.1500 = phi i32 [ 8, %bb.f ], [ %8, %.loopexit567.loopexit ] ; 7 uses
  %.not519 = icmp eq i32 %i.i, 0
  br i1 %.not519, label %.loopexit566, label %.preheader565

.preheader565:                                    ; preds = %.loopexit567
  %i.af = add i32 %.1500, %1
  %i.ag = zext i32 %i.af to i64
  %.val536 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ah = getelementptr inbounds nuw i8, ptr %.val536, i64 %i.ag
  store i64 0, ptr %i.ah, align 1
  %.not520 = icmp eq i32 %i.i, 1
  br i1 %.not520, label %.loopexit566, label %.preheader565.1

.preheader565.1:                                  ; preds = %.preheader565
  %i.ai = add i32 %.1500, 8
  %i.aj = add i32 %i.ai, %1
  %i.ak = zext i32 %i.aj to i64
  %.val536.1 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %.val536.1, i64 %i.ak
  store i64 0, ptr %i.al, align 1
  %.not520.1 = icmp eq i32 %i.i, 2
  br i1 %.not520.1, label %.loopexit566, label %.preheader565.2

.preheader565.2:                                  ; preds = %.preheader565.1
  %i.am = add i32 %.1500, 16
  %i.an = add i32 %i.am, %1
  %i.ao = zext i32 %i.an to i64
  %.val536.2 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ap = getelementptr inbounds nuw i8, ptr %.val536.2, i64 %i.ao
  store i64 0, ptr %i.ap, align 1
  %.not520.2 = icmp eq i32 %i.i, 3
  br i1 %.not520.2, label %.loopexit566, label %.preheader565.3

.preheader565.3:                                  ; preds = %.preheader565.2
  %i.aq = add i32 %.1500, 24
  %i.ar = add i32 %i.aq, %1
  %i.as = zext i32 %i.ar to i64
  %.val536.3 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %.val536.3, i64 %i.as
  store i64 0, ptr %i.at, align 1
  %.not520.3 = icmp eq i32 %i.i, 4
  br i1 %.not520.3, label %.loopexit566, label %.preheader565.4

.preheader565.4:                                  ; preds = %.preheader565.3
  %i.au = add i32 %.1500, 32
  %i.av = add i32 %i.au, %1
  %i.aw = zext i32 %i.av to i64
  %.val536.4 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ax = getelementptr inbounds nuw i8, ptr %.val536.4, i64 %i.aw
  store i64 0, ptr %i.ax, align 1
  %.not520.4 = icmp eq i32 %i.i, 5
  br i1 %.not520.4, label %.loopexit566, label %.preheader565.5

.preheader565.5:                                  ; preds = %.preheader565.4
  %i.ay = add i32 %.1500, 40
  %i.az = add i32 %i.ay, %1
  %i.ba = zext i32 %i.az to i64
  %.val536.5 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bb = getelementptr inbounds nuw i8, ptr %.val536.5, i64 %i.ba
  store i64 0, ptr %i.bb, align 1
  %.not520.5 = icmp eq i32 %i.i, 6
  br i1 %.not520.5, label %.loopexit566, label %.preheader565.6

.preheader565.6:                                  ; preds = %.preheader565.5
  %i.bc = add i32 %.1500, 48
  %i.bd = add i32 %i.bc, %1
  %i.be = zext i32 %i.bd to i64
  %.val536.6 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bf = getelementptr inbounds nuw i8, ptr %.val536.6, i64 %i.be
  store i64 0, ptr %i.bf, align 1
  br label %.loopexit566

bb.i:                                             ; preds = %bb.d
  %i.bg = and i32 %i.b, -2                        ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.bi = add i32 %1, 8
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %indvars.iv584 = phi i64 [ %indvars.iv.next585, %bb.j ], [ 0, %bb.i ] ; 2 uses
  %.0489 = phi i64 [ %i.ca, %bb.j ], [ 0, %bb.i ] ; 2 uses
  %i.bj = trunc nuw i64 %indvars.iv584 to i32
  %i.bk = shl i32 %i.bj, 3                        ; 2 uses
  %i.bl = add i32 %i.bk, %1
  %i.bm = zext i32 %i.bl to i64                   ; 2 uses
  %.val552 = load ptr, ptr %i.bh, align 8, !tbaa !7
  %i.bn = getelementptr inbounds nuw i8, ptr %.val552, i64 %i.bm
  %.0.copyload.i = load i64, ptr %i.bn, align 1   ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i) #8, !srcloc !33
  %i.bo = add i64 %.0.copyload.i, %.0489
  %.val535 = load ptr, ptr %i.bh, align 8, !tbaa !7
  %i.bp = getelementptr inbounds nuw i8, ptr %.val535, i64 %i.bm
  store i64 %i.bo, ptr %i.bp, align 1
  %i.bq = add i32 %i.bi, %i.bk
  %i.br = zext i32 %i.bq to i64                   ; 2 uses
  %.val551 = load ptr, ptr %i.bh, align 8, !tbaa !7
  %i.bs = getelementptr inbounds nuw i8, ptr %.val551, i64 %i.br
  %.0.copyload.i553 = load i64, ptr %i.bs, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i553) #8, !srcloc !33
  %i.bt = xor i64 %.0489, -1
  %i.bu = icmp ugt i64 %.0.copyload.i, %i.bt
  %i.bv = zext i1 %i.bu to i64                    ; 2 uses
  %i.bw = add i64 %.0.copyload.i553, %i.bv
  %.val534 = load ptr, ptr %i.bh, align 8, !tbaa !7
  %i.bx = getelementptr inbounds nuw i8, ptr %.val534, i64 %i.br
  store i64 %i.bw, ptr %i.bx, align 1
  %i.by = xor i64 %i.bv, -1
  %i.bz = icmp ugt i64 %.0.copyload.i553, %i.by
  %i.ca = zext i1 %i.bz to i64                    ; 3 uses
  %indvars.iv.next585 = add nuw nsw i64 %indvars.iv584, 2 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next585 to i32
  %.not522 = icmp eq i32 %i.bg, %indvars
  br i1 %.not522, label %bb.k, label %bb.j

bb.k:                                             ; preds = %bb.j
  %.not523 = icmp eq i32 %i.c, 0
  br i1 %.not523, label %.loopexit566, label %.thread

.thread:                                          ; preds = %bb.d, %bb.k
  %.1490563 = phi i64 [ %i.ca, %bb.k ], [ 0, %bb.d ] ; 2 uses
  %.2494562 = phi i32 [ %i.bg, %bb.k ], [ 0, %bb.d ]
  %i.cb = shl i32 %.2494562, 3
  %i.cc = add i32 %i.cb, %1
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ce = zext i32 %i.cc to i64                   ; 2 uses
  %.val550 = load ptr, ptr %i.cd, align 8, !tbaa !7
  %i.cf = getelementptr inbounds nuw i8, ptr %.val550, i64 %i.ce
  %.0.copyload.i554 = load i64, ptr %i.cf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i554) #8, !srcloc !33
  %i.cg = add i64 %.0.copyload.i554, %.1490563
  %.val533 = load ptr, ptr %i.cd, align 8, !tbaa !7
  %i.ch = getelementptr inbounds nuw i8, ptr %.val533, i64 %i.ce
  store i64 %i.cg, ptr %i.ch, align 1
  %i.ci = xor i64 %.1490563, -1
  %i.cj = icmp ugt i64 %.0.copyload.i554, %i.ci
  %i.ck = zext i1 %i.cj to i64
  br label %.loopexit566

bb.l:                                             ; preds = %bb.b
  %i.cl = lshr i64 %3, 32                         ; 4 uses
  %i.cm = and i64 %3, 4294967295                  ; 4 uses
  %.not512 = icmp eq i32 %6, 0
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.co = zext i32 %i.b to i64                    ; 2 uses
  br i1 %.not512, label %.preheader568, label %.preheader570

.preheader570:                                    ; preds = %bb.l, %bb.n
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.n ], [ 0, %bb.l ] ; 2 uses
  %.2 = phi i64 [ %i.ea, %bb.n ], [ 0, %bb.l ]    ; 2 uses
  %i.cp = trunc nuw i64 %indvars.iv to i32
  %i.cq = shl i32 %i.cp, 3                        ; 2 uses
  %i.cr = add i32 %i.cq, %2
  %i.cs = zext i32 %i.cr to i64
  %.val549 = load ptr, ptr %i.cn, align 8, !tbaa !7
  %i.ct = getelementptr inbounds nuw i8, ptr %.val549, i64 %i.cs
  %.0.copyload.i555 = load i64, ptr %i.ct, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i555) #8, !srcloc !33
  %.not515 = icmp eq i64 %.0.copyload.i555, 0
  br i1 %.not515, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.preheader570
  %i.cu = lshr i64 %.0.copyload.i555, 32          ; 2 uses
  %i.cv = mul nuw i64 %i.cu, %i.cl
  %i.cw = and i64 %.0.copyload.i555, 4294967295   ; 2 uses
  %i.cx = mul nuw i64 %i.cw, %i.cl                ; 2 uses
  %i.cy = lshr i64 %i.cx, 32
  %i.cz = add nuw i64 %i.cy, %i.cv
  %i.da = mul nuw i64 %i.cu, %i.cm                ; 2 uses
  %i.db = lshr i64 %i.da, 32
  %i.dc = add nuw i64 %i.cz, %i.db
  %i.dd = shl i64 %i.cx, 32                       ; 2 uses
  %i.de = mul nuw i64 %i.cw, %i.cm
  %i.df = add i64 %i.dd, %i.de                    ; 3 uses
  %i.dg = icmp ult i64 %i.df, %i.dd
  %i.dh = zext i1 %i.dg to i64
  %i.di = add nuw i64 %i.dc, %i.dh
  %i.dj = shl i64 %i.da, 32
  %i.dk = add i64 %i.df, %i.dj                    ; 3 uses
  %i.dl = icmp ugt i64 %i.df, %i.dk
  %i.dm = zext i1 %i.dl to i64
  %i.dn = add nuw i64 %i.di, %i.dm
  %i.do = add i64 %i.dk, %.2                      ; 2 uses
  %i.dp = icmp ult i64 %i.do, %i.dk
  %i.dq = zext i1 %i.dp to i64
  %i.dr = add i64 %i.dn, %i.dq
  br label %bb.n

bb.n:                                             ; preds = %.preheader570, %bb.m
  %.3 = phi i64 [ %i.do, %bb.m ], [ %.2, %.preheader570 ] ; 2 uses
  %.0 = phi i64 [ %i.dr, %bb.m ], [ 0, %.preheader570 ]
  %i.ds = add i32 %i.cq, %1
  %i.dt = zext i32 %i.ds to i64                   ; 2 uses
  %.val548 = load ptr, ptr %i.cn, align 8, !tbaa !7
  %i.du = getelementptr inbounds nuw i8, ptr %.val548, i64 %i.dt
  %.0.copyload.i556 = load i64, ptr %i.du, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i556) #8, !srcloc !33
  %i.dv = add i64 %.0.copyload.i556, %.3
end_hunk_2
