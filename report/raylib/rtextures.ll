Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtextures?download=true
inline.NumInlined: 812
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 82
loop-unroll.NumUnrolled: 114
begin_hunk_0_@stbir__horizontal_gather_2_channels_with_n_coeffs_mod3:bb.a
  %i.aj = load <4 x float>, ptr %i.ai, align 1    ; 2 uses
  %i.ak = shufflevector <4 x float> %i.aj, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.al = getelementptr inbounds nuw i8, ptr %.056, i64 64
  %i.am = load <4 x float>, ptr %i.al, align 1
  %i.an = fmul <4 x float> %i.am, %i.ak
  %i.ao = fadd <4 x float> %i.aa, %i.an
  %i.ap = shufflevector <4 x float> %i.aj, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.aq = getelementptr inbounds nuw i8, ptr %.056, i64 80
  %i.ar = load i64, ptr %i.aq, align 1
  %i.as = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.ar, i64 0
  %i.at = bitcast <2 x i64> %i.as to <4 x float>
  %i.au = fmul <4 x float> %i.ap, %i.at
  %i.av = fadd <4 x float> %i.af, %i.au
  %i.aw = fadd <4 x float> %i.ao, %i.av           ; 2 uses
  %i.ax = shufflevector <4 x float> %i.aw, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ay = fadd <4 x float> %i.aw, %i.ax
  %i.az = bitcast <4 x float> %i.ay to <2 x i64>
  %i.ba = extractelement <2 x i64> %i.az, i64 0
  store i64 %i.ba, ptr %.057, align 1
  %i.bb = getelementptr inbounds [4 x i8], ptr %.058, i64 %i.d
  %i.bc = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.057, i64 8 ; 2 uses
  %i.be = icmp ult ptr %i.bd, %i.c
  br i1 %i.be, label %bb.b, label %bb.e, !llvm.loop !636

bb.e:                                             ; preds = %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @stbir__horizontal_gather_3_channels_with_n_coeffs_mod0(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #24 {
bb.a:
  %i.a = mul i32 %1, 3
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b
  %i.d = sext i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.071 = phi ptr [ %4, %bb.a ], [ %i.be, %bb.e ] ; 3 uses
  %.070 = phi ptr [ %3, %bb.a ], [ %i.bd, %bb.e ] ; 3 uses
  %.069 = phi ptr [ %0, %bb.a ], [ %i.ax, %bb.e ] ; 4 uses
  %i.e = load i32, ptr %.070, align 4             ; 2 uses
  %i.f = mul nsw i32 %i.e, 3
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %2, i64 %i.g ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.070, i64 4
  %i.j = load i32, ptr %i.i, align 4
  %i.k = sub nsw i32 %i.j, %i.e
  %i.l = ashr i32 %i.k, 2
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %i.h) #52, !srcloc !640
  %i.m = load <4 x float>, ptr %.071, align 1     ; 3 uses
  %i.n = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.o = load <4 x float>, ptr %i.h, align 1
  %i.p = fmul <4 x float> %i.o, %i.n
  %i.q = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.s = load <4 x float>, ptr %i.r, align 1
  %i.t = fmul <4 x float> %i.q, %i.s
  %i.u = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 3, i32 3>
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.w = load <4 x float>, ptr %i.v, align 1
  %i.x = fmul <4 x float> %i.u, %i.w
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.068 = phi ptr [ %i.h, %bb.b ], [ %i.z, %bb.c ] ; 3 uses
  %.067 = phi i32 [ %i.l, %bb.b ], [ %i.ap, %bb.c ] ; 2 uses
  %.066 = phi ptr [ %.071, %bb.b ], [ %i.y, %bb.c ]
  %.065 = phi <4 x float> [ %i.p, %bb.b ], [ %i.ae, %bb.c ]
  %.064 = phi <4 x float> [ %i.t, %bb.b ], [ %i.aj, %bb.c ]
  %.063 = phi <4 x float> [ %i.x, %bb.b ], [ %i.ao, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %.066, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.068, i64 48 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.z) #52, !srcloc !641
  %i.aa = load <4 x float>, ptr %i.y, align 1     ; 3 uses
  %i.ab = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ac = load <4 x float>, ptr %i.z, align 1
  %i.ad = fmul <4 x float> %i.ac, %i.ab
  %i.ae = fadd <4 x float> %.065, %i.ad           ; 3 uses
  %i.af = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.ag = getelementptr inbounds nuw i8, ptr %.068, i64 64
  %i.ah = load <4 x float>, ptr %i.ag, align 1
  %i.ai = fmul <4 x float> %i.af, %i.ah
  %i.aj = fadd <4 x float> %.064, %i.ai           ; 3 uses
  %i.ak = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 3, i32 3>
  %i.al = getelementptr inbounds nuw i8, ptr %.068, i64 80
  %i.am = load <4 x float>, ptr %i.al, align 1
  %i.an = fmul <4 x float> %i.ak, %i.am
  %i.ao = fadd <4 x float> %.063, %i.an           ; 3 uses
  %i.ap = add nsw i32 %.067, -1
  %i.aq = icmp sgt i32 %.067, 1
  br i1 %i.aq, label %bb.c, label %bb.d, !llvm.loop !639

bb.d:                                             ; preds = %bb.c
  %i.ar = shufflevector <4 x float> %i.ae, <4 x float> %i.aj, <4 x i32> <i32 3, i32 4, i32 5, i32 2>
  %i.as = shufflevector <4 x float> %i.aj, <4 x float> %i.ao, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.at = shufflevector <4 x float> %i.ao, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.au = fadd <4 x float> %i.ae, %i.as
  %i.av = fadd <4 x float> %i.ar, %i.at
  %i.aw = fadd <4 x float> %i.av, %i.au           ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.069, i64 12 ; 2 uses
  %i.ay = icmp ult ptr %i.ax, %i.c
  br i1 %i.ay, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  %i.az = bitcast <4 x float> %i.aw to <2 x i64>
  %i.ba = extractelement <2 x i64> %i.az, i64 0
  store i64 %i.ba, ptr %.069, align 1
  %i.bb = getelementptr inbounds nuw i8, ptr %.069, i64 8
  %i.bc = extractelement <4 x float> %i.aw, i64 2
  store float %i.bc, ptr %i.bb, align 1
  ret void

bb.e:                                             ; preds = %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %.070, i64 8
  %i.be = getelementptr inbounds [4 x i8], ptr %.071, i64 %i.d
  store <4 x float> %i.aw, ptr %.069, align 1
  br label %bb.b
}

; Function Attrs: nounwind uwtable
define internal void @stbir__horizontal_gather_3_channels_with_n_coeffs_mod1(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #24 {
bb.a:
  %i.a = mul i32 %1, 3
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b
  %i.d = sext i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.077 = phi ptr [ %4, %bb.a ], [ %i.bn, %bb.e ] ; 3 uses
  %.076 = phi ptr [ %3, %bb.a ], [ %i.bm, %bb.e ] ; 3 uses
  %.075 = phi ptr [ %0, %bb.a ], [ %i.bg, %bb.e ] ; 4 uses
  %i.e = load i32, ptr %.076, align 4             ; 2 uses
  %i.f = mul nsw i32 %i.e, 3
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %2, i64 %i.g ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.076, i64 4
  %i.j = load i32, ptr %i.i, align 4
  %i.k = xor i32 %i.e, -1
  %i.l = add i32 %i.j, %i.k
  %i.m = ashr i32 %i.l, 2
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %i.h) #52, !srcloc !643
  %i.n = load <4 x float>, ptr %.077, align 1     ; 3 uses
  %i.o = shufflevector <4 x float> %i.n, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.p = load <4 x float>, ptr %i.h, align 1
  %i.q = fmul <4 x float> %i.p, %i.o
  %i.r = shufflevector <4 x float> %i.n, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.t = load <4 x float>, ptr %i.s, align 1
  %i.u = fmul <4 x float> %i.r, %i.t
  %i.v = shufflevector <4 x float> %i.n, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 3, i32 3>
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.x = load <4 x float>, ptr %i.w, align 1
  %i.y = fmul <4 x float> %i.v, %i.x
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.074 = phi ptr [ %i.h, %bb.b ], [ %i.aa, %bb.c ] ; 4 uses
  %.073 = phi i32 [ %i.m, %bb.b ], [ %i.aq, %bb.c ] ; 2 uses
  %.072 = phi ptr [ %.077, %bb.b ], [ %i.z, %bb.c ] ; 2 uses
  %.071 = phi <4 x float> [ %i.q, %bb.b ], [ %i.af, %bb.c ]
  %.070 = phi <4 x float> [ %i.u, %bb.b ], [ %i.ak, %bb.c ]
  %.069 = phi <4 x float> [ %i.y, %bb.b ], [ %i.ap, %bb.c ]
  %i.z = getelementptr inbounds nuw i8, ptr %.072, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.074, i64 48 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.aa) #52, !srcloc !644
  %i.ab = load <4 x float>, ptr %i.z, align 1     ; 3 uses
  %i.ac = shufflevector <4 x float> %i.ab, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ad = load <4 x float>, ptr %i.aa, align 1
  %i.ae = fmul <4 x float> %i.ad, %i.ac
  %i.af = fadd <4 x float> %.071, %i.ae           ; 2 uses
  %i.ag = shufflevector <4 x float> %i.ab, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.ah = getelementptr inbounds nuw i8, ptr %.074, i64 64
  %i.ai = load <4 x float>, ptr %i.ah, align 1
  %i.aj = fmul <4 x float> %i.ag, %i.ai
  %i.ak = fadd <4 x float> %.070, %i.aj           ; 3 uses
  %i.al = shufflevector <4 x float> %i.ab, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 3, i32 3>
  %i.am = getelementptr inbounds nuw i8, ptr %.074, i64 80
  %i.an = load <4 x float>, ptr %i.am, align 1
  %i.ao = fmul <4 x float> %i.al, %i.an
  %i.ap = fadd <4 x float> %.069, %i.ao           ; 3 uses
  %i.aq = add nsw i32 %.073, -1
  %i.ar = icmp sgt i32 %.073, 1
  br i1 %i.ar, label %bb.c, label %bb.d, !llvm.loop !642

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.aa) #52, !srcloc !645
  %i.as = getelementptr inbounds nuw i8, ptr %.072, i64 32
  %i.at = load float, ptr %i.as, align 1
  %i.au = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.at, i64 0
  %i.av = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.aw = getelementptr inbounds nuw i8, ptr %.074, i64 96
  %i.ax = load <4 x float>, ptr %i.aw, align 1
  %i.ay = fmul <4 x float> %i.ax, %i.av
  %i.az = fadd <4 x float> %i.af, %i.ay           ; 2 uses
  %i.ba = shufflevector <4 x float> %i.az, <4 x float> %i.ak, <4 x i32> <i32 3, i32 4, i32 5, i32 2>
  %i.bb = shufflevector <4 x float> %i.ak, <4 x float> %i.ap, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.bc = shufflevector <4 x float> %i.ap, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.bd = fadd <4 x float> %i.az, %i.bb
  %i.be = fadd <4 x float> %i.bc, %i.ba
  %i.bf = fadd <4 x float> %i.bd, %i.be           ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.075, i64 12 ; 2 uses
  %i.bh = icmp ult ptr %i.bg, %i.c
  br i1 %i.bh, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  %i.bi = bitcast <4 x float> %i.bf to <2 x i64>
  %i.bj = extractelement <2 x i64> %i.bi, i64 0
  store i64 %i.bj, ptr %.075, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %.075, i64 8
  %i.bl = extractelement <4 x float> %i.bf, i64 2
  store float %i.bl, ptr %i.bk, align 1
  ret void

