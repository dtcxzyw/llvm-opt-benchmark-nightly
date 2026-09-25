Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_1?download=true
inline.NumInlined: 26868
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@w2c_hermes_hermes0x3A0x3ASourceErrorManager0x3A0x3AdoGenMessage0x28hermes0x3A0x3ASourceErrorManager0x3A0x3ADiagKind0x2C0x20llvh0x3A0x3ASMLoc0x2C0x20llvh0x3A0x3ASMRange0x2C0x20llvh0x3A0x3ATwine0x20const0x260x29:bb.a
  tail call void @wasm_rt_trap(i32 noundef 5) #8
  unreachable

bb.ad:                                            ; preds = %bb.x
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3A_0x5Fthrow_out_of_range0x5Babi0x3Av150070x5D0x28char0x20const0x2A0x29(ptr noundef nonnull %0) #7
  tail call void @wasm_rt_trap(i32 noundef 5) #8
  unreachable

bb.ae:                                            ; preds = %bb.y
  %.val898 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iy = getelementptr inbounds nuw i8, ptr %.val898, i64 %i.ev
  store i32 %i.hh, ptr %i.iy, align 1
  %.val897 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iz = getelementptr inbounds nuw i8, ptr %.val897, i64 %i.et
  store i32 %i.hi, ptr %i.iz, align 1
  %.val896 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ja = getelementptr inbounds nuw i8, ptr %.val896, i64 %i.ft
  store i32 %i.gm, ptr %i.ja, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ab, %bb.z, %bb.ae
  %.1 = phi i32 [ %.0.copyload.i1027, %bb.ae ], [ %.0.copyload.i1034, %bb.z ], [ %.0.copyload.i1035, %bb.ab ] ; 2 uses
  %.not856 = icmp eq i32 %.1, 0
  br i1 %.not856, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.loopexit
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.1) #7
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.loopexit
  %.val980 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jb = getelementptr inbounds nuw i8, ptr %.val980, i64 %i.e
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 35
  %.0.copyload.i1038 = load i8, ptr %i.jc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1038) #7, !srcloc !22
  %i.jd = icmp sgt i8 %.0.copyload.i1038, -1
  br i1 %i.jd, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.je = getelementptr inbounds nuw i8, ptr %.val, i64 %i.gz
  %.0.copyload.i1039 = load i32, ptr %i.je, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1039) #7, !srcloc !19
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1039) #7
  br label %bb.aj

