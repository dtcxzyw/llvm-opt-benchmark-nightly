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
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !28 ; 2 uses
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
  store i32 %i.b, ptr %i.a, align 8, !tbaa !7
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3AIRPrinter0x3A0x3AquoteStr0x28llvh0x3A0x3AStringRef0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 8 uses
  %i.c = add i32 %i.b, -80                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !7
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
  br i1 %.not1722, label %.peel.next, label %.loopexit1680, !llvm.loop !39

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
  store i32 %i.b, ptr %i.a, align 8, !tbaa !7
  ret i32 %.0286
}

; Function Attrs: noreturn nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Ahermes_fatal0x28llvh0x3A0x3AStringRef0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aerror_code0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 8 uses
  %i.c = add i32 %i.b, -112                       ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !7
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
  %i.x = load i32, ptr %i.a, align 8, !tbaa !7    ; 10 uses
  %i.y = add i32 %i.x, -96                        ; 2 uses
  store i32 %i.y, ptr %i.a, align 8, !tbaa !7
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
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !28 ; 2 uses
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
  br i1 %.not.i, label %func_types_eq.exit.thread, label %.critedge, !prof !41

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
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !28 ; 2 uses
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
  br i1 %.not.i442, label %func_types_eq.exit443.thread, label %.critedge372, !prof !41

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
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !28 ; 2 uses
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
  br i1 %.not.i452, label %func_types_eq.exit453.thread, label %.critedge374, !prof !41

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
  store i32 %i.x, ptr %i.a, align 8, !tbaa !7
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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = add i32 %i.b, -16                        ; 4 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !7
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
  %i.j = load i32, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.k = add i32 %i.j, -16                        ; 2 uses
  store i32 %i.k, ptr %i.a, align 8, !tbaa !7
  %i.l = zext i32 %i.k to i64
  %.val172 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %.val172, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 %i.c, ptr %i.n, align 1
  %i.o = tail call i32 @w2c_hermes_0x5F_vfprintf_internal(ptr noundef %0, i32 noundef %.0.copyload.i, i32 noundef 65965, i32 noundef %i.c, i32 noundef 0, i32 noundef 0) #7 ; 0 uses
  store i32 %i.j, ptr %i.a, align 8, !tbaa !7
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
begin_hunk_3_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3ABytecodeModuleGenerator0x3A0x3AserializeScopeChain0x28hermes0x3A0x3AStringTable0x260x2C0x20hermes0x3A0x3Ahbc0x3A0x3ADebugInfoGenerator0x260x2C0x20hermes0x3A0x3AScopeDesc0x2A0x29:bb.a
  %.not1063 = icmp sgt i8 %.0.copyload.i1223, -1  ; 2 uses
  %i.fu = select i1 %.not1063, i32 %i.ft, i32 %.0.copyload.i1222
  %.val1148 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fv = getelementptr inbounds nuw i8, ptr %.val1148, i64 %i.e
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 124
  store i32 %i.fu, ptr %i.fw, align 1
  %i.fx = select i1 %.not1063, i32 %i.cs, i32 %.0.copyload.i1221
  %.val1147 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fy = getelementptr inbounds nuw i8, ptr %.val1147, i64 %i.cu
  store i32 %i.fx, ptr %i.fy, align 1
  %.val1156 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fz = getelementptr inbounds nuw i8, ptr %.val1156, i64 %i.cu
  %.0.copyload.i1224 = load i64, ptr %i.fz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1224) #7, !srcloc !20
  %.val1168 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ga = getelementptr inbounds nuw i8, ptr %.val1168, i64 %i.e
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  store i64 %.0.copyload.i1224, ptr %i.gb, align 1
  %i.gc = tail call i32 @w2c_hermes_hermes0x3A0x3AStringTable0x3A0x3AgetString0x28llvh0x3A0x3AStringRef0x29(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %i.cv)
  br label %.loopexit1269

.loopexit1269:                                    ; preds = %bb.ai, %bb.q, %bb.am
  %.01009 = phi i32 [ %.0.copyload.i1208, %bb.q ], [ %i.gc, %bb.am ], [ %.0.copyload.i1208, %bb.ai ]
  %.val1114 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gd = getelementptr inbounds nuw i8, ptr %.val1114, i64 %i.bj
  %.0.copyload.i1225 = load i32, ptr %i.gd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1225) #7, !srcloc !19
  %.val1113 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ge = getelementptr inbounds nuw i8, ptr %.val1113, i64 %i.e
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 84
  %.0.copyload.i1226 = load i32, ptr %i.gf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1226) #7, !srcloc !19
  %.not1064 = icmp ult i32 %.0.copyload.i1225, %.0.copyload.i1226
  br i1 %.not1064, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.loopexit1269
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.w, i32 noundef %i.bl, i32 noundef 0, i32 noundef 4) #7
  %.val1112 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gg = getelementptr inbounds nuw i8, ptr %.val1112, i64 %i.bj
  %.0.copyload.i1227 = load i32, ptr %i.gg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1227) #7, !srcloc !19
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.loopexit1269
  %.11022 = phi i32 [ %.0.copyload.i1227, %bb.an ], [ %.0.copyload.i1225, %.loopexit1269 ]
  %.val1111 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gh = getelementptr inbounds nuw i8, ptr %.val1111, i64 %i.f
  %.0.copyload.i1228 = load i32, ptr %i.gh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1228) #7, !srcloc !19
  %i.gi = shl i32 %.11022, 2
  %i.gj = add i32 %.0.copyload.i1228, %i.gi
  %i.gk = zext i32 %i.gj to i64
  %.val1146 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gl = getelementptr inbounds nuw i8, ptr %.val1146, i64 %i.gk
  store i32 %.01009, ptr %i.gl, align 1
  %.val1110 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gm = getelementptr inbounds nuw i8, ptr %.val1110, i64 %i.bj
  %.0.copyload.i1229 = load i32, ptr %i.gm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1229) #7, !srcloc !19
  %i.gn = add i32 %.0.copyload.i1229, 1
  %.val1145 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.go = getelementptr inbounds nuw i8, ptr %.val1145, i64 %i.bj
  store i32 %i.gn, ptr %i.go, align 1
  %i.gp = add i32 %.11017, 4                      ; 2 uses
  %.not1065 = icmp eq i32 %i.gp, %i.cq
  br i1 %.not1065, label %bb.ap, label %bb.q

bb.ap:                                            ; preds = %bb.ao
  %.val1180 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gq = getelementptr inbounds nuw i8, ptr %.val1180, i64 %i.e
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 75
  %.0.copyload.i1230 = load i8, ptr %i.gr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1230) #7, !srcloc !22
  %i.gs = icmp sgt i8 %.0.copyload.i1230, -1
  br i1 %i.gs, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.val1109 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gt = getelementptr inbounds nuw i8, ptr %.val1109, i64 %i.cj
  %.0.copyload.i1231 = load i32, ptr %i.gt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1231) #7, !srcloc !19
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1231) #7
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.o, %bb.aq
  %.val1108 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gu = getelementptr inbounds nuw i8, ptr %.val1108, i64 %i.bj
  %.0.copyload.i1232 = load i32, ptr %i.gu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1232) #7, !srcloc !19
  %.val1107 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gv = getelementptr inbounds nuw i8, ptr %.val1107, i64 %i.f
  %.0.copyload.i1233 = load i32, ptr %i.gv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1233) #7, !srcloc !19
  br label %bb.as

bb.as:                                            ; preds = %bb.i, %bb.ar
  %.01006 = phi i32 [ %.0.copyload.i1232, %bb.ar ], [ 0, %bb.i ]
  %.1999 = phi i32 [ %.0.copyload.i1233, %bb.ar ], [ %i.bl, %bb.i ]
  %i.gw = phi i64 [ %.0998, %bb.ar ], [ 0, %bb.i ] ; 2 uses
  %.val1167 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gx = getelementptr inbounds nuw i8, ptr %.val1167, i64 %i.e
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 56
  store i64 %i.gw, ptr %i.gy, align 1
  %.val1187 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gz = getelementptr inbounds nuw i8, ptr %.val1187, i64 %i.bf
  %.0.copyload.i1234 = load i16, ptr %i.gz, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i1234) #7, !srcloc !24
  %.val1144 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ha = getelementptr inbounds nuw i8, ptr %.val1144, i64 %i.e
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 48
  store i32 %.01006, ptr %i.hb, align 1
  %i.hc = add nuw nsw i64 %i.e, 44                ; 2 uses
  %.val1143 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hd = getelementptr inbounds nuw i8, ptr %.val1143, i64 %i.hc
  store i32 %.1999, ptr %i.hd, align 1
  %.val1186 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.he = getelementptr inbounds nuw i8, ptr %.val1186, i64 %i.e
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 54
  store i16 %.0.copyload.i1234, ptr %i.hf, align 1
  %i.hg = add nuw nsw i64 %i.e, 16                ; 2 uses
  %.val1166 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hh = getelementptr inbounds nuw i8, ptr %.val1166, i64 %i.hg
  store i64 %i.gw, ptr %i.hh, align 1
  %i.hi = add nuw nsw i64 %i.e, 14                ; 2 uses
  %.val1185 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hj = getelementptr inbounds nuw i8, ptr %.val1185, i64 %i.hi
  store i16 %.0.copyload.i1234, ptr %i.hj, align 1
  %.val1155 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hk = getelementptr inbounds nuw i8, ptr %.val1155, i64 %i.hc
  %.0.copyload.i1235 = load i64, ptr %i.hk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1235) #7, !srcloc !20
  %.val1165 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hl = getelementptr inbounds nuw i8, ptr %.val1165, i64 %i.e
  store i64 %.0.copyload.i1235, ptr %i.hl, align 1
  %.val1173 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hm = getelementptr inbounds nuw i8, ptr %.val1173, i64 %i.e
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 20
  %.0.copyload.i1236 = load i8, ptr %i.hn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1236) #7, !srcloc !21
  %.not1066 = icmp eq i8 %.0.copyload.i1236, 0
  br i1 %.not1066, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %.val1106 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ho = getelementptr inbounds nuw i8, ptr %.val1106, i64 %i.e
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 4
  %.0.copyload.i1237 = load i32, ptr %i.hp, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1237) #7, !srcloc !19
  %.not1067 = icmp eq i32 %.0.copyload.i1237, 0
  br i1 %.not1067, label %.loopexit1268, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hq = zext i32 %3 to i64                      ; 2 uses
  %.val1105 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hr = getelementptr inbounds nuw i8, ptr %.val1105, i64 %i.hq
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 72
  %.0.copyload.i1238 = load i32, ptr %i.hs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1238) #7, !srcloc !19
  %.val1104 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ht = getelementptr inbounds nuw i8, ptr %.val1104, i64 %i.hq
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 68
  %.0.copyload.i1239 = load i32, ptr %i.hu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1239) #7, !srcloc !19
  %i.hv = sub i32 %.0.copyload.i1238, %.0.copyload.i1239
  br label %bb.aw

bb.av:                                            ; preds = %bb.as
  %i.hw = zext i32 %3 to i64                      ; 2 uses
  %.val1103 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hx = getelementptr inbounds nuw i8, ptr %.val1103, i64 %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 72
  %.0.copyload.i1240 = load i32, ptr %i.hy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1240) #7, !srcloc !19
  %.val1102 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hz = getelementptr inbounds nuw i8, ptr %.val1102, i64 %i.hw
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 68
  %.0.copyload.i1241 = load i32, ptr %i.ia, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1241) #7, !srcloc !19
  %i.ib = sub i32 %.0.copyload.i1240, %.0.copyload.i1241
  %.val1101 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ic = getelementptr inbounds nuw i8, ptr %.val1101, i64 %i.e
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 4
  %.0.copyload.i1242 = load i32, ptr %i.id, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1242) #7, !srcloc !19
  %.val1188 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ie = getelementptr inbounds nuw i8, ptr %.val1188, i64 %i.hg
  %.0.copyload.i1243 = load i32, ptr %i.ie, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1243) #7, !srcloc !38
  %i.if = zext i32 %.0.copyload.i1243 to i64
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.01024 = phi i32 [ %.0.copyload.i1237, %bb.au ], [ %.0.copyload.i1242, %bb.av ] ; 3 uses
  %.11013 = phi i32 [ %i.hv, %bb.au ], [ %i.ib, %bb.av ] ; 2 uses
  %.21002 = phi i64 [ 4294967295, %bb.au ], [ %i.if, %bb.av ]
  %.2 = add i32 %3, 68                            ; 4 uses
  tail call void @w2c_hermes_hermes0x3A0x3AappendSignedLEB1280x28std0x3A0x3A_0x5F20x3A0x3Avector0x3Cunsigned0x20char0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cunsigned0x20char0x3E0x3E0x260x2C0x20long0x20long0x29(ptr noundef nonnull %0, i32 noundef %.2, i64 noundef %.21002)
  %.val1190 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ig = getelementptr inbounds nuw i8, ptr %.val1190, i64 %i.hi
  %.0.copyload.i1244 = load i8, ptr %i.ig, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1244) #7, !srcloc !42
  %i.ih = zext i8 %.0.copyload.i1244 to i64
  %.val1189 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ii = getelementptr inbounds nuw i8, ptr %.val1189, i64 %i.e
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 15
  %.0.copyload.i1245 = load i8, ptr %i.ij, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1245) #7, !srcloc !42
  %i.ik = zext i8 %.0.copyload.i1245 to i64
  %i.il = shl nuw nsw i64 %i.ik, 1
  %i.im = or i64 %i.il, %i.ih
  tail call void @w2c_hermes_hermes0x3A0x3AappendSignedLEB1280x28std0x3A0x3A_0x5F20x3A0x3Avector0x3Cunsigned0x20char0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cunsigned0x20char0x3E0x3E0x260x2C0x20long0x20long0x29(ptr noundef nonnull %0, i32 noundef %.2, i64 noundef %i.im)
  %i.in = zext i32 %.01024 to i64
  tail call void @w2c_hermes_hermes0x3A0x3AappendSignedLEB1280x28std0x3A0x3A_0x5F20x3A0x3Avector0x3Cunsigned0x20char0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cunsigned0x20char0x3E0x3E0x260x2C0x20long0x20long0x29(ptr noundef nonnull %0, i32 noundef %.2, i64 noundef %i.in)
  %.not1068 = icmp eq i32 %.01024, 0
  br i1 %.not1068, label %.loopexit1268, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %.val1100 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.io = getelementptr inbounds nuw i8, ptr %.val1100, i64 %i.e
  %.0.copyload.i1246 = load i32, ptr %i.io, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1246) #7, !srcloc !19
  %i.ip = shl i32 %.01024, 2
  %i.iq = add i32 %.0.copyload.i1246, %i.ip
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %bb.ax
  %.21018 = phi i32 [ %.0.copyload.i1246, %bb.ax ], [ %i.it, %bb.ay ] ; 2 uses
  %i.ir = zext i32 %.21018 to i64
  %.val1099 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.is = getelementptr inbounds nuw i8, ptr %.val1099, i64 %i.ir
  %.0.copyload.i1247 = load i32, ptr %i.is, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1247) #7, !srcloc !19
  tail call void @w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3ADebugInfoGenerator0x3A0x3AappendString0x28std0x3A0x3A_0x5F20x3A0x3Avector0x3Cunsigned0x20char0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cunsigned0x20char0x3E0x3E0x260x2C0x20hermes0x3A0x3AIdentifier0x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %.2, i32 noundef %.0.copyload.i1247)
  %i.it = add i32 %.21018, 4                      ; 2 uses
  %.not1069 = icmp eq i32 %i.it, %i.iq
  br i1 %.not1069, label %.loopexit1268, label %bb.ay

.loopexit1268:                                    ; preds = %bb.ay, %bb.aw, %bb.at
  %.3 = phi i32 [ 0, %bb.at ], [ %.11013, %bb.aw ], [ %.11013, %bb.ay ] ; 3 uses
  %i.iu = add i32 %1, 148                         ; 2 uses
  %.val1098 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iv = getelementptr inbounds nuw i8, ptr %.val1098, i64 %i.af
  %.0.copyload.i1248 = load i32, ptr %i.iv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1248) #7, !srcloc !19
  %.not1070 = icmp eq i32 %.0.copyload.i1248, 0
  br i1 %.not1070, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %.loopexit1268
  %.val1097 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iw = getelementptr inbounds nuw i8, ptr %.val1097, i64 %i.aa
  %.0.copyload.i1249 = load i32, ptr %i.iw, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1249) #7, !srcloc !19
  %.val1096 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ix = getelementptr inbounds nuw i8, ptr %.val1096, i64 %i.ad
  %.0.copyload.i1250 = load i32, ptr %i.ix, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1250) #7, !srcloc !19
  %i.iy = add i32 %.0.copyload.i1248, -1          ; 2 uses
  %i.iz = mul i32 %.0.copyload.i1249, 37
  %i.ja = and i32 %i.iz, %i.iy                    ; 2 uses
  %i.jb = shl i32 %i.ja, 3
  %i.jc = add i32 %.0.copyload.i1250, %i.jb       ; 2 uses
  %i.jd = zext i32 %i.jc to i64                   ; 2 uses
  %.val1095 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.je = getelementptr inbounds nuw i8, ptr %.val1095, i64 %i.jd
  %.0.copyload.i1251 = load i32, ptr %i.je, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1251) #7, !srcloc !19
  %i.jf = icmp eq i32 %.0.copyload.i1249, %.0.copyload.i1251
  br i1 %i.jf, label %.loopexit1267, label %.preheader1266

.preheader1266:                                   ; preds = %bb.az, %bb.ba
  %.11025 = phi i32 [ %i.jk, %bb.ba ], [ 1, %bb.az ] ; 2 uses
  %.31019 = phi i32 [ %.0.copyload.i1252, %bb.ba ], [ %.0.copyload.i1251, %bb.az ] ; 2 uses
  %.21014 = phi i32 [ %i.ji, %bb.ba ], [ 0, %bb.az ] ; 3 uses
  %.11010 = phi i32 [ %i.jl, %bb.ba ], [ %i.ja, %bb.az ]
  %.11007 = phi i32 [ %i.jn, %bb.ba ], [ %i.jc, %bb.az ] ; 2 uses
  %.not1071 = icmp eq i32 %.31019, -1
  %.not1072 = icmp eq i32 %.21014, 0              ; 2 uses
  br i1 %.not1071, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.preheader1266
  %i.jg = icmp eq i32 %.31019, -2
  %i.jh = select i1 %i.jg, i1 %.not1072, i1 false
  %i.ji = select i1 %i.jh, i32 %.11007, i32 %.21014
  %i.jj = add i32 %.11010, %.11025
  %i.jk = add i32 %.11025, 1
  %i.jl = and i32 %i.jj, %i.iy                    ; 2 uses
  %i.jm = shl i32 %i.jl, 3
  %i.jn = add i32 %i.jm, %.0.copyload.i1250       ; 2 uses
  %i.jo = zext i32 %i.jn to i64                   ; 2 uses
  %.val1094 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jp = getelementptr inbounds nuw i8, ptr %.val1094, i64 %i.jo
  %.0.copyload.i1252 = load i32, ptr %i.jp, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1252) #7, !srcloc !19
  %.not1080 = icmp eq i32 %.0.copyload.i1252, %.0.copyload.i1249
  br i1 %.not1080, label %.loopexit1267, label %.preheader1266

bb.bb:                                            ; preds = %.preheader1266
  %i.jq = select i1 %.not1072, i32 %.11007, i32 %.21014
  br label %bb.bc

bb.bc:                                            ; preds = %.loopexit1268, %bb.bb
  %.4 = phi i32 [ %i.jq, %bb.bb ], [ 0, %.loopexit1268 ]
  %i.jr = zext i32 %i.iu to i64                   ; 5 uses
  %i.js = add nuw nsw i64 %i.jr, 4                ; 3 uses
  %.val1093 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jt = getelementptr inbounds nuw i8, ptr %.val1093, i64 %i.js
  %.0.copyload.i1253 = load i32, ptr %i.jt, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1253) #7, !srcloc !19
  %i.ju = shl i32 %.0.copyload.i1253, 2
  %i.jv = add i32 %i.ju, 4
  %i.jw = add nuw nsw i64 %i.jr, 12               ; 2 uses
  %.val1092 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jx = getelementptr inbounds nuw i8, ptr %.val1092, i64 %i.jw
  %.0.copyload.i1254 = load i32, ptr %i.jx, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1254) #7, !srcloc !19
  %i.jy = mul i32 %.0.copyload.i1254, 3
  %.not1073 = icmp ult i32 %i.jv, %i.jy
  br i1 %.not1073, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.jz = shl i32 %.0.copyload.i1254, 1
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.ka = xor i32 %.0.copyload.i1253, -1
  %i.kb = add i32 %.0.copyload.i1254, %i.ka
  %.val1091 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kc = getelementptr inbounds nuw i8, ptr %.val1091, i64 %i.jr
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %.0.copyload.i1255 = load i32, ptr %i.kd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1255) #7, !srcloc !19
  %i.ke = sub i32 %i.kb, %.0.copyload.i1255
  %i.kf = lshr i32 %.0.copyload.i1254, 3
  %i.kg = icmp ugt i32 %i.ke, %i.kf
  br i1 %i.kg, label %.loopexit, label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.01028 = phi i32 [ %i.jz, %bb.bd ], [ %.0.copyload.i1254, %bb.be ]
  tail call void @w2c_hermes_llvh0x3A0x3ADenseMap0x3Cunsigned0x20long0x2C0x20unsigned0x20int0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cunsigned0x20long0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cunsigned0x20long0x2C0x20unsigned0x20int0x3E0x3E0x3A0x3Agrow0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.iu, i32 noundef %.01028) #7
  %.val1090 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kh = getelementptr inbounds nuw i8, ptr %.val1090, i64 %i.jw
  %.0.copyload.i1256 = load i32, ptr %i.kh, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1256) #7, !srcloc !19
  %.not1074 = icmp eq i32 %.0.copyload.i1256, 0
  br i1 %.not1074, label %.loopexit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.val1089 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ki = getelementptr inbounds nuw i8, ptr %.val1089, i64 %i.aa
  %.0.copyload.i1257 = load i32, ptr %i.ki, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1257) #7, !srcloc !19
  %.val1088 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kj = getelementptr inbounds nuw i8, ptr %.val1088, i64 %i.jr
  %.0.copyload.i1258 = load i32, ptr %i.kj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1258) #7, !srcloc !19
  %i.kk = add i32 %.0.copyload.i1256, -1          ; 2 uses
  %i.kl = mul i32 %.0.copyload.i1257, 37
  %i.km = and i32 %i.kl, %i.kk                    ; 2 uses
  %i.kn = shl i32 %i.km, 3
  %i.ko = add i32 %.0.copyload.i1258, %i.kn       ; 3 uses
  %i.kp = zext i32 %i.ko to i64
  %.val1087 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kq = getelementptr inbounds nuw i8, ptr %.val1087, i64 %i.kp
  %.0.copyload.i1259 = load i32, ptr %i.kq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1259) #7, !srcloc !19
  %i.kr = icmp eq i32 %.0.copyload.i1257, %.0.copyload.i1259
  br i1 %i.kr, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.bg, %bb.bi
  %.11029 = phi i32 [ %i.kw, %bb.bi ], [ 0, %bb.bg ] ; 3 uses
  %.21026 = phi i32 [ %i.lb, %bb.bi ], [ %i.ko, %bb.bg ] ; 2 uses
  %.41020 = phi i32 [ %.0.copyload.i1260, %bb.bi ], [ %.0.copyload.i1259, %bb.bg ] ; 2 uses
  %.31015 = phi i32 [ %i.ky, %bb.bi ], [ 1, %bb.bg ] ; 2 uses
  %.21011 = phi i32 [ %i.kz, %bb.bi ], [ %i.km, %bb.bg ]
  %i.ks = icmp eq i32 %.41020, -1
  %.not1077 = icmp eq i32 %.11029, 0              ; 2 uses
  br i1 %i.ks, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %.preheader
  %i.kt = select i1 %.not1077, i32 %.21026, i32 %.11029
  br label %.loopexit

bb.bi:                                            ; preds = %.preheader
  %i.ku = icmp eq i32 %.41020, -2
  %i.kv = select i1 %i.ku, i1 %.not1077, i1 false
  %i.kw = select i1 %i.kv, i32 %.21026, i32 %.11029
  %i.kx = add i32 %.21011, %.31015
  %i.ky = add i32 %.31015, 1
  %i.kz = and i32 %i.kx, %i.kk                    ; 2 uses
  %i.la = shl i32 %i.kz, 3
  %i.lb = add i32 %i.la, %.0.copyload.i1258       ; 3 uses
  %i.lc = zext i32 %i.lb to i64
  %.val1086 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ld = getelementptr inbounds nuw i8, ptr %.val1086, i64 %i.lc
  %.0.copyload.i1260 = load i32, ptr %i.ld, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1260) #7, !srcloc !19
  %.not1076 = icmp eq i32 %.0.copyload.i1257, %.0.copyload.i1260
  br i1 %.not1076, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %bb.bi, %bb.bf, %bb.bg, %bb.be, %bb.bh
  %.31027 = phi i32 [ %.4, %bb.be ], [ %i.ko, %bb.bg ], [ %i.kt, %bb.bh ], [ 0, %bb.bf ], [ %i.lb, %bb.bi ]
  %.val1085 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.le = getelementptr inbounds nuw i8, ptr %.val1085, i64 %i.js
  %.0.copyload.i1261 = load i32, ptr %i.le, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1261) #7, !srcloc !19
  %i.lf = add i32 %.0.copyload.i1261, 1
  %.val1142 = load ptr, ptr %i.d, align 8, !tbaa !18
