inline.NumInlined: 176
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 12
begin_hunk_0_@fill_memory_blocks:bb.a
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ei
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !60
  %i.el = tail call i32 @ossl_crypto_thread_clean(ptr noundef %i.ek) #10
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge130.i
  %.pre-phi135.i = phi i32 [ %.pre134.i, %._crit_edge130.i ], [ %i.eg, %bb.s ] ; 2 uses
  %i.en = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %indvars.iv.2.i ; 6 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store ptr %0, ptr %i.eo, align 8, !tbaa !61
  store i32 %.06995.i, ptr %i.en, align 8
  %.sroa.4.0..sroa_idx.2.i = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  store i32 %.pre-phi135.i, ptr %.sroa.4.0..sroa_idx.2.i, align 4
  %.sroa.5.0..sroa_idx.2.i = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store i8 2, ptr %.sroa.5.0..sroa_idx.2.i, align 8
  %.sroa.62.0..sroa_idx.2.i = getelementptr inbounds nuw i8, ptr %i.en, i64 12
  store i32 0, ptr %.sroa.62.0..sroa_idx.2.i, align 4
  %i.ep = load ptr, ptr %i.as, align 8, !tbaa !8
  %i.eq = tail call ptr @ossl_crypto_thread_start(ptr noundef %i.ep, ptr noundef nonnull @fill_segment_thr, ptr noundef nonnull %i.en) #10 ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.2.i
  store ptr %i.eq, ptr %i.er, align 8, !tbaa !60
  %i.es = icmp eq ptr %i.eq, null
  br i1 %i.es, label %.preheader.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %indvars.iv.next.2.i = add nuw nsw i64 %indvars.iv.2.i, 1 ; 2 uses
  %i.et = load i32, ptr %i.ah, align 4, !tbaa !33 ; 4 uses
  %i.eu = zext i32 %i.et to i64
  %i.ev = icmp samesign ult i64 %indvars.iv.next.2.i, %i.eu
  br i1 %i.ev, label %.lr.ph.2.i9, label %._crit_edge.2.i10, !llvm.loop !65

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
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !60 ; 2 uses
  %i.fc = tail call i32 @ossl_crypto_thread_join(ptr noundef %i.fb, ptr noundef null) #10
  %i.fd = icmp eq i32 %i.fc, 0
  br i1 %i.fd, label %.thread.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph92.2.i
  %i.fe = tail call i32 @ossl_crypto_thread_clean(ptr noundef %i.fb) #10
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %.thread.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  store ptr null, ptr %i.fa, align 8, !tbaa !60
  %indvars.iv.next111.2.i = add nuw nsw i64 %indvars.iv110.2.i, 1 ; 2 uses
  %i.fg = load i32, ptr %i.ah, align 4, !tbaa !33 ; 2 uses
  %i.fh = zext i32 %i.fg to i64
  %i.fi = icmp samesign ult i64 %indvars.iv.next111.2.i, %i.fh
  br i1 %i.fi, label %.lr.ph92.2.i, label %._crit_edge93.2.i, !llvm.loop !66

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
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !60
  %i.fp = tail call i32 @ossl_crypto_thread_join(ptr noundef %i.fo, ptr noundef null) #10
  %i.fq = icmp eq i32 %i.fp, 0
  br i1 %i.fq, label %.thread.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fr = load i32, ptr %i.a, align 8, !tbaa !32
  %i.fs = trunc nuw i64 %indvars.iv.3.i to i32    ; 2 uses
  %i.ft = sub i32 %i.fs, %i.fr
  %i.fu = zext i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.fu
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !60
  %i.fx = tail call i32 @ossl_crypto_thread_clean(ptr noundef %i.fw) #10
  %i.fy = icmp eq i32 %i.fx, 0
  br i1 %i.fy, label %.thread.i, label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge131.i
  %.pre-phi133.i = phi i32 [ %.pre132.i, %._crit_edge131.i ], [ %i.fs, %bb.y ] ; 2 uses
  %i.fz = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %indvars.iv.3.i ; 6 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  store ptr %0, ptr %i.ga, align 8, !tbaa !61
  store i32 %.06995.i, ptr %i.fz, align 8
  %.sroa.4.0..sroa_idx.3.i = getelementptr inbounds nuw i8, ptr %i.fz, i64 4
  store i32 %.pre-phi133.i, ptr %.sroa.4.0..sroa_idx.3.i, align 4
  %.sroa.5.0..sroa_idx.3.i = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store i8 3, ptr %.sroa.5.0..sroa_idx.3.i, align 8
  %.sroa.62.0..sroa_idx.3.i = getelementptr inbounds nuw i8, ptr %i.fz, i64 12
  store i32 0, ptr %.sroa.62.0..sroa_idx.3.i, align 4
  %i.gb = load ptr, ptr %i.as, align 8, !tbaa !8
  %i.gc = tail call ptr @ossl_crypto_thread_start(ptr noundef %i.gb, ptr noundef nonnull @fill_segment_thr, ptr noundef nonnull %i.fz) #10 ; 2 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.3.i
  store ptr %i.gc, ptr %i.gd, align 8, !tbaa !60
  %i.ge = icmp eq ptr %i.gc, null
  br i1 %i.ge, label %.preheader.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %indvars.iv.next.3.i = add nuw nsw i64 %indvars.iv.3.i, 1 ; 2 uses
  %i.gf = load i32, ptr %i.ah, align 4, !tbaa !33 ; 4 uses
  %i.gg = zext i32 %i.gf to i64
  %i.gh = icmp samesign ult i64 %indvars.iv.next.3.i, %i.gg
  br i1 %i.gh, label %.lr.ph.3.i11, label %._crit_edge.3.i12, !llvm.loop !65

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
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !60 ; 2 uses
  %i.go = tail call i32 @ossl_crypto_thread_join(ptr noundef %i.gn, ptr noundef null) #10
  %i.gp = icmp eq i32 %i.go, 0
  br i1 %i.gp, label %.thread.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph92.3.i
  %i.gq = tail call i32 @ossl_crypto_thread_clean(ptr noundef %i.gn) #10
  %i.gr = icmp eq i32 %i.gq, 0
  br i1 %i.gr, label %.thread.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store ptr null, ptr %i.gm, align 8, !tbaa !60
  %indvars.iv.next111.3.i = add nuw nsw i64 %indvars.iv110.3.i, 1 ; 2 uses
  %i.gs = load i32, ptr %i.ah, align 4, !tbaa !33 ; 2 uses
  %i.gt = zext i32 %i.gs to i64
  %i.gu = icmp samesign ult i64 %indvars.iv.next111.3.i, %i.gt
  br i1 %i.gu, label %.lr.ph92.3.i, label %._crit_edge93.3.i, !llvm.loop !66

