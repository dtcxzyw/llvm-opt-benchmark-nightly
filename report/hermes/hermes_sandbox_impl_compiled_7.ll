Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_7?download=true
inline.NumInlined: 10002
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3Avector0x3Cstd0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Aregex0x3A0x3ANode0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Aregex0x3A0x3ANode0x3E0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cstd0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Aregex0x3A0x3ANode0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Aregex0x3A0x3ANode0x3E0x3E0x3E0x3E0x3A0x3A_0x5Fpush_back_slow_path0x3Cstd0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Aregex0x3A0x3ANode0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Aregex0x3A0x3ANode0x3E0x3E0x3E0x28std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Aregex0x3A0x3ANode0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Aregex0x3A0x3ANode0x3E0x3E0x260x260x29:bb.a
  %.not.i = icmp eq i32 %i.cr, 0
  br i1 %.not.i, label %func_types_eq.exit.thread, label %.critedge, !prof !28

.critedge:                                        ; preds = %func_types_eq.exit, %bb.j, %bb.k, %bb.m, %bb.h, %bb.f, %bb.g
  tail call void @wasm_rt_trap(i32 noundef 6) #14
  unreachable

func_types_eq.exit.thread:                        ; preds = %bb.l, %func_types_eq.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !27
  tail call void %i.ce(ptr noundef %i.ct, i32 noundef %.0.copyload.i250) #13
  br label %bb.n

bb.n:                                             ; preds = %func_types_eq.exit.thread, %.preheader.split
  %.not218 = icmp eq i32 %i.bp, %.0.copyload.i249
  br i1 %.not218, label %.loopexit, label %.preheader.split

bb.o:                                             ; preds = %bb.a
  tail call void @w2c_hermes_abort(ptr noundef nonnull %0) #13
  tail call void @wasm_rt_trap(i32 noundef 5) #14
  unreachable

bb.p:                                             ; preds = %bb.c
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3A_0x5Fthrow_out_of_range0x5Babi0x3Av150070x5D0x28char0x20const0x2A0x29(ptr noundef nonnull %0)
  unreachable

bb.q:                                             ; preds = %._crit_edge
  %.val233 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.cu = getelementptr inbounds nuw i8, ptr %.val233, i64 %i.j
  store i32 %i.aa, ptr %i.cu, align 1
  %.val232 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.cv = getelementptr inbounds nuw i8, ptr %.val232, i64 %i.c
  store i32 %i.ab, ptr %i.cv, align 1
  %.val231 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.cw = getelementptr inbounds nuw i8, ptr %.val231, i64 %i.b
  store i32 %i.x, ptr %i.cw, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %bb.i, %bb.e, %bb.q
  %.2 = phi i32 [ %.0.copyload.i245, %bb.q ], [ %.0.copyload.i248, %bb.e ], [ %.0.copyload.i249, %bb.i ], [ %.0.copyload.i249, %bb.n ] ; 2 uses
  %.not219 = icmp eq i32 %.2, 0
  br i1 %.not219, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.loopexit
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.2) #13
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.loopexit
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Aenable_if0x3C_0x5Fis_cpp17_random_access_iterator0x3Cchar0x20const0x2A0x3E0x3A0x3Avalue0x2C0x20char0x2A0x3E0x3A0x3Atype0x20std0x3A0x3A_0x5F20x3A0x3Acopy_n0x5Babi0x3Av150070x5D0x3Cchar0x20const0x2A0x2C0x20unsigned0x20long0x2C0x20char0x2A0x3E0x28char0x20const0x2A0x2C0x20unsigned0x20long0x2C0x20char0x2A0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32   ; 4 uses
  %i.c = add i32 %i.b, -48                        ; 2 uses
  %i.d = add i32 %i.b, -64                        ; 2 uses
  store i32 %i.d, ptr %i.a, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 23 uses
  %i.f = zext i32 %i.d to i64                     ; 2 uses
  %i.g = add nuw nsw i64 %i.f, 12                 ; 2 uses
  %.val192 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %.val192, i64 %i.g
  store i32 %1, ptr %i.h, align 1
  %i.i = add i32 %2, %1
  %i.j = add nuw nsw i64 %i.f, 8                  ; 2 uses
  %.val191 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %.val191, i64 %i.j
  store i32 %i.i, ptr %i.k, align 1
  %.val180 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %.val180, i64 %i.g
  %.0.copyload.i = load i32, ptr %i.l, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #13, !srcloc !14
  %i.m = zext i32 %i.c to i64                     ; 6 uses
  %i.n = add nuw nsw i64 %i.m, 24                 ; 2 uses
  %.val190 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %.val190, i64 %i.n
  store i32 %.0.copyload.i, ptr %i.o, align 1
  %.val179 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %.val179, i64 %i.j
  %.0.copyload.i193 = load i32, ptr %i.p, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i193) #13, !srcloc !14
  %i.q = add nuw nsw i64 %i.m, 28                 ; 2 uses
  %.val189 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %.val189, i64 %i.q
  store i32 %.0.copyload.i193, ptr %i.r, align 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !32
  %.val178 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %.val178, i64 %i.n
  %.0.copyload.i194 = load i32, ptr %i.s, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i194) #13, !srcloc !14
  %.val177 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %.val177, i64 %i.q
  %.0.copyload.i195 = load i32, ptr %i.t, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i195) #13, !srcloc !14
  %i.u = load i32, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.v = add i32 %i.u, -16                        ; 2 uses
  store i32 %i.v, ptr %i.a, align 8, !tbaa !32
  %i.w = sub i32 %.0.copyload.i195, %.0.copyload.i194 ; 2 uses
  %.not = icmp eq i32 %.0.copyload.i194, %.0.copyload.i195
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %.0.copyload.i194, i32 noundef %i.w) #13 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.y = add i32 %i.b, -16                        ; 2 uses
  %i.z = zext i32 %i.v to i64                     ; 2 uses
  %i.aa = add nuw nsw i64 %i.z, 12                ; 2 uses
  %.val188 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %.val188, i64 %i.aa
  store i32 %.0.copyload.i195, ptr %i.ab, align 1
  %i.ac = add i32 %i.w, %3
  %i.ad = add nuw nsw i64 %i.z, 8                 ; 2 uses
  %.val187 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %.val187, i64 %i.ad
  store i32 %i.ac, ptr %i.ae, align 1
  %.val176 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.af = getelementptr inbounds nuw i8, ptr %.val176, i64 %i.aa
  %.0.copyload.i196 = load i32, ptr %i.af, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i196) #13, !srcloc !14
  %i.ag = add nuw nsw i64 %i.m, 16                ; 2 uses
  %.val186 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ah = getelementptr inbounds nuw i8, ptr %.val186, i64 %i.ag
  store i32 %.0.copyload.i196, ptr %i.ah, align 1
  %.val175 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %.val175, i64 %i.ad
  %.0.copyload.i197 = load i32, ptr %i.ai, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i197) #13, !srcloc !14
  %i.aj = add nuw nsw i64 %i.m, 20                ; 2 uses
  %.val185 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %.val185, i64 %i.aj
  store i32 %.0.copyload.i197, ptr %i.ak, align 1
  store i32 %i.u, ptr %i.a, align 8, !tbaa !32
  %.val174 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.al = getelementptr inbounds nuw i8, ptr %.val174, i64 %i.ag
  %.0.copyload.i198 = load i32, ptr %i.al, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i198) #13, !srcloc !14
  %i.am = add nuw nsw i64 %i.m, 12                ; 2 uses
  %.val184 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.an = getelementptr inbounds nuw i8, ptr %.val184, i64 %i.am
  store i32 %.0.copyload.i198, ptr %i.an, align 1
  %.val173 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ao = getelementptr inbounds nuw i8, ptr %.val173, i64 %i.aj
  %.0.copyload.i199 = load i32, ptr %i.ao, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i199) #13, !srcloc !14
  %i.ap = add nuw nsw i64 %i.m, 8                 ; 2 uses
  %.val183 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.aq = getelementptr inbounds nuw i8, ptr %.val183, i64 %i.ap
  store i32 %.0.copyload.i199, ptr %i.aq, align 1
  %.val172 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ar = getelementptr inbounds nuw i8, ptr %.val172, i64 %i.am
  %.0.copyload.i200 = load i32, ptr %i.ar, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i200) #13, !srcloc !14
  %i.as = zext i32 %i.y to i64                    ; 2 uses
  %.val182 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %.val182, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 %.0.copyload.i200, ptr %i.au, align 1
  %.val171 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.av = getelementptr inbounds nuw i8, ptr %.val171, i64 %i.ap
  %.0.copyload.i201 = load i32, ptr %i.av, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i201) #13, !srcloc !14
  %i.aw = add nuw nsw i64 %i.as, 12               ; 2 uses
  %.val181 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ax = getelementptr inbounds nuw i8, ptr %.val181, i64 %i.aw
  store i32 %.0.copyload.i201, ptr %i.ax, align 1
  store i32 %i.y, ptr %i.a, align 8, !tbaa !32
  %.val = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ay = getelementptr inbounds nuw i8, ptr %.val, i64 %i.aw
  %.0.copyload.i202 = load i32, ptr %i.ay, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i202) #13, !srcloc !14
  store i32 %i.b, ptr %i.a, align 8, !tbaa !32
  ret i32 %.0.copyload.i202
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x20hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3A0x3AarrayToString0x3Cchar0x3E0x28llvh0x3A0x3AArrayRef0x3Cchar0x3E0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 25 uses
  %i.b = zext i32 %2 to i64                       ; 2 uses
  %.val178 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %.val178, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 10 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #13, !srcloc !14
  %i.e = icmp ult i32 %.0.copyload.i, 2147483632
  br i1 %i.e, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 %i.b
  %.0.copyload.i202 = load i32, ptr %i.f, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i202) #13, !srcloc !14
  %i.g = icmp samesign ugt i32 %.0.copyload.i, 10
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = or i32 %.0.copyload.i, 15                ; 2 uses
  %i.i = add nuw nsw i32 %i.h, 1
  %i.j = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.i) ; 2 uses
  %3 = add nuw nsw i32 %i.h, -2147483647
  %i.k = zext i32 %1 to i64                       ; 3 uses
  %.val181 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %.val181, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 %3, ptr %i.m, align 1
  %.val180 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %.val180, i64 %i.k
  store i32 %i.j, ptr %i.n, align 1
  %.val179 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %.val179, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 %.0.copyload.i, ptr %i.p, align 1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.q = zext i32 %1 to i64
  %.val201 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.r = trunc nuw nsw i32 %.0.copyload.i to i8
  %i.s = getelementptr inbounds nuw i8, ptr %.val201, i64 %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 11
  store i8 %i.r, ptr %i.t, align 1
  %.not = icmp eq i32 %.0.copyload.i, 0
  br i1 %.not, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0171 = phi i32 [ %i.j, %bb.c ], [ %1, %bb.d ] ; 2 uses
  %i.u = and i32 %.0.copyload.i, 7                ; 2 uses
  %.not175 = icmp eq i32 %i.u, 0
  br i1 %.not175, label %.loopexit212, label %.preheader

