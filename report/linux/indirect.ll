Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/indirect?download=true
inline.NumInlined: 95
inline.NumDeleted: 47
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@ext4_splice_branch:bb.a
  %.158 = phi i32 [ %i.ac, %.lr.ph59 ], [ 1, %bb.g ] ; 2 uses
  %i.x = load ptr, ptr %1, align 8
  %i.y = sext i32 %.158 to i64
  %i.z = getelementptr [24 x i8], ptr %2, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void @ext4_free_blocks(ptr noundef %0, ptr noundef %i.x, ptr noundef %i.ab, i64 noundef 0, i64 noundef 1, i32 noundef 2) #10
  %i.ac = add i32 %.158, 1                        ; 2 uses
  %.not54 = icmp sgt i32 %i.ac, %3
  br i1 %.not54, label %._crit_edge, label %.lr.ph59, !llvm.loop !46

._crit_edge:                                      ; preds = %.lr.ph59, %bb.g
  %i.ad = load ptr, ptr %1, align 8
  %i.ae = sext i32 %3 to i64
  %i.af = getelementptr [24 x i8], ptr %2, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr i8, ptr %1, i64 8
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = zext i32 %i.ak to i64
  tail call void @ext4_free_blocks(ptr noundef %0, ptr noundef %i.ad, ptr noundef null, i64 noundef %i.ai, i64 noundef %i.al, i32 noundef 0) #10
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %._crit_edge
  %.0 = phi i32 [ %.141, %._crit_edge ], [ 0, %bb.f ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern inlinehint mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc void @ext4_update_inode_fsync_trans(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(none) %1) unnamed_addr #5 align 16 {
bb.a:
  %.not10 = icmp ult ptr %0, inttoptr (i64 4096 to ptr)
  br i1 %.not10, label %is_handle_aborted.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 4
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.c, label %is_handle_aborted.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8                ; 3 uses
  %.not4.i = icmp eq ptr %i.d, null
  br i1 %.not4.i, label %is_handle_aborted.exit.thread, label %is_handle_aborted.exit

is_handle_aborted.exit:                           ; preds = %bb.c
  %i.e = load ptr, ptr %i.d, align 8
  %.val.i = load i64, ptr %i.e, align 8
  %i.f = and i64 %.val.i, 2
  %.not7 = icmp eq i64 %i.f, 0
  br i1 %.not7, label %bb.d, label %is_handle_aborted.exit.thread

bb.d:                                             ; preds = %is_handle_aborted.exit
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %i.h = load i32, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %1, i64 776
  store i32 %i.h, ptr %i.i, align 8
  %i.j = load ptr, ptr %0, align 8
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %i.l = load i32, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %1, i64 780
  store i32 %i.l, ptr %i.m, align 4
  br label %is_handle_aborted.exit.thread

is_handle_aborted.exit.thread:                    ; preds = %bb.b, %bb.c, %bb.d, %is_handle_aborted.exit, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none)
define dso_local i32 @ext4_ind_trans_blocks(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #6 align 16 prefalign(16) {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = lshr i64 %i.e, 2                         ; 2 uses
  %i.g = add nsw i64 %i.a, -1
  %i.h = add nsw i64 %i.g, %i.f
  %i.i = udiv i64 %i.h, %i.f
  %i.j = trunc i64 %i.i to i32
  %i.k = add i32 %i.j, 4
  ret i32 %i.k
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @ext4_ind_truncate(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 15 uses
  %2 = alloca [4 x %struct.Indirect], align 16    ; 9 uses
  %i.b = alloca i32, align 4                      ; 15 uses
  %i.c = getelementptr i8, ptr %1, i64 -232
  %i.d = getelementptr i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8              ; 4 uses
  %i.f = getelementptr i8, ptr %i.e, i64 24
  %i.g = load i64, ptr %i.f, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %2, i8 0, i64 96, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.h = getelementptr i8, ptr %1, i64 80         ; 3 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.g, 4294967295
  %i.k = add nsw i64 %i.j, -1                     ; 2 uses
  %i.l = add i64 %i.k, %i.i
  %i.m = getelementptr i8, ptr %i.e, i64 20
  %i.n = load i8, ptr %i.m, align 4
  %i.o = zext nneg i8 %i.n to i64                 ; 2 uses
  %i.p = ashr i64 %i.l, %i.o
  %i.q = trunc i64 %i.p to i32                    ; 9 uses
  %i.r = getelementptr i8, ptr %i.e, i64 864
  %.val = load ptr, ptr %i.r, align 32            ; 2 uses
  %i.s = getelementptr i8, ptr %.val, i64 88
  %i.t = load i64, ptr %i.s, align 8
  %i.u = add i64 %i.k, %i.t
  %i.v = ashr i64 %i.u, %i.o
  %i.w = trunc i64 %i.v to i32
  %.not = icmp eq i32 %i.q, %i.w
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false), !annotation !11
  %i.x = lshr i64 %i.g, 2                         ; 2 uses
  %i.y = trunc i64 %i.x to i32                    ; 4 uses
  %i.z = getelementptr i8, ptr %.val, i64 172
  %i.aa = load i32, ptr %i.z, align 4             ; 3 uses
  %sext.i = shl i64 %i.x, 32
  %i.ab = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.ac = shl i32 %i.aa, 1                        ; 2 uses
  %i.ad = shl nuw i32 1, %i.ac                    ; 3 uses
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = icmp ult i32 %i.q, 12                   ; 2 uses
  br i1 %i.af, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 %i.q, ptr %i.a, align 16
  br label %ext4_block_to_path.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.ag = add i32 %i.q, -12                       ; 3 uses
  %i.ah = zext i32 %i.ag to i64
  %i.ai = icmp sgt i64 %i.ab, %i.ah
  br i1 %i.ai, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 12, ptr %i.a, align 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.ag, ptr %i.aj, align 4
  br label %ext4_block_to_path.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.ak = sub i32 %i.ag, %i.y                     ; 4 uses
  %i.al = icmp ult i32 %i.ak, %i.ad
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 13, ptr %i.a, align 16
  %i.am = lshr i32 %i.ak, %i.aa
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.am, ptr %i.an, align 4
  %i.ao = add i32 %i.y, -1
  %i.ap = and i32 %i.ak, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.ap, ptr %i.aq, align 8
  br label %ext4_block_to_path.exit.thread

bb.h:                                             ; preds = %bb.f
  %narrow.i = sub nuw i32 %i.ak, %i.ad            ; 4 uses
  %i.ar = lshr i32 %narrow.i, %i.ac               ; 2 uses
  %i.as = icmp ult i32 %i.ar, %i.y
  br i1 %i.as, label %bb.i, label %ext4_block_to_path.exit

bb.i:                                             ; preds = %bb.h
  store i32 14, ptr %i.a, align 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.ar, ptr %i.at, align 4
  %i.au = lshr i32 %narrow.i, %i.aa
  %i.av = add i32 %i.y, -1                        ; 2 uses
  %i.aw = and i32 %i.au, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.aw, ptr %i.ax, align 8
  %i.ay = and i32 %narrow.i, %i.av
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.ay, ptr %i.az, align 4
  br label %ext4_block_to_path.exit.thread

ext4_block_to_path.exit:                          ; preds = %bb.h
  %i.ba = zext i32 %narrow.i to i64
  %i.bb = add nsw i64 %i.ab, 12
  %i.bc = add nsw i64 %i.bb, %i.ae
  %i.bd = add nsw i64 %i.bc, %i.ba
  %i.be = getelementptr i8, ptr %1, i64 64
  %i.bf = load i64, ptr %i.be, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %i.e, ptr noundef @__func__.ext4_block_to_path, i32 noundef 107, ptr noundef @.str.6, i64 noundef %i.bd, i64 noundef %i.bf) #10
  br label %bb.ad

