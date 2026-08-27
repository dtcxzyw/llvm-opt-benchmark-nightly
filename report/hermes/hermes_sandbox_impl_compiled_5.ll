Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_5?download=true
inline.NumInlined: 16806
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AstringDirectedIndexOf0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20bool0x2C0x20bool0x29:bb.a
  %i.anj = getelementptr inbounds nuw i8, ptr %.val3393, i64 %i.ani
  %i.ank = getelementptr inbounds nuw i8, ptr %i.anj, i64 12
  %.0.copyload.i3851 = load i32, ptr %i.ank, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3851) #8, !srcloc !19
  %i.anl = add i32 %.0.copyload.i3850, 12
  %.val3565 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.anm = getelementptr inbounds nuw i8, ptr %.val3565, i64 %i.ani
  %i.ann = getelementptr inbounds nuw i8, ptr %i.anm, i64 23
  %.0.copyload.i3852 = load i8, ptr %i.ann, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3852) #8, !srcloc !22
  %i.ano = icmp slt i8 %.0.copyload.i3852, 0
  %i.anp = select i1 %i.ano, i32 %.0.copyload.i3851, i32 %i.anl
  br label %.thread3939

.thread3939:                                      ; preds = %.thread3935, %bb.ha, %bb.gz, %bb.gy, %bb.gw
  %i.anq = phi i32 [ %i.ami, %.thread3935 ], [ %i.ame, %bb.gw ], [ %i.ame, %bb.ha ], [ %i.ame, %bb.gy ], [ %i.ame, %bb.gz ]
  %.53154 = phi i32 [ %.0.copyload.i3830, %.thread3935 ], [ %i.anc, %bb.gw ], [ %i.anp, %bb.ha ], [ %i.ane, %bb.gy ], [ %i.anf, %bb.gz ]
  %i.anr = add i32 %.53154, %i.anq
  br label %bb.hi

.thread3905:                                      ; preds = %.thread3900
  br i1 %.not3355, label %bb.hh, label %bb.hb

bb.hb:                                            ; preds = %.thread3905
  %i.ans = zext i32 %.0.copyload.i3830 to i64
  %.val3392 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ant = getelementptr inbounds nuw i8, ptr %.val3392, i64 %i.ans
  %.0.copyload.i3853 = load i32, ptr %i.ant, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3853) #8, !srcloc !19
  %i.anu = zext i32 %.0.copyload.i3853 to i64     ; 4 uses
  %.val3391 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.anv = getelementptr inbounds nuw i8, ptr %.val3391, i64 %i.anu
  %.0.copyload.i3854 = load i32, ptr %i.anv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3854) #8, !srcloc !19
  %i.anw = icmp ugt i32 %.0.copyload.i3854, 150994943
  br i1 %i.anw, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %bb.hb
  %.val3390 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.anx = getelementptr inbounds nuw i8, ptr %.val3390, i64 %i.anu
  %i.any = getelementptr inbounds nuw i8, ptr %i.anx, i64 12
  %.0.copyload.i3855 = load i32, ptr %i.any, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3855) #8, !srcloc !19
  %i.anz = add i32 %.0.copyload.i3853, 12
  %.val3564 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aoa = getelementptr inbounds nuw i8, ptr %.val3564, i64 %i.anu
  %i.aob = getelementptr inbounds nuw i8, ptr %i.aoa, i64 23
  %.0.copyload.i3856 = load i8, ptr %i.aob, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3856) #8, !srcloc !22
  %i.aoc = icmp slt i8 %.0.copyload.i3856, 0
  %i.aod = select i1 %i.aoc, i32 %.0.copyload.i3855, i32 %i.anz
  br label %bb.hh

bb.hd:                                            ; preds = %bb.hb
  %i.aoe = and i32 %.0.copyload.i3854, 251658240
  switch i32 %i.aoe, label %bb.hg [
    i32 50331648, label %bb.hf
    i32 117440512, label %bb.he
  ]

bb.he:                                            ; preds = %bb.hd
  %i.aof = add i32 %.0.copyload.i3853, 12
  br label %bb.hh

bb.hf:                                            ; preds = %bb.hd
  %i.aog = add i32 %.0.copyload.i3853, 8
  br label %bb.hh

bb.hg:                                            ; preds = %bb.hd
  %.val3389 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aoh = getelementptr inbounds nuw i8, ptr %.val3389, i64 %i.anu
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.aoh, i64 8
  %.0.copyload.i3857 = load i32, ptr %i.aoi, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3857) #8, !srcloc !19
  %i.aoj = zext i32 %.0.copyload.i3857 to i64     ; 2 uses
  %.val3388 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aok = getelementptr inbounds nuw i8, ptr %.val3388, i64 %i.aoj
  %i.aol = getelementptr inbounds nuw i8, ptr %i.aok, i64 12
  %.0.copyload.i3858 = load i32, ptr %i.aol, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3858) #8, !srcloc !19
  %i.aom = add i32 %.0.copyload.i3857, 12
  %.val3563 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aon = getelementptr inbounds nuw i8, ptr %.val3563, i64 %i.aoj
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aon, i64 23
  %.0.copyload.i3859 = load i8, ptr %i.aoo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3859) #8, !srcloc !22
  %i.aop = icmp slt i8 %.0.copyload.i3859, 0
  %i.aoq = select i1 %i.aop, i32 %.0.copyload.i3858, i32 %i.aom
  br label %bb.hh

bb.hh:                                            ; preds = %.thread3905, %bb.hg, %bb.hf, %bb.he, %bb.hc
  %.63155 = phi i32 [ %.0.copyload.i3830, %.thread3905 ], [ %i.aod, %bb.hc ], [ %i.aoq, %bb.hg ], [ %i.aof, %bb.he ], [ %i.aog, %bb.hf ]
  %i.aor = add i32 %.63155, %i.amn
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %.thread3939
  %.113206 = phi i32 [ %i.anr, %.thread3939 ], [ 0, %bb.hh ]
  %.18 = phi i32 [ 0, %.thread3939 ], [ %i.aor, %bb.hh ]
  %i.aos = sub i32 %i.akd, %.113206
  %i.aot = sub i32 %i.aka, %.18
  %i.aou = ashr i32 %i.aot, 1
  %i.aov = select i1 %.not3351, i32 %i.aou, i32 %i.aos
  %i.aow = sub i32 %i.aov, %.0.copyload.i3831
  %i.aox = uitofp i32 %i.aow to double
  br label %bb.hj

