inline.NumInlined: 198
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@mbedtls_mpi_mul_int:bb.a
  %.01932 = phi i64 [ %i.c, %.lr.ph ], [ %i.i, %bb.c ] ; 6 uses
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %.01932
  %i.f = getelementptr i8, ptr %i.e, i64 -8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !19
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.i = add nsw i64 %.01932, -1                  ; 2 uses
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %.critedge.thread, label %bb.b, !llvm.loop !32

.critedge:                                        ; preds = %bb.b
  %i.j = icmp eq i64 %2, 0
  br i1 %i.j, label %.critedge.thread, label %bb.i

.critedge.thread:                                 ; preds = %bb.c, %bb.a, %.critedge
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.l = load i16, ptr %i.k, align 2, !tbaa !8    ; 2 uses
  %i.m = icmp eq i16 %i.l, 0
  br i1 %i.m, label %bb.d, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.critedge.thread
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !15
  %i.n = zext i16 %i.l to i64
  %i.o = shl nuw nsw i64 %i.n, 3
  br label %bb.h

bb.d:                                             ; preds = %.critedge.thread
  %i.p = tail call noalias dereferenceable_or_null(8) ptr @calloc(i64 noundef 1, i64 noundef 8) #17 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %mbedtls_mpi_lset.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.r, i64 noundef 0) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i16 1, ptr %i.k, align 2, !tbaa !8
  store ptr %i.p, ptr %0, align 8, !tbaa !15
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i
  %i.s = phi i64 [ %i.o, %._crit_edge.i ], [ 8, %bb.g ]
  %i.t = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.p, %bb.g ]
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.t, i8 0, i64 %i.s, i1 false)
  %i.u = load ptr, ptr %0, align 8, !tbaa !15
  store i64 0, ptr %i.u, align 8, !tbaa !19
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.v, align 8, !tbaa !13
  br label %mbedtls_mpi_lset.exit

bb.i:                                             ; preds = %.critedge
  %i.w = add nuw nsw i64 %.01932, 1               ; 2 uses
  %i.x = icmp ugt i64 %.01932, 9999
  br i1 %i.x, label %mbedtls_mpi_lset.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.z = load i16, ptr %i.y, align 2, !tbaa !8
  %i.aa = zext i16 %i.z to i64                    ; 2 uses
  %.not29 = icmp samesign ult i64 %.01932, %i.aa
  br i1 %.not29, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = tail call noalias ptr @calloc(i64 noundef %i.w, i64 noundef 8) #17 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %mbedtls_mpi_lset.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = load ptr, ptr %0, align 8, !tbaa !15    ; 3 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = shl nuw nsw i64 %i.aa, 3                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr nonnull align 8 %i.ad, i64 %i.ae, i1 false)
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.ad, i64 noundef %i.ae) #16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.af = trunc nuw nsw i64 %i.w to i16
  store i16 %i.af, ptr %i.y, align 2, !tbaa !8
  store ptr %i.ab, ptr %0, align 8, !tbaa !15
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.j
  %i.ag = tail call i32 @mbedtls_mpi_copy(ptr noundef nonnull %0, ptr noundef nonnull %1) ; 2 uses
  %.not25 = icmp eq i32 %i.ag, 0
  br i1 %.not25, label %bb.p, label %mbedtls_mpi_lset.exit

bb.p:                                             ; preds = %bb.o
  %i.ah = load ptr, ptr %0, align 8, !tbaa !15
  %i.ai = load i16, ptr %i.y, align 2, !tbaa !8
  %i.aj = zext i16 %i.ai to i64
  %i.ak = load ptr, ptr %1, align 8, !tbaa !15
  %i.al = add i64 %2, -1
  %i.am = tail call i64 @mbedtls_mpi_core_mla(ptr noundef %i.ah, i64 noundef %i.aj, ptr noundef %i.ak, i64 noundef %.01932, i64 noundef %i.al) #16 ; 0 uses
  br label %mbedtls_mpi_lset.exit