end_hunk_3
begin_hunk_4_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AgenerateBytecodeModule0x28hermes0x3A0x3AModule0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3ABytecodeGenerationOptions0x20const0x260x2C0x20hermes0x3A0x3AOptValue0x3Cunsigned0x20int0x3E0x2C0x20hermes0x3A0x3ASourceMapGenerator0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x3E0x3E0x29:bb.a
  %.val51195 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eh = getelementptr inbounds nuw i8, ptr %.val51195, i64 %i.ab
  %.0.copyload.i51257 = load i8, ptr %i.eh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i51257) #7, !srcloc !21
  %.not45418 = icmp eq i8 %.0.copyload.i51257, 0
  br i1 %.not45418, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ei = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef 16) #7 ; 2 uses
  %i.ej = zext i32 %i.ei to i64                   ; 4 uses
  %.val50484 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ek = getelementptr inbounds nuw i8, ptr %.val50484, i64 %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store i32 32716, ptr %i.el, align 1
  %.val50483 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.em = getelementptr inbounds nuw i8, ptr %.val50483, i64 %i.ej
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  store i32 0, ptr %i.en, align 1
  %.val50482 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eo = getelementptr inbounds nuw i8, ptr %.val50482, i64 %i.ej
  store i32 264776, ptr %i.eo, align 1
  %.val50481 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ep = getelementptr inbounds nuw i8, ptr %.val50481, i64 %i.ej
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 12
  store i32 16, ptr %i.eq, align 1
  tail call void @w2c_hermes_hermes0x3A0x3APassManager0x3A0x3AaddPass0x28std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3APass0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3APass0x3E0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.k, i32 noundef %i.ei)
  %i.er = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef 16) #7 ; 2 uses
  %i.es = zext i32 %i.er to i64                   ; 4 uses
  %.val50480 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.et = getelementptr inbounds nuw i8, ptr %.val50480, i64 %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store i32 45033, ptr %i.eu, align 1
  %.val50479 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ev = getelementptr inbounds nuw i8, ptr %.val50479, i64 %i.es
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  store i32 0, ptr %i.ew, align 1
  %.val50478 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ex = getelementptr inbounds nuw i8, ptr %.val50478, i64 %i.es
  store i32 264856, ptr %i.ex, align 1
  %.val50477 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ey = getelementptr inbounds nuw i8, ptr %.val50477, i64 %i.es
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 12
  store i32 15, ptr %i.ez, align 1
  tail call void @w2c_hermes_hermes0x3A0x3APassManager0x3A0x3AaddPass0x28std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3APass0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3APass0x3E0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.k, i32 noundef %i.er)
  %i.fa = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef 16) #7 ; 2 uses
  %i.fb = zext i32 %i.fa to i64                   ; 4 uses
  %.val50476 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fc = getelementptr inbounds nuw i8, ptr %.val50476, i64 %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store i32 33317, ptr %i.fd, align 1
  %.val50475 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fe = getelementptr inbounds nuw i8, ptr %.val50475, i64 %i.fb
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  store i32 0, ptr %i.ff, align 1
  %.val50474 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fg = getelementptr inbounds nuw i8, ptr %.val50474, i64 %i.fb
  store i32 264972, ptr %i.fg, align 1
  %.val50473 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fh = getelementptr inbounds nuw i8, ptr %.val50473, i64 %i.fb
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 12
  store i32 13, ptr %i.fi, align 1
  tail call void @w2c_hermes_hermes0x3A0x3APassManager0x3A0x3AaddPass0x28std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3APass0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3APass0x3E0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.k, i32 noundef %i.fa)
  %i.fj = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef 16) #7 ; 2 uses
  %i.fk = zext i32 %i.fj to i64                   ; 4 uses
  %.val50472 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fl = getelementptr inbounds nuw i8, ptr %.val50472, i64 %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store i32 40789, ptr %i.fm, align 1
  %.val50471 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fn = getelementptr inbounds nuw i8, ptr %.val50471, i64 %i.fk
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  store i32 0, ptr %i.fo, align 1
  %.val50470 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fp = getelementptr inbounds nuw i8, ptr %.val50470, i64 %i.fk
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  store i32 10, ptr %i.fq, align 1
  %.val50469 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fr = getelementptr inbounds nuw i8, ptr %.val50469, i64 %i.fk
  store i32 264992, ptr %i.fr, align 1
  tail call void @w2c_hermes_hermes0x3A0x3APassManager0x3A0x3AaddPass0x28std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3APass0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3APass0x3E0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.k, i32 noundef %i.fj)
  %i.fs = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef 16) #7 ; 2 uses
  %i.ft = zext i32 %i.fs to i64                   ; 4 uses
  %.val50468 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fu = getelementptr inbounds nuw i8, ptr %.val50468, i64 %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  store i32 59236, ptr %i.fv, align 1
  %.val50467 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fw = getelementptr inbounds nuw i8, ptr %.val50467, i64 %i.ft
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  store i32 0, ptr %i.fx, align 1
  %.val50466 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fy = getelementptr inbounds nuw i8, ptr %.val50466, i64 %i.ft
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 12
  store i32 3, ptr %i.fz, align 1
  %.val50465 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ga = getelementptr inbounds nuw i8, ptr %.val50465, i64 %i.ft
  store i32 265012, ptr %i.ga, align 1
  tail call void @w2c_hermes_hermes0x3A0x3APassManager0x3A0x3AaddPass0x28std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3APass0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3APass0x3E0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.k, i32 noundef %i.fs)
  %i.gb = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef 16) #7 ; 2 uses
  %i.gc = zext i32 %i.gb to i64                   ; 4 uses
  %.val50464 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gd = getelementptr inbounds nuw i8, ptr %.val50464, i64 %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store i32 59240, ptr %i.ge, align 1
  %.val50463 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gf = getelementptr inbounds nuw i8, ptr %.val50463, i64 %i.gc
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  store i32 1, ptr %i.gg, align 1
  %.val50462 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gh = getelementptr inbounds nuw i8, ptr %.val50462, i64 %i.gc
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 12
  store i32 3, ptr %i.gi, align 1
  %.val50461 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gj = getelementptr inbounds nuw i8, ptr %.val50461, i64 %i.gc
  store i32 265032, ptr %i.gj, align 1
  tail call void @w2c_hermes_hermes0x3A0x3APassManager0x3A0x3AaddPass0x28std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3APass0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3APass0x3E0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.k, i32 noundef %i.gb)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.gk = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef 16) #7 ; 2 uses
  %i.gl = zext i32 %i.gk to i64                   ; 4 uses
  %.val50460 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gm = getelementptr inbounds nuw i8, ptr %.val50460, i64 %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  store i32 37284, ptr %i.gn, align 1
  %.val50459 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.go = getelementptr inbounds nuw i8, ptr %.val50459, i64 %i.gl
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  store i32 0, ptr %i.gp, align 1
  %.val50458 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gq = getelementptr inbounds nuw i8, ptr %.val50458, i64 %i.gl
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 12
  store i32 19, ptr %i.gr, align 1
  %.val50457 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gs = getelementptr inbounds nuw i8, ptr %.val50457, i64 %i.gl
  store i32 265052, ptr %i.gs, align 1
  tail call void @w2c_hermes_hermes0x3A0x3APassManager0x3A0x3AaddPass0x28std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3APass0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3APass0x3E0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.k, i32 noundef %i.gk)
  %i.gt = load i32, ptr %i.a, align 8, !tbaa !7   ; 3 uses
  %i.gu = add i32 %i.gt, -48                      ; 2 uses
  store i32 %i.gu, ptr %i.a, align 8, !tbaa !7
  %i.gv = zext i32 %i.gu to i64                   ; 2 uses
  %.val51093 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gw = getelementptr inbounds nuw i8, ptr %.val51093, i64 %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store i64 137438953472, ptr %i.gx, align 1
  %i.gy = add i32 %i.gt, -32                      ; 2 uses
  %i.gz = add nuw nsw i64 %i.gv, 4                ; 2 uses
  %.val50456 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ha = getelementptr inbounds nuw i8, ptr %.val50456, i64 %i.gz
  store i32 %i.gy, ptr %i.ha, align 1
  %.val49247 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hb = getelementptr inbounds nuw i8, ptr %.val49247, i64 %i.m
  %.0.copyload.i51258 = load i32, ptr %i.hb, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51258) #7, !srcloc !19
  %.val49246 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hc = getelementptr inbounds nuw i8, ptr %.val49246, i64 %i.l
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %.0.copyload.i51259 = load i32, ptr %i.hd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51259) #7, !srcloc !19
  %i.he = icmp eq i32 %.0.copyload.i51258, %.0.copyload.i51259
  br i1 %i.he, label %bb.z, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.hf = add i32 %1, 40                          ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.hi = load ptr, ptr @w2c_hermes_t4, align 8
  %.fr55206 = freeze ptr %i.hi                    ; 8 uses
  %i.hj = icmp ne ptr %.fr55206, null
  %.not55207 = icmp eq ptr %.fr55206, null
  br label %bb.h

bb.h:                                             ; preds = %.loopexit54802, %bb.g
  %.043625 = phi i32 [ %.0.copyload.i51258, %bb.g ], [ %i.kw, %.loopexit54802 ] ; 2 uses
  %i.hk = zext i32 %.043625 to i64
  %.val49245 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hl = getelementptr inbounds nuw i8, ptr %.val49245, i64 %i.hk
  %.0.copyload.i51260 = load i32, ptr %i.hl, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51260) #7, !srcloc !19
  %i.hm = zext i32 %.0.copyload.i51260 to i64     ; 4 uses
  %.val49244 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hn = getelementptr inbounds nuw i8, ptr %.val49244, i64 %i.hm
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 4
  %.0.copyload.i51261 = load i32, ptr %i.ho, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51261) #7, !srcloc !19
  %.not45419 = icmp ne i32 %.0.copyload.i51260, 0
  %.not45420 = icmp eq i32 %.0.copyload.i51261, 0
  %or.cond = select i1 %.not45419, i1 %.not45420, i1 false
  br i1 %or.cond, label %bb.i, label %bb.s

bb.i:                                             ; preds = %bb.h
  %.val49243 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hp = getelementptr inbounds nuw i8, ptr %.val49243, i64 %i.e
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 44
  %.0.copyload.i51262 = load i32, ptr %i.hq, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51262) #7, !srcloc !19
  %i.hr = icmp eq i32 %.0.copyload.i51262, %i.hf
  br i1 %i.hr, label %.loopexit54802, label %.preheader54801

.preheader54801:                                  ; preds = %bb.i
  br i1 %.not55207, label %.preheader54801.split.us, label %.preheader54801.split, !prof !43

.preheader54801.split.us:                         ; preds = %.preheader54801, %bb.m
  %.043731.us = phi i32 [ %.0.copyload.i51266.us, %bb.m ], [ %.0.copyload.i51262, %.preheader54801 ] ; 2 uses
  %i.hs = zext i32 %.043731.us to i64             ; 2 uses
  %.val49242.us = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ht = getelementptr inbounds nuw i8, ptr %.val49242.us, i64 %i.hs
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 144
  %.0.copyload.i51263.us = load i32, ptr %i.hu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51263.us) #7, !srcloc !19
  %.not45421.us = icmp eq i32 %.0.copyload.i51263.us, 0
  br i1 %.not45421.us, label %bb.j, label %bb.m

bb.j:                                             ; preds = %.preheader54801.split.us
  %.val49241.us = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hv = getelementptr inbounds nuw i8, ptr %.val49241.us, i64 %i.hm
  %.0.copyload.i51264.us = load i32, ptr %i.hv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51264.us) #7, !srcloc !19
  %i.hw = zext i32 %.0.copyload.i51264.us to i64
  %.val49240.us = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hx = getelementptr inbounds nuw i8, ptr %.val49240.us, i64 %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %.0.copyload.i51265.us = load i32, ptr %i.hy, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51265.us) #7, !srcloc !19
  %i.hz = load i32, ptr %i.hg, align 4, !tbaa !25
  %i.ia = icmp ult i32 %.0.copyload.i51265.us, %i.hz
  br i1 %i.ia, label %bb.k, label %.critedge, !prof !26

bb.k:                                             ; preds = %bb.j
  %i.ib = load ptr, ptr %i.hh, align 8, !tbaa !27
  %i.ic = zext i32 %.0.copyload.i51265.us to i64
  %i.id = getelementptr inbounds nuw [24 x i8], ptr %i.ib, i64 %i.ic ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !28 ; 2 uses
  %.not45422.us = icmp eq ptr %i.if, null
  br i1 %.not45422.us, label %.critedge, label %bb.l, !prof !30

bb.l:                                             ; preds = %bb.k
  %i.ig = load ptr, ptr %i.id, align 8, !tbaa !32
  %i.ih = icmp eq ptr %i.ig, null
  br i1 %i.ih, label %func_types_eq.exit.thread.us, label %.critedge

func_types_eq.exit.thread.us:                     ; preds = %bb.l
  %i.ii = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !35
  %i.ik = tail call i32 %i.if(ptr noundef %i.ij, i32 noundef %.0.copyload.i51260, i32 noundef %.043731.us) #7 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %func_types_eq.exit.thread.us, %.preheader54801.split.us
  %.val49239.us = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.il = getelementptr inbounds nuw i8, ptr %.val49239.us, i64 %i.hs
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  %.0.copyload.i51266.us = load i32, ptr %i.im, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51266.us) #7, !srcloc !19
  %.not45423.us = icmp eq i32 %.0.copyload.i51266.us, %i.hf
  br i1 %.not45423.us, label %.loopexit54802, label %.preheader54801.split.us

.preheader54801.split:                            ; preds = %.preheader54801, %bb.r
  %.043731 = phi i32 [ %.0.copyload.i51266, %bb.r ], [ %.0.copyload.i51262, %.preheader54801 ] ; 2 uses
  %i.in = zext i32 %.043731 to i64                ; 2 uses
  %.val49242 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.io = getelementptr inbounds nuw i8, ptr %.val49242, i64 %i.in
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 144
  %.0.copyload.i51263 = load i32, ptr %i.ip, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51263) #7, !srcloc !19
  %.not45421 = icmp eq i32 %.0.copyload.i51263, 0
  br i1 %.not45421, label %bb.n, label %bb.r

bb.n:                                             ; preds = %.preheader54801.split
  %.val49241 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iq = getelementptr inbounds nuw i8, ptr %.val49241, i64 %i.hm
  %.0.copyload.i51264 = load i32, ptr %i.iq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51264) #7, !srcloc !19
  %i.ir = zext i32 %.0.copyload.i51264 to i64
  %.val49240 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.is = getelementptr inbounds nuw i8, ptr %.val49240, i64 %i.ir
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %.0.copyload.i51265 = load i32, ptr %i.it, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51265) #7, !srcloc !19
  %i.iu = load i32, ptr %i.hg, align 4, !tbaa !25
  %i.iv = icmp ult i32 %.0.copyload.i51265, %i.iu
  br i1 %i.iv, label %bb.o, label %.critedge, !prof !26

bb.o:                                             ; preds = %bb.n
  %i.iw = load ptr, ptr %i.hh, align 8, !tbaa !27
  %i.ix = zext i32 %.0.copyload.i51265 to i64
  %i.iy = getelementptr inbounds nuw [24 x i8], ptr %i.iw, i64 %i.ix ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !28 ; 2 uses
  %.not45422 = icmp eq ptr %i.ja, null
  br i1 %.not45422, label %.critedge, label %bb.p, !prof !30

bb.p:                                             ; preds = %bb.o
  %i.jb = load ptr, ptr %i.iy, align 8, !tbaa !32 ; 4 uses
  %i.jc = icmp eq ptr %.fr55206, %i.jb
  br i1 %i.jc, label %func_types_eq.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not55208 = icmp eq ptr %i.jb, null
  br i1 %.not55208, label %.critedge, label %func_types_eq.exit, !prof !43

func_types_eq.exit:                               ; preds = %bb.q
  %i.jd = load i128, ptr %.fr55206, align 1
  %i.je = load i128, ptr %i.jb, align 1
  %i.jf = xor i128 %i.jd, %i.je
  %i.jg = getelementptr i8, ptr %.fr55206, i64 16
  %i.jh = getelementptr i8, ptr %i.jb, i64 16
  %i.ji = load i128, ptr %i.jg, align 1
  %i.jj = load i128, ptr %i.jh, align 1
  %i.jk = xor i128 %i.ji, %i.jj
  %i.jl = or i128 %i.jf, %i.jk
  %i.jm = icmp ne i128 %i.jl, 0
  %i.jn = zext i1 %i.jm to i32
  %.not.i = icmp eq i32 %i.jn, 0
  br i1 %.not.i, label %func_types_eq.exit.thread, label %.critedge, !prof !34

.critedge:                                        ; preds = %func_types_eq.exit, %bb.n, %bb.o, %bb.q, %bb.l, %bb.j, %bb.k
  tail call void @wasm_rt_trap(i32 noundef 6) #8
  unreachable

func_types_eq.exit.thread:                        ; preds = %bb.p, %func_types_eq.exit
  %i.jo = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !35
  %i.jq = tail call i32 %i.ja(ptr noundef %i.jp, i32 noundef %.0.copyload.i51260, i32 noundef %.043731) #7 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %func_types_eq.exit.thread, %.preheader54801.split
  %.val49239 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jr = getelementptr inbounds nuw i8, ptr %.val49239, i64 %i.in
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 4
  %.0.copyload.i51266 = load i32, ptr %i.js, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51266) #7, !srcloc !19
  %.not45423 = icmp eq i32 %.0.copyload.i51266, %i.hf
  br i1 %.not45423, label %.loopexit54802, label %.preheader54801.split

bb.s:                                             ; preds = %bb.h
  %i.jt = icmp ne i32 %.0.copyload.i51261, 1
  %.not4542445425 = icmp eq i32 %.0.copyload.i51260, 0
  %.not45424 = or i1 %.not4542445425, %i.jt
  br i1 %.not45424, label %.loopexit54802, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val49238 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ju = getelementptr inbounds nuw i8, ptr %.val49238, i64 %i.hm
  %.0.copyload.i51267 = load i32, ptr %i.ju, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51267) #7, !srcloc !19
  %i.jv = zext i32 %.0.copyload.i51267 to i64
  %.val49237 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jw = getelementptr inbounds nuw i8, ptr %.val49237, i64 %i.jv
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %.0.copyload.i51268 = load i32, ptr %i.jx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51268) #7, !srcloc !19
  %i.jy = load i32, ptr %i.hg, align 4, !tbaa !25
  %i.jz = icmp ult i32 %.0.copyload.i51268, %i.jy
  br i1 %i.jz, label %bb.u, label %.critedge46705, !prof !26

bb.u:                                             ; preds = %bb.t
  %i.ka = load ptr, ptr %i.hh, align 8, !tbaa !27
  %i.kb = zext i32 %.0.copyload.i51268 to i64
  %i.kc = getelementptr inbounds nuw [24 x i8], ptr %i.ka, i64 %i.kb ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !28 ; 2 uses
  %.not45426 = icmp eq ptr %i.ke, null
  br i1 %.not45426, label %.critedge46705, label %bb.v, !prof !30

bb.v:                                             ; preds = %bb.u
  %i.kf = load ptr, ptr %i.kc, align 8, !tbaa !32 ; 4 uses
  %i.kg = icmp eq ptr %.fr55206, %i.kf
  br i1 %i.kg, label %func_types_eq.exit51272.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.kh = icmp ne ptr %i.kf, null
  %or.cond.i51269 = and i1 %i.hj, %i.kh
  br i1 %or.cond.i51269, label %func_types_eq.exit51272, label %.critedge46705, !prof !33

func_types_eq.exit51272:                          ; preds = %bb.w
  %i.ki = load i128, ptr %.fr55206, align 1
  %i.kj = load i128, ptr %i.kf, align 1
  %i.kk = xor i128 %i.ki, %i.kj
  %i.kl = getelementptr i8, ptr %.fr55206, i64 16
  %i.km = getelementptr i8, ptr %i.kf, i64 16
  %i.kn = load i128, ptr %i.kl, align 1
  %i.ko = load i128, ptr %i.km, align 1
  %i.kp = xor i128 %i.kn, %i.ko
  %i.kq = or i128 %i.kk, %i.kp
  %i.kr = icmp ne i128 %i.kq, 0
  %i.ks = zext i1 %i.kr to i32
  %.not.i51271 = icmp eq i32 %i.ks, 0
  br i1 %.not.i51271, label %func_types_eq.exit51272.thread, label %.critedge46705, !prof !34

.critedge46705:                                   ; preds = %bb.w, %bb.u, %bb.t, %func_types_eq.exit51272
  tail call void @wasm_rt_trap(i32 noundef 6) #8
  unreachable

func_types_eq.exit51272.thread:                   ; preds = %bb.v, %func_types_eq.exit51272
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !35
  %i.kv = tail call i32 %i.ke(ptr noundef %i.ku, i32 noundef %.0.copyload.i51260, i32 noundef %1) #7 ; 0 uses
  br label %.loopexit54802

.loopexit54802:                                   ; preds = %bb.r, %bb.m, %bb.s, %bb.i, %func_types_eq.exit51272.thread
  %i.kw = add i32 %.043625, 4                     ; 2 uses
  %.not45427 = icmp eq i32 %i.kw, %.0.copyload.i51259
  br i1 %.not45427, label %bb.x, label %bb.h

bb.x:                                             ; preds = %.loopexit54802
  %.val49236 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kx = getelementptr inbounds nuw i8, ptr %.val49236, i64 %i.gz
  %.0.copyload.i51273 = load i32, ptr %i.kx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51273) #7, !srcloc !19
  %i.ky = icmp eq i32 %.0.copyload.i51273, %i.gy
  br i1 %i.ky, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i51273) #7
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.f, %bb.y
  store i32 %i.gt, ptr %i.a, align 8, !tbaa !7
  %.val50673 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kz = getelementptr inbounds nuw i8, ptr %.val50673, i64 %i.f
  store i8 1, ptr %i.kz, align 1
  %.val51194 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.la = getelementptr inbounds nuw i8, ptr %.val51194, i64 %i.aa
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 9
  %.0.copyload.i51274 = load i8, ptr %i.lb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i51274) #7, !srcloc !21
  %.not45428 = icmp eq i8 %.0.copyload.i51274, 0
  br i1 %.not45428, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.lc = tail call i32 @w2c_hermes_llvh0x3A0x3Aerrs0x280x29(ptr noundef nonnull %0) #7 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  tail call void @w2c_hermes_hermes0x3A0x3APassManager0x3A0x3A0x7EPassManager0x280x29(ptr noundef nonnull %0, i32 noundef %i.k)
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge55842, %bb.ab
  %.pre-phi55844 = phi i64 [ %.pre55843, %._crit_edge55842 ], [ %i.aa, %bb.ab ] ; 10 uses
  %.val49235 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ld = getelementptr inbounds nuw i8, ptr %.val49235, i64 %.pre-phi55844
  %.0.copyload.i51275 = load i32, ptr %i.ld, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i51275) #7, !srcloc !19
  %i.le = icmp eq i32 %.0.copyload.i51275, 6
  br i1 %i.le, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.lf = tail call i32 @w2c_hermes_llvh0x3A0x3Aouts0x280x29(ptr noundef nonnull %0) #7
  tail call void @w2c_hermes_hermes0x3A0x3AModule0x3A0x3Adump0x28llvh0x3A0x3Araw_ostream0x260x290x20const(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.lf)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.lg = add i32 %i.b, -512
  %i.lh = zext i32 %i.lg to i64                   ; 2 uses
  %.val51092 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.li = getelementptr inbounds nuw i8, ptr %.val51092, i64 %i.lh
  store i64 0, ptr %i.li, align 1
  %i.lj = add i32 %i.b, -520
  %i.lk = zext i32 %i.lj to i64                   ; 2 uses
  %.val51091 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ll = getelementptr inbounds nuw i8, ptr %.val51091, i64 %i.lk
  store i64 0, ptr %i.ll, align 1
  %i.lm = add i32 %i.b, -460
  %i.ln = zext i32 %i.lm to i64                   ; 2 uses
  %.val51090 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lo = getelementptr inbounds nuw i8, ptr %.val51090, i64 %i.ln
  store i64 0, ptr %i.lo, align 1
  %i.lp = add i32 %i.b, -452
  %i.lq = zext i32 %i.lp to i64                   ; 2 uses
  %.val51089 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lr = getelementptr inbounds nuw i8, ptr %.val51089, i64 %i.lq
  store i64 0, ptr %i.lr, align 1
  %i.ls = add i32 %i.b, -480
  %i.lt = zext i32 %i.ls to i64
  %.val50455 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lu = getelementptr inbounds nuw i8, ptr %.val50455, i64 %i.lt
  store i32 0, ptr %i.lu, align 1
  %i.lv = add i32 %i.b, -488
  %i.lw = zext i32 %i.lv to i64
  %.val51088 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lx = getelementptr inbounds nuw i8, ptr %.val51088, i64 %i.lw
  store i64 0, ptr %i.lx, align 1
  %i.ly = add i32 %i.b, -496
  %i.lz = zext i32 %i.ly to i64
  %.val51087 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ma = getelementptr inbounds nuw i8, ptr %.val51087, i64 %i.lz
  store i64 0, ptr %i.ma, align 1
  %i.mb = add i32 %i.b, -504
  %i.mc = zext i32 %i.mb to i64
  %.val51086 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.md = getelementptr inbounds nuw i8, ptr %.val51086, i64 %i.mc
  store i64 0, ptr %i.md, align 1
  %i.me = add i32 %i.b, -528
  %i.mf = zext i32 %i.me to i64
  %.val51085 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mg = getelementptr inbounds nuw i8, ptr %.val51085, i64 %i.mf
  store i64 0, ptr %i.mg, align 1
  %i.mh = add i32 %i.b, -468
  %i.mi = zext i32 %i.mh to i64
