Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_6?download=true
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
  %.val224 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.di = getelementptr inbounds nuw i8, ptr %.val224, i64 %i.bg
  %.0.copyload.i256 = load i32, ptr %i.di, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i256) #8, !srcloc !14
  %i.dj = tail call i32 @w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3Awrite0x28char0x20const0x2A0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.0.copyload.i256, i32 noundef %i.dg) ; 0 uses
  %.val = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.dk = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bg
  %.0.copyload.i257 = load i32, ptr %i.dk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i257) #8, !srcloc !14
  %i.dl = icmp eq i32 %.0.copyload.i257, %i.bf
  br i1 %i.dl, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i257) #8
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.f
  store i32 %i.b, ptr %i.a, align 8, !tbaa !20
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_llvh0x3A0x3Ahash_value0x28llvh0x3A0x3AStringRef0x29(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = zext i32 %1 to i64                       ; 2 uses
  %.val13 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %.val13, i64 %i.b
  %.0.copyload.i = load i32, ptr %i.c, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %.val = load ptr, ptr %i.a, align 8, !tbaa !12
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
  %.val200 = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %.val200, i64 %i.j
  %.0.copyload.i = load i64, ptr %i.k, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i) #8, !srcloc !33
  %i.l = xor i64 %.0.copyload.i, -1
  %.val192 = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %.val192, i64 %i.j
  store i64 %i.l, ptr %i.m, align 1
  %i.n = add i32 %i.d, %i.h
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %.val199 = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %.val199, i64 %i.o
  %.0.copyload.i201 = load i64, ptr %i.p, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i201) #8, !srcloc !33
  %i.q = xor i64 %.0.copyload.i201, -1
  %.val191 = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %.val191, i64 %i.o
  store i64 %i.q, ptr %i.r, align 1
  %i.s = add i32 %i.e, %i.h
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %.val198 = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %.val198, i64 %i.t
  %.0.copyload.i202 = load i64, ptr %i.u, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i202) #8, !srcloc !33
  %i.v = xor i64 %.0.copyload.i202, -1
  %.val190 = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %.val190, i64 %i.t
  store i64 %i.v, ptr %i.w, align 1
  %i.x = add i32 %i.f, %i.h
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %.val197 = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %.val197, i64 %i.y
  %.0.copyload.i203 = load i64, ptr %i.z, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i203) #8, !srcloc !33
  %i.aa = xor i64 %.0.copyload.i203, -1
  %.val189 = load ptr, ptr %i.c, align 8, !tbaa !12
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
  %.val196 = load ptr, ptr %i.ad, align 8, !tbaa !12
  %i.ah = getelementptr inbounds nuw i8, ptr %.val196, i64 %i.ag
  %.0.copyload.i204 = load i64, ptr %i.ah, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i204) #8, !srcloc !33
  %i.ai = xor i64 %.0.copyload.i204, -1
  %.val188 = load ptr, ptr %i.ad, align 8, !tbaa !12
  %i.aj = getelementptr inbounds nuw i8, ptr %.val188, i64 %i.ag
  store i64 %i.ai, ptr %i.aj, align 1
  %i.ak = add nsw i32 %.2, 1
  %i.al = add nuw nsw i32 %.0, 1                  ; 2 uses
  %.not182 = icmp eq i32 %i.al, %i.ac
  br i1 %.not182, label %.loopexit209, label %bb.e

.loopexit209:                                     ; preds = %bb.e, %.loopexit210
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.an = zext i32 %1 to i64                      ; 3 uses
  %.val195 = load ptr, ptr %i.am, align 8, !tbaa !12
  %i.ao = getelementptr inbounds nuw i8, ptr %.val195, i64 %i.an
  %.0.copyload.i205 = load i64, ptr %i.ao, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i205) #8, !srcloc !33
  %i.ap = add i64 %.0.copyload.i205, 1            ; 2 uses
  %.val187 = load ptr, ptr %i.am, align 8, !tbaa !12
  %i.aq = getelementptr inbounds nuw i8, ptr %.val187, i64 %i.an
  store i64 %i.ap, ptr %i.aq, align 1
  %i.ar = icmp ne i32 %2, 1
  %.not183 = icmp eq i64 %i.ap, 0
  %or.cond = and i1 %i.ar, %.not183
  br i1 %or.cond, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %.loopexit209
  %i.as = add nuw nsw i64 %i.an, 8                ; 2 uses
  %.val194 = load ptr, ptr %i.am, align 8, !tbaa !12
  %i.at = getelementptr inbounds nuw i8, ptr %.val194, i64 %i.as
  %.0.copyload.i206 = load i64, ptr %i.at, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i206) #8, !srcloc !33
  %i.au = add i64 %.0.copyload.i206, 1            ; 2 uses
  %.val186 = load ptr, ptr %i.am, align 8, !tbaa !12
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
  %.val193 = load ptr, ptr %i.am, align 8, !tbaa !12
  %i.az = getelementptr inbounds nuw i8, ptr %.val193, i64 %i.ay
  %.0.copyload.i207 = load i64, ptr %i.az, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i207) #8, !srcloc !33
  %i.ba = add i64 %.0.copyload.i207, 1            ; 2 uses
  %.val = load ptr, ptr %i.am, align 8, !tbaa !12
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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = add i32 %i.b, -16                        ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !20
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoNumber_RJS0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef %0, i32 noundef %i.c, i32 noundef %2, i32 noundef %3)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.e = zext i32 %i.c to i64                     ; 2 uses
  %.val = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 %i.e
  %.0.copyload.i = load i32, ptr %i.f, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %.not = icmp eq i32 %.0.copyload.i, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %1 to i64
  %.val67 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %.val67, i64 %i.g
  store i32 0, ptr %i.h, align 1
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %.val68 = load ptr, ptr %i.d, align 8, !tbaa !12
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
  %.val66 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %.val66, i64 %i.s
  store i32 1, ptr %i.t, align 1
  %i.u = uitofp i32 %.061 to double
  %.val69 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %.val69, i64 %i.s
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store double %i.u, ptr %i.w, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b
  store i32 %i.b, ptr %i.a, align 8, !tbaa !20
  ret void
}

