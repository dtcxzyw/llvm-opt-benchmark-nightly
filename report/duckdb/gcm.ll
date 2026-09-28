Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/gcm?download=true
inline.NumInlined: 16
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 24
begin_hunk_0_@mbedtls_gcm_setkey:bb.a
  %i.v = call i64 @llvm.bswap.i64(i64 %i.u)       ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  store i64 %i.v, ptr %i.r, align 8
  %sh.diff.i = lshr i64 %i.l, 49
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i8
  %i.w = and i8 %tr.sh.diff.i, -128
  %i.x = trunc i64 %i.v to i8
  %i.y = or disjoint i8 %i.w, %i.x
  store i8 %i.y, ptr %i.r, align 8, !tbaa !16
  %i.z = call i64 @llvm.bswap.i64(i64 %i.l)       ; 9 uses
  %i.aa = lshr i64 %i.z, 1
  %i.ab = call i64 @llvm.bswap.i64(i64 %i.aa)     ; 3 uses
  store i64 %i.ab, ptr %i.p, align 8
  %i.ac = and i64 %i.o, 72057594037927936
  %.not.i.i = icmp eq i64 %i.ac, 0
  %i.ad = select i1 %.not.i.i, i8 0, i8 -31
  %i.ae = trunc i64 %i.ab to i8
  %i.af = xor i8 %i.ad, %i.ae
  store i8 %i.af, ptr %i.p, align 8, !tbaa !16
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %.0.copyload.i10.i.1.i = load i64, ptr %i.r, align 8 ; 2 uses
  %i.ai = call i64 @llvm.bswap.i64(i64 %.0.copyload.i10.i.1.i) ; 6 uses
  %i.aj = lshr i64 %i.ai, 1
  %i.ak = call i64 @llvm.bswap.i64(i64 %i.aj)     ; 2 uses
  store i64 %i.ak, ptr %i.ah, align 8
  %sh.diff57.i = lshr i64 %i.ab, 49
  %tr.sh.diff58.i = trunc i64 %sh.diff57.i to i8
  %i.al = and i8 %tr.sh.diff58.i, -128
  %i.am = trunc i64 %i.ak to i8
  %i.an = or disjoint i8 %i.al, %i.am
  store i8 %i.an, ptr %i.ah, align 8, !tbaa !16
  %.0.copyload.i.i.1.i = load i64, ptr %i.p, align 8
  %i.ao = call i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.1.i) ; 6 uses
  %i.ap = lshr i64 %i.ao, 1
  %i.aq = call i64 @llvm.bswap.i64(i64 %i.ap)     ; 3 uses
  store i64 %i.aq, ptr %i.ag, align 8
  %i.ar = and i64 %.0.copyload.i10.i.1.i, 72057594037927936
  %.not.i.1.i = icmp eq i64 %i.ar, 0
  %i.as = select i1 %.not.i.1.i, i8 0, i8 -31
  %i.at = trunc i64 %i.aq to i8
  %i.au = xor i8 %i.as, %i.at
  store i8 %i.au, ptr %i.ag, align 8, !tbaa !16
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %.0.copyload.i10.i.2.i = load i64, ptr %i.ah, align 8 ; 2 uses
  %i.ax = call i64 @llvm.bswap.i64(i64 %.0.copyload.i10.i.2.i) ; 5 uses
  %i.ay = lshr i64 %i.ax, 1
  %i.az = call i64 @llvm.bswap.i64(i64 %i.ay)     ; 2 uses
  store i64 %i.az, ptr %i.aw, align 8
  %sh.diff59.i = lshr i64 %i.aq, 49
  %tr.sh.diff60.i = trunc i64 %sh.diff59.i to i8
  %i.ba = and i8 %tr.sh.diff60.i, -128
  %i.bb = trunc i64 %i.az to i8
  %i.bc = or disjoint i8 %i.ba, %i.bb
  store i8 %i.bc, ptr %i.aw, align 8, !tbaa !16
  %.0.copyload.i.i.2.i = load i64, ptr %i.ag, align 8
  %i.bd = call i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.2.i) ; 5 uses
  %i.be = lshr i64 %i.bd, 1
  %i.bf = call i64 @llvm.bswap.i64(i64 %i.be)     ; 2 uses
  store i64 %i.bf, ptr %i.av, align 8
  %i.bg = and i64 %.0.copyload.i10.i.2.i, 72057594037927936
  %.not.i.2.i = icmp eq i64 %i.bg, 0
  %i.bh = select i1 %.not.i.2.i, i8 0, i8 -31
  %i.bi = trunc i64 %i.bf to i8
  %i.bj = xor i8 %i.bh, %i.bi
  store i8 %i.bj, ptr %i.av, align 8, !tbaa !16
  store i64 %i.z, ptr %i.q, align 8
  store i64 %i.t, ptr %i.s, align 8
  store i64 %i.ao, ptr %i.p, align 8
  store i64 %i.ai, ptr %i.r, align 8
  store i64 %i.bd, ptr %i.ag, align 8
  store i64 %i.ax, ptr %i.ah, align 8
  %i.bk = load i64, ptr %i.av, align 8, !tbaa !9
  %i.bl = call i64 @llvm.bswap.i64(i64 %i.bk)     ; 4 uses
  store i64 %i.bl, ptr %i.av, align 8
  %i.bm = load i64, ptr %i.aw, align 8, !tbaa !9
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
define hidden i32 @mbedtls_gcm_starts(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i64 0, ptr %i.a, align 8, !tbaa !9
  %i.b = add i64 %3, -1
  %or.cond = icmp ult i64 %i.b, 2305843009213693951
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 15 uses
  %i.d = trunc i32 %1 to i8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 408
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  store i8 %i.d, ptr %i.e, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.g = icmp eq i64 %3, 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br i1 %i.g, label %bb.c, label %.lr.ph80

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.c, ptr noundef nonnull align 1 dereferenceable(12) %2, i64 12, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 391
  store i8 1, ptr %i.h, align 1, !tbaa !16
  br label %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit67

.lr.ph80:                                         ; preds = %bb.b
  %i.i = shl nuw i64 %3, 3
  %i.j = tail call i64 @llvm.bswap.i64(i64 %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 409
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 391
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 384
  %scevgep = getelementptr i8, ptr %0, i64 376
  %scevgep104 = getelementptr i8, ptr %0, i64 376
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  br label %bb.d

.preheader68:                                     ; preds = %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 384
  %.0.copyload.i52.1.pre = load i64, ptr %.phi.trans.insert, align 8
  %4 = xor i64 %i.j, %.0.copyload.i52.1.pre       ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i64 %4, ptr %i.p, align 8
  %cond.i53 = icmp eq i8 %i.bk, 0
  br i1 %cond.i53, label %bb.f, label %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit67

bb.d:                                             ; preds = %.lr.ph80, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit.a
  %.079 = phi ptr [ %2, %.lr.ph80 ], [ %8, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit.a ] ; 11 uses
  %.04078 = phi i64 [ %3, %.lr.ph80 ], [ %7, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit.a ] ; 4 uses
  %i.q = tail call i64 @llvm.umin.i64(i64 %.04078, i64 16) ; 10 uses
  %.not.i4773 = icmp ult i64 %.04078, 8
  br i1 %.not.i4773, label %.preheader69, label %.lr.ph

.preheader69:                                     ; preds = %.lr.ph, %.lr.ph.1, %bb.d
  %.0.i46.lcssa = phi i64 [ 0, %bb.d ], [ 8, %.lr.ph ], [ 16, %.lr.ph.1 ] ; 8 uses
  %i.r = icmp samesign ult i64 %.0.i46.lcssa, %i.q
  br i1 %i.r, label %iter.check, label %_ZL11mbedtls_xorPhPKhS1_m.exit49

iter.check:                                       ; preds = %.preheader69
  %i.s = sub nuw nsw i64 %i.q, %.0.i46.lcssa      ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.s, 8
  br i1 %min.iters.check, label %.lr.ph76.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep103 = getelementptr i8, ptr %scevgep, i64 %.0.i46.lcssa
  %scevgep105 = getelementptr i8, ptr %scevgep104, i64 %i.q
  %scevgep106 = getelementptr i8, ptr %.079, i64 %.0.i46.lcssa
  %scevgep107 = getelementptr i8, ptr %.079, i64 %i.q
  %bound0 = icmp ult ptr %scevgep103, %scevgep107
  %bound1 = icmp ult ptr %scevgep106, %scevgep105
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph76.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %i.t = and i64 %i.q, 7                          ; 2 uses
  %n.vec112 = sub nsw i64 %i.s, %i.t              ; 2 uses
  %i.u = add nsw i64 %.0.i46.lcssa, %n.vec112
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index113 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next116, %vec.epilog.vector.body ] ; 2 uses
  %i.v = add nuw i64 %.0.i46.lcssa, %index113     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.v ; 2 uses
  %wide.load114 = load <8 x i8>, ptr %i.w, align 1, !tbaa !16, !alias.scope !33, !noalias !34
  %i.x = getelementptr inbounds nuw i8, ptr %.079, i64 %i.v
  %wide.load115 = load <8 x i8>, ptr %i.x, align 1, !tbaa !16, !alias.scope !34
  %i.y = xor <8 x i8> %wide.load115, %wide.load114
  store <8 x i8> %i.y, ptr %i.w, align 1, !tbaa !16, !alias.scope !33, !noalias !34
  %index.next116 = add nuw i64 %index113, 8       ; 2 uses
  %i.z = icmp eq i64 %index.next116, %n.vec112
  br i1 %i.z, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !29

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n117 = icmp eq i64 %i.t, 0
  br i1 %cmp.n117, label %_ZL11mbedtls_xorPhPKhS1_m.exit49, label %.lr.ph76.preheader

.lr.ph76.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.middle.block
  %.1.i4875.ph = phi i64 [ %.0.i46.lcssa, %vector.memcheck ], [ %.0.i46.lcssa, %iter.check ], [ %i.u, %vec.epilog.middle.block ] ; 4 uses
  %i.aa = sub nsw i64 %i.q, %.1.i4875.ph
  %xtraiter = and i64 %i.aa, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph76.prol.loopexit, label %.lr.ph76.prol

.lr.ph76.prol:                                    ; preds = %.lr.ph76.preheader, %.lr.ph76.prol
  %.1.i4875.prol = phi i64 [ %i.ag, %.lr.ph76.prol ], [ %.1.i4875.ph, %.lr.ph76.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph76.prol ], [ 0, %.lr.ph76.preheader ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 %.1.i4875.prol ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !16
  %i.ad = getelementptr inbounds nuw i8, ptr %.079, i64 %.1.i4875.prol
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !16
  %i.af = xor i8 %i.ae, %i.ac
  store i8 %i.af, ptr %i.ab, align 1, !tbaa !16
  %i.ag = add nuw nsw i64 %.1.i4875.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph76.prol.loopexit, label %.lr.ph76.prol, !llvm.loop !30

.lr.ph76.prol.loopexit:                           ; preds = %.lr.ph76.prol, %.lr.ph76.preheader
  %.1.i4875.unr = phi i64 [ %.1.i4875.ph, %.lr.ph76.preheader ], [ %i.ag, %.lr.ph76.prol ]
  %i.ah = sub nsw i64 %.1.i4875.ph, %i.q
  %i.ai = icmp ugt i64 %i.ah, -4
  br i1 %i.ai, label %_ZL11mbedtls_xorPhPKhS1_m.exit49, label %.lr.ph76

.lr.ph:                                           ; preds = %bb.d
  %.0.copyload.i50 = load i64, ptr %i.c, align 8
  %.0.copyload.i = load i64, ptr %.079, align 1
  %i.aj = xor i64 %.0.copyload.i, %.0.copyload.i50
  store i64 %i.aj, ptr %i.c, align 8
  %.not.i47 = icmp ult i64 %.04078, 16
  br i1 %.not.i47, label %.preheader69, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %.0.copyload.i50.1 = load i64, ptr %i.o, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.079, i64 8
  %.0.copyload.i.1 = load i64, ptr %i.ak, align 1
  %i.al = xor i64 %.0.copyload.i.1, %.0.copyload.i50.1
  store i64 %i.al, ptr %i.o, align 8
  br label %.preheader69

.lr.ph76:                                         ; preds = %.lr.ph76.prol.loopexit, %.lr.ph76
  %.1.i4875 = phi i64 [ %i.bj, %.lr.ph76 ], [ %.1.i4875.unr, %.lr.ph76.prol.loopexit ] ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 %.1.i4875 ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !16
  %i.ao = getelementptr inbounds nuw i8, ptr %.079, i64 %.1.i4875
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !16
  %i.aq = xor i8 %i.ap, %i.an
  store i8 %i.aq, ptr %i.am, align 1, !tbaa !16
  %i.ar = add nuw nsw i64 %.1.i4875, 1            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ar ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !16
  %i.au = getelementptr inbounds nuw i8, ptr %.079, i64 %i.ar
  %i.av = load i8, ptr %i.au, align 1, !tbaa !16
  %i.aw = xor i8 %i.av, %i.at
  store i8 %i.aw, ptr %i.as, align 1, !tbaa !16
  %i.ax = add nuw nsw i64 %.1.i4875, 2            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ax ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !16
  %i.ba = getelementptr inbounds nuw i8, ptr %.079, i64 %i.ax
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !16
  %i.bc = xor i8 %i.bb, %i.az
  store i8 %i.bc, ptr %i.ay, align 1, !tbaa !16
  %i.bd = add nuw nsw i64 %.1.i4875, 3            ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bd ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !16
  %i.bg = getelementptr inbounds nuw i8, ptr %.079, i64 %i.bd
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !16
  %i.bi = xor i8 %i.bh, %i.bf
  store i8 %i.bi, ptr %i.be, align 1, !tbaa !16
  %i.bj = add nuw nsw i64 %.1.i4875, 4            ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bj, %i.q
  br i1 %exitcond.not.3, label %_ZL11mbedtls_xorPhPKhS1_m.exit49, label %.lr.ph76, !llvm.loop !31

_ZL11mbedtls_xorPhPKhS1_m.exit49:                 ; preds = %.lr.ph76.prol.loopexit, %.lr.ph76, %vec.epilog.middle.block, %.preheader69
  %i.bk = load i8, ptr %i.k, align 1, !tbaa !15   ; 2 uses
  %cond.i = icmp eq i8 %i.bk, 0
  br i1 %cond.i, label %bb.e, label %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit.a

bb.e:                                             ; preds = %_ZL11mbedtls_xorPhPKhS1_m.exit49
  %i.bl = load i8, ptr %i.m, align 1, !tbaa !16   ; 2 uses
  %i.bm = lshr i8 %i.bl, 4
  %i.bn = zext nneg i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.bn ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.0.copyload.i.1.i.i = load i64, ptr %i.bp, align 1
  %i.bq = and i8 %i.bl, 15
  %i.br = zext nneg i8 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.br ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !9  ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !9  ; 2 uses
  %i.bw = tail call i64 @llvm.fshl.i64(i64 %i.bt, i64 %i.bv, i64 60)
  %i.bx = xor i64 %i.bw, %.0.copyload.i.1.i.i
  %.0.copyload.i.i.i = load i64, ptr %i.bo, align 1
  %i.by = and i64 %i.bv, 15
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.by
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !23
  %i.cb = zext i16 %i.ca to i64
  %i.cc = shl nuw i64 %i.cb, 48
  %i.cd = lshr i64 %i.bt, 4
  %i.ce = xor i64 %.0.copyload.i.i.i, %i.cd
  %i.cf = xor i64 %i.ce, %i.cc
  br label %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i

_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i:       ; preds = %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i, %bb.e
  %.sroa.17.0.i.i = phi i64 [ %i.bx, %bb.e ], [ %i.dj, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i ] ; 2 uses
  %.sroa.0.0.i.i = phi i64 [ %i.cf, %bb.e ], [ %i.dh, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ 14, %bb.e ], [ %indvars.iv.next.i.i, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !16  ; 2 uses
  %i.ci = and i8 %i.ch, 15
  %i.cj = and i64 %.sroa.17.0.i.i, 15
  %i.ck = tail call i64 @llvm.fshl.i64(i64 %.sroa.0.0.i.i, i64 %.sroa.17.0.i.i, i64 60)
  %i.cl = lshr i64 %.sroa.0.0.i.i, 4
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.cj
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !23
  %i.co = zext i16 %i.cn to i64
  %i.cp = shl nuw i64 %i.co, 48
  %i.cq = zext nneg i8 %i.ci to i64
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.cq ; 2 uses
  %.0.copyload.i37.i.i = load i64, ptr %i.cr, align 1
  %i.cs = xor i64 %.0.copyload.i37.i.i, %i.cl     ; 2 uses
  %i.ct = xor i64 %i.cs, %i.cp
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %.0.copyload.i37.1.i.i = load i64, ptr %i.cu, align 1
  %i.cv = xor i64 %.0.copyload.i37.1.i.i, %i.ck   ; 2 uses
  %i.cw = lshr i8 %i.ch, 4
  %i.cx = and i64 %i.cv, 15
  %i.cy = tail call i64 @llvm.fshl.i64(i64 %i.cs, i64 %i.cv, i64 60)
  %i.cz = lshr i64 %i.ct, 4
  %i.da = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.cx
  %i.db = load i16, ptr %i.da, align 2, !tbaa !23
  %i.dc = zext i16 %i.db to i64
  %i.dd = shl nuw i64 %i.dc, 48
  %i.de = zext nneg i8 %i.cw to i64
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.de ; 2 uses
  %.0.copyload.i39.i.i = load i64, ptr %i.df, align 1
  %i.dg = xor i64 %i.cz, %.0.copyload.i39.i.i
  %i.dh = xor i64 %i.dg, %i.dd                    ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %.0.copyload.i39.1.i.i = load i64, ptr %i.di, align 1
  %i.dj = xor i64 %.0.copyload.i39.1.i.i, %i.cy   ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  %.not.i.i = icmp eq i64 %indvars.iv.i.i, 0
  br i1 %.not.i.i, label %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i, label %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i, !llvm.loop !0

_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i:        ; preds = %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i
  %5 = tail call i64 @llvm.bswap.i64(i64 %i.dh)
  store i64 %5, ptr %i.c, align 8
  %6 = tail call i64 @llvm.bswap.i64(i64 %i.dj)
  store i64 %6, ptr %i.n, align 8
  br label %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit.a

_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit.a:   ; preds = %_ZL11mbedtls_xorPhPKhS1_m.exit49, %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i
  %7 = sub nuw i64 %.04078, %i.q                  ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %.079, i64 %i.q
  %.not44.a = icmp eq i64 %7, 0
  br i1 %.not44.a, label %.preheader68, label %bb.d, !llvm.loop !32

bb.f:                                             ; preds = %.preheader68
  %i.dk = lshr i64 %4, 56
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.dm = lshr i64 %4, 60
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %i.dl, i64 %i.dm ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %.0.copyload.i.1.i.i54 = load i64, ptr %i.do, align 1
  %i.dp = and i64 %i.dk, 15
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %i.dl, i64 %i.dp ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !9  ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !9  ; 2 uses
  %i.du = tail call i64 @llvm.fshl.i64(i64 %i.dr, i64 %i.dt, i64 60)
  %i.dv = xor i64 %i.du, %.0.copyload.i.1.i.i54
  %.0.copyload.i.i.i55 = load i64, ptr %i.dn, align 1
  %i.dw = and i64 %i.dt, 15
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.dw
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !23
  %i.dz = zext i16 %i.dy to i64
  %i.ea = shl nuw i64 %i.dz, 48
  %i.eb = lshr i64 %i.dr, 4
  %i.ec = xor i64 %.0.copyload.i.i.i55, %i.eb
  %i.ed = xor i64 %i.ec, %i.ea
  br label %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i56

_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i56:     ; preds = %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i56, %bb.f
  %.sroa.17.0.i.i57 = phi i64 [ %i.dv, %bb.f ], [ %i.fh, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i56 ] ; 2 uses
  %.sroa.0.0.i.i58 = phi i64 [ %i.ed, %bb.f ], [ %i.ff, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i56 ] ; 2 uses
  %indvars.iv.i.i59 = phi i64 [ 14, %bb.f ], [ %indvars.iv.next.i.i64, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i56 ] ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i59
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !16  ; 2 uses
  %i.eg = and i8 %i.ef, 15
  %i.eh = and i64 %.sroa.17.0.i.i57, 15
  %i.ei = tail call i64 @llvm.fshl.i64(i64 %.sroa.0.0.i.i58, i64 %.sroa.17.0.i.i57, i64 60)
  %i.ej = lshr i64 %.sroa.0.0.i.i58, 4
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.eh
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !23
  %i.em = zext i16 %i.el to i64
  %i.en = shl nuw i64 %i.em, 48
  %i.eo = zext nneg i8 %i.eg to i64
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.dl, i64 %i.eo ; 2 uses
  %.0.copyload.i37.i.i60 = load i64, ptr %i.ep, align 1
  %i.eq = xor i64 %.0.copyload.i37.i.i60, %i.ej   ; 2 uses
  %i.er = xor i64 %i.eq, %i.en
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %.0.copyload.i37.1.i.i61 = load i64, ptr %i.es, align 1
  %i.et = xor i64 %.0.copyload.i37.1.i.i61, %i.ei ; 2 uses
  %i.eu = lshr i8 %i.ef, 4
  %i.ev = and i64 %i.et, 15
  %i.ew = tail call i64 @llvm.fshl.i64(i64 %i.eq, i64 %i.et, i64 60)
  %i.ex = lshr i64 %i.er, 4
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.ev
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !23
  %i.fa = zext i16 %i.ez to i64
  %i.fb = shl nuw i64 %i.fa, 48
  %i.fc = zext nneg i8 %i.eu to i64
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %i.dl, i64 %i.fc ; 2 uses
  %.0.copyload.i39.i.i62 = load i64, ptr %i.fd, align 1
  %i.fe = xor i64 %i.ex, %.0.copyload.i39.i.i62
  %i.ff = xor i64 %i.fe, %i.fb                    ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %.0.copyload.i39.1.i.i63 = load i64, ptr %i.fg, align 1
  %i.fh = xor i64 %.0.copyload.i39.1.i.i63, %i.ew ; 2 uses
  %indvars.iv.next.i.i64 = add nsw i64 %indvars.iv.i.i59, -1
  %.not.i.i65 = icmp eq i64 %indvars.iv.i.i59, 0
  br i1 %.not.i.i65, label %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i66, label %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i56, !llvm.loop !0

_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i66:      ; preds = %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i56
  %i.fi = tail call i64 @llvm.bswap.i64(i64 %i.ff)
  store i64 %i.fi, ptr %i.c, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.fk = tail call i64 @llvm.bswap.i64(i64 %i.fh)
  store i64 %i.fk, ptr %i.fj, align 8
  br label %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit67

_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit67:   ; preds = %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i66, %.preheader68, %bb.c
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.fm = call i32 @mbedtls_cipher_update(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef 16, ptr noundef nonnull %i.fl, ptr noundef nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit67, %bb.a
  %.041 = phi i32 [ -20, %bb.a ], [ %i.fm, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit67 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.041
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL8gcm_multP19mbedtls_gcm_contextPKhPh(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 409
  %i.b = load i8, ptr %i.a, align 1, !tbaa !15
  %cond = icmp eq i8 %i.b, 0
  br i1 %cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.e = load i8, ptr %i.d, align 1, !tbaa !16    ; 2 uses
  %i.f = lshr i8 %i.e, 4
  %i.g = zext nneg i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.0.copyload.i.1.i = load i64, ptr %i.i, align 1
  %i.j = and i8 %i.e, 15
  %i.k = zext nneg i8 %i.j to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.k ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !9    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !9    ; 2 uses
  %i.p = tail call i64 @llvm.fshl.i64(i64 %i.m, i64 %i.o, i64 60)
  %i.q = xor i64 %i.p, %.0.copyload.i.1.i
  %.0.copyload.i.i = load i64, ptr %i.h, align 1
  %i.r = and i64 %i.o, 15
  %i.s = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !23
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
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !16   ; 2 uses
  %i.ab = and i8 %i.aa, 15
  %i.ac = and i64 %.sroa.17.0.i, 15
  %i.ad = tail call i64 @llvm.fshl.i64(i64 %.sroa.0.0.i, i64 %.sroa.17.0.i, i64 60)
  %i.ae = lshr i64 %.sroa.0.0.i, 4
  %i.af = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.ac
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !23
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
  %i.au = load i16, ptr %i.at, align 2, !tbaa !23
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
  br i1 %.not.i, label %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit, label %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i, !llvm.loop !0

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
define hidden range(i32 -20, 1) i32 @mbedtls_gcm_update_ad(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24   ; 4 uses
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
  %min.iters.check = icmp samesign ult i64 %i.k, 8
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
  %i.p = and i64 %spec.select, 7                  ; 2 uses
  %n.vec141 = sub nsw i64 %i.k, %i.p              ; 2 uses
  %i.q = add nsw i64 %.0.i60.lcssa, %n.vec141
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index142 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next145, %vec.epilog.vector.body ] ; 2 uses
  %i.r = add nuw i64 %.0.i60.lcssa, %index142     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.r ; 2 uses
  %wide.load143 = load <8 x i8>, ptr %i.s, align 1, !tbaa !16, !alias.scope !48, !noalias !49
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.r
  %wide.load144 = load <8 x i8>, ptr %i.t, align 1, !tbaa !16, !alias.scope !49
  %i.u = xor <8 x i8> %wide.load144, %wide.load143
  store <8 x i8> %i.u, ptr %i.s, align 1, !tbaa !16, !alias.scope !48, !noalias !49
  %index.next145 = add nuw i64 %index142, 8       ; 2 uses
  %i.v = icmp eq i64 %index.next145, %n.vec141
  br i1 %i.v, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !38

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n146 = icmp eq i64 %i.p, 0
  br i1 %cmp.n146, label %_ZL11mbedtls_xorPhPKhS1_m.exit63, label %.lr.ph92.preheader

.lr.ph92.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.middle.block
  %.1.i6291.ph = phi i64 [ %.0.i60.lcssa, %vector.memcheck ], [ %.0.i60.lcssa, %iter.check ], [ %i.q, %vec.epilog.middle.block ] ; 4 uses
  %i.w = sub nsw i64 %spec.select, %.1.i6291.ph
  %xtraiter = and i64 %i.w, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph92.prol.loopexit, label %.lr.ph92.prol

.lr.ph92.prol:                                    ; preds = %.lr.ph92.preheader, %.lr.ph92.prol
  %.1.i6291.prol = phi i64 [ %i.ac, %.lr.ph92.prol ], [ %.1.i6291.ph, %.lr.ph92.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph92.prol ], [ 0, %.lr.ph92.preheader ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 %.1.i6291.prol ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !16
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.1.i6291.prol
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !16
end_hunk_0
