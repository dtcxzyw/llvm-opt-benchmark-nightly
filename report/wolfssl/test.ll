Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/test?download=true
inline.NumInlined: 122
inline.NumDeleted: 89
loop-unroll.NumCompletelyUnrolled: 81
loop-unroll.NumUnrolled: 82
begin_hunk_0_@rsa_oaep_padding_test:bb.a
  %i.bk = load i128, ptr %i.bi, align 1
  %i.bl = load i128, ptr %i.bj, align 1
  %i.bm = xor i128 %i.bk, %i.bl
  %i.bn = or i128 %i.bh, %i.bm
  %i.bo = icmp ne i128 %i.bn, 0
  %i.bp = zext i1 %i.bo to i32
  %.not102 = icmp eq i32 %i.bp, 0
  br i1 %.not102, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.d, i8 0, i64 512, i1 false)
  %i.bq = call i32 @wc_RsaPublicEncrypt_ex(ptr noundef nonnull %i.b, i32 noundef 25, ptr noundef nonnull %i.c, i32 noundef 512, ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1, i32 noundef 6, i32 noundef 1, ptr noundef null, i32 noundef 0) #19 ; 4 uses
  %i.br = icmp eq i32 %i.bq, -108
  br i1 %i.br, label %.peel.next170, label %bb.u

.peel.next170:                                    ; preds = %bb.t, %.peel.next170
  br label %.peel.next170

bb.u:                                             ; preds = %bb.t
  %i.bs = icmp slt i32 %i.bq, 0
  br i1 %i.bs, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bt = call i32 @wc_RsaPrivateDecrypt_ex(ptr noundef nonnull %i.c, i32 noundef %i.bq, ptr noundef nonnull %i.d, i32 noundef 512, ptr noundef nonnull %0, i32 noundef 1, i32 noundef 6, i32 noundef 1, ptr noundef nonnull %i.b, i32 noundef 25) #19 ; 2 uses
  %i.bu = icmp eq i32 %i.bt, -108
  br i1 %i.bu, label %.preheader153.peel.next, label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.bv = sub nsw i32 0, %i.bq
  %i.bw = and i32 %i.bv, 2047
  %narrow.neg131 = mul nsw i32 %i.bw, -100000
  %i.bx = add nsw i32 %narrow.neg131, -536899640
  br label %.thread

.preheader153.peel.next:                          ; preds = %bb.v, %.preheader153.peel.next
  br label %.preheader153.peel.next

bb.x:                                             ; preds = %bb.v
  %i.by = icmp sgt i32 %i.bt, 0
  br i1 %i.by, label %.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.d, i8 0, i64 512, i1 false)
  %i.bz = call i32 @wc_RsaPublicEncrypt_ex(ptr noundef nonnull %i.b, i32 noundef 25, ptr noundef nonnull %i.c, i32 noundef 512, ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1, i32 noundef 6, i32 noundef 1, ptr noundef nonnull %i.b, i32 noundef 25) #19 ; 4 uses
  %i.ca = icmp eq i32 %i.bz, -108
  br i1 %i.ca, label %.peel.next177, label %bb.z

.peel.next177:                                    ; preds = %bb.y, %.peel.next177
  br label %.peel.next177

bb.z:                                             ; preds = %bb.y
  %i.cb = icmp slt i32 %i.bz, 0
  br i1 %i.cb, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cc = call i32 @wc_RsaPrivateDecrypt_ex(ptr noundef nonnull %i.c, i32 noundef %i.bz, ptr noundef nonnull %i.d, i32 noundef 512, ptr noundef nonnull %0, i32 noundef 1, i32 noundef 6, i32 noundef 1, ptr noundef nonnull %i.b, i32 noundef 25) #19 ; 3 uses
  %i.cd = icmp eq i32 %i.cc, -108
  br i1 %i.cd, label %.preheader152.peel.next, label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.ce = sub nsw i32 0, %i.bz
  %i.cf = and i32 %i.ce, 2047
  %narrow.neg128 = mul nsw i32 %i.cf, -100000
  %i.cg = add nsw i32 %narrow.neg128, -536899665
  br label %.thread

.preheader152.peel.next:                          ; preds = %bb.aa, %.preheader152.peel.next
  br label %.preheader152.peel.next

