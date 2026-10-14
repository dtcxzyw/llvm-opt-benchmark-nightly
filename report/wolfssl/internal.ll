Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/internal?download=true
inline.NumInlined: 494
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 32
begin_hunk_0_@SendCertificateVerify:bb.a
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i32 0, ptr %i.ky, align 8, !tbaa !160
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.la = load i64, ptr %i.kz, align 16
  %i.lb = and i64 %i.la, -1099511627777
  store i64 %i.lb, ptr %i.kz, align 16
  %i.lc = load ptr, ptr %i.a, align 8, !tbaa !154 ; 3 uses
  %.not.i213 = icmp eq ptr %i.lc, null
  br i1 %.not.i213, label %FreeAsyncCtx.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !156 ; 2 uses
  %.not12.i = icmp eq ptr %i.ld, null
  br i1 %.not12.i, label %FreeAsyncCtx.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  tail call void %i.ld(ptr noundef nonnull %0, ptr noundef nonnull %i.le) #27, !inline_history !162
  %i.lf = load ptr, ptr %i.a, align 8, !tbaa !154
  store ptr null, ptr %i.lf, align 8, !tbaa !156
  br label %FreeAsyncCtx.exit

FreeAsyncCtx.exit:                                ; preds = %bb.bc, %bb.bd, %bb.bb
  tail call void @FreeKeyExchange(ptr noundef nonnull %0)
  br label %bb.be

bb.be:                                            ; preds = %BuildCertHashes.exit.thread, %bb.g, %FreeAsyncCtx.exit
  %.0 = phi i32 [ 0, %bb.g ], [ %.7244, %FreeAsyncCtx.exit ], [ -327, %BuildCertHashes.exit.thread ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @FreeScvArgs(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !288  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.b) #27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !288
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !287  ; 2 uses
  %.not10 = icmp eq ptr %i.d, null
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.d) #27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store ptr null, ptr %i.c, align 8, !tbaa !287
  ret void
}

