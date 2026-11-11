Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lz4/original/lz4hc?download=true
inline.NumInlined: 563
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 15
begin_hunk_0_@LZ4_resetStreamStateHC:bb.a
  %i.b = ptrtoint ptr %0 to i64
  %i.c = and i64 %i.b, 7
  %.not.i = icmp eq i64 %i.c, 0
  %or.cond10.i = and i1 %i.a, %.not.i
  br i1 %or.cond10.i, label %LZ4HC_init_internal.exit, label %LZ4_initStreamHC.exit.thread

LZ4HC_init_internal.exit:                         ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(262192) %0, i8 0, i64 262192, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 262180
  store i16 9, ptr %i.d, align 4, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 262144
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 262152
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 262168
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 262176
  store i32 65536, ptr %i.h, align 8, !tbaa !21
  store ptr %1, ptr %i.f, align 8, !tbaa !18
  store ptr %1, ptr %i.e, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 262160
  store ptr %1, ptr %i.i, align 8, !tbaa !22
  store i32 65536, ptr %i.g, align 8, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 262172
  store i32 65536, ptr %i.j, align 4, !tbaa !23
  br label %LZ4_initStreamHC.exit.thread

LZ4_initStreamHC.exit.thread:                     ; preds = %bb.a, %LZ4HC_init_internal.exit
  %.0 = phi i32 [ 0, %LZ4HC_init_internal.exit ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define noalias noundef ptr @LZ4_createHC(ptr noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(262200) ptr @calloc(i64 noundef 1, i64 noundef 262200) #19 ; 9 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %LZ4_createStreamHC.exit.thread, label %LZ4HC_init_internal.exit

LZ4HC_init_internal.exit:                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 262180
  store i16 9, ptr %i.c, align 4, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 262168
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 262152
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 262144
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 262176
  store i32 65536, ptr %i.g, align 8, !tbaa !21
  store ptr %0, ptr %i.e, align 8, !tbaa !18
  store ptr %0, ptr %i.f, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 262160
  store ptr %0, ptr %i.h, align 8, !tbaa !22
  store i32 65536, ptr %i.d, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 262172
  store i32 65536, ptr %i.i, align 4, !tbaa !23
  br label %LZ4_createStreamHC.exit.thread

LZ4_createStreamHC.exit.thread:                   ; preds = %bb.a, %LZ4HC_init_internal.exit
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i32 @LZ4_freeHC(ptr noundef captures(address_is_null) %0) local_unnamed_addr #10 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %0) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @LZ4_compressHC2_continue(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !9
  %i.b = call fastcc i32 @LZ4HC_compress_generic(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef %4, i32 noundef 0)
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define i32 @LZ4_compressHC2_limitedOutput_continue(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !9
  %i.b = call fastcc i32 @LZ4HC_compress_generic(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %4, i32 noundef %5, i32 noundef 1)
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define ptr @LZ4_slideInputBufferHC(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 262152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 262168 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 262172
  %i.f = load i32, ptr %i.e, align 4, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 262180 ; 2 uses
  %i.h = load i16, ptr %i.g, align 4, !tbaa !24   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 262183
  %i.j = load i8, ptr %i.i, align 1, !tbaa !15
  %.not.i = icmp eq i8 %i.j, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(262192) %0, i8 0, i64 262192, i1 false)
  br label %LZ4_resetStreamHC_fast.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 262144 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !17
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.b to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = add i32 %i.d, %i.p
  store i32 %i.q, ptr %i.c, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 262184
  store ptr null, ptr %i.r, align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  br label %LZ4_resetStreamHC_fast.exit

LZ4_resetStreamHC_fast.exit:                      ; preds = %bb.b, %bb.c
  %i.s = zext i32 %i.d to i64
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds i8, ptr %i.b, i64 %i.t
  %i.v = zext i32 %i.f to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.v
  %i.x = icmp slt i16 %i.h, 1
  %i.y = tail call i16 @llvm.umin.i16(i16 %i.h, i16 12)
  %i.z = select i1 %i.x, i16 9, i16 %i.y
  store i16 %i.z, ptr %i.g, align 4, !tbaa !16
  ret ptr %i.w
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @LZ4HC_compress_generic_internal(ptr nofree noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef range(i32 0, 3) %6, i32 noundef range(i32 0, 2) %7) unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %i.m = load i32, ptr %3, align 4, !tbaa !9      ; 5 uses
  %i.n = icmp ugt i32 %i.m, 2113929216
  %i.o = icmp slt i32 %4, 1
  %or.cond = or i1 %i.o, %i.n
  br i1 %or.cond, label %bb.aew, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = icmp eq i32 %i.m, 0
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %2, align 1, !tbaa !16
  br label %bb.aew

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 262144 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !17
  %i.s = zext nneg i32 %i.m to i64                ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  store ptr %i.t, ptr %i.q, align 8, !tbaa !17
  %i.u = icmp slt i32 %5, 1
  %i.v = tail call i32 @llvm.umin.i32(i32 %5, i32 12)
  %i.w = select i1 %i.u, i32 9, i32 %i.v
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [12 x i8], ptr @k_clTable, i64 %i.x ; 2 uses
  %.sroa.04.0.copyload.i = load i64, ptr %i.y, align 4, !tbaa !9 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 262182
  %i.aa = load i8, ptr %i.z, align 2, !tbaa !78
  %.not = icmp ne i8 %i.aa, 0                     ; 6 uses
  %.neg1464 = sext i1 %.not to i32                ; 2 uses
  %.sroa.03.0.extract.trunc = trunc i64 %.sroa.04.0.copyload.i to i32
  switch i32 %.sroa.03.0.extract.trunc, label %bb.rm [
    i32 0, label %bb.e
    i32 1, label %bb.df
  ]

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 65536 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %i.s ; 6 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -12 ; 10 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 -5 ; 5 uses
  %i.af = getelementptr inbounds i8, ptr %i.ac, i64 -8 ; 4 uses
  %i.ag = zext nneg i32 %4 to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 %i.ag ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 262152
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !18 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 262168
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !19 ; 11 uses
  %i.am = ptrtoint ptr %i.af to i64
  %i.an = ptrtoint ptr %i.aj to i64               ; 6 uses
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = add i32 %i.al, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 262160
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !22 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 262172
  %i.au = load i32, ptr %i.at, align 4, !tbaa !23 ; 6 uses
  %.not.i660 = icmp ne i32 %7, 0                  ; 2 uses
  br i1 %.not.i660, label %bb.f, label %select_searchDict_function.exit.i

bb.f:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 262184
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !20 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %select_searchDict_function.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 262180
  %i.az = load i16, ptr %i.ay, align 4, !tbaa !24
  %i.ba = add i16 %i.az, -1
  %i.bb = icmp ult i16 %i.ba, 2
  %LZ4MID_searchExtDict.LZ4MID_searchHCDict.i.i = select i1 %i.bb, ptr @LZ4MID_searchExtDict, ptr @LZ4MID_searchHCDict
  br label %select_searchDict_function.exit.i

select_searchDict_function.exit.i:                ; preds = %bb.g, %bb.f, %bb.e
  %i.bc = phi ptr [ null, %bb.e ], [ null, %bb.f ], [ %LZ4MID_searchExtDict.LZ4MID_searchHCDict.i.i, %bb.g ]
  %i.bd = icmp eq i32 %6, 2                       ; 3 uses
  %spec.select.idx.i = select i1 %i.bd, i64 -5, i64 0
  %spec.select.i661 = getelementptr inbounds i8, ptr %i.ah, i64 %spec.select.idx.i ; 3 uses
  %i.be = icmp samesign ult i32 %i.m, 13
  br i1 %i.be, label %.loopexit.i, label %.lr.ph723.i

.lr.ph723.i:                                      ; preds = %select_searchDict_function.exit.i
  %i.bf = zext i32 %i.al to i64
  %i.bg = sub nsw i64 0, %i.bf
  %invariant.gep.i = getelementptr i8, ptr %i.aj, i64 %i.bg
  %i.bh = getelementptr inbounds i8, ptr %i.ac, i64 -6 ; 3 uses
  %i.bi = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 262184
  %.not.i381.i = icmp ne i32 %6, 0                ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.cq, %.lr.ph723.i
  %.0494722.i = phi ptr [ %2, %.lr.ph723.i ], [ %.2496.i, %bb.cq ] ; 20 uses
  %.0507721.i = phi ptr [ %1, %.lr.ph723.i ], [ %.1508.i, %bb.cq ] ; 14 uses
  %.0511720.i = phi ptr [ %1, %.lr.ph723.i ], [ %.6517.i, %bb.cq ] ; 27 uses
  %i.bk = ptrtoint ptr %.0511720.i to i64         ; 18 uses
  %i.bl = sub i64 %i.bk, %i.an
  %i.bm = trunc i64 %i.bl to i32                  ; 7 uses
  %i.bn = add i32 %i.al, %i.bm                    ; 9 uses
  %.val418.i = load i64, ptr %.0511720.i, align 1, !tbaa !31 ; 5 uses
  %i.bo = mul i64 %.val418.i, -3523014627193167104
  %i.bp = lshr i64 %i.bo, 50
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.bp ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !9  ; 6 uses
  store i32 %i.bn, ptr %i.bq, align 4, !tbaa !9
  %i.bs = sub i32 %i.bn, %i.br                    ; 3 uses
  %i.bt = icmp ult i32 %i.bs, 65536
  br i1 %i.bt, label %bb.i, label %.thread534.i

bb.i:                                             ; preds = %bb.h
  %.not275.i = icmp ult i32 %i.br, %i.al
  br i1 %.not275.i, label %bb.w, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bu = zext i32 %i.br to i64
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.bu ; 3 uses
  %i.bv = icmp ult ptr %.0511720.i, %i.ad
  br i1 %i.bv, label %bb.k, label %bb.m, !prof !32

bb.k:                                             ; preds = %bb.j
  %.val393.i = load i64, ptr %gep.i, align 1, !tbaa !31 ; 2 uses
  %.not.i375.i = icmp eq i64 %.val393.i, %.val418.i
  br i1 %.not.i375.i, label %.thread.i, label %bb.l

.thread.i:                                        ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %.0511720.i, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %gep.i, i64 8
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.by = xor i64 %.val393.i, %.val418.i
  %i.bz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.by, i1 true)
  %i.ca = trunc nuw nsw i64 %i.bz to i32
  %i.cb = lshr i32 %i.ca, 3
  br label %LZ4_count.exit379.i

bb.m:                                             ; preds = %.thread.i, %bb.j
  %.150.i358.i = phi ptr [ %i.bw, %.thread.i ], [ %.0511720.i, %bb.j ] ; 3 uses
  %.145.i359.i = phi ptr [ %i.bx, %.thread.i ], [ %gep.i, %bb.j ] ; 2 uses
  %i.cc = icmp ult ptr %.150.i358.i, %i.ad
  br i1 %i.cc, label %.lr.ph.i, label %._crit_edge.i, !prof !33

.lr.ph.i:                                         ; preds = %bb.m, %bb.n
  %.246.i362665.i = phi ptr [ %i.cl, %bb.n ], [ %.145.i359.i, %bb.m ] ; 2 uses
  %.251.i361664.i = phi ptr [ %i.ck, %bb.n ], [ %.150.i358.i, %bb.m ] ; 3 uses
  %.246.i362.val395.i = load i64, ptr %.246.i362665.i, align 1, !tbaa !31 ; 2 uses
  %.251.i361.val394.i = load i64, ptr %.251.i361664.i, align 1, !tbaa !31 ; 2 uses
  %.not59.i371.i = icmp eq i64 %.246.i362.val395.i, %.251.i361.val394.i
  br i1 %.not59.i371.i, label %bb.n, label %.thread522.i

.thread522.i:                                     ; preds = %.lr.ph.i
  %i.cd = xor i64 %.251.i361.val394.i, %.246.i362.val395.i
  %i.ce = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.cd, i1 true)
  %i.cf = lshr i64 %i.ce, 3
  %i.cg = getelementptr inbounds nuw i8, ptr %.251.i361664.i, i64 %i.cf
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = sub i64 %i.ch, %i.bk
  %i.cj = trunc i64 %i.ci to i32
  br label %LZ4_count.exit379.i

bb.n:                                             ; preds = %.lr.ph.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.251.i361664.i, i64 8 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.246.i362665.i, i64 8 ; 2 uses
  %i.cm = icmp ult ptr %i.ck, %i.ad
  br i1 %i.cm, label %.lr.ph.i, label %._crit_edge.i, !prof !34

._crit_edge.i:                                    ; preds = %bb.n, %bb.m
  %.251.i361.lcssa.i = phi ptr [ %.150.i358.i, %bb.m ], [ %i.ck, %bb.n ] ; 5 uses
  %.246.i362.lcssa.i = phi ptr [ %.145.i359.i, %bb.m ], [ %i.cl, %bb.n ] ; 4 uses
  %i.cn = icmp ult ptr %.251.i361.lcssa.i, %i.af
  br i1 %i.cn, label %bb.o, label %bb.q

bb.o:                                             ; preds = %._crit_edge.i
  %.246.i362.val.i = load i32, ptr %.246.i362.lcssa.i, align 1, !tbaa !26
  %.251.i361.val.i = load i32, ptr %.251.i361.lcssa.i, align 1, !tbaa !26
  %i.co = icmp eq i32 %.246.i362.val.i, %.251.i361.val.i
  br i1 %i.co, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cp = getelementptr inbounds nuw i8, ptr %.251.i361.lcssa.i, i64 4
  %i.cq = getelementptr inbounds nuw i8, ptr %.246.i362.lcssa.i, i64 4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %._crit_edge.i
  %.453.i364.i = phi ptr [ %i.cp, %bb.p ], [ %.251.i361.lcssa.i, %bb.o ], [ %.251.i361.lcssa.i, %._crit_edge.i ] ; 5 uses
  %.448.i365.i = phi ptr [ %i.cq, %bb.p ], [ %.246.i362.lcssa.i, %bb.o ], [ %.246.i362.lcssa.i, %._crit_edge.i ] ; 4 uses
  %i.cr = icmp ult ptr %.453.i364.i, %i.bh
  br i1 %i.cr, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %.448.i365.val.i = load i16, ptr %.448.i365.i, align 1, !tbaa !36
  %.453.i364.val.i = load i16, ptr %.453.i364.i, align 1, !tbaa !36
  %i.cs = icmp eq i16 %.448.i365.val.i, %.453.i364.val.i
  br i1 %i.cs, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ct = getelementptr inbounds nuw i8, ptr %.453.i364.i, i64 2
  %i.cu = getelementptr inbounds nuw i8, ptr %.448.i365.i, i64 2
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.554.i366.i = phi ptr [ %i.ct, %bb.s ], [ %.453.i364.i, %bb.r ], [ %.453.i364.i, %bb.q ] ; 4 uses
  %.5.i367.i = phi ptr [ %i.cu, %bb.s ], [ %.448.i365.i, %bb.r ], [ %.448.i365.i, %bb.q ]
  %i.cv = icmp ult ptr %.554.i366.i, %i.ae
  br i1 %i.cv, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cw = load i8, ptr %.5.i367.i, align 1, !tbaa !16
  %i.cx = load i8, ptr %.554.i366.i, align 1, !tbaa !16
  %i.cy = icmp eq i8 %i.cw, %i.cx
  %spec.select.i370.idx.i = zext i1 %i.cy to i64
  %spec.select.i370.i = getelementptr inbounds nuw i8, ptr %.554.i366.i, i64 %spec.select.i370.idx.i
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.6.i368.i = phi ptr [ %.554.i366.i, %bb.t ], [ %spec.select.i370.i, %bb.u ]
  %i.cz = ptrtoint ptr %.6.i368.i to i64
  %i.da = sub i64 %i.cz, %i.bk
  %i.db = trunc i64 %i.da to i32
  br label %LZ4_count.exit379.i

LZ4_count.exit379.i:                              ; preds = %bb.v, %.thread522.i, %bb.l
  %.4.i369.i = phi i32 [ %i.cj, %.thread522.i ], [ %i.db, %bb.v ], [ %i.cb, %bb.l ] ; 2 uses
  %i.dc = icmp ult i32 %.4.i369.i, 4
  br i1 %i.dc, label %.thread534.i, label %.thread575.i

bb.w:                                             ; preds = %bb.i
  %.not276.i = icmp ult i32 %i.br, %i.au
  br i1 %.not276.i, label %.thread534.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dd = sub nuw i32 %i.br, %i.au
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.de ; 3 uses
  %i.dg = sub nuw i32 %i.al, %i.br
  %i.dh = zext i32 %i.dg to i64
  %i.di = sub i64 %i.bi, %i.bk
  %.283.i = tail call i64 @llvm.umin.i64(i64 %i.di, i64 %i.dh) ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.0511720.i, i64 %.283.i ; 4 uses
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 -7 ; 2 uses
  %i.dl = icmp samesign ugt i64 %.283.i, 7
  br i1 %i.dl, label %bb.y, label %bb.aa, !prof !32

bb.y:                                             ; preds = %bb.x
  %.val397.i = load i64, ptr %i.df, align 1, !tbaa !31 ; 2 uses
  %.not.i353.i = icmp eq i64 %.val397.i, %.val418.i
  br i1 %.not.i353.i, label %.thread526.i, label %bb.z

.thread526.i:                                     ; preds = %bb.y
  %i.dm = getelementptr inbounds nuw i8, ptr %.0511720.i, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  br label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.do = xor i64 %.val397.i, %.val418.i
  %i.dp = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.do, i1 true)
  %i.dq = trunc nuw nsw i64 %i.dp to i32
  %i.dr = lshr i32 %i.dq, 3
  br label %LZ4_count.exit357.i

