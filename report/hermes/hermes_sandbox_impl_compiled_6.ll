Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_6?download=true
inline.NumInlined: 8639
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 67
loop-unroll.NumUnrolled: 67
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtypedArrayPrototypeFill0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
  br label %w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoIntegerOrInfinity0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29.exit908

w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoIntegerOrInfinity0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29.exit908: ; preds = %bb.n, %wasm_trunc.exit.i899
  %.0.i904 = phi i32 [ 1, %wasm_trunc.exit.i899 ], [ 0, %bb.n ]
  %.val41.i905 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bv = getelementptr inbounds nuw i8, ptr %.val41.i905, i64 %i.t
  store i32 %.0.i904, ptr %i.bv, align 1
  store i32 %i.bk, ptr %i.a, align 8, !tbaa !20
  %.val833 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bw = getelementptr inbounds nuw i8, ptr %.val833, i64 %i.t
  %.0.copyload.i909 = load i32, ptr %i.bw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i909) #8, !srcloc !14
  %.not783 = icmp eq i32 %.0.copyload.i909, 0
  br i1 %.not783, label %bb.bc, label %bb.o

bb.o:                                             ; preds = %w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoIntegerOrInfinity0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29.exit908
  %.val873 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bx = getelementptr inbounds nuw i8, ptr %.val873, i64 %i.u
  %.0.copyload.i910 = load double, ptr %i.bx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i910) #8, !srcloc !35
  %.val868 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.by = getelementptr inbounds nuw i8, ptr %.val868, i64 %i.bi
  %.0.copyload.i911 = load i64, ptr %i.by, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i911) #8, !srcloc !33
  %.mask784 = and i64 %.0.copyload.i911, -140737488355328
  %i.bz = icmp eq i64 %.mask784, -1688849860263936
  %i.ca = select i1 %i.bz, double %i.be, double %.0.copyload.i910
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %.0756 = phi double [ %i.ca, %bb.o ], [ %i.be, %bb.m ] ; 4 uses
  %i.cb = add nuw nsw i64 %i.t, 56                ; 2 uses
  %.val880 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.cc = getelementptr inbounds nuw i8, ptr %.val880, i64 %i.cb
  store double %i.be, ptr %i.cc, align 1
  %.val879 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.cd = getelementptr inbounds nuw i8, ptr %.val879, i64 %i.t
  store double %.0.copyload.i894, ptr %i.cd, align 1
  %i.ce = add nuw nsw i64 %i.t, 48                ; 2 uses
  %.val863 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.cf = getelementptr inbounds nuw i8, ptr %.val863, i64 %i.ce
  store i64 0, ptr %i.cf, align 1
  %i.cg = fcmp olt double %.0.copyload.i894, 0.000000e+00
  br i1 %i.cg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ch = fadd double %.0.copyload.i894, %i.be    ; 2 uses
  %.val878 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ci = getelementptr inbounds nuw i8, ptr %.val878, i64 %i.t
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  store double %i.ch, ptr %i.cj, align 1
  %i.ck = fcmp olt double %i.ch, 0.000000e+00
  %.v = select i1 %i.ck, i32 -16, i32 -24
  %i.cl = add i32 %.v, %i.b
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.cm = add i32 %i.b, -8
  %i.cn = fcmp ogt double %.0.copyload.i894, %i.be
  %i.co = select i1 %i.cn, i32 %i.cm, i32 %i.c
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0754 = phi i32 [ %i.cl, %bb.q ], [ %i.co, %bb.r ]
  %i.cp = zext i32 %.0754 to i64
  %.val872 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.cq = getelementptr inbounds nuw i8, ptr %.val872, i64 %i.cp
  %.0.copyload.i912 = load double, ptr %i.cq, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i912) #8, !srcloc !35
  %.val877 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.cr = getelementptr inbounds nuw i8, ptr %.val877, i64 %i.cb
  store double %i.be, ptr %i.cr, align 1
  %.val876 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.cs = getelementptr inbounds nuw i8, ptr %.val876, i64 %i.t
  store double %.0756, ptr %i.cs, align 1
  %.val862 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ct = getelementptr inbounds nuw i8, ptr %.val862, i64 %i.ce
  store i64 0, ptr %i.ct, align 1
  %i.cu = fcmp olt double %.0756, 0.000000e+00
  %i.cv = tail call noundef double @llvm.fabs.f64(double %.0.copyload.i912)
  %i.cw = fcmp olt double %i.cv, f0x43E0000000000000
  br i1 %i.cw, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.cx = fcmp ult double %.0.copyload.i912, f0xC3E0000000000000
  %i.cy = fcmp uge double %.0.copyload.i912, f0x43E0000000000000
  %.not787 = or i1 %i.cx, %i.cy
  br i1 %.not787, label %bb.u, label %bb.v, !prof !26

