Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lz4/original/lz4frame?download=true
inline.NumInlined: 138
inline.NumDeleted: 18
begin_hunk_0_@LZ4F_getBlockSize:bb.a
  %i.e = getelementptr i8, ptr %i.d, i64 -32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.f, %bb.b ], [ -2, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @LZ4F_compressFrameBound(i64 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %LZ4F_getBlockSize.exit.thread47.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load i32, ptr %1, align 8, !tbaa !16
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.52.0.copyload = load i32, ptr %.sroa.52.0..sroa_idx, align 8, !tbaa !16 ; 3 uses
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.63.0.copyload = load i32, ptr %.sroa.63.0..sroa_idx, align 4, !tbaa !16 ; 3 uses
  %.else.val40.fr.i = freeze i32 %.sroa.0.0.copyload ; 3 uses
  %i.a = icmp eq i32 %.else.val40.fr.i, 0
  br i1 %i.a, label %LZ4F_getBlockSize.exit.thread47.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = and i32 %.else.val40.fr.i, -4
  %or.cond.not.i.i = icmp eq i32 %i.b, 4
  br i1 %or.cond.not.i.i, label %LZ4F_getBlockSize.exit.thread47.i, label %LZ4F_compressBound_internal.exit

LZ4F_getBlockSize.exit.thread47.i:                ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.63.012 = phi i32 [ %.sroa.63.0.copyload, %bb.b ], [ %.sroa.63.0.copyload, %bb.c ], [ 0, %bb.a ]
  %.sroa.52.010 = phi i32 [ %.sroa.52.0.copyload, %bb.b ], [ %.sroa.52.0.copyload, %bb.c ], [ 0, %bb.a ]
  %.ph.i = phi i32 [ 4, %bb.b ], [ %.else.val40.fr.i, %bb.c ], [ 4, %bb.a ]
  %i.c = zext nneg i32 %.ph.i to i64
  %i.d = getelementptr [8 x i8], ptr @LZ4F_getBlockSize.blockSizes, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 -32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !15
  br label %LZ4F_compressBound_internal.exit

LZ4F_compressBound_internal.exit:                 ; preds = %bb.c, %LZ4F_getBlockSize.exit.thread47.i
  %.sroa.63.011 = phi i32 [ %.sroa.63.012, %LZ4F_getBlockSize.exit.thread47.i ], [ %.sroa.63.0.copyload, %bb.c ]
  %.sroa.52.09 = phi i32 [ %.sroa.52.010, %LZ4F_getBlockSize.exit.thread47.i ], [ %.sroa.52.0.copyload, %bb.c ]
  %.0.i45.i = phi i64 [ %i.f, %LZ4F_getBlockSize.exit.thread47.i ], [ -2, %bb.c ] ; 3 uses
  %i.g = zext i32 %.sroa.63.011 to i64
  %i.h = shl nuw nsw i64 %i.g, 2
  %i.i = zext i32 %.sroa.52.09 to i64
  %i.j = shl nuw nsw i64 %i.i, 2
  %i.k = add nuw nsw i64 %i.h, 4
  %i.l = add i64 %.0.i45.i, -1
  %i.m = udiv i64 %0, %.0.i45.i                   ; 2 uses
  %i.n = and i64 %i.l, %0                         ; 2 uses
  %i.o = icmp ne i64 %i.n, 0
  %i.p = zext i1 %i.o to i64
  %i.q = add i64 %i.m, %i.p
  %i.r = and i64 %i.q, 4294967295
  %i.s = mul i64 %i.r, %i.k
  %i.t = and i64 %i.m, 4294967295
  %i.u = mul i64 %i.t, %.0.i45.i
  %i.v = add nuw nsw i64 %i.j, 23
  %i.w = add i64 %i.v, %i.n
  %i.x = add i64 %i.w, %i.u
  %i.y = add i64 %i.x, %i.s
  ret i64 %i.y
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define i64 @LZ4F_compressFrame_usingCDict(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr nofree noundef readonly captures(address_is_null) %6) local_unnamed_addr #4 {
bb.a:
  %7 = alloca %struct.LZ4F_preferences_t, align 8 ; 14 uses
  %8 = alloca %struct.LZ4F_compressOptions_t, align 4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %.not = icmp eq ptr %6, null
  br i1 %.not, label %LZ4F_optimalBSID.exit.thread, label %bb.b

LZ4F_optimalBSID.exit.thread:                     ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %7, i8 0, i64 56, i1 false)
  store i32 1, ptr %i.a, align 4, !tbaa !20
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(56) %6, i64 56, i1 false), !tbaa.struct !23
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !82
  %.pre65 = load i32, ptr %7, align 8, !tbaa !24  ; 4 uses
  %i.b = icmp eq i64 %.pre, 0
  %i.c = select i1 %i.b, i64 0, i64 %4
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.c, ptr %i.d, align 8, !tbaa !82
  %i.e = icmp ugt i32 %.pre65, 4
  br i1 %i.e, label %.lr.ph.i, label %LZ4F_optimalBSID.exit

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.013.i = phi i64 [ %i.g, %bb.c ], [ 65536, %bb.b ] ; 2 uses
  %.0912.i = phi i32 [ %i.f, %bb.c ], [ 4, %bb.b ] ; 2 uses
  %.not.i = icmp ugt i64 %4, %.013.i
  br i1 %.not.i, label %bb.c, label %LZ4F_optimalBSID.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.f = add nuw i32 %.0912.i, 1                  ; 2 uses
  %i.g = shl i64 %.013.i, 2
  %exitcond.not.i = icmp eq i32 %i.f, %.pre65
  br i1 %exitcond.not.i, label %LZ4F_optimalBSID.exit, label %.lr.ph.i, !llvm.loop !81