ext4_block_to_path.exit.thread:                   ; preds = %bb.i, %bb.g, %bb.e, %bb.c
  %i.bg = phi i32 [ %i.q, %bb.c ], [ 14, %bb.i ], [ 13, %bb.g ], [ 12, %bb.e ] ; 2 uses
  %.0 = phi i32 [ 1, %bb.c ], [ 4, %bb.i ], [ 3, %bb.g ], [ 2, %bb.e ] ; 6 uses
  %i.bh = xor i32 %i.q, -1
  tail call void @ext4_es_remove_extent(ptr noundef %1, i32 noundef %i.q, i32 noundef %i.bh) #10
  %i.bi = load i64, ptr %i.h, align 8
  %i.bj = getelementptr i8, ptr %1, i64 -40
  store i64 %i.bi, ptr %i.bj, align 8
  br i1 %i.af, label %bb.j, label %bb.q

bb.j:                                             ; preds = %ext4_block_to_path.exit.thread
  %i.bk = zext nneg i32 %i.bg to i64
  %i.bl = getelementptr [4 x i8], ptr %i.c, i64 %i.bk ; 2 uses
  %i.bm = getelementptr i8, ptr %1, i64 -184      ; 2 uses
  %i.bn = icmp ult ptr %i.bl, %i.bm
  br i1 %i.bn, label %.lr.ph.i, label %ext4_free_data.exit

.lr.ph.i:                                         ; preds = %bb.j, %bb.o
  %.04667.i = phi ptr [ %i.bv, %bb.o ], [ %i.bl, %bb.j ] ; 5 uses
  %.04766.i = phi ptr [ %.148.i, %bb.o ], [ null, %bb.j ] ; 3 uses
  %.04965.i = phi i64 [ %.150.i, %bb.o ], [ 0, %bb.j ] ; 5 uses
  %.05164.i = phi i64 [ %.152.i, %bb.o ], [ 0, %bb.j ] ; 4 uses
  %i.bo = load i32, ptr %.04667.i, align 4        ; 2 uses
  %i.bp = zext i32 %i.bo to i64                   ; 3 uses
  %.not60.i = icmp eq i32 %i.bo, 0
  br i1 %.not60.i, label %bb.o, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  %i.bq = icmp eq i64 %.04965.i, 0
  br i1 %i.bq, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = add i64 %.05164.i, %.04965.i
  %i.bs = icmp eq i64 %i.br, %i.bp
  br i1 %i.bs, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bt = add i64 %.04965.i, 1
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bu = tail call fastcc i32 @ext4_clear_blocks(ptr noundef %0, ptr noundef %1, ptr noundef null, i64 noundef %.05164.i, i64 noundef %.04965.i, ptr noundef %.04766.i, ptr noundef %.04667.i) #12, !srcloc !15
  %.not61.i = icmp eq i32 %i.bu, 0
  br i1 %.not61.i, label %bb.o, label %ext4_free_data.exitthread-pre-split

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.k, %.lr.ph.i
  %.152.i = phi i64 [ %.05164.i, %.lr.ph.i ], [ %.05164.i, %bb.m ], [ %i.bp, %bb.k ], [ %i.bp, %bb.n ] ; 2 uses
  %.150.i = phi i64 [ %.04965.i, %.lr.ph.i ], [ %i.bt, %bb.m ], [ 1, %bb.k ], [ 1, %bb.n ] ; 3 uses
  %.148.i = phi ptr [ %.04766.i, %.lr.ph.i ], [ %.04766.i, %bb.m ], [ %.04667.i, %bb.k ], [ %.04667.i, %bb.n ] ; 2 uses
  %i.bv = getelementptr i8, ptr %.04667.i, i64 4  ; 3 uses
  %i.bw = icmp ult ptr %i.bv, %i.bm
  br i1 %i.bw, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %bb.o
  %.not105 = icmp eq i64 %.150.i, 0
  br i1 %.not105, label %ext4_free_data.exitthread-pre-split, label %bb.p

bb.p:                                             ; preds = %._crit_edge.i
  %i.bx = tail call fastcc i32 @ext4_clear_blocks(ptr noundef %0, ptr noundef %1, ptr noundef null, i64 noundef %.152.i, i64 noundef %.150.i, ptr noundef %.148.i, ptr noundef %i.bv) #12, !srcloc !16 ; 0 uses
  br label %ext4_free_data.exitthread-pre-split

bb.q:                                             ; preds = %ext4_block_to_path.exit.thread
  %i.by = call fastcc ptr @ext4_find_shared(ptr noundef %1, i32 noundef %.0, ptr noundef nonnull %i.a, ptr noundef nonnull %2, ptr noundef nonnull %i.b) #12, !srcloc !48 ; 7 uses
  %i.bz = load i32, ptr %i.b, align 4
  %.not72 = icmp eq i32 %i.bz, 0
  br i1 %.not72, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ca = icmp eq ptr %i.by, %2
  br i1 %i.ca, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %3 = icmp eq i32 %.0, 3
  %.finite = select i1 %3, i8 2, i8 3
  %4 = icmp eq i32 %.0, 2
  %.finite108 = select i1 %4, i8 1, i8 %.finite
  %5 = icmp eq i32 %.0, 1
  %.finite109 = select i1 %5, i8 0, i8 %.finite108
  %i.cc = zext nneg i8 %.finite109 to i32
  call fastcc void @ext4_free_branches(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %i.b, ptr noundef nonnull %i.cb, i32 noundef %i.cc) #12, !srcloc !49
  %i.cd = load ptr, ptr %i.by, align 8
  store i32 0, ptr %i.cd, align 4
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.ce = getelementptr i8, ptr %i.by, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = load ptr, ptr %i.by, align 8            ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 4
  %i.ci = zext nneg i32 %.0 to i64
  %i.cj = getelementptr [24 x i8], ptr %2, i64 %i.ci
  %i.ck = getelementptr i8, ptr %i.cj, i64 -24
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = ptrtoint ptr %i.by to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = sdiv exact i64 %i.cn, 24
  %i.cp = trunc i64 %i.co to i32
  call fastcc void @ext4_free_branches(ptr noundef %0, ptr noundef %1, ptr noundef %i.cf, ptr noundef %i.cg, ptr noundef %i.ch, i32 noundef %i.cp) #12, !srcloc !50
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.q
  %i.cq = icmp ugt ptr %i.by, %2
  br i1 %i.cq, label %.lr.ph, label %ext4_free_data.exitthread-pre-split

