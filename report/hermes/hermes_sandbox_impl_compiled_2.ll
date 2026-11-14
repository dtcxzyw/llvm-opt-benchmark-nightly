Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_2?download=true
inline.NumInlined: 21304
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AbitwiseXOR0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x29:bb.a
  store i32 %i.w, ptr %i.y, align 1
  %.val698 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %.val698, i64 %i.n
  %.0.copyload.i714 = load i64, ptr %i.z, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i714) #7, !srcloc !22
  %.val710 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %.val710, i64 %i.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store i64 %.0.copyload.i714, ptr %i.ab, align 1
  %.val697 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %.val697, i64 %i.x
  %.0.copyload.i715 = load i64, ptr %i.ac, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i715) #7, !srcloc !22
  %.val709 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %.val709, i64 %i.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i64 %.0.copyload.i715, ptr %i.ae, align 1
  %.val652 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %.val652, i64 %i.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 36
  %.0.copyload.i716 = load i32, ptr %i.ag, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i716) #7, !srcloc !19
  %.val651 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %.val651, i64 %i.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 28
  %.0.copyload.i717 = load i32, ptr %i.ai, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i717) #7, !srcloc !19
  %i.aj = tail call i32 @llvm.umax.i32(i32 %.0.copyload.i716, i32 %.0.copyload.i717) ; 3 uses
  %i.ak = icmp ult i32 %i.aj, 1025
  br i1 %i.ak, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.al = shl nuw nsw i32 %i.aj, 3
  %i.am = add nuw nsw i32 %i.al, 8                ; 4 uses
  %i.an = add i32 %2, 1376
  %i.ao = zext i32 %i.an to i64
  %.val650 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %.val650, i64 %i.ao
  %.0.copyload.i718 = load i32, ptr %i.ap, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i718) #7, !srcloc !19
  %i.aq = add i32 %2, 1372
  %i.ar = zext i32 %i.aq to i64
  %.val649 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %.val649, i64 %i.ar
  %.0.copyload.i719 = load i32, ptr %i.as, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i719) #7, !srcloc !19
  %i.at = sub i32 %.0.copyload.i718, %.0.copyload.i719
  %.not = icmp ugt i32 %i.am, %i.at
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.au = add i32 %2, 816
  %i.av = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AallocSlow0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.au, i32 noundef %i.am) #7
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %.val675 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aw = getelementptr inbounds nuw i8, ptr %.val675, i64 %i.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 104
  store i32 0, ptr %i.ax, align 1
  %.val708 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ay = getelementptr inbounds nuw i8, ptr %.val708, i64 %i.j
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 96
  store i64 120259084289, ptr %i.az, align 1
  %.val674 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ba = getelementptr inbounds nuw i8, ptr %.val674, i64 %i.j
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 80
  store i32 3, ptr %i.bb, align 1
  %.val673 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bc = getelementptr inbounds nuw i8, ptr %.val673, i64 %i.j
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 72
  store i32 55442, ptr %i.bd, align 1
  %i.be = add i32 %i.b, -40
  %i.bf = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseRangeError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %i.be) #7 ; 0 uses
  %i.bg = zext i32 %1 to i64
  %.val672 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bh = getelementptr inbounds nuw i8, ptr %.val672, i64 %i.bg
  store i32 0, ptr %i.bh, align 1
  br label %bb.v

bb.e:                                             ; preds = %bb.b
  %i.bi = add i32 %.0.copyload.i719, %i.am
  %i.bj = zext i32 %2 to i64
  %.val671 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %.val671, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1372
  store i32 %i.bi, ptr %i.bl, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.0615 = phi i32 [ %.0.copyload.i719, %bb.e ], [ %i.av, %bb.c ] ; 3 uses
  %i.bm = zext i32 %.0615 to i64                  ; 3 uses
  %.val670 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bn = getelementptr inbounds nuw i8, ptr %.val670, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store i32 %i.aj, ptr %i.bo, align 1
  %i.bp = or disjoint i32 %i.am, 1291845632
  %.val669 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bq = getelementptr inbounds nuw i8, ptr %.val669, i64 %i.bm
  store i32 %i.bp, ptr %i.bq, align 1
  %i.br = add i32 %.0615, 4
  %.val668 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bs = getelementptr inbounds nuw i8, ptr %.val668, i64 %i.j
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 76
  store i32 %i.br, ptr %i.bt, align 1
  %i.bu = add i32 %.0615, 8
  %i.bv = add nuw nsw i64 %i.j, 72                ; 2 uses
  %.val667 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bw = getelementptr inbounds nuw i8, ptr %.val667, i64 %i.bv
  store i32 %i.bu, ptr %i.bw, align 1
  %.val648 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bx = getelementptr inbounds nuw i8, ptr %.val648, i64 %i.e
  %.0.copyload.i720 = load i32, ptr %i.bx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i720) #7, !srcloc !19
  %i.by = zext i32 %.0.copyload.i720 to i64
  %.val647 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bz = getelementptr inbounds nuw i8, ptr %.val647, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %.0.copyload.i721 = load i32, ptr %i.ca, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i721) #7, !srcloc !19
  %.val666 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cb = getelementptr inbounds nuw i8, ptr %.val666, i64 %i.j
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 68
  store i32 %.0.copyload.i721, ptr %i.cc, align 1
  %i.cd = add i32 %.0.copyload.i720, 8
  %i.ce = add nuw nsw i64 %i.j, 64                ; 2 uses
  %.val665 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cf = getelementptr inbounds nuw i8, ptr %.val665, i64 %i.ce
  store i32 %i.cd, ptr %i.cf, align 1
  %.val646 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cg = getelementptr inbounds nuw i8, ptr %.val646, i64 %i.p
  %.0.copyload.i722 = load i32, ptr %i.cg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i722) #7, !srcloc !19
  %i.ch = zext i32 %.0.copyload.i722 to i64
  %.val645 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ci = getelementptr inbounds nuw i8, ptr %.val645, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %.0.copyload.i723 = load i32, ptr %i.cj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i723) #7, !srcloc !19
  %.val664 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ck = getelementptr inbounds nuw i8, ptr %.val664, i64 %i.j
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 60
  store i32 %.0.copyload.i723, ptr %i.cl, align 1
  %i.cm = add i32 %.0.copyload.i722, 8
  %i.cn = add nuw nsw i64 %i.j, 56                ; 2 uses
  %.val663 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.co = getelementptr inbounds nuw i8, ptr %.val663, i64 %i.cn
  store i32 %i.cm, ptr %i.co, align 1
  %.val696 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cp = getelementptr inbounds nuw i8, ptr %.val696, i64 %i.bv
  %.0.copyload.i724 = load i64, ptr %i.cp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i724) #7, !srcloc !22
  %i.cq = add nuw nsw i64 %i.j, 16                ; 2 uses
  %.val707 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cr = getelementptr inbounds nuw i8, ptr %.val707, i64 %i.cq
  store i64 %.0.copyload.i724, ptr %i.cr, align 1
  %.val695 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cs = getelementptr inbounds nuw i8, ptr %.val695, i64 %i.ce
  %.0.copyload.i725 = load i64, ptr %i.cs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i725) #7, !srcloc !22
  %i.ct = add nuw nsw i64 %i.j, 8                 ; 2 uses
  %.val706 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cu = getelementptr inbounds nuw i8, ptr %.val706, i64 %i.ct
  store i64 %.0.copyload.i725, ptr %i.cu, align 1
  %.val694 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cv = getelementptr inbounds nuw i8, ptr %.val694, i64 %i.cn
  %.0.copyload.i726 = load i64, ptr %i.cv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i726) #7, !srcloc !22
  %.val705 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cw = getelementptr inbounds nuw i8, ptr %.val705, i64 %i.j
  store i64 %.0.copyload.i726, ptr %i.cw, align 1
  %.val693 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cx = getelementptr inbounds nuw i8, ptr %.val693, i64 %i.cq
  %.0.copyload.i727 = load i64, ptr %i.cx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i727) #7, !srcloc !22
  %i.cy = lshr i64 %.0.copyload.i727, 32          ; 5 uses
  %.val644 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cz = getelementptr inbounds nuw i8, ptr %.val644, i64 %i.cy
  %.0.copyload.i728 = load i32, ptr %i.cz, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i728) #7, !srcloc !19
  %.val692 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.da = getelementptr inbounds nuw i8, ptr %.val692, i64 %i.ct
  %.0.copyload.i729 = load i64, ptr %i.da, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i729) #7, !srcloc !22
  %.val691 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.db = getelementptr inbounds nuw i8, ptr %.val691, i64 %i.j
  %.0.copyload.i730 = load i64, ptr %i.db, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i730) #7, !srcloc !22
  %.val643 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dc = getelementptr inbounds nuw i8, ptr %.val643, i64 %i.j
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  %.0.copyload.i731 = load i32, ptr %i.dd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i731) #7, !srcloc !19
  %.val642 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.de = getelementptr inbounds nuw i8, ptr %.val642, i64 %i.j
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %.0.copyload.i732 = load i32, ptr %i.df, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i732) #7, !srcloc !19
  %i.dg = icmp ugt i32 %.0.copyload.i731, %.0.copyload.i732 ; 2 uses
  %i.dh = select i1 %i.dg, i64 %.0.copyload.i729, i64 %.0.copyload.i730 ; 3 uses
  %i.di = lshr i64 %i.dh, 32                      ; 2 uses
  %i.dj = trunc nuw i64 %i.di to i32              ; 4 uses
  %i.dk = icmp ult i32 %.0.copyload.i728, %i.dj
  br i1 %i.dk, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dl = select i1 %i.dg, i64 %.0.copyload.i730, i64 %.0.copyload.i729 ; 2 uses
  %i.dm = lshr i64 %i.dl, 32                      ; 2 uses
  %i.dn = trunc nuw i64 %i.dm to i32              ; 3 uses
  %i.do = add i32 %i.dj, 1                        ; 3 uses
  %i.dp = icmp ugt i32 %.0.copyload.i728, %i.do
  br i1 %i.dp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.val662 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dq = getelementptr inbounds nuw i8, ptr %.val662, i64 %i.cy
  store i32 %i.do, ptr %i.dq, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.0611 = phi i32 [ %i.do, %bb.h ], [ %.0.copyload.i728, %bb.g ]
  %i.dr = icmp ult i32 %.0611, %i.dn
  br i1 %i.dr, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ds = trunc i64 %.0.copyload.i727 to i32
  %i.dt = trunc i64 %i.dl to i32                  ; 2 uses
  %i.du = shl i32 %i.dn, 3                        ; 3 uses
  %i.dv = tail call i32 @w2c_hermes_0x5F_memcpy(ptr noundef nonnull %0, i32 noundef %i.ds, i32 noundef %i.dt, i32 noundef %i.du) #7 ; 8 uses
  %.val641 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dw = getelementptr inbounds nuw i8, ptr %.val641, i64 %i.cy
  %.0.copyload.i733 = load i32, ptr %i.dw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i733) #7, !srcloc !19
  %i.dx = sub i32 %.0.copyload.i733, %i.dn
  %i.dy = shl i32 %i.dx, 3
  %i.dz = add i32 %i.dv, %i.du
  %.not632 = icmp eq i64 %i.dm, 0
  br i1 %.not632, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ea = add i32 %i.dt, -8
  %i.eb = add i32 %i.ea, %i.du
  %i.ec = zext i32 %i.eb to i64
  %.val690 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ed = getelementptr inbounds nuw i8, ptr %.val690, i64 %i.ec
  %.0.copyload.i734 = load i64, ptr %i.ed, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i734) #7, !srcloc !22
  %i.ee = ashr i64 %.0.copyload.i734, 63
  %i.ef = trunc nsw i64 %i.ee to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.0 = phi i32 [ %i.ef, %bb.k ], [ 0, %bb.j ]
  %i.eg = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.dz, i32 noundef %.0, i32 noundef %i.dy) #7 ; 0 uses
  %i.eh = trunc i64 %i.dh to i32                  ; 5 uses
  %.not633 = icmp eq i64 %i.di, 0
  br i1 %.not633, label %.loopexit748, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ei = icmp ugt i64 %i.dh, 17179869183
  br i1 %i.ei, label %bb.n, label %.loopexit749

