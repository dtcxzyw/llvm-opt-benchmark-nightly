Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_5?download=true
inline.NumInlined: 16806
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AdefineProperty0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ADefinePropertyFlags0x29:bb.a
  %i.c = add i32 %i.b, -32                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.e = zext i32 %5 to i64
  %.val55 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val55, i64 %i.e
  %.0.copyload.i = load i32, ptr %i.f, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !19
  %i.g = zext i32 %i.c to i64                     ; 4 uses
  %.val54 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val54, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i32 %.0.copyload.i, ptr %i.i, align 1
  %.val53 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %.val53, i64 %i.g
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.k, align 1
  %.val52 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %.val52, i64 %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  store i32 %.0.copyload.i, ptr %i.m, align 1
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 %i.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i32 0, ptr %i.o, align 1
  %i.p = add i32 %i.b, -12
  %i.q = add i32 %i.b, -16
  %i.r = add i32 %i.b, -20
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AdefineOwnPropertyInternal0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x2C0x20hermes0x3A0x3Avm0x3A0x3ADefinePropertyFlags0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APropOpFlags0x29(ptr noundef %0, i32 noundef %i.p, i32 noundef %2, i32 noundef %1, i32 noundef %3, i32 noundef %i.q, i32 noundef %4, i32 noundef %i.r) #8
  store i32 %i.b, ptr %i.a, align 8, !tbaa !17
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AdefineAccessor0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x2C0x20void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ACallResult0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x2C0x200x28hermes0x3A0x3Avm0x3A0x3Adetail0x3A0x3ACallResultSpecialize0x2920x3E0x200x280x2A0x290x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x290x2C0x20hermes0x3A0x3Avm0x3A0x3ACallResult0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x2C0x200x28hermes0x3A0x3Avm0x3A0x3Adetail0x3A0x3ACallResultSpecialize0x2920x3E0x200x280x2A0x290x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x290x2C0x20bool0x2C0x20bool0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 24 uses
  %i.c = add i32 %i.b, -336                       ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 115 uses
  %i.e = zext i32 %i.c to i64                     ; 43 uses
  %.val925 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val925, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  store i32 %1, ptr %i.g, align 1
  %i.h = zext i32 %1 to i64
  %i.i = add nuw nsw i64 %i.h, 4                  ; 5 uses
  %.val949 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %.val949, i64 %i.i
  %.0.copyload.i = load i32, ptr %i.j, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !19
  %i.k = add i32 %i.b, -44                        ; 2 uses
  %i.l = add i32 %i.b, -184                       ; 2 uses
  %i.m = zext i32 %i.k to i64
  %.val924 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %.val924, i64 %i.m
  store i32 %i.l, ptr %i.n, align 1
  %.val963 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %.val963, i64 %i.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 284
  store i64 17179869185, ptr %i.p, align 1
  %.val923 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %.val923, i64 %i.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 280
  store i32 %i.k, ptr %i.r, align 1
  %.val922 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %.val922, i64 %i.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 148
  store i32 %.0.copyload.i, ptr %i.t, align 1
  %.val921 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %.val921, i64 %i.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 316
  store i32 0, ptr %i.v, align 1
  %i.w = add i32 %i.b, -56
  %.val920 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %.val920, i64 %i.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 312
  store i32 %i.w, ptr %i.y, align 1
  %.val919 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %.val919, i64 %i.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 308
  store i32 %i.l, ptr %i.aa, align 1
  %i.ab = add i32 %i.b, -192                      ; 2 uses
  %.val918 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %.val918, i64 %i.i
  store i32 %i.ab, ptr %i.ac, align 1
  %i.ad = add i32 %i.b, -204                      ; 3 uses
  %i.ae = add i32 %1, 5476                        ; 3 uses
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AIdentifierTable0x3A0x3AgetStringView0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x290x20const(ptr noundef %0, i32 noundef %i.ad, i32 noundef %i.ae, i32 noundef %1, i32 noundef %4) #8
  %.val948 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %.val948, i64 %i.i
  %.0.copyload.i1008 = load i32, ptr %i.af, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1008) #8, !srcloc !19
  %i.ag = zext i32 %.0.copyload.i1008 to i64      ; 2 uses
  %i.ah = add nuw nsw i64 %i.ag, 164              ; 2 uses
  %.val947 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %.val947, i64 %i.ah
  %.0.copyload.i1009 = load i32, ptr %i.ai, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1009) #8, !srcloc !19
  %.val946 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %.val946, i64 %i.ag
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 168
  %.0.copyload.i1010 = load i32, ptr %i.ak, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1010) #8, !srcloc !19
  %i.al = icmp ult i32 %.0.copyload.i1009, %.0.copyload.i1010
  br i1 %i.al, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.am = add i32 %.0.copyload.i1009, 8
  %.val917 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.an = getelementptr inbounds nuw i8, ptr %.val917, i64 %i.ah
  store i32 %i.am, ptr %i.an, align 1
  %i.ao = zext i32 %.0.copyload.i1009 to i64
  %.val962 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %.val962, i64 %i.ao
  store i64 -281474976710656, ptr %i.ap, align 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.aq = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1008, i64 noundef -281474976710656) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0872 = phi i32 [ %.0.copyload.i1009, %bb.b ], [ %i.aq, %bb.c ] ; 2 uses
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val916 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %.val916, i64 %i.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 100
  store i32 544499047, ptr %i.as, align 1
  %i.at = add nuw nsw i64 %i.e, 92                ; 2 uses
  %.val961 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %.val961, i64 %i.at
  store i64 137438953476, ptr %i.au, align 1
  %i.av = add i32 %i.b, -236                      ; 2 uses
  %i.aw = add nuw nsw i64 %i.e, 88                ; 3 uses
  %.val915 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ax = getelementptr inbounds nuw i8, ptr %.val915, i64 %i.aw
  store i32 %i.av, ptr %i.ax, align 1
  %.val960 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ay = getelementptr inbounds nuw i8, ptr %.val960, i64 %i.e
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 76
  store i64 4294967296, ptr %i.az, align 1
  %.val959 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ba = getelementptr inbounds nuw i8, ptr %.val959, i64 %i.e
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 68
  store i64 0, ptr %i.bb, align 1
  %.val914 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bc = getelementptr inbounds nuw i8, ptr %.val914, i64 %i.e
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  store i32 261900, ptr %i.bd, align 1
  %i.be = add i32 %i.b, -248
  %.val913 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %.val913, i64 %i.e
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 84
  store i32 %i.be, ptr %i.bg, align 1
  %i.bh = add i32 %i.b, -272                      ; 3 uses
  tail call void @w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3ASetBufferAndMode0x28char0x2A0x2C0x20unsigned0x20long0x2C0x20llvh0x3A0x3Araw_ostream0x3A0x3ABufferKind0x29(ptr noundef nonnull %0, i32 noundef %i.bh) #8
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3Aoperator0x3C0x3C0x28llvh0x3A0x3Araw_ostream0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AStringView0x20const0x260x29(ptr noundef nonnull %0, i32 noundef %i.bh, i32 noundef %i.ad)
  %.val945 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %.val945, i64 %i.aw
  %.0.copyload.i1011 = load i32, ptr %i.bi, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1011) #8, !srcloc !19
  %.val944 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bj = getelementptr inbounds nuw i8, ptr %.val944, i64 %i.at
  %.0.copyload.i1012 = load i32, ptr %i.bj, align 1 ; 8 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1012) #8, !srcloc !19
  %i.bk = icmp ult i32 %.0.copyload.i1012, 65536
  br i1 %i.bk, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.val912 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %.val912, i64 %i.e
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 324
  store i32 %.0.copyload.i1012, ptr %i.bm, align 1
  %i.bn = add nuw nsw i64 %i.e, 320               ; 2 uses
  %.val911 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %.val911, i64 %i.bn
  store i32 %.0.copyload.i1011, ptr %i.bo, align 1
  %.val967 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bp = getelementptr inbounds nuw i8, ptr %.val967, i64 %i.bn
  %.0.copyload.i1013 = load i64, ptr %i.bp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1013) #8, !srcloc !20
  %.val958 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bq = getelementptr inbounds nuw i8, ptr %.val958, i64 %i.e
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  store i64 %.0.copyload.i1013, ptr %i.br, align 1
  %i.bs = add i32 %i.b, -288
  %i.bt = add i32 %i.b, -312
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ADynamicStringPrimitive0x3Cchar0x2C0x20false0x3E0x3A0x3Acreate0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20llvh0x3A0x3AArrayRef0x3Cchar0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.bs, i32 noundef %1, i32 noundef %i.bt) #8
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.bu = icmp ugt i32 %.0.copyload.i1012, 2147483631
  br i1 %i.bu, label %bb.ai, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bv = or i32 %.0.copyload.i1012, 15
  %i.bw = add nuw nsw i32 %i.bv, 1                ; 2 uses
  %i.bx = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.bw) #8 ; 3 uses
  %9 = or disjoint i32 %i.bw, -2147483648
  %.val910 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.by = getelementptr inbounds nuw i8, ptr %.val910, i64 %i.e
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 328
  store i32 %9, ptr %i.bz, align 1
  %i.ca = add nuw nsw i64 %i.e, 320               ; 2 uses
  %.val909 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cb = getelementptr inbounds nuw i8, ptr %.val909, i64 %i.ca
  store i32 %i.bx, ptr %i.cb, align 1
  %.val908 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cc = getelementptr inbounds nuw i8, ptr %.val908, i64 %i.e
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 324
  store i32 %.0.copyload.i1012, ptr %i.cd, align 1
  %i.ce = and i32 %.0.copyload.i1012, 7           ; 2 uses
  %.not885 = icmp eq i32 %i.ce, 0
  br i1 %.not885, label %.loopexit1056, label %.preheader1055

.preheader1055:                                   ; preds = %bb.h, %.preheader1055
  %.0866 = phi i32 [ %i.ck, %.preheader1055 ], [ %.0.copyload.i1011, %bb.h ] ; 2 uses
  %.0864 = phi i32 [ %i.cj, %.preheader1055 ], [ %i.bx, %bb.h ] ; 2 uses
  %.0 = phi i32 [ %i.cl, %.preheader1055 ], [ 0, %bb.h ]
  %i.cf = zext i32 %.0866 to i64
  %.val985 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cg = getelementptr inbounds nuw i8, ptr %.val985, i64 %i.cf
  %.0.copyload.i1014 = load i8, ptr %i.cg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1014) #8, !srcloc !21
  %i.ch = zext i32 %.0864 to i64
  %.val1005 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ci = getelementptr inbounds nuw i8, ptr %.val1005, i64 %i.ch
  store i8 %.0.copyload.i1014, ptr %i.ci, align 1
  %i.cj = add i32 %.0864, 1                       ; 2 uses
  %i.ck = add i32 %.0866, 1                       ; 2 uses
  %i.cl = add nuw nsw i32 %.0, 1                  ; 2 uses
  %.not886 = icmp eq i32 %i.cl, %i.ce
  br i1 %.not886, label %.loopexit1056, label %.preheader1055

.loopexit1056:                                    ; preds = %.preheader1055, %bb.h
  %.1867 = phi i32 [ %.0.copyload.i1011, %bb.h ], [ %i.ck, %.preheader1055 ]
  %.1865 = phi i32 [ %i.bx, %bb.h ], [ %i.cj, %.preheader1055 ]
  %i.cm = add i32 %.0.copyload.i1012, %.0.copyload.i1011
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.loopexit1056
  %.2868 = phi i32 [ %.1867, %.loopexit1056 ], [ %i.du, %bb.i ] ; 2 uses
  %.2 = phi i32 [ %.1865, %.loopexit1056 ], [ %i.dt, %bb.i ] ; 2 uses
  %i.cn = zext i32 %.2868 to i64                  ; 8 uses
  %.val984 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.co = getelementptr inbounds nuw i8, ptr %.val984, i64 %i.cn
  %.0.copyload.i1015 = load i8, ptr %i.co, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1015) #8, !srcloc !21
  %i.cp = zext i32 %.2 to i64                     ; 8 uses
  %.val1004 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cq = getelementptr inbounds nuw i8, ptr %.val1004, i64 %i.cp
  store i8 %.0.copyload.i1015, ptr %i.cq, align 1
  %.val983 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cr = getelementptr inbounds nuw i8, ptr %.val983, i64 %i.cn
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  %.0.copyload.i1016 = load i8, ptr %i.cs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1016) #8, !srcloc !21
  %.val1003 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ct = getelementptr inbounds nuw i8, ptr %.val1003, i64 %i.cp
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  store i8 %.0.copyload.i1016, ptr %i.cu, align 1
  %.val982 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cv = getelementptr inbounds nuw i8, ptr %.val982, i64 %i.cn
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 2
  %.0.copyload.i1017 = load i8, ptr %i.cw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1017) #8, !srcloc !21
  %.val1002 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cx = getelementptr inbounds nuw i8, ptr %.val1002, i64 %i.cp
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 2
  store i8 %.0.copyload.i1017, ptr %i.cy, align 1
  %.val981 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cz = getelementptr inbounds nuw i8, ptr %.val981, i64 %i.cn
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 3
  %.0.copyload.i1018 = load i8, ptr %i.da, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1018) #8, !srcloc !21
  %.val1001 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.db = getelementptr inbounds nuw i8, ptr %.val1001, i64 %i.cp
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 3
  store i8 %.0.copyload.i1018, ptr %i.dc, align 1
  %.val980 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dd = getelementptr inbounds nuw i8, ptr %.val980, i64 %i.cn
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %.0.copyload.i1019 = load i8, ptr %i.de, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1019) #8, !srcloc !21
  %.val1000 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.df = getelementptr inbounds nuw i8, ptr %.val1000, i64 %i.cp
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  store i8 %.0.copyload.i1019, ptr %i.dg, align 1
  %.val979 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dh = getelementptr inbounds nuw i8, ptr %.val979, i64 %i.cn
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 5
  %.0.copyload.i1020 = load i8, ptr %i.di, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1020) #8, !srcloc !21
  %.val999 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dj = getelementptr inbounds nuw i8, ptr %.val999, i64 %i.cp
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 5
  store i8 %.0.copyload.i1020, ptr %i.dk, align 1
  %.val978 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dl = getelementptr inbounds nuw i8, ptr %.val978, i64 %i.cn
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 6
  %.0.copyload.i1021 = load i8, ptr %i.dm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1021) #8, !srcloc !21
  %.val998 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dn = getelementptr inbounds nuw i8, ptr %.val998, i64 %i.cp
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 6
  store i8 %.0.copyload.i1021, ptr %i.do, align 1
  %.val977 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dp = getelementptr inbounds nuw i8, ptr %.val977, i64 %i.cn
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 7
  %.0.copyload.i1022 = load i8, ptr %i.dq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1022) #8, !srcloc !21
  %.val997 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dr = getelementptr inbounds nuw i8, ptr %.val997, i64 %i.cp
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 7
  store i8 %.0.copyload.i1022, ptr %i.ds, align 1
  %i.dt = add i32 %.2, 8                          ; 2 uses
  %i.du = add i32 %.2868, 8                       ; 2 uses
  %.not887 = icmp eq i32 %i.du, %i.cm
  br i1 %.not887, label %bb.j, label %bb.i

