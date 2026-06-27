inline.NumInlined: 135
inline.NumDeleted: 17
begin_hunk_0_@LZ4F_compressBound:bb.a
  %i.g = and i64 %i.a, 281474976645120
  %i.h = select i1 %.not28, i64 65543, i64 8
  %i.i = add nuw nsw i64 %i.h, %i.g
  %i.j = add nuw nsw i64 %i.i, %i.f
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.l = load i32, ptr %i.k, align 4, !tbaa !12
  %.not8 = icmp eq i32 %i.l, 0
  br i1 %.not8, label %.cont.cont.i, label %.cont.cont.i9

.cont.cont.i:                                     ; preds = %bb.b
  %.not27 = icmp eq i64 %0, 0
  %.else.val40.i = load i32, ptr %1, align 8, !tbaa !20
  %.else.val40.fr.i = freeze i32 %.else.val40.i   ; 3 uses
  %i.m = icmp eq i32 %.else.val40.fr.i, 0
  br i1 %i.m, label %LZ4F_getBlockSize.exit.thread47.i, label %bb.c

bb.c:                                             ; preds = %.cont.cont.i
  %i.n = and i32 %.else.val40.fr.i, -4
  %or.cond.not.i.i = icmp eq i32 %i.n, 4
  br i1 %or.cond.not.i.i, label %LZ4F_getBlockSize.exit.thread47.i, label %LZ4F_compressBound_internal.exit

LZ4F_getBlockSize.exit.thread47.i:                ; preds = %bb.c, %.cont.cont.i
  %.ph.i = phi i32 [ 4, %.cont.cont.i ], [ %.else.val40.fr.i, %bb.c ]
  %i.o = zext nneg i32 %.ph.i to i64
  %i.p = getelementptr [8 x i8], ptr @LZ4F_getBlockSize.blockSizes, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 -32
  %i.r = load i64, ptr %i.q, align 8, !tbaa !10
  br label %LZ4F_compressBound_internal.exit

LZ4F_compressBound_internal.exit:                 ; preds = %bb.c, %LZ4F_getBlockSize.exit.thread47.i
  %.0.i45.i = phi i64 [ %i.r, %LZ4F_getBlockSize.exit.thread47.i ], [ -2, %bb.c ] ; 3 uses
  %.sroa.gep30.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.else.val38.i = load i32, ptr %.sroa.gep30.i, align 4, !tbaa !66
  %i.s = zext i32 %.else.val38.i to i64
  %i.t = shl nuw nsw i64 %i.s, 2
  %.sroa.gep33.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.else.val39.i = load i32, ptr %.sroa.gep33.i, align 8, !tbaa !67
  %i.u = zext i32 %.else.val39.i to i64
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = add nuw nsw i64 %i.t, 4
  %i.x = add i64 %.0.i45.i, -1                    ; 2 uses
  %i.y = add i64 %i.x, %0
  %i.z = udiv i64 %i.y, %.0.i45.i                 ; 2 uses
  %i.aa = select i1 %.not27, i64 %i.x, i64 0      ; 2 uses
  %i.ab = icmp ne i64 %i.aa, 0
  %i.ac = zext i1 %i.ab to i64
  %i.ad = add i64 %i.z, %i.ac
  %i.ae = and i64 %i.ad, 4294967295
  %i.af = mul i64 %i.ae, %i.w
  %i.ag = and i64 %i.z, 4294967295
  %i.ah = mul i64 %i.ag, %.0.i45.i
  %i.ai = add i64 %i.aa, 4
  %i.aj = add i64 %i.ai, %i.v
  %i.ak = add i64 %i.aj, %i.ah
  %i.al = add i64 %i.ak, %i.af
  br label %bb.e

.cont.cont.i9:                                    ; preds = %bb.b
  %.else.val40.i12 = load i32, ptr %1, align 8, !tbaa !20
  %.else.val40.fr.i13 = freeze i32 %.else.val40.i12 ; 3 uses
  %i.am = icmp eq i32 %.else.val40.fr.i13, 0
  br i1 %i.am, label %LZ4F_getBlockSize.exit.thread47.i23, label %bb.d

bb.d:                                             ; preds = %.cont.cont.i9
  %i.an = and i32 %.else.val40.fr.i13, -4
  %or.cond.not.i.i14 = icmp eq i32 %i.an, 4
  br i1 %or.cond.not.i.i14, label %LZ4F_getBlockSize.exit.thread47.i23, label %LZ4F_compressBound_internal.exit26

LZ4F_getBlockSize.exit.thread47.i23:              ; preds = %bb.d, %.cont.cont.i9
  %.ph.i24 = phi i32 [ 4, %.cont.cont.i9 ], [ %.else.val40.fr.i13, %bb.d ]
  %i.ao = zext nneg i32 %.ph.i24 to i64
  %i.ap = getelementptr [8 x i8], ptr @LZ4F_getBlockSize.blockSizes, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 -32
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !10
  br label %LZ4F_compressBound_internal.exit26

