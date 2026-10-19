Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_1?download=true
inline.NumInlined: 26868
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@w2c_hermes_hermes0x3A0x3AStringTable0x3A0x3AgetString0x28llvh0x3A0x3AStringRef0x29:bb.a
  %.val254 = load ptr, ptr %i.t, align 8, !tbaa !18
  %i.ch = getelementptr inbounds nuw i8, ptr %.val254, i64 %i.cb
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  %.0.copyload.i302 = load i32, ptr %i.ci, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i302) #7, !srcloc !19
  %i.cj = tail call i32 @w2c_hermes_llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3AUniqueString0x2A0x3E0x2A0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Cllvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3AUniqueString0x2A0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AStringRef0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3AUniqueString0x2A0x3E0x3E0x2C0x20llvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3AUniqueString0x2A0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AStringRef0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3AUniqueString0x2A0x3E0x3E0x3A0x3AInsertIntoBucketImpl0x3Cllvh0x3A0x3AStringRef0x3E0x28llvh0x3A0x3AStringRef0x20const0x260x2C0x20llvh0x3A0x3AStringRef0x20const0x260x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3AUniqueString0x2A0x3E0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.d, i32 noundef %i.c, i32 noundef %.0.copyload.i302) #7
  %.val279 = load ptr, ptr %i.t, align 8, !tbaa !18
  %i.ck = getelementptr inbounds nuw i8, ptr %.val279, i64 %i.cb
  %.0.copyload.i303 = load i64, ptr %i.ck, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i303) #7, !srcloc !20
  %i.cl = zext i32 %i.cj to i64                   ; 2 uses
  %.val283 = load ptr, ptr %i.t, align 8, !tbaa !18
  %i.cm = getelementptr inbounds nuw i8, ptr %.val283, i64 %i.cl
  store i64 %.0.copyload.i303, ptr %i.cm, align 1
  %.val = load ptr, ptr %i.t, align 8, !tbaa !18
  %i.cn = getelementptr inbounds nuw i8, ptr %.val, i64 %i.cc
  %.0.copyload.i304 = load i32, ptr %i.cn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i304) #7, !srcloc !19
  %.val271 = load ptr, ptr %i.t, align 8, !tbaa !18
  %i.co = getelementptr inbounds nuw i8, ptr %.val271, i64 %i.cl
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store i32 %.0.copyload.i304, ptr %i.cp, align 1
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.c
  %.1 = phi i32 [ %.0245, %bb.m ], [ %.0245, %bb.n ], [ %.0.copyload.i287, %bb.c ]
  store i32 %i.b, ptr %i.a, align 8, !tbaa !17
  ret i32 %.1
}

declare i32 @w2c_hermes_bool0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Cllvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3AUniqueString0x2A0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AStringRef0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3AUniqueString0x2A0x3E0x3E0x2C0x20llvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3AUniqueString0x2A0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AStringRef0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3AUniqueString0x2A0x3E0x3E0x3A0x3ALookupBucketFor0x3Cllvh0x3A0x3AStringRef0x3E0x28llvh0x3A0x3AStringRef0x20const0x260x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3AUniqueString0x2A0x3E0x20const0x2A0x260x290x20const(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @w2c_hermes_hermes0x3A0x3ABacktrackingBumpPtrAllocator0x3A0x3AallocateNewSlab0x28unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @w2c_hermes_memmove(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @w2c_hermes_llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3AUniqueString0x2A0x3E0x2A0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Cllvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3AUniqueString0x2A0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AStringRef0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3AUniqueString0x2A0x3E0x3E0x2C0x20llvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3AUniqueString0x2A0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AStringRef0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3AUniqueString0x2A0x3E0x3E0x3A0x3AInsertIntoBucketImpl0x3Cllvh0x3A0x3AStringRef0x3E0x28llvh0x3A0x3AStringRef0x20const0x260x2C0x20llvh0x3A0x3AStringRef0x20const0x260x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3AUniqueString0x2A0x3E0x2A0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3ApushOperand0x28hermes0x3A0x3AValue0x2A0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.b = zext i32 %1 to i64                       ; 3 uses
  %i.c = add nuw nsw i64 %i.b, 44                 ; 4 uses
  %.val56 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %.val56, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %.val55 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %.val55, i64 %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.0.copyload.i59 = load i32, ptr %i.f, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i59) #7, !srcloc !19
  %.not = icmp ult i32 %.0.copyload.i, %.0.copyload.i59
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %1, 40
  %i.h = add i32 %1, 52
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.g, i32 noundef %i.h, i32 noundef 0, i32 noundef 8) #7
  %.val54 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %.val54, i64 %i.c
  %.0.copyload.i60 = load i32, ptr %i.i, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i60) #7, !srcloc !19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %.0.copyload.i60, %bb.b ], [ %.0.copyload.i, %bb.a ]
  %.val53 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %.val53, i64 %i.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.0.copyload.i61 = load i32, ptr %i.k, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i61) #7, !srcloc !19
  %i.l = shl i32 %.0, 3
  %i.m = add i32 %.0.copyload.i61, %i.l
  %i.n = zext i32 %i.m to i64
  %.val58 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %.val58, i64 %i.n
  store i64 0, ptr %i.o, align 1
  %.val = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 %i.c
  %.0.copyload.i62 = load i32, ptr %i.p, align 1  ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i62) #7, !srcloc !19
  %i.q = add i32 %.0.copyload.i62, 1
  %.val57 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %.val57, i64 %i.c
  store i32 %i.q, ptr %i.r, align 1
  tail call void @w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3AsetOperand0x28hermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %.0.copyload.i62)
  ret void
}

