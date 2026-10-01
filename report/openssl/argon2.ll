Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/argon2?download=true
inline.NumInlined: 176
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 12
begin_hunk_0_@fill_memory_blocks:bb.a
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !49
  %i.ed = tail call i32 @ossl_crypto_thread_join(ptr noundef %i.ec, ptr noundef null) #10
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ef = load i32, ptr %i.a, align 8, !tbaa !32
  %i.eg = trunc nuw i64 %indvars.iv.2.i to i32    ; 2 uses
  %i.eh = sub i32 %i.eg, %i.ef
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ei
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !49
  %i.el = tail call i32 @ossl_crypto_thread_clean(ptr noundef %i.ek) #10
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge130.i
  %.pre-phi135.i = phi i32 [ %.pre134.i, %._crit_edge130.i ], [ %i.eg, %bb.s ] ; 2 uses
  %i.en = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %indvars.iv.2.i ; 6 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store ptr %0, ptr %i.eo, align 8, !tbaa !52
  store i32 %.06995.i, ptr %i.en, align 8
  %.sroa.4.0..sroa_idx.2.i = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  store i32 %.pre-phi135.i, ptr %.sroa.4.0..sroa_idx.2.i, align 4
  %.sroa.5.0..sroa_idx.2.i = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store i8 2, ptr %.sroa.5.0..sroa_idx.2.i, align 8
  %.sroa.62.0..sroa_idx.2.i = getelementptr inbounds nuw i8, ptr %i.en, i64 12
  store i32 0, ptr %.sroa.62.0..sroa_idx.2.i, align 4
  %i.ep = load ptr, ptr %i.as, align 8, !tbaa !14
  %i.eq = tail call ptr @ossl_crypto_thread_start(ptr noundef %i.ep, ptr noundef nonnull @fill_segment_thr, ptr noundef nonnull %i.en) #10 ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.2.i
  store ptr %i.eq, ptr %i.er, align 8, !tbaa !49
  %i.es = icmp eq ptr %i.eq, null
  br i1 %i.es, label %.preheader.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %indvars.iv.next.2.i = add nuw nsw i64 %indvars.iv.2.i, 1 ; 2 uses
  %i.et = load i32, ptr %i.ah, align 4, !tbaa !33 ; 4 uses
  %i.eu = zext i32 %i.et to i64
  %i.ev = icmp samesign ult i64 %indvars.iv.next.2.i, %i.eu
  br i1 %i.ev, label %.lr.ph.2.i9, label %._crit_edge.2.i10, !llvm.loop !67

._crit_edge.2.i10:                                ; preds = %bb.u
  %i.ew = load i32, ptr %i.a, align 8, !tbaa !32
  %i.ex = sub i32 %i.et, %i.ew                    ; 2 uses
  %i.ey = icmp ult i32 %i.ex, %i.et
  br i1 %i.ey, label %.lr.ph92.preheader.2.i, label %._crit_edge93.2.i

.lr.ph92.preheader.2.i:                           ; preds = %._crit_edge.2.i10
  %i.ez = zext i32 %i.ex to i64
  br label %.lr.ph92.2.i

.lr.ph92.2.i:                                     ; preds = %bb.w, %.lr.ph92.preheader.2.i
  %indvars.iv110.2.i = phi i64 [ %i.ez, %.lr.ph92.preheader.2.i ], [ %indvars.iv.next111.2.i, %bb.w ] ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv110.2.i ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !49 ; 2 uses
  %i.fc = tail call i32 @ossl_crypto_thread_join(ptr noundef %i.fb, ptr noundef null) #10
  %i.fd = icmp eq i32 %i.fc, 0
  br i1 %i.fd, label %.thread.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph92.2.i
  %i.fe = tail call i32 @ossl_crypto_thread_clean(ptr noundef %i.fb) #10
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %.thread.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  store ptr null, ptr %i.fa, align 8, !tbaa !49
  %indvars.iv.next111.2.i = add nuw nsw i64 %indvars.iv110.2.i, 1 ; 2 uses
  %i.fg = load i32, ptr %i.ah, align 4, !tbaa !33 ; 2 uses
  %i.fh = zext i32 %i.fg to i64
  %i.fi = icmp samesign ult i64 %indvars.iv.next111.2.i, %i.fh
  br i1 %i.fi, label %.lr.ph92.2.i, label %._crit_edge93.2.i, !llvm.loop !68

._crit_edge93.2.i:                                ; preds = %bb.w, %._crit_edge.2.i10
  %i.fj = phi i32 [ %i.et, %._crit_edge.2.i10 ], [ %i.fg, %bb.w ]
  %.not102.3.i = icmp eq i32 %i.fj, 0
  br i1 %.not102.3.i, label %._crit_edge93.3.i, label %.lr.ph.3.i11

.lr.ph.3.i11:                                     ; preds = %._crit_edge93.2.i, %bb.aa
  %indvars.iv.3.i = phi i64 [ %indvars.iv.next.3.i, %bb.aa ], [ 0, %._crit_edge93.2.i ] ; 8 uses
  %i.fk = load i32, ptr %i.a, align 8, !tbaa !32
  %i.fl = zext i32 %i.fk to i64                   ; 2 uses
  %.not.3.i = icmp samesign ult i64 %indvars.iv.3.i, %i.fl
  br i1 %.not.3.i, label %._crit_edge131.i, label %bb.x

._crit_edge131.i:                                 ; preds = %.lr.ph.3.i11
  %.pre132.i = trunc nuw i64 %indvars.iv.3.i to i32
  br label %bb.z

bb.x:                                             ; preds = %.lr.ph.3.i11
  %i.fm = sub nuw nsw i64 %indvars.iv.3.i, %i.fl
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.fm
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !49
  %i.fp = tail call i32 @ossl_crypto_thread_join(ptr noundef %i.fo, ptr noundef null) #10
  %i.fq = icmp eq i32 %i.fp, 0
  br i1 %i.fq, label %.thread.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fr = load i32, ptr %i.a, align 8, !tbaa !32
  %i.fs = trunc nuw i64 %indvars.iv.3.i to i32    ; 2 uses
  %i.ft = sub i32 %i.fs, %i.fr
  %i.fu = zext i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.fu
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !49
  %i.fx = tail call i32 @ossl_crypto_thread_clean(ptr noundef %i.fw) #10
  %i.fy = icmp eq i32 %i.fx, 0
  br i1 %i.fy, label %.thread.i, label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge131.i
  %.pre-phi133.i = phi i32 [ %.pre132.i, %._crit_edge131.i ], [ %i.fs, %bb.y ] ; 2 uses
  %i.fz = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %indvars.iv.3.i ; 6 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  store ptr %0, ptr %i.ga, align 8, !tbaa !52
  store i32 %.06995.i, ptr %i.fz, align 8
  %.sroa.4.0..sroa_idx.3.i = getelementptr inbounds nuw i8, ptr %i.fz, i64 4
  store i32 %.pre-phi133.i, ptr %.sroa.4.0..sroa_idx.3.i, align 4
  %.sroa.5.0..sroa_idx.3.i = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store i8 3, ptr %.sroa.5.0..sroa_idx.3.i, align 8
  %.sroa.62.0..sroa_idx.3.i = getelementptr inbounds nuw i8, ptr %i.fz, i64 12
  store i32 0, ptr %.sroa.62.0..sroa_idx.3.i, align 4
  %i.gb = load ptr, ptr %i.as, align 8, !tbaa !14
  %i.gc = tail call ptr @ossl_crypto_thread_start(ptr noundef %i.gb, ptr noundef nonnull @fill_segment_thr, ptr noundef nonnull %i.fz) #10 ; 2 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.3.i
  store ptr %i.gc, ptr %i.gd, align 8, !tbaa !49
  %i.ge = icmp eq ptr %i.gc, null
  br i1 %i.ge, label %.preheader.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %indvars.iv.next.3.i = add nuw nsw i64 %indvars.iv.3.i, 1 ; 2 uses
  %i.gf = load i32, ptr %i.ah, align 4, !tbaa !33 ; 4 uses
  %i.gg = zext i32 %i.gf to i64
  %i.gh = icmp samesign ult i64 %indvars.iv.next.3.i, %i.gg
  br i1 %i.gh, label %.lr.ph.3.i11, label %._crit_edge.3.i12, !llvm.loop !67

._crit_edge.3.i12:                                ; preds = %bb.aa
  %i.gi = load i32, ptr %i.a, align 8, !tbaa !32
  %i.gj = sub i32 %i.gf, %i.gi                    ; 2 uses
  %i.gk = icmp ult i32 %i.gj, %i.gf
  br i1 %i.gk, label %.lr.ph92.preheader.3.i, label %._crit_edge93.3.i

.lr.ph92.preheader.3.i:                           ; preds = %._crit_edge.3.i12
  %i.gl = zext i32 %i.gj to i64
  br label %.lr.ph92.3.i

.lr.ph92.3.i:                                     ; preds = %bb.ac, %.lr.ph92.preheader.3.i
  %indvars.iv110.3.i = phi i64 [ %i.gl, %.lr.ph92.preheader.3.i ], [ %indvars.iv.next111.3.i, %bb.ac ] ; 2 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv110.3.i ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !49 ; 2 uses
  %i.go = tail call i32 @ossl_crypto_thread_join(ptr noundef %i.gn, ptr noundef null) #10
  %i.gp = icmp eq i32 %i.go, 0
  br i1 %i.gp, label %.thread.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph92.3.i
  %i.gq = tail call i32 @ossl_crypto_thread_clean(ptr noundef %i.gn) #10
  %i.gr = icmp eq i32 %i.gq, 0
  br i1 %i.gr, label %.thread.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store ptr null, ptr %i.gm, align 8, !tbaa !49
  %indvars.iv.next111.3.i = add nuw nsw i64 %indvars.iv110.3.i, 1 ; 2 uses
  %i.gs = load i32, ptr %i.ah, align 4, !tbaa !33 ; 2 uses
  %i.gt = zext i32 %i.gs to i64
  %i.gu = icmp samesign ult i64 %indvars.iv.next111.3.i, %i.gt
  br i1 %i.gu, label %.lr.ph92.3.i, label %._crit_edge93.3.i, !llvm.loop !68

._crit_edge93.3.i:                                ; preds = %bb.ac, %._crit_edge.3.i12, %._crit_edge93.2.i, %._crit_edge93.1.i, %._crit_edge93.i, %.preheader83.i
  %i.gv = phi i32 [ 0, %._crit_edge93.1.i ], [ %i.gf, %._crit_edge.3.i12 ], [ 0, %._crit_edge93.2.i ], [ 0, %._crit_edge93.i ], [ 0, %.preheader83.i ], [ %i.gs, %bb.ac ]
  %i.gw = add nuw i32 %.06995.i, 1                ; 2 uses
  %i.gx = load i32, ptr %i.aq, align 8, !tbaa !39
  %i.gy = icmp ult i32 %i.gw, %i.gx
  br i1 %i.gy, label %.preheader83.i, label %._crit_edge96.i, !llvm.loop !69

._crit_edge96.i:                                  ; preds = %._crit_edge93.3.i, %.preheader84.i
  tail call void @CRYPTO_free(ptr noundef %i.an, ptr noundef nonnull @.str, i32 noundef 614) #10
  br label %.sink.split.i

.thread.i:                                        ; preds = %bb.e, %bb.d, %bb.j, %.lr.ph92.i, %bb.m, %bb.l, %bb.p, %.lr.ph92.1.i, %bb.s, %bb.r, %bb.v, %.lr.ph92.2.i, %bb.y, %bb.x, %bb.ab, %.lr.ph92.3.i, %bb.h, %bb.g, %.lr.ph98.i, %bb.c
  br i1 %i.ap, label %bb.ad, label %.thread.thread.i

