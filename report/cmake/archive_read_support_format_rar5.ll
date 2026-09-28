Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_read_support_format_rar5?download=true
inline.NumInlined: 224
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 11
begin_hunk_0_@do_unstore_file:bb.a
  br i1 %i.u, label %advance_multivolume.exit.thread73, label %.lr.ph106

.lr.ph106:                                        ; preds = %._crit_edge, %skip_base_block.exit54.thread57
  %i.v = phi i32 [ %i.ad, %skip_base_block.exit54.thread57 ], [ %i.t, %._crit_edge ] ; 2 uses
  %.val.val.i50105 = phi ptr [ %.val.val.i50, %skip_base_block.exit54.thread57 ], [ %.val.val.i50104, %._crit_edge ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val.val.i50105, i64 40
  %i.x = load i32, ptr %i.w, align 8, !tbaa !72
  %i.y = icmp eq i32 %i.x, 2
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph106
  %i.z = getelementptr inbounds nuw i8, ptr %.val.val.i50105, i64 32
  %i.aa = load i8, ptr %i.z, align 8
  %i.ab = and i8 %i.aa, 2
  %.not.i53 = icmp eq i8 %i.ab, 0
  br i1 %.not.i53, label %bb.f, label %advance_multivolume.exit.thread69

bb.f:                                             ; preds = %bb.e, %.lr.ph106
  switch i32 %i.v, label %advance_multivolume.exit.thread73 [
    i32 0, label %skip_base_block.exit54.thread57
    i32 -10, label %skip_base_block.exit54.thread57
  ]

skip_base_block.exit54.thread57:                  ; preds = %bb.f, %bb.f
  %.val.i49 = load ptr, ptr %i.n, align 8, !tbaa !50
  %.val.val.i50 = load ptr, ptr %.val.i49, align 8, !tbaa !52
  %i.ac = tail call ptr @archive_entry_new() #14, !inline_history !114 ; 2 uses
  %i.ad = tail call fastcc i32 @process_base_block(ptr noundef nonnull %0, ptr noundef %i.ac), !inline_history !114 ; 3 uses
  tail call void @archive_entry_free(ptr noundef %i.ac) #14, !inline_history !114
  %i.ae = icmp eq i32 %i.ad, -30
  br i1 %i.ae, label %advance_multivolume.exit.thread73, label %.lr.ph106, !llvm.loop !2

advance_multivolume.exit.thread73:                ; preds = %skip_base_block.exit54.thread57, %bb.f, %._crit_edge
  %.lcssa101 = phi i32 [ %i.t, %._crit_edge ], [ %i.ad, %skip_base_block.exit54.thread57 ], [ %i.v, %bb.f ]
  %i.af = load i8, ptr %i.k, align 8
  %i.ag = and i8 %i.af, -5
  store i8 %i.ag, ptr %i.k, align 8
  br label %update_crc.exit

.lr.ph:                                           ; preds = %bb.d, %.backedge
  %.val.i45 = load ptr, ptr %i.n, align 8, !tbaa !50
  %.val.val.i46 = load ptr, ptr %.val.i45, align 8, !tbaa !52 ; 2 uses
  %i.ah = tail call ptr @archive_entry_new() #14, !inline_history !114 ; 2 uses
  %i.ai = tail call fastcc i32 @process_base_block(ptr noundef nonnull %0, ptr noundef %i.ah), !inline_history !114 ; 3 uses
  tail call void @archive_entry_free(ptr noundef %i.ah) #14, !inline_history !114
  %i.aj = icmp eq i32 %i.ai, -30
  br i1 %i.aj, label %advance_multivolume.exit.thread, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.val.i46, i64 40
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !72
  %i.am = icmp eq i32 %i.al, 2
  br i1 %i.am, label %bb.h, label %skip_base_block.exit

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %.val.val.i46, i64 32
  %i.ao = load i8, ptr %i.an, align 8
  %i.ap = and i8 %i.ao, 2
  %.not.i48 = icmp eq i8 %i.ap, 0
  br i1 %.not.i48, label %skip_base_block.exit, label %skip_base_block.exit.thread

skip_base_block.exit:                             ; preds = %bb.h, %bb.g
  %i.aq = icmp eq i32 %i.ai, 0
  %spec.select76 = select i1 %i.aq, i32 -10, i32 %i.ai ; 3 uses
  switch i32 %spec.select76, label %skip_base_block.exit.thread [
    i32 -25, label %advance_multivolume.exit.thread
    i32 -10, label %.backedge
  ]

skip_base_block.exit.thread:                      ; preds = %bb.h, %skip_base_block.exit
  %.0.i4763 = phi i32 [ %spec.select76, %skip_base_block.exit ], [ 0, %bb.h ] ; 2 uses
  %i.ar = load i8, ptr %i.o, align 4              ; 2 uses
  %i.as = and i8 %i.ar, 4
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %advance_multivolume.exit, label %._crit_edge

.backedge:                                        ; preds = %skip_base_block.exit
  %.pre = load i8, ptr %i.o, align 4              ; 2 uses
  %.pre88 = and i8 %.pre, 4
  %i.au = icmp eq i8 %.pre88, 0
  br i1 %i.au, label %.lr.ph, label %._crit_edge

advance_multivolume.exit.thread69:                ; preds = %bb.e
  %i.av = load i8, ptr %i.k, align 8
  %i.aw = and i8 %i.av, -5
  store i8 %i.aw, ptr %i.k, align 8
  br label %bb.i

advance_multivolume.exit.thread:                  ; preds = %skip_base_block.exit, %.lr.ph
  %.118.i.ph = phi i32 [ -30, %.lr.ph ], [ %spec.select76, %skip_base_block.exit ]
  %i.ax = load i8, ptr %i.k, align 8
  %i.ay = and i8 %i.ax, -5
  store i8 %i.ay, ptr %i.k, align 8
  br label %update_crc.exit

advance_multivolume.exit:                         ; preds = %skip_base_block.exit.thread
  %i.az = load i8, ptr %i.k, align 8
  %i.ba = and i8 %i.az, -5
  store i8 %i.ba, ptr %i.k, align 8
  %.not38 = icmp eq i32 %.0.i4763, 0
  br i1 %.not38, label %bb.i, label %update_crc.exit

bb.i:                                             ; preds = %advance_multivolume.exit.thread69, %advance_multivolume.exit, %bb.c, %bb.b
  %.pr = load i64, ptr %i.b, align 8, !tbaa !64   ; 2 uses
  %spec.select = tail call i64 @llvm.smin.i64(i64 %.pr, i64 65536)
  %i.bb = icmp eq i64 %.pr, 0
  br i1 %i.bb, label %update_crc.exit, label %bb.j

bb.j:                                             ; preds = %.thread, %bb.i
  %spec.select98 = phi i64 [ %spec.select97, %.thread ], [ %spec.select, %bb.i ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 -1, ptr %i.a, align 8, !tbaa !33
  %i.bc = call ptr @__archive_read_ahead(ptr noundef %0, i64 noundef %spec.select98, ptr noundef nonnull %i.a) #14 ; 4 uses
  %.not77 = icmp eq ptr %i.bc, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br i1 %.not77, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 84, ptr noundef nonnull @.str.39) #14
  br label %update_crc.exit

bb.l:                                             ; preds = %bb.j
  %i.bd = call i64 @__archive_read_consume(ptr noundef %0, i64 noundef %spec.select98) #14
  %i.be = icmp eq i64 %spec.select98, %i.bd
  br i1 %i.be, label %bb.m, label %update_crc.exit

bb.m:                                             ; preds = %bb.l
  %.not41 = icmp eq ptr %2, null
  br i1 %.not41, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr %i.bc, ptr %2, align 8, !tbaa !60
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.not42 = icmp eq ptr %3, null
  br i1 %.not42, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i64 %spec.select98, ptr %3, align 8, !tbaa !33
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.not43 = icmp eq ptr %4, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.pre87 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !115 ; 2 uses
  br i1 %.not43, label %._crit_edge86, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i64 %.pre87, ptr %4, align 8, !tbaa !33
  br label %._crit_edge86

._crit_edge86:                                    ; preds = %bb.q, %bb.r
  %i.bf = load i64, ptr %i.b, align 8, !tbaa !64
  %i.bg = sub i64 %i.bf, %spec.select98
  store i64 %i.bg, ptr %i.b, align 8, !tbaa !64
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bi = add i64 %.pre87, %spec.select98
  store i64 %i.bi, ptr %i.bh, align 8, !tbaa !115
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !54
  %.not.not.i = icmp eq i32 %i.bk, 0
  br i1 %.not.not.i, label %bb.s, label %update_crc.exit

bb.s:                                             ; preds = %._crit_edge86
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 19444
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !81
  %.not.i44 = icmp eq i32 %i.bm, 0
  br i1 %.not.i44, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 19448 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !83
  %i.bp = zext i32 %i.bo to i64
  %i.bq = trunc i64 %spec.select98 to i32
  %i.br = call i64 @cm_zlib_crc32(i64 noundef %i.bp, ptr noundef nonnull %i.bc, i32 noundef %i.bq) #14
  %i.bs = trunc i64 %i.br to i32
  store i32 %i.bs, ptr %i.bn, align 8, !tbaa !83
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 21240
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !82
  %i.bv = icmp sgt i8 %i.bu, 0
  br i1 %i.bv, label %bb.v, label %update_crc.exit

bb.v:                                             ; preds = %bb.u
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 19488
  %i.bx = call i32 @blake2sp_update(ptr noundef nonnull %i.bw, ptr noundef nonnull %i.bc, i64 noundef %spec.select98) #14 ; 0 uses
  br label %update_crc.exit

update_crc.exit:                                  ; preds = %advance_multivolume.exit.thread73, %bb.v, %bb.u, %._crit_edge86, %advance_multivolume.exit.thread, %bb.l, %bb.i, %advance_multivolume.exit, %bb.k
  %.1 = phi i32 [ %.0.i4763, %advance_multivolume.exit ], [ 1, %bb.i ], [ %.118.i.ph, %advance_multivolume.exit.thread ], [ -30, %bb.k ], [ 1, %bb.l ], [ 0, %._crit_edge86 ], [ 0, %bb.u ], [ 0, %bb.v ], [ %.lcssa101, %advance_multivolume.exit.thread73 ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef range(i32 -30, 2) i32 @uncompress_file(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca [20 x i8], align 16               ; 6 uses
  %i.c = alloca [430 x i8], align 16              ; 11 uses
  %i.d = alloca i16, align 2                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i16, align 2                      ; 6 uses
  %i.h = alloca i16, align 2                      ; 5 uses
  %i.i = alloca i16, align 2                      ; 6 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %i.k = alloca i64, align 8                      ; 4 uses
  %i.l = alloca [4 x i8], align 4                 ; 6 uses
  %i.m = alloca [4 x i8], align 4                 ; 6 uses
  %i.n = getelementptr i8, ptr %0, i64 2072       ; 16 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 306
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 370
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 386
  %scevgep = getelementptr i8, ptr %i.c, i64 -1
  br label %bb.b

bb.b:                                             ; preds = %do_uncompress_file.exit, %bb.a
  %.val.i = load ptr, ptr %i.n, align 8, !tbaa !50
  %.val.val.i = load ptr, ptr %.val.i, align 8, !tbaa !52 ; 29 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 56 ; 3 uses
  %i.s = load i8, ptr %i.r, align 8               ; 3 uses
  %i.t = and i8 %i.s, 1
  %.not.i = icmp eq i8 %i.t, 0
  br i1 %.not.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 44
  %i.v = load i8, ptr %i.u, align 4
  %i.w = and i8 %i.v, 1
  %.not42.i = icmp eq i8 %i.w, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 80
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !65 ; 2 uses
  br i1 %.not42.i, label %._crit_edge481, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43.i = icmp eq ptr %.pre, null
  br i1 %.not43.i, label %._crit_edge481, label %bb.f

._crit_edge481:                                   ; preds = %bb.c, %bb.d
  %i.x = phi ptr [ null, %bb.d ], [ %.pre, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 19448
  store i32 0, ptr %i.y, align 8, !tbaa !83
  %i.z = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 72 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !78
  %spec.select.i.i24 = call i64 @llvm.usub.sat.i64(i64 %i.aa, i64 1)
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 104
  store i64 %spec.select.i.i24, ptr %i.ab, align 8, !tbaa !79
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 80
  call void @free(ptr noundef %i.x) #14
  %i.ad = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 88 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !66
  call void @free(ptr noundef %i.ae) #14
  %i.af = load i64, ptr %i.z, align 8, !tbaa !78  ; 3 uses
  %i.ag = icmp sgt i64 %i.af, 0
  br i1 %i.ag, label %bb.e, label %init_unpack.exit

bb.e:                                             ; preds = %._crit_edge481
  %i.ah = call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.af) #17
  %i.ai = call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.af) #17
  br label %init_unpack.exit

init_unpack.exit:                                 ; preds = %._crit_edge481, %bb.e
  %.sink.i = phi ptr [ %i.ah, %bb.e ], [ null, %._crit_edge481 ]
  %storemerge.i = phi ptr [ %i.ai, %bb.e ], [ null, %._crit_edge481 ]
  store ptr %.sink.i, ptr %i.ac, align 8, !tbaa !65
  store ptr %storemerge.i, ptr %i.ad, align 8, !tbaa !66
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 19304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aj, i8 0, i64 64, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 112
  %i.al = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 156
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(19100) %i.al, i8 0, i64 19100, i1 false)
  %.pre482 = load i8, ptr %i.r, align 8
  br label %bb.f

bb.f:                                             ; preds = %init_unpack.exit, %bb.d
  %i.am = phi i8 [ %.pre482, %init_unpack.exit ], [ %i.s, %bb.d ]
  %i.an = or i8 %i.am, 1                          ; 2 uses
  store i8 %i.an, ptr %i.r, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %i.ao = phi i8 [ %i.an, %bb.f ], [ %i.s, %bb.b ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 72
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !78
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 84, ptr noundef nonnull @.str.40) #14, !inline_history !116
  br label %do_uncompress_file.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.as = and i8 %i.ao, 2
  %.not44.i = icmp eq i8 %i.as, 0
  br i1 %.not44.i, label %.loopexit193, label %.preheader191

.preheader191:                                    ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 120
  %i.au = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 112
  %i.av = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 21296
  br label %bb.j

bb.j:                                             ; preds = %.preheader191, %bb.ds
  %.val.i9 = load ptr, ptr %i.n, align 8, !tbaa !50
  %.val.val.i10 = load ptr, ptr %.val.i9, align 8, !tbaa !52 ; 17 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.val.val.i10, i64 44 ; 5 uses
  %i.ax = load i8, ptr %i.aw, align 4             ; 3 uses
  %i.ay = and i8 %i.ax, 2
  %.not.i11 = icmp eq i8 %i.ay, 0
  br i1 %.not.i11, label %advance_multivolume.exit.i.thread95, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %.val.val.i10, i64 19368
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !64
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %.preheader, label %advance_multivolume.exit.i.thread95

.preheader:                                       ; preds = %bb.k
  %i.bc = and i8 %i.ax, 4
  %.not.i.i23362 = icmp eq i8 %i.bc, 0
  br i1 %.not.i.i23362, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.backedge190, %skip_base_block.exit.thread, %skip_base_block.exit.thread.thread, %.preheader
  %.lcssa200 = phi i8 [ %i.ax, %.preheader ], [ %i.cb, %skip_base_block.exit.thread ], [ %i.ce, %skip_base_block.exit.thread.thread ], [ %.pre483, %.backedge190 ]
  %i.bd = and i8 %.lcssa200, -5
  store i8 %i.bd, ptr %i.aw, align 4
  %.val.i62818 = load ptr, ptr %i.n, align 8, !tbaa !50
  %.val.val.i63819 = load ptr, ptr %.val.i62818, align 8, !tbaa !52
  %i.be = call ptr @archive_entry_new() #14, !inline_history !117 ; 2 uses
  %i.bf = call fastcc i32 @process_base_block(ptr noundef %0, ptr noundef %i.be), !inline_history !117 ; 2 uses
  call void @archive_entry_free(ptr noundef %i.be) #14, !inline_history !117
  %i.bg = icmp eq i32 %i.bf, -30
  br i1 %i.bg, label %do_uncompress_file.exit.thread, label %.lr.ph821

.lr.ph821:                                        ; preds = %._crit_edge, %skip_base_block.exit67.thread83
  %i.bh = phi i32 [ %i.bp, %skip_base_block.exit67.thread83 ], [ %i.bf, %._crit_edge ] ; 2 uses
  %.val.val.i63820 = phi ptr [ %.val.val.i63, %skip_base_block.exit67.thread83 ], [ %.val.val.i63819, %._crit_edge ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.val.val.i63820, i64 40
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !72
  %i.bk = icmp eq i32 %i.bj, 2
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph821
  %i.bl = getelementptr inbounds nuw i8, ptr %.val.val.i63820, i64 32
  %i.bm = load i8, ptr %i.bl, align 8
  %i.bn = and i8 %i.bm, 2
  %.not.i66 = icmp eq i8 %i.bn, 0
  br i1 %.not.i66, label %bb.m, label %advance_multivolume.exit.i.thread95

bb.m:                                             ; preds = %bb.l, %.lr.ph821
  switch i32 %i.bh, label %process_block.exit [
    i32 0, label %skip_base_block.exit67.thread83
    i32 -10, label %skip_base_block.exit67.thread83
  ]

skip_base_block.exit67.thread83:                  ; preds = %bb.m, %bb.m
  %.val.i62 = load ptr, ptr %i.n, align 8, !tbaa !50
  %.val.val.i63 = load ptr, ptr %.val.i62, align 8, !tbaa !52
  %i.bo = call ptr @archive_entry_new() #14, !inline_history !117 ; 2 uses
  %i.bp = call fastcc i32 @process_base_block(ptr noundef %0, ptr noundef %i.bo), !inline_history !117 ; 2 uses
  call void @archive_entry_free(ptr noundef %i.bo) #14, !inline_history !117
  %i.bq = icmp eq i32 %i.bp, -30
  br i1 %i.bq, label %do_uncompress_file.exit.thread, label %.lr.ph821, !llvm.loop !2

.lr.ph:                                           ; preds = %.preheader, %.backedge190
  %.val.i57 = load ptr, ptr %i.n, align 8, !tbaa !50
  %.val.val.i58 = load ptr, ptr %.val.i57, align 8, !tbaa !52 ; 2 uses
  %i.br = call ptr @archive_entry_new() #14, !inline_history !117 ; 2 uses
  %i.bs = call fastcc i32 @process_base_block(ptr noundef nonnull %0, ptr noundef %i.br), !inline_history !117 ; 3 uses
  call void @archive_entry_free(ptr noundef %i.br) #14, !inline_history !117
  %i.bt = icmp eq i32 %i.bs, -30
  br i1 %i.bt, label %do_uncompress_file.exit.thread, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.bu = getelementptr inbounds nuw i8, ptr %.val.val.i58, i64 40
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !72
  %i.bw = icmp eq i32 %i.bv, 2
  br i1 %i.bw, label %bb.o, label %skip_base_block.exit

bb.o:                                             ; preds = %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %.val.val.i58, i64 32
  %i.by = load i8, ptr %i.bx, align 8
  %i.bz = and i8 %i.by, 2
  %.not.i61 = icmp eq i8 %i.bz, 0
  br i1 %.not.i61, label %skip_base_block.exit, label %skip_base_block.exit.thread.thread

skip_base_block.exit:                             ; preds = %bb.o, %bb.n
  %i.ca = icmp eq i32 %i.bs, 0
  %spec.select = select i1 %i.ca, i32 -10, i32 %i.bs ; 2 uses
  switch i32 %spec.select, label %skip_base_block.exit.thread [
    i32 -25, label %process_block.exit.thread
    i32 -10, label %.backedge190
  ]

skip_base_block.exit.thread:                      ; preds = %skip_base_block.exit
  %i.cb = load i8, ptr %i.aw, align 4             ; 2 uses
  %i.cc = and i8 %i.cb, 4
end_hunk_0
begin_hunk_1_@uncompress_file:bb.a
  %.0.i44370 = phi i64 [ %i.eg, %bb.an ], [ 0, %.split ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 -1, ptr %i.a, align 8, !tbaa !33
  %i.ef = call ptr @__archive_read_ahead(ptr noundef %0, i64 noundef %..i45371, ptr noundef nonnull %i.a) #14, !inline_history !119 ; 2 uses
  %.not179 = icmp eq ptr %i.ef, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br i1 %.not179, label %do_uncompress_file.exit.thread, label %bb.af

bb.af:                                            ; preds = %.lr.ph372
  %i.eg = add nsw i64 %..i45371, %.0.i44370       ; 3 uses
  %i.eh = load ptr, ptr %i.dx, align 8, !tbaa !67
  %i.ei = getelementptr inbounds i8, ptr %i.eh, i64 %.0.i44370
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ei, ptr noundef nonnull align 1 dereferenceable(1) %i.ef, i64 %..i45371, i1 false)
  %i.ej = call i64 @__archive_read_consume(ptr noundef %0, i64 noundef %..i45371) #14, !inline_history !119
  %i.ek = icmp eq i64 %..i45371, %i.ej
  br i1 %i.ek, label %bb.ag, label %do_uncompress_file.exit.thread

bb.ag:                                            ; preds = %bb.af
  %i.el = load i64, ptr %i.ec, align 8, !tbaa !64 ; 2 uses
  %i.em = sub nsw i64 %i.el, %..i45371
  store i64 %i.em, ptr %i.ec, align 8, !tbaa !64
  %i.en = icmp eq i64 %i.eg, %.sink.i.i
  br i1 %i.en, label %bb.ao, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.eo = icmp eq i64 %i.el, %..i45371
  br i1 %i.eo, label %bb.ai, label %bb.an

bb.ai:                                            ; preds = %bb.ah
  %i.ep = load i32, ptr %i.ds, align 4, !tbaa !71
  %i.eq = add nsw i32 %i.ep, 1
  store i32 %i.eq, ptr %i.ds, align 4, !tbaa !71
  %.val.i.i47 = load ptr, ptr %i.n, align 8, !tbaa !50
  %.val.val.i.i48 = load ptr, ptr %.val.i.i47, align 8, !tbaa !52
  %i.er = getelementptr inbounds nuw i8, ptr %.val.val.i.i48, i64 44 ; 4 uses
  %i.es = load i8, ptr %i.er, align 4             ; 2 uses
  %i.et = and i8 %i.es, 4
  %.not.i.i49363 = icmp eq i8 %i.et, 0
  br i1 %.not.i.i49363, label %.lr.ph365, label %._crit_edge366

._crit_edge366:                                   ; preds = %.backedge, %skip_base_block.exit.i.thread, %bb.ai
  %.lcssa206 = phi i8 [ %i.es, %bb.ai ], [ %i.fu, %skip_base_block.exit.i.thread ], [ %.pre484, %.backedge ]
  %i.eu = and i8 %.lcssa206, -5
  store i8 %i.eu, ptr %i.er, align 4
  %.val.i63.i822 = load ptr, ptr %i.n, align 8, !tbaa !50
  %.val.val.i64.i823 = load ptr, ptr %.val.i63.i822, align 8, !tbaa !52
  %i.ev = call ptr @archive_entry_new() #14, !inline_history !120 ; 2 uses
  %i.ew = call fastcc i32 @process_base_block(ptr noundef %0, ptr noundef %i.ev), !inline_history !120 ; 3 uses
  call void @archive_entry_free(ptr noundef %i.ev) #14, !inline_history !120
  %i.ex = icmp eq i32 %i.ew, -30
  br i1 %i.ex, label %advance_multivolume.exit.i55.thread162, label %.lr.ph825

.lr.ph825:                                        ; preds = %._crit_edge366, %skip_base_block.exit68.i.thread103
  %i.ey = phi i32 [ %i.fg, %skip_base_block.exit68.i.thread103 ], [ %i.ew, %._crit_edge366 ] ; 2 uses
  %.val.val.i64.i824 = phi ptr [ %.val.val.i64.i, %skip_base_block.exit68.i.thread103 ], [ %.val.val.i64.i823, %._crit_edge366 ] ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.val.val.i64.i824, i64 40
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !72
  %i.fb = icmp eq i32 %i.fa, 2
  br i1 %i.fb, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.lr.ph825
  %i.fc = getelementptr inbounds nuw i8, ptr %.val.val.i64.i824, i64 32
  %i.fd = load i8, ptr %i.fc, align 8
  %i.fe = and i8 %i.fd, 2
  %.not.i67.i = icmp eq i8 %i.fe, 0
  br i1 %.not.i67.i, label %bb.ak, label %advance_multivolume.exit.i55.thread115

bb.ak:                                            ; preds = %bb.aj, %.lr.ph825
  switch i32 %i.ey, label %advance_multivolume.exit.i55.thread162 [
    i32 0, label %skip_base_block.exit68.i.thread103
    i32 -10, label %skip_base_block.exit68.i.thread103
  ]

skip_base_block.exit68.i.thread103:               ; preds = %bb.ak, %bb.ak
  %.val.i63.i = load ptr, ptr %i.n, align 8, !tbaa !50
  %.val.val.i64.i = load ptr, ptr %.val.i63.i, align 8, !tbaa !52
  %i.ff = call ptr @archive_entry_new() #14, !inline_history !120 ; 2 uses
  %i.fg = call fastcc i32 @process_base_block(ptr noundef %0, ptr noundef %i.ff), !inline_history !120 ; 3 uses
  call void @archive_entry_free(ptr noundef %i.ff) #14, !inline_history !120
  %i.fh = icmp eq i32 %i.fg, -30
  br i1 %i.fh, label %advance_multivolume.exit.i55.thread162, label %.lr.ph825, !llvm.loop !2

advance_multivolume.exit.i55.thread162:           ; preds = %._crit_edge366, %skip_base_block.exit68.i.thread103, %bb.ak
  %.lcssa738 = phi i32 [ %i.ey, %bb.ak ], [ %i.fg, %skip_base_block.exit68.i.thread103 ], [ %i.ew, %._crit_edge366 ]
  %i.fi = load i32, ptr %i.ds, align 4, !tbaa !71
  %i.fj = add nsw i32 %i.fi, -1
  store i32 %i.fj, ptr %i.ds, align 4, !tbaa !71
  br label %process_block.exit

.lr.ph365:                                        ; preds = %bb.ai, %.backedge
  %.val.i59.i = load ptr, ptr %i.n, align 8, !tbaa !50
  %.val.val.i60.i = load ptr, ptr %.val.i59.i, align 8, !tbaa !52 ; 2 uses
  %i.fk = call ptr @archive_entry_new() #14, !inline_history !120 ; 2 uses
  %i.fl = call fastcc i32 @process_base_block(ptr noundef %0, ptr noundef %i.fk), !inline_history !120 ; 3 uses
  call void @archive_entry_free(ptr noundef %i.fk) #14, !inline_history !120
  %i.fm = icmp eq i32 %i.fl, -30
  br i1 %i.fm, label %advance_multivolume.exit.i55.thread, label %bb.al

bb.al:                                            ; preds = %.lr.ph365
  %i.fn = getelementptr inbounds nuw i8, ptr %.val.val.i60.i, i64 40
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !72
  %i.fp = icmp eq i32 %i.fo, 2
  br i1 %i.fp, label %bb.am, label %skip_base_block.exit.i

bb.am:                                            ; preds = %bb.al
  %i.fq = getelementptr inbounds nuw i8, ptr %.val.val.i60.i, i64 32
  %i.fr = load i8, ptr %i.fq, align 8
  %i.fs = and i8 %i.fr, 2
  %.not.i62.i = icmp eq i8 %i.fs, 0
  br i1 %.not.i62.i, label %skip_base_block.exit.i, label %skip_base_block.exit.i.thread

skip_base_block.exit.i:                           ; preds = %bb.am, %bb.al
  %i.ft = icmp eq i32 %i.fl, 0
  %spec.select176 = select i1 %i.ft, i32 -10, i32 %i.fl ; 3 uses
  switch i32 %spec.select176, label %skip_base_block.exit.i.thread [
    i32 -25, label %advance_multivolume.exit.i55.thread
    i32 -10, label %.backedge
  ]

skip_base_block.exit.i.thread:                    ; preds = %bb.am, %skip_base_block.exit.i
  %.0.i61.i109 = phi i32 [ %spec.select176, %skip_base_block.exit.i ], [ 0, %bb.am ] ; 2 uses
  %i.fu = load i8, ptr %i.er, align 4             ; 2 uses
  %i.fv = and i8 %i.fu, 4
  %i.fw = icmp eq i8 %i.fv, 0
  br i1 %i.fw, label %advance_multivolume.exit.i55, label %._crit_edge366

.backedge:                                        ; preds = %skip_base_block.exit.i
  %.pre484 = load i8, ptr %i.er, align 4          ; 2 uses
  %.pre485 = and i8 %.pre484, 4
  %i.fx = icmp eq i8 %.pre485, 0
  br i1 %i.fx, label %.lr.ph365, label %._crit_edge366

advance_multivolume.exit.i55.thread115:           ; preds = %bb.aj
  %i.fy = load i32, ptr %i.ds, align 4, !tbaa !71
  %i.fz = add nsw i32 %i.fy, -1
  store i32 %i.fz, ptr %i.ds, align 4, !tbaa !71
  br label %bb.an

advance_multivolume.exit.i55.thread:              ; preds = %skip_base_block.exit.i, %.lr.ph365
  %.118.i.i56.ph = phi i32 [ -30, %.lr.ph365 ], [ %spec.select176, %skip_base_block.exit.i ]
  %i.ga = load i32, ptr %i.ds, align 4, !tbaa !71
  %i.gb = add nsw i32 %i.ga, -1
  store i32 %i.gb, ptr %i.ds, align 4, !tbaa !71
  br label %process_block.exit

advance_multivolume.exit.i55:                     ; preds = %skip_base_block.exit.i.thread
  %i.gc = load i32, ptr %i.ds, align 4, !tbaa !71
  %i.gd = add nsw i32 %i.gc, -1
  store i32 %i.gd, ptr %i.ds, align 4, !tbaa !71
  %.not58.i = icmp eq i32 %.0.i61.i109, 0
  br i1 %.not58.i, label %bb.an, label %process_block.exit

bb.an:                                            ; preds = %advance_multivolume.exit.i55.thread115, %advance_multivolume.exit.i55, %bb.ah
  %i.ge = load i64, ptr %i.ec, align 8, !tbaa !64
  %i.gf = sub nsw i64 %.sink.i.i, %i.eg
  %..i45 = call i64 @llvm.smin.i64(i64 %i.ge, i64 %i.gf) ; 2 uses
  %i.gg = icmp eq i64 %..i45, 0
  br i1 %i.gg, label %.split._crit_edge, label %.lr.ph372

bb.ao:                                            ; preds = %bb.ag
  %i.gh = load ptr, ptr %i.dx, align 8, !tbaa !67
  br label %bb.aq

bb.ap:                                            ; preds = %bb.y
  %i.gi = load i8, ptr %i.ci, align 8
  %i.gj = and i8 %i.gi, -5
  store i8 %i.gj, ptr %i.ci, align 8
  %i.gk = add nuw nsw i64 %.sink.i.i, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #14
  store i64 -1, ptr %i.j, align 8, !tbaa !33
  %i.gl = call ptr @__archive_read_ahead(ptr noundef %0, i64 noundef %i.gk, ptr noundef nonnull %i.j) #14, !inline_history !118 ; 2 uses
  %.not178 = icmp eq ptr %i.gl, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  br i1 %.not178, label %do_uncompress_file.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.2 = phi ptr [ %i.gh, %bb.ao ], [ %i.gl, %bb.ap ] ; 8 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.val.val.i10, i64 96
  store ptr %.2, ptr %i.gm, align 8, !tbaa !129
  %i.gn = getelementptr inbounds nuw i8, ptr %.val.val.i10, i64 144 ; 2 uses
  store i64 %.sink.i.i, ptr %i.gn, align 8, !tbaa !84
  %i.go = load i8, ptr %i.ci, align 8
  %i.gp = and i8 %i.go, -9
  store i8 %i.gp, ptr %i.ci, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %.val.val.i10, i64 21272 ; 6 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.val.val.i10, i64 21276 ; 5 uses
  store i32 0, ptr %i.gr, align 4, !tbaa !85
  store i8 0, ptr %i.gq, align 8, !tbaa !86
  %.val77.i = load i8, ptr %i.cm, align 8, !tbaa !130
  %.not69.i = icmp sgt i8 %.val77.i, -1
  br i1 %.not69.i, label %bb.bk, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  br label %bb.as

bb.as:                                            ; preds = %.loopexit.i, %bb.ar
  %.090165.i = phi i8 [ 4, %bb.ar ], [ %.191.i, %.loopexit.i ] ; 4 uses
  %.092164.i = phi i32 [ 240, %bb.ar ], [ %.193.i, %.loopexit.i ] ; 6 uses
  %.094163.i = phi i32 [ 0, %bb.ar ], [ %.296.i, %.loopexit.i ] ; 6 uses
  %.097162.i = phi i32 [ 0, %bb.ar ], [ %.3.i, %.loopexit.i ] ; 2 uses
  %i.gs = sext i32 %.097162.i to i64              ; 2 uses
  %.not117.i = icmp sgt i64 %.sink.i.i, %i.gs
  br i1 %.not117.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 84, ptr noundef nonnull @.str.48) #14
  br label %parse_tables.exit.thread

bb.au:                                            ; preds = %bb.as
  %i.gt = getelementptr inbounds i8, ptr %.2, i64 %i.gs
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !32
  %i.gv = zext i8 %i.gu to i32
  %i.gw = and i32 %.092164.i, %i.gv
  %i.gx = zext nneg i8 %.090165.i to i32
  %i.gy = lshr i32 %i.gw, %i.gx                   ; 2 uses
  %i.gz = icmp eq i32 %.092164.i, 15
  %i.ha = zext i1 %i.gz to i32
  %spec.select.i = add nsw i32 %.097162.i, %i.ha  ; 3 uses
  %i.hb = xor i32 %.092164.i, 255                 ; 2 uses
  %i.hc = xor i8 %.090165.i, 4                    ; 2 uses
  %i.hd = icmp eq i32 %i.gy, 15
  br i1 %i.hd, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.he = sext i32 %spec.select.i to i64
  %i.hf = getelementptr inbounds i8, ptr %.2, i64 %i.he
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !32
  %i.hh = zext i8 %i.hg to i32
  %i.hi = and i32 %i.hb, %i.hh
  %i.hj = zext nneg i8 %i.hc to i32
  %i.hk = lshr i32 %i.hi, %i.hj                   ; 3 uses
  %i.hl = icmp eq i32 %.092164.i, 240
  %i.hm = zext i1 %i.hl to i32
  %spec.select118.i = add nsw i32 %spec.select.i, %i.hm ; 2 uses
  %i.hn = icmp eq i32 %i.hk, 0
  %1 = sext i32 %.094163.i to i64                 ; 2 uses
  %2 = getelementptr i8, ptr %i.b, i64 %1         ; 2 uses
  br i1 %i.hn, label %bb.aw, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.av
  %narrow193.i = add nuw nsw i32 %i.hk, 1
  %i.ho = sub i32 19, %.094163.i
  %i.hp = call i32 @llvm.umin.i32(i32 %narrow193.i, i32 %i.ho)
  %narrow194.i = add nuw nsw i32 %i.hp, 1
  %i.hq = zext nneg i32 %narrow194.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %2, i8 0, i64 %i.hq, i1 false), !tbaa !32
  %i.hr = sub nsw i64 19, %1
  %narrow = add nuw nsw i32 %i.hk, 1
  %i.hs = zext nneg i32 %narrow to i64
  %umin = call i64 @llvm.umin.i64(i64 %i.hr, i64 %i.hs)
  %i.ht = trunc nuw nsw i64 %umin to i32
  %i.hu = add nuw nsw i32 %i.ht, 1
  %i.hv = add nsw i32 %i.hu, %.094163.i
  br label %.loopexit.i

