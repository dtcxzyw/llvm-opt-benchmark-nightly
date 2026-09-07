Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_3?download=true
inline.NumInlined: 12272
inline.NumDeleted: 21
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AwriteBarrierSlow0x28hermes0x3A0x3Avm0x3A0x3AGCHermesValueBase0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue320x3E0x20const0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3AHermesValue320x29:bb.a
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i) #8, !srcloc !21
  %.not = icmp eq i8 %.0.copyload.i, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = zext i32 %2 to i64
  %.val191 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %.val191, i64 %i.e
  %.0.copyload.i198 = load i32, ptr %i.f, align 1 ; 8 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i198) #8, !srcloc !13
  %i.g = and i32 %.0.copyload.i198, 4
  %.not172 = icmp eq i32 %i.g, 0
  br i1 %.not172, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.val190 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %.val190, i64 %i.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 564
  %.0.copyload.i199 = load i32, ptr %i.i, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i199) #8, !srcloc !13
  %i.j = and i32 %.0.copyload.i198, -4194304
  %i.k = icmp eq i32 %.0.copyload.i199, %i.j
  br i1 %i.k, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val189 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %.val189, i64 %i.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4008
  %.0.copyload.i200 = load i32, ptr %i.m, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i200) #8, !srcloc !13
  %i.n = add i32 %.0.copyload.i200, 544           ; 2 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %.val188 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %.val188, i64 %i.o
  %.0.copyload.i201 = load i32, ptr %i.p, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i201) #8, !srcloc !13
  %i.q = add i32 %.0.copyload.i201, 1             ; 2 uses
  %.val195 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %.val195, i64 %i.o
  store i32 %i.q, ptr %i.r, align 1
  %i.s = add i32 %.0.copyload.i200, 32            ; 2 uses
  %i.t = shl i32 %.0.copyload.i201, 2
  %i.u = add i32 %i.t, %i.s
  %i.v = and i32 %.0.copyload.i198, -8
  %i.w = zext i32 %i.u to i64
  %.val194 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %.val194, i64 %i.w
  store i32 %i.v, ptr %i.x, align 1
  %.not175 = icmp eq i32 %i.q, 128
  br i1 %.not175, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.y = add i32 %.0.copyload.i200, 548
  %i.z = zext i32 %.0.copyload.i200 to i64        ; 3 uses
  %.val187 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %.val187, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 548
  %.0.copyload.i202 = load i32, ptr %i.ab, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i202) #8, !srcloc !13
  %.val186 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.ac = getelementptr inbounds nuw i8, ptr %.val186, i64 %i.z
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 552
  %.0.copyload.i203 = load i32, ptr %i.ad, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i203) #8, !srcloc !13
  %i.ae = shl i32 %.0.copyload.i203, 2
  %i.af = add i32 %i.ae, %.0.copyload.i202
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCCell0x2A0x2A0x20llvh0x3A0x3ASmallVectorImpl0x3Chermes0x3A0x3Avm0x3A0x3AGCCell0x2A0x3E0x3A0x3Ainsert0x3Chermes0x3A0x3Avm0x3A0x3AGCCell0x2A0x2A0x2C0x20void0x3E0x28hermes0x3A0x3Avm0x3A0x3AGCCell0x2A0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3AGCCell0x2A0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3AGCCell0x2A0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.y, i32 noundef %i.af, i32 noundef %i.s, i32 noundef %i.n)
  %.val193 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.ag = getelementptr inbounds nuw i8, ptr %.val193, i64 %i.z
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 544
  store i32 0, ptr %i.ah, align 1
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.ai = and i32 %.0.copyload.i198, 7
  %.not173 = icmp ne i32 %i.ai, 5
  %i.aj = icmp ugt i32 %.0.copyload.i198, -17
  %or.cond = or i1 %i.aj, %.not173
  br i1 %or.cond, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = lshr i32 %.0.copyload.i198, 3           ; 2 uses
  %i.al = and i32 %i.ak, 268435455
  %.val185 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.am = getelementptr inbounds nuw i8, ptr %.val185, i64 %i.b
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4008
  %.0.copyload.i204 = load i32, ptr %i.an, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i204) #8, !srcloc !13
  %i.ao = zext i32 %.0.copyload.i204 to i64       ; 2 uses
  %.val184 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.ap = getelementptr inbounds nuw i8, ptr %.val184, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 580
  %.0.copyload.i205 = load i32, ptr %i.aq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i205) #8, !srcloc !13
  %.not174 = icmp ult i32 %i.al, %.0.copyload.i205
  br i1 %.not174, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.val183 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.ar = getelementptr inbounds nuw i8, ptr %.val183, i64 %i.ao
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 572
  %.0.copyload.i206 = load i32, ptr %i.as, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i206) #8, !srcloc !13
  %i.at = lshr i32 %.0.copyload.i198, 6
  %i.au = and i32 %i.at, 33554428
  %i.av = add i32 %.0.copyload.i206, %i.au
  %i.aw = zext i32 %i.av to i64                   ; 2 uses
  %.val182 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.ax = getelementptr inbounds nuw i8, ptr %.val182, i64 %i.aw
  %.0.copyload.i207 = load i32, ptr %i.ax, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i207) #8, !srcloc !13
  %i.ay = and i32 %i.ak, 31
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = or i32 %.0.copyload.i207, %i.az
  %.val192 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.bb = getelementptr inbounds nuw i8, ptr %.val192, i64 %i.aw
  store i32 %i.ba, ptr %i.bb, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.c, %bb.a, %bb.h, %bb.e
  %i.bc = and i32 %3, 4
  %.not176 = icmp ne i32 %i.bc, 0
  %i.bd = xor i32 %3, %2
  %i.be = icmp ult i32 %i.bd, 4194304
  %or.cond180 = or i1 %.not176, %i.be
  br i1 %or.cond180, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = and i32 %3, -4194304                    ; 2 uses
  %.val181 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.bg = getelementptr inbounds nuw i8, ptr %.val181, i64 %i.b
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 548
  %.0.copyload.i208 = load i32, ptr %i.bh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i208) #8, !srcloc !13
  %.not177 = icmp eq i32 %i.bf, %.0.copyload.i208
  br i1 %.not177, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.bi = getelementptr inbounds nuw i8, ptr %.val, i64 %i.b
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4400
  %.0.copyload.i209 = load i32, ptr %i.bj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i209) #8, !srcloc !13
  %.not178 = icmp eq i32 %.0.copyload.i209, %i.bf
  br i1 %.not178, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bk = and i32 %2, -4194304
  %i.bl = lshr i32 %2, 9
  %i.bm = and i32 %i.bl, 8191
  %i.bn = or disjoint i32 %i.bm, %i.bk
  %i.bo = zext i32 %i.bn to i64
  %.val196 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.bp = getelementptr inbounds nuw i8, ptr %.val196, i64 %i.bo
  store i8 1, ptr %i.bp, align 1
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.i, %bb.l
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObjectBuildMeta0x28hermes0x3A0x3Avm0x3A0x3AGCCell0x20const0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3AMetadata0x3A0x3ABuilder0x260x29(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %1, 64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.c = zext i32 %i.a to i64
  %.val69 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %.val69, i64 %i.c
  %.0.copyload.i = load i8, ptr %i.d, align 1     ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i) #8, !srcloc !21
  %.not = icmp eq i8 %.0.copyload.i, 0
  %i.e = zext i32 %1 to i64                       ; 4 uses
  br i1 %.not, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %.val68 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %.val68, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i8 1, ptr %i.g, align 1
  %.val67 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %.val67, i64 %i.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 60
  store i32 0, ptr %i.i, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %.val66 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %.val66, i64 %i.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 68
  store i32 271408, ptr %i.k, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AMetadata0x3A0x3ABuilder0x3A0x3AaddField0x28char0x20const0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3AGCPointerBase0x20const0x2A0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 21345, i32 noundef 8) #8
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AMetadata0x3A0x3ABuilder0x3A0x3AaddField0x28char0x20const0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3AGCPointerBase0x20const0x2A0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 33765, i32 noundef 12) #8
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AMetadata0x3A0x3ABuilder0x3A0x3AaddField0x28char0x20const0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3AGCPointerBase0x20const0x2A0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 51795, i32 noundef 16) #8
  %.val65 = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %.val65, i64 %i.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 60
  %.0.copyload.i70 = load i32, ptr %i.m, align 1  ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i70) #8, !srcloc !13
  %i.n = icmp ult i32 %.0.copyload.i70, 5
  br i1 %i.n, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %._crit_edge, %.preheader
  %.0 = phi i32 [ %5, %.preheader ], [ %.0.copyload.i70, %._crit_edge ] ; 2 uses
  %2 = shl nuw nsw i32 %.0, 2                     ; 2 uses
  %3 = add nuw i32 %2, 271472
  %4 = zext i32 %3 to i64
  %.val = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 %4
  %.0.copyload.i71 = load i32, ptr %i.o, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i71) #8, !srcloc !13
  %i.p = add nuw i32 %2, 20
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AMetadata0x3A0x3ABuilder0x3A0x3AaddField0x28char0x20const0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3AGCHermesValueBase0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue320x3E0x20const0x2A0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.0.copyload.i71, i32 noundef %i.p) #8
  %5 = add i32 %.0, 1                             ; 2 uses
  %.not64 = icmp eq i32 %5, 5
  br i1 %.not64, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %._crit_edge
  ret void
}