bb.aa:                                            ; preds = %.thread526.i, %bb.x
  %.150.i336.i = phi ptr [ %i.dm, %.thread526.i ], [ %.0511720.i, %bb.x ] ; 3 uses
  %.145.i337.i = phi ptr [ %i.dn, %.thread526.i ], [ %i.df, %bb.x ] ; 2 uses
  %i.ds = icmp ult ptr %.150.i336.i, %i.dk
  br i1 %i.ds, label %.lr.ph670.i, label %._crit_edge671.i, !prof !33

.lr.ph670.i:                                      ; preds = %bb.aa, %bb.ab
  %.246.i340668.i = phi ptr [ %i.eb, %bb.ab ], [ %.145.i337.i, %bb.aa ] ; 2 uses
  %.251.i339667.i = phi ptr [ %i.ea, %bb.ab ], [ %.150.i336.i, %bb.aa ] ; 3 uses
  %.246.i340.val399.i = load i64, ptr %.246.i340668.i, align 1, !tbaa !31 ; 2 uses
  %.251.i339.val398.i = load i64, ptr %.251.i339667.i, align 1, !tbaa !31 ; 2 uses
  %.not59.i349.i = icmp eq i64 %.246.i340.val399.i, %.251.i339.val398.i
  br i1 %.not59.i349.i, label %bb.ab, label %.thread530.i

.thread530.i:                                     ; preds = %.lr.ph670.i
  %i.dt = xor i64 %.251.i339.val398.i, %.246.i340.val399.i
  %i.du = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.dt, i1 true)
  %i.dv = lshr i64 %i.du, 3
  %i.dw = getelementptr inbounds nuw i8, ptr %.251.i339667.i, i64 %i.dv
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = sub i64 %i.dx, %i.bk
  %i.dz = trunc i64 %i.dy to i32
  br label %LZ4_count.exit357.i

bb.ab:                                            ; preds = %.lr.ph670.i
  %i.ea = getelementptr inbounds nuw i8, ptr %.251.i339667.i, i64 8 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.246.i340668.i, i64 8 ; 2 uses
  %i.ec = icmp ult ptr %i.ea, %i.dk
  br i1 %i.ec, label %.lr.ph670.i, label %._crit_edge671.i, !prof !34

._crit_edge671.i:                                 ; preds = %bb.ab, %bb.aa
  %.251.i339.lcssa.i = phi ptr [ %.150.i336.i, %bb.aa ], [ %i.ea, %bb.ab ] ; 5 uses
  %.246.i340.lcssa.i = phi ptr [ %.145.i337.i, %bb.aa ], [ %i.eb, %bb.ab ] ; 4 uses
  %i.ed = getelementptr inbounds i8, ptr %i.dj, i64 -3
  %i.ee = icmp ult ptr %.251.i339.lcssa.i, %i.ed
  br i1 %i.ee, label %bb.ac, label %bb.ae
end_hunk_0
begin_hunk_1_@LZ4HC_compress_generic_internal:bb.a

bb.ap:                                            ; preds = %.lr.ph677.i
  %i.fu = getelementptr inbounds nuw i8, ptr %.251.i317674.i, i64 8 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.246.i318675.i, i64 8 ; 2 uses
  %i.fw = icmp ult ptr %i.fu, %i.ad
  br i1 %i.fw, label %.lr.ph677.i, label %._crit_edge678.i, !prof !34

._crit_edge678.i:                                 ; preds = %bb.ap, %bb.ao
  %.251.i317.lcssa.i = phi ptr [ %.150.i314.i, %bb.ao ], [ %i.fu, %bb.ap ] ; 5 uses
  %.246.i318.lcssa.i = phi ptr [ %.145.i315.i, %bb.ao ], [ %i.fv, %bb.ap ] ; 4 uses
  %i.fx = icmp ult ptr %.251.i317.lcssa.i, %i.af
  br i1 %i.fx, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %._crit_edge678.i
  %.246.i318.val.i = load i32, ptr %.246.i318.lcssa.i, align 1, !tbaa !26
  %.251.i317.val.i = load i32, ptr %.251.i317.lcssa.i, align 1, !tbaa !26
  %i.fy = icmp eq i32 %.246.i318.val.i, %.251.i317.val.i
  br i1 %i.fy, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.fz = getelementptr inbounds nuw i8, ptr %.251.i317.lcssa.i, i64 4
  %i.ga = getelementptr inbounds nuw i8, ptr %.246.i318.lcssa.i, i64 4
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %._crit_edge678.i
  %.453.i320.i = phi ptr [ %i.fz, %bb.ar ], [ %.251.i317.lcssa.i, %bb.aq ], [ %.251.i317.lcssa.i, %._crit_edge678.i ] ; 5 uses
  %.448.i321.i = phi ptr [ %i.ga, %bb.ar ], [ %.246.i318.lcssa.i, %bb.aq ], [ %.246.i318.lcssa.i, %._crit_edge678.i ] ; 4 uses
  %i.gb = icmp ult ptr %.453.i320.i, %i.bh
  br i1 %i.gb, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %.448.i321.val.i = load i16, ptr %.448.i321.i, align 1, !tbaa !36
  %.453.i320.val.i = load i16, ptr %.453.i320.i, align 1, !tbaa !36
  %i.gc = icmp eq i16 %.448.i321.val.i, %.453.i320.val.i
  br i1 %i.gc, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.gd = getelementptr inbounds nuw i8, ptr %.453.i320.i, i64 2
  %i.ge = getelementptr inbounds nuw i8, ptr %.448.i321.i, i64 2
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as
  %.554.i322.i = phi ptr [ %i.gd, %bb.au ], [ %.453.i320.i, %bb.at ], [ %.453.i320.i, %bb.as ] ; 4 uses
  %.5.i323.i = phi ptr [ %i.ge, %bb.au ], [ %.448.i321.i, %bb.at ], [ %.448.i321.i, %bb.as ]
  %i.gf = icmp ult ptr %.554.i322.i, %i.ae
  br i1 %i.gf, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.gg = load i8, ptr %.5.i323.i, align 1, !tbaa !16
  %i.gh = load i8, ptr %.554.i322.i, align 1, !tbaa !16
  %i.gi = icmp eq i8 %i.gg, %i.gh
  %spec.select.i326.idx.i = zext i1 %i.gi to i64
  %spec.select.i326.i = getelementptr inbounds nuw i8, ptr %.554.i322.i, i64 %spec.select.i326.idx.i
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.6.i324.i = phi ptr [ %.554.i322.i, %bb.av ], [ %spec.select.i326.i, %bb.aw ]
  %i.gj = ptrtoint ptr %.6.i324.i to i64
  %i.gk = sub i64 %i.gj, %i.bk
  %i.gl = trunc i64 %i.gk to i32
  br label %LZ4_count.exit335.i

LZ4_count.exit335.i:                              ; preds = %bb.ax, %.thread544.i, %bb.an
  %.4.i325.i = phi i32 [ %i.ft, %.thread544.i ], [ %i.gl, %bb.ax ], [ %i.fl, %bb.an ] ; 4 uses
  %i.gm = icmp ult i32 %.4.i325.i, 4
  br i1 %i.gm, label %.thread580.i, label %bb.ay

