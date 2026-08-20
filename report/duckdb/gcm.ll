inline.NumInlined: 16
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 24
begin_hunk_0_@mbedtls_gcm_setkey:bb.a
  %i.aa = lshr i64 %i.z, 1
  %i.ab = call i64 @llvm.bswap.i64(i64 %i.aa)     ; 3 uses
  store i64 %i.ab, ptr %i.p, align 1
  %i.ac = and i64 %i.o, 72057594037927936
  %.not.i.i = icmp eq i64 %i.ac, 0
  %i.ad = select i1 %.not.i.i, i8 0, i8 -31
  %i.ae = trunc i64 %i.ab to i8
  %i.af = xor i8 %i.ad, %i.ae
  store i8 %i.af, ptr %i.p, align 1, !tbaa !15
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %.0.copyload.i10.i.1.i = load i64, ptr %i.r, align 1 ; 2 uses
  %i.ai = call i64 @llvm.bswap.i64(i64 %.0.copyload.i10.i.1.i) ; 6 uses
  %i.aj = lshr i64 %i.ai, 1
  %i.ak = call i64 @llvm.bswap.i64(i64 %i.aj)     ; 2 uses
  store i64 %i.ak, ptr %i.ah, align 1
  %sh.diff57.i = lshr i64 %i.ab, 49
  %tr.sh.diff58.i = trunc i64 %sh.diff57.i to i8
  %i.al = and i8 %tr.sh.diff58.i, -128
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
  %sh.diff59.i = lshr i64 %i.aq, 49
  %tr.sh.diff60.i = trunc i64 %sh.diff59.i to i8
  %i.ba = and i8 %tr.sh.diff60.i, -128
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
define hidden i32 @mbedtls_gcm_starts(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #2 {
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
  %scevgep101 = getelementptr i8, ptr %0, i64 376
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
  %scevgep100 = getelementptr i8, ptr %scevgep, i64 %.0.i46.lcssa
  %scevgep102 = getelementptr i8, ptr %scevgep101, i64 %i.p
  %scevgep103 = getelementptr i8, ptr %.079, i64 %.0.i46.lcssa
  %scevgep104 = getelementptr i8, ptr %.079, i64 %i.p
  %bound0 = icmp ult ptr %scevgep100, %scevgep104
  %bound1 = icmp ult ptr %scevgep103, %scevgep102
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph76.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %i.s = and i64 %i.p, 7                          ; 2 uses
  %n.vec109 = sub nsw i64 %i.r, %i.s              ; 2 uses
  %i.t = add nsw i64 %.0.i46.lcssa, %n.vec109
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index110 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next113, %vec.epilog.vector.body ] ; 2 uses
  %i.u = add nuw i64 %.0.i46.lcssa, %index110     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.u ; 2 uses
  %wide.load111 = load <8 x i8>, ptr %i.v, align 1, !tbaa !15, !alias.scope !17, !noalias !20
  %i.w = getelementptr inbounds nuw i8, ptr %.079, i64 %i.u
  %wide.load112 = load <8 x i8>, ptr %i.w, align 1, !tbaa !15, !alias.scope !20
  %i.x = xor <8 x i8> %wide.load112, %wide.load111
  store <8 x i8> %i.x, ptr %i.v, align 1, !tbaa !15, !alias.scope !17, !noalias !20
  %index.next113 = add nuw i64 %index110, 8       ; 2 uses
  %i.y = icmp eq i64 %index.next113, %n.vec109
  br i1 %i.y, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !22

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n114 = icmp eq i64 %i.s, 0
  br i1 %cmp.n114, label %_ZL11mbedtls_xorPhPKhS1_m.exit49, label %.lr.ph76.preheader

.lr.ph76.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.middle.block
  %.1.i4875.ph = phi i64 [ %.0.i46.lcssa, %vector.memcheck ], [ %.0.i46.lcssa, %iter.check ], [ %i.t, %vec.epilog.middle.block ] ; 4 uses
  %i.z = sub nsw i64 %i.p, %.1.i4875.ph
  %xtraiter = and i64 %i.z, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph76.prol.loopexit, label %.lr.ph76.prol