declare void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AMetadata0x3A0x3ABuilder0x3A0x3AaddField0x28char0x20const0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3AGCPointerBase0x20const0x2A0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AMetadata0x3A0x3ABuilder0x3A0x3AaddField0x28char0x20const0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3AGCHermesValueBase0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue320x3E0x20const0x2A0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSArray0x3A0x3Acreate0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20int0x2C0x20unsigned0x20int0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %1, 264
  %i.b = add i32 %1, 568
  %i.c = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSArray0x3A0x3AcreateNoAllocPropStorage0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHiddenClass0x3E0x2C0x20unsigned0x20int0x2C0x20unsigned0x20int0x29(ptr noundef %0, i32 noundef %1, i32 noundef %i.a, i32 noundef %i.b, i32 noundef %2, i32 noundef %3)
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSArray0x3A0x3AcreateNoAllocPropStorage0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHiddenClass0x3E0x2C0x20unsigned0x20int0x2C0x20unsigned0x20int0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %i.c = add i32 %i.b, -48                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !19
  %i.d = add i32 %1, 1376
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 31 uses
  %i.f = zext i32 %i.d to i64
  %.val286 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %.val286, i64 %i.f
  %.0.copyload.i = load i32, ptr %i.g, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !13
  %i.h = add i32 %1, 1372
  %i.i = zext i32 %i.h to i64
  %.val285 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %.val285, i64 %i.i
  %.0.copyload.i307 = load i32, ptr %i.j, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i307) #8, !srcloc !13
  %i.k = sub i32 %.0.copyload.i, %.0.copyload.i307
  %i.l = icmp ult i32 %i.k, 40
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = add i32 %1, 816
  %i.n = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AallocSlow0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.m, i32 noundef 40)
  %.pre = zext i32 %1 to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.o = add i32 %.0.copyload.i307, 40
  %i.p = zext i32 %1 to i64                       ; 2 uses
  %.val295 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %.val295, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1372
  store i32 %i.o, ptr %i.r, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre-phi = phi i64 [ %i.p, %bb.c ], [ %.pre, %bb.b ] ; 3 uses
  %.0269 = phi i32 [ %.0.copyload.i307, %bb.c ], [ %i.n, %bb.b ]
  %i.s = zext i32 %2 to i64
  %.val303 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %.val303, i64 %i.s
  %.0.copyload.i308 = load i64, ptr %i.t, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i308) #8, !srcloc !22
  %i.u = zext i32 %3 to i64
  %.val302 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %.val302, i64 %i.u
  %.0.copyload.i309 = load i64, ptr %i.v, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i309) #8, !srcloc !22
  %i.w = zext i32 %.0269 to i64                   ; 7 uses
  %.val301 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %.val301, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 0, ptr %i.y, align 1
  %.val306 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.z = trunc i64 %.0.copyload.i309 to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %.val306, i64 %i.w
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 %i.z, ptr %i.ab, align 1
  %.val305 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.ac = trunc i64 %.0.copyload.i308 to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %.val305, i64 %i.w
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i32 %i.ac, ptr %i.ae, align 1
  %.val300 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.af = getelementptr inbounds nuw i8, ptr %.val300, i64 %i.w
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i64 0, ptr %i.ag, align 1
  %.val299 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.ah = getelementptr inbounds nuw i8, ptr %.val299, i64 %i.w
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store i64 60129542158, ptr %i.ai, align 1
  %.val298 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.aj = getelementptr inbounds nuw i8, ptr %.val298, i64 %i.w
  store i64 103616086056, ptr %i.aj, align 1
  %i.ak = or disjoint i64 %i.w, -281474976710656  ; 2 uses
  %.val284 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.al = getelementptr inbounds nuw i8, ptr %.val284, i64 %.pre-phi
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %.0.copyload.i310 = load i32, ptr %i.am, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i310) #8, !srcloc !13
  %i.an = zext i32 %.0.copyload.i310 to i64       ; 2 uses
  %i.ao = add nuw nsw i64 %i.an, 164              ; 2 uses
  %.val283 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.ap = getelementptr inbounds nuw i8, ptr %.val283, i64 %i.ao
  %.0.copyload.i311 = load i32, ptr %i.ap, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i311) #8, !srcloc !13
  %.val282 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.aq = getelementptr inbounds nuw i8, ptr %.val282, i64 %i.an
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 168
  %.0.copyload.i312 = load i32, ptr %i.ar, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i312) #8, !srcloc !13
  %i.as = icmp ult i32 %.0.copyload.i311, %.0.copyload.i312
  br i1 %i.as, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.at = add i32 %.0.copyload.i311, 8
  %.val294 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.au = getelementptr inbounds nuw i8, ptr %.val294, i64 %i.ao
  store i32 %i.at, ptr %i.au, align 1
  %i.av = zext i32 %.0.copyload.i311 to i64
  %.val297 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.aw = getelementptr inbounds nuw i8, ptr %.val297, i64 %i.av
  store i64 %i.ak, ptr %i.aw, align 1
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ax = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i310, i64 noundef %i.ak)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1270 = phi i32 [ %.0.copyload.i311, %bb.e ], [ %i.ax, %bb.f ] ; 3 uses
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = icmp ugt i32 %4, 1047529472
  br i1 %i.ay, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.az = zext i32 %i.c to i64                    ; 4 uses
  %.val293 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.ba = getelementptr inbounds nuw i8, ptr %.val293, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  store i32 0, ptr %i.bb, align 1
  %.val296 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.bc = getelementptr inbounds nuw i8, ptr %.val296, i64 %i.az
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  store i64 137438953473, ptr %i.bd, align 1
  %.val292 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.be = getelementptr inbounds nuw i8, ptr %.val292, i64 %i.az
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i32 3, ptr %i.bf, align 1
  %.val291 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.bg = getelementptr inbounds nuw i8, ptr %.val291, i64 %i.az
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i32 33495, ptr %i.bh, align 1
  %i.bi = add i32 %i.b, -40
  %i.bj = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseRangeError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.bi) #8 ; 0 uses
  br label %bb.w

