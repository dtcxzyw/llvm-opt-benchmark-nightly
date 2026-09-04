Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/tls13?download=true
inline.NumInlined: 109
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@DeriveTls13Keys:bb.a
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 730 ; 2 uses
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !122
  %i.dy = zext i16 %i.dx to i32
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 740
  %i.eb = load i8, ptr %i.ea, align 2, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
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
  %i.ef = load i16, ptr %i.dw, align 2, !tbaa !122
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
  store i8 0, ptr %i.h, align 16, !tbaa !130
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 16, !tbaa !131 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.l = tail call ptr @wolfSSL_Malloc(i64 noundef 12) #11 ; 3 uses
  store ptr %i.l, ptr %i.i, align 16, !tbaa !131
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %ForceZero.exit, label %.thread

.thread:                                          ; preds = %bb.b, %bb.c
  %i.n = phi ptr [ %i.l, %bb.c ], [ %i.j, %bb.b ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 992 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 732 ; 2 uses
  %i.q = load i16, ptr %i.p, align 4, !tbaa !58
  %i.r = tail call i16 @llvm.umax.i16(i16 %i.q, i16 12)
  %spec.store.select.i = zext i16 %i.r to i64
  %i.s = add nuw nsw i64 %spec.store.select.i, 4294967288
  %6 = and i64 %i.s, 4294967295                   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %6 ; 28 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.v = load i64, ptr %i.u, align 16
  %i.w = and i64 %i.v, 131072
  %.not.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i, label %bb.d, label %WriteSEQTls13.exit.i

bb.d:                                             ; preds = %.thread
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1004 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !132  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 16, !tbaa !133 ; 3 uses
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 16, !tbaa !133
  %i.ac = icmp eq i32 %i.aa, -1
  br i1 %i.ac, label %bb.e, label %WriteSEQTls13.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ad = add i32 %i.y, 1
  store i32 %i.ad, ptr %i.x, align 4, !tbaa !132
  br label %WriteSEQTls13.exit.i

WriteSEQTls13.exit.i:                             ; preds = %bb.e, %bb.d, %.thread
  %.sroa.0.0.i.i = phi i32 [ 0, %.thread ], [ %i.y, %bb.e ], [ %i.y, %bb.d ] ; 4 uses
  %.sroa.6.0.i.i = phi i32 [ 0, %.thread ], [ -1, %bb.e ], [ %i.aa, %bb.d ] ; 4 uses
  %i.ae = lshr i32 %.sroa.0.0.i.i, 24
  %i.af = trunc nuw i32 %i.ae to i8
  store i8 %i.af, ptr %i.t, align 1, !tbaa !57
  %i.ag = lshr i32 %.sroa.0.0.i.i, 16
  %i.ah = trunc i32 %i.ag to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !57
  %i.aj = lshr i32 %.sroa.0.0.i.i, 8
  %i.ak = trunc i32 %i.aj to i8
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !57
  %i.am = trunc i32 %.sroa.0.0.i.i to i8
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  store i8 %i.am, ptr %i.an, align 1, !tbaa !57
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.ap = lshr i32 %.sroa.6.0.i.i, 24
  %i.aq = trunc nuw i32 %i.ap to i8
  store i8 %i.aq, ptr %i.ao, align 1, !tbaa !57
  %i.ar = lshr i32 %.sroa.6.0.i.i, 16
  %i.as = trunc i32 %i.ar to i8
  %i.at = getelementptr inbounds nuw i8, ptr %i.t, i64 5
  store i8 %i.as, ptr %i.at, align 1, !tbaa !57
  %i.au = lshr i32 %.sroa.6.0.i.i, 8
  %i.av = trunc i32 %i.au to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.t, i64 6
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !57
  %i.ax = trunc i32 %.sroa.6.0.i.i to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.t, i64 7
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !57
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 16 %i.o, i64 %6, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %i.o, i64 %6 ; 20 uses
  %i.ba = ptrtoint ptr %i.t to i64                ; 3 uses
  %i.bb = ptrtoint ptr %i.az to i64               ; 2 uses
  %i.bc = or i64 %i.bb, %i.ba
  %i.bd = and i64 %i.bc, 7
  %or.cond.i.i = icmp eq i64 %i.bd, 0
  br i1 %or.cond.i.i, label %XorWords.exit.thread.i.i, label %bb.f

XorWords.exit.thread.i.i:                         ; preds = %WriteSEQTls13.exit.i
  %i.be = load i64, ptr %i.az, align 8, !tbaa !54
  %i.bf = load i64, ptr %i.t, align 8, !tbaa !54
  %i.bg = xor i64 %i.bf, %i.be
  store i64 %i.bg, ptr %i.t, align 8, !tbaa !54
  br label %BuildTls13Nonce.exit

bb.f:                                             ; preds = %WriteSEQTls13.exit.i
  %i.bh = xor i64 %i.bb, %i.ba
  %i.bi = and i64 %i.bh, 7
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %.preheader.i.i, label %.lr.ph53.i.i.preheader

.preheader.i.i:                                   ; preds = %bb.f
  %i.bk = and i64 %i.ba, 7
  %.not55.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not55.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

._crit_edge.thread.i.i:                           ; preds = %.preheader.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bm = ptrtoaddr ptr %i.bl to i64              ; 2 uses
  %.0.lcssa68.i.i85 = ptrtoaddr ptr %i.az to i64  ; 4 uses
  %i.bn = add nuw i64 %.0.lcssa68.i.i85, 8
  %i.bo = tail call i64 @llvm.umax.i64(i64 %i.bm, i64 %i.bn)
  %i.bp = xor i64 %.0.lcssa68.i.i85, -1
  %i.bq = add i64 %i.bo, %i.bp                    ; 2 uses
  %i.br = lshr i64 %i.bq, 3
  %i.bs = add nuw nsw i64 %i.br, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bq, 136
  br i1 %min.iters.check, label %.lr.ph.i30.i.i.preheader, label %vector.memcheck

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.az, i64 1 ; 2 uses
  %i.bu = load i8, ptr %i.az, align 1, !tbaa !57
  %i.bv = getelementptr inbounds nuw i8, ptr %i.t, i64 1 ; 4 uses
  %i.bw = load i8, ptr %i.t, align 1, !tbaa !57
  %i.bx = xor i8 %i.bw, %i.bu
  store i8 %i.bx, ptr %i.t, align 1, !tbaa !57
  %i.by = ptrtoint ptr %i.bv to i64
  %i.bz = and i64 %i.by, 7
  %.not = icmp eq i64 %i.bz, 0
  br i1 %.not, label %XorWords.exit.i.i, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %.lr.ph.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.az, i64 2 ; 2 uses
  %i.cb = load i8, ptr %i.bt, align 1, !tbaa !57
  %i.cc = getelementptr inbounds nuw i8, ptr %i.t, i64 2 ; 4 uses
  %i.cd = load i8, ptr %i.bv, align 1, !tbaa !57
  %i.ce = xor i8 %i.cd, %i.cb
  store i8 %i.ce, ptr %i.bv, align 1, !tbaa !57
  %i.cf = ptrtoint ptr %i.cc to i64
  %i.cg = and i64 %i.cf, 7
  %.not122 = icmp eq i64 %i.cg, 0
  br i1 %.not122, label %XorWords.exit.i.i, label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %.lr.ph.i.i.1
  %i.ch = getelementptr inbounds nuw i8, ptr %i.az, i64 3 ; 2 uses
  %i.ci = load i8, ptr %i.ca, align 1, !tbaa !57
  %i.cj = getelementptr inbounds nuw i8, ptr %i.t, i64 3 ; 4 uses
  %i.ck = load i8, ptr %i.cc, align 1, !tbaa !57
  %i.cl = xor i8 %i.ck, %i.ci
  store i8 %i.cl, ptr %i.cc, align 1, !tbaa !57
  %i.cm = ptrtoint ptr %i.cj to i64
  %i.cn = and i64 %i.cm, 7
  %.not123 = icmp eq i64 %i.cn, 0
  br i1 %.not123, label %XorWords.exit.i.i, label %.lr.ph.i.i.3

.lr.ph.i.i.3:                                     ; preds = %.lr.ph.i.i.2
  %i.co = getelementptr inbounds nuw i8, ptr %i.az, i64 4 ; 2 uses
  %i.cp = load i8, ptr %i.ch, align 1, !tbaa !57
  %i.cq = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 4 uses
  %i.cr = load i8, ptr %i.cj, align 1, !tbaa !57
  %i.cs = xor i8 %i.cr, %i.cp
  store i8 %i.cs, ptr %i.cj, align 1, !tbaa !57
  %i.ct = ptrtoint ptr %i.cq to i64
  %i.cu = and i64 %i.ct, 7
  %.not124 = icmp eq i64 %i.cu, 0
  br i1 %.not124, label %XorWords.exit.i.i, label %.lr.ph.i.i.4

.lr.ph.i.i.4:                                     ; preds = %.lr.ph.i.i.3
  %i.cv = getelementptr inbounds nuw i8, ptr %i.az, i64 5 ; 2 uses
  %i.cw = load i8, ptr %i.co, align 1, !tbaa !57
  %i.cx = getelementptr inbounds nuw i8, ptr %i.t, i64 5 ; 4 uses
  %i.cy = load i8, ptr %i.cq, align 1, !tbaa !57
  %i.cz = xor i8 %i.cy, %i.cw
  store i8 %i.cz, ptr %i.cq, align 1, !tbaa !57
  %i.da = ptrtoint ptr %i.cx to i64
  %i.db = and i64 %i.da, 7
  %.not125 = icmp eq i64 %i.db, 0
  br i1 %.not125, label %XorWords.exit.i.i, label %.lr.ph.i.i.5

.lr.ph.i.i.5:                                     ; preds = %.lr.ph.i.i.4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.az, i64 6 ; 2 uses
  %i.dd = load i8, ptr %i.cv, align 1, !tbaa !57
  %i.de = getelementptr inbounds nuw i8, ptr %i.t, i64 6 ; 4 uses
  %i.df = load i8, ptr %i.cx, align 1, !tbaa !57
  %i.dg = xor i8 %i.df, %i.dd
  store i8 %i.dg, ptr %i.cx, align 1, !tbaa !57
  %i.dh = ptrtoint ptr %i.de to i64
  %i.di = and i64 %i.dh, 7
  %.not126 = icmp eq i64 %i.di, 0
  br i1 %.not126, label %XorWords.exit.i.i, label %.lr.ph.i.i.6

.lr.ph.i.i.6:                                     ; preds = %.lr.ph.i.i.5
  %i.dj = getelementptr inbounds nuw i8, ptr %i.az, i64 7 ; 2 uses
  %i.dk = load i8, ptr %i.dc, align 1, !tbaa !57
  %i.dl = getelementptr inbounds nuw i8, ptr %i.t, i64 7 ; 4 uses
  %i.dm = load i8, ptr %i.de, align 1, !tbaa !57
  %i.dn = xor i8 %i.dm, %i.dk
  store i8 %i.dn, ptr %i.de, align 1, !tbaa !57
  %i.do = ptrtoint ptr %i.dl to i64
  %i.dp = and i64 %i.do, 7
  %.not127 = icmp eq i64 %i.dp, 0
  br i1 %.not127, label %XorWords.exit.i.i, label %.lr.ph.i.i.7

.lr.ph.i.i.7:                                     ; preds = %.lr.ph.i.i.6
  %i.dq = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.dr = load i8, ptr %i.dj, align 1, !tbaa !57
  %i.ds = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.dt = load i8, ptr %i.dl, align 1, !tbaa !57
  %i.du = xor i8 %i.dt, %i.dr
  store i8 %i.du, ptr %i.dl, align 1, !tbaa !57
  br label %XorWords.exit.i.i

vector.memcheck:                                  ; preds = %._crit_edge.thread.i.i
  %i.dv = add nuw i64 %.0.lcssa68.i.i85, 8
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bm, i64 %i.dv)
  %i.dw = xor i64 %.0.lcssa68.i.i85, -1
  %i.dx = add i64 %umax, %i.dw
  %i.dy = and i64 %i.dx, -8
  %i.dz = add i64 %i.dy, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.t, i64 %i.dz
  %scevgep86 = getelementptr i8, ptr %i.az, i64 %i.dz
  %bound0 = icmp ult ptr %i.t, %scevgep86
  %bound1 = icmp ult ptr %i.az, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i30.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bs, 4611686018427387900     ; 3 uses
  %i.ea = shl i64 %n.vec, 3                       ; 2 uses
  %i.eb = getelementptr i8, ptr %i.t, i64 %i.ea   ; 2 uses
  %i.ec = getelementptr i8, ptr %i.az, i64 %i.ea  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ed = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ed ; 3 uses
  %next.gep87 = getelementptr i8, ptr %i.az, i64 %i.ed ; 2 uses
  %i.ee = getelementptr i8, ptr %next.gep87, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep87, align 8, !tbaa !54, !alias.scope !134
  %wide.load88 = load <2 x i64>, ptr %i.ee, align 8, !tbaa !54, !alias.scope !134
  %i.ef = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load89 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !54, !alias.scope !135, !noalias !134
  %wide.load90 = load <2 x i64>, ptr %i.ef, align 8, !tbaa !54, !alias.scope !135, !noalias !134
  %i.eg = xor <2 x i64> %wide.load89, %wide.load
  %i.eh = xor <2 x i64> %wide.load90, %wide.load88
  store <2 x i64> %i.eg, ptr %next.gep, align 8, !tbaa !54, !alias.scope !135, !noalias !134
  store <2 x i64> %i.eh, ptr %i.ef, align 8, !tbaa !54, !alias.scope !135, !noalias !134
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ei = icmp eq i64 %index.next, %n.vec
  br i1 %i.ei, label %middle.block, label %vector.body, !llvm.loop !126

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bs, %n.vec
  br i1 %cmp.n, label %XorWords.exit.i.i, label %.lr.ph.i30.i.i.preheader

