Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/vvfat?download=true
inline.NumInlined: 261
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@vvfat_write:bb.a

bb.ae:                                            ; preds = %bb.ad
  %i.ec = load ptr, ptr %i.dy, align 8
  %i.ed = zext nneg i32 %.4141 to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ed ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 1
  %i.eg = or i8 %i.ef, 4
  store i8 %i.eg, ptr %i.ee, align 1
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.eh = add i32 %.4141, 1                       ; 2 uses
  %.not101 = icmp sgt i32 %i.eh, %i.ax
  br i1 %.not101, label %._crit_edge143, label %bb.ad, !llvm.loop !26

._crit_edge143:                                   ; preds = %bb.af, %.preheader
  %i.ei = load ptr, ptr %i.f, align 8
  %.not.i.i120 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i120, label %vvfat_close_current_file.exit.i, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge143
  store ptr null, ptr %i.f, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 32960 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 8            ; 2 uses
  %.not6.i.i = icmp eq i32 %i.ek, 0
  br i1 %.not6.i.i, label %vvfat_close_current_file.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.el = call i32 @qemu_close(i32 noundef %i.ek) #22 ; 0 uses
  store i32 0, ptr %i.ej, align 8
  br label %vvfat_close_current_file.exit.i

vvfat_close_current_file.exit.i:                  ; preds = %bb.ah, %bb.ag, %._crit_edge143
  store i32 -1, ptr %i.k, align 8
  %i.em = call i32 @is_consistent(ptr noundef nonnull %i.b)
  %.not.i121 = icmp eq i32 %i.em, 0
  br i1 %.not.i121, label %.critedge112, label %bb.ai

bb.ai:                                            ; preds = %vvfat_close_current_file.exit.i
  %i.en = call i32 @do_commit(ptr noundef nonnull %i.b) ; 0 uses
  br label %.critedge112

.critedge112:                                     ; preds = %bb.ai, %vvfat_close_current_file.exit.i, %bb.aa, %bb.t, %bb.l, %bb.g, %bb.k, %bb.a, %bb.ac
  %.6 = phi i32 [ -1, %bb.t ], [ -13, %bb.a ], [ 0, %bb.k ], [ -1, %bb.l ], [ %i.dw, %bb.ac ], [ -1, %bb.g ], [ -1, %bb.aa ], [ 0, %vvfat_close_current_file.exit.i ], [ 0, %bb.ai ]
  ret i32 %.6
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal i32 @bdrv_co_pwrite(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4) #11 {
bb.a:
  %5 = alloca %struct.QEMUIOVector, align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %i.a, ptr %5, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <4 x i32> <i32 1, i32 0, i32 -1, i32 0>, ptr %i.b, align 8
  store ptr %3, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %2, ptr %i.c, align 8
  call void @assert_bdrv_graph_readable() #22
  %i.d = call i32 @bdrv_co_pwritev(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull %5, i32 noundef %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret i32 %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -1, 1) i32 @try_commit(ptr nofree noundef captures(none) initializes((32992, 32996)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32968 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %vvfat_close_current_file.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32960 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %.not6.i = icmp eq i32 %i.d, 0
  br i1 %.not6.i, label %vvfat_close_current_file.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @qemu_close(i32 noundef %i.d) #22 ; 0 uses
  store i32 0, ptr %i.c, align 8
  br label %vvfat_close_current_file.exit

vvfat_close_current_file.exit:                    ; preds = %bb.a, %bb.b, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32992
  store i32 -1, ptr %i.f, align 8
  %i.g = tail call i32 @is_consistent(ptr noundef nonnull %0)
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %vvfat_close_current_file.exit
  %i.h = tail call i32 @do_commit(ptr noundef nonnull %0) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %vvfat_close_current_file.exit, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ -1, %vvfat_close_current_file.exit ]
  ret i32 %.0
}

