Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lz4/original/lz4hc?download=true
inline.NumInlined: 563
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 15
begin_hunk_0_@LZ4_sizeofStreamStateHC:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 0, 2) i32 @LZ4_resetStreamStateHC(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ne ptr %0, null
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
  br i1 %or.cond, label %bb.afh, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = icmp eq i32 %i.m, 0
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %2, align 1, !tbaa !16
  br label %bb.afh

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
  %i.aa = load i8, ptr %i.z, align 2, !tbaa !57
  %.not = icmp ne i8 %i.aa, 0                     ; 6 uses
  %.neg1464 = sext i1 %.not to i32                ; 2 uses
  %.sroa.03.0.extract.trunc = trunc i64 %.sroa.04.0.copyload.i to i32
  switch i32 %.sroa.03.0.extract.trunc, label %bb.ru [
    i32 0, label %bb.e
    i32 1, label %bb.dh
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

bb.h:                                             ; preds = %bb.cr, %.lr.ph723.i
  %.0494722.i = phi ptr [ %2, %.lr.ph723.i ], [ %.2496.i, %bb.cr ] ; 20 uses
  %.0507721.i = phi ptr [ %1, %.lr.ph723.i ], [ %.1508.i, %bb.cr ] ; 10 uses
  %.0511720.i = phi ptr [ %1, %.lr.ph723.i ], [ %.6517.i, %bb.cr ] ; 27 uses
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

end_hunk_0
begin_hunk_1_@LZ4HC_compress_generic_internal:bb.a
  %i.mb = lshr i32 %i.ma, 18
  %i.mc = zext nneg i32 %i.mb to i64
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.mc
  store i32 %i.lt, ptr %i.md, align 4, !tbaa !9
  %i.me = getelementptr i8, ptr %.0494722.i, i64 1 ; 7 uses
  %i.mf = ptrtoint ptr %.0507721.i to i64         ; 4 uses
  %i.mg = sub i64 %.lcssa.i, %i.mf                ; 8 uses
  %i.mh = udiv i64 %i.mg, 255
  %i.mi = getelementptr inbounds nuw i8, ptr %i.me, i64 %i.mh
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 %i.mg
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %i.ml = icmp ugt ptr %i.mk, %spec.select.i661
  %or.cond.i.i = select i1 %.not.i381.i, i1 %i.ml, i1 false
  br i1 %or.cond.i.i, label %bb.cw, label %bb.ce

bb.ce:                                            ; preds = %.critedge.i664
  %i.mm = icmp ugt i64 %i.mg, 14
  br i1 %i.mm, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.mn = add i64 %i.mg, -15                      ; 2 uses
  store i8 -16, ptr %.0494722.i, align 1, !tbaa !16
  %i.mo = icmp ugt i64 %i.mn, 254
  br i1 %i.mo, label %.lr.ph708.preheader.i, label %._crit_edge709.i

.lr.ph708.preheader.i:                            ; preds = %bb.cf
  %i.mp = add i64 %i.mg, -270                     ; 2 uses
  %i.mq = udiv i64 %i.mp, 255                     ; 3 uses
  %i.mr = add nuw nsw i64 %i.mq, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.me, i8 -1, i64 %i.mr, i1 false), !tbaa !16
  %scevgep.i = getelementptr i8, ptr %.0494722.i, i64 2
  %scevgep786.i = getelementptr i8, ptr %scevgep.i, i64 %i.mq
  %.neg.i667 = mul i64 %i.mq, -255
  %i.ms = add i64 %.neg.i667, %i.mp
  br label %._crit_edge709.i

._crit_edge709.i:                                 ; preds = %.lr.ph708.preheader.i, %bb.cf
  %.15.lcssa.i = phi ptr [ %i.me, %bb.cf ], [ %scevgep786.i, %.lr.ph708.preheader.i ] ; 2 uses
  %.053.i387.lcssa.i = phi i64 [ %i.mn, %bb.cf ], [ %i.ms, %.lr.ph708.preheader.i ]
  %i.mt = trunc nuw i64 %.053.i387.lcssa.i to i8
  %i.mu = getelementptr inbounds nuw i8, ptr %.15.lcssa.i, i64 1
  store i8 %i.mt, ptr %.15.lcssa.i, align 1, !tbaa !16
  br label %.critedge.i383.i

bb.cg:                                            ; preds = %bb.ce
  %.tr.i382.i = trunc nuw nsw i64 %i.mg to i8
  %i.mv = shl nuw i8 %.tr.i382.i, 4
  store i8 %i.mv, ptr %.0494722.i, align 1, !tbaa !16
  br label %.critedge.i383.i

.critedge.i383.i:                                 ; preds = %bb.cg, %._crit_edge709.i
  %.11503.i = phi ptr [ %i.mu, %._crit_edge709.i ], [ %i.me, %bb.cg ] ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %.11503.i, i64 %i.mg ; 3 uses
  br label %bb.ch

bb.ch:                                            ; preds = %bb.ch, %.critedge.i383.i
  %.09.i.i = phi ptr [ %.11503.i, %.critedge.i383.i ], [ %i.my, %bb.ch ] ; 2 uses
  %.0.i389.i = phi ptr [ %.0507721.i, %.critedge.i383.i ], [ %i.mz, %bb.ch ] ; 2 uses
  %i.mx = load i64, ptr %.0.i389.i, align 1
  store i64 %i.mx, ptr %.09.i.i, align 1
  %i.my = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %.0.i389.i, i64 8
  %i.na = icmp ult ptr %i.my, %i.mw
  br i1 %i.na, label %bb.ch, label %LZ4_wildCopy8.exit.i, !llvm.loop !44

LZ4_wildCopy8.exit.i:                             ; preds = %bb.ch
  %i.nb = trunc i32 %.13.i to i16
  store i16 %i.nb, ptr %i.mw, align 1, !tbaa !36
  %i.nc = getelementptr i8, ptr %i.mw, i64 2      ; 4 uses
  %i.nd = sext i32 %.11240.lcssa.i to i64         ; 4 uses
  %i.ne = add nsw i64 %i.nd, -4                   ; 3 uses
  %i.nf = udiv i64 %i.ne, 255
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.nf
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 6
  %i.ni = icmp ugt ptr %i.nh, %spec.select.i661
  %or.cond70.i.i = select i1 %.not.i381.i, i1 %i.ni, i1 false
  br i1 %or.cond70.i.i, label %bb.cw, label %bb.ci

bb.ci:                                            ; preds = %LZ4_wildCopy8.exit.i
  %i.nj = icmp ugt i64 %i.ne, 14
  br i1 %i.nj, label %bb.cj, label %bb.cm

bb.cj:                                            ; preds = %bb.ci
  %i.nk = load i8, ptr %.0494722.i, align 1, !tbaa !16
  %i.nl = add i8 %i.nk, 15
  store i8 %i.nl, ptr %.0494722.i, align 1, !tbaa !16
  %i.nm = add nsw i64 %i.nd, -19                  ; 2 uses
  %i.nn = icmp ugt i64 %i.nm, 509
  br i1 %i.nn, label %.lr.ph715.preheader.i, label %._crit_edge716.i

.lr.ph715.preheader.i:                            ; preds = %bb.cj
  %i.no = add nsw i64 %i.nd, -529                 ; 2 uses
  %i.np = udiv i64 %i.no, 510                     ; 2 uses
  %i.nq = shl nuw nsw i64 %i.np, 1                ; 2 uses
  %i.nr = add nuw nsw i64 %i.nq, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.nc, i8 -1, i64 %i.nr, i1 false), !tbaa !16
  %scevgep787.i = getelementptr i8, ptr %.11503.i, i64 4
  %i.ns = getelementptr i8, ptr %scevgep787.i, i64 %i.mg
  %scevgep788.i = getelementptr i8, ptr %i.ns, i64 %i.nq
  %.neg854.i = mul i64 %i.np, -510
  %i.nt = add i64 %.neg854.i, %i.no
  br label %._crit_edge716.i

._crit_edge716.i:                                 ; preds = %.lr.ph715.preheader.i, %bb.cj
  %.13505.lcssa.i = phi ptr [ %i.nc, %bb.cj ], [ %scevgep788.i, %.lr.ph715.preheader.i ] ; 3 uses
  %.0.i385.lcssa.i = phi i64 [ %i.nm, %bb.cj ], [ %i.nt, %.lr.ph715.preheader.i ] ; 3 uses
  %i.nu = icmp samesign ugt i64 %.0.i385.lcssa.i, 254
  br i1 %i.nu, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %._crit_edge716.i
  %i.nv = add nsw i64 %.0.i385.lcssa.i, -255
  %i.nw = getelementptr inbounds nuw i8, ptr %.13505.lcssa.i, i64 1
  store i8 -1, ptr %.13505.lcssa.i, align 1, !tbaa !16
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %._crit_edge716.i
  %.14506.i = phi ptr [ %i.nw, %bb.ck ], [ %.13505.lcssa.i, %._crit_edge716.i ] ; 2 uses
  %.1.i386.i = phi i64 [ %i.nv, %bb.ck ], [ %.0.i385.lcssa.i, %._crit_edge716.i ]
  %i.nx = trunc nuw i64 %.1.i386.i to i8
  %i.ny = getelementptr inbounds nuw i8, ptr %.14506.i, i64 1
  store i8 %i.nx, ptr %.14506.i, align 1, !tbaa !16
  br label %bb.cn

bb.cm:                                            ; preds = %bb.ci
  %i.nz = trunc nuw nsw i64 %i.ne to i8
  %i.oa = load i8, ptr %.0494722.i, align 1, !tbaa !16
  %i.ob = add i8 %i.oa, %i.nz
  store i8 %i.ob, ptr %.0494722.i, align 1, !tbaa !16
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %.12504.i = phi ptr [ %i.ny, %bb.cl ], [ %i.nc, %bb.cm ] ; 2 uses
  %i.oc = getelementptr inbounds i8, ptr %.5516.lcssa.i, i64 %i.nd ; 9 uses
  %i.od = ptrtoint ptr %i.oc to i64
  %i.oe = sub i64 %i.od, %i.an                    ; 2 uses
  %i.of = trunc i64 %i.oe to i32
  %i.og = add i32 %i.al, %i.of                    ; 4 uses
  %i.oh = add i32 %i.og, -2                       ; 3 uses
  %i.oi = icmp ult i32 %i.oh, %i.aq
  br i1 %i.oi, label %bb.co, label %bb.cr

bb.co:                                            ; preds = %bb.cn
  %i.oj = icmp sgt i64 %i.oe, 5
  br i1 %i.oj, label %bb.cp, label %bb.cq, !prof !32

bb.cp:                                            ; preds = %bb.co
  %i.ok = getelementptr inbounds i8, ptr %i.oc, i64 -5
  %.val414.i = load i64, ptr %i.ok, align 1, !tbaa !31
  %i.ol = mul i64 %.val414.i, -3523014627193167104
  %i.om = lshr i64 %i.ol, 50
  %i.on = add i32 %i.og, -5
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.om
  store i32 %i.on, ptr %i.oo, align 4, !tbaa !9
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.op = getelementptr inbounds i8, ptr %i.oc, i64 -3
  %.val413.i = load i64, ptr %i.op, align 1, !tbaa !31
  %i.oq = mul i64 %.val413.i, -3523014627193167104
  %i.or = lshr i64 %i.oq, 50
  %i.os = add i32 %i.og, -3
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.or
  store i32 %i.os, ptr %i.ot, align 4, !tbaa !9
  %i.ou = getelementptr inbounds i8, ptr %i.oc, i64 -2 ; 2 uses
  %.val412.i = load i64, ptr %i.ou, align 1, !tbaa !31
  %i.ov = mul i64 %.val412.i, -3523014627193167104
  %i.ow = lshr i64 %i.ov, 50
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ow
  store i32 %i.oh, ptr %i.ox, align 4, !tbaa !9
  %.val420.i = load i32, ptr %i.ou, align 1, !tbaa !26
  %i.oy = mul i32 %.val420.i, -1640531535
  %i.oz = lshr i32 %i.oy, 18
  %i.pa = zext nneg i32 %i.oz to i64
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.pa
  store i32 %i.oh, ptr %i.pb, align 4, !tbaa !9
  %i.pc = getelementptr inbounds i8, ptr %i.oc, i64 -1
  %.val419.i = load i32, ptr %i.pc, align 1, !tbaa !26
  %i.pd = mul i32 %.val419.i, -1640531535
  %i.pe = lshr i32 %i.pd, 18
  %i.pf = add i32 %i.og, -1
  %i.pg = zext nneg i32 %i.pe to i64
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.pg
  store i32 %i.pf, ptr %i.ph, align 4, !tbaa !9
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cn, %bb.cc
  %.6517.i = phi ptr [ %i.oc, %bb.cq ], [ %i.oc, %bb.cn ], [ %i.kj, %bb.cc ] ; 2 uses
  %.1508.i = phi ptr [ %i.oc, %bb.cq ], [ %i.oc, %bb.cn ], [ %.0507721.i, %bb.cc ] ; 2 uses
  %.2496.i = phi ptr [ %.12504.i, %bb.cq ], [ %.12504.i, %bb.cn ], [ %.0494722.i, %bb.cc ] ; 2 uses
  %.not274.i = icmp ugt ptr %.6517.i, %i.ad
  br i1 %.not274.i, label %.loopexit.i, label %bb.h

.loopexit.i:                                      ; preds = %bb.cr, %LZ4HC_encodeSequence.exit.i, %select_searchDict_function.exit.i
  %.2509.i = phi ptr [ %1, %select_searchDict_function.exit.i ], [ %i.tl, %LZ4HC_encodeSequence.exit.i ], [ %.1508.i, %bb.cr ] ; 3 uses
  %.3497.i = phi ptr [ %2, %select_searchDict_function.exit.i ], [ %.10502.i, %LZ4HC_encodeSequence.exit.i ], [ %.2496.i, %bb.cr ] ; 3 uses
  %i.pi = ptrtoint ptr %i.ac to i64
  %i.pj = ptrtoint ptr %.2509.i to i64
  %i.pk = sub i64 %i.pi, %i.pj                    ; 3 uses
  %i.pl = add i64 %i.pk, 240
  %i.pm = udiv i64 %i.pl, 255
  %8 = getelementptr inbounds nuw i8, ptr %spec.select.i661, i64 5
  %spec.select288.i = select i1 %i.bd, ptr %8, ptr %i.ah ; 2 uses
  %.not282.i = icmp ne i32 %6, 0
  %i.pn = getelementptr i8, ptr %.3497.i, i64 %i.pm
  %i.po = getelementptr i8, ptr %i.pn, i64 1
  %i.pp = getelementptr i8, ptr %i.po, i64 %i.pk
  %i.pq = icmp ugt ptr %i.pp, %spec.select288.i
  %or.cond647.i = select i1 %.not282.i, i1 %i.pq, i1 false
  br i1 %or.cond647.i, label %bb.cs, label %bb.ct

.thread629.i:                                     ; preds = %bb.cy, %bb.cx
  %i.pr = ptrtoint ptr %i.ac to i64
  %i.ps = sub i64 %i.pr, %i.mf                    ; 3 uses
  %i.pt = add i64 %i.ps, 240
  %i.pu = udiv i64 %i.pt, 255
  %i.pv = getelementptr i8, ptr %.0494722.i, i64 %i.pu
  %i.pw = getelementptr i8, ptr %i.pv, i64 1
  %i.px = getelementptr i8, ptr %i.pw, i64 %i.ps
  %i.py = icmp ugt ptr %i.px, %i.ah
  br i1 %i.py, label %.thread636.i, label %bb.ct

bb.cs:                                            ; preds = %.loopexit.i
  %i.pz = icmp eq i32 %6, 1
  br i1 %i.pz, label %LZ4MID_compress.exit.thread, label %.thread636.i

.thread636.i:                                     ; preds = %bb.cs, %.thread629.i
  %spec.select288628633642.i = phi ptr [ %spec.select288.i, %bb.cs ], [ %i.ah, %.thread629.i ]
  %.3497626634641.i = phi ptr [ %.3497.i, %bb.cs ], [ %.0494722.i, %.thread629.i ] ; 2 uses
  %.2509624635640.i = phi ptr [ %.2509.i, %bb.cs ], [ %.0507721.i, %.thread629.i ]
  %i.qa = ptrtoint ptr %spec.select288628633642.i to i64
  %i.qb = ptrtoint ptr %.3497626634641.i to i64
  %i.qc = xor i64 %i.qb, -1
  %i.qd = add i64 %i.qc, %i.qa                    ; 2 uses
  %i.qe = add i64 %i.qd, 241
  %i.qf = lshr i64 %i.qe, 8
  %i.qg = sub i64 %i.qd, %i.qf
  br label %bb.ct