bb.e:                                             ; preds = %bb.d
  %i.bm = getelementptr inbounds nuw i8, ptr %.076, i64 8
  %i.bn = getelementptr inbounds [4 x i8], ptr %.077, i64 %i.d
  store <4 x float> %i.bf, ptr %.075, align 1
  br label %bb.b
}

; Function Attrs: nounwind uwtable
define internal void @stbir__horizontal_gather_3_channels_with_n_coeffs_mod2(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #24 {
bb.a:
  %i.a = mul i32 %1, 3
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b
  %i.d = sext i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.082 = phi ptr [ %4, %bb.a ], [ %i.bu, %bb.e ] ; 3 uses
  %.081 = phi ptr [ %0, %bb.a ], [ %i.bn, %bb.e ] ; 4 uses
  %.074 = phi ptr [ %3, %bb.a ], [ %i.bt, %bb.e ] ; 3 uses
  %i.e = load i32, ptr %.074, align 4             ; 2 uses
  %i.f = mul nsw i32 %i.e, 3
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %2, i64 %i.g ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.074, i64 4
  %i.j = load i32, ptr %i.i, align 4
  %reass.sub = sub i32 %i.j, %i.e
  %i.k = add i32 %reass.sub, -2
  %i.l = ashr i32 %i.k, 2
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %i.h) #52, !srcloc !647
  %i.m = load <4 x float>, ptr %.082, align 1     ; 3 uses
  %i.n = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.o = load <4 x float>, ptr %i.h, align 1
  %i.p = fmul <4 x float> %i.o, %i.n
  %i.q = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.s = load <4 x float>, ptr %i.r, align 1
  %i.t = fmul <4 x float> %i.q, %i.s
  %i.u = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 3, i32 3>
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.w = load <4 x float>, ptr %i.v, align 1
  %i.x = fmul <4 x float> %i.u, %i.w
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.080 = phi ptr [ %i.h, %bb.b ], [ %i.z, %bb.c ] ; 5 uses
  %.079 = phi i32 [ %i.l, %bb.b ], [ %i.ap, %bb.c ] ; 2 uses
  %.078 = phi ptr [ %.082, %bb.b ], [ %i.y, %bb.c ] ; 2 uses
  %.077 = phi <4 x float> [ %i.p, %bb.b ], [ %i.ae, %bb.c ]
  %.076 = phi <4 x float> [ %i.t, %bb.b ], [ %i.aj, %bb.c ]
  %.075 = phi <4 x float> [ %i.x, %bb.b ], [ %i.ao, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %.078, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.080, i64 48 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.z) #52, !srcloc !648
  %i.aa = load <4 x float>, ptr %i.y, align 1     ; 3 uses
  %i.ab = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ac = load <4 x float>, ptr %i.z, align 1
  %i.ad = fmul <4 x float> %i.ac, %i.ab
  %i.ae = fadd <4 x float> %.077, %i.ad           ; 2 uses
  %i.af = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.ag = getelementptr inbounds nuw i8, ptr %.080, i64 64
  %i.ah = load <4 x float>, ptr %i.ag, align 1
  %i.ai = fmul <4 x float> %i.af, %i.ah
  %i.aj = fadd <4 x float> %.076, %i.ai           ; 2 uses
  %i.ak = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 3, i32 3>
  %i.al = getelementptr inbounds nuw i8, ptr %.080, i64 80
  %i.am = load <4 x float>, ptr %i.al, align 1
  %i.an = fmul <4 x float> %i.ak, %i.am
  %i.ao = fadd <4 x float> %.075, %i.an           ; 3 uses
  %i.ap = add nsw i32 %.079, -1
  %i.aq = icmp sgt i32 %.079, 1
  br i1 %i.aq, label %bb.c, label %bb.d, !llvm.loop !646

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.z) #52, !srcloc !649
  %i.ar = getelementptr inbounds nuw i8, ptr %.078, i64 32
  %i.as = load i64, ptr %i.ar, align 1
  %i.at = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.as, i64 0
  %i.au = bitcast <2 x i64> %i.at to <4 x float>  ; 2 uses
  %i.av = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.aw = getelementptr inbounds nuw i8, ptr %.080, i64 96
  %i.ax = load <4 x float>, ptr %i.aw, align 1
  %i.ay = fmul <4 x float> %i.ax, %i.av
  %i.az = fadd <4 x float> %i.ae, %i.ay           ; 2 uses
  %i.ba = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.bb = getelementptr inbounds nuw i8, ptr %.080, i64 112
  %i.bc = load i64, ptr %i.bb, align 1
  %i.bd = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.bc, i64 0
  %i.be = bitcast <2 x i64> %i.bd to <4 x float>
  %i.bf = fmul <4 x float> %i.ba, %i.be
  %i.bg = fadd <4 x float> %i.aj, %i.bf           ; 2 uses
  %i.bh = shufflevector <4 x float> %i.az, <4 x float> %i.bg, <4 x i32> <i32 3, i32 4, i32 5, i32 2>
  %i.bi = shufflevector <4 x float> %i.bg, <4 x float> %i.ao, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.bj = shufflevector <4 x float> %i.ao, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.bk = fadd <4 x float> %i.az, %i.bi
  %i.bl = fadd <4 x float> %i.bj, %i.bh
  %i.bm = fadd <4 x float> %i.bl, %i.bk           ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.081, i64 12 ; 2 uses
  %i.bo = icmp ult ptr %i.bn, %i.c
  br i1 %i.bo, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  %i.bp = bitcast <4 x float> %i.bm to <2 x i64>
  %i.bq = extractelement <2 x i64> %i.bp, i64 0
  store i64 %i.bq, ptr %.081, align 1
  %i.br = getelementptr inbounds nuw i8, ptr %.081, i64 8
  %i.bs = extractelement <4 x float> %i.bm, i64 2
  store float %i.bs, ptr %i.br, align 1
  ret void

bb.e:                                             ; preds = %bb.d
  %i.bt = getelementptr inbounds nuw i8, ptr %.074, i64 8
  %i.bu = getelementptr inbounds [4 x i8], ptr %.082, i64 %i.d
  store <4 x float> %i.bm, ptr %.081, align 1
  br label %bb.b
}

