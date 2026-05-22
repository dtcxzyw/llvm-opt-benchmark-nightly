inline.NumInlined: 16806
inline.NumDeleted: 26
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AsymbolFor0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
bb.k:                                             ; preds = %bb.j
  %.val960 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %.val960, i64 %i.ay
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %.0.copyload.i983 = load i64, ptr %i.bf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i983) #8, !srcloc !20
  %i.bg = zext i32 %i.c to i64                    ; 3 uses
  %.val971 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bh = trunc i64 %.0.copyload.i983 to i32
  %i.bi = getelementptr inbounds nuw i8, ptr %.val971, i64 %i.bg
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i32 %i.bh, ptr %i.bj, align 1
  %.val968 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %.val968, i64 %i.bg
  br label %bb.as

.thread:                                          ; preds = %bb.i, %bb.f, %bb.f, %bb.j
  %i.bl = add i32 %i.ad, -8
  %i.bm = add i32 %3, 5476
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AIdentifierTable0x3A0x3AcreateNotUniquedSymbol0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.bl, i32 noundef %i.bm, i32 noundef %3, i32 noundef %.0844) #8
  %i.bn = zext i32 %i.ae to i64                   ; 2 uses
  %.val964 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %.val964, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  %.0.copyload.i984 = load i8, ptr %i.bp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i984) #8, !srcloc !21
  %.not871 = icmp eq i8 %.0.copyload.i984, 0
  br i1 %.not871, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.thread
  %i.bq = zext i32 %i.c to i64                    ; 2 uses
  %.val967 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.br = getelementptr inbounds nuw i8, ptr %.val967, i64 %i.bq
  br label %bb.as

bb.m:                                             ; preds = %.thread
  %.val970 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bs = getelementptr inbounds nuw i8, ptr %.val970, i64 %i.bn
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.0.copyload.i985 = load i32, ptr %i.bt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i985) #8, !srcloc !23
  %i.bu = zext i32 %.0.copyload.i985 to i64
  %i.bv = or disjoint i64 %i.bu, -1266637395197952 ; 2 uses
  %.val936 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bw = getelementptr inbounds nuw i8, ptr %.val936, i64 %i.q
  %.0.copyload.i986 = load i32, ptr %i.bw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i986) #8, !srcloc !19
  %i.bx = zext i32 %.0.copyload.i986 to i64       ; 2 uses
  %i.by = add nuw nsw i64 %i.bx, 164              ; 2 uses
  %.val935 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bz = getelementptr inbounds nuw i8, ptr %.val935, i64 %i.by
  %.0.copyload.i987 = load i32, ptr %i.bz, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i987) #8, !srcloc !19
  %.val934 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ca = getelementptr inbounds nuw i8, ptr %.val934, i64 %i.bx
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 168
  %.0.copyload.i988 = load i32, ptr %i.cb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i988) #8, !srcloc !19
  %i.cc = icmp ult i32 %.0.copyload.i987, %.0.copyload.i988
  br i1 %i.cc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cd = add i32 %.0.copyload.i987, 8
  %.val909 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ce = getelementptr inbounds nuw i8, ptr %.val909, i64 %i.by
  store i32 %i.cd, ptr %i.ce, align 1
  %i.cf = zext i32 %.0.copyload.i987 to i64
  %.val958 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cg = getelementptr inbounds nuw i8, ptr %.val958, i64 %i.cf
  store i64 %i.bv, ptr %i.cg, align 1
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ch = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i986, i64 noundef %i.bv) #8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0829 = phi i32 [ %.0.copyload.i987, %bb.n ], [ %i.ch, %bb.o ] ; 2 uses
  %i.ci = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AOrderedHashMap0x3A0x3Ainsert0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AOrderedHashMap0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.ag, i32 noundef %3, i32 noundef %.0844, i32 noundef %.0829) #8
  %.not872 = icmp eq i32 %i.ci, 0
  %.val966 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %.not872, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cj = zext i32 %i.c to i64                    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.val966, i64 %i.cj
  br label %bb.as