LZ4F_compressBound_internal.exit26:               ; preds = %bb.d, %LZ4F_getBlockSize.exit.thread47.i23
  %.0.i45.i16 = phi i64 [ %i.ar, %LZ4F_getBlockSize.exit.thread47.i23 ], [ -2, %bb.d ] ; 3 uses
  %.sroa.gep30.i17 = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.else.val38.i18 = load i32, ptr %.sroa.gep30.i17, align 4, !tbaa !66
  %i.as = zext i32 %.else.val38.i18 to i64
  %i.at = shl nuw nsw i64 %i.as, 2
  %.sroa.gep33.i19 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.else.val39.i20 = load i32, ptr %.sroa.gep33.i19, align 8, !tbaa !67
  %i.au = zext i32 %.else.val39.i20 to i64
  %i.av = shl nuw nsw i64 %i.au, 2
  %i.aw = add nuw nsw i64 %i.at, 4
  %i.ax = add i64 %.0.i45.i16, -1
  %i.ay = udiv i64 %0, %.0.i45.i16                ; 2 uses
  %i.az = and i64 %i.ax, %0                       ; 2 uses
  %i.ba = icmp ne i64 %i.az, 0
  %i.bb = zext i1 %i.ba to i64
  %i.bc = add i64 %i.ay, %i.bb
  %i.bd = and i64 %i.bc, 4294967295
  %i.be = mul i64 %i.bd, %i.aw
  %i.bf = and i64 %i.ay, 4294967295
  %i.bg = mul i64 %i.bf, %.0.i45.i16
  %i.bh = add i64 %i.az, 4
  %i.bi = add i64 %i.bh, %i.av
  %i.bj = add i64 %i.bi, %i.bg
  %i.bk = add i64 %i.bj, %i.be
  br label %bb.e

