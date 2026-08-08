inline.NumInlined: 15600
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 26
begin_hunk_0_@w2c_hermes_0x28anonymous0x20namespace0x290x3A0x3AHostObjectWrapper0x3A0x3AgetHostPropertyNames0x280x29:bb.a
  %i.dv = load i128, ptr %i.du, align 1
  %i.dw = xor i128 -36122175591097595875794107267125375431, %i.dv
  %i.dx = or i128 %i.dt, %i.dw
  %i.dy = icmp ne i128 %i.dx, 0
  %i.dz = zext i1 %i.dy to i32
  %.not.i266 = icmp eq i32 %i.dz, 0
  br i1 %.not.i266, label %func_types_eq.exit267.thread, label %.critedge222, !prof !31

.critedge222:                                     ; preds = %bb.u, %bb.s, %.loopexit, %func_types_eq.exit267
  tail call void @wasm_rt_trap(i32 noundef 6) #17
  unreachable

func_types_eq.exit267.thread:                     ; preds = %bb.t, %func_types_eq.exit267
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !32
  tail call void %i.dp(ptr noundef %i.eb, i32 noundef %i.ag) #16
  br label %bb.v

bb.v:                                             ; preds = %func_types_eq.exit267.thread, %func_types_eq.exit255.thread, %bb.e
  %.1 = phi i32 [ -1, %bb.e ], [ -1, %func_types_eq.exit255.thread ], [ %i.au, %func_types_eq.exit267.thread ]
  ret i32 %.1
}

declare i32 @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3A_0x5Ffunction0x3A0x3A_0x5Ffunc0x3C0x28anonymous0x20namespace0x290x3A0x3AHermesABIRuntimeImpl0x3A0x3AHermesABIRuntimeImpl0x28hermes0x3A0x3Avm0x3A0x3ARuntimeConfig0x20const0x260x290x3A0x3A0x27lambda0x270x28hermes0x3A0x3Avm0x3A0x3AHadesGC0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARootAcceptor0x260x290x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3C0x28anonymous0x20namespace0x290x3A0x3AHermesABIRuntimeImpl0x3A0x3AHermesABIRuntimeImpl0x28hermes0x3A0x3Avm0x3A0x3ARuntimeConfig0x20const0x260x290x3A0x3A0x27lambda0x270x28hermes0x3A0x3Avm0x3A0x3AHadesGC0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARootAcceptor0x260x290x3E0x2C0x20void0x200x28hermes0x3A0x3Avm0x3A0x3AHadesGC0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARootAcceptor0x260x290x3E0x3A0x3A_0x5Fclone0x280x290x20const(ptr noundef, i32 noundef) #2

declare void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3A_0x5Ffunction0x3A0x3A_0x5Ffunc0x3C0x28anonymous0x20namespace0x290x3A0x3AHermesABIRuntimeImpl0x3A0x3AHermesABIRuntimeImpl0x28hermes0x3A0x3Avm0x3A0x3ARuntimeConfig0x20const0x260x290x3A0x3A0x27lambda0x270x28hermes0x3A0x3Avm0x3A0x3AHadesGC0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARootAcceptor0x260x290x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3C0x28anonymous0x20namespace0x290x3A0x3AHermesABIRuntimeImpl0x3A0x3AHermesABIRuntimeImpl0x28hermes0x3A0x3Avm0x3A0x3ARuntimeConfig0x20const0x260x290x3A0x3A0x27lambda0x270x28hermes0x3A0x3Avm0x3A0x3AHadesGC0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARootAcceptor0x260x290x3E0x2C0x20void0x200x28hermes0x3A0x3Avm0x3A0x3AHadesGC0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARootAcceptor0x260x290x3E0x3A0x3A_0x5Fclone0x28std0x3A0x3A_0x5F20x3A0x3A_0x5Ffunction0x3A0x3A_0x5Fbase0x3Cvoid0x200x28hermes0x3A0x3Avm0x3A0x3AHadesGC0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARootAcceptor0x260x290x3E0x2A0x290x20const(ptr noundef, i32 noundef, i32 noundef) #2

declare void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3A_0x5Ffunction0x3A0x3A_0x5Ffunc0x3C0x28anonymous0x20namespace0x290x3A0x3AHermesABIRuntimeImpl0x3A0x3AHermesABIRuntimeImpl0x28hermes0x3A0x3Avm0x3A0x3ARuntimeConfig0x20const0x260x290x3A0x3A0x27lambda0x270x28hermes0x3A0x3Avm0x3A0x3AHadesGC0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARootAcceptor0x260x290x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3C0x28anonymous0x20namespace0x290x3A0x3AHermesABIRuntimeImpl0x3A0x3AHermesABIRuntimeImpl0x28hermes0x3A0x3Avm0x3A0x3ARuntimeConfig0x20const0x260x290x3A0x3A0x27lambda0x270x28hermes0x3A0x3Avm0x3A0x3AHadesGC0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARootAcceptor0x260x290x3E0x2C0x20void0x200x28hermes0x3A0x3Avm0x3A0x3AHadesGC0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARootAcceptor0x260x290x3E0x3A0x3Aoperator0x280x290x28hermes0x3A0x3Avm0x3A0x3AHadesGC0x2A0x260x260x2C0x20hermes0x3A0x3Avm0x3A0x3ARootAcceptor0x260x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare i32 @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3A_0x5Ffunction0x3A0x3A_0x5Ffunc0x3C0x28anonymous0x20namespace0x290x3A0x3AHermesABIRuntimeImpl0x3A0x3AHermesABIRuntimeImpl0x28hermes0x3A0x3Avm0x3A0x3ARuntimeConfig0x20const0x260x290x3A0x3A0x27lambda0x270x28hermes0x3A0x3Avm0x3A0x3AHadesGC0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3AWeakRootAcceptor0x260x290x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3C0x28anonymous0x20namespace0x290x3A0x3AHermesABIRuntimeImpl0x3A0x3AHermesABIRuntimeImpl0x28hermes0x3A0x3Avm0x3A0x3ARuntimeConfig0x20const0x260x290x3A0x3A0x27lambda0x270x28hermes0x3A0x3Avm0x3A0x3AHadesGC0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3AWeakRootAcceptor0x260x290x3E0x2C0x20void0x200x28hermes0x3A0x3Avm0x3A0x3AHadesGC0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3AWeakRootAcceptor0x260x290x3E0x3A0x3A_0x5Fclone0x280x290x20const(ptr noundef, i32 noundef) #2