.thread.thread.i:                                 ; preds = %.thread.i, %.preheader.i
  tail call void @CRYPTO_free(ptr noundef nonnull %i.an, ptr noundef nonnull @.str, i32 noundef 621) #10
  br label %bb.ad

bb.ad:                                            ; preds = %.thread.thread.i, %.thread.i
  br i1 %i.ao, label %fill_mem_blocks_st.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.ad, %._crit_edge96.i
  %.sink.i = phi i32 [ 615, %._crit_edge96.i ], [ 623, %bb.ad ]
  %.070.ph.i = phi i32 [ 1, %._crit_edge96.i ], [ 0, %bb.ad ]
  tail call void @CRYPTO_free(ptr noundef %i.ak, ptr noundef nonnull @.str, i32 noundef %.sink.i) #10
  br label %fill_mem_blocks_st.exit

fill_mem_blocks_st.exit:                          ; preds = %.split.us.i, %.sink.split.i, %bb.ad, %.preheader13.lr.ph.i, %bb.b
  %i.gz = phi i32 [ %.070.ph.i, %.sink.split.i ], [ 1, %bb.b ], [ 1, %.preheader13.lr.ph.i ], [ 0, %bb.ad ], [ 1, %.split.us.i ]
  ret i32 %i.gz
}

; Function Attrs: nounwind uwtable
define internal fastcc void @finalize(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.BLOCK, align 8              ; 13 uses
  %i.a = alloca [1024 x i8], align 16             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.f = load i32, ptr %i.e, align 4, !tbaa !40   ; 5 uses
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [1024 x i8], ptr %i.d, i64 %i.g
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -1024
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %2, ptr noundef nonnull readonly align 8 dereferenceable(1024) %i.i, i64 1024, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.k = load i32, ptr %i.j, align 4, !tbaa !33   ; 2 uses
  %i.l = icmp ugt i32 %i.k, 1
  br i1 %i.l, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.b
  %i.m = add i32 %i.f, -1
  %wide.trip.count = zext i32 %i.k to i64
  %scevgep = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %scevgep26 = getelementptr i8, ptr %i.d, i64 1024
  %3 = shl i32 %i.f, 1
  %4 = add i32 %3, -1
  br label %vector.memcheck

.preheader:                                       ; preds = %xor_block.exit, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.a, ptr noundef nonnull align 8 dereferenceable(1024) %2, i64 1024, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !15
  %i.r = zext i32 %i.q to i64
  call fastcc void @blake2b_long(ptr noundef %i.o, ptr noundef %1, i64 noundef %i.r, ptr noundef %i.a, i64 noundef 1024)
  call void @OPENSSL_cleanse(ptr noundef nonnull %2, i64 noundef 1024) #10
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 1024) #10
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.t = load i32, ptr %i.s, align 4, !tbaa !18
  %.not = icmp eq i32 %i.t, 0
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.w = load i32, ptr %i.v, align 4, !tbaa !36
  %i.x = zext i32 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 10                 ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

vector.memcheck:                                  ; preds = %.lr.ph, %xor_block.exit
  %indvar = phi i32 [ 0, %.lr.ph ], [ %indvar.next, %xor_block.exit ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %xor_block.exit ] ; 2 uses
  %i.z = trunc nuw i64 %indvars.iv to i32
  %i.aa = mul i32 %i.f, %i.z
  %i.ab = add i32 %i.m, %i.aa
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [1024 x i8], ptr %i.d, i64 %i.ac ; 7 uses
  %5 = mul i32 %i.f, %indvar
  %6 = add i32 %4, %5
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 10
  %scevgep27 = getelementptr i8, ptr %scevgep26, i64 %8
  %bound0 = icmp ult ptr %2, %scevgep27
  %bound1 = icmp ult ptr %i.ad, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %vector.memcheck ] ; 4 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %wide.load = load <2 x i64>, ptr %i.ae, align 8, !tbaa !46, !alias.scope !77
  %wide.load28.a = load <2 x i64>, ptr %i.af, align 8, !tbaa !46, !alias.scope !77
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %wide.load29 = load <2 x i64>, ptr %i.ag, align 8, !tbaa !46, !alias.scope !78, !noalias !77
  %wide.load30 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !46, !alias.scope !78, !noalias !77
  %i.ai = xor <2 x i64> %wide.load29, %wide.load
  %i.aj = xor <2 x i64> %wide.load30, %wide.load28.a
  store <2 x i64> %i.ai, ptr %i.ag, align 8, !tbaa !46, !alias.scope !78, !noalias !77
  store <2 x i64> %i.aj, ptr %i.ah, align 8, !tbaa !46, !alias.scope !78, !noalias !77
  %index.next = or disjoint i64 %index, 4         ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %index.next ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load.1 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !46, !alias.scope !77
  %wide.load28.1.a = load <2 x i64>, ptr %i.al, align 8, !tbaa !46, !alias.scope !77
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index.next ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %wide.load29.1 = load <2 x i64>, ptr %i.am, align 8, !tbaa !46, !alias.scope !78, !noalias !77
  %wide.load30.1 = load <2 x i64>, ptr %i.an, align 8, !tbaa !46, !alias.scope !78, !noalias !77
  %i.ao = xor <2 x i64> %wide.load29.1, %wide.load.1
  %i.ap = xor <2 x i64> %wide.load30.1, %wide.load28.1.a
  store <2 x i64> %i.ao, ptr %i.am, align 8, !tbaa !46, !alias.scope !78, !noalias !77
  store <2 x i64> %i.ap, ptr %i.an, align 8, !tbaa !46, !alias.scope !78, !noalias !77
  %index.next.1 = add nuw nsw i64 %index, 8       ; 2 uses
  %i.aq = icmp eq i64 %index.next.1, 128
  br i1 %i.aq, label %xor_block.exit, label %vector.body, !llvm.loop !74

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ 0, %vector.memcheck ] ; 6 uses
  %9 = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i
  %10 = load i64, ptr %9, align 8, !tbaa !46
  %11 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i ; 2 uses
  %12 = load i64, ptr %11, align 8, !tbaa !46
  %13 = xor i64 %12, %10
  store i64 %13, ptr %11, align 8, !tbaa !46
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %14 = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next.i
  %15 = load i64, ptr %14, align 8, !tbaa !46
  %16 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i ; 2 uses
  %17 = load i64, ptr %16, align 8, !tbaa !46
  %18 = xor i64 %17, %15
  store i64 %18, ptr %16, align 8, !tbaa !46
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %19 = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next.i.1
  %20 = load i64, ptr %19, align 8, !tbaa !46
  %21 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i.1 ; 2 uses
  %22 = load i64, ptr %21, align 8, !tbaa !46
  %23 = xor i64 %22, %20
  store i64 %23, ptr %21, align 8, !tbaa !46
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %24 = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next.i.2
  %25 = load i64, ptr %24, align 8, !tbaa !46
  %26 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i.2 ; 2 uses
  %27 = load i64, ptr %26, align 8, !tbaa !46
  %28 = xor i64 %27, %25
  store i64 %28, ptr %26, align 8, !tbaa !46
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, 128
  br i1 %exitcond.not.i.3, label %xor_block.exit, label %scalar.ph, !llvm.loop !75

xor_block.exit:                                   ; preds = %vector.body, %scalar.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond.not, label %.preheader, label %vector.memcheck, !llvm.loop !76

bb.c:                                             ; preds = %.preheader
  call void @CRYPTO_secure_clear_free(ptr noundef %i.u, i64 noundef %i.y, ptr noundef nonnull @.str, i32 noundef 781) #10
  br label %bb.e

bb.d:                                             ; preds = %.preheader
  call void @CRYPTO_clear_free(ptr noundef %i.u, i64 noundef %i.y, ptr noundef nonnull @.str, i32 noundef 784) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret void
}

declare i32 @OSSL_PARAM_get_uint32(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @kdf_argon2_ctx_set_lanes(ptr nofree noundef nonnull writeonly captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i32 %1, 16777215
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1174, ptr noundef nonnull @__func__.kdf_argon2_ctx_set_lanes) #10
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 104, ptr noundef nonnull @.str.27, i32 noundef 16777215) #10
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1180, ptr noundef nonnull @__func__.kdf_argon2_ctx_set_lanes) #10
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 104, ptr noundef nonnull @.str.28, i32 noundef 1) #10
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %1, ptr %i.c, align 4, !tbaa !33
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 1, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @kdf_argon2_ctx_set_m_cost(ptr nofree noundef nonnull writeonly captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %1, 8
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1208, ptr noundef nonnull @__func__.kdf_argon2_ctx_set_m_cost) #10
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 235, ptr noundef nonnull @.str.24, i32 noundef 8) #10
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %1, ptr %i.b, align 8, !tbaa !34
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @kdf_argon2_ctx_set_version(ptr nofree noundef nonnull writeonly captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  switch i32 %1, label %bb.c [
    i32 16, label %bb.b
    i32 19, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %1, ptr %i.a, align 4, !tbaa !17
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1372, ptr noundef nonnull @__func__.kdf_argon2_ctx_set_version) #10
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 125, ptr noundef nonnull @.str.29) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.c ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @set_property_query(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  tail call void @CRYPTO_free(ptr noundef %i.b, ptr noundef nonnull @.str, i32 noundef 1380) #10
  store ptr null, ptr %i.a, align 8, !tbaa !29
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @CRYPTO_strdup(ptr noundef nonnull %1, ptr noundef nonnull @.str, i32 noundef 1383) #10 ; 2 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !29
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !27
  tail call void @EVP_MD_free(ptr noundef %i.f) #10
  store ptr null, ptr %i.e, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28
  tail call void @EVP_MAC_free(ptr noundef %i.h) #10
  store ptr null, ptr %i.g, align 8, !tbaa !28
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

declare i32 @OSSL_PARAM_get_octet_string(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @CRYPTO_strdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare noalias ptr @CRYPTO_secure_calloc(i64 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare noalias ptr @CRYPTO_calloc(i64 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @EVP_MD_CTX_new() local_unnamed_addr #3

declare i32 @EVP_DigestInit_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @EVP_DigestUpdate(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @EVP_DigestFinal_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @EVP_MD_CTX_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @blake2b_long(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 0, 4294967296) %2, ptr noundef nonnull %3, i64 noundef range(i64 72, 1025) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 10 uses
  %i.b = alloca [64 x i8], align 16               ; 6 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %5 = alloca [2 x %struct.ossl_param_st], align 16 ; 5 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %6 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.e = icmp eq ptr %1, null
  %i.f = icmp eq i64 %2, 0
  %or.cond = or i1 %i.e, %i.f
  br i1 %or.cond, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = trunc nuw i64 %2 to i32                  ; 2 uses
  store i32 %i.g, ptr %i.c, align 4
  %i.h = tail call ptr @EVP_MD_CTX_new() #10      ; 6 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i64 @llvm.umin.i64(i64 %2, i64 64)
  store i64 %i.j, ptr %i.d, align 8, !tbaa !46
  call void @OSSL_PARAM_construct_size_t(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %5, ptr noundef nonnull @.str.31, ptr noundef nonnull %i.d) #10
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @OSSL_PARAM_construct_end(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %6) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !55
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  %i.l = call i32 @EVP_DigestInit_ex2(ptr noundef nonnull %i.h, ptr noundef %0, ptr noundef nonnull %5) #10
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.n = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.h, ptr noundef nonnull %i.c, i64 noundef 4) #10
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.p = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.h, ptr noundef nonnull %3, i64 noundef %4) #10
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.r = icmp samesign ult i64 %2, 65             ; 2 uses
  %i.s = select i1 %i.r, ptr %1, ptr %i.a
  %i.t = call i32 @EVP_DigestFinal_ex(ptr noundef nonnull %i.h, ptr noundef %i.s, ptr noundef null) #10
  %i.u = icmp ne i32 %i.t, 1
  %brmerge = or i1 %i.r, %i.u
  br i1 %brmerge, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %1, ptr noundef nonnull align 16 dereferenceable(32) %i.a, i64 32, i1 false)
  %.03 = add i32 %i.g, -32                        ; 3 uses
  %.0354 = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.v = icmp ugt i32 %.03, 64
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %.0356 = phi ptr [ %.035, %bb.h ], [ %.0354, %bb.g ] ; 2 uses
  %.05 = phi i32 [ %.0, %bb.h ], [ %.03, %bb.g ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, ptr noundef nonnull align 16 dereferenceable(64) %i.a, i64 64, i1 false)
  %i.w = call fastcc i32 @blake2b(ptr noundef %0, ptr noundef %i.a, i64 noundef 64, ptr noundef %i.b)
  %.not.not40 = icmp eq i32 %i.w, 0
  br i1 %.not.not40, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.0356, ptr noundef nonnull align 16 dereferenceable(32) %i.a, i64 32, i1 false)
  %.0 = add i32 %.05, -32                         ; 3 uses
  %.035 = getelementptr inbounds nuw i8, ptr %.0356, i64 32 ; 2 uses
  %i.x = icmp ugt i32 %.0, 64
  br i1 %i.x, label %.lr.ph, label %._crit_edge, !llvm.loop !79

._crit_edge:                                      ; preds = %bb.h, %bb.g
  %.0.lcssa = phi i32 [ %.03, %bb.g ], [ %.0, %bb.h ]
  %.035.lcssa = phi ptr [ %.0354, %bb.g ], [ %.035, %bb.h ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, ptr noundef nonnull align 16 dereferenceable(64) %i.a, i64 64, i1 false)
  %i.y = zext nneg i32 %.0.lcssa to i64           ; 2 uses
  %i.z = call fastcc i32 @blake2b(ptr noundef %0, ptr noundef %i.a, i64 noundef %i.y, ptr noundef %i.b)
  %.not.not = icmp eq i32 %i.z, 0
  br i1 %.not.not, label %.critedge, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.035.lcssa, ptr nonnull align 16 %i.a, i64 %i.y, i1 false)
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.f, %bb.e, %bb.d, %bb.c, %bb.i, %._crit_edge
  call void @EVP_MD_CTX_free(ptr noundef nonnull %i.h) #10
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.a, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

