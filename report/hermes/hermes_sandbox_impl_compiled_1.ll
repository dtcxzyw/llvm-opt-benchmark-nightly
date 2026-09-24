Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_1?download=true
inline.NumInlined: 26868
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@w2c_hermes_hermes0x3A0x3AIRPrinter0x3A0x3AprintFunctionName0x28hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3AIRPrinter0x3A0x3APrintFunctionParams0x29:bb.a
  %i.gk = tail call i32 @w2c_hermes_0x5F_memcpy(ptr noundef nonnull %0, i32 noundef %.0.copyload.i700, i32 noundef %i.fy, i32 noundef %i.ga) #7 ; 0 uses
  %.val587 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gl = getelementptr inbounds nuw i8, ptr %.val587, i64 %i.gf
  %.0.copyload.i701 = load i32, ptr %i.gl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i701) #7, !srcloc !19
  %i.gm = add i32 %.0.copyload.i701, %i.ga
  %.val634 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gn = getelementptr inbounds nuw i8, ptr %.val634, i64 %i.gf
  store i32 %i.gm, ptr %i.gn, align 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af, %bb.ad
  %.val586 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.go = getelementptr inbounds nuw i8, ptr %.val586, i64 %i.ft
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 2
  %.0.copyload.i702 = load i32, ptr %i.gp, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i702) #7, !srcloc !19
  %.val633 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gq = getelementptr inbounds nuw i8, ptr %.val633, i64 %i.do
  store i32 %.0.copyload.i702, ptr %i.gq, align 1
  %.val585 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gr = getelementptr inbounds nuw i8, ptr %.val585, i64 %i.k
  %.0.copyload.i703 = load i32, ptr %i.gr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i703) #7, !srcloc !19
  %i.gs = zext i32 %.0.copyload.i703 to i64
  %.val584 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gt = getelementptr inbounds nuw i8, ptr %.val584, i64 %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 20
  %.0.copyload.i704 = load i32, ptr %i.gu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i704) #7, !srcloc !19
  %.val632 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gv = getelementptr inbounds nuw i8, ptr %.val632, i64 %i.r
  store i32 %.0.copyload.i702, ptr %i.gv, align 1
  %i.gw = load i32, ptr %i.dy, align 4, !tbaa !25
  %i.gx = icmp ult i32 %.0.copyload.i704, %i.gw
  br i1 %i.gx, label %bb.ah, label %.critedge575, !prof !26

bb.ah:                                            ; preds = %bb.ag
  %i.gy = load ptr, ptr %i.dx, align 8, !tbaa !27
  %i.gz = zext i32 %.0.copyload.i704 to i64
  %i.ha = getelementptr inbounds nuw [24 x i8], ptr %i.gy, i64 %i.gz ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !29 ; 2 uses
  %.not572 = icmp eq ptr %i.hc, null
  br i1 %.not572, label %.critedge575, label %bb.ai, !prof !30

bb.ai:                                            ; preds = %bb.ah
  %i.hd = load ptr, ptr %i.ha, align 8, !tbaa !32 ; 4 uses
  %i.he = icmp eq ptr %i.eg, %i.hd
  br i1 %i.he, label %func_types_eq.exit708.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hf = icmp ne ptr %i.hd, null
  %or.cond.i705 = and i1 %i.fc, %i.hf
  br i1 %or.cond.i705, label %func_types_eq.exit708, label %.critedge575, !prof !33

func_types_eq.exit708:                            ; preds = %bb.aj
  %i.hg = load i128, ptr %i.eg, align 1
  %i.hh = load i128, ptr %i.hd, align 1
  %i.hi = xor i128 %i.hg, %i.hh
  %i.hj = getelementptr i8, ptr %i.eg, i64 16
  %i.hk = getelementptr i8, ptr %i.hd, i64 16
  %i.hl = load i128, ptr %i.hj, align 1
  %i.hm = load i128, ptr %i.hk, align 1
  %i.hn = xor i128 %i.hl, %i.hm
  %i.ho = or i128 %i.hi, %i.hn
  %i.hp = icmp ne i128 %i.ho, 0
  %i.hq = zext i1 %i.hp to i32
  %.not.i707 = icmp eq i32 %i.hq, 0
  br i1 %.not.i707, label %func_types_eq.exit708.thread, label %.critedge575, !prof !34

.critedge575:                                     ; preds = %bb.aj, %bb.ah, %bb.ag, %func_types_eq.exit708
  tail call void @wasm_rt_trap(i32 noundef 6) #8
  unreachable

func_types_eq.exit708.thread:                     ; preds = %bb.ai, %func_types_eq.exit708
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !35
  tail call void %i.hc(ptr noundef %i.hs, i32 noundef %1, i32 noundef %i.c) #7
  %i.ht = add i32 %.0549, 4                       ; 2 uses
  %.not573 = icmp eq i32 %i.ht, %i.fa
  br i1 %.not573, label %.loopexit, label %bb.z

.loopexit:                                        ; preds = %func_types_eq.exit708.thread, %func_types_eq.exit.thread, %bb.p, %bb.o
  %.val583 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hu = getelementptr inbounds nuw i8, ptr %.val583, i64 %i.l
  %.0.copyload.i709 = load i32, ptr %i.hu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i709) #7, !srcloc !19
  %i.hv = zext i32 %.0.copyload.i709 to i64       ; 2 uses
  %.val582 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hw = getelementptr inbounds nuw i8, ptr %.val582, i64 %i.hv
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %.0.copyload.i710 = load i32, ptr %i.hx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i710) #7, !srcloc !19
  %i.hy = add nuw nsw i64 %i.hv, 12               ; 3 uses
  %.val581 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hz = getelementptr inbounds nuw i8, ptr %.val581, i64 %i.hy
  %.0.copyload.i711 = load i32, ptr %i.hz, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i711) #7, !srcloc !19
  %i.ia = icmp eq i32 %.0.copyload.i710, %.0.copyload.i711
  br i1 %i.ia, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.loopexit
  %i.ib = tail call i32 @w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3Awrite0x28char0x20const0x2A0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i709, i32 noundef 62714, i32 noundef 1) #7 ; 0 uses
  br label %bb.am

bb.al:                                            ; preds = %.loopexit
  %i.ic = zext i32 %.0.copyload.i711 to i64
  %.val646 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.id = getelementptr inbounds nuw i8, ptr %.val646, i64 %i.ic
  store i8 41, ptr %i.id, align 1
  %.val580 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ie = getelementptr inbounds nuw i8, ptr %.val580, i64 %i.hy
  %.0.copyload.i712 = load i32, ptr %i.ie, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i712) #7, !srcloc !19
  %i.if = add i32 %.0.copyload.i712, 1
  %.val631 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ig = getelementptr inbounds nuw i8, ptr %.val631, i64 %i.hy
  store i32 %i.if, ptr %i.ig, align 1
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.val579 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ih = getelementptr inbounds nuw i8, ptr %.val579, i64 %i.al
  %.0.copyload.i713 = load i32, ptr %i.ih, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i713) #7, !srcloc !19
  %.val578 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ii = getelementptr inbounds nuw i8, ptr %.val578, i64 %i.l
  %.0.copyload.i714 = load i32, ptr %i.ii, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i714) #7, !srcloc !19
  %i.ij = zext i32 %.0.copyload.i714 to i64       ; 2 uses
  %.val577 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ik = getelementptr inbounds nuw i8, ptr %.val577, i64 %i.ij
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %.0.copyload.i715 = load i32, ptr %i.il, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i715) #7, !srcloc !19
  %i.im = add nuw nsw i64 %i.ij, 12               ; 3 uses
  %.val576 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.in = getelementptr inbounds nuw i8, ptr %.val576, i64 %i.im
  %.0.copyload.i716 = load i32, ptr %i.in, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i716) #7, !srcloc !19
  %i.io = icmp eq i32 %.0.copyload.i715, %.0.copyload.i716
  br i1 %i.io, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ip = tail call i32 @w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3Awrite0x28char0x20const0x2A0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i714, i32 noundef 64696, i32 noundef 1) #7
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.iq = zext i32 %.0.copyload.i716 to i64
  %.val645 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ir = getelementptr inbounds nuw i8, ptr %.val645, i64 %i.iq
  store i8 35, ptr %i.ir, align 1
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.is = getelementptr inbounds nuw i8, ptr %.val, i64 %i.im
  %.0.copyload.i717 = load i32, ptr %i.is, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i717) #7, !srcloc !19
  %i.it = add i32 %.0.copyload.i717, 1
  %.val630 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iu = getelementptr inbounds nuw i8, ptr %.val630, i64 %i.im
  store i32 %i.it, ptr %i.iu, align 1
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.0550 = phi i32 [ %i.ip, %bb.an ], [ %.0.copyload.i714, %bb.ao ]
  %i.iv = tail call i32 @w2c_hermes_hermes0x3A0x3AInstructionNamer0x3A0x3AgetNumber0x28hermes0x3A0x3AValue0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.bw, i32 noundef %.0.copyload.i713)
  %i.iw = tail call i32 @w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3Aoperator0x3C0x3C0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %.0550, i32 noundef %i.iv) #7 ; 0 uses
  store i32 %i.b, ptr %i.a, align 8, !tbaa !17
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3AIRPrinter0x3A0x3AquoteStr0x28llvh0x3A0x3AStringRef0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 8 uses
  %i.c = add i32 %i.b, -80                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 57 uses
  %i.e = zext i32 %i.c to i64                     ; 22 uses
  %.val552 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val552, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 76
  store i32 1, ptr %i.g, align 1
  %i.h = add nuw nsw i64 %i.e, 72                 ; 2 uses
  %.val551 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %.val551, i64 %i.h
  store i32 66353, ptr %i.i, align 1
  %.val556 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %.val556, i64 %i.h
  %.0.copyload.i = load i64, ptr %i.j, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i) #7, !srcloc !20
  %i.k = add nuw nsw i64 %i.e, 8                  ; 2 uses
  %.val571 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %.val571, i64 %i.k
  store i64 %.0.copyload.i, ptr %i.l, align 1
  %i.m = zext i32 %3 to i64                       ; 4 uses
  %i.n = add nuw nsw i64 %i.m, 4                  ; 3 uses
  %.val538 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %.val538, i64 %i.n
  %.0.copyload.i580 = load i32, ptr %i.o, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i580) #7, !srcloc !19
  %.val537 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %.val537, i64 %i.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %.0.copyload.i581 = load i32, ptr %i.q, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i581) #7, !srcloc !19
  %i.r = icmp ult i32 %.0.copyload.i580, %.0.copyload.i581
  br i1 %i.r, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = sub nuw i32 %.0.copyload.i580, %.0.copyload.i581 ; 2 uses
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val555 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %.val555, i64 %i.k
  %.0.copyload.i582 = load i64, ptr %i.u, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i582) #7, !srcloc !20
  %i.v = lshr i64 %.0.copyload.i582, 32           ; 2 uses
  %i.w = trunc nuw i64 %i.v to i32
  %.val536 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %.val536, i64 %i.m
  %.0.copyload.i583 = load i32, ptr %i.x, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i583) #7, !srcloc !19
  %i.y = trunc i64 %.0.copyload.i582 to i32
  %.not511.a = icmp eq i32 %.0.copyload.i581, %i.w
  br i1 %.not511.a, label %middle.block, label %.thread

middle.block:                                     ; preds = %bb.c
  %cmp.n = icmp eq i64 %i.v, 0
  br i1 %cmp.n, label %.split.us.preheader623, label %.split.us

.split.us.preheader623:                           ; preds = %middle.block
  %4 = add i32 %.0.copyload.i580, 1
  %5 = sub i32 %4, %.0.copyload.i581
  br label %bb.d

.split.us:                                        ; preds = %middle.block, %.split.us
  %.0500.us = phi i32 [ %i.aa, %.split.us ], [ 0, %middle.block ] ; 3 uses
  %.0497.us = phi i32 [ %spec.select, %.split.us ], [ 0, %middle.block ]
  %6 = add i32 %.0500.us, %.0.copyload.i583
  %7 = tail call i32 @w2c_hermes_memcmp(ptr noundef nonnull %0, i32 noundef %6, i32 noundef %i.y, i32 noundef %.0.copyload.i581) #7
  %.not.us = icmp eq i32 %7, 0
  %i.z = zext i1 %.not.us to i32
  %spec.select = add i32 %.0497.us, %i.z          ; 2 uses
  %i.aa = add nuw i32 %.0500.us, 1
  %.not513.us = icmp eq i32 %.0500.us, %i.s
  br i1 %.not513.us, label %bb.d, label %.split.us

bb.d:                                             ; preds = %.split.us, %.split.us.preheader623
  %.1 = phi i32 [ %5, %.split.us.preheader623 ], [ %spec.select, %.split.us ]
  %.not513 = icmp eq i32 %.1, 0
  br i1 %.not513, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.val535 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %.val535, i64 %i.n
  %.0.copyload.i584 = load i32, ptr %i.ab, align 1 ; 9 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i584) #7, !srcloc !19
  %.not515 = icmp eq i32 %.0.copyload.i584, 0
  br i1 %.not515, label %bb.e, label %bb.u