._crit_edge93.3.i:                                ; preds = %bb.ac, %._crit_edge.3.i12, %._crit_edge93.2.i, %._crit_edge93.1.i, %._crit_edge93.i, %.preheader83.i
  %i.gv = phi i32 [ 0, %._crit_edge93.1.i ], [ %i.gf, %._crit_edge.3.i12 ], [ 0, %._crit_edge93.2.i ], [ 0, %._crit_edge93.i ], [ 0, %.preheader83.i ], [ %i.gs, %bb.ac ]
  %i.gw = add nuw i32 %.06995.i, 1                ; 2 uses
  %i.gx = load i32, ptr %i.aq, align 8, !tbaa !39
  %i.gy = icmp ult i32 %i.gw, %i.gx
  br i1 %i.gy, label %.preheader83.i, label %._crit_edge96.i, !llvm.loop !67

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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 4 uses
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
  %scevgep.a = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %i.n = shl i32 %i.f, 1
  %i.o = add i32 %i.n, -1
  %scevgep27 = getelementptr i8, ptr %i.d, i64 1024
  br label %vector.memcheck

.preheader:                                       ; preds = %xor_block.exit, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.a, ptr noundef nonnull align 8 dereferenceable(1024) %2, i64 1024, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !15
  %i.t = zext i32 %i.s to i64
  call fastcc void @blake2b_long(ptr noundef %i.q, ptr noundef %1, i64 noundef %i.t, ptr noundef %i.a, i64 noundef 1024)
  call void @OPENSSL_cleanse(ptr noundef nonnull %2, i64 noundef 1024) #10
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 1024) #10
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.v = load i32, ptr %i.u, align 4, !tbaa !18
  %.not = icmp eq i32 %i.v, 0
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.y = load i32, ptr %i.x, align 4, !tbaa !36
  %i.z = zext i32 %i.y to i64
  %i.aa = shl nuw nsw i64 %i.z, 10                ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