bb.ct:                                            ; preds = %.thread636.i, %.thread629.i, %.loopexit.i
  %.3497627.i = phi ptr [ %.3497626634641.i, %.thread636.i ], [ %.0494722.i, %.thread629.i ], [ %.3497.i, %.loopexit.i ] ; 6 uses
  %.2509625.i = phi ptr [ %.2509624635640.i, %.thread636.i ], [ %.0507721.i, %.thread629.i ], [ %.2509.i, %.loopexit.i ] ; 2 uses
  %.0215.i = phi i64 [ %i.qg, %.thread636.i ], [ %i.ps, %.thread629.i ], [ %i.pk, %.loopexit.i ] ; 7 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %.2509625.i, i64 %.0215.i
  %i.qi = icmp ugt i64 %.0215.i, 14
  %.4498740.i = getelementptr i8, ptr %.3497627.i, i64 1 ; 3 uses
  br i1 %i.qi, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.qj = add i64 %.0215.i, -15                   ; 2 uses
  store i8 -16, ptr %.3497627.i, align 1, !tbaa !16
  %i.qk = icmp ugt i64 %i.qj, 254
  br i1 %i.qk, label %.lr.ph744.preheader.i, label %._crit_edge745.i

.lr.ph744.preheader.i:                            ; preds = %bb.cu
  %i.ql = add i64 %.0215.i, -270                  ; 2 uses
  %i.qm = udiv i64 %i.ql, 255                     ; 3 uses
  %i.qn = add nuw nsw i64 %i.qm, 1                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.4498740.i, i8 -1, i64 %i.qn, i1 false), !tbaa !16
  %scevgep801.i = getelementptr i8, ptr %.3497627.i, i64 %i.qn
  %.neg857.i = mul i64 %i.qm, -255
  %i.qo = add i64 %.neg857.i, %i.ql
  %i.qp = getelementptr i8, ptr %.3497627.i, i64 %i.qm
  %scevgep802.i = getelementptr i8, ptr %i.qp, i64 2
  br label %._crit_edge745.i

._crit_edge745.i:                                 ; preds = %.lr.ph744.preheader.i, %bb.cu
  %.3497627.pn.lcssa.i = phi ptr [ %.3497627.i, %bb.cu ], [ %scevgep801.i, %.lr.ph744.preheader.i ]
  %.0.lcssa.i = phi i64 [ %i.qj, %bb.cu ], [ %i.qo, %.lr.ph744.preheader.i ]
  %.4498.lcssa.i = phi ptr [ %.4498740.i, %bb.cu ], [ %scevgep802.i, %.lr.ph744.preheader.i ]
  %i.qq = trunc nuw i64 %.0.lcssa.i to i8
  %i.qr = getelementptr inbounds nuw i8, ptr %.3497627.pn.lcssa.i, i64 2
  store i8 %i.qq, ptr %.4498.lcssa.i, align 1, !tbaa !16
  br label %.critedge290.i

bb.cv:                                            ; preds = %bb.ct
  %.0215.tr.i = trunc nuw nsw i64 %.0215.i to i8
  %i.qs = shl nuw i8 %.0215.tr.i, 4
  store i8 %i.qs, ptr %.3497627.i, align 1, !tbaa !16
  br label %.critedge290.i

.critedge290.i:                                   ; preds = %bb.cv, %._crit_edge745.i
  %.5499.i = phi ptr [ %i.qr, %._crit_edge745.i ], [ %.4498740.i, %bb.cv ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.5499.i, ptr align 1 %.2509625.i, i64 %.0215.i, i1 false)
  %i.qt = getelementptr inbounds nuw i8, ptr %.5499.i, i64 %.0215.i
  %i.qu = ptrtoint ptr %i.qh to i64
  %i.qv = ptrtoint ptr %1 to i64
  %i.qw = sub i64 %i.qu, %i.qv
  %i.qx = trunc i64 %i.qw to i32
  store i32 %i.qx, ptr %3, align 4, !tbaa !9
  %i.qy = ptrtoint ptr %i.qt to i64
  %i.qz = ptrtoint ptr %2 to i64
  %i.ra = sub i64 %i.qy, %i.qz
  %i.rb = trunc i64 %i.ra to i32
  br label %LZ4MID_compress.exit

bb.cw:                                            ; preds = %LZ4_wildCopy8.exit.i, %.critedge.i664
  %.5516.lcssa.lcssa795796.i = ptrtoaddr ptr %.5516.lcssa.i to i64
  br i1 %i.bd, label %bb.cx, label %LZ4MID_compress.exit.thread

bb.cx:                                            ; preds = %bb.cw
  %i.rc = ptrtoint ptr %.5516.lcssa.i to i64
  %i.rd = sub i64 %i.rc, %i.mf                    ; 7 uses
  %i.re = add i64 %i.rd, 240
  %i.rf = udiv i64 %i.re, 255
  %i.rg = getelementptr inbounds i8, ptr %i.ah, i64 -8 ; 2 uses
  %i.rh = getelementptr i8, ptr %.0494722.i, i64 %i.rf
  %i.ri = getelementptr i8, ptr %i.rh, i64 1
  %i.rj = getelementptr i8, ptr %i.ri, i64 %i.rd  ; 3 uses
  %.not281.i = icmp ugt ptr %i.rj, %i.rg
  br i1 %.not281.i, label %.thread629.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.rk = ptrtoint ptr %i.rg to i64
  %i.rl = ptrtoint ptr %i.rj to i64
  %i.rm = sub i64 %i.rk, %i.rl
  %i.rn = mul i64 %i.rm, 255
  %i.ro = add i64 %i.rn, 18
  %i.rp = zext i32 %.11240.lcssa.i to i64
  %spec.select291650.i = tail call i64 @llvm.umin.i64(i64 %i.ro, i64 %i.rp) ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rj, i64 2
  %i.rr = ptrtoint ptr %i.ah to i64
  %i.rs = ptrtoint ptr %i.rq to i64
  %i.rt = add i64 %spec.select291650.i, %i.rr
  %i.ru = sub i64 %i.rs, %i.rt
  %i.rv = icmp slt i64 %i.ru, -12
  br i1 %i.rv, label %bb.cz, label %.thread629.i

bb.cz:                                            ; preds = %bb.cy
  %i.rw = icmp ugt i64 %i.rd, 14
  br i1 %i.rw, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.rx = add i64 %i.rd, -15                      ; 2 uses
  store i8 -16, ptr %.0494722.i, align 1, !tbaa !16
  %i.ry = icmp ugt i64 %i.rx, 254
  br i1 %i.ry, label %.lr.ph729.preheader.i, label %._crit_edge730.i

.lr.ph729.preheader.i:                            ; preds = %bb.da
  %i.rz = add i64 %i.rd, -270                     ; 2 uses
  %i.sa = udiv i64 %i.rz, 255                     ; 3 uses
  %i.sb = add nuw nsw i64 %i.sa, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.me, i8 -1, i64 %i.sb, i1 false), !tbaa !16
  %i.sc = getelementptr i8, ptr %.0494722.i, i64 %i.sa
  %scevgep791.i = getelementptr i8, ptr %i.sc, i64 2
  %.neg855.i = mul i64 %i.sa, -255
  %i.sd = add i64 %.neg855.i, %i.rz
  br label %._crit_edge730.i

._crit_edge730.i:                                 ; preds = %.lr.ph729.preheader.i, %bb.da
  %.9.lcssa.i = phi ptr [ %i.me, %bb.da ], [ %scevgep791.i, %.lr.ph729.preheader.i ] ; 2 uses
  %.053.i.lcssa.i = phi i64 [ %i.rx, %bb.da ], [ %i.sd, %.lr.ph729.preheader.i ]
  %i.se = trunc nuw i64 %.053.i.lcssa.i to i8
  %i.sf = getelementptr inbounds nuw i8, ptr %.9.lcssa.i, i64 1
  store i8 %i.se, ptr %.9.lcssa.i, align 1, !tbaa !16
  br label %.critedge.i.i

bb.db:                                            ; preds = %bb.cz
  %.tr.i.i = trunc nuw nsw i64 %i.rd to i8
  %i.sg = shl nuw i8 %.tr.i.i, 4
  store i8 %i.sg, ptr %.0494722.i, align 1, !tbaa !16
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.db, %._crit_edge730.i
  %.6.i665 = phi ptr [ %i.sf, %._crit_edge730.i ], [ %i.me, %bb.db ] ; 3 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %.6.i665, i64 %i.rd ; 3 uses
  br label %bb.dc

bb.dc:                                            ; preds = %bb.dc, %.critedge.i.i
  %.09.i390.i = phi ptr [ %.6.i665, %.critedge.i.i ], [ %i.sj, %bb.dc ] ; 2 uses
  %.0.i391.i = phi ptr [ %.0507721.i, %.critedge.i.i ], [ %i.sk, %bb.dc ] ; 2 uses
  %i.si = load i64, ptr %.0.i391.i, align 1
  store i64 %i.si, ptr %.09.i390.i, align 1
  %i.sj = getelementptr inbounds nuw i8, ptr %.09.i390.i, i64 8 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %.0.i391.i, i64 8
  %i.sl = icmp ult ptr %i.sj, %i.sh
  br i1 %i.sl, label %bb.dc, label %LZ4_wildCopy8.exit392.i, !llvm.loop !44

LZ4_wildCopy8.exit392.i:                          ; preds = %bb.dc
  %i.sm = trunc i32 %.13.i to i16
  store i16 %i.sm, ptr %i.sh, align 1, !tbaa !36
  %i.sn = getelementptr i8, ptr %i.sh, i64 2      ; 3 uses
  %i.so = shl nuw i64 %spec.select291650.i, 32
  %i.sp = ashr exact i64 %i.so, 32                ; 4 uses
  %i.sq = add nsw i64 %i.sp, -4                   ; 2 uses
  %i.sr = icmp ugt i64 %i.sq, 14
  br i1 %i.sr, label %bb.dd, label %bb.dg

bb.dd:                                            ; preds = %LZ4_wildCopy8.exit392.i
  %i.ss = load i8, ptr %.0494722.i, align 1, !tbaa !16
  %i.st = add i8 %i.ss, 15
  store i8 %i.st, ptr %.0494722.i, align 1, !tbaa !16
  %i.su = add nsw i64 %i.sp, -19                  ; 2 uses
  %i.sv = icmp ugt i64 %i.su, 509
  br i1 %i.sv, label %.lr.ph736.preheader.i, label %._crit_edge737.i

.lr.ph736.preheader.i:                            ; preds = %bb.dd
  %i.sw = add nsw i64 %i.sp, -529                 ; 2 uses
  %i.sx = udiv i64 %i.sw, 510                     ; 2 uses
  %i.sy = shl nuw nsw i64 %i.sx, 1                ; 2 uses
  %i.sz = add nuw nsw i64 %i.sy, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.sn, i8 -1, i64 %i.sz, i1 false), !tbaa !16
  %scevgep794.i = getelementptr i8, ptr %.6.i665, i64 4
  %i.ta = sub i64 %.5516.lcssa.lcssa795796.i, %i.mf
  %i.tb = getelementptr i8, ptr %scevgep794.i, i64 %i.ta
  %scevgep800.i = getelementptr i8, ptr %i.tb, i64 %i.sy
  %.neg856.i = mul i64 %i.sx, -510
  %i.tc = add i64 %.neg856.i, %i.sw
  br label %._crit_edge737.i

._crit_edge737.i:                                 ; preds = %.lr.ph736.preheader.i, %bb.dd
  %.7500.lcssa.i = phi ptr [ %i.sn, %bb.dd ], [ %scevgep800.i, %.lr.ph736.preheader.i ] ; 3 uses
  %.0.i.lcssa.i = phi i64 [ %i.su, %bb.dd ], [ %i.tc, %.lr.ph736.preheader.i ] ; 3 uses
  %i.td = icmp samesign ugt i64 %.0.i.lcssa.i, 254
  br i1 %i.td, label %bb.de, label %bb.df

bb.de:                                            ; preds = %._crit_edge737.i
  %i.te = add nsw i64 %.0.i.lcssa.i, -255
  %i.tf = getelementptr inbounds nuw i8, ptr %.7500.lcssa.i, i64 1
  store i8 -1, ptr %.7500.lcssa.i, align 1, !tbaa !16
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %._crit_edge737.i
  %.8501.i = phi ptr [ %i.tf, %bb.de ], [ %.7500.lcssa.i, %._crit_edge737.i ] ; 2 uses
  %.1.i.i666 = phi i64 [ %i.te, %bb.de ], [ %.0.i.lcssa.i, %._crit_edge737.i ]
  %i.tg = trunc nuw i64 %.1.i.i666 to i8
  %i.th = getelementptr inbounds nuw i8, ptr %.8501.i, i64 1
  store i8 %i.tg, ptr %.8501.i, align 1, !tbaa !16
  br label %LZ4HC_encodeSequence.exit.i

bb.dg:                                            ; preds = %LZ4_wildCopy8.exit392.i
  %i.ti = trunc nuw nsw i64 %i.sq to i8
  %i.tj = load i8, ptr %.0494722.i, align 1, !tbaa !16
  %i.tk = add i8 %i.tj, %i.ti
  store i8 %i.tk, ptr %.0494722.i, align 1, !tbaa !16
  br label %LZ4HC_encodeSequence.exit.i

LZ4HC_encodeSequence.exit.i:                      ; preds = %bb.dg, %bb.df
  %.10502.i = phi ptr [ %i.th, %bb.df ], [ %i.sn, %bb.dg ]
  %i.tl = getelementptr inbounds i8, ptr %.5516.lcssa.i, i64 %i.sp
  br label %.loopexit.i

bb.dh:                                            ; preds = %bb.d
  %.sroa.03.4.extract.shift = lshr i64 %.sroa.04.0.copyload.i, 32
  %.sroa.03.4.extract.trunc = trunc nuw i64 %.sroa.03.4.extract.shift to i32 ; 8 uses
  %i.tm = icmp sgt i32 %.sroa.03.4.extract.trunc, 128 ; 3 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %1, i64 %i.s ; 6 uses
  %i.to = getelementptr inbounds i8, ptr %i.tn, i64 -12 ; 31 uses
  %i.tp = getelementptr inbounds i8, ptr %i.tn, i64 -5 ; 37 uses
  %i.tq = zext nneg i32 %4 to i64
  %i.tr = getelementptr inbounds nuw i8, ptr %2, i64 %i.tq ; 6 uses
  store i32 0, ptr %3, align 4, !tbaa !9
  %i.ts = icmp eq i32 %6, 2                       ; 3 uses
  %spec.select.i.idx = select i1 %i.ts, i64 -5, i64 0
  %spec.select.i = getelementptr inbounds i8, ptr %i.tr, i64 %spec.select.i.idx ; 11 uses
  %i.tt = icmp samesign ult i32 %i.m, 13
  br i1 %i.tt, label %.loopexit, label %.lr.ph1836.lr.ph

.lr.ph1836.lr.ph:                                 ; preds = %bb.dh
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 131072 ; 15 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 262184 ; 3 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 262152 ; 3 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 262168 ; 3 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %0, i64 262172 ; 3 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %0, i64 262160 ; 3 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %0, i64 262176 ; 6 uses
  %i.ub = icmp sgt i32 %.sroa.03.4.extract.trunc, 0 ; 3 uses
  %i.uc = getelementptr inbounds i8, ptr %i.tn, i64 -8 ; 6 uses
  %i.ud = getelementptr inbounds i8, ptr %i.tn, i64 -6 ; 6 uses
  %i.ue = ptrtoaddr ptr %i.tp to i64              ; 6 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.l, i64 3
  %i.ug = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  %i.uh = icmp ne i32 %7, 0                       ; 3 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.j, i64 3
  %i.uj = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  %i.uk = getelementptr inbounds nuw i8, ptr %i.h, i64 3
  %i.ul = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %.not.i49 = icmp ne i32 %6, 0                   ; 10 uses
  br label %.lr.ph1836

