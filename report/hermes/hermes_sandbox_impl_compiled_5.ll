inline.NumInlined: 16806
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AquickSort0x28hermes0x3A0x3Avm0x3A0x3ASortModel0x2A0x2C0x20unsigned0x20int0x2C0x20unsigned0x20int0x29:bb.a
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
  %i.fz = getelementptr i8, ptr %i.dm, i64 16
  %i.ga = getelementptr i8, ptr %i.ft, i64 16
  %i.gb = load i128, ptr %i.fz, align 1
  %i.gc = load i128, ptr %i.ga, align 1
  %i.gd = xor i128 %i.gb, %i.gc
  %i.ge = or i128 %i.fy, %i.gd
  %i.gf = icmp ne i128 %i.ge, 0
  %i.gg = zext i1 %i.gf to i32
  %.not.i474 = icmp eq i32 %i.gg, 0
  br i1 %.not.i474, label %func_types_eq.exit475.thread, label %.critedge436, !prof !35

.critedge436:                                     ; preds = %bb.v, %bb.t, %bb.s, %func_types_eq.exit475
  tail call void @wasm_rt_trap(i32 noundef 6) #9
  unreachable

func_types_eq.exit475.thread:                     ; preds = %bb.u, %func_types_eq.exit475
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !36
  %i.gj = tail call i32 %i.fs(ptr noundef %i.gi, i32 noundef %1, i32 noundef %.3412, i32 noundef %i.do) #8
  %.not431 = icmp eq i32 %i.gj, 0
  br i1 %.not431, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %func_types_eq.exit475.thread
  %.val454 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.gk = getelementptr inbounds nuw i8, ptr %.val454, i64 %i.i
  %.0.copyload.i476 = load i32, ptr %i.gk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i476) #8, !srcloc !19
  %i.gl = shl i32 %.3412, 2
  %i.gm = add i32 %.0.copyload.i476, %i.gl
  %i.gn = zext i32 %i.gm to i64                   ; 2 uses
  %.val453 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.go = getelementptr inbounds nuw i8, ptr %.val453, i64 %i.gn
  %.0.copyload.i477 = load i32, ptr %i.go, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i477) #8, !srcloc !19
  %i.gp = shl i32 %i.do, 2
  %i.gq = add i32 %.0.copyload.i476, %i.gp
  %i.gr = zext i32 %i.gq to i64                   ; 2 uses
  %.val452 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.gs = getelementptr inbounds nuw i8, ptr %.val452, i64 %i.gr
  %.0.copyload.i478 = load i32, ptr %i.gs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i478) #8, !srcloc !19
  %.val438 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.gt = getelementptr inbounds nuw i8, ptr %.val438, i64 %i.gn
  store i32 %.0.copyload.i478, ptr %i.gt, align 1
  %.val437 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.gu = getelementptr inbounds nuw i8, ptr %.val437, i64 %i.gr
  store i32 %.0.copyload.i477, ptr %i.gu, align 1
  %.not432 = icmp eq i32 %i.do, 0
  br i1 %.not432, label %.loopexit482, label %bb.h

.loopexit482:                                     ; preds = %bb.r, %bb.w
  %i.gv = add nuw i32 %.0404, 1                   ; 2 uses
  %.not433 = icmp eq i32 %i.gv, %2
  br i1 %.not433, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.loopexit482, %func_types_eq.exit475.thread, %bb.q, %bb.g, %bb.f
  %.1 = phi i32 [ %i.de, %bb.f ], [ 0, %func_types_eq.exit475.thread ], [ 1, %bb.g ], [ 0, %bb.q ], [ 1, %.loopexit482 ] ; 2 uses
  %.val451 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.gw = getelementptr inbounds nuw i8, ptr %.val451, i64 %i.i
  %.0.copyload.i479 = load i32, ptr %i.gw, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i479) #8, !srcloc !19
  %.not434 = icmp eq i32 %.0.copyload.i479, 0
  br i1 %.not434, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.loopexit
  %.val = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.gx = getelementptr inbounds nuw i8, ptr %.val, i64 %i.o
  store i32 %.0.copyload.i479, ptr %i.gx, align 1
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i479) #8
  br label %bb.y

bb.y:                                             ; preds = %.loopexit, %bb.a, %bb.x
  %.2 = phi i32 [ 1, %bb.a ], [ %.1, %.loopexit ], [ %.1, %bb.x ]
  store i32 %i.b, ptr %i.a, align 8, !tbaa !7
  ret i32 %.2

bb.z:                                             ; preds = %bb.b
  tail call void @w2c_hermes_abort(ptr noundef nonnull %0) #8
  tail call void @wasm_rt_trap(i32 noundef 5) #9
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

declare i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3A0x28anonymous0x20namespace0x290x3A0x3AdoQuickSort0x28hermes0x3A0x3Avm0x3A0x3ASortModel0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Avector0x3Cunsigned0x20int0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cunsigned0x20int0x3E0x3E0x260x2C0x20int0x2C0x20unsigned0x20int0x2C0x20unsigned0x20int0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AparseESDate0x28hermes0x3A0x3Avm0x3A0x3AStringView0x2C0x20hermes0x3A0x3Avm0x3A0x3ALocalTimeOffsetCache0x260x290x3A0x3A0x24_40x3A0x3Aoperator0x280x290x280x290x20const(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 59 uses
  %i.b = zext i32 %2 to i64                       ; 6 uses
  %i.c = add nuw nsw i64 %i.b, 4                  ; 3 uses
  %.val570 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %.val570, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !19
  %i.e = and i32 %.0.copyload.i, 1073741824
  %.val569 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val569, i64 %i.b
  %.0.copyload.i585 = load i32, ptr %i.f, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i585) #8, !srcloc !19
  %i.g = icmp sgt i32 %.0.copyload.i, -1
  %.not522 = icmp eq i32 %i.e, 0                  ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  br i1 %.not522, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = zext i32 %.0.copyload.i585 to i64
  %.val568 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %.val568, i64 %i.h
  %.0.copyload.i586 = load i32, ptr %i.i, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i586) #8, !srcloc !19
  %i.j = zext i32 %.0.copyload.i586 to i64        ; 4 uses
  %.val567 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %.val567, i64 %i.j
  %.0.copyload.i587 = load i32, ptr %i.k, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i587) #8, !srcloc !19
  %i.l = icmp ult i32 %.0.copyload.i587, 150994944
  br i1 %i.l, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.m = and i32 %.0.copyload.i587, 251658240
  switch i32 %i.m, label %bb.g [
    i32 117440512, label %bb.f
    i32 50331648, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.n = add i32 %.0.copyload.i586, 8
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.o = add i32 %.0.copyload.i586, 12
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %.val566 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %.val566, i64 %i.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.0.copyload.i588 = load i32, ptr %i.q, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i588) #8, !srcloc !19
  %i.r = zext i32 %.0.copyload.i588 to i64        ; 2 uses
  %.val565 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %.val565, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %.0.copyload.i589 = load i32, ptr %i.t, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i589) #8, !srcloc !19
  %i.u = add i32 %.0.copyload.i588, 12
  %.val581 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %.val581, i64 %i.r
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 23
  %.0.copyload.i590 = load i8, ptr %i.w, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i590) #8, !srcloc !22
  %i.x = icmp slt i8 %.0.copyload.i590, 0
  %i.y = select i1 %i.x, i32 %.0.copyload.i589, i32 %i.u
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  %.val564 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %.val564, i64 %i.j
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %.0.copyload.i591 = load i32, ptr %i.aa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i591) #8, !srcloc !19
  %i.ab = add i32 %.0.copyload.i586, 12
  %.val580 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %.val580, i64 %i.j
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 23
  %.0.copyload.i592 = load i8, ptr %i.ad, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i592) #8, !srcloc !22
  %i.ae = icmp slt i8 %.0.copyload.i592, 0
  %i.af = select i1 %i.ae, i32 %.0.copyload.i591, i32 %i.ab
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.h, %bb.g, %bb.f, %bb.e
  %.0505 = phi i32 [ %.0.copyload.i585, %bb.b ], [ %i.y, %bb.g ], [ %i.n, %bb.e ], [ %i.o, %bb.f ], [ %i.af, %bb.h ]
  %i.ag = shl nuw i32 %.0.copyload.i, 1
  %i.ah = and i32 %i.ag, 2147483646
  %i.ai = add i32 %.0505, %i.ah
  %.val563 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %.val563, i64 %i.b
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.0.copyload.i593 = load i32, ptr %i.ak, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i593) #8, !srcloc !19
  %i.al = shl i32 %.0.copyload.i593, 1
  %i.am = add i32 %i.ai, %i.al
  br label %bb.r

bb.j:                                             ; preds = %bb.a
  br i1 %.not522, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = zext i32 %.0.copyload.i585 to i64
  %.val562 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %.val562, i64 %i.an
  %.0.copyload.i594 = load i32, ptr %i.ao, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i594) #8, !srcloc !19
  %i.ap = zext i32 %.0.copyload.i594 to i64       ; 4 uses
  %.val561 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %.val561, i64 %i.ap
  %.0.copyload.i595 = load i32, ptr %i.aq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i595) #8, !srcloc !19
  %i.ar = icmp ult i32 %.0.copyload.i595, 150994944
  br i1 %i.ar, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.as = and i32 %.0.copyload.i595, 251658240
  switch i32 %i.as, label %bb.o [
    i32 134217728, label %bb.n
    i32 67108864, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.at = add i32 %.0.copyload.i594, 8
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.au = add i32 %.0.copyload.i594, 12
  br label %bb.q

bb.o:                                             ; preds = %bb.l
  %.val560 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %.val560, i64 %i.ap
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.0.copyload.i596 = load i32, ptr %i.aw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i596) #8, !srcloc !19
  %i.ax = zext i32 %.0.copyload.i596 to i64       ; 2 uses
  %.val559 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ay = getelementptr inbounds nuw i8, ptr %.val559, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %.0.copyload.i597 = load i32, ptr %i.az, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i597) #8, !srcloc !19
  %i.ba = add i32 %.0.copyload.i596, 12
  %.val579 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bb = getelementptr inbounds nuw i8, ptr %.val579, i64 %i.ax
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 23
  %.0.copyload.i598 = load i8, ptr %i.bc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i598) #8, !srcloc !22
  %i.bd = icmp slt i8 %.0.copyload.i598, 0
  %i.be = select i1 %i.bd, i32 %.0.copyload.i597, i32 %i.ba
  br label %bb.q

bb.p:                                             ; preds = %bb.k
  %.val558 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %.val558, i64 %i.ap
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  %.0.copyload.i599 = load i32, ptr %i.bg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i599) #8, !srcloc !19
  %i.bh = add i32 %.0.copyload.i594, 12
  %.val578 = load ptr, ptr %i.a, align 8, !tbaa !18
end_hunk_0
begin_hunk_1_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3Aencode0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3E0x2C0x20bool0x200x280x2A0x290x28char16_t0x290x29:bb.a
  %i.fc = getelementptr i8, ptr %i.ev, i64 16
  %i.fd = load i128, ptr %i.fb, align 1
  %i.fe = load i128, ptr %i.fc, align 1
  %i.ff = xor i128 %i.fd, %i.fe
  %i.fg = or i128 %i.fa, %i.ff
  %i.fh = icmp ne i128 %i.fg, 0
  %i.fi = zext i1 %i.fh to i32
  %.not.i = icmp eq i32 %i.fi, 0
  br i1 %.not.i, label %func_types_eq.exit.thread, label %.critedge, !prof !35

.critedge:                                        ; preds = %bb.y, %bb.w, %bb.v, %func_types_eq.exit
  tail call void @wasm_rt_trap(i32 noundef 6) #9
  unreachable

func_types_eq.exit.thread:                        ; preds = %bb.x, %func_types_eq.exit
  %i.fj = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !36
  %i.fl = tail call i32 %i.eu(ptr noundef %i.fk, i32 noundef %i.eo) #8
  %.not1011 = icmp eq i32 %i.fl, 0
  br i1 %.not1011, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %func_types_eq.exit.thread
  %.val1067 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.fm = getelementptr inbounds nuw i8, ptr %.val1067, i64 %i.i
  %.0.copyload.i1139 = load i32, ptr %i.fm, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1139) #8, !srcloc !19
  %.val1066 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.fn = getelementptr inbounds nuw i8, ptr %.val1066, i64 %i.f
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 72
  %.0.copyload.i1140 = load i32, ptr %i.fo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1140) #8, !srcloc !19
  %.not1017 = icmp ult i32 %.0.copyload.i1139, %.0.copyload.i1140
  br i1 %.not1017, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.ed, i32 noundef %i.k, i32 noundef 0, i32 noundef 2) #8
  %.val1065 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.fp = getelementptr inbounds nuw i8, ptr %.val1065, i64 %i.i
  %.0.copyload.i1141 = load i32, ptr %i.fp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1141) #8, !srcloc !19
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.2973 = phi i32 [ %.0.copyload.i1141, %bb.aa ], [ %.0.copyload.i1139, %bb.z ]
  %.val1064 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.fq = getelementptr inbounds nuw i8, ptr %.val1064, i64 %i.l
  %.0.copyload.i1142 = load i32, ptr %i.fq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1142) #8, !srcloc !19
  %i.fr = shl i32 %.2973, 1
  %i.fs = add i32 %.0.copyload.i1142, %i.fr
  %i.ft = zext i32 %i.fs to i64
  %.val1112 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.fu = trunc i32 %.3 to i16
  %i.fv = getelementptr inbounds nuw i8, ptr %.val1112, i64 %i.ft
  store i16 %i.fu, ptr %i.fv, align 1
  %.val1063 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.fw = getelementptr inbounds nuw i8, ptr %.val1063, i64 %i.i
  %.0.copyload.i1143 = load i32, ptr %i.fw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1143) #8, !srcloc !19
  %i.fx = add i32 %.0.copyload.i1143, 1
  %.val1039 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.fy = getelementptr inbounds nuw i8, ptr %.val1039, i64 %i.i
  store i32 %i.fx, ptr %i.fy, align 1
  br label %.loopexit

bb.ac:                                            ; preds = %func_types_eq.exit.thread
  %i.fz = and i32 %.3, 64512
  %i.ga = icmp eq i32 %i.fz, 56320
  br i1 %i.ga, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %.val1038 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.gb = getelementptr inbounds nuw i8, ptr %.val1038, i64 %i.f
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 56
  store i32 0, ptr %i.gc, align 1
  %.val1092 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.gd = getelementptr inbounds nuw i8, ptr %.val1092, i64 %i.f
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 48
  store i64 107374182401, ptr %i.ge, align 1
  %.val1037 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.gf = getelementptr inbounds nuw i8, ptr %.val1037, i64 %i.f
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 32
  store i32 3, ptr %i.gg, align 1
  %.val1036 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.gh = getelementptr inbounds nuw i8, ptr %.val1036, i64 %i.f
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  store i32 18815, ptr %i.gi, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseURIError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.ee) #8
  br label %bb.bd

bb.ae:                                            ; preds = %bb.ac
  %i.gj = sub nsw i32 56319, %.3
  %i.gk = and i32 %i.gj, 64512
  %i.gl = icmp eq i32 %i.gk, 0
  br i1 %i.gl, label %bb.af, label %bb.an

bb.af:                                            ; preds = %bb.ae
  %i.gm = select i1 %.2978.in, i32 2, i32 0
  %i.gn = add i32 %.2963, %i.gm                   ; 3 uses
  %i.go = add i32 %.2968, 1                       ; 3 uses
  %i.gp = select i1 %.2978.in, i32 %i.gn, i32 %i.go
  %i.gq = select i1 %.2978.in, i32 %.0960, i32 %.2
  %i.gr = icmp eq i32 %i.gp, %i.gq
  br i1 %i.gr, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %.val1035 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.gs = getelementptr inbounds nuw i8, ptr %.val1035, i64 %i.f
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 56
  store i32 0, ptr %i.gt, align 1
  %.val1091 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.gu = getelementptr inbounds nuw i8, ptr %.val1091, i64 %i.f
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 48
  store i64 107374182401, ptr %i.gv, align 1
  %.val1034 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.gw = getelementptr inbounds nuw i8, ptr %.val1034, i64 %i.f
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 32
  store i32 3, ptr %i.gx, align 1
  %.val1033 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.gy = getelementptr inbounds nuw i8, ptr %.val1033, i64 %i.f
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  store i32 18815, ptr %i.gz, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseURIError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.ee) #8
  br label %bb.bd

bb.ah:                                            ; preds = %bb.af
  %i.ha = select i1 %.2978.in, i32 0, i32 %i.go
  %.val1107 = load ptr, ptr %i.e, align 8, !tbaa !18 ; 2 uses
  br i1 %.2978.in, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hb = zext i32 %i.go to i64
  %i.hc = getelementptr inbounds nuw i8, ptr %.val1107, i64 %i.hb
  %.0.copyload.i1144 = load i8, ptr %i.hc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1144) #8, !srcloc !22
  %i.hd = sext i8 %.0.copyload.i1144 to i32
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.he = zext i32 %i.gn to i64
  %i.hf = getelementptr inbounds nuw i8, ptr %.val1107, i64 %i.he
  %.0.copyload.i1145 = load i16, ptr %i.hf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i1145) #8, !srcloc !24
  %i.hg = zext i16 %.0.copyload.i1145 to i32
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.4 = phi i32 [ %i.hd, %bb.ai ], [ %i.hg, %bb.aj ] ; 2 uses
  %i.hh = and i32 %.4, 64512
  %.not1012 = icmp eq i32 %i.hh, 56320
  br i1 %.not1012, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.val1032 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.hi = getelementptr inbounds nuw i8, ptr %.val1032, i64 %i.f
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 56
  store i32 0, ptr %i.hj, align 1
  %.val1090 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.hk = getelementptr inbounds nuw i8, ptr %.val1090, i64 %i.f
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 48
  store i64 107374182401, ptr %i.hl, align 1
  %.val1031 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.hm = getelementptr inbounds nuw i8, ptr %.val1031, i64 %i.f
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 32
  store i32 3, ptr %i.hn, align 1
  %.val1030 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ho = getelementptr inbounds nuw i8, ptr %.val1030, i64 %i.f
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 24
  store i32 18815, ptr %i.hp, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseURIError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.ee) #8
  br label %bb.bd

bb.am:                                            ; preds = %bb.ak
  %i.hq = and i32 %.4, 57343
  %i.hr = shl nuw nsw i32 %i.eo, 10
  %i.hs = add nsw i32 %i.hr, -56613888
  %i.ht = add nsw i32 %i.hs, %i.hq
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ae
  %.3979 = phi i32 [ %i.ht, %bb.am ], [ %i.eo, %bb.ae ]
  %.3969 = phi i32 [ %i.ha, %bb.am ], [ %.2968, %bb.ae ] ; 2 uses
  %.3964 = phi i32 [ %i.gn, %bb.am ], [ %.2963, %bb.ae ] ; 2 uses
  %.val1029 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.hu = getelementptr inbounds nuw i8, ptr %.val1029, i64 %i.ef
  store i32 %i.ee, ptr %i.hu, align 1
  tail call void @w2c_hermes_hermes0x3A0x3AencodeUTF80x28char0x2A0x260x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.eg, i32 noundef %.3979) #8
  %.val1062 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.hv = getelementptr inbounds nuw i8, ptr %.val1062, i64 %i.ef
  %.0.copyload.i1146 = load i32, ptr %i.hv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1146) #8, !srcloc !19
  %i.hw = icmp eq i32 %i.ee, %.0.copyload.i1146
  br i1 %i.hw, label %.loopexit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hx = sub i32 %.0.copyload.i1146, %i.ee
  %.val1061 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.hy = getelementptr inbounds nuw i8, ptr %.val1061, i64 %i.i
  %.0.copyload.i1147 = load i32, ptr %i.hy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1147) #8, !srcloc !19
  %4 = zext i32 %i.hx to i64
  br label %bb.ap

bb.ap:                                            ; preds = %bb.av, %bb.ao
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.av ], [ 0, %bb.ao ] ; 2 uses
  %.3974 = phi i32 [ %i.jq, %bb.av ], [ %.0.copyload.i1147, %bb.ao ] ; 2 uses
  %i.hz = trunc nuw i64 %indvars.iv to i32
  %i.ia = add i32 %i.ee, %i.hz
  %i.ib = zext i32 %i.ia to i64
  %.val1105 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ic = getelementptr inbounds nuw i8, ptr %.val1105, i64 %i.ib
  %.0.copyload.i1148 = load i8, ptr %i.ic, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1148) #8, !srcloc !21
  %i.id = zext i8 %.0.copyload.i1148 to i32       ; 2 uses
  %.val1060 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ie = getelementptr inbounds nuw i8, ptr %.val1060, i64 %i.eh
  %.0.copyload.i1149 = load i32, ptr %i.ie, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1149) #8, !srcloc !19
  %.not1013 = icmp ugt i32 %.0.copyload.i1149, %.3974
  br i1 %.not1013, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.ed, i32 noundef %i.k, i32 noundef 0, i32 noundef 2) #8
  %.val1059 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.if = getelementptr inbounds nuw i8, ptr %.val1059, i64 %i.i
  %.0.copyload.i1150 = load i32, ptr %i.if, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1150) #8, !srcloc !19
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.4975 = phi i32 [ %.0.copyload.i1150, %bb.aq ], [ %.3974, %bb.ap ]
  %.val1058 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ig = getelementptr inbounds nuw i8, ptr %.val1058, i64 %i.l
  %.0.copyload.i1151 = load i32, ptr %i.ig, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1151) #8, !srcloc !19
  %i.ih = shl i32 %.4975, 1
  %i.ii = add i32 %.0.copyload.i1151, %i.ih
  %i.ij = zext i32 %i.ii to i64
  %.val1111 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ik = getelementptr inbounds nuw i8, ptr %.val1111, i64 %i.ij
  store i16 37, ptr %i.ik, align 1
  %.val1057 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.il = getelementptr inbounds nuw i8, ptr %.val1057, i64 %i.i
  %.0.copyload.i1152 = load i32, ptr %i.il, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1152) #8, !srcloc !19
  %i.im = add i32 %.0.copyload.i1152, 1           ; 3 uses
  %.val1028 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.in = getelementptr inbounds nuw i8, ptr %.val1028, i64 %i.i
  store i32 %i.im, ptr %i.in, align 1
  %.val1056 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.io = getelementptr inbounds nuw i8, ptr %.val1056, i64 %i.eh
  %.0.copyload.i1153 = load i32, ptr %i.io, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1153) #8, !srcloc !19
  %.not1014 = icmp ugt i32 %.0.copyload.i1153, %i.im
  br i1 %.not1014, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.ed, i32 noundef %i.k, i32 noundef 0, i32 noundef 2) #8
  %.val1055 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ip = getelementptr inbounds nuw i8, ptr %.val1055, i64 %i.i
  %.0.copyload.i1154 = load i32, ptr %i.ip, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1154) #8, !srcloc !19
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.5 = phi i32 [ %.0.copyload.i1154, %bb.as ], [ %i.im, %bb.ar ]
  %.val1054 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.iq = getelementptr inbounds nuw i8, ptr %.val1054, i64 %i.l
  %.0.copyload.i1155 = load i32, ptr %i.iq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1155) #8, !srcloc !19
  %i.ir = shl i32 %.5, 1
  %i.is = add i32 %.0.copyload.i1155, %i.ir
  %i.it = lshr i32 %i.id, 4
  %i.iu = icmp ult i8 %.0.copyload.i1148, -96
  %i.iv = select i1 %i.iu, i32 48, i32 55
  %i.iw = add nuw nsw i32 %i.it, %i.iv
  %i.ix = zext i32 %i.is to i64
  %.val1110 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.iy = trunc nuw nsw i32 %i.iw to i16
  %i.iz = getelementptr inbounds nuw i8, ptr %.val1110, i64 %i.ix
  store i16 %i.iy, ptr %i.iz, align 1
  %.val1053 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ja = getelementptr inbounds nuw i8, ptr %.val1053, i64 %i.i
  %.0.copyload.i1156 = load i32, ptr %i.ja, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1156) #8, !srcloc !19
  %i.jb = add i32 %.0.copyload.i1156, 1           ; 3 uses
  %.val1027 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.jc = getelementptr inbounds nuw i8, ptr %.val1027, i64 %i.i
  store i32 %i.jb, ptr %i.jc, align 1
  %i.jd = and i32 %i.id, 15                       ; 2 uses
  %i.je = icmp samesign ult i32 %i.jd, 10
  %i.jf = select i1 %i.je, i32 48, i32 55
  %i.jg = add nuw nsw i32 %i.jf, %i.jd
  %.val1052 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.jh = getelementptr inbounds nuw i8, ptr %.val1052, i64 %i.eh
  %.0.copyload.i1157 = load i32, ptr %i.jh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1157) #8, !srcloc !19
  %.not1015 = icmp ugt i32 %.0.copyload.i1157, %i.jb
  br i1 %.not1015, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.ed, i32 noundef %i.k, i32 noundef 0, i32 noundef 2) #8
  %.val1051 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ji = getelementptr inbounds nuw i8, ptr %.val1051, i64 %i.i
  %.0.copyload.i1158 = load i32, ptr %i.ji, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1158) #8, !srcloc !19
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.6 = phi i32 [ %.0.copyload.i1158, %bb.au ], [ %i.jb, %bb.at ]
  %.val1050 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.jj = getelementptr inbounds nuw i8, ptr %.val1050, i64 %i.l
  %.0.copyload.i1159 = load i32, ptr %i.jj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1159) #8, !srcloc !19
  %i.jk = shl i32 %.6, 1
  %i.jl = add i32 %.0.copyload.i1159, %i.jk
  %i.jm = zext i32 %i.jl to i64
  %.val1109 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.jn = trunc nuw nsw i32 %i.jg to i16
  %i.jo = getelementptr inbounds nuw i8, ptr %.val1109, i64 %i.jm
  store i16 %i.jn, ptr %i.jo, align 1
  %.val1049 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.jp = getelementptr inbounds nuw i8, ptr %.val1049, i64 %i.i
  %.0.copyload.i1160 = load i32, ptr %i.jp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1160) #8, !srcloc !19
  %i.jq = add i32 %.0.copyload.i1160, 1           ; 2 uses
  %.val1026 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.jr = getelementptr inbounds nuw i8, ptr %.val1026, i64 %i.i
  store i32 %i.jq, ptr %i.jr, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, %4
  br i1 %exitcond, label %.loopexit, label %bb.ap