; Function Attrs: nounwind uwtable
define internal void @stbir__horizontal_gather_3_channels_with_n_coeffs_mod3(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #24 {
bb.a:
  %i.a = mul i32 %1, 3
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b
  %i.d = sext i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.086 = phi ptr [ %4, %bb.a ], [ %i.bw, %bb.e ] ; 3 uses
  %.085 = phi ptr [ %0, %bb.a ], [ %i.bp, %bb.e ] ; 4 uses
  %.078 = phi ptr [ %3, %bb.a ], [ %i.bv, %bb.e ] ; 3 uses
  %i.e = load i32, ptr %.078, align 4             ; 2 uses
  %i.f = mul nsw i32 %i.e, 3
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %2, i64 %i.g ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.078, i64 4
  %i.j = load i32, ptr %i.i, align 4
  %reass.sub = sub i32 %i.j, %i.e
  %i.k = add i32 %reass.sub, -3
  %i.l = ashr i32 %i.k, 2
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %i.h) #52, !srcloc !651
  %i.m = load <4 x float>, ptr %.086, align 1     ; 3 uses
  %i.n = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.o = load <4 x float>, ptr %i.h, align 1
  %i.p = fmul <4 x float> %i.o, %i.n
  %i.q = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.s = load <4 x float>, ptr %i.r, align 1
  %i.t = fmul <4 x float> %i.q, %i.s
  %i.u = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 3, i32 3>
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.w = load <4 x float>, ptr %i.v, align 1
  %i.x = fmul <4 x float> %i.u, %i.w
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.084 = phi ptr [ %i.h, %bb.b ], [ %i.z, %bb.c ] ; 6 uses
  %.083 = phi i32 [ %i.l, %bb.b ], [ %i.ap, %bb.c ] ; 2 uses
  %.082 = phi ptr [ %.086, %bb.b ], [ %i.y, %bb.c ] ; 2 uses
  %.081 = phi <4 x float> [ %i.p, %bb.b ], [ %i.ae, %bb.c ]
  %.080 = phi <4 x float> [ %i.t, %bb.b ], [ %i.aj, %bb.c ]
  %.079 = phi <4 x float> [ %i.x, %bb.b ], [ %i.ao, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %.082, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.084, i64 48 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.z) #52, !srcloc !652
  %i.aa = load <4 x float>, ptr %i.y, align 1     ; 3 uses
  %i.ab = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ac = load <4 x float>, ptr %i.z, align 1
  %i.ad = fmul <4 x float> %i.ac, %i.ab
  %i.ae = fadd <4 x float> %.081, %i.ad           ; 2 uses
  %i.af = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.ag = getelementptr inbounds nuw i8, ptr %.084, i64 64
  %i.ah = load <4 x float>, ptr %i.ag, align 1
  %i.ai = fmul <4 x float> %i.af, %i.ah
  %i.aj = fadd <4 x float> %.080, %i.ai           ; 2 uses
  %i.ak = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 3, i32 3>
  %i.al = getelementptr inbounds nuw i8, ptr %.084, i64 80
  %i.am = load <4 x float>, ptr %i.al, align 1
  %i.an = fmul <4 x float> %i.ak, %i.am
  %i.ao = fadd <4 x float> %.079, %i.an           ; 2 uses
  %i.ap = add nsw i32 %.083, -1
  %i.aq = icmp sgt i32 %.083, 1
  br i1 %i.aq, label %bb.c, label %bb.d, !llvm.loop !650

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.z) #52, !srcloc !653
  %i.ar = getelementptr inbounds nuw i8, ptr %.082, i64 32
  %i.as = load <4 x float>, ptr %i.ar, align 1    ; 3 uses
  %i.at = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.au = getelementptr inbounds nuw i8, ptr %.084, i64 96
  %i.av = load <4 x float>, ptr %i.au, align 1
  %i.aw = fmul <4 x float> %i.av, %i.at
  %i.ax = fadd <4 x float> %i.ae, %i.aw           ; 2 uses
  %i.ay = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.az = getelementptr inbounds nuw i8, ptr %.084, i64 112
  %i.ba = load <4 x float>, ptr %i.az, align 1
  %i.bb = fmul <4 x float> %i.ay, %i.ba
  %i.bc = fadd <4 x float> %i.aj, %i.bb           ; 2 uses
  %i.bd = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.be = getelementptr inbounds nuw i8, ptr %.084, i64 128
  %i.bf = load float, ptr %i.be, align 1
  %i.bg = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.bf, i64 0
  %i.bh = fmul <4 x float> %i.bd, %i.bg
  %i.bi = fadd <4 x float> %i.ao, %i.bh           ; 2 uses
  %i.bj = shufflevector <4 x float> %i.ax, <4 x float> %i.bc, <4 x i32> <i32 3, i32 4, i32 5, i32 2>
  %i.bk = shufflevector <4 x float> %i.bc, <4 x float> %i.bi, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.bl = shufflevector <4 x float> %i.bi, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.bm = fadd <4 x float> %i.ax, %i.bk
  %i.bn = fadd <4 x float> %i.bj, %i.bl
  %i.bo = fadd <4 x float> %i.bn, %i.bm           ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.085, i64 12 ; 2 uses
  %i.bq = icmp ult ptr %i.bp, %i.c
  br i1 %i.bq, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  %i.br = bitcast <4 x float> %i.bo to <2 x i64>
  %i.bs = extractelement <2 x i64> %i.br, i64 0
  store i64 %i.bs, ptr %.085, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %.085, i64 8
  %i.bu = extractelement <4 x float> %i.bo, i64 2
  store float %i.bu, ptr %i.bt, align 1
  ret void

bb.e:                                             ; preds = %bb.d
  %i.bv = getelementptr inbounds nuw i8, ptr %.078, i64 8
  %i.bw = getelementptr inbounds [4 x i8], ptr %.086, i64 %i.d
  store <4 x float> %i.bo, ptr %.085, align 1
  br label %bb.b
}

; Function Attrs: nounwind uwtable
define internal void @stbir__horizontal_gather_4_channels_with_n_coeffs_mod0(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #24 {
bb.a:
  %i.a = shl i32 %1, 2
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b
  %i.d = sext i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.061 = phi ptr [ %4, %bb.a ], [ %i.bd, %bb.d ] ; 3 uses
  %.060 = phi ptr [ %3, %bb.a ], [ %i.be, %bb.d ] ; 3 uses
  %.059 = phi ptr [ %0, %bb.a ], [ %i.bf, %bb.d ] ; 2 uses
  %i.e = load i32, ptr %.060, align 4             ; 2 uses
  %i.f = shl nsw i32 %i.e, 2
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %2, i64 %i.g ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.060, i64 4
  %i.j = load i32, ptr %i.i, align 4
  %i.k = sub nsw i32 %i.j, %i.e
  %i.l = ashr i32 %i.k, 2
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %i.h) #52, !srcloc !656
  %i.m = load <4 x float>, ptr %.061, align 1     ; 4 uses
  %i.n = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> zeroinitializer
  %i.o = load <4 x float>, ptr %i.h, align 1
  %i.p = fmul <4 x float> %i.o, %i.n
  %i.q = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.s = load <4 x float>, ptr %i.r, align 1
  %i.t = fmul <4 x float> %i.q, %i.s
  %i.u = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.w = load <4 x float>, ptr %i.v, align 1
  %i.x = fmul <4 x float> %i.u, %i.w
  %i.y = fadd <4 x float> %i.p, %i.x
  %i.z = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.ab = load <4 x float>, ptr %i.aa, align 1
  %i.ac = fmul <4 x float> %i.z, %i.ab
  %i.ad = fadd <4 x float> %i.t, %i.ac
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.058 = phi ptr [ %i.h, %bb.b ], [ %i.af, %bb.c ] ; 4 uses
  %.057 = phi i32 [ %i.l, %bb.b ], [ %i.ba, %bb.c ] ; 2 uses
  %.056 = phi ptr [ %.061, %bb.b ], [ %i.ae, %bb.c ]
  %.055 = phi <4 x float> [ %i.y, %bb.b ], [ %i.au, %bb.c ]
  %.0 = phi <4 x float> [ %i.ad, %bb.b ], [ %i.az, %bb.c ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.056, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.058, i64 64 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.af) #52, !srcloc !657
  %i.ag = load <4 x float>, ptr %i.ae, align 1    ; 4 uses
  %i.ah = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ai = load <4 x float>, ptr %i.af, align 1
  %i.aj = fmul <4 x float> %i.ai, %i.ah
  %i.ak = fadd <4 x float> %.055, %i.aj
  %i.al = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.am = getelementptr inbounds nuw i8, ptr %.058, i64 80
  %i.an = load <4 x float>, ptr %i.am, align 1
  %i.ao = fmul <4 x float> %i.al, %i.an
  %i.ap = fadd <4 x float> %.0, %i.ao
  %i.aq = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ar = getelementptr inbounds nuw i8, ptr %.058, i64 96
  %i.as = load <4 x float>, ptr %i.ar, align 1
  %i.at = fmul <4 x float> %i.aq, %i.as
  %i.au = fadd <4 x float> %i.ak, %i.at           ; 2 uses
  %i.av = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.aw = getelementptr inbounds nuw i8, ptr %.058, i64 112
end_hunk_0
begin_hunk_1_@stbir__horizontal_gather_7_channels_with_n_coeffs_mod3:bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.y = load <4 x float>, ptr %i.x, align 1
  %i.z = fmul <4 x float> %i.t, %i.y
  %i.aa = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.ac = load <4 x float>, ptr %i.ab, align 1
  %i.ad = fmul <4 x float> %i.aa, %i.ac
  %i.ae = fadd <4 x float> %i.p, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 68
  %i.ag = load <4 x float>, ptr %i.af, align 1
  %i.ah = fmul <4 x float> %i.aa, %i.ag
  %i.ai = fadd <4 x float> %i.s, %i.ah
  %i.aj = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3> ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 84
  %i.al = load <4 x float>, ptr %i.ak, align 1
  %i.am = fmul <4 x float> %i.aj, %i.al
  %i.an = fadd <4 x float> %i.w, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.ap = load <4 x float>, ptr %i.ao, align 1
  %i.aq = fmul <4 x float> %i.aj, %i.ap
  %i.ar = fadd <4 x float> %i.z, %i.aq
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0109 = phi ptr [ %i.h, %bb.b ], [ %i.at, %bb.c ] ; 14 uses
  %.0108 = phi i32 [ %i.l, %bb.b ], [ %i.ce, %bb.c ] ; 2 uses
  %.0107 = phi ptr [ %.0112, %bb.b ], [ %i.as, %bb.c ] ; 2 uses
  %.0106 = phi <4 x float> [ %i.ae, %bb.b ], [ %i.bq, %bb.c ]
  %.0105 = phi <4 x float> [ %i.ai, %bb.b ], [ %i.bu, %bb.c ]
  %.0104 = phi <4 x float> [ %i.an, %bb.b ], [ %i.bz, %bb.c ]
  %.0 = phi <4 x float> [ %i.ar, %bb.b ], [ %i.cd, %bb.c ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0107, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0109, i64 112 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.at) #52, !srcloc !690
  %i.au = load <4 x float>, ptr %i.as, align 1    ; 4 uses
  %i.av = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aw = load <4 x float>, ptr %i.at, align 1
  %i.ax = fmul <4 x float> %i.aw, %i.av
  %i.ay = fadd <4 x float> %.0106, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %.0109, i64 124
  %i.ba = load <4 x float>, ptr %i.az, align 1
  %i.bb = fmul <4 x float> %i.av, %i.ba
  %i.bc = fadd <4 x float> %.0105, %i.bb
  %i.bd = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0109, i64 140
  %i.bf = load <4 x float>, ptr %i.be, align 1
  %i.bg = fmul <4 x float> %i.bd, %i.bf
  %i.bh = fadd <4 x float> %.0104, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %.0109, i64 152
  %i.bj = load <4 x float>, ptr %i.bi, align 1
  %i.bk = fmul <4 x float> %i.bd, %i.bj
  %i.bl = fadd <4 x float> %.0, %i.bk
  %i.bm = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.0109, i64 168
  %i.bo = load <4 x float>, ptr %i.bn, align 1
  %i.bp = fmul <4 x float> %i.bm, %i.bo
  %i.bq = fadd <4 x float> %i.ay, %i.bp           ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.0109, i64 180
  %i.bs = load <4 x float>, ptr %i.br, align 1
  %i.bt = fmul <4 x float> %i.bm, %i.bs
  %i.bu = fadd <4 x float> %i.bc, %i.bt           ; 2 uses
  %i.bv = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3> ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.0109, i64 196
  %i.bx = load <4 x float>, ptr %i.bw, align 1
  %i.by = fmul <4 x float> %i.bv, %i.bx
  %i.bz = fadd <4 x float> %i.bh, %i.by           ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0109, i64 208
  %i.cb = load <4 x float>, ptr %i.ca, align 1
  %i.cc = fmul <4 x float> %i.bv, %i.cb
  %i.cd = fadd <4 x float> %i.bl, %i.cc           ; 2 uses
  %i.ce = add nsw i32 %.0108, -1
  %i.cf = icmp sgt i32 %.0108, 1
  br i1 %i.cf, label %bb.c, label %bb.d, !llvm.loop !687

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.at) #52, !srcloc !691
  %i.cg = getelementptr inbounds nuw i8, ptr %.0107, i64 32
  %i.ch = load <4 x float>, ptr %i.cg, align 1    ; 3 uses
  %i.ci = shufflevector <4 x float> %i.ch, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0109, i64 224
  %i.ck = load <4 x float>, ptr %i.cj, align 1
  %i.cl = fmul <4 x float> %i.ck, %i.ci
  %i.cm = fadd <4 x float> %i.bq, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %.0109, i64 236
  %i.co = load <4 x float>, ptr %i.cn, align 1
  %i.cp = fmul <4 x float> %i.ci, %i.co
  %i.cq = fadd <4 x float> %i.bu, %i.cp
  %i.cr = shufflevector <4 x float> %i.ch, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0109, i64 252
  %i.ct = load <4 x float>, ptr %i.cs, align 1
  %i.cu = fmul <4 x float> %i.cr, %i.ct
  %i.cv = fadd <4 x float> %i.bz, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %.0109, i64 264
  %i.cx = load <4 x float>, ptr %i.cw, align 1
  %i.cy = fmul <4 x float> %i.cr, %i.cx
  %i.cz = fadd <4 x float> %i.cd, %i.cy
  %i.da = shufflevector <4 x float> %i.ch, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.0109, i64 280
  %i.dc = load <4 x float>, ptr %i.db, align 1
  %i.dd = fmul <4 x float> %i.da, %i.dc
  %i.de = fadd <4 x float> %i.cm, %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %.0109, i64 292
  %i.dg = load <4 x float>, ptr %i.df, align 1
  %i.dh = fmul <4 x float> %i.da, %i.dg
  %i.di = fadd <4 x float> %i.cq, %i.dh
  %i.dj = fadd <4 x float> %i.cv, %i.de
  %i.dk = fadd <4 x float> %i.cz, %i.di
  %i.dl = getelementptr inbounds nuw i8, ptr %.0110, i64 12
  store <4 x float> %i.dk, ptr %i.dl, align 1
  store <4 x float> %i.dj, ptr %.0110, align 1
  %i.dm = getelementptr inbounds [4 x i8], ptr %.0112, i64 %i.d
  %i.dn = getelementptr inbounds nuw i8, ptr %.0111, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %.0110, i64 28 ; 2 uses
  %i.dp = icmp ult ptr %i.do, %i.c
  br i1 %i.dp, label %bb.b, label %bb.e, !llvm.loop !688

