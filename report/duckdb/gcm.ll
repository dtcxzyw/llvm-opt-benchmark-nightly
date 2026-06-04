inline.NumInlined: 16
inline.NumDeleted: 6
begin_hunk_0_@mbedtls_gcm_setkey:bb.a
  %i.ak = call i64 @llvm.bswap.i64(i64 %i.aj)     ; 2 uses
  store i64 %i.ak, ptr %i.ah, align 1
  %sh.diff58.i = lshr i64 %i.ab, 49
  %tr.sh.diff59.i = trunc i64 %sh.diff58.i to i8
  %i.al = and i8 %tr.sh.diff59.i, -128
  %i.am = trunc i64 %i.ak to i8
  %i.an = or disjoint i8 %i.al, %i.am
  store i8 %i.an, ptr %i.ah, align 1, !tbaa !15
  %.0.copyload.i.i.1.i = load i64, ptr %i.p, align 1
  %i.ao = call i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.1.i) ; 6 uses
  %i.ap = lshr i64 %i.ao, 1
  %i.aq = call i64 @llvm.bswap.i64(i64 %i.ap)     ; 3 uses
  store i64 %i.aq, ptr %i.ag, align 1
  %i.ar = and i64 %.0.copyload.i10.i.1.i, 72057594037927936
  %.not.i.1.i = icmp eq i64 %i.ar, 0
  %i.as = select i1 %.not.i.1.i, i8 0, i8 -31
  %i.at = trunc i64 %i.aq to i8
  %i.au = xor i8 %i.as, %i.at
  store i8 %i.au, ptr %i.ag, align 1, !tbaa !15
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %.0.copyload.i10.i.2.i = load i64, ptr %i.ah, align 1 ; 2 uses
  %i.ax = call i64 @llvm.bswap.i64(i64 %.0.copyload.i10.i.2.i) ; 5 uses
  %i.ay = lshr i64 %i.ax, 1
  %i.az = call i64 @llvm.bswap.i64(i64 %i.ay)     ; 2 uses
  store i64 %i.az, ptr %i.aw, align 1
  %sh.diff60.i = lshr i64 %i.aq, 49
  %tr.sh.diff61.i = trunc i64 %sh.diff60.i to i8
  %i.ba = and i8 %tr.sh.diff61.i, -128
  %i.bb = trunc i64 %i.az to i8
  %i.bc = or disjoint i8 %i.ba, %i.bb
  store i8 %i.bc, ptr %i.aw, align 1, !tbaa !15
  %.0.copyload.i.i.2.i = load i64, ptr %i.ag, align 1
  %i.bd = call i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.2.i) ; 5 uses
  %i.be = lshr i64 %i.bd, 1
  %i.bf = call i64 @llvm.bswap.i64(i64 %i.be)     ; 2 uses
  store i64 %i.bf, ptr %i.av, align 1
  %i.bg = and i64 %.0.copyload.i10.i.2.i, 72057594037927936
  %.not.i.2.i = icmp eq i64 %i.bg, 0
  %i.bh = select i1 %.not.i.2.i, i8 0, i8 -31
  %i.bi = trunc i64 %i.bf to i8
  %i.bj = xor i8 %i.bh, %i.bi
  store i8 %i.bj, ptr %i.av, align 1, !tbaa !15
  store i64 %i.z, ptr %i.q, align 1
  store i64 %i.t, ptr %i.s, align 1
  store i64 %i.ao, ptr %i.p, align 1
  store i64 %i.ai, ptr %i.r, align 1
  store i64 %i.bd, ptr %i.ag, align 1
  store i64 %i.ax, ptr %i.ah, align 1
  %i.bk = load i64, ptr %i.av, align 8, !tbaa !7
  %i.bl = call i64 @llvm.bswap.i64(i64 %i.bk)     ; 4 uses
  store i64 %i.bl, ptr %i.av, align 8
  %i.bm = load i64, ptr %i.aw, align 8, !tbaa !7
  %i.bn = call i64 @llvm.bswap.i64(i64 %i.bm)     ; 4 uses
  store i64 %i.bn, ptr %i.aw, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bp = xor i64 %i.bl, %i.bd                    ; 3 uses
  store i64 %i.bp, ptr %i.bo, align 8
  %i.bq = xor i64 %i.bn, %i.ax                    ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %i.bq, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bt = xor i64 %i.bl, %i.ao                    ; 2 uses
  store i64 %i.bt, ptr %i.bs, align 8
  %i.bu = xor i64 %i.bn, %i.ai                    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %i.bu, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bx = xor i64 %i.bd, %i.ao                    ; 2 uses
  store i64 %i.bx, ptr %i.bw, align 8
  %i.by = xor i64 %i.ax, %i.ai                    ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %i.by, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.cb = xor i64 %i.bp, %i.ao                    ; 2 uses
  store i64 %i.cb, ptr %i.ca, align 8
  %i.cc = xor i64 %i.bq, %i.ai                    ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 %i.cc, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cf = xor i64 %i.bl, %i.z
  store i64 %i.cf, ptr %i.ce, align 8
  %i.cg = xor i64 %i.bn, %i.t
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 %i.cg, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.cj = xor i64 %i.bd, %i.z
  store i64 %i.cj, ptr %i.ci, align 8
  %i.ck = xor i64 %i.ax, %i.t
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 %i.ck, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.cn = xor i64 %i.bp, %i.z
  store i64 %i.cn, ptr %i.cm, align 8
  %i.co = xor i64 %i.bq, %i.t
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i64 %i.co, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.cr = xor i64 %i.ao, %i.z
  store i64 %i.cr, ptr %i.cq, align 8
  %i.cs = xor i64 %i.ai, %i.t
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 %i.cs, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.cv = xor i64 %i.bt, %i.z
  store i64 %i.cv, ptr %i.cu, align 8
  %i.cw = xor i64 %i.bu, %i.t
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i64 %i.cw, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.cz = xor i64 %i.bx, %i.z
  store i64 %i.cz, ptr %i.cy, align 8
  %i.da = xor i64 %i.by, %i.t
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i64 %i.da, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.dd = xor i64 %i.cb, %i.z
  store i64 %i.dd, ptr %i.dc, align 8
  %i.de = xor i64 %i.cc, %i.t
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i64 %i.de, ptr %i.df, align 8
  br label %_ZL13gcm_gen_tableP19mbedtls_gcm_context.exit

