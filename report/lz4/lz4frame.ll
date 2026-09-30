Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lz4/original/lz4frame?download=true
inline.NumInlined: 138
inline.NumDeleted: 18
begin_hunk_0_@LZ4F_compressBegin_internal:bb.a
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !88
  %i.do = icmp ne i32 %i.dn, 0
  %i.dp = zext i1 %i.do to i32
  %i.dq = or disjoint i32 %i.dl, %i.dp
  %i.dr = trunc nuw nsw i32 %i.dq to i8
  %i.ds = or i8 %i.dr, 64
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.ds, ptr %i.cu, align 1, !tbaa !22
  %i.du = load i32, ptr %i.c, align 8, !tbaa !86
  %.tr = trunc i32 %i.du to i8
  %i.dv = shl i8 %.tr, 4
  %i.dw = and i8 %i.dv, 112
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  store i8 %i.dw, ptr %i.dt, align 1, !tbaa !22
  %i.dy = load i64, ptr %i.dd, align 8, !tbaa !35 ; 2 uses
  %.not124 = icmp eq i64 %i.dy, 0
  br i1 %.not124, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  store i64 %i.dy, ptr %i.dx, align 1
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 0, ptr %i.ea, align 8, !tbaa !36
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.0108 = phi ptr [ %i.dz, %bb.aw ], [ %i.dx, %bb.av ] ; 3 uses
  %i.eb = load i32, ptr %i.dm, align 8, !tbaa !88 ; 2 uses
  %.not125 = icmp eq i32 %i.eb, 0
  br i1 %.not125, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store i32 %i.eb, ptr %.0108, align 1
  %i.ec = getelementptr inbounds nuw i8, ptr %.0108, i64 4
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.1109 = phi ptr [ %i.ec, %bb.ay ], [ %.0108, %bb.ax ] ; 3 uses
  %i.ed = ptrtoint ptr %.1109 to i64
  %i.ee = ptrtoint ptr %i.cu to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = tail call i32 @LZ4_XXH32(ptr noundef nonnull %i.cu, i64 noundef %i.ef, i32 noundef 0) #12
  %i.eh = lshr i32 %i.eg, 8
  %i.ei = trunc i32 %i.eh to i8
  store i8 %i.ei, ptr %.1109, align 1, !tbaa !22
  %i.ej = getelementptr inbounds nuw i8, ptr %.1109, i64 1
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %i.ek, align 4, !tbaa !34
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = ptrtoint ptr %1 to i64
  %i.en = sub i64 %i.el, %i.em
  br label %.thread

.thread:                                          ; preds = %LZ4F_malloc.exit141, %LZ4F_malloc.exit, %bb.ar, %LZ4F_malloc.exit147, %bb.s, %bb.a, %bb.az
  %.2 = phi i64 [ -11, %bb.a ], [ -9, %LZ4F_malloc.exit147 ], [ %i.en, %bb.az ], [ -4, %bb.ar ], [ -9, %bb.s ], [ -9, %LZ4F_malloc.exit ], [ -9, %LZ4F_malloc.exit141 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  ret i64 %.2
}