declare void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3AsetOperand0x28hermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 28 uses
  %i.b = zext i32 %1 to i64
  %i.c = add nuw nsw i64 %i.b, 40                 ; 2 uses
  %.val244 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %.val244, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %i.e = shl i32 %3, 3                            ; 2 uses
  %i.f = add i32 %.0.copyload.i, %i.e
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %.val243 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val243, i64 %i.g
  %.0.copyload.i253 = load i32, ptr %i.h, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i253) #7, !srcloc !19
  %.not = icmp eq i32 %2, %.0.copyload.i253
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not219 = icmp eq i32 %.0.copyload.i253, 0
  br i1 %.not219, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = zext i32 %.0.copyload.i253 to i64        ; 2 uses
  %i.j = add nuw nsw i64 %i.i, 8                  ; 2 uses
  %.val242 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %.val242, i64 %i.j
  %.0.copyload.i254 = load i32, ptr %i.k, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i254) #7, !srcloc !19
  %.val241 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %.val241, i64 %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.0.copyload.i255 = load i32, ptr %i.m, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i255) #7, !srcloc !19
  %i.n = shl i32 %.0.copyload.i255, 2             ; 2 uses
  %i.o = add i32 %i.n, %.0.copyload.i254
  %i.p = add nuw nsw i64 %i.i, 12                 ; 2 uses
  %.val240 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %.val240, i64 %i.p
  %.0.copyload.i256 = load i32, ptr %i.q, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i256) #7, !srcloc !19
  %i.r = shl i32 %.0.copyload.i256, 2
  %i.s = add i32 %.0.copyload.i254, -4
  %i.t = add i32 %i.s, %i.r
  %i.u = zext i32 %i.t to i64
  %.val239 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %.val239, i64 %i.u
  %.0.copyload.i257 = load i32, ptr %i.v, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i257) #7, !srcloc !19
  %i.w = zext i32 %i.o to i64
  %.val252 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %.val252, i64 %i.w
  store i32 %.0.copyload.i257, ptr %i.x, align 1
  %i.y = add i32 %.0.copyload.i256, -1            ; 4 uses
  %.val251 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %.val251, i64 %i.p
  store i32 %i.y, ptr %i.z, align 1
  %i.aa = icmp eq i32 %i.y, %.0.copyload.i255
  br i1 %i.aa, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val238 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %.val238, i64 %i.j
  %.0.copyload.i258 = load i32, ptr %i.ab, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i258) #7, !srcloc !19
  %i.ac = add i32 %.0.copyload.i258, %i.n
  %i.ad = zext i32 %i.ac to i64
  %.val237 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %.val237, i64 %i.ad
  %.0.copyload.i259 = load i32, ptr %i.ae, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i259) #7, !srcloc !19
  %i.af = zext i32 %.0.copyload.i259 to i64       ; 2 uses
  %.val236 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %.val236, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 44
  %.0.copyload.i260 = load i32, ptr %i.ah, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i260) #7, !srcloc !19
  %i.ai = icmp slt i32 %.0.copyload.i260, 1
  br i1 %i.ai, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val235 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %.val235, i64 %i.af
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %.0.copyload.i261 = load i32, ptr %i.ak, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i261) #7, !srcloc !19
  %i.al = zext i32 %.0.copyload.i261 to i64       ; 3 uses
  %.val234 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %.val234, i64 %i.al
  %.0.copyload.i262 = load i32, ptr %i.am, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i262) #7, !srcloc !19
  %.not220 = icmp eq i32 %.0.copyload.i262, %.0.copyload.i253
  br i1 %.not220, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.val233 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.an = getelementptr inbounds nuw i8, ptr %.val233, i64 %i.al
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %.0.copyload.i263 = load i32, ptr %i.ao, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i263) #7, !srcloc !19
  %.not221 = icmp eq i32 %.0.copyload.i263, %i.y
  br i1 %.not221, label %.loopexit272, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ap = icmp eq i32 %.0.copyload.i260, 1
  br i1 %i.ap, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %.backedge
  %indvars.iv = phi i64 [ %indvars.iv.next, %.backedge ], [ 1, %bb.g ] ; 2 uses
  %i.aq = trunc nuw i64 %indvars.iv to i32
  %i.ar = shl i32 %i.aq, 3
  %i.as = add i32 %i.ar, %.0.copyload.i261        ; 2 uses
  %i.at = zext i32 %i.as to i64                   ; 3 uses
  %.val232 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %.val232, i64 %i.at
  %.0.copyload.i264 = load i32, ptr %i.au, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i264) #7, !srcloc !19
  %.not222 = icmp eq i32 %.0.copyload.i264, %.0.copyload.i253
  br i1 %.not222, label %bb.h, label %.backedge

.backedge:                                        ; preds = %.lr.ph, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %.0.copyload.i260, %lftr.wideiv
  br i1 %exitcond, label %.loopexit, label %.lr.ph

bb.h:                                             ; preds = %.lr.ph
  %.val231 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %.val231, i64 %i.at
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %.0.copyload.i265 = load i32, ptr %i.aw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i265) #7, !srcloc !19
  %.not223 = icmp eq i32 %.0.copyload.i265, %i.y
  br i1 %.not223, label %.loopexit272, label %.backedge

.loopexit272:                                     ; preds = %bb.h, %bb.f
  %.pre-phi = phi i64 [ %i.al, %bb.f ], [ %i.at, %bb.h ]
  %.0210 = phi i32 [ %.0.copyload.i261, %bb.f ], [ %i.as, %bb.h ]
  %.0 = add i32 %.0210, 4
  %.val250 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ax = getelementptr inbounds nuw i8, ptr %.val250, i64 %.pre-phi
  store i32 %.0.copyload.i253, ptr %i.ax, align 1
  %i.ay = zext i32 %.0 to i64
  %.val249 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %.val249, i64 %i.ay
  store i32 %.0.copyload.i255, ptr %i.az, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %.backedge, %bb.g, %bb.d, %bb.c, %bb.b, %.loopexit272
  %.not224 = icmp eq i32 %2, 0
  br i1 %.not224, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.loopexit
  %i.ba = zext i32 %2 to i64                      ; 3 uses
  %i.bb = add nuw nsw i64 %i.ba, 12               ; 4 uses
  %.val230 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bc = getelementptr inbounds nuw i8, ptr %.val230, i64 %i.bb
  %.0.copyload.i266 = load i32, ptr %i.bc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i266) #7, !srcloc !19
  %.val229 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bd = getelementptr inbounds nuw i8, ptr %.val229, i64 %i.ba
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %.0.copyload.i267 = load i32, ptr %i.be, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i267) #7, !srcloc !19
  %.not225 = icmp ult i32 %.0.copyload.i266, %.0.copyload.i267
  br i1 %.not225, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = add i32 %2, 8
  %i.bg = add i32 %2, 20
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.bf, i32 noundef %i.bg, i32 noundef 0, i32 noundef 4) #7
  %.val228 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bh = getelementptr inbounds nuw i8, ptr %.val228, i64 %i.bb
  %.0.copyload.i268 = load i32, ptr %i.bh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i268) #7, !srcloc !19
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1 = phi i32 [ %.0.copyload.i268, %bb.j ], [ %.0.copyload.i266, %bb.i ]
  %.val227 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %.val227, i64 %i.ba
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.0.copyload.i269 = load i32, ptr %i.bj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i269) #7, !srcloc !19
  %i.bk = shl i32 %.1, 2
  %i.bl = add i32 %.0.copyload.i269, %i.bk
  %i.bm = zext i32 %i.bl to i64
  %.val248 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bn = getelementptr inbounds nuw i8, ptr %.val248, i64 %i.bm
  store i32 %1, ptr %i.bn, align 1
  %.val226 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %.val226, i64 %i.bb
  %.0.copyload.i270 = load i32, ptr %i.bo, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i270) #7, !srcloc !19
  %i.bp = add i32 %.0.copyload.i270, 1
  %.val247 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bq = getelementptr inbounds nuw i8, ptr %.val247, i64 %i.bb
  store i32 %i.bp, ptr %i.bq, align 1
  br label %bb.l

