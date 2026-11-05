Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_6?download=true
inline.NumInlined: 8639
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 67
loop-unroll.NumUnrolled: 67
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AweakMapConstructor0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
  br i1 %.not728, label %.loopexit880, label %bb.ad

.loopexit880:                                     ; preds = %bb.ao, %bb.ac
  %i.ij = zext i32 %1 to i64
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit880, %bb.an, %bb.ak, %.loopexit, %bb.ae, %bb.s, %bb.q, %bb.j, %bb.h, %bb.b
  %.sink884 = phi i64 [ %i.ij, %.loopexit880 ], [ %i.hz, %bb.an ], [ %i.hl, %bb.ak ], [ %i.hf, %.loopexit ], [ %i.gg, %bb.ae ], [ %i.dr, %bb.s ], [ %i.dh, %bb.q ], [ %i.bw, %bb.j ], [ %i.bl, %bb.h ], [ %i.at, %bb.b ]
  %.sink = phi i32 [ 0, %.loopexit880 ], [ %i.hy, %bb.an ], [ %i.hk, %bb.ak ], [ %.0, %.loopexit ], [ 1, %bb.ae ], [ 0, %bb.s ], [ %i.dg, %bb.q ], [ 0, %bb.j ], [ 1, %bb.h ], [ %i.as, %bb.b ]
  %.val763 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ik = getelementptr inbounds nuw i8, ptr %.val763, i64 %.sink884
  store i32 %.sink, ptr %i.ik, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A0x7EGCScope0x280x29(ptr noundef nonnull %0, i32 noundef %i.ab) #8
  store i32 %i.b, ptr %i.a, align 8, !tbaa !20
  ret void
}

declare void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AgetComputedWithReceiver_RJS0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACallable0x3A0x3AexecuteCall20x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ACallable0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHermesValue0x2C0x20hermes0x3A0x3Avm0x3A0x3AHermesValue0x2C0x20bool0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i32 0, 2) i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AuriUnescaped0x28char16_t0x29(ptr nofree noundef readnone captures(none) %0, i32 noundef %1) local_unnamed_addr #4 !guid !314 {
bb.a:
  switch i32 %1, label %bb.b [
    i32 33, label %bb.d
    i32 126, label %bb.d
    i32 95, label %bb.d
    i32 46, label %bb.d
    i32 45, label %bb.d
    i32 42, label %bb.d
    i32 39, label %bb.d
    i32 40, label %bb.d
    i32 41, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %1, 65488
  %i.b = and i32 %i.a, 65534
  %i.c = icmp samesign ult i32 %i.b, 10
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = or i32 %1, 32
  %i.e = add i32 %i.d, 65439
  %i.f = and i32 %i.e, 65534
  %i.g = icmp samesign ult i32 %i.f, 26
  %i.h = zext i1 %i.g to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.a ], [ 1, %bb.b ], [ %i.h, %bb.c ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i32 0, 2) i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AunescapedURISet0x28char16_t0x29(ptr nofree noundef readnone captures(none) %0, i32 noundef %1) local_unnamed_addr #4 !guid !315 {
bb.a:
  switch i32 %1, label %bb.b [
    i32 33, label %bb.d
    i32 126, label %bb.d
    i32 95, label %bb.d
    i32 36, label %bb.e
    i32 64, label %bb.e
    i32 38, label %bb.e
    i32 39, label %bb.d
    i32 40, label %bb.d
    i32 41, label %bb.d
    i32 42, label %bb.d
    i32 43, label %bb.e
    i32 44, label %bb.e
    i32 45, label %bb.d
    i32 46, label %bb.d
    i32 47, label %bb.e
    i32 63, label %bb.e
    i32 61, label %bb.e
    i32 59, label %bb.e
    i32 58, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %1, 65488
  %i.b = and i32 %i.a, 65534
  %i.c = icmp samesign ult i32 %i.b, 10
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = or i32 %1, 32
  %i.e = add i32 %i.d, 65439
  %i.f = and i32 %i.e, 65534
  %i.g = icmp samesign ult i32 %i.f, 26
  %i.h = zext i1 %i.g to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.c
  %.0 = phi i32 [ 1, %bb.b ], [ %i.h, %bb.c ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ]
  %i.i = icmp eq i32 %1, 35
  %i.j = zext i1 %i.i to i32
  %i.k = or i32 %.0, %i.j
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.d
  %.1 = phi i32 [ %i.k, %bb.d ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3Aunescape0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 !guid !316 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20   ; 9 uses
  %i.c = add i32 %i.b, -128                       ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 224 uses
  %i.e = zext i32 %4 to i64                       ; 2 uses
  %.val2867 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %.val2867, i64 %i.e
  %.0.copyload.i = load i32, ptr %i.f, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.g = add i32 %.0.copyload.i, -8
  %.val2866 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %.val2866, i64 %i.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.0.copyload.i2955 = load i32, ptr %i.i, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2955) #8, !srcloc !14
  %.not = icmp eq i32 %.0.copyload.i2955, 0
  %i.j = select i1 %.not, i32 70392, i32 %i.g
  %i.k = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoString_RJS0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef %0, i32 noundef %3, i32 noundef %i.j) ; 2 uses
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = zext i32 %1 to i64
  %.val2875 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %.val2875, i64 %i.m
  store i32 0, ptr %i.n, align 1
  br label %bb.hy

bb.c:                                             ; preds = %bb.a
  %i.o = zext i32 %i.k to i64
  %i.p = or disjoint i64 %i.o, -844424930131968   ; 3 uses
  %i.q = zext i32 %3 to i64
  %.val2865 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %.val2865, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %.0.copyload.i2956 = load i32, ptr %i.s, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2956) #8, !srcloc !14
  %i.t = zext i32 %.0.copyload.i2956 to i64       ; 2 uses
  %i.u = add nuw nsw i64 %i.t, 164                ; 2 uses
  %.val2864 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %.val2864, i64 %i.u
  %.0.copyload.i2957 = load i32, ptr %i.v, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2957) #8, !srcloc !14
  %.val2863 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %.val2863, i64 %i.t
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 168
  %.0.copyload.i2958 = load i32, ptr %i.x, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2958) #8, !srcloc !14
  %i.y = icmp ult i32 %.0.copyload.i2957, %.0.copyload.i2958
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = add i32 %.0.copyload.i2957, 8
  %.val2874 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %.val2874, i64 %i.u
  store i32 %i.z, ptr %i.aa, align 1
  %i.ab = zext i32 %.0.copyload.i2957 to i64
  %.val2879 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ac = getelementptr inbounds nuw i8, ptr %.val2879, i64 %i.ab
  store i64 %i.p, ptr %i.ac, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ad = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i2956, i64 noundef %i.p) #8 ; 2 uses
  %i.ae = zext i32 %i.ad to i64
  %.val2882 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.af = getelementptr inbounds nuw i8, ptr %.val2882, i64 %i.ae
  %.0.copyload.i2959 = load i64, ptr %i.af, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2959) #8, !srcloc !33
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.02594 = phi i32 [ %.0.copyload.i2957, %bb.d ], [ %i.ad, %bb.e ] ; 2 uses
  %.02582 = phi i64 [ %i.p, %bb.d ], [ %.0.copyload.i2959, %bb.e ]
  %i.ag = and i64 %.02582, 4294967295
  %.val2862 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ah = getelementptr inbounds nuw i8, ptr %.val2862, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %.0.copyload.i2960 = load i32, ptr %i.ai, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2960) #8, !srcloc !14
  %i.aj = zext i32 %i.c to i64                    ; 12 uses
  %i.ak = add nuw nsw i64 %i.aj, 32               ; 6 uses
  %.val2878 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.al = getelementptr inbounds nuw i8, ptr %.val2878, i64 %i.ak
  store i64 137438953472, ptr %i.al, align 1
  %i.am = add i32 %i.b, -88                       ; 4 uses
  %i.an = add nuw nsw i64 %i.aj, 28               ; 4 uses
  %.val2873 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ao = getelementptr inbounds nuw i8, ptr %.val2873, i64 %i.an
  store i32 %i.am, ptr %i.ao, align 1
  %i.ap = and i32 %.0.copyload.i2960, 2147483647  ; 6 uses
  %i.aq = icmp samesign ugt i32 %i.ap, 32
  br i1 %i.aq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ar = add i32 %i.b, -100                      ; 2 uses
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.ar, i32 noundef %i.am, i32 noundef %i.ap, i32 noundef 2)
  %i.as = add i32 %i.b, -112
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3A0x3AcreateStringView0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.as, i32 noundef %3, i32 noundef %.02594) #8
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.at = add i32 %i.b, -112
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3A0x3AcreateStringView0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.at, i32 noundef %3, i32 noundef %.02594) #8
  %.not2664 = icmp eq i32 %i.ap, 0
  br i1 %.not2664, label %bb.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h
  %.pre = add i32 %i.b, -100
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %.val2861 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.au = getelementptr inbounds nuw i8, ptr %.val2861, i64 %i.ak
  %.0.copyload.i2961 = load i32, ptr %i.au, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2961) #8, !srcloc !14
  br label %.loopexit3168

bb.j:                                             ; preds = %._crit_edge, %bb.g
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %i.ar, %bb.g ]
  br label %bb.k

bb.k:                                             ; preds = %bb.hs, %bb.j
  %.02584 = phi i32 [ 0, %bb.j ], [ %i.ajo, %bb.hs ] ; 19 uses
  %.val2860 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.av = getelementptr inbounds nuw i8, ptr %.val2860, i64 %i.aj
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 20
  %.0.copyload.i2962 = load i32, ptr %i.aw, align 1 ; 24 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2962) #8, !srcloc !14
  %i.ax = and i32 %.0.copyload.i2962, 1073741824  ; 9 uses
  %.val2859 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ay = getelementptr inbounds nuw i8, ptr %.val2859, i64 %i.aj
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.0.copyload.i2963 = load i32, ptr %i.az, align 1 ; 48 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2963) #8, !srcloc !14
  %i.ba = icmp slt i32 %.0.copyload.i2962, 0      ; 9 uses
  %.not2668 = icmp eq i32 %i.ax, 0                ; 2 uses
  br i1 %i.ba, label %bb.l, label %bb.t

bb.l:                                             ; preds = %bb.k
  br i1 %.not2668, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = zext i32 %.0.copyload.i2963 to i64
  %.val2858 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bc = getelementptr inbounds nuw i8, ptr %.val2858, i64 %i.bb
  %.0.copyload.i2964 = load i32, ptr %i.bc, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2964) #8, !srcloc !14
  %i.bd = zext i32 %.0.copyload.i2964 to i64      ; 4 uses
  %.val2857 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.be = getelementptr inbounds nuw i8, ptr %.val2857, i64 %i.bd
  %.0.copyload.i2965 = load i32, ptr %i.be, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2965) #8, !srcloc !14
  %i.bf = icmp ugt i32 %.0.copyload.i2965, 150994943
  br i1 %i.bf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.val2856 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bg = getelementptr inbounds nuw i8, ptr %.val2856, i64 %i.bd
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  %.0.copyload.i2966 = load i32, ptr %i.bh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2966) #8, !srcloc !14
  %i.bi = add i32 %.0.copyload.i2964, 12
  %.val2941 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bj = getelementptr inbounds nuw i8, ptr %.val2941, i64 %i.bd
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 23
  %.0.copyload.i2967 = load i8, ptr %i.bk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2967) #8, !srcloc !34
  %i.bl = icmp slt i8 %.0.copyload.i2967, 0
  %i.bm = select i1 %i.bl, i32 %.0.copyload.i2966, i32 %i.bi
  br label %bb.s

bb.o:                                             ; preds = %bb.m
  %i.bn = and i32 %.0.copyload.i2965, 251658240
  switch i32 %i.bn, label %bb.r [
    i32 67108864, label %bb.q
    i32 134217728, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o
  %i.bo = add i32 %.0.copyload.i2964, 12
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.bp = add i32 %.0.copyload.i2964, 8
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %.val2855 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bq = getelementptr inbounds nuw i8, ptr %.val2855, i64 %i.bd
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.0.copyload.i2968 = load i32, ptr %i.br, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2968) #8, !srcloc !14
  %i.bs = zext i32 %.0.copyload.i2968 to i64      ; 2 uses
  %.val2854 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bt = getelementptr inbounds nuw i8, ptr %.val2854, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  %.0.copyload.i2969 = load i32, ptr %i.bu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2969) #8, !srcloc !14
  %i.bv = add i32 %.0.copyload.i2968, 12
  %.val2940 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bw = getelementptr inbounds nuw i8, ptr %.val2940, i64 %i.bs
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 23
  %.0.copyload.i2970 = load i8, ptr %i.bx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2970) #8, !srcloc !34
  %i.by = icmp slt i8 %.0.copyload.i2970, 0
  %i.bz = select i1 %i.by, i32 %.0.copyload.i2969, i32 %i.bv
  br label %bb.s

bb.s:                                             ; preds = %bb.l, %bb.r, %bb.q, %bb.p, %bb.n
  %.02575 = phi i32 [ %.0.copyload.i2963, %bb.l ], [ %i.bm, %bb.n ], [ %i.bz, %bb.r ], [ %i.bo, %bb.p ], [ %i.bp, %bb.q ]
  %i.ca = and i32 %.0.copyload.i2962, 1073741823
  %i.cb = add nuw i32 %i.ca, %.02584
  %i.cc = add i32 %i.cb, %.02575
  %i.cd = zext i32 %i.cc to i64
  %.val2939 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ce = getelementptr inbounds nuw i8, ptr %.val2939, i64 %i.cd
  %.0.copyload.i2971 = load i8, ptr %i.ce, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2971) #8, !srcloc !34
  %i.cf = sext i8 %.0.copyload.i2971 to i32
  br label %bb.ab

bb.t:                                             ; preds = %bb.k
  br i1 %.not2668, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cg = zext i32 %.0.copyload.i2963 to i64
  %.val2853 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ch = getelementptr inbounds nuw i8, ptr %.val2853, i64 %i.cg
  %.0.copyload.i2972 = load i32, ptr %i.ch, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2972) #8, !srcloc !14
  %i.ci = zext i32 %.0.copyload.i2972 to i64      ; 4 uses
  %.val2852 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.cj = getelementptr inbounds nuw i8, ptr %.val2852, i64 %i.ci
  %.0.copyload.i2973 = load i32, ptr %i.cj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2973) #8, !srcloc !14
  %i.ck = icmp ugt i32 %.0.copyload.i2973, 150994943
  br i1 %i.ck, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %.val2851 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.cl = getelementptr inbounds nuw i8, ptr %.val2851, i64 %i.ci
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  %.0.copyload.i2974 = load i32, ptr %i.cm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2974) #8, !srcloc !14
  %i.cn = add i32 %.0.copyload.i2972, 12
  %.val2938 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.co = getelementptr inbounds nuw i8, ptr %.val2938, i64 %i.ci
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 23
  %.0.copyload.i2975 = load i8, ptr %i.cp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2975) #8, !srcloc !34
  %i.cq = icmp slt i8 %.0.copyload.i2975, 0
  %i.cr = select i1 %i.cq, i32 %.0.copyload.i2974, i32 %i.cn
  br label %bb.aa

