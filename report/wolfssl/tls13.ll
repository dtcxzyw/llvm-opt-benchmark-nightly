Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/tls13?download=true
inline.NumInlined: 109
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@DoTls13ClientHello:bb.a
bb.ay:                                            ; preds = %bb.ax
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 1054
  %i.gl = load i8, ptr %i.gk, align 2, !tbaa !91
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.gn = load i8, ptr %i.gm, align 16, !tbaa !93
  %.not183 = icmp eq i8 %i.gl, %i.gn
  br i1 %.not183, label %._crit_edge, label %DeriveEarlySecret.exit

._crit_edge:                                      ; preds = %bb.aw, %bb.ay
  store i8 4, ptr %i.b, align 4, !tbaa !82
  store i32 %i.fc, ptr %2, align 4, !tbaa !89
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 1062
  store i8 12, ptr %i.go, align 2, !tbaa !87
  %.not185 = icmp eq i8 %i.gh, 19
  br i1 %.not185, label %bb.az, label %DeriveEarlySecret.exit

bb.az:                                            ; preds = %._crit_edge
  %i.gp = load ptr, ptr %i.bu, align 8, !tbaa !48 ; 3 uses
  %i.gq = icmp eq ptr %i.gp, null
  br i1 %i.gq, label %DeriveEarlySecret.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 125
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 173
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 740
  %i.gu = load i8, ptr %i.gt, align 4, !tbaa !49  ; 2 uses
  %switch.selectcmp.i.i = icmp eq i8 %i.gu, 5
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 7, i32 0
  %switch.selectcmp2.i.i = icmp eq i8 %i.gu, 4
  %switch.select3.i.i = select i1 %switch.selectcmp2.i.i, i32 6, i32 %switch.select.i.i
  %i.gv = getelementptr i8, ptr %0, i64 176
  %.val.i196 = load ptr, ptr %i.gv, align 16, !tbaa !46
  %i.gw = getelementptr i8, ptr %0, i64 1364
  %.val9.i = load i32, ptr %i.gw, align 4, !tbaa !47
  %i.gx = call i32 @wc_Tls13_HKDF_Extract_ex(ptr noundef nonnull %i.gr, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.gs, i32 noundef 0, i32 noundef range(i32 0, 8) %switch.select3.i.i, ptr noundef %.val.i196, i32 noundef %.val9.i) #11
  br label %DeriveEarlySecret.exit

DeriveEarlySecret.exit:                           ; preds = %bb.au, %bb.aq, %bb.ar, %bb.ao, %bb.ap, %DoTls13SupportedVersions.exit.thread, %bb.v, %.thread284, %bb.d, %bb.at, %bb.as, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.u, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.t, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.w, %.thread276, %.thread271, %DoTls13SupportedVersions.exit, %bb.a, %bb.b, %bb.ba, %bb.az, %._crit_edge, %bb.ay, %bb.ax, %bb.av
  %.13 = phi i32 [ -173, %bb.az ], [ %i.ga, %bb.av ], [ -425, %bb.ax ], [ -425, %bb.ay ], [ -501, %._crit_edge ], [ %i.gx, %bb.ba ], [ -421, %bb.ap ], [ -328, %DoTls13SupportedVersions.exit.thread ], [ -326, %bb.u ], [ -326, %.thread271 ], [ -326, %bb.d ], [ -326, %bb.b ], [ -310, %bb.at ], [ %i.fr, %bb.as ], [ %i.fa, %bb.am ], [ %i.ez, %bb.al ], [ %i.ev, %bb.ak ], [ -328, %bb.aj ], [ -326, %bb.t ], [ -328, %bb.ai ], [ -425, %bb.ah ], [ -425, %bb.ag ], [ -328, %bb.af ], [ %i.bt, %bb.v ], [ -328, %bb.ae ], [ -425, %bb.ad ], [ -328, %bb.ac ], [ -125, %bb.ab ], [ -328, %bb.w ], [ -425, %.thread276 ], [ %i.br, %.thread284 ], [ %i.bc, %DoTls13SupportedVersions.exit ], [ -328, %bb.a ], [ -421, %bb.aq ], [ -421, %bb.ar ], [ -421, %bb.ao ], [ -310, %bb.au ]
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.gz = load ptr, ptr %i.gy, align 16, !tbaa !150 ; 2 uses
  %.not.i198 = icmp eq ptr %i.gz, null
  br i1 %.not.i198, label %FreeDch13Args.exit, label %bb.bb