.lr.ph76.prol:                                    ; preds = %.lr.ph76.preheader, %.lr.ph76.prol
  %.1.i4875.prol = phi i64 [ %i.af, %.lr.ph76.prol ], [ %.1.i4875.ph, %.lr.ph76.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph76.prol ], [ 0, %.lr.ph76.preheader ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 %.1.i4875.prol ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !15
  %i.ac = getelementptr inbounds nuw i8, ptr %.079, i64 %.1.i4875.prol
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !15
  %i.ae = xor i8 %i.ad, %i.ab
  store i8 %i.ae, ptr %i.aa, align 1, !tbaa !15
  %i.af = add nuw nsw i64 %.1.i4875.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph76.prol.loopexit, label %.lr.ph76.prol, !llvm.loop !26

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
  %i.am = load i8, ptr %i.al, align 1, !tbaa !15
  %i.an = getelementptr inbounds nuw i8, ptr %.079, i64 %.1.i4875
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !15
  %i.ap = xor i8 %i.ao, %i.am
  store i8 %i.ap, ptr %i.al, align 1, !tbaa !15
  %i.aq = add nuw nsw i64 %.1.i4875, 1            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.aq ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !15
  %i.at = getelementptr inbounds nuw i8, ptr %.079, i64 %i.aq
  %i.au = load i8, ptr %i.at, align 1, !tbaa !15
  %i.av = xor i8 %i.au, %i.as
  store i8 %i.av, ptr %i.ar, align 1, !tbaa !15
  %i.aw = add nuw nsw i64 %.1.i4875, 2            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.aw ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !15
  %i.az = getelementptr inbounds nuw i8, ptr %.079, i64 %i.aw
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !15
  %i.bb = xor i8 %i.ba, %i.ay
  store i8 %i.bb, ptr %i.ax, align 1, !tbaa !15
  %i.bc = add nuw nsw i64 %.1.i4875, 3            ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bc ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !15
  %i.bf = getelementptr inbounds nuw i8, ptr %.079, i64 %i.bc
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !15
  %i.bh = xor i8 %i.bg, %i.be
  store i8 %i.bh, ptr %i.bd, align 1, !tbaa !15
  %i.bi = add nuw nsw i64 %.1.i4875, 4            ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bi, %i.p
  br i1 %exitcond.not.3, label %_ZL11mbedtls_xorPhPKhS1_m.exit49, label %.lr.ph76, !llvm.loop !28

_ZL11mbedtls_xorPhPKhS1_m.exit49:                 ; preds = %.lr.ph76.prol.loopexit, %.lr.ph76, %vec.epilog.middle.block, %.preheader69
  %i.bj = load i8, ptr %i.k, align 1, !tbaa !9    ; 2 uses
  %cond.i = icmp eq i8 %i.bj, 0
  br i1 %cond.i, label %bb.e, label %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit

bb.e:                                             ; preds = %_ZL11mbedtls_xorPhPKhS1_m.exit49
  %i.bk = load i8, ptr %i.m, align 1, !tbaa !15   ; 2 uses
  %i.bl = lshr i8 %i.bk, 4
  %i.bm = zext nneg i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.0.copyload.i.1.i.i = load i64, ptr %i.bo, align 1
  %i.bp = and i8 %i.bk, 15
  %i.bq = zext nneg i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.bq ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !7  ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !7  ; 2 uses
  %i.bv = tail call i64 @llvm.fshl.i64(i64 %i.bs, i64 %i.bu, i64 60)
  %i.bw = xor i64 %i.bv, %.0.copyload.i.1.i.i
  %.0.copyload.i.i.i = load i64, ptr %i.bn, align 1
  %i.bx = and i64 %i.bu, 15
  %i.by = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.bx
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !29
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
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !15  ; 2 uses
  %i.ch = and i8 %i.cg, 15
  %i.ci = and i64 %.sroa.17.0.i.i, 15
  %i.cj = tail call i64 @llvm.fshl.i64(i64 %.sroa.0.0.i.i, i64 %.sroa.17.0.i.i, i64 60)
  %i.ck = lshr i64 %.sroa.0.0.i.i, 4
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.ci
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !29
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
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !29
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
  br i1 %.not.i.i, label %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i, label %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i, !llvm.loop !31

_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i:        ; preds = %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i
  %i.dj = tail call i64 @llvm.bswap.i64(i64 %i.dg)
  store i64 %i.dj, ptr %i.c, align 8
  %i.dk = tail call i64 @llvm.bswap.i64(i64 %i.di)
  store i64 %i.dk, ptr %i.n, align 8
  br label %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit

_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit:     ; preds = %_ZL11mbedtls_xorPhPKhS1_m.exit49, %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i
  %i.dl = sub i64 %.04078, %i.p                   ; 2 uses
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
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !7  ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !7  ; 2 uses
  %i.dx = tail call i64 @llvm.fshl.i64(i64 %i.du, i64 %i.dw, i64 60)
  %i.dy = xor i64 %i.dx, %.0.copyload.i.1.i.i54
  %.0.copyload.i.i.i55 = load i64, ptr %i.dq, align 1
  %i.dz = and i64 %i.dw, 15
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.dz
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !29
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
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !15  ; 2 uses
  %i.ej = and i8 %i.ei, 15
  %i.ek = and i64 %.sroa.17.0.i.i57, 15
  %i.el = tail call i64 @llvm.fshl.i64(i64 %.sroa.0.0.i.i58, i64 %.sroa.17.0.i.i57, i64 60)
  %i.em = lshr i64 %.sroa.0.0.i.i58, 4
  %i.en = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.ek
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !29
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
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !29
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
  br i1 %.not.i.i65, label %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i66, label %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i56, !llvm.loop !31

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
define hidden range(i32 -20, 1) i32 @mbedtls_gcm_update_ad(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #6 {
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
  %min.iters.check = icmp samesign ult i64 %i.k, 8
  br i1 %min.iters.check, label %.lr.ph92.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.l = getelementptr i8, ptr %0, i64 %.0.i60.lcssa
  %i.m = getelementptr i8, ptr %i.l, i64 %i.e
  %scevgep = getelementptr i8, ptr %i.m, i64 392
  %i.n = getelementptr i8, ptr %0, i64 %spec.select
  %i.o = getelementptr i8, ptr %i.n, i64 %i.e
  %scevgep133 = getelementptr i8, ptr %i.o, i64 392
  %scevgep134 = getelementptr i8, ptr %1, i64 %.0.i60.lcssa
  %scevgep135 = getelementptr i8, ptr %1, i64 %spec.select
  %bound0 = icmp ult ptr %scevgep, %scevgep135
  %bound1 = icmp ult ptr %scevgep134, %scevgep133
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph92.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %i.p = and i64 %spec.select, 7                  ; 2 uses
  %n.vec140 = sub nsw i64 %i.k, %i.p              ; 2 uses
  %i.q = add nsw i64 %.0.i60.lcssa, %n.vec140
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index141 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next144, %vec.epilog.vector.body ] ; 2 uses
  %i.r = add nuw i64 %.0.i60.lcssa, %index141     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.r ; 2 uses
  %wide.load142 = load <8 x i8>, ptr %i.s, align 1, !tbaa !15, !alias.scope !34, !noalias !37
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.r
  %wide.load143 = load <8 x i8>, ptr %i.t, align 1, !tbaa !15, !alias.scope !37
  %i.u = xor <8 x i8> %wide.load143, %wide.load142
  store <8 x i8> %i.u, ptr %i.s, align 1, !tbaa !15, !alias.scope !34, !noalias !37
  %index.next144 = add nuw i64 %index141, 8       ; 2 uses
  %i.v = icmp eq i64 %index.next144, %n.vec140
  br i1 %i.v, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !39

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n145 = icmp eq i64 %i.p, 0
  br i1 %cmp.n145, label %_ZL11mbedtls_xorPhPKhS1_m.exit63, label %.lr.ph92.preheader

.lr.ph92.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.middle.block
  %.1.i6291.ph = phi i64 [ %.0.i60.lcssa, %vector.memcheck ], [ %.0.i60.lcssa, %iter.check ], [ %i.q, %vec.epilog.middle.block ] ; 4 uses
  %i.w = sub nsw i64 %spec.select, %.1.i6291.ph
  %xtraiter = and i64 %i.w, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph92.prol.loopexit, label %.lr.ph92.prol

.lr.ph92.prol:                                    ; preds = %.lr.ph92.preheader, %.lr.ph92.prol
  %.1.i6291.prol = phi i64 [ %i.ac, %.lr.ph92.prol ], [ %.1.i6291.ph, %.lr.ph92.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph92.prol ], [ 0, %.lr.ph92.preheader ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 %.1.i6291.prol ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !15
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.1.i6291.prol
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !15
  %i.ab = xor i8 %i.aa, %i.y
  store i8 %i.ab, ptr %i.x, align 1, !tbaa !15
  %i.ac = add nuw nsw i64 %.1.i6291.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph92.prol.loopexit, label %.lr.ph92.prol, !llvm.loop !40

.lr.ph92.prol.loopexit:                           ; preds = %.lr.ph92.prol, %.lr.ph92.preheader
  %.1.i6291.unr = phi i64 [ %.1.i6291.ph, %.lr.ph92.preheader ], [ %i.ac, %.lr.ph92.prol ]
  %i.ad = sub nsw i64 %.1.i6291.ph, %spec.select
  %i.ae = icmp ugt i64 %i.ad, -4
  br i1 %i.ae, label %_ZL11mbedtls_xorPhPKhS1_m.exit63, label %.lr.ph92

.lr.ph92:                                         ; preds = %.lr.ph92.prol.loopexit, %.lr.ph92
  %.1.i6291 = phi i64 [ %i.bc, %.lr.ph92 ], [ %.1.i6291.unr, %.lr.ph92.prol.loopexit ] ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 %.1.i6291 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !15
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %.1.i6291
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !15
  %i.aj = xor i8 %i.ai, %i.ag
  store i8 %i.aj, ptr %i.af, align 1, !tbaa !15
  %i.ak = add nuw nsw i64 %.1.i6291, 1            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ak ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !15
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %i.ak
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !15
  %i.ap = xor i8 %i.ao, %i.am
  store i8 %i.ap, ptr %i.al, align 1, !tbaa !15
  %i.aq = add nuw nsw i64 %.1.i6291, 2            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.aq ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !15
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %i.aq
  %i.au = load i8, ptr %i.at, align 1, !tbaa !15
  %i.av = xor i8 %i.au, %i.as
  store i8 %i.av, ptr %i.ar, align 1, !tbaa !15
  %i.aw = add nuw nsw i64 %.1.i6291, 3            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.aw ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !15
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 %i.aw
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !15
  %i.bb = xor i8 %i.ba, %i.ay
  store i8 %i.bb, ptr %i.ax, align 1, !tbaa !15
  %i.bc = add nuw nsw i64 %.1.i6291, 4            ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bc, %spec.select
  br i1 %exitcond.not.3, label %_ZL11mbedtls_xorPhPKhS1_m.exit63, label %.lr.ph92, !llvm.loop !41

_ZL11mbedtls_xorPhPKhS1_m.exit63:                 ; preds = %.lr.ph92.prol.loopexit, %.lr.ph92, %vec.epilog.middle.block, %.preheader85
  %i.bd = add nuw nsw i64 %spec.select, %i.e
  %i.be = icmp eq i64 %i.bd, 16
  br i1 %i.be, label %bb.d, label %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit

bb.d:                                             ; preds = %_ZL11mbedtls_xorPhPKhS1_m.exit63
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 409
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !9
  %cond.i = icmp eq i8 %i.bg, 0
  br i1 %cond.i, label %bb.e, label %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit

bb.e:                                             ; preds = %bb.d
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 407
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !15  ; 2 uses
  %i.bk = lshr i8 %i.bj, 4
  %i.bl = zext nneg i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.0.copyload.i.1.i.i = load i64, ptr %i.bn, align 1
  %i.bo = and i8 %i.bj, 15
  %i.bp = zext nneg i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.bp ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !7  ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !7  ; 2 uses
  %i.bu = tail call i64 @llvm.fshl.i64(i64 %i.br, i64 %i.bt, i64 60)
  %i.bv = xor i64 %i.bu, %.0.copyload.i.1.i.i
  %.0.copyload.i.i.i = load i64, ptr %i.bm, align 1
  %i.bw = and i64 %i.bt, 15
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.bw
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !29
  %i.bz = zext i16 %i.by to i64
  %i.ca = shl nuw i64 %i.bz, 48
  %i.cb = lshr i64 %i.br, 4
  %i.cc = xor i64 %.0.copyload.i.i.i, %i.cb
  %i.cd = xor i64 %i.cc, %i.ca
  br label %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i

_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i:       ; preds = %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i, %bb.e
  %.sroa.17.0.i.i = phi i64 [ %i.bv, %bb.e ], [ %i.dh, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i ] ; 2 uses
  %.sroa.0.0.i.i = phi i64 [ %i.cd, %bb.e ], [ %i.df, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ 14, %bb.e ], [ %indvars.iv.next.i.i, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i ] ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.i
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !15  ; 2 uses
  %i.cg = and i8 %i.cf, 15
  %i.ch = and i64 %.sroa.17.0.i.i, 15
  %i.ci = tail call i64 @llvm.fshl.i64(i64 %.sroa.0.0.i.i, i64 %.sroa.17.0.i.i, i64 60)
  %i.cj = lshr i64 %.sroa.0.0.i.i, 4
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.ch
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !29
  %i.cm = zext i16 %i.cl to i64
  %i.cn = shl nuw i64 %i.cm, 48
  %i.co = zext nneg i8 %i.cg to i64
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.co ; 2 uses
  %.0.copyload.i37.i.i = load i64, ptr %i.cp, align 1
  %i.cq = xor i64 %.0.copyload.i37.i.i, %i.cj     ; 2 uses
  %i.cr = xor i64 %i.cq, %i.cn
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %.0.copyload.i37.1.i.i = load i64, ptr %i.cs, align 1
  %i.ct = xor i64 %.0.copyload.i37.1.i.i, %i.ci   ; 2 uses
  %i.cu = lshr i8 %i.cf, 4
  %i.cv = and i64 %i.ct, 15
  %i.cw = tail call i64 @llvm.fshl.i64(i64 %i.cq, i64 %i.ct, i64 60)
  %i.cx = lshr i64 %i.cr, 4
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.cv
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !29
  %i.da = zext i16 %i.cz to i64
  %i.db = shl nuw i64 %i.da, 48
  %i.dc = zext nneg i8 %i.cu to i64
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.dc ; 2 uses
  %.0.copyload.i39.i.i = load i64, ptr %i.dd, align 1
  %i.de = xor i64 %i.cx, %.0.copyload.i39.i.i
  %i.df = xor i64 %i.de, %i.db                    ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.0.copyload.i39.1.i.i = load i64, ptr %i.dg, align 1
  %i.dh = xor i64 %.0.copyload.i39.1.i.i, %i.cw   ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  %.not.i.i = icmp eq i64 %indvars.iv.i.i, 0
  br i1 %.not.i.i, label %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i, label %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i, !llvm.loop !31

_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i:        ; preds = %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i
  %i.di = tail call i64 @llvm.bswap.i64(i64 %i.df)
  store i64 %i.di, ptr %i.g, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.dk = tail call i64 @llvm.bswap.i64(i64 %i.dh)
  store i64 %i.dk, ptr %i.dj, align 8
  br label %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit

_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit:     ; preds = %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i, %bb.d, %_ZL11mbedtls_xorPhPKhS1_m.exit63
  %i.dl = sub i64 %2, %spec.select
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select
  %.pre.a = add i64 %2, %i.b
  br label %bb.f

bb.f:                                             ; preds = %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit, %bb.b
  %.pre-phi = phi i64 [ %.pre.a, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit ], [ %i.c, %bb.b ]
  %.046 = phi i64 [ %i.dl, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit ], [ %2, %bb.b ] ; 3 uses
  %.045 = phi ptr [ %i.dm, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit ], [ %1, %bb.b ] ; 2 uses
  store i64 %.pre-phi, ptr %i.a, align 8, !tbaa !33
  %i.dn = icmp ugt i64 %.046, 15
  br i1 %i.dn, label %.lr.ph98, label %._crit_edge

.lr.ph98:                                         ; preds = %bb.f
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 409
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 400
  %.0.copyload.i66.pre = load i64, ptr %i.do, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %.0.copyload.i66.1.pre = load i64, ptr %.phi.trans.insert, align 8
  %i.ds = load i8, ptr %i.dp, align 1, !tbaa !9
  %cond.i69 = icmp eq i8 %i.ds, 0
  br label %_ZL11mbedtls_xorPhPKhS1_m.exit59

_ZL11mbedtls_xorPhPKhS1_m.exit59:                 ; preds = %.lr.ph98, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit83
  %.0.copyload.i66.1 = phi i64 [ %.0.copyload.i66.1.pre, %.lr.ph98 ], [ %.0.copyload.i66.1118, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit83 ]
  %.0.copyload.i66 = phi i64 [ %.0.copyload.i66.pre, %.lr.ph98 ], [ %.0.copyload.i66116, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit83 ]
  %.197 = phi ptr [ %.045, %.lr.ph98 ], [ %i.fw, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit83 ] ; 3 uses
  %.14796 = phi i64 [ %.046, %.lr.ph98 ], [ %i.fv, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit83 ]
  %.0.copyload.i65 = load i64, ptr %.197, align 1
  %i.dt = xor i64 %.0.copyload.i65, %.0.copyload.i66 ; 2 uses
  store i64 %i.dt, ptr %i.do, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %.197, i64 8
  %.0.copyload.i65.1 = load i64, ptr %i.du, align 1
  %i.dv = xor i64 %.0.copyload.i65.1, %.0.copyload.i66.1 ; 4 uses
  store i64 %i.dv, ptr %.phi.trans.insert, align 8
  br i1 %cond.i69, label %bb.g, label %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit83

bb.g:                                             ; preds = %_ZL11mbedtls_xorPhPKhS1_m.exit59
  %i.dw = lshr i64 %i.dv, 56
  %i.dx = lshr i64 %i.dv, 60
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %i.dq, i64 %i.dx ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %.0.copyload.i.1.i.i70 = load i64, ptr %i.dz, align 1
  %i.ea = and i64 %i.dw, 15
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %i.dq, i64 %i.ea ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !7  ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !7  ; 2 uses
  %i.ef = tail call i64 @llvm.fshl.i64(i64 %i.ec, i64 %i.ee, i64 60)
  %i.eg = xor i64 %i.ef, %.0.copyload.i.1.i.i70
  %.0.copyload.i.i.i71 = load i64, ptr %i.dy, align 1
  %i.eh = and i64 %i.ee, 15
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.eh
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !29
  %i.ek = zext i16 %i.ej to i64
  %i.el = shl nuw i64 %i.ek, 48
  %i.em = lshr i64 %i.ec, 4
  %i.en = xor i64 %.0.copyload.i.i.i71, %i.em
  %i.eo = xor i64 %i.en, %i.el
  br label %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i72

_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i72:     ; preds = %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i72, %bb.g
  %.sroa.17.0.i.i73 = phi i64 [ %i.eg, %bb.g ], [ %i.fs, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i72 ] ; 2 uses
  %.sroa.0.0.i.i74 = phi i64 [ %i.eo, %bb.g ], [ %i.fq, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i72 ] ; 2 uses
  %indvars.iv.i.i75 = phi i64 [ 14, %bb.g ], [ %indvars.iv.next.i.i80, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i72 ] ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv.i.i75
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !15  ; 2 uses
  %i.er = and i8 %i.eq, 15
  %i.es = and i64 %.sroa.17.0.i.i73, 15
  %i.et = tail call i64 @llvm.fshl.i64(i64 %.sroa.0.0.i.i74, i64 %.sroa.17.0.i.i73, i64 60)
  %i.eu = lshr i64 %.sroa.0.0.i.i74, 4
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.es
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !29
  %i.ex = zext i16 %i.ew to i64
  %i.ey = shl nuw i64 %i.ex, 48
  %i.ez = zext nneg i8 %i.er to i64
  %i.fa = getelementptr inbounds nuw [16 x i8], ptr %i.dq, i64 %i.ez ; 2 uses
  %.0.copyload.i37.i.i76 = load i64, ptr %i.fa, align 1
  %i.fb = xor i64 %.0.copyload.i37.i.i76, %i.eu   ; 2 uses
  %i.fc = xor i64 %i.fb, %i.ey
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %.0.copyload.i37.1.i.i77 = load i64, ptr %i.fd, align 1
  %i.fe = xor i64 %.0.copyload.i37.1.i.i77, %i.et ; 2 uses
  %i.ff = lshr i8 %i.eq, 4
  %i.fg = and i64 %i.fe, 15
  %i.fh = tail call i64 @llvm.fshl.i64(i64 %i.fb, i64 %i.fe, i64 60)
  %i.fi = lshr i64 %i.fc, 4
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr @_ZL5last4, i64 %i.fg
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !29
  %i.fl = zext i16 %i.fk to i64
  %i.fm = shl nuw i64 %i.fl, 48
  %i.fn = zext nneg i8 %i.ff to i64
  %i.fo = getelementptr inbounds nuw [16 x i8], ptr %i.dq, i64 %i.fn ; 2 uses
  %.0.copyload.i39.i.i78 = load i64, ptr %i.fo, align 1
  %i.fp = xor i64 %i.fi, %.0.copyload.i39.i.i78
  %i.fq = xor i64 %i.fp, %i.fm                    ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %.0.copyload.i39.1.i.i79 = load i64, ptr %i.fr, align 1
  %i.fs = xor i64 %.0.copyload.i39.1.i.i79, %i.fh ; 2 uses
  %indvars.iv.next.i.i80 = add nsw i64 %indvars.iv.i.i75, -1
  %.not.i.i81 = icmp eq i64 %indvars.iv.i.i75, 0
  br i1 %.not.i.i81, label %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i82, label %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i72, !llvm.loop !31

_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i82:      ; preds = %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit.i.i72
  %i.ft = tail call i64 @llvm.bswap.i64(i64 %i.fq) ; 2 uses
  store i64 %i.ft, ptr %i.do, align 8
  %i.fu = tail call i64 @llvm.bswap.i64(i64 %i.fs) ; 2 uses
  store i64 %i.fu, ptr %i.dr, align 8
  br label %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit83

_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit83:   ; preds = %_ZL11mbedtls_xorPhPKhS1_m.exit59, %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i82
  %.0.copyload.i66.1118 = phi i64 [ %i.dv, %_ZL11mbedtls_xorPhPKhS1_m.exit59 ], [ %i.fu, %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i82 ]
  %.0.copyload.i66116 = phi i64 [ %i.dt, %_ZL11mbedtls_xorPhPKhS1_m.exit59 ], [ %i.ft, %_ZL19gcm_mult_smalltablePhPKhPA2_m.exit.i82 ]
  %i.fv = add i64 %.14796, -16                    ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.197, i64 16 ; 2 uses
  %i.fx = icmp ugt i64 %i.fv, 15
  br i1 %i.fx, label %_ZL11mbedtls_xorPhPKhS1_m.exit59, label %._crit_edge, !llvm.loop !42

._crit_edge:                                      ; preds = %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit83, %bb.f
  %.147.lcssa = phi i64 [ %.046, %bb.f ], [ %i.fv, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit83 ] ; 10 uses
  %.1.lcssa = phi ptr [ %.045, %bb.f ], [ %i.fw, %_ZL8gcm_multP19mbedtls_gcm_contextPKhPh.exit83 ] ; 9 uses
  %.not55 = icmp eq i64 %.147.lcssa, 0
  br i1 %.not55, label %_ZL11mbedtls_xorPhPKhS1_m.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 8 uses
  %.not.i101 = icmp samesign ult i64 %.147.lcssa, 8
  br i1 %.not.i101, label %.preheader, label %.preheader.loopexit

.preheader.loopexit:                              ; preds = %bb.h
  %.0.copyload.i68 = load i64, ptr %i.fy, align 8
  %.0.copyload.i67 = load i64, ptr %.1.lcssa, align 1
  %i.fz = xor i64 %.0.copyload.i67, %.0.copyload.i68
  store i64 %i.fz, ptr %i.fy, align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.h
  %.0.i.lcssa = phi i64 [ 0, %bb.h ], [ 8, %.preheader.loopexit ] ; 8 uses
  %i.ga = icmp samesign ult i64 %.0.i.lcssa, %.147.lcssa
  br i1 %i.ga, label %iter.check170, label %_ZL11mbedtls_xorPhPKhS1_m.exit

iter.check170:                                    ; preds = %.preheader
  %i.gb = sub nuw nsw i64 %.147.lcssa, %.0.i.lcssa ; 2 uses
  %min.iters.check155 = icmp samesign ult i64 %i.gb, 8
  br i1 %min.iters.check155, label %.lr.ph107.preheader, label %vector.memcheck147

vector.memcheck147:                               ; preds = %iter.check170
  %i.gc = getelementptr i8, ptr %0, i64 %.0.i.lcssa
  %scevgep148 = getelementptr i8, ptr %i.gc, i64 392
  %i.gd = getelementptr i8, ptr %0, i64 %.147.lcssa
  %scevgep149 = getelementptr i8, ptr %i.gd, i64 392
  %scevgep150 = getelementptr i8, ptr %.1.lcssa, i64 %.0.i.lcssa
  %scevgep151 = getelementptr i8, ptr %.1.lcssa, i64 %.147.lcssa
  %bound0152 = icmp ult ptr %scevgep148, %scevgep151
  %bound1153 = icmp ult ptr %scevgep150, %scevgep149
  %found.conflict154 = and i1 %bound0152, %bound1153
  br i1 %found.conflict154, label %.lr.ph107.preheader, label %vec.epilog.ph174

vec.epilog.ph174:                                 ; preds = %vector.memcheck147
  %i.ge = and i64 %.147.lcssa, 7                  ; 2 uses
  %n.vec175 = sub nsw i64 %i.gb, %i.ge            ; 2 uses
  %i.gf = add nsw i64 %.0.i.lcssa, %n.vec175
  br label %vec.epilog.vector.body176

vec.epilog.vector.body176:                        ; preds = %vec.epilog.vector.body176, %vec.epilog.ph174
  %index177 = phi i64 [ 0, %vec.epilog.ph174 ], [ %index.next180, %vec.epilog.vector.body176 ] ; 2 uses
  %i.gg = add nuw i64 %.0.i.lcssa, %index177      ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.gg ; 2 uses
  %wide.load178 = load <8 x i8>, ptr %i.gh, align 1, !tbaa !15, !alias.scope !43, !noalias !46
  %i.gi = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 %i.gg
  %wide.load179 = load <8 x i8>, ptr %i.gi, align 1, !tbaa !15, !alias.scope !46
  %i.gj = xor <8 x i8> %wide.load179, %wide.load178
  store <8 x i8> %i.gj, ptr %i.gh, align 1, !tbaa !15, !alias.scope !43, !noalias !46
  %index.next180 = add nuw i64 %index177, 8       ; 2 uses
  %i.gk = icmp eq i64 %index.next180, %n.vec175
  br i1 %i.gk, label %vec.epilog.middle.block181, label %vec.epilog.vector.body176, !llvm.loop !48

vec.epilog.middle.block181:                       ; preds = %vec.epilog.vector.body176
  %cmp.n182 = icmp eq i64 %i.ge, 0
  br i1 %cmp.n182, label %_ZL11mbedtls_xorPhPKhS1_m.exit, label %.lr.ph107.preheader

.lr.ph107.preheader:                              ; preds = %vector.memcheck147, %iter.check170, %vec.epilog.middle.block181
  %.1.i106.ph = phi i64 [ %.0.i.lcssa, %vector.memcheck147 ], [ %.0.i.lcssa, %iter.check170 ], [ %i.gf, %vec.epilog.middle.block181 ] ; 4 uses
  %i.gl = sub i64 %.147.lcssa, %.1.i106.ph
  %xtraiter189 = and i64 %i.gl, 3                 ; 2 uses
  %lcmp.mod190.not = icmp eq i64 %xtraiter189, 0
  br i1 %lcmp.mod190.not, label %.lr.ph107.prol.loopexit, label %.lr.ph107.prol

.lr.ph107.prol:                                   ; preds = %.lr.ph107.preheader, %.lr.ph107.prol
  %.1.i106.prol = phi i64 [ %i.gr, %.lr.ph107.prol ], [ %.1.i106.ph, %.lr.ph107.preheader ] ; 3 uses
  %prol.iter191 = phi i64 [ %prol.iter191.next, %.lr.ph107.prol ], [ 0, %.lr.ph107.preheader ]
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fy, i64 %.1.i106.prol ; 2 uses
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !15
  %i.go = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 %.1.i106.prol
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !15
  %i.gq = xor i8 %i.gp, %i.gn
  store i8 %i.gq, ptr %i.gm, align 1, !tbaa !15
  %i.gr = add nuw i64 %.1.i106.prol, 1            ; 2 uses
  %prol.iter191.next = add i64 %prol.iter191, 1   ; 2 uses
  %prol.iter191.cmp.not = icmp eq i64 %prol.iter191.next, %xtraiter189
  br i1 %prol.iter191.cmp.not, label %.lr.ph107.prol.loopexit, label %.lr.ph107.prol, !llvm.loop !49

.lr.ph107.prol.loopexit:                          ; preds = %.lr.ph107.prol, %.lr.ph107.preheader
  %.1.i106.unr = phi i64 [ %.1.i106.ph, %.lr.ph107.preheader ], [ %i.gr, %.lr.ph107.prol ]
  %i.gs = sub i64 %.1.i106.ph, %.147.lcssa
  %i.gt = icmp ugt i64 %i.gs, -4
  br i1 %i.gt, label %_ZL11mbedtls_xorPhPKhS1_m.exit, label %.lr.ph107

.lr.ph107:                                        ; preds = %.lr.ph107.prol.loopexit, %.lr.ph107
  %.1.i106 = phi i64 [ %i.hr, %.lr.ph107 ], [ %.1.i106.unr, %.lr.ph107.prol.loopexit ] ; 6 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fy, i64 %.1.i106 ; 2 uses
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !15
  %i.gw = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 %.1.i106
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !15
  %i.gy = xor i8 %i.gx, %i.gv
  store i8 %i.gy, ptr %i.gu, align 1, !tbaa !15
  %i.gz = add nuw i64 %.1.i106, 1                 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.gz ; 2 uses
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !15
  %i.hc = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 %i.gz
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !15
  %i.he = xor i8 %i.hd, %i.hb
  store i8 %i.he, ptr %i.ha, align 1, !tbaa !15
  %i.hf = add nuw i64 %.1.i106, 2                 ; 2 uses
end_hunk_0