.preheader:                                       ; preds = %bb.e, %.preheader
  %.1172 = phi i32 [ %i.z, %.preheader ], [ %.0171, %bb.e ] ; 2 uses
  %.0170 = phi i32 [ %i.aa, %.preheader ], [ %.0.copyload.i202, %bb.e ] ; 2 uses
  %.0 = phi i32 [ %i.ab, %.preheader ], [ 0, %bb.e ]
  %i.v = zext i32 %.0170 to i64
  %.val190 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %.val190, i64 %i.v
  %.0.copyload.i203 = load i8, ptr %i.w, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i203) #13, !srcloc !31
  %i.x = zext i32 %.1172 to i64
  %.val200 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %.val200, i64 %i.x
  store i8 %.0.copyload.i203, ptr %i.y, align 1
  %i.z = add i32 %.1172, 1                        ; 2 uses
  %i.aa = add i32 %.0170, 1                       ; 2 uses
  %i.ab = add nuw nsw i32 %.0, 1                  ; 2 uses
  %.not176 = icmp eq i32 %i.ab, %i.u
  br i1 %.not176, label %.loopexit212, label %.preheader

.loopexit212:                                     ; preds = %.preheader, %bb.e
  %.2173 = phi i32 [ %.0171, %bb.e ], [ %i.z, %.preheader ] ; 2 uses
  %.1 = phi i32 [ %.0.copyload.i202, %bb.e ], [ %i.aa, %.preheader ]
  %i.ac = icmp samesign ult i32 %.0.copyload.i, 8
  br i1 %i.ac, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.loopexit212
  %i.ad = add i32 %.0.copyload.i202, %.0.copyload.i
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.3 = phi i32 [ %.2173, %bb.f ], [ %i.bk, %bb.g ] ; 2 uses
  %.2 = phi i32 [ %.1, %bb.f ], [ %i.bl, %bb.g ]  ; 2 uses
  %i.ae = zext i32 %.2 to i64                     ; 8 uses
  %.val189 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.af = getelementptr inbounds nuw i8, ptr %.val189, i64 %i.ae
  %.0.copyload.i204 = load i8, ptr %i.af, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i204) #13, !srcloc !31
  %i.ag = zext i32 %.3 to i64                     ; 8 uses
  %.val199 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ah = getelementptr inbounds nuw i8, ptr %.val199, i64 %i.ag
  store i8 %.0.copyload.i204, ptr %i.ah, align 1
  %.val188 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %.val188, i64 %i.ae
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %.0.copyload.i205 = load i8, ptr %i.aj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i205) #13, !srcloc !31
  %.val198 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %.val198, i64 %i.ag
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  store i8 %.0.copyload.i205, ptr %i.al, align 1
  %.val187 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %.val187, i64 %i.ae
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %.0.copyload.i206 = load i8, ptr %i.an, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i206) #13, !srcloc !31
  %.val197 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ao = getelementptr inbounds nuw i8, ptr %.val197, i64 %i.ag
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  store i8 %.0.copyload.i206, ptr %i.ap, align 1
  %.val186 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.aq = getelementptr inbounds nuw i8, ptr %.val186, i64 %i.ae
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 3
  %.0.copyload.i207 = load i8, ptr %i.ar, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i207) #13, !srcloc !31
  %.val196 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %.val196, i64 %i.ag
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 3
  store i8 %.0.copyload.i207, ptr %i.at, align 1
  %.val185 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %.val185, i64 %i.ae
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %.0.copyload.i208 = load i8, ptr %i.av, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i208) #13, !srcloc !31
  %.val195 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.aw = getelementptr inbounds nuw i8, ptr %.val195, i64 %i.ag
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  store i8 %.0.copyload.i208, ptr %i.ax, align 1
  %.val184 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ay = getelementptr inbounds nuw i8, ptr %.val184, i64 %i.ae
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 5
  %.0.copyload.i209 = load i8, ptr %i.az, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i209) #13, !srcloc !31
  %.val194 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ba = getelementptr inbounds nuw i8, ptr %.val194, i64 %i.ag
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 5
  store i8 %.0.copyload.i209, ptr %i.bb, align 1
  %.val183 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.bc = getelementptr inbounds nuw i8, ptr %.val183, i64 %i.ae
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 6
  %.0.copyload.i210 = load i8, ptr %i.bd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i210) #13, !srcloc !31
  %.val193 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.be = getelementptr inbounds nuw i8, ptr %.val193, i64 %i.ag
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 6
  store i8 %.0.copyload.i210, ptr %i.bf, align 1
  %.val182 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.bg = getelementptr inbounds nuw i8, ptr %.val182, i64 %i.ae
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 7
  %.0.copyload.i211 = load i8, ptr %i.bh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i211) #13, !srcloc !31
  %.val192 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.bi = getelementptr inbounds nuw i8, ptr %.val192, i64 %i.ag
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 7
  store i8 %.0.copyload.i211, ptr %i.bj, align 1
  %i.bk = add i32 %.3, 8                          ; 2 uses
  %i.bl = add i32 %.2, 8                          ; 2 uses
  %.not177 = icmp eq i32 %i.bl, %i.ad
  br i1 %.not177, label %.loopexit, label %bb.g