.loopexit:                                        ; preds = %bb.av, %bb.an, %bb.ab
  %.4970 = phi i32 [ %.2968, %bb.ab ], [ %.3969, %bb.an ], [ %.3969, %bb.av ] ; 2 uses
  %.4965 = phi i32 [ %.2963, %bb.ab ], [ %.3964, %bb.an ], [ %.3964, %bb.av ]
  %.not1018 = icmp eq i32 %.4970, 0               ; 5 uses
  %i.js = select i1 %.not1018, i32 %.0960, i32 %.2
  %i.jt = add i32 %.4970, 1                       ; 2 uses
  %i.ju = select i1 %.not1018, i32 2, i32 0
  %i.jv = add i32 %i.ju, %.4965                   ; 2 uses
  %i.jw = select i1 %.not1018, i32 %i.jv, i32 %i.jt
  %i.jx = select i1 %.not1018, i32 0, i32 %i.jt
  %.not1019 = icmp eq i32 %i.js, %i.jw
  br i1 %.not1019, label %.loopexit1182, label %bb.s

.loopexit1182:                                    ; preds = %.loopexit, %bb.r
  %.val1048 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.jy = getelementptr inbounds nuw i8, ptr %.val1048, i64 %i.l
  %.0.copyload.i1161 = load i32, ptr %i.jy, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1161) #8, !srcloc !19
  %.val1047 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.jz = getelementptr inbounds nuw i8, ptr %.val1047, i64 %i.i
  %.0.copyload.i1162 = load i32, ptr %i.jz, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1162) #8, !srcloc !19
  %i.ka = icmp ult i32 %.0.copyload.i1162, 65536
  %.val1025 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.kb = getelementptr inbounds nuw i8, ptr %.val1025, i64 %i.f ; 2 uses
  br i1 %i.ka, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %.loopexit1182
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 164
  store i32 %.0.copyload.i1162, ptr %i.kc, align 1
  %i.kd = add nuw nsw i64 %i.f, 160               ; 2 uses
  %.val1024 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ke = getelementptr inbounds nuw i8, ptr %.val1024, i64 %i.kd
  store i32 %.0.copyload.i1161, ptr %i.ke, align 1
  %.val1104 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.kf = getelementptr inbounds nuw i8, ptr %.val1104, i64 %i.kd
  %.0.copyload.i1163 = load i64, ptr %i.kf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1163) #8, !srcloc !20
  %.val1089 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.kg = getelementptr inbounds nuw i8, ptr %.val1089, i64 %i.f
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  store i64 %.0.copyload.i1163, ptr %i.kh, align 1
  %i.ki = add i32 %i.b, -152
  %i.kj = add i32 %i.b, -160
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3A0x3AcreateDynamic0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20llvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.ki, i32 noundef %1, i32 noundef %i.kj) #8
  br label %bb.az

bb.ax:                                            ; preds = %.loopexit1182
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kb, i64 156
  store i32 %.0.copyload.i1162, ptr %i.kk, align 1
  %i.kl = add nuw nsw i64 %i.f, 152               ; 2 uses
  %.val1022 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.km = getelementptr inbounds nuw i8, ptr %.val1022, i64 %i.kl
  store i32 %.0.copyload.i1161, ptr %i.km, align 1
  %.val1103 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.kn = getelementptr inbounds nuw i8, ptr %.val1103, i64 %i.kl
  %.0.copyload.i1164 = load i64, ptr %i.kn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1164) #8, !srcloc !20
  %.val1088 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ko = getelementptr inbounds nuw i8, ptr %.val1088, i64 %i.f
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  store i64 %.0.copyload.i1164, ptr %i.kp, align 1
  %i.kq = add i32 %i.b, -16                       ; 2 uses
  %i.kr = add i32 %i.b, -168
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar16_t0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar16_t0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar16_t0x3E0x3E0x20hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3A0x3AarrayToString0x3Cchar16_t0x3E0x28llvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.kq, i32 noundef %i.kr) #8
  %i.ks = add i32 %i.b, -152
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACallResult0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x2C0x200x28hermes0x3A0x3Avm0x3A0x3Adetail0x3A0x3ACallResultSpecialize0x2920x3E0x20hermes0x3A0x3Avm0x3A0x3AExternalStringPrimitive0x3Cchar16_t0x3E0x3A0x3Acreate0x3Cstd0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar16_t0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar16_t0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar16_t0x3E0x3E0x3E0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar16_t0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar16_t0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar16_t0x3E0x3E0x260x260x29(ptr noundef nonnull %0, i32 noundef %i.ks, i32 noundef %1, i32 noundef %i.kq) #8
  %.val1094 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.kt = getelementptr inbounds nuw i8, ptr %.val1094, i64 %i.f
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 171
  %.0.copyload.i1165 = load i8, ptr %i.ku, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1165) #8, !srcloc !22
  %i.kv = icmp sgt i8 %.0.copyload.i1165, -1
  br i1 %i.kv, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.val1046 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.kw = getelementptr inbounds nuw i8, ptr %.val1046, i64 %i.f
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 160
  %.0.copyload.i1166 = load i32, ptr %i.kx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1166) #8, !srcloc !19
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1166) #8
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay, %bb.aw
  %.val1045 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ky = getelementptr inbounds nuw i8, ptr %.val1045, i64 %i.f
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 24
  %.0.copyload.i1167 = load i32, ptr %i.kz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1167) #8, !srcloc !19
  %.not1020 = icmp eq i32 %.0.copyload.i1167, 0
  br i1 %.not1020, label %bb.bd, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.val1106 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.la = getelementptr inbounds nuw i8, ptr %.val1106, i64 %i.f
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 32
  %.0.copyload.i1168 = load i32, ptr %i.lb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1168) #8, !srcloc !23
  %i.lc = zext i32 %.0.copyload.i1168 to i64
  %i.ld = or disjoint i64 %i.lc, -844424930131968 ; 2 uses
  %i.le = zext i32 %1 to i64
  %.val1044 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.lf = getelementptr inbounds nuw i8, ptr %.val1044, i64 %i.le
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 4
  %.0.copyload.i1169 = load i32, ptr %i.lg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1169) #8, !srcloc !19
  %i.lh = zext i32 %.0.copyload.i1169 to i64      ; 2 uses
  %i.li = add nuw nsw i64 %i.lh, 164              ; 2 uses
  %.val1043 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.lj = getelementptr inbounds nuw i8, ptr %.val1043, i64 %i.li
  %.0.copyload.i1170 = load i32, ptr %i.lj, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1170) #8, !srcloc !19
  %.val1042 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.lk = getelementptr inbounds nuw i8, ptr %.val1042, i64 %i.lh
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 168
  %.0.copyload.i1171 = load i32, ptr %i.ll, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1171) #8, !srcloc !19
  %i.lm = icmp ult i32 %.0.copyload.i1170, %.0.copyload.i1171
  br i1 %i.lm, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ln = add i32 %.0.copyload.i1170, 8
  %.val = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.lo = getelementptr inbounds nuw i8, ptr %.val, i64 %i.li
  store i32 %i.ln, ptr %i.lo, align 1
  %i.lp = zext i32 %.0.copyload.i1170 to i64
  %.val1087 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.lq = getelementptr inbounds nuw i8, ptr %.val1087, i64 %i.lp
  store i64 %i.ld, ptr %i.lq, align 1
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.lr = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1169, i64 noundef %i.ld) #8
  br label %bb.bd

bb.bd:                                            ; preds = %bb.az, %bb.bc, %bb.bb, %bb.al, %bb.ag, %bb.ad
  %.5981 = phi i32 [ -1, %bb.al ], [ %.0.copyload.i1170, %bb.bb ], [ %i.lr, %bb.bc ], [ -1, %bb.ad ], [ -1, %bb.ag ], [ -1, %bb.az ]
  %.val1041 = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ls = getelementptr inbounds nuw i8, ptr %.val1041, i64 %i.l
  %.0.copyload.i1172 = load i32, ptr %i.ls, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1172) #8, !srcloc !19
  %.not1021 = icmp eq i32 %i.k, %.0.copyload.i1172
  br i1 %.not1021, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1172) #8
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  store i32 %i.b, ptr %i.a, align 8, !tbaa !7
  ret i32 %.5981
}

declare void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseURIError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_hermes0x3A0x3AencodeUTF80x28char0x2A0x260x2C0x20unsigned0x20int0x29(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AgetNamed0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APropCacheID0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSRegExp0x3A0x3Asearch0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSRegExp0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3E0x2C0x20unsigned0x20int0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @w2c_hermes_memmove(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AputNamedThrowOnError0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APropCacheID0x2C0x20hermes0x3A0x3Avm0x3A0x3AHermesValue320x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSArray0x3A0x3AcreateNoAllocPropStorage0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHiddenClass0x3E0x2C0x20unsigned0x20int0x2C0x20unsigned0x20int0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AArrayStorageBase0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue320x3E0x3A0x3AthrowExcessiveCapacityError0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20int0x29(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AsnapshotWriteBarrierRangeSlow0x28hermes0x3A0x3Avm0x3A0x3AGCHermesValueBase0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue320x3E0x20const0x2A0x2C0x20unsigned0x20int0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHiddenClass0x3A0x3AfindProperty0x28hermes0x3A0x3Avm0x3A0x3APseudoHandle0x3Chermes0x3A0x3Avm0x3A0x3AHiddenClass0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x2C0x20hermes0x3A0x3Avm0x3A0x3APropertyFlags0x2C0x20hermes0x3A0x3Avm0x3A0x3ANamedPropertyDescriptor0x260x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AwriteBarrierSlow0x28hermes0x3A0x3Avm0x3A0x3AGCHermesValueBase0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue320x3E0x20const0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3AHermesValue320x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3A0x3Aslice0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3E0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AArrayImpl0x3A0x3AsetStorageEndIndex0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AArrayImpl0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20int0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3Acreate0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHiddenClass0x3E0x29(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHiddenClass0x3A0x3AinitializeMissingPropertyMap0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHiddenClass0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x29(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AdirectObjectPrototypeToString0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 8 uses
  %i.c = add i32 %i.b, -80                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 73 uses
  %i.e = zext i32 %3 to i64
  %.val726 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val726, i64 %i.e
  %.0.copyload.i = load i64, ptr %i.f, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i) #8, !srcloc !20
  %i.g = ashr i64 %.0.copyload.i, 47
end_hunk_1
begin_hunk_2_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AstringPrototypeTrim0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
  %i.dm = add i32 %.0609, %.0612
  %i.dn = add i32 %i.dm, %.0.copyload.i710
  br label %bb.x

bb.t:                                             ; preds = %bb.m
  %i.do = shl nuw nsw i32 %.0.copyload.i693, 1
  %i.dp = add i32 %.0.copyload.i694, %i.do
  br label %bb.w

bb.u:                                             ; preds = %bb.n
  %.val655 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dq = getelementptr inbounds nuw i8, ptr %.val655, i64 %i.bq
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  %.0.copyload.i711 = load i32, ptr %i.dr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i711) #8, !srcloc !19
  %i.ds = add i32 %.0.copyload.i700, 12
  %.val679 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dt = getelementptr inbounds nuw i8, ptr %.val679, i64 %i.bq
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 23
  %.0.copyload.i712 = load i8, ptr %i.du, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i712) #8, !srcloc !22
  %i.dv = icmp slt i8 %.0.copyload.i712, 0
  %i.dw = select i1 %i.dv, i32 %.0.copyload.i711, i32 %i.ds ; 2 uses
  %i.dx = and i32 %.0.copyload.i693, 1073741823   ; 2 uses
  %i.dy = shl nuw nsw i32 %i.dx, 1
  %i.dz = add i32 %i.dw, %i.dy
  br label %bb.w

.thread722:                                       ; preds = %bb.o
  %i.ea = and i32 %.0.copyload.i693, 1073741823   ; 2 uses
  %i.eb = shl nuw nsw i32 %i.ea, 1
  %i.ec = add nuw i32 %i.eb, 8
  %i.ed = add i32 %i.ec, %.0.copyload.i700
  %i.ee = add i32 %.0.copyload.i700, 8
  br label %bb.w

bb.v:                                             ; preds = %bb.o
  %.val661 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ef = getelementptr inbounds nuw i8, ptr %.val661, i64 %i.bq
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %.0.copyload.i702 = load i32, ptr %i.eg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i702) #8, !srcloc !19
  %i.eh = zext i32 %.0.copyload.i702 to i64       ; 2 uses
  %.val660 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ei = getelementptr inbounds nuw i8, ptr %.val660, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  %.0.copyload.i703 = load i32, ptr %i.ej, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i703) #8, !srcloc !19
  %.val682 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ek = getelementptr inbounds nuw i8, ptr %.val682, i64 %i.eh
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 23
  %.0.copyload.i704 = load i8, ptr %i.el, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i704) #8, !srcloc !22
  %i.em = and i32 %.0.copyload.i693, 1073741823   ; 2 uses
  %i.en = icmp slt i8 %.0.copyload.i704, 0
  %i.eo = add i32 %.0.copyload.i702, 12
  %i.ep = select i1 %i.en, i32 %.0.copyload.i703, i32 %i.eo
  %i.eq = shl nuw nsw i32 %i.em, 1
  %i.er = add i32 %i.ep, %i.eq
  %.val654 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.es = getelementptr inbounds nuw i8, ptr %.val654, i64 %i.bq
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %.0.copyload.i713 = load i32, ptr %i.et, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i713) #8, !srcloc !19
  %i.eu = zext i32 %.0.copyload.i713 to i64       ; 2 uses
  %.val653 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ev = getelementptr inbounds nuw i8, ptr %.val653, i64 %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 12
  %.0.copyload.i714 = load i32, ptr %i.ew, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i714) #8, !srcloc !19
  %i.ex = add i32 %.0.copyload.i713, 12
  %.val678 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ey = getelementptr inbounds nuw i8, ptr %.val678, i64 %i.eu
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 23
  %.0.copyload.i715 = load i8, ptr %i.ez, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i715) #8, !srcloc !22
  %i.fa = icmp slt i8 %.0.copyload.i715, 0
  %i.fb = select i1 %i.fa, i32 %.0.copyload.i714, i32 %i.ex
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.thread722, %.thread724, %bb.u, %bb.t
  %.1613 = phi i32 [ %.0.copyload.i693, %bb.t ], [ %i.dx, %bb.u ], [ %i.em, %bb.v ], [ %i.bu, %.thread724 ], [ %i.ea, %.thread722 ]
  %.1610 = phi i32 [ %.0.copyload.i694, %bb.t ], [ %i.dw, %bb.u ], [ %i.fb, %bb.v ], [ %i.by, %.thread724 ], [ %i.ee, %.thread722 ]
  %.0605 = phi i32 [ %i.dp, %bb.t ], [ %i.dz, %bb.u ], [ %i.er, %bb.v ], [ %i.bx, %.thread724 ], [ %i.ed, %.thread722 ]
  %.val652 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fc = getelementptr inbounds nuw i8, ptr %.val652, i64 %i.ax
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %.0.copyload.i716 = load i32, ptr %i.fd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i716) #8, !srcloc !19
  %i.fe = add i32 %.0.copyload.i716, %.1613
  %i.ff = shl i32 %i.fe, 1
  %i.fg = add i32 %i.ff, %.1610
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.s
  %.1608 = phi i32 [ %.0607, %bb.s ], [ 0, %bb.w ] ; 5 uses
  %.1606 = phi i32 [ 0, %bb.s ], [ %.0605, %bb.w ] ; 3 uses
  %.0603 = phi i32 [ 0, %bb.s ], [ %i.fg, %bb.w ] ; 2 uses
  %.2 = phi i32 [ %i.dn, %bb.s ], [ 0, %bb.w ]    ; 3 uses
  %i.fh = and i32 %.0.copyload.i692, 2147483647
  %.not642 = icmp eq i32 %.1608, 0                ; 5 uses
  %i.fi = select i1 %.not642, i32 %.0603, i32 %.2 ; 3 uses
  %i.fj = select i1 %.not642, i32 %.1606, i32 %.1608
  %i.fk = icmp eq i32 %i.fi, %i.fj
  br i1 %i.fk, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  br i1 %.not642, label %.preheader, label %bb.aj

.preheader:                                       ; preds = %bb.y, %bb.ai
  %.2614 = phi i32 [ %i.gc, %bb.ai ], [ %.1606, %bb.y ] ; 2 uses
  %.2611 = phi i32 [ %i.gb, %bb.ai ], [ 0, %bb.y ] ; 3 uses
  %i.fl = zext i32 %.2614 to i64
  %.val686 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fm = getelementptr inbounds nuw i8, ptr %.val686, i64 %i.fl
  %.0.copyload.i717 = load i16, ptr %i.fm, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i717) #8, !srcloc !24
  %i.fn = zext i16 %.0.copyload.i717 to i32       ; 3 uses
  %i.fo = icmp ult i16 %.0.copyload.i717, 160
  br i1 %i.fo, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %.preheader
  %i.fp = add nsw i32 %i.fn, -9                   ; 2 uses
  %i.fq = icmp ugt i32 %i.fp, 23
  br i1 %i.fq, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fr = shl nuw nsw i32 1, %i.fp
  %i.fs = and i32 %i.fr, 8388621
  %.not644 = icmp eq i32 %i.fs, 0
  br i1 %.not644, label %bb.ac, label %bb.ai

bb.ab:                                            ; preds = %.preheader
  switch i16 %.0.copyload.i717, label %bb.ac [
    i16 160, label %bb.ai
    i16 5760, label %bb.ai
    i16 -257, label %bb.ai
  ]

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.ft = add nuw nsw i32 %i.fn, 57344
  %i.fu = and i32 %i.ft, 65535
  %i.fv = icmp samesign ult i32 %i.fu, 11
  br i1 %i.fv, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fw = icmp ult i16 %.0.copyload.i717, 8287
  br i1 %i.fw, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fx = add nsw i32 %i.fn, -8232                ; 2 uses
  %i.fy = icmp ult i32 %i.fx, 8
  br i1 %i.fy, label %bb.ag, label %bb.ah

bb.af:                                            ; preds = %bb.ad
  switch i16 %.0.copyload.i717, label %.loopexit [
    i16 12288, label %bb.ai
    i16 8287, label %bb.ai
  ]

bb.ag:                                            ; preds = %bb.ae
  %i.fz = shl nuw nsw i32 1, %i.fx
  %i.ga = and i32 %i.fz, 131
  %.not645 = icmp eq i32 %i.ga, 0
  br i1 %.not645, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  switch i16 %.0.copyload.i717, label %.loopexit [
    i16 10, label %bb.ai
    i16 13, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.af, %bb.af, %bb.ab, %bb.ab, %bb.ab, %bb.ah, %bb.ah, %bb.ag, %bb.ac, %bb.aa
  %i.gb = add i32 %.2611, 1                       ; 2 uses
  %i.gc = add i32 %.2614, 2                       ; 2 uses
  %.not646 = icmp eq i32 %i.gc, %i.fi
  br i1 %.not646, label %.loopexit, label %.preheader

bb.aj:                                            ; preds = %bb.y
  %i.gd = sub i32 %.2, %.1608
  br label %bb.ak

bb.ak:                                            ; preds = %bb.al, %bb.aj
  %.3615 = phi i32 [ %.1608, %bb.aj ], [ %i.gh, %bb.al ] ; 2 uses
  %.3 = phi i32 [ 0, %bb.aj ], [ %i.gg, %bb.al ]  ; 2 uses
  %i.ge = zext i32 %.3615 to i64
  %.val677 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gf = getelementptr inbounds nuw i8, ptr %.val677, i64 %i.ge
  %.0.copyload.i718 = load i8, ptr %i.gf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i718) #8, !srcloc !22
  switch i8 %.0.copyload.i718, label %.loopexit [
    i8 32, label %bb.al
    i8 13, label %bb.al
    i8 12, label %bb.al
    i8 11, label %bb.al
    i8 10, label %bb.al
    i8 9, label %bb.al
  ]

bb.al:                                            ; preds = %bb.ak, %bb.ak, %bb.ak, %bb.ak, %bb.ak, %bb.ak
  %i.gg = add nuw i32 %.3, 1
  %i.gh = add i32 %.3615, 1                       ; 2 uses
  %.not643 = icmp eq i32 %i.gh, %i.fi
  br i1 %.not643, label %.loopexit, label %bb.ak

.loopexit:                                        ; preds = %bb.al, %bb.ak, %bb.af, %bb.ai, %bb.ah, %bb.x
  %.4 = phi i32 [ 0, %bb.x ], [ %i.gb, %bb.ai ], [ %.2611, %bb.af ], [ %.2611, %bb.ah ], [ %.3, %bb.ak ], [ %i.gd, %bb.al ] ; 4 uses
  %i.gi = add i32 %.4, %.1608
  %i.gj = select i1 %.not642, i32 0, i32 %i.gi
  %i.gk = shl i32 %.4, 1
  %i.gl = select i1 %.not642, i32 %i.gk, i32 0
  %i.gm = add i32 %i.gl, %.1606
  %i.gn = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtrimEnd0x28hermes0x3A0x3Avm0x3A0x3AStringView0x3A0x3Aconst_iterator0x2C0x20hermes0x3A0x3Avm0x3A0x3AStringView0x3A0x3Aconst_iterator0x29(ptr noundef nonnull %0, i32 noundef %i.gj, i32 noundef %i.gm, i32 noundef %.2, i32 noundef %.0603) #8
  %i.go = add i32 %.4, %i.gn
  %i.gp = sub i32 %i.fh, %i.go
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3A0x3Aslice0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3E0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %3, i32 noundef %.0604, i32 noundef %.4, i32 noundef %i.gp) #8
  br label %bb.am

bb.am:                                            ; preds = %.loopexit, %bb.e, %bb.c
  store i32 %i.b, ptr %i.a, align 8, !tbaa !7
  ret void
}