bb.ai:                                            ; preds = %bb.a
  %i.jf = zext i32 %4 to i64
  %.val938 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jg = getelementptr inbounds nuw i8, ptr %.val938, i64 %i.jf
  %.0.copyload.i1040 = load i64, ptr %i.jg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1040) #7, !srcloc !20
  %.val957 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jh = getelementptr inbounds nuw i8, ptr %.val957, i64 %i.e
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 48
  store i64 %.0.copyload.i1040, ptr %i.ji, align 1
  %i.jj = and i64 %.0.copyload.i1040, 4294967295
  %i.jk = icmp ne i64 %i.jj, 0                    ; 2 uses
  %i.jl = zext i1 %i.jk to i32
  %.val895 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jm = getelementptr inbounds nuw i8, ptr %.val895, i64 %i.e
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 28
  store i32 %i.jl, ptr %i.jn, align 1
  %i.jo = add i32 %i.b, -16
  %i.jp = select i1 %i.jk, i32 %i.jo, i32 0
  %i.jq = add nuw nsw i64 %i.e, 24                ; 2 uses
  %.val894 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jr = getelementptr inbounds nuw i8, ptr %.val894, i64 %i.jq
  store i32 %i.jp, ptr %i.jr, align 1
  %.val956 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.js = getelementptr inbounds nuw i8, ptr %.val956, i64 %i.e
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 56
  store i64 0, ptr %i.jt, align 1
  %.val979 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ju = getelementptr inbounds nuw i8, ptr %.val979, i64 %i.j
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 48
  %.0.copyload.i1041 = load i8, ptr %i.jv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1041) #7, !srcloc !21
  %i.jw = zext i8 %.0.copyload.i1041 to i32
  %.val937 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jx = getelementptr inbounds nuw i8, ptr %.val937, i64 %i.jq
  %.0.copyload.i1042 = load i64, ptr %i.jx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1042) #7, !srcloc !20
  %.val955 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jy = getelementptr inbounds nuw i8, ptr %.val955, i64 %i.e
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  store i64 %.0.copyload.i1042, ptr %i.jz, align 1
  %.val954 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ka = getelementptr inbounds nuw i8, ptr %.val954, i64 %i.e
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  store i64 0, ptr %i.kb, align 1
  %i.kc = add i32 %i.b, -48
  %i.kd = add i32 %i.b, -56
  tail call void @w2c_hermes_llvh0x3A0x3ASourceMgr0x3A0x3APrintMessage0x28llvh0x3A0x3ASMLoc0x2C0x20llvh0x3A0x3ASourceMgr0x3A0x3ADiagKind0x2C0x20llvh0x3A0x3ATwine0x20const0x260x2C0x20llvh0x3A0x3AArrayRef0x3Cllvh0x3A0x3ASMRange0x3E0x2C0x20llvh0x3A0x3AArrayRef0x3Cllvh0x3A0x3ASMFixIt0x3E0x2C0x20bool0x290x20const(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %3, i32 noundef %2, i32 noundef %5, i32 noundef %i.kc, i32 noundef %i.kd, i32 noundef %i.jw) #7
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ag, %bb.s, %bb.ai, %bb.ah, %bb.v, %bb.t
  store i32 %i.b, ptr %i.a, align 8, !tbaa !17
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @w2c_hermes_hermes0x3A0x3AUTF16Stream0x3A0x3Arefill0x280x29(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  %i.c = add i32 %i.b, -16                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 35 uses
  %i.e = zext i32 %1 to i64                       ; 12 uses
  %i.f = add nuw nsw i64 %i.e, 8                  ; 3 uses
  %.val494 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %.val494, i64 %i.f
  %.0.copyload.i = load i32, ptr %i.g, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %i.h = add nuw nsw i64 %i.e, 12                 ; 3 uses
  %.val493 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %.val493, i64 %i.h
  %.0.copyload.i511 = load i32, ptr %i.i, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i511) #7, !srcloc !19
  %i.j = icmp eq i32 %.0.copyload.i, %.0.copyload.i511
  br i1 %i.j, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add nuw nsw i64 %i.e, 16                 ; 3 uses
  %.val492 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %.val492, i64 %i.k
  %.0.copyload.i512 = load i32, ptr %i.l, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i512) #7, !srcloc !19
  %.not = icmp eq i32 %.0.copyload.i512, 0
  %.val480 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %.not, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw nsw i64 %i.e, 20                 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val480, i64 %i.m
  %.0.copyload.i513 = load i32, ptr %i.n, align 1 ; 9 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i513) #7, !srcloc !19
  %i.o = sub i32 %.0.copyload.i512, %.0.copyload.i513 ; 2 uses
  %i.p = ashr i32 %i.o, 1
  %i.q = add nuw nsw i64 %i.e, 24                 ; 7 uses
  %.val490 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %.val490, i64 %i.q
  %.0.copyload.i514 = load i32, ptr %i.r, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i514) #7, !srcloc !19
  %i.s = sub i32 %.0.copyload.i514, %.0.copyload.i513 ; 5 uses
  %i.t = ashr i32 %i.s, 1                         ; 4 uses
  %i.u = lshr i32 %i.t, 1
  %i.v = icmp ult i32 %i.p, %i.u
  %.val489 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %.val489, i64 %i.e ; 2 uses
  br i1 %i.v, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  %.0.copyload.i515 = load i32, ptr %i.w, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i515) #7, !srcloc !19
  %i.x = sub i32 %.0.copyload.i515, %.0.copyload.i513
  %i.y = icmp ult i32 %i.t, %i.s
  br i1 %i.y, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.z = sub nuw i32 %i.s, %i.t                   ; 4 uses
  %i.aa = add nuw nsw i64 %i.e, 28                ; 2 uses
  %.val488 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %.val488, i64 %i.aa
  %.0.copyload.i516 = load i32, ptr %i.ab, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i516) #7, !srcloc !19
  %.val487 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %.val487, i64 %i.q
  %.0.copyload.i517 = load i32, ptr %i.ac, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i517) #7, !srcloc !19
  %i.ad = sub i32 %.0.copyload.i516, %.0.copyload.i517
  %i.ae = ashr i32 %i.ad, 1
  %.not469 = icmp ugt i32 %i.z, %i.ae
  br i1 %.not469, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = shl i32 %i.z, 1                         ; 2 uses
  %i.ag = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %.0.copyload.i517, i32 noundef 0, i32 noundef %i.af) #7
  %i.ah = add i32 %i.ag, %i.af
  %.val508 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %.val508, i64 %i.q
  store i32 %i.ah, ptr %i.ai, align 1
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %.val486 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %.val486, i64 %i.m
  %.0.copyload.i518 = load i32, ptr %i.aj, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i518) #7, !srcloc !19
  %i.ak = sub i32 %.0.copyload.i517, %.0.copyload.i518 ; 3 uses
  %i.al = ashr i32 %i.ak, 1
  %i.am = add i32 %i.al, %i.z                     ; 2 uses
  %i.an = icmp sgt i32 %i.am, -1
  br i1 %i.an, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ao = sub i32 %.0.copyload.i516, %.0.copyload.i518 ; 2 uses
  %i.ap = tail call i32 @llvm.umax.i32(i32 %i.ao, i32 %i.am)
  %i.aq = icmp ugt i32 %i.ao, 2147483645
  %i.ar = select i1 %i.aq, i32 2147483647, i32 %i.ap ; 2 uses
  %.not470 = icmp eq i32 %i.ar, 0
  br i1 %.not470, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = shl i32 %i.ar, 1                        ; 2 uses
  %i.at = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.as) #7
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.h, %bb.i
  %.pre-phi = phi i32 [ %i.as, %bb.i ], [ 0, %bb.h ]
  %.0447 = phi i32 [ %i.at, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.au = and i32 %i.ak, -2
  %i.av = add i32 %.0447, %i.au
  %i.aw = shl i32 %i.z, 1                         ; 2 uses
  %i.ax = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.av, i32 noundef 0, i32 noundef %i.aw) #7
  %i.ay = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.0447, i32 noundef %.0.copyload.i518, i32 noundef %i.ak) #7 ; 2 uses
  %i.az = add i32 %i.ay, %.pre-phi
  %.val507 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ba = getelementptr inbounds nuw i8, ptr %.val507, i64 %i.aa
  store i32 %i.az, ptr %i.ba, align 1
  %i.bb = add i32 %i.ax, %i.aw
  %.val506 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bc = getelementptr inbounds nuw i8, ptr %.val506, i64 %i.q
  store i32 %i.bb, ptr %i.bc, align 1
  %.val505 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bd = getelementptr inbounds nuw i8, ptr %.val505, i64 %i.m
  store i32 %i.ay, ptr %i.bd, align 1
  %.not471 = icmp eq i32 %.0.copyload.i518, 0
  br i1 %.not471, label %bb.l, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i518) #7
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  tail call void @w2c_hermes_abort(ptr noundef nonnull %0) #7
  tail call void @wasm_rt_trap(i32 noundef 5) #8
  unreachable