_ZL13gcm_gen_tableP19mbedtls_gcm_context.exit:    ; preds = %bb.e, %._crit_edge.2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %mbedtls_cipher_info_get_block_size.exit, %bb.c, %bb.d, %_ZL13gcm_gen_tableP19mbedtls_gcm_context.exit, %bb.a
  %.1 = phi i32 [ -20, %bb.a ], [ %i.i, %bb.d ], [ -20, %bb.b ], [ -20, %mbedtls_cipher_info_get_block_size.exit ], [ %i.h, %bb.c ], [ %i.j, %_ZL13gcm_gen_tableP19mbedtls_gcm_context.exit ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare ptr @mbedtls_cipher_info_from_values(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @mbedtls_cipher_free(ptr noundef) local_unnamed_addr #4

declare i32 @mbedtls_cipher_setup(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @mbedtls_cipher_setkey(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_gcm_starts(ptr noundef %0, i32 noundef %1, ptr noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i64 0, ptr %i.a, align 8, !tbaa !7
  %i.b = add i64 %3, -1
  %or.cond = icmp ult i64 %i.b, 2305843009213693951
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 15 uses
  %i.d = trunc i32 %1 to i8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 408
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  store i8 %i.d, ptr %i.e, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.g = icmp eq i64 %3, 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br i1 %i.g, label %bb.c, label %.lr.ph80

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.c, ptr noundef nonnull align 1 dereferenceable(12) %2, i64 12, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 391
  store i8 1, ptr %i.h, align 1, !tbaa !15
  br label %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit67

.lr.ph80:                                         ; preds = %bb.b
  %i.i = shl nuw i64 %3, 3
  %i.j = tail call i64 @llvm.bswap.i64(i64 %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 409
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 391
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 384
  %scevgep = getelementptr i8, ptr %0, i64 376
  %scevgep102 = getelementptr i8, ptr %0, i64 376
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph80, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit
  %.04079 = phi i64 [ %3, %.lr.ph80 ], [ %i.dj, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit ] ; 4 uses
  %.04178 = phi ptr [ %2, %.lr.ph80 ], [ %i.dk, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit ] ; 11 uses
  %i.p = tail call i64 @llvm.umin.i64(i64 %.04079, i64 16) ; 10 uses
  %.not.i4773 = icmp ult i64 %.04079, 8
  br i1 %.not.i4773, label %.preheader69, label %.lr.ph

.preheader69:                                     ; preds = %.lr.ph, %.lr.ph.1, %bb.d
  %.0.i46.lcssa = phi i64 [ 0, %bb.d ], [ 8, %.lr.ph ], [ 16, %.lr.ph.1 ] ; 8 uses
  %i.q = icmp samesign ult i64 %.0.i46.lcssa, %i.p
  br i1 %i.q, label %iter.check, label %_ZL11mbedtls_xorPhPKhS1_m.exit49

iter.check:                                       ; preds = %.preheader69
  %i.r = sub nuw nsw i64 %i.p, %.0.i46.lcssa      ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.r, 4
  br i1 %min.iters.check, label %.lr.ph76.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep101 = getelementptr i8, ptr %scevgep, i64 %.0.i46.lcssa
  %scevgep103 = getelementptr i8, ptr %scevgep102, i64 %i.p
  %scevgep104 = getelementptr i8, ptr %.04178, i64 %.0.i46.lcssa
  %scevgep105 = getelementptr i8, ptr %.04178, i64 %i.p
  %bound0 = icmp ult ptr %scevgep101, %scevgep105
  %bound1 = icmp ult ptr %scevgep104, %scevgep103
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph76.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %n.mod.vf110 = and i64 %i.p, 3                  ; 2 uses
  %n.vec111 = sub nsw i64 %i.r, %n.mod.vf110      ; 2 uses
  %i.s = add nsw i64 %.0.i46.lcssa, %n.vec111
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index112 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next115, %vec.epilog.vector.body ] ; 2 uses
  %i.t = add i64 %.0.i46.lcssa, %index112         ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.t ; 2 uses
  %wide.load113 = load <4 x i8>, ptr %i.u, align 1, !tbaa !15, !alias.scope !17, !noalias !20
  %i.v = getelementptr inbounds nuw i8, ptr %.04178, i64 %i.t
  %wide.load114 = load <4 x i8>, ptr %i.v, align 1, !tbaa !15, !alias.scope !20
  %4 = xor <4 x i8> %wide.load114, %wide.load113
  store <4 x i8> %4, ptr %i.u, align 1, !tbaa !15, !alias.scope !17, !noalias !20
  %index.next115 = add nuw i64 %index112, 4       ; 2 uses
  %i.w = icmp eq i64 %index.next115, %n.vec111
  br i1 %i.w, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !22

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n116 = icmp eq i64 %n.mod.vf110, 0
  br i1 %cmp.n116, label %_ZL11mbedtls_xorPhPKhS1_m.exit49, label %.lr.ph76.preheader

.lr.ph76.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.middle.block
  %.1.i4875.ph = phi i64 [ %.0.i46.lcssa, %vector.memcheck ], [ %.0.i46.lcssa, %iter.check ], [ %i.s, %vec.epilog.middle.block ] ; 4 uses
  %i.x = sub nsw i64 %i.p, %.1.i4875.ph
  %xtraiter = and i64 %i.x, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph76.prol.loopexit, label %.lr.ph76.prol

.lr.ph76.prol:                                    ; preds = %.lr.ph76.preheader, %.lr.ph76.prol
  %.1.i4875.prol = phi i64 [ %i.ad, %.lr.ph76.prol ], [ %.1.i4875.ph, %.lr.ph76.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph76.prol ], [ 0, %.lr.ph76.preheader ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 %.1.i4875.prol ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !15
  %i.aa = getelementptr inbounds nuw i8, ptr %.04178, i64 %.1.i4875.prol
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !15
  %i.ac = xor i8 %i.ab, %i.z
  store i8 %i.ac, ptr %i.y, align 1, !tbaa !15
  %i.ad = add nuw nsw i64 %.1.i4875.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph76.prol.loopexit, label %.lr.ph76.prol, !llvm.loop !26

.lr.ph76.prol.loopexit:                           ; preds = %.lr.ph76.prol, %.lr.ph76.preheader
  %.1.i4875.unr = phi i64 [ %.1.i4875.ph, %.lr.ph76.preheader ], [ %i.ad, %.lr.ph76.prol ]
  %i.ae = sub nsw i64 %.1.i4875.ph, %i.p
  %i.af = icmp ugt i64 %i.ae, -4
  br i1 %i.af, label %_ZL11mbedtls_xorPhPKhS1_m.exit49, label %.lr.ph76

.lr.ph:                                           ; preds = %bb.d
  %.0.copyload.i50 = load i64, ptr %i.c, align 8
  %.0.copyload.i = load i64, ptr %.04178, align 1
  %i.ag = xor i64 %.0.copyload.i, %.0.copyload.i50
  store i64 %i.ag, ptr %i.c, align 8
  %.not.i47 = icmp ult i64 %.04079, 16
  br i1 %.not.i47, label %.preheader69, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %.0.copyload.i50.1 = load i64, ptr %i.o, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.04178, i64 8
  %.0.copyload.i.1 = load i64, ptr %i.ah, align 1
  %i.ai = xor i64 %.0.copyload.i.1, %.0.copyload.i50.1
  store i64 %i.ai, ptr %i.o, align 8
  br label %.preheader69

.lr.ph76:                                         ; preds = %.lr.ph76.prol.loopexit, %.lr.ph76
  %.1.i4875 = phi i64 [ %i.bg, %.lr.ph76 ], [ %.1.i4875.unr, %.lr.ph76.prol.loopexit ] ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 %.1.i4875 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !15
  %i.al = getelementptr inbounds nuw i8, ptr %.04178, i64 %.1.i4875
  %i.am = load i8, ptr %i.al, align 1, !tbaa !15
  %i.an = xor i8 %i.am, %i.ak
  store i8 %i.an, ptr %i.aj, align 1, !tbaa !15
  %i.ao = add nuw nsw i64 %.1.i4875, 1            ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ao ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !15
  %i.ar = getelementptr inbounds nuw i8, ptr %.04178, i64 %i.ao
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !15
  %i.at = xor i8 %i.as, %i.aq
  store i8 %i.at, ptr %i.ap, align 1, !tbaa !15
  %i.au = add nuw nsw i64 %.1.i4875, 2            ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.au ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !15
  %i.ax = getelementptr inbounds nuw i8, ptr %.04178, i64 %i.au
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !15
  %i.az = xor i8 %i.ay, %i.aw
  store i8 %i.az, ptr %i.av, align 1, !tbaa !15
  %i.ba = add nuw nsw i64 %.1.i4875, 3            ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ba ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !15
  %i.bd = getelementptr inbounds nuw i8, ptr %.04178, i64 %i.ba
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !15
  %i.bf = xor i8 %i.be, %i.bc
  store i8 %i.bf, ptr %i.bb, align 1, !tbaa !15
  %i.bg = add nuw nsw i64 %.1.i4875, 4            ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bg, %i.p
  br i1 %exitcond.not.3, label %_ZL11mbedtls_xorPhPKhS1_m.exit49, label %.lr.ph76, !llvm.loop !28

_ZL11mbedtls_xorPhPKhS1_m.exit49:                 ; preds = %.lr.ph76.prol.loopexit, %.lr.ph76, %vec.epilog.middle.block, %.preheader69
  %i.bh = load i8, ptr %i.k, align 1, !tbaa !9
  %cond.i = icmp eq i8 %i.bh, 0
  br i1 %cond.i, label %bb.e, label %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit

bb.e:                                             ; preds = %_ZL11mbedtls_xorPhPKhS1_m.exit49
  %i.bi = load i8, ptr %i.m, align 1, !tbaa !15   ; 2 uses
  %i.bj = lshr i8 %i.bi, 4
  %i.bk = zext nneg i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.bk ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.0.copyload.i.1.i.i = load i64, ptr %i.bm, align 1
  %i.bn = and i8 %i.bi, 15
  %i.bo = zext nneg i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.bo ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !7  ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !7  ; 2 uses
  %i.bt = tail call i64 @llvm.fshl.i64(i64 %i.bq, i64 %i.bs, i64 60)
  %i.bu = xor i64 %i.bt, %.0.copyload.i.1.i.i
  %.0.copyload.i.i.i = load i64, ptr %i.bl, align 1
  %i.bv = and i64 %i.bs, 15
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.bv
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !29
  %i.by = zext i16 %i.bx to i64
  %i.bz = shl nuw i64 %i.by, 48
  %i.ca = lshr i64 %i.bq, 4
  %i.cb = xor i64 %.0.copyload.i.i.i, %i.ca
  %i.cc = xor i64 %i.cb, %i.bz
  br label %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i

_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i:       ; preds = %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i, %bb.e
  %.sroa.17.0.i.i = phi i64 [ %i.bu, %bb.e ], [ %i.dg, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i ] ; 2 uses
  %.sroa.0.0.i.i = phi i64 [ %i.cc, %bb.e ], [ %i.de, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ 14, %bb.e ], [ %indvars.iv.next.i.i, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !15  ; 2 uses
  %i.cf = and i8 %i.ce, 15
  %i.cg = and i64 %.sroa.17.0.i.i, 15
  %i.ch = tail call i64 @llvm.fshl.i64(i64 %.sroa.0.0.i.i, i64 %.sroa.17.0.i.i, i64 60)
  %i.ci = lshr i64 %.sroa.0.0.i.i, 4
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.cg
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !29
  %i.cl = zext i16 %i.ck to i64
  %i.cm = shl nuw i64 %i.cl, 48
  %i.cn = zext nneg i8 %i.cf to i64
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.cn ; 2 uses
  %.0.copyload.i37.i.i = load i64, ptr %i.co, align 1
  %i.cp = xor i64 %.0.copyload.i37.i.i, %i.ci     ; 2 uses
  %i.cq = xor i64 %i.cp, %i.cm
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %.0.copyload.i37.1.i.i = load i64, ptr %i.cr, align 1
  %i.cs = xor i64 %.0.copyload.i37.1.i.i, %i.ch   ; 2 uses
  %i.ct = lshr i8 %i.ce, 4
  %i.cu = and i64 %i.cs, 15
  %i.cv = tail call i64 @llvm.fshl.i64(i64 %i.cp, i64 %i.cs, i64 60)
  %i.cw = lshr i64 %i.cq, 4
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.cu
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !29
  %i.cz = zext i16 %i.cy to i64
  %i.da = shl nuw i64 %i.cz, 48
  %i.db = zext nneg i8 %i.ct to i64
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.db ; 2 uses
  %.0.copyload.i39.i.i = load i64, ptr %i.dc, align 1
  %i.dd = xor i64 %i.cw, %.0.copyload.i39.i.i
  %i.de = xor i64 %i.dd, %i.da                    ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %.0.copyload.i39.1.i.i = load i64, ptr %i.df, align 1
  %i.dg = xor i64 %.0.copyload.i39.1.i.i, %i.cv   ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  %.not.i.i = icmp eq i64 %indvars.iv.i.i, 0
  br i1 %.not.i.i, label %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i, label %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i, !llvm.loop !31

_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i:        ; preds = %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i
  %i.dh = tail call i64 @llvm.bswap.i64(i64 %i.de)
  store i64 %i.dh, ptr %i.c, align 8
  %i.di = tail call i64 @llvm.bswap.i64(i64 %i.dg)
  store i64 %i.di, ptr %i.n, align 8
  br label %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit

_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit:     ; preds = %_ZL11mbedtls_xorPhPKhS1_m.exit49, %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i
  %i.dj = sub i64 %.04079, %i.p                   ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.04178, i64 %i.p
  %.not44 = icmp eq i64 %i.dj, 0
  br i1 %.not44, label %_ZL11mbedtls_xorPhPKhS1_m.exit, label %bb.d, !llvm.loop !32

_ZL11mbedtls_xorPhPKhS1_m.exit:                   ; preds = %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 384
  %.0.copyload.i52.1.pre = load i64, ptr %.phi.trans.insert, align 8
  %i.dl = xor i64 %i.j, %.0.copyload.i52.1.pre    ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i64 %i.dl, ptr %i.dm, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 409
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !9
  %cond.i53 = icmp eq i8 %i.do, 0
  br i1 %cond.i53, label %bb.f, label %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit67

bb.f:                                             ; preds = %_ZL11mbedtls_xorPhPKhS1_m.exit
  %i.dp = lshr i64 %i.dl, 56
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.dr = lshr i64 %i.dl, 60
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.dq, i64 %i.dr ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %.0.copyload.i.1.i.i54 = load i64, ptr %i.dt, align 1
  %i.du = and i64 %i.dp, 15
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.dq, i64 %i.du ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !7  ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !7  ; 2 uses
  %i.dz = tail call i64 @llvm.fshl.i64(i64 %i.dw, i64 %i.dy, i64 60)
  %i.ea = xor i64 %i.dz, %.0.copyload.i.1.i.i54
  %.0.copyload.i.i.i55 = load i64, ptr %i.ds, align 1
  %i.eb = and i64 %i.dy, 15
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.eb
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !29
  %i.ee = zext i16 %i.ed to i64
  %i.ef = shl nuw i64 %i.ee, 48
end_hunk_0
begin_hunk_1_@mbedtls_gcm_starts:bb.a
  %i.ei = xor i64 %i.eh, %i.ef
  br label %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i56

_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i56:     ; preds = %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i56, %bb.f
  %.sroa.17.0.i.i57 = phi i64 [ %i.ea, %bb.f ], [ %i.fm, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i56 ] ; 2 uses
  %.sroa.0.0.i.i58 = phi i64 [ %i.ei, %bb.f ], [ %i.fk, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i56 ] ; 2 uses
  %indvars.iv.i.i59 = phi i64 [ 14, %bb.f ], [ %indvars.iv.next.i.i64, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i56 ] ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i59
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !15  ; 2 uses
  %i.el = and i8 %i.ek, 15
  %i.em = and i64 %.sroa.17.0.i.i57, 15
  %i.en = tail call i64 @llvm.fshl.i64(i64 %.sroa.0.0.i.i58, i64 %.sroa.17.0.i.i57, i64 60)
  %i.eo = lshr i64 %.sroa.0.0.i.i58, 4
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.em
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !29
  %i.er = zext i16 %i.eq to i64
  %i.es = shl nuw i64 %i.er, 48
  %i.et = zext nneg i8 %i.el to i64
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.dq, i64 %i.et ; 2 uses
  %.0.copyload.i37.i.i60 = load i64, ptr %i.eu, align 1
  %i.ev = xor i64 %.0.copyload.i37.i.i60, %i.eo   ; 2 uses
  %i.ew = xor i64 %i.ev, %i.es
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %.0.copyload.i37.1.i.i61 = load i64, ptr %i.ex, align 1
  %i.ey = xor i64 %.0.copyload.i37.1.i.i61, %i.en ; 2 uses
  %i.ez = lshr i8 %i.ek, 4
  %i.fa = and i64 %i.ey, 15
  %i.fb = tail call i64 @llvm.fshl.i64(i64 %i.ev, i64 %i.ey, i64 60)
  %i.fc = lshr i64 %i.ew, 4
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.fa
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !29
  %i.ff = zext i16 %i.fe to i64
  %i.fg = shl nuw i64 %i.ff, 48
  %i.fh = zext nneg i8 %i.ez to i64
  %i.fi = getelementptr inbounds nuw [16 x i8], ptr %i.dq, i64 %i.fh ; 2 uses
  %.0.copyload.i39.i.i62 = load i64, ptr %i.fi, align 1
  %i.fj = xor i64 %i.fc, %.0.copyload.i39.i.i62
  %i.fk = xor i64 %i.fj, %i.fg                    ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %.0.copyload.i39.1.i.i63 = load i64, ptr %i.fl, align 1
  %i.fm = xor i64 %.0.copyload.i39.1.i.i63, %i.fb ; 2 uses
  %indvars.iv.next.i.i64 = add nsw i64 %indvars.iv.i.i59, -1
  %.not.i.i65 = icmp eq i64 %indvars.iv.i.i59, 0
  br i1 %.not.i.i65, label %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i66, label %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i56, !llvm.loop !31

_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i66:      ; preds = %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i56
  %i.fn = tail call i64 @llvm.bswap.i64(i64 %i.fk)
  store i64 %i.fn, ptr %i.c, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.fp = tail call i64 @llvm.bswap.i64(i64 %i.fm)
  store i64 %i.fp, ptr %i.fo, align 8
  br label %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit67

_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit67:   ; preds = %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i66, %_ZL11mbedtls_xorPhPKhS1_m.exit, %bb.c
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.fr = call i32 @mbedtls_cipher_update(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef 16, ptr noundef nonnull %i.fq, ptr noundef nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit67, %bb.a
  %.0 = phi i32 [ -20, %bb.a ], [ %i.fr, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit67 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL8gcm_multP19mbedtls_gcm_contextPKhPh(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef writeonly captures(none) %2) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 409
  %i.b = load i8, ptr %i.a, align 1, !tbaa !9
  %cond = icmp eq i8 %i.b, 0
  br i1 %cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.e = load i8, ptr %i.d, align 1, !tbaa !15    ; 2 uses
  %i.f = lshr i8 %i.e, 4
  %i.g = zext nneg i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.0.copyload.i.1.i = load i64, ptr %i.i, align 1
  %i.j = and i8 %i.e, 15
  %i.k = zext nneg i8 %i.j to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.k ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !7    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !7    ; 2 uses
  %i.p = tail call i64 @llvm.fshl.i64(i64 %i.m, i64 %i.o, i64 60)
  %i.q = xor i64 %i.p, %.0.copyload.i.1.i
  %.0.copyload.i.i = load i64, ptr %i.h, align 1
  %i.r = and i64 %i.o, 15
  %i.s = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !29
  %i.u = zext i16 %i.t to i64
  %i.v = shl nuw i64 %i.u, 48
  %i.w = lshr i64 %i.m, 4
  %i.x = xor i64 %.0.copyload.i.i, %i.w
  %i.y = xor i64 %i.x, %i.v
  br label %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i

_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i:         ; preds = %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i, %bb.b
  %.sroa.17.0.i = phi i64 [ %i.q, %bb.b ], [ %i.bc, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %i.y, %bb.b ], [ %i.ba, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ 14, %bb.b ], [ %indvars.iv.next.i, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !15   ; 2 uses
  %i.ab = and i8 %i.aa, 15
  %i.ac = and i64 %.sroa.17.0.i, 15
  %i.ad = tail call i64 @llvm.fshl.i64(i64 %.sroa.0.0.i, i64 %.sroa.17.0.i, i64 60)
  %i.ae = lshr i64 %.sroa.0.0.i, 4
  %i.af = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.ac
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !29
  %i.ah = zext i16 %i.ag to i64
  %i.ai = shl nuw i64 %i.ah, 48
  %i.aj = zext nneg i8 %i.ab to i64
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.aj ; 2 uses
  %.0.copyload.i37.i = load i64, ptr %i.ak, align 1
  %i.al = xor i64 %.0.copyload.i37.i, %i.ae       ; 2 uses
  %i.am = xor i64 %i.al, %i.ai
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.0.copyload.i37.1.i = load i64, ptr %i.an, align 1
  %i.ao = xor i64 %.0.copyload.i37.1.i, %i.ad     ; 2 uses
  %i.ap = lshr i8 %i.aa, 4
  %i.aq = and i64 %i.ao, 15
  %i.ar = tail call i64 @llvm.fshl.i64(i64 %i.al, i64 %i.ao, i64 60)
  %i.as = lshr i64 %i.am, 4
  %i.at = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.aq
  %i.au = load i16, ptr %i.at, align 2, !tbaa !29
  %i.av = zext i16 %i.au to i64
  %i.aw = shl nuw i64 %i.av, 48
  %i.ax = zext nneg i8 %i.ap to i64
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.ax ; 2 uses
  %.0.copyload.i39.i = load i64, ptr %i.ay, align 1
  %i.az = xor i64 %i.as, %.0.copyload.i39.i
  %i.ba = xor i64 %i.az, %i.aw                    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.0.copyload.i39.1.i = load i64, ptr %i.bb, align 1
  %i.bc = xor i64 %.0.copyload.i39.1.i, %i.ar     ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %.not.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not.i, label %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit, label %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i, !llvm.loop !31

_ZL19gcm_mult_smalltablePhPKhPA2_m.exit:          ; preds = %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i
  %i.bd = tail call i64 @llvm.bswap.i64(i64 %i.ba)
  store i64 %i.bd, ptr %2, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bf = tail call i64 @llvm.bswap.i64(i64 %i.bc)
  store i64 %i.bf, ptr %i.be, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit
  ret void
}

declare i32 @mbedtls_cipher_update(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden range(i32 -20, 1) i32 @mbedtls_gcm_update_ad(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !33   ; 4 uses
  %i.c = add i64 %i.b, %2                         ; 3 uses
  %i.d = icmp uge i64 %i.c, %i.b
  %.not = icmp ult i64 %i.c, 2305843009213693952
  %or.cond = and i1 %i.d, %.not
  br i1 %or.cond, label %bb.b, label %_ZL11mbedtls_xorPhPKhS1_m.exit

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.b, 15                         ; 6 uses
  %.not54 = icmp eq i64 %i.e, 0
  br i1 %.not54, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = sub nuw nsw i64 16, %i.e
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %2) ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.e ; 8 uses
  %.not.i6189 = icmp samesign ult i64 %spec.select, 8
  br i1 %.not.i6189, label %.preheader85, label %.preheader85.loopexit

.preheader85.loopexit:                            ; preds = %bb.c
  %.0.copyload.i64 = load i64, ptr %i.h, align 1
  %.0.copyload.i = load i64, ptr %1, align 1
  %i.i = xor i64 %.0.copyload.i, %.0.copyload.i64
  store i64 %i.i, ptr %i.h, align 1
  br label %.preheader85

.preheader85:                                     ; preds = %.preheader85.loopexit, %bb.c
  %.0.i60.lcssa = phi i64 [ 0, %bb.c ], [ 8, %.preheader85.loopexit ] ; 8 uses
  %i.j = icmp samesign ult i64 %.0.i60.lcssa, %spec.select
  br i1 %i.j, label %iter.check, label %_ZL11mbedtls_xorPhPKhS1_m.exit63

iter.check:                                       ; preds = %.preheader85
  %i.k = sub nuw nsw i64 %spec.select, %.0.i60.lcssa ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.k, 4
  br i1 %min.iters.check, label %.lr.ph92.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.l = getelementptr i8, ptr %0, i64 %.0.i60.lcssa
  %i.m = getelementptr i8, ptr %i.l, i64 %i.e
  %scevgep = getelementptr i8, ptr %i.m, i64 392
  %i.n = getelementptr i8, ptr %0, i64 %spec.select
  %i.o = getelementptr i8, ptr %i.n, i64 %i.e
  %scevgep134 = getelementptr i8, ptr %i.o, i64 392
  %scevgep135 = getelementptr i8, ptr %1, i64 %.0.i60.lcssa
  %scevgep136 = getelementptr i8, ptr %1, i64 %spec.select
  %bound0 = icmp ult ptr %scevgep, %scevgep136
  %bound1 = icmp ult ptr %scevgep135, %scevgep134
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph92.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %n.mod.vf141 = and i64 %spec.select, 3          ; 2 uses
  %n.vec142 = sub nsw i64 %i.k, %n.mod.vf141      ; 2 uses
  %i.p = add nsw i64 %.0.i60.lcssa, %n.vec142
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index143 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next146, %vec.epilog.vector.body ] ; 2 uses
  %i.q = add i64 %.0.i60.lcssa, %index143         ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.q ; 2 uses
  %wide.load144 = load <4 x i8>, ptr %i.r, align 1, !tbaa !15, !alias.scope !34, !noalias !37
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %wide.load145 = load <4 x i8>, ptr %i.s, align 1, !tbaa !15, !alias.scope !37
  %3 = xor <4 x i8> %wide.load145, %wide.load144
  store <4 x i8> %3, ptr %i.r, align 1, !tbaa !15, !alias.scope !34, !noalias !37
  %index.next146 = add nuw i64 %index143, 4       ; 2 uses
  %i.t = icmp eq i64 %index.next146, %n.vec142
  br i1 %i.t, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !39

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n147 = icmp eq i64 %n.mod.vf141, 0
  br i1 %cmp.n147, label %_ZL11mbedtls_xorPhPKhS1_m.exit63, label %.lr.ph92.preheader

.lr.ph92.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.middle.block
  %.1.i6291.ph = phi i64 [ %.0.i60.lcssa, %vector.memcheck ], [ %.0.i60.lcssa, %iter.check ], [ %i.p, %vec.epilog.middle.block ] ; 4 uses
  %i.u = sub nsw i64 %spec.select, %.1.i6291.ph
  %xtraiter = and i64 %i.u, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph92.prol.loopexit, label %.lr.ph92.prol

.lr.ph92.prol:                                    ; preds = %.lr.ph92.preheader, %.lr.ph92.prol
  %.1.i6291.prol = phi i64 [ %i.aa, %.lr.ph92.prol ], [ %.1.i6291.ph, %.lr.ph92.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph92.prol ], [ 0, %.lr.ph92.preheader ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 %.1.i6291.prol ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %.1.i6291.prol
  %i.y = load i8, ptr %i.x, align 1, !tbaa !15
  %i.z = xor i8 %i.y, %i.w
  store i8 %i.z, ptr %i.v, align 1, !tbaa !15
  %i.aa = add nuw nsw i64 %.1.i6291.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph92.prol.loopexit, label %.lr.ph92.prol, !llvm.loop !40

.lr.ph92.prol.loopexit:                           ; preds = %.lr.ph92.prol, %.lr.ph92.preheader
  %.1.i6291.unr = phi i64 [ %.1.i6291.ph, %.lr.ph92.preheader ], [ %i.aa, %.lr.ph92.prol ]
  %i.ab = sub nsw i64 %.1.i6291.ph, %spec.select
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %_ZL11mbedtls_xorPhPKhS1_m.exit63, label %.lr.ph92

.lr.ph92:                                         ; preds = %.lr.ph92.prol.loopexit, %.lr.ph92
  %.1.i6291 = phi i64 [ %i.ba, %.lr.ph92 ], [ %.1.i6291.unr, %.lr.ph92.prol.loopexit ] ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 %.1.i6291 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !15
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.1.i6291
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !15
  %i.ah = xor i8 %i.ag, %i.ae
  store i8 %i.ah, ptr %i.ad, align 1, !tbaa !15
  %i.ai = add nuw nsw i64 %.1.i6291, 1            ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ai ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !15
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %i.ai
  %i.am = load i8, ptr %i.al, align 1, !tbaa !15
  %i.an = xor i8 %i.am, %i.ak
  store i8 %i.an, ptr %i.aj, align 1, !tbaa !15
  %i.ao = add nuw nsw i64 %.1.i6291, 2            ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ao ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !15
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %i.ao
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !15
  %i.at = xor i8 %i.as, %i.aq
  store i8 %i.at, ptr %i.ap, align 1, !tbaa !15
  %i.au = add nuw nsw i64 %.1.i6291, 3            ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.au ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !15
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %i.au
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !15
  %i.az = xor i8 %i.ay, %i.aw
  store i8 %i.az, ptr %i.av, align 1, !tbaa !15
  %i.ba = add nuw nsw i64 %.1.i6291, 4            ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ba, %spec.select
  br i1 %exitcond.not.3, label %_ZL11mbedtls_xorPhPKhS1_m.exit63, label %.lr.ph92, !llvm.loop !41

_ZL11mbedtls_xorPhPKhS1_m.exit63:                 ; preds = %.lr.ph92.prol.loopexit, %.lr.ph92, %vec.epilog.middle.block, %.preheader85
  %i.bb = add nuw nsw i64 %spec.select, %i.e
  %i.bc = icmp eq i64 %i.bb, 16
  br i1 %i.bc, label %bb.d, label %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit

bb.d:                                             ; preds = %_ZL11mbedtls_xorPhPKhS1_m.exit63
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 409
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !9
  %cond.i = icmp eq i8 %i.be, 0
  br i1 %cond.i, label %bb.e, label %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit

bb.e:                                             ; preds = %bb.d
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 407
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !15  ; 2 uses
  %i.bi = lshr i8 %i.bh, 4
  %i.bj = zext nneg i8 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.bj ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.0.copyload.i.1.i.i = load i64, ptr %i.bl, align 1
  %i.bm = and i8 %i.bh, 15
  %i.bn = zext nneg i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.bn ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !7  ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !7  ; 2 uses
  %i.bs = tail call i64 @llvm.fshl.i64(i64 %i.bp, i64 %i.br, i64 60)
  %i.bt = xor i64 %i.bs, %.0.copyload.i.1.i.i
  %.0.copyload.i.i.i = load i64, ptr %i.bk, align 1
  %i.bu = and i64 %i.br, 15
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.bu
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !29
  %i.bx = zext i16 %i.bw to i64
  %i.by = shl nuw i64 %i.bx, 48
  %i.bz = lshr i64 %i.bp, 4
  %i.ca = xor i64 %.0.copyload.i.i.i, %i.bz
  %i.cb = xor i64 %i.ca, %i.by
  br label %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i

_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i:       ; preds = %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i, %bb.e
  %.sroa.17.0.i.i = phi i64 [ %i.bt, %bb.e ], [ %i.df, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i ] ; 2 uses
  %.sroa.0.0.i.i = phi i64 [ %i.cb, %bb.e ], [ %i.dd, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ 14, %bb.e ], [ %indvars.iv.next.i.i, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.i
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !15  ; 2 uses
  %i.ce = and i8 %i.cd, 15
  %i.cf = and i64 %.sroa.17.0.i.i, 15
  %i.cg = tail call i64 @llvm.fshl.i64(i64 %.sroa.0.0.i.i, i64 %.sroa.17.0.i.i, i64 60)
  %i.ch = lshr i64 %.sroa.0.0.i.i, 4
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.cf
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !29
  %i.ck = zext i16 %i.cj to i64
  %i.cl = shl nuw i64 %i.ck, 48
  %i.cm = zext nneg i8 %i.ce to i64
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.cm ; 2 uses
  %.0.copyload.i37.i.i = load i64, ptr %i.cn, align 1
  %i.co = xor i64 %.0.copyload.i37.i.i, %i.ch     ; 2 uses
  %i.cp = xor i64 %i.co, %i.cl
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %.0.copyload.i37.1.i.i = load i64, ptr %i.cq, align 1
  %i.cr = xor i64 %.0.copyload.i37.1.i.i, %i.cg   ; 2 uses
  %i.cs = lshr i8 %i.cd, 4
  %i.ct = and i64 %i.cr, 15
  %i.cu = tail call i64 @llvm.fshl.i64(i64 %i.co, i64 %i.cr, i64 60)
  %i.cv = lshr i64 %i.cp, 4
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.ct
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !29
  %i.cy = zext i16 %i.cx to i64
  %i.cz = shl nuw i64 %i.cy, 48
  %i.da = zext nneg i8 %i.cs to i64
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.da ; 2 uses
  %.0.copyload.i39.i.i = load i64, ptr %i.db, align 1
  %i.dc = xor i64 %i.cv, %.0.copyload.i39.i.i
  %i.dd = xor i64 %i.dc, %i.cz                    ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %.0.copyload.i39.1.i.i = load i64, ptr %i.de, align 1
  %i.df = xor i64 %.0.copyload.i39.1.i.i, %i.cu   ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  %.not.i.i = icmp eq i64 %indvars.iv.i.i, 0
  br i1 %.not.i.i, label %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i, label %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i, !llvm.loop !31

_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i:        ; preds = %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i
  %i.dg = tail call i64 @llvm.bswap.i64(i64 %i.dd)
  store i64 %i.dg, ptr %i.g, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.di = tail call i64 @llvm.bswap.i64(i64 %i.df)
  store i64 %i.di, ptr %i.dh, align 8
  br label %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit

_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit:     ; preds = %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i, %bb.d, %_ZL11mbedtls_xorPhPKhS1_m.exit63
  %i.dj = sub i64 %2, %spec.select
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select
  %.pre = add i64 %2, %i.b
  br label %bb.f

bb.f:                                             ; preds = %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit, %bb.b
  %.pre-phi = phi i64 [ %.pre, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit ], [ %i.c, %bb.b ]
  %.047 = phi ptr [ %i.dk, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit ], [ %1, %bb.b ] ; 2 uses
  %.045 = phi i64 [ %i.dj, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit ], [ %2, %bb.b ] ; 3 uses
  store i64 %.pre-phi, ptr %i.a, align 8, !tbaa !33
  %i.dl = icmp ugt i64 %.045, 15
  br i1 %i.dl, label %.lr.ph98, label %._crit_edge

.lr.ph98:                                         ; preds = %bb.f
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 409
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 400
  %.0.copyload.i66.pre = load i64, ptr %i.dm, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %.0.copyload.i66.1.pre = load i64, ptr %.phi.trans.insert, align 8
  %i.dq = load i8, ptr %i.dn, align 1, !tbaa !9
  %cond.i69 = icmp eq i8 %i.dq, 0
  br label %_ZL11mbedtls_xorPhPKhS1_m.exit59

_ZL11mbedtls_xorPhPKhS1_m.exit59:                 ; preds = %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit83, %.lr.ph98
  %.0.copyload.i66.1 = phi i64 [ %.0.copyload.i66.1.pre, %.lr.ph98 ], [ %.0.copyload.i66.1118, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit83 ]
  %.0.copyload.i66 = phi i64 [ %.0.copyload.i66.pre, %.lr.ph98 ], [ %.0.copyload.i66116, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit83 ]
  %.197 = phi i64 [ %.045, %.lr.ph98 ], [ %i.ft, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit83 ]
  %.14896 = phi ptr [ %.047, %.lr.ph98 ], [ %i.fu, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit83 ] ; 3 uses
  %.0.copyload.i65 = load i64, ptr %.14896, align 1
  %i.dr = xor i64 %.0.copyload.i65, %.0.copyload.i66 ; 2 uses
  store i64 %i.dr, ptr %i.dm, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %.14896, i64 8
  %.0.copyload.i65.1 = load i64, ptr %i.ds, align 1
  %i.dt = xor i64 %.0.copyload.i65.1, %.0.copyload.i66.1 ; 4 uses
  store i64 %i.dt, ptr %.phi.trans.insert, align 8
  br i1 %cond.i69, label %bb.g, label %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit83

bb.g:                                             ; preds = %_ZL11mbedtls_xorPhPKhS1_m.exit59
  %i.du = lshr i64 %i.dt, 56
  %i.dv = lshr i64 %i.dt, 60
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %i.dv ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %.0.copyload.i.1.i.i70 = load i64, ptr %i.dx, align 1
  %i.dy = and i64 %i.du, 15
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %i.dy ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !7  ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !7  ; 2 uses
  %i.ed = tail call i64 @llvm.fshl.i64(i64 %i.ea, i64 %i.ec, i64 60)
  %i.ee = xor i64 %i.ed, %.0.copyload.i.1.i.i70
  %.0.copyload.i.i.i71 = load i64, ptr %i.dw, align 1
  %i.ef = and i64 %i.ec, 15
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.ef
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !29
  %i.ei = zext i16 %i.eh to i64
  %i.ej = shl nuw i64 %i.ei, 48
  %i.ek = lshr i64 %i.ea, 4
  %i.el = xor i64 %.0.copyload.i.i.i71, %i.ek
  %i.em = xor i64 %i.el, %i.ej
  br label %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i72

_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i72:     ; preds = %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i72, %bb.g
  %.sroa.17.0.i.i73 = phi i64 [ %i.ee, %bb.g ], [ %i.fq, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i72 ] ; 2 uses
  %.sroa.0.0.i.i74 = phi i64 [ %i.em, %bb.g ], [ %i.fo, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i72 ] ; 2 uses
  %indvars.iv.i.i75 = phi i64 [ 14, %bb.g ], [ %indvars.iv.next.i.i80, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i72 ] ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.dm, i64 %indvars.iv.i.i75
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !15  ; 2 uses
  %i.ep = and i8 %i.eo, 15
  %i.eq = and i64 %.sroa.17.0.i.i73, 15
  %i.er = tail call i64 @llvm.fshl.i64(i64 %.sroa.0.0.i.i74, i64 %.sroa.17.0.i.i73, i64 60)
  %i.es = lshr i64 %.sroa.0.0.i.i74, 4
  %i.et = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.eq
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !29
  %i.ev = zext i16 %i.eu to i64
  %i.ew = shl nuw i64 %i.ev, 48
  %i.ex = zext nneg i8 %i.ep to i64
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %i.ex ; 2 uses
  %.0.copyload.i37.i.i76 = load i64, ptr %i.ey, align 1
  %i.ez = xor i64 %.0.copyload.i37.i.i76, %i.es   ; 2 uses
  %i.fa = xor i64 %i.ez, %i.ew
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %.0.copyload.i37.1.i.i77 = load i64, ptr %i.fb, align 1
  %i.fc = xor i64 %.0.copyload.i37.1.i.i77, %i.er ; 2 uses
  %i.fd = lshr i8 %i.eo, 4
  %i.fe = and i64 %i.fc, 15
  %i.ff = tail call i64 @llvm.fshl.i64(i64 %i.ez, i64 %i.fc, i64 60)
  %i.fg = lshr i64 %i.fa, 4
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.fe
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !29
  %i.fj = zext i16 %i.fi to i64
  %i.fk = shl nuw i64 %i.fj, 48
  %i.fl = zext nneg i8 %i.fd to i64
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %i.fl ; 2 uses
  %.0.copyload.i39.i.i78 = load i64, ptr %i.fm, align 1
  %i.fn = xor i64 %i.fg, %.0.copyload.i39.i.i78
  %i.fo = xor i64 %i.fn, %i.fk                    ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %.0.copyload.i39.1.i.i79 = load i64, ptr %i.fp, align 1
  %i.fq = xor i64 %.0.copyload.i39.1.i.i79, %i.ff ; 2 uses
  %indvars.iv.next.i.i80 = add nsw i64 %indvars.iv.i.i75, -1
  %.not.i.i81 = icmp eq i64 %indvars.iv.i.i75, 0
  br i1 %.not.i.i81, label %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i82, label %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i72, !llvm.loop !31

_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i82:      ; preds = %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i72
  %i.fr = tail call i64 @llvm.bswap.i64(i64 %i.fo) ; 2 uses
  store i64 %i.fr, ptr %i.dm, align 8
  %i.fs = tail call i64 @llvm.bswap.i64(i64 %i.fq) ; 2 uses
  store i64 %i.fs, ptr %i.dp, align 8
  br label %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit83

_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit83:   ; preds = %_ZL11mbedtls_xorPhPKhS1_m.exit59, %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i82
  %.0.copyload.i66.1118 = phi i64 [ %i.dt, %_ZL11mbedtls_xorPhPKhS1_m.exit59 ], [ %i.fs, %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i82 ]
  %.0.copyload.i66116 = phi i64 [ %i.dr, %_ZL11mbedtls_xorPhPKhS1_m.exit59 ], [ %i.fr, %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i82 ]
  %i.ft = add i64 %.197, -16                      ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.14896, i64 16 ; 2 uses
  %i.fv = icmp ugt i64 %i.ft, 15
  br i1 %i.fv, label %_ZL11mbedtls_xorPhPKhS1_m.exit59, label %._crit_edge, !llvm.loop !42

._crit_edge:                                      ; preds = %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit83, %bb.f
  %.148.lcssa = phi ptr [ %.047, %bb.f ], [ %i.fu, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit83 ] ; 9 uses
  %.1.lcssa = phi i64 [ %.045, %bb.f ], [ %i.ft, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit83 ] ; 10 uses
  %.not55 = icmp eq i64 %.1.lcssa, 0
  br i1 %.not55, label %_ZL11mbedtls_xorPhPKhS1_m.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 8 uses
  %.not.i101 = icmp samesign ult i64 %.1.lcssa, 8
  br i1 %.not.i101, label %.preheader, label %.preheader.loopexit

.preheader.loopexit:                              ; preds = %bb.h
  %.0.copyload.i68 = load i64, ptr %i.fw, align 8
  %.0.copyload.i67 = load i64, ptr %.148.lcssa, align 1
  %i.fx = xor i64 %.0.copyload.i67, %.0.copyload.i68
  store i64 %i.fx, ptr %i.fw, align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.h
  %.0.i.lcssa = phi i64 [ 0, %bb.h ], [ 8, %.preheader.loopexit ] ; 8 uses
  %i.fy = icmp samesign ult i64 %.0.i.lcssa, %.1.lcssa
  br i1 %i.fy, label %iter.check173, label %_ZL11mbedtls_xorPhPKhS1_m.exit

iter.check173:                                    ; preds = %.preheader
  %i.fz = sub nuw nsw i64 %.1.lcssa, %.0.i.lcssa  ; 2 uses
  %min.iters.check157 = icmp samesign ult i64 %i.fz, 4
  br i1 %min.iters.check157, label %.lr.ph107.preheader, label %vector.memcheck149

vector.memcheck149:                               ; preds = %iter.check173
  %i.ga = getelementptr i8, ptr %0, i64 %.0.i.lcssa
  %scevgep150 = getelementptr i8, ptr %i.ga, i64 392
  %i.gb = getelementptr i8, ptr %0, i64 %.1.lcssa
  %scevgep151 = getelementptr i8, ptr %i.gb, i64 392
  %scevgep152 = getelementptr i8, ptr %.148.lcssa, i64 %.0.i.lcssa
  %scevgep153 = getelementptr i8, ptr %.148.lcssa, i64 %.1.lcssa
  %bound0154 = icmp ult ptr %scevgep150, %scevgep153
  %bound1155 = icmp ult ptr %scevgep152, %scevgep151
  %found.conflict156 = and i1 %bound0154, %bound1155
  br i1 %found.conflict156, label %.lr.ph107.preheader, label %vec.epilog.ph177

vec.epilog.ph177:                                 ; preds = %vector.memcheck149
  %n.mod.vf178 = and i64 %.1.lcssa, 3             ; 2 uses
  %n.vec179 = sub nsw i64 %i.fz, %n.mod.vf178     ; 2 uses
  %i.gc = add nsw i64 %.0.i.lcssa, %n.vec179
  br label %vec.epilog.vector.body180

vec.epilog.vector.body180:                        ; preds = %vec.epilog.vector.body180, %vec.epilog.ph177
  %index181 = phi i64 [ 0, %vec.epilog.ph177 ], [ %index.next184, %vec.epilog.vector.body180 ] ; 2 uses
  %i.gd = add i64 %.0.i.lcssa, %index181          ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.gd ; 2 uses
  %wide.load182 = load <4 x i8>, ptr %i.ge, align 1, !tbaa !15, !alias.scope !43, !noalias !46
  %i.gf = getelementptr inbounds nuw i8, ptr %.148.lcssa, i64 %i.gd
  %wide.load183 = load <4 x i8>, ptr %i.gf, align 1, !tbaa !15, !alias.scope !46
  %4 = xor <4 x i8> %wide.load183, %wide.load182
  store <4 x i8> %4, ptr %i.ge, align 1, !tbaa !15, !alias.scope !43, !noalias !46
  %index.next184 = add nuw i64 %index181, 4       ; 2 uses
  %i.gg = icmp eq i64 %index.next184, %n.vec179
  br i1 %i.gg, label %vec.epilog.middle.block185, label %vec.epilog.vector.body180, !llvm.loop !48

vec.epilog.middle.block185:                       ; preds = %vec.epilog.vector.body180
  %cmp.n186 = icmp eq i64 %n.mod.vf178, 0
  br i1 %cmp.n186, label %_ZL11mbedtls_xorPhPKhS1_m.exit, label %.lr.ph107.preheader

.lr.ph107.preheader:                              ; preds = %vector.memcheck149, %iter.check173, %vec.epilog.middle.block185
  %.1.i106.ph = phi i64 [ %.0.i.lcssa, %vector.memcheck149 ], [ %.0.i.lcssa, %iter.check173 ], [ %i.gc, %vec.epilog.middle.block185 ] ; 4 uses
  %i.gh = sub i64 %.1.lcssa, %.1.i106.ph
  %xtraiter193 = and i64 %i.gh, 3                 ; 2 uses
  %lcmp.mod194.not = icmp eq i64 %xtraiter193, 0
  br i1 %lcmp.mod194.not, label %.lr.ph107.prol.loopexit, label %.lr.ph107.prol

.lr.ph107.prol:                                   ; preds = %.lr.ph107.preheader, %.lr.ph107.prol
  %.1.i106.prol = phi i64 [ %i.gn, %.lr.ph107.prol ], [ %.1.i106.ph, %.lr.ph107.preheader ] ; 3 uses
  %prol.iter195 = phi i64 [ %prol.iter195.next, %.lr.ph107.prol ], [ 0, %.lr.ph107.preheader ]
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fw, i64 %.1.i106.prol ; 2 uses
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !15
  %i.gk = getelementptr inbounds nuw i8, ptr %.148.lcssa, i64 %.1.i106.prol
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !15
  %i.gm = xor i8 %i.gl, %i.gj
  store i8 %i.gm, ptr %i.gi, align 1, !tbaa !15
  %i.gn = add nuw i64 %.1.i106.prol, 1            ; 2 uses
  %prol.iter195.next = add i64 %prol.iter195, 1   ; 2 uses
  %prol.iter195.cmp.not = icmp eq i64 %prol.iter195.next, %xtraiter193
  br i1 %prol.iter195.cmp.not, label %.lr.ph107.prol.loopexit, label %.lr.ph107.prol, !llvm.loop !49

.lr.ph107.prol.loopexit:                          ; preds = %.lr.ph107.prol, %.lr.ph107.preheader
  %.1.i106.unr = phi i64 [ %.1.i106.ph, %.lr.ph107.preheader ], [ %i.gn, %.lr.ph107.prol ]
  %i.go = sub i64 %.1.i106.ph, %.1.lcssa
  %i.gp = icmp ugt i64 %i.go, -4
  br i1 %i.gp, label %_ZL11mbedtls_xorPhPKhS1_m.exit, label %.lr.ph107

.lr.ph107:                                        ; preds = %.lr.ph107.prol.loopexit, %.lr.ph107
  %.1.i106 = phi i64 [ %i.hn, %.lr.ph107 ], [ %.1.i106.unr, %.lr.ph107.prol.loopexit ] ; 6 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fw, i64 %.1.i106 ; 2 uses
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !15
  %i.gs = getelementptr inbounds nuw i8, ptr %.148.lcssa, i64 %.1.i106
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !15
  %i.gu = xor i8 %i.gt, %i.gr
  store i8 %i.gu, ptr %i.gq, align 1, !tbaa !15
  %i.gv = add nuw i64 %.1.i106, 1                 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.gv ; 2 uses
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !15
  %i.gy = getelementptr inbounds nuw i8, ptr %.148.lcssa, i64 %i.gv
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !15
  %i.ha = xor i8 %i.gz, %i.gx
  store i8 %i.ha, ptr %i.gw, align 1, !tbaa !15
  %i.hb = add nuw i64 %.1.i106, 2                 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.hb ; 2 uses
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !15
  %i.he = getelementptr inbounds nuw i8, ptr %.148.lcssa, i64 %i.hb
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !15
  %i.hg = xor i8 %i.hf, %i.hd
  store i8 %i.hg, ptr %i.hc, align 1, !tbaa !15
  %i.hh = add nuw i64 %.1.i106, 3                 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.hh ; 2 uses
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !15
  %i.hk = getelementptr inbounds nuw i8, ptr %.148.lcssa, i64 %i.hh
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !15
  %i.hm = xor i8 %i.hl, %i.hj
  store i8 %i.hm, ptr %i.hi, align 1, !tbaa !15
  %i.hn = add nuw i64 %.1.i106, 4                 ; 2 uses
  %exitcond115.not.3 = icmp eq i64 %i.hn, %.1.lcssa
  br i1 %exitcond115.not.3, label %_ZL11mbedtls_xorPhPKhS1_m.exit, label %.lr.ph107, !llvm.loop !50

_ZL11mbedtls_xorPhPKhS1_m.exit:                   ; preds = %.lr.ph107.prol.loopexit, %.lr.ph107, %vec.epilog.middle.block185, %.preheader, %._crit_edge, %bb.a
  %.0 = phi i32 [ -20, %bb.a ], [ 0, %._crit_edge ], [ 0, %.preheader ], [ 0, %vec.epilog.middle.block185 ], [ 0, %.lr.ph107 ], [ 0, %.lr.ph107.prol.loopexit ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @mbedtls_gcm_update(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef writeonly captures(none) %5) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = icmp ult i64 %4, %2
  br i1 %i.b, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %2, ptr %5, align 8, !tbaa !7
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp ugt ptr %3, %1
  %i.e = ptrtoint ptr %3 to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp ult i64 %i.g, %2
  %or.cond = and i1 %i.d, %i.h
  br i1 %or.cond, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !51   ; 4 uses
  %i.k = add i64 %i.j, %2                         ; 2 uses
  %i.l = icmp ult i64 %i.k, %i.j
  %i.m = icmp ugt i64 %i.k, 68719476704
  %or.cond96 = or i1 %i.l, %i.m
  br i1 %or.cond96, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = icmp eq i64 %i.j, 0
  br i1 %i.n, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.p = load i64, ptr %i.o, align 8, !tbaa !33
  %i.q = and i64 %i.p, 15
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  tail call fastcc void @_ZL8gcm_multP19mbedtls_gcm_contextPKhPh(ptr noundef nonnull %0, ptr noundef nonnull %i.r, ptr noundef nonnull %i.r)
  %.pre = load i64, ptr %i.i, align 8, !tbaa !51
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.s = phi i64 [ %.pre, %bb.g ], [ %i.j, %bb.e ] ; 2 uses
  %i.t = and i64 %i.s, 15                         ; 4 uses
  %.not88 = icmp eq i64 %i.t, 0
  br i1 %.not88, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = sub nuw nsw i64 16, %i.t
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %2) ; 6 uses
  %i.v = call fastcc noundef i32 @_ZL8gcm_maskP19mbedtls_gcm_contextPhmmPKhS1_(ptr noundef nonnull %0, ptr noundef %i.a, i64 noundef %i.t, i64 noundef %spec.select, ptr noundef %1, ptr noundef %3) ; 2 uses
  %.not89 = icmp eq i32 %i.v, 0
  br i1 %.not89, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.w = add nuw nsw i64 %spec.select, %i.t
  %i.x = icmp eq i64 %i.w, 16
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  call fastcc void @_ZL8gcm_multP19mbedtls_gcm_contextPKhPh(ptr noundef nonnull %0, ptr noundef nonnull %i.y, ptr noundef nonnull %i.y)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.z = load i64, ptr %i.i, align 8, !tbaa !51
  %i.aa = add i64 %i.z, %spec.select
  %i.ab = sub i64 %2, %spec.select
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 %spec.select
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.l, %bb.h
  %i.ae = phi i64 [ %i.aa, %bb.l ], [ %i.s, %bb.h ], [ 0, %bb.f ]
  %.177 = phi i64 [ %i.ab, %bb.l ], [ %2, %bb.h ], [ %2, %bb.f ] ; 4 uses
  %.174 = phi ptr [ %i.ac, %bb.l ], [ %1, %bb.h ], [ %1, %bb.f ] ; 2 uses
  %.172 = phi ptr [ %i.ad, %bb.l ], [ %3, %bb.h ], [ %3, %bb.f ] ; 2 uses
  %i.af = add i64 %i.ae, %.177
  store i64 %i.af, ptr %i.i, align 8, !tbaa !51
  %i.ag = icmp ugt i64 %.177, 15
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.thread
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 388 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 409
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 407
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 400
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit
  %.2105 = phi ptr [ %.172, %.lr.ph ], [ %i.cv, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit ] ; 2 uses
  %.275104 = phi ptr [ %.174, %.lr.ph ], [ %i.cu, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit ] ; 2 uses
  %.278103 = phi i64 [ %.177, %.lr.ph ], [ %i.ct, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit ]
  %.0.copyload.i.i = load i32, ptr %i.ah, align 4
  %i.an = call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i)
  %i.ao = add i32 %i.an, 1
  %i.ap = call i32 @llvm.bswap.i32(i32 %i.ao)
  store i32 %i.ap, ptr %i.ah, align 4
  %i.aq = call fastcc noundef i32 @_ZL8gcm_maskP19mbedtls_gcm_contextPhmmPKhS1_(ptr noundef nonnull %0, ptr noundef %i.a, i64 noundef 0, i64 noundef 16, ptr noundef %.275104, ptr noundef %.2105) ; 2 uses
  %.not92 = icmp eq i32 %i.aq, 0
  br i1 %.not92, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.ar = load i8, ptr %i.aj, align 1, !tbaa !9
  %cond.i = icmp eq i8 %i.ar, 0
  br i1 %cond.i, label %bb.o, label %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit

bb.o:                                             ; preds = %bb.n
  %i.as = load i8, ptr %i.al, align 1, !tbaa !15  ; 2 uses
  %i.at = lshr i8 %i.as, 4
  %i.au = zext nneg i8 %i.at to i64
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.0.copyload.i.1.i.i = load i64, ptr %i.aw, align 1
  %i.ax = and i8 %i.as, 15
  %i.ay = zext nneg i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %i.ay ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !7  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !7  ; 2 uses
  %i.bd = call i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.bc, i64 60)
  %i.be = xor i64 %i.bd, %.0.copyload.i.1.i.i
  %.0.copyload.i.i.i = load i64, ptr %i.av, align 1
  %i.bf = and i64 %i.bc, 15
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.bf
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !29
  %i.bi = zext i16 %i.bh to i64
  %i.bj = shl nuw i64 %i.bi, 48
  %i.bk = lshr i64 %i.ba, 4
  %i.bl = xor i64 %.0.copyload.i.i.i, %i.bk
  %i.bm = xor i64 %i.bl, %i.bj
  br label %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i

_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i:       ; preds = %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i, %bb.o
  %.sroa.17.0.i.i = phi i64 [ %i.be, %bb.o ], [ %i.cq, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i ] ; 2 uses
  %.sroa.0.0.i.i = phi i64 [ %i.bm, %bb.o ], [ %i.co, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ 14, %bb.o ], [ %indvars.iv.next.i.i, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i ] ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv.i.i
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !15  ; 2 uses
  %i.bp = and i8 %i.bo, 15
  %i.bq = and i64 %.sroa.17.0.i.i, 15
  %i.br = call i64 @llvm.fshl.i64(i64 %.sroa.0.0.i.i, i64 %.sroa.17.0.i.i, i64 60)
  %i.bs = lshr i64 %.sroa.0.0.i.i, 4
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.bq
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !29
  %i.bv = zext i16 %i.bu to i64
  %i.bw = shl nuw i64 %i.bv, 48
  %i.bx = zext nneg i8 %i.bp to i64
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %i.bx ; 2 uses
  %.0.copyload.i37.i.i = load i64, ptr %i.by, align 1
  %i.bz = xor i64 %.0.copyload.i37.i.i, %i.bs     ; 2 uses
  %i.ca = xor i64 %i.bz, %i.bw
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.0.copyload.i37.1.i.i = load i64, ptr %i.cb, align 1
  %i.cc = xor i64 %.0.copyload.i37.1.i.i, %i.br   ; 2 uses
  %i.cd = lshr i8 %i.bo, 4
  %i.ce = and i64 %i.cc, 15
  %i.cf = call i64 @llvm.fshl.i64(i64 %i.bz, i64 %i.cc, i64 60)
  %i.cg = lshr i64 %i.ca, 4
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.ce
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !29
  %i.cj = zext i16 %i.ci to i64
  %i.ck = shl nuw i64 %i.cj, 48
  %i.cl = zext nneg i8 %i.cd to i64
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %i.cl ; 2 uses
  %.0.copyload.i39.i.i = load i64, ptr %i.cm, align 1
  %i.cn = xor i64 %i.cg, %.0.copyload.i39.i.i
  %i.co = xor i64 %i.cn, %i.ck                    ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %.0.copyload.i39.1.i.i = load i64, ptr %i.cp, align 1
  %i.cq = xor i64 %.0.copyload.i39.1.i.i, %i.cf   ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  %.not.i.i = icmp eq i64 %indvars.iv.i.i, 0
  br i1 %.not.i.i, label %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i, label %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i, !llvm.loop !31

_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i:        ; preds = %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i
  %i.cr = call i64 @llvm.bswap.i64(i64 %i.co)
  store i64 %i.cr, ptr %i.ai, align 8
  %i.cs = call i64 @llvm.bswap.i64(i64 %i.cq)
  store i64 %i.cs, ptr %i.am, align 8
  br label %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit

_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit:     ; preds = %bb.n, %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i
  %i.ct = add i64 %.278103, -16                   ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.275104, i64 16 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.2105, i64 16 ; 2 uses
  %i.cw = icmp ugt i64 %i.ct, 15
  br i1 %i.cw, label %bb.m, label %._crit_edge, !llvm.loop !52

._crit_edge:                                      ; preds = %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit, %.thread
  %.278.lcssa = phi i64 [ %.177, %.thread ], [ %i.ct, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit ] ; 2 uses
  %.275.lcssa = phi ptr [ %.174, %.thread ], [ %i.cu, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit ]
  %.2.lcssa = phi ptr [ %.172, %.thread ], [ %i.cv, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit ]
  %.not90 = icmp eq i64 %.278.lcssa, 0
  br i1 %.not90, label %bb.q, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 388 ; 2 uses
  %.0.copyload.i.i97 = load i32, ptr %i.cx, align 4
  %i.cy = call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i97)
  %i.cz = add i32 %i.cy, 1
  %i.da = call i32 @llvm.bswap.i32(i32 %i.cz)
  store i32 %i.da, ptr %i.cx, align 4
  %i.db = call fastcc noundef i32 @_ZL8gcm_maskP19mbedtls_gcm_contextPhmmPKhS1_(ptr noundef nonnull %0, ptr noundef %i.a, i64 noundef 0, i64 noundef %.278.lcssa, ptr noundef %.275.lcssa, ptr noundef %.2.lcssa) ; 2 uses
  %.not91 = icmp eq i32 %i.db, 0
  br i1 %.not91, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p, %._crit_edge
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.a, i64 noundef 16)
  br label %.critedge

.critedge:                                        ; preds = %bb.m, %bb.i, %bb.p, %bb.d, %bb.c, %bb.b, %bb.a, %bb.q
  %.1 = phi i32 [ %i.v, %bb.i ], [ -22, %bb.a ], [ 0, %bb.b ], [ -20, %bb.c ], [ %i.db, %bb.p ], [ -20, %bb.d ], [ 0, %bb.q ], [ %i.aq, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL8gcm_maskP19mbedtls_gcm_contextPhmmPKhS1_(ptr noundef %0, ptr noundef nonnull %1, i64 noundef range(i64 0, 16) %2, i64 noundef range(i64 1, 17) %3, ptr noundef readonly captures(none) %4, ptr noundef captures(none) %5) unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64
  %i.b = ptrtoaddr ptr %5 to i64                  ; 2 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i64 0, ptr %i.c, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.e = call i32 @mbedtls_cipher_update(ptr noundef %0, ptr noundef nonnull %i.d, i64 noundef 16, ptr noundef nonnull %1, ptr noundef nonnull %i.c) ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %1, i64 noundef 16)
  br label %_ZL11mbedtls_xorPhPKhS1_m.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !16
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.d, label %_ZL11mbedtls_xorPhPKhS1_m.exit33

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %2 ; 10 uses
  %.not.i3141 = icmp samesign ult i64 %3, 8
  br i1 %.not.i3141, label %iter.check, label %.lr.ph

.preheader40:                                     ; preds = %.lr.ph.1, %.lr.ph
  %.lcssa167 = phi i64 [ 8, %.lr.ph ], [ 16, %.lr.ph.1 ] ; 2 uses
  %i.k = icmp samesign ult i64 %.lcssa167, %3
  br i1 %i.k, label %iter.check, label %_ZL11mbedtls_xorPhPKhS1_m.exit33.thread

_ZL11mbedtls_xorPhPKhS1_m.exit33.thread:          ; preds = %.preheader40
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %2
  br label %.lr.ph47

iter.check:                                       ; preds = %bb.d, %.preheader40
  %.0.i30.lcssa64 = phi i64 [ %.lcssa167, %.preheader40 ], [ 0, %bb.d ] ; 9 uses
  %i.m = sub nsw i64 %3, %.0.i30.lcssa64          ; 6 uses
  %min.iters.check = icmp ult i64 %i.m, 4
  br i1 %min.iters.check, label %.lr.ph44.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.n = getelementptr i8, ptr %0, i64 %.0.i30.lcssa64
  %i.o = getelementptr i8, ptr %i.n, i64 %2
  %scevgep = getelementptr i8, ptr %i.o, i64 392
  %i.p = getelementptr i8, ptr %0, i64 %3
  %i.q = getelementptr i8, ptr %i.p, i64 %2
  %scevgep79 = getelementptr i8, ptr %i.q, i64 392
  %scevgep80 = getelementptr nuw i8, ptr %4, i64 %.0.i30.lcssa64
  %scevgep81 = getelementptr i8, ptr %4, i64 %3
  %bound0 = icmp ult ptr %scevgep, %scevgep81
  %bound1 = icmp ult ptr %scevgep80, %scevgep79
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph44.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check82 = icmp ult i64 %i.m, 32
  br i1 %min.iters.check82, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.m, 28
  %n.vec = and i64 %i.m, -32                      ; 4 uses
  %i.r = add nsw i64 %.0.i30.lcssa64, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = add i64 %.0.i30.lcssa64, %index          ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.s ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.t, align 1, !tbaa !15, !alias.scope !53, !noalias !56
  %wide.load83 = load <16 x i8>, ptr %i.u, align 1, !tbaa !15, !alias.scope !53, !noalias !56
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 %i.s ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load84 = load <16 x i8>, ptr %i.v, align 1, !tbaa !15, !alias.scope !56
  %wide.load85 = load <16 x i8>, ptr %i.w, align 1, !tbaa !15, !alias.scope !56
  %i.x = xor <16 x i8> %wide.load84, %wide.load
  %i.y = xor <16 x i8> %wide.load85, %wide.load83
  store <16 x i8> %i.x, ptr %i.t, align 1, !tbaa !15, !alias.scope !53, !noalias !56
  store <16 x i8> %i.y, ptr %i.u, align 1, !tbaa !15, !alias.scope !53, !noalias !56
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !58

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %_ZL11mbedtls_xorPhPKhS1_m.exit33, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph44.preheader, label %vec.epilog.ph, !prof !59

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.mod.vf86 = and i64 %3, 3                     ; 2 uses
  %n.vec87 = sub nsw i64 %i.m, %n.mod.vf86        ; 2 uses
  %i.aa = add nsw i64 %.0.i30.lcssa64, %n.vec87
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index88 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next91, %vec.epilog.vector.body ] ; 2 uses
  %i.ab = add i64 %.0.i30.lcssa64, %index88       ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ab ; 2 uses
  %wide.load89 = load <4 x i8>, ptr %i.ac, align 1, !tbaa !15, !alias.scope !53, !noalias !56
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 %i.ab
  %wide.load90 = load <4 x i8>, ptr %i.ad, align 1, !tbaa !15, !alias.scope !56
  %6 = xor <4 x i8> %wide.load90, %wide.load89
  store <4 x i8> %6, ptr %i.ac, align 1, !tbaa !15, !alias.scope !53, !noalias !56
  %index.next91 = add nuw i64 %index88, 4         ; 2 uses
  %i.ae = icmp eq i64 %index.next91, %n.vec87
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !60

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n92 = icmp eq i64 %n.mod.vf86, 0
  br i1 %cmp.n92, label %_ZL11mbedtls_xorPhPKhS1_m.exit33, label %.lr.ph44.preheader

.lr.ph44.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.1.i3243.ph = phi i64 [ %.0.i30.lcssa64, %iter.check ], [ %.0.i30.lcssa64, %vector.memcheck ], [ %i.r, %vec.epilog.iter.check ], [ %i.aa, %vec.epilog.middle.block ] ; 4 uses
  %i.af = sub i64 %3, %.1.i3243.ph
  %xtraiter = and i64 %i.af, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph44.prol.loopexit, label %.lr.ph44.prol

.lr.ph44.prol:                                    ; preds = %.lr.ph44.preheader, %.lr.ph44.prol
  %.1.i3243.prol = phi i64 [ %i.al, %.lr.ph44.prol ], [ %.1.i3243.ph, %.lr.ph44.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph44.prol ], [ 0, %.lr.ph44.preheader ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 %.1.i3243.prol ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !15
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 %.1.i3243.prol
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !15
  %i.ak = xor i8 %i.aj, %i.ah
  store i8 %i.ak, ptr %i.ag, align 1, !tbaa !15
  %i.al = add nuw nsw i64 %.1.i3243.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph44.prol.loopexit, label %.lr.ph44.prol, !llvm.loop !61

.lr.ph44.prol.loopexit:                           ; preds = %.lr.ph44.prol, %.lr.ph44.preheader
  %.1.i3243.unr = phi i64 [ %.1.i3243.ph, %.lr.ph44.preheader ], [ %i.al, %.lr.ph44.prol ]
  %i.am = sub i64 %.1.i3243.ph, %3
  %i.an = icmp ugt i64 %i.am, -4
  br i1 %i.an, label %_ZL11mbedtls_xorPhPKhS1_m.exit33, label %.lr.ph44

.lr.ph:                                           ; preds = %bb.d
  %.0.copyload.i34 = load i64, ptr %i.j, align 1
  %.0.copyload.i = load i64, ptr %4, align 1
  %i.ao = xor i64 %.0.copyload.i, %.0.copyload.i34
  store i64 %i.ao, ptr %i.j, align 1
  %.not.i31 = icmp samesign ult i64 %3, 16
  br i1 %.not.i31, label %.preheader40, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %.0.copyload.i34.1 = load i64, ptr %i.ap, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.0.copyload.i.1 = load i64, ptr %i.aq, align 1
  %i.ar = xor i64 %.0.copyload.i.1, %.0.copyload.i34.1
  store i64 %i.ar, ptr %i.ap, align 1
  br label %.preheader40

.lr.ph44:                                         ; preds = %.lr.ph44.prol.loopexit, %.lr.ph44
  %.1.i3243 = phi i64 [ %i.bp, %.lr.ph44 ], [ %.1.i3243.unr, %.lr.ph44.prol.loopexit ] ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 %.1.i3243 ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !15
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 %.1.i3243
  %i.av = load i8, ptr %i.au, align 1, !tbaa !15
  %i.aw = xor i8 %i.av, %i.at
  store i8 %i.aw, ptr %i.as, align 1, !tbaa !15
  %i.ax = add nuw nsw i64 %.1.i3243, 1            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ax ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !15
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 %i.ax
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !15
  %i.bc = xor i8 %i.bb, %i.az
  store i8 %i.bc, ptr %i.ay, align 1, !tbaa !15
  %i.bd = add nuw nsw i64 %.1.i3243, 2            ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bd ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !15
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 %i.bd
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !15
  %i.bi = xor i8 %i.bh, %i.bf
  store i8 %i.bi, ptr %i.be, align 1, !tbaa !15
  %i.bj = add nuw nsw i64 %.1.i3243, 3            ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bj ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !15
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 %i.bj
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !15
  %i.bo = xor i8 %i.bn, %i.bl
  store i8 %i.bo, ptr %i.bk, align 1, !tbaa !15
  %i.bp = add nuw nsw i64 %.1.i3243, 4            ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bp, %3
  br i1 %exitcond.not.3, label %_ZL11mbedtls_xorPhPKhS1_m.exit33, label %.lr.ph44, !llvm.loop !62

_ZL11mbedtls_xorPhPKhS1_m.exit33:                 ; preds = %.lr.ph44.prol.loopexit, %.lr.ph44, %middle.block, %vec.epilog.middle.block, %bb.c
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  %.not.i2745 = icmp samesign ult i64 %3, 8
  br i1 %.not.i2745, label %iter.check112, label %.lr.ph47

.preheader39:                                     ; preds = %.lr.ph47.1, %.lr.ph47
  %.lcssa166 = phi i64 [ 8, %.lr.ph47 ], [ 16, %.lr.ph47.1 ] ; 2 uses
  %i.br = icmp samesign ult i64 %.lcssa166, %3
  br i1 %i.br, label %iter.check112, label %_ZL11mbedtls_xorPhPKhS1_m.exit29

iter.check112:                                    ; preds = %_ZL11mbedtls_xorPhPKhS1_m.exit33, %.preheader39
  %.0.i26.lcssa72 = phi i64 [ %.lcssa166, %.preheader39 ], [ 0, %_ZL11mbedtls_xorPhPKhS1_m.exit33 ] ; 7 uses
  %i.bs = phi ptr [ %i.cy, %.preheader39 ], [ %i.bq, %_ZL11mbedtls_xorPhPKhS1_m.exit33 ] ; 8 uses
  %.not.i27456771 = phi i1 [ false, %.preheader39 ], [ true, %_ZL11mbedtls_xorPhPKhS1_m.exit33 ] ; 4 uses
  %i.bt = sub nsw i64 %3, %.0.i26.lcssa72         ; 6 uses
  %min.iters.check96 = icmp ult i64 %i.bt, 4
  br i1 %min.iters.check96, label %.lr.ph50.preheader, label %vector.memcheck94

vector.memcheck94:                                ; preds = %iter.check112
  %i.bu = ptrtoaddr ptr %i.bs to i64
  %i.bv = sub i64 %i.b, %i.bu
  %diff.check = icmp ult i64 %i.bv, 32
  %i.bw = sub i64 %i.b, %i.a
  %diff.check95 = icmp ult i64 %i.bw, 32
  %conflict.rdx = or i1 %diff.check, %diff.check95
  br i1 %conflict.rdx, label %.lr.ph50.preheader, label %vector.main.loop.iter.check97

vector.main.loop.iter.check97:                    ; preds = %vector.memcheck94
  %min.iters.check98 = icmp ult i64 %i.bt, 32
  br i1 %min.iters.check98, label %vec.epilog.ph116, label %vector.ph99

vector.ph99:                                      ; preds = %vector.main.loop.iter.check97
  %n.mod.vf100 = and i64 %i.bt, 28
  %n.vec101 = and i64 %i.bt, -32                  ; 4 uses
  %i.bx = add nsw i64 %.0.i26.lcssa72, %n.vec101
  br label %vector.body102

vector.body102:                                   ; preds = %vector.body102, %vector.ph99
  %index103 = phi i64 [ 0, %vector.ph99 ], [ %index.next108, %vector.body102 ] ; 2 uses
  %i.by = add i64 %.0.i26.lcssa72, %index103      ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.by ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %wide.load104 = load <16 x i8>, ptr %i.bz, align 1, !tbaa !15
  %wide.load105 = load <16 x i8>, ptr %i.ca, align 1, !tbaa !15
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 %i.by ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %wide.load106 = load <16 x i8>, ptr %i.cb, align 1, !tbaa !15
  %wide.load107 = load <16 x i8>, ptr %i.cc, align 1, !tbaa !15
  %i.cd = xor <16 x i8> %wide.load106, %wide.load104
  %i.ce = xor <16 x i8> %wide.load107, %wide.load105
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 %i.by ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store <16 x i8> %i.cd, ptr %i.cf, align 1, !tbaa !15
  store <16 x i8> %i.ce, ptr %i.cg, align 1, !tbaa !15
  %index.next108 = add nuw i64 %index103, 32      ; 2 uses
  %i.ch = icmp eq i64 %index.next108, %n.vec101
  br i1 %i.ch, label %middle.block109, label %vector.body102, !llvm.loop !63

middle.block109:                                  ; preds = %vector.body102
  %cmp.n110 = icmp eq i64 %i.bt, %n.vec101
  br i1 %cmp.n110, label %_ZL11mbedtls_xorPhPKhS1_m.exit29, label %vec.epilog.iter.check114

vec.epilog.iter.check114:                         ; preds = %middle.block109
  %min.epilog.iters.check115 = icmp eq i64 %n.mod.vf100, 0
  br i1 %min.epilog.iters.check115, label %.lr.ph50.preheader, label %vec.epilog.ph116, !prof !59

vec.epilog.ph116:                                 ; preds = %vector.main.loop.iter.check97, %vec.epilog.iter.check114
  %vec.epilog.resume.val111 = phi i64 [ %n.vec101, %vec.epilog.iter.check114 ], [ 0, %vector.main.loop.iter.check97 ]
  %n.mod.vf117 = and i64 %3, 3                    ; 2 uses
  %n.vec118 = sub nsw i64 %i.bt, %n.mod.vf117     ; 2 uses
  %i.ci = add nsw i64 %.0.i26.lcssa72, %n.vec118
  br label %vec.epilog.vector.body119

vec.epilog.vector.body119:                        ; preds = %vec.epilog.vector.body119, %vec.epilog.ph116
  %index120 = phi i64 [ %vec.epilog.resume.val111, %vec.epilog.ph116 ], [ %index.next123, %vec.epilog.vector.body119 ] ; 2 uses
  %i.cj = add i64 %.0.i26.lcssa72, %index120      ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.cj
  %wide.load121 = load <4 x i8>, ptr %i.ck, align 1, !tbaa !15
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 %i.cj
  %wide.load122 = load <4 x i8>, ptr %i.cl, align 1, !tbaa !15
  %7 = xor <4 x i8> %wide.load122, %wide.load121
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 %i.cj
  store <4 x i8> %7, ptr %i.cm, align 1, !tbaa !15
  %index.next123 = add nuw i64 %index120, 4       ; 2 uses
  %i.cn = icmp eq i64 %index.next123, %n.vec118
  br i1 %i.cn, label %vec.epilog.middle.block124, label %vec.epilog.vector.body119, !llvm.loop !64

vec.epilog.middle.block124:                       ; preds = %vec.epilog.vector.body119
  %cmp.n125 = icmp eq i64 %n.mod.vf117, 0
  br i1 %cmp.n125, label %_ZL11mbedtls_xorPhPKhS1_m.exit29, label %.lr.ph50.preheader

.lr.ph50.preheader:                               ; preds = %vector.memcheck94, %iter.check112, %vec.epilog.iter.check114, %vec.epilog.middle.block124
  %.1.i2849.ph = phi i64 [ %.0.i26.lcssa72, %iter.check112 ], [ %.0.i26.lcssa72, %vector.memcheck94 ], [ %i.bx, %vec.epilog.iter.check114 ], [ %i.ci, %vec.epilog.middle.block124 ] ; 4 uses
  %i.co = sub i64 %3, %.1.i2849.ph
  %xtraiter168 = and i64 %i.co, 3                 ; 2 uses
  %lcmp.mod169.not = icmp eq i64 %xtraiter168, 0
  br i1 %lcmp.mod169.not, label %.lr.ph50.prol.loopexit, label %.lr.ph50.prol

.lr.ph50.prol:                                    ; preds = %.lr.ph50.preheader, %.lr.ph50.prol
  %.1.i2849.prol = phi i64 [ %i.cv, %.lr.ph50.prol ], [ %.1.i2849.ph, %.lr.ph50.preheader ] ; 4 uses
  %prol.iter170 = phi i64 [ %prol.iter170.next, %.lr.ph50.prol ], [ 0, %.lr.ph50.preheader ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.1.i2849.prol
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !15
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 %.1.i2849.prol
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !15
  %i.ct = xor i8 %i.cs, %i.cq
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 %.1.i2849.prol
  store i8 %i.ct, ptr %i.cu, align 1, !tbaa !15
  %i.cv = add nuw nsw i64 %.1.i2849.prol, 1       ; 2 uses
  %prol.iter170.next = add i64 %prol.iter170, 1   ; 2 uses
  %prol.iter170.cmp.not = icmp eq i64 %prol.iter170.next, %xtraiter168
  br i1 %prol.iter170.cmp.not, label %.lr.ph50.prol.loopexit, label %.lr.ph50.prol, !llvm.loop !65

.lr.ph50.prol.loopexit:                           ; preds = %.lr.ph50.prol, %.lr.ph50.preheader
  %.1.i2849.unr = phi i64 [ %.1.i2849.ph, %.lr.ph50.preheader ], [ %i.cv, %.lr.ph50.prol ]
  %i.cw = sub i64 %.1.i2849.ph, %3
  %i.cx = icmp ugt i64 %i.cw, -4
  br i1 %i.cx, label %_ZL11mbedtls_xorPhPKhS1_m.exit29, label %.lr.ph50

.lr.ph47:                                         ; preds = %_ZL11mbedtls_xorPhPKhS1_m.exit33, %_ZL11mbedtls_xorPhPKhS1_m.exit33.thread
  %i.cy = phi ptr [ %i.l, %_ZL11mbedtls_xorPhPKhS1_m.exit33.thread ], [ %i.bq, %_ZL11mbedtls_xorPhPKhS1_m.exit33 ]
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %.0.copyload.i36 = load i64, ptr %i.cz, align 1
  %.0.copyload.i35 = load i64, ptr %4, align 1
  %i.da = xor i64 %.0.copyload.i35, %.0.copyload.i36
  store i64 %i.da, ptr %5, align 1
  %.not.i27 = icmp samesign ult i64 %3, 16
  br i1 %.not.i27, label %.preheader39, label %.lr.ph47.1

.lr.ph47.1:                                       ; preds = %.lr.ph47
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %.0.copyload.i36.1 = load i64, ptr %i.dc, align 1
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.0.copyload.i35.1 = load i64, ptr %i.dd, align 1
  %i.de = xor i64 %.0.copyload.i35.1, %.0.copyload.i36.1
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.de, ptr %i.df, align 1
  br label %.preheader39

.lr.ph50:                                         ; preds = %.lr.ph50.prol.loopexit, %.lr.ph50
  %.1.i2849 = phi i64 [ %i.eh, %.lr.ph50 ], [ %.1.i2849.unr, %.lr.ph50.prol.loopexit ] ; 7 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.1.i2849
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !15
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 %.1.i2849
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !15
  %i.dk = xor i8 %i.dj, %i.dh
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 %.1.i2849
  store i8 %i.dk, ptr %i.dl, align 1, !tbaa !15
  %i.dm = add nuw nsw i64 %.1.i2849, 1            ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !15
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 %i.dm
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !15
  %i.dr = xor i8 %i.dq, %i.do
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 %i.dm
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !15
  %i.dt = add nuw nsw i64 %.1.i2849, 2            ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !15
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 %i.dt
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !15
  %i.dy = xor i8 %i.dx, %i.dv
  %i.dz = getelementptr inbounds nuw i8, ptr %5, i64 %i.dt
  store i8 %i.dy, ptr %i.dz, align 1, !tbaa !15
  %i.ea = add nuw nsw i64 %.1.i2849, 3            ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !15
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 %i.ea
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !15
  %i.ef = xor i8 %i.ee, %i.ec
  %i.eg = getelementptr inbounds nuw i8, ptr %5, i64 %i.ea
  store i8 %i.ef, ptr %i.eg, align 1, !tbaa !15
  %i.eh = add nuw nsw i64 %.1.i2849, 4            ; 2 uses
  %exitcond59.not.3 = icmp eq i64 %i.eh, %3
  br i1 %exitcond59.not.3, label %_ZL11mbedtls_xorPhPKhS1_m.exit29, label %.lr.ph50, !llvm.loop !66

_ZL11mbedtls_xorPhPKhS1_m.exit29:                 ; preds = %.lr.ph50.prol.loopexit, %.lr.ph50, %middle.block109, %vec.epilog.middle.block124, %.preheader39
  %.not.i27456770 = phi i1 [ false, %.preheader39 ], [ %.not.i27456771, %middle.block109 ], [ %.not.i27456771, %vec.epilog.middle.block124 ], [ %.not.i27456771, %.lr.ph50 ], [ %.not.i27456771, %.lr.ph50.prol.loopexit ]
  %i.ei = load i8, ptr %i.f, align 8, !tbaa !16
  %i.ej = icmp eq i8 %i.ei, 1
  br i1 %i.ej, label %bb.e, label %_ZL11mbedtls_xorPhPKhS1_m.exit

bb.e:                                             ; preds = %_ZL11mbedtls_xorPhPKhS1_m.exit29
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %2 ; 10 uses
  br i1 %.not.i27456770, label %iter.check151, label %.lr.ph53

.preheader:                                       ; preds = %.lr.ph53.1, %.lr.ph53
  %.lcssa = phi i64 [ 8, %.lr.ph53 ], [ 16, %.lr.ph53.1 ] ; 2 uses
  %i.em = icmp samesign ult i64 %.lcssa, %3
  br i1 %i.em, label %iter.check151, label %_ZL11mbedtls_xorPhPKhS1_m.exit

iter.check151:                                    ; preds = %bb.e, %.preheader
  %.0.i.lcssa74 = phi i64 [ %.lcssa, %.preheader ], [ 0, %bb.e ] ; 9 uses
  %i.en = sub nsw i64 %3, %.0.i.lcssa74           ; 6 uses
  %min.iters.check135 = icmp ult i64 %i.en, 4
  br i1 %min.iters.check135, label %.lr.ph56.preheader, label %vector.memcheck127

vector.memcheck127:                               ; preds = %iter.check151
  %i.eo = getelementptr i8, ptr %0, i64 %.0.i.lcssa74
  %i.ep = getelementptr i8, ptr %i.eo, i64 %2
  %scevgep128 = getelementptr i8, ptr %i.ep, i64 392
  %i.eq = getelementptr i8, ptr %0, i64 %3
  %i.er = getelementptr i8, ptr %i.eq, i64 %2
  %scevgep129 = getelementptr i8, ptr %i.er, i64 392
  %scevgep130 = getelementptr nuw i8, ptr %5, i64 %.0.i.lcssa74
  %scevgep131 = getelementptr i8, ptr %5, i64 %3
  %bound0132 = icmp ult ptr %scevgep128, %scevgep131
  %bound1133 = icmp ult ptr %scevgep130, %scevgep129
  %found.conflict134 = and i1 %bound0132, %bound1133
  br i1 %found.conflict134, label %.lr.ph56.preheader, label %vector.main.loop.iter.check136

vector.main.loop.iter.check136:                   ; preds = %vector.memcheck127
  %min.iters.check137 = icmp ult i64 %i.en, 32
  br i1 %min.iters.check137, label %vec.epilog.ph155, label %vector.ph138

vector.ph138:                                     ; preds = %vector.main.loop.iter.check136
  %n.mod.vf139 = and i64 %i.en, 28
  %n.vec140 = and i64 %i.en, -32                  ; 4 uses
  %i.es = add nsw i64 %.0.i.lcssa74, %n.vec140
  br label %vector.body141

vector.body141:                                   ; preds = %vector.body141, %vector.ph138
  %index142 = phi i64 [ 0, %vector.ph138 ], [ %index.next147, %vector.body141 ] ; 2 uses
  %i.et = add i64 %.0.i.lcssa74, %index142        ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.et ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16 ; 2 uses
  %wide.load143 = load <16 x i8>, ptr %i.eu, align 1, !tbaa !15, !alias.scope !67, !noalias !70
  %wide.load144 = load <16 x i8>, ptr %i.ev, align 1, !tbaa !15, !alias.scope !67, !noalias !70
  %i.ew = getelementptr inbounds nuw i8, ptr %5, i64 %i.et ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %wide.load145 = load <16 x i8>, ptr %i.ew, align 1, !tbaa !15, !alias.scope !70
  %wide.load146 = load <16 x i8>, ptr %i.ex, align 1, !tbaa !15, !alias.scope !70
  %i.ey = xor <16 x i8> %wide.load145, %wide.load143
  %i.ez = xor <16 x i8> %wide.load146, %wide.load144
  store <16 x i8> %i.ey, ptr %i.eu, align 1, !tbaa !15, !alias.scope !67, !noalias !70
  store <16 x i8> %i.ez, ptr %i.ev, align 1, !tbaa !15, !alias.scope !67, !noalias !70
  %index.next147 = add nuw i64 %index142, 32      ; 2 uses
  %i.fa = icmp eq i64 %index.next147, %n.vec140
  br i1 %i.fa, label %middle.block148, label %vector.body141, !llvm.loop !72

middle.block148:                                  ; preds = %vector.body141
  %cmp.n149 = icmp eq i64 %i.en, %n.vec140
  br i1 %cmp.n149, label %_ZL11mbedtls_xorPhPKhS1_m.exit, label %vec.epilog.iter.check153

vec.epilog.iter.check153:                         ; preds = %middle.block148
  %min.epilog.iters.check154 = icmp eq i64 %n.mod.vf139, 0
  br i1 %min.epilog.iters.check154, label %.lr.ph56.preheader, label %vec.epilog.ph155, !prof !59

vec.epilog.ph155:                                 ; preds = %vector.main.loop.iter.check136, %vec.epilog.iter.check153
  %vec.epilog.resume.val150 = phi i64 [ %n.vec140, %vec.epilog.iter.check153 ], [ 0, %vector.main.loop.iter.check136 ]
  %n.mod.vf156 = and i64 %3, 3                    ; 2 uses
  %n.vec157 = sub nsw i64 %i.en, %n.mod.vf156     ; 2 uses
  %i.fb = add nsw i64 %.0.i.lcssa74, %n.vec157
  br label %vec.epilog.vector.body158

vec.epilog.vector.body158:                        ; preds = %vec.epilog.vector.body158, %vec.epilog.ph155
  %index159 = phi i64 [ %vec.epilog.resume.val150, %vec.epilog.ph155 ], [ %index.next162, %vec.epilog.vector.body158 ] ; 2 uses
  %i.fc = add i64 %.0.i.lcssa74, %index159        ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.fc ; 2 uses
  %wide.load160 = load <4 x i8>, ptr %i.fd, align 1, !tbaa !15, !alias.scope !67, !noalias !70
  %i.fe = getelementptr inbounds nuw i8, ptr %5, i64 %i.fc
  %wide.load161 = load <4 x i8>, ptr %i.fe, align 1, !tbaa !15, !alias.scope !70
  %8 = xor <4 x i8> %wide.load161, %wide.load160
  store <4 x i8> %8, ptr %i.fd, align 1, !tbaa !15, !alias.scope !67, !noalias !70
  %index.next162 = add nuw i64 %index159, 4       ; 2 uses
  %i.ff = icmp eq i64 %index.next162, %n.vec157
  br i1 %i.ff, label %vec.epilog.middle.block163, label %vec.epilog.vector.body158, !llvm.loop !73

vec.epilog.middle.block163:                       ; preds = %vec.epilog.vector.body158
  %cmp.n164 = icmp eq i64 %n.mod.vf156, 0
  br i1 %cmp.n164, label %_ZL11mbedtls_xorPhPKhS1_m.exit, label %.lr.ph56.preheader

.lr.ph56.preheader:                               ; preds = %vector.memcheck127, %iter.check151, %vec.epilog.iter.check153, %vec.epilog.middle.block163
  %.1.i55.ph = phi i64 [ %.0.i.lcssa74, %iter.check151 ], [ %.0.i.lcssa74, %vector.memcheck127 ], [ %i.es, %vec.epilog.iter.check153 ], [ %i.fb, %vec.epilog.middle.block163 ] ; 4 uses
  %i.fg = sub i64 %3, %.1.i55.ph
  %xtraiter171 = and i64 %i.fg, 3                 ; 2 uses
  %lcmp.mod172.not = icmp eq i64 %xtraiter171, 0
  br i1 %lcmp.mod172.not, label %.lr.ph56.prol.loopexit, label %.lr.ph56.prol

.lr.ph56.prol:                                    ; preds = %.lr.ph56.preheader, %.lr.ph56.prol
  %.1.i55.prol = phi i64 [ %i.fm, %.lr.ph56.prol ], [ %.1.i55.ph, %.lr.ph56.preheader ] ; 3 uses
  %prol.iter173 = phi i64 [ %prol.iter173.next, %.lr.ph56.prol ], [ 0, %.lr.ph56.preheader ]
  %i.fh = getelementptr inbounds nuw i8, ptr %i.el, i64 %.1.i55.prol ; 2 uses
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !15
  %i.fj = getelementptr inbounds nuw i8, ptr %5, i64 %.1.i55.prol
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !15
  %i.fl = xor i8 %i.fk, %i.fi
  store i8 %i.fl, ptr %i.fh, align 1, !tbaa !15
  %i.fm = add nuw nsw i64 %.1.i55.prol, 1         ; 2 uses
  %prol.iter173.next = add i64 %prol.iter173, 1   ; 2 uses
  %prol.iter173.cmp.not = icmp eq i64 %prol.iter173.next, %xtraiter171
  br i1 %prol.iter173.cmp.not, label %.lr.ph56.prol.loopexit, label %.lr.ph56.prol, !llvm.loop !74

.lr.ph56.prol.loopexit:                           ; preds = %.lr.ph56.prol, %.lr.ph56.preheader
  %.1.i55.unr = phi i64 [ %.1.i55.ph, %.lr.ph56.preheader ], [ %i.fm, %.lr.ph56.prol ]
  %i.fn = sub i64 %.1.i55.ph, %3
  %i.fo = icmp ugt i64 %i.fn, -4
  br i1 %i.fo, label %_ZL11mbedtls_xorPhPKhS1_m.exit, label %.lr.ph56

.lr.ph53:                                         ; preds = %bb.e
  %.0.copyload.i38 = load i64, ptr %i.el, align 1
  %.0.copyload.i37 = load i64, ptr %5, align 1
  %i.fp = xor i64 %.0.copyload.i37, %.0.copyload.i38
  store i64 %i.fp, ptr %i.el, align 1
  %.not.i = icmp samesign ult i64 %3, 16
  br i1 %.not.i, label %.preheader, label %.lr.ph53.1

.lr.ph53.1:                                       ; preds = %.lr.ph53
  %i.fq = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 2 uses
  %.0.copyload.i38.1 = load i64, ptr %i.fq, align 1
  %i.fr = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.0.copyload.i37.1 = load i64, ptr %i.fr, align 1
  %i.fs = xor i64 %.0.copyload.i37.1, %.0.copyload.i38.1
  store i64 %i.fs, ptr %i.fq, align 1
  br label %.preheader

.lr.ph56:                                         ; preds = %.lr.ph56.prol.loopexit, %.lr.ph56
  %.1.i55 = phi i64 [ %i.gq, %.lr.ph56 ], [ %.1.i55.unr, %.lr.ph56.prol.loopexit ] ; 6 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.el, i64 %.1.i55 ; 2 uses
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !15
  %i.fv = getelementptr inbounds nuw i8, ptr %5, i64 %.1.i55
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !15
  %i.fx = xor i8 %i.fw, %i.fu
  store i8 %i.fx, ptr %i.ft, align 1, !tbaa !15
  %i.fy = add nuw nsw i64 %.1.i55, 1              ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.fy ; 2 uses
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !15
  %i.gb = getelementptr inbounds nuw i8, ptr %5, i64 %i.fy
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !15
  %i.gd = xor i8 %i.gc, %i.ga
  store i8 %i.gd, ptr %i.fz, align 1, !tbaa !15
  %i.ge = add nuw nsw i64 %.1.i55, 2              ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ge ; 2 uses
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !15
  %i.gh = getelementptr inbounds nuw i8, ptr %5, i64 %i.ge
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !15
  %i.gj = xor i8 %i.gi, %i.gg
  store i8 %i.gj, ptr %i.gf, align 1, !tbaa !15
  %i.gk = add nuw nsw i64 %.1.i55, 3              ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.gk ; 2 uses
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !15
  %i.gn = getelementptr inbounds nuw i8, ptr %5, i64 %i.gk
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !15
  %i.gp = xor i8 %i.go, %i.gm
  store i8 %i.gp, ptr %i.gl, align 1, !tbaa !15
  %i.gq = add nuw nsw i64 %.1.i55, 4              ; 2 uses
  %exitcond60.not.3 = icmp eq i64 %i.gq, %3
  br i1 %exitcond60.not.3, label %_ZL11mbedtls_xorPhPKhS1_m.exit, label %.lr.ph56, !llvm.loop !75

_ZL11mbedtls_xorPhPKhS1_m.exit:                   ; preds = %.lr.ph56.prol.loopexit, %.lr.ph56, %middle.block148, %vec.epilog.middle.block163, %.preheader, %_ZL11mbedtls_xorPhPKhS1_m.exit29, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  ret i32 %i.e
}

declare void @mbedtls_platform_zeroize(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden range(i32 -20, 1) i32 @mbedtls_gcm_finish(ptr noundef captures(none) %0, ptr readnone captures(none) %1, i64 %2, ptr noundef writeonly captures(none) initializes((0, 8)) %3, ptr noundef captures(none) %4, i64 noundef %5) local_unnamed_addr #6 {
bb.a:
  store i64 0, ptr %3, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.b = load i64, ptr %i.a, align 8, !tbaa !51   ; 3 uses
  %i.c = shl i64 %i.b, 3                          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.e = load i64, ptr %i.d, align 8, !tbaa !33   ; 2 uses
  %i.f = shl i64 %i.e, 3                          ; 2 uses
  %i.g = icmp ne i64 %i.b, 0
  %i.h = and i64 %i.e, 15
  %.not = icmp eq i64 %i.h, 0
  %or.cond37 = select i1 %i.g, i1 true, i1 %.not
  br i1 %or.cond37, label %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 409
  %i.k = load i8, ptr %i.j, align 1, !tbaa !9
  %cond.i = icmp eq i8 %i.k, 0
  br i1 %cond.i, label %bb.c, label %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 407
  %i.n = load i8, ptr %i.m, align 1, !tbaa !15    ; 2 uses
  %i.o = lshr i8 %i.n, 4
  %i.p = zext nneg i8 %i.o to i64
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.0.copyload.i.1.i.i = load i64, ptr %i.r, align 1
  %i.s = and i8 %i.n, 15
  %i.t = zext nneg i8 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.t ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !7    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !7    ; 2 uses
  %i.y = tail call i64 @llvm.fshl.i64(i64 %i.v, i64 %i.x, i64 60)
  %i.z = xor i64 %i.y, %.0.copyload.i.1.i.i
  %.0.copyload.i.i.i = load i64, ptr %i.q, align 1
  %i.aa = and i64 %i.x, 15
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !29
  %i.ad = zext i16 %i.ac to i64
  %i.ae = shl nuw i64 %i.ad, 48
  %i.af = lshr i64 %i.v, 4
  %i.ag = xor i64 %.0.copyload.i.i.i, %i.af
  %i.ah = xor i64 %i.ag, %i.ae
  br label %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i

_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i:       ; preds = %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i, %bb.c
  %.sroa.17.0.i.i = phi i64 [ %i.z, %bb.c ], [ %i.bl, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i ] ; 2 uses
  %.sroa.0.0.i.i = phi i64 [ %i.ah, %bb.c ], [ %i.bj, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ 14, %bb.c ], [ %indvars.iv.next.i.i, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.i.i
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !15  ; 2 uses
  %i.ak = and i8 %i.aj, 15
  %i.al = and i64 %.sroa.17.0.i.i, 15
  %i.am = tail call i64 @llvm.fshl.i64(i64 %.sroa.0.0.i.i, i64 %.sroa.17.0.i.i, i64 60)
  %i.an = lshr i64 %.sroa.0.0.i.i, 4
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.al
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !29
  %i.aq = zext i16 %i.ap to i64
  %i.ar = shl nuw i64 %i.aq, 48
  %i.as = zext nneg i8 %i.ak to i64
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.as ; 2 uses
  %.0.copyload.i37.i.i = load i64, ptr %i.at, align 1
  %i.au = xor i64 %.0.copyload.i37.i.i, %i.an     ; 2 uses
  %i.av = xor i64 %i.au, %i.ar
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.0.copyload.i37.1.i.i = load i64, ptr %i.aw, align 1
  %i.ax = xor i64 %.0.copyload.i37.1.i.i, %i.am   ; 2 uses
  %i.ay = lshr i8 %i.aj, 4
  %i.az = and i64 %i.ax, 15
  %i.ba = tail call i64 @llvm.fshl.i64(i64 %i.au, i64 %i.ax, i64 60)
  %i.bb = lshr i64 %i.av, 4
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.az
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !29
  %i.be = zext i16 %i.bd to i64
  %i.bf = shl nuw i64 %i.be, 48
  %i.bg = zext nneg i8 %i.ay to i64
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.bg ; 2 uses
  %.0.copyload.i39.i.i = load i64, ptr %i.bh, align 1
  %i.bi = xor i64 %i.bb, %.0.copyload.i39.i.i
  %i.bj = xor i64 %i.bi, %i.bf                    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.0.copyload.i39.1.i.i = load i64, ptr %i.bk, align 1
  %i.bl = xor i64 %.0.copyload.i39.1.i.i, %i.ba   ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  %.not.i.i = icmp eq i64 %indvars.iv.i.i, 0
  br i1 %.not.i.i, label %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i, label %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i, !llvm.loop !31

_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i:        ; preds = %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i
  %i.bm = tail call i64 @llvm.bswap.i64(i64 %i.bj)
  store i64 %i.bm, ptr %i.i, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.bo = tail call i64 @llvm.bswap.i64(i64 %i.bl)
  store i64 %i.bo, ptr %i.bn, align 8
  br label %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit

_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit:     ; preds = %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i, %bb.b, %bb.a
  %i.bp = add i64 %5, -17
  %or.cond = icmp ult i64 %i.bp, -13
  br i1 %or.cond, label %_ZL11mbedtls_xorPhPKhS1_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit
  %i.bq = and i64 %i.b, 15
  %.not36 = icmp eq i64 %i.bq, 0
end_hunk_1
begin_hunk_2_@mbedtls_gcm_finish:bb.a
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !29
  %i.cz = zext i16 %i.cy to i64
  %i.da = shl nuw i64 %i.cz, 48
  %i.db = zext nneg i8 %i.ct to i64
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.db ; 2 uses
  %.0.copyload.i37.i.i52 = load i64, ptr %i.dc, align 1
  %i.dd = xor i64 %.0.copyload.i37.i.i52, %i.cw   ; 2 uses
  %i.de = xor i64 %i.dd, %i.da
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %.0.copyload.i37.1.i.i53 = load i64, ptr %i.df, align 1
  %i.dg = xor i64 %.0.copyload.i37.1.i.i53, %i.cv ; 2 uses
  %i.dh = lshr i8 %i.cs, 4
  %i.di = and i64 %i.dg, 15
  %i.dj = tail call i64 @llvm.fshl.i64(i64 %i.dd, i64 %i.dg, i64 60)
  %i.dk = lshr i64 %i.de, 4
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.di
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !29
  %i.dn = zext i16 %i.dm to i64
  %i.do = shl nuw i64 %i.dn, 48
  %i.dp = zext nneg i8 %i.dh to i64
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.dp ; 2 uses
  %.0.copyload.i39.i.i54 = load i64, ptr %i.dq, align 1
  %i.dr = xor i64 %i.dk, %.0.copyload.i39.i.i54
  %i.ds = xor i64 %i.dr, %i.do                    ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %.0.copyload.i39.1.i.i55 = load i64, ptr %i.dt, align 1
  %i.du = xor i64 %.0.copyload.i39.1.i.i55, %i.dj ; 2 uses
  %indvars.iv.next.i.i56 = add nsw i64 %indvars.iv.i.i51, -1
  %.not.i.i57 = icmp eq i64 %indvars.iv.i.i51, 0
  br i1 %.not.i.i57, label %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i58, label %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i48, !llvm.loop !31

_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i58:      ; preds = %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i48
  %i.dv = tail call i64 @llvm.bswap.i64(i64 %i.ds)
  store i64 %i.dv, ptr %i.br, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.dx = tail call i64 @llvm.bswap.i64(i64 %i.du)
  store i64 %i.dx, ptr %i.dw, align 8
  br label %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit59

_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit59:   ; preds = %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i58, %bb.e, %bb.d
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 360
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr nonnull align 8 %i.dy, i64 %5, i1 false)
  %i.dz = icmp ne i64 %i.c, 0
  %i.ea = icmp ne i64 %i.f, 0
  %or.cond3 = select i1 %i.dz, i1 true, i1 %i.ea
  br i1 %or.cond3, label %_ZL11mbedtls_xorPhPKhS1_m.exit41, label %_ZL11mbedtls_xorPhPKhS1_m.exit

_ZL11mbedtls_xorPhPKhS1_m.exit41:                 ; preds = %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit59
  %.sroa.6.12.insert.insert = tail call i64 @llvm.bswap.i64(i64 %i.c)
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 14 uses
  %.0.copyload.i42 = load i64, ptr %i.eb, align 8
  %.sroa.0.sroa.0.0.insert.insert = tail call i64 @llvm.bswap.i64(i64 %i.f)
  %i.ec = xor i64 %.sroa.0.sroa.0.0.insert.insert, %.0.copyload.i42
  store i64 %i.ec, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %.0.copyload.i42.1 = load i64, ptr %i.ed, align 8
  %i.ee = xor i64 %.sroa.6.12.insert.insert, %.0.copyload.i42.1 ; 3 uses
  store i64 %i.ee, ptr %i.ed, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 409
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !9
  %cond.i60 = icmp eq i8 %i.eg, 0
  br i1 %cond.i60, label %bb.g, label %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit74

bb.g:                                             ; preds = %_ZL11mbedtls_xorPhPKhS1_m.exit41
  %i.eh = lshr i64 %i.ee, 56
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.ej = lshr i64 %i.ee, 60
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.ei, i64 %i.ej ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %.0.copyload.i.1.i.i61 = load i64, ptr %i.el, align 1
  %i.em = and i64 %i.eh, 15
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %i.ei, i64 %i.em ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !7  ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !7  ; 2 uses
  %i.er = tail call i64 @llvm.fshl.i64(i64 %i.eo, i64 %i.eq, i64 60)
  %i.es = xor i64 %i.er, %.0.copyload.i.1.i.i61
  %.0.copyload.i.i.i62 = load i64, ptr %i.ek, align 1
  %i.et = and i64 %i.eq, 15
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.et
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !29
  %i.ew = zext i16 %i.ev to i64
  %i.ex = shl nuw i64 %i.ew, 48
  %i.ey = lshr i64 %i.eo, 4
  %i.ez = xor i64 %.0.copyload.i.i.i62, %i.ey
  %i.fa = xor i64 %i.ez, %i.ex
  br label %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i63

_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i63:     ; preds = %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i63, %bb.g
  %.sroa.17.0.i.i64 = phi i64 [ %i.es, %bb.g ], [ %i.ge, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i63 ] ; 2 uses
  %.sroa.0.0.i.i65 = phi i64 [ %i.fa, %bb.g ], [ %i.gc, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i63 ] ; 2 uses
  %indvars.iv.i.i66 = phi i64 [ 14, %bb.g ], [ %indvars.iv.next.i.i71, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i63 ] ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eb, i64 %indvars.iv.i.i66
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !15  ; 2 uses
  %i.fd = and i8 %i.fc, 15
  %i.fe = and i64 %.sroa.17.0.i.i64, 15
  %i.ff = tail call i64 @llvm.fshl.i64(i64 %.sroa.0.0.i.i65, i64 %.sroa.17.0.i.i64, i64 60)
  %i.fg = lshr i64 %.sroa.0.0.i.i65, 4
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.fe
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !29
  %i.fj = zext i16 %i.fi to i64
  %i.fk = shl nuw i64 %i.fj, 48
  %i.fl = zext nneg i8 %i.fd to i64
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %i.ei, i64 %i.fl ; 2 uses
  %.0.copyload.i37.i.i67 = load i64, ptr %i.fm, align 1
  %i.fn = xor i64 %.0.copyload.i37.i.i67, %i.fg   ; 2 uses
  %i.fo = xor i64 %i.fn, %i.fk
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %.0.copyload.i37.1.i.i68 = load i64, ptr %i.fp, align 1
  %i.fq = xor i64 %.0.copyload.i37.1.i.i68, %i.ff ; 2 uses
  %i.fr = lshr i8 %i.fc, 4
  %i.fs = and i64 %i.fq, 15
  %i.ft = tail call i64 @llvm.fshl.i64(i64 %i.fn, i64 %i.fq, i64 60)
  %i.fu = lshr i64 %i.fo, 4
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.fs
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !29
  %i.fx = zext i16 %i.fw to i64
  %i.fy = shl nuw i64 %i.fx, 48
  %i.fz = zext nneg i8 %i.fr to i64
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.ei, i64 %i.fz ; 2 uses
  %.0.copyload.i39.i.i69 = load i64, ptr %i.ga, align 1
  %i.gb = xor i64 %i.fu, %.0.copyload.i39.i.i69
  %i.gc = xor i64 %i.gb, %i.fy                    ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %.0.copyload.i39.1.i.i70 = load i64, ptr %i.gd, align 1
  %i.ge = xor i64 %.0.copyload.i39.1.i.i70, %i.ft ; 2 uses
  %indvars.iv.next.i.i71 = add nsw i64 %indvars.iv.i.i66, -1
  %.not.i.i72 = icmp eq i64 %indvars.iv.i.i66, 0
  br i1 %.not.i.i72, label %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i73, label %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i63, !llvm.loop !31

_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i73:      ; preds = %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i63
  %i.gf = tail call i64 @llvm.bswap.i64(i64 %i.gc)
  store i64 %i.gf, ptr %i.eb, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.gh = tail call i64 @llvm.bswap.i64(i64 %i.ge)
  store i64 %i.gh, ptr %i.gg, align 8
  br label %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit74

_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit74:   ; preds = %_ZL11mbedtls_xorPhPKhS1_m.exit41, %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i73
  %.not.i83 = icmp samesign ult i64 %5, 8
  br i1 %.not.i83, label %.preheader, label %.lr.ph85.preheader

.lr.ph85.preheader:                               ; preds = %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit74
  %i.gi = add nsw i64 %5, -8                      ; 2 uses
  %i.gj = lshr i64 %i.gi, 3
  %i.gk = add nuw nsw i64 %i.gj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.gi, 104
  br i1 %min.iters.check, label %.lr.ph85.preheader144, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph85.preheader
  %i.gl = and i64 %5, 24                          ; 2 uses
  %scevgep = getelementptr i8, ptr %4, i64 %i.gl
  %i.gm = getelementptr i8, ptr %0, i64 %i.gl
  %scevgep107 = getelementptr i8, ptr %i.gm, i64 392
  %bound0 = icmp ult ptr %4, %scevgep107
  %bound1 = icmp ult ptr %i.eb, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph85.preheader144, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gk, 4611686018427387900     ; 3 uses
  %i.gn = shl i64 %n.vec, 3                       ; 3 uses
  %i.go = or disjoint i64 %i.gn, 8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gp = shl i64 %index, 3                       ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %4, i64 %i.gp ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.gq, align 1, !alias.scope !76, !noalias !79
  %wide.load108 = load <2 x i64>, ptr %i.gr, align 1, !alias.scope !76, !noalias !79
  %i.gs = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.gp ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %wide.load109 = load <2 x i64>, ptr %i.gs, align 1, !alias.scope !79
  %wide.load110 = load <2 x i64>, ptr %i.gt, align 1, !alias.scope !79
  %i.gu = xor <2 x i64> %wide.load109, %wide.load
  %i.gv = xor <2 x i64> %wide.load110, %wide.load108
  store <2 x i64> %i.gu, ptr %i.gq, align 1, !alias.scope !76, !noalias !79
  store <2 x i64> %i.gv, ptr %i.gr, align 1, !alias.scope !76, !noalias !79
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gw = icmp eq i64 %index.next, %n.vec
  br i1 %i.gw, label %middle.block, label %vector.body, !llvm.loop !81

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gk, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph85.preheader144

.lr.ph85.preheader144:                            ; preds = %vector.memcheck, %.lr.ph85.preheader, %middle.block
  %.ph = phi i64 [ 8, %vector.memcheck ], [ 8, %.lr.ph85.preheader ], [ %i.go, %middle.block ]
  %.0.i84.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph85.preheader ], [ %i.gn, %middle.block ]
  br label %.lr.ph85

.preheader:                                       ; preds = %.lr.ph85, %middle.block, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit74
  %.0.i.lcssa = phi i64 [ 0, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit74 ], [ %i.gn, %middle.block ], [ %i.hw, %.lr.ph85 ] ; 9 uses
  %i.gx = icmp samesign ult i64 %.0.i.lcssa, %5
  br i1 %i.gx, label %iter.check, label %_ZL11mbedtls_xorPhPKhS1_m.exit

iter.check:                                       ; preds = %.preheader
  %i.gy = sub nuw i64 %5, %.0.i.lcssa             ; 4 uses
  %min.iters.check121 = icmp ult i64 %i.gy, 4
  br i1 %min.iters.check121, label %.lr.ph87.preheader, label %vector.memcheck112

vector.memcheck112:                               ; preds = %iter.check
  %scevgep113 = getelementptr i8, ptr %4, i64 %.0.i.lcssa
  %scevgep114 = getelementptr i8, ptr %4, i64 %5
  %i.gz = getelementptr i8, ptr %0, i64 %.0.i.lcssa
  %scevgep115 = getelementptr i8, ptr %i.gz, i64 392
  %i.ha = getelementptr i8, ptr %0, i64 %5
  %scevgep116 = getelementptr i8, ptr %i.ha, i64 392
  %bound0117 = icmp ult ptr %scevgep113, %scevgep116
  %bound1118 = icmp ult ptr %scevgep115, %scevgep114
  %found.conflict119 = and i1 %bound0117, %bound1118
  br i1 %found.conflict119, label %.lr.ph87.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck112
  %min.iters.check122 = icmp ult i64 %i.gy, 32
  br i1 %min.iters.check122, label %vec.epilog.ph, label %vector.body126

vector.body126:                                   ; preds = %vector.main.loop.iter.check, %vector.body126
  %index127 = phi i64 [ %index.next132, %vector.body126 ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.hb = add i64 %.0.i.lcssa, %index127          ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %4, i64 %i.hb ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16 ; 2 uses
  %wide.load128 = load <16 x i8>, ptr %i.hc, align 1, !tbaa !15, !alias.scope !82, !noalias !85
  %wide.load129 = load <16 x i8>, ptr %i.hd, align 1, !tbaa !15, !alias.scope !82, !noalias !85
  %i.he = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.hb ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %wide.load130 = load <16 x i8>, ptr %i.he, align 1, !tbaa !15, !alias.scope !85
  %wide.load131 = load <16 x i8>, ptr %i.hf, align 1, !tbaa !15, !alias.scope !85
  %i.hg = xor <16 x i8> %wide.load130, %wide.load128
  %i.hh = xor <16 x i8> %wide.load131, %wide.load129
  store <16 x i8> %i.hg, ptr %i.hc, align 1, !tbaa !15, !alias.scope !82, !noalias !85
  store <16 x i8> %i.hh, ptr %i.hd, align 1, !tbaa !15, !alias.scope !82, !noalias !85
  %index.next132 = add nuw i64 %index127, 32
  br label %vector.body126, !llvm.loop !87

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %n.vec137 = and i64 %i.gy, 28                   ; 3 uses
  %i.hi = add i64 %.0.i.lcssa, %n.vec137
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index138 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next141, %vec.epilog.vector.body ] ; 2 uses
  %i.hj = add i64 %.0.i.lcssa, %index138          ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %4, i64 %i.hj ; 2 uses
  %wide.load139 = load <4 x i8>, ptr %i.hk, align 1, !tbaa !15, !alias.scope !82, !noalias !85
  %i.hl = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.hj
  %wide.load140 = load <4 x i8>, ptr %i.hl, align 1, !tbaa !15, !alias.scope !85
  %6 = xor <4 x i8> %wide.load140, %wide.load139
  store <4 x i8> %6, ptr %i.hk, align 1, !tbaa !15, !alias.scope !82, !noalias !85
  %index.next141 = add nuw i64 %index138, 4       ; 2 uses
  %i.hm = icmp eq i64 %index.next141, %n.vec137
  br i1 %i.hm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !88

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n142 = icmp eq i64 %i.gy, %n.vec137
  br i1 %cmp.n142, label %_ZL11mbedtls_xorPhPKhS1_m.exit, label %.lr.ph87.preheader

.lr.ph87.preheader:                               ; preds = %vector.memcheck112, %iter.check, %vec.epilog.middle.block
  %.1.i86.ph = phi i64 [ %.0.i.lcssa, %vector.memcheck112 ], [ %.0.i.lcssa, %iter.check ], [ %i.hi, %vec.epilog.middle.block ] ; 4 uses
  %i.hn = sub i64 %5, %.1.i86.ph
  %xtraiter = and i64 %i.hn, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph87.prol.loopexit, label %.lr.ph87.prol

.lr.ph87.prol:                                    ; preds = %.lr.ph87.preheader, %.lr.ph87.prol
  %.1.i86.prol = phi i64 [ %i.ht, %.lr.ph87.prol ], [ %.1.i86.ph, %.lr.ph87.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph87.prol ], [ 0, %.lr.ph87.preheader ]
  %i.ho = getelementptr inbounds nuw i8, ptr %4, i64 %.1.i86.prol ; 2 uses
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !15
  %i.hq = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.1.i86.prol
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !15
  %i.hs = xor i8 %i.hr, %i.hp
  store i8 %i.hs, ptr %i.ho, align 1, !tbaa !15
  %i.ht = add nuw i64 %.1.i86.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph87.prol.loopexit, label %.lr.ph87.prol, !llvm.loop !89

.lr.ph87.prol.loopexit:                           ; preds = %.lr.ph87.prol, %.lr.ph87.preheader
  %.1.i86.unr = phi i64 [ %.1.i86.ph, %.lr.ph87.preheader ], [ %i.ht, %.lr.ph87.prol ]
  %i.hu = sub i64 %.1.i86.ph, %5
  %i.hv = icmp ugt i64 %i.hu, -4
  br i1 %i.hv, label %_ZL11mbedtls_xorPhPKhS1_m.exit, label %.lr.ph87

.lr.ph85:                                         ; preds = %.lr.ph85.preheader144, %.lr.ph85
  %i.hw = phi i64 [ %i.ia, %.lr.ph85 ], [ %.ph, %.lr.ph85.preheader144 ] ; 3 uses
  %.0.i84 = phi i64 [ %i.hw, %.lr.ph85 ], [ %.0.i84.ph, %.lr.ph85.preheader144 ] ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %4, i64 %.0.i84 ; 2 uses
  %.0.copyload.i44 = load i64, ptr %i.hx, align 1
  %i.hy = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.0.i84
  %.0.copyload.i43 = load i64, ptr %i.hy, align 1
  %i.hz = xor i64 %.0.copyload.i43, %.0.copyload.i44
  store i64 %i.hz, ptr %i.hx, align 1
  %i.ia = add nuw nsw i64 %i.hw, 8                ; 2 uses
  %.not.i = icmp ugt i64 %i.ia, %5
  br i1 %.not.i, label %.preheader, label %.lr.ph85, !llvm.loop !90

.lr.ph87:                                         ; preds = %.lr.ph87.prol.loopexit, %.lr.ph87
  %.1.i86 = phi i64 [ %i.iy, %.lr.ph87 ], [ %.1.i86.unr, %.lr.ph87.prol.loopexit ] ; 6 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %4, i64 %.1.i86 ; 2 uses
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !15
  %i.id = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.1.i86
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !15
  %i.if = xor i8 %i.ie, %i.ic
  store i8 %i.if, ptr %i.ib, align 1, !tbaa !15
  %i.ig = add nuw i64 %.1.i86, 1                  ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %4, i64 %i.ig ; 2 uses
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !15
  %i.ij = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ig
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !15
  %i.il = xor i8 %i.ik, %i.ii
  store i8 %i.il, ptr %i.ih, align 1, !tbaa !15
  %i.im = add nuw i64 %.1.i86, 2                  ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %4, i64 %i.im ; 2 uses
  %i.io = load i8, ptr %i.in, align 1, !tbaa !15
  %i.ip = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.im
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !15
  %i.ir = xor i8 %i.iq, %i.io
  store i8 %i.ir, ptr %i.in, align 1, !tbaa !15
  %i.is = add nuw i64 %.1.i86, 3                  ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %4, i64 %i.is ; 2 uses
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !15
  %i.iv = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.is
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !15
  %i.ix = xor i8 %i.iw, %i.iu
  store i8 %i.ix, ptr %i.it, align 1, !tbaa !15
  %i.iy = add nuw i64 %.1.i86, 4                  ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.iy, %5
  br i1 %exitcond.not.3, label %_ZL11mbedtls_xorPhPKhS1_m.exit, label %.lr.ph87, !llvm.loop !91

_ZL11mbedtls_xorPhPKhS1_m.exit:                   ; preds = %.lr.ph87.prol.loopexit, %.lr.ph87, %vec.epilog.middle.block, %.preheader, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit59, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit
  %.0 = phi i32 [ -20, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit ], [ 0, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit59 ], [ 0, %.preheader ], [ 0, %vec.epilog.middle.block ], [ 0, %.lr.ph87 ], [ 0, %.lr.ph87.prol.loopexit ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_gcm_crypt_and_tag(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef readonly captures(none) %3, i64 noundef %4, ptr noundef readonly captures(none) %5, i64 noundef %6, ptr noundef %7, ptr noundef %8, i64 noundef %9, ptr noundef captures(none) %10) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = tail call i32 @mbedtls_gcm_starts(ptr noundef %0, i32 noundef %1, ptr noundef %3, i64 noundef %4) ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @mbedtls_gcm_update_ad(ptr noundef %0, ptr noundef %5, i64 noundef %6) ; 2 uses
  %.not23 = icmp eq i32 %i.c, 0
  br i1 %.not23, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = call i32 @mbedtls_gcm_update(ptr noundef %0, ptr noundef %7, i64 noundef %2, ptr noundef %8, i64 noundef %2, ptr noundef nonnull %i.a) ; 2 uses
  %.not24 = icmp eq i32 %i.d, 0
  br i1 %.not24, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = call i32 @mbedtls_gcm_finish(ptr noundef %0, ptr poison, i64 poison, ptr noundef nonnull %i.a, ptr noundef %10, i64 noundef %9)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %i.d, %bb.c ], [ %i.b, %bb.a ], [ %i.c, %bb.b ], [ %i.e, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_gcm_auth_decrypt(ptr noundef %0, i64 noundef %1, ptr noundef readonly captures(none) %2, i64 noundef %3, ptr noundef readonly captures(none) %4, i64 noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef %8, ptr noundef %9) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.c = tail call i32 @mbedtls_gcm_starts(ptr noundef %0, i32 noundef 0, ptr noundef readonly %2, i64 noundef %3) ; 2 uses
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %mbedtls_gcm_crypt_and_tag.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @mbedtls_gcm_update_ad(ptr noundef %0, ptr noundef readonly %4, i64 noundef %5) ; 2 uses
  %.not23.i = icmp eq i32 %i.d, 0
  br i1 %.not23.i, label %bb.c, label %mbedtls_gcm_crypt_and_tag.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.e = call i32 @mbedtls_gcm_update(ptr noundef %0, ptr noundef %8, i64 noundef %1, ptr noundef %9, i64 noundef %1, ptr noundef nonnull %i.a) ; 2 uses
  %.not24.i = icmp eq i32 %i.e, 0
  br i1 %.not24.i, label %mbedtls_gcm_crypt_and_tag.exit, label %mbedtls_gcm_crypt_and_tag.exit.thread

mbedtls_gcm_crypt_and_tag.exit.thread:            ; preds = %bb.c, %bb.a, %bb.b
  %.0.i.ph = phi i32 [ %i.d, %bb.b ], [ %i.c, %bb.a ], [ %i.e, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.f

mbedtls_gcm_crypt_and_tag.exit:                   ; preds = %bb.c
  %i.f = call i32 @mbedtls_gcm_finish(ptr noundef %0, ptr poison, i64 poison, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef %7) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %mbedtls_gcm_crypt_and_tag.exit
  %i.g = call noundef i32 @_Z17mbedtls_ct_memcmpPKvS0_m(ptr noundef %6, ptr noundef nonnull %i.b, i64 noundef %7)
  %.not16 = icmp eq i32 %i.g, 0
  br i1 %.not16, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @mbedtls_platform_zeroize(ptr noundef %9, i64 noundef %1)
  br label %bb.f

bb.f:                                             ; preds = %mbedtls_gcm_crypt_and_tag.exit.thread, %bb.d, %mbedtls_gcm_crypt_and_tag.exit, %bb.e
  %.0 = phi i32 [ %i.f, %mbedtls_gcm_crypt_and_tag.exit ], [ -18, %bb.e ], [ 0, %bb.d ], [ %.0.i.ph, %mbedtls_gcm_crypt_and_tag.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  ret i32 %.0
}

declare noundef i32 @_Z17mbedtls_ct_memcmpPKvS0_m(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @mbedtls_gcm_free(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @mbedtls_cipher_free(ptr noundef nonnull %0)
  tail call void @mbedtls_platform_zeroize(ptr noundef nonnull %0, i64 noundef 416)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !5, i64 0}
!9 = !{!10, !5, i64 409}
!10 = !{!"_ZTS19mbedtls_gcm_context", !11, i64 0, !5, i64 88, !8, i64 344, !8, i64 352, !5, i64 360, !5, i64 376, !5, i64 392, !5, i64 408, !5, i64 409}
!11 = !{!"_ZTS24mbedtls_cipher_context_t", !12, i64 0, !4, i64 8, !14, i64 12, !13, i64 16, !13, i64 24, !5, i64 32, !8, i64 48, !5, i64 56, !8, i64 72, !13, i64 80}
!12 = !{!"p1 _ZTS21mbedtls_cipher_info_t", !13, i64 0}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!"_ZTS19mbedtls_operation_t", !5, i64 0}
!15 = !{!5, !5, i64 0}
!16 = !{!10, !5, i64 408}
!17 = !{!18}
!18 = distinct !{!18, !19}
!19 = distinct !{!19, !"LVerDomain"}
!20 = !{!21}
!21 = distinct !{!21, !19}
!22 = distinct !{!22, !23, !24, !25}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.unroll.disable"}
!28 = distinct !{!28, !23, !24}
!29 = !{!30, !30, i64 0}
!30 = !{!"short", !5, i64 0}
!31 = distinct !{!31, !23}
!32 = distinct !{!32, !23}
!33 = !{!10, !8, i64 352}
!34 = !{!35}
!35 = distinct !{!35, !36}
!36 = distinct !{!36, !"LVerDomain"}
!37 = !{!38}
!38 = distinct !{!38, !36}
!39 = distinct !{!39, !23, !24, !25}
!40 = distinct !{!40, !27}
!41 = distinct !{!41, !23, !24}
!42 = distinct !{!42, !23}
!43 = !{!44}
!44 = distinct !{!44, !45}
!45 = distinct !{!45, !"LVerDomain"}
!46 = !{!47}
!47 = distinct !{!47, !45}
!48 = distinct !{!48, !23, !24, !25}
!49 = distinct !{!49, !27}
!50 = distinct !{!50, !23, !24}
!51 = !{!10, !8, i64 344}
!52 = distinct !{!52, !23}
!53 = !{!54}
!54 = distinct !{!54, !55}
!55 = distinct !{!55, !"LVerDomain"}
!56 = !{!57}
!57 = distinct !{!57, !55}
!58 = distinct !{!58, !23, !24, !25}
!59 = !{!"branch_weights", i32 4, i32 28}
!60 = distinct !{!60, !23, !24, !25}
!61 = distinct !{!61, !27}
!62 = distinct !{!62, !23, !24}
!63 = distinct !{!63, !23, !24, !25}
!64 = distinct !{!64, !23, !24, !25}
!65 = distinct !{!65, !27}
!66 = distinct !{!66, !23, !24}
!67 = !{!68}
!68 = distinct !{!68, !69}
!69 = distinct !{!69, !"LVerDomain"}
!70 = !{!71}
!71 = distinct !{!71, !69}
!72 = distinct !{!72, !23, !24, !25}
!73 = distinct !{!73, !23, !24, !25}
!74 = distinct !{!74, !27}
!75 = distinct !{!75, !23, !24}
!76 = !{!77}
!77 = distinct !{!77, !78}
!78 = distinct !{!78, !"LVerDomain"}
!79 = !{!80}
!80 = distinct !{!80, !78}
!81 = distinct !{!81, !23, !24, !25}
!82 = !{!83}
!83 = distinct !{!83, !84}
!84 = distinct !{!84, !"LVerDomain"}
!85 = !{!86}
!86 = distinct !{!86, !84}
!87 = distinct !{!87, !23, !24, !25}
!88 = distinct !{!88, !23, !24, !25}
!89 = distinct !{!89, !27}
!90 = distinct !{!90, !23, !24}
!91 = distinct !{!91, !23, !24}
end_hunk_2