.lr.ph1836:                                       ; preds = %.lr.ph1836.lr.ph, %.outer1507.backedge
  %.0336.i.ph2120 = phi ptr [ null, %.lr.ph1836.lr.ph ], [ %.0336.i.ph.be, %.outer1507.backedge ]
  %.0338.i.ph2119 = phi ptr [ null, %.lr.ph1836.lr.ph ], [ %.0338.i.ph.be, %.outer1507.backedge ]
  %.01078.ph2118 = phi ptr [ %2, %.lr.ph1836.lr.ph ], [ %.01078.ph.be, %.outer1507.backedge ] ; 2 uses
  %.01079.ph2117 = phi ptr [ %1, %.lr.ph1836.lr.ph ], [ %.01089.ph.be, %.outer1507.backedge ] ; 3 uses
  %i.um = load ptr, ptr %i.tv, align 8, !tbaa !20 ; 5 uses
  %i.un = load ptr, ptr %i.tw, align 8, !tbaa !18 ; 12 uses
  %i.uo = load i32, ptr %i.tx, align 8, !tbaa !19 ; 13 uses
  %i.up = ptrtoint ptr %i.un to i64               ; 2 uses
  %i.uq = load i32, ptr %i.ty, align 4, !tbaa !23 ; 6 uses
  %i.ur = add i32 %i.uq, 65536
  %i.us = load ptr, ptr %i.tz, align 8, !tbaa !22 ; 10 uses
  %i.ut = zext i32 %i.uo to i64                   ; 3 uses
  %i.uu = zext i32 %i.uq to i64
  %i.uv = sub nsw i64 %i.ut, %i.uu                ; 5 uses
  %.ptr1442 = getelementptr inbounds i8, ptr %i.us, i64 %i.uv ; 2 uses
  %i.uw = sub nsw i64 0, %i.ut
  %invariant.gep = getelementptr i8, ptr %i.un, i64 %i.uw ; 3 uses
  %i.ux = add i32 %i.uo, -4
  %i.uy = getelementptr inbounds nuw i8, ptr %i.un, i64 8
  %i.uz = icmp ult ptr %i.un, %i.to
  %i.va = icmp ult i32 %i.uq, %i.uo
  %i.vb = ptrtoint ptr %.ptr1442 to i64
  %i.vc = getelementptr inbounds nuw i8, ptr %i.um, i64 262144
  %i.vd = getelementptr inbounds nuw i8, ptr %i.um, i64 262152
  %i.ve = getelementptr inbounds nuw i8, ptr %i.um, i64 262168
  %i.vf = getelementptr inbounds nuw i8, ptr %i.um, i64 131072
  %.promoted = load i32, ptr %i.ua, align 8, !tbaa !21
  %.not.i7314006 = icmp slt i64 %i.uv, 4
  br label %bb.di

bb.di:                                            ; preds = %.lr.ph1836, %bb.gw
  %i.vg = phi i32 [ %.promoted, %.lr.ph1836 ], [ %i.vk, %bb.gw ] ; 4 uses
  %.010891835 = phi ptr [ %.01079.ph2117, %.lr.ph1836 ], [ %i.alt, %bb.gw ] ; 15 uses
  %i.vh = ptrtoint ptr %.010891835 to i64
  %i.vi = sub i64 %i.vh, %i.up                    ; 2 uses
  %i.vj = trunc i64 %i.vi to i32
  %i.vk = add i32 %i.uo, %i.vj                    ; 10 uses
  %i.vl = icmp ugt i32 %i.ur, %i.vk               ; 2 uses
  %i.vm = add i32 %i.vk, -65535
  %i.vn = select i1 %i.vl, i32 %i.uq, i32 %i.vm   ; 5 uses
  %.val594 = load i32, ptr %.010891835, align 1, !tbaa !26 ; 18 uses
  %i.vo = icmp ult i32 %i.vg, %i.vk
  br i1 %i.vo, label %.lr.ph.preheader, label %LZ4HC_Insert.exit.i

.lr.ph.preheader:                                 ; preds = %bb.di
  %i.vp = zext i32 %i.vg to i64                   ; 6 uses
  %i.vq = zext i32 %i.vk to i64                   ; 3 uses
  %i.vr = sub nsw i64 %i.vq, %i.vp
  %xtraiter = and i64 %i.vr, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %gep.prol = getelementptr i8, ptr %invariant.gep, i64 %i.vp
  %.val601.prol = load i32, ptr %gep.prol, align 1, !tbaa !26
  %i.vs = mul i32 %.val601.prol, -1640531535
  %i.vt = lshr i32 %i.vs, 17
  %i.vu = zext nneg i32 %i.vt to i64
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.vu ; 2 uses
  %i.vw = load i32, ptr %i.vv, align 4, !tbaa !9
  %i.vx = sub i32 %i.vg, %i.vw
  %i.vy = tail call i32 @llvm.umin.i32(i32 %i.vx, i32 65535)
  %i.vz = trunc nuw i32 %i.vy to i16
  %i.wa = and i64 %i.vp, 65535
  %i.wb = getelementptr inbounds nuw [2 x i8], ptr %i.tu, i64 %i.wa
  store i16 %i.vz, ptr %i.wb, align 2, !tbaa !27
  store i32 %i.vg, ptr %i.vv, align 4, !tbaa !9
  %indvars.iv.next.prol = add nuw nsw i64 %i.vp, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.vp, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.wc = add nsw i64 %i.vq, -1
  %i.wd = icmp eq i64 %i.wc, %i.vp
  br i1 %i.wd, label %LZ4HC_Insert.exit.i.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %.val601 = load i32, ptr %gep, align 1, !tbaa !26
  %i.we = mul i32 %.val601, -1640531535
  %i.wf = lshr i32 %i.we, 17
  %i.wg = zext nneg i32 %i.wf to i64
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.wg ; 2 uses
  %i.wi = load i32, ptr %i.wh, align 4, !tbaa !9
  %i.wj = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.wk = sub i32 %i.wj, %i.wi
  %i.wl = tail call i32 @llvm.umin.i32(i32 %i.wk, i32 65535)
  %i.wm = trunc nuw i32 %i.wl to i16
  %i.wn = and i64 %indvars.iv, 65535
  %i.wo = getelementptr inbounds nuw [2 x i8], ptr %i.tu, i64 %i.wn
  store i16 %i.wm, ptr %i.wo, align 2, !tbaa !27
  store i32 %i.wj, ptr %i.wh, align 4, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next
  %.val601.1 = load i32, ptr %gep.1, align 1, !tbaa !26
  %i.wp = mul i32 %.val601.1, -1640531535
  %i.wq = lshr i32 %i.wp, 17
  %i.wr = zext nneg i32 %i.wq to i64
  %i.ws = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.wr ; 2 uses
  %i.wt = load i32, ptr %i.ws, align 4, !tbaa !9
  %i.wu = trunc nuw i64 %indvars.iv.next to i32   ; 2 uses
  %i.wv = sub i32 %i.wu, %i.wt
  %i.ww = tail call i32 @llvm.umin.i32(i32 %i.wv, i32 65535)
  %i.wx = trunc nuw i32 %i.ww to i16
  %i.wy = and i64 %indvars.iv.next, 65535
  %i.wz = getelementptr inbounds nuw [2 x i8], ptr %i.tu, i64 %i.wy
  store i16 %i.wx, ptr %i.wz, align 2, !tbaa !27
  store i32 %i.wu, ptr %i.ws, align 4, !tbaa !9
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.xa = icmp samesign ult i64 %indvars.iv.next.1, %i.vq
  br i1 %i.xa, label %.lr.ph, label %LZ4HC_Insert.exit.i.loopexit, !llvm.loop !0

LZ4HC_Insert.exit.i.loopexit:                     ; preds = %.lr.ph, %.lr.ph.prol.loopexit
  %.val603.pre = load i32, ptr %.010891835, align 1, !tbaa !26
  br label %LZ4HC_Insert.exit.i

LZ4HC_Insert.exit.i:                              ; preds = %LZ4HC_Insert.exit.i.loopexit, %bb.di
  %.val603 = phi i32 [ %.val603.pre, %LZ4HC_Insert.exit.i.loopexit ], [ %.val594, %bb.di ]
  store i32 %i.vk, ptr %i.ua, align 8, !tbaa !21
  %i.xb = mul i32 %.val603, -1640531535
  %i.xc = lshr i32 %i.xb, 17
  %i.xd = zext nneg i32 %i.xc to i64
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.xd
  %i.xf = load i32, ptr %i.xe, align 4, !tbaa !9  ; 2 uses
  %i.xg = add i64 %i.vi, %i.ut
  %i.xh = icmp uge i32 %i.xf, %i.vn
  %i.xi = select i1 %i.xh, i1 %i.ub, i1 false
  br i1 %i.xi, label %.lr.ph1798, label %.thread1166

.lr.ph1798:                                       ; preds = %LZ4HC_Insert.exit.i
  %i.xj = getelementptr inbounds nuw i8, ptr %.010891835, i64 4 ; 9 uses
  %i.xk = icmp ult ptr %i.xj, %i.to               ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %.010891835, i64 12 ; 2 uses
  %i.xm = ptrtoint ptr %i.xj to i64               ; 5 uses
  %i.xn = and i32 %.val594, 65535
  %i.xo = lshr i32 %.val594, 16
  %i.xp = icmp eq i32 %i.xn, %i.xo
  %i.xq = and i32 %.val594, 255
  %i.xr = lshr i32 %.val594, 24
  %i.xs = icmp eq i32 %i.xq, %i.xr
  %i.xt = and i1 %i.xp, %i.xs
  %i.xu = zext i32 %.val594 to i64
  %i.xv = mul nuw i64 %i.xu, 4294967297           ; 6 uses
  br label %bb.dj

bb.dj:                                            ; preds = %.lr.ph1798, %bb.gf
  %.0.i1221797 = phi i32 [ 3, %.lr.ph1798 ], [ %.16.i1163, %bb.gf ] ; 9 uses
  %.0348.i1795 = phi i32 [ 0, %.lr.ph1798 ], [ %.16364.i1161, %bb.gf ] ; 6 uses
  %.0371.i1794 = phi i64 [ 0, %.lr.ph1798 ], [ %.3374.i1159, %bb.gf ] ; 3 uses
  %.0376.i1793 = phi i32 [ 0, %.lr.ph1798 ], [ %.3379.i1157, %bb.gf ] ; 3 uses
  %.0381.i1792 = phi i32 [ %i.xf, %.lr.ph1798 ], [ %.15396.i, %bb.gf ] ; 9 uses
  %.0403.i1791 = phi i32 [ %.sroa.03.4.extract.trunc, %.lr.ph1798 ], [ %i.xw, %bb.gf ] ; 2 uses
  %i.xw = add nsw i32 %.0403.i1791, -1            ; 4 uses
  %i.xx = sub i32 %i.vk, %.0381.i1792             ; 2 uses
  %.not430.i = icmp ult i32 %.0381.i1792, %i.uo
  br i1 %.not430.i, label %bb.dz, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.xy = sub nuw i32 %.0381.i1792, %i.uo
  %i.xz = zext i32 %i.xy to i64
  %i.ya = getelementptr inbounds nuw i8, ptr %i.un, i64 %i.xz ; 4 uses
  %i.yb = sext i32 %.0.i1221797 to i64            ; 2 uses
  %i.yc = getelementptr inbounds i8, ptr %.010891835, i64 %i.yb
  %i.yd = getelementptr inbounds i8, ptr %i.yc, i64 -1
  %.val657 = load i16, ptr %i.yd, align 1, !tbaa !36
  %i.ye = getelementptr inbounds i8, ptr %i.ya, i64 %i.yb
  %i.yf = getelementptr inbounds i8, ptr %i.ye, i64 -1
  %.val656 = load i16, ptr %i.yf, align 1, !tbaa !36
  %i.yg = icmp eq i16 %.val657, %.val656
end_hunk_1
begin_hunk_2_@LZ4HC_compress_generic_internal:bb.a
  %.1337.i.ph = phi ptr [ %.0336.i.ph2120, %.preheader1502 ], [ %.7.i, %bb.qq ]
  %.0335.i.ph = phi ptr [ %.010891835, %.preheader1502 ], [ %.7.i, %bb.qq ] ; 2 uses
  %i.cjw = ashr i64 %.sroa.0232.0.i.ph, 32
  br label %bb.gx

bb.qr:                                            ; preds = %bb.qc
  %i.cjx = icmp ult ptr %.5.i, %i.cmo
  br i1 %i.cjx, label %bb.qs, label %bb.qv

bb.qs:                                            ; preds = %bb.qr
  %i.cjy = ptrtoint ptr %.5.i to i64              ; 2 uses
  %i.cjz = sub i64 %i.cjy, %i.cmk                 ; 3 uses
  %i.cka = icmp slt i64 %i.cjz, 18
  br i1 %i.cka, label %bb.qt, label %bb.qu

bb.qt:                                            ; preds = %bb.qs
  %i.ckb = getelementptr inbounds i8, ptr %i.bja, i64 -4
  %i.ckc = icmp ugt ptr %i.cmm, %i.ckb
  %i.ckd = trunc i64 %i.cjz to i32
  %i.cke = add i32 %.sroa.090.sroa.12.3.i, -4
  %i.ckf = add i32 %i.cke, %i.ckd
  %.sroa.0162.sroa.14.5.i = select i1 %i.ckc, i32 %i.ckf, i32 %spec.store.select.i ; 2 uses
  %.neg362.i = sub i64 %i.cmk, %i.cjy
  %.neg363.i = trunc i64 %.neg362.i to i32
  %i.ckg = add i32 %.sroa.0162.sroa.14.5.i, %.neg363.i
  %i.ckh = tail call i32 @llvm.smax.i32(i32 %i.ckg, i32 0) ; 2 uses
  %.sroa.090.sroa.12.6.i = sub nsw i32 %.sroa.090.sroa.12.3.i, %i.ckh
  %.8.i.idx = zext nneg i32 %i.ckh to i64
  %.8.i = getelementptr inbounds nuw i8, ptr %.5.i, i64 %.8.i.idx
  br label %bb.qv

bb.qu:                                            ; preds = %bb.qs
  %i.cki = trunc i64 %i.cjz to i32
  br label %bb.qv

bb.qv:                                            ; preds = %bb.qu, %bb.qt, %bb.qr
  %.sroa.0162.sroa.14.6.i = phi i32 [ %.sroa.0162.sroa.14.5.i, %bb.qt ], [ %i.cki, %bb.qu ], [ %.sroa.0162.sroa.14.2.i.ph, %bb.qr ] ; 3 uses
  %.sroa.090.sroa.12.7.i = phi i32 [ %.sroa.090.sroa.12.6.i, %bb.qt ], [ %.sroa.090.sroa.12.3.i, %bb.qu ], [ %.sroa.090.sroa.12.3.i, %bb.qr ]
  %.9.i = phi ptr [ %.8.i, %bb.qt ], [ %.5.i, %bb.qu ], [ %.5.i, %bb.qr ]
  %i.ckj = getelementptr i8, ptr %.5.ph, i64 1    ; 4 uses
  %i.ckk = ptrtoint ptr %.41083.ph to i64         ; 3 uses
  %i.ckl = sub i64 %i.cmk, %i.ckk                 ; 6 uses
  %i.ckm = udiv i64 %i.ckl, 255
  %i.ckn = getelementptr inbounds nuw i8, ptr %i.ckj, i64 %i.ckm
  %i.cko = getelementptr inbounds nuw i8, ptr %i.ckn, i64 %i.ckl
  %i.ckp = getelementptr inbounds nuw i8, ptr %i.cko, i64 8
  %i.ckq = icmp ugt ptr %i.ckp, %spec.select.i
  %or.cond.i51 = select i1 %.not.i49, i1 %i.ckq, i1 false
  br i1 %or.cond.i51, label %LZ4HC_encodeSequence.exit, label %bb.qw

bb.qw:                                            ; preds = %bb.qv
  %i.ckr = icmp ugt i64 %i.ckl, 14
  br i1 %i.ckr, label %bb.qx, label %bb.qy

bb.qx:                                            ; preds = %bb.qw
  %i.cks = add i64 %i.ckl, -15                    ; 2 uses
  store i8 -16, ptr %.5.ph, align 1, !tbaa !16
  %i.ckt = icmp ugt i64 %i.cks, 254
  br i1 %i.ckt, label %.lr.ph2016.preheader, label %._crit_edge2017

.lr.ph2016.preheader:                             ; preds = %bb.qx
  %i.cku = add i64 %i.cmk, -270
  %i.ckv = sub i64 %i.cku, %i.ckk                 ; 2 uses
  %i.ckw = udiv i64 %i.ckv, 255                   ; 3 uses
  %i.ckx = add nuw nsw i64 %i.ckw, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ckj, i8 -1, i64 %i.ckx, i1 false), !tbaa !16
  %scevgep = getelementptr i8, ptr %.5.ph, i64 2
  %scevgep2641 = getelementptr i8, ptr %scevgep, i64 %i.ckw
  %.neg3254 = mul i64 %i.ckw, -255
  %i.cky = add i64 %.neg3254, %i.ckv
  br label %._crit_edge2017