.lr.ph:                                           ; preds = %bb.u
  %i.cr = shl i64 %i.g, 30
  %i.cs = ashr i64 %i.cr, 32
  %i.ct = zext nneg i32 %.0 to i64
  %i.cu = getelementptr [24 x i8], ptr %2, i64 %i.ct
  %i.cv = getelementptr i8, ptr %i.cu, i64 -24
  %i.cw = ptrtoint ptr %i.cv to i64
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %brelse.exit
  %.06678 = phi ptr [ %i.by, %.lr.ph ], [ %i.dj, %brelse.exit ] ; 4 uses
  %i.cx = getelementptr i8, ptr %.06678, i64 16   ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8            ; 2 uses
  %i.cz = load ptr, ptr %.06678, align 8
  %i.da = getelementptr i8, ptr %i.cz, i64 4
  %i.db = getelementptr i8, ptr %i.cy, i64 40
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = getelementptr [4 x i8], ptr %i.dc, i64 %i.cs
  %i.de = ptrtoint ptr %.06678 to i64
  %i.df = sub i64 %i.cw, %i.de
  %i.dg = sdiv exact i64 %i.df, 24
  %i.dh = trunc i64 %i.dg to i32
  call fastcc void @ext4_free_branches(ptr noundef %0, ptr noundef %1, ptr noundef %i.cy, ptr noundef %i.da, ptr noundef %i.dd, i32 noundef %i.dh) #12, !srcloc !51
  %i.di = load ptr, ptr %i.cx, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.di, null
  br i1 %.not.i, label %brelse.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @__brelse(ptr noundef nonnull %i.di) #10
  br label %brelse.exit

brelse.exit:                                      ; preds = %bb.v, %bb.w
  %i.dj = getelementptr i8, ptr %.06678, i64 -24  ; 2 uses
  %i.dk = icmp ugt ptr %i.dj, %2
  br i1 %i.dk, label %bb.v, label %ext4_free_data.exitthread-pre-split, !llvm.loop !47

ext4_free_data.exitthread-pre-split:              ; preds = %brelse.exit, %bb.n, %bb.u, %._crit_edge.i, %bb.p
  %.pr = load i32, ptr %i.a, align 16
  br label %ext4_free_data.exit

ext4_free_data.exit:                              ; preds = %ext4_free_data.exitthread-pre-split, %bb.j
  %i.dl = phi i32 [ %.pr, %ext4_free_data.exitthread-pre-split ], [ %i.bg, %bb.j ]
  switch i32 %i.dl, label %bb.x [
    i32 12, label %bb.z
    i32 13, label %bb.ab
    i32 14, label %bb.ad
  ]

bb.x:                                             ; preds = %ext4_free_data.exit
  %i.dm = getelementptr i8, ptr %1, i64 -184      ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 8            ; 2 uses
  store i32 %i.dn, ptr %i.b, align 4
  %.not73 = icmp eq i32 %i.dn, 0
  br i1 %.not73, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  call fastcc void @ext4_free_branches(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %i.b, ptr noundef nonnull %i.do, i32 noundef 1) #12, !srcloc !52
  store i32 0, ptr %i.dm, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %ext4_free_data.exit
  %i.dp = getelementptr i8, ptr %1, i64 -180      ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4            ; 2 uses
  store i32 %i.dq, ptr %i.b, align 4
  %.not74 = icmp eq i32 %i.dq, 0
  br i1 %.not74, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  call fastcc void @ext4_free_branches(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %i.b, ptr noundef nonnull %i.dr, i32 noundef 2) #12, !srcloc !53
  store i32 0, ptr %i.dp, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa, %ext4_free_data.exit
  %i.ds = getelementptr i8, ptr %1, i64 -176      ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 8            ; 2 uses
  store i32 %i.dt, ptr %i.b, align 4
  %.not75 = icmp eq i32 %i.dt, 0
  br i1 %.not75, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  call fastcc void @ext4_free_branches(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %i.b, ptr noundef nonnull %i.du, i32 noundef 3) #12, !srcloc !54
  store i32 0, ptr %i.ds, align 8
  br label %bb.ad