end_hunk_4
begin_hunk_5_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AgenerateBytecodeModule0x28hermes0x3A0x3AModule0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3ABytecodeGenerationOptions0x20const0x260x2C0x20hermes0x3A0x3AOptValue0x3Cunsigned0x20int0x3E0x2C0x20hermes0x3A0x3ASourceMapGenerator0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x3E0x3E0x29:bb.a
  %.0.copyload.i54131 = load i32, ptr %i.urv, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54131) #7, !srcloc !19
  %.val46831 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.urw = getelementptr inbounds nuw i8, ptr %.val46831, i64 %i.urn
  %.0.copyload.i54132 = load i32, ptr %i.urw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54132) #7, !srcloc !19
  %i.urx = icmp eq i32 %.0.copyload.i54131, %.0.copyload.i54132
  br i1 %i.urx, label %bb.byd, label %bb.byc

bb.byc:                                           ; preds = %bb.byb
  %reass.sub55215 = sub i32 %.0.copyload.i54132, %.0.copyload.i54131
  %i.ury = add i32 %reass.sub55215, 3
  %i.urz = and i32 %i.ury, -4
  %i.usa = add i32 %i.urz, %.0.copyload.i54131
  %.val49259 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.usb = getelementptr inbounds nuw i8, ptr %.val49259, i64 %i.urp
  store i32 %i.usa, ptr %i.usb, align 1
  br label %bb.byd

bb.byd:                                           ; preds = %bb.byb, %bb.bya, %bb.byc
  %.val46830 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.usc = getelementptr inbounds nuw i8, ptr %.val46830, i64 %i.upj
  %i.usd = getelementptr inbounds nuw i8, ptr %i.usc, i64 260
  %.0.copyload.i54133 = load i32, ptr %i.usd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54133) #7, !srcloc !19
  %.not46697 = icmp eq i32 %.0.copyload.i54133, 0
  br i1 %.not46697, label %bb.byf, label %bb.bye

bb.bye:                                           ; preds = %bb.byd
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i54133) #7
  br label %bb.byf

bb.byf:                                           ; preds = %bb.bye, %bb.byd
  tail call void @w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AStringLiteralIDMapping0x3A0x3A0x7EStringLiteralIDMapping0x280x29(ptr noundef nonnull %0, i32 noundef %i.dup)
  %.val46829 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.use = getelementptr inbounds nuw i8, ptr %.val46829, i64 %i.upj
  %i.usf = getelementptr inbounds nuw i8, ptr %i.use, i64 176
  %.0.copyload.i54134 = load i32, ptr %i.usf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54134) #7, !srcloc !19
  %.not46698 = icmp eq i32 %.0.copyload.i54134, 0
  br i1 %.not46698, label %.loopexit, label %bb.byg

bb.byg:                                           ; preds = %bb.byf
  %.val46828 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.usg = getelementptr inbounds nuw i8, ptr %.val46828, i64 %i.upj
  %i.ush = getelementptr inbounds nuw i8, ptr %i.usg, i64 164
  %.0.copyload.i54135 = load i32, ptr %i.ush, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54135) #7, !srcloc !19
  %i.usi = shl i32 %.0.copyload.i54134, 3
  %i.usj = add i32 %.0.copyload.i54135, %i.usi
  br label %bb.byh

bb.byh:                                           ; preds = %bb.byk, %bb.byg
  %.743996 = phi i32 [ %.0.copyload.i54135, %bb.byg ], [ %i.usp, %bb.byk ] ; 2 uses
  %i.usk = zext i32 %.743996 to i64               ; 2 uses
  %.val46827 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.usl = getelementptr inbounds nuw i8, ptr %.val46827, i64 %i.usk
  %.0.copyload.i54136 = load i32, ptr %i.usl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54136) #7, !srcloc !19
  switch i32 %.0.copyload.i54136, label %bb.byi [
    i32 -8, label %bb.byk
    i32 -4, label %bb.byk
  ]

bb.byi:                                           ; preds = %bb.byh
  %i.usm = add nuw nsw i64 %i.usk, 4              ; 2 uses
  %.val46826 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.usn = getelementptr inbounds nuw i8, ptr %.val46826, i64 %i.usm
  %.0.copyload.i54137 = load i32, ptr %i.usn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54137) #7, !srcloc !19
  %.val49258 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.uso = getelementptr inbounds nuw i8, ptr %.val49258, i64 %i.usm
  store i32 0, ptr %i.uso, align 1
  %.not46699 = icmp eq i32 %.0.copyload.i54137, 0
  br i1 %.not46699, label %bb.byk, label %bb.byj

bb.byj:                                           ; preds = %bb.byi
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABytecodeFunctionGenerator0x3E0x3A0x3Aoperator0x280x290x5Babi0x3Av150070x5D0x28hermes0x3A0x3Ahbc0x3A0x3ABytecodeFunctionGenerator0x2A0x290x20const(ptr noundef nonnull %0, i32 noundef %.0.copyload.i54137) #7
  br label %bb.byk

bb.byk:                                           ; preds = %bb.byi, %bb.byh, %bb.byh, %bb.byj
  %i.usp = add i32 %.743996, 8                    ; 2 uses
  %.not46700 = icmp eq i32 %i.usp, %i.usj
  br i1 %.not46700, label %.loopexit, label %bb.byh

.loopexit:                                        ; preds = %bb.byk, %bb.byf
  %.val46825 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.usq = getelementptr inbounds nuw i8, ptr %.val46825, i64 %i.upj
  %i.usr = getelementptr inbounds nuw i8, ptr %i.usq, i64 164
  %.0.copyload.i54138 = load i32, ptr %i.usr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54138) #7, !srcloc !19
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i54138) #7
  %.val46824 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.uss = getelementptr inbounds nuw i8, ptr %.val46824, i64 %i.upj
  %i.ust = getelementptr inbounds nuw i8, ptr %i.uss, i64 148
  %.0.copyload.i54139 = load i32, ptr %i.ust, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54139) #7, !srcloc !19
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i54139) #7
  %.val46823 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.usu = getelementptr inbounds nuw i8, ptr %.val46823, i64 %i.upj
  %i.usv = getelementptr inbounds nuw i8, ptr %i.usu, i64 136
  %.0.copyload.i54140 = load i32, ptr %i.usv, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54140) #7, !srcloc !19
  %.not46701 = icmp eq i32 %.0.copyload.i54140, 0
  br i1 %.not46701, label %bb.bym, label %bb.byl

bb.byl:                                           ; preds = %.loopexit
  %.val49257 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.usw = getelementptr inbounds nuw i8, ptr %.val49257, i64 %i.upj
  %i.usx = getelementptr inbounds nuw i8, ptr %i.usw, i64 140
  store i32 %.0.copyload.i54140, ptr %i.usx, align 1
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i54140) #7
  br label %bb.bym

bb.bym:                                           ; preds = %bb.byl, %.loopexit
  %.val46822 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.usy = getelementptr inbounds nuw i8, ptr %.val46822, i64 %i.upj
  %i.usz = getelementptr inbounds nuw i8, ptr %i.usy, i64 120
  %.0.copyload.i54141 = load i32, ptr %i.usz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54141) #7, !srcloc !19
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i54141) #7
  %.val46821 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.uta = getelementptr inbounds nuw i8, ptr %.val46821, i64 %i.upj
  %i.utb = getelementptr inbounds nuw i8, ptr %i.uta, i64 76
  %.0.copyload.i54142 = load i32, ptr %i.utb, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54142) #7, !srcloc !19
  %.not46702 = icmp eq i32 %.0.copyload.i54142, %i.mz
  br i1 %.not46702, label %bb.byo, label %bb.byn

bb.byn:                                           ; preds = %bb.bym
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i54142) #7
  br label %bb.byo

bb.byo:                                           ; preds = %bb.byn, %bb.bym
  %.val46820 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.utc = getelementptr inbounds nuw i8, ptr %.val46820, i64 %i.upj
  %i.utd = getelementptr inbounds nuw i8, ptr %i.utc, i64 60
  %.0.copyload.i54143 = load i32, ptr %i.utd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54143) #7, !srcloc !19
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i54143) #7
  %.val46819 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ute = getelementptr inbounds nuw i8, ptr %.val46819, i64 %i.upj
  %i.utf = getelementptr inbounds nuw i8, ptr %i.ute, i64 16
  %.0.copyload.i54144 = load i32, ptr %i.utf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54144) #7, !srcloc !19
  %.not46703 = icmp eq i32 %.0.copyload.i54144, %i.mx
  br i1 %.not46703, label %bb.byq, label %bb.byp

bb.byp:                                           ; preds = %bb.byo
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i54144) #7
  br label %bb.byq

bb.byq:                                           ; preds = %bb.byp, %bb.byo
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.utg = getelementptr inbounds nuw i8, ptr %.val, i64 %i.upj
  %.0.copyload.i54145 = load i32, ptr %i.utg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i54145) #7, !srcloc !19
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i54145) #7
  store i32 %i.b, ptr %i.a, align 8, !tbaa !7
  ret i32 %.4743176

.loopexit54664:                                   ; preds = %bb.cr, %bb.mm, %bb.ns, %bb.nl, %bb.ne, %bb.os, %bb.xh, %bb.xa, %bb.wd, %bb.vi, %bb.vb, %bb.ue, %bb.tl, %bb.so, %bb.acv, %bb.acf, %bb.abv, %bb.ol, %bb.mi
  tail call void @w2c_hermes_abort(ptr noundef %0) #7
  tail call void @wasm_rt_trap(i32 noundef 5) #8
  unreachable

.loopexit54653:                                   ; preds = %bb.ct, %bb.em, %bb.et, %bb.fg, %bb.hg, %bb.hn, %bb.hs, %bb.hx, %bb.id, %bb.ks, %bb.kj, %bb.mb, %bb.ma, %bb.mo, %bb.ng, %bb.nn, %bb.nu, %bb.ou, %bb.pk, %bb.pj, %bb.ri, %bb.tn, %bb.vd, %bb.vk, %bb.xc, %bb.xj, %bb.acx, %bb.ach, %bb.abx, %bb.abh, %bb.adf, %bb.qx, %bb.qq, %bb.pf, %bb.lw
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3A_0x5Fthrow_out_of_range0x5Babi0x3Av150070x5D0x28char0x20const0x2A0x29(ptr noundef %0) #7
  tail call void @wasm_rt_trap(i32 noundef 5) #8
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3APassManager0x3A0x3A0x7EPassManager0x280x29(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 12 uses
  %i.b = zext i32 %1 to i64                       ; 2 uses
  %i.c = add nuw nsw i64 %i.b, 4                  ; 2 uses
  %.val74 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %.val74, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %.not = icmp eq i32 %.0.copyload.i, 0
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add nuw nsw i64 %i.b, 8                  ; 2 uses
  %.val73 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val73, i64 %i.e
  %.0.copyload.i77 = load i32, ptr %i.f, align 1  ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i77) #7, !srcloc !19
  %.not66 = icmp eq i32 %.0.copyload.i77, %.0.copyload.i
  br i1 %.not66, label %bb.l, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.i = load ptr, ptr @w2c_hermes_t3, align 8
  %.fr83 = freeze ptr %i.i                        ; 4 uses
  %.not84 = icmp eq ptr %.fr83, null
  br i1 %.not84, label %.preheader.split.us, label %.preheader.split, !prof !43

.preheader.split.us:                              ; preds = %.preheader, %bb.f
  %.0.us = phi i32 [ %i.j, %bb.f ], [ %.0.copyload.i77, %.preheader ]
  %i.j = add i32 %.0.us, -4                       ; 3 uses
  %i.k = zext i32 %i.j to i64                     ; 2 uses
  %.val72.us = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %.val72.us, i64 %i.k
  %.0.copyload.i78.us = load i32, ptr %i.l, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i78.us) #7, !srcloc !19
  %.val76.us = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %.val76.us, i64 %i.k
  store i32 0, ptr %i.m, align 1
  %.not67.us = icmp eq i32 %.0.copyload.i78.us, 0
  br i1 %.not67.us, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.preheader.split.us
  %i.n = zext i32 %.0.copyload.i78.us to i64
  %.val71.us = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %.val71.us, i64 %i.n
  %.0.copyload.i79.us = load i32, ptr %i.o, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i79.us) #7, !srcloc !19
  %i.p = zext i32 %.0.copyload.i79.us to i64
  %.val70.us = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %.val70.us, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %.0.copyload.i80.us = load i32, ptr %i.r, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i80.us) #7, !srcloc !19
  %i.s = load i32, ptr %i.g, align 4, !tbaa !25
  %i.t = icmp ult i32 %.0.copyload.i80.us, %i.s
  br i1 %i.t, label %bb.d, label %.critedge, !prof !26

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.v = zext i32 %.0.copyload.i80.us to i64
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.v ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !28   ; 2 uses
  %.not68.us = icmp eq ptr %i.y, null
  br i1 %.not68.us, label %.critedge, label %bb.e, !prof !30

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !32
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %func_types_eq.exit.thread.us, label %.critedge

func_types_eq.exit.thread.us:                     ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !35
  tail call void %i.y(ptr noundef %i.ac, i32 noundef %.0.copyload.i78.us) #7
  br label %bb.f

bb.f:                                             ; preds = %func_types_eq.exit.thread.us, %.preheader.split.us
  %.not69.us = icmp eq i32 %i.j, %.0.copyload.i
  br i1 %.not69.us, label %.split.us, label %.preheader.split.us

.preheader.split:                                 ; preds = %.preheader, %bb.k
  %.0 = phi i32 [ %i.ad, %bb.k ], [ %.0.copyload.i77, %.preheader ]
  %i.ad = add i32 %.0, -4                         ; 3 uses
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %.val72 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %.val72, i64 %i.ae
  %.0.copyload.i78 = load i32, ptr %i.af, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i78) #7, !srcloc !19
  %.val76 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %.val76, i64 %i.ae
  store i32 0, ptr %i.ag, align 1
  %.not67 = icmp eq i32 %.0.copyload.i78, 0
  br i1 %.not67, label %bb.k, label %bb.g

bb.g:                                             ; preds = %.preheader.split
  %i.ah = zext i32 %.0.copyload.i78 to i64
  %.val71 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %.val71, i64 %i.ah
  %.0.copyload.i79 = load i32, ptr %i.ai, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i79) #7, !srcloc !19
  %i.aj = zext i32 %.0.copyload.i79 to i64
  %.val70 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ak = getelementptr inbounds nuw i8, ptr %.val70, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %.0.copyload.i80 = load i32, ptr %i.al, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i80) #7, !srcloc !19
  %i.am = load i32, ptr %i.g, align 4, !tbaa !25
  %i.an = icmp ult i32 %.0.copyload.i80, %i.am
  br i1 %i.an, label %bb.h, label %.critedge, !prof !26

bb.h:                                             ; preds = %bb.g
  %i.ao = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.ap = zext i32 %.0.copyload.i80 to i64
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.ap ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !28 ; 2 uses
  %.not68 = icmp eq ptr %i.as, null
  br i1 %.not68, label %.critedge, label %bb.i, !prof !30

bb.i:                                             ; preds = %bb.h
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !32 ; 4 uses
  %i.au = icmp eq ptr %.fr83, %i.at
  br i1 %i.au, label %func_types_eq.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not85 = icmp eq ptr %i.at, null
  br i1 %.not85, label %.critedge, label %func_types_eq.exit, !prof !43

func_types_eq.exit:                               ; preds = %bb.j
  %i.av = load i128, ptr %.fr83, align 1
  %i.aw = load i128, ptr %i.at, align 1
  %i.ax = xor i128 %i.av, %i.aw
  %i.ay = getelementptr i8, ptr %.fr83, i64 16
  %i.az = getelementptr i8, ptr %i.at, i64 16
  %i.ba = load i128, ptr %i.ay, align 1
  %i.bb = load i128, ptr %i.az, align 1
  %i.bc = xor i128 %i.ba, %i.bb
  %i.bd = or i128 %i.ax, %i.bc
  %i.be = icmp ne i128 %i.bd, 0
  %i.bf = zext i1 %i.be to i32
  %.not.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i, label %func_types_eq.exit.thread, label %.critedge, !prof !34

.critedge:                                        ; preds = %func_types_eq.exit, %bb.g, %bb.h, %bb.j, %bb.e, %bb.c, %bb.d
  tail call void @wasm_rt_trap(i32 noundef 6) #8
  unreachable

func_types_eq.exit.thread:                        ; preds = %bb.i, %func_types_eq.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !35
  tail call void %i.as(ptr noundef %i.bh, i32 noundef %.0.copyload.i78) #7
  br label %bb.k

bb.k:                                             ; preds = %func_types_eq.exit.thread, %.preheader.split
  %.not69 = icmp eq i32 %i.ad, %.0.copyload.i
  br i1 %.not69, label %.split.us, label %.preheader.split

.split.us:                                        ; preds = %bb.k, %bb.f
  %.val = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %.val, i64 %i.c
  %.0.copyload.i81 = load i32, ptr %i.bi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i81) #7, !srcloc !19
  br label %bb.l

bb.l:                                             ; preds = %.split.us, %bb.b
  %.060 = phi i32 [ %.0.copyload.i81, %.split.us ], [ %.0.copyload.i, %bb.b ]
  %.val75 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bj = getelementptr inbounds nuw i8, ptr %.val75, i64 %i.e
  store i32 %.0.copyload.i, ptr %i.bj, align 1
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.060) #7
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.a
  ret void
}

declare i32 @w2c_hermes_llvh0x3A0x3Aouts0x280x29(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3AModule0x3A0x3Adump0x28llvh0x3A0x3Araw_ostream0x260x290x20const(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 9 uses
  %i.c = add i32 %i.b, -80                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 20 uses
  %i.e = zext i32 %1 to i64
  %.val129 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val129, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %.0.copyload.i = load i32, ptr %i.g, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %i.h = zext i32 %i.c to i64                     ; 14 uses
  %.val140 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %.val140, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i32 0, ptr %i.j, align 1
  %i.k = add nuw nsw i64 %i.h, 12                 ; 2 uses
  %.val139 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %.val139, i64 %i.k
  store i32 263264, ptr %i.l, align 1
  %i.m = zext i32 %.0.copyload.i to i64
  %.val128 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %.val128, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %.0.copyload.i145 = load i32, ptr %i.o, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i145) #7, !srcloc !19
  %i.p = add i32 %i.b, -44                        ; 2 uses
  %i.q = zext i32 %i.p to i64
  %.val144 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %.val144, i64 %i.q
  store i64 0, ptr %i.r, align 1
  %i.s = add i32 %i.b, -28                        ; 2 uses
  %i.t = zext i32 %i.s to i64
  %.val143 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %.val143, i64 %i.t
  store i64 0, ptr %i.u, align 1
  %.val138 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %.val138, i64 %i.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 44
  store i32 0, ptr %i.w, align 1
  %i.x = add i32 %i.b, -12                        ; 2 uses
  %i.y = zext i32 %i.x to i64
  %.val142 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %.val142, i64 %i.y
  store i64 0, ptr %i.z, align 1
  %.val137 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %.val137, i64 %i.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 60
  store i32 0, ptr %i.ab, align 1
  %.val136 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %.val136, i64 %i.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 76
  store i32 0, ptr %i.ad, align 1
  %.val141 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %.val141, i64 %i.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 28
  store i8 0, ptr %i.af, align 1
  %.val135 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %.val135, i64 %i.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store i32 %2, ptr %i.ah, align 1
  %.val134 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %.val134, i64 %i.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 20
  store i32 %.0.copyload.i145, ptr %i.aj, align 1
  %.val133 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ak = getelementptr inbounds nuw i8, ptr %.val133, i64 %i.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store i32 %i.p, ptr %i.al, align 1
  %.val132 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %.val132, i64 %i.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  store i32 %i.s, ptr %i.an, align 1
  %.val131 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %.val131, i64 %i.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  store i32 %i.x, ptr %i.ap, align 1
  %i.aq = add i32 %i.b, -68
  tail call void @w2c_hermes_hermes0x3A0x3AIRVisitor0x3Chermes0x3A0x3AIRPrinter0x2C0x20void0x3E0x3A0x3Avisit0x28hermes0x3A0x3AValue0x20const0x260x29(ptr noundef %0, i32 noundef %i.aq, i32 noundef %1)
  %.val130 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %.val130, i64 %i.k
  store i32 263264, ptr %i.ar, align 1
  %i.as = add i32 %i.b, -16
  %.val127 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.at = getelementptr inbounds nuw i8, ptr %.val127, i64 %i.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 68
  %.0.copyload.i146 = load i32, ptr %i.au, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i146) #7, !srcloc !19
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3A_0x5Ftree0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fvalue_type0x3Chermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fmap_value_compare0x3Chermes0x3A0x3AValue0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fvalue_type0x3Chermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aless0x3Chermes0x3A0x3AValue0x2A0x3E0x2C0x20true0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fvalue_type0x3Chermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x3E0x3E0x3E0x3A0x3Adestroy0x28std0x3A0x3A_0x5F20x3A0x3A_0x5Ftree_node0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fvalue_type0x3Chermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x3E0x2C0x20void0x2A0x3E0x2A0x29(ptr noundef %0, i32 noundef %i.as, i32 noundef %.0.copyload.i146) #7
  %i.av = add i32 %i.b, -32
  %.val126 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aw = getelementptr inbounds nuw i8, ptr %.val126, i64 %i.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 52
  %.0.copyload.i147 = load i32, ptr %i.ax, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i147) #7, !srcloc !19
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3A_0x5Ftree0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fvalue_type0x3Chermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fmap_value_compare0x3Chermes0x3A0x3AValue0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fvalue_type0x3Chermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aless0x3Chermes0x3A0x3AValue0x2A0x3E0x2C0x20true0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fvalue_type0x3Chermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x3E0x3E0x3E0x3A0x3Adestroy0x28std0x3A0x3A_0x5F20x3A0x3A_0x5Ftree_node0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fvalue_type0x3Chermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x3E0x2C0x20void0x2A0x3E0x2A0x29(ptr noundef %0, i32 noundef %i.av, i32 noundef %.0.copyload.i147) #7
  %i.ay = add i32 %i.b, -48
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %.val, i64 %i.h
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 36
  %.0.copyload.i148 = load i32, ptr %i.ba, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i148) #7, !srcloc !19
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3A_0x5Ftree0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fvalue_type0x3Chermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fmap_value_compare0x3Chermes0x3A0x3AValue0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fvalue_type0x3Chermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aless0x3Chermes0x3A0x3AValue0x2A0x3E0x2C0x20true0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fvalue_type0x3Chermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x3E0x3E0x3E0x3A0x3Adestroy0x28std0x3A0x3A_0x5F20x3A0x3A_0x5Ftree_node0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fvalue_type0x3Chermes0x3A0x3AValue0x2A0x2C0x20unsigned0x20int0x3E0x2C0x20void0x2A0x3E0x2A0x29(ptr noundef %0, i32 noundef %i.ay, i32 noundef %.0.copyload.i148) #7
  store i32 %i.b, ptr %i.a, align 8, !tbaa !7
  ret void
}

