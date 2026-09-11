Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_5?download=true
inline.NumInlined: 16806
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AobjectAssign0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
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
  %i.fs = sub nuw i32 %.1, %.0.copyload.i1019     ; 4 uses
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
end_hunk_0
begin_hunk_1_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AobjectAssign0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a

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
  store i32 %i.b, ptr %i.a, align 8, !tbaa !17
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AnumberPrototypeValueOf0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  %i.c = add i32 %i.b, -48                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !17
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
  store i32 %i.b, ptr %i.a, align 8, !tbaa !17
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AnumberPrototypeToString0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 5 uses
  %i.c = add i32 %i.b, -64                        ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !17
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
end_hunk_1