bb.hj:                                            ; preds = %.thread3935, %.thread3900, %bb.gu, %bb.dl, %bb.hi, %bb.ed
  %.1 = phi double [ -1.000000e+00, %bb.gu ], [ %i.aox, %bb.hi ], [ -1.000000e+00, %bb.dl ], [ %i.xh, %bb.ed ], [ -1.000000e+00, %.thread3900 ], [ -1.000000e+00, %.thread3935 ]
  %i.aoy = zext i32 %1 to i64                     ; 2 uses
  %.val3633 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aoz = getelementptr inbounds nuw i8, ptr %.val3633, i64 %i.aoy
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aoz, i64 8
  store double %.1, ptr %i.apa, align 1
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.aa, %bb.x, %bb.v, %bb.j, %bb.e, %bb.c
  %.sink3949 = phi i64 [ %i.aoy, %bb.hj ], [ %i.ct, %bb.aa ], [ %i.ci, %bb.x ], [ %i.cf, %bb.v ], [ %i.ap, %bb.j ], [ %i.w, %bb.e ], [ %i.t, %bb.c ]
  %.sink = phi i32 [ 1, %bb.hj ], [ 1, %bb.aa ], [ 0, %bb.x ], [ 0, %bb.v ], [ 0, %bb.j ], [ 0, %bb.e ], [ 0, %bb.c ]
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.apb = getelementptr inbounds nuw i8, ptr %.val, i64 %.sink3949
  store i32 %.sink, ptr %i.apb, align 1
  store i32 %i.b, ptr %i.a, align 8, !tbaa !7
  ret void
}

declare i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoString_RJS0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoIntegerOrInfinity0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Apair0x3Chermes0x3A0x3Avm0x3A0x3AStringView0x3A0x3Aconst_iterator0x2C0x20hermes0x3A0x3Avm0x3A0x3AStringView0x3A0x3Aconst_iterator0x3E0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fsearch_random_access_impl0x5Babi0x3Av150070x5D0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20hermes0x3A0x3Avm0x3A0x3AStringView0x3A0x3Aconst_iterator0x2C0x20hermes0x3A0x3Avm0x3A0x3AStringView0x3A0x3Aconst_iterator0x2C0x20hermes0x3A0x3Avm0x3A0x3AStringView0x3A0x3Aconst_iterator0x2C0x20hermes0x3A0x3Avm0x3A0x3AStringView0x3A0x3Aconst_iterator0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fequal_to0x3Cchar16_t0x2C0x20char16_t0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fidentity0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fidentity0x2C0x20long0x2C0x20long0x3E0x28hermes0x3A0x3Avm0x3A0x3AStringView0x3A0x3Aconst_iterator0x2C0x20hermes0x3A0x3Avm0x3A0x3AStringView0x3A0x3Aconst_iterator0x2C0x20hermes0x3A0x3Avm0x3A0x3AStringView0x3A0x3Aconst_iterator0x2C0x20hermes0x3A0x3Avm0x3A0x3AStringView0x3A0x3Aconst_iterator0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fequal_to0x3Cchar16_t0x2C0x20char16_t0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fidentity0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fidentity0x260x2C0x20long0x2C0x20long0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden double @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AsecFromTime0x28double0x29(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = fdiv double %1, 1.000000e+03             ; 3 uses
  %i.b = fcmp uno double %i.a, 0.000000e+00
  br i1 %i.b, label %bb.b, label %bb.c, !prof !31

bb.b:                                             ; preds = %bb.a
  %i.c = bitcast double %i.a to i64
  %i.d = or i64 %i.c, 9221120237041090560
  %i.e = bitcast i64 %i.d to double
  br label %wasm_floor.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call double @llvm.floor.f64(double %i.a)
  br label %wasm_floor.exit

wasm_floor.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi double [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  %i.g = tail call double @w2c_hermes_fmod(ptr noundef %0, double noundef %.0.i, double noundef 6.000000e+01) #8 ; 2 uses
  %i.h = fcmp olt double %i.g, 0.000000e+00
  %i.i = select i1 %i.h, double 6.000000e+01, double -0.000000e+00
  %i.j = fadd double %i.g, %i.i
  ret double %i.j
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AquickSort0x28hermes0x3A0x3Avm0x3A0x3ASortModel0x2A0x2C0x20unsigned0x20int0x2C0x20unsigned0x20int0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 4 uses
  %i.c = add i32 %i.b, -32                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !7
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i32 %2, 1073741823
  br i1 %i.d, label %bb.z, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = shl nuw i32 %2, 2                        ; 3 uses
  %i.f = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.e) #8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 34 uses
  %i.h = zext i32 %i.c to i64                     ; 5 uses
  %i.i = add nuw nsw i64 %i.h, 12                 ; 4 uses
  %.val450 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %.val450, i64 %i.i
  store i32 %i.f, ptr %i.j, align 1
  %i.k = add i32 %i.f, %i.e                       ; 3 uses
  %.val449 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %.val449, i64 %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  store i32 %i.k, ptr %i.m, align 1
  %i.n = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef 0, i32 noundef %i.e) #8 ; 15 uses
  %i.o = add nuw nsw i64 %i.h, 16                 ; 2 uses
  %.val448 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %.val448, i64 %i.o
  store i32 %i.k, ptr %i.p, align 1
  %i.q = add nsw i32 %2, -1
  %i.r = icmp samesign ugt i32 %2, 7
  br i1 %i.r, label %bb.d, label %.loopexit487

