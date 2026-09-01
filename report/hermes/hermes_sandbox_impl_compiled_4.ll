Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_4?download=true
inline.NumInlined: 16097
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AcurTime0x280x29:bb.a
  %i.e = tail call i32 @w2c_hermes_0x5F_clock_gettime(ptr noundef %0, i32 noundef 0, i32 noundef %i.d) #6
  %.not = icmp eq i32 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 27 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val190 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %.val190, i64 272032
  %.0.copyload.i = load i32, ptr %i.g, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #6, !srcloc !13
  tail call void @w2c_hermes_abort_message(ptr noundef nonnull %0, i32 noundef %.0.copyload.i, i32 noundef 54929) #6
  tail call void @wasm_rt_trap(i32 noundef 5) #7
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = zext i32 %i.c to i64                     ; 7 uses
  %.val203 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %.val203, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.0.copyload.i205 = load i64, ptr %i.j, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i205) #6, !srcloc !21
  %i.k = add nuw nsw i64 %i.h, 24                 ; 2 uses
  %.val188 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %.val188, i64 %i.k
  store i64 %.0.copyload.i205, ptr %i.l, align 1
  %.val189 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %.val189, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %.0.copyload.i206 = load i32, ptr %i.n, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i206) #6, !srcloc !13
  %i.o = sdiv i32 %.0.copyload.i206, 1000
  %i.p = add nuw nsw i64 %i.h, 12                 ; 2 uses
  %.val191 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %.val191, i64 %i.p
  store i32 %i.o, ptr %i.q, align 1
  %.val204 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %.val204, i64 %i.p
  %.0.copyload.i207 = load i32, ptr %i.r, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i207) #6, !srcloc !41
  %i.s = sext i32 %.0.copyload.i207 to i64
  %i.t = add nuw nsw i64 %i.h, 16                 ; 2 uses
  %.val187 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %.val187, i64 %i.t
  store i64 %i.s, ptr %i.u, align 1
  %i.v = load i32, ptr %i.a, align 8, !tbaa !15   ; 4 uses
  %i.w = add i32 %i.v, -32                        ; 2 uses
  %i.x = add i32 %i.v, -48                        ; 2 uses
  %i.y = add i32 %i.v, -80                        ; 2 uses
  store i32 %i.y, ptr %i.a, align 8, !tbaa !15
  %.val202 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %.val202, i64 %i.k
  %.0.copyload.i208 = load i64, ptr %i.z, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i208) #6, !srcloc !21
  %i.aa = mul i64 %.0.copyload.i208, 1000000
  %i.ab = zext i32 %i.y to i64                    ; 3 uses
  %.val186 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %.val186, i64 %i.ab
  store i64 %i.aa, ptr %i.ac, align 1
  %.val201 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.ad = getelementptr inbounds nuw i8, ptr %.val201, i64 %i.ab
  %.0.copyload.i209 = load i64, ptr %i.ad, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i209) #6, !srcloc !21
  %i.ae = add nuw nsw i64 %i.ab, 8                ; 2 uses
  %.val185 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %.val185, i64 %i.ae
  store i64 %.0.copyload.i209, ptr %i.af, align 1
  %.val200 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %.val200, i64 %i.ae
  %.0.copyload.i210 = load i64, ptr %i.ag, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i210) #6, !srcloc !21
  store i32 %i.x, ptr %i.a, align 8, !tbaa !15
  %i.ah = zext i32 %i.x to i64
  %i.ai = add nuw nsw i64 %i.ah, 8                ; 2 uses
  %.val184 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.aj = getelementptr inbounds nuw i8, ptr %.val184, i64 %i.ai
  store i64 %.0.copyload.i210, ptr %i.aj, align 1
  %.val199 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.ak = getelementptr inbounds nuw i8, ptr %.val199, i64 %i.ai
  %.0.copyload.i211 = load i64, ptr %i.ak, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i211) #6, !srcloc !21
  %i.al = zext i32 %i.w to i64                    ; 5 uses
  %i.am = add nuw nsw i64 %i.al, 8                ; 2 uses
  %.val183 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.an = getelementptr inbounds nuw i8, ptr %.val183, i64 %i.am
  store i64 %.0.copyload.i211, ptr %i.an, align 1
  store i32 %i.w, ptr %i.a, align 8, !tbaa !15
  %.val198 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %.val198, i64 %i.am
  %.0.copyload.i212 = load i64, ptr %i.ao, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i212) #6, !srcloc !21
  %.val197 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.ap = getelementptr inbounds nuw i8, ptr %.val197, i64 %i.t
  %.0.copyload.i213 = load i64, ptr %i.ap, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i213) #6, !srcloc !21
  %.val182 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.aq = getelementptr inbounds nuw i8, ptr %.val182, i64 %i.al
  store i64 %.0.copyload.i213, ptr %i.aq, align 1
  %.val196 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.ar = getelementptr inbounds nuw i8, ptr %.val196, i64 %i.al
  %.0.copyload.i214 = load i64, ptr %i.ar, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i214) #6, !srcloc !21
  %i.as = add i64 %.0.copyload.i214, %.0.copyload.i212
  %i.at = add nuw nsw i64 %i.al, 16               ; 2 uses
  %.val181 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.au = getelementptr inbounds nuw i8, ptr %.val181, i64 %i.at
  store i64 %i.as, ptr %i.au, align 1
  %.val195 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.av = getelementptr inbounds nuw i8, ptr %.val195, i64 %i.at
  %.0.copyload.i215 = load i64, ptr %i.av, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i215) #6, !srcloc !21
  %i.aw = add nuw nsw i64 %i.al, 24               ; 2 uses
  %.val180 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.ax = getelementptr inbounds nuw i8, ptr %.val180, i64 %i.aw
  store i64 %.0.copyload.i215, ptr %i.ax, align 1
  %.val194 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.ay = getelementptr inbounds nuw i8, ptr %.val194, i64 %i.aw
  %.0.copyload.i216 = load i64, ptr %i.ay, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i216) #6, !srcloc !21
  store i32 %i.v, ptr %i.a, align 8, !tbaa !15
  %i.az = add nuw nsw i64 %i.h, 32                ; 2 uses
  %.val179 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.ba = getelementptr inbounds nuw i8, ptr %.val179, i64 %i.az
  store i64 %.0.copyload.i216, ptr %i.ba, align 1
  %.val193 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.bb = getelementptr inbounds nuw i8, ptr %.val193, i64 %i.az
  %.0.copyload.i217 = load i64, ptr %i.bb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i217) #6, !srcloc !21
  %i.bc = add nuw nsw i64 %i.h, 56                ; 2 uses
  %.val = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.bd = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bc
  store i64 %.0.copyload.i217, ptr %i.bd, align 1
  %.val192 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.be = getelementptr inbounds nuw i8, ptr %.val192, i64 %i.bc
  %.0.copyload.i218 = load i64, ptr %i.be, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i218) #6, !srcloc !21
  store i32 %i.b, ptr %i.a, align 8, !tbaa !15
  %i.bf = sdiv i64 %.0.copyload.i218, 1000
  ret i64 %i.bf
}

