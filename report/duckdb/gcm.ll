Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/gcm?download=true
inline.NumInlined: 16
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 24
begin_hunk_0_@mbedtls_gcm_setkey:bb.a
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
  %scevgep104.a = getelementptr i8, ptr %0, i64 376
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  br label %bb.d

.preheader68:                                     ; preds = %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 384
  %.0.copyload.i52.1.pre = load i64, ptr %.phi.trans.insert, align 8
  %4 = xor i64 %i.j, %.0.copyload.i52.1.pre       ; 3 uses
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i64 %4, ptr %5, align 8
  %cond.i53 = icmp eq i8 %i.bj, 0
  br i1 %cond.i53, label %bb.f, label %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit67

bb.d:                                             ; preds = %.lr.ph80, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit
  %.079 = phi ptr [ %2, %.lr.ph80 ], [ %i.dm, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit ] ; 11 uses
  %.04078 = phi i64 [ %3, %.lr.ph80 ], [ %i.dl, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit ] ; 4 uses
  %i.p = tail call i64 @llvm.umin.i64(i64 %.04078, i64 16) ; 10 uses
  %.not.i4773 = icmp ult i64 %.04078, 8
  br i1 %.not.i4773, label %.preheader69, label %.lr.ph

.preheader69:                                     ; preds = %.lr.ph, %.lr.ph.1, %bb.d
  %.0.i46.lcssa = phi i64 [ 0, %bb.d ], [ 8, %.lr.ph ], [ 16, %.lr.ph.1 ] ; 8 uses
  %i.q = icmp samesign ult i64 %.0.i46.lcssa, %i.p
  br i1 %i.q, label %iter.check, label %_ZL11mbedtls_xorPhPKhS1_m.exit49

iter.check:                                       ; preds = %.preheader69
  %i.r = sub nuw nsw i64 %i.p, %.0.i46.lcssa      ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.r, 8
  br i1 %min.iters.check, label %.lr.ph76.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep103.a = getelementptr i8, ptr %scevgep, i64 %.0.i46.lcssa
  %scevgep105 = getelementptr i8, ptr %scevgep104.a, i64 %i.p
  %scevgep106 = getelementptr i8, ptr %.079, i64 %.0.i46.lcssa
  %scevgep107 = getelementptr i8, ptr %.079, i64 %i.p
  %bound0 = icmp ult ptr %scevgep103.a, %scevgep107
  %bound1 = icmp ult ptr %scevgep106, %scevgep105
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph76.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %i.s = and i64 %i.p, 7                          ; 2 uses
  %n.vec112 = sub nsw i64 %i.r, %i.s              ; 2 uses
  %i.t = add nsw i64 %.0.i46.lcssa, %n.vec112
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index113 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next116, %vec.epilog.vector.body ] ; 2 uses
  %i.u = add nuw i64 %.0.i46.lcssa, %index113     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.u ; 2 uses
  %wide.load114 = load <8 x i8>, ptr %i.v, align 1, !tbaa !16, !alias.scope !33, !noalias !34
  %i.w = getelementptr inbounds nuw i8, ptr %.079, i64 %i.u
  %wide.load115 = load <8 x i8>, ptr %i.w, align 1, !tbaa !16, !alias.scope !34
  %i.x = xor <8 x i8> %wide.load115, %wide.load114
  store <8 x i8> %i.x, ptr %i.v, align 1, !tbaa !16, !alias.scope !33, !noalias !34
  %index.next116 = add nuw i64 %index113, 8       ; 2 uses
  %i.y = icmp eq i64 %index.next116, %n.vec112
  br i1 %i.y, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !29

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n117 = icmp eq i64 %i.s, 0
  br i1 %cmp.n117, label %_ZL11mbedtls_xorPhPKhS1_m.exit49, label %.lr.ph76.preheader

.lr.ph76.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.middle.block
  %.1.i4875.ph = phi i64 [ %.0.i46.lcssa, %vector.memcheck ], [ %.0.i46.lcssa, %iter.check ], [ %i.t, %vec.epilog.middle.block ] ; 4 uses
  %i.z = sub nsw i64 %i.p, %.1.i4875.ph
  %xtraiter = and i64 %i.z, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph76.prol.loopexit, label %.lr.ph76.prol