declare void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Apair0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fhash_iterator0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fhash_node0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fhash_value_type0x3Chermes0x3A0x3AFunction0x2A0x2C0x20llvh0x3A0x3ASmallPtrSet0x3Chermes0x3A0x3AFunction0x2A0x2C0x202u0x3E0x3E0x2C0x20void0x2A0x3E0x2A0x3E0x2C0x20bool0x3E0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fhash_table0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fhash_value_type0x3Chermes0x3A0x3AFunction0x2A0x2C0x20llvh0x3A0x3ASmallPtrSet0x3Chermes0x3A0x3AFunction0x2A0x2C0x202u0x3E0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Funordered_map_hasher0x3Chermes0x3A0x3AFunction0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fhash_value_type0x3Chermes0x3A0x3AFunction0x2A0x2C0x20llvh0x3A0x3ASmallPtrSet0x3Chermes0x3A0x3AFunction0x2A0x2C0x202u0x3E0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Ahash0x3Chermes0x3A0x3AFunction0x2A0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aequal_to0x3Chermes0x3A0x3AFunction0x2A0x3E0x2C0x20true0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Funordered_map_equal0x3Chermes0x3A0x3AFunction0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fhash_value_type0x3Chermes0x3A0x3AFunction0x2A0x2C0x20llvh0x3A0x3ASmallPtrSet0x3Chermes0x3A0x3AFunction0x2A0x2C0x202u0x3E0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aequal_to0x3Chermes0x3A0x3AFunction0x2A0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Ahash0x3Chermes0x3A0x3AFunction0x2A0x3E0x2C0x20true0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fhash_value_type0x3Chermes0x3A0x3AFunction0x2A0x2C0x20llvh0x3A0x3ASmallPtrSet0x3Chermes0x3A0x3AFunction0x2A0x2C0x202u0x3E0x3E0x3E0x3E0x3A0x3A_0x5Femplace_unique_key_args0x3Chermes0x3A0x3AFunction0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apiecewise_construct_t0x20const0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Atuple0x3Chermes0x3A0x3AFunction0x2A0x260x260x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Atuple0x3C0x3E0x3E0x28hermes0x3A0x3AFunction0x2A0x20const0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Apiecewise_construct_t0x20const0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Atuple0x3Chermes0x3A0x3AFunction0x2A0x260x260x3E0x260x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Atuple0x3C0x3E0x260x260x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @w2c_hermes_llvh0x3A0x3Adetail0x3A0x3ADenseSetPair0x3Chermes0x3A0x3AInstruction0x2A0x3E0x2A0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3AInstruction0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetEmpty0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AInstruction0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetPair0x3Chermes0x3A0x3AInstruction0x2A0x3E0x3E0x2C0x20hermes0x3A0x3AInstruction0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetEmpty0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AInstruction0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetPair0x3Chermes0x3A0x3AInstruction0x2A0x3E0x3E0x3A0x3AInsertIntoBucket0x3Chermes0x3A0x3AInstruction0x2A0x20const0x260x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetEmpty0x260x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseSetPair0x3Chermes0x3A0x3AInstruction0x2A0x3E0x2A0x2C0x20hermes0x3A0x3AInstruction0x2A0x20const0x260x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetEmpty0x260x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3A_0x5Ffunction0x3A0x3A_0x5Fvalue_func0x3Cbool0x200x280x290x3E0x3A0x3Aswap0x5Babi0x3Av150070x5D0x28std0x3A0x3A_0x5F20x3A0x3A_0x5Ffunction0x3A0x3A_0x5Fvalue_func0x3Cbool0x200x280x290x3E0x260x29(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_hermes0x3A0x3AFunction0x3A0x3AgetSourceRepresentationStr0x280x290x20const(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fstable_sort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3A0x24_00x260x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x3E0x28std0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3A0x24_00x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x3E0x3A0x3Adifference_type0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Fwrap_iter0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x3E0x3A0x3Avalue_type0x2A0x2C0x20long0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fintrosort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x3E0x260x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AIndex0x2A0x3E0x3A0x3Adifference_type0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @w2c_hermes_hermes0x3A0x3AisAllASCII0x28unsigned0x20char0x20const0x2A0x2C0x20unsigned0x20char0x20const0x2A0x29(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @w2c_hermes_unsigned0x20int0x20hermes0x3A0x3A_decodeUTF8SlowPath0x3Ctrue0x2C0x20char16_t0x2A0x20hermes0x3A0x3AconvertUTF8WithSurrogatesToUTF160x3Cchar16_t0x2A0x3E0x28char16_t0x2A0x2C0x20char0x20const0x2A0x2C0x20char0x20const0x2A0x290x3A0x3A0x27lambda0x270x28llvh0x3A0x3ATwine0x20const0x260x290x3E0x28char0x20const0x2A0x260x2C0x20char16_t0x2A0x20hermes0x3A0x3AconvertUTF8WithSurrogatesToUTF160x3Cchar16_t0x2A0x3E0x28char16_t0x2A0x2C0x20char0x20const0x2A0x2C0x20char0x20const0x2A0x290x3A0x3A0x27lambda0x270x28llvh0x3A0x3ATwine0x20const0x260x290x29(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_0x28anonymous0x20namespace0x290x3A0x3AStringPacker0x3Cchar16_t0x3E0x3A0x3AStringEntry0x260x20std0x3A0x3A_0x5F20x3A0x3Avector0x3C0x28anonymous0x20namespace0x290x3A0x3AStringPacker0x3Cchar16_t0x3E0x3A0x3AStringEntry0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3C0x28anonymous0x20namespace0x290x3A0x3AStringPacker0x3Cchar16_t0x3E0x3A0x3AStringEntry0x3E0x3E0x3A0x3Aemplace_back0x3Cunsigned0x20int0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Avector0x3Cchar16_t0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar16_t0x3E0x3E0x260x3E0x28unsigned0x20int0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Avector0x3Cchar16_t0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar16_t0x3E0x3E0x260x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fintrosort0x3Cstd0x3A0x3A_0x5F20x3A0x3A_ClassicAlgPolicy0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x3E0x260x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x3E0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Fless0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2C0x20hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x3E0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Aiterator_traits0x3Chermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x3A0x3AtoTable0x28hermes0x3A0x3Ahbc0x3A0x3AUniquingStringLiteralAccumulator0x2C0x20bool0x290x3A0x3AKindedEntry0x2A0x3E0x3A0x3Adifference_type0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @w2c_hermes_llvh0x3A0x3Ahash_value0x28llvh0x3A0x3AStringRef0x29(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_llvh0x3A0x3ADenseMap0x3Cllvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3AUniqueString0x2A0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AStringRef0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3AUniqueString0x2A0x3E0x3E0x3A0x3Agrow0x28unsigned0x20int0x29(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @w2c_hermes_bool0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3ASmallVector0x3Cchar0x2C0x2032u0x3E0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AStringRef0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3ASmallVector0x3Cchar0x2C0x2032u0x3E0x3E0x3E0x2C0x20llvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3ASmallVector0x3Cchar0x2C0x2032u0x3E0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AStringRef0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3ASmallVector0x3Cchar0x2C0x2032u0x3E0x3E0x3E0x3A0x3ALookupBucketFor0x3Cllvh0x3A0x3AStringRef0x3E0x28llvh0x3A0x3AStringRef0x20const0x260x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3ASmallVector0x3Cchar0x2C0x2032u0x3E0x3E0x20const0x2A0x260x290x20const(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_hermes0x3A0x3AFunctionScopeAnalysis0x3A0x3AcalculateFunctionScopeData0x28hermes0x3A0x3AScopeDesc0x2A0x2C0x20llvh0x3A0x3AOptional0x3Cint0x3E0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_llvh0x3A0x3ADenseMap0x3Chermes0x3A0x3AUniqueString0x2A0x2C0x20hermes0x3A0x3AESTree0x3A0x3AIdentifierNode0x2A0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AUniqueString0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AUniqueString0x2A0x2C0x20hermes0x3A0x3AESTree0x3A0x3AIdentifierNode0x2A0x3E0x3E0x3A0x3Agrow0x28unsigned0x20int0x29(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_llvh0x3A0x3ABitVector0x3A0x3Aresize0x28unsigned0x20int0x2C0x20bool0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @w2c_hermes_hermes0x3A0x3AIRBuilder0x3A0x3AcreateMovInst0x28hermes0x3A0x3AValue0x2A0x29(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @w2c_hermes_llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x3E0x2A0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x3E0x3E0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x3E0x3E0x3A0x3AInsertIntoBucket0x3Chermes0x3A0x3ABasicBlock0x2A0x20const0x260x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x3E0x2A0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x20const0x260x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @w2c_hermes_dlrealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_5
begin_hunk_6_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3Agenerate0x28hermes0x3A0x3ASourceMapGenerator0x2A0x29:bb.a
  %i.loz = getelementptr inbounds nuw i8, ptr %.val55.i88007, i64 %i.loy
  %i.lpa = getelementptr inbounds nuw i8, ptr %i.loz, i64 92
  %.0.copyload.i57.i88008 = load i32, ptr %i.lpa, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i57.i88008) #7, !srcloc !19
  %.not.i88009 = icmp eq i32 %.0.copyload.i57.i88008, 0
  br i1 %.not.i88009, label %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit88018, label %bb.bqn

bb.bqn:                                           ; preds = %bb.bqm
  %.val54.i88010 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.lpb = getelementptr inbounds nuw i8, ptr %.val54.i88010, i64 %i.loy
  %i.lpc = getelementptr inbounds nuw i8, ptr %i.lpb, i64 88
  %.0.copyload.i58.i88011 = load i32, ptr %i.lpc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i58.i88011) #7, !srcloc !19
  %i.lpd = shl i32 %.0.copyload.i57.i88008, 2
  %i.lpe = add i32 %.0.copyload.i58.i88011, %i.lpd
  %i.lpf = add i32 %.0.copyload.i57.i88008, 1073741823
  %i.lpg = and i32 %i.lpf, 1073741823
  %i.lph = add nuw nsw i32 %i.lpg, 1
  br label %bb.bqo

bb.bqo:                                           ; preds = %bb.bqp, %bb.bqn
  %.051.i88012 = phi i32 [ 0, %bb.bqn ], [ %i.lpl, %bb.bqp ] ; 2 uses
  %.050.i88013 = phi i32 [ %.0.copyload.i58.i88011, %bb.bqn ], [ %i.lpm, %bb.bqp ] ; 2 uses
  %i.lpi = zext i32 %.050.i88013 to i64
  %.val.i88014 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.lpj = getelementptr inbounds nuw i8, ptr %.val.i88014, i64 %i.lpi
  %.0.copyload.i59.i88015 = load i32, ptr %i.lpj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i59.i88015) #7, !srcloc !19
  %i.lpk = icmp eq i32 %.0.copyload.i59.i88015, %.0.copyload.i88002
  br i1 %i.lpk, label %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit88018, label %bb.bqp

bb.bqp:                                           ; preds = %bb.bqo
  %i.lpl = add nuw nsw i32 %.051.i88012, 1
  %i.lpm = add i32 %.050.i88013, 4                ; 2 uses
  %.not53.i88016 = icmp eq i32 %i.lpm, %i.lpe
  br i1 %.not53.i88016, label %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit88018, label %bb.bqo

w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit88018: ; preds = %bb.bqp, %bb.bqo, %bb.bqm, %bb.bql
  %.3874973 = phi i32 [ %i.lov, %bb.bql ], [ 0, %bb.bqm ], [ %.051.i88012, %bb.bqo ], [ %i.lph, %bb.bqp ] ; 4 uses
  %.val81132 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.lpn = getelementptr inbounds nuw i8, ptr %.val81132, i64 %i.lnj
  %.0.copyload.i88019 = load i32, ptr %i.lpn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88019) #7, !srcloc !19
  %i.lpo = zext i32 %.0.copyload.i88019 to i64    ; 2 uses
  %.val81131 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.lpp = getelementptr inbounds nuw i8, ptr %.val81131, i64 %i.lpo
  %i.lpq = getelementptr inbounds nuw i8, ptr %i.lpp, i64 16
  %.0.copyload.i88020 = load i32, ptr %i.lpq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88020) #7, !srcloc !19
  %.val81130 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.lpr = getelementptr inbounds nuw i8, ptr %.val81130, i64 %i.lpo
  %i.lps = getelementptr inbounds nuw i8, ptr %i.lpr, i64 24
  %.0.copyload.i88021 = load i32, ptr %i.lps, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88021) #7, !srcloc !19
  %i.lpt = zext i32 %.0.copyload.i88021 to i64
  %.val86093 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.lpu = getelementptr inbounds nuw i8, ptr %.val86093, i64 %i.lpt
  %i.lpv = getelementptr inbounds nuw i8, ptr %i.lpu, i64 28
  %.0.copyload.i88022 = load i8, ptr %i.lpv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i88022) #7, !srcloc !21
  %.not78631 = icmp eq i8 %.0.copyload.i88022, 0
  br i1 %.not78631, label %bb.bqv, label %bb.bqq

bb.bqq:                                           ; preds = %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit88018
  %i.lpw = zext i32 %.0.copyload.i88020 to i64    ; 2 uses
  %.val86092 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.lpx = getelementptr inbounds nuw i8, ptr %.val86092, i64 %i.lpw
  %.0.copyload.i88023 = load i8, ptr %i.lpx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i88023) #7, !srcloc !21
  %i.lpy = icmp ne i8 %.0.copyload.i88023, 114
  %.not7863278633 = icmp eq i32 %.0.copyload.i88020, 0
  %.not78632 = select i1 %i.lpy, i1 true, i1 %.not7863278633
  br i1 %.not78632, label %bb.bqv, label %bb.bqr

bb.bqr:                                           ; preds = %bb.bqq
  %.val86329 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.lpz = getelementptr inbounds nuw i8, ptr %.val86329, i64 %i.lpw
  %i.lqa = getelementptr inbounds nuw i8, ptr %i.lpz, i64 32
  %.0.copyload.i88024 = load double, ptr %i.lqa, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i88024) #7, !srcloc !23
  %i.lqb = fcmp olt double %.0.copyload.i88024, f0x41F0000000000000
  %i.lqc = fcmp oge double %.0.copyload.i88024, 0.000000e+00
  %i.lqd = and i1 %i.lqb, %i.lqc
  %i.lqe = fptoui double %.0.copyload.i88024 to i32
  %spec.select91552 = select i1 %i.lqd, i32 %i.lqe, i32 0 ; 4 uses
  %i.lqf = icmp eq i32 %spec.select91552, -1
  %i.lqg = uitofp i32 %spec.select91552 to double
  %i.lqh = fcmp une double %.0.copyload.i88024, %i.lqg
  %or.cond79371 = or i1 %i.lqf, %i.lqh
  br i1 %or.cond79371, label %bb.bqv, label %bb.bqs

bb.bqs:                                           ; preds = %bb.bqr
  %i.lqi = zext i32 %spec.select91552 to i64      ; 2 uses
  %i.lqj = zext i32 %.3774972 to i64              ; 2 uses
  %i.lqk = zext i32 %.3874973 to i64              ; 2 uses
  %.val81129 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.lql = getelementptr inbounds nuw i8, ptr %.val81129, i64 %i.jm
  %.0.copyload.i88025 = load i32, ptr %i.lql, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88025) #7, !srcloc !19
  %i.lqm = icmp ult i32 %spec.select91552, 256
  br i1 %i.lqm, label %bb.bqt, label %bb.bqu

bb.bqt:                                           ; preds = %bb.bqs
  tail call void @w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3ABytecodeInstructionGenerator0x3A0x3AemitPutOwnByIndex0x28long0x20long0x2C0x20long0x20long0x2C0x20long0x20long0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i88025, i64 noundef %i.lqk, i64 noundef %i.lqj, i64 noundef %i.lqi)
  br label %bb.foa

bb.bqu:                                           ; preds = %bb.bqs
  tail call void @w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3ABytecodeInstructionGenerator0x3A0x3AemitPutOwnByIndexL0x28long0x20long0x2C0x20long0x20long0x2C0x20long0x20long0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i88025, i64 noundef %i.lqk, i64 noundef %i.lqj, i64 noundef %i.lqi)
  br label %bb.foa

bb.bqv:                                           ; preds = %bb.bqr, %bb.bqq, %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit88018
  %.val81128 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.lqn = getelementptr inbounds nuw i8, ptr %.val81128, i64 %i.lnj
  %.0.copyload.i88026 = load i32, ptr %i.lqn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88026) #7, !srcloc !19
  %i.lqo = zext i32 %.0.copyload.i88026 to i64
  %.val81127 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.lqp = getelementptr inbounds nuw i8, ptr %.val81127, i64 %i.lqo
  %i.lqq = getelementptr inbounds nuw i8, ptr %i.lqp, i64 16
  %.0.copyload.i88027 = load i32, ptr %i.lqq, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88027) #7, !srcloc !19
  %i.lqr = zext i32 %.0.copyload.i88027 to i64    ; 2 uses
  %.val86091 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.lqs = getelementptr inbounds nuw i8, ptr %.val86091, i64 %i.lqr
  %.0.copyload.i88028 = load i8, ptr %i.lqs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i88028) #7, !srcloc !21
  %i.lqt = add i8 %.0.copyload.i88028, -2
  %i.lqu = icmp ult i8 %i.lqt, 107
  %.val81126 = load ptr, ptr %i.e, align 8, !tbaa !18 ; 2 uses
  br i1 %i.lqu, label %bb.bqw, label %bb.bqx

bb.bqw:                                           ; preds = %bb.bqv
  %i.lqv = getelementptr inbounds nuw i8, ptr %.val81126, i64 %i.f
  %i.lqw = getelementptr inbounds nuw i8, ptr %i.lqv, i64 8
  %.0.copyload.i88029 = load i32, ptr %i.lqw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88029) #7, !srcloc !19
  %i.lqx = tail call i32 @w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AgetRegister0x28hermes0x3A0x3AValue0x2A0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i88029, i32 noundef %.0.copyload.i88027)
  br label %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit88043

bb.bqx:                                           ; preds = %bb.bqv
  %i.lqy = getelementptr inbounds nuw i8, ptr %.val81126, i64 %i.lqr
  %i.lqz = getelementptr inbounds nuw i8, ptr %i.lqy, i64 36
  %.0.copyload.i.i88031 = load i32, ptr %i.lqz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i88031) #7, !srcloc !19
  %i.lra = zext i32 %.0.copyload.i.i88031 to i64  ; 2 uses
  %.val55.i88032 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.lrb = getelementptr inbounds nuw i8, ptr %.val55.i88032, i64 %i.lra
  %i.lrc = getelementptr inbounds nuw i8, ptr %i.lrb, i64 92
  %.0.copyload.i57.i88033 = load i32, ptr %i.lrc, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i57.i88033) #7, !srcloc !19
  %.not.i88034 = icmp eq i32 %.0.copyload.i57.i88033, 0
  br i1 %.not.i88034, label %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit88043, label %bb.bqy

bb.bqy:                                           ; preds = %bb.bqx
  %.val54.i88035 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.lrd = getelementptr inbounds nuw i8, ptr %.val54.i88035, i64 %i.lra
  %i.lre = getelementptr inbounds nuw i8, ptr %i.lrd, i64 88
  %.0.copyload.i58.i88036 = load i32, ptr %i.lre, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i58.i88036) #7, !srcloc !19
  %i.lrf = shl i32 %.0.copyload.i57.i88033, 2
  %i.lrg = add i32 %.0.copyload.i58.i88036, %i.lrf
  %i.lrh = add i32 %.0.copyload.i57.i88033, 1073741823
  %i.lri = and i32 %i.lrh, 1073741823
  %i.lrj = add nuw nsw i32 %i.lri, 1
  br label %bb.bqz

bb.bqz:                                           ; preds = %bb.bra, %bb.bqy
  %.051.i88037 = phi i32 [ 0, %bb.bqy ], [ %i.lrn, %bb.bra ] ; 2 uses
  %.050.i88038 = phi i32 [ %.0.copyload.i58.i88036, %bb.bqy ], [ %i.lro, %bb.bra ] ; 2 uses
  %i.lrk = zext i32 %.050.i88038 to i64
  %.val.i88039 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.lrl = getelementptr inbounds nuw i8, ptr %.val.i88039, i64 %i.lrk
  %.0.copyload.i59.i88040 = load i32, ptr %i.lrl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i59.i88040) #7, !srcloc !19
  %i.lrm = icmp eq i32 %.0.copyload.i59.i88040, %.0.copyload.i88027
  br i1 %i.lrm, label %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit88043, label %bb.bra

bb.bra:                                           ; preds = %bb.bqz
  %i.lrn = add nuw nsw i32 %.051.i88037, 1
  %i.lro = add i32 %.050.i88038, 4                ; 2 uses
  %.not53.i88041 = icmp eq i32 %i.lro, %i.lrg
  br i1 %.not53.i88041, label %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit88043, label %bb.bqz

w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit88043: ; preds = %bb.bra, %bb.bqz, %bb.bqx, %bb.bqw
  %.4074975 = phi i32 [ %i.lqx, %bb.bqw ], [ 0, %bb.bqx ], [ %.051.i88037, %bb.bqz ], [ %i.lrj, %bb.bra ] ; 3 uses
  %.val81125 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.lrp = getelementptr inbounds nuw i8, ptr %.val81125, i64 %i.lnj
  %.0.copyload.i88044 = load i32, ptr %i.lrp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88044) #7, !srcloc !19
  %i.lrq = zext i32 %.0.copyload.i88044 to i64
  %.val81124 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.lrr = getelementptr inbounds nuw i8, ptr %.val81124, i64 %i.lrq
  %i.lrs = getelementptr inbounds nuw i8, ptr %i.lrr, i64 24
  %.0.copyload.i88045 = load i32, ptr %i.lrs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88045) #7, !srcloc !19
  %i.lrt = zext i32 %.0.copyload.i88045 to i64
  %.val86338 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.lru = getelementptr inbounds nuw i8, ptr %.val86338, i64 %i.lrt
  %i.lrv = getelementptr inbounds nuw i8, ptr %i.lru, i64 28
  %.0.copyload.i88046 = load i8, ptr %i.lrv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i88046) #7, !srcloc !42
  %.val81123 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.lrw = getelementptr inbounds nuw i8, ptr %.val81123, i64 %i.jm
  %.0.copyload.i88047 = load i32, ptr %i.lrw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88047) #7, !srcloc !19
  %i.lrx = zext i32 %.0.copyload.i88047 to i64    ; 13 uses
  %i.lry = add nuw nsw i64 %i.lrx, 4              ; 15 uses
  %.val81122 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.lrz = getelementptr inbounds nuw i8, ptr %.val81122, i64 %i.lry
  %.0.copyload.i88048 = load i32, ptr %i.lrz, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88048) #7, !srcloc !19
  %.val81121 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.lsa = getelementptr inbounds nuw i8, ptr %.val81121, i64 %i.lrx
  %.0.copyload.i88049 = load i32, ptr %i.lsa, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88049) #7, !srcloc !19
  %i.lsb = sub i32 %.0.copyload.i88048, %.0.copyload.i88049 ; 3 uses
  %i.lsc = add nuw nsw i64 %i.lrx, 8              ; 10 uses
  %.val81120 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.lsd = getelementptr inbounds nuw i8, ptr %.val81120, i64 %i.lsc
  %.0.copyload.i88050 = load i32, ptr %i.lsd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88050) #7, !srcloc !19
  %i.lse = icmp ugt i32 %.0.copyload.i88050, %.0.copyload.i88048
  br i1 %i.lse, label %bb.brb, label %bb.brc

bb.brb:                                           ; preds = %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit88043
  %i.lsf = zext i32 %.0.copyload.i88048 to i64
  %.val85141 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.lsg = getelementptr inbounds nuw i8, ptr %.val85141, i64 %i.lsf
  store i8 70, ptr %i.lsg, align 1
  %i.lsh = add nuw i32 %.0.copyload.i88048, 1     ; 2 uses
  %.val83462 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.lsi = getelementptr inbounds nuw i8, ptr %.val83462, i64 %i.lry
  store i32 %i.lsh, ptr %i.lsi, align 1
  br label %bb.brh

bb.brc:                                           ; preds = %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit88043
  %i.lsj = add i32 %i.lsb, 1                      ; 2 uses
  %i.lsk = icmp slt i32 %i.lsj, 0
  br i1 %i.lsk, label %.loopexit91567, label %bb.brd

bb.brd:                                           ; preds = %bb.brc
  %i.lsl = sub i32 %.0.copyload.i88050, %.0.copyload.i88049 ; 2 uses
  %i.lsm = shl i32 %i.lsl, 1
  %i.lsn = tail call i32 @llvm.umax.i32(i32 %i.lsm, i32 %i.lsj)
  %i.lso = icmp ugt i32 %i.lsl, 1073741822
  %i.lsp = select i1 %i.lso, i32 2147483647, i32 %i.lsn ; 3 uses
  %.not78634 = icmp eq i32 %i.lsp, 0
  br i1 %.not78634, label %bb.brf, label %bb.bre

bb.bre:                                           ; preds = %bb.brd
  %i.lsq = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.lsp) #7
  br label %bb.brf

bb.brf:                                           ; preds = %bb.brd, %bb.bre
  %.203 = phi i32 [ %i.lsq, %bb.bre ], [ 0, %bb.brd ] ; 2 uses
  %i.lsr = add i32 %.203, %i.lsb                  ; 2 uses
  %i.lss = zext i32 %i.lsr to i64
  %.val85140 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.lst = getelementptr inbounds nuw i8, ptr %.val85140, i64 %i.lss
  store i8 70, ptr %i.lst, align 1
  %i.lsu = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.203, i32 noundef %.0.copyload.i88049, i32 noundef %i.lsb) #7 ; 2 uses
  %i.lsv = add i32 %i.lsu, %i.lsp
  %.val83461 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.lsw = getelementptr inbounds nuw i8, ptr %.val83461, i64 %i.lsc
  store i32 %i.lsv, ptr %i.lsw, align 1
  %i.lsx = add i32 %i.lsr, 1                      ; 2 uses
  %.val83460 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.lsy = getelementptr inbounds nuw i8, ptr %.val83460, i64 %i.lry
  store i32 %i.lsx, ptr %i.lsy, align 1
  %.val83459 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.lsz = getelementptr inbounds nuw i8, ptr %.val83459, i64 %i.lrx
  store i32 %i.lsu, ptr %i.lsz, align 1
  %.not78635 = icmp eq i32 %.0.copyload.i88049, 0
  br i1 %.not78635, label %bb.brh, label %bb.brg