; Function Attrs: nounwind uwtable
define i64 @LZ4F_compressBegin_usingDict(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call fastcc i64 @LZ4F_compressBegin_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef null, ptr noundef readonly %5)
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @LZ4F_compressBound(i64 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.split, label %bb.b

.split:                                           ; preds = %bb.a
  %.not28 = icmp eq i64 %0, 0                     ; 2 uses
  %i.a = add i64 %0, 65535                        ; 2 uses
  %i.b = lshr i64 %i.a, 16
  %i.c = zext i1 %.not28 to i64
  %i.d = add nuw nsw i64 %i.b, %i.c
  %i.e = shl nuw nsw i64 %i.d, 3
  %i.f = and i64 %i.e, 34359738360
  %i.g = and i64 %i.a, 281474976645120
  %i.h = select i1 %.not28, i64 65543, i64 8
  %i.i = add nuw nsw i64 %i.h, %i.g
  %i.j = add nuw nsw i64 %i.i, %i.f
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.l = load i32, ptr %i.k, align 4, !tbaa !20
  %.not8 = icmp eq i32 %i.l, 0
  br i1 %.not8, label %.cont.cont.i, label %.cont.cont.i9

.cont.cont.i:                                     ; preds = %bb.b
  %.not27 = icmp eq i64 %0, 0
  %.else.val40.i = load i32, ptr %1, align 8, !tbaa !24
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
  %i.r = load i64, ptr %i.q, align 8, !tbaa !15
  br label %LZ4F_compressBound_internal.exit

LZ4F_compressBound_internal.exit:                 ; preds = %bb.c, %LZ4F_getBlockSize.exit.thread47.i
  %.0.i45.i = phi i64 [ %i.r, %LZ4F_getBlockSize.exit.thread47.i ], [ -2, %bb.c ] ; 3 uses
  %.sroa.gep30.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.else.val38.i = load i32, ptr %.sroa.gep30.i, align 4, !tbaa !60
  %i.s = zext i32 %.else.val38.i to i64
  %i.t = shl nuw nsw i64 %i.s, 2
  %.sroa.gep33.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.else.val39.i = load i32, ptr %.sroa.gep33.i, align 8, !tbaa !61
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
  %.else.val40.i12 = load i32, ptr %1, align 8, !tbaa !24
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
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !15
  br label %LZ4F_compressBound_internal.exit26

LZ4F_compressBound_internal.exit26:               ; preds = %bb.d, %LZ4F_getBlockSize.exit.thread47.i23
  %.0.i45.i16 = phi i64 [ %i.ar, %LZ4F_getBlockSize.exit.thread47.i23 ], [ -2, %bb.d ] ; 3 uses
  %.sroa.gep30.i17 = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.else.val38.i18 = load i32, ptr %.sroa.gep30.i17, align 4, !tbaa !60
  %i.as = zext i32 %.else.val38.i18 to i64
  %i.at = shl nuw nsw i64 %i.as, 2
  %.sroa.gep33.i19 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.else.val39.i20 = load i32, ptr %.sroa.gep33.i19, align 8, !tbaa !61
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
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54   ; 16 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %.not160 = icmp ne i32 %6, 0                    ; 2 uses
  br i1 %.not160, label %LZ4F_selectCompression.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.e, align 8, !tbaa !53
  %i.g = load i32, ptr %i.d, align 4, !tbaa !55
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
  %i.k = load i32, ptr %i.j, align 4, !tbaa !34
  %.not = icmp eq i32 %i.k, 1
  br i1 %.not, label %bb.e, label %bb.at

bb.e:                                             ; preds = %LZ4F_selectCompression.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !57   ; 2 uses
  %.sroa.gep28.i = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  %.else.val.i = load i32, ptr %.sroa.gep28.i, align 4, !tbaa !20
  %i.o = icmp eq i64 %4, 0
  %i.p = zext i1 %i.o to i32
  %i.q = or i32 %.else.val.i, %i.p
  %.else.val40.i = load i32, ptr %i.l, align 8, !tbaa !24
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
  %i.w = load i64, ptr %i.v, align 8, !tbaa !15
  br label %LZ4F_compressBound_internal.exit

LZ4F_compressBound_internal.exit:                 ; preds = %bb.f, %LZ4F_getBlockSize.exit.thread47.i
  %.0.i45.i = phi i64 [ %i.w, %LZ4F_getBlockSize.exit.thread47.i ], [ -2, %bb.f ] ; 3 uses
  %.sroa.gep30.i = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 4 uses
  %.else.val38.i = load i32, ptr %.sroa.gep30.i, align 4, !tbaa !60
  %i.x = zext i32 %.else.val38.i to i64
  %i.y = shl nuw nsw i64 %i.x, 2
  %.sroa.gep33.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.else.val39.i = load i32, ptr %.sroa.gep33.i, align 8, !tbaa !61
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
  %7 = icmp ult i64 %2, %i.at
  %i.au = icmp ult i64 %2, %4
  %or.cond144 = and i1 %i.au, %.not160
  %or.cond193 = or i1 %7, %or.cond144
  br i1 %or.cond193, label %bb.at, label %bb.g

bb.g:                                             ; preds = %LZ4F_compressBound_internal.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !62
  %.not138 = icmp eq i32 %i.aw, %6
  br i1 %.not138, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = tail call i64 @LZ4F_flush(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr poison)
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %i.ax
  store i32 %6, ptr %i.av, align 4, !tbaa !62
  %.pre = load i64, ptr %i.m, align 8, !tbaa !57
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.az = phi i64 [ %.pre, %bb.h ], [ %i.n, %bb.g ] ; 3 uses
  %.0120 = phi ptr [ %i.ay, %bb.h ], [ %1, %bb.g ] ; 6 uses
  %i.ba = icmp eq ptr %5, null
  %spec.store.select = select i1 %i.ba, ptr @k_cOptionsNull, ptr %5
  %.not139 = icmp eq i64 %i.az, 0
  br i1 %.not139, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = sub i64 %i.b, %i.az                     ; 3 uses
  %i.bc = icmp ugt i64 %i.bb, %4
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !56
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.az ; 2 uses
  br i1 %i.bc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bf, ptr align 1 %3, i64 %4, i1 false)
  %i.bg = load i64, ptr %i.m, align 8, !tbaa !57
  %i.bh = add i64 %i.bg, %4
  br label %bb.r

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bf, ptr align 1 %3, i64 %i.bb, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 %i.bb ; 2 uses
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !56 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !40
  %i.bm = load i32, ptr %i.e, align 8, !tbaa !53
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !58
  %i.bp = load i32, ptr %.sroa.gep30.i, align 4, !tbaa !59 ; 2 uses
  %i.bq = icmp ugt i64 %i.b, 1
  %i.br = trunc i64 %i.b to i32                   ; 3 uses
  %i.bs = add nsw i32 %i.br, -1
  %i.bt = select i1 %i.bq, i32 %i.bs, i32 1
  %i.bu = getelementptr inbounds nuw i8, ptr %.0120, i64 4 ; 4 uses
  %i.bv = tail call i32 %.0.i(ptr noundef %i.bl, ptr noundef %i.bj, ptr noundef nonnull %i.bu, i32 noundef %i.br, i32 noundef %i.bt, i32 noundef %i.bm, ptr noundef %i.bo) #12, !inline_history !3 ; 3 uses
  %i.bw = icmp ne i32 %i.bv, 0
  %i.bx = zext i32 %i.bv to i64                   ; 2 uses
  %.not.i = icmp ugt i64 %i.b, %i.bx
  %or.cond.i = and i1 %i.bw, %.not.i
  br i1 %or.cond.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.by = or i32 %i.br, -2147483648
  store i32 %i.by, ptr %.0120, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bu, ptr align 1 %i.bj, i64 %i.b, i1 false)
  %.pre174 = and i64 %i.b, 4294967295
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  store i32 %i.bv, ptr %.0120, align 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pre.i.pre-phi = phi i64 [ %i.bx, %bb.n ], [ %.pre174, %bb.m ] ; 3 uses
  %.not30.i = icmp eq i32 %i.bp, 0
  br i1 %.not30.i, label %LZ4F_makeBlock.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = tail call i32 @LZ4_XXH32(ptr noundef nonnull %i.bu, i64 noundef %.pre.i.pre-phi, i32 noundef 0) #12
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.pre.i.pre-phi
  store i32 %i.bz, ptr %i.ca, align 1
  br label %LZ4F_makeBlock.exit

LZ4F_makeBlock.exit:                              ; preds = %bb.o, %bb.p
  %i.cb = zext i32 %i.bp to i64
  %i.cc = shl nuw nsw i64 %i.cb, 2
  %i.cd = getelementptr inbounds nuw i8, ptr %.0120, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.pre.i.pre-phi ; 2 uses
  %i.cg = load i32, ptr %i.d, align 4, !tbaa !55
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.q, label %bb.r

bb.q:                                             ; preds = %LZ4F_makeBlock.exit
  %i.ci = load ptr, ptr %i.bd, align 8, !tbaa !56
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.b
  store ptr %i.cj, ptr %i.bd, align 8, !tbaa !56
  br label %bb.r