bb.n:                                             ; preds = %bb.m
  %i.ej = and i32 %i.dj, -4                       ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.o ], [ 0, %bb.n ] ; 2 uses
  %i.ek = trunc nuw i64 %indvars.iv to i32
  %i.el = shl i32 %i.ek, 3                        ; 5 uses
  %i.em = add i32 %i.el, %i.dv
  %i.en = zext i32 %i.em to i64                   ; 2 uses
  %.val689 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eo = getelementptr inbounds nuw i8, ptr %.val689, i64 %i.en
  %.0.copyload.i735 = load i64, ptr %i.eo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i735) #7, !srcloc !22
  %i.ep = add i32 %i.el, %i.eh
  %i.eq = zext i32 %i.ep to i64
  %.val688 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.er = getelementptr inbounds nuw i8, ptr %.val688, i64 %i.eq
  %.0.copyload.i736 = load i64, ptr %i.er, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i736) #7, !srcloc !22
  %i.es = xor i64 %.0.copyload.i736, %.0.copyload.i735
  %.val704 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.et = getelementptr inbounds nuw i8, ptr %.val704, i64 %i.en
  store i64 %i.es, ptr %i.et, align 1
  %i.eu = or disjoint i32 %i.el, 8                ; 2 uses
  %i.ev = add i32 %i.eu, %i.dv
  %i.ew = zext i32 %i.ev to i64                   ; 2 uses
  %.val687 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ex = getelementptr inbounds nuw i8, ptr %.val687, i64 %i.ew
  %.0.copyload.i737 = load i64, ptr %i.ex, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i737) #7, !srcloc !22
  %i.ey = add i32 %i.eu, %i.eh
  %i.ez = zext i32 %i.ey to i64
  %.val686 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fa = getelementptr inbounds nuw i8, ptr %.val686, i64 %i.ez
  %.0.copyload.i738 = load i64, ptr %i.fa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i738) #7, !srcloc !22
  %i.fb = xor i64 %.0.copyload.i738, %.0.copyload.i737
  %.val703 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fc = getelementptr inbounds nuw i8, ptr %.val703, i64 %i.ew
  store i64 %i.fb, ptr %i.fc, align 1
  %i.fd = or disjoint i32 %i.el, 16               ; 2 uses
  %i.fe = add i32 %i.fd, %i.dv
  %i.ff = zext i32 %i.fe to i64                   ; 2 uses
  %.val685 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fg = getelementptr inbounds nuw i8, ptr %.val685, i64 %i.ff
  %.0.copyload.i739 = load i64, ptr %i.fg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i739) #7, !srcloc !22
  %i.fh = add i32 %i.fd, %i.eh
  %i.fi = zext i32 %i.fh to i64
  %.val684 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fj = getelementptr inbounds nuw i8, ptr %.val684, i64 %i.fi
  %.0.copyload.i740 = load i64, ptr %i.fj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i740) #7, !srcloc !22
  %i.fk = xor i64 %.0.copyload.i740, %.0.copyload.i739
  %.val702 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fl = getelementptr inbounds nuw i8, ptr %.val702, i64 %i.ff
  store i64 %i.fk, ptr %i.fl, align 1
  %i.fm = or disjoint i32 %i.el, 24               ; 2 uses
  %i.fn = add i32 %i.fm, %i.dv
  %i.fo = zext i32 %i.fn to i64                   ; 2 uses
  %.val683 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fp = getelementptr inbounds nuw i8, ptr %.val683, i64 %i.fo
  %.0.copyload.i741 = load i64, ptr %i.fp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i741) #7, !srcloc !22
  %i.fq = add i32 %i.fm, %i.eh
  %i.fr = zext i32 %i.fq to i64
  %.val682 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fs = getelementptr inbounds nuw i8, ptr %.val682, i64 %i.fr
  %.0.copyload.i742 = load i64, ptr %i.fs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i742) #7, !srcloc !22
  %i.ft = xor i64 %.0.copyload.i742, %.0.copyload.i741
  %.val701 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fu = getelementptr inbounds nuw i8, ptr %.val701, i64 %i.fo
  store i64 %i.ft, ptr %i.fu, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %indvars755 = trunc i64 %indvars.iv.next to i32
  %.not634 = icmp eq i32 %i.ej, %indvars755
  br i1 %.not634, label %.loopexit749, label %bb.o

.loopexit749:                                     ; preds = %bb.o, %bb.m
  %.1620 = phi i32 [ 0, %bb.m ], [ %i.ej, %bb.o ]
  %i.fv = and i32 %i.dj, 3                        ; 2 uses
  %.not635 = icmp eq i32 %i.fv, 0
  br i1 %.not635, label %.loopexit748, label %.preheader

.preheader:                                       ; preds = %.loopexit749, %.preheader
  %.2621 = phi i32 [ %5, %.preheader ], [ %.1620, %.loopexit749 ] ; 2 uses
  %.0613 = phi i32 [ %i.gf, %.preheader ], [ 0, %.loopexit749 ]
  %i.fw = shl i32 %.2621, 3                       ; 2 uses
  %i.fx = add i32 %i.fw, %i.dv
  %i.fy = zext i32 %i.fx to i64                   ; 2 uses
  %.val681 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fz = getelementptr inbounds nuw i8, ptr %.val681, i64 %i.fy
  %.0.copyload.i743 = load i64, ptr %i.fz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i743) #7, !srcloc !22
  %i.ga = add i32 %i.fw, %i.eh
  %i.gb = zext i32 %i.ga to i64
  %.val680 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gc = getelementptr inbounds nuw i8, ptr %.val680, i64 %i.gb
  %.0.copyload.i744 = load i64, ptr %i.gc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i744) #7, !srcloc !22
  %i.gd = xor i64 %.0.copyload.i744, %.0.copyload.i743
  %.val700 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ge = getelementptr inbounds nuw i8, ptr %.val700, i64 %i.fy
  store i64 %i.gd, ptr %i.ge, align 1
  %5 = add nsw i32 %.2621, 1
  %i.gf = add nuw nsw i32 %.0613, 1               ; 2 uses
  %.not636 = icmp eq i32 %i.gf, %i.fv
  br i1 %.not636, label %.loopexit748, label %.preheader

.loopexit748:                                     ; preds = %.preheader, %.loopexit749, %bb.l
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gg = getelementptr inbounds nuw i8, ptr %.val, i64 %i.cy
  %.0.copyload.i745 = load i32, ptr %i.gg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i745) #7, !srcloc !19
  %i.gh = shl i32 %.0.copyload.i745, 3            ; 5 uses
  %.not637 = icmp eq i32 %i.gh, 0
  br i1 %.not637, label %bb.u, label %bb.p

