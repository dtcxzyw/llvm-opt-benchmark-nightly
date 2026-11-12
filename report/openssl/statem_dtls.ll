Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/statem_dtls?download=true
inline.NumInlined: 28
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.hm_header_st = type { i8, i64, i16, i64, i64, i32, %struct.dtls1_retransmit_state }
%struct.dtls1_retransmit_state = type { ptr, ptr }

@.str = private unnamed_addr constant [25 x i8] c"ssl/statem/statem_dtls.c\00", align 1
@__func__.dtls_construct_change_cipher_spec = private unnamed_addr constant [34 x i8] c"dtls_construct_change_cipher_spec\00", align 1
@__func__.dtls1_read_failed = private unnamed_addr constant [18 x i8] c"dtls1_read_failed\00", align 1
@__func__.dtls1_retransmit_message = private unnamed_addr constant [25 x i8] c"dtls1_retransmit_message\00", align 1
@__func__.dtls_get_reassembled_message = private unnamed_addr constant [29 x i8] c"dtls_get_reassembled_message\00", align 1
@bitmask_start_values = internal unnamed_addr constant [8 x i8] c"\FF\FE\FC\F8\F0\E0\C0\80", align 1
@bitmask_end_values = internal unnamed_addr constant [8 x i8] c"\FF\01\03\07\0F\1F?\7F", align 1
@__func__.dtls1_preprocess_fragment = private unnamed_addr constant [26 x i8] c"dtls1_preprocess_fragment\00", align 1