bb.r:                                             ; preds = %LZ4F_makeBlock.exit, %bb.q, %bb.k
  %storemerge = phi i64 [ %i.bh, %bb.k ], [ 0, %bb.q ], [ 0, %LZ4F_makeBlock.exit ]
  %.0124 = phi ptr [ %i.c, %bb.k ], [ %i.bi, %bb.q ], [ %i.bi, %LZ4F_makeBlock.exit ]
  %.1121 = phi ptr [ %.0120, %bb.k ], [ %i.cf, %bb.q ], [ %i.cf, %LZ4F_makeBlock.exit ]
  %.0119 = phi i32 [ 0, %bb.k ], [ 1, %bb.q ], [ 1, %LZ4F_makeBlock.exit ]
  store i64 %storemerge, ptr %i.m, align 8, !tbaa !57
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.i
  %.1125 = phi ptr [ %.0124, %bb.r ], [ %3, %bb.i ] ; 3 uses
  %.2122 = phi ptr [ %.1121, %bb.r ], [ %.0120, %bb.i ] ; 2 uses
  %.1 = phi i32 [ %.0119, %bb.r ], [ 0, %bb.i ]
  %i.ck = ptrtoint ptr %i.c to i64                ; 3 uses
  %i.cl = ptrtoint ptr %.1125 to i64
  %i.cm = sub i64 %i.ck, %i.cl                    ; 2 uses
  %.not140162 = icmp ult i64 %i.cm, %i.b
  br i1 %.not140162, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cp = icmp ugt i64 %i.b, 1
  %i.cq = trunc i64 %i.b to i32                   ; 3 uses
  %i.cr = add nsw i32 %i.cq, -1
  %i.cs = select i1 %i.cp, i32 %i.cr, i32 1
  %i.ct = or i32 %i.cq, -2147483648
  %.pre173 = and i64 %i.b, 4294967295
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph, %LZ4F_makeBlock.exit152
  %.3123164 = phi ptr [ %.2122, %.lr.ph ], [ %i.di, %LZ4F_makeBlock.exit152 ] ; 4 uses
  %.2126163 = phi ptr [ %.1125, %.lr.ph ], [ %i.dj, %LZ4F_makeBlock.exit152 ] ; 3 uses
  %i.cu = load ptr, ptr %i.cn, align 8, !tbaa !40
  %i.cv = load i32, ptr %i.e, align 8, !tbaa !53
  %i.cw = load ptr, ptr %i.co, align 8, !tbaa !58
  %i.cx = load i32, ptr %.sroa.gep30.i, align 4, !tbaa !59 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.3123164, i64 4 ; 4 uses
  %i.cz = tail call i32 %.0.i(ptr noundef %i.cu, ptr noundef %.2126163, ptr noundef nonnull %i.cy, i32 noundef %i.cq, i32 noundef %i.cs, i32 noundef %i.cv, ptr noundef %i.cw) #12, !inline_history !3 ; 3 uses
  %i.da = icmp ne i32 %i.cz, 0
  %i.db = zext i32 %i.cz to i64                   ; 2 uses
  %.not.i147 = icmp ugt i64 %i.b, %i.db
  %or.cond.i148 = and i1 %i.da, %.not.i147
  br i1 %or.cond.i148, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 %i.ct, ptr %.3123164, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cy, ptr align 1 %.2126163, i64 %i.b, i1 false)
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  store i32 %i.cz, ptr %.3123164, align 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pre.i151.pre-phi = phi i64 [ %i.db, %bb.v ], [ %.pre173, %bb.u ] ; 3 uses
  %.not30.i150 = icmp eq i32 %i.cx, 0
  br i1 %.not30.i150, label %LZ4F_makeBlock.exit152, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dc = tail call i32 @LZ4_XXH32(ptr noundef nonnull %i.cy, i64 noundef %.pre.i151.pre-phi, i32 noundef 0) #12
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.pre.i151.pre-phi
  store i32 %i.dc, ptr %i.dd, align 1
  br label %LZ4F_makeBlock.exit152

LZ4F_makeBlock.exit152:                           ; preds = %bb.w, %bb.x
  %i.de = zext i32 %i.cx to i64
  %i.df = shl nuw nsw i64 %i.de, 2
  %i.dg = getelementptr inbounds nuw i8, ptr %.3123164, i64 %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.pre.i151.pre-phi ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.2126163, i64 %i.b ; 3 uses
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = sub i64 %i.ck, %i.dk                    ; 2 uses
  %.not140 = icmp ult i64 %i.dl, %i.b
  br i1 %.not140, label %._crit_edge, label %bb.t, !llvm.loop !89

._crit_edge:                                      ; preds = %LZ4F_makeBlock.exit152, %bb.s
  %.2126.lcssa = phi ptr [ %.1125, %bb.s ], [ %i.dj, %LZ4F_makeBlock.exit152 ] ; 4 uses
  %.3123.lcssa = phi ptr [ %.2122, %bb.s ], [ %i.di, %LZ4F_makeBlock.exit152 ] ; 5 uses
  %.2.lcssa = phi i32 [ %.1, %bb.s ], [ 2, %LZ4F_makeBlock.exit152 ]
  %.lcssa = phi i64 [ %i.cm, %bb.s ], [ %i.dl, %LZ4F_makeBlock.exit152 ] ; 5 uses
  %i.dm = load i32, ptr %.sroa.gep28.i, align 4, !tbaa !90
  %.not141 = icmp ne i32 %i.dm, 0
  %i.dn = icmp ult ptr %.2126.lcssa, %i.c
  %or.cond145 = select i1 %.not141, i1 %i.dn, i1 false
  br i1 %or.cond145, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %._crit_edge
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !40
  %i.dq = load i32, ptr %i.e, align 8, !tbaa !53
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !58
  %i.dt = load i32, ptr %.sroa.gep30.i, align 4, !tbaa !59 ; 2 uses
  %i.du = icmp ugt i64 %.lcssa, 1
  %i.dv = trunc i64 %.lcssa to i32                ; 3 uses
  %i.dw = add nsw i32 %i.dv, -1
  %i.dx = select i1 %i.du, i32 %i.dw, i32 1
  %i.dy = getelementptr inbounds nuw i8, ptr %.3123.lcssa, i64 4 ; 4 uses
  %i.dz = tail call i32 %.0.i(ptr noundef %i.dp, ptr noundef %.2126.lcssa, ptr noundef nonnull %i.dy, i32 noundef %i.dv, i32 noundef %i.dx, i32 noundef %i.dq, ptr noundef %i.ds) #12, !inline_history !3 ; 3 uses
  %i.ea = icmp ne i32 %i.dz, 0
  %i.eb = zext i32 %i.dz to i64                   ; 2 uses
  %.not.i153 = icmp ugt i64 %.lcssa, %i.eb
  %or.cond.i154 = and i1 %i.ea, %.not.i153
  br i1 %or.cond.i154, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ec = or i32 %i.dv, -2147483648
  store i32 %i.ec, ptr %.3123.lcssa, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dy, ptr align 1 %.2126.lcssa, i64 %.lcssa, i1 false)
  %.pre172 = and i64 %.lcssa, 4294967295
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  store i32 %i.dz, ptr %.3123.lcssa, align 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pre.i157.pre-phi = phi i64 [ %i.eb, %bb.aa ], [ %.pre172, %bb.z ] ; 3 uses
  %.not30.i156 = icmp eq i32 %i.dt, 0
  br i1 %.not30.i156, label %LZ4F_makeBlock.exit158, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ed = tail call i32 @LZ4_XXH32(ptr noundef nonnull %i.dy, i64 noundef %.pre.i157.pre-phi, i32 noundef 0) #12
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dy, i64 %.pre.i157.pre-phi
  store i32 %i.ed, ptr %i.ee, align 1
  br label %LZ4F_makeBlock.exit158

LZ4F_makeBlock.exit158:                           ; preds = %bb.ab, %bb.ac
  %i.ef = zext i32 %i.dt to i64
  %i.eg = shl nuw nsw i64 %i.ef, 2
  %i.eh = getelementptr inbounds nuw i8, ptr %.3123.lcssa, i64 %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.pre.i157.pre-phi
  br label %bb.ad

bb.ad:                                            ; preds = %LZ4F_makeBlock.exit158, %._crit_edge
  %.3127 = phi ptr [ %i.c, %LZ4F_makeBlock.exit158 ], [ %.2126.lcssa, %._crit_edge ] ; 3 uses
  %.4 = phi ptr [ %i.ej, %LZ4F_makeBlock.exit158 ], [ %.3123.lcssa, %._crit_edge ]
  %.3 = phi i32 [ 2, %LZ4F_makeBlock.exit158 ], [ %.2.lcssa, %._crit_edge ]
  %i.ek = load i32, ptr %i.d, align 4, !tbaa !55
  %i.el = icmp eq i32 %i.ek, 0
  %i.em = icmp eq i32 %.3, 2
  %or.cond = and i1 %i.em, %i.el
  br i1 %or.cond, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  %i.en = load i32, ptr %spec.store.select, align 4, !tbaa !27
  %.not142 = icmp eq i32 %i.en, 0
  br i1 %.not142, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !52
  br label %.sink.split