bb.ay:                                            ; preds = %LZ4_count.exit335.i
  %i.gn = getelementptr inbounds nuw i8, ptr %.0511720.i, i64 1 ; 7 uses
  %.val417.i = load i64, ptr %i.gn, align 1, !tbaa !31 ; 3 uses
  %i.go = mul i64 %.val417.i, -3523014627193167104
  %i.gp = lshr i64 %i.go, 50
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.gp ; 2 uses
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !9  ; 3 uses
  %i.gs = add i32 %i.bn, 1                        ; 2 uses
  %i.gt = sub i32 %i.gs, %i.gr                    ; 2 uses
  %i.gu = icmp ult i32 %i.gt, 65536
  %.not279.i = icmp uge i32 %i.gr, %i.al
  %or.cond.not649.i = select i1 %i.gu, i1 %.not279.i, i1 false
  %or.cond643.i = and i1 %i.ff, %or.cond.not649.i
  br i1 %or.cond643.i, label %bb.az, label %.thread575.i, !prof !79

bb.az:                                            ; preds = %bb.ay
  %i.gv = sub nuw i32 %i.gr, %i.al
  %i.gw = zext i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.gw ; 3 uses
  %i.gy = icmp ult ptr %i.gn, %i.ad
  br i1 %i.gy, label %bb.ba, label %bb.bc, !prof !32

bb.ba:                                            ; preds = %bb.az
  %.val405.i = load i64, ptr %i.gx, align 1, !tbaa !31 ; 2 uses
  %.not.i309.i = icmp eq i64 %.val405.i, %.val417.i
  br i1 %.not.i309.i, label %.thread548.i, label %bb.bb

.thread548.i:                                     ; preds = %bb.ba
  %i.gz = getelementptr inbounds nuw i8, ptr %.0511720.i, i64 9
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  br label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.hb = xor i64 %.val405.i, %.val417.i
  %i.hc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.hb, i1 true)
  %i.hd = trunc nuw nsw i64 %i.hc to i32
  %i.he = lshr i32 %i.hd, 3
  br label %LZ4_count.exit313.i

bb.bc:                                            ; preds = %.thread548.i, %bb.az
  %.150.i292.i = phi ptr [ %i.gz, %.thread548.i ], [ %i.gn, %bb.az ] ; 3 uses
  %.145.i293.i = phi ptr [ %i.ha, %.thread548.i ], [ %i.gx, %bb.az ] ; 2 uses
  %i.hf = icmp ult ptr %.150.i292.i, %i.ad
  br i1 %i.hf, label %.lr.ph684.i, label %._crit_edge685.i, !prof !33

.lr.ph684.i:                                      ; preds = %bb.bc, %bb.bd
  %.246.i296682.i = phi ptr [ %i.hp, %bb.bd ], [ %.145.i293.i, %bb.bc ] ; 2 uses
  %.251.i295681.i = phi ptr [ %i.ho, %bb.bd ], [ %.150.i292.i, %bb.bc ] ; 3 uses
  %.246.i296.val407.i = load i64, ptr %.246.i296682.i, align 1, !tbaa !31 ; 2 uses
  %.251.i295.val406.i = load i64, ptr %.251.i295681.i, align 1, !tbaa !31 ; 2 uses
  %.not59.i305.i = icmp eq i64 %.246.i296.val407.i, %.251.i295.val406.i
  br i1 %.not59.i305.i, label %bb.bd, label %.thread552.i

.thread552.i:                                     ; preds = %.lr.ph684.i
  %i.hg = xor i64 %.251.i295.val406.i, %.246.i296.val407.i
  %i.hh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.hg, i1 true)
  %i.hi = lshr i64 %i.hh, 3
  %i.hj = getelementptr inbounds nuw i8, ptr %.251.i295681.i, i64 %i.hi
  %i.hk = ptrtoint ptr %i.hj to i64
  %i.hl = ptrtoint ptr %i.gn to i64
  %i.hm = sub i64 %i.hk, %i.hl
  %i.hn = trunc i64 %i.hm to i32
  br label %LZ4_count.exit313.i

bb.bd:                                            ; preds = %.lr.ph684.i
  %i.ho = getelementptr inbounds nuw i8, ptr %.251.i295681.i, i64 8 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.246.i296682.i, i64 8 ; 2 uses
  %i.hq = icmp ult ptr %i.ho, %i.ad
  br i1 %i.hq, label %.lr.ph684.i, label %._crit_edge685.i, !prof !34

._crit_edge685.i:                                 ; preds = %bb.bd, %bb.bc
  %.251.i295.lcssa.i = phi ptr [ %.150.i292.i, %bb.bc ], [ %i.ho, %bb.bd ] ; 5 uses
  %.246.i296.lcssa.i = phi ptr [ %.145.i293.i, %bb.bc ], [ %i.hp, %bb.bd ] ; 4 uses
  %i.hr = icmp ult ptr %.251.i295.lcssa.i, %i.af
  br i1 %i.hr, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %._crit_edge685.i
  %.246.i296.val.i = load i32, ptr %.246.i296.lcssa.i, align 1, !tbaa !26
  %.251.i295.val.i = load i32, ptr %.251.i295.lcssa.i, align 1, !tbaa !26
  %i.hs = icmp eq i32 %.246.i296.val.i, %.251.i295.val.i
  br i1 %i.hs, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ht = getelementptr inbounds nuw i8, ptr %.251.i295.lcssa.i, i64 4
  %i.hu = getelementptr inbounds nuw i8, ptr %.246.i296.lcssa.i, i64 4
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %._crit_edge685.i
  %.453.i298.i = phi ptr [ %i.ht, %bb.bf ], [ %.251.i295.lcssa.i, %bb.be ], [ %.251.i295.lcssa.i, %._crit_edge685.i ] ; 5 uses
  %.448.i299.i = phi ptr [ %i.hu, %bb.bf ], [ %.246.i296.lcssa.i, %bb.be ], [ %.246.i296.lcssa.i, %._crit_edge685.i ] ; 4 uses
  %i.hv = icmp ult ptr %.453.i298.i, %i.bh
  br i1 %i.hv, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %.448.i299.val.i = load i16, ptr %.448.i299.i, align 1, !tbaa !36
  %.453.i298.val.i = load i16, ptr %.453.i298.i, align 1, !tbaa !36
  %i.hw = icmp eq i16 %.448.i299.val.i, %.453.i298.val.i
  br i1 %i.hw, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.hx = getelementptr inbounds nuw i8, ptr %.453.i298.i, i64 2
  %i.hy = getelementptr inbounds nuw i8, ptr %.448.i299.i, i64 2
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bg
  %.554.i300.i = phi ptr [ %i.hx, %bb.bi ], [ %.453.i298.i, %bb.bh ], [ %.453.i298.i, %bb.bg ] ; 4 uses
  %.5.i301.i = phi ptr [ %i.hy, %bb.bi ], [ %.448.i299.i, %bb.bh ], [ %.448.i299.i, %bb.bg ]
  %i.hz = icmp ult ptr %.554.i300.i, %i.ae
  br i1 %i.hz, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.ia = load i8, ptr %.5.i301.i, align 1, !tbaa !16
  %i.ib = load i8, ptr %.554.i300.i, align 1, !tbaa !16
  %i.ic = icmp eq i8 %i.ia, %i.ib
  %spec.select.i304.idx.i = zext i1 %i.ic to i64
  %spec.select.i304.i = getelementptr inbounds nuw i8, ptr %.554.i300.i, i64 %spec.select.i304.idx.i
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.6.i302.i = phi ptr [ %.554.i300.i, %bb.bj ], [ %spec.select.i304.i, %bb.bk ]
  %i.id = ptrtoint ptr %.6.i302.i to i64
  %i.ie = ptrtoint ptr %i.gn to i64
  %i.if = sub i64 %i.id, %i.ie
  %i.ig = trunc i64 %i.if to i32
  br label %LZ4_count.exit313.i

LZ4_count.exit313.i:                              ; preds = %bb.bl, %.thread552.i, %bb.bb
  %.4.i303.i = phi i32 [ %i.hn, %.thread552.i ], [ %i.ig, %bb.bl ], [ %i.he, %bb.bb ] ; 2 uses
  %i.ih = icmp ugt i32 %.4.i303.i, %.4.i325.i
  br i1 %i.ih, label %bb.bm, label %.thread575.i

bb.bm:                                            ; preds = %LZ4_count.exit313.i
  store i32 %i.gs, ptr %i.gq, align 4, !tbaa !9
  %.pre.i = ptrtoint ptr %i.gn to i64             ; 2 uses
  %.pre803.i = sub i64 %.pre.i, %i.an
  %.pre805.i = trunc i64 %.pre803.i to i32
  br label %.thread575.i

bb.bn:                                            ; preds = %bb.ak
  %.not278.i = icmp ult i32 %i.ez, %i.au
  br i1 %.not278.i, label %.thread580.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ii = sub nuw i32 %i.ez, %i.au
  %i.ij = zext i32 %i.ii to i64
  %i.ik = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ij ; 3 uses
  %i.il = sub nuw i32 %i.al, %i.ez
  %i.im = zext i32 %i.il to i64
  %i.in = sub i64 %i.bi, %i.bk
  %.284.i = tail call i64 @llvm.umin.i64(i64 %i.in, i64 %i.im) ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.0511720.i, i64 %.284.i ; 4 uses
  %i.ip = getelementptr inbounds i8, ptr %i.io, i64 -7 ; 2 uses
  %i.iq = icmp samesign ugt i64 %.284.i, 7
  br i1 %i.iq, label %bb.bp, label %bb.br, !prof !32

bb.bp:                                            ; preds = %bb.bo
  %.val409.i = load i64, ptr %i.ik, align 1, !tbaa !31 ; 2 uses
  %.val408.i = load i64, ptr %.0511720.i, align 1, !tbaa !31 ; 2 uses
  %.not.i.i679 = icmp eq i64 %.val409.i, %.val408.i
  br i1 %.not.i.i679, label %.thread566.i, label %bb.bq

.thread566.i:                                     ; preds = %bb.bp
  %i.ir = getelementptr inbounds nuw i8, ptr %.0511720.i, i64 8
  %i.is = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  br label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.it = xor i64 %.val408.i, %.val409.i
  %i.iu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.it, i1 true)
  %i.iv = trunc nuw nsw i64 %i.iu to i32
  %i.iw = lshr i32 %i.iv, 3
  br label %LZ4_count.exit.i675

bb.br:                                            ; preds = %.thread566.i, %bb.bo
  %.150.i.i668 = phi ptr [ %i.ir, %.thread566.i ], [ %.0511720.i, %bb.bo ] ; 3 uses
  %.145.i.i669 = phi ptr [ %i.is, %.thread566.i ], [ %i.ik, %bb.bo ] ; 2 uses
  %i.ix = icmp ult ptr %.150.i.i668, %i.ip
  br i1 %i.ix, label %.lr.ph691.i, label %._crit_edge692.i, !prof !33

.lr.ph691.i:                                      ; preds = %bb.br, %bb.bs
  %.246.i689.i = phi ptr [ %i.jg, %bb.bs ], [ %.145.i.i669, %bb.br ] ; 2 uses
  %.251.i688.i = phi ptr [ %i.jf, %bb.bs ], [ %.150.i.i668, %bb.br ] ; 3 uses
  %.246.i.val411.i = load i64, ptr %.246.i689.i, align 1, !tbaa !31 ; 2 uses
  %.251.i.val410.i = load i64, ptr %.251.i688.i, align 1, !tbaa !31 ; 2 uses
  %.not59.i.i678 = icmp eq i64 %.246.i.val411.i, %.251.i.val410.i
  br i1 %.not59.i.i678, label %bb.bs, label %.thread570.i

.thread570.i:                                     ; preds = %.lr.ph691.i
  %i.iy = xor i64 %.251.i.val410.i, %.246.i.val411.i
  %i.iz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.iy, i1 true)
  %i.ja = lshr i64 %i.iz, 3
  %i.jb = getelementptr inbounds nuw i8, ptr %.251.i688.i, i64 %i.ja
  %i.jc = ptrtoint ptr %i.jb to i64
  %i.jd = sub i64 %i.jc, %i.bk
  %i.je = trunc i64 %i.jd to i32
  br label %LZ4_count.exit.i675

bb.bs:                                            ; preds = %.lr.ph691.i
  %i.jf = getelementptr inbounds nuw i8, ptr %.251.i688.i, i64 8 ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.246.i689.i, i64 8 ; 2 uses
  %i.jh = icmp ult ptr %i.jf, %i.ip
  br i1 %i.jh, label %.lr.ph691.i, label %._crit_edge692.i, !prof !34