.loopexit:                                        ; preds = %bb.g, %.loopexit212, %bb.d
  %.4 = phi i32 [ %.2173, %.loopexit212 ], [ %1, %bb.d ], [ %i.bk, %bb.g ]
  %i.bm = zext i32 %.4 to i64
  %.val191 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.bn = getelementptr inbounds nuw i8, ptr %.val191, i64 %i.bm
  store i8 0, ptr %i.bn, align 1
  ret void

bb.h:                                             ; preds = %bb.a
  tail call void @w2c_hermes_abort(ptr noundef nonnull %0) #13
  tail call void @wasm_rt_trap(i32 noundef 5) #14
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden range(i32 128, 1114112) i32 @w2c_hermes_unsigned0x20int0x20hermes0x3A0x3A_decodeUTF8SlowPath0x3Cfalse0x2C0x20hermes0x3A0x3Aparser0x3A0x3AJSLexer0x3A0x3AdecodeUTF80x280x290x3A0x3A0x27lambda0x270x28llvh0x3A0x3ATwine0x20const0x260x290x3E0x28char0x20const0x2A0x260x2C0x20hermes0x3A0x3Aparser0x3A0x3AJSLexer0x3A0x3AdecodeUTF80x280x290x3A0x3A0x27lambda0x270x28llvh0x3A0x3ATwine0x20const0x260x290x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32   ; 20 uses
  %i.c = add i32 %i.b, -48                        ; 16 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 49 uses
  %i.e = zext i32 %1 to i64                       ; 8 uses
  %.val = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 %i.e
  %.0.copyload.i = load i32, ptr %i.f, align 1    ; 11 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #13, !srcloc !14
  %i.g = zext i32 %.0.copyload.i to i64           ; 7 uses
  %.val571 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %.val571, i64 %i.g
  %.0.copyload.i572 = load i8, ptr %i.h, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i572) #13, !srcloc !36
  %i.i = sext i8 %.0.copyload.i572 to i32         ; 7 uses
  %i.j = and i32 %i.i, 224
  %i.k = icmp eq i32 %i.j, 192
  br i1 %i.k, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.val549 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %.val549, i64 %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %.0.copyload.i573 = load i8, ptr %i.m, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i573) #13, !srcloc !31
  %i.n = zext i8 %.0.copyload.i573 to i32         ; 2 uses
  %i.o = and i32 %i.n, 192
  %.not518 = icmp eq i32 %i.o, 128
  %.val544 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %.val544, i64 %i.e ; 2 uses
  br i1 %.not518, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = add i32 %.0.copyload.i, 1
  store i32 %i.q, ptr %i.p, align 1
  %i.r = zext i32 %i.c to i64                     ; 2 uses
  %.val545 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %.val545, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 36
  store i32 46896, ptr %i.t, align 1
  %.val567 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %.val567, i64 %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 44
end_hunk_0
begin_hunk_1_@w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Aenable_if0x3C_0x5Fis_cpp17_forward_iterator0x3Cchar0x20const0x2A0x3E0x3A0x3Avalue0x2C0x20std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x260x3E0x3A0x3Atype0x20std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3A0x3Aappend0x5Babi0x3Av150070x5D0x3Cchar0x20const0x2A0x3E0x28char0x20const0x2A0x2C0x20char0x20const0x2A0x29:bb.a
  %i.o = sub i32 %3, %2                           ; 11 uses
  %.val377 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %.val377, i64 %i.f
  %.0.copyload.i413 = load i32, ptr %i.p, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i413) #13, !srcloc !14
  %i.q = select i1 %.not, i32 %1, i32 %.0.copyload.i413 ; 2 uses
  %i.r = icmp ult i32 %2, %i.q
  %i.s = add i32 %i.q, %i.n
  %i.t = icmp ult i32 %i.s, %2
  %.not367 = or i1 %i.r, %i.t
  br i1 %.not367, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.u = and i32 %.0.copyload.i, 2147483647
  %i.v = add nsw i32 %i.u, -1
  %i.w = select i1 %.not, i32 10, i32 %i.v        ; 3 uses
  %i.x = sub i32 %i.w, %i.n
  %.not369 = icmp ugt i32 %i.o, %i.x
  br i1 %.not369, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = lshr i32 %.0.copyload.i, 24
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.z = add i32 %i.n, %i.o
  %i.aa = sub i32 %i.z, %i.w
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3A0x3A_0x5Fgrow_by0x28unsigned0x20long0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.w, i32 noundef %i.aa, i32 noundef %i.n, i32 noundef %i.n, i32 noundef 0, i32 noundef 0)
  %.val376 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %.val376, i64 %i.f
  %.0.copyload.i414 = load i32, ptr %i.ab, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i414) #13, !srcloc !14
  %.val394 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %.val394, i64 %i.k
  %.0.copyload.i415 = load i8, ptr %i.ac, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i415) #13, !srcloc !31
  %i.ad = zext i8 %.0.copyload.i415 to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0355 = phi i32 [ %.0.copyload.i413, %bb.d ], [ %.0.copyload.i414, %bb.e ]
  %.0 = phi i32 [ %i.y, %bb.d ], [ %i.ad, %bb.e ]
  %.not370 = icmp samesign ult i32 %.0, 128
  %i.ae = select i1 %.not370, i32 %1, i32 %.0355
  %i.af = add i32 %i.ae, %i.n                     ; 2 uses
  %i.ag = and i32 %i.o, 7                         ; 2 uses
  %.not371 = icmp eq i32 %i.ag, 0
  br i1 %.not371, label %.loopexit432, label %.preheader431