bb.e:                                             ; preds = %.split, %LZ4F_compressBound_internal.exit, %LZ4F_compressBound_internal.exit26
  %.0 = phi i64 [ %i.bk, %LZ4F_compressBound_internal.exit26 ], [ %i.j, %.split ], [ %i.al, %LZ4F_compressBound_internal.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @LZ4F_compressUpdateImpl(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i64, ptr %i.a, align 8, !tbaa !58   ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %.not166 = icmp eq i32 %6, 0
  br i1 %.not166, label %bb.b, label %LZ4F_selectCompression.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.e, align 8, !tbaa !56
  %i.g = load i32, ptr %i.d, align 4, !tbaa !59
  %i.h = icmp slt i32 %i.f, 2
  %i.i = icmp eq i32 %i.g, 1                      ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %LZ4F_compressBlock.LZ4F_compressBlock_continue.i = select i1 %i.i, ptr @LZ4F_compressBlock, ptr @LZ4F_compressBlock_continue
  br label %LZ4F_selectCompression.exit

bb.d:                                             ; preds = %bb.b
  %LZ4F_compressBlockHC.LZ4F_compressBlockHC_continue.i = select i1 %i.i, ptr @LZ4F_compressBlockHC, ptr @LZ4F_compressBlockHC_continue
  br label %LZ4F_selectCompression.exit

LZ4F_selectCompression.exit:                      ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi ptr [ %LZ4F_compressBlockHC.LZ4F_compressBlockHC_continue.i, %bb.d ], [ %LZ4F_compressBlock.LZ4F_compressBlock_continue.i, %bb.c ], [ @LZ4F_doNotCompressBlock, %bb.a ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.k = load i32, ptr %i.j, align 4, !tbaa !32
  %.not = icmp eq i32 %i.k, 1
  br i1 %.not, label %bb.e, label %bb.at

bb.e:                                             ; preds = %LZ4F_selectCompression.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !61   ; 2 uses
  %.sroa.gep28.i = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  %.else.val.i = load i32, ptr %.sroa.gep28.i, align 4, !tbaa !12
  %i.o = icmp eq i64 %4, 0
  %i.p = zext i1 %i.o to i32
  %i.q = or i32 %.else.val.i, %i.p
  %.else.val40.i = load i32, ptr %i.l, align 8, !tbaa !20
  %.else.val40.fr.i = freeze i32 %.else.val40.i   ; 3 uses
  %i.r = icmp eq i32 %.else.val40.fr.i, 0
  br i1 %i.r, label %LZ4F_getBlockSize.exit.thread47.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = and i32 %.else.val40.fr.i, -4
  %or.cond.not.i.i = icmp eq i32 %i.s, 4
  br i1 %or.cond.not.i.i, label %LZ4F_getBlockSize.exit.thread47.i, label %LZ4F_compressBound_internal.exit

LZ4F_getBlockSize.exit.thread47.i:                ; preds = %bb.f, %bb.e
  %.ph.i = phi i32 [ 4, %bb.e ], [ %.else.val40.fr.i, %bb.f ]
  %i.t = zext nneg i32 %.ph.i to i64
  %i.u = getelementptr [8 x i8], ptr @LZ4F_getBlockSize.blockSizes, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 -32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !10
  br label %LZ4F_compressBound_internal.exit

LZ4F_compressBound_internal.exit:                 ; preds = %bb.f, %LZ4F_getBlockSize.exit.thread47.i
  %.0.i45.i = phi i64 [ %i.w, %LZ4F_getBlockSize.exit.thread47.i ], [ -2, %bb.f ] ; 3 uses
  %.sroa.gep30.i = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 4 uses
  %.else.val38.i = load i32, ptr %.sroa.gep30.i, align 4, !tbaa !66
  %i.x = zext i32 %.else.val38.i to i64
  %i.y = shl nuw nsw i64 %i.x, 2
  %.sroa.gep33.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.else.val39.i = load i32, ptr %.sroa.gep33.i, align 8, !tbaa !67
  %i.z = zext i32 %.else.val39.i to i64
  %i.aa = shl nuw nsw i64 %i.z, 2
  %i.ab = add nuw nsw i64 %i.aa, 4
  %i.ac = add nuw nsw i64 %i.y, 4
  %i.ad = icmp eq i32 %i.q, 0
  %i.ae = add i64 %.0.i45.i, -1                   ; 2 uses
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.ae)
  %i.ag = add i64 %i.af, %4                       ; 2 uses
  %i.ah = udiv i64 %i.ag, %.0.i45.i               ; 2 uses
  %i.ai = and i64 %i.ag, %i.ae
  %i.aj = select i1 %i.ad, i64 0, i64 %i.ai       ; 2 uses
  %i.ak = icmp ne i64 %i.aj, 0
  %i.al = zext i1 %i.ak to i64
  %i.am = add i64 %i.ah, %i.al
  %i.an = and i64 %i.am, 4294967295
  %i.ao = mul i64 %i.an, %i.ac
  %i.ap = and i64 %i.ah, 4294967295
  %i.aq = mul i64 %i.ap, %.0.i45.i
  %i.ar = add i64 %i.ab, %i.aj
  %i.as = add i64 %i.ar, %i.aq
  %i.at = add i64 %i.as, %i.ao
  %i.au = icmp ult i64 %2, %i.at
  br i1 %i.au, label %bb.at, label %7

7:                                                ; preds = %LZ4F_compressBound_internal.exit
  %.not141 = icmp ne i32 %6, 0
  %8 = icmp ult i64 %2, %4
  %or.cond148 = and i1 %8, %.not141
  br i1 %or.cond148, label %bb.at, label %bb.g

bb.g:                                             ; preds = %7
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !68
  %.not142 = icmp eq i32 %i.aw, %6
  br i1 %.not142, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = tail call i64 @LZ4F_flush(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr poison)
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %i.ax
  store i32 %6, ptr %i.av, align 4, !tbaa !68
  %.pre = load i64, ptr %i.m, align 8, !tbaa !61
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.az = phi i64 [ %.pre, %bb.h ], [ %i.n, %bb.g ] ; 3 uses
  %.0124 = phi ptr [ %i.ay, %bb.h ], [ %1, %bb.g ] ; 6 uses
  %i.ba = icmp eq ptr %5, null
  %spec.store.select = select i1 %i.ba, ptr @k_cOptionsNull, ptr %5
  %.not143 = icmp eq i64 %i.az, 0
  br i1 %.not143, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = sub i64 %i.b, %i.az                     ; 3 uses
  %i.bc = icmp ugt i64 %i.bb, %4
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !60
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.az ; 2 uses
  br i1 %i.bc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bf, ptr align 1 %3, i64 %4, i1 false)
  %i.bg = load i64, ptr %i.m, align 8, !tbaa !61
  %i.bh = add i64 %i.bg, %4
  br label %bb.r

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bf, ptr align 1 %3, i64 %i.bb, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 %i.bb ; 2 uses
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !60 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !38
  %i.bm = load i32, ptr %i.e, align 8, !tbaa !56
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !62
  %i.bp = load i32, ptr %.sroa.gep30.i, align 4, !tbaa !64 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0124, i64 4 ; 4 uses
  %i.br = trunc i64 %i.b to i32                   ; 3 uses
  %i.bs = add i32 %i.br, -1
  %i.bt = tail call i32 %.0.i(ptr noundef %i.bl, ptr noundef %i.bj, ptr noundef nonnull %i.bq, i32 noundef %i.br, i32 noundef %i.bs, i32 noundef %i.bm, ptr noundef %i.bo) #12, !inline_history !69 ; 3 uses
  %i.bu = icmp ne i32 %i.bt, 0
  %i.bv = zext i32 %i.bt to i64                   ; 2 uses
  %.not.i = icmp ugt i64 %i.b, %i.bv
  %or.cond.i = and i1 %i.bu, %.not.i
  br i1 %or.cond.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = or i32 %i.br, -2147483648
  store i32 %i.bw, ptr %.0124, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bq, ptr align 1 %i.bj, i64 %i.b, i1 false)
  %.pre180.a = and i64 %i.b, 4294967295
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  store i32 %i.bt, ptr %.0124, align 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pre.i.pre-phi = phi i64 [ %i.bv, %bb.n ], [ %.pre180.a, %bb.m ] ; 3 uses
  %.not28.i = icmp eq i32 %i.bp, 0
  br i1 %.not28.i, label %LZ4F_makeBlock.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = tail call i32 @LZ4_XXH32(ptr noundef nonnull %i.bq, i64 noundef %.pre.i.pre-phi, i32 noundef 0) #12
  %i.by = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.pre.i.pre-phi
  store i32 %i.bx, ptr %i.by, align 1
  br label %LZ4F_makeBlock.exit