bb.u:                                             ; preds = %bb.t
  tail call void @wasm_rt_trap(i32 noundef 2) #9
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.cz = fptosi double %.0.copyload.i912 to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.s, %bb.v
  %.0 = phi i64 [ %i.cz, %bb.v ], [ -9223372036854775808, %bb.s ] ; 2 uses
  br i1 %i.cu, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.da = fadd double %.0756, %i.be               ; 2 uses
  %.val875 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.db = getelementptr inbounds nuw i8, ptr %.val875, i64 %i.t
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 40
  store double %i.da, ptr %i.dc, align 1
  %i.dd = fcmp olt double %i.da, 0.000000e+00
  %.v788 = select i1 %i.dd, i32 -16, i32 -24
  %i.de = add i32 %.v788, %i.b
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.df = add i32 %i.b, -8
  %i.dg = fcmp ogt double %.0756, %i.be
  %i.dh = select i1 %i.dg, i32 %i.df, i32 %i.c
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.1755 = phi i32 [ %i.de, %bb.x ], [ %i.dh, %bb.y ]
  %i.di = zext i32 %.1755 to i64
  %.val871 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.dj = getelementptr inbounds nuw i8, ptr %.val871, i64 %i.di
  %.0.copyload.i913 = load double, ptr %i.dj, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i913) #8, !srcloc !35
  %i.dk = tail call noundef double @llvm.fabs.f64(double %.0.copyload.i913)
  %i.dl = fcmp olt double %i.dk, f0x43E0000000000000
  br i1 %i.dl, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.dm = fcmp ult double %.0.copyload.i913, f0xC3E0000000000000
  %i.dn = fcmp uge double %.0.copyload.i913, f0x43E0000000000000
  %.not791 = or i1 %i.dm, %i.dn
  br i1 %.not791, label %bb.ab, label %bb.ac, !prof !26

bb.ab:                                            ; preds = %bb.aa
  tail call void @wasm_rt_trap(i32 noundef 2) #9
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.do = fptosi double %.0.copyload.i913 to i64
  br label %bb.ad

bb.ad:                                            ; preds = %bb.z, %bb.ac
  %.1 = phi i64 [ %i.do, %bb.ac ], [ -9223372036854775808, %bb.z ] ; 5 uses
  %.val867 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.dp = getelementptr inbounds nuw i8, ptr %.val867, i64 %i.j
  %.0.copyload.i914 = load i64, ptr %i.dp, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i914) #8, !srcloc !33
  %i.dq = and i64 %.0.copyload.i914, 4294967295   ; 2 uses
  %.val832 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.dr = getelementptr inbounds nuw i8, ptr %.val832, i64 %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 20
  %.0.copyload.i915 = load i32, ptr %i.ds, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i915) #8, !srcloc !14
  %.not792 = icmp eq i32 %.0.copyload.i915, 0
  br i1 %.not792, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dt = zext i32 %.0.copyload.i915 to i64
  %.val812 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.du = getelementptr inbounds nuw i8, ptr %.val812, i64 %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 29
  %.0.copyload.i916 = load i8, ptr %i.dv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i916) #8, !srcloc !13
  %.not793 = icmp eq i8 %.0.copyload.i916, 0
  br i1 %.not793, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.val853 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.dw = getelementptr inbounds nuw i8, ptr %.val853, i64 %i.t
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  store i32 0, ptr %i.dx, align 1
  %.val861 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.dy = getelementptr inbounds nuw i8, ptr %.val861, i64 %i.t
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  store i64 141733920769, ptr %i.dz, align 1
  %.val852 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ea = getelementptr inbounds nuw i8, ptr %.val852, i64 %i.u
  store i32 3, ptr %i.ea, align 1
  %.val851 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.eb = getelementptr inbounds nuw i8, ptr %.val851, i64 %i.t
  store i32 17809, ptr %i.eb, align 1
  %i.ec = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseTypeError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %i.c) #8
  %i.ed = zext i32 %1 to i64
  br label %bb.bf

