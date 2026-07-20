inline.NumInlined: 16097
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AarrayCopyHelper0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AGCScope0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSArray0x3E0x2C0x20unsigned0x20int0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSArray0x3E0x2C0x20unsigned0x20int0x2C0x20unsigned0x20int0x29:bb.a
  switch i32 %i.cx, label %bb.t [
    i32 1, label %bb.u
    i32 2, label %bb.v
    i32 3, label %bb.w
    i32 4, label %bb.x
    i32 5, label %bb.y
    i32 6, label %bb.z
    i32 7, label %bb.aa
    i32 15, label %.split449
    i32 9, label %bb.u
    i32 10, label %bb.v
    i32 11, label %bb.w
    i32 12, label %bb.x
    i32 13, label %bb.y
    i32 14, label %.split
  ]

.split:                                           ; preds = %bb.s
  %.val464 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cy = getelementptr inbounds nuw i8, ptr %.val464, i64 %i.az
  store i64 -1688849860263936, ptr %i.cy, align 1
  br label %bb.ae

bb.t:                                             ; preds = %bb.s
  %i.cz = zext i32 %.0.copyload.i534 to i64
  %i.da = or disjoint i64 %i.cz, -281474976710656
  %.val472 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.db = getelementptr inbounds nuw i8, ptr %.val472, i64 %i.az
  store i64 %i.da, ptr %i.db, align 1
  br label %bb.ae

bb.u:                                             ; preds = %bb.s, %bb.s
  %i.dc = and i32 %.0.copyload.i534, -8
  %i.dd = zext i32 %i.dc to i64
  %i.de = or disjoint i64 %i.dd, -562949953421312
  %.val471 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.df = getelementptr inbounds nuw i8, ptr %.val471, i64 %i.az
  store i64 %i.de, ptr %i.df, align 1
  br label %bb.ae

bb.v:                                             ; preds = %bb.s, %bb.s
  %i.dg = and i32 %.0.copyload.i534, -8
  %i.dh = zext i32 %i.dg to i64
  %i.di = or disjoint i64 %i.dh, -844424930131968
  %.val470 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.dj = getelementptr inbounds nuw i8, ptr %.val470, i64 %i.az
  store i64 %i.di, ptr %i.dj, align 1
  br label %bb.ae

bb.w:                                             ; preds = %bb.s, %bb.s
  %i.dk = and i32 %.0.copyload.i534, -8
  %i.dl = zext i32 %i.dk to i64
  %.val512 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.dm = getelementptr inbounds nuw i8, ptr %.val512, i64 %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %.0.copyload.i535 = load double, ptr %i.dn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i535) #7, !srcloc !36
  %i.do = bitcast double %.0.copyload.i535 to i64
  %i.dp = fcmp uno double %.0.copyload.i535, 0.000000e+00
  %i.dq = select i1 %i.dp, i64 9221120237041090560, i64 %i.do
  %.val469 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.dr = getelementptr inbounds nuw i8, ptr %.val469, i64 %i.az
  store i64 %i.dq, ptr %i.dr, align 1
  br label %bb.ae

bb.x:                                             ; preds = %bb.s, %bb.s
  %i.ds = ashr i32 %.0.copyload.i534, 3
  %i.dt = sitofp i32 %i.ds to double
  %.val516 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.du = getelementptr inbounds nuw i8, ptr %.val516, i64 %i.az
  store double %i.dt, ptr %i.du, align 1
  br label %bb.ae

bb.y:                                             ; preds = %bb.s, %bb.s
  %i.dv = lshr i32 %.0.copyload.i534, 3
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = or disjoint i64 %i.dw, -1266637395197952
  %.val468 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.dy = getelementptr inbounds nuw i8, ptr %.val468, i64 %i.az
  store i64 %i.dx, ptr %i.dy, align 1
  br label %bb.ae

bb.z:                                             ; preds = %bb.s
  %i.dz = icmp ugt i32 %.0.copyload.i534, 15
  %i.ea = zext i1 %i.dz to i64
  %i.eb = or disjoint i64 %i.ea, -1407374883553280
  %.val467 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ec = getelementptr inbounds nuw i8, ptr %.val467, i64 %i.az
  store i64 %i.eb, ptr %i.ec, align 1
  br label %bb.ae

bb.aa:                                            ; preds = %bb.s
  %.val466 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ed = getelementptr inbounds nuw i8, ptr %.val466, i64 %i.az
  store i64 -1970324836974592, ptr %i.ed, align 1
  br label %bb.ae