.critedge:                                        ; preds = %bb.a
  %i.dv = xor i32 %i.q, -1
  tail call void @ext4_es_remove_extent(ptr noundef %1, i32 noundef %i.q, i32 noundef %i.dv) #10
  %i.dw = load i64, ptr %i.h, align 8
  %i.dx = getelementptr i8, ptr %1, i64 -40
  store i64 %i.dw, ptr %i.dx, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %.critedge, %ext4_block_to_path.exit, %bb.ab, %bb.ac, %ext4_free_data.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ext4_es_remove_extent(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @ext4_free_data(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(address) %3, ptr nofree noundef readnone captures(address) %4) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call i32 @__ext4_journal_get_write_access(ptr noundef @__func__.ext4_free_data, i32 noundef 931, ptr noundef %0, ptr noundef %i.b, ptr noundef nonnull %2, i32 noundef 1) #10
  %.not59 = icmp eq i32 %i.c, 0
  br i1 %.not59, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = icmp ult ptr %3, %4
  br i1 %i.d, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.c, %bb.h
  %.04667 = phi ptr [ %i.l, %bb.h ], [ %3, %bb.c ] ; 6 uses
  %.04766 = phi ptr [ %.148, %bb.h ], [ null, %bb.c ] ; 4 uses
  %.04965 = phi i64 [ %.150, %bb.h ], [ 0, %bb.c ] ; 6 uses
  %.05164 = phi i64 [ %.152, %bb.h ], [ 0, %bb.c ] ; 5 uses
  %i.e = load i32, ptr %.04667, align 4           ; 2 uses
  %i.f = zext i32 %i.e to i64                     ; 3 uses
  %.not60 = icmp eq i32 %i.e, 0
  br i1 %.not60, label %bb.h, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.g = icmp eq i64 %.04965, 0
  br i1 %i.g, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = add i64 %.04965, %.05164
  %i.i = icmp eq i64 %i.h, %i.f
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = add i64 %.04965, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.k = tail call fastcc i32 @ext4_clear_blocks(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %.05164, i64 noundef %.04965, ptr noundef %.04766, ptr noundef %.04667) #12, !srcloc !15 ; 2 uses
  %.not61 = icmp eq i32 %i.k, 0
  br i1 %.not61, label %bb.h, label %._crit_edge

bb.h:                                             ; preds = %bb.g, %bb.d, %.lr.ph, %bb.f
  %.152 = phi i64 [ %.05164, %.lr.ph ], [ %.05164, %bb.f ], [ %i.f, %bb.d ], [ %i.f, %bb.g ] ; 2 uses
  %.150 = phi i64 [ %.04965, %.lr.ph ], [ %i.j, %bb.f ], [ 1, %bb.d ], [ 1, %bb.g ] ; 2 uses
  %.148 = phi ptr [ %.04766, %.lr.ph ], [ %.04766, %bb.f ], [ %.04667, %bb.d ], [ %.04667, %bb.g ] ; 2 uses
  %i.l = getelementptr i8, ptr %.04667, i64 4     ; 3 uses
  %i.m = icmp ult ptr %i.l, %4
  br i1 %i.m, label %.lr.ph, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.h, %bb.g
  %.051.lcssa = phi i64 [ %.05164, %bb.g ], [ %.152, %bb.h ]
  %.049.lcssa = phi i64 [ %.04965, %bb.g ], [ %.150, %bb.h ] ; 2 uses
  %.047.lcssa = phi ptr [ %.04766, %bb.g ], [ %.148, %bb.h ]
  %.046.lcssa = phi ptr [ %.04667, %bb.g ], [ %i.l, %bb.h ]
  %.3 = phi i32 [ %i.k, %bb.g ], [ 0, %bb.h ]     ; 2 uses
  %i.n = icmp eq i32 %.3, 0
  %i.o = icmp ne i64 %.049.lcssa, 0
  %or.cond = select i1 %i.n, i1 %i.o, i1 false
  br i1 %or.cond, label %bb.i, label %._crit_edge.thread

bb.i:                                             ; preds = %._crit_edge
  %i.p = tail call fastcc i32 @ext4_clear_blocks(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %.051.lcssa, i64 noundef %.049.lcssa, ptr noundef %.047.lcssa, ptr noundef %.046.lcssa) #12, !srcloc !16
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.c, %bb.i, %._crit_edge
  %.4 = phi i32 [ %i.p, %bb.i ], [ %.3, %._crit_edge ], [ 0, %bb.c ]
end_hunk_0
begin_hunk_1_@ext4_free_branches:bb.a

bb.k:                                             ; preds = %bb.j
  tail call void @__brelse(ptr noundef nonnull %i.u) #10
  br label %brelse.exit

brelse.exit:                                      ; preds = %bb.j, %bb.k
  br i1 %.not2.i, label %ext4_handle_is_aborted.exit63.thread71, label %bb.l

bb.l:                                             ; preds = %brelse.exit
  %i.ad = load i32, ptr %i.o, align 4
  %i.ae = and i32 %i.ad, 4
  %.not.i.i59 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i59, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.af = load ptr, ptr %0, align 8               ; 2 uses
  %.not4.i.i61 = icmp eq ptr %i.af, null
  br i1 %.not4.i.i61, label %.critedge, label %ext4_handle_is_aborted.exit63

ext4_handle_is_aborted.exit63:                    ; preds = %bb.m
  %i.ag = load ptr, ptr %i.af, align 8
  %.val.i.i62 = load i64, ptr %i.ag, align 8
  %i.ah = and i64 %.val.i.i62, 2
  %.not55 = icmp eq i64 %i.ah, 0
  br i1 %.not55, label %ext4_handle_is_aborted.exit63.thread71, label %.critedge

ext4_handle_is_aborted.exit63.thread71:           ; preds = %brelse.exit, %ext4_handle_is_aborted.exit63
  %i.ai = load ptr, ptr %i.h, align 8
  %i.aj = getelementptr i8, ptr %i.ai, i64 864
  %.val = load ptr, ptr %i.aj, align 32
  %i.ak = getelementptr i8, ptr %.val, i64 80
  %.val.val = load i32, ptr %i.ak, align 16
  %i.al = tail call fastcc i32 @ext4_ind_truncate_ensure_credits(ptr noundef %0, ptr noundef %1, ptr noundef null, i32 noundef %.val.val) #12, !srcloc !62
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %.critedge, label %bb.n

bb.n:                                             ; preds = %ext4_handle_is_aborted.exit63.thread71
  tail call void @ext4_free_blocks(ptr noundef %0, ptr noundef %1, ptr noundef null, i64 noundef %i.r, i64 noundef 1, i32 noundef 3) #10
  br i1 %.not56, label %.backedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = load ptr, ptr %i.h, align 8
  %i.ao = tail call i32 @__ext4_journal_get_write_access(ptr noundef @__func__.ext4_free_branches, i32 noundef 1095, ptr noundef %0, ptr noundef %i.an, ptr noundef nonnull %2, i32 noundef 1) #10
  %.not57 = icmp eq i32 %i.ao, 0
  br i1 %.not57, label %bb.p, label %.backedge

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.p, align 4
  %i.ap = tail call i32 @__ext4_handle_dirty_metadata(ptr noundef @__func__.ext4_free_branches, i32 noundef 1101, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #10 ; 0 uses
  br label %.backedge

bb.q:                                             ; preds = %ext4_handle_is_aborted.exit.thread66
  tail call fastcc void @ext4_free_data(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #12, !srcloc !63
  br label %.critedge

.critedge:                                        ; preds = %.backedge, %ext4_handle_is_aborted.exit63, %ext4_handle_is_aborted.exit63.thread71, %bb.m, %bb.l, %bb.d, %bb.b, %bb.c, %bb.q, %bb.g, %ext4_handle_is_aborted.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef i32 @ext4_ind_remove_space(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 17 uses
  %i.b = alloca [4 x i32], align 16               ; 15 uses
  %4 = alloca [4 x %struct.Indirect], align 16    ; 19 uses
  %5 = alloca [4 x %struct.Indirect], align 16    ; 15 uses
  %i.c = alloca i32, align 4                      ; 20 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = getelementptr i8, ptr %1, i64 -232       ; 3 uses
  %i.f = getelementptr i8, ptr %1, i64 40         ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 8 uses
  %i.h = getelementptr i8, ptr %i.g, i64 24
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %4, i8 0, i64 96, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %5, i8 0, i64 96, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 0, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4
  %i.j = getelementptr i8, ptr %i.g, i64 864
  %.val = load ptr, ptr %i.j, align 32            ; 2 uses
  %i.k = getelementptr i8, ptr %.val, i64 88
  %i.l = load i64, ptr %i.k, align 8
  %i.m = and i64 %i.i, 4294967295
  %i.n = add nsw i64 %i.m, -1
  %i.o = add i64 %i.n, %i.l
  %i.p = getelementptr i8, ptr %i.g, i64 20
  %i.q = load i8, ptr %i.p, align 4
  %i.r = zext nneg i8 %i.q to i64
  %i.s = ashr i64 %i.o, %i.r
  %i.t = trunc i64 %i.s to i32
  %spec.select = tail call i32 @llvm.umin.i32(i32 %3, i32 %i.t) ; 4 uses
  %.not212.not = icmp ult i32 %2, %spec.select
  br i1 %.not212.not, label %bb.b, label %ext4_free_data.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false), !annotation !11
  %i.u = lshr i64 %i.i, 2                         ; 2 uses
  %i.v = trunc i64 %i.u to i32                    ; 8 uses
  %i.w = getelementptr i8, ptr %.val, i64 172
  %i.x = load i32, ptr %i.w, align 4              ; 7 uses
  %sext.i = shl i64 %i.u, 32                      ; 3 uses
  %i.y = ashr exact i64 %sext.i, 32               ; 6 uses
  %i.z = shl i32 %i.x, 1                          ; 6 uses
  %i.aa = shl nuw i32 1, %i.z                     ; 7 uses
  %i.ab = zext nneg i32 %i.aa to i64              ; 5 uses
  %i.ac = icmp ult i32 %2, 12                     ; 2 uses
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 %2, ptr %i.a, align 16
  %i.ad = zext nneg i32 %2 to i64
  br label %ext4_block_to_path.exit

bb.d:                                             ; preds = %bb.b
  %i.ae = add i32 %2, -12                         ; 3 uses
  %i.af = zext i32 %i.ae to i64
  %i.ag = icmp sgt i64 %i.y, %i.af
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 12, ptr %i.a, align 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.ae, ptr %i.ah, align 4
  br label %ext4_block_to_path.exit

bb.f:                                             ; preds = %bb.d
  %i.ai = sub i32 %i.ae, %i.v                     ; 4 uses
  %i.aj = icmp ult i32 %i.ai, %i.aa
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 13, ptr %i.a, align 16
  %i.ak = lshr i32 %i.ai, %i.x
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.ak, ptr %i.al, align 4
  %i.am = add i32 %i.v, -1
  %i.an = and i32 %i.ai, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.an, ptr %i.ao, align 8
  br label %ext4_block_to_path.exit

bb.h:                                             ; preds = %bb.f
  %narrow.i = sub nuw i32 %i.ai, %i.aa            ; 4 uses
  %i.ap = lshr i32 %narrow.i, %i.z                ; 2 uses
  %i.aq = icmp ult i32 %i.ap, %i.v
  br i1 %i.aq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 14, ptr %i.a, align 16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.ap, ptr %i.ar, align 4
  %i.as = lshr i32 %narrow.i, %i.x
  %i.at = add i32 %i.v, -1                        ; 2 uses
  %i.au = and i32 %i.as, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.au, ptr %i.av, align 8
  %i.aw = and i32 %narrow.i, %i.at
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.aw, ptr %i.ax, align 4
  br label %ext4_block_to_path.exit

bb.j:                                             ; preds = %bb.h
  %i.ay = zext i32 %narrow.i to i64
  %i.az = add nsw i64 %i.y, 12
  %i.ba = add nsw i64 %i.az, %i.ab
  %i.bb = add nsw i64 %i.ba, %i.ay
  %i.bc = getelementptr i8, ptr %1, i64 64
  %i.bd = load i64, ptr %i.bc, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %i.g, ptr noundef @__func__.ext4_block_to_path, i32 noundef 107, ptr noundef @.str.6, i64 noundef %i.bb, i64 noundef %i.bd) #10
  %.pre = load ptr, ptr %i.f, align 8             ; 3 uses
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 24
  %.pre289 = load i64, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert290 = getelementptr i8, ptr %.pre, i64 864
  %.val.i234.pre = load ptr, ptr %.phi.trans.insert290, align 32
  %.phi.trans.insert292 = getelementptr i8, ptr %.val.i234.pre, i64 172
  %.pre293 = load i32, ptr %.phi.trans.insert292, align 4 ; 2 uses
  %.pre294 = lshr i64 %.pre289, 2                 ; 2 uses
  %.pre295 = trunc i64 %.pre294 to i32
  %.pre297 = shl i64 %.pre294, 32
  %.pre298 = ashr exact i64 %.pre297, 32
  %.pre300 = shl i32 %.pre293, 1                  ; 2 uses
  %.pre302 = shl nuw i32 1, %.pre300              ; 2 uses
  %.pre304 = zext nneg i32 %.pre302 to i64
  br label %ext4_block_to_path.exit

ext4_block_to_path.exit:                          ; preds = %bb.c, %bb.e, %bb.g, %bb.i, %bb.j
  %.pre-phi305 = phi i64 [ %i.ab, %bb.c ], [ %i.ab, %bb.e ], [ %i.ab, %bb.g ], [ %i.ab, %bb.i ], [ %.pre304, %bb.j ]
  %.pre-phi303 = phi i32 [ %i.aa, %bb.c ], [ %i.aa, %bb.e ], [ %i.aa, %bb.g ], [ %i.aa, %bb.i ], [ %.pre302, %bb.j ] ; 2 uses
  %.pre-phi301 = phi i32 [ %i.z, %bb.c ], [ %i.z, %bb.e ], [ %i.z, %bb.g ], [ %i.z, %bb.i ], [ %.pre300, %bb.j ]
  %.pre-phi299 = phi i64 [ %i.y, %bb.c ], [ %i.y, %bb.e ], [ %i.y, %bb.g ], [ %i.y, %bb.i ], [ %.pre298, %bb.j ] ; 2 uses
  %.pre-phi296 = phi i32 [ %i.v, %bb.c ], [ %i.v, %bb.e ], [ %i.v, %bb.g ], [ %i.v, %bb.i ], [ %.pre295, %bb.j ] ; 4 uses
  %i.be = phi i64 [ %i.ad, %bb.c ], [ 12, %bb.e ], [ 13, %bb.g ], [ 14, %bb.i ], [ 0, %bb.j ] ; 2 uses
  %i.bf = phi i32 [ %i.x, %bb.c ], [ %i.x, %bb.e ], [ %i.x, %bb.g ], [ %i.x, %bb.i ], [ %.pre293, %bb.j ] ; 2 uses
  %i.bg = phi ptr [ %i.g, %bb.c ], [ %i.g, %bb.e ], [ %i.g, %bb.g ], [ %i.g, %bb.i ], [ %.pre, %bb.j ]
  %i.bh = phi i1 [ false, %bb.c ], [ true, %bb.e ], [ true, %bb.g ], [ true, %bb.i ], [ false, %bb.j ]
  %.060.i = phi i32 [ 1, %bb.c ], [ 2, %bb.e ], [ 3, %bb.g ], [ 4, %bb.i ], [ 0, %bb.j ] ; 15 uses
  %i.bi = icmp ult i32 %spec.select, 12
  br i1 %i.bi, label %ext4_block_to_path.exit240.thread, label %bb.k

bb.k:                                             ; preds = %ext4_block_to_path.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false), !annotation !11
  %i.bj = add i32 %spec.select, -12               ; 3 uses
  %i.bk = zext i32 %i.bj to i64
  %i.bl = icmp sgt i64 %.pre-phi299, %i.bk
  br i1 %i.bl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 12, ptr %i.b, align 16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.bj, ptr %i.bm, align 4
  br label %ext4_block_to_path.exit240

bb.m:                                             ; preds = %bb.k
  %i.bn = sub i32 %i.bj, %.pre-phi296             ; 4 uses
  %i.bo = icmp ult i32 %i.bn, %.pre-phi303
  br i1 %i.bo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 13, ptr %i.b, align 16
  %i.bp = lshr i32 %i.bn, %i.bf
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.bp, ptr %i.bq, align 4
  %i.br = add i32 %.pre-phi296, -1
  %i.bs = and i32 %i.bn, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.bs, ptr %i.bt, align 8
  br label %ext4_block_to_path.exit240

bb.o:                                             ; preds = %bb.m
  %narrow.i236 = sub nuw i32 %i.bn, %.pre-phi303  ; 4 uses
  %i.bu = lshr i32 %narrow.i236, %.pre-phi301     ; 2 uses
  %i.bv = icmp ult i32 %i.bu, %.pre-phi296
  br i1 %i.bv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 14, ptr %i.b, align 16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.bu, ptr %i.bw, align 4
  %i.bx = lshr i32 %narrow.i236, %i.bf
  %i.by = add i32 %.pre-phi296, -1                ; 2 uses
  %i.bz = and i32 %i.bx, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.bz, ptr %i.ca, align 8
  %i.cb = and i32 %narrow.i236, %i.by
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %i.cb, ptr %i.cc, align 4
  br label %ext4_block_to_path.exit240

bb.q:                                             ; preds = %bb.o
  %i.cd = zext i32 %narrow.i236 to i64
  %i.ce = add nsw i64 %.pre-phi299, 12
  %i.cf = add nsw i64 %i.ce, %.pre-phi305
  %i.cg = add nsw i64 %i.cf, %i.cd
  %i.ch = getelementptr i8, ptr %1, i64 64
  %i.ci = load i64, ptr %i.ch, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %i.bg, ptr noundef @__func__.ext4_block_to_path, i32 noundef 107, ptr noundef @.str.6, i64 noundef %i.cg, i64 noundef %i.ci) #10
  br label %ext4_block_to_path.exit240