declare i32 @w2c_hermes_hermes0x3A0x3AtruncateToInt32SlowPath0x28double0x29(ptr noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_llvh0x3A0x3ASmallPtrSetImplBase0x3A0x3Ainsert_imp_big0x28void0x20const0x2A0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 27 uses
  %i.b = zext i32 %2 to i64                       ; 6 uses
  %i.c = add nuw nsw i64 %i.b, 8                  ; 3 uses
  %.val413 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %.val413, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.e = mul i32 %.0.copyload.i, 3
  %i.f = add nuw nsw i64 %i.b, 12                 ; 3 uses
  %.val412 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %.val412, i64 %i.f
  %.0.copyload.i422 = load i32, ptr %i.g, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i422) #8, !srcloc !14
  %i.h = add nuw nsw i64 %i.b, 16                 ; 3 uses
  %.val411 = load ptr, ptr %i.a, align 8, !tbaa !12
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
  %.val410 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %.val410, i64 %i.p
  %.0.copyload.i424 = load i32, ptr %i.q, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i424) #8, !srcloc !14
  %.val409 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %.val409, i64 %i.b
  %.0.copyload.i425 = load i32, ptr %i.r, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i425) #8, !srcloc !14
  %.not391 = icmp eq i32 %.0.copyload.i424, %.0.copyload.i425 ; 2 uses
  %i.s = select i1 %.not391, i32 12, i32 8
  %i.t = add i32 %i.s, %2
  %i.u = zext i32 %i.t to i64
  %.val408 = load ptr, ptr %i.a, align 8, !tbaa !12
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
  %.val421 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %.val421, i64 %i.c
  store i32 %.0370, ptr %i.y, align 1
  %.val420 = load ptr, ptr %i.a, align 8, !tbaa !12
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
  %.val407 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.af = getelementptr inbounds nuw i8, ptr %.val407, i64 %i.ae
  %.0.copyload.i427 = load i32, ptr %i.af, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i427) #8, !srcloc !14
  %i.ag = icmp ult i32 %.0.copyload.i427, -2
  br i1 %i.ag, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %.val406 = load ptr, ptr %i.a, align 8, !tbaa !12
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
  %.val405 = load ptr, ptr %i.a, align 8, !tbaa !12
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
begin_hunk_1_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtypedArrayPrototypeToLocaleString0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a

bb.z:                                             ; preds = %bb.x
  %i.fo = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1383, i64 noundef %.0.copyload.i1382) #8 ; 2 uses
  %i.fp = zext i32 %i.fo to i64
  %.val1332 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fq = getelementptr inbounds nuw i8, ptr %.val1332, i64 %i.fp
  %.0.copyload.i1386 = load i64, ptr %i.fq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1386) #8, !srcloc !33
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.01149 = phi i32 [ %.0.copyload.i1384, %bb.y ], [ %i.fo, %bb.z ]
  %.01145 = phi i64 [ %.0.copyload.i1382, %bb.y ], [ %.0.copyload.i1386, %bb.z ] ; 2 uses
  %i.fr = icmp ugt i64 %.01145, -844424930131969
  br i1 %i.fr, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fs = and i64 %.01145, 4294967295
  %.val1248 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ft = getelementptr inbounds nuw i8, ptr %.val1248, i64 %i.fs
  %.0.copyload.i1387 = load i32, ptr %i.ft, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1387) #8, !srcloc !14
  %i.fu = add i32 %.0.copyload.i1387, -1291845632
  %i.fv = icmp ult i32 %i.fu, -150994944
  %i.fw = select i1 %i.fv, i32 70384, i32 %.01149
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.01160 = phi i32 [ %i.fw, %bb.ab ], [ 70384, %bb.aa ] ; 2 uses
  %i.fx = zext i32 %.01160 to i64
  %.val1331 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fy = getelementptr inbounds nuw i8, ptr %.val1331, i64 %i.fx
  %.0.copyload.i1388 = load i64, ptr %i.fy, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1388) #8, !srcloc !33
  %i.fz = icmp ult i64 %.0.copyload.i1388, -844424930131968
  %i.ga = and i64 %.0.copyload.i1388, 4294967295
  %.not1192 = icmp eq i64 %i.ga, 0
  %or.cond = or i1 %i.fz, %.not1192
  br i1 %or.cond, label %bb.ak, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACallable0x3A0x3AexecuteCall00x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ACallable0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20bool0x29(ptr noundef nonnull %0, i32 noundef %i.cp, i32 noundef %.01160, i32 noundef %3, i32 noundef %.11156, i32 noundef 0) #8
  %.val1247 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gb = getelementptr inbounds nuw i8, ptr %.val1247, i64 %i.cm
  %.0.copyload.i1389 = load i32, ptr %i.gb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1389) #8, !srcloc !14
  %.not1193 = icmp eq i32 %.0.copyload.i1389, 0
  br i1 %.not1193, label %bb.al, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.val1330 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gc = getelementptr inbounds nuw i8, ptr %.val1330, i64 %i.cq
  %.0.copyload.i1390 = load i64, ptr %i.gc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1390) #8, !srcloc !33
  %.val1246 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gd = getelementptr inbounds nuw i8, ptr %.val1246, i64 %i.i
  %.0.copyload.i1391 = load i32, ptr %i.gd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1391) #8, !srcloc !14
  %i.ge = zext i32 %.0.copyload.i1391 to i64      ; 2 uses
  %i.gf = add nuw nsw i64 %i.ge, 164              ; 2 uses
  %.val1245 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gg = getelementptr inbounds nuw i8, ptr %.val1245, i64 %i.gf
  %.0.copyload.i1392 = load i32, ptr %i.gg, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1392) #8, !srcloc !14
  %.val1244 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gh = getelementptr inbounds nuw i8, ptr %.val1244, i64 %i.ge
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 168
  %.0.copyload.i1393 = load i32, ptr %i.gi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1393) #8, !srcloc !14
  %i.gj = icmp ult i32 %.0.copyload.i1392, %.0.copyload.i1393
  br i1 %i.gj, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.gk = add i32 %.0.copyload.i1392, 8
  %.val1293 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gl = getelementptr inbounds nuw i8, ptr %.val1293, i64 %i.gf
  store i32 %i.gk, ptr %i.gl, align 1
  %i.gm = zext i32 %.0.copyload.i1392 to i64
  %.val1321 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gn = getelementptr inbounds nuw i8, ptr %.val1321, i64 %i.gm
  store i64 %.0.copyload.i1390, ptr %i.gn, align 1
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.go = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1391, i64 noundef %.0.copyload.i1390) #8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.21157 = phi i32 [ %.0.copyload.i1392, %bb.af ], [ %i.go, %bb.ag ]
  %i.gp = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoString_RJS0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %.21157) ; 2 uses
  %i.gq = icmp eq i32 %i.gp, -1
  br i1 %i.gq, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gr = zext i32 %i.gp to i64
  %i.gs = or disjoint i64 %i.gr, -844424930131968 ; 2 uses
  %.val1243 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gt = getelementptr inbounds nuw i8, ptr %.val1243, i64 %i.i
  %.0.copyload.i1394 = load i32, ptr %i.gt, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1394) #8, !srcloc !14
  %i.gu = zext i32 %.0.copyload.i1394 to i64      ; 2 uses
  %i.gv = add nuw nsw i64 %i.gu, 164              ; 2 uses
  %.val1242 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gw = getelementptr inbounds nuw i8, ptr %.val1242, i64 %i.gv
  %.0.copyload.i1395 = load i32, ptr %i.gw, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1395) #8, !srcloc !14
  %.val1241 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gx = getelementptr inbounds nuw i8, ptr %.val1241, i64 %i.gu
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 168
  %.0.copyload.i1396 = load i32, ptr %i.gy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1396) #8, !srcloc !14
  %.not1194 = icmp ult i32 %.0.copyload.i1395, %.0.copyload.i1396
  br i1 %.not1194, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.gz = add i32 %.0.copyload.i1395, 8
  %.val1292 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ha = getelementptr inbounds nuw i8, ptr %.val1292, i64 %i.gv
  store i32 %i.gz, ptr %i.ha, align 1
  %i.hb = zext i32 %.0.copyload.i1395 to i64      ; 2 uses
  %.val1320 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hc = getelementptr inbounds nuw i8, ptr %.val1320, i64 %i.hb
  store i64 %i.gs, ptr %i.hc, align 1
  br label %bb.an

