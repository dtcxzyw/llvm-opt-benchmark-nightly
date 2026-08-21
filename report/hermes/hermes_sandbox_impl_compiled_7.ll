inline.NumInlined: 10002
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@w2c_hermes_std0x3A0x3A_0x5F20x3A0x3A_0x5Fdeque_base0x3Cstd0x3A0x3A_0x5F20x3A0x3Avector0x3Cchar16_t0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar16_t0x3E0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cstd0x3A0x3A_0x5F20x3A0x3Avector0x3Cchar16_t0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar16_t0x3E0x3E0x3E0x3E0x3A0x3Aclear0x280x29:bb.a
  %.not = icmp eq i32 %.0.copyload.i212, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader220
  %.val206 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.af = getelementptr inbounds nuw i8, ptr %.val206, i64 %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store i32 %.0.copyload.i212, ptr %i.ag, align 1
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i212) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.preheader220
  %i.ah = add i32 %.0175, 12                      ; 2 uses
  %i.ai = zext i32 %.0174 to i64                  ; 2 uses
  %.val195 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.aj = getelementptr inbounds nuw i8, ptr %.val195, i64 %i.ai
  %.0.copyload.i213 = load i32, ptr %i.aj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i213) #13, !srcloc !14
  %i.ak = sub i32 %i.ah, %.0.copyload.i213
  %i.al = icmp eq i32 %i.ak, 4092
  br i1 %i.al, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.val194 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.am = getelementptr inbounds nuw i8, ptr %.val194, i64 %i.ai
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %.0.copyload.i214 = load i32, ptr %i.an, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i214) #13, !srcloc !14
  %i.ao = add i32 %.0174, 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1176 = phi i32 [ %.0.copyload.i214, %bb.e ], [ %i.ah, %bb.d ] ; 2 uses
  %.1 = phi i32 [ %i.ao, %bb.e ], [ %.0174, %bb.d ]
  %.not189 = icmp eq i32 %.1176, %i.ab
  br i1 %.not189, label %bb.g, label %.preheader220

bb.g:                                             ; preds = %bb.f
  %.val193 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.ap = getelementptr inbounds nuw i8, ptr %.val193, i64 %i.e
  %.0.copyload.i215 = load i32, ptr %i.ap, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i215) #13, !srcloc !14
  %.val192 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.aq = getelementptr inbounds nuw i8, ptr %.val192, i64 %i.c
  %.0.copyload.i216 = load i32, ptr %i.aq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i216) #13, !srcloc !14
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.b, %bb.g
  %.0177 = phi i32 [ %.0.copyload.i215, %bb.g ], [ %.0.copyload.i207, %bb.b ], [ %.0.copyload.i, %bb.a ] ; 2 uses
  %.0173 = phi i32 [ %.0.copyload.i216, %bb.g ], [ %.0.copyload.i, %bb.b ], [ %.0.copyload.i, %bb.a ]
  %.0 = add i32 %1, 20
  %i.ar = zext i32 %.0 to i64
  %.val205 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.as = getelementptr inbounds nuw i8, ptr %.val205, i64 %i.ar
  store i32 0, ptr %i.as, align 1
  %i.at = sub i32 %.0173, %.0177                  ; 2 uses
  %i.au = icmp ugt i32 %i.at, 8
  br i1 %i.au, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.h, %.preheader
  %.1178 = phi i32 [ %i.ay, %.preheader ], [ %.0177, %bb.h ]
  %i.av = zext i32 %.1178 to i64
  %.val191 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.aw = getelementptr inbounds nuw i8, ptr %.val191, i64 %i.av
  %.0.copyload.i217 = load i32, ptr %i.aw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i217) #13, !srcloc !14
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i217) #13
  %.val190 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.ax = getelementptr inbounds nuw i8, ptr %.val190, i64 %i.e
  %.0.copyload.i218 = load i32, ptr %i.ax, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i218) #13, !srcloc !14
  %i.ay = add i32 %.0.copyload.i218, 4            ; 3 uses
  %.val204 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.az = getelementptr inbounds nuw i8, ptr %.val204, i64 %i.e
  store i32 %i.ay, ptr %i.az, align 1
  %.val = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.ba = getelementptr inbounds nuw i8, ptr %.val, i64 %i.c
  %.0.copyload.i219 = load i32, ptr %i.ba, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i219) #13, !srcloc !14
  %i.bb = sub i32 %.0.copyload.i219, %i.ay        ; 2 uses
  %i.bc = icmp ugt i32 %i.bb, 8
  br i1 %i.bc, label %.preheader, label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.h
  %.2 = phi i32 [ %i.at, %bb.h ], [ %i.bb, %.preheader ]
  %i.bd = lshr i32 %.2, 2
  switch i32 %i.bd, label %bb.k [
    i32 1, label %bb.j
    i32 2, label %bb.i
  ]

