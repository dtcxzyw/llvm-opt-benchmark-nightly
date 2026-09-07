Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_3?download=true
inline.NumInlined: 12272
inline.NumDeleted: 21
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AwriteBarrierSlow0x28hermes0x3A0x3Avm0x3A0x3AGCHermesValueBase0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue320x3E0x20const0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3AHermesValue320x29:bb.a
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
  %.0 = phi i32 [ %i.t, %.preheader ], [ %.0.copyload.i70, %._crit_edge ] ; 2 uses
  %i.o = shl nuw nsw i32 %.0, 2                   ; 2 uses
  %i.p = add nuw i32 %i.o, 271472
  %i.q = zext i32 %i.p to i64
  %.val = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 %i.q
  %.0.copyload.i71 = load i32, ptr %i.r, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i71) #8, !srcloc !13
  %i.s = add nuw i32 %i.o, 20
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AMetadata0x3A0x3ABuilder0x3A0x3AaddField0x28char0x20const0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3AGCHermesValueBase0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue320x3E0x20const0x2A0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.0.copyload.i71, i32 noundef %i.s) #8
  %i.t = add i32 %.0, 1                           ; 2 uses
  %.not64 = icmp eq i32 %i.t, 5
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

end_hunk_0