bb.e:                                             ; preds = %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @stbir__horizontal_gather_1_channels_with_1_coeff(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #24 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.a
  %i.c = sext i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.018 = phi ptr [ %0, %bb.a ], [ %i.l, %bb.b ]  ; 2 uses
  %.017 = phi ptr [ %4, %bb.a ], [ %i.j, %bb.b ]  ; 2 uses
  %.0 = phi ptr [ %3, %bb.a ], [ %i.k, %bb.b ]    ; 2 uses
  %i.d = load i32, ptr %.0, align 4
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %2, i64 %i.e ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %i.f) #52, !srcloc !693
  %i.g = load float, ptr %.017, align 1
  %i.h = load float, ptr %i.f, align 1
  %i.i = fmul float %i.g, %i.h
  store float %i.i, ptr %.018, align 1
  %i.j = getelementptr inbounds [4 x i8], ptr %.017, i64 %i.c
  %i.k = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %.018, i64 4 ; 2 uses
  %i.m = icmp ult ptr %i.l, %i.b
  br i1 %i.m, label %bb.b, label %bb.c, !llvm.loop !692

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @stbir__horizontal_gather_1_channels_with_2_coeffs(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #24 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.a
  %i.c = sext i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.022 = phi ptr [ %0, %bb.a ], [ %i.m, %bb.b ]  ; 2 uses
  %.021 = phi ptr [ %4, %bb.a ], [ %i.k, %bb.b ]  ; 2 uses
  %.0 = phi ptr [ %3, %bb.a ], [ %i.l, %bb.b ]    ; 2 uses
  %i.d = load i32, ptr %.0, align 4
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %2, i64 %i.e ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %i.f) #52, !srcloc !695
  %i.g = load <2 x float>, ptr %.021, align 1
  %i.h = load <2 x float>, ptr %i.f, align 1
  %i.i = fmul <2 x float> %i.g, %i.h
  %i.j = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.i)
  store float %i.j, ptr %.022, align 1
  %i.k = getelementptr inbounds [4 x i8], ptr %.021, i64 %i.c
  %i.l = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %.022, i64 4 ; 2 uses
  %i.n = icmp ult ptr %i.m, %i.b
  br i1 %i.n, label %bb.b, label %bb.c, !llvm.loop !694

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @stbir__horizontal_gather_1_channels_with_3_coeffs(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #24 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.a
  %i.c = sext i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.024 = phi ptr [ %0, %bb.a ], [ %i.m, %bb.b ]  ; 2 uses
  %.023 = phi ptr [ %4, %bb.a ], [ %i.k, %bb.b ]  ; 2 uses
  %.0 = phi ptr [ %3, %bb.a ], [ %i.l, %bb.b ]    ; 2 uses
  %i.d = load i32, ptr %.0, align 4
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %2, i64 %i.e ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %i.f) #52, !srcloc !697
  %i.g = load <4 x float>, ptr %.023, align 1
  %i.h = load <4 x float>, ptr %i.f, align 1
  %i.i = fmul <4 x float> %i.g, %i.h              ; 3 uses
  %6 = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %shift = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.i, %shift
  %foldExtExtBinop27 = fadd <4 x float> %foldExtExtBinop, %6
  %i.j = extractelement <4 x float> %foldExtExtBinop27, i64 0
  store float %i.j, ptr %.024, align 1
  %i.k = getelementptr inbounds [4 x i8], ptr %.023, i64 %i.c
  %i.l = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %.024, i64 4 ; 2 uses
  %i.n = icmp ult ptr %i.m, %i.b
  br i1 %i.n, label %bb.b, label %bb.c, !llvm.loop !696

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @stbir__horizontal_gather_1_channels_with_4_coeffs(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #24 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.a
  %i.c = sext i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.024 = phi ptr [ %0, %bb.a ], [ %i.p, %bb.b ]  ; 2 uses
  %.023 = phi ptr [ %4, %bb.a ], [ %i.n, %bb.b ]  ; 2 uses
  %.0 = phi ptr [ %3, %bb.a ], [ %i.o, %bb.b ]    ; 2 uses
  %i.d = load i32, ptr %.0, align 4
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %2, i64 %i.e ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %i.f) #52, !srcloc !699
  %i.g = load <4 x float>, ptr %.023, align 1
  %i.h = load <4 x float>, ptr %i.f, align 1
  %i.i = fmul <4 x float> %i.g, %i.h              ; 2 uses
  %i.j = shufflevector <4 x float> %i.i, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.k = shufflevector <4 x float> %i.i, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.l = fadd <2 x float> %i.j, %i.k
  %i.m = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.l)
  store float %i.m, ptr %.024, align 1
  %i.n = getelementptr inbounds [4 x i8], ptr %.023, i64 %i.c
  %i.o = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %.024, i64 4 ; 2 uses
  %i.q = icmp ult ptr %i.p, %i.b
  br i1 %i.q, label %bb.b, label %bb.c, !llvm.loop !698

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @stbir__horizontal_gather_1_channels_with_5_coeffs(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #24 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.a
  %i.c = sext i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.029 = phi ptr [ %0, %bb.a ], [ %i.v, %bb.b ]  ; 2 uses
  %.028 = phi ptr [ %4, %bb.a ], [ %i.t, %bb.b ]  ; 3 uses
  %.0 = phi ptr [ %3, %bb.a ], [ %i.u, %bb.b ]    ; 2 uses
  %i.d = load i32, ptr %.0, align 4
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %2, i64 %i.e ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %i.f) #52, !srcloc !701
  %i.g = load <4 x float>, ptr %.028, align 1
  %i.h = load <4 x float>, ptr %i.f, align 1
  %i.i = fmul <4 x float> %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %.028, i64 16
  %i.k = load float, ptr %i.j, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.m = load float, ptr %i.l, align 1
  %.scalar = fmul float %i.k, %i.m
  %i.n = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.scalar, i64 0
  %i.o = fadd <4 x float> %i.i, %i.n              ; 2 uses
  %i.p = shufflevector <4 x float> %i.o, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.q = shufflevector <4 x float> %i.o, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.r = fadd <2 x float> %i.p, %i.q
  %i.s = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.r)
  store float %i.s, ptr %.029, align 1
  %i.t = getelementptr inbounds [4 x i8], ptr %.028, i64 %i.c
  %i.u = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %.029, i64 4 ; 2 uses
  %i.w = icmp ult ptr %i.v, %i.b
  br i1 %i.w, label %bb.b, label %bb.c, !llvm.loop !700

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @stbir__horizontal_gather_1_channels_with_6_coeffs(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #24 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.a
  %i.c = sext i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.029 = phi ptr [ %0, %bb.a ], [ %i.z, %bb.b ]  ; 2 uses
  %.028 = phi ptr [ %4, %bb.a ], [ %i.x, %bb.b ]  ; 3 uses
  %.0 = phi ptr [ %3, %bb.a ], [ %i.y, %bb.b ]    ; 2 uses
  %i.d = load i32, ptr %.0, align 4
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %2, i64 %i.e ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %i.f) #52, !srcloc !703
  %i.g = load <4 x float>, ptr %.028, align 1
  %i.h = load <4 x float>, ptr %i.f, align 1
  %i.i = fmul <4 x float> %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %.028, i64 16
  %i.k = load i64, ptr %i.j, align 1
  %i.l = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.k, i64 0
  %i.m = bitcast <2 x i64> %i.l to <4 x float>
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.o = load i64, ptr %i.n, align 1
  %i.p = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.o, i64 0
  %i.q = bitcast <2 x i64> %i.p to <4 x float>
  %i.r = fmul <4 x float> %i.m, %i.q
  %i.s = fadd <4 x float> %i.i, %i.r              ; 2 uses
  %i.t = shufflevector <4 x float> %i.s, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.u = shufflevector <4 x float> %i.s, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.v = fadd <2 x float> %i.t, %i.u
  %i.w = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.v)
  store float %i.w, ptr %.029, align 1
  %i.x = getelementptr inbounds [4 x i8], ptr %.028, i64 %i.c
  %i.y = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.029, i64 4 ; 2 uses
  %i.aa = icmp ult ptr %i.z, %i.b
  br i1 %i.aa, label %bb.b, label %bb.c, !llvm.loop !702

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @stbir__horizontal_gather_1_channels_with_7_coeffs(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #24 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.a
  %i.c = sext i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.030 = phi ptr [ %0, %bb.a ], [ %i.x, %bb.b ]  ; 2 uses
  %.029 = phi ptr [ %4, %bb.a ], [ %i.v, %bb.b ]  ; 3 uses
  %.0 = phi ptr [ %3, %bb.a ], [ %i.w, %bb.b ]    ; 2 uses
  %i.d = load i32, ptr %.0, align 4
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %2, i64 %i.e ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %i.f) #52, !srcloc !705
  %i.g = load <4 x float>, ptr %.029, align 1
  %i.h = load <4 x float>, ptr %i.f, align 1
  %i.i = fmul <4 x float> %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %.029, i64 16
  %i.k = load <4 x i32>, ptr %i.j, align 1
  %i.l = and <4 x i32> %i.k, <i32 -1, i32 -1, i32 -1, i32 0>
  %i.m = bitcast <4 x i32> %i.l to <4 x float>
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.o = load <4 x float>, ptr %i.n, align 1
  %i.p = fmul <4 x float> %i.o, %i.m
  %i.q = fadd <4 x float> %i.i, %i.p              ; 2 uses
  %i.r = shufflevector <4 x float> %i.q, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.s = shufflevector <4 x float> %i.q, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.t = fadd <2 x float> %i.r, %i.s
  %i.u = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.t)
  store float %i.u, ptr %.030, align 1
  %i.v = getelementptr inbounds [4 x i8], ptr %.029, i64 %i.c
  %i.w = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %.030, i64 4 ; 2 uses
  %i.y = icmp ult ptr %i.x, %i.b
  br i1 %i.y, label %bb.b, label %bb.c, !llvm.loop !704

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @stbir__horizontal_gather_1_channels_with_8_coeffs(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #24 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.a
  %i.c = sext i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.029 = phi ptr [ %0, %bb.a ], [ %i.v, %bb.b ]  ; 2 uses
  %.028 = phi ptr [ %4, %bb.a ], [ %i.t, %bb.b ]  ; 3 uses
  %.0 = phi ptr [ %3, %bb.a ], [ %i.u, %bb.b ]    ; 2 uses
  %i.d = load i32, ptr %.0, align 4
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %2, i64 %i.e ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %i.f) #52, !srcloc !707
  %i.g = load <4 x float>, ptr %.028, align 1
  %i.h = load <4 x float>, ptr %i.f, align 1
  %i.i = fmul <4 x float> %i.g, %i.h
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.f) #52, !srcloc !708
  %i.j = getelementptr inbounds nuw i8, ptr %.028, i64 16
  %i.k = load <4 x float>, ptr %i.j, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.m = load <4 x float>, ptr %i.l, align 1
  %i.n = fmul <4 x float> %i.k, %i.m
  %i.o = fadd <4 x float> %i.i, %i.n              ; 2 uses
  %i.p = shufflevector <4 x float> %i.o, <4 x float> poison, <2 x i32> <i32 0, i32 1>