bb.w:                                             ; preds = %bb.u
  %i.cs = and i32 %.0.copyload.i2973, 251658240
  switch i32 %i.cs, label %bb.z [
    i32 50331648, label %bb.y
    i32 117440512, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w
  %i.ct = add i32 %.0.copyload.i2972, 12
  br label %bb.aa

bb.y:                                             ; preds = %bb.w
  %i.cu = add i32 %.0.copyload.i2972, 8
  br label %bb.aa

bb.z:                                             ; preds = %bb.w
  %.val2850 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.cv = getelementptr inbounds nuw i8, ptr %.val2850, i64 %i.ci
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %.0.copyload.i2976 = load i32, ptr %i.cw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2976) #8, !srcloc !14
  %i.cx = zext i32 %.0.copyload.i2976 to i64      ; 2 uses
  %.val2849 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.cy = getelementptr inbounds nuw i8, ptr %.val2849, i64 %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  %.0.copyload.i2977 = load i32, ptr %i.cz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2977) #8, !srcloc !14
  %i.da = add i32 %.0.copyload.i2976, 12
  %.val2937 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.db = getelementptr inbounds nuw i8, ptr %.val2937, i64 %i.cx
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 23
  %.0.copyload.i2978 = load i8, ptr %i.dc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2978) #8, !srcloc !34
  %i.dd = icmp slt i8 %.0.copyload.i2978, 0
  %i.de = select i1 %i.dd, i32 %.0.copyload.i2977, i32 %i.da
  br label %bb.aa

bb.aa:                                            ; preds = %bb.t, %bb.z, %bb.y, %bb.x, %bb.v
  %.12576 = phi i32 [ %.0.copyload.i2963, %bb.t ], [ %i.cr, %bb.v ], [ %i.de, %bb.z ], [ %i.ct, %bb.x ], [ %i.cu, %bb.y ]
  %i.df = and i32 %.0.copyload.i2962, 1073741823
  %i.dg = add nuw i32 %.02584, %i.df
  %i.dh = shl i32 %i.dg, 1
  %i.di = add i32 %i.dh, %.12576
  %i.dj = zext i32 %i.di to i64
  %.val2954 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.dk = getelementptr inbounds nuw i8, ptr %.val2954, i64 %i.dj
  %.0.copyload.i2979 = load i16, ptr %i.dk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i2979) #8, !srcloc !37
  %i.dl = zext i16 %.0.copyload.i2979 to i32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.s
  %.22577 = phi i32 [ %i.cf, %bb.s ], [ %i.dl, %bb.aa ] ; 2 uses
  %i.dm = and i32 %.22577, 65535
  %.not2671 = icmp eq i32 %i.dm, 37
  br i1 %.not2671, label %bb.ac, label %bb.hq

bb.ac:                                            ; preds = %bb.ab
  %i.dn = add nuw i32 %.02584, 6
  %i.do = icmp ugt i32 %i.dn, %i.ap
  br i1 %i.do, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dp = add nuw i32 %.02584, 1                  ; 6 uses
  %.not2676 = icmp eq i32 %i.ax, 0                ; 2 uses
  br i1 %i.ba, label %bb.ae, label %bb.ak

bb.ae:                                            ; preds = %bb.ad
  br i1 %.not2676, label %bb.bg, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dq = zext i32 %.0.copyload.i2963 to i64      ; 2 uses
  %.val2848 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.dr = getelementptr inbounds nuw i8, ptr %.val2848, i64 %i.dq
  %.0.copyload.i2980 = load i32, ptr %i.dr, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2980) #8, !srcloc !14
  %i.ds = zext i32 %.0.copyload.i2980 to i64      ; 4 uses
  %.val2847 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.dt = getelementptr inbounds nuw i8, ptr %.val2847, i64 %i.ds
  %.0.copyload.i2981 = load i32, ptr %i.dt, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2981) #8, !srcloc !14
  %i.du = icmp ugt i32 %.0.copyload.i2981, 150994943
  br i1 %i.du, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %.val2846 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.dv = getelementptr inbounds nuw i8, ptr %.val2846, i64 %i.ds
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 12
  %.0.copyload.i2982 = load i32, ptr %i.dw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2982) #8, !srcloc !14
  %i.dx = add i32 %.0.copyload.i2980, 12
  %.val2936 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.dy = getelementptr inbounds nuw i8, ptr %.val2936, i64 %i.ds
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 23
  %.0.copyload.i2983 = load i8, ptr %i.dz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2983) #8, !srcloc !34
  %i.ea = icmp slt i8 %.0.copyload.i2983, 0
  %i.eb = select i1 %i.ea, i32 %.0.copyload.i2982, i32 %i.dx
  br label %bb.ar

bb.ah:                                            ; preds = %bb.af
  %i.ec = and i32 %.0.copyload.i2981, 251658240   ; 2 uses
  %i.ed = icmp eq i32 %i.ec, 67108864
  br i1 %i.ed, label %bb.aq, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ee = add i32 %.0.copyload.i2980, 12
  %i.ef = icmp eq i32 %i.ec, 134217728
  br i1 %i.ef, label %bb.ar, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.val2845 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.eg = getelementptr inbounds nuw i8, ptr %.val2845, i64 %i.ds
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %.0.copyload.i2984 = load i32, ptr %i.eh, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2984) #8, !srcloc !14
  %i.ei = zext i32 %.0.copyload.i2984 to i64      ; 2 uses
  %.val2844 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ej = getelementptr inbounds nuw i8, ptr %.val2844, i64 %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 12
  %.0.copyload.i2985 = load i32, ptr %i.ek, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2985) #8, !srcloc !14
  %i.el = add i32 %.0.copyload.i2984, 12
  %.val2935 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.em = getelementptr inbounds nuw i8, ptr %.val2935, i64 %i.ei
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 23
  %.0.copyload.i2986 = load i8, ptr %i.en, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2986) #8, !srcloc !34
  %i.eo = icmp slt i8 %.0.copyload.i2986, 0
  %i.ep = select i1 %i.eo, i32 %.0.copyload.i2985, i32 %i.el
  br label %bb.ar

bb.ak:                                            ; preds = %bb.ad
  br i1 %.not2676, label %bb.bh, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.eq = zext i32 %.0.copyload.i2963 to i64      ; 2 uses
  %.val2843 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.er = getelementptr inbounds nuw i8, ptr %.val2843, i64 %i.eq
  %.0.copyload.i2987 = load i32, ptr %i.er, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2987) #8, !srcloc !14
  %i.es = zext i32 %.0.copyload.i2987 to i64      ; 4 uses
  %.val2842 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.et = getelementptr inbounds nuw i8, ptr %.val2842, i64 %i.es
  %.0.copyload.i2988 = load i32, ptr %i.et, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2988) #8, !srcloc !14
  %i.eu = icmp ugt i32 %.0.copyload.i2988, 150994943
  br i1 %i.eu, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %.val2841 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ev = getelementptr inbounds nuw i8, ptr %.val2841, i64 %i.es
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 12
  %.0.copyload.i2989 = load i32, ptr %i.ew, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2989) #8, !srcloc !14
  %i.ex = add i32 %.0.copyload.i2987, 12
  %.val2934 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ey = getelementptr inbounds nuw i8, ptr %.val2934, i64 %i.es
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 23
  %.0.copyload.i2990 = load i8, ptr %i.ez, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2990) #8, !srcloc !34
  %i.fa = icmp slt i8 %.0.copyload.i2990, 0
  %i.fb = select i1 %i.fa, i32 %.0.copyload.i2989, i32 %i.ex
  br label %bb.at

bb.an:                                            ; preds = %bb.al
  %i.fc = and i32 %.0.copyload.i2988, 251658240   ; 2 uses
  %i.fd = icmp eq i32 %i.fc, 50331648
  br i1 %i.fd, label %bb.as, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fe = add i32 %.0.copyload.i2987, 12
  %i.ff = icmp eq i32 %i.fc, 117440512
  br i1 %i.ff, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.val2840 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fg = getelementptr inbounds nuw i8, ptr %.val2840, i64 %i.es
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %.0.copyload.i2991 = load i32, ptr %i.fh, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2991) #8, !srcloc !14
  %i.fi = zext i32 %.0.copyload.i2991 to i64      ; 2 uses
  %.val2839 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fj = getelementptr inbounds nuw i8, ptr %.val2839, i64 %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 12
  %.0.copyload.i2992 = load i32, ptr %i.fk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2992) #8, !srcloc !14
  %i.fl = add i32 %.0.copyload.i2991, 12
  %.val2933 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fm = getelementptr inbounds nuw i8, ptr %.val2933, i64 %i.fi
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 23
  %.0.copyload.i2993 = load i8, ptr %i.fn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2993) #8, !srcloc !34
  %i.fo = icmp slt i8 %.0.copyload.i2993, 0
  %i.fp = select i1 %i.fo, i32 %.0.copyload.i2992, i32 %i.fl
  br label %bb.at

bb.aq:                                            ; preds = %bb.ah
  %i.fq = add i32 %.0.copyload.i2980, 8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ai, %bb.aq, %bb.aj, %bb.ag
  %.32578 = phi i32 [ %i.eb, %bb.ag ], [ %i.fq, %bb.aq ], [ %i.ee, %bb.ai ], [ %i.ep, %bb.aj ]
  %i.fr = and i32 %.0.copyload.i2962, 1073741823  ; 5 uses
  %i.fs = add i32 %i.fr, %i.dp
  %i.ft = add i32 %i.fs, %.32578
  %i.fu = zext i32 %i.ft to i64
  %.val2730 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fv = getelementptr inbounds nuw i8, ptr %.val2730, i64 %i.fu
  %.0.copyload.i2994 = load i8, ptr %i.fv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2994) #8, !srcloc !13
  %.not2677 = icmp eq i8 %.0.copyload.i2994, 117
  br i1 %.not2677, label %bb.aw, label %.loopexit

bb.as:                                            ; preds = %bb.an
  %i.fw = add i32 %.0.copyload.i2987, 8
  br label %bb.at

bb.at:                                            ; preds = %bb.ao, %bb.as, %bb.ap, %bb.am
  %.42579 = phi i32 [ %i.fb, %bb.am ], [ %i.fw, %bb.as ], [ %i.fe, %bb.ao ], [ %i.fp, %bb.ap ]
  %i.fx = and i32 %.0.copyload.i2962, 1073741823
  %i.fy = add i32 %i.dp, %i.fx
  %i.fz = shl i32 %i.fy, 1
  %i.ga = add i32 %i.fz, %.42579
  %i.gb = zext i32 %i.ga to i64
  %.val2953 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gc = getelementptr inbounds nuw i8, ptr %.val2953, i64 %i.gb
  %.0.copyload.i2995 = load i16, ptr %i.gc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i2995) #8, !srcloc !37
  %.not2673 = icmp eq i16 %.0.copyload.i2995, 117
  br i1 %.not2673, label %bb.au, label %bb.fc

bb.au:                                            ; preds = %bb.at
  %.val2838 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gd = getelementptr inbounds nuw i8, ptr %.val2838, i64 %i.eq
  %.0.copyload.i2996 = load i32, ptr %i.gd, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2996) #8, !srcloc !14
  %i.ge = zext i32 %.0.copyload.i2996 to i64      ; 4 uses
  %.val2837 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gf = getelementptr inbounds nuw i8, ptr %.val2837, i64 %i.ge
  %.0.copyload.i2997 = load i32, ptr %i.gf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2997) #8, !srcloc !14
  %i.gg = icmp ult i32 %.0.copyload.i2997, 150994944
  br i1 %i.gg, label %bb.bc, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.val2836 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gh = getelementptr inbounds nuw i8, ptr %.val2836, i64 %i.ge
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 12
  %.0.copyload.i2998 = load i32, ptr %i.gi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2998) #8, !srcloc !14
  %i.gj = add i32 %.0.copyload.i2996, 12
  %.val2932 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gk = getelementptr inbounds nuw i8, ptr %.val2932, i64 %i.ge
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 23
  %.0.copyload.i2999 = load i8, ptr %i.gl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2999) #8, !srcloc !34
  %i.gm = icmp slt i8 %.0.copyload.i2999, 0
  %i.gn = select i1 %i.gm, i32 %.0.copyload.i2998, i32 %i.gj
  br label %bb.bi

bb.aw:                                            ; preds = %bb.ar
  %.val2835 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.go = getelementptr inbounds nuw i8, ptr %.val2835, i64 %i.dq
  %.0.copyload.i3000 = load i32, ptr %i.go, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3000) #8, !srcloc !14
  %i.gp = zext i32 %.0.copyload.i3000 to i64      ; 4 uses
  %.val2834 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gq = getelementptr inbounds nuw i8, ptr %.val2834, i64 %i.gp
  %.0.copyload.i3001 = load i32, ptr %i.gq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3001) #8, !srcloc !14
  %i.gr = icmp ugt i32 %.0.copyload.i3001, 150994943
  br i1 %i.gr, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %.val2833 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gs = getelementptr inbounds nuw i8, ptr %.val2833, i64 %i.gp
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 12
  %.0.copyload.i3002 = load i32, ptr %i.gt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3002) #8, !srcloc !14
  %i.gu = add i32 %.0.copyload.i3000, 12
  %.val2931 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gv = getelementptr inbounds nuw i8, ptr %.val2931, i64 %i.gp
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 23
  %.0.copyload.i3003 = load i8, ptr %i.gw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3003) #8, !srcloc !34
  %i.gx = icmp slt i8 %.0.copyload.i3003, 0
  %i.gy = select i1 %i.gx, i32 %.0.copyload.i3002, i32 %i.gu
  br label %bb.bj

bb.ay:                                            ; preds = %bb.aw
  %i.gz = and i32 %.0.copyload.i3001, 251658240
  switch i32 %i.gz, label %bb.bb [
    i32 67108864, label %bb.ba
    i32 134217728, label %bb.az
  ]

bb.az:                                            ; preds = %bb.ay
  %i.ha = add i32 %.0.copyload.i3000, 12
  br label %bb.bj

bb.ba:                                            ; preds = %bb.ay
  %i.hb = add i32 %.0.copyload.i3000, 8
  br label %bb.bj

bb.bb:                                            ; preds = %bb.ay
  %.val2832 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hc = getelementptr inbounds nuw i8, ptr %.val2832, i64 %i.gp
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %.0.copyload.i3004 = load i32, ptr %i.hd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3004) #8, !srcloc !14
  %i.he = zext i32 %.0.copyload.i3004 to i64      ; 2 uses
  %.val2831 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hf = getelementptr inbounds nuw i8, ptr %.val2831, i64 %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 12
  %.0.copyload.i3005 = load i32, ptr %i.hg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3005) #8, !srcloc !14
  %i.hh = add i32 %.0.copyload.i3004, 12
  %.val2930 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hi = getelementptr inbounds nuw i8, ptr %.val2930, i64 %i.he
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 23
  %.0.copyload.i3006 = load i8, ptr %i.hj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3006) #8, !srcloc !34
  %i.hk = icmp slt i8 %.0.copyload.i3006, 0
  %i.hl = select i1 %i.hk, i32 %.0.copyload.i3005, i32 %i.hh
  br label %bb.bj

bb.bc:                                            ; preds = %bb.au
  %i.hm = and i32 %.0.copyload.i2997, 251658240
  switch i32 %i.hm, label %bb.bf [
    i32 50331648, label %bb.be
    i32 117440512, label %bb.bd
  ]