bb.ag:                                            ; preds = %bb.ae
  %.not794 = icmp sgt i64 %.1, %.0
  %.val831 = load ptr, ptr %i.d, align 8, !tbaa !12 ; 2 uses
  br i1 %.not794, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ee = zext i32 %1 to i64                      ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.val831, i64 %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store i64 %.0.copyload.i914, ptr %i.eg, align 1
  br label %bb.bf

bb.ai:                                            ; preds = %bb.ag
  %i.eh = trunc i64 %.0 to i32                    ; 11 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.val831, i64 %i.dq
  %.0.copyload.i917 = load i32, ptr %i.ei, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i917) #8, !srcloc !14
  %i.ej = lshr i32 %.0.copyload.i917, 22
  %i.ek = and i32 %i.ej, 1020
  %.val830 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr %.val830, i64 %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 289808
  %.0.copyload.i918 = load i32, ptr %i.en, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i918) #8, !srcloc !14
  %i.eo = zext i32 %.0.copyload.i918 to i64
  %.val829 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ep = getelementptr inbounds nuw i8, ptr %.val829, i64 %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 44
  %.0.copyload.i919 = load i32, ptr %i.eq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i919) #8, !srcloc !14
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.es = load i32, ptr %i.er, align 4, !tbaa !21
  %i.et = icmp ult i32 %.0.copyload.i919, %i.es
  br i1 %i.et, label %bb.aj, label %.critedge, !prof !22

bb.aj:                                            ; preds = %bb.ai
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !23
  %i.ew = zext i32 %.0.copyload.i919 to i64
  %i.ex = getelementptr inbounds nuw [24 x i8], ptr %i.ev, i64 %i.ew ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !25 ; 2 uses
  %.not795 = icmp eq ptr %i.ez, null
  br i1 %.not795, label %.critedge, label %bb.ak, !prof !26

bb.ak:                                            ; preds = %bb.aj
  %i.fa = load ptr, ptr @w2c_hermes_t8, align 8, !tbaa !27 ; 4 uses
  %i.fb = load ptr, ptr %i.ex, align 8, !tbaa !28 ; 4 uses
  %i.fc = icmp eq ptr %i.fa, %i.fb
  br i1 %i.fc, label %func_types_eq.exit.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fd = icmp ne ptr %i.fa, null
  %i.fe = icmp ne ptr %i.fb, null
  %or.cond.i = and i1 %i.fd, %i.fe
  br i1 %or.cond.i, label %func_types_eq.exit, label %.critedge, !prof !29

func_types_eq.exit:                               ; preds = %bb.al
  %i.ff = load i128, ptr %i.fa, align 1
  %i.fg = load i128, ptr %i.fb, align 1
  %i.fh = xor i128 %i.ff, %i.fg
  %i.fi = getelementptr i8, ptr %i.fa, i64 16
  %i.fj = getelementptr i8, ptr %i.fb, i64 16
  %i.fk = load i128, ptr %i.fi, align 1
  %i.fl = load i128, ptr %i.fj, align 1
  %i.fm = xor i128 %i.fk, %i.fl
  %i.fn = or i128 %i.fh, %i.fm
  %i.fo = icmp ne i128 %i.fn, 0
  %i.fp = zext i1 %i.fo to i32
  %.not.i920 = icmp eq i32 %i.fp, 0
  br i1 %.not.i920, label %func_types_eq.exit.thread, label %.critedge, !prof !32

.critedge:                                        ; preds = %bb.al, %bb.aj, %bb.ai, %func_types_eq.exit
  tail call void @wasm_rt_trap(i32 noundef 6) #9
  unreachable