bb.i:                                             ; preds = %.loopexit
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %bb.i
  %.2179 = phi i32 [ 170, %.loopexit ], [ 341, %bb.i ]
  %.val203 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.be = getelementptr inbounds nuw i8, ptr %.val203, i64 %i.b
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i32 %.2179, ptr %i.bf, align 1
  br label %bb.k

bb.k:                                             ; preds = %.loopexit, %bb.j
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @w2c_hermes_sigprocmask(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = add i32 %i.b, -128
  store i32 %i.c, ptr %i.a, align 8, !tbaa !32
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @w2c_hermes_0x5F_memcpy(ptr noundef nonnull %0, i32 noundef %2, i32 noundef 282604, i32 noundef 128) #13 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = tail call i32 @w2c_hermes_0x5F_memcpy(ptr noundef nonnull %0, i32 noundef 282604, i32 noundef %1, i32 noundef 128) #13 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 14 uses
  %.val.i = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %.val.i, i64 282604
  %.0.copyload.i.i = load i32, ptr %i.g, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i) #13, !srcloc !14
  %i.h = and i32 %.0.copyload.i.i, -257
  %.val41.i = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %.val41.i, i64 282604
  store i32 %i.h, ptr %i.i, align 1
  %.val.i243 = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i243, i64 282604
  %.0.copyload.i.i244 = load i32, ptr %i.j, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i244) #13, !srcloc !14
  %i.k = and i32 %.0.copyload.i.i244, -262145
  %.val41.i245 = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %.val41.i245, i64 282604
  store i32 %i.k, ptr %i.l, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.o = load ptr, ptr @w2c_hermes_t2, align 8    ; 4 uses
  %i.p = icmp ne ptr %i.o, null
  %i.q = load ptr, ptr @w2c_hermes_t3, align 8    ; 4 uses
  %i.r = icmp ne ptr %i.q, null
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge ], [ 0, %bb.c ] ; 7 uses
  %i.s = trunc i64 %indvars.iv to i32
  %i.t = add i32 %i.s, -1                         ; 3 uses
  %i.u = icmp ugt i32 %i.t, 63
  br i1 %i.u, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = lshr i32 %i.t, 3
  %i.w = and i32 %i.v, 4                          ; 2 uses
  %i.x = add nuw nsw i32 %i.w, 282732
  %i.y = zext nneg i32 %i.x to i64                ; 5 uses
  %.val239 = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %.val239, i64 %i.y
  %.0.copyload.i = load i32, ptr %i.z, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #13, !srcloc !14
  %i.aa = and i32 %i.t, 31                        ; 2 uses
  %i.ab = shl nuw i32 1, %i.aa                    ; 4 uses
  %i.ac = and i32 %.0.copyload.i, %i.ab
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val238 = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.ae = zext nneg i32 %i.w to i64               ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val238, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 282604
  %.0.copyload.i246 = load i32, ptr %i.ag, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i246) #13, !srcloc !14
  %i.ah = and i32 %.0.copyload.i246, %i.ab
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %.critedge228, label %.critedge

.critedge228:                                     ; preds = %bb.f
  %i.aj = trunc i64 %indvars.iv to i32
  %i.ak = add i32 %i.aj, -32
  %i.al = icmp ult i32 %i.ak, 3                   ; 2 uses
  %.val42.i = load ptr, ptr %i.f, align 8, !tbaa !8 ; 2 uses
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.critedge228
  %i.am = getelementptr inbounds nuw i8, ptr %.val42.i, i64 272032
  store i32 28, ptr %i.am, align 1
  br label %bb.i