declare i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtrimEnd0x28hermes0x3A0x3Avm0x3A0x3AStringView0x3A0x3Aconst_iterator0x2C0x20hermes0x3A0x3Avm0x3A0x3AStringView0x3A0x3Aconst_iterator0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AstringPrototypeTrimStart0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 4 uses
  %i.c = add i32 %i.b, -48                        ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 41 uses
  %i.e = zext i32 %4 to i64
  %.val640 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val640, i64 %i.e
  %.0.copyload.i = load i32, ptr %i.f, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !19
  %i.g = zext i32 %.0.copyload.i to i64
  %.val650 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val650, i64 %i.g
  %.0.copyload.i652 = load i64, ptr %i.h, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i652) #8, !srcloc !20
  %i.i = ashr i64 %.0.copyload.i652, 47
  %i.j = and i64 %i.i, 4294967294
  %.not = icmp eq i64 %i.j, 4294967284
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = zext i32 %i.c to i64                     ; 4 uses
  %.val616 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %.val616, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i32 0, ptr %i.m, align 1
  %.val642 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %.val642, i64 %i.k
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store i64 124554051585, ptr %i.o, align 1
  %.val615 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %.val615, i64 %i.k
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i32 3, ptr %i.q, align 1
  %.val614 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %.val614, i64 %i.k
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 31099, ptr %i.s, align 1
  %i.t = add i32 %i.b, -40
  %i.u = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseTypeError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %i.t) #8
  %.not600 = icmp eq i32 %i.u, 0
  br i1 %.not600, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = zext i32 %1 to i64
  %.val613 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %.val613, i64 %i.v
  store i32 0, ptr %i.w, align 1
  br label %bb.am

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.x = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoString_RJS0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %.0.copyload.i) #8 ; 2 uses
  %i.y = icmp eq i32 %i.x, -1
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = zext i32 %1 to i64
  %.val612 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %.val612, i64 %i.z
  store i32 0, ptr %i.aa, align 1
  br label %bb.am

bb.f:                                             ; preds = %bb.d
  %i.ab = zext i32 %i.x to i64
  %i.ac = or disjoint i64 %i.ab, -844424930131968 ; 2 uses
  %i.ad = zext i32 %3 to i64
  %.val639 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %.val639, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %.0.copyload.i653 = load i32, ptr %i.af, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i653) #8, !srcloc !19
  %i.ag = zext i32 %.0.copyload.i653 to i64       ; 2 uses
  %i.ah = add nuw nsw i64 %i.ag, 164              ; 2 uses
  %.val638 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %.val638, i64 %i.ah
  %.0.copyload.i654 = load i32, ptr %i.ai, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i654) #8, !srcloc !19
  %.val637 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %.val637, i64 %i.ag
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 168
  %.0.copyload.i655 = load i32, ptr %i.ak, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i655) #8, !srcloc !19
  %i.al = icmp ult i32 %.0.copyload.i654, %.0.copyload.i655
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.am = add i32 %.0.copyload.i654, 8
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.an = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ah
  store i32 %i.am, ptr %i.an, align 1
  %i.ao = zext i32 %.0.copyload.i654 to i64
  %.val641 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %.val641, i64 %i.ao
  store i64 %i.ac, ptr %i.ap, align 1
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.aq = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i653, i64 noundef %i.ac) #8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0569 = phi i32 [ %.0.copyload.i654, %bb.g ], [ %i.aq, %bb.h ] ; 3 uses
  %i.ar = add i32 %i.b, -40
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3A0x3AcreateStringView0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.ar, i32 noundef %3, i32 noundef %.0569) #8
  %i.as = zext i32 %i.c to i64                    ; 4 uses
  %.val636 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.at = getelementptr inbounds nuw i8, ptr %.val636, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  %.0.copyload.i656 = load i32, ptr %i.au, align 1 ; 14 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i656) #8, !srcloc !19
  %i.av = and i32 %.0.copyload.i656, 1073741824
  %.val635 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aw = getelementptr inbounds nuw i8, ptr %.val635, i64 %i.as
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.0.copyload.i657 = load i32, ptr %i.ax, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i657) #8, !srcloc !19
  %i.ay = icmp slt i32 %.0.copyload.i656, 0
  %.not604 = icmp eq i32 %i.av, 0                 ; 2 uses
  br i1 %i.ay, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  br i1 %.not604, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = zext i32 %.0.copyload.i657 to i64
  %.val634 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ba = getelementptr inbounds nuw i8, ptr %.val634, i64 %i.az
  %.0.copyload.i658 = load i32, ptr %i.ba, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i658) #8, !srcloc !19
  %i.bb = zext i32 %.0.copyload.i658 to i64       ; 5 uses
  %.val633 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bc = getelementptr inbounds nuw i8, ptr %.val633, i64 %i.bb
  %.0.copyload.i659 = load i32, ptr %i.bc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i659) #8, !srcloc !19
  %i.bd = icmp ugt i32 %.0.copyload.i659, 150994943
  br i1 %i.bd, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = and i32 %.0.copyload.i659, 251658240
  switch i32 %i.be, label %bb.r [
    i32 67108864, label %.thread
    i32 134217728, label %.thread685
  ]

.thread685:                                       ; preds = %bb.l
  %i.bf = and i32 %.0.copyload.i656, 1073741823   ; 2 uses
  %i.bg = add nuw nsw i32 %i.bf, 12
  %i.bh = add i32 %i.bg, %.0.copyload.i658
  %i.bi = add i32 %.0.copyload.i658, 12
  br label %bb.s

bb.m:                                             ; preds = %bb.i
  br i1 %.not604, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = zext i32 %.0.copyload.i657 to i64
  %.val630 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %.val630, i64 %i.bj
  %.0.copyload.i663 = load i32, ptr %i.bk, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i663) #8, !srcloc !19
  %i.bl = zext i32 %.0.copyload.i663 to i64       ; 5 uses
  %.val629 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bm = getelementptr inbounds nuw i8, ptr %.val629, i64 %i.bl
  %.0.copyload.i664 = load i32, ptr %i.bm, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i664) #8, !srcloc !19
  %i.bn = icmp ugt i32 %.0.copyload.i664, 150994943
  br i1 %i.bn, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = and i32 %.0.copyload.i664, 251658240
  switch i32 %i.bo, label %bb.v [
    i32 50331648, label %.thread687
    i32 117440512, label %.thread689
end_hunk_2
begin_hunk_3_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AstringPrototypeTrimStart0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i673) #8, !srcloc !19
  %i.dh = add i32 %.0573, %.0577
  %i.di = add i32 %i.dh, %.0.copyload.i673
  br label %bb.x

bb.t:                                             ; preds = %bb.m
  %i.dj = shl nuw nsw i32 %.0.copyload.i656, 1
  %i.dk = add i32 %.0.copyload.i657, %i.dj
  br label %bb.w

bb.u:                                             ; preds = %bb.n
  %.val622 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dl = getelementptr inbounds nuw i8, ptr %.val622, i64 %i.bl
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  %.0.copyload.i674 = load i32, ptr %i.dm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i674) #8, !srcloc !19
  %i.dn = add i32 %.0.copyload.i663, 12
  %.val645 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.do = getelementptr inbounds nuw i8, ptr %.val645, i64 %i.bl
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 23
  %.0.copyload.i675 = load i8, ptr %i.dp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i675) #8, !srcloc !22
  %i.dq = icmp slt i8 %.0.copyload.i675, 0
  %i.dr = select i1 %i.dq, i32 %.0.copyload.i674, i32 %i.dn ; 2 uses
  %i.ds = and i32 %.0.copyload.i656, 1073741823   ; 2 uses
  %i.dt = shl nuw nsw i32 %i.ds, 1
  %i.du = add i32 %i.dr, %i.dt
  br label %bb.w

.thread687:                                       ; preds = %bb.o
  %i.dv = and i32 %.0.copyload.i656, 1073741823   ; 2 uses
  %i.dw = shl nuw nsw i32 %i.dv, 1
  %i.dx = add nuw i32 %i.dw, 8
  %i.dy = add i32 %i.dx, %.0.copyload.i663
  %i.dz = add i32 %.0.copyload.i663, 8
  br label %bb.w

bb.v:                                             ; preds = %bb.o
  %.val628 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ea = getelementptr inbounds nuw i8, ptr %.val628, i64 %i.bl
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %.0.copyload.i665 = load i32, ptr %i.eb, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i665) #8, !srcloc !19
  %i.ec = zext i32 %.0.copyload.i665 to i64       ; 2 uses
  %.val627 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ed = getelementptr inbounds nuw i8, ptr %.val627, i64 %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 12
  %.0.copyload.i666 = load i32, ptr %i.ee, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i666) #8, !srcloc !19
  %.val648 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ef = getelementptr inbounds nuw i8, ptr %.val648, i64 %i.ec
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 23
  %.0.copyload.i667 = load i8, ptr %i.eg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i667) #8, !srcloc !22
  %i.eh = and i32 %.0.copyload.i656, 1073741823   ; 2 uses
  %i.ei = icmp slt i8 %.0.copyload.i667, 0
  %i.ej = add i32 %.0.copyload.i665, 12
  %i.ek = select i1 %i.ei, i32 %.0.copyload.i666, i32 %i.ej
  %i.el = shl nuw nsw i32 %i.eh, 1
  %i.em = add i32 %i.ek, %i.el
  %.val621 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.en = getelementptr inbounds nuw i8, ptr %.val621, i64 %i.bl
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %.0.copyload.i676 = load i32, ptr %i.eo, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i676) #8, !srcloc !19
  %i.ep = zext i32 %.0.copyload.i676 to i64       ; 2 uses
  %.val620 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eq = getelementptr inbounds nuw i8, ptr %.val620, i64 %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 12
  %.0.copyload.i677 = load i32, ptr %i.er, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i677) #8, !srcloc !19
  %i.es = add i32 %.0.copyload.i676, 12
  %.val644 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.et = getelementptr inbounds nuw i8, ptr %.val644, i64 %i.ep
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 23
  %.0.copyload.i678 = load i8, ptr %i.eu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i678) #8, !srcloc !22
  %i.ev = icmp slt i8 %.0.copyload.i678, 0
  %i.ew = select i1 %i.ev, i32 %.0.copyload.i677, i32 %i.es
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.thread687, %.thread689, %bb.u, %bb.t
  %.1578 = phi i32 [ %i.dk, %bb.t ], [ %i.du, %bb.u ], [ %i.em, %bb.v ], [ %i.bs, %.thread689 ], [ %i.dy, %.thread687 ]
  %.1574 = phi i32 [ %.0.copyload.i657, %bb.t ], [ %i.dr, %bb.u ], [ %i.ew, %bb.v ], [ %i.bt, %.thread689 ], [ %i.dz, %.thread687 ]
  %.1572 = phi i32 [ %.0.copyload.i656, %bb.t ], [ %i.ds, %bb.u ], [ %i.eh, %bb.v ], [ %i.bp, %.thread689 ], [ %i.dv, %.thread687 ]
  %.val619 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ex = getelementptr inbounds nuw i8, ptr %.val619, i64 %i.as
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %.0.copyload.i679 = load i32, ptr %i.ey, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i679) #8, !srcloc !19
  %i.ez = add i32 %.0.copyload.i679, %.1572
  %i.fa = shl i32 %i.ez, 1
  %i.fb = add i32 %i.fa, %.1574
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.s
  %.2579 = phi i32 [ 0, %bb.s ], [ %.1578, %bb.w ] ; 2 uses
  %.2575 = phi i32 [ %i.di, %bb.s ], [ 0, %bb.w ] ; 2 uses
  %.2 = phi i32 [ %.0571, %bb.s ], [ 0, %bb.w ]   ; 4 uses
  %.0570 = phi i32 [ 0, %bb.s ], [ %i.fb, %bb.w ]
  %.not607 = icmp eq i32 %.2, 0                   ; 3 uses
  %i.fc = select i1 %.not607, i32 %.0570, i32 %.2575 ; 3 uses
  %i.fd = select i1 %.not607, i32 %.2579, i32 %.2
  %i.fe = icmp eq i32 %i.fc, %i.fd
  br i1 %i.fe, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  br i1 %.not607, label %.preheader, label %bb.aj

.preheader:                                       ; preds = %bb.y, %bb.ai
  %.3580 = phi i32 [ %i.fw, %bb.ai ], [ %.2579, %bb.y ] ; 2 uses
  %.3576 = phi i32 [ %i.fv, %bb.ai ], [ 0, %bb.y ] ; 3 uses
  %i.ff = zext i32 %.3580 to i64
  %.val651 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fg = getelementptr inbounds nuw i8, ptr %.val651, i64 %i.ff
  %.0.copyload.i680 = load i16, ptr %i.fg, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i680) #8, !srcloc !24
  %i.fh = zext i16 %.0.copyload.i680 to i32       ; 3 uses
  %i.fi = icmp ult i16 %.0.copyload.i680, 160
  br i1 %i.fi, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %.preheader
  %i.fj = add nsw i32 %i.fh, -9                   ; 2 uses
  %i.fk = icmp ugt i32 %i.fj, 23
  br i1 %i.fk, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fl = shl nuw nsw i32 1, %i.fj
  %i.fm = and i32 %i.fl, 8388621
  %.not609 = icmp eq i32 %i.fm, 0
  br i1 %.not609, label %bb.ac, label %bb.ai

bb.ab:                                            ; preds = %.preheader
  switch i16 %.0.copyload.i680, label %bb.ac [
    i16 160, label %bb.ai
    i16 5760, label %bb.ai
    i16 -257, label %bb.ai
  ]

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.fn = add nuw nsw i32 %i.fh, 57344
  %i.fo = and i32 %i.fn, 65535
  %i.fp = icmp samesign ult i32 %i.fo, 11
  br i1 %i.fp, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fq = icmp ult i16 %.0.copyload.i680, 8287
  br i1 %i.fq, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fr = add nsw i32 %i.fh, -8232                ; 2 uses
  %i.fs = icmp ult i32 %i.fr, 8
  br i1 %i.fs, label %bb.ag, label %bb.ah

bb.af:                                            ; preds = %bb.ad
  switch i16 %.0.copyload.i680, label %.loopexit [
    i16 12288, label %bb.ai
    i16 8287, label %bb.ai
  ]

bb.ag:                                            ; preds = %bb.ae
  %i.ft = shl nuw nsw i32 1, %i.fr
  %i.fu = and i32 %i.ft, 131
  %.not610 = icmp eq i32 %i.fu, 0
  br i1 %.not610, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  switch i16 %.0.copyload.i680, label %.loopexit [
    i16 10, label %bb.ai
    i16 13, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.af, %bb.af, %bb.ab, %bb.ab, %bb.ab, %bb.ah, %bb.ah, %bb.ag, %bb.ac, %bb.aa
  %i.fv = add i32 %.3576, 1                       ; 2 uses
  %i.fw = add i32 %.3580, 2                       ; 2 uses
  %.not611 = icmp eq i32 %i.fw, %i.fc
  br i1 %.not611, label %.loopexit, label %.preheader

bb.aj:                                            ; preds = %bb.y
  %i.fx = sub i32 %.2575, %.2
  br label %bb.ak

bb.ak:                                            ; preds = %bb.al, %bb.aj
  %.4 = phi i32 [ 0, %bb.aj ], [ %i.ga, %bb.al ]  ; 2 uses
  %.3 = phi i32 [ %.2, %bb.aj ], [ %i.gb, %bb.al ] ; 2 uses
  %i.fy = zext i32 %.3 to i64
  %.val643 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fz = getelementptr inbounds nuw i8, ptr %.val643, i64 %i.fy
  %.0.copyload.i681 = load i8, ptr %i.fz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i681) #8, !srcloc !22
  switch i8 %.0.copyload.i681, label %.loopexit [
    i8 32, label %bb.al
    i8 13, label %bb.al
    i8 12, label %bb.al
    i8 11, label %bb.al
    i8 10, label %bb.al
    i8 9, label %bb.al
  ]

bb.al:                                            ; preds = %bb.ak, %bb.ak, %bb.ak, %bb.ak, %bb.ak, %bb.ak
  %i.ga = add nuw i32 %.4, 1
  %i.gb = add i32 %.3, 1                          ; 2 uses
  %.not608 = icmp eq i32 %i.gb, %i.fc
  br i1 %.not608, label %.loopexit, label %bb.ak

.loopexit:                                        ; preds = %bb.al, %bb.ak, %bb.af, %bb.ai, %bb.ah, %bb.x
  %.5 = phi i32 [ 0, %bb.x ], [ %i.fv, %bb.ai ], [ %.3576, %bb.af ], [ %.3576, %bb.ah ], [ %.4, %bb.ak ], [ %i.fx, %bb.al ] ; 2 uses
  %i.gc = zext i32 %.0569 to i64
  %.val618 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gd = getelementptr inbounds nuw i8, ptr %.val618, i64 %i.gc
  %.0.copyload.i682 = load i32, ptr %i.gd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i682) #8, !srcloc !19
  %i.ge = zext i32 %.0.copyload.i682 to i64
  %.val617 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gf = getelementptr inbounds nuw i8, ptr %.val617, i64 %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  %.0.copyload.i683 = load i32, ptr %i.gg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i683) #8, !srcloc !19
  %i.gh = and i32 %.0.copyload.i683, 2147483647
  %i.gi = sub i32 %i.gh, %.5
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3A0x3Aslice0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3E0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %3, i32 noundef %.0569, i32 noundef %.5, i32 noundef %i.gi) #8
  br label %bb.am

bb.am:                                            ; preds = %.loopexit, %bb.e, %bb.c
  store i32 %i.b, ptr %i.a, align 8, !tbaa !7
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AstringPrototypeTrimEnd0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 4 uses
  %i.c = add i32 %i.b, -48                        ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 39 uses
  %i.e = zext i32 %4 to i64
  %.val492 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val492, i64 %i.e
  %.0.copyload.i = load i32, ptr %i.f, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !19
  %i.g = zext i32 %.0.copyload.i to i64
  %.val502 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val502, i64 %i.g
  %.0.copyload.i503 = load i64, ptr %i.h, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i503) #8, !srcloc !20
  %i.i = ashr i64 %.0.copyload.i503, 47
  %i.j = and i64 %i.i, 4294967294
  %.not = icmp eq i64 %i.j, 4294967284
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = zext i32 %i.c to i64                     ; 4 uses
  %.val469 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %.val469, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i32 0, ptr %i.m, align 1
  %.val494 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %.val494, i64 %i.k
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store i64 124554051585, ptr %i.o, align 1
  %.val468 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %.val468, i64 %i.k
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i32 3, ptr %i.q, align 1
  %.val467 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %.val467, i64 %i.k
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 31099, ptr %i.s, align 1
  %i.t = add i32 %i.b, -40
  %i.u = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseTypeError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %i.t) #8
  %.not458 = icmp eq i32 %i.u, 0
  br i1 %.not458, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = zext i32 %1 to i64
  %.val466 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %.val466, i64 %i.v
  store i32 0, ptr %i.w, align 1
  br label %bb.y

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.x = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoString_RJS0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %.0.copyload.i) #8 ; 2 uses
  %i.y = icmp eq i32 %i.x, -1
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = zext i32 %1 to i64
  %.val465 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %.val465, i64 %i.z
  store i32 0, ptr %i.aa, align 1
  br label %bb.y

bb.f:                                             ; preds = %bb.d
  %i.ab = zext i32 %i.x to i64
  %i.ac = or disjoint i64 %i.ab, -844424930131968 ; 3 uses
  %i.ad = zext i32 %3 to i64
  %.val491 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %.val491, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %.0.copyload.i504 = load i32, ptr %i.af, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i504) #8, !srcloc !19
  %i.ag = zext i32 %.0.copyload.i504 to i64       ; 2 uses
  %i.ah = add nuw nsw i64 %i.ag, 164              ; 2 uses
  %.val490 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %.val490, i64 %i.ah
  %.0.copyload.i505 = load i32, ptr %i.ai, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i505) #8, !srcloc !19
  %.val489 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %.val489, i64 %i.ag
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 168
  %.0.copyload.i506 = load i32, ptr %i.ak, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i506) #8, !srcloc !19
  %i.al = icmp ult i32 %.0.copyload.i505, %.0.copyload.i506
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.am = add i32 %.0.copyload.i505, 8
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.an = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ah
  store i32 %i.am, ptr %i.an, align 1
  %i.ao = zext i32 %.0.copyload.i505 to i64
  %.val493 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %.val493, i64 %i.ao
  store i64 %i.ac, ptr %i.ap, align 1
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.aq = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i504, i64 noundef %i.ac) #8 ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %.val501 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %.val501, i64 %i.ar
  %.0.copyload.i507 = load i64, ptr %i.as, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i507) #8, !srcloc !20
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0444 = phi i32 [ %.0.copyload.i505, %bb.g ], [ %i.aq, %bb.h ] ; 2 uses
  %.0437 = phi i64 [ %i.ac, %bb.g ], [ %.0.copyload.i507, %bb.h ]
  %i.at = and i64 %.0437, 4294967295
  %.val488 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %.val488, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %.0.copyload.i508 = load i32, ptr %i.av, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i508) #8, !srcloc !19
  %i.aw = add i32 %i.b, -40
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3A0x3AcreateStringView0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.aw, i32 noundef %3, i32 noundef %.0444) #8
  %i.ax = and i32 %.0.copyload.i508, 2147483647
  %i.ay = zext i32 %i.c to i64                    ; 4 uses
  %.val487 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %.val487, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %.0.copyload.i509 = load i32, ptr %i.ba, align 1 ; 14 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i509) #8, !srcloc !19
  %i.bb = and i32 %.0.copyload.i509, 1073741824
  %.val486 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bc = getelementptr inbounds nuw i8, ptr %.val486, i64 %i.ay
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.0.copyload.i510 = load i32, ptr %i.bd, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i510) #8, !srcloc !19
  %i.be = icmp slt i32 %.0.copyload.i509, 0
  %.not462 = icmp eq i32 %i.bb, 0                 ; 2 uses
  br i1 %i.be, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  br i1 %.not462, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = zext i32 %.0.copyload.i510 to i64
  %.val485 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %.val485, i64 %i.bf
  %.0.copyload.i511 = load i32, ptr %i.bg, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i511) #8, !srcloc !19
  %i.bh = zext i32 %.0.copyload.i511 to i64       ; 5 uses
  %.val484 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %.val484, i64 %i.bh
  %.0.copyload.i512 = load i32, ptr %i.bi, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i512) #8, !srcloc !19
  %i.bj = icmp ugt i32 %.0.copyload.i512, 150994943
  br i1 %i.bj, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = and i32 %.0.copyload.i512, 251658240
  switch i32 %i.bk, label %bb.r [
    i32 67108864, label %.thread
    i32 134217728, label %.thread534
  ]

.thread534:                                       ; preds = %bb.l
  %i.bl = and i32 %.0.copyload.i509, 1073741823   ; 2 uses
  %i.bm = add nuw nsw i32 %i.bl, 12
  %i.bn = add i32 %i.bm, %.0.copyload.i511
  %i.bo = add i32 %.0.copyload.i511, 12
  br label %bb.s

bb.m:                                             ; preds = %bb.i
  br i1 %.not462, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bp = zext i32 %.0.copyload.i510 to i64
  %.val481 = load ptr, ptr %i.d, align 8, !tbaa !18
end_hunk_3
begin_hunk_4_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3Arequire0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
  %.0.copyload.i3512 = load i32, ptr %i.ue, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3512) #8, !srcloc !19
  %.not2979 = icmp eq i32 %.0.copyload.i3510, 0
  br i1 %.not2979, label %.loopexit3619, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.uf = add i32 %.0.copyload.i3512, %.0.copyload.i3510
  %.val3147 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ug = getelementptr inbounds nuw i8, ptr %.val3147, i64 %i.ix
  %.0.copyload.i3513 = load i32, ptr %i.ug, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3513) #8, !srcloc !19
  br label %bb.cn

bb.cn:                                            ; preds = %bb.co, %bb.cm
  %.12893 = phi i32 [ %.0.copyload.i3512, %bb.cm ], [ %i.um, %bb.co ] ; 2 uses
  %.5 = phi i32 [ %.0.copyload.i3513, %bb.cm ], [ %i.ul, %bb.co ] ; 2 uses
  %i.uh = zext i32 %.12893 to i64
  %.val3346 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ui = getelementptr inbounds nuw i8, ptr %.val3346, i64 %i.uh
  %.0.copyload.i3514 = load i8, ptr %i.ui, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3514) #8, !srcloc !21
  %i.uj = zext i32 %.5 to i64
  %.val3345 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.uk = getelementptr inbounds nuw i8, ptr %.val3345, i64 %i.uj
  %.0.copyload.i3515 = load i8, ptr %i.uk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3515) #8, !srcloc !21
  %.not2980 = icmp eq i8 %.0.copyload.i3514, %.0.copyload.i3515
  br i1 %.not2980, label %bb.co, label %.loopexit3618