func_types_eq.exit.thread:                        ; preds = %bb.ak, %func_types_eq.exit
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !31
  tail call void %i.ez(ptr noundef %i.fr, i32 noundef %i.c, i32 noundef %.0.copyload.i, i32 noundef %3, i32 noundef %i.eh, i32 noundef %.0757) #8
  %.val811 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fs = getelementptr inbounds nuw i8, ptr %.val811, i64 %i.t
  %.0.copyload.i921 = load i8, ptr %i.fs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i921) #8, !srcloc !13
  %.not796 = icmp eq i8 %.0.copyload.i921, 0
  br i1 %.not796, label %bb.am, label %bb.an

bb.am:                                            ; preds = %func_types_eq.exit.thread
  %i.ft = zext i32 %1 to i64
  br label %bb.bf

bb.an:                                            ; preds = %func_types_eq.exit.thread
  %.val828 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fu = getelementptr inbounds nuw i8, ptr %.val828, i64 %i.j
  %.0.copyload.i922 = load i32, ptr %i.fu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i922) #8, !srcloc !14
  %i.fv = zext i32 %.0.copyload.i922 to i64
  %.val810 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fw = getelementptr inbounds nuw i8, ptr %.val810, i64 %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 3
  %.0.copyload.i923 = load i8, ptr %i.fx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i923) #8, !srcloc !13
  %i.fy = zext i8 %.0.copyload.i923 to i64
  %.val809 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fz = getelementptr inbounds nuw i8, ptr %.val809, i64 %i.fy
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 230541
  %.0.copyload.i924 = load i8, ptr %i.ga, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i924) #8, !srcloc !13
  %.val808 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gb = getelementptr inbounds nuw i8, ptr %.val808, i64 %i.y
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 5308
  %.0.copyload.i925 = load i8, ptr %i.gc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i925) #8, !srcloc !13
  %.not797 = icmp eq i8 %.0.copyload.i925, 0
  br i1 %.not797, label %bb.bd, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gd = add i32 %3, 1284
  %i.ge = zext i32 %i.gd to i64
  %.val827 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gf = getelementptr inbounds nuw i8, ptr %.val827, i64 %i.ge
  %.0.copyload.i926 = load i32, ptr %i.gf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i926) #8, !srcloc !14
  %.val826 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gg = getelementptr inbounds nuw i8, ptr %.val826, i64 %i.j
  %.0.copyload.i927 = load i32, ptr %i.gg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i927) #8, !srcloc !14
  %i.gh = zext i32 %.0.copyload.i927 to i64       ; 2 uses
  %.val825 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gi = getelementptr inbounds nuw i8, ptr %.val825, i64 %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 20
  %.0.copyload.i928 = load i32, ptr %i.gj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i928) #8, !srcloc !14
  %i.gk = zext i32 %.0.copyload.i928 to i64
  %.val824 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gl = getelementptr inbounds nuw i8, ptr %.val824, i64 %i.gk
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 20
  %.0.copyload.i929 = load i32, ptr %i.gm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i929) #8, !srcloc !14
  %i.gn = xor i32 %.0.copyload.i929, %.0.copyload.i926
  %.val823 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.go = getelementptr inbounds nuw i8, ptr %.val823, i64 %i.gh
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 28
  %.0.copyload.i930 = load i32, ptr %i.gp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i930) #8, !srcloc !14
  %i.gq = add i32 %.0.copyload.i930, %i.gn        ; 4 uses
  switch i8 %.0.copyload.i924, label %bb.ap [
    i8 2, label %bb.at
    i8 3, label %bb.be
    i8 4, label %bb.aw
    i8 5, label %bb.be
    i8 6, label %bb.be
    i8 7, label %bb.be
    i8 8, label %bb.az
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.gr = trunc i64 %.1 to i32                    ; 3 uses
  %i.gs = add i32 %i.gq, %i.eh                    ; 4 uses
  %i.gt = sub i32 %i.gr, %i.eh                    ; 3 uses
  %i.gu = icmp slt i32 %i.gt, 1
  br i1 %i.gu, label %.loopexit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gv = and i32 %i.gt, 7                        ; 3 uses
  %.not798 = icmp eq i32 %i.gv, 0
  br i1 %.not798, label %.loopexit946, label %.preheader945

.preheader945:                                    ; preds = %bb.aq
  %i.gw = zext i32 %i.gs to i64
  br label %bb.ar

bb.ar:                                            ; preds = %.preheader945, %bb.ar
  %.0763 = phi i32 [ %i.ha, %bb.ar ], [ %i.gs, %.preheader945 ] ; 2 uses
  %.1760 = phi i32 [ %i.hb, %bb.ar ], [ 0, %.preheader945 ]
  %.val807 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gx = getelementptr inbounds nuw i8, ptr %.val807, i64 %i.gw
  %.0.copyload.i931 = load i8, ptr %i.gx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i931) #8, !srcloc !13
  %i.gy = zext i32 %.0763 to i64
  %.val821 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gz = getelementptr inbounds nuw i8, ptr %.val821, i64 %i.gy
  store i8 %.0.copyload.i931, ptr %i.gz, align 1
  %i.ha = add i32 %.0763, 1                       ; 2 uses
  %i.hb = add nuw nsw i32 %.1760, 1               ; 2 uses
  %.not799 = icmp eq i32 %i.hb, %i.gv
  br i1 %.not799, label %.loopexit946.loopexit, label %bb.ar