bb.d:                                             ; preds = %bb.c
  %i.s = and i32 %2, 1073741816                   ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %bb.d ] ; 10 uses
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.t = shl nuw i32 %indvars.iv.tr, 2
  %i.u = add i32 %i.t, %i.n
  %i.v = zext i32 %i.u to i64
  %.val447 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %.val447, i64 %i.v
  %i.x = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.x, ptr %i.w, align 1
  %i.y = or disjoint i64 %indvars.iv, 1           ; 2 uses
  %.tr = trunc nuw i64 %i.y to i32
  %i.z = shl nuw i32 %.tr, 2
  %i.aa = add i32 %i.z, %i.n
  %i.ab = zext i32 %i.aa to i64
  %.val446 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %.val446, i64 %i.ab
  %i.ad = trunc nuw nsw i64 %i.y to i32
  store i32 %i.ad, ptr %i.ac, align 1
  %i.ae = or disjoint i64 %indvars.iv, 2          ; 2 uses
  %.tr512 = trunc nuw i64 %i.ae to i32
  %i.af = shl nuw i32 %.tr512, 2
  %i.ag = add i32 %i.af, %i.n
  %i.ah = zext i32 %i.ag to i64
  %.val445 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %.val445, i64 %i.ah
  %i.aj = trunc nuw nsw i64 %i.ae to i32
  store i32 %i.aj, ptr %i.ai, align 1
  %i.ak = or disjoint i64 %indvars.iv, 3          ; 2 uses
  %.tr513 = trunc nuw i64 %i.ak to i32
  %i.al = shl nuw i32 %.tr513, 2
  %i.am = add i32 %i.al, %i.n
  %i.an = zext i32 %i.am to i64
  %.val444 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %.val444, i64 %i.an
  %i.ap = trunc nuw nsw i64 %i.ak to i32
  store i32 %i.ap, ptr %i.ao, align 1
  %i.aq = or disjoint i64 %indvars.iv, 4          ; 2 uses
  %.tr514 = trunc nuw i64 %i.aq to i32
  %i.ar = shl nuw i32 %.tr514, 2
  %i.as = add i32 %i.ar, %i.n
  %i.at = zext i32 %i.as to i64
  %.val443 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %.val443, i64 %i.at
  %i.av = trunc nuw nsw i64 %i.aq to i32
  store i32 %i.av, ptr %i.au, align 1
  %i.aw = or disjoint i64 %indvars.iv, 5          ; 2 uses
  %.tr515 = trunc nuw i64 %i.aw to i32
  %i.ax = shl nuw i32 %.tr515, 2
  %i.ay = add i32 %i.ax, %i.n
  %i.az = zext i32 %i.ay to i64
  %.val442 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.ba = getelementptr inbounds nuw i8, ptr %.val442, i64 %i.az
  %i.bb = trunc nuw nsw i64 %i.aw to i32
  store i32 %i.bb, ptr %i.ba, align 1
  %i.bc = or disjoint i64 %indvars.iv, 6          ; 2 uses
  %.tr516 = trunc nuw i64 %i.bc to i32
  %i.bd = shl nuw i32 %.tr516, 2
  %i.be = add i32 %i.bd, %i.n
  %i.bf = zext i32 %i.be to i64
  %.val441 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %.val441, i64 %i.bf
  %i.bh = trunc nuw nsw i64 %i.bc to i32
  store i32 %i.bh, ptr %i.bg, align 1
  %i.bi = or disjoint i64 %indvars.iv, 7          ; 2 uses
  %.tr517 = trunc nuw i64 %i.bi to i32
  %i.bj = shl nuw i32 %.tr517, 2
  %i.bk = add i32 %i.bj, %i.n
  %i.bl = zext i32 %i.bk to i64
  %.val440 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.bm = getelementptr inbounds nuw i8, ptr %.val440, i64 %i.bl
  %i.bn = trunc nuw nsw i64 %i.bi to i32
  store i32 %i.bn, ptr %i.bm, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %indvars496 = trunc i64 %indvars.iv.next to i32
  %.not420 = icmp eq i32 %i.s, %indvars496
  br i1 %.not420, label %.loopexit487.loopexit, label %bb.e

.loopexit487.loopexit:                            ; preds = %bb.e
  %i.bo = zext nneg i32 %i.s to i64
  br label %.loopexit487

.loopexit487:                                     ; preds = %.loopexit487.loopexit, %bb.c
  %.1410 = phi i64 [ 0, %bb.c ], [ %i.bo, %.loopexit487.loopexit ] ; 8 uses
  %.1407 = phi i32 [ %i.k, %bb.c ], [ %i.s, %.loopexit487.loopexit ]
  %i.bp = and i32 %2, 7                           ; 7 uses
  %.not421 = icmp eq i32 %i.bp, 0
  br i1 %.not421, label %.loopexit486, label %.preheader485

.preheader485:                                    ; preds = %.loopexit487
  %indvars.iv498.tr = trunc nuw nsw i64 %.1410 to i32
  %i.bq = shl nuw i32 %indvars.iv498.tr, 2
  %i.br = add i32 %i.bq, %i.n
  %i.bs = zext i32 %i.br to i64
  %.val439 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.bt = getelementptr inbounds nuw i8, ptr %.val439, i64 %i.bs
  %i.bu = trunc nuw nsw i64 %.1410 to i32
  store i32 %i.bu, ptr %i.bt, align 1
  %.not422 = icmp eq i32 %i.bp, 1
  br i1 %.not422, label %.loopexit486, label %.preheader485.1

.preheader485.1:                                  ; preds = %.preheader485
  %indvars.iv.next499 = add nuw nsw i64 %.1410, 1 ; 2 uses
  %indvars.iv498.tr.1 = trunc nuw nsw i64 %indvars.iv.next499 to i32
  %i.bv = shl nuw i32 %indvars.iv498.tr.1, 2
  %i.bw = add i32 %i.bv, %i.n
  %i.bx = zext i32 %i.bw to i64
  %.val439.1 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.by = getelementptr inbounds nuw i8, ptr %.val439.1, i64 %i.bx
  %i.bz = trunc nuw nsw i64 %indvars.iv.next499 to i32
  store i32 %i.bz, ptr %i.by, align 1
  %.not422.1 = icmp eq i32 %i.bp, 2
  br i1 %.not422.1, label %.loopexit486, label %.preheader485.2

.preheader485.2:                                  ; preds = %.preheader485.1
  %indvars.iv.next499.1 = add nuw nsw i64 %.1410, 2 ; 2 uses
  %indvars.iv498.tr.2 = trunc nuw nsw i64 %indvars.iv.next499.1 to i32
  %i.ca = shl nuw i32 %indvars.iv498.tr.2, 2
  %i.cb = add i32 %i.ca, %i.n
  %i.cc = zext i32 %i.cb to i64
  %.val439.2 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.cd = getelementptr inbounds nuw i8, ptr %.val439.2, i64 %i.cc
  %i.ce = trunc nuw nsw i64 %indvars.iv.next499.1 to i32
  store i32 %i.ce, ptr %i.cd, align 1
  %.not422.2 = icmp eq i32 %i.bp, 3
  br i1 %.not422.2, label %.loopexit486, label %.preheader485.3

.preheader485.3:                                  ; preds = %.preheader485.2
  %indvars.iv.next499.2 = add nuw nsw i64 %.1410, 3 ; 2 uses
  %indvars.iv498.tr.3 = trunc nuw nsw i64 %indvars.iv.next499.2 to i32
  %i.cf = shl nuw i32 %indvars.iv498.tr.3, 2
  %i.cg = add i32 %i.cf, %i.n
  %i.ch = zext i32 %i.cg to i64
  %.val439.3 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.ci = getelementptr inbounds nuw i8, ptr %.val439.3, i64 %i.ch
  %i.cj = trunc nuw nsw i64 %indvars.iv.next499.2 to i32
  store i32 %i.cj, ptr %i.ci, align 1
  %.not422.3 = icmp eq i32 %i.bp, 4
  br i1 %.not422.3, label %.loopexit486, label %.preheader485.4