bb.l:                                             ; preds = %.loopexit, %bb.k
  %.2 = phi i32 [ %.0.copyload.i270, %bb.k ], [ 0, %.loopexit ]
  %.val = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.br = getelementptr inbounds nuw i8, ptr %.val, i64 %i.c
  %.0.copyload.i271 = load i32, ptr %i.br, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i271) #7, !srcloc !19
  %i.bs = add i32 %.0.copyload.i271, %i.e
  %i.bt = zext i32 %i.bs to i64                   ; 2 uses
  %.val246 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bu = getelementptr inbounds nuw i8, ptr %.val246, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  store i32 %.2, ptr %i.bv, align 1
  %.val245 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bw = getelementptr inbounds nuw i8, ptr %.val245, i64 %i.bt
  store i32 %2, ptr %i.bw, align 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3ASourceErrorManager0x3A0x3Amessage0x28hermes0x3A0x3ASourceErrorManager0x3A0x3ADiagKind0x2C0x20llvh0x3A0x3ASMRange0x2C0x20llvh0x3A0x3ATwine0x20const0x260x2C0x20hermes0x3A0x3ASubsystem0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = add i32 %i.b, -16                        ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.e = zext i32 %3 to i64                       ; 2 uses
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 %i.e
  %.0.copyload.i = load i32, ptr %i.f, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %.val41 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %.val41, i64 %i.e
  %.0.copyload.i44 = load i64, ptr %i.g, align 1  ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i44) #7, !srcloc !20
  %i.h = zext i32 %i.c to i64                     ; 2 uses
  %.val43 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %.val43, i64 %i.h
  store i64 %.0.copyload.i44, ptr %i.i, align 1
  %.val42 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %.val42, i64 %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.0.copyload.i44, ptr %i.k, align 1
  tail call void @w2c_hermes_hermes0x3A0x3ASourceErrorManager0x3A0x3Amessage0x28hermes0x3A0x3ASourceErrorManager0x3A0x3ADiagKind0x2C0x20llvh0x3A0x3ASMLoc0x2C0x20llvh0x3A0x3ASMRange0x2C0x20llvh0x3A0x3ATwine0x20const0x260x2C0x20hermes0x3A0x3AWarning0x2C0x20hermes0x3A0x3ASubsystem0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %.0.copyload.i, i32 noundef %i.c, i32 noundef %4, i32 noundef 0, i32 noundef %5)
  store i32 %i.b, ptr %i.a, align 8, !tbaa !17
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3ASourceErrorManager0x3A0x3Amessage0x28hermes0x3A0x3ASourceErrorManager0x3A0x3ADiagKind0x2C0x20llvh0x3A0x3ASMLoc0x2C0x20llvh0x3A0x3ASMRange0x2C0x20llvh0x3A0x3ATwine0x20const0x260x2C0x20hermes0x3A0x3AWarning0x2C0x20hermes0x3A0x3ASubsystem0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 4 uses
  %i.c = add i32 %i.b, -48                        ; 4 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 65 uses
  %i.e = zext i32 %1 to i64                       ; 12 uses
  %.val624 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val624, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 164
  %.0.copyload.i = load i8, ptr %i.g, align 1     ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i) #7, !srcloc !21
  %.not = icmp eq i8 %.0.copyload.i, 0
  %.val622 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val622, i64 %i.e ; 2 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  %.0.copyload.i627 = load i32, ptr %i.i, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i627) #7, !srcloc !19
  %.not547 = icmp eq i32 %.0.copyload.i627, 0
  %i.j = icmp eq i32 %7, %.0.copyload.i627
  %or.cond = or i1 %.not547, %i.j
  br i1 %or.cond, label %bb.ah, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val623 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %.val623, i64 %i.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 148
  %.0.copyload.i628 = load i8, ptr %i.l, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i628) #7, !srcloc !21
  %.not548 = icmp eq i8 %.0.copyload.i628, 0
  br i1 %.not548, label %bb.e, label %bb.ah

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 148
  %.0.copyload.i629 = load i8, ptr %i.m, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i629) #7, !srcloc !21
  %.not546 = icmp eq i8 %.0.copyload.i629, 0
  br i1 %.not546, label %bb.e, label %bb.ah

bb.e:                                             ; preds = %bb.d, %bb.c
  switch i32 %2, label %bb.l [
    i32 1, label %bb.f
    i32 3, label %bb.k
  ]

bb.f:                                             ; preds = %bb.e
  %.val582 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %.val582, i64 %i.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 152
  %.0.copyload.i630 = load i32, ptr %i.o, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i630) #7, !srcloc !19
  %i.p = and i32 %.0.copyload.i630, 1
  %.not550 = icmp eq i32 %i.p, 0
  br i1 %.not550, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = and i32 %6, 31
  %i.r = shl nuw i32 1, %i.q
  %i.s = lshr i32 %.0.copyload.i630, 1
  %i.t = and i32 %i.s, %i.r
  %i.u = lshr i32 %.0.copyload.i630, 27
  %i.v = shl nsw i32 -1, %i.u
  %i.w = xor i32 %i.v, -1
  %i.x = and i32 %i.t, %i.w
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.y = zext i32 %.0.copyload.i630 to i64
end_hunk_0
begin_hunk_1_@w2c_hermes_hermes0x3A0x3ANameMapEntry0x20const0x2A0x20hermes0x3A0x3AfindMapEntry0x3Chermes0x3A0x3ANameMapEntry0x3E0x28llvh0x3A0x3AArrayRef0x3Chermes0x3A0x3ANameMapEntry0x3E0x20const0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Abasic_string_view0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x3E0x29:bb.a
  %.0.copyload.i = load i16, ptr %i.k, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i) #7, !srcloc !24
  %i.l = zext i16 %.0.copyload.i to i32           ; 2 uses
  %i.m = icmp ugt i16 %.0.copyload.i, 3012
  br i1 %i.m, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i32 3012, %i.l
  %.val169 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %.val169, i64 %i.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %.0.copyload.i171 = load i16, ptr %i.p, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i171) #7, !srcloc !24
  %i.q = zext i16 %.0.copyload.i171 to i32
  %i.r = tail call i32 @llvm.umin.i32(i32 %i.n, i32 %i.q) ; 2 uses
  %i.s = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.d) ; 2 uses
  %.not162 = icmp eq i32 %i.s, 0
  br i1 %.not162, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = add nuw nsw i32 %i.l, 55912
  %i.u = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.t, i32 noundef %i.e, i32 noundef %i.s) #7 ; 2 uses
  %.not163 = icmp eq i32 %i.u, 0
  br i1 %.not163, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.v = icmp ult i32 %i.r, %i.d
  br i1 %i.v, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.w = icmp slt i32 %i.u, 0
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.x = add i32 %i.i, 8
  %i.y = xor i32 %i.g, -1
  %i.z = add i32 %.0156, %i.y
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.h
  %.1 = phi i32 [ %i.x, %bb.h ], [ %.0155, %bb.f ], [ %.0155, %bb.g ] ; 5 uses
  %.0 = phi i32 [ %i.z, %bb.h ], [ %i.g, %bb.f ], [ %i.g, %bb.g ] ; 2 uses
  %.not164 = icmp eq i32 %.0, 0
  br i1 %.not164, label %bb.j, label %bb.c

bb.j:                                             ; preds = %bb.i
  %i.aa = icmp eq i32 %.1, %i.b
  br i1 %i.aa, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = zext i32 %.1 to i64                     ; 2 uses
  %.val168 = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %.val168, i64 %i.ab
  %.0.copyload.i172 = load i16, ptr %i.ac, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i172) #7, !srcloc !24
  %i.ad = zext i16 %.0.copyload.i172 to i32       ; 2 uses
  %i.ae = icmp ugt i16 %.0.copyload.i172, 3012
  br i1 %i.ae, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = sub nuw nsw i32 3012, %i.ad
  %.val = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ab
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %.0.copyload.i173 = load i16, ptr %i.ah, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i173) #7, !srcloc !24
  %i.ai = zext i16 %.0.copyload.i173 to i32
  %i.aj = tail call i32 @llvm.umin.i32(i32 %i.af, i32 %i.ai) ; 3 uses
  %i.ak = tail call i32 @llvm.umin.i32(i32 %i.aj, i32 %i.d) ; 2 uses
  %.not165 = icmp eq i32 %i.ak, 0
  br i1 %.not165, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = add nuw nsw i32 %i.ad, 55912
  %i.am = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %i.al, i32 noundef %i.e, i32 noundef %i.ak) #7
  %.not166 = icmp eq i32 %i.am, 0
  %.not167 = icmp eq i32 %i.aj, %i.d
  %or.cond = select i1 %.not166, i1 %.not167, i1 false
  br i1 %or.cond, label %bb.p, label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.an = icmp eq i32 %i.aj, %i.d
  br i1 %i.an, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.j, %bb.a
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.o
  %.2 = phi i32 [ 0, %bb.o ], [ %.1, %bb.m ], [ %.1, %bb.n ]
  ret i32 %.2