declare void @OSSL_PARAM_construct_size_t(ptr dead_on_unwind writable sret(%struct.ossl_param_st) align 8, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @OSSL_PARAM_construct_end(ptr dead_on_unwind writable sret(%struct.ossl_param_st) align 8) local_unnamed_addr #3

declare i32 @EVP_DigestInit_ex2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @blake2b(ptr noundef %0, ptr noundef nonnull %1, i64 noundef range(i64 0, 65) %2, ptr noundef nonnull %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %4 = alloca [2 x %struct.ossl_param_st], align 16 ; 5 uses
  %5 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %2, ptr %i.a, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.c = tail call ptr @EVP_MD_CTX_new() #10      ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %blake2b_md.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @OSSL_PARAM_construct_size_t(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %4, ptr noundef nonnull @.str.31, ptr noundef nonnull %i.a) #10
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @OSSL_PARAM_construct_end(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %5) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !55
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  %i.f = call i32 @EVP_DigestInit_ex2(ptr noundef nonnull %i.c, ptr noundef %0, ptr noundef nonnull %4) #10
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.c, ptr noundef nonnull %3, i64 noundef 64) #10
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = call i32 @EVP_DigestFinal_ex(ptr noundef nonnull %i.c, ptr noundef nonnull %1, ptr noundef null) #10
  %i.k = icmp eq i32 %i.j, 1
  %i.l = zext i1 %i.k to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.m = phi i32 [ 0, %bb.d ], [ 0, %bb.c ], [ %i.l, %bb.e ]
  call void @EVP_MD_CTX_free(ptr noundef nonnull %i.c) #10
  br label %blake2b_md.exit

blake2b_md.exit:                                  ; preds = %bb.b, %bb.f
  %.0.i = phi i32 [ %i.m, %bb.f ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %blake2b_md.exit
  %.0 = phi i32 [ %.0.i, %blake2b_md.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @fill_segment(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #7 {
bb.a:
  %4 = alloca %struct.BLOCK, align 8              ; 9 uses
  %5 = alloca %struct.BLOCK, align 8              ; 14 uses
  %6 = alloca %struct.BLOCK, align 8              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %5, i8 0, i64 1024, i1 false)
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 100        ; 2 uses
  %.val84 = load i32, ptr %i.b, align 4, !tbaa !18 ; 3 uses
  switch i32 %.val84, label %data_indep_addressing.exit.thread [
    i32 1, label %data_indep_addressing.exit.thread92
    i32 2, label %data_indep_addressing.exit
  ]

data_indep_addressing.exit:                       ; preds = %bb.b
  %i.c = icmp ne i32 %1, 0
  %i.d = icmp ugt i8 %3, 1
  %.not107 = or i1 %i.c, %i.d
  br i1 %.not107, label %data_indep_addressing.exit.thread, label %data_indep_addressing.exit.thread92

data_indep_addressing.exit.thread92:              ; preds = %bb.b, %data_indep_addressing.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %6, i8 0, i64 1024, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(976) %i.e, i8 0, i64 976, i1 false)
  %i.f = zext i32 %1 to i64
  store i64 %i.f, ptr %5, align 8, !tbaa !46
  %i.g = zext i32 %2 to i64
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.g, ptr %i.h, align 8, !tbaa !46
  %i.i = zext i8 %3 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.i, ptr %i.j, align 8, !tbaa !46
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.l = load i32, ptr %i.k, align 4, !tbaa !36
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.m, ptr %i.n, align 8, !tbaa !46
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.p = load i32, ptr %i.o, align 8, !tbaa !39
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %i.q, ptr %i.r, align 8, !tbaa !46
  %i.s = zext nneg i32 %.val84 to i64
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %i.s, ptr %i.t, align 8, !tbaa !46
  br label %data_indep_addressing.exit.thread

data_indep_addressing.exit.thread:                ; preds = %bb.b, %data_indep_addressing.exit.thread92, %data_indep_addressing.exit
  %i.u = icmp eq i32 %1, 0                        ; 4 uses
  %i.v = zext i8 %3 to i32                        ; 3 uses
  %i.w = icmp eq i8 %3, 0                         ; 2 uses
  %or.cond = and i1 %i.u, %i.w                    ; 2 uses
  br i1 %or.cond, label %bb.c, label %data_indep_addressing.exit86.thread

bb.c:                                             ; preds = %data_indep_addressing.exit.thread
  %.val84.off = add i32 %.val84, -1
  %switch = icmp ult i32 %.val84.off, 2
  br i1 %switch, label %data_indep_addressing.exit86.thread97, label %data_indep_addressing.exit86.thread

data_indep_addressing.exit86.thread97:            ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 1, ptr %i.x, align 8, !tbaa !46
  call fastcc void @fill_block(ptr noundef nonnull readonly %6, ptr noundef nonnull %5, ptr noundef nonnull %4, i32 noundef 0)
  call fastcc void @fill_block(ptr noundef nonnull readonly %6, ptr noundef nonnull %4, ptr noundef nonnull %4, i32 noundef 0)
  br label %data_indep_addressing.exit86.thread

data_indep_addressing.exit86.thread:              ; preds = %bb.c, %data_indep_addressing.exit86.thread97, %data_indep_addressing.exit.thread
  %.promoted = phi i64 [ 1, %data_indep_addressing.exit86.thread97 ], [ 0, %data_indep_addressing.exit.thread ], [ 0, %bb.c ]
  %.074 = phi i32 [ 2, %data_indep_addressing.exit86.thread97 ], [ 0, %data_indep_addressing.exit.thread ], [ 2, %bb.c ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !37  ; 3 uses
  %i.ab = icmp ult i32 %.074, %i.aa
  br i1 %i.ab, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %data_indep_addressing.exit86.thread
  %i.ac = load i32, ptr %i.y, align 4, !tbaa !40  ; 3 uses
  %i.ad = mul i32 %i.ac, %2
  %i.ae = add i32 %i.ad, %.074
  %i.af = mul i32 %i.aa, %i.v
  %i.ag = add i32 %i.ae, %i.af                    ; 3 uses
  %i.ah = urem i32 %i.ag, %i.ac
  %i.ai = icmp eq i32 %i.ah, 0
  %i.aj = add i32 %i.ac, -1
  %.075.in = select i1 %i.ai, i32 %i.aj, i32 -1
  %.075 = add i32 %.075.in, %i.ag
  %i.ak = icmp ult i8 %3, 2
  %i.al = and i1 %i.u, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ap = zext i32 %2 to i64                      ; 2 uses
  %.not32.i = icmp eq i8 %3, 3
  %i.aq = add nuw nsw i32 %i.v, 1
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 92
  %not. = xor i1 %i.u, true
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %index_alpha.exit
  %i.as = phi i64 [ %.promoted, %.lr.ph ], [ %i.bh, %index_alpha.exit ] ; 3 uses
  %i.at = phi i32 [ %i.aa, %.lr.ph ], [ %i.cz, %index_alpha.exit ] ; 3 uses
  %.0111 = phi i32 [ %i.ag, %.lr.ph ], [ %i.cx, %index_alpha.exit ] ; 4 uses
  %.073109 = phi i32 [ %.074, %.lr.ph ], [ %i.cw, %index_alpha.exit ] ; 7 uses
  %.1108 = phi i32 [ %.075, %.lr.ph ], [ %i.cy, %index_alpha.exit ]
  %i.au = load i32, ptr %i.y, align 4, !tbaa !40  ; 4 uses
  %i.av = urem i32 %.0111, %i.au
  %i.aw = icmp eq i32 %i.av, 1
  %i.ax = add i32 %.0111, -1
  %spec.select = select i1 %i.aw, i32 %i.ax, i32 %.1108 ; 3 uses
  %.val = load i32, ptr %i.b, align 4, !tbaa !18
  switch i32 %.val, label %data_indep_addressing.exit88.thread [
    i32 1, label %data_indep_addressing.exit88.thread102
    i32 2, label %data_indep_addressing.exit88
  ]

data_indep_addressing.exit88:                     ; preds = %bb.d
  br i1 %i.al, label %data_indep_addressing.exit88.thread102, label %data_indep_addressing.exit88.thread

data_indep_addressing.exit88.thread102:           ; preds = %bb.d, %data_indep_addressing.exit88
  %i.ay = and i32 %.073109, 127                   ; 2 uses
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.e, label %bb.f

bb.e:                                             ; preds = %data_indep_addressing.exit88.thread102
  %i.ba = add i64 %i.as, 1                        ; 2 uses
  store i64 %i.ba, ptr %i.am, align 8, !tbaa !46
  call fastcc void @fill_block(ptr noundef nonnull readonly %6, ptr noundef nonnull %5, ptr noundef nonnull %4, i32 noundef 0)
  call fastcc void @fill_block(ptr noundef nonnull readonly %6, ptr noundef nonnull %4, ptr noundef nonnull %4, i32 noundef 0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %data_indep_addressing.exit88.thread102
  %i.bb = phi i64 [ %i.ba, %bb.e ], [ %i.as, %data_indep_addressing.exit88.thread102 ]
  %i.bc = zext nneg i32 %i.ay to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.bc
  br label %bb.g

data_indep_addressing.exit88.thread:              ; preds = %bb.d, %data_indep_addressing.exit88
  %i.be = load ptr, ptr %i.an, align 8, !tbaa !35
  %i.bf = zext i32 %spec.select to i64
  %i.bg = getelementptr inbounds nuw [1024 x i8], ptr %i.be, i64 %i.bf
  br label %bb.g

bb.g:                                             ; preds = %data_indep_addressing.exit88.thread, %bb.f
  %i.bh = phi i64 [ %i.bb, %bb.f ], [ %i.as, %data_indep_addressing.exit88.thread ]
  %.077.in = phi ptr [ %i.bd, %bb.f ], [ %i.bg, %data_indep_addressing.exit88.thread ]
  %.077 = load i64, ptr %.077.in, align 8, !tbaa !46 ; 2 uses
  %i.bi = lshr i64 %.077, 32
  %i.bj = load i32, ptr %i.ao, align 4, !tbaa !33
  %.lhs.trunc = trunc nuw i64 %i.bi to i32
  %i.bk = urem i32 %.lhs.trunc, %i.bj
  %.zext = zext i32 %i.bk to i64
  %spec.select82 = select i1 %or.cond, i64 %i.ap, i64 %.zext ; 2 uses
  %.not = icmp eq i64 %spec.select82, %i.ap       ; 2 uses
  br i1 %i.u, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bl = add i32 %.073109, -1
  br label %index_alpha.exit

bb.j:                                             ; preds = %bb.h
  %i.bm = mul i32 %i.at, %i.v                     ; 2 uses
  br i1 %.not, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bn = add i32 %.073109, -1
  %i.bo = add i32 %i.bn, %i.bm
  br label %index_alpha.exit

bb.l:                                             ; preds = %bb.j
  %i.bp = icmp eq i32 %.073109, 0
  %i.bq = sext i1 %i.bp to i32
  %i.br = add i32 %i.bm, %i.bq
  br label %index_alpha.exit

bb.m:                                             ; preds = %bb.g
  br i1 %.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bs = add i32 %.073109, -1
  %i.bt = add i32 %i.bs, %i.au
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bu = icmp eq i32 %.073109, 0
  %i.bv = sext i1 %i.bu to i32
  %i.bw = add i32 %i.au, %i.bv
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sink.i = phi i32 [ %i.bw, %bb.o ], [ %i.bt, %bb.n ]
  %i.bx = sub i32 %.sink.i, %i.at                 ; 2 uses
  br i1 %.not32.i, label %index_alpha.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.by = mul i32 %i.at, %i.aq
  %i.bz = zext i32 %i.by to i64
  br label %index_alpha.exit

index_alpha.exit:                                 ; preds = %bb.i, %bb.k, %bb.l, %bb.p, %bb.q
  %.1.i = phi i32 [ %i.bl, %bb.i ], [ %i.bo, %bb.k ], [ %i.br, %bb.l ], [ %i.bx, %bb.q ], [ %i.bx, %bb.p ] ; 2 uses
  %.0.i89 = phi i64 [ 0, %bb.i ], [ 0, %bb.k ], [ 0, %bb.l ], [ %i.bz, %bb.q ], [ 0, %bb.p ]
  %i.ca = and i64 %.077, 4294967295               ; 2 uses
  %i.cb = mul nuw i64 %i.ca, %i.ca
  %i.cc = lshr i64 %i.cb, 32
  %i.cd = add i32 %.1.i, -1
  %i.ce = zext i32 %i.cd to i64
  %i.cf = zext i32 %.1.i to i64
  %i.cg = mul nuw i64 %i.cc, %i.cf
  %i.ch = lshr i64 %i.cg, 32
  %i.ci = add nuw nsw i64 %.0.i89, %i.ce
  %i.cj = sub nsw i64 %i.ci, %i.ch
  %i.ck = zext i32 %i.au to i64                   ; 2 uses
  %i.cl = urem i64 %i.cj, %i.ck
  %i.cm = load ptr, ptr %i.an, align 8, !tbaa !35 ; 3 uses
  %i.cn = mul nuw i64 %spec.select82, %i.ck
  %i.co = getelementptr inbounds nuw [1024 x i8], ptr %i.cm, i64 %i.cn
  %i.cp = getelementptr inbounds nuw [1024 x i8], ptr %i.co, i64 %i.cl
  %i.cq = zext i32 %.0111 to i64
  %i.cr = getelementptr inbounds nuw [1024 x i8], ptr %i.cm, i64 %i.cq
  %i.cs = load i32, ptr %i.ar, align 4, !tbaa !17
  %i.ct = icmp ne i32 %i.cs, 16
  %i.cu = zext i32 %spec.select to i64
  %i.cv = getelementptr inbounds nuw [1024 x i8], ptr %i.cm, i64 %i.cu
  %narrow = and i1 %i.ct, %not.
  %. = zext i1 %narrow to i32
  tail call fastcc void @fill_block(ptr noundef %i.cv, ptr noundef %i.cp, ptr noundef %i.cr, i32 noundef %.)
  %i.cw = add nuw i32 %.073109, 1                 ; 2 uses
  %i.cx = add i32 %.0111, 1
  %i.cy = add i32 %spec.select, 1
  %i.cz = load i32, ptr %i.z, align 8, !tbaa !37  ; 2 uses
  %i.da = icmp ult i32 %i.cw, %i.cz
  br i1 %i.da, label %bb.d, label %.loopexit, !llvm.loop !80

.loopexit:                                        ; preds = %index_alpha.exit, %data_indep_addressing.exit86.thread, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @fill_block(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #8 {
vector.ph:
  %4 = alloca %struct.BLOCK, align 8              ; 10 uses
  %5 = alloca %struct.BLOCK, align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %4, ptr noundef nonnull readonly align 8 dereferenceable(1024) %1, i64 1024, i1 false)
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ] ; 4 uses
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %wide.load = load <2 x i64>, ptr %i.a, align 8, !tbaa !46
  %wide.load540 = load <2 x i64>, ptr %i.b, align 8, !tbaa !46
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %wide.load541 = load <2 x i64>, ptr %i.c, align 8, !tbaa !46
  %wide.load542 = load <2 x i64>, ptr %i.d, align 8, !tbaa !46
  %i.e = xor <2 x i64> %wide.load541, %wide.load
  %i.f = xor <2 x i64> %wide.load542, %wide.load540
  store <2 x i64> %i.e, ptr %i.c, align 8, !tbaa !46
  store <2 x i64> %i.f, ptr %i.d, align 8, !tbaa !46
  %index.next = or disjoint i64 %index, 4         ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index.next ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load.1 = load <2 x i64>, ptr %i.g, align 8, !tbaa !46
  %wide.load540.1 = load <2 x i64>, ptr %i.h, align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index.next ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %wide.load541.1 = load <2 x i64>, ptr %i.i, align 8, !tbaa !46
  %wide.load542.1 = load <2 x i64>, ptr %i.j, align 8, !tbaa !46
  %i.k = xor <2 x i64> %wide.load541.1, %wide.load.1
  %i.l = xor <2 x i64> %wide.load542.1, %wide.load540.1
  store <2 x i64> %i.k, ptr %i.i, align 8, !tbaa !46
  store <2 x i64> %i.l, ptr %i.j, align 8, !tbaa !46
  %index.next.1 = add nuw nsw i64 %index, 8       ; 2 uses
  %i.m = icmp eq i64 %index.next.1, 128
  br i1 %i.m, label %xor_block.exit, label %vector.body, !llvm.loop !81

xor_block.exit:                                   ; preds = %vector.body
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %5, ptr noundef nonnull readonly align 8 dereferenceable(1024) %4, i64 1024, i1 false)
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %xor_block.exit526.preheader, label %vector.body544

vector.body544:                                   ; preds = %xor_block.exit, %vector.body544
  %index545 = phi i64 [ %index.next550.1, %vector.body544 ], [ 0, %xor_block.exit ] ; 4 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index545 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load546 = load <2 x i64>, ptr %i.n, align 8, !tbaa !46
  %wide.load547 = load <2 x i64>, ptr %i.o, align 8, !tbaa !46
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index545 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %wide.load548 = load <2 x i64>, ptr %i.p, align 8, !tbaa !46
  %wide.load549 = load <2 x i64>, ptr %i.q, align 8, !tbaa !46
  %i.r = xor <2 x i64> %wide.load548, %wide.load546
  %i.s = xor <2 x i64> %wide.load549, %wide.load547
  store <2 x i64> %i.r, ptr %i.p, align 8, !tbaa !46
  store <2 x i64> %i.s, ptr %i.q, align 8, !tbaa !46
  %index.next550 = or disjoint i64 %index545, 4   ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index.next550 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load546.1 = load <2 x i64>, ptr %i.t, align 8, !tbaa !46
  %wide.load547.1 = load <2 x i64>, ptr %i.u, align 8, !tbaa !46
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index.next550 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %wide.load548.1 = load <2 x i64>, ptr %i.v, align 8, !tbaa !46
  %wide.load549.1 = load <2 x i64>, ptr %i.w, align 8, !tbaa !46
  %i.x = xor <2 x i64> %wide.load548.1, %wide.load546.1
  %i.y = xor <2 x i64> %wide.load549.1, %wide.load547.1
  store <2 x i64> %i.x, ptr %i.v, align 8, !tbaa !46
  store <2 x i64> %i.y, ptr %i.w, align 8, !tbaa !46
  %index.next550.1 = add nuw nsw i64 %index545, 8 ; 2 uses
  %i.z = icmp eq i64 %index.next550.1, 128
  br i1 %i.z, label %xor_block.exit526.preheader, label %vector.body544, !llvm.loop !82

xor_block.exit526.preheader:                      ; preds = %vector.body544, %xor_block.exit
  br label %xor_block.exit526

xor_block.exit526:                                ; preds = %xor_block.exit526.preheader, %xor_block.exit526
  %indvars.iv = phi i64 [ %indvars.iv.next, %xor_block.exit526 ], [ 0, %xor_block.exit526.preheader ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 7
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 %.idx ; 17 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !46 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 32 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !46 ; 3 uses
  %i.ae = add i64 %i.ad, %i.ab
  %i.af = and i64 %i.ad, 4294967295
  %i.ag = shl i64 %i.ab, 1
  %i.ah = and i64 %i.ag, 8589934590
  %i.ai = mul i64 %i.ah, %i.af
  %i.aj = add i64 %i.ae, %i.ai                    ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 96 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !46
  %i.am = xor i64 %i.aj, %i.al                    ; 2 uses
  %i.an = tail call i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 32) ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 64 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !46 ; 2 uses
  %i.aq = add i64 %i.an, %i.ap
  %i.ar = and i64 %i.an, 4294967295
  %i.as = shl i64 %i.ap, 1
  %i.at = and i64 %i.as, 8589934590
  %i.au = mul i64 %i.at, %i.ar
  %i.av = add i64 %i.aq, %i.au                    ; 3 uses
  %i.aw = xor i64 %i.av, %i.ad                    ; 2 uses
  %i.ax = tail call i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 40) ; 3 uses
  %i.ay = add i64 %i.ax, %i.aj
  %i.az = and i64 %i.ax, 4294967295
  %i.ba = shl i64 %i.aj, 1
  %i.bb = and i64 %i.ba, 8589934590
  %i.bc = mul i64 %i.bb, %i.az
  %i.bd = add i64 %i.ay, %i.bc                    ; 3 uses
  %i.be = xor i64 %i.bd, %i.an                    ; 2 uses
  %i.bf = tail call i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 48) ; 3 uses
  %i.bg = add i64 %i.bf, %i.av
  %i.bh = and i64 %i.bf, 4294967295
  %i.bi = shl i64 %i.av, 1
  %i.bj = and i64 %i.bi, 8589934590
  %i.bk = mul i64 %i.bj, %i.bh
  %i.bl = add i64 %i.bg, %i.bk                    ; 3 uses
  %i.bm = xor i64 %i.bl, %i.ax                    ; 2 uses
  %i.bn = tail call i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 1) ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !46 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aa, i64 40 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !46 ; 3 uses
  %i.bs = add i64 %i.br, %i.bp
  %i.bt = and i64 %i.br, 4294967295
  %i.bu = shl i64 %i.bp, 1
  %i.bv = and i64 %i.bu, 8589934590
  %i.bw = mul i64 %i.bv, %i.bt
  %i.bx = add i64 %i.bs, %i.bw                    ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.aa, i64 104 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !46
  %i.ca = xor i64 %i.bx, %i.bz                    ; 2 uses
  %i.cb = tail call i64 @llvm.fshl.i64(i64 %i.ca, i64 %i.ca, i64 32) ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.aa, i64 72 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !46 ; 2 uses
  %i.ce = add i64 %i.cb, %i.cd
  %i.cf = and i64 %i.cb, 4294967295
  %i.cg = shl i64 %i.cd, 1
  %i.ch = and i64 %i.cg, 8589934590
  %i.ci = mul i64 %i.ch, %i.cf
  %i.cj = add i64 %i.ce, %i.ci                    ; 3 uses
  %i.ck = xor i64 %i.cj, %i.br                    ; 2 uses
  %i.cl = tail call i64 @llvm.fshl.i64(i64 %i.ck, i64 %i.ck, i64 40) ; 3 uses
  %i.cm = add i64 %i.cl, %i.bx
  %i.cn = and i64 %i.cl, 4294967295
  %i.co = shl i64 %i.bx, 1
  %i.cp = and i64 %i.co, 8589934590
  %i.cq = mul i64 %i.cp, %i.cn
  %i.cr = add i64 %i.cm, %i.cq                    ; 3 uses
  %i.cs = xor i64 %i.cr, %i.cb                    ; 2 uses
  %i.ct = tail call i64 @llvm.fshl.i64(i64 %i.cs, i64 %i.cs, i64 48) ; 3 uses
  %i.cu = add i64 %i.ct, %i.cj
  %i.cv = and i64 %i.ct, 4294967295
  %i.cw = shl i64 %i.cj, 1
  %i.cx = and i64 %i.cw, 8589934590
  %i.cy = mul i64 %i.cx, %i.cv
  %i.cz = add i64 %i.cu, %i.cy                    ; 3 uses
  %i.da = xor i64 %i.cz, %i.cl                    ; 2 uses
  %i.db = tail call i64 @llvm.fshl.i64(i64 %i.da, i64 %i.da, i64 1) ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !46 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.aa, i64 48 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !46 ; 3 uses
  %i.dg = add i64 %i.df, %i.dd
  %i.dh = and i64 %i.df, 4294967295
  %i.di = shl i64 %i.dd, 1
  %i.dj = and i64 %i.di, 8589934590
  %i.dk = mul i64 %i.dj, %i.dh
  %i.dl = add i64 %i.dg, %i.dk                    ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.aa, i64 112 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !46
  %i.do = xor i64 %i.dl, %i.dn                    ; 2 uses
  %i.dp = tail call i64 @llvm.fshl.i64(i64 %i.do, i64 %i.do, i64 32) ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.aa, i64 80 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !46 ; 2 uses
  %i.ds = add i64 %i.dp, %i.dr
  %i.dt = and i64 %i.dp, 4294967295
  %i.du = shl i64 %i.dr, 1
  %i.dv = and i64 %i.du, 8589934590
  %i.dw = mul i64 %i.dv, %i.dt
  %i.dx = add i64 %i.ds, %i.dw                    ; 3 uses
  %i.dy = xor i64 %i.dx, %i.df                    ; 2 uses
  %i.dz = tail call i64 @llvm.fshl.i64(i64 %i.dy, i64 %i.dy, i64 40) ; 3 uses
  %i.ea = add i64 %i.dz, %i.dl
  %i.eb = and i64 %i.dz, 4294967295
  %i.ec = shl i64 %i.dl, 1
  %i.ed = and i64 %i.ec, 8589934590
  %i.ee = mul i64 %i.ed, %i.eb
  %i.ef = add i64 %i.ea, %i.ee                    ; 3 uses
  %i.eg = xor i64 %i.ef, %i.dp                    ; 2 uses
  %i.eh = tail call i64 @llvm.fshl.i64(i64 %i.eg, i64 %i.eg, i64 48) ; 3 uses
  %i.ei = add i64 %i.eh, %i.dx
  %i.ej = and i64 %i.eh, 4294967295
  %i.ek = shl i64 %i.dx, 1
  %i.el = and i64 %i.ek, 8589934590
  %i.em = mul i64 %i.el, %i.ej
  %i.en = add i64 %i.ei, %i.em                    ; 3 uses
  %i.eo = xor i64 %i.en, %i.dz                    ; 2 uses
  %i.ep = tail call i64 @llvm.fshl.i64(i64 %i.eo, i64 %i.eo, i64 1) ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !46 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.aa, i64 56 ; 2 uses
  %i.et = load i64, ptr %i.es, align 8, !tbaa !46 ; 3 uses
  %i.eu = add i64 %i.et, %i.er
  %i.ev = and i64 %i.et, 4294967295
  %i.ew = shl i64 %i.er, 1
  %i.ex = and i64 %i.ew, 8589934590
  %i.ey = mul i64 %i.ex, %i.ev
  %i.ez = add i64 %i.eu, %i.ey                    ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.aa, i64 120 ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !46
  %i.fc = xor i64 %i.ez, %i.fb                    ; 2 uses
  %i.fd = tail call i64 @llvm.fshl.i64(i64 %i.fc, i64 %i.fc, i64 32) ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.aa, i64 88 ; 2 uses
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !46 ; 2 uses
  %i.fg = add i64 %i.fd, %i.ff
  %i.fh = and i64 %i.fd, 4294967295
  %i.fi = shl i64 %i.ff, 1
  %i.fj = and i64 %i.fi, 8589934590
  %i.fk = mul i64 %i.fj, %i.fh
  %i.fl = add i64 %i.fg, %i.fk                    ; 3 uses
  %i.fm = xor i64 %i.fl, %i.et                    ; 2 uses
  %i.fn = tail call i64 @llvm.fshl.i64(i64 %i.fm, i64 %i.fm, i64 40) ; 3 uses
  %i.fo = add i64 %i.fn, %i.ez
  %i.fp = and i64 %i.fn, 4294967295
  %i.fq = shl i64 %i.ez, 1
  %i.fr = and i64 %i.fq, 8589934590
  %i.fs = mul i64 %i.fr, %i.fp
  %i.ft = add i64 %i.fo, %i.fs                    ; 3 uses
  %i.fu = xor i64 %i.ft, %i.fd                    ; 2 uses
  %i.fv = tail call i64 @llvm.fshl.i64(i64 %i.fu, i64 %i.fu, i64 48) ; 3 uses
  %i.fw = add i64 %i.fv, %i.fl
  %i.fx = and i64 %i.fv, 4294967295
  %i.fy = shl i64 %i.fl, 1
  %i.fz = and i64 %i.fy, 8589934590
  %i.ga = mul i64 %i.fz, %i.fx
  %i.gb = add i64 %i.fw, %i.ga                    ; 3 uses
  %i.gc = xor i64 %i.gb, %i.fn                    ; 2 uses
  %i.gd = tail call i64 @llvm.fshl.i64(i64 %i.gc, i64 %i.gc, i64 1) ; 3 uses
  %i.ge = add i64 %i.db, %i.bd
  %i.gf = and i64 %i.db, 4294967295
  %i.gg = shl i64 %i.bd, 1
  %i.gh = and i64 %i.gg, 8589934590
  %i.gi = mul i64 %i.gh, %i.gf
  %i.gj = add i64 %i.ge, %i.gi                    ; 3 uses
  %i.gk = xor i64 %i.fv, %i.gj                    ; 2 uses
  %i.gl = tail call i64 @llvm.fshl.i64(i64 %i.gk, i64 %i.gk, i64 32) ; 3 uses
  %i.gm = add i64 %i.gl, %i.en
  %i.gn = and i64 %i.gl, 4294967295
  %i.go = shl i64 %i.en, 1
  %i.gp = and i64 %i.go, 8589934590
  %i.gq = mul i64 %i.gp, %i.gn
  %i.gr = add i64 %i.gm, %i.gq                    ; 3 uses
  %i.gs = xor i64 %i.gr, %i.db                    ; 2 uses
  %i.gt = tail call i64 @llvm.fshl.i64(i64 %i.gs, i64 %i.gs, i64 40) ; 3 uses
  %i.gu = add i64 %i.gt, %i.gj
  %i.gv = and i64 %i.gt, 4294967295
  %i.gw = shl i64 %i.gj, 1
  %i.gx = and i64 %i.gw, 8589934590
  %i.gy = mul i64 %i.gx, %i.gv
  %i.gz = add i64 %i.gu, %i.gy                    ; 2 uses
  store i64 %i.gz, ptr %i.aa, align 8, !tbaa !46
  %i.ha = xor i64 %i.gz, %i.gl                    ; 2 uses
  %i.hb = tail call i64 @llvm.fshl.i64(i64 %i.ha, i64 %i.ha, i64 48) ; 3 uses
  store i64 %i.hb, ptr %i.fa, align 8, !tbaa !46
  %i.hc = add i64 %i.hb, %i.gr
  %i.hd = and i64 %i.hb, 4294967295
  %i.he = shl i64 %i.gr, 1
  %i.hf = and i64 %i.he, 8589934590
  %i.hg = mul i64 %i.hf, %i.hd
  %i.hh = add i64 %i.hc, %i.hg                    ; 2 uses
  store i64 %i.hh, ptr %i.dq, align 8, !tbaa !46
  %i.hi = xor i64 %i.hh, %i.gt                    ; 2 uses
  %i.hj = tail call i64 @llvm.fshl.i64(i64 %i.hi, i64 %i.hi, i64 1)
  store i64 %i.hj, ptr %i.bq, align 8, !tbaa !46
  %i.hk = add i64 %i.ep, %i.cr
  %i.hl = and i64 %i.ep, 4294967295
  %i.hm = shl i64 %i.cr, 1
  %i.hn = and i64 %i.hm, 8589934590
  %i.ho = mul i64 %i.hn, %i.hl
  %i.hp = add i64 %i.hk, %i.ho                    ; 3 uses
  %i.hq = xor i64 %i.hp, %i.bf                    ; 2 uses
  %i.hr = tail call i64 @llvm.fshl.i64(i64 %i.hq, i64 %i.hq, i64 32) ; 3 uses
  %i.hs = add i64 %i.gb, %i.hr
  %i.ht = and i64 %i.gb, 4294967295
  %i.hu = shl i64 %i.hr, 1
  %i.hv = and i64 %i.hu, 8589934590
  %i.hw = mul i64 %i.hv, %i.ht
  %i.hx = add i64 %i.hs, %i.hw                    ; 3 uses
  %i.hy = xor i64 %i.hx, %i.ep                    ; 2 uses
  %i.hz = tail call i64 @llvm.fshl.i64(i64 %i.hy, i64 %i.hy, i64 40) ; 3 uses
  %i.ia = add i64 %i.hz, %i.hp
  %i.ib = and i64 %i.hz, 4294967295
  %i.ic = shl i64 %i.hp, 1
  %i.id = and i64 %i.ic, 8589934590
  %i.ie = mul i64 %i.id, %i.ib
  %i.if = add i64 %i.ia, %i.ie                    ; 2 uses
  store i64 %i.if, ptr %i.bo, align 8, !tbaa !46
  %i.ig = xor i64 %i.if, %i.hr                    ; 2 uses
  %i.ih = tail call i64 @llvm.fshl.i64(i64 %i.ig, i64 %i.ig, i64 48) ; 3 uses
  store i64 %i.ih, ptr %i.ak, align 8, !tbaa !46
  %i.ii = add i64 %i.ih, %i.hx
  %i.ij = and i64 %i.ih, 4294967295
  %i.ik = shl i64 %i.hx, 1
  %i.il = and i64 %i.ik, 8589934590
  %i.im = mul i64 %i.il, %i.ij
  %i.in = add i64 %i.ii, %i.im                    ; 2 uses
  store i64 %i.in, ptr %i.fe, align 8, !tbaa !46
  %i.io = xor i64 %i.in, %i.hz                    ; 2 uses
  %i.ip = tail call i64 @llvm.fshl.i64(i64 %i.io, i64 %i.io, i64 1)
  store i64 %i.ip, ptr %i.de, align 8, !tbaa !46
  %i.iq = add i64 %i.gd, %i.ef
  %i.ir = and i64 %i.gd, 4294967295
  %i.is = shl i64 %i.ef, 1
  %i.it = and i64 %i.is, 8589934590
  %i.iu = mul i64 %i.it, %i.ir
  %i.iv = add i64 %i.iq, %i.iu                    ; 3 uses
  %i.iw = xor i64 %i.iv, %i.ct                    ; 2 uses
  %i.ix = tail call i64 @llvm.fshl.i64(i64 %i.iw, i64 %i.iw, i64 32) ; 3 uses
  %i.iy = add i64 %i.ix, %i.bl
  %i.iz = and i64 %i.ix, 4294967295
  %i.ja = shl i64 %i.bl, 1
  %i.jb = and i64 %i.ja, 8589934590
  %i.jc = mul i64 %i.jb, %i.iz
  %i.jd = add i64 %i.iy, %i.jc                    ; 3 uses
  %i.je = xor i64 %i.jd, %i.gd                    ; 2 uses
  %i.jf = tail call i64 @llvm.fshl.i64(i64 %i.je, i64 %i.je, i64 40) ; 3 uses
  %i.jg = add i64 %i.jf, %i.iv
  %i.jh = and i64 %i.jf, 4294967295
  %i.ji = shl i64 %i.iv, 1
  %i.jj = and i64 %i.ji, 8589934590
  %i.jk = mul i64 %i.jj, %i.jh
  %i.jl = add i64 %i.jg, %i.jk                    ; 2 uses
  store i64 %i.jl, ptr %i.dc, align 8, !tbaa !46
  %i.jm = xor i64 %i.jl, %i.ix                    ; 2 uses
  %i.jn = tail call i64 @llvm.fshl.i64(i64 %i.jm, i64 %i.jm, i64 48) ; 3 uses
  store i64 %i.jn, ptr %i.by, align 8, !tbaa !46
  %i.jo = add i64 %i.jn, %i.jd
  %i.jp = and i64 %i.jn, 4294967295
  %i.jq = shl i64 %i.jd, 1
  %i.jr = and i64 %i.jq, 8589934590
  %i.js = mul i64 %i.jr, %i.jp
  %i.jt = add i64 %i.jo, %i.js                    ; 2 uses
  store i64 %i.jt, ptr %i.ao, align 8, !tbaa !46
  %i.ju = xor i64 %i.jt, %i.jf                    ; 2 uses
  %i.jv = tail call i64 @llvm.fshl.i64(i64 %i.ju, i64 %i.ju, i64 1)
  store i64 %i.jv, ptr %i.es, align 8, !tbaa !46
  %i.jw = add i64 %i.ft, %i.bn
  %i.jx = and i64 %i.ft, 4294967295
  %i.jy = shl i64 %i.bn, 1
  %i.jz = and i64 %i.jy, 8589934590
  %i.ka = mul i64 %i.jz, %i.jx
  %i.kb = add i64 %i.jw, %i.ka                    ; 3 uses
  %i.kc = xor i64 %i.kb, %i.eh                    ; 2 uses
  %i.kd = tail call i64 @llvm.fshl.i64(i64 %i.kc, i64 %i.kc, i64 32) ; 3 uses
  %i.ke = add i64 %i.kd, %i.cz
  %i.kf = and i64 %i.kd, 4294967295
  %i.kg = shl i64 %i.cz, 1
  %i.kh = and i64 %i.kg, 8589934590
  %i.ki = mul i64 %i.kh, %i.kf
  %i.kj = add i64 %i.ke, %i.ki                    ; 3 uses
  %i.kk = xor i64 %i.kj, %i.bn                    ; 2 uses
  %i.kl = tail call i64 @llvm.fshl.i64(i64 %i.kk, i64 %i.kk, i64 40) ; 3 uses
  %i.km = add i64 %i.kl, %i.kb
  %i.kn = and i64 %i.kl, 4294967295
  %i.ko = shl i64 %i.kb, 1
  %i.kp = and i64 %i.ko, 8589934590
  %i.kq = mul i64 %i.kp, %i.kn
  %i.kr = add i64 %i.km, %i.kq                    ; 2 uses
  store i64 %i.kr, ptr %i.eq, align 8, !tbaa !46
  %i.ks = xor i64 %i.kr, %i.kd                    ; 2 uses
  %i.kt = tail call i64 @llvm.fshl.i64(i64 %i.ks, i64 %i.ks, i64 48) ; 3 uses
  store i64 %i.kt, ptr %i.dm, align 8, !tbaa !46
  %i.ku = add i64 %i.kt, %i.kj
  %i.kv = and i64 %i.kt, 4294967295
  %i.kw = shl i64 %i.kj, 1
  %i.kx = and i64 %i.kw, 8589934590
  %i.ky = mul i64 %i.kx, %i.kv
  %i.kz = add i64 %i.ku, %i.ky                    ; 2 uses
  store i64 %i.kz, ptr %i.cc, align 8, !tbaa !46
  %i.la = xor i64 %i.kz, %i.kl                    ; 2 uses
  %i.lb = tail call i64 @llvm.fshl.i64(i64 %i.la, i64 %i.la, i64 1)
  store i64 %i.lb, ptr %i.ac, align 8, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %.preheader, label %xor_block.exit526, !llvm.loop !83