._crit_edge692.i:                                 ; preds = %bb.bs, %bb.br
  %.251.i.lcssa.i = phi ptr [ %.150.i.i668, %bb.br ], [ %i.jf, %bb.bs ] ; 5 uses
  %.246.i.lcssa.i = phi ptr [ %.145.i.i669, %bb.br ], [ %i.jg, %bb.bs ] ; 4 uses
  %i.ji = getelementptr inbounds i8, ptr %i.io, i64 -3
  %i.jj = icmp ult ptr %.251.i.lcssa.i, %i.ji
  br i1 %i.jj, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %._crit_edge692.i
  %.246.i.val.i = load i32, ptr %.246.i.lcssa.i, align 1, !tbaa !26
  %.251.i.val.i = load i32, ptr %.251.i.lcssa.i, align 1, !tbaa !26
  %i.jk = icmp eq i32 %.246.i.val.i, %.251.i.val.i
  br i1 %i.jk, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.jl = getelementptr inbounds nuw i8, ptr %.251.i.lcssa.i, i64 4
  %i.jm = getelementptr inbounds nuw i8, ptr %.246.i.lcssa.i, i64 4
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %._crit_edge692.i
  %.453.i.i670 = phi ptr [ %i.jl, %bb.bu ], [ %.251.i.lcssa.i, %bb.bt ], [ %.251.i.lcssa.i, %._crit_edge692.i ] ; 5 uses
  %.448.i.i671 = phi ptr [ %i.jm, %bb.bu ], [ %.246.i.lcssa.i, %bb.bt ], [ %.246.i.lcssa.i, %._crit_edge692.i ] ; 4 uses
  %i.jn = getelementptr inbounds i8, ptr %i.io, i64 -1
  %i.jo = icmp ult ptr %.453.i.i670, %i.jn
  br i1 %i.jo, label %bb.bw, label %bb.by

bb.bw:                                            ; preds = %bb.bv
  %.448.i.val.i = load i16, ptr %.448.i.i671, align 1, !tbaa !36
  %.453.i.val.i = load i16, ptr %.453.i.i670, align 1, !tbaa !36
  %i.jp = icmp eq i16 %.448.i.val.i, %.453.i.val.i
  br i1 %i.jp, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.jq = getelementptr inbounds nuw i8, ptr %.453.i.i670, i64 2
  %i.jr = getelementptr inbounds nuw i8, ptr %.448.i.i671, i64 2
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw, %bb.bv
  %.554.i.i672 = phi ptr [ %i.jq, %bb.bx ], [ %.453.i.i670, %bb.bw ], [ %.453.i.i670, %bb.bv ] ; 4 uses
  %.5.i.i673 = phi ptr [ %i.jr, %bb.bx ], [ %.448.i.i671, %bb.bw ], [ %.448.i.i671, %bb.bv ]
  %i.js = icmp ult ptr %.554.i.i672, %i.io
  br i1 %i.js, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.jt = load i8, ptr %.5.i.i673, align 1, !tbaa !16
  %i.ju = load i8, ptr %.554.i.i672, align 1, !tbaa !16
  %i.jv = icmp eq i8 %i.jt, %i.ju
  %spec.select.i.idx.i = zext i1 %i.jv to i64
  %spec.select.i.i677 = getelementptr inbounds nuw i8, ptr %.554.i.i672, i64 %spec.select.i.idx.i
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.6.i.i674 = phi ptr [ %.554.i.i672, %bb.by ], [ %spec.select.i.i677, %bb.bz ]
  %i.jw = ptrtoint ptr %.6.i.i674 to i64
  %i.jx = sub i64 %i.jw, %i.bk
  %i.jy = trunc i64 %i.jx to i32
  br label %LZ4_count.exit.i675

LZ4_count.exit.i675:                              ; preds = %bb.ca, %.thread570.i, %bb.bq
  %.4.i.i676 = phi i32 [ %i.je, %.thread570.i ], [ %i.jy, %bb.ca ], [ %i.iw, %bb.bq ] ; 2 uses
  %i.jz = icmp ult i32 %.4.i.i676, 4
  br i1 %i.jz, label %.thread580.i, label %.thread575.i

.thread580.i:                                     ; preds = %LZ4_count.exit.i675, %bb.bn, %LZ4_count.exit335.i, %.thread534.i
  %i.ka = sub i32 %i.bn, %i.au
  %i.kb = icmp ult i32 %i.ka, 65527
  %or.cond287.i = select i1 %.not.i660, i1 %i.kb, i1 false
  br i1 %or.cond287.i, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %.thread580.i
  %i.kc = load ptr, ptr %i.bj, align 8, !tbaa !20
  %i.kd = tail call { i64, i32 } %i.bc(ptr noundef nonnull %.0511720.i, i32 noundef %i.bn, ptr noundef nonnull %i.ae, ptr noundef %i.kc, i32 noundef %i.au) #17, !callees !80, !inline_history !41
  %.fca.0.extract.i663 = extractvalue { i64, i32 } %i.kd, 0 ; 2 uses
  %.sroa.039.4.extract.shift.i = lshr i64 %.fca.0.extract.i663, 32
  %.sroa.039.4.extract.trunc.i = trunc nuw i64 %.sroa.039.4.extract.shift.i to i32 ; 2 uses
  %i.ke = icmp sgt i32 %.sroa.039.4.extract.trunc.i, 3
  %.sroa.039.0.extract.trunc.i = trunc i64 %.fca.0.extract.i663 to i32
  br i1 %i.ke, label %.thread575.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %.thread580.i
  %i.kf = ptrtoint ptr %.0507721.i to i64
  %i.kg = sub i64 %i.bk, %i.kf
  %i.kh = ashr i64 %i.kg, 9
  %i.ki = getelementptr i8, ptr %.0511720.i, i64 %i.kh
  %i.kj = getelementptr i8, ptr %i.ki, i64 1
  br label %bb.cq, !llvm.loop !42

.thread575.i:                                     ; preds = %bb.cb, %LZ4_count.exit.i675, %bb.bm, %LZ4_count.exit313.i, %bb.ay, %LZ4_count.exit357.i, %LZ4_count.exit379.i
  %.pre-phi806.i = phi i32 [ %i.bm, %LZ4_count.exit313.i ], [ %.pre805.i, %bb.bm ], [ %i.bm, %LZ4_count.exit.i675 ], [ %i.bm, %LZ4_count.exit357.i ], [ %i.bm, %LZ4_count.exit379.i ], [ %i.bm, %bb.ay ], [ %i.bm, %bb.cb ]
  %.pre-phi.i = phi i64 [ %i.bk, %LZ4_count.exit313.i ], [ %.pre.i, %bb.bm ], [ %i.bk, %LZ4_count.exit.i675 ], [ %i.bk, %LZ4_count.exit357.i ], [ %i.bk, %LZ4_count.exit379.i ], [ %i.bk, %bb.ay ], [ %i.bk, %bb.cb ] ; 2 uses
  %.4515.i = phi ptr [ %.0511720.i, %LZ4_count.exit313.i ], [ %i.gn, %bb.bm ], [ %.0511720.i, %LZ4_count.exit.i675 ], [ %.0511720.i, %LZ4_count.exit357.i ], [ %.0511720.i, %LZ4_count.exit379.i ], [ %.0511720.i, %bb.ay ], [ %.0511720.i, %bb.cb ] ; 5 uses
  %.10239.i = phi i32 [ %.4.i325.i, %LZ4_count.exit313.i ], [ %.4.i303.i, %bb.bm ], [ %.4.i.i676, %LZ4_count.exit.i675 ], [ %.4.i347.i, %LZ4_count.exit357.i ], [ %.4.i369.i, %LZ4_count.exit379.i ], [ %.4.i325.i, %bb.ay ], [ %.sroa.039.4.extract.trunc.i, %bb.cb ] ; 3 uses
  %.13.i = phi i32 [ %i.fa, %LZ4_count.exit313.i ], [ %i.gt, %bb.bm ], [ %i.fa, %LZ4_count.exit.i675 ], [ %i.bs, %LZ4_count.exit357.i ], [ %i.bs, %LZ4_count.exit379.i ], [ %i.fa, %bb.ay ], [ %.sroa.039.0.extract.trunc.i, %bb.cb ] ; 6 uses
  %i.kk = icmp ugt ptr %.4515.i, %.0507721.i
  %i.kl = icmp ult i32 %.13.i, %.pre-phi806.i
  %i.km = and i1 %i.kk, %i.kl
  br i1 %i.km, label %.lr.ph697.i, label %.critedge.i664

.lr.ph697.i:                                      ; preds = %.thread575.i
  %i.kn = xor i32 %.13.i, -1
  %i.ko = sext i32 %i.kn to i64                   ; 2 uses
  %8 = getelementptr inbounds i8, ptr %.4515.i, i64 -1 ; 5 uses
  %9 = load i8, ptr %8, align 1, !tbaa !16
  %10 = getelementptr inbounds i8, ptr %.4515.i, i64 %i.ko
  %11 = load i8, ptr %10, align 1, !tbaa !16
  %12 = icmp eq i8 %9, %11
  br i1 %12, label %.lr.ph2147.preheader, label %.critedge.i664

.lr.ph2147.preheader:                             ; preds = %.lr.ph697.i
  %13 = add i32 %.10239.i, 1                      ; 2 uses
  %14 = icmp ugt ptr %8, %.0507721.i
  %15 = ptrtoint ptr %8 to i64                    ; 3 uses
  %16 = sub i64 %15, %i.an
  %17 = trunc i64 %16 to i32
  %18 = icmp ult i32 %.13.i, %17
  %19 = and i1 %14, %18
  br i1 %19, label %.lr.ph4066, label %..critedge.i664.loopexit_crit_edge2151, !llvm.loop !43

.lr.ph4066:                                       ; preds = %.lr.ph2147.preheader
  br label %bb.cd, !llvm.loop !43

bb.cd:                                            ; preds = %.lr.ph4066, %.lr.ph2147
  %20 = phi i64 [ %15, %.lr.ph4066 ], [ %i.ky, %.lr.ph2147 ]
  %i.kp = phi i32 [ %13, %.lr.ph4066 ], [ %i.kw, %.lr.ph2147 ] ; 2 uses
  %i.kq = phi ptr [ %8, %.lr.ph4066 ], [ %i.kr, %.lr.ph2147 ] ; 3 uses
  %i.kr = getelementptr inbounds i8, ptr %i.kq, i64 -1 ; 5 uses
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !16
  %i.kt = getelementptr inbounds i8, ptr %i.kq, i64 %i.ko
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !16
  %i.kv = icmp eq i8 %i.ks, %i.ku
  br i1 %i.kv, label %.lr.ph2147, label %.critedge.i664, !llvm.loop !43

.lr.ph2147:                                       ; preds = %bb.cd
  %i.kw = add i32 %i.kp, 1                        ; 2 uses
  %i.kx = icmp ugt ptr %i.kr, %.0507721.i
  %i.ky = ptrtoint ptr %i.kr to i64               ; 3 uses
  %i.kz = sub i64 %i.ky, %i.an
  %i.la = trunc i64 %i.kz to i32
  %i.lb = icmp ult i32 %.13.i, %i.la
  %i.lc = and i1 %i.kx, %i.lb
  br i1 %i.lc, label %bb.cd, label %.lr.ph2147...critedge.i664.loopexit_crit_edge2151_crit_edge, !llvm.loop !43

.lr.ph2147...critedge.i664.loopexit_crit_edge2151_crit_edge: ; preds = %.lr.ph2147
  br label %..critedge.i664.loopexit_crit_edge2151, !llvm.loop !43

..critedge.i664.loopexit_crit_edge2151:           ; preds = %.lr.ph2147...critedge.i664.loopexit_crit_edge2151_crit_edge, %.lr.ph2147.preheader
  %.lcssa3800 = phi ptr [ %i.kr, %.lr.ph2147...critedge.i664.loopexit_crit_edge2151_crit_edge ], [ %8, %.lr.ph2147.preheader ]
  %.lcssa3798 = phi i32 [ %i.kw, %.lr.ph2147...critedge.i664.loopexit_crit_edge2151_crit_edge ], [ %13, %.lr.ph2147.preheader ]
  %.lcssa3796 = phi i64 [ %i.ky, %.lr.ph2147...critedge.i664.loopexit_crit_edge2151_crit_edge ], [ %15, %.lr.ph2147.preheader ]
  br label %.critedge.i664, !llvm.loop !43