bb.j:                                             ; preds = %bb.i
  %i.dv = zext i32 %i.dt to i64
  %.val996 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dw = getelementptr inbounds nuw i8, ptr %.val996, i64 %i.dv
  store i8 0, ptr %i.dw, align 1
  %i.dx = add i32 %i.b, -288
  %i.dy = add i32 %i.b, -16
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACallResult0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x2C0x200x28hermes0x3A0x3Avm0x3A0x3Adetail0x3A0x3ACallResultSpecialize0x2920x3E0x20hermes0x3A0x3Avm0x3A0x3AExternalStringPrimitive0x3Cchar0x3E0x3A0x3Acreate0x3Cstd0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3E0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x260x260x29(ptr noundef nonnull %0, i32 noundef %i.dx, i32 noundef %1, i32 noundef %i.dy) #8
  %.val965 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dz = getelementptr inbounds nuw i8, ptr %.val965, i64 %i.e
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 331
  %.0.copyload.i1023 = load i8, ptr %i.ea, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1023) #8, !srcloc !22
  %i.eb = icmp sgt i8 %.0.copyload.i1023, -1
  br i1 %i.eb, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val943 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ec = getelementptr inbounds nuw i8, ptr %.val943, i64 %i.ca
  %.0.copyload.i1024 = load i32, ptr %i.ec, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1024) #8, !srcloc !19
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1024) #8
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.f
  %.val942 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ed = getelementptr inbounds nuw i8, ptr %.val942, i64 %i.e
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 48
  %.0.copyload.i1025 = load i32, ptr %i.ee, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1025) #8, !srcloc !19
  %.not888 = icmp eq i32 %.0.copyload.i1025, 0
  br i1 %.not888, label %bb.aj, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val941 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ef = getelementptr inbounds nuw i8, ptr %.val941, i64 %i.e
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 56
  %.0.copyload.i1026 = load i32, ptr %i.eg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1026) #8, !srcloc !19
  %i.eh = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AIdentifierTable0x3A0x3AgetSymbolHandleFromPrimitive0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3APseudoHandle0x3Chermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.ae, i32 noundef %1, i32 noundef %.0.copyload.i1026) #8 ; 2 uses
  %i.ei = icmp eq i32 %i.eh, -1
  br i1 %i.ei, label %bb.aj, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ej = add i32 %1, 200
  %i.ek = zext i32 %i.eh to i64
  %.val940 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.el = getelementptr inbounds nuw i8, ptr %.val940, i64 %i.ek
  %.0.copyload.i1027 = load i32, ptr %i.el, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1027) #8, !srcloc !19
  %i.em = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ANativeFunction0x3A0x3Acreate0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ACallResult0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x2C0x200x28hermes0x3A0x3Avm0x3A0x3Adetail0x3A0x3ACallResultSpecialize0x2920x3E0x200x280x2A0x290x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x290x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x2C0x20unsigned0x20int0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.ej, i32 noundef %5, i32 noundef %6, i32 noundef %.0.copyload.i1027, i32 noundef 0, i32 noundef 0) #8
  %i.en = zext i32 %i.em to i64
  %.val1007 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eo = getelementptr inbounds nuw i8, ptr %.val1007, i64 %i.en
  %.0.copyload.i1028 = load i32, ptr %i.eo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1028) #8, !srcloc !23
  %i.ep = zext i32 %.0.copyload.i1028 to i64
  %i.eq = or disjoint i64 %i.ep, -281474976710656
  %i.er = zext i32 %.0872 to i64
  %.val957 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.es = getelementptr inbounds nuw i8, ptr %.val957, i64 %i.er
  store i64 %i.eq, ptr %i.es, align 1
  %i.et = tail call i32 @w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3A0x7Eraw_ostream0x280x290x2E1(ptr noundef nonnull %0, i32 noundef %i.bh) #8 ; 0 uses
  %.val939 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eu = getelementptr inbounds nuw i8, ptr %.val939, i64 %i.aw
  %.0.copyload.i1029 = load i32, ptr %i.eu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1029) #8, !srcloc !19
  %i.ev = icmp eq i32 %.0.copyload.i1029, %i.av
  br i1 %i.ev, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1029) #8
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.d, %bb.o
  %.val938 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ew = getelementptr inbounds nuw i8, ptr %.val938, i64 %i.i
  %.0.copyload.i1030 = load i32, ptr %i.ew, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1030) #8, !srcloc !19
  %i.ex = zext i32 %.0.copyload.i1030 to i64      ; 2 uses
  %i.ey = add nuw nsw i64 %i.ex, 164              ; 2 uses
  %.val937 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ez = getelementptr inbounds nuw i8, ptr %.val937, i64 %i.ey
  %.0.copyload.i1031 = load i32, ptr %i.ez, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1031) #8, !srcloc !19
  %.val936 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fa = getelementptr inbounds nuw i8, ptr %.val936, i64 %i.ex
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 168
  %.0.copyload.i1032 = load i32, ptr %i.fb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1032) #8, !srcloc !19
  %i.fc = icmp ult i32 %.0.copyload.i1031, %.0.copyload.i1032
  br i1 %i.fc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.fd = add i32 %.0.copyload.i1031, 8
  %.val907 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fe = getelementptr inbounds nuw i8, ptr %.val907, i64 %i.ey
  store i32 %i.fd, ptr %i.fe, align 1
  %i.ff = zext i32 %.0.copyload.i1031 to i64
  %.val956 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fg = getelementptr inbounds nuw i8, ptr %.val956, i64 %i.ff
  store i64 -281474976710656, ptr %i.fg, align 1
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.fh = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1030, i64 noundef -281474976710656) #8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0863 = phi i32 [ %.0.copyload.i1031, %bb.q ], [ %i.fh, %bb.r ] ; 2 uses
  %.not889 = icmp eq i32 %7, 0
  br i1 %.not889, label %bb.ae, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val906 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fi = getelementptr inbounds nuw i8, ptr %.val906, i64 %i.e
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 100
  store i32 544499059, ptr %i.fj, align 1
  %i.fk = add nuw nsw i64 %i.e, 92                ; 2 uses
  %.val955 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fl = getelementptr inbounds nuw i8, ptr %.val955, i64 %i.fk
  store i64 137438953476, ptr %i.fl, align 1
  %i.fm = add i32 %i.b, -236                      ; 2 uses
  %i.fn = add nuw nsw i64 %i.e, 88                ; 3 uses
  %.val905 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fo = getelementptr inbounds nuw i8, ptr %.val905, i64 %i.fn
  store i32 %i.fm, ptr %i.fo, align 1
  %.val954 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fp = getelementptr inbounds nuw i8, ptr %.val954, i64 %i.e
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 76
  store i64 4294967296, ptr %i.fq, align 1
  %.val953 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fr = getelementptr inbounds nuw i8, ptr %.val953, i64 %i.e
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 68
  store i64 0, ptr %i.fs, align 1
  %.val904 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ft = getelementptr inbounds nuw i8, ptr %.val904, i64 %i.e
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 64
  store i32 261900, ptr %i.fu, align 1
  %i.fv = add i32 %i.b, -248
  %.val903 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fw = getelementptr inbounds nuw i8, ptr %.val903, i64 %i.e
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 84
  store i32 %i.fv, ptr %i.fx, align 1
  %i.fy = add i32 %i.b, -272                      ; 3 uses
  tail call void @w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3ASetBufferAndMode0x28char0x2A0x2C0x20unsigned0x20long0x2C0x20llvh0x3A0x3Araw_ostream0x3A0x3ABufferKind0x29(ptr noundef nonnull %0, i32 noundef %i.fy) #8
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3Aoperator0x3C0x3C0x28llvh0x3A0x3Araw_ostream0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AStringView0x20const0x260x29(ptr noundef nonnull %0, i32 noundef %i.fy, i32 noundef %i.ad)
  %.val935 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fz = getelementptr inbounds nuw i8, ptr %.val935, i64 %i.fn
  %.0.copyload.i1033 = load i32, ptr %i.fz, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1033) #8, !srcloc !19
  %.val934 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ga = getelementptr inbounds nuw i8, ptr %.val934, i64 %i.fk
  %.0.copyload.i1034 = load i32, ptr %i.ga, align 1 ; 8 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1034) #8, !srcloc !19
  %i.gb = icmp ult i32 %.0.copyload.i1034, 65536
  br i1 %i.gb, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %.val902 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gc = getelementptr inbounds nuw i8, ptr %.val902, i64 %i.e
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 324
  store i32 %.0.copyload.i1034, ptr %i.gd, align 1
  %i.ge = add nuw nsw i64 %i.e, 320               ; 2 uses
  %.val901 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gf = getelementptr inbounds nuw i8, ptr %.val901, i64 %i.ge
  store i32 %.0.copyload.i1033, ptr %i.gf, align 1
  %.val966 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gg = getelementptr inbounds nuw i8, ptr %.val966, i64 %i.ge
  %.0.copyload.i1035 = load i64, ptr %i.gg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1035) #8, !srcloc !20
  %.val952 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gh = getelementptr inbounds nuw i8, ptr %.val952, i64 %i.e
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  store i64 %.0.copyload.i1035, ptr %i.gi, align 1
  %i.gj = add i32 %i.b, -304
  %i.gk = add i32 %i.b, -320
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ADynamicStringPrimitive0x3Cchar0x2C0x20false0x3E0x3A0x3Acreate0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20llvh0x3A0x3AArrayRef0x3Cchar0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.gj, i32 noundef %1, i32 noundef %i.gk) #8
  br label %bb.aa

bb.v:                                             ; preds = %bb.t
  %i.gl = icmp ugt i32 %.0.copyload.i1034, 2147483631
  br i1 %i.gl, label %bb.ai, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gm = or i32 %.0.copyload.i1034, 15
  %i.gn = add nuw nsw i32 %i.gm, 1                ; 2 uses
  %i.go = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.gn) #8 ; 3 uses
  %10 = or disjoint i32 %i.gn, -2147483648
  %.val900 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gp = getelementptr inbounds nuw i8, ptr %.val900, i64 %i.e
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 328
  store i32 %10, ptr %i.gq, align 1
  %i.gr = add nuw nsw i64 %i.e, 320               ; 2 uses
  %.val899 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gs = getelementptr inbounds nuw i8, ptr %.val899, i64 %i.gr
  store i32 %i.go, ptr %i.gs, align 1
  %.val898 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gt = getelementptr inbounds nuw i8, ptr %.val898, i64 %i.e
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 324
  store i32 %.0.copyload.i1034, ptr %i.gu, align 1
  %i.gv = and i32 %.0.copyload.i1034, 7           ; 2 uses
  %.not890 = icmp eq i32 %i.gv, 0
  br i1 %.not890, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.w, %.preheader
  %.3869 = phi i32 [ %i.hb, %.preheader ], [ %.0.copyload.i1033, %bb.w ] ; 2 uses
  %.4 = phi i32 [ %i.ha, %.preheader ], [ %i.go, %bb.w ] ; 2 uses
  %.1 = phi i32 [ %i.hc, %.preheader ], [ 0, %bb.w ]
  %i.gw = zext i32 %.3869 to i64
  %.val976 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gx = getelementptr inbounds nuw i8, ptr %.val976, i64 %i.gw
  %.0.copyload.i1036 = load i8, ptr %i.gx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1036) #8, !srcloc !21
  %i.gy = zext i32 %.4 to i64
  %.val995 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gz = getelementptr inbounds nuw i8, ptr %.val995, i64 %i.gy
  store i8 %.0.copyload.i1036, ptr %i.gz, align 1
  %i.ha = add i32 %.4, 1                          ; 2 uses
  %i.hb = add i32 %.3869, 1                       ; 2 uses
  %i.hc = add nuw nsw i32 %.1, 1                  ; 2 uses
  %.not891 = icmp eq i32 %i.hc, %i.gv
  br i1 %.not891, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %bb.w
  %.4870 = phi i32 [ %.0.copyload.i1033, %bb.w ], [ %i.hb, %.preheader ]
  %.5 = phi i32 [ %i.go, %bb.w ], [ %i.ha, %.preheader ]
  %i.hd = add i32 %.0.copyload.i1034, %.0.copyload.i1033
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.loopexit
  %.5871 = phi i32 [ %.4870, %.loopexit ], [ %i.il, %bb.x ] ; 2 uses
  %.6 = phi i32 [ %.5, %.loopexit ], [ %i.ik, %bb.x ] ; 2 uses
  %i.he = zext i32 %.5871 to i64                  ; 8 uses
  %.val975 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hf = getelementptr inbounds nuw i8, ptr %.val975, i64 %i.he
  %.0.copyload.i1037 = load i8, ptr %i.hf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1037) #8, !srcloc !21
  %i.hg = zext i32 %.6 to i64                     ; 8 uses
  %.val994 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hh = getelementptr inbounds nuw i8, ptr %.val994, i64 %i.hg
  store i8 %.0.copyload.i1037, ptr %i.hh, align 1
  %.val974 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hi = getelementptr inbounds nuw i8, ptr %.val974, i64 %i.he
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 1
  %.0.copyload.i1038 = load i8, ptr %i.hj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1038) #8, !srcloc !21
  %.val993 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hk = getelementptr inbounds nuw i8, ptr %.val993, i64 %i.hg
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 1
  store i8 %.0.copyload.i1038, ptr %i.hl, align 1
  %.val973 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hm = getelementptr inbounds nuw i8, ptr %.val973, i64 %i.he
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 2
  %.0.copyload.i1039 = load i8, ptr %i.hn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1039) #8, !srcloc !21
  %.val992 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ho = getelementptr inbounds nuw i8, ptr %.val992, i64 %i.hg
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 2
  store i8 %.0.copyload.i1039, ptr %i.hp, align 1
  %.val972 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hq = getelementptr inbounds nuw i8, ptr %.val972, i64 %i.he
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 3
  %.0.copyload.i1040 = load i8, ptr %i.hr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1040) #8, !srcloc !21
  %.val991 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hs = getelementptr inbounds nuw i8, ptr %.val991, i64 %i.hg
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 3
  store i8 %.0.copyload.i1040, ptr %i.ht, align 1
  %.val971 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hu = getelementptr inbounds nuw i8, ptr %.val971, i64 %i.he
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 4
  %.0.copyload.i1041 = load i8, ptr %i.hv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1041) #8, !srcloc !21
  %.val990 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hw = getelementptr inbounds nuw i8, ptr %.val990, i64 %i.hg
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  store i8 %.0.copyload.i1041, ptr %i.hx, align 1
  %.val970 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hy = getelementptr inbounds nuw i8, ptr %.val970, i64 %i.he
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 5
  %.0.copyload.i1042 = load i8, ptr %i.hz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1042) #8, !srcloc !21
  %.val989 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ia = getelementptr inbounds nuw i8, ptr %.val989, i64 %i.hg
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 5
  store i8 %.0.copyload.i1042, ptr %i.ib, align 1
  %.val969 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ic = getelementptr inbounds nuw i8, ptr %.val969, i64 %i.he
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 6
  %.0.copyload.i1043 = load i8, ptr %i.id, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1043) #8, !srcloc !21
  %.val988 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ie = getelementptr inbounds nuw i8, ptr %.val988, i64 %i.hg
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 6
  store i8 %.0.copyload.i1043, ptr %i.if, align 1
  %.val968 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ig = getelementptr inbounds nuw i8, ptr %.val968, i64 %i.he
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 7
  %.0.copyload.i1044 = load i8, ptr %i.ih, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1044) #8, !srcloc !21
  %.val987 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ii = getelementptr inbounds nuw i8, ptr %.val987, i64 %i.hg
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 7
  store i8 %.0.copyload.i1044, ptr %i.ij, align 1
  %i.ik = add i32 %.6, 8                          ; 2 uses
  %i.il = add i32 %.5871, 8                       ; 2 uses
  %.not892 = icmp eq i32 %i.il, %i.hd
  br i1 %.not892, label %bb.y, label %bb.x

bb.y:                                             ; preds = %bb.x
  %i.im = zext i32 %i.ik to i64
  %.val986 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.in = getelementptr inbounds nuw i8, ptr %.val986, i64 %i.im
  store i8 0, ptr %i.in, align 1
  %i.io = add i32 %i.b, -304
  %i.ip = add i32 %i.b, -16
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACallResult0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x2C0x200x28hermes0x3A0x3Avm0x3A0x3Adetail0x3A0x3ACallResultSpecialize0x2920x3E0x20hermes0x3A0x3Avm0x3A0x3AExternalStringPrimitive0x3Cchar0x3E0x3A0x3Acreate0x3Cstd0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3E0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x260x260x29(ptr noundef nonnull %0, i32 noundef %i.io, i32 noundef %1, i32 noundef %i.ip) #8
  %.val964 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iq = getelementptr inbounds nuw i8, ptr %.val964, i64 %i.e
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 331
  %.0.copyload.i1045 = load i8, ptr %i.ir, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1045) #8, !srcloc !22
  %i.is = icmp sgt i8 %.0.copyload.i1045, -1
  br i1 %i.is, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.val933 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.it = getelementptr inbounds nuw i8, ptr %.val933, i64 %i.gr
  %.0.copyload.i1046 = load i32, ptr %i.it, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1046) #8, !srcloc !19
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1046) #8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %bb.u
  %.val932 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iu = getelementptr inbounds nuw i8, ptr %.val932, i64 %i.e
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 32
  %.0.copyload.i1047 = load i32, ptr %i.iv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1047) #8, !srcloc !19
  %.not893 = icmp eq i32 %.0.copyload.i1047, 0
  br i1 %.not893, label %bb.aj, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.val931 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iw = getelementptr inbounds nuw i8, ptr %.val931, i64 %i.e
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 40
  %.0.copyload.i1048 = load i32, ptr %i.ix, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1048) #8, !srcloc !19
  %i.iy = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AIdentifierTable0x3A0x3AgetSymbolHandleFromPrimitive0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3APseudoHandle0x3Chermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.ae, i32 noundef %1, i32 noundef %.0.copyload.i1048) #8 ; 2 uses
  %i.iz = icmp eq i32 %i.iy, -1
  br i1 %i.iz, label %bb.aj, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ja = add i32 %1, 200
  %i.jb = zext i32 %i.iy to i64
  %.val930 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jc = getelementptr inbounds nuw i8, ptr %.val930, i64 %i.jb
  %.0.copyload.i1049 = load i32, ptr %i.jc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1049) #8, !srcloc !19
  %i.jd = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ANativeFunction0x3A0x3Acreate0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ACallResult0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x2C0x200x28hermes0x3A0x3Avm0x3A0x3Adetail0x3A0x3ACallResultSpecialize0x2920x3E0x200x280x2A0x290x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x290x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x2C0x20unsigned0x20int0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.ja, i32 noundef %5, i32 noundef %7, i32 noundef %.0.copyload.i1049, i32 noundef 1, i32 noundef 0) #8
  %i.je = zext i32 %i.jd to i64
  %.val1006 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jf = getelementptr inbounds nuw i8, ptr %.val1006, i64 %i.je
  %.0.copyload.i1050 = load i32, ptr %i.jf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1050) #8, !srcloc !23
  %i.jg = zext i32 %.0.copyload.i1050 to i64
  %i.jh = or disjoint i64 %i.jg, -281474976710656
  %i.ji = zext i32 %.0863 to i64
  %.val951 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jj = getelementptr inbounds nuw i8, ptr %.val951, i64 %i.ji
  store i64 %i.jh, ptr %i.jj, align 1
  %i.jk = tail call i32 @w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3A0x7Eraw_ostream0x280x290x2E1(ptr noundef nonnull %0, i32 noundef %i.fy) #8 ; 0 uses
  %.val929 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jl = getelementptr inbounds nuw i8, ptr %.val929, i64 %i.fn
  %.0.copyload.i1051 = load i32, ptr %i.jl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1051) #8, !srcloc !19
  %i.jm = icmp eq i32 %.0.copyload.i1051, %i.fm
  br i1 %i.jm, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1051) #8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.s, %bb.ad
  %i.jn = tail call i64 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3APropertyAccessor0x3A0x3Acreate0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ACallable0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ACallable0x3E0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.0872, i32 noundef %.0863) #8
  %i.jo = and i64 %i.jn, 4294967295
  %i.jp = or disjoint i64 %i.jo, -281474976710656 ; 2 uses
  %.val928 = load ptr, ptr %i.d, align 8, !tbaa !18