bb.aw:                                            ; preds = %bb.av
  %i.hw = add nsw i32 %.094163.i, 1
  store i8 15, ptr %2, align 1, !tbaa !32
  br label %.loopexit.i

bb.ax:                                            ; preds = %bb.au
  %i.hx = trunc nuw i32 %i.gy to i8
  %i.hy = add nsw i32 %.094163.i, 1
  %i.hz = sext i32 %.094163.i to i64
  %i.ia = getelementptr inbounds i8, ptr %i.b, i64 %i.hz
  store i8 %i.hx, ptr %i.ia, align 1, !tbaa !32
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.preheader.i, %bb.ax, %bb.aw
  %.3.i = phi i32 [ %spec.select118.i, %bb.aw ], [ %spec.select.i, %bb.ax ], [ %spec.select118.i, %.lr.ph.preheader.i ] ; 2 uses
  %.296.i = phi i32 [ %i.hw, %bb.aw ], [ %i.hy, %bb.ax ], [ %i.hv, %.lr.ph.preheader.i ] ; 2 uses
  %.193.i = phi i32 [ %.092164.i, %bb.aw ], [ %i.hb, %bb.ax ], [ %.092164.i, %.lr.ph.preheader.i ]
  %.191.i = phi i8 [ %.090165.i, %bb.aw ], [ %i.hc, %bb.ax ], [ %.090165.i, %.lr.ph.preheader.i ] ; 2 uses
  %i.ib = icmp slt i32 %.296.i, 20
  br i1 %i.ib, label %bb.as, label %bb.ay, !llvm.loop !121