end_hunk_1
begin_hunk_2_@stbir__horizontal_gather_3_channels_with_1_coeff:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %.023, i64 12 ; 2 uses
  %i.u = icmp ult ptr %i.t, %i.c
  br i1 %i.u, label %bb.b, label %bb.c, !llvm.loop !752

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @stbir__horizontal_gather_3_channels_with_2_coeffs(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #24 {
bb.a:
  %i.a = mul i32 %1, 3
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b
  %i.d = sext i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.028 = phi ptr [ %0, %bb.a ], [ %i.z, %bb.b ]  ; 3 uses
  %.027 = phi ptr [ %4, %bb.a ], [ %i.x, %bb.b ]  ; 2 uses
  %.0 = phi ptr [ %3, %bb.a ], [ %i.y, %bb.b ]    ; 2 uses
  %i.e = load i32, ptr %.0, align 4
  %i.f = mul nsw i32 %i.e, 3
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %2, i64 %i.g ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %i.h) #52, !srcloc !755
  %i.i = load i64, ptr %.027, align 1
  %i.j = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.i, i64 0
  %i.k = bitcast <2 x i64> %i.j to <4 x float>    ; 2 uses
  %i.l = shufflevector <4 x float> %i.k, <4 x float> poison, <4 x i32> zeroinitializer
  %i.m = load <4 x float>, ptr %i.h, align 1
  %i.n = fmul <4 x float> %i.m, %i.l
  %i.o = shufflevector <4 x float> %i.k, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.q = load <4 x float>, ptr %i.p, align 1
  %i.r = fmul <4 x float> %i.q, %i.o
  %i.s = fadd <4 x float> %i.n, %i.r              ; 2 uses
  %i.t = bitcast <4 x float> %i.s to <2 x i64>
  %i.u = extractelement <2 x i64> %i.t, i64 0
  store i64 %i.u, ptr %.028, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %.028, i64 8
  %i.w = extractelement <4 x float> %i.s, i64 2
  store float %i.w, ptr %i.v, align 1
  %i.x = getelementptr inbounds [4 x i8], ptr %.027, i64 %i.d
  %i.y = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.028, i64 12 ; 2 uses
  %i.aa = icmp ult ptr %i.z, %i.c
  br i1 %i.aa, label %bb.b, label %bb.c, !llvm.loop !754

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @stbir__horizontal_gather_3_channels_with_3_coeffs(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #24 {
bb.a:
  %i.a = mul i32 %1, 3
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b
  %i.d = sext i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.033 = phi ptr [ %0, %bb.a ], [ %i.ac, %bb.b ] ; 3 uses
  %.032 = phi ptr [ %4, %bb.a ], [ %i.aa, %bb.b ] ; 2 uses
  %.0 = phi ptr [ %3, %bb.a ], [ %i.ab, %bb.b ]   ; 2 uses
  %i.e = load i32, ptr %.0, align 4
  %i.f = mul nsw i32 %i.e, 3
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %2, i64 %i.g ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %i.h) #52, !srcloc !757
  %i.i = load <4 x float>, ptr %.032, align 1     ; 3 uses
  %i.j = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> zeroinitializer
  %i.k = load <4 x float>, ptr %i.h, align 1
  %i.l = fmul <4 x float> %i.k, %i.j
  %i.m = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.o = load <4 x float>, ptr %i.n, align 1
  %i.p = fmul <4 x float> %i.o, %i.m
  %i.q = fadd <4 x float> %i.l, %i.p
  %i.r = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.t = load <4 x float>, ptr %i.s, align 1
  %i.u = fmul <4 x float> %i.r, %i.t
  %i.v = fadd <4 x float> %i.q, %i.u              ; 2 uses
  %i.w = bitcast <4 x float> %i.v to <2 x i64>
  %i.x = extractelement <2 x i64> %i.w, i64 0
  store i64 %i.x, ptr %.033, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %.033, i64 8
  %i.z = extractelement <4 x float> %i.v, i64 2
  store float %i.z, ptr %i.y, align 1
  %i.aa = getelementptr inbounds [4 x i8], ptr %.032, i64 %i.d
  %i.ab = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.033, i64 12 ; 2 uses
  %i.ad = icmp ult ptr %i.ac, %i.c
  br i1 %i.ad, label %bb.b, label %bb.c, !llvm.loop !756

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @stbir__horizontal_gather_3_channels_with_4_coeffs(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #24 {
bb.a:
  %i.a = mul i32 %1, 3
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b
  %i.d = sext i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.045 = phi ptr [ %4, %bb.a ], [ %i.ah, %bb.c ] ; 2 uses
  %.044 = phi ptr [ %3, %bb.a ], [ %i.ag, %bb.c ] ; 2 uses
  %.043 = phi ptr [ %0, %bb.a ], [ %i.aa, %bb.c ] ; 4 uses
  %i.e = load i32, ptr %.044, align 4
  %i.f = mul nsw i32 %i.e, 3
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %2, i64 %i.g ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %i.h) #52, !srcloc !758
  %i.i = load <4 x float>, ptr %.045, align 1     ; 3 uses
  %i.j = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.k = load <4 x float>, ptr %i.h, align 1
  %i.l = fmul <4 x float> %i.k, %i.j              ; 2 uses
  %i.m = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.o = load <4 x float>, ptr %i.n, align 1
  %i.p = fmul <4 x float> %i.m, %i.o              ; 2 uses
  %i.q = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 3, i32 3>
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.s = load <4 x float>, ptr %i.r, align 1
  %i.t = fmul <4 x float> %i.q, %i.s              ; 2 uses
  %i.u = shufflevector <4 x float> %i.l, <4 x float> %i.p, <4 x i32> <i32 3, i32 4, i32 5, i32 2>
  %i.v = shufflevector <4 x float> %i.p, <4 x float> %i.t, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.w = shufflevector <4 x float> %i.t, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.x = fadd <4 x float> %i.l, %i.v
  %i.y = fadd <4 x float> %i.u, %i.w
  %i.z = fadd <4 x float> %i.y, %i.x              ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.043, i64 12 ; 2 uses
  %i.ab = icmp ult ptr %i.aa, %i.c
  br i1 %i.ab, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.ac = bitcast <4 x float> %i.z to <2 x i64>
  %i.ad = extractelement <2 x i64> %i.ac, i64 0
  store i64 %i.ad, ptr %.043, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %.043, i64 8
  %i.af = extractelement <4 x float> %i.z, i64 2
  store float %i.af, ptr %i.ae, align 1
  ret void