end_hunk_0
begin_hunk_1_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AflattenIntoArray0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSArray0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20unsigned0x20long0x20long0x2C0x20unsigned0x20long0x20long0x2C0x20double0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ACallable0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29:bb.a
.loopexit:                                        ; preds = %bb.aj, %bb.g
  %.2 = phi i64 [ %6, %bb.g ], [ %.1, %bb.aj ]
  %i.go = zext i32 %1 to i64                      ; 2 uses
  %.val714 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.gp = getelementptr inbounds nuw i8, ptr %.val714, i64 %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  store i64 %.2, ptr %i.gq, align 1
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit, %bb.ah, %bb.af, %bb.ad, %bb.aa, %bb.y, %bb.v, %bb.p, %bb.l, %bb.j
  %.sink779 = phi i64 [ %i.go, %.loopexit ], [ %i.gl, %bb.ah ], [ %i.fy, %bb.af ], [ %i.fn, %bb.ad ], [ %i.fg, %bb.aa ], [ %i.fb, %bb.y ], [ %i.ev, %bb.v ], [ %i.ei, %bb.p ], [ %i.ds, %bb.l ], [ %i.dk, %bb.j ]
  %.sink = phi i32 [ 1, %.loopexit ], [ 0, %bb.ah ], [ %i.fx, %bb.af ], [ 0, %bb.ad ], [ 0, %bb.aa ], [ 0, %bb.y ], [ 0, %bb.v ], [ 0, %bb.p ], [ 0, %bb.l ], [ 0, %bb.j ]
  %.val = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.gr = getelementptr inbounds nuw i8, ptr %.val, i64 %.sink779
  store i32 %.sink, ptr %i.gr, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A0x7EGCScope0x280x29(ptr noundef nonnull %0, i32 noundef %.pre-phi775) #8
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.c
  store i32 %i.b, ptr %i.a, align 8, !tbaa !17
  ret void
}

declare i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AgetComputedDescriptor0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AMutableHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AMutableHandle0x3Chermes0x3A0x3Avm0x3A0x3ASymbolID0x3E0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AComputedPropertyDescriptor0x260x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AgetComputedPropertyValue_RJS0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AMutableHandle0x3Chermes0x3A0x3Avm0x3A0x3ASymbolID0x3E0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AComputedPropertyDescriptor0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoLengthU640x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AdefineOwnComputed0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ADefinePropertyFlags0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APropOpFlags0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AdirectEval0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3E0x2C0x20hermes0x3A0x3AScopeChain0x20const0x260x2C0x20bool0x2C0x20bool0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 14 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 10 uses
  %i.c = add i32 %i.b, -80                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 179 uses
  %i.e = zext i32 %i.c to i64                     ; 23 uses
  %i.f = add nuw nsw i64 %i.e, 72                 ; 2 uses
  %.val1462 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %.val1462, i64 %i.f
  store i32 0, ptr %i.g, align 1
  %i.h = add nuw nsw i64 %i.e, 64                 ; 5 uses
  %.val1541 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %.val1541, i64 %i.h
  store i64 0, ptr %i.i, align 1
  %i.j = add i32 %i.b, -28                        ; 2 uses
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3A0x3AcreateStringView0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3E0x29(ptr noundef %0, i32 noundef %i.j, i32 noundef %2, i32 noundef %3) #8
  %.val1518 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %.val1518, i64 %i.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %.0.copyload.i = load i32, ptr %i.l, align 1    ; 8 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !19
  %i.m = icmp slt i32 %.0.copyload.i, 0
  %.val1517 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %.val1517, i64 %i.e ; 2 uses
  br i1 %i.m, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 52
  %.0.copyload.i1592 = load i32, ptr %i.o, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1592) #8, !srcloc !19
  %i.p = and i32 %.0.copyload.i, 1073741824
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = zext i32 %.0.copyload.i1592 to i64
  %.val1516 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %.val1516, i64 %i.q
  %.0.copyload.i1593 = load i32, ptr %i.r, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1593) #8, !srcloc !19
  %i.s = zext i32 %.0.copyload.i1593 to i64       ; 5 uses
  %.val1515 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %.val1515, i64 %i.s
  %.0.copyload.i1594 = load i32, ptr %i.t, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1594) #8, !srcloc !19
  %i.u = icmp ugt i32 %.0.copyload.i1594, 150994943
  br i1 %i.u, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = and i32 %.0.copyload.i1594, 251658240
  switch i32 %i.v, label %bb.g [
    i32 67108864, label %.thread
    i32 134217728, label %.thread1680
  ]

.thread1680:                                      ; preds = %bb.d
  %i.w = and i32 %.0.copyload.i, 1073741823       ; 2 uses
  %i.x = add nuw nsw i32 %i.w, 12
  %i.y = add i32 %i.x, %.0.copyload.i1593
  %i.z = add i32 %.0.copyload.i1593, 12
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.aa = and i32 %.0.copyload.i, 1073741823      ; 2 uses
  %i.ab = add i32 %.0.copyload.i1592, %i.aa
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %.val1512 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1512, i64 %i.s
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %.0.copyload.i1598 = load i32, ptr %i.ad, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1598) #8, !srcloc !19
  %i.ae = add i32 %.0.copyload.i1593, 12
  %.val1550 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %.val1550, i64 %i.s
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 23
  %.0.copyload.i1599 = load i8, ptr %i.ag, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1599) #8, !srcloc !22
  %i.ah = icmp slt i8 %.0.copyload.i1599, 0
  %i.ai = select i1 %i.ah, i32 %.0.copyload.i1598, i32 %i.ae ; 2 uses
  %i.aj = and i32 %.0.copyload.i, 1073741823      ; 2 uses
  %i.ak = add i32 %i.ai, %i.aj
  br label %bb.h

.thread:                                          ; preds = %bb.d
  %i.al = and i32 %.0.copyload.i, 1073741823      ; 2 uses
  %i.am = add nuw nsw i32 %i.al, 8
  %i.an = add i32 %i.am, %.0.copyload.i1593
  %i.ao = add i32 %.0.copyload.i1593, 8
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %.val1514 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %.val1514, i64 %i.s
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.0.copyload.i1595 = load i32, ptr %i.aq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1595) #8, !srcloc !19
  %i.ar = zext i32 %.0.copyload.i1595 to i64      ; 2 uses
  %.val1513 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %.val1513, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  %.0.copyload.i1596 = load i32, ptr %i.at, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1596) #8, !srcloc !19
  %.val1551 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %.val1551, i64 %i.ar
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 23
  %.0.copyload.i1597 = load i8, ptr %i.av, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1597) #8, !srcloc !22
  %i.aw = and i32 %.0.copyload.i, 1073741823      ; 2 uses
  %i.ax = icmp slt i8 %.0.copyload.i1597, 0
  %i.ay = add i32 %.0.copyload.i1595, 12
  %i.az = select i1 %i.ax, i32 %.0.copyload.i1596, i32 %i.ay
  %i.ba = add i32 %i.az, %i.aw
  %.val1511 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bb = getelementptr inbounds nuw i8, ptr %.val1511, i64 %i.s
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.0.copyload.i1600 = load i32, ptr %i.bc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1600) #8, !srcloc !19
  %i.bd = zext i32 %.0.copyload.i1600 to i64      ; 2 uses
  %.val1510 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %.val1510, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %.0.copyload.i1601 = load i32, ptr %i.bf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1601) #8, !srcloc !19
  %i.bg = add i32 %.0.copyload.i1600, 12
  %.val1549 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bh = getelementptr inbounds nuw i8, ptr %.val1549, i64 %i.bd
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 23
  %.0.copyload.i1602 = load i8, ptr %i.bi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1602) #8, !srcloc !22
  %i.bj = icmp slt i8 %.0.copyload.i1602, 0
  %i.bk = select i1 %i.bj, i32 %.0.copyload.i1601, i32 %i.bg
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread, %.thread1680, %bb.f, %bb.e
  %.01361 = phi i32 [ %i.ak, %bb.f ], [ %i.ba, %bb.g ], [ %i.y, %.thread1680 ], [ %i.an, %.thread ], [ %i.ab, %bb.e ] ; 4 uses
  %.01356 = phi i32 [ %i.ai, %bb.f ], [ %i.bk, %bb.g ], [ %i.z, %.thread1680 ], [ %i.ao, %.thread ], [ %.0.copyload.i1592, %bb.e ] ; 2 uses
  %.01354 = phi i32 [ %i.aj, %bb.f ], [ %i.aw, %bb.g ], [ %i.w, %.thread1680 ], [ %i.al, %.thread ], [ %i.aa, %bb.e ]
  %.val1509 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %.val1509, i64 %i.e
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 60
  %.0.copyload.i1603 = load i32, ptr %i.bm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1603) #8, !srcloc !19
  %i.bn = add i32 %.01354, %.01356
  %i.bo = add i32 %i.bn, %.0.copyload.i1603       ; 3 uses
  %i.bp = sub i32 %i.bo, %.01361
  %.not1381 = icmp eq i32 %.01356, 0
  %i.bq = select i1 %.not1381, i32 0, i32 %i.bp   ; 5 uses
  %i.br = icmp ugt i32 %i.bq, 2147483631
  br i1 %i.br, label %bb.cg, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bs = icmp samesign ult i32 %i.bq, 11
  br i1 %i.bs, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.val1588 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bt = trunc nuw nsw i32 %i.bq to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %.val1588, i64 %i.e
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 43
  store i8 %i.bt, ptr %i.bv, align 1
  %i.bw = add i32 %i.b, -48
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bx = or i32 %i.bq, 15
  %i.by = add nuw nsw i32 %i.bx, 1                ; 2 uses
  %i.bz = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.by) #8 ; 2 uses
  %7 = or disjoint i32 %i.by, -2147483648
  %.val1461 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ca = getelementptr inbounds nuw i8, ptr %.val1461, i64 %i.e
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  store i32 %7, ptr %i.cb, align 1
  %.val1460 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cc = getelementptr inbounds nuw i8, ptr %.val1460, i64 %i.e
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  store i32 %i.bz, ptr %i.cd, align 1
  %.val1459 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ce = getelementptr inbounds nuw i8, ptr %.val1459, i64 %i.e
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 36
  store i32 %i.bq, ptr %i.cf, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.11357 = phi i32 [ %i.bw, %bb.j ], [ %i.bz, %bb.k ] ; 2 uses
  %.not1382 = icmp eq i32 %.01361, 0
  %i.cg = icmp eq i32 %.01361, %i.bo
  %or.cond = select i1 %.not1382, i1 true, i1 %i.cg
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.l, %bb.o
  %.11362 = phi i32 [ %.21363, %bb.o ], [ %.01361, %bb.l ] ; 3 uses
  %.21358 = phi i32 [ %i.cp, %bb.o ], [ %.11357, %bb.l ] ; 2 uses
  %.11355 = phi i32 [ %.2, %bb.o ], [ 0, %bb.l ]  ; 3 uses
  %.01352 = phi i1 [ %i.cq, %bb.o ], [ true, %bb.l ]
  %.val1569 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %.01352, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.preheader
  %i.ch = zext i32 %.11362 to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %.val1569, i64 %i.ch
  %.0.copyload.i1604 = load i8, ptr %i.ci, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1604) #8, !srcloc !21
  %i.cj = add i32 %.11362, 1
  br label %bb.o

bb.n:                                             ; preds = %.preheader
  %i.ck = zext i32 %.11355 to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %.val1569, i64 %i.ck
  %.0.copyload.i1605 = load i8, ptr %i.cl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1605) #8, !srcloc !21
  %i.cm = add i32 %.11355, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.21363 = phi i32 [ %i.cj, %bb.m ], [ %.11362, %bb.n ] ; 3 uses
  %.2 = phi i32 [ %.11355, %bb.m ], [ %i.cm, %bb.n ] ; 2 uses
  %.11353.in = phi i8 [ %.0.copyload.i1604, %bb.m ], [ %.0.copyload.i1605, %bb.n ]
  %i.cn = zext i32 %.21358 to i64
  %.val1587 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.co = getelementptr inbounds nuw i8, ptr %.val1587, i64 %i.cn
  store i8 %.11353.in, ptr %i.co, align 1
  %i.cp = add i32 %.21358, 1                      ; 2 uses
  %i.cq = icmp ne i32 %.21363, 0                  ; 3 uses
  %i.cr = select i1 %i.cq, i32 %.21363, i32 %.2
  %i.cs = select i1 %i.cq, i32 %i.bo, i32 0
  %.not1384 = icmp eq i32 %i.cr, %i.cs
  br i1 %.not1384, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %bb.o, %bb.l
  %.31359 = phi i32 [ %.11357, %bb.l ], [ %i.cp, %bb.o ]
  %i.ct = zext i32 %.31359 to i64
  %.val1586 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cu = getelementptr inbounds nuw i8, ptr %.val1586, i64 %i.ct
  store i8 0, ptr %i.cu, align 1
  %.val1548 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cv = getelementptr inbounds nuw i8, ptr %.val1548, i64 %i.e
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 75
  %.0.copyload.i1606 = load i8, ptr %i.cw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1606) #8, !srcloc !22
  %i.cx = icmp slt i8 %.0.copyload.i1606, 0
  br i1 %i.cx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.loopexit
  %.val1508 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cy = getelementptr inbounds nuw i8, ptr %.val1508, i64 %i.h
  %.0.copyload.i1607 = load i32, ptr %i.cy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1607) #8, !srcloc !19
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1607) #8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.loopexit
  %.val1507 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cz = getelementptr inbounds nuw i8, ptr %.val1507, i64 %i.e
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 40
  %.0.copyload.i1608 = load i32, ptr %i.da, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1608) #8, !srcloc !19
  %.val1458 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.db = getelementptr inbounds nuw i8, ptr %.val1458, i64 %i.f
  store i32 %.0.copyload.i1608, ptr %i.db, align 1
  %.val1559 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dc = getelementptr inbounds nuw i8, ptr %.val1559, i64 %i.e
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %.0.copyload.i1609 = load i64, ptr %i.dd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1609) #8, !srcloc !20
  %.val1540 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.de = getelementptr inbounds nuw i8, ptr %.val1540, i64 %i.h
  store i64 %.0.copyload.i1609, ptr %i.de, align 1
  %.pre = add i32 %i.b, -16
  br label %bb.t

bb.r:                                             ; preds = %bb.a
  %i.df = getelementptr inbounds nuw i8, ptr %i.n, i64 36
  store i64 17179869184, ptr %i.df, align 1
  %i.dg = add i32 %i.b, -36                       ; 2 uses
  %i.dh = add nuw nsw i64 %i.e, 32                ; 2 uses
  %.val1457 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.di = getelementptr inbounds nuw i8, ptr %.val1457, i64 %i.dh
  store i32 %i.dg, ptr %i.di, align 1
  %i.dj = add i32 %i.b, -56
  %i.dk = add i32 %i.b, -48
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AStringView0x3A0x3AgetUTF16Ref0x28llvh0x3A0x3ASmallVectorImpl0x3Cchar16_t0x3E0x260x2C0x20bool0x290x20const(ptr noundef nonnull %0, i32 noundef %i.dj, i32 noundef %i.j, i32 noundef %i.dk, i32 noundef 0) #8
  %.val1558 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dl = getelementptr inbounds nuw i8, ptr %.val1558, i64 %i.e
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %.0.copyload.i1610 = load i64, ptr %i.dm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1610) #8, !srcloc !20
  %.val1538 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dn = getelementptr inbounds nuw i8, ptr %.val1538, i64 %i.e
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store i64 %.0.copyload.i1610, ptr %i.do, align 1
  %i.dp = add i32 %i.b, -16                       ; 3 uses
  %i.dq = add i32 %i.b, -72
  %i.dr = tail call i32 @w2c_hermes_hermes0x3A0x3AconvertUTF16ToUTF8WithReplacements0x28std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x260x2C0x20llvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.dp, i32 noundef %i.dq) #8 ; 0 uses
  %.val1506 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ds = getelementptr inbounds nuw i8, ptr %.val1506, i64 %i.dh
  %.0.copyload.i1611 = load i32, ptr %i.ds, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1611) #8, !srcloc !19
  %i.dt = icmp eq i32 %i.dg, %.0.copyload.i1611
  br i1 %i.dt, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1611) #8
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.q
  %.pre-phi = phi i32 [ %i.dp, %bb.r ], [ %i.dp, %bb.s ], [ %.pre, %bb.q ]
  %.val1505 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.du = getelementptr inbounds nuw i8, ptr %.val1505, i64 %i.h
  %.0.copyload.i1612 = load i32, ptr %i.du, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1612) #8, !srcloc !19
  %i.dv = add nuw nsw i64 %i.e, 75                ; 2 uses
  %.val1567 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dw = getelementptr inbounds nuw i8, ptr %.val1567, i64 %i.dv
  %.0.copyload.i1613 = load i8, ptr %i.dw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1613) #8, !srcloc !21
  %i.dx = zext i8 %.0.copyload.i1613 to i32
  %.not1385 = icmp sgt i8 %.0.copyload.i1613, -1  ; 2 uses
  %i.dy = select i1 %.not1385, i32 %.pre-phi, i32 %.0.copyload.i1612
  %i.dz = add nuw nsw i64 %i.e, 16                ; 2 uses
  %.val1456 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ea = getelementptr inbounds nuw i8, ptr %.val1456, i64 %i.dz
  store i32 %i.dy, ptr %i.ea, align 1
  %.val1504 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eb = getelementptr inbounds nuw i8, ptr %.val1504, i64 %i.e
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 68
  %.0.copyload.i1614 = load i32, ptr %i.ec, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1614) #8, !srcloc !19
  %i.ed = select i1 %.not1385, i32 %i.dx, i32 %.0.copyload.i1614
  %.val1455 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ee = getelementptr inbounds nuw i8, ptr %.val1455, i64 %i.e
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 20
  store i32 %i.ed, ptr %i.ef, align 1
  %.val1557 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eg = getelementptr inbounds nuw i8, ptr %.val1557, i64 %i.dz
  %.0.copyload.i1615 = load i64, ptr %i.eg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1615) #8, !srcloc !20
  %.val1537 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eh = getelementptr inbounds nuw i8, ptr %.val1537, i64 %i.e
  store i64 %.0.copyload.i1615, ptr %i.eh, align 1
  %i.ei = add i32 %2, 704
  %i.ej = load i32, ptr %i.a, align 8, !tbaa !17  ; 12 uses
  %i.ek = add i32 %i.ej, -224                     ; 3 uses
  store i32 %i.ek, ptr %i.a, align 8, !tbaa !17
  %i.el = zext i32 %2 to i64                      ; 2 uses
  %.val1566 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.em = getelementptr inbounds nuw i8, ptr %.val1566, i64 %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 804
  %.0.copyload.i1616 = load i8, ptr %i.en, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1616) #8, !srcloc !21
  %i.eo = and i8 %.0.copyload.i1616, 1
  %.not1386 = icmp eq i8 %i.eo, 0
  br i1 %.not1386, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %.val1556 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ep = getelementptr inbounds nuw i8, ptr %.val1556, i64 %i.e
  %.0.copyload.i1617 = load i64, ptr %i.ep, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1617) #8, !srcloc !20
  %i.eq = zext i32 %i.ek to i64                   ; 4 uses
  %.val1536 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.er = getelementptr inbounds nuw i8, ptr %.val1536, i64 %i.eq
  store i64 %.0.copyload.i1617, ptr %i.er, align 1
  %.val1535 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.es = getelementptr inbounds nuw i8, ptr %.val1535, i64 %i.eq
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 216
  store i64 %.0.copyload.i1617, ptr %i.et, align 1
  %i.eu = load i32, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  %i.ev = add i32 %i.eu, -48                      ; 3 uses