bb.co:                                            ; preds = %bb.cn
  %i.ul = add i32 %.5, 1
  %i.um = add i32 %.12893, 1                      ; 2 uses
  %.not2981 = icmp eq i32 %i.um, %i.uf
  br i1 %.not2981, label %.loopexit3619, label %bb.cn

.loopexit3618:                                    ; preds = %bb.cn, %bb.ck
  %i.un = icmp eq i32 %i.jr, %.pre-phi
  br i1 %i.un, label %bb.di, label %bb.cp

bb.cp:                                            ; preds = %.loopexit3618
  %.val3146 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.uo = getelementptr inbounds nuw i8, ptr %.val3146, i64 %i.ix
  %.0.copyload.i3516 = load i32, ptr %i.uo, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3516) #8, !srcloc !19
  %i.up = icmp eq i32 %.0.copyload.i3516, %i.ci
  %.pre3644 = zext i32 %i.jr to i64               ; 11 uses
  br i1 %i.up, label %._crit_edge, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %.val3145 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.uq = getelementptr inbounds nuw i8, ptr %.val3145, i64 %.pre3644
  %.0.copyload.i3517 = load i32, ptr %i.uq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3517) #8, !srcloc !19
  %i.ur = icmp eq i32 %.0.copyload.i3517, %i.sq
  br i1 %i.ur, label %._crit_edge, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %.val3046 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.us = getelementptr inbounds nuw i8, ptr %.val3046, i64 %i.ix
  store i32 %.0.copyload.i3517, ptr %i.us, align 1
  %.val3045 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ut = getelementptr inbounds nuw i8, ptr %.val3045, i64 %.pre3644
  store i32 %.0.copyload.i3516, ptr %i.ut, align 1
  %.val3144 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.uu = getelementptr inbounds nuw i8, ptr %.val3144, i64 %i.ja
  %.0.copyload.i3518 = load i32, ptr %i.uu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3518) #8, !srcloc !19
  %i.uv = add nuw nsw i64 %.pre3644, 4            ; 2 uses
  %.val3143 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.uw = getelementptr inbounds nuw i8, ptr %.val3143, i64 %i.uv
  %.0.copyload.i3519 = load i32, ptr %i.uw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3519) #8, !srcloc !19
  %.val3044 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ux = getelementptr inbounds nuw i8, ptr %.val3044, i64 %i.ja
  store i32 %.0.copyload.i3519, ptr %i.ux, align 1
  %.val3043 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.uy = getelementptr inbounds nuw i8, ptr %.val3043, i64 %i.uv
  store i32 %.0.copyload.i3518, ptr %i.uy, align 1
  %i.uz = add nuw nsw i64 %i.ix, 8                ; 2 uses
  %.val3142 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.va = getelementptr inbounds nuw i8, ptr %.val3142, i64 %i.uz
  %.0.copyload.i3520 = load i32, ptr %i.va, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3520) #8, !srcloc !19
  %i.vb = add nuw nsw i64 %.pre3644, 8            ; 2 uses
  %.val3141 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vc = getelementptr inbounds nuw i8, ptr %.val3141, i64 %i.vb
  %.0.copyload.i3521 = load i32, ptr %i.vc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3521) #8, !srcloc !19
  br label %.sink.split3664

._crit_edge:                                      ; preds = %bb.cp, %bb.cq
  %i.vd = add nuw nsw i64 %.pre3644, 4            ; 6 uses
  %.val3140 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ve = getelementptr inbounds nuw i8, ptr %.val3140, i64 %i.vd
  %.0.copyload.i3522 = load i32, ptr %i.ve, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3522) #8, !srcloc !19
  %.val3139 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vf = getelementptr inbounds nuw i8, ptr %.val3139, i64 %i.ix
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 8
  %.0.copyload.i3523 = load i32, ptr %i.vg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3523) #8, !srcloc !19
  %i.vh = icmp ugt i32 %.0.copyload.i3522, %.0.copyload.i3523
  br i1 %i.vh, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %._crit_edge
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %.pre-phi, i32 noundef %i.ci, i32 noundef %.0.copyload.i3522, i32 noundef 1) #8
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %._crit_edge
  %.val3138 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vi = getelementptr inbounds nuw i8, ptr %.val3138, i64 %i.ja
  %.0.copyload.i3524 = load i32, ptr %i.vi, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3524) #8, !srcloc !19
  %.val3137 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vj = getelementptr inbounds nuw i8, ptr %.val3137, i64 %.pre3644
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 8
  %.0.copyload.i3525 = load i32, ptr %i.vk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3525) #8, !srcloc !19
  %i.vl = icmp ugt i32 %.0.copyload.i3524, %.0.copyload.i3525
  br i1 %i.vl, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.jr, i32 noundef %i.sq, i32 noundef %.0.copyload.i3524, i32 noundef 1) #8
  %.val3136 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vm = getelementptr inbounds nuw i8, ptr %.val3136, i64 %i.ja
  %.0.copyload.i3526 = load i32, ptr %i.vm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3526) #8, !srcloc !19
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.22894 = phi i32 [ %.0.copyload.i3526, %bb.cu ], [ %.0.copyload.i3524, %bb.ct ] ; 2 uses
  %.val3135 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vn = getelementptr inbounds nuw i8, ptr %.val3135, i64 %i.vd
  %.0.copyload.i3527 = load i32, ptr %i.vn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3527) #8, !srcloc !19
  %i.vo = tail call i32 @llvm.umin.i32(i32 %.22894, i32 %.0.copyload.i3527) ; 11 uses
  switch i32 %i.vo, label %bb.cw [
    i32 0, label %bb.da
    i32 1, label %.thread
  ]

bb.cw:                                            ; preds = %bb.cv
  %i.vp = and i32 %i.vo, -2                       ; 2 uses
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cx, %bb.cw
  %.32895 = phi i32 [ 0, %bb.cw ], [ %i.wl, %bb.cx ] ; 4 uses
  %.val3134 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vq = getelementptr inbounds nuw i8, ptr %.val3134, i64 %i.ix
  %.0.copyload.i3528 = load i32, ptr %i.vq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3528) #8, !srcloc !19
  %i.vr = add i32 %.0.copyload.i3528, %.32895
  %i.vs = zext i32 %i.vr to i64                   ; 2 uses
  %.val3344 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vt = getelementptr inbounds nuw i8, ptr %.val3344, i64 %i.vs
  %.0.copyload.i3529 = load i8, ptr %i.vt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3529) #8, !srcloc !21
  %.val3133 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vu = getelementptr inbounds nuw i8, ptr %.val3133, i64 %.pre3644
  %.0.copyload.i3530 = load i32, ptr %i.vu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3530) #8, !srcloc !19
  %i.vv = add i32 %.0.copyload.i3530, %.32895
  %i.vw = zext i32 %i.vv to i64                   ; 2 uses
  %.val3343 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vx = getelementptr inbounds nuw i8, ptr %.val3343, i64 %i.vw
  %.0.copyload.i3531 = load i8, ptr %i.vx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3531) #8, !srcloc !21
  %.val3363 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vy = getelementptr inbounds nuw i8, ptr %.val3363, i64 %i.vs
  store i8 %.0.copyload.i3531, ptr %i.vy, align 1
  %.val3362 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vz = getelementptr inbounds nuw i8, ptr %.val3362, i64 %i.vw
  store i8 %.0.copyload.i3529, ptr %i.vz, align 1
  %i.wa = or disjoint i32 %.32895, 1              ; 2 uses
  %.val3132 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wb = getelementptr inbounds nuw i8, ptr %.val3132, i64 %i.ix
  %.0.copyload.i3532 = load i32, ptr %i.wb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3532) #8, !srcloc !19
  %i.wc = add i32 %.0.copyload.i3532, %i.wa
  %i.wd = zext i32 %i.wc to i64                   ; 2 uses
  %.val3342 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.we = getelementptr inbounds nuw i8, ptr %.val3342, i64 %i.wd
  %.0.copyload.i3533 = load i8, ptr %i.we, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3533) #8, !srcloc !21
  %.val3131 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wf = getelementptr inbounds nuw i8, ptr %.val3131, i64 %.pre3644
  %.0.copyload.i3534 = load i32, ptr %i.wf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3534) #8, !srcloc !19
  %i.wg = add i32 %.0.copyload.i3534, %i.wa
  %i.wh = zext i32 %i.wg to i64                   ; 2 uses
  %.val3341 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wi = getelementptr inbounds nuw i8, ptr %.val3341, i64 %i.wh
  %.0.copyload.i3535 = load i8, ptr %i.wi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3535) #8, !srcloc !21
  %.val3361 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wj = getelementptr inbounds nuw i8, ptr %.val3361, i64 %i.wd
  store i8 %.0.copyload.i3535, ptr %i.wj, align 1
  %.val3360 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wk = getelementptr inbounds nuw i8, ptr %.val3360, i64 %i.wh
  store i8 %.0.copyload.i3533, ptr %i.wk, align 1
  %i.wl = add nuw i32 %.32895, 2                  ; 2 uses
  %.not2984 = icmp eq i32 %i.wl, %i.vp
  br i1 %.not2984, label %bb.cy, label %bb.cx

bb.cy:                                            ; preds = %bb.cx
  %i.wm = and i32 %i.vo, 1
  %.not2985 = icmp eq i32 %i.wm, 0
  br i1 %.not2985, label %bb.cz, label %.thread

.thread:                                          ; preds = %bb.cv, %bb.cy
  %.428963605 = phi i32 [ %i.vp, %bb.cy ], [ 0, %bb.cv ] ; 2 uses
  %.val3130 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wn = getelementptr inbounds nuw i8, ptr %.val3130, i64 %i.ix
  %.0.copyload.i3536 = load i32, ptr %i.wn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3536) #8, !srcloc !19
  %i.wo = add i32 %.0.copyload.i3536, %.428963605
  %i.wp = zext i32 %i.wo to i64                   ; 2 uses
  %.val3340 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wq = getelementptr inbounds nuw i8, ptr %.val3340, i64 %i.wp
  %.0.copyload.i3537 = load i8, ptr %i.wq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3537) #8, !srcloc !21
  %.val3129 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wr = getelementptr inbounds nuw i8, ptr %.val3129, i64 %.pre3644
  %.0.copyload.i3538 = load i32, ptr %i.wr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3538) #8, !srcloc !19
  %i.ws = add i32 %.0.copyload.i3538, %.428963605
  %i.wt = zext i32 %i.ws to i64                   ; 2 uses
  %.val3339 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wu = getelementptr inbounds nuw i8, ptr %.val3339, i64 %i.wt
  %.0.copyload.i3539 = load i8, ptr %i.wu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3539) #8, !srcloc !21
  %.val3359 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wv = getelementptr inbounds nuw i8, ptr %.val3359, i64 %i.wp
  store i8 %.0.copyload.i3539, ptr %i.wv, align 1
  %.val3358 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ww = getelementptr inbounds nuw i8, ptr %.val3358, i64 %i.wt
  store i8 %.0.copyload.i3537, ptr %i.ww, align 1
  br label %bb.cz

bb.cz:                                            ; preds = %.thread, %bb.cy
  %.val3128 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wx = getelementptr inbounds nuw i8, ptr %.val3128, i64 %i.vd
  %.0.copyload.i3540 = load i32, ptr %i.wx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3540) #8, !srcloc !19
  %.val3127 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wy = getelementptr inbounds nuw i8, ptr %.val3127, i64 %i.ja
  %.0.copyload.i3541 = load i32, ptr %i.wy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3541) #8, !srcloc !19
  br label %bb.da

bb.da:                                            ; preds = %bb.cv, %bb.cz
  %.52897 = phi i32 [ %.0.copyload.i3541, %bb.cz ], [ %.22894, %bb.cv ] ; 8 uses
  %.7 = phi i32 [ %.0.copyload.i3540, %bb.cz ], [ %.0.copyload.i3527, %bb.cv ] ; 8 uses
  %i.wz = icmp ugt i32 %.52897, %.7
  br i1 %i.wz, label %bb.db, label %bb.de

bb.db:                                            ; preds = %bb.da
  %i.xa = sub nuw i32 %.52897, %.7
  %.not2988 = icmp eq i32 %.52897, %i.vo
  br i1 %.not2988, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %.val3126 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xb = getelementptr inbounds nuw i8, ptr %.val3126, i64 %.pre3644
  %.0.copyload.i3542 = load i32, ptr %i.xb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3542) #8, !srcloc !19
  %i.xc = add i32 %.0.copyload.i3542, %.7
  %.val3125 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xd = getelementptr inbounds nuw i8, ptr %.val3125, i64 %i.ix
  %.0.copyload.i3543 = load i32, ptr %i.xd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3543) #8, !srcloc !19
  %i.xe = add i32 %.0.copyload.i3543, %i.vo
  %i.xf = sub i32 %.52897, %i.vo
  %i.xg = tail call i32 @w2c_hermes_0x5F_memcpy(ptr noundef nonnull %0, i32 noundef %i.xc, i32 noundef %i.xe, i32 noundef %i.xf) #8 ; 0 uses
  %.val3124 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xh = getelementptr inbounds nuw i8, ptr %.val3124, i64 %i.vd
  %.0.copyload.i3544 = load i32, ptr %i.xh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3544) #8, !srcloc !19
  br label %bb.dd

bb.dd:                                            ; preds = %bb.db, %bb.dc
  %.3 = phi i32 [ %.0.copyload.i3544, %bb.dc ], [ %.7, %bb.db ]
  %i.xi = add i32 %i.xa, %.3
  br label %.sink.split3664

bb.de:                                            ; preds = %bb.da
  %.not2986 = icmp ult i32 %.52897, %.7
  br i1 %.not2986, label %bb.df, label %bb.di

bb.df:                                            ; preds = %bb.de
  %i.xj = sub nuw i32 %.7, %.52897
  %.not2987 = icmp eq i32 %.7, %i.vo
  br i1 %.not2987, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %.val3123 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xk = getelementptr inbounds nuw i8, ptr %.val3123, i64 %i.ix
  %.0.copyload.i3545 = load i32, ptr %i.xk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3545) #8, !srcloc !19
  %i.xl = add i32 %.0.copyload.i3545, %.52897
  %.val3122 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xm = getelementptr inbounds nuw i8, ptr %.val3122, i64 %.pre3644
  %.0.copyload.i3546 = load i32, ptr %i.xm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3546) #8, !srcloc !19
  %i.xn = add i32 %.0.copyload.i3546, %i.vo
  %i.xo = sub i32 %.7, %i.vo
  %i.xp = tail call i32 @w2c_hermes_0x5F_memcpy(ptr noundef nonnull %0, i32 noundef %i.xl, i32 noundef %i.xn, i32 noundef %i.xo) #8 ; 0 uses
  %.val3121 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xq = getelementptr inbounds nuw i8, ptr %.val3121, i64 %i.ja
  %.0.copyload.i3547 = load i32, ptr %i.xq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3547) #8, !srcloc !19
  br label %bb.dh

bb.dh:                                            ; preds = %bb.df, %bb.dg
  %.4 = phi i32 [ %.0.copyload.i3547, %bb.dg ], [ %.52897, %bb.df ]
  %i.xr = add i32 %i.xj, %.4
  br label %.sink.split3664

.sink.split3664:                                  ; preds = %bb.cr, %bb.dd, %bb.dh
  %.sink3669 = phi i64 [ %i.ja, %bb.dh ], [ %i.vd, %bb.dd ], [ %i.uz, %bb.cr ]
  %.sink3667 = phi i32 [ %i.xr, %bb.dh ], [ %i.xi, %bb.dd ], [ %.0.copyload.i3521, %bb.cr ]
  %.sink3666 = phi i64 [ %i.vd, %bb.dh ], [ %i.ja, %bb.dd ], [ %i.vb, %bb.cr ]
  %.sink = phi i32 [ %i.vo, %bb.dh ], [ %i.vo, %bb.dd ], [ %.0.copyload.i3520, %bb.cr ]
  %.val3038 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xs = getelementptr inbounds nuw i8, ptr %.val3038, i64 %.sink3669
  store i32 %.sink3667, ptr %i.xs, align 1
  %.val3037 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xt = getelementptr inbounds nuw i8, ptr %.val3037, i64 %.sink3666
  store i32 %.sink, ptr %i.xt, align 1
  br label %bb.di

bb.di:                                            ; preds = %.sink.split3664, %bb.de, %.loopexit3618
  %.val3120 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xu = getelementptr inbounds nuw i8, ptr %.val3120, i64 %i.kg
  %.0.copyload.i3548 = load i32, ptr %i.xu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3548) #8, !srcloc !19
  br label %.loopexit3619

.loopexit3619:                                    ; preds = %bb.co, %bb.cl, %bb.di
  %.12885 = phi i32 [ %.0.copyload.i3548, %bb.di ], [ %.0.copyload.i3512, %bb.cl ], [ %.0.copyload.i3512, %bb.co ] ; 2 uses
  %.not2989 = icmp eq i32 %.12885, %i.sq
  br i1 %.not2989, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %.loopexit3619
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.12885) #8
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %.loopexit3619
  store i32 %i.iv, ptr %i.a, align 8, !tbaa !7
  %.val3119 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xv = getelementptr inbounds nuw i8, ptr %.val3119, i64 %i.cj
  %.0.copyload.i3549 = load i32, ptr %i.xv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3549) #8, !srcloc !19
  %.val3118 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xw = getelementptr inbounds nuw i8, ptr %.val3118, i64 %i.cg
  %.0.copyload.i3550 = load i32, ptr %i.xw, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3550) #8, !srcloc !19
  %i.xx = icmp ult i32 %.0.copyload.i3550, 65536
  %.val3036 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xy = getelementptr inbounds nuw i8, ptr %.val3036, i64 %i.e ; 2 uses
  br i1 %i.xx, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 420
  store i32 %.0.copyload.i3550, ptr %i.xz, align 1
  %i.ya = add nuw nsw i64 %i.e, 416               ; 2 uses
  %.val3035 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.yb = getelementptr inbounds nuw i8, ptr %.val3035, i64 %i.ya
  store i32 %.0.copyload.i3549, ptr %i.yb, align 1
  %.val3307 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.yc = getelementptr inbounds nuw i8, ptr %.val3307, i64 %i.ya
  %.0.copyload.i3551 = load i64, ptr %i.yc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3551) #8, !srcloc !20
  %.val3243 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.yd = getelementptr inbounds nuw i8, ptr %.val3243, i64 %i.e
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 32
  store i64 %.0.copyload.i3551, ptr %i.ye, align 1
  %i.yf = add i32 %i.b, -352
  %i.yg = add i32 %i.b, -464
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ADynamicStringPrimitive0x3Cchar0x2C0x20false0x3E0x3A0x3Acreate0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20llvh0x3A0x3AArrayRef0x3Cchar0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.yf, i32 noundef %3, i32 noundef %i.yg) #8
  br label %bb.do

bb.dm:                                            ; preds = %bb.dk
  %i.yh = getelementptr inbounds nuw i8, ptr %i.xy, i64 108
  store i32 %.0.copyload.i3550, ptr %i.yh, align 1
  %i.yi = add nuw nsw i64 %i.e, 104               ; 2 uses
  %.val3033 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.yj = getelementptr inbounds nuw i8, ptr %.val3033, i64 %i.yi
  store i32 %.0.copyload.i3549, ptr %i.yj, align 1
  %.val3306 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.yk = getelementptr inbounds nuw i8, ptr %.val3306, i64 %i.yi
  %.0.copyload.i3552 = load i64, ptr %i.yk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3552) #8, !srcloc !20
  %.val3242 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.yl = getelementptr inbounds nuw i8, ptr %.val3242, i64 %i.e
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 24
  store i64 %.0.copyload.i3552, ptr %i.ym, align 1
  %i.yn = add i32 %i.b, -80                       ; 2 uses
  %i.yo = add i32 %i.b, -472
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x20hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3A0x3AarrayToString0x3Cchar0x3E0x28llvh0x3A0x3AArrayRef0x3Cchar0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.yn, i32 noundef %i.yo) #8
  %i.yp = add i32 %i.b, -352
end_hunk_4
begin_hunk_5_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AregExpSourceGetter0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
bb.aa:                                            ; preds = %bb.t
  %.val1772 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ew = getelementptr inbounds nuw i8, ptr %.val1772, i64 %i.cw
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 12
  %.0.copyload.i1907 = load i32, ptr %i.ex, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1907) #8, !srcloc !19
  %i.ey = add i32 %.0.copyload.i1896, 12
  %.val1808 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ez = getelementptr inbounds nuw i8, ptr %.val1808, i64 %i.cw
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 23
  %.0.copyload.i1908 = load i8, ptr %i.fa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1908) #8, !srcloc !22
  %i.fb = icmp slt i8 %.0.copyload.i1908, 0
  %i.fc = select i1 %i.fb, i32 %.0.copyload.i1907, i32 %i.ey ; 2 uses
  %i.fd = and i32 %.0.copyload.i1889, 1073741823  ; 2 uses
  %i.fe = shl nuw nsw i32 %i.fd, 1
  %i.ff = add i32 %i.fc, %i.fe
  br label %bb.ac

.thread1983:                                      ; preds = %bb.u
  %i.fg = and i32 %.0.copyload.i1889, 1073741823  ; 2 uses
  %i.fh = shl nuw nsw i32 %i.fg, 1
  %i.fi = add nuw i32 %i.fh, 8
  %i.fj = add i32 %i.fi, %.0.copyload.i1896
  %i.fk = add i32 %.0.copyload.i1896, 8
  br label %bb.ac

bb.ab:                                            ; preds = %bb.u
  %.val1778 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fl = getelementptr inbounds nuw i8, ptr %.val1778, i64 %i.cw
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %.0.copyload.i1898 = load i32, ptr %i.fm, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1898) #8, !srcloc !19
  %i.fn = zext i32 %.0.copyload.i1898 to i64      ; 2 uses
  %.val1777 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fo = getelementptr inbounds nuw i8, ptr %.val1777, i64 %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 12
  %.0.copyload.i1899 = load i32, ptr %i.fp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1899) #8, !srcloc !19
  %.val1811 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fq = getelementptr inbounds nuw i8, ptr %.val1811, i64 %i.fn
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 23
  %.0.copyload.i1900 = load i8, ptr %i.fr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1900) #8, !srcloc !22
  %i.fs = and i32 %.0.copyload.i1889, 1073741823  ; 2 uses
  %i.ft = icmp slt i8 %.0.copyload.i1900, 0
  %i.fu = add i32 %.0.copyload.i1898, 12
  %i.fv = select i1 %i.ft, i32 %.0.copyload.i1899, i32 %i.fu
  %i.fw = shl nuw nsw i32 %i.fs, 1
  %i.fx = add i32 %i.fv, %i.fw
  %.val1771 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fy = getelementptr inbounds nuw i8, ptr %.val1771, i64 %i.cw
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %.0.copyload.i1909 = load i32, ptr %i.fz, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1909) #8, !srcloc !19
  %i.ga = zext i32 %.0.copyload.i1909 to i64      ; 2 uses
  %.val1770 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gb = getelementptr inbounds nuw i8, ptr %.val1770, i64 %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 12
  %.0.copyload.i1910 = load i32, ptr %i.gc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1910) #8, !srcloc !19
  %i.gd = add i32 %.0.copyload.i1909, 12
  %.val1807 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ge = getelementptr inbounds nuw i8, ptr %.val1807, i64 %i.ga
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 23
  %.0.copyload.i1911 = load i8, ptr %i.gf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1911) #8, !srcloc !22
  %i.gg = icmp slt i8 %.0.copyload.i1911, 0
  %i.gh = select i1 %i.gg, i32 %.0.copyload.i1910, i32 %i.gd
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.thread1983, %.thread1985, %bb.aa, %bb.z
  %.11631 = phi i32 [ %.0.copyload.i1890, %bb.z ], [ %i.fc, %bb.aa ], [ %i.gh, %bb.ab ], [ %i.de, %.thread1985 ], [ %i.fk, %.thread1983 ]
  %.11624 = phi i32 [ %.0.copyload.i1889, %bb.z ], [ %i.fd, %bb.aa ], [ %i.fs, %bb.ab ], [ %i.da, %.thread1985 ], [ %i.fg, %.thread1983 ]
  %.01611 = phi i32 [ %i.ev, %bb.z ], [ %i.ff, %bb.aa ], [ %i.fx, %bb.ab ], [ %i.dd, %.thread1985 ], [ %i.fj, %.thread1983 ]
  %.val1769 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gi = getelementptr inbounds nuw i8, ptr %.val1769, i64 %i.bq
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 96
  %.0.copyload.i1912 = load i32, ptr %i.gj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1912) #8, !srcloc !19
  %i.gk = add i32 %.0.copyload.i1912, %.11624
  %i.gl = shl i32 %i.gk, 1
  %i.gm = add i32 %i.gl, %.11631
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.y
  %.21632 = phi i32 [ %i.et, %bb.y ], [ 0, %bb.ac ]
  %.21625 = phi i32 [ 0, %bb.y ], [ %i.gm, %bb.ac ]
  %.11615 = phi i32 [ %.01614, %bb.y ], [ 0, %bb.ac ] ; 3 uses
  %.11612 = phi i32 [ 0, %bb.y ], [ %.01611, %bb.ac ] ; 2 uses
  %.not1684 = icmp eq i32 %.11615, 0              ; 6 uses
  %i.gn = select i1 %.not1684, i32 %.21625, i32 %.21632 ; 2 uses
  %i.go = select i1 %.not1684, i32 %.11612, i32 %.11615
  %i.gp = icmp eq i32 %i.gn, %i.go
  br i1 %i.gp, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %.val1768 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gq = getelementptr inbounds nuw i8, ptr %.val1768, i64 %i.br
  %.0.copyload.i1913 = load i32, ptr %i.gq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1913) #8, !srcloc !19
  br label %.loopexit1988