bb.ag:                                            ; preds = %bb.ae
  %i.eq = load i32, ptr %i.e, align 8, !tbaa !53
  %i.er = icmp slt i32 %i.eq, 2
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !40 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !52 ; 2 uses
  br i1 %i.er, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ew = tail call i32 @LZ4_saveDict(ptr noundef %i.et, ptr noundef %i.ev, i32 noundef 65536) #12
  br label %LZ4F_localSaveDict.exit

bb.ai:                                            ; preds = %bb.ag
  %i.ex = tail call i32 @LZ4_saveDictHC(ptr noundef %i.et, ptr noundef %i.ev, i32 noundef 65536) #12
  br label %LZ4F_localSaveDict.exit

LZ4F_localSaveDict.exit:                          ; preds = %bb.ah, %bb.ai
  %i.ey = phi i32 [ %i.ew, %bb.ah ], [ %i.ex, %bb.ai ]
  %i.ez = load ptr, ptr %i.eu, align 8, !tbaa !52
  %i.fa = sext i32 %i.ey to i64
  %i.fb = getelementptr inbounds i8, ptr %i.ez, i64 %i.fa
  br label %.sink.split

.sink.split:                                      ; preds = %LZ4F_localSaveDict.exit, %bb.af
  %.sink = phi ptr [ %i.ep, %bb.af ], [ %i.fb, %LZ4F_localSaveDict.exit ]
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %.sink, ptr %i.fc, align 8, !tbaa !56
  br label %bb.aj

bb.aj:                                            ; preds = %.sink.split, %bb.ad
  %i.fd = load i32, ptr %.sroa.gep28.i, align 4, !tbaa !90
  %.not143 = icmp eq i32 %i.fd, 0
  br i1 %.not143, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !56
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.b
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !52 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !38
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fk
  %i.fm = icmp ugt ptr %i.fg, %i.fl
  br i1 %i.fm, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.fn = load i32, ptr %i.e, align 8, !tbaa !53
  %i.fo = icmp slt i32 %i.fn, 2
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !40 ; 2 uses
  br i1 %i.fo, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.fr = tail call i32 @LZ4_saveDict(ptr noundef %i.fq, ptr noundef %i.fi, i32 noundef 65536) #12
  br label %LZ4F_localSaveDict.exit159

bb.an:                                            ; preds = %bb.al
  %i.fs = tail call i32 @LZ4_saveDictHC(ptr noundef %i.fq, ptr noundef %i.fi, i32 noundef 65536) #12
  br label %LZ4F_localSaveDict.exit159

LZ4F_localSaveDict.exit159:                       ; preds = %bb.am, %bb.an
  %i.ft = phi i32 [ %i.fr, %bb.am ], [ %i.fs, %bb.an ]
  %i.fu = load ptr, ptr %i.fh, align 8, !tbaa !52
  %i.fv = sext i32 %i.ft to i64
  %i.fw = getelementptr inbounds i8, ptr %i.fu, i64 %i.fv
  store ptr %i.fw, ptr %i.fe, align 8, !tbaa !56
  br label %bb.ao

bb.ao:                                            ; preds = %LZ4F_localSaveDict.exit159, %bb.ak, %bb.aj
  %i.fx = icmp ult ptr %.3127, %i.c
  br i1 %i.fx, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.fy = ptrtoint ptr %.3127 to i64
  %i.fz = sub i64 %i.ck, %i.fy                    ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gb, ptr align 1 %.3127, i64 %i.fz, i1 false)
  store i64 %i.fz, ptr %i.m, align 8, !tbaa !57
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.gc = load i32, ptr %.sroa.gep33.i, align 8, !tbaa !33
  %i.gd = icmp eq i32 %i.gc, 1
  br i1 %i.gd, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.gf = tail call i32 @LZ4_XXH32_update(ptr noundef nonnull %i.ge, ptr noundef %3, i64 noundef %4) #12 ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !36
  %i.gi = add i64 %i.gh, %4
  store i64 %i.gi, ptr %i.gg, align 8, !tbaa !36
  %i.gj = ptrtoint ptr %.4 to i64
  %i.gk = ptrtoint ptr %1 to i64
  %i.gl = sub i64 %i.gj, %i.gk
  br label %bb.at

bb.at:                                            ; preds = %LZ4F_compressBound_internal.exit, %LZ4F_selectCompression.exit, %bb.as
  %.0 = phi i64 [ %i.gl, %bb.as ], [ -20, %LZ4F_selectCompression.exit ], [ -11, %LZ4F_compressBound_internal.exit ]
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
  %i.b = load i64, ptr %i.a, align 8, !tbaa !57   ; 7 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.e = load i32, ptr %i.d, align 4, !tbaa !34
  %.not = icmp eq i32 %i.e, 1
  br i1 %.not, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %i.b, 8
  %i.g = icmp ult i64 %2, %i.f
  br i1 %i.g, label %bb.q, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !53   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.l = load i32, ptr %i.k, align 4, !tbaa !62
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %LZ4F_selectCompression.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load i32, ptr %i.h, align 4, !tbaa !55
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
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !56   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !40
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !58
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.x = load i32, ptr %i.w, align 4, !tbaa !59   ; 2 uses
  %.not31 = icmp eq i64 %i.b, 1
  %i.y = trunc i64 %i.b to i32                    ; 3 uses
  %i.z = add nsw i32 %i.y, -1
  %i.aa = select i1 %.not31, i32 1, i32 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.ac = tail call i32 %.0.i(ptr noundef %i.t, ptr noundef %i.r, ptr noundef nonnull %i.ab, i32 noundef %i.y, i32 noundef %i.aa, i32 noundef %i.j, ptr noundef %i.v) #12, !inline_history !3 ; 3 uses
  %i.ad = icmp ne i32 %i.ac, 0
  %i.ae = zext i32 %i.ac to i64                   ; 2 uses
  %.not.i = icmp ugt i64 %i.b, %i.ae
  %or.cond.i = and i1 %i.ad, %.not.i
  br i1 %or.cond.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %LZ4F_selectCompression.exit
  %i.af = or i32 %i.y, -2147483648
  store i32 %i.af, ptr %1, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr align 1 %i.r, i64 %i.b, i1 false)
  %.pre32 = and i64 %i.b, 4294967295
  br label %bb.j

bb.i:                                             ; preds = %LZ4F_selectCompression.exit
  store i32 %i.ac, ptr %1, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pre.i.pre-phi = phi i64 [ %i.ae, %bb.i ], [ %.pre32, %bb.h ] ; 3 uses
  %.not30.i = icmp eq i32 %i.x, 0
  br i1 %.not30.i, label %LZ4F_makeBlock.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = tail call i32 @LZ4_XXH32(ptr noundef nonnull %i.ab, i64 noundef %.pre.i.pre-phi, i32 noundef 0) #12
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.pre.i.pre-phi
  store i32 %i.ag, ptr %i.ah, align 1
  br label %LZ4F_makeBlock.exit