declare void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3A_0x5Ffunction0x3A0x3A_0x5Ffunc0x3C0x28anonymous0x20namespace0x290x3A0x3AHermesABIRuntimeImpl0x3A0x3AHermesABIRuntimeImpl0x28hermes0x3A0x3Avm0x3A0x3ARuntimeConfig0x20const0x260x290x3A0x3A0x27lambda0x270x28hermes0x3A0x3Avm0x3A0x3AHadesGC0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3AWeakRootAcceptor0x260x290x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3C0x28anonymous0x20namespace0x290x3A0x3AHermesABIRuntimeImpl0x3A0x3AHermesABIRuntimeImpl0x28hermes0x3A0x3Avm0x3A0x3ARuntimeConfig0x20const0x260x290x3A0x3A0x27lambda0x270x28hermes0x3A0x3Avm0x3A0x3AHadesGC0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3AWeakRootAcceptor0x260x290x3E0x2C0x20void0x200x28hermes0x3A0x3Avm0x3A0x3AHadesGC0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3AWeakRootAcceptor0x260x290x3E0x3A0x3A_0x5Fclone0x28std0x3A0x3A_0x5F20x3A0x3A_0x5Ffunction0x3A0x3A_0x5Fbase0x3Cvoid0x200x28hermes0x3A0x3Avm0x3A0x3AHadesGC0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3AWeakRootAcceptor0x260x290x3E0x2A0x290x20const(ptr noundef, i32 noundef, i32 noundef) #2