bb.af:                                            ; preds = %bb.ad
  %i.gr = select i1 %.not1684, i32 2, i32 0
  %i.gs = add i32 %i.bo, -76                      ; 6 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.bn, %bb.af
  %.01645 = phi i32 [ %.11615, %bb.af ], [ %i.nd, %bb.bn ] ; 2 uses
  %.01641 = phi i1 [ true, %bb.af ], [ %.not1698, %bb.bn ] ; 13 uses
  %.21613 = phi i32 [ %.11612, %bb.af ], [ %i.ne, %bb.bn ] ; 2 uses
  %.01641.not = xor i1 %.01641, true
  %.val1847 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %.not1684, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gt = zext i32 %.01645 to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %.val1847, i64 %i.gt
  %.0.copyload.i1914 = load i8, ptr %i.gu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1914) #8, !srcloc !22
  %i.gv = sext i8 %.0.copyload.i1914 to i32
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.gw = zext i32 %.21613 to i64
  %i.gx = getelementptr inbounds nuw i8, ptr %.val1847, i64 %i.gw
  %.0.copyload.i1915 = load i16, ptr %i.gx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i1915) #8, !srcloc !24
  %i.gy = zext i16 %.0.copyload.i1915 to i32
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.0 = phi i32 [ %i.gv, %bb.ah ], [ %i.gy, %bb.ai ] ; 2 uses
  %i.gz = and i32 %.0, 65535                      ; 2 uses
  %trunc = trunc i32 %.0 to i16                   ; 2 uses
  switch i16 %trunc, label %bb.ak [
    i16 10, label %bb.aq
    i16 11, label %bb.bk
    i16 12, label %bb.bk
    i16 13, label %bb.av
    i16 8232, label %bb.ba
    i16 8233, label %bb.bf
  ]

bb.ak:                                            ; preds = %bb.aj
  %.not1692 = icmp eq i32 %i.gz, 47
  br i1 %.not1692, label %bb.al, label %bb.bk

bb.al:                                            ; preds = %bb.ak
  %i.ha = select i1 %.01641, i32 2, i32 1         ; 4 uses
  %.val1767 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hb = getelementptr inbounds nuw i8, ptr %.val1767, i64 %i.bq
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 108
  %.0.copyload.i1916 = load i32, ptr %i.hc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1916) #8, !srcloc !19
  %.val1766 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hd = getelementptr inbounds nuw i8, ptr %.val1766, i64 %i.br
  %.0.copyload.i1917 = load i32, ptr %i.hd, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1917) #8, !srcloc !19
  %i.he = sub i32 %.0.copyload.i1916, %.0.copyload.i1917
  %i.hf = icmp ugt i32 %i.ha, %i.he
  br i1 %i.hf, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.hg = add i32 %.0.copyload.i1917, %i.ha
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.gs, i32 noundef %i.bt, i32 noundef %i.hg, i32 noundef 2) #8
  %.val1765 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hh = getelementptr inbounds nuw i8, ptr %.val1765, i64 %i.br
  %.0.copyload.i1918 = load i32, ptr %i.hh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1918) #8, !srcloc !19
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.01617 = phi i32 [ %.0.copyload.i1918, %bb.am ], [ %.0.copyload.i1917, %bb.al ] ; 2 uses
  %i.hi = select i1 %.01641, i32 60247, i32 60248
  %.val1764 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hj = getelementptr inbounds nuw i8, ptr %.val1764, i64 %i.bu
  %.0.copyload.i1919 = load i32, ptr %i.hj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1919) #8, !srcloc !19
  %i.hk = shl i32 %.01617, 1
  %i.hl = add i32 %.0.copyload.i1919, %i.hk
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %bb.an
  %.31633 = phi i32 [ %i.hi, %bb.an ], [ %i.hs, %bb.ao ] ; 2 uses
  %.31626 = phi i32 [ %i.hl, %bb.an ], [ %i.hr, %bb.ao ] ; 2 uses
  %.01620 = phi i32 [ 0, %bb.an ], [ %i.ht, %bb.ao ]
  %i.hm = zext i32 %.31633 to i64
  %.val1836 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hn = getelementptr inbounds nuw i8, ptr %.val1836, i64 %i.hm
  %.0.copyload.i1920 = load i8, ptr %i.hn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1920) #8, !srcloc !21
  %i.ho = zext i32 %.31626 to i64
  %.val1873 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hp = zext i8 %.0.copyload.i1920 to i16
  %i.hq = getelementptr inbounds nuw i8, ptr %.val1873, i64 %i.ho
  store i16 %i.hp, ptr %i.hq, align 1
  %i.hr = add i32 %.31626, 2
  %i.hs = add i32 %.31633, 1
  %i.ht = add nuw i32 %.01620, 1                  ; 2 uses
  %.not1694 = icmp eq i32 %i.ht, %i.ha
  br i1 %.not1694, label %bb.ap, label %bb.ao

bb.ap:                                            ; preds = %bb.ao
  %i.hu = add i32 %.01617, %i.ha
  br label %bb.bn

bb.aq:                                            ; preds = %bb.aj
  %i.hv = select i1 %.01641, i32 2, i32 1         ; 4 uses
  %.val1763 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hw = getelementptr inbounds nuw i8, ptr %.val1763, i64 %i.bq
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 108
  %.0.copyload.i1921 = load i32, ptr %i.hx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1921) #8, !srcloc !19
  %.val1762 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hy = getelementptr inbounds nuw i8, ptr %.val1762, i64 %i.br
  %.0.copyload.i1922 = load i32, ptr %i.hy, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1922) #8, !srcloc !19
  %i.hz = sub i32 %.0.copyload.i1921, %.0.copyload.i1922
  %i.ia = icmp ugt i32 %i.hv, %i.hz
  br i1 %i.ia, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ib = add i32 %.0.copyload.i1922, %i.hv
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.gs, i32 noundef %i.bt, i32 noundef %i.ib, i32 noundef 2) #8
  %.val1761 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ic = getelementptr inbounds nuw i8, ptr %.val1761, i64 %i.br
  %.0.copyload.i1923 = load i32, ptr %i.ic, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1923) #8, !srcloc !19
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.11618 = phi i32 [ %.0.copyload.i1923, %bb.ar ], [ %.0.copyload.i1922, %bb.aq ] ; 2 uses
  %i.id = select i1 %.01641, i32 43017, i32 43018
  %.val1760 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ie = getelementptr inbounds nuw i8, ptr %.val1760, i64 %i.bu
  %.0.copyload.i1924 = load i32, ptr %i.ie, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1924) #8, !srcloc !19
  %i.if = shl i32 %.11618, 1
  %i.ig = add i32 %.0.copyload.i1924, %i.if
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %bb.as
  %.41634 = phi i32 [ %i.id, %bb.as ], [ %i.in, %bb.at ] ; 2 uses
  %.41627 = phi i32 [ %i.ig, %bb.as ], [ %i.im, %bb.at ] ; 2 uses
  %.11621 = phi i32 [ 0, %bb.as ], [ %i.io, %bb.at ]
  %i.ih = zext i32 %.41634 to i64
  %.val1835 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ii = getelementptr inbounds nuw i8, ptr %.val1835, i64 %i.ih
  %.0.copyload.i1925 = load i8, ptr %i.ii, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1925) #8, !srcloc !21
  %i.ij = zext i32 %.41627 to i64
  %.val1872 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ik = zext i8 %.0.copyload.i1925 to i16
  %i.il = getelementptr inbounds nuw i8, ptr %.val1872, i64 %i.ij
  store i16 %i.ik, ptr %i.il, align 1
  %i.im = add i32 %.41627, 2
  %i.in = add i32 %.41634, 1
  %i.io = add nuw i32 %.11621, 1                  ; 2 uses
  %.not1688 = icmp eq i32 %i.io, %i.hv
  br i1 %.not1688, label %bb.au, label %bb.at

bb.au:                                            ; preds = %bb.at
  %i.ip = add i32 %.11618, %i.hv
  br label %bb.bn

bb.av:                                            ; preds = %bb.aj
  %i.iq = select i1 %.01641, i32 2, i32 1         ; 4 uses
  %.val1759 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ir = getelementptr inbounds nuw i8, ptr %.val1759, i64 %i.bq
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 108
  %.0.copyload.i1926 = load i32, ptr %i.is, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1926) #8, !srcloc !19
  %.val1758 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.it = getelementptr inbounds nuw i8, ptr %.val1758, i64 %i.br
  %.0.copyload.i1927 = load i32, ptr %i.it, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1927) #8, !srcloc !19
  %i.iu = sub i32 %.0.copyload.i1926, %.0.copyload.i1927
  %i.iv = icmp ugt i32 %i.iq, %i.iu
  br i1 %i.iv, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.iw = add i32 %.0.copyload.i1927, %i.iq
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.gs, i32 noundef %i.bt, i32 noundef %i.iw, i32 noundef 2) #8
  %.val1757 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ix = getelementptr inbounds nuw i8, ptr %.val1757, i64 %i.br
  %.0.copyload.i1928 = load i32, ptr %i.ix, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1928) #8, !srcloc !19
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.21619 = phi i32 [ %.0.copyload.i1928, %bb.aw ], [ %.0.copyload.i1927, %bb.av ] ; 2 uses
  %i.iy = select i1 %.01641, i32 39575, i32 39576
  %.val1756 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iz = getelementptr inbounds nuw i8, ptr %.val1756, i64 %i.bu
  %.0.copyload.i1929 = load i32, ptr %i.iz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1929) #8, !srcloc !19
  %i.ja = shl i32 %.21619, 1
  %i.jb = add i32 %.0.copyload.i1929, %i.ja
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %bb.ax
  %.51635 = phi i32 [ %i.iy, %bb.ax ], [ %i.ji, %bb.ay ] ; 2 uses
  %.51628 = phi i32 [ %i.jb, %bb.ax ], [ %i.jh, %bb.ay ] ; 2 uses
  %.21622 = phi i32 [ 0, %bb.ax ], [ %i.jj, %bb.ay ]
  %i.jc = zext i32 %.51635 to i64
  %.val1834 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jd = getelementptr inbounds nuw i8, ptr %.val1834, i64 %i.jc
  %.0.copyload.i1930 = load i8, ptr %i.jd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1930) #8, !srcloc !21
  %i.je = zext i32 %.51628 to i64
  %.val1871 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jf = zext i8 %.0.copyload.i1930 to i16
  %i.jg = getelementptr inbounds nuw i8, ptr %.val1871, i64 %i.je
  store i16 %i.jf, ptr %i.jg, align 1
  %i.jh = add i32 %.51628, 2
  %i.ji = add i32 %.51635, 1
  %i.jj = add nuw i32 %.21622, 1                  ; 2 uses
  %.not1686 = icmp eq i32 %i.jj, %i.iq
  br i1 %.not1686, label %bb.az, label %bb.ay

bb.az:                                            ; preds = %bb.ay
  %i.jk = add i32 %.21619, %i.iq
  br label %bb.bn

bb.ba:                                            ; preds = %bb.aj
  %i.jl = select i1 %.01641, i64 59699, i64 59700 ; 5 uses
  %i.jm = select i1 %.01641, i32 6, i32 5         ; 3 uses
  %.val1755 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jn = getelementptr inbounds nuw i8, ptr %.val1755, i64 %i.bq
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 108
  %.0.copyload.i1931 = load i32, ptr %i.jo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1931) #8, !srcloc !19
  %.val1754 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jp = getelementptr inbounds nuw i8, ptr %.val1754, i64 %i.br
  %.0.copyload.i1932 = load i32, ptr %i.jp, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1932) #8, !srcloc !19
  %i.jq = sub i32 %.0.copyload.i1931, %.0.copyload.i1932
  %i.jr = icmp ult i32 %i.jq, %i.jm
  br i1 %i.jr, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.js = add i32 %.0.copyload.i1932, %i.jm
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.gs, i32 noundef %i.bt, i32 noundef %i.js, i32 noundef 2) #8
  %.val1753 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jt = getelementptr inbounds nuw i8, ptr %.val1753, i64 %i.br
  %.0.copyload.i1933 = load i32, ptr %i.jt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1933) #8, !srcloc !19
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.61629 = phi i32 [ %.0.copyload.i1933, %bb.bb ], [ %.0.copyload.i1932, %bb.ba ] ; 2 uses
  %.val1752 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ju = getelementptr inbounds nuw i8, ptr %.val1752, i64 %i.bu
  %.0.copyload.i1934 = load i32, ptr %i.ju, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1934) #8, !srcloc !19
  %i.jv = shl i32 %.61629, 1
  %i.jw = add i32 %.0.copyload.i1934, %i.jv
  %.val1833 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jx = getelementptr inbounds nuw i8, ptr %.val1833, i64 %i.jl
  %.0.copyload.i1935 = load i8, ptr %i.jx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1935) #8, !srcloc !21
  %i.jy = zext i32 %i.jw to i64                   ; 6 uses
  %.val1870 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jz = zext i8 %.0.copyload.i1935 to i16
  %i.ka = getelementptr inbounds nuw i8, ptr %.val1870, i64 %i.jy
  store i16 %i.jz, ptr %i.ka, align 1
  %.val1832 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kb = getelementptr inbounds nuw i8, ptr %.val1832, i64 %i.jl
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 1
  %.0.copyload.i1936 = load i8, ptr %i.kc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1936) #8, !srcloc !21
  %.val1869 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kd = zext i8 %.0.copyload.i1936 to i16
  %i.ke = getelementptr inbounds nuw i8, ptr %.val1869, i64 %i.jy
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 2
  store i16 %i.kd, ptr %i.kf, align 1
  %.val1831 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kg = getelementptr inbounds nuw i8, ptr %.val1831, i64 %i.jl
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 2
  %.0.copyload.i1937 = load i8, ptr %i.kh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1937) #8, !srcloc !21
  %.val1868 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ki = zext i8 %.0.copyload.i1937 to i16
  %i.kj = getelementptr inbounds nuw i8, ptr %.val1868, i64 %i.jy
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 4
  store i16 %i.ki, ptr %i.kk, align 1
  %.val1830 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kl = getelementptr inbounds nuw i8, ptr %.val1830, i64 %i.jl
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 3
  %.0.copyload.i1938 = load i8, ptr %i.km, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1938) #8, !srcloc !21
  %.val1867 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kn = zext i8 %.0.copyload.i1938 to i16
  %i.ko = getelementptr inbounds nuw i8, ptr %.val1867, i64 %i.jy
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 6
  store i16 %i.kn, ptr %i.kp, align 1
  %.val1829 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kq = getelementptr inbounds nuw i8, ptr %.val1829, i64 %i.jl
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 4
  %.0.copyload.i1939 = load i8, ptr %i.kr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1939) #8, !srcloc !21
  %.val1866 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ks = zext i8 %.0.copyload.i1939 to i16
  %i.kt = getelementptr inbounds nuw i8, ptr %.val1866, i64 %i.jy
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  store i16 %i.ks, ptr %i.ku, align 1
  br i1 %.01641, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %.val1828 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kv = getelementptr inbounds nuw i8, ptr %.val1828, i64 59704
  %.0.copyload.i1940 = load i8, ptr %i.kv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1940) #8, !srcloc !21
  %.val1865 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kw = zext i8 %.0.copyload.i1940 to i16
  %i.kx = getelementptr inbounds nuw i8, ptr %.val1865, i64 %i.jy
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 10
  store i16 %i.kw, ptr %i.ky, align 1
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.kz = add i32 %.61629, %i.jm
  br label %bb.bn

bb.bf:                                            ; preds = %bb.aj
  %i.la = select i1 %.01641, i64 59692, i64 59693 ; 5 uses
  %i.lb = select i1 %.01641, i32 6, i32 5         ; 3 uses
  %.val1751 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lc = getelementptr inbounds nuw i8, ptr %.val1751, i64 %i.bq
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 108
  %.0.copyload.i1941 = load i32, ptr %i.ld, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1941) #8, !srcloc !19
  %.val1750 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.le = getelementptr inbounds nuw i8, ptr %.val1750, i64 %i.br
  %.0.copyload.i1942 = load i32, ptr %i.le, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1942) #8, !srcloc !19
  %i.lf = sub i32 %.0.copyload.i1941, %.0.copyload.i1942
  %i.lg = icmp ult i32 %i.lf, %i.lb
  br i1 %i.lg, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.lh = add i32 %.0.copyload.i1942, %i.lb
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.gs, i32 noundef %i.bt, i32 noundef %i.lh, i32 noundef 2) #8
  %.val1749 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.li = getelementptr inbounds nuw i8, ptr %.val1749, i64 %i.br
  %.0.copyload.i1943 = load i32, ptr %i.li, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1943) #8, !srcloc !19
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.7 = phi i32 [ %.0.copyload.i1943, %bb.bg ], [ %.0.copyload.i1942, %bb.bf ] ; 2 uses
  %.val1748 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lj = getelementptr inbounds nuw i8, ptr %.val1748, i64 %i.bu
  %.0.copyload.i1944 = load i32, ptr %i.lj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1944) #8, !srcloc !19
  %i.lk = shl i32 %.7, 1
  %i.ll = add i32 %.0.copyload.i1944, %i.lk
  %.val1827 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lm = getelementptr inbounds nuw i8, ptr %.val1827, i64 %i.la
  %.0.copyload.i1945 = load i8, ptr %i.lm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1945) #8, !srcloc !21
  %i.ln = zext i32 %i.ll to i64                   ; 6 uses
  %.val1864 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lo = zext i8 %.0.copyload.i1945 to i16
  %i.lp = getelementptr inbounds nuw i8, ptr %.val1864, i64 %i.ln
  store i16 %i.lo, ptr %i.lp, align 1
  %.val1826 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lq = getelementptr inbounds nuw i8, ptr %.val1826, i64 %i.la
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 1
  %.0.copyload.i1946 = load i8, ptr %i.lr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1946) #8, !srcloc !21
  %.val1863 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ls = zext i8 %.0.copyload.i1946 to i16
  %i.lt = getelementptr inbounds nuw i8, ptr %.val1863, i64 %i.ln
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 2
  store i16 %i.ls, ptr %i.lu, align 1
  %.val1825 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lv = getelementptr inbounds nuw i8, ptr %.val1825, i64 %i.la
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 2
  %.0.copyload.i1947 = load i8, ptr %i.lw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1947) #8, !srcloc !21
  %.val1862 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lx = zext i8 %.0.copyload.i1947 to i16
  %i.ly = getelementptr inbounds nuw i8, ptr %.val1862, i64 %i.ln
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 4
  store i16 %i.lx, ptr %i.lz, align 1
  %.val1824 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ma = getelementptr inbounds nuw i8, ptr %.val1824, i64 %i.la
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 3
  %.0.copyload.i1948 = load i8, ptr %i.mb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1948) #8, !srcloc !21
  %.val1861 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mc = zext i8 %.0.copyload.i1948 to i16
  %i.md = getelementptr inbounds nuw i8, ptr %.val1861, i64 %i.ln
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 6
  store i16 %i.mc, ptr %i.me, align 1
  %.val1823 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mf = getelementptr inbounds nuw i8, ptr %.val1823, i64 %i.la
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 4
  %.0.copyload.i1949 = load i8, ptr %i.mg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1949) #8, !srcloc !21
  %.val1860 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mh = zext i8 %.0.copyload.i1949 to i16
  %i.mi = getelementptr inbounds nuw i8, ptr %.val1860, i64 %i.ln
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  store i16 %i.mh, ptr %i.mj, align 1
  br i1 %.01641, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %.val1822 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mk = getelementptr inbounds nuw i8, ptr %.val1822, i64 59697
  %.0.copyload.i1950 = load i8, ptr %i.mk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1950) #8, !srcloc !21
  %.val1859 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ml = zext i8 %.0.copyload.i1950 to i16
  %i.mm = getelementptr inbounds nuw i8, ptr %.val1859, i64 %i.ln
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 10
end_hunk_5
begin_hunk_6_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AparseFloat0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
  %i.pf = icmp slt i8 %.0.copyload.i1763, 0
  %i.pg = select i1 %i.pf, i32 %.0.copyload.i1762, i32 %i.pc
  br label %bb.bz

.thread1788:                                      ; preds = %bb.bt
  %i.ph = add i32 %.0.copyload.i1749, 12          ; 2 uses
  br label %bb.bz

bb.bz:                                            ; preds = %bb.br, %bb.by, %.thread1785, %.thread1788, %bb.bx
  %.pn = phi i32 [ %i.om, %.thread1785 ], [ %i.ol, %bb.bx ], [ %i.ow, %bb.by ], [ %i.ph, %.thread1788 ], [ %.0.copyload.i1695, %bb.br ]
  %.01466 = phi i32 [ %i.om, %.thread1785 ], [ %i.ol, %bb.bx ], [ %i.pg, %bb.by ], [ %i.ph, %.thread1788 ], [ %.0.copyload.i1695, %bb.br ]
  %.41480 = add i32 %.pn, %i.jg
  %i.pi = add i32 %i.jg, %i.iu
  %i.pj = add i32 %i.pi, %.01466
  br label %bb.ce

bb.ca:                                            ; preds = %bb.bu
  %i.pk = shl nuw nsw i32 %i.jg, 1
  %i.pl = add i32 %i.pk, %.0.copyload.i1695
  br label %bb.cd

bb.cb:                                            ; preds = %bb.bv
  %.val1591 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pm = getelementptr inbounds nuw i8, ptr %.val1591, i64 %i.nx
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 12
  %.0.copyload.i1764 = load i32, ptr %i.pn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1764) #8, !srcloc !19
  %i.po = add i32 %.0.copyload.i1754, 12
  %.val1659 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pp = getelementptr inbounds nuw i8, ptr %.val1659, i64 %i.nx
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 23
  %.0.copyload.i1765 = load i8, ptr %i.pq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1765) #8, !srcloc !22
  %i.pr = icmp slt i8 %.0.copyload.i1765, 0
  %i.ps = select i1 %i.pr, i32 %.0.copyload.i1764, i32 %i.po ; 2 uses
  %i.pt = shl nuw nsw i32 %i.jg, 1
  %i.pu = add i32 %i.ps, %i.pt
  br label %bb.cd

.thread1791:                                      ; preds = %bb.bw
  %i.pv = shl nuw nsw i32 %i.jg, 1
  %i.pw = add nuw i32 %i.pv, 8
  %i.px = add i32 %i.pw, %.0.copyload.i1754
  %i.py = add i32 %.0.copyload.i1754, 8
  br label %bb.cd