bb.c:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %.044, i64 8
  %i.ah = getelementptr inbounds [4 x i8], ptr %.045, i64 %i.d
  store <4 x float> %i.z, ptr %.043, align 1
  br label %bb.b
}

; Function Attrs: nounwind uwtable
define internal void @stbir__horizontal_gather_3_channels_with_5_coeffs(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #24 {
bb.a:
  %i.a = mul i32 %1, 3
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b
  %i.d = sext i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.051 = phi ptr [ %4, %bb.a ], [ %i.ap, %bb.c ] ; 3 uses
  %.050 = phi ptr [ %3, %bb.a ], [ %i.ao, %bb.c ] ; 2 uses
  %.049 = phi ptr [ %0, %bb.a ], [ %i.ai, %bb.c ] ; 4 uses
  %i.e = load i32, ptr %.050, align 4
  %i.f = mul nsw i32 %i.e, 3
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %2, i64 %i.g ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %i.h) #52, !srcloc !759
  %i.i = load <4 x float>, ptr %.051, align 1     ; 3 uses
  %i.j = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.k = load <4 x float>, ptr %i.h, align 1
  %i.l = fmul <4 x float> %i.k, %i.j
  %i.m = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.o = load <4 x float>, ptr %i.n, align 1
  %i.p = fmul <4 x float> %i.m, %i.o              ; 2 uses
  %i.q = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 3, i32 3>
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.s = load <4 x float>, ptr %i.r, align 1
  %i.t = fmul <4 x float> %i.q, %i.s              ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.h) #52, !srcloc !760
  %i.u = getelementptr inbounds nuw i8, ptr %.051, i64 16
  %i.v = load float, ptr %i.u, align 1
  %i.w = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.v, i64 0
  %i.x = shufflevector <4 x float> %i.w, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.z = load <4 x float>, ptr %i.y, align 1
  %i.aa = fmul <4 x float> %i.z, %i.x
  %i.ab = fadd <4 x float> %i.l, %i.aa            ; 2 uses
  %i.ac = shufflevector <4 x float> %i.ab, <4 x float> %i.p, <4 x i32> <i32 3, i32 4, i32 5, i32 2>
  %i.ad = shufflevector <4 x float> %i.p, <4 x float> %i.t, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.ae = shufflevector <4 x float> %i.t, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.af = fadd <4 x float> %i.ab, %i.ad
  %i.ag = fadd <4 x float> %i.ae, %i.ac
  %i.ah = fadd <4 x float> %i.af, %i.ag           ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.049, i64 12 ; 2 uses
  %i.aj = icmp ult ptr %i.ai, %i.c
  br i1 %i.aj, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.ak = bitcast <4 x float> %i.ah to <2 x i64>
  %i.al = extractelement <2 x i64> %i.ak, i64 0
  store i64 %i.al, ptr %.049, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %.049, i64 8
  %i.an = extractelement <4 x float> %i.ah, i64 2
  store float %i.an, ptr %i.am, align 1
  ret void

bb.c:                                             ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %.050, i64 8
  %i.ap = getelementptr inbounds [4 x i8], ptr %.051, i64 %i.d
  store <4 x float> %i.ah, ptr %.049, align 1
  br label %bb.b
}

; Function Attrs: nounwind uwtable
define internal void @stbir__horizontal_gather_3_channels_with_6_coeffs(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #24 {
bb.a:
  %i.a = mul i32 %1, 3
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b
  %i.d = sext i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.056 = phi ptr [ %4, %bb.a ], [ %i.ax, %bb.c ] ; 3 uses
  %.055 = phi ptr [ %0, %bb.a ], [ %i.aq, %bb.c ] ; 4 uses
  %.054 = phi ptr [ %3, %bb.a ], [ %i.aw, %bb.c ] ; 2 uses
  %i.e = load i32, ptr %.054, align 4
  %i.f = mul nsw i32 %i.e, 3
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %2, i64 %i.g ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %i.h) #52, !srcloc !761
  %i.i = load <4 x float>, ptr %.056, align 1     ; 3 uses
  %i.j = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.k = load <4 x float>, ptr %i.h, align 1
  %i.l = fmul <4 x float> %i.k, %i.j
  %i.m = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.o = load <4 x float>, ptr %i.n, align 1
  %i.p = fmul <4 x float> %i.m, %i.o
  %i.q = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 3, i32 3>
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.s = load <4 x float>, ptr %i.r, align 1
  %i.t = fmul <4 x float> %i.q, %i.s              ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.h) #52, !srcloc !762
  %i.u = getelementptr inbounds nuw i8, ptr %.056, i64 16
  %i.v = load i64, ptr %i.u, align 1
  %i.w = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.v, i64 0
  %i.x = bitcast <2 x i64> %i.w to <4 x float>    ; 2 uses
  %i.y = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.aa = load <4 x float>, ptr %i.z, align 1
  %i.ab = fmul <4 x float> %i.aa, %i.y
  %i.ac = fadd <4 x float> %i.l, %i.ab            ; 2 uses
  %i.ad = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.af = load i64, ptr %i.ae, align 1
  %i.ag = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.af, i64 0
  %i.ah = bitcast <2 x i64> %i.ag to <4 x float>
  %i.ai = fmul <4 x float> %i.ad, %i.ah
  %i.aj = fadd <4 x float> %i.p, %i.ai            ; 2 uses
  %i.ak = shufflevector <4 x float> %i.ac, <4 x float> %i.aj, <4 x i32> <i32 3, i32 4, i32 5, i32 2>
  %i.al = shufflevector <4 x float> %i.aj, <4 x float> %i.t, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.am = shufflevector <4 x float> %i.t, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.an = fadd <4 x float> %i.ac, %i.al
  %i.ao = fadd <4 x float> %i.am, %i.ak
  %i.ap = fadd <4 x float> %i.ao, %i.an           ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.055, i64 12 ; 2 uses
  %i.ar = icmp ult ptr %i.aq, %i.c
  br i1 %i.ar, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.as = bitcast <4 x float> %i.ap to <2 x i64>
  %i.at = extractelement <2 x i64> %i.as, i64 0
  store i64 %i.at, ptr %.055, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %.055, i64 8
  %i.av = extractelement <4 x float> %i.ap, i64 2
  store float %i.av, ptr %i.au, align 1
  ret void

bb.c:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %.054, i64 8
  %i.ax = getelementptr inbounds [4 x i8], ptr %.056, i64 %i.d
  store <4 x float> %i.ap, ptr %.055, align 1
  br label %bb.b
}

; Function Attrs: nounwind uwtable
define internal void @stbir__horizontal_gather_3_channels_with_7_coeffs(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #24 {
bb.a:
  %i.a = mul i32 %1, 3
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b
  %i.d = sext i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.060 = phi ptr [ %4, %bb.a ], [ %i.az, %bb.c ] ; 3 uses
  %.059 = phi ptr [ %0, %bb.a ], [ %i.as, %bb.c ] ; 4 uses
  %.058 = phi ptr [ %3, %bb.a ], [ %i.ay, %bb.c ] ; 2 uses
  %i.e = load i32, ptr %.058, align 4
  %i.f = mul nsw i32 %i.e, 3
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %2, i64 %i.g ; 8 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %i.h) #52, !srcloc !763
  %i.i = load <4 x float>, ptr %.060, align 1     ; 3 uses
  %i.j = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.k = load <4 x float>, ptr %i.h, align 1
  %i.l = fmul <4 x float> %i.k, %i.j
  %i.m = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.o = load <4 x float>, ptr %i.n, align 1
  %i.p = fmul <4 x float> %i.m, %i.o
  %i.q = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 3, i32 3>
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.s = load <4 x float>, ptr %i.r, align 1
  %i.t = fmul <4 x float> %i.q, %i.s
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.h) #52, !srcloc !764
  %i.u = getelementptr inbounds nuw i8, ptr %.060, i64 16
  %i.v = load <4 x float>, ptr %i.u, align 1      ; 3 uses
  %i.w = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.y = load <4 x float>, ptr %i.x, align 1
  %i.z = fmul <4 x float> %i.y, %i.w
  %i.aa = fadd <4 x float> %i.l, %i.z             ; 2 uses
  %i.ab = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.ad = load <4 x float>, ptr %i.ac, align 1
  %i.ae = fmul <4 x float> %i.ab, %i.ad
  %i.af = fadd <4 x float> %i.p, %i.ae            ; 2 uses
  %i.ag = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.ai = load float, ptr %i.ah, align 1
  %i.aj = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.ai, i64 0
  %i.ak = fmul <4 x float> %i.ag, %i.aj
  %i.al = fadd <4 x float> %i.t, %i.ak            ; 2 uses
  %i.am = shufflevector <4 x float> %i.aa, <4 x float> %i.af, <4 x i32> <i32 3, i32 4, i32 5, i32 2>
  %i.an = shufflevector <4 x float> %i.af, <4 x float> %i.al, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.ao = shufflevector <4 x float> %i.al, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.ap = fadd <4 x float> %i.aa, %i.an
  %i.aq = fadd <4 x float> %i.am, %i.ao
  %i.ar = fadd <4 x float> %i.aq, %i.ap           ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.059, i64 12 ; 2 uses
  %i.at = icmp ult ptr %i.as, %i.c
  br i1 %i.at, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.au = bitcast <4 x float> %i.ar to <2 x i64>
  %i.av = extractelement <2 x i64> %i.au, i64 0
  store i64 %i.av, ptr %.059, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %.059, i64 8
  %i.ax = extractelement <4 x float> %i.ar, i64 2
  store float %i.ax, ptr %i.aw, align 1
  ret void

bb.c:                                             ; preds = %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %.058, i64 8
  %i.az = getelementptr inbounds [4 x i8], ptr %.060, i64 %i.d
  store <4 x float> %i.ar, ptr %.059, align 1
  br label %bb.b
}