ext4_block_to_path.exit240:                       ; preds = %bb.l, %bb.n, %bb.p, %bb.q
  %.060.i238 = phi i32 [ 0, %bb.q ], [ 2, %bb.l ], [ 3, %bb.n ], [ 4, %bb.p ] ; 9 uses
  %i.cj = icmp samesign ugt i32 %.060.i, %.060.i238
  br i1 %i.cj, label %bb.r, label %bb.y, !prof !13

ext4_block_to_path.exit240.thread:                ; preds = %ext4_block_to_path.exit
  br i1 %i.bh, label %bb.r, label %.thread351, !prof !13

bb.r:                                             ; preds = %ext4_block_to_path.exit240.thread, %ext4_block_to_path.exit240
  tail call void asm sideeffect "1466: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1466b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1466) #9, !srcloc !69
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, ptr @.str.1, i32 1252, i32 0, i64 16) #9, !srcloc !70
  unreachable

.thread351:                                       ; preds = %ext4_block_to_path.exit240.thread
  %i.ck = zext nneg i32 %spec.select to i64
  %i.cl = getelementptr [4 x i8], ptr %i.e, i64 %i.be ; 2 uses
  %i.cm = getelementptr [4 x i8], ptr %i.e, i64 %i.ck ; 2 uses
  %i.cn = icmp ult ptr %i.cl, %i.cm
  br i1 %i.cn, label %.lr.ph.i, label %ext4_free_data.exit