.preheader485.4:                                  ; preds = %.preheader485.3
  %indvars.iv.next499.3 = add nuw nsw i64 %.1410, 4 ; 2 uses
  %indvars.iv498.tr.4 = trunc nuw nsw i64 %indvars.iv.next499.3 to i32
  %i.ck = shl nuw i32 %indvars.iv498.tr.4, 2
  %i.cl = add i32 %i.ck, %i.n
  %i.cm = zext i32 %i.cl to i64
  %.val439.4 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.cn = getelementptr inbounds nuw i8, ptr %.val439.4, i64 %i.cm
  %i.co = trunc nuw nsw i64 %indvars.iv.next499.3 to i32
  store i32 %i.co, ptr %i.cn, align 1
  %.not422.4 = icmp eq i32 %i.bp, 5
  br i1 %.not422.4, label %.loopexit486, label %.preheader485.5

.preheader485.5:                                  ; preds = %.preheader485.4
  %indvars.iv.next499.4 = add nuw nsw i64 %.1410, 5 ; 2 uses
  %indvars.iv498.tr.5 = trunc nuw nsw i64 %indvars.iv.next499.4 to i32
  %i.cp = shl nuw i32 %indvars.iv498.tr.5, 2
  %i.cq = add i32 %i.cp, %i.n
  %i.cr = zext i32 %i.cq to i64
  %.val439.5 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.cs = getelementptr inbounds nuw i8, ptr %.val439.5, i64 %i.cr
  %i.ct = trunc nuw nsw i64 %indvars.iv.next499.4 to i32
  store i32 %i.ct, ptr %i.cs, align 1
  %.not422.5 = icmp eq i32 %i.bp, 6
  br i1 %.not422.5, label %.loopexit486, label %.preheader485.6

.preheader485.6:                                  ; preds = %.preheader485.5
  %indvars.iv.next499.5 = add nuw nsw i64 %.1410, 6 ; 2 uses
  %indvars.iv498.tr.6 = trunc nuw nsw i64 %indvars.iv.next499.5 to i32
  %i.cu = shl nuw i32 %indvars.iv498.tr.6, 2
  %i.cv = add i32 %i.cu, %i.n
  %i.cw = zext i32 %i.cv to i64
  %.val439.6 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.cx = getelementptr inbounds nuw i8, ptr %.val439.6, i64 %i.cw
  %i.cy = trunc nuw nsw i64 %indvars.iv.next499.5 to i32
  store i32 %i.cy, ptr %i.cx, align 1
  br label %.loopexit486

.loopexit486:                                     ; preds = %.preheader485, %.preheader485.1, %.preheader485.2, %.preheader485.3, %.preheader485.4, %.preheader485.5, %.preheader485.6, %.loopexit487
  %i.cz = icmp samesign ugt i32 %2, 6
  br i1 %i.cz, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.loopexit486
  %i.da = add i32 %i.b, -20
  %i.db = tail call range(i32 2, 33) i32 @llvm.ctlz.i32(i32 %2, i1 true)
  %i.dc = shl nuw nsw i32 %i.db, 1
  %i.dd = xor i32 %i.dc, 62
  %i.de = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3A0x28anonymous0x20namespace0x290x3A0x3AdoQuickSort0x28hermes0x3A0x3Avm0x3A0x3ASortModel0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Avector0x3Cunsigned0x20int0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cunsigned0x20int0x3E0x3E0x260x2C0x20int0x2C0x20unsigned0x20int0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.da, i32 noundef %i.dd, i32 noundef 0, i32 noundef %i.q) #8
  br label %.loopexit

bb.g:                                             ; preds = %.loopexit486
  %i.df = icmp eq i32 %2, 1
  br i1 %i.df, label %.loopexit, label %.preheader483

.preheader483:                                    ; preds = %bb.g
  %i.dg = add i32 %i.b, -8
  %i.dh = zext i32 %1 to i64                      ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.dk = load ptr, ptr @w2c_hermes_t1, align 8   ; 4 uses
  %i.dl = icmp ne ptr %i.dk, null
  %i.dm = load ptr, ptr @w2c_hermes_t6, align 8   ; 4 uses
  %i.dn = icmp ne ptr %i.dm, null
  br label %.preheader

.preheader:                                       ; preds = %.preheader483, %.loopexit482
  %.2408 = phi i32 [ %.0403, %.loopexit482 ], [ %.1407, %.preheader483 ]
  %.0404 = phi i32 [ %i.gv, %.loopexit482 ], [ 1, %.preheader483 ] ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %bb.w
  %.3412 = phi i32 [ %i.do, %bb.w ], [ %.0404, %.preheader ] ; 5 uses
  %.3 = phi i32 [ %.0403, %bb.w ], [ %.2408, %.preheader ]
  %i.do = add i32 %.3412, -1                      ; 6 uses
  %.val463 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.dp = getelementptr inbounds nuw i8, ptr %.val463, i64 %i.dh
  %.0.copyload.i = load i32, ptr %i.dp, align 1   ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !19
  %i.dq = zext i32 %.0.copyload.i to i64
  %.val462 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.dr = getelementptr inbounds nuw i8, ptr %.val462, i64 %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %.0.copyload.i464 = load i32, ptr %i.ds, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i464) #8, !srcloc !19
  %i.dt = load i32, ptr %i.dj, align 4, !tbaa !26
  %i.du = icmp ult i32 %.0.copyload.i464, %i.dt
  br i1 %i.du, label %bb.i, label %.critedge, !prof !27

bb.i:                                             ; preds = %bb.h
  %i.dv = load ptr, ptr %i.di, align 8, !tbaa !28
  %i.dw = zext i32 %.0.copyload.i464 to i64
  %i.dx = getelementptr inbounds nuw [24 x i8], ptr %i.dv, i64 %i.dw ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !29 ; 2 uses
  %.not424 = icmp eq ptr %i.dz, null
  br i1 %.not424, label %.critedge, label %bb.j, !prof !31