declare void @w2c_hermes_abort_message(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AcreateDynamicFunction0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x2C0x20hermes0x3A0x3Avm0x3A0x3ADynamicFunctionKind0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 26 uses
  %i.c = add i32 %i.b, -352                       ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 320 uses
  %i.e = zext i32 %i.c to i64                     ; 46 uses
  %.val2832 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %.val2832, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  store i32 %2, ptr %i.g, align 1
  %i.h = zext i32 %2 to i64                       ; 4 uses
  %i.i = add nuw nsw i64 %i.h, 4                  ; 12 uses
  %.val2774 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %.val2774, i64 %i.i
  %.0.copyload.i = load i32, ptr %i.j, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #6, !srcloc !13
  %i.k = add i32 %i.b, -76                        ; 2 uses
  %i.l = add i32 %i.b, -216                       ; 2 uses
  %i.m = zext i32 %i.k to i64
  %.val2831 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %.val2831, i64 %i.m
  store i32 %i.l, ptr %i.n, align 1
  %.val2657 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %.val2657, i64 %i.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 268
  store i64 17179869185, ptr %i.p, align 1
  %i.q = add nuw nsw i64 %i.e, 264                ; 2 uses
  %.val2830 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %.val2830, i64 %i.q
  store i32 %i.k, ptr %i.r, align 1
  %.val2829 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %.val2829, i64 %i.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 132
  store i32 %.0.copyload.i, ptr %i.t, align 1
  %i.u = add i32 %i.b, -88
  %i.v = add nuw nsw i64 %i.e, 296                ; 2 uses
  %.val2828 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %.val2828, i64 %i.v
  store i32 %i.u, ptr %i.w, align 1
  %i.x = add nuw nsw i64 %i.e, 292                ; 3 uses
  %.val2827 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.y = getelementptr inbounds nuw i8, ptr %.val2827, i64 %i.x
  store i32 %i.l, ptr %i.y, align 1
  %i.z = add nuw nsw i64 %i.e, 300                ; 3 uses
  %.val2826 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aa = getelementptr inbounds nuw i8, ptr %.val2826, i64 %i.z
  store i32 0, ptr %i.aa, align 1
  %i.ab = add i32 %i.b, -224                      ; 2 uses
  %.val2825 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %.val2825, i64 %i.i
  store i32 %i.ab, ptr %i.ac, align 1
  %i.ad = zext i32 %3 to i64                      ; 4 uses
  %.val2773 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ae = getelementptr inbounds nuw i8, ptr %.val2773, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %.0.copyload.i2939 = load i32, ptr %i.af, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2939) #6, !srcloc !13
  %i.ag = tail call i32 @llvm.usub.sat.i32(i32 %.0.copyload.i2939, i32 1) ; 6 uses
  %i.ah = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSArray0x3A0x3Acreate0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20int0x2C0x20unsigned0x20int0x29(ptr noundef %0, i32 noundef %2, i32 noundef %i.ag, i32 noundef %i.ag) #6 ; 3 uses
  %i.ai = icmp eq i32 %i.ah, -1
  br i1 %i.ai, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aj = zext i32 %1 to i64
  %.val2824 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ak = getelementptr inbounds nuw i8, ptr %.val2824, i64 %i.aj
  store i32 0, ptr %i.ak, align 1
  br label %bb.eo