.lr.ph.i:                                         ; preds = %.thread351, %bb.w
  %.04667.i = phi ptr [ %i.cv, %bb.w ], [ %i.cl, %.thread351 ] ; 5 uses
  %.04766.i = phi ptr [ %.148.i, %bb.w ], [ null, %.thread351 ] ; 3 uses
  %.04965.i = phi i64 [ %.150.i, %bb.w ], [ 0, %.thread351 ] ; 5 uses
  %.05164.i = phi i64 [ %.152.i, %bb.w ], [ 0, %.thread351 ] ; 4 uses
  %i.co = load i32, ptr %.04667.i, align 4        ; 2 uses
  %i.cp = zext i32 %i.co to i64                   ; 3 uses
  %.not60.i = icmp eq i32 %i.co, 0
  br i1 %.not60.i, label %bb.w, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i
  %i.cq = icmp eq i64 %.04965.i, 0
  br i1 %i.cq, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cr = add i64 %.05164.i, %.04965.i
  %i.cs = icmp eq i64 %i.cr, %i.cp
  br i1 %i.cs, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ct = add i64 %.04965.i, 1
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.cu = tail call fastcc i32 @ext4_clear_blocks(ptr noundef %0, ptr noundef %1, ptr noundef null, i64 noundef %.05164.i, i64 noundef %.04965.i, ptr noundef %.04766.i, ptr noundef %.04667.i) #12, !srcloc !15
  %.not61.i = icmp eq i32 %i.cu, 0
  br i1 %.not61.i, label %bb.w, label %ext4_free_data.exit

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.s, %.lr.ph.i
  %.152.i = phi i64 [ %.05164.i, %.lr.ph.i ], [ %.05164.i, %bb.u ], [ %i.cp, %bb.s ], [ %i.cp, %bb.v ] ; 2 uses
  %.150.i = phi i64 [ %.04965.i, %.lr.ph.i ], [ %i.ct, %bb.u ], [ 1, %bb.s ], [ 1, %bb.v ] ; 3 uses
  %.148.i = phi ptr [ %.04766.i, %.lr.ph.i ], [ %.04766.i, %bb.u ], [ %.04667.i, %bb.s ], [ %.04667.i, %bb.v ] ; 2 uses
  %i.cv = getelementptr i8, ptr %.04667.i, i64 4  ; 3 uses
  %i.cw = icmp ult ptr %i.cv, %i.cm
  br i1 %i.cw, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %bb.w
  %.not373 = icmp eq i64 %.150.i, 0
  br i1 %.not373, label %ext4_free_data.exit, label %bb.x

bb.x:                                             ; preds = %._crit_edge.i
  %i.cx = tail call fastcc i32 @ext4_clear_blocks(ptr noundef %0, ptr noundef %1, ptr noundef null, i64 noundef %.152.i, i64 noundef %.150.i, ptr noundef %.148.i, ptr noundef %i.cv) #12, !srcloc !16 ; 0 uses
  br label %ext4_free_data.exit

bb.y:                                             ; preds = %ext4_block_to_path.exit240
  %i.cy = icmp samesign ugt i32 %.060.i238, %.060.i
  br i1 %i.cy, label %bb.z, label %bb.aq

bb.z:                                             ; preds = %bb.y
  br i1 %i.ac, label %bb.aa, label %bb.ah

bb.aa:                                            ; preds = %bb.z
  %i.cz = getelementptr [4 x i8], ptr %i.e, i64 %i.be ; 2 uses
  %i.da = getelementptr i8, ptr %1, i64 -184      ; 2 uses
  %i.db = icmp ult ptr %i.cz, %i.da
  br i1 %i.db, label %.lr.ph.i244, label %ext4_free_data.exit261

.lr.ph.i244:                                      ; preds = %bb.aa, %bb.af
  %.04667.i245 = phi ptr [ %i.dj, %bb.af ], [ %i.cz, %bb.aa ] ; 5 uses
  %.04766.i246 = phi ptr [ %.148.i260, %bb.af ], [ null, %bb.aa ] ; 3 uses
  %.04965.i247 = phi i64 [ %.150.i259, %bb.af ], [ 0, %bb.aa ] ; 5 uses
  %.05164.i248 = phi i64 [ %.152.i258, %bb.af ], [ 0, %bb.aa ] ; 4 uses
  %i.dc = load i32, ptr %.04667.i245, align 4     ; 2 uses
  %i.dd = zext i32 %i.dc to i64                   ; 3 uses
  %.not60.i249 = icmp eq i32 %i.dc, 0
  br i1 %.not60.i249, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i244
  %i.de = icmp eq i64 %.04965.i247, 0
  br i1 %i.de, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.df = add i64 %.05164.i248, %.04965.i247
  %i.dg = icmp eq i64 %i.df, %i.dd
  br i1 %i.dg, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dh = add i64 %.04965.i247, 1
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.di = tail call fastcc i32 @ext4_clear_blocks(ptr noundef %0, ptr noundef %1, ptr noundef null, i64 noundef %.05164.i248, i64 noundef %.04965.i247, ptr noundef %.04766.i246, ptr noundef %.04667.i245) #12, !srcloc !15
  %.not61.i250 = icmp eq i32 %i.di, 0
  br i1 %.not61.i250, label %bb.af, label %ext4_free_data.exit261

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ab, %.lr.ph.i244
  %.152.i258 = phi i64 [ %.05164.i248, %.lr.ph.i244 ], [ %.05164.i248, %bb.ad ], [ %i.dd, %bb.ab ], [ %i.dd, %bb.ae ] ; 2 uses
  %.150.i259 = phi i64 [ %.04965.i247, %.lr.ph.i244 ], [ %i.dh, %bb.ad ], [ 1, %bb.ab ], [ 1, %bb.ae ] ; 3 uses
  %.148.i260 = phi ptr [ %.04766.i246, %.lr.ph.i244 ], [ %.04766.i246, %bb.ad ], [ %.04667.i245, %bb.ab ], [ %.04667.i245, %bb.ae ] ; 2 uses
  %i.dj = getelementptr i8, ptr %.04667.i245, i64 4 ; 3 uses
  %i.dk = icmp ult ptr %i.dj, %i.da
  br i1 %i.dk, label %.lr.ph.i244, label %._crit_edge.i251, !llvm.loop !0