bb.l:                                             ; preds = %._crit_edge, %bb.j, %bb.f
  %.val485 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %.val485, i64 %i.m
  %.0.copyload.i519 = load i32, ptr %i.be, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i519) #7, !srcloc !19
  %.val484 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %.val484, i64 %i.q
  %.0.copyload.i520 = load i32, ptr %i.bf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i520) #7, !srcloc !19
  br label %bb.o

bb.m:                                             ; preds = %bb.d
  %.not468 = icmp ugt i32 %i.t, %i.s
  br i1 %.not468, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bg = shl i32 %i.s, 1
  %i.bh = add i32 %i.bg, %.0.copyload.i513        ; 2 uses
  %.val504 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %.val504, i64 %i.q
  store i32 %i.bh, ptr %i.bi, align 1
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.l
  %.0449 = phi i32 [ %.0.copyload.i519, %bb.l ], [ %.0.copyload.i513, %bb.m ], [ %.0.copyload.i513, %bb.n ] ; 2 uses
  %.1 = phi i32 [ %.0.copyload.i520, %bb.l ], [ %.0.copyload.i514, %bb.m ], [ %i.bh, %bb.n ]
  %i.bj = and i32 %i.o, -2
  %i.bk = add i32 %.0449, %i.bj
  %.val503 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %.val503, i64 %i.k
  store i32 %i.bk, ptr %i.bl, align 1
  %i.bm = and i32 %i.x, -2
  %i.bn = add i32 %.0449, %i.bm
  br label %bb.u

