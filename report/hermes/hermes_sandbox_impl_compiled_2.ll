inline.NumInlined: 21302
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AtoString0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3APseudoHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x2C0x20unsigned0x20char0x29:bb.a
  %i.au = add nuw nsw i64 %i.u, 40                ; 2 uses
  %.val3018 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %.val3018, i64 %i.au
  store i32 %i.x, ptr %i.av, align 1
  %.val3056 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aw = getelementptr inbounds nuw i8, ptr %.val3056, i64 %i.au
  %.0.copyload.i3114 = load i64, ptr %i.aw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3114) #7, !srcloc !22
  %.val3089 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ax = getelementptr inbounds nuw i8, ptr %.val3089, i64 %i.u
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 %.0.copyload.i3114, ptr %i.ay, align 1
  %i.az = add i32 %i.r, -16
  %i.ba = shl i32 %i.z, 6
  %i.bb = add i32 %i.r, -56
  %i.bc = tail call i32 @w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3AAPInt0x28unsigned0x20int0x2C0x20llvh0x3A0x3AArrayRef0x3Cunsigned0x20long0x20long0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.az, i32 noundef %i.ba, i32 noundef %i.bb) #7 ; 3 uses
  %i.bd = icmp sgt i64 %.0.copyload.i3113, -1
  br i1 %i.bd, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.be = zext i32 %i.bc to i64                   ; 3 uses
  %.val2970 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %.val2970, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.0.copyload.i3115 = load i32, ptr %i.bg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3115) #7, !srcloc !19
  %i.bh = icmp ult i32 %.0.copyload.i3115, 65
  br i1 %i.bh, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.val3055 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %.val3055, i64 %i.be
  %.0.copyload.i3116 = load i64, ptr %i.bi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3116) #7, !srcloc !22
  %i.bj = xor i64 %.0.copyload.i3116, -1
  %i.bk = sub nsw i32 0, %.0.copyload.i3115
  %i.bl = and i32 %i.bk, 63
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = lshr i64 -1, %i.bm
  %i.bo = and i64 %i.bn, %i.bj
  %.val3088 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bp = getelementptr inbounds nuw i8, ptr %.val3088, i64 %i.be
  store i64 %i.bo, ptr %i.bp, align 1
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void @w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3AflipAllBitsSlowCase0x280x29(ptr noundef nonnull %0, i32 noundef %i.bc) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3Aoperator0x2B0x2B0x280x29(ptr noundef nonnull %0, i32 noundef %i.bc) #7
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.i, %bb.c
  %.not2908 = phi i1 [ true, %bb.c ], [ true, %bb.e ], [ false, %bb.i ]
  %i.bq = zext i32 %i.q to i64                    ; 5 uses
  %.val3087 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.br = getelementptr inbounds nuw i8, ptr %.val3087, i64 %i.bq
  store i64 0, ptr %i.br, align 1
  %.val3017 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bs = getelementptr inbounds nuw i8, ptr %.val3017, i64 %i.bq
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i32 0, ptr %i.bt, align 1
  %i.bu = icmp ult i32 %4, 4
  br i1 %i.bu, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = icmp ult i32 %4, 8
  br i1 %i.bv, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = icmp ult i32 %4, 16
  br i1 %i.bw, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bx = icmp ult i32 %4, 32
  %i.by = select i1 %i.bx, i32 4, i32 5
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.m
  %.02757 = phi i32 [ 1, %bb.j ], [ 2, %bb.k ], [ 3, %bb.l ], [ %i.by, %bb.m ]
  %i.bz = lshr i32 64, %.02757
  %i.ca = mul i32 %i.bz, %i.z
  %i.cb = add i32 %i.ca, 1
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3A0x3Areserve0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.q, i32 noundef %i.cb) #7
  %i.cc = zext i32 %4 to i64                      ; 9 uses
  %i.cd = add nuw nsw i64 %i.u, 24                ; 2 uses
  %i.ce = add nuw nsw i64 %i.u, 32                ; 2 uses
  %i.cf = add i32 %i.r, -40
  %i.cg = add i32 %i.r, -48                       ; 2 uses
  %i.ch = add i32 %i.r, -16
  %i.ci = zext i32 %i.ch to i64                   ; 8 uses
  %i.cj = add nuw nsw i64 %i.ci, 8                ; 4 uses
  %.not2856 = icmp eq i32 %4, 1
  %i.ck = zext i32 %i.cf to i64                   ; 23 uses
  %i.cl = add nuw nsw i64 %i.ck, 8                ; 15 uses
  %i.cm = zext i32 %i.cg to i64                   ; 7 uses
  %.not2864 = icmp eq i32 %i.cg, 0                ; 5 uses
  %i.cn = select i1 %.not2864, i32 6, i32 8
  %i.co = icmp eq i32 %4, 0                       ; 2 uses
  %i.cp = add nuw nsw i64 %i.u, 56                ; 4 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.n
  %.val3086 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cq = getelementptr inbounds nuw i8, ptr %.val3086, i64 %i.cd
  store i64 0, ptr %i.cq, align 1
  %.val3016 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cr = getelementptr inbounds nuw i8, ptr %.val3016, i64 %i.ce
  store i32 1, ptr %i.cr, align 1
  %i.cs = load i32, ptr %i.a, align 8, !tbaa !7   ; 2 uses
  %i.ct = add i32 %i.cs, -16                      ; 2 uses
  store i32 %i.ct, ptr %i.a, align 8, !tbaa !7
  %i.cu = zext i32 %i.ct to i64
  %i.cv = add nuw nsw i64 %i.cu, 8                ; 2 uses
  %.val3085 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cw = getelementptr inbounds nuw i8, ptr %.val3085, i64 %i.cv
  store i64 %i.cc, ptr %i.cw, align 1
  %.val2969 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cx = getelementptr inbounds nuw i8, ptr %.val2969, i64 %i.cj
  %.0.copyload.i3117 = load i32, ptr %i.cx, align 1 ; 18 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3117) #7, !srcloc !19
  %i.cy = icmp ult i32 %.0.copyload.i3117, 65
  br i1 %i.cy, label %bb.o, label %bb.u

bb.o:                                             ; preds = %.backedge
  %.val3054 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cz = getelementptr inbounds nuw i8, ptr %.val3054, i64 %i.ci
  %.0.copyload.i3118 = load i64, ptr %i.cz, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3118) #7, !srcloc !22
  br i1 %i.co, label %bb.p, label %bb.q, !prof !25

bb.p:                                             ; preds = %bb.o
  tail call void @wasm_rt_trap(i32 noundef 3) #8
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.da = udiv i64 %.0.copyload.i3118, %i.cc      ; 2 uses
  %i.db = mul i64 %i.da, %i.cc                    ; 0 uses
  %.recomposed = urem i64 %.0.copyload.i3118, %i.cc
  %.val3084 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dc = getelementptr inbounds nuw i8, ptr %.val3084, i64 %i.cm
  store i64 %.recomposed, ptr %i.dc, align 1
  %i.dd = sub nsw i32 0, %.0.copyload.i3117
  %i.de = and i32 %i.dd, 63
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = lshr i64 -1, %i.df
  %i.dh = and i64 %i.da, %i.dg                    ; 2 uses
  %i.di = trunc i64 %i.dh to i32
  %i.dj = lshr i64 %i.dh, 32
  %i.dk = trunc nuw i64 %i.dj to i32
  %.val2968 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dl = getelementptr inbounds nuw i8, ptr %.val2968, i64 %i.cl
  %.0.copyload.i3119 = load i32, ptr %i.dl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3119) #7, !srcloc !19
  %i.dm = icmp ult i32 %.0.copyload.i3119, 65
  br i1 %i.dm, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val2967 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dn = getelementptr inbounds nuw i8, ptr %.val2967, i64 %i.ck
  %.0.copyload.i3120 = load i32, ptr %i.dn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3120) #7, !srcloc !19
  %.not2902 = icmp eq i32 %.0.copyload.i3120, 0
  br i1 %.not2902, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i3120) #7
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.q, %bb.s
  %.val3015 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.do = getelementptr inbounds nuw i8, ptr %.val3015, i64 %i.cl
  store i32 %.0.copyload.i3117, ptr %i.do, align 1
  %.val3014 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dp = getelementptr inbounds nuw i8, ptr %.val3014, i64 %i.ck
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  store i32 %i.dk, ptr %i.dq, align 1
  %.val3013 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dr = getelementptr inbounds nuw i8, ptr %.val3013, i64 %i.ck
  store i32 %i.di, ptr %i.dr, align 1
  br label %bb.ei

bb.u:                                             ; preds = %.backedge
  %i.ds = zext i32 %.0.copyload.i3117 to i64
  %i.dt = add nuw nsw i64 %i.ds, 63               ; 2 uses
  %i.du = lshr i64 %i.dt, 6                       ; 5 uses
  %i.dv = trunc nuw nsw i64 %i.du to i32          ; 6 uses
  %i.dw = shl i32 %i.dv, 6                        ; 3 uses
  %.val2966 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dx = getelementptr inbounds nuw i8, ptr %.val2966, i64 %i.ci
  %.0.copyload.i3121 = load i32, ptr %i.dx, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3121) #7, !srcloc !19
  br label %bb.v

bb.v:                                             ; preds = %bb.x, %bb.u
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.x ], [ %i.du, %bb.u ] ; 2 uses
  %.02784 = phi i32 [ %i.ef, %bb.x ], [ 0, %bb.u ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32
  %i.dy = shl i32 %indvars, 3
  %i.dz = add i32 %i.dy, %.0.copyload.i3121
  %i.ea = zext i32 %i.dz to i64
  %.val3053 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eb = getelementptr inbounds nuw i8, ptr %.val3053, i64 %i.ea
  %.0.copyload.i3122 = load i64, ptr %i.eb, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3122) #7, !srcloc !22
  %.not2853 = icmp eq i64 %.0.copyload.i3122, 0
  br i1 %.not2853, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ec = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.copyload.i3122, i1 true)
  %i.ed = trunc nuw nsw i64 %i.ec to i32
  %i.ee = or disjoint i32 %.02784, %i.ed
  br label %.loopexit3237

bb.x:                                             ; preds = %bb.v
  %i.ef = add i32 %.02784, 64
  %i.eg = icmp ugt i64 %indvars.iv, 1
  br i1 %i.eg, label %bb.v, label %.loopexit3237