.critedge.i664:                                   ; preds = %bb.cd, %.lr.ph697.i, %..critedge.i664.loopexit_crit_edge2151, %.thread575.i
  %.5516.lcssa.i = phi ptr [ %.4515.i, %.thread575.i ], [ %.4515.i, %.lr.ph697.i ], [ %.lcssa3800, %..critedge.i664.loopexit_crit_edge2151 ], [ %i.kq, %bb.cd ] ; 6 uses
  %.11240.lcssa.i = phi i32 [ %.10239.i, %.thread575.i ], [ %.10239.i, %.lr.ph697.i ], [ %.lcssa3798, %..critedge.i664.loopexit_crit_edge2151 ], [ %i.kp, %bb.cd ] ; 2 uses
  %.lcssa.i = phi i64 [ %.pre-phi.i, %.thread575.i ], [ %.pre-phi.i, %.lr.ph697.i ], [ %.lcssa3796, %..critedge.i664.loopexit_crit_edge2151 ], [ %20, %bb.cd ] ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %.5516.lcssa.i, i64 1 ; 2 uses
  %.val416.i = load i64, ptr %i.ld, align 1, !tbaa !31
  %i.le = mul i64 %.val416.i, -3523014627193167104
  %i.lf = lshr i64 %i.le, 50
  %i.lg = add i32 %i.bn, 1                        ; 2 uses
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.lf
  store i32 %i.lg, ptr %i.lh, align 4, !tbaa !9
  %i.li = getelementptr inbounds nuw i8, ptr %.5516.lcssa.i, i64 2
  %.val415.i = load i64, ptr %i.li, align 1, !tbaa !31
  %i.lj = mul i64 %.val415.i, -3523014627193167104
  %i.lk = lshr i64 %i.lj, 50
  %i.ll = add i32 %i.bn, 2
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.lk
  store i32 %i.ll, ptr %i.lm, align 4, !tbaa !9
  %.val421.i = load i32, ptr %i.ld, align 1, !tbaa !26
  %i.ln = mul i32 %.val421.i, -1640531535
  %i.lo = lshr i32 %i.ln, 18
  %i.lp = zext nneg i32 %i.lo to i64
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.lp
  store i32 %i.lg, ptr %i.lq, align 4, !tbaa !9
  %i.lr = getelementptr i8, ptr %.0494722.i, i64 1 ; 7 uses
  %i.ls = ptrtoint ptr %.0507721.i to i64         ; 8 uses
  %i.lt = sub i64 %.lcssa.i, %i.ls                ; 8 uses
  %i.lu = udiv i64 %i.lt, 255
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.lu
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.lt
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  %i.ly = icmp ugt ptr %i.lx, %spec.select.i661
  %or.cond.i.i = select i1 %.not.i381.i, i1 %i.ly, i1 false
  br i1 %or.cond.i.i, label %bb.cv, label %bb.ce

bb.ce:                                            ; preds = %.critedge.i664
  %i.lz = icmp ugt i64 %i.lt, 14
  br i1 %i.lz, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.ma = add i64 %i.lt, -15                      ; 2 uses
  store i8 -16, ptr %.0494722.i, align 1, !tbaa !16
  %i.mb = icmp ugt i64 %i.ma, 254
  br i1 %i.mb, label %.lr.ph708.preheader.i, label %._crit_edge709.i

.lr.ph708.preheader.i:                            ; preds = %bb.cf
  %i.mc = add i64 %i.lt, -270                     ; 2 uses
  %i.md = udiv i64 %i.mc, 255                     ; 3 uses
  %i.me = add nuw nsw i64 %i.md, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.lr, i8 -1, i64 %i.me, i1 false), !tbaa !16
  %scevgep.i = getelementptr i8, ptr %.0494722.i, i64 2
  %scevgep786.i = getelementptr i8, ptr %scevgep.i, i64 %i.md
  %.neg.i667 = mul i64 %i.md, -255
  %i.mf = add i64 %.neg.i667, %i.mc
  br label %._crit_edge709.i

._crit_edge709.i:                                 ; preds = %.lr.ph708.preheader.i, %bb.cf
  %.15.lcssa.i = phi ptr [ %i.lr, %bb.cf ], [ %scevgep786.i, %.lr.ph708.preheader.i ] ; 2 uses
  %.053.i387.lcssa.i = phi i64 [ %i.ma, %bb.cf ], [ %i.mf, %.lr.ph708.preheader.i ]
  %i.mg = trunc nuw i64 %.053.i387.lcssa.i to i8
  %i.mh = getelementptr inbounds nuw i8, ptr %.15.lcssa.i, i64 1
  store i8 %i.mg, ptr %.15.lcssa.i, align 1, !tbaa !16
  br label %.critedge.i383.i

bb.cg:                                            ; preds = %bb.ce
  %.tr.i382.i = trunc nuw nsw i64 %i.lt to i8
  %i.mi = shl nuw i8 %.tr.i382.i, 4
  store i8 %i.mi, ptr %.0494722.i, align 1, !tbaa !16
  br label %.critedge.i383.i

.critedge.i383.i:                                 ; preds = %bb.cg, %._crit_edge709.i
  %.11503.i = phi ptr [ %i.mh, %._crit_edge709.i ], [ %i.lr, %bb.cg ] ; 6 uses
  %.11503.i4243 = ptrtoaddr ptr %.11503.i to i64  ; 4 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %.11503.i, i64 %i.lt ; 3 uses
  %i.mk = add i64 %.lcssa.i, %.11503.i4243
  %i.ml = sub i64 %i.mk, %i.ls
  %i.mm = add nuw i64 %.11503.i4243, 8
  %i.mn = tail call i64 @llvm.umax.i64(i64 %i.ml, i64 %i.mm)
  %i.mo = xor i64 %.11503.i4243, -1
  %i.mp = add i64 %i.mn, %i.mo                    ; 2 uses
  %i.mq = lshr i64 %i.mp, 3
  %i.mr = add nuw nsw i64 %i.mq, 1                ; 2 uses
  %min.iters.check4245 = icmp ult i64 %i.mp, 24
  %i.ms = sub i64 %i.ls, %.11503.i4243
  %diff.check4247 = icmp ugt i64 %i.ms, -32
  %or.cond4350 = select i1 %min.iters.check4245, i1 true, i1 %diff.check4247
  br i1 %or.cond4350, label %scalar.ph4244.preheader, label %vector.ph4248

vector.ph4248:                                    ; preds = %.critedge.i383.i
  %n.vec4249 = and i64 %i.mr, 4611686018427387900 ; 3 uses
  %i.mt = shl i64 %n.vec4249, 3                   ; 2 uses
  %i.mu = getelementptr i8, ptr %.11503.i, i64 %i.mt
  %i.mv = getelementptr i8, ptr %.0507721.i, i64 %i.mt
  br label %vector.body4250

vector.body4250:                                  ; preds = %vector.body4250, %vector.ph4248
  %index4251 = phi i64 [ 0, %vector.ph4248 ], [ %index.next4256, %vector.body4250 ] ; 2 uses
  %i.mw = shl i64 %index4251, 3                   ; 2 uses
  %next.gep4252 = getelementptr i8, ptr %.11503.i, i64 %i.mw ; 2 uses
  %next.gep4253 = getelementptr i8, ptr %.0507721.i, i64 %i.mw ; 2 uses
  %i.mx = getelementptr i8, ptr %next.gep4253, i64 16
  %wide.load4254 = load <2 x i64>, ptr %next.gep4253, align 1
  %wide.load4255 = load <2 x i64>, ptr %i.mx, align 1
  %i.my = getelementptr i8, ptr %next.gep4252, i64 16
  store <2 x i64> %wide.load4254, ptr %next.gep4252, align 1
  store <2 x i64> %wide.load4255, ptr %i.my, align 1
  %index.next4256 = add nuw i64 %index4251, 4     ; 2 uses
  %i.mz = icmp eq i64 %index.next4256, %n.vec4249
  br i1 %i.mz, label %middle.block4257, label %vector.body4250, !llvm.loop !44

middle.block4257:                                 ; preds = %vector.body4250
  %cmp.n4258 = icmp eq i64 %i.mr, %n.vec4249
  br i1 %cmp.n4258, label %LZ4_wildCopy8.exit.i, label %scalar.ph4244.preheader

scalar.ph4244.preheader:                          ; preds = %.critedge.i383.i, %middle.block4257
  %.09.i.i.ph = phi ptr [ %.11503.i, %.critedge.i383.i ], [ %i.mu, %middle.block4257 ]
  %.0.i389.i.ph = phi ptr [ %.0507721.i, %.critedge.i383.i ], [ %i.mv, %middle.block4257 ]
  br label %scalar.ph4244

scalar.ph4244:                                    ; preds = %scalar.ph4244.preheader, %scalar.ph4244
  %.09.i.i = phi ptr [ %i.nb, %scalar.ph4244 ], [ %.09.i.i.ph, %scalar.ph4244.preheader ] ; 2 uses
  %.0.i389.i = phi ptr [ %i.nc, %scalar.ph4244 ], [ %.0.i389.i.ph, %scalar.ph4244.preheader ] ; 2 uses
  %i.na = load i64, ptr %.0.i389.i, align 1
  store i64 %i.na, ptr %.09.i.i, align 1
  %i.nb = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %.0.i389.i, i64 8
  %i.nd = icmp ult ptr %i.nb, %i.mj
  br i1 %i.nd, label %scalar.ph4244, label %LZ4_wildCopy8.exit.i, !llvm.loop !45

LZ4_wildCopy8.exit.i:                             ; preds = %scalar.ph4244, %middle.block4257
  %i.ne = trunc i32 %.13.i to i16
  store i16 %i.ne, ptr %i.mj, align 1, !tbaa !36
  %i.nf = getelementptr i8, ptr %i.mj, i64 2      ; 4 uses
  %i.ng = sext i32 %.11240.lcssa.i to i64         ; 4 uses
  %i.nh = add nsw i64 %i.ng, -4                   ; 3 uses
  %i.ni = udiv i64 %i.nh, 255
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nf, i64 %i.ni
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 6
  %i.nl = icmp ugt ptr %i.nk, %spec.select.i661
  %or.cond70.i.i = select i1 %.not.i381.i, i1 %i.nl, i1 false
  br i1 %or.cond70.i.i, label %bb.cv, label %bb.ch

bb.ch:                                            ; preds = %LZ4_wildCopy8.exit.i
  %i.nm = icmp ugt i64 %i.nh, 14
  br i1 %i.nm, label %bb.ci, label %bb.cl

bb.ci:                                            ; preds = %bb.ch
  %i.nn = load i8, ptr %.0494722.i, align 1, !tbaa !16
  %i.no = add i8 %i.nn, 15
  store i8 %i.no, ptr %.0494722.i, align 1, !tbaa !16
  %i.np = add nsw i64 %i.ng, -19                  ; 2 uses
  %i.nq = icmp ugt i64 %i.np, 509
  br i1 %i.nq, label %.lr.ph715.preheader.i, label %._crit_edge716.i

.lr.ph715.preheader.i:                            ; preds = %bb.ci
  %i.nr = add nsw i64 %i.ng, -529                 ; 2 uses
  %i.ns = udiv i64 %i.nr, 510                     ; 2 uses
  %i.nt = shl nuw nsw i64 %i.ns, 1                ; 2 uses
  %i.nu = add nuw nsw i64 %i.nt, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.nf, i8 -1, i64 %i.nu, i1 false), !tbaa !16
  %scevgep787.i = getelementptr i8, ptr %.11503.i, i64 4
  %i.nv = getelementptr i8, ptr %scevgep787.i, i64 %i.lt
  %scevgep788.i = getelementptr i8, ptr %i.nv, i64 %i.nt
  %.neg854.i = mul i64 %i.ns, -510
  %i.nw = add i64 %.neg854.i, %i.nr
  br label %._crit_edge716.i

._crit_edge716.i:                                 ; preds = %.lr.ph715.preheader.i, %bb.ci
  %.13505.lcssa.i = phi ptr [ %i.nf, %bb.ci ], [ %scevgep788.i, %.lr.ph715.preheader.i ] ; 3 uses
  %.0.i385.lcssa.i = phi i64 [ %i.np, %bb.ci ], [ %i.nw, %.lr.ph715.preheader.i ] ; 3 uses
  %i.nx = icmp samesign ugt i64 %.0.i385.lcssa.i, 254
  br i1 %i.nx, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %._crit_edge716.i
  %i.ny = add nsw i64 %.0.i385.lcssa.i, -255
  %i.nz = getelementptr inbounds nuw i8, ptr %.13505.lcssa.i, i64 1
  store i8 -1, ptr %.13505.lcssa.i, align 1, !tbaa !16
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %._crit_edge716.i
  %.14506.i = phi ptr [ %i.nz, %bb.cj ], [ %.13505.lcssa.i, %._crit_edge716.i ] ; 2 uses
  %.1.i386.i = phi i64 [ %i.ny, %bb.cj ], [ %.0.i385.lcssa.i, %._crit_edge716.i ]
  %i.oa = trunc nuw i64 %.1.i386.i to i8
  %i.ob = getelementptr inbounds nuw i8, ptr %.14506.i, i64 1
  store i8 %i.oa, ptr %.14506.i, align 1, !tbaa !16
  br label %bb.cm