bb.ak:                                            ; preds = %bb.ac
  %.val1291 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hd = getelementptr inbounds nuw i8, ptr %.val1291, i64 %i.e
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 264
  store i32 0, ptr %i.he, align 1
  %.val1319 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hf = getelementptr inbounds nuw i8, ptr %.val1319, i64 %i.e
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 256
  store i64 124554051585, ptr %i.hg, align 1
  %.val1290 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hh = getelementptr inbounds nuw i8, ptr %.val1290, i64 %i.e
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 240
  store i32 3, ptr %i.hi, align 1
  %.val1289 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hj = getelementptr inbounds nuw i8, ptr %.val1289, i64 %i.cm
  store i32 51172, ptr %i.hj, align 1
  %i.hk = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseTypeError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %i.cp) #8
  %i.hl = zext i32 %1 to i64
  %.val1288 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hm = getelementptr inbounds nuw i8, ptr %.val1288, i64 %i.hl
  store i32 %i.hk, ptr %i.hm, align 1
  br label %bb.bx

bb.al:                                            ; preds = %bb.ah, %bb.ad
  %i.hn = zext i32 %1 to i64
  %.val1287 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ho = getelementptr inbounds nuw i8, ptr %.val1287, i64 %i.hn
  store i32 0, ptr %i.ho, align 1
  br label %bb.bx

bb.am:                                            ; preds = %bb.ai
  %i.hp = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1394, i64 noundef %i.gs) #8 ; 2 uses
  %.pre1475 = zext i32 %i.hp to i64
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.aj
  %.pre-phi1476 = phi i64 [ %.pre1475, %bb.am ], [ %i.hb, %bb.aj ]
  %.31158 = phi i32 [ %i.hp, %bb.am ], [ %.0.copyload.i1395, %bb.aj ]
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AArrayImpl0x3A0x3A_setOwnIndexedImpl0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20int0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.cr, i32 noundef %i.bk, i32 noundef %3, i32 noundef %.01152, i32 noundef %.31158) #8
  %.val1240 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hq = getelementptr inbounds nuw i8, ptr %.val1240, i64 %.pre-phi1476
  %.0.copyload.i1397 = load i32, ptr %i.hq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1397) #8, !srcloc !14
  %i.hr = zext i32 %.0.copyload.i1397 to i64
  %.val1349 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hs = getelementptr inbounds nuw i8, ptr %.val1349, i64 %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 4
  %.0.copyload.i1398 = load i32, ptr %i.ht, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1398) #8, !srcloc !36
  %.val1239 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hu = getelementptr inbounds nuw i8, ptr %.val1239, i64 %i.q
  %.0.copyload.i1399 = load i32, ptr %i.hu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1399) #8, !srcloc !14
  %i.hv = add i32 %.0.copyload.i1399, %i.ce
  %i.hw = zext i32 %i.hv to i64
  %.val1238 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hx = getelementptr inbounds nuw i8, ptr %.val1238, i64 %i.hw
  %.0.copyload.i1400 = load i32, ptr %i.hx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1400) #8, !srcloc !14
  %.val1286 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hy = getelementptr inbounds nuw i8, ptr %.val1286, i64 %i.u
  store i32 %.0.copyload.i1371, ptr %i.hy, align 1
  %.val1285 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hz = getelementptr inbounds nuw i8, ptr %.val1285, i64 %i.z
  store i32 %.0.copyload.i1370, ptr %i.hz, align 1
  %i.ia = add i32 %.0.copyload.i1400, 128
  %.val1284 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ib = getelementptr inbounds nuw i8, ptr %.val1284, i64 %i.x
  store i32 %i.ia, ptr %i.ib, align 1
  %i.ic = and i32 %.0.copyload.i1398, 2147483647
  %i.id = zext nneg i32 %i.ic to i64
  %i.ie = add i64 %.01144, %i.id                  ; 3 uses
  %i.if = lshr i64 %i.ie, 32
  %i.ig = trunc nuw i64 %i.if to i32
  %i.ih = or i32 %.01147, %i.ig                   ; 2 uses
  %i.ii = add i32 %.01152, 1                      ; 2 uses
  %.not1195 = icmp eq i32 %i.ii, %.0.copyload.i1365
  br i1 %.not1195, label %bb.ao, label %bb.n