.split449:                                        ; preds = %bb.s
  %.val = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ee = getelementptr inbounds nuw i8, ptr %.val, i64 %i.az
  store i64 -1548112371908608, ptr %i.ee, align 1
  br label %bb.ae

bb.ab:                                            ; preds = %bb.l
  %.val515 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ef = getelementptr inbounds nuw i8, ptr %.val515, i64 %i.bb
  store double %i.br, ptr %i.ef, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AgetComputedWithReceiver_RJS0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.bc, i32 noundef %4, i32 noundef %2, i32 noundef %.0447, i32 noundef %4) #7
  %.val477 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.eg = getelementptr inbounds nuw i8, ptr %.val477, i64 %i.bd
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %.0.copyload.i536 = load i32, ptr %i.eh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i536) #7, !srcloc !13
  %.not462 = icmp eq i32 %.0.copyload.i536, 0
  br i1 %.not462, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ei = zext i32 %1 to i64
  br label %bb.ah

bb.ad:                                            ; preds = %bb.ab
  %.val510 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ej = getelementptr inbounds nuw i8, ptr %.val510, i64 %i.bd
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %.0.copyload.i537 = load i64, ptr %i.ek, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i537) #7, !srcloc !21
  %.val465 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.el = getelementptr inbounds nuw i8, ptr %.val465, i64 %i.az
  store i64 %.0.copyload.i537, ptr %i.el, align 1
  br label %bb.ae

bb.ae:                                            ; preds = %.split449, %.split, %bb.r, %bb.n, %bb.m, %bb.ad, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t
  %i.em = fadd double %.0443, %i.au
  %.val514 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.en = getelementptr inbounds nuw i8, ptr %.val514, i64 %i.be
  store double %i.em, ptr %i.en, align 1
  %.val501 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.eo = getelementptr inbounds nuw i8, ptr %.val501, i64 %i.bd
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 12
  store i32 319, ptr %i.ep, align 1
  %.val500 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.eq = getelementptr inbounds nuw i8, ptr %.val500, i64 %i.bd
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store i32 1, ptr %i.er, align 1
  %.val499 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.es = getelementptr inbounds nuw i8, ptr %.val499, i64 %i.bd
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  store i32 319, ptr %i.et, align 1
  %.val498 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.eu = getelementptr inbounds nuw i8, ptr %.val498, i64 %i.bd
  store i32 1, ptr %i.eu, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AdefineOwnComputedPrimitive0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ADefinePropertyFlags0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APropOpFlags0x29(ptr noundef nonnull %0, i32 noundef %i.bc, i32 noundef %7, i32 noundef %2, i32 noundef %.0446, i32 noundef %i.bf, i32 noundef %.0, i32 noundef %i.c) #7
  %.val509 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ev = getelementptr inbounds nuw i8, ptr %.val509, i64 %i.bd
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %.0.copyload.i538 = load i8, ptr %i.ew, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i538) #7, !srcloc !14
  %.not463 = icmp eq i8 %.0.copyload.i538, 0
  br i1 %.not463, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ex = zext i32 %1 to i64
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.ey = fadd double %.0443, 1.000000e+00        ; 3 uses
  %i.ez = fcmp olt double %i.ey, %i.aq
  br i1 %i.ez, label %bb.l, label %.loopexit