bb.p:                                             ; preds = %.loopexit748
  %i.gi = add i32 %i.gh, -1                       ; 2 uses
  %i.gj = add i32 %i.gi, %i.dv
  %i.gk = zext i32 %i.gj to i64
  %.val658 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gl = getelementptr inbounds nuw i8, ptr %.val658, i64 %i.gk
  %.0.copyload.i746 = load i8, ptr %i.gl, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i746) #7, !srcloc !20
  %i.gm = zext i8 %.0.copyload.i746 to i32
  %i.gn = shl nuw i32 %i.gm, 24
  %i.go = ashr i32 %i.gn, 31                      ; 3 uses
  %i.gp = trunc nsw i32 %i.go to i8
  %.not638 = icmp eq i8 %.0.copyload.i746, %i.gp
  br i1 %.not638, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.gq = zext i32 %i.gi to i64
  %i.gr = add i32 %i.dv, -1
  br label %bb.s

bb.r:                                             ; preds = %bb.s
  %i.gs = add nsw i64 %.0612769, -1               ; 2 uses
  %i.gt = add i32 %.3768, -1
  %.not639 = icmp eq i64 %i.gs, 0
  br i1 %.not639, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %.0612769 = phi i64 [ %i.gq, %bb.q ], [ %i.gs, %bb.r ] ; 2 uses
  %.3768 = phi i32 [ %i.gh, %bb.q ], [ %i.gt, %bb.r ] ; 2 uses
  %i.gu = trunc nuw i64 %.0612769 to i32          ; 2 uses
  %i.gv = add i32 %i.gr, %i.gu
  %i.gw = zext i32 %i.gv to i64
  %.val657 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gx = getelementptr inbounds nuw i8, ptr %.val657, i64 %i.gw
  %.0.copyload.i747 = load i8, ptr %i.gx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i747) #7, !srcloc !20
  %i.gy = icmp eq i8 %.0.copyload.i746, %.0.copyload.i747
  br i1 %i.gy, label %bb.r, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gz = zext i8 %.0.copyload.i747 to i32
  %i.ha = shl nuw i32 %i.gz, 24
  %i.hb = ashr i32 %i.ha, 31
  br label %.loopexit

.loopexit:                                        ; preds = %bb.r, %bb.p, %bb.t
  %.0617 = phi i32 [ %i.gu, %bb.t ], [ %i.gh, %bb.p ], [ 0, %bb.r ]
  %.0616 = phi i32 [ %.3768, %bb.t ], [ %i.gh, %bb.p ], [ 1, %bb.r ]
  %.1 = phi i32 [ %i.hb, %bb.t ], [ %i.go, %bb.p ], [ 0, %bb.r ]
  %i.hc = icmp eq i32 %.1, %i.go
  %i.hd = select i1 %i.hc, i32 %.0617, i32 %.0616
  %i.he = add i32 %i.hd, 7
  %i.hf = lshr i32 %i.he, 3
  br label %bb.u

bb.u:                                             ; preds = %.loopexit748, %.loopexit
  %.2 = phi i32 [ %i.hf, %.loopexit ], [ 0, %.loopexit748 ]
  %.val661 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hg = getelementptr inbounds nuw i8, ptr %.val661, i64 %i.cy
  store i32 %.2, ptr %i.hg, align 1
  %i.hh = zext i32 %1 to i64                      ; 2 uses
  %.val659 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hi = getelementptr inbounds nuw i8, ptr %.val659, i64 %i.hh
  store i32 1, ptr %i.hi, align 1
  %i.hj = or disjoint i64 %i.bm, -562949953421312
  %.val699 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hk = getelementptr inbounds nuw i8, ptr %.val699, i64 %i.hh
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  store i64 %i.hj, ptr %i.hl, align 1
  br label %bb.v

.critedge:                                        ; preds = %bb.i, %bb.f
  %i.hm = load i32, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  %i.hn = add i32 %i.hm, -48                      ; 2 uses
  store i32 %i.hn, ptr %i.a, align 8, !tbaa !17
  %i.ho = zext i32 %i.hn to i64                   ; 4 uses
  %.val114.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hp = getelementptr inbounds nuw i8, ptr %.val114.i, i64 %i.ho
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 40
  store i32 0, ptr %i.hq, align 1
  %.val124.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hr = getelementptr inbounds nuw i8, ptr %.val124.i, i64 %i.ho
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 32
  store i64 188978561025, ptr %i.hs, align 1
  %.val113.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ht = getelementptr inbounds nuw i8, ptr %.val113.i, i64 %i.ho
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  store i32 3, ptr %i.hu, align 1
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hv = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ho
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store i32 22326, ptr %i.hw, align 1
  %i.hx = add i32 %i.hm, -40
  %i.hy = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseRangeError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %i.hx) #7
  %i.hz = zext i32 %1 to i64
  %.val660 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ia = getelementptr inbounds nuw i8, ptr %.val660, i64 %i.hz
  store i32 %i.hy, ptr %i.ia, align 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.critedge, %bb.d
  store i32 %i.b, ptr %i.a, align 8, !tbaa !17
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AbitwiseOR0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 !guid !297 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  %i.c = add i32 %i.b, -112                       ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 75 uses
  %i.e = zext i32 %3 to i64                       ; 2 uses
  %.val656 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val656, i64 %i.e
  %.0.copyload.i = load i32, ptr %i.f, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %i.g = zext i32 %.0.copyload.i to i64
  %.val655 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val655, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.0.copyload.i711 = load i32, ptr %i.i, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i711) #7, !srcloc !19
  %i.j = zext i32 %i.c to i64                     ; 24 uses
  %.val679 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %.val679, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  store i32 %.0.copyload.i711, ptr %i.l, align 1
  %i.m = add i32 %.0.copyload.i, 8
  %i.n = add nuw nsw i64 %i.j, 48                 ; 2 uses
  %.val678 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %.val678, i64 %i.n
  store i32 %i.m, ptr %i.o, align 1
  %i.p = zext i32 %4 to i64                       ; 2 uses
  %.val654 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %.val654, i64 %i.p
  %.0.copyload.i712 = load i32, ptr %i.q, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i712) #7, !srcloc !19
  %i.r = zext i32 %.0.copyload.i712 to i64
  %.val653 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %.val653, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %.0.copyload.i713 = load i32, ptr %i.t, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i713) #7, !srcloc !19
  %.val677 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %.val677, i64 %i.j
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 44
  store i32 %.0.copyload.i713, ptr %i.v, align 1
  %i.w = add i32 %.0.copyload.i712, 8
  %i.x = add nuw nsw i64 %i.j, 40                 ; 2 uses
  %.val676 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %.val676, i64 %i.x
  store i32 %i.w, ptr %i.y, align 1
  %.val698 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %.val698, i64 %i.n
  %.0.copyload.i714 = load i64, ptr %i.z, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i714) #7, !srcloc !22
  %.val710 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %.val710, i64 %i.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store i64 %.0.copyload.i714, ptr %i.ab, align 1
  %.val697 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %.val697, i64 %i.x
  %.0.copyload.i715 = load i64, ptr %i.ac, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i715) #7, !srcloc !22
  %.val709 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %.val709, i64 %i.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i64 %.0.copyload.i715, ptr %i.ae, align 1
  %.val652 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %.val652, i64 %i.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 36
  %.0.copyload.i716 = load i32, ptr %i.ag, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i716) #7, !srcloc !19
  %.val651 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %.val651, i64 %i.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 28
  %.0.copyload.i717 = load i32, ptr %i.ai, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i717) #7, !srcloc !19
  %i.aj = tail call i32 @llvm.umax.i32(i32 %.0.copyload.i716, i32 %.0.copyload.i717) ; 3 uses
  %i.ak = icmp ult i32 %i.aj, 1025
  br i1 %i.ak, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.al = shl nuw nsw i32 %i.aj, 3
  %i.am = add nuw nsw i32 %i.al, 8                ; 4 uses
  %i.an = add i32 %2, 1376
  %i.ao = zext i32 %i.an to i64
  %.val650 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %.val650, i64 %i.ao
  %.0.copyload.i718 = load i32, ptr %i.ap, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i718) #7, !srcloc !19
  %i.aq = add i32 %2, 1372
  %i.ar = zext i32 %i.aq to i64
  %.val649 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %.val649, i64 %i.ar
  %.0.copyload.i719 = load i32, ptr %i.as, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i719) #7, !srcloc !19
  %i.at = sub i32 %.0.copyload.i718, %.0.copyload.i719
  %.not = icmp ugt i32 %i.am, %i.at
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.au = add i32 %2, 816
  %i.av = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AallocSlow0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.au, i32 noundef %i.am) #7
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %.val675 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aw = getelementptr inbounds nuw i8, ptr %.val675, i64 %i.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 104
  store i32 0, ptr %i.ax, align 1
  %.val708 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ay = getelementptr inbounds nuw i8, ptr %.val708, i64 %i.j
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 96
  store i64 120259084289, ptr %i.az, align 1
  %.val674 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ba = getelementptr inbounds nuw i8, ptr %.val674, i64 %i.j
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 80
  store i32 3, ptr %i.bb, align 1
  %.val673 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bc = getelementptr inbounds nuw i8, ptr %.val673, i64 %i.j
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 72
  store i32 55442, ptr %i.bd, align 1
  %i.be = add i32 %i.b, -40
  %i.bf = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseRangeError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %i.be) #7 ; 0 uses
  %i.bg = zext i32 %1 to i64
  %.val672 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bh = getelementptr inbounds nuw i8, ptr %.val672, i64 %i.bg
  store i32 0, ptr %i.bh, align 1
  br label %bb.v