.lr.ph.i30.i.i.preheader:                         ; preds = %vector.memcheck, %._crit_edge.thread.i.i, %middle.block
  %.sroa.037.1.i.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %._crit_edge.thread.i.i ], [ %i.eb, %middle.block ]
  %.ph = phi ptr [ %i.az, %vector.memcheck ], [ %i.az, %._crit_edge.thread.i.i ], [ %i.ec, %middle.block ]
  br label %.lr.ph.i30.i.i

.lr.ph.i30.i.i:                                   ; preds = %.lr.ph.i30.i.i.preheader, %.lr.ph.i30.i.i
  %.sroa.037.1.i.i = phi ptr [ %i.em, %.lr.ph.i30.i.i ], [ %.sroa.037.1.i.i.ph, %.lr.ph.i30.i.i.preheader ] ; 3 uses
  %i.ej = phi ptr [ %i.ek, %.lr.ph.i30.i.i ], [ %.ph, %.lr.ph.i30.i.i.preheader ] ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 3 uses
  %i.el = load i64, ptr %i.ej, align 8, !tbaa !54
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.037.1.i.i, i64 8 ; 2 uses
  %i.en = load i64, ptr %.sroa.037.1.i.i, align 8, !tbaa !54
  %i.eo = xor i64 %i.en, %i.el
  store i64 %i.eo, ptr %.sroa.037.1.i.i, align 8, !tbaa !54
  %i.ep = icmp ult ptr %i.ek, %i.bl
  br i1 %i.ep, label %.lr.ph.i30.i.i, label %XorWords.exit.i.i, !llvm.loop !127