bb.p:                                             ; preds = %bb.c
  %i.bo = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %.0.copyload.i521 = load i32, ptr %i.bo, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i521) #7, !srcloc !19
  %i.bp = sub i32 %.0.copyload.i521, %.0.copyload.i512 ; 2 uses
  %.not467 = icmp eq i32 %.0.copyload.i521, %.0.copyload.i512
  br i1 %.not467, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bq = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.0.copyload.i513, i32 noundef %.0.copyload.i512, i32 noundef %i.bp) #7 ; 0 uses
  %.val482 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.br = getelementptr inbounds nuw i8, ptr %.val482, i64 %i.q
  %.0.copyload.i522 = load i32, ptr %i.br, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i522) #7, !srcloc !19
  %.val481 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bs = getelementptr inbounds nuw i8, ptr %.val481, i64 %i.m
  %.0.copyload.i523 = load i32, ptr %i.bs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i523) #7, !srcloc !19
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.1450 = phi i32 [ %.0.copyload.i523, %bb.q ], [ %.0.copyload.i513, %bb.p ] ; 2 uses
  %.2 = phi i32 [ %.0.copyload.i522, %bb.q ], [ %.0.copyload.i514, %bb.p ]
  %.val502 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bt = getelementptr inbounds nuw i8, ptr %.val502, i64 %i.k
  store i32 %.1450, ptr %i.bt, align 1
  %i.bu = and i32 %i.bp, -2
  %i.bv = add i32 %.1450, %i.bu
  br label %bb.u