end_hunk_1
begin_hunk_2_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AregExpPrototypeSymbolReplace0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
  %.12949 = phi i32 [ %.0.copyload.i3547, %bb.dk ], [ %.0.copyload.i3544, %bb.dj ] ; 3 uses
  %.62942 = phi i32 [ 14, %bb.dk ], [ %i.ye, %bb.dj ] ; 2 uses
  %.val3209 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.yr = getelementptr inbounds nuw i8, ptr %.val3209, i64 %.pre-phi
  %.0.copyload.i3548 = load i32, ptr %i.yr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3548) #8, !srcloc !19
  %i.ys = and i32 %.0.copyload.i3548, 16777212
  %i.yt = add nsw i32 %i.ys, -8
  %i.yu = lshr exact i32 %i.yt, 2
  %i.yv = icmp ugt i32 %i.yu, %.12949
  br i1 %i.yv, label %bb.dm, label %bb.dp

bb.dm:                                            ; preds = %bb.dl
  %i.yw = shl nuw i32 %.12949, 2
  %i.yx = add i32 %.72970, 8
  %i.yy = add i32 %i.yx, %i.yw                    ; 3 uses
  %i.yz = zext i32 %i.yy to i64
  %.val3090 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.za = getelementptr inbounds nuw i8, ptr %.val3090, i64 %i.yz
  store i32 %.62942, ptr %i.za, align 1
  %.val3208 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.zb = getelementptr inbounds nuw i8, ptr %.val3208, i64 %i.h
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 1364
  %.0.copyload.i3549 = load i32, ptr %i.zc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3549) #8, !srcloc !19
  %i.zd = and i32 %i.yy, -4194304
  %.not3048 = icmp eq i32 %.0.copyload.i3549, %i.zd
  br i1 %.not3048, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AconstructorWriteBarrierSlow0x28hermes0x3A0x3Avm0x3A0x3AGCHermesValueBase0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue320x3E0x20const0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3AHermesValue320x29(ptr noundef nonnull %0, i32 noundef %i.hi, i32 noundef %i.yy, i32 noundef %.62942) #8
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.ze = add nuw nsw i32 %.12949, 1
  %.val3089 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.zf = getelementptr inbounds nuw i8, ptr %.val3089, i64 %.pre-phi
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 4
  store i32 %i.ze, ptr %i.zg, align 1
  br label %bb.dq

bb.dp:                                            ; preds = %bb.dl
  %i.zh = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AArrayStorageBase0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue320x3E0x3A0x3ApushBackSlowPath0x28hermes0x3A0x3Avm0x3A0x3AMutableHandle0x3Chermes0x3A0x3Avm0x3A0x3AArrayStorageBase0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue320x3E0x3E0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.pp, i32 noundef %3, i32 noundef %.62934) #8
  %.not3047 = icmp eq i32 %i.zh, 0
  br i1 %.not3047, label %bb.fg, label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %.val3207 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.zi = getelementptr inbounds nuw i8, ptr %.val3207, i64 %i.xn
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 136
  %.0.copyload.i3550 = load i32, ptr %i.zj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3550) #8, !srcloc !19
  %i.zk = shl i32 %.0.copyload.i3538, 2
  %i.zl = add i32 %.0.copyload.i3550, %i.zk
  %i.zm = zext i32 %i.zl to i64
  %.val3206 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.zn = getelementptr inbounds nuw i8, ptr %.val3206, i64 %i.zm
  %.0.copyload.i3551 = load i32, ptr %i.zn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3551) #8, !srcloc !19
  %.val3088 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.zo = getelementptr inbounds nuw i8, ptr %.val3088, i64 %i.xo
  store i32 %.0.copyload.i3538, ptr %i.zo, align 1
  %i.zp = add i32 %.0.copyload.i3551, 128
  %.val3087 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.zq = getelementptr inbounds nuw i8, ptr %.val3087, i64 %i.xn
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 168
  store i32 %i.zp, ptr %i.zr, align 1
  %i.zs = zext i32 %.6 to i64
  %.val3086 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.zt = getelementptr inbounds nuw i8, ptr %.val3086, i64 %i.zs
  store i32 %.12951, ptr %i.zt, align 1
  %.val3205 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.zu = getelementptr inbounds nuw i8, ptr %.val3205, i64 %i.i
  %.0.copyload.i3552 = load i32, ptr %i.zu, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3552) #8, !srcloc !19
  %i.zv = add i32 %.0.copyload.i3552, 164         ; 2 uses
  %i.zw = icmp ult i64 %.3, %i.ty
  %i.zx = zext i32 %.0.copyload.i3552 to i64      ; 2 uses
  %.val3204 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.zy = getelementptr inbounds nuw i8, ptr %.val3204, i64 %i.zx
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 164
  %.0.copyload.i3553 = load i32, ptr %i.zz, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3553) #8, !srcloc !19
  %i.aaa = add nuw i64 %.3, 1
  br i1 %i.zw, label %bb.dg, label %.loopexit3612

.loopexit3612:                                    ; preds = %bb.dq, %bb.df
  %.pre-phi3720 = phi i64 [ %i.xi, %bb.df ], [ %i.zx, %bb.dq ]
  %.13 = phi i32 [ %.0.copyload.i3536, %bb.df ], [ %.0.copyload.i3552, %bb.dq ]
  %.22952 = phi i32 [ %.0.copyload.i3537, %bb.df ], [ %.0.copyload.i3553, %bb.dq ] ; 4 uses
  %.7 = phi i32 [ %i.xh, %bb.df ], [ %i.zv, %bb.dq ]
  %.val3203 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aab = getelementptr inbounds nuw i8, ptr %.val3203, i64 %.pre-phi3720
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 168
  %.0.copyload.i3554 = load i32, ptr %i.aac, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3554) #8, !srcloc !19
  %i.aad = icmp ugt i32 %.0.copyload.i3554, %.22952
  br i1 %i.aad, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %.loopexit3612
  %i.aae = add i32 %.22952, 8
  %i.aaf = zext i32 %.7 to i64
  %.val3085 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aag = getelementptr inbounds nuw i8, ptr %.val3085, i64 %i.aaf
  store i32 %i.aae, ptr %i.aag, align 1
  %i.aah = zext i32 %.22952 to i64
  %.val3328 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aai = getelementptr inbounds nuw i8, ptr %.val3328, i64 %i.aah
  store i64 -1688849860263936, ptr %i.aai, align 1
  br label %bb.dt

bb.ds:                                            ; preds = %.loopexit3612
  %i.aaj = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.13, i64 noundef -1688849860263936) #8
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %.32953 = phi i32 [ %.22952, %bb.dr ], [ %i.aaj, %bb.ds ] ; 5 uses
  %.val3084 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aak = getelementptr inbounds nuw i8, ptr %.val3084, i64 %i.e
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 20
  store i32 0, ptr %i.aal, align 1
  %.val3083 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aam = getelementptr inbounds nuw i8, ptr %.val3083, i64 %i.pq
  store i32 0, ptr %i.aam, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AgetNamedWithReceiver_RJS0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APropOpFlags0x2C0x20hermes0x3A0x3Avm0x3A0x3APropertyCacheEntry0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.hh, i32 noundef %.02935, i32 noundef %3, i32 noundef 334, i32 noundef %.02935, i32 noundef %i.pr, i32 noundef 0) #8
  %.val3202 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aan = getelementptr inbounds nuw i8, ptr %.val3202, i64 %i.hl
  %.0.copyload.i3555 = load i32, ptr %i.aan, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3555) #8, !srcloc !19
  %.not3049 = icmp eq i32 %.0.copyload.i3555, 0
  br i1 %.not3049, label %bb.fj, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %.val3380 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aao = getelementptr inbounds nuw i8, ptr %.val3380, i64 %i.pd
  %.0.copyload.i3556 = load i64, ptr %i.aao, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3556) #8, !srcloc !20
  %i.aap = ashr i64 %.0.copyload.i3556, 47
  %i.aaq = and i64 %i.aap, 4294967295             ; 2 uses
  %.not3050 = icmp eq i64 %i.aaq, 4294967284      ; 3 uses
  br i1 %.not3050, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.aar = zext i32 %.32953 to i64
  %.val3327 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aas = getelementptr inbounds nuw i8, ptr %.val3327, i64 %i.aar
  store i64 %.0.copyload.i3556, ptr %i.aas, align 1
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %.val3201 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aat = getelementptr inbounds nuw i8, ptr %.val3201, i64 %i.i
  %.0.copyload.i3557 = load i32, ptr %i.aat, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3557) #8, !srcloc !19
  %i.aau = zext i32 %.0.copyload.i3557 to i64     ; 2 uses
  %i.aav = add nuw nsw i64 %i.aau, 164            ; 2 uses
  %.val3200 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aaw = getelementptr inbounds nuw i8, ptr %.val3200, i64 %i.aav
  %.0.copyload.i3558 = load i32, ptr %i.aaw, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3558) #8, !srcloc !19
  %.val3199 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aax = getelementptr inbounds nuw i8, ptr %.val3199, i64 %i.aau
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aax, i64 168
  %.0.copyload.i3559 = load i32, ptr %i.aay, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3559) #8, !srcloc !19
  %i.aaz = icmp ult i32 %.0.copyload.i3558, %.0.copyload.i3559
  br i1 %i.aaz, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.aba = add i32 %.0.copyload.i3558, 8
  %.val3082 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.abb = getelementptr inbounds nuw i8, ptr %.val3082, i64 %i.aav
  store i32 %i.aba, ptr %i.abb, align 1
  %i.abc = zext i32 %.0.copyload.i3558 to i64
  %.val3326 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.abd = getelementptr inbounds nuw i8, ptr %.val3326, i64 %i.abc
  store i64 -844424930131968, ptr %i.abd, align 1
  br label %bb.dz

bb.dy:                                            ; preds = %bb.dw
  %i.abe = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i3557, i64 noundef -844424930131968) #8
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %.72943 = phi i32 [ %.0.copyload.i3558, %bb.dx ], [ %i.abe, %bb.dy ] ; 2 uses
  %.val3379 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.abf = getelementptr inbounds nuw i8, ptr %.val3379, i64 %i.cz
  %.0.copyload.i3560 = load i64, ptr %i.abf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3560) #8, !srcloc !20
  %i.abg = icmp ult i64 %.0.copyload.i3560, -844424930131968
  br i1 %i.abg, label %bb.ez, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.abh = and i64 %.0.copyload.i3560, 4294967295 ; 2 uses
  %.not3051 = icmp eq i64 %i.abh, 0
  br i1 %.not3051, label %bb.ez, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.abi = icmp ne i64 %i.aaq, 4294967284
  %i.abj = zext i1 %i.abi to i64
  %5 = add nuw nsw i64 %i.ty, %i.abj              ; 2 uses
  %i.abk = add nuw nsw i64 %5, 3                  ; 2 uses
  %i.abl = trunc nuw nsw i64 %i.abk to i32
  %.val3198 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.abm = getelementptr inbounds nuw i8, ptr %.val3198, i64 %i.h
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 5592
  %.0.copyload.i3561 = load i32, ptr %i.abn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3561) #8, !srcloc !19
  %.val3197 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.abo = getelementptr inbounds nuw i8, ptr %.val3197, i64 %i.ps
  %.0.copyload.i3562 = load i32, ptr %i.abo, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3562) #8, !srcloc !19
  %i.abp = sub i32 %.0.copyload.i3561, %.0.copyload.i3562
  %i.abq = ashr i32 %i.abp, 3
  %i.abr = zext i32 %i.abq to i64
  %i.abs = add nuw nsw i64 %5, 42
  %i.abt = icmp samesign ugt i64 %i.abs, %i.abr
  br i1 %i.abt, label %bb.fh, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %.val3196 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.abu = getelementptr inbounds nuw i8, ptr %.val3196, i64 %i.pt
  %.0.copyload.i3563 = load i32, ptr %i.abu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3563) #8, !srcloc !19
  %.val3195 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.abv = getelementptr inbounds nuw i8, ptr %.val3195, i64 %i.pu
  %.0.copyload.i3564 = load i32, ptr %i.abv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3564) #8, !srcloc !19
  %i.abw = sub i32 %.0.copyload.i3564, %i.c
  %i.abx = icmp ult i32 %.0.copyload.i3563, %i.abw
  br i1 %i.abx, label %bb.ed, label %bb.ef

bb.ed:                                            ; preds = %bb.ec
  %.val3194 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aby = getelementptr inbounds nuw i8, ptr %.val3194, i64 %i.h
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 5620
  %.0.copyload.i3565 = load i32, ptr %i.abz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3565) #8, !srcloc !19
  tail call void @w2c_hermes_hermes0x3A0x3Aoscompat0x3A0x3Athread_stack_bounds0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.pv, i32 noundef %.0.copyload.i3565) #8
  %.val3193 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aca = getelementptr inbounds nuw i8, ptr %.val3193, i64 %i.pq
  %.0.copyload.i3566 = load i32, ptr %i.aca, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3566) #8, !srcloc !19
  %.val3081 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.acb = getelementptr inbounds nuw i8, ptr %.val3081, i64 %i.pu
  store i32 %.0.copyload.i3566, ptr %i.acb, align 1
  %.val3192 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.acc = getelementptr inbounds nuw i8, ptr %.val3192, i64 %i.e
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acc, i64 60
  %.0.copyload.i3567 = load i32, ptr %i.acd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3567) #8, !srcloc !19
  %.val3080 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ace = getelementptr inbounds nuw i8, ptr %.val3080, i64 %i.pt
  store i32 %.0.copyload.i3567, ptr %i.ace, align 1
  %i.acf = sub i32 %.0.copyload.i3566, %i.c
  %i.acg = icmp ugt i32 %i.acf, %.0.copyload.i3567
  br i1 %i.acg, label %bb.fh, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %.val3191 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ach = getelementptr inbounds nuw i8, ptr %.val3191, i64 %i.ps
  %.0.copyload.i3568 = load i32, ptr %i.ach, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3568) #8, !srcloc !19
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ec, %bb.ee
  %.12907 = phi i32 [ %.0.copyload.i3568, %bb.ee ], [ %.0.copyload.i3562, %bb.ec ] ; 2 uses
  %i.aci = shl nuw nsw i32 %i.abl, 3              ; 2 uses
  %i.acj = add nuw nsw i32 %i.aci, 56
  %i.ack = add i32 %.12907, %i.acj                ; 7 uses
  %.val3079 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.acl = getelementptr inbounds nuw i8, ptr %.val3079, i64 %i.ps
  store i32 %i.ack, ptr %i.acl, align 1
  %.val3410 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.acm = getelementptr inbounds nuw i8, ptr %.val3410, i64 %i.h
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acm, i64 5608
  %.0.copyload.i3569 = load i32, ptr %i.acn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3569) #8, !srcloc !23
  %i.aco = zext i32 %.0.copyload.i3569 to i64
  %i.acp = add i32 %i.ack, -24
  %i.acq = zext i32 %i.acp to i64                 ; 2 uses
  %.val3325 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.acr = getelementptr inbounds nuw i8, ptr %.val3325, i64 %i.acq
  store i64 0, ptr %i.acr, align 1
  %i.acs = add i32 %i.ack, -8
  %i.act = zext i32 %i.acs to i64
  %.val3324 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.acu = getelementptr inbounds nuw i8, ptr %.val3324, i64 %i.act
  store i64 %i.aco, ptr %i.acu, align 1
  %i.acv = add i32 %i.ack, -32
  %6 = or disjoint i64 %i.abk, -1125899906842624
  %i.acw = zext i32 %i.acv to i64
  %.val3323 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.acx = getelementptr inbounds nuw i8, ptr %.val3323, i64 %i.acw
  store i64 %6, ptr %i.acx, align 1
  %i.acy = add i32 %i.ack, -40
  %i.acz = zext i32 %i.acy to i64
  %.val3322 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ada = getelementptr inbounds nuw i8, ptr %.val3322, i64 %i.acz
  store i64 -1688849860263936, ptr %i.ada, align 1
  %i.adb = add i32 %i.ack, -48
  %i.adc = or disjoint i64 %i.abh, -281474976710656
  %i.add = zext i32 %i.adb to i64
  %.val3321 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ade = getelementptr inbounds nuw i8, ptr %.val3321, i64 %i.add
  store i64 %i.adc, ptr %i.ade, align 1
  %i.adf = add i32 %.12907, %i.aci                ; 2 uses
  %i.adg = zext i32 %i.adf to i64
  %.val3320 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.adh = getelementptr inbounds nuw i8, ptr %.val3320, i64 %i.adg
  store i64 -1688849860263936, ptr %i.adh, align 1
  %.val3319 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.adi = getelementptr inbounds nuw i8, ptr %.val3319, i64 %i.acq
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 8
  store i64 0, ptr %i.adj, align 1
  %i.adk = add i32 %i.ack, -64                    ; 3 uses
  %i.adl = zext i32 %.02919 to i64
  %.val3378 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.adm = getelementptr inbounds nuw i8, ptr %.val3378, i64 %i.adl
  %.0.copyload.i3570 = load i64, ptr %i.adm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3570) #8, !srcloc !20
  %i.adn = zext i32 %i.adk to i64
  %.val3318 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ado = getelementptr inbounds nuw i8, ptr %.val3318, i64 %i.adn
  store i64 %.0.copyload.i3570, ptr %i.ado, align 1
  %.val3190 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.adp = getelementptr inbounds nuw i8, ptr %.val3190, i64 %i.pn
  %.0.copyload.i3571 = load i32, ptr %i.adp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3571) #8, !srcloc !19
  %i.adq = zext i32 %.0.copyload.i3571 to i64     ; 2 uses
  %.val3189 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.adr = getelementptr inbounds nuw i8, ptr %.val3189, i64 %i.adq
  %.0.copyload.i3572 = load i32, ptr %i.adr, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3572) #8, !srcloc !19
  %i.ads = zext i32 %.0.copyload.i3572 to i64
  %.val3188 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.adt = getelementptr inbounds nuw i8, ptr %.val3188, i64 %i.ads
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adt, i64 4
  %.0.copyload.i3573 = load i32, ptr %i.adu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3573) #8, !srcloc !19
  %.not3052 = icmp eq i32 %.0.copyload.i3573, 0
  br i1 %.not3052, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.ef, %bb.ep
  %.82971 = phi i32 [ %.0.copyload.i3576, %bb.ep ], [ %.0.copyload.i3572, %bb.ef ]
  %.14 = phi i32 [ %i.afd, %bb.ep ], [ 1, %bb.ef ] ; 3 uses
  %i.adv = shl i32 %.14, 2
  %i.adw = add i32 %i.adv, %.82971
  %i.adx = zext i32 %i.adw to i64
  %.val3187 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ady = getelementptr inbounds nuw i8, ptr %.val3187, i64 %i.adx
  %i.adz = getelementptr inbounds nuw i8, ptr %i.ady, i64 4
  %.0.copyload.i3574 = load i32, ptr %i.adz, align 1 ; 9 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3574) #8, !srcloc !19
  %i.aea = and i32 %.0.copyload.i3574, 15
  switch i32 %i.aea, label %bb.eg [
    i32 1, label %bb.eh
    i32 2, label %bb.ei
    i32 3, label %bb.ej
    i32 4, label %bb.ek
    i32 5, label %bb.el
    i32 6, label %bb.em
    i32 7, label %bb.en
    i32 15, label %bb.eo
    i32 9, label %bb.eh
    i32 10, label %bb.ei
    i32 11, label %bb.ej
    i32 12, label %bb.ek
    i32 13, label %bb.el
    i32 14, label %bb.ep
  ]