XorWords.exit.i.i:                                ; preds = %.lr.ph.i30.i.i, %.lr.ph.i.i, %.lr.ph.i.i.1, %.lr.ph.i.i.2, %.lr.ph.i.i.3, %.lr.ph.i.i.4, %.lr.ph.i.i.5, %.lr.ph.i.i.6, %.lr.ph.i.i.7, %middle.block
  %.025.lcssa66.i.i = phi i32 [ 0, %.lr.ph.i.i.7 ], [ 8, %middle.block ], [ 7, %.lr.ph.i.i ], [ 6, %.lr.ph.i.i.1 ], [ 5, %.lr.ph.i.i.2 ], [ 4, %.lr.ph.i.i.3 ], [ 3, %.lr.ph.i.i.4 ], [ 2, %.lr.ph.i.i.5 ], [ 1, %.lr.ph.i.i.6 ], [ 8, %.lr.ph.i30.i.i ]
  %.sroa.037.2.i.i = phi ptr [ %i.ds, %.lr.ph.i.i.7 ], [ %i.eb, %middle.block ], [ %i.bv, %.lr.ph.i.i ], [ %i.cc, %.lr.ph.i.i.1 ], [ %i.cj, %.lr.ph.i.i.2 ], [ %i.cq, %.lr.ph.i.i.3 ], [ %i.cx, %.lr.ph.i.i.4 ], [ %i.de, %.lr.ph.i.i.5 ], [ %i.dl, %.lr.ph.i.i.6 ], [ %i.em, %.lr.ph.i30.i.i ]
  %.sroa.0.0.i13.i = phi ptr [ %i.dq, %.lr.ph.i.i.7 ], [ %i.ec, %middle.block ], [ %i.bt, %.lr.ph.i.i ], [ %i.ca, %.lr.ph.i.i.1 ], [ %i.ch, %.lr.ph.i.i.2 ], [ %i.co, %.lr.ph.i.i.3 ], [ %i.cv, %.lr.ph.i.i.4 ], [ %i.dc, %.lr.ph.i.i.5 ], [ %i.dj, %.lr.ph.i.i.6 ], [ %i.ek, %.lr.ph.i30.i.i ]
  %i.eq = and i32 %.025.lcssa66.i.i, 7            ; 2 uses
  %.not49.i.i = icmp eq i32 %i.eq, 0
  br i1 %.not49.i.i, label %BuildTls13Nonce.exit, label %.lr.ph53.i.i.preheader

.lr.ph53.i.i.preheader:                           ; preds = %bb.f, %XorWords.exit.i.i
  %.252.i.i.ph = phi ptr [ %i.az, %bb.f ], [ %.sroa.0.0.i13.i, %XorWords.exit.i.i ] ; 2 uses
  %.22451.i.i.ph = phi ptr [ %i.t, %bb.f ], [ %.sroa.037.2.i.i, %XorWords.exit.i.i ] ; 2 uses
  %.22750.i.i.ph = phi i32 [ 8, %bb.f ], [ %i.eq, %XorWords.exit.i.i ] ; 4 uses
  %xtraiter = and i32 %.22750.i.i.ph, 3           ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph53.i.i.prol.loopexit, label %.lr.ph53.i.i.prol

.lr.ph53.i.i.prol:                                ; preds = %.lr.ph53.i.i.preheader, %.lr.ph53.i.i.prol
  %.252.i.i.prol = phi ptr [ %i.er, %.lr.ph53.i.i.prol ], [ %.252.i.i.ph, %.lr.ph53.i.i.preheader ] ; 2 uses
  %.22451.i.i.prol = phi ptr [ %i.et, %.lr.ph53.i.i.prol ], [ %.22451.i.i.ph, %.lr.ph53.i.i.preheader ] ; 3 uses
  %.22750.i.i.prol = phi i32 [ %i.ew, %.lr.ph53.i.i.prol ], [ %.22750.i.i.ph, %.lr.ph53.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph53.i.i.prol ], [ 0, %.lr.ph53.i.i.preheader ]
  %i.er = getelementptr inbounds nuw i8, ptr %.252.i.i.prol, i64 1 ; 2 uses
  %i.es = load i8, ptr %.252.i.i.prol, align 1, !tbaa !57
  %i.et = getelementptr inbounds nuw i8, ptr %.22451.i.i.prol, i64 1 ; 2 uses
  %i.eu = load i8, ptr %.22451.i.i.prol, align 1, !tbaa !57
  %i.ev = xor i8 %i.eu, %i.es
  store i8 %i.ev, ptr %.22451.i.i.prol, align 1, !tbaa !57
  %i.ew = add nsw i32 %.22750.i.i.prol, -1        ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph53.i.i.prol.loopexit, label %.lr.ph53.i.i.prol, !llvm.loop !128

.lr.ph53.i.i.prol.loopexit:                       ; preds = %.lr.ph53.i.i.prol, %.lr.ph53.i.i.preheader
  %.252.i.i.unr = phi ptr [ %.252.i.i.ph, %.lr.ph53.i.i.preheader ], [ %i.er, %.lr.ph53.i.i.prol ]
  %.22451.i.i.unr = phi ptr [ %.22451.i.i.ph, %.lr.ph53.i.i.preheader ], [ %i.et, %.lr.ph53.i.i.prol ]
  %.22750.i.i.unr = phi i32 [ %.22750.i.i.ph, %.lr.ph53.i.i.preheader ], [ %i.ew, %.lr.ph53.i.i.prol ]
  %i.ex = icmp samesign ult i32 %.22750.i.i.ph, 4
  br i1 %i.ex, label %BuildTls13Nonce.exit, label %.lr.ph53.i.i

.lr.ph53.i.i:                                     ; preds = %.lr.ph53.i.i.prol.loopexit, %.lr.ph53.i.i
  %.252.i.i = phi ptr [ %i.fn, %.lr.ph53.i.i ], [ %.252.i.i.unr, %.lr.ph53.i.i.prol.loopexit ] ; 5 uses
  %.22451.i.i = phi ptr [ %i.fp, %.lr.ph53.i.i ], [ %.22451.i.i.unr, %.lr.ph53.i.i.prol.loopexit ] ; 6 uses
  %.22750.i.i = phi i32 [ %i.fs, %.lr.ph53.i.i ], [ %.22750.i.i.unr, %.lr.ph53.i.i.prol.loopexit ]
  %i.ey = getelementptr inbounds nuw i8, ptr %.252.i.i, i64 1
  %i.ez = load i8, ptr %.252.i.i, align 1, !tbaa !57
  %i.fa = getelementptr inbounds nuw i8, ptr %.22451.i.i, i64 1 ; 2 uses
  %i.fb = load i8, ptr %.22451.i.i, align 1, !tbaa !57
  %i.fc = xor i8 %i.fb, %i.ez
  store i8 %i.fc, ptr %.22451.i.i, align 1, !tbaa !57
  %i.fd = getelementptr inbounds nuw i8, ptr %.252.i.i, i64 2
  %i.fe = load i8, ptr %i.ey, align 1, !tbaa !57
  %i.ff = getelementptr inbounds nuw i8, ptr %.22451.i.i, i64 2 ; 2 uses
  %i.fg = load i8, ptr %i.fa, align 1, !tbaa !57
  %i.fh = xor i8 %i.fg, %i.fe
  store i8 %i.fh, ptr %i.fa, align 1, !tbaa !57
  %i.fi = getelementptr inbounds nuw i8, ptr %.252.i.i, i64 3
  %i.fj = load i8, ptr %i.fd, align 1, !tbaa !57
  %i.fk = getelementptr inbounds nuw i8, ptr %.22451.i.i, i64 3 ; 2 uses
  %i.fl = load i8, ptr %i.ff, align 1, !tbaa !57
  %i.fm = xor i8 %i.fl, %i.fj
  store i8 %i.fm, ptr %i.ff, align 1, !tbaa !57
  %i.fn = getelementptr inbounds nuw i8, ptr %.252.i.i, i64 4
  %i.fo = load i8, ptr %i.fi, align 1, !tbaa !57
  %i.fp = getelementptr inbounds nuw i8, ptr %.22451.i.i, i64 4
  %i.fq = load i8, ptr %i.fk, align 1, !tbaa !57
  %i.fr = xor i8 %i.fq, %i.fo
  store i8 %i.fr, ptr %i.fk, align 1, !tbaa !57
  %i.fs = add nsw i32 %.22750.i.i, -4             ; 2 uses
  %.not.i12.i.3 = icmp eq i32 %i.fs, 0
  br i1 %.not.i12.i.3, label %BuildTls13Nonce.exit, label %.lr.ph53.i.i, !llvm.loop !129