bb.ao:                                            ; preds = %bb.an
  %.not1196 = icmp eq i32 %i.ih, 0
  br i1 %.not1196, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.val1283 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ij = getelementptr inbounds nuw i8, ptr %.val1283, i64 %i.e
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 264
  store i32 0, ptr %i.ik, align 1
  %.val1318 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.il = getelementptr inbounds nuw i8, ptr %.val1318, i64 %i.e
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 256
  store i64 115964116993, ptr %i.im, align 1
  %.val1282 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.in = getelementptr inbounds nuw i8, ptr %.val1282, i64 %i.cq
  store i32 3, ptr %i.in, align 1
  %.val1281 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.io = getelementptr inbounds nuw i8, ptr %.val1281, i64 %i.cm
  store i32 22519, ptr %i.io, align 1
  %i.ip = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseRangeError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %i.cp) #8 ; 0 uses
  br label %bb.bw

bb.aq:                                            ; preds = %bb.ao
  %i.iq = trunc i64 %i.ie to i32                  ; 3 uses
  %i.ir = icmp ult i32 %i.iq, 65536
  br i1 %i.ir, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ADynamicStringPrimitive0x3Cchar16_t0x2C0x20false0x3E0x3A0x3Acreate0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.cp, i32 noundef %3, i32 noundef %i.iq) #8
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AExternalStringPrimitive0x3Cchar16_t0x3E0x3A0x3Acreate0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.cp, i32 noundef %3, i32 noundef %i.iq) #8
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.val1237 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.is = getelementptr inbounds nuw i8, ptr %.val1237, i64 %i.cm
  %.0.copyload.i1401 = load i32, ptr %i.is, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1401) #8, !srcloc !14
  %.not1197 = icmp eq i32 %.0.copyload.i1401, 0
  br i1 %.not1197, label %bb.bw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.val1348 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.it = getelementptr inbounds nuw i8, ptr %.val1348, i64 %i.cq
  %.0.copyload.i1402 = load i32, ptr %i.it, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1402) #8, !srcloc !36
  %i.iu = zext i32 %.0.copyload.i1402 to i64
  %i.iv = or disjoint i64 %i.iu, -844424930131968 ; 2 uses
  %.val1236 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.iw = getelementptr inbounds nuw i8, ptr %.val1236, i64 %i.i
  %.0.copyload.i1403 = load i32, ptr %i.iw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1403) #8, !srcloc !14
  %i.ix = zext i32 %.0.copyload.i1403 to i64      ; 2 uses
  %i.iy = add nuw nsw i64 %i.ix, 164              ; 2 uses
  %.val1235 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.iz = getelementptr inbounds nuw i8, ptr %.val1235, i64 %i.iy
  %.0.copyload.i1404 = load i32, ptr %i.iz, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1404) #8, !srcloc !14
  %.val1234 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ja = getelementptr inbounds nuw i8, ptr %.val1234, i64 %i.ix
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 168
  %.0.copyload.i1405 = load i32, ptr %i.jb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1405) #8, !srcloc !14
  %i.jc = icmp ult i32 %.0.copyload.i1404, %.0.copyload.i1405
  br i1 %i.jc, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.jd = add i32 %.0.copyload.i1404, 8
  %.val1280 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.je = getelementptr inbounds nuw i8, ptr %.val1280, i64 %i.iy
  store i32 %i.jd, ptr %i.je, align 1
  %i.jf = zext i32 %.0.copyload.i1404 to i64
  %.val1317 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.jg = getelementptr inbounds nuw i8, ptr %.val1317, i64 %i.jf
  store i64 %i.iv, ptr %i.jg, align 1
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.jh = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1403, i64 noundef %i.iv) #8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.4 = phi i32 [ %.0.copyload.i1404, %bb.av ], [ %i.jh, %bb.aw ]
  %i.ji = add nuw nsw i64 %i.e, 28                ; 5 uses
  %.val1279 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.jj = getelementptr inbounds nuw i8, ptr %.val1279, i64 %i.ji
  store i32 0, ptr %i.jj, align 1
  %.val1278 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.jk = getelementptr inbounds nuw i8, ptr %.val1278, i64 %i.ck
  store i32 %.4, ptr %i.jk, align 1
  %.val = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.jl = getelementptr inbounds nuw i8, ptr %.val, i64 %i.e
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 36
  store i8 1, ptr %i.jm, align 1
  %.val1277 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.jn = getelementptr inbounds nuw i8, ptr %.val1277, i64 %i.cl
  store i32 %3, ptr %i.jn, align 1
  %.val1233 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.jo = getelementptr inbounds nuw i8, ptr %.val1233, i64 %i.i
  %.0.copyload.i1406 = load i32, ptr %i.jo, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1406) #8, !srcloc !14
  %i.jp = zext i32 %.0.copyload.i1406 to i64      ; 2 uses
  %i.jq = add nuw nsw i64 %i.jp, 164              ; 2 uses
  %.val1232 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.jr = getelementptr inbounds nuw i8, ptr %.val1232, i64 %i.jq
  %.0.copyload.i1407 = load i32, ptr %i.jr, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1407) #8, !srcloc !14
  %.val1231 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.js = getelementptr inbounds nuw i8, ptr %.val1231, i64 %i.jp
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 168
  %.0.copyload.i1408 = load i32, ptr %i.jt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1408) #8, !srcloc !14
  %i.ju = icmp ult i32 %.0.copyload.i1407, %.0.copyload.i1408
  br i1 %i.ju, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.jv = add i32 %.0.copyload.i1407, 8
  %.val1276 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.jw = getelementptr inbounds nuw i8, ptr %.val1276, i64 %i.jq
  store i32 %i.jv, ptr %i.jw, align 1
  %i.jx = zext i32 %.0.copyload.i1407 to i64
  %.val1316 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.jy = getelementptr inbounds nuw i8, ptr %.val1316, i64 %i.jx
  store i64 -844424930131968, ptr %i.jy, align 1
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.jz = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1406, i64 noundef -844424930131968) #8
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.11150 = phi i32 [ %.0.copyload.i1407, %bb.ay ], [ %i.jz, %bb.az ] ; 3 uses
  %i.ka = zext i32 %i.bk to i64                   ; 2 uses
  %.val1230 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.kb = getelementptr inbounds nuw i8, ptr %.val1230, i64 %i.ka
  %.0.copyload.i1409 = load i32, ptr %i.kb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1409) #8, !srcloc !14
  %i.kc = zext i32 %.0.copyload.i1409 to i64      ; 3 uses
  %.val1229 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.kd = getelementptr inbounds nuw i8, ptr %.val1229, i64 %i.kc
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 20
  %.0.copyload.i1410 = load i32, ptr %i.ke, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1410) #8, !srcloc !14
  %.not1198 = icmp eq i32 %.0.copyload.i1410, 0
  br i1 %.not1198, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %.val1228 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.kf = getelementptr inbounds nuw i8, ptr %.val1228, i64 %i.kc
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 24
  %.0.copyload.i1411 = load i32, ptr %i.kg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1411) #8, !srcloc !14
  %.not1199 = icmp eq i32 %.0.copyload.i1411, 0
  br i1 %.not1199, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %.val1227 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.kh = getelementptr inbounds nuw i8, ptr %.val1227, i64 %i.kc
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 28
  %.0.copyload.i1412 = load i32, ptr %i.ki, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1412) #8, !srcloc !14
  %i.kj = zext i32 %.0.copyload.i1412 to i64
  %.val1347 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.kk = getelementptr inbounds nuw i8, ptr %.val1347, i64 %i.kj
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %.0.copyload.i1413 = load i32, ptr %i.kl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1413) #8, !srcloc !36
  %i.km = and i32 %.0.copyload.i1413, -8
  %i.kn = zext i32 %i.km to i64
  %i.ko = or disjoint i64 %i.kn, -844424930131968
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bb, %bb.ba, %bb.bc
  %.11146 = phi i64 [ -844424930131968, %bb.ba ], [ -844424930131968, %bb.bb ], [ %i.ko, %bb.bc ] ; 2 uses
  %i.kp = zext i32 %.11150 to i64                 ; 2 uses
  %.val1315 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.kq = getelementptr inbounds nuw i8, ptr %.val1315, i64 %i.kp
  store i64 %.11146, ptr %i.kq, align 1
  %i.kr = and i64 %.11146, 4294967295
  %.val1226 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ks = getelementptr inbounds nuw i8, ptr %.val1226, i64 %i.kr
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 4
  %.0.copyload.i1414 = load i32, ptr %i.kt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1414) #8, !srcloc !14
  %i.ku = and i32 %.0.copyload.i1414, 2147483647
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AStringBuilder0x3A0x3AappendStringPrim0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3E0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.cj, i32 noundef %.11150, i32 noundef %i.ku) #8
  %.not1200 = icmp eq i32 %.0.copyload.i1365, 1
  br i1 %.not1200, label %.loopexit1447, label %.preheader1446