.loopexit:                                        ; preds = %bb.ag, %bb.j
  %.1444 = phi double [ 0.000000e+00, %bb.j ], [ %i.ey, %bb.ag ]
  %i.fa = zext i32 %1 to i64                      ; 2 uses
  %.val513 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.fb = getelementptr inbounds nuw i8, ptr %.val513, i64 %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store double %.1444, ptr %i.fc, align 1
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit, %bb.af, %bb.ac
  %.sink546 = phi i64 [ %i.fa, %.loopexit ], [ %i.ex, %bb.af ], [ %i.ei, %bb.ac ]
  %.sink = phi i32 [ 1, %.loopexit ], [ 0, %bb.af ], [ 0, %bb.ac ]
  %.val496 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.fd = getelementptr inbounds nuw i8, ptr %.val496, i64 %.sink546
  store i32 %.sink, ptr %i.fd, align 1
  store i32 %i.b, ptr %i.a, align 8, !tbaa !15
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AWeakValueMap0x3Chermes0x3A0x3Avm0x3A0x3Adetail0x3A0x3ATransition0x2C0x20hermes0x3A0x3Avm0x3A0x3AHiddenClass0x3E0x3A0x3ApruneInvalid0x28hermes0x3A0x3Avm0x3A0x3AHadesGC0x260x29(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 19 uses
  %i.b = zext i32 %1 to i64                       ; 8 uses
  %i.c = add nuw nsw i64 %i.b, 104                ; 2 uses
  %.val243 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %.val243, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !13
  %.val242 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %.val242, i64 %i.b
  %.0.copyload.i251 = load i32, ptr %i.e, align 1 ; 8 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i251) #7, !srcloc !13
  %i.f = lshr i32 %.0.copyload.i251, 1
  %i.g = icmp ult i32 %.0.copyload.i, %i.f
  br i1 %i.g, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %1, 8                            ; 2 uses
  %i.i = icmp ult i32 %.0.copyload.i251, 2
  %.val241 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %.val241, i64 %i.b ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %.0.copyload.i252 = load i32, ptr %i.k, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i252) #7, !srcloc !13
  %.not224 = icmp eq i32 %.0.copyload.i251, 0     ; 2 uses
  %2 = mul i32 %.0.copyload.i252, 12
  %3 = select i1 %.not224, i32 %2, i32 96
  %.val240 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %.val240, i64 %i.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.0.copyload.i253 = load i32, ptr %i.m, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i253) #7, !srcloc !13
  %4 = select i1 %.not224, i32 %.0.copyload.i253, i32 %i.h ; 2 uses
  %i.n = add i32 %4, %3                           ; 2 uses
  br label %.loopexit267

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.0.copyload.i254 = load i32, ptr %i.o, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i254) #7, !srcloc !13
  %i.p = and i32 %.0.copyload.i251, 1             ; 5 uses
  %.not = icmp eq i32 %i.p, 0                     ; 2 uses
  %i.q = select i1 %.not, i32 %.0.copyload.i254, i32 %i.h ; 7 uses
  %.val238 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %.val238, i64 %i.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %.0.copyload.i255 = load i32, ptr %i.s, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i255) #7, !srcloc !13
  %i.t = select i1 %.not, i32 %.0.copyload.i255, i32 8 ; 2 uses
  %i.u = mul i32 %i.t, 12
  %i.v = add i32 %i.u, %i.q                       ; 6 uses
  %.not220 = icmp eq i32 %i.t, 0
  br i1 %.not220, label %.loopexit267, label %.preheader266

.preheader266:                                    ; preds = %bb.d, %bb.f
  %.0211 = phi i32 [ %i.ab, %bb.f ], [ %i.q, %bb.d ] ; 4 uses
  %i.w = zext i32 %.0211 to i64                   ; 2 uses
  %.val237 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.x = getelementptr inbounds nuw i8, ptr %.val237, i64 %i.w
  %.0.copyload.i256 = load i32, ptr %i.x, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i256) #7, !srcloc !13
  %i.y = and i32 %.0.copyload.i256, -2
  %.not221 = icmp eq i32 %i.y, 536870910
  br i1 %.not221, label %bb.e, label %.loopexit267

bb.e:                                             ; preds = %.preheader266
  %.val250 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %.val250, i64 %i.w
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %.0.copyload.i257 = load i16, ptr %i.aa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i257) #7, !srcloc !25
  %.not222 = icmp eq i16 %.0.copyload.i257, 0
  br i1 %.not222, label %bb.f, label %.loopexit267

bb.f:                                             ; preds = %bb.e
  %i.ab = add i32 %.0211, 12                      ; 2 uses
  %.not223 = icmp eq i32 %i.ab, %i.v
  br i1 %.not223, label %.loopexit267, label %.preheader266