BuildTls13Nonce.exit:                             ; preds = %.lr.ph53.i.i.prol.loopexit, %.lr.ph53.i.i, %XorWords.exit.thread.i.i, %XorWords.exit.i.i
  store i8 1, ptr %i.h, align 16, !tbaa !130
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 738
  %i.fu = load i8, ptr %i.ft, align 2, !tbaa !63
  switch i8 %i.fu, label %ForceZero.exit [
    i8 7, label %bb.g
    i8 9, label %bb.h
  ]

bb.g:                                             ; preds = %BuildTls13Nonce.exit
  %i.fv = load ptr, ptr %i.g, align 16, !tbaa !136
  %i.fw = zext i16 %narrow to i32
  %i.fx = load ptr, ptr %i.i, align 16, !tbaa !131
  %i.fy = zext i16 %narrow to i64
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 %i.fy
  %i.ga = zext i16 %5 to i32
  %i.gb = tail call i32 @wc_AesGcmDecrypt(ptr noundef %i.fv, ptr noundef %1, ptr noundef %2, i32 noundef %i.fw, ptr noundef %i.fx, i32 noundef 12, ptr noundef %i.fz, i32 noundef %i.e, ptr noundef %4, i32 noundef %i.ga) #11
  br label %bb.m

bb.h:                                             ; preds = %BuildTls13Nonce.exit
  %i.gc = load ptr, ptr %i.i, align 16, !tbaa !131 ; 2 uses
  %i.gd = zext i16 %narrow to i64
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 %i.gd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 4 uses
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !137
  %i.gh = tail call i32 @wc_Chacha_SetIV(ptr noundef %i.gg, ptr noundef %i.gc, i32 noundef 0) #11 ; 2 uses
  %.not.i = icmp eq i32 %i.gh, 0
  br i1 %.not.i, label %bb.i, label %ChaCha20Poly1305_Decrypt.exit

bb.i:                                             ; preds = %bb.h
  %i.gi = load ptr, ptr %i.gf, align 8, !tbaa !137
  %i.gj = call i32 @wc_Chacha_Process(ptr noundef %i.gi, ptr noundef nonnull %i.b, ptr noundef nonnull %i.b, i32 noundef 32) #11 ; 2 uses
  %.not31.i = icmp eq i32 %i.gj, 0
  br i1 %.not31.i, label %bb.j, label %ChaCha20Poly1305_Decrypt.exit

bb.j:                                             ; preds = %bb.i
  %i.gk = load ptr, ptr %i.gf, align 8, !tbaa !137
  %i.gl = call i32 @wc_Chacha_SetIV(ptr noundef %i.gk, ptr noundef %i.gc, i32 noundef 1) #11 ; 2 uses
  %.not32.i = icmp eq i32 %i.gl, 0
  br i1 %.not32.i, label %.lr.ph25.preheader.i50.i, label %.lr.ph25.preheader.i.i

.lr.ph25.preheader.i.i:                           ; preds = %bb.j
  fence seq_cst
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 0, i64 32, i1 false), !tbaa !54
  fence seq_cst
  br label %ChaCha20Poly1305_Decrypt.exit

.lr.ph25.preheader.i50.i:                         ; preds = %bb.j
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 1368 ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !64
  %i.go = call i32 @wc_Poly1305SetKey(ptr noundef %i.gn, ptr noundef nonnull %i.b, i32 noundef 32) #11 ; 2 uses
  fence seq_cst
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 0, i64 32, i1 false), !tbaa !54
  fence seq_cst
  %.not33.i = icmp eq i32 %i.go, 0
  br i1 %.not33.i, label %bb.k, label %ChaCha20Poly1305_Decrypt.exit

bb.k:                                             ; preds = %.lr.ph25.preheader.i50.i
  %i.gp = load ptr, ptr %i.gm, align 8, !tbaa !64
  %i.gq = zext i16 %5 to i32
end_hunk_0
begin_hunk_1_@DecryptTls13:bb.a
  %.0.i = phi i32 [ %i.gz, %bb.l ], [ %i.gh, %bb.h ], [ -305, %.lr.ph.i53.preheader.i ], [ %i.gj, %bb.i ], [ %i.go, %.lr.ph25.preheader.i50.i ], [ %i.gs, %bb.k ], [ %i.gl, %.lr.ph25.preheader.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.m

bb.m:                                             ; preds = %ChaCha20Poly1305_Decrypt.exit, %bb.g
  %.0 = phi i32 [ %i.gb, %bb.g ], [ %.0.i, %ChaCha20Poly1305_Decrypt.exit ] ; 3 uses
  store i8 2, ptr %i.h, align 16, !tbaa !130
  %i.ha = load ptr, ptr %i.i, align 16, !tbaa !131 ; 3 uses
  %i.hb = load i16, ptr %i.p, align 4, !tbaa !58  ; 2 uses
  %i.hc = zext i16 %i.hb to i64                   ; 2 uses
  fence seq_cst
  %i.hd = ptrtoint ptr %i.ha to i64
  %i.he = and i64 %i.hd, 7
  %.not19.i = icmp eq i64 %i.he, 0
  br i1 %.not19.i, label %.preheader16.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.m
  %i.hf = icmp eq i16 %i.hb, 0
  br i1 %i.hf, label %ForceZero.exit, label %.lr.ph

.preheader16.i:                                   ; preds = %.lr.ph, %bb.m
  %.013.lcssa.i = phi i64 [ %i.hc, %bb.m ], [ %i.hl, %.lr.ph ] ; 4 uses
  %.012.lcssa.i = phi ptr [ %i.ha, %bb.m ], [ %i.hk, %.lr.ph ] ; 3 uses
  %i.hg = icmp ugt i64 %.013.lcssa.i, 7
  br i1 %i.hg, label %.lr.ph25.preheader.i, label %.preheader.i

.lr.ph25.preheader.i:                             ; preds = %.preheader16.i
  %i.hh = and i64 %.013.lcssa.i, -8               ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.012.lcssa.i, i8 0, i64 %i.hh, i1 false), !tbaa !54
  %scevgep.i = getelementptr i8, ptr %.012.lcssa.i, i64 %i.hh
  %i.hi = and i64 %.013.lcssa.i, 7
  br label %.preheader.i

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.hj = icmp eq i64 %i.hl, 0
  br i1 %i.hj, label %ForceZero.exit, label %.lr.ph, !llvm.loop !0

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.01320.i84 = phi i64 [ %i.hl, %.lr.ph.i ], [ %i.hc, %.lr.ph.i.preheader ]
  %.01221.i83 = phi ptr [ %i.hk, %.lr.ph.i ], [ %i.ha, %.lr.ph.i.preheader ] ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.01221.i83, i64 1 ; 3 uses
  store i8 0, ptr %.01221.i83, align 1, !tbaa !57
  %i.hl = add nsw i64 %.01320.i84, -1             ; 3 uses
  %i.hm = ptrtoint ptr %i.hk to i64
  %i.hn = and i64 %i.hm, 7
  %.not.i45 = icmp eq i64 %i.hn, 0
  br i1 %.not.i45, label %.preheader16.i, label %.lr.ph.i, !llvm.loop !0