bb.j:                                             ; preds = %bb.h
  %i.bk = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ASegmentedArrayBase0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue320x3E0x3A0x3Acreate0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %4) #8 ; 3 uses
  %i.bl = icmp eq i32 %i.bk, -1
  br i1 %i.bl, label %bb.w, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = add i32 %1, 1364
  %i.bn = zext i32 %i.bm to i64
  %.val281 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.bo = getelementptr inbounds nuw i8, ptr %.val281, i64 %i.bn
  %.0.copyload.i313 = load i32, ptr %i.bo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i313) #8, !srcloc !13
  %i.bp = zext i32 %.1270 to i64
  %.val280 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.bq = getelementptr inbounds nuw i8, ptr %.val280, i64 %i.bp
  %.0.copyload.i314 = load i32, ptr %i.bq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i314) #8, !srcloc !13
  %i.br = add i32 %.0.copyload.i314, 28           ; 3 uses
  %i.bs = and i32 %i.br, -4194304
  %.not275 = icmp eq i32 %.0.copyload.i313, %i.bs
  br i1 %.not275, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = add i32 %1, 816
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AwriteBarrierSlow0x28hermes0x3A0x3Avm0x3A0x3AGCPointerBase0x20const0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3AGCCell0x20const0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.bt, i32 noundef %i.br, i32 noundef %i.bk)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bu = zext i32 %i.br to i64
  %.val290 = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.bv = getelementptr inbounds nuw i8, ptr %.val290, i64 %i.bu
  store i32 %i.bk, ptr %i.bv, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.g
  %i.bw = uitofp i32 %5 to double                 ; 2 uses
  %i.bx = bitcast double %i.bw to i64