bb.e:                                             ; preds = %.thread, %bb.d
  %i.ac = zext i32 %2 to i64
  %i.ad = add nuw nsw i64 %i.ac, 16               ; 2 uses
  %.val575 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %.val575, i64 %i.ad
  %.0.copyload.i585 = load i8, ptr %i.ae, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i585) #7, !srcloc !21
  %.not516 = icmp eq i8 %.0.copyload.i585, 0      ; 2 uses
  %i.af = select i1 %.not516, i32 1, i32 2        ; 3 uses
  %i.ag = add nuw nsw i64 %i.e, 55                ; 2 uses
  %.val564 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ah = trunc nuw nsw i32 %i.af to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %.val564, i64 %i.ag
  store i8 %i.ah, ptr %i.ai, align 1
  %i.aj = add i32 %i.b, -36                       ; 3 uses
  %i.ak = select i1 %.not516, i32 64729, i32 64698
  %i.al = tail call i32 @w2c_hermes_0x5F_memcpy(ptr noundef nonnull %0, i32 noundef %i.aj, i32 noundef %i.ak, i32 noundef %i.af) #7 ; 0 uses
  %i.am = or i32 %i.af, %i.aj
  %i.an = zext i32 %i.am to i64
  %.val563 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %.val563, i64 %i.an
  store i8 0, ptr %i.ao, align 1
  %.val534 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %.val534, i64 %i.m
  %.0.copyload.i586 = load i32, ptr %i.ap, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i586) #7, !srcloc !19
  %.not517 = icmp eq i32 %.0.copyload.i586, 0
  %.val550 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %.not517, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %.val550, i64 %i.e
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  store i32 0, ptr %i.ar, align 1
  %.val570 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %.val570, i64 %i.e
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  store i64 0, ptr %i.at, align 1
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %.val550, i64 %i.n
  %.0.copyload.i587 = load i32, ptr %i.au, align 1 ; 10 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i587) #7, !srcloc !19
  %i.av = icmp ugt i32 %.0.copyload.i587, 2147483631
  br i1 %i.av, label %bb.ac, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = icmp samesign ugt i32 %.0.copyload.i587, 10
  br i1 %i.aw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ax = or i32 %.0.copyload.i587, 15
  %i.ay = add nuw nsw i32 %i.ax, 1                ; 2 uses
  %i.az = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.ay) #7 ; 3 uses
  %i.ba = or disjoint i32 %i.ay, -2147483648
  %.val549 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bb = getelementptr inbounds nuw i8, ptr %.val549, i64 %i.e
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  store i32 %i.ba, ptr %i.bc, align 1
  %.val548 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bd = getelementptr inbounds nuw i8, ptr %.val548, i64 %i.e
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  store i32 %i.az, ptr %i.be, align 1
  %.val547 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %.val547, i64 %i.e
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 36
  store i32 %.0.copyload.i587, ptr %i.bg, align 1
  %i.bh = add i32 %i.az, %.0.copyload.i587
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %.val562 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bi = trunc nuw nsw i32 %.0.copyload.i587 to i8
  %i.bj = getelementptr inbounds nuw i8, ptr %.val562, i64 %i.e
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 43
  store i8 %i.bi, ptr %i.bk, align 1
  %i.bl = add i32 %i.b, -48                       ; 2 uses
  %i.bm = add i32 %.0.copyload.i587, %i.bl        ; 2 uses
  %.not518 = icmp eq i32 %.0.copyload.i587, 0
  br i1 %.not518, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0501 = phi i32 [ %i.bh, %bb.i ], [ %i.bm, %bb.j ]
  %.0498 = phi i32 [ %i.az, %bb.i ], [ %i.bl, %bb.j ]
  %i.bn = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.0498, i32 noundef %.0.copyload.i586, i32 noundef %.0.copyload.i587) #7 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.1502 = phi i32 [ %.0501, %bb.k ], [ %i.bm, %bb.j ]
  %i.bo = zext i32 %.1502 to i64
  %.val561 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bp = getelementptr inbounds nuw i8, ptr %.val561, i64 %i.bo
  store i8 0, ptr %i.bp, align 1
  %.val532 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bq = getelementptr inbounds nuw i8, ptr %.val532, i64 %i.e
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 36
  %.0.copyload.i588 = load i32, ptr %i.br, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i588) #7, !srcloc !19
  %.val531 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bs = getelementptr inbounds nuw i8, ptr %.val531, i64 %i.e
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %.0.copyload.i589 = load i32, ptr %i.bt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i589) #7, !srcloc !19
  %.val574 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bu = getelementptr inbounds nuw i8, ptr %.val574, i64 %i.e
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 43
  %.0.copyload.i590 = load i8, ptr %i.bv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i590) #7, !srcloc !21
  %i.bw = zext i8 %.0.copyload.i590 to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.f
  %.2503 = phi i32 [ 0, %bb.f ], [ %.0.copyload.i588, %bb.l ]
  %.1499 = phi i32 [ 0, %bb.f ], [ %.0.copyload.i589, %bb.l ]
  %.0 = phi i32 [ 0, %bb.f ], [ %i.bw, %bb.l ]    ; 2 uses
  %i.bx = add i32 %i.b, -16
  %i.by = add i32 %i.b, -48
  %.not519 = icmp samesign ult i32 %.0, 128       ; 2 uses
  %i.bz = select i1 %.not519, i32 %i.by, i32 %.1499
  %i.ca = select i1 %.not519, i32 %.0, i32 %.2503
  %i.cb = tail call i32 @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3A0x3Aappend0x28char0x20const0x2A0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.aj, i32 noundef %i.bz, i32 noundef %i.ca) #7
  %i.cc = zext i32 %i.cb to i64                   ; 3 uses
  %i.cd = add nuw nsw i64 %i.cc, 8                ; 2 uses
  %.val530 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ce = getelementptr inbounds nuw i8, ptr %.val530, i64 %i.cd
  %.0.copyload.i591 = load i32, ptr %i.ce, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i591) #7, !srcloc !19
  %i.cf = zext i32 %i.bx to i64
  %.val546 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cg = getelementptr inbounds nuw i8, ptr %.val546, i64 %i.cf
  store i32 %.0.copyload.i591, ptr %i.cg, align 1
  %.val554 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ch = getelementptr inbounds nuw i8, ptr %.val554, i64 %i.cc
  %.0.copyload.i592 = load i64, ptr %i.ch, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i592) #7, !srcloc !20
  %i.ci = add nuw nsw i64 %i.e, 56                ; 2 uses
  %.val569 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cj = getelementptr inbounds nuw i8, ptr %.val569, i64 %i.ci
  store i64 %.0.copyload.i592, ptr %i.cj, align 1
  %.val568 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ck = getelementptr inbounds nuw i8, ptr %.val568, i64 %i.cc
  store i64 0, ptr %i.ck, align 1
  %.val545 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cl = getelementptr inbounds nuw i8, ptr %.val545, i64 %i.cd
  store i32 0, ptr %i.cl, align 1
  %.val573 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cm = getelementptr inbounds nuw i8, ptr %.val573, i64 %i.ad
  %.0.copyload.i593 = load i8, ptr %i.cm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i593) #7, !srcloc !21
  %.not520 = icmp eq i8 %.0.copyload.i593, 0      ; 2 uses
  %i.cn = select i1 %.not520, i32 1, i32 2        ; 3 uses
  %i.co = add nuw nsw i64 %i.e, 31                ; 3 uses
  %.val560 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cp = trunc nuw nsw i32 %i.cn to i8
  %i.cq = getelementptr inbounds nuw i8, ptr %.val560, i64 %i.co
  store i8 %i.cp, ptr %i.cq, align 1
  %i.cr = add i32 %i.b, -60                       ; 3 uses
  %i.cs = select i1 %.not520, i32 64729, i32 64698
  %i.ct = tail call i32 @w2c_hermes_0x5F_memcpy(ptr noundef nonnull %0, i32 noundef %i.cr, i32 noundef %i.cs, i32 noundef %i.cn) #7 ; 0 uses
  %i.cu = or i32 %i.cn, %i.cr
  %i.cv = zext i32 %i.cu to i64
  %.val559 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cw = getelementptr inbounds nuw i8, ptr %.val559, i64 %i.cv
  store i8 0, ptr %i.cw, align 1
  %i.cx = add i32 %i.b, -24
  %i.cy = add nuw nsw i64 %i.e, 20                ; 2 uses
  %.val529 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cz = getelementptr inbounds nuw i8, ptr %.val529, i64 %i.cy
  %.0.copyload.i594 = load i32, ptr %i.cz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i594) #7, !srcloc !19
  %.val572 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.da = getelementptr inbounds nuw i8, ptr %.val572, i64 %i.co
  %.0.copyload.i595 = load i8, ptr %i.da, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i595) #7, !srcloc !21
  %i.db = zext i8 %.0.copyload.i595 to i32
  %.not521 = icmp sgt i8 %.0.copyload.i595, -1    ; 2 uses
  %i.dc = select i1 %.not521, i32 %i.cr, i32 %.0.copyload.i594
  %.val528 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dd = getelementptr inbounds nuw i8, ptr %.val528, i64 %i.e
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %.0.copyload.i596 = load i32, ptr %i.de, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i596) #7, !srcloc !19
  %i.df = select i1 %.not521, i32 %i.db, i32 %.0.copyload.i596
  %i.dg = tail call i32 @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3A0x3Aappend0x28char0x20const0x2A0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.cx, i32 noundef %i.dc, i32 noundef %i.df) #7
  %i.dh = zext i32 %i.dg to i64                   ; 3 uses
  %.val553 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.di = getelementptr inbounds nuw i8, ptr %.val553, i64 %i.dh
  %.0.copyload.i597 = load i64, ptr %i.di, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i597) #7, !srcloc !20
  %i.dj = zext i32 %1 to i64                      ; 2 uses
  %.val567 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dk = getelementptr inbounds nuw i8, ptr %.val567, i64 %i.dj
  store i64 %.0.copyload.i597, ptr %i.dk, align 1
  %i.dl = add nuw nsw i64 %i.dh, 8                ; 2 uses
  %.val527 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dm = getelementptr inbounds nuw i8, ptr %.val527, i64 %i.dl
  %.0.copyload.i598 = load i32, ptr %i.dm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i598) #7, !srcloc !19
  %.val544 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dn = getelementptr inbounds nuw i8, ptr %.val544, i64 %i.dj
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store i32 %.0.copyload.i598, ptr %i.do, align 1
  %.val566 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dp = getelementptr inbounds nuw i8, ptr %.val566, i64 %i.dh
  store i64 0, ptr %i.dp, align 1
  %.val543 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dq = getelementptr inbounds nuw i8, ptr %.val543, i64 %i.dl
  store i32 0, ptr %i.dq, align 1
  %.val579 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dr = getelementptr inbounds nuw i8, ptr %.val579, i64 %i.co
  %.0.copyload.i599 = load i8, ptr %i.dr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i599) #7, !srcloc !22
  %i.ds = icmp slt i8 %.0.copyload.i599, 0
  br i1 %i.ds, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
end_hunk_0
begin_hunk_1_@w2c_hermes_hermes0x3A0x3AOptValue0x3Cdouble0x3E0x20hermes0x3A0x3AparseIntWithRadix0x3Cfalse0x2C0x20hermes0x3A0x3Avm0x3A0x3AStringView0x3E0x28hermes0x3A0x3Avm0x3A0x3AStringView0x2C0x20int0x29:bb.a
bb.bf:                                            ; preds = %bb.az
  %.val1360 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kg = getelementptr inbounds nuw i8, ptr %.val1360, i64 %i.iy
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %.0.copyload.i1491 = load i32, ptr %i.kh, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1491) #7, !srcloc !19
  %i.ki = zext i32 %.0.copyload.i1491 to i64      ; 2 uses
  %.val1359 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kj = getelementptr inbounds nuw i8, ptr %.val1359, i64 %i.ki
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 12
  %.0.copyload.i1492 = load i32, ptr %i.kk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1492) #7, !srcloc !19
  %.val1412 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kl = getelementptr inbounds nuw i8, ptr %.val1412, i64 %i.ki
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 23
  %.0.copyload.i1493 = load i8, ptr %i.km, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1493) #7, !srcloc !22
  %i.kn = and i32 %.0.copyload.i1487, 1073741823  ; 2 uses
  %i.ko = icmp slt i8 %.0.copyload.i1493, 0
  %i.kp = add i32 %.0.copyload.i1491, 12
  %i.kq = select i1 %i.ko, i32 %.0.copyload.i1492, i32 %i.kp
  %i.kr = add i32 %i.kq, %i.kn
  %.val1353 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ks = getelementptr inbounds nuw i8, ptr %.val1353, i64 %i.iy
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  %.0.copyload.i1501 = load i32, ptr %i.kt, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1501) #7, !srcloc !19
  %i.ku = zext i32 %.0.copyload.i1501 to i64      ; 2 uses
  %.val1352 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kv = getelementptr inbounds nuw i8, ptr %.val1352, i64 %i.ku
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 12
  %.0.copyload.i1502 = load i32, ptr %i.kw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1502) #7, !srcloc !19
  %i.kx = add i32 %.0.copyload.i1501, 12
  %.val1409 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ky = getelementptr inbounds nuw i8, ptr %.val1409, i64 %i.ku
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 23
  %.0.copyload.i1503 = load i8, ptr %i.kz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1503) #7, !srcloc !22
  %i.la = icmp slt i8 %.0.copyload.i1503, 0
  %i.lb = select i1 %i.la, i32 %.0.copyload.i1502, i32 %i.kx
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %.thread1514, %.thread1516, %bb.be, %bb.bd
  %.21276 = phi i32 [ %.0.copyload.i1488, %bb.bd ], [ %i.jz, %bb.be ], [ %i.lb, %bb.bf ], [ %i.jf, %.thread1516 ], [ %i.kf, %.thread1514 ]
  %.01263 = phi i32 [ %i.js, %bb.bd ], [ %i.kb, %bb.be ], [ %i.kr, %bb.bf ], [ %i.je, %.thread1516 ], [ %i.ke, %.thread1514 ]
  %.11256 = phi i32 [ %i.jr, %bb.bd ], [ %i.ka, %bb.be ], [ %i.kn, %bb.bf ], [ %i.jc, %.thread1516 ], [ %i.kc, %.thread1514 ]
  %.val1351 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lc = getelementptr inbounds nuw i8, ptr %.val1351, i64 %i.n
  %.0.copyload.i1504 = load i32, ptr %i.lc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1504) #7, !srcloc !19
  %i.ld = add i32 %.11256, %.21276
  %i.le = add i32 %i.ld, %.0.copyload.i1504
  br label %.outer1542.thread

bb.bh:                                            ; preds = %bb.ba
  %i.lf = shl nuw nsw i32 %.0.copyload.i1487, 1
  %i.lg = add i32 %.0.copyload.i1488, %i.lf
  br label %bb.bk