LZ4F_makeBlock.exit:                              ; preds = %bb.o, %bb.p
  %i.bz = zext i32 %i.bp to i64
  %i.ca = shl nuw nsw i64 %i.bz, 2
  %i.cb = getelementptr inbounds nuw i8, ptr %.0124, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.pre.i.pre-phi ; 2 uses
  %i.ce = load i32, ptr %i.d, align 4, !tbaa !59
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.q, label %bb.r

bb.q:                                             ; preds = %LZ4F_makeBlock.exit
  %i.cg = load ptr, ptr %i.bd, align 8, !tbaa !60
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.b
  store ptr %i.ch, ptr %i.bd, align 8, !tbaa !60
  br label %bb.r

bb.r:                                             ; preds = %LZ4F_makeBlock.exit, %bb.q, %bb.k
  %storemerge = phi i64 [ %i.bh, %bb.k ], [ 0, %bb.q ], [ 0, %LZ4F_makeBlock.exit ]
  %.0128 = phi i32 [ 0, %bb.k ], [ 1, %bb.q ], [ 1, %LZ4F_makeBlock.exit ]
  %.1125 = phi ptr [ %.0124, %bb.k ], [ %i.cd, %bb.q ], [ %i.cd, %LZ4F_makeBlock.exit ]
  %.0123 = phi ptr [ %i.c, %bb.k ], [ %i.bi, %bb.q ], [ %i.bi, %LZ4F_makeBlock.exit ]
  store i64 %storemerge, ptr %i.m, align 8, !tbaa !61
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.i
  %.1129 = phi i32 [ %.0128, %bb.r ], [ 0, %bb.i ]
  %.2126 = phi ptr [ %.1125, %bb.r ], [ %.0124, %bb.i ] ; 2 uses
  %.1 = phi ptr [ %.0123, %bb.r ], [ %3, %bb.i ]  ; 3 uses
  %i.ci = ptrtoint ptr %i.c to i64                ; 3 uses
  %i.cj = ptrtoint ptr %.1 to i64
  %i.ck = sub i64 %i.ci, %i.cj                    ; 2 uses
  %.not144168 = icmp ult i64 %i.ck, %i.b
  br i1 %.not144168, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cn = trunc i64 %i.b to i32                   ; 3 uses
  %i.co = add i32 %i.cn, -1
  %i.cp = or i32 %i.cn, -2147483648
  %.pre179.a = and i64 %i.b, 4294967295
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph, %LZ4F_makeBlock.exit156
  %.2170 = phi ptr [ %.1, %.lr.ph ], [ %i.df, %LZ4F_makeBlock.exit156 ] ; 3 uses
  %.3127169 = phi ptr [ %.2126, %.lr.ph ], [ %i.de, %LZ4F_makeBlock.exit156 ] ; 4 uses
  %i.cq = load ptr, ptr %i.cl, align 8, !tbaa !38
  %i.cr = load i32, ptr %i.e, align 8, !tbaa !56
  %i.cs = load ptr, ptr %i.cm, align 8, !tbaa !62
  %i.ct = load i32, ptr %.sroa.gep30.i, align 4, !tbaa !64 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.3127169, i64 4 ; 4 uses
  %i.cv = tail call i32 %.0.i(ptr noundef %i.cq, ptr noundef %.2170, ptr noundef nonnull %i.cu, i32 noundef %i.cn, i32 noundef %i.co, i32 noundef %i.cr, ptr noundef %i.cs) #12, !inline_history !69 ; 3 uses
  %i.cw = icmp ne i32 %i.cv, 0
  %i.cx = zext i32 %i.cv to i64                   ; 2 uses
  %.not.i151 = icmp ugt i64 %i.b, %i.cx
  %or.cond.i152 = and i1 %i.cw, %.not.i151
  br i1 %or.cond.i152, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 %i.cp, ptr %.3127169, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cu, ptr align 1 %.2170, i64 %i.b, i1 false)
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  store i32 %i.cv, ptr %.3127169, align 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pre.i155.pre-phi = phi i64 [ %i.cx, %bb.v ], [ %.pre179.a, %bb.u ] ; 3 uses
  %.not28.i154 = icmp eq i32 %i.ct, 0
  br i1 %.not28.i154, label %LZ4F_makeBlock.exit156, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cy = tail call i32 @LZ4_XXH32(ptr noundef nonnull %i.cu, i64 noundef %.pre.i155.pre-phi, i32 noundef 0) #12
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.pre.i155.pre-phi
  store i32 %i.cy, ptr %i.cz, align 1
  br label %LZ4F_makeBlock.exit156