.loopexit3237:                                    ; preds = %bb.x, %bb.w
  %.02759 = phi i32 [ %i.ee, %bb.w ], [ %i.dw, %bb.x ]
  %i.eh = or i32 %.0.copyload.i3117, -64
  %i.ei = and i32 %.0.copyload.i3117, 63
  %.not2854 = icmp eq i32 %i.ei, 0
  %i.ej = select i1 %.not2854, i32 0, i32 %i.eh   ; 3 uses
  %i.ek = add i32 %i.ej, %.02759
  %i.el = sub i32 %.0.copyload.i3117, %i.ek
  %i.em = zext i32 %i.el to i64
  %i.en = add nuw nsw i64 %i.em, 63
  %i.eo = lshr i64 %i.en, 6                       ; 3 uses
  %i.ep = trunc nuw nsw i64 %i.eo to i32          ; 7 uses
  %.not2855 = icmp eq i64 %i.eo, 0
  br i1 %.not2855, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %.loopexit3237
  %i.eq = shl nuw nsw i32 %i.dv, 3                ; 3 uses
  %i.er = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.eq) #7
  %i.es = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.er, i32 noundef 0, i32 noundef %i.eq) #7 ; 3 uses
  %i.et = zext i32 %i.es to i64
  %.val3083 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eu = getelementptr inbounds nuw i8, ptr %.val3083, i64 %i.et
  store i64 0, ptr %i.eu, align 1
  %i.ev = add nsw i32 %i.eq, -8
  %i.ew = add i32 %i.ev, %i.es
  %i.ex = zext i32 %i.ew to i64                   ; 2 uses
  %.val3052 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ey = getelementptr inbounds nuw i8, ptr %.val3052, i64 %i.ex
  %.0.copyload.i3123 = load i64, ptr %i.ey, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3123) #7, !srcloc !22
  %i.ez = sub i32 0, %.0.copyload.i3117
  %i.fa = and i32 %i.ez, 63
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = lshr i64 -1, %i.fb
  %i.fd = and i64 %.0.copyload.i3123, %i.fc
  %.val3082 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fe = getelementptr inbounds nuw i8, ptr %.val3082, i64 %i.ex
  store i64 %i.fd, ptr %i.fe, align 1
  %.val2965 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ff = getelementptr inbounds nuw i8, ptr %.val2965, i64 %i.cl
  %.0.copyload.i3124 = load i32, ptr %i.ff, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3124) #7, !srcloc !19
  %i.fg = icmp ult i32 %.0.copyload.i3124, 65
  br i1 %i.fg, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.val2964 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fh = getelementptr inbounds nuw i8, ptr %.val2964, i64 %i.ck
  %.0.copyload.i3125 = load i32, ptr %i.fh, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3125) #7, !srcloc !19
  %.not2901 = icmp eq i32 %.0.copyload.i3125, 0
  br i1 %.not2901, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i3125) #7
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.y, %bb.aa
  %.val3012 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fi = getelementptr inbounds nuw i8, ptr %.val3012, i64 %i.cl
  store i32 %.0.copyload.i3117, ptr %i.fi, align 1
  %.val3011 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fj = getelementptr inbounds nuw i8, ptr %.val3011, i64 %i.ck
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  store i32 0, ptr %i.fk, align 1
  %.val3010 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fl = getelementptr inbounds nuw i8, ptr %.val3010, i64 %i.ck
  store i32 %i.es, ptr %i.fl, align 1
  %.val3081 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fm = getelementptr inbounds nuw i8, ptr %.val3081, i64 %i.cm
  store i64 0, ptr %i.fm, align 1
  br label %bb.ei

bb.ac:                                            ; preds = %.loopexit3237
  br i1 %.not2856, label %bb.do, label %.preheader3235

.preheader3235:                                   ; preds = %bb.ac, %bb.ae
  %indvars.iv3272 = phi i64 [ %indvars.iv.next3273, %bb.ae ], [ %i.du, %bb.ac ] ; 2 uses
  %.12785 = phi i32 [ %i.fu, %bb.ae ], [ 0, %bb.ac ] ; 2 uses
  %indvars.iv.next3273 = add nsw i64 %indvars.iv3272, -1 ; 2 uses
  %indvars3274 = trunc i64 %indvars.iv.next3273 to i32
  %i.fn = shl i32 %indvars3274, 3
  %i.fo = add i32 %i.fn, %.0.copyload.i3121
  %i.fp = zext i32 %i.fo to i64
  %.val3051 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fq = getelementptr inbounds nuw i8, ptr %.val3051, i64 %i.fp
  %.0.copyload.i3126 = load i64, ptr %i.fq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3126) #7, !srcloc !22
  %.not2859 = icmp eq i64 %.0.copyload.i3126, 0
  br i1 %.not2859, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.preheader3235
  %i.fr = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.copyload.i3126, i1 true)
  %i.fs = trunc nuw nsw i64 %i.fr to i32
  %i.ft = or disjoint i32 %.12785, %i.fs
  br label %.loopexit3236

bb.ae:                                            ; preds = %.preheader3235
  %i.fu = add i32 %.12785, 64
  %i.fv = icmp ugt i64 %indvars.iv3272, 1
  br i1 %i.fv, label %.preheader3235, label %.loopexit3236

.loopexit3236:                                    ; preds = %bb.ae, %bb.ad
  %.02758 = phi i32 [ %i.ft, %bb.ad ], [ %i.dw, %bb.ae ]
  %i.fw = add i32 %i.ej, %.02758
  %i.fx = sub i32 %.0.copyload.i3117, %i.fw
  %i.fy = icmp ult i32 %i.fx, 65
  br i1 %i.fy, label %bb.af, label %.preheader3394

bb.af:                                            ; preds = %.loopexit3236
  %i.fz = zext i32 %.0.copyload.i3121 to i64
  %.val3050 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ga = getelementptr inbounds nuw i8, ptr %.val3050, i64 %i.fz
  %.0.copyload.i3127 = load i64, ptr %i.ga, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3127) #7, !srcloc !22
  %i.gb = icmp ult i64 %.0.copyload.i3127, %i.cc
  br i1 %i.gb, label %bb.ee, label %.preheader3394

.preheader3394:                                   ; preds = %bb.af, %.loopexit3236
  br label %bb.ag

bb.ag:                                            ; preds = %.preheader3394, %bb.ai
  %indvars.iv3276 = phi i64 [ %indvars.iv.next3277, %bb.ai ], [ %i.du, %.preheader3394 ] ; 2 uses
  %.22786 = phi i32 [ %i.gj, %bb.ai ], [ 0, %.preheader3394 ] ; 2 uses
  %indvars.iv.next3277 = add nsw i64 %indvars.iv3276, -1 ; 2 uses
  %indvars3278 = trunc i64 %indvars.iv.next3277 to i32
  %i.gc = shl i32 %indvars3278, 3
  %i.gd = add i32 %i.gc, %.0.copyload.i3121
  %i.ge = zext i32 %i.gd to i64
  %.val3049 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gf = getelementptr inbounds nuw i8, ptr %.val3049, i64 %i.ge
  %.0.copyload.i3128 = load i64, ptr %i.gf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3128) #7, !srcloc !22
  %.not2860 = icmp eq i64 %.0.copyload.i3128, 0
  br i1 %.not2860, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.copyload.i3128, i1 true)
  %i.gh = trunc nuw nsw i64 %i.gg to i32
  %i.gi = or disjoint i32 %.22786, %i.gh
  br label %.loopexit3234

bb.ai:                                            ; preds = %bb.ag
  %i.gj = add i32 %.22786, 64
  %i.gk = icmp ugt i64 %indvars.iv3276, 1
  br i1 %i.gk, label %bb.ag, label %.loopexit3234

.loopexit3234:                                    ; preds = %bb.ai, %bb.ah
  %.02770 = phi i32 [ %i.gi, %bb.ah ], [ %i.dw, %bb.ai ]
  %i.gl = add i32 %i.ej, %.02770
  %i.gm = sub i32 %.0.copyload.i3117, %i.gl
  %i.gn = icmp ugt i32 %i.gm, 64
  br i1 %i.gn, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %.loopexit3234
  %i.go = zext i32 %.0.copyload.i3121 to i64
  %.val3048 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gp = getelementptr inbounds nuw i8, ptr %.val3048, i64 %i.go
  %.0.copyload.i3129 = load i64, ptr %i.gp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3129) #7, !srcloc !22
  %.not2861 = icmp eq i64 %.0.copyload.i3129, %i.cc
  br i1 %.not2861, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  %i.gq = shl nuw nsw i32 %i.dv, 3                ; 3 uses
  %i.gr = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.gq) #7
  %i.gs = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.gr, i32 noundef 0, i32 noundef %i.gq) #7 ; 3 uses
  %i.gt = zext i32 %i.gs to i64
  %.val3080 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gu = getelementptr inbounds nuw i8, ptr %.val3080, i64 %i.gt
  store i64 1, ptr %i.gu, align 1
  %i.gv = add nsw i32 %i.gq, -8
  %i.gw = add i32 %i.gv, %i.gs
  %i.gx = zext i32 %i.gw to i64                   ; 2 uses
  %.val3047 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gy = getelementptr inbounds nuw i8, ptr %.val3047, i64 %i.gx
  %.0.copyload.i3130 = load i64, ptr %i.gy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3130) #7, !srcloc !22
  %i.gz = sub i32 0, %.0.copyload.i3117
  %i.ha = and i32 %i.gz, 63
  %i.hb = zext nneg i32 %i.ha to i64
  %i.hc = lshr i64 -1, %i.hb
  %i.hd = and i64 %.0.copyload.i3130, %i.hc
  %.val3079 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.he = getelementptr inbounds nuw i8, ptr %.val3079, i64 %i.gx
  store i64 %i.hd, ptr %i.he, align 1
  %.val2963 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hf = getelementptr inbounds nuw i8, ptr %.val2963, i64 %i.cl
  %.0.copyload.i3131 = load i32, ptr %i.hf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3131) #7, !srcloc !19
  %i.hg = icmp ult i32 %.0.copyload.i3131, 65
  br i1 %i.hg, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.val2962 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hh = getelementptr inbounds nuw i8, ptr %.val2962, i64 %i.ck
  %.0.copyload.i3132 = load i32, ptr %i.hh, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3132) #7, !srcloc !19
  %.not2862 = icmp eq i32 %.0.copyload.i3132, 0
  br i1 %.not2862, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i3132) #7
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.ak, %bb.am
  %.val3009 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hi = getelementptr inbounds nuw i8, ptr %.val3009, i64 %i.cl
  store i32 %.0.copyload.i3117, ptr %i.hi, align 1
  %.val3008 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hj = getelementptr inbounds nuw i8, ptr %.val3008, i64 %i.ck
  store i32 %i.gs, ptr %i.hj, align 1
  %.val3078 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hk = getelementptr inbounds nuw i8, ptr %.val3078, i64 %i.cm
  store i64 0, ptr %i.hk, align 1
  br label %bb.ei

bb.ao:                                            ; preds = %bb.aj, %.loopexit3234
  %.val2961 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hl = getelementptr inbounds nuw i8, ptr %.val2961, i64 %i.cl
  %.0.copyload.i3133 = load i32, ptr %i.hl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3133) #7, !srcloc !19
  %i.hm = zext i32 %.0.copyload.i3133 to i64
  %i.hn = add nuw nsw i64 %i.hm, 63
  %i.ho = lshr i64 %i.hn, 6
  %i.hp = icmp eq i64 %i.du, %i.ho
  br i1 %i.hp, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hq = icmp ult i32 %.0.copyload.i3133, 65
  br i1 %i.hq, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.val2960 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hr = getelementptr inbounds nuw i8, ptr %.val2960, i64 %i.ck
  %.0.copyload.i3134 = load i32, ptr %i.hr, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3134) #7, !srcloc !19
  %.not2863 = icmp eq i32 %.0.copyload.i3134, 0
  br i1 %.not2863, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i3134) #7
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ap, %bb.ar
  %.val3006 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hs = getelementptr inbounds nuw i8, ptr %.val3006, i64 %i.cl
  store i32 %.0.copyload.i3117, ptr %i.hs, align 1
  %i.ht = shl nuw nsw i32 %i.dv, 3
  %i.hu = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.ht) #7
  br label %bb.at