._crit_edge2017:                                  ; preds = %.lr.ph2016.preheader, %bb.qx
  %.16.lcssa = phi ptr [ %i.ckj, %bb.qx ], [ %scevgep2641, %.lr.ph2016.preheader ] ; 2 uses
  %.053.i59.lcssa = phi i64 [ %i.cks, %bb.qx ], [ %i.cky, %.lr.ph2016.preheader ]
  %i.ckz = trunc nuw i64 %.053.i59.lcssa to i8
  %i.cla = getelementptr inbounds nuw i8, ptr %.16.lcssa, i64 1
  store i8 %i.ckz, ptr %.16.lcssa, align 1, !tbaa !16
  br label %.critedge.i53

bb.qy:                                            ; preds = %bb.qw
  %.tr.i52 = trunc nuw nsw i64 %i.ckl to i8
  %i.clb = shl nuw i8 %.tr.i52, 4
  store i8 %i.clb, ptr %.5.ph, align 1, !tbaa !16
  br label %.critedge.i53

.critedge.i53:                                    ; preds = %bb.qy, %._crit_edge2017
  %.12 = phi ptr [ %i.cla, %._crit_edge2017 ], [ %i.ckj, %bb.qy ] ; 3 uses
  %i.clc = getelementptr inbounds nuw i8, ptr %.12, i64 %i.ckl ; 3 uses
  br label %bb.qz

bb.qz:                                            ; preds = %bb.qz, %.critedge.i53
  %.09.i116 = phi ptr [ %.12, %.critedge.i53 ], [ %i.cle, %bb.qz ] ; 2 uses
  %.0.i117 = phi ptr [ %.41083.ph, %.critedge.i53 ], [ %i.clf, %bb.qz ] ; 2 uses
  %i.cld = load i64, ptr %.0.i117, align 1
  store i64 %i.cld, ptr %.09.i116, align 1
  %i.cle = getelementptr inbounds nuw i8, ptr %.09.i116, i64 8 ; 2 uses
  %i.clf = getelementptr inbounds nuw i8, ptr %.0.i117, i64 8
  %i.clg = icmp ult ptr %i.cle, %i.clc
  br i1 %i.clg, label %bb.qz, label %LZ4_wildCopy8.exit118, !llvm.loop !44

LZ4_wildCopy8.exit118:                            ; preds = %bb.qz
  %i.clh = trunc i32 %.sroa.0162.sroa.0.2.i.ph to i16
  store i16 %i.clh, ptr %i.clc, align 1, !tbaa !36
  %i.cli = getelementptr i8, ptr %i.clc, i64 2    ; 4 uses
  %i.clj = sext i32 %.sroa.0162.sroa.14.6.i to i64 ; 4 uses
  %i.clk = add nsw i64 %i.clj, -4                 ; 3 uses
  %i.cll = udiv i64 %i.clk, 255
  %i.clm = getelementptr inbounds nuw i8, ptr %i.cli, i64 %i.cll
  %i.cln = getelementptr inbounds nuw i8, ptr %i.clm, i64 6
  %i.clo = icmp ugt ptr %i.cln, %spec.select.i
  %or.cond70.i55 = select i1 %.not.i49, i1 %i.clo, i1 false
  br i1 %or.cond70.i55, label %LZ4HC_encodeSequence.exit, label %bb.ra

bb.ra:                                            ; preds = %LZ4_wildCopy8.exit118
  %i.clp = icmp ugt i64 %i.clk, 14
  br i1 %i.clp, label %bb.rb, label %bb.re

bb.rb:                                            ; preds = %bb.ra
  %i.clq = load i8, ptr %.5.ph, align 1, !tbaa !16
  %i.clr = add i8 %i.clq, 15
  store i8 %i.clr, ptr %.5.ph, align 1, !tbaa !16
  %i.cls = add nsw i64 %i.clj, -19                ; 2 uses
  %i.clt = icmp ugt i64 %i.cls, 509
  br i1 %i.clt, label %.lr.ph2023.preheader, label %._crit_edge2024

.lr.ph2023.preheader:                             ; preds = %bb.rb
  %i.clu = add nsw i64 %i.clj, -529               ; 2 uses
  %i.clv = udiv i64 %i.clu, 510                   ; 2 uses
  %i.clw = shl nuw nsw i64 %i.clv, 1              ; 2 uses
  %i.clx = add nuw nsw i64 %i.clw, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cli, i8 -1, i64 %i.clx, i1 false), !tbaa !16
  %scevgep2642 = getelementptr i8, ptr %.12, i64 4
  %i.cly = add i64 %i.clw, %i.cmk
  %i.clz = sub i64 %i.cly, %i.ckk
  %scevgep2643 = getelementptr i8, ptr %scevgep2642, i64 %i.clz
  %.neg3255 = mul i64 %i.clv, -510
  %i.cma = add i64 %.neg3255, %i.clu
  br label %._crit_edge2024

._crit_edge2024:                                  ; preds = %.lr.ph2023.preheader, %bb.rb
  %.14.lcssa = phi ptr [ %i.cli, %bb.rb ], [ %scevgep2643, %.lr.ph2023.preheader ] ; 3 uses
  %.0.i57.lcssa = phi i64 [ %i.cls, %bb.rb ], [ %i.cma, %.lr.ph2023.preheader ] ; 3 uses
  %i.cmb = icmp samesign ugt i64 %.0.i57.lcssa, 254
  br i1 %i.cmb, label %bb.rc, label %bb.rd

bb.rc:                                            ; preds = %._crit_edge2024
  %i.cmc = add nsw i64 %.0.i57.lcssa, -255
  %i.cmd = getelementptr inbounds nuw i8, ptr %.14.lcssa, i64 1
  store i8 -1, ptr %.14.lcssa, align 1, !tbaa !16
  br label %bb.rd

bb.rd:                                            ; preds = %bb.rc, %._crit_edge2024
  %.15 = phi ptr [ %i.cmd, %bb.rc ], [ %.14.lcssa, %._crit_edge2024 ] ; 2 uses
  %.1.i58 = phi i64 [ %i.cmc, %bb.rc ], [ %.0.i57.lcssa, %._crit_edge2024 ]
  %i.cme = trunc nuw i64 %.1.i58 to i8
  %i.cmf = getelementptr inbounds nuw i8, ptr %.15, i64 1
  store i8 %i.cme, ptr %.15, align 1, !tbaa !16
  br label %bb.rf

bb.re:                                            ; preds = %bb.ra
  %i.cmg = trunc nuw nsw i64 %i.clk to i8
  %i.cmh = load i8, ptr %.5.ph, align 1, !tbaa !16
  %i.cmi = add i8 %i.cmh, %i.cmg
  store i8 %i.cmi, ptr %.5.ph, align 1, !tbaa !16
  br label %bb.rf

bb.rf:                                            ; preds = %bb.re, %bb.rd
  %.13 = phi ptr [ %i.cmf, %bb.rd ], [ %i.cli, %bb.re ]
  %i.cmj = getelementptr inbounds i8, ptr %.41093.ph, i64 %i.clj
  %.sroa.090.sroa.0.0.extract.trunc131.i = trunc nuw i64 %.sroa.051.sroa.0.0.i to i32
  br label %.outer

.outer:                                           ; preds = %.preheader1501, %bb.rf
  %.41093.ph = phi ptr [ %.31092, %.preheader1501 ], [ %.9.i, %bb.rf ] ; 11 uses
  %.41083.ph = phi ptr [ %.11080.ph, %.preheader1501 ], [ %i.cmj, %bb.rf ] ; 12 uses
  %.5.ph = phi ptr [ %.1.ph, %.preheader1501 ], [ %.13, %bb.rf ] ; 30 uses
  %.sroa.0162.sroa.14.2.i.ph = phi i32 [ %.sroa.0162.sroa.14.1.i.le, %.preheader1501 ], [ %.sroa.090.sroa.12.7.i, %bb.rf ] ; 6 uses
  %.sroa.0162.sroa.0.2.i.ph = phi i32 [ %.sroa.0162.sroa.0.1.i.le, %.preheader1501 ], [ %.sroa.090.sroa.0.1.i, %bb.rf ] ; 9 uses
  %.sroa.090.sroa.12.1.i.ph = phi i32 [ %.sroa.090.sroa.12.0.i, %.preheader1501 ], [ %.sroa.051.sroa.8.0.i, %bb.rf ]
  %.sroa.090.sroa.0.1.i.ph = phi i32 [ %.sroa.090.sroa.0.0.i, %.preheader1501 ], [ %.sroa.090.sroa.0.0.extract.trunc131.i, %bb.rf ]
  %.2340.i.ph = phi ptr [ %.1339.i.ph, %.preheader1501 ], [ %.3341.i, %bb.rf ]
  %.3.i.ph = phi ptr [ %.2.i, %.preheader1501 ], [ %.3341.i, %bb.rf ]
  %i.cmk = ptrtoint ptr %.41093.ph to i64         ; 15 uses
  %spec.store.select.i = tail call i32 @llvm.smin.i32(i32 %.sroa.0162.sroa.14.2.i.ph, i32 18) ; 3 uses
  %i.cml = sext i32 %spec.store.select.i to i64
  %i.cmm = getelementptr inbounds i8, ptr %.41093.ph, i64 %i.cml ; 2 uses
  %i.cmn = sext i32 %.sroa.0162.sroa.14.2.i.ph to i64 ; 4 uses
  %i.cmo = getelementptr inbounds i8, ptr %.41093.ph, i64 %i.cmn ; 7 uses
  %i.cmp = getelementptr inbounds nuw i8, ptr %i.cmo, i64 3
  br label %bb.lh

.loopexit:                                        ; preds = %.outer1507.backedge, %bb.gw, %LZ4HC_encodeSequence.exit93, %bb.dh
  %.31082 = phi ptr [ %1, %bb.dh ], [ %i.cqx, %LZ4HC_encodeSequence.exit93 ], [ %.01079.ph2117, %bb.gw ], [ %.01089.ph.be, %.outer1507.backedge ] ; 3 uses
  %.2 = phi ptr [ %2, %bb.dh ], [ %.34, %LZ4HC_encodeSequence.exit93 ], [ %.01078.ph2118, %bb.gw ], [ %.01078.ph.be, %.outer1507.backedge ] ; 3 uses
  %i.cmq = ptrtoint ptr %i.tn to i64
  %i.cmr = ptrtoint ptr %.31082 to i64
  %i.cms = sub i64 %i.cmq, %i.cmr                 ; 3 uses
  %i.cmt = add i64 %i.cms, 240
  %i.cmu = udiv i64 %i.cmt, 255
  %9 = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 5
  %spec.select375.i = select i1 %i.ts, ptr %9, ptr %i.tr ; 2 uses
  %.not371.i = icmp ne i32 %6, 0
  %i.cmv = getelementptr i8, ptr %.2, i64 %i.cmu
  %i.cmw = getelementptr i8, ptr %i.cmv, i64 1
  %i.cmx = getelementptr i8, ptr %i.cmw, i64 %i.cms
  %i.cmy = icmp ugt ptr %i.cmx, %spec.select375.i
  %or.cond1441 = select i1 %.not371.i, i1 %i.cmy, i1 false
  br i1 %or.cond1441, label %bb.rg, label %bb.rh

.thread1383:                                      ; preds = %bb.rk, %bb.rl
  %i.cmz = ptrtoint ptr %i.tn to i64
  %i.cna = sub i64 %i.cmz, %i.col                 ; 3 uses
  %i.cnb = add i64 %i.cna, 240
  %i.cnc = udiv i64 %i.cnb, 255
  %i.cnd = getelementptr i8, ptr %.0332.i, i64 %i.cnc
  %i.cne = getelementptr i8, ptr %i.cnd, i64 1
  %i.cnf = getelementptr i8, ptr %i.cne, i64 %i.cna
  %i.cng = icmp ugt ptr %i.cnf, %i.tr
  br i1 %i.cng, label %.thread1390, label %bb.rh

bb.rg:                                            ; preds = %.loopexit
  %i.cnh = icmp eq i32 %6, 1
  br i1 %i.cnh, label %LZ4MID_compress.exit.thread, label %.thread1390

.thread1390:                                      ; preds = %.thread1383, %bb.rg
  %spec.select375.i138213871396 = phi ptr [ %spec.select375.i, %bb.rg ], [ %i.tr, %.thread1383 ]
  %.2138013881395 = phi ptr [ %.2, %bb.rg ], [ %.0332.i, %.thread1383 ] ; 2 uses
  %.31082137813891394 = phi ptr [ %.31082, %bb.rg ], [ %.21081, %.thread1383 ]
  %i.cni = ptrtoint ptr %spec.select375.i138213871396 to i64
  %i.cnj = ptrtoint ptr %.2138013881395 to i64
  %i.cnk = xor i64 %i.cnj, -1
  %i.cnl = add i64 %i.cnk, %i.cni                 ; 2 uses
  %i.cnm = add i64 %i.cnl, 241
  %i.cnn = lshr i64 %i.cnm, 8
  %i.cno = sub i64 %i.cnl, %i.cnn
  br label %bb.rh

bb.rh:                                            ; preds = %.thread1383, %.thread1390, %.loopexit
  %.21381 = phi ptr [ %.2138013881395, %.thread1390 ], [ %.0332.i, %.thread1383 ], [ %.2, %.loopexit ] ; 6 uses
  %.310821379 = phi ptr [ %.31082137813891394, %.thread1390 ], [ %.21081, %.thread1383 ], [ %.31082, %.loopexit ] ; 2 uses
  %.0329.i = phi i64 [ %i.cno, %.thread1390 ], [ %i.cna, %.thread1383 ], [ %i.cms, %.loopexit ] ; 7 uses
  %i.cnp = getelementptr inbounds nuw i8, ptr %.310821379, i64 %.0329.i
  %i.cnq = icmp ugt i64 %.0329.i, 14
  %.42137 = getelementptr i8, ptr %.21381, i64 1  ; 3 uses
  br i1 %i.cnq, label %bb.ri, label %bb.rj

bb.ri:                                            ; preds = %bb.rh
  %i.cnr = add i64 %.0329.i, -15                  ; 2 uses
  store i8 -16, ptr %.21381, align 1, !tbaa !16
  %i.cns = icmp ugt i64 %i.cnr, 254
  br i1 %i.cns, label %.lr.ph2141.preheader, label %._crit_edge2142

.lr.ph2141.preheader:                             ; preds = %bb.ri
  %i.cnt = add i64 %.0329.i, -270                 ; 2 uses
  %i.cnu = udiv i64 %i.cnt, 255                   ; 3 uses
  %i.cnv = add nuw nsw i64 %i.cnu, 1              ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.42137, i8 -1, i64 %i.cnv, i1 false), !tbaa !16
  %scevgep2720 = getelementptr i8, ptr %.21381, i64 %i.cnv
  %.neg3261 = mul i64 %i.cnu, -255
  %i.cnw = add i64 %.neg3261, %i.cnt
  %i.cnx = getelementptr i8, ptr %.21381, i64 %i.cnu
  %scevgep2721 = getelementptr i8, ptr %i.cnx, i64 2
  br label %._crit_edge2142

._crit_edge2142:                                  ; preds = %.lr.ph2141.preheader, %bb.ri
  %.21381.pn.lcssa = phi ptr [ %.21381, %bb.ri ], [ %scevgep2720, %.lr.ph2141.preheader ]
  %.0.i.lcssa = phi i64 [ %i.cnr, %bb.ri ], [ %i.cnw, %.lr.ph2141.preheader ]
  %.4.lcssa = phi ptr [ %.42137, %bb.ri ], [ %scevgep2721, %.lr.ph2141.preheader ]
  %i.cny = trunc nuw i64 %.0.i.lcssa to i8
  %i.cnz = getelementptr inbounds nuw i8, ptr %.21381.pn.lcssa, i64 2
  store i8 %i.cny, ptr %.4.lcssa, align 1, !tbaa !16
  br label %.critedge.i