.loopexit946.loopexit:                            ; preds = %bb.ar
  %5 = add i32 %i.gv, %i.eh
  %6 = sub i32 %i.gr, %5
  br label %.loopexit946

.loopexit946:                                     ; preds = %.loopexit946.loopexit, %bb.aq
  %.1764 = phi i32 [ %i.gs, %bb.aq ], [ %i.ha, %.loopexit946.loopexit ]
  %.2 = phi i32 [ %i.gt, %bb.aq ], [ %6, %.loopexit946.loopexit ]
  %i.hc = sub i32 %i.eh, %i.gr
  %i.hd = icmp ugt i32 %i.hc, -8
  br i1 %i.hd, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit946
  %i.he = zext i32 %i.gs to i64                   ; 8 uses
  br label %bb.as

bb.as:                                            ; preds = %.preheader, %bb.as
  %.2765 = phi i32 [ %i.id, %bb.as ], [ %.1764, %.preheader ] ; 2 uses
  %.3 = phi i32 [ %i.if, %bb.as ], [ %.2, %.preheader ] ; 2 uses
  %.val806 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hf = getelementptr inbounds nuw i8, ptr %.val806, i64 %i.he
  %.0.copyload.i932 = load i8, ptr %i.hf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i932) #8, !srcloc !13
  %i.hg = zext i32 %.2765 to i64                  ; 8 uses
  %.val820 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hh = getelementptr inbounds nuw i8, ptr %.val820, i64 %i.hg
  store i8 %.0.copyload.i932, ptr %i.hh, align 1
  %.val805 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hi = getelementptr inbounds nuw i8, ptr %.val805, i64 %i.he
  %.0.copyload.i933 = load i8, ptr %i.hi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i933) #8, !srcloc !13
  %.val819 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hj = getelementptr inbounds nuw i8, ptr %.val819, i64 %i.hg
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 1
  store i8 %.0.copyload.i933, ptr %i.hk, align 1
  %.val804 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hl = getelementptr inbounds nuw i8, ptr %.val804, i64 %i.he
  %.0.copyload.i934 = load i8, ptr %i.hl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i934) #8, !srcloc !13
  %.val818 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hm = getelementptr inbounds nuw i8, ptr %.val818, i64 %i.hg
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 2
  store i8 %.0.copyload.i934, ptr %i.hn, align 1
  %.val803 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ho = getelementptr inbounds nuw i8, ptr %.val803, i64 %i.he
  %.0.copyload.i935 = load i8, ptr %i.ho, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i935) #8, !srcloc !13
  %.val817 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hp = getelementptr inbounds nuw i8, ptr %.val817, i64 %i.hg
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 3
  store i8 %.0.copyload.i935, ptr %i.hq, align 1
  %.val802 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hr = getelementptr inbounds nuw i8, ptr %.val802, i64 %i.he
  %.0.copyload.i936 = load i8, ptr %i.hr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i936) #8, !srcloc !13
  %.val816 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hs = getelementptr inbounds nuw i8, ptr %.val816, i64 %i.hg
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 4
  store i8 %.0.copyload.i936, ptr %i.ht, align 1
  %.val801 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hu = getelementptr inbounds nuw i8, ptr %.val801, i64 %i.he
  %.0.copyload.i937 = load i8, ptr %i.hu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i937) #8, !srcloc !13
  %.val815 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hv = getelementptr inbounds nuw i8, ptr %.val815, i64 %i.hg
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 5
  store i8 %.0.copyload.i937, ptr %i.hw, align 1
  %.val800 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hx = getelementptr inbounds nuw i8, ptr %.val800, i64 %i.he
  %.0.copyload.i938 = load i8, ptr %i.hx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i938) #8, !srcloc !13
  %.val814 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hy = getelementptr inbounds nuw i8, ptr %.val814, i64 %i.hg
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 6
  store i8 %.0.copyload.i938, ptr %i.hz, align 1
  %.val = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ia = getelementptr inbounds nuw i8, ptr %.val, i64 %i.he
  %.0.copyload.i939 = load i8, ptr %i.ia, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i939) #8, !srcloc !13
  %.val813 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ib = getelementptr inbounds nuw i8, ptr %.val813, i64 %i.hg
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 7
  store i8 %.0.copyload.i939, ptr %i.ic, align 1
  %i.id = add i32 %.2765, 8
  %i.ie = add i32 %.3, -9
  %i.if = add i32 %.3, -8
  %i.ig = icmp ult i32 %i.ie, -2
  br i1 %i.ig, label %bb.as, label %.loopexit