end_hunk_0
begin_hunk_1_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AgetOwnPropertyKeys0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AOwnKeysFlags0x29:bb.a
  %.04134 = phi i64 [ %i.jo, %bb.am ], [ 70384, %bb.al ] ; 2 uses
  %.val4863 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.jp = getelementptr inbounds nuw i8, ptr %.val4863, i64 %i.gg
  store i64 0, ptr %i.jp, align 1
  %i.jq = add i32 %i.s, -160                      ; 3 uses
  %.val4794 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.jr = getelementptr inbounds nuw i8, ptr %.val4794, i64 %i.jd
  store i32 %i.jq, ptr %i.jr, align 1
  %.val4886 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.js = getelementptr inbounds nuw i8, ptr %.val4886, i64 %.04134
  %.0.copyload.i4964 = load i64, ptr %i.js, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i4964) #8, !srcloc !22
  %i.jt = icmp ult i64 %.0.copyload.i4964, -844424930131968
  %i.ju = and i64 %.0.copyload.i4964, 4294967295
  %i.jv = icmp eq i64 %i.ju, 0
  %.not4358 = or i1 %i.jt, %i.jv
  %.not4365 = icmp eq i64 %.0.copyload.i4957, 0   ; 2 uses
  br i1 %.not4358, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  br i1 %.not4365, label %.loopexit5286, label %.preheader5284

.preheader5284:                                   ; preds = %bb.ao
  %i.jw = add i32 %i.s, -216
  %i.jx = add i32 %i.s, -448
  br label %bb.bj

bb.ap:                                            ; preds = %bb.an
  br i1 %.not4365, label %.loopexit5286, label %.preheader5287

.preheader5287:                                   ; preds = %bb.ap
  %i.jy = add i32 %i.s, -448                      ; 2 uses
  %i.jz = add i32 %i.s, -216
  br label %bb.aq

bb.aq:                                            ; preds = %.preheader5287, %bb.bi
  %.04115 = phi i64 [ %i.mo, %bb.bi ], [ 0, %.preheader5287 ] ; 5 uses
  %.val4664 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ka = getelementptr inbounds nuw i8, ptr %.val4664, i64 %i.iu
  %.0.copyload.i4965 = load i32, ptr %i.ka, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4965) #8, !srcloc !13
  %i.kb = zext i32 %.0.copyload.i4965 to i64
  %.val4663 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.kc = getelementptr inbounds nuw i8, ptr %.val4663, i64 %i.kb
  %.0.copyload.i4966 = load i32, ptr %i.kc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4966) #8, !srcloc !13
  %.val4793 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.kd = getelementptr inbounds nuw i8, ptr %.val4793, i64 %i.iy
  store i32 0, ptr %i.kd, align 1
  %.val4792 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ke = getelementptr inbounds nuw i8, ptr %.val4792, i64 %i.jd
  store i32 %i.jq, ptr %i.ke, align 1
  %i.kf = add i32 %.0.copyload.i4966, 128
  %.val4791 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.kg = getelementptr inbounds nuw i8, ptr %.val4791, i64 %i.jb
  store i32 %i.kf, ptr %i.kg, align 1
  %.val4662 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.kh = getelementptr inbounds nuw i8, ptr %.val4662, i64 %.04134
  %.0.copyload.i4967 = load i32, ptr %i.kh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4967) #8, !srcloc !13
  %i.ki = zext i32 %.0.copyload.i4967 to i64      ; 3 uses
  %.val4661 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.kj = getelementptr inbounds nuw i8, ptr %.val4661, i64 %i.ki
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 20
  %.0.copyload.i4968 = load i32, ptr %i.kk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4968) #8, !srcloc !13
  %i.kl = trunc i64 %.04115 to i32                ; 3 uses
  %i.km = icmp ugt i32 %.0.copyload.i4968, %i.kl
  br i1 %i.km, label %bb.bg, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.val4660 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.kn = getelementptr inbounds nuw i8, ptr %.val4660, i64 %i.ki
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 24
  %.0.copyload.i4969 = load i32, ptr %i.ko, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4969) #8, !srcloc !13
  %.not4360 = icmp ugt i32 %.0.copyload.i4969, %i.kl
  br i1 %.not4360, label %bb.as, label %bb.bg