.preheader.i:                                     ; preds = %.lr.ph25.preheader.i, %.preheader16.i
  %.114.lcssa.i = phi i64 [ %.013.lcssa.i, %.preheader16.i ], [ %i.hi, %.lr.ph25.preheader.i ] ; 2 uses
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
  store i8 0, ptr %i.c, align 1, !tbaa !145
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
  %.val = load i8, ptr %i.y, align 2, !tbaa !65
  store i8 23, ptr %1, align 1, !tbaa !66
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %.val, ptr %i.z, align 1, !tbaa !67
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 3, ptr %i.aa, align 1, !tbaa !68
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
  store i8 2, ptr %i.c, align 1, !tbaa !145
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
  store i8 4, ptr %i.c, align 1, !tbaa !145
  %i.am = load i16, ptr %i.o, align 8, !tbaa !59  ; 3 uses
  %i.an = zext i16 %i.am to i32
  %i.ao = icmp ugt i16 %i.am, %i.u
  br i1 %i.ao, label %EncryptTls13.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %narrow.i = sub nuw i16 %i.u, %i.am             ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 5 uses
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !146
  switch i8 %i.ar, label %EncryptTls13.exit.thread105 [
    i8 0, label %bb.o
    i8 1, label %bb.t
    i8 2, label %bb.ad
  ]

EncryptTls13.exit.thread105:                      ; preds = %bb.n
  store i8 0, ptr %i.aq, align 8, !tbaa !146
  br label %bb.ae

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !147 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.p, label %.thread.i

bb.p:                                             ; preds = %bb.o
  %i.av = tail call ptr @wolfSSL_Malloc(i64 noundef 12) #11 ; 3 uses
  store ptr %i.av, ptr %i.as, align 8, !tbaa !147
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %EncryptTls13.exit.thread, label %.thread.i