declare i32 @wc_EncodeSignature(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc i32 @SendHandshakeMsg(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %HashRaw.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i32 %2, 4                            ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !143  ; 2 uses
  %.not = icmp ult ptr %1, %i.e
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.g = load i32, ptr %i.f, align 8, !tbaa !144
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.h
  %i.j = icmp ult ptr %1, %i.i
  br i1 %i.j, label %HashRaw.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 3 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !269
  %.not102 = icmp eq i8 %i.l, 0
  br i1 %.not102, label %bb.e, label %HashRaw.exit

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !131 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %HashRaw.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 726
  %i.r = load i8, ptr %i.q, align 2, !tbaa !49
  %i.s = icmp eq i8 %i.r, 3
  br i1 %i.s, label %bb.g, label %HashRaw.exit

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 727
  %i.u = load i8, ptr %i.t, align 1, !tbaa !50
  %i.v = icmp ugt i8 %i.u, 2
  br i1 %i.v, label %IsAtLeastTLSv1_2.exit.i, label %HashRaw.exit

IsAtLeastTLSv1_2.exit.i:                          ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 288
  %i.x = tail call i32 @wc_Sha256Update(ptr noundef nonnull %i.w, ptr noundef nonnull %i.m, i32 noundef %i.c) #27 ; 2 uses
  %.not22.i = icmp eq i32 %i.x, 0
  br i1 %.not22.i, label %bb.h, label %HashRaw.exit.thread

bb.h:                                             ; preds = %IsAtLeastTLSv1_2.exit.i
  %i.y = load ptr, ptr %i.n, align 16, !tbaa !131
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 416
  %i.aa = tail call i32 @wc_Sha384Update(ptr noundef nonnull %i.z, ptr noundef nonnull %i.m, i32 noundef %i.c) #27 ; 2 uses
  %.not23.i = icmp eq i32 %i.aa, 0
  br i1 %.not23.i, label %bb.i, label %HashRaw.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ab = load ptr, ptr %i.n, align 16, !tbaa !131
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 640
  %i.ad = tail call i32 @wc_Sha512Update(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.m, i32 noundef %i.c) #27 ; 2 uses
  %.not24.i = icmp eq i32 %i.ad, 0
  br i1 %.not24.i, label %HashRaw.exit, label %HashRaw.exit.thread

HashRaw.exit:                                     ; preds = %bb.i, %bb.g, %bb.f, %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1028 ; 2 uses
  %.in.in.i = getelementptr inbounds nuw i8, ptr %0, i64 297 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 739
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 732
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 734
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 743
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 738
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 404 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 413 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 726 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %CheckAvailableSize.exit, %HashRaw.exit
  %i.at = load i32, ptr %i.ae, align 16, !tbaa !275 ; 3 uses
  %i.au = icmp ult i32 %i.at, %i.c
  br i1 %i.au, label %bb.k, label %bb.ab

bb.k:                                             ; preds = %bb.j
  %i.av = zext i32 %i.at to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 5 ; 2 uses
  store i8 1, ptr %i.k, align 8, !tbaa !269
  %i.ay = sub nuw i32 %i.c, %i.at
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.ay, i32 16384) ; 6 uses
  %i.az = add nuw nsw i32 %spec.select, 5         ; 3 uses
  %i.ba = load i8, ptr %i.af, align 4, !tbaa !51  ; 2 uses
  %.not.i = icmp eq i8 %i.ba, 0
  br i1 %.not.i, label %IsEncryptionOn.exit.thread, label %IsEncryptionOn.exit

IsEncryptionOn.exit:                              ; preds = %bb.k
  %.in.i = load i8, ptr %.in.in.i, align 1, !tbaa !52
  %.not14 = icmp eq i8 %.in.i, 0
  br i1 %.not14, label %IsEncryptionOn.exit.thread, label %bb.l

bb.l:                                             ; preds = %IsEncryptionOn.exit
  %i.bb = load i8, ptr %i.ag, align 1, !tbaa !183
  %i.bc = icmp eq i8 %i.bb, 2
  br i1 %i.bc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bd = load i16, ptr %i.ak, align 16, !tbaa !254
  %i.be = zext i16 %i.bd to i32                   ; 2 uses
  %i.bf = load i8, ptr %i.al, align 2, !tbaa !265
  %.not.i111 = icmp eq i8 %i.bf, 9
  %i.bg = add nuw nsw i32 %i.be, 8
  %spec.select.i112 = select i1 %.not.i111, i32 %i.be, i32 %i.bg
  br label %cipherExtraData.exit

bb.n:                                             ; preds = %bb.l
  %i.bh = load i16, ptr %i.ah, align 4, !tbaa !274
  %i.bi = zext i16 %i.bh to i32
  %i.bj = load i16, ptr %i.ai, align 2, !tbaa !264
  %i.bk = zext i16 %i.bj to i32
  %i.bl = add nuw nsw i32 %i.bk, %i.bi
  %i.bm = load i8, ptr %i.aj, align 1, !tbaa !105
  %i.bn = zext i8 %i.bm to i32
  %i.bo = add nuw nsw i32 %i.bl, %i.bn
  br label %cipherExtraData.exit

cipherExtraData.exit:                             ; preds = %bb.m, %bb.n
  %.0.i110 = phi i32 [ %i.bo, %bb.n ], [ %spec.select.i112, %bb.m ]
  %i.bp = add nuw nsw i32 %.0.i110, %i.az
  br label %IsEncryptionOn.exit.thread

IsEncryptionOn.exit.thread:                       ; preds = %IsEncryptionOn.exit, %cipherExtraData.exit, %bb.k
  %.078 = phi i32 [ %i.bp, %cipherExtraData.exit ], [ %i.az, %IsEncryptionOn.exit ], [ %i.az, %bb.k ] ; 5 uses
  %i.bq = load i32, ptr %i.am, align 8, !tbaa !144
  %i.br = load i32, ptr %i.an, align 16, !tbaa !188 ; 3 uses
  %i.bs = load i32, ptr %i.ao, align 4, !tbaa !189 ; 3 uses
  %i.bt = add i32 %i.bs, %i.br                    ; 3 uses
  %i.bu = sub i32 %i.bq, %i.bt
  %i.bv = icmp ult i32 %i.bu, %.078
  br i1 %i.bv, label %bb.o, label %bb.v

bb.o:                                             ; preds = %IsEncryptionOn.exit.thread
  %i.bw = xor i32 %i.bs, -1
  %.not.i.i = icmp ugt i32 %i.br, %i.bw
  %i.bx = xor i32 %i.bt, -1
  %.not40.i.i = icmp ugt i32 %.078, %i.bx
  %or.cond.i = or i1 %.not.i.i, %.not40.i.i
  br i1 %or.cond.i, label %HashRaw.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = add i32 %i.bt, %.078                    ; 2 uses
  %i.bz = zext i32 %i.by to i64
  %i.ca = tail call ptr @wolfSSL_Malloc(i64 noundef %i.bz) #27 ; 4 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %HashRaw.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cc = load i32, ptr %i.an, align 16, !tbaa !188 ; 2 uses
  %.not42.i.i = icmp eq i32 %i.cc, 0
  br i1 %.not42.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cd = load ptr, ptr %i.d, align 8, !tbaa !143
  %i.ce = load i32, ptr %i.ao, align 4, !tbaa !189
  %i.cf = add i32 %i.ce, %i.cc
  %i.cg = zext i32 %i.cf to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ca, ptr align 1 %i.cd, i64 %i.cg, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ch = load i8, ptr %i.ap, align 4, !tbaa !176
  %.not43.i.i = icmp eq i8 %i.ch, 0
  br i1 %.not43.i.i, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ci = load ptr, ptr %i.d, align 8, !tbaa !143 ; 2 uses
  %.not44.i.i = icmp eq ptr %i.ci, null
  br i1 %.not44.i.i, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cj = load i8, ptr %i.aq, align 1, !tbaa !177
  %i.ck = zext i8 %i.cj to i64
  %i.cl = sub nsw i64 0, %i.ck
  %i.cm = getelementptr inbounds i8, ptr %i.ci, i64 %i.cl
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.cm) #27
  br label %.thread