bb.bd:                                            ; preds = %bb.bc
  %i.hn = add i32 %.0.copyload.i2996, 12
  br label %bb.bi

bb.be:                                            ; preds = %bb.bc
  %i.ho = add i32 %.0.copyload.i2996, 8
  br label %bb.bi

bb.bf:                                            ; preds = %bb.bc
  %.val2830 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hp = getelementptr inbounds nuw i8, ptr %.val2830, i64 %i.ge
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %.0.copyload.i3007 = load i32, ptr %i.hq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3007) #8, !srcloc !14
  %i.hr = zext i32 %.0.copyload.i3007 to i64      ; 2 uses
  %.val2829 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hs = getelementptr inbounds nuw i8, ptr %.val2829, i64 %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 12
  %.0.copyload.i3008 = load i32, ptr %i.ht, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3008) #8, !srcloc !14
  %i.hu = add i32 %.0.copyload.i3007, 12
  %.val2929 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hv = getelementptr inbounds nuw i8, ptr %.val2929, i64 %i.hr
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 23
  %.0.copyload.i3009 = load i8, ptr %i.hw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3009) #8, !srcloc !34
  %i.hx = icmp slt i8 %.0.copyload.i3009, 0
  %i.hy = select i1 %i.hx, i32 %.0.copyload.i3008, i32 %i.hu
  br label %bb.bi

bb.bg:                                            ; preds = %bb.ae
  %i.hz = and i32 %.0.copyload.i2962, 1073741823  ; 2 uses
  %i.ia = add i32 %i.hz, %i.dp
  %i.ib = add i32 %i.ia, %.0.copyload.i2963
  %i.ic = zext i32 %i.ib to i64
  %.val = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.id = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ic
  %.0.copyload.i3010 = load i8, ptr %i.id, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3010) #8, !srcloc !13
  %i.ie = icmp eq i8 %.0.copyload.i3010, 117
  br i1 %i.ie, label %bb.bj, label %.loopexit

bb.bh:                                            ; preds = %bb.ak
  %i.if = add i32 %.0.copyload.i2962, %i.dp
  %i.ig = shl i32 %i.if, 1
  %i.ih = add i32 %.0.copyload.i2963, %i.ig
  %i.ii = zext i32 %i.ih to i64
  %.val2952 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ij = getelementptr inbounds nuw i8, ptr %.val2952, i64 %i.ii
  %.0.copyload.i3011 = load i16, ptr %i.ij, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i3011) #8, !srcloc !37
  %i.ik = icmp eq i16 %.0.copyload.i3011, 117
  br i1 %i.ik, label %bb.bi, label %bb.fn

bb.bi:                                            ; preds = %bb.bh, %bb.bf, %bb.be, %bb.bd, %bb.av
  %.12595 = phi i32 [ %.0.copyload.i2963, %bb.bh ], [ %i.gn, %bb.av ], [ %i.hy, %bb.bf ], [ %i.hn, %bb.bd ], [ %i.ho, %bb.be ]
  %i.il = shl nuw i32 %.0.copyload.i2962, 1
  %i.im = and i32 %i.il, 2147483646
  %i.in = add i32 %.12595, %i.im
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bg, %bb.bb, %bb.ba, %bb.az, %bb.ax
  %.22596 = phi i32 [ %i.hz, %bb.bg ], [ %i.fr, %bb.ax ], [ %i.fr, %bb.bb ], [ %i.fr, %bb.az ], [ %i.fr, %bb.ba ]
  %.02592 = phi i32 [ %.0.copyload.i2963, %bb.bg ], [ %i.gy, %bb.ax ], [ %i.hl, %bb.bb ], [ %i.ha, %bb.az ], [ %i.hb, %bb.ba ]
  %i.io = add i32 %.02592, %.22596
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.02586 = phi i32 [ %i.io, %bb.bj ], [ 0, %bb.bi ] ; 2 uses
  %.52580 = phi i32 [ 0, %bb.bj ], [ %i.in, %bb.bi ]
  %i.ip = add i32 %.02586, %.02584
  %.not2680 = icmp eq i32 %.02586, 0              ; 2 uses
  %i.iq = select i1 %.not2680, i32 0, i32 %i.ip   ; 2 uses
  %i.ir = add i32 %i.iq, 2                        ; 2 uses
  %i.is = shl nuw i32 %.02584, 1                  ; 3 uses
  %i.it = select i1 %.not2680, i32 %i.is, i32 0
  %i.iu = add i32 %i.it, %.52580
  %.not2681 = icmp eq i32 %i.iq, 0                ; 5 uses
  %i.iv = select i1 %.not2681, i32 4, i32 0
  %i.iw = add i32 %i.iu, %i.iv                    ; 2 uses
  %.not2685 = icmp eq i32 %i.ax, 0                ; 2 uses
  br i1 %i.ba, label %bb.bl, label %bb.bt

bb.bl:                                            ; preds = %bb.bk
  br i1 %.not2685, label %bb.bs, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ix = zext i32 %.0.copyload.i2963 to i64
  %.val2828 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.iy = getelementptr inbounds nuw i8, ptr %.val2828, i64 %i.ix
  %.0.copyload.i3012 = load i32, ptr %i.iy, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3012) #8, !srcloc !14
  %i.iz = zext i32 %.0.copyload.i3012 to i64      ; 4 uses
  %.val2827 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ja = getelementptr inbounds nuw i8, ptr %.val2827, i64 %i.iz
  %.0.copyload.i3013 = load i32, ptr %i.ja, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3013) #8, !srcloc !14
  %i.jb = icmp ugt i32 %.0.copyload.i3013, 150994943
  br i1 %i.jb, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %.val2826 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.jc = getelementptr inbounds nuw i8, ptr %.val2826, i64 %i.iz
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 12
  %.0.copyload.i3014 = load i32, ptr %i.jd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3014) #8, !srcloc !14
  %i.je = add i32 %.0.copyload.i3012, 12
  %.val2928 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.jf = getelementptr inbounds nuw i8, ptr %.val2928, i64 %i.iz
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 23
  %.0.copyload.i3015 = load i8, ptr %i.jg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3015) #8, !srcloc !34
  %i.jh = icmp slt i8 %.0.copyload.i3015, 0
  %i.ji = select i1 %i.jh, i32 %.0.copyload.i3014, i32 %i.je
  br label %bb.bs

bb.bo:                                            ; preds = %bb.bm
  %i.jj = and i32 %.0.copyload.i3013, 251658240
  switch i32 %i.jj, label %bb.br [
    i32 67108864, label %bb.bq
    i32 134217728, label %bb.bp
  ]

bb.bp:                                            ; preds = %bb.bo
  %i.jk = add i32 %.0.copyload.i3012, 12
  br label %bb.bs

bb.bq:                                            ; preds = %bb.bo
  %i.jl = add i32 %.0.copyload.i3012, 8
  br label %bb.bs

bb.br:                                            ; preds = %bb.bo
  %.val2825 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.jm = getelementptr inbounds nuw i8, ptr %.val2825, i64 %i.iz
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %.0.copyload.i3016 = load i32, ptr %i.jn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3016) #8, !srcloc !14
  %i.jo = zext i32 %.0.copyload.i3016 to i64      ; 2 uses
  %.val2824 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.jp = getelementptr inbounds nuw i8, ptr %.val2824, i64 %i.jo
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 12
  %.0.copyload.i3017 = load i32, ptr %i.jq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3017) #8, !srcloc !14
  %i.jr = add i32 %.0.copyload.i3016, 12
  %.val2927 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.js = getelementptr inbounds nuw i8, ptr %.val2927, i64 %i.jo
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 23
  %.0.copyload.i3018 = load i8, ptr %i.jt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3018) #8, !srcloc !34
  %i.ju = icmp slt i8 %.0.copyload.i3018, 0
  %i.jv = select i1 %i.ju, i32 %.0.copyload.i3017, i32 %i.jr
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bl, %bb.br, %bb.bq, %bb.bp, %bb.bn
  %.62581 = phi i32 [ %.0.copyload.i2963, %bb.bl ], [ %i.ji, %bb.bn ], [ %i.jv, %bb.br ], [ %i.jk, %bb.bp ], [ %i.jl, %bb.bq ]
  %i.jw = and i32 %.0.copyload.i2962, 1073741823
  %i.jx = add i32 %.62581, %i.jw
  br label %bb.cb

bb.bt:                                            ; preds = %bb.bk
  br i1 %.not2685, label %bb.ca, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.jy = zext i32 %.0.copyload.i2963 to i64
  %.val2823 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.jz = getelementptr inbounds nuw i8, ptr %.val2823, i64 %i.jy
  %.0.copyload.i3019 = load i32, ptr %i.jz, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3019) #8, !srcloc !14
  %i.ka = zext i32 %.0.copyload.i3019 to i64      ; 4 uses
  %.val2822 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.kb = getelementptr inbounds nuw i8, ptr %.val2822, i64 %i.ka
  %.0.copyload.i3020 = load i32, ptr %i.kb, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3020) #8, !srcloc !14
  %i.kc = icmp ugt i32 %.0.copyload.i3020, 150994943
  br i1 %i.kc, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %.val2821 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.kd = getelementptr inbounds nuw i8, ptr %.val2821, i64 %i.ka
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 12
  %.0.copyload.i3021 = load i32, ptr %i.ke, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3021) #8, !srcloc !14
  %i.kf = add i32 %.0.copyload.i3019, 12
  %.val2926 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.kg = getelementptr inbounds nuw i8, ptr %.val2926, i64 %i.ka
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 23
  %.0.copyload.i3022 = load i8, ptr %i.kh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3022) #8, !srcloc !34
  %i.ki = icmp slt i8 %.0.copyload.i3022, 0
  %i.kj = select i1 %i.ki, i32 %.0.copyload.i3021, i32 %i.kf
  br label %bb.ca

bb.bw:                                            ; preds = %bb.bu
  %i.kk = and i32 %.0.copyload.i3020, 251658240
  switch i32 %i.kk, label %bb.bz [
    i32 50331648, label %bb.by
    i32 117440512, label %bb.bx
  ]

bb.bx:                                            ; preds = %bb.bw
  %i.kl = add i32 %.0.copyload.i3019, 12
  br label %bb.ca

bb.by:                                            ; preds = %bb.bw
  %i.km = add i32 %.0.copyload.i3019, 8
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bw
  %.val2820 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.kn = getelementptr inbounds nuw i8, ptr %.val2820, i64 %i.ka
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %.0.copyload.i3023 = load i32, ptr %i.ko, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3023) #8, !srcloc !14
  %i.kp = zext i32 %.0.copyload.i3023 to i64      ; 2 uses
  %.val2819 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.kq = getelementptr inbounds nuw i8, ptr %.val2819, i64 %i.kp
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 12
  %.0.copyload.i3024 = load i32, ptr %i.kr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3024) #8, !srcloc !14
  %i.ks = add i32 %.0.copyload.i3023, 12
  %.val2925 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.kt = getelementptr inbounds nuw i8, ptr %.val2925, i64 %i.kp
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 23
  %.0.copyload.i3025 = load i8, ptr %i.ku, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3025) #8, !srcloc !34
  %i.kv = icmp slt i8 %.0.copyload.i3025, 0
  %i.kw = select i1 %i.kv, i32 %.0.copyload.i3024, i32 %i.ks
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bt, %bb.bz, %bb.by, %bb.bx, %bb.bv
  %.7 = phi i32 [ %.0.copyload.i2963, %bb.bt ], [ %i.kj, %bb.bv ], [ %i.kw, %bb.bz ], [ %i.kl, %bb.bx ], [ %i.km, %bb.by ]
  %i.kx = shl nuw i32 %.0.copyload.i2962, 1
  %i.ky = and i32 %i.kx, 2147483646
  %i.kz = add i32 %.7, %i.ky
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bs
  %.32597 = phi i32 [ %i.jx, %bb.bs ], [ 0, %bb.ca ] ; 2 uses
  %.02583 = phi i32 [ 0, %bb.bs ], [ %i.kz, %bb.ca ]
  %i.la = select i1 %.not2681, i32 %i.iw, i32 %i.ir
  %i.lb = add i32 %.32597, %.02584
  %.not2688 = icmp eq i32 %.32597, 0              ; 2 uses
  %i.lc = select i1 %.not2688, i32 0, i32 %i.lb   ; 2 uses
  %i.ld = add i32 %i.lc, 6
  %.not2689 = icmp eq i32 %i.lc, 0                ; 2 uses
  %i.le = select i1 %.not2689, i32 0, i32 %i.ld   ; 2 uses
  %i.lf = select i1 %.not2688, i32 %i.is, i32 0
  %i.lg = add i32 %i.lf, %.02583
  %i.lh = select i1 %.not2689, i32 12, i32 0
  %i.li = add i32 %i.lg, %i.lh                    ; 2 uses
  %i.lj = select i1 %.not2681, i32 %i.li, i32 %i.le
  %.not2690 = icmp eq i32 %i.la, %i.lj
  br i1 %.not2690, label %.loopexit3167, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.lk = select i1 %.not2681, i32 0, i32 %i.ir
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cj, %bb.cc
  %.42598 = phi i32 [ %i.lk, %bb.cc ], [ %.52599, %bb.cj ] ; 3 uses
  %.12593.in = phi i1 [ %.not2681, %bb.cc ], [ %.not2691, %bb.cj ]
  %.12587 = phi i32 [ %i.iw, %bb.cc ], [ %.22588, %bb.cj ] ; 3 uses
  %.val2951 = load ptr, ptr %i.d, align 8, !tbaa !12 ; 2 uses
  br i1 %.12593.in, label %bb.ce, label %bb.ch

bb.ce:                                            ; preds = %bb.cd
  %i.ll = zext i32 %.12587 to i64
  %i.lm = getelementptr inbounds nuw i8, ptr %.val2951, i64 %i.ll
  %.0.copyload.i3026 = load i16, ptr %i.lm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i3026) #8, !srcloc !37
  %i.ln = zext i16 %.0.copyload.i3026 to i32      ; 2 uses
  %i.lo = add nuw nsw i32 %i.ln, 65488
  %i.lp = and i32 %i.lo, 65534
  %i.lq = icmp samesign ugt i32 %i.lp, 9
  br i1 %i.lq, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.lr = or i32 %i.ln, 32
  %i.ls = add nuw nsw i32 %i.lr, 65439
  %i.lt = and i32 %i.ls, 65534
  %i.lu = icmp samesign ugt i32 %i.lt, 5
  br i1 %i.lu, label %.loopexit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.lv = add i32 %.12587, 2
  br label %bb.cj