.thread.i:                                        ; preds = %bb.p, %bb.o
  %i.ax = phi ptr [ %i.av, %bb.p ], [ %i.at, %bb.o ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 980 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 732
  %i.ba = load i16, ptr %i.az, align 4, !tbaa !58
  %i.bb = tail call i16 @llvm.umax.i16(i16 %i.ba, i16 12)
  %spec.store.select.i.i = zext i16 %i.bb to i64
  %i.bc = add nuw nsw i64 %spec.store.select.i.i, 4294967288
  %9 = and i64 %i.bc, 4294967295                  ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 %9 ; 28 uses
  %i.be = load i64, ptr %i.v, align 8
  %i.bf = and i64 %i.be, 131072
  %.not.i.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i.i, label %bb.q, label %WriteSEQTls13.exit.i.i

bb.q:                                             ; preds = %.thread.i
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1012 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !148 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !149 ; 3 uses
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.bi, align 8, !tbaa !149
  %i.bl = icmp eq i32 %i.bj, -1
  br i1 %i.bl, label %bb.r, label %WriteSEQTls13.exit.i.i

bb.r:                                             ; preds = %bb.q
  %i.bm = add i32 %i.bh, 1
  store i32 %i.bm, ptr %i.bg, align 4, !tbaa !148
  br label %WriteSEQTls13.exit.i.i

WriteSEQTls13.exit.i.i:                           ; preds = %bb.r, %bb.q, %.thread.i
  %.sroa.0.0.i.i.i = phi i32 [ 0, %.thread.i ], [ %i.bh, %bb.r ], [ %i.bh, %bb.q ] ; 4 uses
  %.sroa.6.0.i.i.i = phi i32 [ 0, %.thread.i ], [ -1, %bb.r ], [ %i.bj, %bb.q ] ; 4 uses
  %i.bn = lshr i32 %.sroa.0.0.i.i.i, 24
  %i.bo = trunc nuw i32 %i.bn to i8
  store i8 %i.bo, ptr %i.bd, align 1, !tbaa !57
  %i.bp = lshr i32 %.sroa.0.0.i.i.i, 16
  %i.bq = trunc i32 %i.bp to i8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !57
  %i.bs = lshr i32 %.sroa.0.0.i.i.i, 8
  %i.bt = trunc i32 %i.bs to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !57
  %i.bv = trunc i32 %.sroa.0.0.i.i.i to i8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bd, i64 3
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !57
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.by = lshr i32 %.sroa.6.0.i.i.i, 24
  %i.bz = trunc nuw i32 %i.by to i8
  store i8 %i.bz, ptr %i.bx, align 1, !tbaa !57
  %i.ca = lshr i32 %.sroa.6.0.i.i.i, 16
  %i.cb = trunc i32 %i.ca to i8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bd, i64 5
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !57
  %i.cd = lshr i32 %.sroa.6.0.i.i.i, 8
  %i.ce = trunc i32 %i.cd to i8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bd, i64 6
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !57
  %i.cg = trunc i32 %.sroa.6.0.i.i.i to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bd, i64 7
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !57
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr nonnull align 4 %i.ay, i64 %9, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ay, i64 %9 ; 20 uses
  %i.cj = ptrtoint ptr %i.bd to i64               ; 3 uses
  %i.ck = ptrtoint ptr %i.ci to i64               ; 2 uses
  %i.cl = or i64 %i.ck, %i.cj
  %i.cm = and i64 %i.cl, 7
  %or.cond.i.i.i = icmp eq i64 %i.cm, 0
  br i1 %or.cond.i.i.i, label %XorWords.exit.thread.i.i.i, label %bb.s

XorWords.exit.thread.i.i.i:                       ; preds = %WriteSEQTls13.exit.i.i
  %i.cn = load i64, ptr %i.ci, align 8, !tbaa !54
  %i.co = load i64, ptr %i.bd, align 8, !tbaa !54
  %i.cp = xor i64 %i.co, %i.cn
  store i64 %i.cp, ptr %i.bd, align 8, !tbaa !54
  br label %BuildTls13Nonce.exit.i

bb.s:                                             ; preds = %WriteSEQTls13.exit.i.i
  %i.cq = xor i64 %i.ck, %i.cj
  %i.cr = and i64 %i.cq, 7
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %.preheader.i.i.i, label %.lr.ph53.i.i.i.preheader

.preheader.i.i.i:                                 ; preds = %bb.s
  %i.ct = and i64 %i.cj, 7
  %.not55.i.i.i = icmp eq i64 %i.ct, 0
  br i1 %.not55.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

._crit_edge.thread.i.i.i:                         ; preds = %.preheader.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  %i.cv = ptrtoaddr ptr %i.cu to i64              ; 2 uses
  %.0.lcssa68.i.i.i167 = ptrtoaddr ptr %i.ci to i64 ; 4 uses
  %i.cw = add nuw i64 %.0.lcssa68.i.i.i167, 8
  %i.cx = tail call i64 @llvm.umax.i64(i64 %i.cv, i64 %i.cw)
  %i.cy = xor i64 %.0.lcssa68.i.i.i167, -1
  %i.cz = add i64 %i.cx, %i.cy                    ; 2 uses
  %i.da = lshr i64 %i.cz, 3
  %i.db = add nuw nsw i64 %i.da, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cz, 136
  br i1 %min.iters.check, label %.lr.ph.i30.i.i.i.preheader, label %vector.memcheck

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ci, i64 1 ; 2 uses
  %i.dd = load i8, ptr %i.ci, align 1, !tbaa !57
  %i.de = getelementptr inbounds nuw i8, ptr %i.bd, i64 1 ; 4 uses
  %i.df = load i8, ptr %i.bd, align 1, !tbaa !57
  %i.dg = xor i8 %i.df, %i.dd
  store i8 %i.dg, ptr %i.bd, align 1, !tbaa !57
  %i.dh = ptrtoint ptr %i.de to i64
  %i.di = and i64 %i.dh, 7
  %.not208 = icmp eq i64 %i.di, 0
  br i1 %.not208, label %XorWords.exit.i.i.i, label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %.lr.ph.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ci, i64 2 ; 2 uses
  %i.dk = load i8, ptr %i.dc, align 1, !tbaa !57
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bd, i64 2 ; 4 uses
  %i.dm = load i8, ptr %i.de, align 1, !tbaa !57
  %i.dn = xor i8 %i.dm, %i.dk
  store i8 %i.dn, ptr %i.de, align 1, !tbaa !57
  %i.do = ptrtoint ptr %i.dl to i64
  %i.dp = and i64 %i.do, 7
  %.not209 = icmp eq i64 %i.dp, 0
  br i1 %.not209, label %XorWords.exit.i.i.i, label %.lr.ph.i.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %.lr.ph.i.i.i.1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ci, i64 3 ; 2 uses
  %i.dr = load i8, ptr %i.dj, align 1, !tbaa !57
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bd, i64 3 ; 4 uses
  %i.dt = load i8, ptr %i.dl, align 1, !tbaa !57
  %i.du = xor i8 %i.dt, %i.dr
  store i8 %i.du, ptr %i.dl, align 1, !tbaa !57
  %i.dv = ptrtoint ptr %i.ds to i64
  %i.dw = and i64 %i.dv, 7
  %.not210 = icmp eq i64 %i.dw, 0
  br i1 %.not210, label %XorWords.exit.i.i.i, label %.lr.ph.i.i.i.3

.lr.ph.i.i.i.3:                                   ; preds = %.lr.ph.i.i.i.2
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ci, i64 4 ; 2 uses
  %i.dy = load i8, ptr %i.dq, align 1, !tbaa !57
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bd, i64 4 ; 4 uses
  %i.ea = load i8, ptr %i.ds, align 1, !tbaa !57
  %i.eb = xor i8 %i.ea, %i.dy
  store i8 %i.eb, ptr %i.ds, align 1, !tbaa !57
  %i.ec = ptrtoint ptr %i.dz to i64
  %i.ed = and i64 %i.ec, 7
  %.not211 = icmp eq i64 %i.ed, 0
  br i1 %.not211, label %XorWords.exit.i.i.i, label %.lr.ph.i.i.i.4

.lr.ph.i.i.i.4:                                   ; preds = %.lr.ph.i.i.i.3
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ci, i64 5 ; 2 uses
  %i.ef = load i8, ptr %i.dx, align 1, !tbaa !57
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bd, i64 5 ; 4 uses
  %i.eh = load i8, ptr %i.dz, align 1, !tbaa !57
  %i.ei = xor i8 %i.eh, %i.ef
  store i8 %i.ei, ptr %i.dz, align 1, !tbaa !57
  %i.ej = ptrtoint ptr %i.eg to i64
  %i.ek = and i64 %i.ej, 7
  %.not212 = icmp eq i64 %i.ek, 0
  br i1 %.not212, label %XorWords.exit.i.i.i, label %.lr.ph.i.i.i.5

.lr.ph.i.i.i.5:                                   ; preds = %.lr.ph.i.i.i.4
  %i.el = getelementptr inbounds nuw i8, ptr %i.ci, i64 6 ; 2 uses
  %i.em = load i8, ptr %i.ee, align 1, !tbaa !57
  %i.en = getelementptr inbounds nuw i8, ptr %i.bd, i64 6 ; 4 uses
  %i.eo = load i8, ptr %i.eg, align 1, !tbaa !57
  %i.ep = xor i8 %i.eo, %i.em
  store i8 %i.ep, ptr %i.eg, align 1, !tbaa !57
  %i.eq = ptrtoint ptr %i.en to i64
  %i.er = and i64 %i.eq, 7
  %.not213 = icmp eq i64 %i.er, 0
  br i1 %.not213, label %XorWords.exit.i.i.i, label %.lr.ph.i.i.i.6

.lr.ph.i.i.i.6:                                   ; preds = %.lr.ph.i.i.i.5
  %i.es = getelementptr inbounds nuw i8, ptr %i.ci, i64 7 ; 2 uses
  %i.et = load i8, ptr %i.el, align 1, !tbaa !57
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bd, i64 7 ; 4 uses
  %i.ev = load i8, ptr %i.en, align 1, !tbaa !57
  %i.ew = xor i8 %i.ev, %i.et
  store i8 %i.ew, ptr %i.en, align 1, !tbaa !57
  %i.ex = ptrtoint ptr %i.eu to i64
  %i.ey = and i64 %i.ex, 7
  %.not214 = icmp eq i64 %i.ey, 0
  br i1 %.not214, label %XorWords.exit.i.i.i, label %.lr.ph.i.i.i.7

.lr.ph.i.i.i.7:                                   ; preds = %.lr.ph.i.i.i.6
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.fa = load i8, ptr %i.es, align 1, !tbaa !57
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.fc = load i8, ptr %i.eu, align 1, !tbaa !57
  %i.fd = xor i8 %i.fc, %i.fa
  store i8 %i.fd, ptr %i.eu, align 1, !tbaa !57
  br label %XorWords.exit.i.i.i

vector.memcheck:                                  ; preds = %._crit_edge.thread.i.i.i
  %i.fe = add nuw i64 %.0.lcssa68.i.i.i167, 8
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cv, i64 %i.fe)
  %i.ff = xor i64 %.0.lcssa68.i.i.i167, -1
  %i.fg = add i64 %umax, %i.ff
  %i.fh = and i64 %i.fg, -8
  %i.fi = add i64 %i.fh, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bd, i64 %i.fi
  %scevgep168 = getelementptr i8, ptr %i.ci, i64 %i.fi
  %bound0 = icmp ult ptr %i.bd, %scevgep168
  %bound1 = icmp ult ptr %i.ci, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i30.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.db, 4611686018427387900     ; 3 uses
  %i.fj = shl i64 %n.vec, 3                       ; 2 uses
  %i.fk = getelementptr i8, ptr %i.bd, i64 %i.fj  ; 2 uses
  %i.fl = getelementptr i8, ptr %i.ci, i64 %i.fj  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fm = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bd, i64 %i.fm ; 3 uses
  %next.gep169 = getelementptr i8, ptr %i.ci, i64 %i.fm ; 2 uses
  %i.fn = getelementptr i8, ptr %next.gep169, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep169, align 8, !tbaa !54, !alias.scope !150
  %wide.load170 = load <2 x i64>, ptr %i.fn, align 8, !tbaa !54, !alias.scope !150
  %i.fo = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load171 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !54, !alias.scope !151, !noalias !150
  %wide.load172 = load <2 x i64>, ptr %i.fo, align 8, !tbaa !54, !alias.scope !151, !noalias !150
  %i.fp = xor <2 x i64> %wide.load171, %wide.load
  %i.fq = xor <2 x i64> %wide.load172, %wide.load170
  store <2 x i64> %i.fp, ptr %next.gep, align 8, !tbaa !54, !alias.scope !151, !noalias !150
  store <2 x i64> %i.fq, ptr %i.fo, align 8, !tbaa !54, !alias.scope !151, !noalias !150
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fr = icmp eq i64 %index.next, %n.vec
  br i1 %i.fr, label %middle.block, label %vector.body, !llvm.loop !141

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.db, %n.vec
  br i1 %cmp.n, label %XorWords.exit.i.i.i, label %.lr.ph.i30.i.i.i.preheader