.preheader:                                       ; preds = %xor_block.exit526, %.preheader
  %indvars.iv535 = phi i64 [ %indvars.iv.next536, %.preheader ], [ 0, %xor_block.exit526 ] ; 2 uses
  %.idx539 = shl nuw nsw i64 %indvars.iv535, 4
  %i.lc = getelementptr inbounds nuw i8, ptr %4, i64 %.idx539 ; 17 uses
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !46 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 256 ; 2 uses
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !46 ; 3 uses
  %i.lg = add i64 %i.lf, %i.ld
  %i.lh = and i64 %i.lf, 4294967295
  %i.li = shl i64 %i.ld, 1
  %i.lj = and i64 %i.li, 8589934590
  %i.lk = mul i64 %i.lj, %i.lh
  %i.ll = add i64 %i.lg, %i.lk                    ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lc, i64 768 ; 2 uses
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !46
  %i.lo = xor i64 %i.ll, %i.ln                    ; 2 uses
  %i.lp = tail call i64 @llvm.fshl.i64(i64 %i.lo, i64 %i.lo, i64 32) ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lc, i64 512 ; 2 uses
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !46 ; 2 uses
  %i.ls = add i64 %i.lp, %i.lr
  %i.lt = and i64 %i.lp, 4294967295
  %i.lu = shl i64 %i.lr, 1
  %i.lv = and i64 %i.lu, 8589934590
  %i.lw = mul i64 %i.lv, %i.lt
  %i.lx = add i64 %i.ls, %i.lw                    ; 3 uses
  %i.ly = xor i64 %i.lx, %i.lf                    ; 2 uses
  %i.lz = tail call i64 @llvm.fshl.i64(i64 %i.ly, i64 %i.ly, i64 40) ; 3 uses
  %i.ma = add i64 %i.lz, %i.ll
  %i.mb = and i64 %i.lz, 4294967295
  %i.mc = shl i64 %i.ll, 1
  %i.md = and i64 %i.mc, 8589934590
  %i.me = mul i64 %i.md, %i.mb
  %i.mf = add i64 %i.ma, %i.me                    ; 3 uses
  %i.mg = xor i64 %i.mf, %i.lp                    ; 2 uses
  %i.mh = tail call i64 @llvm.fshl.i64(i64 %i.mg, i64 %i.mg, i64 48) ; 3 uses
  %i.mi = add i64 %i.mh, %i.lx
  %i.mj = and i64 %i.mh, 4294967295
  %i.mk = shl i64 %i.lx, 1
  %i.ml = and i64 %i.mk, 8589934590
  %i.mm = mul i64 %i.ml, %i.mj
  %i.mn = add i64 %i.mi, %i.mm                    ; 3 uses
  %i.mo = xor i64 %i.mn, %i.lz                    ; 2 uses
  %i.mp = tail call i64 @llvm.fshl.i64(i64 %i.mo, i64 %i.mo, i64 1) ; 3 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.lc, i64 8 ; 2 uses
  %i.mr = load i64, ptr %i.mq, align 8, !tbaa !46 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.lc, i64 264 ; 2 uses
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !46 ; 3 uses
  %i.mu = add i64 %i.mt, %i.mr
  %i.mv = and i64 %i.mt, 4294967295
  %i.mw = shl i64 %i.mr, 1
  %i.mx = and i64 %i.mw, 8589934590
  %i.my = mul i64 %i.mx, %i.mv
  %i.mz = add i64 %i.mu, %i.my                    ; 3 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.lc, i64 776 ; 2 uses
  %i.nb = load i64, ptr %i.na, align 8, !tbaa !46
  %i.nc = xor i64 %i.mz, %i.nb                    ; 2 uses
  %i.nd = tail call i64 @llvm.fshl.i64(i64 %i.nc, i64 %i.nc, i64 32) ; 3 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.lc, i64 520 ; 2 uses
  %i.nf = load i64, ptr %i.ne, align 8, !tbaa !46 ; 2 uses
  %i.ng = add i64 %i.nd, %i.nf
  %i.nh = and i64 %i.nd, 4294967295
  %i.ni = shl i64 %i.nf, 1
  %i.nj = and i64 %i.ni, 8589934590
  %i.nk = mul i64 %i.nj, %i.nh
  %i.nl = add i64 %i.ng, %i.nk                    ; 3 uses
  %i.nm = xor i64 %i.nl, %i.mt                    ; 2 uses
  %i.nn = tail call i64 @llvm.fshl.i64(i64 %i.nm, i64 %i.nm, i64 40) ; 3 uses
  %i.no = add i64 %i.nn, %i.mz
  %i.np = and i64 %i.nn, 4294967295
  %i.nq = shl i64 %i.mz, 1
  %i.nr = and i64 %i.nq, 8589934590
  %i.ns = mul i64 %i.nr, %i.np
  %i.nt = add i64 %i.no, %i.ns                    ; 3 uses
  %i.nu = xor i64 %i.nt, %i.nd                    ; 2 uses
  %i.nv = tail call i64 @llvm.fshl.i64(i64 %i.nu, i64 %i.nu, i64 48) ; 3 uses
  %i.nw = add i64 %i.nv, %i.nl
  %i.nx = and i64 %i.nv, 4294967295
  %i.ny = shl i64 %i.nl, 1
  %i.nz = and i64 %i.ny, 8589934590
  %i.oa = mul i64 %i.nz, %i.nx
  %i.ob = add i64 %i.nw, %i.oa                    ; 3 uses
  %i.oc = xor i64 %i.ob, %i.nn                    ; 2 uses
  %i.od = tail call i64 @llvm.fshl.i64(i64 %i.oc, i64 %i.oc, i64 1) ; 3 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.lc, i64 128 ; 2 uses
  %i.of = load i64, ptr %i.oe, align 8, !tbaa !46 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.lc, i64 384 ; 2 uses
  %i.oh = load i64, ptr %i.og, align 8, !tbaa !46 ; 3 uses
  %i.oi = add i64 %i.oh, %i.of
  %i.oj = and i64 %i.oh, 4294967295
  %i.ok = shl i64 %i.of, 1
  %i.ol = and i64 %i.ok, 8589934590
  %i.om = mul i64 %i.ol, %i.oj
  %i.on = add i64 %i.oi, %i.om                    ; 3 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.lc, i64 896 ; 2 uses
  %i.op = load i64, ptr %i.oo, align 8, !tbaa !46
  %i.oq = xor i64 %i.on, %i.op                    ; 2 uses
  %i.or = tail call i64 @llvm.fshl.i64(i64 %i.oq, i64 %i.oq, i64 32) ; 3 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.lc, i64 640 ; 2 uses
  %i.ot = load i64, ptr %i.os, align 8, !tbaa !46 ; 2 uses
  %i.ou = add i64 %i.or, %i.ot
  %i.ov = and i64 %i.or, 4294967295
  %i.ow = shl i64 %i.ot, 1
  %i.ox = and i64 %i.ow, 8589934590
  %i.oy = mul i64 %i.ox, %i.ov
  %i.oz = add i64 %i.ou, %i.oy                    ; 3 uses
  %i.pa = xor i64 %i.oz, %i.oh                    ; 2 uses
  %i.pb = tail call i64 @llvm.fshl.i64(i64 %i.pa, i64 %i.pa, i64 40) ; 3 uses
  %i.pc = add i64 %i.pb, %i.on
  %i.pd = and i64 %i.pb, 4294967295
  %i.pe = shl i64 %i.on, 1
  %i.pf = and i64 %i.pe, 8589934590
  %i.pg = mul i64 %i.pf, %i.pd
  %i.ph = add i64 %i.pc, %i.pg                    ; 3 uses
  %i.pi = xor i64 %i.ph, %i.or                    ; 2 uses
  %i.pj = tail call i64 @llvm.fshl.i64(i64 %i.pi, i64 %i.pi, i64 48) ; 3 uses
  %i.pk = add i64 %i.pj, %i.oz
  %i.pl = and i64 %i.pj, 4294967295
  %i.pm = shl i64 %i.oz, 1
  %i.pn = and i64 %i.pm, 8589934590
  %i.po = mul i64 %i.pn, %i.pl
  %i.pp = add i64 %i.pk, %i.po                    ; 3 uses
  %i.pq = xor i64 %i.pp, %i.pb                    ; 2 uses
  %i.pr = tail call i64 @llvm.fshl.i64(i64 %i.pq, i64 %i.pq, i64 1) ; 3 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.lc, i64 136 ; 2 uses
  %i.pt = load i64, ptr %i.ps, align 8, !tbaa !46 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.lc, i64 392 ; 2 uses
  %i.pv = load i64, ptr %i.pu, align 8, !tbaa !46 ; 3 uses
  %i.pw = add i64 %i.pv, %i.pt
  %i.px = and i64 %i.pv, 4294967295
  %i.py = shl i64 %i.pt, 1
  %i.pz = and i64 %i.py, 8589934590
  %i.qa = mul i64 %i.pz, %i.px
  %i.qb = add i64 %i.pw, %i.qa                    ; 3 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.lc, i64 904 ; 2 uses
  %i.qd = load i64, ptr %i.qc, align 8, !tbaa !46
  %i.qe = xor i64 %i.qb, %i.qd                    ; 2 uses
  %i.qf = tail call i64 @llvm.fshl.i64(i64 %i.qe, i64 %i.qe, i64 32) ; 3 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.lc, i64 648 ; 2 uses
  %i.qh = load i64, ptr %i.qg, align 8, !tbaa !46 ; 2 uses
  %i.qi = add i64 %i.qf, %i.qh
  %i.qj = and i64 %i.qf, 4294967295
  %i.qk = shl i64 %i.qh, 1
  %i.ql = and i64 %i.qk, 8589934590
  %i.qm = mul i64 %i.ql, %i.qj
  %i.qn = add i64 %i.qi, %i.qm                    ; 3 uses
  %i.qo = xor i64 %i.qn, %i.pv                    ; 2 uses
  %i.qp = tail call i64 @llvm.fshl.i64(i64 %i.qo, i64 %i.qo, i64 40) ; 3 uses
  %i.qq = add i64 %i.qp, %i.qb
  %i.qr = and i64 %i.qp, 4294967295
  %i.qs = shl i64 %i.qb, 1
  %i.qt = and i64 %i.qs, 8589934590
  %i.qu = mul i64 %i.qt, %i.qr
  %i.qv = add i64 %i.qq, %i.qu                    ; 3 uses
  %i.qw = xor i64 %i.qv, %i.qf                    ; 2 uses
  %i.qx = tail call i64 @llvm.fshl.i64(i64 %i.qw, i64 %i.qw, i64 48) ; 3 uses
  %i.qy = add i64 %i.qx, %i.qn
  %i.qz = and i64 %i.qx, 4294967295
  %i.ra = shl i64 %i.qn, 1
  %i.rb = and i64 %i.ra, 8589934590
  %i.rc = mul i64 %i.rb, %i.qz
  %i.rd = add i64 %i.qy, %i.rc                    ; 3 uses
  %i.re = xor i64 %i.rd, %i.qp                    ; 2 uses
  %i.rf = tail call i64 @llvm.fshl.i64(i64 %i.re, i64 %i.re, i64 1) ; 3 uses
  %i.rg = add i64 %i.od, %i.mf
  %i.rh = and i64 %i.od, 4294967295
  %i.ri = shl i64 %i.mf, 1
  %i.rj = and i64 %i.ri, 8589934590
  %i.rk = mul i64 %i.rj, %i.rh
  %i.rl = add i64 %i.rg, %i.rk                    ; 3 uses
  %i.rm = xor i64 %i.qx, %i.rl                    ; 2 uses
  %i.rn = tail call i64 @llvm.fshl.i64(i64 %i.rm, i64 %i.rm, i64 32) ; 3 uses
  %i.ro = add i64 %i.rn, %i.pp
  %i.rp = and i64 %i.rn, 4294967295
  %i.rq = shl i64 %i.pp, 1
  %i.rr = and i64 %i.rq, 8589934590
  %i.rs = mul i64 %i.rr, %i.rp
  %i.rt = add i64 %i.ro, %i.rs                    ; 3 uses
  %i.ru = xor i64 %i.rt, %i.od                    ; 2 uses
  %i.rv = tail call i64 @llvm.fshl.i64(i64 %i.ru, i64 %i.ru, i64 40) ; 3 uses
  %i.rw = add i64 %i.rv, %i.rl
  %i.rx = and i64 %i.rv, 4294967295
  %i.ry = shl i64 %i.rl, 1
  %i.rz = and i64 %i.ry, 8589934590
  %i.sa = mul i64 %i.rz, %i.rx
  %i.sb = add i64 %i.rw, %i.sa                    ; 2 uses
  store i64 %i.sb, ptr %i.lc, align 8, !tbaa !46
  %i.sc = xor i64 %i.sb, %i.rn                    ; 2 uses
  %i.sd = tail call i64 @llvm.fshl.i64(i64 %i.sc, i64 %i.sc, i64 48) ; 3 uses
  store i64 %i.sd, ptr %i.qc, align 8, !tbaa !46
  %i.se = add i64 %i.sd, %i.rt
  %i.sf = and i64 %i.sd, 4294967295
  %i.sg = shl i64 %i.rt, 1
  %i.sh = and i64 %i.sg, 8589934590
  %i.si = mul i64 %i.sh, %i.sf
  %i.sj = add i64 %i.se, %i.si                    ; 2 uses
  store i64 %i.sj, ptr %i.os, align 8, !tbaa !46
  %i.sk = xor i64 %i.sj, %i.rv                    ; 2 uses
  %i.sl = tail call i64 @llvm.fshl.i64(i64 %i.sk, i64 %i.sk, i64 1)
  store i64 %i.sl, ptr %i.ms, align 8, !tbaa !46
  %i.sm = add i64 %i.pr, %i.nt
  %i.sn = and i64 %i.pr, 4294967295
  %i.so = shl i64 %i.nt, 1
  %i.sp = and i64 %i.so, 8589934590
  %i.sq = mul i64 %i.sp, %i.sn
  %i.sr = add i64 %i.sm, %i.sq                    ; 3 uses
  %i.ss = xor i64 %i.sr, %i.mh                    ; 2 uses
  %i.st = tail call i64 @llvm.fshl.i64(i64 %i.ss, i64 %i.ss, i64 32) ; 3 uses
  %i.su = add i64 %i.rd, %i.st
  %i.sv = and i64 %i.rd, 4294967295
  %i.sw = shl i64 %i.st, 1
  %i.sx = and i64 %i.sw, 8589934590
  %i.sy = mul i64 %i.sx, %i.sv
  %i.sz = add i64 %i.su, %i.sy                    ; 3 uses
  %i.ta = xor i64 %i.sz, %i.pr                    ; 2 uses
  %i.tb = tail call i64 @llvm.fshl.i64(i64 %i.ta, i64 %i.ta, i64 40) ; 3 uses
  %i.tc = add i64 %i.tb, %i.sr
  %i.td = and i64 %i.tb, 4294967295
  %i.te = shl i64 %i.sr, 1
  %i.tf = and i64 %i.te, 8589934590
  %i.tg = mul i64 %i.tf, %i.td
  %i.th = add i64 %i.tc, %i.tg                    ; 2 uses
  store i64 %i.th, ptr %i.mq, align 8, !tbaa !46
  %i.ti = xor i64 %i.th, %i.st                    ; 2 uses
  %i.tj = tail call i64 @llvm.fshl.i64(i64 %i.ti, i64 %i.ti, i64 48) ; 3 uses
  store i64 %i.tj, ptr %i.lm, align 8, !tbaa !46
  %i.tk = add i64 %i.tj, %i.sz
  %i.tl = and i64 %i.tj, 4294967295
  %i.tm = shl i64 %i.sz, 1
  %i.tn = and i64 %i.tm, 8589934590
  %i.to = mul i64 %i.tn, %i.tl
  %i.tp = add i64 %i.tk, %i.to                    ; 2 uses
  store i64 %i.tp, ptr %i.qg, align 8, !tbaa !46
  %i.tq = xor i64 %i.tp, %i.tb                    ; 2 uses
  %i.tr = tail call i64 @llvm.fshl.i64(i64 %i.tq, i64 %i.tq, i64 1)
  store i64 %i.tr, ptr %i.og, align 8, !tbaa !46
  %i.ts = add i64 %i.rf, %i.ph
  %i.tt = and i64 %i.rf, 4294967295
  %i.tu = shl i64 %i.ph, 1
  %i.tv = and i64 %i.tu, 8589934590
  %i.tw = mul i64 %i.tv, %i.tt
  %i.tx = add i64 %i.ts, %i.tw                    ; 3 uses
  %i.ty = xor i64 %i.tx, %i.nv                    ; 2 uses
  %i.tz = tail call i64 @llvm.fshl.i64(i64 %i.ty, i64 %i.ty, i64 32) ; 3 uses
  %i.ua = add i64 %i.tz, %i.mn
  %i.ub = and i64 %i.tz, 4294967295
  %i.uc = shl i64 %i.mn, 1
  %i.ud = and i64 %i.uc, 8589934590
  %i.ue = mul i64 %i.ud, %i.ub
  %i.uf = add i64 %i.ua, %i.ue                    ; 3 uses
  %i.ug = xor i64 %i.uf, %i.rf                    ; 2 uses
  %i.uh = tail call i64 @llvm.fshl.i64(i64 %i.ug, i64 %i.ug, i64 40) ; 3 uses
  %i.ui = add i64 %i.uh, %i.tx
  %i.uj = and i64 %i.uh, 4294967295
  %i.uk = shl i64 %i.tx, 1
  %i.ul = and i64 %i.uk, 8589934590
  %i.um = mul i64 %i.ul, %i.uj
  %i.un = add i64 %i.ui, %i.um                    ; 2 uses
  store i64 %i.un, ptr %i.oe, align 8, !tbaa !46
  %i.uo = xor i64 %i.un, %i.tz                    ; 2 uses
  %i.up = tail call i64 @llvm.fshl.i64(i64 %i.uo, i64 %i.uo, i64 48) ; 3 uses
  store i64 %i.up, ptr %i.na, align 8, !tbaa !46
  %i.uq = add i64 %i.up, %i.uf
  %i.ur = and i64 %i.up, 4294967295
  %i.us = shl i64 %i.uf, 1
  %i.ut = and i64 %i.us, 8589934590
  %i.uu = mul i64 %i.ut, %i.ur
  %i.uv = add i64 %i.uq, %i.uu                    ; 2 uses
  store i64 %i.uv, ptr %i.lq, align 8, !tbaa !46
  %i.uw = xor i64 %i.uv, %i.uh                    ; 2 uses
  %i.ux = tail call i64 @llvm.fshl.i64(i64 %i.uw, i64 %i.uw, i64 1)
  store i64 %i.ux, ptr %i.pu, align 8, !tbaa !46
  %i.uy = add i64 %i.qv, %i.mp
  %i.uz = and i64 %i.qv, 4294967295
  %i.va = shl i64 %i.mp, 1
  %i.vb = and i64 %i.va, 8589934590
  %i.vc = mul i64 %i.vb, %i.uz
  %i.vd = add i64 %i.uy, %i.vc                    ; 3 uses
  %i.ve = xor i64 %i.vd, %i.pj                    ; 2 uses
  %i.vf = tail call i64 @llvm.fshl.i64(i64 %i.ve, i64 %i.ve, i64 32) ; 3 uses
  %i.vg = add i64 %i.vf, %i.ob
  %i.vh = and i64 %i.vf, 4294967295
  %i.vi = shl i64 %i.ob, 1
  %i.vj = and i64 %i.vi, 8589934590
  %i.vk = mul i64 %i.vj, %i.vh
  %i.vl = add i64 %i.vg, %i.vk                    ; 3 uses
  %i.vm = xor i64 %i.vl, %i.mp                    ; 2 uses
  %i.vn = tail call i64 @llvm.fshl.i64(i64 %i.vm, i64 %i.vm, i64 40) ; 3 uses
  %i.vo = add i64 %i.vn, %i.vd
  %i.vp = and i64 %i.vn, 4294967295
  %i.vq = shl i64 %i.vd, 1
  %i.vr = and i64 %i.vq, 8589934590
  %i.vs = mul i64 %i.vr, %i.vp
  %i.vt = add i64 %i.vo, %i.vs                    ; 2 uses
  store i64 %i.vt, ptr %i.ps, align 8, !tbaa !46
  %i.vu = xor i64 %i.vt, %i.vf                    ; 2 uses
  %i.vv = tail call i64 @llvm.fshl.i64(i64 %i.vu, i64 %i.vu, i64 48) ; 3 uses
  store i64 %i.vv, ptr %i.oo, align 8, !tbaa !46
  %i.vw = add i64 %i.vv, %i.vl
  %i.vx = and i64 %i.vv, 4294967295
  %i.vy = shl i64 %i.vl, 1
  %i.vz = and i64 %i.vy, 8589934590
  %i.wa = mul i64 %i.vz, %i.vx
  %i.wb = add i64 %i.vw, %i.wa                    ; 2 uses
  store i64 %i.wb, ptr %i.ne, align 8, !tbaa !46
  %i.wc = xor i64 %i.wb, %i.vn                    ; 2 uses
  %i.wd = tail call i64 @llvm.fshl.i64(i64 %i.wc, i64 %i.wc, i64 1)
  store i64 %i.wd, ptr %i.le, align 8, !tbaa !46
  %indvars.iv.next536 = add nuw nsw i64 %indvars.iv535, 1 ; 2 uses
  %exitcond538.not = icmp eq i64 %indvars.iv.next536, 8
  br i1 %exitcond538.not, label %vector.ph552, label %.preheader, !llvm.loop !84

