Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/internal?download=true
inline.NumInlined: 494
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 32
begin_hunk_0_@SendCertificateRequest:bb.a
  %i.bh = load i8, ptr %i.bg, align 4, !tbaa !51
  %.not.i66 = icmp eq i8 %i.bh, 0                 ; 2 uses
  br i1 %.not57, label %bb.m, label %IsEncryptionOn.exit.thread

bb.m:                                             ; preds = %bb.l
  br i1 %.not.i66, label %IsEncryptionOn.exit.thread.thread127, label %IsEncryptionOn.exit

IsEncryptionOn.exit:                              ; preds = %bb.m
  %.in.in.i = getelementptr inbounds nuw i8, ptr %0, i64 297
  %.in.i = load i8, ptr %.in.in.i, align 1, !tbaa !52
  %.not = icmp eq i8 %.in.i, 0
  br i1 %.not, label %IsEncryptionOn.exit72, label %bb.n

bb.n:                                             ; preds = %IsEncryptionOn.exit
  %i.bi = add nuw nsw i32 %i.ba, 111              ; 2 uses
  store i32 %i.bi, ptr %i.a, align 4, !tbaa !56
  br label %IsEncryptionOn.exit72

IsEncryptionOn.exit.thread:                       ; preds = %bb.l
  br i1 %.not.i66, label %IsEncryptionOn.exit.thread.thread127, label %IsEncryptionOn.exit72

IsEncryptionOn.exit72:                            ; preds = %IsEncryptionOn.exit, %bb.n, %IsEncryptionOn.exit.thread
  %.pr125 = phi i32 [ %i.be, %IsEncryptionOn.exit.thread ], [ %i.be, %IsEncryptionOn.exit ], [ %i.bi, %bb.n ] ; 2 uses
  %.in.in.i69 = getelementptr inbounds nuw i8, ptr %0, i64 297
  %.in.i70 = load i8, ptr %.in.in.i69, align 1, !tbaa !52
  %.not102 = icmp eq i8 %.in.i70, 0
  br i1 %.not102, label %IsEncryptionOn.exit.thread.thread127, label %bb.o

bb.o:                                             ; preds = %IsEncryptionOn.exit72
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 739
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !183
  %i.bl = icmp eq i8 %i.bk, 2
  br i1 %i.bl, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.bn = load i16, ptr %i.bm, align 8, !tbaa !254
  %i.bo = zext i16 %i.bn to i32                   ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 738
  %i.bq = load i8, ptr %i.bp, align 2, !tbaa !265
  %.not.i74 = icmp eq i8 %i.bq, 9
  %i.br = add nuw nsw i32 %i.bo, 8
  %spec.select.i = select i1 %.not.i74, i32 %i.bo, i32 %i.br
  br label %cipherExtraData.exit

bb.q:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 732
  %i.bt = load i16, ptr %i.bs, align 4, !tbaa !274
  %i.bu = zext i16 %i.bt to i32
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 734
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !264
  %i.bx = zext i16 %i.bw to i32
  %i.by = add nuw nsw i32 %i.bx, %i.bu
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 743
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !105
  %i.cb = zext i8 %i.ca to i32
  %i.cc = add nuw nsw i32 %i.by, %i.cb
  br label %cipherExtraData.exit

cipherExtraData.exit:                             ; preds = %bb.p, %bb.q
  %.0.i73 = phi i32 [ %i.cc, %bb.q ], [ %spec.select.i, %bb.p ]
  %i.cd = add nuw nsw i32 %.pr125, %.0.i73        ; 2 uses
  store i32 %i.cd, ptr %i.a, align 4, !tbaa !56
  br label %IsEncryptionOn.exit.thread.thread127