LZ4F_makeBlock.exit156:                           ; preds = %bb.w, %bb.x
  %i.da = zext i32 %i.ct to i64
  %i.db = shl nuw nsw i64 %i.da, 2
  %i.dc = getelementptr inbounds nuw i8, ptr %.3127169, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.pre.i155.pre-phi ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.2170, i64 %i.b ; 3 uses
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = sub i64 %i.ci, %i.dg                    ; 2 uses
  %.not144 = icmp ult i64 %i.dh, %i.b
  br i1 %.not144, label %._crit_edge, label %bb.t, !llvm.loop !70

._crit_edge:                                      ; preds = %LZ4F_makeBlock.exit156, %bb.s
  %.2130.lcssa = phi i32 [ %.1129, %bb.s ], [ 2, %LZ4F_makeBlock.exit156 ]
  %.3127.lcssa = phi ptr [ %.2126, %bb.s ], [ %i.de, %LZ4F_makeBlock.exit156 ] ; 5 uses
  %.2.lcssa = phi ptr [ %.1, %bb.s ], [ %i.df, %LZ4F_makeBlock.exit156 ] ; 4 uses
  %.lcssa = phi i64 [ %i.ck, %bb.s ], [ %i.dh, %LZ4F_makeBlock.exit156 ] ; 4 uses
  %i.di = load i32, ptr %.sroa.gep28.i, align 4, !tbaa !71
  %.not145 = icmp ne i32 %i.di, 0
  %i.dj = icmp ult ptr %.2.lcssa, %i.c
  %or.cond149 = select i1 %.not145, i1 %i.dj, i1 false
  br i1 %or.cond149, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %._crit_edge
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !38
  %i.dm = load i32, ptr %i.e, align 8, !tbaa !56
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !62
  %i.dp = load i32, ptr %.sroa.gep30.i, align 4, !tbaa !64 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.3127.lcssa, i64 4 ; 4 uses
  %i.dr = trunc i64 %.lcssa to i32                ; 3 uses
  %i.ds = add i32 %i.dr, -1
  %i.dt = tail call i32 %.0.i(ptr noundef %i.dl, ptr noundef %.2.lcssa, ptr noundef nonnull %i.dq, i32 noundef %i.dr, i32 noundef %i.ds, i32 noundef %i.dm, ptr noundef %i.do) #12, !inline_history !69 ; 3 uses
  %i.du = icmp ne i32 %i.dt, 0
  %i.dv = zext i32 %i.dt to i64                   ; 2 uses
  %.not.i157 = icmp ugt i64 %.lcssa, %i.dv
  %or.cond.i158 = and i1 %i.du, %.not.i157
  br i1 %or.cond.i158, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dw = or i32 %i.dr, -2147483648
  store i32 %i.dw, ptr %.3127.lcssa, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dq, ptr align 1 %.2.lcssa, i64 %.lcssa, i1 false)
  %.pre178 = and i64 %.lcssa, 4294967295
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  store i32 %i.dt, ptr %.3127.lcssa, align 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pre.i161.pre-phi = phi i64 [ %i.dv, %bb.aa ], [ %.pre178, %bb.z ] ; 3 uses
  %.not28.i160 = icmp eq i32 %i.dp, 0
  br i1 %.not28.i160, label %LZ4F_makeBlock.exit162, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dx = tail call i32 @LZ4_XXH32(ptr noundef nonnull %i.dq, i64 noundef %.pre.i161.pre-phi, i32 noundef 0) #12
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.pre.i161.pre-phi
  store i32 %i.dx, ptr %i.dy, align 1
  br label %LZ4F_makeBlock.exit162