vector.ph552:                                     ; preds = %.preheader
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %2, ptr noundef nonnull readonly align 8 dereferenceable(1024) %5, i64 1024, i1 false)
  br label %vector.body553

vector.body553:                                   ; preds = %vector.body553, %vector.ph552
  %index554 = phi i64 [ 0, %vector.ph552 ], [ %index.next559.1, %vector.body553 ] ; 4 uses
  %i.we = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index554 ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 16
  %wide.load555 = load <2 x i64>, ptr %i.we, align 8, !tbaa !46
  %wide.load556 = load <2 x i64>, ptr %i.wf, align 8, !tbaa !46
  %i.wg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index554 ; 3 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 16 ; 2 uses
  %wide.load557 = load <2 x i64>, ptr %i.wg, align 8, !tbaa !46
  %wide.load558 = load <2 x i64>, ptr %i.wh, align 8, !tbaa !46
  %i.wi = xor <2 x i64> %wide.load557, %wide.load555
  %i.wj = xor <2 x i64> %wide.load558, %wide.load556
  store <2 x i64> %i.wi, ptr %i.wg, align 8, !tbaa !46
  store <2 x i64> %i.wj, ptr %i.wh, align 8, !tbaa !46
  %index.next559 = or disjoint i64 %index554, 4   ; 2 uses
  %i.wk = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index.next559 ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 16
  %wide.load555.1 = load <2 x i64>, ptr %i.wk, align 8, !tbaa !46
  %wide.load556.1 = load <2 x i64>, ptr %i.wl, align 8, !tbaa !46
  %i.wm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index.next559 ; 3 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 16 ; 2 uses
  %wide.load557.1 = load <2 x i64>, ptr %i.wm, align 8, !tbaa !46
  %wide.load558.1 = load <2 x i64>, ptr %i.wn, align 8, !tbaa !46
  %i.wo = xor <2 x i64> %wide.load557.1, %wide.load555.1
  %i.wp = xor <2 x i64> %wide.load558.1, %wide.load556.1
  store <2 x i64> %i.wo, ptr %i.wm, align 8, !tbaa !46
  store <2 x i64> %i.wp, ptr %i.wn, align 8, !tbaa !46
  %index.next559.1 = add nuw nsw i64 %index554, 8 ; 2 uses
  %i.wq = icmp eq i64 %index.next559.1, 128
  br i1 %i.wq, label %xor_block.exit530, label %vector.body553, !llvm.loop !85