bb.rj:                                            ; preds = %bb.rh
  %.0329.tr.i = trunc nuw nsw i64 %.0329.i to i8
  %i.coa = shl nuw i8 %.0329.tr.i, 4
  store i8 %i.coa, ptr %.21381, align 1, !tbaa !16
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.rj, %._crit_edge2142
  %.3 = phi ptr [ %i.cnz, %._crit_edge2142 ], [ %.42137, %bb.rj ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.3, ptr align 1 %.310821379, i64 %.0329.i, i1 false)
  %i.cob = getelementptr inbounds nuw i8, ptr %.3, i64 %.0329.i
  %i.coc = ptrtoint ptr %i.cnp to i64
  %i.cod = ptrtoint ptr %1 to i64
  %i.coe = sub i64 %i.coc, %i.cod
  %i.cof = trunc i64 %i.coe to i32
  store i32 %i.cof, ptr %3, align 4, !tbaa !9
  %i.cog = ptrtoint ptr %i.cob to i64
  %i.coh = ptrtoint ptr %2 to i64
  %i.coi = sub i64 %i.cog, %i.coh
  %i.coj = trunc i64 %i.coi to i32
  br label %LZ4MID_compress.exit

LZ4HC_encodeSequence.exit.loopexit1506.split.loop.exit: ; preds = %LZ4_wildCopy8.exit
  %.sroa.0162.sroa.0.0.i.le1928.le2113 = trunc i64 %.sroa.0162.sroa.0.0.in.i to i32
  br label %LZ4HC_encodeSequence.exit

LZ4HC_encodeSequence.exit.loopexit1506.split.loop.exit2083: ; preds = %bb.kw
  %.sroa.0162.sroa.0.0.i.le1928.le = trunc i64 %.sroa.0162.sroa.0.0.in.i to i32
  br label %LZ4HC_encodeSequence.exit

LZ4HC_encodeSequence.exit:                        ; preds = %bb.pi, %LZ4_wildCopy8.exit112, %LZ4_wildCopy8.exit115, %bb.ps, %LZ4_wildCopy8.exit121, %bb.qg, %LZ4_wildCopy8.exit118, %bb.qv, %LZ4HC_encodeSequence.exit.loopexit1506.split.loop.exit, %LZ4HC_encodeSequence.exit.loopexit1506.split.loop.exit2083
  %.21091 = phi ptr [ %.11090, %LZ4HC_encodeSequence.exit.loopexit1506.split.loop.exit2083 ], [ %.41093.ph, %LZ4_wildCopy8.exit118 ], [ %.11090, %LZ4HC_encodeSequence.exit.loopexit1506.split.loop.exit ], [ %.41093.ph, %LZ4_wildCopy8.exit121 ], [ %.41093.ph, %bb.qv ], [ %.41093.ph, %bb.qg ], [ %.41093.ph, %bb.pi ], [ %.5.i, %bb.ps ], [ %.41093.ph, %LZ4_wildCopy8.exit112 ], [ %.5.i, %LZ4_wildCopy8.exit115 ] ; 2 uses
  %.21081 = phi ptr [ %.11080.ph, %LZ4HC_encodeSequence.exit.loopexit1506.split.loop.exit2083 ], [ %.41083.ph, %LZ4_wildCopy8.exit118 ], [ %.11080.ph, %LZ4HC_encodeSequence.exit.loopexit1506.split.loop.exit ], [ %.41083.ph, %LZ4_wildCopy8.exit121 ], [ %.41083.ph, %bb.qv ], [ %.41083.ph, %bb.qg ], [ %.41083.ph, %bb.pi ], [ %i.cfn, %bb.ps ], [ %.41083.ph, %LZ4_wildCopy8.exit112 ], [ %i.cfn, %LZ4_wildCopy8.exit115 ] ; 4 uses
  %.sroa.0162.sroa.14.7.i = phi i32 [ %.sroa.0162.sroa.14.0.i, %LZ4HC_encodeSequence.exit.loopexit1506.split.loop.exit2083 ], [ %.sroa.0162.sroa.14.6.i, %LZ4_wildCopy8.exit118 ], [ %.sroa.0162.sroa.14.0.i, %LZ4HC_encodeSequence.exit.loopexit1506.split.loop.exit ], [ %.sroa.0162.sroa.14.2.i.ph, %LZ4_wildCopy8.exit121 ], [ %.sroa.0162.sroa.14.6.i, %bb.qv ], [ %.sroa.0162.sroa.14.2.i.ph, %bb.qg ], [ %.sroa.0162.sroa.14.3.i, %bb.pi ], [ %.sroa.090.sroa.12.3.i, %bb.ps ], [ %.sroa.0162.sroa.14.3.i, %LZ4_wildCopy8.exit112 ], [ %.sroa.090.sroa.12.3.i, %LZ4_wildCopy8.exit115 ]
  %.sroa.0162.sroa.0.3.i = phi i32 [ %.sroa.0162.sroa.0.0.i.le1928.le, %LZ4HC_encodeSequence.exit.loopexit1506.split.loop.exit2083 ], [ %.sroa.0162.sroa.0.2.i.ph, %LZ4_wildCopy8.exit118 ], [ %.sroa.0162.sroa.0.0.i.le1928.le2113, %LZ4HC_encodeSequence.exit.loopexit1506.split.loop.exit ], [ %.sroa.0162.sroa.0.2.i.ph, %LZ4_wildCopy8.exit121 ], [ %.sroa.0162.sroa.0.2.i.ph, %bb.qv ], [ %.sroa.0162.sroa.0.2.i.ph, %bb.qg ], [ %.sroa.0162.sroa.0.2.i.ph, %bb.pi ], [ %.sroa.090.sroa.0.1.i, %bb.ps ], [ %.sroa.0162.sroa.0.2.i.ph, %LZ4_wildCopy8.exit112 ], [ %.sroa.090.sroa.0.1.i, %LZ4_wildCopy8.exit115 ]
  %.0332.i = phi ptr [ %.1.ph, %LZ4HC_encodeSequence.exit.loopexit1506.split.loop.exit2083 ], [ %.5.ph, %LZ4_wildCopy8.exit118 ], [ %.1.ph, %LZ4HC_encodeSequence.exit.loopexit1506.split.loop.exit ], [ %.5.ph, %LZ4_wildCopy8.exit121 ], [ %.5.ph, %bb.qv ], [ %.5.ph, %bb.qg ], [ %.5.ph, %bb.pi ], [ %.25, %bb.ps ], [ %.5.ph, %LZ4_wildCopy8.exit112 ], [ %.25, %LZ4_wildCopy8.exit115 ] ; 12 uses
  br i1 %i.ts, label %bb.rk, label %LZ4MID_compress.exit.thread

bb.rk:                                            ; preds = %LZ4HC_encodeSequence.exit
  %i.cok = ptrtoint ptr %.21091 to i64            ; 3 uses
  %i.col = ptrtoint ptr %.21081 to i64            ; 4 uses
  %i.com = sub i64 %i.cok, %i.col                 ; 6 uses
  %i.con = add i64 %i.com, 240
  %i.coo = udiv i64 %i.con, 255
  %i.cop = getelementptr inbounds i8, ptr %i.tr, i64 -8 ; 2 uses
  %i.coq = getelementptr i8, ptr %.0332.i, i64 %i.coo
  %i.cor = getelementptr i8, ptr %i.coq, i64 1
  %i.cos = getelementptr i8, ptr %i.cor, i64 %i.com ; 3 uses
  %.not370.i = icmp ugt ptr %i.cos, %i.cop
  br i1 %.not370.i, label %.thread1383, label %bb.rl

bb.rl:                                            ; preds = %bb.rk
  %i.cot = ptrtoint ptr %i.cop to i64
  %i.cou = ptrtoint ptr %i.cos to i64
  %i.cov = sub i64 %i.cot, %i.cou
  %i.cow = mul i64 %i.cov, 255
  %i.cox = add i64 %i.cow, 18
  %i.coy = sext i32 %.sroa.0162.sroa.14.7.i to i64
  %spec.select376.i1463 = tail call i64 @llvm.umin.i64(i64 %i.cox, i64 %i.coy)
  %i.coz = getelementptr inbounds nuw i8, ptr %i.cos, i64 2
  %i.cpa = ptrtoint ptr %i.tr to i64
  %i.cpb = ptrtoint ptr %i.coz to i64
  %i.cpc = shl i64 %spec.select376.i1463, 32
  %i.cpd = ashr exact i64 %i.cpc, 32              ; 5 uses
  %i.cpe = add i64 %i.cpd, %i.cpa
  %i.cpf = sub i64 %i.cpb, %i.cpe
  %i.cpg = icmp slt i64 %i.cpf, -12
  br i1 %i.cpg, label %bb.rm, label %.thread1383

bb.rm:                                            ; preds = %bb.rl
  %i.cph = getelementptr i8, ptr %.0332.i, i64 1  ; 3 uses
  %i.cpi = icmp ugt i64 %i.com, 14
  br i1 %i.cpi, label %bb.rn, label %bb.ro

bb.rn:                                            ; preds = %bb.rm
  %i.cpj = add i64 %i.com, -15                    ; 2 uses
  store i8 -16, ptr %.0332.i, align 1, !tbaa !16
  %i.cpk = icmp ugt i64 %i.cpj, 254
  br i1 %i.cpk, label %.lr.ph2126.preheader, label %._crit_edge2127

.lr.ph2126.preheader:                             ; preds = %bb.rn
  %i.cpl = add i64 %i.cok, -270
  %i.cpm = sub i64 %i.cpl, %i.col                 ; 2 uses
  %i.cpn = udiv i64 %i.cpm, 255                   ; 3 uses
  %i.cpo = add nuw nsw i64 %i.cpn, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cph, i8 -1, i64 %i.cpo, i1 false), !tbaa !16
  %i.cpp = getelementptr i8, ptr %.0332.i, i64 %i.cpn
  %scevgep2718 = getelementptr i8, ptr %i.cpp, i64 2
  %.neg3259 = mul i64 %i.cpn, -255
  %i.cpq = add i64 %.neg3259, %i.cpm
  br label %._crit_edge2127

._crit_edge2127:                                  ; preds = %.lr.ph2126.preheader, %bb.rn
  %.33.lcssa = phi ptr [ %i.cph, %bb.rn ], [ %scevgep2718, %.lr.ph2126.preheader ] ; 2 uses
  %.053.i92.lcssa = phi i64 [ %i.cpj, %bb.rn ], [ %i.cpq, %.lr.ph2126.preheader ]
  %i.cpr = trunc nuw i64 %.053.i92.lcssa to i8
  %i.cps = getelementptr inbounds nuw i8, ptr %.33.lcssa, i64 1
  store i8 %i.cpr, ptr %.33.lcssa, align 1, !tbaa !16
  br label %.critedge.i87

bb.ro:                                            ; preds = %bb.rm
  %.tr.i86 = trunc nuw nsw i64 %i.com to i8
  %i.cpt = shl nuw i8 %.tr.i86, 4
  store i8 %i.cpt, ptr %.0332.i, align 1, !tbaa !16
  br label %.critedge.i87

.critedge.i87:                                    ; preds = %bb.ro, %._crit_edge2127
  %.30 = phi ptr [ %i.cps, %._crit_edge2127 ], [ %i.cph, %bb.ro ] ; 3 uses
  %i.cpu = getelementptr inbounds nuw i8, ptr %.30, i64 %i.com ; 3 uses
  br label %bb.rp

bb.rp:                                            ; preds = %bb.rp, %.critedge.i87
  %.09.i107 = phi ptr [ %.30, %.critedge.i87 ], [ %i.cpw, %bb.rp ] ; 2 uses
  %.0.i108 = phi ptr [ %.21081, %.critedge.i87 ], [ %i.cpx, %bb.rp ] ; 2 uses
  %i.cpv = load i64, ptr %.0.i108, align 1
  store i64 %i.cpv, ptr %.09.i107, align 1
  %i.cpw = getelementptr inbounds nuw i8, ptr %.09.i107, i64 8 ; 2 uses
  %i.cpx = getelementptr inbounds nuw i8, ptr %.0.i108, i64 8
  %i.cpy = icmp ult ptr %i.cpw, %i.cpu
  br i1 %i.cpy, label %bb.rp, label %LZ4_wildCopy8.exit109, !llvm.loop !44

LZ4_wildCopy8.exit109:                            ; preds = %bb.rp
  %i.cpz = trunc i32 %.sroa.0162.sroa.0.3.i to i16
  store i16 %i.cpz, ptr %i.cpu, align 1, !tbaa !36
  %i.cqa = getelementptr i8, ptr %i.cpu, i64 2    ; 3 uses
  %i.cqb = add nsw i64 %i.cpd, -4                 ; 2 uses
  %i.cqc = icmp ugt i64 %i.cqb, 14
  br i1 %i.cqc, label %bb.rq, label %bb.rt

bb.rq:                                            ; preds = %LZ4_wildCopy8.exit109
  %i.cqd = load i8, ptr %.0332.i, align 1, !tbaa !16
  %i.cqe = add i8 %i.cqd, 15
  store i8 %i.cqe, ptr %.0332.i, align 1, !tbaa !16
  %i.cqf = add nsw i64 %i.cpd, -19                ; 2 uses
  %i.cqg = icmp ugt i64 %i.cqf, 509
  br i1 %i.cqg, label %.lr.ph2133.preheader, label %._crit_edge2134

.lr.ph2133.preheader:                             ; preds = %bb.rq
  %i.cqh = add nsw i64 %i.cpd, -529               ; 2 uses
  %i.cqi = udiv i64 %i.cqh, 510                   ; 2 uses
  %i.cqj = shl nuw nsw i64 %i.cqi, 1              ; 2 uses
  %i.cqk = add nuw nsw i64 %i.cqj, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cqa, i8 -1, i64 %i.cqk, i1 false), !tbaa !16
  %i.cql = add i64 %i.cqj, %i.cok
  %i.cqm = add i64 %i.cql, 4
  %i.cqn = sub i64 %i.cqm, %i.col
  %scevgep2719 = getelementptr i8, ptr %.30, i64 %i.cqn
  %.neg3260 = mul i64 %i.cqi, -510
  %i.cqo = add i64 %.neg3260, %i.cqh
  br label %._crit_edge2134

._crit_edge2134:                                  ; preds = %.lr.ph2133.preheader, %bb.rq
  %.31.lcssa = phi ptr [ %i.cqa, %bb.rq ], [ %scevgep2719, %.lr.ph2133.preheader ] ; 3 uses
  %.0.i90.lcssa = phi i64 [ %i.cqf, %bb.rq ], [ %i.cqo, %.lr.ph2133.preheader ] ; 3 uses
  %i.cqp = icmp samesign ugt i64 %.0.i90.lcssa, 254
  br i1 %i.cqp, label %bb.rr, label %bb.rs

bb.rr:                                            ; preds = %._crit_edge2134
  %i.cqq = add nsw i64 %.0.i90.lcssa, -255
  %i.cqr = getelementptr inbounds nuw i8, ptr %.31.lcssa, i64 1
  store i8 -1, ptr %.31.lcssa, align 1, !tbaa !16
  br label %bb.rs

bb.rs:                                            ; preds = %bb.rr, %._crit_edge2134
  %.32 = phi ptr [ %i.cqr, %bb.rr ], [ %.31.lcssa, %._crit_edge2134 ] ; 2 uses
  %.1.i91 = phi i64 [ %i.cqq, %bb.rr ], [ %.0.i90.lcssa, %._crit_edge2134 ]
  %i.cqs = trunc nuw i64 %.1.i91 to i8
  %i.cqt = getelementptr inbounds nuw i8, ptr %.32, i64 1
  store i8 %i.cqs, ptr %.32, align 1, !tbaa !16
  br label %LZ4HC_encodeSequence.exit93

bb.rt:                                            ; preds = %LZ4_wildCopy8.exit109
  %i.cqu = trunc nuw nsw i64 %i.cqb to i8
  %i.cqv = load i8, ptr %.0332.i, align 1, !tbaa !16
  %i.cqw = add i8 %i.cqv, %i.cqu
  store i8 %i.cqw, ptr %.0332.i, align 1, !tbaa !16
  br label %LZ4HC_encodeSequence.exit93

LZ4HC_encodeSequence.exit93:                      ; preds = %bb.rs, %bb.rt
  %.34 = phi ptr [ %i.cqt, %bb.rs ], [ %i.cqa, %bb.rt ]
  %i.cqx = getelementptr inbounds i8, ptr %.21091, i64 %i.cpd
  br label %.loopexit