IsEncryptionOn.exit.thread.thread127:             ; preds = %bb.m, %cipherExtraData.exit, %IsEncryptionOn.exit.thread, %IsEncryptionOn.exit72
  %i.ce = phi i32 [ %i.cd, %cipherExtraData.exit ], [ %i.be, %IsEncryptionOn.exit.thread ], [ %.pr125, %IsEncryptionOn.exit72 ], [ %i.be, %bb.m ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1048
  store i8 1, ptr %i.cf, align 8, !tbaa !269
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !144
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 3 uses
  %i.cj = load i32, ptr %i.ci, align 16, !tbaa !188 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 404 ; 3 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !189 ; 3 uses
  %i.cm = add i32 %i.cl, %i.cj                    ; 3 uses
  %i.cn = sub i32 %i.ch, %i.cm
  %i.co = icmp ult i32 %i.cn, %i.ce
  br i1 %i.co, label %bb.r, label %CheckAvailableSize.exit

bb.r:                                             ; preds = %IsEncryptionOn.exit.thread.thread127
  %i.cp = xor i32 %i.cl, -1
  %.not.i.i = icmp ugt i32 %i.cj, %i.cp
  %i.cq = xor i32 %i.cm, -1
  %.not40.i.i = icmp ugt i32 %i.ce, %i.cq
  %or.cond.i = or i1 %.not.i.i, %.not40.i.i
  br i1 %or.cond.i, label %CheckAvailableSize.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cr = add i32 %i.cm, %i.ce                    ; 2 uses
  %i.cs = zext i32 %i.cr to i64
  %i.ct = tail call ptr @wolfSSL_Malloc(i64 noundef %i.cs) #27 ; 4 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %CheckAvailableSize.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cv = load i32, ptr %i.ci, align 16, !tbaa !188 ; 2 uses
  %.not42.i.i = icmp eq i32 %i.cv, 0
  br i1 %.not42.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !143
  %i.cy = load i32, ptr %i.ck, align 4, !tbaa !189
  %i.cz = add i32 %i.cy, %i.cv
  %i.da = zext i32 %i.cz to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ct, ptr align 1 %i.cx, i64 %i.da, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 2 uses
  %i.dc = load i8, ptr %i.db, align 4, !tbaa !176
  %.not43.i.i = icmp eq i8 %i.dc, 0
  br i1 %.not43.i.i, label %CheckAvailableSize.exit.thread130, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !143 ; 2 uses
  %.not44.i.i = icmp eq ptr %i.de, null
  br i1 %.not44.i.i, label %CheckAvailableSize.exit.thread130, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 413
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !177
  %i.dh = zext i8 %i.dg to i64
  %i.di = sub nsw i64 0, %i.dh
  %i.dj = getelementptr inbounds i8, ptr %i.de, i64 %i.di
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.dj) #27
  br label %CheckAvailableSize.exit.thread130

CheckAvailableSize.exit.thread130:                ; preds = %bb.v, %bb.w, %bb.x
  store i8 1, ptr %i.db, align 4, !tbaa !176
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 413
  store i8 0, ptr %i.dk, align 1, !tbaa !177
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr %i.ct, ptr %i.dl, align 8, !tbaa !143
  store i32 %i.cr, ptr %i.cg, align 8, !tbaa !144
  %.pre112 = load i32, ptr %i.ck, align 4, !tbaa !189
  %.pre113 = load i32, ptr %i.ci, align 16, !tbaa !188
  br label %bb.y

CheckAvailableSize.exit:                          ; preds = %IsEncryptionOn.exit.thread.thread127
  %.phi.trans.insert110 = getelementptr inbounds nuw i8, ptr %0, i64 392
  %.pre111 = load ptr, ptr %.phi.trans.insert110, align 8, !tbaa !143, !nonnull !474, !noundef !474
  br label %bb.y