bb.j:                                             ; preds = %bb.i
  %i.ea = load ptr, ptr %i.dx, align 8, !tbaa !33 ; 4 uses
  %i.eb = icmp eq ptr %i.dk, %i.ea
  br i1 %i.eb, label %func_types_eq.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ec = icmp ne ptr %i.ea, null
  %or.cond.i = and i1 %i.dl, %i.ec
  br i1 %or.cond.i, label %func_types_eq.exit, label %.critedge, !prof !34

func_types_eq.exit:                               ; preds = %bb.k
  %i.ed = load i128, ptr %i.dk, align 1
  %i.ee = load i128, ptr %i.ea, align 1
  %i.ef = xor i128 %i.ed, %i.ee
  %i.eg = getelementptr i8, ptr %i.dk, i64 16
  %i.eh = getelementptr i8, ptr %i.ea, i64 16
  %i.ei = load i128, ptr %i.eg, align 1
  %i.ej = load i128, ptr %i.eh, align 1
  %i.ek = xor i128 %i.ei, %i.ej
  %i.el = or i128 %i.ef, %i.ek
  %i.em = icmp ne i128 %i.el, 0
  %i.en = zext i1 %i.em to i32
  %.not.i = icmp eq i32 %i.en, 0
  br i1 %.not.i, label %func_types_eq.exit.thread, label %.critedge, !prof !35

.critedge:                                        ; preds = %bb.k, %bb.i, %bb.h, %func_types_eq.exit
  tail call void @wasm_rt_trap(i32 noundef 6) #9
  unreachable

func_types_eq.exit.thread:                        ; preds = %bb.j, %func_types_eq.exit
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !36
  tail call void %i.dz(ptr noundef %i.ep, i32 noundef %i.dg, i32 noundef %1, i32 noundef %.3412, i32 noundef %i.do) #8
  %.val461 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.eq = getelementptr inbounds nuw i8, ptr %.val461, i64 %i.h
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %.0.copyload.i465 = load i32, ptr %i.er, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i465) #8, !srcloc !19
  %.not425 = icmp eq i32 %.0.copyload.i465, 0
  br i1 %.not425, label %bb.p, label %bb.l

bb.l:                                             ; preds = %func_types_eq.exit.thread
  %.val460 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.es = getelementptr inbounds nuw i8, ptr %.val460, i64 %i.h
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 28
  %.0.copyload.i466 = load i32, ptr %i.et, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i466) #8, !srcloc !19
  %.not426 = icmp eq i32 %.0.copyload.i466, 0
  br i1 %.not426, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.eu = icmp sgt i32 %.0.copyload.i466, -1
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %.val459 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.ev = getelementptr inbounds nuw i8, ptr %.val459, i64 %i.i
  %.0.copyload.i467 = load i32, ptr %i.ev, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i467) #8, !srcloc !19
  %i.ew = shl i32 %.3412, 2
  %i.ex = add i32 %.0.copyload.i467, %i.ew
  %i.ey = zext i32 %i.ex to i64
  %.val458 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.ez = getelementptr inbounds nuw i8, ptr %.val458, i64 %i.ey
  %.0.copyload.i468 = load i32, ptr %i.ez, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i468) #8, !srcloc !19
  %i.fa = shl i32 %i.do, 2
  %i.fb = add i32 %.0.copyload.i467, %i.fa
  %i.fc = zext i32 %i.fb to i64
  %.val457 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.fd = getelementptr inbounds nuw i8, ptr %.val457, i64 %i.fc
  %.0.copyload.i469 = load i32, ptr %i.fd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i469) #8, !srcloc !19
  %i.fe = icmp uge i32 %.0.copyload.i468, %.0.copyload.i469
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0 = phi i1 [ %i.eu, %bb.m ], [ %i.fe, %bb.n ]
  %i.ff = select i1 %.0, i32 1, i32 257
  br label %bb.q

bb.p:                                             ; preds = %func_types_eq.exit.thread
  %i.fg = and i32 %.3, 65280
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0403 = phi i32 [ %i.ff, %bb.o ], [ %i.fg, %bb.p ] ; 4 uses
  %i.fh = and i32 %.0403, 1
  %.not428 = icmp eq i32 %i.fh, 0
  br i1 %.not428, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fi = and i32 %.0403, 256
  %.not429 = icmp eq i32 %i.fi, 0
  br i1 %.not429, label %.loopexit482, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.val456 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.fj = getelementptr inbounds nuw i8, ptr %.val456, i64 %i.dh
  %.0.copyload.i470 = load i32, ptr %i.fj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i470) #8, !srcloc !19
  %i.fk = zext i32 %.0.copyload.i470 to i64
  %.val455 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.fl = getelementptr inbounds nuw i8, ptr %.val455, i64 %i.fk
  %.0.copyload.i471 = load i32, ptr %i.fl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i471) #8, !srcloc !19
  %i.fm = load i32, ptr %i.dj, align 4, !tbaa !26
  %i.fn = icmp ult i32 %.0.copyload.i471, %i.fm
  br i1 %i.fn, label %bb.t, label %.critedge436, !prof !27

bb.t:                                             ; preds = %bb.s
  %i.fo = load ptr, ptr %i.di, align 8, !tbaa !28
  %i.fp = zext i32 %.0.copyload.i471 to i64
  %i.fq = getelementptr inbounds nuw [24 x i8], ptr %i.fo, i64 %i.fp ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !29 ; 2 uses
  %.not430 = icmp eq ptr %i.fs, null
  br i1 %.not430, label %.critedge436, label %bb.u, !prof !31

bb.u:                                             ; preds = %bb.t
  %i.ft = load ptr, ptr %i.fq, align 8, !tbaa !33 ; 4 uses
  %i.fu = icmp eq ptr %i.dm, %i.ft
  br i1 %i.fu, label %func_types_eq.exit475.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fv = icmp ne ptr %i.ft, null
  %or.cond.i472 = and i1 %i.dn, %i.fv
  br i1 %or.cond.i472, label %func_types_eq.exit475, label %.critedge436, !prof !34

func_types_eq.exit475:                            ; preds = %bb.v
  %i.fw = load i128, ptr %i.dm, align 1
  %i.fx = load i128, ptr %i.ft, align 1
  %i.fy = xor i128 %i.fw, %i.fx
end_hunk_0
begin_hunk_1_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AobjectDefinePropertiesInternal0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29:bb.a
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i1394) #8, !srcloc !37
  %i.nm = bitcast double %.0.copyload.i1394 to i64
  %i.nn = fcmp uno double %.0.copyload.i1394, 0.000000e+00
  %i.no = select i1 %i.nn, i64 9221120237041090560, i64 %i.nm
  br label %bb.by