bb.at:                                            ; preds = %bb.ao, %bb.as
  %.sink3376 = phi i64 [ %i.ck, %bb.as ], [ %i.cl, %bb.ao ]
  %.sink = phi i32 [ %i.hu, %bb.as ], [ %.0.copyload.i3117, %bb.ao ]
  %.val3005 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hv = getelementptr inbounds nuw i8, ptr %.val3005, i64 %.sink3376
  store i32 %.sink, ptr %i.hv, align 1
  %.val2959 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hw = getelementptr inbounds nuw i8, ptr %.val2959, i64 %i.ci
  %.0.copyload.i3135 = load i32, ptr %i.hw, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3135) #7, !srcloc !19
  %i.hx = icmp eq i64 %i.eo, 1
  %.val2958 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hy = getelementptr inbounds nuw i8, ptr %.val2958, i64 %i.ck
  %.0.copyload.i3136 = load i32, ptr %i.hy, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3136) #7
  br i1 %i.hx, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.hz = zext i32 %.0.copyload.i3135 to i64
  %.val3046 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ia = getelementptr inbounds nuw i8, ptr %.val3046, i64 %i.hz
  %.0.copyload.i3137 = load i64, ptr %i.ia, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3137) #7, !srcloc !22
  br i1 %i.co, label %bb.av, label %bb.aw, !prof !25

bb.av:                                            ; preds = %bb.au
  tail call void @wasm_rt_trap(i32 noundef 3) #8
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.ib = udiv i64 %.0.copyload.i3137, %i.cc      ; 2 uses
  %i.ic = zext i32 %.0.copyload.i3136 to i64
  %.val3077 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.id = getelementptr inbounds nuw i8, ptr %.val3077, i64 %i.ic
  store i64 %i.ib, ptr %i.id, align 1
  %.val2957 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ie = getelementptr inbounds nuw i8, ptr %.val2957, i64 %i.ck
  %.0.copyload.i3138 = load i32, ptr %i.ie, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3138) #7, !srcloc !19
  %i.if = add i32 %.0.copyload.i3138, 8
  %i.ig = lshr i64 %i.dt, 3
  %i.ih = trunc nuw nsw i64 %i.ig to i32
  %i.ii = and i32 %i.ih, 1073741816
  %i.ij = add nsw i32 %i.ii, -8
  %i.ik = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.if, i32 noundef 0, i32 noundef %i.ij) #7 ; 0 uses
  %i.il = mul i64 %i.ib, %i.cc                    ; 0 uses
  %.recomposed3421 = urem i64 %.0.copyload.i3137, %i.cc
  %.val3076 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.im = getelementptr inbounds nuw i8, ptr %.val3076, i64 %i.cm
  store i64 %.recomposed3421, ptr %i.im, align 1
  br label %bb.ei

bb.ax:                                            ; preds = %bb.at
  %i.in = load i32, ptr %i.a, align 8, !tbaa !7   ; 2 uses
  %i.io = add i32 %i.in, -512                     ; 7 uses
  store i32 %i.io, ptr %i.a, align 8, !tbaa !7
  %i.ip = shl nuw nsw i32 %i.ep, 1                ; 5 uses
  %i.iq = add nsw i32 %i.ip, -2                   ; 2 uses
  %i.ir = shl nsw i32 %i.iq, 1
  %i.is = add nsw i32 %i.ir, %i.cn
  %i.it = icmp ult i32 %i.is, 128
  %i.iu = shl nuw nsw i32 %i.ep, 3
  %i.iv = or disjoint i32 %i.iu, 4                ; 2 uses
  br i1 %i.it, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.iw = add i32 %i.io, %i.iv                    ; 2 uses
  %i.ix = add nuw nsw i32 %i.ip, 3                ; 2 uses
  %i.iy = shl nuw nsw i32 %i.ix, 2
  %i.iz = add i32 %i.io, %i.iy                    ; 2 uses
  br i1 %.not2864, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ja = add nuw nsw i32 %i.ix, %i.ip
  %i.jb = shl nuw nsw i32 %i.ja, 2
end_hunk_0
begin_hunk_1_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AtoString0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3APseudoHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x2C0x20unsigned0x20char0x29:bb.a
  %.val3103 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sc = getelementptr inbounds nuw i8, ptr %.val3103, i64 %i.sb
  %.0.copyload.i3162 = load i32, ptr %i.sc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3162) #7, !srcloc !40
  %i.sd = zext i32 %.0.copyload.i3162 to i64
  %i.se = mul i64 %.02764, %i.sd                  ; 2 uses
  %i.sf = and i64 %i.se, 4294967295
  %i.sg = add nuw nsw i64 %.02763, %i.sf
  %i.sh = sub nsw i64 %i.ry, %i.sg                ; 2 uses
  %.val3094 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.si = trunc i64 %i.sh to i32
  %i.sj = getelementptr inbounds nuw i8, ptr %.val3094, i64 %i.rw
  store i32 %i.si, ptr %i.sj, align 1
  %i.sk = lshr i64 %i.se, 32
  %i.sl = lshr i64 %i.sh, 32
  %i.sm = sub nsw i64 %i.sk, %i.sl                ; 2 uses
  %i.sn = and i64 %i.sm, 4294967295               ; 2 uses
  %indvars.iv.next3307 = add nuw nsw i64 %indvars.iv3306, 1 ; 2 uses
  %.not2884 = icmp eq i64 %indvars.iv.next3307, %i.qg
  br i1 %.not2884, label %bb.cs, label %.preheader3223

bb.cs:                                            ; preds = %.preheader3223
  %i.so = zext i32 %i.ql to i64                   ; 4 uses
  %.val2944 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sp = getelementptr inbounds nuw i8, ptr %.val2944, i64 %i.so
  %.0.copyload.i3163 = load i32, ptr %i.sp, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3163) #7, !srcloc !19
  %i.sq = trunc i64 %i.sm to i32
  %i.sr = sub i32 %.0.copyload.i3163, %i.sq
  %.val2991 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ss = getelementptr inbounds nuw i8, ptr %.val2991, i64 %i.so
  store i32 %i.sr, ptr %i.ss, align 1
  %i.st = shl i32 %i.qi, 2
  %i.su = add i32 %i.st, %i.lk
  %i.sv = trunc i64 %.02764 to i32                ; 2 uses
  %i.sw = zext i32 %i.su to i64                   ; 2 uses
  %.val2990 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sx = getelementptr inbounds nuw i8, ptr %.val2990, i64 %i.sw
  store i32 %i.sv, ptr %i.sx, align 1
  %i.sy = zext i32 %.0.copyload.i3163 to i64
  %.not2885 = icmp samesign ugt i64 %i.sn, %i.sy
  br i1 %.not2885, label %bb.ct, label %bb.cx

bb.ct:                                            ; preds = %bb.cs
  %i.sz = add i32 %i.sv, -1
  %.val2989 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ta = getelementptr inbounds nuw i8, ptr %.val2989, i64 %i.sw
  store i32 %i.sz, ptr %i.ta, align 1
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cu, %bb.ct
  %indvars.iv3310 = phi i64 [ %indvars.iv.next3311, %bb.cu ], [ 0, %bb.ct ] ; 3 uses
  %.62793 = phi i32 [ %.22761, %bb.cu ], [ 0, %bb.ct ] ; 2 uses
  %i.tb = trunc nuw nsw i64 %indvars.iv3310 to i32
  %i.tc = add i32 %i.tb, %i.qi
  %i.td = shl i32 %i.tc, 2
  %i.te = add i32 %i.td, %i.jk
  %i.tf = zext i32 %i.te to i64                   ; 2 uses
  %.val2943 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tg = getelementptr inbounds nuw i8, ptr %.val2943, i64 %i.tf
  %.0.copyload.i3164 = load i32, ptr %i.tg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3164) #7, !srcloc !19
  %indvars.iv3310.tr = trunc i64 %indvars.iv3310 to i32
  %i.th = shl i32 %indvars.iv3310.tr, 2
  %i.ti = add i32 %i.th, %i.lb
  %i.tj = zext i32 %i.ti to i64
  %.val2942 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tk = getelementptr inbounds nuw i8, ptr %.val2942, i64 %i.tj
  %.0.copyload.i3165 = load i32, ptr %i.tk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3165) #7, !srcloc !19
  %i.tl = add i32 %.0.copyload.i3164, %.62793
  %i.tm = add i32 %i.tl, %.0.copyload.i3165       ; 3 uses
  %.val2988 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tn = getelementptr inbounds nuw i8, ptr %.val2988, i64 %i.tf
  store i32 %i.tm, ptr %i.tn, align 1
  %i.to = tail call i32 @llvm.umin.i32(i32 %.0.copyload.i3165, i32 %.0.copyload.i3164) ; 2 uses
  %.not2886 = icmp ugt i32 %i.to, %i.tm
  %i.tp = icmp eq i32 %i.to, %i.tm
  %i.tq = select i1 %i.tp, i32 %.62793, i32 0
  %.22761 = select i1 %.not2886, i32 1, i32 %i.tq ; 2 uses
  %indvars.iv.next3311 = add nuw nsw i64 %indvars.iv3310, 1 ; 2 uses
  %.not2887 = icmp eq i64 %indvars.iv.next3311, %i.qg
  br i1 %.not2887, label %bb.cv, label %bb.cu

bb.cv:                                            ; preds = %bb.cu
  %.val2941 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tr = getelementptr inbounds nuw i8, ptr %.val2941, i64 %i.so
  %.0.copyload.i3166 = load i32, ptr %i.tr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3166) #7, !srcloc !19
  %i.ts = add i32 %.0.copyload.i3166, %.22761
  %.val2987 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tt = getelementptr inbounds nuw i8, ptr %.val2987, i64 %i.so
  store i32 %i.ts, ptr %i.tt, align 1
  br label %bb.cx

bb.cw:                                            ; preds = %bb.cr
  %i.tu = shl i32 %i.qi, 2
  %i.tv = add i32 %i.tu, %i.lk
  %i.tw = zext i32 %i.tv to i64
  %.val3093 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tx = trunc i64 %.02764 to i32
  %i.ty = getelementptr inbounds nuw i8, ptr %.val3093, i64 %i.tw
  store i32 %i.tx, ptr %i.ty, align 1
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cs, %bb.cw, %bb.cv
  %indvars.iv.next3315 = add nsw i64 %indvars.iv3314, -1
  %i.tz = icmp sgt i32 %i.qi, 0
  br i1 %i.tz, label %bb.cj, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %.not2888 = icmp eq i32 %.12760, 0
  br i1 %.not2888, label %.loopexit3228, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  br i1 %.not2874, label %bb.df, label %bb.da