bb.y:                                             ; preds = %CheckAvailableSize.exit, %CheckAvailableSize.exit.thread130
  %.sink = phi i32 [ %i.cl, %CheckAvailableSize.exit ], [ %.pre112, %CheckAvailableSize.exit.thread130 ]
  %.pre111.sink = phi ptr [ %.pre111, %CheckAvailableSize.exit ], [ %i.ct, %CheckAvailableSize.exit.thread130 ] ; 2 uses
  %.sink132 = phi i32 [ %i.cj, %CheckAvailableSize.exit ], [ %.pre113, %CheckAvailableSize.exit.thread130 ]
  %i.dm = zext i32 %.sink to i64                  ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.pre111.sink, i64 %i.dm
  %i.do = zext i32 %.sink132 to i64               ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.do ; 15 uses
  store i8 22, ptr %i.dp, align 1, !tbaa !260
  %i.dq = load i8, ptr %i.h, align 2, !tbaa !49
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !259
  %i.ds = load i16, ptr %i.h, align 2             ; 3 uses
  %i.dt = and i16 %i.ds, 255
  %i.du = icmp ne i16 %i.dt, 3
  %i.dv = icmp ult i16 %i.ds, 1024
  %.not15.i.i = or i1 %i.dv, %i.du
  %i.dw = lshr i16 %i.ds, 8
  %i.dx = trunc nuw i16 %i.dw to i8
  %.sink.i.i = select i1 %.not15.i.i, i8 %i.dx, i8 3
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dp, i64 2
  store i8 %.sink.i.i, ptr %i.dy, align 1, !tbaa !261
  %i.dz = load i64, ptr %i.bb, align 16
  %i.ea = and i64 %i.dz, 131072
  %.not12.i.i = icmp eq i64 %i.ea, 0
  br i1 %.not12.i.i, label %bb.z, label %AddHeaders.exit

bb.z:                                             ; preds = %bb.y
  %i.eb = add nuw nsw i32 %i.ba, 4                ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dp, i64 3
  %i.ed = lshr i32 %i.eb, 8
  %i.ee = trunc i32 %i.ed to i8
  store i8 %i.ee, ptr %i.ec, align 1, !tbaa !52
  %i.ef = trunc i32 %i.eb to i8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  store i8 %i.ef, ptr %i.eg, align 1, !tbaa !52
  br label %AddHeaders.exit

AddHeaders.exit:                                  ; preds = %bb.y, %bb.z
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dp, i64 5
  store i8 13, ptr %i.eh, align 1, !tbaa !273
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dp, i64 6
  %i.ej = lshr i32 %i.ba, 16
  %i.ek = trunc nuw nsw i32 %i.ej to i8
  store i8 %i.ek, ptr %i.ei, align 1, !tbaa !52
  %i.el = lshr i32 %i.ba, 8
  %i.em = trunc i32 %i.el to i8
  %i.en = getelementptr inbounds nuw i8, ptr %i.dp, i64 7
  store i8 %i.em, ptr %i.en, align 1, !tbaa !52
  %i.eo = trunc i32 %i.ba to i8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store i8 %i.eo, ptr %i.ep, align 1, !tbaa !52
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dp, i64 9
  store i8 2, ptr %i.eq, align 1, !tbaa !52
  %i.er = getelementptr i8, ptr %.pre111.sink, i64 %i.dm
  %i.es = getelementptr i8, ptr %i.er, i64 %i.do  ; 2 uses
  %scevgep = getelementptr i8, ptr %i.es, i64 10
  store i8 %.sink13.i, ptr %scevgep, align 1, !tbaa !52
  %.sroa.4.0.scevgep.sroa_idx = getelementptr i8, ptr %i.es, i64 11
  store i8 %.sink.i, ptr %.sroa.4.0.scevgep.sroa_idx, align 1, !tbaa !52
  %i.et = load i8, ptr %i.h, align 2, !tbaa !49
  %i.eu = icmp eq i8 %i.et, 3
  br i1 %i.eu, label %bb.aa, label %IsAtLeastTLSv1_2.exit77.thread

bb.aa:                                            ; preds = %AddHeaders.exit
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 727
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !50
  %i.ex = icmp ugt i8 %i.ew, 2
  br i1 %i.ex, label %IsAtLeastTLSv1_2.exit77, label %IsAtLeastTLSv1_2.exit77.thread

IsAtLeastTLSv1_2.exit77:                          ; preds = %bb.aa
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  %i.ez = lshr i16 %.08198, 8
  %i.fa = trunc nuw i16 %i.ez to i8
  store i8 %i.fa, ptr %i.ey, align 1, !tbaa !52
  %i.fb = trunc i16 %.08198 to i8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dp, i64 13
  store i8 %i.fb, ptr %i.fc, align 1, !tbaa !52
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dp, i64 14
  %i.fe = zext i16 %.08198 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fd, ptr nonnull align 16 %i.b, i64 %i.fe, i1 false)
  br label %IsAtLeastTLSv1_2.exit77.thread