.loopexit:                                        ; preds = %bb.c, %bb.k
  tail call void @w2c_hermes_abort(ptr noundef nonnull %0) #7
  tail call void @wasm_rt_trap(i32 noundef 5) #8
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3AremoveOperand0x28unsigned0x20int0x29(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 26 uses
  %i.b = zext i32 %1 to i64                       ; 2 uses
  %i.c = add nuw nsw i64 %i.b, 40                 ; 2 uses
  %.val233 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %.val233, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %i.e = shl i32 %2, 3                            ; 2 uses
  %i.f = add i32 %.0.copyload.i, %i.e             ; 2 uses
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %.val232 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val232, i64 %i.g
  %.0.copyload.i242 = load i32, ptr %i.h, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i242) #7, !srcloc !19
  %.not = icmp eq i32 %.0.copyload.i242, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = zext i32 %.0.copyload.i242 to i64        ; 2 uses
  %i.j = add nuw nsw i64 %i.i, 8                  ; 2 uses
  %.val231 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %.val231, i64 %i.j
  %.0.copyload.i243 = load i32, ptr %i.k, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i243) #7, !srcloc !19
  %.val230 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %.val230, i64 %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.0.copyload.i244 = load i32, ptr %i.m, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i244) #7, !srcloc !19
  %i.n = shl i32 %.0.copyload.i244, 2             ; 2 uses
  %i.o = add i32 %i.n, %.0.copyload.i243
  %i.p = add nuw nsw i64 %i.i, 12                 ; 2 uses
  %.val229 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %.val229, i64 %i.p
  %.0.copyload.i245 = load i32, ptr %i.q, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i245) #7, !srcloc !19
  %i.r = shl i32 %.0.copyload.i245, 2
  %i.s = add i32 %.0.copyload.i243, -4
  %i.t = add i32 %i.s, %i.r
  %i.u = zext i32 %i.t to i64
  %.val228 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %.val228, i64 %i.u
  %.0.copyload.i246 = load i32, ptr %i.v, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i246) #7, !srcloc !19
  %i.w = zext i32 %i.o to i64
  %.val240 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %.val240, i64 %i.w
  store i32 %.0.copyload.i246, ptr %i.x, align 1
  %i.y = add i32 %.0.copyload.i245, -1            ; 4 uses
  %.val239 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %.val239, i64 %i.p
  store i32 %i.y, ptr %i.z, align 1
  %i.aa = icmp eq i32 %i.y, %.0.copyload.i244
  br i1 %i.aa, label %.loopexit259, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val227 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %.val227, i64 %i.j
  %.0.copyload.i247 = load i32, ptr %i.ab, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i247) #7, !srcloc !19
  %i.ac = add i32 %.0.copyload.i247, %i.n
  %i.ad = zext i32 %i.ac to i64
  %.val226 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %.val226, i64 %i.ad
  %.0.copyload.i248 = load i32, ptr %i.ae, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i248) #7, !srcloc !19
  %i.af = zext i32 %.0.copyload.i248 to i64       ; 2 uses
  %.val225 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %.val225, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 44
  %.0.copyload.i249 = load i32, ptr %i.ah, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i249) #7, !srcloc !19
  %i.ai = icmp slt i32 %.0.copyload.i249, 1
  br i1 %i.ai, label %.loopexit259, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val224 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %.val224, i64 %i.af
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %.0.copyload.i250 = load i32, ptr %i.ak, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i250) #7, !srcloc !19
  %i.al = zext i32 %.0.copyload.i250 to i64       ; 3 uses
  %.val223 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %.val223, i64 %i.al
  %.0.copyload.i251 = load i32, ptr %i.am, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i251) #7, !srcloc !19
  %.not211 = icmp eq i32 %.0.copyload.i251, %.0.copyload.i242
  br i1 %.not211, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.val222 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.an = getelementptr inbounds nuw i8, ptr %.val222, i64 %i.al
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %.0.copyload.i252 = load i32, ptr %i.ao, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i252) #7, !srcloc !19
  %.not212 = icmp eq i32 %.0.copyload.i252, %i.y
  br i1 %.not212, label %.loopexit260, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ap = icmp eq i32 %.0.copyload.i249, 1
  br i1 %i.ap, label %.loopexit259, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %.backedge
  %indvars.iv = phi i64 [ %indvars.iv.next, %.backedge ], [ 1, %bb.f ] ; 2 uses
  %i.aq = trunc nuw i64 %indvars.iv to i32
  %i.ar = shl i32 %i.aq, 3
  %i.as = add i32 %i.ar, %.0.copyload.i250        ; 2 uses
  %i.at = zext i32 %i.as to i64                   ; 3 uses
  %.val221 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %.val221, i64 %i.at
  %.0.copyload.i253 = load i32, ptr %i.au, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i253) #7, !srcloc !19
  %.not213 = icmp eq i32 %.0.copyload.i253, %.0.copyload.i242
  br i1 %.not213, label %bb.g, label %.backedge

.backedge:                                        ; preds = %.lr.ph, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %.0.copyload.i249, %lftr.wideiv
  br i1 %exitcond, label %.loopexit259, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph
  %.val220 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %.val220, i64 %i.at
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %.0.copyload.i254 = load i32, ptr %i.aw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i254) #7, !srcloc !19
  %.not214 = icmp eq i32 %.0.copyload.i254, %i.y
  br i1 %.not214, label %.loopexit260, label %.backedge

.loopexit260:                                     ; preds = %bb.g, %bb.e
  %.pre-phi263 = phi i64 [ %i.al, %bb.e ], [ %i.at, %bb.g ]
  %.0202 = phi i32 [ %.0.copyload.i250, %bb.e ], [ %i.as, %bb.g ]
  %.0 = add i32 %.0202, 4
  %.val238 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ax = getelementptr inbounds nuw i8, ptr %.val238, i64 %.pre-phi263
  store i32 %.0.copyload.i242, ptr %i.ax, align 1
  %i.ay = zext i32 %.0 to i64
  %.val237 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %.val237, i64 %i.ay
  store i32 %.0.copyload.i244, ptr %i.az, align 1
  br label %.loopexit259

.loopexit259:                                     ; preds = %.backedge, %bb.f, %bb.c, %bb.b, %.loopexit260
  %.val219 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ba = getelementptr inbounds nuw i8, ptr %.val219, i64 %i.c
  %.0.copyload.i255 = load i32, ptr %i.ba, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i255) #7, !srcloc !19
  %i.bb = add i32 %.0.copyload.i255, %i.e         ; 2 uses
  %i.bc = zext i32 %i.bb to i64
  %.val241 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bd = getelementptr inbounds nuw i8, ptr %.val241, i64 %i.bc
  store i64 0, ptr %i.bd, align 1
  br label %bb.h