bb.ac:                                            ; preds = %bb.aa
  %i.ch = icmp slt i32 %i.cc, 0
  br i1 %i.ch, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ci = sub nsw i32 0, %i.cc
  %i.cj = and i32 %i.ci, 2047
  %narrow.neg125 = mul nsw i32 %i.cj, -100000
  %i.ck = add nsw i32 %narrow.neg125, -536899674
  br label %.thread

bb.ae:                                            ; preds = %bb.ac
  %i.cl = load i128, ptr %i.d, align 16
  %i.cm = load i128, ptr %i.b, align 16
  %i.cn = xor i128 %i.cl, %i.cm
  %i.co = getelementptr i8, ptr %i.d, i64 9
  %i.cp = getelementptr i8, ptr %i.b, i64 9
  %i.cq = load i128, ptr %i.co, align 1
  %i.cr = load i128, ptr %i.cp, align 1
  %i.cs = xor i128 %i.cq, %i.cr
  %i.ct = or i128 %i.cn, %i.cs
  %i.cu = icmp ne i128 %i.ct, 0
  %i.cv = zext i1 %i.cu to i32
  %.not104 = icmp eq i32 %i.cv, 0
  br i1 %.not104, label %bb.af, label %.thread

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.d, i8 0, i64 512, i1 false)
  %i.cw = call i32 @wc_RsaPublicEncrypt_ex(ptr noundef nonnull %i.b, i32 noundef 25, ptr noundef nonnull %i.c, i32 noundef 512, ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1, i32 noundef 4, i32 noundef 26, ptr noundef nonnull %i.b, i32 noundef 25) #19 ; 4 uses
  %i.cx = icmp eq i32 %i.cw, -108
  br i1 %i.cx, label %.peel.next184, label %bb.ag

.peel.next184:                                    ; preds = %bb.af, %.peel.next184
  br label %.peel.next184

bb.ag:                                            ; preds = %bb.af
  %i.cy = icmp slt i32 %i.cw, 0
  br i1 %i.cy, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cz = call i32 @wc_RsaPrivateDecrypt_ex(ptr noundef nonnull %i.c, i32 noundef %i.cw, ptr noundef nonnull %i.d, i32 noundef 512, ptr noundef nonnull %0, i32 noundef 1, i32 noundef 6, i32 noundef 1, ptr noundef nonnull %i.b, i32 noundef 25) #19 ; 2 uses
  %i.da = icmp eq i32 %i.cz, -108
  br i1 %i.da, label %.preheader151.peel.next, label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.db = sub nsw i32 0, %i.cw
  %i.dc = and i32 %i.db, 2047
  %narrow.neg122 = mul nsw i32 %i.dc, -100000
  %i.dd = add nsw i32 %narrow.neg122, -536899689
  br label %.thread

.preheader151.peel.next:                          ; preds = %bb.ah, %.preheader151.peel.next
  br label %.preheader151.peel.next

bb.aj:                                            ; preds = %bb.ah
  %i.de = icmp sgt i32 %i.cz, 0
  br i1 %i.de, label %.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.df = call i32 @wc_RsaEncryptSize(ptr noundef nonnull %0) #19
  %i.dg = icmp sgt i32 %i.df, 130
  br i1 %i.dg, label %bb.al, label %bb.as

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.d, i8 0, i64 512, i1 false)
  %i.dh = call i32 @wc_RsaPublicEncrypt_ex(ptr noundef nonnull %i.b, i32 noundef 25, ptr noundef nonnull %i.c, i32 noundef 512, ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1, i32 noundef 8, i32 noundef 3, ptr noundef null, i32 noundef 0) #19 ; 4 uses
  %i.di = icmp eq i32 %i.dh, -108
  br i1 %i.di, label %.peel.next191, label %bb.am

.peel.next191:                                    ; preds = %bb.al, %.peel.next191
  br label %.peel.next191

bb.am:                                            ; preds = %bb.al
  %i.dj = icmp slt i32 %i.dh, 0
  br i1 %i.dj, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dk = call i32 @wc_RsaPrivateDecrypt_ex(ptr noundef nonnull %i.c, i32 noundef %i.dh, ptr noundef nonnull %i.d, i32 noundef 512, ptr noundef nonnull %0, i32 noundef 1, i32 noundef 8, i32 noundef 3, ptr noundef null, i32 noundef 0) #19 ; 3 uses
  %i.dl = icmp eq i32 %i.dk, -108
  br i1 %i.dl, label %.preheader150.peel.next, label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.dm = sub nsw i32 0, %i.dh
  %i.dn = and i32 %i.dm, 2047
  %narrow.neg119 = mul nsw i32 %i.dn, -100000
  %i.do = add nsw i32 %narrow.neg119, -536899720
  br label %.thread