bb.ay:                                            ; preds = %.loopexit.i
  store i32 %.3.i, ptr %i.gr, align 4, !tbaa !85
  %i.ic = xor i8 %.191.i, 4
  store i8 %i.ic, ptr %i.gq, align 8, !tbaa !86
  %i.id = getelementptr inbounds nuw i8, ptr %.val.val.i10, i64 156 ; 2 uses
  call fastcc void @create_decode_tables(ptr noundef %i.b, ptr noundef nonnull %i.id, i32 noundef 20)
  br label %bb.az

bb.az:                                            ; preds = %.thread144.i, %bb.ay
  %.4174.i = phi i32 [ 0, %bb.ay ], [ %.10.i, %.thread144.i ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %i.ie = call fastcc i32 @decode_number(ptr noundef %0, ptr noundef nonnull %i.id, ptr noundef readonly %.2, ptr noundef %i.d)
  %.not.i35 = icmp eq i32 %i.ie, 0
  br i1 %.not.i35, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 84, ptr noundef nonnull @.str.49) #14
  br label %.thread149.i

bb.bb:                                            ; preds = %bb.az
  %i.if = load i16, ptr %i.d, align 2, !tbaa !87  ; 5 uses
  %i.ig = icmp ult i16 %i.if, 16
  br i1 %i.ig, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.ih = trunc nuw nsw i16 %i.if to i8
  %i.ii = sext i32 %.4174.i to i64
  %i.ij = getelementptr inbounds i8, ptr %i.c, i64 %i.ii
  store i8 %i.ih, ptr %i.ij, align 1, !tbaa !32
  %i.ik = add nsw i32 %.4174.i, 1
  br label %.thread144.i