.thread:                                          ; preds = %bb.s, %bb.t, %bb.u
  store i8 1, ptr %i.ap, align 4, !tbaa !176
  store i8 0, ptr %i.aq, align 1, !tbaa !177
  store ptr %i.ca, ptr %i.d, align 8, !tbaa !143
  store i32 %i.by, ptr %i.am, align 8, !tbaa !144
  %.pre = load i32, ptr %i.ao, align 4, !tbaa !189
  %.pre17 = load i32, ptr %i.an, align 16, !tbaa !188
  %.pre18 = load i8, ptr %i.af, align 4, !tbaa !51
  br label %bb.w

bb.v:                                             ; preds = %IsEncryptionOn.exit.thread
  %.pr = load ptr, ptr %i.d, align 8, !tbaa !143  ; 2 uses
  %i.cn = icmp eq ptr %.pr, null
  br i1 %i.cn, label %HashRaw.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v, %.thread
  %i.co = phi i8 [ %.pre18, %.thread ], [ %i.ba, %bb.v ]
  %i.cp = phi i32 [ %.pre17, %.thread ], [ %i.br, %bb.v ]
  %i.cq = phi i32 [ %.pre, %.thread ], [ %i.bs, %bb.v ]
  %i.cr = phi ptr [ %i.ca, %.thread ], [ %.pr, %bb.v ]
  %i.cs = zext i32 %i.cq to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cs
  %i.cu = zext i32 %i.cp to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cu ; 7 uses
  %.not.i114 = icmp eq i8 %i.co, 0
  br i1 %.not.i114, label %IsEncryptionOn.exit118.thread, label %IsEncryptionOn.exit118

IsEncryptionOn.exit118:                           ; preds = %bb.w
  %.in.i116 = load i8, ptr %.in.in.i, align 1, !tbaa !52
  %.not15 = icmp eq i8 %.in.i116, 0
  br i1 %.not15, label %IsEncryptionOn.exit118.thread, label %bb.x

bb.x:                                             ; preds = %IsEncryptionOn.exit118
  %i.cw = tail call i32 @BuildMessage(ptr noundef nonnull %0, ptr noundef nonnull %i.cv, i32 noundef %.078, ptr noundef nonnull %i.ax, i32 noundef %spec.select, i32 noundef 22, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) ; 3 uses
  %i.cx = icmp sgt i32 %i.cw, -1
  br i1 %i.cx, label %bb.z, label %HashRaw.exit.thread