._crit_edge.i251:                                 ; preds = %bb.af
  %.not = icmp eq i64 %.150.i259, 0
  br i1 %.not, label %ext4_free_data.exit261, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge.i251
  %i.dl = tail call fastcc i32 @ext4_clear_blocks(ptr noundef %0, ptr noundef %1, ptr noundef null, i64 noundef %.152.i258, i64 noundef %.150.i259, ptr noundef %.148.i260, ptr noundef %i.dj) #12, !srcloc !16 ; 0 uses
  br label %ext4_free_data.exit261

bb.ah:                                            ; preds = %bb.z
  %i.dm = call fastcc ptr @ext4_find_shared(ptr noundef %1, i32 noundef %.060.i, ptr noundef nonnull %i.a, ptr noundef nonnull %4, ptr noundef nonnull %i.c) #12, !srcloc !71 ; 9 uses
  %i.dn = load i32, ptr %i.c, align 4
  %.not220 = icmp eq i32 %i.dn, 0
  br i1 %.not220, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.do = icmp eq ptr %i.dm, %4
  br i1 %i.do, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dp = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %6 = icmp eq i32 %.060.i, 2
  %.finite = select i1 %6, i8 1, i8 2
  %7 = icmp eq i32 %.060.i, 1
  %.finite396 = select i1 %7, i8 0, i8 %.finite
  %8 = icmp eq i32 %.060.i, 0
  %.finite397 = select i1 %8, i8 -1, i8 %.finite396
  %i.dq = sext i8 %.finite397 to i32
  call fastcc void @ext4_free_branches(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %i.c, ptr noundef nonnull %i.dp, i32 noundef %i.dq) #12, !srcloc !72
  %i.dr = load ptr, ptr %i.dm, align 8
  store i32 0, ptr %i.dr, align 4
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.ds = getelementptr i8, ptr %i.dm, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = load ptr, ptr %i.dm, align 8            ; 2 uses
  %i.dv = getelementptr i8, ptr %i.du, i64 4
  %i.dw = zext nneg i32 %.060.i to i64
  %i.dx = getelementptr [24 x i8], ptr %4, i64 %i.dw
  %i.dy = getelementptr i8, ptr %i.dx, i64 -24
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %i.dm to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = sdiv exact i64 %i.eb, 24
  %i.ed = trunc i64 %i.ec to i32
  call fastcc void @ext4_free_branches(ptr noundef %0, ptr noundef %1, ptr noundef %i.dt, ptr noundef %i.du, ptr noundef %i.dv, i32 noundef %i.ed) #12, !srcloc !73
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak, %bb.ah
  %i.ee = icmp ugt ptr %i.dm, %4
  br i1 %i.ee, label %.lr.ph277, label %ext4_free_data.exit261

.lr.ph277:                                        ; preds = %bb.al
  %i.ef = ashr exact i64 %sext.i, 30
  %i.eg = zext nneg i32 %.060.i to i64
  %i.eh = getelementptr [24 x i8], ptr %4, i64 %i.eg
  %i.ei = getelementptr i8, ptr %i.eh, i64 -24
  %i.ej = ptrtoint ptr %i.ei to i64
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph277, %bb.am
  %.0189276 = phi ptr [ %i.dm, %.lr.ph277 ], [ %i.ev, %bb.am ] ; 4 uses
  %i.ek = getelementptr i8, ptr %.0189276, i64 16
  %i.el = load ptr, ptr %i.ek, align 8            ; 2 uses
  %i.em = load ptr, ptr %.0189276, align 8
  %i.en = getelementptr i8, ptr %i.em, i64 4
  %i.eo = getelementptr i8, ptr %i.el, i64 40
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = getelementptr i8, ptr %i.ep, i64 %i.ef
  %i.er = ptrtoint ptr %.0189276 to i64
  %i.es = sub i64 %i.ej, %i.er
  %i.et = sdiv exact i64 %i.es, 24
  %i.eu = trunc i64 %i.et to i32
  call fastcc void @ext4_free_branches(ptr noundef %0, ptr noundef %1, ptr noundef %i.el, ptr noundef %i.en, ptr noundef %i.eq, i32 noundef %i.eu) #12, !srcloc !74
  %i.ev = getelementptr i8, ptr %.0189276, i64 -24 ; 2 uses
  %i.ew = icmp ugt ptr %i.ev, %4
  br i1 %i.ew, label %bb.am, label %ext4_free_data.exit261, !llvm.loop !64

ext4_free_data.exit261:                           ; preds = %bb.am, %bb.ae, %bb.al, %bb.ag, %._crit_edge.i251, %bb.aa
  %.0184 = phi ptr [ null, %bb.ag ], [ null, %bb.aa ], [ null, %._crit_edge.i251 ], [ %i.dm, %bb.al ], [ null, %bb.ae ], [ %i.dm, %bb.am ] ; 6 uses
  %i.ex = call fastcc ptr @ext4_find_shared(ptr noundef %1, i32 noundef %.060.i238, ptr noundef nonnull %i.b, ptr noundef nonnull %5, ptr noundef nonnull %i.d) #12, !srcloc !75 ; 11 uses
  %i.ey = load i32, ptr %i.d, align 4
  %.not221 = icmp eq i32 %i.ey, 0
  br i1 %.not221, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %ext4_free_data.exit261
  %i.ez = icmp ugt ptr %i.ex, %5
  br i1 %i.ez, label %.lr.ph279, label %.loopexit

bb.ao:                                            ; preds = %ext4_free_data.exit261
  %i.fa = load ptr, ptr %i.ex, align 8
  %i.fb = getelementptr i8, ptr %i.fa, i64 4
  store ptr %i.fb, ptr %i.ex, align 8
  %.old = icmp ugt ptr %i.ex, %5
  br i1 %.old, label %.lr.ph279, label %.loopexit

.lr.ph279:                                        ; preds = %bb.an, %bb.ao
  %i.fc = zext nneg i32 %.060.i238 to i64
  %i.fd = getelementptr [24 x i8], ptr %5, i64 %i.fc
  %i.fe = getelementptr i8, ptr %i.fd, i64 -24
  %i.ff = ptrtoint ptr %i.fe to i64
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph279, %bb.ap
  %.0186278 = phi ptr [ %i.ex, %.lr.ph279 ], [ %i.fp, %bb.ap ] ; 4 uses
  %i.fg = getelementptr i8, ptr %.0186278, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8            ; 2 uses
  %i.fi = getelementptr i8, ptr %i.fh, i64 40
  %i.fj = load ptr, ptr %i.fi, align 8
  %i.fk = load ptr, ptr %.0186278, align 8
  %i.fl = ptrtoint ptr %.0186278 to i64
  %i.fm = sub i64 %i.ff, %i.fl
  %i.fn = sdiv exact i64 %i.fm, 24
  %i.fo = trunc i64 %i.fn to i32
  call fastcc void @ext4_free_branches(ptr noundef %0, ptr noundef %1, ptr noundef %i.fh, ptr noundef %i.fj, ptr noundef %i.fk, i32 noundef %i.fo) #12, !srcloc !76
  %i.fp = getelementptr i8, ptr %.0186278, i64 -24 ; 2 uses
  %i.fq = icmp ugt ptr %i.fp, %5
  br i1 %i.fq, label %bb.ap, label %.loopexit, !llvm.loop !65