bb.c:                                             ; preds = %bb.a
  %.val2772 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %.val2772, i64 %i.i
  %.0.copyload.i2940 = load i32, ptr %i.al, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2940) #6, !srcloc !13
  %i.am = zext i32 %.0.copyload.i2940 to i64      ; 2 uses
  %i.an = add nuw nsw i64 %i.am, 164              ; 2 uses
  %.val2771 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %.val2771, i64 %i.an
  %.0.copyload.i2941 = load i32, ptr %i.ao, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2941) #6, !srcloc !13
  %.val2770 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ap = getelementptr inbounds nuw i8, ptr %.val2770, i64 %i.am
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 168
  %.0.copyload.i2942 = load i32, ptr %i.aq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2942) #6, !srcloc !13
  %i.ar = icmp ult i32 %.0.copyload.i2941, %.0.copyload.i2942
  br i1 %i.ar, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.as = add i32 %.0.copyload.i2941, 8
  %.val2823 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %.val2823, i64 %i.an
  store i32 %i.as, ptr %i.at, align 1
  %i.au = zext i32 %.0.copyload.i2941 to i64
  %.val2656 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.av = getelementptr inbounds nuw i8, ptr %.val2656, i64 %i.au
  store i64 -844424930131968, ptr %i.av, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.aw = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i2940, i64 noundef -844424930131968) #6
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.02487 = phi i32 [ %.0.copyload.i2941, %bb.d ], [ %i.aw, %bb.e ] ; 5 uses
  %.val2769 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ax = getelementptr inbounds nuw i8, ptr %.val2769, i64 %i.i
  %.0.copyload.i2943 = load i32, ptr %i.ax, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2943) #6, !srcloc !13
  %i.ay = zext i32 %.0.copyload.i2943 to i64      ; 2 uses
  %i.az = add nuw nsw i64 %i.ay, 164              ; 2 uses
  %.val2768 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ba = getelementptr inbounds nuw i8, ptr %.val2768, i64 %i.az
  %.0.copyload.i2944 = load i32, ptr %i.ba, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2944) #6, !srcloc !13
  %.val2767 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bb = getelementptr inbounds nuw i8, ptr %.val2767, i64 %i.ay
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 168
  %.0.copyload.i2945 = load i32, ptr %i.bc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2945) #6, !srcloc !13
  %i.bd = icmp ult i32 %.0.copyload.i2944, %.0.copyload.i2945
  br i1 %i.bd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.be = add i32 %.0.copyload.i2944, 8
  %.val2822 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bf = getelementptr inbounds nuw i8, ptr %.val2822, i64 %i.az
  store i32 %i.be, ptr %i.bf, align 1
  %i.bg = zext i32 %.0.copyload.i2944 to i64
  %.val2655 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bh = getelementptr inbounds nuw i8, ptr %.val2655, i64 %i.bg
  store i64 -281474976710656, ptr %i.bh, align 1
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bi = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i2943, i64 noundef -281474976710656) #6
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.02488 = phi i32 [ %.0.copyload.i2944, %bb.g ], [ %i.bi, %bb.h ] ; 2 uses
  %i.bj = add i32 %i.ag, -1                       ; 2 uses
  %i.bk = icmp ugt i32 %.0.copyload.i2939, 1      ; 2 uses
  %i.bl = select i1 %i.bk, i32 %i.bj, i32 0
  %i.bm = add i32 %4, -1                          ; 3 uses
  %switch.selectcmp = icmp eq i32 %i.bm, 1
  %switch.select = select i1 %switch.selectcmp, i32 608, i32 200
  %switch.selectcmp3211 = icmp eq i32 %i.bm, 0
  %switch.select3212 = select i1 %switch.selectcmp3211, i32 640, i32 %switch.select
  %i.bn = add i32 %2, %switch.select3212
  %i.bo = zext i32 %i.bn to i64
  %.val2938 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bp = getelementptr inbounds nuw i8, ptr %.val2938, i64 %i.bo
  %.0.copyload.i2946 = load i32, ptr %i.bp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2946) #6, !srcloc !24
  %i.bq = zext i32 %.0.copyload.i2946 to i64
  %i.br = or disjoint i64 %i.bq, -281474976710656
  %i.bs = zext i32 %.02488 to i64
  %.val2654 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bt = getelementptr inbounds nuw i8, ptr %.val2654, i64 %i.bs
  store i64 %i.br, ptr %i.bt, align 1
  %.val2766 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bu = getelementptr inbounds nuw i8, ptr %.val2766, i64 %i.ad
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.0.copyload.i2947 = load i32, ptr %i.bv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2947) #6, !srcloc !13
  %i.bw = zext i32 %.0.copyload.i2947 to i64
  %.val2846 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bx = getelementptr inbounds nuw i8, ptr %.val2846, i64 %i.bw
  %.0.copyload.i2948 = load i64, ptr %i.bx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2948) #6, !srcloc !21
  %.mask = and i64 %.0.copyload.i2948, -140737488355328
  %i.by = icmp eq i64 %.mask, -1688849860263936
  br i1 %i.by, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val2765 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bz = getelementptr inbounds nuw i8, ptr %.val2765, i64 %i.ad
  %.0.copyload.i2949 = load i32, ptr %i.bz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2949) #6, !srcloc !13
  %i.ca = zext i32 %.0.copyload.i2949 to i64
  %.val2764 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cb = getelementptr inbounds nuw i8, ptr %.val2764, i64 %i.ca
  %.0.copyload.i2950 = load i32, ptr %i.cb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2950) #6, !srcloc !13
  %i.cc = zext i32 %.0.copyload.i2950 to i64
  %.val2937 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cd = getelementptr inbounds nuw i8, ptr %.val2937, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %.0.copyload.i2951 = load i32, ptr %i.ce, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2951) #6, !srcloc !24
  %i.cf = zext i32 %.0.copyload.i2951 to i64
  %i.cg = or disjoint i64 %i.cf, -281474976710656 ; 2 uses
  %.val2763 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ch = getelementptr inbounds nuw i8, ptr %.val2763, i64 %i.i
  %.0.copyload.i2952 = load i32, ptr %i.ch, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2952) #6, !srcloc !13
  %i.ci = zext i32 %.0.copyload.i2952 to i64      ; 2 uses
  %i.cj = add nuw nsw i64 %i.ci, 164              ; 2 uses
  %.val2762 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ck = getelementptr inbounds nuw i8, ptr %.val2762, i64 %i.cj
  %.0.copyload.i2953 = load i32, ptr %i.ck, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2953) #6, !srcloc !13
  %.val2761 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cl = getelementptr inbounds nuw i8, ptr %.val2761, i64 %i.ci
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 168
  %.0.copyload.i2954 = load i32, ptr %i.cm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2954) #6, !srcloc !13
  %i.cn = icmp ult i32 %.0.copyload.i2953, %.0.copyload.i2954
  br i1 %i.cn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.co = add i32 %.0.copyload.i2953, 8
  %.val2821 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cp = getelementptr inbounds nuw i8, ptr %.val2821, i64 %i.cj
  store i32 %i.co, ptr %i.cp, align 1
  %i.cq = zext i32 %.0.copyload.i2953 to i64
  %.val2653 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cr = getelementptr inbounds nuw i8, ptr %.val2653, i64 %i.cq
  store i64 %i.cg, ptr %i.cr, align 1
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.cs = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i2952, i64 noundef %i.cg) #6
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l, %bb.k
  %.12489 = phi i32 [ %.02488, %bb.i ], [ %.0.copyload.i2953, %bb.k ], [ %i.cs, %bb.l ] ; 2 uses
  %i.ct = zext i32 %i.bl to i64                   ; 3 uses
  %.not = icmp eq i32 %.0.copyload.i2939, 0
  br i1 %.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cu = add i32 %2, 5476
  %i.cv = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AIdentifierTable0x3A0x3AgetStringPrim0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x29(ptr noundef nonnull %0, i32 noundef %i.cu, i32 noundef %2, i32 noundef 14) #6
  %i.cw = zext i32 %i.cv to i64
  %i.cx = or disjoint i64 %i.cw, -844424930131968
  %i.cy = zext i32 %.02487 to i64
  %.val2652 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cz = getelementptr inbounds nuw i8, ptr %.val2652, i64 %i.cy
  store i64 %i.cx, ptr %i.cz, align 1
  br label %bb.az