IsEncryptionOn.exit118.thread:                    ; preds = %bb.w, %IsEncryptionOn.exit118
  store i8 22, ptr %i.cv, align 1, !tbaa !260
  %i.cy = load i8, ptr %i.ar, align 2, !tbaa !49
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !259
  %i.da = load i16, ptr %i.ar, align 2            ; 3 uses
  %i.db = and i16 %i.da, 255
  %i.dc = icmp ne i16 %i.db, 3
  %i.dd = icmp ult i16 %i.da, 1024
  %.not15.i = or i1 %i.dd, %i.dc
  %i.de = lshr i16 %i.da, 8
  %i.df = trunc nuw i16 %i.de to i8
  %.sink.i = select i1 %.not15.i, i8 %i.df, i8 3
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cv, i64 2
  store i8 %.sink.i, ptr %i.dg, align 1, !tbaa !261
  %i.dh = load i64, ptr %i.as, align 16
  %i.di = and i64 %i.dh, 131072
  %.not12.i = icmp eq i64 %i.di, 0
  br i1 %.not12.i, label %bb.y, label %AddRecordHeader.exit

bb.y:                                             ; preds = %IsEncryptionOn.exit118.thread
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cv, i64 3
  %i.dk = lshr i32 %spec.select, 8
  %i.dl = trunc nuw nsw i32 %i.dk to i8
  store i8 %i.dl, ptr %i.dj, align 1, !tbaa !52
  %i.dm = trunc i32 %spec.select to i8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  store i8 %i.dm, ptr %i.dn, align 1, !tbaa !52
  br label %AddRecordHeader.exit

AddRecordHeader.exit:                             ; preds = %IsEncryptionOn.exit118.thread, %bb.y
  %i.do = getelementptr inbounds nuw i8, ptr %i.cv, i64 5
  %i.dp = zext nneg i32 %spec.select to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.do, ptr nonnull align 1 %i.ax, i64 %i.dp, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %AddRecordHeader.exit
  %.2 = phi i32 [ %i.cw, %bb.x ], [ %.078, %AddRecordHeader.exit ]
  %i.dq = load i32, ptr %i.an, align 16, !tbaa !188
  %i.dr = add i32 %i.dq, %.2
  store i32 %i.dr, ptr %i.an, align 16, !tbaa !188
  %i.ds = load i32, ptr %i.ae, align 16, !tbaa !275
  %i.dt = add i32 %i.ds, %spec.select
  store i32 %i.dt, ptr %i.ae, align 16, !tbaa !275
  %i.du = load i64, ptr %i.as, align 16
  %i.dv = and i64 %i.du, 137438953472
  %.not107 = icmp eq i64 %i.dv, 0
  br i1 %.not107, label %bb.aa, label %CheckAvailableSize.exit

bb.aa:                                            ; preds = %bb.z
  %i.dw = tail call i32 @SendBuffered(ptr noundef nonnull %0)
  br label %CheckAvailableSize.exit

CheckAvailableSize.exit:                          ; preds = %bb.z, %bb.aa
  %.4 = phi i32 [ 0, %bb.z ], [ %i.dw, %bb.aa ]   ; 2 uses
  %.not108 = icmp eq i32 %.4, 0
  br i1 %.not108, label %bb.j, label %HashRaw.exit.thread, !llvm.loop !500

bb.ab:                                            ; preds = %bb.j
  store i32 0, ptr %i.ae, align 16, !tbaa !275
  store i8 0, ptr %i.k, align 8, !tbaa !269
  br label %HashRaw.exit.thread