bb.cl:                                            ; preds = %bb.ch
  %i.oc = trunc nuw nsw i64 %i.nh to i8
  %i.od = load i8, ptr %.0494722.i, align 1, !tbaa !16
  %i.oe = add i8 %i.od, %i.oc
  store i8 %i.oe, ptr %.0494722.i, align 1, !tbaa !16
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.12504.i = phi ptr [ %i.ob, %bb.ck ], [ %i.nf, %bb.cl ] ; 2 uses
  %i.of = getelementptr inbounds i8, ptr %.5516.lcssa.i, i64 %i.ng ; 9 uses
  %i.og = ptrtoint ptr %i.of to i64
  %i.oh = sub i64 %i.og, %i.an                    ; 2 uses
  %i.oi = trunc i64 %i.oh to i32
  %i.oj = add i32 %i.al, %i.oi                    ; 4 uses
  %i.ok = add i32 %i.oj, -2                       ; 3 uses
  %i.ol = icmp ult i32 %i.ok, %i.aq
  br i1 %i.ol, label %bb.cn, label %bb.cq

bb.cn:                                            ; preds = %bb.cm
  %i.om = icmp sgt i64 %i.oh, 5
  br i1 %i.om, label %bb.co, label %bb.cp, !prof !32

bb.co:                                            ; preds = %bb.cn
  %i.on = getelementptr inbounds i8, ptr %i.of, i64 -5
  %.val414.i = load i64, ptr %i.on, align 1, !tbaa !31
  %i.oo = mul i64 %.val414.i, -3523014627193167104
  %i.op = lshr i64 %i.oo, 50
  %i.oq = add i32 %i.oj, -5
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.op
  store i32 %i.oq, ptr %i.or, align 4, !tbaa !9
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.os = getelementptr inbounds i8, ptr %i.of, i64 -3
  %.val413.i = load i64, ptr %i.os, align 1, !tbaa !31
  %i.ot = mul i64 %.val413.i, -3523014627193167104
  %i.ou = lshr i64 %i.ot, 50
  %i.ov = add i32 %i.oj, -3
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ou
  store i32 %i.ov, ptr %i.ow, align 4, !tbaa !9
  %i.ox = getelementptr inbounds i8, ptr %i.of, i64 -2 ; 2 uses
  %.val412.i = load i64, ptr %i.ox, align 1, !tbaa !31
  %i.oy = mul i64 %.val412.i, -3523014627193167104
  %i.oz = lshr i64 %i.oy, 50
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.oz
  store i32 %i.ok, ptr %i.pa, align 4, !tbaa !9
  %.val420.i = load i32, ptr %i.ox, align 1, !tbaa !26
  %i.pb = mul i32 %.val420.i, -1640531535
  %i.pc = lshr i32 %i.pb, 18
  %i.pd = zext nneg i32 %i.pc to i64
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.pd
  store i32 %i.ok, ptr %i.pe, align 4, !tbaa !9
  %i.pf = getelementptr inbounds i8, ptr %i.of, i64 -1
  %.val419.i = load i32, ptr %i.pf, align 1, !tbaa !26
  %i.pg = mul i32 %.val419.i, -1640531535
  %i.ph = lshr i32 %i.pg, 18
  %i.pi = add i32 %i.oj, -1
  %i.pj = zext nneg i32 %i.ph to i64
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.pj
  store i32 %i.pi, ptr %i.pk, align 4, !tbaa !9
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.cm, %bb.cc
  %.6517.i = phi ptr [ %i.of, %bb.cp ], [ %i.of, %bb.cm ], [ %i.kj, %bb.cc ] ; 2 uses
  %.1508.i = phi ptr [ %i.of, %bb.cp ], [ %i.of, %bb.cm ], [ %.0507721.i, %bb.cc ] ; 2 uses
  %.2496.i = phi ptr [ %.12504.i, %bb.cp ], [ %.12504.i, %bb.cm ], [ %.0494722.i, %bb.cc ] ; 2 uses
  %.not274.i = icmp ugt ptr %.6517.i, %i.ad
  br i1 %.not274.i, label %.loopexit.i, label %bb.h

.loopexit.i:                                      ; preds = %bb.cq, %LZ4HC_encodeSequence.exit.i, %select_searchDict_function.exit.i
  %.2509.i = phi ptr [ %1, %select_searchDict_function.exit.i ], [ %i.uc, %LZ4HC_encodeSequence.exit.i ], [ %.1508.i, %bb.cq ] ; 3 uses
  %.3497.i = phi ptr [ %2, %select_searchDict_function.exit.i ], [ %.10502.i, %LZ4HC_encodeSequence.exit.i ], [ %.2496.i, %bb.cq ] ; 3 uses
  %i.pl = ptrtoint ptr %i.ac to i64
  %i.pm = ptrtoint ptr %.2509.i to i64
  %i.pn = sub i64 %i.pl, %i.pm                    ; 3 uses
  %i.po = add i64 %i.pn, 240
  %i.pp = udiv i64 %i.po, 255
  %i.pq = getelementptr inbounds nuw i8, ptr %spec.select.i661, i64 5
  %spec.select288.i = select i1 %i.bd, ptr %i.pq, ptr %i.ah ; 2 uses
  %.not282.i = icmp ne i32 %6, 0
  %i.pr = getelementptr i8, ptr %.3497.i, i64 %i.pp
  %i.ps = getelementptr i8, ptr %i.pr, i64 1
  %i.pt = getelementptr i8, ptr %i.ps, i64 %i.pn
  %i.pu = icmp ugt ptr %i.pt, %spec.select288.i
  %or.cond647.i = select i1 %.not282.i, i1 %i.pu, i1 false
  br i1 %or.cond647.i, label %bb.cr, label %bb.cs

.thread629.i:                                     ; preds = %bb.cx, %bb.cw
  %i.pv = ptrtoint ptr %i.ac to i64
  %i.pw = sub i64 %i.pv, %i.ls                    ; 3 uses
  %i.px = add i64 %i.pw, 240
  %i.py = udiv i64 %i.px, 255
  %i.pz = getelementptr i8, ptr %.0494722.i, i64 %i.py
  %i.qa = getelementptr i8, ptr %i.pz, i64 1
  %i.qb = getelementptr i8, ptr %i.qa, i64 %i.pw
  %i.qc = icmp ugt ptr %i.qb, %i.ah
  br i1 %i.qc, label %.thread636.i, label %bb.cs

bb.cr:                                            ; preds = %.loopexit.i
  %i.qd = icmp eq i32 %6, 1
  br i1 %i.qd, label %LZ4MID_compress.exit.thread, label %.thread636.i

.thread636.i:                                     ; preds = %bb.cr, %.thread629.i
  %spec.select288628633642.i = phi ptr [ %spec.select288.i, %bb.cr ], [ %i.ah, %.thread629.i ]
  %.3497626634641.i = phi ptr [ %.3497.i, %bb.cr ], [ %.0494722.i, %.thread629.i ] ; 2 uses
  %.2509624635640.i = phi ptr [ %.2509.i, %bb.cr ], [ %.0507721.i, %.thread629.i ]
  %i.qe = ptrtoint ptr %spec.select288628633642.i to i64
  %i.qf = ptrtoint ptr %.3497626634641.i to i64
  %i.qg = xor i64 %i.qf, -1
  %i.qh = add i64 %i.qg, %i.qe                    ; 2 uses
  %i.qi = add i64 %i.qh, 241
  %i.qj = lshr i64 %i.qi, 8
  %i.qk = sub i64 %i.qh, %i.qj
  br label %bb.cs

bb.cs:                                            ; preds = %.thread636.i, %.thread629.i, %.loopexit.i
  %.3497627.i = phi ptr [ %.3497626634641.i, %.thread636.i ], [ %.0494722.i, %.thread629.i ], [ %.3497.i, %.loopexit.i ] ; 6 uses
  %.2509625.i = phi ptr [ %.2509624635640.i, %.thread636.i ], [ %.0507721.i, %.thread629.i ], [ %.2509.i, %.loopexit.i ] ; 2 uses
  %.0215.i = phi i64 [ %i.qk, %.thread636.i ], [ %i.pw, %.thread629.i ], [ %i.pn, %.loopexit.i ] ; 7 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %.2509625.i, i64 %.0215.i
  %i.qm = icmp ugt i64 %.0215.i, 14
  %.4498740.i = getelementptr i8, ptr %.3497627.i, i64 1 ; 3 uses
  br i1 %i.qm, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.qn = add i64 %.0215.i, -15                   ; 2 uses
  store i8 -16, ptr %.3497627.i, align 1, !tbaa !16
  %i.qo = icmp ugt i64 %i.qn, 254
  br i1 %i.qo, label %.lr.ph744.preheader.i, label %._crit_edge745.i

.lr.ph744.preheader.i:                            ; preds = %bb.ct
  %i.qp = add i64 %.0215.i, -270                  ; 2 uses
  %i.qq = udiv i64 %i.qp, 255                     ; 3 uses
  %i.qr = add nuw nsw i64 %i.qq, 1                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.4498740.i, i8 -1, i64 %i.qr, i1 false), !tbaa !16
  %scevgep801.i = getelementptr i8, ptr %.3497627.i, i64 %i.qr
  %.neg857.i.a = mul i64 %i.qq, -255
  %i.qs = add i64 %.neg857.i.a, %i.qp
  %i.qt = getelementptr i8, ptr %.3497627.i, i64 %i.qq
  %scevgep802.i = getelementptr i8, ptr %i.qt, i64 2
  br label %._crit_edge745.i

._crit_edge745.i:                                 ; preds = %.lr.ph744.preheader.i, %bb.ct
  %.3497627.pn.lcssa.i = phi ptr [ %.3497627.i, %bb.ct ], [ %scevgep801.i, %.lr.ph744.preheader.i ]
  %.0.lcssa.i = phi i64 [ %i.qn, %bb.ct ], [ %i.qs, %.lr.ph744.preheader.i ]
  %.4498.lcssa.i = phi ptr [ %.4498740.i, %bb.ct ], [ %scevgep802.i, %.lr.ph744.preheader.i ]
  %i.qu = trunc nuw i64 %.0.lcssa.i to i8
  %i.qv = getelementptr inbounds nuw i8, ptr %.3497627.pn.lcssa.i, i64 2
  store i8 %i.qu, ptr %.4498.lcssa.i, align 1, !tbaa !16
  br label %.critedge290.i

bb.cu:                                            ; preds = %bb.cs
  %.0215.tr.i = trunc nuw nsw i64 %.0215.i to i8
  %i.qw = shl nuw i8 %.0215.tr.i, 4
  store i8 %i.qw, ptr %.3497627.i, align 1, !tbaa !16
  br label %.critedge290.i

.critedge290.i:                                   ; preds = %bb.cu, %._crit_edge745.i
  %.5499.i = phi ptr [ %i.qv, %._crit_edge745.i ], [ %.4498740.i, %bb.cu ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.5499.i, ptr align 1 %.2509625.i, i64 %.0215.i, i1 false)
  %i.qx = getelementptr inbounds nuw i8, ptr %.5499.i, i64 %.0215.i
  %i.qy = ptrtoint ptr %i.ql to i64
  %i.qz = ptrtoint ptr %1 to i64
  %i.ra = sub i64 %i.qy, %i.qz
  %i.rb = trunc i64 %i.ra to i32
  store i32 %i.rb, ptr %3, align 4, !tbaa !9
  %i.rc = ptrtoint ptr %i.qx to i64
  %i.rd = ptrtoint ptr %2 to i64
  %i.re = sub i64 %i.rc, %i.rd
  %i.rf = trunc i64 %i.re to i32
  br label %LZ4MID_compress.exit

bb.cv:                                            ; preds = %LZ4_wildCopy8.exit.i, %.critedge.i664
  %.5516.lcssa.lcssa795796.i = ptrtoaddr ptr %.5516.lcssa.i to i64
  br i1 %i.bd, label %bb.cw, label %LZ4MID_compress.exit.thread