.preheader431:                                    ; preds = %bb.f, %.preheader431
  %.0358 = phi i32 [ %i.al, %.preheader431 ], [ %2, %bb.f ] ; 2 uses
  %.0357 = phi i32 [ %i.am, %.preheader431 ], [ %i.af, %bb.f ] ; 2 uses
  %.0356 = phi i32 [ %i.an, %.preheader431 ], [ 0, %bb.f ]
  %i.ah = zext i32 %.0358 to i64
  %.val393 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %.val393, i64 %i.ah
  %.0.copyload.i416 = load i8, ptr %i.ai, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i416) #13, !srcloc !31
  %i.aj = zext i32 %.0357 to i64
  %.val408 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %.val408, i64 %i.aj
  store i8 %.0.copyload.i416, ptr %i.ak, align 1
  %i.al = add i32 %.0358, 1                       ; 2 uses
  %i.am = add i32 %.0357, 1                       ; 2 uses
  %i.an = add nuw nsw i32 %.0356, 1               ; 2 uses
  %.not372 = icmp eq i32 %i.an, %i.ag
  br i1 %.not372, label %.loopexit432, label %.preheader431

.loopexit432:                                     ; preds = %.preheader431, %bb.f
  %.1359 = phi i32 [ %2, %bb.f ], [ %i.al, %.preheader431 ]
  %.1 = phi i32 [ %i.af, %bb.f ], [ %i.am, %.preheader431 ] ; 2 uses
  %i.ao = sub i32 %2, %3
  %i.ap = icmp ult i32 %i.ao, -7
  br i1 %i.ap, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.loopexit432, %.preheader
  %.2360 = phi i32 [ %i.bx, %.preheader ], [ %.1359, %.loopexit432 ] ; 2 uses
  %.2 = phi i32 [ %i.bw, %.preheader ], [ %.1, %.loopexit432 ] ; 2 uses
  %i.aq = zext i32 %.2360 to i64                  ; 8 uses
  %.val392 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ar = getelementptr inbounds nuw i8, ptr %.val392, i64 %i.aq
  %.0.copyload.i417 = load i8, ptr %i.ar, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i417) #13, !srcloc !31
  %i.as = zext i32 %.2 to i64                     ; 8 uses
  %.val407 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %.val407, i64 %i.as
  store i8 %.0.copyload.i417, ptr %i.at, align 1
  %.val391 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %.val391, i64 %i.aq
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %.0.copyload.i418 = load i8, ptr %i.av, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i418) #13, !srcloc !31
  %.val406 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.aw = getelementptr inbounds nuw i8, ptr %.val406, i64 %i.as
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  store i8 %.0.copyload.i418, ptr %i.ax, align 1
  %.val390 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ay = getelementptr inbounds nuw i8, ptr %.val390, i64 %i.aq
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %.0.copyload.i419 = load i8, ptr %i.az, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i419) #13, !srcloc !31
  %.val405 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ba = getelementptr inbounds nuw i8, ptr %.val405, i64 %i.as
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  store i8 %.0.copyload.i419, ptr %i.bb, align 1
  %.val389 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bc = getelementptr inbounds nuw i8, ptr %.val389, i64 %i.aq
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 3
  %.0.copyload.i420 = load i8, ptr %i.bd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i420) #13, !srcloc !31
  %.val404 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.be = getelementptr inbounds nuw i8, ptr %.val404, i64 %i.as
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 3
  store i8 %.0.copyload.i420, ptr %i.bf, align 1
  %.val388 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bg = getelementptr inbounds nuw i8, ptr %.val388, i64 %i.aq
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %.0.copyload.i421 = load i8, ptr %i.bh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i421) #13, !srcloc !31
  %.val403 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bi = getelementptr inbounds nuw i8, ptr %.val403, i64 %i.as
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  store i8 %.0.copyload.i421, ptr %i.bj, align 1
  %.val387 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bk = getelementptr inbounds nuw i8, ptr %.val387, i64 %i.aq
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 5
  %.0.copyload.i422 = load i8, ptr %i.bl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i422) #13, !srcloc !31
  %.val402 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bm = getelementptr inbounds nuw i8, ptr %.val402, i64 %i.as
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 5
  store i8 %.0.copyload.i422, ptr %i.bn, align 1
  %.val386 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bo = getelementptr inbounds nuw i8, ptr %.val386, i64 %i.aq
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 6
  %.0.copyload.i423 = load i8, ptr %i.bp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i423) #13, !srcloc !31
  %.val401 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bq = getelementptr inbounds nuw i8, ptr %.val401, i64 %i.as
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 6
  store i8 %.0.copyload.i423, ptr %i.br, align 1
  %.val385 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bs = getelementptr inbounds nuw i8, ptr %.val385, i64 %i.aq
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 7
  %.0.copyload.i424 = load i8, ptr %i.bt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i424) #13, !srcloc !31
  %.val400 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bu = getelementptr inbounds nuw i8, ptr %.val400, i64 %i.as
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 7
  store i8 %.0.copyload.i424, ptr %i.bv, align 1
  %i.bw = add i32 %.2, 8                          ; 2 uses
  %i.bx = add i32 %.2360, 8                       ; 2 uses
  %.not373 = icmp eq i32 %i.bx, %3
  br i1 %.not373, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %.loopexit432
  %.3 = phi i32 [ %.1, %.loopexit432 ], [ %i.bw, %.preheader ]
  %i.by = zext i32 %.3 to i64
  %.val399 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bz = getelementptr inbounds nuw i8, ptr %.val399, i64 %i.by
  store i8 0, ptr %i.bz, align 1
  %i.ca = add i32 %i.n, %i.o                      ; 2 uses
  %.val410 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.cb = getelementptr inbounds nuw i8, ptr %.val410, i64 %i.k
  %.0.copyload.i425 = load i8, ptr %i.cb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i425) #13, !srcloc !36
  %i.cc = icmp slt i8 %.0.copyload.i425, 0
  %.val383 = load ptr, ptr %i.e, align 8, !tbaa !13 ; 2 uses
  br i1 %i.cc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.loopexit
  %i.cd = getelementptr inbounds nuw i8, ptr %.val383, i64 %i.i
  store i32 %i.ca, ptr %i.cd, align 1
  br label %bb.o

bb.h:                                             ; preds = %.loopexit
  %i.ce = trunc i32 %i.ca to i8
  %i.cf = getelementptr inbounds nuw i8, ptr %.val383, i64 %i.k
  store i8 %i.ce, ptr %i.cf, align 1
  br label %bb.o