declare i32 @bdrv_co_pwritev(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, -2147483648) i32 @is_consistent(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 33016 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32928
  %i.e = load i32, ptr %i.d, align 8
  %i.f = shl i32 %i.e, 9
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = tail call noalias ptr @g_malloc(i64 noundef %i.g) #26 ; 3 uses
  store ptr %i.h, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32832
  %i.j = load ptr, ptr %i.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.h, ptr noundef nonnull align 1 %i.j, i64 noundef %i.g, i1 noundef false) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi ptr [ %i.h, %bb.b ], [ %i.b, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32952
  %i.o = load i32, ptr %i.n, align 8
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32928
  %i.r = load i32, ptr %i.q, align 8
  %i.s = tail call i32 @vvfat_read(ptr noundef %i.m, i64 noundef %i.p, ptr noundef nonnull %i.k, i32 noundef %i.r)
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr @stderr, align 8
  %i.u = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.t, i32 noundef 1, ptr noundef nonnull @.str.77) #22 ; 0 uses
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 33024 ; 4 uses
  %i.w = load ptr, ptr %i.v, align 8
  %.not51 = icmp eq ptr %i.w, null
  br i1 %.not51, label %bb.f, label %.preheader63

.preheader63:                                     ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32940 ; 3 uses
  %i.y = getelementptr i8, ptr %0, i64 32924      ; 3 uses
  %i.z = getelementptr i8, ptr %0, i64 32956      ; 3 uses
  %i.aa = load i32, ptr %i.x, align 4
  %i.ab = zext i32 %i.aa to i64
  %.val5767 = load i32, ptr %i.y, align 4
  %.val5868 = load i32, ptr %i.z, align 4
  %i.ac = zext i32 %.val5868 to i64
  %i.ad = sub nsw i64 %i.ab, %i.ac
  %i.ae = zext i32 %.val5767 to i64
  %i.af = sdiv i64 %i.ad, %i.ae
  %i.ag = trunc i64 %i.af to i32
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.14, i32 noundef 2169, ptr noundef nonnull @__PRETTY_FUNCTION__.is_consistent) #24
  unreachable

.lr.ph:                                           ; preds = %.preheader63, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader63 ] ; 2 uses
  %i.ai = load ptr, ptr %i.v, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = and i8 %i.ak, -4
  store i8 %i.al, ptr %i.aj, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.am = load i32, ptr %i.x, align 4
  %i.an = zext i32 %i.am to i64
  %.val57 = load i32, ptr %i.y, align 4
  %.val58 = load i32, ptr %i.z, align 4
  %i.ao = zext i32 %.val58 to i64
  %i.ap = sub nsw i64 %i.an, %i.ao
  %i.aq = zext i32 %.val57 to i64
  %i.ar = sdiv i64 %i.ap, %i.aq
  %i.as = shl i64 %i.ar, 32
  %i.at = ashr exact i64 %i.as, 32
  %i.au = icmp slt i64 %indvars.iv.next, %i.at
  br i1 %i.au, label %.lr.ph, label %._crit_edge, !llvm.loop !27

._crit_edge:                                      ; preds = %.lr.ph, %.preheader63
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 33044 ; 3 uses
  %i.aw = load i32, ptr %i.av, align 4            ; 2 uses
  %.not23.i = icmp eq i32 %i.aw, 0
  br i1 %.not23.i, label %clear_commits.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 33032
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 33048
  br label %bb.g

bb.g:                                             ; preds = %bb.m, %.lr.ph.i
  %i.az = phi i32 [ %i.aw, %.lr.ph.i ], [ %i.bi, %bb.m ] ; 2 uses
  %.022.i = phi i32 [ 0, %.lr.ph.i ], [ %i.bj, %bb.m ] ; 3 uses
  %1 = icmp ult i32 %.022.i, %i.az
  br i1 %1, label %3, label %2

2:                                                ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.14, i32 noundef 105, ptr noundef nonnull @__PRETTY_FUNCTION__.array_get) #24
  unreachable