bb.e:                                             ; preds = %bb.b
  %i.bi = add i32 %.0.copyload.i719, %i.am
  %i.bj = zext i32 %2 to i64
  %.val671 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %.val671, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1372
  store i32 %i.bi, ptr %i.bl, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.0615 = phi i32 [ %.0.copyload.i719, %bb.e ], [ %i.av, %bb.c ] ; 3 uses
  %i.bm = zext i32 %.0615 to i64                  ; 3 uses
  %.val670 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bn = getelementptr inbounds nuw i8, ptr %.val670, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store i32 %i.aj, ptr %i.bo, align 1
  %i.bp = or disjoint i32 %i.am, 1291845632
  %.val669 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bq = getelementptr inbounds nuw i8, ptr %.val669, i64 %i.bm
  store i32 %i.bp, ptr %i.bq, align 1
  %i.br = add i32 %.0615, 4
  %.val668 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bs = getelementptr inbounds nuw i8, ptr %.val668, i64 %i.j
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 76
  store i32 %i.br, ptr %i.bt, align 1
  %i.bu = add i32 %.0615, 8
  %i.bv = add nuw nsw i64 %i.j, 72                ; 2 uses
  %.val667 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bw = getelementptr inbounds nuw i8, ptr %.val667, i64 %i.bv
  store i32 %i.bu, ptr %i.bw, align 1
  %.val648 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bx = getelementptr inbounds nuw i8, ptr %.val648, i64 %i.e
  %.0.copyload.i720 = load i32, ptr %i.bx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i720) #7, !srcloc !19
  %i.by = zext i32 %.0.copyload.i720 to i64
  %.val647 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bz = getelementptr inbounds nuw i8, ptr %.val647, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %.0.copyload.i721 = load i32, ptr %i.ca, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i721) #7, !srcloc !19
  %.val666 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cb = getelementptr inbounds nuw i8, ptr %.val666, i64 %i.j
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 68
  store i32 %.0.copyload.i721, ptr %i.cc, align 1
  %i.cd = add i32 %.0.copyload.i720, 8
  %i.ce = add nuw nsw i64 %i.j, 64                ; 2 uses
  %.val665 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cf = getelementptr inbounds nuw i8, ptr %.val665, i64 %i.ce
  store i32 %i.cd, ptr %i.cf, align 1
  %.val646 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cg = getelementptr inbounds nuw i8, ptr %.val646, i64 %i.p
  %.0.copyload.i722 = load i32, ptr %i.cg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i722) #7, !srcloc !19
  %i.ch = zext i32 %.0.copyload.i722 to i64
  %.val645 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ci = getelementptr inbounds nuw i8, ptr %.val645, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %.0.copyload.i723 = load i32, ptr %i.cj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i723) #7, !srcloc !19
  %.val664 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ck = getelementptr inbounds nuw i8, ptr %.val664, i64 %i.j
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 60
  store i32 %.0.copyload.i723, ptr %i.cl, align 1
  %i.cm = add i32 %.0.copyload.i722, 8
  %i.cn = add nuw nsw i64 %i.j, 56                ; 2 uses
  %.val663 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.co = getelementptr inbounds nuw i8, ptr %.val663, i64 %i.cn
  store i32 %i.cm, ptr %i.co, align 1
  %.val696 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cp = getelementptr inbounds nuw i8, ptr %.val696, i64 %i.bv
  %.0.copyload.i724 = load i64, ptr %i.cp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i724) #7, !srcloc !22
  %i.cq = add nuw nsw i64 %i.j, 16                ; 2 uses
  %.val707 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cr = getelementptr inbounds nuw i8, ptr %.val707, i64 %i.cq
  store i64 %.0.copyload.i724, ptr %i.cr, align 1
  %.val695 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cs = getelementptr inbounds nuw i8, ptr %.val695, i64 %i.ce
  %.0.copyload.i725 = load i64, ptr %i.cs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i725) #7, !srcloc !22
  %i.ct = add nuw nsw i64 %i.j, 8                 ; 2 uses
  %.val706 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cu = getelementptr inbounds nuw i8, ptr %.val706, i64 %i.ct
  store i64 %.0.copyload.i725, ptr %i.cu, align 1
  %.val694 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cv = getelementptr inbounds nuw i8, ptr %.val694, i64 %i.cn
  %.0.copyload.i726 = load i64, ptr %i.cv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i726) #7, !srcloc !22
  %.val705 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cw = getelementptr inbounds nuw i8, ptr %.val705, i64 %i.j
  store i64 %.0.copyload.i726, ptr %i.cw, align 1
  %.val693 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cx = getelementptr inbounds nuw i8, ptr %.val693, i64 %i.cq
  %.0.copyload.i727 = load i64, ptr %i.cx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i727) #7, !srcloc !22
  %i.cy = lshr i64 %.0.copyload.i727, 32          ; 5 uses
  %.val644 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cz = getelementptr inbounds nuw i8, ptr %.val644, i64 %i.cy
  %.0.copyload.i728 = load i32, ptr %i.cz, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i728) #7, !srcloc !19
  %.val692 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.da = getelementptr inbounds nuw i8, ptr %.val692, i64 %i.ct
  %.0.copyload.i729 = load i64, ptr %i.da, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i729) #7, !srcloc !22
  %.val691 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.db = getelementptr inbounds nuw i8, ptr %.val691, i64 %i.j
  %.0.copyload.i730 = load i64, ptr %i.db, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i730) #7, !srcloc !22
  %.val643 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dc = getelementptr inbounds nuw i8, ptr %.val643, i64 %i.j
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  %.0.copyload.i731 = load i32, ptr %i.dd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i731) #7, !srcloc !19
  %.val642 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.de = getelementptr inbounds nuw i8, ptr %.val642, i64 %i.j
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %.0.copyload.i732 = load i32, ptr %i.df, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i732) #7, !srcloc !19
  %i.dg = icmp ugt i32 %.0.copyload.i731, %.0.copyload.i732 ; 2 uses
  %i.dh = select i1 %i.dg, i64 %.0.copyload.i729, i64 %.0.copyload.i730 ; 3 uses
  %i.di = lshr i64 %i.dh, 32                      ; 2 uses
  %i.dj = trunc nuw i64 %i.di to i32              ; 4 uses
  %i.dk = icmp ult i32 %.0.copyload.i728, %i.dj
  br i1 %i.dk, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dl = select i1 %i.dg, i64 %.0.copyload.i730, i64 %.0.copyload.i729 ; 2 uses
  %i.dm = lshr i64 %i.dl, 32                      ; 2 uses
  %i.dn = trunc nuw i64 %i.dm to i32              ; 3 uses
  %i.do = add i32 %i.dj, 1                        ; 3 uses
  %i.dp = icmp ugt i32 %.0.copyload.i728, %i.do
  br i1 %i.dp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.val662 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dq = getelementptr inbounds nuw i8, ptr %.val662, i64 %i.cy
  store i32 %i.do, ptr %i.dq, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.0611 = phi i32 [ %i.do, %bb.h ], [ %.0.copyload.i728, %bb.g ]
  %i.dr = icmp ult i32 %.0611, %i.dn
  br i1 %i.dr, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ds = trunc i64 %.0.copyload.i727 to i32
  %i.dt = trunc i64 %i.dl to i32                  ; 2 uses
  %i.du = shl i32 %i.dn, 3                        ; 3 uses
  %i.dv = tail call i32 @w2c_hermes_0x5F_memcpy(ptr noundef nonnull %0, i32 noundef %i.ds, i32 noundef %i.dt, i32 noundef %i.du) #7 ; 8 uses
  %.val641 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dw = getelementptr inbounds nuw i8, ptr %.val641, i64 %i.cy
  %.0.copyload.i733 = load i32, ptr %i.dw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i733) #7, !srcloc !19
  %i.dx = sub i32 %.0.copyload.i733, %i.dn
  %i.dy = shl i32 %i.dx, 3
  %i.dz = add i32 %i.dv, %i.du
  %.not632 = icmp eq i64 %i.dm, 0
  br i1 %.not632, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ea = add i32 %i.dt, -8
  %i.eb = add i32 %i.ea, %i.du
  %i.ec = zext i32 %i.eb to i64
  %.val690 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ed = getelementptr inbounds nuw i8, ptr %.val690, i64 %i.ec
  %.0.copyload.i734 = load i64, ptr %i.ed, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i734) #7, !srcloc !22
  %i.ee = ashr i64 %.0.copyload.i734, 63
  %i.ef = trunc nsw i64 %i.ee to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.0 = phi i32 [ %i.ef, %bb.k ], [ 0, %bb.j ]
  %i.eg = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.dz, i32 noundef %.0, i32 noundef %i.dy) #7 ; 0 uses
  %i.eh = trunc i64 %i.dh to i32                  ; 5 uses
  %.not633 = icmp eq i64 %i.di, 0
  br i1 %.not633, label %.loopexit748, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ei = icmp ugt i64 %i.dh, 17179869183
  br i1 %i.ei, label %bb.n, label %.loopexit749