bb.ch:                                            ; preds = %bb.cd
  %i.lw = zext i32 %.42598 to i64
  %i.lx = getelementptr inbounds nuw i8, ptr %.val2951, i64 %i.lw
  %.0.copyload.i3027 = load i8, ptr %i.lx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3027) #8, !srcloc !34
  %i.ly = sext i8 %.0.copyload.i3027 to i32       ; 2 uses
  %i.lz = add nsw i32 %i.ly, -58
  %i.ma = icmp ult i32 %i.lz, -10
  %i.mb = or i32 %i.ly, 32
  %i.mc = add nsw i32 %i.mb, -103
  %i.md = icmp ult i32 %i.mc, -6
  %i.me = and i1 %i.ma, %i.md
  br i1 %i.me, label %.loopexit, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.mf = add i32 %.42598, 1
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.cg
  %.52599 = phi i32 [ %.42598, %bb.cg ], [ %i.mf, %bb.ci ] ; 3 uses
  %.22588 = phi i32 [ %i.lv, %bb.cg ], [ %.12587, %bb.ci ] ; 2 uses
  %.not2691 = icmp eq i32 %.52599, 0              ; 3 uses
  %i.mg = select i1 %.not2691, i32 %.22588, i32 %.52599
  %i.mh = select i1 %.not2691, i32 %i.li, i32 %i.le
  %.not2692 = icmp eq i32 %i.mg, %i.mh
  br i1 %.not2692, label %.loopexit3167, label %bb.cd

.loopexit3167:                                    ; preds = %bb.cj, %bb.cb
  %i.mi = add nuw i32 %.02584, 2                  ; 2 uses
  %.not2696 = icmp eq i32 %i.ax, 0                ; 4 uses
  br i1 %i.ba, label %bb.ck, label %bb.cq

bb.ck:                                            ; preds = %.loopexit3167
  br i1 %.not2696, label %bb.cx, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.mj = zext i32 %.0.copyload.i2963 to i64
  %.val2818 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.mk = getelementptr inbounds nuw i8, ptr %.val2818, i64 %i.mj
  %.0.copyload.i3028 = load i32, ptr %i.mk, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3028) #8, !srcloc !14
  %i.ml = zext i32 %.0.copyload.i3028 to i64      ; 4 uses
  %.val2817 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.mm = getelementptr inbounds nuw i8, ptr %.val2817, i64 %i.ml
  %.0.copyload.i3029 = load i32, ptr %i.mm, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3029) #8, !srcloc !14
  %i.mn = icmp ugt i32 %.0.copyload.i3029, 150994943
  br i1 %i.mn, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %.val2816 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.mo = getelementptr inbounds nuw i8, ptr %.val2816, i64 %i.ml
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 12
  %.0.copyload.i3030 = load i32, ptr %i.mp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3030) #8, !srcloc !14
  %i.mq = add i32 %.0.copyload.i3028, 12
  %.val2923 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.mr = getelementptr inbounds nuw i8, ptr %.val2923, i64 %i.ml
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 23
  %.0.copyload.i3031 = load i8, ptr %i.ms, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3031) #8, !srcloc !34
  %i.mt = icmp slt i8 %.0.copyload.i3031, 0
  %i.mu = select i1 %i.mt, i32 %.0.copyload.i3030, i32 %i.mq
  br label %bb.cx

bb.cn:                                            ; preds = %bb.cl
  %i.mv = and i32 %.0.copyload.i3029, 251658240   ; 2 uses
  %i.mw = icmp eq i32 %i.mv, 67108864
  br i1 %i.mw, label %bb.cw, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.mx = add i32 %.0.copyload.i3028, 12
  %i.my = icmp eq i32 %i.mv, 134217728
  br i1 %i.my, label %bb.cx, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %.val2815 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.mz = getelementptr inbounds nuw i8, ptr %.val2815, i64 %i.ml
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  %.0.copyload.i3032 = load i32, ptr %i.na, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3032) #8, !srcloc !14
  %i.nb = zext i32 %.0.copyload.i3032 to i64      ; 2 uses
  %.val2814 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.nc = getelementptr inbounds nuw i8, ptr %.val2814, i64 %i.nb
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 12
  %.0.copyload.i3033 = load i32, ptr %i.nd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3033) #8, !srcloc !14
  %i.ne = add i32 %.0.copyload.i3032, 12
  %.val2922 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.nf = getelementptr inbounds nuw i8, ptr %.val2922, i64 %i.nb
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 23
  %.0.copyload.i3034 = load i8, ptr %i.ng, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3034) #8, !srcloc !34
  %i.nh = icmp slt i8 %.0.copyload.i3034, 0
  %i.ni = select i1 %i.nh, i32 %.0.copyload.i3033, i32 %i.ne
  br label %bb.cx

bb.cq:                                            ; preds = %.loopexit3167
  br i1 %.not2696, label %bb.dg, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.nj = zext i32 %.0.copyload.i2963 to i64
  %.val2813 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.nk = getelementptr inbounds nuw i8, ptr %.val2813, i64 %i.nj
  %.0.copyload.i3035 = load i32, ptr %i.nk, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3035) #8, !srcloc !14
  %i.nl = zext i32 %.0.copyload.i3035 to i64      ; 4 uses
  %.val2812 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.nm = getelementptr inbounds nuw i8, ptr %.val2812, i64 %i.nl
  %.0.copyload.i3036 = load i32, ptr %i.nm, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3036) #8, !srcloc !14
  %i.nn = icmp ugt i32 %.0.copyload.i3036, 150994943
  br i1 %i.nn, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %.val2811 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.no = getelementptr inbounds nuw i8, ptr %.val2811, i64 %i.nl
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 12
  %.0.copyload.i3037 = load i32, ptr %i.np, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3037) #8, !srcloc !14
  %i.nq = add i32 %.0.copyload.i3035, 12
  %.val2921 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.nr = getelementptr inbounds nuw i8, ptr %.val2921, i64 %i.nl
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 23
  %.0.copyload.i3038 = load i8, ptr %i.ns, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3038) #8, !srcloc !34
  %i.nt = icmp slt i8 %.0.copyload.i3038, 0
  %i.nu = select i1 %i.nt, i32 %.0.copyload.i3037, i32 %i.nq
  br label %bb.dg

bb.ct:                                            ; preds = %bb.cr
  %i.nv = and i32 %.0.copyload.i3036, 251658240   ; 2 uses
  %i.nw = icmp eq i32 %i.nv, 50331648
  br i1 %i.nw, label %bb.df, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.nx = add i32 %.0.copyload.i3035, 12
  %i.ny = icmp eq i32 %i.nv, 117440512
  br i1 %i.ny, label %bb.dg, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %.val2810 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.nz = getelementptr inbounds nuw i8, ptr %.val2810, i64 %i.nl
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  %.0.copyload.i3039 = load i32, ptr %i.oa, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3039) #8, !srcloc !14
  %i.ob = zext i32 %.0.copyload.i3039 to i64      ; 2 uses
  %.val2809 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.oc = getelementptr inbounds nuw i8, ptr %.val2809, i64 %i.ob
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 12
  %.0.copyload.i3040 = load i32, ptr %i.od, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3040) #8, !srcloc !14
  %i.oe = add i32 %.0.copyload.i3039, 12
  %.val2920 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.of = getelementptr inbounds nuw i8, ptr %.val2920, i64 %i.ob
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 23
  %.0.copyload.i3041 = load i8, ptr %i.og, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3041) #8, !srcloc !34
  %i.oh = icmp slt i8 %.0.copyload.i3041, 0
  %i.oi = select i1 %i.oh, i32 %.0.copyload.i3040, i32 %i.oe
  br label %bb.dg

bb.cw:                                            ; preds = %bb.cn
  %i.oj = add i32 %.0.copyload.i3028, 8
  br label %bb.cx

bb.cx:                                            ; preds = %bb.co, %bb.ck, %bb.cw, %bb.cp, %bb.cm
  %.8 = phi i32 [ %.0.copyload.i2963, %bb.ck ], [ %i.mu, %bb.cm ], [ %i.oj, %bb.cw ], [ %i.mx, %bb.co ], [ %i.ni, %bb.cp ]
  %i.ok = and i32 %.0.copyload.i2962, 1073741823  ; 2 uses
  %i.ol = add i32 %i.ok, %i.mi
  %i.om = add i32 %i.ol, %.8
  %i.on = zext i32 %i.om to i64
  %.val2919 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.oo = getelementptr inbounds nuw i8, ptr %.val2919, i64 %i.on
  %.0.copyload.i3042 = load i8, ptr %i.oo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3042) #8, !srcloc !34
  %i.op = sext i8 %.0.copyload.i3042 to i32       ; 2 uses
  %i.oq = add nsw i32 %i.op, -48
  %i.or = icmp ult i32 %i.oq, 10
  %i.os = shl nsw i32 %i.op, 12                   ; 2 uses
  %i.ot = add nsw i32 %i.os, -28672
  %i.ou = select i1 %i.or, i32 %i.os, i32 %i.ot
  br i1 %.not2696, label %bb.de, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ov = zext i32 %.0.copyload.i2963 to i64
  %.val2808 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ow = getelementptr inbounds nuw i8, ptr %.val2808, i64 %i.ov
  %.0.copyload.i3043 = load i32, ptr %i.ow, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3043) #8, !srcloc !14
  %i.ox = zext i32 %.0.copyload.i3043 to i64      ; 4 uses
  %.val2807 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.oy = getelementptr inbounds nuw i8, ptr %.val2807, i64 %i.ox
  %.0.copyload.i3044 = load i32, ptr %i.oy, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3044) #8, !srcloc !14
  %i.oz = icmp ugt i32 %.0.copyload.i3044, 150994943
  br i1 %i.oz, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %.val2806 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.pa = getelementptr inbounds nuw i8, ptr %.val2806, i64 %i.ox
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 12
  %.0.copyload.i3045 = load i32, ptr %i.pb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3045) #8, !srcloc !14
  %i.pc = add i32 %.0.copyload.i3043, 12
  %.val2918 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.pd = getelementptr inbounds nuw i8, ptr %.val2918, i64 %i.ox
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 23
  %.0.copyload.i3046 = load i8, ptr %i.pe, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3046) #8, !srcloc !34
  %i.pf = icmp slt i8 %.0.copyload.i3046, 0
  %i.pg = select i1 %i.pf, i32 %.0.copyload.i3045, i32 %i.pc
  br label %bb.de

bb.da:                                            ; preds = %bb.cy
  %i.ph = and i32 %.0.copyload.i3044, 251658240
  switch i32 %i.ph, label %bb.dd [
    i32 67108864, label %bb.dc
    i32 134217728, label %bb.db
  ]

bb.db:                                            ; preds = %bb.da
  %i.pi = add i32 %.0.copyload.i3043, 12
  br label %bb.de

bb.dc:                                            ; preds = %bb.da
  %i.pj = add i32 %.0.copyload.i3043, 8
  br label %bb.de

bb.dd:                                            ; preds = %bb.da
  %.val2805 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.pk = getelementptr inbounds nuw i8, ptr %.val2805, i64 %i.ox
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  %.0.copyload.i3047 = load i32, ptr %i.pl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3047) #8, !srcloc !14
  %i.pm = zext i32 %.0.copyload.i3047 to i64      ; 2 uses
  %.val2804 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.pn = getelementptr inbounds nuw i8, ptr %.val2804, i64 %i.pm
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 12
  %.0.copyload.i3048 = load i32, ptr %i.po, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3048) #8, !srcloc !14
  %i.pp = add i32 %.0.copyload.i3047, 12
  %.val2917 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.pq = getelementptr inbounds nuw i8, ptr %.val2917, i64 %i.pm
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 23
  %.0.copyload.i3049 = load i8, ptr %i.pr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3049) #8, !srcloc !34
  %i.ps = icmp slt i8 %.0.copyload.i3049, 0
  %i.pt = select i1 %i.ps, i32 %.0.copyload.i3048, i32 %i.pp
  br label %bb.de

bb.de:                                            ; preds = %bb.cx, %bb.dd, %bb.dc, %bb.db, %bb.cz
  %.9 = phi i32 [ %.0.copyload.i2963, %bb.cx ], [ %i.pg, %bb.cz ], [ %i.pt, %bb.dd ], [ %i.pi, %bb.db ], [ %i.pj, %bb.dc ]
  %i.pu = add nuw i32 %.02584, 3
  %i.pv = add i32 %i.pu, %i.ok
  %i.pw = add i32 %i.pv, %.9
  %i.px = zext i32 %i.pw to i64
  %.val2916 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.py = getelementptr inbounds nuw i8, ptr %.val2916, i64 %i.px
  %.0.copyload.i3050 = load i8, ptr %i.py, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3050) #8, !srcloc !34
  %i.pz = sext i8 %.0.copyload.i3050 to i32
  br label %bb.do

bb.df:                                            ; preds = %bb.ct
  %i.qa = add i32 %.0.copyload.i3035, 8
  br label %bb.dg

bb.dg:                                            ; preds = %bb.cu, %bb.cq, %bb.df, %bb.cv, %bb.cs
  %.10 = phi i32 [ %.0.copyload.i2963, %bb.cq ], [ %i.nu, %bb.cs ], [ %i.qa, %bb.df ], [ %i.nx, %bb.cu ], [ %i.oi, %bb.cv ]
  %i.qb = shl nuw i32 %.0.copyload.i2962, 1
  %i.qc = and i32 %i.qb, 2147483646               ; 2 uses
  %i.qd = shl i32 %i.mi, 1
  %i.qe = add i32 %i.qc, %i.qd
  %i.qf = add i32 %i.qe, %.10
  %i.qg = zext i32 %i.qf to i64
  %.val2950 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.qh = getelementptr inbounds nuw i8, ptr %.val2950, i64 %i.qg
  %.0.copyload.i3051 = load i16, ptr %i.qh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i3051) #8, !srcloc !37
  %i.qi = zext i16 %.0.copyload.i3051 to i32      ; 2 uses
  %i.qj = shl nuw nsw i32 %i.qi, 12               ; 2 uses
  %i.qk = add nsw i32 %i.qj, -28672
  %i.ql = add nuw nsw i32 %i.qi, 65488
  %i.qm = and i32 %i.ql, 65534
  %i.qn = icmp samesign ult i32 %i.qm, 10
  %i.qo = select i1 %i.qn, i32 %i.qj, i32 %i.qk
  br i1 %.not2696, label %bb.dn, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.qp = zext i32 %.0.copyload.i2963 to i64
  %.val2803 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.qq = getelementptr inbounds nuw i8, ptr %.val2803, i64 %i.qp
  %.0.copyload.i3052 = load i32, ptr %i.qq, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3052) #8, !srcloc !14
  %i.qr = zext i32 %.0.copyload.i3052 to i64      ; 4 uses
  %.val2802 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.qs = getelementptr inbounds nuw i8, ptr %.val2802, i64 %i.qr
  %.0.copyload.i3053 = load i32, ptr %i.qs, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3053) #8, !srcloc !14
  %i.qt = icmp ugt i32 %.0.copyload.i3053, 150994943
  br i1 %i.qt, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %.val2801 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.qu = getelementptr inbounds nuw i8, ptr %.val2801, i64 %i.qr
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 12
  %.0.copyload.i3054 = load i32, ptr %i.qv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3054) #8, !srcloc !14
  %i.qw = add i32 %.0.copyload.i3052, 12
  %.val2915 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.qx = getelementptr inbounds nuw i8, ptr %.val2915, i64 %i.qr
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 23
  %.0.copyload.i3055 = load i8, ptr %i.qy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3055) #8, !srcloc !34
  %i.qz = icmp slt i8 %.0.copyload.i3055, 0
  %i.ra = select i1 %i.qz, i32 %.0.copyload.i3054, i32 %i.qw
  br label %bb.dn

bb.dj:                                            ; preds = %bb.dh
  %i.rb = and i32 %.0.copyload.i3053, 251658240
  switch i32 %i.rb, label %bb.dm [
    i32 50331648, label %bb.dl
    i32 117440512, label %bb.dk
  ]