bb.h:                                             ; preds = %.loopexit259, %bb.a
  %.pre-phi = phi i32 [ %i.bb, %.loopexit259 ], [ %i.f, %bb.a ] ; 2 uses
  %.1203 = phi i32 [ %.0.copyload.i255, %.loopexit259 ], [ %.0.copyload.i, %bb.a ]
  %i.be = add i32 %.pre-phi, 8                    ; 2 uses
  %i.bf = add nuw nsw i64 %i.b, 44                ; 2 uses
  %.val218 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %.val218, i64 %i.bf
  %.0.copyload.i256 = load i32, ptr %i.bg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i256) #7, !srcloc !19
  %i.bh = shl i32 %.0.copyload.i256, 3
  %i.bi = add i32 %i.bh, %.1203                   ; 2 uses
  %.not215 = icmp eq i32 %i.be, %i.bi
  br i1 %.not215, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.h, %.preheader
  %.0204 = phi i32 [ %i.bs, %.preheader ], [ %i.be, %bb.h ] ; 2 uses
  %.1 = phi i32 [ %i.br, %.preheader ], [ %.pre-phi, %bb.h ] ; 2 uses
  %i.bj = zext i32 %.0204 to i64                  ; 2 uses
  %.val217 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %.val217, i64 %i.bj
  %.0.copyload.i257 = load i32, ptr %i.bk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i257) #7, !srcloc !19
  %i.bl = zext i32 %.1 to i64                     ; 2 uses
  %.val236 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bm = getelementptr inbounds nuw i8, ptr %.val236, i64 %i.bl
  store i32 %.0.copyload.i257, ptr %i.bm, align 1
  %.val = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bn = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bj
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %.0.copyload.i258 = load i32, ptr %i.bo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i258) #7, !srcloc !19
  %.val235 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bp = getelementptr inbounds nuw i8, ptr %.val235, i64 %i.bl
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  store i32 %.0.copyload.i258, ptr %i.bq, align 1
  %i.br = add i32 %.1, 8
  %i.bs = add i32 %.0204, 8                       ; 2 uses
  %.not216 = icmp eq i32 %i.bs, %i.bi
  br i1 %.not216, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %bb.h
  %i.bt = add i32 %.0.copyload.i256, -1
  %.val234 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bu = getelementptr inbounds nuw i8, ptr %.val234, i64 %i.bf
  store i32 %i.bt, ptr %i.bu, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3AIRVisitor0x3Chermes0x3A0x3AIRPrinter0x2C0x20void0x3E0x3A0x3Avisit0x28hermes0x3A0x3AValue0x20const0x260x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 102 uses
  %i.b = zext i32 %2 to i64                       ; 2 uses
  %.val746 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %.val746, i64 %i.b
  %.0.copyload.i = load i8, ptr %i.c, align 1     ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i) #7, !srcloc !21
  switch i8 %.0.copyload.i, label %bb.m [
    i8 5, label %bb.b
    i8 -123, label %bb.l
    i8 -124, label %bb.b
    i8 -125, label %bb.am
    i8 -126, label %bb.am
    i8 10, label %bb.b
    i8 -127, label %bb.am
    i8 -128, label %bb.am
    i8 127, label %bb.b
    i8 14, label %bb.b
    i8 15, label %bb.b
    i8 16, label %bb.b
    i8 126, label %bb.c
    i8 125, label %.loopexit
    i8 124, label %.loopexit
    i8 123, label %.loopexit
    i8 122, label %.loopexit
    i8 121, label %.loopexit
    i8 120, label %.loopexit
    i8 119, label %bb.b
    i8 118, label %.loopexit
    i8 117, label %.loopexit
    i8 116, label %.loopexit
    i8 115, label %.loopexit
    i8 114, label %.loopexit
    i8 113, label %.loopexit
    i8 112, label %.loopexit
    i8 32, label %bb.b
    i8 111, label %.loopexit
    i8 110, label %.loopexit
    i8 35, label %bb.b
    i8 109, label %bb.b
    i8 108, label %bb.b
    i8 38, label %bb.b
    i8 39, label %bb.b
    i8 97, label %bb.b
    i8 90, label %bb.b
    i8 42, label %bb.b
    i8 89, label %bb.b
    i8 75, label %bb.b
    i8 45, label %bb.b
    i8 74, label %bb.b
    i8 69, label %bb.b
    i8 48, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  tail call void @wasm_rt_trap(i32 noundef 5) #8
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = add i32 %2, -8
  %i.e = zext i32 %1 to i64                       ; 2 uses
  %i.f = add nuw nsw i64 %i.e, 12                 ; 2 uses
  %.val694 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %.val694, i64 %i.f
  %.0.copyload.i753 = load i32, ptr %i.g, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i753) #7, !srcloc !19
  %i.h = add nuw nsw i64 %i.e, 4                  ; 5 uses
  %.val693 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %.val693, i64 %i.h
  %.0.copyload.i754 = load i32, ptr %i.i, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i754) #7, !srcloc !19
  tail call void @w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3Aindent0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i753, i32 noundef %.0.copyload.i754) #7
  %.val692 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %.val692, i64 %i.f
  %.0.copyload.i755 = load i32, ptr %i.j, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i755) #7, !srcloc !19
  %i.k = zext i32 %.0.copyload.i755 to i64        ; 2 uses
  %.val691 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %.val691, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.0.copyload.i756 = load i32, ptr %i.m, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i756) #7, !srcloc !19
  %i.n = add nuw nsw i64 %i.k, 12                 ; 3 uses
  %.val690 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %.val690, i64 %i.n
  %.0.copyload.i757 = load i32, ptr %i.o, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i757) #7, !srcloc !19
  %i.p = sub i32 %.0.copyload.i756, %.0.copyload.i757
  %i.q = icmp ult i32 %i.p, 3
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = tail call i32 @w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3Awrite0x28char0x20const0x2A0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i755, i32 noundef 59317, i32 noundef 3) #7
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.val752 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %.val752, i64 59317
  %.0.copyload.i758 = load i16, ptr %i.s, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i758) #7, !srcloc !24
  %i.t = zext i32 %.0.copyload.i757 to i64        ; 2 uses
  %.val750 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %.val750, i64 %i.t
  store i16 %.0.copyload.i758, ptr %i.u, align 1
  %.val745 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %.val745, i64 59319
  %.0.copyload.i759 = load i8, ptr %i.v, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i759) #7, !srcloc !21
  %.val709 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %.val709, i64 %i.t
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  store i8 %.0.copyload.i759, ptr %i.x, align 1
  %.val689 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %.val689, i64 %i.n
end_hunk_1
begin_hunk_2_@w2c_hermes_hermes0x3A0x3AIRPrinter0x3A0x3AprintInstruction0x28hermes0x3A0x3AInstruction0x2A0x29:bb.a
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2215) #7, !srcloc !19
  %i.ht = add nuw nsw i64 %i.hq, 12               ; 3 uses
  %.val2004 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hu = getelementptr inbounds nuw i8, ptr %.val2004, i64 %i.ht
  %.0.copyload.i2216 = load i32, ptr %i.hu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2216) #7, !srcloc !19
  %i.hv = sub i32 %.0.copyload.i2215, %.0.copyload.i2216
  %.not1891 = icmp ugt i32 %i.ho, %i.hv
  br i1 %.not1891, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.hw = tail call i32 @w2c_hermes_0x5F_memcpy(ptr noundef nonnull %0, i32 noundef %.0.copyload.i2216, i32 noundef %i.hj, i32 noundef %i.ho) #7 ; 0 uses
  %.val2003 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hx = getelementptr inbounds nuw i8, ptr %.val2003, i64 %i.ht
  %.0.copyload.i2217 = load i32, ptr %i.hx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2217) #7, !srcloc !19
  %i.hy = add i32 %.0.copyload.i2217, %i.ho
  %.val2073 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hz = getelementptr inbounds nuw i8, ptr %.val2073, i64 %i.ht
  store i32 %i.hy, ptr %i.hz, align 1
  br label %bb.ef

