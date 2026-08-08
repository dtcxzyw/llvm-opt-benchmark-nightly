inline.NumInlined: 39
inline.NumDeleted: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 0, 2) i32 @EVP_EncodedLength(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp ult i64 %1, -4611686018427387906
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = add nuw i64 %1, 2
  %i.b = udiv i64 %i.a, 3
  %i.c = shl nuw i64 %i.b, 2
  %i.d = or disjoint i64 %i.c, 1
  store i64 %i.d, ptr %0, align 8, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @EVP_ENCODE_CTX_new() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @OPENSSL_zalloc(i64 noundef 56) #8
  ret ptr %i.a
}

declare ptr @OPENSSL_zalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define void @EVP_ENCODE_CTX_free(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  tail call void @OPENSSL_free(ptr noundef %0) #8
  ret void
}

declare void @OPENSSL_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @EVP_EncodeInit(ptr nofree noundef writeonly captures(none) initializes((0, 56)) %0) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind memory(argmem: readwrite) uwtable
define void @EVP_EncodeUpdate(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4) local_unnamed_addr #3 {
bb.a:
  store i32 0, ptr %2, align 4, !tbaa !13
  %i.a = icmp eq i64 %4, 0
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 4, !tbaa !14     ; 4 uses
  %i.c = zext i32 %i.b to i64                     ; 3 uses
  %i.d = sub nsw i64 48, %i.c                     ; 4 uses
  %i.e = icmp ugt i64 %i.d, %4
  br i1 %i.e, label %_ZL14OPENSSL_memcpyPvPKvm.exit, label %bb.c

_ZL14OPENSSL_memcpyPvPKvm.exit:                   ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.g, ptr readonly align 1 %3, i64 %4, i1 false)
  %i.h = trunc i64 %4 to i32
  %i.i = add i32 %i.b, %i.h
  store i32 %i.i, ptr %0, align 4, !tbaa !14
  br label %bb.i

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.k = icmp eq i32 %i.b, 48
  br i1 %i.k, label %_ZL14OPENSSL_memcpyPvPKvm.exit63, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr readonly align 1 %3, i64 %i.d, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit63

_ZL14OPENSSL_memcpyPvPKvm.exit63:                 ; preds = %bb.d, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 %i.d
  %i.n = sub i64 %4, %i.d
  %i.o = tail call i64 @EVP_EncodeBlock(ptr noundef %1, ptr noundef nonnull %i.j, i64 noundef 48) ; 2 uses
  store i32 0, ptr %0, align 4, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  store i8 10, ptr %i.p, align 1, !tbaa !16
  store i8 0, ptr %i.q, align 1, !tbaa !16
  %i.r = add i64 %i.o, 1
  br label %bb.f

bb.f:                                             ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit63, %bb.c
  %.057 = phi i64 [ %i.r, %_ZL14OPENSSL_memcpyPvPKvm.exit63 ], [ 0, %bb.c ] ; 2 uses
  %.054 = phi i64 [ %i.n, %_ZL14OPENSSL_memcpyPvPKvm.exit63 ], [ %4, %bb.c ] ; 3 uses
  %.052 = phi ptr [ %i.m, %_ZL14OPENSSL_memcpyPvPKvm.exit63 ], [ %3, %bb.c ] ; 2 uses
  %.0 = phi ptr [ %i.q, %_ZL14OPENSSL_memcpyPvPKvm.exit63 ], [ %1, %bb.c ]
  %i.s = icmp ugt i64 %.054, 47
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %.172 = phi ptr [ %i.v, %bb.g ], [ %.0, %bb.f ] ; 2 uses
  %.15371 = phi ptr [ %i.y, %bb.g ], [ %.052, %bb.f ] ; 2 uses
  %.15570 = phi i64 [ %i.x, %bb.g ], [ %.054, %bb.f ]
  %.15869 = phi i64 [ %i.aa, %bb.g ], [ %.057, %bb.f ] ; 2 uses
  %i.t = tail call i64 @EVP_EncodeBlock(ptr noundef %.172, ptr noundef %.15371, i64 noundef 48) ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.172, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1 ; 2 uses
  store i8 10, ptr %i.u, align 1, !tbaa !16
  store i8 0, ptr %i.v, align 1, !tbaa !16
  %i.w = sub i64 -2, %i.t
  %.not62 = icmp ult i64 %i.w, %.15869
  br i1 %.not62, label %.thread, label %bb.g

.thread:                                          ; preds = %.lr.ph
  store i32 0, ptr %2, align 4, !tbaa !13
  br label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.x = add i64 %.15570, -48                     ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.15371, i64 48 ; 2 uses
  %i.z = add i64 %.15869, 1
  %i.aa = add i64 %i.z, %i.t                      ; 2 uses
  %i.ab = icmp ugt i64 %i.x, 47
  br i1 %i.ab, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g, %bb.f
  %.158.lcssa = phi i64 [ %.057, %bb.f ], [ %i.aa, %bb.g ] ; 2 uses
  %.155.lcssa = phi i64 [ %.054, %bb.f ], [ %i.x, %bb.g ] ; 3 uses
  %.153.lcssa = phi ptr [ %.052, %bb.f ], [ %i.y, %bb.g ]
  %.not61 = icmp eq i64 %.155.lcssa, 0
  br i1 %.not61, label %bb.h, label %_ZL14OPENSSL_memcpyPvPKvm.exit64