LZ4F_makeBlock.exit:                              ; preds = %bb.j, %bb.k
  %i.ai = zext i32 %i.x to i64
  %i.aj = shl nuw nsw i64 %i.ai, 2
  %i.ak = add nuw nsw i64 %i.aj, 4
  %i.al = add nuw nsw i64 %i.ak, %.pre.i.pre-phi  ; 2 uses
  %i.am = load i32, ptr %i.h, align 4, !tbaa !55
  %i.an = icmp eq i32 %i.am, 0
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !56  ; 2 uses
  br i1 %i.an, label %bb.l, label %bb.m

bb.l:                                             ; preds = %LZ4F_makeBlock.exit
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !57
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.ao ; 2 uses
  store ptr %i.ap, ptr %i.q, align 8, !tbaa !56
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %LZ4F_makeBlock.exit
  %i.aq = phi ptr [ %i.ap, %bb.l ], [ %.pre, %LZ4F_makeBlock.exit ]
  store i64 0, ptr %i.a, align 8, !tbaa !57
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !54
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !52 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !38
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ax
  %i.az = icmp ugt ptr %i.at, %i.ay
  br i1 %i.az, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ba = load i32, ptr %i.i, align 8, !tbaa !53
  %i.bb = icmp slt i32 %i.ba, 2
  %i.bc = load ptr, ptr %i.s, align 8, !tbaa !40  ; 2 uses
  br i1 %i.bb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bd = tail call i32 @LZ4_saveDict(ptr noundef %i.bc, ptr noundef %i.av, i32 noundef 65536) #12
  br label %LZ4F_localSaveDict.exit

bb.p:                                             ; preds = %bb.n
  %i.be = tail call i32 @LZ4_saveDictHC(ptr noundef %i.bc, ptr noundef %i.av, i32 noundef 65536) #12
  br label %LZ4F_localSaveDict.exit

LZ4F_localSaveDict.exit:                          ; preds = %bb.o, %bb.p
  %i.bf = phi i32 [ %i.bd, %bb.o ], [ %i.be, %bb.p ]
  %i.bg = load ptr, ptr %i.au, align 8, !tbaa !52
  %i.bh = sext i32 %i.bf to i64
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 %i.bh
  store ptr %i.bi, ptr %i.q, align 8, !tbaa !56
  br label %bb.q

bb.q:                                             ; preds = %bb.c, %bb.b, %bb.m, %LZ4F_localSaveDict.exit, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.al, %bb.m ], [ -20, %bb.b ], [ %i.al, %LZ4F_localSaveDict.exit ], [ -11, %bb.c ]
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
  %i.a = tail call ptr %.sroa.4.0.copyload(ptr noundef %.sroa.56.0.copyload, i64 noundef 288) #12, !inline_history !2
  br label %LZ4F_calloc.exit

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = tail call noalias dereferenceable_or_null(288) ptr @calloc(i64 noundef 1, i64 noundef 288) #14
  br label %LZ4F_calloc.exit

bb.e:                                             ; preds = %bb.c
  %i.d = tail call ptr %.sroa.0.0.copyload(ptr noundef %.sroa.56.0.copyload, i64 noundef 288) #12, !inline_history !2 ; 3 uses
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0.i11, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !45
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i11, i64 64
  store i32 %1, ptr %i.f, align 8, !tbaa !64
  br label %LZ4F_calloc.exit.thread

LZ4F_calloc.exit.thread:                          ; preds = %bb.e, %LZ4F_calloc.exit, %bb.f
end_hunk_0
begin_hunk_1_@LZ4F_decompress:bb.a
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.dz ; 3 uses
  %i.ed = icmp eq ptr %i.ec, %.0575793.ph908
  br i1 %i.ed, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ee = add i64 %i.dz, %i.do
  br label %LZ4F_updateDict.exit

bb.aw:                                            ; preds = %bb.au
  %i.ef = sub i64 %i.dm, %i.ae
  %i.eg = add i64 %i.do, %i.ef                    ; 2 uses
  %i.eh = icmp ugt i64 %i.eg, 65535
  br i1 %i.eh, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store ptr %1, ptr %i.p, align 8, !tbaa !79
  br label %LZ4F_updateDict.exit

bb.ay:                                            ; preds = %bb.aw
  %i.ei = load ptr, ptr %i.af, align 8, !tbaa !67 ; 4 uses
  %i.ej = icmp eq ptr %i.eb, %i.ei
  br i1 %i.ej, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %bb.ay
  %i.ek = add i64 %i.dz, %i.do
  %i.el = load i64, ptr %i.ag, align 8, !tbaa !69
  %i.em = icmp ugt i64 %i.ek, %i.el
  br i1 %i.em, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.en = sub i64 65536, %i.do                    ; 3 uses
  %i.eo = getelementptr i8, ptr %i.ec, i64 %i.do
  %i.ep = getelementptr i8, ptr %i.eo, i64 -65536
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ei, ptr align 1 %i.ep, i64 %i.en, i1 false)
  store i64 %i.en, ptr %i.ab, align 8, !tbaa !78
  %.pre90.i = load ptr, ptr %i.af, align 8, !tbaa !67
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.eq = phi i64 [ %i.en, %bb.ba ], [ %i.dz, %bb.az ]
  %i.er = phi ptr [ %.pre90.i, %bb.ba ], [ %i.ei, %bb.az ]
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.eq
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.es, ptr nonnull align 1 %.0575793.ph908, i64 %i.do, i1 false)
  %i.et = load i64, ptr %i.ab, align 8, !tbaa !78
  %i.eu = add i64 %i.et, %i.do
  br label %LZ4F_updateDict.exit

bb.bc:                                            ; preds = %bb.ay
  %i.ev = sub i64 65536, %i.do
  %spec.select89.i = tail call i64 @llvm.umin.i64(i64 %i.ev, i64 %i.dz) ; 4 uses
  %i.ew = sub i64 0, %spec.select89.i
  %i.ex = getelementptr inbounds i8, ptr %i.ec, i64 %i.ew
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ei, ptr align 1 %i.ex, i64 %spec.select89.i, i1 false)
  %i.ey = load ptr, ptr %i.af, align 8, !tbaa !67
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %spec.select89.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ez, ptr nonnull align 1 %.0575793.ph908, i64 %i.do, i1 false)
  %i.fa = load ptr, ptr %i.af, align 8, !tbaa !67
  store ptr %i.fa, ptr %i.p, align 8, !tbaa !79
  %i.fb = add i64 %spec.select89.i, %i.do
  br label %LZ4F_updateDict.exit

LZ4F_updateDict.exit:                             ; preds = %bb.av, %bb.ax, %bb.bb, %bb.bc
  %.sink.i = phi i64 [ %i.fb, %bb.bc ], [ %i.eu, %bb.bb ], [ %i.eg, %bb.ax ], [ %i.ee, %bb.av ]
  store i64 %.sink.i, ptr %i.ab, align 8, !tbaa !78
  br label %bb.bd

