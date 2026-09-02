Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_5?download=true
inline.NumInlined: 16806
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AquickSort0x28hermes0x3A0x3Avm0x3A0x3ASortModel0x2A0x2C0x20unsigned0x20int0x2C0x20unsigned0x20int0x29:bb.a
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
  %i.ew = shl nuw nsw i32 %.3412, 2
  %i.ex = add i32 %.0.copyload.i467, %i.ew
  %i.ey = zext i32 %i.ex to i64
  %.val458 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.ez = getelementptr inbounds nuw i8, ptr %.val458, i64 %i.ey
  %.0.copyload.i468 = load i32, ptr %i.ez, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i468) #8, !srcloc !19
  %i.fa = shl nuw i32 %i.do, 2
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
  %i.gl = shl nuw nsw i32 %.3412, 2
  %i.gm = add i32 %.0.copyload.i476, %i.gl
  %i.gn = zext i32 %i.gm to i64                   ; 2 uses
  %.val453 = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.go = getelementptr inbounds nuw i8, ptr %.val453, i64 %i.gn
  %.0.copyload.i477 = load i32, ptr %i.go, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i477) #8, !srcloc !19
  %i.gp = shl nuw i32 %i.do, 2
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
  %i.gv = add i32 %.0404, 1                       ; 2 uses
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
end_hunk_0