bb.eg:                                            ; preds = %.preheader
  %i.aeb = zext i32 %.0.copyload.i3574 to i64
  %i.aec = or disjoint i64 %i.aeb, -281474976710656
  br label %bb.ep

bb.eh:                                            ; preds = %.preheader, %.preheader
  %i.aed = and i32 %.0.copyload.i3574, -8
  %i.aee = zext i32 %i.aed to i64
  %i.aef = or disjoint i64 %i.aee, -562949953421312
  br label %bb.ep

bb.ei:                                            ; preds = %.preheader, %.preheader
  %i.aeg = and i32 %.0.copyload.i3574, -8
  %i.aeh = zext i32 %i.aeg to i64
  %i.aei = or disjoint i64 %i.aeh, -844424930131968
  br label %bb.ep

bb.ej:                                            ; preds = %.preheader, %.preheader
  %i.aej = and i32 %.0.copyload.i3574, -8
  %i.aek = zext i32 %i.aej to i64
  %.val3415 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ael = getelementptr inbounds nuw i8, ptr %.val3415, i64 %i.aek
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 8
  %.0.copyload.i3575 = load double, ptr %i.aem, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i3575) #8, !srcloc !37
  %i.aen = bitcast double %.0.copyload.i3575 to i64
  %i.aeo = fcmp uno double %.0.copyload.i3575, 0.000000e+00
  %i.aep = select i1 %i.aeo, i64 9221120237041090560, i64 %i.aen
  br label %bb.ep

bb.ek:                                            ; preds = %.preheader, %.preheader
  %i.aeq = ashr i32 %.0.copyload.i3574, 3
  %i.aer = sitofp i32 %i.aeq to double
  %i.aes = bitcast double %i.aer to i64
  br label %bb.ep

bb.el:                                            ; preds = %.preheader, %.preheader
  %i.aet = lshr i32 %.0.copyload.i3574, 3
  %i.aeu = zext nneg i32 %i.aet to i64
  %i.aev = or disjoint i64 %i.aeu, -1266637395197952
  br label %bb.ep

bb.em:                                            ; preds = %.preheader
  %i.aew = icmp ugt i32 %.0.copyload.i3574, 15
  %i.aex = zext i1 %i.aew to i64
  %i.aey = or disjoint i64 %i.aex, -1407374883553280
  br label %bb.ep

bb.en:                                            ; preds = %.preheader
  br label %bb.ep

bb.eo:                                            ; preds = %.preheader
  br label %bb.ep

bb.ep:                                            ; preds = %.preheader, %bb.eo, %bb.en, %bb.em, %bb.el, %bb.ek, %bb.ej, %bb.ei, %bb.eh, %bb.eg
  %.4 = phi i64 [ %i.aec, %bb.eg ], [ %i.aey, %bb.em ], [ -1970324836974592, %bb.en ], [ -1548112371908608, %bb.eo ], [ %i.aef, %bb.eh ], [ %i.aei, %bb.ei ], [ %i.aep, %bb.ej ], [ %i.aes, %bb.ek ], [ %i.aev, %bb.el ], [ -1688849860263936, %.preheader ]
  %i.aez = shl i32 %.14, 3
  %i.afa = sub i32 %i.adk, %i.aez
  %i.afb = zext i32 %i.afa to i64
  %.val3317 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.afc = getelementptr inbounds nuw i8, ptr %.val3317, i64 %i.afb
  store i64 %.4, ptr %i.afc, align 1
  %i.afd = add i32 %.14, 1                        ; 3 uses
  %.val3186 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.afe = getelementptr inbounds nuw i8, ptr %.val3186, i64 %i.adq
  %.0.copyload.i3576 = load i32, ptr %i.afe, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3576) #8, !srcloc !19
  %i.aff = zext i32 %.0.copyload.i3576 to i64
  %.val3185 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.afg = getelementptr inbounds nuw i8, ptr %.val3185, i64 %i.aff
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afg, i64 4
  %.0.copyload.i3577 = load i32, ptr %i.afh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3577) #8, !srcloc !19
  %.not3053 = icmp ugt i32 %i.afd, %.0.copyload.i3577
  br i1 %.not3053, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %bb.ep, %bb.ef
  %.15 = phi i32 [ 1, %bb.ef ], [ %i.afd, %bb.ep ] ; 2 uses
  %i.afi = shl i32 %.15, 3
  %i.afj = sub i32 %i.adf, %i.afi                 ; 2 uses
  %i.afk = add i32 %i.afj, -8
  %i.afl = uitofp i32 %.1 to double
  %i.afm = zext i32 %i.afk to i64
  %.val3412 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.afn = getelementptr inbounds nuw i8, ptr %.val3412, i64 %i.afm
  store double %i.afl, ptr %i.afn, align 1
  %i.afo = xor i32 %.15, -1
  %i.afp = shl i32 %i.afo, 3
  %i.afq = add i32 %i.adk, %i.afp
  %.val3377 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.afr = getelementptr inbounds nuw i8, ptr %.val3377, i64 %i.pw
  %.0.copyload.i3578 = load i64, ptr %i.afr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3578) #8, !srcloc !20
  %i.afs = zext i32 %i.afq to i64
  %.val3316 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aft = getelementptr inbounds nuw i8, ptr %.val3316, i64 %i.afs
  store i64 %.0.copyload.i3578, ptr %i.aft, align 1
  br i1 %.not3050, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %.loopexit
  %i.afu = add i32 %i.afj, -24
  %i.afv = zext i32 %.32953 to i64
  %.val3376 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.afw = getelementptr inbounds nuw i8, ptr %.val3376, i64 %i.afv
  %.0.copyload.i3579 = load i64, ptr %i.afw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3579) #8, !srcloc !20
  %i.afx = zext i32 %i.afu to i64
  %.val3315 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.afy = getelementptr inbounds nuw i8, ptr %.val3315, i64 %i.afx
  store i64 %.0.copyload.i3579, ptr %i.afy, align 1
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %.loopexit
  %.val3184 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.afz = getelementptr inbounds nuw i8, ptr %.val3184, i64 %i.cz
  %.0.copyload.i3580 = load i32, ptr %i.afz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3580) #8, !srcloc !19
  %i.aga = zext i32 %.0.copyload.i3580 to i64
  %.val3183 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.agb = getelementptr inbounds nuw i8, ptr %.val3183, i64 %i.aga
  %.0.copyload.i3581 = load i32, ptr %i.agb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3581) #8, !srcloc !19
  %i.agc = lshr i32 %.0.copyload.i3581, 22
  %i.agd = and i32 %i.agc, 1020
  %.val3182 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.age = zext nneg i32 %i.agd to i64
  %i.agf = getelementptr inbounds nuw i8, ptr %.val3182, i64 %i.age
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agf, i64 289808
  %.0.copyload.i3582 = load i32, ptr %i.agg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3582) #8, !srcloc !19
  %i.agh = zext i32 %.0.copyload.i3582 to i64
  %.val3181 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.agi = getelementptr inbounds nuw i8, ptr %.val3181, i64 %i.agh
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agi, i64 60
  %.0.copyload.i3583 = load i32, ptr %i.agj, align 1 ; 3 uses
end_hunk_2
begin_hunk_3_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AnumberPrototypeToString0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
bb.aq:                                            ; preds = %bb.ac
  %.val1334 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hy = getelementptr inbounds nuw i8, ptr %.val1334, i64 %i.ch
  %.0.copyload.i1457 = load i32, ptr %i.hy, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1457) #8, !srcloc !19
  %.val1333 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hz = getelementptr inbounds nuw i8, ptr %.val1333, i64 %i.bq
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 92
  %.0.copyload.i1458 = load i32, ptr %i.ia, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1458) #8, !srcloc !19
  %.not1259 = icmp ult i32 %.0.copyload.i1457, %.0.copyload.i1458
  br i1 %.not1259, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ib = add i32 %i.bo, -92
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.ib, i32 noundef %i.cj, i32 noundef 0, i32 noundef 1) #8
  %.val1332 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ic = getelementptr inbounds nuw i8, ptr %.val1332, i64 %i.ch
  %.0.copyload.i1459 = load i32, ptr %i.ic, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1459) #8, !srcloc !19
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %.5 = phi i32 [ %.0.copyload.i1459, %bb.ar ], [ %.0.copyload.i1457, %bb.aq ]
  %.val1331 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.id = getelementptr inbounds nuw i8, ptr %.val1331, i64 %i.ck
  %.0.copyload.i1460 = load i32, ptr %i.id, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1460) #8, !srcloc !19
  %i.ie = add i32 %.0.copyload.i1460, %.5
  %i.if = zext i32 %i.ie to i64
  %.val1410 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ig = getelementptr inbounds nuw i8, ptr %.val1410, i64 %i.if
  store i8 48, ptr %i.ig, align 1
  %.val1330 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ih = getelementptr inbounds nuw i8, ptr %.val1330, i64 %i.ch
  %.0.copyload.i1461 = load i32, ptr %i.ih, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1461) #8, !srcloc !19
  %i.ii = add i32 %.0.copyload.i1461, 1
  %.val1289 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ij = getelementptr inbounds nuw i8, ptr %.val1289, i64 %i.ch
  store i32 %i.ii, ptr %i.ij, align 1
  br label %.loopexit1506

.loopexit1506:                                    ; preds = %.preheader1505, %bb.ap, %.loopexit1508, %bb.as
  %.val1329 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ik = getelementptr inbounds nuw i8, ptr %.val1329, i64 %i.cu
  %.0.copyload.i1462 = load i32, ptr %i.ik, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1462) #8, !srcloc !19
  %.not1267 = icmp eq i32 %.0.copyload.i1462, 0
  br i1 %.not1267, label %bb.ba, label %bb.at

bb.at:                                            ; preds = %.loopexit1506
  %.val1328 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.il = getelementptr inbounds nuw i8, ptr %.val1328, i64 %i.ch
  %.0.copyload.i1463 = load i32, ptr %i.il, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1463) #8, !srcloc !19
  %i.im = add nuw nsw i64 %i.bq, 92               ; 2 uses
  %.val1327 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.in = getelementptr inbounds nuw i8, ptr %.val1327, i64 %i.im
  %.0.copyload.i1464 = load i32, ptr %i.in, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1464) #8, !srcloc !19
  %.not1268 = icmp ult i32 %.0.copyload.i1463, %.0.copyload.i1464
  br i1 %.not1268, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.io = add i32 %i.bo, -92
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.io, i32 noundef %i.cj, i32 noundef 0, i32 noundef 1) #8
  %.val1326 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ip = getelementptr inbounds nuw i8, ptr %.val1326, i64 %i.ch
  %.0.copyload.i1465 = load i32, ptr %i.ip, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1465) #8, !srcloc !19
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %.6 = phi i32 [ %.0.copyload.i1465, %bb.au ], [ %.0.copyload.i1463, %bb.at ]
  %.val1325 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iq = getelementptr inbounds nuw i8, ptr %.val1325, i64 %i.ck
  %.0.copyload.i1466 = load i32, ptr %i.iq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1466) #8, !srcloc !19
  %i.ir = add i32 %.0.copyload.i1466, %.6
  %i.is = zext i32 %i.ir to i64
  %.val1409 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.it = getelementptr inbounds nuw i8, ptr %.val1409, i64 %i.is
  store i8 46, ptr %i.it, align 1
  %.val1324 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iu = getelementptr inbounds nuw i8, ptr %.val1324, i64 %i.ch
  %.0.copyload.i1467 = load i32, ptr %i.iu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1467) #8, !srcloc !19
  %i.iv = add i32 %.0.copyload.i1467, 1           ; 5 uses
  %.val1288 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iw = getelementptr inbounds nuw i8, ptr %.val1288, i64 %i.ch
  store i32 %i.iv, ptr %i.iw, align 1
  %.val1323 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ix = getelementptr inbounds nuw i8, ptr %.val1323, i64 %i.cx
  %.0.copyload.i1468 = load i32, ptr %i.ix, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1468) #8, !srcloc !19
  %.val1322 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iy = getelementptr inbounds nuw i8, ptr %.val1322, i64 %i.cu
  %.0.copyload.i1469 = load i32, ptr %i.iy, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1469) #8, !srcloc !19
  %.val1321 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iz = getelementptr inbounds nuw i8, ptr %.val1321, i64 %i.im
  %.0.copyload.i1470 = load i32, ptr %i.iz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1470) #8, !srcloc !19
  %i.ja = sub i32 %.0.copyload.i1470, %i.iv
  %i.jb = icmp ugt i32 %.0.copyload.i1469, %i.ja
  br i1 %i.jb, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.jc = add i32 %i.bo, -92
  %i.jd = add i32 %.0.copyload.i1469, %i.iv
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.jc, i32 noundef %i.cj, i32 noundef %i.jd, i32 noundef 1) #8
  %.val1320 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.je = getelementptr inbounds nuw i8, ptr %.val1320, i64 %i.ch
  %.0.copyload.i1471 = load i32, ptr %i.je, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1471) #8, !srcloc !19
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %.not1269 = icmp eq i32 %.0.copyload.i1469, 0
  br i1 %.not1269, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.41224 = phi i32 [ %.0.copyload.i1471, %bb.aw ], [ %i.iv, %bb.ax ]
  %.val1319 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jf = getelementptr inbounds nuw i8, ptr %.val1319, i64 %i.ck
  %.0.copyload.i1472 = load i32, ptr %i.jf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1472) #8, !srcloc !19
  %i.jg = add i32 %.0.copyload.i1472, %.41224
  %i.jh = tail call i32 @w2c_hermes_0x5F_memcpy(ptr noundef nonnull %0, i32 noundef %i.jg, i32 noundef %.0.copyload.i1468, i32 noundef %.0.copyload.i1469) #8 ; 0 uses
  %.val1318 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ji = getelementptr inbounds nuw i8, ptr %.val1318, i64 %i.ch
  %.0.copyload.i1473 = load i32, ptr %i.ji, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1473) #8, !srcloc !19
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %.51225 = phi i32 [ %.0.copyload.i1473, %bb.ay ], [ %i.iv, %bb.ax ]
  %i.jj = add i32 %.51225, %.0.copyload.i1469
  %.val1287 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jk = getelementptr inbounds nuw i8, ptr %.val1287, i64 %i.ch
  store i32 %i.jj, ptr %i.jk, align 1
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.loopexit1506
  br i1 %i.da, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %.val1317 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jl = getelementptr inbounds nuw i8, ptr %.val1317, i64 %i.ck
  %.0.copyload.i1474 = load i32, ptr %i.jl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1474) #8, !srcloc !19
  %.val1408 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jm = getelementptr inbounds nuw i8, ptr %.val1408, i64 %i.bq
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 160
  store i8 45, ptr %i.jn, align 1
  %i.jo = add i32 %i.bo, -92
  %i.jp = add i32 %i.bo, -16
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorImpl0x3Cchar0x3E0x3A0x3Ainsert0x28char0x2A0x2C0x20char0x260x260x29(ptr noundef nonnull %0, i32 noundef %i.jo, i32 noundef %.0.copyload.i1474, i32 noundef %i.jp) #8
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.val1316 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jq = getelementptr inbounds nuw i8, ptr %.val1316, i64 %i.ck
  %.0.copyload.i1475 = load i32, ptr %i.jq, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1475) #8, !srcloc !19
  %.val1315 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jr = getelementptr inbounds nuw i8, ptr %.val1315, i64 %i.ch
  %.0.copyload.i1476 = load i32, ptr %i.jr, align 1 ; 8 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1476) #8, !srcloc !19
  %i.js = icmp ult i32 %.0.copyload.i1476, 65536
  br i1 %i.js, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %.val1286 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jt = getelementptr inbounds nuw i8, ptr %.val1286, i64 %i.bq
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 164
  store i32 %.0.copyload.i1476, ptr %i.ju, align 1
  %i.jv = add nuw nsw i64 %i.bq, 160              ; 2 uses
  %.val1285 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jw = getelementptr inbounds nuw i8, ptr %.val1285, i64 %i.jv
  store i32 %.0.copyload.i1475, ptr %i.jw, align 1
  %.val1380 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jx = getelementptr inbounds nuw i8, ptr %.val1380, i64 %i.jv
  %.0.copyload.i1477 = load i64, ptr %i.jx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1477) #8, !srcloc !20
  %.val1360 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jy = getelementptr inbounds nuw i8, ptr %.val1360, i64 %i.bq
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  store i64 %.0.copyload.i1477, ptr %i.jz, align 1
  %i.ka = add i32 %i.bo, -160
  %i.kb = add i32 %i.bo, -168
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ADynamicStringPrimitive0x3Cchar0x2C0x20false0x3E0x3A0x3Acreate0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20llvh0x3A0x3AArrayRef0x3Cchar0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.ka, i32 noundef %3, i32 noundef %i.kb) #8
  br label %bb.bj