.preheader1446:                                   ; preds = %bb.bd, %bb.bv
  %.01159 = phi i32 [ %i.po, %bb.bv ], [ 1, %bb.bd ] ; 4 uses
  %.val1329 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.kv = getelementptr inbounds nuw i8, ptr %.val1329, i64 %i.e
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 40
  %.0.copyload.i1415 = load i64, ptr %i.kw, align 1 ; 4 uses
end_hunk_1
begin_hunk_2_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtypedArrayPrototypeJoin0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
  store i64 -1688849860263936, ptr %i.da, align 1
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.db = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i919, i64 noundef -1688849860263936) #8 ; 2 uses
  %.pre = zext i32 %i.db to i64
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pre-phi = phi i64 [ %.pre, %bb.u ], [ %i.cz, %bb.t ]
  %.0775 = phi i32 [ %i.db, %bb.u ], [ %.0.copyload.i920, %bb.t ]
  %i.dc = zext i32 %i.cp to i64
  %i.dd = add i32 %i.b, -28
  %i.de = add i32 %i.b, -168                      ; 2 uses
  %i.df = add i32 %i.b, -40
  %i.dg = zext i32 %i.c to i64                    ; 17 uses
  %i.dh = add nuw nsw i64 %i.dg, 16               ; 3 uses
  %i.di = add i32 %i.b, -176                      ; 6 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.dl = load ptr, ptr @w2c_hermes_t9, align 8   ; 4 uses
  %i.dm = icmp ne ptr %i.dl, null
  br label %bb.w