bb.at:                                            ; preds = %bb.ao
  %i.ih = trunc i64 %.1 to i32
  %i.ii = sub i32 %i.ih, %i.eh                    ; 2 uses
  %i.ij = shl i32 %i.ii, 1
  %i.ik = icmp slt i32 %i.ij, 1
  br i1 %i.ik, label %.loopexit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.il = shl i32 %i.eh, 1
  %i.im = add i32 %i.gq, %i.il                    ; 2 uses
  %i.in = and i32 %i.ii, 2147483647
  %i.io = zext i32 %i.im to i64
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %bb.au
  %.3766 = phi i32 [ %i.in, %bb.au ], [ %i.iu, %bb.av ] ; 2 uses
  %.2761 = phi i32 [ %i.im, %bb.au ], [ %i.is, %bb.av ] ; 2 uses
  %.val882 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ip = getelementptr inbounds nuw i8, ptr %.val882, i64 %i.io
  %.0.copyload.i940 = load i16, ptr %i.ip, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i940) #8, !srcloc !37
  %i.iq = zext i32 %.2761 to i64
  %.val881 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ir = getelementptr inbounds nuw i8, ptr %.val881, i64 %i.iq
  store i16 %.0.copyload.i940, ptr %i.ir, align 1
  %i.is = add i32 %.2761, 2
  %i.it = icmp ugt i32 %.3766, 1
  %i.iu = add nsw i32 %.3766, -1
  br i1 %i.it, label %bb.av, label %.loopexit

bb.aw:                                            ; preds = %bb.ao
  %i.iv = trunc i64 %.1 to i32
  %i.iw = sub i32 %i.iv, %i.eh                    ; 2 uses
  %i.ix = shl i32 %i.iw, 2
  %i.iy = icmp slt i32 %i.ix, 1
  br i1 %i.iy, label %.loopexit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.iz = shl i32 %i.eh, 2
  %i.ja = add i32 %i.gq, %i.iz                    ; 2 uses
  %i.jb = and i32 %i.iw, 1073741823
  %i.jc = zext i32 %i.ja to i64
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %bb.ax
  %.4767 = phi i32 [ %i.jb, %bb.ax ], [ %i.ji, %bb.ay ] ; 2 uses
  %.3762 = phi i32 [ %i.ja, %bb.ax ], [ %i.jg, %bb.ay ] ; 2 uses
  %.val822 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.jd = getelementptr inbounds nuw i8, ptr %.val822, i64 %i.jc
  %.0.copyload.i941 = load i32, ptr %i.jd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i941) #8, !srcloc !14
  %i.je = zext i32 %.3762 to i64
  %.val847 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.jf = getelementptr inbounds nuw i8, ptr %.val847, i64 %i.je
  store i32 %.0.copyload.i941, ptr %i.jf, align 1
  %i.jg = add i32 %.3762, 4
  %i.jh = icmp ugt i32 %.4767, 1
  %i.ji = add nsw i32 %.4767, -1
  br i1 %i.jh, label %bb.ay, label %.loopexit