bb.be:                                            ; preds = %bb.bc
  %i.kc = icmp ugt i32 %.0.copyload.i1476, 2147483631
  br i1 %i.kc, label %bb.bs, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.kd = or i32 %.0.copyload.i1476, 15
  %i.ke = add nuw nsw i32 %i.kd, 1                ; 2 uses
  %i.kf = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.ke) #8 ; 3 uses
  %5 = or disjoint i32 %i.ke, -2147483648
  %.val1284 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kg = getelementptr inbounds nuw i8, ptr %.val1284, i64 %i.bq
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 168
  store i32 %5, ptr %i.kh, align 1
  %i.ki = add nuw nsw i64 %i.bq, 160              ; 2 uses
  %.val1283 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kj = getelementptr inbounds nuw i8, ptr %.val1283, i64 %i.ki
  store i32 %i.kf, ptr %i.kj, align 1
  %.val1282 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kk = getelementptr inbounds nuw i8, ptr %.val1282, i64 %i.bq
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 164
  store i32 %.0.copyload.i1476, ptr %i.kl, align 1
  %i.km = and i32 %.0.copyload.i1476, 7           ; 2 uses
  %.not1270 = icmp eq i32 %i.km, 0
  br i1 %.not1270, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.bf, %.preheader
  %.01227 = phi i32 [ %i.ks, %.preheader ], [ %.0.copyload.i1475, %bb.bf ] ; 2 uses
  %.31216 = phi i32 [ %i.kr, %.preheader ], [ %i.kf, %bb.bf ] ; 2 uses
  %.01212 = phi i32 [ %i.kt, %.preheader ], [ 0, %bb.bf ]
  %i.kn = zext i32 %.01227 to i64
  %.val1391 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ko = getelementptr inbounds nuw i8, ptr %.val1391, i64 %i.kn
  %.0.copyload.i1478 = load i8, ptr %i.ko, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1478) #8, !srcloc !21
  %i.kp = zext i32 %.31216 to i64
  %.val1407 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kq = getelementptr inbounds nuw i8, ptr %.val1407, i64 %i.kp
  store i8 %.0.copyload.i1478, ptr %i.kq, align 1
  %i.kr = add i32 %.31216, 1                      ; 2 uses
  %i.ks = add i32 %.01227, 1                      ; 2 uses
  %i.kt = add nuw nsw i32 %.01212, 1              ; 2 uses
  %.not1271 = icmp eq i32 %i.kt, %i.km
  br i1 %.not1271, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %bb.bf
  %.11228 = phi i32 [ %.0.copyload.i1475, %bb.bf ], [ %i.ks, %.preheader ]
  %.41217 = phi i32 [ %i.kf, %bb.bf ], [ %i.kr, %.preheader ]
  %i.ku = add i32 %.0.copyload.i1476, %.0.copyload.i1475
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bg, %.loopexit
  %.21229 = phi i32 [ %.11228, %.loopexit ], [ %i.mc, %bb.bg ] ; 2 uses
  %.51218 = phi i32 [ %.41217, %.loopexit ], [ %i.mb, %bb.bg ] ; 2 uses
  %i.kv = zext i32 %.21229 to i64                 ; 8 uses
  %.val1390 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kw = getelementptr inbounds nuw i8, ptr %.val1390, i64 %i.kv
  %.0.copyload.i1479 = load i8, ptr %i.kw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1479) #8, !srcloc !21
  %i.kx = zext i32 %.51218 to i64                 ; 8 uses
  %.val1406 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ky = getelementptr inbounds nuw i8, ptr %.val1406, i64 %i.kx
  store i8 %.0.copyload.i1479, ptr %i.ky, align 1
  %.val1389 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kz = getelementptr inbounds nuw i8, ptr %.val1389, i64 %i.kv
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 1
  %.0.copyload.i1480 = load i8, ptr %i.la, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1480) #8, !srcloc !21
  %.val1405 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lb = getelementptr inbounds nuw i8, ptr %.val1405, i64 %i.kx
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 1
  store i8 %.0.copyload.i1480, ptr %i.lc, align 1
  %.val1388 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ld = getelementptr inbounds nuw i8, ptr %.val1388, i64 %i.kv
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 2
  %.0.copyload.i1481 = load i8, ptr %i.le, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1481) #8, !srcloc !21
  %.val1404 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lf = getelementptr inbounds nuw i8, ptr %.val1404, i64 %i.kx
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 2
  store i8 %.0.copyload.i1481, ptr %i.lg, align 1
  %.val1387 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lh = getelementptr inbounds nuw i8, ptr %.val1387, i64 %i.kv
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 3
  %.0.copyload.i1482 = load i8, ptr %i.li, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1482) #8, !srcloc !21
  %.val1403 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lj = getelementptr inbounds nuw i8, ptr %.val1403, i64 %i.kx
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 3
  store i8 %.0.copyload.i1482, ptr %i.lk, align 1
  %.val1386 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ll = getelementptr inbounds nuw i8, ptr %.val1386, i64 %i.kv
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 4
  %.0.copyload.i1483 = load i8, ptr %i.lm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1483) #8, !srcloc !21
  %.val1402 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ln = getelementptr inbounds nuw i8, ptr %.val1402, i64 %i.kx
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 4
  store i8 %.0.copyload.i1483, ptr %i.lo, align 1
  %.val1385 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lp = getelementptr inbounds nuw i8, ptr %.val1385, i64 %i.kv
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 5
  %.0.copyload.i1484 = load i8, ptr %i.lq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1484) #8, !srcloc !21
  %.val1401 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lr = getelementptr inbounds nuw i8, ptr %.val1401, i64 %i.kx
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 5
  store i8 %.0.copyload.i1484, ptr %i.ls, align 1
  %.val1384 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lt = getelementptr inbounds nuw i8, ptr %.val1384, i64 %i.kv
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 6
  %.0.copyload.i1485 = load i8, ptr %i.lu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1485) #8, !srcloc !21
  %.val1400 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lv = getelementptr inbounds nuw i8, ptr %.val1400, i64 %i.kx
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 6
  store i8 %.0.copyload.i1485, ptr %i.lw, align 1
  %.val1383 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lx = getelementptr inbounds nuw i8, ptr %.val1383, i64 %i.kv
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 7
  %.0.copyload.i1486 = load i8, ptr %i.ly, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1486) #8, !srcloc !21
  %.val1399 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lz = getelementptr inbounds nuw i8, ptr %.val1399, i64 %i.kx
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 7
  store i8 %.0.copyload.i1486, ptr %i.ma, align 1
  %i.mb = add i32 %.51218, 8                      ; 2 uses
  %i.mc = add i32 %.21229, 8                      ; 2 uses
  %.not1272 = icmp eq i32 %i.mc, %i.ku
  br i1 %.not1272, label %bb.bh, label %bb.bg

bb.bh:                                            ; preds = %bb.bg
  %i.md = zext i32 %i.mb to i64
  %.val1398 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.me = getelementptr inbounds nuw i8, ptr %.val1398, i64 %i.md
  store i8 0, ptr %i.me, align 1
  %i.mf = add i32 %i.bo, -160
  %i.mg = add i32 %i.bo, -16
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACallResult0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x2C0x200x28hermes0x3A0x3Avm0x3A0x3Adetail0x3A0x3ACallResultSpecialize0x2920x3E0x20hermes0x3A0x3Avm0x3A0x3AExternalStringPrimitive0x3Cchar0x3E0x3A0x3Acreate0x3Cstd0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3E0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x260x260x29(ptr noundef nonnull %0, i32 noundef %i.mf, i32 noundef %3, i32 noundef %i.mg) #8
  %.val1377 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mh = getelementptr inbounds nuw i8, ptr %.val1377, i64 %i.bq
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 171
  %.0.copyload.i1487 = load i8, ptr %i.mi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1487) #8, !srcloc !22
  %i.mj = icmp sgt i8 %.0.copyload.i1487, -1
  br i1 %i.mj, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %.val1314 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mk = getelementptr inbounds nuw i8, ptr %.val1314, i64 %i.ki
  %.0.copyload.i1488 = load i32, ptr %i.mk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1488) #8, !srcloc !19
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1488) #8
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bh, %bb.bi, %bb.bd
  %.val1313 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ml = getelementptr inbounds nuw i8, ptr %.val1313, i64 %i.bq
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 16
  %.0.copyload.i1489 = load i32, ptr %i.mm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1489) #8, !srcloc !19
  %.not1273 = icmp eq i32 %.0.copyload.i1489, 0
  br i1 %.not1273, label %bb.bt, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %.val1417 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mn = getelementptr inbounds nuw i8, ptr %.val1417, i64 %i.bq
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 24
  %.0.copyload.i1490 = load i32, ptr %i.mo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1490) #8, !srcloc !23
  %i.mp = zext i32 %.0.copyload.i1490 to i64
  %i.mq = or disjoint i64 %i.mp, -844424930131968 ; 2 uses
  %i.mr = zext i32 %3 to i64
  %.val1312 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ms = getelementptr inbounds nuw i8, ptr %.val1312, i64 %i.mr
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 4
  %.0.copyload.i1491 = load i32, ptr %i.mt, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1491) #8, !srcloc !19
  %i.mu = zext i32 %.0.copyload.i1491 to i64      ; 2 uses
  %i.mv = add nuw nsw i64 %i.mu, 164              ; 2 uses
  %.val1311 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mw = getelementptr inbounds nuw i8, ptr %.val1311, i64 %i.mv
  %.0.copyload.i1492 = load i32, ptr %i.mw, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1492) #8, !srcloc !19
  %.val1310 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mx = getelementptr inbounds nuw i8, ptr %.val1310, i64 %i.mu
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 168
  %.0.copyload.i1493 = load i32, ptr %i.my, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1493) #8, !srcloc !19
  %i.mz = icmp ult i32 %.0.copyload.i1492, %.0.copyload.i1493
  br i1 %i.mz, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.na = add i32 %.0.copyload.i1492, 8
  %.val1281 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.nb = getelementptr inbounds nuw i8, ptr %.val1281, i64 %i.mv
  store i32 %i.na, ptr %i.nb, align 1
  %i.nc = zext i32 %.0.copyload.i1492 to i64
  %.val1359 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.nd = getelementptr inbounds nuw i8, ptr %.val1359, i64 %i.nc
  store i64 %i.mq, ptr %i.nd, align 1
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  %i.ne = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1491, i64 noundef %i.mq) #8
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.61226 = phi i32 [ %.0.copyload.i1492, %bb.bl ], [ %i.ne, %bb.bm ]
  %.val1309 = load ptr, ptr %i.d, align 8, !tbaa !18
end_hunk_3
begin_hunk_4_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AjsonStringify0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
  %.0.copyload.i2369 = load i32, ptr %i.ok, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2369) #8, !srcloc !19
  %.val2112 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ol = getelementptr inbounds nuw i8, ptr %.val2112, i64 %i.cl
  %.0.copyload.i2370 = load i32, ptr %i.ol, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2370) #8, !srcloc !19
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoNumber_RJS0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.oj, i32 noundef %.0.copyload.i2369, i32 noundef %.0.copyload.i2370) #8
  %.val2111 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.om = getelementptr inbounds nuw i8, ptr %.val2111, i64 %i.q
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 328
  %.0.copyload.i2371 = load i32, ptr %i.on, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2371) #8, !srcloc !19
  %.not1994 = icmp eq i32 %.0.copyload.i2371, 0
  br i1 %.not1994, label %bb.dc, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %.val2110 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.oo = getelementptr inbounds nuw i8, ptr %.val2110, i64 %i.cl
  %.0.copyload.i2372 = load i32, ptr %i.oo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2372) #8, !srcloc !19
  %.val2227 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.op = getelementptr inbounds nuw i8, ptr %.val2227, i64 %i.q
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 336
  %.0.copyload.i2373 = load i64, ptr %i.oq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2373) #8, !srcloc !20
  br label %.sink.split

bb.bl:                                            ; preds = %bb.bi
  %.val2109 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.or = getelementptr inbounds nuw i8, ptr %.val2109, i64 %i.bd
  %.0.copyload.i2374 = load i32, ptr %i.or, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2374) #8, !srcloc !19
  %.val2108 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.os = getelementptr inbounds nuw i8, ptr %.val2108, i64 %i.cl
  %.0.copyload.i2375 = load i32, ptr %i.os, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2375) #8, !srcloc !19
  %i.ot = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoString_RJS0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i2374, i32 noundef %.0.copyload.i2375) #8 ; 2 uses
  %i.ou = icmp eq i32 %i.ot, -1
  br i1 %i.ou, label %bb.dc, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %.val2107 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ov = getelementptr inbounds nuw i8, ptr %.val2107, i64 %i.cl
  %.0.copyload.i2376 = load i32, ptr %i.ov, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2376) #8, !srcloc !19
  %i.ow = zext i32 %i.ot to i64
  %i.ox = or disjoint i64 %i.ow, -844424930131968
  br label %.sink.split

.sink.split:                                      ; preds = %bb.bk, %bb.bm
  %.0.copyload.i2376.sink = phi i32 [ %.0.copyload.i2376, %bb.bm ], [ %.0.copyload.i2372, %bb.bk ]
  %.sink = phi i64 [ %i.ox, %bb.bm ], [ %.0.copyload.i2373, %bb.bk ]
  %i.oy = zext i32 %.0.copyload.i2376.sink to i64
  %.val2195 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.oz = getelementptr inbounds nuw i8, ptr %.val2195, i64 %i.oy
  store i64 %.sink, ptr %i.oz, align 1
  br label %bb.bn

bb.bn:                                            ; preds = %.sink.split, %bb.bi, %bb.bh
  %.val2106 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.pa = getelementptr inbounds nuw i8, ptr %.val2106, i64 %i.cl
  %.0.copyload.i2377 = load i32, ptr %i.pa, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2377) #8, !srcloc !19
  %i.pb = zext i32 %.0.copyload.i2377 to i64
  %.val2226 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.pc = getelementptr inbounds nuw i8, ptr %.val2226, i64 %i.pb
  %.0.copyload.i2378 = load i64, ptr %i.pc, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2378) #8, !srcloc !20
  %i.pd = icmp ult i64 %.0.copyload.i2378, -1970324836974592
  br i1 %i.pd, label %bb.bo, label %bb.ci

bb.bo:                                            ; preds = %bb.bn
  %i.pe = add i32 %i.o, -32
  %.val2105 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.pf = getelementptr inbounds nuw i8, ptr %.val2105, i64 %i.bd
  %.0.copyload.i2379 = load i32, ptr %i.pf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2379) #8, !srcloc !19
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoIntegerOrInfinity0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.pe, i32 noundef %.0.copyload.i2379, i32 noundef %.0.copyload.i2377) #8
  %.val2284 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.pg = getelementptr inbounds nuw i8, ptr %.val2284, i64 %i.q
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 536
  %.0.copyload.i2380 = load double, ptr %i.ph, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i2380) #8, !srcloc !37
  %i.pi = fcmp olt double %.0.copyload.i2380, 1.000000e+01
  %i.pj = select i1 %i.pi, double %.0.copyload.i2380, double 1.000000e+01 ; 2 uses
  %i.pk = fcmp ogt double %i.pj, 0.000000e+00
  %i.pl = select i1 %i.pk, double %i.pj, double 0.000000e+00 ; 4 uses
  %i.pm = tail call noundef double @llvm.fabs.f64(double %i.pl)
  %i.pn = fcmp olt double %i.pm, f0x41E0000000000000
  br i1 %i.pn, label %bb.bp, label %.thread