bb.aq:                                            ; preds = %bb.y
  %i.fr = call fastcc ptr @ext4_find_shared(ptr noundef %1, i32 noundef %.060.i, ptr noundef nonnull %i.a, ptr noundef nonnull %4, ptr noundef nonnull %i.c) #12, !srcloc !77 ; 10 uses
  %i.fs = call fastcc ptr @ext4_find_shared(ptr noundef %1, i32 noundef %.060.i238, ptr noundef nonnull %i.b, ptr noundef nonnull %5, ptr noundef nonnull %i.d) #12, !srcloc !78 ; 8 uses
  %i.ft = load i32, ptr %i.c, align 4
  %.not213 = icmp eq i32 %i.ft, 0
  br i1 %.not213, label %.critedge, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fu = ptrtoint ptr %i.fr to i64               ; 3 uses
  %i.fv = ptrtoint ptr %i.fs to i64
  %i.fw = ptrtoint ptr %5 to i64
  %i.fx = sub i64 %i.fv, %i.fw
  %i.fy = sdiv exact i64 %i.fx, 24
  %i.fz = ptrtoint ptr %4 to i64
  %i.ga = sub i64 %i.fu, %i.fz
  %i.gb = sdiv exact i64 %i.ga, 24
  %i.gc = call i64 @llvm.smin.i64(i64 %i.gb, i64 %i.fy)
  %i.gd = trunc i64 %i.gc to i32                  ; 2 uses
  %.not214.not271 = icmp slt i32 %i.gd, 0
  br i1 %.not214.not271, label %.critedge, label %.lr.ph

bb.as:                                            ; preds = %.lr.ph
  %i.ge = add i32 %.0178272, 1                    ; 2 uses
  %.not214.not = icmp sgt i32 %i.ge, %i.gd
  br i1 %.not214.not, label %.critedge, label %.lr.ph, !llvm.loop !66

.lr.ph:                                           ; preds = %bb.ar, %bb.as
  %.0178272 = phi i32 [ %i.ge, %bb.as ], [ 0, %bb.ar ] ; 2 uses
  %i.gf = sext i32 %.0178272 to i64               ; 2 uses
  %i.gg = getelementptr [4 x i8], ptr %i.a, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4
  %i.gi = getelementptr [4 x i8], ptr %i.b, i64 %i.gf
  %i.gj = load i32, ptr %i.gi, align 4
  %.not215 = icmp eq i32 %i.gh, %i.gj
  br i1 %.not215, label %bb.as, label %bb.at

bb.at:                                            ; preds = %.lr.ph
  %i.gk = icmp eq ptr %i.fr, %4
  br i1 %i.gk, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.gl = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.gm = zext nneg i32 %.060.i to i64
  %i.gn = getelementptr [24 x i8], ptr %4, i64 %i.gm
  %i.go = getelementptr i8, ptr %i.gn, i64 -24
  %i.gp = ptrtoint ptr %i.go to i64
  %i.gq = sub i64 %i.gp, %i.fu
  %i.gr = sdiv exact i64 %i.gq, 24
  %i.gs = trunc i64 %i.gr to i32
  call fastcc void @ext4_free_branches(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %i.c, ptr noundef nonnull %i.gl, i32 noundef %i.gs) #12, !srcloc !79
  %i.gt = load ptr, ptr %i.fr, align 8
  store i32 0, ptr %i.gt, align 4
  br label %.critedge

bb.av:                                            ; preds = %bb.at
  %i.gu = getelementptr i8, ptr %i.fr, i64 16
  %i.gv = load ptr, ptr %i.gu, align 8
  %i.gw = load ptr, ptr %i.fr, align 8            ; 2 uses
  %i.gx = getelementptr i8, ptr %i.gw, i64 4
  %i.gy = zext nneg i32 %.060.i to i64
  %i.gz = getelementptr [24 x i8], ptr %4, i64 %i.gy
  %i.ha = getelementptr i8, ptr %i.gz, i64 -24
  %i.hb = ptrtoint ptr %i.ha to i64
  %i.hc = sub i64 %i.hb, %i.fu
  %i.hd = sdiv exact i64 %i.hc, 24
  %i.he = trunc i64 %i.hd to i32
  call fastcc void @ext4_free_branches(ptr noundef %0, ptr noundef %1, ptr noundef %i.gv, ptr noundef %i.gw, ptr noundef %i.gx, i32 noundef %i.he) #12, !srcloc !80
  br label %.critedge

.critedge:                                        ; preds = %bb.as, %bb.ar, %bb.av, %bb.au, %bb.aq
  %i.hf = load i32, ptr %i.d, align 4
  %.not217 = icmp eq i32 %i.hf, 0
  br i1 %.not217, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %.critedge
  %i.hg = load ptr, ptr %i.fs, align 8
  %i.hh = getelementptr i8, ptr %i.hg, i64 4
  store ptr %i.hh, ptr %i.fs, align 8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %.critedge
  %i.hi = icmp ugt ptr %i.fr, %4                  ; 2 uses
  %i.hj = icmp ugt ptr %i.fs, %5                  ; 2 uses
  %i.hk = select i1 %i.hi, i1 true, i1 %i.hj
  br i1 %i.hk, label %.lr.ph275, label %.loopexit267

.lr.ph275:                                        ; preds = %bb.ax
  %i.hl = zext nneg i32 %.060.i to i64
  %i.hm = getelementptr [24 x i8], ptr %4, i64 %i.hl
  %i.hn = getelementptr i8, ptr %i.hm, i64 -24
  %i.ho = ptrtoint ptr %i.hn to i64
  %i.hp = zext nneg i32 %.060.i238 to i64
  %i.hq = getelementptr [24 x i8], ptr %5, i64 %i.hp
  %i.hr = getelementptr i8, ptr %i.hq, i64 -24
  %i.hs = ptrtoint ptr %i.hr to i64
  %i.ht = ashr exact i64 %sext.i, 30
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph275, %bb.be
  %i.hu = phi i1 [ %i.hj, %.lr.ph275 ], [ %i.jf, %bb.be ] ; 2 uses
  %i.hv = phi i1 [ %i.hi, %.lr.ph275 ], [ %i.je, %bb.be ] ; 2 uses
  %.1187274 = phi ptr [ %i.fs, %.lr.ph275 ], [ %.3, %bb.be ] ; 7 uses
  %.1190273 = phi ptr [ %i.fr, %.lr.ph275 ], [ %.2191, %bb.be ] ; 7 uses
  %i.hw = ptrtoint ptr %.1190273 to i64
  %i.hx = sub i64 %i.ho, %i.hw
  %i.hy = sdiv exact i64 %i.hx, 24
  %i.hz = trunc i64 %i.hy to i32                  ; 4 uses
  %i.ia = ptrtoint ptr %.1187274 to i64
end_hunk_1
