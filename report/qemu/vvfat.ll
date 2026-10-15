Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/vvfat?download=true
inline.NumInlined: 261
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@handle_commits:bb.a

find_mapping_for_cluster.exit86:                  ; preds = %bb.s, %array_get.exit.i85, %bb.v
  %.0.i83 = phi ptr [ null, %array_get.exit.i85 ], [ null, %bb.s ], [ %i.bp, %bb.v ] ; 4 uses
  %i.bv = load i32, ptr %i.m, align 4             ; 3 uses
  %.not137 = icmp eq i32 %i.bv, 0
  br i1 %.not137, label %.loopexit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %find_mapping_for_cluster.exit86
  %i.bw = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not.i87 = icmp eq ptr %i.bw, null
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph, %is_file.exit.thread
  %.055134 = phi i32 [ 0, %.lr.ph ], [ %i.ck, %is_file.exit.thread ] ; 4 uses
  %exitcond.not = icmp eq i32 %.055134, %i.bv
  br i1 %exitcond.not, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void @__assert_fail(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.14, i32 noundef 105, ptr noundef nonnull @__PRETTY_FUNCTION__.array_get) #24
  unreachable

bb.z:                                             ; preds = %bb.x
  br i1 %.not.i87, label %bb.aa, label %array_get.exit88

bb.aa:                                            ; preds = %bb.z
  tail call void @__assert_fail(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.14, i32 noundef 106, ptr noundef nonnull @__PRETTY_FUNCTION__.array_get) #24
  unreachable

array_get.exit88:                                 ; preds = %bb.z
  %i.bx = load i32, ptr %i.o, align 8
  %i.by = mul i32 %i.bx, %.055134
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bz ; 4 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 11
  %.val.i.i = load i8, ptr %i.cb, align 1         ; 2 uses
  switch i8 %.val.i.i, label %is_short_name.exit.i [
    i8 40, label %is_file.exit.thread
    i8 15, label %is_file.exit.thread
  ]

is_short_name.exit.i:                             ; preds = %array_get.exit88
  %.val6.i.i = load i8, ptr %i.ca, align 1        ; 2 uses
  switch i8 %.val6.i.i, label %bb.ab [
    i8 -27, label %is_file.exit.thread
    i8 0, label %is_file.exit.thread
  ]

bb.ab:                                            ; preds = %is_short_name.exit.i
  %i.cc = and i8 %.val.i.i, 16
  %.not.i.i89 = icmp eq i8 %i.cc, 0
  %.not98 = icmp eq i8 %.val6.i.i, -27
  %or.cond = or i1 %.not.i.i89, %.not98
  br i1 %or.cond, label %is_file.exit.thread94, label %is_file.exit.thread

is_file.exit.thread94:                            ; preds = %bb.ab
  %i.cd = getelementptr i8, ptr %i.ca, i64 20
  %.val = load i16, ptr %i.cd, align 1
  %i.ce = getelementptr i8, ptr %i.ca, i64 26
  %.val75 = load i16, ptr %i.ce, align 1
  %i.cf = zext i16 %.val75 to i32
  %i.cg = zext i16 %.val to i32
  %i.ch = shl nuw i32 %i.cg, 16
  %i.ci = or disjoint i32 %i.ch, %i.cf
  %i.cj = icmp eq i32 %i.ci, %i.bh
  br i1 %i.cj, label %bb.ac, label %is_file.exit.thread

is_file.exit.thread:                              ; preds = %bb.ab, %array_get.exit88, %array_get.exit88, %is_short_name.exit.i, %is_short_name.exit.i, %is_file.exit.thread94
  %i.ck = add nuw i32 %.055134, 1                 ; 2 uses
  %exitcond141.not = icmp eq i32 %i.ck, %i.bv
  br i1 %exitcond141.not, label %.loopexit.thread, label %bb.x, !llvm.loop !56