3:                                                ; preds = %bb.g
  %4 = load ptr, ptr %i.ax, align 8               ; 2 uses
  %.not.i.i = icmp eq ptr %4, null
  br i1 %.not.i.i, label %bb.h, label %array_get.exit.i

bb.h:                                             ; preds = %3
  tail call void @__assert_fail(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.14, i32 noundef 106, ptr noundef nonnull @__PRETTY_FUNCTION__.array_get) #24
  unreachable

array_get.exit.i:                                 ; preds = %3
  %i.ba = load i32, ptr %i.ay, align 8
  %i.bb = mul i32 %i.ba, %.022.i
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 %i.bc ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.be, null
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bg = load i32, ptr %i.bf, align 8
  %i.bh = icmp eq i32 %i.bg, 1                    ; 2 uses
  br i1 %.not.i, label %bb.i, label %.thread.i

bb.i:                                             ; preds = %array_get.exit.i
  br i1 %i.bh, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.14, i32 noundef 1607, ptr noundef nonnull @__PRETTY_FUNCTION__.clear_commits) #24
  unreachable

.thread.i:                                        ; preds = %array_get.exit.i
  br i1 %i.bh, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.thread.i
  tail call void @g_free(ptr noundef nonnull %i.be) #22
  %.pre.i = load i32, ptr %i.av, align 4
  br label %bb.m

bb.l:                                             ; preds = %.thread.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.14, i32 noundef 1612, ptr noundef nonnull @__PRETTY_FUNCTION__.clear_commits) #24
  unreachable

bb.m:                                             ; preds = %bb.k, %bb.i
  %i.bi = phi i32 [ %.pre.i, %bb.k ], [ %i.az, %bb.i ] ; 2 uses
  %i.bj = add nuw i32 %.022.i, 1                  ; 2 uses
  %i.bk = icmp ult i32 %i.bj, %i.bi
  br i1 %i.bk, label %bb.g, label %clear_commits.exit, !llvm.loop !28

clear_commits.exit:                               ; preds = %bb.m, %._crit_edge
  store i32 0, ptr %i.av, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 33008
  %i.bm = load ptr, ptr %i.bl, align 8
  %.not52 = icmp eq ptr %i.bm, null
  br i1 %.not52, label %.loopexit62, label %.preheader

.preheader:                                       ; preds = %clear_commits.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32892 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4            ; 2 uses
  %.not79 = icmp eq i32 %i.bo, 0
  br i1 %.not79, label %.loopexit62, label %.lr.ph71

.lr.ph71:                                         ; preds = %.preheader
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32880
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 32896
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph71, %bb.s
  %i.br = phi i32 [ %i.bo, %.lr.ph71 ], [ %i.ce, %bb.s ] ; 2 uses
  %.14970 = phi i32 [ 0, %.lr.ph71 ], [ %i.cf, %bb.s ] ; 3 uses
  %i.bs = icmp ult i32 %.14970, %i.br
  br i1 %i.bs, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @__assert_fail(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.14, i32 noundef 105, ptr noundef nonnull @__PRETTY_FUNCTION__.array_get) #24
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bt = load ptr, ptr %i.bp, align 8            ; 2 uses
  %.not.i59 = icmp eq ptr %i.bt, null
  br i1 %.not.i59, label %bb.q, label %array_get.exit

bb.q:                                             ; preds = %bb.p
  tail call void @__assert_fail(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.14, i32 noundef 106, ptr noundef nonnull @__PRETTY_FUNCTION__.array_get) #24
  unreachable

array_get.exit:                                   ; preds = %bb.p
  %i.bu = load i32, ptr %i.bq, align 8
  %i.bv = mul i32 %i.bu, %.14970
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bw ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = icmp slt i32 %i.bz, 0
  br i1 %i.ca, label %bb.r, label %bb.s