bb.o:                                             ; preds = %bb.m
  %.val2760 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.da = getelementptr inbounds nuw i8, ptr %.val2760, i64 %i.ad
  %.0.copyload.i2955 = load i32, ptr %i.da, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2955) #6, !srcloc !13
  %.not2578 = icmp ne i32 %.0.copyload.i2939, 1   ; 2 uses
  br i1 %.not2578, label %bb.p, label %.loopexit3151

bb.p:                                             ; preds = %bb.o
  %.val2759 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.db = getelementptr inbounds nuw i8, ptr %.val2759, i64 %i.x
  %.0.copyload.i2956 = load i32, ptr %i.db, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2956) #6, !srcloc !13
  %i.dc = tail call i32 @llvm.umax.i32(i32 %i.ag, i32 1)
  %i.dd = add i32 %.0.copyload.i2955, -8
  %.val2758 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.de = getelementptr inbounds nuw i8, ptr %.val2758, i64 %i.z
  %.0.copyload.i2957 = load i32, ptr %i.de, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2957) #6, !srcloc !13
  %i.df = shl i32 %.0.copyload.i2957, 2
  %i.dg = add i32 %i.b, -48
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %bb.p
  %.02523 = phi i32 [ 0, %bb.p ], [ %i.es, %bb.u ] ; 4 uses
  %.02490 = phi i32 [ 0, %bb.p ], [ %i.er, %bb.u ]
  %.02481 = phi i64 [ %i.ct, %bb.p ], [ %i.eo, %bb.u ]
  %.val2757 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.dh = getelementptr inbounds nuw i8, ptr %.val2757, i64 %i.q
  %.0.copyload.i2958 = load i32, ptr %i.dh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2958) #6, !srcloc !13
  %i.di = add i32 %.0.copyload.i2958, %i.df
  %i.dj = zext i32 %i.di to i64
  %.val2756 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.dk = getelementptr inbounds nuw i8, ptr %.val2756, i64 %i.dj
  %.0.copyload.i2959 = load i32, ptr %i.dk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2959) #6, !srcloc !13
  %.val2820 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.dl = getelementptr inbounds nuw i8, ptr %.val2820, i64 %i.z
  store i32 %.0.copyload.i2957, ptr %i.dl, align 1
  %.val2819 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.dm = getelementptr inbounds nuw i8, ptr %.val2819, i64 %i.x
  store i32 %.0.copyload.i2956, ptr %i.dm, align 1
  %i.dn = add i32 %.0.copyload.i2959, 128
  %.val2818 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.do = getelementptr inbounds nuw i8, ptr %.val2818, i64 %i.v
  store i32 %i.dn, ptr %i.do, align 1
  %i.dp = shl i32 %.02523, 3
  %i.dq = sub i32 %i.dd, %i.dp
  %.not2579 = icmp ult i32 %.02523, %.0.copyload.i2939
  %i.dr = select i1 %.not2579, i32 %i.dq, i32 70392
  %i.ds = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoString_RJS0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %i.dr) #6 ; 2 uses
  %i.dt = icmp eq i32 %i.ds, -1
  br i1 %i.dt, label %bb.ay, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.du = zext i32 %i.ds to i64
  %i.dv = or disjoint i64 %i.du, -844424930131968 ; 2 uses
  %.val2755 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.dw = getelementptr inbounds nuw i8, ptr %.val2755, i64 %i.i
  %.0.copyload.i2960 = load i32, ptr %i.dw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2960) #6, !srcloc !13
  %i.dx = zext i32 %.0.copyload.i2960 to i64      ; 2 uses
  %i.dy = add nuw nsw i64 %i.dx, 164              ; 2 uses
  %.val2754 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.dz = getelementptr inbounds nuw i8, ptr %.val2754, i64 %i.dy
  %.0.copyload.i2961 = load i32, ptr %i.dz, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2961) #6, !srcloc !13
  %.val2753 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ea = getelementptr inbounds nuw i8, ptr %.val2753, i64 %i.dx
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 168
  %.0.copyload.i2962 = load i32, ptr %i.eb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2962) #6, !srcloc !13
  %i.ec = icmp ult i32 %.0.copyload.i2961, %.0.copyload.i2962
  br i1 %i.ec, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ed = add i32 %.0.copyload.i2961, 8
  %.val2817 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ee = getelementptr inbounds nuw i8, ptr %.val2817, i64 %i.dy
  store i32 %i.ed, ptr %i.ee, align 1
  %i.ef = zext i32 %.0.copyload.i2961 to i64      ; 2 uses
  %.val2651 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.eg = getelementptr inbounds nuw i8, ptr %.val2651, i64 %i.ef
  store i64 %i.dv, ptr %i.eg, align 1
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.eh = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i2960, i64 noundef %i.dv) #6 ; 2 uses
  %.pre3171 = zext i32 %i.eh to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pre-phi3172 = phi i64 [ %.pre3171, %bb.t ], [ %i.ef, %bb.s ]
  %.02499 = phi i32 [ %i.eh, %bb.t ], [ %.0.copyload.i2961, %bb.s ]
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AArrayImpl0x3A0x3A_setOwnIndexedImpl0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20int0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.dg, i32 noundef %i.ah, i32 noundef %2, i32 noundef %.02523, i32 noundef %.02499) #6
  %.val2752 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ei = getelementptr inbounds nuw i8, ptr %.val2752, i64 %.pre-phi3172
  %.0.copyload.i2963 = load i32, ptr %i.ei, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2963) #6, !srcloc !13
  %i.ej = zext i32 %.0.copyload.i2963 to i64
  %.val2936 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ek = getelementptr inbounds nuw i8, ptr %.val2936, i64 %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  %.0.copyload.i2964 = load i32, ptr %i.el, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2964) #6, !srcloc !24
  %i.em = and i32 %.0.copyload.i2964, 2147483647
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = add i64 %.02481, %i.en                  ; 3 uses
  %i.ep = lshr i64 %i.eo, 32
  %i.eq = trunc nuw i64 %i.ep to i32
  %i.er = or i32 %.02490, %i.eq                   ; 2 uses
  %i.es = add nuw i32 %.02523, 1                  ; 2 uses
  %.not2580 = icmp eq i32 %i.es, %i.dc
  br i1 %.not2580, label %.loopexit3151, label %bb.q