declare void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3A_0x5Ffunction0x3A0x3A_0x5Ffunc0x3C0x28anonymous0x20namespace0x290x3A0x3AHermesABIRuntimeImpl0x3A0x3AHermesABIRuntimeImpl0x28hermes0x3A0x3Avm0x3A0x3ARuntimeConfig0x20const0x260x290x3A0x3A0x27lambda0x270x28hermes0x3A0x3Avm0x3A0x3AHadesGC0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3AWeakRootAcceptor0x260x290x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3C0x28anonymous0x20namespace0x290x3A0x3AHermesABIRuntimeImpl0x3A0x3AHermesABIRuntimeImpl0x28hermes0x3A0x3Avm0x3A0x3ARuntimeConfig0x20const0x260x290x3A0x3A0x27lambda0x270x28hermes0x3A0x3Avm0x3A0x3AHadesGC0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3AWeakRootAcceptor0x260x290x3E0x2C0x20void0x200x28hermes0x3A0x3Avm0x3A0x3AHadesGC0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3AWeakRootAcceptor0x260x290x3E0x3A0x3Aoperator0x280x290x28hermes0x3A0x3Avm0x3A0x3AHadesGC0x2A0x260x260x2C0x20hermes0x3A0x3Avm0x3A0x3AWeakRootAcceptor0x260x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden nonnull ptr @w2c_hermes_memory(ptr nofree noundef readnone captures(ret: address, provenance) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @w2c_hermes_get_global_base(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #3 {
bb.a:
  ret i32 16384
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @w2c_hermes_get_global_base_0(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #3 {
bb.a:
  ret i32 16384
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @w2c_hermes_get_hermes_abi_vtable(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #3 {
bb.a:
  ret i32 260948
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @w2c_hermes_get_hermes_abi_vtable_0(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #3 {
bb.a:
  ret i32 260948
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_0x5Finitialize(ptr noundef initializes((28, 36)) %0) local_unnamed_addr #0 {
bb.a:
  tail call void @w2c_hermes_0x5F_wasm_call_ctors(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_0x5Finitialize_0(ptr noundef initializes((28, 36)) %0) local_unnamed_addr #0 {
bb.a:
  tail call void @w2c_hermes_0x5F_wasm_call_ctors(ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden nonnull ptr @w2c_hermes_0x5F_indirect_function_table(ptr nofree noundef readnone captures(ret: address, provenance) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_malloc(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @w2c_hermes_dlmalloc(ptr noundef %0, i32 noundef %1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_dlmalloc(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %i.c = add i32 %i.b, -16
  store i32 %i.c, ptr %i.a, align 8, !tbaa !19
  %i.d = icmp ult i32 %1, 245
  br i1 %i.d, label %bb.b, label %bb.ad

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 67 uses
  %.val3364 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %.val3364, i64 272036
  %.0.copyload.i = load i32, ptr %i.f, align 1    ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #16, !srcloc !22
  %i.g = add nuw nsw i32 %1, 11
  %i.h = and i32 %i.g, 504
  %i.i = icmp samesign ult i32 %1, 11
  %i.j = select i1 %i.i, i32 16, i32 %i.h         ; 12 uses
  %i.k = lshr exact i32 %i.j, 3                   ; 4 uses
  %i.l = lshr i32 %.0.copyload.i, %i.k            ; 4 uses
  %i.m = and i32 %i.l, 3
  %.not3139 = icmp eq i32 %i.m, 0
  br i1 %.not3139, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = and i32 %i.l, 1
  %i.o = xor i32 %i.n, 1
  %i.p = add nuw nsw i32 %i.o, %i.k               ; 3 uses
  %i.q = shl nuw nsw i32 %i.p, 3                  ; 4 uses
  %i.r = add nuw nsw i32 %i.q, 272076             ; 2 uses
  %i.s = add nuw nsw i32 %i.q, 272084
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %.val3363 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.u = getelementptr inbounds nuw i8, ptr %.val3363, i64 %i.t
  %.0.copyload.i3567 = load i32, ptr %i.u, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3567) #16, !srcloc !22
  %i.v = zext i32 %.0.copyload.i3567 to i64       ; 2 uses
  %.val3362 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.w = getelementptr inbounds nuw i8, ptr %.val3362, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.0.copyload.i3568 = load i32, ptr %i.x, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3568) #16, !srcloc !22
  %i.y = icmp eq i32 %i.r, %.0.copyload.i3568
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = and i32 %i.p, 31
  %i.aa = shl i32 -2, %i.z
  %i.ab = sub nuw nsw i32 32, %i.p
  %i.ac = lshr i32 -2, %i.ab
  %i.ad = or i32 %i.aa, %i.ac
  %i.ae = and i32 %i.ad, %.0.copyload.i
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.af = zext i32 %.0.copyload.i3568 to i64
  %.val3554 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.ag = getelementptr inbounds nuw i8, ptr %.val3554, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i32 %i.r, ptr %i.ah, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink3844 = phi i64 [ %i.t, %bb.e ], [ 272036, %bb.d ]
  %.0.copyload.i3568.sink = phi i32 [ %.0.copyload.i3568, %bb.e ], [ %i.ae, %bb.d ]
  %.val3553 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.ai = getelementptr inbounds nuw i8, ptr %.val3553, i64 %.sink3844
  store i32 %.0.copyload.i3568.sink, ptr %i.ai, align 1
  %i.aj = add i32 %.0.copyload.i3567, 8
  %i.ak = or disjoint i32 %i.q, 3
  %.val3552 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.al = getelementptr inbounds nuw i8, ptr %.val3552, i64 %i.v
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store i32 %i.ak, ptr %i.am, align 1
  %i.an = add i32 %.0.copyload.i3567, %i.q
  %i.ao = zext i32 %i.an to i64
  %i.ap = add nuw nsw i64 %i.ao, 4                ; 2 uses
  %.val3361 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.aq = getelementptr inbounds nuw i8, ptr %.val3361, i64 %i.ap
  %.0.copyload.i3569 = load i32, ptr %i.aq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3569) #16, !srcloc !22
  %i.ar = or i32 %.0.copyload.i3569, 1
  %.val3551 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.as = getelementptr inbounds nuw i8, ptr %.val3551, i64 %i.ap
  store i32 %i.ar, ptr %i.as, align 1
  br label %bb.gu

bb.g:                                             ; preds = %bb.b
  %.val3360 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.at = getelementptr inbounds nuw i8, ptr %.val3360, i64 272044
  %.0.copyload.i3570 = load i32, ptr %i.at, align 1 ; 8 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3570) #16, !srcloc !22
  %.not3140 = icmp ugt i32 %i.j, %.0.copyload.i3570
  br i1 %.not3140, label %bb.h, label %bb.az

bb.h:                                             ; preds = %bb.g
  %.not3141 = icmp eq i32 %i.l, 0
  br i1 %.not3141, label %bb.r, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = shl i32 2, %i.k                         ; 2 uses
  %i.av = sub i32 0, %i.au
  %i.aw = or i32 %i.au, %i.av
  %i.ax = shl i32 %i.l, %i.k
  %2 = and i32 %i.ax, %i.aw                       ; 3 uses
  %3 = sub i32 0, %2
  %i.ay = and i32 %2, %3
  %.not3158 = icmp eq i32 %i.ay, 0
  %i.az = tail call range(i32 2, 33) i32 @llvm.cttz.i32(i32 %2, i1 true)
  %4 = select i1 %.not3158, i32 32, i32 %i.az     ; 2 uses
  %i.ba = shl nuw nsw i32 %4, 3                   ; 4 uses
  %i.bb = add nuw nsw i32 %i.ba, 272076           ; 2 uses
  %i.bc = add nuw nsw i32 %i.ba, 272084
  %i.bd = zext nneg i32 %i.bc to i64              ; 2 uses
  %.val3359 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.be = getelementptr inbounds nuw i8, ptr %.val3359, i64 %i.bd
  %.0.copyload.i3571 = load i32, ptr %i.be, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3571) #16, !srcloc !22
  %i.bf = zext i32 %.0.copyload.i3571 to i64      ; 2 uses
  %.val3358 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.bg = getelementptr inbounds nuw i8, ptr %.val3358, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.0.copyload.i3572 = load i32, ptr %i.bh, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3572) #16, !srcloc !22
  %i.bi = icmp eq i32 %i.bb, %.0.copyload.i3572
  br i1 %i.bi, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bj = tail call i32 @llvm.fshl.i32(i32 -2, i32 -2, i32 %4)
  %i.bk = and i32 %i.bj, %.0.copyload.i           ; 2 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bl = zext i32 %.0.copyload.i3572 to i64
  %.val3549 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.bm = getelementptr inbounds nuw i8, ptr %.val3549, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  store i32 %i.bb, ptr %i.bn, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sink3845 = phi i64 [ %i.bd, %bb.k ], [ 272036, %bb.j ]
  %.0.copyload.i3572.sink = phi i32 [ %.0.copyload.i3572, %bb.k ], [ %i.bk, %bb.j ]
  %.03003 = phi i32 [ %.0.copyload.i, %bb.k ], [ %i.bk, %bb.j ] ; 2 uses
  %.val3548 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.bo = getelementptr inbounds nuw i8, ptr %.val3548, i64 %.sink3845
  store i32 %.0.copyload.i3572.sink, ptr %i.bo, align 1
  %i.bp = or disjoint i32 %i.j, 3
  %.val3547 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.bq = getelementptr inbounds nuw i8, ptr %.val3547, i64 %i.bf
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  store i32 %i.bp, ptr %i.br, align 1
  %i.bs = add i32 %.0.copyload.i3571, %i.j        ; 2 uses
  %i.bt = sub nsw i32 %i.ba, %i.j                 ; 3 uses
  %i.bu = or disjoint i32 %i.bt, 1
  %i.bv = zext i32 %i.bs to i64
  %.val3546 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.bw = getelementptr inbounds nuw i8, ptr %.val3546, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  store i32 %i.bu, ptr %i.bx, align 1
  %i.by = add i32 %.0.copyload.i3571, %i.ba
  %i.bz = zext i32 %i.by to i64
  %.val3545 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.ca = getelementptr inbounds nuw i8, ptr %.val3545, i64 %i.bz
  store i32 %i.bt, ptr %i.ca, align 1
  %.not3160 = icmp eq i32 %.0.copyload.i3570, 0
  br i1 %.not3160, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cb = and i32 %.0.copyload.i3570, -8          ; 3 uses
  %i.cc = add nuw nsw i32 %i.cb, 272076           ; 2 uses
  %.val3357 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.cd = getelementptr inbounds nuw i8, ptr %.val3357, i64 272056
  %.0.copyload.i3573 = load i32, ptr %i.cd, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3573) #16, !srcloc !22
  %i.ce = lshr i32 %.0.copyload.i3570, 3
  %i.cf = shl nuw nsw i32 1, %i.ce                ; 2 uses
  %i.cg = and i32 %.03003, %i.cf
  %.not3161 = icmp eq i32 %i.cg, 0
  %.val3544 = load ptr, ptr %i.e, align 8, !tbaa !21 ; 2 uses
  br i1 %.not3161, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ch = or i32 %.03003, %i.cf
  %i.ci = getelementptr inbounds nuw i8, ptr %.val3544, i64 272036
  store i32 %i.ch, ptr %i.ci, align 1
  %.pre3788 = zext nneg i32 %i.cb to i64
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.cj = zext nneg i32 %i.cb to i64              ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.val3544, i64 %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 272084
  %.0.copyload.i3574 = load i32, ptr %i.cl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3574) #16, !srcloc !22
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pre-phi3789 = phi i64 [ %i.cj, %bb.o ], [ %.pre3788, %bb.n ]
  %.02995 = phi i32 [ %.0.copyload.i3574, %bb.o ], [ %i.cc, %bb.n ] ; 2 uses
  %.val3543 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.cm = getelementptr inbounds nuw i8, ptr %.val3543, i64 %.pre-phi3789
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 272084
  store i32 %.0.copyload.i3573, ptr %i.cn, align 1
  %i.co = zext i32 %.02995 to i64
  %.val3542 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.cp = getelementptr inbounds nuw i8, ptr %.val3542, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  store i32 %.0.copyload.i3573, ptr %i.cq, align 1
  %i.cr = zext i32 %.0.copyload.i3573 to i64      ; 2 uses
  %.val3541 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.cs = getelementptr inbounds nuw i8, ptr %.val3541, i64 %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  store i32 %i.cc, ptr %i.ct, align 1
  %.val3540 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.cu = getelementptr inbounds nuw i8, ptr %.val3540, i64 %i.cr
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i32 %.02995, ptr %i.cv, align 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.l
  %i.cw = add i32 %.0.copyload.i3571, 8
  %.val3539 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.cx = getelementptr inbounds nuw i8, ptr %.val3539, i64 272056
  store i32 %i.bs, ptr %i.cx, align 1
  %.val3538 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.cy = getelementptr inbounds nuw i8, ptr %.val3538, i64 272044
  store i32 %i.bt, ptr %i.cy, align 1
  br label %bb.gu

bb.r:                                             ; preds = %bb.h
  %.val3355 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.cz = getelementptr inbounds nuw i8, ptr %.val3355, i64 272040
  %.0.copyload.i3575 = load i32, ptr %i.cz, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3575) #16, !srcloc !22
  %.not3142 = icmp eq i32 %.0.copyload.i3575, 0
  br i1 %.not3142, label %bb.az, label %bb.s

bb.s:                                             ; preds = %bb.r
  %5 = sub i32 0, %.0.copyload.i3575
  %6 = and i32 %.0.copyload.i3575, %5
  %.not3143 = icmp eq i32 %6, 0
  %i.da = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.copyload.i3575, i1 true)
  %i.db = shl nuw nsw i32 %i.da, 2
  %7 = add nuw nsw i32 %i.db, 272340
  %8 = select i1 %.not3143, i32 272468, i32 %7
  %i.dc = zext nneg i32 %8 to i64
  %.val3354 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.dd = getelementptr inbounds nuw i8, ptr %.val3354, i64 %i.dc
  %.0.copyload.i3576 = load i32, ptr %i.dd, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3576) #16, !srcloc !22
  %i.de = zext i32 %.0.copyload.i3576 to i64
  %.val3353 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.df = getelementptr inbounds nuw i8, ptr %.val3353, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %.0.copyload.i3577 = load i32, ptr %i.dg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3577) #16, !srcloc !22
  %i.dh = and i32 %.0.copyload.i3577, -8
  %i.di = sub i32 %i.dh, %i.j
  br label %bb.t