bb.ee:                                            ; preds = %bb.ec
  %i.ia = tail call i32 @w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3Awrite0x28char0x20const0x2A0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i2214, i32 noundef %i.hj, i32 noundef %i.ho) #7 ; 0 uses
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %.val2002 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ib = getelementptr inbounds nuw i8, ptr %.val2002, i64 %i.e
  %.0.copyload.i2218 = load i32, ptr %i.ib, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2218) #7, !srcloc !19
  %i.ic = zext i32 %.0.copyload.i2218 to i64
  %.val2001 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.id = getelementptr inbounds nuw i8, ptr %.val2001, i64 %i.ic
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  %.0.copyload.i2219 = load i32, ptr %i.ie, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2219) #7, !srcloc !19
  %i.if = load i32, ptr %i.k, align 4, !tbaa !25
  %i.ig = icmp ult i32 %.0.copyload.i2219, %i.if
  br i1 %i.ig, label %bb.eg, label %.critedge1921, !prof !26

bb.eg:                                            ; preds = %bb.ef
  %i.ih = load ptr, ptr %i.j, align 8, !tbaa !27
  %i.ii = zext i32 %.0.copyload.i2219 to i64
  %i.ij = getelementptr inbounds nuw [24 x i8], ptr %i.ih, i64 %i.ii ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !29 ; 2 uses
  %.not1892 = icmp eq ptr %i.il, null
  br i1 %.not1892, label %.critedge1921, label %bb.eh, !prof !30

bb.eh:                                            ; preds = %bb.eg
  %i.im = load ptr, ptr @w2c_hermes_t1, align 8, !tbaa !31 ; 8 uses
  %i.in = load ptr, ptr %i.ij, align 8, !tbaa !32 ; 4 uses
  %i.io = icmp eq ptr %i.im, %i.in
  br i1 %i.io, label %func_types_eq.exit2223.thread, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.ip = icmp ne ptr %i.im, null
  %i.iq = icmp ne ptr %i.in, null
  %or.cond.i2220 = and i1 %i.ip, %i.iq
  br i1 %or.cond.i2220, label %func_types_eq.exit2223, label %.critedge1921, !prof !33

func_types_eq.exit2223:                           ; preds = %bb.ei
  %i.ir = load i128, ptr %i.im, align 1
  %i.is = load i128, ptr %i.in, align 1
  %i.it = xor i128 %i.ir, %i.is
  %i.iu = getelementptr i8, ptr %i.im, i64 16
  %i.iv = getelementptr i8, ptr %i.in, i64 16
  %i.iw = load i128, ptr %i.iu, align 1
  %i.ix = load i128, ptr %i.iv, align 1
  %i.iy = xor i128 %i.iw, %i.ix
  %i.iz = or i128 %i.it, %i.iy
  %i.ja = icmp ne i128 %i.iz, 0
  %i.jb = zext i1 %i.ja to i32
  %.not.i2222 = icmp eq i32 %i.jb, 0
  br i1 %.not.i2222, label %func_types_eq.exit2223.thread, label %.critedge1921, !prof !34

.critedge1921:                                    ; preds = %bb.ei, %bb.eg, %bb.ef, %func_types_eq.exit2223
  tail call void @wasm_rt_trap(i32 noundef 6) #8
  unreachable

func_types_eq.exit2223.thread:                    ; preds = %bb.eh, %func_types_eq.exit2223
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !35
  tail call void %i.il(ptr noundef %i.jd, i32 noundef %1, i32 noundef %2, i32 noundef %.0.copyload.i2213, i32 noundef 0) #7
  %i.je = icmp eq i32 %.0.copyload.i2211, 1
  br i1 %i.je, label %.loopexit2334, label %.preheader2333

.preheader2333:                                   ; preds = %func_types_eq.exit2223.thread
  %i.jf = icmp ne ptr %i.im, null
  br label %bb.ej

bb.ej:                                            ; preds = %.preheader2333, %func_types_eq.exit2235.thread
  %.8 = phi i32 [ %i.la, %func_types_eq.exit2235.thread ], [ 1, %.preheader2333 ] ; 3 uses
  %.val2000 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jg = getelementptr inbounds nuw i8, ptr %.val2000, i64 %i.hk
  %.0.copyload.i2224 = load i32, ptr %i.jg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2224) #7, !srcloc !19
  %i.jh = shl i32 %.8, 3
  %i.ji = add i32 %.0.copyload.i2224, %i.jh
  %i.jj = zext i32 %i.ji to i64
  %.val1999 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jk = getelementptr inbounds nuw i8, ptr %.val1999, i64 %i.jj
  %.0.copyload.i2225 = load i32, ptr %i.jk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2225) #7, !srcloc !19
  %.val1998 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jl = getelementptr inbounds nuw i8, ptr %.val1998, i64 %i.ak
  %.0.copyload.i2226 = load i32, ptr %i.jl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2226) #7, !srcloc !19
  %i.jm = zext i32 %.0.copyload.i2226 to i64      ; 2 uses
  %.val1997 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jn = getelementptr inbounds nuw i8, ptr %.val1997, i64 %i.jm
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %.0.copyload.i2227 = load i32, ptr %i.jo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2227) #7, !srcloc !19
  %i.jp = add nuw nsw i64 %i.jm, 12               ; 3 uses
  %.val1996 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jq = getelementptr inbounds nuw i8, ptr %.val1996, i64 %i.jp
  %.0.copyload.i2228 = load i32, ptr %i.jq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2228) #7, !srcloc !19
  %i.jr = sub i32 %.0.copyload.i2227, %.0.copyload.i2228
  %i.js = icmp ult i32 %i.jr, 2
  br i1 %i.js, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.jt = tail call i32 @w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3Awrite0x28char0x20const0x2A0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i2226, i32 noundef 66349, i32 noundef 2) #7 ; 0 uses
  br label %bb.em

bb.el:                                            ; preds = %bb.ej
  %i.ju = zext i32 %.0.copyload.i2228 to i64
  %.val2151 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jv = getelementptr inbounds nuw i8, ptr %.val2151, i64 %i.ju
  store i16 8236, ptr %i.jv, align 1
  %.val1995 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jw = getelementptr inbounds nuw i8, ptr %.val1995, i64 %i.jp
  %.0.copyload.i2229 = load i32, ptr %i.jw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2229) #7, !srcloc !19
  %i.jx = add i32 %.0.copyload.i2229, 2
  %.val2072 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jy = getelementptr inbounds nuw i8, ptr %.val2072, i64 %i.jp
  store i32 %i.jx, ptr %i.jy, align 1
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  %.val1994 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jz = getelementptr inbounds nuw i8, ptr %.val1994, i64 %i.e
  %.0.copyload.i2230 = load i32, ptr %i.jz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2230) #7, !srcloc !19
  %i.ka = zext i32 %.0.copyload.i2230 to i64
  %.val1993 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kb = getelementptr inbounds nuw i8, ptr %.val1993, i64 %i.ka
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  %.0.copyload.i2231 = load i32, ptr %i.kc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2231) #7, !srcloc !19
  %i.kd = load i32, ptr %i.k, align 4, !tbaa !25
  %i.ke = icmp ult i32 %.0.copyload.i2231, %i.kd
  br i1 %i.ke, label %bb.en, label %.critedge1923, !prof !26