bb.n:                                             ; preds = %bb.m
  %i.ej = and i32 %i.dj, -4                       ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.o ], [ 0, %bb.n ] ; 2 uses
  %i.ek = trunc nuw i64 %indvars.iv to i32
  %i.el = shl i32 %i.ek, 3                        ; 5 uses
  %i.em = add i32 %i.el, %i.dv
  %i.en = zext i32 %i.em to i64                   ; 2 uses
  %.val689 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eo = getelementptr inbounds nuw i8, ptr %.val689, i64 %i.en
  %.0.copyload.i735 = load i64, ptr %i.eo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i735) #7, !srcloc !22
  %i.ep = add i32 %i.el, %i.eh
  %i.eq = zext i32 %i.ep to i64
  %.val688 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.er = getelementptr inbounds nuw i8, ptr %.val688, i64 %i.eq
  %.0.copyload.i736 = load i64, ptr %i.er, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i736) #7, !srcloc !22
  %i.es = or i64 %.0.copyload.i736, %.0.copyload.i735
  %.val704 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.et = getelementptr inbounds nuw i8, ptr %.val704, i64 %i.en
  store i64 %i.es, ptr %i.et, align 1
  %i.eu = or disjoint i32 %i.el, 8                ; 2 uses
  %i.ev = add i32 %i.eu, %i.dv
  %i.ew = zext i32 %i.ev to i64                   ; 2 uses
  %.val687 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ex = getelementptr inbounds nuw i8, ptr %.val687, i64 %i.ew
  %.0.copyload.i737 = load i64, ptr %i.ex, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i737) #7, !srcloc !22
  %i.ey = add i32 %i.eu, %i.eh
  %i.ez = zext i32 %i.ey to i64
  %.val686 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fa = getelementptr inbounds nuw i8, ptr %.val686, i64 %i.ez
  %.0.copyload.i738 = load i64, ptr %i.fa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i738) #7, !srcloc !22
  %i.fb = or i64 %.0.copyload.i738, %.0.copyload.i737
  %.val703 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fc = getelementptr inbounds nuw i8, ptr %.val703, i64 %i.ew
  store i64 %i.fb, ptr %i.fc, align 1
  %i.fd = or disjoint i32 %i.el, 16               ; 2 uses
  %i.fe = add i32 %i.fd, %i.dv
  %i.ff = zext i32 %i.fe to i64                   ; 2 uses
  %.val685 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fg = getelementptr inbounds nuw i8, ptr %.val685, i64 %i.ff
  %.0.copyload.i739 = load i64, ptr %i.fg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i739) #7, !srcloc !22
  %i.fh = add i32 %i.fd, %i.eh
  %i.fi = zext i32 %i.fh to i64
  %.val684 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fj = getelementptr inbounds nuw i8, ptr %.val684, i64 %i.fi
  %.0.copyload.i740 = load i64, ptr %i.fj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i740) #7, !srcloc !22
  %i.fk = or i64 %.0.copyload.i740, %.0.copyload.i739
  %.val702 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fl = getelementptr inbounds nuw i8, ptr %.val702, i64 %i.ff
  store i64 %i.fk, ptr %i.fl, align 1
  %i.fm = or disjoint i32 %i.el, 24               ; 2 uses
  %i.fn = add i32 %i.fm, %i.dv
  %i.fo = zext i32 %i.fn to i64                   ; 2 uses
  %.val683 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fp = getelementptr inbounds nuw i8, ptr %.val683, i64 %i.fo
  %.0.copyload.i741 = load i64, ptr %i.fp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i741) #7, !srcloc !22
  %i.fq = add i32 %i.fm, %i.eh
  %i.fr = zext i32 %i.fq to i64
  %.val682 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fs = getelementptr inbounds nuw i8, ptr %.val682, i64 %i.fr
  %.0.copyload.i742 = load i64, ptr %i.fs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i742) #7, !srcloc !22
  %i.ft = or i64 %.0.copyload.i742, %.0.copyload.i741
  %.val701 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fu = getelementptr inbounds nuw i8, ptr %.val701, i64 %i.fo
  store i64 %i.ft, ptr %i.fu, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %indvars755 = trunc i64 %indvars.iv.next to i32
  %.not634 = icmp eq i32 %i.ej, %indvars755
  br i1 %.not634, label %.loopexit749, label %bb.o

.loopexit749:                                     ; preds = %bb.o, %bb.m
  %.1620 = phi i32 [ 0, %bb.m ], [ %i.ej, %bb.o ]
  %i.fv = and i32 %i.dj, 3                        ; 2 uses
  %.not635 = icmp eq i32 %i.fv, 0
  br i1 %.not635, label %.loopexit748, label %.preheader

.preheader:                                       ; preds = %.loopexit749, %.preheader
  %.2621 = phi i32 [ %5, %.preheader ], [ %.1620, %.loopexit749 ] ; 2 uses
  %.0613 = phi i32 [ %i.gf, %.preheader ], [ 0, %.loopexit749 ]
  %i.fw = shl i32 %.2621, 3                       ; 2 uses
  %i.fx = add i32 %i.fw, %i.dv
  %i.fy = zext i32 %i.fx to i64                   ; 2 uses
  %.val681 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fz = getelementptr inbounds nuw i8, ptr %.val681, i64 %i.fy
  %.0.copyload.i743 = load i64, ptr %i.fz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i743) #7, !srcloc !22
  %i.ga = add i32 %i.fw, %i.eh
  %i.gb = zext i32 %i.ga to i64
  %.val680 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gc = getelementptr inbounds nuw i8, ptr %.val680, i64 %i.gb
  %.0.copyload.i744 = load i64, ptr %i.gc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i744) #7, !srcloc !22
  %i.gd = or i64 %.0.copyload.i744, %.0.copyload.i743
  %.val700 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ge = getelementptr inbounds nuw i8, ptr %.val700, i64 %i.fy
  store i64 %i.gd, ptr %i.ge, align 1
  %5 = add nsw i32 %.2621, 1
  %i.gf = add nuw nsw i32 %.0613, 1               ; 2 uses
  %.not636 = icmp eq i32 %i.gf, %i.fv
  br i1 %.not636, label %.loopexit748, label %.preheader

.loopexit748:                                     ; preds = %.preheader, %.loopexit749, %bb.l
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gg = getelementptr inbounds nuw i8, ptr %.val, i64 %i.cy
  %.0.copyload.i745 = load i32, ptr %i.gg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i745) #7, !srcloc !19
  %i.gh = shl i32 %.0.copyload.i745, 3            ; 5 uses
  %.not637 = icmp eq i32 %i.gh, 0
  br i1 %.not637, label %bb.u, label %bb.p

bb.p:                                             ; preds = %.loopexit748
  %i.gi = add i32 %i.gh, -1                       ; 2 uses
  %i.gj = add i32 %i.gi, %i.dv
  %i.gk = zext i32 %i.gj to i64
  %.val658 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gl = getelementptr inbounds nuw i8, ptr %.val658, i64 %i.gk
  %.0.copyload.i746 = load i8, ptr %i.gl, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i746) #7, !srcloc !20
  %i.gm = zext i8 %.0.copyload.i746 to i32
  %i.gn = shl nuw i32 %i.gm, 24
  %i.go = ashr i32 %i.gn, 31                      ; 3 uses
  %i.gp = trunc nsw i32 %i.go to i8
  %.not638 = icmp eq i8 %.0.copyload.i746, %i.gp
  br i1 %.not638, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.gq = zext i32 %i.gi to i64
  %i.gr = add i32 %i.dv, -1
  br label %bb.s

bb.r:                                             ; preds = %bb.s
  %i.gs = add nsw i64 %.0612769, -1               ; 2 uses
  %i.gt = add i32 %.3768, -1
  %.not639 = icmp eq i64 %i.gs, 0
  br i1 %.not639, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %.0612769 = phi i64 [ %i.gq, %bb.q ], [ %i.gs, %bb.r ] ; 2 uses
  %.3768 = phi i32 [ %i.gh, %bb.q ], [ %i.gt, %bb.r ] ; 2 uses
  %i.gu = trunc nuw i64 %.0612769 to i32          ; 2 uses
  %i.gv = add i32 %i.gr, %i.gu
  %i.gw = zext i32 %i.gv to i64
  %.val657 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gx = getelementptr inbounds nuw i8, ptr %.val657, i64 %i.gw
  %.0.copyload.i747 = load i8, ptr %i.gx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i747) #7, !srcloc !20
  %i.gy = icmp eq i8 %.0.copyload.i746, %.0.copyload.i747
  br i1 %i.gy, label %bb.r, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gz = zext i8 %.0.copyload.i747 to i32
  %i.ha = shl nuw i32 %i.gz, 24
  %i.hb = ashr i32 %i.ha, 31
  br label %.loopexit

.loopexit:                                        ; preds = %bb.r, %bb.p, %bb.t
  %.0617 = phi i32 [ %i.gu, %bb.t ], [ %i.gh, %bb.p ], [ 0, %bb.r ]
  %.0616 = phi i32 [ %.3768, %bb.t ], [ %i.gh, %bb.p ], [ 1, %bb.r ]
  %.1 = phi i32 [ %i.hb, %bb.t ], [ %i.go, %bb.p ], [ 0, %bb.r ]
  %i.hc = icmp eq i32 %.1, %i.go
  %i.hd = select i1 %i.hc, i32 %.0617, i32 %.0616
  %i.he = add i32 %i.hd, 7
  %i.hf = lshr i32 %i.he, 3
  br label %bb.u

bb.u:                                             ; preds = %.loopexit748, %.loopexit
  %.2 = phi i32 [ %i.hf, %.loopexit ], [ 0, %.loopexit748 ]
  %.val661 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hg = getelementptr inbounds nuw i8, ptr %.val661, i64 %i.cy
  store i32 %.2, ptr %i.hg, align 1
  %i.hh = zext i32 %1 to i64                      ; 2 uses
  %.val659 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hi = getelementptr inbounds nuw i8, ptr %.val659, i64 %i.hh
  store i32 1, ptr %i.hi, align 1
  %i.hj = or disjoint i64 %i.bm, -562949953421312
  %.val699 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hk = getelementptr inbounds nuw i8, ptr %.val699, i64 %i.hh
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  store i64 %i.hj, ptr %i.hl, align 1
  br label %bb.v