bb.t:                                             ; preds = %bb.v, %bb.s
  %.03038 = phi i32 [ %.0.copyload.i3576, %bb.s ], [ %.0, %bb.v ]
  %.03031 = phi i32 [ %.0.copyload.i3576, %bb.s ], [ %i.dv, %bb.v ] ; 10 uses
  %.03019 = phi i32 [ %i.di, %bb.s ], [ %i.du, %bb.v ] ; 8 uses
  %i.dj = zext i32 %.03038 to i64                 ; 2 uses
  %.val3352 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.dk = getelementptr inbounds nuw i8, ptr %.val3352, i64 %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %.0.copyload.i3578 = load i32, ptr %i.dl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3578) #16, !srcloc !22
  %.not3144 = icmp eq i32 %.0.copyload.i3578, 0
  br i1 %.not3144, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %.val3351 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.dm = getelementptr inbounds nuw i8, ptr %.val3351, i64 %i.dj
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 20
  %.0.copyload.i3579 = load i32, ptr %i.dn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3579) #16, !srcloc !22
  %.not3145 = icmp eq i32 %.0.copyload.i3579, 0
  br i1 %.not3145, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0 = phi i32 [ %.0.copyload.i3579, %bb.u ], [ %.0.copyload.i3578, %bb.t ] ; 3 uses
  %i.do = zext i32 %.0 to i64
  %.val3350 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.dp = getelementptr inbounds nuw i8, ptr %.val3350, i64 %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %.0.copyload.i3580 = load i32, ptr %i.dq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3580) #16, !srcloc !22
  %i.dr = and i32 %.0.copyload.i3580, -8
  %i.ds = sub i32 %i.dr, %i.j                     ; 2 uses
  %i.dt = icmp ult i32 %i.ds, %.03019
  %i.du = tail call i32 @llvm.umin.i32(i32 %i.ds, i32 %.03019)
  %i.dv = select i1 %i.dt, i32 %.0, i32 %.03031
  br label %bb.t