bb.as:                                            ; preds = %bb.ar
  %.val4659 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.kp = getelementptr inbounds nuw i8, ptr %.val4659, i64 %i.ki
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 28
  %.0.copyload.i4970 = load i32, ptr %i.kq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4970) #8, !srcloc !13
  %i.kr = sub nuw i32 %i.kl, %.0.copyload.i4968   ; 4 uses
  %i.ks = icmp ult i32 %i.kr, 4096
  br i1 %i.ks, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.kt = shl nuw nsw i32 %i.kr, 2
  %i.ku = add i32 %.0.copyload.i4970, %i.kt
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.kv = add i32 %i.kr, -4096
  %i.kw = lshr i32 %i.kv, 8
  %i.kx = and i32 %i.kw, 16777212
  %i.ky = add nuw nsw i32 %i.kx, 16392
  %i.kz = add i32 %i.ky, %.0.copyload.i4970
  %i.la = zext i32 %i.kz to i64
  %.val4658 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.lb = getelementptr inbounds nuw i8, ptr %.val4658, i64 %i.la
  %.0.copyload.i4971 = load i32, ptr %i.lb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4971) #8, !srcloc !13
  %i.lc = shl i32 %i.kr, 2
  %i.ld = and i32 %i.lc, 4092
  %i.le = add i32 %.0.copyload.i4971, %i.ld
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.04110.in = phi i32 [ %i.ku, %bb.at ], [ %i.le, %bb.au ]
  %.04110 = add i32 %.04110.in, 8
  %i.lf = zext i32 %.04110 to i64
  %.val4657 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.lg = getelementptr inbounds nuw i8, ptr %.val4657, i64 %i.lf
  %.0.copyload.i4972 = load i32, ptr %i.lg, align 1 ; 9 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4972) #8, !srcloc !13
  %i.lh = and i32 %.0.copyload.i4972, 15
  switch i32 %i.lh, label %bb.bd [
    i32 1, label %bb.aw
    i32 2, label %bb.ax
    i32 3, label %bb.ay
    i32 4, label %bb.az
    i32 5, label %bb.ba
    i32 6, label %bb.bb
    i32 7, label %bb.bg
    i32 15, label %bb.bc
    i32 9, label %bb.aw
    i32 10, label %bb.ax
    i32 11, label %bb.ay
    i32 12, label %bb.az
    i32 13, label %bb.ba
    i32 14, label %bb.bf
  ]

bb.aw:                                            ; preds = %bb.av, %bb.av
  %i.li = and i32 %.0.copyload.i4972, -8
  %i.lj = zext i32 %i.li to i64
  %i.lk = or disjoint i64 %i.lj, -562949953421312
  br label %bb.be

bb.ax:                                            ; preds = %bb.av, %bb.av
  %i.ll = and i32 %.0.copyload.i4972, -8
  %i.lm = zext i32 %i.ll to i64
  %i.ln = or disjoint i64 %i.lm, -844424930131968
  br label %bb.be

bb.ay:                                            ; preds = %bb.av, %bb.av
  %i.lo = and i32 %.0.copyload.i4972, -8
  %i.lp = zext i32 %i.lo to i64
  %.val4913 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.lq = getelementptr inbounds nuw i8, ptr %.val4913, i64 %i.lp
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %.0.copyload.i4973 = load double, ptr %i.lr, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i4973) #8, !srcloc !35
  %i.ls = bitcast double %.0.copyload.i4973 to i64
  %i.lt = fcmp uno double %.0.copyload.i4973, 0.000000e+00
  %i.lu = select i1 %i.lt, i64 9221120237041090560, i64 %i.ls
  br label %bb.be

bb.az:                                            ; preds = %bb.av, %bb.av
  %i.lv = ashr i32 %.0.copyload.i4972, 3
  %i.lw = sitofp i32 %i.lv to double
  %i.lx = bitcast double %i.lw to i64
  br label %bb.be

bb.ba:                                            ; preds = %bb.av, %bb.av
  %i.ly = lshr i32 %.0.copyload.i4972, 3
  %i.lz = zext nneg i32 %i.ly to i64
  %i.ma = or disjoint i64 %i.lz, -1266637395197952
  br label %bb.be

bb.bb:                                            ; preds = %bb.av
  %i.mb = icmp ugt i32 %.0.copyload.i4972, 15
  %i.mc = zext i1 %i.mb to i64
  %i.md = or disjoint i64 %i.mc, -1407374883553280
  br label %bb.be

bb.bc:                                            ; preds = %bb.av
  br label %bb.bf

bb.bd:                                            ; preds = %bb.av
  %i.me = zext i32 %.0.copyload.i4972 to i64
  %i.mf = or disjoint i64 %i.me, -281474976710656
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw
  %.04105 = phi i64 [ %i.mf, %bb.bd ], [ %i.md, %bb.bb ], [ %i.lk, %bb.aw ], [ %i.ln, %bb.ax ], [ %i.lu, %bb.ay ], [ %i.lx, %bb.az ], [ %i.ma, %bb.ba ] ; 2 uses
  %.mask = and i64 %.04105, -140737488355328
  %i.mg = icmp eq i64 %.mask, -1970324836974592
  br i1 %i.mg, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.av, %bb.bc
  %.04114 = phi i64 [ %.04105, %bb.be ], [ -1548112371908608, %bb.bc ], [ -1688849860263936, %bb.av ]
  %i.mh = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSProxy0x3A0x3AownPropertyKeys0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AOwnKeysFlags0x290x3A0x3A0x24_00x3A0x3Aoperator0x280x290x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20long0x20long0x2C0x20hermes0x3A0x3Avm0x3A0x3APseudoHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x290x20const(ptr noundef nonnull %0, i32 noundef %i.jy, i32 noundef %2, i64 noundef %.04115, i64 noundef %.04114)
  %.not4361 = icmp eq i32 %i.mh, 0
  br i1 %.not4361, label %.loopexit5285, label %bb.bi