bb.w:                                             ; preds = %bb.ad, %bb.v
  %.1779 = phi i32 [ 0, %bb.v ], [ %i.gp, %bb.ad ] ; 3 uses
  %.0773 = phi i32 [ 0, %bb.v ], [ %i.go, %bb.ad ]
  %.0771 = phi i64 [ %i.dc, %bb.v ], [ %i.gl, %bb.ad ]
  %.val875 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.dn = getelementptr inbounds nuw i8, ptr %.val875, i64 %i.dh
  store i32 %3, ptr %i.dn, align 1
  %.val840 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.do = getelementptr inbounds nuw i8, ptr %.val840, i64 %i.as
  %.0.copyload.i922 = load i32, ptr %i.do, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i922) #8, !srcloc !14
  %.val874 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.dp = getelementptr inbounds nuw i8, ptr %.val874, i64 %i.dg
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 164
  store i32 %i.de, ptr %i.dq, align 1
  %.val873 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.dr = getelementptr inbounds nuw i8, ptr %.val873, i64 %i.dg
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 152
  store i32 %i.dd, ptr %i.ds, align 1
  %.val872 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.dt = getelementptr inbounds nuw i8, ptr %.val872, i64 %i.dg
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 20
  store i32 %.0.copyload.i922, ptr %i.du, align 1
  %.val871 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.dv = getelementptr inbounds nuw i8, ptr %.val871, i64 %i.dg
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 188
  store i32 0, ptr %i.dw, align 1
  %.val870 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.dx = getelementptr inbounds nuw i8, ptr %.val870, i64 %i.dg
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 184
  store i32 %i.df, ptr %i.dy, align 1
  %.val869 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.dz = getelementptr inbounds nuw i8, ptr %.val869, i64 %i.dg
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 180
  store i32 %i.de, ptr %i.ea, align 1
  %.val895 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.eb = getelementptr inbounds nuw i8, ptr %.val895, i64 %i.dg
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 156
  store i64 17179869185, ptr %i.ec, align 1
  %.val868 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ed = getelementptr inbounds nuw i8, ptr %.val868, i64 %i.as
  store i32 %i.di, ptr %i.ed, align 1
  %.val839 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ee = getelementptr inbounds nuw i8, ptr %.val839, i64 %i.j
  %.0.copyload.i923 = load i32, ptr %i.ee, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i923) #8, !srcloc !14
  %i.ef = zext i32 %.0.copyload.i923 to i64
  %.val838 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.eg = getelementptr inbounds nuw i8, ptr %.val838, i64 %i.ef
  %.0.copyload.i924 = load i32, ptr %i.eg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i924) #8, !srcloc !14
  %i.eh = lshr i32 %.0.copyload.i924, 22
  %i.ei = and i32 %i.eh, 1020
  %.val837 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %.val837, i64 %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 289808
  %.0.copyload.i925 = load i32, ptr %i.el, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i925) #8, !srcloc !14
  %i.em = zext i32 %.0.copyload.i925 to i64
  %.val836 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.en = getelementptr inbounds nuw i8, ptr %.val836, i64 %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 40
  %.0.copyload.i926 = load i32, ptr %i.eo, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i926) #8, !srcloc !14
  %i.ep = load i32, ptr %i.dj, align 4, !tbaa !21
  %i.eq = icmp ult i32 %.0.copyload.i926, %i.ep
  br i1 %i.eq, label %bb.x, label %.critedge, !prof !22

bb.x:                                             ; preds = %bb.w
  %i.er = load ptr, ptr %i.dk, align 8, !tbaa !23
  %i.es = zext i32 %.0.copyload.i926 to i64
  %i.et = getelementptr inbounds nuw [24 x i8], ptr %i.er, i64 %i.es ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !25 ; 2 uses
  %.not802 = icmp eq ptr %i.ev, null
  br i1 %.not802, label %.critedge, label %bb.y, !prof !26

bb.y:                                             ; preds = %bb.x
  %i.ew = load ptr, ptr %i.et, align 8, !tbaa !28 ; 4 uses
  %i.ex = icmp eq ptr %i.dl, %i.ew
  br i1 %i.ex, label %func_types_eq.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ey = icmp ne ptr %i.ew, null
  %or.cond.i = and i1 %i.dm, %i.ey
  br i1 %or.cond.i, label %func_types_eq.exit, label %.critedge, !prof !29

func_types_eq.exit:                               ; preds = %bb.z
  %i.ez = load i128, ptr %i.dl, align 1
  %i.fa = load i128, ptr %i.ew, align 1
  %i.fb = xor i128 %i.ez, %i.fa
  %i.fc = getelementptr i8, ptr %i.dl, i64 16
  %i.fd = getelementptr i8, ptr %i.ew, i64 16
  %i.fe = load i128, ptr %i.fc, align 1
  %i.ff = load i128, ptr %i.fd, align 1
  %i.fg = xor i128 %i.fe, %i.ff
  %i.fh = or i128 %i.fb, %i.fg
  %i.fi = icmp ne i128 %i.fh, 0
  %i.fj = zext i1 %i.fi to i32
  %.not.i = icmp eq i32 %i.fj, 0
  br i1 %.not.i, label %func_types_eq.exit.thread, label %.critedge, !prof !32

.critedge:                                        ; preds = %bb.z, %bb.x, %bb.w, %func_types_eq.exit
  tail call void @wasm_rt_trap(i32 noundef 6) #9
  unreachable

func_types_eq.exit.thread:                        ; preds = %bb.y, %func_types_eq.exit
  %i.fk = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !31
  %i.fm = tail call i64 %i.ev(ptr noundef %i.fl, i32 noundef %.0.copyload.i923, i32 noundef %3, i32 noundef %.1779) #8
  %.val894 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fn = getelementptr inbounds nuw i8, ptr %.val894, i64 %.pre-phi
  store i64 %i.fm, ptr %i.fn, align 1
  %i.fo = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoString_RJS0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %.0775) ; 2 uses
  %i.fp = icmp eq i32 %i.fo, -1
  br i1 %i.fp, label %bb.ba, label %bb.aa

