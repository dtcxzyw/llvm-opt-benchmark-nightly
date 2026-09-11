Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/topology_torus3d?download=true
inline.NumInlined: 20
inline.NumDeleted: 7
begin_hunk_0_@topology_p_topoinfo_unpack:bb.a
  %i.bg = load ptr, ptr %i.bc, align 8
  %i.bh = getelementptr inbounds nuw [40 x i8], ptr %i.bg, i64 %indvars.iv.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  call void @slurm_xfree(ptr noundef nonnull %i.bi) #11
  %i.bj = load ptr, ptr %i.bc, align 8
  %i.bk = getelementptr inbounds nuw [40 x i8], ptr %i.bj, i64 %indvars.iv.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  call void @slurm_xfree(ptr noundef nonnull %i.bl) #11
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bm = load i32, ptr %i.d, align 8
  %i.bn = zext i32 %i.bm to i64
  %i.bo = icmp samesign ult i64 %indvars.iv.next.i, %i.bn
  br i1 %i.bo, label %bb.t, label %._crit_edge.i, !llvm.loop !2

topology_p_topoinfo_free.exit:                    ; preds = %.thread98, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  store ptr null, ptr %0, align 8
  br label %.thread101

.thread101:                                       ; preds = %.thread95, %.thread, %bb.e, %topology_p_topoinfo_free.exit
  %.069 = phi i32 [ -1, %topology_p_topoinfo_free.exit ], [ 0, %bb.e ], [ 0, %.thread ], [ 0, %.thread95 ]
  ret i32 %.069
}