bb.bg:                                            ; preds = %bb.be, %bb.av, %bb.ar, %bb.aq
  %i.mi = uitofp i64 %.04115 to double
  %.val4917 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.mj = getelementptr inbounds nuw i8, ptr %.val4917, i64 %i.gg
  store double %i.mi, ptr %i.mj, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AgetComputedWithReceiver_RJS0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.jz, i32 noundef %.14179, i32 noundef %2, i32 noundef %i.ip, i32 noundef %.14179)
  %.val4656 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.mk = getelementptr inbounds nuw i8, ptr %.val4656, i64 %i.ga
  %.0.copyload.i4974 = load i32, ptr %i.mk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4974) #8, !srcloc !13
  %.not4362 = icmp eq i32 %.0.copyload.i4974, 0
  br i1 %.not4362, label %.loopexit5285, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %.val4885 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ml = getelementptr inbounds nuw i8, ptr %.val4885, i64 %i.u
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 272
  %.0.copyload.i4975 = load i64, ptr %i.mm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i4975) #8, !srcloc !22
  %i.mn = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSProxy0x3A0x3AownPropertyKeys0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AOwnKeysFlags0x290x3A0x3A0x24_00x3A0x3Aoperator0x280x290x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20long0x20long0x2C0x20hermes0x3A0x3Avm0x3A0x3APseudoHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x290x20const(ptr noundef nonnull %0, i32 noundef %i.jy, i32 noundef %2, i64 noundef %.04115, i64 noundef %.0.copyload.i4975)
  %.not4363 = icmp eq i32 %i.mn, 0
  br i1 %.not4363, label %.loopexit5285, label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bf
  %i.mo = add nuw i64 %.04115, 1                  ; 2 uses
  %.not4364 = icmp eq i64 %i.mo, %.0.copyload.i4957
  br i1 %.not4364, label %.loopexit5286, label %bb.aq

bb.bj:                                            ; preds = %.preheader5284, %bb.bl
  %.14116 = phi i64 [ %i.nc, %bb.bl ], [ 0, %.preheader5284 ] ; 3 uses
  %.val4655 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.mp = getelementptr inbounds nuw i8, ptr %.val4655, i64 %i.iu
  %.0.copyload.i4976 = load i32, ptr %i.mp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4976) #8, !srcloc !13
  %i.mq = zext i32 %.0.copyload.i4976 to i64
  %.val4654 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.mr = getelementptr inbounds nuw i8, ptr %.val4654, i64 %i.mq
  %.0.copyload.i4977 = load i32, ptr %i.mr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4977) #8, !srcloc !13
  %.val4790 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ms = getelementptr inbounds nuw i8, ptr %.val4790, i64 %i.iy
  store i32 0, ptr %i.ms, align 1
  %.val4789 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.mt = getelementptr inbounds nuw i8, ptr %.val4789, i64 %i.jd
  store i32 %i.jq, ptr %i.mt, align 1
  %i.mu = uitofp i64 %.14116 to double
  %.val4916 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.mv = getelementptr inbounds nuw i8, ptr %.val4916, i64 %i.gg
  store double %i.mu, ptr %i.mv, align 1
  %i.mw = add i32 %.0.copyload.i4977, 128
  %.val4788 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.mx = getelementptr inbounds nuw i8, ptr %.val4788, i64 %i.jb
  store i32 %i.mw, ptr %i.mx, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AgetComputedWithReceiver_RJS0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.jw, i32 noundef %.14179, i32 noundef %2, i32 noundef %i.ip, i32 noundef %.14179)
  %.val4653 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.my = getelementptr inbounds nuw i8, ptr %.val4653, i64 %i.ga
  %.0.copyload.i4978 = load i32, ptr %i.my, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4978) #8, !srcloc !13
  %.not4366 = icmp eq i32 %.0.copyload.i4978, 0
  br i1 %.not4366, label %.loopexit5285, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %.val4884 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.mz = getelementptr inbounds nuw i8, ptr %.val4884, i64 %i.u
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 272
  %.0.copyload.i4979 = load i64, ptr %i.na, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i4979) #8, !srcloc !22
  %i.nb = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSProxy0x3A0x3AownPropertyKeys0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AOwnKeysFlags0x290x3A0x3A0x24_00x3A0x3Aoperator0x280x290x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20long0x20long0x2C0x20hermes0x3A0x3Avm0x3A0x3APseudoHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x290x20const(ptr noundef nonnull %0, i32 noundef %i.jx, i32 noundef %2, i64 noundef %.14116, i64 noundef %.0.copyload.i4979)
  %.not4367 = icmp eq i32 %i.nb, 0
  br i1 %.not4367, label %.loopexit5285, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.nc = add nuw i64 %.14116, 1                  ; 2 uses
  %.not4368 = icmp eq i64 %.0.copyload.i4957, %i.nc
  br i1 %.not4368, label %.loopexit5286, label %bb.bj