bb.en:                                            ; preds = %bb.em
  %i.kf = load ptr, ptr %i.j, align 8, !tbaa !27
  %i.kg = zext i32 %.0.copyload.i2231 to i64
  %i.kh = getelementptr inbounds nuw [24 x i8], ptr %i.kf, i64 %i.kg ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !29 ; 2 uses
  %.not1893 = icmp eq ptr %i.kj, null
  br i1 %.not1893, label %.critedge1923, label %bb.eo, !prof !30

bb.eo:                                            ; preds = %bb.en
  %i.kk = load ptr, ptr %i.kh, align 8, !tbaa !32 ; 4 uses
  %i.kl = icmp eq ptr %i.im, %i.kk
  br i1 %i.kl, label %func_types_eq.exit2235.thread, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.km = icmp ne ptr %i.kk, null
  %or.cond.i2232 = and i1 %i.jf, %i.km
  br i1 %or.cond.i2232, label %func_types_eq.exit2235, label %.critedge1923, !prof !33

func_types_eq.exit2235:                           ; preds = %bb.ep
  %i.kn = load i128, ptr %i.im, align 1
  %i.ko = load i128, ptr %i.kk, align 1
  %i.kp = xor i128 %i.kn, %i.ko
  %i.kq = getelementptr i8, ptr %i.im, i64 16
  %i.kr = getelementptr i8, ptr %i.kk, i64 16
  %i.ks = load i128, ptr %i.kq, align 1
  %i.kt = load i128, ptr %i.kr, align 1
  %i.ku = xor i128 %i.ks, %i.kt
  %i.kv = or i128 %i.kp, %i.ku
  %i.kw = icmp ne i128 %i.kv, 0
  %i.kx = zext i1 %i.kw to i32
  %.not.i2234 = icmp eq i32 %i.kx, 0
  br i1 %.not.i2234, label %func_types_eq.exit2235.thread, label %.critedge1923, !prof !34

.critedge1923:                                    ; preds = %bb.ep, %bb.en, %bb.em, %func_types_eq.exit2235
  tail call void @wasm_rt_trap(i32 noundef 6) #8
  unreachable

func_types_eq.exit2235.thread:                    ; preds = %bb.eo, %func_types_eq.exit2235
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !35
  tail call void %i.kj(ptr noundef %i.kz, i32 noundef %1, i32 noundef %2, i32 noundef %.0.copyload.i2225, i32 noundef %.8) #7
  %i.la = add i32 %.8, 1                          ; 2 uses
  %.not1894 = icmp eq i32 %i.la, %.0.copyload.i2211
  br i1 %.not1894, label %.loopexit2334, label %bb.ej