LZ4F_makeBlock.exit162:                           ; preds = %bb.ab, %bb.ac
  %i.dz = zext i32 %i.dp to i64
  %i.ea = shl nuw nsw i64 %i.dz, 2
  %i.eb = getelementptr inbounds nuw i8, ptr %.3127.lcssa, i64 %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %.pre.i161.pre-phi
  br label %bb.ad

bb.ad:                                            ; preds = %LZ4F_makeBlock.exit162, %._crit_edge
  %.3131 = phi i32 [ 2, %LZ4F_makeBlock.exit162 ], [ %.2130.lcssa, %._crit_edge ]
  %.4 = phi ptr [ %i.ed, %LZ4F_makeBlock.exit162 ], [ %.3127.lcssa, %._crit_edge ]
  %.3 = phi ptr [ %i.c, %LZ4F_makeBlock.exit162 ], [ %.2.lcssa, %._crit_edge ] ; 3 uses
  %i.ee = load i32, ptr %i.d, align 4, !tbaa !59
  %i.ef = icmp eq i32 %i.ee, 0
  %i.eg = icmp eq i32 %.3131, 2
  %or.cond = and i1 %i.eg, %i.ef
  br i1 %or.cond, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  %i.eh = load i32, ptr %spec.store.select, align 4, !tbaa !24
  %.not146 = icmp eq i32 %i.eh, 0
  br i1 %.not146, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !55
  br label %.sink.split

bb.ag:                                            ; preds = %bb.ae
  %i.ek = load i32, ptr %i.e, align 8, !tbaa !56
  %i.el = icmp slt i32 %i.ek, 2
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !38 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !55 ; 2 uses
  br i1 %i.el, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.eq = tail call i32 @LZ4_saveDict(ptr noundef %i.en, ptr noundef %i.ep, i32 noundef 65536) #12
  br label %LZ4F_localSaveDict.exit

bb.ai:                                            ; preds = %bb.ag
  %i.er = tail call i32 @LZ4_saveDictHC(ptr noundef %i.en, ptr noundef %i.ep, i32 noundef 65536) #12
  br label %LZ4F_localSaveDict.exit

LZ4F_localSaveDict.exit:                          ; preds = %bb.ah, %bb.ai
  %.0.i163 = phi i32 [ %i.eq, %bb.ah ], [ %i.er, %bb.ai ]
  %i.es = load ptr, ptr %i.eo, align 8, !tbaa !55
  %i.et = sext i32 %.0.i163 to i64
  %i.eu = getelementptr inbounds i8, ptr %i.es, i64 %i.et
  br label %.sink.split

.sink.split:                                      ; preds = %LZ4F_localSaveDict.exit, %bb.af
  %.sink = phi ptr [ %i.ej, %bb.af ], [ %i.eu, %LZ4F_localSaveDict.exit ]
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %.sink, ptr %i.ev, align 8, !tbaa !60
  br label %bb.aj

bb.aj:                                            ; preds = %.sink.split, %bb.ad
  %i.ew = load i32, ptr %.sroa.gep28.i, align 4, !tbaa !71
  %.not147 = icmp eq i32 %i.ew, 0
  br i1 %.not147, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !60
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.b
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !55 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !36
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fd
  %i.ff = icmp ugt ptr %i.ez, %i.fe
  br i1 %i.ff, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.fg = load i32, ptr %i.e, align 8, !tbaa !56
  %i.fh = icmp slt i32 %i.fg, 2
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !38 ; 2 uses
  br i1 %i.fh, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.fk = tail call i32 @LZ4_saveDict(ptr noundef %i.fj, ptr noundef %i.fb, i32 noundef 65536) #12
  br label %LZ4F_localSaveDict.exit165

bb.an:                                            ; preds = %bb.al
  %i.fl = tail call i32 @LZ4_saveDictHC(ptr noundef %i.fj, ptr noundef %i.fb, i32 noundef 65536) #12
  br label %LZ4F_localSaveDict.exit165

LZ4F_localSaveDict.exit165:                       ; preds = %bb.am, %bb.an
  %.0.i164 = phi i32 [ %i.fk, %bb.am ], [ %i.fl, %bb.an ]
  %i.fm = load ptr, ptr %i.fa, align 8, !tbaa !55
  %i.fn = sext i32 %.0.i164 to i64
  %i.fo = getelementptr inbounds i8, ptr %i.fm, i64 %i.fn
  store ptr %i.fo, ptr %i.ex, align 8, !tbaa !60
  br label %bb.ao