bb.dk:                                            ; preds = %bb.dj
  %i.rc = add i32 %.0.copyload.i3052, 12
  br label %bb.dn

bb.dl:                                            ; preds = %bb.dj
  %i.rd = add i32 %.0.copyload.i3052, 8
  br label %bb.dn

bb.dm:                                            ; preds = %bb.dj
  %.val2800 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.re = getelementptr inbounds nuw i8, ptr %.val2800, i64 %i.qr
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 8
  %.0.copyload.i3056 = load i32, ptr %i.rf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3056) #8, !srcloc !14
  %i.rg = zext i32 %.0.copyload.i3056 to i64      ; 2 uses
  %.val2799 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.rh = getelementptr inbounds nuw i8, ptr %.val2799, i64 %i.rg
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 12
  %.0.copyload.i3057 = load i32, ptr %i.ri, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3057) #8, !srcloc !14
  %i.rj = add i32 %.0.copyload.i3056, 12
  %.val2914 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.rk = getelementptr inbounds nuw i8, ptr %.val2914, i64 %i.rg
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 23
  %.0.copyload.i3058 = load i8, ptr %i.rl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3058) #8, !srcloc !34
  %i.rm = icmp slt i8 %.0.copyload.i3058, 0
  %i.rn = select i1 %i.rm, i32 %.0.copyload.i3057, i32 %i.rj
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dg, %bb.dm, %bb.dl, %bb.dk, %bb.di
  %.11 = phi i32 [ %.0.copyload.i2963, %bb.dg ], [ %i.ra, %bb.di ], [ %i.rn, %bb.dm ], [ %i.rc, %bb.dk ], [ %i.rd, %bb.dl ]
  %i.ro = add i32 %i.is, 6
  %i.rp = add i32 %i.ro, %i.qc
  %i.rq = add i32 %i.rp, %.11
  %i.rr = zext i32 %i.rq to i64
  %.val2949 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.rs = getelementptr inbounds nuw i8, ptr %.val2949, i64 %i.rr
  %.0.copyload.i3059 = load i16, ptr %i.rs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i3059) #8, !srcloc !37
  %i.rt = zext i16 %.0.copyload.i3059 to i32
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.de
  %.32589 = phi i32 [ %i.ou, %bb.de ], [ %i.qo, %bb.dn ]
  %.12 = phi i32 [ %i.pz, %bb.de ], [ %i.rt, %bb.dn ] ; 3 uses
  %i.ru = add nsw i32 %.12, 65488
  %i.rv = and i32 %i.ru, 65534
  %i.rw = icmp samesign ult i32 %i.rv, 10
  %i.rx = or i32 %.12, 32
  %i.ry = add nsw i32 %.12, 208
  %i.rz = add nsw i32 %i.rx, 169
  %i.sa = select i1 %i.rw, i32 %i.ry, i32 %i.rz
  %i.sb = shl nsw i32 %i.sa, 8
  %i.sc = or i32 %i.sb, %.32589
  %i.sd = add nuw i32 %.02584, 4                  ; 2 uses
  %.not2702 = icmp eq i32 %i.ax, 0                ; 2 uses
  br i1 %i.ba, label %bb.dp, label %bb.dx

bb.dp:                                            ; preds = %bb.do
  br i1 %.not2702, label %bb.dw, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.se = zext i32 %.0.copyload.i2963 to i64
  %.val2798 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.sf = getelementptr inbounds nuw i8, ptr %.val2798, i64 %i.se
  %.0.copyload.i3060 = load i32, ptr %i.sf, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3060) #8, !srcloc !14
  %i.sg = zext i32 %.0.copyload.i3060 to i64      ; 4 uses
  %.val2797 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.sh = getelementptr inbounds nuw i8, ptr %.val2797, i64 %i.sg
  %.0.copyload.i3061 = load i32, ptr %i.sh, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3061) #8, !srcloc !14
  %i.si = icmp ugt i32 %.0.copyload.i3061, 150994943
  br i1 %i.si, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %.val2796 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.sj = getelementptr inbounds nuw i8, ptr %.val2796, i64 %i.sg
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 12
  %.0.copyload.i3062 = load i32, ptr %i.sk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3062) #8, !srcloc !14
  %i.sl = add i32 %.0.copyload.i3060, 12
  %.val2913 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.sm = getelementptr inbounds nuw i8, ptr %.val2913, i64 %i.sg
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 23
  %.0.copyload.i3063 = load i8, ptr %i.sn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3063) #8, !srcloc !34
  %i.so = icmp slt i8 %.0.copyload.i3063, 0
  %i.sp = select i1 %i.so, i32 %.0.copyload.i3062, i32 %i.sl
  br label %bb.dw

bb.ds:                                            ; preds = %bb.dq
  %i.sq = and i32 %.0.copyload.i3061, 251658240
  switch i32 %i.sq, label %bb.dv [
    i32 67108864, label %bb.du
    i32 134217728, label %bb.dt
  ]

bb.dt:                                            ; preds = %bb.ds
  %i.sr = add i32 %.0.copyload.i3060, 12
  br label %bb.dw

bb.du:                                            ; preds = %bb.ds
  %i.ss = add i32 %.0.copyload.i3060, 8
  br label %bb.dw

bb.dv:                                            ; preds = %bb.ds
  %.val2795 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.st = getelementptr inbounds nuw i8, ptr %.val2795, i64 %i.sg
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 8
  %.0.copyload.i3064 = load i32, ptr %i.su, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3064) #8, !srcloc !14
  %i.sv = zext i32 %.0.copyload.i3064 to i64      ; 2 uses
  %.val2794 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.sw = getelementptr inbounds nuw i8, ptr %.val2794, i64 %i.sv
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 12
  %.0.copyload.i3065 = load i32, ptr %i.sx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3065) #8, !srcloc !14
  %i.sy = add i32 %.0.copyload.i3064, 12
  %.val2912 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.sz = getelementptr inbounds nuw i8, ptr %.val2912, i64 %i.sv
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 23
  %.0.copyload.i3066 = load i8, ptr %i.ta, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3066) #8, !srcloc !34
  %i.tb = icmp slt i8 %.0.copyload.i3066, 0
  %i.tc = select i1 %i.tb, i32 %.0.copyload.i3065, i32 %i.sy
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dp, %bb.dv, %bb.du, %bb.dt, %bb.dr
  %.0 = phi i32 [ %.0.copyload.i2963, %bb.dp ], [ %i.sp, %bb.dr ], [ %i.tc, %bb.dv ], [ %i.sr, %bb.dt ], [ %i.ss, %bb.du ]
  %i.td = and i32 %.0.copyload.i2962, 1073741823
  %i.te = add i32 %i.td, %i.sd
  %i.tf = add i32 %i.te, %.0
  %i.tg = zext i32 %i.tf to i64
  %.val2911 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.th = getelementptr inbounds nuw i8, ptr %.val2911, i64 %i.tg
  %.0.copyload.i3067 = load i8, ptr %i.th, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3067) #8, !srcloc !34
  %i.ti = sext i8 %.0.copyload.i3067 to i32
  br label %bb.ef

bb.dx:                                            ; preds = %bb.do
  br i1 %.not2702, label %bb.ee, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.tj = zext i32 %.0.copyload.i2963 to i64
  %.val2793 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.tk = getelementptr inbounds nuw i8, ptr %.val2793, i64 %i.tj
  %.0.copyload.i3068 = load i32, ptr %i.tk, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3068) #8, !srcloc !14
  %i.tl = zext i32 %.0.copyload.i3068 to i64      ; 4 uses
  %.val2792 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.tm = getelementptr inbounds nuw i8, ptr %.val2792, i64 %i.tl
  %.0.copyload.i3069 = load i32, ptr %i.tm, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3069) #8, !srcloc !14
  %i.tn = icmp ugt i32 %.0.copyload.i3069, 150994943
  br i1 %i.tn, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %.val2791 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.to = getelementptr inbounds nuw i8, ptr %.val2791, i64 %i.tl
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 12
  %.0.copyload.i3070 = load i32, ptr %i.tp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3070) #8, !srcloc !14
  %i.tq = add i32 %.0.copyload.i3068, 12
  %.val2910 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.tr = getelementptr inbounds nuw i8, ptr %.val2910, i64 %i.tl
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 23
  %.0.copyload.i3071 = load i8, ptr %i.ts, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3071) #8, !srcloc !34
  %i.tt = icmp slt i8 %.0.copyload.i3071, 0
  %i.tu = select i1 %i.tt, i32 %.0.copyload.i3070, i32 %i.tq
  br label %bb.ee

bb.ea:                                            ; preds = %bb.dy
  %i.tv = and i32 %.0.copyload.i3069, 251658240
  switch i32 %i.tv, label %bb.ed [
    i32 50331648, label %bb.ec
    i32 117440512, label %bb.eb
  ]

bb.eb:                                            ; preds = %bb.ea
  %i.tw = add i32 %.0.copyload.i3068, 12
  br label %bb.ee

bb.ec:                                            ; preds = %bb.ea
  %i.tx = add i32 %.0.copyload.i3068, 8
  br label %bb.ee

bb.ed:                                            ; preds = %bb.ea
  %.val2790 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ty = getelementptr inbounds nuw i8, ptr %.val2790, i64 %i.tl
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 8
  %.0.copyload.i3072 = load i32, ptr %i.tz, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3072) #8, !srcloc !14
  %i.ua = zext i32 %.0.copyload.i3072 to i64      ; 2 uses
  %.val2789 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ub = getelementptr inbounds nuw i8, ptr %.val2789, i64 %i.ua
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 12
  %.0.copyload.i3073 = load i32, ptr %i.uc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3073) #8, !srcloc !14
  %i.ud = add i32 %.0.copyload.i3072, 12
  %.val2909 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ue = getelementptr inbounds nuw i8, ptr %.val2909, i64 %i.ua
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 23
  %.0.copyload.i3074 = load i8, ptr %i.uf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3074) #8, !srcloc !34
  %i.ug = icmp slt i8 %.0.copyload.i3074, 0
  %i.uh = select i1 %i.ug, i32 %.0.copyload.i3073, i32 %i.ud
  br label %bb.ee

bb.ee:                                            ; preds = %bb.dx, %bb.ed, %bb.ec, %bb.eb, %bb.dz
  %.02572 = phi i32 [ %.0.copyload.i2963, %bb.dx ], [ %i.tu, %bb.dz ], [ %i.uh, %bb.ed ], [ %i.tw, %bb.eb ], [ %i.tx, %bb.ec ]
  %i.ui = and i32 %.0.copyload.i2962, 1073741823
  %i.uj = add i32 %i.sd, %i.ui
  %i.uk = shl i32 %i.uj, 1
  %i.ul = add i32 %i.uk, %.02572
  %i.um = zext i32 %i.ul to i64
  %.val2948 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.un = getelementptr inbounds nuw i8, ptr %.val2948, i64 %i.um
  %.0.copyload.i3075 = load i16, ptr %i.un, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i3075) #8, !srcloc !37
  %i.uo = zext i16 %.0.copyload.i3075 to i32
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.dw
  %.1 = phi i32 [ %i.ti, %bb.dw ], [ %i.uo, %bb.ee ] ; 3 uses
  %i.up = add nsw i32 %.1, 65488
  %i.uq = and i32 %i.up, 65534
  %i.ur = icmp samesign ult i32 %i.uq, 10
  %i.us = or i32 %.1, 32
  %i.ut = add nsw i32 %.1, 4048
  %i.uu = add nsw i32 %i.us, 4009
  %i.uv = select i1 %i.ur, i32 %i.ut, i32 %i.uu
  %i.uw = shl nsw i32 %i.uv, 4
  %i.ux = or i32 %i.sc, %i.uw
  %i.uy = add nuw i32 %.02584, 5                  ; 3 uses
  %.not2708 = icmp eq i32 %i.ax, 0                ; 2 uses
  br i1 %i.ba, label %bb.eg, label %bb.eo

bb.eg:                                            ; preds = %bb.ef
  br i1 %.not2708, label %bb.en, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.uz = zext i32 %.0.copyload.i2963 to i64
  %.val2788 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.va = getelementptr inbounds nuw i8, ptr %.val2788, i64 %i.uz
  %.0.copyload.i3076 = load i32, ptr %i.va, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3076) #8, !srcloc !14
  %i.vb = zext i32 %.0.copyload.i3076 to i64      ; 4 uses
  %.val2787 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.vc = getelementptr inbounds nuw i8, ptr %.val2787, i64 %i.vb
  %.0.copyload.i3077 = load i32, ptr %i.vc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3077) #8, !srcloc !14
  %i.vd = icmp ugt i32 %.0.copyload.i3077, 150994943
  br i1 %i.vd, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %.val2786 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ve = getelementptr inbounds nuw i8, ptr %.val2786, i64 %i.vb
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 12
  %.0.copyload.i3078 = load i32, ptr %i.vf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3078) #8, !srcloc !14
  %i.vg = add i32 %.0.copyload.i3076, 12
  %.val2908 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.vh = getelementptr inbounds nuw i8, ptr %.val2908, i64 %i.vb
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 23
  %.0.copyload.i3079 = load i8, ptr %i.vi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3079) #8, !srcloc !34
  %i.vj = icmp slt i8 %.0.copyload.i3079, 0
  %i.vk = select i1 %i.vj, i32 %.0.copyload.i3078, i32 %i.vg
  br label %bb.en

bb.ej:                                            ; preds = %bb.eh
  %i.vl = and i32 %.0.copyload.i3077, 251658240
  switch i32 %i.vl, label %bb.em [
    i32 67108864, label %bb.el
    i32 134217728, label %bb.ek
  ]

bb.ek:                                            ; preds = %bb.ej
  %i.vm = add i32 %.0.copyload.i3076, 12
  br label %bb.en

bb.el:                                            ; preds = %bb.ej
  %i.vn = add i32 %.0.copyload.i3076, 8
  br label %bb.en

bb.em:                                            ; preds = %bb.ej
  %.val2785 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.vo = getelementptr inbounds nuw i8, ptr %.val2785, i64 %i.vb
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 8
  %.0.copyload.i3080 = load i32, ptr %i.vp, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3080) #8, !srcloc !14
  %i.vq = zext i32 %.0.copyload.i3080 to i64      ; 2 uses
  %.val2784 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.vr = getelementptr inbounds nuw i8, ptr %.val2784, i64 %i.vq
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 12
  %.0.copyload.i3081 = load i32, ptr %i.vs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3081) #8, !srcloc !14
  %i.vt = add i32 %.0.copyload.i3080, 12
  %.val2907 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.vu = getelementptr inbounds nuw i8, ptr %.val2907, i64 %i.vq
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 23
  %.0.copyload.i3082 = load i8, ptr %i.vv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3082) #8, !srcloc !34
  %i.vw = icmp slt i8 %.0.copyload.i3082, 0
  %i.vx = select i1 %i.vw, i32 %.0.copyload.i3081, i32 %i.vt
  br label %bb.en