bb.da:                                            ; preds = %bb.cz
  br i1 %.not2879, label %.loopexit3228, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ua = and i32 %.12797, 1
  %.not2890 = icmp eq i32 %i.ni, 0
  br i1 %.not2890, label %..thread_crit_edge, label %bb.dc

..thread_crit_edge:                               ; preds = %bb.db
  %.pre3341 = and i32 %i.nn, 31
  br label %.thread

bb.dc:                                            ; preds = %bb.db
  %i.ub = sub nuw nsw i32 32, %i.nn               ; 2 uses
  %i.uc = and i32 %.12797, 2
  %i.ud = and i32 %i.nn, 31                       ; 3 uses
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dd, %bb.dc
  %.02804 = phi i32 [ 1, %bb.dc ], [ %i.ux, %bb.dd ] ; 2 uses
  %.52801 = phi i32 [ 0, %bb.dc ], [ %i.uz, %bb.dd ]
  %.92782 = phi i32 [ 0, %bb.dc ], [ %i.uy, %bb.dd ]
  %i.ue = shl i32 %.02804, 2                      ; 3 uses
  %i.uf = add i32 %i.ue, %.12760
  %i.ug = add i32 %i.ue, %i.jk
  %i.uh = zext i32 %i.ug to i64
  %.val2940 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ui = getelementptr inbounds nuw i8, ptr %.val2940, i64 %i.uh
  %.0.copyload.i3167 = load i32, ptr %i.ui, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3167) #7, !srcloc !19
  %i.uj = lshr i32 %.0.copyload.i3167, %i.ud
  %i.uk = or i32 %i.uj, %.92782
  %i.ul = zext i32 %i.uf to i64
  %.val2986 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.um = getelementptr inbounds nuw i8, ptr %.val2986, i64 %i.ul
  store i32 %i.uk, ptr %i.um, align 1
  %i.un = add nsw i32 %i.ue, -4                   ; 2 uses
  %i.uo = add i32 %i.un, %.12760
  %i.up = shl i32 %.0.copyload.i3167, %i.ub
  %i.uq = add i32 %i.un, %i.jk
  %i.ur = zext i32 %i.uq to i64
  %.val2939 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.us = getelementptr inbounds nuw i8, ptr %.val2939, i64 %i.ur
  %.0.copyload.i3168 = load i32, ptr %i.us, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3168) #7, !srcloc !19
  %i.ut = lshr i32 %.0.copyload.i3168, %i.ud
  %i.uu = or i32 %i.ut, %i.up
  %i.uv = zext i32 %i.uo to i64
  %.val2985 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.uw = getelementptr inbounds nuw i8, ptr %.val2985, i64 %i.uv
  store i32 %i.uu, ptr %i.uw, align 1
  %i.ux = add i32 %.02804, -2                     ; 2 uses
  %i.uy = shl i32 %.0.copyload.i3168, %i.ub       ; 2 uses
  %i.uz = add i32 %.52801, 2                      ; 2 uses
  %.not2891 = icmp eq i32 %i.uz, %i.uc
  br i1 %.not2891, label %bb.de, label %bb.dd

bb.de:                                            ; preds = %bb.dd
  %.not2892 = icmp eq i32 %i.ua, 0
  br i1 %.not2892, label %.loopexit3228, label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.de
  %.pre-phi3342 = phi i32 [ %.pre3341, %..thread_crit_edge ], [ %i.ud, %bb.de ]
  %.1027833215 = phi i32 [ 0, %..thread_crit_edge ], [ %i.uy, %bb.de ]
  %.128053214 = phi i32 [ 0, %..thread_crit_edge ], [ %i.ux, %bb.de ]
  %i.va = shl i32 %.128053214, 2                  ; 2 uses
  %i.vb = add i32 %i.va, %.12760
  %i.vc = add i32 %i.va, %i.jk
  %i.vd = zext i32 %i.vc to i64
  %.val2938 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ve = getelementptr inbounds nuw i8, ptr %.val2938, i64 %i.vd
  %.0.copyload.i3169 = load i32, ptr %i.ve, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3169) #7, !srcloc !19
  %i.vf = lshr i32 %.0.copyload.i3169, %.pre-phi3342
  %i.vg = or i32 %i.vf, %.1027833215
  br label %.loopexit3228.sink.split

bb.df:                                            ; preds = %bb.cz
  br i1 %.not2879, label %.loopexit3228, label %.preheader3227

.preheader3227:                                   ; preds = %bb.df, %.preheader3227
  %.82814 = phi i32 [ %i.vo, %.preheader3227 ], [ %i.ni, %bb.df ] ; 2 uses
  %.11 = phi i32 [ %i.vp, %.preheader3227 ], [ 0, %bb.df ]
  %i.vh = shl i32 %.82814, 2                      ; 2 uses
  %i.vi = add i32 %i.vh, %.12760
  %i.vj = add i32 %i.vh, %i.jk
  %i.vk = zext i32 %i.vj to i64
  %.val2937 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vl = getelementptr inbounds nuw i8, ptr %.val2937, i64 %i.vk
  %.0.copyload.i3170 = load i32, ptr %i.vl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3170) #7, !srcloc !19
  %i.vm = zext i32 %i.vi to i64
  %.val2983 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vn = getelementptr inbounds nuw i8, ptr %.val2983, i64 %i.vm
  store i32 %.0.copyload.i3170, ptr %i.vn, align 1
  %i.vo = add nsw i32 %.82814, -1
  %i.vp = add nuw nsw i32 %.11, 1                 ; 2 uses
  %.not2889 = icmp eq i32 %i.vp, %.12797
  br i1 %.not2889, label %.loopexit3228, label %.preheader3227

.loopexit3228.sink.split:                         ; preds = %.loopexit3226, %.thread
  %.sink3380 = phi i32 [ %i.vb, %.thread ], [ %.12760, %.loopexit3226 ]
  %.sink3377 = phi i32 [ %i.vg, %.thread ], [ %.42800, %.loopexit3226 ]
  %i.vq = zext i32 %.sink3380 to i64
  %.val2984 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vr = getelementptr inbounds nuw i8, ptr %.val2984, i64 %i.vq
  store i32 %.sink3377, ptr %i.vr, align 1
  br label %.loopexit3228

.loopexit3228:                                    ; preds = %.preheader3227, %.loopexit3228.sink.split, %bb.df, %bb.de, %bb.da, %bb.cy, %.loopexit3226
  %.not2895 = icmp eq i32 %.0.copyload.i3136, 0
  br i1 %.not2895, label %bb.di, label %.preheader3225

.preheader3225:                                   ; preds = %.loopexit3228, %.preheader3225
  %indvars.iv3322 = phi i64 [ %indvars.iv.next3323, %.preheader3225 ], [ 0, %.loopexit3228 ] ; 2 uses
  %i.vs = trunc nuw i64 %indvars.iv3322 to i32
  %i.vt = shl i32 %i.vs, 3                        ; 3 uses
  %i.vu = add i32 %i.vt, %.0.copyload.i3136
  %i.vv = add i32 %i.vt, %i.lk
  %i.vw = zext i32 %i.vv to i64
  %.val3040 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vx = getelementptr inbounds nuw i8, ptr %.val3040, i64 %i.vw
  %.0.copyload.i3171 = load i64, ptr %i.vx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3171) #7, !srcloc !22
  %i.vy = zext i32 %i.vu to i64
  %.val3075 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vz = getelementptr inbounds nuw i8, ptr %.val3075, i64 %i.vy
  store i64 %.0.copyload.i3171, ptr %i.vz, align 1
  %i.wa = or disjoint i32 %i.vt, 8                ; 2 uses
  %i.wb = add i32 %i.wa, %.0.copyload.i3136
  %i.wc = add i32 %i.wa, %i.lk
  %i.wd = zext i32 %i.wc to i64
  %.val3039 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.we = getelementptr inbounds nuw i8, ptr %.val3039, i64 %i.wd
  %.0.copyload.i3172 = load i64, ptr %i.we, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3172) #7, !srcloc !22
  %i.wf = zext i32 %i.wb to i64
  %.val3074 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wg = getelementptr inbounds nuw i8, ptr %.val3074, i64 %i.wf
  store i64 %.0.copyload.i3172, ptr %i.wg, align 1
  %indvars.iv.next3323 = add nuw nsw i64 %indvars.iv3322, 2 ; 2 uses
  %indvars3326 = trunc i64 %indvars.iv.next3323 to i32
  %.not2897 = icmp eq i32 %i.jl, %indvars3326
  br i1 %.not2897, label %bb.dg, label %.preheader3225

bb.dg:                                            ; preds = %.preheader3225
  br i1 %.not2867, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.wh = shl nuw nsw i32 %i.jl, 3                ; 2 uses
  %i.wi = add i32 %i.wh, %.0.copyload.i3136
  %i.wj = add i32 %i.wh, %i.lk
  %i.wk = zext i32 %i.wj to i64
  %.val3038 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wl = getelementptr inbounds nuw i8, ptr %.val3038, i64 %i.wk
  %.0.copyload.i3173 = load i64, ptr %i.wl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3173) #7, !srcloc !22
  %i.wm = zext i32 %i.wi to i64
  %.val3073 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wn = getelementptr inbounds nuw i8, ptr %.val3073, i64 %i.wm
  store i64 %.0.copyload.i3173, ptr %i.wn, align 1
  br label %bb.di

bb.di:                                            ; preds = %bb.dg, %.loopexit3228, %bb.dh
  br i1 %.not2864, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.wo = zext i32 %.12760 to i64
  %.val3037 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wp = getelementptr inbounds nuw i8, ptr %.val3037, i64 %i.wo
  %.0.copyload.i3174 = load i64, ptr %i.wp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3174) #7, !srcloc !22
  %.val3072 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wq = getelementptr inbounds nuw i8, ptr %.val3072, i64 %i.cm
  store i64 %.0.copyload.i3174, ptr %i.wq, align 1
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %i.wr = icmp eq i32 %i.jk, %i.io
  br i1 %i.wr, label %bb.dn, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %i.jk) #7
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %i.lb) #7
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %i.lk) #7
  %.not2899 = icmp eq i32 %.12760, 0
  br i1 %.not2899, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.12760) #7
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dl, %bb.dk, %bb.dm
  store i32 %i.in, ptr %i.a, align 8, !tbaa !7
  %.val2936 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ws = getelementptr inbounds nuw i8, ptr %.val2936, i64 %i.ck
  %.0.copyload.i3175 = load i32, ptr %i.ws, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3175) #7, !srcloc !19
  %i.wt = add i32 %.0.copyload.i3175, %i.ji
  %i.wu = sub nsw i32 %i.dv, %i.ep
  %i.wv = shl nsw i32 %i.wu, 3
  %i.ww = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.wt, i32 noundef 0, i32 noundef %i.wv) #7 ; 0 uses
  br label %bb.ei