bb.w:                                             ; preds = %bb.u
  %i.dw = zext i32 %.03031 to i64                 ; 9 uses
  %.val3349 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.dx = getelementptr inbounds nuw i8, ptr %.val3349, i64 %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %.0.copyload.i3581 = load i32, ptr %i.dy, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3581) #16, !srcloc !22
  %.val3348 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.dz = getelementptr inbounds nuw i8, ptr %.val3348, i64 %i.dw
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 12
  %.0.copyload.i3582 = load i32, ptr %i.ea, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3582) #16, !srcloc !22
  %.not3146 = icmp eq i32 %.03031, %.0.copyload.i3582
  br i1 %.not3146, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.val3347 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.eb = getelementptr inbounds nuw i8, ptr %.val3347, i64 272052
  %.0.copyload.i3583 = load i32, ptr %i.eb, align 1
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3583) #16, !srcloc !22
  %.val3346 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.ec = getelementptr inbounds nuw i8, ptr %.val3346, i64 %i.dw
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %.0.copyload.i3584 = load i32, ptr %i.ed, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3584) #16, !srcloc !22
  %i.ee = zext i32 %.0.copyload.i3584 to i64
  %.val3537 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.ef = getelementptr inbounds nuw i8, ptr %.val3537, i64 %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 12
  store i32 %.0.copyload.i3582, ptr %i.eg, align 1
  %i.eh = zext i32 %.0.copyload.i3582 to i64
  %.val3536 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.ei = getelementptr inbounds nuw i8, ptr %.val3536, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store i32 %.0.copyload.i3584, ptr %i.ej, align 1
  br label %bb.gc

bb.y:                                             ; preds = %bb.w
  %i.ek = add i32 %.03031, 20                     ; 2 uses
  %i.el = zext i32 %i.ek to i64
  %.val3345 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.em = getelementptr inbounds nuw i8, ptr %.val3345, i64 %i.el
  %.0.copyload.i3585 = load i32, ptr %i.em, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3585) #16, !srcloc !22
  %.not3147 = icmp eq i32 %.0.copyload.i3585, 0
  br i1 %.not3147, label %bb.z, label %.backedge3719.preheader

bb.z:                                             ; preds = %bb.y
  %.val3344 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.en = getelementptr inbounds nuw i8, ptr %.val3344, i64 %i.dw
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %.0.copyload.i3586 = load i32, ptr %i.eo, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3586) #16, !srcloc !22
  %.not3148 = icmp eq i32 %.0.copyload.i3586, 0
  br i1 %.not3148, label %bb.gc, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ep = add i32 %.03031, 16
  br label %.backedge3719.preheader

.backedge3719.preheader:                          ; preds = %bb.aa, %bb.y
  %.23040.ph = phi i32 [ %i.ep, %bb.aa ], [ %i.ek, %bb.y ]
  %.2.ph = phi i32 [ %.0.copyload.i3586, %bb.aa ], [ %.0.copyload.i3585, %bb.y ]
  br label %.backedge3719

.backedge3719:                                    ; preds = %.backedge3719.backedge, %.backedge3719.preheader
  %.23040 = phi i32 [ %.23040.ph, %.backedge3719.preheader ], [ %.23040.be, %.backedge3719.backedge ]
  %.2 = phi i32 [ %.2.ph, %.backedge3719.preheader ], [ %.2.be, %.backedge3719.backedge ] ; 4 uses
  %i.eq = add i32 %.2, 20                         ; 2 uses
  %i.er = zext i32 %i.eq to i64
  %.val3343 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.es = getelementptr inbounds nuw i8, ptr %.val3343, i64 %i.er
  %.0.copyload.i3587 = load i32, ptr %i.es, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3587) #16, !srcloc !22
  %.not3149 = icmp eq i32 %.0.copyload.i3587, 0
  br i1 %.not3149, label %bb.ab, label %.backedge3719.backedge

.backedge3719.backedge:                           ; preds = %.backedge3719, %bb.ab
  %.23040.be = phi i32 [ %i.eq, %.backedge3719 ], [ %i.et, %bb.ab ]
  %.2.be = phi i32 [ %.0.copyload.i3587, %.backedge3719 ], [ %.0.copyload.i3588, %bb.ab ]
  br label %.backedge3719

bb.ab:                                            ; preds = %.backedge3719
  %i.et = add i32 %.2, 16
  %i.eu = zext i32 %.2 to i64
  %.val3342 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.ev = getelementptr inbounds nuw i8, ptr %.val3342, i64 %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %.0.copyload.i3588 = load i32, ptr %i.ew, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3588) #16, !srcloc !22
  %.not3150 = icmp eq i32 %.0.copyload.i3588, 0
  br i1 %.not3150, label %bb.ac, label %.backedge3719.backedge

bb.ac:                                            ; preds = %bb.ab
  %i.ex = zext i32 %.23040 to i64
  %.val3535 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.ey = getelementptr inbounds nuw i8, ptr %.val3535, i64 %i.ex
  store i32 0, ptr %i.ey, align 1
  br label %bb.gc