.critedge:                                        ; preds = %bb.i, %bb.f
  %i.hm = load i32, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  %i.hn = add i32 %i.hm, -48                      ; 2 uses
  store i32 %i.hn, ptr %i.a, align 8, !tbaa !17
  %i.ho = zext i32 %i.hn to i64                   ; 4 uses
  %.val114.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hp = getelementptr inbounds nuw i8, ptr %.val114.i, i64 %i.ho
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 40
  store i32 0, ptr %i.hq, align 1
  %.val124.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hr = getelementptr inbounds nuw i8, ptr %.val124.i, i64 %i.ho
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 32
  store i64 188978561025, ptr %i.hs, align 1
  %.val113.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ht = getelementptr inbounds nuw i8, ptr %.val113.i, i64 %i.ho
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  store i32 3, ptr %i.hu, align 1
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hv = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ho
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store i32 22326, ptr %i.hw, align 1
  %i.hx = add i32 %i.hm, -40
  %i.hy = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseRangeError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %i.hx) #7
  %i.hz = zext i32 %1 to i64
  %.val660 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ia = getelementptr inbounds nuw i8, ptr %.val660, i64 %i.hz
  store i32 %i.hy, ptr %i.ia, align 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.critedge, %bb.d
  store i32 %i.b, ptr %i.a, align 8, !tbaa !17
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AbitwiseAND0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 !guid !298 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  %i.c = add i32 %i.b, -112                       ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 75 uses
  %i.e = zext i32 %3 to i64                       ; 2 uses
  %.val656 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val656, i64 %i.e
  %.0.copyload.i = load i32, ptr %i.f, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %i.g = zext i32 %.0.copyload.i to i64
  %.val655 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val655, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.0.copyload.i711 = load i32, ptr %i.i, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i711) #7, !srcloc !19
  %i.j = zext i32 %i.c to i64                     ; 24 uses
  %.val679 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %.val679, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  store i32 %.0.copyload.i711, ptr %i.l, align 1
  %i.m = add i32 %.0.copyload.i, 8
  %i.n = add nuw nsw i64 %i.j, 48                 ; 2 uses
  %.val678 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %.val678, i64 %i.n
  store i32 %i.m, ptr %i.o, align 1
  %i.p = zext i32 %4 to i64                       ; 2 uses
  %.val654 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %.val654, i64 %i.p
  %.0.copyload.i712 = load i32, ptr %i.q, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i712) #7, !srcloc !19
  %i.r = zext i32 %.0.copyload.i712 to i64
  %.val653 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %.val653, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %.0.copyload.i713 = load i32, ptr %i.t, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i713) #7, !srcloc !19
  %.val677 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %.val677, i64 %i.j
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 44
  store i32 %.0.copyload.i713, ptr %i.v, align 1
  %i.w = add i32 %.0.copyload.i712, 8
  %i.x = add nuw nsw i64 %i.j, 40                 ; 2 uses
  %.val676 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %.val676, i64 %i.x
  store i32 %i.w, ptr %i.y, align 1
  %.val698 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %.val698, i64 %i.n
  %.0.copyload.i714 = load i64, ptr %i.z, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i714) #7, !srcloc !22
  %.val710 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %.val710, i64 %i.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store i64 %.0.copyload.i714, ptr %i.ab, align 1
  %.val697 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %.val697, i64 %i.x
  %.0.copyload.i715 = load i64, ptr %i.ac, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i715) #7, !srcloc !22
  %.val709 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %.val709, i64 %i.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i64 %.0.copyload.i715, ptr %i.ae, align 1
  %.val652 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %.val652, i64 %i.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 36
  %.0.copyload.i716 = load i32, ptr %i.ag, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i716) #7, !srcloc !19
  %.val651 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %.val651, i64 %i.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 28
  %.0.copyload.i717 = load i32, ptr %i.ai, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i717) #7, !srcloc !19
  %i.aj = tail call i32 @llvm.umax.i32(i32 %.0.copyload.i716, i32 %.0.copyload.i717) ; 3 uses
  %i.ak = icmp ult i32 %i.aj, 1025
  br i1 %i.ak, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.al = shl nuw nsw i32 %i.aj, 3
  %i.am = add nuw nsw i32 %i.al, 8                ; 4 uses
  %i.an = add i32 %2, 1376
  %i.ao = zext i32 %i.an to i64
  %.val650 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %.val650, i64 %i.ao
  %.0.copyload.i718 = load i32, ptr %i.ap, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i718) #7, !srcloc !19
  %i.aq = add i32 %2, 1372
  %i.ar = zext i32 %i.aq to i64
  %.val649 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %.val649, i64 %i.ar
  %.0.copyload.i719 = load i32, ptr %i.as, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i719) #7, !srcloc !19
  %i.at = sub i32 %.0.copyload.i718, %.0.copyload.i719
  %.not = icmp ugt i32 %i.am, %i.at
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.au = add i32 %2, 816
  %i.av = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AallocSlow0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.au, i32 noundef %i.am) #7
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %.val675 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aw = getelementptr inbounds nuw i8, ptr %.val675, i64 %i.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 104
  store i32 0, ptr %i.ax, align 1
  %.val708 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ay = getelementptr inbounds nuw i8, ptr %.val708, i64 %i.j
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 96
  store i64 120259084289, ptr %i.az, align 1
  %.val674 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ba = getelementptr inbounds nuw i8, ptr %.val674, i64 %i.j
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 80
  store i32 3, ptr %i.bb, align 1
  %.val673 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bc = getelementptr inbounds nuw i8, ptr %.val673, i64 %i.j
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 72
  store i32 55442, ptr %i.bd, align 1
  %i.be = add i32 %i.b, -40
  %i.bf = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseRangeError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %i.be) #7 ; 0 uses
  %i.bg = zext i32 %1 to i64
  %.val672 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bh = getelementptr inbounds nuw i8, ptr %.val672, i64 %i.bg
  store i32 0, ptr %i.bh, align 1
  br label %bb.v