bb.en:                                            ; preds = %bb.eg, %bb.em, %bb.el, %bb.ek, %bb.ei
  %.02602 = phi i32 [ %.0.copyload.i2963, %bb.eg ], [ %i.vk, %bb.ei ], [ %i.vx, %bb.em ], [ %i.vm, %bb.ek ], [ %i.vn, %bb.el ]
  %i.vy = and i32 %.0.copyload.i2962, 1073741823
  %i.vz = add i32 %i.vy, %i.uy
  %i.wa = add i32 %i.vz, %.02602
  %i.wb = zext i32 %i.wa to i64
  %.val2906 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.wc = getelementptr inbounds nuw i8, ptr %.val2906, i64 %i.wb
  %.0.copyload.i3083 = load i8, ptr %i.wc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3083) #8, !srcloc !34
  %i.wd = sext i8 %.0.copyload.i3083 to i32
  br label %bb.ew

bb.eo:                                            ; preds = %bb.ef
  br i1 %.not2708, label %bb.ev, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.we = zext i32 %.0.copyload.i2963 to i64
  %.val2783 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.wf = getelementptr inbounds nuw i8, ptr %.val2783, i64 %i.we
  %.0.copyload.i3084 = load i32, ptr %i.wf, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3084) #8, !srcloc !14
  %i.wg = zext i32 %.0.copyload.i3084 to i64      ; 4 uses
  %.val2782 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.wh = getelementptr inbounds nuw i8, ptr %.val2782, i64 %i.wg
  %.0.copyload.i3085 = load i32, ptr %i.wh, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3085) #8, !srcloc !14
  %i.wi = icmp ugt i32 %.0.copyload.i3085, 150994943
  br i1 %i.wi, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %.val2781 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.wj = getelementptr inbounds nuw i8, ptr %.val2781, i64 %i.wg
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 12
  %.0.copyload.i3086 = load i32, ptr %i.wk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3086) #8, !srcloc !14
  %i.wl = add i32 %.0.copyload.i3084, 12
  %.val2905 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.wm = getelementptr inbounds nuw i8, ptr %.val2905, i64 %i.wg
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 23
  %.0.copyload.i3087 = load i8, ptr %i.wn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3087) #8, !srcloc !34
  %i.wo = icmp slt i8 %.0.copyload.i3087, 0
  %i.wp = select i1 %i.wo, i32 %.0.copyload.i3086, i32 %i.wl
  br label %bb.ev

bb.er:                                            ; preds = %bb.ep
  %i.wq = and i32 %.0.copyload.i3085, 251658240
  switch i32 %i.wq, label %bb.eu [
    i32 50331648, label %bb.et
    i32 117440512, label %bb.es
  ]

bb.es:                                            ; preds = %bb.er
  %i.wr = add i32 %.0.copyload.i3084, 12
  br label %bb.ev

bb.et:                                            ; preds = %bb.er
  %i.ws = add i32 %.0.copyload.i3084, 8
  br label %bb.ev

bb.eu:                                            ; preds = %bb.er
  %.val2780 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.wt = getelementptr inbounds nuw i8, ptr %.val2780, i64 %i.wg
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 8
  %.0.copyload.i3088 = load i32, ptr %i.wu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3088) #8, !srcloc !14
  %i.wv = zext i32 %.0.copyload.i3088 to i64      ; 2 uses
  %.val2779 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ww = getelementptr inbounds nuw i8, ptr %.val2779, i64 %i.wv
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 12
  %.0.copyload.i3089 = load i32, ptr %i.wx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3089) #8, !srcloc !14
  %i.wy = add i32 %.0.copyload.i3088, 12
  %.val2904 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.wz = getelementptr inbounds nuw i8, ptr %.val2904, i64 %i.wv
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 23
  %.0.copyload.i3090 = load i8, ptr %i.xa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3090) #8, !srcloc !34
  %i.xb = icmp slt i8 %.0.copyload.i3090, 0
  %i.xc = select i1 %i.xb, i32 %.0.copyload.i3089, i32 %i.wy
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eo, %bb.eu, %bb.et, %bb.es, %bb.eq
  %.12603 = phi i32 [ %.0.copyload.i2963, %bb.eo ], [ %i.wp, %bb.eq ], [ %i.xc, %bb.eu ], [ %i.wr, %bb.es ], [ %i.ws, %bb.et ]
  %i.xd = and i32 %.0.copyload.i2962, 1073741823
  %i.xe = add i32 %i.uy, %i.xd
  %i.xf = shl i32 %i.xe, 1
  %i.xg = add i32 %i.xf, %.12603
  %i.xh = zext i32 %i.xg to i64
  %.val2947 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.xi = getelementptr inbounds nuw i8, ptr %.val2947, i64 %i.xh
  %.0.copyload.i3091 = load i16, ptr %i.xi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i3091) #8, !srcloc !37
  %i.xj = zext i16 %.0.copyload.i3091 to i32
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.en
  %.2 = phi i32 [ %i.wd, %bb.en ], [ %i.xj, %bb.ev ] ; 3 uses
  %i.xk = add nsw i32 %.2, 65488
  %i.xl = and i32 %i.xk, 65534
  %i.xm = icmp samesign ult i32 %i.xl, 10
  %i.xn = or i32 %.2, 32
  %i.xo = add nsw i32 %.2, -48
  %i.xp = add nsw i32 %i.xn, -87
  %i.xq = select i1 %i.xm, i32 %i.xo, i32 %i.xp
  %i.xr = or i32 %i.ux, %i.xq
  br label %bb.hq

.loopexit:                                        ; preds = %bb.ch, %bb.cf, %bb.bg, %bb.ar, %bb.ac
  %i.xs = add nuw i32 %.02584, 3
  %i.xt = icmp ugt i32 %i.xs, %i.ap
  br i1 %i.xt, label %bb.hq, label %bb.ex

bb.ex:                                            ; preds = %.loopexit
  %i.xu = add nuw i32 %.02584, 1                  ; 4 uses
  %.not2711 = icmp eq i32 %i.ax, 0                ; 2 uses
  br i1 %i.ba, label %bb.ey, label %bb.fb

bb.ey:                                            ; preds = %bb.ex
  br i1 %.not2711, label %bb.fi, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.xv = zext i32 %.0.copyload.i2963 to i64
  %.val2778 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.xw = getelementptr inbounds nuw i8, ptr %.val2778, i64 %i.xv
  %.0.copyload.i3092 = load i32, ptr %i.xw, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3092) #8, !srcloc !14
  %i.xx = zext i32 %.0.copyload.i3092 to i64      ; 4 uses
  %.val2777 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.xy = getelementptr inbounds nuw i8, ptr %.val2777, i64 %i.xx
  %.0.copyload.i3093 = load i32, ptr %i.xy, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3093) #8, !srcloc !14
  %i.xz = icmp ult i32 %.0.copyload.i3093, 150994944
  br i1 %i.xz, label %bb.fe, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %.val2776 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ya = getelementptr inbounds nuw i8, ptr %.val2776, i64 %i.xx
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 12
  %.0.copyload.i3094 = load i32, ptr %i.yb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3094) #8, !srcloc !14
  %i.yc = add i32 %.0.copyload.i3092, 12
  %.val2903 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.yd = getelementptr inbounds nuw i8, ptr %.val2903, i64 %i.xx
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 23
  %.0.copyload.i3095 = load i8, ptr %i.ye, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3095) #8, !srcloc !34
  %i.yf = icmp slt i8 %.0.copyload.i3095, 0
  %i.yg = select i1 %i.yf, i32 %.0.copyload.i3094, i32 %i.yc
  br label %bb.fi

bb.fb:                                            ; preds = %bb.ex
  br i1 %.not2711, label %bb.fn, label %bb.fc

bb.fc:                                            ; preds = %bb.at, %bb.fb
  %.425903185 = phi i32 [ %i.xu, %bb.fb ], [ %i.dp, %bb.at ] ; 4 uses
  %i.yh = zext i32 %.0.copyload.i2963 to i64
  %.val2775 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.yi = getelementptr inbounds nuw i8, ptr %.val2775, i64 %i.yh
  %.0.copyload.i3096 = load i32, ptr %i.yi, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3096) #8, !srcloc !14
  %i.yj = zext i32 %.0.copyload.i3096 to i64      ; 4 uses
  %.val2774 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.yk = getelementptr inbounds nuw i8, ptr %.val2774, i64 %i.yj
  %.0.copyload.i3097 = load i32, ptr %i.yk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3097) #8, !srcloc !14
  %i.yl = icmp ult i32 %.0.copyload.i3097, 150994944
  br i1 %i.yl, label %bb.fj, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %.val2773 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ym = getelementptr inbounds nuw i8, ptr %.val2773, i64 %i.yj
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 12
  %.0.copyload.i3098 = load i32, ptr %i.yn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3098) #8, !srcloc !14
  %i.yo = add i32 %.0.copyload.i3096, 12
  %.val2902 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.yp = getelementptr inbounds nuw i8, ptr %.val2902, i64 %i.yj
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 23
  %.0.copyload.i3099 = load i8, ptr %i.yq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3099) #8, !srcloc !34
  %i.yr = icmp slt i8 %.0.copyload.i3099, 0
  %i.ys = select i1 %i.yr, i32 %.0.copyload.i3098, i32 %i.yo
  br label %bb.fn

bb.fe:                                            ; preds = %bb.ez
  %i.yt = and i32 %.0.copyload.i3093, 251658240
  switch i32 %i.yt, label %bb.fh [
    i32 67108864, label %bb.fg
    i32 134217728, label %bb.ff
  ]

bb.ff:                                            ; preds = %bb.fe
  %i.yu = add i32 %.0.copyload.i3092, 12
  br label %bb.fi

bb.fg:                                            ; preds = %bb.fe
  %i.yv = add i32 %.0.copyload.i3092, 8
  br label %bb.fi

bb.fh:                                            ; preds = %bb.fe
  %.val2772 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.yw = getelementptr inbounds nuw i8, ptr %.val2772, i64 %i.xx
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 8
  %.0.copyload.i3100 = load i32, ptr %i.yx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3100) #8, !srcloc !14
  %i.yy = zext i32 %.0.copyload.i3100 to i64      ; 2 uses
  %.val2771 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.yz = getelementptr inbounds nuw i8, ptr %.val2771, i64 %i.yy
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 12
  %.0.copyload.i3101 = load i32, ptr %i.za, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3101) #8, !srcloc !14
  %i.zb = add i32 %.0.copyload.i3100, 12
  %.val2901 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.zc = getelementptr inbounds nuw i8, ptr %.val2901, i64 %i.yy
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 23
  %.0.copyload.i3102 = load i8, ptr %i.zd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3102) #8, !srcloc !34
  %i.ze = icmp slt i8 %.0.copyload.i3102, 0
  %i.zf = select i1 %i.ze, i32 %.0.copyload.i3101, i32 %i.zb
  br label %bb.fi

bb.fi:                                            ; preds = %bb.ey, %bb.fh, %bb.fg, %bb.ff, %bb.fa
  %.13 = phi i32 [ %.0.copyload.i2963, %bb.ey ], [ %i.zf, %bb.fh ], [ %i.yu, %bb.ff ], [ %i.yv, %bb.fg ], [ %i.yg, %bb.fa ]
  %i.zg = and i32 %.0.copyload.i2962, 1073741823
  %i.zh = add i32 %i.zg, %i.xu
  %i.zi = add i32 %i.zh, %.13
  %i.zj = zext i32 %i.zi to i64
  %.val2900 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.zk = getelementptr inbounds nuw i8, ptr %.val2900, i64 %i.zj
  %.0.copyload.i3103 = load i8, ptr %i.zk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3103) #8, !srcloc !34
  %i.zl = sext i8 %.0.copyload.i3103 to i32
  br label %bb.fo

bb.fj:                                            ; preds = %bb.fc
  %i.zm = and i32 %.0.copyload.i3097, 251658240
  switch i32 %i.zm, label %bb.fm [
    i32 50331648, label %bb.fl
    i32 117440512, label %bb.fk
  ]

bb.fk:                                            ; preds = %bb.fj
  %i.zn = add i32 %.0.copyload.i3096, 12
  br label %bb.fn

bb.fl:                                            ; preds = %bb.fj
  %i.zo = add i32 %.0.copyload.i3096, 8
  br label %bb.fn

bb.fm:                                            ; preds = %bb.fj
  %.val2770 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.zp = getelementptr inbounds nuw i8, ptr %.val2770, i64 %i.yj
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 8
  %.0.copyload.i3104 = load i32, ptr %i.zq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3104) #8, !srcloc !14
  %i.zr = zext i32 %.0.copyload.i3104 to i64      ; 2 uses
  %.val2769 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.zs = getelementptr inbounds nuw i8, ptr %.val2769, i64 %i.zr
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 12
  %.0.copyload.i3105 = load i32, ptr %i.zt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3105) #8, !srcloc !14
  %i.zu = add i32 %.0.copyload.i3104, 12
  %.val2899 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.zv = getelementptr inbounds nuw i8, ptr %.val2899, i64 %i.zr
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 23
  %.0.copyload.i3106 = load i8, ptr %i.zw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3106) #8, !srcloc !34
  %i.zx = icmp slt i8 %.0.copyload.i3106, 0
  %i.zy = select i1 %i.zx, i32 %.0.copyload.i3105, i32 %i.zu
  br label %bb.fn

bb.fn:                                            ; preds = %bb.bh, %bb.fb, %bb.fm, %bb.fl, %bb.fk, %bb.fd
  %.425903181 = phi i32 [ %i.xu, %bb.fb ], [ %.425903185, %bb.fm ], [ %.425903185, %bb.fk ], [ %.425903185, %bb.fl ], [ %.425903185, %bb.fd ], [ %i.dp, %bb.bh ] ; 2 uses
  %.14 = phi i32 [ %.0.copyload.i2963, %bb.fb ], [ %i.zy, %bb.fm ], [ %i.zn, %bb.fk ], [ %i.zo, %bb.fl ], [ %i.ys, %bb.fd ], [ %.0.copyload.i2963, %bb.bh ]
  %i.zz = and i32 %.0.copyload.i2962, 1073741823
  %i.aaa = add i32 %.425903181, %i.zz
  %i.aab = shl i32 %i.aaa, 1
  %i.aac = add i32 %i.aab, %.14
  %i.aad = zext i32 %i.aac to i64
  %.val2946 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aae = getelementptr inbounds nuw i8, ptr %.val2946, i64 %i.aad
  %.0.copyload.i3107 = load i16, ptr %i.aae, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i3107) #8, !srcloc !37
  %i.aaf = zext i16 %.0.copyload.i3107 to i32
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.fi
  %.52591 = phi i32 [ %.425903181, %bb.fn ], [ %i.xu, %bb.fi ] ; 2 uses
  %.15 = phi i32 [ %i.aaf, %bb.fn ], [ %i.zl, %bb.fi ] ; 2 uses
  %i.aag = add nsw i32 %.15, 65488
  %i.aah = and i32 %i.aag, 65534
  %i.aai = icmp samesign ugt i32 %i.aah, 9
  br i1 %i.aai, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  %i.aaj = or i32 %.15, 32
  %i.aak = add nsw i32 %i.aaj, 65439
  %i.aal = and i32 %i.aak, 65534
  %i.aam = icmp samesign ugt i32 %i.aal, 5
  br i1 %i.aam, label %bb.hq, label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  %i.aan = add nuw i32 %.02584, 2                 ; 5 uses
  %.not2720 = icmp eq i32 %i.ax, 0                ; 4 uses
  br i1 %i.ba, label %bb.fr, label %bb.fx