bb.ad:                                            ; preds = %bb.a
  %i.ez = icmp ugt i32 %1, -65
  br i1 %i.ez, label %bb.az, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fa = add nuw i32 %1, 11                      ; 2 uses
  %i.fb = and i32 %i.fa, -8                       ; 13 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 63 uses
  %.val3341 = load ptr, ptr %i.fc, align 8, !tbaa !21
  %i.fd = getelementptr inbounds nuw i8, ptr %.val3341, i64 272040
  %.0.copyload.i3589 = load i32, ptr %i.fd, align 1 ; 8 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3589) #16, !srcloc !22
  %.not = icmp eq i32 %.0.copyload.i3589, 0
  br i1 %.not, label %bb.az, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fe = sub i32 0, %i.fb                        ; 2 uses
  %i.ff = icmp ugt i32 %1, 16777204
  br i1 %i.ff, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fg = lshr i32 %i.fa, 8
  %i.fh = tail call range(i32 15, 33) i32 @llvm.ctlz.i32(i32 %i.fg, i1 true) ; 2 uses
  %i.fi = sub nuw nsw i32 38, %i.fh
  %i.fj = lshr i32 %i.fb, %i.fi
  %i.fk = and i32 %i.fj, 1
  %i.fl = shl nuw nsw i32 %i.fh, 1
  %reass.sub = sub nsw i32 %i.fk, %i.fl
  %i.fm = add nsw i32 %reass.sub, 62
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %.12996 = phi i32 [ %i.fm, %bb.ag ], [ 31, %bb.af ] ; 4 uses
  %i.fn = shl nuw nsw i32 %.12996, 2
  %.val3340 = load ptr, ptr %i.fc, align 8, !tbaa !21
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %.val3340, i64 %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 272340
  %.0.copyload.i3590 = load i32, ptr %i.fq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3590) #16, !srcloc !22
  %.not3110 = icmp eq i32 %.0.copyload.i3590, 0
  br i1 %.not3110, label %.loopexit3723, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fr = lshr i32 %.12996, 1
  %i.fs = sub nuw nsw i32 25, %i.fr
  %.not3111 = icmp eq i32 %.12996, 31
  %i.ft = select i1 %.not3111, i32 0, i32 %i.fs
  %i.fu = shl i32 %i.fb, %i.ft
  br label %bb.aj

bb.aj:                                            ; preds = %bb.al, %bb.ai
  %.33041 = phi i32 [ %.0.copyload.i3590, %bb.ai ], [ %.0.copyload.i3593, %bb.al ] ; 5 uses
  %.13032 = phi i32 [ %i.fu, %bb.ai ], [ %i.gl, %bb.al ] ; 2 uses
  %.13020 = phi i32 [ %i.fe, %bb.ai ], [ %.23021, %bb.al ] ; 2 uses
  %.03010 = phi i32 [ 0, %bb.ai ], [ %.13011, %bb.al ]
  %.3 = phi i32 [ 0, %bb.ai ], [ %i.gk, %bb.al ]
  %i.fv = zext i32 %.33041 to i64                 ; 2 uses
  %.val3339 = load ptr, ptr %i.fc, align 8, !tbaa !21
  %i.fw = getelementptr inbounds nuw i8, ptr %.val3339, i64 %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  %.0.copyload.i3591 = load i32, ptr %i.fx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3591) #16, !srcloc !22
  %i.fy = and i32 %.0.copyload.i3591, -8
  %i.fz = sub i32 %i.fy, %i.fb                    ; 3 uses
  %.not3112 = icmp ult i32 %i.fz, %.13020
  br i1 %.not3112, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %.not3113 = icmp eq i32 %i.fz, 0
  br i1 %.not3113, label %.loopexit3722.preheader, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.23021 = phi i32 [ %.13020, %bb.aj ], [ %i.fz, %bb.ak ] ; 2 uses
  %.13011 = phi i32 [ %.03010, %bb.aj ], [ %.33041, %bb.ak ] ; 2 uses
  %.val3338 = load ptr, ptr %i.fc, align 8, !tbaa !21
  %i.ga = getelementptr inbounds nuw i8, ptr %.val3338, i64 %i.fv
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 20
  %.0.copyload.i3592 = load i32, ptr %i.gb, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3592) #16, !srcloc !22
  %i.gc = lshr i32 %.13032, 29
  %i.gd = and i32 %i.gc, 4
  %i.ge = add i32 %i.gd, %.33041
  %i.gf = zext i32 %i.ge to i64
  %.val3337 = load ptr, ptr %i.fc, align 8, !tbaa !21
  %i.gg = getelementptr inbounds nuw i8, ptr %.val3337, i64 %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %.0.copyload.i3593 = load i32, ptr %i.gh, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3593) #16, !srcloc !22
  %i.gi = icmp eq i32 %.0.copyload.i3592, %.0.copyload.i3593
  %.not3114 = icmp eq i32 %.0.copyload.i3592, 0
  %i.gj = or i1 %.not3114, %i.gi
  %i.gk = select i1 %i.gj, i32 %.3, i32 %.0.copyload.i3592 ; 2 uses
  %i.gl = shl i32 %.13032, 1
  %.not3115 = icmp eq i32 %.0.copyload.i3593, 0
  br i1 %.not3115, label %.loopexit3723, label %bb.aj

.loopexit3723:                                    ; preds = %bb.al, %bb.ah
  %.33022 = phi i32 [ %i.fe, %bb.ah ], [ %.23021, %bb.al ] ; 2 uses
  %.23012 = phi i32 [ 0, %bb.ah ], [ %.13011, %bb.al ] ; 2 uses
  %.4 = phi i32 [ 0, %bb.ah ], [ %i.gk, %bb.al ]  ; 2 uses
  %i.gm = or i32 %.4, %.23012
  %.not3116 = icmp eq i32 %i.gm, 0
  br i1 %.not3116, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %.loopexit3723
  %i.gn = and i32 %.12996, 31
  %i.go = shl i32 2, %i.gn                        ; 2 uses
  %i.gp = sub i32 0, %i.go
  %i.gq = or i32 %i.go, %i.gp
  %i.gr = and i32 %i.gq, %.0.copyload.i3589       ; 4 uses
  %.not3117 = icmp eq i32 %i.gr, 0
  br i1 %.not3117, label %bb.az, label %bb.an

bb.an:                                            ; preds = %bb.am
  %9 = sub i32 0, %i.gr
  %10 = and i32 %i.gr, %9
  %.not3118 = icmp eq i32 %10, 0
  %i.gs = tail call range(i32 1, 33) i32 @llvm.cttz.i32(i32 %i.gr, i1 true)
  %i.gt = shl nuw nsw i32 %i.gs, 2
  %11 = add nuw nsw i32 %i.gt, 272340
  %12 = select i1 %.not3118, i32 272468, i32 %11
  %i.gu = zext nneg i32 %12 to i64
  %.val3336 = load ptr, ptr %i.fc, align 8, !tbaa !21
  %i.gv = getelementptr inbounds nuw i8, ptr %.val3336, i64 %i.gu
  %.0.copyload.i3594 = load i32, ptr %i.gv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3594) #16, !srcloc !22
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.loopexit3723
  %.33013 = phi i32 [ 0, %bb.an ], [ %.23012, %.loopexit3723 ] ; 2 uses
  %.5 = phi i32 [ %.0.copyload.i3594, %bb.an ], [ %.4, %.loopexit3723 ] ; 2 uses
  %.not3119 = icmp eq i32 %.5, 0
  br i1 %.not3119, label %.loopexit3721, label %.loopexit3722.preheader