bb.brg:                                           ; preds = %bb.brf
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i88049) #7
  %.val81119 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.lta = getelementptr inbounds nuw i8, ptr %.val81119, i64 %i.lry
  %.0.copyload.i88051 = load i32, ptr %i.lta, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88051) #7, !srcloc !19
  br label %bb.brh

bb.brh:                                           ; preds = %bb.brf, %bb.brg, %bb.brb
  %.6875607 = phi i32 [ %i.lsh, %bb.brb ], [ %i.lsx, %bb.brf ], [ %.0.copyload.i88051, %bb.brg ] ; 4 uses
  %i.ltb = add nuw nsw i64 %i.lrx, 12             ; 8 uses
  %.val86090 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ltc = getelementptr inbounds nuw i8, ptr %.val86090, i64 %i.ltb
  %.0.copyload.i88052 = load i8, ptr %i.ltc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i88052) #7, !srcloc !21
  %i.ltd = icmp ugt i32 %.3874973, 255
  %i.lte = zext i1 %i.ltd to i8
  %i.ltf = or i8 %.0.copyload.i88052, %i.lte
  %.val85139 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ltg = getelementptr inbounds nuw i8, ptr %.val85139, i64 %i.ltb
  store i8 %i.ltf, ptr %i.ltg, align 1
  %.val81118 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.lth = getelementptr inbounds nuw i8, ptr %.val81118, i64 %i.lsc
  %.0.copyload.i88053 = load i32, ptr %i.lth, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88053) #7, !srcloc !19
  %i.lti = icmp ugt i32 %.0.copyload.i88053, %.6875607
  br i1 %i.lti, label %bb.bri, label %bb.brj

bb.bri:                                           ; preds = %bb.brh
  %i.ltj = zext i32 %.6875607 to i64
  %.val85138 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ltk = trunc i32 %.3874973 to i8
  %i.ltl = getelementptr inbounds nuw i8, ptr %.val85138, i64 %i.ltj
  store i8 %i.ltk, ptr %i.ltl, align 1
  %i.ltm = add nuw i32 %.6875607, 1               ; 2 uses
  %.val83458 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ltn = getelementptr inbounds nuw i8, ptr %.val83458, i64 %i.lry
  store i32 %i.ltm, ptr %i.ltn, align 1
  br label %bb.bro

bb.brj:                                           ; preds = %bb.brh
  %.val81117 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.lto = getelementptr inbounds nuw i8, ptr %.val81117, i64 %i.lrx
  %.0.copyload.i88054 = load i32, ptr %i.lto, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88054) #7, !srcloc !19
  %i.ltp = sub i32 %.6875607, %.0.copyload.i88054 ; 3 uses
  %i.ltq = add i32 %i.ltp, 1                      ; 2 uses
  %i.ltr = icmp slt i32 %i.ltq, 0
  br i1 %i.ltr, label %.loopexit91567, label %bb.brk

bb.brk:                                           ; preds = %bb.brj
  %i.lts = sub i32 %.0.copyload.i88053, %.0.copyload.i88054 ; 2 uses
  %i.ltt = shl i32 %i.lts, 1
  %i.ltu = tail call i32 @llvm.umax.i32(i32 %i.ltt, i32 %i.ltq)
  %i.ltv = icmp ugt i32 %i.lts, 1073741822
  %i.ltw = select i1 %i.ltv, i32 2147483647, i32 %i.ltu ; 3 uses
  %.not78636 = icmp eq i32 %i.ltw, 0
  br i1 %.not78636, label %bb.brm, label %bb.brl

bb.brl:                                           ; preds = %bb.brk
  %i.ltx = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.ltw) #7
  br label %bb.brm

bb.brm:                                           ; preds = %bb.brk, %bb.brl
  %.204 = phi i32 [ %i.ltx, %bb.brl ], [ 0, %bb.brk ] ; 2 uses
  %i.lty = add i32 %.204, %i.ltp                  ; 2 uses
  %i.ltz = zext i32 %i.lty to i64
  %.val85137 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.lua = trunc i32 %.3874973 to i8
  %i.lub = getelementptr inbounds nuw i8, ptr %.val85137, i64 %i.ltz
  store i8 %i.lua, ptr %i.lub, align 1
  %i.luc = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.204, i32 noundef %.0.copyload.i88054, i32 noundef %i.ltp) #7 ; 2 uses
  %i.lud = add i32 %i.luc, %i.ltw
  %.val83457 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.lue = getelementptr inbounds nuw i8, ptr %.val83457, i64 %i.lsc
  store i32 %i.lud, ptr %i.lue, align 1
  %i.luf = add i32 %i.lty, 1                      ; 2 uses
  %.val83456 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.lug = getelementptr inbounds nuw i8, ptr %.val83456, i64 %i.lry
  store i32 %i.luf, ptr %i.lug, align 1
  %.val83455 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.luh = getelementptr inbounds nuw i8, ptr %.val83455, i64 %i.lrx
  store i32 %i.luc, ptr %i.luh, align 1
  %.not78637 = icmp eq i32 %.0.copyload.i88054, 0
  br i1 %.not78637, label %bb.bro, label %bb.brn

bb.brn:                                           ; preds = %bb.brm
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i88054) #7
  %.val81116 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.lui = getelementptr inbounds nuw i8, ptr %.val81116, i64 %i.lry
  %.0.copyload.i88055 = load i32, ptr %i.lui, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88055) #7, !srcloc !19
  br label %bb.bro

bb.bro:                                           ; preds = %bb.brm, %bb.brn, %bb.bri
  %.6975608 = phi i32 [ %i.ltm, %bb.bri ], [ %i.luf, %bb.brm ], [ %.0.copyload.i88055, %bb.brn ] ; 4 uses
  %.val86089 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.luj = getelementptr inbounds nuw i8, ptr %.val86089, i64 %i.ltb
  %.0.copyload.i88056 = load i8, ptr %i.luj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i88056) #7, !srcloc !21
  %i.luk = icmp ugt i32 %.3774972, 255
  %i.lul = zext i1 %i.luk to i8
  %i.lum = or i8 %.0.copyload.i88056, %i.lul
  %.val85136 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.lun = getelementptr inbounds nuw i8, ptr %.val85136, i64 %i.ltb
  store i8 %i.lum, ptr %i.lun, align 1
  %.val81115 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.luo = getelementptr inbounds nuw i8, ptr %.val81115, i64 %i.lsc
  %.0.copyload.i88057 = load i32, ptr %i.luo, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88057) #7, !srcloc !19
  %i.lup = icmp ugt i32 %.0.copyload.i88057, %.6975608
  br i1 %i.lup, label %bb.brp, label %bb.brq

bb.brp:                                           ; preds = %bb.bro
  %i.luq = zext i32 %.6975608 to i64
  %.val85135 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.lur = trunc i32 %.3774972 to i8
  %i.lus = getelementptr inbounds nuw i8, ptr %.val85135, i64 %i.luq
  store i8 %i.lur, ptr %i.lus, align 1
  %i.lut = add nuw i32 %.6975608, 1               ; 2 uses
  %.val83454 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.luu = getelementptr inbounds nuw i8, ptr %.val83454, i64 %i.lry
  store i32 %i.lut, ptr %i.luu, align 1
  br label %bb.brv

bb.brq:                                           ; preds = %bb.bro
end_hunk_6
begin_hunk_7_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3Agenerate0x28hermes0x3A0x3ASourceMapGenerator0x2A0x29:bb.a
  br i1 %.not.i88207, label %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit88216, label %bb.bxv

bb.bxv:                                           ; preds = %bb.bxu
  %.val54.i88208 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.mwt = getelementptr inbounds nuw i8, ptr %.val54.i88208, i64 %i.mwq
  %i.mwu = getelementptr inbounds nuw i8, ptr %i.mwt, i64 88
  %.0.copyload.i58.i88209 = load i32, ptr %i.mwu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i58.i88209) #7, !srcloc !19
  %i.mwv = shl i32 %.0.copyload.i57.i88206, 2
  %i.mww = add i32 %.0.copyload.i58.i88209, %i.mwv
  %i.mwx = add i32 %.0.copyload.i57.i88206, 1073741823
  %i.mwy = and i32 %i.mwx, 1073741823
  %i.mwz = add nuw nsw i32 %i.mwy, 1
  br label %bb.bxw

bb.bxw:                                           ; preds = %bb.bxx, %bb.bxv
  %.051.i88210 = phi i32 [ 0, %bb.bxv ], [ %i.mxd, %bb.bxx ] ; 2 uses
  %.050.i88211 = phi i32 [ %.0.copyload.i58.i88209, %bb.bxv ], [ %i.mxe, %bb.bxx ] ; 2 uses
  %i.mxa = zext i32 %.050.i88211 to i64
  %.val.i88212 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.mxb = getelementptr inbounds nuw i8, ptr %.val.i88212, i64 %i.mxa
  %.0.copyload.i59.i88213 = load i32, ptr %i.mxb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i59.i88213) #7, !srcloc !19
  %i.mxc = icmp eq i32 %.0.copyload.i59.i88213, %.0.copyload.i88200
  br i1 %i.mxc, label %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit88216, label %bb.bxx

bb.bxx:                                           ; preds = %bb.bxw
  %i.mxd = add nuw nsw i32 %.051.i88210, 1
  %i.mxe = add i32 %.050.i88211, 4                ; 2 uses
  %.not53.i88214 = icmp eq i32 %i.mxe, %i.mww
  br i1 %.not53.i88214, label %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit88216, label %bb.bxw

w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit88216: ; preds = %bb.bxx, %bb.bxw, %bb.bxu, %bb.bxt
  %.4574980 = phi i32 [ %i.mwn, %bb.bxt ], [ 0, %bb.bxu ], [ %.051.i88210, %bb.bxw ], [ %i.mwz, %bb.bxx ] ; 3 uses
  %.val81039 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.mxf = getelementptr inbounds nuw i8, ptr %.val81039, i64 %i.jm
  %.0.copyload.i88217 = load i32, ptr %i.mxf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88217) #7, !srcloc !19
  %.val81038 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.mxg = getelementptr inbounds nuw i8, ptr %.val81038, i64 %i.mva
  %.0.copyload.i88218 = load i32, ptr %i.mxg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88218) #7, !srcloc !19
  %i.mxh = zext i32 %.0.copyload.i88218 to i64
  %.val81037 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.mxi = getelementptr inbounds nuw i8, ptr %.val81037, i64 %i.mxh
  %.0.copyload.i88219 = load i32, ptr %i.mxi, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88219) #7, !srcloc !19
  %i.mxj = zext i32 %.0.copyload.i88219 to i64    ; 2 uses
  %.val86069 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.mxk = getelementptr inbounds nuw i8, ptr %.val86069, i64 %i.mxj
  %.0.copyload.i88220 = load i8, ptr %i.mxk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i88220) #7, !srcloc !21
  %i.mxl = add i8 %.0.copyload.i88220, -2
  %i.mxm = icmp ult i8 %i.mxl, 107
  %.val81036 = load ptr, ptr %i.e, align 8, !tbaa !18 ; 2 uses
  br i1 %i.mxm, label %bb.bxy, label %bb.bxz

bb.bxy:                                           ; preds = %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit88216
  %i.mxn = getelementptr inbounds nuw i8, ptr %.val81036, i64 %i.f
  %i.mxo = getelementptr inbounds nuw i8, ptr %i.mxn, i64 8
  %.0.copyload.i88221 = load i32, ptr %i.mxo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88221) #7, !srcloc !19
  %i.mxp = tail call i32 @w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AgetRegister0x28hermes0x3A0x3AValue0x2A0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i88221, i32 noundef %.0.copyload.i88219)
  br label %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit88235

bb.bxz:                                           ; preds = %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit88216
  %i.mxq = getelementptr inbounds nuw i8, ptr %.val81036, i64 %i.mxj
  %i.mxr = getelementptr inbounds nuw i8, ptr %i.mxq, i64 36
  %.0.copyload.i.i88223 = load i32, ptr %i.mxr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i88223) #7, !srcloc !19
  %i.mxs = zext i32 %.0.copyload.i.i88223 to i64  ; 2 uses
  %.val55.i88224 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.mxt = getelementptr inbounds nuw i8, ptr %.val55.i88224, i64 %i.mxs
  %i.mxu = getelementptr inbounds nuw i8, ptr %i.mxt, i64 92
  %.0.copyload.i57.i88225 = load i32, ptr %i.mxu, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i57.i88225) #7, !srcloc !19
  %.not.i88226 = icmp eq i32 %.0.copyload.i57.i88225, 0
  br i1 %.not.i88226, label %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit88235, label %bb.bya

bb.bya:                                           ; preds = %bb.bxz
  %.val54.i88227 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.mxv = getelementptr inbounds nuw i8, ptr %.val54.i88227, i64 %i.mxs
  %i.mxw = getelementptr inbounds nuw i8, ptr %i.mxv, i64 88
  %.0.copyload.i58.i88228 = load i32, ptr %i.mxw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i58.i88228) #7, !srcloc !19
  %i.mxx = shl i32 %.0.copyload.i57.i88225, 2
  %i.mxy = add i32 %.0.copyload.i58.i88228, %i.mxx
  %i.mxz = add i32 %.0.copyload.i57.i88225, 1073741823
  %i.mya = and i32 %i.mxz, 1073741823
  %i.myb = add nuw nsw i32 %i.mya, 1
  br label %bb.byb

bb.byb:                                           ; preds = %bb.byc, %bb.bya
  %.051.i88229 = phi i32 [ 0, %bb.bya ], [ %i.myf, %bb.byc ] ; 2 uses
  %.050.i88230 = phi i32 [ %.0.copyload.i58.i88228, %bb.bya ], [ %i.myg, %bb.byc ] ; 2 uses
  %i.myc = zext i32 %.050.i88230 to i64
  %.val.i88231 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.myd = getelementptr inbounds nuw i8, ptr %.val.i88231, i64 %i.myc
  %.0.copyload.i59.i88232 = load i32, ptr %i.myd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i59.i88232) #7, !srcloc !19
  %i.mye = icmp eq i32 %.0.copyload.i59.i88232, %.0.copyload.i88219
  br i1 %i.mye, label %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit88235, label %bb.byc

bb.byc:                                           ; preds = %bb.byb
  %i.myf = add nuw nsw i32 %.051.i88229, 1
  %i.myg = add i32 %.050.i88230, 4                ; 2 uses
  %.not53.i88233 = icmp eq i32 %i.myg, %i.mxy
  br i1 %.not53.i88233, label %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit88235, label %bb.byb

w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit88235: ; preds = %bb.byc, %bb.byb, %bb.bxz, %bb.bxy
  %.4674981 = phi i32 [ %i.mxp, %bb.bxy ], [ 0, %bb.bxz ], [ %.051.i88229, %bb.byb ], [ %i.myb, %bb.byc ] ; 3 uses
  %.val81035 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.myh = getelementptr inbounds nuw i8, ptr %.val81035, i64 %i.mva
  %.0.copyload.i88236 = load i32, ptr %i.myh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88236) #7, !srcloc !19
  %i.myi = zext i32 %.0.copyload.i88236 to i64
  %.val81034 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.myj = getelementptr inbounds nuw i8, ptr %.val81034, i64 %i.myi
  %i.myk = getelementptr inbounds nuw i8, ptr %i.myj, i64 8
  %.0.copyload.i88237 = load i32, ptr %i.myk, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88237) #7, !srcloc !19
  %i.myl = zext i32 %.0.copyload.i88237 to i64    ; 2 uses
  %.val86068 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.mym = getelementptr inbounds nuw i8, ptr %.val86068, i64 %i.myl
  %.0.copyload.i88238 = load i8, ptr %i.mym, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i88238) #7, !srcloc !21
  %i.myn = add i8 %.0.copyload.i88238, -2
  %i.myo = icmp ult i8 %i.myn, 107
  %.val81033 = load ptr, ptr %i.e, align 8, !tbaa !18 ; 2 uses
  br i1 %i.myo, label %bb.byd, label %bb.bye

bb.byd:                                           ; preds = %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit88235
  %i.myp = getelementptr inbounds nuw i8, ptr %.val81033, i64 %i.f
  %i.myq = getelementptr inbounds nuw i8, ptr %i.myp, i64 8
  %.0.copyload.i88239 = load i32, ptr %i.myq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88239) #7, !srcloc !19
  %i.myr = tail call i32 @w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AgetRegister0x28hermes0x3A0x3AValue0x2A0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i88239, i32 noundef %.0.copyload.i88237)
  br label %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit88253

bb.bye:                                           ; preds = %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit88235
  %i.mys = getelementptr inbounds nuw i8, ptr %.val81033, i64 %i.myl
  %i.myt = getelementptr inbounds nuw i8, ptr %i.mys, i64 36
  %.0.copyload.i.i88241 = load i32, ptr %i.myt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i88241) #7, !srcloc !19
  %i.myu = zext i32 %.0.copyload.i.i88241 to i64  ; 2 uses
  %.val55.i88242 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.myv = getelementptr inbounds nuw i8, ptr %.val55.i88242, i64 %i.myu
  %i.myw = getelementptr inbounds nuw i8, ptr %i.myv, i64 92
  %.0.copyload.i57.i88243 = load i32, ptr %i.myw, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i57.i88243) #7, !srcloc !19
  %.not.i88244 = icmp eq i32 %.0.copyload.i57.i88243, 0
  br i1 %.not.i88244, label %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit88253, label %bb.byf

bb.byf:                                           ; preds = %bb.bye
  %.val54.i88245 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.myx = getelementptr inbounds nuw i8, ptr %.val54.i88245, i64 %i.myu
  %i.myy = getelementptr inbounds nuw i8, ptr %i.myx, i64 88
  %.0.copyload.i58.i88246 = load i32, ptr %i.myy, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i58.i88246) #7, !srcloc !19
  %i.myz = shl i32 %.0.copyload.i57.i88243, 2
  %i.mza = add i32 %.0.copyload.i58.i88246, %i.myz
  %i.mzb = add i32 %.0.copyload.i57.i88243, 1073741823
  %i.mzc = and i32 %i.mzb, 1073741823
  %i.mzd = add nuw nsw i32 %i.mzc, 1
  br label %bb.byg

bb.byg:                                           ; preds = %bb.byh, %bb.byf
  %.051.i88247 = phi i32 [ 0, %bb.byf ], [ %i.mzh, %bb.byh ] ; 2 uses
  %.050.i88248 = phi i32 [ %.0.copyload.i58.i88246, %bb.byf ], [ %i.mzi, %bb.byh ] ; 2 uses
  %i.mze = zext i32 %.050.i88248 to i64
  %.val.i88249 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.mzf = getelementptr inbounds nuw i8, ptr %.val.i88249, i64 %i.mze
  %.0.copyload.i59.i88250 = load i32, ptr %i.mzf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i59.i88250) #7, !srcloc !19
  %i.mzg = icmp eq i32 %.0.copyload.i59.i88250, %.0.copyload.i88237
  br i1 %i.mzg, label %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit88253, label %bb.byh

bb.byh:                                           ; preds = %bb.byg
  %i.mzh = add nuw nsw i32 %.051.i88247, 1
  %i.mzi = add i32 %.050.i88248, 4                ; 2 uses
  %.not53.i88251 = icmp eq i32 %i.mzi, %i.mza
  br i1 %.not53.i88251, label %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit88253, label %bb.byg

w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit88253: ; preds = %bb.byh, %bb.byg, %bb.bye, %bb.byd
  %.4774982 = phi i32 [ %i.myr, %bb.byd ], [ 0, %bb.bye ], [ %.051.i88247, %bb.byg ], [ %i.mzd, %bb.byh ] ; 3 uses
  %.val81032 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.mzj = getelementptr inbounds nuw i8, ptr %.val81032, i64 %i.mva
  %.0.copyload.i88254 = load i32, ptr %i.mzj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88254) #7, !srcloc !19
  %i.mzk = zext i32 %.0.copyload.i88254 to i64
  %.val81031 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.mzl = getelementptr inbounds nuw i8, ptr %.val81031, i64 %i.mzk
  %i.mzm = getelementptr inbounds nuw i8, ptr %i.mzl, i64 32
  %.0.copyload.i88255 = load i32, ptr %i.mzm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88255) #7, !srcloc !19
  %i.mzn = zext i32 %.0.copyload.i88255 to i64
  %.val86337 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.mzo = getelementptr inbounds nuw i8, ptr %.val86337, i64 %i.mzn
  %i.mzp = getelementptr inbounds nuw i8, ptr %i.mzo, i64 28
  %.0.copyload.i88256 = load i8, ptr %i.mzp, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i88256) #7, !srcloc !42
  %i.mzq = zext i32 %.0.copyload.i88217 to i64    ; 15 uses
  %i.mzr = add nuw nsw i64 %i.mzq, 4              ; 18 uses
  %.val81030 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.mzs = getelementptr inbounds nuw i8, ptr %.val81030, i64 %i.mzr
  %.0.copyload.i88257 = load i32, ptr %i.mzs, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88257) #7, !srcloc !19
  %.val81029 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.mzt = getelementptr inbounds nuw i8, ptr %.val81029, i64 %i.mzq
  %.0.copyload.i88258 = load i32, ptr %i.mzt, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88258) #7, !srcloc !19
  %i.mzu = sub i32 %.0.copyload.i88257, %.0.copyload.i88258 ; 3 uses
  %i.mzv = add nuw nsw i64 %i.mzq, 8              ; 12 uses
  %.val81028 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.mzw = getelementptr inbounds nuw i8, ptr %.val81028, i64 %i.mzv
  %.0.copyload.i88259 = load i32, ptr %i.mzw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88259) #7, !srcloc !19
  %i.mzx = icmp ugt i32 %.0.copyload.i88259, %.0.copyload.i88257
  br i1 %i.mzx, label %bb.byi, label %bb.byj

bb.byi:                                           ; preds = %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit88253
  %i.mzy = zext i32 %.0.copyload.i88257 to i64
  %.val85084 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.mzz = getelementptr inbounds nuw i8, ptr %.val85084, i64 %i.mzy
  store i8 76, ptr %i.mzz, align 1
  %i.naa = add nuw i32 %.0.copyload.i88257, 1     ; 2 uses
  %.val83378 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.nab = getelementptr inbounds nuw i8, ptr %.val83378, i64 %i.mzr
  store i32 %i.naa, ptr %i.nab, align 1
  br label %bb.byo

bb.byj:                                           ; preds = %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit88253
  %i.nac = add i32 %i.mzu, 1                      ; 2 uses
  %i.nad = icmp slt i32 %i.nac, 0
  br i1 %i.nad, label %.loopexit91567, label %bb.byk

bb.byk:                                           ; preds = %bb.byj
  %i.nae = sub i32 %.0.copyload.i88259, %.0.copyload.i88258 ; 2 uses
  %i.naf = shl i32 %i.nae, 1
  %i.nag = tail call i32 @llvm.umax.i32(i32 %i.naf, i32 %i.nac)
  %i.nah = icmp ugt i32 %i.nae, 1073741822
  %i.nai = select i1 %i.nah, i32 2147483647, i32 %i.nag ; 3 uses
  %.not78585 = icmp eq i32 %i.nai, 0
  br i1 %.not78585, label %bb.bym, label %bb.byl

bb.byl:                                           ; preds = %bb.byk
  %i.naj = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.nai) #7
  br label %bb.bym

bb.bym:                                           ; preds = %bb.byk, %bb.byl
  %.224 = phi i32 [ %i.naj, %bb.byl ], [ 0, %bb.byk ] ; 2 uses
  %i.nak = add i32 %.224, %i.mzu                  ; 2 uses
  %i.nal = zext i32 %i.nak to i64
  %.val85083 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.nam = getelementptr inbounds nuw i8, ptr %.val85083, i64 %i.nal
  store i8 76, ptr %i.nam, align 1
  %i.nan = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.224, i32 noundef %.0.copyload.i88258, i32 noundef %i.mzu) #7 ; 2 uses
  %i.nao = add i32 %i.nan, %i.nai
  %.val83377 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.nap = getelementptr inbounds nuw i8, ptr %.val83377, i64 %i.mzv
  store i32 %i.nao, ptr %i.nap, align 1
  %i.naq = add i32 %i.nak, 1                      ; 2 uses
  %.val83376 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.nar = getelementptr inbounds nuw i8, ptr %.val83376, i64 %i.mzr
  store i32 %i.naq, ptr %i.nar, align 1
  %.val83375 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.nas = getelementptr inbounds nuw i8, ptr %.val83375, i64 %i.mzq
  store i32 %i.nan, ptr %i.nas, align 1
  %.not78586 = icmp eq i32 %.0.copyload.i88258, 0
  br i1 %.not78586, label %bb.byo, label %bb.byn

bb.byn:                                           ; preds = %bb.bym
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i88258) #7
  %.val81027 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.nat = getelementptr inbounds nuw i8, ptr %.val81027, i64 %i.mzr
  %.0.copyload.i88260 = load i32, ptr %i.nat, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88260) #7, !srcloc !19
  br label %bb.byo