bb.cc:                                            ; preds = %bb.bw
  %.val1596 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pz = getelementptr inbounds nuw i8, ptr %.val1596, i64 %i.nx
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 8
  %.0.copyload.i1756 = load i32, ptr %i.qa, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1756) #8, !srcloc !19
  %i.qb = zext i32 %.0.copyload.i1756 to i64      ; 2 uses
  %.val1595 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qc = getelementptr inbounds nuw i8, ptr %.val1595, i64 %i.qb
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 12
  %.0.copyload.i1757 = load i32, ptr %i.qd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1757) #8, !srcloc !19
  %.val1662 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qe = getelementptr inbounds nuw i8, ptr %.val1662, i64 %i.qb
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 23
  %.0.copyload.i1758 = load i8, ptr %i.qf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1758) #8, !srcloc !22
  %i.qg = icmp slt i8 %.0.copyload.i1758, 0
  %i.qh = add i32 %.0.copyload.i1756, 12
  %i.qi = select i1 %i.qg, i32 %.0.copyload.i1757, i32 %i.qh
  %i.qj = shl nuw nsw i32 %i.jg, 1
  %i.qk = add i32 %i.qi, %i.qj
  %.val1590 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ql = getelementptr inbounds nuw i8, ptr %.val1590, i64 %i.nx
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 8
  %.0.copyload.i1766 = load i32, ptr %i.qm, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1766) #8, !srcloc !19
  %i.qn = zext i32 %.0.copyload.i1766 to i64      ; 2 uses
  %.val1589 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qo = getelementptr inbounds nuw i8, ptr %.val1589, i64 %i.qn
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 12
  %.0.copyload.i1767 = load i32, ptr %i.qp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1767) #8, !srcloc !19
  %i.qq = add i32 %.0.copyload.i1766, 12
  %.val1658 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qr = getelementptr inbounds nuw i8, ptr %.val1658, i64 %i.qn
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 23
  %.0.copyload.i1768 = load i8, ptr %i.qs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1768) #8, !srcloc !22
  %i.qt = icmp slt i8 %.0.copyload.i1768, 0
  %i.qu = select i1 %i.qt, i32 %.0.copyload.i1767, i32 %i.qq
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %.thread1791, %.thread1793, %bb.cb, %bb.ca
  %.11469 = phi i32 [ %i.pl, %bb.ca ], [ %i.pu, %bb.cb ], [ %i.qk, %bb.cc ], [ %i.od, %.thread1793 ], [ %i.px, %.thread1791 ]
  %.11467 = phi i32 [ %.0.copyload.i1695, %bb.ca ], [ %i.ps, %bb.cb ], [ %i.qu, %bb.cc ], [ %i.oe, %.thread1793 ], [ %i.py, %.thread1791 ]
  %i.qv = add i32 %i.jg, %i.iu
  %i.qw = shl i32 %i.qv, 1
  %i.qx = add i32 %.11467, %i.qw
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.bz
  %.51481 = phi i32 [ %.41480, %bb.bz ], [ 0, %bb.cd ] ; 3 uses
  %.21470 = phi i32 [ 0, %bb.bz ], [ %.11469, %bb.cd ] ; 2 uses
  %.11458 = phi i32 [ 0, %bb.bz ], [ %i.qx, %bb.cd ]
  %.10 = phi i32 [ %i.pj, %bb.bz ], [ 0, %bb.cd ]
  %.not1544 = icmp eq i32 %.51481, 0              ; 4 uses
  %i.qy = select i1 %.not1544, i32 %.11458, i32 %.10 ; 3 uses
  %i.qz = select i1 %.not1544, i32 %.21470, i32 %.51481
  %.not1545 = icmp eq i32 %i.qy, %i.qz
  br i1 %.not1545, label %bb.co, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ra = select i1 %.not1544, i32 2, i32 0
  br i1 %.not1544, label %.split1802.us, label %.split1802

.split1802.us:                                    ; preds = %bb.cf, %bb.ci
  %.31471.us = phi i32 [ %i.rt, %bb.ci ], [ %.21470, %bb.cf ] ; 2 uses
  %.21459.us = phi i32 [ %i.rs, %bb.ci ], [ 0, %bb.cf ] ; 3 uses
  %i.rb = zext i32 %.31471.us to i64
  %.val1687.us = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rc = getelementptr inbounds nuw i8, ptr %.val1687.us, i64 %i.rb
  %.0.copyload.i1770.us = load i16, ptr %i.rc, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i1770.us) #8, !srcloc !24
  %i.rd = zext i16 %.0.copyload.i1770.us to i32   ; 2 uses
  %i.re = icmp eq i16 %.0.copyload.i1770.us, 46
  br i1 %i.re, label %bb.ci, label %bb.cg

bb.cg:                                            ; preds = %.split1802.us
  %i.rf = add nuw nsw i32 %i.rd, 65488
  %i.rg = and i32 %i.rf, 65534
  %i.rh = icmp samesign ult i32 %i.rg, 10
  br i1 %i.rh, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ri = add nsw i32 %i.rd, -43                  ; 2 uses
  %i.rj = icmp ult i32 %i.ri, 27
  %i.rk = and i32 %i.ri, 31
  %i.rl = shl nuw i32 1, %i.rk
  %i.rm = and i32 %i.rl, 67108869
  %.not1546.us = icmp ne i32 %i.rm, 0
  %narrow.us = and i1 %i.rj, %.not1546.us
  %.not1547.us = icmp eq i16 %.0.copyload.i1770.us, 101
  %or.cond1552.us = or i1 %.not1547.us, %narrow.us
  br i1 %or.cond1552.us, label %bb.ci, label %.split1804.us

bb.ci:                                            ; preds = %bb.ch, %bb.cg, %.split1802.us
  %.val1588.us = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rn = getelementptr inbounds nuw i8, ptr %.val1588.us, i64 %i.ng
  %.0.copyload.i1771.us = load i32, ptr %i.rn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1771.us) #8, !srcloc !19
  %i.ro = add i32 %.0.copyload.i1771.us, %.21459.us
  %i.rp = zext i32 %i.ro to i64
  %.val1686.us = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rq = trunc i16 %.0.copyload.i1770.us to i8
  %i.rr = getelementptr inbounds nuw i8, ptr %.val1686.us, i64 %i.rp
  store i8 %i.rq, ptr %i.rr, align 1
  %i.rs = add i32 %.21459.us, 1                   ; 2 uses
  %i.rt = add i32 %.31471.us, %i.ra               ; 2 uses
  %.not1548.us = icmp eq i32 %i.rt, %i.qy
  br i1 %.not1548.us, label %.split1804.us, label %.split1802.us

.split1802:                                       ; preds = %bb.cf, %bb.cl
  %.41465 = phi i32 [ %i.sl, %bb.cl ], [ %.51481, %bb.cf ] ; 2 uses
  %.21459 = phi i32 [ %i.sm, %bb.cl ], [ 0, %bb.cf ] ; 3 uses
  %i.ru = zext i32 %.41465 to i64
  %.val1657 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rv = getelementptr inbounds nuw i8, ptr %.val1657, i64 %i.ru
  %.0.copyload.i1769 = load i8, ptr %i.rv, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1769) #8, !srcloc !22
  %i.rw = sext i8 %.0.copyload.i1769 to i32       ; 2 uses
  %i.rx = and i32 %i.rw, 65535
  %i.ry = icmp eq i8 %.0.copyload.i1769, 46
  br i1 %i.ry, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %.split1802
  %i.rz = add nsw i32 %i.rw, 65488
  %i.sa = and i32 %i.rz, 65534
  %i.sb = icmp samesign ult i32 %i.sa, 10
  br i1 %i.sb, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.sc = add nsw i32 %i.rx, -43                  ; 2 uses
  %i.sd = icmp ult i32 %i.sc, 27
  %i.se = and i32 %i.sc, 31
  %i.sf = shl nuw i32 1, %i.se
  %i.sg = and i32 %i.sf, 67108869
  %.not1546 = icmp ne i32 %i.sg, 0
  %narrow = and i1 %i.sd, %.not1546
  %.not1547 = icmp eq i8 %.0.copyload.i1769, 101
  %or.cond1552 = or i1 %.not1547, %narrow
  br i1 %or.cond1552, label %bb.cl, label %.split1804.us

bb.cl:                                            ; preds = %bb.ck, %bb.cj, %.split1802
  %.val1588 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sh = getelementptr inbounds nuw i8, ptr %.val1588, i64 %i.ng
  %.0.copyload.i1771 = load i32, ptr %i.sh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1771) #8, !srcloc !19
  %i.si = add i32 %.0.copyload.i1771, %.21459
  %i.sj = zext i32 %i.si to i64
  %.val1686 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sk = getelementptr inbounds nuw i8, ptr %.val1686, i64 %i.sj
  store i8 %.0.copyload.i1769, ptr %i.sk, align 1
  %i.sl = add i32 %.41465, 1                      ; 2 uses
  %i.sm = add nuw i32 %.21459, 1                  ; 2 uses
  %.not1548 = icmp eq i32 %i.sl, %i.qy
  br i1 %.not1548, label %bb.cm, label %.split1802

.split1804.us:                                    ; preds = %bb.ck, %bb.ch, %bb.ci
  %.us-phi1805 = phi i32 [ %.21459.us, %bb.ch ], [ %i.rs, %bb.ci ], [ %.21459, %bb.ck ] ; 2 uses
  %.not1549 = icmp eq i32 %.us-phi1805, 0
  br i1 %.not1549, label %bb.co, label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %.split1804.us
  %.us-phi18051827 = phi i32 [ %.us-phi1805, %.split1804.us ], [ %i.sm, %bb.cl ]
  %.val1587 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sn = getelementptr inbounds nuw i8, ptr %.val1587, i64 %i.ng
  %.0.copyload.i1772 = load i32, ptr %i.sn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1772) #8, !srcloc !19
  %i.so = add i32 %.0.copyload.i1772, %.us-phi18051827
  %i.sp = zext i32 %i.so to i64
  %.val1685 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sq = getelementptr inbounds nuw i8, ptr %.val1685, i64 %i.sp
  store i8 0, ptr %i.sq, align 1
  %.val1586 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sr = getelementptr inbounds nuw i8, ptr %.val1586, i64 %i.ng
  %.0.copyload.i1773 = load i32, ptr %i.sr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1773) #8, !srcloc !19
  %i.ss = add i32 %i.b, -156                      ; 2 uses
  %i.st = tail call double @w2c_hermes_hermes_g_strtod(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1773, i32 noundef %i.ss) #8 ; 0 uses
  %.val1585 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.su = getelementptr inbounds nuw i8, ptr %.val1585, i64 %i.af
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 132
  %.0.copyload.i1774 = load i32, ptr %i.sv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1774) #8, !srcloc !19
  %.val1584 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sw = getelementptr inbounds nuw i8, ptr %.val1584, i64 %i.ng
  %.0.copyload.i1775 = load i32, ptr %i.sw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1775) #8, !srcloc !19
  %i.sx = icmp eq i32 %.0.copyload.i1774, %.0.copyload.i1775
  br i1 %i.sx, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.sy = zext i32 %.0.copyload.i1774 to i64
  %.val1684 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sz = getelementptr inbounds nuw i8, ptr %.val1684, i64 %i.sy
  store i8 0, ptr %i.sz, align 1
  %.val1583 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ta = getelementptr inbounds nuw i8, ptr %.val1583, i64 %i.ng
  %.0.copyload.i1776 = load i32, ptr %i.ta, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1776) #8, !srcloc !19
  %i.tb = tail call double @w2c_hermes_hermes_g_strtod(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1776, i32 noundef %i.ss) #8 ; 2 uses
  %i.tc = bitcast double %i.tb to i64
  %i.td = fcmp uno double %i.tb, 0.000000e+00
  %i.te = select i1 %i.td, i64 9221120237041090560, i64 %i.tc
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm, %bb.ce, %.split1804.us
  %.0.sink = phi i64 [ 9221120237041090560, %bb.ce ], [ 9221120237041090560, %.split1804.us ], [ %i.te, %bb.cn ], [ 9221120237041090560, %bb.cm ]
  %i.tf = zext i32 %1 to i64                      ; 2 uses
  %.val1641 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tg = getelementptr inbounds nuw i8, ptr %.val1641, i64 %i.tf
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 8
  store i64 %.0.sink, ptr %i.th, align 1
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ti = getelementptr inbounds nuw i8, ptr %.val, i64 %i.tf
  store i32 1, ptr %i.ti, align 1
  %.val1582 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tj = getelementptr inbounds nuw i8, ptr %.val1582, i64 %i.ng
  %.0.copyload.i1777 = load i32, ptr %i.tj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1777) #8, !srcloc !19
  %i.tk = icmp eq i32 %.0.copyload.i1777, %i.nf
  br i1 %i.tk, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1777) #8
  br label %bb.cq

bb.cq:                                            ; preds = %bb.co, %bb.cp, %bb.bl, %bb.bj, %bb.bh, %bb.bf, %bb.b
  store i32 %i.b, ptr %i.a, align 8, !tbaa !7
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AobjectValues0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = add i32 %i.b, -16                        ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 10 uses
  %i.e = zext i32 %4 to i64                       ; 2 uses
  %.val89 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val89, i64 %i.e
  %.0.copyload.i = load i32, ptr %i.f, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !19
  %i.g = add i32 %.0.copyload.i, -8
  %.val88 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val88, i64 %i.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.0.copyload.i92 = load i32, ptr %i.i, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i92) #8, !srcloc !19
  %.not = icmp eq i32 %.0.copyload.i92, 0
  %i.j = select i1 %.not, i32 70392, i32 %i.g
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoObject0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef %0, i32 noundef %i.c, i32 noundef %3, i32 noundef %i.j) #8
  %i.k = zext i32 %i.c to i64                     ; 2 uses
  %.val87 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %.val87, i64 %i.k
  %.0.copyload.i93 = load i32, ptr %i.l, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i93) #8, !srcloc !19
  %.not82 = icmp eq i32 %.0.copyload.i93, 0
  br i1 %.not82, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = zext i32 %1 to i64
  %.val83 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %.val83, i64 %i.m
  store i32 0, ptr %i.n, align 1
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %.val91 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %.val91, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.0.copyload.i94 = load i32, ptr %i.p, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i94) #8, !srcloc !23
  %i.q = zext i32 %.0.copyload.i94 to i64
  %i.r = or disjoint i64 %i.q, -281474976710656   ; 2 uses
  %i.s = zext i32 %3 to i64
  %.val86 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %.val86, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %.0.copyload.i95 = load i32, ptr %i.u, align 1  ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i95) #8, !srcloc !19
  %i.v = zext i32 %.0.copyload.i95 to i64         ; 2 uses
  %i.w = add nuw nsw i64 %i.v, 164                ; 2 uses
  %.val85 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %.val85, i64 %i.w
  %.0.copyload.i96 = load i32, ptr %i.x, align 1  ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i96) #8, !srcloc !19
  %.val84 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %.val84, i64 %i.v
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 168
  %.0.copyload.i97 = load i32, ptr %i.z, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i97) #8, !srcloc !19
  %i.aa = icmp ult i32 %.0.copyload.i96, %.0.copyload.i97
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = add i32 %.0.copyload.i96, 8
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 %i.w
  store i32 %i.ab, ptr %i.ac, align 1
  %i.ad = zext i32 %.0.copyload.i96 to i64
  %.val90 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %.val90, i64 %i.ad
  store i64 %i.r, ptr %i.ae, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.af = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i95, i64 noundef %i.r) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i32 [ %.0.copyload.i96, %bb.d ], [ %i.af, %bb.e ]
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AenumerableOwnProperties_RJS0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AEnumerableOwnPropertiesKind0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %3, i32 noundef %.0, i32 noundef 1)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  store i32 %i.b, ptr %i.a, align 8, !tbaa !7
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AobjectSetPrototypeOf0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 5 uses
  %i.c = add i32 %i.b, -48                        ; 5 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 21 uses
  %i.e = zext i32 %4 to i64                       ; 2 uses
  %.val210 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val210, i64 %i.e
  %.0.copyload.i = load i32, ptr %i.f, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !19
  %i.g = add i32 %.0.copyload.i, -8
  %.val209 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val209, i64 %i.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.0.copyload.i219 = load i32, ptr %i.i, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i219) #8, !srcloc !19
  %.not = icmp eq i32 %.0.copyload.i219, 0
  %i.j = select i1 %.not, i32 70392, i32 %i.g
  %i.k = zext i32 %i.j to i64                     ; 2 uses
  %.val217 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %.val217, i64 %i.k
  %.0.copyload.i220 = load i64, ptr %i.l, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i220) #8, !srcloc !20
  %i.m = ashr i64 %.0.copyload.i220, 47
  %i.n = and i64 %i.m, 4294967294
  %i.o = icmp eq i64 %i.n, 4294967284
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = zext i32 %i.c to i64                     ; 4 uses
  %.val206 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %.val206, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i32 0, ptr %i.r, align 1
  %.val214 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %.val214, i64 %i.p
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store i64 214748364801, ptr %i.t, align 1
  %.val205 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %.val205, i64 %i.p
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i32 3, ptr %i.v, align 1
  %.val204 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %.val204, i64 %i.p
end_hunk_6
begin_hunk_7_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AobjectAssign0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
  store i64 %i.ar, ptr %i.bc, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.bd = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i990, i64 noundef %i.ar) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0844 = phi i32 [ %.0.copyload.i991, %bb.d ], [ %i.bd, %bb.e ] ; 4 uses
  %i.be = icmp eq i32 %.0.copyload.i987, 1
  br i1 %i.be, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bf = zext i32 %.0844 to i64
  %.val977 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %.val977, i64 %i.bf
  %.0.copyload.i993 = load i64, ptr %i.bg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i993) #8, !srcloc !20
  %i.bh = zext i32 %1 to i64                      ; 2 uses
  %.val969 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %.val969, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i64 %.0.copyload.i993, ptr %i.bj, align 1
  %.val901 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %.val901, i64 %i.bh
  store i32 1, ptr %i.bk, align 1
  br label %bb.bc

bb.h:                                             ; preds = %bb.f
  %.val949 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %.val949, i64 %i.i
  %.0.copyload.i994 = load i32, ptr %i.bl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i994) #8, !srcloc !19
  %i.bm = zext i32 %.0.copyload.i994 to i64       ; 2 uses
  %i.bn = add nuw nsw i64 %i.bm, 164              ; 2 uses
  %.val948 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %.val948, i64 %i.bn
  %.0.copyload.i995 = load i32, ptr %i.bo, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i995) #8, !srcloc !19
  %.val947 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bp = getelementptr inbounds nuw i8, ptr %.val947, i64 %i.bm
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 168
  %.0.copyload.i996 = load i32, ptr %i.bq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i996) #8, !srcloc !19
  %i.br = icmp ult i32 %.0.copyload.i995, %.0.copyload.i996
  br i1 %i.br, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bs = add i32 %.0.copyload.i995, 8
  %.val900 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bt = getelementptr inbounds nuw i8, ptr %.val900, i64 %i.bn
  store i32 %i.bs, ptr %i.bt, align 1
  %i.bu = zext i32 %.0.copyload.i995 to i64
  %.val968 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bv = getelementptr inbounds nuw i8, ptr %.val968, i64 %i.bu
  store i64 -281474976710656, ptr %i.bv, align 1
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bw = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i994, i64 noundef -281474976710656) #8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0847 = phi i32 [ %.0.copyload.i995, %bb.i ], [ %i.bw, %bb.j ] ; 7 uses
  %.val946 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bx = getelementptr inbounds nuw i8, ptr %.val946, i64 %i.i
  %.0.copyload.i997 = load i32, ptr %i.bx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i997) #8, !srcloc !19
  %i.by = zext i32 %.0.copyload.i997 to i64       ; 2 uses
  %i.bz = add nuw nsw i64 %i.by, 164              ; 2 uses
  %.val945 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ca = getelementptr inbounds nuw i8, ptr %.val945, i64 %i.bz
  %.0.copyload.i998 = load i32, ptr %i.ca, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i998) #8, !srcloc !19
  %.val944 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cb = getelementptr inbounds nuw i8, ptr %.val944, i64 %i.by
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 168
  %.0.copyload.i999 = load i32, ptr %i.cc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i999) #8, !srcloc !19
  %i.cd = icmp ult i32 %.0.copyload.i998, %.0.copyload.i999
  br i1 %i.cd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ce = add i32 %.0.copyload.i998, 8
  %.val899 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cf = getelementptr inbounds nuw i8, ptr %.val899, i64 %i.bz
  store i32 %i.ce, ptr %i.cf, align 1
  %i.cg = zext i32 %.0.copyload.i998 to i64
  %.val967 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ch = getelementptr inbounds nuw i8, ptr %.val967, i64 %i.cg
  store i64 -1688849860263936, ptr %i.ch, align 1
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ci = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i997, i64 noundef -1688849860263936) #8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0845 = phi i32 [ %.0.copyload.i998, %bb.l ], [ %i.ci, %bb.m ] ; 5 uses
  %.val943 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cj = getelementptr inbounds nuw i8, ptr %.val943, i64 %i.i
  %.0.copyload.i1000 = load i32, ptr %i.cj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1000) #8, !srcloc !19
  %i.ck = zext i32 %.0.copyload.i1000 to i64      ; 2 uses
  %i.cl = add nuw nsw i64 %i.ck, 164              ; 2 uses
  %.val942 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cm = getelementptr inbounds nuw i8, ptr %.val942, i64 %i.cl
  %.0.copyload.i1001 = load i32, ptr %i.cm, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1001) #8, !srcloc !19
  %.val941 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cn = getelementptr inbounds nuw i8, ptr %.val941, i64 %i.ck
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 168
  %.0.copyload.i1002 = load i32, ptr %i.co, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1002) #8, !srcloc !19
  %i.cp = icmp ult i32 %.0.copyload.i1001, %.0.copyload.i1002
  br i1 %i.cp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cq = add i32 %.0.copyload.i1001, 8
  %.val898 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cr = getelementptr inbounds nuw i8, ptr %.val898, i64 %i.cl
  store i32 %i.cq, ptr %i.cr, align 1
  %i.cs = zext i32 %.0.copyload.i1001 to i64
  %.val966 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ct = getelementptr inbounds nuw i8, ptr %.val966, i64 %i.cs
  store i64 -1688849860263936, ptr %i.ct, align 1
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.cu = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1000, i64 noundef -1688849860263936) #8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0843 = phi i32 [ %.0.copyload.i1001, %bb.o ], [ %i.cu, %bb.p ] ; 2 uses
  %.val940 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cv = getelementptr inbounds nuw i8, ptr %.val940, i64 %i.i
  %.0.copyload.i1003 = load i32, ptr %i.cv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1003) #8, !srcloc !19
  %i.cw = zext i32 %.0.copyload.i1003 to i64      ; 2 uses
  %i.cx = add nuw nsw i64 %i.cw, 164              ; 2 uses
  %.val939 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cy = getelementptr inbounds nuw i8, ptr %.val939, i64 %i.cx
  %.0.copyload.i1004 = load i32, ptr %i.cy, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1004) #8, !srcloc !19
  %.val938 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cz = getelementptr inbounds nuw i8, ptr %.val938, i64 %i.cw
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 168
  %.0.copyload.i1005 = load i32, ptr %i.da, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1005) #8, !srcloc !19
  %i.db = icmp ult i32 %.0.copyload.i1004, %.0.copyload.i1005
  br i1 %i.db, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dc = add i32 %.0.copyload.i1004, 8
  %.val897 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dd = getelementptr inbounds nuw i8, ptr %.val897, i64 %i.cx
  store i32 %i.dc, ptr %i.dd, align 1
  %i.de = zext i32 %.0.copyload.i1004 to i64
  %.val965 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.df = getelementptr inbounds nuw i8, ptr %.val965, i64 %i.de
  store i64 -1266636858327041, ptr %i.df, align 1
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.dg = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1003, i64 noundef -1266636858327041) #8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0848 = phi i32 [ %.0.copyload.i1004, %bb.r ], [ %i.dg, %bb.s ]
  %.val896 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dh = getelementptr inbounds nuw i8, ptr %.val896, i64 %i.e
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 84
  store i32 %.0848, ptr %i.di, align 1
  br i1 %.not, label %.loopexit1043, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.val937 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dj = getelementptr inbounds nuw i8, ptr %.val937, i64 %i.z
  %.0.copyload.i1006 = load i32, ptr %i.dj, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1006) #8, !srcloc !19
  %.val936 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dk = getelementptr inbounds nuw i8, ptr %.val936, i64 %i.u
  %.0.copyload.i1007 = load i32, ptr %i.dk, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1007) #8, !srcloc !19
  %i.dl = shl i32 %.0.copyload.i1007, 2           ; 3 uses
  %i.dm = add i32 %i.b, -224                      ; 3 uses
  %i.dn = add nuw nsw i64 %i.e, 64                ; 2 uses
  %i.do = add nuw nsw i64 %i.e, 72                ; 2 uses
  %i.dp = zext i32 %.0847 to i64                  ; 2 uses
  %i.dq = add nuw nsw i64 %i.e, 60                ; 3 uses
  %i.dr = add i32 %i.b, -264
  %i.ds = add nuw nsw i64 %i.e, 48                ; 3 uses
  %i.dt = zext i32 %.0845 to i64
  %i.du = add i32 %i.b, -244
  %i.dv = add i32 %i.b, -204
  %i.dw = add i32 %i.b, -240
  %i.dx = add i32 %i.b, -272
  %i.dy = zext i32 %.0843 to i64
  %i.dz = add i32 %i.b, -260
  %i.ea = add i32 %i.b, -276
  %5 = zext i32 %.0.copyload.i987 to i64
  br label %bb.v