; Function Attrs: nounwind uwtable
define void @dtls1_hm_fragment_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  tail call void @CRYPTO_free(ptr noundef %i.b, ptr noundef nonnull @.str, i32 noundef 109) #8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18
  tail call void @CRYPTO_free(ptr noundef %i.d, ptr noundef nonnull @.str, i32 noundef 110) #8
  tail call void @CRYPTO_free(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 111) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 -2147483648, 2) i32 @dtls1_do_write(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca [12 x i8], align 1                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = tail call i32 @dtls1_query_mtu(ptr noundef %0) #8
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1264 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !81
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.i = load i64, ptr %i.h, align 8, !tbaa !135
  %i.j = tail call i64 @dtls1_min_mtu(ptr noundef nonnull %0) #8
  %i.k = icmp ult i64 %i.i, %i.j
  br i1 %i.k, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 11 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !84
  %i.n = icmp eq i64 %i.m, 0
  %i.o = zext i8 %1 to i32
  %i.p = icmp eq i8 %1, 22                        ; 5 uses
  %or.cond = and i1 %i.p, %i.n
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.r = load i64, ptr %i.q, align 8, !tbaa !85
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !81
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 320
  %i.u = load i64, ptr %i.t, align 8, !tbaa !86
  %i.v = add i64 %i.u, 12
  %i.w = icmp eq i64 %i.r, %i.v
  br i1 %i.w, label %bb.e, label %.loopexit, !prof !87

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 3632
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !88
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 168
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !136
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3648
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !90
  %i.ad = tail call i64 %i.aa(ptr noundef %i.ac) #8 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store i32 1, ptr %i.ae, align 8, !tbaa !91
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 7 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !85 ; 2 uses
  %.not149170 = icmp eq i64 %i.ag, 0
  br i1 %.not149170, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ai = add i64 %i.ad, 12
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1272 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.au
  %i.am = phi i64 [ %i.ag, %.lr.ph ], [ %i.hh, %bb.au ]
  %.0129172 = phi i64 [ 0, %.lr.ph ], [ %.2, %bb.au ] ; 4 uses
  %.0132171 = phi i32 [ 1, %.lr.ph ], [ %.1133, %bb.au ] ; 2 uses
  br i1 %i.p, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.an = load i64, ptr %i.l, align 8, !tbaa !84  ; 3 uses
  %.not150 = icmp eq i64 %i.an, 0
  br i1 %.not150, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not151 = icmp eq i64 %.0129172, 0
  br i1 %.not151, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = icmp ult i64 %i.an, 13
  br i1 %i.ao, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = add i64 %i.an, -12
  store i64 %i.ap, ptr %i.l, align 8, !tbaa !84
  %i.aq = add i64 %i.am, 12
  store i64 %i.aq, ptr %i.af, align 8, !tbaa !85
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.ar = load ptr, ptr %i.f, align 8, !tbaa !81
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 336
  %i.at = load i64, ptr %i.as, align 8, !tbaa !137
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.g, %bb.f
  %.1 = phi i64 [ %.0129172, %bb.j ], [ %i.at, %bb.k ], [ %.0129172, %bb.g ], [ %.0129172, %bb.f ] ; 4 uses
  %i.au = load ptr, ptr %i.ah, align 8, !tbaa !92
  %i.av = call i64 @BIO_ctrl(ptr noundef %i.au, i32 noundef 13, i64 noundef 0, ptr noundef null) #8
  %i.aw = shl i64 %i.av, 32
  %i.ax = ashr exact i64 %i.aw, 32
  %i.ay = add i64 %i.ax, %i.ad                    ; 2 uses
  %i.az = load ptr, ptr %i.f, align 8, !tbaa !81
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 304
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !135 ; 2 uses
  %i.bc = sub nuw i64 %i.bb, %i.ay
  %.0134 = call i64 @llvm.usub.sat.i64(i64 %i.bb, i64 %i.ay)
  %i.bd = icmp ult i64 %.0134, 13
  br i1 %i.bd, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.be = load ptr, ptr %i.ah, align 8, !tbaa !92
  %i.bf = call i64 @BIO_ctrl(ptr noundef %i.be, i32 noundef 11, i64 noundef 0, ptr noundef null) #8
  %i.bg = trunc i64 %i.bf to i32                  ; 2 uses
  %i.bh = icmp slt i32 %i.bg, 1
  br i1 %i.bh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 2, ptr %i.ae, align 8, !tbaa !91
  br label %.loopexit

bb.o:                                             ; preds = %bb.m
  %i.bi = load ptr, ptr %i.f, align 8, !tbaa !81
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 304
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !135 ; 2 uses
  %i.bl = icmp ugt i64 %i.bk, %i.ai
  br i1 %i.bl, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.bm = sub i64 %i.bk, %i.ad
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.l
  %.1135 = phi i64 [ %i.bm, %bb.p ], [ %i.bc, %bb.l ] ; 2 uses
  %i.bn = load i64, ptr %i.af, align 8, !tbaa !85 ; 2 uses
  %i.bo = and i64 %i.bn, 4294967295
  %i.bp = icmp ugt i64 %i.bo, %.1135
  %.1135. = select i1 %i.bp, i64 %.1135, i64 %i.bn ; 2 uses
  %i.bq = call i32 @ssl_get_max_send_fragment(ptr noundef nonnull %0) #8
  %i.br = zext i32 %i.bq to i64
  %i.bs = icmp ugt i64 %.1135., %i.br
  br i1 %i.bs, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bt = call i32 @ssl_get_max_send_fragment(ptr noundef nonnull %0) #8
  %i.bu = zext i32 %i.bt to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1131 = phi i64 [ %i.bu, %bb.r ], [ %.1135., %bb.q ] ; 7 uses
  br i1 %i.p, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.bv = icmp samesign ult i64 %.1131, 12
  br i1 %i.bv, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bw = add nsw i64 %.1131, -12
  %.val163 = load ptr, ptr %i.f, align 8, !tbaa !81 ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.val163, i64 336 ; 4 uses
  store i64 %.1, ptr %i.bx, align 8, !tbaa !93
  %i.by = getelementptr inbounds nuw i8, ptr %.val163, i64 344 ; 4 uses
  store i64 %i.bw, ptr %i.by, align 8, !tbaa !94
  %i.bz = load ptr, ptr %i.aj, align 8, !tbaa !95
  %.not152 = icmp eq ptr %i.bz, null
  br i1 %.not152, label %._crit_edge, label %bb.v

._crit_edge:                                      ; preds = %bb.u
  %.pre = load ptr, ptr %i.ak, align 8, !tbaa !96
  %.pre193 = load i64, ptr %i.l, align 8, !tbaa !84
  br label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.ca = load i64, ptr %i.l, align 8, !tbaa !84  ; 3 uses
  %.not153 = icmp eq i64 %i.ca, 0
  %.pre192 = load ptr, ptr %i.ak, align 8, !tbaa !96 ; 3 uses
  br i1 %.not153, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cb = getelementptr inbounds nuw i8, ptr %.pre192, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !98
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.ca
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.b, ptr noundef nonnull align 1 dereferenceable(12) %i.cd, i64 12, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge, %bb.w, %bb.v
  %i.ce = phi i64 [ %.pre193, %._crit_edge ], [ %i.ca, %bb.w ], [ 0, %bb.v ]
  %i.cf = phi ptr [ %.pre, %._crit_edge ], [ %.pre192, %bb.w ], [ %.pre192, %bb.v ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !98
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ce ; 12 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.val163, i64 312
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !99
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  store i8 %i.ck, ptr %i.ci, align 1, !tbaa !100
  %i.cm = getelementptr inbounds nuw i8, ptr %.val163, i64 320 ; 3 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !101
  %i.co = lshr i64 %i.cn, 16
  %i.cp = trunc i64 %i.co to i8
  store i8 %i.cp, ptr %i.cl, align 1, !tbaa !100
  %i.cq = load i64, ptr %i.cm, align 8, !tbaa !101
  %i.cr = lshr i64 %i.cq, 8
  %i.cs = trunc i64 %i.cr to i8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ci, i64 2
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !100
  %i.cu = load i64, ptr %i.cm, align 8, !tbaa !101
  %i.cv = trunc i64 %i.cu to i8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ci, i64 3
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !100
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.cy = getelementptr inbounds nuw i8, ptr %.val163, i64 328 ; 2 uses
  %2 = load i16, ptr %i.cy, align 8, !tbaa !102
  %3 = lshr i16 %2, 8
  %4 = trunc nuw i16 %3 to i8
  store i8 %4, ptr %i.cx, align 1, !tbaa !100
  %i.cz = load i16, ptr %i.cy, align 8, !tbaa !102
  %i.da = trunc i16 %i.cz to i8
  %i.db = getelementptr inbounds nuw i8, ptr %i.ci, i64 5
  store i8 %i.da, ptr %i.db, align 1, !tbaa !100
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ci, i64 6
  %i.dd = load i64, ptr %i.bx, align 8, !tbaa !93
  %i.de = lshr i64 %i.dd, 16
  %i.df = trunc i64 %i.de to i8
  store i8 %i.df, ptr %i.dc, align 1, !tbaa !100
  %i.dg = load i64, ptr %i.bx, align 8, !tbaa !93
  %i.dh = lshr i64 %i.dg, 8
  %i.di = trunc i64 %i.dh to i8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ci, i64 7
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !100
  %i.dk = load i64, ptr %i.bx, align 8, !tbaa !93
  %i.dl = trunc i64 %i.dk to i8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !100
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ci, i64 9
  %i.do = load i64, ptr %i.by, align 8, !tbaa !94
  %i.dp = lshr i64 %i.do, 16
  %i.dq = trunc i64 %i.dp to i8
  store i8 %i.dq, ptr %i.dn, align 1, !tbaa !100
  %i.dr = load i64, ptr %i.by, align 8, !tbaa !94
  %i.ds = lshr i64 %i.dr, 8
  %i.dt = trunc i64 %i.ds to i8
  %i.du = getelementptr inbounds nuw i8, ptr %i.ci, i64 10
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !100
  %i.dv = load i64, ptr %i.by, align 8, !tbaa !94
  %i.dw = trunc i64 %i.dv to i8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ci, i64 11
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !100
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.s
  %i.dy = load ptr, ptr %i.ak, align 8, !tbaa !96
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !98
  %i.eb = load i64, ptr %i.l, align 8, !tbaa !84
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.eb
  %i.ed = call i32 @dtls1_write_bytes(ptr noundef nonnull %0, i8 noundef zeroext %1, ptr noundef %i.ec, i64 noundef %.1131, ptr noundef nonnull %i.a) #8
  br i1 %i.p, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.ee = load ptr, ptr %i.aj, align 8, !tbaa !95
  %.not154 = icmp eq ptr %i.ee, null
  br i1 %.not154, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ef = load i64, ptr %i.l, align 8, !tbaa !84  ; 2 uses
  %.not155 = icmp eq i64 %i.ef, 0
  br i1 %.not155, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eg = load ptr, ptr %i.ak, align 8, !tbaa !96
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !98
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ef
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.ej, ptr noundef nonnull align 1 dereferenceable(12) %i.b, i64 12, i1 false)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y
  %i.ek = icmp slt i32 %i.ed, 1
  br i1 %i.ek, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %.not160 = icmp eq i32 %.0132171, 0
  br i1 %.not160, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.el = call ptr @SSL_get_wbio(ptr noundef nonnull %0) #8
  %i.em = call i64 @BIO_ctrl(ptr noundef %i.el, i32 noundef 43, i64 noundef 0, ptr noundef null) #8
  %i.en = icmp sgt i64 %i.em, 0
  br i1 %i.en, label %bb.af, label %.loopexit

bb.af:                                            ; preds = %bb.ae
  %i.eo = call i64 @SSL_get_options(ptr noundef nonnull %0) #8
  %i.ep = and i64 %i.eo, 4096
  %.not161 = icmp eq i64 %i.ep, 0
  br i1 %.not161, label %bb.ag, label %.loopexit

bb.ag:                                            ; preds = %bb.af
  %i.eq = call i32 @dtls1_query_mtu(ptr noundef nonnull %0) #8
  %.not162 = icmp eq i32 %i.eq, 0
  br i1 %.not162, label %.loopexit, label %._crit_edge196

._crit_edge196:                                   ; preds = %bb.ag
  %.pre197 = load i64, ptr %i.af, align 8, !tbaa !85
  br label %bb.au

bb.ah:                                            ; preds = %bb.ac
  %i.er = load i64, ptr %i.a, align 8, !tbaa !103
  %i.es = icmp eq i64 %.1131, %i.er
  br i1 %i.es, label %bb.ai, label %.loopexit, !prof !87

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.p, label %bb.aj, label %bb.ap

bb.aj:                                            ; preds = %bb.ai
  %i.et = load ptr, ptr %i.f, align 8, !tbaa !81  ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 460
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !104
  %.not156 = icmp eq i32 %i.ev, 0
  br i1 %.not156, label %bb.ak, label %bb.ap

bb.ak:                                            ; preds = %bb.aj
  %i.ew = load ptr, ptr %i.ak, align 8, !tbaa !96
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !98
  %i.ez = load i64, ptr %i.l, align 8, !tbaa !84
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.ez ; 14 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.et, i64 312
  %i.fc = icmp eq i64 %.1, 0
  br i1 %i.fc, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.fd = load i32, ptr %i.al, align 8, !tbaa !105
  %.not157 = icmp eq i32 %i.fd, 256
  br i1 %.not157, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fe = load i8, ptr %i.fb, align 8, !tbaa !99
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 1
  store i8 %i.fe, ptr %i.fa, align 1, !tbaa !100
  %i.fg = getelementptr inbounds nuw i8, ptr %i.et, i64 320 ; 6 uses
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !101
  %i.fi = lshr i64 %i.fh, 16
  %i.fj = trunc i64 %i.fi to i8
  store i8 %i.fj, ptr %i.ff, align 1, !tbaa !100
  %i.fk = load i64, ptr %i.fg, align 8, !tbaa !101
  %i.fl = lshr i64 %i.fk, 8
  %i.fm = trunc i64 %i.fl to i8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fa, i64 2
  store i8 %i.fm, ptr %i.fn, align 1, !tbaa !100
  %i.fo = load i64, ptr %i.fg, align 8, !tbaa !101
  %i.fp = trunc i64 %i.fo to i8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fa, i64 3
  store i8 %i.fp, ptr %i.fq, align 1, !tbaa !100
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  %i.fs = getelementptr inbounds nuw i8, ptr %i.et, i64 328 ; 2 uses
  %5 = load i16, ptr %i.fs, align 8, !tbaa !102
  %6 = lshr i16 %5, 8
  %7 = trunc nuw i16 %6 to i8
  store i8 %7, ptr %i.fr, align 1, !tbaa !100
  %i.ft = load i16, ptr %i.fs, align 8, !tbaa !102
  %i.fu = trunc i16 %i.ft to i8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fa, i64 5
  store i8 %i.fu, ptr %i.fv, align 1, !tbaa !100
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fa, i64 6
  store i8 0, ptr %i.fw, align 1, !tbaa !100
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fa, i64 7
  store i8 0, ptr %i.fx, align 1, !tbaa !100
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  store i8 0, ptr %i.fy, align 1, !tbaa !100
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fa, i64 9
  %i.ga = load i64, ptr %i.fg, align 8, !tbaa !101
  %i.gb = lshr i64 %i.ga, 16
  %i.gc = trunc i64 %i.gb to i8
  store i8 %i.gc, ptr %i.fz, align 1, !tbaa !100
  %i.gd = load i64, ptr %i.fg, align 8, !tbaa !101
  %i.ge = lshr i64 %i.gd, 8
  %i.gf = trunc i64 %i.ge to i8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fa, i64 10
  store i8 %i.gf, ptr %i.gg, align 1, !tbaa !100
  %i.gh = load i64, ptr %i.fg, align 8, !tbaa !101
  %i.gi = trunc i64 %i.gh to i8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fa, i64 11
  store i8 %i.gi, ptr %i.gj, align 1, !tbaa !100
  %i.gk = load i64, ptr %i.a, align 8, !tbaa !103
  br label %bb.ao

bb.an:                                            ; preds = %bb.al, %bb.ak
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fa, i64 12
  %i.gm = add nsw i64 %.1131, -12
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.0127 = phi ptr [ %i.fa, %bb.am ], [ %i.gl, %bb.an ]
  %.0 = phi i64 [ %i.gk, %bb.am ], [ %i.gm, %bb.an ]
  %i.gn = call i32 @ssl3_finish_mac(ptr noundef nonnull %0, ptr noundef nonnull %.0127, i64 noundef %.0) #8
  %.not158.not = icmp eq i32 %i.gn, 0
  br i1 %.not158.not, label %.loopexit, label %._crit_edge194

._crit_edge194:                                   ; preds = %bb.ao
  %.pre195 = load i64, ptr %i.a, align 8, !tbaa !103
  br label %bb.ap

bb.ap:                                            ; preds = %._crit_edge194, %bb.aj, %bb.ai
  %i.go = phi i64 [ %.pre195, %._crit_edge194 ], [ %.1131, %bb.aj ], [ %.1131, %bb.ai ] ; 5 uses
  %i.gp = load i64, ptr %i.af, align 8, !tbaa !85 ; 2 uses
  %i.gq = icmp eq i64 %i.go, %i.gp
  br i1 %i.gq, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.gr = load ptr, ptr %i.aj, align 8, !tbaa !95 ; 2 uses
  %.not159 = icmp eq ptr %i.gr, null
  br i1 %.not159, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gs = load i32, ptr %i.al, align 8, !tbaa !105
  %i.gt = load ptr, ptr %i.ak, align 8, !tbaa !96
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !98
  %i.gw = load i64, ptr %i.l, align 8, !tbaa !84
  %i.gx = add i64 %i.gw, %i.go
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !106
  call void %i.gr(i32 noundef 1, i32 noundef %i.gs, i32 noundef %i.o, ptr noundef %i.gv, i64 noundef %i.gx, ptr noundef %i.d, ptr noundef %i.gz) #8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  br label %.loopexit

bb.at:                                            ; preds = %bb.ap
  %i.ha = load i64, ptr %i.l, align 8, !tbaa !84
  %i.hb = add i64 %i.ha, %i.go
  store i64 %i.hb, ptr %i.l, align 8, !tbaa !84
  %i.hc = sub i64 %i.gp, %i.go                    ; 2 uses
  store i64 %i.hc, ptr %i.af, align 8, !tbaa !85
  %i.hd = add i64 %i.go, -12                      ; 2 uses
  store i64 %i.hd, ptr %i.a, align 8, !tbaa !103
  %i.he = add i64 %i.hd, %.1                      ; 2 uses
  %.val = load ptr, ptr %i.f, align 8, !tbaa !81  ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.val, i64 336
  store i64 %i.he, ptr %i.hf, align 8, !tbaa !93
  %i.hg = getelementptr inbounds nuw i8, ptr %.val, i64 344
  store i64 0, ptr %i.hg, align 8, !tbaa !94
  br label %bb.au

bb.au:                                            ; preds = %._crit_edge196, %bb.at
  %i.hh = phi i64 [ %i.hc, %bb.at ], [ %.pre197, %._crit_edge196 ] ; 2 uses
  %.1133 = phi i32 [ %.0132171, %bb.at ], [ 0, %._crit_edge196 ]
  %.2 = phi i64 [ %i.he, %bb.at ], [ %.1, %._crit_edge196 ]
  %.not149 = icmp eq i64 %i.hh, 0
  br i1 %.not149, label %.loopexit, label %bb.f, !llvm.loop !134

.loopexit:                                        ; preds = %bb.ao, %bb.i, %bb.o, %bb.t, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ah, %bb.au, %bb.e, %bb.d, %bb.b, %bb.a, %bb.as, %bb.n
  %.4 = phi i32 [ -1, %bb.a ], [ -1, %bb.d ], [ %i.bg, %bb.n ], [ 1, %bb.as ], [ -1, %bb.b ], [ 0, %bb.e ], [ -1, %bb.ah ], [ -1, %bb.af ], [ -1, %bb.ad ], [ -1, %bb.ao ], [ -1, %bb.ae ], [ -1, %bb.ag ], [ -1, %bb.o ], [ -1, %bb.t ], [ -1, %bb.i ], [ 0, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @dtls1_query_mtu(ptr noundef) local_unnamed_addr #1

declare i64 @dtls1_min_mtu(ptr noundef) local_unnamed_addr #1

declare i64 @BIO_ctrl(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ssl_get_max_send_fragment(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @dtls1_write_bytes(ptr noundef, i8 noundef zeroext, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @SSL_get_wbio(ptr noundef) local_unnamed_addr #1

declare i64 @SSL_get_options(ptr noundef) local_unnamed_addr #1

declare i32 @ssl3_finish_mac(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @dtls_get_message(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 7 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca [256 x i8], align 16              ; 4 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  %i.e = alloca i8, align 1                       ; 6 uses
  %2 = alloca %struct.hm_header_st, align 8       ; 15 uses
  %i.f = alloca i64, align 8                      ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1264 ; 11 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !81   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 376 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, i8 0, i64 64, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 3784
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1272 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1280 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.z = getelementptr i8, ptr %0, i64 2504
  br label %bb.b

bb.b:                                             ; preds = %bb.bl, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !80
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !96
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !98 ; 15 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 3
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 5
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 6
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 7
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 9
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 10
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 11
  br label %bb.c

bb.c:                                             ; preds = %bb.ba, %bb.b
  %.0.i = phi i32 [ 0, %bb.b ], [ %.1.i, %bb.ba ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.ap = load ptr, ptr %i.g, align 8, !tbaa !81
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 280
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !108
  %i.as = call ptr @pqueue_iterator(ptr noundef %i.ar) #8
  store ptr %i.as, ptr %i.d, align 8, !tbaa !110
  %i.at = call ptr @pqueue_next(ptr noundef nonnull %i.d) #8 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.h
  %i.av = phi ptr [ %i.cd, %bb.h ], [ %i.at, %bb.c ] ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !112 ; 10 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load i16, ptr %i.ay, align 8, !tbaa !113 ; 2 uses
  %i.ba = load ptr, ptr %i.g, align 8, !tbaa !81  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 272
  %i.bc = load i16, ptr %i.bb, align 8, !tbaa !142 ; 2 uses
  %i.bd = icmp ult i16 %i.az, %i.bc
  br i1 %i.bd, label %bb.d, label %.loopexit79.i.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.be = load i32, ptr %i.l, align 8, !tbaa !143
  %.not.i.i = icmp ne i32 %i.be, 0
  %.not58.i.i = icmp eq i16 %i.az, 0
  %or.cond65.i.i = and i1 %.not58.i.i, %.not.i.i
  %.not59.i.i = icmp eq i16 %i.bc, 1
  %or.cond66.i.i = and i1 %.not59.i.i, %or.cond65.i.i
  br i1 %or.cond66.i.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.bf = load i32, ptr %i.m, align 4, !tbaa !144
  %.not60.i.i = icmp eq i32 %i.bf, 23
  br i1 %.not60.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.bg = call ptr @pqueue_next(ptr noundef nonnull %i.d) #8 ; 3 uses
  %.not61.i.i = icmp eq ptr %i.bg, null
  br i1 %.not61.i.i, label %.loopexit79.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !112 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load i16, ptr %i.bj, align 8, !tbaa !113
  %i.bl = load ptr, ptr %i.g, align 8, !tbaa !81  ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 272
  %i.bn = load i16, ptr %i.bm, align 8, !tbaa !142
  %i.bo = icmp eq i16 %i.bk, %i.bn
  br i1 %i.bo, label %dtls1_hm_fragment_free.exit68.i.i, label %.loopexit79.i.i

dtls1_hm_fragment_free.exit68.i.i:                ; preds = %bb.g
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 280
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !108
  %i.br = call ptr @pqueue_pop(ptr noundef %i.bq) #8 ; 0 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !17
  call void @CRYPTO_free(ptr noundef %i.bt, ptr noundef nonnull @.str, i32 noundef 109) #8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !18
  call void @CRYPTO_free(ptr noundef %i.bv, ptr noundef nonnull @.str, i32 noundef 110) #8
  call void @CRYPTO_free(ptr noundef nonnull %i.ax, ptr noundef nonnull @.str, i32 noundef 111) #8
  call void @pitem_free(ptr noundef nonnull %i.av) #8
  br label %.loopexit79.i.i

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ba, i64 280
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !108
  %i.by = call ptr @pqueue_pop(ptr noundef %i.bx) #8 ; 0 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !17
  call void @CRYPTO_free(ptr noundef %i.ca, ptr noundef nonnull @.str, i32 noundef 109) #8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !18
  call void @CRYPTO_free(ptr noundef %i.cc, ptr noundef nonnull @.str, i32 noundef 110) #8
  call void @CRYPTO_free(ptr noundef nonnull %i.ax, ptr noundef nonnull @.str, i32 noundef 111) #8
  call void @pitem_free(ptr noundef nonnull %i.av) #8
  %i.cd = call ptr @pqueue_next(ptr noundef nonnull %i.d) #8 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !138

.loopexit79.i.i:                                  ; preds = %.lr.ph.i.i, %dtls1_hm_fragment_free.exit68.i.i, %bb.g, %bb.f
  %.152.ph.i.i = phi ptr [ %i.av, %bb.f ], [ %i.av, %bb.g ], [ %i.bg, %dtls1_hm_fragment_free.exit68.i.i ], [ %i.av, %.lr.ph.i.i ] ; 2 uses
  %.150.ph.i.i = phi ptr [ %i.ax, %bb.f ], [ %i.ax, %bb.g ], [ %i.bi, %dtls1_hm_fragment_free.exit68.i.i ], [ %i.ax, %.lr.ph.i.i ] ; 11 uses
  %i.cf = phi i1 [ true, %bb.f ], [ true, %bb.g ], [ false, %dtls1_hm_fragment_free.exit68.i.i ], [ false, %.lr.ph.i.i ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.150.ph.i.i, i64 72
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !18
  %.not62.i.i = icmp eq ptr %i.ch, null
  br i1 %.not62.i.i, label %bb.i, label %.loopexit.i

bb.i:                                             ; preds = %.loopexit79.i.i
  %i.ci = load ptr, ptr %i.g, align 8, !tbaa !81  ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 272
  %i.ck = load i16, ptr %i.cj, align 8, !tbaa !142
  %i.cl = getelementptr inbounds nuw i8, ptr %.150.ph.i.i, i64 16
  %i.cm = load i16, ptr %i.cl, align 8, !tbaa !113
  %i.cn = icmp eq i16 %i.ck, %i.cm
  %or.cond.i.i = or i1 %i.cf, %i.cn
  br i1 %or.cond.i.i, label %bb.j, label %.loopexit.i

bb.j:                                             ; preds = %bb.i
  %i.co = getelementptr inbounds nuw i8, ptr %.150.ph.i.i, i64 72 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.150.ph.i.i, i64 32 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !114
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ci, i64 280
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !108
  %i.ct = call ptr @pqueue_pop(ptr noundef %i.cs) #8 ; 0 uses
  %i.cu = call fastcc i32 @dtls1_preprocess_fragment(ptr noundef nonnull %0, ptr noundef nonnull %.150.ph.i.i)
  %.not63.i.i = icmp eq i32 %i.cu, 0
  br i1 %.not63.i.i, label %dtls1_retrieve_buffered_fragment.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cv = load i64, ptr %i.cp, align 8, !tbaa !114 ; 2 uses
  %.not64.i.i = icmp eq i64 %i.cv, 0
  br i1 %.not64.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cw = load ptr, ptr %i.k, align 8, !tbaa !96
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !98
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  %i.da = getelementptr inbounds nuw i8, ptr %.150.ph.i.i, i64 24
  %i.db = load i64, ptr %i.da, align 8, !tbaa !115
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %.150.ph.i.i, i64 64
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dc, ptr align 1 %i.de, i64 %i.cv, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.df = getelementptr inbounds nuw i8, ptr %.150.ph.i.i, i64 64
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !17
  call void @CRYPTO_free(ptr noundef %i.dg, ptr noundef nonnull @.str, i32 noundef 109) #8
  %i.dh = load ptr, ptr %i.co, align 8, !tbaa !18
  call void @CRYPTO_free(ptr noundef %i.dh, ptr noundef nonnull @.str, i32 noundef 110) #8
  call void @CRYPTO_free(ptr noundef nonnull %.150.ph.i.i, ptr noundef nonnull @.str, i32 noundef 111) #8
  call void @pitem_free(ptr noundef nonnull %.152.ph.i.i) #8
  br i1 %i.cf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.di = load ptr, ptr %i.g, align 8, !tbaa !81  ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 272
  store i16 0, ptr %i.dj, align 8, !tbaa !142
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 270
  store i16 0, ptr %i.dk, align 2, !tbaa !116
  br label %bb.o

dtls1_retrieve_buffered_fragment.exit.i:          ; preds = %bb.j
  %i.dl = getelementptr inbounds nuw i8, ptr %.150.ph.i.i, i64 64
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !17
  call void @CRYPTO_free(ptr noundef %i.dm, ptr noundef nonnull @.str, i32 noundef 109) #8
  %i.dn = load ptr, ptr %i.co, align 8, !tbaa !18
  call void @CRYPTO_free(ptr noundef %i.dn, ptr noundef nonnull @.str, i32 noundef 110) #8
  call void @CRYPTO_free(ptr noundef nonnull %.150.ph.i.i, ptr noundef nonnull @.str, i32 noundef 111) #8
  call void @pitem_free(ptr noundef nonnull %.152.ph.i.i) #8
end_hunk_0
begin_hunk_1_@dtls_get_message:bb.a

bb.aq:                                            ; preds = %bb.ap
  %i.hr = load ptr, ptr %i.g, align 8, !tbaa !81
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 280
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !108
  %i.hu = call ptr @pqueue_insert(ptr noundef %i.ht, ptr noundef nonnull %i.hp) #8
  %.not73.i.i = icmp eq ptr %i.hu, null
  br i1 %.not73.i.i, label %bb.ar, label %dtls1_process_out_of_seq_message.exit.i, !prof !124

.critedge.i.i:                                    ; preds = %.lr.ph.i97.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %dtls1_process_out_of_seq_message.exit.i

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hc, i64 64
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !17
  call void @CRYPTO_free(ptr noundef %i.hw, ptr noundef nonnull @.str, i32 noundef 109) #8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hc, i64 72
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !18
  call void @CRYPTO_free(ptr noundef %i.hy, ptr noundef nonnull @.str, i32 noundef 110) #8
  call void @CRYPTO_free(ptr noundef nonnull %i.hc, ptr noundef nonnull @.str, i32 noundef 111) #8
  br label %dtls1_process_out_of_seq_message.exit.i

dtls1_process_out_of_seq_message.exit.i:          ; preds = %bb.ar, %.critedge.i.i, %bb.aq, %bb.an, %bb.ak, %bb.aj, %bb.ai, %.thread.i.i, %bb.ab
  %.056.i.i = phi i32 [ -3, %bb.aq ], [ %i.ha, %bb.ai ], [ -3, %.thread.i.i ], [ 0, %bb.ak ], [ 0, %.critedge.i.i ], [ 0, %bb.ar ], [ 0, %bb.aj ], [ 0, %bb.ab ], [ 0, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.bl

bb.as:                                            ; preds = %bb.aa, %bb.y
  %.1.i = phi i32 [ %.0.i, %bb.y ], [ 1, %bb.aa ] ; 2 uses
  %.not85.i = icmp ne i64 %i.fr, 0                ; 2 uses
  %i.hz = icmp samesign ult i64 %i.fr, %i.er
  %or.cond95.i = select i1 %.not85.i, i1 %i.hz, i1 false
  br i1 %or.cond95.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ia = call fastcc i32 @dtls1_reassemble_fragment(ptr noundef nonnull %0, ptr noundef %2)
  br label %bb.bl

bb.au:                                            ; preds = %bb.as
  %i.ib = load i32, ptr %i.l, align 8, !tbaa !143
  %.not86.i = icmp eq i32 %i.ib, 0
  br i1 %.not86.i, label %bb.av, label %bb.bc

bb.av:                                            ; preds = %bb.au
  %i.ic = getelementptr inbounds nuw i8, ptr %i.fx, i64 400
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !125
  %i.ie = icmp eq i64 %i.id, 0
  br i1 %i.ie, label %bb.aw, label %bb.bc

bb.aw:                                            ; preds = %bb.av
  %i.if = load i32, ptr %i.m, align 4, !tbaa !144
  %.not87.i = icmp ne i32 %i.if, 1
  %i.ig = icmp eq i8 %i.eh, 0
  %or.cond114.i = select i1 %.not87.i, i1 %i.ig, i1 false
  br i1 %or.cond114.i, label %bb.ax, label %bb.bc

bb.ax:                                            ; preds = %bb.aw
  %i.ih = icmp eq i8 %i.ei, 0
  %i.ii = icmp eq i8 %i.el, 0
  %or.cond115.i = select i1 %i.ih, i1 %i.ii, i1 false
  %i.ij = icmp eq i8 %i.ep, 0
  %or.cond116.i = select i1 %or.cond115.i, i1 %i.ij, i1 false
  br i1 %or.cond116.i, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  %i.ik = load ptr, ptr %i.t, align 8, !tbaa !95  ; 2 uses
  %.not88.i = icmp eq ptr %i.ik, null
  br i1 %.not88.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.il = load i32, ptr %i.u, align 8, !tbaa !105
  %i.im = load ptr, ptr %i.v, align 8, !tbaa !106
  call void %i.ik(i32 noundef 0, i32 noundef %i.il, i32 noundef 22, ptr noundef nonnull %i.ad, i64 noundef 12, ptr noundef %i.aa, ptr noundef %i.im) #8, !inline_history !139
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  store i64 0, ptr %i.w, align 8, !tbaa !85
  br label %bb.c

bb.bb:                                            ; preds = %bb.ax
  call void @ERR_new() #8
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 937, ptr noundef nonnull @__func__.dtls_get_reassembled_message) #8
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 10, i32 noundef 244, ptr noundef null) #8
  br label %bb.bk

bb.bc:                                            ; preds = %bb.aw, %bb.av, %bb.au
  %i.in = call fastcc i32 @dtls1_preprocess_fragment(ptr noundef nonnull %0, ptr noundef nonnull %2)
  %.not89.i = icmp eq i32 %i.in, 0
  br i1 %.not89.i, label %bb.bk, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  br i1 %.not85.i, label %bb.be, label %.thread.i

bb.be:                                            ; preds = %bb.bd
  %i.io = load ptr, ptr %i.k, align 8, !tbaa !96
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !98
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 12
  %i.is = load ptr, ptr %i.n, align 8, !tbaa !117
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 128
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !120
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.fh
  %i.iw = call i32 %i.iu(ptr noundef nonnull %0, i8 noundef zeroext 22, ptr noundef null, ptr noundef nonnull %i.iv, i64 noundef %i.fr, i32 noundef 0, ptr noundef nonnull %i.f) #8, !inline_history !139
  %i.ix = icmp slt i32 %i.iw, 1
  br i1 %i.ix, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 3, ptr %i.iy, align 8, !tbaa !91
  br label %.thread

bb.bg:                                            ; preds = %bb.be
  %.pre.i = load i64, ptr %i.f, align 8, !tbaa !103
  %i.iz = icmp eq i64 %.pre.i, %i.fr
  br i1 %i.iz, label %.thread.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @ERR_new() #8
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 972, ptr noundef nonnull @__func__.dtls_get_reassembled_message) #8
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 47, i32 noundef 271, ptr noundef null) #8
  br label %bb.bk

.thread.i:                                        ; preds = %bb.bg, %bb.bd
  %.not92.i = icmp eq i32 %.1.i, 0
  br i1 %.not92.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.thread.i
  %i.ja = load ptr, ptr %i.g, align 8, !tbaa !81  ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 272
  store i16 0, ptr %i.jb, align 8, !tbaa !142
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 270
  store i16 0, ptr %i.jc, align 2, !tbaa !116
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %.thread.i
  store i64 %i.fr, ptr %i.w, align 8, !tbaa !85
  br label %bb.bm

bb.bk:                                            ; preds = %bb.bh, %bb.bc, %bb.bb, %bb.x, %bb.v, %bb.s
  store i64 0, ptr %i.w, align 8, !tbaa !85
  br label %.thread

.thread:                                          ; preds = %dtls1_retrieve_buffered_fragment.exit.i, %bb.bf, %bb.bk, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  br label %.loopexit

bb.bl:                                            ; preds = %dtls1_process_out_of_seq_message.exit.i, %bb.at
  %.046.ph = phi i32 [ %i.ia, %bb.at ], [ %.056.i.i, %dtls1_process_out_of_seq_message.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  %or.cond = icmp slt i32 %.046.ph, -1
  br i1 %or.cond, label %bb.b, label %.loopexit

bb.bm:                                            ; preds = %bb.bj, %bb.t, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.je = load i32, ptr %i.jd, align 8, !tbaa !121 ; 2 uses
  store i32 %i.je, ptr %1, align 4, !tbaa !126
  %i.jf = load ptr, ptr %i.k, align 8, !tbaa !96
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !98 ; 13 uses
  %i.ji = icmp eq i32 %i.je, 257
  br i1 %i.ji, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.jj = load ptr, ptr %i.t, align 8, !tbaa !95  ; 2 uses
  %.not45 = icmp eq ptr %i.jj, null
  br i1 %.not45, label %.loopexit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.jk = load i32, ptr %i.u, align 8, !tbaa !105
  %i.jl = load ptr, ptr %i.j, align 8, !tbaa !80
  %i.jm = load ptr, ptr %i.v, align 8, !tbaa !106
  call void %i.jj(i32 noundef 0, i32 noundef %i.jk, i32 noundef 20, ptr noundef %i.jh, i64 noundef 1, ptr noundef %i.jl, ptr noundef %i.jm) #8
  br label %.loopexit

bb.bp:                                            ; preds = %bb.bm
  %i.jn = getelementptr inbounds nuw i8, ptr %i.h, i64 384
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !101 ; 3 uses
  %i.jp = load i8, ptr %i.i, align 8, !tbaa !99
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jh, i64 1
  store i8 %i.jp, ptr %i.jh, align 1, !tbaa !100
  %i.jr = lshr i64 %i.jo, 16
  %i.js = trunc i64 %i.jr to i8                   ; 2 uses
  store i8 %i.js, ptr %i.jq, align 1, !tbaa !100
  %i.jt = lshr i64 %i.jo, 8
  %i.ju = trunc i64 %i.jt to i8                   ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jh, i64 2
  store i8 %i.ju, ptr %i.jv, align 1, !tbaa !100
  %i.jw = trunc i64 %i.jo to i8                   ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jh, i64 3
  store i8 %i.jw, ptr %i.jx, align 1, !tbaa !100
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jh, i64 4
  %i.jz = getelementptr inbounds nuw i8, ptr %i.h, i64 392 ; 2 uses
  %3 = load i16, ptr %i.jz, align 8, !tbaa !102
  %4 = lshr i16 %3, 8
  %5 = trunc nuw i16 %4 to i8
  store i8 %5, ptr %i.jy, align 1, !tbaa !100
  %i.ka = load i16, ptr %i.jz, align 8, !tbaa !102
  %i.kb = trunc i16 %i.ka to i8
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jh, i64 5
  store i8 %i.kb, ptr %i.kc, align 1, !tbaa !100
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jh, i64 6
  store i8 0, ptr %i.kd, align 1, !tbaa !100
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jh, i64 7
  store i8 0, ptr %i.ke, align 1, !tbaa !100
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  store i8 0, ptr %i.kf, align 1, !tbaa !100
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jh, i64 9
  store i8 %i.js, ptr %i.kg, align 1, !tbaa !100
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jh, i64 10
  store i8 %i.ju, ptr %i.kh, align 1, !tbaa !100
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jh, i64 11
  store i8 %i.jw, ptr %i.ki, align 1, !tbaa !100
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, i8 0, i64 64, i1 false)
  %i.kj = load ptr, ptr %i.g, align 8, !tbaa !81
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 272 ; 2 uses
  %i.kl = load i16, ptr %i.kk, align 8, !tbaa !142
  %i.km = add i16 %i.kl, 1
  store i16 %i.km, ptr %i.kk, align 8, !tbaa !142
  %i.kn = load ptr, ptr %i.k, align 8, !tbaa !96
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !98
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 12
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr %i.kq, ptr %i.kr, align 8, !tbaa !145
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bl, %.thread, %bb.bn, %bb.bo, %bb.bp
  %.0 = phi i32 [ 0, %.thread ], [ 1, %bb.bp ], [ 1, %bb.bo ], [ 1, %bb.bn ], [ 0, %bb.bl ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @dtls_get_message_body(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !85   ; 3 uses
  %i.g = add i64 %i.f, 12
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.i = load i32, ptr %i.h, align 8, !tbaa !121
  %i.j = icmp eq i32 %i.i, 257
  br i1 %i.j, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load i8, ptr %i.d, align 1, !tbaa !100
  %i.l = icmp eq i8 %i.k, 20
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = tail call i32 @ssl3_take_mac(ptr noundef nonnull %0) #8
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !105
  %i.p = icmp eq i32 %i.o, 256                    ; 2 uses
  %spec.select.idx = select i1 %i.p, i64 12, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %i.d, i64 %spec.select.idx
  %spec.select25 = select i1 %i.p, i64 %i.f, i64 %i.g
  %i.q = tail call i32 @ssl3_finish_mac(ptr noundef nonnull %0, ptr noundef nonnull %spec.select, i64 noundef %spec.select25) #8
  %.not23 = icmp eq i32 %i.q, 0
  br i1 %.not23, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !95   ; 2 uses
  %.not24 = icmp eq ptr %i.s, null
  %.pre26 = load i64, ptr %i.e, align 8, !tbaa !85 ; 2 uses
  br i1 %.not24, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load i32, ptr %i.n, align 8, !tbaa !105
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !96
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !98
  %i.x = add i64 %.pre26, 12
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !80
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !106
  tail call void %i.s(i32 noundef 0, i32 noundef %i.t, i32 noundef 22, ptr noundef %i.w, i64 noundef %i.x, ptr noundef %i.z, ptr noundef %i.ab) #8
  %.pre = load i64, ptr %i.e, align 8, !tbaa !85
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.a
  %i.ac = phi i64 [ %.pre26, %bb.e ], [ %.pre, %bb.f ], [ %i.f, %bb.a ]
  store i64 %i.ac, ptr %1, align 8, !tbaa !103
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.c, %bb.g
  %.021 = phi i32 [ 1, %bb.g ], [ 0, %bb.c ], [ 0, %bb.d ]
  ret i32 %.021
}

declare i32 @ssl3_take_mac(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @dtls_construct_change_cipher_spec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i32, ptr %i.a, align 8, !tbaa !105
  %i.c = icmp eq i32 %i.b, 256
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !81   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 270 ; 2 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !116
  %i.h = add i16 %i.g, 1
  store i16 %i.h, ptr %i.f, align 2, !tbaa !116
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 268
  %i.j = load i16, ptr %i.i, align 4, !tbaa !127
  %i.k = zext i16 %i.j to i64
  %i.l = tail call i32 @WPACKET_put_bytes__(ptr noundef %1, i64 noundef %i.k, i64 noundef 2) #8
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1015, ptr noundef nonnull @__func__.dtls_construct_change_cipher_spec) #8
  tail call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 1, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

declare i32 @WPACKET_put_bytes__(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @ossl_statem_fatal(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @dtls1_read_failed(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1069, ptr noundef nonnull @__func__.dtls1_read_failed) #8
  tail call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #8
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i32 @dtls1_is_timer_expired(ptr noundef %0) #8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = tail call i32 @ossl_statem_in_error(ptr noundef %0) #8
  %.not11 = icmp eq i32 %i.c, 0
  br i1 %.not11, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.d = tail call i32 @SSL_in_init(ptr noundef %0) #8
  %.not12 = icmp eq i32 %i.d, 0
  br i1 %.not12, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.e = tail call ptr @SSL_get_rbio(ptr noundef %0) #8
  tail call void @BIO_set_flags(ptr noundef %i.e, i32 noundef 1) #8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.f = tail call i32 @dtls1_handle_timeout(ptr noundef %0) #8
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.d, %bb.g, %bb.f, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %1, %bb.f ], [ %i.f, %bb.g ], [ %1, %bb.d ], [ %1, %bb.c ]
  ret i32 %.0
}

declare i32 @dtls1_is_timer_expired(ptr noundef) local_unnamed_addr #1

declare i32 @ossl_statem_in_error(ptr noundef) local_unnamed_addr #1

declare i32 @SSL_in_init(ptr noundef) local_unnamed_addr #1

declare void @BIO_set_flags(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @SSL_get_rbio(ptr noundef) local_unnamed_addr #1

declare i32 @dtls1_handle_timeout(ptr noundef) local_unnamed_addr #1
end_hunk_1