.loopexit3151:                                    ; preds = %bb.u, %bb.o
  %.12491 = phi i32 [ 0, %bb.o ], [ %i.er, %bb.u ]
  %.12482 = phi i64 [ %i.ct, %bb.o ], [ %i.eo, %bb.u ]
  %i.et = shl i32 %i.ag, 3
  %reass.sub = sub i32 %.0.copyload.i2955, %i.et
  %i.eu = add i32 %reass.sub, -8
  %i.ev = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoString_RJS0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %i.eu) #6 ; 2 uses
  %i.ew = icmp eq i32 %i.ev, -1
  br i1 %i.ew, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.loopexit3151
  %i.ex = zext i32 %1 to i64
  %.val2816 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ey = getelementptr inbounds nuw i8, ptr %.val2816, i64 %i.ex
  store i32 0, ptr %i.ey, align 1
  br label %bb.eo

bb.w:                                             ; preds = %.loopexit3151
  %i.ez = zext i32 %i.ev to i64                   ; 2 uses
  %i.fa = or disjoint i64 %i.ez, -844424930131968
  %i.fb = zext i32 %.02487 to i64                 ; 3 uses
  %.val2650 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.fc = getelementptr inbounds nuw i8, ptr %.val2650, i64 %i.fb
  store i64 %i.fa, ptr %i.fc, align 1
  %.val2935 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.fd = getelementptr inbounds nuw i8, ptr %.val2935, i64 %i.ez
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  %.0.copyload.i2965 = load i32, ptr %i.fe, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2965) #6, !srcloc !24
  %i.ff = and i32 %.0.copyload.i2965, 2147483647
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = add i64 %.12482, %i.fg                  ; 3 uses
  %i.fi = lshr i64 %i.fh, 32
  %i.fj = trunc nuw i64 %i.fi to i32
  %i.fk = or i32 %.12491, %i.fj                   ; 2 uses
  %.not2582 = icmp ne i32 %4, 0
  %brmerge = or i1 %.not2582, %.not2578
  br i1 %brmerge, label %bb.az, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fl = add i32 %2, 5476
  %i.fm = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AIdentifierTable0x3A0x3AgetStringPrim0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x29(ptr noundef nonnull %0, i32 noundef %i.fl, i32 noundef %2, i32 noundef 447) #6 ; 2 uses
  %.val2751 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.fn = getelementptr inbounds nuw i8, ptr %.val2751, i64 %i.fb
  %.0.copyload.i2966 = load i32, ptr %i.fn, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2966) #6, !srcloc !13
  %i.fo = icmp eq i32 %.0.copyload.i2966, %i.fm
  br i1 %i.fo, label %w2c_hermes_hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3A0x3Aequals0x28hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x20const0x2A0x290x20const.exit.thread, label %w2c_hermes_hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3A0x3Aequals0x28hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x20const0x2A0x290x20const.exit