bb.aa:                                            ; preds = %func_types_eq.exit.thread
  %i.fq = zext i32 %i.fo to i64
  %i.fr = or disjoint i64 %i.fq, -844424930131968 ; 3 uses
  %.val835 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fs = getelementptr inbounds nuw i8, ptr %.val835, i64 %i.as
  %.0.copyload.i927 = load i32, ptr %i.fs, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i927) #8, !srcloc !14
  %i.ft = zext i32 %.0.copyload.i927 to i64       ; 2 uses
  %i.fu = add nuw nsw i64 %i.ft, 164              ; 2 uses
  %.val834 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fv = getelementptr inbounds nuw i8, ptr %.val834, i64 %i.fu
  %.0.copyload.i928 = load i32, ptr %i.fv, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i928) #8, !srcloc !14
  %.val833 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fw = getelementptr inbounds nuw i8, ptr %.val833, i64 %i.ft
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 168
  %.0.copyload.i929 = load i32, ptr %i.fx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i929) #8, !srcloc !14
  %i.fy = icmp ult i32 %.0.copyload.i928, %.0.copyload.i929
  br i1 %i.fy, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fz = add i32 %.0.copyload.i928, 8
  %.val867 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ga = getelementptr inbounds nuw i8, ptr %.val867, i64 %i.fu
  store i32 %i.fz, ptr %i.ga, align 1
  %i.gb = zext i32 %.0.copyload.i928 to i64
  %.val893 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gc = getelementptr inbounds nuw i8, ptr %.val893, i64 %i.gb
  store i64 %i.fr, ptr %i.gc, align 1
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.gd = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i927, i64 noundef %i.fr) #8 ; 2 uses
  %i.ge = zext i32 %i.gd to i64
  %.val901 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gf = getelementptr inbounds nuw i8, ptr %.val901, i64 %i.ge
  %.0.copyload.i930 = load i64, ptr %i.gf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i930) #8, !srcloc !33
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.0776 = phi i32 [ %.0.copyload.i928, %bb.ab ], [ %i.gd, %bb.ac ]
  %.0772 = phi i64 [ %i.fr, %bb.ab ], [ %.0.copyload.i930, %bb.ac ]
  %i.gg = and i64 %.0772, 4294967295
  %.val906 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gh = getelementptr inbounds nuw i8, ptr %.val906, i64 %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  %.0.copyload.i931 = load i32, ptr %i.gi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i931) #8, !srcloc !36
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AArrayImpl0x3A0x3A_setOwnIndexedImpl0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20int0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.c, i32 noundef %i.ck, i32 noundef %3, i32 noundef %.1779, i32 noundef %.0776) #8
  %i.gj = and i32 %.0.copyload.i931, 2147483647
  %i.gk = zext nneg i32 %i.gj to i64
  %i.gl = add i64 %.0771, %i.gk                   ; 3 uses
  %i.gm = lshr i64 %i.gl, 32
  %i.gn = trunc nuw i64 %i.gm to i32
  %i.go = or i32 %.0773, %i.gn                    ; 2 uses
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A0x7EGCScope0x280x29(ptr noundef nonnull %0, i32 noundef %i.di) #8
  %i.gp = add i32 %.1779, 1                       ; 2 uses
  %.not803 = icmp eq i32 %i.gp, %.0.copyload.i908
  br i1 %.not803, label %bb.ae, label %bb.w

bb.ae:                                            ; preds = %bb.ad
  %.not804 = icmp eq i32 %i.go, 0
  br i1 %.not804, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.val866 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gq = getelementptr inbounds nuw i8, ptr %.val866, i64 %i.dg
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 48
  store i32 0, ptr %i.gr, align 1
  %.val892 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gs = getelementptr inbounds nuw i8, ptr %.val892, i64 %i.dg
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 40
  store i64 115964116993, ptr %i.gt, align 1
  %.val865 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gu = getelementptr inbounds nuw i8, ptr %.val865, i64 %i.dg
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  store i32 3, ptr %i.gv, align 1
  %.val864 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gw = getelementptr inbounds nuw i8, ptr %.val864, i64 %i.dh
  store i32 22519, ptr %i.gw, align 1
  %i.gx = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseRangeError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %i.di) #8 ; 0 uses
  br label %bb.bb