.preheader150.peel.next:                          ; preds = %bb.an, %.preheader150.peel.next
  br label %.preheader150.peel.next

bb.ap:                                            ; preds = %bb.an
  %i.dp = icmp slt i32 %i.dk, 0
  br i1 %i.dp, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.dq = sub nsw i32 0, %i.dk
  %i.dr = and i32 %i.dq, 2047
  %narrow.neg116 = mul nsw i32 %i.dr, -100000
  %i.ds = add nsw i32 %narrow.neg116, -536899729
  br label %.thread

bb.ar:                                            ; preds = %bb.ap
  %i.dt = load i128, ptr %i.d, align 16
  %i.du = load i128, ptr %i.b, align 16
  %i.dv = xor i128 %i.dt, %i.du
  %i.dw = getelementptr i8, ptr %i.d, i64 9
  %i.dx = getelementptr i8, ptr %i.b, i64 9
  %i.dy = load i128, ptr %i.dw, align 1
  %i.dz = load i128, ptr %i.dx, align 1
  %i.ea = xor i128 %i.dy, %i.dz
  %i.eb = or i128 %i.dv, %i.ea
  %i.ec = icmp ne i128 %i.eb, 0
  %i.ed = zext i1 %i.ec to i32
  %.not106 = icmp eq i32 %i.ed, 0
  br i1 %.not106, label %bb.as, label %.thread