bb.i:                                             ; preds = %bb.b
  %i.cg = icmp ugt i32 %i.o, 2147483631
  br i1 %i.cg, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ch = icmp samesign ult i32 %i.o, 11
  br i1 %i.ch, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ci = zext i32 %i.c to i64                    ; 2 uses
  %.val397 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.cj = trunc nuw nsw i32 %i.o to i8
  %i.ck = getelementptr inbounds nuw i8, ptr %.val397, i64 %i.ci
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 15
  store i8 %i.cj, ptr %i.cl, align 1
  %i.cm = add i32 %i.b, -12                       ; 2 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.cn = or i32 %i.o, 15                         ; 2 uses
  %i.co = add nuw nsw i32 %i.cn, 1
  %i.cp = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.co) ; 2 uses
  %4 = add nuw nsw i32 %i.cn, -2147483647
  %i.cq = zext i32 %i.c to i64                    ; 4 uses
  %.val382 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.cr = getelementptr inbounds nuw i8, ptr %.val382, i64 %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  store i32 %4, ptr %i.cs, align 1
  %.val381 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ct = getelementptr inbounds nuw i8, ptr %.val381, i64 %i.cq
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  store i32 %i.cp, ptr %i.cu, align 1
  %.val380 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.cv = getelementptr inbounds nuw i8, ptr %.val380, i64 %i.cq
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i32 %i.o, ptr %i.cw, align 1
  %.pre = add i32 %i.b, -12
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pre-phi437 = phi i32 [ %.pre, %bb.l ], [ %i.cm, %bb.k ]
  %.pre-phi = phi i64 [ %i.cq, %bb.l ], [ %i.ci, %bb.k ] ; 3 uses
  %.4 = phi i32 [ %i.cp, %bb.l ], [ %i.cm, %bb.k ]
  %i.cx = tail call i32 @w2c_hermes_0x5F_memcpy(ptr noundef nonnull %0, i32 noundef %.4, i32 noundef %2, i32 noundef %i.o) #13
  %i.cy = add i32 %i.cx, %i.o
  %i.cz = zext i32 %i.cy to i64
  %.val396 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.da = getelementptr inbounds nuw i8, ptr %.val396, i64 %i.cz
  store i8 0, ptr %i.da, align 1
  %i.db = add nuw nsw i64 %.pre-phi, 4            ; 2 uses
  %.val375 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.dc = getelementptr inbounds nuw i8, ptr %.val375, i64 %i.db
  %.0.copyload.i426 = load i32, ptr %i.dc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i426) #13, !srcloc !14
  %i.dd = add nuw nsw i64 %.pre-phi, 15           ; 2 uses
  %.val384 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.de = getelementptr inbounds nuw i8, ptr %.val384, i64 %i.dd
  %.0.copyload.i427 = load i8, ptr %i.de, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i427) #13, !srcloc !31
  %i.df = zext i8 %.0.copyload.i427 to i32
  %.not368 = icmp sgt i8 %.0.copyload.i427, -1    ; 2 uses
  %i.dg = select i1 %.not368, i32 %.pre-phi437, i32 %.0.copyload.i426
  %.val374 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.dh = getelementptr inbounds nuw i8, ptr %.val374, i64 %.pre-phi
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %.0.copyload.i428 = load i32, ptr %i.di, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i428) #13, !srcloc !14
  %i.dj = select i1 %.not368, i32 %i.df, i32 %.0.copyload.i428
  %i.dk = tail call i32 @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3A0x3Aappend0x28char0x20const0x2A0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.dg, i32 noundef %i.dj) ; 0 uses
  %.val409 = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.dl = getelementptr inbounds nuw i8, ptr %.val409, i64 %i.dd
  %.0.copyload.i429 = load i8, ptr %i.dl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i429) #13, !srcloc !36
  %i.dm = icmp sgt i8 %.0.copyload.i429, -1
  br i1 %i.dm, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.val = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.dn = getelementptr inbounds nuw i8, ptr %.val, i64 %i.db
  %.0.copyload.i430 = load i32, ptr %i.dn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i430) #13, !srcloc !14
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i430) #13
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.a, %bb.n, %bb.h, %bb.g
  store i32 %i.b, ptr %i.a, align 8, !tbaa !32
  ret void

bb.p:                                             ; preds = %bb.i
  tail call void @w2c_hermes_abort(ptr noundef nonnull %0) #13
  tail call void @wasm_rt_trap(i32 noundef 5) #14
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3A0x3Ainsert0x28unsigned0x20long0x2C0x20char0x20const0x2A0x29(ptr noundef %0, i32 noundef returned %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %2, 3
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %.loopexit70.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = zext i32 %2 to i64
  %.val65.i = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %.val65.i, i64 %i.c
  %.0.copyload.i.i = load i8, ptr %i.d, align 1   ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i.i) #13, !srcloc !31
  %.not58.i = icmp eq i8 %.0.copyload.i.i, 0
  br i1 %.not58.i, label %w2c_hermes_strlen.exit, label %.preheader69.i.preheader

.preheader69.i.preheader:                         ; preds = %bb.b
  %i.e = add i32 %2, 1                            ; 3 uses
  %i.f = and i32 %i.e, 3
  %.not59.i189 = icmp eq i32 %i.f, 0
  br i1 %.not59.i189, label %.loopexit70.i, label %.lr.ph

.preheader69.i:                                   ; preds = %.lr.ph
  %i.g = add i32 %i.i, 1                          ; 3 uses
  %i.h = and i32 %i.g, 3
  %.not59.i = icmp eq i32 %i.h, 0
  br i1 %.not59.i, label %.loopexit70.i, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader69.i.preheader, %.preheader69.i
  %i.i = phi i32 [ %i.g, %.preheader69.i ], [ %i.e, %.preheader69.i.preheader ] ; 3 uses
  %i.j = zext i32 %i.i to i64
  %.val64.i = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %.val64.i, i64 %i.j
  %.0.copyload.i66.i = load i8, ptr %i.k, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i66.i) #13, !srcloc !31
  %.not60.i = icmp eq i8 %.0.copyload.i66.i, 0
  br i1 %.not60.i, label %.loopexit.i, label %.preheader69.i

.loopexit70.i:                                    ; preds = %.preheader69.i, %.preheader69.i.preheader, %bb.a
  %.1.i = phi i32 [ %2, %bb.a ], [ %i.e, %.preheader69.i.preheader ], [ %i.g, %.preheader69.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.loopexit70.i
  %.2.i = phi i32 [ %.1.i, %.loopexit70.i ], [ %i.m, %bb.c ] ; 3 uses
  %i.m = add i32 %.2.i, 4
  %i.n = zext i32 %.2.i to i64
  %.val.i = load ptr, ptr %i.l, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.n
  %.0.copyload.i67.i = load i32, ptr %i.o, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i67.i) #13, !srcloc !14
  %i.p = sub i32 16843008, %.0.copyload.i67.i
  %i.q = or i32 %i.p, %.0.copyload.i67.i
  %i.r = and i32 %i.q, -2139062144
  %.not61.i = icmp eq i32 %i.r, -2139062144
  br i1 %.not61.i, label %bb.c, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c, %.preheader.i
  %.056.i = phi i32 [ %i.s, %.preheader.i ], [ %.2.i, %bb.c ] ; 3 uses
  %i.s = add i32 %.056.i, 1
  %i.t = zext i32 %.056.i to i64
  %.val63.i = load ptr, ptr %i.l, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %.val63.i, i64 %i.t
  %.0.copyload.i68.i = load i8, ptr %i.u, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i68.i) #13, !srcloc !31
  %.not62.i = icmp eq i8 %.0.copyload.i68.i, 0
  br i1 %.not62.i, label %.loopexit.i, label %.preheader.i

.loopexit.i:                                      ; preds = %.lr.ph, %.preheader.i
  %.3.i = phi i32 [ %.056.i, %.preheader.i ], [ %i.i, %.lr.ph ]
  %i.v = sub i32 %.3.i, %2
  br label %w2c_hermes_strlen.exit