_ZL14OPENSSL_memcpyPvPKvm.exit64:                 ; preds = %._crit_edge
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr readonly align 1 %.153.lcssa, i64 %.155.lcssa, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit64, %._crit_edge
  %i.ad = trunc nuw nsw i64 %.155.lcssa to i32
  store i32 %i.ad, ptr %0, align 4, !tbaa !14
  %i.ae = icmp ugt i64 %.158.lcssa, 2147483647
  %i.af = trunc i64 %.158.lcssa to i32
  %i.ag = select i1 %i.ae, i32 0, i32 %i.af
  store i32 %i.ag, ptr %2, align 4, !tbaa !13
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.a, %bb.h, %_ZL14OPENSSL_memcpyPvPKvm.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nounwind memory(argmem: readwrite) uwtable
define i64 @EVP_EncodeBlock(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %.not47 = icmp eq i64 %2, 0
  br i1 %.not47, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.052 = phi i64 [ %i.ie, %bb.f ], [ 0, %bb.a ]  ; 2 uses
  %.03051 = phi i64 [ %i.id, %bb.f ], [ %2, %bb.a ] ; 4 uses
  %.03250 = phi ptr [ %.133, %bb.f ], [ %0, %bb.a ] ; 7 uses
  %.03448 = phi ptr [ %i.if, %bb.f ], [ %1, %bb.a ] ; 5 uses
  %i.a = icmp ugt i64 %.03051, 2
  %i.b = load i8, ptr %.03448, align 1, !tbaa !16 ; 5 uses
  %i.c = zext i8 %i.b to i32
  %i.d = shl nuw nsw i32 %i.c, 16                 ; 3 uses
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = icmp eq i64 %.03051, 2
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.03448, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !16
  %i.h = zext i8 %i.g to i32
  %i.i = shl nuw nsw i32 %i.h, 8
  %i.j = or disjoint i32 %i.i, %i.d
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.031 = phi i32 [ %i.j, %bb.c ], [ %i.d, %bb.b ] ; 6 uses
  %i.k = lshr i32 %.031, 18                       ; 2 uses
  %i.l = trunc nuw nsw i32 %i.k to i8             ; 3 uses
  %isneg.i41 = icmp eq i32 %i.k, 62
  %i.m = select i1 %isneg.i41, i64 255, i64 0
  %i.n = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.m) #9, !srcloc !17
  %i.o = trunc i64 %i.n to i8                     ; 2 uses
  %i.p = and i8 %i.o, 43
  %i.q = and i8 %i.o, 47
  %i.r = xor i8 %i.q, 47
  %i.s = or disjoint i8 %i.r, %i.p
  %i.t = icmp samesign ult i32 %.031, 16252928
  %i.u = select i1 %i.t, i64 255, i64 0
  %i.v = add nsw i8 %i.l, -4
  %i.w = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.u) #9, !srcloc !17
  %i.x = trunc i64 %i.w to i8                     ; 2 uses
  %i.y = and i8 %i.v, %i.x
  %i.z = xor i8 %i.x, -1
  %i.aa = and i8 %i.s, %i.z
  %i.ab = or disjoint i8 %i.aa, %i.y
  %i.ac = icmp samesign ult i32 %.031, 13631488
  %i.ad = select i1 %i.ac, i64 255, i64 0
  %i.ae = add nuw i8 %i.l, 71
  %i.af = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.ad) #9, !srcloc !17
  %i.ag = trunc i64 %i.af to i8                   ; 2 uses
  %i.ah = and i8 %i.ae, %i.ag
  %i.ai = xor i8 %i.ag, -1
  %i.aj = and i8 %i.ab, %i.ai
  %i.ak = or disjoint i8 %i.aj, %i.ah
  %i.al = icmp samesign ult i32 %.031, 6815744
  %i.am = select i1 %i.al, i64 255, i64 0
  %narrow.i42 = add nuw i8 %i.l, 65
  %i.an = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.am) #9, !srcloc !17
  %i.ao = trunc i64 %i.an to i8                   ; 2 uses
  %i.ap = and i8 %narrow.i42, %i.ao
  %i.aq = xor i8 %i.ao, -1
  %i.ar = and i8 %i.ak, %i.aq
  %i.as = or disjoint i8 %i.ar, %i.ap
  %i.at = getelementptr inbounds nuw i8, ptr %.03250, i64 1
  store i8 %i.as, ptr %.03250, align 1, !tbaa !16
  %i.au = lshr i32 %.031, 12
  %i.av = trunc i32 %i.au to i8
  %i.aw = and i8 %i.av, 63                        ; 7 uses
  %isneg.i43 = icmp eq i8 %i.aw, 62
  %i.ax = select i1 %isneg.i43, i64 255, i64 0
  %i.ay = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.ax) #9, !srcloc !17
  %i.az = trunc i64 %i.ay to i8                   ; 2 uses
  %i.ba = and i8 %i.az, 43
  %i.bb = and i8 %i.az, 47
  %i.bc = xor i8 %i.bb, 47
  %i.bd = or disjoint i8 %i.bc, %i.ba
  %i.be = icmp samesign ult i8 %i.aw, 62
  %i.bf = select i1 %i.be, i64 255, i64 0
  %i.bg = add nsw i8 %i.aw, -4
  %i.bh = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.bf) #9, !srcloc !17
  %i.bi = trunc i64 %i.bh to i8                   ; 2 uses
  %i.bj = and i8 %i.bg, %i.bi
  %i.bk = xor i8 %i.bi, -1
  %i.bl = and i8 %i.bd, %i.bk
  %i.bm = or disjoint i8 %i.bl, %i.bj
  %i.bn = icmp samesign ult i8 %i.aw, 52
  %i.bo = select i1 %i.bn, i64 255, i64 0
  %i.bp = add nuw i8 %i.aw, 71
  %i.bq = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.bo) #9, !srcloc !17
  %i.br = trunc i64 %i.bq to i8                   ; 2 uses
  %i.bs = and i8 %i.bp, %i.br
  %i.bt = xor i8 %i.br, -1
  %i.bu = and i8 %i.bm, %i.bt
  %i.bv = or disjoint i8 %i.bu, %i.bs
  %i.bw = icmp samesign ult i8 %i.aw, 26
  %i.bx = select i1 %i.bw, i64 255, i64 0
  %narrow.i44 = add nuw i8 %i.aw, 65
  %i.by = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.bx) #9, !srcloc !17
  %i.bz = trunc i64 %i.by to i8                   ; 2 uses
  %i.ca = and i8 %narrow.i44, %i.bz
  %i.cb = xor i8 %i.bz, -1
  %i.cc = and i8 %i.bv, %i.cb
  %i.cd = or disjoint i8 %i.cc, %i.ca
  %i.ce = getelementptr inbounds nuw i8, ptr %.03250, i64 2
  store i8 %i.cd, ptr %i.at, align 1, !tbaa !16
  %i.cf = icmp eq i64 %.03051, 1
  br i1 %i.cf, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cg = lshr i32 %.031, 6
  %i.ch = trunc i32 %i.cg to i8
  %i.ci = and i8 %i.ch, 63                        ; 7 uses
  %isneg.i45 = icmp eq i8 %i.ci, 62
  %i.cj = select i1 %isneg.i45, i64 255, i64 0
  %i.ck = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.cj) #9, !srcloc !17
  %i.cl = trunc i64 %i.ck to i8                   ; 2 uses
  %i.cm = and i8 %i.cl, 43
  %i.cn = and i8 %i.cl, 47
  %i.co = xor i8 %i.cn, 47
  %i.cp = or disjoint i8 %i.co, %i.cm
  %i.cq = icmp samesign ult i8 %i.ci, 62
  %i.cr = select i1 %i.cq, i64 255, i64 0
  %i.cs = add nsw i8 %i.ci, -4
  %i.ct = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.cr) #9, !srcloc !17
  %i.cu = trunc i64 %i.ct to i8                   ; 2 uses
  %i.cv = and i8 %i.cs, %i.cu
  %i.cw = xor i8 %i.cu, -1
  %i.cx = and i8 %i.cp, %i.cw
  %i.cy = or disjoint i8 %i.cx, %i.cv
  %i.cz = icmp samesign ult i8 %i.ci, 52
  %i.da = select i1 %i.cz, i64 255, i64 0
  %i.db = add nuw i8 %i.ci, 71
  %i.dc = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.da) #9, !srcloc !17
  %i.dd = trunc i64 %i.dc to i8                   ; 2 uses
  %i.de = and i8 %i.db, %i.dd
  %i.df = xor i8 %i.dd, -1
  %i.dg = and i8 %i.cy, %i.df
  %i.dh = or disjoint i8 %i.dg, %i.de
  %i.di = icmp samesign ult i8 %i.ci, 26
  %i.dj = select i1 %i.di, i64 255, i64 0
  %narrow.i46 = add nuw i8 %i.ci, 65
  %i.dk = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.dj) #9, !srcloc !17
  %i.dl = trunc i64 %i.dk to i8                   ; 2 uses
  %i.dm = and i8 %narrow.i46, %i.dl
  %i.dn = xor i8 %i.dl, -1
  %i.do = and i8 %i.dh, %i.dn
  %i.dp = or disjoint i8 %i.do, %i.dm
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.d
  %i.dq = phi i8 [ %i.dp, %bb.e ], [ 61, %bb.d ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.03250, i64 3
  store i8 %i.dq, ptr %i.ce, align 1, !tbaa !16
  store i8 61, ptr %i.dr, align 1, !tbaa !16
  %.13355 = getelementptr inbounds nuw i8, ptr %.03250, i64 4
  %i.ds = add i64 %.052, 4
  br label %._crit_edge

bb.f:                                             ; preds = %.lr.ph
  %i.dt = getelementptr inbounds nuw i8, ptr %.03448, i64 1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !16
  %i.dv = zext i8 %i.du to i32
  %i.dw = shl nuw nsw i32 %i.dv, 8                ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.03448, i64 2
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !16  ; 2 uses
  %i.dz = zext i8 %i.dy to i32
  %i.ea = or disjoint i32 %i.dw, %i.dz
  %i.eb = or disjoint i32 %i.dw, %i.d
  %i.ec = icmp ult i8 %i.b, -8
  %i.ed = select i1 %i.ec, i64 255, i64 0
  %i.ee = icmp ult i8 %i.b, -48
  %i.ef = select i1 %i.ee, i64 255, i64 0
  %i.eg = icmp ult i8 %i.b, 104
  %i.eh = select i1 %i.eg, i64 255, i64 0
  %i.ei = lshr i32 %i.eb, 12
  %i.ej = trunc i32 %i.ei to i8                   ; 2 uses
  %i.ek = lshr i32 %i.ea, 6
  %i.el = trunc i32 %i.ek to i8
  %i.em = lshr i8 %i.b, 2                         ; 2 uses
  %isneg.i = icmp eq i8 %i.em, 62
  %i.en = select i1 %isneg.i, i64 255, i64 0
  %i.eo = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.en) #9, !srcloc !17
  %i.ep = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.ed) #9, !srcloc !17
  %i.eq = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.ef) #9, !srcloc !17
  %i.er = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.eh) #9, !srcloc !17
  %i.es = insertelement <4 x i8> poison, i8 %i.em, i64 0
  %i.et = insertelement <4 x i8> %i.es, i8 %i.ej, i64 1
  %i.eu = insertelement <4 x i8> %i.et, i8 %i.el, i64 2
  %i.ev = insertelement <4 x i8> %i.eu, i8 %i.dy, i64 3
  %i.ew = and <4 x i8> %i.ev, <i8 -1, i8 63, i8 63, i8 63> ; 5 uses
  %i.ex = and i8 %i.ej, 63                        ; 4 uses
  %isneg.i35 = icmp eq i8 %i.ex, 62
  %i.ey = select i1 %isneg.i35, i64 255, i64 0
  %i.ez = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.ey) #9, !srcloc !17
  %i.fa = icmp samesign ult i8 %i.ex, 62
  %i.fb = select i1 %i.fa, i64 255, i64 0
  %i.fc = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.fb) #9, !srcloc !17
  %i.fd = icmp samesign ult i8 %i.ex, 52
  %i.fe = select i1 %i.fd, i64 255, i64 0
  %i.ff = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.fe) #9, !srcloc !17
  %i.fg = icmp samesign ult i8 %i.ex, 26
  %i.fh = select i1 %i.fg, i64 255, i64 0
  %i.fi = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.fh) #9, !srcloc !17
  %i.fj = extractelement <4 x i8> %i.ew, i64 2    ; 4 uses
  %isneg.i37 = icmp eq i8 %i.fj, 62
  %i.fk = select i1 %isneg.i37, i64 255, i64 0
  %i.fl = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.fk) #9, !srcloc !17
  %i.fm = icmp samesign ult i8 %i.fj, 62
  %i.fn = select i1 %i.fm, i64 255, i64 0
  %i.fo = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.fn) #9, !srcloc !17
  %i.fp = icmp samesign ult i8 %i.fj, 52
  %i.fq = select i1 %i.fp, i64 255, i64 0
  %i.fr = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.fq) #9, !srcloc !17
  %i.fs = icmp samesign ult i8 %i.fj, 26
  %i.ft = select i1 %i.fs, i64 255, i64 0
  %i.fu = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.ft) #9, !srcloc !17
  %i.fv = extractelement <4 x i8> %i.ew, i64 3    ; 4 uses
  %isneg.i39 = icmp eq i8 %i.fv, 62
  %i.fw = select i1 %isneg.i39, i64 255, i64 0
  %i.fx = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.fw) #9, !srcloc !17
  %i.fy = insertelement <4 x i64> poison, i64 %i.eo, i64 0
  %i.fz = insertelement <4 x i64> %i.fy, i64 %i.ez, i64 1
  %i.ga = insertelement <4 x i64> %i.fz, i64 %i.fl, i64 2
  %i.gb = insertelement <4 x i64> %i.ga, i64 %i.fx, i64 3
  %i.gc = trunc <4 x i64> %i.gb to <4 x i8>       ; 2 uses
  %i.gd = and <4 x i8> %i.gc, splat (i8 43)
  %i.ge = and <4 x i8> %i.gc, splat (i8 47)
  %i.gf = xor <4 x i8> %i.ge, splat (i8 47)
  %i.gg = or disjoint <4 x i8> %i.gf, %i.gd
  %i.gh = icmp samesign ult i8 %i.fv, 62
  %i.gi = select i1 %i.gh, i64 255, i64 0
  %i.gj = add nsw <4 x i8> %i.ew, splat (i8 -4)
  %i.gk = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.gi) #9, !srcloc !17
  %i.gl = trunc i64 %i.ep to i8
  %i.gm = insertelement <4 x i8> poison, i8 %i.gl, i64 0
  %i.gn = trunc i64 %i.fc to i8
  %i.go = insertelement <4 x i8> %i.gm, i8 %i.gn, i64 1
  %i.gp = trunc i64 %i.fo to i8
  %i.gq = insertelement <4 x i8> %i.go, i8 %i.gp, i64 2
  %i.gr = trunc i64 %i.gk to i8
  %i.gs = insertelement <4 x i8> %i.gq, i8 %i.gr, i64 3 ; 2 uses
  %i.gt = and <4 x i8> %i.gj, %i.gs
  %i.gu = xor <4 x i8> %i.gs, splat (i8 -1)
  %i.gv = and <4 x i8> %i.gg, %i.gu
  %i.gw = or disjoint <4 x i8> %i.gv, %i.gt
  %i.gx = icmp samesign ult i8 %i.fv, 52
  %i.gy = select i1 %i.gx, i64 255, i64 0
  %i.gz = add nuw <4 x i8> %i.ew, splat (i8 71)
  %i.ha = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.gy) #9, !srcloc !17
  %i.hb = trunc i64 %i.eq to i8
  %i.hc = insertelement <4 x i8> poison, i8 %i.hb, i64 0
  %i.hd = trunc i64 %i.ff to i8
  %i.he = insertelement <4 x i8> %i.hc, i8 %i.hd, i64 1
  %i.hf = trunc i64 %i.fr to i8
  %i.hg = insertelement <4 x i8> %i.he, i8 %i.hf, i64 2
  %i.hh = trunc i64 %i.ha to i8
  %i.hi = insertelement <4 x i8> %i.hg, i8 %i.hh, i64 3 ; 2 uses
  %i.hj = and <4 x i8> %i.gz, %i.hi
  %i.hk = xor <4 x i8> %i.hi, splat (i8 -1)
  %i.hl = and <4 x i8> %i.gw, %i.hk
  %i.hm = or disjoint <4 x i8> %i.hl, %i.hj
  %i.hn = icmp samesign ult i8 %i.fv, 26
  %i.ho = select i1 %i.hn, i64 255, i64 0
  %i.hp = add nuw <4 x i8> %i.ew, splat (i8 65)
  %i.hq = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.ho) #9, !srcloc !17
  %i.hr = trunc i64 %i.er to i8
  %i.hs = insertelement <4 x i8> poison, i8 %i.hr, i64 0
  %i.ht = trunc i64 %i.fi to i8
  %i.hu = insertelement <4 x i8> %i.hs, i8 %i.ht, i64 1
  %i.hv = trunc i64 %i.fu to i8
  %i.hw = insertelement <4 x i8> %i.hu, i8 %i.hv, i64 2
  %i.hx = trunc i64 %i.hq to i8
  %i.hy = insertelement <4 x i8> %i.hw, i8 %i.hx, i64 3 ; 2 uses
  %i.hz = and <4 x i8> %i.hp, %i.hy
  %i.ia = xor <4 x i8> %i.hy, splat (i8 -1)
  %i.ib = and <4 x i8> %i.hm, %i.ia
  %i.ic = or disjoint <4 x i8> %i.ib, %i.hz
  store <4 x i8> %i.ic, ptr %.03250, align 1, !tbaa !16
  %i.id = add i64 %.03051, -3                     ; 2 uses
  %.133 = getelementptr inbounds nuw i8, ptr %.03250, i64 4 ; 2 uses
  %i.ie = add i64 %.052, 4                        ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.03448, i64 3
  %.not = icmp eq i64 %i.id, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !18