LZ4F_optimalBSID.exit:                            ; preds = %.lr.ph.i, %bb.c, %bb.b
  %.010.i = phi i32 [ %.pre65, %bb.b ], [ %.pre65, %bb.c ], [ %.0912.i, %.lr.ph.i ]
  %.else.val40.fr.i.i = freeze i32 %.010.i        ; 5 uses
  store i32 %.else.val40.fr.i.i, ptr %7, align 8, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 36
  store i32 1, ptr %i.h, align 4, !tbaa !20
  %i.i = icmp eq i32 %.else.val40.fr.i.i, 0       ; 3 uses
  %spec.store.select.i = select i1 %i.i, i32 4, i32 %.else.val40.fr.i.i ; 2 uses
  %i.j = and i32 %spec.store.select.i, -4
  %or.cond.not.i = icmp eq i32 %i.j, 4
  br i1 %or.cond.not.i, label %bb.d, label %LZ4F_getBlockSize.exit

bb.d:                                             ; preds = %LZ4F_optimalBSID.exit.thread, %LZ4F_optimalBSID.exit
  %spec.store.select.i85 = phi i32 [ 4, %LZ4F_optimalBSID.exit.thread ], [ %spec.store.select.i, %LZ4F_optimalBSID.exit ]
  %i.k = phi i1 [ true, %LZ4F_optimalBSID.exit.thread ], [ %i.i, %LZ4F_optimalBSID.exit ]
  %.else.val40.fr.i.i84 = phi i32 [ 0, %LZ4F_optimalBSID.exit.thread ], [ %.else.val40.fr.i.i, %LZ4F_optimalBSID.exit ]
  %i.l = zext nneg i32 %spec.store.select.i85 to i64
  %i.m = getelementptr [8 x i8], ptr @LZ4F_getBlockSize.blockSizes, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 -32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !15
  br label %LZ4F_getBlockSize.exit