bb.r:                                             ; preds = %array_get.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 32 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8
  %i.cd = or i32 %i.cc, 8
  store i32 %i.cd, ptr %i.cb, align 8
  %.pre = load i32, ptr %i.bn, align 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %array_get.exit
  %i.ce = phi i32 [ %.pre, %bb.r ], [ %i.br, %array_get.exit ] ; 2 uses
  %i.cf = add nuw i32 %.14970, 1                  ; 2 uses
  %i.cg = icmp ult i32 %i.cf, %i.ce
  br i1 %i.cg, label %bb.n, label %.loopexit62, !llvm.loop !29

.loopexit62:                                      ; preds = %bb.s, %.preheader, %clear_commits.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 33056
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = tail call i32 @check_directory_consistency(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %i.ci) ; 3 uses
  %i.ck = icmp slt i32 %i.cj, 1
  br i1 %i.ck, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %.loopexit62
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 32932
  %i.cm = load i32, ptr %i.cl, align 4            ; 6 uses
  %i.cn = load i32, ptr %i.x, align 4
  %i.co = zext i32 %i.cn to i64
  %.val = load i32, ptr %i.y, align 4
  %.val56 = load i32, ptr %i.z, align 4
  %i.cp = zext i32 %.val56 to i64
  %i.cq = sub nsw i64 %i.co, %i.cp
  %i.cr = zext i32 %.val to i64
  %i.cs = sdiv i64 %i.cq, %i.cr
  %i.ct = trunc i64 %i.cs to i32                  ; 2 uses
  %invariant.op = add i32 %i.cm, -1
  %i.cu = icmp slt i32 %i.cm, %i.ct
  br i1 %i.cu, label %.lr.ph77, label %._crit_edge78

.lr.ph77:                                         ; preds = %bb.t
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 32824
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 32948
  br label %bb.v

bb.u:                                             ; preds = %bb.ad
  %i.cx = add nsw i32 %.272, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.cx, %i.ct
  br i1 %exitcond.not, label %._crit_edge78, label %bb.v, !llvm.loop !30

bb.v:                                             ; preds = %.lr.ph77, %bb.u
  %.04775 = phi i32 [ %i.cm, %.lr.ph77 ], [ %.1, %bb.u ] ; 2 uses
  %.272 = phi i32 [ %i.cm, %.lr.ph77 ], [ %i.cx, %bb.u ] ; 9 uses
  %i.cy = icmp ult i32 %.272, %i.cm
  br i1 %i.cy, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.cz = icmp eq i32 %.272, %invariant.op
  br i1 %i.cz, label %bb.x, label %.modified_fat_get.exit.thread_crit_edge

.modified_fat_get.exit.thread_crit_edge:          ; preds = %bb.w
  %.pre83 = load ptr, ptr %i.v, align 8
  br label %modified_fat_get.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.da = load i32, ptr %i.cw, align 4
  br label %modified_fat_get.exit