bb.r:                                             ; preds = %bb.p
  %i.cl = zext i32 %.0829 to i64                  ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.val966, i64 %i.cl
  %.0.copyload.i989 = load i32, ptr %i.cm, align 1 ; 10 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i989) #8, !srcloc !19
  %i.cn = add nuw nsw i64 %i.ah, 20               ; 5 uses
  %.val932 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.co = getelementptr inbounds nuw i8, ptr %.val932, i64 %i.cn
  %.0.copyload.i990 = load i32, ptr %i.co, align 1 ; 8 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i990) #8, !srcloc !19
  %.not873 = icmp eq i32 %.0.copyload.i990, 0
  br i1 %.not873, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.val931 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cp = getelementptr inbounds nuw i8, ptr %.val931, i64 %i.ah
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %.0.copyload.i991 = load i32, ptr %i.cq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i991) #8, !srcloc !19
  %i.cr = add i32 %.0.copyload.i990, -1           ; 2 uses
  %i.cs = mul i32 %.0.copyload.i989, 37
  %i.ct = and i32 %i.cr, %i.cs                    ; 2 uses
  %i.cu = shl i32 %i.ct, 2
  %i.cv = add i32 %.0.copyload.i991, %i.cu        ; 2 uses
  %i.cw = zext i32 %i.cv to i64
  %.val930 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cx = getelementptr inbounds nuw i8, ptr %.val930, i64 %i.cw
  %.0.copyload.i992 = load i32, ptr %i.cx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i992) #8, !srcloc !19
  %i.cy = icmp eq i32 %.0.copyload.i992, %.0.copyload.i989
  br i1 %i.cy, label %.loopexit1025, label %.preheader1024

.preheader1024:                                   ; preds = %bb.s, %bb.u
  %.1845 = phi i32 [ %i.df, %bb.u ], [ 1, %bb.s ] ; 2 uses
  %.1840 = phi i32 [ %.0.copyload.i993, %bb.u ], [ %.0.copyload.i992, %bb.s ] ; 2 uses
  %.0835 = phi i32 [ %i.dd, %bb.u ], [ 0, %bb.s ] ; 3 uses
  %.0833 = phi i32 [ %i.di, %bb.u ], [ %i.cv, %bb.s ] ; 2 uses
  %.0832 = phi i32 [ %i.dg, %bb.u ], [ %i.ct, %bb.s ]
  %i.cz = icmp eq i32 %.1840, 536870911
  %.not876 = icmp eq i32 %.0835, 0                ; 2 uses
  br i1 %i.cz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.preheader1024
  %i.da = select i1 %.not876, i32 %.0833, i32 %.0835
  br label %bb.v

bb.u:                                             ; preds = %.preheader1024
  %i.db = icmp eq i32 %.1840, 536870910
  %i.dc = select i1 %i.db, i1 %.not876, i1 false
  %i.dd = select i1 %i.dc, i32 %.0833, i32 %.0835
  %i.de = add i32 %.0832, %.1845
  %i.df = add i32 %.1845, 1
  %i.dg = and i32 %i.de, %i.cr                    ; 2 uses
  %i.dh = shl i32 %i.dg, 2
  %i.di = add i32 %i.dh, %.0.copyload.i991        ; 2 uses
  %i.dj = zext i32 %i.di to i64
  %.val929 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dk = getelementptr inbounds nuw i8, ptr %.val929, i64 %i.dj
  %.0.copyload.i993 = load i32, ptr %i.dk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i993) #8, !srcloc !19
  %.not875 = icmp eq i32 %.0.copyload.i993, %.0.copyload.i989
  br i1 %.not875, label %.loopexit1025, label %.preheader1024