.lr.ph.i30.i.i.i.preheader:                       ; preds = %vector.memcheck, %._crit_edge.thread.i.i.i, %middle.block
  %.sroa.037.1.i.i.i.ph = phi ptr [ %i.bd, %vector.memcheck ], [ %i.bd, %._crit_edge.thread.i.i.i ], [ %i.fk, %middle.block ]
  %.ph = phi ptr [ %i.ci, %vector.memcheck ], [ %i.ci, %._crit_edge.thread.i.i.i ], [ %i.fl, %middle.block ]
  br label %.lr.ph.i30.i.i.i

.lr.ph.i30.i.i.i:                                 ; preds = %.lr.ph.i30.i.i.i.preheader, %.lr.ph.i30.i.i.i
  %.sroa.037.1.i.i.i = phi ptr [ %i.fv, %.lr.ph.i30.i.i.i ], [ %.sroa.037.1.i.i.i.ph, %.lr.ph.i30.i.i.i.preheader ] ; 3 uses
  %i.fs = phi ptr [ %i.ft, %.lr.ph.i30.i.i.i ], [ %.ph, %.lr.ph.i30.i.i.i.preheader ] ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8 ; 3 uses
  %i.fu = load i64, ptr %i.fs, align 8, !tbaa !54
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.037.1.i.i.i, i64 8 ; 2 uses
  %i.fw = load i64, ptr %.sroa.037.1.i.i.i, align 8, !tbaa !54
  %i.fx = xor i64 %i.fw, %i.fu
  store i64 %i.fx, ptr %.sroa.037.1.i.i.i, align 8, !tbaa !54
  %i.fy = icmp ult ptr %i.ft, %i.cu
  br i1 %i.fy, label %.lr.ph.i30.i.i.i, label %XorWords.exit.i.i.i, !llvm.loop !142

XorWords.exit.i.i.i:                              ; preds = %.lr.ph.i30.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i.i.1, %.lr.ph.i.i.i.2, %.lr.ph.i.i.i.3, %.lr.ph.i.i.i.4, %.lr.ph.i.i.i.5, %.lr.ph.i.i.i.6, %.lr.ph.i.i.i.7, %middle.block
  %.025.lcssa66.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.7 ], [ 8, %middle.block ], [ 7, %.lr.ph.i.i.i ], [ 6, %.lr.ph.i.i.i.1 ], [ 5, %.lr.ph.i.i.i.2 ], [ 4, %.lr.ph.i.i.i.3 ], [ 3, %.lr.ph.i.i.i.4 ], [ 2, %.lr.ph.i.i.i.5 ], [ 1, %.lr.ph.i.i.i.6 ], [ 8, %.lr.ph.i30.i.i.i ]
  %.sroa.037.2.i.i.i = phi ptr [ %i.fb, %.lr.ph.i.i.i.7 ], [ %i.fk, %middle.block ], [ %i.de, %.lr.ph.i.i.i ], [ %i.dl, %.lr.ph.i.i.i.1 ], [ %i.ds, %.lr.ph.i.i.i.2 ], [ %i.dz, %.lr.ph.i.i.i.3 ], [ %i.eg, %.lr.ph.i.i.i.4 ], [ %i.en, %.lr.ph.i.i.i.5 ], [ %i.eu, %.lr.ph.i.i.i.6 ], [ %i.fv, %.lr.ph.i30.i.i.i ]
  %.sroa.0.0.i13.i.i = phi ptr [ %i.ez, %.lr.ph.i.i.i.7 ], [ %i.fl, %middle.block ], [ %i.dc, %.lr.ph.i.i.i ], [ %i.dj, %.lr.ph.i.i.i.1 ], [ %i.dq, %.lr.ph.i.i.i.2 ], [ %i.dx, %.lr.ph.i.i.i.3 ], [ %i.ee, %.lr.ph.i.i.i.4 ], [ %i.el, %.lr.ph.i.i.i.5 ], [ %i.es, %.lr.ph.i.i.i.6 ], [ %i.ft, %.lr.ph.i30.i.i.i ]
  %i.fz = and i32 %.025.lcssa66.i.i.i, 7          ; 2 uses
  %.not49.i.i.i = icmp eq i32 %i.fz, 0
  br i1 %.not49.i.i.i, label %BuildTls13Nonce.exit.i, label %.lr.ph53.i.i.i.preheader

.lr.ph53.i.i.i.preheader:                         ; preds = %bb.s, %XorWords.exit.i.i.i
  %.252.i.i.i.ph = phi ptr [ %i.ci, %bb.s ], [ %.sroa.0.0.i13.i.i, %XorWords.exit.i.i.i ] ; 2 uses
  %.22451.i.i.i.ph = phi ptr [ %i.bd, %bb.s ], [ %.sroa.037.2.i.i.i, %XorWords.exit.i.i.i ] ; 2 uses
  %.22750.i.i.i.ph = phi i32 [ 8, %bb.s ], [ %i.fz, %XorWords.exit.i.i.i ] ; 4 uses
  %xtraiter = and i32 %.22750.i.i.i.ph, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph53.i.i.i.prol.loopexit, label %.lr.ph53.i.i.i.prol

.lr.ph53.i.i.i.prol:                              ; preds = %.lr.ph53.i.i.i.preheader, %.lr.ph53.i.i.i.prol
  %.252.i.i.i.prol = phi ptr [ %i.ga, %.lr.ph53.i.i.i.prol ], [ %.252.i.i.i.ph, %.lr.ph53.i.i.i.preheader ] ; 2 uses
  %.22451.i.i.i.prol = phi ptr [ %i.gc, %.lr.ph53.i.i.i.prol ], [ %.22451.i.i.i.ph, %.lr.ph53.i.i.i.preheader ] ; 3 uses
  %.22750.i.i.i.prol = phi i32 [ %i.gf, %.lr.ph53.i.i.i.prol ], [ %.22750.i.i.i.ph, %.lr.ph53.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph53.i.i.i.prol ], [ 0, %.lr.ph53.i.i.i.preheader ]
  %i.ga = getelementptr inbounds nuw i8, ptr %.252.i.i.i.prol, i64 1 ; 2 uses
  %i.gb = load i8, ptr %.252.i.i.i.prol, align 1, !tbaa !57
  %i.gc = getelementptr inbounds nuw i8, ptr %.22451.i.i.i.prol, i64 1 ; 2 uses
  %i.gd = load i8, ptr %.22451.i.i.i.prol, align 1, !tbaa !57
  %i.ge = xor i8 %i.gd, %i.gb
  store i8 %i.ge, ptr %.22451.i.i.i.prol, align 1, !tbaa !57
  %i.gf = add nsw i32 %.22750.i.i.i.prol, -1      ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph53.i.i.i.prol.loopexit, label %.lr.ph53.i.i.i.prol, !llvm.loop !143