bb.do:                                            ; preds = %bb.ac
  %.val2935 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wx = getelementptr inbounds nuw i8, ptr %.val2935, i64 %i.cl
  %.0.copyload.i3176 = load i32, ptr %i.wx, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3176) #7, !srcloc !19
  %i.wy = icmp ugt i32 %.0.copyload.i3176, 64
  br i1 %i.wy, label %bb.dt, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %.val2934 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wz = getelementptr inbounds nuw i8, ptr %.val2934, i64 %i.cj
  %.0.copyload.i3177 = load i32, ptr %i.wz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3177) #7, !srcloc !19
  %i.xa = icmp ugt i32 %.0.copyload.i3177, 64
  br i1 %i.xa, label %bb.dt, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %.val3036 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xb = getelementptr inbounds nuw i8, ptr %.val3036, i64 %i.ci
  %.0.copyload.i3178 = load i64, ptr %i.xb, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3178) #7, !srcloc !22
  %.val3071 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xc = getelementptr inbounds nuw i8, ptr %.val3071, i64 %i.ck
  store i64 %.0.copyload.i3178, ptr %i.xc, align 1
  %.val2933 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xd = getelementptr inbounds nuw i8, ptr %.val2933, i64 %i.cj
  %.0.copyload.i3179 = load i32, ptr %i.xd, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3179) #7, !srcloc !19
  %.val2982 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xe = getelementptr inbounds nuw i8, ptr %.val2982, i64 %i.cl
  store i32 %.0.copyload.i3179, ptr %i.xe, align 1
  %i.xf = icmp ugt i32 %.0.copyload.i3179, 64
  br i1 %i.xf, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.xg = zext i32 %.0.copyload.i3179 to i64
  %i.xh = add nuw nsw i64 %i.xg, 63
  %sh.diff = lshr i64 %i.xh, 3
  %i.xi = and i64 %sh.diff, 1073741816
  %i.xj = add i64 %.0.copyload.i3178, 4294967288
  %i.xk = add i64 %i.xj, %i.xi
  %i.xl = and i64 %i.xk, 4294967295               ; 2 uses
  %.val3035 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xm = getelementptr inbounds nuw i8, ptr %.val3035, i64 %i.xl
  %.0.copyload.i3180 = load i64, ptr %i.xm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3180) #7, !srcloc !22
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %.pre-phi3340 = phi i64 [ %i.xl, %bb.dr ], [ %i.ck, %bb.dq ]
  %.12765 = phi i64 [ %.0.copyload.i3180, %bb.dr ], [ %.0.copyload.i3178, %bb.dq ]
  %i.xn = sub i32 0, %.0.copyload.i3179
  %i.xo = and i32 %i.xn, 63
  %i.xp = zext nneg i32 %i.xo to i64
  %i.xq = lshr i64 -1, %i.xp
  %i.xr = and i64 %.12765, %i.xq
  %.val3070 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xs = getelementptr inbounds nuw i8, ptr %.val3070, i64 %.pre-phi3340
  store i64 %i.xr, ptr %i.xs, align 1
  br label %bb.ed

bb.dt:                                            ; preds = %bb.do, %bb.dp
  %.val2932 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xt = getelementptr inbounds nuw i8, ptr %.val2932, i64 %i.cj
  %.0.copyload.i3181 = load i32, ptr %i.xt, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3181) #7, !srcloc !19
  %i.xu = zext i32 %.0.copyload.i3181 to i64
  %i.xv = add nuw nsw i64 %i.xu, 63               ; 2 uses
  %i.xw = lshr i64 %i.xv, 6                       ; 2 uses
  %i.xx = trunc nuw nsw i64 %i.xw to i32
  %i.xy = zext i32 %.0.copyload.i3176 to i64
  %i.xz = add nuw nsw i64 %i.xy, 63
  %i.ya = lshr i64 %i.xz, 6
  %.not2857 = icmp eq i64 %i.xw, %i.ya
  br i1 %.not2857, label %bb.dz, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.yb = icmp ult i32 %.0.copyload.i3176, 65
  br i1 %i.yb, label %bb.dx, label %bb.dv

end_hunk_1
begin_hunk_2_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AtoString0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3APseudoHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x2C0x20unsigned0x20char0x29:bb.a
  %.0.copyload.i3182 = load i32, ptr %i.yc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3182) #7, !srcloc !19
  %.not2858 = icmp eq i32 %.0.copyload.i3182, 0
  br i1 %.not2858, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i3182) #7
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dv, %bb.du, %bb.dw
  %.val2981 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.yd = getelementptr inbounds nuw i8, ptr %.val2981, i64 %i.cl
  store i32 %.0.copyload.i3181, ptr %i.yd, align 1
  %i.ye = icmp ult i32 %.0.copyload.i3181, 65
  br i1 %i.ye, label %bb.ec, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.yf = shl nuw nsw i32 %i.xx, 3
  %i.yg = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.yf) #7 ; 2 uses
  %.val2980 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.yh = getelementptr inbounds nuw i8, ptr %.val2980, i64 %i.ck
  store i32 %i.yg, ptr %i.yh, align 1
  br label %bb.eb

bb.dz:                                            ; preds = %bb.dt
  %.val2979 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.yi = getelementptr inbounds nuw i8, ptr %.val2979, i64 %i.cl
  store i32 %.0.copyload.i3181, ptr %i.yi, align 1
  %i.yj = icmp ult i32 %.0.copyload.i3181, 65
  br i1 %i.yj, label %bb.ec, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %.val2930 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.yk = getelementptr inbounds nuw i8, ptr %.val2930, i64 %i.ck
  %.0.copyload.i3183 = load i32, ptr %i.yk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3183) #7, !srcloc !19
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dy
  %.12795 = phi i32 [ %i.yg, %bb.dy ], [ %.0.copyload.i3183, %bb.ea ]
  %.val2929 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.yl = getelementptr inbounds nuw i8, ptr %.val2929, i64 %i.ci
  %.0.copyload.i3184 = load i32, ptr %i.yl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3184) #7, !srcloc !19
  %i.ym = lshr i64 %i.xv, 3
  %i.yn = trunc nuw nsw i64 %i.ym to i32
  %i.yo = and i32 %i.yn, 1073741816
  %i.yp = tail call i32 @w2c_hermes_0x5F_memcpy(ptr noundef nonnull %0, i32 noundef %.12795, i32 noundef %.0.copyload.i3184, i32 noundef %i.yo) #7 ; 0 uses
  br label %bb.ed

bb.ec:                                            ; preds = %bb.dz, %bb.dx
  %.val3034 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.yq = getelementptr inbounds nuw i8, ptr %.val3034, i64 %i.ci
  %.0.copyload.i3185 = load i64, ptr %i.yq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3185) #7, !srcloc !22
  %.val3069 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.yr = getelementptr inbounds nuw i8, ptr %.val3069, i64 %i.ck
  store i64 %.0.copyload.i3185, ptr %i.yr, align 1
  br label %bb.ed

bb.ed:                                            ; preds = %bb.eb, %bb.ec, %bb.ds
  %.val3068 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ys = getelementptr inbounds nuw i8, ptr %.val3068, i64 %i.cm
  store i64 0, ptr %i.ys, align 1
  br label %bb.ei

bb.ee:                                            ; preds = %bb.af
  %.val3067 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.yt = getelementptr inbounds nuw i8, ptr %.val3067, i64 %i.cm
  store i64 %.0.copyload.i3127, ptr %i.yt, align 1
  %i.yu = shl nuw nsw i32 %i.dv, 3                ; 3 uses
  %i.yv = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.yu) #7
  %i.yw = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.yv, i32 noundef 0, i32 noundef %i.yu) #7 ; 3 uses
  %i.yx = zext i32 %i.yw to i64
  %.val3066 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.yy = getelementptr inbounds nuw i8, ptr %.val3066, i64 %i.yx
  store i64 0, ptr %i.yy, align 1
  %i.yz = add nsw i32 %i.yu, -8
  %i.za = add i32 %i.yz, %i.yw
  %i.zb = zext i32 %i.za to i64                   ; 2 uses
  %.val3033 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.zc = getelementptr inbounds nuw i8, ptr %.val3033, i64 %i.zb
  %.0.copyload.i3186 = load i64, ptr %i.zc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3186) #7, !srcloc !22
  %i.zd = sub i32 0, %.0.copyload.i3117
  %i.ze = and i32 %i.zd, 63
  %i.zf = zext nneg i32 %i.ze to i64
  %i.zg = lshr i64 -1, %i.zf
  %i.zh = and i64 %.0.copyload.i3186, %i.zg
  %.val3065 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.zi = getelementptr inbounds nuw i8, ptr %.val3065, i64 %i.zb
  store i64 %i.zh, ptr %i.zi, align 1
  %.val2928 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.zj = getelementptr inbounds nuw i8, ptr %.val2928, i64 %i.cl
  %.0.copyload.i3187 = load i32, ptr %i.zj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3187) #7, !srcloc !19
  %i.zk = icmp ult i32 %.0.copyload.i3187, 65
  br i1 %i.zk, label %bb.eh, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %.val2927 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.zl = getelementptr inbounds nuw i8, ptr %.val2927, i64 %i.ck
  %.0.copyload.i3188 = load i32, ptr %i.zl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3188) #7, !srcloc !19
  %.not2900 = icmp eq i32 %.0.copyload.i3188, 0
  br i1 %.not2900, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i3188) #7
  br label %bb.eh

bb.eh:                                            ; preds = %bb.ef, %bb.ee, %bb.eg
  %.val2978 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.zm = getelementptr inbounds nuw i8, ptr %.val2978, i64 %i.cl
  store i32 %.0.copyload.i3117, ptr %i.zm, align 1
  %.val2977 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.zn = getelementptr inbounds nuw i8, ptr %.val2977, i64 %i.ck
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 4
  store i32 0, ptr %i.zo, align 1
  %.val2976 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.zp = getelementptr inbounds nuw i8, ptr %.val2976, i64 %i.ck
  store i32 %i.yw, ptr %i.zp, align 1
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.ed, %bb.dn, %bb.aw, %bb.an, %bb.ab, %bb.t
  store i32 %i.cs, ptr %i.a, align 8, !tbaa !7
  %.val3032 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.zq = getelementptr inbounds nuw i8, ptr %.val3032, i64 %i.u
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 16
  %.0.copyload.i3189 = load i64, ptr %i.zr, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3189) #7, !srcloc !22
  %i.zs = icmp ult i64 %.0.copyload.i3189, 10
  %i.zt = select i1 %i.zs, i32 48, i32 87
  %i.zu = trunc i64 %.0.copyload.i3189 to i32
  %i.zv = add i32 %i.zt, %i.zu
  %sext = shl i32 %i.zv, 24
  %i.zw = ashr exact i32 %sext, 24
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3A0x3Apush_back0x28char0x29(ptr noundef nonnull %0, i32 noundef %i.q, i32 noundef %i.zw) #7
  %.val2926 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.zx = getelementptr inbounds nuw i8, ptr %.val2926, i64 %i.cp
  %.0.copyload.i3190 = load i32, ptr %i.zx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3190) #7, !srcloc !19
  %i.zy = icmp ult i32 %.0.copyload.i3190, 65
  br i1 %i.zy, label %bb.el, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %.val2925 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.zz = getelementptr inbounds nuw i8, ptr %.val2925, i64 %i.v
  %.0.copyload.i3191 = load i32, ptr %i.zz, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3191) #7, !srcloc !19
  %.not2903 = icmp eq i32 %.0.copyload.i3191, 0
  br i1 %.not2903, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i3191) #7
  br label %bb.el