.loopexit267:                                     ; preds = %bb.f, %bb.e, %.preheader266, %bb.d, %bb.c
  %.pre-phi = phi i32 [ %4, %bb.c ], [ %i.q, %bb.d ], [ %i.q, %.preheader266 ], [ %i.q, %bb.e ], [ %i.q, %bb.f ]
  %.1212 = phi i32 [ %i.n, %bb.c ], [ %i.q, %bb.d ], [ %i.v, %bb.f ], [ %.0211, %bb.e ], [ %.0211, %.preheader266 ] ; 2 uses
  %.0209 = phi i32 [ %.0.copyload.i251, %bb.c ], [ %i.p, %bb.d ], [ %i.p, %.preheader266 ], [ %i.p, %bb.e ], [ %i.p, %bb.f ]
  %.0207 = phi i32 [ %i.n, %bb.c ], [ %i.v, %bb.d ], [ %i.v, %.preheader266 ], [ %i.v, %bb.e ], [ %i.v, %bb.f ] ; 4 uses
  %.0206 = phi i32 [ %.0.copyload.i252, %bb.c ], [ %.0.copyload.i255, %bb.d ], [ %.0.copyload.i255, %.preheader266 ], [ %.0.copyload.i255, %bb.e ], [ %.0.copyload.i255, %bb.f ]
  %.not225 = icmp eq i32 %.0209, 0
  %i.ac = mul i32 %.0206, 12
  %i.ad = select i1 %.not225, i32 %i.ac, i32 96
  %i.ae = add i32 %i.ad, %.pre-phi                ; 2 uses
  %.not226 = icmp eq i32 %i.ae, %.1212
  br i1 %.not226, label %.loopexit265, label %.preheader264

.preheader264:                                    ; preds = %.loopexit267
  %i.af = add nuw nsw i64 %i.b, 4                 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.preheader264, %.loopexit
  %.2213 = phi i32 [ %.3, %.loopexit ], [ %.1212, %.preheader264 ] ; 2 uses
  %.0208 = phi i32 [ %.1, %.loopexit ], [ %.0.copyload.i251, %.preheader264 ]
  %i.ag = zext i32 %.2213 to i64                  ; 3 uses
  %.val236 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ah = getelementptr inbounds nuw i8, ptr %.val236, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.0.copyload.i258 = load i32, ptr %i.ai, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i258) #7, !srcloc !13
  %i.aj = zext i32 %.0.copyload.i258 to i64       ; 2 uses
  %.val235 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ak = getelementptr inbounds nuw i8, ptr %.val235, i64 %i.aj
  %.0.copyload.i259 = load i32, ptr %i.ak, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i259) #7, !srcloc !13
  %.not227 = icmp eq i32 %.0.copyload.i259, 0
  br i1 %.not227, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.val = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 %i.aj
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store i8 1, ptr %i.am, align 1
  %.val248 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.an = getelementptr inbounds nuw i8, ptr %.val248, i64 %i.ag
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i16 0, ptr %i.ao, align 1
  %.val247 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ap = getelementptr inbounds nuw i8, ptr %.val247, i64 %i.ag
  store i32 536870910, ptr %i.ap, align 1
  %.val234 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.aq = getelementptr inbounds nuw i8, ptr %.val234, i64 %i.b
  %.0.copyload.i260 = load i32, ptr %i.aq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i260) #7, !srcloc !13
  %i.ar = add i32 %.0.copyload.i260, -2           ; 2 uses
  %.val246 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.as = getelementptr inbounds nuw i8, ptr %.val246, i64 %i.b
  store i32 %i.ar, ptr %i.as, align 1
  %.val233 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %.val233, i64 %i.af
  %.0.copyload.i261 = load i32, ptr %i.at, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i261) #7, !srcloc !13
  %i.au = add i32 %.0.copyload.i261, 1
  %.val245 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.av = getelementptr inbounds nuw i8, ptr %.val245, i64 %i.af
  store i32 %i.au, ptr %i.av, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1 = phi i32 [ %i.ar, %bb.h ], [ %.0208, %bb.g ] ; 2 uses
  %i.aw = add i32 %.2213, 12                      ; 2 uses
  %i.ax = icmp eq i32 %i.aw, %.0207
  br i1 %i.ax, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.i, %bb.k
  %.1210 = phi i32 [ %i.bd, %bb.k ], [ %i.aw, %bb.i ] ; 4 uses
  %i.ay = zext i32 %.1210 to i64                  ; 2 uses
  %.val232 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.az = getelementptr inbounds nuw i8, ptr %.val232, i64 %i.ay
  %.0.copyload.i262 = load i32, ptr %i.az, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i262) #7, !srcloc !13
  %i.ba = and i32 %.0.copyload.i262, -2
  %.not228 = icmp eq i32 %i.ba, 536870910
  br i1 %.not228, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %.preheader
  %.val249 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bb = getelementptr inbounds nuw i8, ptr %.val249, i64 %i.ay
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %.0.copyload.i263 = load i16, ptr %i.bc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i263) #7, !srcloc !25
  %.not229 = icmp eq i16 %.0.copyload.i263, 0
  br i1 %.not229, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.bd = add i32 %.1210, 12                      ; 2 uses
  %.not230 = icmp eq i32 %i.bd, %.0207
  br i1 %.not230, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %bb.j, %.preheader, %bb.k, %bb.i
  %.3 = phi i32 [ %.0207, %bb.i ], [ %.1210, %bb.j ], [ %.1210, %.preheader ], [ %.0207, %bb.k ] ; 2 uses
  %.not231 = icmp eq i32 %.3, %i.ae
  br i1 %.not231, label %.loopexit265, label %bb.g