bb.byo:                                           ; preds = %bb.bym, %bb.byn, %bb.byi
  %.7275611 = phi i32 [ %i.naa, %bb.byi ], [ %i.naq, %bb.bym ], [ %.0.copyload.i88260, %bb.byn ] ; 4 uses
  %i.nau = add nuw nsw i64 %i.mzq, 12             ; 10 uses
  %.val86067 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.nav = getelementptr inbounds nuw i8, ptr %.val86067, i64 %i.nau
  %.0.copyload.i88261 = load i8, ptr %i.nav, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i88261) #7, !srcloc !21
  %i.naw = icmp ugt i32 %.4474979, 255
  %i.nax = zext i1 %i.naw to i8
  %i.nay = or i8 %.0.copyload.i88261, %i.nax
  %.val85082 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.naz = getelementptr inbounds nuw i8, ptr %.val85082, i64 %i.nau
  store i8 %i.nay, ptr %i.naz, align 1
  %.val81026 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.nba = getelementptr inbounds nuw i8, ptr %.val81026, i64 %i.mzv
  %.0.copyload.i88262 = load i32, ptr %i.nba, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88262) #7, !srcloc !19
  %i.nbb = icmp ugt i32 %.0.copyload.i88262, %.7275611
  br i1 %i.nbb, label %bb.byp, label %bb.byq

bb.byp:                                           ; preds = %bb.byo
  %i.nbc = zext i32 %.7275611 to i64
  %.val85081 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.nbd = trunc i32 %.4474979 to i8
  %i.nbe = getelementptr inbounds nuw i8, ptr %.val85081, i64 %i.nbc
  store i8 %i.nbd, ptr %i.nbe, align 1
  %i.nbf = add nuw i32 %.7275611, 1               ; 2 uses
  %.val83374 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.nbg = getelementptr inbounds nuw i8, ptr %.val83374, i64 %i.mzr
  store i32 %i.nbf, ptr %i.nbg, align 1
  br label %bb.byv

bb.byq:                                           ; preds = %bb.byo
  %.val81025 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.nbh = getelementptr inbounds nuw i8, ptr %.val81025, i64 %i.mzq
  %.0.copyload.i88263 = load i32, ptr %i.nbh, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88263) #7, !srcloc !19
  %i.nbi = sub i32 %.7275611, %.0.copyload.i88263 ; 3 uses
  %i.nbj = add i32 %i.nbi, 1                      ; 2 uses
  %i.nbk = icmp slt i32 %i.nbj, 0
  br i1 %i.nbk, label %.loopexit91567, label %bb.byr

bb.byr:                                           ; preds = %bb.byq
  %i.nbl = sub i32 %.0.copyload.i88262, %.0.copyload.i88263 ; 2 uses
  %i.nbm = shl i32 %i.nbl, 1
  %i.nbn = tail call i32 @llvm.umax.i32(i32 %i.nbm, i32 %i.nbj)
  %i.nbo = icmp ugt i32 %i.nbl, 1073741822
  %i.nbp = select i1 %i.nbo, i32 2147483647, i32 %i.nbn ; 3 uses
  %.not78587 = icmp eq i32 %i.nbp, 0
  br i1 %.not78587, label %bb.byt, label %bb.bys

bb.bys:                                           ; preds = %bb.byr
  %i.nbq = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.nbp) #7
  br label %bb.byt

bb.byt:                                           ; preds = %bb.byr, %bb.bys
  %.225 = phi i32 [ %i.nbq, %bb.bys ], [ 0, %bb.byr ] ; 2 uses
  %i.nbr = add i32 %.225, %i.nbi                  ; 2 uses
  %i.nbs = zext i32 %i.nbr to i64
  %.val85080 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.nbt = trunc i32 %.4474979 to i8
  %i.nbu = getelementptr inbounds nuw i8, ptr %.val85080, i64 %i.nbs
  store i8 %i.nbt, ptr %i.nbu, align 1
  %i.nbv = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.225, i32 noundef %.0.copyload.i88263, i32 noundef %i.nbi) #7 ; 2 uses
  %i.nbw = add i32 %i.nbv, %i.nbp
  %.val83373 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.nbx = getelementptr inbounds nuw i8, ptr %.val83373, i64 %i.mzv
  store i32 %i.nbw, ptr %i.nbx, align 1
  %i.nby = add i32 %i.nbr, 1                      ; 2 uses
  %.val83372 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.nbz = getelementptr inbounds nuw i8, ptr %.val83372, i64 %i.mzr
  store i32 %i.nby, ptr %i.nbz, align 1
  %.val83371 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.nca = getelementptr inbounds nuw i8, ptr %.val83371, i64 %i.mzq
  store i32 %i.nbv, ptr %i.nca, align 1
  %.not78588 = icmp eq i32 %.0.copyload.i88263, 0
  br i1 %.not78588, label %bb.byv, label %bb.byu

bb.byu:                                           ; preds = %bb.byt
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i88263) #7
  %.val81024 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ncb = getelementptr inbounds nuw i8, ptr %.val81024, i64 %i.mzr
  %.0.copyload.i88264 = load i32, ptr %i.ncb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88264) #7, !srcloc !19
  br label %bb.byv

bb.byv:                                           ; preds = %bb.byt, %bb.byu, %bb.byp
  %.7375612 = phi i32 [ %i.nbf, %bb.byp ], [ %i.nby, %bb.byt ], [ %.0.copyload.i88264, %bb.byu ] ; 4 uses
  %.val86066 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ncc = getelementptr inbounds nuw i8, ptr %.val86066, i64 %i.nau
  %.0.copyload.i88265 = load i8, ptr %i.ncc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i88265) #7, !srcloc !21
  %i.ncd = icmp ugt i32 %.4574980, 255
  %i.nce = zext i1 %i.ncd to i8
  %i.ncf = or i8 %.0.copyload.i88265, %i.nce
  %.val85079 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ncg = getelementptr inbounds nuw i8, ptr %.val85079, i64 %i.nau
  store i8 %i.ncf, ptr %i.ncg, align 1
  %.val81023 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.nch = getelementptr inbounds nuw i8, ptr %.val81023, i64 %i.mzv
  %.0.copyload.i88266 = load i32, ptr %i.nch, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88266) #7, !srcloc !19
  %i.nci = icmp ugt i32 %.0.copyload.i88266, %.7375612
  br i1 %i.nci, label %bb.byw, label %bb.byx

bb.byw:                                           ; preds = %bb.byv
  %i.ncj = zext i32 %.7375612 to i64
  %.val85078 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.nck = trunc i32 %.4574980 to i8
  %i.ncl = getelementptr inbounds nuw i8, ptr %.val85078, i64 %i.ncj
  store i8 %i.nck, ptr %i.ncl, align 1
  %i.ncm = add nuw i32 %.7375612, 1               ; 2 uses
  %.val83370 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ncn = getelementptr inbounds nuw i8, ptr %.val83370, i64 %i.mzr
  store i32 %i.ncm, ptr %i.ncn, align 1
  br label %bb.bzc

bb.byx:                                           ; preds = %bb.byv
  %.val81022 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.nco = getelementptr inbounds nuw i8, ptr %.val81022, i64 %i.mzq
  %.0.copyload.i88267 = load i32, ptr %i.nco, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88267) #7, !srcloc !19
end_hunk_7
begin_hunk_8_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3Agenerate0x28hermes0x3A0x3ASourceMapGenerator0x2A0x29:bb.a
  %i.qjw = add i32 %i.qjv, 1                      ; 2 uses
  %i.qjx = icmp sgt i32 %i.qjw, -1
  br i1 %i.qjx, label %bb.cre, label %.loopexit91567

bb.cre:                                           ; preds = %bb.crd
  %i.qjy = sub i32 %.0.copyload.i88770, %.0.copyload.i88771 ; 2 uses
  %i.qjz = shl i32 %i.qjy, 1
  %i.qka = tail call i32 @llvm.umax.i32(i32 %i.qjz, i32 %i.qjw)
  %i.qkb = icmp ugt i32 %i.qjy, 1073741822
  %i.qkc = select i1 %i.qkb, i32 2147483647, i32 %i.qka ; 3 uses
  %.not78463 = icmp eq i32 %i.qkc, 0
  br i1 %.not78463, label %bb.crg, label %bb.crf

bb.crf:                                           ; preds = %bb.cre
  %i.qkd = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.qkc) #7
  br label %bb.crg

bb.crg:                                           ; preds = %bb.cre, %bb.crf
  %.278 = phi i32 [ %i.qkd, %bb.crf ], [ 0, %bb.cre ] ; 2 uses
  %i.qke = add i32 %.278, %i.qjv                  ; 2 uses
  %i.qkf = zext i32 %i.qke to i64
  %.val84940 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.qkg = getelementptr inbounds nuw i8, ptr %.val84940, i64 %i.qkf
  store i8 97, ptr %i.qkg, align 1
  %i.qkh = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.278, i32 noundef %.0.copyload.i88771, i32 noundef %i.qjv) #7 ; 2 uses
  %i.qki = add i32 %i.qkh, %i.qkc
  %.val83146 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.qkj = getelementptr inbounds nuw i8, ptr %.val83146, i64 %i.qjn
  store i32 %i.qki, ptr %i.qkj, align 1
  %i.qkk = add i32 %i.qke, 1
  %.val83145 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.qkl = getelementptr inbounds nuw i8, ptr %.val83145, i64 %i.qjl
  store i32 %i.qkk, ptr %i.qkl, align 1
  %.val83144 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.qkm = getelementptr inbounds nuw i8, ptr %.val83144, i64 %i.qjk
  store i32 %i.qkh, ptr %i.qkm, align 1
  %.not78464 = icmp eq i32 %.0.copyload.i88771, 0
  br i1 %.not78464, label %bb.foa, label %bb.crh

bb.crh:                                           ; preds = %bb.crg
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i88771) #7
  br label %bb.foa

bb.cri:                                           ; preds = %bb.ce
  %i.qkn = add i32 %.975236, 8
  %.not78454 = icmp eq i32 %.975236, 0
  %i.qko = select i1 %.not78454, i32 0, i32 %i.qkn ; 3 uses
  %i.qkp = zext i32 %i.qko to i64                 ; 2 uses
  %.val86016 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.qkq = getelementptr inbounds nuw i8, ptr %.val86016, i64 %i.qkp
  %.0.copyload.i88772 = load i8, ptr %i.qkq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i88772) #7, !srcloc !21
  %i.qkr = add i8 %.0.copyload.i88772, -2
  %i.qks = icmp ult i8 %i.qkr, 107
  %.val80788 = load ptr, ptr %i.e, align 8, !tbaa !18 ; 2 uses
  br i1 %i.qks, label %bb.crj, label %bb.crk

bb.crj:                                           ; preds = %bb.cri
  %i.qkt = getelementptr inbounds nuw i8, ptr %.val80788, i64 %i.f
  %i.qku = getelementptr inbounds nuw i8, ptr %i.qkt, i64 8
  %.0.copyload.i88773 = load i32, ptr %i.qku, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88773) #7, !srcloc !19
  %i.qkv = tail call i32 @w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AgetRegister0x28hermes0x3A0x3AValue0x2A0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i88773, i32 noundef %i.qko)
  br label %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit88787

bb.crk:                                           ; preds = %bb.cri
  %i.qkw = getelementptr inbounds nuw i8, ptr %.val80788, i64 %i.qkp
  %i.qkx = getelementptr inbounds nuw i8, ptr %i.qkw, i64 36
  %.0.copyload.i.i88775 = load i32, ptr %i.qkx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i88775) #7, !srcloc !19
  %i.qky = zext i32 %.0.copyload.i.i88775 to i64  ; 2 uses
  %.val55.i88776 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.qkz = getelementptr inbounds nuw i8, ptr %.val55.i88776, i64 %i.qky
  %i.qla = getelementptr inbounds nuw i8, ptr %i.qkz, i64 92
  %.0.copyload.i57.i88777 = load i32, ptr %i.qla, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i57.i88777) #7, !srcloc !19
  %.not.i88778 = icmp eq i32 %.0.copyload.i57.i88777, 0
  br i1 %.not.i88778, label %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit88787, label %bb.crl

bb.crl:                                           ; preds = %bb.crk
  %.val54.i88779 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.qlb = getelementptr inbounds nuw i8, ptr %.val54.i88779, i64 %i.qky
  %i.qlc = getelementptr inbounds nuw i8, ptr %i.qlb, i64 88
  %.0.copyload.i58.i88780 = load i32, ptr %i.qlc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i58.i88780) #7, !srcloc !19
  %i.qld = shl i32 %.0.copyload.i57.i88777, 2
  %i.qle = add i32 %.0.copyload.i58.i88780, %i.qld
  %i.qlf = add i32 %.0.copyload.i57.i88777, 1073741823
  %i.qlg = and i32 %i.qlf, 1073741823
  %i.qlh = add nuw nsw i32 %i.qlg, 1
  br label %bb.crm

bb.crm:                                           ; preds = %bb.crn, %bb.crl
  %.051.i88781 = phi i32 [ 0, %bb.crl ], [ %i.qll, %bb.crn ] ; 2 uses
  %.050.i88782 = phi i32 [ %.0.copyload.i58.i88780, %bb.crl ], [ %i.qlm, %bb.crn ] ; 2 uses
  %i.qli = zext i32 %.050.i88782 to i64
  %.val.i88783 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.qlj = getelementptr inbounds nuw i8, ptr %.val.i88783, i64 %i.qli
  %.0.copyload.i59.i88784 = load i32, ptr %i.qlj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i59.i88784) #7, !srcloc !19
  %i.qlk = icmp eq i32 %.0.copyload.i59.i88784, %i.qko
  br i1 %i.qlk, label %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit88787, label %bb.crn

bb.crn:                                           ; preds = %bb.crm
  %i.qll = add nuw nsw i32 %.051.i88781, 1
  %i.qlm = add i32 %.050.i88782, 4                ; 2 uses
  %.not53.i88785 = icmp eq i32 %i.qlm, %i.qle
  br i1 %.not53.i88785, label %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit88787, label %bb.crm

w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit88787: ; preds = %bb.crn, %bb.crm, %bb.crk, %bb.crj
  %.6374998 = phi i32 [ %i.qkv, %bb.crj ], [ 0, %bb.crk ], [ %.051.i88781, %bb.crm ], [ %i.qlh, %bb.crn ] ; 3 uses
  %i.qln = add nuw nsw i64 %i.ux, 40              ; 2 uses
  %.val80787 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.qlo = getelementptr inbounds nuw i8, ptr %.val80787, i64 %i.qln
  %.0.copyload.i88788 = load i32, ptr %i.qlo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88788) #7, !srcloc !19
  %i.qlp = zext i32 %.0.copyload.i88788 to i64
  %.val80786 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.qlq = getelementptr inbounds nuw i8, ptr %.val80786, i64 %i.qlp
  %.0.copyload.i88789 = load i32, ptr %i.qlq, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88789) #7, !srcloc !19
  %i.qlr = zext i32 %.0.copyload.i88789 to i64    ; 2 uses
  %.val86015 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.qls = getelementptr inbounds nuw i8, ptr %.val86015, i64 %i.qlr
  %.0.copyload.i88790 = load i8, ptr %i.qls, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i88790) #7, !srcloc !21
  %i.qlt = add i8 %.0.copyload.i88790, -2
  %i.qlu = icmp ult i8 %i.qlt, 107
  %.val80785 = load ptr, ptr %i.e, align 8, !tbaa !18 ; 2 uses
  br i1 %i.qlu, label %bb.cro, label %bb.crp

bb.cro:                                           ; preds = %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit88787
  %i.qlv = getelementptr inbounds nuw i8, ptr %.val80785, i64 %i.f
  %i.qlw = getelementptr inbounds nuw i8, ptr %i.qlv, i64 8
  %.0.copyload.i88791 = load i32, ptr %i.qlw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88791) #7, !srcloc !19
  %i.qlx = tail call i32 @w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AgetRegister0x28hermes0x3A0x3AValue0x2A0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i88791, i32 noundef %.0.copyload.i88789)
  br label %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit88805

bb.crp:                                           ; preds = %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit88787
  %i.qly = getelementptr inbounds nuw i8, ptr %.val80785, i64 %i.qlr
  %i.qlz = getelementptr inbounds nuw i8, ptr %i.qly, i64 36
  %.0.copyload.i.i88793 = load i32, ptr %i.qlz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i88793) #7, !srcloc !19
  %i.qma = zext i32 %.0.copyload.i.i88793 to i64  ; 2 uses
  %.val55.i88794 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.qmb = getelementptr inbounds nuw i8, ptr %.val55.i88794, i64 %i.qma
  %i.qmc = getelementptr inbounds nuw i8, ptr %i.qmb, i64 92
  %.0.copyload.i57.i88795 = load i32, ptr %i.qmc, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i57.i88795) #7, !srcloc !19
  %.not.i88796 = icmp eq i32 %.0.copyload.i57.i88795, 0
  br i1 %.not.i88796, label %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit88805, label %bb.crq

bb.crq:                                           ; preds = %bb.crp
  %.val54.i88797 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.qmd = getelementptr inbounds nuw i8, ptr %.val54.i88797, i64 %i.qma
  %i.qme = getelementptr inbounds nuw i8, ptr %i.qmd, i64 88
  %.0.copyload.i58.i88798 = load i32, ptr %i.qme, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i58.i88798) #7, !srcloc !19
  %i.qmf = shl i32 %.0.copyload.i57.i88795, 2
  %i.qmg = add i32 %.0.copyload.i58.i88798, %i.qmf
  %i.qmh = add i32 %.0.copyload.i57.i88795, 1073741823
  %i.qmi = and i32 %i.qmh, 1073741823
  %i.qmj = add nuw nsw i32 %i.qmi, 1
  br label %bb.crr

bb.crr:                                           ; preds = %bb.crs, %bb.crq
  %.051.i88799 = phi i32 [ 0, %bb.crq ], [ %i.qmn, %bb.crs ] ; 2 uses
  %.050.i88800 = phi i32 [ %.0.copyload.i58.i88798, %bb.crq ], [ %i.qmo, %bb.crs ] ; 2 uses
  %i.qmk = zext i32 %.050.i88800 to i64
  %.val.i88801 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.qml = getelementptr inbounds nuw i8, ptr %.val.i88801, i64 %i.qmk
  %.0.copyload.i59.i88802 = load i32, ptr %i.qml, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i59.i88802) #7, !srcloc !19
  %i.qmm = icmp eq i32 %.0.copyload.i59.i88802, %.0.copyload.i88789
  br i1 %i.qmm, label %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit88805, label %bb.crs

bb.crs:                                           ; preds = %bb.crr
  %i.qmn = add nuw nsw i32 %.051.i88799, 1
  %i.qmo = add i32 %.050.i88800, 4                ; 2 uses
  %.not53.i88803 = icmp eq i32 %i.qmo, %i.qmg
  br i1 %.not53.i88803, label %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit88805, label %bb.crr

w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit88805: ; preds = %bb.crs, %bb.crr, %bb.crp, %bb.cro
  %.6474999 = phi i32 [ %i.qlx, %bb.cro ], [ 0, %bb.crp ], [ %.051.i88799, %bb.crr ], [ %i.qmj, %bb.crs ] ; 3 uses
  %.val80784 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.qmp = getelementptr inbounds nuw i8, ptr %.val80784, i64 %i.qln
  %.0.copyload.i88806 = load i32, ptr %i.qmp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88806) #7, !srcloc !19
  %i.qmq = zext i32 %.0.copyload.i88806 to i64
  %.val80783 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.qmr = getelementptr inbounds nuw i8, ptr %.val80783, i64 %i.qmq
  %i.qms = getelementptr inbounds nuw i8, ptr %i.qmr, i64 8
  %.0.copyload.i88807 = load i32, ptr %i.qms, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88807) #7, !srcloc !19
  %i.qmt = zext i32 %.0.copyload.i88807 to i64
  %.val86336 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.qmu = getelementptr inbounds nuw i8, ptr %.val86336, i64 %i.qmt
  %i.qmv = getelementptr inbounds nuw i8, ptr %i.qmu, i64 28
  %.0.copyload.i88808 = load i8, ptr %i.qmv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i88808) #7, !srcloc !42
  %.val80782 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.qmw = getelementptr inbounds nuw i8, ptr %.val80782, i64 %i.jm
  %.0.copyload.i88809 = load i32, ptr %i.qmw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88809) #7, !srcloc !19
  %i.qmx = zext i32 %.0.copyload.i88809 to i64    ; 11 uses
  %i.qmy = add nuw nsw i64 %i.qmx, 4              ; 12 uses
  %.val80781 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.qmz = getelementptr inbounds nuw i8, ptr %.val80781, i64 %i.qmy
  %.0.copyload.i88810 = load i32, ptr %i.qmz, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88810) #7, !srcloc !19
  %.val80780 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.qna = getelementptr inbounds nuw i8, ptr %.val80780, i64 %i.qmx
  %.0.copyload.i88811 = load i32, ptr %i.qna, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88811) #7, !srcloc !19
  %i.qnb = sub i32 %.0.copyload.i88810, %.0.copyload.i88811 ; 3 uses
  %i.qnc = add nuw nsw i64 %i.qmx, 8              ; 8 uses
  %.val80779 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.qnd = getelementptr inbounds nuw i8, ptr %.val80779, i64 %i.qnc
  %.0.copyload.i88812 = load i32, ptr %i.qnd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88812) #7, !srcloc !19
  %i.qne = icmp ugt i32 %.0.copyload.i88812, %.0.copyload.i88810
  br i1 %i.qne, label %bb.crt, label %bb.cru

bb.crt:                                           ; preds = %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit88805
  %i.qnf = zext i32 %.0.copyload.i88810 to i64
  %.val84939 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.qng = getelementptr inbounds nuw i8, ptr %.val84939, i64 %i.qnf
  store i8 94, ptr %i.qng, align 1
  %i.qnh = add nuw i32 %.0.copyload.i88810, 1     ; 2 uses
  %.val83143 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.qni = getelementptr inbounds nuw i8, ptr %.val83143, i64 %i.qmy
  store i32 %i.qnh, ptr %i.qni, align 1
  br label %bb.crz

bb.cru:                                           ; preds = %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit88805
  %i.qnj = add i32 %i.qnb, 1                      ; 2 uses
  %i.qnk = icmp slt i32 %i.qnj, 0
  br i1 %i.qnk, label %.loopexit91567, label %bb.crv

bb.crv:                                           ; preds = %bb.cru
  %i.qnl = sub i32 %.0.copyload.i88812, %.0.copyload.i88811 ; 2 uses
  %i.qnm = shl i32 %i.qnl, 1
  %i.qnn = tail call i32 @llvm.umax.i32(i32 %i.qnm, i32 %i.qnj)
  %i.qno = icmp ugt i32 %i.qnl, 1073741822
  %i.qnp = select i1 %i.qno, i32 2147483647, i32 %i.qnn ; 3 uses
  %.not78455 = icmp eq i32 %i.qnp, 0
  br i1 %.not78455, label %bb.crx, label %bb.crw

bb.crw:                                           ; preds = %bb.crv
  %i.qnq = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.qnp) #7
  br label %bb.crx

bb.crx:                                           ; preds = %bb.crv, %bb.crw
  %.279 = phi i32 [ %i.qnq, %bb.crw ], [ 0, %bb.crv ] ; 2 uses
  %i.qnr = add i32 %.279, %i.qnb                  ; 2 uses
  %i.qns = zext i32 %i.qnr to i64
  %.val84938 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.qnt = getelementptr inbounds nuw i8, ptr %.val84938, i64 %i.qns
  store i8 94, ptr %i.qnt, align 1
  %i.qnu = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.279, i32 noundef %.0.copyload.i88811, i32 noundef %i.qnb) #7 ; 2 uses
  %i.qnv = add i32 %i.qnu, %i.qnp
  %.val83142 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.qnw = getelementptr inbounds nuw i8, ptr %.val83142, i64 %i.qnc
  store i32 %i.qnv, ptr %i.qnw, align 1
  %i.qnx = add i32 %i.qnr, 1                      ; 2 uses
  %.val83141 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.qny = getelementptr inbounds nuw i8, ptr %.val83141, i64 %i.qmy
  store i32 %i.qnx, ptr %i.qny, align 1
  %.val83140 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.qnz = getelementptr inbounds nuw i8, ptr %.val83140, i64 %i.qmx
  store i32 %i.qnu, ptr %i.qnz, align 1
  %.not78456 = icmp eq i32 %.0.copyload.i88811, 0
  br i1 %.not78456, label %bb.crz, label %bb.cry

bb.cry:                                           ; preds = %bb.crx
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i88811) #7
  %.val80778 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.qoa = getelementptr inbounds nuw i8, ptr %.val80778, i64 %i.qmy
  %.0.copyload.i88813 = load i32, ptr %i.qoa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88813) #7, !srcloc !19
  br label %bb.crz