mbedtls_mpi_lset.exit:                            ; preds = %bb.k, %bb.i, %bb.h, %bb.d, %bb.p, %bb.o
  %.020 = phi i32 [ 0, %bb.p ], [ -141, %bb.d ], [ %i.ag, %bb.o ], [ 0, %bb.h ], [ -141, %bb.k ], [ -141, %bb.i ]
  ret i32 %.020
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -141, 1) i32 @mbedtls_mpi_add_int(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.mbedtls_mpi, align 8        ; 6 uses
  %i.a = alloca [1 x i64], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %.0.i = tail call noundef range(i64 0, -9223372036854775807) i64 @llvm.abs.i64(i64 %2, i1 false)
  store i64 %.0.i, ptr %i.a, align 8, !tbaa !19
  %i.b = ashr i64 %2, 62
  %i.c = trunc nsw i64 %i.b to i16
  %i.d = or i16 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i16 %i.d, ptr %i.e, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 10
  store i16 1, ptr %i.f, align 2, !tbaa !8
  store ptr %i.a, ptr %3, align 8, !tbaa !15
  %i.g = call fastcc range(i32 -141, 1) i32 @add_sub_mpi(ptr noundef %0, ptr noundef readonly %1, ptr noundef nonnull readonly %3, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret i32 %i.g
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -141, 1) i32 @mbedtls_mpi_write_string(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.mbedtls_mpi, align 8        ; 10 uses
  %i.a = alloca [1 x i64], align 8                ; 8 uses
  %6 = alloca %struct.mbedtls_mpi, align 8        ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.b = add i32 %1, -17
  %or.cond = icmp ult i32 %i.b, -15
  br i1 %or.cond, label %mbedtls_mpi_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !8
  %i.f = zext i16 %i.e to i64
  %i.g = tail call i64 @mbedtls_mpi_core_bitlen(ptr noundef %i.c, i64 noundef %i.f) #16
  %i.h = icmp samesign ugt i32 %1, 3
  %i.i = zext i1 %i.h to i64
  %spec.select = lshr i64 %i.g, %i.i
  %i.j = icmp samesign ugt i32 %1, 15
  %i.k = zext i1 %i.j to i64
  %.146 = lshr i64 %spec.select, %i.k
  %i.l = add i64 %.146, 3                         ; 2 uses
  %i.m = and i64 %i.l, 1
  %i.n = add i64 %i.m, %i.l                       ; 2 uses
  %i.o = icmp ult i64 %3, %i.n
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 %i.n, ptr %4, align 8, !tbaa !19
  br label %mbedtls_mpi_free.exit

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  store i16 1, ptr %i.p, align 8, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 10 ; 6 uses
  store i16 0, ptr %i.q, align 2, !tbaa !8
  store ptr null, ptr %6, align 8, !tbaa !15
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i16, ptr %i.r, align 8, !tbaa !13
  %i.t = icmp eq i16 %i.s, -1
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 45, ptr %2, align 1, !tbaa !29
  %i.v = add i64 %3, -1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.069 = phi ptr [ %i.u, %bb.e ], [ %2, %bb.d ]  ; 5 uses
  %.050 = phi i64 [ %i.v, %bb.e ], [ %3, %bb.d ]  ; 4 uses
  %i.w = icmp eq i32 %1, 16
  br i1 %i.w, label %bb.g, label %bb.q

bb.g:                                             ; preds = %bb.f
  %i.x = load i16, ptr %i.d, align 2, !tbaa !8    ; 2 uses
  %.not5894 = icmp eq i16 %i.x, 0
  br i1 %.not5894, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.g
  %i.y = zext i16 %i.x to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.p
  %.097 = phi i64 [ %.2.7, %bb.p ], [ 0, %.preheader.preheader ]
  %.04496 = phi i64 [ %i.fb, %bb.p ], [ %i.y, %.preheader.preheader ] ; 10 uses
  %.17095 = phi ptr [ %.3.7, %bb.p ], [ %.069, %.preheader.preheader ] ; 11 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !15
  %i.aa = getelementptr [8 x i8], ptr %i.z, i64 %.04496
  %i.ab = getelementptr i8, ptr %i.aa, i64 -8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !19 ; 10 uses
  %i.ad = lshr i64 %i.ac, 56                      ; 2 uses
  %i.ae = or i64 %i.ad, %.097
  %.not60 = icmp eq i64 %i.ae, 0
  br i1 %.not60, label %bb.h, label %.thread

.thread:                                          ; preds = %.preheader
  %sum.shift = lshr i64 %i.ac, 60
  %i.af = getelementptr inbounds nuw i8, ptr @.str, i64 %sum.shift
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !29
  %i.ah = getelementptr inbounds nuw i8, ptr %.17095, i64 1
  store i8 %i.ag, ptr %.17095, align 1, !tbaa !29
  %i.ai = and i64 %i.ad, 15
  %i.aj = getelementptr inbounds nuw i8, ptr @.str, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !29
  %i.al = getelementptr inbounds nuw i8, ptr %.17095, i64 2
  store i8 %i.ak, ptr %i.ah, align 1, !tbaa !29
  %.pre = load ptr, ptr %0, align 8, !tbaa !15
  %.phi.trans.insert = getelementptr [8 x i8], ptr %.pre, i64 %.04496
  %.phi.trans.insert111 = getelementptr i8, ptr %.phi.trans.insert, i64 -8
  %.pre112 = load i64, ptr %.phi.trans.insert111, align 8, !tbaa !19
  %i.am = lshr i64 %.pre112, 48                   ; 2 uses
  %i.an = trunc nuw nsw i64 %i.am to i32
  %i.ao = and i32 %i.an, 255
  br label %.thread156

bb.h:                                             ; preds = %.preheader
  %i.ap = lshr i64 %i.ac, 48                      ; 2 uses
  %i.aq = trunc nuw nsw i64 %i.ap to i32
  %i.ar = and i32 %i.aq, 255                      ; 2 uses
  %.not60.1 = icmp eq i32 %i.ar, 0
  br i1 %.not60.1, label %bb.i, label %.thread156

.thread156:                                       ; preds = %bb.h, %.thread
  %i.as = phi i32 [ %i.ao, %.thread ], [ %i.ar, %bb.h ]
  %i.at = phi i64 [ %i.am, %.thread ], [ %i.ap, %bb.h ]
  %.3153 = phi ptr [ %i.al, %.thread ], [ %.17095, %bb.h ] ; 3 uses
  %i.au = lshr i32 %i.as, 4
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr @.str, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !29
  %i.ay = getelementptr inbounds nuw i8, ptr %.3153, i64 1
  store i8 %i.ax, ptr %.3153, align 1, !tbaa !29
  %i.az = and i64 %i.at, 15
  %i.ba = getelementptr inbounds nuw i8, ptr @.str, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !29
  %i.bc = getelementptr inbounds nuw i8, ptr %.3153, i64 2
  store i8 %i.bb, ptr %i.ay, align 1, !tbaa !29
  %.pre113 = load ptr, ptr %0, align 8, !tbaa !15
  %.phi.trans.insert114 = getelementptr [8 x i8], ptr %.pre113, i64 %.04496
  %.phi.trans.insert115 = getelementptr i8, ptr %.phi.trans.insert114, i64 -8
  %.pre116 = load i64, ptr %.phi.trans.insert115, align 8, !tbaa !19
  %i.bd = lshr i64 %.pre116, 40                   ; 2 uses
  %i.be = trunc nuw nsw i64 %i.bd to i32
  %i.bf = and i32 %i.be, 255
  br label %.thread164

bb.i:                                             ; preds = %bb.h
  %i.bg = lshr i64 %i.ac, 40                      ; 2 uses
  %i.bh = trunc nuw nsw i64 %i.bg to i32
  %i.bi = and i32 %i.bh, 255                      ; 2 uses
  %.not60.2 = icmp eq i32 %i.bi, 0
  br i1 %.not60.2, label %bb.j, label %.thread164

.thread164:                                       ; preds = %bb.i, %.thread156
  %i.bj = phi i32 [ %i.bf, %.thread156 ], [ %i.bi, %bb.i ]
  %i.bk = phi i64 [ %i.bd, %.thread156 ], [ %i.bg, %bb.i ]
  %.3.1161 = phi ptr [ %i.bc, %.thread156 ], [ %.17095, %bb.i ] ; 3 uses
  %i.bl = lshr i32 %i.bj, 4
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr @.str, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !29
  %i.bp = getelementptr inbounds nuw i8, ptr %.3.1161, i64 1
  store i8 %i.bo, ptr %.3.1161, align 1, !tbaa !29
  %i.bq = and i64 %i.bk, 15
  %i.br = getelementptr inbounds nuw i8, ptr @.str, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !29
  %i.bt = getelementptr inbounds nuw i8, ptr %.3.1161, i64 2
  store i8 %i.bs, ptr %i.bp, align 1, !tbaa !29
  %.pre117 = load ptr, ptr %0, align 8, !tbaa !15
  %.phi.trans.insert118 = getelementptr [8 x i8], ptr %.pre117, i64 %.04496
  %.phi.trans.insert119 = getelementptr i8, ptr %.phi.trans.insert118, i64 -8
  %.pre120 = load i64, ptr %.phi.trans.insert119, align 8, !tbaa !19
  %i.bu = lshr i64 %.pre120, 32                   ; 2 uses
  %i.bv = trunc nuw i64 %i.bu to i32
  %i.bw = and i32 %i.bv, 255
  br label %.thread172

bb.j:                                             ; preds = %bb.i
  %i.bx = lshr i64 %i.ac, 32                      ; 2 uses
  %i.by = trunc nuw i64 %i.bx to i32
  %i.bz = and i32 %i.by, 255                      ; 2 uses
  %.not60.3 = icmp eq i32 %i.bz, 0
  br i1 %.not60.3, label %bb.k, label %.thread172

.thread172:                                       ; preds = %bb.j, %.thread164
  %i.ca = phi i32 [ %i.bw, %.thread164 ], [ %i.bz, %bb.j ]
  %i.cb = phi i64 [ %i.bu, %.thread164 ], [ %i.bx, %bb.j ]
  %.3.2169 = phi ptr [ %i.bt, %.thread164 ], [ %.17095, %bb.j ] ; 3 uses
  %i.cc = lshr i32 %i.ca, 4
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr @.str, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !29
  %i.cg = getelementptr inbounds nuw i8, ptr %.3.2169, i64 1
  store i8 %i.cf, ptr %.3.2169, align 1, !tbaa !29
  %i.ch = and i64 %i.cb, 15
  %i.ci = getelementptr inbounds nuw i8, ptr @.str, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !29
  %i.ck = getelementptr inbounds nuw i8, ptr %.3.2169, i64 2
  store i8 %i.cj, ptr %i.cg, align 1, !tbaa !29
  %.pre121 = load ptr, ptr %0, align 8, !tbaa !15
  %.phi.trans.insert122 = getelementptr [8 x i8], ptr %.pre121, i64 %.04496
  %.phi.trans.insert123 = getelementptr i8, ptr %.phi.trans.insert122, i64 -8
  %.pre124 = load i64, ptr %.phi.trans.insert123, align 8, !tbaa !19
  %i.cl = lshr i64 %.pre124, 24                   ; 2 uses
  %i.cm = trunc i64 %i.cl to i32
  %i.cn = and i32 %i.cm, 255
  br label %.thread180

bb.k:                                             ; preds = %bb.j
  %i.co = lshr i64 %i.ac, 24                      ; 2 uses
  %i.cp = trunc i64 %i.co to i32
  %i.cq = and i32 %i.cp, 255                      ; 2 uses
  %.not60.4 = icmp eq i32 %i.cq, 0
  br i1 %.not60.4, label %bb.l, label %.thread180

.thread180:                                       ; preds = %bb.k, %.thread172
  %i.cr = phi i32 [ %i.cn, %.thread172 ], [ %i.cq, %bb.k ]
  %i.cs = phi i64 [ %i.cl, %.thread172 ], [ %i.co, %bb.k ]
  %.3.3177 = phi ptr [ %i.ck, %.thread172 ], [ %.17095, %bb.k ] ; 3 uses
  %i.ct = lshr i32 %i.cr, 4
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr @.str, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !29
  %i.cx = getelementptr inbounds nuw i8, ptr %.3.3177, i64 1
  store i8 %i.cw, ptr %.3.3177, align 1, !tbaa !29
  %i.cy = and i64 %i.cs, 15
  %i.cz = getelementptr inbounds nuw i8, ptr @.str, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !29
  %i.db = getelementptr inbounds nuw i8, ptr %.3.3177, i64 2
  store i8 %i.da, ptr %i.cx, align 1, !tbaa !29
  %.pre125 = load ptr, ptr %0, align 8, !tbaa !15
  %.phi.trans.insert126 = getelementptr [8 x i8], ptr %.pre125, i64 %.04496
  %.phi.trans.insert127 = getelementptr i8, ptr %.phi.trans.insert126, i64 -8
  %.pre128 = load i64, ptr %.phi.trans.insert127, align 8, !tbaa !19
  %i.dc = lshr i64 %.pre128, 16                   ; 2 uses
  %i.dd = trunc i64 %i.dc to i32
  %i.de = and i32 %i.dd, 255
  br label %.thread188

bb.l:                                             ; preds = %bb.k
  %i.df = lshr i64 %i.ac, 16                      ; 2 uses
  %i.dg = trunc i64 %i.df to i32
  %i.dh = and i32 %i.dg, 255                      ; 2 uses
  %.not60.5 = icmp eq i32 %i.dh, 0
  br i1 %.not60.5, label %bb.m, label %.thread188

.thread188:                                       ; preds = %bb.l, %.thread180
  %i.di = phi i32 [ %i.de, %.thread180 ], [ %i.dh, %bb.l ]
  %i.dj = phi i64 [ %i.dc, %.thread180 ], [ %i.df, %bb.l ]
  %.3.4185 = phi ptr [ %i.db, %.thread180 ], [ %.17095, %bb.l ] ; 3 uses
  %i.dk = lshr i32 %i.di, 4
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr @.str, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !29
  %i.do = getelementptr inbounds nuw i8, ptr %.3.4185, i64 1
  store i8 %i.dn, ptr %.3.4185, align 1, !tbaa !29
  %i.dp = and i64 %i.dj, 15
  %i.dq = getelementptr inbounds nuw i8, ptr @.str, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !29
  %i.ds = getelementptr inbounds nuw i8, ptr %.3.4185, i64 2
  store i8 %i.dr, ptr %i.do, align 1, !tbaa !29
  %.pre129 = load ptr, ptr %0, align 8, !tbaa !15
  %.phi.trans.insert130 = getelementptr [8 x i8], ptr %.pre129, i64 %.04496
  %.phi.trans.insert131 = getelementptr i8, ptr %.phi.trans.insert130, i64 -8
  %.pre132 = load i64, ptr %.phi.trans.insert131, align 8, !tbaa !19
  %i.dt = lshr i64 %.pre132, 8                    ; 2 uses
  %i.du = trunc i64 %i.dt to i32
  %i.dv = and i32 %i.du, 255
  br label %.thread195

bb.m:                                             ; preds = %bb.l
  %i.dw = lshr i64 %i.ac, 8                       ; 2 uses
  %i.dx = trunc i64 %i.dw to i32
  %i.dy = and i32 %i.dx, 255                      ; 2 uses
  %.not214 = icmp eq i32 %i.dy, 0
  br i1 %.not214, label %bb.n, label %.thread195

.thread195:                                       ; preds = %bb.m, %.thread188
  %i.dz = phi i32 [ %i.dv, %.thread188 ], [ %i.dy, %bb.m ]
  %i.ea = phi i64 [ %i.dt, %.thread188 ], [ %i.dw, %bb.m ]
  %.3.5192 = phi ptr [ %i.ds, %.thread188 ], [ %.17095, %bb.m ] ; 3 uses
  %i.eb = lshr i32 %i.dz, 4
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr @.str, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !29
  %i.ef = getelementptr inbounds nuw i8, ptr %.3.5192, i64 1
  store i8 %i.ee, ptr %.3.5192, align 1, !tbaa !29
  %i.eg = and i64 %i.ea, 15
  %i.eh = getelementptr inbounds nuw i8, ptr @.str, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !29
  %i.ej = getelementptr inbounds nuw i8, ptr %.3.5192, i64 2
  store i8 %i.ei, ptr %i.ef, align 1, !tbaa !29
  %.pre133 = load ptr, ptr %0, align 8, !tbaa !15
  %.phi.trans.insert134 = getelementptr [8 x i8], ptr %.pre133, i64 %.04496
  %.phi.trans.insert135 = getelementptr i8, ptr %.phi.trans.insert134, i64 -8
  %.pre136 = load i64, ptr %.phi.trans.insert135, align 8, !tbaa !19 ; 2 uses
  %i.ek = trunc i64 %.pre136 to i32
  %i.el = and i32 %i.ek, 255
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.em = trunc i64 %i.ac to i32
  %i.en = and i32 %i.em, 255                      ; 2 uses
  %i.eo = icmp ne i32 %i.en, 0
  %.not60.7 = icmp eq i64 %.04496, 1
  %i.ep = or i1 %i.eo, %.not60.7
  br i1 %i.ep, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.thread195, %bb.n
  %i.eq = phi i32 [ %i.el, %.thread195 ], [ %i.en, %bb.n ]
  %.3.6200 = phi ptr [ %i.ej, %.thread195 ], [ %.17095, %bb.n ] ; 3 uses
  %i.er = phi i64 [ %.pre136, %.thread195 ], [ %i.ac, %bb.n ]
  %i.es = lshr i32 %i.eq, 4
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw i8, ptr @.str, i64 %i.et
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !29
  %i.ew = getelementptr inbounds nuw i8, ptr %.3.6200, i64 1
  store i8 %i.ev, ptr %.3.6200, align 1, !tbaa !29
  %i.ex = and i64 %i.er, 15
  %i.ey = getelementptr inbounds nuw i8, ptr @.str, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !29
  %i.fa = getelementptr inbounds nuw i8, ptr %.3.6200, i64 2
  store i8 %i.ez, ptr %i.ew, align 1, !tbaa !29
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.3.7 = phi ptr [ %i.fa, %bb.o ], [ %.17095, %bb.n ] ; 2 uses
  %.2.7 = phi i64 [ 1, %bb.o ], [ 0, %bb.n ]
  %i.fb = add nsw i64 %.04496, -1                 ; 2 uses
  %.not58 = icmp eq i64 %i.fb, 0
  br i1 %.not58, label %.loopexit, label %.preheader, !llvm.loop !33

bb.q:                                             ; preds = %bb.f
  %i.fc = call i32 @mbedtls_mpi_copy(ptr noundef nonnull %6, ptr noundef nonnull %0) ; 2 uses
  %.not = icmp eq i32 %i.fc, 0
  br i1 %.not, label %bb.r, label %mpi_write_hlp.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.fd = load i16, ptr %i.p, align 8, !tbaa !13  ; 2 uses
  %i.fe = icmp eq i16 %i.fd, -1
  %spec.store.select = select i1 %i.fe, i16 1, i16 %i.fd ; 2 uses
  store i16 %spec.store.select, ptr %i.p, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %.069, i64 %.050 ; 2 uses
  %i.fg = zext nneg i32 %1 to i64                 ; 5 uses
  %i.fh = icmp eq i32 %1, 2
  %i.fi = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %5, i64 10 ; 2 uses
  %exitcond58.not.i232 = icmp eq i64 %.050, 0     ; 2 uses
  br i1 %i.fh, label %.split.us.i.preheader, label %.split.i.preheader

.split.i.preheader:                               ; preds = %bb.r
  br i1 %exitcond58.not.i232, label %mpi_write_hlp.exit.thread, label %.lr.ph

.split.us.i.preheader:                            ; preds = %bb.r
  br i1 %exitcond58.not.i232, label %mpi_write_hlp.exit.thread, label %.lr.ph235

.split.us.i:                                      ; preds = %mbedtls_mpi_cmp_int.exit.us.i
  %exitcond58.not.i = icmp eq i64 %i.ft, %.050
  br i1 %exitcond58.not.i, label %mpi_write_hlp.exit.thread, label %.lr.ph235, !llvm.loop !34

.lr.ph235:                                        ; preds = %.split.us.i.preheader, %.split.us.i
  %.0.us.i234 = phi ptr [ %i.fs, %.split.us.i ], [ %i.ff, %.split.us.i.preheader ]
  %.019.us.i233 = phi i64 [ %i.ft, %.split.us.i ], [ 0, %.split.us.i.preheader ]
  %i.fk = load i16, ptr %i.q, align 2, !tbaa !8
  %i.fl = icmp eq i16 %i.fk, 0
  br i1 %i.fl, label %mbedtls_mpi_mod_int.exit.us.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph235
  %i.fm = load ptr, ptr %6, align 8, !tbaa !15
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !19
  %i.fo = trunc i64 %i.fn to i8
  %i.fp = and i8 %i.fo, 1
  %i.fq = or disjoint i8 %i.fp, 48
  br label %mbedtls_mpi_mod_int.exit.us.i

mbedtls_mpi_mod_int.exit.us.i:                    ; preds = %bb.s, %.lr.ph235
  %spec.select.sink.i.us.i = phi i8 [ 48, %.lr.ph235 ], [ %i.fq, %bb.s ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.fg, ptr %i.a, align 8, !tbaa !19
  store i16 1, ptr %i.fi, align 8, !tbaa !13
  store i16 1, ptr %i.fj, align 2, !tbaa !8
  store ptr %i.a, ptr %5, align 8, !tbaa !15
  %i.fr = call range(i32 -141, 1) i32 @mbedtls_mpi_div_mpi(ptr noundef nonnull %6, ptr noundef null, ptr noundef nonnull readonly %6, ptr noundef nonnull %5) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %.not28.us.i = icmp eq i32 %i.fr, 0
  br i1 %.not28.us.i, label %bb.t, label %mpi_write_hlp.exit.thread

bb.t:                                             ; preds = %mbedtls_mpi_mod_int.exit.us.i
  %i.fs = getelementptr inbounds i8, ptr %.0.us.i234, i64 -1 ; 5 uses
  store i8 %spec.select.sink.i.us.i, ptr %i.fs, align 1, !tbaa !29
  %i.ft = add nuw i64 %.019.us.i233, 1            ; 5 uses
  %i.fu = load i16, ptr %i.q, align 2, !tbaa !8   ; 2 uses
  %.not44.i.i.us.i = icmp eq i16 %i.fu, 0
  br i1 %.not44.i.i.us.i, label %mpi_write_hlp.exit, label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %bb.t
  %i.fv = zext i16 %i.fu to i64
  %i.fw = load ptr, ptr %6, align 8, !tbaa !15
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %.lr.ph.i.i.us.i
  %.03545.i.i.us.i = phi i64 [ %i.fv, %.lr.ph.i.i.us.i ], [ %i.ga, %bb.v ] ; 2 uses
  %i.fx = getelementptr [8 x i8], ptr %i.fw, i64 %.03545.i.i.us.i
  %i.fy = getelementptr i8, ptr %i.fx, i64 -8
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !19
  %.not39.i.i.us.i = icmp eq i64 %i.fz, 0
  br i1 %.not39.i.i.us.i, label %bb.v, label %mbedtls_mpi_cmp_int.exit.us.i

bb.v:                                             ; preds = %bb.u
  %i.ga = add nsw i64 %.03545.i.i.us.i, -1        ; 2 uses
  %.not.i.i.us.i = icmp eq i64 %i.ga, 0
  br i1 %.not.i.i.us.i, label %mpi_write_hlp.exit, label %bb.u, !llvm.loop !35

mbedtls_mpi_cmp_int.exit.us.i:                    ; preds = %bb.u
  %i.gb = load i16, ptr %i.p, align 8, !tbaa !13
  %.not29.us.i = icmp eq i16 %i.gb, 0
  br i1 %.not29.us.i, label %mpi_write_hlp.exit, label %.split.us.i, !llvm.loop !34

.split.i:                                         ; preds = %mbedtls_mpi_cmp_int.exit.i
  %exitcond.not.i = icmp eq i64 %i.ha, %.050
  br i1 %exitcond.not.i, label %mpi_write_hlp.exit.thread, label %.lr.ph, !llvm.loop !34

.lr.ph:                                           ; preds = %.split.i.preheader, %.split.i
  %.0.i230 = phi ptr [ %i.gx, %.split.i ], [ %i.ff, %.split.i.preheader ]
  %.019.i229 = phi i64 [ %i.ha, %.split.i ], [ 0, %.split.i.preheader ]
  %i.gc = phi i16 [ %i.hi, %.split.i ], [ %spec.store.select, %.split.i.preheader ]
  %i.gd = load i16, ptr %i.q, align 2, !tbaa !8   ; 2 uses
  %i.ge = icmp eq i16 %i.gd, 0
  br i1 %i.ge, label %mbedtls_mpi_mod_int.exit.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph
  %i.gf = zext i16 %i.gd to i64
  %i.gg = load ptr, ptr %6, align 8, !tbaa !15
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %bb.w
  %.042.i.i = phi i64 [ 0, %bb.w ], [ %i.gp, %bb.x ]
  %.03541.i.i = phi i64 [ %i.gf, %bb.w ], [ %i.gq, %bb.x ] ; 2 uses
  %i.gh = getelementptr [8 x i8], ptr %i.gg, i64 %.03541.i.i
  %i.gi = getelementptr i8, ptr %i.gh, i64 -8
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !19
  %.fr40.i.i = freeze i64 %i.gj                   ; 2 uses
  %i.gk = call i64 @llvm.fshl.i64(i64 %.042.i.i, i64 %.fr40.i.i, i64 32)
  %i.gl = urem i64 %i.gk, %i.fg
  %i.gm = and i64 %.fr40.i.i, 4294967295
  %i.gn = shl nuw nsw i64 %i.gl, 32
  %i.go = or disjoint i64 %i.gn, %i.gm
  %i.gp = urem i64 %i.go, %i.fg                   ; 4 uses
  %i.gq = add nsw i64 %.03541.i.i, -1             ; 2 uses
  %.not.i.i = icmp eq i64 %i.gq, 0
  br i1 %.not.i.i, label %bb.y, label %bb.x, !llvm.loop !36

bb.y:                                             ; preds = %bb.x
  %i.gr = icmp slt i16 %i.gc, 0
  %i.gs = icmp ne i64 %i.gp, 0
  %or.cond.i.i = select i1 %i.gr, i1 %i.gs, i1 false
  %i.gt = sub nsw i64 %i.fg, %i.gp
  %spec.select.i.i = select i1 %or.cond.i.i, i64 %i.gt, i64 %i.gp
  br label %mbedtls_mpi_mod_int.exit.i

mbedtls_mpi_mod_int.exit.i:                       ; preds = %bb.y, %.lr.ph
  %spec.select.sink.i.i = phi i64 [ %spec.select.i.i, %bb.y ], [ 0, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.fg, ptr %i.a, align 8, !tbaa !19
  store i16 1, ptr %i.fi, align 8, !tbaa !13
  store i16 1, ptr %i.fj, align 2, !tbaa !8
  store ptr %i.a, ptr %5, align 8, !tbaa !15
  %i.gu = call range(i32 -141, 1) i32 @mbedtls_mpi_div_mpi(ptr noundef nonnull %6, ptr noundef null, ptr noundef nonnull readonly %6, ptr noundef nonnull %5) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %.not28.i = icmp eq i32 %i.gu, 0
  br i1 %.not28.i, label %bb.z, label %mpi_write_hlp.exit.thread

bb.z:                                             ; preds = %mbedtls_mpi_mod_int.exit.i
  %i.gv = icmp ult i64 %spec.select.sink.i.i, 10
  %i.gw = trunc nsw i64 %spec.select.sink.i.i to i8 ; 2 uses
  %i.gx = getelementptr inbounds i8, ptr %.0.i230, i64 -1 ; 5 uses
  %i.gy = add nsw i8 %i.gw, 55
  %i.gz = or disjoint i8 %i.gw, 48
  %.sink.i = select i1 %i.gv, i8 %i.gz, i8 %i.gy
  store i8 %.sink.i, ptr %i.gx, align 1, !tbaa !29
  %i.ha = add nuw i64 %.019.i229, 1               ; 5 uses
  %i.hb = load i16, ptr %i.q, align 2, !tbaa !8   ; 2 uses
  %.not44.i.i.i = icmp eq i16 %i.hb, 0
  br i1 %.not44.i.i.i, label %mpi_write_hlp.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.z
  %i.hc = zext i16 %i.hb to i64
  %i.hd = load ptr, ptr %6, align 8, !tbaa !15
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ab, %.lr.ph.i.i.i
  %.03545.i.i.i = phi i64 [ %i.hc, %.lr.ph.i.i.i ], [ %i.hh, %bb.ab ] ; 2 uses
  %i.he = getelementptr [8 x i8], ptr %i.hd, i64 %.03545.i.i.i
  %i.hf = getelementptr i8, ptr %i.he, i64 -8
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !19
  %.not39.i.i.i = icmp eq i64 %i.hg, 0
  br i1 %.not39.i.i.i, label %bb.ab, label %mbedtls_mpi_cmp_int.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.hh = add nsw i64 %.03545.i.i.i, -1           ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.hh, 0
  br i1 %.not.i.i.i, label %mpi_write_hlp.exit, label %bb.aa, !llvm.loop !35

mbedtls_mpi_cmp_int.exit.i:                       ; preds = %bb.aa
  %i.hi = load i16, ptr %i.p, align 8, !tbaa !13  ; 2 uses
  %.not29.i = icmp eq i16 %i.hi, 0
  br i1 %.not29.i, label %mpi_write_hlp.exit, label %.split.i, !llvm.loop !34

mpi_write_hlp.exit:                               ; preds = %bb.z, %mbedtls_mpi_cmp_int.exit.i, %bb.ab, %bb.t, %mbedtls_mpi_cmp_int.exit.us.i, %bb.v
  %.139.i = phi ptr [ %i.fs, %bb.v ], [ %i.gx, %bb.ab ], [ %i.fs, %bb.t ], [ %i.fs, %mbedtls_mpi_cmp_int.exit.us.i ], [ %i.gx, %mbedtls_mpi_cmp_int.exit.i ], [ %i.gx, %bb.z ]
  %i.hj = phi i64 [ %i.ft, %bb.v ], [ %i.ha, %bb.ab ], [ %i.ft, %bb.t ], [ %i.ft, %mbedtls_mpi_cmp_int.exit.us.i ], [ %i.ha, %mbedtls_mpi_cmp_int.exit.i ], [ %i.ha, %bb.z ] ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.069, ptr noundef nonnull align 1 dereferenceable(1) %.139.i, i64 %i.hj, i1 false)
  %i.hk = getelementptr inbounds nuw i8, ptr %.069, i64 %i.hj
  br label %.loopexit

.loopexit:                                        ; preds = %bb.p, %bb.g, %mpi_write_hlp.exit
  %.4 = phi ptr [ %i.hk, %mpi_write_hlp.exit ], [ %.069, %bb.g ], [ %.3.7, %bb.p ] ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.4, i64 1
  store i8 0, ptr %.4, align 1, !tbaa !29
  %i.hm = ptrtoint ptr %i.hl to i64
  %i.hn = ptrtoint ptr %2 to i64
  %i.ho = sub i64 %i.hm, %i.hn
  store i64 %i.ho, ptr %4, align 8, !tbaa !19
  br label %mpi_write_hlp.exit.thread

mpi_write_hlp.exit.thread:                        ; preds = %mbedtls_mpi_mod_int.exit.i, %.split.i, %.split.us.i, %mbedtls_mpi_mod_int.exit.us.i, %.split.i.preheader, %.split.us.i.preheader, %bb.q, %.loopexit
  %.148 = phi i32 [ 0, %.loopexit ], [ %i.fc, %bb.q ], [ -138, %.split.i.preheader ], [ -138, %.split.us.i.preheader ], [ %i.fr, %mbedtls_mpi_mod_int.exit.us.i ], [ -138, %.split.us.i ], [ %i.gu, %mbedtls_mpi_mod_int.exit.i ], [ -138, %.split.i ] ; 2 uses
  %i.hp = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %.not.i = icmp eq ptr %i.hp, null
  br i1 %.not.i, label %mbedtls_mpi_free.exit, label %bb.ac

bb.ac:                                            ; preds = %mpi_write_hlp.exit.thread
  %i.hq = load i16, ptr %i.q, align 2, !tbaa !8
  %i.hr = zext i16 %i.hq to i64
  %i.hs = shl nuw nsw i64 %i.hr, 3
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.hp, i64 noundef %i.hs) #16
  br label %mbedtls_mpi_free.exit

mbedtls_mpi_free.exit:                            ; preds = %bb.ac, %mpi_write_hlp.exit.thread, %bb.a, %bb.c
  %.049 = phi i32 [ -135, %bb.a ], [ -138, %bb.c ], [ %.148, %mpi_write_hlp.exit.thread ], [ %.148, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  ret i32 %.049
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -141, 1) i32 @mbedtls_mpi_read_file(ptr nofree noundef captures(address) %0, i32 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2484 x i8], align 16             ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = add i32 %1, -17
  %or.cond = icmp ult i32 %i.b, -15
  br i1 %or.cond, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2484) %i.a, i8 0, i64 2484, i1 false)
  %i.c = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 2483, ptr noundef %2)
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #18 ; 5 uses
  switch i64 %i.e, label %bb.d [
    i64 2482, label %bb.h
    i64 0, label %.thread
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %i.a, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 -1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !29    ; 2 uses
  %i.i = icmp eq i8 %i.h, 10
  br i1 %i.i, label %bb.e, label %.thread28

bb.e:                                             ; preds = %bb.d
  %i.j = add i64 %i.e, -1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.j ; 2 uses
  store i8 0, ptr %i.k, align 1, !tbaa !29
  %.not24 = icmp eq i64 %i.j, 0
  br i1 %.not24, label %.thread, label %..thread28_crit_edge

..thread28_crit_edge:                             ; preds = %bb.e
  %.phi.trans.insert = getelementptr i8, ptr %i.k, i64 -1
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !29
  br label %.thread28

.thread28:                                        ; preds = %..thread28_crit_edge, %bb.d
  %i.l = phi i8 [ %.pre, %..thread28_crit_edge ], [ %i.h, %bb.d ]
  %.02031 = phi i64 [ %i.j, %..thread28_crit_edge ], [ %i.e, %bb.d ] ; 2 uses
  %i.m = icmp eq i8 %i.l, 13
  br i1 %i.m, label %bb.f, label %.thread

bb.f:                                             ; preds = %.thread28
  %i.n = add i64 %.02031, -1                      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.n
  store i8 0, ptr %i.o, align 1, !tbaa !29
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.f, %.thread28, %bb.e
  %.1 = phi i64 [ %i.n, %bb.f ], [ %.02031, %.thread28 ], [ 0, %bb.e ], [ %i.e, %bb.c ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1 ; 2 uses
  %i.q = zext nneg i32 %1 to i64
  %.not = icmp eq i64 %.1, 0
  br i1 %.not, label %._crit_edge35, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph
  %i.r = icmp ugt ptr %i.s, %i.a
  br i1 %i.r, label %.lr.ph, label %._crit_edge35, !llvm.loop !37

.lr.ph:                                           ; preds = %.thread, %bb.g
  %.034 = phi ptr [ %i.s, %bb.g ], [ %i.p, %.thread ] ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %.034, i64 -1 ; 4 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !29    ; 4 uses
  %i.u = sext i8 %i.t to i32                      ; 3 uses
  %i.v = add i8 %i.t, -48
  %or.cond.i = icmp ult i8 %i.v, 10
  %i.w = add nsw i32 %i.u, -48
  %i.x = zext nneg i32 %i.w to i64
  %storemerge.i = select i1 %or.cond.i, i64 %i.x, i64 255
  %i.y = add i8 %i.t, -65
  %or.cond5.i = icmp ult i8 %i.y, 6
  %i.z = add nsw i32 %i.u, -55
  %i.aa = zext nneg i32 %i.z to i64
  %storemerge24.i = select i1 %or.cond5.i, i64 %i.aa, i64 %storemerge.i
  %i.ab = add i8 %i.t, -97
  %or.cond8.i = icmp ult i8 %i.ab, 6
  %i.ac = add nsw i32 %i.u, -87
  %i.ad = zext nneg i32 %i.ac to i64
  %storemerge25.i = select i1 %or.cond8.i, i64 %i.ad, i64 %storemerge24.i
  %.not.i = icmp samesign ult i64 %storemerge25.i, %i.q
  br i1 %.not.i, label %bb.g, label %._crit_edge, !llvm.loop !37

._crit_edge:                                      ; preds = %.lr.ph
  br label %._crit_edge35, !llvm.loop !37

._crit_edge35:                                    ; preds = %bb.g, %._crit_edge, %.thread
  %.0.lcssa = phi ptr [ %.034, %._crit_edge ], [ %i.p, %.thread ], [ %i.s, %bb.g ]
  %i.ae = call i32 @mbedtls_mpi_read_string(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %.0.lcssa)
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.b, %bb.a, %._crit_edge35
  %.021 = phi i32 [ %i.ae, %._crit_edge35 ], [ -135, %bb.a ], [ -2, %bb.b ], [ -138, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.021
}

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define hidden range(i32 -141, 1) i32 @mbedtls_mpi_write_file(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2, ptr nofree noundef captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca [2484 x i8], align 16             ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.c = add i32 %2, -17
  %or.cond = icmp ult i32 %i.c, -15
  br i1 %or.cond, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2484) %i.b, i8 0, i64 2484, i1 false)
  %i.d = call i32 @mbedtls_mpi_write_string(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %i.b, i64 noundef 2482, ptr noundef nonnull %i.a) ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq ptr %0, null
  %spec.store.select = select i1 %i.e, ptr @.str.1, ptr %0 ; 3 uses
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.store.select) #18 ; 2 uses
  %i.g = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #18 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g ; 2 uses
  store i8 13, ptr %i.h, align 1, !tbaa !29
  %i.i = add i64 %i.g, 2                          ; 2 uses
  %i.j = getelementptr i8, ptr %i.h, i64 1
  store i8 10, ptr %i.j, align 1, !tbaa !29
  %.not21 = icmp eq ptr %3, null
  br i1 %.not21, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = call i64 @fwrite(ptr noundef nonnull %spec.store.select, i64 noundef 1, i64 noundef %i.f, ptr noundef nonnull %3)
  %.not22 = icmp eq i64 %i.k, %i.f
end_hunk_0