bb.e:                                             ; preds = %bb.b
  %i.bi = add i32 %.0.copyload.i719, %i.am
  %i.bj = zext i32 %2 to i64
  %.val671 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %.val671, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1372
  store i32 %i.bi, ptr %i.bl, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.0615 = phi i32 [ %.0.copyload.i719, %bb.e ], [ %i.av, %bb.c ] ; 3 uses
  %i.bm = zext i32 %.0615 to i64                  ; 3 uses
  %.val670 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bn = getelementptr inbounds nuw i8, ptr %.val670, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store i32 %i.aj, ptr %i.bo, align 1
  %i.bp = or disjoint i32 %i.am, 1291845632
  %.val669 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bq = getelementptr inbounds nuw i8, ptr %.val669, i64 %i.bm
  store i32 %i.bp, ptr %i.bq, align 1
  %i.br = add i32 %.0615, 4
  %.val668 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bs = getelementptr inbounds nuw i8, ptr %.val668, i64 %i.j
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 76
  store i32 %i.br, ptr %i.bt, align 1
  %i.bu = add i32 %.0615, 8
  %i.bv = add nuw nsw i64 %i.j, 72                ; 2 uses
  %.val667 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bw = getelementptr inbounds nuw i8, ptr %.val667, i64 %i.bv
  store i32 %i.bu, ptr %i.bw, align 1
  %.val648 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bx = getelementptr inbounds nuw i8, ptr %.val648, i64 %i.e
  %.0.copyload.i720 = load i32, ptr %i.bx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i720) #7, !srcloc !19
  %i.by = zext i32 %.0.copyload.i720 to i64
  %.val647 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bz = getelementptr inbounds nuw i8, ptr %.val647, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %.0.copyload.i721 = load i32, ptr %i.ca, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i721) #7, !srcloc !19
  %.val666 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cb = getelementptr inbounds nuw i8, ptr %.val666, i64 %i.j
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 68
  store i32 %.0.copyload.i721, ptr %i.cc, align 1
  %i.cd = add i32 %.0.copyload.i720, 8
  %i.ce = add nuw nsw i64 %i.j, 64                ; 2 uses
  %.val665 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cf = getelementptr inbounds nuw i8, ptr %.val665, i64 %i.ce
  store i32 %i.cd, ptr %i.cf, align 1
  %.val646 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cg = getelementptr inbounds nuw i8, ptr %.val646, i64 %i.p
  %.0.copyload.i722 = load i32, ptr %i.cg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i722) #7, !srcloc !19
  %i.ch = zext i32 %.0.copyload.i722 to i64
  %.val645 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ci = getelementptr inbounds nuw i8, ptr %.val645, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %.0.copyload.i723 = load i32, ptr %i.cj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i723) #7, !srcloc !19
  %.val664 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ck = getelementptr inbounds nuw i8, ptr %.val664, i64 %i.j
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 60
  store i32 %.0.copyload.i723, ptr %i.cl, align 1
  %i.cm = add i32 %.0.copyload.i722, 8
  %i.cn = add nuw nsw i64 %i.j, 56                ; 2 uses
  %.val663 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.co = getelementptr inbounds nuw i8, ptr %.val663, i64 %i.cn
  store i32 %i.cm, ptr %i.co, align 1
  %.val696 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cp = getelementptr inbounds nuw i8, ptr %.val696, i64 %i.bv
  %.0.copyload.i724 = load i64, ptr %i.cp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i724) #7, !srcloc !22
  %i.cq = add nuw nsw i64 %i.j, 16                ; 2 uses
  %.val707 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cr = getelementptr inbounds nuw i8, ptr %.val707, i64 %i.cq
  store i64 %.0.copyload.i724, ptr %i.cr, align 1
  %.val695 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cs = getelementptr inbounds nuw i8, ptr %.val695, i64 %i.ce
  %.0.copyload.i725 = load i64, ptr %i.cs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i725) #7, !srcloc !22
  %i.ct = add nuw nsw i64 %i.j, 8                 ; 2 uses
  %.val706 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cu = getelementptr inbounds nuw i8, ptr %.val706, i64 %i.ct
  store i64 %.0.copyload.i725, ptr %i.cu, align 1
  %.val694 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cv = getelementptr inbounds nuw i8, ptr %.val694, i64 %i.cn
  %.0.copyload.i726 = load i64, ptr %i.cv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i726) #7, !srcloc !22
  %.val705 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cw = getelementptr inbounds nuw i8, ptr %.val705, i64 %i.j
  store i64 %.0.copyload.i726, ptr %i.cw, align 1
  %.val693 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cx = getelementptr inbounds nuw i8, ptr %.val693, i64 %i.cq
  %.0.copyload.i727 = load i64, ptr %i.cx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i727) #7, !srcloc !22
  %i.cy = lshr i64 %.0.copyload.i727, 32          ; 5 uses
  %.val644 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cz = getelementptr inbounds nuw i8, ptr %.val644, i64 %i.cy
  %.0.copyload.i728 = load i32, ptr %i.cz, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i728) #7, !srcloc !19
  %.val692 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.da = getelementptr inbounds nuw i8, ptr %.val692, i64 %i.ct
  %.0.copyload.i729 = load i64, ptr %i.da, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i729) #7, !srcloc !22
  %.val691 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.db = getelementptr inbounds nuw i8, ptr %.val691, i64 %i.j
  %.0.copyload.i730 = load i64, ptr %i.db, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i730) #7, !srcloc !22
  %.val643 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dc = getelementptr inbounds nuw i8, ptr %.val643, i64 %i.j
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  %.0.copyload.i731 = load i32, ptr %i.dd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i731) #7, !srcloc !19
  %.val642 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.de = getelementptr inbounds nuw i8, ptr %.val642, i64 %i.j
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %.0.copyload.i732 = load i32, ptr %i.df, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i732) #7, !srcloc !19
  %i.dg = icmp ugt i32 %.0.copyload.i731, %.0.copyload.i732 ; 2 uses
  %i.dh = select i1 %i.dg, i64 %.0.copyload.i729, i64 %.0.copyload.i730 ; 3 uses
  %i.di = lshr i64 %i.dh, 32                      ; 2 uses
  %i.dj = trunc nuw i64 %i.di to i32              ; 4 uses
  %i.dk = icmp ult i32 %.0.copyload.i728, %i.dj
  br i1 %i.dk, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dl = select i1 %i.dg, i64 %.0.copyload.i730, i64 %.0.copyload.i729 ; 2 uses
  %i.dm = lshr i64 %i.dl, 32                      ; 2 uses
  %i.dn = trunc nuw i64 %i.dm to i32              ; 3 uses
  %i.do = add i32 %i.dj, 1                        ; 3 uses
  %i.dp = icmp ugt i32 %.0.copyload.i728, %i.do
  br i1 %i.dp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.val662 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dq = getelementptr inbounds nuw i8, ptr %.val662, i64 %i.cy
  store i32 %i.do, ptr %i.dq, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.0611 = phi i32 [ %i.do, %bb.h ], [ %.0.copyload.i728, %bb.g ]
  %i.dr = icmp ult i32 %.0611, %i.dn
  br i1 %i.dr, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ds = trunc i64 %.0.copyload.i727 to i32
  %i.dt = trunc i64 %i.dl to i32                  ; 2 uses
  %i.du = shl i32 %i.dn, 3                        ; 3 uses
  %i.dv = tail call i32 @w2c_hermes_0x5F_memcpy(ptr noundef nonnull %0, i32 noundef %i.ds, i32 noundef %i.dt, i32 noundef %i.du) #7 ; 8 uses
  %.val641 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dw = getelementptr inbounds nuw i8, ptr %.val641, i64 %i.cy
  %.0.copyload.i733 = load i32, ptr %i.dw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i733) #7, !srcloc !19
  %i.dx = sub i32 %.0.copyload.i733, %i.dn
  %i.dy = shl i32 %i.dx, 3
  %i.dz = add i32 %i.dv, %i.du
  %.not632 = icmp eq i64 %i.dm, 0
  br i1 %.not632, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ea = add i32 %i.dt, -8
  %i.eb = add i32 %i.ea, %i.du
  %i.ec = zext i32 %i.eb to i64
  %.val690 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ed = getelementptr inbounds nuw i8, ptr %.val690, i64 %i.ec
  %.0.copyload.i734 = load i64, ptr %i.ed, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i734) #7, !srcloc !22
  %i.ee = ashr i64 %.0.copyload.i734, 63
  %i.ef = trunc nsw i64 %i.ee to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.0 = phi i32 [ %i.ef, %bb.k ], [ 0, %bb.j ]
  %i.eg = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.dz, i32 noundef %.0, i32 noundef %i.dy) #7 ; 0 uses
  %i.eh = trunc i64 %i.dh to i32                  ; 5 uses
  %.not633 = icmp eq i64 %i.di, 0
  br i1 %.not633, label %.loopexit748, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ei = icmp ugt i64 %i.dh, 17179869183
  br i1 %i.ei, label %bb.n, label %.loopexit749

bb.n:                                             ; preds = %bb.m
  %i.ej = and i32 %i.dj, -4                       ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.o ], [ 0, %bb.n ] ; 2 uses
  %i.ek = trunc nuw i64 %indvars.iv to i32
  %i.el = shl i32 %i.ek, 3                        ; 5 uses
  %i.em = add i32 %i.el, %i.dv
  %i.en = zext i32 %i.em to i64                   ; 2 uses
  %.val689 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eo = getelementptr inbounds nuw i8, ptr %.val689, i64 %i.en
  %.0.copyload.i735 = load i64, ptr %i.eo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i735) #7, !srcloc !22
  %i.ep = add i32 %i.el, %i.eh
  %i.eq = zext i32 %i.ep to i64
  %.val688 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.er = getelementptr inbounds nuw i8, ptr %.val688, i64 %i.eq
  %.0.copyload.i736 = load i64, ptr %i.er, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i736) #7, !srcloc !22
  %i.es = and i64 %.0.copyload.i736, %.0.copyload.i735
  %.val704 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.et = getelementptr inbounds nuw i8, ptr %.val704, i64 %i.en
  store i64 %i.es, ptr %i.et, align 1
  %i.eu = or disjoint i32 %i.el, 8                ; 2 uses
  %i.ev = add i32 %i.eu, %i.dv
  %i.ew = zext i32 %i.ev to i64                   ; 2 uses
  %.val687 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ex = getelementptr inbounds nuw i8, ptr %.val687, i64 %i.ew
  %.0.copyload.i737 = load i64, ptr %i.ex, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i737) #7, !srcloc !22
  %i.ey = add i32 %i.eu, %i.eh
  %i.ez = zext i32 %i.ey to i64
  %.val686 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fa = getelementptr inbounds nuw i8, ptr %.val686, i64 %i.ez
  %.0.copyload.i738 = load i64, ptr %i.fa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i738) #7, !srcloc !22
  %i.fb = and i64 %.0.copyload.i738, %.0.copyload.i737
  %.val703 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fc = getelementptr inbounds nuw i8, ptr %.val703, i64 %i.ew
  store i64 %i.fb, ptr %i.fc, align 1
  %i.fd = or disjoint i32 %i.el, 16               ; 2 uses
  %i.fe = add i32 %i.fd, %i.dv
  %i.ff = zext i32 %i.fe to i64                   ; 2 uses
  %.val685 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fg = getelementptr inbounds nuw i8, ptr %.val685, i64 %i.ff
  %.0.copyload.i739 = load i64, ptr %i.fg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i739) #7, !srcloc !22
  %i.fh = add i32 %i.fd, %i.eh
  %i.fi = zext i32 %i.fh to i64
  %.val684 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fj = getelementptr inbounds nuw i8, ptr %.val684, i64 %i.fi
  %.0.copyload.i740 = load i64, ptr %i.fj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i740) #7, !srcloc !22
  %i.fk = and i64 %.0.copyload.i740, %.0.copyload.i739
  %.val702 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fl = getelementptr inbounds nuw i8, ptr %.val702, i64 %i.ff
  store i64 %i.fk, ptr %i.fl, align 1
  %i.fm = or disjoint i32 %i.el, 24               ; 2 uses
  %i.fn = add i32 %i.fm, %i.dv
  %i.fo = zext i32 %i.fn to i64                   ; 2 uses
  %.val683 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fp = getelementptr inbounds nuw i8, ptr %.val683, i64 %i.fo
  %.0.copyload.i741 = load i64, ptr %i.fp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i741) #7, !srcloc !22
  %i.fq = add i32 %i.fm, %i.eh
  %i.fr = zext i32 %i.fq to i64
  %.val682 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fs = getelementptr inbounds nuw i8, ptr %.val682, i64 %i.fr
  %.0.copyload.i742 = load i64, ptr %i.fs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i742) #7, !srcloc !22
  %i.ft = and i64 %.0.copyload.i742, %.0.copyload.i741
  %.val701 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fu = getelementptr inbounds nuw i8, ptr %.val701, i64 %i.fo
  store i64 %i.ft, ptr %i.fu, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %indvars755 = trunc i64 %indvars.iv.next to i32
  %.not634 = icmp eq i32 %i.ej, %indvars755
  br i1 %.not634, label %.loopexit749, label %bb.o

.loopexit749:                                     ; preds = %bb.o, %bb.m
  %.1620 = phi i32 [ 0, %bb.m ], [ %i.ej, %bb.o ]
  %i.fv = and i32 %i.dj, 3                        ; 2 uses
  %.not635 = icmp eq i32 %i.fv, 0
  br i1 %.not635, label %.loopexit748, label %.preheader