bb.bd:                                            ; preds = %bb.bb
  %i.il = icmp ult i16 %i.if, 18
  %i.im = load i32, ptr %i.gr, align 4, !tbaa !85 ; 3 uses
  %i.in = sext i32 %i.im to i64                   ; 3 uses
  %i.io = load i64, ptr %i.gn, align 8, !tbaa !84
  %.not.i.i36 = icmp sgt i64 %i.io, %i.in         ; 2 uses
  br i1 %i.il, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  br i1 %.not.i.i36, label %bb.bf, label %read_bits_16.exit.i38

read_bits_16.exit.i38:                            ; preds = %bb.be
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 22, ptr noundef nonnull @.str.55) #14
  br label %.thread149.i

bb.bf:                                            ; preds = %bb.be
  %i.ip = getelementptr inbounds i8, ptr %.2, i64 %i.in ; 2 uses
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !32
  %i.ir = zext i8 %i.iq to i32
  %i.is = shl nuw nsw i32 %i.ir, 16
  %i.it = getelementptr i8, ptr %i.ip, i64 1
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !32
  %i.iv = zext i8 %i.iu to i32
  %i.iw = shl nuw nsw i32 %i.iv, 8
  %i.ix = or disjoint i32 %i.iw, %i.is
  %i.iy = load i8, ptr %i.gq, align 8, !tbaa !86
  %i.iz = sext i8 %i.iy to i32                    ; 2 uses
  %i.ja = sub nsw i32 8, %i.iz
  %i.jb = lshr i32 %i.ix, %i.ja
  %i.jc = trunc i32 %i.jb to i16
  %i.jd = icmp eq i16 %i.if, 16                   ; 3 uses
  %..i39 = select i1 %i.jd, i16 13, i16 9
  %.205.i = select i1 %i.jd, i16 3, i16 11
  %.206.i = select i1 %i.jd, i32 3, i32 7
  %i.je = lshr i16 %i.jc, %..i39
  %narrow115.i = add nuw nsw i16 %i.je, %.205.i
  %i.jf = add nsw i32 %.206.i, %i.iz              ; 2 uses
  %.pn195.i = ashr i32 %i.jf, 3
  %storemerge155.i = add nsw i32 %.pn195.i, %i.im
  store i32 %storemerge155.i, ptr %i.gr, align 4, !tbaa !85
  %storemerge154.in.i = trunc i32 %i.jf to i8
  %storemerge154.i = and i8 %storemerge154.in.i, 7
  store i8 %storemerge154.i, ptr %i.gq, align 8, !tbaa !86
  %i.jg = icmp sgt i32 %.4174.i, 0
  br i1 %i.jg, label %.preheader.i40, label %bb.bg

