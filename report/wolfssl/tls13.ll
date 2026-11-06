Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/tls13?download=true
inline.NumInlined: 109
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@DeriveTls13Keys:bb.a
  switch i8 %i.eb, label %Tls13DeriveKey.exit153.thread [
    i8 4, label %Tls13DeriveKey.exit153
    i8 5, label %bb.at
  ]

Tls13DeriveKey.exit153.thread:                    ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %DeriveClientHandshakeSecret.exit.thread

bb.at:                                            ; preds = %bb.as
  br label %Tls13DeriveKey.exit153

Tls13DeriveKey.exit153:                           ; preds = %bb.at, %bb.as
  %.025.ph.i148 = phi i32 [ 48, %bb.at ], [ 32, %bb.as ]
  %.0.ph.i149 = phi i32 [ 7, %bb.at ], [ 6, %bb.as ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  %i.ec = getelementptr i8, ptr %0, i64 176
  %.val.i150 = load ptr, ptr %i.ec, align 16, !tbaa !46
  %i.ed = getelementptr i8, ptr %0, i64 1364
  %.val33.i151 = load i32, ptr %i.ed, align 4, !tbaa !47
  %i.ee = call i32 @wc_Tls13_HKDF_Expand_Label_ex(ptr noundef nonnull %i.dv, i32 noundef range(i32 0, -1) %i.dy, ptr noundef nonnull %i.dz, i32 noundef range(i32 0, 49) %.025.ph.i148, ptr noundef nonnull @tls13ProtocolLabel, i32 noundef 6, ptr noundef nonnull @writeKeyLabel, i32 noundef 3, ptr noundef nonnull %i.c, i32 noundef range(i32 0, 49) 0, i32 noundef range(i32 0, 8) %.0.ph.i149, ptr noundef %.val.i150, i32 noundef %.val33.i151) #11 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %.not107 = icmp eq i32 %i.ee, 0
  br i1 %.not107, label %bb.au, label %DeriveClientHandshakeSecret.exit.thread

bb.au:                                            ; preds = %Tls13DeriveKey.exit153
  %i.ef = load i16, ptr %i.dw, align 2, !tbaa !121
  %i.eg = zext i16 %i.ef to i32
  %i.eh = add nuw nsw i32 %.069, %i.eg
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.ar
  %.1 = phi i32 [ %i.eh, %bb.au ], [ %.069, %bb.ar ] ; 5 uses
  br i1 %.not104, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ei = zext nneg i32 %.1 to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 732 ; 2 uses
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !58
  %i.em = zext i16 %i.el to i32
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 740
  %i.ep = load i8, ptr %i.eo, align 2, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  switch i8 %i.ep, label %Tls13DeriveKey.exit159.thread [
    i8 4, label %Tls13DeriveKey.exit159
    i8 5, label %bb.ax
  ]

Tls13DeriveKey.exit159.thread:                    ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %DeriveClientHandshakeSecret.exit.thread

bb.ax:                                            ; preds = %bb.aw
  br label %Tls13DeriveKey.exit159

Tls13DeriveKey.exit159:                           ; preds = %bb.ax, %bb.aw
  %.025.ph.i154 = phi i32 [ 48, %bb.ax ], [ 32, %bb.aw ]
  %.0.ph.i155 = phi i32 [ 7, %bb.ax ], [ 6, %bb.aw ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  %i.eq = getelementptr i8, ptr %0, i64 176
  %.val.i156 = load ptr, ptr %i.eq, align 16, !tbaa !46
  %i.er = getelementptr i8, ptr %0, i64 1364
  %.val33.i157 = load i32, ptr %i.er, align 4, !tbaa !47
  %i.es = call i32 @wc_Tls13_HKDF_Expand_Label_ex(ptr noundef nonnull %i.ej, i32 noundef range(i32 0, -1) %i.em, ptr noundef nonnull %i.en, i32 noundef range(i32 0, 49) %.025.ph.i154, ptr noundef nonnull @tls13ProtocolLabel, i32 noundef 6, ptr noundef nonnull @writeIVLabel, i32 noundef 2, ptr noundef nonnull %i.b, i32 noundef range(i32 0, 49) 0, i32 noundef range(i32 0, 8) %.0.ph.i155, ptr noundef %.val.i156, i32 noundef %.val33.i157) #11 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %.not108 = icmp eq i32 %i.es, 0
  br i1 %.not108, label %bb.ay, label %DeriveClientHandshakeSecret.exit.thread

bb.ay:                                            ; preds = %Tls13DeriveKey.exit159
  %i.et = load i16, ptr %i.ek, align 4, !tbaa !58
  %i.eu = zext i16 %i.et to i32
  %i.ev = add nuw nsw i32 %.1, %i.eu
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.av
  %.2 = phi i32 [ %i.ev, %bb.ay ], [ %.1, %bb.av ] ; 5 uses
  br i1 %.not106, label %bb.bd, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ew = zext nneg i32 %.2 to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 732 ; 2 uses
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !58
  %i.fa = zext i16 %i.ez to i32
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 740
  %i.fd = load i8, ptr %i.fc, align 2, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  switch i8 %i.fd, label %Tls13DeriveKey.exit165.thread [
    i8 4, label %Tls13DeriveKey.exit165
    i8 5, label %bb.bb
  ]

Tls13DeriveKey.exit165.thread:                    ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %DeriveClientHandshakeSecret.exit.thread

bb.bb:                                            ; preds = %bb.ba
  br label %Tls13DeriveKey.exit165

Tls13DeriveKey.exit165:                           ; preds = %bb.bb, %bb.ba
  %.025.ph.i160 = phi i32 [ 48, %bb.bb ], [ 32, %bb.ba ]
  %.0.ph.i161 = phi i32 [ 7, %bb.bb ], [ 6, %bb.ba ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.fe = getelementptr i8, ptr %0, i64 176
  %.val.i162 = load ptr, ptr %i.fe, align 16, !tbaa !46
  %i.ff = getelementptr i8, ptr %0, i64 1364
  %.val33.i163 = load i32, ptr %i.ff, align 4, !tbaa !47
  %i.fg = call i32 @wc_Tls13_HKDF_Expand_Label_ex(ptr noundef nonnull %i.ex, i32 noundef range(i32 0, -1) %i.fa, ptr noundef nonnull %i.fb, i32 noundef range(i32 0, 49) %.025.ph.i160, ptr noundef nonnull @tls13ProtocolLabel, i32 noundef 6, ptr noundef nonnull @writeIVLabel, i32 noundef 2, ptr noundef nonnull %i.a, i32 noundef range(i32 0, 49) 0, i32 noundef range(i32 0, 8) %.0.ph.i161, ptr noundef %.val.i162, i32 noundef %.val33.i163) #11 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.not109 = icmp eq i32 %i.fg, 0
  br i1 %.not109, label %bb.bc, label %DeriveClientHandshakeSecret.exit.thread

bb.bc:                                            ; preds = %Tls13DeriveKey.exit165
  %i.fh = load i16, ptr %i.ey, align 4, !tbaa !58
  %i.fi = zext i16 %i.fh to i32
  %i.fj = add nuw nsw i32 %.2, %i.fi
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.az
  %.3 = phi i32 [ %i.fj, %bb.bc ], [ %.2, %bb.az ]
  %i.fk = call i32 @StoreKeys(ptr noundef %0, ptr noundef nonnull %i.k, i32 noundef %.0) #11
  br label %DeriveClientHandshakeSecret.exit.thread

.preheader.i.thread:                              ; preds = %bb.z, %bb.aa, %bb.t, %bb.m, %bb.f, %Tls13DeriveKey.exit.thread, %DeriveTrafficSecret.exit147.thread, %DeriveTrafficSecret.exit.thread, %DeriveServerTrafficSecret.exit.thread187, %bb.s, %DeriveClientTrafficSecret.exit.thread181, %bb.l, %DeriveServerHandshakeSecret.exit.thread175, %bb.e, %DeriveClientHandshakeSecret.exit.thread169, %DeriveTrafficSecret.exit147, %DeriveTrafficSecret.exit, %DeriveServerTrafficSecret.exit, %DeriveClientTrafficSecret.exit, %DeriveServerHandshakeSecret.exit, %DeriveClientHandshakeSecret.exit, %bb.am, %Tls13DeriveKey.exit
  %.474.ph = phi i32 [ -173, %bb.z ], [ -173, %bb.aa ], [ -173, %bb.t ], [ -173, %bb.m ], [ -173, %bb.f ], [ -232, %Tls13DeriveKey.exit.thread ], [ -232, %DeriveTrafficSecret.exit147.thread ], [ -232, %DeriveTrafficSecret.exit.thread ], [ %.027.i.i133.ph, %DeriveServerTrafficSecret.exit.thread187 ], [ -173, %bb.s ], [ %.027.i.i124.ph, %DeriveClientTrafficSecret.exit.thread181 ], [ -173, %bb.l ], [ %.027.i.i115.ph, %DeriveServerHandshakeSecret.exit.thread175 ], [ -173, %bb.e ], [ %.027.i.i.ph, %DeriveClientHandshakeSecret.exit.thread169 ], [ %i.dh, %DeriveTrafficSecret.exit147 ], [ %i.db, %DeriveTrafficSecret.exit ], [ %i.cu, %DeriveServerTrafficSecret.exit ], [ %i.cb, %DeriveClientTrafficSecret.exit ], [ %i.bh, %DeriveServerHandshakeSecret.exit ], [ %i.an, %DeriveClientHandshakeSecret.exit ], [ %.373, %bb.am ], [ %i.dr, %Tls13DeriveKey.exit ]
  fence seq_cst
  br label %._crit_edge.i

DeriveClientHandshakeSecret.exit.thread:          ; preds = %Tls13DeriveKey.exit165.thread, %Tls13DeriveKey.exit159.thread, %Tls13DeriveKey.exit153.thread, %Tls13DeriveKey.exit165, %Tls13DeriveKey.exit159, %Tls13DeriveKey.exit153, %bb.bd
  %.474 = phi i32 [ -232, %Tls13DeriveKey.exit153.thread ], [ %i.ee, %Tls13DeriveKey.exit153 ], [ %i.es, %Tls13DeriveKey.exit159 ], [ %i.fg, %Tls13DeriveKey.exit165 ], [ %i.fk, %bb.bd ], [ -232, %Tls13DeriveKey.exit159.thread ], [ -232, %Tls13DeriveKey.exit165.thread ] ; 2 uses
  %.4 = phi i32 [ %.069, %Tls13DeriveKey.exit153.thread ], [ %.069, %Tls13DeriveKey.exit153 ], [ %.1, %Tls13DeriveKey.exit159 ], [ %.2, %Tls13DeriveKey.exit165 ], [ %.3, %bb.bd ], [ %.1, %Tls13DeriveKey.exit159.thread ], [ %.2, %Tls13DeriveKey.exit165.thread ] ; 2 uses
  %i.fl = zext nneg i32 %.4 to i64                ; 3 uses
  fence seq_cst
  %i.fm = icmp samesign ugt i32 %.4, 7
  br i1 %i.fm, label %.lr.ph25.preheader.i, label %.preheader.i

.lr.ph25.preheader.i:                             ; preds = %DeriveClientHandshakeSecret.exit.thread
  %i.fn = and i64 %i.fl, 2147483640               ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.k, i8 0, i64 %i.fn, i1 false), !tbaa !54
  %scevgep.i = getelementptr i8, ptr %i.k, i64 %i.fn
  %i.fo = and i64 %i.fl, 7
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph25.preheader.i, %DeriveClientHandshakeSecret.exit.thread
  %.114.lcssa.i = phi i64 [ %i.fl, %DeriveClientHandshakeSecret.exit.thread ], [ %i.fo, %.lr.ph25.preheader.i ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %i.k, %DeriveClientHandshakeSecret.exit.thread ], [ %scevgep.i, %.lr.ph25.preheader.i ]
  %.not1528.i = icmp eq i64 %.114.lcssa.i, 0
  br i1 %.not1528.i, label %._crit_edge.i, label %.lr.ph31.preheader.i

.lr.ph31.preheader.i:                             ; preds = %.preheader.i
  call void @llvm.memset.p0.i64(ptr align 1 %.0.lcssa.i, i8 0, i64 %.114.lcssa.i, i1 false), !tbaa !57
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.preheader.i.thread, %.lr.ph31.preheader.i, %.preheader.i
  %.474223228 = phi i32 [ %.474.ph, %.preheader.i.thread ], [ %.474, %.lr.ph31.preheader.i ], [ %.474, %.preheader.i ]
  fence seq_cst
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #11
  ret i32 %.474223228
}

declare i32 @StoreKeys(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @DecryptTls13(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3, ptr noundef %4, i16 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [32 x i8], align 16               ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.d = load i16, ptr %i.c, align 2, !tbaa !59   ; 3 uses
  %i.e = zext i16 %i.d to i32
  %i.f = icmp ult i16 %3, %i.d
  br i1 %i.f, label %ForceZero.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %narrow = sub nuw i16 %3, %i.d                  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  store i8 0, ptr %i.h, align 16, !tbaa !124
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 16, !tbaa !125 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.l = tail call ptr @wolfSSL_Malloc(i64 noundef 12) #11 ; 3 uses
  store ptr %i.l, ptr %i.i, align 16, !tbaa !125
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %ForceZero.exit, label %.thread

.thread:                                          ; preds = %bb.b, %bb.c
  %i.n = phi ptr [ %i.l, %bb.c ], [ %i.j, %bb.b ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 992 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 732 ; 2 uses
  %i.q = load i16, ptr %i.p, align 4, !tbaa !58
  %i.r = tail call i16 @llvm.umax.i16(i16 %i.q, i16 12)
  %spec.store.select.i = zext i16 %i.r to i64     ; 3 uses
  %i.s = add nsw i64 %spec.store.select.i, -8     ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.s ; 21 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.v = load i64, ptr %i.u, align 16
  %i.w = and i64 %i.v, 131072
  %.not.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i, label %bb.d, label %WriteSEQTls13.exit.i

bb.d:                                             ; preds = %.thread
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1004 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !126  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 16, !tbaa !127 ; 3 uses
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 16, !tbaa !127
  %i.ac = icmp eq i32 %i.aa, -1
  br i1 %i.ac, label %bb.e, label %WriteSEQTls13.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ad = add i32 %i.y, 1
  store i32 %i.ad, ptr %i.x, align 4, !tbaa !126
  br label %WriteSEQTls13.exit.i

WriteSEQTls13.exit.i:                             ; preds = %bb.e, %bb.d, %.thread
  %.sroa.0.0.i.i = phi i32 [ 0, %.thread ], [ %i.y, %bb.e ], [ %i.y, %bb.d ] ; 4 uses
  %.sroa.6.0.i.i = phi i32 [ 0, %.thread ], [ -1, %bb.e ], [ %i.aa, %bb.d ] ; 4 uses
  %6 = lshr i32 %.sroa.0.0.i.i, 24
  %7 = trunc nuw i32 %6 to i8
  store i8 %7, ptr %i.t, align 1, !tbaa !57
  %8 = lshr i32 %.sroa.0.0.i.i, 16
  %9 = trunc i32 %8 to i8
  %10 = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  store i8 %9, ptr %10, align 1, !tbaa !57
  %11 = lshr i32 %.sroa.0.0.i.i, 8
  %12 = trunc i32 %11 to i8
  %13 = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  store i8 %12, ptr %13, align 1, !tbaa !57
  %14 = trunc i32 %.sroa.0.0.i.i to i8
  %15 = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  store i8 %14, ptr %15, align 1, !tbaa !57
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %16 = lshr i32 %.sroa.6.0.i.i, 24
  %17 = trunc nuw i32 %16 to i8
  store i8 %17, ptr %i.ae, align 1, !tbaa !57
  %18 = lshr i32 %.sroa.6.0.i.i, 16
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds nuw i8, ptr %i.t, i64 5
  store i8 %19, ptr %20, align 1, !tbaa !57
  %21 = lshr i32 %.sroa.6.0.i.i, 8
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds nuw i8, ptr %i.t, i64 6
  store i8 %22, ptr %23, align 1, !tbaa !57
  %24 = trunc i32 %.sroa.6.0.i.i to i8
  %25 = getelementptr inbounds nuw i8, ptr %i.t, i64 7
  store i8 %24, ptr %25, align 1, !tbaa !57
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 16 %i.o, i64 %i.s, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.s ; 11 uses
  %i.ag = ptrtoint ptr %i.t to i64                ; 3 uses
  %i.ah = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ai = or i64 %i.ah, %i.ag
  %i.aj = and i64 %i.ai, 7
  %or.cond.i.i = icmp eq i64 %i.aj, 0
  br i1 %or.cond.i.i, label %xorbuf.exit.sink.split.i, label %bb.f

bb.f:                                             ; preds = %WriteSEQTls13.exit.i
  %i.ak = xor i64 %i.ah, %i.ag
  %i.al = and i64 %i.ak, 7
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %.preheader.i.i, label %.lr.ph53.i.i.preheader

.preheader.i.i:                                   ; preds = %bb.f
  %i.an = and i64 %i.ag, 7
  %.not55.i.i = icmp eq i64 %i.an, 0
  br i1 %.not55.i.i, label %xorbuf.exit.sink.split.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 2 uses
  %i.ap = load i8, ptr %i.af, align 1, !tbaa !57
  %i.aq = getelementptr inbounds nuw i8, ptr %i.t, i64 1 ; 4 uses
  %i.ar = load i8, ptr %i.t, align 1, !tbaa !57
  %i.as = xor i8 %i.ar, %i.ap
  store i8 %i.as, ptr %i.t, align 1, !tbaa !57
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = and i64 %i.at, 7
  %.not = icmp eq i64 %i.au, 0
  br i1 %.not, label %.lr.ph53.i.i.preheader, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %.lr.ph.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 2 ; 2 uses
  %i.aw = load i8, ptr %i.ao, align 1, !tbaa !57
  %i.ax = getelementptr inbounds nuw i8, ptr %i.t, i64 2 ; 4 uses
  %i.ay = load i8, ptr %i.aq, align 1, !tbaa !57
  %i.az = xor i8 %i.ay, %i.aw
  store i8 %i.az, ptr %i.aq, align 1, !tbaa !57
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = and i64 %i.ba, 7
  %.not86 = icmp eq i64 %i.bb, 0
  br i1 %.not86, label %.lr.ph53.i.i.preheader, label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %.lr.ph.i.i.1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.af, i64 3 ; 2 uses
  %i.bd = load i8, ptr %i.av, align 1, !tbaa !57
  %i.be = getelementptr inbounds nuw i8, ptr %i.t, i64 3 ; 4 uses
  %i.bf = load i8, ptr %i.ax, align 1, !tbaa !57
  %i.bg = xor i8 %i.bf, %i.bd
  store i8 %i.bg, ptr %i.ax, align 1, !tbaa !57
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = and i64 %i.bh, 7
  %.not87 = icmp eq i64 %i.bi, 0
  br i1 %.not87, label %.lr.ph53.i.i.preheader, label %.lr.ph.i.i.3

.lr.ph.i.i.3:                                     ; preds = %.lr.ph.i.i.2
  %i.bj = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 2 uses
  %i.bk = load i8, ptr %i.bc, align 1, !tbaa !57
  %i.bl = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 4 uses
  %i.bm = load i8, ptr %i.be, align 1, !tbaa !57
  %i.bn = xor i8 %i.bm, %i.bk
  store i8 %i.bn, ptr %i.be, align 1, !tbaa !57
  %i.bo = ptrtoint ptr %i.bl to i64
  %i.bp = and i64 %i.bo, 7
  %.not88 = icmp eq i64 %i.bp, 0
  br i1 %.not88, label %.lr.ph53.i.i.preheader, label %.lr.ph.i.i.4

.lr.ph.i.i.4:                                     ; preds = %.lr.ph.i.i.3
  %i.bq = getelementptr inbounds nuw i8, ptr %i.af, i64 5 ; 2 uses
  %i.br = load i8, ptr %i.bj, align 1, !tbaa !57
  %i.bs = getelementptr inbounds nuw i8, ptr %i.t, i64 5 ; 4 uses
  %i.bt = load i8, ptr %i.bl, align 1, !tbaa !57
  %i.bu = xor i8 %i.bt, %i.br
  store i8 %i.bu, ptr %i.bl, align 1, !tbaa !57
  %i.bv = ptrtoint ptr %i.bs to i64
  %i.bw = and i64 %i.bv, 7
  %.not89 = icmp eq i64 %i.bw, 0
  br i1 %.not89, label %.lr.ph53.i.i.preheader, label %.lr.ph.i.i.5

.lr.ph.i.i.5:                                     ; preds = %.lr.ph.i.i.4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.af, i64 6 ; 2 uses
  %i.by = load i8, ptr %i.bq, align 1, !tbaa !57
  %i.bz = getelementptr inbounds nuw i8, ptr %i.t, i64 6 ; 4 uses
  %i.ca = load i8, ptr %i.bs, align 1, !tbaa !57
  %i.cb = xor i8 %i.ca, %i.by
  store i8 %i.cb, ptr %i.bs, align 1, !tbaa !57
  %i.cc = ptrtoint ptr %i.bz to i64
  %i.cd = and i64 %i.cc, 7
  %.not90 = icmp eq i64 %i.cd, 0
  br i1 %.not90, label %.lr.ph53.i.i.preheader, label %.lr.ph.i.i.6

.lr.ph.i.i.6:                                     ; preds = %.lr.ph.i.i.5
  %i.ce = getelementptr inbounds nuw i8, ptr %i.af, i64 7 ; 2 uses
  %i.cf = load i8, ptr %i.bx, align 1, !tbaa !57
  %i.cg = getelementptr inbounds nuw i8, ptr %i.t, i64 7 ; 4 uses
  %i.ch = load i8, ptr %i.bz, align 1, !tbaa !57
  %i.ci = xor i8 %i.ch, %i.cf
  store i8 %i.ci, ptr %i.bz, align 1, !tbaa !57
  %i.cj = ptrtoint ptr %i.cg to i64
  %i.ck = and i64 %i.cj, 7
  %.not91 = icmp eq i64 %i.ck, 0
  br i1 %.not91, label %.lr.ph53.i.i.preheader, label %.lr.ph.i.i.7

.lr.ph.i.i.7:                                     ; preds = %.lr.ph.i.i.6
  %i.cl = getelementptr inbounds nuw i8, ptr %i.o, i64 %spec.store.select.i ; 0 uses
  %i.cm = load i8, ptr %i.ce, align 1, !tbaa !57
  %i.cn = getelementptr inbounds nuw i8, ptr %i.n, i64 %spec.store.select.i ; 0 uses
  %i.co = load i8, ptr %i.cg, align 1, !tbaa !57
  %i.cp = xor i8 %i.co, %i.cm
  store i8 %i.cp, ptr %i.cg, align 1, !tbaa !57
  br label %BuildTls13Nonce.exit

.lr.ph53.i.i.preheader:                           ; preds = %.lr.ph.i.i, %.lr.ph.i.i.1, %.lr.ph.i.i.2, %.lr.ph.i.i.3, %.lr.ph.i.i.4, %.lr.ph.i.i.5, %.lr.ph.i.i.6, %bb.f
  %.252.i.i.ph = phi ptr [ %i.af, %bb.f ], [ %i.ao, %.lr.ph.i.i ], [ %i.av, %.lr.ph.i.i.1 ], [ %i.bc, %.lr.ph.i.i.2 ], [ %i.bj, %.lr.ph.i.i.3 ], [ %i.bq, %.lr.ph.i.i.4 ], [ %i.bx, %.lr.ph.i.i.5 ], [ %i.ce, %.lr.ph.i.i.6 ] ; 2 uses
  %.22451.i.i.ph = phi ptr [ %i.t, %bb.f ], [ %i.aq, %.lr.ph.i.i ], [ %i.ax, %.lr.ph.i.i.1 ], [ %i.be, %.lr.ph.i.i.2 ], [ %i.bl, %.lr.ph.i.i.3 ], [ %i.bs, %.lr.ph.i.i.4 ], [ %i.bz, %.lr.ph.i.i.5 ], [ %i.cg, %.lr.ph.i.i.6 ] ; 2 uses
  %.22750.i.i.ph = phi i32 [ 8, %bb.f ], [ 7, %.lr.ph.i.i ], [ 6, %.lr.ph.i.i.1 ], [ 5, %.lr.ph.i.i.2 ], [ 4, %.lr.ph.i.i.3 ], [ 3, %.lr.ph.i.i.4 ], [ 2, %.lr.ph.i.i.5 ], [ 1, %.lr.ph.i.i.6 ] ; 4 uses
  %i.cq = add nsw i32 %.22750.i.i.ph, -1
  %xtraiter = and i32 %.22750.i.i.ph, 3           ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph53.i.i.prol.loopexit, label %.lr.ph53.i.i.prol

.lr.ph53.i.i.prol:                                ; preds = %.lr.ph53.i.i.preheader, %.lr.ph53.i.i.prol
  %.252.i.i.prol = phi ptr [ %i.cr, %.lr.ph53.i.i.prol ], [ %.252.i.i.ph, %.lr.ph53.i.i.preheader ] ; 2 uses
  %.22451.i.i.prol = phi ptr [ %i.ct, %.lr.ph53.i.i.prol ], [ %.22451.i.i.ph, %.lr.ph53.i.i.preheader ] ; 3 uses
  %.22750.i.i.prol = phi i32 [ %i.cw, %.lr.ph53.i.i.prol ], [ %.22750.i.i.ph, %.lr.ph53.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph53.i.i.prol ], [ 0, %.lr.ph53.i.i.preheader ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.252.i.i.prol, i64 1 ; 2 uses
  %i.cs = load i8, ptr %.252.i.i.prol, align 1, !tbaa !57
  %i.ct = getelementptr inbounds nuw i8, ptr %.22451.i.i.prol, i64 1 ; 2 uses
  %i.cu = load i8, ptr %.22451.i.i.prol, align 1, !tbaa !57
  %i.cv = xor i8 %i.cu, %i.cs
  store i8 %i.cv, ptr %.22451.i.i.prol, align 1, !tbaa !57
  %i.cw = add nsw i32 %.22750.i.i.prol, -1        ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph53.i.i.prol.loopexit, label %.lr.ph53.i.i.prol, !llvm.loop !122

.lr.ph53.i.i.prol.loopexit:                       ; preds = %.lr.ph53.i.i.prol, %.lr.ph53.i.i.preheader
  %.252.i.i.unr = phi ptr [ %.252.i.i.ph, %.lr.ph53.i.i.preheader ], [ %i.cr, %.lr.ph53.i.i.prol ]
  %.22451.i.i.unr = phi ptr [ %.22451.i.i.ph, %.lr.ph53.i.i.preheader ], [ %i.ct, %.lr.ph53.i.i.prol ]
  %.22750.i.i.unr = phi i32 [ %.22750.i.i.ph, %.lr.ph53.i.i.preheader ], [ %i.cw, %.lr.ph53.i.i.prol ]
  %i.cx = icmp ult i32 %i.cq, 3
  br i1 %i.cx, label %BuildTls13Nonce.exit, label %.lr.ph53.i.i

.lr.ph53.i.i:                                     ; preds = %.lr.ph53.i.i.prol.loopexit, %.lr.ph53.i.i
  %.252.i.i = phi ptr [ %i.dn, %.lr.ph53.i.i ], [ %.252.i.i.unr, %.lr.ph53.i.i.prol.loopexit ] ; 5 uses
  %.22451.i.i = phi ptr [ %i.dp, %.lr.ph53.i.i ], [ %.22451.i.i.unr, %.lr.ph53.i.i.prol.loopexit ] ; 6 uses
  %.22750.i.i = phi i32 [ %i.ds, %.lr.ph53.i.i ], [ %.22750.i.i.unr, %.lr.ph53.i.i.prol.loopexit ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.252.i.i, i64 1
  %i.cz = load i8, ptr %.252.i.i, align 1, !tbaa !57
  %i.da = getelementptr inbounds nuw i8, ptr %.22451.i.i, i64 1 ; 2 uses
  %i.db = load i8, ptr %.22451.i.i, align 1, !tbaa !57
  %i.dc = xor i8 %i.db, %i.cz
  store i8 %i.dc, ptr %.22451.i.i, align 1, !tbaa !57
  %i.dd = getelementptr inbounds nuw i8, ptr %.252.i.i, i64 2
  %i.de = load i8, ptr %i.cy, align 1, !tbaa !57
  %i.df = getelementptr inbounds nuw i8, ptr %.22451.i.i, i64 2 ; 2 uses
  %i.dg = load i8, ptr %i.da, align 1, !tbaa !57
  %i.dh = xor i8 %i.dg, %i.de
  store i8 %i.dh, ptr %i.da, align 1, !tbaa !57
  %i.di = getelementptr inbounds nuw i8, ptr %.252.i.i, i64 3
  %i.dj = load i8, ptr %i.dd, align 1, !tbaa !57
  %i.dk = getelementptr inbounds nuw i8, ptr %.22451.i.i, i64 3 ; 2 uses
  %i.dl = load i8, ptr %i.df, align 1, !tbaa !57
  %i.dm = xor i8 %i.dl, %i.dj
  store i8 %i.dm, ptr %i.df, align 1, !tbaa !57
  %i.dn = getelementptr inbounds nuw i8, ptr %.252.i.i, i64 4
  %i.do = load i8, ptr %i.di, align 1, !tbaa !57
  %i.dp = getelementptr inbounds nuw i8, ptr %.22451.i.i, i64 4
  %i.dq = load i8, ptr %i.dk, align 1, !tbaa !57
  %i.dr = xor i8 %i.dq, %i.do
  store i8 %i.dr, ptr %i.dk, align 1, !tbaa !57
  %i.ds = add nsw i32 %.22750.i.i, -4             ; 2 uses
  %.not.i12.i.3 = icmp eq i32 %i.ds, 0
  br i1 %.not.i12.i.3, label %BuildTls13Nonce.exit, label %.lr.ph53.i.i, !llvm.loop !123

xorbuf.exit.sink.split.i:                         ; preds = %.preheader.i.i, %WriteSEQTls13.exit.i
  %i.dt = load i64, ptr %i.af, align 8, !tbaa !54
  %i.du = load i64, ptr %i.t, align 8, !tbaa !54
  %i.dv = xor i64 %i.du, %i.dt
  store i64 %i.dv, ptr %i.t, align 8, !tbaa !54
  br label %BuildTls13Nonce.exit

BuildTls13Nonce.exit:                             ; preds = %.lr.ph53.i.i.prol.loopexit, %.lr.ph53.i.i, %.lr.ph.i.i.7, %xorbuf.exit.sink.split.i
  store i8 1, ptr %i.h, align 16, !tbaa !124
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 738
  %i.dx = load i8, ptr %i.dw, align 2, !tbaa !62
  switch i8 %i.dx, label %ForceZero.exit [
    i8 7, label %bb.g
    i8 9, label %bb.h
  ]

bb.g:                                             ; preds = %BuildTls13Nonce.exit
  %i.dy = load ptr, ptr %i.g, align 16, !tbaa !128
  %i.dz = zext i16 %narrow to i32
  %i.ea = load ptr, ptr %i.i, align 16, !tbaa !125
  %i.eb = zext i16 %narrow to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 %i.eb
  %i.ed = zext i16 %5 to i32
end_hunk_0
begin_hunk_1_@DecryptTls13:bb.a
  store i8 2, ptr %i.h, align 16, !tbaa !124
  %i.fd = load ptr, ptr %i.i, align 16, !tbaa !125 ; 3 uses
  %i.fe = load i16, ptr %i.p, align 4, !tbaa !58  ; 2 uses
  %i.ff = zext i16 %i.fe to i64                   ; 2 uses
  fence seq_cst
  %i.fg = ptrtoint ptr %i.fd to i64
  %i.fh = and i64 %i.fg, 7
  %.not19.i = icmp eq i64 %i.fh, 0
  br i1 %.not19.i, label %.preheader16.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.m
  %i.fi = icmp eq i16 %i.fe, 0
  br i1 %i.fi, label %ForceZero.exit, label %.lr.ph

.preheader16.i:                                   ; preds = %.lr.ph, %bb.m
  %.013.lcssa.i = phi i64 [ %i.ff, %bb.m ], [ %i.fo, %.lr.ph ] ; 4 uses
  %.012.lcssa.i = phi ptr [ %i.fd, %bb.m ], [ %i.fn, %.lr.ph ] ; 3 uses
  %i.fj = icmp ugt i64 %.013.lcssa.i, 7
  br i1 %i.fj, label %.lr.ph25.preheader.i, label %.preheader.i

.lr.ph25.preheader.i:                             ; preds = %.preheader16.i
  %i.fk = and i64 %.013.lcssa.i, -8               ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.012.lcssa.i, i8 0, i64 %i.fk, i1 false), !tbaa !54
  %scevgep.i = getelementptr i8, ptr %.012.lcssa.i, i64 %i.fk
  %i.fl = and i64 %.013.lcssa.i, 7
  br label %.preheader.i

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.fm = icmp eq i64 %i.fo, 0
  br i1 %i.fm, label %ForceZero.exit, label %.lr.ph, !llvm.loop !0

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.01320.i74 = phi i64 [ %i.fo, %.lr.ph.i ], [ %i.ff, %.lr.ph.i.preheader ]
  %.01221.i73 = phi ptr [ %i.fn, %.lr.ph.i ], [ %i.fd, %.lr.ph.i.preheader ] ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.01221.i73, i64 1 ; 3 uses
  store i8 0, ptr %.01221.i73, align 1, !tbaa !57
  %i.fo = add nsw i64 %.01320.i74, -1             ; 3 uses
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = and i64 %i.fp, 7
  %.not.i45 = icmp eq i64 %i.fq, 0
  br i1 %.not.i45, label %.preheader16.i, label %.lr.ph.i, !llvm.loop !0

.preheader.i:                                     ; preds = %.lr.ph25.preheader.i, %.preheader16.i
  %.114.lcssa.i = phi i64 [ %.013.lcssa.i, %.preheader16.i ], [ %i.fl, %.lr.ph25.preheader.i ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %.012.lcssa.i, %.preheader16.i ], [ %scevgep.i, %.lr.ph25.preheader.i ]
  %.not1528.i = icmp eq i64 %.114.lcssa.i, 0
  br i1 %.not1528.i, label %._crit_edge.i, label %.lr.ph31.preheader.i

.lr.ph31.preheader.i:                             ; preds = %.preheader.i
  call void @llvm.memset.p0.i64(ptr align 1 %.0.lcssa.i, i8 0, i64 %.114.lcssa.i, i1 false), !tbaa !57
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph31.preheader.i, %.preheader.i
  fence seq_cst
  br label %ForceZero.exit

ForceZero.exit:                                   ; preds = %.lr.ph.i, %.lr.ph.i.preheader, %._crit_edge.i, %BuildTls13Nonce.exit, %bb.c, %bb.a
  %.041 = phi i32 [ -125, %bb.c ], [ -312, %BuildTls13Nonce.exit ], [ -173, %bb.a ], [ %.0, %._crit_edge.i ], [ %.0, %.lr.ph.i.preheader ], [ %.0, %.lr.ph.i ]
  ret i32 %.041
}

declare ptr @wolfSSL_Malloc(i64 noundef) local_unnamed_addr #2

declare i32 @wc_AesGcmDecrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @BuildTls13Message(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 8 uses
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1069 ; 5 uses
  store i8 0, ptr %i.c, align 1, !tbaa !132
  %i.d = add i32 %4, 5                            ; 2 uses
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp ne ptr %1, null
  %i.f = icmp ne ptr %3, null
  %or.cond = or i1 %i.e, %i.f
  br i1 %or.cond, label %bb.af, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = icmp eq ptr %1, null
  %i.h = icmp eq ptr %3, null
  %or.cond3 = or i1 %i.g, %i.h
  br i1 %or.cond3, label %bb.af, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = add i32 %4, 6
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.k = load i16, ptr %i.j, align 2, !tbaa !59
  %i.l = zext i16 %i.k to i32
  %i.m = add i32 %i.i, %i.l
  br label %bb.af

bb.f:                                             ; preds = %bb.d
  %i.n = add i32 %4, 6
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  %i.p = load i16, ptr %i.o, align 2, !tbaa !59
  %i.q = zext i16 %i.p to i32
  %i.r = add i32 %i.n, %i.q                       ; 3 uses
  %i.s = icmp ugt i32 %i.r, %2
  br i1 %i.s, label %bb.af, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = add i32 %i.r, -5                         ; 4 uses
  %i.u = trunc i32 %i.t to i16                    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8
  %i.x = and i64 %i.w, 131072
  %.not82 = icmp eq i64 %i.x, 0
  br i1 %.not82, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr i8, ptr %0, i64 726
  %.val = load i8, ptr %i.y, align 2, !tbaa !64
  store i8 23, ptr %1, align 1, !tbaa !65
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %.val, ptr %i.z, align 1, !tbaa !66
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 3, ptr %i.aa, align 1, !tbaa !67
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ac = lshr i32 %i.t, 8
  %i.ad = trunc i32 %i.ac to i8
  store i8 %i.ad, ptr %i.ab, align 1, !tbaa !57
  %i.ae = trunc i32 %i.t to i8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !57
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 12 uses
  %.not83 = icmp eq ptr %3, %i.ag
  br i1 %.not83, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = sext i32 %4 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr nonnull align 1 %3, i64 %i.ah, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  store i8 2, ptr %i.c, align 1, !tbaa !132
  %.not84 = icmp eq i32 %6, 0
  br i1 %.not84, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = tail call i32 @HashOutput(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %i.d, i32 noundef 0) #11 ; 2 uses
  %.not85 = icmp eq i32 %i.ai, 0
  br i1 %.not85, label %bb.m, label %ForceZero.exit.thread

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.aj = trunc i32 %5 to i8
  %i.ak = zext i32 %i.d to i64
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %i.ak
  store i8 %i.aj, ptr %i.al, align 1, !tbaa !57
  store i8 4, ptr %i.c, align 1, !tbaa !132
  %i.am = load i16, ptr %i.o, align 8, !tbaa !59  ; 3 uses
  %i.an = zext i16 %i.am to i32
  %i.ao = icmp ugt i16 %i.am, %i.u
  br i1 %i.ao, label %EncryptTls13.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %narrow.i = sub nuw i16 %i.u, %i.am             ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 5 uses
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !133
  switch i8 %i.ar, label %EncryptTls13.exit.thread105 [
    i8 0, label %bb.o
    i8 1, label %bb.t
    i8 2, label %bb.ad
  ]

EncryptTls13.exit.thread105:                      ; preds = %bb.n
  store i8 0, ptr %i.aq, align 8, !tbaa !133
  br label %bb.ae

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !134 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.p, label %.thread.i

bb.p:                                             ; preds = %bb.o
  %i.av = tail call ptr @wolfSSL_Malloc(i64 noundef 12) #11 ; 3 uses
  store ptr %i.av, ptr %i.as, align 8, !tbaa !134
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %EncryptTls13.exit.thread, label %.thread.i

.thread.i:                                        ; preds = %bb.p, %bb.o
  %i.ax = phi ptr [ %i.av, %bb.p ], [ %i.at, %bb.o ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 980 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 732
  %i.ba = load i16, ptr %i.az, align 4, !tbaa !58
  %i.bb = tail call i16 @llvm.umax.i16(i16 %i.ba, i16 12)
  %spec.store.select.i.i = zext i16 %i.bb to i64  ; 3 uses
  %i.bc = add nsw i64 %spec.store.select.i.i, -8  ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bc ; 21 uses
  %i.be = load i64, ptr %i.v, align 8
  %i.bf = and i64 %i.be, 131072
  %.not.i.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i.i, label %bb.q, label %WriteSEQTls13.exit.i.i

bb.q:                                             ; preds = %.thread.i
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1012 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !135 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !136 ; 3 uses
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.bi, align 8, !tbaa !136
  %i.bl = icmp eq i32 %i.bj, -1
  br i1 %i.bl, label %bb.r, label %WriteSEQTls13.exit.i.i

bb.r:                                             ; preds = %bb.q
  %i.bm = add i32 %i.bh, 1
  store i32 %i.bm, ptr %i.bg, align 4, !tbaa !135
  br label %WriteSEQTls13.exit.i.i

WriteSEQTls13.exit.i.i:                           ; preds = %bb.r, %bb.q, %.thread.i
  %.sroa.0.0.i.i.i = phi i32 [ 0, %.thread.i ], [ %i.bh, %bb.r ], [ %i.bh, %bb.q ] ; 4 uses
  %.sroa.6.0.i.i.i = phi i32 [ 0, %.thread.i ], [ -1, %bb.r ], [ %i.bj, %bb.q ] ; 4 uses
  %9 = lshr i32 %.sroa.0.0.i.i.i, 24
  %10 = trunc nuw i32 %9 to i8
  store i8 %10, ptr %i.bd, align 1, !tbaa !57
  %11 = lshr i32 %.sroa.0.0.i.i.i, 16
  %12 = trunc i32 %11 to i8
  %13 = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  store i8 %12, ptr %13, align 1, !tbaa !57
  %14 = lshr i32 %.sroa.0.0.i.i.i, 8
  %15 = trunc i32 %14 to i8
  %16 = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  store i8 %15, ptr %16, align 1, !tbaa !57
  %17 = trunc i32 %.sroa.0.0.i.i.i to i8
  %18 = getelementptr inbounds nuw i8, ptr %i.bd, i64 3
  store i8 %17, ptr %18, align 1, !tbaa !57
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %19 = lshr i32 %.sroa.6.0.i.i.i, 24
  %20 = trunc nuw i32 %19 to i8
  store i8 %20, ptr %i.bn, align 1, !tbaa !57
  %21 = lshr i32 %.sroa.6.0.i.i.i, 16
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds nuw i8, ptr %i.bd, i64 5
  store i8 %22, ptr %23, align 1, !tbaa !57
  %24 = lshr i32 %.sroa.6.0.i.i.i, 8
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds nuw i8, ptr %i.bd, i64 6
  store i8 %25, ptr %26, align 1, !tbaa !57
  %27 = trunc i32 %.sroa.6.0.i.i.i to i8
  %28 = getelementptr inbounds nuw i8, ptr %i.bd, i64 7
  store i8 %27, ptr %28, align 1, !tbaa !57
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr nonnull align 4 %i.ay, i64 %i.bc, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bc ; 11 uses
  %i.bp = ptrtoint ptr %i.bd to i64               ; 3 uses
  %i.bq = ptrtoint ptr %i.bo to i64               ; 2 uses
  %i.br = or i64 %i.bq, %i.bp
  %i.bs = and i64 %i.br, 7
  %or.cond.i.i.i = icmp eq i64 %i.bs, 0
  br i1 %or.cond.i.i.i, label %xorbuf.exit.sink.split.i.i, label %bb.s

bb.s:                                             ; preds = %WriteSEQTls13.exit.i.i
  %i.bt = xor i64 %i.bq, %i.bp
  %i.bu = and i64 %i.bt, 7
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %.preheader.i.i.i, label %.lr.ph53.i.i.i.preheader

.preheader.i.i.i:                                 ; preds = %bb.s
  %i.bw = and i64 %i.bp, 7
  %.not55.i.i.i = icmp eq i64 %i.bw, 0
  br i1 %.not55.i.i.i, label %xorbuf.exit.sink.split.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 1 ; 2 uses
  %i.by = load i8, ptr %i.bo, align 1, !tbaa !57
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bd, i64 1 ; 4 uses
  %i.ca = load i8, ptr %i.bd, align 1, !tbaa !57
  %i.cb = xor i8 %i.ca, %i.by
  store i8 %i.cb, ptr %i.bd, align 1, !tbaa !57
  %i.cc = ptrtoint ptr %i.bz to i64
  %i.cd = and i64 %i.cc, 7
  %.not172 = icmp eq i64 %i.cd, 0
  br i1 %.not172, label %.lr.ph53.i.i.i.preheader, label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %.lr.ph.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bo, i64 2 ; 2 uses
  %i.cf = load i8, ptr %i.bx, align 1, !tbaa !57
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bd, i64 2 ; 4 uses
  %i.ch = load i8, ptr %i.bz, align 1, !tbaa !57
  %i.ci = xor i8 %i.ch, %i.cf
  store i8 %i.ci, ptr %i.bz, align 1, !tbaa !57
  %i.cj = ptrtoint ptr %i.cg to i64
  %i.ck = and i64 %i.cj, 7
  %.not173 = icmp eq i64 %i.ck, 0
  br i1 %.not173, label %.lr.ph53.i.i.i.preheader, label %.lr.ph.i.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %.lr.ph.i.i.i.1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bo, i64 3 ; 2 uses
  %i.cm = load i8, ptr %i.ce, align 1, !tbaa !57
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bd, i64 3 ; 4 uses
  %i.co = load i8, ptr %i.cg, align 1, !tbaa !57
  %i.cp = xor i8 %i.co, %i.cm
  store i8 %i.cp, ptr %i.cg, align 1, !tbaa !57
  %i.cq = ptrtoint ptr %i.cn to i64
  %i.cr = and i64 %i.cq, 7
  %.not174 = icmp eq i64 %i.cr, 0
  br i1 %.not174, label %.lr.ph53.i.i.i.preheader, label %.lr.ph.i.i.i.3

.lr.ph.i.i.i.3:                                   ; preds = %.lr.ph.i.i.i.2
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bo, i64 4 ; 2 uses
  %i.ct = load i8, ptr %i.cl, align 1, !tbaa !57
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bd, i64 4 ; 4 uses
  %i.cv = load i8, ptr %i.cn, align 1, !tbaa !57
  %i.cw = xor i8 %i.cv, %i.ct
  store i8 %i.cw, ptr %i.cn, align 1, !tbaa !57
  %i.cx = ptrtoint ptr %i.cu to i64
  %i.cy = and i64 %i.cx, 7
  %.not175 = icmp eq i64 %i.cy, 0
  br i1 %.not175, label %.lr.ph53.i.i.i.preheader, label %.lr.ph.i.i.i.4

.lr.ph.i.i.i.4:                                   ; preds = %.lr.ph.i.i.i.3
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bo, i64 5 ; 2 uses
  %i.da = load i8, ptr %i.cs, align 1, !tbaa !57
  %i.db = getelementptr inbounds nuw i8, ptr %i.bd, i64 5 ; 4 uses
  %i.dc = load i8, ptr %i.cu, align 1, !tbaa !57
  %i.dd = xor i8 %i.dc, %i.da
  store i8 %i.dd, ptr %i.cu, align 1, !tbaa !57
  %i.de = ptrtoint ptr %i.db to i64
  %i.df = and i64 %i.de, 7
  %.not176 = icmp eq i64 %i.df, 0
  br i1 %.not176, label %.lr.ph53.i.i.i.preheader, label %.lr.ph.i.i.i.5

.lr.ph.i.i.i.5:                                   ; preds = %.lr.ph.i.i.i.4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bo, i64 6 ; 2 uses
  %i.dh = load i8, ptr %i.cz, align 1, !tbaa !57
  %i.di = getelementptr inbounds nuw i8, ptr %i.bd, i64 6 ; 4 uses
  %i.dj = load i8, ptr %i.db, align 1, !tbaa !57
  %i.dk = xor i8 %i.dj, %i.dh
  store i8 %i.dk, ptr %i.db, align 1, !tbaa !57
  %i.dl = ptrtoint ptr %i.di to i64
  %i.dm = and i64 %i.dl, 7
  %.not177 = icmp eq i64 %i.dm, 0
  br i1 %.not177, label %.lr.ph53.i.i.i.preheader, label %.lr.ph.i.i.i.6

.lr.ph.i.i.i.6:                                   ; preds = %.lr.ph.i.i.i.5
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bo, i64 7 ; 2 uses
  %i.do = load i8, ptr %i.dg, align 1, !tbaa !57
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bd, i64 7 ; 4 uses
  %i.dq = load i8, ptr %i.di, align 1, !tbaa !57
  %i.dr = xor i8 %i.dq, %i.do
  store i8 %i.dr, ptr %i.di, align 1, !tbaa !57
  %i.ds = ptrtoint ptr %i.dp to i64
  %i.dt = and i64 %i.ds, 7
  %.not178 = icmp eq i64 %i.dt, 0
  br i1 %.not178, label %.lr.ph53.i.i.i.preheader, label %.lr.ph.i.i.i.7

.lr.ph.i.i.i.7:                                   ; preds = %.lr.ph.i.i.i.6
  %i.du = getelementptr inbounds nuw i8, ptr %i.ay, i64 %spec.store.select.i.i ; 0 uses
  %i.dv = load i8, ptr %i.dn, align 1, !tbaa !57
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ax, i64 %spec.store.select.i.i ; 0 uses
  %i.dx = load i8, ptr %i.dp, align 1, !tbaa !57
  %i.dy = xor i8 %i.dx, %i.dv
  store i8 %i.dy, ptr %i.dp, align 1, !tbaa !57
  br label %BuildTls13Nonce.exit.i

.lr.ph53.i.i.i.preheader:                         ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.1, %.lr.ph.i.i.i.2, %.lr.ph.i.i.i.3, %.lr.ph.i.i.i.4, %.lr.ph.i.i.i.5, %.lr.ph.i.i.i.6, %bb.s
  %.252.i.i.i.ph = phi ptr [ %i.bo, %bb.s ], [ %i.bx, %.lr.ph.i.i.i ], [ %i.ce, %.lr.ph.i.i.i.1 ], [ %i.cl, %.lr.ph.i.i.i.2 ], [ %i.cs, %.lr.ph.i.i.i.3 ], [ %i.cz, %.lr.ph.i.i.i.4 ], [ %i.dg, %.lr.ph.i.i.i.5 ], [ %i.dn, %.lr.ph.i.i.i.6 ] ; 2 uses
  %.22451.i.i.i.ph = phi ptr [ %i.bd, %bb.s ], [ %i.bz, %.lr.ph.i.i.i ], [ %i.cg, %.lr.ph.i.i.i.1 ], [ %i.cn, %.lr.ph.i.i.i.2 ], [ %i.cu, %.lr.ph.i.i.i.3 ], [ %i.db, %.lr.ph.i.i.i.4 ], [ %i.di, %.lr.ph.i.i.i.5 ], [ %i.dp, %.lr.ph.i.i.i.6 ] ; 2 uses
  %.22750.i.i.i.ph = phi i32 [ 8, %bb.s ], [ 7, %.lr.ph.i.i.i ], [ 6, %.lr.ph.i.i.i.1 ], [ 5, %.lr.ph.i.i.i.2 ], [ 4, %.lr.ph.i.i.i.3 ], [ 3, %.lr.ph.i.i.i.4 ], [ 2, %.lr.ph.i.i.i.5 ], [ 1, %.lr.ph.i.i.i.6 ] ; 4 uses
  %i.dz = add nsw i32 %.22750.i.i.i.ph, -1
  %xtraiter = and i32 %.22750.i.i.i.ph, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph53.i.i.i.prol.loopexit, label %.lr.ph53.i.i.i.prol

.lr.ph53.i.i.i.prol:                              ; preds = %.lr.ph53.i.i.i.preheader, %.lr.ph53.i.i.i.prol
  %.252.i.i.i.prol = phi ptr [ %i.ea, %.lr.ph53.i.i.i.prol ], [ %.252.i.i.i.ph, %.lr.ph53.i.i.i.preheader ] ; 2 uses
  %.22451.i.i.i.prol = phi ptr [ %i.ec, %.lr.ph53.i.i.i.prol ], [ %.22451.i.i.i.ph, %.lr.ph53.i.i.i.preheader ] ; 3 uses
  %.22750.i.i.i.prol = phi i32 [ %i.ef, %.lr.ph53.i.i.i.prol ], [ %.22750.i.i.i.ph, %.lr.ph53.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph53.i.i.i.prol ], [ 0, %.lr.ph53.i.i.i.preheader ]
  %i.ea = getelementptr inbounds nuw i8, ptr %.252.i.i.i.prol, i64 1 ; 2 uses
  %i.eb = load i8, ptr %.252.i.i.i.prol, align 1, !tbaa !57
  %i.ec = getelementptr inbounds nuw i8, ptr %.22451.i.i.i.prol, i64 1 ; 2 uses
  %i.ed = load i8, ptr %.22451.i.i.i.prol, align 1, !tbaa !57
  %i.ee = xor i8 %i.ed, %i.eb
  store i8 %i.ee, ptr %.22451.i.i.i.prol, align 1, !tbaa !57
  %i.ef = add nsw i32 %.22750.i.i.i.prol, -1      ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph53.i.i.i.prol.loopexit, label %.lr.ph53.i.i.i.prol, !llvm.loop !130

.lr.ph53.i.i.i.prol.loopexit:                     ; preds = %.lr.ph53.i.i.i.prol, %.lr.ph53.i.i.i.preheader
  %.252.i.i.i.unr = phi ptr [ %.252.i.i.i.ph, %.lr.ph53.i.i.i.preheader ], [ %i.ea, %.lr.ph53.i.i.i.prol ]
  %.22451.i.i.i.unr = phi ptr [ %.22451.i.i.i.ph, %.lr.ph53.i.i.i.preheader ], [ %i.ec, %.lr.ph53.i.i.i.prol ]
  %.22750.i.i.i.unr = phi i32 [ %.22750.i.i.i.ph, %.lr.ph53.i.i.i.preheader ], [ %i.ef, %.lr.ph53.i.i.i.prol ]
  %i.eg = icmp ult i32 %i.dz, 3
  br i1 %i.eg, label %BuildTls13Nonce.exit.i, label %.lr.ph53.i.i.i

.lr.ph53.i.i.i:                                   ; preds = %.lr.ph53.i.i.i.prol.loopexit, %.lr.ph53.i.i.i
  %.252.i.i.i = phi ptr [ %i.ew, %.lr.ph53.i.i.i ], [ %.252.i.i.i.unr, %.lr.ph53.i.i.i.prol.loopexit ] ; 5 uses
  %.22451.i.i.i = phi ptr [ %i.ey, %.lr.ph53.i.i.i ], [ %.22451.i.i.i.unr, %.lr.ph53.i.i.i.prol.loopexit ] ; 6 uses
  %.22750.i.i.i = phi i32 [ %i.fb, %.lr.ph53.i.i.i ], [ %.22750.i.i.i.unr, %.lr.ph53.i.i.i.prol.loopexit ]
  %i.eh = getelementptr inbounds nuw i8, ptr %.252.i.i.i, i64 1
  %i.ei = load i8, ptr %.252.i.i.i, align 1, !tbaa !57
  %i.ej = getelementptr inbounds nuw i8, ptr %.22451.i.i.i, i64 1 ; 2 uses
  %i.ek = load i8, ptr %.22451.i.i.i, align 1, !tbaa !57
  %i.el = xor i8 %i.ek, %i.ei
  store i8 %i.el, ptr %.22451.i.i.i, align 1, !tbaa !57
  %i.em = getelementptr inbounds nuw i8, ptr %.252.i.i.i, i64 2
  %i.en = load i8, ptr %i.eh, align 1, !tbaa !57
  %i.eo = getelementptr inbounds nuw i8, ptr %.22451.i.i.i, i64 2 ; 2 uses
  %i.ep = load i8, ptr %i.ej, align 1, !tbaa !57
  %i.eq = xor i8 %i.ep, %i.en
  store i8 %i.eq, ptr %i.ej, align 1, !tbaa !57
  %i.er = getelementptr inbounds nuw i8, ptr %.252.i.i.i, i64 3
  %i.es = load i8, ptr %i.em, align 1, !tbaa !57
  %i.et = getelementptr inbounds nuw i8, ptr %.22451.i.i.i, i64 3 ; 2 uses
  %i.eu = load i8, ptr %i.eo, align 1, !tbaa !57
  %i.ev = xor i8 %i.eu, %i.es
  store i8 %i.ev, ptr %i.eo, align 1, !tbaa !57
  %i.ew = getelementptr inbounds nuw i8, ptr %.252.i.i.i, i64 4
  %i.ex = load i8, ptr %i.er, align 1, !tbaa !57
  %i.ey = getelementptr inbounds nuw i8, ptr %.22451.i.i.i, i64 4
  %i.ez = load i8, ptr %i.et, align 1, !tbaa !57
  %i.fa = xor i8 %i.ez, %i.ex
  store i8 %i.fa, ptr %i.et, align 1, !tbaa !57
  %i.fb = add nsw i32 %.22750.i.i.i, -4           ; 2 uses
  %.not.i12.i.i.3 = icmp eq i32 %i.fb, 0
  br i1 %.not.i12.i.i.3, label %BuildTls13Nonce.exit.i, label %.lr.ph53.i.i.i, !llvm.loop !131

xorbuf.exit.sink.split.i.i:                       ; preds = %.preheader.i.i.i, %WriteSEQTls13.exit.i.i
  %i.fc = load i64, ptr %i.bo, align 8, !tbaa !54
  %i.fd = load i64, ptr %i.bd, align 8, !tbaa !54
  %i.fe = xor i64 %i.fd, %i.fc
  store i64 %i.fe, ptr %i.bd, align 8, !tbaa !54
  br label %BuildTls13Nonce.exit.i

BuildTls13Nonce.exit.i:                           ; preds = %.lr.ph53.i.i.i.prol.loopexit, %.lr.ph53.i.i.i, %.lr.ph.i.i.i.7, %xorbuf.exit.sink.split.i.i
  store i8 1, ptr %i.aq, align 8, !tbaa !133
  br label %bb.t

bb.t:                                             ; preds = %BuildTls13Nonce.exit.i, %bb.n
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 738
  %i.fg = load i8, ptr %i.ff, align 2, !tbaa !62
  switch i8 %i.fg, label %EncryptTls13.exit.thread [
    i8 7, label %bb.u
    i8 9, label %bb.w
  ]

bb.u:                                             ; preds = %bb.t
  %i.fh = load ptr, ptr %i.ap, align 8, !tbaa !137
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !134
end_hunk_1
begin_hunk_2_@CreateECCEncodedSig
define internal fastcc range(i32 1, 0) i32 @CreateECCEncodedSig(ptr noundef %0, i32 noundef range(i32 0, 65536) %1, i32 noundef range(i32 0, 256) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %union.Digest, align 16             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %trunc = trunc nuw i32 %2 to i8
  switch i8 %trunc, label %.thread [
    i8 4, label %bb.b
    i8 5, label %bb.f
    i8 6, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = call i32 @wc_InitSha256(ptr noundef nonnull %3) #11 ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.c = call i32 @wc_Sha256Update(ptr noundef nonnull %3, ptr noundef %0, i32 noundef %1) #11 ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = call i32 @wc_Sha256Final(ptr noundef nonnull %3, ptr noundef %0) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ %i.e, %bb.d ], [ %i.c, %bb.c ]
  call void @wc_Sha256Free(ptr noundef nonnull %3) #11
  br label %bb.n

bb.f:                                             ; preds = %bb.a
  %i.f = call i32 @wc_InitSha384(ptr noundef nonnull %3) #11 ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.h = call i32 @wc_Sha384Update(ptr noundef nonnull %3, ptr noundef %0, i32 noundef %1) #11 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.j = call i32 @wc_Sha384Final(ptr noundef nonnull %3, ptr noundef %0) #11
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.2 = phi i32 [ %i.j, %bb.h ], [ %i.h, %bb.g ]
  call void @wc_Sha384Free(ptr noundef nonnull %3) #11
  br label %bb.n

bb.j:                                             ; preds = %bb.a
  %i.k = call i32 @wc_InitSha512(ptr noundef nonnull %3) #11 ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.m = call i32 @wc_Sha512Update(ptr noundef nonnull %3, ptr noundef %0, i32 noundef %1) #11 ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.o = call i32 @wc_Sha512Final(ptr noundef nonnull %3, ptr noundef %0) #11
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.4 = phi i32 [ %i.o, %bb.l ], [ %i.m, %bb.k ]
  call void @wc_Sha512Free(ptr noundef nonnull %3) #11
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.i, %bb.e
  %.019 = phi i32 [ 32, %bb.e ], [ 48, %bb.i ], [ 64, %bb.m ]
  %.6 = phi i32 [ %.0, %bb.e ], [ %.2, %bb.i ], [ %.4, %bb.m ]
  %.6.fr = freeze i32 %.6                         ; 2 uses
  %.not = icmp eq i32 %.6.fr, 0
  %spec.select = select i1 %.not, i32 %.019, i32 %.6.fr
  br label %.thread

.thread:                                          ; preds = %bb.n, %bb.a, %bb.b, %bb.f, %bb.j
  %i.p = phi i32 [ %i.k, %bb.j ], [ %spec.select, %bb.n ], [ -173, %bb.a ], [ %i.a, %bb.b ], [ %i.f, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret i32 %i.p
}

declare i32 @RsaVerify(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @EccVerify(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @FreeKey(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @FreeKeyExchange(ptr noundef) local_unnamed_addr #2

declare i32 @ConvertHashPss(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_RsaPSS_CheckPadding(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wolfssl_local_GetMaxPlaintextSize(ptr noundef) local_unnamed_addr #2

declare void @FreeDer(ptr noundef) local_unnamed_addr #2

declare i32 @DecodePrivateKey(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @EncodeSigAlg(ptr nofree noundef nonnull readonly captures(none) %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #8 {
bb.a:
  switch i8 %2, label %bb.k [
    i8 3, label %bb.b
    i8 8, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1356
  %i.b = load i32, ptr %i.a, align 4, !tbaa !203
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 4 uses
  switch i32 %i.b, label %bb.f [
    i32 2113786833, label %bb.c
    i32 2113786845, label %bb.d
    i32 2113786843, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  store i8 8, ptr %3, align 1, !tbaa !57
  store i8 26, ptr %i.c, align 1, !tbaa !57
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  store i8 8, ptr %3, align 1, !tbaa !57
  store i8 27, ptr %i.c, align 1, !tbaa !57
  br label %bb.k

bb.e:                                             ; preds = %bb.b
  store i8 8, ptr %3, align 1, !tbaa !57
  store i8 28, ptr %i.c, align 1, !tbaa !57
  br label %bb.k

bb.f:                                             ; preds = %bb.b
  store i8 %1, ptr %3, align 1, !tbaa !57
  store i8 3, ptr %i.c, align 1, !tbaa !57
  br label %bb.k

bb.g:                                             ; preds = %bb.a
  store i8 8, ptr %3, align 1, !tbaa !57
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1097
  %i.e = load i8, ptr %i.d, align 1, !tbaa !204
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1174
  %i.g = load i16, ptr %i.f, align 2, !tbaa !205
  %i.h = zext i16 %i.g to i32
  %i.i = zext nneg i8 %1 to i32
  %i.j = shl nuw i32 1, %i.i
  %i.k = and i32 %i.j, %i.h
  %i.l = icmp ne i32 %i.k, 0
  %i.m = add i8 %1, -4
  %i.n = icmp ult i8 %i.m, 3
  %or.cond5 = and i1 %i.n, %i.l
  br i1 %or.cond5, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.o = add nuw nsw i8 %1, 5
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %i.o, ptr %i.p, align 1, !tbaa !57
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %1, ptr %i.q, align 1, !tbaa !57
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.i, %bb.j, %bb.c, %bb.e, %bb.f, %bb.d
  ret void
}

declare i32 @EccSign(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RsaSign(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @VerifyRsaSign(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @TLSX_SupportedCurve_CheckPriority(ptr noundef) local_unnamed_addr #2

declare ptr @TLSX_SignatureAlgorithms_New(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare i32 @TLSX_Push(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @TLSX_SignatureAlgorithms_FreeAll(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { inlinehint norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !56}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS11WOLFSSL_CTX", !9, i64 0}
!11 = !{!"p1 _ZTS6Suites", !9, i64 0}
!12 = !{!"p1 _ZTS6Arrays", !9, i64 0}
!13 = !{!"p1 _ZTS9HS_Hashes", !9, i64 0}
!14 = !{!"p1 _ZTS6WC_RNG", !9, i64 0}
!15 = !{!"p1 _ZTS13WOLFSSL_ASYNC", !9, i64 0}
!16 = !{!"p1 _ZTS7WOLFSSL", !9, i64 0}
!17 = !{!"WOLFSSL_CIPHER", !5, i64 0, !5, i64 1, !16, i64 8}
!18 = !{!"p1 _ZTS3Aes", !9, i64 0}
!19 = !{!"p1 omnipotent char", !9, i64 0}
!20 = !{!"p1 _ZTS6ChaCha", !9, i64 0}
!21 = !{!"Ciphers", !18, i64 0, !19, i64 8, !19, i64 16, !20, i64 24, !5, i64 32, !5, i64 33}
!22 = !{!"", !5, i64 0, !19, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !5, i64 28, !5, i64 29}
!23 = !{!"WOLFSSL_BUFFER_INFO", !19, i64 0, !6, i64 8}
!24 = !{!"p1 _ZTS5DhKey", !9, i64 0}
!25 = !{!"p1 _ZTS9DerBuffer", !9, i64 0}
!26 = !{!"Buffers", !22, i64 0, !22, i64 32, !23, i64 64, !23, i64 80, !23, i64 96, !23, i64 112, !23, i64 128, !6, i64 144, !6, i64 148, !5, i64 152, !5, i64 153, !5, i64 154, !5, i64 155, !23, i64 160, !23, i64 176, !23, i64 192, !23, i64 208, !24, i64 224, !25, i64 232, !25, i64 240, !5, i64 248, !5, i64 249, !5, i64 249, !6, i64 252, !6, i64 256, !25, i64 264, !6, i64 272, !5, i64 280}
!27 = !{!"p1 _ZTS15WOLFSSL_SESSION", !9, i64 0}
!28 = !{!"p1 _ZTS13ClientSession", !9, i64 0}
!29 = !{!"WOLFSSL_ALERT", !6, i64 0, !6, i64 4}
!30 = !{!"WOLFSSL_ALERT_HISTORY", !29, i64 0, !29, i64 8}
!31 = !{!"short", !5, i64 0}
!32 = !{!"RecordLayerHeader", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3}
!33 = !{!"MsgsReceived", !31, i64 0, !31, i64 0, !31, i64 0, !31, i64 0, !31, i64 0, !31, i64 0, !31, i64 0, !31, i64 1, !31, i64 1, !31, i64 1, !31, i64 1, !31, i64 1, !31, i64 1, !31, i64 1, !31, i64 1, !31, i64 2, !31, i64 2, !31, i64 2}
!34 = !{!"ProtocolVersion", !5, i64 0, !5, i64 1}
!35 = !{!"CipherSpecs", !31, i64 0, !31, i64 2, !31, i64 4, !31, i64 6, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !5, i64 12, !5, i64 13, !5, i64 14, !5, i64 15}
!36 = !{!"Keys", !5, i64 0, !5, i64 64, !5, i64 128, !5, i64 160, !5, i64 192, !5, i64 208, !5, i64 224, !5, i64 232, !5, i64 244, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !5, i64 280, !5, i64 281, !5, i64 282, !5, i64 283}
!37 = !{!"long", !5, i64 0}
!38 = !{!"Options", !37, i64 0, !31, i64 8, !31, i64 8, !31, i64 8, !31, i64 8, !31, i64 8, !31, i64 8, !31, i64 9, !31, i64 9, !31, i64 9, !31, i64 9, !31, i64 9, !31, i64 9, !31, i64 9, !31, i64 9, !31, i64 10, !31, i64 10, !31, i64 10, !31, i64 10, !31, i64 10, !31, i64 10, !31, i64 10, !31, i64 10, !31, i64 11, !31, i64 11, !31, i64 11, !31, i64 11, !31, i64 11, !31, i64 11, !31, i64 11, !31, i64 11, !31, i64 12, !31, i64 12, !31, i64 12, !31, i64 12, !31, i64 12, !31, i64 12, !31, i64 12, !31, i64 12, !31, i64 13, !31, i64 13, !31, i64 13, !31, i64 13, !31, i64 13, !31, i64 13, !31, i64 13, !31, i64 13, !31, i64 14, !31, i64 14, !31, i64 14, !31, i64 14, !31, i64 14, !31, i64 14, !31, i64 14, !31, i64 14, !31, i64 15, !31, i64 15, !31, i64 15, !31, i64 15, !31, i64 15, !31, i64 15, !5, i64 16, !5, i64 17, !5, i64 18, !5, i64 19, !5, i64 20, !5, i64 21, !5, i64 22, !5, i64 23, !5, i64 24, !5, i64 25, !5, i64 26, !5, i64 27, !5, i64 28, !5, i64 29, !5, i64 30, !5, i64 31, !5, i64 32, !5, i64 33, !5, i64 34, !5, i64 35, !5, i64 36, !5, i64 37, !5, i64 38, !5, i64 39, !31, i64 40, !31, i64 42, !31, i64 44, !31, i64 46, !31, i64 48, !5, i64 50}
!39 = !{!"p1 _ZTS6RsaKey", !9, i64 0}
!40 = !{!"p1 _ZTS7ecc_key", !9, i64 0}
!41 = !{!"p1 _ZTS8Poly1305", !9, i64 0}
!42 = !{!"OneTimeAuth", !41, i64 0, !5, i64 8}
!43 = !{!"p1 _ZTS4TLSX", !9, i64 0}
!44 = !{!"WOLFSSL", !10, i64 0, !11, i64 8, !11, i64 16, !12, i64 24, !5, i64 32, !5, i64 80, !13, i64 128, !9, i64 136, !9, i64 144, !14, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !15, i64 216, !9, i64 224, !6, i64 232, !17, i64 240, !9, i64 256, !21, i64 264, !21, i64 304, !26, i64 352, !27, i64 640, !28, i64 648, !30, i64 656, !29, i64 672, !6, i64 680, !6, i64 684, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !31, i64 708, !6, i64 712, !5, i64 716, !32, i64 717, !33, i64 722, !34, i64 726, !34, i64 728, !35, i64 730, !36, i64 748, !38, i64 1032, !39, i64 1088, !5, i64 1096, !5, i64 1097, !31, i64 1098, !5, i64 1100, !5, i64 1172, !31, i64 1174, !31, i64 1176, !5, i64 1178, !6, i64 1308, !6, i64 1312, !40, i64 1320, !5, i64 1328, !5, i64 1329, !40, i64 1336, !40, i64 1344, !31, i64 1352, !5, i64 1354, !6, i64 1356, !5, i64 1360, !6, i64 1364, !42, i64 1368, !43, i64 1384, !31, i64 1392, !6, i64 1396}
!45 = !{!44, !13, i64 128}
!46 = !{!44, !9, i64 176}
!47 = !{!44, !6, i64 1364}
!48 = !{!44, !12, i64 24}
!49 = !{!44, !5, i64 740}
!50 = !{!"Arrays", !19, i64 0, !19, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !5, i64 28, !5, i64 60, !5, i64 92, !5, i64 124, !5, i64 125, !5, i64 173, !5, i64 221}
!51 = !{!50, !19, i64 8}
!52 = !{!44, !5, i64 743}
!53 = !{!50, !6, i64 16}
!54 = !{!37, !37, i64 0}
!55 = !{!44, !5, i64 727}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!5, !5, i64 0}
!58 = !{!44, !31, i64 732}
!59 = !{!44, !31, i64 736}
!60 = !{!"llvm.loop.unroll.disable"}
!61 = !{!"llvm.loop.isvectorized", i32 1}
!62 = !{!44, !5, i64 738}
!63 = !{!44, !41, i64 1368}
!64 = !{!44, !5, i64 726}
!65 = !{!32, !5, i64 0}
!66 = !{!32, !5, i64 1}
!67 = !{!32, !5, i64 2}
!68 = !{!44, !11, i64 8}
!69 = !{!44, !10, i64 0}
!70 = !{!"p1 _ZTS14WOLFSSL_METHOD", !9, i64 0}
!71 = !{!"wolfSSL_RefWithMutex", !5, i64 0, !6, i64 40}
!72 = !{!"p1 _ZTS20WOLFSSL_CERT_MANAGER", !9, i64 0}
!73 = !{!"WOLFSSL_CTX", !70, i64 0, !71, i64 8, !6, i64 56, !23, i64 64, !23, i64 80, !25, i64 96, !25, i64 104, !6, i64 112, !25, i64 120, !5, i64 128, !5, i64 129, !5, i64 129, !6, i64 132, !6, i64 136, !72, i64 144, !11, i64 152, !9, i64 160, !5, i64 168, !5, i64 169, !5, i64 169, !5, i64 169, !5, i64 169, !5, i64 169, !5, i64 169, !5, i64 169, !5, i64 170, !5, i64 170, !5, i64 170, !5, i64 170, !5, i64 170, !5, i64 170, !5, i64 170, !5, i64 170, !5, i64 171, !5, i64 171, !5, i64 171, !5, i64 172, !5, i64 173, !5, i64 173, !5, i64 173, !5, i64 173, !5, i64 173, !5, i64 173, !31, i64 173, !31, i64 173, !31, i64 174, !31, i64 176, !31, i64 178, !5, i64 180, !31, i64 182, !37, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !6, i64 224, !6, i64 228, !31, i64 232, !6, i64 236, !5, i64 240, !5, i64 312, !9, i64 320, !9, i64 328, !6, i64 336, !43, i64 344, !5, i64 352}
!74 = !{!73, !11, i64 152}
!75 = !{!"Suites", !31, i64 0, !31, i64 2, !5, i64 4, !5, i64 304, !5, i64 432}
!76 = !{!75, !31, i64 0}
!77 = !{!44, !5, i64 1048}
!78 = !{!44, !27, i64 640}
!79 = !{!"wolfSSL_Ref", !6, i64 0}
!80 = !{!"WOLFSSL_SESSION", !6, i64 0, !6, i64 4, !79, i64 8, !5, i64 12, !5, i64 44, !9, i64 48, !5, i64 56, !6, i64 60, !6, i64 64, !5, i64 68, !5, i64 100, !5, i64 101, !31, i64 150, !34, i64 152, !5, i64 154, !5, i64 155, !31, i64 156, !5, i64 158, !31, i64 178, !5, i64 180}
!81 = !{!80, !5, i64 100}
!82 = !{!44, !5, i64 1068}
!83 = !{!"HandShakeHeader", !5, i64 0, !5, i64 1}
!84 = !{!83, !5, i64 0}
!85 = !{!44, !5, i64 1066}
!86 = !{!44, !14, i64 152}
!87 = !{!44, !5, i64 1062}
!88 = !{!44, !6, i64 400}
!89 = !{!6, !6, i64 0}
!90 = !{!44, !5, i64 1053}
!91 = !{!44, !5, i64 1054}
!92 = !{!44, !5, i64 1055}
!93 = !{!44, !5, i64 1056}
!94 = !{!44, !5, i64 1065}
!95 = !{!44, !5, i64 1061}
!96 = !{!44, !5, i64 1028}
!97 = !{!31, !31, i64 0}
!98 = !{!75, !31, i64 2}
!99 = !{!44, !31, i64 1392}
!100 = !{!44, !43, i64 1384}
!101 = !{!"TLSX", !6, i64 0, !9, i64 8, !6, i64 16, !5, i64 20, !43, i64 24}
!102 = !{!101, !9, i64 8}
!103 = !{!"p1 _ZTS13KeyShareEntry", !9, i64 0}
!104 = !{!"KeyShareEntry", !31, i64 0, !19, i64 8, !6, i64 16, !9, i64 24, !6, i64 32, !19, i64 40, !6, i64 48, !19, i64 56, !6, i64 64, !103, i64 72}
!105 = !{!104, !31, i64 0}
!106 = !{!44, !5, i64 1064}
!107 = !{!44, !5, i64 1063}
!108 = !{!44, !5, i64 1030}
!109 = !{!44, !5, i64 1031}
!110 = !{!44, !6, i64 680}
!111 = !{!44, !25, i64 584}
!112 = !{!"DerBuffer", !19, i64 0, !9, i64 8, !6, i64 16, !6, i64 20, !6, i64 24}
!113 = !{!112, !19, i64 0}
!114 = !{!44, !25, i64 592}
!115 = !{!23, !19, i64 0}
!116 = !{!23, !6, i64 8}
!117 = !{!44, !6, i64 704}
!118 = !{!44, !9, i64 200}
!119 = !{!44, !9, i64 208}
!120 = !{!73, !70, i64 0}
!121 = !{!44, !31, i64 730}
!122 = distinct !{!122, !60}
!123 = distinct !{!123, !56, !61}
!124 = !{!44, !5, i64 336}
!125 = !{!44, !19, i64 320}
!126 = !{!44, !6, i64 1004}
!127 = !{!44, !6, i64 1008}
!128 = !{!44, !18, i64 304}
!129 = !{!44, !20, i64 328}
!130 = distinct !{!130, !60}
!131 = distinct !{!131, !56, !61}
!132 = !{!44, !5, i64 1069}
!133 = !{!44, !5, i64 296}
!134 = !{!44, !19, i64 280}
!135 = !{!44, !6, i64 1012}
!136 = !{!44, !6, i64 1016}
!137 = !{!44, !18, i64 264}
!138 = !{!44, !20, i64 288}
!139 = distinct !{!139, !56}
!140 = !{!80, !5, i64 152}
!141 = !{!80, !5, i64 153}
!142 = !{!"Sch13Args", !19, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!143 = !{!142, !6, i64 8}
!144 = !{!142, !6, i64 16}
!145 = !{!142, !6, i64 12}
!146 = !{!142, !19, i64 0}
!147 = !{!44, !5, i64 729}
!148 = !{!50, !5, i64 124}
!149 = !{!80, !31, i64 178}
!150 = !{!44, !11, i64 16}
!151 = !{!104, !103, i64 72}
!152 = distinct !{!152, !56, !153, !61}
!153 = !{!"llvm.loop.unroll.runtime.disable"}
!154 = distinct !{!154, !56}
!155 = !{!44, !5, i64 1059}
!156 = !{!44, !5, i64 1060}
!157 = !{!"Dcv13Args", !19, i64 0, !6, i64 8, !31, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !19, i64 32, !31, i64 40}
!158 = !{!157, !6, i64 20}
!159 = !{!157, !6, i64 24}
!160 = !{!44, !40, i64 1344}
!161 = !{!44, !39, i64 1088}
!162 = !{!157, !6, i64 16}
!163 = !{!44, !5, i64 1096}
!164 = !{!157, !19, i64 32}
!165 = !{!44, !5, i64 1354}
!166 = !{!157, !31, i64 40}
!167 = !{!157, !6, i64 8}
!168 = !{!157, !19, i64 0}
!169 = !{!157, !31, i64 12}
!170 = !{!50, !6, i64 20}
!171 = !{!50, !5, i64 221}
!172 = !{!50, !19, i64 0}
!173 = !{!50, !6, i64 24}
!174 = distinct !{!174, !56}
!175 = distinct !{!175, !56}
!176 = distinct !{!176, !56}
!177 = !{!112, !6, i64 16}
!178 = !{!44, !6, i64 624}
!179 = !{!44, !25, i64 616}
end_hunk_2