bb.bd:                                            ; preds = %LZ4F_updateDict.exit, %bb.ar
  %i.fc = getelementptr inbounds nuw i8, ptr %.0580792.ph912, i64 %i.do
  %i.fd = getelementptr inbounds nuw i8, ptr %.0575793.ph908, i64 %i.do
  %.pre809 = load i64, ptr %i.n, align 8, !tbaa !72
  br label %bb.be

bb.be:                                            ; preds = %.loopexit1126, %bb.bd
  %i.fe = phi i64 [ %.pre809, %bb.bd ], [ %.pre810, %.loopexit1126 ] ; 2 uses
  %.5585 = phi ptr [ %i.fc, %bb.bd ], [ %.0580792.ph912, %.loopexit1126 ] ; 3 uses
  %.1576 = phi ptr [ %i.fd, %bb.bd ], [ null, %.loopexit1126 ] ; 3 uses
  %.0515 = phi i64 [ %i.do, %bb.bd ], [ 0, %.loopexit1126 ] ; 2 uses
  %i.ff = icmp eq i64 %.0515, %i.fe
  br i1 %i.ff, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %i.fg = load i32, ptr %i.y, align 4, !tbaa !76
  %.not668 = icmp eq i32 %i.fg, 0
  br i1 %.not668, label %.outer.backedge, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  store i64 0, ptr %i.r, align 8, !tbaa !73
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.bf, %bb.bg, %bb.di
  %storemerge.sink = phi i32 [ 3, %bb.di ], [ 6, %bb.bg ], [ 3, %bb.bf ] ; 2 uses
  %.0575793.ph908.be = phi ptr [ %.3578, %bb.di ], [ %.1576, %bb.bg ], [ %.1576, %bb.bf ]
  %.0580792.ph909.be = phi ptr [ %.9589, %bb.di ], [ %.5585, %bb.bg ], [ %.5585, %bb.bf ]
  store i32 %storemerge.sink, ptr %i.m, align 4, !tbaa !65
  br label %.outer, !llvm.loop !94

bb.bh:                                            ; preds = %bb.be
  %i.fh = sub i64 %i.fe, %.0515                   ; 2 uses
  store i64 %i.fh, ptr %i.n, align 8, !tbaa !72
  %i.fi = load i32, ptr %i.y, align 4, !tbaa !76
  %.not669 = icmp eq i32 %i.fi, 0
  %i.fj = select i1 %.not669, i64 0, i64 4
  %i.fk = add i64 %i.fh, 4
  %i.fl = add i64 %i.fk, %i.fj
  br label %.thread725.thread

bb.bi:                                            ; preds = %.outer910
  %i.fm = ptrtoint ptr %.0580792.ph912 to i64
  %i.fn = sub i64 %i.o, %i.fm                     ; 2 uses
  %i.fo = icmp sgt i64 %i.fn, 3
  %.pre808 = load i64, ptr %i.r, align 8, !tbaa !73 ; 4 uses
  %i.fp = icmp eq i64 %.pre808, 0
  %or.cond980 = select i1 %i.fo, i1 %i.fp, i1 false
  br i1 %or.cond980, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.fq = getelementptr inbounds nuw i8, ptr %.0580792.ph912, i64 4
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.fr = sub i64 4, %.pre808
  %i.fs = tail call i64 @llvm.umin.i64(i64 %i.fr, i64 %i.fn) ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.s, i64 %.pre808
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ft, ptr align 1 %.0580792.ph912, i64 %i.fs, i1 false)
  %i.fu = add i64 %i.fs, %.pre808                 ; 2 uses
  store i64 %i.fu, ptr %i.r, align 8, !tbaa !73
  %i.fv = getelementptr inbounds nuw i8, ptr %.0580792.ph912, i64 %i.fs ; 2 uses
  %i.fw = icmp ugt i64 %i.fu, 3
  br i1 %i.fw, label %bb.bl, label %.thread725.thread

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.6586 = phi ptr [ %i.fq, %bb.bj ], [ %i.fv, %bb.bk ] ; 2 uses
  %.1514 = phi ptr [ %.0580792.ph912, %bb.bj ], [ %i.s, %bb.bk ]
  %i.fx = load i32, ptr %i.j, align 8, !tbaa !70
  %.not662 = icmp eq i32 %i.fx, 0
  br i1 %.not662, label %bb.bm, label %.outer910.backedge

bb.bm:                                            ; preds = %bb.bl
  %i.fy = load i32, ptr %.1514, align 1
  %i.fz = tail call i32 @LZ4_XXH32_digest(ptr noundef nonnull %i.aj) #12
  %.not663 = icmp eq i32 %i.fy, %i.fz
  br i1 %.not663, label %.outer910.backedge, label %.thread741

.loopexit1141:                                    ; preds = %bb.d
  %i.ga = getelementptr inbounds nuw i8, ptr %.0580792.ph912, i64 %i.ao
  br label %bb.bo

.loopexit1128:                                    ; preds = %.outer910, %.split904.peel
  %i.gb = load i64, ptr %i.n, align 8, !tbaa !72
  %i.gc = load i64, ptr %i.r, align 8, !tbaa !73  ; 2 uses
  %i.gd = sub i64 %i.gb, %i.gc
  %i.ge = ptrtoint ptr %.0580792.ph912 to i64
  %i.gf = sub i64 %i.o, %i.ge
  %i.gg = tail call i64 @llvm.umin.i64(i64 %i.gd, i64 %i.gf) ; 3 uses
  %i.gh = load ptr, ptr %i.w, align 8, !tbaa !66
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gc
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gi, ptr align 1 %.0580792.ph912, i64 %i.gg, i1 false)
  %i.gj = load i64, ptr %i.r, align 8, !tbaa !73
  %i.gk = add i64 %i.gj, %i.gg                    ; 3 uses
  store i64 %i.gk, ptr %i.r, align 8, !tbaa !73
  %i.gl = getelementptr inbounds nuw i8, ptr %.0580792.ph912, i64 %i.gg ; 2 uses
  %i.gm = load i64, ptr %i.n, align 8, !tbaa !72  ; 3 uses
  %i.gn = icmp ult i64 %i.gk, %i.gm
  br i1 %i.gn, label %bb.bn, label %.thread746

.thread746:                                       ; preds = %.loopexit1128
  %i.go = load ptr, ptr %i.w, align 8, !tbaa !66
  br label %bb.bo

bb.bn:                                            ; preds = %.loopexit1128
  %i.gp = load i32, ptr %i.y, align 4, !tbaa !76
  %.not650 = icmp eq i32 %i.gp, 0
  %i.gq = select i1 %.not650, i64 0, i64 4
  %reass.sub = sub nuw i64 %i.gm, %i.gk
  %i.gr = add i64 %reass.sub, 4
  %i.gs = add i64 %i.gr, %i.gq
  br label %.thread725.thread