bb.bp:                                            ; preds = %bb.bo
  %i.po = fcmp ule double %i.pl, f0xC1E0000000200000
  %i.pp = fcmp uge double %i.pl, f0x41E0000000000000
  %.not2000 = or i1 %i.po, %i.pp
  br i1 %.not2000, label %bb.bq, label %bb.br, !prof !31

bb.bq:                                            ; preds = %bb.bp
  tail call void @wasm_rt_trap(i32 noundef 2) #9
  unreachable

bb.br:                                            ; preds = %bb.bp
  %i.pq = fptosi double %i.pl to i32              ; 2 uses
  %i.pr = icmp slt i32 %i.pq, 1
  br i1 %i.pr, label %.thread, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ps = add nuw nsw i64 %i.q, 332               ; 4 uses
  %.val2194 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.pt = getelementptr inbounds nuw i8, ptr %.val2194, i64 %i.ps
  store i64 137438953472, ptr %i.pt, align 1
  %i.pu = add i32 %i.o, -220                      ; 4 uses
  %i.pv = add nuw nsw i64 %i.q, 328               ; 5 uses
  %.val2031 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.pw = getelementptr inbounds nuw i8, ptr %.val2031, i64 %i.pv
  store i32 %i.pu, ptr %i.pw, align 1
  %i.px = add i32 %i.o, -232
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bv, %bb.bs
  %.41940 = phi i32 [ 0, %bb.bs ], [ %i.qg, %bb.bv ] ; 2 uses
  %.10 = phi i32 [ 0, %bb.bs ], [ %i.qi, %bb.bv ]
  %.val2104 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.py = getelementptr inbounds nuw i8, ptr %.val2104, i64 %i.q
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 336
  %.0.copyload.i2381 = load i32, ptr %i.pz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2381) #8, !srcloc !19
  %.not2001 = icmp ugt i32 %.0.copyload.i2381, %.41940
  br i1 %.not2001, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.px, i32 noundef %i.pu, i32 noundef 0, i32 noundef 1) #8
  %.val2103 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.qa = getelementptr inbounds nuw i8, ptr %.val2103, i64 %i.ps
  %.0.copyload.i2382 = load i32, ptr %i.qa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2382) #8, !srcloc !19
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bt, %bb.bu
  %.2 = phi i32 [ %.0.copyload.i2382, %bb.bu ], [ %.41940, %bb.bt ]
  %.val2102 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.qb = getelementptr inbounds nuw i8, ptr %.val2102, i64 %i.pv
  %.0.copyload.i2383 = load i32, ptr %i.qb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2383) #8, !srcloc !19
  %i.qc = add i32 %.0.copyload.i2383, %.2
  %i.qd = zext i32 %i.qc to i64
  %.val2257 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.qe = getelementptr inbounds nuw i8, ptr %.val2257, i64 %i.qd
  store i8 32, ptr %i.qe, align 1
  %.val2101 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.qf = getelementptr inbounds nuw i8, ptr %.val2101, i64 %i.ps
  %.0.copyload.i2384 = load i32, ptr %i.qf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2384) #8, !srcloc !19
  %i.qg = add i32 %.0.copyload.i2384, 1           ; 9 uses
  %.val2030 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.qh = getelementptr inbounds nuw i8, ptr %.val2030, i64 %i.ps
  store i32 %i.qg, ptr %i.qh, align 1
  %i.qi = add nuw nsw i32 %.10, 1                 ; 2 uses
  %.not2002 = icmp eq i32 %i.qi, %i.pq
  br i1 %.not2002, label %bb.bw, label %bb.bt

bb.bw:                                            ; preds = %bb.bv
  %.val2100 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.qj = getelementptr inbounds nuw i8, ptr %.val2100, i64 %i.bd
  %.0.copyload.i2385 = load i32, ptr %i.qj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2385) #8, !srcloc !19
  %.val2099 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.qk = getelementptr inbounds nuw i8, ptr %.val2099, i64 %i.pv
  %.0.copyload.i2386 = load i32, ptr %i.qk, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2386) #8, !srcloc !19
  %i.ql = icmp ult i32 %i.qg, 65536
  br i1 %i.ql, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %.val2029 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.qm = getelementptr inbounds nuw i8, ptr %.val2029, i64 %i.q
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 548
  store i32 %i.qg, ptr %i.qn, align 1
  %i.qo = add nuw nsw i64 %i.q, 544               ; 2 uses
  %.val2028 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.qp = getelementptr inbounds nuw i8, ptr %.val2028, i64 %i.qo
  store i32 %.0.copyload.i2386, ptr %i.qp, align 1
  %.val2225 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.qq = getelementptr inbounds nuw i8, ptr %.val2225, i64 %i.qo
  %.0.copyload.i2387 = load i64, ptr %i.qq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2387) #8, !srcloc !20
  %.val2193 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.qr = getelementptr inbounds nuw i8, ptr %.val2193, i64 %i.q
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 16
  store i64 %.0.copyload.i2387, ptr %i.qs, align 1
  %i.qt = add i32 %i.o, -48
  %i.qu = add i32 %i.o, -544
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ADynamicStringPrimitive0x3Cchar0x2C0x20false0x3E0x3A0x3Acreate0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20llvh0x3A0x3AArrayRef0x3Cchar0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.qt, i32 noundef %.0.copyload.i2385, i32 noundef %i.qu) #8
  br label %bb.cd

bb.by:                                            ; preds = %bb.bw
  %i.qv = icmp ugt i32 %i.qg, 2147483631
  br i1 %i.qv, label %bb.db, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.qw = or i32 %i.qg, 15
  %i.qx = add nuw nsw i32 %i.qw, 1                ; 2 uses
  %i.qy = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.qx) #8 ; 3 uses
  %5 = or disjoint i32 %i.qx, -2147483648
  %.val2027 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.qz = getelementptr inbounds nuw i8, ptr %.val2027, i64 %i.q
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 552
  store i32 %5, ptr %i.ra, align 1
  %i.rb = add nuw nsw i64 %i.q, 544               ; 2 uses
  %.val2026 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.rc = getelementptr inbounds nuw i8, ptr %.val2026, i64 %i.rb
  store i32 %i.qy, ptr %i.rc, align 1
  %.val2025 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.rd = getelementptr inbounds nuw i8, ptr %.val2025, i64 %i.q
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 548
  store i32 %i.qg, ptr %i.re, align 1
  %i.rf = and i32 %i.qg, 7                        ; 2 uses
  %.not2003 = icmp eq i32 %i.rf, 0
  br i1 %.not2003, label %.loopexit2436, label %.preheader2435

.preheader2435:                                   ; preds = %bb.bz, %.preheader2435
  %.11933 = phi i32 [ %i.rl, %.preheader2435 ], [ %.0.copyload.i2386, %bb.bz ] ; 2 uses
  %.11 = phi i32 [ %i.rk, %.preheader2435 ], [ %i.qy, %bb.bz ] ; 2 uses
  %.01924 = phi i32 [ %i.rm, %.preheader2435 ], [ 0, %bb.bz ]
  %i.rg = zext i32 %.11933 to i64
  %.val2244 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.rh = getelementptr inbounds nuw i8, ptr %.val2244, i64 %i.rg
  %.0.copyload.i2388 = load i8, ptr %i.rh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2388) #8, !srcloc !21
  %i.ri = zext i32 %.11 to i64
  %.val2256 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.rj = getelementptr inbounds nuw i8, ptr %.val2256, i64 %i.ri
  store i8 %.0.copyload.i2388, ptr %i.rj, align 1
  %i.rk = add i32 %.11, 1                         ; 2 uses
  %i.rl = add i32 %.11933, 1                      ; 2 uses
  %i.rm = add nuw nsw i32 %.01924, 1              ; 2 uses
  %.not2004 = icmp eq i32 %i.rm, %i.rf
  br i1 %.not2004, label %.loopexit2436, label %.preheader2435

.loopexit2436:                                    ; preds = %.preheader2435, %bb.bz
  %.21934 = phi i32 [ %.0.copyload.i2386, %bb.bz ], [ %i.rl, %.preheader2435 ]
  %.12 = phi i32 [ %i.qy, %bb.bz ], [ %i.rk, %.preheader2435 ]
  %i.rn = add i32 %.0.copyload.i2386, %i.qg
  br label %bb.ca

bb.ca:                                            ; preds = %bb.ca, %.loopexit2436
  %.31935 = phi i32 [ %.21934, %.loopexit2436 ], [ %i.sv, %bb.ca ] ; 2 uses
  %.13 = phi i32 [ %.12, %.loopexit2436 ], [ %i.su, %bb.ca ] ; 2 uses
  %i.ro = zext i32 %.31935 to i64                 ; 8 uses
  %.val2243 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.rp = getelementptr inbounds nuw i8, ptr %.val2243, i64 %i.ro
  %.0.copyload.i2389 = load i8, ptr %i.rp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2389) #8, !srcloc !21
  %i.rq = zext i32 %.13 to i64                    ; 8 uses
  %.val2255 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.rr = getelementptr inbounds nuw i8, ptr %.val2255, i64 %i.rq
  store i8 %.0.copyload.i2389, ptr %i.rr, align 1
  %.val2242 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.rs = getelementptr inbounds nuw i8, ptr %.val2242, i64 %i.ro
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 1
  %.0.copyload.i2390 = load i8, ptr %i.rt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2390) #8, !srcloc !21
  %.val2254 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ru = getelementptr inbounds nuw i8, ptr %.val2254, i64 %i.rq
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 1
  store i8 %.0.copyload.i2390, ptr %i.rv, align 1
  %.val2241 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.rw = getelementptr inbounds nuw i8, ptr %.val2241, i64 %i.ro
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 2
  %.0.copyload.i2391 = load i8, ptr %i.rx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2391) #8, !srcloc !21
  %.val2253 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ry = getelementptr inbounds nuw i8, ptr %.val2253, i64 %i.rq
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 2
  store i8 %.0.copyload.i2391, ptr %i.rz, align 1
  %.val2240 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.sa = getelementptr inbounds nuw i8, ptr %.val2240, i64 %i.ro
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 3
  %.0.copyload.i2392 = load i8, ptr %i.sb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2392) #8, !srcloc !21
  %.val2252 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.sc = getelementptr inbounds nuw i8, ptr %.val2252, i64 %i.rq
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 3
  store i8 %.0.copyload.i2392, ptr %i.sd, align 1
  %.val2239 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.se = getelementptr inbounds nuw i8, ptr %.val2239, i64 %i.ro
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 4
  %.0.copyload.i2393 = load i8, ptr %i.sf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2393) #8, !srcloc !21
  %.val2251 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.sg = getelementptr inbounds nuw i8, ptr %.val2251, i64 %i.rq
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 4
  store i8 %.0.copyload.i2393, ptr %i.sh, align 1
  %.val2238 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.si = getelementptr inbounds nuw i8, ptr %.val2238, i64 %i.ro
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 5
  %.0.copyload.i2394 = load i8, ptr %i.sj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2394) #8, !srcloc !21
  %.val2250 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.sk = getelementptr inbounds nuw i8, ptr %.val2250, i64 %i.rq
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 5
  store i8 %.0.copyload.i2394, ptr %i.sl, align 1
  %.val2237 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.sm = getelementptr inbounds nuw i8, ptr %.val2237, i64 %i.ro
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 6
  %.0.copyload.i2395 = load i8, ptr %i.sn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2395) #8, !srcloc !21
  %.val2249 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.so = getelementptr inbounds nuw i8, ptr %.val2249, i64 %i.rq
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 6
  store i8 %.0.copyload.i2395, ptr %i.sp, align 1
  %.val2236 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.sq = getelementptr inbounds nuw i8, ptr %.val2236, i64 %i.ro
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 7
  %.0.copyload.i2396 = load i8, ptr %i.sr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2396) #8, !srcloc !21
  %.val2248 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ss = getelementptr inbounds nuw i8, ptr %.val2248, i64 %i.rq
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 7
  store i8 %.0.copyload.i2396, ptr %i.st, align 1
  %i.su = add i32 %.13, 8                         ; 2 uses
  %i.sv = add i32 %.31935, 8                      ; 2 uses
  %.not2005 = icmp eq i32 %i.sv, %i.rn
  br i1 %.not2005, label %bb.cb, label %bb.ca

bb.cb:                                            ; preds = %bb.ca
  %i.sw = zext i32 %i.su to i64
  %.val2247 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.sx = getelementptr inbounds nuw i8, ptr %.val2247, i64 %i.sw
  store i8 0, ptr %i.sx, align 1
  %i.sy = add i32 %i.o, -48
  %i.sz = add i32 %i.o, -16
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACallResult0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x2C0x200x28hermes0x3A0x3Avm0x3A0x3Adetail0x3A0x3ACallResultSpecialize0x2920x3E0x20hermes0x3A0x3Avm0x3A0x3AExternalStringPrimitive0x3Cchar0x3E0x3A0x3Acreate0x3Cstd0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3E0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x260x260x29(ptr noundef nonnull %0, i32 noundef %i.sy, i32 noundef %.0.copyload.i2385, i32 noundef %i.sz) #8
  %.val2222 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ta = getelementptr inbounds nuw i8, ptr %.val2222, i64 %i.q
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 555
  %.0.copyload.i2397 = load i8, ptr %i.tb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2397) #8, !srcloc !22
  %i.tc = icmp sgt i8 %.0.copyload.i2397, -1
  br i1 %i.tc, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %.val2098 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.td = getelementptr inbounds nuw i8, ptr %.val2098, i64 %i.rb
  %.0.copyload.i2398 = load i32, ptr %i.td, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2398) #8, !srcloc !19
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i2398) #8
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cb, %bb.cc, %bb.bx
  %.val2097 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.te = getelementptr inbounds nuw i8, ptr %.val2097, i64 %i.q
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 512
  %.0.copyload.i2399 = load i32, ptr %i.tf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2399) #8, !srcloc !19
  %.not2006 = icmp eq i32 %.0.copyload.i2399, 0
  %.val2094 = load ptr, ptr %i.a, align 8, !tbaa !18 ; 2 uses
  br i1 %.not2006, label %bb.cg, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.tg = getelementptr inbounds nuw i8, ptr %.val2094, i64 %i.bh
  %.0.copyload.i2400 = load i32, ptr %i.tg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2400) #8, !srcloc !19
  %.val2259 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.th = getelementptr inbounds nuw i8, ptr %.val2259, i64 %i.q
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 520
  %.0.copyload.i2401 = load i32, ptr %i.ti, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2401) #8, !srcloc !23
  %i.tj = zext i32 %.0.copyload.i2401 to i64
  %i.tk = or disjoint i64 %i.tj, -844424930131968
  %i.tl = zext i32 %.0.copyload.i2400 to i64
  %.val2192 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.tm = getelementptr inbounds nuw i8, ptr %.val2192, i64 %i.tl
  store i64 %i.tk, ptr %i.tm, align 1
  %.val2095 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.tn = getelementptr inbounds nuw i8, ptr %.val2095, i64 %i.pv
  %.0.copyload.i2402 = load i32, ptr %i.tn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2402) #8, !srcloc !19
  %i.to = icmp eq i32 %.0.copyload.i2402, %i.pu
  br i1 %i.to, label %.thread, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i2402) #8
  br label %.thread

bb.cg:                                            ; preds = %bb.cd
  %i.tp = getelementptr inbounds nuw i8, ptr %.val2094, i64 %i.pv
  %.0.copyload.i2403 = load i32, ptr %i.tp, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2403) #8, !srcloc !19
  %i.tq = icmp eq i32 %.0.copyload.i2403, %i.pu
  br i1 %i.tq, label %bb.dc, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i2403) #8
  br label %bb.dc

bb.ci:                                            ; preds = %bb.bn
  %i.tr = icmp samesign ugt i64 %.0.copyload.i2378, -844424930131969
  br i1 %i.tr, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.ts = and i64 %.0.copyload.i2378, 4294967295
  %.val2093 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.tt = getelementptr inbounds nuw i8, ptr %.val2093, i64 %i.ts
end_hunk_4
begin_hunk_5_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AhermesInternalGetFunctionLocation0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a

bb.ak:                                            ; preds = %bb.aj
  %i.mb = load ptr, ptr %i.lx, align 8, !tbaa !28
  %i.mc = zext i32 %.0.copyload.i1240 to i64
  %i.md = getelementptr inbounds nuw [24 x i8], ptr %i.mb, i64 %i.mc ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !30 ; 2 uses
  %.not1021 = icmp eq ptr %i.mf, null
  br i1 %.not1021, label %.critedge1033, label %bb.al, !prof !31

bb.al:                                            ; preds = %bb.ak
  %i.mg = load ptr, ptr @w2c_hermes_t5, align 8, !tbaa !32 ; 4 uses
  %i.mh = load ptr, ptr %i.md, align 8, !tbaa !33 ; 4 uses
  %i.mi = icmp eq ptr %i.mg, %i.mh
  br i1 %i.mi, label %func_types_eq.exit1244.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.mj = icmp ne ptr %i.mg, null
  %i.mk = icmp ne ptr %i.mh, null
  %or.cond.i1241 = and i1 %i.mj, %i.mk
  br i1 %or.cond.i1241, label %func_types_eq.exit1244, label %.critedge1033, !prof !34

func_types_eq.exit1244:                           ; preds = %bb.am
  %i.ml = load i128, ptr %i.mg, align 1
  %i.mm = load i128, ptr %i.mh, align 1
  %i.mn = xor i128 %i.ml, %i.mm
  %i.mo = getelementptr i8, ptr %i.mg, i64 16
  %i.mp = getelementptr i8, ptr %i.mh, i64 16
  %i.mq = load i128, ptr %i.mo, align 1
  %i.mr = load i128, ptr %i.mp, align 1
  %i.ms = xor i128 %i.mq, %i.mr
  %i.mt = or i128 %i.mn, %i.ms
  %i.mu = icmp ne i128 %i.mt, 0
  %i.mv = zext i1 %i.mu to i32
  %.not.i1243 = icmp eq i32 %i.mv, 0
  br i1 %.not.i1243, label %func_types_eq.exit1244.thread, label %.critedge1033, !prof !35