bb.fr:                                            ; preds = %bb.fq
  br i1 %.not2720, label %bb.ge, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.aao = zext i32 %.0.copyload.i2963 to i64
  %.val2768 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aap = getelementptr inbounds nuw i8, ptr %.val2768, i64 %i.aao
  %.0.copyload.i3108 = load i32, ptr %i.aap, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3108) #8, !srcloc !14
  %i.aaq = zext i32 %.0.copyload.i3108 to i64     ; 4 uses
  %.val2767 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aar = getelementptr inbounds nuw i8, ptr %.val2767, i64 %i.aaq
  %.0.copyload.i3109 = load i32, ptr %i.aar, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3109) #8, !srcloc !14
  %i.aas = icmp ugt i32 %.0.copyload.i3109, 150994943
  br i1 %i.aas, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  %.val2766 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aat = getelementptr inbounds nuw i8, ptr %.val2766, i64 %i.aaq
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aat, i64 12
  %.0.copyload.i3110 = load i32, ptr %i.aau, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3110) #8, !srcloc !14
  %i.aav = add i32 %.0.copyload.i3108, 12
  %.val2898 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aaw = getelementptr inbounds nuw i8, ptr %.val2898, i64 %i.aaq
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 23
  %.0.copyload.i3111 = load i8, ptr %i.aax, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3111) #8, !srcloc !34
  %i.aay = icmp slt i8 %.0.copyload.i3111, 0
  %i.aaz = select i1 %i.aay, i32 %.0.copyload.i3110, i32 %i.aav
  br label %bb.ge

bb.fu:                                            ; preds = %bb.fs
  %i.aba = and i32 %.0.copyload.i3109, 251658240  ; 2 uses
  %i.abb = icmp eq i32 %i.aba, 67108864
  br i1 %i.abb, label %bb.gd, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.abc = add i32 %.0.copyload.i3108, 12
  %i.abd = icmp eq i32 %i.aba, 134217728
  br i1 %i.abd, label %bb.ge, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %.val2765 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.abe = getelementptr inbounds nuw i8, ptr %.val2765, i64 %i.aaq
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 8
  %.0.copyload.i3112 = load i32, ptr %i.abf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3112) #8, !srcloc !14
  %i.abg = zext i32 %.0.copyload.i3112 to i64     ; 2 uses
  %.val2764 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.abh = getelementptr inbounds nuw i8, ptr %.val2764, i64 %i.abg
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abh, i64 12
  %.0.copyload.i3113 = load i32, ptr %i.abi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3113) #8, !srcloc !14
  %i.abj = add i32 %.0.copyload.i3112, 12
  %.val2897 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.abk = getelementptr inbounds nuw i8, ptr %.val2897, i64 %i.abg
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 23
  %.0.copyload.i3114 = load i8, ptr %i.abl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3114) #8, !srcloc !34
  %i.abm = icmp slt i8 %.0.copyload.i3114, 0
  %i.abn = select i1 %i.abm, i32 %.0.copyload.i3113, i32 %i.abj
  br label %bb.ge

bb.fx:                                            ; preds = %bb.fq
  br i1 %.not2720, label %bb.gj, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.abo = zext i32 %.0.copyload.i2963 to i64
  %.val2763 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.abp = getelementptr inbounds nuw i8, ptr %.val2763, i64 %i.abo
  %.0.copyload.i3115 = load i32, ptr %i.abp, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3115) #8, !srcloc !14
  %i.abq = zext i32 %.0.copyload.i3115 to i64     ; 4 uses
  %.val2762 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.abr = getelementptr inbounds nuw i8, ptr %.val2762, i64 %i.abq
  %.0.copyload.i3116 = load i32, ptr %i.abr, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3116) #8, !srcloc !14
  %i.abs = icmp ugt i32 %.0.copyload.i3116, 150994943
  br i1 %i.abs, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  %.val2761 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.abt = getelementptr inbounds nuw i8, ptr %.val2761, i64 %i.abq
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abt, i64 12
  %.0.copyload.i3117 = load i32, ptr %i.abu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3117) #8, !srcloc !14
  %i.abv = add i32 %.0.copyload.i3115, 12
  %.val2896 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.abw = getelementptr inbounds nuw i8, ptr %.val2896, i64 %i.abq
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abw, i64 23
  %.0.copyload.i3118 = load i8, ptr %i.abx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3118) #8, !srcloc !34
  %i.aby = icmp slt i8 %.0.copyload.i3118, 0
  %i.abz = select i1 %i.aby, i32 %.0.copyload.i3117, i32 %i.abv
  br label %bb.gj

bb.ga:                                            ; preds = %bb.fy
  %i.aca = and i32 %.0.copyload.i3116, 251658240  ; 2 uses
  %i.acb = icmp eq i32 %i.aca, 50331648
  br i1 %i.acb, label %bb.gi, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.acc = add i32 %.0.copyload.i3115, 12
  %i.acd = icmp eq i32 %i.aca, 117440512
  br i1 %i.acd, label %bb.gj, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %.val2760 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ace = getelementptr inbounds nuw i8, ptr %.val2760, i64 %i.abq
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 8
  %.0.copyload.i3119 = load i32, ptr %i.acf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3119) #8, !srcloc !14
  %i.acg = zext i32 %.0.copyload.i3119 to i64     ; 2 uses
  %.val2759 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ach = getelementptr inbounds nuw i8, ptr %.val2759, i64 %i.acg
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 12
  %.0.copyload.i3120 = load i32, ptr %i.aci, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3120) #8, !srcloc !14
  %i.acj = add i32 %.0.copyload.i3119, 12
  %.val2895 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ack = getelementptr inbounds nuw i8, ptr %.val2895, i64 %i.acg
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 23
  %.0.copyload.i3121 = load i8, ptr %i.acl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3121) #8, !srcloc !34
  %i.acm = icmp slt i8 %.0.copyload.i3121, 0
  %i.acn = select i1 %i.acm, i32 %.0.copyload.i3120, i32 %i.acj
  br label %bb.gj

bb.gd:                                            ; preds = %bb.fu
  %i.aco = add i32 %.0.copyload.i3108, 8
  br label %bb.ge

bb.ge:                                            ; preds = %bb.fv, %bb.fr, %bb.gd, %bb.fw, %bb.ft
  %.3 = phi i32 [ %.0.copyload.i2963, %bb.fr ], [ %i.aaz, %bb.ft ], [ %i.aco, %bb.gd ], [ %i.abc, %bb.fv ], [ %i.abn, %bb.fw ]
  %i.acp = and i32 %.0.copyload.i2962, 1073741823 ; 2 uses
  %i.acq = add i32 %i.acp, %i.aan
  %i.acr = add i32 %i.acq, %.3
  %i.acs = zext i32 %i.acr to i64
  %.val2894 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.act = getelementptr inbounds nuw i8, ptr %.val2894, i64 %i.acs
  %.0.copyload.i3122 = load i8, ptr %i.act, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3122) #8, !srcloc !34
  %i.acu = sext i8 %.0.copyload.i3122 to i32      ; 2 uses
  %i.acv = add nsw i32 %i.acu, -58
  %i.acw = icmp ult i32 %i.acv, -10
  %i.acx = or i32 %i.acu, 32
  %i.acy = add nsw i32 %i.acx, -103
  %i.acz = icmp ult i32 %i.acy, -6
  %i.ada = and i1 %i.acw, %i.acz
  br i1 %i.ada, label %bb.hq, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  br i1 %.not2720, label %bb.gs, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.adb = zext i32 %.0.copyload.i2963 to i64
  %.val2758 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.adc = getelementptr inbounds nuw i8, ptr %.val2758, i64 %i.adb
  %.0.copyload.i3123 = load i32, ptr %i.adc, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3123) #8, !srcloc !14
  %i.add = zext i32 %.0.copyload.i3123 to i64     ; 4 uses
  %.val2757 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ade = getelementptr inbounds nuw i8, ptr %.val2757, i64 %i.add
  %.0.copyload.i3124 = load i32, ptr %i.ade, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3124) #8, !srcloc !14
  %i.adf = icmp ult i32 %.0.copyload.i3124, 150994944
  br i1 %i.adf, label %bb.go, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %.val2756 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.adg = getelementptr inbounds nuw i8, ptr %.val2756, i64 %i.add
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adg, i64 12
  %.0.copyload.i3125 = load i32, ptr %i.adh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3125) #8, !srcloc !14
  %i.adi = add i32 %.0.copyload.i3123, 12
  %.val2893 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.adj = getelementptr inbounds nuw i8, ptr %.val2893, i64 %i.add
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adj, i64 23
  %.0.copyload.i3126 = load i8, ptr %i.adk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3126) #8, !srcloc !34
  %i.adl = icmp slt i8 %.0.copyload.i3126, 0
  %i.adm = select i1 %i.adl, i32 %.0.copyload.i3125, i32 %i.adi
  br label %bb.gs

bb.gi:                                            ; preds = %bb.ga
  %i.adn = add i32 %.0.copyload.i3115, 8
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gb, %bb.fx, %bb.gi, %bb.gc, %bb.fz
  %.4 = phi i32 [ %.0.copyload.i2963, %bb.fx ], [ %i.abz, %bb.fz ], [ %i.adn, %bb.gi ], [ %i.acc, %bb.gb ], [ %i.acn, %bb.gc ]
  %i.ado = shl nuw i32 %.0.copyload.i2962, 1
  %i.adp = and i32 %i.ado, 2147483646             ; 2 uses
  %i.adq = shl i32 %i.aan, 1
  %i.adr = add i32 %i.adp, %i.adq
  %i.ads = add i32 %i.adr, %.4
end_hunk_0
begin_hunk_1_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3Aunescape0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
  %i.afx = zext i32 %i.afw to i64
  %.val2944 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.afy = getelementptr inbounds nuw i8, ptr %.val2944, i64 %i.afx
  %.0.copyload.i3139 = load i16, ptr %i.afy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i3139) #8, !srcloc !37
  %i.afz = zext i16 %.0.copyload.i3139 to i32
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gs
  %.12574 = phi i32 [ %i.afg, %bb.gs ], [ %i.afz, %bb.gx ] ; 3 uses
  %i.aga = add nsw i32 %.12574, 65488
  %i.agb = and i32 %i.aga, 65534
  %i.agc = icmp samesign ult i32 %i.agb, 10
  %i.agd = or i32 %.12574, 32
  %i.age = add nsw i32 %.12574, 4048
  %i.agf = add nsw i32 %i.agd, 4009
  %i.agg = select i1 %i.agc, i32 %i.age, i32 %i.agf
  %i.agh = shl nsw i32 %i.agg, 4
  %.not2726 = icmp eq i32 %i.ax, 0                ; 2 uses
  br i1 %i.ba, label %bb.gz, label %bb.hh

bb.gz:                                            ; preds = %bb.gy
  br i1 %.not2726, label %bb.hg, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.agi = zext i32 %.0.copyload.i2963 to i64
  %.val2748 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.agj = getelementptr inbounds nuw i8, ptr %.val2748, i64 %i.agi
  %.0.copyload.i3140 = load i32, ptr %i.agj, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3140) #8, !srcloc !14
  %i.agk = zext i32 %.0.copyload.i3140 to i64     ; 4 uses
  %.val2747 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.agl = getelementptr inbounds nuw i8, ptr %.val2747, i64 %i.agk
  %.0.copyload.i3141 = load i32, ptr %i.agl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3141) #8, !srcloc !14
  %i.agm = icmp ugt i32 %.0.copyload.i3141, 150994943
  br i1 %i.agm, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %bb.ha
  %.val2746 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.agn = getelementptr inbounds nuw i8, ptr %.val2746, i64 %i.agk
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agn, i64 12
  %.0.copyload.i3142 = load i32, ptr %i.ago, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3142) #8, !srcloc !14
  %i.agp = add i32 %.0.copyload.i3140, 12
  %.val2888 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.agq = getelementptr inbounds nuw i8, ptr %.val2888, i64 %i.agk
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agq, i64 23
  %.0.copyload.i3143 = load i8, ptr %i.agr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3143) #8, !srcloc !34
  %i.ags = icmp slt i8 %.0.copyload.i3143, 0
  %i.agt = select i1 %i.ags, i32 %.0.copyload.i3142, i32 %i.agp
  br label %bb.hg

bb.hc:                                            ; preds = %bb.ha
  %i.agu = and i32 %.0.copyload.i3141, 251658240
  switch i32 %i.agu, label %bb.hf [
    i32 67108864, label %bb.he
    i32 134217728, label %bb.hd
  ]

bb.hd:                                            ; preds = %bb.hc
  %i.agv = add i32 %.0.copyload.i3140, 12
  br label %bb.hg

bb.he:                                            ; preds = %bb.hc
  %i.agw = add i32 %.0.copyload.i3140, 8
  br label %bb.hg

bb.hf:                                            ; preds = %bb.hc
  %.val2745 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.agx = getelementptr inbounds nuw i8, ptr %.val2745, i64 %i.agk
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agx, i64 8
  %.0.copyload.i3144 = load i32, ptr %i.agy, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3144) #8, !srcloc !14
  %i.agz = zext i32 %.0.copyload.i3144 to i64     ; 2 uses
  %.val2744 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aha = getelementptr inbounds nuw i8, ptr %.val2744, i64 %i.agz
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aha, i64 12
  %.0.copyload.i3145 = load i32, ptr %i.ahb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3145) #8, !srcloc !14
  %i.ahc = add i32 %.0.copyload.i3144, 12
  %.val2887 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ahd = getelementptr inbounds nuw i8, ptr %.val2887, i64 %i.agz
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahd, i64 23
  %.0.copyload.i3146 = load i8, ptr %i.ahe, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3146) #8, !srcloc !34
  %i.ahf = icmp slt i8 %.0.copyload.i3146, 0
  %i.ahg = select i1 %i.ahf, i32 %.0.copyload.i3145, i32 %i.ahc
  br label %bb.hg

bb.hg:                                            ; preds = %bb.gz, %bb.hf, %bb.he, %bb.hd, %bb.hb
  %.22604 = phi i32 [ %.0.copyload.i2963, %bb.gz ], [ %i.agt, %bb.hb ], [ %i.ahg, %bb.hf ], [ %i.agv, %bb.hd ], [ %i.agw, %bb.he ]
  %i.ahh = and i32 %.0.copyload.i2962, 1073741823
  %i.ahi = add i32 %i.ahh, %i.aan
  %i.ahj = add i32 %i.ahi, %.22604
  %i.ahk = zext i32 %i.ahj to i64
  %.val2886 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ahl = getelementptr inbounds nuw i8, ptr %.val2886, i64 %i.ahk
  %.0.copyload.i3147 = load i8, ptr %i.ahl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3147) #8, !srcloc !34
  %i.ahm = sext i8 %.0.copyload.i3147 to i32
  br label %bb.hp