bb.v:                                             ; preds = %bb.r, %bb.t
  %.2841 = phi i32 [ %i.da, %bb.t ], [ 0, %bb.r ]
  %i.dl = add nuw nsw i64 %i.ah, 12               ; 5 uses
  %.val928 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dm = getelementptr inbounds nuw i8, ptr %.val928, i64 %i.dl
  %.0.copyload.i994 = load i32, ptr %i.dm, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i994) #8, !srcloc !19
  %i.dn = shl i32 %.0.copyload.i994, 2
  %i.do = add i32 %i.dn, 4
  %i.dp = mul i32 %.0.copyload.i990, 3
  %.not877 = icmp ult i32 %i.do, %i.dp
  br i1 %.not877, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dq = shl i32 %.0.copyload.i990, 1
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.dr = xor i32 %.0.copyload.i994, -1
  %i.ds = add i32 %.0.copyload.i990, %i.dr
  %.val927 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dt = getelementptr inbounds nuw i8, ptr %.val927, i64 %i.ah
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %.0.copyload.i995 = load i32, ptr %i.du, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i995) #8, !srcloc !19
  %i.dv = sub i32 %i.ds, %.0.copyload.i995
  %i.dw = lshr i32 %.0.copyload.i990, 3
  %i.dx = icmp ugt i32 %i.dv, %i.dw
  br i1 %i.dx, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.0847 = phi i32 [ %i.dq, %bb.w ], [ %.0.copyload.i990, %bb.x ]
  %.val926 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dy = getelementptr inbounds nuw i8, ptr %.val926, i64 %i.cn
  %.0.copyload.i996 = load i32, ptr %i.dy, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i996) #8, !srcloc !19
  %i.dz = add i32 %.0847, -1
  %i.ea = zext i32 %i.dz to i64                   ; 2 uses
  %i.eb = lshr i64 %i.ea, 1
  %i.ec = or i64 %i.eb, %i.ea                     ; 2 uses
  %i.ed = lshr i64 %i.ec, 2
  %i.ee = or i64 %i.ed, %i.ec                     ; 2 uses
  %i.ef = lshr i64 %i.ee, 4
  %i.eg = or i64 %i.ef, %i.ee                     ; 2 uses
  %i.eh = lshr i64 %i.eg, 8
  %i.ei = or i64 %i.eh, %i.eg                     ; 2 uses
  %i.ej = lshr i64 %i.ei, 16
  %i.ek = or i64 %i.ej, %i.ei
  %i.el = trunc nuw i64 %i.ek to i32
  %i.em = add i32 %i.el, 1
  %5 = tail call i32 @llvm.umax.i32(i32 %i.em, i32 64) ; 2 uses
  %.val908 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.en = getelementptr inbounds nuw i8, ptr %.val908, i64 %i.cn
  store i32 %5, ptr %i.en, align 1
  %i.eo = add nuw nsw i64 %i.ah, 8                ; 3 uses
  %.val925 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ep = getelementptr inbounds nuw i8, ptr %.val925, i64 %i.eo
  %.0.copyload.i997 = load i32, ptr %i.ep, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i997) #8, !srcloc !19
  %i.eq = shl i32 %5, 2
  %i.er = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.eq) #8 ; 23 uses
  %.val907 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.es = getelementptr inbounds nuw i8, ptr %.val907, i64 %i.eo
  store i32 %i.er, ptr %i.es, align 1
  %.not878 = icmp eq i32 %.0.copyload.i997, 0
  %.val957 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.et = getelementptr inbounds nuw i8, ptr %.val957, i64 %i.dl
  store i64 0, ptr %i.et, align 1
  %.val924 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eu = getelementptr inbounds nuw i8, ptr %.val924, i64 %i.cn
  %.0.copyload.i998 = load i32, ptr %i.eu, align 1 ; 9 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i998) #8
  %.not889 = icmp eq i32 %.0.copyload.i998, 0     ; 2 uses
  br i1 %.not878, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y
  br i1 %.not889, label %.loopexit1015, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ev = and i32 %.0.copyload.i998, 7            ; 7 uses
  %.not890 = icmp eq i32 %i.ev, 0
  br i1 %.not890, label %.loopexit1017, label %.preheader1016

.preheader1016:                                   ; preds = %bb.aa
  %i.ew = zext i32 %i.er to i64
  %.val906 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ex = getelementptr inbounds nuw i8, ptr %.val906, i64 %i.ew
  store i32 536870911, ptr %i.ex, align 1
  %i.ey = add i32 %i.er, 4                        ; 2 uses
  %.not891 = icmp eq i32 %i.ev, 1
  br i1 %.not891, label %.loopexit1017, label %.preheader1016.1

.preheader1016.1:                                 ; preds = %.preheader1016
  %i.ez = zext i32 %i.ey to i64
  %.val906.1 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fa = getelementptr inbounds nuw i8, ptr %.val906.1, i64 %i.ez
  store i32 536870911, ptr %i.fa, align 1
  %i.fb = add i32 %i.er, 8                        ; 2 uses
  %.not891.1 = icmp eq i32 %i.ev, 2
  br i1 %.not891.1, label %.loopexit1017, label %.preheader1016.2

.preheader1016.2:                                 ; preds = %.preheader1016.1
  %i.fc = zext i32 %i.fb to i64
  %.val906.2 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fd = getelementptr inbounds nuw i8, ptr %.val906.2, i64 %i.fc
  store i32 536870911, ptr %i.fd, align 1
  %i.fe = add i32 %i.er, 12                       ; 2 uses
  %.not891.2 = icmp eq i32 %i.ev, 3
  br i1 %.not891.2, label %.loopexit1017, label %.preheader1016.3