w2c_hermes_strlen.exit:                           ; preds = %bb.b, %.loopexit.i
  %.0.i = phi i32 [ %i.v, %.loopexit.i ], [ 0, %bb.b ] ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !32   ; 2 uses
  %i.y = add i32 %i.x, -16                        ; 2 uses
  store i32 %i.y, ptr %i.w, align 8, !tbaa !32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 14 uses
  %i.aa = zext i32 %1 to i64                      ; 5 uses
  %i.ab = add nuw nsw i64 %i.aa, 11               ; 9 uses
  %.val169 = load ptr, ptr %i.z, align 8, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %.val169, i64 %i.ab
  %.0.copyload.i = load i8, ptr %i.ac, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i) #13, !srcloc !31
  %.not = icmp sgt i8 %.0.copyload.i, -1
  %.val168 = load ptr, ptr %i.z, align 8, !tbaa !13 ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %w2c_hermes_strlen.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %.val168, i64 %i.aa
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %.0.copyload.i172 = load i32, ptr %i.ae, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i172) #13, !srcloc !14
  br label %bb.f

bb.e:                                             ; preds = %w2c_hermes_strlen.exit
  %i.af = getelementptr inbounds nuw i8, ptr %.val168, i64 %i.ab
  %.0.copyload.i173 = load i8, ptr %i.af, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i173) #13, !srcloc !31
  %i.ag = and i8 %.0.copyload.i173, 127
  %i.ah = zext nneg i8 %i.ag to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0153 = phi i32 [ %.0.copyload.i172, %bb.d ], [ %i.ah, %bb.e ] ; 7 uses
  %.val167 = load ptr, ptr %i.z, align 8, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %.val167, i64 %i.ab
  %.0.copyload.i174 = load i8, ptr %i.ai, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i174) #13, !srcloc !31
  %.not157 = icmp sgt i8 %.0.copyload.i174, -1
  br i1 %.not157, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val163 = load ptr, ptr %i.z, align 8, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %.val163, i64 %i.aa
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.0.copyload.i175 = load i32, ptr %i.ak, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i175) #13, !srcloc !14
  %i.al = and i32 %.0.copyload.i175, 2147483647
  %i.am = add nsw i32 %i.al, -1
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.0 = phi i32 [ %i.am, %bb.g ], [ 10, %bb.f ]   ; 3 uses
  %i.an = sub i32 %.0, %.0153
  %.not158 = icmp ugt i32 %.0.i, %i.an
end_hunk_1
begin_hunk_2_@w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Aenable_if0x3C_0x5Fis_cpp17_forward_iterator0x3Cchar0x2A0x3E0x3A0x3Avalue0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Cchar0x2A0x3E0x3E0x3A0x3Atype0x20std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3A0x3Ainsert0x3Cchar0x2A0x3E0x28std0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Cchar0x20const0x2A0x3E0x2C0x20char0x2A0x2C0x20char0x2A0x29:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.0.copyload.i708 = load i32, ptr %i.v, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i708) #13, !srcloc !14
  %i.w = and i32 %.0.copyload.i708, 2147483647
  %i.x = add nsw i32 %i.w, -1
  %i.y = icmp sgt i8 %.0.copyload.i706, -1
  %i.z = select i1 %i.y, i32 10, i32 %i.x         ; 3 uses
  %i.aa = sub i32 %i.z, %i.q
  %.not638 = icmp ugt i32 %i.n, %i.aa
  br i1 %.not638, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = icmp eq i32 %i.q, %i.k
  br i1 %i.ab, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = add i32 %i.n, %2
  %i.ad = sub i32 %i.q, %i.k
  %i.ae = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %i.ac, i32 noundef %2, i32 noundef %i.ad) #13 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.af = add i32 %i.q, %i.n
  %i.ag = sub i32 %i.af, %i.z
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3A0x3A_0x5Fgrow_by0x28unsigned0x20long0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.z, i32 noundef %i.ag, i32 noundef %i.q, i32 noundef %i.k, i32 noundef 0, i32 noundef %i.n)
  %.val648 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ah = getelementptr inbounds nuw i8, ptr %.val648, i64 %i.e
  %.0.copyload.i709 = load i32, ptr %i.ah, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i709) #13, !srcloc !14
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e
  %.0 = phi i32 [ %i.j, %bb.d ], [ %i.j, %bb.e ], [ %.0.copyload.i709, %bb.f ] ; 2 uses
  %i.ai = add i32 %i.q, %i.n                      ; 3 uses
  %.val705 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %.val705, i64 %i.g
  %.0.copyload.i710 = load i8, ptr %i.aj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i710) #13, !srcloc !36
  %i.ak = icmp slt i8 %.0.copyload.i710, 0
  %.val656 = load ptr, ptr %i.d, align 8, !tbaa !13 ; 2 uses
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.val656, i64 %i.o
  store i32 %i.ai, ptr %i.al, align 1
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.am = trunc i32 %i.ai to i8
  %i.an = getelementptr inbounds nuw i8, ptr %.val656, i64 %i.g
  store i8 %i.am, ptr %i.an, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ao = add i32 %.0, %i.ai
  %i.ap = zext i32 %i.ao to i64
  %.val699 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.aq = getelementptr inbounds nuw i8, ptr %.val699, i64 %i.ap
  store i8 0, ptr %i.aq, align 1
  %i.ar = add i32 %.0, %i.k                       ; 2 uses
  %i.as = and i32 %i.n, 7                         ; 2 uses
  %.not639 = icmp eq i32 %i.as, 0
  br i1 %.not639, label %.loopexit743, label %.preheader742

.preheader742:                                    ; preds = %bb.j, %.preheader742
  %.0618 = phi i32 [ %i.az, %.preheader742 ], [ 0, %bb.j ]
  %.0612 = phi i32 [ %i.ax, %.preheader742 ], [ %3, %bb.j ] ; 2 uses
  %.1 = phi i32 [ %i.ay, %.preheader742 ], [ %i.ar, %bb.j ] ; 2 uses
  %i.at = zext i32 %.0612 to i64
  %.val675 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %.val675, i64 %i.at
  %.0.copyload.i711 = load i8, ptr %i.au, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i711) #13, !srcloc !31
  %i.av = zext i32 %.1 to i64
  %.val698 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.aw = getelementptr inbounds nuw i8, ptr %.val698, i64 %i.av
  store i8 %.0.copyload.i711, ptr %i.aw, align 1
  %i.ax = add i32 %.0612, 1                       ; 2 uses
  %i.ay = add i32 %.1, 1                          ; 2 uses
  %i.az = add nuw nsw i32 %.0618, 1               ; 2 uses
  %.not640 = icmp eq i32 %i.az, %i.as
  br i1 %.not640, label %.loopexit743, label %.preheader742