.loopexit265:                                     ; preds = %.loopexit, %.loopexit267
  %.2 = phi i32 [ %.0.copyload.i251, %.loopexit267 ], [ %.1, %.loopexit ]
  %i.be = tail call i32 @llvm.umax.i32(i32 %.2, i32 5)
  %i.bf = or i32 %i.be, 1
  %.val244 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bg = getelementptr inbounds nuw i8, ptr %.val244, i64 %i.c
  store i32 %i.bf, ptr %i.bg, align 1
  br label %bb.l

bb.l:                                             ; preds = %.loopexit265, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AStringView0x3A0x3Aslice0x28hermes0x3A0x3Avm0x3A0x3AStringView0x3A0x3Aconst_iterator0x2C0x20hermes0x3A0x3Avm0x3A0x3AStringView0x3A0x3Aconst_iterator0x290x20const(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 27 uses
  %i.b = zext i32 %2 to i64                       ; 4 uses
  %.val272 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %.val272, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !13
  %i.e = and i32 %.0.copyload.i, 1073741824
  %.val271 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %.val271, i64 %i.b
  %.0.copyload.i281 = load i32, ptr %i.f, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i281) #7, !srcloc !13
  %i.g = icmp slt i32 %.0.copyload.i, 0
  %.not250 = icmp eq i32 %i.e, 0                  ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  br i1 %.not250, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = zext i32 %.0.copyload.i281 to i64
  %.val270 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %.val270, i64 %i.h
  %.0.copyload.i282 = load i32, ptr %i.i, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i282) #7, !srcloc !13
  %i.j = zext i32 %.0.copyload.i282 to i64        ; 4 uses
  %.val269 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %.val269, i64 %i.j
  %.0.copyload.i283 = load i32, ptr %i.k, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i283) #7, !srcloc !13
  %i.l = icmp ugt i32 %.0.copyload.i283, 150994943
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.val268 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %.val268, i64 %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %.0.copyload.i284 = load i32, ptr %i.n, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i284) #7, !srcloc !13
  %i.o = add i32 %.0.copyload.i282, 12
  %.val280 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %.val280, i64 %i.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 23
  %.0.copyload.i285 = load i8, ptr %i.q, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i285) #7, !srcloc !22
  %i.r = icmp slt i8 %.0.copyload.i285, 0
  %i.s = select i1 %i.r, i32 %.0.copyload.i284, i32 %i.o
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.t = and i32 %.0.copyload.i283, 251658240
  switch i32 %i.t, label %bb.h [
    i32 67108864, label %bb.g
    i32 134217728, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.u = add i32 %.0.copyload.i282, 12
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.v = add i32 %.0.copyload.i282, 8
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %.val267 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %.val267, i64 %i.j
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.0.copyload.i286 = load i32, ptr %i.x, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i286) #7, !srcloc !13
  %i.y = zext i32 %.0.copyload.i286 to i64        ; 2 uses
  %.val266 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %.val266, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %.0.copyload.i287 = load i32, ptr %i.aa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i287) #7, !srcloc !13
  %i.ab = add i32 %.0.copyload.i286, 12
  %.val279 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %.val279, i64 %i.y
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 23
  %.0.copyload.i288 = load i8, ptr %i.ad, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i288) #7, !srcloc !22
  %i.ae = icmp slt i8 %.0.copyload.i288, 0
  %i.af = select i1 %i.ae, i32 %.0.copyload.i287, i32 %i.ab
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.h, %bb.g, %bb.f, %bb.d
  %.0241 = phi i32 [ %.0.copyload.i281, %bb.b ], [ %i.s, %bb.d ], [ %i.af, %bb.h ], [ %i.u, %bb.f ], [ %i.v, %bb.g ]
  %i.ag = add i32 %.0241, %.0.copyload.i
  br label %bb.r

bb.j:                                             ; preds = %bb.a
  br i1 %.not250, label %bb.q, label %bb.k

end_hunk_0