bb.bt:                                            ; preds = %bb.bo, %bb.bo
  %i.np = ashr i32 %.0.copyload.i1393, 3
  %i.nq = sitofp i32 %i.np to double
  %i.nr = bitcast double %i.nq to i64
  br label %bb.by

bb.bu:                                            ; preds = %bb.bo, %bb.bo
  %i.ns = lshr i32 %.0.copyload.i1393, 3
  %i.nt = zext nneg i32 %i.ns to i64
  %i.nu = or disjoint i64 %i.nt, -1266637395197952
  br label %bb.by

bb.bv:                                            ; preds = %bb.bo
  %i.nv = icmp ugt i32 %.0.copyload.i1393, 15
  %i.nw = zext i1 %i.nv to i64
  %i.nx = or disjoint i64 %i.nw, -1407374883553280
  br label %bb.by

bb.bw:                                            ; preds = %bb.bo, %bb.bk, %bb.bj
  br label %bb.by

bb.bx:                                            ; preds = %bb.bo
  br label %bb.by

bb.by:                                            ; preds = %bb.bo, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp
  %.2 = phi i64 [ -1970324836974592, %bb.bw ], [ %i.nb, %bb.bp ], [ %i.nx, %bb.bv ], [ -1548112371908608, %bb.bx ], [ %i.ne, %bb.bq ], [ %i.nh, %bb.br ], [ %i.no, %bb.bs ], [ %i.nr, %bb.bt ], [ %i.nu, %bb.bu ], [ -1688849860263936, %bb.bo ]
  %.val1292 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ny = getelementptr inbounds nuw i8, ptr %.val1292, i64 %i.cy
  store i64 %.2, ptr %i.ny, align 1
  %.val1240 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.nz = getelementptr inbounds nuw i8, ptr %.val1240, i64 %i.ly
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 4
  %.0.copyload.i1395 = load i32, ptr %i.oa, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1395) #8, !srcloc !19
  %.val1199 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ob = getelementptr inbounds nuw i8, ptr %.val1199, i64 %i.ao
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 36
  store i32 %.0.copyload.i1395, ptr %i.oc, align 1
  %.val1239 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.od = getelementptr inbounds nuw i8, ptr %.val1239, i64 %i.ly
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  %.0.copyload.i1396 = load i32, ptr %i.oe, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1396) #8, !srcloc !19
  %.val1198 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.of = getelementptr inbounds nuw i8, ptr %.val1198, i64 %i.ao
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 32
  store i32 1, ptr %i.og, align 1
  %.val1197 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.oh = getelementptr inbounds nuw i8, ptr %.val1197, i64 %i.ao
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 12
  store i32 %.0.copyload.i1395, ptr %i.oi, align 1
  %.val1196 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.oj = getelementptr inbounds nuw i8, ptr %.val1196, i64 %i.ao
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  store i32 1, ptr %i.ok, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AdefineOwnComputedPrimitive0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ADefinePropertyFlags0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APropOpFlags0x29(ptr noundef nonnull %0, i32 noundef %i.du, i32 noundef %.01143, i32 noundef %2, i32 noundef %i.cf, i32 noundef %i.lw, i32 noundef %.0.copyload.i1396, i32 noundef %i.lx) #8
  %.val1321 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ol = getelementptr inbounds nuw i8, ptr %.val1321, i64 %i.ao
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 56
  %.0.copyload.i1397 = load i8, ptr %i.om, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1397) #8, !srcloc !21
  %.not1192 = icmp eq i8 %.0.copyload.i1397, 0
  br i1 %.not1192, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.on = zext i32 %1 to i64
  br label %bb.cb

bb.ca:                                            ; preds = %bb.by
  %i.oo = add i32 %.11152, 12                     ; 2 uses
  %.not1193 = icmp eq i32 %i.oo, %i.lv
  br i1 %.not1193, label %.loopexit, label %bb.bj

.loopexit:                                        ; preds = %bb.ca, %bb.bh, %bb.n
  %i.op = zext i32 %.01143 to i64
  %.val1311 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.oq = getelementptr inbounds nuw i8, ptr %.val1311, i64 %i.op
  %.0.copyload.i1398 = load i64, ptr %i.oq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1398) #8, !srcloc !20
  %i.or = zext i32 %1 to i64                      ; 2 uses
  %.val1291 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.os = getelementptr inbounds nuw i8, ptr %.val1291, i64 %i.or
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 8
  store i64 %.0.copyload.i1398, ptr %i.ot, align 1
  br label %bb.cb

bb.cb:                                            ; preds = %.loopexit, %bb.bz, %bb.at, %bb.al, %bb.ae
  %.sink1415 = phi i64 [ %i.or, %.loopexit ], [ %i.on, %bb.bz ], [ %i.ia, %bb.at ], [ %i.gw, %bb.al ], [ %i.gh, %bb.ae ]
  %.sink = phi i32 [ 1, %.loopexit ], [ 0, %bb.bz ], [ 0, %bb.at ], [ 0, %bb.al ], [ 0, %bb.ae ]
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ou = getelementptr inbounds nuw i8, ptr %.val, i64 %.sink1415
  store i32 %.sink, ptr %i.ou, align 1
  %.val1238 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ov = getelementptr inbounds nuw i8, ptr %.val1238, i64 %i.dd
  %.0.copyload.i1399 = load i32, ptr %i.ov, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1399) #8, !srcloc !19
  %.not1194 = icmp eq i32 %i.dc, %.0.copyload.i1399
  br i1 %.not1194, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1399) #8
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A0x7EGCScope0x280x29(ptr noundef nonnull %0, i32 noundef %i.ct) #8
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.m, %bb.h, %bb.c
  store i32 %i.b, ptr %i.a, align 8, !tbaa !7
  ret void
}