bb.bb:                                            ; preds = %DeriveEarlySecret.exit
  call void @wolfSSL_Free(ptr noundef nonnull %i.gz) #11
  store ptr null, ptr %i.gy, align 16, !tbaa !150
  br label %FreeDch13Args.exit

FreeDch13Args.exit:                               ; preds = %DeriveEarlySecret.exit, %bb.bb
  ret i32 %.13
}

declare i32 @HashInput(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @DoClientHello(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @wolfSSL_Free(ptr noundef) local_unnamed_addr #2

declare i32 @SNI_Callback(ptr noundef) local_unnamed_addr #2

declare ptr @TLSX_Find(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @MatchSuite(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @SendTls13ServerHello(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %2 = alloca %struct.Hashes, align 1             ; 6 uses
  %i.b = alloca i16, align 2                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.c = icmp eq i8 %1, 6                         ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 254, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.d = call i32 @BuildCertHashes(ptr noundef %0, ptr noundef nonnull %2) #11 ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.c, label %RestartHandshakeHash.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 740
  %i.f = load i8, ptr %i.e, align 2, !tbaa !49
  switch i8 %i.f, label %CreateCookie.exit.i [
    i8 4, label %CreateCookie.exit.thread.i
    i8 5, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %CreateCookie.exit.thread.i

CreateCookie.exit.thread.i:                       ; preds = %bb.d, %bb.c
  %.024.ph.i = phi ptr [ %i.g, %bb.d ], [ %2, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 743
  %i.i = load i8, ptr %i.h, align 1, !tbaa !52
  br label %bb.e

CreateCookie.exit.i:                              ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 743
  %i.k = load i8, ptr %i.j, align 1, !tbaa !52
  %.not.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i, label %bb.e, label %RestartHandshakeHash.exit.thread

RestartHandshakeHash.exit.thread:                 ; preds = %CreateCookie.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.z

bb.e:                                             ; preds = %CreateCookie.exit.i, %CreateCookie.exit.thread.i
  %i.l = phi i8 [ %i.i, %CreateCookie.exit.thread.i ], [ 0, %CreateCookie.exit.i ] ; 2 uses
  %.02429.i = phi ptr [ %.024.ph.i, %CreateCookie.exit.thread.i ], [ null, %CreateCookie.exit.i ]
  %i.m = zext i8 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.l, ptr %i.n, align 1, !tbaa !57
  %i.o = call i32 @InitHandshakeHashes(ptr noundef nonnull %0) #11 ; 2 uses
  %.not20.i = icmp eq i32 %i.o, 0
  br i1 %.not20.i, label %bb.f, label %RestartHandshakeHash.exit

bb.f:                                             ; preds = %bb.e
  %i.p = call i32 @HashRaw(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 4) #11 ; 2 uses
  %.not21.i = icmp eq i32 %i.p, 0
  br i1 %.not21.i, label %bb.g, label %RestartHandshakeHash.exit

bb.g:                                             ; preds = %bb.f
  %i.q = call i32 @HashRaw(ptr noundef nonnull %0, ptr noundef %.02429.i, i32 noundef %i.m) #11
  br label %RestartHandshakeHash.exit

RestartHandshakeHash.exit:                        ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  %.0.i = phi i32 [ %i.q, %bb.g ], [ %i.d, %bb.b ], [ %i.p, %bb.f ], [ %i.o, %bb.e ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.r = icmp slt i32 %.0.i, 0
  br i1 %i.r, label %bb.z, label %bb.h

bb.h:                                             ; preds = %RestartHandshakeHash.exit, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 2 uses
  store i8 1, ptr %i.s, align 8, !tbaa !77
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 16, !tbaa !78
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 100
  %i.w = load i8, ptr %i.v, align 4, !tbaa !81
  %i.x = zext i8 %i.w to i16
  %i.y = add nuw nsw i16 %i.x, 38
  store i16 %i.y, ptr %i.b, align 2, !tbaa !97
  %i.z = call i32 @TLSX_GetResponseSize(ptr noundef %0, i8 noundef zeroext %1, ptr noundef nonnull %i.b) #11 ; 2 uses
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.i, label %bb.z

bb.i:                                             ; preds = %bb.h
  %i.aa = load i16, ptr %i.b, align 2, !tbaa !97
  %i.ab = zext i16 %i.aa to i32
  %i.ac = add nuw nsw i32 %i.ab, 9                ; 3 uses
  %i.ad = call i32 @CheckAvailableSize(ptr noundef nonnull %0, i32 noundef %i.ac) #11 ; 2 uses
  %.not95 = icmp eq i32 %i.ad, 0
  br i1 %.not95, label %bb.j, label %bb.z

bb.j:                                             ; preds = %bb.i
  %i.ae = call ptr @GetOutputBuffer(ptr noundef nonnull %0) #11 ; 18 uses
  %i.af = load i16, ptr %i.b, align 2, !tbaa !97  ; 3 uses
  %i.ag = zext i16 %i.af to i32
  %i.ah = getelementptr i8, ptr %0, i64 726       ; 2 uses
  %.val = load i8, ptr %i.ah, align 2, !tbaa !64
  %i.ai = add nuw nsw i32 %i.ag, 4                ; 2 uses
  store i8 22, ptr %i.ae, align 1, !tbaa !65
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  store i8 %.val, ptr %i.aj, align 1, !tbaa !66
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  store i8 3, ptr %i.ak, align 1, !tbaa !67
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 3
  %i.am = lshr i32 %i.ai, 8
  %i.an = trunc i32 %i.am to i8
  store i8 %i.an, ptr %i.al, align 1, !tbaa !57
  %i.ao = trunc i32 %i.ai to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !57
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 5
  store i8 2, ptr %i.aq, align 1, !tbaa !84
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 6
  store i8 0, ptr %i.ar, align 1, !tbaa !57
  %i.as = lshr i16 %i.af, 8
  %i.at = trunc nuw i16 %i.as to i8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 7
  store i8 %i.at, ptr %i.au, align 1, !tbaa !57
  %i.av = trunc i16 %i.af to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !57
  %i.ax = load i8, ptr %i.ah, align 2, !tbaa !64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ae, i64 9
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !57
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 16
  %i.bb = and i64 %i.ba, 131072
  %.not96 = icmp eq i64 %i.bb, 0
  %i.bc = select i1 %.not96, i8 3, i8 -3
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ae, i64 10
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !57
  %3 = icmp ne i8 %1, 2                           ; 3 uses
  br i1 %3, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !86
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ae, i64 11
  %i.bh = call i32 @wc_RNG_GenerateBlock(ptr noundef %i.bf, ptr noundef nonnull %i.bg, i32 noundef 32) #11 ; 2 uses
  %.not97 = icmp eq i32 %i.bh, 0
  br i1 %.not97, label %bb.m, label %bb.z

bb.l:                                             ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ae, i64 11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bi, ptr noundef nonnull align 16 dereferenceable(32) @helloRetryRequestRandom, i64 32, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !48
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 60
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ae, i64 11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.bl, ptr noundef nonnull align 1 dereferenceable(32) %i.bm, i64 32, i1 false)
  %i.bn = load ptr, ptr %i.t, align 16, !tbaa !78
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 100
  %i.bp = load i8, ptr %i.bo, align 4, !tbaa !81
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ae, i64 43
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !57
  %i.br = load ptr, ptr %i.t, align 16, !tbaa !78 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 100
  %i.bt = load i8, ptr %i.bs, align 4, !tbaa !81  ; 2 uses
  %.not98 = icmp eq i8 %i.bt, 0
  br i1 %.not98, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ae, i64 44
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 68
  %i.bw = zext i8 %i.bt to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bu, ptr nonnull align 4 %i.bv, i64 %i.bw, i1 false)
  %i.bx = load ptr, ptr %i.t, align 16, !tbaa !78
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 100
  %i.bz = load i8, ptr %i.by, align 4, !tbaa !81
  %i.ca = zext i8 %i.bz to i64
  %i.cb = add nuw nsw i64 %i.ca, 44
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0 = phi i64 [ %i.cb, %bb.n ], [ 44, %bb.m ]
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1053 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !90
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.0 ; 4 uses
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !57
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1054 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 2, !tbaa !91
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !57
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  store i8 0, ptr %i.ci, align 1, !tbaa !57
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 3
  %i.ck = call i32 @TLSX_WriteResponse(ptr noundef nonnull %0, ptr noundef nonnull %i.cj, i8 noundef zeroext %1, ptr noundef null) #11 ; 2 uses
  %.not99 = icmp eq i32 %i.ck, 0
  br i1 %.not99, label %bb.p, label %bb.z

bb.p:                                             ; preds = %bb.o
  br i1 %i.c, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !100
  %i.cn = call ptr @TLSX_Find(ptr noundef %i.cm, i32 noundef 51) #11 ; 2 uses
  %.not100 = icmp eq ptr %i.cn, null
  br i1 %.not100, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !102 ; 2 uses
  %.not101 = icmp eq ptr %i.cp, null
  br i1 %.not101, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cq = load i16, ptr %i.cp, align 8, !tbaa !105
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 1392
  store i16 %i.cq, ptr %i.cr, align 16, !tbaa !99
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.q
  %i.cs = load i8, ptr %i.cc, align 1, !tbaa !90
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 1055
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !92
  %i.cu = load i8, ptr %i.cf, align 2, !tbaa !91
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1056
  store i8 %i.cu, ptr %i.cv, align 16, !tbaa !93
  br label %bb.u

bb.u:                                             ; preds = %bb.p, %bb.t
  %i.cw = call i32 @HashOutput(ptr noundef nonnull %0, ptr noundef nonnull %i.ae, i32 noundef %i.ac, i32 noundef 0) #11 ; 2 uses
  %.not102 = icmp eq i32 %i.cw, 0
  br i1 %.not102, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  br i1 %3, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 1061
  store i8 3, ptr %i.cx, align 1, !tbaa !95
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  store i8 0, ptr %i.s, align 8, !tbaa !77
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 16, !tbaa !88
  %i.da = add i32 %i.cz, %i.ac
  store i32 %i.da, ptr %i.cy, align 16, !tbaa !88
  %i.db = load i64, ptr %i.az, align 16
  %i.dc = and i64 %i.db, 137438953472
  %i.dd = icmp eq i64 %i.dc, 0
  %or.cond = or i1 %3, %i.dd
  br i1 %or.cond, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.de = call i32 @SendBuffered(ptr noundef nonnull %0) #11
  br label %bb.z

bb.z:                                             ; preds = %RestartHandshakeHash.exit.thread, %bb.y, %bb.x, %bb.u, %bb.o, %bb.k, %bb.i, %bb.h, %RestartHandshakeHash.exit
  %.086 = phi i32 [ %i.cw, %bb.u ], [ %.0.i, %RestartHandshakeHash.exit ], [ %i.z, %bb.h ], [ %i.ad, %bb.i ], [ %i.bh, %bb.k ], [ %i.ck, %bb.o ], [ %i.de, %bb.y ], [ 0, %bb.x ], [ -173, %RestartHandshakeHash.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  ret i32 %.086
}

declare i32 @TLSX_GetResponseSize(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare i32 @TLSX_WriteResponse(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -2147483648, 1) i32 @CreateSigData(ptr nofree noundef readonly captures(none) %0, ptr noundef initializes((0, 64)) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32
  %i.d = lshr i32 %i.c, 4
  %i.e = and i32 %i.d, 3                          ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %1, i8 32, i64 64, i1 false)
  %i.f = icmp ne i32 %3, 0                        ; 2 uses
  %not. = xor i1 %i.f, true
  %or.cond33.v = zext i1 %not. to i32
  %or.cond33.not = icmp eq i32 %i.e, %or.cond33.v
  br i1 %or.cond33.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(34) %i.g, ptr noundef nonnull align 16 dereferenceable(34) @clientCertVfyLabel, i64 34, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = icmp eq i32 %i.e, 1
  %or.cond5 = and i1 %i.f, %i.h
  %i.i = or i32 %i.e, %3
  %or.cond7.not = icmp eq i32 %i.i, 0
  %or.cond34 = or i1 %or.cond5, %or.cond7.not
  br i1 %or.cond34, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(34) %i.j, ptr noundef nonnull align 16 dereferenceable(34) @serverCertVfyLabel, i64 34, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 98 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 740
  %i.m = load i8, ptr %i.l, align 4, !tbaa !49
  switch i8 %i.m, label %bb.h [
    i8 4, label %bb.f
    i8 5, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !45
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 288
  %i.q = tail call i32 @wc_Sha256GetHash(ptr noundef nonnull %i.p, ptr noundef nonnull %i.k) #11 ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %.thread, label %GetMsgHash.exit

bb.g:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.t = load ptr, ptr %i.s, align 16, !tbaa !45
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 416
  %i.v = tail call i32 @wc_Sha384GetHash(ptr noundef nonnull %i.u, ptr noundef nonnull %i.k) #11 ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %.thread, label %GetMsgHash.exit

GetMsgHash.exit:                                  ; preds = %bb.g, %bb.f
  %.0.i = phi i32 [ %i.v, %bb.g ], [ %i.q, %bb.f ] ; 3 uses
  %i.x = icmp slt i32 %.0.i, 0
  br i1 %i.x, label %bb.h, label %.thread

.thread:                                          ; preds = %bb.g, %bb.f, %GetMsgHash.exit
  %.0.i3739 = phi i32 [ %.0.i, %GetMsgHash.exit ], [ 32, %bb.f ], [ 48, %bb.g ]
  %i.y = trunc i32 %.0.i3739 to i16
  %i.z = add i16 %i.y, 98
  store i16 %i.z, ptr %2, align 2, !tbaa !97
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %GetMsgHash.exit, %.thread
  %.0 = phi i32 [ 0, %.thread ], [ %.0.i, %GetMsgHash.exit ], [ -232, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 1, 0) i32 @CreateRSAEncodedSig(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %union.Digest, align 16             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  switch i32 %4, label %.thread [
    i32 4, label %bb.b
    i32 5, label %bb.f
    i32 6, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = call i32 @wc_InitSha256(ptr noundef nonnull %5) #11 ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.c = call i32 @wc_Sha256Update(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %2) #11 ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = call i32 @wc_Sha256Final(ptr noundef nonnull %5, ptr noundef %0) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ %i.e, %bb.d ], [ %i.c, %bb.c ]
  call void @wc_Sha256Free(ptr noundef nonnull %5) #11
  br label %bb.n

bb.f:                                             ; preds = %bb.a
  %i.f = call i32 @wc_InitSha384(ptr noundef nonnull %5) #11 ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.h = call i32 @wc_Sha384Update(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %2) #11 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.j = call i32 @wc_Sha384Final(ptr noundef nonnull %5, ptr noundef %0) #11
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.2 = phi i32 [ %i.j, %bb.h ], [ %i.h, %bb.g ]
  call void @wc_Sha384Free(ptr noundef nonnull %5) #11
  br label %bb.n

bb.j:                                             ; preds = %bb.a
  %i.k = call i32 @wc_InitSha512(ptr noundef nonnull %5) #11 ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.m = call i32 @wc_Sha512Update(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %2) #11 ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.o = call i32 @wc_Sha512Final(ptr noundef nonnull %5, ptr noundef %0) #11
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.4 = phi i32 [ %i.o, %bb.l ], [ %i.m, %bb.k ]
  call void @wc_Sha512Free(ptr noundef nonnull %5) #11
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.i, %bb.e
  %.020 = phi i32 [ 32, %bb.e ], [ 48, %bb.i ], [ 64, %bb.m ]
  %.6 = phi i32 [ %.0, %bb.e ], [ %.2, %bb.i ], [ %.4, %bb.m ]
  %.6.fr = freeze i32 %.6                         ; 2 uses
  %.not = icmp eq i32 %.6.fr, 0
  %spec.select = select i1 %.not, i32 %.020, i32 %.6.fr
  br label %.thread

.thread:                                          ; preds = %bb.n, %bb.a, %bb.b, %bb.f, %bb.j
  %i.p = phi i32 [ %i.k, %bb.j ], [ %spec.select, %bb.n ], [ -173, %bb.a ], [ %i.a, %bb.b ], [ %i.f, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret i32 %i.p
}

declare i32 @wc_InitSha256(ptr noundef) local_unnamed_addr #2

declare i32 @wc_Sha256Update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_Sha256Final(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @wc_Sha256Free(ptr noundef) local_unnamed_addr #2

declare i32 @wc_InitSha384(ptr noundef) local_unnamed_addr #2

declare i32 @wc_Sha384Update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_Sha384Final(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @wc_Sha384Free(ptr noundef) local_unnamed_addr #2

declare i32 @wc_InitSha512(ptr noundef) local_unnamed_addr #2

declare i32 @wc_Sha512Update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_Sha512Final(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @wc_Sha512Free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @DoTls13Finished(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
end_hunk_0