bb.ac:                                            ; preds = %is_file.exit.thread94
  %.not68 = icmp eq ptr %.0.i83, null
  br i1 %.not68, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cl = load i32, ptr %.0.i83, align 8
  %.not69 = icmp eq i32 %i.cl, %i.bh
  br i1 %.not69, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i83, i64 4
  store i32 %i.bh, ptr %i.cm, align 4
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ac
  %i.cn = add i32 %i.bh, 1
  %i.co = tail call fastcc ptr @insert_mapping(ptr noundef nonnull %0, i32 noundef %i.bh, i32 noundef %i.cn)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ad, %bb.af
  %.1 = phi ptr [ %i.co, %bb.af ], [ %.0.i83, %bb.ad ] ; 4 uses
  %i.cp = load ptr, ptr %i.u, align 8             ; 2 uses
  %.not70 = icmp eq ptr %i.cp, null
  br i1 %.not70, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  tail call void @__assert_fail(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.14, i32 noundef 2829, ptr noundef nonnull @__PRETTY_FUNCTION__.handle_commits) #24
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.cq = getelementptr inbounds nuw i8, ptr %.1, i64 24
  store ptr %i.cp, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %.1, i64 36
  store i32 0, ptr %i.cr, align 4
  %i.cs = getelementptr inbounds nuw i8, ptr %.1, i64 32
  store i32 1, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %.1, i64 16
  store i32 0, ptr %i.ct, align 8
  %i.cu = tail call i32 @commit_one_file(ptr noundef nonnull %0, i32 noundef %.055134, i32 noundef 0)
  %.not71 = icmp eq i32 %i.cu, 0
  br i1 %.not71, label %.loopexit, label %.loopexit.thread

bb.aj:                                            ; preds = %array_get.exit
  tail call void @abort() #24
  unreachable

.loopexit.thread:                                 ; preds = %bb.r, %bb.ai, %find_mapping_for_cluster.exit86, %is_file.exit.thread
  %.5.ph = phi i32 [ -6, %is_file.exit.thread ], [ -7, %bb.ai ], [ -6, %find_mapping_for_cluster.exit86 ], [ -3, %bb.r ]
  %i.cv = add i32 %.059135205, 1
  br label %.critedge

.loopexit:                                        ; preds = %bb.ai, %bb.r
  %i.cw = add i32 %.059135205, 1                  ; 3 uses
  %i.cx = load i32, ptr %i.g, align 4
  %i.cy = icmp ult i32 %i.cw, %i.cx
  br i1 %i.cy, label %.lr.ph206, label %.critedge, !llvm.loop !57

.critedge:                                        ; preds = %.loopexit, %vvfat_close_current_file.exit, %.loopexit.thread
  %.059.lcssa = phi i32 [ %i.cv, %.loopexit.thread ], [ 0, %vvfat_close_current_file.exit ], [ %i.cw, %.loopexit ] ; 5 uses
  %.057.lcssa = phi i32 [ %.5.ph, %.loopexit.thread ], [ 0, %vvfat_close_current_file.exit ], [ 0, %.loopexit ]
  %i.cz = icmp sgt i32 %.059.lcssa, 0
  br i1 %i.cz, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %.critedge
  %i.da = load i32, ptr %i.g, align 4             ; 2 uses
  %.not.i90 = icmp ugt i32 %.059.lcssa, %i.da
  br i1 %.not.i90, label %bb.al, label %array_remove_slice.exit

bb.al:                                            ; preds = %bb.ak
  tail call void @__assert_fail(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.14, i32 noundef 149, ptr noundef nonnull @__PRETTY_FUNCTION__.array_remove_slice) #24
  unreachable

array_remove_slice.exit:                          ; preds = %bb.ak
  %i.db = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.dc = load i32, ptr %i.i, align 8             ; 2 uses
  %i.dd = mul i32 %i.dc, %.059.lcssa
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.de
  %i.dg = sub nuw i32 %i.da, %.059.lcssa
  %i.dh = mul i32 %i.dc, %i.dg
  %i.di = zext i32 %i.dh to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.db, ptr noundef nonnull align 1 %i.df, i64 noundef range(i64 0, 4294967296) %i.di, i1 noundef false) #22
  %i.dj = load i32, ptr %i.g, align 4
  %i.dk = sub i32 %i.dj, %.059.lcssa
  store i32 %i.dk, ptr %i.g, align 4
  br label %bb.am

bb.am:                                            ; preds = %.critedge, %array_remove_slice.exit
  ret i32 %.057.lcssa
}