bb.ao:                                            ; preds = %LZ4F_localSaveDict.exit165, %bb.ak, %bb.aj
  %i.fp = icmp ult ptr %.3, %i.c
  br i1 %i.fp, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.fq = ptrtoint ptr %.3 to i64
  %i.fr = sub i64 %i.ci, %i.fq                    ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !60
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ft, ptr align 1 %.3, i64 %i.fr, i1 false)
  store i64 %i.fr, ptr %i.m, align 8, !tbaa !61
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.fu = load i32, ptr %.sroa.gep33.i, align 8, !tbaa !26
  %i.fv = icmp eq i32 %i.fu, 1
  br i1 %i.fv, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.fx = tail call i32 @LZ4_XXH32_update(ptr noundef nonnull %i.fw, ptr noundef %3, i64 noundef %4) #12 ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !34
  %i.ga = add i64 %i.fz, %4
  store i64 %i.ga, ptr %i.fy, align 8, !tbaa !34
  %i.gb = ptrtoint ptr %.4 to i64
  %i.gc = ptrtoint ptr %1 to i64
  %i.gd = sub i64 %i.gb, %i.gc
  br label %bb.at

bb.at:                                            ; preds = %7, %LZ4F_compressBound_internal.exit, %LZ4F_selectCompression.exit, %bb.as
  %.0 = phi i64 [ %i.gd, %bb.as ], [ -20, %LZ4F_selectCompression.exit ], [ -11, %LZ4F_compressBound_internal.exit ], [ -11, %7 ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @LZ4F_uncompressedUpdate(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call fastcc i64 @LZ4F_compressUpdateImpl(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i32 noundef 1)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define range(i64 -20, 21474836480) i64 @LZ4F_flush(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2, ptr nofree readnone captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !61   ; 6 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.e = load i32, ptr %i.d, align 4, !tbaa !32
  %.not = icmp eq i32 %i.e, 1
  br i1 %.not, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %i.b, 8
  %i.g = icmp ult i64 %2, %i.f
  br i1 %i.g, label %bb.q, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !56   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.l = load i32, ptr %i.k, align 4, !tbaa !68
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %LZ4F_selectCompression.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load i32, ptr %i.h, align 4, !tbaa !59
  %i.o = icmp slt i32 %i.j, 2
  %i.p = icmp eq i32 %i.n, 1                      ; 2 uses
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %LZ4F_compressBlock.LZ4F_compressBlock_continue.i = select i1 %i.p, ptr @LZ4F_compressBlock, ptr @LZ4F_compressBlock_continue
  br label %LZ4F_selectCompression.exit

bb.g:                                             ; preds = %bb.e
  %LZ4F_compressBlockHC.LZ4F_compressBlockHC_continue.i = select i1 %i.p, ptr @LZ4F_compressBlockHC, ptr @LZ4F_compressBlockHC_continue
  br label %LZ4F_selectCompression.exit

LZ4F_selectCompression.exit:                      ; preds = %bb.d, %bb.f, %bb.g
  %.0.i = phi ptr [ %LZ4F_compressBlockHC.LZ4F_compressBlockHC_continue.i, %bb.g ], [ %LZ4F_compressBlock.LZ4F_compressBlock_continue.i, %bb.f ], [ @LZ4F_doNotCompressBlock, %bb.d ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !60   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !38
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !62
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.x = load i32, ptr %i.w, align 4, !tbaa !64   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.z = trunc i64 %i.b to i32                    ; 3 uses
  %i.aa = add i32 %i.z, -1
  %i.ab = tail call i32 %.0.i(ptr noundef %i.t, ptr noundef %i.r, ptr noundef nonnull %i.y, i32 noundef %i.z, i32 noundef %i.aa, i32 noundef %i.j, ptr noundef %i.v) #12, !inline_history !69 ; 3 uses
  %i.ac = icmp ne i32 %i.ab, 0
  %i.ad = zext i32 %i.ab to i64                   ; 2 uses
  %.not.i = icmp ugt i64 %i.b, %i.ad
  %or.cond.i = and i1 %i.ac, %.not.i
  br i1 %or.cond.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %LZ4F_selectCompression.exit
  %i.ae = or i32 %i.z, -2147483648
  store i32 %i.ae, ptr %1, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %i.r, i64 %i.b, i1 false)
  %.pre35 = and i64 %i.b, 4294967295
  br label %bb.j

bb.i:                                             ; preds = %LZ4F_selectCompression.exit
  store i32 %i.ab, ptr %1, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pre.i.pre-phi = phi i64 [ %i.ad, %bb.i ], [ %.pre35, %bb.h ] ; 3 uses
  %.not28.i = icmp eq i32 %i.x, 0
  br i1 %.not28.i, label %LZ4F_makeBlock.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = tail call i32 @LZ4_XXH32(ptr noundef nonnull %i.y, i64 noundef %.pre.i.pre-phi, i32 noundef 0) #12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 %.pre.i.pre-phi
  store i32 %i.af, ptr %i.ag, align 1
  br label %LZ4F_makeBlock.exit

LZ4F_makeBlock.exit:                              ; preds = %bb.j, %bb.k
  %i.ah = zext i32 %i.x to i64
  %i.ai = shl nuw nsw i64 %i.ah, 2
  %i.aj = add nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.aj, %.pre.i.pre-phi  ; 2 uses
  %i.al = load i32, ptr %i.h, align 4, !tbaa !59
  %i.am = icmp eq i32 %i.al, 0
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !60  ; 2 uses
  br i1 %i.am, label %bb.l, label %bb.m

bb.l:                                             ; preds = %LZ4F_makeBlock.exit
  %i.an = load i64, ptr %i.a, align 8, !tbaa !61
  %i.ao = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.an ; 2 uses
  store ptr %i.ao, ptr %i.q, align 8, !tbaa !60
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %LZ4F_makeBlock.exit
  %i.ap = phi ptr [ %i.ao, %bb.l ], [ %.pre, %LZ4F_makeBlock.exit ]
  store i64 0, ptr %i.a, align 8, !tbaa !61
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !58
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !55 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !36
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aw
  %i.ay = icmp ugt ptr %i.as, %i.ax
  br i1 %i.ay, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.az = load i32, ptr %i.i, align 8, !tbaa !56
  %i.ba = icmp slt i32 %i.az, 2
  %i.bb = load ptr, ptr %i.s, align 8, !tbaa !38  ; 2 uses
  br i1 %i.ba, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bc = tail call i32 @LZ4_saveDict(ptr noundef %i.bb, ptr noundef %i.au, i32 noundef 65536) #12
  br label %LZ4F_localSaveDict.exit

bb.p:                                             ; preds = %bb.n
  %i.bd = tail call i32 @LZ4_saveDictHC(ptr noundef %i.bb, ptr noundef %i.au, i32 noundef 65536) #12
  br label %LZ4F_localSaveDict.exit

LZ4F_localSaveDict.exit:                          ; preds = %bb.o, %bb.p
  %.0.i34 = phi i32 [ %i.bc, %bb.o ], [ %i.bd, %bb.p ]
  %i.be = load ptr, ptr %i.at, align 8, !tbaa !55
  %i.bf = sext i32 %.0.i34 to i64
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 %i.bf
  store ptr %i.bg, ptr %i.q, align 8, !tbaa !60
  br label %bb.q

bb.q:                                             ; preds = %bb.c, %bb.b, %bb.m, %LZ4F_localSaveDict.exit, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.ak, %bb.m ], [ -20, %bb.b ], [ %i.ak, %LZ4F_localSaveDict.exit ], [ -11, %bb.c ]
  ret i64 %.0
}

declare i32 @LZ4_XXH32_digest(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define noundef ptr @LZ4F_createDecompressionContext_advanced(ptr nofree noundef readonly byval(%struct.LZ4F_CustomMem) align 8 captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.56.0.copyload = load ptr, ptr %.sroa.56.0..sroa_idx, align 8 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.4.0.copyload, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr %.sroa.4.0.copyload(ptr noundef %.sroa.56.0.copyload, i64 noundef 288) #12, !inline_history !52
  br label %LZ4F_calloc.exit

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = tail call noalias dereferenceable_or_null(288) ptr @calloc(i64 noundef 1, i64 noundef 288) #14
  br label %LZ4F_calloc.exit

bb.e:                                             ; preds = %bb.c
  %i.d = tail call ptr %.sroa.0.0.copyload(ptr noundef %.sroa.56.0.copyload, i64 noundef 288) #12, !inline_history !52 ; 3 uses
  %.not10.i = icmp eq ptr %i.d, null
  br i1 %.not10.i, label %LZ4F_calloc.exit.thread, label %LZ4F_calloc.exit.thread9

LZ4F_calloc.exit.thread9:                         ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(288) %i.d, i8 0, i64 288, i1 false)
  br label %bb.f

LZ4F_calloc.exit:                                 ; preds = %bb.b, %bb.d
  %.0.i = phi ptr [ %i.a, %bb.b ], [ %i.c, %bb.d ] ; 2 uses
  %i.e = icmp eq ptr %.0.i, null
  br i1 %i.e, label %LZ4F_calloc.exit.thread, label %bb.f

bb.f:                                             ; preds = %LZ4F_calloc.exit.thread9, %LZ4F_calloc.exit
  %.0.i11 = phi ptr [ %i.d, %LZ4F_calloc.exit.thread9 ], [ %.0.i, %LZ4F_calloc.exit ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0.i11, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !44
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i11, i64 64
  store i32 %1, ptr %i.f, align 8, !tbaa !72
  br label %LZ4F_calloc.exit.thread

LZ4F_calloc.exit.thread:                          ; preds = %bb.e, %LZ4F_calloc.exit, %bb.f
  %.0 = phi ptr [ %.0.i11, %bb.f ], [ null, %LZ4F_calloc.exit ], [ null, %bb.e ]
  ret ptr %.0
end_hunk_0