._crit_edge:                                      ; preds = %bb.f, %.thread, %bb.a
  %.032.lcssa = phi ptr [ %0, %bb.a ], [ %.13355, %.thread ], [ %.133, %bb.f ]
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.ds, %.thread ], [ %i.ie, %bb.f ]
  store i8 0, ptr %.032.lcssa, align 1, !tbaa !16
  ret i64 %.0.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nounwind memory(argmem: readwrite) uwtable
define void @EVP_EncodeFinal(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !14     ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = zext i32 %i.a to i64
  %i.e = tail call i64 @EVP_EncodeBlock(ptr noundef %1, ptr noundef nonnull %i.c, i64 noundef %i.d) ; 2 uses
  %i.f = add i64 %i.e, 1                          ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  store i8 10, ptr %i.g, align 1, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %i.f
  store i8 0, ptr %i.h, align 1, !tbaa !16
  store i32 0, ptr %0, align 4, !tbaa !14
  %i.i = trunc i64 %i.f to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %storemerge = phi i32 [ %i.i, %bb.b ], [ 0, %bb.a ]
  store i32 %storemerge, ptr %2, align 4, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 0, 2) i32 @EVP_DecodedLength(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = and i64 %1, 3
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr exact i64 %1, 2
  %i.c = mul nuw i64 %i.b, 3
  store i64 %i.c, ptr %0, align 8, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @EVP_DecodeInit(ptr nofree noundef writeonly captures(none) initializes((0, 56)) %0) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 -1, 2) i32 @EVP_DecodeUpdate(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  store i32 0, ptr %2, align 4, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 53 ; 4 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !20
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %.preheader, label %bb.k

.preheader:                                       ; preds = %bb.a
  %.not57 = icmp eq i64 %4, 0
  br i1 %.not57, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %.03156 = phi i64 [ 0, %.lr.ph ], [ %i.s, %bb.i ] ; 2 uses
  %.03255 = phi i64 [ 0, %.lr.ph ], [ %.335.ph, %bb.i ] ; 6 uses
  %.03654 = phi ptr [ %1, %.lr.ph ], [ %.339.ph, %bb.i ] ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 %.03156
  %i.g = load i8, ptr %i.f, align 1, !tbaa !16    ; 2 uses
  switch i8 %i.g, label %bb.c [
    i8 32, label %bb.i
    i8 9, label %bb.i
    i8 13, label %bb.i
    i8 10, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %i.d, align 4, !tbaa !21
  %.not41 = icmp eq i8 %i.h, 0
  br i1 %.not41, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.b, align 1, !tbaa !20
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.i = load i32, ptr %0, align 4, !tbaa !14     ; 2 uses
  %i.j = add i32 %i.i, 1                          ; 2 uses
  store i32 %i.j, ptr %0, align 4, !tbaa !14
  %i.k = zext i32 %i.i to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  store i8 %i.g, ptr %i.l, align 1, !tbaa !16
  %i.m = icmp eq i32 %i.j, 4
  br i1 %i.m, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.n = call fastcc noundef i32 @_ZL18base64_decode_quadPhPmPKh(ptr noundef %.03654, ptr noundef %i.a, ptr noundef nonnull %i.e)
  %.not42.not = icmp eq i32 %i.n, 0
  br i1 %.not42.not, label %select.unfold, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %0, align 4, !tbaa !14
  %i.o = load i64, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.p = add i64 %i.o, %.03255
  %i.q = getelementptr inbounds nuw i8, ptr %.03654, i64 %i.o
  %i.r = icmp ult i64 %i.o, 3
  br i1 %i.r, label %bb.h, label %.thread49

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.d, align 4, !tbaa !21
  br label %.thread49

.thread49:                                        ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.i

select.unfold:                                    ; preds = %bb.f
  store i8 1, ptr %i.b, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.k

bb.i:                                             ; preds = %.thread49, %bb.b, %bb.b, %bb.b, %bb.b, %bb.e
  %.339.ph = phi ptr [ %.03654, %bb.e ], [ %.03654, %bb.b ], [ %.03654, %bb.b ], [ %.03654, %bb.b ], [ %i.q, %.thread49 ], [ %.03654, %bb.b ]
  %.335.ph = phi i64 [ %.03255, %bb.e ], [ %.03255, %bb.b ], [ %.03255, %bb.b ], [ %.03255, %bb.b ], [ %i.p, %.thread49 ], [ %.03255, %bb.b ] ; 3 uses
  %i.s = add nuw i64 %.03156, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %4
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !22

._crit_edge:                                      ; preds = %bb.i
  %i.t = icmp ugt i64 %.335.ph, 2147483647
  br i1 %i.t, label %bb.j, label %._crit_edge.thread

bb.j:                                             ; preds = %._crit_edge
  store i8 1, ptr %i.b, align 1, !tbaa !20
  store i32 0, ptr %2, align 4, !tbaa !13
  br label %bb.k

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge
  %.032.lcssa60 = phi i64 [ %.335.ph, %._crit_edge ], [ 0, %.preheader ]
  %i.u = trunc nuw nsw i64 %.032.lcssa60 to i32
  store i32 %i.u, ptr %2, align 4, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.w = load i8, ptr %i.v, align 4, !tbaa !21
  %.not40 = icmp eq i8 %i.w, 0
  %. = zext i1 %.not40 to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %select.unfold, %bb.j, %._crit_edge.thread, %bb.a
  %.5 = phi i32 [ -1, %bb.a ], [ %., %._crit_edge.thread ], [ -1, %bb.j ], [ -1, %select.unfold ], [ -1, %bb.d ]
  ret i32 %.5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL18base64_decode_quadPhPmPKh(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #6 {
bb.a:
  %i.a = load <4 x i8>, ptr %2, align 1, !tbaa !16 ; 10 uses
  %i.b = add <4 x i8> %i.a, splat (i8 -65)        ; 2 uses
  %i.c = icmp ult <4 x i8> %i.b, splat (i8 26)    ; 2 uses
  %i.d = add <4 x i8> %i.a, splat (i8 -97)
  %i.e = icmp ult <4 x i8> %i.d, splat (i8 26)    ; 2 uses
  %i.f = add <4 x i8> %i.a, splat (i8 -48)
  %i.g = icmp ult <4 x i8> %i.f, splat (i8 10)    ; 2 uses
  %i.h = zext <4 x i8> %i.a to <4 x i64>          ; 3 uses
  %i.i = xor <4 x i64> %i.h, splat (i64 43)
  %i.j = add nsw <4 x i64> %i.i, splat (i64 -1)
  %i.k = ashr <4 x i64> %i.j, splat (i64 63)
  %i.l = trunc nsw <4 x i64> %i.k to <4 x i8>     ; 2 uses
  %i.m = xor <4 x i64> %i.h, splat (i64 47)
  %i.n = add nsw <4 x i64> %i.m, splat (i64 -1)
  %i.o = ashr <4 x i64> %i.n, splat (i64 63)
  %i.p = trunc nsw <4 x i64> %i.o to <4 x i8>     ; 2 uses
  %i.q = xor <4 x i64> %i.h, splat (i64 61)
  %i.r = add nsw <4 x i64> %i.q, splat (i64 -1)
  %i.s = ashr <4 x i64> %i.r, splat (i64 63)
  %i.t = trunc nsw <4 x i64> %i.s to <4 x i8>
  %i.u = select <4 x i1> %i.c, <4 x i8> %i.b, <4 x i8> zeroinitializer
  %i.v = add nsw <4 x i8> %i.a, splat (i8 -71)
  %i.w = select <4 x i1> %i.e, <4 x i8> %i.v, <4 x i8> zeroinitializer
  %i.x = or <4 x i8> %i.w, %i.u
  %i.y = add nuw nsw <4 x i8> %i.a, splat (i8 4)
  %i.z = select <4 x i1> %i.g, <4 x i8> %i.y, <4 x i8> zeroinitializer
  %i.aa = or <4 x i8> %i.x, %i.z
  %i.ab = and <4 x i8> %i.l, splat (i8 62)
  %i.ac = or <4 x i8> %i.aa, %i.ab
  %i.ad = and <4 x i8> %i.p, splat (i8 63)
  %i.ae = or <4 x i8> %i.ac, %i.ad
  %i.af = or <4 x i1> %i.c, %i.e
  %i.ag = or <4 x i1> %i.g, %i.af
  %i.ah = select <4 x i1> %i.ag, <4 x i8> splat (i8 -1), <4 x i8> %i.t
  %i.ai = or <4 x i8> %i.ah, %i.l
  %i.aj = or <4 x i8> %i.ai, %i.p
  %i.ak = xor <4 x i8> %i.aj, splat (i8 -1)
  %i.al = or <4 x i8> %i.ae, %i.ak                ; 5 uses
  %i.am = icmp eq <4 x i8> %i.al, splat (i8 -1)
  %i.an = bitcast <4 x i1> %i.am to i4
  %.not = icmp eq i4 %i.an, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.ao = extractelement <4 x i8> %i.al, i64 3
  %i.ap = zext i8 %i.ao to i32
  %i.aq = extractelement <4 x i8> %i.al, i64 2
  %i.ar = zext i8 %i.aq to i32
  %i.as = extractelement <4 x i8> %i.al, i64 1
  %i.at = zext i8 %i.as to i32
  %i.au = extractelement <4 x i8> %i.al, i64 0
  %i.av = zext i8 %i.au to i32
  %i.aw = shl nuw nsw i32 %i.av, 18
  %i.ax = shl nuw nsw i32 %i.at, 12
  %i.ay = or i32 %i.ax, %i.aw                     ; 4 uses
  %i.az = shl nuw nsw i32 %i.ar, 6
  %3 = or i32 %i.az, %i.ap                        ; 2 uses
  %4 = or i32 %3, %i.ay                           ; 2 uses
  %5 = extractelement <4 x i8> %i.a, i64 0
  %6 = icmp eq i8 %5, 61
  %7 = select i1 %6, i32 8, i32 0
  %8 = extractelement <4 x i8> %i.a, i64 1
  %9 = icmp eq i8 %8, 61
  %10 = select i1 %9, i32 4, i32 0
  %i.ba = or disjoint i32 %10, %7
  %11 = extractelement <4 x i8> %i.a, i64 2
  %12 = icmp eq i8 %11, 61
  %13 = select i1 %12, i32 2, i32 0
  %i.bb = or disjoint i32 %i.ba, %13
  %14 = extractelement <4 x i8> %i.a, i64 3
  %15 = icmp eq i8 %14, 61
  %16 = zext i1 %15 to i32
  %17 = or disjoint i32 %i.bb, %16
  switch i32 %17, label %bb.f [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 3, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  store i64 3, ptr %1, align 8, !tbaa !11
  %i.bc = lshr i32 %i.ay, 16
  %i.bd = trunc i32 %i.bc to i8
  store i8 %i.bd, ptr %0, align 1, !tbaa !16
  %i.be = lshr i32 %4, 8
  %i.bf = trunc i32 %i.be to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !16
  %i.bh = trunc i32 %3 to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !16
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  store i64 2, ptr %1, align 8, !tbaa !11
  %i.bj = lshr i32 %i.ay, 16
  %i.bk = trunc i32 %i.bj to i8
  store i8 %i.bk, ptr %0, align 1, !tbaa !16
  %i.bl = lshr i32 %4, 8
  %i.bm = trunc i32 %i.bl to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !16
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  store i64 1, ptr %1, align 8, !tbaa !11
  %i.bo = lshr i32 %i.ay, 16
  %i.bp = trunc i32 %i.bo to i8
  store i8 %i.bp, ptr %0, align 1, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.d, %bb.c, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %bb.e ], [ 1, %bb.d ], [ 1, %bb.c ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -1, 2) i32 @EVP_DecodeFinal(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) local_unnamed_addr #6 {
bb.a:
  store i32 0, ptr %2, align 4, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 53
  %i.b = load i8, ptr %i.a, align 1, !tbaa !20
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 4, !tbaa !14
  %.not3 = icmp eq i32 %i.c, 0
  %spec.select = select i1 %.not3, i32 1, i32 -1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ %spec.select, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 0, 2) i32 @EVP_DecodeBase64(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  store i64 0, ptr %1, align 8, !tbaa !11
  %i.b = and i64 %4, 3
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %EVP_DecodedLength.exit, label %bb.e

EVP_DecodedLength.exit:                           ; preds = %bb.a
  %i.c = lshr exact i64 %4, 2
  %i.d = mul nuw i64 %i.c, 3
  %i.e = icmp ult i64 %2, %i.d
  br i1 %i.e, label %bb.e, label %.preheader

.preheader:                                       ; preds = %EVP_DecodedLength.exit
  %.not35 = icmp eq i64 %4, 0
  br i1 %.not35, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = add i64 %4, -4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.034 = phi i64 [ 0, %.lr.ph ], [ %i.k, %bb.d ]
  %.01733 = phi i64 [ 0, %.lr.ph ], [ %i.l, %bb.d ] ; 3 uses
  %.02132 = phi ptr [ %0, %.lr.ph ], [ %i.j, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 %.01733
  %i.h = call fastcc noundef i32 @_ZL18base64_decode_quadPhPmPKh(ptr noundef %.02132, ptr noundef %i.a, ptr noundef %i.g)
  %.not25 = icmp eq i32 %i.h, 0
  br i1 %.not25, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %.not26 = icmp eq i64 %i.i, 3
  %.not27 = icmp eq i64 %.01733, %i.f
  %or.cond29 = or i1 %.not27, %.not26
  br i1 %or.cond29, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.02132, i64 %i.i
  %i.k = add i64 %i.i, %.034                      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.l = add i64 %.01733, 4                       ; 2 uses
  %i.m = icmp ult i64 %i.l, %4
  br i1 %i.m, label %bb.b, label %._crit_edge, !llvm.loop !23

._crit_edge:                                      ; preds = %bb.d, %.preheader
  %.0.lcssa = phi i64 [ 0, %.preheader ], [ %i.k, %bb.d ]
  store i64 %.0.lcssa, ptr %1, align 8, !tbaa !11
  br label %bb.e

.critedge:                                        ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.e

bb.e:                                             ; preds = %EVP_DecodedLength.exit, %.critedge, %._crit_edge, %bb.a
  %.4 = phi i32 [ 0, %bb.a ], [ 0, %EVP_DecodedLength.exit ], [ 0, %.critedge ], [ 1, %._crit_edge ]
  ret i32 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define i32 @EVP_DecodeBlock(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %.not40 = icmp eq i64 %2, 0
  br i1 %.not40, label %._crit_edge54, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.042 = phi i64 [ %i.d, %bb.b ], [ %2, %bb.a ]  ; 2 uses
  %.01541 = phi ptr [ %i.c, %bb.b ], [ %1, %bb.a ] ; 4 uses
  %i.b = load i8, ptr %.01541, align 1, !tbaa !16
  switch i8 %i.b, label %.lr.ph50 [
    i8 32, label %bb.b
    i8 9, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %.01541, i64 1
  %i.d = add i64 %.042, -1                        ; 2 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %._crit_edge54, label %.lr.ph, !llvm.loop !24

.lr.ph50:                                         ; preds = %.lr.ph, %bb.c
  %.148 = phi i64 [ %i.h, %bb.c ], [ %.042, %.lr.ph ] ; 6 uses
  %i.e = getelementptr i8, ptr %.01541, i64 %.148
  %i.f = getelementptr i8, ptr %i.e, i64 -1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !16
  switch i8 %i.g, label %bb.d [
    i8 32, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 10, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph50, %.lr.ph50, %.lr.ph50, %.lr.ph50
  %i.h = add i64 %.148, -1                        ; 2 uses
  %.not21 = icmp eq i64 %i.h, 0
  br i1 %.not21, label %._crit_edge54, label %.lr.ph50, !llvm.loop !25

bb.d:                                             ; preds = %.lr.ph50
  %i.i = and i64 %.148, 3
  %.not.i = icmp ne i64 %i.i, 0
  %i.j = icmp ugt i64 %.148, 2863311528
  %or.cond = or i1 %i.j, %.not.i
  br i1 %or.cond, label %EVP_DecodedLength.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.k = add nsw i64 %.148, -4
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.lr.ph.i
  %.034.i = phi i64 [ 0, %.lr.ph.i ], [ %i.p, %bb.g ]
  %.01733.i = phi i64 [ 0, %.lr.ph.i ], [ %i.q, %bb.g ] ; 3 uses
  %.02132.i = phi ptr [ %0, %.lr.ph.i ], [ %i.o, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.l = getelementptr inbounds nuw i8, ptr %.01541, i64 %.01733.i
  %i.m = call fastcc noundef i32 @_ZL18base64_decode_quadPhPmPKh(ptr noundef %.02132.i, ptr noundef %i.a, ptr noundef nonnull readonly %i.l)
  %.not25.i = icmp eq i32 %i.m, 0
  br i1 %.not25.i, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load i64, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %.not26.i = icmp eq i64 %i.n, 3
  %.not27.i = icmp eq i64 %.01733.i, %i.k
  %or.cond29.i = or i1 %.not27.i, %.not26.i
  br i1 %or.cond29.i, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.02132.i, i64 %i.n
  %i.p = add i64 %i.n, %.034.i                    ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.q = add i64 %.01733.i, 4                     ; 2 uses
  %i.r = icmp ult i64 %i.q, %.148
  br i1 %i.r, label %bb.e, label %EVP_DecodeBase64.exit, !llvm.loop !23

.critedge.i:                                      ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %EVP_DecodedLength.exit.thread

EVP_DecodeBase64.exit:                            ; preds = %bb.g
  %i.s = urem i64 %i.p, 3
  %.not2351 = icmp eq i64 %i.s, 0
  br i1 %.not2351, label %._crit_edge54, label %.lr.ph53

.lr.ph53:                                         ; preds = %EVP_DecodeBase64.exit, %.lr.ph53
  %.02652 = phi i64 [ %i.t, %.lr.ph53 ], [ %i.p, %EVP_DecodeBase64.exit ] ; 2 uses
  %i.t = add i64 %.02652, 1                       ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %.02652
  store i8 0, ptr %i.u, align 1, !tbaa !16
  %i.v = urem i64 %i.t, 3
  %.not23 = icmp eq i64 %i.v, 0
  br i1 %.not23, label %._crit_edge54, label %.lr.ph53, !llvm.loop !26

._crit_edge54:                                    ; preds = %bb.b, %bb.c, %.lr.ph53, %bb.a, %EVP_DecodeBase64.exit
  %.026.lcssa = phi i64 [ %i.p, %EVP_DecodeBase64.exit ], [ %i.t, %.lr.ph53 ], [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  %i.w = trunc i64 %.026.lcssa to i32
  br label %EVP_DecodedLength.exit.thread

EVP_DecodedLength.exit.thread:                    ; preds = %.critedge.i, %bb.d, %._crit_edge54
  %.016 = phi i32 [ %i.w, %._crit_edge54 ], [ -1, %bb.d ], [ -1, %.critedge.i ]
  ret i32 %.016
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !9, i64 0}
!13 = !{!8, !8, i64 0}
!14 = !{!15, !8, i64 0}
!15 = !{!"_ZTS17evp_encode_ctx_st", !8, i64 0, !9, i64 4, !9, i64 52, !9, i64 53}
!16 = !{!9, !9, i64 0}
!17 = !{i64 1902062}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!15, !9, i64 53}
!21 = !{!15, !9, i64 52}
!22 = distinct !{!22, !19}
!23 = distinct !{!23, !19}
!24 = distinct !{!24, !19}
!25 = distinct !{!25, !19}
!26 = distinct !{!26, !19}
end_hunk_0