declare i32 @bdrv_make_empty(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @rename(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @mkdir(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @insert_mapping(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32880 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32892 ; 9 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = tail call fastcc i32 @find_mapping_for_cluster_aux(ptr noundef %0, i32 noundef %1, i32 noundef %i.c) ; 5 uses
  %i.e = load i32, ptr %i.b, align 4              ; 4 uses
  %.not53 = icmp eq i32 %i.e, 0
  br i1 %.not53, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.14, i32 noundef 105, ptr noundef nonnull @__PRETTY_FUNCTION__.array_get) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8              ; 6 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.d, label %array_get.exit

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.14, i32 noundef 106, ptr noundef nonnull @__PRETTY_FUNCTION__.array_get) #24
  unreachable

array_get.exit:                                   ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32896 ; 7 uses
  %i.h = icmp ult i32 %i.d, %i.e
  br i1 %i.h, label %array_get.exit46, label %bb.i

array_get.exit46:                                 ; preds = %array_get.exit
  %i.i = load i32, ptr %i.g, align 8
  %i.j = mul i32 %i.i, %i.d
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.k ; 3 uses
  %i.m = load i32, ptr %i.l, align 8
  %i.n = icmp ult i32 %i.m, %1
  br i1 %i.n, label %bb.e, label %bb.i

bb.e:                                             ; preds = %array_get.exit46
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 %1, ptr %i.o, align 4
  %i.p = add nuw i32 %i.d, 1                      ; 3 uses
  %i.q = load i32, ptr %i.b, align 4              ; 2 uses
  %i.r = icmp ult i32 %i.p, %i.q
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.14, i32 noundef 105, ptr noundef nonnull @__PRETTY_FUNCTION__.array_get) #24
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i47 = icmp eq ptr %i.s, null
  br i1 %.not.i47, label %bb.h, label %array_get.exit48

bb.h:                                             ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.14, i32 noundef 106, ptr noundef nonnull @__PRETTY_FUNCTION__.array_get) #24
  unreachable

array_get.exit48:                                 ; preds = %bb.g
  %i.t = load i32, ptr %i.g, align 8
  %i.u = mul i32 %i.t, %i.p
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.v
  br label %bb.i

bb.i:                                             ; preds = %array_get.exit48, %array_get.exit46, %array_get.exit
  %.pre.i = phi ptr [ %i.s, %array_get.exit48 ], [ %i.f, %array_get.exit46 ], [ %i.f, %array_get.exit ] ; 2 uses
  %3 = phi i32 [ %i.q, %array_get.exit48 ], [ %i.e, %array_get.exit46 ], [ %i.e, %array_get.exit ] ; 3 uses
  %.035 = phi i32 [ %i.p, %array_get.exit48 ], [ %i.d, %array_get.exit46 ], [ %i.d, %array_get.exit ] ; 7 uses
  %.0 = phi ptr [ %i.w, %array_get.exit48 ], [ %i.l, %array_get.exit46 ], [ null, %array_get.exit ] ; 2 uses
  %.not = icmp ult i32 %.035, %3
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.x = load i32, ptr %.0, align 8
  %i.y = icmp ugt i32 %i.x, %1
  br i1 %i.y, label %bb.k, label %adjust_mapping_indices.exit

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.z = add i32 %3, 1
  %i.aa = load i32, ptr %i.g, align 8             ; 4 uses
  %i.ab = mul i32 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32888 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8            ; 2 uses
  %i.ae = icmp ugt i32 %i.ab, %i.ad
  br i1 %i.ae, label %.thread.i, label %array_insert.exit

.thread.i:                                        ; preds = %bb.k
  %i.af = add i32 %i.ad, %i.aa
  %i.ag = zext i32 %i.af to i64
  %i.ah = tail call ptr @g_realloc(ptr noundef nonnull %.pre.i, i64 noundef %i.ag) #22 ; 3 uses
  store ptr %i.ah, ptr %i.a, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah) ]
  %i.ai = load i32, ptr %i.ac, align 8
  %i.aj = add i32 %i.ai, %i.aa
  store i32 %i.aj, ptr %i.ac, align 8
  %.pre31.i = load i32, ptr %i.g, align 8
  %.pre32.i = load i32, ptr %i.b, align 4
  br label %array_insert.exit

array_insert.exit:                                ; preds = %.thread.i, %bb.k
  %i.ak = phi i32 [ %.pre32.i, %.thread.i ], [ %3, %bb.k ]
  %i.al = phi i32 [ %.pre31.i, %.thread.i ], [ %i.aa, %bb.k ] ; 3 uses
  %i.am = phi ptr [ %i.ah, %.thread.i ], [ %.pre.i, %bb.k ] ; 2 uses
  %i.an = add i32 %.035, 1
  %i.ao = mul i32 %i.al, %i.an
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ap
  %i.ar = mul i32 %i.al, %.035
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.as
  %i.au = sub i32 %i.ak, %.035
  %i.av = mul i32 %i.au, %i.al
  %i.aw = zext i32 %i.av to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.aq, ptr noundef nonnull align 1 %i.at, i64 noundef range(i64 0, 4294967296) %i.aw, i1 noundef false) #22
  %i.ax = load i32, ptr %i.b, align 4
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.b, align 4
  %i.az = load ptr, ptr %i.a, align 8
  %i.ba = load i32, ptr %i.g, align 8
  %i.bb = mul i32 %i.ba, %.035
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bc ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store ptr null, ptr %i.be, align 8
  %i.bf = load i32, ptr %i.b, align 4
  %.not18.i = icmp eq i32 %i.bf, 0
  br i1 %.not18.i, label %adjust_mapping_indices.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %array_insert.exit, %bb.q
  %.017.i = phi i32 [ %i.bu, %bb.q ], [ 0, %array_insert.exit ] ; 2 uses
  %i.bg = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i, label %bb.l, label %array_get.exit.i

