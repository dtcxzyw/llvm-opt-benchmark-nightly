Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/crypt_sha512?download=true
inline.NumInlined: 6
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumUnrolled: 24
begin_hunk_0_@sha512_process_bytes:bb.a

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.172 = phi ptr [ %.056, %.lr.ph ], [ %i.s, %bb.g ] ; 2 uses
  %.15871 = phi i64 [ %.057, %.lr.ph ], [ %i.t, %bb.g ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.r, ptr noundef nonnull align 1 dereferenceable(128) %.172, i64 128, i1 false)
  tail call fastcc void @sha512_process_block(ptr noundef nonnull %i.r, i64 noundef 128, ptr noundef %2)
  %i.s = getelementptr inbounds nuw i8, ptr %.172, i64 128 ; 2 uses
  %i.t = add i64 %.15871, -128                    ; 3 uses
  %i.u = icmp ugt i64 %i.t, 128
  br i1 %i.u, label %bb.g, label %.thread, !llvm.loop !31

bb.h:                                             ; preds = %bb.f
  %i.v = and i64 %.057, -128                      ; 2 uses
  tail call fastcc void @sha512_process_block(ptr noundef %.056, i64 noundef %i.v, ptr noundef %2)
  %i.w = getelementptr inbounds nuw i8, ptr %.056, i64 %i.v
  %i.x = and i64 %.057, 127
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.259 = phi i64 [ %.057, %bb.e ], [ %i.x, %bb.h ] ; 2 uses
  %.2 = phi ptr [ %.056, %bb.e ], [ %i.w, %bb.h ]
  %.not65 = icmp eq i64 %.259, 0
  br i1 %.not65, label %bb.l, label %.thread

.thread:                                          ; preds = %bb.g, %.preheader, %bb.i
  %.270 = phi ptr [ %.2, %bb.i ], [ %.056, %.preheader ], [ %i.s, %bb.g ]
  %.25969 = phi i64 [ %.259, %bb.i ], [ 128, %.preheader ], [ %i.t, %bb.g ] ; 2 uses
  %i.y = load i64, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %.270, i64 %.25969, i1 false)
  %i.ab = add i64 %i.y, %.25969                   ; 3 uses
  %i.ac = icmp ugt i64 %i.ab, 127
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.thread
  tail call fastcc void @sha512_process_block(ptr noundef nonnull %i.z, i64 noundef 128, ptr noundef %2)
  %i.ad = add i64 %i.ab, -128                     ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 216
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.z, ptr nonnull align 8 %i.ae, i64 %i.ad, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread
  %.0 = phi i64 [ %i.ad, %bb.j ], [ %i.ab, %.thread ]
  store i64 %.0, ptr %i.a, align 8, !tbaa !20
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef nonnull ptr @sha512_finish_ctx(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull returned writeonly captures(ret: address, provenance) initializes((0, 64)) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16
  %i.e = add i64 %i.d, %i.b                       ; 5 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !16
  %i.f = icmp ult i64 %i.e, %i.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !16   ; 2 uses
  br i1 %i.f, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.i = add i64 %i.h, 1                          ; 2 uses
  store i64 %i.i, ptr %i.g, align 8, !tbaa !16
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %i.j = phi i64 [ %i.i, %bb.b ], [ %i.h, %bb.a ]
  %.inv = icmp ult i64 %i.b, 112
  %.v = select i1 %.inv, i64 112, i64 240         ; 3 uses
  %i.k = sub i64 %.v, %i.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull align 16 @fillbuf, i64 %i.k, i1 false)
  %i.n = shl i64 %i.e, 3
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.v
  %i.p = tail call i64 @llvm.fshl.i64(i64 %i.j, i64 %i.e, i64 3)
  %i.q = insertelement <2 x i64> poison, i64 %i.p, i64 0
  %i.r = insertelement <2 x i64> %i.q, i64 %i.e, i64 1 ; 5 uses
  %i.s = shl <2 x i64> %i.r, <i64 56, i64 59>
  %i.t = shl <2 x i64> %i.r, <i64 40, i64 43>
  %i.u = and <2 x i64> %i.t, splat (i64 71776119061217280)
  %i.v = or disjoint <2 x i64> %i.u, %i.s
  %i.w = shl <2 x i64> %i.r, <i64 24, i64 27>
  %i.x = and <2 x i64> %i.w, splat (i64 280375465082880)
  %i.y = or disjoint <2 x i64> %i.v, %i.x
  %i.z = shl <2 x i64> %i.r, <i64 8, i64 11>
  %i.aa = and <2 x i64> %i.z, splat (i64 1095216660480)
  %i.ab = or disjoint <2 x i64> %i.y, %i.aa
  %i.ac = insertelement <2 x i64> %i.r, i64 %i.n, i64 1 ; 4 uses
  %i.ad = lshr <2 x i64> %i.ac, splat (i64 8)
  %i.ae = and <2 x i64> %i.ad, splat (i64 4278190080)
  %i.af = or disjoint <2 x i64> %i.ab, %i.ae
  %i.ag = lshr <2 x i64> %i.ac, splat (i64 24)
  %i.ah = and <2 x i64> %i.ag, splat (i64 16711680)
  %i.ai = or disjoint <2 x i64> %i.af, %i.ah
  %i.aj = lshr <2 x i64> %i.ac, splat (i64 40)
  %i.ak = and <2 x i64> %i.aj, splat (i64 65280)
  %i.al = or disjoint <2 x i64> %i.ai, %i.ak
  %i.am = lshr <2 x i64> %i.ac, splat (i64 56)
  %i.an = or <2 x i64> %i.al, %i.am
  store <2 x i64> %i.an, ptr %i.o, align 1, !tbaa !16
  %i.ao = add nuw nsw i64 %.v, 16
  tail call fastcc void @sha512_process_block(ptr noundef nonnull %i.l, i64 noundef %i.ao, ptr noundef %0)
  %i.ap = load i64, ptr %0, align 8, !tbaa !16
  %i.aq = tail call i64 @llvm.bswap.i64(i64 %i.ap)
  store i64 %i.aq, ptr %1, align 8, !tbaa !16
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !16
  %i.at = tail call i64 @llvm.bswap.i64(i64 %i.as)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.at, ptr %i.au, align 8, !tbaa !16
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !16
  %i.ax = tail call i64 @llvm.bswap.i64(i64 %i.aw)
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !16
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !16
  %i.bb = tail call i64 @llvm.bswap.i64(i64 %i.ba)
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !16
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !16
  %i.bf = tail call i64 @llvm.bswap.i64(i64 %i.be)
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !16
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !16
  %i.bj = tail call i64 @llvm.bswap.i64(i64 %i.bi)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !16
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !16
  %i.bn = tail call i64 @llvm.bswap.i64(i64 %i.bm)
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !16
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !16
  %i.br = tail call i64 @llvm.bswap.i64(i64 %i.bq)
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !16
  ret ptr %1
}