.loopexit5285:                                    ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.bk, %bb.bj
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A0x7EGCScope0x280x29(ptr noundef nonnull %0, i32 noundef %i.gc)
  br label %bb.fv

bb.bm:                                            ; preds = %bb.d
  %i.nd = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseStackOverflow0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AStackOverflowKind0x29(ptr noundef nonnull %0, i32 noundef %2, i32 noundef 1) #8 ; 0 uses
  br label %bb.fv

.loopexit5286:                                    ; preds = %bb.bi, %bb.bl, %bb.ap, %bb.ao
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A0x7EGCScope0x280x29(ptr noundef nonnull %0, i32 noundef %i.gc)
  %i.ne = add i32 %i.s, -452
  %.val4652 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.nf = getelementptr inbounds nuw i8, ptr %.val4652, i64 %i.dx
  %.0.copyload.i4980 = load i32, ptr %i.nf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4980) #8, !srcloc !13
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AisExtensible0x28hermes0x3A0x3Avm0x3A0x3APseudoHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x29(ptr noundef nonnull %0, i32 noundef %i.ne, i32 noundef %.0.copyload.i4980, i32 noundef %2)
  %i.ng = add nuw nsw i64 %i.u, 28                ; 3 uses
  %.val4900 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.nh = getelementptr inbounds nuw i8, ptr %.val4900, i64 %i.ng
  %.0.copyload.i4981 = load i8, ptr %i.nh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4981) #8, !srcloc !21
  %.not4369 = icmp eq i8 %.0.copyload.i4981, 0
  br i1 %.not4369, label %bb.fv, label %bb.bn

bb.bn:                                            ; preds = %.loopexit5286
  %.val4787 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ni = getelementptr inbounds nuw i8, ptr %.val4787, i64 %i.u
  store i32 7, ptr %i.ni, align 1
  %.val4786 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.nj = getelementptr inbounds nuw i8, ptr %.val4786, i64 %i.u
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 24
  store i32 7, ptr %i.nk, align 1
  %i.nl = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AgetOwnPropertyKeys0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AOwnKeysFlags0x29(ptr noundef nonnull %0, i32 noundef %.14165, i32 noundef %2, i32 noundef %i.t) ; 2 uses
  %i.nm = icmp eq i32 %i.nl, -1
  br i1 %i.nm, label %bb.fv, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.nn = add i32 %i.s, -128                      ; 6 uses
  %i.no = zext i32 %i.nn to i64                   ; 9 uses
  %.val4862 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.np = getelementptr inbounds nuw i8, ptr %.val4862, i64 %i.no
  store i64 0, ptr %i.np, align 1
  %.val4861 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.nq = getelementptr inbounds nuw i8, ptr %.val4861, i64 %i.iw
  store i64 34359738368, ptr %i.nq, align 1
  %i.nr = add i32 %i.s, -164                      ; 3 uses
  %.val4785 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ns = getelementptr inbounds nuw i8, ptr %.val4785, i64 %i.ge
  store i32 %i.nr, ptr %i.ns, align 1
  %i.nt = add nuw nsw i64 %i.u, 348               ; 2 uses
  %.val4784 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.nu = getelementptr inbounds nuw i8, ptr %.val4784, i64 %i.nt
  store i32 %i.nn, ptr %i.nu, align 1
  %.val4651 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.nv = getelementptr inbounds nuw i8, ptr %.val4651, i64 %i.y
  %.0.copyload.i4982 = load i32, ptr %i.nv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4982) #8, !srcloc !13
  %i.nw = zext i32 %.0.copyload.i4982 to i64      ; 2 uses
  %i.nx = add nuw nsw i64 %i.nw, 164              ; 2 uses
  %.val4650 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ny = getelementptr inbounds nuw i8, ptr %.val4650, i64 %i.nx
  %.0.copyload.i4983 = load i32, ptr %i.ny, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4983) #8, !srcloc !13
  %.val4649 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.nz = getelementptr inbounds nuw i8, ptr %.val4649, i64 %i.nw
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 168
  %.0.copyload.i4984 = load i32, ptr %i.oa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4984) #8, !srcloc !13
  %i.ob = icmp ult i32 %.0.copyload.i4983, %.0.copyload.i4984
  br i1 %i.ob, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.oc = add i32 %.0.copyload.i4983, 8
  %.val4783 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.od = getelementptr inbounds nuw i8, ptr %.val4783, i64 %i.nx
  store i32 %i.oc, ptr %i.od, align 1
  %i.oe = zext i32 %.0.copyload.i4983 to i64
  %.val4860 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.of = getelementptr inbounds nuw i8, ptr %.val4860, i64 %i.oe
  store i64 -1266636858327041, ptr %i.of, align 1
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %i.og = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i4982, i64 noundef -1266636858327041)
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.34191 = phi i32 [ %.0.copyload.i4983, %bb.bp ], [ %i.og, %bb.bq ]
  %.val4782 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.oh = getelementptr inbounds nuw i8, ptr %.val4782, i64 %i.u
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 20
  store i32 %.34191, ptr %i.oi, align 1
  %.val4648 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.oj = getelementptr inbounds nuw i8, ptr %.val4648, i64 %i.y
  %.0.copyload.i4985 = load i32, ptr %i.oj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4985) #8, !srcloc !13
  %i.ok = zext i32 %.0.copyload.i4985 to i64      ; 6 uses
  %i.ol = add nuw nsw i64 %i.ok, 172              ; 3 uses
  %.val4647 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.om = getelementptr inbounds nuw i8, ptr %.val4647, i64 %i.ol
  %.0.copyload.i4986 = load i32, ptr %i.om, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4986) #8, !srcloc !13
  %i.on = add nuw nsw i64 %i.ok, 164              ; 3 uses
  %.val4646 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.oo = getelementptr inbounds nuw i8, ptr %.val4646, i64 %i.on
  %.0.copyload.i4987 = load i32, ptr %i.oo, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4987) #8, !srcloc !13
  %i.op = add nuw nsw i64 %i.u, 16                ; 7 uses
  %.val4781 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.oq = getelementptr inbounds nuw i8, ptr %.val4781, i64 %i.op
  store i32 0, ptr %i.oq, align 1
  %i.or = zext i32 %i.nl to i64                   ; 6 uses
  %.val4645 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.os = getelementptr inbounds nuw i8, ptr %.val4645, i64 %i.or
  %.0.copyload.i4988 = load i32, ptr %i.os, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4988) #8, !srcloc !13
  %i.ot = zext i32 %.0.copyload.i4988 to i64
  %.val4644 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ou = getelementptr inbounds nuw i8, ptr %.val4644, i64 %i.ot
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 32
  %.0.copyload.i4989 = load i32, ptr %i.ov, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4989) #8, !srcloc !13
  %i.ow = and i32 %.0.copyload.i4989, 7
  %i.ox = icmp eq i32 %i.ow, 4
  br i1 %i.ox, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.oy = ashr i32 %.0.copyload.i4989, 3
  %i.oz = sitofp i32 %i.oy to double
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.pa = and i32 %.0.copyload.i4989, -8
  %i.pb = zext i32 %i.pa to i64
  %.val4912 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.pc = getelementptr inbounds nuw i8, ptr %.val4912, i64 %i.pb
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  %.0.copyload.i4990 = load double, ptr %i.pd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i4990) #8, !srcloc !35
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.04104 = phi double [ %i.oz, %bb.bs ], [ %.0.copyload.i4990, %bb.bt ] ; 3 uses
  %i.pe = fcmp olt double %.04104, f0x41F0000000000000
  %i.pf = fcmp oge double %.04104, 0.000000e+00
  %i.pg = and i1 %i.pe, %i.pf
  br i1 %i.pg, label %bb.bv, label %.thread