bb.s:                                             ; preds = %bb.b
  %i.bw = add nuw nsw i64 %i.e, 24                ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.val480, i64 %i.bw
  %.0.copyload.i524 = load i32, ptr %i.bx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i524) #7, !srcloc !19
  %.val479 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.by = getelementptr inbounds nuw i8, ptr %.val479, i64 %i.e
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 20
  %.0.copyload.i525 = load i32, ptr %i.bz, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i525) #7, !srcloc !19
  %i.ca = sub i32 %.0.copyload.i524, %.0.copyload.i525
  %i.cb = icmp ult i32 %i.ca, 4097
  br i1 %i.cb, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cc = add i32 %.0.copyload.i525, 2048         ; 2 uses
  %.val501 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cd = getelementptr inbounds nuw i8, ptr %.val501, i64 %i.bw
  store i32 %i.cc, ptr %i.cd, align 1
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.r, %bb.o
  %.0448 = phi i32 [ %i.bn, %bb.o ], [ %i.bv, %bb.r ], [ %.0.copyload.i525, %bb.s ], [ %.0.copyload.i525, %bb.t ] ; 4 uses
  %.3 = phi i32 [ %.1, %bb.o ], [ %.2, %bb.r ], [ %.0.copyload.i524, %bb.s ], [ %i.cc, %bb.t ]
  %i.ce = add i32 %1, 8                           ; 2 uses
  %.val500 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cf = getelementptr inbounds nuw i8, ptr %.val500, i64 %i.e
  store i32 %.0448, ptr %i.cf, align 1
  %i.cg = add i32 %.3, -2                         ; 3 uses
  %i.ch = add nuw nsw i64 %i.e, 4                 ; 2 uses
  %.val499 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ci = getelementptr inbounds nuw i8, ptr %.val499, i64 %i.ch
  store i32 %i.cg, ptr %i.ci, align 1
  %.val478 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cj = getelementptr inbounds nuw i8, ptr %.val478, i64 %i.h
  %.0.copyload.i526 = load i32, ptr %i.cj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i526) #7, !srcloc !19
  %.val477 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ck = getelementptr inbounds nuw i8, ptr %.val477, i64 %i.f
  %.0.copyload.i527 = load i32, ptr %i.ck, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i527) #7, !srcloc !19
  %i.cl = sub i32 %.0.copyload.i526, %.0.copyload.i527
  %i.cm = sub i32 %i.cg, %.0448
  %i.cn = ashr i32 %i.cm, 1
  %i.co = tail call i32 @llvm.smin.i32(i32 %i.cn, i32 %i.cl) ; 3 uses
  %i.cp = icmp slt i32 %i.co, 1
  br i1 %i.cp, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.u
  %i.cq = zext nneg i32 %i.co to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.v
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %bb.v ] ; 3 uses
  %i.cr = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.cs = add i32 %.0.copyload.i527, %i.cr
  %i.ct = zext i32 %i.cs to i64
  %.val509 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cu = getelementptr inbounds nuw i8, ptr %.val509, i64 %i.ct
  %.0.copyload.i528 = load i8, ptr %i.cu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i528) #7, !srcloc !22
  %i.cv = icmp slt i8 %.0.copyload.i528, 0
  br i1 %i.cv, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %.preheader
  %indvars.iv.tr = trunc nuw nsw i64 %indvars.iv to i32
  %i.cw = shl nuw nsw i32 %indvars.iv.tr, 1
  %i.cx = add i32 %i.cw, %.0448
  %i.cy = zext i32 %i.cx to i64
  %.val510 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cz = zext nneg i8 %.0.copyload.i528 to i16
  %i.da = getelementptr inbounds nuw i8, ptr %.val510, i64 %i.cy
  store i16 %i.cz, ptr %i.da, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not473 = icmp eq i64 %indvars.iv.next, %i.cq
  br i1 %.not473, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %bb.v, %.preheader, %bb.u
  %.3452 = phi i32 [ 0, %bb.u ], [ %i.co, %bb.v ], [ %i.cr, %.preheader ] ; 2 uses
  %i.db = add i32 %.3452, %.0.copyload.i527
  %i.dc = zext i32 %i.ce to i64
  %.val498 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dd = getelementptr inbounds nuw i8, ptr %.val498, i64 %i.dc
  store i32 %i.db, ptr %i.dd, align 1
  %i.de = shl i32 %.3452, 1
  %i.df = add i32 %i.de, %.0448
  %i.dg = zext i32 %i.c to i64
  %i.dh = add nuw nsw i64 %i.dg, 12               ; 2 uses
  %.val497 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.di = getelementptr inbounds nuw i8, ptr %.val497, i64 %i.dh
  store i32 %i.df, ptr %i.di, align 1
  %i.dj = add i32 %i.b, -4
  %i.dk = tail call i32 @w2c_hermes_llvh0x3A0x3AConvertUTF8toUTF160x28unsigned0x20char0x20const0x2A0x2A0x2C0x20unsigned0x20char0x20const0x2A0x2C0x20unsigned0x20short0x2A0x2A0x2C0x20unsigned0x20short0x2A0x2C0x20llvh0x3A0x3AConversionFlags0x29(ptr noundef nonnull %0, i32 noundef %i.ce, i32 noundef %.0.copyload.i526, i32 noundef %i.dj, i32 noundef %i.cg, i32 noundef 1) #7
  %.not474 = icmp eq i32 %i.dk, 2
  br i1 %.not474, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.loopexit
  %.val476 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dl = getelementptr inbounds nuw i8, ptr %.val476, i64 %i.h
  %.0.copyload.i529 = load i32, ptr %i.dl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i529) #7, !srcloc !19
  %.val496 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dm = getelementptr inbounds nuw i8, ptr %.val496, i64 %i.f
  store i32 %.0.copyload.i529, ptr %i.dm, align 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.loopexit
  %.val475 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dn = getelementptr inbounds nuw i8, ptr %.val475, i64 %i.dh
  %.0.copyload.i530 = load i32, ptr %i.dn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i530) #7, !srcloc !19
  %.val495 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.do = getelementptr inbounds nuw i8, ptr %.val495, i64 %i.ch
  store i32 %.0.copyload.i530, ptr %i.do, align 1
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dp = getelementptr inbounds nuw i8, ptr %.val, i64 %i.e
  %.0.copyload.i531 = load i32, ptr %i.dp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i531) #7, !srcloc !19
  %i.dq = icmp ne i32 %.0.copyload.i530, %.0.copyload.i531
  %i.dr = zext i1 %i.dq to i32
  br label %bb.y

bb.y:                                             ; preds = %bb.a, %bb.x
  %.0446 = phi i32 [ %i.dr, %bb.x ], [ 0, %bb.a ]
  store i32 %i.b, ptr %i.a, align 8, !tbaa !17
  ret i32 %.0446
}

declare i32 @w2c_hermes_llvh0x3A0x3AConvertUTF8toUTF160x28unsigned0x20char0x20const0x2A0x2A0x2C0x20unsigned0x20char0x20const0x2A0x2C0x20unsigned0x20short0x2A0x2A0x2C0x20unsigned0x20short0x2A0x2C0x20llvh0x3A0x3AConversionFlags0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3AisIdenticalTo0x28hermes0x3A0x3AInstruction0x20const0x2A0x290x20const(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 11 uses
  %i.b = zext i32 %1 to i64                       ; 4 uses
end_hunk_0