declare ptr @__php_stpncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

declare i32 @ap_php_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

; Function Attrs: nounwind
declare void @explicit_bzero(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_efree(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define hidden noundef ptr @php_sha512_crypt(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %i.b = trunc i64 %i.a to i32
  %i.c = add i32 %i.b, 109                        ; 4 uses
  %i.d = load i32, ptr @php_sha512_crypt.buflen, align 4, !tbaa !18 ; 2 uses
  %i.e = icmp slt i32 %i.d, %i.c
  %.pre = load ptr, ptr @php_sha512_crypt.buffer, align 8, !tbaa !14 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %i.c to i64
  %i.g = tail call ptr @realloc(ptr noundef %.pre, i64 noundef %i.f) #15 ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.g, ptr @php_sha512_crypt.buffer, align 8, !tbaa !14
  store i32 %i.c, ptr @php_sha512_crypt.buflen, align 4, !tbaa !18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.h = phi i32 [ %i.c, %bb.c ], [ %i.d, %bb.a ]
  %i.i = phi ptr [ %i.g, %bb.c ], [ %.pre, %bb.a ]
  %i.j = tail call ptr @php_sha512_crypt_r(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.i, i32 noundef %i.h)
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.d
  %.1 = phi ptr [ %i.j, %bb.d ], [ null, %bb.b ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @sha512_process_block(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #5 {
bb.a:
  %i.a = alloca [80 x i64], align 16              ; 23 uses
  %i.b = lshr i64 %1, 3                           ; 2 uses
  %i.c = load i64, ptr %2, align 8, !tbaa !16     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !16   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !16   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !16   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !16   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !16   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !16   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !16   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !16
  %i.t = add i64 %i.s, %1                         ; 2 uses
  store i64 %i.t, ptr %i.r, align 8, !tbaa !16
  %i.u = icmp ult i64 %i.t, %1
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !16
  %i.x = add i64 %i.w, 1
  store i64 %i.x, ptr %i.v, align 8, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not152 = icmp eq i64 %i.b, 0
  br i1 %.not152, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.0162 = phi ptr [ %i.ei, %bb.e ], [ %0, %.lr.ph.preheader ] ; 17 uses
  %.0120161 = phi i64 [ %i.er, %bb.e ], [ %i.b, %.lr.ph.preheader ]
  %.0123160 = phi i64 [ %i.eq, %bb.e ], [ %i.q, %.lr.ph.preheader ] ; 2 uses
  %.0125159 = phi i64 [ %i.ep, %bb.e ], [ %i.o, %.lr.ph.preheader ] ; 2 uses
  %.0127158 = phi i64 [ %i.eo, %bb.e ], [ %i.m, %.lr.ph.preheader ] ; 2 uses
  %.0129157 = phi i64 [ %i.en, %bb.e ], [ %i.k, %.lr.ph.preheader ] ; 2 uses
  %.0131156 = phi i64 [ %i.em, %bb.e ], [ %i.i, %.lr.ph.preheader ] ; 2 uses
  %.0133155 = phi i64 [ %i.el, %bb.e ], [ %i.g, %.lr.ph.preheader ] ; 2 uses
  %.0135154 = phi i64 [ %i.ek, %bb.e ], [ %i.e, %.lr.ph.preheader ] ; 2 uses
  %.0137153 = phi i64 [ %i.ej, %bb.e ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.an = load i64, ptr %.0162, align 8, !tbaa !16
  %i.ao = tail call i64 @llvm.bswap.i64(i64 %i.an) ; 2 uses
  store i64 %i.ao, ptr %i.a, align 16, !tbaa !16
  %i.ap = getelementptr inbounds nuw i8, ptr %.0162, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !16
  %i.ar = tail call i64 @llvm.bswap.i64(i64 %i.aq)
  store i64 %i.ar, ptr %i.y, align 8, !tbaa !16
  %i.as = getelementptr inbounds nuw i8, ptr %.0162, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !16
  %i.au = tail call i64 @llvm.bswap.i64(i64 %i.at)
  store i64 %i.au, ptr %i.z, align 16, !tbaa !16
  %i.av = getelementptr inbounds nuw i8, ptr %.0162, i64 24
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !16
  %i.ax = tail call i64 @llvm.bswap.i64(i64 %i.aw)
  store i64 %i.ax, ptr %i.aa, align 8, !tbaa !16
  %i.ay = getelementptr inbounds nuw i8, ptr %.0162, i64 32
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !16
  %i.ba = tail call i64 @llvm.bswap.i64(i64 %i.az)
  store i64 %i.ba, ptr %i.ab, align 16, !tbaa !16
  %i.bb = getelementptr inbounds nuw i8, ptr %.0162, i64 40
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !16
  %i.bd = tail call i64 @llvm.bswap.i64(i64 %i.bc)
  store i64 %i.bd, ptr %i.ac, align 8, !tbaa !16
  %i.be = getelementptr inbounds nuw i8, ptr %.0162, i64 48
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !16
  %i.bg = tail call i64 @llvm.bswap.i64(i64 %i.bf)
  store i64 %i.bg, ptr %i.ad, align 16, !tbaa !16
  %i.bh = getelementptr inbounds nuw i8, ptr %.0162, i64 56
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !16
  %i.bj = tail call i64 @llvm.bswap.i64(i64 %i.bi)
  store i64 %i.bj, ptr %i.ae, align 8, !tbaa !16
  %i.bk = getelementptr inbounds nuw i8, ptr %.0162, i64 64
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !16
  %i.bm = tail call i64 @llvm.bswap.i64(i64 %i.bl)
  store i64 %i.bm, ptr %i.af, align 16, !tbaa !16
  %i.bn = getelementptr inbounds nuw i8, ptr %.0162, i64 72
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !16
  %i.bp = tail call i64 @llvm.bswap.i64(i64 %i.bo)
  store i64 %i.bp, ptr %i.ag, align 8, !tbaa !16
  %i.bq = getelementptr inbounds nuw i8, ptr %.0162, i64 80
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !16
  %i.bs = tail call i64 @llvm.bswap.i64(i64 %i.br)
  store i64 %i.bs, ptr %i.ah, align 16, !tbaa !16
  %i.bt = getelementptr inbounds nuw i8, ptr %.0162, i64 88
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !16
  %i.bv = tail call i64 @llvm.bswap.i64(i64 %i.bu)
  store i64 %i.bv, ptr %i.ai, align 8, !tbaa !16
  %i.bw = getelementptr inbounds nuw i8, ptr %.0162, i64 96
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !16
  %i.by = tail call i64 @llvm.bswap.i64(i64 %i.bx)
  store i64 %i.by, ptr %i.aj, align 16, !tbaa !16
  %i.bz = getelementptr inbounds nuw i8, ptr %.0162, i64 104
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !16
  %i.cb = tail call i64 @llvm.bswap.i64(i64 %i.ca)
  store i64 %i.cb, ptr %i.ak, align 8, !tbaa !16
  %i.cc = getelementptr inbounds nuw i8, ptr %.0162, i64 112
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !16
  %i.ce = tail call i64 @llvm.bswap.i64(i64 %i.cd)
  store i64 %i.ce, ptr %i.al, align 16, !tbaa !16
  %i.cf = getelementptr inbounds nuw i8, ptr %.0162, i64 120
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !16
  %i.ch = tail call i64 @llvm.bswap.i64(i64 %i.cg)
  store i64 %i.ch, ptr %i.am, align 8, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %3 = phi i64 [ %i.ao, %.lr.ph ], [ %i.cw, %bb.d ]
  %indvars.iv = phi i64 [ 16, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 5 uses
  %i.ci = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.cj = getelementptr i8, ptr %i.ci, i64 -16
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !16 ; 5 uses
  %i.cl = tail call i64 @llvm.fshl.i64(i64 %i.ck, i64 %i.ck, i64 45)
  %i.cm = tail call i64 @llvm.fshl.i64(i64 %i.ck, i64 %i.ck, i64 3)
  %i.cn = xor i64 %i.cl, %i.cm
  %i.co = lshr i64 %i.ck, 6
  %i.cp = xor i64 %i.cn, %i.co
  %i.cq = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.cr = getelementptr i8, ptr %i.cq, i64 -56
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !16
  %i.ct = add i64 %i.cp, %i.cs
  %i.cu = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.cv = getelementptr i8, ptr %i.cu, i64 -120
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !16 ; 6 uses
  %i.cx = tail call i64 @llvm.fshl.i64(i64 %i.cw, i64 %i.cw, i64 63)
  %i.cy = tail call i64 @llvm.fshl.i64(i64 %i.cw, i64 %i.cw, i64 56)
  %i.cz = xor i64 %i.cx, %i.cy
  %i.da = lshr i64 %i.cw, 7
  %i.db = xor i64 %i.cz, %i.da
  %i.dc = add i64 %i.ct, %3
  %i.dd = add i64 %i.dc, %i.db
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store i64 %i.dd, ptr %i.de, align 8, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 80
  br i1 %exitcond.not, label %.preheader, label %bb.d, !llvm.loop !32

.preheader:                                       ; preds = %bb.d, %.preheader
  %indvars.iv182 = phi i64 [ %indvars.iv.next183, %.preheader ], [ 0, %bb.d ] ; 3 uses
  %.1124150 = phi i64 [ %.1126149, %.preheader ], [ %.0123160, %bb.d ]
  %.1126149 = phi i64 [ %.1128148, %.preheader ], [ %.0125159, %bb.d ] ; 3 uses
  %.1128148 = phi i64 [ %.1130147, %.preheader ], [ %.0127158, %bb.d ] ; 3 uses
  %.1130147 = phi i64 [ %i.eg, %.preheader ], [ %.0129157, %bb.d ] ; 10 uses
  %.1132146 = phi i64 [ %.1134145, %.preheader ], [ %.0131156, %bb.d ]
  %.1134145 = phi i64 [ %.1136144, %.preheader ], [ %.0133155, %bb.d ] ; 4 uses
  %.1136144 = phi i64 [ %.1138143, %.preheader ], [ %.0135154, %bb.d ] ; 4 uses
  %.1138143 = phi i64 [ %i.eh, %.preheader ], [ %.0137153, %bb.d ] ; 9 uses
  %i.df = tail call i64 @llvm.fshl.i64(i64 %.1130147, i64 %.1130147, i64 50)
  %i.dg = tail call i64 @llvm.fshl.i64(i64 %.1130147, i64 %.1130147, i64 46)
  %i.dh = xor i64 %i.df, %i.dg
  %i.di = tail call i64 @llvm.fshl.i64(i64 %.1130147, i64 %.1130147, i64 23)
  %i.dj = xor i64 %i.dh, %i.di
  %i.dk = add i64 %.1124150, %i.dj
  %i.dl = and i64 %.1128148, %.1130147
  %i.dm = xor i64 %.1130147, -1
  %i.dn = and i64 %.1126149, %i.dm
  %i.do = or i64 %i.dn, %i.dl
  %i.dp = add i64 %i.dk, %i.do
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr @K, i64 %indvars.iv182
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !16
  %i.ds = add i64 %i.dp, %i.dr
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv182
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !16
  %i.dv = add i64 %i.ds, %i.du                    ; 2 uses
  %i.dw = tail call i64 @llvm.fshl.i64(i64 %.1138143, i64 %.1138143, i64 36)
  %i.dx = tail call i64 @llvm.fshl.i64(i64 %.1138143, i64 %.1138143, i64 30)
  %i.dy = xor i64 %i.dw, %i.dx
  %i.dz = tail call i64 @llvm.fshl.i64(i64 %.1138143, i64 %.1138143, i64 25)
  %i.ea = xor i64 %i.dy, %i.dz
  %i.eb = xor i64 %.1134145, %.1136144
  %i.ec = and i64 %i.eb, %.1138143
  %i.ed = and i64 %.1134145, %.1136144
  %i.ee = xor i64 %i.ec, %i.ed
  %i.ef = add i64 %i.ee, %i.ea
  %i.eg = add i64 %i.dv, %.1132146                ; 2 uses
  %i.eh = add i64 %i.ef, %i.dv                    ; 2 uses
  %indvars.iv.next183 = add nuw nsw i64 %indvars.iv182, 1 ; 2 uses
  %exitcond185.not = icmp eq i64 %indvars.iv.next183, 80
  br i1 %exitcond185.not, label %bb.e, label %.preheader, !llvm.loop !33

bb.e:                                             ; preds = %.preheader
  %i.ei = getelementptr inbounds nuw i8, ptr %.0162, i64 128
  %i.ej = add i64 %i.eh, %.0137153                ; 2 uses
  %i.ek = add i64 %.1138143, %.0135154            ; 2 uses
  %i.el = add i64 %.1136144, %.0133155            ; 2 uses
  %i.em = add i64 %.1134145, %.0131156            ; 2 uses
  %i.en = add i64 %i.eg, %.0129157                ; 2 uses
  %i.eo = add i64 %.1130147, %.0127158            ; 2 uses
  %i.ep = add i64 %.1128148, %.0125159            ; 2 uses
  %i.eq = add i64 %.1126149, %.0123160            ; 2 uses
  %i.er = add i64 %.0120161, -16                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.not = icmp eq i64 %i.er, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !34

._crit_edge:                                      ; preds = %bb.e, %bb.c
  %.0137.lcssa = phi i64 [ %i.c, %bb.c ], [ %i.ej, %bb.e ]
  %.0135.lcssa = phi i64 [ %i.e, %bb.c ], [ %i.ek, %bb.e ]
  %.0133.lcssa = phi i64 [ %i.g, %bb.c ], [ %i.el, %bb.e ]
  %.0131.lcssa = phi i64 [ %i.i, %bb.c ], [ %i.em, %bb.e ]
  %.0129.lcssa = phi i64 [ %i.k, %bb.c ], [ %i.en, %bb.e ]
  %.0127.lcssa = phi i64 [ %i.m, %bb.c ], [ %i.eo, %bb.e ]
  %.0125.lcssa = phi i64 [ %i.o, %bb.c ], [ %i.ep, %bb.e ]
  %.0123.lcssa = phi i64 [ %i.q, %bb.c ], [ %i.eq, %bb.e ]
  store i64 %.0137.lcssa, ptr %2, align 8, !tbaa !16
  store i64 %.0135.lcssa, ptr %i.d, align 8, !tbaa !16
  store i64 %.0133.lcssa, ptr %i.f, align 8, !tbaa !16
  store i64 %.0131.lcssa, ptr %i.h, align 8, !tbaa !16
  store i64 %.0129.lcssa, ptr %i.j, align 8, !tbaa !16
  store i64 %.0127.lcssa, ptr %i.l, align 8, !tbaa !16
  store i64 %.0125.lcssa, ptr %i.n, align 8, !tbaa !16
  store i64 %.0123.lcssa, ptr %i.p, align 8, !tbaa !16
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind willreturn memory(none) }
attributes #15 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"long", !8, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!9, !9, i64 0}
!19 = !{!"sha512_ctx", !8, i64 0, !8, i64 64, !15, i64 80, !8, i64 88}
!20 = !{!19, !15, i64 80}
!21 = distinct !{!21, !17}
!22 = distinct !{!22, !17}
!23 = distinct !{!23, !17}
!24 = distinct !{!24, !17}
!25 = distinct !{!25, !17}
!26 = distinct !{!26, !17}
!27 = !{!8, !8, i64 0}
!28 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!29 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!30 = !{!"branch_weights", i32 4001, i32 1}
!31 = distinct !{!31, !17}
!32 = distinct !{!32, !17}
!33 = distinct !{!33, !17}
!34 = distinct !{!34, !17}
end_hunk_0