.preheader1016.3:                                 ; preds = %.preheader1016.2
  %i.ff = zext i32 %i.fe to i64
  %.val906.3 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fg = getelementptr inbounds nuw i8, ptr %.val906.3, i64 %i.ff
  store i32 536870911, ptr %i.fg, align 1
  %i.fh = add i32 %i.er, 16                       ; 2 uses
  %.not891.3 = icmp eq i32 %i.ev, 4
  br i1 %.not891.3, label %.loopexit1017, label %.preheader1016.4

.preheader1016.4:                                 ; preds = %.preheader1016.3
  %i.fi = zext i32 %i.fh to i64
  %.val906.4 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fj = getelementptr inbounds nuw i8, ptr %.val906.4, i64 %i.fi
  store i32 536870911, ptr %i.fj, align 1
  %i.fk = add i32 %i.er, 20                       ; 2 uses
  %.not891.4 = icmp eq i32 %i.ev, 5
  br i1 %.not891.4, label %.loopexit1017, label %.preheader1016.5

.preheader1016.5:                                 ; preds = %.preheader1016.4
  %i.fl = zext i32 %i.fk to i64
  %.val906.5 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fm = getelementptr inbounds nuw i8, ptr %.val906.5, i64 %i.fl
  store i32 536870911, ptr %i.fm, align 1
  %i.fn = add i32 %i.er, 24                       ; 2 uses
  %.not891.5 = icmp eq i32 %i.ev, 6
  br i1 %.not891.5, label %.loopexit1017, label %.preheader1016.6

.preheader1016.6:                                 ; preds = %.preheader1016.5
  %i.fo = zext i32 %i.fn to i64
  %.val906.6 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fp = getelementptr inbounds nuw i8, ptr %.val906.6, i64 %i.fo
  store i32 536870911, ptr %i.fp, align 1
  %i.fq = add i32 %i.er, 28
  br label %.loopexit1017

.loopexit1017:                                    ; preds = %.preheader1016, %.preheader1016.1, %.preheader1016.2, %.preheader1016.3, %.preheader1016.4, %.preheader1016.5, %.preheader1016.6, %bb.aa
  %.2849 = phi i32 [ %i.er, %bb.aa ], [ %i.ey, %.preheader1016 ], [ %i.fb, %.preheader1016.1 ], [ %i.fe, %.preheader1016.2 ], [ %i.fh, %.preheader1016.3 ], [ %i.fk, %.preheader1016.4 ], [ %i.fn, %.preheader1016.5 ], [ %i.fq, %.preheader1016.6 ]
  %i.fr = add i32 %.0.copyload.i998, 1073741823
  %i.fs = and i32 %i.fr, 1073741823
  %i.ft = icmp samesign ult i32 %i.fs, 7
  br i1 %i.ft, label %.loopexit1015, label %bb.ab

bb.ab:                                            ; preds = %.loopexit1017
  %i.fu = shl i32 %.0.copyload.i998, 2
  %i.fv = add i32 %i.fu, %i.er
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %bb.ab
  %.3850 = phi i32 [ %.2849, %bb.ab ], [ %i.ge, %bb.ac ] ; 2 uses
  %i.fw = zext i32 %.3850 to i64                  ; 4 uses
  %.val956 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fx = getelementptr inbounds nuw i8, ptr %.val956, i64 %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  store i64 2305843005455597567, ptr %i.fy, align 1
  %.val955 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fz = getelementptr inbounds nuw i8, ptr %.val955, i64 %i.fw
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  store i64 2305843005455597567, ptr %i.ga, align 1
  %.val954 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gb = getelementptr inbounds nuw i8, ptr %.val954, i64 %i.fw
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  store i64 2305843005455597567, ptr %i.gc, align 1
  %.val953 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gd = getelementptr inbounds nuw i8, ptr %.val953, i64 %i.fw
  store i64 2305843005455597567, ptr %i.gd, align 1
  %i.ge = add i32 %.3850, 32                      ; 2 uses
  %.not892 = icmp eq i32 %i.ge, %i.fv
  br i1 %.not892, label %.loopexit1015, label %bb.ac

bb.ad:                                            ; preds = %bb.y
  br i1 %.not889, label %.loopexit1021, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gf = and i32 %.0.copyload.i998, 7            ; 7 uses
  %.not880 = icmp eq i32 %i.gf, 0
  br i1 %.not880, label %.loopexit1023, label %.preheader1022