bb.el:                                            ; preds = %bb.ej, %bb.ei, %bb.ek
  %.val3031 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aaa = getelementptr inbounds nuw i8, ptr %.val3031, i64 %i.cd
  %.0.copyload.i3192 = load i64, ptr %i.aaa, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3192) #7, !srcloc !22
  %.val3064 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aab = getelementptr inbounds nuw i8, ptr %.val3064, i64 %i.v
  store i64 %.0.copyload.i3192, ptr %i.aab, align 1
  %.val2924 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aac = getelementptr inbounds nuw i8, ptr %.val2924, i64 %i.ce
  %.0.copyload.i3193 = load i32, ptr %i.aac, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3193) #7, !srcloc !19
  %.val2975 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aad = getelementptr inbounds nuw i8, ptr %.val2975, i64 %i.cp
  store i32 %.0.copyload.i3193, ptr %i.aad, align 1
  %i.aae = icmp ugt i32 %.0.copyload.i3193, 64
  br i1 %i.aae, label %bb.em, label %bb.es

bb.em:                                            ; preds = %bb.el
  %.val2923 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aaf = getelementptr inbounds nuw i8, ptr %.val2923, i64 %i.cp
  %.0.copyload.i3194 = load i32, ptr %i.aaf, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3194) #7, !srcloc !19
  %i.aag = zext i32 %.0.copyload.i3194 to i64
  %i.aah = add nuw nsw i64 %i.aag, 63
  %i.aai = lshr i64 %i.aah, 6                     ; 3 uses
  %.not2904 = icmp eq i64 %i.aai, 0
  br i1 %.not2904, label %.loopexit3224, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.aaj = trunc nuw nsw i64 %i.aai to i32
  %i.aak = shl i32 %i.aaj, 6
  %.val2922 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aal = getelementptr inbounds nuw i8, ptr %.val2922, i64 %i.v
  %.0.copyload.i3195 = load i32, ptr %i.aal, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3195) #7, !srcloc !19
  br label %bb.eo

bb.eo:                                            ; preds = %bb.eq, %bb.en
  %indvars.iv3328 = phi i64 [ %indvars.iv.next3329, %bb.eq ], [ %i.aai, %bb.en ] ; 2 uses
  %.02803 = phi i32 [ %i.aat, %bb.eq ], [ 0, %bb.en ] ; 2 uses
  %indvars.iv.next3329 = add nsw i64 %indvars.iv3328, -1 ; 2 uses
  %indvars3330 = trunc i64 %indvars.iv.next3329 to i32
  %i.aam = shl i32 %indvars3330, 3
  %i.aan = add i32 %i.aam, %.0.copyload.i3195
  %i.aao = zext i32 %i.aan to i64
  %.val3030 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aap = getelementptr inbounds nuw i8, ptr %.val3030, i64 %i.aao
  %.0.copyload.i3196 = load i64, ptr %i.aap, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3196) #7, !srcloc !22
  %.not2905 = icmp eq i64 %.0.copyload.i3196, 0
  br i1 %.not2905, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.aaq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.copyload.i3196, i1 true)
  %i.aar = trunc nuw nsw i64 %i.aaq to i32
  %i.aas = or disjoint i32 %.02803, %i.aar
  br label %.loopexit3224

bb.eq:                                            ; preds = %bb.eo
  %i.aat = add i32 %.02803, 64
  %i.aau = icmp ugt i64 %indvars.iv3328, 1
  br i1 %i.aau, label %bb.eo, label %.loopexit3224

.loopexit3224:                                    ; preds = %bb.eq, %bb.em, %bb.ep
  %.12771 = phi i32 [ 0, %bb.em ], [ %i.aas, %bb.ep ], [ %i.aak, %bb.eq ]
  %i.aav = or i32 %.0.copyload.i3194, -64
  %i.aaw = and i32 %.0.copyload.i3194, 63
  %.not2906 = icmp eq i32 %i.aaw, 0
  %i.aax = select i1 %.not2906, i32 0, i32 %i.aav
  %i.aay = add i32 %i.aax, %.12771
  %i.aaz = sub i32 %.0.copyload.i3193, %i.aay
  %i.aba = icmp ugt i32 %i.aaz, 64
  br i1 %i.aba, label %.backedge.backedge, label %bb.er

.backedge.backedge:                               ; preds = %.loopexit3224, %bb.es
  br label %.backedge

bb.er:                                            ; preds = %.loopexit3224
  %.pre = and i64 %.0.copyload.i3192, 4294967295
  br label %bb.es

bb.es:                                            ; preds = %bb.el, %bb.er
  %.pre-phi = phi i64 [ %i.ci, %bb.el ], [ %.pre, %bb.er ]
  %.val3029 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.abb = getelementptr inbounds nuw i8, ptr %.val3029, i64 %.pre-phi
  %.0.copyload.i3197 = load i64, ptr %i.abb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3197) #7, !srcloc !22
  %.not2907 = icmp eq i64 %.0.copyload.i3197, 0
  br i1 %.not2907, label %bb.et, label %.backedge.backedge

bb.et:                                            ; preds = %bb.es
  br i1 %.not2908, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3A0x3Apush_back0x28char0x29(ptr noundef nonnull %0, i32 noundef %i.q, i32 noundef 45) #7
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %.val2921 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.abc = getelementptr inbounds nuw i8, ptr %.val2921, i64 %i.bq
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abc, i64 4
  %.0.copyload.i3198 = load i32, ptr %i.abd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3198) #7, !srcloc !19
  %.val2974 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.abe = getelementptr inbounds nuw i8, ptr %.val2974, i64 %i.bq
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 11
  %.0.copyload.i3199 = load i8, ptr %i.abf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3199) #7, !srcloc !20
  %i.abg = zext i8 %.0.copyload.i3199 to i32
  %.not2910 = icmp sgt i8 %.0.copyload.i3199, -1  ; 2 uses
  %i.abh = select i1 %.not2910, i32 %i.abg, i32 %.0.copyload.i3198 ; 2 uses
  %.not2911 = icmp eq i32 %i.abh, 0
  br i1 %.not2911, label %.loopexit, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %.val2920 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.abi = getelementptr inbounds nuw i8, ptr %.val2920, i64 %i.bq
  %.0.copyload.i3200 = load i32, ptr %i.abi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3200) #7, !srcloc !19
  %i.abj = select i1 %.not2910, i32 %i.q, i32 %.0.copyload.i3200 ; 3 uses
  %i.abk = add i32 %i.abh, -1
  %i.abl = add i32 %i.abk, %i.abj                 ; 2 uses
  %.not2912 = icmp ugt i32 %i.abl, %i.abj
  br i1 %.not2912, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.ew
  %i.abm = zext i32 %i.abl to i64
  %i.abn = zext i32 %i.abj to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv3334 = phi i64 [ %i.abn, %.preheader.preheader ], [ %indvars.iv.next3335, %.preheader ] ; 3 uses
  %indvars.iv3332 = phi i64 [ %i.abm, %.preheader.preheader ], [ %indvars.iv.next3333, %.preheader ] ; 3 uses
  %.val2973 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.abo = getelementptr inbounds nuw i8, ptr %.val2973, i64 %indvars.iv3334
  %.0.copyload.i3201 = load i8, ptr %i.abo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3201) #7, !srcloc !20
  %.val2972 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.abp = getelementptr inbounds nuw i8, ptr %.val2972, i64 %indvars.iv3332
  %.0.copyload.i3202 = load i8, ptr %i.abp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3202) #7, !srcloc !20
  %.val2914 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.abq = getelementptr inbounds nuw i8, ptr %.val2914, i64 %indvars.iv3334
  store i8 %.0.copyload.i3202, ptr %i.abq, align 1
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.abr = getelementptr inbounds nuw i8, ptr %.val, i64 %indvars.iv3332
  store i8 %.0.copyload.i3201, ptr %i.abr, align 1
  %indvars.iv.next3335 = add nuw nsw i64 %indvars.iv3334, 1 ; 2 uses
  %indvars.iv.next3333 = add nsw i64 %indvars.iv3332, -1 ; 2 uses
  %i.abs = and i64 %indvars.iv.next3333, 4294967295
  %i.abt = icmp samesign ult i64 %indvars.iv.next3335, %i.abs
  br i1 %i.abt, label %.preheader, label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.ew, %bb.ev
  %.val2919 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.abu = getelementptr inbounds nuw i8, ptr %.val2919, i64 %i.cp
  %.0.copyload.i3203 = load i32, ptr %i.abu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3203) #7, !srcloc !19
  %i.abv = icmp ult i32 %.0.copyload.i3203, 65
  br i1 %i.abv, label %bb.ez, label %bb.ex

bb.ex:                                            ; preds = %.loopexit
  %.val2918 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.abw = getelementptr inbounds nuw i8, ptr %.val2918, i64 %i.v
  %.0.copyload.i3204 = load i32, ptr %i.abw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3204) #7, !srcloc !19
  %.not2913 = icmp eq i32 %.0.copyload.i3204, 0
  br i1 %.not2913, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i3204) #7
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ex, %.loopexit, %bb.ey, %bb.d
  store i32 %i.r, ptr %i.a, align 8, !tbaa !7
  %i.abx = add i32 %i.b, -32
  %i.aby = add nuw nsw i64 %i.h, 36               ; 2 uses
  %.val2917 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.abz = getelementptr inbounds nuw i8, ptr %.val2917, i64 %i.aby
  %.0.copyload.i3205 = load i32, ptr %i.abz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3205) #7, !srcloc !19
  %i.aca = add nuw nsw i64 %i.h, 47               ; 2 uses
  %.val3026 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.acb = getelementptr inbounds nuw i8, ptr %.val3026, i64 %i.aca
  %.0.copyload.i3206 = load i8, ptr %i.acb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3206) #7, !srcloc !21
  %i.acc = icmp slt i8 %.0.copyload.i3206, 0
  %i.acd = select i1 %i.acc, i32 %.0.copyload.i3205, i32 %i.q
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AcreateASCIIRef0x28char0x20const0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.abx, i32 noundef %i.acd) #7
  %.val3028 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ace = getelementptr inbounds nuw i8, ptr %.val3028, i64 %i.h
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 16
  %.0.copyload.i3207 = load i64, ptr %i.acf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3207) #7, !srcloc !22
  %.val3063 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.acg = getelementptr inbounds nuw i8, ptr %.val3063, i64 %i.h
  store i64 %.0.copyload.i3207, ptr %i.acg, align 1
  %i.ach = load i32, ptr %i.a, align 8, !tbaa !7  ; 2 uses
  %i.aci = add i32 %i.ach, -16                    ; 3 uses
  store i32 %i.aci, ptr %i.a, align 8, !tbaa !7
  %.val3027 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.acj = getelementptr inbounds nuw i8, ptr %.val3027, i64 %i.h
  %.0.copyload.i3208 = load i64, ptr %i.acj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3208) #7, !srcloc !22
  %i.ack = zext i32 %i.aci to i64                 ; 2 uses
  %.val3062 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.acl = getelementptr inbounds nuw i8, ptr %.val3062, i64 %i.ack
  store i64 %.0.copyload.i3208, ptr %i.acl, align 1
  %.val3061 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.acm = getelementptr inbounds nuw i8, ptr %.val3061, i64 %i.ack
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acm, i64 8
  store i64 %.0.copyload.i3208, ptr %i.acn, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACallResult0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x2C0x200x28hermes0x3A0x3Avm0x3A0x3Adetail0x3A0x3ACallResultSpecialize0x2920x3E0x20hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3A0x3AcreateEfficientImpl0x3Cchar0x3E0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20llvh0x3A0x3AArrayRef0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x2A0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %i.aci, i32 noundef 0)
  store i32 %i.ach, ptr %i.a, align 8, !tbaa !7
  %.val3025 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aco = getelementptr inbounds nuw i8, ptr %.val3025, i64 %i.aca
  %.0.copyload.i3209 = load i8, ptr %i.aco, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3209) #7, !srcloc !21
  %i.acp = icmp slt i8 %.0.copyload.i3209, 0
  br i1 %i.acp, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  %.val2916 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.acq = getelementptr inbounds nuw i8, ptr %.val2916, i64 %i.aby
  %.0.copyload.i3210 = load i32, ptr %i.acq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3210) #7, !srcloc !19
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i3210) #7
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez
  store i32 %i.b, ptr %i.a, align 8, !tbaa !7
  ret void
}