HashRaw.exit.thread:                              ; preds = %bb.p, %bb.o, %bb.v, %bb.x, %CheckAvailableSize.exit, %bb.i, %bb.h, %IsAtLeastTLSv1_2.exit.i, %bb.e, %bb.c, %bb.a, %bb.ab
  %.488 = phi i32 [ -173, %bb.c ], [ -173, %bb.a ], [ -173, %bb.e ], [ %i.x, %IsAtLeastTLSv1_2.exit.i ], [ 0, %bb.ab ], [ %i.ad, %bb.i ], [ %i.aa, %bb.h ], [ -125, %bb.o ], [ -125, %bb.p ], [ -125, %bb.v ], [ %i.cw, %bb.x ], [ %.4, %CheckAvailableSize.exit ]
  ret i32 %.488
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext range(i16 0, 26) i16 @GetCurveByOID(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  switch i32 %0, label %bb.e [
    i32 2131000842, label %bb.f
    i32 1229554967, label %bb.b
    i32 2131000841, label %bb.c
    i32 2131000840, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i16 [ 0, %bb.e ], [ 25, %bb.d ], [ 23, %bb.b ], [ 24, %bb.c ], [ 21, %bb.a ]
  ret i16 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @NamedGroupIsPqc(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  switch i32 %0, label %bb.b [
    i32 512, label %bb.c
    i32 513, label %bb.c
    i32 514, label %bb.c
    i32 570, label %bb.c
    i32 572, label %bb.c
    i32 573, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @NamedGroupIsPqcHybrid(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  switch i32 %0, label %bb.b [
    i32 4587, label %bb.c
    i32 4588, label %bb.c
    i32 4589, label %bb.c
    i32 12107, label %bb.c
    i32 12108, label %bb.c
    i32 12109, label %bb.c
    i32 12214, label %bb.c
    i32 12215, label %bb.c
    i32 25498, label %bb.c
    i32 25497, label %bb.c
    i32 12090, label %bb.c
    i32 12092, label %bb.c
    i32 12093, label %bb.c
    i32 12089, label %bb.c
    i32 12176, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 -1, 114) i32 @TranslateErrorToAlert(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  switch i32 %0, label %bb.h [
    i32 -328, label %bb.i
    i32 -424, label %bb.b
    i32 -342, label %bb.b
    i32 -352, label %bb.b
    i32 -421, label %bb.b
    i32 -333, label %bb.b
    i32 -425, label %bb.b
    i32 -505, label %bb.b
    i32 -423, label %bb.b
    i32 -457, label %bb.b
    i32 -310, label %bb.c
    i32 -501, label %bb.d
    i32 -422, label %bb.d
    i32 -326, label %bb.e
    i32 -406, label %bb.f
    i32 -373, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  br label %bb.i

bb.d:                                             ; preds = %bb.a, %bb.a
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ -1, %bb.h ], [ 10, %bb.g ], [ 47, %bb.b ], [ 109, %bb.c ], [ 40, %bb.d ], [ 70, %bb.e ], [ 113, %bb.f ], [ 50, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 -2147483648, 65534) i32 @FindSuite(ptr nofree noundef readonly captures(address_is_null) %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr %0, align 2, !tbaa !94     ; 3 uses
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.not = icmp eq i16 %i.b, 1
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.e = zext i16 %i.b to i64
  %i.f = add nsw i64 %i.e, -1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !52
  %i.i = icmp eq i8 %i.h, %1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !52
  %i.l = icmp eq i8 %i.k, %2
  br i1 %i.l, label %.loopexit.loopexit.split.loop.exit19, label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.m = icmp slt i64 %indvars.iv.next, %i.f
  br i1 %i.m, label %.lr.ph, label %.loopexit, !llvm.loop !501

.loopexit.loopexit.split.loop.exit19:             ; preds = %bb.c
  %i.n = trunc nuw nsw i64 %indvars.iv to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %.loopexit.loopexit.split.loop.exit19, %.preheader, %bb.b, %bb.a
  %.012 = phi i32 [ -371, %bb.a ], [ -371, %bb.b ], [ -501, %.preheader ], [ %i.n, %.loopexit.loopexit.split.loop.exit19 ], [ -501, %bb.d ]
  ret i32 %.012
}

; Function Attrs: nounwind uwtable
define i32 @SendServerHello(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i16, align 2                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i16, align 2                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.d = getelementptr i8, ptr %0, i64 1040       ; 5 uses
  %.val = load i64, ptr %i.d, align 8
  %i.e = and i64 %.val, 4
  %.not.i = icmp eq i64 %i.e, 0
  %spec.select.i = select i1 %.not.i, i32 32, i32 0 ; 8 uses
  %i.f = trunc nuw nsw i32 %spec.select.i to i8   ; 3 uses
  %i.g = trunc nuw nsw i32 %spec.select.i to i16
  %i.h = add nuw nsw i16 %i.g, 38
  store i16 %i.h, ptr %i.a, align 2, !tbaa !90
  %i.i = call i32 @TLSX_GetResponseSize(ptr noundef %0, i8 noundef zeroext 2, ptr noundef nonnull %i.a) #27 ; 2 uses
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.b, label %CheckAvailableSize.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.j = load i16, ptr %i.a, align 2, !tbaa !90   ; 3 uses
  %i.k = zext i16 %i.j to i32                     ; 3 uses
  %i.l = add nuw nsw i32 %i.k, 9                  ; 3 uses
end_hunk_0