bb.bi:                                            ; preds = %bb.bb
  %.val1350 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lh = getelementptr inbounds nuw i8, ptr %.val1350, i64 %i.ji
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 12
  %.0.copyload.i1505 = load i32, ptr %i.li, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1505) #7, !srcloc !19
  %i.lj = add i32 %.0.copyload.i1494, 12
  %.val1408 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lk = getelementptr inbounds nuw i8, ptr %.val1408, i64 %i.ji
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 23
  %.0.copyload.i1506 = load i8, ptr %i.ll, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1506) #7, !srcloc !22
  %i.lm = icmp slt i8 %.0.copyload.i1506, 0
  %i.ln = select i1 %i.lm, i32 %.0.copyload.i1505, i32 %i.lj ; 2 uses
  %i.lo = and i32 %.0.copyload.i1487, 1073741823  ; 2 uses
  %i.lp = shl nuw nsw i32 %i.lo, 1
  %i.lq = add i32 %i.ln, %i.lp
  br label %bb.bk

.thread1518:                                      ; preds = %bb.bc
  %i.lr = and i32 %.0.copyload.i1487, 1073741823  ; 2 uses
  %i.ls = shl nuw nsw i32 %i.lr, 1
  %i.lt = add nuw i32 %i.ls, 8
  %i.lu = add i32 %i.lt, %.0.copyload.i1494
  %i.lv = add i32 %.0.copyload.i1494, 8
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bc
  %.val1356 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lw = getelementptr inbounds nuw i8, ptr %.val1356, i64 %i.ji
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  %.0.copyload.i1496 = load i32, ptr %i.lx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1496) #7, !srcloc !19
  %i.ly = zext i32 %.0.copyload.i1496 to i64      ; 2 uses
  %.val1355 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lz = getelementptr inbounds nuw i8, ptr %.val1355, i64 %i.ly
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 12
  %.0.copyload.i1497 = load i32, ptr %i.ma, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1497) #7, !srcloc !19
  %.val1411 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mb = getelementptr inbounds nuw i8, ptr %.val1411, i64 %i.ly
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 23
  %.0.copyload.i1498 = load i8, ptr %i.mc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1498) #7, !srcloc !22
  %i.md = and i32 %.0.copyload.i1487, 1073741823  ; 2 uses
  %i.me = icmp slt i8 %.0.copyload.i1498, 0
  %i.mf = add i32 %.0.copyload.i1496, 12
  %i.mg = select i1 %i.me, i32 %.0.copyload.i1497, i32 %i.mf
  %i.mh = shl nuw nsw i32 %i.md, 1
  %i.mi = add i32 %i.mg, %i.mh
  %.val1349 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mj = getelementptr inbounds nuw i8, ptr %.val1349, i64 %i.ji
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %.0.copyload.i1507 = load i32, ptr %i.mk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1507) #7, !srcloc !19
  %i.ml = zext i32 %.0.copyload.i1507 to i64      ; 2 uses
  %.val1348 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mm = getelementptr inbounds nuw i8, ptr %.val1348, i64 %i.ml
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 12
  %.0.copyload.i1508 = load i32, ptr %i.mn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1508) #7, !srcloc !19
  %i.mo = add i32 %.0.copyload.i1507, 12
  %.val1407 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mp = getelementptr inbounds nuw i8, ptr %.val1407, i64 %i.ml
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 23
  %.0.copyload.i1509 = load i8, ptr %i.mq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1509) #7, !srcloc !22
  %i.mr = icmp slt i8 %.0.copyload.i1509, 0
  %i.ms = select i1 %i.mr, i32 %.0.copyload.i1508, i32 %i.mo
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %.thread1518, %.thread1520, %bb.bi, %bb.bh
  %.31277 = phi i32 [ %.0.copyload.i1488, %bb.bh ], [ %i.ln, %bb.bi ], [ %i.ms, %bb.bj ], [ %i.jq, %.thread1520 ], [ %i.lv, %.thread1518 ]
  %.11264 = phi i32 [ %.0.copyload.i1487, %bb.bh ], [ %i.lo, %bb.bi ], [ %i.md, %bb.bj ], [ %i.jm, %.thread1520 ], [ %i.lr, %.thread1518 ]
  %.01250 = phi i32 [ %i.lg, %bb.bh ], [ %i.lq, %bb.bi ], [ %i.mi, %bb.bj ], [ %i.jp, %.thread1520 ], [ %i.lu, %.thread1518 ]
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mt = getelementptr inbounds nuw i8, ptr %.val, i64 %i.n
  %.0.copyload.i1510 = load i32, ptr %i.mt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1510) #7, !srcloc !19
  %i.mu = add i32 %.0.copyload.i1510, %.11264
  %i.mv = shl i32 %i.mu, 1
  %i.mw = add i32 %i.mv, %.31277
  br label %.outer1542.thread

.peel.next:                                       ; preds = %bb.co, %bb.bq
  %.01284 = phi i32 [ %i.np, %bb.bq ], [ %i.rn, %bb.co ] ; 2 uses
  %.31266 = phi i32 [ %.41267, %bb.bq ], [ %i.rm, %bb.co ] ; 5 uses
  %.21257 = phi i32 [ %.31258, %bb.bq ], [ %i.rj, %bb.co ]
  %.21252 = phi i32 [ %.31253, %bb.bq ], [ %i.rk, %bb.co ] ; 4 uses
  %.not1336 = icmp eq i32 %.01284, 0
  br i1 %.not1336, label %bb.bl, label %bb.bq

bb.bl:                                            ; preds = %.peel.next
  %.not1337 = icmp eq i32 %.31266, 0              ; 4 uses
  %i.mx = select i1 %.not1337, i32 %.21252, i32 %.31266
  %i.my = select i1 %.not1337, i32 %.01249, i32 %.9
  %i.mz = icmp eq i32 %i.mx, %i.my
  br i1 %i.mz, label %.thread, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %.val1405 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %.not1337, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.na = zext i32 %.31266 to i64
  %i.nb = getelementptr inbounds nuw i8, ptr %.val1405, i64 %i.na
  %.0.copyload.i1511 = load i8, ptr %i.nb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1511) #7, !srcloc !21
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  %i.nc = zext i32 %.21252 to i64
  %i.nd = getelementptr inbounds nuw i8, ptr %.val1405, i64 %i.nc
  %.0.copyload.i1512 = load i8, ptr %i.nd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1512) #7, !srcloc !21
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.ne = phi i32 [ 0, %bb.bn ], [ 2, %bb.bo ]
  %.10.in = phi i8 [ %.0.copyload.i1511, %bb.bn ], [ %.0.copyload.i1512, %bb.bo ] ; 2 uses
  %i.nf = sext i8 %.10.in to i32                  ; 2 uses
  %i.ng = add nsw i32 %i.nf, -48
  %i.nh = or i32 %i.nf, 32
  %i.ni = add nsw i32 %i.nh, -87
  %i.nj = add i8 %.10.in, -48
  %i.nk = icmp ult i8 %i.nj, 10
  %i.nl = select i1 %i.nk, i32 %i.ng, i32 %i.ni
  %i.nm = add i32 %i.ne, %.21252
  %i.nn = add i32 %.31266, 1
  %i.no = select i1 %.not1337, i32 0, i32 %i.nn
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %.peel.next
  %.41267 = phi i32 [ %i.no, %bb.bp ], [ %.31266, %.peel.next ] ; 2 uses
  %.31258 = phi i32 [ %i.nl, %bb.bp ], [ %.21257, %.peel.next ] ; 3 uses
  %.31253 = phi i32 [ %i.nm, %bb.bp ], [ %.21252, %.peel.next ] ; 2 uses
  %.11 = phi i32 [ %i.ns, %bb.bp ], [ %.01284, %.peel.next ] ; 2 uses
  %i.np = lshr i32 %.11, 1                        ; 2 uses
  %i.nq = and i32 %.11, %.31258
  %.not1722 = icmp eq i32 %i.nq, 0
  br i1 %.not1722, label %.peel.next, label %.loopexit1680, !llvm.loop !42

.loopexit1680:                                    ; preds = %bb.bq, %bb.co
  %.41267.lcssa1659 = phi i32 [ %i.rm, %bb.co ], [ %.41267, %bb.bq ]
  %.31258.lcssa1652 = phi i32 [ %i.rj, %bb.co ], [ %.31258, %bb.bq ]
  %.31253.lcssa1645 = phi i32 [ %i.rk, %bb.co ], [ %.31253, %bb.bq ]
  %.lcssa1640 = phi i32 [ %i.rn, %bb.co ], [ %i.np, %bb.bq ]
  %.val1400 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.nr = getelementptr inbounds nuw i8, ptr %.val1400, i64 %i.h
  store i64 4607182418800017408, ptr %i.nr, align 1
  br label %.outer1542.jt1

.outer1542.thread:                                ; preds = %bb.bg, %bb.bk
  %.21265 = phi i32 [ %.01263, %bb.bg ], [ 0, %bb.bk ] ; 4 uses
  %.11251 = phi i32 [ 0, %bb.bg ], [ %.01250, %bb.bk ] ; 3 uses
  %.01249 = phi i32 [ 0, %bb.bg ], [ %i.mw, %bb.bk ] ; 6 uses
  %.9 = phi i32 [ %i.le, %bb.bg ], [ 0, %bb.bk ]  ; 6 uses
  %i.ns = ashr i32 %3, 1                          ; 7 uses
  %.not1337.peel = icmp eq i32 %.21265, 0         ; 4 uses
  %i.nt = select i1 %.not1337.peel, i32 %.11251, i32 %.21265
  %i.nu = select i1 %.not1337.peel, i32 %.01249, i32 %.9
  %i.nv = icmp eq i32 %i.nt, %i.nu
  br i1 %i.nv, label %.thread, label %bb.bv

.outer1533.jt3:                                   ; preds = %bb.cm, %.outer1542.jt2
  %.41267.peel.jt2 = phi i32 [ %.41267.peel.jt1, %.outer1542.jt2 ], [ %i.qo, %bb.cm ]
  %.31258.peel.jt2 = phi i32 [ %.31258.peel.jt1, %.outer1542.jt2 ], [ %i.ql, %bb.cm ] ; 2 uses
  %.31253.peel.jt2 = phi i32 [ %.31253.peel.jt1, %.outer1542.jt2 ], [ %i.qm, %bb.cm ]
  %.11.peel.jt2 = phi i32 [ %i.nz, %.outer1542.jt2 ], [ %i.ns, %bb.cm ] ; 2 uses
  %i.nw = lshr i32 %.11.peel.jt2, 1
  %i.nx = and i32 %.11.peel.jt2, %.31258.peel.jt2
  %i.ny = icmp ne i32 %i.nx, 0                    ; 2 uses
  br label %.outer1542.jt3

.loopexit1688:                                    ; preds = %bb.cl, %.outer1542.jt1
  %.41267.peel.jt1 = phi i32 [ %.412671660, %.outer1542.jt1 ], [ %i.qd, %bb.cl ] ; 6 uses
  %.31258.peel.jt1 = phi i32 [ %.312581653, %.outer1542.jt1 ], [ %i.qa, %bb.cl ] ; 3 uses
  %.31253.peel.jt1 = phi i32 [ %.312531646, %.outer1542.jt1 ], [ %i.qb, %bb.cl ] ; 5 uses
  %.11.peel.jt1 = phi i32 [ %i.oi, %.outer1542.jt1 ], [ %i.ns, %bb.cl ] ; 2 uses
  %i.nz = lshr i32 %.11.peel.jt1, 1               ; 3 uses
  %i.oa = and i32 %.11.peel.jt1, %.31258.peel.jt1
  %i.ob = icmp ne i32 %i.oa, 0                    ; 2 uses
  %i.oc = fadd double %.01247.ph1540.be, %.01247.ph1540.be
  %i.od = select i1 %i.ob, double 1.000000e+00, double 0.000000e+00
  %i.oe = fadd double %i.oc, %i.od                ; 5 uses
  %.val1428 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.of = getelementptr inbounds nuw i8, ptr %.val1428, i64 %i.h
  store double %i.oe, ptr %i.of, align 1
  %i.og = add i32 %.31262.ph1537.be, -1           ; 2 uses
  %.not1339 = icmp eq i32 %i.og, 0
  br i1 %.not1339, label %.outer1542.jt2, label %.outer1542.jt1

.outer1542.backedge.jt3:                          ; preds = %.split
  %.01246.ph1548.be.jt3 = fadd double %.01246.ph1548.jt3, %.01246.ph1548.jt3
  br label %.outer1542.jt3

.outer1542.jt4:                                   ; preds = %.split, %bb.cp
  %i.oh = phi i32 [ %i.rp, %bb.cp ], [ %i.ra, %.split ] ; 2 uses
  %.31253.peel1768 = phi i32 [ %.31253.peel.jt4, %bb.cp ], [ %.31253.peel.jt3, %.split ] ; 4 uses
  %.41267.peel1758 = phi i32 [ %.41267.peel.jt4, %bb.cp ], [ %.41267.peel.jt3, %.split ] ; 5 uses
  %.01246.ph15481750 = phi double [ %.01246.ph1548.be.jt4, %bb.cp ], [ %.01246.ph1548.jt3, %.split ] ; 2 uses
  %.01246.ph1548.be.jt4 = fadd double %.01246.ph15481750, %.01246.ph15481750 ; 2 uses
  %.not1336.peel.jt4 = icmp eq i32 %i.oh, 0
  br i1 %.not1336.peel.jt4, label %bb.br, label %bb.cp

.outer1542.jt1:                                   ; preds = %.loopexit1680, %.loopexit1688
  %.412671660 = phi i32 [ %.41267.peel.jt1, %.loopexit1688 ], [ %.41267.lcssa1659, %.loopexit1680 ] ; 5 uses
  %.312581653 = phi i32 [ %.31258.peel.jt1, %.loopexit1688 ], [ %.31258.lcssa1652, %.loopexit1680 ]
  %.312531646 = phi i32 [ %.31253.peel.jt1, %.loopexit1688 ], [ %.31253.lcssa1645, %.loopexit1680 ] ; 4 uses
  %i.oi = phi i32 [ %i.nz, %.loopexit1688 ], [ %.lcssa1640, %.loopexit1680 ] ; 2 uses
  %.31262.ph1537.be = phi i32 [ %i.og, %.loopexit1688 ], [ 52, %.loopexit1680 ]
  %.01247.ph1540.be = phi double [ %i.oe, %.loopexit1688 ], [ 1.000000e+00, %.loopexit1680 ] ; 3 uses
  %.not1336.peel.jt1 = icmp eq i32 %i.oi, 0
  br i1 %.not1336.peel.jt1, label %bb.bs, label %.loopexit1688