LZ4F_getBlockSize.exit:                           ; preds = %LZ4F_optimalBSID.exit, %bb.d
  %i.p = phi i1 [ %i.k, %bb.d ], [ %i.i, %LZ4F_optimalBSID.exit ]
  %.else.val40.fr.i.i83 = phi i32 [ %.else.val40.fr.i.i84, %bb.d ], [ %.else.val40.fr.i.i, %LZ4F_optimalBSID.exit ] ; 2 uses
  %.0.i = phi i64 [ %i.o, %bb.d ], [ -2, %LZ4F_optimalBSID.exit ]
  %.not53 = icmp ugt i64 %4, %.0.i
  br i1 %.not53, label %bb.f, label %bb.e

bb.e:                                             ; preds = %LZ4F_getBlockSize.exit
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 1, ptr %i.q, align 4, !tbaa !83
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %LZ4F_getBlockSize.exit
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.r, i8 0, i64 12, i1 false)
  store i32 1, ptr %8, align 4, !tbaa !27
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.52.0.copyload.i = load i32, ptr %.sroa.52.0..sroa_idx.i, align 8, !tbaa !16
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 28
  %.sroa.63.0.copyload.i = load i32, ptr %.sroa.63.0..sroa_idx.i, align 4, !tbaa !16
  br i1 %i.p, label %LZ4F_getBlockSize.exit.thread47.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = and i32 %.else.val40.fr.i.i83, -4
  %or.cond.not.i.i.i = icmp eq i32 %i.s, 4
  br i1 %or.cond.not.i.i.i, label %LZ4F_getBlockSize.exit.thread47.i.i, label %LZ4F_compressFrameBound.exit

LZ4F_getBlockSize.exit.thread47.i.i:              ; preds = %bb.g, %bb.f
  %.ph.i.i = phi i32 [ 4, %bb.f ], [ %.else.val40.fr.i.i83, %bb.g ]
  %i.t = zext nneg i32 %.ph.i.i to i64
  %i.u = getelementptr [8 x i8], ptr @LZ4F_getBlockSize.blockSizes, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 -32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !15
  br label %LZ4F_compressFrameBound.exit

LZ4F_compressFrameBound.exit:                     ; preds = %bb.g, %LZ4F_getBlockSize.exit.thread47.i.i
  %.0.i45.i.i = phi i64 [ %i.w, %LZ4F_getBlockSize.exit.thread47.i.i ], [ -2, %bb.g ] ; 3 uses
  %i.x = zext i32 %.sroa.63.0.copyload.i to i64
  %i.y = shl nuw nsw i64 %i.x, 2
  %i.z = zext i32 %.sroa.52.0.copyload.i to i64
  %i.aa = shl nuw nsw i64 %i.z, 2
  %i.ab = add nuw nsw i64 %i.y, 4
  %i.ac = add i64 %.0.i45.i.i, -1
  %i.ad = udiv i64 %4, %.0.i45.i.i                ; 2 uses
  %i.ae = and i64 %i.ac, %4                       ; 2 uses
  %i.af = icmp ne i64 %i.ae, 0
  %i.ag = zext i1 %i.af to i64
  %i.ah = add i64 %i.ad, %i.ag
  %i.ai = and i64 %i.ah, 4294967295
  %i.aj = mul i64 %i.ai, %i.ab
  %i.ak = and i64 %i.ad, 4294967295
  %i.al = mul i64 %i.ak, %.0.i45.i.i
  %i.am = add nuw nsw i64 %i.aa, 23
  %i.an = add i64 %i.am, %i.ae
  %i.ao = add i64 %i.an, %i.al
  %i.ap = add i64 %i.ao, %i.aj
  %i.aq = icmp ult i64 %2, %i.ap
  br i1 %i.aq, label %LZ4F_compressEnd.exit.thread, label %bb.h