bb.cw:                                            ; preds = %bb.cv
  %21 = ptrtoint ptr %.5516.lcssa.i to i64        ; 2 uses
  %22 = sub i64 %21, %i.ls                        ; 7 uses
  %i.rg = add i64 %22, 240
  %i.rh = udiv i64 %i.rg, 255
  %i.ri = getelementptr inbounds i8, ptr %i.ah, i64 -8 ; 2 uses
  %i.rj = getelementptr i8, ptr %.0494722.i, i64 %i.rh
  %i.rk = getelementptr i8, ptr %i.rj, i64 1
  %i.rl = getelementptr i8, ptr %i.rk, i64 %22    ; 3 uses
  %.not281.i = icmp ugt ptr %i.rl, %i.ri
  br i1 %.not281.i, label %.thread629.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.rm = ptrtoint ptr %i.ri to i64
  %i.rn = ptrtoint ptr %i.rl to i64
  %i.ro = sub i64 %i.rm, %i.rn
  %i.rp = mul i64 %i.ro, 255
  %i.rq = add i64 %i.rp, 18
  %i.rr = zext i32 %.11240.lcssa.i to i64
  %spec.select291650.i = tail call i64 @llvm.umin.i64(i64 %i.rq, i64 %i.rr) ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rl, i64 2
  %i.rt = ptrtoint ptr %i.ah to i64
  %i.ru = ptrtoint ptr %i.rs to i64
  %i.rv = add i64 %spec.select291650.i, %i.rt
  %i.rw = sub i64 %i.ru, %i.rv
  %i.rx = icmp slt i64 %i.rw, -12
  br i1 %i.rx, label %bb.cy, label %.thread629.i

bb.cy:                                            ; preds = %bb.cx
  %i.ry = icmp ugt i64 %22, 14
  br i1 %i.ry, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.rz = add i64 %22, -15                        ; 2 uses
  store i8 -16, ptr %.0494722.i, align 1, !tbaa !16
  %i.sa = icmp ugt i64 %i.rz, 254
  br i1 %i.sa, label %.lr.ph729.preheader.i, label %._crit_edge730.i

.lr.ph729.preheader.i:                            ; preds = %bb.cz
  %i.sb = add i64 %22, -270                       ; 2 uses
  %i.sc = udiv i64 %i.sb, 255                     ; 3 uses
  %i.sd = add nuw nsw i64 %i.sc, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.lr, i8 -1, i64 %i.sd, i1 false), !tbaa !16
  %i.se = getelementptr i8, ptr %.0494722.i, i64 %i.sc
  %scevgep791.i = getelementptr i8, ptr %i.se, i64 2
  %.neg855.i = mul i64 %i.sc, -255
  %i.sf = add i64 %.neg855.i, %i.sb
  br label %._crit_edge730.i

._crit_edge730.i:                                 ; preds = %.lr.ph729.preheader.i, %bb.cz
  %.9.lcssa.i = phi ptr [ %i.lr, %bb.cz ], [ %scevgep791.i, %.lr.ph729.preheader.i ] ; 2 uses
  %.053.i.lcssa.i = phi i64 [ %i.rz, %bb.cz ], [ %i.sf, %.lr.ph729.preheader.i ]
  %i.sg = trunc nuw i64 %.053.i.lcssa.i to i8
  %i.sh = getelementptr inbounds nuw i8, ptr %.9.lcssa.i, i64 1
  store i8 %i.sg, ptr %.9.lcssa.i, align 1, !tbaa !16
  br label %.critedge.i.i

bb.da:                                            ; preds = %bb.cy
  %.tr.i.i = trunc nuw nsw i64 %22 to i8
  %i.si = shl nuw i8 %.tr.i.i, 4
  store i8 %i.si, ptr %.0494722.i, align 1, !tbaa !16
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.da, %._crit_edge730.i
  %.6.i665 = phi ptr [ %i.sh, %._crit_edge730.i ], [ %i.lr, %bb.da ] ; 6 uses
  %.6.i6654264 = ptrtoaddr ptr %.6.i665 to i64    ; 4 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %.6.i665, i64 %22 ; 3 uses
  %i.sk = add i64 %21, %.6.i6654264
  %i.sl = sub i64 %i.sk, %i.ls
  %i.sm = add nuw i64 %.6.i6654264, 8
  %i.sn = tail call i64 @llvm.umax.i64(i64 %i.sl, i64 %i.sm)
  %i.so = xor i64 %.6.i6654264, -1
  %i.sp = add i64 %i.sn, %i.so                    ; 2 uses
  %i.sq = lshr i64 %i.sp, 3
  %i.sr = add nuw nsw i64 %i.sq, 1                ; 2 uses
  %min.iters.check4266 = icmp ult i64 %i.sp, 72
  %i.ss = sub i64 %i.ls, %.6.i6654264
  %diff.check4268 = icmp ugt i64 %i.ss, -32
  %or.cond4351 = select i1 %min.iters.check4266, i1 true, i1 %diff.check4268
  br i1 %or.cond4351, label %scalar.ph4265.preheader, label %vector.ph4269

vector.ph4269:                                    ; preds = %.critedge.i.i
  %n.vec4270 = and i64 %i.sr, 4611686018427387900 ; 3 uses
  %i.st = shl i64 %n.vec4270, 3                   ; 2 uses
  %i.su = getelementptr i8, ptr %.6.i665, i64 %i.st
  %i.sv = getelementptr i8, ptr %.0507721.i, i64 %i.st
  br label %vector.body4271

vector.body4271:                                  ; preds = %vector.body4271, %vector.ph4269
  %index4272 = phi i64 [ 0, %vector.ph4269 ], [ %index.next4277, %vector.body4271 ] ; 2 uses
  %i.sw = shl i64 %index4272, 3                   ; 2 uses
  %next.gep4273 = getelementptr i8, ptr %.6.i665, i64 %i.sw ; 2 uses
  %next.gep4274 = getelementptr i8, ptr %.0507721.i, i64 %i.sw ; 2 uses
  %i.sx = getelementptr i8, ptr %next.gep4274, i64 16
  %wide.load4275 = load <2 x i64>, ptr %next.gep4274, align 1
  %wide.load4276 = load <2 x i64>, ptr %i.sx, align 1
  %i.sy = getelementptr i8, ptr %next.gep4273, i64 16
  store <2 x i64> %wide.load4275, ptr %next.gep4273, align 1
  store <2 x i64> %wide.load4276, ptr %i.sy, align 1
  %index.next4277 = add nuw i64 %index4272, 4     ; 2 uses
  %i.sz = icmp eq i64 %index.next4277, %n.vec4270
  br i1 %i.sz, label %middle.block4278, label %vector.body4271, !llvm.loop !46

middle.block4278:                                 ; preds = %vector.body4271
  %cmp.n4279 = icmp eq i64 %i.sr, %n.vec4270
  br i1 %cmp.n4279, label %LZ4_wildCopy8.exit392.i, label %scalar.ph4265.preheader

scalar.ph4265.preheader:                          ; preds = %.critedge.i.i, %middle.block4278
  %.09.i390.i.ph = phi ptr [ %.6.i665, %.critedge.i.i ], [ %i.su, %middle.block4278 ]
  %.0.i391.i.ph = phi ptr [ %.0507721.i, %.critedge.i.i ], [ %i.sv, %middle.block4278 ]
  br label %scalar.ph4265

scalar.ph4265:                                    ; preds = %scalar.ph4265.preheader, %scalar.ph4265
  %.09.i390.i = phi ptr [ %i.tb, %scalar.ph4265 ], [ %.09.i390.i.ph, %scalar.ph4265.preheader ] ; 2 uses
  %.0.i391.i = phi ptr [ %i.tc, %scalar.ph4265 ], [ %.0.i391.i.ph, %scalar.ph4265.preheader ] ; 2 uses
  %i.ta = load i64, ptr %.0.i391.i, align 1
  store i64 %i.ta, ptr %.09.i390.i, align 1
  %i.tb = getelementptr inbounds nuw i8, ptr %.09.i390.i, i64 8 ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %.0.i391.i, i64 8
  %i.td = icmp ult ptr %i.tb, %i.sj
  br i1 %i.td, label %scalar.ph4265, label %LZ4_wildCopy8.exit392.i, !llvm.loop !47

LZ4_wildCopy8.exit392.i:                          ; preds = %scalar.ph4265, %middle.block4278
  %i.te = trunc i32 %.13.i to i16
  store i16 %i.te, ptr %i.sj, align 1, !tbaa !36
  %i.tf = getelementptr i8, ptr %i.sj, i64 2      ; 3 uses
  %i.tg = shl nuw i64 %spec.select291650.i, 32
  %i.th = ashr exact i64 %i.tg, 32                ; 4 uses
  %i.ti = add nsw i64 %i.th, -4                   ; 2 uses
  %i.tj = icmp ugt i64 %i.ti, 14
  br i1 %i.tj, label %bb.db, label %bb.de

bb.db:                                            ; preds = %LZ4_wildCopy8.exit392.i
  %i.tk = load i8, ptr %.0494722.i, align 1, !tbaa !16
  %i.tl = add i8 %i.tk, 15
  store i8 %i.tl, ptr %.0494722.i, align 1, !tbaa !16
  %i.tm = add nsw i64 %i.th, -19                  ; 2 uses
  %i.tn = icmp ugt i64 %i.tm, 509
  br i1 %i.tn, label %.lr.ph736.preheader.i, label %._crit_edge737.i

.lr.ph736.preheader.i:                            ; preds = %bb.db
  %i.to = add nsw i64 %i.th, -529                 ; 2 uses
  %i.tp = udiv i64 %i.to, 510                     ; 2 uses
  %i.tq = shl nuw nsw i64 %i.tp, 1                ; 2 uses
  %i.tr = add nuw nsw i64 %i.tq, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.tf, i8 -1, i64 %i.tr, i1 false), !tbaa !16
  %scevgep794.i = getelementptr i8, ptr %.6.i665, i64 4
  %23 = sub i64 %.5516.lcssa.lcssa795796.i, %i.ls
  %i.ts = getelementptr i8, ptr %scevgep794.i, i64 %23
  %scevgep800.i = getelementptr i8, ptr %i.ts, i64 %i.tq
  %.neg856.i = mul i64 %i.tp, -510
  %i.tt = add i64 %.neg856.i, %i.to
  br label %._crit_edge737.i

._crit_edge737.i:                                 ; preds = %.lr.ph736.preheader.i, %bb.db
  %.7500.lcssa.i = phi ptr [ %i.tf, %bb.db ], [ %scevgep800.i, %.lr.ph736.preheader.i ] ; 3 uses
  %.0.i.lcssa.i = phi i64 [ %i.tm, %bb.db ], [ %i.tt, %.lr.ph736.preheader.i ] ; 3 uses
  %i.tu = icmp samesign ugt i64 %.0.i.lcssa.i, 254
  br i1 %i.tu, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %._crit_edge737.i
  %i.tv = add nsw i64 %.0.i.lcssa.i, -255
  %i.tw = getelementptr inbounds nuw i8, ptr %.7500.lcssa.i, i64 1
  store i8 -1, ptr %.7500.lcssa.i, align 1, !tbaa !16
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %._crit_edge737.i
  %.8501.i = phi ptr [ %i.tw, %bb.dc ], [ %.7500.lcssa.i, %._crit_edge737.i ] ; 2 uses
  %.1.i.i666 = phi i64 [ %i.tv, %bb.dc ], [ %.0.i.lcssa.i, %._crit_edge737.i ]
  %i.tx = trunc nuw i64 %.1.i.i666 to i8
  %i.ty = getelementptr inbounds nuw i8, ptr %.8501.i, i64 1
  store i8 %i.tx, ptr %.8501.i, align 1, !tbaa !16
  br label %LZ4HC_encodeSequence.exit.i

bb.de:                                            ; preds = %LZ4_wildCopy8.exit392.i
  %i.tz = trunc nuw nsw i64 %i.ti to i8
  %i.ua = load i8, ptr %.0494722.i, align 1, !tbaa !16
  %i.ub = add i8 %i.ua, %i.tz
  store i8 %i.ub, ptr %.0494722.i, align 1, !tbaa !16
  br label %LZ4HC_encodeSequence.exit.i

LZ4HC_encodeSequence.exit.i:                      ; preds = %bb.de, %bb.dd
  %.10502.i = phi ptr [ %i.ty, %bb.dd ], [ %i.tf, %bb.de ]
  %i.uc = getelementptr inbounds i8, ptr %.5516.lcssa.i, i64 %i.th
  br label %.loopexit.i

bb.df:                                            ; preds = %bb.d
  %.sroa.03.4.extract.shift = lshr i64 %.sroa.04.0.copyload.i, 32
  %.sroa.03.4.extract.trunc = trunc nuw i64 %.sroa.03.4.extract.shift to i32 ; 8 uses
  %i.ud = icmp sgt i32 %.sroa.03.4.extract.trunc, 128 ; 3 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %1, i64 %i.s ; 6 uses
  %i.uf = getelementptr inbounds i8, ptr %i.ue, i64 -12 ; 31 uses
  %i.ug = getelementptr inbounds i8, ptr %i.ue, i64 -5 ; 37 uses
  %i.uh = zext nneg i32 %4 to i64
  %i.ui = getelementptr inbounds nuw i8, ptr %2, i64 %i.uh ; 6 uses
  store i32 0, ptr %3, align 4, !tbaa !9
  %i.uj = icmp eq i32 %6, 2                       ; 3 uses
  %spec.select.i.idx = select i1 %i.uj, i64 -5, i64 0
  %spec.select.i = getelementptr inbounds i8, ptr %i.ui, i64 %spec.select.i.idx ; 11 uses
  %i.uk = icmp samesign ult i32 %i.m, 13
  br i1 %i.uk, label %.loopexit, label %.lr.ph1836.lr.ph