.outer1542.jt2:                                   ; preds = %.loopexit1688
  %.not1336.peel.jt2 = icmp eq i32 %i.nz, 0
  br i1 %.not1336.peel.jt2, label %bb.bt, label %.outer1533.jt3

.outer1542.jt3:                                   ; preds = %.outer1542.backedge.jt3, %.outer1533.jt3
  %.01284.ph1543.jt3 = phi i32 [ %i.nw, %.outer1533.jt3 ], [ %i.ra, %.outer1542.backedge.jt3 ] ; 2 uses
  %.31266.ph1545.jt3 = phi i32 [ %.41267.peel.jt2, %.outer1533.jt3 ], [ %.41267.peel.jt3, %.outer1542.backedge.jt3 ] ; 5 uses
  %.21257.ph1546.jt3 = phi i32 [ %.31258.peel.jt2, %.outer1533.jt3 ], [ %.31258.peel.jt3, %.outer1542.backedge.jt3 ]
  %.21252.ph1547.jt3 = phi i32 [ %.31253.peel.jt2, %.outer1533.jt3 ], [ %.31253.peel.jt3, %.outer1542.backedge.jt3 ] ; 4 uses
  %.01246.ph1548.jt3 = phi double [ 2.000000e+00, %.outer1533.jt3 ], [ %.01246.ph1548.be.jt3, %.outer1542.backedge.jt3 ] ; 4 uses
  %.not1336.peel.jt3 = icmp eq i32 %.01284.ph1543.jt3, 0
  br i1 %.not1336.peel.jt3, label %bb.bu, label %.split

bb.br:                                            ; preds = %.outer1542.jt4
  %.not1337.peel.jt4 = icmp eq i32 %.41267.peel1758, 0 ; 4 uses
  %i.oj = select i1 %.not1337.peel.jt4, i32 %.31253.peel1768, i32 %.41267.peel1758
  %i.ok = select i1 %.not1337.peel.jt4, i32 %.01249, i32 %.9
  %i.ol = icmp eq i32 %i.oj, %i.ok
  br i1 %i.ol, label %.loopexit, label %bb.bw

bb.bs:                                            ; preds = %.outer1542.jt1
  %.not1337.peel.jt1 = icmp eq i32 %.412671660, 0 ; 4 uses
  %i.om = select i1 %.not1337.peel.jt1, i32 %.312531646, i32 %.412671660
  %i.on = select i1 %.not1337.peel.jt1, i32 %.01249, i32 %.9
  %i.oo = icmp eq i32 %i.om, %i.on
  br i1 %i.oo, label %.thread, label %bb.bx

bb.bt:                                            ; preds = %.outer1542.jt2
  %.not1337.peel.jt2 = icmp eq i32 %.41267.peel.jt1, 0 ; 4 uses
  %i.op = select i1 %.not1337.peel.jt2, i32 %.31253.peel.jt1, i32 %.41267.peel.jt1
  %i.oq = select i1 %.not1337.peel.jt2, i32 %.01249, i32 %.9
  %i.or = icmp eq i32 %i.op, %i.oq
  br i1 %i.or, label %.thread, label %bb.by

bb.bu:                                            ; preds = %.outer1542.jt3
  %.not1337.peel.jt3 = icmp eq i32 %.31266.ph1545.jt3, 0 ; 4 uses
  %i.os = select i1 %.not1337.peel.jt3, i32 %.21252.ph1547.jt3, i32 %.31266.ph1545.jt3
  %i.ot = select i1 %.not1337.peel.jt3, i32 %.01249, i32 %.9
  %i.ou = icmp eq i32 %i.os, %i.ot
  br i1 %i.ou, label %.loopexit.thread1774, label %bb.bz

bb.bv:                                            ; preds = %.outer1542.thread
  %.val1405.peel = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %.not1337.peel, label %bb.cf, label %bb.ca

bb.bw:                                            ; preds = %bb.br
  %.val1405.peel.jt4 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %.not1337.peel.jt4, label %bb.cg, label %bb.cb

bb.bx:                                            ; preds = %bb.bs
  %.val1405.peel.jt1 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %.not1337.peel.jt1, label %bb.ch, label %bb.cc

bb.by:                                            ; preds = %bb.bt
  %.val1405.peel.jt2 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %.not1337.peel.jt2, label %bb.ci, label %bb.cd

bb.bz:                                            ; preds = %bb.bu
  %.val1405.peel.jt3 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %.not1337.peel.jt3, label %bb.cj, label %bb.ce

bb.ca:                                            ; preds = %bb.bv
  %i.ov = zext i32 %.21265 to i64
  %i.ow = getelementptr inbounds nuw i8, ptr %.val1405.peel, i64 %i.ov
  %.0.copyload.i1511.peel = load i8, ptr %i.ow, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1511.peel) #7, !srcloc !21
  br label %bb.co

bb.cb:                                            ; preds = %bb.bw
  %i.ox = zext i32 %.41267.peel1758 to i64
  %i.oy = getelementptr inbounds nuw i8, ptr %.val1405.peel.jt4, i64 %i.ox
  %.0.copyload.i1511.peel.jt4 = load i8, ptr %i.oy, align 1
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1511.peel.jt4) #7, !srcloc !21
  br label %bb.ck

bb.cc:                                            ; preds = %bb.bx
  %i.oz = zext i32 %.412671660 to i64
  %i.pa = getelementptr inbounds nuw i8, ptr %.val1405.peel.jt1, i64 %i.oz
  %.0.copyload.i1511.peel.jt1 = load i8, ptr %i.pa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1511.peel.jt1) #7, !srcloc !21
  br label %bb.cl

bb.cd:                                            ; preds = %bb.by
  %i.pb = zext i32 %.41267.peel.jt1 to i64
  %i.pc = getelementptr inbounds nuw i8, ptr %.val1405.peel.jt2, i64 %i.pb
  %.0.copyload.i1511.peel.jt2 = load i8, ptr %i.pc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1511.peel.jt2) #7, !srcloc !21
  br label %bb.cm

bb.ce:                                            ; preds = %bb.bz
  %i.pd = zext i32 %.31266.ph1545.jt3 to i64
  %i.pe = getelementptr inbounds nuw i8, ptr %.val1405.peel.jt3, i64 %i.pd
  %.0.copyload.i1511.peel.jt3 = load i8, ptr %i.pe, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1511.peel.jt3) #7, !srcloc !21
  br label %bb.cn

bb.cf:                                            ; preds = %bb.bv
  %i.pf = zext i32 %.11251 to i64
  %i.pg = getelementptr inbounds nuw i8, ptr %.val1405.peel, i64 %i.pf
  %.0.copyload.i1512.peel = load i8, ptr %i.pg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1512.peel) #7, !srcloc !21
  br label %bb.co

bb.cg:                                            ; preds = %bb.bw
  %i.ph = zext i32 %.31253.peel1768 to i64
  %i.pi = getelementptr inbounds nuw i8, ptr %.val1405.peel.jt4, i64 %i.ph
  %.0.copyload.i1512.peel.jt4 = load i8, ptr %i.pi, align 1
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1512.peel.jt4) #7, !srcloc !21
  br label %bb.ck

bb.ch:                                            ; preds = %bb.bx
  %i.pj = zext i32 %.312531646 to i64
  %i.pk = getelementptr inbounds nuw i8, ptr %.val1405.peel.jt1, i64 %i.pj
  %.0.copyload.i1512.peel.jt1 = load i8, ptr %i.pk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1512.peel.jt1) #7, !srcloc !21
  br label %bb.cl

bb.ci:                                            ; preds = %bb.by
  %i.pl = zext i32 %.31253.peel.jt1 to i64
  %i.pm = getelementptr inbounds nuw i8, ptr %.val1405.peel.jt2, i64 %i.pl
  %.0.copyload.i1512.peel.jt2 = load i8, ptr %i.pm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1512.peel.jt2) #7, !srcloc !21
  br label %bb.cm

bb.cj:                                            ; preds = %bb.bz
  %i.pn = zext i32 %.21252.ph1547.jt3 to i64
end_hunk_1
begin_hunk_2_@w2c_hermes_hermes0x3A0x3Airgen0x3A0x3AESTreeIRGen0x3A0x3AdeclareAmbientGlobalProperty0x28hermes0x3A0x3AIdentifier0x29:bb.a
  %.not304 = icmp eq i32 %.0.copyload.i341, %2
  br i1 %.not304, label %.loopexit, label %.preheader

bb.j:                                             ; preds = %bb.f, %bb.h
  %.2 = phi i32 [ 0, %bb.f ], [ %i.bm, %bb.h ]
  %i.bx = add i32 %1, 44
  %i.by = add i32 %i.b, -4
  %i.bz = tail call i32 @w2c_hermes_llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AIdentifier0x2C0x20hermes0x3A0x3AGlobalObjectProperty0x2A0x3E0x2A0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3AIdentifier0x2C0x20hermes0x3A0x3AGlobalObjectProperty0x2A0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AIdentifier0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AIdentifier0x2C0x20hermes0x3A0x3AGlobalObjectProperty0x2A0x3E0x3E0x2C0x20hermes0x3A0x3AIdentifier0x2C0x20hermes0x3A0x3AGlobalObjectProperty0x2A0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AIdentifier0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AIdentifier0x2C0x20hermes0x3A0x3AGlobalObjectProperty0x2A0x3E0x3E0x3A0x3AInsertIntoBucket0x3Chermes0x3A0x3AIdentifier0x20const0x260x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AIdentifier0x2C0x20hermes0x3A0x3AGlobalObjectProperty0x2A0x3E0x2A0x2C0x20hermes0x3A0x3AIdentifier0x20const0x260x29(ptr noundef nonnull %0, i32 noundef %i.bx, i32 noundef %.2, i32 noundef %i.by) #7
  %.val308 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ca = getelementptr inbounds nuw i8, ptr %.val308, i64 %i.f
  %.0.copyload.i342 = load i32, ptr %i.ca, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i342) #7, !srcloc !19
  %.pre = zext i32 %i.bz to i64
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %bb.g, %bb.j
  %.pre-phi = phi i64 [ %.pre, %bb.j ], [ %i.bi, %bb.g ], [ %i.bv, %bb.i ]
  %.0293 = phi i32 [ %.0.copyload.i342, %bb.j ], [ %2, %bb.g ], [ %2, %bb.i ]
  %i.cb = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef 20) #7 ; 3 uses
  %i.cc = zext i32 %.0.copyload.i337 to i64       ; 2 uses
  %.val307 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cd = getelementptr inbounds nuw i8, ptr %.val307, i64 %i.cc
  %.0.copyload.i343 = load i32, ptr %i.cd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i343) #7, !srcloc !19
  %i.ce = zext i32 %i.cb to i64                   ; 5 uses
  %.val327 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cf = getelementptr inbounds nuw i8, ptr %.val327, i64 %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store i32 %.0.copyload.i343, ptr %i.cg, align 1
  %.val326 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ch = getelementptr inbounds nuw i8, ptr %.val326, i64 %i.ce
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  store i32 %i.at, ptr %i.ci, align 1
  %.val325 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cj = getelementptr inbounds nuw i8, ptr %.val325, i64 %i.ce
  store i32 %.0293, ptr %i.cj, align 1
  %i.ck = add nuw nsw i64 %.pre-phi, 4            ; 2 uses
  %.val306 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cl = getelementptr inbounds nuw i8, ptr %.val306, i64 %i.ck
  %.0.copyload.i344 = load i32, ptr %i.cl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i344) #7, !srcloc !19
  %.val324 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cm = getelementptr inbounds nuw i8, ptr %.val324, i64 %i.ce
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store i32 %.0.copyload.i344, ptr %i.cn, align 1
  %i.co = add nuw nsw i64 %i.cc, 4                ; 2 uses
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cp = getelementptr inbounds nuw i8, ptr %.val, i64 %i.co
  %.0.copyload.i345 = load i32, ptr %i.cp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i345) #7, !srcloc !19
  %.val323 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cq = getelementptr inbounds nuw i8, ptr %.val323, i64 %i.ce
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  store i32 %.0.copyload.i345, ptr %i.cr, align 1
  %.val322 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cs = getelementptr inbounds nuw i8, ptr %.val322, i64 %i.co
  store i32 %i.cb, ptr %i.cs, align 1
  %.val321 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ct = getelementptr inbounds nuw i8, ptr %.val321, i64 %i.ck
  store i32 %i.cb, ptr %i.ct, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %.loopexit
  %.0286 = phi i32 [ %i.at, %.loopexit ], [ %.0.copyload.i334, %bb.e ]
  store i32 %i.b, ptr %i.a, align 8, !tbaa !17
  ret i32 %.0286
}