bb.h:                                             ; preds = %LZ4F_compressFrameBound.exit
  %i.ar = call fastcc i64 @LZ4F_compressBegin_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef null, i64 noundef 0, ptr noundef %5, ptr noundef nonnull readonly %7) ; 4 uses
  %i.as = icmp ult i64 %i.ar, -23
  br i1 %i.as, label %bb.i, label %LZ4F_compressEnd.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %i.ar ; 2 uses
  %gepdiff = sub nsw i64 %2, %i.ar                ; 2 uses
  %i.au = call fastcc i64 @LZ4F_compressUpdateImpl(ptr noundef %0, ptr noundef %i.at, i64 noundef %gepdiff, ptr noundef %3, i64 noundef %4, ptr noundef nonnull readonly %8, i32 noundef 0) ; 4 uses
  %i.av = icmp ult i64 %i.au, -23
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.au ; 3 uses
  br i1 %i.av, label %bb.j, label %LZ4F_compressEnd.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ax = ptrtoint ptr %i.aw to i64
  %gepdiff62 = sub i64 %gepdiff, %i.au            ; 2 uses
  %i.ay = call i64 @LZ4F_flush(ptr noundef %0, ptr noundef %i.aw, i64 noundef %gepdiff62, ptr nonnull readnone poison) ; 4 uses
  %i.az = icmp ult i64 %i.ay, -23
  br i1 %i.az, label %bb.k, label %LZ4F_compressEnd.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ba = sub i64 %gepdiff62, %i.ay               ; 2 uses
  %i.bb = icmp ult i64 %i.ba, 4
  br i1 %i.bb, label %LZ4F_compressEnd.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ay ; 3 uses
  store i32 0, ptr %i.bc, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !33
  %i.bg = icmp eq i32 %i.bf, 1
  br i1 %i.bg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bi = call i32 @LZ4_XXH32_digest(ptr noundef nonnull %i.bh) #12
  %i.bj = icmp ugt i64 %i.ba, 7
  br i1 %i.bj, label %.thread.i, label %LZ4F_compressEnd.exit.thread

.thread.i:                                        ; preds = %bb.m
  store i32 %i.bi, ptr %i.bd, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  br label %bb.n

bb.n:                                             ; preds = %.thread.i, %bb.l
  %.1.i = phi ptr [ %i.bk, %.thread.i ], [ %i.bd, %bb.l ]
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 0, ptr %i.bl, align 4, !tbaa !34
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !35 ; 2 uses
  %.not33.i = icmp eq i64 %i.bn, 0
  br i1 %.not33.i, label %LZ4F_compressEnd.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !36
  %.not34.i = icmp eq i64 %i.bn, %i.bp
  br i1 %.not34.i, label %LZ4F_compressEnd.exit, label %LZ4F_compressEnd.exit.thread

LZ4F_compressEnd.exit:                            ; preds = %bb.n, %bb.o
  %i.bq = ptrtoint ptr %.1.i to i64               ; 2 uses
  %i.br = sub i64 %i.bq, %i.ax                    ; 2 uses
  %i.bs = icmp ult i64 %i.br, -23
  br i1 %i.bs, label %bb.p, label %LZ4F_compressEnd.exit.thread

bb.p:                                             ; preds = %LZ4F_compressEnd.exit
  %i.bt = ptrtoint ptr %1 to i64
  %i.bu = sub i64 %i.bq, %i.bt
  br label %LZ4F_compressEnd.exit.thread

LZ4F_compressEnd.exit.thread:                     ; preds = %bb.o, %bb.m, %bb.j, %bb.k, %LZ4F_compressFrameBound.exit, %LZ4F_compressEnd.exit, %bb.i, %bb.h, %bb.p
  %.3 = phi i64 [ %i.ar, %bb.h ], [ %i.bu, %bb.p ], [ %i.br, %LZ4F_compressEnd.exit ], [ %i.au, %bb.i ], [ -11, %LZ4F_compressFrameBound.exit ], [ -14, %bb.o ], [ -11, %bb.m ], [ %i.ay, %bb.j ], [ -11, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  ret i64 %.3
}