.preheader.i40:                                   ; preds = %bb.bf
  %i.jh = icmp samesign ult i32 %.4174.i, 430
  br i1 %i.jh, label %.lr.ph172.preheader.i, label %.thread144.thread.i

.thread144.thread.i:                              ; preds = %.preheader.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br label %parse_tables.exit

.lr.ph172.preheader.i:                            ; preds = %.preheader.i40
  %i.ji = zext nneg i32 %.4174.i to i64           ; 2 uses
  %scevgep834 = getelementptr i8, ptr %scevgep, i64 %i.ji
  %load_initial = load i8, ptr %scevgep834, align 1
  br label %.lr.ph172.i

.lr.ph172.i:                                      ; preds = %.lr.ph172.i, %.lr.ph172.preheader.i
  %indvars.iv186.i = phi i64 [ %i.ji, %.lr.ph172.preheader.i ], [ %indvars.iv.next187.i, %.lr.ph172.i ] ; 3 uses
  %.1129170.i = phi i16 [ %narrow115.i, %.lr.ph172.preheader.i ], [ %i.jj, %.lr.ph172.i ]
  %i.jj = add nsw i16 %.1129170.i, -1             ; 2 uses
  %i.jk = getelementptr i8, ptr %i.c, i64 %indvars.iv186.i
  store i8 %load_initial, ptr %i.jk, align 1, !tbaa !32
  %indvars.iv.next187.i = add nuw nsw i64 %indvars.iv186.i, 1 ; 2 uses
  %i.jl = icmp ne i16 %i.jj, 0
  %i.jm = trunc nuw i64 %indvars.iv186.i to i32
  %i.jn = icmp slt i32 %i.jm, 429
  %i.jo = and i1 %i.jn, %i.jl
  br i1 %i.jo, label %.lr.ph172.i, label %.thread144.loopexit.i, !llvm.loop !122