; Function Attrs: noreturn nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Ahermes_fatal0x28llvh0x3A0x3AStringRef0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aerror_code0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 8 uses
  %i.c = add i32 %i.b, -112                       ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 54 uses
  %i.e = zext i32 %i.c to i64                     ; 9 uses
  %.val405 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val405, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i32 %1, ptr %i.g, align 1
  %.val428 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val428, i64 %i.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store i16 261, ptr %i.i, align 1
  %.val404 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %.val404, i64 %i.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 52
  store i32 66335, ptr %i.k, align 1
  %.val427 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %.val427, i64 %i.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 60
  store i16 259, ptr %i.m, align 1
  %i.n = add i32 %i.b, -36                        ; 2 uses
  %i.o = add i32 %i.b, -48
  %i.p = add i32 %i.b, -60
  tail call void @w2c_hermes_llvh0x3A0x3Aoperator0x2B0x28llvh0x3A0x3ATwine0x20const0x260x2C0x20llvh0x3A0x3ATwine0x20const0x260x29(ptr noundef %0, i32 noundef %i.n, i32 noundef %i.o, i32 noundef %i.p) #7
  %i.q = zext i32 %2 to i64
  %.val407 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %.val407, i64 %i.q
  %.0.copyload.i = load i64, ptr %i.r, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i) #7, !srcloc !20
  %i.s = add nuw nsw i64 %i.e, 8                  ; 4 uses
  %.val416 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %.val416, i64 %i.s
  store i64 %.0.copyload.i, ptr %i.t, align 1
  %.val415 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %.val415, i64 %i.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %.0.copyload.i, ptr %i.v, align 1
  %i.w = add i32 %i.b, -84                        ; 2 uses
  %i.x = load i32, ptr %i.a, align 8, !tbaa !17   ; 10 uses
  %i.y = add i32 %i.x, -96                        ; 2 uses
  store i32 %i.y, ptr %i.a, align 8, !tbaa !17
  %.val388 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %.val388, i64 %i.s
  %.0.copyload.i429 = load i32, ptr %i.z, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i429) #7, !srcloc !19
  %i.aa = zext i32 %i.y to i64                    ; 31 uses
  %.val426 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %.val426, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store i16 2563, ptr %i.ac, align 1
  %.val403 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %.val403, i64 %i.aa
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 28
  store i32 %.0.copyload.i429, ptr %i.ae, align 1
  %.val402 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %.val402, i64 %i.aa
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i32 65842, ptr %i.ag, align 1
  %i.ah = add nuw nsw i64 %i.aa, 44               ; 2 uses
  %.val425 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %.val425, i64 %i.ah
  store i16 770, ptr %i.ai, align 1
  %.val401 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %.val401, i64 %i.aa
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  store i32 65733, ptr %i.ak, align 1
  %i.al = add i32 %i.x, -72
  %i.am = add nuw nsw i64 %i.aa, 36               ; 2 uses
  %.val400 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.an = getelementptr inbounds nuw i8, ptr %.val400, i64 %i.am
  store i32 %i.al, ptr %i.an, align 1
  %i.ao = add nuw nsw i64 %i.e, 12                ; 3 uses
  %.val387 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %.val387, i64 %i.ao
  %.0.copyload.i430 = load i32, ptr %i.ap, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i430) #7, !srcloc !19
  %i.aq = zext i32 %.0.copyload.i430 to i64
  %.val386 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %.val386, i64 %i.aq
  %.0.copyload.i431 = load i32, ptr %i.ar, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i431) #7, !srcloc !19
  %i.as = zext i32 %.0.copyload.i431 to i64
  %.val385 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.at = getelementptr inbounds nuw i8, ptr %.val385, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.0.copyload.i432 = load i32, ptr %i.au, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i432) #7, !srcloc !19
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 3 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !25
  %i.ay = icmp ult i32 %.0.copyload.i432, %i.ax
  br i1 %i.ay, label %bb.b, label %.critedge, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.az = load ptr, ptr %i.av, align 8, !tbaa !27
  %i.ba = zext i32 %.0.copyload.i432 to i64
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %i.ba ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !29 ; 2 uses
  %.not = icmp eq ptr %i.bd, null
  br i1 %.not, label %.critedge, label %bb.c, !prof !30

bb.c:                                             ; preds = %bb.b
  %i.be = load ptr, ptr @w2c_hermes_t5, align 8, !tbaa !31 ; 4 uses
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !32 ; 4 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %func_types_eq.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bh = icmp ne ptr %i.be, null
  %i.bi = icmp ne ptr %i.bf, null
  %or.cond.i = and i1 %i.bh, %i.bi
  br i1 %or.cond.i, label %func_types_eq.exit, label %.critedge, !prof !33

func_types_eq.exit:                               ; preds = %bb.d
  %i.bj = load i128, ptr %i.be, align 1
  %i.bk = load i128, ptr %i.bf, align 1
  %i.bl = xor i128 %i.bj, %i.bk
  %i.bm = getelementptr i8, ptr %i.be, i64 16
  %i.bn = getelementptr i8, ptr %i.bf, i64 16
  %i.bo = load i128, ptr %i.bm, align 1
  %i.bp = load i128, ptr %i.bn, align 1
  %i.bq = xor i128 %i.bo, %i.bp
  %i.br = or i128 %i.bl, %i.bq
  %i.bs = icmp ne i128 %i.br, 0
  %i.bt = zext i1 %i.bs to i32
  %.not.i = icmp eq i32 %i.bt, 0
  br i1 %.not.i, label %func_types_eq.exit.thread, label %.critedge, !prof !43

.critedge:                                        ; preds = %bb.d, %bb.b, %bb.a, %func_types_eq.exit
  tail call void @wasm_rt_trap(i32 noundef 6) #8
  unreachable

func_types_eq.exit.thread:                        ; preds = %bb.c, %func_types_eq.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !35
  %i.bw = tail call i32 %i.bd(ptr noundef %i.bv, i32 noundef %.0.copyload.i430) #7 ; 2 uses
  %i.bx = zext i32 %i.bw to i64
  %.val418 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.by = getelementptr inbounds nuw i8, ptr %.val418, i64 %i.bx
  %.0.copyload.i433 = load i8, ptr %i.by, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i433) #7, !srcloc !21
  %.not368 = icmp eq i8 %.0.copyload.i433, 0
  %.val384 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %.not368, label %bb.f, label %bb.e

bb.e:                                             ; preds = %func_types_eq.exit.thread
  %i.bz = getelementptr inbounds nuw i8, ptr %.val384, i64 %i.aa
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 56
  store i16 770, ptr %i.ca, align 1
  %.val399 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cb = getelementptr inbounds nuw i8, ptr %.val399, i64 %i.aa
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 52
  store i32 %i.bw, ptr %i.cc, align 1
  %i.cd = add i32 %i.x, -60
  %.val398 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ce = getelementptr inbounds nuw i8, ptr %.val398, i64 %i.aa
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  store i32 %i.cd, ptr %i.cf, align 1
  br label %bb.l

bb.f:                                             ; preds = %func_types_eq.exit.thread
  %i.cg = getelementptr inbounds nuw i8, ptr %.val384, i64 %i.ah
  %.0.copyload.i434 = load i32, ptr %i.cg, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i434) #7, !srcloc !19
  %.val397 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ch = getelementptr inbounds nuw i8, ptr %.val397, i64 %i.aa
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 56
  store i32 %.0.copyload.i434, ptr %i.ci, align 1
  %.val406 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cj = getelementptr inbounds nuw i8, ptr %.val406, i64 %i.am
  %.0.copyload.i435 = load i64, ptr %i.cj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i435) #7, !srcloc !20
  %.val414 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ck = getelementptr inbounds nuw i8, ptr %.val414, i64 %i.aa
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  store i64 %.0.copyload.i435, ptr %i.cl, align 1
  %trunc = trunc i32 %.0.copyload.i434 to i8
  switch i8 %trunc, label %bb.l [
    i8 0, label %bb.g
    i8 1, label %bb.k
  ]

bb.g:                                             ; preds = %bb.f
  %.val423 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cm = getelementptr inbounds nuw i8, ptr %.val423, i64 %i.aa
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 68
  store i16 256, ptr %i.cn, align 1
  %i.co = add i32 %i.x, -84
  %.val383 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cp = getelementptr inbounds nuw i8, ptr %.val383, i64 %i.ao
  %.0.copyload.i436 = load i32, ptr %i.cp, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i436) #7, !srcloc !19
  %.val382 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cq = getelementptr inbounds nuw i8, ptr %.val382, i64 %i.s
  %.0.copyload.i437 = load i32, ptr %i.cq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i437) #7, !srcloc !19
  %i.cr = zext i32 %.0.copyload.i436 to i64
  %.val381 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cs = getelementptr inbounds nuw i8, ptr %.val381, i64 %i.cr
  %.0.copyload.i438 = load i32, ptr %i.cs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i438) #7, !srcloc !19
  %i.ct = zext i32 %.0.copyload.i438 to i64
  %.val380 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cu = getelementptr inbounds nuw i8, ptr %.val380, i64 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %.0.copyload.i439 = load i32, ptr %i.cv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i439) #7, !srcloc !19
  %i.cw = load i32, ptr %i.aw, align 4, !tbaa !25
  %i.cx = icmp ult i32 %.0.copyload.i439, %i.cw
  br i1 %i.cx, label %bb.h, label %.critedge372, !prof !26

bb.h:                                             ; preds = %bb.g
  %i.cy = load ptr, ptr %i.av, align 8, !tbaa !27
  %i.cz = zext i32 %.0.copyload.i439 to i64
  %i.da = getelementptr inbounds nuw [24 x i8], ptr %i.cy, i64 %i.cz ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !29 ; 2 uses
  %.not369 = icmp eq ptr %i.dc, null
  br i1 %.not369, label %.critedge372, label %bb.i, !prof !30

bb.i:                                             ; preds = %bb.h
  %i.dd = load ptr, ptr @w2c_hermes_t2, align 8, !tbaa !31 ; 4 uses
  %i.de = load ptr, ptr %i.da, align 8, !tbaa !32 ; 4 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %func_types_eq.exit443.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dg = icmp ne ptr %i.dd, null
  %i.dh = icmp ne ptr %i.de, null
  %or.cond.i440 = and i1 %i.dg, %i.dh
  br i1 %or.cond.i440, label %func_types_eq.exit443, label %.critedge372, !prof !33

func_types_eq.exit443:                            ; preds = %bb.j
  %i.di = load i128, ptr %i.dd, align 1
  %i.dj = load i128, ptr %i.de, align 1
  %i.dk = xor i128 %i.di, %i.dj
  %i.dl = getelementptr i8, ptr %i.dd, i64 16
  %i.dm = getelementptr i8, ptr %i.de, i64 16
  %i.dn = load i128, ptr %i.dl, align 1
  %i.do = load i128, ptr %i.dm, align 1
  %i.dp = xor i128 %i.dn, %i.do
  %i.dq = or i128 %i.dk, %i.dp
  %i.dr = icmp ne i128 %i.dq, 0
  %i.ds = zext i1 %i.dr to i32
  %.not.i442 = icmp eq i32 %i.ds, 0
  br i1 %.not.i442, label %func_types_eq.exit443.thread, label %.critedge372, !prof !43

.critedge372:                                     ; preds = %bb.j, %bb.h, %bb.g, %func_types_eq.exit443
  tail call void @wasm_rt_trap(i32 noundef 6) #8
  unreachable

func_types_eq.exit443.thread:                     ; preds = %bb.i, %func_types_eq.exit443
  %i.dt = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !35
  tail call void %i.dc(ptr noundef %i.du, i32 noundef %i.co, i32 noundef %.0.copyload.i436, i32 noundef %.0.copyload.i437) #7
  %.val422 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dv = getelementptr inbounds nuw i8, ptr %.val422, i64 %i.aa
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 80
  store i16 256, ptr %i.dw, align 1
  br label %bb.q

bb.k:                                             ; preds = %bb.f
  %.val421 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dx = getelementptr inbounds nuw i8, ptr %.val421, i64 %i.aa
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 68
  store i16 259, ptr %i.dy, align 1
  %.val396 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dz = getelementptr inbounds nuw i8, ptr %.val396, i64 %i.aa
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 60
  store i32 65862, ptr %i.ea, align 1
  br label %bb.m

bb.l:                                             ; preds = %bb.f, %bb.e
  %.0363 = phi i32 [ 2, %bb.e ], [ %.0.copyload.i434, %bb.f ]
  %.val413 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eb = getelementptr inbounds nuw i8, ptr %.val413, i64 %i.aa
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 69
  store i8 3, ptr %i.ec, align 1
  %.val395 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ed = getelementptr inbounds nuw i8, ptr %.val395, i64 %i.aa
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 64
  store i32 65862, ptr %i.ee, align 1
  %.val417 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ef = getelementptr inbounds nuw i8, ptr %.val417, i64 %i.aa
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 57
  %.0.copyload.i444 = load i8, ptr %i.eg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i444) #7, !srcloc !21
  %i.eh = icmp eq i8 %.0.copyload.i444, 1         ; 2 uses
  %.val412 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ei = trunc i32 %.0363 to i8
  %i.ej = select i1 %i.eh, i8 %i.ei, i8 2
  %i.ek = getelementptr inbounds nuw i8, ptr %.val412, i64 %i.aa
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 68
  store i8 %i.ej, ptr %i.el, align 1
  %.val379 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.em = getelementptr inbounds nuw i8, ptr %.val379, i64 %i.aa
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 48
  %.0.copyload.i445 = load i32, ptr %i.en, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i445) #7, !srcloc !19
  %i.eo = add i32 %i.x, -48
  %i.ep = select i1 %i.eh, i32 %.0.copyload.i445, i32 %i.eo
  %.val394 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eq = getelementptr inbounds nuw i8, ptr %.val394, i64 %i.aa
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 60
  store i32 %i.ep, ptr %i.er, align 1
  %i.es = add i32 %i.x, -36
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1364 = phi i32 [ %i.es, %bb.l ], [ 65862, %bb.k ]
  %.0 = phi i8 [ 2, %bb.l ], [ 3, %bb.k ]
  %i.et = add i32 %i.x, -84                       ; 2 uses
  %.val378 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eu = getelementptr inbounds nuw i8, ptr %.val378, i64 %i.ao
  %.0.copyload.i446 = load i32, ptr %i.eu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i446) #7, !srcloc !19
  %.val377 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ev = getelementptr inbounds nuw i8, ptr %.val377, i64 %i.s
  %.0.copyload.i447 = load i32, ptr %i.ev, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i447) #7, !srcloc !19
  %i.ew = zext i32 %.0.copyload.i446 to i64
  %.val376 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ex = getelementptr inbounds nuw i8, ptr %.val376, i64 %i.ew
  %.0.copyload.i448 = load i32, ptr %i.ex, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i448) #7, !srcloc !19
  %i.ey = zext i32 %.0.copyload.i448 to i64
  %.val375 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ez = getelementptr inbounds nuw i8, ptr %.val375, i64 %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %.0.copyload.i449 = load i32, ptr %i.fa, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i449) #7, !srcloc !19
  %i.fb = load i32, ptr %i.aw, align 4, !tbaa !25
  %i.fc = icmp ult i32 %.0.copyload.i449, %i.fb
  br i1 %i.fc, label %bb.n, label %.critedge374, !prof !26