; Function Attrs: nounwind uwtable
define i64 @LZ4F_compressBegin_usingCDict(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call fastcc i64 @LZ4F_compressBegin_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef null, i64 noundef 0, ptr noundef %3, ptr noundef %4)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define i64 @LZ4F_compressUpdate(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call fastcc i64 @LZ4F_compressUpdateImpl(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i32 noundef 0)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define i64 @LZ4F_compressEnd(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i64 @LZ4F_flush(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr poison) ; 4 uses
  %i.b = icmp ult i64 %i.a, -23
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = sub i64 %2, %i.a                         ; 2 uses
  %i.d = icmp ult i64 %i.c, 4
  br i1 %i.d, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.a ; 3 uses
  store i32 0, ptr %i.e, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i32, ptr %i.g, align 8, !tbaa !33
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.k = tail call i32 @LZ4_XXH32_digest(ptr noundef nonnull %i.j) #12
  %i.l = icmp ugt i64 %i.c, 7
  br i1 %i.l, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.d
  store i32 %i.k, ptr %i.f, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.c
  %.1 = phi ptr [ %i.m, %.thread ], [ %i.f, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 0, ptr %i.n, align 4, !tbaa !34
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load i64, ptr %i.o, align 8, !tbaa !35   ; 2 uses
  %.not33 = icmp eq i64 %i.p, 0
  br i1 %.not33, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.r = load i64, ptr %i.q, align 8, !tbaa !36
  %.not34 = icmp eq i64 %i.p, %i.r
  br i1 %.not34, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.s = ptrtoint ptr %.1 to i64
  %i.t = ptrtoint ptr %1 to i64
  %i.u = sub i64 %i.s, %i.t
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.d, %bb.b, %bb.a, %bb.g
  %.130 = phi i64 [ -11, %bb.b ], [ %i.a, %bb.a ], [ -11, %bb.d ], [ %i.u, %bb.g ], [ -14, %bb.f ]
  ret i64 %.130
}

; Function Attrs: nounwind uwtable
define i64 @LZ4F_compressFrame(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #4 {
bb.a:
  %5 = alloca %struct.LZ4F_cctx_s, align 8        ; 13 uses
  %6 = alloca %union.LZ4_stream_u, align 8        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %5, i8 0, i64 216, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 88
  store i32 100, ptr %i.a, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 112
  store i64 5242880, ptr %i.b, align 8, !tbaa !38
  %i.c = icmp eq ptr %4, null                     ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !39
  %i.f = icmp slt i32 %i.e, 2
  br i1 %i.f, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.g = call i64 @LZ4F_compressFrame_usingCDict(ptr noundef nonnull %5, ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef null, ptr noundef nonnull %4)
  br label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = call ptr @LZ4_initStream(ptr noundef nonnull %6, i64 noundef 16416) #12 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 200
  store ptr %6, ptr %i.i, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 208
  store i16 1, ptr %i.j, align 8, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 210
  store i16 1, ptr %i.k, align 2, !tbaa !42
  %i.l = call i64 @LZ4F_compressFrame_usingCDict(ptr noundef nonnull %5, ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef null, ptr noundef %4) ; 2 uses
  br i1 %i.c, label %LZ4F_free.exit, label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %phi.call19 = phi i64 [ %i.g, %.thread ], [ %i.l, %bb.c ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !39
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %bb.e, label %LZ4F_free.exit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 200
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !40   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.val = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.val17 = load ptr, ptr %i.s, align 8
  %i.t = icmp eq ptr %i.q, null
  br i1 %i.t, label %LZ4F_free.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void %.val(ptr noundef %.val17, ptr noundef nonnull %i.q) #12, !inline_history !0
  br label %LZ4F_free.exit

bb.h:                                             ; preds = %bb.f
  call void @free(ptr noundef nonnull %i.q) #12
  br label %LZ4F_free.exit

LZ4F_free.exit:                                   ; preds = %bb.h, %bb.g, %bb.e, %bb.d, %bb.c
end_hunk_0