bb.h:                                             ; preds = %.critedge228
  %i.an = getelementptr inbounds nuw i8, ptr %.val42.i, i64 %i.y
  %.0.copyload.i.i248 = load i32, ptr %i.an, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i248) #13, !srcloc !14
  %i.ao = shl i32 -2, %i.aa
  %i.ap = trunc i64 %indvars.iv to i32
  %i.aq = sub i32 1, %i.ap
  %i.ar = lshr i32 -2, %i.aq
  %i.as = or i32 %i.ao, %i.ar
  %i.at = and i32 %.0.copyload.i.i248, %i.as
  %.val41.i249 = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.au = getelementptr inbounds nuw i8, ptr %.val41.i249, i64 %i.y
  store i32 %i.at, ptr %i.au, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.av = load i32, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %i.aw = add i32 %i.av, -128                     ; 2 uses
  store i32 %i.aw, ptr %i.a, align 8, !tbaa !32
  %.val237 = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.ax = getelementptr inbounds nuw i8, ptr %.val237, i64 %i.ae
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 282604
  %.0.copyload.i250 = load i32, ptr %i.ay, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i250) #13, !srcloc !14
  %i.az = and i32 %.0.copyload.i250, %i.ab
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %.critedge230, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val241 = load ptr, ptr %i.f, align 8, !tbaa !8 ; 2 uses
  br i1 %i.al, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %.val241, i64 272032
  store i32 28, ptr %i.bb, align 1
  br label %bb.v

bb.l:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %.val241, i64 %i.y
  %.0.copyload.i251 = load i32, ptr %i.bc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i251) #13, !srcloc !14
  %i.bd = or i32 %.0.copyload.i251, %i.ab
  %.val240 = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.be = getelementptr inbounds nuw i8, ptr %.val240, i64 %i.y
  store i32 %i.bd, ptr %i.be, align 1
  br label %bb.v

.critedge230:                                     ; preds = %bb.i
  %i.bf = mul nuw nsw i64 %indvars.iv, 140
  %i.bg = add nuw nsw i64 %i.bf, 273504           ; 3 uses
  %.val242 = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.bh = getelementptr inbounds nuw i8, ptr %.val242, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 132
  %.0.copyload.i252 = load i8, ptr %i.bi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i252) #13, !srcloc !31
  %i.bj = and i8 %.0.copyload.i252, 4
  %.not220 = icmp eq i8 %i.bj, 0
  br i1 %.not220, label %bb.q, label %bb.m

bb.m:                                             ; preds = %.critedge230
  %i.bk = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.aw, i32 noundef 0, i32 noundef 128) #13
  %.val235 = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.bl = getelementptr inbounds nuw i8, ptr %.val235, i64 %i.bg
  %.0.copyload.i253 = load i32, ptr %i.bl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i253) #13, !srcloc !14
  %i.bm = load i32, ptr %i.m, align 4, !tbaa !15
  %i.bn = icmp ult i32 %.0.copyload.i253, %i.bm
  br i1 %i.bn, label %bb.n, label %.critedge232, !prof !21

bb.n:                                             ; preds = %bb.m
  %i.bo = load ptr, ptr %i.n, align 8, !tbaa !22
  %i.bp = zext i32 %.0.copyload.i253 to i64
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %i.bp ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !23 ; 2 uses
  %.not222 = icmp eq ptr %i.bs, null
  br i1 %.not222, label %.critedge232, label %bb.o, !prof !25

bb.o:                                             ; preds = %bb.n
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !26 ; 4 uses
  %i.bu = icmp eq ptr %i.o, %i.bt
  br i1 %i.bu, label %func_types_eq.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bv = icmp ne ptr %i.bt, null
  %or.cond.i = and i1 %i.p, %i.bv
  br i1 %or.cond.i, label %func_types_eq.exit, label %.critedge232, !prof !30

func_types_eq.exit:                               ; preds = %bb.p
  %i.bw = load i128, ptr %i.o, align 1
  %i.bx = load i128, ptr %i.bt, align 1
  %i.by = xor i128 %i.bw, %i.bx
  %i.bz = getelementptr i8, ptr %i.o, i64 16
  %i.ca = getelementptr i8, ptr %i.bt, i64 16
  %i.cb = load i128, ptr %i.bz, align 1
  %i.cc = load i128, ptr %i.ca, align 1
  %i.cd = xor i128 %i.cb, %i.cc
  %i.ce = or i128 %i.by, %i.cd
  %i.cf = icmp ne i128 %i.ce, 0
  %i.cg = zext i1 %i.cf to i32
  %.not.i = icmp eq i32 %i.cg, 0
  br i1 %.not.i, label %func_types_eq.exit.thread, label %.critedge232, !prof !28

.critedge232:                                     ; preds = %bb.p, %bb.n, %bb.m, %func_types_eq.exit
  tail call void @wasm_rt_trap(i32 noundef 6) #14
  unreachable