bb.y:                                             ; preds = %bb.v
  %i.db = load i32, ptr %i.cv, align 8
  %i.dc = load ptr, ptr %i.a, align 8             ; 3 uses
  switch i32 %i.db, label %bb.ab [
    i32 32, label %bb.z
    i32 16, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y
  %i.dd = zext i32 %.272 to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4
  br label %modified_fat_get.exit

bb.aa:                                            ; preds = %bb.y
  %i.dg = zext i32 %.272 to i64
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.dc, i64 %i.dg
  %i.di = load i16, ptr %i.dh, align 2
  %i.dj = zext i16 %i.di to i32
  br label %modified_fat_get.exit

bb.ab:                                            ; preds = %bb.y
  %i.dk = mul i32 %.272, 3
  %i.dl = lshr i32 %i.dk, 1
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.dm
  %i.do = load i16, ptr %i.dn, align 1
  %i.dp = zext i16 %i.do to i32
  %i.dq = shl i32 %.272, 2
  %i.dr = and i32 %i.dq, 4
  %i.ds = lshr i32 %i.dp, %i.dr
  %i.dt = and i32 %i.ds, 4095
  br label %modified_fat_get.exit

modified_fat_get.exit:                            ; preds = %bb.x, %bb.z, %bb.aa, %bb.ab
  %.0.i = phi i32 [ %i.da, %bb.x ], [ %i.dt, %bb.ab ], [ %i.df, %bb.z ], [ %i.dj, %bb.aa ]
  %.not54 = icmp eq i32 %.0.i, 0
  %.pre84 = load ptr, ptr %i.v, align 8           ; 2 uses
  br i1 %.not54, label %modified_fat_get.exit._crit_edge, label %modified_fat_get.exit.thread

modified_fat_get.exit._crit_edge:                 ; preds = %modified_fat_get.exit
  %.pre82 = sext i32 %.272 to i64
  %.phi.trans.insert = getelementptr inbounds i8, ptr %.pre84, i64 %.pre82
  %.pre85 = load i8, ptr %.phi.trans.insert, align 1
  br label %bb.ad

modified_fat_get.exit.thread:                     ; preds = %.modified_fat_get.exit.thread_crit_edge, %modified_fat_get.exit
  %i.du = phi ptr [ %.pre83, %.modified_fat_get.exit.thread_crit_edge ], [ %.pre84, %modified_fat_get.exit ]
  %i.dv = sext i32 %.272 to i64
  %i.dw = getelementptr inbounds i8, ptr %i.du, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1             ; 2 uses
  %.not55 = icmp eq i8 %i.dx, 0
  br i1 %.not55, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %modified_fat_get.exit.thread
  %i.dy = add i32 %.04775, 1
  br label %bb.ad

bb.ad:                                            ; preds = %modified_fat_get.exit._crit_edge, %bb.ac
  %i.dz = phi i8 [ %.pre85, %modified_fat_get.exit._crit_edge ], [ %i.dx, %bb.ac ]
  %.1 = phi i32 [ %.04775, %modified_fat_get.exit._crit_edge ], [ %i.dy, %bb.ac ] ; 2 uses
  %i.ea = icmp eq i8 %i.dz, 4
  br i1 %i.ea, label %.loopexit, label %bb.u

._crit_edge78:                                    ; preds = %bb.u, %bb.t
  %.047.lcssa = phi i32 [ %i.cm, %bb.t ], [ %.1, %bb.u ]
  %.not53 = icmp eq i32 %.047.lcssa, %i.cj
  %. = select i1 %.not53, i32 %i.cj, i32 0
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ad, %modified_fat_get.exit.thread, %._crit_edge78, %.loopexit62, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ 0, %.loopexit62 ], [ %., %._crit_edge78 ], [ 0, %modified_fat_get.exit.thread ], [ 0, %bb.ad ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @do_commit(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 33044 ; 8 uses
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.bx, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32968 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %vvfat_close_current_file.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32960 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %.not6.i = icmp eq i32 %i.g, 0
  br i1 %.not6.i, label %vvfat_close_current_file.exit.thread, label %vvfat_close_current_file.exit

vvfat_close_current_file.exit.thread:             ; preds = %bb.b, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32992
  store i32 -1, ptr %i.h, align 8
  br label %.lr.ph207.i

vvfat_close_current_file.exit:                    ; preds = %bb.c
  %i.i = tail call i32 @qemu_close(i32 noundef %i.g) #22 ; 0 uses
  store i32 0, ptr %i.f, align 8
  %.pre = load i32, ptr %i.a, align 4             ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32992
  store i32 -1, ptr %i.j, align 8
  %.not217.i = icmp eq i32 %.pre, 0
  br i1 %.not217.i, label %handle_renames_and_mkdirs.exit, label %.lr.ph207.i

.lr.ph207.i:                                      ; preds = %vvfat_close_current_file.exit.thread, %vvfat_close_current_file.exit
  %i.k = phi i32 [ %i.b, %vvfat_close_current_file.exit.thread ], [ %.pre, %vvfat_close_current_file.exit ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 33032 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 33048 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32868 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32924 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32892 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32880 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32896 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32856
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32872
  %i.u = getelementptr i8, ptr %0, i64 32948      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32824
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32844 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32832 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32848 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.ba, %.lr.ph207.i
  %i.z = phi i32 [ %i.k, %.lr.ph207.i ], [ %i.hu, %bb.ba ] ; 2 uses
  %.0111205.i = phi i32 [ 0, %.lr.ph207.i ], [ %.1112.i, %bb.ba ] ; 13 uses
  %1 = icmp ult i32 %.0111205.i, %i.z
  br i1 %1, label %3, label %2

2:                                                ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.14, i32 noundef 105, ptr noundef nonnull @__PRETTY_FUNCTION__.array_get) #24
  unreachable

3:                                                ; preds = %bb.d
  %4 = load ptr, ptr %i.l, align 8                ; 2 uses
  %.not.i.i = icmp eq ptr %4, null
  br i1 %.not.i.i, label %bb.e, label %array_get.exit.i

bb.e:                                             ; preds = %3
  tail call void @__assert_fail(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.14, i32 noundef 106, ptr noundef nonnull @__PRETTY_FUNCTION__.array_get) #24
  unreachable

array_get.exit.i:                                 ; preds = %3
  %i.aa = load i32, ptr %i.m, align 8
  %i.ab = mul i32 %i.aa, %.0111205.i
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 %i.ac ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load i32, ptr %i.ae, align 8
  switch i32 %i.af, label %bb.az [
    i32 0, label %bb.f
    i32 3, label %bb.am
  ]

bb.f:                                             ; preds = %array_get.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ah = load i32, ptr %i.ag, align 8            ; 3 uses
  %i.ai = load i32, ptr %i.p, align 4
  %i.aj = tail call fastcc i32 @find_mapping_for_cluster_aux(ptr noundef nonnull readonly %0, i32 noundef %i.ah, i32 noundef %i.ai) ; 2 uses
  %i.ak = load i32, ptr %i.p, align 4
  %.not.i143.i = icmp ult i32 %i.aj, %i.ak
  br i1 %.not.i143.i, label %bb.g, label %.loopexit40

bb.g:                                             ; preds = %bb.f
  %i.al = load ptr, ptr %i.q, align 8             ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i, label %bb.h, label %array_get.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.14, i32 noundef 106, ptr noundef nonnull @__PRETTY_FUNCTION__.array_get) #24
  unreachable

array_get.exit.i.i:                               ; preds = %bb.g
  %i.am = load i32, ptr %i.r, align 8
  %i.an = mul i32 %i.am, %i.aj
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ao ; 6 uses
  %i.aq = load i32, ptr %i.ap, align 8
  %i.ar = icmp ugt i32 %i.aq, %i.ah
  br i1 %i.ar, label %.loopexit40, label %bb.i

bb.i:                                             ; preds = %array_get.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.at = load i32, ptr %i.as, align 4
  %i.au = icmp ugt i32 %i.at, %i.ah
  br i1 %i.au, label %find_mapping_for_cluster.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.14, i32 noundef 1354, ptr noundef nonnull @__PRETTY_FUNCTION__.find_mapping_for_cluster) #24
  unreachable