; Function Attrs: nounwind uwtable
define internal void @stbir__horizontal_gather_3_channels_with_8_coeffs(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #24 {
bb.a:
  %i.a = mul i32 %1, 3
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b
  %i.d = sext i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.059 = phi ptr [ %4, %bb.a ], [ %i.ay, %bb.c ] ; 3 uses
  %.058 = phi ptr [ %3, %bb.a ], [ %i.ax, %bb.c ] ; 2 uses
  %.057 = phi ptr [ %0, %bb.a ], [ %i.ar, %bb.c ] ; 4 uses
  %i.e = load i32, ptr %.058, align 4
  %i.f = mul nsw i32 %i.e, 3
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %2, i64 %i.g ; 8 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %i.h) #52, !srcloc !765
  %i.i = load <4 x float>, ptr %.059, align 1     ; 3 uses
  %i.j = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.k = load <4 x float>, ptr %i.h, align 1
  %i.l = fmul <4 x float> %i.k, %i.j
  %i.m = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.o = load <4 x float>, ptr %i.n, align 1
  %i.p = fmul <4 x float> %i.m, %i.o
  %i.q = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 3, i32 3>
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.s = load <4 x float>, ptr %i.r, align 1
  %i.t = fmul <4 x float> %i.q, %i.s
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.h) #52, !srcloc !766
  %i.u = getelementptr inbounds nuw i8, ptr %.059, i64 16
  %i.v = load <4 x float>, ptr %i.u, align 1      ; 3 uses
  %i.w = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.y = load <4 x float>, ptr %i.x, align 1
  %i.z = fmul <4 x float> %i.y, %i.w
  %i.aa = fadd <4 x float> %i.l, %i.z             ; 2 uses
  %i.ab = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.ad = load <4 x float>, ptr %i.ac, align 1
  %i.ae = fmul <4 x float> %i.ab, %i.ad
  %i.af = fadd <4 x float> %i.p, %i.ae            ; 2 uses
  %i.ag = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 3, i32 3>
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.ai = load <4 x float>, ptr %i.ah, align 1
  %i.aj = fmul <4 x float> %i.ag, %i.ai
  %i.ak = fadd <4 x float> %i.t, %i.aj            ; 2 uses
  %i.al = shufflevector <4 x float> %i.aa, <4 x float> %i.af, <4 x i32> <i32 3, i32 4, i32 5, i32 2>
  %i.am = shufflevector <4 x float> %i.af, <4 x float> %i.ak, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.an = shufflevector <4 x float> %i.ak, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.ao = fadd <4 x float> %i.aa, %i.am
  %i.ap = fadd <4 x float> %i.al, %i.an
  %i.aq = fadd <4 x float> %i.ap, %i.ao           ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.057, i64 12 ; 2 uses
  %i.as = icmp ult ptr %i.ar, %i.c
  br i1 %i.as, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.at = bitcast <4 x float> %i.aq to <2 x i64>
  %i.au = extractelement <2 x i64> %i.at, i64 0
  store i64 %i.au, ptr %.057, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %.057, i64 8
  %i.aw = extractelement <4 x float> %i.aq, i64 2
  store float %i.aw, ptr %i.av, align 1
  ret void

bb.c:                                             ; preds = %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %.058, i64 8
  %i.ay = getelementptr inbounds [4 x i8], ptr %.059, i64 %i.d
  store <4 x float> %i.aq, ptr %.057, align 1
  br label %bb.b
}

; Function Attrs: nounwind uwtable
define internal void @stbir__horizontal_gather_3_channels_with_9_coeffs(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #24 {
bb.a:
  %i.a = mul i32 %1, 3
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b
  %i.d = sext i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.065 = phi ptr [ %4, %bb.a ], [ %i.bg, %bb.c ] ; 4 uses
  %.064 = phi ptr [ %3, %bb.a ], [ %i.bf, %bb.c ] ; 2 uses
  %.063 = phi ptr [ %0, %bb.a ], [ %i.az, %bb.c ] ; 4 uses
  %i.e = load i32, ptr %.064, align 4
  %i.f = mul nsw i32 %i.e, 3
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %2, i64 %i.g ; 10 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %i.h) #52, !srcloc !767
  %i.i = load <4 x float>, ptr %.065, align 1     ; 3 uses
  %i.j = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.k = load <4 x float>, ptr %i.h, align 1
  %i.l = fmul <4 x float> %i.k, %i.j
  %i.m = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.o = load <4 x float>, ptr %i.n, align 1
  %i.p = fmul <4 x float> %i.m, %i.o
  %i.q = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 3, i32 3>
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.s = load <4 x float>, ptr %i.r, align 1
  %i.t = fmul <4 x float> %i.q, %i.s
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.h) #52, !srcloc !768
  %i.u = getelementptr inbounds nuw i8, ptr %.065, i64 16
  %i.v = load <4 x float>, ptr %i.u, align 1      ; 3 uses
  %i.w = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.y = load <4 x float>, ptr %i.x, align 1
  %i.z = fmul <4 x float> %i.y, %i.w
  %i.aa = fadd <4 x float> %i.l, %i.z
  %i.ab = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.ad = load <4 x float>, ptr %i.ac, align 1
  %i.ae = fmul <4 x float> %i.ab, %i.ad
  %i.af = fadd <4 x float> %i.p, %i.ae            ; 2 uses
  %i.ag = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 3, i32 3>
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.ai = load <4 x float>, ptr %i.ah, align 1
  %i.aj = fmul <4 x float> %i.ag, %i.ai
  %i.ak = fadd <4 x float> %i.t, %i.aj            ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.h) #52, !srcloc !769
  %i.al = getelementptr inbounds nuw i8, ptr %.065, i64 32
  %i.am = load float, ptr %i.al, align 1
  %i.an = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.am, i64 0
  %i.ao = shufflevector <4 x float> %i.an, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.aq = load <4 x float>, ptr %i.ap, align 1
  %i.ar = fmul <4 x float> %i.aq, %i.ao
  %i.as = fadd <4 x float> %i.aa, %i.ar           ; 2 uses
  %i.at = shufflevector <4 x float> %i.as, <4 x float> %i.af, <4 x i32> <i32 3, i32 4, i32 5, i32 2>
  %i.au = shufflevector <4 x float> %i.af, <4 x float> %i.ak, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.av = shufflevector <4 x float> %i.ak, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.aw = fadd <4 x float> %i.as, %i.au
  %i.ax = fadd <4 x float> %i.av, %i.at
  %i.ay = fadd <4 x float> %i.aw, %i.ax           ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.063, i64 12 ; 2 uses
  %i.ba = icmp ult ptr %i.az, %i.c
  br i1 %i.ba, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.bb = bitcast <4 x float> %i.ay to <2 x i64>
  %i.bc = extractelement <2 x i64> %i.bb, i64 0
  store i64 %i.bc, ptr %.063, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %.063, i64 8
  %i.be = extractelement <4 x float> %i.ay, i64 2
  store float %i.be, ptr %i.bd, align 1
  ret void

bb.c:                                             ; preds = %bb.b
  %i.bf = getelementptr inbounds nuw i8, ptr %.064, i64 8
  %i.bg = getelementptr inbounds [4 x i8], ptr %.065, i64 %i.d
  store <4 x float> %i.ay, ptr %.063, align 1
  br label %bb.b
}

; Function Attrs: nounwind uwtable
define internal void @stbir__horizontal_gather_3_channels_with_10_coeffs(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #24 {
bb.a:
  %i.a = mul i32 %1, 3
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b
  %i.d = sext i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.070 = phi ptr [ %4, %bb.a ], [ %i.bo, %bb.c ] ; 4 uses
  %.069 = phi ptr [ %0, %bb.a ], [ %i.bh, %bb.c ] ; 4 uses
  %.068 = phi ptr [ %3, %bb.a ], [ %i.bn, %bb.c ] ; 2 uses
  %i.e = load i32, ptr %.068, align 4
  %i.f = mul nsw i32 %i.e, 3
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %2, i64 %i.g ; 11 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %i.h) #52, !srcloc !770
  %i.i = load <4 x float>, ptr %.070, align 1     ; 3 uses
  %i.j = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.k = load <4 x float>, ptr %i.h, align 1
  %i.l = fmul <4 x float> %i.k, %i.j
  %i.m = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.o = load <4 x float>, ptr %i.n, align 1
  %i.p = fmul <4 x float> %i.m, %i.o
  %i.q = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 3, i32 3>
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.s = load <4 x float>, ptr %i.r, align 1
  %i.t = fmul <4 x float> %i.q, %i.s
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.h) #52, !srcloc !771
  %i.u = getelementptr inbounds nuw i8, ptr %.070, i64 16
  %i.v = load <4 x float>, ptr %i.u, align 1      ; 3 uses
  %i.w = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.y = load <4 x float>, ptr %i.x, align 1
  %i.z = fmul <4 x float> %i.y, %i.w
  %i.aa = fadd <4 x float> %i.l, %i.z
  %i.ab = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.ad = load <4 x float>, ptr %i.ac, align 1
  %i.ae = fmul <4 x float> %i.ab, %i.ad
  %i.af = fadd <4 x float> %i.p, %i.ae
  %i.ag = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 3, i32 3>
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.ai = load <4 x float>, ptr %i.ah, align 1
  %i.aj = fmul <4 x float> %i.ag, %i.ai
  %i.ak = fadd <4 x float> %i.t, %i.aj            ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.h) #52, !srcloc !772
  %i.al = getelementptr inbounds nuw i8, ptr %.070, i64 32
  %i.am = load i64, ptr %i.al, align 1
  %i.an = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.am, i64 0
  %i.ao = bitcast <2 x i64> %i.an to <4 x float>  ; 2 uses
  %i.ap = shufflevector <4 x float> %i.ao, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.ar = load <4 x float>, ptr %i.aq, align 1
  %i.as = fmul <4 x float> %i.ar, %i.ap
  %i.at = fadd <4 x float> %i.aa, %i.as           ; 2 uses
  %i.au = shufflevector <4 x float> %i.ao, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.aw = load i64, ptr %i.av, align 1
  %i.ax = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.aw, i64 0
  %i.ay = bitcast <2 x i64> %i.ax to <4 x float>
  %i.az = fmul <4 x float> %i.au, %i.ay
  %i.ba = fadd <4 x float> %i.af, %i.az           ; 2 uses
  %i.bb = shufflevector <4 x float> %i.at, <4 x float> %i.ba, <4 x i32> <i32 3, i32 4, i32 5, i32 2>
  %i.bc = shufflevector <4 x float> %i.ba, <4 x float> %i.ak, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.bd = shufflevector <4 x float> %i.ak, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.be = fadd <4 x float> %i.at, %i.bc
  %i.bf = fadd <4 x float> %i.bd, %i.bb
  %i.bg = fadd <4 x float> %i.bf, %i.be           ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.069, i64 12 ; 2 uses
  %i.bi = icmp ult ptr %i.bh, %i.c
  br i1 %i.bi, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.bj = bitcast <4 x float> %i.bg to <2 x i64>
  %i.bk = extractelement <2 x i64> %i.bj, i64 0
  store i64 %i.bk, ptr %.069, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %.069, i64 8
  %i.bm = extractelement <4 x float> %i.bg, i64 2
  store float %i.bm, ptr %i.bl, align 1
  ret void