bb.crz:                                           ; preds = %bb.crx, %bb.cry, %bb.crt
  %.11075649 = phi i32 [ %i.qnh, %bb.crt ], [ %i.qnx, %bb.crx ], [ %.0.copyload.i88813, %bb.cry ] ; 4 uses
  %i.qob = add nuw nsw i64 %i.qmx, 12             ; 6 uses
  %.val86014 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.qoc = getelementptr inbounds nuw i8, ptr %.val86014, i64 %i.qob
  %.0.copyload.i88814 = load i8, ptr %i.qoc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i88814) #7, !srcloc !21
  %i.qod = icmp ugt i32 %.6374998, 255
  %i.qoe = zext i1 %i.qod to i8
  %i.qof = or i8 %.0.copyload.i88814, %i.qoe
  %.val84937 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.qog = getelementptr inbounds nuw i8, ptr %.val84937, i64 %i.qob
  store i8 %i.qof, ptr %i.qog, align 1
  %.val80777 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.qoh = getelementptr inbounds nuw i8, ptr %.val80777, i64 %i.qnc
  %.0.copyload.i88815 = load i32, ptr %i.qoh, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88815) #7, !srcloc !19
  %i.qoi = icmp ugt i32 %.0.copyload.i88815, %.11075649
  br i1 %i.qoi, label %bb.csa, label %bb.csb

bb.csa:                                           ; preds = %bb.crz
  %i.qoj = zext i32 %.11075649 to i64
  %.val84936 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.qok = trunc i32 %.6374998 to i8
  %i.qol = getelementptr inbounds nuw i8, ptr %.val84936, i64 %i.qoj
  store i8 %i.qok, ptr %i.qol, align 1
  %i.qom = add nuw i32 %.11075649, 1              ; 2 uses
  %.val83139 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.qon = getelementptr inbounds nuw i8, ptr %.val83139, i64 %i.qmy
  store i32 %i.qom, ptr %i.qon, align 1
  br label %bb.csg

bb.csb:                                           ; preds = %bb.crz
  %.val80776 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.qoo = getelementptr inbounds nuw i8, ptr %.val80776, i64 %i.qmx
  %.0.copyload.i88816 = load i32, ptr %i.qoo, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88816) #7, !srcloc !19
  %i.qop = sub i32 %.11075649, %.0.copyload.i88816 ; 3 uses
  %i.qoq = add i32 %i.qop, 1                      ; 2 uses
  %i.qor = icmp slt i32 %i.qoq, 0
  br i1 %i.qor, label %.loopexit91567, label %bb.csc

bb.csc:                                           ; preds = %bb.csb
  %i.qos = sub i32 %.0.copyload.i88815, %.0.copyload.i88816 ; 2 uses
  %i.qot = shl i32 %i.qos, 1
  %i.qou = tail call i32 @llvm.umax.i32(i32 %i.qot, i32 %i.qoq)
  %i.qov = icmp ugt i32 %i.qos, 1073741822
  %i.qow = select i1 %i.qov, i32 2147483647, i32 %i.qou ; 3 uses
  %.not78457 = icmp eq i32 %i.qow, 0
  br i1 %.not78457, label %bb.cse, label %bb.csd

bb.csd:                                           ; preds = %bb.csc
  %i.qox = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.qow) #7
  br label %bb.cse

bb.cse:                                           ; preds = %bb.csc, %bb.csd
  %.280 = phi i32 [ %i.qox, %bb.csd ], [ 0, %bb.csc ] ; 2 uses
  %i.qoy = add i32 %.280, %i.qop                  ; 2 uses
  %i.qoz = zext i32 %i.qoy to i64
  %.val84935 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.qpa = trunc i32 %.6374998 to i8
  %i.qpb = getelementptr inbounds nuw i8, ptr %.val84935, i64 %i.qoz
  store i8 %i.qpa, ptr %i.qpb, align 1
  %i.qpc = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.280, i32 noundef %.0.copyload.i88816, i32 noundef %i.qop) #7 ; 2 uses
  %i.qpd = add i32 %i.qpc, %i.qow
  %.val83138 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.qpe = getelementptr inbounds nuw i8, ptr %.val83138, i64 %i.qnc
  store i32 %i.qpd, ptr %i.qpe, align 1
  %i.qpf = add i32 %i.qoy, 1                      ; 2 uses
  %.val83137 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.qpg = getelementptr inbounds nuw i8, ptr %.val83137, i64 %i.qmy
  store i32 %i.qpf, ptr %i.qpg, align 1
  %.val83136 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.qph = getelementptr inbounds nuw i8, ptr %.val83136, i64 %i.qmx
  store i32 %i.qpc, ptr %i.qph, align 1
  %.not78458 = icmp eq i32 %.0.copyload.i88816, 0
  br i1 %.not78458, label %bb.csg, label %bb.csf

bb.csf:                                           ; preds = %bb.cse
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i88816) #7
  %.val80775 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.qpi = getelementptr inbounds nuw i8, ptr %.val80775, i64 %i.qmy
  %.0.copyload.i88817 = load i32, ptr %i.qpi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88817) #7, !srcloc !19
  br label %bb.csg

bb.csg:                                           ; preds = %bb.cse, %bb.csf, %bb.csa
  %.11175650 = phi i32 [ %i.qom, %bb.csa ], [ %i.qpf, %bb.cse ], [ %.0.copyload.i88817, %bb.csf ] ; 4 uses
  %.val86013 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.qpj = getelementptr inbounds nuw i8, ptr %.val86013, i64 %i.qob
  %.0.copyload.i88818 = load i8, ptr %i.qpj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i88818) #7, !srcloc !21
  %i.qpk = icmp ugt i32 %.6474999, 255
  %i.qpl = zext i1 %i.qpk to i8
  %i.qpm = or i8 %.0.copyload.i88818, %i.qpl
  %.val84934 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.qpn = getelementptr inbounds nuw i8, ptr %.val84934, i64 %i.qob
  store i8 %i.qpm, ptr %i.qpn, align 1
  %.val80774 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.qpo = getelementptr inbounds nuw i8, ptr %.val80774, i64 %i.qnc
  %.0.copyload.i88819 = load i32, ptr %i.qpo, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88819) #7, !srcloc !19
  %i.qpp = icmp ugt i32 %.0.copyload.i88819, %.11175650
  br i1 %i.qpp, label %bb.csh, label %bb.csi

bb.csh:                                           ; preds = %bb.csg
  %i.qpq = zext i32 %.11175650 to i64
  %.val84933 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.qpr = trunc i32 %.6474999 to i8
  %i.qps = getelementptr inbounds nuw i8, ptr %.val84933, i64 %i.qpq
  store i8 %i.qpr, ptr %i.qps, align 1
  %i.qpt = add nuw i32 %.11175650, 1              ; 2 uses
  %.val83135 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.qpu = getelementptr inbounds nuw i8, ptr %.val83135, i64 %i.qmy
  store i32 %i.qpt, ptr %i.qpu, align 1
  br label %bb.csn

bb.csi:                                           ; preds = %bb.csg
end_hunk_8
begin_hunk_9_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3AHBCISel0x3A0x3Agenerate0x28hermes0x3A0x3ASourceMapGenerator0x2A0x29:bb.a
  %i.sal = add i32 %.295, %i.sac                  ; 2 uses
  %i.sam = zext i32 %i.sal to i64
  %.val84895 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.san = trunc i32 %.7375008 to i8
  %i.sao = getelementptr inbounds nuw i8, ptr %.val84895, i64 %i.sam
  store i8 %i.san, ptr %i.sao, align 1
  %i.sap = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.295, i32 noundef %.0.copyload.i89099, i32 noundef %i.sac) #7 ; 2 uses
  %i.saq = add i32 %i.sap, %i.saj
  %.val83060 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.sar = getelementptr inbounds nuw i8, ptr %.val83060, i64 %i.rxi
  store i32 %i.saq, ptr %i.sar, align 1
  %i.sas = add i32 %i.sal, 1                      ; 2 uses
  %.val83059 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.sat = getelementptr inbounds nuw i8, ptr %.val83059, i64 %i.rxe
  store i32 %i.sas, ptr %i.sat, align 1
  %.val83058 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.sau = getelementptr inbounds nuw i8, ptr %.val83058, i64 %i.rxd
  store i32 %i.sap, ptr %i.sau, align 1
  %.not78415 = icmp eq i32 %.0.copyload.i89099, 0
  br i1 %.not78415, label %bb.czi, label %bb.czh

bb.czh:                                           ; preds = %bb.czg
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i89099) #7
  %.val80659 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.sav = getelementptr inbounds nuw i8, ptr %.val80659, i64 %i.rxe
  %.0.copyload.i89100 = load i32, ptr %i.sav, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i89100) #7, !srcloc !19
  br label %bb.czi

bb.czi:                                           ; preds = %bb.czg, %bb.czh, %bb.czc
  %.12375662 = phi i32 [ %i.rzz, %bb.czc ], [ %i.sas, %bb.czg ], [ %.0.copyload.i89100, %bb.czh ] ; 4 uses
  %.val85990 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.saw = getelementptr inbounds nuw i8, ptr %.val85990, i64 %i.ryh
  %.0.copyload.i89101 = load i8, ptr %i.saw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i89101) #7, !srcloc !21
  %i.sax = icmp ugt i32 %.7475009, 255
  %i.say = zext i1 %i.sax to i8
  %i.saz = or i8 %.0.copyload.i89101, %i.say
  %.val84894 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.sba = getelementptr inbounds nuw i8, ptr %.val84894, i64 %i.ryh
  store i8 %i.saz, ptr %i.sba, align 1
  %.val80658 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.sbb = getelementptr inbounds nuw i8, ptr %.val80658, i64 %i.rxi
  %.0.copyload.i89102 = load i32, ptr %i.sbb, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i89102) #7, !srcloc !19
  %i.sbc = icmp ugt i32 %.0.copyload.i89102, %.12375662
  br i1 %i.sbc, label %bb.czj, label %bb.czk

bb.czj:                                           ; preds = %bb.czi
  %i.sbd = zext i32 %.12375662 to i64
  %.val84893 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.sbe = trunc i32 %.7475009 to i8
  %i.sbf = getelementptr inbounds nuw i8, ptr %.val84893, i64 %i.sbd
  store i8 %i.sbe, ptr %i.sbf, align 1
  %i.sbg = add nuw i32 %.12375662, 1
  %.val83057 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.sbh = getelementptr inbounds nuw i8, ptr %.val83057, i64 %i.rxe
  store i32 %i.sbg, ptr %i.sbh, align 1
  br label %bb.foa

bb.czk:                                           ; preds = %bb.czi
  %.val80657 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.sbi = getelementptr inbounds nuw i8, ptr %.val80657, i64 %i.rxd
  %.0.copyload.i89103 = load i32, ptr %i.sbi, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i89103) #7, !srcloc !19
  %i.sbj = sub i32 %.12375662, %.0.copyload.i89103 ; 3 uses
  %i.sbk = add i32 %i.sbj, 1                      ; 2 uses
  %i.sbl = icmp slt i32 %i.sbk, 0
  br i1 %i.sbl, label %.loopexit91567, label %bb.czl

bb.czl:                                           ; preds = %bb.czk
  %i.sbm = sub i32 %.0.copyload.i89102, %.0.copyload.i89103 ; 2 uses
  %i.sbn = shl i32 %i.sbm, 1
  %i.sbo = tail call i32 @llvm.umax.i32(i32 %i.sbn, i32 %i.sbk)
  %i.sbp = icmp ugt i32 %i.sbm, 1073741822
  %i.sbq = select i1 %i.sbp, i32 2147483647, i32 %i.sbo ; 3 uses
  %.not78416 = icmp eq i32 %i.sbq, 0
  br i1 %.not78416, label %bb.czn, label %bb.czm

bb.czm:                                           ; preds = %bb.czl
  %i.sbr = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.sbq) #7
  br label %bb.czn

bb.czn:                                           ; preds = %bb.czl, %bb.czm
  %.296 = phi i32 [ %i.sbr, %bb.czm ], [ 0, %bb.czl ] ; 2 uses
  %i.sbs = add i32 %.296, %i.sbj                  ; 2 uses
  %i.sbt = zext i32 %i.sbs to i64
  %.val84892 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.sbu = trunc i32 %.7475009 to i8
  %i.sbv = getelementptr inbounds nuw i8, ptr %.val84892, i64 %i.sbt
  store i8 %i.sbu, ptr %i.sbv, align 1
  %i.sbw = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.296, i32 noundef %.0.copyload.i89103, i32 noundef %i.sbj) #7 ; 2 uses
  %i.sbx = add i32 %i.sbw, %i.sbq
  %.val83056 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.sby = getelementptr inbounds nuw i8, ptr %.val83056, i64 %i.rxi
  store i32 %i.sbx, ptr %i.sby, align 1
  %i.sbz = add i32 %i.sbs, 1
  %.val83055 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.sca = getelementptr inbounds nuw i8, ptr %.val83055, i64 %i.rxe
  store i32 %i.sbz, ptr %i.sca, align 1
  %.val83054 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.scb = getelementptr inbounds nuw i8, ptr %.val83054, i64 %i.rxd
  store i32 %i.sbw, ptr %i.scb, align 1
  %.not78417 = icmp eq i32 %.0.copyload.i89103, 0
  br i1 %.not78417, label %bb.foa, label %bb.czo

bb.czo:                                           ; preds = %bb.czn
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i89103) #7
  br label %bb.foa

bb.czp:                                           ; preds = %bb.ce
  %i.scc = add nuw nsw i64 %i.ux, 40              ; 2 uses
  %.val80656 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.scd = getelementptr inbounds nuw i8, ptr %.val80656, i64 %i.scc
  %.0.copyload.i89104 = load i32, ptr %i.scd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i89104) #7, !srcloc !19
  %i.sce = zext i32 %.0.copyload.i89104 to i64
  %.val80655 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.scf = getelementptr inbounds nuw i8, ptr %.val80655, i64 %i.sce
  %.0.copyload.i89105 = load i32, ptr %i.scf, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i89105) #7, !srcloc !19
  %i.scg = zext i32 %.0.copyload.i89105 to i64    ; 2 uses
  %.val85989 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.sch = getelementptr inbounds nuw i8, ptr %.val85989, i64 %i.scg
  %.0.copyload.i89106 = load i8, ptr %i.sch, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i89106) #7, !srcloc !21
  %i.sci = add i8 %.0.copyload.i89106, -2
  %i.scj = icmp ult i8 %i.sci, 107
  %.val80654 = load ptr, ptr %i.e, align 8, !tbaa !18 ; 2 uses
  br i1 %i.scj, label %bb.czq, label %bb.czr

bb.czq:                                           ; preds = %bb.czp
  %i.sck = getelementptr inbounds nuw i8, ptr %.val80654, i64 %i.f
  %i.scl = getelementptr inbounds nuw i8, ptr %i.sck, i64 8
  %.0.copyload.i89107 = load i32, ptr %i.scl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i89107) #7, !srcloc !19
  %i.scm = tail call i32 @w2c_hermes_hermes0x3A0x3ARegisterAllocator0x3A0x3AgetRegister0x28hermes0x3A0x3AValue0x2A0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i89107, i32 noundef %.0.copyload.i89105)
  br label %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit89121

bb.czr:                                           ; preds = %bb.czp
  %i.scn = getelementptr inbounds nuw i8, ptr %.val80654, i64 %i.scg
  %i.sco = getelementptr inbounds nuw i8, ptr %i.scn, i64 36
  %.0.copyload.i.i89109 = load i32, ptr %i.sco, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i89109) #7, !srcloc !19
  %i.scp = zext i32 %.0.copyload.i.i89109 to i64  ; 2 uses
  %.val55.i89110 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.scq = getelementptr inbounds nuw i8, ptr %.val55.i89110, i64 %i.scp
  %i.scr = getelementptr inbounds nuw i8, ptr %i.scq, i64 92
  %.0.copyload.i57.i89111 = load i32, ptr %i.scr, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i57.i89111) #7, !srcloc !19
  %.not.i89112 = icmp eq i32 %.0.copyload.i57.i89111, 0
  br i1 %.not.i89112, label %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit89121, label %bb.czs

bb.czs:                                           ; preds = %bb.czr
  %.val54.i89113 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.scs = getelementptr inbounds nuw i8, ptr %.val54.i89113, i64 %i.scp
  %i.sct = getelementptr inbounds nuw i8, ptr %i.scs, i64 88
  %.0.copyload.i58.i89114 = load i32, ptr %i.sct, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i58.i89114) #7, !srcloc !19
  %i.scu = shl i32 %.0.copyload.i57.i89111, 2
  %i.scv = add i32 %.0.copyload.i58.i89114, %i.scu
  %i.scw = add i32 %.0.copyload.i57.i89111, 1073741823
  %i.scx = and i32 %i.scw, 1073741823
  %i.scy = add nuw nsw i32 %i.scx, 1
  br label %bb.czt

bb.czt:                                           ; preds = %bb.czu, %bb.czs
  %.051.i89115 = phi i32 [ 0, %bb.czs ], [ %i.sdc, %bb.czu ] ; 2 uses
  %.050.i89116 = phi i32 [ %.0.copyload.i58.i89114, %bb.czs ], [ %i.sdd, %bb.czu ] ; 2 uses
  %i.scz = zext i32 %.050.i89116 to i64
  %.val.i89117 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.sda = getelementptr inbounds nuw i8, ptr %.val.i89117, i64 %i.scz
  %.0.copyload.i59.i89118 = load i32, ptr %i.sda, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i59.i89118) #7, !srcloc !19
  %i.sdb = icmp eq i32 %.0.copyload.i59.i89118, %.0.copyload.i89105
  br i1 %i.sdb, label %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit89121, label %bb.czu

bb.czu:                                           ; preds = %bb.czt
  %i.sdc = add nuw nsw i32 %.051.i89115, 1
  %i.sdd = add i32 %.050.i89116, 4                ; 2 uses
  %.not53.i89119 = icmp eq i32 %i.sdd, %i.scv
  br i1 %.not53.i89119, label %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit89121, label %bb.czt

w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit89121: ; preds = %bb.czu, %bb.czt, %bb.czr, %bb.czq
  %.7575010 = phi i32 [ %i.scm, %bb.czq ], [ 0, %bb.czr ], [ %.051.i89115, %bb.czt ], [ %i.scy, %bb.czu ] ; 3 uses
  %.val80653 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.sde = getelementptr inbounds nuw i8, ptr %.val80653, i64 %i.scc
  %.0.copyload.i89122 = load i32, ptr %i.sde, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i89122) #7, !srcloc !19
  %i.sdf = zext i32 %.0.copyload.i89122 to i64
  %.val80652 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.sdg = getelementptr inbounds nuw i8, ptr %.val80652, i64 %i.sdf
  %i.sdh = getelementptr inbounds nuw i8, ptr %i.sdg, i64 8
  %.0.copyload.i89123 = load i32, ptr %i.sdh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i89123) #7, !srcloc !19
  %i.sdi = zext i32 %.0.copyload.i89123 to i64
  %.val86335 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.sdj = getelementptr inbounds nuw i8, ptr %.val86335, i64 %i.sdi
  %i.sdk = getelementptr inbounds nuw i8, ptr %i.sdj, i64 28
  %.0.copyload.i89124 = load i8, ptr %i.sdk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i89124) #7, !srcloc !42
  %.val80651 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.sdl = getelementptr inbounds nuw i8, ptr %.val80651, i64 %i.jm
  %.0.copyload.i89125 = load i32, ptr %i.sdl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i89125) #7, !srcloc !19
  %i.sdm = zext i32 %.0.copyload.i89125 to i64    ; 9 uses
  %i.sdn = add nuw nsw i64 %i.sdm, 4              ; 9 uses
  %.val80650 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.sdo = getelementptr inbounds nuw i8, ptr %.val80650, i64 %i.sdn
  %.0.copyload.i89126 = load i32, ptr %i.sdo, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i89126) #7, !srcloc !19
  %.val80649 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.sdp = getelementptr inbounds nuw i8, ptr %.val80649, i64 %i.sdm
  %.0.copyload.i89127 = load i32, ptr %i.sdp, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i89127) #7, !srcloc !19
  %i.sdq = sub i32 %.0.copyload.i89126, %.0.copyload.i89127 ; 3 uses
  %i.sdr = add nuw nsw i64 %i.sdm, 8              ; 6 uses
  %.val80648 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.sds = getelementptr inbounds nuw i8, ptr %.val80648, i64 %i.sdr
  %.0.copyload.i89128 = load i32, ptr %i.sds, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i89128) #7, !srcloc !19
  %i.sdt = icmp ugt i32 %.0.copyload.i89128, %.0.copyload.i89126
  br i1 %i.sdt, label %bb.czv, label %bb.czw

bb.czv:                                           ; preds = %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit89121
  %i.sdu = zext i32 %.0.copyload.i89126 to i64
  %.val84891 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.sdv = getelementptr inbounds nuw i8, ptr %.val84891, i64 %i.sdu
  store i8 -115, ptr %i.sdv, align 1
  %i.sdw = add nuw i32 %.0.copyload.i89126, 1     ; 2 uses
  %.val83053 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.sdx = getelementptr inbounds nuw i8, ptr %.val83053, i64 %i.sdn
  store i32 %i.sdw, ptr %i.sdx, align 1
  br label %bb.dab

bb.czw:                                           ; preds = %w2c_hermes_hermes0x3A0x3AVariable0x3A0x3AgetIndexInVariableList0x280x290x20const.exit89121
  %i.sdy = add i32 %i.sdq, 1                      ; 2 uses
  %i.sdz = icmp slt i32 %i.sdy, 0
  br i1 %i.sdz, label %.loopexit91567, label %bb.czx

bb.czx:                                           ; preds = %bb.czw
  %i.sea = sub i32 %.0.copyload.i89128, %.0.copyload.i89127 ; 2 uses
  %i.seb = shl i32 %i.sea, 1
  %i.sec = tail call i32 @llvm.umax.i32(i32 %i.seb, i32 %i.sdy)
  %i.sed = icmp ugt i32 %i.sea, 1073741822
  %i.see = select i1 %i.sed, i32 2147483647, i32 %i.sec ; 3 uses
  %.not78403 = icmp eq i32 %i.see, 0
  br i1 %.not78403, label %bb.czz, label %bb.czy

bb.czy:                                           ; preds = %bb.czx
  %i.sef = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.see) #7
  br label %bb.czz

bb.czz:                                           ; preds = %bb.czx, %bb.czy
  %.297 = phi i32 [ %i.sef, %bb.czy ], [ 0, %bb.czx ] ; 2 uses
  %i.seg = add i32 %.297, %i.sdq                  ; 2 uses
  %i.seh = zext i32 %i.seg to i64
  %.val84890 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.sei = getelementptr inbounds nuw i8, ptr %.val84890, i64 %i.seh
  store i8 -115, ptr %i.sei, align 1
  %i.sej = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.297, i32 noundef %.0.copyload.i89127, i32 noundef %i.sdq) #7 ; 2 uses
  %i.sek = add i32 %i.sej, %i.see
  %.val83052 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.sel = getelementptr inbounds nuw i8, ptr %.val83052, i64 %i.sdr
  store i32 %i.sek, ptr %i.sel, align 1
  %i.sem = add i32 %i.seg, 1                      ; 2 uses
  %.val83051 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.sen = getelementptr inbounds nuw i8, ptr %.val83051, i64 %i.sdn
  store i32 %i.sem, ptr %i.sen, align 1
  %.val83050 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.seo = getelementptr inbounds nuw i8, ptr %.val83050, i64 %i.sdm
  store i32 %i.sej, ptr %i.seo, align 1
  %.not78404 = icmp eq i32 %.0.copyload.i89127, 0
  br i1 %.not78404, label %bb.dab, label %bb.daa

bb.daa:                                           ; preds = %bb.czz
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i89127) #7
  %.val80647 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.sep = getelementptr inbounds nuw i8, ptr %.val80647, i64 %i.sdn
  %.0.copyload.i89129 = load i32, ptr %i.sep, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i89129) #7, !srcloc !19
  br label %bb.dab

bb.dab:                                           ; preds = %bb.czz, %bb.daa, %bb.czv
  %.12475663 = phi i32 [ %i.sdw, %bb.czv ], [ %i.sem, %bb.czz ], [ %.0.copyload.i89129, %bb.daa ] ; 4 uses
  %i.seq = add nuw nsw i64 %i.sdm, 12             ; 4 uses
  %.val85988 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ser = getelementptr inbounds nuw i8, ptr %.val85988, i64 %i.seq
  %.0.copyload.i89130 = load i8, ptr %i.ser, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i89130) #7, !srcloc !21
  %i.ses = icmp ugt i32 %.7575010, 255
  %i.set = zext i1 %i.ses to i8
  %i.seu = or i8 %.0.copyload.i89130, %i.set
  %.val84889 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.sev = getelementptr inbounds nuw i8, ptr %.val84889, i64 %i.seq
  store i8 %i.seu, ptr %i.sev, align 1
  %.val80646 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.sew = getelementptr inbounds nuw i8, ptr %.val80646, i64 %i.sdr
  %.0.copyload.i89131 = load i32, ptr %i.sew, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i89131) #7, !srcloc !19
  %i.sex = icmp ugt i32 %.0.copyload.i89131, %.12475663
  br i1 %i.sex, label %bb.dac, label %bb.dad

bb.dac:                                           ; preds = %bb.dab
  %i.sey = zext i32 %.12475663 to i64
  %.val84888 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.sez = trunc i32 %.7575010 to i8
  %i.sfa = getelementptr inbounds nuw i8, ptr %.val84888, i64 %i.sey
  store i8 %i.sez, ptr %i.sfa, align 1
  %i.sfb = add nuw i32 %.12475663, 1              ; 2 uses
  %.val83049 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.sfc = getelementptr inbounds nuw i8, ptr %.val83049, i64 %i.sdn
  store i32 %i.sfb, ptr %i.sfc, align 1
  br label %bb.dai