IsAtLeastTLSv1_2.exit77.thread:                   ; preds = %bb.aa, %AddHeaders.exit, %IsAtLeastTLSv1_2.exit77
  %.1 = phi i32 [ %i.az, %IsAtLeastTLSv1_2.exit77 ], [ 12, %AddHeaders.exit ], [ 12, %bb.aa ] ; 2 uses
  %i.ff = zext nneg i32 %.1 to i64
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.ff ; 2 uses
  store i8 0, ptr %i.fg, align 1, !tbaa !52
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 1
  store i8 0, ptr %i.fh, align 1, !tbaa !52
  %i.fi = add nuw nsw i32 %.1, 2
  %i.fj = call fastcc i32 @BuildMsgOrHashOutput(ptr noundef nonnull %0, ptr noundef nonnull %i.dp, ptr noundef %i.a, i32 noundef %i.fi, i32 noundef 13) ; 2 uses
  %.not62 = icmp eq i32 %i.fj, 0
  br i1 %.not62, label %bb.ab, label %CheckAvailableSize.exit.thread

bb.ab:                                            ; preds = %IsAtLeastTLSv1_2.exit77.thread
  %i.fk = load i64, ptr %i.bb, align 16
  %i.fl = and i64 %i.fk, 137438953472
  %.not63 = icmp eq i64 %i.fl, 0
  br i1 %.not63, label %bb.ac, label %CheckAvailableSize.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.fm = tail call i32 @SendBuffered(ptr noundef nonnull %0)
  br label %CheckAvailableSize.exit.thread