.preheader:                                       ; preds = %.loopexit749, %.preheader
  %.2621 = phi i32 [ %5, %.preheader ], [ %.1620, %.loopexit749 ] ; 2 uses
  %.0613 = phi i32 [ %i.gf, %.preheader ], [ 0, %.loopexit749 ]
  %i.fw = shl i32 %.2621, 3                       ; 2 uses
  %i.fx = add i32 %i.fw, %i.dv
  %i.fy = zext i32 %i.fx to i64                   ; 2 uses
  %.val681 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fz = getelementptr inbounds nuw i8, ptr %.val681, i64 %i.fy
  %.0.copyload.i743 = load i64, ptr %i.fz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i743) #7, !srcloc !22
  %i.ga = add i32 %i.fw, %i.eh
  %i.gb = zext i32 %i.ga to i64
  %.val680 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gc = getelementptr inbounds nuw i8, ptr %.val680, i64 %i.gb
  %.0.copyload.i744 = load i64, ptr %i.gc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i744) #7, !srcloc !22
  %i.gd = and i64 %.0.copyload.i744, %.0.copyload.i743
  %.val700 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ge = getelementptr inbounds nuw i8, ptr %.val700, i64 %i.fy
  store i64 %i.gd, ptr %i.ge, align 1
  %5 = add nsw i32 %.2621, 1
  %i.gf = add nuw nsw i32 %.0613, 1               ; 2 uses
  %.not636 = icmp eq i32 %i.gf, %i.fv
  br i1 %.not636, label %.loopexit748, label %.preheader

.loopexit748:                                     ; preds = %.preheader, %.loopexit749, %bb.l
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gg = getelementptr inbounds nuw i8, ptr %.val, i64 %i.cy
  %.0.copyload.i745 = load i32, ptr %i.gg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i745) #7, !srcloc !19
  %i.gh = shl i32 %.0.copyload.i745, 3            ; 5 uses
  %.not637 = icmp eq i32 %i.gh, 0
  br i1 %.not637, label %bb.u, label %bb.p

bb.p:                                             ; preds = %.loopexit748
  %i.gi = add i32 %i.gh, -1                       ; 2 uses
  %i.gj = add i32 %i.gi, %i.dv
  %i.gk = zext i32 %i.gj to i64
  %.val658 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gl = getelementptr inbounds nuw i8, ptr %.val658, i64 %i.gk
  %.0.copyload.i746 = load i8, ptr %i.gl, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i746) #7, !srcloc !20
  %i.gm = zext i8 %.0.copyload.i746 to i32
  %i.gn = shl nuw i32 %i.gm, 24
  %i.go = ashr i32 %i.gn, 31                      ; 3 uses
  %i.gp = trunc nsw i32 %i.go to i8
  %.not638 = icmp eq i8 %.0.copyload.i746, %i.gp
  br i1 %.not638, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.gq = zext i32 %i.gi to i64
  %i.gr = add i32 %i.dv, -1
  br label %bb.s

bb.r:                                             ; preds = %bb.s
  %i.gs = add nsw i64 %.0612769, -1               ; 2 uses
  %i.gt = add i32 %.3768, -1
  %.not639 = icmp eq i64 %i.gs, 0
  br i1 %.not639, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %.0612769 = phi i64 [ %i.gq, %bb.q ], [ %i.gs, %bb.r ] ; 2 uses
  %.3768 = phi i32 [ %i.gh, %bb.q ], [ %i.gt, %bb.r ] ; 2 uses
  %i.gu = trunc nuw i64 %.0612769 to i32          ; 2 uses
  %i.gv = add i32 %i.gr, %i.gu
  %i.gw = zext i32 %i.gv to i64
  %.val657 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gx = getelementptr inbounds nuw i8, ptr %.val657, i64 %i.gw
  %.0.copyload.i747 = load i8, ptr %i.gx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i747) #7, !srcloc !20
  %i.gy = icmp eq i8 %.0.copyload.i746, %.0.copyload.i747
  br i1 %i.gy, label %bb.r, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gz = zext i8 %.0.copyload.i747 to i32
  %i.ha = shl nuw i32 %i.gz, 24
  %i.hb = ashr i32 %i.ha, 31
  br label %.loopexit

.loopexit:                                        ; preds = %bb.r, %bb.p, %bb.t
  %.0617 = phi i32 [ %i.gu, %bb.t ], [ %i.gh, %bb.p ], [ 0, %bb.r ]
  %.0616 = phi i32 [ %.3768, %bb.t ], [ %i.gh, %bb.p ], [ 1, %bb.r ]
  %.1 = phi i32 [ %i.hb, %bb.t ], [ %i.go, %bb.p ], [ 0, %bb.r ]
  %i.hc = icmp eq i32 %.1, %i.go
  %i.hd = select i1 %i.hc, i32 %.0617, i32 %.0616
  %i.he = add i32 %i.hd, 7
  %i.hf = lshr i32 %i.he, 3
  br label %bb.u

bb.u:                                             ; preds = %.loopexit748, %.loopexit
  %.2 = phi i32 [ %i.hf, %.loopexit ], [ 0, %.loopexit748 ]
  %.val661 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hg = getelementptr inbounds nuw i8, ptr %.val661, i64 %i.cy
  store i32 %.2, ptr %i.hg, align 1
  %i.hh = zext i32 %1 to i64                      ; 2 uses
  %.val659 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hi = getelementptr inbounds nuw i8, ptr %.val659, i64 %i.hh
  store i32 1, ptr %i.hi, align 1
  %i.hj = or disjoint i64 %i.bm, -562949953421312
  %.val699 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hk = getelementptr inbounds nuw i8, ptr %.val699, i64 %i.hh
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  store i64 %i.hj, ptr %i.hl, align 1
  br label %bb.v

.critedge:                                        ; preds = %bb.i, %bb.f
  %i.hm = load i32, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  %i.hn = add i32 %i.hm, -48                      ; 2 uses
  store i32 %i.hn, ptr %i.a, align 8, !tbaa !17
  %i.ho = zext i32 %i.hn to i64                   ; 4 uses
  %.val114.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hp = getelementptr inbounds nuw i8, ptr %.val114.i, i64 %i.ho
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 40
  store i32 0, ptr %i.hq, align 1
  %.val124.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hr = getelementptr inbounds nuw i8, ptr %.val124.i, i64 %i.ho
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 32
  store i64 188978561025, ptr %i.hs, align 1
  %.val113.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ht = getelementptr inbounds nuw i8, ptr %.val113.i, i64 %i.ho
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  store i32 3, ptr %i.hu, align 1
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hv = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ho
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store i32 22326, ptr %i.hw, align 1
  %i.hx = add i32 %i.hm, -40
  %i.hy = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseRangeError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %i.hx) #7
  %i.hz = zext i32 %1 to i64
  %.val660 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ia = getelementptr inbounds nuw i8, ptr %.val660, i64 %i.hz
  store i32 %i.hy, ptr %i.ia, align 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.critedge, %bb.d
  store i32 %i.b, ptr %i.a, align 8, !tbaa !17
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AasUintN0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20long0x20long0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 !guid !299 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 4 uses
  %i.c = add i32 %i.b, -96                        ; 4 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !17
  %.not = icmp eq i64 %3, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 50 uses
  %.val426 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = zext i32 %i.c to i64                     ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val426, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  store i32 4, ptr %i.g, align 1
  %.val425 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val425, i64 %i.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  store i32 0, ptr %i.i, align 1
  %i.j = add i32 %i.b, -8
  %i.k = add nuw nsw i64 %i.e, 48                 ; 2 uses
  %.val424 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %.val424, i64 %i.k
  store i32 %i.j, ptr %i.l, align 1
  %.val432 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %.val432, i64 %i.k
  %.0.copyload.i = load i64, ptr %i.m, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i) #7, !srcloc !22
  %.val444 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %.val444, i64 %i.e
  store i64 %.0.copyload.i, ptr %i.n, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AfromBytes0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20llvh0x3A0x3AArrayRef0x3Cunsigned0x20char0x3E0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %i.c)
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %i.o = zext i32 %4 to i64                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val426, i64 %i.o
  %.0.copyload.i446 = load i32, ptr %i.p, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i446) #7, !srcloc !19
  %i.q = zext i32 %.0.copyload.i446 to i64
  %.val409 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %.val409, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %.0.copyload.i447 = load i32, ptr %i.s, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i447) #7, !srcloc !19
  %i.t = zext i32 %i.c to i64                     ; 14 uses
  %.val423 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %.val423, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 36
  store i32 %.0.copyload.i447, ptr %i.v, align 1
  %i.w = add i32 %.0.copyload.i446, 8
  %i.x = add nuw nsw i64 %i.t, 32                 ; 2 uses
  %.val422 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %.val422, i64 %i.x
  store i32 %i.w, ptr %i.y, align 1
  %.val431 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %.val431, i64 %i.x
  %.0.copyload.i448 = load i64, ptr %i.z, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i448) #7, !srcloc !22
  %i.aa = add nuw nsw i64 %i.t, 24                ; 2 uses
  %.val443 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %.val443, i64 %i.aa
  store i64 %.0.copyload.i448, ptr %i.ab, align 1
  %.val408 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %.val408, i64 %i.t
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 28
  %.0.copyload.i449 = load i32, ptr %i.ad, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i449) #7, !srcloc !19
  %.not399 = icmp eq i32 %.0.copyload.i449, 0
  br i1 %.not399, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val407 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %.val407, i64 %i.aa
  %.0.copyload.i450 = load i32, ptr %i.ae, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i450) #7, !srcloc !19
  %i.af = shl i32 %.0.copyload.i449, 3
  %i.ag = add i32 %i.af, -8
  %i.ah = add i32 %i.ag, %.0.copyload.i450
  %i.ai = zext i32 %i.ah to i64
  %.val430 = load ptr, ptr %i.d, align 8, !tbaa !18
end_hunk_0