func_types_eq.exit.thread:                        ; preds = %bb.o, %func_types_eq.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !27
  %i.cj = trunc nuw nsw i64 %indvars.iv to i32
  tail call void %i.bs(ptr noundef %i.ci, i32 noundef %i.cj, i32 noundef %i.bk, i32 noundef 0) #13
  br label %bb.v

bb.q:                                             ; preds = %.critedge230
  %.val = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.ck = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bg
  %.0.copyload.i254 = load i32, ptr %i.ck, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i254) #13, !srcloc !14
  switch i32 %.0.copyload.i254, label %bb.r [
    i32 -2, label %bb.v
    i32 0, label %bb.v
  ]

bb.r:                                             ; preds = %bb.q
  %i.cl = load i32, ptr %i.m, align 4, !tbaa !15
  %i.cm = icmp ult i32 %.0.copyload.i254, %i.cl
  br i1 %i.cm, label %bb.s, label %.critedge234, !prof !21

bb.s:                                             ; preds = %bb.r
  %i.cn = load ptr, ptr %i.n, align 8, !tbaa !22
  %i.co = zext i32 %.0.copyload.i254 to i64
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %i.co ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !23 ; 2 uses
  %.not221 = icmp eq ptr %i.cr, null
  br i1 %.not221, label %.critedge234, label %bb.t, !prof !25

bb.t:                                             ; preds = %bb.s
  %i.cs = load ptr, ptr %i.cp, align 8, !tbaa !26 ; 4 uses
  %i.ct = icmp eq ptr %i.q, %i.cs
  br i1 %i.ct, label %func_types_eq.exit258.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cu = icmp ne ptr %i.cs, null
  %or.cond.i255 = and i1 %i.r, %i.cu
  br i1 %or.cond.i255, label %func_types_eq.exit258, label %.critedge234, !prof !30

func_types_eq.exit258:                            ; preds = %bb.u
  %i.cv = load i128, ptr %i.q, align 1
  %i.cw = load i128, ptr %i.cs, align 1
  %i.cx = xor i128 %i.cv, %i.cw
  %i.cy = getelementptr i8, ptr %i.q, i64 16
  %i.cz = getelementptr i8, ptr %i.cs, i64 16
  %i.da = load i128, ptr %i.cy, align 1
  %i.db = load i128, ptr %i.cz, align 1
  %i.dc = xor i128 %i.da, %i.db
  %i.dd = or i128 %i.cx, %i.dc
  %i.de = icmp ne i128 %i.dd, 0
  %i.df = zext i1 %i.de to i32
  %.not.i257 = icmp eq i32 %i.df, 0
  br i1 %.not.i257, label %func_types_eq.exit258.thread, label %.critedge234, !prof !28

.critedge234:                                     ; preds = %bb.u, %bb.s, %bb.r, %func_types_eq.exit258
  tail call void @wasm_rt_trap(i32 noundef 6) #14
  unreachable

func_types_eq.exit258.thread:                     ; preds = %bb.t, %func_types_eq.exit258
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !27
  %i.di = trunc nuw nsw i64 %indvars.iv to i32
  tail call void %i.cr(ptr noundef %i.dh, i32 noundef %i.di) #13
  br label %bb.v

bb.v:                                             ; preds = %bb.q, %bb.q, %func_types_eq.exit258.thread, %func_types_eq.exit.thread, %bb.l, %bb.k
  store i32 %i.av, ptr %i.a, align 8, !tbaa !32
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.f, %bb.e, %bb.v
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not226 = icmp eq i64 %indvars.iv.next, 65
  br i1 %.not226, label %bb.w, label %bb.d

bb.w:                                             ; preds = %.critedge
  store i32 %i.b, ptr %i.a, align 8, !tbaa !32
  ret i32 0
}

; Function Attrs: nounwind uwtable
define hidden i64 @w2c_hermes_rule_to_secs(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.c = add i32 %i.b, -16                        ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !32
  %i.d = sext i32 %2 to i64
  %i.e = add i32 %i.b, -4
  %i.f = tail call i64 @w2c_hermes_0x5F_year_to_secs(ptr noundef %0, i64 noundef %i.d, i32 noundef %i.e) #13 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  %i.h = zext i32 %1 to i64                       ; 5 uses
  %.val172 = load ptr, ptr %i.g, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %.val172, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %.0.copyload.i = load i32, ptr %i.j, align 1    ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #13, !srcloc !14
  %.val171 = load ptr, ptr %i.g, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %.val171, i64 %i.h
  %.0.copyload.i174 = load i32, ptr %i.k, align 1 ; 2 uses
end_hunk_0