bb.v:                                             ; preds = %.loopexit, %bb.u
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit ], [ 1, %bb.u ] ; 2 uses
  %6 = trunc nuw i64 %indvars.iv to i32
  %i.eb = shl i32 %6, 3
  %i.ec = sub i32 %i.ag, %i.eb                    ; 2 uses
  %i.ed = zext i32 %i.ec to i64
  %.val976 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ee = getelementptr inbounds nuw i8, ptr %.val976, i64 %i.ed
  %.0.copyload.i1008 = load i64, ptr %i.ee, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1008) #8, !srcloc !20
  %i.ef = ashr i64 %.0.copyload.i1008, 47
  %i.eg = and i64 %i.ef, 4294967294
  %.not863 = icmp eq i64 %i.eg, 4294967284
  br i1 %.not863, label %bb.ba, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoObject0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.dm, i32 noundef %3, i32 noundef %i.ec) #8
  %.val935 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eh = getelementptr inbounds nuw i8, ptr %.val935, i64 %i.dn
  %.0.copyload.i1009 = load i32, ptr %i.eh, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1009) #8, !srcloc !19
  %.val895 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ei = getelementptr inbounds nuw i8, ptr %.val895, i64 %i.ak
  store i32 %.0.copyload.i1009, ptr %i.ei, align 1
  %.val975 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ej = getelementptr inbounds nuw i8, ptr %.val975, i64 %i.do
  %.0.copyload.i1010 = load i64, ptr %i.ej, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1010) #8, !srcloc !20
  %.val964 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ek = getelementptr inbounds nuw i8, ptr %.val964, i64 %i.ao
  store i64 %.0.copyload.i1010, ptr %i.ek, align 1
  %.not864 = icmp eq i32 %.0.copyload.i1009, 0
  br i1 %.not864, label %bb.bb, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.el = and i64 %.0.copyload.i1010, 4294967295  ; 2 uses
  %i.em = or disjoint i64 %i.el, -281474976710656
  %.val963 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.en = getelementptr inbounds nuw i8, ptr %.val963, i64 %i.dp
  store i64 %i.em, ptr %i.en, align 1
  %.val981 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eo = getelementptr inbounds nuw i8, ptr %.val981, i64 %i.el
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %.0.copyload.i1011 = load i8, ptr %i.ep, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1011) #8, !srcloc !21
  %.val894 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eq = getelementptr inbounds nuw i8, ptr %.val894, i64 %i.dq
  store i32 3, ptr %i.eq, align 1
  %i.er = lshr i8 %.0.copyload.i1011, 5
  %i.es = or i8 %i.er, 3
  %.val982 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.et = getelementptr inbounds nuw i8, ptr %.val982, i64 %i.dq
  store i8 %i.es, ptr %i.et, align 1
  %.val934 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eu = getelementptr inbounds nuw i8, ptr %.val934, i64 %i.dq
  %.0.copyload.i1012 = load i32, ptr %i.eu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1012) #8, !srcloc !19
  %.val893 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ev = getelementptr inbounds nuw i8, ptr %.val893, i64 %i.e
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  store i32 %.0.copyload.i1012, ptr %i.ew, align 1
  %i.ex = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AgetOwnPropertyKeys0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AOwnKeysFlags0x29(ptr noundef nonnull %0, i32 noundef %.0847, i32 noundef %3, i32 noundef %i.dr) #8 ; 2 uses
  %i.ey = icmp eq i32 %i.ex, -1
  br i1 %i.ey, label %bb.bb, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.val962 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ez = getelementptr inbounds nuw i8, ptr %.val962, i64 %i.ds
  store i64 -4294967296, ptr %i.ez, align 1
  %i.fa = zext i32 %i.ex to i64                   ; 2 uses
  %.val933 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fb = getelementptr inbounds nuw i8, ptr %.val933, i64 %i.fa
  %.0.copyload.i1013 = load i32, ptr %i.fb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1013) #8, !srcloc !19
  %i.fc = zext i32 %.0.copyload.i1013 to i64
  %.val932 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fd = getelementptr inbounds nuw i8, ptr %.val932, i64 %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %.0.copyload.i1014 = load i32, ptr %i.fe, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1014) #8, !srcloc !19
  %.not865 = icmp eq i32 %.0.copyload.i1014, 0
  %.val931 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %.not865, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ff = getelementptr inbounds nuw i8, ptr %.val931, i64 %i.q
  %.0.copyload.i1015 = load i32, ptr %i.ff, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1015) #8, !srcloc !19
  br label %.loopexit

bb.aa:                                            ; preds = %bb.y
  %i.fg = getelementptr inbounds nuw i8, ptr %.val931, i64 %i.u
  %.0.copyload.i1016 = load i32, ptr %i.fg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1016) #8, !srcloc !19
  %.val929 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fh = getelementptr inbounds nuw i8, ptr %.val929, i64 %i.z
  %.0.copyload.i1017 = load i32, ptr %i.fh, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1017) #8, !srcloc !19
  %i.fi = shl i32 %.0.copyload.i1016, 2           ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.az, %bb.aa
  %.1 = phi i32 [ 0, %bb.aa ], [ %i.jf, %bb.az ]  ; 4 uses
  %.val928 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fj = getelementptr inbounds nuw i8, ptr %.val928, i64 %i.fa
  %.0.copyload.i1018 = load i32, ptr %i.fj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1018) #8, !srcloc !19
  %i.fk = zext i32 %.0.copyload.i1018 to i64      ; 3 uses
  %.val927 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fl = getelementptr inbounds nuw i8, ptr %.val927, i64 %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 20
  %.0.copyload.i1019 = load i32, ptr %i.fm, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1019) #8, !srcloc !19
  %i.fn = icmp ult i32 %.1, %.0.copyload.i1019
  br i1 %i.fn, label %bb.ao, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.val926 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fo = getelementptr inbounds nuw i8, ptr %.val926, i64 %i.fk
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %.0.copyload.i1020 = load i32, ptr %i.fp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1020) #8, !srcloc !19
  %.not866 = icmp ugt i32 %.0.copyload.i1020, %.1
  br i1 %.not866, label %bb.ad, label %bb.ao

bb.ad:                                            ; preds = %bb.ac
  %.val925 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fq = getelementptr inbounds nuw i8, ptr %.val925, i64 %i.fk
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 28
  %.0.copyload.i1021 = load i32, ptr %i.fr, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1021) #8, !srcloc !19
  %i.fs = sub i32 %.1, %.0.copyload.i1019         ; 4 uses
  %i.ft = icmp ult i32 %i.fs, 4096
  br i1 %i.ft, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fu = shl nuw nsw i32 %i.fs, 2
  %i.fv = add i32 %.0.copyload.i1021, %i.fu
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.fw = add i32 %i.fs, -4096
  %i.fx = lshr i32 %i.fw, 8
  %i.fy = and i32 %i.fx, 16777212
  %i.fz = add nuw nsw i32 %i.fy, 16392
  %i.ga = add i32 %i.fz, %.0.copyload.i1021
  %i.gb = zext i32 %i.ga to i64
  %.val924 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gc = getelementptr inbounds nuw i8, ptr %.val924, i64 %i.gb
  %.0.copyload.i1022 = load i32, ptr %i.gc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1022) #8, !srcloc !19
  %i.gd = shl i32 %i.fs, 2
  %i.ge = and i32 %i.gd, 4092
  %i.gf = add i32 %.0.copyload.i1022, %i.ge
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.0.in = phi i32 [ %i.fv, %bb.ae ], [ %i.gf, %bb.af ]
  %.0 = add i32 %.0.in, 8
  %i.gg = zext i32 %.0 to i64
  %.val923 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gh = getelementptr inbounds nuw i8, ptr %.val923, i64 %i.gg
  %.0.copyload.i1023 = load i32, ptr %i.gh, align 1 ; 9 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1023) #8, !srcloc !19
  %i.gi = and i32 %.0.copyload.i1023, 15
  switch i32 %i.gi, label %bb.ah [
    i32 1, label %bb.ai
    i32 2, label %bb.aj
    i32 3, label %bb.ak
    i32 4, label %bb.al
    i32 5, label %bb.am
    i32 6, label %bb.an
    i32 7, label %bb.ao
    i32 15, label %bb.ap
    i32 9, label %bb.ai
    i32 10, label %bb.aj
    i32 11, label %bb.ak
    i32 12, label %bb.al
    i32 13, label %bb.am
    i32 14, label %bb.aq
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.gj = zext i32 %.0.copyload.i1023 to i64
  %i.gk = or disjoint i64 %i.gj, -281474976710656
  br label %bb.aq

bb.ai:                                            ; preds = %bb.ag, %bb.ag
  %i.gl = and i32 %.0.copyload.i1023, -8
  %i.gm = zext i32 %i.gl to i64
  %i.gn = or disjoint i64 %i.gm, -562949953421312
  br label %bb.aq

bb.aj:                                            ; preds = %bb.ag, %bb.ag
  %i.go = and i32 %.0.copyload.i1023, -8
  %i.gp = zext i32 %i.go to i64
  %i.gq = or disjoint i64 %i.gp, -844424930131968
  br label %bb.aq

bb.ak:                                            ; preds = %bb.ag, %bb.ag
  %i.gr = and i32 %.0.copyload.i1023, -8
  %i.gs = zext i32 %i.gr to i64
  %.val985 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gt = getelementptr inbounds nuw i8, ptr %.val985, i64 %i.gs
end_hunk_7
begin_hunk_8_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AobjectAssign0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a

bb.an:                                            ; preds = %bb.ag
  %i.he = icmp ugt i32 %.0.copyload.i1023, 15
  %i.hf = zext i1 %i.he to i64
  %i.hg = or disjoint i64 %i.hf, -1407374883553280
  br label %bb.aq

bb.ao:                                            ; preds = %bb.ag, %bb.ac, %bb.ab
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ag
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ag, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah
  %.0841 = phi i64 [ -1970324836974592, %bb.ao ], [ %i.gk, %bb.ah ], [ %i.hg, %bb.an ], [ -1548112371908608, %bb.ap ], [ %i.gn, %bb.ai ], [ %i.gq, %bb.aj ], [ %i.gx, %bb.ak ], [ %i.ha, %bb.al ], [ %i.hd, %bb.am ], [ -1688849860263936, %bb.ag ]
  %.val961 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hh = getelementptr inbounds nuw i8, ptr %.val961, i64 %i.dt
  store i64 %.0841, ptr %i.hh, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AgetOwnComputedDescriptor0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AMutableHandle0x3Chermes0x3A0x3Avm0x3A0x3ASymbolID0x3E0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AComputedPropertyDescriptor0x260x29(ptr noundef nonnull %0, i32 noundef %i.du, i32 noundef %.0847, i32 noundef %3, i32 noundef %.0845, i32 noundef %i.dv, i32 noundef %i.dw) #8
  %.val984 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hi = getelementptr inbounds nuw i8, ptr %.val984, i64 %i.e
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 44
  %.0.copyload.i1025 = load i16, ptr %i.hj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i1025) #8, !srcloc !24
  %i.hk = zext i16 %.0.copyload.i1025 to i32      ; 2 uses
  %i.hl = and i32 %i.hk, 255
  %.not867 = icmp eq i32 %i.hl, 0
  br i1 %.not867, label %bb.ay, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hm = and i32 %i.hk, 256
  %.not868 = icmp eq i32 %i.hm, 0
  br i1 %.not868, label %bb.az, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.val980 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hn = getelementptr inbounds nuw i8, ptr %.val980, i64 %i.ds
  %.0.copyload.i1026 = load i8, ptr %i.hn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1026) #8, !srcloc !21
  %i.ho = and i8 %.0.copyload.i1026, 2
  %.not869 = icmp eq i8 %i.ho, 0
  br i1 %.not869, label %bb.az, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.val922 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hp = getelementptr inbounds nuw i8, ptr %.val922, i64 %i.dp
  %.0.copyload.i1027 = load i32, ptr %i.hp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1027) #8, !srcloc !19
  %i.hq = zext i32 %.0.copyload.i1027 to i64
  %.val979 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hr = getelementptr inbounds nuw i8, ptr %.val979, i64 %i.hq
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  %.0.copyload.i1028 = load i8, ptr %i.hs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1028) #8, !srcloc !21
  %.not870 = icmp sgt i8 %.0.copyload.i1028, -1
  br i1 %.not870, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AgetComputedWithReceiver_RJS0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.dm, i32 noundef %.0847, i32 noundef %3, i32 noundef %.0845, i32 noundef %.0847) #8
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  %.val974 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ht = getelementptr inbounds nuw i8, ptr %.val974, i64 %i.ds
  %.0.copyload.i1029 = load i64, ptr %i.ht, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1029) #8, !srcloc !20
  %.val960 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hu = getelementptr inbounds nuw i8, ptr %.val960, i64 %i.e
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 32
  store i64 %.0.copyload.i1029, ptr %i.hv, align 1
  %.val959 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hw = getelementptr inbounds nuw i8, ptr %.val959, i64 %i.e
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  store i64 %.0.copyload.i1029, ptr %i.hx, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AgetComputedPropertyValue_RJS0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AMutableHandle0x3Chermes0x3A0x3Avm0x3A0x3ASymbolID0x3E0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AComputedPropertyDescriptor0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.dm, i32 noundef %.0847, i32 noundef %3, i32 noundef %.0847, i32 noundef %i.dx, i32 noundef %.0845) #8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.val921 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hy = getelementptr inbounds nuw i8, ptr %.val921, i64 %i.dn
  %.0.copyload.i1030 = load i32, ptr %i.hy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1030) #8, !srcloc !19
  %.not871 = icmp eq i32 %.0.copyload.i1030, 0
  br i1 %.not871, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %.val973 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hz = getelementptr inbounds nuw i8, ptr %.val973, i64 %i.do
  %.0.copyload.i1031 = load i64, ptr %i.hz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1031) #8, !srcloc !20
  %.val958 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ia = getelementptr inbounds nuw i8, ptr %.val958, i64 %i.dy
  store i64 %.0.copyload.i1031, ptr %i.ia, align 1
  %.val892 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ib = getelementptr inbounds nuw i8, ptr %.val892, i64 %i.e
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 12
  store i32 1, ptr %i.ic, align 1
  %.val891 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.id = getelementptr inbounds nuw i8, ptr %.val891, i64 %i.e
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 284
  store i32 1, ptr %i.ie, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AputComputedWithReceiver_RJS0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APropOpFlags0x29(ptr noundef nonnull %0, i32 noundef %i.dz, i32 noundef %.0844, i32 noundef %3, i32 noundef %.0845, i32 noundef %.0843, i32 noundef %.0844, i32 noundef %i.ea) #8
  %.val978 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.if = getelementptr inbounds nuw i8, ptr %.val978, i64 %i.e
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 28
  %.0.copyload.i1032 = load i8, ptr %i.ig, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1032) #8, !srcloc !21
  %.not872 = icmp eq i8 %.0.copyload.i1032, 0
  br i1 %.not872, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.aq
  %i.ih = zext i32 %1 to i64
  %.val890 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ii = getelementptr inbounds nuw i8, ptr %.val890, i64 %i.ih
  store i32 0, ptr %i.ii, align 1
  %.val920 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ij = getelementptr inbounds nuw i8, ptr %.val920, i64 %i.q
  %.0.copyload.i1033 = load i32, ptr %i.ij, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1033) #8, !srcloc !19
  %i.ik = add i32 %.0.copyload.i1033, %i.fi
  %i.il = zext i32 %i.ik to i64
  %.val919 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.im = getelementptr inbounds nuw i8, ptr %.val919, i64 %i.il
  %.0.copyload.i1034 = load i32, ptr %i.im, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1034) #8, !srcloc !19
  %.val889 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.in = getelementptr inbounds nuw i8, ptr %.val889, i64 %i.z
  store i32 %.0.copyload.i1017, ptr %i.in, align 1
  %i.io = add i32 %.0.copyload.i1034, 128
  %.val888 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ip = getelementptr inbounds nuw i8, ptr %.val888, i64 %i.x
  store i32 %i.io, ptr %i.ip, align 1
  %i.iq = add i32 %.0.copyload.i1033, %i.dl
  %i.ir = zext i32 %i.iq to i64
  %.val918 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.is = getelementptr inbounds nuw i8, ptr %.val918, i64 %i.ir
  %.0.copyload.i1035 = load i32, ptr %i.is, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1035) #8, !srcloc !19
  %.val887 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.it = getelementptr inbounds nuw i8, ptr %.val887, i64 %i.u
  store i32 %.0.copyload.i1007, ptr %i.it, align 1
  %.val886 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iu = getelementptr inbounds nuw i8, ptr %.val886, i64 %i.z
  store i32 %.0.copyload.i1006, ptr %i.iu, align 1
  %i.iv = add i32 %.0.copyload.i1035, 128
  %.val885 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iw = getelementptr inbounds nuw i8, ptr %.val885, i64 %i.x
  store i32 %i.iv, ptr %i.iw, align 1
  br label %bb.bc

bb.az:                                            ; preds = %bb.ax, %bb.as, %bb.ar
  %.val917 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ix = getelementptr inbounds nuw i8, ptr %.val917, i64 %i.q
  %.0.copyload.i1036 = load i32, ptr %i.ix, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1036) #8, !srcloc !19
  %i.iy = add i32 %.0.copyload.i1036, %i.fi
  %i.iz = zext i32 %i.iy to i64
  %.val916 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ja = getelementptr inbounds nuw i8, ptr %.val916, i64 %i.iz
  %.0.copyload.i1037 = load i32, ptr %i.ja, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1037) #8, !srcloc !19
  %.val884 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jb = getelementptr inbounds nuw i8, ptr %.val884, i64 %i.u
  store i32 %.0.copyload.i1016, ptr %i.jb, align 1
  %.val883 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jc = getelementptr inbounds nuw i8, ptr %.val883, i64 %i.z
  store i32 %.0.copyload.i1017, ptr %i.jc, align 1
  %i.jd = add i32 %.0.copyload.i1037, 128
  %.val882 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.je = getelementptr inbounds nuw i8, ptr %.val882, i64 %i.x
  store i32 %i.jd, ptr %i.je, align 1
  %i.jf = add nuw i32 %.1, 1                      ; 2 uses
  %.not873 = icmp eq i32 %i.jf, %.0.copyload.i1014
  br i1 %.not873, label %.loopexit, label %bb.ab

bb.ba:                                            ; preds = %bb.v
  %.val915 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jg = getelementptr inbounds nuw i8, ptr %.val915, i64 %i.q
  %.0.copyload.i1038 = load i32, ptr %i.jg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1038) #8, !srcloc !19
  br label %.loopexit

.loopexit:                                        ; preds = %bb.az, %bb.ba, %bb.z
  %.0846 = phi i32 [ %.0.copyload.i1015, %bb.z ], [ %.0.copyload.i1038, %bb.ba ], [ %.0.copyload.i1036, %bb.az ]
  %i.jh = add i32 %.0846, %i.dl
  %i.ji = zext i32 %i.jh to i64
  %.val914 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jj = getelementptr inbounds nuw i8, ptr %.val914, i64 %i.ji
  %.0.copyload.i1039 = load i32, ptr %i.jj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1039) #8, !srcloc !19
  %.val881 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jk = getelementptr inbounds nuw i8, ptr %.val881, i64 %i.u
  store i32 %.0.copyload.i1007, ptr %i.jk, align 1
  %.val880 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jl = getelementptr inbounds nuw i8, ptr %.val880, i64 %i.z
  store i32 %.0.copyload.i1006, ptr %i.jl, align 1
  %i.jm = add i32 %.0.copyload.i1039, 128
  %.val879 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jn = getelementptr inbounds nuw i8, ptr %.val879, i64 %i.x
  store i32 %i.jm, ptr %i.jn, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not874 = icmp eq i64 %indvars.iv.next, %5
  br i1 %.not874, label %.loopexit1043, label %bb.v

.loopexit1043:                                    ; preds = %.loopexit, %bb.t
  %i.jo = zext i32 %.0844 to i64
  %.val972 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jp = getelementptr inbounds nuw i8, ptr %.val972, i64 %i.jo
  %.0.copyload.i1040 = load i64, ptr %i.jp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1040) #8, !srcloc !20
  %i.jq = zext i32 %1 to i64                      ; 2 uses
  %.val957 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jr = getelementptr inbounds nuw i8, ptr %.val957, i64 %i.jq
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  store i64 %.0.copyload.i1040, ptr %i.js, align 1
  %.val878 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jt = getelementptr inbounds nuw i8, ptr %.val878, i64 %i.jq
  store i32 1, ptr %i.jt, align 1
  br label %bb.bc