bb.c:                                             ; preds = %bb.b
  %i.bn = getelementptr inbounds nuw i8, ptr %.068, i64 8
  %i.bo = getelementptr inbounds [4 x i8], ptr %.070, i64 %i.d
  store <4 x float> %i.bg, ptr %.069, align 1
  br label %bb.b
}

; Function Attrs: nounwind uwtable
define internal void @stbir__horizontal_gather_3_channels_with_11_coeffs(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #24 {
bb.a:
  %i.a = mul i32 %1, 3
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b
  %i.d = sext i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.074 = phi ptr [ %4, %bb.a ], [ %i.bq, %bb.c ] ; 4 uses
  %.073 = phi ptr [ %0, %bb.a ], [ %i.bj, %bb.c ] ; 4 uses
  %.072 = phi ptr [ %3, %bb.a ], [ %i.bp, %bb.c ] ; 2 uses
  %i.e = load i32, ptr %.072, align 4
  %i.f = mul nsw i32 %i.e, 3
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %2, i64 %i.g ; 12 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %i.h) #52, !srcloc !773
  %i.i = load <4 x float>, ptr %.074, align 1     ; 3 uses
  %i.j = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.k = load <4 x float>, ptr %i.h, align 1
  %i.l = fmul <4 x float> %i.k, %i.j
  %i.m = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.o = load <4 x float>, ptr %i.n, align 1
  %i.p = fmul <4 x float> %i.m, %i.o
  %i.q = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 3, i32 3>
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.s = load <4 x float>, ptr %i.r, align 1
  %i.t = fmul <4 x float> %i.q, %i.s
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.h) #52, !srcloc !774
  %i.u = getelementptr inbounds nuw i8, ptr %.074, i64 16
  %i.v = load <4 x float>, ptr %i.u, align 1      ; 3 uses
  %i.w = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.y = load <4 x float>, ptr %i.x, align 1
  %i.z = fmul <4 x float> %i.y, %i.w
  %i.aa = fadd <4 x float> %i.l, %i.z
  %i.ab = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.ad = load <4 x float>, ptr %i.ac, align 1
  %i.ae = fmul <4 x float> %i.ab, %i.ad
  %i.af = fadd <4 x float> %i.p, %i.ae
  %i.ag = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 3, i32 3>
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.ai = load <4 x float>, ptr %i.ah, align 1
  %i.aj = fmul <4 x float> %i.ag, %i.ai
  %i.ak = fadd <4 x float> %i.t, %i.aj
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.h) #52, !srcloc !775
  %i.al = getelementptr inbounds nuw i8, ptr %.074, i64 32
  %i.am = load <4 x float>, ptr %i.al, align 1    ; 3 uses
  %i.an = shufflevector <4 x float> %i.am, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.ap = load <4 x float>, ptr %i.ao, align 1
  %i.aq = fmul <4 x float> %i.ap, %i.an
  %i.ar = fadd <4 x float> %i.aa, %i.aq           ; 2 uses
  %i.as = shufflevector <4 x float> %i.am, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.au = load <4 x float>, ptr %i.at, align 1
  %i.av = fmul <4 x float> %i.as, %i.au
  %i.aw = fadd <4 x float> %i.af, %i.av           ; 2 uses
  %i.ax = shufflevector <4 x float> %i.am, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.az = load float, ptr %i.ay, align 1
  %i.ba = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.az, i64 0
  %i.bb = fmul <4 x float> %i.ax, %i.ba
  %i.bc = fadd <4 x float> %i.ak, %i.bb           ; 2 uses
  %i.bd = shufflevector <4 x float> %i.ar, <4 x float> %i.aw, <4 x i32> <i32 3, i32 4, i32 5, i32 2>
  %i.be = shufflevector <4 x float> %i.aw, <4 x float> %i.bc, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.bf = shufflevector <4 x float> %i.bc, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.bg = fadd <4 x float> %i.ar, %i.be
  %i.bh = fadd <4 x float> %i.bd, %i.bf
  %i.bi = fadd <4 x float> %i.bh, %i.bg           ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.073, i64 12 ; 2 uses
  %i.bk = icmp ult ptr %i.bj, %i.c
  br i1 %i.bk, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.bl = bitcast <4 x float> %i.bi to <2 x i64>
  %i.bm = extractelement <2 x i64> %i.bl, i64 0
  store i64 %i.bm, ptr %.073, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %.073, i64 8
  %i.bo = extractelement <4 x float> %i.bi, i64 2
  store float %i.bo, ptr %i.bn, align 1
  ret void

bb.c:                                             ; preds = %bb.b
  %i.bp = getelementptr inbounds nuw i8, ptr %.072, i64 8
  %i.bq = getelementptr inbounds [4 x i8], ptr %.074, i64 %i.d
  store <4 x float> %i.bi, ptr %.073, align 1
  br label %bb.b
}

; Function Attrs: nounwind uwtable
define internal void @stbir__horizontal_gather_3_channels_with_12_coeffs(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #24 {
bb.a:
  %i.a = mul i32 %1, 3
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b
  %i.d = sext i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.073 = phi ptr [ %4, %bb.a ], [ %i.bp, %bb.c ] ; 4 uses
  %.072 = phi ptr [ %3, %bb.a ], [ %i.bo, %bb.c ] ; 2 uses
  %.071 = phi ptr [ %0, %bb.a ], [ %i.bi, %bb.c ] ; 4 uses
  %i.e = load i32, ptr %.072, align 4
  %i.f = mul nsw i32 %i.e, 3
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %2, i64 %i.g ; 12 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %i.h) #52, !srcloc !776
  %i.i = load <4 x float>, ptr %.073, align 1     ; 3 uses
  %i.j = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.k = load <4 x float>, ptr %i.h, align 1
  %i.l = fmul <4 x float> %i.k, %i.j
  %i.m = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.o = load <4 x float>, ptr %i.n, align 1
  %i.p = fmul <4 x float> %i.m, %i.o
  %i.q = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 3, i32 3>
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.s = load <4 x float>, ptr %i.r, align 1
  %i.t = fmul <4 x float> %i.q, %i.s
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.h) #52, !srcloc !777
  %i.u = getelementptr inbounds nuw i8, ptr %.073, i64 16
  %i.v = load <4 x float>, ptr %i.u, align 1      ; 3 uses
  %i.w = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.y = load <4 x float>, ptr %i.x, align 1
  %i.z = fmul <4 x float> %i.y, %i.w
  %i.aa = fadd <4 x float> %i.l, %i.z
  %i.ab = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.ad = load <4 x float>, ptr %i.ac, align 1
  %i.ae = fmul <4 x float> %i.ab, %i.ad
  %i.af = fadd <4 x float> %i.p, %i.ae
  %i.ag = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 3, i32 3>
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.ai = load <4 x float>, ptr %i.ah, align 1
  %i.aj = fmul <4 x float> %i.ag, %i.ai
  %i.ak = fadd <4 x float> %i.t, %i.aj
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.h) #52, !srcloc !778
  %i.al = getelementptr inbounds nuw i8, ptr %.073, i64 32
  %i.am = load <4 x float>, ptr %i.al, align 1    ; 3 uses
  %i.an = shufflevector <4 x float> %i.am, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.ap = load <4 x float>, ptr %i.ao, align 1
  %i.aq = fmul <4 x float> %i.ap, %i.an
  %i.ar = fadd <4 x float> %i.aa, %i.aq           ; 2 uses
  %i.as = shufflevector <4 x float> %i.am, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.au = load <4 x float>, ptr %i.at, align 1
  %i.av = fmul <4 x float> %i.as, %i.au
  %i.aw = fadd <4 x float> %i.af, %i.av           ; 2 uses
  %i.ax = shufflevector <4 x float> %i.am, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 3, i32 3>
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.az = load <4 x float>, ptr %i.ay, align 1
  %i.ba = fmul <4 x float> %i.ax, %i.az
  %i.bb = fadd <4 x float> %i.ak, %i.ba           ; 2 uses
  %i.bc = shufflevector <4 x float> %i.ar, <4 x float> %i.aw, <4 x i32> <i32 3, i32 4, i32 5, i32 2>
  %i.bd = shufflevector <4 x float> %i.aw, <4 x float> %i.bb, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.be = shufflevector <4 x float> %i.bb, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.bf = fadd <4 x float> %i.ar, %i.bd
  %i.bg = fadd <4 x float> %i.bc, %i.be
  %i.bh = fadd <4 x float> %i.bg, %i.bf           ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.071, i64 12 ; 2 uses
  %i.bj = icmp ult ptr %i.bi, %i.c
  br i1 %i.bj, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.bk = bitcast <4 x float> %i.bh to <2 x i64>
  %i.bl = extractelement <2 x i64> %i.bk, i64 0
  store i64 %i.bl, ptr %.071, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %.071, i64 8
  %i.bn = extractelement <4 x float> %i.bh, i64 2
  store float %i.bn, ptr %i.bm, align 1
  ret void

bb.c:                                             ; preds = %bb.b
  %i.bo = getelementptr inbounds nuw i8, ptr %.072, i64 8
end_hunk_2