bb.ru:                                            ; preds = %bb.d
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.25.0.copyload.i = load i32, ptr %.sroa.25.0..sroa_idx.i, align 4, !tbaa !9
  %.sroa.03.4.extract.shift7 = lshr i64 %.sroa.04.0.copyload.i, 32
  %.sroa.03.4.extract.trunc8 = trunc nuw i64 %.sroa.03.4.extract.shift7 to i32 ; 7 uses
  %i.cqy = icmp slt i32 %5, 12
  %i.cqz = tail call noalias dereferenceable_or_null(65584) ptr @malloc(i64 noundef 65584) #18 ; 31 uses
  %i.cra = load i32, ptr %3, align 4, !tbaa !9    ; 2 uses
  %i.crb = sext i32 %i.cra to i64
  %i.crc = getelementptr inbounds i8, ptr %1, i64 %i.crb ; 6 uses
  %i.crd = getelementptr inbounds i8, ptr %i.crc, i64 -12 ; 27 uses
  %i.cre = getelementptr inbounds i8, ptr %i.crc, i64 -5 ; 37 uses
  %i.crf = icmp eq ptr %i.cqz, null
  br i1 %i.crf, label %LZ4MID_compress.exit.thread, label %bb.rv

bb.rv:                                            ; preds = %bb.ru
  %i.crg = zext nneg i32 %4 to i64
  %i.crh = getelementptr inbounds nuw i8, ptr %2, i64 %i.crg ; 6 uses
  store i32 0, ptr %3, align 4, !tbaa !9
  %i.cri = icmp eq i32 %6, 2                      ; 3 uses
  %spec.select.idx.i911 = select i1 %i.cri, i64 -5, i64 0
  %spec.select.i912 = getelementptr inbounds i8, ptr %i.crh, i64 %spec.select.idx.i911 ; 5 uses
  %i.crj = tail call i32 @llvm.umin.i32(i32 %.sroa.25.0.copyload.i, i32 4095)
  %spec.store.select.i913 = zext nneg i32 %i.crj to i64 ; 2 uses
  %.not1981.i = icmp slt i32 %i.cra, 12
  br i1 %.not1981.i, label %.loopexit1697.i, label %.lr.ph1986.i

.lr.ph1986.i:                                     ; preds = %bb.rv
  %i.crk = getelementptr inbounds nuw i8, ptr %0, i64 131072 ; 21 uses
  %i.crl = getelementptr inbounds nuw i8, ptr %0, i64 262184
  %i.crm = getelementptr inbounds nuw i8, ptr %0, i64 262152
  %i.crn = getelementptr inbounds nuw i8, ptr %0, i64 262168
  %i.cro = getelementptr inbounds nuw i8, ptr %0, i64 262172
  %i.crp = getelementptr inbounds nuw i8, ptr %0, i64 262160
  %i.crq = getelementptr inbounds nuw i8, ptr %0, i64 262176 ; 6 uses
  %i.crr = getelementptr inbounds i8, ptr %i.crc, i64 -8 ; 6 uses
  %i.crs = getelementptr inbounds i8, ptr %i.crc, i64 -6 ; 6 uses
  %i.crt = ptrtoaddr ptr %i.cre to i64            ; 6 uses
  %i.cru = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  %i.crv = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  %i.crw = icmp ne i32 %7, 0                      ; 3 uses
  %i.crx = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.cry = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.crz = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.csa = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %.not.i.i914 = icmp ne i32 %6, 0                ; 4 uses
  %i.csb = getelementptr inbounds nuw i8, ptr %i.cqz, i64 8 ; 2 uses
  %i.csc = getelementptr inbounds nuw i8, ptr %i.cqz, i64 4 ; 2 uses
  %i.csd = getelementptr inbounds nuw i8, ptr %i.cqz, i64 12 ; 2 uses
  %i.cse = getelementptr inbounds nuw i8, ptr %i.cqz, i64 16 ; 2 uses
  %i.csf = getelementptr inbounds nuw i8, ptr %i.cqz, i64 24 ; 2 uses
  %i.csg = getelementptr inbounds nuw i8, ptr %i.cqz, i64 20 ; 2 uses
  %i.csh = getelementptr inbounds nuw i8, ptr %i.cqz, i64 28 ; 2 uses
  %i.csi = getelementptr inbounds nuw i8, ptr %i.cqz, i64 32 ; 2 uses
  %i.csj = getelementptr inbounds nuw i8, ptr %i.cqz, i64 40 ; 2 uses
  %i.csk = getelementptr inbounds nuw i8, ptr %i.cqz, i64 36 ; 2 uses
  %i.csl = getelementptr inbounds nuw i8, ptr %i.cqz, i64 44 ; 2 uses
  %i.csm = getelementptr inbounds nuw i8, ptr %i.cqz, i64 48
  %i.csn = getelementptr inbounds nuw i8, ptr %i.cqz, i64 56
  %i.cso = getelementptr inbounds nuw i8, ptr %i.cqz, i64 52
  %i.csp = getelementptr inbounds nuw i8, ptr %i.cqz, i64 60
  %i.csq = icmp sgt i32 %.sroa.03.4.extract.trunc8, 0 ; 3 uses
  br label %bb.rw

bb.rw:                                            ; preds = %.loopexit1692.i, %.lr.ph1986.i
  %.013011984.i = phi ptr [ %2, %.lr.ph1986.i ], [ %.3.i915, %.loopexit1692.i ] ; 13 uses
  %.013061983.i = phi ptr [ %1, %.lr.ph1986.i ], [ %.31309.i, %.loopexit1692.i ] ; 7 uses
  %.013131982.i = phi ptr [ %1, %.lr.ph1986.i ], [ %.31316.i, %.loopexit1692.i ] ; 17 uses
  %i.csr = ptrtoint ptr %.013131982.i to i64      ; 3 uses
  %i.css = ptrtoint ptr %.013061983.i to i64
  %i.cst = sub i64 %i.csr, %i.css                 ; 10 uses
  %i.csu = trunc i64 %i.cst to i32                ; 17 uses
  %i.csv = load ptr, ptr %i.crl, align 8, !tbaa !20 ; 11 uses
  %i.csw = load ptr, ptr %i.crm, align 8, !tbaa !18 ; 29 uses
  %i.csx = load i32, ptr %i.crn, align 8, !tbaa !19 ; 34 uses
  %i.csy = ptrtoint ptr %i.csw to i64             ; 7 uses
  %i.csz = sub i64 %i.csr, %i.csy                 ; 2 uses
  %i.cta = trunc i64 %i.csz to i32
  %i.ctb = add i32 %i.csx, %i.cta                 ; 10 uses
  %i.ctc = load i32, ptr %i.cro, align 4, !tbaa !23 ; 12 uses
  %i.ctd = add i32 %i.ctc, 65536                  ; 3 uses
  %i.cte = icmp ugt i32 %i.ctd, %i.ctb            ; 2 uses
  %i.ctf = add i32 %i.ctb, -65535
  %i.ctg = select i1 %i.cte, i32 %i.ctc, i32 %i.ctf ; 5 uses
  %i.cth = load ptr, ptr %i.crp, align 8, !tbaa !22 ; 28 uses
  %i.cti = zext i32 %i.csx to i64                 ; 6 uses
  %i.ctj = zext i32 %i.ctc to i64
  %i.ctk = sub nsw i64 %i.cti, %i.ctj             ; 13 uses
  %.ptr1671.ptr.ptr.i = getelementptr inbounds i8, ptr %i.cth, i64 %i.ctk ; 4 uses
  %.val939.i = load i32, ptr %.013131982.i, align 1, !tbaa !26 ; 18 uses
  %i.ctl = load i32, ptr %i.crq, align 8, !tbaa !21 ; 4 uses
  %i.ctm = icmp ult i32 %i.ctl, %i.ctb
  br i1 %i.ctm, label %.lr.ph.i954, label %LZ4HC_Insert.exit.i.i686.i

.lr.ph.i954:                                      ; preds = %bb.rw
  %i.ctn = sub nsw i64 0, %i.cti
  %invariant.gep.i955 = getelementptr i8, ptr %i.csw, i64 %i.ctn ; 3 uses
  %i.cto = zext i32 %i.ctl to i64                 ; 6 uses
  %i.ctp = zext i32 %i.ctb to i64                 ; 3 uses
  %i.ctq = sub nsw i64 %i.ctp, %i.cto
  %xtraiter4526 = and i64 %i.ctq, 1
  %lcmp.mod4527.not = icmp eq i64 %xtraiter4526, 0
  br i1 %lcmp.mod4527.not, label %.prol.loopexit4525, label %.prol.loopexit4525.unr-lcssa

.prol.loopexit4525.unr-lcssa:                     ; preds = %.lr.ph.i954
  %gep.i956.prol = getelementptr i8, ptr %invariant.gep.i955, i64 %i.cto
  %.val950.i.prol = load i32, ptr %gep.i956.prol, align 1, !tbaa !26
  %i.ctr = mul i32 %.val950.i.prol, -1640531535
  %i.cts = lshr i32 %i.ctr, 17
  %i.ctt = zext nneg i32 %i.cts to i64
  %i.ctu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ctt ; 2 uses
  %i.ctv = load i32, ptr %i.ctu, align 4, !tbaa !9
  %i.ctw = sub i32 %i.ctl, %i.ctv
  %i.ctx = tail call i32 @llvm.umin.i32(i32 %i.ctw, i32 65535)
  %i.cty = trunc nuw i32 %i.ctx to i16
  %i.ctz = and i64 %i.cto, 65535
  %i.cua = getelementptr inbounds nuw [2 x i8], ptr %i.crk, i64 %i.ctz
  store i16 %i.cty, ptr %i.cua, align 2, !tbaa !27
  store i32 %i.ctl, ptr %i.ctu, align 4, !tbaa !9
  %indvars.iv.next.i.prol = add nuw nsw i64 %i.cto, 1
  br label %.prol.loopexit4525

.prol.loopexit4525:                               ; preds = %.prol.loopexit4525.unr-lcssa, %.lr.ph.i954
  %indvars.iv.i.unr = phi i64 [ %i.cto, %.lr.ph.i954 ], [ %indvars.iv.next.i.prol, %.prol.loopexit4525.unr-lcssa ]
  %i.cub = add nsw i64 %i.ctp, -1
  %i.cuc = icmp eq i64 %i.cub, %i.cto
  br i1 %i.cuc, label %LZ4HC_Insert.exit.i.i686.loopexit.i, label %.lr.ph.i954.new

.lr.ph.i954.new:                                  ; preds = %.prol.loopexit4525, %.lr.ph.i954.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i954.new ], [ %indvars.iv.i.unr, %.prol.loopexit4525 ] ; 5 uses
  %gep.i956 = getelementptr i8, ptr %invariant.gep.i955, i64 %indvars.iv.i
  %.val950.i = load i32, ptr %gep.i956, align 1, !tbaa !26
  %i.cud = mul i32 %.val950.i, -1640531535
  %i.cue = lshr i32 %i.cud, 17
  %i.cuf = zext nneg i32 %i.cue to i64
  %i.cug = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cuf ; 2 uses
  %i.cuh = load i32, ptr %i.cug, align 4, !tbaa !9
  %i.cui = trunc nuw i64 %indvars.iv.i to i32     ; 2 uses
  %i.cuj = sub i32 %i.cui, %i.cuh
  %i.cuk = tail call i32 @llvm.umin.i32(i32 %i.cuj, i32 65535)
  %i.cul = trunc nuw i32 %i.cuk to i16
  %i.cum = and i64 %indvars.iv.i, 65535
  %i.cun = getelementptr inbounds nuw [2 x i8], ptr %i.crk, i64 %i.cum
  store i16 %i.cul, ptr %i.cun, align 2, !tbaa !27
  store i32 %i.cui, ptr %i.cug, align 4, !tbaa !9
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %gep.i956.1 = getelementptr i8, ptr %invariant.gep.i955, i64 %indvars.iv.next.i
  %.val950.i.1 = load i32, ptr %gep.i956.1, align 1, !tbaa !26
  %i.cuo = mul i32 %.val950.i.1, -1640531535
  %i.cup = lshr i32 %i.cuo, 17
  %i.cuq = zext nneg i32 %i.cup to i64
  %i.cur = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cuq ; 2 uses
  %i.cus = load i32, ptr %i.cur, align 4, !tbaa !9
  %i.cut = trunc nuw i64 %indvars.iv.next.i to i32 ; 2 uses
  %i.cuu = sub i32 %i.cut, %i.cus
  %i.cuv = tail call i32 @llvm.umin.i32(i32 %i.cuu, i32 65535)
  %i.cuw = trunc nuw i32 %i.cuv to i16
  %i.cux = and i64 %indvars.iv.next.i, 65535
  %i.cuy = getelementptr inbounds nuw [2 x i8], ptr %i.crk, i64 %i.cux
  store i16 %i.cuw, ptr %i.cuy, align 2, !tbaa !27
  store i32 %i.cut, ptr %i.cur, align 4, !tbaa !9
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.i.1, %i.ctp
  br i1 %exitcond.not.1, label %LZ4HC_Insert.exit.i.i686.loopexit.i, label %.lr.ph.i954.new, !llvm.loop !0

LZ4HC_Insert.exit.i.i686.loopexit.i:              ; preds = %.lr.ph.i954.new, %.prol.loopexit4525
  %.val952.pre.i = load i32, ptr %.013131982.i, align 1, !tbaa !26
  br label %LZ4HC_Insert.exit.i.i686.i

LZ4HC_Insert.exit.i.i686.i:                       ; preds = %LZ4HC_Insert.exit.i.i686.loopexit.i, %bb.rw
  %.val952.i = phi i32 [ %.val952.pre.i, %LZ4HC_Insert.exit.i.i686.loopexit.i ], [ %.val939.i, %bb.rw ]
  store i32 %i.ctb, ptr %i.crq, align 8, !tbaa !21
  %i.cuz = mul i32 %.val952.i, -1640531535
  %i.cva = lshr i32 %i.cuz, 17
  %i.cvb = zext nneg i32 %i.cva to i64
  %i.cvc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cvb
  %i.cvd = load i32, ptr %i.cvc, align 4, !tbaa !9 ; 2 uses
  %i.cve = add i64 %i.csz, %i.cti
  %i.cvf = getelementptr inbounds nuw i8, ptr %.013131982.i, i64 4 ; 12 uses
  %i.cvg = icmp ult ptr %i.cvf, %i.crd            ; 2 uses
  %i.cvh = getelementptr inbounds nuw i8, ptr %.013131982.i, i64 12 ; 3 uses
  %i.cvi = ptrtoint ptr %i.cvf to i64             ; 7 uses
  %i.cvj = add i32 %i.csx, -4                     ; 3 uses
  %i.cvk = getelementptr inbounds nuw i8, ptr %i.csw, i64 8 ; 3 uses
  %i.cvl = and i32 %.val939.i, 65535
  %i.cvm = lshr i32 %.val939.i, 16
  %i.cvn = icmp eq i32 %i.cvl, %i.cvm
  %i.cvo = and i32 %.val939.i, 255
  %i.cvp = lshr i32 %.val939.i, 24
  %i.cvq = icmp eq i32 %i.cvo, %i.cvp
  %i.cvr = and i1 %i.cvn, %i.cvq
  %i.cvs = zext i32 %.val939.i to i64
  %i.cvt = mul nuw i64 %i.cvs, 4294967297         ; 6 uses
  %i.cvu = icmp ult ptr %i.csw, %i.crd            ; 3 uses
  %i.cvv = icmp ult i32 %i.ctc, %i.csx            ; 3 uses
  %i.cvw = ptrtoint ptr %.ptr1671.ptr.ptr.i to i64 ; 3 uses
  %i.cvx = icmp uge i32 %i.cvd, %i.ctg
  %i.cvy = select i1 %i.cvx, i1 %i.csq, i1 false
  br i1 %i.cvy, label %.lr.ph2162.preheader, label %.thread1384.i

.lr.ph2162.preheader:                             ; preds = %LZ4HC_Insert.exit.i.i686.i
  %.not.i1060.i4078 = icmp slt i64 %i.ctk, 4
  br label %.lr.ph2162