declare void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AgetOwnComputedDescriptor0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AMutableHandle0x3Chermes0x3A0x3Avm0x3A0x3ASymbolID0x3E0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AComputedPropertyDescriptor0x260x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoPropertyDescriptor0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ADefinePropertyFlags0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AMutableHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x260x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_llvh0x3A0x3Areport_bad_alloc_error0x28char0x20const0x2A0x2C0x20bool0x29(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @w2c_hermes_dlmalloc(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AdefineOwnComputedPrimitive0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ADefinePropertyFlags0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APropOpFlags0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AmakeTimeFromArgs_RJS0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 4 uses
  %i.c = add i32 %i.b, -80                        ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 33 uses
  %i.e = zext i32 %i.c to i64                     ; 10 uses
  %.val286 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val286, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  store i64 0, ptr %i.g, align 1
  %i.h = add i32 %i.b, -16
  %i.i = zext i32 %i.h to i64
  %.val285 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %.val285, i64 %i.i
  store i64 0, ptr %i.j, align 1
  %i.k = add nuw nsw i64 %i.e, 56                 ; 2 uses
  %.val284 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %.val284, i64 %i.k
  store i64 0, ptr %i.l, align 1
  %i.m = add nuw nsw i64 %i.e, 48                 ; 2 uses
  %.val283 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %.val283, i64 %i.m
  store i64 0, ptr %i.n, align 1
  %i.o = add nuw nsw i64 %i.e, 40                 ; 2 uses
  %.val282 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %.val282, i64 %i.o
  store i64 0, ptr %i.p, align 1
  %i.q = add nuw nsw i64 %i.e, 32                 ; 2 uses
  %.val281 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %.val281, i64 %i.q
  store i64 4607182418800017408, ptr %i.r, align 1
  %i.s = add nuw nsw i64 %i.e, 24                 ; 2 uses
  %.val280 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %.val280, i64 %i.s
  store i64 9221120237041090560, ptr %i.t, align 1
  %i.u = add nuw nsw i64 %i.e, 16                 ; 2 uses
  %.val279 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %.val279, i64 %i.u
  store i64 9221120237041090560, ptr %i.v, align 1
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = tail call i32 @llvm.umin.i32(i32 %4, i32 7)
  %i.x = add i32 %3, -8
  %i.y = zext i32 %2 to i64
  %i.z = add i32 %i.b, -64
  %i.aa = zext i32 %4 to i64
  %i.ab = zext nneg i32 %i.w to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %bb.b ] ; 3 uses
  %.val278 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %.val278, i64 %i.y
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %.0.copyload.i = load i32, ptr %i.ad, align 1   ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !19
  %i.ae = zext i32 %.0.copyload.i to i64          ; 6 uses
  %i.af = add nuw nsw i64 %i.ae, 172              ; 3 uses
  %.val277 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %.val277, i64 %i.af
  %.0.copyload.i297 = load i32, ptr %i.ag, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i297) #8, !srcloc !19
  %i.ah = add nuw nsw i64 %i.ae, 164              ; 3 uses
  %.val276 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %.val276, i64 %i.ah
  %.0.copyload.i298 = load i32, ptr %i.ai, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i298) #8, !srcloc !19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.aj = shl nuw nsw i32 %indvars.iv.tr, 3       ; 2 uses
  %i.ak = sub i32 %i.x, %i.aj
  %.not261 = icmp samesign ult i64 %indvars.iv, %i.aa
  %i.al = select i1 %.not261, i32 %i.ak, i32 70392
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoNumber_RJS0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.c, i32 noundef %2, i32 noundef %i.al) #8
  %.val275 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %.val275, i64 %i.e
  %.0.copyload.i299 = load i32, ptr %i.am, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i299) #8, !srcloc !19
  %.not262 = icmp eq i32 %.0.copyload.i299, 0
  %.val267 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %.not262, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = add i32 %i.z, %i.aj
  %i.ao = getelementptr inbounds nuw i8, ptr %.val267, i64 %i.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.0.copyload.i300 = load double, ptr %i.ap, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i300) #8, !srcloc !37
  %i.aq = zext i32 %i.an to i64
  %.val288 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %.val288, i64 %i.aq
  store double %.0.copyload.i300, ptr %i.ar, align 1
  %.val274 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %.val274, i64 %i.ae
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 136
  %.0.copyload.i301 = load i32, ptr %i.at, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i301) #8, !srcloc !19
  %i.au = shl i32 %.0.copyload.i297, 2
  %i.av = add i32 %.0.copyload.i301, %i.au
  %i.aw = zext i32 %i.av to i64
  %.val273 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ax = getelementptr inbounds nuw i8, ptr %.val273, i64 %i.aw
  %.0.copyload.i302 = load i32, ptr %i.ax, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i302) #8, !srcloc !19
  %.val270 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ay = getelementptr inbounds nuw i8, ptr %.val270, i64 %i.af
  store i32 %.0.copyload.i297, ptr %i.ay, align 1
  %.val269 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %.val269, i64 %i.ah
  store i32 %.0.copyload.i298, ptr %i.az, align 1
  %i.ba = add i32 %.0.copyload.i302, 128
  %.val268 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bb = getelementptr inbounds nuw i8, ptr %.val268, i64 %i.ae
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 168
  store i32 %i.ba, ptr %i.bc, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not263 = icmp eq i64 %indvars.iv.next, %i.ab
  br i1 %.not263, label %bb.f, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.bd = zext i32 %1 to i64
  %i.be = getelementptr inbounds nuw i8, ptr %.val267, i64 %i.bd
  store i32 0, ptr %i.be, align 1
  %.val272 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %.val272, i64 %i.ae
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 136
  %.0.copyload.i303 = load i32, ptr %i.bg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i303) #8, !srcloc !19
  %i.bh = shl i32 %.0.copyload.i297, 2
  %i.bi = add i32 %.0.copyload.i303, %i.bh
  %i.bj = zext i32 %i.bi to i64
  %.val271 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %.val271, i64 %i.bj
  %.0.copyload.i304 = load i32, ptr %i.bk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i304) #8, !srcloc !19
  %.val266 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %.val266, i64 %i.af
  store i32 %.0.copyload.i297, ptr %i.bl, align 1
  %.val265 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bm = getelementptr inbounds nuw i8, ptr %.val265, i64 %i.ah
  store i32 %.0.copyload.i298, ptr %i.bm, align 1
  %i.bn = add i32 %.0.copyload.i304, 128
  %.val264 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %.val264, i64 %i.ae
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 168
  store i32 %i.bn, ptr %i.bp, align 1
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %.val295 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bq = getelementptr inbounds nuw i8, ptr %.val295, i64 %i.u
  %.0.copyload.i305 = load double, ptr %i.bq, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i305) #8, !srcloc !37
  %i.br = fcmp uno double %.0.copyload.i305, 0.000000e+00
  br i1 %i.br, label %.thread, label %bb.g, !prof !41

.thread:                                          ; preds = %bb.a, %bb.f
  %.0315 = phi double [ %.0.copyload.i305, %bb.f ], [ +qnan, %bb.a ] ; 2 uses
  %i.bs = bitcast double %.0315 to i64
  %i.bt = or i64 %i.bs, 9221120237041090560
  %i.bu = bitcast i64 %i.bt to double
  br label %wasm_trunc.exit