bb.as:                                            ; preds = %bb.ar, %bb.ak
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.d, i8 0, i64 512, i1 false)
  %i.ee = call i32 @wc_RsaPublicEncrypt_ex(ptr noundef nonnull %i.b, i32 noundef 25, ptr noundef nonnull %i.c, i32 noundef 512, ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #19 ; 4 uses
  %i.ef = icmp eq i32 %i.ee, -108
  br i1 %i.ef, label %.peel.next198, label %bb.at

.peel.next198:                                    ; preds = %bb.as, %.peel.next198
  br label %.peel.next198

bb.at:                                            ; preds = %bb.as
  %i.eg = icmp slt i32 %i.ee, 0
  br i1 %i.eg, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.eh = call i32 @wc_RsaPrivateDecrypt_ex(ptr noundef nonnull %i.c, i32 noundef %i.ee, ptr noundef nonnull %i.d, i32 noundef 512, ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #19 ; 3 uses
  %i.ei = icmp eq i32 %i.eh, -108
  br i1 %i.ei, label %.preheader.peel.next, label %bb.aw

bb.av:                                            ; preds = %bb.at
  %i.ej = sub nsw i32 0, %i.ee
  %i.ek = and i32 %i.ej, 2047
  %narrow.neg113 = mul nsw i32 %i.ek, -100000
  %i.el = add nsw i32 %narrow.neg113, -536899745
  br label %.thread

.preheader.peel.next:                             ; preds = %bb.au, %.preheader.peel.next
  br label %.preheader.peel.next

bb.aw:                                            ; preds = %bb.au
  %i.em = icmp slt i32 %i.eh, 0
  br i1 %i.em, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.en = sub nsw i32 0, %i.eh
  %i.eo = and i32 %i.en, 2047
  %narrow.neg = mul nsw i32 %i.eo, -100000
  %i.ep = add nsw i32 %narrow.neg, -536899754
  br label %.thread

bb.ay:                                            ; preds = %bb.aw
  %i.eq = load i128, ptr %i.d, align 16
  %i.er = load i128, ptr %i.b, align 16
  %i.es = xor i128 %i.eq, %i.er
  %i.et = getelementptr i8, ptr %i.d, i64 9
  %i.eu = getelementptr i8, ptr %i.b, i64 9
  %i.ev = load i128, ptr %i.et, align 1
  %i.ew = load i128, ptr %i.eu, align 1
  %i.ex = xor i128 %i.ev, %i.ew
  %i.ey = or i128 %i.es, %i.ex
  %i.ez = icmp ne i128 %i.ey, 0
  %i.fa = zext i1 %i.ez to i32
  %.not108 = icmp eq i32 %i.fa, 0
  %spec.select = select i1 %.not108, i32 0, i32 -28845
  br label %.thread

.thread:                                          ; preds = %bb.ay, %bb.ar, %bb.ax, %bb.av, %bb.aj, %bb.aq, %bb.ao, %bb.ae, %bb.ai, %bb.x, %bb.ad, %bb.ab, %bb.s, %bb.w, %bb.r, %bb.n, %bb.q, %bb.g, %bb.m, %bb.k, %bb.f, %bb.d
  %i.fb = phi i32 [ %spec.select, %bb.ay ], [ -28820, %bb.ar ], [ %i.ep, %bb.ax ], [ %i.el, %bb.av ], [ -28789, %bb.aj ], [ %i.ds, %bb.aq ], [ %i.do, %bb.ao ], [ -28765, %bb.ae ], [ %i.dd, %bb.ai ], [ -28741, %bb.x ], [ %i.ck, %bb.ad ], [ %i.cg, %bb.ab ], [ -28717, %bb.s ], [ %i.bx, %bb.w ], [ -28714, %bb.r ], [ -28702, %bb.n ], [ %i.bd, %bb.q ], [ -28678, %bb.g ], [ %i.am, %bb.m ], [ %i.ai, %bb.k ], [ %i.p, %bb.f ], [ %i.l, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %i.fb
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -741597572, 1) i32 @rsa_export_key_test(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i8], align 1                 ; 18 uses
  %i.b = alloca i32, align 4                      ; 18 uses
  %i.c = alloca i32, align 4                      ; 18 uses
  %i.d = alloca i32, align 4                      ; 18 uses
  %i.e = alloca i32, align 4                      ; 18 uses
  %i.f = alloca i32, align 4                      ; 18 uses
  %i.g = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 3, ptr %i.b, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 512, ptr %i.c, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 512, ptr %i.d, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  store i32 256, ptr %i.e, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  store i32 256, ptr %i.f, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  store i32 0, ptr %i.g, align 4, !tbaa !19
  %i.h = tail call ptr @wolfSSL_Malloc(i64 noundef 512) #19 ; 18 uses
  %i.i = tail call ptr @wolfSSL_Malloc(i64 noundef 512) #19 ; 18 uses
  %i.j = tail call ptr @wolfSSL_Malloc(i64 noundef 256) #19 ; 18 uses
  %i.k = tail call ptr @wolfSSL_Malloc(i64 noundef 256) #19 ; 18 uses
  %i.l = icmp eq ptr %i.h, null                   ; 2 uses
  %i.m = icmp eq ptr %i.i, null                   ; 2 uses
  %or.cond = select i1 %i.l, i1 true, i1 %i.m
  %i.n = icmp eq ptr %i.j, null                   ; 2 uses
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.n
  %i.o = icmp eq ptr %i.k, null                   ; 2 uses
  %or.cond5 = select i1 %or.cond3, i1 true, i1 %i.o
  br i1 %or.cond5, label %bb.aj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = call i32 @wc_RsaExportKey(ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.h, ptr noundef nonnull %i.c, ptr noundef nonnull %i.i, ptr noundef nonnull %i.d, ptr noundef nonnull %i.j, ptr noundef nonnull %i.e, ptr noundef nonnull %i.k, ptr noundef nonnull %i.f) #19 ; 2 uses
  %.not = icmp eq i32 %i.p, -173
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = sub nsw i32 0, %i.p
  %i.r = and i32 %i.q, 2047
  %narrow.neg224 = mul nsw i32 %i.r, -100000
  %i.s = add nsw i32 %narrow.neg224, -536897520
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.t = call i32 @wc_RsaExportKey(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %i.b, ptr noundef nonnull %i.h, ptr noundef nonnull %i.c, ptr noundef nonnull %i.i, ptr noundef nonnull %i.d, ptr noundef nonnull %i.j, ptr noundef nonnull %i.e, ptr noundef nonnull %i.k, ptr noundef nonnull %i.f) #19 ; 2 uses
  %.not159 = icmp eq i32 %i.t, -173
  br i1 %.not159, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = sub nsw i32 0, %i.t
  %i.v = and i32 %i.u, 2047
  %narrow.neg221 = mul nsw i32 %i.v, -100000
  %i.w = add nsw i32 %narrow.neg221, -536897523
  br label %.thread

bb.f:                                             ; preds = %bb.d
  %i.x = call i32 @wc_RsaExportKey(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef nonnull %i.h, ptr noundef nonnull %i.c, ptr noundef nonnull %i.i, ptr noundef nonnull %i.d, ptr noundef nonnull %i.j, ptr noundef nonnull %i.e, ptr noundef nonnull %i.k, ptr noundef nonnull %i.f) #19 ; 2 uses
  %.not160 = icmp eq i32 %i.x, -173
  br i1 %.not160, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = sub nsw i32 0, %i.x
  %i.z = and i32 %i.y, 2047
  %narrow.neg218 = mul nsw i32 %i.z, -100000
  %i.aa = add nsw i32 %narrow.neg218, -536897526
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %i.ab = call i32 @wc_RsaExportKey(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef nonnull %i.c, ptr noundef nonnull %i.i, ptr noundef nonnull %i.d, ptr noundef nonnull %i.j, ptr noundef nonnull %i.e, ptr noundef nonnull %i.k, ptr noundef nonnull %i.f) #19 ; 2 uses
  %.not161 = icmp eq i32 %i.ab, -173
  br i1 %.not161, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = sub nsw i32 0, %i.ab
  %i.ad = and i32 %i.ac, 2047
  %narrow.neg215 = mul nsw i32 %i.ad, -100000
  %i.ae = add nsw i32 %narrow.neg215, -536897529
  br label %.thread

bb.j:                                             ; preds = %bb.h
  %i.af = call i32 @wc_RsaExportKey(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.h, ptr noundef null, ptr noundef nonnull %i.i, ptr noundef nonnull %i.d, ptr noundef nonnull %i.j, ptr noundef nonnull %i.e, ptr noundef nonnull %i.k, ptr noundef nonnull %i.f) #19 ; 2 uses
  %.not162 = icmp eq i32 %i.af, -173
  br i1 %.not162, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = sub nsw i32 0, %i.af
  %i.ah = and i32 %i.ag, 2047
  %narrow.neg212 = mul nsw i32 %i.ah, -100000
  %i.ai = add nsw i32 %narrow.neg212, -536897532
  br label %.thread

bb.l:                                             ; preds = %bb.j
  %i.aj = call i32 @wc_RsaExportKey(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.h, ptr noundef nonnull %i.c, ptr noundef null, ptr noundef nonnull %i.d, ptr noundef nonnull %i.j, ptr noundef nonnull %i.e, ptr noundef nonnull %i.k, ptr noundef nonnull %i.f) #19 ; 2 uses
  %.not163 = icmp eq i32 %i.aj, -173
  br i1 %.not163, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = sub nsw i32 0, %i.aj
  %i.al = and i32 %i.ak, 2047
  %narrow.neg209 = mul nsw i32 %i.al, -100000
  %i.am = add nsw i32 %narrow.neg209, -536897535
  br label %.thread

bb.n:                                             ; preds = %bb.l
  %i.an = call i32 @wc_RsaExportKey(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.h, ptr noundef nonnull %i.c, ptr noundef nonnull %i.i, ptr noundef null, ptr noundef nonnull %i.j, ptr noundef nonnull %i.e, ptr noundef nonnull %i.k, ptr noundef nonnull %i.f) #19 ; 2 uses
  %.not164 = icmp eq i32 %i.an, -173
  br i1 %.not164, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = sub nsw i32 0, %i.an
  %i.ap = and i32 %i.ao, 2047
  %narrow.neg206 = mul nsw i32 %i.ap, -100000
  %i.aq = add nsw i32 %narrow.neg206, -536897538
  br label %.thread

bb.p:                                             ; preds = %bb.n
  %i.ar = call i32 @wc_RsaExportKey(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.h, ptr noundef nonnull %i.c, ptr noundef nonnull %i.i, ptr noundef nonnull %i.d, ptr noundef null, ptr noundef nonnull %i.e, ptr noundef nonnull %i.k, ptr noundef nonnull %i.f) #19 ; 2 uses
  %.not165 = icmp eq i32 %i.ar, -173
  br i1 %.not165, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = sub nsw i32 0, %i.ar
  %i.at = and i32 %i.as, 2047
  %narrow.neg203 = mul nsw i32 %i.at, -100000
  %i.au = add nsw i32 %narrow.neg203, -536897541
  br label %.thread

bb.r:                                             ; preds = %bb.p
  %i.av = call i32 @wc_RsaExportKey(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.h, ptr noundef nonnull %i.c, ptr noundef nonnull %i.i, ptr noundef nonnull %i.d, ptr noundef nonnull %i.j, ptr noundef null, ptr noundef nonnull %i.k, ptr noundef nonnull %i.f) #19 ; 2 uses
  %.not166 = icmp eq i32 %i.av, -173
  br i1 %.not166, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aw = sub nsw i32 0, %i.av
  %i.ax = and i32 %i.aw, 2047
  %narrow.neg200 = mul nsw i32 %i.ax, -100000
  %i.ay = add nsw i32 %narrow.neg200, -536897544
  br label %.thread

bb.t:                                             ; preds = %bb.r
  %i.az = call i32 @wc_RsaExportKey(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.h, ptr noundef nonnull %i.c, ptr noundef nonnull %i.i, ptr noundef nonnull %i.d, ptr noundef nonnull %i.j, ptr noundef nonnull %i.e, ptr noundef null, ptr noundef nonnull %i.f) #19 ; 2 uses
  %.not167 = icmp eq i32 %i.az, -173
  br i1 %.not167, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ba = sub nsw i32 0, %i.az
  %i.bb = and i32 %i.ba, 2047
  %narrow.neg197 = mul nsw i32 %i.bb, -100000
  %i.bc = add nsw i32 %narrow.neg197, -536897547
  br label %.thread

bb.v:                                             ; preds = %bb.t
  %i.bd = call i32 @wc_RsaExportKey(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.h, ptr noundef nonnull %i.c, ptr noundef nonnull %i.i, ptr noundef nonnull %i.d, ptr noundef nonnull %i.j, ptr noundef nonnull %i.e, ptr noundef nonnull %i.k, ptr noundef null) #19 ; 2 uses
  %.not168 = icmp eq i32 %i.bd, -173
  br i1 %.not168, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.be = sub nsw i32 0, %i.bd
  %i.bf = and i32 %i.be, 2047
  %narrow.neg194 = mul nsw i32 %i.bf, -100000
  %i.bg = add nsw i32 %narrow.neg194, -536897550
  br label %.thread

bb.x:                                             ; preds = %bb.v
  %i.bh = call i32 @wc_RsaExportKey(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.c, ptr noundef nonnull %i.i, ptr noundef nonnull %i.d, ptr noundef nonnull %i.j, ptr noundef nonnull %i.e, ptr noundef nonnull %i.k, ptr noundef nonnull %i.f) #19 ; 2 uses
  %.not169 = icmp eq i32 %i.bh, -131
  br i1 %.not169, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bi = sub nsw i32 0, %i.bh
  %i.bj = and i32 %i.bi, 2047
  %narrow.neg191 = mul nsw i32 %i.bj, -100000
  %i.bk = add nsw i32 %narrow.neg191, -536897554
  br label %.thread

bb.z:                                             ; preds = %bb.x
  %i.bl = call i32 @wc_RsaExportKey(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.h, ptr noundef nonnull %i.g, ptr noundef nonnull %i.i, ptr noundef nonnull %i.d, ptr noundef nonnull %i.j, ptr noundef nonnull %i.e, ptr noundef nonnull %i.k, ptr noundef nonnull %i.f) #19 ; 2 uses
  %.not170 = icmp eq i32 %i.bl, -131
  br i1 %.not170, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bm = sub nsw i32 0, %i.bl
  %i.bn = and i32 %i.bm, 2047
  %narrow.neg188 = mul nsw i32 %i.bn, -100000
  %i.bo = add nsw i32 %narrow.neg188, -536897557
  br label %.thread

bb.ab:                                            ; preds = %bb.z
  %i.bp = call i32 @wc_RsaExportKey(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.h, ptr noundef nonnull %i.c, ptr noundef nonnull %i.i, ptr noundef nonnull %i.g, ptr noundef nonnull %i.j, ptr noundef nonnull %i.e, ptr noundef nonnull %i.k, ptr noundef nonnull %i.f) #19 ; 2 uses
  %.not171 = icmp eq i32 %i.bp, -131
  br i1 %.not171, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
end_hunk_0