.lr.ph2162:                                       ; preds = %.lr.ph2162.preheader, %.backedge2426.i
  %.0.i.i694.i2161 = phi i32 [ %.0.i.i694.be.i, %.backedge2426.i ], [ 3, %.lr.ph2162.preheader ] ; 10 uses
  %.0348.i.i692.i2160 = phi i32 [ %.0348.i.i692.be.i, %.backedge2426.i ], [ 0, %.lr.ph2162.preheader ] ; 7 uses
  %.0371.i.i691.i2159 = phi i64 [ %.0371.i.i691.be.i, %.backedge2426.i ], [ 0, %.lr.ph2162.preheader ] ; 4 uses
  %.0376.i.i690.i2158 = phi i32 [ %.0376.i.i690.be.i, %.backedge2426.i ], [ 0, %.lr.ph2162.preheader ] ; 4 uses
  %.0381.i.i689.i2157 = phi i32 [ %.0381.i.i689.be.i, %.backedge2426.i ], [ %i.cvd, %.lr.ph2162.preheader ] ; 14 uses
  %.0398.i.i688.i2156 = phi i32 [ %.0398.i.i688.be.i, %.backedge2426.i ], [ 0, %.lr.ph2162.preheader ] ; 3 uses
  %.0403.i.i687.i2155 = phi i32 [ %i.cvz, %.backedge2426.i ], [ %.sroa.03.4.extract.trunc8, %.lr.ph2162.preheader ] ; 2 uses
  %i.cvz = add nsw i32 %.0403.i.i687.i2155, -1    ; 5 uses
  %i.cwa = sub i32 %i.ctb, %.0381.i.i689.i2157    ; 3 uses
  %i.cwb = icmp ult i32 %i.cwa, 8
  %or.cond445.i.i758.i = and i1 %.not, %i.cwb
  br i1 %or.cond445.i.i758.i, label %bb.tq, label %bb.rx

end_hunk_2
begin_hunk_3_@LZ4HC_compress_generic_internal:bb.a
  %i.fec = getelementptr inbounds [16 x i8], ptr %i.cqz, i64 %i.feb ; 2 uses
  %i.fed = getelementptr inbounds nuw i8, ptr %i.fec, i64 8 ; 2 uses
  %i.fee = load i32, ptr %i.fed, align 4, !tbaa !65 ; 3 uses
  %i.fef = getelementptr inbounds nuw i8, ptr %i.fec, i64 4 ; 2 uses
  %i.feg = load i32, ptr %i.fef, align 4, !tbaa !66
  store i32 %.0339.i, ptr %i.fed, align 4, !tbaa !65
  store i32 %.0338.i924, ptr %i.fef, align 4, !tbaa !66
  %i.feh = icmp sgt i32 %i.fee, %.0340.i
  %i.fei = sub nsw i32 %.0340.i, %i.fee
  br i1 %i.feh, label %.preheader1691.i, label %bb.aee

.preheader1691.i:                                 ; preds = %bb.aee
  %i.fej = icmp sgt i32 %.6381.i, 0
  br i1 %i.fej, label %.lr.ph1963.i, label %.loopexit1692.i

.lr.ph1963.i:                                     ; preds = %.preheader1691.i, %bb.aeq
  %.03371962.i = phi i32 [ %.1.i929, %bb.aeq ], [ 0, %.preheader1691.i ] ; 3 uses
  %.113021961.i = phi ptr [ %.21303.i, %bb.aeq ], [ %.013011984.i, %.preheader1691.i ] ; 11 uses
  %.113071960.i = phi ptr [ %.21308.i, %bb.aeq ], [ %.013061983.i, %.preheader1691.i ] ; 5 uses
  %.113141959.i = phi ptr [ %.21315.i, %bb.aeq ], [ %.013131982.i, %.preheader1691.i ] ; 5 uses
  %i.fek = sext i32 %.03371962.i to i64
  %i.fel = getelementptr inbounds [16 x i8], ptr %i.cqz, i64 %i.fek ; 2 uses
  %i.fem = getelementptr inbounds nuw i8, ptr %i.fel, i64 8
  %i.fen = load i32, ptr %i.fem, align 4, !tbaa !65 ; 4 uses
  %i.feo = getelementptr inbounds nuw i8, ptr %i.fel, i64 4
  %i.fep = load i32, ptr %i.feo, align 4, !tbaa !66 ; 3 uses
  %i.feq = icmp eq i32 %i.fen, 1
  br i1 %i.feq, label %bb.aef, label %bb.aeg

bb.aef:                                           ; preds = %.lr.ph1963.i
  %i.fer = getelementptr inbounds nuw i8, ptr %.113141959.i, i64 1
  %i.fes = add nsw i32 %.03371962.i, 1
  br label %bb.aeq, !llvm.loop !56

bb.aeg:                                           ; preds = %.lr.ph1963.i
  %i.fet = add nsw i32 %i.fen, %.03371962.i
  %i.feu = getelementptr i8, ptr %.113021961.i, i64 1 ; 4 uses
  %i.fev = ptrtoint ptr %.113141959.i to i64
  %i.few = ptrtoint ptr %.113071960.i to i64
  %i.fex = sub i64 %i.fev, %i.few                 ; 8 uses
  %i.fey = udiv i64 %i.fex, 255
  %i.fez = getelementptr inbounds nuw i8, ptr %i.feu, i64 %i.fey
  %i.ffa = getelementptr inbounds nuw i8, ptr %i.fez, i64 %i.fex
  %i.ffb = getelementptr inbounds nuw i8, ptr %i.ffa, i64 8
  %i.ffc = icmp ugt ptr %i.ffb, %spec.select.i912
  %or.cond.i.i925 = select i1 %.not.i.i914, i1 %i.ffc, i1 false
  br i1 %or.cond.i.i925, label %..thread1587.loopexit.i_crit_edge, label %bb.aeh

..thread1587.loopexit.i_crit_edge:                ; preds = %bb.aeg
  %.pre2738 = sext i32 %i.fen to i64
  br label %.thread1587.i

bb.aeh:                                           ; preds = %bb.aeg
  %i.ffd = icmp ugt i64 %i.fex, 14
  br i1 %i.ffd, label %bb.aei, label %bb.aej

bb.aei:                                           ; preds = %bb.aeh
  %i.ffe = add i64 %i.fex, -15                    ; 2 uses
  store i8 -16, ptr %.113021961.i, align 1, !tbaa !16
  %i.fff = icmp ugt i64 %i.ffe, 254
  br i1 %i.fff, label %.lr.ph1948.preheader.i, label %._crit_edge1949.i

.lr.ph1948.preheader.i:                           ; preds = %bb.aei
  %i.ffg = add i64 %i.fex, -270                   ; 2 uses
  %i.ffh = udiv i64 %i.ffg, 255                   ; 3 uses
  %i.ffi = add nuw nsw i64 %i.ffh, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.feu, i8 -1, i64 %i.ffi, i1 false), !tbaa !16
  %scevgep.i941 = getelementptr i8, ptr %.113021961.i, i64 2
  %scevgep2166.i = getelementptr i8, ptr %scevgep.i941, i64 %i.ffh
  %.neg2383.i = mul i64 %i.ffh, -255
  %i.ffj = add i64 %.neg2383.i, %i.ffg
  br label %._crit_edge1949.i

._crit_edge1949.i:                                ; preds = %.lr.ph1948.preheader.i, %bb.aei
  %.17.lcssa.i = phi ptr [ %i.feu, %bb.aei ], [ %scevgep2166.i, %.lr.ph1948.preheader.i ] ; 2 uses
  %.053.i429.lcssa.i = phi i64 [ %i.ffe, %bb.aei ], [ %i.ffj, %.lr.ph1948.preheader.i ]
  %i.ffk = trunc nuw i64 %.053.i429.lcssa.i to i8
  %i.ffl = getelementptr inbounds nuw i8, ptr %.17.lcssa.i, i64 1
  store i8 %i.ffk, ptr %.17.lcssa.i, align 1, !tbaa !16
  br label %.critedge.i426.i

bb.aej:                                           ; preds = %bb.aeh
  %.tr.i425.i = trunc nuw nsw i64 %i.fex to i8
  %i.ffm = shl nuw i8 %.tr.i425.i, 4
  store i8 %i.ffm, ptr %.113021961.i, align 1, !tbaa !16
  br label %.critedge.i426.i

.critedge.i426.i:                                 ; preds = %bb.aej, %._crit_edge1949.i
  %.13.i926 = phi ptr [ %i.ffl, %._crit_edge1949.i ], [ %i.feu, %bb.aej ] ; 3 uses
  %i.ffn = getelementptr inbounds nuw i8, ptr %.13.i926, i64 %i.fex ; 3 uses
  br label %bb.aek

bb.aek:                                           ; preds = %bb.aek, %.critedge.i426.i
  %.09.i444.i = phi ptr [ %.13.i926, %.critedge.i426.i ], [ %i.ffp, %bb.aek ] ; 2 uses
  %.0.i445.i = phi ptr [ %.113071960.i, %.critedge.i426.i ], [ %i.ffq, %bb.aek ] ; 2 uses
  %i.ffo = load i64, ptr %.0.i445.i, align 1
  store i64 %i.ffo, ptr %.09.i444.i, align 1
  %i.ffp = getelementptr inbounds nuw i8, ptr %.09.i444.i, i64 8 ; 2 uses
  %i.ffq = getelementptr inbounds nuw i8, ptr %.0.i445.i, i64 8
  %i.ffr = icmp ult ptr %i.ffp, %i.ffn
  br i1 %i.ffr, label %bb.aek, label %LZ4_wildCopy8.exit446.i, !llvm.loop !44

LZ4_wildCopy8.exit446.i:                          ; preds = %bb.aek
  %i.ffs = trunc i32 %i.fep to i16
  store i16 %i.ffs, ptr %i.ffn, align 1, !tbaa !36
  %i.fft = getelementptr i8, ptr %i.ffn, i64 2    ; 4 uses
  %i.ffu = sext i32 %i.fen to i64                 ; 5 uses
  %i.ffv = add nsw i64 %i.ffu, -4                 ; 3 uses
  %i.ffw = udiv i64 %i.ffv, 255
  %i.ffx = getelementptr inbounds nuw i8, ptr %i.fft, i64 %i.ffw
  %i.ffy = getelementptr inbounds nuw i8, ptr %i.ffx, i64 6
  %i.ffz = icmp ugt ptr %i.ffy, %spec.select.i912
  %or.cond70.i.i927 = select i1 %.not.i.i914, i1 %i.ffz, i1 false
  br i1 %or.cond70.i.i927, label %.thread1587.i, label %bb.ael

bb.ael:                                           ; preds = %LZ4_wildCopy8.exit446.i
  %i.fga = icmp ugt i64 %i.ffv, 14
  br i1 %i.fga, label %bb.aem, label %bb.aep

bb.aem:                                           ; preds = %bb.ael
  %i.fgb = load i8, ptr %.113021961.i, align 1, !tbaa !16
  %i.fgc = add i8 %i.fgb, 15
  store i8 %i.fgc, ptr %.113021961.i, align 1, !tbaa !16
  %i.fgd = add nsw i64 %i.ffu, -19                ; 2 uses
  %i.fge = icmp ugt i64 %i.fgd, 509
  br i1 %i.fge, label %.lr.ph1955.preheader.i, label %._crit_edge1956.i

.lr.ph1955.preheader.i:                           ; preds = %bb.aem
  %i.fgf = add nsw i64 %i.ffu, -529               ; 2 uses
  %i.fgg = udiv i64 %i.fgf, 510                   ; 2 uses
  %i.fgh = shl nuw nsw i64 %i.fgg, 1              ; 2 uses
  %i.fgi = add nuw nsw i64 %i.fgh, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fft, i8 -1, i64 %i.fgi, i1 false), !tbaa !16
  %scevgep2167.i = getelementptr i8, ptr %.13.i926, i64 4
  %i.fgj = getelementptr i8, ptr %scevgep2167.i, i64 %i.fex
  %scevgep2168.i = getelementptr i8, ptr %i.fgj, i64 %i.fgh
  %.neg2384.i = mul i64 %i.fgg, -510
  %i.fgk = add i64 %.neg2384.i, %i.fgf
  br label %._crit_edge1956.i

._crit_edge1956.i:                                ; preds = %.lr.ph1955.preheader.i, %bb.aem
  %.15.lcssa.i930 = phi ptr [ %i.fft, %bb.aem ], [ %scevgep2168.i, %.lr.ph1955.preheader.i ] ; 3 uses
  %.0.i427.lcssa.i = phi i64 [ %i.fgd, %bb.aem ], [ %i.fgk, %.lr.ph1955.preheader.i ] ; 3 uses
  %i.fgl = icmp samesign ugt i64 %.0.i427.lcssa.i, 254
  br i1 %i.fgl, label %bb.aen, label %bb.aeo

bb.aen:                                           ; preds = %._crit_edge1956.i
  %i.fgm = add nsw i64 %.0.i427.lcssa.i, -255
  %i.fgn = getelementptr inbounds nuw i8, ptr %.15.lcssa.i930, i64 1
  store i8 -1, ptr %.15.lcssa.i930, align 1, !tbaa !16
  br label %bb.aeo

bb.aeo:                                           ; preds = %bb.aen, %._crit_edge1956.i
  %.16.i931 = phi ptr [ %i.fgn, %bb.aen ], [ %.15.lcssa.i930, %._crit_edge1956.i ] ; 2 uses
  %.1.i428.i = phi i64 [ %i.fgm, %bb.aen ], [ %.0.i427.lcssa.i, %._crit_edge1956.i ]
  %i.fgo = trunc nuw i64 %.1.i428.i to i8
  %i.fgp = getelementptr inbounds nuw i8, ptr %.16.i931, i64 1
  store i8 %i.fgo, ptr %.16.i931, align 1, !tbaa !16
  br label %select.unfold1586.i

bb.aep:                                           ; preds = %bb.ael
  %i.fgq = trunc nuw nsw i64 %i.ffv to i8
  %i.fgr = load i8, ptr %.113021961.i, align 1, !tbaa !16
  %i.fgs = add i8 %i.fgr, %i.fgq
  store i8 %i.fgs, ptr %.113021961.i, align 1, !tbaa !16
  br label %select.unfold1586.i

select.unfold1586.i:                              ; preds = %bb.aep, %bb.aeo
  %.14.i928 = phi ptr [ %i.fgp, %bb.aeo ], [ %i.fft, %bb.aep ]
  %i.fgt = getelementptr inbounds i8, ptr %.113141959.i, i64 %i.ffu ; 2 uses
  br label %bb.aeq

bb.aeq:                                           ; preds = %select.unfold1586.i, %bb.aef
  %.21315.i = phi ptr [ %i.fer, %bb.aef ], [ %i.fgt, %select.unfold1586.i ] ; 2 uses
  %.21308.i = phi ptr [ %.113071960.i, %bb.aef ], [ %i.fgt, %select.unfold1586.i ] ; 2 uses
  %.21303.i = phi ptr [ %.113021961.i, %bb.aef ], [ %.14.i928, %select.unfold1586.i ] ; 2 uses
  %.1.i929 = phi i32 [ %i.fes, %bb.aef ], [ %i.fet, %select.unfold1586.i ] ; 2 uses
  %i.fgu = icmp slt i32 %.1.i929, %.6381.i
  br i1 %i.fgu, label %.lr.ph1963.i, label %.loopexit1692.i

select.unfold1596.i:                              ; preds = %bb.vt, %bb.vs
  %.20.i948 = phi ptr [ %i.dms, %bb.vs ], [ %i.dlx, %bb.vt ]
  %i.fgv = getelementptr inbounds nuw i8, ptr %.013131982.i, i64 %.sroa.03.sroa.4.0.insert.shift.i719.i ; 2 uses
  br label %.loopexit1692.i

.loopexit1692.i:                                  ; preds = %bb.aeq, %select.unfold1596.i, %.preheader1691.i, %LZ4HC_FindLongerMatch.exit917.thread.i
  %.31316.i = phi ptr [ %i.dla, %LZ4HC_FindLongerMatch.exit917.thread.i ], [ %i.fgv, %select.unfold1596.i ], [ %.013131982.i, %.preheader1691.i ], [ %.21315.i, %bb.aeq ] ; 2 uses
  %.31309.i = phi ptr [ %.013061983.i, %LZ4HC_FindLongerMatch.exit917.thread.i ], [ %i.fgv, %select.unfold1596.i ], [ %.013061983.i, %.preheader1691.i ], [ %.21308.i, %bb.aeq ] ; 2 uses
  %.3.i915 = phi ptr [ %.013011984.i, %LZ4HC_FindLongerMatch.exit917.thread.i ], [ %.20.i948, %select.unfold1596.i ], [ %.013011984.i, %.preheader1691.i ], [ %.21303.i, %bb.aeq ] ; 2 uses
  %.not.i916 = icmp ugt ptr %.31316.i, %i.crd
  br i1 %.not.i916, label %.loopexit1697.i, label %bb.rw