declare i32 @slurm_unpack32(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @slurm_unpackstr_xmalloc_chooser(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @slurm_unpack16(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @topology_p_jobinfo_free(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @topology_p_jobinfo_pack(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, i16 noundef zeroext %2) local_unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @topology_p_jobinfo_unpack(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, i16 noundef zeroext %2) local_unnamed_addr #2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @topology_p_jobinfo_get(i32 noundef %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #2 {
bb.a:
  ret i32 2036
}

; Function Attrs: nounwind uwtable
define dso_local i32 @topology_p_get_fragmentation(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph37, label %.loopexit

.lr.ph37:                                         ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph37, %._crit_edge33
  %i.e = phi i32 [ %i.b, %.lr.ph37 ], [ %i.l, %._crit_edge33 ]
  %indvars.iv43 = phi i64 [ 0, %.lr.ph37 ], [ %indvars.iv.next44, %._crit_edge33 ] ; 2 uses
  %.02335 = phi i32 [ 0, %.lr.ph37 ], [ %.1.lcssa, %._crit_edge33 ] ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw [56 x i8], ptr %i.f, i64 %indvars.iv43 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph32, label %._crit_edge33

.lr.ph32:                                         ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  br label %bb.c

._crit_edge33.loopexit:                           ; preds = %._crit_edge
  %.pre46 = load i32, ptr %i.a, align 8
  br label %._crit_edge33

._crit_edge33:                                    ; preds = %._crit_edge33.loopexit, %bb.b
  %i.l = phi i32 [ %i.e, %bb.b ], [ %.pre46, %._crit_edge33.loopexit ] ; 2 uses
  %.1.lcssa = phi i32 [ %.02335, %bb.b ], [ %.2.lcssa, %._crit_edge33.loopexit ] ; 2 uses
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %i.m = sext i32 %i.l to i64
  %i.n = icmp slt i64 %indvars.iv.next44, %i.m
  br i1 %i.n, label %bb.b, label %.loopexit, !llvm.loop !37

bb.c:                                             ; preds = %.lr.ph32, %._crit_edge
  %i.o = phi i32 [ %i.i, %.lr.ph32 ], [ %i.v, %._crit_edge ]
  %indvars.iv40 = phi i64 [ 0, %.lr.ph32 ], [ %indvars.iv.next41, %._crit_edge ] ; 2 uses
  %.129 = phi i32 [ %.02335, %.lr.ph32 ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.p = load ptr, ptr %i.k, align 8
  %i.q = getelementptr inbounds nuw [80 x i8], ptr %i.p, i64 %indvars.iv40 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 44
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %bb.f
  %.pre = load i32, ptr %i.h, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.v = phi i32 [ %i.o, %bb.c ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %.2.lcssa = phi i32 [ %.129, %bb.c ], [ %.3, %._crit_edge.loopexit ] ; 2 uses
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %i.w = sext i32 %i.v to i64
  %i.x = icmp slt i64 %indvars.iv.next41, %i.w
  br i1 %i.x, label %bb.c, label %._crit_edge33.loopexit, !llvm.loop !38

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.227 = phi i32 [ %.129, %.lr.ph ], [ %.3, %bb.f ] ; 2 uses
  %i.y = load ptr, ptr %i.q, align 8
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call i32 @slurm_bit_super_set(ptr noundef %i.aa, ptr noundef %0) #11
  %.not26 = icmp eq i32 %i.ab, 0
  br i1 %.not26, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = load i32, ptr %i.u, align 4
  %i.ad = add i32 %i.ac, %.227
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.3 = phi i32 [ %.227, %bb.d ], [ %i.ad, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ae = load i32, ptr %i.r, align 8
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp slt i64 %indvars.iv.next, %i.af
  br i1 %i.ag, label %bb.d, label %._crit_edge.loopexit, !llvm.loop !39

.loopexit:                                        ; preds = %._crit_edge33, %.preheader, %bb.a
  %.024 = phi i32 [ 0, %bb.a ], [ 0, %.preheader ], [ %.1.lcssa, %._crit_edge33 ]
  ret i32 %.024
}

declare i32 @slurm_bit_super_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @topology_p_get_rank(ptr noundef %0, ptr nofree noundef captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i16, align 2                      ; 4 uses
  %i.e = alloca i16, align 2                      ; 4 uses
  %i.f = alloca i16, align 2                      ; 4 uses
  %i.g = alloca i16, align 2                      ; 5 uses
  %i.h = alloca i16, align 2                      ; 5 uses
  %i.i = alloca i16, align 2                      ; 5 uses
  %i.j = alloca i16, align 2                      ; 5 uses
  %i.k = alloca i16, align 2                      ; 5 uses
  %i.l = alloca i16, align 2                      ; 5 uses
  %i.m = alloca i32, align 4                      ; 9 uses
  %i.n = alloca i16, align 2                      ; 4 uses
  %i.o = alloca i16, align 2                      ; 4 uses
  %i.p = alloca i16, align 2                      ; 4 uses
  store ptr null, ptr %1, align 8
  store i32 0, ptr %2, align 4
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = tail call i32 @slurm_bit_set_count(ptr noundef nonnull %0) #11 ; 3 uses
  %.not47 = icmp eq i32 %i.q, 0
  br i1 %.not47, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = zext i32 %i.q to i64
  %i.s = tail call ptr @slurm_xcalloc(i64 noundef %i.r, i64 noundef 4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.11, i32 noundef 935, ptr noundef nonnull @__func__.topology_p_get_rank) #11
  store ptr %i.s, ptr %1, align 8
  store i32 %i.q, ptr %2, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph89, label %.loopexit

.lr.ph89:                                         ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph89, %bb.ac
  %indvars.iv = phi i64 [ 0, %.lr.ph89 ], [ %indvars.iv.next, %bb.ac ] ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw [56 x i8], ptr %i.x, i64 %indvars.iv ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #11
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = call i32 @slurm_bit_overlap_any(ptr noundef %i.aa, ptr noundef nonnull %0) #11
  %.not48 = icmp eq i32 %i.ab, 0
  br i1 %.not48, label %bb.ac, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.z, align 8
  %i.ad = call i32 @slurm_bit_super_set(ptr noundef %i.ac, ptr noundef nonnull %0) #11
  %.not49 = icmp eq i32 %i.ad, 0
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 48 ; 2 uses
  br i1 %.not49, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i16 0, ptr %i.g, align 2
  store i16 0, ptr %i.h, align 2
  store i16 0, ptr %i.i, align 2
  %i.af = load i16, ptr %i.ae, align 8            ; 2 uses
  store i16 %i.af, ptr %i.j, align 2
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 50
  %i.ah = load i16, ptr %i.ag, align 2            ; 2 uses
  store i16 %i.ah, ptr %i.k, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 52
  %i.aj = load i16, ptr %i.ai, align 4            ; 2 uses
  store i16 %i.aj, ptr %i.l, align 2
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.ak = load i16, ptr %i.ae, align 8
  %i.al = zext i16 %i.ak to i64
  %i.am = call ptr @slurm_bit_alloc(i64 noundef %i.al) #11 ; 4 uses
  store ptr %i.am, ptr %i.a, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 50
  %i.ao = load i16, ptr %i.an, align 2
  %i.ap = zext i16 %i.ao to i64
  %i.aq = call ptr @slurm_bit_alloc(i64 noundef %i.ap) #11 ; 4 uses
  store ptr %i.aq, ptr %i.b, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.y, i64 52
  %i.as = load i16, ptr %i.ar, align 4
  %i.at = zext i16 %i.as to i64
  %i.au = call ptr @slurm_bit_alloc(i64 noundef %i.at) #11 ; 4 uses
  store ptr %i.au, ptr %i.c, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8
  %.not23.i = icmp eq i32 %i.aw, 0
  br i1 %.not23.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  br label %bb.h

._crit_edge.i:                                    ; preds = %bb.k, %bb.g
  call fastcc void @_min_wrap_span(ptr noundef %i.am, ptr noundef nonnull %i.g, ptr noundef nonnull %i.j)
  call fastcc void @_min_wrap_span(ptr noundef %i.aq, ptr noundef nonnull %i.h, ptr noundef nonnull %i.k)
  call fastcc void @_min_wrap_span(ptr noundef %i.au, ptr noundef nonnull %i.i, ptr noundef nonnull %i.l)
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %bb.m, label %bb.l

bb.h:                                             ; preds = %bb.k, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.k ] ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.i
  %i.ba = load i32, ptr %i.az, align 4            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  %i.bb = icmp eq i32 %i.ba, -2
  br i1 %i.bb, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = zext i32 %i.ba to i64
  %i.bd = call i32 @slurm_bit_test(ptr noundef nonnull %0, i64 noundef %i.bc) #11
  %.not21.i = icmp eq i32 %i.bd, 0
  br i1 %.not21.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = trunc nuw i64 %indvars.iv.i to i32
  call void @torus3d_index_to_coord(ptr noundef nonnull %i.y, i32 noundef %i.be, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #11
  %i.bf = load i16, ptr %i.d, align 2
  %i.bg = zext i16 %i.bf to i64
  call void @slurm_bit_set(ptr noundef %i.am, i64 noundef %i.bg) #11
  %i.bh = load i16, ptr %i.e, align 2
  %i.bi = zext i16 %i.bh to i64
  call void @slurm_bit_set(ptr noundef %i.aq, i64 noundef %i.bi) #11
  %i.bj = load i16, ptr %i.f, align 2
  %i.bk = zext i16 %i.bj to i64
  call void @slurm_bit_set(ptr noundef %i.au, i64 noundef %i.bk) #11
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bl = load i32, ptr %i.av, align 8
  %i.bm = zext i32 %i.bl to i64
  %i.bn = icmp samesign ult i64 %indvars.iv.next.i, %i.bm
  br i1 %i.bn, label %bb.h, label %._crit_edge.i, !llvm.loop !40

bb.l:                                             ; preds = %._crit_edge.i
  call void @slurm_bit_free(ptr noundef nonnull %i.a) #11
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i
  store ptr null, ptr %i.a, align 8
  %.not19.i = icmp eq ptr %i.aq, null
  br i1 %.not19.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @slurm_bit_free(ptr noundef nonnull %i.b) #11
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store ptr null, ptr %i.b, align 8
  %.not20.i = icmp eq ptr %i.au, null
  br i1 %.not20.i, label %_find_starting_coords.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @slurm_bit_free(ptr noundef nonnull %i.c) #11
  br label %_find_starting_coords.exit

_find_starting_coords.exit:                       ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.pre = load i16, ptr %i.j, align 2
  %.pre101 = load i16, ptr %i.k, align 2
  %.pre102 = load i16, ptr %i.l, align 2
  br label %bb.q

bb.q:                                             ; preds = %_find_starting_coords.exit, %bb.f
  %i.bo = phi i16 [ %.pre102, %_find_starting_coords.exit ], [ %i.aj, %bb.f ]
  %i.bp = phi i16 [ %.pre101, %_find_starting_coords.exit ], [ %i.ah, %bb.f ]
  %i.bq = phi i16 [ %.pre, %_find_starting_coords.exit ], [ %i.af, %bb.f ]
  %i.br = add i16 %i.bq, -1
  %i.bs = call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.br, i1 false)
  %i.bt = sub nuw nsw i16 16, %i.bs               ; 4 uses
  %i.bu = add i16 %i.bp, -1
  %i.bv = call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.bu, i1 false)
  %i.bw = sub nuw nsw i16 16, %i.bv               ; 4 uses
  %i.bx = add i16 %i.bo, -1
  %i.by = call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.bx, i1 false)
  %i.bz = sub nuw nsw i16 16, %i.by               ; 4 uses
  %narrow = add nuw nsw i16 %i.bw, %i.bt
  %narrow80 = add nuw nsw i16 %narrow, %i.bz
  %i.ca = icmp samesign ugt i16 %narrow80, 16
  br i1 %i.ca, label %.lr.ph.i53, label %_morton_scale.exit

.lr.ph.i53:                                       ; preds = %bb.q, %.lr.ph.i53
  %.097 = phi i16 [ %.198, %.lr.ph.i53 ], [ %i.bw, %bb.q ] ; 4 uses
  %.0 = phi i16 [ %.195, %.lr.ph.i53 ], [ %i.bz, %bb.q ] ; 4 uses
  %.078 = phi i16 [ %.2, %.lr.ph.i53 ], [ %i.bt, %bb.q ] ; 4 uses
  %.not.i54 = icmp ult i16 %.078, %.097
  %.not29.i = icmp ult i16 %.078, %.0
  %or.cond.i = or i1 %.not29.i, %.not.i54         ; 4 uses
  %..i = call i16 @llvm.umax.i16(i16 %.097, i16 %.0)
  %.sink36.i = select i1 %or.cond.i, i16 %..i, i16 %.078
  %i.cb = add i16 %.sink36.i, -1                  ; 3 uses
  %.not30.i = icmp uge i16 %.097, %.0             ; 2 uses
  %i.cc = and i1 %or.cond.i, %.not30.i
  %.198 = select i1 %i.cc, i16 %i.cb, i16 %.097   ; 3 uses
  %i.cd = xor i1 %.not30.i, true
  %i.ce = and i1 %or.cond.i, %i.cd
  %.195 = select i1 %i.ce, i16 %i.cb, i16 %.0     ; 3 uses
  %.2 = select i1 %or.cond.i, i16 %.078, i16 %i.cb ; 3 uses
  %i.cf = zext i16 %.2 to i32
  %i.cg = zext i16 %.198 to i32
  %i.ch = add nuw nsw i32 %i.cg, %i.cf
  %i.ci = zext i16 %.195 to i32
  %i.cj = add nuw nsw i32 %i.ch, %i.ci
  %i.ck = icmp samesign ugt i32 %i.cj, 16
  br i1 %i.ck, label %.lr.ph.i53, label %_morton_scale.exit, !llvm.loop !41

_morton_scale.exit:                               ; preds = %.lr.ph.i53, %bb.q
  %.299 = phi i16 [ %i.bw, %bb.q ], [ %.198, %.lr.ph.i53 ] ; 2 uses
  %.296 = phi i16 [ %i.bz, %bb.q ], [ %.195, %.lr.ph.i53 ] ; 2 uses
  %.179 = phi i16 [ %i.bt, %bb.q ], [ %.2, %.lr.ph.i53 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #11
  store i32 0, ptr %i.m, align 4
  %i.cl = call ptr @next_node_bitmap(ptr noundef nonnull %0, ptr noundef nonnull %i.m) #11
  %.not5084 = icmp eq ptr %i.cl, null
  br i1 %.not5084, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_morton_scale.exit
  %i.cm = sub i16 %i.bz, %.296
  %i.cn = sub i16 %i.bw, %.299
  %i.co = sub i16 %i.bt, %.179
  %i.cp = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.cr = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.cs = load i16, ptr %i.g, align 2
  %i.ct = zext i16 %i.cs to i32
  %i.cu = getelementptr inbounds nuw i8, ptr %i.y, i64 50
  %i.cv = load i16, ptr %i.h, align 2
  %4 = zext i16 %i.cv to i32
  %5 = getelementptr inbounds nuw i8, ptr %i.y, i64 52
  %6 = load i16, ptr %i.i, align 2
  %7 = zext i16 %6 to i32
  %i.cw = trunc nuw nsw i64 %indvars.iv to i32
  %i.cx = shl i32 %i.cw, 16
  %i.cy = add i32 %i.cx, 65536                    ; 2 uses
  %i.cz = zext nneg i16 %i.co to i32
  %i.da = zext nneg i16 %i.cn to i32
  %i.db = zext nneg i16 %i.cm to i32
  %i.dc = zext i16 %.179 to i32                   ; 2 uses
  %i.dd = zext i16 %.299 to i32                   ; 2 uses
  %i.de = zext i16 %.296 to i32                   ; 2 uses
  %i.df = call i32 @llvm.umax.i32(i32 %i.dd, i32 %i.de)
  %i.dg = call i32 @llvm.umax.i32(i32 %i.df, i32 %i.dc) ; 2 uses
  %.not.i60 = icmp eq i32 %i.dg, 0
  br label %bb.r

._crit_edge:                                      ; preds = %bb.ab, %_morton_scale.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #11
  br label %bb.ac

bb.r:                                             ; preds = %.lr.ph, %bb.ab
  %.085 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.ab ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #11
  %i.dh = load ptr, ptr %i.z, align 8
  %i.di = load i32, ptr %i.m, align 4
  %i.dj = sext i32 %i.di to i64
  %i.dk = call i32 @slurm_bit_test(ptr noundef %i.dh, i64 noundef %i.dj) #11
  %.not51 = icmp eq i32 %i.dk, 0
  br i1 %.not51, label %bb.ab, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dl = load i32, ptr %i.m, align 4
  %i.dm = load i32, ptr %i.cp, align 8            ; 2 uses
  %.not.i55 = icmp eq i32 %i.dm, 0
  br i1 %.not.i55, label %_find_torus_index.exit, label %.lr.ph.i56

.lr.ph.i56:                                       ; preds = %bb.s
  %i.dn = load ptr, ptr %i.cq, align 8
  %wide.trip.count.i = zext i32 %i.dm to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %.lr.ph.i56
  %indvars.iv.i57 = phi i64 [ 0, %.lr.ph.i56 ], [ %indvars.iv.next.i58, %bb.u ] ; 3 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %indvars.iv.i57
  %i.dp = load i32, ptr %i.do, align 4
  %i.dq = icmp eq i32 %i.dp, %i.dl
  br i1 %i.dq, label %._crit_edge.loopexit.split.loop.exit15.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %indvars.iv.next.i58 = add nuw nsw i64 %indvars.iv.i57, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i58, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_find_torus_index.exit, label %bb.t, !llvm.loop !1

._crit_edge.loopexit.split.loop.exit15.i:         ; preds = %bb.t
  %i.dr = trunc nuw i64 %indvars.iv.i57 to i32
  br label %_find_torus_index.exit

_find_torus_index.exit:                           ; preds = %bb.u, %bb.s, %._crit_edge.loopexit.split.loop.exit15.i
  %i.ds = phi i32 [ -2, %bb.s ], [ %i.dr, %._crit_edge.loopexit.split.loop.exit15.i ], [ -2, %bb.u ]
  call void @torus3d_index_to_coord(ptr noundef %i.y, i32 noundef %i.ds, ptr noundef nonnull %i.n, ptr noundef nonnull %i.o, ptr noundef nonnull %i.p) #11
  %i.dt = load i16, ptr %i.n, align 2
  %i.du = zext i16 %i.dt to i32
  %i.dv = load i16, ptr %i.cr, align 8
  %i.dw = zext i16 %i.dv to i32                   ; 2 uses
  %i.dx = add nuw nsw i32 %i.dw, %i.du
  %i.dy = sub nsw i32 %i.dx, %i.ct
  %i.dz = srem i32 %i.dy, %i.dw
  %i.ea = load i16, ptr %i.o, align 2
  %8 = zext i16 %i.ea to i32
  %i.eb = load i16, ptr %i.cu, align 2
  %9 = zext i16 %i.eb to i32                      ; 2 uses
  %10 = add nuw nsw i32 %9, %8
  %11 = sub nsw i32 %10, %4
  %12 = srem i32 %11, %9
  %13 = load i16, ptr %i.p, align 2
  %14 = zext i16 %13 to i32
  %15 = load i16, ptr %5, align 4
  %16 = zext i16 %15 to i32                       ; 2 uses
  %17 = add nuw nsw i32 %16, %14
  %18 = sub nsw i32 %17, %7
  %19 = srem i32 %18, %16
  %20 = and i32 %i.dz, 65535
  %21 = lshr i32 %20, %i.cz
  %22 = and i32 %12, 65535
  %i.ec = lshr i32 %22, %i.da
  %23 = and i32 %19, 65535
  %i.ed = lshr i32 %23, %i.db
  br i1 %.not.i60, label %_morton_encode.exit, label %.lr.ph.i61

.lr.ph.i61:                                       ; preds = %_find_torus_index.exit, %bb.aa
  %.041.i = phi i32 [ %i.ew, %bb.aa ], [ 0, %_find_torus_index.exit ] ; 7 uses
  %.03240.i = phi i32 [ %.3.i, %bb.aa ], [ 0, %_find_torus_index.exit ] ; 3 uses
  %.03339.i = phi i32 [ %.336.i, %bb.aa ], [ 0, %_find_torus_index.exit ] ; 2 uses
  %i.ee = icmp samesign ult i32 %.041.i, %i.dc
  br i1 %i.ee, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph.i61
  %i.ef = lshr i32 %21, %.041.i
  %i.eg = and i32 %i.ef, 1
  %i.eh = add nsw i32 %.03240.i, 1
  %i.ei = shl nuw i32 %i.eg, %.03240.i
  %i.ej = or i32 %i.ei, %.03339.i
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph.i61
  %.134.i = phi i32 [ %i.ej, %bb.v ], [ %.03339.i, %.lr.ph.i61 ] ; 2 uses
  %.1.i = phi i32 [ %i.eh, %bb.v ], [ %.03240.i, %.lr.ph.i61 ] ; 3 uses
  %i.ek = icmp samesign ult i32 %.041.i, %i.dd
  br i1 %i.ek, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.el = lshr i32 %i.ec, %.041.i
  %i.em = and i32 %i.el, 1
  %i.en = add nsw i32 %.1.i, 1
  %i.eo = shl nuw i32 %i.em, %.1.i
  %i.ep = or i32 %i.eo, %.134.i
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.235.i = phi i32 [ %i.ep, %bb.x ], [ %.134.i, %bb.w ] ; 2 uses
  %.2.i = phi i32 [ %i.en, %bb.x ], [ %.1.i, %bb.w ] ; 3 uses
  %i.eq = icmp samesign ult i32 %.041.i, %i.de
  br i1 %i.eq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.er = lshr i32 %i.ed, %.041.i
  %i.es = and i32 %i.er, 1
  %i.et = add nsw i32 %.2.i, 1
  %i.eu = shl nuw i32 %i.es, %.2.i
  %i.ev = or i32 %i.eu, %.235.i
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.336.i = phi i32 [ %i.ev, %bb.z ], [ %.235.i, %bb.y ] ; 2 uses
  %.3.i = phi i32 [ %i.et, %bb.z ], [ %.2.i, %bb.y ]
  %i.ew = add nuw nsw i32 %.041.i, 1              ; 2 uses
  %exitcond.not.i62 = icmp eq i32 %i.ew, %i.dg
  br i1 %exitcond.not.i62, label %_morton_encode.exit.loopexit, label %.lr.ph.i61, !llvm.loop !42

_morton_encode.exit.loopexit:                     ; preds = %bb.aa
  %i.ex = or i32 %.336.i, %i.cy
  br label %_morton_encode.exit

_morton_encode.exit:                              ; preds = %_morton_encode.exit.loopexit, %_find_torus_index.exit
  %.033.lcssa.i = phi i32 [ %i.cy, %_find_torus_index.exit ], [ %i.ex, %_morton_encode.exit.loopexit ]
  %i.ey = load ptr, ptr %1, align 8
  %i.ez = zext i32 %.085 to i64
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.ez
  store i32 %.033.lcssa.i, ptr %i.fa, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.r, %_morton_encode.exit
  %.1 = add i32 %.085, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #11
  %i.fb = load i32, ptr %i.m, align 4
  %i.fc = add nsw i32 %i.fb, 1
  store i32 %i.fc, ptr %i.m, align 4
  %i.fd = call ptr @next_node_bitmap(ptr noundef nonnull %0, ptr noundef nonnull %i.m) #11
  %.not50 = icmp eq ptr %i.fd, null
  br i1 %.not50, label %._crit_edge, label %bb.r, !llvm.loop !43

bb.ac:                                            ; preds = %bb.d, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fe = load i32, ptr %i.t, align 8
  %i.ff = sext i32 %i.fe to i64
  %i.fg = icmp slt i64 %indvars.iv.next, %i.ff
  br i1 %i.fg, label %bb.d, label %.loopexit, !llvm.loop !44

.loopexit:                                        ; preds = %bb.ac, %bb.c, %bb.b, %bb.a
  ret i32 0
}

declare i32 @slurm_bit_set_count(ptr noundef) local_unnamed_addr #1

declare ptr @next_node_bitmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @topology_p_get_topology_str(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 5 uses
  %i.b = alloca i16, align 2                      ; 5 uses
  %i.c = alloca i16, align 2                      ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.k = load ptr, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw [56 x i8], ptr %i.k, i64 %indvars.iv ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = load i32, ptr %i.j, align 8
  %i.p = zext i32 %i.o to i64
  %i.q = tail call i32 @slurm_bit_test(ptr noundef %i.n, i64 noundef %i.p) #11
  %.not21 = icmp eq i32 %i.q, 0
  br i1 %.not21, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load i32, ptr %i.j, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.t = load i32, ptr %i.s, align 8              ; 2 uses
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %_find_torus_index.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  %wide.trip.count.i = zext i32 %i.t to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i
  %i.x = load i32, ptr %i.w, align 4
  %i.y = icmp eq i32 %i.x, %i.r
  br i1 %i.y, label %._crit_edge.loopexit.split.loop.exit15.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_find_torus_index.exit, label %bb.d, !llvm.loop !1

._crit_edge.loopexit.split.loop.exit15.i:         ; preds = %bb.d
  %i.z = trunc nuw i64 %indvars.iv.i to i32
  br label %_find_torus_index.exit

_find_torus_index.exit:                           ; preds = %bb.e, %bb.c, %._crit_edge.loopexit.split.loop.exit15.i
  %i.aa = phi i32 [ -2, %bb.c ], [ %i.z, %._crit_edge.loopexit.split.loop.exit15.i ], [ -2, %bb.e ]
  call void @torus3d_index_to_coord(ptr noundef %i.l, i32 noundef %i.aa, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #11
  %i.ab = load ptr, ptr %1, align 8
  %.not22 = icmp eq ptr %i.ab, null
  %i.ac = select i1 %.not22, ptr @.str.17, ptr @.str.20
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = load ptr, ptr %i.l, align 8
  %i.ag = load i16, ptr %i.a, align 2
  %i.ah = zext i16 %i.ag to i32
  %i.ai = load i16, ptr %i.b, align 2
  %i.aj = zext i16 %i.ai to i32
  %i.ak = load i16, ptr %i.c, align 2
  %i.al = zext i16 %i.ak to i32
  call void (ptr, ptr, ...) @slurm_xstrfmtcat(ptr noundef nonnull %1, ptr noundef nonnull @.str.19, ptr noundef nonnull %i.ac, ptr noundef %i.ae, ptr noundef %i.af, i32 noundef %i.ah, i32 noundef %i.aj, i32 noundef %i.al) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.loopexit

.critedge:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.am = load i32, ptr %i.f, align 8
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp slt i64 %indvars.iv.next, %i.an
  br i1 %i.ao, label %bb.b, label %.loopexit, !llvm.loop !45

.loopexit:                                        ; preds = %.critedge, %.preheader, %_find_torus_index.exit, %bb.a
  ret void
}

declare void @slurm_xstrfmtcat(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @slurm_bit_clear(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @slurm_xstrfmtcatat(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #6

declare ptr @slurm_bit_alloc(i64 noundef) local_unnamed_addr #1
end_hunk_0