vector.memcheck:                                  ; preds = %.lr.ph, %xor_block.exit
  %indvar = phi i32 [ 0, %.lr.ph ], [ %indvar.next, %xor_block.exit ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %xor_block.exit ] ; 2 uses
  %i.ab = trunc nuw i64 %indvars.iv to i32
  %i.ac = mul i32 %i.f, %i.ab
  %i.ad = add i32 %i.m, %i.ac
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [1024 x i8], ptr %i.d, i64 %i.ae ; 6 uses
  %i.ag = mul i32 %i.f, %indvar
  %i.ah = add i32 %i.o, %i.ag
  %i.ai = zext i32 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 10               ; 2 uses
  %scevgep28 = getelementptr i8, ptr %scevgep27, i64 %i.aj
  %scevgep26 = getelementptr nuw i8, ptr %i.d, i64 %i.aj
  %bound0 = icmp ult ptr %2, %scevgep28
  %bound1 = icmp ult ptr %scevgep26, %scevgep.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %vector.memcheck ] ; 4 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load = load <2 x i64>, ptr %i.ak, align 8, !tbaa !50, !alias.scope !68
  %wide.load29.a = load <2 x i64>, ptr %i.al, align 8, !tbaa !50, !alias.scope !68
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %wide.load30.a = load <2 x i64>, ptr %i.am, align 8, !tbaa !50, !alias.scope !71, !noalias !68
  %wide.load31 = load <2 x i64>, ptr %i.an, align 8, !tbaa !50, !alias.scope !71, !noalias !68
  %i.ao = xor <2 x i64> %wide.load30.a, %wide.load
  %i.ap = xor <2 x i64> %wide.load31, %wide.load29.a
  store <2 x i64> %i.ao, ptr %i.am, align 8, !tbaa !50, !alias.scope !71, !noalias !68
  store <2 x i64> %i.ap, ptr %i.an, align 8, !tbaa !50, !alias.scope !71, !noalias !68
  %index.next = or disjoint i64 %index, 4         ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %index.next ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %wide.load.1 = load <2 x i64>, ptr %i.aq, align 8, !tbaa !50, !alias.scope !68
  %wide.load29.1.a = load <2 x i64>, ptr %i.ar, align 8, !tbaa !50, !alias.scope !68
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index.next ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %wide.load30.1.a = load <2 x i64>, ptr %i.as, align 8, !tbaa !50, !alias.scope !71, !noalias !68
  %wide.load31.1 = load <2 x i64>, ptr %i.at, align 8, !tbaa !50, !alias.scope !71, !noalias !68
  %i.au = xor <2 x i64> %wide.load30.1.a, %wide.load.1
  %i.av = xor <2 x i64> %wide.load31.1, %wide.load29.1.a
  store <2 x i64> %i.au, ptr %i.as, align 8, !tbaa !50, !alias.scope !71, !noalias !68
  store <2 x i64> %i.av, ptr %i.at, align 8, !tbaa !50, !alias.scope !71, !noalias !68
  %index.next.1 = add nuw nsw i64 %index, 8       ; 2 uses
  %i.aw = icmp eq i64 %index.next.1, 128
  br i1 %i.aw, label %xor_block.exit, label %vector.body, !llvm.loop !73

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ 0, %vector.memcheck ] ; 6 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.i
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !50
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !50
  %i.bb = xor i64 %i.ba, %i.ay
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !50
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next.i
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !50
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !50
  %i.bg = xor i64 %i.bf, %i.bd
  store i64 %i.bg, ptr %i.be, align 8, !tbaa !50
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next.i.1
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !50
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i.1 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !50
  %i.bl = xor i64 %i.bk, %i.bi
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !50
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next.i.2
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !50
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i.2 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !50
  %i.bq = xor i64 %i.bp, %i.bn
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !50
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, 128
  br i1 %exitcond.not.i.3, label %xor_block.exit, label %scalar.ph, !llvm.loop !75

xor_block.exit:                                   ; preds = %vector.body, %scalar.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond.not, label %.preheader, label %vector.memcheck, !llvm.loop !76

bb.c:                                             ; preds = %.preheader
  call void @CRYPTO_secure_clear_free(ptr noundef %i.w, i64 noundef %i.aa, ptr noundef nonnull @.str, i32 noundef 781) #10
  br label %bb.e

bb.d:                                             ; preds = %.preheader
  call void @CRYPTO_clear_free(ptr noundef %i.w, i64 noundef %i.aa, ptr noundef nonnull @.str, i32 noundef 784) #10
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
end_hunk_0