CheckAvailableSize.exit.thread:                   ; preds = %bb.s, %bb.r, %bb.ac, %bb.ab, %IsAtLeastTLSv1_2.exit77.thread, %GetServerCertReqHashSigAlgo.exit.thread100
  %.051 = phi i32 [ %i.fj, %IsAtLeastTLSv1_2.exit77.thread ], [ 0, %GetServerCertReqHashSigAlgo.exit.thread100 ], [ 0, %bb.ab ], [ %i.fm, %bb.ac ], [ -125, %bb.s ], [ -125, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i32 %.051
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @AddHeaders(ptr nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1, i8 noundef zeroext range(i8 1, 17) %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #8 {
bb.a:
  %i.a = add i32 %1, 4                            ; 2 uses
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %AddRecordHeader.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 22, ptr %0, align 1, !tbaa !260
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 726 ; 2 uses
  %i.d = load i8, ptr %i.c, align 2, !tbaa !49
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.d, ptr %i.e, align 1, !tbaa !259
  %i.f = load i16, ptr %i.c, align 2              ; 3 uses
  %i.g = and i16 %i.f, 255
  %i.h = icmp ne i16 %i.g, 3
  %i.i = icmp ult i16 %i.f, 1024
  %.not15.i = or i1 %i.i, %i.h
  %i.j = lshr i16 %i.f, 8
  %i.k = trunc nuw i16 %i.j to i8
  %.sink.i = select i1 %.not15.i, i8 %i.k, i8 3
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %.sink.i, ptr %i.l, align 1, !tbaa !261
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 1040
  %i.n = load i64, ptr %i.m, align 8
  %i.o = and i64 %i.n, 131072
  %.not12.i = icmp eq i64 %i.o, 0
  br i1 %.not12.i, label %bb.c, label %AddRecordHeader.exit

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.q = lshr i32 %i.a, 8
  %i.r = trunc i32 %i.q to i8
  store i8 %i.r, ptr %i.p, align 1, !tbaa !52
  %i.s = trunc i32 %i.a to i8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.s, ptr %i.t, align 1, !tbaa !52
  br label %AddRecordHeader.exit

AddRecordHeader.exit:                             ; preds = %bb.a, %bb.b, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %2, ptr %i.u, align 1, !tbaa !273
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.w = lshr i32 %1, 16
  %i.x = trunc i32 %i.w to i8
  store i8 %i.x, ptr %i.v, align 1, !tbaa !52
  %i.y = lshr i32 %1, 8
  %i.z = trunc i32 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !52
  %i.ab = trunc i32 %1 to i8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !52
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @BuildMsgOrHashOutput(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull captures(none) %2, i32 noundef %3, i32 noundef range(i32 1, 15) %4) unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %IsEncryptionOn.exit.thread3, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1028
  %i.c = load i8, ptr %i.b, align 4, !tbaa !51
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %IsEncryptionOn.exit.thread, label %IsEncryptionOn.exit

IsEncryptionOn.exit:                              ; preds = %bb.b
  %.in.in.i = getelementptr inbounds nuw i8, ptr %0, i64 297
  %.in.i = load i8, ptr %.in.in.i, align 1, !tbaa !52
  %.not10 = icmp eq i8 %.in.i, 0
  br i1 %.not10, label %IsEncryptionOn.exit.thread, label %IsEncryptionOn.exit.thread3

IsEncryptionOn.exit.thread3:                      ; preds = %bb.a, %IsEncryptionOn.exit
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 131072
  %.not42 = icmp eq i64 %i.f, 0
  %spec.select = select i1 %.not42, i32 5, i32 13 ; 2 uses
  %i.g = sub nsw i32 %3, %spec.select             ; 3 uses
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %.thread, label %bb.c

bb.c:                                             ; preds = %IsEncryptionOn.exit.thread3
  %i.i = zext nneg i32 %i.g to i64                ; 2 uses
  %i.j = tail call ptr @wolfSSL_Malloc(i64 noundef %i.i) #27 ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = zext nneg i32 %spec.select to i64
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull align 1 %i.m, i64 %i.i, i1 false)
  %i.n = load i32, ptr %2, align 4, !tbaa !56
  %i.o = tail call i32 @BuildMessage(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.n, ptr noundef nonnull %i.j, i32 noundef %i.g, i32 noundef 22, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  store i32 %i.o, ptr %2, align 4, !tbaa !56
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.j) #27
  %i.p = load i32, ptr %2, align 4, !tbaa !56     ; 3 uses
  %i.q = icmp sgt i32 %i.p, -1
  br i1 %i.q, label %HashOutput.exit, label %.thread

IsEncryptionOn.exit.thread:                       ; preds = %bb.b, %IsEncryptionOn.exit
  %i.r = icmp eq i32 %4, 13
  br i1 %i.r, label %bb.e, label %thread-pre-split

bb.e:                                             ; preds = %IsEncryptionOn.exit.thread
  store i32 %3, ptr %2, align 4, !tbaa !56
  br label %bb.f

thread-pre-split:                                 ; preds = %IsEncryptionOn.exit.thread
  %.pr = load i32, ptr %2, align 4, !tbaa !56
  br label %bb.f

bb.f:                                             ; preds = %thread-pre-split, %bb.e
  %i.s = phi i32 [ %.pr, %thread-pre-split ], [ %3, %bb.e ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 16, !tbaa !131 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  %i.w = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.w, %i.v
  br i1 %or.cond.i, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = icmp slt i32 %i.s, 5
  br i1 %i.x, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = add nsw i32 %i.s, -5                     ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 726
  %i.ab = load i8, ptr %i.aa, align 2, !tbaa !49
  %i.ac = icmp eq i8 %i.ab, 3
  br i1 %i.ac, label %bb.i, label %HashOutput.exit

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 727
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !50
  %i.af = icmp ugt i8 %i.ae, 2
  br i1 %i.af, label %IsAtLeastTLSv1_2.exit.i.i, label %HashOutput.exit

IsAtLeastTLSv1_2.exit.i.i:                        ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 288
  %i.ah = tail call i32 @wc_Sha256Update(ptr noundef nonnull %i.ag, ptr noundef nonnull %i.z, i32 noundef %i.y) #27 ; 2 uses
end_hunk_0