bb.dad:                                           ; preds = %bb.dab
  %.val80645 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.sfd = getelementptr inbounds nuw i8, ptr %.val80645, i64 %i.sdm
  %.0.copyload.i89132 = load i32, ptr %i.sfd, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i89132) #7, !srcloc !19
  %i.sfe = sub i32 %.12475663, %.0.copyload.i89132 ; 3 uses
  %i.sff = add i32 %i.sfe, 1                      ; 2 uses
  %i.sfg = icmp slt i32 %i.sff, 0
  br i1 %i.sfg, label %.loopexit91567, label %bb.dae

bb.dae:                                           ; preds = %bb.dad
  %i.sfh = sub i32 %.0.copyload.i89131, %.0.copyload.i89132 ; 2 uses
  %i.sfi = shl i32 %i.sfh, 1
  %i.sfj = tail call i32 @llvm.umax.i32(i32 %i.sfi, i32 %i.sff)
  %i.sfk = icmp ugt i32 %i.sfh, 1073741822
  %i.sfl = select i1 %i.sfk, i32 2147483647, i32 %i.sfj ; 3 uses
  %.not78405 = icmp eq i32 %i.sfl, 0
  br i1 %.not78405, label %bb.dag, label %bb.daf

bb.daf:                                           ; preds = %bb.dae
  %i.sfm = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.sfl) #7
  br label %bb.dag

bb.dag:                                           ; preds = %bb.dae, %bb.daf
  %.298 = phi i32 [ %i.sfm, %bb.daf ], [ 0, %bb.dae ] ; 2 uses
  %i.sfn = add i32 %.298, %i.sfe                  ; 2 uses
  %i.sfo = zext i32 %i.sfn to i64
  %.val84887 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.sfp = trunc i32 %.7575010 to i8
  %i.sfq = getelementptr inbounds nuw i8, ptr %.val84887, i64 %i.sfo
  store i8 %i.sfp, ptr %i.sfq, align 1
  %i.sfr = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %.298, i32 noundef %.0.copyload.i89132, i32 noundef %i.sfe) #7 ; 2 uses
  %i.sfs = add i32 %i.sfr, %i.sfl
  %.val83048 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.sft = getelementptr inbounds nuw i8, ptr %.val83048, i64 %i.sdr
  store i32 %i.sfs, ptr %i.sft, align 1
  %i.sfu = add i32 %i.sfn, 1                      ; 2 uses
  %.val83047 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.sfv = getelementptr inbounds nuw i8, ptr %.val83047, i64 %i.sdn
  store i32 %i.sfu, ptr %i.sfv, align 1
  %.val83046 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.sfw = getelementptr inbounds nuw i8, ptr %.val83046, i64 %i.sdm
  store i32 %i.sfr, ptr %i.sfw, align 1
  %.not78406 = icmp eq i32 %.0.copyload.i89132, 0
  br i1 %.not78406, label %bb.dai, label %bb.dah

bb.dah:                                           ; preds = %bb.dag
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i89132) #7
  %.val80644 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.sfx = getelementptr inbounds nuw i8, ptr %.val80644, i64 %i.sdn
  %.0.copyload.i89133 = load i32, ptr %i.sfx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i89133) #7, !srcloc !19
  br label %bb.dai

bb.dai:                                           ; preds = %bb.dag, %bb.dah, %bb.dac
  %.12575664 = phi i32 [ %i.sfb, %bb.dac ], [ %i.sfu, %bb.dag ], [ %.0.copyload.i89133, %bb.dah ] ; 4 uses
  %.val85987 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.sfy = getelementptr inbounds nuw i8, ptr %.val85987, i64 %i.seq
  %.0.copyload.i89134 = load i8, ptr %i.sfy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i89134) #7, !srcloc !21
  %.val84886 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.sfz = getelementptr inbounds nuw i8, ptr %.val84886, i64 %i.seq
  store i8 %.0.copyload.i89134, ptr %i.sfz, align 1
  %.val80643 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.sga = getelementptr inbounds nuw i8, ptr %.val80643, i64 %i.sdr
  %.0.copyload.i89135 = load i32, ptr %i.sga, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i89135) #7, !srcloc !19
  %i.sgb = icmp ugt i32 %.0.copyload.i89135, %.12575664
  br i1 %i.sgb, label %bb.daj, label %bb.dak

bb.daj:                                           ; preds = %bb.dai
  %i.sgc = zext i32 %.12575664 to i64
  %.val84885 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.sgd = getelementptr inbounds nuw i8, ptr %.val84885, i64 %i.sgc
  store i8 %.0.copyload.i89124, ptr %i.sgd, align 1
  %i.sge = add nuw i32 %.12575664, 1
  %.val83045 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.sgf = getelementptr inbounds nuw i8, ptr %.val83045, i64 %i.sdn
  store i32 %i.sge, ptr %i.sgf, align 1
  br label %bb.foa

bb.dak:                                           ; preds = %bb.dai
  %.val80642 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.sgg = getelementptr inbounds nuw i8, ptr %.val80642, i64 %i.sdm
  %.0.copyload.i89136 = load i32, ptr %i.sgg, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i89136) #7, !srcloc !19
end_hunk_9
begin_hunk_10_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3ALowerSwitchIntoJumpTables0x3A0x3ArunOnFunction0x28hermes0x3A0x3AFunction0x2A0x29:bb.a
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
  %.0770 = phi i32 [ %i.gk, %bb.z ], [ %.0.peel, %bb.r ]
  %.0769 = phi i32 [ %i.gl, %bb.z ], [ %.0.peel, %bb.r ]
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
  %.0 = select i1 %i.ff, i32 %i.fg, i32 0         ; 4 uses
  %i.fh = uitofp i32 %.0 to double
  %i.fi = fcmp une double %.0.copyload.i931, %i.fh
  br i1 %i.fi, label %.loopexit1051, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not806 = icmp ne i32 %.0, 0
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
  %i.gk = tail call i32 @llvm.umin.i32(i32 %.0, i32 %.0770) ; 4 uses
  %i.gl = tail call i32 @llvm.umax.i32(i32 %.0, i32 %.0769) ; 3 uses
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
end_hunk_10
begin_hunk_11_@w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3ABCProviderFromBuffer0x3A0x3AgetStringTableEntry0x28unsigned0x20int0x290x20const:bb.a
bb.b:                                             ; preds = %bb.a
  %.val63 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %.val63, i64 %i.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 160
  %.0.copyload.i69 = load i32, ptr %i.l, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i69) #7, !srcloc !19
  %i.m = shl nsw i32 %.0.copyload.i68, 2
  %i.n = and i32 %i.m, 67108856
  %i.o = add i32 %.0.copyload.i69, %i.n
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %.val62 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %.val62, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %.0.copyload.i70 = load i32, ptr %i.r, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i70) #7, !srcloc !19
  %.val = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 %i.p
  %.0.copyload.i71 = load i32, ptr %i.s, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i71) #7, !srcloc !19
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.t = lshr i32 %.0.copyload.i68, 24
  %i.u = lshr i32 %.0.copyload.i68, 1
  %i.v = and i32 %i.u, 8388607
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.060 = phi i32 [ %.0.copyload.i70, %bb.b ], [ %i.j, %bb.c ]
  %.059 = phi i32 [ %i.j, %bb.b ], [ %i.t, %bb.c ]
  %.0 = phi i32 [ %.0.copyload.i71, %bb.b ], [ %i.v, %bb.c ]
  %i.w = zext i32 %1 to i64                       ; 2 uses
  %.val67 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %.val67, i64 %i.w
  store i32 %.0, ptr %i.x, align 1
  %i.y = or i32 %.059, %.060
  %.val66 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %.val66, i64 %i.w
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 %i.y, ptr %i.aa, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3ABCProviderFromBuffer0x3A0x3AgetSourceHash0x280x290x20const(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.b = zext i32 %2 to i64
  %.val23 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %.val23, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 148
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %i.e = zext i32 %.0.copyload.i to i64           ; 3 uses
  %.val26 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val26, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %.0.copyload.i29 = load i64, ptr %i.g, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i29) #7, !srcloc !20
  %i.h = zext i32 %1 to i64                       ; 3 uses
  %.val28 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %.val28, i64 %i.h
  store i64 %.0.copyload.i29, ptr %i.i, align 1
  %.val = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 %i.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %.0.copyload.i30 = load i32, ptr %i.k, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i30) #7, !srcloc !19
  %.val24 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %.val24, i64 %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i32 %.0.copyload.i30, ptr %i.m, align 1
  %.val25 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %.val25, i64 %i.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %.0.copyload.i31 = load i64, ptr %i.o, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i31) #7, !srcloc !20
  %.val27 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %.val27, i64 %i.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %.0.copyload.i31, ptr %i.q, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3ABCProviderFromBuffer0x3A0x3AgetRawBuffer0x280x290x20const(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.b = zext i32 %2 to i64                       ; 2 uses
  %.val18 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %.val18, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 148
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %.val17 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %.val17, i64 %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %.0.copyload.i21 = load i32, ptr %i.f, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i21) #7, !srcloc !19
  %i.g = zext i32 %.0.copyload.i21 to i64
  %.val = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.0.copyload.i22 = load i32, ptr %i.i, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i22) #7, !srcloc !19
  %i.j = zext i32 %1 to i64                       ; 2 uses
  %.val20 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %.val20, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 %.0.copyload.i22, ptr %i.l, align 1
  %.val19 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %.val19, i64 %i.j
  store i32 %.0.copyload.i, ptr %i.m, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3ABCProviderFromBuffer0x3A0x3AgetPageAccessTracker0x280x29(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = zext i32 %1 to i64
  %.val = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  ret i32 %.0.copyload.i
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3ABCProviderFromBuffer0x3A0x3AgetFunctionHeader0x28unsigned0x20int0x290x20const(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.b = zext i32 %1 to i64                       ; 2 uses
  %.val36 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %.val36, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %i.e = shl i32 %2, 4
  %i.f = add i32 %.0.copyload.i, %i.e             ; 2 uses
  %i.g = zext i32 %i.f to i64                     ; 3 uses
  %.val37 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val37, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 15
  %.0.copyload.i38 = load i8, ptr %i.i, align 1   ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i38) #7, !srcloc !21
  %i.j = and i8 %.0.copyload.i38, 32
  %.not = icmp eq i8 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val35 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %.val35, i64 %i.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 148
  %.0.copyload.i39 = load i32, ptr %i.l, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i39) #7, !srcloc !19
  %.val34 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %.val34, i64 %i.g
  %.0.copyload.i40 = load i32, ptr %i.m, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i40) #7, !srcloc !19
  %i.n = and i32 %.0.copyload.i40, 33554431
  %.val = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 %i.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.0.copyload.i41 = load i32, ptr %i.p, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i41) #7, !srcloc !19
  %i.q = shl i32 %.0.copyload.i41, 16
  %i.r = or i32 %i.q, %i.n
  %i.s = add i32 %.0.copyload.i39, 1
  %i.t = add i32 %i.s, %i.r
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.t, %bb.b ], [ %i.f, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3ABCProviderFromBuffer0x3A0x3AgetExceptionTable0x28unsigned0x20int0x290x20const(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 10 uses
  %i.b = zext i32 %2 to i64                       ; 3 uses
  %.val117 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %.val117, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %i.e = shl i32 %3, 4
  %i.f = add i32 %.0.copyload.i, %i.e
  %i.g = zext i32 %i.f to i64                     ; 5 uses
  %.val122 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val122, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.0.copyload.i124 = load i32, ptr %i.i, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i124) #7, !srcloc !38
  %.val123 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %.val123, i64 %i.g
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 14
  %.0.copyload.i125 = load i8, ptr %i.k, align 1
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i125) #7, !srcloc !42
  %.val121 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %.val121, i64 %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %.0.copyload.i126 = load i16, ptr %i.m, align 1
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i126) #7, !srcloc !37
  %.val116 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %.val116, i64 %i.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 148
  %.0.copyload.i127 = load i32, ptr %i.o, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i127) #7, !srcloc !19
  %.val120 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %.val120, i64 %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 15
  %.0.copyload.i128 = load i8, ptr %i.q, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i128) #7, !srcloc !21
  %i.r = zext i8 %.0.copyload.i128 to i32         ; 2 uses
  %i.s = and i32 %i.r, 32
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val118 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %.val118, i64 %i.g
  %.0.copyload.i129 = load i64, ptr %i.t, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i129) #7, !srcloc !20
  %i.u = trunc i64 %.0.copyload.i129 to i32
  %i.v = and i32 %i.u, 33554431
  %i.w = shl i32 %.0.copyload.i124, 16
  %i.x = or i32 %i.v, %i.w
  %i.y = add i32 %.0.copyload.i127, 31
  %i.z = add i32 %i.y, %i.x
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.aa = and i32 %.0.copyload.i124, 33554431
  %i.ab = add i32 %.0.copyload.i127, %i.aa
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0110 = phi i32 [ %i.z, %bb.b ], [ %i.ab, %bb.c ]
  %i.ac = and i32 %i.r, 8
  %.not114 = icmp eq i32 %i.ac, 0
  br i1 %.not114, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = add i32 %.0110, 3
  %i.ae = and i32 %i.ad, -4                       ; 2 uses
  %i.af = add i32 %i.ae, 4                        ; 3 uses
  %.val115 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %.val115, i64 %i.b
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 188
  %.0.copyload.i130 = load i32, ptr %i.ah, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i130) #7, !srcloc !19
  %i.ai = icmp ugt i32 %i.af, %.0.copyload.i130
  br i1 %i.ai, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = zext i32 %i.ae to i64
  %.val = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 %i.aj
  %.0.copyload.i131 = load i32, ptr %i.ak, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i131) #7, !srcloc !19
  %i.al = sub nuw i32 %.0.copyload.i130, %i.af
  %i.am = udiv i32 %i.al, 12
  %i.an = icmp ugt i32 %.0.copyload.i131, %i.am
  br i1 %i.an, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = zext i32 %i.af to i64
  %i.ap = zext nneg i32 %.0.copyload.i131 to i64
  %i.aq = shl nuw nsw i64 %i.ap, 32
  %i.ar = or disjoint i64 %i.aq, %i.ao
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g
  %.0 = phi i64 [ %i.ar, %bb.g ], [ 0, %bb.d ]
  %i.as = zext i32 %1 to i64
  %.val119 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.at = getelementptr inbounds nuw i8, ptr %.val119, i64 %i.as
  store i64 %.0, ptr %i.at, align 1
  ret void

bb.i:                                             ; preds = %bb.f, %bb.e
  tail call void @w2c_hermes_hermes0x3A0x3Ahermes_fatal0x28char0x20const0x2A0x29(ptr noundef nonnull %0, i32 noundef 52258)
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3ABCProviderFromBuffer0x3A0x3AgetEpilogue0x280x290x20const(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.b = zext i32 %2 to i64                       ; 2 uses
  %.val32 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %.val32, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %i.e = zext i32 %.0.copyload.i to i64
  %.val31 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val31, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.0.copyload.i35 = load i32, ptr %i.g, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i35) #7, !srcloc !19
  %.val30 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val30, i64 %i.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 148
  %.0.copyload.i36 = load i32, ptr %i.i, align 1  ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i36) #7, !srcloc !19
  %i.j = zext i32 %.0.copyload.i36 to i64
  %.val = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.0.copyload.i37 = load i32, ptr %i.l, align 1  ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i37) #7, !srcloc !19
  %i.m = add i32 %.0.copyload.i37, %.0.copyload.i36
  %i.n = zext i32 %1 to i64                       ; 2 uses
  %.val34 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %.val34, i64 %i.n
  store i32 %i.m, ptr %i.o, align 1
  %i.p = sub i32 %.0.copyload.i35, %.0.copyload.i37
  %.val33 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %.val33, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 %i.p, ptr %i.r, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, -3) i32 @w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3ABCProviderFromBuffer0x3A0x3AgetDebugOffsets0x28unsigned0x20int0x290x20const(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  %i.b = zext i32 %1 to i64                       ; 3 uses
  %.val122 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %.val122, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %i.e = shl i32 %2, 4
  %i.f = add i32 %.0.copyload.i, %i.e
  %i.g = zext i32 %i.f to i64                     ; 5 uses
  %.val126 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val126, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.0.copyload.i128 = load i32, ptr %i.i, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i128) #7, !srcloc !38
  %.val127 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %.val127, i64 %i.g
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 14
  %.0.copyload.i129 = load i8, ptr %i.k, align 1
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i129) #7, !srcloc !42
  %.val125 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %.val125, i64 %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %.0.copyload.i130 = load i16, ptr %i.m, align 1
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i130) #7, !srcloc !37
  %.val121 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %.val121, i64 %i.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 148
  %.0.copyload.i131 = load i32, ptr %i.o, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i131) #7, !srcloc !19
  %.val124 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %.val124, i64 %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 15
  %.0.copyload.i132 = load i8, ptr %i.q, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i132) #7, !srcloc !21
  %i.r = zext i8 %.0.copyload.i132 to i32         ; 3 uses
  %i.s = and i32 %i.r, 32
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val123 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %.val123, i64 %i.g
  %.0.copyload.i133 = load i64, ptr %i.t, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i133) #7, !srcloc !20
  %i.u = trunc i64 %.0.copyload.i133 to i32
  %i.v = and i32 %i.u, 33554431
  %i.w = shl i32 %.0.copyload.i128, 16
  %i.x = or i32 %i.v, %i.w
  %i.y = add i32 %.0.copyload.i131, 31
  %i.z = add i32 %i.y, %i.x
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.aa = and i32 %.0.copyload.i128, 33554431
  %i.ab = add i32 %.0.copyload.i131, %i.aa
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.z, %bb.b ], [ %i.ab, %bb.c ] ; 2 uses
  %i.ac = and i32 %i.r, 8
  %.not119 = icmp eq i32 %i.ac, 0
  br i1 %.not119, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = add i32 %.0, 3
  %i.ae = and i32 %i.ad, -4                       ; 2 uses
  %i.af = add i32 %i.ae, 4                        ; 3 uses
  %.val120 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %.val120, i64 %i.b
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 188
  %.0.copyload.i134 = load i32, ptr %i.ah, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i134) #7, !srcloc !19
  %i.ai = icmp ugt i32 %i.af, %.0.copyload.i134
  br i1 %i.ai, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = zext i32 %i.ae to i64
  %.val = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 %i.aj
  %.0.copyload.i135 = load i32, ptr %i.ak, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i135) #7, !srcloc !19
  %i.al = sub nuw i32 %.0.copyload.i134, %i.af
  %i.am = udiv i32 %i.al, 12
  %i.an = icmp ugt i32 %.0.copyload.i135, %i.am
  br i1 %i.an, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = mul nuw i32 %.0.copyload.i135, 12
  %i.ap = add i32 %i.ao, %i.af
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g
  %.1 = phi i32 [ %i.ap, %bb.g ], [ %.0, %bb.d ]
  %i.aq = add i32 %.1, 3
  %.mask = and i32 %i.r, 16
  %isneg.not = icmp eq i32 %.mask, 0
  %i.ar = and i32 %i.aq, -4
  %i.as = select i1 %isneg.not, i32 0, i32 %i.ar
  ret i32 %i.as

bb.i:                                             ; preds = %bb.f, %bb.e
  tail call void @w2c_hermes_hermes0x3A0x3Ahermes_fatal0x28char0x20const0x2A0x29(ptr noundef nonnull %0, i32 noundef 52258)
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3ABCProviderFromBuffer0x3A0x3AgetBytecode0x28unsigned0x20int0x290x20const(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.b = zext i32 %1 to i64                       ; 2 uses
  %.val62 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %.val62, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 148
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %.val61 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %.val61, i64 %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %.0.copyload.i64 = load i32, ptr %i.f, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i64) #7, !srcloc !19
  %i.g = shl i32 %2, 4
  %i.h = add i32 %.0.copyload.i64, %i.g           ; 2 uses
  %i.i = zext i32 %i.h to i64                     ; 3 uses
  %.val63 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %.val63, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 15
  %.0.copyload.i65 = load i8, ptr %i.k, align 1   ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i65) #7, !srcloc !21
  %i.l = and i8 %.0.copyload.i65, 32
  %.not = icmp eq i8 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val60 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %.val60, i64 %i.i
  %.0.copyload.i66 = load i32, ptr %i.m, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i66) #7, !srcloc !19
  %i.n = and i32 %.0.copyload.i66, 33554431
  %.val59 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %.val59, i64 %i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.0.copyload.i67 = load i32, ptr %i.p, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i67) #7, !srcloc !19
  %i.q = shl i32 %.0.copyload.i67, 16
  %i.r = or i32 %i.q, %i.n
  %i.s = add i32 %.0.copyload.i, 1
  %i.t = add i32 %i.s, %i.r
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.056 = phi i32 [ %i.t, %bb.b ], [ %i.h, %bb.a ] ; 3 uses
  %i.u = and i32 %.056, 1
  %.not57 = icmp eq i32 %i.u, 0
  br i1 %.not57, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = add nsw i32 %.056, -1
  %i.w = zext i32 %i.v to i64
  %.val58 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %.val58, i64 %i.w
  %.0.copyload.i68 = load i32, ptr %i.x, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i68) #7, !srcloc !19
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.y = zext i32 %.056 to i64
  %.val = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %.val, i64 %i.y
  %.0.copyload.i69 = load i32, ptr %i.z, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i69) #7, !srcloc !19
  %i.aa = and i32 %.0.copyload.i69, 33554431
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi i32 [ %.0.copyload.i68, %bb.d ], [ %i.aa, %bb.e ]
  %.0 = add i32 %.pn, %.0.copyload.i
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Ahbc0x3A0x3ABCProviderFromBuffer0x3A0x3AcreateDebugInfo0x280x29(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 4 uses
  %i.c = add i32 %i.b, -32                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 49 uses
  %i.e = zext i32 %1 to i64                       ; 4 uses
  %.val440 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val440, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 188
  %.0.copyload.i = load i32, ptr %i.g, align 1    ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %.val439 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val439, i64 %i.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 148
  %.0.copyload.i470 = load i32, ptr %i.i, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i470) #7, !srcloc !19
  %.val438 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %.val438, i64 %i.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 168
  %.0.copyload.i471 = load i32, ptr %i.k, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i471) #7, !srcloc !19
  %i.l = add i32 %.0.copyload.i471, %.0.copyload.i470 ; 2 uses
  %i.m = add i32 %i.l, 28                         ; 4 uses
  %i.n = icmp ult i32 %.0.copyload.i, %i.m
  br i1 %i.n, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = zext i32 %i.l to i64                     ; 7 uses
  %.val437 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %.val437, i64 %i.o
  %.0.copyload.i472 = load i32, ptr %i.p, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i472) #7, !srcloc !19
  %i.q = sub nuw i32 %.0.copyload.i, %i.m
  %i.r = lshr i32 %i.q, 3
  %i.s = icmp ugt i32 %.0.copyload.i472, %i.r
  br i1 %i.s, label %bb.i, label %bb.c

end_hunk_11
begin_hunk_12_@w2c_hermes_hermes0x3A0x3AIRPrinter0x3A0x3AprintFunctionHeader0x28hermes0x3A0x3AFunction0x2A0x29:bb.a
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
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !28 ; 2 uses
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
  store i32 %i.b, ptr %i.a, align 8, !tbaa !7
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
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 24}
!8 = !{!"w2c_hermes", !9, i64 0, !11, i64 8, !12, i64 16, !4, i64 24, !4, i64 28, !4, i64 32, !13, i64 40, !17, i64 80}
!9 = !{!"p1 _ZTS7w2c_env", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTS18w2c_hermes__import", !10, i64 0}
!12 = !{!"p1 _ZTS28w2c_wasi__snapshot__preview1", !10, i64 0}
!13 = !{!"", !14, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !16, i64 32}
!14 = !{!"p1 omnipotent char", !10, i64 0}
!15 = !{!"long", !5, i64 0}
!16 = !{!"_Bool", !5, i64 0}
!17 = !{!"", !10, i64 0, !4, i64 8, !4, i64 12}
!18 = !{!13, !14, i64 0}
!19 = !{i64 2156010582}
!20 = !{i64 2156011008}
!21 = !{i64 2156013138}
!22 = !{i64 2156012286}
!23 = !{i64 2156011860}
!24 = !{i64 2156014850}
!25 = !{!8, !4, i64 92}
!26 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!27 = !{!8, !10, i64 80}
!28 = !{!29, !10, i64 8}
!29 = !{!"", !14, i64 0, !10, i64 8, !10, i64 16}
!30 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!31 = !{!14, !14, i64 0}
!32 = !{!29, !14, i64 0}
!33 = !{!"branch_weights", i32 4000000, i32 4001}
!34 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!35 = !{!29, !10, i64 16}
!36 = !{i64 2156011434}
!37 = !{i64 2156015280}
!38 = !{i64 2156016140}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.peeled.count", i32 1}
!41 = !{!"branch_weights", !"expected", i32 2147483112, i32 536}
!42 = !{i64 2156013564}
!43 = !{!"branch_weights", i32 4001, i32 4000000}
!44 = distinct !{!44, !40}
end_hunk_12