.loopexit2334:                                    ; preds = %func_types_eq.exit2235.thread, %func_types_eq.exit2223.thread, %bb.eb
  %i.lb = add nuw nsw i64 %i.be, 36               ; 2 uses
  %.val1992 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lc = getelementptr inbounds nuw i8, ptr %.val1992, i64 %i.lb
  %.0.copyload.i2236 = load i32, ptr %i.lc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2236) #7, !srcloc !19
  %i.ld = zext i32 %.0.copyload.i2236 to i64
  %.val1991 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.le = getelementptr inbounds nuw i8, ptr %.val1991, i64 %i.ld
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 44
  %.0.copyload.i2237 = load i32, ptr %i.lf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2237) #7, !srcloc !19
  %i.lg = zext i32 %.0.copyload.i2237 to i64
  %.val1990 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lh = getelementptr inbounds nuw i8, ptr %.val1990, i64 %i.lg
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 36
  %.0.copyload.i2238 = load i32, ptr %i.li, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2238) #7, !srcloc !19
  %i.lj = zext i32 %.0.copyload.i2238 to i64
  %.val1989 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lk = getelementptr inbounds nuw i8, ptr %.val1989, i64 %i.lj
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 28
  %.0.copyload.i2239 = load i32, ptr %i.ll, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2239) #7, !srcloc !19
  %i.lm = zext i32 %.0.copyload.i2239 to i64      ; 4 uses
  %.val2158 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ln = getelementptr inbounds nuw i8, ptr %.val2158, i64 %i.lm
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 136
  %.0.copyload.i2240 = load i16, ptr %i.lo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i2240) #7, !srcloc !24
  %.val2150 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lp = getelementptr inbounds nuw i8, ptr %.val2150, i64 %i.bh
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 48
  store i16 %.0.copyload.i2240, ptr %i.lq, align 1
  %.val2090 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lr = getelementptr inbounds nuw i8, ptr %.val2090, i64 %i.lm
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 128
  %.0.copyload.i2241 = load i64, ptr %i.ls, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2241) #7, !srcloc !20
  %.val2129 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lt = getelementptr inbounds nuw i8, ptr %.val2129, i64 %i.bh
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 40
  store i64 %.0.copyload.i2241, ptr %i.lu, align 1
  %.val2141 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lv = getelementptr inbounds nuw i8, ptr %.val2141, i64 %i.lm
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 140
  %.0.copyload.i2242 = load i8, ptr %i.lw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2242) #7, !srcloc !21
  %i.lx = add i32 %i.b, -216                      ; 2 uses
  %i.ly = zext i32 %i.lx to i64
  %.val2128 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lz = getelementptr inbounds nuw i8, ptr %.val2128, i64 %i.ly
  store i64 1, ptr %i.lz, align 1
  %i.ma = add i32 %i.b, -208
  %i.mb = zext i32 %i.ma to i64
  %.val2127 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mc = getelementptr inbounds nuw i8, ptr %.val2127, i64 %i.mb
  store i64 4294967295, ptr %i.mc, align 1
  %.val2126 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.md = getelementptr inbounds nuw i8, ptr %.val2126, i64 %i.bh
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 72
  store i64 4294967295, ptr %i.me, align 1
  %.val2125 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mf = getelementptr inbounds nuw i8, ptr %.val2125, i64 %i.bh
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 80
  store i64 4294967295, ptr %i.mg, align 1
  %.val2124 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mh = getelementptr inbounds nuw i8, ptr %.val2124, i64 %i.bh
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 88
  store i64 4294967295, ptr %i.mi, align 1
  %.val2093 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mj = getelementptr inbounds nuw i8, ptr %.val2093, i64 %i.bh
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 52
  store i8 %.0.copyload.i2242, ptr %i.mk, align 1
  %i.ml = add i32 %.0.copyload.i2239, 144
  tail call void @w2c_hermes_llvh0x3A0x3ASmallDenseMap0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetEmpty0x2C0x204u0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AStringRef0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetPair0x3Cllvh0x3A0x3AStringRef0x3E0x3E0x3A0x3AcopyFrom0x28llvh0x3A0x3ASmallDenseMap0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetEmpty0x2C0x204u0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AStringRef0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetPair0x3Cllvh0x3A0x3AStringRef0x3E0x3E0x20const0x260x29(ptr noundef nonnull %0, i32 noundef %i.lx, i32 noundef %i.ml) #7
  %.val2123 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mm = getelementptr inbounds nuw i8, ptr %.val2123, i64 %i.bh
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 128
  store i64 4294967295, ptr %i.mn, align 1
  %.val2122 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mo = getelementptr inbounds nuw i8, ptr %.val2122, i64 %i.bh
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 120
  store i64 4294967295, ptr %i.mp, align 1
  %.val2121 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mq = getelementptr inbounds nuw i8, ptr %.val2121, i64 %i.bh
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 112
  store i64 4294967295, ptr %i.mr, align 1
  %i.ms = add nuw nsw i64 %i.bh, 104              ; 2 uses
  %.val2120 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mt = getelementptr inbounds nuw i8, ptr %.val2120, i64 %i.ms
  store i64 4294967295, ptr %i.mt, align 1
  %i.mu = add i32 %i.b, -176                      ; 2 uses
  %i.mv = zext i32 %i.mu to i64
  %.val2119 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mw = getelementptr inbounds nuw i8, ptr %.val2119, i64 %i.mv
  store i64 1, ptr %i.mw, align 1
  %i.mx = add i32 %.0.copyload.i2239, 184
  tail call void @w2c_hermes_llvh0x3A0x3ASmallDenseMap0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetEmpty0x2C0x204u0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AStringRef0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetPair0x3Cllvh0x3A0x3AStringRef0x3E0x3E0x3A0x3AcopyFrom0x28llvh0x3A0x3ASmallDenseMap0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetEmpty0x2C0x204u0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AStringRef0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetPair0x3Cllvh0x3A0x3AStringRef0x3E0x3E0x20const0x260x29(ptr noundef nonnull %0, i32 noundef %i.mu, i32 noundef %i.mx) #7
  %.val2140 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.my = getelementptr inbounds nuw i8, ptr %.val2140, i64 %i.lm
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 224
  %.0.copyload.i2243 = load i8, ptr %i.mz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2243) #7, !srcloc !21
  %.val2118 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.na = getelementptr inbounds nuw i8, ptr %.val2118, i64 %i.bh
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 172
  store i64 4294967295, ptr %i.nb, align 1
  %.val2117 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.nc = getelementptr inbounds nuw i8, ptr %.val2117, i64 %i.bh
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 164
  store i64 4294967295, ptr %i.nd, align 1
  %.val2116 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ne = getelementptr inbounds nuw i8, ptr %.val2116, i64 %i.bh
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 156
  store i64 4294967295, ptr %i.nf, align 1
  %i.ng = add nuw nsw i64 %i.bh, 148              ; 2 uses
  %.val2115 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.nh = getelementptr inbounds nuw i8, ptr %.val2115, i64 %i.ng
  store i64 4294967295, ptr %i.nh, align 1
  %i.ni = add i32 %i.b, -132                      ; 2 uses
  %i.nj = zext i32 %i.ni to i64
  %.val2114 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.nk = getelementptr inbounds nuw i8, ptr %.val2114, i64 %i.nj
  store i64 1, ptr %i.nk, align 1
  %.val2092 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.nl = getelementptr inbounds nuw i8, ptr %.val2092, i64 %i.bh
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 136
  store i8 %.0.copyload.i2243, ptr %i.nm, align 1
  %i.nn = add i32 %.0.copyload.i2239, 228
  tail call void @w2c_hermes_llvh0x3A0x3ASmallDenseMap0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetEmpty0x2C0x204u0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AStringRef0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetPair0x3Cllvh0x3A0x3AStringRef0x3E0x3E0x3A0x3AcopyFrom0x28llvh0x3A0x3ASmallDenseMap0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetEmpty0x2C0x204u0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AStringRef0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetPair0x3Cllvh0x3A0x3AStringRef0x3E0x3E0x20const0x260x29(ptr noundef nonnull %0, i32 noundef %i.ni, i32 noundef %i.nn) #7
  %.val2113 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.no = getelementptr inbounds nuw i8, ptr %.val2113, i64 %i.bh
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 212
  store i64 4294967295, ptr %i.np, align 1
  %.val2112 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.nq = getelementptr inbounds nuw i8, ptr %.val2112, i64 %i.bh
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 204
  store i64 4294967295, ptr %i.nr, align 1
  %.val2111 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ns = getelementptr inbounds nuw i8, ptr %.val2111, i64 %i.bh
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 196
  store i64 4294967295, ptr %i.nt, align 1
  %i.nu = add nuw nsw i64 %i.bh, 188              ; 2 uses
  %.val2110 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.nv = getelementptr inbounds nuw i8, ptr %.val2110, i64 %i.nu
  store i64 4294967295, ptr %i.nv, align 1
  %i.nw = add i32 %i.b, -92                       ; 2 uses
  %i.nx = zext i32 %i.nw to i64
  %.val2109 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ny = getelementptr inbounds nuw i8, ptr %.val2109, i64 %i.nx
  store i64 1, ptr %i.ny, align 1
  %i.nz = add i32 %.0.copyload.i2239, 268
  tail call void @w2c_hermes_llvh0x3A0x3ASmallDenseMap0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetEmpty0x2C0x204u0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AStringRef0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetPair0x3Cllvh0x3A0x3AStringRef0x3E0x3E0x3A0x3AcopyFrom0x28llvh0x3A0x3ASmallDenseMap0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetEmpty0x2C0x204u0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AStringRef0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetPair0x3Cllvh0x3A0x3AStringRef0x3E0x3E0x20const0x260x29(ptr noundef nonnull %0, i32 noundef %i.nw, i32 noundef %i.nz) #7
  %.val2108 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.oa = getelementptr inbounds nuw i8, ptr %.val2108, i64 %i.bh
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 252
  store i64 4294967295, ptr %i.ob, align 1
  %.val2107 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.oc = getelementptr inbounds nuw i8, ptr %.val2107, i64 %i.bh
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 244
  store i64 4294967295, ptr %i.od, align 1
  %.val2106 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.oe = getelementptr inbounds nuw i8, ptr %.val2106, i64 %i.bh
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 236
  store i64 4294967295, ptr %i.of, align 1
  %i.og = add nuw nsw i64 %i.bh, 228              ; 2 uses
  %.val2105 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.oh = getelementptr inbounds nuw i8, ptr %.val2105, i64 %i.og
  store i64 4294967295, ptr %i.oh, align 1
  %i.oi = add nuw nsw i64 %i.bh, 220              ; 2 uses
  %.val2104 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.oj = getelementptr inbounds nuw i8, ptr %.val2104, i64 %i.oi
  store i64 1, ptr %i.oj, align 1
  %i.ok = add i32 %i.b, -52
  %i.ol = add i32 %.0.copyload.i2239, 308
  tail call void @w2c_hermes_llvh0x3A0x3ASmallDenseMap0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetEmpty0x2C0x204u0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AStringRef0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetPair0x3Cllvh0x3A0x3AStringRef0x3E0x3E0x3A0x3AcopyFrom0x28llvh0x3A0x3ASmallDenseMap0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetEmpty0x2C0x204u0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AStringRef0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetPair0x3Cllvh0x3A0x3AStringRef0x3E0x3E0x20const0x260x29(ptr noundef nonnull %0, i32 noundef %i.ok, i32 noundef %i.ol) #7
  %.val2139 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.om = getelementptr inbounds nuw i8, ptr %.val2139, i64 %i.bh
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 45
  %.0.copyload.i2244 = load i8, ptr %i.on, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2244) #7, !srcloc !21
  %.not1895 = icmp eq i8 %.0.copyload.i2244, 0
  br i1 %.not1895, label %bb.fa, label %bb.eq

bb.eq:                                            ; preds = %.loopexit2334
  %.val1988 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.oo = getelementptr inbounds nuw i8, ptr %.val1988, i64 %i.lb
  %.0.copyload.i2245 = load i32, ptr %i.oo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2245) #7, !srcloc !19
  %i.op = zext i32 %.0.copyload.i2245 to i64
  %.val1987 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.oq = getelementptr inbounds nuw i8, ptr %.val1987, i64 %i.op
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 44
  %.0.copyload.i2246 = load i32, ptr %i.or, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2246) #7, !srcloc !19
  %i.os = zext i32 %.0.copyload.i2246 to i64
end_hunk_2