bb.az:                                            ; preds = %bb.ao
  %i.jj = trunc i64 %.1 to i32
  %i.jk = sub i32 %i.jj, %i.eh                    ; 2 uses
  %i.jl = shl i32 %i.jk, 3
  %i.jm = icmp slt i32 %i.jl, 1
  br i1 %i.jm, label %.loopexit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.jn = shl i32 %i.eh, 3
  %i.jo = add i32 %i.gq, %i.jn                    ; 2 uses
  %i.jp = and i32 %i.jk, 536870911
  %i.jq = zext i32 %i.jo to i64
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %bb.ba
  %.5 = phi i32 [ %i.jp, %bb.ba ], [ %i.jw, %bb.bb ] ; 2 uses
  %.4 = phi i32 [ %i.jo, %bb.ba ], [ %i.ju, %bb.bb ] ; 2 uses
  %.val866 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.jr = getelementptr inbounds nuw i8, ptr %.val866, i64 %i.jq
  %.0.copyload.i942 = load i64, ptr %i.jr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i942) #8, !srcloc !33
  %i.js = zext i32 %.4 to i64
  %.val859 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.jt = getelementptr inbounds nuw i8, ptr %.val859, i64 %i.js
  store i64 %.0.copyload.i942, ptr %i.jt, align 1
  %i.ju = add i32 %.4, 8
  %i.jv = icmp ugt i32 %.5, 1
  %i.jw = add nsw i32 %.5, -1
  br i1 %i.jv, label %bb.bb, label %.loopexit

.loopexit:                                        ; preds = %bb.bb, %bb.ay, %bb.av, %bb.as, %bb.az, %bb.aw, %bb.at, %.loopexit946, %bb.ap
  %.val865 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.jx = getelementptr inbounds nuw i8, ptr %.val865, i64 %i.j
  %.0.copyload.i943 = load i64, ptr %i.jx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i943) #8, !srcloc !33
  %i.jy = zext i32 %1 to i64                      ; 2 uses
  %.val858 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.jz = getelementptr inbounds nuw i8, ptr %.val858, i64 %i.jy
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  store i64 %.0.copyload.i943, ptr %i.ka, align 1
  br label %bb.bf

bb.bc:                                            ; preds = %w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoIntegerOrInfinity0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29.exit908
  %i.kb = zext i32 %1 to i64
  br label %bb.bf

bb.bd:                                            ; preds = %bb.an
  tail call void @w2c_hermes_hermes0x3A0x3Ahermes_fatal0x28char0x20const0x2A0x29(ptr noundef nonnull %0, i32 noundef 38573) #8
  br label %bb.be

bb.be:                                            ; preds = %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.bd
  tail call void @wasm_rt_trap(i32 noundef 5) #9
  unreachable

bb.bf:                                            ; preds = %bb.bc, %.loopexit, %bb.am, %bb.ah, %bb.af, %bb.l, %bb.g, %bb.b
  %.sink964 = phi i64 [ %i.kb, %bb.bc ], [ %i.jy, %.loopexit ], [ %i.ft, %bb.am ], [ %i.ee, %bb.ah ], [ %i.ed, %bb.af ], [ %i.bc, %bb.l ], [ %i.x, %bb.g ], [ %i.h, %bb.b ]
  %.sink = phi i32 [ 0, %bb.bc ], [ 1, %.loopexit ], [ 0, %bb.am ], [ 1, %bb.ah ], [ %i.ec, %bb.af ], [ 0, %bb.l ], [ 0, %bb.g ], [ 0, %bb.b ]
  %.val845 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.kc = getelementptr inbounds nuw i8, ptr %.val845, i64 %.sink964
end_hunk_0