.critedge1033:                                    ; preds = %bb.am, %bb.ak, %bb.aj, %func_types_eq.exit1244
  tail call void @wasm_rt_trap(i32 noundef 6) #9
  unreachable

func_types_eq.exit1244.thread:                    ; preds = %bb.al, %func_types_eq.exit1244
  %i.mw = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !36
  %i.my = tail call i32 %i.mf(ptr noundef %i.mx, i32 noundef %.0.copyload.i1238) #8
  %.not1022 = icmp eq i32 %i.my, 0
  br i1 %.not1022, label %bb.an, label %bb.bi

bb.an:                                            ; preds = %func_types_eq.exit1244.thread
  %.not1023 = icmp eq i8 %.0.copyload.i1235, 0
  br i1 %.not1023, label %bb.av, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.mz = add i32 %i.b, -16                       ; 2 uses
  %.val1096 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.na = getelementptr inbounds nuw i8, ptr %.val1096, i64 %i.lq
  %.0.copyload.i1245 = load i32, ptr %i.na, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1245) #8, !srcloc !19
  %i.nb = zext i32 %.0.copyload.i1245 to i64      ; 2 uses
  %i.nc = add nuw nsw i64 %i.nb, 128              ; 2 uses
  %.val1095 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.nd = getelementptr inbounds nuw i8, ptr %.val1095, i64 %i.nc
  %.0.copyload.i1246 = load i32, ptr %i.nd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1246) #8, !srcloc !19
  %.not1027 = icmp eq i32 %.0.copyload.i1246, 0
  br i1 %.not1027, label %bb.ap, label %bb.at

bb.ap:                                            ; preds = %bb.ao
  %.val1094 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ne = getelementptr inbounds nuw i8, ptr %.val1094, i64 %i.nb
  %.0.copyload.i1247 = load i32, ptr %i.ne, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1247) #8, !srcloc !19
  %i.nf = zext i32 %.0.copyload.i1247 to i64
  %.val1093 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ng = getelementptr inbounds nuw i8, ptr %.val1093, i64 %i.nf
  %.0.copyload.i1248 = load i32, ptr %i.ng, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1248) #8, !srcloc !19
  %i.nh = load i32, ptr %i.ly, align 4, !tbaa !26
  %i.ni = icmp ult i32 %.0.copyload.i1248, %i.nh
  br i1 %i.ni, label %bb.aq, label %.critedge1035, !prof !27

bb.aq:                                            ; preds = %bb.ap
  %i.nj = load ptr, ptr %i.lx, align 8, !tbaa !28
  %i.nk = zext i32 %.0.copyload.i1248 to i64
  %i.nl = getelementptr inbounds nuw [24 x i8], ptr %i.nj, i64 %i.nk ; 3 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 8
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !30 ; 2 uses
  %.not1028 = icmp eq ptr %i.nn, null
  br i1 %.not1028, label %.critedge1035, label %bb.ar, !prof !31

bb.ar:                                            ; preds = %bb.aq
  %i.no = load ptr, ptr @w2c_hermes_t3, align 8, !tbaa !32 ; 4 uses
  %i.np = load ptr, ptr %i.nl, align 8, !tbaa !33 ; 4 uses
  %i.nq = icmp eq ptr %i.no, %i.np
  br i1 %i.nq, label %func_types_eq.exit1252.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.nr = icmp ne ptr %i.no, null
  %i.ns = icmp ne ptr %i.np, null
  %or.cond.i1249 = and i1 %i.nr, %i.ns
  br i1 %or.cond.i1249, label %func_types_eq.exit1252, label %.critedge1035, !prof !34

func_types_eq.exit1252:                           ; preds = %bb.as
  %i.nt = load i128, ptr %i.no, align 1
  %i.nu = load i128, ptr %i.np, align 1
  %i.nv = xor i128 %i.nt, %i.nu
  %i.nw = getelementptr i8, ptr %i.no, i64 16
  %i.nx = getelementptr i8, ptr %i.np, i64 16
  %i.ny = load i128, ptr %i.nw, align 1
  %i.nz = load i128, ptr %i.nx, align 1
  %i.oa = xor i128 %i.ny, %i.nz
  %i.ob = or i128 %i.nv, %i.oa
  %i.oc = icmp ne i128 %i.ob, 0
  %i.od = zext i1 %i.oc to i32
  %.not.i1251 = icmp eq i32 %i.od, 0
  br i1 %.not.i1251, label %func_types_eq.exit1252.thread, label %.critedge1035, !prof !35

.critedge1035:                                    ; preds = %bb.as, %bb.aq, %bb.ap, %func_types_eq.exit1252
  tail call void @wasm_rt_trap(i32 noundef 6) #9
  unreachable

func_types_eq.exit1252.thread:                    ; preds = %bb.ar, %func_types_eq.exit1252
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nl, i64 16
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !36
  tail call void %i.nn(ptr noundef %i.of, i32 noundef %.0.copyload.i1245) #8
  %.val1092 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.og = getelementptr inbounds nuw i8, ptr %.val1092, i64 %i.nc
  %.0.copyload.i1253 = load i32, ptr %i.og, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1253) #8, !srcloc !19
  br label %bb.at

bb.at:                                            ; preds = %bb.ao, %func_types_eq.exit1252.thread
  %.0987 = phi i32 [ %.0.copyload.i1253, %func_types_eq.exit1252.thread ], [ %.0.copyload.i1246, %bb.ao ]
  tail call void @w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3ADebugInfo0x3A0x3AgetFilenameByID0x28unsigned0x20int0x290x20const(ptr noundef nonnull %0, i32 noundef %i.mz, i32 noundef %.0987, i32 noundef %.0.copyload.i1236) #8
  %i.oh = add i32 %i.b, -256
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3A0x3AcreateEfficient0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x260x260x29(ptr noundef nonnull %0, i32 noundef %i.oh, i32 noundef %3, i32 noundef %i.mz) #8
  %.val1161 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.oi = getelementptr inbounds nuw i8, ptr %.val1161, i64 %i.e
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 315
  %.0.copyload.i1254 = load i8, ptr %i.oj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1254) #8, !srcloc !22
  %i.ok = icmp sgt i8 %.0.copyload.i1254, -1
  br i1 %i.ok, label %bb.bf, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.val1091 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ol = getelementptr inbounds nuw i8, ptr %.val1091, i64 %i.e
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 304
  %.0.copyload.i1255 = load i32, ptr %i.om, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1255) #8, !srcloc !19
  br label %.sink.split

bb.av:                                            ; preds = %bb.an
  %.val1090 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.on = getelementptr inbounds nuw i8, ptr %.val1090, i64 %i.lp
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 56
  %.0.copyload.i1256 = load i32, ptr %i.oo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1256) #8, !srcloc !19
  %.val1167 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.op = getelementptr inbounds nuw i8, ptr %.val1167, i64 %i.lp
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 63
  %.0.copyload.i1257 = load i8, ptr %i.oq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1257) #8, !srcloc !21
  %i.or = zext i8 %.0.copyload.i1257 to i32
  %.not1024 = icmp sgt i8 %.0.copyload.i1257, -1  ; 2 uses
  %i.os = select i1 %.not1024, i32 %i.or, i32 %.0.copyload.i1256 ; 8 uses
  %.not1025 = icmp eq i32 %i.os, 0
  br i1 %.not1025, label %bb.bi, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.val1089 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ot = getelementptr inbounds nuw i8, ptr %.val1089, i64 %i.lp
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 52
  %.0.copyload.i1258 = load i32, ptr %i.ou, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1258) #8, !srcloc !19
  %i.ov = add i32 %.0.copyload.i1237, 52
  %i.ow = select i1 %.not1024, i32 %i.ov, i32 %.0.copyload.i1258 ; 2 uses
  %.not1026 = icmp eq i32 %i.ow, 0
  br i1 %.not1026, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %.val1046 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ox = getelementptr inbounds nuw i8, ptr %.val1046, i64 %i.e
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 312
  store i32 0, ptr %i.oy, align 1
  %.val1144 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.oz = getelementptr inbounds nuw i8, ptr %.val1144, i64 %i.e
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 304
  store i64 0, ptr %i.pa, align 1
  br label %bb.bd

bb.ay:                                            ; preds = %bb.aw
  %i.pb = icmp ugt i32 %i.os, 2147483631
  br i1 %i.pb, label %bb.bm, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.pc = icmp samesign ugt i32 %i.os, 10
  br i1 %i.pc, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.pd = or i32 %i.os, 15
  %i.pe = add nuw nsw i32 %i.pd, 1                ; 2 uses
  %i.pf = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.pe) #8 ; 2 uses
  %5 = or disjoint i32 %i.pe, -2147483648
  %.val1045 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pg = getelementptr inbounds nuw i8, ptr %.val1045, i64 %i.e
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 312
  store i32 %5, ptr %i.ph, align 1
  %.val1044 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pi = getelementptr inbounds nuw i8, ptr %.val1044, i64 %i.e
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 304
  store i32 %i.pf, ptr %i.pj, align 1
  %.val1043 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pk = getelementptr inbounds nuw i8, ptr %.val1043, i64 %i.e
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 308
  store i32 %i.os, ptr %i.pl, align 1
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %.val1171 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pm = trunc nuw nsw i32 %i.os to i8
  %i.pn = getelementptr inbounds nuw i8, ptr %.val1171, i64 %i.e
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 315
  store i8 %i.pm, ptr %i.po, align 1
  %i.pp = add i32 %i.b, -16
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.1 = phi i32 [ %i.pf, %bb.ba ], [ %i.pp, %bb.bb ]
  %i.pq = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.1, i32 noundef %i.ow, i32 noundef %i.os) #8
  %i.pr = add i32 %i.pq, %i.os
  %i.ps = zext i32 %i.pr to i64
  %.val1170 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pt = getelementptr inbounds nuw i8, ptr %.val1170, i64 %i.ps
  store i8 0, ptr %i.pt, align 1
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.ax
  %i.pu = add i32 %i.b, -256
  %i.pv = add i32 %i.b, -16
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3A0x3AcreateEfficient0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x260x260x29(ptr noundef nonnull %0, i32 noundef %i.pu, i32 noundef %3, i32 noundef %i.pv) #8
  %.val1160 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pw = getelementptr inbounds nuw i8, ptr %.val1160, i64 %i.e
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 315
  %.0.copyload.i1259 = load i8, ptr %i.px, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1259) #8, !srcloc !22
  %i.py = icmp sgt i8 %.0.copyload.i1259, -1
  br i1 %i.py, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %.val1088 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pz = getelementptr inbounds nuw i8, ptr %.val1088, i64 %i.e
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 304
  %.0.copyload.i1260 = load i32, ptr %i.qa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1260) #8, !srcloc !19
  br label %.sink.split

.sink.split:                                      ; preds = %bb.au, %bb.be
  %.0.copyload.i1260.sink = phi i32 [ %.0.copyload.i1260, %bb.be ], [ %.0.copyload.i1255, %bb.au ]
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1260.sink) #8
  br label %bb.bf

bb.bf:                                            ; preds = %.sink.split, %bb.bd, %bb.at
  %.val1087 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qb = getelementptr inbounds nuw i8, ptr %.val1087, i64 %i.dg
  %.0.copyload.i1261 = load i32, ptr %i.qb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1261) #8, !srcloc !19
  %.not1029 = icmp eq i32 %.0.copyload.i1261, 0
  br i1 %.not1029, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.val1163 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qc = getelementptr inbounds nuw i8, ptr %.val1163, i64 %i.e
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 72
  %.0.copyload.i1262 = load i64, ptr %i.qd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1262) #8, !srcloc !20
  br label %bb.bj

bb.bh:                                            ; preds = %bb.bf
  %i.qe = zext i32 %1 to i64
  br label %bb.bl

bb.bi:                                            ; preds = %bb.av, %func_types_eq.exit1244.thread
  %.val1143 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qf = getelementptr inbounds nuw i8, ptr %.val1143, i64 %i.e
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 72
  store i64 -1688849860263936, ptr %i.qg, align 1
  %.val1041 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qh = getelementptr inbounds nuw i8, ptr %.val1041, i64 %i.dg
  store i32 1, ptr %i.qh, align 1
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bg
  %.0 = phi i64 [ -1688849860263936, %bb.bi ], [ %.0.copyload.i1262, %bb.bg ]
  %i.qi = zext i32 %.0992 to i64
  %.val1142 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qj = getelementptr inbounds nuw i8, ptr %.val1142, i64 %i.qi
  store i64 %.0, ptr %i.qj, align 1
  %.val1040 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qk = getelementptr inbounds nuw i8, ptr %.val1040, i64 %i.e
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 16
  store i32 319, ptr %i.ql, align 1
  %.val1039 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qm = getelementptr inbounds nuw i8, ptr %.val1039, i64 %i.e
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 12
  store i32 0, ptr %i.qn, align 1
  %.val1038 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qo = getelementptr inbounds nuw i8, ptr %.val1038, i64 %i.e
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 304
  store i32 319, ptr %i.qp, align 1
  %.val1037 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qq = getelementptr inbounds nuw i8, ptr %.val1037, i64 %i.lh
  store i32 0, ptr %i.qq, align 1
  %i.qr = add i32 %i.b, -260
  %i.qs = add i32 %i.b, -304
  %i.qt = add i32 %i.b, -308
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AdefineOwnPropertyInternal0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x2C0x20hermes0x3A0x3Avm0x3A0x3ADefinePropertyFlags0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APropOpFlags0x29(ptr noundef nonnull %0, i32 noundef %i.qr, i32 noundef %.0990, i32 noundef %3, i32 noundef 466, i32 noundef %i.qs, i32 noundef %.0992, i32 noundef %i.qt) #8
  %.val1174 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qu = getelementptr inbounds nuw i8, ptr %.val1174, i64 %i.e
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 60
  %.0.copyload.i1263 = load i16, ptr %i.qv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i1263) #8, !srcloc !24
  %.val1178 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qw = getelementptr inbounds nuw i8, ptr %.val1178, i64 %i.lj
  store i16 %.0.copyload.i1263, ptr %i.qw, align 1
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.o
  %i.qx = zext i32 %.0990 to i64                  ; 2 uses
  %.val1086 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qy = getelementptr inbounds nuw i8, ptr %.val1086, i64 %i.qx
  %.0.copyload.i1264 = load i32, ptr %i.qy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1264) #8, !srcloc !19
  %i.qz = zext i32 %.0.copyload.i1264 to i64
  %i.ra = add nuw nsw i64 %i.qz, 4                ; 2 uses
  %.val1085 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rb = getelementptr inbounds nuw i8, ptr %.val1085, i64 %i.ra
  %.0.copyload.i1265 = load i32, ptr %i.rb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1265) #8, !srcloc !19
  %i.rc = or i32 %.0.copyload.i1265, 1
  %.val1036 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rd = getelementptr inbounds nuw i8, ptr %.val1036, i64 %i.ra
  store i32 %i.rc, ptr %i.rd, align 1
  %.val1162 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.re = getelementptr inbounds nuw i8, ptr %.val1162, i64 %i.qx
  %.0.copyload.i1266 = load i64, ptr %i.re, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1266) #8, !srcloc !20
  %i.rf = zext i32 %1 to i64                      ; 2 uses
  %.val1141 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rg = getelementptr inbounds nuw i8, ptr %.val1141, i64 %i.rf
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 8
  store i64 %.0.copyload.i1266, ptr %i.rh, align 1
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bh, %bb.f
  %.sink1288 = phi i64 [ %i.rf, %bb.bk ], [ %i.qe, %bb.bh ], [ %i.bc, %bb.f ]
  %.sink = phi i32 [ 1, %bb.bk ], [ 0, %bb.bh ], [ %i.bb, %bb.f ]
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ri = getelementptr inbounds nuw i8, ptr %.val, i64 %.sink1288
  store i32 %.sink, ptr %i.ri, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A0x7EGCScope0x280x29(ptr noundef nonnull %0, i32 noundef %i.ab) #8
  store i32 %i.b, ptr %i.a, align 8, !tbaa !17
  ret void

bb.bm:                                            ; preds = %bb.ay
  tail call void @w2c_hermes_abort(ptr noundef nonnull %0) #8
  tail call void @wasm_rt_trap(i32 noundef 5) #9
  unreachable
}

declare i32 @w2c_hermes_hermes0x3A0x3ASourceErrorManager0x3A0x3AfindBufferLineAndLoc0x28llvh0x3A0x3ASMLoc0x2C0x20hermes0x3A0x3ASourceErrorManager0x3A0x3ASourceCoords0x260x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3ADebugInfo0x3A0x3AgetLocationForAddress0x28unsigned0x20int0x2C0x20unsigned0x20int0x290x20const(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACodeBlock0x3A0x3AgetVirtualOffset0x280x290x20const(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3ADebugInfo0x3A0x3AgetFilenameByID0x28unsigned0x20int0x290x20const(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3A0x3AcreateEfficient0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x260x260x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AhermesInternalGetEpilogues0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 4 uses
  %i.c = add i32 %i.b, -16                        ; 2 uses
  %i.d = add i32 %i.b, -32                        ; 2 uses
  store i32 %i.d, ptr %i.a, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 43 uses
  %i.f = zext i32 %i.c to i64                     ; 5 uses
  %i.g = add nuw nsw i64 %i.f, 12                 ; 2 uses
  %.val472 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val472, i64 %i.g
  store i32 0, ptr %i.h, align 1
  %i.i = add nuw nsw i64 %i.f, 4                  ; 6 uses
  %.val499 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %.val499, i64 %i.i
  store i64 0, ptr %i.j, align 1
  %i.k = add i32 %3, 5572
  %i.l = zext i32 %i.k to i64
  %.val495 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %.val495, i64 %i.l
  %.0.copyload.i = load i32, ptr %i.m, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !19
end_hunk_5