.loopexit3722.preheader:                          ; preds = %bb.ak, %bb.ao
  %.53024.ph = phi i32 [ %.33022, %bb.ao ], [ 0, %bb.ak ]
  %.53015.ph = phi i32 [ %.33013, %bb.ao ], [ %.33041, %bb.ak ]
  %.7.ph = phi i32 [ %.5, %bb.ao ], [ %.33041, %bb.ak ]
  br label %.loopexit3722

.loopexit3722:                                    ; preds = %.loopexit3722.preheader, %bb.aq
  %.53024 = phi i32 [ %i.hc, %bb.aq ], [ %.53024.ph, %.loopexit3722.preheader ] ; 2 uses
  %.53015 = phi i32 [ %i.hd, %bb.aq ], [ %.53015.ph, %.loopexit3722.preheader ]
  %.7 = phi i32 [ %.22997, %bb.aq ], [ %.7.ph, %.loopexit3722.preheader ] ; 2 uses
  %i.gw = zext i32 %.7 to i64                     ; 3 uses
  %.val3335 = load ptr, ptr %i.fc, align 8, !tbaa !21
  %i.gx = getelementptr inbounds nuw i8, ptr %.val3335, i64 %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  %.0.copyload.i3595 = load i32, ptr %i.gy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3595) #16, !srcloc !22
  %i.gz = and i32 %.0.copyload.i3595, -8
  %i.ha = sub i32 %i.gz, %i.fb                    ; 2 uses
  %i.hb = icmp ult i32 %i.ha, %.53024
  %i.hc = tail call i32 @llvm.umin.i32(i32 %i.ha, i32 %.53024) ; 2 uses
  %i.hd = select i1 %i.hb, i32 %.7, i32 %.53015   ; 2 uses
  %.val3334 = load ptr, ptr %i.fc, align 8, !tbaa !21
  %i.he = getelementptr inbounds nuw i8, ptr %.val3334, i64 %i.gw
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %.0.copyload.i3596 = load i32, ptr %i.hf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3596) #16, !srcloc !22
  %.not3120 = icmp eq i32 %.0.copyload.i3596, 0
  br i1 %.not3120, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.loopexit3722
  %.val3333 = load ptr, ptr %i.fc, align 8, !tbaa !21
  %i.hg = getelementptr inbounds nuw i8, ptr %.val3333, i64 %i.gw
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 20
  %.0.copyload.i3597 = load i32, ptr %i.hh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3597) #16, !srcloc !22
  br label %bb.aq

bb.aq:                                            ; preds = %.loopexit3722, %bb.ap
  %.22997 = phi i32 [ %.0.copyload.i3597, %bb.ap ], [ %.0.copyload.i3596, %.loopexit3722 ] ; 2 uses
  %.not3121 = icmp eq i32 %.22997, 0
  br i1 %.not3121, label %.loopexit3721, label %.loopexit3722

.loopexit3721:                                    ; preds = %bb.aq, %bb.ao
  %.63025 = phi i32 [ %.33022, %bb.ao ], [ %i.hc, %bb.aq ] ; 14 uses
  %.63016 = phi i32 [ %.33013, %bb.ao ], [ %i.hd, %bb.aq ] ; 10 uses
  %.not3122 = icmp eq i32 %.63016, 0
  br i1 %.not3122, label %bb.az, label %bb.ar

bb.ar:                                            ; preds = %.loopexit3721
  %.val3332 = load ptr, ptr %i.fc, align 8, !tbaa !21
  %i.hi = getelementptr inbounds nuw i8, ptr %.val3332, i64 272044
  %.0.copyload.i3598 = load i32, ptr %i.hi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3598) #16, !srcloc !22
  %i.hj = sub i32 %.0.copyload.i3598, %i.fb
  %.not3123 = icmp ult i32 %.63025, %i.hj
  br i1 %.not3123, label %bb.as, label %bb.az

bb.as:                                            ; preds = %bb.ar
  %i.hk = zext i32 %.63016 to i64                 ; 9 uses
  %.val3331 = load ptr, ptr %i.fc, align 8, !tbaa !21
  %i.hl = getelementptr inbounds nuw i8, ptr %.val3331, i64 %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  %.0.copyload.i3599 = load i32, ptr %i.hm, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3599) #16, !srcloc !22
  %.val3330 = load ptr, ptr %i.fc, align 8, !tbaa !21
  %i.hn = getelementptr inbounds nuw i8, ptr %.val3330, i64 %i.hk
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 12
  %.0.copyload.i3600 = load i32, ptr %i.ho, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3600) #16, !srcloc !22
  %.not3124 = icmp eq i32 %.63016, %.0.copyload.i3600
  br i1 %.not3124, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.val3329 = load ptr, ptr %i.fc, align 8, !tbaa !21
  %i.hp = getelementptr inbounds nuw i8, ptr %.val3329, i64 272052
  %.0.copyload.i3601 = load i32, ptr %i.hp, align 1
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3601) #16, !srcloc !22
  %.val3328 = load ptr, ptr %i.fc, align 8, !tbaa !21
  %i.hq = getelementptr inbounds nuw i8, ptr %.val3328, i64 %i.hk
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %.0.copyload.i3602 = load i32, ptr %i.hr, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3602) #16, !srcloc !22
  %i.hs = zext i32 %.0.copyload.i3602 to i64
  %.val3534 = load ptr, ptr %i.fc, align 8, !tbaa !21
  %i.ht = getelementptr inbounds nuw i8, ptr %.val3534, i64 %i.hs
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 12
  store i32 %.0.copyload.i3600, ptr %i.hu, align 1
  %i.hv = zext i32 %.0.copyload.i3600 to i64
  %.val3533 = load ptr, ptr %i.fc, align 8, !tbaa !21
  %i.hw = getelementptr inbounds nuw i8, ptr %.val3533, i64 %i.hv
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  store i32 %.0.copyload.i3602, ptr %i.hx, align 1
  br label %bb.fd