w2c_hermes_hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3A0x3Aequals0x28hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x20const0x2A0x290x20const.exit: ; preds = %bb.x
  %i.fp = zext i32 %.0.copyload.i2966 to i64
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.fq = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  %.0.copyload.i.i = load i32, ptr %i.fr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i) #6, !srcloc !13
  %i.fs = and i32 %.0.copyload.i.i, 2147483647
  %i.ft = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3A0x3AsliceEquals0x28unsigned0x20int0x2C0x20unsigned0x20int0x2C0x20hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x20const0x2A0x290x20const(ptr noundef nonnull readonly %0, i32 noundef %.0.copyload.i2966, i32 noundef 0, i32 noundef %i.fs, i32 noundef %i.fm)
  %.not2583 = icmp eq i32 %i.ft, 0
  br i1 %.not2583, label %bb.y, label %w2c_hermes_hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3A0x3Aequals0x28hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x20const0x2A0x290x20const.exit.thread

bb.y:                                             ; preds = %w2c_hermes_hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3A0x3Aequals0x28hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x20const0x2A0x290x20const.exit
  %i.fu = add i32 %i.b, -48
  %.val32.i = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.fv = getelementptr inbounds nuw i8, ptr %.val32.i, i64 %i.fb
  %.0.copyload.i.i2967 = load i32, ptr %i.fv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i2967) #6, !srcloc !13
  %i.fw = zext i32 %.0.copyload.i.i2967 to i64    ; 2 uses
  %.val31.i = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.fx = getelementptr inbounds nuw i8, ptr %.val31.i, i64 %i.fw
  %.0.copyload.i36.i = load i32, ptr %i.fx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i36.i) #6, !srcloc !13
  %i.fy = shl i32 %.0.copyload.i36.i, 7
  %i.fz = and i32 %i.fy, -2147483648
  %i.ga = xor i32 %i.fz, -1073741824
  %i.gb = zext i32 %i.fu to i64                   ; 4 uses
  %.val35.i = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.gc = getelementptr inbounds nuw i8, ptr %.val35.i, i64 %i.gb
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  store i32 %i.ga, ptr %i.gd, align 1
  %.val.i2968 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ge = getelementptr inbounds nuw i8, ptr %.val.i2968, i64 %i.fw
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  %.0.copyload.i37.i = load i32, ptr %i.gf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i37.i) #6, !srcloc !13
  %.val34.i = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.gg = getelementptr inbounds nuw i8, ptr %.val34.i, i64 %i.gb
  store i32 %.02487, ptr %i.gg, align 1
  %i.gh = and i32 %.0.copyload.i37.i, 2147483647
  %.val33.i = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.gi = getelementptr inbounds nuw i8, ptr %.val33.i, i64 %i.gb
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  store i32 %i.gh, ptr %i.gj, align 1
  %.val2835 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.gk = getelementptr inbounds nuw i8, ptr %.val2835, i64 290152
  %.0.copyload.i2969 = load i8, ptr %i.gk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2969) #6, !srcloc !14
  %.not2584 = icmp eq i8 %.0.copyload.i2969, 0
  br i1 %.not2584, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gl = load i32, ptr %i.a, align 8, !tbaa !15  ; 5 uses
  %i.gm = add i32 %i.gl, -272                     ; 2 uses
  store i32 %i.gm, ptr %i.a, align 8, !tbaa !15
  %i.gn = zext i32 %i.gm to i64                   ; 6 uses
  %.val2815 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.go = getelementptr inbounds nuw i8, ptr %.val2815, i64 %i.gn
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 268
  store i32 29, ptr %i.gp, align 1
  %i.gq = add nuw nsw i64 %i.gn, 264              ; 2 uses
  %.val2814 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.gr = getelementptr inbounds nuw i8, ptr %.val2814, i64 %i.gq
  store i32 230710, ptr %i.gr, align 1
  %.val2813 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.gs = getelementptr inbounds nuw i8, ptr %.val2813, i64 %i.gn
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 260
  store i32 0, ptr %i.gt, align 1
  %i.gu = add nuw nsw i64 %i.gn, 256              ; 2 uses
  %.val2812 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.gv = getelementptr inbounds nuw i8, ptr %.val2812, i64 %i.gu
  store i32 230770, ptr %i.gv, align 1
  %.val2845 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.gw = getelementptr inbounds nuw i8, ptr %.val2845, i64 %i.gq
  %.0.copyload.i2970 = load i64, ptr %i.gw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2970) #6, !srcloc !21
  %.val2649 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.gx = getelementptr inbounds nuw i8, ptr %.val2649, i64 %i.gn
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  store i64 %.0.copyload.i2970, ptr %i.gy, align 1
  %.val2844 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.gz = getelementptr inbounds nuw i8, ptr %.val2844, i64 %i.gu
  %.0.copyload.i2971 = load i64, ptr %i.gz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2971) #6, !srcloc !21
  %.val2648 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ha = getelementptr inbounds nuw i8, ptr %.val2648, i64 %i.gn
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  store i64 %.0.copyload.i2971, ptr %i.hb, align 1
  %i.hc = add i32 %i.gl, -248
  %i.hd = add i32 %i.gl, -256
  %i.he = add i32 %i.gl, -264
  %i.hf = tail call i32 @w2c_hermes_hermes0x3A0x3Aregex0x3A0x3ARegex0x3Chermes0x3A0x3Aregex0x3A0x3AUTF16RegexTraits0x3E0x3A0x3ARegex0x28llvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x2C0x20llvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.hc, i32 noundef %i.hd, i32 noundef %i.he) #6 ; 2 uses
  tail call void @w2c_hermes_hermes0x3A0x3Aregex0x3A0x3ARegex0x3Chermes0x3A0x3Aregex0x3A0x3AUTF16RegexTraits0x3E0x3A0x3Acompile0x280x290x20const(ptr noundef nonnull %0, i32 noundef 290140, i32 noundef %i.hf) #6
  tail call void @w2c_hermes_hermes0x3A0x3Aregex0x3A0x3ARegex0x3Chermes0x3A0x3Aregex0x3A0x3AUTF16RegexTraits0x3E0x3A0x3A0x7ERegex0x280x29(ptr noundef nonnull %0, i32 noundef %i.hf) #6
  store i32 %i.gl, ptr %i.a, align 8, !tbaa !15
  %.val2660 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.hg = getelementptr inbounds nuw i8, ptr %.val2660, i64 290152
  store i8 1, ptr %i.hg, align 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.val2750 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.hh = getelementptr inbounds nuw i8, ptr %.val2750, i64 %i.e
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 308
  %.0.copyload.i2972 = load i32, ptr %i.hi, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2972) #6, !srcloc !13
  %i.hj = and i32 %.0.copyload.i2972, 1073741824
  %.val2749 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.hk = getelementptr inbounds nuw i8, ptr %.val2749, i64 %i.e
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 304
  %.0.copyload.i2973 = load i32, ptr %i.hl, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2973) #6, !srcloc !13
  %i.hm = icmp slt i32 %.0.copyload.i2972, 0
  %.not2588 = icmp eq i32 %i.hj, 0                ; 2 uses
  br i1 %i.hm, label %bb.ab, label %bb.aj