find_mapping_for_cluster.exit.i:                  ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 24 ; 4 uses
  %i.aw = load ptr, ptr %i.av, align 8            ; 3 uses
  %i.ax = load ptr, ptr %i.ad, align 8            ; 3 uses
  %.not130.i = icmp eq ptr %i.ax, null
  br i1 %.not130.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %find_mapping_for_cluster.exit.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.14, i32 noundef 2680, ptr noundef nonnull @__PRETTY_FUNCTION__.handle_renames_and_mkdirs) #24
  unreachable

bb.l:                                             ; preds = %find_mapping_for_cluster.exit.i
  store ptr %i.ax, ptr %i.av, align 8
  %i.ay = tail call i32 @rename(ptr noundef %i.aw, ptr noundef nonnull %i.ax) #22
  %.not131.i = icmp eq i32 %i.ay, 0
  br i1 %.not131.i, label %bb.m, label %.loopexit40

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ba = load i32, ptr %i.az, align 8
  %i.bb = and i32 %i.ba, 4
  %.not132.i = icmp eq i32 %i.bb, 0
  br i1 %.not132.i, label %.thread181.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = load ptr, ptr %i.av, align 8
  %i.bd = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bc) #23 ; 2 uses
  %i.be = trunc i64 %i.bd to i32                  ; 2 uses
  %i.bf = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aw) #23 ; 2 uses
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ap, i64 20
  %i.bi = load i32, ptr %i.bh, align 4            ; 2 uses
  %i.bj = load i32, ptr %i.n, align 4
  %i.bk = icmp ult i32 %i.bi, %i.bj
  br i1 %i.bk, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @__assert_fail(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.14, i32 noundef 105, ptr noundef nonnull @__PRETTY_FUNCTION__.array_get) #24
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bl = load ptr, ptr %i.s, align 8             ; 2 uses
  %.not.i144.i = icmp eq ptr %i.bl, null
  br i1 %.not.i144.i, label %bb.q, label %array_get.exit145.i