.loopexit1697.i:                                  ; preds = %.loopexit1692.i, %LZ4HC_encodeSequence.exit.i935, %bb.rv
  %.41310.i = phi ptr [ %i.flc, %LZ4HC_encodeSequence.exit.i935 ], [ %1, %bb.rv ], [ %.31309.i, %.loopexit1692.i ] ; 3 uses
  %.41304.i = phi ptr [ %.12.i936, %LZ4HC_encodeSequence.exit.i935 ], [ %2, %bb.rv ], [ %.3.i915, %.loopexit1692.i ] ; 3 uses
  %i.fgw = ptrtoint ptr %i.crc to i64
  %i.fgx = ptrtoint ptr %.41310.i to i64
  %i.fgy = sub i64 %i.fgw, %i.fgx                 ; 3 uses
  %i.fgz = add i64 %i.fgy, 240
  %i.fha = udiv i64 %i.fgz, 255
  %10 = getelementptr inbounds nuw i8, ptr %spec.select.i912, i64 5
  %spec.select422.i = select i1 %i.cri, ptr %10, ptr %i.crh ; 2 uses
  %.not417.i = icmp ne i32 %6, 0
  %i.fhb = getelementptr i8, ptr %.41304.i, i64 %i.fha
  %i.fhc = getelementptr i8, ptr %i.fhb, i64 1
  %i.fhd = getelementptr i8, ptr %i.fhc, i64 %i.fgy
  %i.fhe = icmp ugt ptr %i.fhd, %spec.select422.i
  %or.cond1670.i = select i1 %.not417.i, i1 %i.fhe, i1 false
  br i1 %or.cond1670.i, label %bb.aer, label %bb.aes

.thread1624.i:                                    ; preds = %bb.aex, %bb.aew
  %i.fhf = ptrtoint ptr %i.crc to i64
  %i.fhg = sub i64 %i.fhf, %i.fir                 ; 3 uses
  %i.fhh = add i64 %i.fhg, 240
  %i.fhi = udiv i64 %i.fhh, 255
  %i.fhj = getelementptr i8, ptr %.4.ph.i, i64 %i.fhi
  %i.fhk = getelementptr i8, ptr %i.fhj, i64 1
  %i.fhl = getelementptr i8, ptr %i.fhk, i64 %i.fhg
  %i.fhm = icmp ugt ptr %i.fhl, %i.crh
  br i1 %i.fhm, label %.thread1633.i, label %bb.aes

bb.aer:                                           ; preds = %.loopexit1697.i
  %i.fhn = icmp eq i32 %6, 1
  br i1 %i.fhn, label %bb.afg, label %.thread1633.i

.thread1633.i:                                    ; preds = %bb.aer, %.thread1624.i
  %spec.select422162316291640.i = phi ptr [ %spec.select422.i, %bb.aer ], [ %i.crh, %.thread1624.i ]
  %.41304162116301639.i = phi ptr [ %.41304.i, %bb.aer ], [ %.4.ph.i, %.thread1624.i ] ; 2 uses
  %.41310161916311638.i = phi ptr [ %.41310.i, %bb.aer ], [ %.31309.ph.i, %.thread1624.i ]
  %i.fho = ptrtoint ptr %spec.select422162316291640.i to i64
  %i.fhp = ptrtoint ptr %.41304162116301639.i to i64
  %i.fhq = xor i64 %i.fhp, -1
  %i.fhr = add i64 %i.fhq, %i.fho                 ; 2 uses
  %i.fhs = add i64 %i.fhr, 241
  %i.fht = lshr i64 %i.fhs, 8
  %i.fhu = sub i64 %i.fhr, %i.fht
  br label %bb.aes

bb.aes:                                           ; preds = %.thread1633.i, %.thread1624.i, %.loopexit1697.i
  %.413041622.i = phi ptr [ %.41304162116301639.i, %.thread1633.i ], [ %.4.ph.i, %.thread1624.i ], [ %.41304.i, %.loopexit1697.i ] ; 6 uses
  %.413101620.i = phi ptr [ %.41310161916311638.i, %.thread1633.i ], [ %.31309.ph.i, %.thread1624.i ], [ %.41310.i, %.loopexit1697.i ] ; 2 uses
  %.0336.i917 = phi i64 [ %i.fhu, %.thread1633.i ], [ %i.fhg, %.thread1624.i ], [ %i.fgy, %.loopexit1697.i ] ; 7 uses
  %i.fhv = getelementptr inbounds nuw i8, ptr %.413101620.i, i64 %.0336.i917
  %i.fhw = icmp ugt i64 %.0336.i917, 14
  %.513052003.i = getelementptr i8, ptr %.413041622.i, i64 1 ; 3 uses
  br i1 %i.fhw, label %bb.aet, label %bb.aeu

bb.aet:                                           ; preds = %bb.aes
  %i.fhx = add i64 %.0336.i917, -15               ; 2 uses
  store i8 -16, ptr %.413041622.i, align 1, !tbaa !16
  %i.fhy = icmp ugt i64 %i.fhx, 254
  br i1 %i.fhy, label %.lr.ph2007.preheader.i, label %._crit_edge2008.i

.lr.ph2007.preheader.i:                           ; preds = %bb.aet
  %i.fhz = add i64 %.0336.i917, -270              ; 2 uses
  %i.fia = udiv i64 %i.fhz, 255                   ; 3 uses
  %i.fib = add nuw nsw i64 %i.fia, 1              ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.513052003.i, i8 -1, i64 %i.fib, i1 false), !tbaa !16
  %scevgep2175.i = getelementptr i8, ptr %.413041622.i, i64 %i.fib
  %.neg2389.i = mul i64 %i.fia, -255
  %i.fic = add i64 %.neg2389.i, %i.fhz
  %i.fid = getelementptr i8, ptr %.413041622.i, i64 %i.fia
  %scevgep2176.i = getelementptr i8, ptr %i.fid, i64 2
  br label %._crit_edge2008.i

._crit_edge2008.i:                                ; preds = %.lr.ph2007.preheader.i, %bb.aet
  %.413041622.pn.lcssa.i = phi ptr [ %.413041622.i, %bb.aet ], [ %scevgep2175.i, %.lr.ph2007.preheader.i ]
  %.0.lcssa.i920 = phi i64 [ %i.fhx, %bb.aet ], [ %i.fic, %.lr.ph2007.preheader.i ]
  %.51305.lcssa.i = phi ptr [ %.513052003.i, %bb.aet ], [ %scevgep2176.i, %.lr.ph2007.preheader.i ]
  %i.fie = trunc nuw i64 %.0.lcssa.i920 to i8
  %i.fif = getelementptr inbounds nuw i8, ptr %.413041622.pn.lcssa.i, i64 2
  store i8 %i.fie, ptr %.51305.lcssa.i, align 1, !tbaa !16
  br label %bb.aev

bb.aeu:                                           ; preds = %bb.aes
  %.0336.tr.i = trunc nuw nsw i64 %.0336.i917 to i8
  %i.fig = shl nuw i8 %.0336.tr.i, 4
  store i8 %i.fig, ptr %.413041622.i, align 1, !tbaa !16
  br label %bb.aev

bb.aev:                                           ; preds = %bb.aeu, %._crit_edge2008.i
  %.6.i918 = phi ptr [ %i.fif, %._crit_edge2008.i ], [ %.513052003.i, %bb.aeu ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.6.i918, ptr align 1 %.413101620.i, i64 %.0336.i917, i1 false)
  %i.fih = getelementptr inbounds nuw i8, ptr %.6.i918, i64 %.0336.i917
  %i.fii = ptrtoint ptr %i.fhv to i64
  %i.fij = ptrtoint ptr %1 to i64
  %i.fik = sub i64 %i.fii, %i.fij
  %i.fil = trunc i64 %i.fik to i32
  store i32 %i.fil, ptr %3, align 4, !tbaa !9
  %i.fim = ptrtoint ptr %i.fih to i64
  %i.fin = ptrtoint ptr %2 to i64
  %i.fio = sub i64 %i.fim, %i.fin
  %i.fip = trunc i64 %i.fio to i32
  br label %bb.afg

.thread1587.i:                                    ; preds = %LZ4_wildCopy8.exit.i947, %bb.vk, %LZ4_wildCopy8.exit446.i, %..thread1587.loopexit.i_crit_edge
  %.31316.ph.i = phi ptr [ %.113141959.i, %..thread1587.loopexit.i_crit_edge ], [ %.113141959.i, %LZ4_wildCopy8.exit446.i ], [ %.013131982.i, %bb.vk ], [ %.013131982.i, %LZ4_wildCopy8.exit.i947 ] ; 2 uses
  %.31309.ph.i = phi ptr [ %.113071960.i, %..thread1587.loopexit.i_crit_edge ], [ %.113071960.i, %LZ4_wildCopy8.exit446.i ], [ %.013061983.i, %bb.vk ], [ %.013061983.i, %LZ4_wildCopy8.exit.i947 ] ; 4 uses
  %.5374.ph.i = phi i32 [ %i.fep, %..thread1587.loopexit.i_crit_edge ], [ %i.fep, %LZ4_wildCopy8.exit446.i ], [ %.22370.i.i702.i, %bb.vk ], [ %.22370.i.i702.i, %LZ4_wildCopy8.exit.i947 ]
  %.5.ph.i = phi i64 [ %.pre2738, %..thread1587.loopexit.i_crit_edge ], [ %i.ffu, %LZ4_wildCopy8.exit446.i ], [ %.sroa.03.sroa.4.0.insert.shift.i719.i, %bb.vk ], [ %.sroa.03.sroa.4.0.insert.shift.i719.i, %LZ4_wildCopy8.exit.i947 ]
  %.4.ph.i = phi ptr [ %.113021961.i, %..thread1587.loopexit.i_crit_edge ], [ %.113021961.i, %LZ4_wildCopy8.exit446.i ], [ %.013011984.i, %bb.vk ], [ %.013011984.i, %LZ4_wildCopy8.exit.i947 ] ; 12 uses
  br i1 %i.cri, label %bb.aew, label %bb.afg

bb.aew:                                           ; preds = %.thread1587.i
  %i.fiq = ptrtoint ptr %.31316.ph.i to i64       ; 3 uses
  %i.fir = ptrtoint ptr %.31309.ph.i to i64       ; 4 uses
  %i.fis = sub i64 %i.fiq, %i.fir                 ; 6 uses
  %i.fit = add i64 %i.fis, 240
  %i.fiu = udiv i64 %i.fit, 255
  %i.fiv = getelementptr inbounds i8, ptr %i.crh, i64 -8 ; 2 uses
  %i.fiw = getelementptr i8, ptr %.4.ph.i, i64 %i.fiu
  %i.fix = getelementptr i8, ptr %i.fiw, i64 1
  %i.fiy = getelementptr i8, ptr %i.fix, i64 %i.fis ; 3 uses
  %.not416.i = icmp ugt ptr %i.fiy, %i.fiv
  br i1 %.not416.i, label %.thread1624.i, label %bb.aex

bb.aex:                                           ; preds = %bb.aew
  %i.fiz = ptrtoint ptr %i.fiv to i64
  %i.fja = ptrtoint ptr %i.fiy to i64
  %i.fjb = sub i64 %i.fiz, %i.fja
  %i.fjc = mul i64 %i.fjb, 255
  %i.fjd = add i64 %i.fjc, 18
  %spec.select4241677.i = tail call i64 @llvm.umin.i64(i64 %i.fjd, i64 %.5.ph.i)
  %i.fje = getelementptr inbounds nuw i8, ptr %i.fiy, i64 2
  %i.fjf = ptrtoint ptr %i.crh to i64
  %i.fjg = ptrtoint ptr %i.fje to i64
  %i.fjh = shl i64 %spec.select4241677.i, 32
  %i.fji = ashr exact i64 %i.fjh, 32              ; 5 uses
  %i.fjj = add i64 %i.fji, %i.fjf
  %i.fjk = sub i64 %i.fjg, %i.fjj
  %i.fjl = icmp slt i64 %i.fjk, -12
  br i1 %i.fjl, label %bb.aey, label %.thread1624.i

bb.aey:                                           ; preds = %bb.aex
  %i.fjm = getelementptr i8, ptr %.4.ph.i, i64 1  ; 3 uses
  %i.fjn = icmp ugt i64 %i.fis, 14
  br i1 %i.fjn, label %bb.aez, label %bb.afa

bb.aez:                                           ; preds = %bb.aey
  %i.fjo = add i64 %i.fis, -15                    ; 2 uses
  store i8 -16, ptr %.4.ph.i, align 1, !tbaa !16
  %i.fjp = icmp ugt i64 %i.fjo, 254
  br i1 %i.fjp, label %.lr.ph1992.preheader.i, label %._crit_edge1993.i

.lr.ph1992.preheader.i:                           ; preds = %bb.aez
  %i.fjq = add i64 %i.fiq, -270
  %i.fjr = sub i64 %i.fjq, %i.fir                 ; 2 uses
  %i.fjs = udiv i64 %i.fjr, 255                   ; 3 uses
  %i.fjt = add nuw nsw i64 %i.fjs, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fjm, i8 -1, i64 %i.fjt, i1 false), !tbaa !16
  %i.fju = getelementptr i8, ptr %.4.ph.i, i64 %i.fjs
  %scevgep2173.i = getelementptr i8, ptr %i.fju, i64 2
  %.neg2387.i = mul i64 %i.fjs, -255
  %i.fjv = add i64 %.neg2387.i, %i.fjr
  br label %._crit_edge1993.i

._crit_edge1993.i:                                ; preds = %.lr.ph1992.preheader.i, %bb.aez
  %.11.lcssa.i = phi ptr [ %i.fjm, %bb.aez ], [ %scevgep2173.i, %.lr.ph1992.preheader.i ] ; 2 uses
  %.053.i.lcssa.i940 = phi i64 [ %i.fjo, %bb.aez ], [ %i.fjv, %.lr.ph1992.preheader.i ]
  %i.fjw = trunc nuw i64 %.053.i.lcssa.i940 to i8
  %i.fjx = getelementptr inbounds nuw i8, ptr %.11.lcssa.i, i64 1
  store i8 %i.fjw, ptr %.11.lcssa.i, align 1, !tbaa !16
  br label %.critedge.i.i933

bb.afa:                                           ; preds = %bb.aey
  %.tr.i.i932 = trunc nuw nsw i64 %i.fis to i8
  %i.fjy = shl nuw i8 %.tr.i.i932, 4
  store i8 %i.fjy, ptr %.4.ph.i, align 1, !tbaa !16
  br label %.critedge.i.i933

.critedge.i.i933:                                 ; preds = %bb.afa, %._crit_edge1993.i
  %.8.i934 = phi ptr [ %i.fjx, %._crit_edge1993.i ], [ %i.fjm, %bb.afa ] ; 3 uses
  %i.fjz = getelementptr inbounds nuw i8, ptr %.8.i934, i64 %i.fis ; 3 uses
  br label %bb.afb

bb.afb:                                           ; preds = %bb.afb, %.critedge.i.i933
  %.09.i447.i = phi ptr [ %.8.i934, %.critedge.i.i933 ], [ %i.fkb, %bb.afb ] ; 2 uses
  %.0.i448.i = phi ptr [ %.31309.ph.i, %.critedge.i.i933 ], [ %i.fkc, %bb.afb ] ; 2 uses
  %i.fka = load i64, ptr %.0.i448.i, align 1
  store i64 %i.fka, ptr %.09.i447.i, align 1
  %i.fkb = getelementptr inbounds nuw i8, ptr %.09.i447.i, i64 8 ; 2 uses
  %i.fkc = getelementptr inbounds nuw i8, ptr %.0.i448.i, i64 8
  %i.fkd = icmp ult ptr %i.fkb, %i.fjz
  br i1 %i.fkd, label %bb.afb, label %LZ4_wildCopy8.exit449.i, !llvm.loop !44

LZ4_wildCopy8.exit449.i:                          ; preds = %bb.afb
  %i.fke = trunc i32 %.5374.ph.i to i16
  store i16 %i.fke, ptr %i.fjz, align 1, !tbaa !36
  %i.fkf = getelementptr i8, ptr %i.fjz, i64 2    ; 3 uses
  %i.fkg = add nsw i64 %i.fji, -4                 ; 2 uses
  %i.fkh = icmp ugt i64 %i.fkg, 14
  br i1 %i.fkh, label %bb.afc, label %bb.aff

bb.afc:                                           ; preds = %LZ4_wildCopy8.exit449.i
  %i.fki = load i8, ptr %.4.ph.i, align 1, !tbaa !16
  %i.fkj = add i8 %i.fki, 15
  store i8 %i.fkj, ptr %.4.ph.i, align 1, !tbaa !16
  %i.fkk = add nsw i64 %i.fji, -19                ; 2 uses
  %i.fkl = icmp ugt i64 %i.fkk, 509
  br i1 %i.fkl, label %.lr.ph1999.preheader.i, label %._crit_edge2000.i

.lr.ph1999.preheader.i:                           ; preds = %bb.afc
end_hunk_3