bb.bo:                                            ; preds = %.thread746, %.loopexit1141
  %i.gt = phi i64 [ %i.ao, %.loopexit1141 ], [ %i.gm, %.thread746 ]
  %.8588 = phi ptr [ %i.ga, %.loopexit1141 ], [ %i.gl, %.thread746 ] ; 2 uses
  %.6564 = phi ptr [ %.0580792.ph912, %.loopexit1141 ], [ %i.go, %.thread746 ] ; 4 uses
  %i.gu = load i32, ptr %i.y, align 4, !tbaa !76
  %.not651 = icmp eq i32 %i.gu, 0
  br i1 %.not651, label %.thread751, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gv = add i64 %i.gt, -4                       ; 3 uses
  store i64 %i.gv, ptr %i.n, align 8, !tbaa !72
  %i.gw = getelementptr inbounds nuw i8, ptr %.6564, i64 %i.gv
  %i.gx = load i32, ptr %i.gw, align 1
  %i.gy = tail call i32 @LZ4_XXH32(ptr noundef %.6564, i64 noundef %i.gv, i32 noundef 0) #12
  %.not652 = icmp eq i32 %i.gx, %i.gy
  br i1 %.not652, label %.thread751, label %.thread741

.thread751:                                       ; preds = %bb.bp, %bb.bo
  %i.gz = ptrtoint ptr %.0575793.ph908 to i64     ; 2 uses
  %i.ha = sub i64 %i.z, %i.gz
  %i.hb = load i64, ptr %i.aa, align 8, !tbaa !68 ; 5 uses
  %.not653 = icmp ult i64 %i.ha, %i.hb
  %.pre801.pre = load ptr, ptr %i.p, align 8, !tbaa !79 ; 9 uses
  br i1 %.not653, label %bb.ck, label %bb.bq

bb.bq:                                            ; preds = %.thread751
  %.not654.not.not.not = icmp ne ptr %.pre801.pre, null ; 2 uses
  %.pre = load i64, ptr %i.ab, align 8, !tbaa !78 ; 4 uses
  br i1 %.not654.not.not.not, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.hc = getelementptr inbounds nuw i8, ptr %.pre801.pre, i64 %.pre
  %i.hd = load ptr, ptr %i.ac, align 8, !tbaa !99
  %i.he = icmp eq ptr %i.hc, %i.hd
  br i1 %i.he, label %bb.ck, label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.hf = icmp ugt i64 %.pre, 1073741824
  %or.cond = select i1 %.not654.not.not.not, i1 %i.hf, i1 false ; 2 uses
  %i.hg = getelementptr i8, ptr %.pre801.pre, i64 %.pre
  %i.hh = getelementptr i8, ptr %i.hg, i64 -65536
  %.0512 = select i1 %or.cond, ptr %i.hh, ptr %.pre801.pre
  %i.hi = load i64, ptr %i.n, align 8, !tbaa !72
  %i.hj = trunc i64 %i.hi to i32
  %i.hk = trunc i64 %i.hb to i32
  %i.hl = trunc i64 %.pre to i32
  %i.hm = select i1 %or.cond, i32 65536, i32 %i.hl
  %i.hn = tail call i32 @LZ4_decompress_safe_usingDict(ptr noundef %.6564, ptr noundef %.0575793.ph908, i32 noundef %i.hj, i32 noundef %i.hk, ptr noundef %.0512, i32 noundef %i.hm) #12 ; 4 uses
  %i.ho = icmp sgt i32 %i.hn, -1
  br i1 %i.ho, label %bb.bt, label %.thread741

bb.bt:                                            ; preds = %bb.bs
  %i.hp = load i32, ptr %i.v, align 8, !tbaa !74
  %.not655 = icmp eq i32 %i.hp, 0
  br i1 %.not655, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.hq = load i32, ptr %i.j, align 8, !tbaa !70
  %.not656 = icmp eq i32 %i.hq, 0
  br i1 %.not656, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.hr = zext nneg i32 %i.hn to i64
  %i.hs = tail call i32 @LZ4_XXH32_update(ptr noundef nonnull %i.x, ptr noundef %.0575793.ph908, i64 noundef %i.hr) #12 ; 0 uses
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu, %bb.bt
  %i.ht = load i64, ptr %i.u, align 8, !tbaa !77
  %.not657 = icmp eq i64 %i.ht, 0
  br i1 %.not657, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.hu = zext nneg i32 %i.hn to i64
  %i.hv = load i64, ptr %i.q, align 8, !tbaa !71
  %i.hw = sub i64 %i.hv, %i.hu
  store i64 %i.hw, ptr %i.q, align 8, !tbaa !71
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.hx = load i32, ptr %i.ad, align 4, !tbaa !75
  %i.hy = icmp eq i32 %i.hx, 0
  %i.hz = zext nneg i32 %i.hn to i64              ; 11 uses
  br i1 %i.hy, label %bb.bz, label %.thread753

bb.bz:                                            ; preds = %bb.by
  %i.ia = load i64, ptr %i.ab, align 8, !tbaa !78 ; 6 uses
  %i.ib = icmp eq i64 %i.ia, 0
  br i1 %i.ib, label %bb.ca, label %._crit_edge.i699

._crit_edge.i699:                                 ; preds = %bb.bz
  %.pre.i700 = load ptr, ptr %i.p, align 8, !tbaa !79
  br label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  store ptr %.0575793.ph908, ptr %i.p, align 8, !tbaa !79
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %._crit_edge.i699
  %i.ic = phi ptr [ %.pre.i700, %._crit_edge.i699 ], [ %.0575793.ph908, %bb.ca ] ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.ia ; 3 uses
  %i.ie = icmp eq ptr %i.id, %.0575793.ph908
  br i1 %i.ie, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.if = add i64 %i.ia, %i.hz
  br label %LZ4F_updateDict.exit704

bb.cd:                                            ; preds = %bb.cb
  %i.ig = sub i64 %i.gz, %i.ae
  %i.ih = add i64 %i.ig, %i.hz                    ; 2 uses
  %i.ii = icmp ugt i64 %i.ih, 65535
  br i1 %i.ii, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  store ptr %1, ptr %i.p, align 8, !tbaa !79
  br label %LZ4F_updateDict.exit704

bb.cf:                                            ; preds = %bb.cd
  %i.ij = load ptr, ptr %i.af, align 8, !tbaa !67 ; 4 uses
  %i.ik = icmp eq ptr %i.ic, %i.ij
  br i1 %i.ik, label %bb.cg, label %bb.cj