bb.bg:                                            ; preds = %bb.bf
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 84, ptr noundef nonnull @.str.50) #14
  br label %.thread149.i

bb.bh:                                            ; preds = %bb.bd
  br i1 %.not.i.i36, label %.lr.ph168.preheader.i, label %bb.bi

.lr.ph168.preheader.i:                            ; preds = %bb.bh
  %i.jp = getelementptr inbounds i8, ptr %.2, i64 %i.in ; 2 uses
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !32
  %i.jr = zext i8 %i.jq to i32
  %i.js = shl nuw nsw i32 %i.jr, 16
  %i.jt = getelementptr i8, ptr %i.jp, i64 1
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !32
  %i.jv = zext i8 %i.ju to i32
  %i.jw = shl nuw nsw i32 %i.jv, 8
  %i.jx = or disjoint i32 %i.jw, %i.js
  %i.jy = load i8, ptr %i.gq, align 8, !tbaa !86
  %i.jz = sext i8 %i.jy to i32                    ; 2 uses
  %i.ka = sub nsw i32 8, %i.jz
  %i.kb = lshr i32 %i.jx, %i.ka
  %i.kc = trunc i32 %i.kb to i16
  %i.kd = icmp eq i16 %i.if, 18                   ; 3 uses
  %.207.i = select i1 %i.kd, i16 13, i16 9
  %.208.i = select i1 %i.kd, i16 3, i16 11        ; 2 uses
  %.209.i = select i1 %i.kd, i32 3, i32 7
  %i.ke = lshr i16 %i.kc, %.207.i                 ; 2 uses
  %narrow113.i = add nuw nsw i16 %i.ke, %.208.i
  %i.kf = add nsw i32 %.209.i, %i.jz              ; 2 uses
  %.pn.i = ashr i32 %i.kf, 3
  %storemerge153.i = add nsw i32 %.pn.i, %i.im
  store i32 %storemerge153.i, ptr %i.gr, align 4, !tbaa !85
  %storemerge.in.i = trunc i32 %i.kf to i8
  %storemerge.i37 = and i8 %storemerge.in.i, 7
  store i8 %storemerge.i37, ptr %i.gq, align 8, !tbaa !86
  %i.kg = sext i32 %.4174.i to i64                ; 2 uses
  %scevgep179.i = getelementptr i8, ptr %i.c, i64 %i.kg
  %i.kh = sub i32 429, %.4174.i
  %i.ki = zext i32 %i.kh to i64
  %i.kj = add nsw i16 %narrow113.i, -1
  %i.kk = zext nneg i16 %i.kj to i64
  %umin180.i = call i64 @llvm.umin.i64(i64 %i.ki, i64 %i.kk)
  %i.kl = add nuw nsw i64 %umin180.i, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep179.i, i8 0, i64 %i.kl, i1 false), !tbaa !32
  %i.km = sub nsw i64 429, %i.kg
  %i.kn = add nsw i16 %.208.i, -1
  %i.ko = add nuw nsw i16 %i.kn, %i.ke
  %i.kp = zext nneg i16 %i.ko to i64
  %umin478 = call i64 @llvm.umin.i64(i64 %i.km, i64 %i.kp)
  %i.kq = trunc nuw nsw i64 %umin478 to i32
  %i.kr = add nuw nsw i32 %i.kq, 1
  %i.ks = add nsw i32 %i.kr, %.4174.i
  br label %.thread144.i

bb.bi:                                            ; preds = %bb.bh
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 22, ptr noundef nonnull @.str.55) #14
  br label %.thread149.i

.thread149.i:                                     ; preds = %bb.bi, %bb.bg, %read_bits_16.exit.i38, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br label %parse_tables.exit.thread

.thread144.loopexit.i:                            ; preds = %.lr.ph172.i
  %i.kt = trunc nuw i64 %indvars.iv.next187.i to i32
  br label %.thread144.i

.thread144.i:                                     ; preds = %.lr.ph168.preheader.i, %.thread144.loopexit.i, %bb.bc
  %.10.i = phi i32 [ %i.ik, %bb.bc ], [ %i.kt, %.thread144.loopexit.i ], [ %i.ks, %.lr.ph168.preheader.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  %i.ku = icmp slt i32 %.10.i, 430
  br i1 %i.ku, label %bb.az, label %parse_tables.exit, !llvm.loop !123

parse_tables.exit.thread:                         ; preds = %bb.at, %.thread149.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %do_uncompress_file.exit.thread

end_hunk_1