bb.q:                                             ; preds = %bb.p
  tail call void @__assert_fail(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.14, i32 noundef 106, ptr noundef nonnull @__PRETTY_FUNCTION__.array_get) #24
  unreachable

array_get.exit145.i:                              ; preds = %bb.p
  %i.bm = load i32, ptr %i.t, align 8
  %i.bn = mul i32 %i.bm, %i.bi
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bo
  %i.bq = load i32, ptr %i.ap, align 8            ; 2 uses
  %.val142201.i = load i32, ptr %i.u, align 4
  %i.br = add i32 %.val142201.i, -8
  %.not190202.i = icmp ugt i32 %i.bq, %i.br
  br i1 %.not190202.i, label %.thread181.i, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %array_get.exit145.i
  %i.bs = add i32 %i.be, 1
  %i.bt = sub i32 %i.bs, %i.bg
  %sext.i = shl i64 %i.bf, 32
  %i.bu = ashr exact i64 %sext.i, 32              ; 2 uses
  %sext138.i = shl i64 %i.bd, 32
  %i.bv = ashr exact i64 %sext138.i, 32
  br label %.preheader.i

.preheader.i:                                     ; preds = %fat_get.exit.i, %.preheader.lr.ph.i
  %.0106204.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %i.dn, %fat_get.exit.i ]
  %.0107203.i = phi i32 [ %i.bq, %.preheader.lr.ph.i ], [ %.0.i156.i, %fat_get.exit.i ] ; 6 uses
  br label %bb.r

bb.r:                                             ; preds = %is_directory.exit.thread.i, %.preheader.i
  %.1.i = phi i32 [ %i.dn, %is_directory.exit.thread.i ], [ %.0106204.i, %.preheader.i ] ; 2 uses
  %i.bw = sext i32 %.1.i to i64
  %i.bx = getelementptr inbounds [32 x i8], ptr %i.bp, i64 %i.bw ; 5 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 11
  %.val.i.i.i = load i8, ptr %i.by, align 1       ; 3 uses
  switch i8 %.val.i.i.i, label %is_short_name.exit.i.i [
    i8 40, label %is_file.exit.thread.i
    i8 15, label %is_file.exit.thread.i
  ]