.lr.ph53.i.i.i.prol.loopexit:                     ; preds = %.lr.ph53.i.i.i.prol, %.lr.ph53.i.i.i.preheader
  %.252.i.i.i.unr = phi ptr [ %.252.i.i.i.ph, %.lr.ph53.i.i.i.preheader ], [ %i.ga, %.lr.ph53.i.i.i.prol ]
  %.22451.i.i.i.unr = phi ptr [ %.22451.i.i.i.ph, %.lr.ph53.i.i.i.preheader ], [ %i.gc, %.lr.ph53.i.i.i.prol ]
  %.22750.i.i.i.unr = phi i32 [ %.22750.i.i.i.ph, %.lr.ph53.i.i.i.preheader ], [ %i.gf, %.lr.ph53.i.i.i.prol ]
  %i.gg = icmp samesign ult i32 %.22750.i.i.i.ph, 4
  br i1 %i.gg, label %BuildTls13Nonce.exit.i, label %.lr.ph53.i.i.i

.lr.ph53.i.i.i:                                   ; preds = %.lr.ph53.i.i.i.prol.loopexit, %.lr.ph53.i.i.i
  %.252.i.i.i = phi ptr [ %i.gw, %.lr.ph53.i.i.i ], [ %.252.i.i.i.unr, %.lr.ph53.i.i.i.prol.loopexit ] ; 5 uses
  %.22451.i.i.i = phi ptr [ %i.gy, %.lr.ph53.i.i.i ], [ %.22451.i.i.i.unr, %.lr.ph53.i.i.i.prol.loopexit ] ; 6 uses
  %.22750.i.i.i = phi i32 [ %i.hb, %.lr.ph53.i.i.i ], [ %.22750.i.i.i.unr, %.lr.ph53.i.i.i.prol.loopexit ]
  %i.gh = getelementptr inbounds nuw i8, ptr %.252.i.i.i, i64 1
  %i.gi = load i8, ptr %.252.i.i.i, align 1, !tbaa !57
  %i.gj = getelementptr inbounds nuw i8, ptr %.22451.i.i.i, i64 1 ; 2 uses
  %i.gk = load i8, ptr %.22451.i.i.i, align 1, !tbaa !57
  %i.gl = xor i8 %i.gk, %i.gi
  store i8 %i.gl, ptr %.22451.i.i.i, align 1, !tbaa !57
  %i.gm = getelementptr inbounds nuw i8, ptr %.252.i.i.i, i64 2
  %i.gn = load i8, ptr %i.gh, align 1, !tbaa !57
  %i.go = getelementptr inbounds nuw i8, ptr %.22451.i.i.i, i64 2 ; 2 uses
  %i.gp = load i8, ptr %i.gj, align 1, !tbaa !57
  %i.gq = xor i8 %i.gp, %i.gn
  store i8 %i.gq, ptr %i.gj, align 1, !tbaa !57
  %i.gr = getelementptr inbounds nuw i8, ptr %.252.i.i.i, i64 3
  %i.gs = load i8, ptr %i.gm, align 1, !tbaa !57
  %i.gt = getelementptr inbounds nuw i8, ptr %.22451.i.i.i, i64 3 ; 2 uses
  %i.gu = load i8, ptr %i.go, align 1, !tbaa !57
  %i.gv = xor i8 %i.gu, %i.gs
  store i8 %i.gv, ptr %i.go, align 1, !tbaa !57
  %i.gw = getelementptr inbounds nuw i8, ptr %.252.i.i.i, i64 4
  %i.gx = load i8, ptr %i.gr, align 1, !tbaa !57
  %i.gy = getelementptr inbounds nuw i8, ptr %.22451.i.i.i, i64 4
  %i.gz = load i8, ptr %i.gt, align 1, !tbaa !57
  %i.ha = xor i8 %i.gz, %i.gx
  store i8 %i.ha, ptr %i.gt, align 1, !tbaa !57
  %i.hb = add nsw i32 %.22750.i.i.i, -4           ; 2 uses
  %.not.i12.i.i.3 = icmp eq i32 %i.hb, 0
  br i1 %.not.i12.i.i.3, label %BuildTls13Nonce.exit.i, label %.lr.ph53.i.i.i, !llvm.loop !144

BuildTls13Nonce.exit.i:                           ; preds = %.lr.ph53.i.i.i.prol.loopexit, %.lr.ph53.i.i.i, %XorWords.exit.i.i.i, %XorWords.exit.thread.i.i.i
  store i8 1, ptr %i.aq, align 8, !tbaa !146
  br label %bb.t

bb.t:                                             ; preds = %BuildTls13Nonce.exit.i, %bb.n
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 738
  %i.hd = load i8, ptr %i.hc, align 2, !tbaa !63
  switch i8 %i.hd, label %EncryptTls13.exit.thread [
    i8 7, label %bb.u
    i8 9, label %bb.w
  ]

bb.u:                                             ; preds = %bb.t
  %i.he = load ptr, ptr %i.ap, align 8, !tbaa !152
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !147
  %i.hh = tail call i32 @wc_AesGcmSetExtIV(ptr noundef %i.he, ptr noundef %i.hg, i32 noundef 12) #11 ; 2 uses
  %i.hi = icmp eq i32 %i.hh, 0
  br i1 %i.hi, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.hj = load ptr, ptr %i.ap, align 8, !tbaa !152
  %i.hk = zext i16 %narrow.i to i32
  %i.hl = load ptr, ptr %i.hf, align 8, !tbaa !147
  %i.hm = zext i16 %narrow.i to i64
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.hm
  %i.ho = tail call i32 @wc_AesGcmEncrypt_ex(ptr noundef %i.hj, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ag, i32 noundef %i.hk, ptr noundef %i.hl, i32 noundef 12, ptr noundef nonnull %i.hn, i32 noundef %i.an, ptr noundef nonnull %1, i32 noundef 5) #11
  br label %bb.ac

bb.w:                                             ; preds = %bb.t
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !147 ; 2 uses
  %i.hr = zext i16 %narrow.i to i64
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.hr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 4 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !153
  %i.hv = tail call i32 @wc_Chacha_SetIV(ptr noundef %i.hu, ptr noundef %i.hq, i32 noundef 0) #11 ; 2 uses
  %.not.i.i = icmp eq i32 %i.hv, 0
  br i1 %.not.i.i, label %bb.x, label %ChaCha20Poly1305_Encrypt.exit.i

bb.x:                                             ; preds = %bb.w
  %i.hw = load ptr, ptr %i.ht, align 8, !tbaa !153
  %i.hx = call i32 @wc_Chacha_Process(ptr noundef %i.hw, ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, i32 noundef 32) #11 ; 2 uses
  %.not32.i.i = icmp eq i32 %i.hx, 0
  br i1 %.not32.i.i, label %bb.y, label %ChaCha20Poly1305_Encrypt.exit.i

bb.y:                                             ; preds = %bb.x
  %i.hy = load ptr, ptr %i.ht, align 8, !tbaa !153
  %i.hz = call i32 @wc_Chacha_SetIV(ptr noundef %i.hy, ptr noundef %i.hq, i32 noundef 1) #11 ; 2 uses
  %.not33.i.i = icmp eq i32 %i.hz, 0
  br i1 %.not33.i.i, label %bb.z, label %ChaCha20Poly1305_Encrypt.exit.i

bb.z:                                             ; preds = %bb.y
  %i.ia = load ptr, ptr %i.ht, align 8, !tbaa !153
  %i.ib = zext i16 %narrow.i to i32               ; 2 uses
  %i.ic = call i32 @wc_Chacha_Process(ptr noundef %i.ia, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ag, i32 noundef %i.ib) #11 ; 2 uses
  %.not34.i.i = icmp eq i32 %i.ic, 0
  br i1 %.not34.i.i, label %bb.aa, label %.lr.ph25.preheader.i.i.i

.lr.ph25.preheader.i.i.i:                         ; preds = %bb.z
  fence seq_cst
end_hunk_1