bb.bb:                                            ; preds = %bb.x, %bb.w
  %i.ju = zext i32 %1 to i64
  %.val877 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jv = getelementptr inbounds nuw i8, ptr %.val877, i64 %i.ju
  store i32 0, ptr %i.jv, align 1
  %.val913 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jw = getelementptr inbounds nuw i8, ptr %.val913, i64 %i.q
  %.0.copyload.i1041 = load i32, ptr %i.jw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1041) #8, !srcloc !19
  %i.jx = add i32 %.0.copyload.i1041, %i.dl
  %i.jy = zext i32 %i.jx to i64
  %.val912 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jz = getelementptr inbounds nuw i8, ptr %.val912, i64 %i.jy
  %.0.copyload.i1042 = load i32, ptr %i.jz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1042) #8, !srcloc !19
  %.val876 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ka = getelementptr inbounds nuw i8, ptr %.val876, i64 %i.u
  store i32 %.0.copyload.i1007, ptr %i.ka, align 1
  %.val875 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kb = getelementptr inbounds nuw i8, ptr %.val875, i64 %i.z
  store i32 %.0.copyload.i1006, ptr %i.kb, align 1
  %i.kc = add i32 %.0.copyload.i1042, 128
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kd = getelementptr inbounds nuw i8, ptr %.val, i64 %i.x
  store i32 %i.kc, ptr %i.kd, align 1
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.loopexit1043, %bb.ay, %bb.g, %bb.b
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A0x7EGCScope0x280x29(ptr noundef nonnull %0, i32 noundef %i.ab) #8
  store i32 %i.b, ptr %i.a, align 8, !tbaa !7
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AnumberPrototypeValueOf0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 3 uses
  %i.c = add i32 %i.b, -48                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 13 uses
  %i.e = zext i32 %4 to i64
  %.val95 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val95, i64 %i.e
  %.0.copyload.i = load i32, ptr %i.f, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !19
  %i.g = zext i32 %.0.copyload.i to i64
  %.val99 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val99, i64 %i.g
  %.0.copyload.i102 = load i64, ptr %i.h, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i102) #8, !srcloc !20
  %i.i = icmp ult i64 %.0.copyload.i102, -1970324836974592
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = zext i32 %1 to i64                       ; 2 uses
  %.val98 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %.val98, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %.0.copyload.i102, ptr %i.l, align 1
  %.val94 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %.val94, i64 %i.j
  store i32 1, ptr %i.m, align 1
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.n = icmp samesign ugt i64 %.0.copyload.i102, -844424930131969
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = and i64 %.0.copyload.i102, 4294967295    ; 2 uses
  %.val100 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %.val100, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 3
  %.0.copyload.i103 = load i8, ptr %i.q, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i103) #8, !srcloc !21
  %i.r = icmp eq i8 %.0.copyload.i103, 56
  br i1 %i.r, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = zext i32 %i.c to i64                     ; 4 uses
  %.val93 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %.val93, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store i32 0, ptr %i.u, align 1
  %.val97 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %.val97, i64 %i.s
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store i64 227633266689, ptr %i.w, align 1
  %.val92 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %.val92, i64 %i.s
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i32 3, ptr %i.y, align 1
  %.val91 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %.val91, i64 %i.s
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i32 39344, ptr %i.aa, align 1
  %i.ab = add i32 %i.b, -40
  %i.ac = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseTypeError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %i.ab) #8
  %i.ad = zext i32 %1 to i64
  %.val90 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %.val90, i64 %i.ad
  store i32 %i.ac, ptr %i.ae, align 1
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %.val101 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %.val101, i64 %i.o
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %.0.copyload.i104 = load double, ptr %i.ag, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i104) #8, !srcloc !37
  %i.ah = zext i32 %1 to i64                      ; 2 uses
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ah
  store i32 1, ptr %i.ai, align 1
  %i.aj = bitcast double %.0.copyload.i104 to i64
  %i.ak = fcmp uno double %.0.copyload.i104, 0.000000e+00
  %i.al = select i1 %i.ak, i64 9221120237041090560, i64 %i.aj
  %.val96 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %.val96, i64 %i.ah
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %i.al, ptr %i.an, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.b
  store i32 %i.b, ptr %i.a, align 8, !tbaa !7
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AnumberPrototypeToString0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 5 uses
  %i.c = add i32 %i.b, -64                        ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 145 uses
  %i.e = zext i32 %4 to i64                       ; 2 uses
  %.val1355 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val1355, i64 %i.e
  %.0.copyload.i = load i32, ptr %i.f, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !19
  %i.g = zext i32 %.0.copyload.i to i64
  %.val1382 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val1382, i64 %i.g
  %.0.copyload.i1423 = load i64, ptr %i.h, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1423) #8, !srcloc !20
  %i.i = icmp ult i64 %.0.copyload.i1423, -1970324836974592
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = bitcast i64 %.0.copyload.i1423 to double
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.k = icmp samesign ugt i64 %.0.copyload.i1423, -844424930131969
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = and i64 %.0.copyload.i1423, 4294967295   ; 2 uses
  %.val1397 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %.val1397, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 3
  %.0.copyload.i1424 = load i8, ptr %i.n, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1424) #8, !srcloc !21
  %i.o = icmp eq i8 %.0.copyload.i1424, 56
  br i1 %i.o, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = zext i32 %i.c to i64                     ; 4 uses
  %.val1304 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %.val1304, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  store i32 0, ptr %i.r, align 1
  %.val1376 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %.val1376, i64 %i.p
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  store i64 231928233985, ptr %i.t, align 1
  %.val1303 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %.val1303, i64 %i.p
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store i32 3, ptr %i.v, align 1
end_hunk_8
begin_hunk_9_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AhermesBuiltinGetTemplateObject0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1203) #8, !srcloc !20
  %i.eb = and i64 %.0.copyload.i1203, 1
  %.not1045 = icmp eq i64 %i.eb, 0                ; 2 uses
  br i1 %.not1045, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.loopexit1234
  %i.ec = and i32 %.0.copyload.i, 1
  %.not1046 = icmp eq i32 %i.ec, 0
  br i1 %.not1046, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.val1100 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ed = getelementptr inbounds nuw i8, ptr %.val1100, i64 %i.aq
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 96
  store i32 0, ptr %i.ee, align 1
  %.val1166 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ef = getelementptr inbounds nuw i8, ptr %.val1166, i64 %i.aq
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 88
  store i64 240518168577, ptr %i.eg, align 1
  %.val1099 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eh = getelementptr inbounds nuw i8, ptr %.val1099, i64 %i.aq
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 72
  store i32 3, ptr %i.ei, align 1
  %.val1098 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ej = getelementptr inbounds nuw i8, ptr %.val1098, i64 %i.aq
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 64
  store i32 60668, ptr %i.ek, align 1
  %i.el = add i32 %i.b, -224
  %i.em = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseTypeError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %i.el) #8
  %i.en = zext i32 %1 to i64
  %.val1097 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eo = getelementptr inbounds nuw i8, ptr %.val1097, i64 %i.en
  store i32 %i.em, ptr %i.eo, align 1
  br label %bb.ay

bb.o:                                             ; preds = %.loopexit1234
  %i.ep = add i32 %.0.copyload.i, -2
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  %i.eq = lshr exact i32 %.0.copyload.i, 1
  %i.er = add nsw i32 %i.eq, -1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.01015 = phi i32 [ %i.er, %bb.p ], [ %i.ep, %bb.o ] ; 5 uses
  %i.es = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSArray0x3A0x3Acreate0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20int0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %.01015, i32 noundef 0) #8 ; 5 uses
  %i.et = icmp eq i32 %i.es, -1
  br i1 %i.et, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.eu = zext i32 %1 to i64
  %.val1096 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ev = getelementptr inbounds nuw i8, ptr %.val1096, i64 %i.eu
  store i32 0, ptr %i.ev, align 1
  br label %bb.ay

bb.s:                                             ; preds = %bb.q
  %i.ew = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSArray0x3A0x3Acreate0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20int0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %.01015, i32 noundef 0) #8 ; 5 uses
  %i.ex = icmp eq i32 %i.ew, -1
  br i1 %i.ex, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ey = zext i32 %1 to i64
  %.val1095 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ez = getelementptr inbounds nuw i8, ptr %.val1095, i64 %i.ey
  store i32 0, ptr %i.ez, align 1
  br label %bb.ay

bb.u:                                             ; preds = %bb.s
  %.val1146 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fa = getelementptr inbounds nuw i8, ptr %.val1146, i64 %i.bf
  %.0.copyload.i1204 = load i32, ptr %i.fa, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1204) #8, !srcloc !19
  %i.fb = zext i32 %.0.copyload.i1204 to i64      ; 2 uses
  %i.fc = add nuw nsw i64 %i.fb, 164              ; 2 uses
  %.val1145 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fd = getelementptr inbounds nuw i8, ptr %.val1145, i64 %i.fc
  %.0.copyload.i1205 = load i32, ptr %i.fd, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1205) #8, !srcloc !19
  %.val1144 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fe = getelementptr inbounds nuw i8, ptr %.val1144, i64 %i.fb
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 168
  %.0.copyload.i1206 = load i32, ptr %i.ff, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1206) #8, !srcloc !19
  %i.fg = icmp ult i32 %.0.copyload.i1205, %.0.copyload.i1206
  br i1 %i.fg, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fh = add i32 %.0.copyload.i1205, 8
  %.val1094 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fi = getelementptr inbounds nuw i8, ptr %.val1094, i64 %i.fc
  store i32 %i.fh, ptr %i.fi, align 1
  %i.fj = zext i32 %.0.copyload.i1205 to i64
  %.val1165 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fk = getelementptr inbounds nuw i8, ptr %.val1165, i64 %i.fj
  store i64 -1688849860263936, ptr %i.fk, align 1
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.fl = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1204, i64 noundef -1688849860263936) #8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.01017 = phi i32 [ %.0.copyload.i1205, %bb.v ], [ %i.fl, %bb.w ] ; 3 uses
  %.val1143 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fm = getelementptr inbounds nuw i8, ptr %.val1143, i64 %i.bf
  %.0.copyload.i1207 = load i32, ptr %i.fm, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1207) #8, !srcloc !19
  %i.fn = zext i32 %.0.copyload.i1207 to i64      ; 2 uses
  %i.fo = add nuw nsw i64 %i.fn, 164              ; 2 uses
  %.val1142 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fp = getelementptr inbounds nuw i8, ptr %.val1142, i64 %i.fo
  %.0.copyload.i1208 = load i32, ptr %i.fp, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1208) #8, !srcloc !19
  %.val1141 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fq = getelementptr inbounds nuw i8, ptr %.val1141, i64 %i.fn
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 168
  %.0.copyload.i1209 = load i32, ptr %i.fr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1209) #8, !srcloc !19
  %i.fs = icmp ult i32 %.0.copyload.i1208, %.0.copyload.i1209
  br i1 %i.fs, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ft = add i32 %.0.copyload.i1208, 8
  %.val1093 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fu = getelementptr inbounds nuw i8, ptr %.val1093, i64 %i.fo
  store i32 %i.ft, ptr %i.fu, align 1
  %i.fv = zext i32 %.0.copyload.i1208 to i64
  %.val1164 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fw = getelementptr inbounds nuw i8, ptr %.val1164, i64 %i.fv
  store i64 -1688849860263936, ptr %i.fw, align 1
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.fx = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1207, i64 noundef -1688849860263936) #8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.11020 = phi i32 [ %.0.copyload.i1208, %bb.y ], [ %i.fx, %bb.z ] ; 2 uses
  %.val1140 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fy = getelementptr inbounds nuw i8, ptr %.val1140, i64 %i.bf
  %.0.copyload.i1210 = load i32, ptr %i.fy, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1210) #8, !srcloc !19
  %i.fz = zext i32 %.0.copyload.i1210 to i64      ; 2 uses
  %i.ga = add nuw nsw i64 %i.fz, 164              ; 2 uses
  %.val1139 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gb = getelementptr inbounds nuw i8, ptr %.val1139, i64 %i.ga
  %.0.copyload.i1211 = load i32, ptr %i.gb, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1211) #8, !srcloc !19
  %.val1138 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gc = getelementptr inbounds nuw i8, ptr %.val1138, i64 %i.fz
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 168
  %.0.copyload.i1212 = load i32, ptr %i.gd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1212) #8, !srcloc !19
  %i.ge = icmp ult i32 %.0.copyload.i1211, %.0.copyload.i1212
  br i1 %i.ge, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gf = add i32 %.0.copyload.i1211, 8
  %.val1092 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gg = getelementptr inbounds nuw i8, ptr %.val1092, i64 %i.ga
  store i32 %i.gf, ptr %i.gg, align 1
  %i.gh = zext i32 %.0.copyload.i1211 to i64
  %.val1163 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gi = getelementptr inbounds nuw i8, ptr %.val1163, i64 %i.gh
  store i64 -1688849860263936, ptr %i.gi, align 1
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.gj = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1210, i64 noundef -1688849860263936) #8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.11022 = phi i32 [ %.0.copyload.i1211, %bb.ab ], [ %i.gj, %bb.ac ] ; 2 uses
  %.not1047 = icmp eq i32 %.01015, 0
  br i1 %.not1047, label %.loopexit1232, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gk = add nuw i32 %.01015, 2
  %i.gl = select i1 %.not1045, i32 %i.gk, i32 2
  %.val1137 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gm = getelementptr inbounds nuw i8, ptr %.val1137, i64 %i.br
  %.0.copyload.i1213 = load i32, ptr %i.gm, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1213) #8, !srcloc !19
  %.val1136 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gn = getelementptr inbounds nuw i8, ptr %.val1136, i64 %i.bw
  %.0.copyload.i1214 = load i32, ptr %i.gn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1214) #8, !srcloc !19
  %i.go = zext i32 %.01017 to i64
  %i.gp = zext i32 %.11022 to i64
  %i.gq = add i32 %i.b, -224
  %i.gr = add i32 %i.b, -256
  %i.gs = add i32 %i.b, -260
  %i.gt = add i32 %.0.copyload.i1190, -24
  %i.gu = zext i32 %.11020 to i64
  %i.gv = add i32 %i.b, -4
  %i.gw = add i32 %i.b, -264
  %i.gx = add i32 %i.b, -268
  %i.gy = shl i32 %.0.copyload.i1213, 2
  %5 = zext i32 %.0.copyload.i to i64
  %i.gz = zext i32 %.01015 to i64
  br label %bb.af

bb.af:                                            ; preds = %bb.aj, %bb.ae
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.aj ], [ 0, %bb.ae ] ; 3 uses
  %indvars1243 = trunc nuw i64 %indvars.iv to i32 ; 3 uses
  %i.ha = uitofp i32 %indvars1243 to double
  %.val1188 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hb = getelementptr inbounds nuw i8, ptr %.val1188, i64 %i.go
  store double %i.ha, ptr %i.hb, align 1
  %i.hc = add i32 %i.gl, %indvars1243             ; 2 uses
  %i.hd = icmp ult i32 %i.hc, %.0.copyload.i
  br i1 %i.hd, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.he = shl i32 %i.hc, 3
  %i.hf = sub i32 %i.w, %i.he
  %i.hg = zext i32 %i.hf to i64
  %.val1176 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hh = getelementptr inbounds nuw i8, ptr %.val1176, i64 %i.hg
  %.0.copyload.i1215 = load i64, ptr %i.hh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1215) #8, !srcloc !20
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %.0 = phi i64 [ %.0.copyload.i1215, %bb.ag ], [ -1688849860263936, %bb.af ]
  %.val1162 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hi = getelementptr inbounds nuw i8, ptr %.val1162, i64 %i.gp
  store i64 %.0, ptr %i.hi, align 1
  %.val1091 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hj = getelementptr inbounds nuw i8, ptr %.val1091, i64 %i.aq
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 60
  store i32 313, ptr %i.hk, align 1
  %.val1090 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hl = getelementptr inbounds nuw i8, ptr %.val1090, i64 %i.aq
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 56
  store i32 0, ptr %i.hm, align 1
  %.val1089 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hn = getelementptr inbounds nuw i8, ptr %.val1089, i64 %i.aq
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 32
  store i32 313, ptr %i.ho, align 1
  %.val1088 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hp = getelementptr inbounds nuw i8, ptr %.val1088, i64 %i.aq
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 28
  store i32 0, ptr %i.hq, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AdefineOwnComputedPrimitive0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ADefinePropertyFlags0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APropOpFlags0x29(ptr noundef nonnull %0, i32 noundef %i.gq, i32 noundef %i.ew, i32 noundef %3, i32 noundef %.01017, i32 noundef %i.gr, i32 noundef %.11022, i32 noundef %i.gs) #8
  %6 = add nuw nsw i64 %indvars.iv, 2
  %i.hr = icmp samesign ult i64 %6, %5
  br i1 %i.hr, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.hs = shl i32 %indvars1243, 3
  %i.ht = sub i32 %i.gt, %i.hs
  %i.hu = zext i32 %i.ht to i64
  %.val1175 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hv = getelementptr inbounds nuw i8, ptr %.val1175, i64 %i.hu
  %.0.copyload.i1216 = load i64, ptr %i.hv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1216) #8, !srcloc !20
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %.1 = phi i64 [ %.0.copyload.i1216, %bb.ai ], [ -1688849860263936, %bb.ah ]
  %.val1161 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hw = getelementptr inbounds nuw i8, ptr %.val1161, i64 %i.gu
  store i64 %.1, ptr %i.hw, align 1
  %.val1087 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hx = getelementptr inbounds nuw i8, ptr %.val1087, i64 %i.aq
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 52
  store i32 313, ptr %i.hy, align 1
  %.val1086 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hz = getelementptr inbounds nuw i8, ptr %.val1086, i64 %i.aq
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 48
  store i32 0, ptr %i.ia, align 1
  %.val1085 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ib = getelementptr inbounds nuw i8, ptr %.val1085, i64 %i.aq
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 24
  store i32 313, ptr %i.ic, align 1
  %.val1084 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.id = getelementptr inbounds nuw i8, ptr %.val1084, i64 %i.aq
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 20
  store i32 0, ptr %i.ie, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AdefineOwnComputedPrimitive0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ADefinePropertyFlags0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APropOpFlags0x29(ptr noundef nonnull %0, i32 noundef %i.gv, i32 noundef %i.es, i32 noundef %3, i32 noundef %.01017, i32 noundef %i.gw, i32 noundef %.11020, i32 noundef %i.gx) #8
  %.val1182 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.if = getelementptr inbounds nuw i8, ptr %.val1182, i64 %i.aq
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 284
  %.0.copyload.i1217 = load i16, ptr %i.ig, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i1217) #8, !srcloc !24
  %.val1186 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ih = getelementptr inbounds nuw i8, ptr %.val1186, i64 %i.aq
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 64
  store i16 %.0.copyload.i1217, ptr %i.ii, align 1
  %.val1135 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ij = getelementptr inbounds nuw i8, ptr %.val1135, i64 %i.bn
  %.0.copyload.i1218 = load i32, ptr %i.ij, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1218) #8, !srcloc !19
  %i.ik = add i32 %.0.copyload.i1218, %i.gy
  %i.il = zext i32 %i.ik to i64
  %.val1134 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.im = getelementptr inbounds nuw i8, ptr %.val1134, i64 %i.il
  %.0.copyload.i1219 = load i32, ptr %i.im, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1219) #8, !srcloc !19
  %.val1083 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.in = getelementptr inbounds nuw i8, ptr %.val1083, i64 %i.br
  store i32 %.0.copyload.i1213, ptr %i.in, align 1
  %.val1082 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.io = getelementptr inbounds nuw i8, ptr %.val1082, i64 %i.bw
  store i32 %.0.copyload.i1214, ptr %i.io, align 1
  %i.ip = add i32 %.0.copyload.i1219, 128
  %.val1081 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iq = getelementptr inbounds nuw i8, ptr %.val1081, i64 %i.bu
  store i32 %i.ip, ptr %i.iq, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not1049 = icmp eq i64 %indvars.iv.next, %i.gz
  br i1 %.not1049, label %.loopexit1232, label %bb.af

.loopexit1232:                                    ; preds = %bb.aj, %bb.ad
  %.val1080 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ir = getelementptr inbounds nuw i8, ptr %.val1080, i64 %i.aq
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  store i32 48, ptr %i.is, align 1
  %.val1079 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.it = getelementptr inbounds nuw i8, ptr %.val1079, i64 %i.aq
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 12
  store i32 1, ptr %i.iu, align 1
  %i.iv = add nuw nsw i64 %i.aq, 64               ; 5 uses
  %.val1078 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iw = getelementptr inbounds nuw i8, ptr %.val1078, i64 %i.iv
  store i32 48, ptr %i.iw, align 1
  %i.ix = add nuw nsw i64 %i.aq, 284              ; 2 uses
  %.val1077 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iy = getelementptr inbounds nuw i8, ptr %.val1077, i64 %i.ix
  store i32 1, ptr %i.iy, align 1
  %i.iz = add i32 %i.b, -244
  %i.ja = add i32 %i.b, -272
  %i.jb = add i32 %i.b, -276
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AdefineOwnPropertyInternal0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x2C0x20hermes0x3A0x3Avm0x3A0x3ADefinePropertyFlags0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APropOpFlags0x29(ptr noundef nonnull %0, i32 noundef %i.iz, i32 noundef %i.es, i32 noundef %3, i32 noundef 85, i32 noundef %i.ja, i32 noundef 70392, i32 noundef %i.jb) #8
  %i.jc = add nuw nsw i64 %i.aq, 44               ; 2 uses
  %.val1181 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jd = getelementptr inbounds nuw i8, ptr %.val1181, i64 %i.jc
  %.0.copyload.i1220 = load i16, ptr %i.jd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i1220) #8, !srcloc !24
  %i.je = zext i16 %.0.copyload.i1220 to i32      ; 2 uses
  %i.jf = and i32 %i.je, 255
  %.not1050 = icmp eq i32 %i.jf, 0
  br i1 %.not1050, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.loopexit1232
  %i.jg = zext i32 %1 to i64
  %.val1076 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jh = getelementptr inbounds nuw i8, ptr %.val1076, i64 %i.jg
  store i32 0, ptr %i.jh, align 1
  br label %bb.ay

bb.al:                                            ; preds = %.loopexit1232
  %i.ji = and i32 %i.je, 256
  %.not1051 = icmp eq i32 %i.ji, 0
  br i1 %.not1051, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %.val1075 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jj = getelementptr inbounds nuw i8, ptr %.val1075, i64 %i.aq
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 96
  store i32 0, ptr %i.jk, align 1
  %.val1160 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jl = getelementptr inbounds nuw i8, ptr %.val1160, i64 %i.aq
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 88
  store i64 257698037761, ptr %i.jm, align 1
  %.val1074 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jn = getelementptr inbounds nuw i8, ptr %.val1074, i64 %i.aq
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 72
  store i32 3, ptr %i.jo, align 1
  %.val1073 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jp = getelementptr inbounds nuw i8, ptr %.val1073, i64 %i.iv
  store i32 60250, ptr %i.jp, align 1
  %i.jq = add i32 %i.b, -224
  %i.jr = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseTypeError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %i.jq) #8
  %i.js = zext i32 %1 to i64
  %.val1072 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jt = getelementptr inbounds nuw i8, ptr %.val1072, i64 %i.js
  store i32 %i.jr, ptr %i.jt, align 1
  br label %bb.ay

bb.an:                                            ; preds = %bb.al
  %i.ju = zext i32 %i.es to i64
  %.val1133 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jv = getelementptr inbounds nuw i8, ptr %.val1133, i64 %i.ju
  %.0.copyload.i1221 = load i32, ptr %i.jv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1221) #8, !srcloc !19
  %i.jw = zext i32 %.0.copyload.i1221 to i64
  %i.jx = add nuw nsw i64 %i.jw, 4                ; 2 uses
  %.val1132 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jy = getelementptr inbounds nuw i8, ptr %.val1132, i64 %i.jx
  %.0.copyload.i1222 = load i32, ptr %i.jy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1222) #8, !srcloc !19
  %i.jz = or i32 %.0.copyload.i1222, 1
  %.val1071 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ka = getelementptr inbounds nuw i8, ptr %.val1071, i64 %i.jx
  store i32 %i.jz, ptr %i.ka, align 1
  %.val1185 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kb = getelementptr inbounds nuw i8, ptr %.val1185, i64 %i.aq
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 10
  store i16 0, ptr %i.kc, align 1
  %.val1184 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kd = getelementptr inbounds nuw i8, ptr %.val1184, i64 %i.aq
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 42
  store i16 0, ptr %i.ke, align 1
  %i.kf = add i32 %i.b, -278
  %i.kg = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AdefineNewOwnProperty0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x2C0x20hermes0x3A0x3Avm0x3A0x3APropertyFlags0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.ew, i32 noundef %3, i32 noundef 92, i32 noundef %i.kf, i32 noundef %i.es) #8
  %.not1052 = icmp eq i32 %i.kg, 0
  br i1 %.not1052, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.kh = zext i32 %1 to i64
  %.val1070 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ki = getelementptr inbounds nuw i8, ptr %.val1070, i64 %i.kh
  store i32 0, ptr %i.ki, align 1
  br label %bb.ay

bb.ap:                                            ; preds = %bb.an
  %.val1069 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kj = getelementptr inbounds nuw i8, ptr %.val1069, i64 %i.aq
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 4
  store i32 48, ptr %i.kk, align 1
  %.val1068 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kl = getelementptr inbounds nuw i8, ptr %.val1068, i64 %i.aq
  store i32 1, ptr %i.kl, align 1
  %.val1067 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.km = getelementptr inbounds nuw i8, ptr %.val1067, i64 %i.iv
  store i32 48, ptr %i.km, align 1
  %.val1066 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kn = getelementptr inbounds nuw i8, ptr %.val1066, i64 %i.ix
  store i32 1, ptr %i.kn, align 1
  %i.ko = add i32 %i.b, -252
  %i.kp = add i32 %i.b, -284
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AdefineOwnPropertyInternal0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x2C0x20hermes0x3A0x3Avm0x3A0x3ADefinePropertyFlags0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APropOpFlags0x29(ptr noundef nonnull %0, i32 noundef %i.ko, i32 noundef %i.ew, i32 noundef %3, i32 noundef 85, i32 noundef %i.kp, i32 noundef 70392, i32 noundef %i.c) #8
  %.val1180 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kq = getelementptr inbounds nuw i8, ptr %.val1180, i64 %i.aq
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 36
  %.0.copyload.i1223 = load i16, ptr %i.kr, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i1223) #8, !srcloc !24
  %i.ks = zext i16 %.0.copyload.i1223 to i32      ; 2 uses
  %.val1183 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kt = getelementptr inbounds nuw i8, ptr %.val1183, i64 %i.jc
  store i16 %.0.copyload.i1223, ptr %i.kt, align 1
  %i.ku = and i32 %i.ks, 255
  %.not1053 = icmp eq i32 %i.ku, 0
  br i1 %.not1053, label %bb.aq, label %bb.ar

end_hunk_9