bb.bv:                                            ; preds = %bb.bu
  %i.ph = fptoui double %.04104 to i32            ; 2 uses
  %.not4370 = icmp eq i32 %i.ph, 0
  br i1 %.not4370, label %.thread, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.pi = shl i32 %.0.copyload.i4986, 2
  %i.pj = add i32 %i.s, -468
  %i.pk = add i32 %i.s, -460
  %i.pl = add i32 %i.s, -216
  %i.pm = add i32 %i.s, -124
  %i.pn = zext i32 %i.pm to i64                   ; 3 uses
  %i.po = zext i32 %i.gc to i64                   ; 8 uses
  %i.pp = add nuw nsw i64 %i.po, 44               ; 6 uses
  %i.pq = add i32 %i.s, -172
  %i.pr = add nuw nsw i64 %i.po, 4                ; 2 uses
  %i.ps = add nuw nsw i64 %i.po, 52               ; 2 uses
  %i.pt = zext i32 %i.pq to i64                   ; 3 uses
  br label %bb.bx

bb.bx:                                            ; preds = %bb.dw, %bb.bw
  %.44192 = phi i32 [ 0, %bb.bw ], [ %i.xb, %bb.dw ] ; 3 uses
  %.val4643 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.pu = getelementptr inbounds nuw i8, ptr %.val4643, i64 %i.ok
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 136
  %.0.copyload.i4991 = load i32, ptr %i.pv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4991) #8, !srcloc !13
  %i.pw = add i32 %.0.copyload.i4991, %i.pi
  %i.px = zext i32 %i.pw to i64
  %.val4642 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.py = getelementptr inbounds nuw i8, ptr %.val4642, i64 %i.px
  %.0.copyload.i4992 = load i32, ptr %i.py, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4992) #8, !srcloc !13
  %.val4780 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.pz = getelementptr inbounds nuw i8, ptr %.val4780, i64 %i.ol
  store i32 %.0.copyload.i4986, ptr %i.pz, align 1
  %.val4779 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.qa = getelementptr inbounds nuw i8, ptr %.val4779, i64 %i.on
  store i32 %.0.copyload.i4987, ptr %i.qa, align 1
  %i.qb = add i32 %.0.copyload.i4992, 128
  %.val4778 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.qc = getelementptr inbounds nuw i8, ptr %.val4778, i64 %i.ok
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 168
  store i32 %i.qb, ptr %i.qd, align 1
  %.val4859 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.qe = getelementptr inbounds nuw i8, ptr %.val4859, i64 %i.ga
  store i64 -4294967296, ptr %i.qe, align 1
  %.val4641 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.qf = getelementptr inbounds nuw i8, ptr %.val4641, i64 %i.or
end_hunk_1