bb.ag:                                            ; preds = %bb.ae
  %i.gy = trunc i64 %i.gl to i32                  ; 3 uses
  %i.gz = icmp ult i32 %i.gy, 65536
  br i1 %i.gz, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ADynamicStringPrimitive0x3Cchar16_t0x2C0x20false0x3E0x3A0x3Acreate0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.di, i32 noundef %3, i32 noundef %i.gy) #8
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AExternalStringPrimitive0x3Cchar16_t0x3E0x3A0x3Acreate0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.di, i32 noundef %3, i32 noundef %i.gy) #8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.val832 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ha = getelementptr inbounds nuw i8, ptr %.val832, i64 %i.dh
  %.0.copyload.i932 = load i32, ptr %i.ha, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i932) #8, !srcloc !14
  %.not805 = icmp eq i32 %.0.copyload.i932, 0
  br i1 %.not805, label %bb.bb, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.val905 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hb = getelementptr inbounds nuw i8, ptr %.val905, i64 %i.dg
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 24
  %.0.copyload.i933 = load i32, ptr %i.hc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i933) #8, !srcloc !36
  %i.hd = zext i32 %.0.copyload.i933 to i64
  %i.he = or disjoint i64 %i.hd, -844424930131968 ; 2 uses
  %.val831 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hf = getelementptr inbounds nuw i8, ptr %.val831, i64 %i.as
  %.0.copyload.i934 = load i32, ptr %i.hf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i934) #8, !srcloc !14
  %i.hg = zext i32 %.0.copyload.i934 to i64       ; 2 uses
  %i.hh = add nuw nsw i64 %i.hg, 164              ; 2 uses
  %.val830 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hi = getelementptr inbounds nuw i8, ptr %.val830, i64 %i.hh
  %.0.copyload.i935 = load i32, ptr %i.hi, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i935) #8, !srcloc !14
  %.val829 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hj = getelementptr inbounds nuw i8, ptr %.val829, i64 %i.hg
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 168
  %.0.copyload.i936 = load i32, ptr %i.hk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i936) #8, !srcloc !14
  %i.hl = icmp ult i32 %.0.copyload.i935, %.0.copyload.i936
  br i1 %i.hl, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.hm = add i32 %.0.copyload.i935, 8
  %.val863 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hn = getelementptr inbounds nuw i8, ptr %.val863, i64 %i.hh
  store i32 %i.hm, ptr %i.hn, align 1
  %i.ho = zext i32 %.0.copyload.i935 to i64
  %.val891 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hp = getelementptr inbounds nuw i8, ptr %.val891, i64 %i.ho
  store i64 %i.he, ptr %i.hp, align 1
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.hq = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i934, i64 noundef %i.he) #8
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.2 = phi i32 [ %.0.copyload.i935, %bb.al ], [ %i.hq, %bb.am ]
  %.val862 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hr = getelementptr inbounds nuw i8, ptr %.val862, i64 %i.dg
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  store i32 0, ptr %i.hs, align 1
  %.val861 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ht = getelementptr inbounds nuw i8, ptr %.val861, i64 %i.dg
  store i32 %.2, ptr %i.ht, align 1
  %.val = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hu = getelementptr inbounds nuw i8, ptr %.val, i64 %i.dg
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 12
  store i8 1, ptr %i.hv, align 1
  %.val860 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hw = getelementptr inbounds nuw i8, ptr %.val860, i64 %i.dg
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  store i32 %3, ptr %i.hx, align 1
  %.val828 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hy = getelementptr inbounds nuw i8, ptr %.val828, i64 %i.as
  %.0.copyload.i937 = load i32, ptr %i.hy, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i937) #8, !srcloc !14
  %i.hz = zext i32 %.0.copyload.i937 to i64       ; 2 uses
  %i.ia = add nuw nsw i64 %i.hz, 164              ; 2 uses
  %.val827 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ib = getelementptr inbounds nuw i8, ptr %.val827, i64 %i.ia
  %.0.copyload.i938 = load i32, ptr %i.ib, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i938) #8, !srcloc !14
  %.val826 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ic = getelementptr inbounds nuw i8, ptr %.val826, i64 %i.hz
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 168
  %.0.copyload.i939 = load i32, ptr %i.id, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i939) #8, !srcloc !14
  %i.ie = icmp ult i32 %.0.copyload.i938, %.0.copyload.i939
  br i1 %i.ie, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.if = add i32 %.0.copyload.i938, 8
  %.val859 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ig = getelementptr inbounds nuw i8, ptr %.val859, i64 %i.ia
  store i32 %i.if, ptr %i.ig, align 1
  %i.ih = zext i32 %.0.copyload.i938 to i64
  %.val890 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ii = getelementptr inbounds nuw i8, ptr %.val890, i64 %i.ih
  store i64 -844424930131968, ptr %i.ii, align 1
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.ij = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i937, i64 noundef -844424930131968) #8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.1777 = phi i32 [ %.0.copyload.i938, %bb.ao ], [ %i.ij, %bb.ap ] ; 3 uses
  %i.ik = zext i32 %i.ck to i64                   ; 2 uses
  %.val825 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.il = getelementptr inbounds nuw i8, ptr %.val825, i64 %i.ik
  %.0.copyload.i940 = load i32, ptr %i.il, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i940) #8, !srcloc !14
  %i.im = zext i32 %.0.copyload.i940 to i64       ; 3 uses
  %.val824 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.in = getelementptr inbounds nuw i8, ptr %.val824, i64 %i.im
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 20
  %.0.copyload.i941 = load i32, ptr %i.io, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i941) #8, !srcloc !14
  %.not806 = icmp eq i32 %.0.copyload.i941, 0
  br i1 %.not806, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %.val823 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ip = getelementptr inbounds nuw i8, ptr %.val823, i64 %i.im
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 24
  %.0.copyload.i942 = load i32, ptr %i.iq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i942) #8, !srcloc !14
  %.not807 = icmp eq i32 %.0.copyload.i942, 0
  br i1 %.not807, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.val822 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ir = getelementptr inbounds nuw i8, ptr %.val822, i64 %i.im
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 28
  %.0.copyload.i943 = load i32, ptr %i.is, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i943) #8, !srcloc !14
  %i.it = zext i32 %.0.copyload.i943 to i64
  %.val904 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.iu = getelementptr inbounds nuw i8, ptr %.val904, i64 %i.it
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %.0.copyload.i944 = load i32, ptr %i.iv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i944) #8, !srcloc !36
  %i.iw = and i32 %.0.copyload.i944, -8
  %i.ix = zext i32 %i.iw to i64
  %i.iy = or disjoint i64 %i.ix, -844424930131968
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.aq, %bb.as
  %.1 = phi i64 [ -844424930131968, %bb.aq ], [ -844424930131968, %bb.ar ], [ %i.iy, %bb.as ] ; 2 uses
  %i.iz = zext i32 %.1777 to i64                  ; 2 uses
  %.val889 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ja = getelementptr inbounds nuw i8, ptr %.val889, i64 %i.iz
  store i64 %.1, ptr %i.ja, align 1
  %i.jb = and i64 %.1, 4294967295
  %.val821 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.jc = getelementptr inbounds nuw i8, ptr %.val821, i64 %i.jb
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 4
  %.0.copyload.i945 = load i32, ptr %i.jd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i945) #8, !srcloc !14
  %i.je = and i32 %.0.copyload.i945, 2147483647
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AStringBuilder0x3A0x3AappendStringPrim0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3E0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.c, i32 noundef %.1777, i32 noundef %i.je) #8
  %.not808 = icmp eq i32 %.0.copyload.i908, 1
  br i1 %.not808, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.at, %bb.az
  %.0780 = phi i32 [ %i.kq, %bb.az ], [ 1, %bb.at ] ; 4 uses
  %.val820 = load ptr, ptr %i.d, align 8, !tbaa !12
end_hunk_2