bb.g:                                             ; preds = %bb.f
  %i.bv = tail call double @llvm.trunc.f64(double %.0.copyload.i305)
  br label %wasm_trunc.exit

wasm_trunc.exit:                                  ; preds = %.thread, %bb.g
  %.0314 = phi double [ %.0315, %.thread ], [ %.0.copyload.i305, %bb.g ] ; 2 uses
  %.0.i = phi double [ %i.bu, %.thread ], [ %i.bv, %bb.g ] ; 3 uses
  %i.bw = fadd double %.0.i, 1.900000e+03
  %i.bx = fcmp oge double %.0.i, 0.000000e+00
  %i.by = fcmp ord double %.0314, 0.000000e+00
  %i.bz = select i1 %i.by, i1 %i.bx, i1 false
  %i.ca = fcmp ole double %.0.i, 9.900000e+01
  %i.cb = and i1 %i.ca, %i.bz
  %i.cc = select i1 %i.cb, double %i.bw, double %.0314
  %.val294 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cd = getelementptr inbounds nuw i8, ptr %.val294, i64 %i.s
  %.0.copyload.i306 = load double, ptr %i.cd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i306) #8, !srcloc !37
  %.val293 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ce = getelementptr inbounds nuw i8, ptr %.val293, i64 %i.q
  %.0.copyload.i307 = load double, ptr %i.ce, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i307) #8, !srcloc !37
  %i.cf = tail call double @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AmakeDay0x28double0x2C0x20double0x2C0x20double0x29(ptr noundef nonnull %0, double noundef %i.cc, double noundef %.0.copyload.i306, double noundef %.0.copyload.i307) ; 2 uses
  %i.cg = fmul double %i.cf, 8.640000e+07
  %.val292 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ch = getelementptr inbounds nuw i8, ptr %.val292, i64 %i.o
  %.0.copyload.i308 = load double, ptr %i.ch, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i308) #8, !srcloc !37
  %.val291 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ci = getelementptr inbounds nuw i8, ptr %.val291, i64 %i.m
  %.0.copyload.i309 = load double, ptr %i.ci, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i309) #8, !srcloc !37
  %.val290 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cj = getelementptr inbounds nuw i8, ptr %.val290, i64 %i.k
  %.0.copyload.i310 = load double, ptr %i.cj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i310) #8, !srcloc !37
  %.val289 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ck = getelementptr inbounds nuw i8, ptr %.val289, i64 %i.e
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 64
  %.0.copyload.i311 = load double, ptr %i.cl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i311) #8, !srcloc !37
  %i.cm = tail call noundef double @llvm.fabs.f64(double %.0.copyload.i308)
  %i.cn = fcmp ueq double %i.cm, +inf
  %i.co = tail call double @llvm.fabs.f64(double %.0.copyload.i309)
  %i.cp = fcmp ueq double %i.co, +inf
  %or.cond.i = or i1 %i.cn, %i.cp
  %i.cq = tail call double @llvm.fabs.f64(double %.0.copyload.i310)
  %i.cr = fcmp ueq double %i.cq, +inf
  %or.cond79.i = or i1 %or.cond.i, %i.cr
  %i.cs = tail call double @llvm.fabs.f64(double %.0.copyload.i311)
  %i.ct = fcmp ueq double %i.cs, +inf
  %or.cond81.i = or i1 %or.cond79.i, %i.ct
  br i1 %or.cond81.i, label %w2c_hermes_hermes0x3A0x3Avm0x3A0x3AmakeTime0x28double0x2C0x20double0x2C0x20double0x2C0x20double0x29.exit, label %wasm_trunc.exit.i

wasm_trunc.exit.i:                                ; preds = %wasm_trunc.exit
  %i.cu = tail call double @llvm.trunc.f64(double %.0.copyload.i311)
  %i.cv = tail call nnan ninf double @llvm.trunc.f64(double %.0.copyload.i310)
  %i.cw = fmul nnan double %i.cv, 1.000000e+03
  %i.cx = tail call nnan ninf double @llvm.trunc.f64(double %.0.copyload.i308)
  %i.cy = fmul nnan double %i.cx, 3.600000e+06
  %i.cz = tail call nnan ninf double @llvm.trunc.f64(double %.0.copyload.i309)
  %i.da = fmul nnan double %i.cz, 6.000000e+04
  %i.db = fadd double %i.cy, %i.da
  %i.dc = fadd double %i.db, %i.cw
  %i.dd = fadd double %i.dc, %i.cu
  br label %w2c_hermes_hermes0x3A0x3Avm0x3A0x3AmakeTime0x28double0x2C0x20double0x2C0x20double0x2C0x20double0x29.exit

w2c_hermes_hermes0x3A0x3Avm0x3A0x3AmakeTime0x28double0x2C0x20double0x2C0x20double0x2C0x20double0x29.exit: ; preds = %wasm_trunc.exit, %wasm_trunc.exit.i
  %.0.i312 = phi double [ +qnan, %wasm_trunc.exit ], [ %i.dd, %wasm_trunc.exit.i ] ; 2 uses
  %i.de = fadd double %i.cg, %.0.i312
  %i.df = tail call noundef double @llvm.fabs.f64(double %.0.i312)
  %i.dg = fcmp one double %i.df, +inf
  %i.dh = tail call noundef double @llvm.fabs.f64(double %i.cf)
  %i.di = fcmp one double %i.dh, +inf
  %i.dj = and i1 %i.di, %i.dg
  %i.dk = select i1 %i.dj, double %i.de, double +qnan
  %i.dl = zext i32 %1 to i64                      ; 2 uses
  %.val287 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dm = getelementptr inbounds nuw i8, ptr %.val287, i64 %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store double %i.dk, ptr %i.dn, align 1
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.do = getelementptr inbounds nuw i8, ptr %.val, i64 %i.dl
  store i32 1, ptr %i.do, align 1
  br label %bb.h

bb.h:                                             ; preds = %w2c_hermes_hermes0x3A0x3Avm0x3A0x3AmakeTime0x28double0x2C0x20double0x2C0x20double0x2C0x20double0x29.exit, %bb.e
  store i32 %i.b, ptr %i.a, align 8, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i32 0, 2) i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AlessOp_RJS0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x290x3A0x3A0x24_30x3A0x3A_0x5Finvoke0x28int0x29(ptr nofree noundef readnone captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  %i.b = zext i1 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i32 0, 2) i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AlessOp_RJS0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x290x3A0x3A0x24_20x3A0x3A_0x5Finvoke0x28int0x29(ptr nofree noundef readnone captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = lshr i32 %1, 31
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
end_hunk_1