.loopexit743:                                     ; preds = %.preheader742, %bb.j
  %.1613 = phi i32 [ %3, %bb.j ], [ %i.ax, %.preheader742 ]
  %.2 = phi i32 [ %i.ar, %bb.j ], [ %i.ay, %.preheader742 ]
  %i.ba = sub i32 %3, %4
  %i.bb = icmp ult i32 %i.ba, -7
  br i1 %i.bb, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.loopexit743, %.preheader
  %.2614 = phi i32 [ %i.cj, %.preheader ], [ %.1613, %.loopexit743 ] ; 2 uses
  %.3 = phi i32 [ %i.ci, %.preheader ], [ %.2, %.loopexit743 ] ; 2 uses
  %i.bc = zext i32 %.2614 to i64                  ; 8 uses
  %.val674 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bd = getelementptr inbounds nuw i8, ptr %.val674, i64 %i.bc
  %.0.copyload.i712 = load i8, ptr %i.bd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i712) #13, !srcloc !31
  %i.be = zext i32 %.3 to i64                     ; 8 uses
  %.val697 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bf = getelementptr inbounds nuw i8, ptr %.val697, i64 %i.be
  store i8 %.0.copyload.i712, ptr %i.bf, align 1
  %.val673 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bg = getelementptr inbounds nuw i8, ptr %.val673, i64 %i.bc
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %.0.copyload.i713 = load i8, ptr %i.bh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i713) #13, !srcloc !31
  %.val696 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bi = getelementptr inbounds nuw i8, ptr %.val696, i64 %i.be
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  store i8 %.0.copyload.i713, ptr %i.bj, align 1
  %.val672 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bk = getelementptr inbounds nuw i8, ptr %.val672, i64 %i.bc
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %.0.copyload.i714 = load i8, ptr %i.bl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i714) #13, !srcloc !31
  %.val695 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bm = getelementptr inbounds nuw i8, ptr %.val695, i64 %i.be
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 2
  store i8 %.0.copyload.i714, ptr %i.bn, align 1
  %.val671 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bo = getelementptr inbounds nuw i8, ptr %.val671, i64 %i.bc
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 3
  %.0.copyload.i715 = load i8, ptr %i.bp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i715) #13, !srcloc !31
  %.val694 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bq = getelementptr inbounds nuw i8, ptr %.val694, i64 %i.be
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 3
  store i8 %.0.copyload.i715, ptr %i.br, align 1
  %.val670 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bs = getelementptr inbounds nuw i8, ptr %.val670, i64 %i.bc
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %.0.copyload.i716 = load i8, ptr %i.bt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i716) #13, !srcloc !31
  %.val693 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bu = getelementptr inbounds nuw i8, ptr %.val693, i64 %i.be
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  store i8 %.0.copyload.i716, ptr %i.bv, align 1
  %.val669 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bw = getelementptr inbounds nuw i8, ptr %.val669, i64 %i.bc
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 5
  %.0.copyload.i717 = load i8, ptr %i.bx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i717) #13, !srcloc !31
  %.val692 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.by = getelementptr inbounds nuw i8, ptr %.val692, i64 %i.be
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 5
  store i8 %.0.copyload.i717, ptr %i.bz, align 1
  %.val668 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ca = getelementptr inbounds nuw i8, ptr %.val668, i64 %i.bc
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 6
  %.0.copyload.i718 = load i8, ptr %i.cb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i718) #13, !srcloc !31
  %.val691 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cc = getelementptr inbounds nuw i8, ptr %.val691, i64 %i.be
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 6
  store i8 %.0.copyload.i718, ptr %i.cd, align 1
  %.val667 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ce = getelementptr inbounds nuw i8, ptr %.val667, i64 %i.bc
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 7
  %.0.copyload.i719 = load i8, ptr %i.cf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i719) #13, !srcloc !31
  %.val690 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cg = getelementptr inbounds nuw i8, ptr %.val690, i64 %i.be
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 7
  store i8 %.0.copyload.i719, ptr %i.ch, align 1
  %i.ci = add i32 %.3, 8
  %i.cj = add i32 %.2614, 8                       ; 2 uses
  %.not641 = icmp eq i32 %i.cj, %4
  br i1 %.not641, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %.loopexit743
  %.val647 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ck = getelementptr inbounds nuw i8, ptr %.val647, i64 %i.e
  %.0.copyload.i720 = load i32, ptr %i.ck, align 1
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i720) #13, !srcloc !14
  %.val704 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cl = getelementptr inbounds nuw i8, ptr %.val704, i64 %i.g
  %.0.copyload.i721 = load i8, ptr %i.cl, align 1
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i721) #13, !srcloc !36
  br label %bb.aa

bb.k:                                             ; preds = %bb.b
  %i.cm = icmp ugt i32 %i.n, 2147483631
  br i1 %i.cm, label %bb.ab, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cn = icmp samesign ult i32 %i.n, 11
  br i1 %i.cn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.co = zext i32 %i.c to i64                    ; 2 uses
  %.val689 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cp = trunc nuw nsw i32 %i.n to i8
  %i.cq = getelementptr inbounds nuw i8, ptr %.val689, i64 %i.co
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 15
  store i8 %i.cp, ptr %i.cr, align 1
  %i.cs = add i32 %i.b, -12
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ct = or i32 %i.n, 15                         ; 2 uses
  %i.cu = add nuw nsw i32 %i.ct, 1
  %i.cv = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.cu) ; 2 uses
  %5 = add nuw nsw i32 %i.ct, -2147483647
  %i.cw = zext i32 %i.c to i64                    ; 4 uses
  %.val655 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cx = getelementptr inbounds nuw i8, ptr %.val655, i64 %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 12
  store i32 %5, ptr %i.cy, align 1
  %.val654 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.cz = getelementptr inbounds nuw i8, ptr %.val654, i64 %i.cw
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  store i32 %i.cv, ptr %i.da, align 1
  %.val653 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.db = getelementptr inbounds nuw i8, ptr %.val653, i64 %i.cw
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store i32 %i.n, ptr %i.dc, align 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pre-phi = phi i64 [ %i.cw, %bb.n ], [ %i.co, %bb.m ] ; 3 uses
  %.0611 = phi i32 [ %i.cv, %bb.n ], [ %i.cs, %bb.m ]
  %i.dd = tail call i32 @w2c_hermes_0x5F_memcpy(ptr noundef nonnull %0, i32 noundef %.0611, i32 noundef %3, i32 noundef %i.n) #13
  %i.de = add i32 %i.dd, %i.n
  %i.df = zext i32 %i.de to i64
  %.val688 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.dg = getelementptr inbounds nuw i8, ptr %.val688, i64 %i.df
  store i8 0, ptr %i.dg, align 1
  %i.dh = add nuw nsw i64 %.pre-phi, 15           ; 2 uses
  %.val666 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.di = getelementptr inbounds nuw i8, ptr %.val666, i64 %i.dh
  %.0.copyload.i722 = load i8, ptr %i.di, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i722) #13, !srcloc !31
  %i.dj = zext i8 %.0.copyload.i722 to i32
  %.not = icmp sgt i8 %.0.copyload.i722, -1       ; 2 uses
  %.val646 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.dk = getelementptr inbounds nuw i8, ptr %.val646, i64 %.pre-phi
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.0.copyload.i723 = load i32, ptr %i.dl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i723) #13, !srcloc !14
  %i.dm = add nuw nsw i64 %.pre-phi, 4            ; 2 uses
  %.val645 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.dn = getelementptr inbounds nuw i8, ptr %.val645, i64 %i.dm
  %.0.copyload.i724 = load i32, ptr %i.dn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i724) #13, !srcloc !14
  %.val644 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.do = getelementptr inbounds nuw i8, ptr %.val644, i64 %i.e
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %.0.copyload.i725 = load i32, ptr %i.dp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i725) #13, !srcloc !14
  %i.dq = and i32 %.0.copyload.i725, 2147483647
  %i.dr = add nsw i32 %i.dq, -1
  %i.ds = icmp sgt i8 %.0.copyload.i706, -1
  %i.dt = select i1 %i.ds, i32 10, i32 %i.dr      ; 3 uses
  %i.du = sub i32 %i.dt, %i.q
  %.not633 = icmp ugt i32 %i.n, %i.du
  br i1 %.not633, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dv = icmp eq i32 %i.q, %i.k
  br i1 %i.dv, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dw = add i32 %i.n, %2
  %i.dx = sub i32 %i.q, %i.k
  %i.dy = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %i.dw, i32 noundef %2, i32 noundef %i.dx) #13 ; 0 uses
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.dz = add i32 %i.q, %i.n
  %i.ea = sub i32 %i.dz, %i.dt
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3A0x3A_0x5Fgrow_by0x28unsigned0x20long0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.dt, i32 noundef %i.ea, i32 noundef %i.q, i32 noundef %i.k, i32 noundef 0, i32 noundef %i.n)
  %.val643 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.eb = getelementptr inbounds nuw i8, ptr %.val643, i64 %i.e
  %.0.copyload.i726 = load i32, ptr %i.eb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i726) #13, !srcloc !14
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.r, %bb.q
  %.4 = phi i32 [ %i.j, %bb.p ], [ %i.j, %bb.q ], [ %.0.copyload.i726, %bb.r ] ; 2 uses
  %i.ec = select i1 %.not, i32 %i.dj, i32 %.0.copyload.i723 ; 4 uses
  %i.ed = add i32 %i.q, %i.n                      ; 3 uses
  %.val703 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ee = getelementptr inbounds nuw i8, ptr %.val703, i64 %i.g
  %.0.copyload.i727 = load i8, ptr %i.ee, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i727) #13, !srcloc !36
  %i.ef = icmp slt i8 %.0.copyload.i727, 0
  %.val652 = load ptr, ptr %i.d, align 8, !tbaa !13 ; 2 uses
  br i1 %i.ef, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.eg = getelementptr inbounds nuw i8, ptr %.val652, i64 %i.o
  store i32 %i.ed, ptr %i.eg, align 1
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.eh = trunc i32 %i.ed to i8
  %i.ei = getelementptr inbounds nuw i8, ptr %.val652, i64 %i.g
  store i8 %i.eh, ptr %i.ei, align 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ej = add i32 %.4, %i.ed
  %i.ek = zext i32 %i.ej to i64
  %.val686 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.el = getelementptr inbounds nuw i8, ptr %.val686, i64 %i.ek
  store i8 0, ptr %i.el, align 1
  %.not634 = icmp eq i32 %i.ec, 0
  br i1 %.not634, label %.loopexit744, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.em = add i32 %i.b, -12
  %i.en = select i1 %.not, i32 %i.em, i32 %.0.copyload.i724 ; 3 uses
  %i.eo = add i32 %.4, %i.k                       ; 2 uses
  %i.ep = and i32 %i.ec, 7                        ; 2 uses
  %.not635 = icmp eq i32 %i.ep, 0
  br i1 %.not635, label %.loopexit746, label %.preheader745