bb.l:                                             ; preds = %.lr.ph.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.14, i32 noundef 106, ptr noundef nonnull @__PRETTY_FUNCTION__.array_get) #24
  unreachable

array_get.exit.i:                                 ; preds = %.lr.ph.i
  %i.bh = load i32, ptr %i.g, align 8
  %i.bi = mul i32 %i.bh, %.017.i
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bj ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 12 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4            ; 2 uses
  %.not.i50 = icmp slt i32 %i.bm, %.035
  br i1 %.not.i50, label %bb.n, label %bb.m

bb.m:                                             ; preds = %array_get.exit.i
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bl, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %array_get.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bp = load i32, ptr %i.bo, align 8
  %i.bq = and i32 %i.bp, 4
  %.not15.i = icmp eq i32 %i.bq, 0
  br i1 %.not15.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8            ; 2 uses
  %.not16.i = icmp slt i32 %i.bs, %.035
  br i1 %.not16.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = add i32 %i.bs, 1
  store i32 %i.bt, ptr %i.br, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.bu = add nuw i32 %.017.i, 1                  ; 2 uses
  %i.bv = load i32, ptr %i.b, align 4
  %i.bw = icmp ult i32 %i.bu, %i.bv
  br i1 %i.bw, label %.lr.ph.i, label %adjust_mapping_indices.exit, !llvm.loop !1

adjust_mapping_indices.exit:                      ; preds = %bb.q, %array_insert.exit, %bb.j
  %.1 = phi ptr [ %.0, %bb.j ], [ %i.bd, %array_insert.exit ], [ %i.bd, %bb.q ] ; 3 uses
  store i32 %1, ptr %.1, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %.1, i64 4
  store i32 %2, ptr %i.bx, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 32968 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8            ; 2 uses
  %.not43 = icmp eq ptr %i.bz, null
  br i1 %.not43, label %bb.w, label %bb.r

bb.r:                                             ; preds = %adjust_mapping_indices.exit
  %i.ca = load ptr, ptr %i.a, align 8             ; 3 uses
  %.not44 = icmp eq ptr %i.f, %i.ca
  br i1 %.not44, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = ptrtoint ptr %i.f to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = sdiv exact i64 %i.cd, 40
  %i.cf = trunc i64 %i.ce to i32                  ; 2 uses
  %i.cg = load i32, ptr %i.b, align 4
  %i.ch = icmp ugt i32 %i.cg, %i.cf
  br i1 %i.ch, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @__assert_fail(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.14, i32 noundef 105, ptr noundef nonnull @__PRETTY_FUNCTION__.array_get) #24
  unreachable

bb.u:                                             ; preds = %bb.s
  %.not.i51 = icmp eq ptr %i.ca, null
  br i1 %.not.i51, label %bb.v, label %array_get.exit52

bb.v:                                             ; preds = %bb.u
  tail call void @__assert_fail(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.14, i32 noundef 106, ptr noundef nonnull @__PRETTY_FUNCTION__.array_get) #24
  unreachable

array_get.exit52:                                 ; preds = %bb.u
  %i.ci = load i32, ptr %i.g, align 8
  %i.cj = mul i32 %i.ci, %i.cf
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.ck
  store ptr %i.cl, ptr %i.by, align 8
  br label %bb.w