bb.n:                                             ; preds = %bb.m
  %i.fd = load ptr, ptr %i.av, align 8, !tbaa !27
  %i.fe = zext i32 %.0.copyload.i449 to i64
  %i.ff = getelementptr inbounds nuw [24 x i8], ptr %i.fd, i64 %i.fe ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !29 ; 2 uses
  %.not370 = icmp eq ptr %i.fh, null
  br i1 %.not370, label %.critedge374, label %bb.o, !prof !30

bb.o:                                             ; preds = %bb.n
  %i.fi = load ptr, ptr @w2c_hermes_t2, align 8, !tbaa !31 ; 4 uses
  %i.fj = load ptr, ptr %i.ff, align 8, !tbaa !32 ; 4 uses
  %i.fk = icmp eq ptr %i.fi, %i.fj
  br i1 %i.fk, label %func_types_eq.exit453.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fl = icmp ne ptr %i.fi, null
  %i.fm = icmp ne ptr %i.fj, null
  %or.cond.i450 = and i1 %i.fl, %i.fm
  br i1 %or.cond.i450, label %func_types_eq.exit453, label %.critedge374, !prof !33

func_types_eq.exit453:                            ; preds = %bb.p
  %i.fn = load i128, ptr %i.fi, align 1
  %i.fo = load i128, ptr %i.fj, align 1
  %i.fp = xor i128 %i.fn, %i.fo
  %i.fq = getelementptr i8, ptr %i.fi, i64 16
  %i.fr = getelementptr i8, ptr %i.fj, i64 16
  %i.fs = load i128, ptr %i.fq, align 1
  %i.ft = load i128, ptr %i.fr, align 1
  %i.fu = xor i128 %i.fs, %i.ft
  %i.fv = or i128 %i.fp, %i.fu
  %i.fw = icmp ne i128 %i.fv, 0
  %i.fx = zext i1 %i.fw to i32
  %.not.i452 = icmp eq i32 %i.fx, 0
  br i1 %.not.i452, label %func_types_eq.exit453.thread, label %.critedge374, !prof !43

.critedge374:                                     ; preds = %bb.p, %bb.n, %bb.m, %func_types_eq.exit453
  tail call void @wasm_rt_trap(i32 noundef 6) #8
  unreachable

func_types_eq.exit453.thread:                     ; preds = %bb.o, %func_types_eq.exit453
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !35
  tail call void %i.fh(ptr noundef %i.fz, i32 noundef %i.et, i32 noundef %.0.copyload.i446, i32 noundef %.0.copyload.i447) #7
  %.val411 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ga = getelementptr inbounds nuw i8, ptr %.val411, i64 %i.aa
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 81
  store i8 4, ptr %i.gb, align 1
  %.val410 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gc = getelementptr inbounds nuw i8, ptr %.val410, i64 %i.aa
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 80
  store i8 %.0, ptr %i.gd, align 1
  %.val393 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ge = getelementptr inbounds nuw i8, ptr %.val393, i64 %i.aa
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 72
  store i32 %.1364, ptr %i.gf, align 1
  %.val392 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gg = getelementptr inbounds nuw i8, ptr %.val392, i64 %i.aa
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 88
  store i32 62714, ptr %i.gh, align 1
  %.val391 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gi = getelementptr inbounds nuw i8, ptr %.val391, i64 %i.aa
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 76
  store i32 %i.et, ptr %i.gj, align 1
  %i.gk = add i32 %i.x, -24
  %.val390 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gl = getelementptr inbounds nuw i8, ptr %.val390, i64 %i.aa
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 84
  store i32 %i.gk, ptr %i.gm, align 1
  br label %bb.q

bb.q:                                             ; preds = %func_types_eq.exit453.thread, %func_types_eq.exit443.thread
  %.2 = phi i8 [ 2, %func_types_eq.exit453.thread ], [ 0, %func_types_eq.exit443.thread ]
  %.1 = phi i8 [ 3, %func_types_eq.exit453.thread ], [ 1, %func_types_eq.exit443.thread ]
  %.val409 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gn = getelementptr inbounds nuw i8, ptr %.val409, i64 %i.aa
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 93
  store i8 %.1, ptr %i.go, align 1
  %.val408 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gp = getelementptr inbounds nuw i8, ptr %.val408, i64 %i.aa
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 92
  store i8 %.2, ptr %i.gq, align 1
  %i.gr = add i32 %i.x, -12
  tail call void @w2c_hermes_llvh0x3A0x3ATwine0x3A0x3Astr0x280x290x20const(ptr noundef nonnull %0, i32 noundef %i.w, i32 noundef %i.gr) #7
  %.val419 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gs = getelementptr inbounds nuw i8, ptr %.val419, i64 %i.aa
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 23
  %.0.copyload.i454 = load i8, ptr %i.gt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i454) #7, !srcloc !22
  %i.gu = icmp slt i8 %.0.copyload.i454, 0
  br i1 %i.gu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gv = getelementptr inbounds nuw i8, ptr %.val, i64 %i.aa
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 12
  %.0.copyload.i455 = load i32, ptr %i.gw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i455) #7, !srcloc !19
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i455) #7
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  store i32 %i.x, ptr %i.a, align 8, !tbaa !17
  %.val420 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gx = getelementptr inbounds nuw i8, ptr %.val420, i64 %i.e
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 48
  store i16 260, ptr %i.gy, align 1
  %.val389 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gz = getelementptr inbounds nuw i8, ptr %.val389, i64 %i.e
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 40
  store i32 %i.w, ptr %i.ha, align 1
  %i.hb = add i32 %i.b, -24                       ; 2 uses
  %i.hc = add i32 %i.b, -72
  tail call void @w2c_hermes_llvh0x3A0x3Aoperator0x2B0x28llvh0x3A0x3ATwine0x20const0x260x2C0x20llvh0x3A0x3ATwine0x20const0x260x29(ptr noundef nonnull %0, i32 noundef %i.hb, i32 noundef %i.n, i32 noundef %i.hc) #7
  %i.hd = add i32 %i.b, -12                       ; 2 uses
  tail call void @w2c_hermes_llvh0x3A0x3ATwine0x3A0x3Astr0x280x290x20const(ptr noundef nonnull %0, i32 noundef %i.hd, i32 noundef %i.hb) #7
  tail call void @w2c_hermes_llvh0x3A0x3Areport_fatal_error0x28std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x20const0x260x2C0x20bool0x29(ptr noundef nonnull %0, i32 noundef %i.hd, i32 noundef 1) #7
  tail call void @wasm_rt_trap(i32 noundef 5) #8
  unreachable
}

declare void @w2c_hermes_llvh0x3A0x3Aoperator0x2B0x28llvh0x3A0x3ATwine0x20const0x260x2C0x20llvh0x3A0x3ATwine0x20const0x260x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_llvh0x3A0x3Areport_fatal_error0x28std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x20const0x260x2C0x20bool0x29(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3AhermesLog0x28char0x20const0x2A0x2C0x20char0x20const0x2A0x2C0x200x2E0x2E0x2E0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = add i32 %i.b, -16                        ; 4 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 21 uses
  %i.e = zext i32 %i.c to i64                     ; 2 uses
  %.val174 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val174, i64 %i.e
  store i32 %1, ptr %i.f, align 1
  %i.g = add nuw nsw i64 %i.e, 12                 ; 2 uses
  %.val173 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val173, i64 %i.g
  store i32 %3, ptr %i.h, align 1
  %.val167 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %.val167, i64 69412
  %.0.copyload.i = load i32, ptr %i.i, align 1    ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %i.j = load i32, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.k = add i32 %i.j, -16                        ; 2 uses
  store i32 %i.k, ptr %i.a, align 8, !tbaa !17
  %i.l = zext i32 %i.k to i64
  %.val172 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %.val172, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 %i.c, ptr %i.n, align 1
  %i.o = tail call i32 @w2c_hermes_0x5F_vfprintf_internal(ptr noundef %0, i32 noundef %.0.copyload.i, i32 noundef 65965, i32 noundef %i.c, i32 noundef 0, i32 noundef 0) #7 ; 0 uses
  store i32 %i.j, ptr %i.a, align 8, !tbaa !17
  %.val166 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %.val166, i64 %i.g
  %.0.copyload.i177 = load i32, ptr %i.p, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i177) #7, !srcloc !19
  %i.q = tail call i32 @w2c_hermes_vfprintf(ptr noundef %0, i32 noundef %.0.copyload.i, i32 noundef %2, i32 noundef %.0.copyload.i177) #7 ; 0 uses
  %i.r = zext i32 %.0.copyload.i to i64           ; 7 uses
  %i.s = add nuw nsw i64 %i.r, 76                 ; 5 uses
  %.val165 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %.val165, i64 %i.s
  %.0.copyload.i178 = load i32, ptr %i.t, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i178) #7, !srcloc !19
  %i.u = icmp sgt i32 %.0.copyload.i178, -1
  br i1 %i.u, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %.0.copyload.i178, 0
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val164 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %.val164, i64 273276
  %.0.copyload.i179 = load i32, ptr %i.v, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i179) #7, !srcloc !19
  %i.w = and i32 %.0.copyload.i178, 1073741823
  %.not155 = icmp eq i32 %.0.copyload.i179, %i.w
  br i1 %.not155, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c, %bb.a
  %.val163 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %.val163, i64 %i.r
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %.0.copyload.i180 = load i32, ptr %i.y, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i180) #7, !srcloc !19
  %i.z = icmp eq i32 %.0.copyload.i180, 10
  br i1 %i.z, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = add nuw nsw i64 %i.r, 20                ; 2 uses
  %.val162 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %.val162, i64 %i.aa
  %.0.copyload.i181 = load i32, ptr %i.ab, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i181) #7, !srcloc !19
  %.val161 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %.val161, i64 %i.r
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.0.copyload.i182 = load i32, ptr %i.ad, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i182) #7, !srcloc !19
  %i.ae = icmp eq i32 %.0.copyload.i181, %.0.copyload.i182
  br i1 %i.ae, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = add i32 %.0.copyload.i181, 1
  %.val171 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %.val171, i64 %i.aa
  store i32 %i.af, ptr %i.ag, align 1
  %i.ah = zext i32 %.0.copyload.i181 to i64
  %.val176 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %.val176, i64 %i.ah
  store i8 10, ptr %i.ai, align 1
  br label %bb.m

bb.g:                                             ; preds = %bb.e, %bb.d
  tail call void @w2c_hermes_0x5F_overflow(ptr noundef nonnull %0, i32 noundef %.0.copyload.i) #7
  br label %bb.m

bb.h:                                             ; preds = %bb.c, %bb.b
  %.val160 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %.val160, i64 %i.s
  %.0.copyload.i183 = load i32, ptr %i.aj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i183) #7, !srcloc !19
  %.not156 = icmp eq i32 %.0.copyload.i183, 0
  %i.ak = select i1 %.not156, i32 1073741823, i32 %.0.copyload.i183
  %.val170 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %.val170, i64 %i.s
  store i32 %i.ak, ptr %i.al, align 1
  %.val159 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %.val159, i64 %i.r
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %.0.copyload.i184 = load i32, ptr %i.an, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i184) #7, !srcloc !19
end_hunk_2
begin_hunk_3_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3ALowerSwitchIntoJumpTables0x3A0x3ArunOnFunction0x28hermes0x3A0x3AFunction0x2A0x29:bb.a
  br i1 %.not810.peel, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.ch, i32 noundef %i.cb, i32 noundef 0, i32 noundef 4) #7
  %.val847.peel = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dx = getelementptr inbounds nuw i8, ptr %.val847.peel, i64 %i.bz
  %.0.copyload.i939.peel = load i32, ptr %i.dx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i939.peel) #7, !srcloc !19
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0766.peel = phi i32 [ %.0.copyload.i939.peel, %bb.q ], [ %.0.copyload.i937.peel, %bb.p ]
  %.val846.peel = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dy = getelementptr inbounds nuw i8, ptr %.val846.peel, i64 %i.cc
  %.0.copyload.i940.peel = load i32, ptr %i.dy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i940.peel) #7, !srcloc !19
  %i.dz = shl i32 %.0766.peel, 2
  %i.ea = add i32 %.0.copyload.i940.peel, %i.dz
  %.val845.peel = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eb = getelementptr inbounds nuw i8, ptr %.val845.peel, i64 %i.bj
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %.0.copyload.i941.peel = load i32, ptr %i.ec, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i941.peel) #7, !srcloc !19
  %i.ed = zext i32 %i.ea to i64
  %.val888.peel = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ee = getelementptr inbounds nuw i8, ptr %.val888.peel, i64 %i.ed
  store i32 %.0.copyload.i941.peel, ptr %i.ee, align 1
  %.val844.peel = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ef = getelementptr inbounds nuw i8, ptr %.val844.peel, i64 %i.bz
  %.0.copyload.i942.peel = load i32, ptr %i.ef, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i942.peel) #7, !srcloc !19
  %i.eg = add i32 %.0.copyload.i942.peel, 1
  %.val887.peel = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eh = getelementptr inbounds nuw i8, ptr %.val887.peel, i64 %i.bz
  store i32 %i.eg, ptr %i.eh, align 1
  %.not812.peel = icmp eq i32 %i.bt, 1
  br i1 %.not812.peel, label %.loopexit1051, label %.peel.next