bb.au:                                            ; preds = %bb.as
  %i.hy = add i32 %.63016, 20                     ; 2 uses
  %i.hz = zext i32 %i.hy to i64
  %.val3327 = load ptr, ptr %i.fc, align 8, !tbaa !21
  %i.ia = getelementptr inbounds nuw i8, ptr %.val3327, i64 %i.hz
  %.0.copyload.i3603 = load i32, ptr %i.ia, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3603) #16, !srcloc !22
  %.not3125 = icmp eq i32 %.0.copyload.i3603, 0
  br i1 %.not3125, label %bb.av, label %.backedge3720.preheader

bb.av:                                            ; preds = %bb.au
  %.val3326 = load ptr, ptr %i.fc, align 8, !tbaa !21
  %i.ib = getelementptr inbounds nuw i8, ptr %.val3326, i64 %i.hk
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %.0.copyload.i3604 = load i32, ptr %i.ic, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3604) #16, !srcloc !22
  %.not3126 = icmp eq i32 %.0.copyload.i3604, 0
  br i1 %.not3126, label %bb.fd, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.id = add i32 %.63016, 16
  br label %.backedge3720.preheader

.backedge3720.preheader:                          ; preds = %bb.aw, %bb.au
  %.53043.ph = phi i32 [ %i.id, %bb.aw ], [ %i.hy, %bb.au ]
  %.9.ph = phi i32 [ %.0.copyload.i3604, %bb.aw ], [ %.0.copyload.i3603, %bb.au ]
  br label %.backedge3720

.backedge3720:                                    ; preds = %.backedge3720.backedge, %.backedge3720.preheader
  %.53043 = phi i32 [ %.53043.ph, %.backedge3720.preheader ], [ %.53043.be, %.backedge3720.backedge ]
  %.9 = phi i32 [ %.9.ph, %.backedge3720.preheader ], [ %.9.be, %.backedge3720.backedge ] ; 4 uses
  %i.ie = add i32 %.9, 20                         ; 2 uses
  %i.if = zext i32 %i.ie to i64
  %.val3325 = load ptr, ptr %i.fc, align 8, !tbaa !21
  %i.ig = getelementptr inbounds nuw i8, ptr %.val3325, i64 %i.if
  %.0.copyload.i3605 = load i32, ptr %i.ig, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3605) #16, !srcloc !22
  %.not3127 = icmp eq i32 %.0.copyload.i3605, 0
  br i1 %.not3127, label %bb.ax, label %.backedge3720.backedge

.backedge3720.backedge:                           ; preds = %.backedge3720, %bb.ax
  %.53043.be = phi i32 [ %i.ie, %.backedge3720 ], [ %i.ih, %bb.ax ]
  %.9.be = phi i32 [ %.0.copyload.i3605, %.backedge3720 ], [ %.0.copyload.i3606, %bb.ax ]
  br label %.backedge3720

bb.ax:                                            ; preds = %.backedge3720
  %i.ih = add i32 %.9, 16
  %i.ii = zext i32 %.9 to i64
  %.val3324 = load ptr, ptr %i.fc, align 8, !tbaa !21
  %i.ij = getelementptr inbounds nuw i8, ptr %.val3324, i64 %i.ii
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %.0.copyload.i3606 = load i32, ptr %i.ik, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3606) #16, !srcloc !22
  %.not3128 = icmp eq i32 %.0.copyload.i3606, 0
  br i1 %.not3128, label %bb.ay, label %.backedge3720.backedge

bb.ay:                                            ; preds = %bb.ax
  %i.il = zext i32 %.53043 to i64
  %.val3532 = load ptr, ptr %i.fc, align 8, !tbaa !21
  %i.im = getelementptr inbounds nuw i8, ptr %.val3532, i64 %i.il
  store i32 0, ptr %i.im, align 1
  br label %bb.fd

bb.az:                                            ; preds = %bb.ar, %.loopexit3721, %bb.am, %bb.ae, %bb.ad, %bb.r, %bb.g
  %.03008 = phi i32 [ %i.j, %bb.g ], [ %i.j, %bb.r ], [ -1, %bb.ad ], [ %i.fb, %bb.ae ], [ %i.fb, %bb.am ], [ %i.fb, %.loopexit3721 ], [ %i.fb, %bb.ar ] ; 19 uses
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 259 uses
  %.val3323 = load ptr, ptr %i.in, align 8, !tbaa !21
  %i.io = getelementptr inbounds nuw i8, ptr %.val3323, i64 272044
  %.0.copyload.i3607 = load i32, ptr %i.io, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3607) #16, !srcloc !22
  %.not3162 = icmp ugt i32 %.03008, %.0.copyload.i3607
  %.val3320 = load ptr, ptr %i.in, align 8, !tbaa !21 ; 2 uses
  br i1 %.not3162, label %bb.be, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ip = getelementptr inbounds nuw i8, ptr %.val3320, i64 272056
  %.0.copyload.i3608 = load i32, ptr %i.ip, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3608) #16, !srcloc !22
  %i.iq = sub nuw i32 %.0.copyload.i3607, %.03008 ; 4 uses
  %i.ir = icmp ugt i32 %i.iq, 15
  br i1 %i.ir, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.is = add i32 %.0.copyload.i3608, %.03008     ; 2 uses
  %i.it = or i32 %i.iq, 1
  %i.iu = zext i32 %i.is to i64
  %.val3531 = load ptr, ptr %i.in, align 8, !tbaa !21
  %i.iv = getelementptr inbounds nuw i8, ptr %.val3531, i64 %i.iu
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 4
  store i32 %i.it, ptr %i.iw, align 1
  %i.ix = add i32 %.0.copyload.i3608, %.0.copyload.i3607
  %i.iy = zext i32 %i.ix to i64
  %.val3530 = load ptr, ptr %i.in, align 8, !tbaa !21
  %i.iz = getelementptr inbounds nuw i8, ptr %.val3530, i64 %i.iy
  store i32 %i.iq, ptr %i.iz, align 1
  %i.ja = or i32 %.03008, 3
end_hunk_0