bb.w:                                             ; preds = %array_get.exit52, %bb.r, %adjust_mapping_indices.exit
  ret ptr %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @insert_direntries(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32856 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32868 ; 4 uses
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = add i32 %i.c, %2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32872 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8              ; 3 uses
  %i.g = mul i32 %i.d, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32864 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp ugt i32 %i.g, %i.i
  %.pre.i = load ptr, ptr %i.a, align 8           ; 2 uses
  br i1 %i.j, label %bb.b, label %array_insert.exit

bb.b:                                             ; preds = %bb.a
  %i.k = mul i32 %i.f, %2                         ; 2 uses
  %i.l = add i32 %i.i, %i.k
  %i.m = zext i32 %i.l to i64
  %i.n = tail call ptr @g_realloc(ptr noundef %.pre.i, i64 noundef %i.m) #22 ; 3 uses
  store ptr %i.n, ptr %i.a, align 8
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %adjust_dirindices.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.b
  %i.o = load i32, ptr %i.h, align 8
  %i.p = add i32 %i.o, %i.k
  store i32 %i.p, ptr %i.h, align 8
  %.pre31.i = load i32, ptr %i.e, align 8
  %.pre32.i = load i32, ptr %i.b, align 4
  br label %array_insert.exit

array_insert.exit:                                ; preds = %bb.a, %.thread.i
  %i.q = phi i32 [ %.pre32.i, %.thread.i ], [ %i.c, %bb.a ]
  %i.r = phi i32 [ %.pre31.i, %.thread.i ], [ %i.f, %bb.a ] ; 3 uses
  %i.s = phi ptr [ %i.n, %.thread.i ], [ %.pre.i, %bb.a ] ; 2 uses
  %i.t = add i32 %2, %1
  %i.u = mul i32 %i.r, %i.t
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.v
  %i.x = mul i32 %i.r, %1
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.y
  %i.aa = sub i32 %i.q, %1
  %i.ab = mul i32 %i.aa, %i.r
  %i.ac = zext i32 %i.ab to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.w, ptr noundef nonnull align 1 %i.z, i64 noundef range(i64 0, 4294967296) %i.ac, i1 noundef false) #22
  %i.ad = load i32, ptr %i.b, align 4
  %i.ae = add i32 %i.ad, %2
  store i32 %i.ae, ptr %i.b, align 4
  %i.af = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ag = load i32, ptr %i.e, align 8
  %i.ah = mul i32 %i.ag, %1
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ai ; 2 uses
  %i.ak = icmp eq ptr %i.af, null
  br i1 %i.ak, label %adjust_dirindices.exit, label %bb.c

bb.c:                                             ; preds = %array_insert.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32892 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4
  %.not18.i = icmp eq i32 %i.am, 0
  br i1 %.not18.i, label %adjust_dirindices.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32880
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32896
  br label %bb.d

bb.d:                                             ; preds = %bb.j, %.lr.ph.i
  %.017.i = phi i32 [ 0, %.lr.ph.i ], [ %i.bd, %bb.j ] ; 2 uses
  %i.ap = load ptr, ptr %i.an, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %bb.e, label %array_get.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.14, i32 noundef 106, ptr noundef nonnull @__PRETTY_FUNCTION__.array_get) #24
  unreachable

array_get.exit.i:                                 ; preds = %bb.d
  %i.aq = load i32, ptr %i.ao, align 8
  %i.ar = mul i32 %i.aq, %.017.i
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.as ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8            ; 2 uses
  %.not.i9 = icmp ult i32 %i.av, %1
  br i1 %.not.i9, label %bb.g, label %bb.f

bb.f:                                             ; preds = %array_get.exit.i
  %i.aw = add i32 %i.av, %2
  store i32 %i.aw, ptr %i.au, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %array_get.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.ay = load i32, ptr %i.ax, align 8
  %i.az = and i32 %i.ay, 4
  %.not15.i = icmp eq i32 %i.az, 0
  br i1 %.not15.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 20 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4            ; 2 uses
  %.not16.i = icmp slt i32 %i.bb, %1
  br i1 %.not16.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = add i32 %i.bb, %2
  store i32 %i.bc, ptr %i.ba, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.bd = add nuw i32 %.017.i, 1                  ; 2 uses
  %i.be = load i32, ptr %i.al, align 4
  %i.bf = icmp ult i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.d, label %adjust_dirindices.exit, !llvm.loop !2

adjust_dirindices.exit:                           ; preds = %bb.j, %bb.b, %bb.c, %array_insert.exit
  %.0 = phi ptr [ null, %bb.b ], [ null, %array_insert.exit ], [ %i.aj, %bb.c ], [ %i.aj, %bb.j ]
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @remove_direntries(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32856
  %i.b = icmp sgt i32 %1, -1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.14, i32 noundef 147, ptr noundef nonnull @__PRETTY_FUNCTION__.array_remove_slice) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %bb.e, label %bb.d
end_hunk_0