declare i32 @w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3AtcCompare0x28unsigned0x20long0x20long0x20const0x2A0x2C0x20unsigned0x20long0x20long0x20const0x2A0x2C0x20unsigned0x20int0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3AAPInt0x28unsigned0x20int0x2C0x20llvh0x3A0x3AArrayRef0x3Cunsigned0x20long0x20long0x3E0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3AflipAllBitsSlowCase0x280x29(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3Aoperator0x2B0x2B0x280x29(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3A0x3Areserve0x28unsigned0x20long0x29(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1
end_hunk_2
begin_hunk_3_@w2c_hermes_hermes0x3A0x3Aparser0x3A0x3Adetail0x3A0x3AJSParserImpl0x3A0x3AinitializeIdentifiers0x280x29:bb.a
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 988
  store i32 %i.ic, ptr %i.ie, align 1
  %.val1013 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.if = getelementptr inbounds nuw i8, ptr %.val1013, i64 %i.f
  %.0.copyload.i1242 = load i32, ptr %i.if, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1242) #7, !srcloc !19
  %.val1063 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ig = getelementptr inbounds nuw i8, ptr %.val1063, i64 %i.i
  store i32 6, ptr %i.ig, align 1
  %.val1062 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ih = getelementptr inbounds nuw i8, ptr %.val1062, i64 %i.k
  store i32 29609, ptr %i.ih, align 1
  %.val1141 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ii = getelementptr inbounds nuw i8, ptr %.val1141, i64 %i.k
  %.0.copyload.i1243 = load i64, ptr %i.ii, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1243) #7, !srcloc !22
  %.val1173 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ij = getelementptr inbounds nuw i8, ptr %.val1173, i64 %i.h
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 72
  store i64 %.0.copyload.i1243, ptr %i.ik, align 1
  %i.il = add i32 %i.b, -200
  %i.im = tail call i32 @w2c_hermes_hermes0x3A0x3AStringTable0x3A0x3AgetString0x28llvh0x3A0x3AStringRef0x29(ptr noundef %0, i32 noundef %.0.copyload.i1242, i32 noundef %i.il) #7
  %.val1061 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.in = getelementptr inbounds nuw i8, ptr %.val1061, i64 %i.e
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 996
  store i32 %i.im, ptr %i.io, align 1
  %.val1012 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ip = getelementptr inbounds nuw i8, ptr %.val1012, i64 %i.f
  %.0.copyload.i1244 = load i32, ptr %i.ip, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1244) #7, !srcloc !19
  %.val1060 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iq = getelementptr inbounds nuw i8, ptr %.val1060, i64 %i.i
  store i32 6, ptr %i.iq, align 1
  %.val1059 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ir = getelementptr inbounds nuw i8, ptr %.val1059, i64 %i.k
  store i32 21065, ptr %i.ir, align 1
  %.val1140 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.is = getelementptr inbounds nuw i8, ptr %.val1140, i64 %i.k
  %.0.copyload.i1245 = load i64, ptr %i.is, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1245) #7, !srcloc !22
  %.val1172 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.it = getelementptr inbounds nuw i8, ptr %.val1172, i64 %i.h
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 64
  store i64 %.0.copyload.i1245, ptr %i.iu, align 1
  %i.iv = add i32 %i.b, -208
  %i.iw = tail call i32 @w2c_hermes_hermes0x3A0x3AStringTable0x3A0x3AgetString0x28llvh0x3A0x3AStringRef0x29(ptr noundef %0, i32 noundef %.0.copyload.i1244, i32 noundef %i.iv) #7
  %.val1058 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ix = getelementptr inbounds nuw i8, ptr %.val1058, i64 %i.e
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 992
  store i32 %i.iw, ptr %i.iy, align 1
  %.val1011 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iz = getelementptr inbounds nuw i8, ptr %.val1011, i64 %i.f
  %.0.copyload.i1246 = load i32, ptr %i.iz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1246) #7, !srcloc !19
  %.val1057 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ja = getelementptr inbounds nuw i8, ptr %.val1057, i64 %i.i
  store i32 4, ptr %i.ja, align 1
  %.val1056 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jb = getelementptr inbounds nuw i8, ptr %.val1056, i64 %i.k
  store i32 58932, ptr %i.jb, align 1
  %.val1139 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jc = getelementptr inbounds nuw i8, ptr %.val1139, i64 %i.k
  %.0.copyload.i1247 = load i64, ptr %i.jc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1247) #7, !srcloc !22
  %.val1171 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jd = getelementptr inbounds nuw i8, ptr %.val1171, i64 %i.h
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 56
  store i64 %.0.copyload.i1247, ptr %i.je, align 1
  %i.jf = add i32 %i.b, -216
  %i.jg = tail call i32 @w2c_hermes_hermes0x3A0x3AStringTable0x3A0x3AgetString0x28llvh0x3A0x3AStringRef0x29(ptr noundef %0, i32 noundef %.0.copyload.i1246, i32 noundef %i.jf) #7
  %.val1055 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jh = getelementptr inbounds nuw i8, ptr %.val1055, i64 %i.e
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 1000
  store i32 %i.jg, ptr %i.ji, align 1
  %.val1010 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jj = getelementptr inbounds nuw i8, ptr %.val1010, i64 %i.f
  %.0.copyload.i1248 = load i32, ptr %i.jj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1248) #7, !srcloc !19
  %.val1054 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jk = getelementptr inbounds nuw i8, ptr %.val1054, i64 %i.i
  store i32 5, ptr %i.jk, align 1
  %.val1053 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jl = getelementptr inbounds nuw i8, ptr %.val1053, i64 %i.k
  store i32 46858, ptr %i.jl, align 1
  %.val1138 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jm = getelementptr inbounds nuw i8, ptr %.val1138, i64 %i.k
  %.0.copyload.i1249 = load i64, ptr %i.jm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1249) #7, !srcloc !22
  %.val1170 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jn = getelementptr inbounds nuw i8, ptr %.val1170, i64 %i.h
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 48
  store i64 %.0.copyload.i1249, ptr %i.jo, align 1
  %i.jp = add i32 %i.b, -224
  %i.jq = tail call i32 @w2c_hermes_hermes0x3A0x3AStringTable0x3A0x3AgetString0x28llvh0x3A0x3AStringRef0x29(ptr noundef %0, i32 noundef %.0.copyload.i1248, i32 noundef %i.jp) #7
  %.val1052 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jr = getelementptr inbounds nuw i8, ptr %.val1052, i64 %i.e
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 1004
  store i32 %i.jq, ptr %i.js, align 1
  %.val1009 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jt = getelementptr inbounds nuw i8, ptr %.val1009, i64 %i.f
  %.0.copyload.i1250 = load i32, ptr %i.jt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1250) #7, !srcloc !19
  %.val1051 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ju = getelementptr inbounds nuw i8, ptr %.val1051, i64 %i.i
  store i32 4, ptr %i.ju, align 1
  %.val1050 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jv = getelementptr inbounds nuw i8, ptr %.val1050, i64 %i.k
  store i32 48877, ptr %i.jv, align 1
  %.val1137 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jw = getelementptr inbounds nuw i8, ptr %.val1137, i64 %i.k
  %.0.copyload.i1251 = load i64, ptr %i.jw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1251) #7, !srcloc !22
  %.val1169 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jx = getelementptr inbounds nuw i8, ptr %.val1169, i64 %i.h
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 40
  store i64 %.0.copyload.i1251, ptr %i.jy, align 1
  %i.jz = add i32 %i.b, -232
  %i.ka = tail call i32 @w2c_hermes_hermes0x3A0x3AStringTable0x3A0x3AgetString0x28llvh0x3A0x3AStringRef0x29(ptr noundef %0, i32 noundef %.0.copyload.i1250, i32 noundef %i.jz) #7
  %.val1049 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kb = getelementptr inbounds nuw i8, ptr %.val1049, i64 %i.e
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 1008
  store i32 %i.ka, ptr %i.kc, align 1
  %.val1008 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kd = getelementptr inbounds nuw i8, ptr %.val1008, i64 %i.f
  %.0.copyload.i1252 = load i32, ptr %i.kd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1252) #7, !srcloc !19
  %.val1048 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ke = getelementptr inbounds nuw i8, ptr %.val1048, i64 %i.i
  store i32 5, ptr %i.ke, align 1
  %.val1047 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kf = getelementptr inbounds nuw i8, ptr %.val1047, i64 %i.k
  store i32 55759, ptr %i.kf, align 1
  %.val1136 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kg = getelementptr inbounds nuw i8, ptr %.val1136, i64 %i.k
  %.0.copyload.i1253 = load i64, ptr %i.kg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1253) #7, !srcloc !22
  %.val1168 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kh = getelementptr inbounds nuw i8, ptr %.val1168, i64 %i.h
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 32
  store i64 %.0.copyload.i1253, ptr %i.ki, align 1
  %i.kj = add i32 %i.b, -240
  %i.kk = tail call i32 @w2c_hermes_hermes0x3A0x3AStringTable0x3A0x3AgetString0x28llvh0x3A0x3AStringRef0x29(ptr noundef %0, i32 noundef %.0.copyload.i1252, i32 noundef %i.kj) #7
  %.val1046 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kl = getelementptr inbounds nuw i8, ptr %.val1046, i64 %i.e
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 1012
  store i32 %i.kk, ptr %i.km, align 1
  %.val1007 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kn = getelementptr inbounds nuw i8, ptr %.val1007, i64 %i.f
  %.0.copyload.i1254 = load i32, ptr %i.kn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1254) #7, !srcloc !19
  %.val1045 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ko = getelementptr inbounds nuw i8, ptr %.val1045, i64 %i.i
  store i32 5, ptr %i.ko, align 1
  %.val1044 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kp = getelementptr inbounds nuw i8, ptr %.val1044, i64 %i.k
  store i32 28839, ptr %i.kp, align 1
  %.val1135 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kq = getelementptr inbounds nuw i8, ptr %.val1135, i64 %i.k
  %.0.copyload.i1255 = load i64, ptr %i.kq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1255) #7, !srcloc !22
  %.val1167 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kr = getelementptr inbounds nuw i8, ptr %.val1167, i64 %i.h
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 24
  store i64 %.0.copyload.i1255, ptr %i.ks, align 1
  %i.kt = add i32 %i.b, -248
  %i.ku = tail call i32 @w2c_hermes_hermes0x3A0x3AStringTable0x3A0x3AgetString0x28llvh0x3A0x3AStringRef0x29(ptr noundef %0, i32 noundef %.0.copyload.i1254, i32 noundef %i.kt) #7
  %.val1043 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kv = getelementptr inbounds nuw i8, ptr %.val1043, i64 %i.e
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 1016
  store i32 %i.ku, ptr %i.kw, align 1
  %.val1006 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kx = getelementptr inbounds nuw i8, ptr %.val1006, i64 %i.f
  %.0.copyload.i1256 = load i32, ptr %i.kx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1256) #7, !srcloc !19
  %.val1042 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ky = getelementptr inbounds nuw i8, ptr %.val1042, i64 %i.i
  store i32 6, ptr %i.ky, align 1
  %.val1041 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kz = getelementptr inbounds nuw i8, ptr %.val1041, i64 %i.k
  store i32 21072, ptr %i.kz, align 1
  %.val1134 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.la = getelementptr inbounds nuw i8, ptr %.val1134, i64 %i.k
  %.0.copyload.i1257 = load i64, ptr %i.la, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1257) #7, !srcloc !22
  %.val1166 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lb = getelementptr inbounds nuw i8, ptr %.val1166, i64 %i.h
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  store i64 %.0.copyload.i1257, ptr %i.lc, align 1
  %i.ld = add i32 %i.b, -256
  %i.le = tail call i32 @w2c_hermes_hermes0x3A0x3AStringTable0x3A0x3AgetString0x28llvh0x3A0x3AStringRef0x29(ptr noundef %0, i32 noundef %.0.copyload.i1256, i32 noundef %i.ld) #7
  %.val1040 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lf = getelementptr inbounds nuw i8, ptr %.val1040, i64 %i.e
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 1020
  store i32 %i.le, ptr %i.lg, align 1
  %i.lh = add i32 %1, 1024
  %i.li = add i32 %i.b, -264
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %i.lj = shl i64 %indvars.iv, 2                  ; 2 uses
  %.val1005 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lk = getelementptr inbounds nuw i8, ptr %.val1005, i64 %i.lj
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 262192
  %.0.copyload.i1258 = load i32, ptr %i.ll, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1258) #7, !srcloc !19
  %.not = icmp eq i32 %.0.copyload.i1258, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.lm = tail call i32 @w2c_hermes_strlen(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1258) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.lm, %bb.c ], [ 0, %bb.b ]
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ln = getelementptr inbounds nuw i8, ptr %.val, i64 %i.f
  %.0.copyload.i1259 = load i32, ptr %i.ln, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1259) #7, !srcloc !19
  %.val1039 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lo = getelementptr inbounds nuw i8, ptr %.val1039, i64 %i.i
  store i32 %.0, ptr %i.lo, align 1
  %.val1038 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lp = getelementptr inbounds nuw i8, ptr %.val1038, i64 %i.k
  store i32 %.0.copyload.i1258, ptr %i.lp, align 1
  %.val1133 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lq = getelementptr inbounds nuw i8, ptr %.val1133, i64 %i.k
  %.0.copyload.i1260 = load i64, ptr %i.lq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1260) #7, !srcloc !22
  %.val1165 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lr = getelementptr inbounds nuw i8, ptr %.val1165, i64 %i.h
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  store i64 %.0.copyload.i1260, ptr %i.ls, align 1
  %i.lt = trunc nuw nsw i64 %i.lj to i32
  %i.lu = add i32 %i.lh, %i.lt
  %i.lv = tail call i32 @w2c_hermes_hermes0x3A0x3AStringTable0x3A0x3AgetString0x28llvh0x3A0x3AStringRef0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1259, i32 noundef %i.li) #7
  %i.lw = zext i32 %i.lu to i64
  %.val1037 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lx = getelementptr inbounds nuw i8, ptr %.val1037, i64 %i.lw
  store i32 %i.lv, ptr %i.lx, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not1004 = icmp eq i64 %indvars.iv.next, 122
  br i1 %.not1004, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  store i32 %i.b, ptr %i.a, align 8, !tbaa !7
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Aparser0x3A0x3AJSLexer0x3A0x3AerrorRange0x28llvh0x3A0x3ASMLoc0x2C0x20llvh0x3A0x3ATwine0x20const0x260x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = add i32 %i.b, -16                        ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 10 uses
  %i.e = zext i32 %1 to i64                       ; 4 uses
  %.val57 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val57, i64 %i.e
  %.0.copyload.i = load i32, ptr %i.f, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %i.g = add nuw nsw i64 %i.e, 80                 ; 2 uses
  %.val56 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val56, i64 %i.g
  %.0.copyload.i64 = load i32, ptr %i.h, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i64) #7, !srcloc !19
  %i.i = zext i32 %i.c to i64                     ; 3 uses
  %.val61 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %.val61, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 %.0.copyload.i64, ptr %i.k, align 1
  %i.l = add nuw nsw i64 %i.i, 8                  ; 2 uses
  %.val60 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %.val60, i64 %i.l
  store i32 %2, ptr %i.m, align 1
  %.val62 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %.val62, i64 %i.l
  %.0.copyload.i65 = load i64, ptr %i.n, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i65) #7, !srcloc !22
  %.val63 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %.val63, i64 %i.i
  store i64 %.0.copyload.i65, ptr %i.o, align 1
  tail call void @w2c_hermes_hermes0x3A0x3ASourceErrorManager0x3A0x3Amessage0x28hermes0x3A0x3ASourceErrorManager0x3A0x3ADiagKind0x2C0x20llvh0x3A0x3ASMRange0x2C0x20llvh0x3A0x3ATwine0x20const0x260x2C0x20hermes0x3A0x3ASubsystem0x29(ptr noundef %0, i32 noundef %.0.copyload.i, i32 noundef 0, i32 noundef %i.c, i32 noundef %3, i32 noundef 1) #7
  %.val55 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %.val55, i64 %i.e
  %.0.copyload.i66 = load i32, ptr %i.p, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i66) #7, !srcloc !19
  %i.q = zext i32 %.0.copyload.i66 to i64
  %.val58 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %.val58, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 148
  %.0.copyload.i67 = load i8, ptr %i.s, align 1   ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i67) #7, !srcloc !20
  %.not = icmp eq i8 %.0.copyload.i67, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 %i.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 84
  %.0.copyload.i68 = load i32, ptr %i.u, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i68) #7, !srcloc !19
  %.val59 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %.val59, i64 %i.g
  store i32 %.0.copyload.i68, ptr %i.v, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i32 %i.b, ptr %i.a, align 8, !tbaa !7
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Airgen0x3A0x3ApopulateNameTable0x28hermes0x3A0x3AScopedHashTable0x3Chermes0x3A0x3AIdentifier0x2C0x20hermes0x3A0x3AValue0x2A0x3E0x260x2C0x20hermes0x3A0x3AScopeDesc0x2A0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 3 uses
  %i.c = add i32 %i.b, -16                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 52 uses
  %i.e = zext i32 %2 to i64                       ; 5 uses
  %.val598 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val598, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %.0.copyload.i = load i32, ptr %i.g, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %.not = icmp eq i32 %.0.copyload.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @w2c_hermes_hermes0x3A0x3Airgen0x3A0x3ApopulateNameTable0x28hermes0x3A0x3AScopedHashTable0x3Chermes0x3A0x3AIdentifier0x2C0x20hermes0x3A0x3AValue0x2A0x3E0x260x2C0x20hermes0x3A0x3AScopeDesc0x2A0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.0.copyload.i)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.val597 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val597, i64 %i.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 76
  %.0.copyload.i616 = load i32, ptr %i.i, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i616) #7, !srcloc !19
  %.val596 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %.val596, i64 %i.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %.0.copyload.i617 = load i32, ptr %i.k, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i617) #7, !srcloc !19
  %.not548 = icmp eq i32 %.0.copyload.i617, 0     ; 2 uses
  br i1 %.not548, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = zext i32 %.0.copyload.i617 to i64
  %i.m = add nuw nsw i64 %i.l, 4                  ; 2 uses
  %.val595 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %.val595, i64 %i.m
  %.0.copyload.i618 = load i32, ptr %i.n, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i618) #7, !srcloc !19
  %i.o = add i32 %.0.copyload.i618, 1
  %.val615 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %.val615, i64 %i.m
  store i32 %i.o, ptr %i.p, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not549 = icmp eq i32 %.0.copyload.i616, 0
  br i1 %.not549, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = zext i32 %.0.copyload.i616 to i64
  %.val594 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %.val594, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %.0.copyload.i619 = load i32, ptr %i.s, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i619) #7, !srcloc !19
  %.not550 = icmp eq i32 %.0.copyload.i619, 0
  br i1 %.not550, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = zext i32 %1 to i64                       ; 3 uses
  %.val593 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %.val593, i64 %i.t
  %.0.copyload.i620 = load i32, ptr %i.u, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i620) #7, !srcloc !19
  %.val592 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %.val592, i64 %i.t
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %.0.copyload.i621 = load i32, ptr %i.w, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i621) #7, !srcloc !19
  %.not551 = icmp eq i32 %.0.copyload.i621, 0     ; 2 uses
  br i1 %.not551, label %.loopexit655, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = add i32 %.0.copyload.i621, -1            ; 2 uses
  %i.y = lshr i32 %.0.copyload.i619, 4
  %i.z = lshr i32 %.0.copyload.i619, 9
  %i.aa = xor i32 %i.y, %i.z
  %i.ab = and i32 %i.x, %i.aa                     ; 2 uses
  %i.ac = shl nuw nsw i32 %i.ab, 3
  %i.ad = add i32 %i.ac, %.0.copyload.i620        ; 2 uses
  %i.ae = zext i32 %i.ad to i64
  %.val591 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %.val591, i64 %i.ae
  %.0.copyload.i622 = load i32, ptr %i.af, align 1 ; 3 uses
end_hunk_3