is_short_name.exit.i.i:                           ; preds = %bb.r
  %.val6.i.i.i = load i8, ptr %i.bx, align 1      ; 2 uses
  switch i8 %.val6.i.i.i, label %bb.s [
    i8 -27, label %is_file.exit.thread.i
    i8 0, label %is_file.exit.thread.i
  ]

bb.s:                                             ; preds = %is_short_name.exit.i.i
  %i.bz = and i8 %.val.i.i.i, 16
  %.not.i.i146.i = icmp eq i8 %i.bz, 0
  %.not191.i = icmp eq i8 %.val6.i.i.i, -27
  %or.cond194.i = or i1 %.not.i.i146.i, %.not191.i
  br i1 %or.cond194.i, label %is_file.exit.thread166.i, label %is_file.exit.thread.i

is_file.exit.thread.i:                            ; preds = %bb.s, %is_short_name.exit.i.i, %is_short_name.exit.i.i, %bb.r, %bb.r
  %i.ca = and i8 %.val.i.i.i, 16
  %.not.i147.i = icmp eq i8 %i.ca, 0
  br i1 %.not.i147.i, label %is_directory.exit.thread.i, label %is_directory.exit.i

is_directory.exit.i:                              ; preds = %is_file.exit.thread.i
  %i.cb = load i8, ptr %i.bx, align 1
  switch i8 %i.cb, label %is_file.exit.thread166.i [
    i8 -27, label %is_directory.exit.thread.i
    i8 46, label %is_directory.exit.thread.i
  ]

is_file.exit.thread166.i:                         ; preds = %is_directory.exit.i, %bb.s
  %i.cc = getelementptr i8, ptr %i.bx, i64 20
  %.val.i = load i16, ptr %i.cc, align 1
  %i.cd = getelementptr i8, ptr %i.bx, i64 26
  %.val141.i = load i16, ptr %i.cd, align 1
  %i.ce = zext i16 %.val141.i to i32
  %i.cf = zext i16 %.val.i to i32
  %i.cg = shl nuw i32 %i.cf, 16
  %i.ch = or disjoint i32 %i.cg, %i.ce            ; 3 uses
  %i.ci = load i32, ptr %i.p, align 4
  %i.cj = tail call fastcc i32 @find_mapping_for_cluster_aux(ptr noundef nonnull readonly %0, i32 noundef %i.ch, i32 noundef %i.ci) ; 2 uses
  %i.ck = load i32, ptr %i.p, align 4
  %.not.i151.i = icmp ult i32 %i.cj, %i.ck
  br i1 %.not.i151.i, label %bb.t, label %.loopexit40

bb.t:                                             ; preds = %is_file.exit.thread166.i
  %i.cl = load ptr, ptr %i.q, align 8             ; 2 uses
  %.not.i.i153.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i153.i, label %bb.u, label %array_get.exit.i154.i

bb.u:                                             ; preds = %bb.t
  tail call void @__assert_fail(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.14, i32 noundef 106, ptr noundef nonnull @__PRETTY_FUNCTION__.array_get) #24
  unreachable

array_get.exit.i154.i:                            ; preds = %bb.t
  %i.cm = load i32, ptr %i.r, align 8
  %i.cn = mul i32 %i.cm, %i.cj
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.co ; 4 uses
  %i.cq = load i32, ptr %i.cp, align 8
  %i.cr = icmp ugt i32 %i.cq, %i.ch
  br i1 %i.cr, label %.loopexit40, label %bb.v

bb.v:                                             ; preds = %array_get.exit.i154.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.ct = load i32, ptr %i.cs, align 4
  %i.cu = icmp ugt i32 %i.ct, %i.ch
  br i1 %i.cu, label %find_mapping_for_cluster.exit155.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @__assert_fail(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.14, i32 noundef 1354, ptr noundef nonnull @__PRETTY_FUNCTION__.find_mapping_for_cluster) #24
  unreachable

find_mapping_for_cluster.exit155.i:               ; preds = %bb.v
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cp, i64 24 ; 3 uses
end_hunk_0