bb.hh:                                            ; preds = %bb.gy
  br i1 %.not2726, label %bb.ho, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.ahn = zext i32 %.0.copyload.i2963 to i64
  %.val2743 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aho = getelementptr inbounds nuw i8, ptr %.val2743, i64 %i.ahn
  %.0.copyload.i3148 = load i32, ptr %i.aho, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3148) #8, !srcloc !14
  %i.ahp = zext i32 %.0.copyload.i3148 to i64     ; 4 uses
  %.val2742 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ahq = getelementptr inbounds nuw i8, ptr %.val2742, i64 %i.ahp
  %.0.copyload.i3149 = load i32, ptr %i.ahq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3149) #8, !srcloc !14
  %i.ahr = icmp ugt i32 %.0.copyload.i3149, 150994943
  br i1 %i.ahr, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  %.val2741 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ahs = getelementptr inbounds nuw i8, ptr %.val2741, i64 %i.ahp
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahs, i64 12
  %.0.copyload.i3150 = load i32, ptr %i.aht, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3150) #8, !srcloc !14
  %i.ahu = add i32 %.0.copyload.i3148, 12
  %.val2885 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ahv = getelementptr inbounds nuw i8, ptr %.val2885, i64 %i.ahp
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahv, i64 23
  %.0.copyload.i3151 = load i8, ptr %i.ahw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3151) #8, !srcloc !34
  %i.ahx = icmp slt i8 %.0.copyload.i3151, 0
  %i.ahy = select i1 %i.ahx, i32 %.0.copyload.i3150, i32 %i.ahu
  br label %bb.ho

bb.hk:                                            ; preds = %bb.hi
  %i.ahz = and i32 %.0.copyload.i3149, 251658240
  switch i32 %i.ahz, label %bb.hn [
    i32 50331648, label %bb.hm
    i32 117440512, label %bb.hl
  ]

bb.hl:                                            ; preds = %bb.hk
  %i.aia = add i32 %.0.copyload.i3148, 12
  br label %bb.ho

bb.hm:                                            ; preds = %bb.hk
  %i.aib = add i32 %.0.copyload.i3148, 8
  br label %bb.ho

bb.hn:                                            ; preds = %bb.hk
  %.val2740 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aic = getelementptr inbounds nuw i8, ptr %.val2740, i64 %i.ahp
  %i.aid = getelementptr inbounds nuw i8, ptr %i.aic, i64 8
  %.0.copyload.i3152 = load i32, ptr %i.aid, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3152) #8, !srcloc !14
  %i.aie = zext i32 %.0.copyload.i3152 to i64     ; 2 uses
  %.val2739 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aif = getelementptr inbounds nuw i8, ptr %.val2739, i64 %i.aie
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aif, i64 12
  %.0.copyload.i3153 = load i32, ptr %i.aig, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3153) #8, !srcloc !14
  %i.aih = add i32 %.0.copyload.i3152, 12
  %.val2884 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aii = getelementptr inbounds nuw i8, ptr %.val2884, i64 %i.aie
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aii, i64 23
  %.0.copyload.i3154 = load i8, ptr %i.aij, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3154) #8, !srcloc !34
  %i.aik = icmp slt i8 %.0.copyload.i3154, 0
  %i.ail = select i1 %i.aik, i32 %.0.copyload.i3153, i32 %i.aih
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hh, %bb.hn, %bb.hm, %bb.hl, %bb.hj
  %.32605 = phi i32 [ %.0.copyload.i2963, %bb.hh ], [ %i.ahy, %bb.hj ], [ %i.ail, %bb.hn ], [ %i.aia, %bb.hl ], [ %i.aib, %bb.hm ]
  %i.aim = and i32 %.0.copyload.i2962, 1073741823
  %i.ain = add i32 %i.aan, %i.aim
  %i.aio = shl i32 %i.ain, 1
  %i.aip = add i32 %i.aio, %.32605
  %i.aiq = zext i32 %i.aip to i64
  %.val2943 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.air = getelementptr inbounds nuw i8, ptr %.val2943, i64 %i.aiq
  %.0.copyload.i3155 = load i16, ptr %i.air, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i3155) #8, !srcloc !37
  %i.ais = zext i16 %.0.copyload.i3155 to i32
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %bb.hg
  %.6 = phi i32 [ %i.ahm, %bb.hg ], [ %i.ais, %bb.ho ] ; 3 uses
  %i.ait = add nsw i32 %.6, 65488
  %i.aiu = and i32 %i.ait, 65534
  %i.aiv = icmp samesign ult i32 %i.aiu, 10
  %i.aiw = or i32 %.6, 32
  %i.aix = add nsw i32 %.6, -48
  %i.aiy = add nsw i32 %i.aiw, -87
  %i.aiz = select i1 %i.aiv, i32 %i.aix, i32 %i.aiy
  %i.aja = or i32 %i.aiz, %i.agh
  br label %bb.hq

bb.hq:                                            ; preds = %bb.gk, %bb.ge, %bb.fp, %.loopexit, %bb.ab, %bb.hp, %bb.ew
  %.62600 = phi i32 [ %.22577, %bb.ab ], [ 37, %.loopexit ], [ 37, %bb.fp ], [ 37, %bb.ge ], [ %i.aja, %bb.hp ], [ 37, %bb.gk ], [ %i.xr, %bb.ew ]
  %.12585 = phi i32 [ %.02584, %bb.ab ], [ %.02584, %.loopexit ], [ %.02584, %bb.fp ], [ %.02584, %bb.ge ], [ %i.aan, %bb.hp ], [ %.02584, %bb.gk ], [ %i.uy, %bb.ew ]
  %.val2738 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ajb = getelementptr inbounds nuw i8, ptr %.val2738, i64 %i.ak
  %.0.copyload.i3156 = load i32, ptr %i.ajb, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3156) #8, !srcloc !14
  %.val2737 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ajc = getelementptr inbounds nuw i8, ptr %.val2737, i64 %i.aj
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ajc, i64 36
  %.0.copyload.i3157 = load i32, ptr %i.ajd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3157) #8, !srcloc !14
  %.not2729 = icmp ult i32 %.0.copyload.i3156, %.0.copyload.i3157
  br i1 %.not2729, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %.pre-phi, i32 noundef %i.am, i32 noundef 0, i32 noundef 2)
  %.val2736 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aje = getelementptr inbounds nuw i8, ptr %.val2736, i64 %i.ak
  %.0.copyload.i3158 = load i32, ptr %i.aje, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3158) #8, !srcloc !14
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %bb.hq
  %.42606 = phi i32 [ %.0.copyload.i3158, %bb.hr ], [ %.0.copyload.i3156, %bb.hq ]
  %.val2735 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ajf = getelementptr inbounds nuw i8, ptr %.val2735, i64 %i.an
  %.0.copyload.i3159 = load i32, ptr %i.ajf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3159) #8, !srcloc !14
  %i.ajg = shl i32 %.42606, 1
  %i.ajh = add i32 %.0.copyload.i3159, %i.ajg
  %i.aji = zext i32 %i.ajh to i64
  %.val2942 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ajj = trunc i32 %.62600 to i16
  %i.ajk = getelementptr inbounds nuw i8, ptr %.val2942, i64 %i.aji
  store i16 %i.ajj, ptr %i.ajk, align 1
  %.val2734 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ajl = getelementptr inbounds nuw i8, ptr %.val2734, i64 %i.ak
  %.0.copyload.i3160 = load i32, ptr %i.ajl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3160) #8, !srcloc !14
  %i.ajm = add i32 %.0.copyload.i3160, 1          ; 2 uses
  %.val2872 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ajn = getelementptr inbounds nuw i8, ptr %.val2872, i64 %i.ak
  store i32 %i.ajm, ptr %i.ajn, align 1
  %i.ajo = add i32 %.12585, 1                     ; 2 uses
  %i.ajp = icmp ult i32 %i.ajo, %i.ap
  br i1 %i.ajp, label %bb.k, label %.loopexit3168

.loopexit3168:                                    ; preds = %bb.hs, %bb.i
  %.72601 = phi i32 [ %.0.copyload.i2961, %bb.i ], [ %i.ajm, %bb.hs ] ; 3 uses
  %.val2733 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ajq = getelementptr inbounds nuw i8, ptr %.val2733, i64 %i.an
  %.0.copyload.i3161 = load i32, ptr %i.ajq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3161) #8, !srcloc !14
  %i.ajr = icmp ult i32 %.72601, 65536
  %.val2871 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ajs = getelementptr inbounds nuw i8, ptr %.val2871, i64 %i.aj ; 2 uses
  br i1 %i.ajr, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %.loopexit3168
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajs, i64 116
  store i32 %.72601, ptr %i.ajt, align 1
  %i.aju = add nuw nsw i64 %i.aj, 112             ; 2 uses
  %.val2870 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ajv = getelementptr inbounds nuw i8, ptr %.val2870, i64 %i.aju
  store i32 %.0.copyload.i3161, ptr %i.ajv, align 1
  %.val2881 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ajw = getelementptr inbounds nuw i8, ptr %.val2881, i64 %i.aju
  %.0.copyload.i3162 = load i64, ptr %i.ajw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3162) #8, !srcloc !33
  %.val2877 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ajx = getelementptr inbounds nuw i8, ptr %.val2877, i64 %i.aj
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajx, i64 8
  store i64 %.0.copyload.i3162, ptr %i.ajy, align 1
  %i.ajz = add i32 %i.b, -120
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3A0x3AcreateDynamic0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20llvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %3, i32 noundef %i.ajz) #8
  br label %bb.hw

bb.hu:                                            ; preds = %.loopexit3168
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajs, i64 108
  store i32 %.72601, ptr %i.aka, align 1
  %i.akb = add nuw nsw i64 %i.aj, 104             ; 2 uses
  %.val2868 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.akc = getelementptr inbounds nuw i8, ptr %.val2868, i64 %i.akb
  store i32 %.0.copyload.i3161, ptr %i.akc, align 1
  %.val2880 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.akd = getelementptr inbounds nuw i8, ptr %.val2880, i64 %i.akb
  %.0.copyload.i3163 = load i64, ptr %i.akd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3163) #8, !srcloc !33
  %.val2876 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ake = getelementptr inbounds nuw i8, ptr %.val2876, i64 %i.aj
  store i64 %.0.copyload.i3163, ptr %i.ake, align 1
  %i.akf = add i32 %i.b, -16                      ; 2 uses
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar16_t0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar16_t0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar16_t0x3E0x3E0x20hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3A0x3AarrayToString0x3Cchar16_t0x3E0x28llvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.akf, i32 noundef %i.c) #8
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACallResult0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x2C0x200x28hermes0x3A0x3Avm0x3A0x3Adetail0x3A0x3ACallResultSpecialize0x2920x3E0x20hermes0x3A0x3Avm0x3A0x3AExternalStringPrimitive0x3Cchar16_t0x3E0x3A0x3Acreate0x3Cstd0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar16_t0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar16_t0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar16_t0x3E0x3E0x3E0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar16_t0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar16_t0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar16_t0x3E0x3E0x260x260x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %3, i32 noundef %i.akf) #8
  %.val2883 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.akg = getelementptr inbounds nuw i8, ptr %.val2883, i64 %i.aj
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akg, i64 123
  %.0.copyload.i3164 = load i8, ptr %i.akh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3164) #8, !srcloc !34
  %i.aki = icmp sgt i8 %.0.copyload.i3164, -1
  br i1 %i.aki, label %bb.hw, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %.val2732 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.akj = getelementptr inbounds nuw i8, ptr %.val2732, i64 %i.aj
  %i.akk = getelementptr inbounds nuw i8, ptr %i.akj, i64 112
  %.0.copyload.i3165 = load i32, ptr %i.akk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3165) #8, !srcloc !14
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i3165) #8
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hu, %bb.hv, %bb.ht
  %.val2731 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.akl = getelementptr inbounds nuw i8, ptr %.val2731, i64 %i.an
  %.0.copyload.i3166 = load i32, ptr %i.akl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3166) #8, !srcloc !14
  %i.akm = icmp eq i32 %.0.copyload.i3166, %i.am
  br i1 %i.akm, label %bb.hy, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i3166) #8
  br label %bb.hy

bb.hy:                                            ; preds = %bb.hw, %bb.hx, %bb.b
  store i32 %i.b, ptr %i.a, align 8, !tbaa !20
  ret void
}

declare void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3A0x3AcreateDynamic0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20llvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar16_t0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar16_t0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar16_t0x3E0x3E0x20hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3A0x3AarrayToString0x3Cchar16_t0x3E0x28llvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x29(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACallResult0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x2C0x200x28hermes0x3A0x3Avm0x3A0x3Adetail0x3A0x3ACallResultSpecialize0x2920x3E0x20hermes0x3A0x3Avm0x3A0x3AExternalStringPrimitive0x3Cchar16_t0x3E0x3A0x3Acreate0x3Cstd0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar16_t0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar16_t0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar16_t0x3E0x3E0x3E0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar16_t0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar16_t0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar16_t0x3E0x3E0x260x260x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtypedArrayPrototypeToLocaleString0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 !guid !317 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20   ; 12 uses
  %i.c = add i32 %i.b, -272                       ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 150 uses
  %i.e = zext i32 %i.c to i64                     ; 22 uses
  %.val1312 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %.val1312, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i32 %3, ptr %i.g, align 1
  %i.h = zext i32 %3 to i64
  %i.i = add nuw nsw i64 %i.h, 4                  ; 10 uses
  %.val1272 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %.val1272, i64 %i.i
  %.0.copyload.i = load i32, ptr %i.j, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.k = add i32 %i.b, -76                        ; 2 uses
  %i.l = add i32 %i.b, -216                       ; 2 uses
  %i.m = zext i32 %i.k to i64
  %.val1311 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %.val1311, i64 %i.m
  store i32 %i.l, ptr %i.n, align 1
  %.val1328 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %.val1328, i64 %i.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 188
  store i64 17179869185, ptr %i.p, align 1
  %i.q = add nuw nsw i64 %i.e, 184                ; 2 uses
  %.val1310 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %.val1310, i64 %i.q
  store i32 %i.k, ptr %i.r, align 1
  %.val1309 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %.val1309, i64 %i.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 52
  store i32 %.0.copyload.i, ptr %i.t, align 1
  %i.u = add nuw nsw i64 %i.e, 220                ; 3 uses
  %.val1308 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %.val1308, i64 %i.u
  store i32 0, ptr %i.v, align 1
  %i.w = add i32 %i.b, -88
  %i.x = add nuw nsw i64 %i.e, 216                ; 2 uses
  %.val1307 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %.val1307, i64 %i.x
  store i32 %i.w, ptr %i.y, align 1
  %i.z = add nuw nsw i64 %i.e, 212                ; 3 uses
  %.val1306 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1306, i64 %i.z
  store i32 %i.l, ptr %i.aa, align 1
  %i.ab = add i32 %i.b, -224                      ; 2 uses
  %.val1305 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1305, i64 %i.i
  store i32 %i.ab, ptr %i.ac, align 1
  %i.ad = zext i32 %4 to i64
  %.val1271 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %.val1271, i64 %i.ad
  %.0.copyload.i1360 = load i32, ptr %i.ae, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1360) #8, !srcloc !14
  %i.af = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSTypedArrayBase0x3A0x3AvalidateTypedArray0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20bool0x29(ptr noundef %0, i32 noundef %3, i32 noundef %.0.copyload.i1360, i32 noundef 1) #8
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ag = zext i32 %1 to i64
  %.val1304 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ah = getelementptr inbounds nuw i8, ptr %.val1304, i64 %i.ag
  store i32 0, ptr %i.ah, align 1
end_hunk_1