bb.cg:                                            ; preds = %bb.cf
  %i.il = add i64 %i.ia, %i.hz
  %i.im = load i64, ptr %i.ag, align 8, !tbaa !69
  %i.in = icmp ugt i64 %i.il, %i.im
  br i1 %i.in, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.io = sub nsw i64 65536, %i.hz                ; 3 uses
  %i.ip = getelementptr i8, ptr %i.id, i64 %i.hz
  %i.iq = getelementptr i8, ptr %i.ip, i64 -65536
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ij, ptr align 1 %i.iq, i64 %i.io, i1 false)
  store i64 %i.io, ptr %i.ab, align 8, !tbaa !78
  %.pre90.i703 = load ptr, ptr %i.af, align 8, !tbaa !67
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.ir = phi i64 [ %i.io, %bb.ch ], [ %i.ia, %bb.cg ]
  %i.is = phi ptr [ %.pre90.i703, %bb.ch ], [ %i.ij, %bb.cg ]
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.ir
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.it, ptr align 1 %.0575793.ph908, i64 %i.hz, i1 false)
  %i.iu = load i64, ptr %i.ab, align 8, !tbaa !78
  %i.iv = add i64 %i.iu, %i.hz
  br label %LZ4F_updateDict.exit704

bb.cj:                                            ; preds = %bb.cf
  %i.iw = sub nsw i64 65536, %i.hz
  %spec.select89.i701 = tail call i64 @llvm.umin.i64(i64 %i.iw, i64 %i.ia) ; 4 uses
  %i.ix = sub i64 0, %spec.select89.i701
  %i.iy = getelementptr inbounds i8, ptr %i.id, i64 %i.ix
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ij, ptr align 1 %i.iy, i64 %spec.select89.i701, i1 false)
  %i.iz = load ptr, ptr %i.af, align 8, !tbaa !67
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 %spec.select89.i701
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ja, ptr align 1 %.0575793.ph908, i64 %i.hz, i1 false)
  %i.jb = load ptr, ptr %i.af, align 8, !tbaa !67
  store ptr %i.jb, ptr %i.p, align 8, !tbaa !79
  %i.jc = add i64 %spec.select89.i701, %i.hz
  br label %LZ4F_updateDict.exit704

LZ4F_updateDict.exit704:                          ; preds = %bb.cc, %bb.ce, %bb.ci, %bb.cj
  %.sink.i702 = phi i64 [ %i.jc, %bb.cj ], [ %i.iv, %bb.ci ], [ %i.ih, %bb.ce ], [ %i.if, %bb.cc ]
  store i64 %.sink.i702, ptr %i.ab, align 8, !tbaa !78
  br label %.thread753

.thread753:                                       ; preds = %bb.by, %LZ4F_updateDict.exit704
  %i.jd = getelementptr inbounds nuw i8, ptr %.0575793.ph908, i64 %i.hz
  store i32 3, ptr %i.m, align 4, !tbaa !65
  br label %thread-pre-split.backedge

bb.ck:                                            ; preds = %bb.br, %.thread751
  %i.je = load i32, ptr %i.ad, align 4, !tbaa !75
  %i.jf = icmp eq i32 %i.je, 0
  br i1 %i.jf, label %bb.cl, label %._crit_edge

._crit_edge:                                      ; preds = %bb.ck
  %.pre802 = load i64, ptr %i.ab, align 8, !tbaa !78
  %.pre803 = load ptr, ptr %i.ac, align 8, !tbaa !99
  br label %bb.cq

bb.cl:                                            ; preds = %bb.ck
  %i.jg = load ptr, ptr %i.af, align 8, !tbaa !67 ; 4 uses
  %i.jh = icmp eq ptr %.pre801.pre, %i.jg
  %i.ji = load i64, ptr %i.ab, align 8, !tbaa !78 ; 5 uses
  br i1 %i.jh, label %bb.cm, label %bb.cp

bb.cm:                                            ; preds = %bb.cl
  %i.jj = icmp ugt i64 %i.ji, 131072
  br i1 %i.jj, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.jk = getelementptr inbounds nuw i8, ptr %.pre801.pre, i64 %i.ji
  %i.jl = getelementptr inbounds i8, ptr %i.jk, i64 -65536
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(65536) %i.jg, ptr noundef nonnull align 1 dereferenceable(65536) %i.jl, i64 65536, i1 false)
  store i64 65536, ptr %i.ab, align 8, !tbaa !78
  %.pre799 = load ptr, ptr %i.af, align 8, !tbaa !67
  %.pre800.pre = load ptr, ptr %i.p, align 8, !tbaa !79
  %.pre804.pre = load i64, ptr %i.aa, align 8, !tbaa !68
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %.pre804 = phi i64 [ %.pre804.pre, %bb.cn ], [ %i.hb, %bb.cm ]
  %.pre800 = phi ptr [ %.pre800.pre, %bb.cn ], [ %.pre801.pre, %bb.cm ]
  %i.jm = phi i64 [ 65536, %bb.cn ], [ %i.ji, %bb.cm ] ; 2 uses
  %i.jn = phi ptr [ %.pre799, %bb.cn ], [ %i.jg, %bb.cm ]
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.jm ; 2 uses
  store ptr %i.jo, ptr %i.ac, align 8, !tbaa !99
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cl
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.ji, i64 65536)
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jg, i64 %spec.select ; 2 uses
  store ptr %i.jp, ptr %i.ac, align 8, !tbaa !99
  br label %bb.cq

bb.cq:                                            ; preds = %._crit_edge, %bb.co, %bb.cp
  %i.jq = phi i64 [ %.pre804, %bb.co ], [ %i.hb, %bb.cp ], [ %i.hb, %._crit_edge ]
  %i.jr = phi ptr [ %i.jo, %bb.co ], [ %i.jp, %bb.cp ], [ %.pre803, %._crit_edge ]
  %i.js = phi i64 [ %i.jm, %bb.co ], [ %i.ji, %bb.cp ], [ %.pre802, %._crit_edge ] ; 3 uses
  %i.jt = phi ptr [ %.pre800, %bb.co ], [ %.pre801.pre, %bb.cp ], [ %.pre801.pre, %._crit_edge ] ; 3 uses
  %i.ju = icmp ne ptr %i.jt, null
  %i.jv = icmp ugt i64 %i.js, 1073741824
  %or.cond11 = select i1 %i.ju, i1 %i.jv, i1 false ; 2 uses
  %i.jw = getelementptr i8, ptr %i.jt, i64 %i.js
  %i.jx = getelementptr i8, ptr %i.jw, i64 -65536
  %.0510 = select i1 %or.cond11, ptr %i.jx, ptr %i.jt
  %i.jy = load i64, ptr %i.n, align 8, !tbaa !72
  %i.jz = trunc i64 %i.jy to i32
  %i.ka = trunc i64 %i.jq to i32
  %i.kb = trunc i64 %i.js to i32
  %i.kc = select i1 %or.cond11, i32 65536, i32 %i.kb
  %i.kd = tail call i32 @LZ4_decompress_safe_usingDict(ptr noundef %.6564, ptr noundef %i.jr, i32 noundef %i.jz, i32 noundef %i.ka, ptr noundef %.0510, i32 noundef %i.kc) #12 ; 3 uses
  %i.ke = icmp sgt i32 %i.kd, -1
  br i1 %i.ke, label %bb.cr, label %.thread741

bb.cr:                                            ; preds = %bb.cq
  %i.kf = load i32, ptr %i.v, align 8, !tbaa !74
  %.not658 = icmp eq i32 %i.kf, 0
  br i1 %.not658, label %bb.cu, label %bb.cs
end_hunk_1