xor_block.exit530:                                ; preds = %vector.body553
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret void
}

declare i32 @ossl_crypto_thread_join(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ossl_crypto_thread_clean(ptr noundef) local_unnamed_addr #3

declare ptr @ossl_crypto_thread_start(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @fill_segment_thr(ptr nofree noundef readonly captures(none) %0) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.c = load i32, ptr %0, align 8, !tbaa !86
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !87
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i8, ptr %i.f, align 8, !tbaa !88
  tail call fastcc void @fill_segment(ptr noundef %i.b, i32 noundef %i.c, i32 noundef %i.e, i8 noundef zeroext %i.g)
  ret i32 0
}

declare void @CRYPTO_secure_clear_free(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @OSSL_PARAM_set_size_t(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"p1 _ZTS15ossl_lib_ctx_st", !8, i64 0}
!11 = !{!"p1 _ZTS9evp_md_st", !8, i64 0}
!12 = !{!"p1 _ZTS10evp_mac_st", !8, i64 0}
!13 = !{!"", !8, i64 0, !5, i64 8, !9, i64 16, !5, i64 24, !9, i64 32, !5, i64 40, !9, i64 48, !5, i64 56, !9, i64 64, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !8, i64 104, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !10, i64 128, !11, i64 136, !12, i64 144, !9, i64 152}
!14 = !{!13, !10, i64 128}
!15 = !{!13, !5, i64 8}
!16 = !{!5, !5, i64 0}
!17 = !{!13, !5, i64 92}
!18 = !{!13, !5, i64 100}
!19 = !{!13, !9, i64 16}
!20 = !{!13, !5, i64 24}
!21 = !{!13, !9, i64 32}
!22 = !{!13, !5, i64 40}
!23 = !{!13, !9, i64 48}
!24 = !{!13, !5, i64 56}
!25 = !{!13, !9, i64 64}
!26 = !{!13, !5, i64 72}
!27 = !{!13, !11, i64 136}
!28 = !{!13, !12, i64 144}
!29 = !{!13, !9, i64 152}
!30 = !{!"p1 _ZTS13ossl_param_st", !8, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!13, !5, i64 88}
!33 = !{!13, !5, i64 84}
!34 = !{!13, !5, i64 80}
!35 = !{!13, !8, i64 104}
!36 = !{!13, !5, i64 116}
!37 = !{!13, !5, i64 120}
!38 = !{!13, !5, i64 76}
!39 = !{!13, !5, i64 112}
!40 = !{!13, !5, i64 124}
!41 = !{!"long", !4, i64 0}
!42 = !{!"ossl_param_st", !9, i64 0, !5, i64 8, !8, i64 16, !41, i64 24, !41, i64 32}
!43 = !{!42, !9, i64 0}
!44 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!41, !41, i64 0}
!47 = !{!13, !5, i64 96}
!48 = !{!"llvm.loop.isvectorized", i32 1}
!49 = !{!8, !8, i64 0}
!50 = !{!"", !5, i64 0, !5, i64 4, !4, i64 8, !5, i64 12}
!51 = !{!"", !50, i64 0, !8, i64 16}
!52 = !{!51, !8, i64 16}
!53 = !{!"llvm.loop.unroll.runtime.disable"}
!54 = !{!9, !9, i64 0}
!55 = !{i64 0, i64 8, !54, i64 8, i64 4, !16, i64 16, i64 8, !49, i64 24, i64 8, !46, i64 32, i64 8, !46}
!56 = distinct !{!56, !45}
!57 = distinct !{!57, !45}
!58 = !{!4, !4, i64 0}
!59 = !{!42, !8, i64 16}
!60 = !{!42, !5, i64 8}
!61 = distinct !{!61, !45, !48}
!62 = distinct !{!62, !45, !48}
!63 = distinct !{!63, !45}
!64 = distinct !{!64, !45}
!65 = distinct !{!65, !45, !70}
!66 = distinct !{!66, !45}
!67 = distinct !{!67, !45}
!68 = distinct !{!68, !45}
!69 = distinct !{!69, !45}
!70 = !{!"llvm.loop.unswitch.partial.disable"}
!71 = distinct !{!71, !"LVerDomain"}
!72 = distinct !{!72, !71}
!73 = distinct !{!73, !71}
!74 = distinct !{!74, !45, !48, !53}
!75 = distinct !{!75, !45, !48}
!76 = distinct !{!76, !45}
!77 = !{!72}
!78 = !{!73}
!79 = distinct !{!79, !45}
!80 = distinct !{!80, !45}
!81 = distinct !{!81, !45, !48, !53}
!82 = distinct !{!82, !45, !48, !53}
!83 = distinct !{!83, !45}
!84 = distinct !{!84, !45}
!85 = distinct !{!85, !45, !48, !53}
!86 = !{!51, !5, i64 0}
!87 = !{!51, !5, i64 4}
!88 = !{!51, !4, i64 8}
end_hunk_0