.peel.next:                                       ; preds = %bb.r, %bb.z
  %.0773 = phi i32 [ %i.gm, %bb.z ], [ 1, %bb.r ] ; 2 uses
  %.0770 = phi i32 [ %i.gk, %bb.z ], [ %spec.select, %bb.r ]
  %.0769 = phi i32 [ %i.gl, %bb.z ], [ %spec.select, %bb.r ]
  %.val44.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ei = getelementptr inbounds nuw i8, ptr %.val44.i, i64 %i.as
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 40
  %.0.copyload.i.i = load i32, ptr %i.ej, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i) #7, !srcloc !19
  %i.ek = shl i32 %.0773, 4
  %i.el = add i32 %.0.copyload.i.i, %i.ek         ; 2 uses
  %i.em = add i32 %i.el, 16
  %i.en = zext i32 %i.em to i64
  %.val43.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eo = getelementptr inbounds nuw i8, ptr %.val43.i, i64 %i.en
  %.0.copyload.i47.i = load i32, ptr %i.eo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i47.i) #7, !srcloc !19
  %i.ep = add i32 %i.el, 24
  %i.eq = zext i32 %i.ep to i64
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.er = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.eq
  %.0.copyload.i48.i = load i32, ptr %i.er, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i48.i) #7, !srcloc !19
  %.val46.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.es = getelementptr inbounds nuw i8, ptr %.val46.i, i64 %i.cf
  store i32 %.0.copyload.i47.i, ptr %i.es, align 1
  %i.et = add i32 %.0.copyload.i48.i, -8
  %.not.i = icmp eq i32 %.0.copyload.i48.i, 0
  %i.eu = select i1 %.not.i, i32 0, i32 %i.et
  %.val45.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ev = getelementptr inbounds nuw i8, ptr %.val45.i, i64 %i.cf
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  store i32 %i.eu, ptr %i.ew, align 1
  %.val855 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ex = getelementptr inbounds nuw i8, ptr %.val855, i64 %i.bj
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 12
  %.0.copyload.i929 = load i32, ptr %i.ey, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i929) #7, !srcloc !19
  %i.ez = zext i32 %.0.copyload.i929 to i64       ; 2 uses
  %.val908 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fa = getelementptr inbounds nuw i8, ptr %.val908, i64 %i.ez
  %.0.copyload.i930 = load i8, ptr %i.fa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i930) #7, !srcloc !21
  %.not805 = icmp eq i8 %.0.copyload.i930, 114
  br i1 %.not805, label %bb.s, label %.loopexit1051

bb.s:                                             ; preds = %.peel.next
  %.val911 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fb = getelementptr inbounds nuw i8, ptr %.val911, i64 %i.ez
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 32
  %.0.copyload.i931 = load double, ptr %i.fc, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i931) #7, !srcloc !23
  %i.fd = fcmp ogt double %.0.copyload.i931, f0x41EFFFFFFFE00000
  %i.fe = fcmp ult double %.0.copyload.i931, 0.000000e+00
  %or.cond823 = or i1 %i.fe, %i.fd
  br i1 %or.cond823, label %.loopexit1051, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ff = fcmp olt double %.0.copyload.i931, f0x41F0000000000000
  %i.fg = fptoui double %.0.copyload.i931 to i32
  %spec.select1082 = select i1 %i.ff, i32 %i.fg, i32 0 ; 4 uses
  %i.fh = uitofp i32 %spec.select1082 to double
  %i.fi = fcmp une double %.0.copyload.i931, %i.fh
  br i1 %i.fi, label %.loopexit1051, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not806 = icmp ne i32 %spec.select1082, 0
  %i.fj = bitcast double %.0.copyload.i931 to i64
  %.not807808 = icmp sgt i64 %i.fj, -1
  %.not807 = select i1 %.not806, i1 true, i1 %.not807808
  br i1 %.not807, label %bb.v, label %.loopexit1051

bb.v:                                             ; preds = %bb.u
  %.val854 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fk = getelementptr inbounds nuw i8, ptr %.val854, i64 %i.bu
  %.0.copyload.i932 = load i32, ptr %i.fk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i932) #7, !srcloc !19
  %.val853 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fl = getelementptr inbounds nuw i8, ptr %.val853, i64 %i.bj
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 72
  %.0.copyload.i933 = load i32, ptr %i.fm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i933) #7, !srcloc !19
  %.not809 = icmp ult i32 %.0.copyload.i932, %.0.copyload.i933
  br i1 %.not809, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.cg, i32 noundef %i.bw, i32 noundef 0, i32 noundef 4) #7
  %.val852 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fn = getelementptr inbounds nuw i8, ptr %.val852, i64 %i.bu
  %.0.copyload.i934 = load i32, ptr %i.fn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i934) #7, !srcloc !19
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.0765 = phi i32 [ %.0.copyload.i934, %bb.w ], [ %.0.copyload.i932, %bb.v ]
  %.val851 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fo = getelementptr inbounds nuw i8, ptr %.val851, i64 %i.bx
  %.0.copyload.i935 = load i32, ptr %i.fo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i935) #7, !srcloc !19
  %i.fp = shl i32 %.0765, 2
  %i.fq = add i32 %.0.copyload.i935, %i.fp
  %i.fr = zext i32 %i.fq to i64
  %.val890 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fs = getelementptr inbounds nuw i8, ptr %.val890, i64 %i.fr
  store i32 %.0.copyload.i929, ptr %i.fs, align 1
  %.val850 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ft = getelementptr inbounds nuw i8, ptr %.val850, i64 %i.bu
  %.0.copyload.i936 = load i32, ptr %i.ft, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i936) #7, !srcloc !19
  %i.fu = add i32 %.0.copyload.i936, 1
  %.val889 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fv = getelementptr inbounds nuw i8, ptr %.val889, i64 %i.bu
  store i32 %i.fu, ptr %i.fv, align 1
  %.val849 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fw = getelementptr inbounds nuw i8, ptr %.val849, i64 %i.bz
  %.0.copyload.i937 = load i32, ptr %i.fw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i937) #7, !srcloc !19
  %.val848 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fx = getelementptr inbounds nuw i8, ptr %.val848, i64 %i.bj
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 28
  %.0.copyload.i938 = load i32, ptr %i.fy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i938) #7, !srcloc !19
  %.not810 = icmp ult i32 %.0.copyload.i937, %.0.copyload.i938
  br i1 %.not810, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.ch, i32 noundef %i.cb, i32 noundef 0, i32 noundef 4) #7
  %.val847 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fz = getelementptr inbounds nuw i8, ptr %.val847, i64 %i.bz
  %.0.copyload.i939 = load i32, ptr %i.fz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i939) #7, !srcloc !19
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0766 = phi i32 [ %.0.copyload.i939, %bb.y ], [ %.0.copyload.i937, %bb.x ]
  %.val846 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ga = getelementptr inbounds nuw i8, ptr %.val846, i64 %i.cc
  %.0.copyload.i940 = load i32, ptr %i.ga, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i940) #7, !srcloc !19
  %i.gb = shl i32 %.0766, 2
  %i.gc = add i32 %.0.copyload.i940, %i.gb
  %.val845 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gd = getelementptr inbounds nuw i8, ptr %.val845, i64 %i.bj
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %.0.copyload.i941 = load i32, ptr %i.ge, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i941) #7, !srcloc !19
  %i.gf = zext i32 %i.gc to i64
  %.val888 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gg = getelementptr inbounds nuw i8, ptr %.val888, i64 %i.gf
  store i32 %.0.copyload.i941, ptr %i.gg, align 1
  %.val844 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gh = getelementptr inbounds nuw i8, ptr %.val844, i64 %i.bz
  %.0.copyload.i942 = load i32, ptr %i.gh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i942) #7, !srcloc !19
  %i.gi = add i32 %.0.copyload.i942, 1
  %.val887 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gj = getelementptr inbounds nuw i8, ptr %.val887, i64 %i.bz
  store i32 %i.gi, ptr %i.gj, align 1
  %i.gk = tail call i32 @llvm.umin.i32(i32 %spec.select1082, i32 %.0770) ; 4 uses
  %i.gl = tail call i32 @llvm.umax.i32(i32 %spec.select1082, i32 %.0769) ; 3 uses
  %i.gm = add nuw nsw i32 %.0773, 1               ; 2 uses
  %.not812 = icmp eq i32 %i.gm, %i.bt
  br i1 %.not812, label %.loopexit1065, label %.peel.next, !llvm.loop !44

.loopexit1065:                                    ; preds = %bb.z
  %i.gn = icmp eq i32 %i.gk, %i.gl
  br i1 %i.gn, label %.loopexit1051, label %bb.aa

bb.aa:                                            ; preds = %.loopexit1065
  %i.go = sub i32 %i.gl, %i.gk                    ; 3 uses
  %i.gp = icmp eq i32 %i.go, -1
  %i.gq = icmp ult i32 %i.bs, 20
  %or.cond824 = or i1 %i.gq, %i.gp
  br i1 %or.cond824, label %.loopexit1051, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gr = udiv i32 %i.go, %i.bt
  %i.gs = icmp ugt i32 %i.gr, 5
  br i1 %i.gs, label %.loopexit1051, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gt = add i32 %i.aq, -20
  %i.gu = zext i32 %i.gt to i64                   ; 6 uses
  %i.gv = add nuw nsw i64 %i.gu, 4                ; 2 uses
  %.val886 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gw = getelementptr inbounds nuw i8, ptr %.val886, i64 %i.gv
  store i32 %.0.copyload.i921, ptr %i.gw, align 1
  %.val843 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gx = getelementptr inbounds nuw i8, ptr %.val843, i64 %i.bb
  %.0.copyload.i943 = load i32, ptr %i.gx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i943) #7, !srcloc !19
  %i.gy = add nuw nsw i64 %i.gu, 8                ; 2 uses
  %.val885 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gz = getelementptr inbounds nuw i8, ptr %.val885, i64 %i.gy
  store i32 %.0.copyload.i943, ptr %i.gz, align 1
  %.val842 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ha = getelementptr inbounds nuw i8, ptr %.val842, i64 %i.at
  %.0.copyload.i944 = load i32, ptr %i.ha, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i944) #7, !srcloc !19
  %i.hb = zext i32 %.0.copyload.i944 to i64       ; 2 uses
  %.val841 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hc = getelementptr inbounds nuw i8, ptr %.val841, i64 %i.hb
  %.0.copyload.i945 = load i32, ptr %i.hc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i945) #7, !srcloc !19
  %.val840 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hd = getelementptr inbounds nuw i8, ptr %.val840, i64 %i.hb
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %.0.copyload.i946 = load i32, ptr %i.he, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i946) #7, !srcloc !19
  %i.hf = add i32 %.0.copyload.i946, -8
  %.not813 = icmp eq i32 %.0.copyload.i946, 0
  %i.hg = select i1 %.not813, i32 0, i32 %i.hf    ; 2 uses
  %i.hh = uitofp i32 %i.gk to double
  %.val.i947 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hi = getelementptr inbounds nuw i8, ptr %.val.i947, i64 %i.gu
  %.0.copyload.i.i948 = load i32, ptr %i.hi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i948) #7, !srcloc !19
  %i.hj = tail call i32 @w2c_hermes_hermes0x3A0x3AModule0x3A0x3AgetLiteralNumber0x28double0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i.i948, double noundef %i.hh)
  %i.hk = add nuw i32 %i.go, 1
  %i.hl = uitofp i32 %i.hk to double
  %.val.i949 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hm = getelementptr inbounds nuw i8, ptr %.val.i949, i64 %i.gu
  %.0.copyload.i.i950 = load i32, ptr %i.hm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i950) #7, !srcloc !19
  %i.hn = tail call i32 @w2c_hermes_hermes0x3A0x3AModule0x3A0x3AgetLiteralNumber0x28double0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i.i950, double noundef %i.hl)
  %i.ho = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef 80) #7 ; 18 uses
  %i.hp = zext i32 %i.ho to i64                   ; 25 uses
  %.val902 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hq = getelementptr inbounds nuw i8, ptr %.val902, i64 %i.hp
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 20
  store i64 8589934592, ptr %i.hr, align 1
  %.val884 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hs = getelementptr inbounds nuw i8, ptr %.val884, i64 %i.hp
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 10
  store i32 459775, ptr %i.ht, align 1
  %.val901 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hu = getelementptr inbounds nuw i8, ptr %.val901, i64 %i.hp
  store i64 0, ptr %i.hu, align 1
  %i.hv = add nuw nsw i64 %i.hp, 68               ; 2 uses
  %.val900 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hw = getelementptr inbounds nuw i8, ptr %.val900, i64 %i.hv
  store i64 0, ptr %i.hw, align 1
  %i.hx = add nuw nsw i64 %i.hp, 36               ; 2 uses
  %.val883 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hy = getelementptr inbounds nuw i8, ptr %.val883, i64 %i.hx
  store i32 0, ptr %i.hy, align 1
  %.val898 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hz = getelementptr inbounds nuw i8, ptr %.val898, i64 %i.hp
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  store i8 87, ptr %i.ia, align 1
  %i.ib = add i32 %i.ho, 28
  %.val882 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ic = getelementptr inbounds nuw i8, ptr %.val882, i64 %i.hp
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  store i32 %i.ib, ptr %i.id, align 1
  %i.ie = add nuw nsw i64 %i.hp, 44               ; 25 uses
  %.val899 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.if = getelementptr inbounds nuw i8, ptr %.val899, i64 %i.ie
  store i64 8589934592, ptr %i.if, align 1
  %i.ig = add i32 %i.ho, 52                       ; 7 uses
  %.val881 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ih = getelementptr inbounds nuw i8, ptr %.val881, i64 %i.hp
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 40
  store i32 %i.ig, ptr %i.ii, align 1
  %i.ij = add nuw nsw i64 %i.hp, 76               ; 2 uses
  %.val880 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ik = getelementptr inbounds nuw i8, ptr %.val880, i64 %i.ij
  store i32 0, ptr %i.ik, align 1
  %.val56.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.il = getelementptr inbounds nuw i8, ptr %.val56.i, i64 %i.ie
  %.0.copyload.i.i951 = load i32, ptr %i.il, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i951) #7, !srcloc !19
  %.val55.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.im = getelementptr inbounds nuw i8, ptr %.val55.i, i64 %i.hp
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 48
  %.0.copyload.i59.i = load i32, ptr %i.in, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i59.i) #7, !srcloc !19
  %.not.i952 = icmp ult i32 %.0.copyload.i.i951, %.0.copyload.i59.i
  br i1 %.not.i952, label %w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3ApushOperand0x28hermes0x3A0x3AValue0x2A0x29.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.io = add i32 %i.ho, 40
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.io, i32 noundef %i.ig, i32 noundef 0, i32 noundef 8) #7
  %.val54.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ip = getelementptr inbounds nuw i8, ptr %.val54.i, i64 %i.ie
  %.0.copyload.i60.i = load i32, ptr %i.ip, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i60.i) #7, !srcloc !19
  br label %w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3ApushOperand0x28hermes0x3A0x3AValue0x2A0x29.exit