.lr.ph76.prol:                                    ; preds = %.lr.ph76.preheader, %.lr.ph76.prol
  %.1.i4875.prol = phi i64 [ %i.af, %.lr.ph76.prol ], [ %.1.i4875.ph, %.lr.ph76.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph76.prol ], [ 0, %.lr.ph76.preheader ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 %.1.i4875.prol ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !16
  %i.ac = getelementptr inbounds nuw i8, ptr %.079, i64 %.1.i4875.prol
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !16
  %i.ae = xor i8 %i.ad, %i.ab
  store i8 %i.ae, ptr %i.aa, align 1, !tbaa !16
  %i.af = add nuw nsw i64 %.1.i4875.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph76.prol.loopexit, label %.lr.ph76.prol, !llvm.loop !30

.lr.ph76.prol.loopexit:                           ; preds = %.lr.ph76.prol, %.lr.ph76.preheader
  %.1.i4875.unr = phi i64 [ %.1.i4875.ph, %.lr.ph76.preheader ], [ %i.af, %.lr.ph76.prol ]
  %i.ag = sub nsw i64 %.1.i4875.ph, %i.p
  %i.ah = icmp ugt i64 %i.ag, -4
  br i1 %i.ah, label %_ZL11mbedtls_xorPhPKhS1_m.exit49, label %.lr.ph76

.lr.ph:                                           ; preds = %bb.d
  %.0.copyload.i50 = load i64, ptr %i.c, align 8
  %.0.copyload.i = load i64, ptr %.079, align 1
  %i.ai = xor i64 %.0.copyload.i, %.0.copyload.i50
  store i64 %i.ai, ptr %i.c, align 8
  %.not.i47 = icmp ult i64 %.04078, 16
  br i1 %.not.i47, label %.preheader69, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %.0.copyload.i50.1 = load i64, ptr %i.o, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.079, i64 8
  %.0.copyload.i.1 = load i64, ptr %i.aj, align 1
  %i.ak = xor i64 %.0.copyload.i.1, %.0.copyload.i50.1
  store i64 %i.ak, ptr %i.o, align 8
  br label %.preheader69

.lr.ph76:                                         ; preds = %.lr.ph76.prol.loopexit, %.lr.ph76
  %.1.i4875 = phi i64 [ %i.bi, %.lr.ph76 ], [ %.1.i4875.unr, %.lr.ph76.prol.loopexit ] ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 %.1.i4875 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !16
  %i.an = getelementptr inbounds nuw i8, ptr %.079, i64 %.1.i4875
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !16
  %i.ap = xor i8 %i.ao, %i.am
  store i8 %i.ap, ptr %i.al, align 1, !tbaa !16
  %i.aq = add nuw nsw i64 %.1.i4875, 1            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.aq ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !16
  %i.at = getelementptr inbounds nuw i8, ptr %.079, i64 %i.aq
  %i.au = load i8, ptr %i.at, align 1, !tbaa !16
  %i.av = xor i8 %i.au, %i.as
  store i8 %i.av, ptr %i.ar, align 1, !tbaa !16
  %i.aw = add nuw nsw i64 %.1.i4875, 2            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.aw ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !16
  %i.az = getelementptr inbounds nuw i8, ptr %.079, i64 %i.aw
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !16
  %i.bb = xor i8 %i.ba, %i.ay
  store i8 %i.bb, ptr %i.ax, align 1, !tbaa !16
  %i.bc = add nuw nsw i64 %.1.i4875, 3            ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bc ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !16
  %i.bf = getelementptr inbounds nuw i8, ptr %.079, i64 %i.bc
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !16
  %i.bh = xor i8 %i.bg, %i.be
  store i8 %i.bh, ptr %i.bd, align 1, !tbaa !16
  %i.bi = add nuw nsw i64 %.1.i4875, 4            ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bi, %i.p
  br i1 %exitcond.not.3, label %_ZL11mbedtls_xorPhPKhS1_m.exit49, label %.lr.ph76, !llvm.loop !31

_ZL11mbedtls_xorPhPKhS1_m.exit49:                 ; preds = %.lr.ph76.prol.loopexit, %.lr.ph76, %vec.epilog.middle.block, %.preheader69
  %i.bj = load i8, ptr %i.k, align 1, !tbaa !15   ; 2 uses
  %cond.i = icmp eq i8 %i.bj, 0
  br i1 %cond.i, label %bb.e, label %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit

bb.e:                                             ; preds = %_ZL11mbedtls_xorPhPKhS1_m.exit49
  %i.bk = load i8, ptr %i.m, align 1, !tbaa !16   ; 2 uses
  %i.bl = lshr i8 %i.bk, 4
  %i.bm = zext nneg i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.0.copyload.i.1.i.i = load i64, ptr %i.bo, align 1
  %i.bp = and i8 %i.bk, 15
  %i.bq = zext nneg i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.bq ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !9  ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !9  ; 2 uses
  %i.bv = tail call i64 @llvm.fshl.i64(i64 %i.bs, i64 %i.bu, i64 60)
  %i.bw = xor i64 %i.bv, %.0.copyload.i.1.i.i
  %.0.copyload.i.i.i = load i64, ptr %i.bn, align 1
  %i.bx = and i64 %i.bu, 15
  %i.by = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.bx
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !23
  %i.ca = zext i16 %i.bz to i64
  %i.cb = shl nuw i64 %i.ca, 48
  %i.cc = lshr i64 %i.bs, 4
  %i.cd = xor i64 %.0.copyload.i.i.i, %i.cc
  %i.ce = xor i64 %i.cd, %i.cb
  br label %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i

_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i:       ; preds = %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i, %bb.e
  %.sroa.17.0.i.i = phi i64 [ %i.bw, %bb.e ], [ %i.di, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i ] ; 2 uses
  %.sroa.0.0.i.i = phi i64 [ %i.ce, %bb.e ], [ %i.dg, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ 14, %bb.e ], [ %indvars.iv.next.i.i, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !16  ; 2 uses
  %i.ch = and i8 %i.cg, 15
  %i.ci = and i64 %.sroa.17.0.i.i, 15
  %i.cj = tail call i64 @llvm.fshl.i64(i64 %.sroa.0.0.i.i, i64 %.sroa.17.0.i.i, i64 60)
  %i.ck = lshr i64 %.sroa.0.0.i.i, 4
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.ci
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !23
  %i.cn = zext i16 %i.cm to i64
  %i.co = shl nuw i64 %i.cn, 48
  %i.cp = zext nneg i8 %i.ch to i64
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.cp ; 2 uses
  %.0.copyload.i37.i.i = load i64, ptr %i.cq, align 1
  %i.cr = xor i64 %.0.copyload.i37.i.i, %i.ck     ; 2 uses
  %i.cs = xor i64 %i.cr, %i.co
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %.0.copyload.i37.1.i.i = load i64, ptr %i.ct, align 1
  %i.cu = xor i64 %.0.copyload.i37.1.i.i, %i.cj   ; 2 uses
  %i.cv = lshr i8 %i.cg, 4
  %i.cw = and i64 %i.cu, 15
  %i.cx = tail call i64 @llvm.fshl.i64(i64 %i.cr, i64 %i.cu, i64 60)
  %i.cy = lshr i64 %i.cs, 4
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.cw
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !23
  %i.db = zext i16 %i.da to i64
  %i.dc = shl nuw i64 %i.db, 48
  %i.dd = zext nneg i8 %i.cv to i64
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.dd ; 2 uses
  %.0.copyload.i39.i.i = load i64, ptr %i.de, align 1
  %i.df = xor i64 %i.cy, %.0.copyload.i39.i.i
  %i.dg = xor i64 %i.df, %i.dc                    ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %.0.copyload.i39.1.i.i = load i64, ptr %i.dh, align 1
  %i.di = xor i64 %.0.copyload.i39.1.i.i, %i.cx   ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  %.not.i.i = icmp eq i64 %indvars.iv.i.i, 0
  br i1 %.not.i.i, label %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i, label %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i, !llvm.loop !0

_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i:        ; preds = %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i
  %i.dj = tail call i64 @llvm.bswap.i64(i64 %i.dg)
  store i64 %i.dj, ptr %i.c, align 8
  %i.dk = tail call i64 @llvm.bswap.i64(i64 %i.di)
  store i64 %i.dk, ptr %i.n, align 8
  br label %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit

_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit:     ; preds = %_ZL11mbedtls_xorPhPKhS1_m.exit49, %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i
  %i.dl = sub nuw i64 %.04078, %i.p               ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.079, i64 %i.p
  %.not44 = icmp eq i64 %i.dl, 0
  br i1 %.not44, label %.preheader68, label %bb.d, !llvm.loop !32

bb.f:                                             ; preds = %.preheader68
  %i.dn = lshr i64 %4, 56
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.dp = lshr i64 %4, 60
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %i.dp ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %.0.copyload.i.1.i.i54 = load i64, ptr %i.dr, align 1
  %i.ds = and i64 %i.dn, 15
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %i.ds ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !9  ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !9  ; 2 uses
  %i.dx = tail call i64 @llvm.fshl.i64(i64 %i.du, i64 %i.dw, i64 60)
  %i.dy = xor i64 %i.dx, %.0.copyload.i.1.i.i54
  %.0.copyload.i.i.i55 = load i64, ptr %i.dq, align 1
  %i.dz = and i64 %i.dw, 15
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.dz
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !23
  %i.ec = zext i16 %i.eb to i64
  %i.ed = shl nuw i64 %i.ec, 48
  %i.ee = lshr i64 %i.du, 4
  %i.ef = xor i64 %.0.copyload.i.i.i55, %i.ee
  %i.eg = xor i64 %i.ef, %i.ed
  br label %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i56

_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i56:     ; preds = %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i56, %bb.f
  %.sroa.17.0.i.i57 = phi i64 [ %i.dy, %bb.f ], [ %i.fk, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i56 ] ; 2 uses
  %.sroa.0.0.i.i58 = phi i64 [ %i.eg, %bb.f ], [ %i.fi, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i56 ] ; 2 uses
  %indvars.iv.i.i59 = phi i64 [ 14, %bb.f ], [ %indvars.iv.next.i.i64, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i56 ] ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i59
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !16  ; 2 uses
  %i.ej = and i8 %i.ei, 15
  %i.ek = and i64 %.sroa.17.0.i.i57, 15
  %i.el = tail call i64 @llvm.fshl.i64(i64 %.sroa.0.0.i.i58, i64 %.sroa.17.0.i.i57, i64 60)
  %i.em = lshr i64 %.sroa.0.0.i.i58, 4
  %i.en = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.ek
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !23
  %i.ep = zext i16 %i.eo to i64
  %i.eq = shl nuw i64 %i.ep, 48
  %i.er = zext nneg i8 %i.ej to i64
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %i.er ; 2 uses
  %.0.copyload.i37.i.i60 = load i64, ptr %i.es, align 1
  %i.et = xor i64 %.0.copyload.i37.i.i60, %i.em   ; 2 uses
  %i.eu = xor i64 %i.et, %i.eq
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %.0.copyload.i37.1.i.i61 = load i64, ptr %i.ev, align 1
  %i.ew = xor i64 %.0.copyload.i37.1.i.i61, %i.el ; 2 uses
  %i.ex = lshr i8 %i.ei, 4
  %i.ey = and i64 %i.ew, 15
  %i.ez = tail call i64 @llvm.fshl.i64(i64 %i.et, i64 %i.ew, i64 60)
  %i.fa = lshr i64 %i.eu, 4
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.ey
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !23
  %i.fd = zext i16 %i.fc to i64
  %i.fe = shl nuw i64 %i.fd, 48
  %i.ff = zext nneg i8 %i.ex to i64
  %i.fg = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %i.ff ; 2 uses
  %.0.copyload.i39.i.i62 = load i64, ptr %i.fg, align 1
  %i.fh = xor i64 %i.fa, %.0.copyload.i39.i.i62
  %i.fi = xor i64 %i.fh, %i.fe                    ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %.0.copyload.i39.1.i.i63 = load i64, ptr %i.fj, align 1
  %i.fk = xor i64 %.0.copyload.i39.1.i.i63, %i.ez ; 2 uses
  %indvars.iv.next.i.i64 = add nsw i64 %indvars.iv.i.i59, -1
  %.not.i.i65 = icmp eq i64 %indvars.iv.i.i59, 0
  br i1 %.not.i.i65, label %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i66, label %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i56, !llvm.loop !0

_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i66:      ; preds = %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i56
  %i.fl = tail call i64 @llvm.bswap.i64(i64 %i.fi)
  store i64 %i.fl, ptr %i.c, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.fn = tail call i64 @llvm.bswap.i64(i64 %i.fk)
  store i64 %i.fn, ptr %i.fm, align 8
  br label %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit67

_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit67:   ; preds = %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i66, %.preheader68, %bb.c
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.fp = call i32 @mbedtls_cipher_update(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef 16, ptr noundef nonnull %i.fo, ptr noundef nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit67, %bb.a
  %.041 = phi i32 [ -20, %bb.a ], [ %i.fp, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit67 ]
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
  %i.n = getelementptr i8, ptr %i.m, i64 392
  %i.o = getelementptr i8, ptr %0, i64 %spec.select
  %i.p = getelementptr i8, ptr %i.o, i64 %i.e
  %i.q = getelementptr i8, ptr %i.p, i64 392
  %i.r = getelementptr i8, ptr %1, i64 %.0.i60.lcssa
  %i.s = getelementptr i8, ptr %1, i64 %spec.select
  %bound0 = icmp ult ptr %i.n, %i.s
  %bound1 = icmp ult ptr %i.r, %i.q
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph92.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %i.t = and i64 %spec.select, 7                  ; 2 uses
  %n.vec141 = sub nsw i64 %i.k, %i.t              ; 2 uses
  %i.u = add nsw i64 %.0.i60.lcssa, %n.vec141
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index142 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next145, %vec.epilog.vector.body ] ; 2 uses
  %i.v = add nuw i64 %.0.i60.lcssa, %index142     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.v ; 2 uses
  %wide.load143.a = load <8 x i8>, ptr %i.w, align 1, !tbaa !16, !alias.scope !48, !noalias !49
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.v
  %wide.load144 = load <8 x i8>, ptr %i.x, align 1, !tbaa !16, !alias.scope !49
  %i.y = xor <8 x i8> %wide.load144, %wide.load143.a
  store <8 x i8> %i.y, ptr %i.w, align 1, !tbaa !16, !alias.scope !48, !noalias !49
  %index.next145 = add nuw i64 %index142, 8       ; 2 uses
  %i.z = icmp eq i64 %index.next145, %n.vec141
  br i1 %i.z, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !38

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n146 = icmp eq i64 %i.t, 0
  br i1 %cmp.n146, label %_ZL11mbedtls_xorPhPKhS1_m.exit63, label %.lr.ph92.preheader

.lr.ph92.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.middle.block
  %.1.i6291.ph = phi i64 [ %.0.i60.lcssa, %vector.memcheck ], [ %.0.i60.lcssa, %iter.check ], [ %i.u, %vec.epilog.middle.block ] ; 4 uses
  %i.aa = sub nsw i64 %spec.select, %.1.i6291.ph
  %xtraiter = and i64 %i.aa, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph92.prol.loopexit, label %.lr.ph92.prol

.lr.ph92.prol:                                    ; preds = %.lr.ph92.preheader, %.lr.ph92.prol
  %.1.i6291.prol = phi i64 [ %i.ag, %.lr.ph92.prol ], [ %.1.i6291.ph, %.lr.ph92.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph92.prol ], [ 0, %.lr.ph92.preheader ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 %.1.i6291.prol ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !16
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.1.i6291.prol
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !16
  %i.af = xor i8 %i.ae, %i.ac
  store i8 %i.af, ptr %i.ab, align 1, !tbaa !16
  %i.ag = add nuw nsw i64 %.1.i6291.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph92.prol.loopexit, label %.lr.ph92.prol, !llvm.loop !39

.lr.ph92.prol.loopexit:                           ; preds = %.lr.ph92.prol, %.lr.ph92.preheader
  %.1.i6291.unr = phi i64 [ %.1.i6291.ph, %.lr.ph92.preheader ], [ %i.ag, %.lr.ph92.prol ]
  %i.ah = sub nsw i64 %.1.i6291.ph, %spec.select
  %i.ai = icmp ugt i64 %i.ah, -4
  br i1 %i.ai, label %_ZL11mbedtls_xorPhPKhS1_m.exit63, label %.lr.ph92

.lr.ph92:                                         ; preds = %.lr.ph92.prol.loopexit, %.lr.ph92
  %.1.i6291 = phi i64 [ %i.bg, %.lr.ph92 ], [ %.1.i6291.unr, %.lr.ph92.prol.loopexit ] ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 %.1.i6291 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !16
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %.1.i6291
  %i.am = load i8, ptr %i.al, align 1, !tbaa !16
  %i.an = xor i8 %i.am, %i.ak
  store i8 %i.an, ptr %i.aj, align 1, !tbaa !16
  %i.ao = add nuw nsw i64 %.1.i6291, 1            ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ao ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !16
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %i.ao
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !16
  %i.at = xor i8 %i.as, %i.aq
  store i8 %i.at, ptr %i.ap, align 1, !tbaa !16
  %i.au = add nuw nsw i64 %.1.i6291, 2            ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.au ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !16
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %i.au
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !16
  %i.az = xor i8 %i.ay, %i.aw
  store i8 %i.az, ptr %i.av, align 1, !tbaa !16
  %i.ba = add nuw nsw i64 %.1.i6291, 3            ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ba ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !16
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 %i.ba
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !16
  %i.bf = xor i8 %i.be, %i.bc
  store i8 %i.bf, ptr %i.bb, align 1, !tbaa !16
  %i.bg = add nuw nsw i64 %.1.i6291, 4            ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bg, %spec.select
  br i1 %exitcond.not.3, label %_ZL11mbedtls_xorPhPKhS1_m.exit63, label %.lr.ph92, !llvm.loop !40

_ZL11mbedtls_xorPhPKhS1_m.exit63:                 ; preds = %.lr.ph92.prol.loopexit, %.lr.ph92, %vec.epilog.middle.block, %.preheader85
  %i.bh = add nuw nsw i64 %spec.select, %i.e
  %i.bi = icmp eq i64 %i.bh, 16
  br i1 %i.bi, label %bb.d, label %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit

bb.d:                                             ; preds = %_ZL11mbedtls_xorPhPKhS1_m.exit63
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 409
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !15
  %cond.i = icmp eq i8 %i.bk, 0
  br i1 %cond.i, label %bb.e, label %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit

bb.e:                                             ; preds = %bb.d
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 407
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !16  ; 2 uses
  %i.bo = lshr i8 %i.bn, 4
  %i.bp = zext nneg i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bp ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.0.copyload.i.1.i.i = load i64, ptr %i.br, align 1
  %i.bs = and i8 %i.bn, 15
  %i.bt = zext nneg i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bt ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !9  ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !9  ; 2 uses
  %i.by = tail call i64 @llvm.fshl.i64(i64 %i.bv, i64 %i.bx, i64 60)
  %i.bz = xor i64 %i.by, %.0.copyload.i.1.i.i
  %.0.copyload.i.i.i = load i64, ptr %i.bq, align 1
  %i.ca = and i64 %i.bx, 15
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.ca
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !23
  %i.cd = zext i16 %i.cc to i64
  %i.ce = shl nuw i64 %i.cd, 48
  %i.cf = lshr i64 %i.bv, 4
  %i.cg = xor i64 %.0.copyload.i.i.i, %i.cf
  %i.ch = xor i64 %i.cg, %i.ce
  br label %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i

_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i:       ; preds = %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i, %bb.e
  %.sroa.17.0.i.i = phi i64 [ %i.bz, %bb.e ], [ %i.dl, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i ] ; 2 uses
  %.sroa.0.0.i.i = phi i64 [ %i.ch, %bb.e ], [ %i.dj, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ 14, %bb.e ], [ %indvars.iv.next.i.i, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.i
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !16  ; 2 uses
  %i.ck = and i8 %i.cj, 15
  %i.cl = and i64 %.sroa.17.0.i.i, 15
  %i.cm = tail call i64 @llvm.fshl.i64(i64 %.sroa.0.0.i.i, i64 %.sroa.17.0.i.i, i64 60)
  %i.cn = lshr i64 %.sroa.0.0.i.i, 4
  %i.co = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.cl
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !23
  %i.cq = zext i16 %i.cp to i64
  %i.cr = shl nuw i64 %i.cq, 48
  %i.cs = zext nneg i8 %i.ck to i64
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.cs ; 2 uses
  %.0.copyload.i37.i.i = load i64, ptr %i.ct, align 1
  %i.cu = xor i64 %.0.copyload.i37.i.i, %i.cn     ; 2 uses
  %i.cv = xor i64 %i.cu, %i.cr
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %.0.copyload.i37.1.i.i = load i64, ptr %i.cw, align 1
  %i.cx = xor i64 %.0.copyload.i37.1.i.i, %i.cm   ; 2 uses
  %i.cy = lshr i8 %i.cj, 4
  %i.cz = and i64 %i.cx, 15
  %i.da = tail call i64 @llvm.fshl.i64(i64 %i.cu, i64 %i.cx, i64 60)
  %i.db = lshr i64 %i.cv, 4
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.cz
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !23
  %i.de = zext i16 %i.dd to i64
  %i.df = shl nuw i64 %i.de, 48
  %i.dg = zext nneg i8 %i.cy to i64
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.dg ; 2 uses
  %.0.copyload.i39.i.i = load i64, ptr %i.dh, align 1
  %i.di = xor i64 %i.db, %.0.copyload.i39.i.i
  %i.dj = xor i64 %i.di, %i.df                    ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %.0.copyload.i39.1.i.i = load i64, ptr %i.dk, align 1
  %i.dl = xor i64 %.0.copyload.i39.1.i.i, %i.da   ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  %.not.i.i = icmp eq i64 %indvars.iv.i.i, 0
  br i1 %.not.i.i, label %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i, label %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i, !llvm.loop !0

_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i:        ; preds = %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i
  %i.dm = tail call i64 @llvm.bswap.i64(i64 %i.dj)
  store i64 %i.dm, ptr %i.g, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.do = tail call i64 @llvm.bswap.i64(i64 %i.dl)
  store i64 %i.do, ptr %i.dn, align 8
  br label %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit

_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit:     ; preds = %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i, %bb.d, %_ZL11mbedtls_xorPhPKhS1_m.exit63
  %i.dp = sub nuw i64 %2, %spec.select
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select
  %.pre120 = add i64 %2, %i.b
  br label %bb.f

bb.f:                                             ; preds = %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit, %bb.b
  %.pre-phi = phi i64 [ %.pre120, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit ], [ %i.c, %bb.b ]
  %.046 = phi i64 [ %i.dp, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit ], [ %2, %bb.b ] ; 3 uses
  %.045 = phi ptr [ %i.dq, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit ], [ %1, %bb.b ] ; 2 uses
  store i64 %.pre-phi, ptr %i.a, align 8, !tbaa !24
  %i.dr = icmp ugt i64 %.046, 15
  br i1 %i.dr, label %.lr.ph98, label %._crit_edge

.lr.ph98:                                         ; preds = %bb.f
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 409
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 400
  %.0.copyload.i66.pre = load i64, ptr %i.ds, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %.0.copyload.i66.1.pre = load i64, ptr %.phi.trans.insert, align 8
  %.pre = load i8, ptr %i.dt, align 1, !tbaa !15
  %cond.i69 = icmp eq i8 %.pre, 0
  br label %.preheader84

.preheader84:                                     ; preds = %.lr.ph98, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit83
  %.0.copyload.i66.1 = phi i64 [ %.0.copyload.i66.1.pre, %.lr.ph98 ], [ %.0.copyload.i66.1118, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit83 ]
  %.0.copyload.i66 = phi i64 [ %.0.copyload.i66.pre, %.lr.ph98 ], [ %.0.copyload.i66116, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit83 ]
  %.197 = phi ptr [ %.045, %.lr.ph98 ], [ %i.fz, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit83 ] ; 3 uses
  %.14796 = phi i64 [ %.046, %.lr.ph98 ], [ %i.fy, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit83 ]
  %.0.copyload.i65 = load i64, ptr %.197, align 1
  %i.dw = xor i64 %.0.copyload.i65, %.0.copyload.i66 ; 2 uses
  store i64 %i.dw, ptr %i.ds, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %.197, i64 8
  %.0.copyload.i65.1 = load i64, ptr %i.dx, align 1
  %i.dy = xor i64 %.0.copyload.i65.1, %.0.copyload.i66.1 ; 4 uses
  store i64 %i.dy, ptr %.phi.trans.insert, align 8
  br i1 %cond.i69, label %bb.g, label %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit83

bb.g:                                             ; preds = %.preheader84
  %i.dz = lshr i64 %i.dy, 56
  %i.ea = lshr i64 %i.dy, 60
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %i.du, i64 %i.ea ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %.0.copyload.i.1.i.i70 = load i64, ptr %i.ec, align 1
  %i.ed = and i64 %i.dz, 15
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.du, i64 %i.ed ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !9  ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !9  ; 2 uses
  %i.ei = tail call i64 @llvm.fshl.i64(i64 %i.ef, i64 %i.eh, i64 60)
  %i.ej = xor i64 %i.ei, %.0.copyload.i.1.i.i70
  %.0.copyload.i.i.i71 = load i64, ptr %i.eb, align 1
  %i.ek = and i64 %i.eh, 15
  %i.el = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.ek
  %i.em = load i16, ptr %i.el, align 2, !tbaa !23
  %i.en = zext i16 %i.em to i64
  %i.eo = shl nuw i64 %i.en, 48
  %i.ep = lshr i64 %i.ef, 4
  %i.eq = xor i64 %.0.copyload.i.i.i71, %i.ep
  %i.er = xor i64 %i.eq, %i.eo
  br label %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i72

_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i72:     ; preds = %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i72, %bb.g
  %.sroa.17.0.i.i73 = phi i64 [ %i.ej, %bb.g ], [ %i.fv, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i72 ] ; 2 uses
  %.sroa.0.0.i.i74 = phi i64 [ %i.er, %bb.g ], [ %i.ft, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i72 ] ; 2 uses
  %indvars.iv.i.i75 = phi i64 [ 14, %bb.g ], [ %indvars.iv.next.i.i80, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i72 ] ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ds, i64 %indvars.iv.i.i75
  %i.et = load i8, ptr %i.es, align 1, !tbaa !16  ; 2 uses
  %i.eu = and i8 %i.et, 15
  %i.ev = and i64 %.sroa.17.0.i.i73, 15
  %i.ew = tail call i64 @llvm.fshl.i64(i64 %.sroa.0.0.i.i74, i64 %.sroa.17.0.i.i73, i64 60)
  %i.ex = lshr i64 %.sroa.0.0.i.i74, 4
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.ev
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !23
  %i.fa = zext i16 %i.ez to i64
  %i.fb = shl nuw i64 %i.fa, 48
  %i.fc = zext nneg i8 %i.eu to i64
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %i.du, i64 %i.fc ; 2 uses
  %.0.copyload.i37.i.i76 = load i64, ptr %i.fd, align 1
  %i.fe = xor i64 %.0.copyload.i37.i.i76, %i.ex   ; 2 uses
  %i.ff = xor i64 %i.fe, %i.fb
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %.0.copyload.i37.1.i.i77 = load i64, ptr %i.fg, align 1
  %i.fh = xor i64 %.0.copyload.i37.1.i.i77, %i.ew ; 2 uses
  %i.fi = lshr i8 %i.et, 4
  %i.fj = and i64 %i.fh, 15
  %i.fk = tail call i64 @llvm.fshl.i64(i64 %i.fe, i64 %i.fh, i64 60)
  %i.fl = lshr i64 %i.ff, 4
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.fj
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !23
  %i.fo = zext i16 %i.fn to i64
  %i.fp = shl nuw i64 %i.fo, 48
  %i.fq = zext nneg i8 %i.fi to i64
  %i.fr = getelementptr inbounds nuw [16 x i8], ptr %i.du, i64 %i.fq ; 2 uses
  %.0.copyload.i39.i.i78 = load i64, ptr %i.fr, align 1
  %i.fs = xor i64 %i.fl, %.0.copyload.i39.i.i78
  %i.ft = xor i64 %i.fs, %i.fp                    ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %.0.copyload.i39.1.i.i79 = load i64, ptr %i.fu, align 1
  %i.fv = xor i64 %.0.copyload.i39.1.i.i79, %i.fk ; 2 uses
  %indvars.iv.next.i.i80 = add nsw i64 %indvars.iv.i.i75, -1
  %.not.i.i81 = icmp eq i64 %indvars.iv.i.i75, 0
  br i1 %.not.i.i81, label %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i82, label %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i72, !llvm.loop !0

_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i82:      ; preds = %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i72
  %i.fw = tail call i64 @llvm.bswap.i64(i64 %i.ft) ; 2 uses
  store i64 %i.fw, ptr %i.ds, align 8
  %i.fx = tail call i64 @llvm.bswap.i64(i64 %i.fv) ; 2 uses
  store i64 %i.fx, ptr %i.dv, align 8
  br label %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit83

_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit83:   ; preds = %.preheader84, %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i82
  %.0.copyload.i66.1118 = phi i64 [ %i.dy, %.preheader84 ], [ %i.fx, %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i82 ]
  %.0.copyload.i66116 = phi i64 [ %i.dw, %.preheader84 ], [ %i.fw, %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i82 ]
  %i.fy = add i64 %.14796, -16                    ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.197, i64 16 ; 2 uses
  %i.ga = icmp ugt i64 %i.fy, 15
  br i1 %i.ga, label %.preheader84, label %._crit_edge, !llvm.loop !41

._crit_edge:                                      ; preds = %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit83, %bb.f
  %.147.lcssa = phi i64 [ %.046, %bb.f ], [ %i.fy, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit83 ] ; 10 uses
  %.1.lcssa = phi ptr [ %.045, %bb.f ], [ %i.fz, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit83 ] ; 9 uses
  %.not55 = icmp eq i64 %.147.lcssa, 0
  br i1 %.not55, label %_ZL11mbedtls_xorPhPKhS1_m.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 8 uses
  %.not.i101 = icmp samesign ult i64 %.147.lcssa, 8
  br i1 %.not.i101, label %.preheader, label %.preheader.loopexit

.preheader.loopexit:                              ; preds = %bb.h
  %.0.copyload.i68 = load i64, ptr %i.gb, align 8
  %.0.copyload.i67 = load i64, ptr %.1.lcssa, align 1
  %i.gc = xor i64 %.0.copyload.i67, %.0.copyload.i68
  store i64 %i.gc, ptr %i.gb, align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.h
  %.0.i.lcssa = phi i64 [ 0, %bb.h ], [ 8, %.preheader.loopexit ] ; 8 uses
  %i.gd = icmp samesign ult i64 %.0.i.lcssa, %.147.lcssa
  br i1 %i.gd, label %iter.check174, label %_ZL11mbedtls_xorPhPKhS1_m.exit

iter.check174:                                    ; preds = %.preheader
  %i.ge = sub nuw nsw i64 %.147.lcssa, %.0.i.lcssa ; 2 uses
  %min.iters.check155 = icmp samesign ult i64 %i.ge, 8
  br i1 %min.iters.check155, label %.lr.ph107.preheader, label %vector.memcheck156

vector.memcheck156:                               ; preds = %iter.check174
  %i.gf = getelementptr i8, ptr %0, i64 %.0.i.lcssa
  %i.gg = getelementptr i8, ptr %i.gf, i64 392
  %i.gh = getelementptr i8, ptr %0, i64 %.147.lcssa
  %i.gi = getelementptr i8, ptr %i.gh, i64 392
  %i.gj = getelementptr i8, ptr %.1.lcssa, i64 %.0.i.lcssa
  %i.gk = getelementptr i8, ptr %.1.lcssa, i64 %.147.lcssa
  %bound0157 = icmp ult ptr %i.gg, %i.gk
  %bound1158 = icmp ult ptr %i.gj, %i.gi
  %found.conflict159 = and i1 %bound0157, %bound1158
  br i1 %found.conflict159, label %.lr.ph107.preheader, label %vec.epilog.ph178

vec.epilog.ph178:                                 ; preds = %vector.memcheck156
  %i.gl = and i64 %.147.lcssa, 7                  ; 2 uses
  %n.vec179 = sub nsw i64 %i.ge, %i.gl            ; 2 uses
  %i.gm = add nsw i64 %.0.i.lcssa, %n.vec179
  br label %vec.epilog.vector.body180

vec.epilog.vector.body180:                        ; preds = %vec.epilog.vector.body180, %vec.epilog.ph178
  %index181 = phi i64 [ 0, %vec.epilog.ph178 ], [ %index.next184, %vec.epilog.vector.body180 ] ; 2 uses
  %i.gn = add nuw i64 %.0.i.lcssa, %index181      ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.gn ; 2 uses
  %wide.load182.a = load <8 x i8>, ptr %i.go, align 1, !tbaa !16, !alias.scope !50, !noalias !51
  %i.gp = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 %i.gn
  %wide.load183 = load <8 x i8>, ptr %i.gp, align 1, !tbaa !16, !alias.scope !51
  %i.gq = xor <8 x i8> %wide.load183, %wide.load182.a
  store <8 x i8> %i.gq, ptr %i.go, align 1, !tbaa !16, !alias.scope !50, !noalias !51
  %index.next184 = add nuw i64 %index181, 8       ; 2 uses
  %i.gr = icmp eq i64 %index.next184, %n.vec179
  br i1 %i.gr, label %vec.epilog.middle.block185, label %vec.epilog.vector.body180, !llvm.loop !45

vec.epilog.middle.block185:                       ; preds = %vec.epilog.vector.body180
  %cmp.n186 = icmp eq i64 %i.gl, 0
  br i1 %cmp.n186, label %_ZL11mbedtls_xorPhPKhS1_m.exit, label %.lr.ph107.preheader

.lr.ph107.preheader:                              ; preds = %iter.check174, %vector.memcheck156, %vec.epilog.middle.block185
  %.1.i106.ph = phi i64 [ %.0.i.lcssa, %vector.memcheck156 ], [ %.0.i.lcssa, %iter.check174 ], [ %i.gm, %vec.epilog.middle.block185 ] ; 4 uses
  %i.gs = sub i64 %.147.lcssa, %.1.i106.ph
  %xtraiter193 = and i64 %i.gs, 3                 ; 2 uses
  %lcmp.mod194.not = icmp eq i64 %xtraiter193, 0
  br i1 %lcmp.mod194.not, label %.lr.ph107.prol.loopexit, label %.lr.ph107.prol

.lr.ph107.prol:                                   ; preds = %.lr.ph107.preheader, %.lr.ph107.prol
  %.1.i106.prol = phi i64 [ %i.gy, %.lr.ph107.prol ], [ %.1.i106.ph, %.lr.ph107.preheader ] ; 3 uses
  %prol.iter195 = phi i64 [ %prol.iter195.next, %.lr.ph107.prol ], [ 0, %.lr.ph107.preheader ]
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gb, i64 %.1.i106.prol ; 2 uses
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !16
  %i.gv = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 %.1.i106.prol
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !16
  %i.gx = xor i8 %i.gw, %i.gu
  store i8 %i.gx, ptr %i.gt, align 1, !tbaa !16
  %i.gy = add nuw nsw i64 %.1.i106.prol, 1        ; 2 uses
  %prol.iter195.next = add i64 %prol.iter195, 1   ; 2 uses
  %prol.iter195.cmp.not = icmp eq i64 %prol.iter195.next, %xtraiter193
  br i1 %prol.iter195.cmp.not, label %.lr.ph107.prol.loopexit, label %.lr.ph107.prol, !llvm.loop !46

.lr.ph107.prol.loopexit:                          ; preds = %.lr.ph107.prol, %.lr.ph107.preheader
  %.1.i106.unr = phi i64 [ %.1.i106.ph, %.lr.ph107.preheader ], [ %i.gy, %.lr.ph107.prol ]
  %i.gz = sub i64 %.1.i106.ph, %.147.lcssa
  %i.ha = icmp ugt i64 %i.gz, -4
  br i1 %i.ha, label %_ZL11mbedtls_xorPhPKhS1_m.exit, label %.lr.ph107

.lr.ph107:                                        ; preds = %.lr.ph107.prol.loopexit, %.lr.ph107
  %.1.i106 = phi i64 [ %i.hy, %.lr.ph107 ], [ %.1.i106.unr, %.lr.ph107.prol.loopexit ] ; 6 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gb, i64 %.1.i106 ; 2 uses
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !16
  %i.hd = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 %.1.i106
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !16
  %i.hf = xor i8 %i.he, %i.hc
  store i8 %i.hf, ptr %i.hb, align 1, !tbaa !16
  %i.hg = add nuw nsw i64 %.1.i106, 1             ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.hg ; 2 uses
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !16
  %i.hj = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 %i.hg
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !16
  %i.hl = xor i8 %i.hk, %i.hi
  store i8 %i.hl, ptr %i.hh, align 1, !tbaa !16
  %i.hm = add nuw nsw i64 %.1.i106, 2             ; 2 uses
end_hunk_0