bb.ab:                                            ; preds = %bb.aa
  br i1 %.not2588, label %bb.ai, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hn = zext i32 %.0.copyload.i2973 to i64
  %.val2748 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ho = getelementptr inbounds nuw i8, ptr %.val2748, i64 %i.hn
  %.0.copyload.i2974 = load i32, ptr %i.ho, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2974) #6, !srcloc !13
  %i.hp = zext i32 %.0.copyload.i2974 to i64      ; 4 uses
  %.val2747 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.hq = getelementptr inbounds nuw i8, ptr %.val2747, i64 %i.hp
  %.0.copyload.i2975 = load i32, ptr %i.hq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2975) #6, !srcloc !13
  %i.hr = icmp ugt i32 %.0.copyload.i2975, 150994943
  br i1 %i.hr, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %.val2746 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.hs = getelementptr inbounds nuw i8, ptr %.val2746, i64 %i.hp
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 12
  %.0.copyload.i2976 = load i32, ptr %i.ht, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2976) #6, !srcloc !13
  %i.hu = add i32 %.0.copyload.i2974, 12
  %.val2894 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.hv = getelementptr inbounds nuw i8, ptr %.val2894, i64 %i.hp
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 23
  %.0.copyload.i2977 = load i8, ptr %i.hw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2977) #6, !srcloc !22
  %i.hx = icmp slt i8 %.0.copyload.i2977, 0
  %i.hy = select i1 %i.hx, i32 %.0.copyload.i2976, i32 %i.hu
  br label %bb.ai

bb.ae:                                            ; preds = %bb.ac
  %i.hz = and i32 %.0.copyload.i2975, 251658240
  switch i32 %i.hz, label %bb.ah [
    i32 67108864, label %bb.ag
    i32 134217728, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae
  %i.ia = add i32 %.0.copyload.i2974, 12
end_hunk_0