w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3ApushOperand0x28hermes0x3A0x3AValue0x2A0x29.exit: ; preds = %bb.ac, %bb.ad
  %.0.i = phi i32 [ %.0.copyload.i60.i, %bb.ad ], [ %.0.copyload.i.i951, %bb.ac ]
  %.val53.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iq = getelementptr inbounds nuw i8, ptr %.val53.i, i64 %i.hp
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 40
  %.0.copyload.i61.i = load i32, ptr %i.ir, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i61.i) #7, !srcloc !19
  %i.is = shl i32 %.0.i, 3
  %i.it = add i32 %.0.copyload.i61.i, %i.is
  %i.iu = zext i32 %i.it to i64
  %.val58.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iv = getelementptr inbounds nuw i8, ptr %.val58.i, i64 %i.iu
  store i64 0, ptr %i.iv, align 1
  %.val.i953 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iw = getelementptr inbounds nuw i8, ptr %.val.i953, i64 %i.ie
  %.0.copyload.i62.i = load i32, ptr %i.iw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i62.i) #7, !srcloc !19
  %i.ix = add i32 %.0.copyload.i62.i, 1
  %.val57.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iy = getelementptr inbounds nuw i8, ptr %.val57.i, i64 %i.ie
  store i32 %i.ix, ptr %i.iy, align 1
  tail call void @w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3AsetOperand0x28hermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.ho, i32 noundef %.0.copyload.i945, i32 noundef %.0.copyload.i62.i)
  %i.iz = add i32 %i.hg, 8
  %.not814 = icmp eq i32 %i.hg, 0
  %i.ja = select i1 %.not814, i32 0, i32 %i.iz
  %.val56.i954 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jb = getelementptr inbounds nuw i8, ptr %.val56.i954, i64 %i.ie
  %.0.copyload.i.i955 = load i32, ptr %i.jb, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i955) #7, !srcloc !19
  %.val55.i956 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jc = getelementptr inbounds nuw i8, ptr %.val55.i956, i64 %i.hp
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 48
  %.0.copyload.i59.i957 = load i32, ptr %i.jd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i59.i957) #7, !srcloc !19
  %.not.i958 = icmp ult i32 %.0.copyload.i.i955, %.0.copyload.i59.i957
  br i1 %.not.i958, label %w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3ApushOperand0x28hermes0x3A0x3AValue0x2A0x29.exit968, label %bb.ae

bb.ae:                                            ; preds = %w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3ApushOperand0x28hermes0x3A0x3AValue0x2A0x29.exit
  %i.je = add i32 %i.ho, 40
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.je, i32 noundef %i.ig, i32 noundef 0, i32 noundef 8) #7
  %.val54.i959 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jf = getelementptr inbounds nuw i8, ptr %.val54.i959, i64 %i.ie
  %.0.copyload.i60.i960 = load i32, ptr %i.jf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i60.i960) #7, !srcloc !19
  br label %w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3ApushOperand0x28hermes0x3A0x3AValue0x2A0x29.exit968

w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3ApushOperand0x28hermes0x3A0x3AValue0x2A0x29.exit968: ; preds = %w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3ApushOperand0x28hermes0x3A0x3AValue0x2A0x29.exit, %bb.ae
  %.0.i961 = phi i32 [ %.0.copyload.i60.i960, %bb.ae ], [ %.0.copyload.i.i955, %w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3ApushOperand0x28hermes0x3A0x3AValue0x2A0x29.exit ]
  %.val53.i962 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jg = getelementptr inbounds nuw i8, ptr %.val53.i962, i64 %i.hp
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 40
  %.0.copyload.i61.i963 = load i32, ptr %i.jh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i61.i963) #7, !srcloc !19
  %i.ji = shl i32 %.0.i961, 3
  %i.jj = add i32 %.0.copyload.i61.i963, %i.ji
  %i.jk = zext i32 %i.jj to i64
  %.val58.i964 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jl = getelementptr inbounds nuw i8, ptr %.val58.i964, i64 %i.jk
  store i64 0, ptr %i.jl, align 1
  %.val.i965 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jm = getelementptr inbounds nuw i8, ptr %.val.i965, i64 %i.ie
  %.0.copyload.i62.i966 = load i32, ptr %i.jm, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i62.i966) #7, !srcloc !19
  %i.jn = add i32 %.0.copyload.i62.i966, 1
  %.val57.i967 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jo = getelementptr inbounds nuw i8, ptr %.val57.i967, i64 %i.ie
  store i32 %i.jn, ptr %i.jo, align 1
  tail call void @w2c_hermes_hermes0x3A0x3AInstruction0x3A0x3AsetOperand0x28hermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.ho, i32 noundef %i.ja, i32 noundef %.0.copyload.i62.i966)
  %.val56.i969 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jp = getelementptr inbounds nuw i8, ptr %.val56.i969, i64 %i.ie
  %.0.copyload.i.i970 = load i32, ptr %i.jp, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i970) #7, !srcloc !19
  %.val55.i971 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jq = getelementptr inbounds nuw i8, ptr %.val55.i971, i64 %i.hp
end_hunk_3
begin_hunk_4_@w2c_hermes_hermes0x3A0x3AIRPrinter0x3A0x3AprintFunctionHeader0x28hermes0x3A0x3AFunction0x2A0x29:bb.a
  store i64 7957695015192261990, ptr %i.av, align 1
  %.val234 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.aw = getelementptr inbounds nuw i8, ptr %.val234, i64 %i.as
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 11
  store i8 8, ptr %i.ax, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.ay = zext i32 %1 to i64                      ; 2 uses
  %.val222 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %.val222, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %.0.copyload.i255 = load i32, ptr %i.ba, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i255) #7, !srcloc !19
  %i.bb = zext i32 %i.c to i64                    ; 5 uses
  %i.bc = add nuw nsw i64 %i.bb, 20               ; 2 uses
  %.val221 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.bd = getelementptr inbounds nuw i8, ptr %.val221, i64 %i.bc
  %.0.copyload.i256 = load i32, ptr %i.bd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i256) #7, !srcloc !19
  %i.be = add nuw nsw i64 %i.bb, 31               ; 2 uses
  %.val247 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %.val247, i64 %i.be
  %.0.copyload.i257 = load i8, ptr %i.bf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i257) #7, !srcloc !21
  %i.bg = zext i8 %.0.copyload.i257 to i32
  %.not = icmp sgt i8 %.0.copyload.i257, -1       ; 2 uses
  %i.bh = select i1 %.not, i32 %i.d, i32 %.0.copyload.i256
  %.val220 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %.val220, i64 %i.bb
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %.0.copyload.i258 = load i32, ptr %i.bj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i258) #7, !srcloc !19
  %i.bk = select i1 %.not, i32 %i.bg, i32 %.0.copyload.i258
  %i.bl = tail call i32 @w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3Awrite0x28char0x20const0x2A0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i255, i32 noundef %i.bh, i32 noundef %i.bk) #7 ; 2 uses
  %i.bm = zext i32 %i.bl to i64                   ; 2 uses
  %.val219 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.bn = getelementptr inbounds nuw i8, ptr %.val219, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.0.copyload.i259 = load i32, ptr %i.bo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i259) #7, !srcloc !19
  %i.bp = add nuw nsw i64 %i.bm, 12               ; 3 uses
  %.val218 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.bq = getelementptr inbounds nuw i8, ptr %.val218, i64 %i.bp
  %.0.copyload.i260 = load i32, ptr %i.bq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i260) #7, !srcloc !19
  %i.br = icmp eq i32 %.0.copyload.i259, %.0.copyload.i260
  br i1 %i.br, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bs = tail call i32 @w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3Awrite0x28char0x20const0x2A0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.bl, i32 noundef 66353, i32 noundef 1) #7 ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bt = zext i32 %.0.copyload.i260 to i64
  %.val233 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.bu = getelementptr inbounds nuw i8, ptr %.val233, i64 %i.bt
  store i8 32, ptr %i.bu, align 1
  %.val217 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.bv = getelementptr inbounds nuw i8, ptr %.val217, i64 %i.bp
  %.0.copyload.i261 = load i32, ptr %i.bv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i261) #7, !srcloc !19
  %i.bw = add i32 %.0.copyload.i261, 1
  %.val228 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.bx = getelementptr inbounds nuw i8, ptr %.val228, i64 %i.bp
  store i32 %i.bw, ptr %i.bx, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void @w2c_hermes_hermes0x3A0x3AIRPrinter0x3A0x3AprintFunctionName0x28hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3AIRPrinter0x3A0x3APrintFunctionParams0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef 1)
  %.val216 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.by = getelementptr inbounds nuw i8, ptr %.val216, i64 %i.f
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 10
  %.0.copyload.i262 = load i32, ptr %i.bz, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i262) #7, !srcloc !19
  %.val227 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ca = getelementptr inbounds nuw i8, ptr %.val227, i64 %i.bb
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store i32 %.0.copyload.i262, ptr %i.cb, align 1
  %.val215 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.cc = getelementptr inbounds nuw i8, ptr %.val215, i64 %i.ay
  %.0.copyload.i263 = load i32, ptr %i.cc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i263) #7, !srcloc !19
  %i.cd = zext i32 %.0.copyload.i263 to i64
  %.val214 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ce = getelementptr inbounds nuw i8, ptr %.val214, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 20
  %.0.copyload.i264 = load i32, ptr %i.cf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i264) #7, !srcloc !19
  %.val226 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.cg = getelementptr inbounds nuw i8, ptr %.val226, i64 %i.bb
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 12
  store i32 %.0.copyload.i262, ptr %i.ch, align 1
  %i.ci = add i32 %i.b, -20
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !25
  %i.cl = icmp ult i32 %.0.copyload.i264, %i.ck
  br i1 %i.cl, label %bb.k, label %.critedge, !prof !26

bb.k:                                             ; preds = %bb.j
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !27
  %i.co = zext i32 %.0.copyload.i264 to i64
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %i.co ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !29 ; 2 uses
  %.not213 = icmp eq ptr %i.cr, null
  br i1 %.not213, label %.critedge, label %bb.l, !prof !30

bb.l:                                             ; preds = %bb.k
  %i.cs = load ptr, ptr @w2c_hermes_t0, align 8, !tbaa !31 ; 4 uses
  %i.ct = load ptr, ptr %i.cp, align 8, !tbaa !32 ; 4 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %func_types_eq.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cv = icmp ne ptr %i.cs, null
  %i.cw = icmp ne ptr %i.ct, null
  %or.cond.i = and i1 %i.cv, %i.cw
  br i1 %or.cond.i, label %func_types_eq.exit, label %.critedge, !prof !33

func_types_eq.exit:                               ; preds = %bb.m
  %i.cx = load i128, ptr %i.cs, align 1
  %i.cy = load i128, ptr %i.ct, align 1
  %i.cz = xor i128 %i.cx, %i.cy
  %i.da = getelementptr i8, ptr %i.cs, i64 16
  %i.db = getelementptr i8, ptr %i.ct, i64 16
  %i.dc = load i128, ptr %i.da, align 1
  %i.dd = load i128, ptr %i.db, align 1
  %i.de = xor i128 %i.dc, %i.dd
  %i.df = or i128 %i.cz, %i.de
  %i.dg = icmp ne i128 %i.df, 0
  %i.dh = zext i1 %i.dg to i32
  %.not.i = icmp eq i32 %i.dh, 0
  br i1 %.not.i, label %func_types_eq.exit.thread, label %.critedge, !prof !34

.critedge:                                        ; preds = %bb.m, %bb.k, %bb.j, %func_types_eq.exit
  tail call void @wasm_rt_trap(i32 noundef 6) #8
  unreachable

func_types_eq.exit.thread:                        ; preds = %bb.l, %func_types_eq.exit
  %i.di = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !35
  tail call void %i.cr(ptr noundef %i.dj, i32 noundef %1, i32 noundef %i.ci) #7
  %.val248 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.dk = getelementptr inbounds nuw i8, ptr %.val248, i64 %i.be
  %.0.copyload.i265 = load i8, ptr %i.dk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i265) #7, !srcloc !22
  %i.dl = icmp slt i8 %.0.copyload.i265, 0
  br i1 %i.dl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %func_types_eq.exit.thread
  %.val = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.dm = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bc
  %.0.copyload.i266 = load i32, ptr %i.dm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i266) #7, !srcloc !19
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i266) #7
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %func_types_eq.exit.thread
  store i32 %i.b, ptr %i.a, align 8, !tbaa !17
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{!"any pointer", !4, i64 0}
!8 = !{!"p1 _ZTS7w2c_env", !7, i64 0}
!9 = !{!"p1 _ZTS18w2c_hermes__import", !7, i64 0}
!10 = !{!"p1 _ZTS28w2c_wasi__snapshot__preview1", !7, i64 0}
!11 = !{!"p1 omnipotent char", !7, i64 0}
!12 = !{!"long", !4, i64 0}
!13 = !{!"_Bool", !4, i64 0}
!14 = !{!"", !11, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !13, i64 32}
!15 = !{!"", !7, i64 0, !5, i64 8, !5, i64 12}
!16 = !{!"w2c_hermes", !8, i64 0, !9, i64 8, !10, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !14, i64 40, !15, i64 80}
!17 = !{!16, !5, i64 24}
!18 = !{!14, !11, i64 0}
!19 = !{i64 2156010582}
!20 = !{i64 2156011008}
!21 = !{i64 2156013138}
!22 = !{i64 2156012286}
!23 = !{i64 2156011860}
!24 = !{i64 2156014850}
!25 = !{!16, !5, i64 92}
!26 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!27 = !{!16, !7, i64 80}
!28 = !{!"", !11, i64 0, !7, i64 8, !7, i64 16}
!29 = !{!28, !7, i64 8}
!30 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!31 = !{!11, !11, i64 0}
!32 = !{!28, !11, i64 0}
!33 = !{!"branch_weights", i32 4000000, i32 4001}
!34 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!35 = !{!28, !7, i64 16}
!36 = !{i64 2156015280}
!37 = !{i64 2156016140}
!38 = !{!"llvm.loop.peeled.count", i32 1}
!39 = !{i64 2156013564}
!40 = !{!"branch_weights", i32 4001, i32 4000000}
!41 = !{i64 2156011434}
!42 = distinct !{!42, !38}
!43 = !{!"branch_weights", !"expected", i32 2147483112, i32 536}
!44 = distinct !{!44, !38}
end_hunk_4