.preheader745:                                    ; preds = %bb.w, %.preheader745
  %.1619 = phi i32 [ %i.ew, %.preheader745 ], [ 0, %bb.w ]
  %.3615 = phi i32 [ %i.ev, %.preheader745 ], [ %i.eo, %bb.w ] ; 2 uses
  %.5 = phi i32 [ %i.eu, %.preheader745 ], [ %i.en, %bb.w ] ; 2 uses
  %i.eq = zext i32 %.5 to i64
  %.val665 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.er = getelementptr inbounds nuw i8, ptr %.val665, i64 %i.eq
  %.0.copyload.i728 = load i8, ptr %i.er, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i728) #13, !srcloc !31
  %i.es = zext i32 %.3615 to i64
  %.val685 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.et = getelementptr inbounds nuw i8, ptr %.val685, i64 %i.es
  store i8 %.0.copyload.i728, ptr %i.et, align 1
  %i.eu = add i32 %.5, 1                          ; 2 uses
  %i.ev = add i32 %.3615, 1                       ; 2 uses
  %i.ew = add nuw nsw i32 %.1619, 1               ; 2 uses
  %.not636 = icmp eq i32 %i.ew, %i.ep
  br i1 %.not636, label %.loopexit746, label %.preheader745

.loopexit746:                                     ; preds = %.preheader745, %bb.w
  %.4616 = phi i32 [ %i.eo, %bb.w ], [ %i.ev, %.preheader745 ]
  %.6 = phi i32 [ %i.en, %bb.w ], [ %i.eu, %.preheader745 ]
  %i.ex = icmp ult i32 %i.ec, 8
  br i1 %i.ex, label %.loopexit744, label %bb.x

bb.x:                                             ; preds = %.loopexit746
  %i.ey = add i32 %i.en, %i.ec
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %bb.x
  %.5617 = phi i32 [ %.4616, %bb.x ], [ %i.gf, %bb.y ] ; 2 uses
  %.7 = phi i32 [ %.6, %bb.x ], [ %i.gg, %bb.y ]  ; 2 uses
  %i.ez = zext i32 %.7 to i64                     ; 8 uses
  %.val664 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fa = getelementptr inbounds nuw i8, ptr %.val664, i64 %i.ez
  %.0.copyload.i729 = load i8, ptr %i.fa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i729) #13, !srcloc !31
  %i.fb = zext i32 %.5617 to i64                  ; 8 uses
  %.val684 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fc = getelementptr inbounds nuw i8, ptr %.val684, i64 %i.fb
  store i8 %.0.copyload.i729, ptr %i.fc, align 1
  %.val663 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fd = getelementptr inbounds nuw i8, ptr %.val663, i64 %i.ez
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 1
  %.0.copyload.i730 = load i8, ptr %i.fe, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i730) #13, !srcloc !31
  %.val683 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ff = getelementptr inbounds nuw i8, ptr %.val683, i64 %i.fb
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 1
  store i8 %.0.copyload.i730, ptr %i.fg, align 1
  %.val662 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fh = getelementptr inbounds nuw i8, ptr %.val662, i64 %i.ez
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 2
  %.0.copyload.i731 = load i8, ptr %i.fi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i731) #13, !srcloc !31
  %.val682 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fj = getelementptr inbounds nuw i8, ptr %.val682, i64 %i.fb
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 2
  store i8 %.0.copyload.i731, ptr %i.fk, align 1
  %.val661 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fl = getelementptr inbounds nuw i8, ptr %.val661, i64 %i.ez
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 3
  %.0.copyload.i732 = load i8, ptr %i.fm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i732) #13, !srcloc !31
  %.val681 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fn = getelementptr inbounds nuw i8, ptr %.val681, i64 %i.fb
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 3
  store i8 %.0.copyload.i732, ptr %i.fo, align 1
  %.val660 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fp = getelementptr inbounds nuw i8, ptr %.val660, i64 %i.ez
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  %.0.copyload.i733 = load i8, ptr %i.fq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i733) #13, !srcloc !31
  %.val680 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fr = getelementptr inbounds nuw i8, ptr %.val680, i64 %i.fb
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  store i8 %.0.copyload.i733, ptr %i.fs, align 1
  %.val659 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ft = getelementptr inbounds nuw i8, ptr %.val659, i64 %i.ez
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 5
  %.0.copyload.i734 = load i8, ptr %i.fu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i734) #13, !srcloc !31
  %.val679 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.fv = getelementptr inbounds nuw i8, ptr %.val679, i64 %i.fb
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 5
  store i8 %.0.copyload.i734, ptr %i.fw, align 1
end_hunk_2