.preheader1022:                                   ; preds = %bb.ae
  %i.gg = zext i32 %i.er to i64
  %.val905 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gh = getelementptr inbounds nuw i8, ptr %.val905, i64 %i.gg
  store i32 536870911, ptr %i.gh, align 1
  %i.gi = add i32 %i.er, 4                        ; 2 uses
  %.not881 = icmp eq i32 %i.gf, 1
  br i1 %.not881, label %.loopexit1023, label %.preheader1022.1

.preheader1022.1:                                 ; preds = %.preheader1022
  %i.gj = zext i32 %i.gi to i64
  %.val905.1 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gk = getelementptr inbounds nuw i8, ptr %.val905.1, i64 %i.gj
  store i32 536870911, ptr %i.gk, align 1
  %i.gl = add i32 %i.er, 8                        ; 2 uses
  %.not881.1 = icmp eq i32 %i.gf, 2
  br i1 %.not881.1, label %.loopexit1023, label %.preheader1022.2

.preheader1022.2:                                 ; preds = %.preheader1022.1
  %i.gm = zext i32 %i.gl to i64
  %.val905.2 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gn = getelementptr inbounds nuw i8, ptr %.val905.2, i64 %i.gm
  store i32 536870911, ptr %i.gn, align 1
  %i.go = add i32 %i.er, 12                       ; 2 uses
  %.not881.2 = icmp eq i32 %i.gf, 3
  br i1 %.not881.2, label %.loopexit1023, label %.preheader1022.3

.preheader1022.3:                                 ; preds = %.preheader1022.2
  %i.gp = zext i32 %i.go to i64
  %.val905.3 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gq = getelementptr inbounds nuw i8, ptr %.val905.3, i64 %i.gp
  store i32 536870911, ptr %i.gq, align 1
  %i.gr = add i32 %i.er, 16                       ; 2 uses
  %.not881.3 = icmp eq i32 %i.gf, 4
  br i1 %.not881.3, label %.loopexit1023, label %.preheader1022.4

.preheader1022.4:                                 ; preds = %.preheader1022.3
  %i.gs = zext i32 %i.gr to i64
  %.val905.4 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gt = getelementptr inbounds nuw i8, ptr %.val905.4, i64 %i.gs
  store i32 536870911, ptr %i.gt, align 1
  %i.gu = add i32 %i.er, 20                       ; 2 uses
  %.not881.4 = icmp eq i32 %i.gf, 5
  br i1 %.not881.4, label %.loopexit1023, label %.preheader1022.5

.preheader1022.5:                                 ; preds = %.preheader1022.4
  %i.gv = zext i32 %i.gu to i64
  %.val905.5 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gw = getelementptr inbounds nuw i8, ptr %.val905.5, i64 %i.gv
  store i32 536870911, ptr %i.gw, align 1
  %i.gx = add i32 %i.er, 24                       ; 2 uses
  %.not881.5 = icmp eq i32 %i.gf, 6
  br i1 %.not881.5, label %.loopexit1023, label %.preheader1022.6

.preheader1022.6:                                 ; preds = %.preheader1022.5
  %i.gy = zext i32 %i.gx to i64
  %.val905.6 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gz = getelementptr inbounds nuw i8, ptr %.val905.6, i64 %i.gy
  store i32 536870911, ptr %i.gz, align 1
  %i.ha = add i32 %i.er, 28
  br label %.loopexit1023

.loopexit1023:                                    ; preds = %.preheader1022, %.preheader1022.1, %.preheader1022.2, %.preheader1022.3, %.preheader1022.4, %.preheader1022.5, %.preheader1022.6, %bb.ae
  %.5 = phi i32 [ %i.er, %bb.ae ], [ %i.gi, %.preheader1022 ], [ %i.gl, %.preheader1022.1 ], [ %i.go, %.preheader1022.2 ], [ %i.gr, %.preheader1022.3 ], [ %i.gu, %.preheader1022.4 ], [ %i.gx, %.preheader1022.5 ], [ %i.ha, %.preheader1022.6 ]
  %i.hb = add i32 %.0.copyload.i998, 1073741823
  %i.hc = and i32 %i.hb, 1073741823
  %i.hd = icmp samesign ult i32 %i.hc, 7
  br i1 %i.hd, label %.loopexit1021, label %bb.af

bb.af:                                            ; preds = %.loopexit1023
  %i.he = shl i32 %.0.copyload.i998, 2
  %i.hf = add i32 %i.he, %i.er
  br label %bb.ag
end_hunk_0