.lr.ph1836.lr.ph:                                 ; preds = %bb.df
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 131072 ; 15 uses
  %i.um = getelementptr inbounds nuw i8, ptr %0, i64 262184 ; 3 uses
  %i.un = getelementptr inbounds nuw i8, ptr %0, i64 262152 ; 3 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %0, i64 262168 ; 3 uses
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 262172 ; 3 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %0, i64 262160 ; 3 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %0, i64 262176 ; 6 uses
  %i.us = icmp sgt i32 %.sroa.03.4.extract.trunc, 0 ; 3 uses
  %i.ut = getelementptr inbounds i8, ptr %i.ue, i64 -8 ; 6 uses
  %i.uu = getelementptr inbounds i8, ptr %i.ue, i64 -6 ; 6 uses
  %i.uv = ptrtoaddr ptr %i.ug to i64              ; 6 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.l, i64 3
  %i.ux = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  %i.uy = icmp ne i32 %7, 0                       ; 3 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.j, i64 3
  %i.va = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  %i.vb = getelementptr inbounds nuw i8, ptr %i.h, i64 3
  %i.vc = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %.not.i49 = icmp ne i32 %6, 0                   ; 10 uses
  br label %.lr.ph1836

.lr.ph1836:                                       ; preds = %.lr.ph1836.lr.ph, %.outer1507.backedge
  %.0336.i.ph2120 = phi ptr [ null, %.lr.ph1836.lr.ph ], [ %.0336.i.ph.be, %.outer1507.backedge ]
  %.0338.i.ph2119 = phi ptr [ null, %.lr.ph1836.lr.ph ], [ %.0338.i.ph.be, %.outer1507.backedge ]
  %.01078.ph2118 = phi ptr [ %2, %.lr.ph1836.lr.ph ], [ %.01078.ph.be, %.outer1507.backedge ] ; 2 uses
  %.01079.ph2117 = phi ptr [ %1, %.lr.ph1836.lr.ph ], [ %.01089.ph.be, %.outer1507.backedge ] ; 3 uses
  %i.vd = load ptr, ptr %i.um, align 8, !tbaa !20 ; 5 uses
  %i.ve = load ptr, ptr %i.un, align 8, !tbaa !18 ; 12 uses
  %i.vf = load i32, ptr %i.uo, align 8, !tbaa !19 ; 13 uses
  %i.vg = ptrtoint ptr %i.ve to i64               ; 2 uses
  %i.vh = load i32, ptr %i.up, align 4, !tbaa !23 ; 6 uses
  %i.vi = add i32 %i.vh, 65536
  %i.vj = load ptr, ptr %i.uq, align 8, !tbaa !22 ; 10 uses
  %i.vk = zext i32 %i.vf to i64                   ; 3 uses
  %i.vl = zext i32 %i.vh to i64
  %i.vm = sub nsw i64 %i.vk, %i.vl                ; 5 uses
  %.ptr1442 = getelementptr inbounds i8, ptr %i.vj, i64 %i.vm ; 2 uses
  %i.vn = sub nsw i64 0, %i.vk
  %invariant.gep = getelementptr i8, ptr %i.ve, i64 %i.vn ; 3 uses
  %i.vo = add i32 %i.vf, -4
  %i.vp = getelementptr inbounds nuw i8, ptr %i.ve, i64 8
  %i.vq = icmp ult ptr %i.ve, %i.uf
  %i.vr = icmp ult i32 %i.vh, %i.vf
  %i.vs = ptrtoint ptr %.ptr1442 to i64
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vd, i64 262144
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vd, i64 262152
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vd, i64 262168
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vd, i64 131072
  %.promoted = load i32, ptr %i.ur, align 8, !tbaa !21
  %.not.i7314006 = icmp slt i64 %i.vm, 4
  br label %bb.dg

bb.dg:                                            ; preds = %.lr.ph1836, %bb.gu
  %i.vx = phi i32 [ %.promoted, %.lr.ph1836 ], [ %i.wb, %bb.gu ] ; 4 uses
  %.010891835 = phi ptr [ %.01079.ph2117, %.lr.ph1836 ], [ %i.amk, %bb.gu ] ; 15 uses
  %i.vy = ptrtoint ptr %.010891835 to i64
  %i.vz = sub i64 %i.vy, %i.vg                    ; 2 uses
  %i.wa = trunc i64 %i.vz to i32
  %i.wb = add i32 %i.vf, %i.wa                    ; 10 uses
  %i.wc = icmp ugt i32 %i.vi, %i.wb               ; 2 uses
  %i.wd = add i32 %i.wb, -65535
  %i.we = select i1 %i.wc, i32 %i.vh, i32 %i.wd   ; 5 uses
  %.val594 = load i32, ptr %.010891835, align 1, !tbaa !26 ; 18 uses
  %i.wf = icmp ult i32 %i.vx, %i.wb
  br i1 %i.wf, label %.lr.ph.preheader, label %LZ4HC_Insert.exit.i

.lr.ph.preheader:                                 ; preds = %bb.dg
  %i.wg = zext i32 %i.vx to i64                   ; 6 uses
  %i.wh = zext i32 %i.wb to i64                   ; 3 uses
  %i.wi = sub nsw i64 %i.wh, %i.wg
  %xtraiter = and i64 %i.wi, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %gep.prol = getelementptr i8, ptr %invariant.gep, i64 %i.wg
  %.val601.prol = load i32, ptr %gep.prol, align 1, !tbaa !26
  %i.wj = mul i32 %.val601.prol, -1640531535
  %i.wk = lshr i32 %i.wj, 17
  %i.wl = zext nneg i32 %i.wk to i64
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.wl ; 2 uses
  %i.wn = load i32, ptr %i.wm, align 4, !tbaa !9
  %i.wo = sub i32 %i.vx, %i.wn
  %i.wp = tail call i32 @llvm.umin.i32(i32 %i.wo, i32 65535)
  %i.wq = trunc nuw i32 %i.wp to i16
  %i.wr = and i64 %i.wg, 65535
  %i.ws = getelementptr inbounds nuw [2 x i8], ptr %i.ul, i64 %i.wr
  store i16 %i.wq, ptr %i.ws, align 2, !tbaa !27
  store i32 %i.vx, ptr %i.wm, align 4, !tbaa !9
  %indvars.iv.next.prol = add nuw nsw i64 %i.wg, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.wg, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.wt = add nsw i64 %i.wh, -1
  %i.wu = icmp eq i64 %i.wt, %i.wg
  br i1 %i.wu, label %LZ4HC_Insert.exit.i.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %.val601 = load i32, ptr %gep, align 1, !tbaa !26
  %i.wv = mul i32 %.val601, -1640531535
  %i.ww = lshr i32 %i.wv, 17
  %i.wx = zext nneg i32 %i.ww to i64
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.wx ; 2 uses
  %i.wz = load i32, ptr %i.wy, align 4, !tbaa !9
  %i.xa = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.xb = sub i32 %i.xa, %i.wz
  %i.xc = tail call i32 @llvm.umin.i32(i32 %i.xb, i32 65535)
  %i.xd = trunc nuw i32 %i.xc to i16
  %i.xe = and i64 %indvars.iv, 65535
  %i.xf = getelementptr inbounds nuw [2 x i8], ptr %i.ul, i64 %i.xe
  store i16 %i.xd, ptr %i.xf, align 2, !tbaa !27
  store i32 %i.xa, ptr %i.wy, align 4, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next
  %.val601.1 = load i32, ptr %gep.1, align 1, !tbaa !26
  %i.xg = mul i32 %.val601.1, -1640531535
  %i.xh = lshr i32 %i.xg, 17
  %i.xi = zext nneg i32 %i.xh to i64
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.xi ; 2 uses
  %i.xk = load i32, ptr %i.xj, align 4, !tbaa !9
  %i.xl = trunc nuw i64 %indvars.iv.next to i32   ; 2 uses
  %i.xm = sub i32 %i.xl, %i.xk
  %i.xn = tail call i32 @llvm.umin.i32(i32 %i.xm, i32 65535)
  %i.xo = trunc nuw i32 %i.xn to i16
  %i.xp = and i64 %indvars.iv.next, 65535
  %i.xq = getelementptr inbounds nuw [2 x i8], ptr %i.ul, i64 %i.xp
  store i16 %i.xo, ptr %i.xq, align 2, !tbaa !27
  store i32 %i.xl, ptr %i.xj, align 4, !tbaa !9
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.xr = icmp samesign ult i64 %indvars.iv.next.1, %i.wh
  br i1 %i.xr, label %.lr.ph, label %LZ4HC_Insert.exit.i.loopexit, !llvm.loop !0

LZ4HC_Insert.exit.i.loopexit:                     ; preds = %.lr.ph, %.lr.ph.prol.loopexit
  %.val603.pre = load i32, ptr %.010891835, align 1, !tbaa !26
  br label %LZ4HC_Insert.exit.i

LZ4HC_Insert.exit.i:                              ; preds = %LZ4HC_Insert.exit.i.loopexit, %bb.dg
  %.val603 = phi i32 [ %.val603.pre, %LZ4HC_Insert.exit.i.loopexit ], [ %.val594, %bb.dg ]
  store i32 %i.wb, ptr %i.ur, align 8, !tbaa !21
  %i.xs = mul i32 %.val603, -1640531535
  %i.xt = lshr i32 %i.xs, 17
  %i.xu = zext nneg i32 %i.xt to i64
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.xu
  %i.xw = load i32, ptr %i.xv, align 4, !tbaa !9  ; 2 uses
  %i.xx = add i64 %i.vz, %i.vk
  %i.xy = icmp uge i32 %i.xw, %i.we
  %i.xz = select i1 %i.xy, i1 %i.us, i1 false
  br i1 %i.xz, label %.lr.ph1798, label %.thread1166

.lr.ph1798:                                       ; preds = %LZ4HC_Insert.exit.i
  %i.ya = getelementptr inbounds nuw i8, ptr %.010891835, i64 4 ; 9 uses
  %i.yb = icmp ult ptr %i.ya, %i.uf               ; 2 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %.010891835, i64 12 ; 2 uses
  %i.yd = ptrtoint ptr %i.ya to i64               ; 5 uses
  %i.ye = and i32 %.val594, 65535
  %i.yf = lshr i32 %.val594, 16
  %i.yg = icmp eq i32 %i.ye, %i.yf
  %i.yh = and i32 %.val594, 255
  %i.yi = lshr i32 %.val594, 24
  %i.yj = icmp eq i32 %i.yh, %i.yi
  %i.yk = and i1 %i.yg, %i.yj
  %i.yl = zext i32 %.val594 to i64
  %i.ym = mul nuw i64 %i.yl, 4294967297           ; 6 uses
  br label %bb.dh

bb.dh:                                            ; preds = %.lr.ph1798, %bb.gd
  %.0.i1221797 = phi i32 [ 3, %.lr.ph1798 ], [ %.16.i1163, %bb.gd ] ; 9 uses
  %.0348.i1795 = phi i32 [ 0, %.lr.ph1798 ], [ %.16364.i1161, %bb.gd ] ; 6 uses
  %.0371.i1794 = phi i64 [ 0, %.lr.ph1798 ], [ %.3374.i1159, %bb.gd ] ; 3 uses
  %.0376.i1793 = phi i32 [ 0, %.lr.ph1798 ], [ %.3379.i1157, %bb.gd ] ; 3 uses
  %.0381.i1792 = phi i32 [ %i.xw, %.lr.ph1798 ], [ %.15396.i, %bb.gd ] ; 9 uses
  %.0403.i1791 = phi i32 [ %.sroa.03.4.extract.trunc, %.lr.ph1798 ], [ %i.yn, %bb.gd ] ; 2 uses
  %i.yn = add nsw i32 %.0403.i1791, -1            ; 4 uses
  %i.yo = sub i32 %i.wb, %.0381.i1792             ; 2 uses
  %.not430.i = icmp ult i32 %.0381.i1792, %i.vf
  br i1 %.not430.i, label %bb.dx, label %bb.di

bb.di:                                            ; preds = %bb.dh
end_hunk_1
