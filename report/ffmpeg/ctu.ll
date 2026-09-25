Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ctu?download=true
inline.NumInlined: 95
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 44
begin_hunk_0_@ff_vvc_decode_neighbour:bb.a
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !83
  %i.cx = icmp eq i16 %i.ad, %i.cw
  %i.cy = zext i1 %i.cx to i8
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %.thread, %bb.s
  %i.cz = phi i1 [ false, %.thread ], [ %.not93, %bb.r ], [ true, %bb.s ]
  %i.da = phi i8 [ 0, %.thread ], [ 0, %bb.r ], [ %i.cy, %bb.s ]
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.da, ptr %i.db, align 2, !tbaa !151
  %narrow = and i1 %narrow101, %i.cz
  %i.dc = zext i1 %narrow to i8
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !152
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ff_vvc_set_neighbour_available(ptr nofree noundef captures(none) initializes((32900, 32920)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2064
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 30
  %i.f = load i8, ptr %i.e, align 2, !tbaa !79
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %notmask.i30 = shl nsw i32 -1, %i.g
  %i.h = xor i32 %notmask.i30, -1                 ; 3 uses
  %i.i = and i32 %1, %i.h                         ; 2 uses
  %i.j = and i32 %2, %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !107
  %i.m = icmp ne i8 %i.l, 0
  %i.n = icmp ne i32 %i.j, 0                      ; 2 uses
  %i.o = or i1 %i.m, %i.n
  %i.p = zext i1 %i.o to i32                      ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32900
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32904
  store i32 %i.p, ptr %i.r, align 8, !tbaa !153
  %i.s = load i8, ptr %0, align 16, !tbaa !106
  %i.t = icmp ne i8 %i.s, 0
  %i.u = icmp ne i32 %i.i, 0
  %i.v = or i1 %i.t, %i.u                         ; 2 uses
  %i.w = zext i1 %i.v to i32
  store i32 %i.w, ptr %i.q, align 4, !tbaa !154
  %i.x = or i32 %2, %1
  %i.y = and i32 %i.x, %i.h
  %or.cond.not = icmp eq i32 %i.y, 0
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.select = select i1 %i.v, i32 %i.p, i32 0
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !152
  %i.ab = zext i8 %i.aa to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.ac = phi i32 [ %i.ab, %bb.c ], [ %spec.select, %bb.b ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32908
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !155
  %i.ae = add nsw i32 %i.i, %3
  %i.af = shl nuw i32 1, %i.g
  %i.ag = icmp eq i32 %i.ae, %i.af
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ai = load i8, ptr %i.ah, align 2, !tbaa !151
  %.not = icmp eq i8 %i.ai, 0
  %i.aj = xor i1 %i.n, true
  %i.ak = zext i1 %i.aj to i32
  br i1 %.not, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32916
  store i32 0, ptr %i.al, align 4, !tbaa !156
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.am = phi i32 [ %i.ak, %bb.e ], [ %i.p, %bb.d ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32916
  store i32 %i.am, ptr %i.an, align 4, !tbaa !156
  %.not29 = icmp eq i32 %i.am, 0
  br i1 %.not29, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = add nsw i32 %3, %1
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !149
  %i.ar = icmp slt i32 %i.ao, %i.aq
  %i.as = zext i1 %i.ar to i32
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g, %bb.f
  %i.at = phi i32 [ 0, %bb.f ], [ %i.as, %bb.g ], [ 0, %.thread ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32912
  store i32 %i.at, ptr %i.au, align 16, !tbaa !157
  ret void
}

; Function Attrs: nounwind uwtable
define void @ff_vvc_ctu_free_cus(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !126    ; 2 uses
  %.not8 = icmp eq ptr %i.c, null
  br i1 %.not8, label %._crit_edge11, label %.lr.ph10

.lr.ph10:                                         ; preds = %bb.a, %._crit_edge
  %i.d = phi ptr [ %i.o, %._crit_edge ], [ %i.c, %bb.a ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr %i.d, ptr %i.a, align 8, !tbaa !126
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 776
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !147
  store ptr %i.g, ptr %0, align 8, !tbaa !126
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !267  ; 2 uses
  %.not67 = icmp eq ptr %i.h, null
  br i1 %.not67, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph10, %.lr.ph
  %i.i = phi ptr [ %i.l, %.lr.ph ], [ %i.h, %.lr.ph10 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store ptr %i.i, ptr %i.b, align 8, !tbaa !267
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !159
  store ptr %i.k, ptr %i.e, align 8, !tbaa !267
  call void @av_refstruct_unref(ptr noundef nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !267  ; 2 uses
  %.not6 = icmp eq ptr %i.l, null
  br i1 %.not6, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !265

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !126
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph10
  %i.m = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.d, %.lr.ph10 ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  store ptr null, ptr %i.n, align 8, !tbaa !160
  call void @av_refstruct_unref(ptr noundef nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.o = load ptr, ptr %0, align 8, !tbaa !126    ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %._crit_edge11, label %.lr.ph10, !llvm.loop !266

._crit_edge11:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

declare void @av_refstruct_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -128, 128) i32 @ff_vvc_get_qPy(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 34
  %i.d = load i8, ptr %i.c, align 2, !tbaa !161
  %i.e = zext i8 %i.d to i32                      ; 2 uses
  %i.f = ashr i32 %1, %i.e
  %i.g = ashr i32 %2, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 21912
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !162
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2072
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !76
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4034
  %i.m = load i16, ptr %i.l, align 2, !tbaa !163
  %i.n = zext i16 %i.m to i32
  %i.o = mul nsw i32 %i.g, %i.n
  %i.p = add nsw i32 %i.o, %i.f
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds i8, ptr %i.i, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !108
  %i.t = sext i8 %i.s to i32
  ret i32 %i.t
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ff_vvc_ep_init_stat_coeff(ptr nofree noundef writeonly captures(none) initializes((12, 24)) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq i32 %2, 0
  %i.a = getelementptr i8, ptr %0, i64 12         ; 2 uses
  br i1 %.not, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, i8 0, i64 12, i1 false), !tbaa !109
  br label %.split7.us

.split:                                           ; preds = %bb.a
  %i.b = add nsw i32 %1, -10                      ; 3 uses
  %.not.i = icmp ult i32 %i.b, 65536              ; 2 uses
  %3 = lshr i32 %i.b, 16
  %spec.select.i = select i1 %.not.i, i32 %i.b, i32 %3 ; 3 uses
  %.not11.i = icmp samesign ult i32 %spec.select.i, 256 ; 2 uses
  %i.c = lshr i32 %spec.select.i, 8
  %.110.i = select i1 %.not11.i, i32 %spec.select.i, i32 %i.c
  %i.d = zext nneg i32 %.110.i to i64
  %i.e = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.d
  %spec.select12.i = select i1 %.not.i, i32 0, i32 16 ; 2 uses
  %i.f = or disjoint i32 %spec.select12.i, 8
  %.1.i = select i1 %.not11.i, i32 %spec.select12.i, i32 %i.f
  %i.g = load i8, ptr %i.e, align 1, !tbaa !108
  %i.h = zext i8 %i.g to i32
  %i.i = add nuw nsw i32 %.1.i, %i.h
  %i.j = shl nuw nsw i32 %i.i, 1                  ; 3 uses
  store i32 %i.j, ptr %i.a, align 4, !tbaa !109
  %i.k = getelementptr i8, ptr %0, i64 16
  store i32 %i.j, ptr %i.k, align 4, !tbaa !109
  %i.l = getelementptr i8, ptr %0, i64 20
  store i32 %i.j, ptr %i.l, align 4, !tbaa !109
  br label %.split7.us

.split7.us:                                       ; preds = %.split, %.split.us.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ff_vvc_channel_range(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ne i8 %3, 0
  %i.b = icmp ne i32 %2, 1
  %i.c = and i1 %i.b, %i.a
  %.not = icmp eq i32 %2, 2
  %i.d = zext i1 %.not to i32
  store i32 %i.d, ptr %0, align 4, !tbaa !109
  %i.e = select i1 %i.c, i32 3, i32 1
  store i32 %i.e, ptr %1, align 4, !tbaa !109
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @dual_tree_implicit_qt_split(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 0, 65536) %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !91  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !95
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2072
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !76   ; 3 uses
  %i.i = shl nsw i32 %4, 1                        ; 4 uses
  %i.j = icmp samesign ugt i32 %3, 64
  br i1 %i.j, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.k = lshr i32 %3, 1                           ; 6 uses
  %i.l = add nsw i32 %i.k, %1                     ; 4 uses
  %i.m = add nsw i32 %i.k, %2                     ; 4 uses
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !164
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1992103
  %i.p = load i8, ptr %i.o, align 1, !tbaa !166
  %.not = icmp eq i8 %i.p, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 473
  %i.r = load i8, ptr %i.q, align 1, !tbaa !167
  %i.s = zext i8 %i.r to i32
  %.not95 = icmp sgt i32 %i.i, %i.s
  br i1 %.not95, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.t, align 16, !tbaa !168
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %1, ptr %i.u, align 4, !tbaa !169
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %2, ptr %i.v, align 8, !tbaa !170
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 2330
  %i.x = load i8, ptr %i.w, align 2, !tbaa !171
  %.not96 = icmp eq i8 %i.x, 0
  br i1 %.not96, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 474
  %i.z = load i8, ptr %i.y, align 2, !tbaa !172
  %i.aa = zext i8 %i.z to i32
  %.not97 = icmp sgt i32 %i.i, %i.aa
  br i1 %.not97, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %i.ac = add nsw i32 %4, 1                       ; 4 uses
  %i.ad = tail call fastcc i32 @dual_tree_implicit_qt_split(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %i.k, i32 noundef %i.ac) ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 30 ; 2 uses
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !148
  %i.ah = zext i16 %i.ag to i32
  %i.ai = icmp slt i32 %i.l, %i.ah
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aj = tail call fastcc i32 @dual_tree_implicit_qt_split(ptr noundef nonnull %0, i32 noundef %i.l, i32 noundef %2, i32 noundef %i.k, i32 noundef %i.ac) ; 2 uses
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.am = load i16, ptr %i.al, align 8, !tbaa !150
  %i.an = zext i16 %i.am to i32
  %i.ao = icmp slt i32 %i.m, %i.an
  br i1 %i.ao, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ap = tail call fastcc i32 @dual_tree_implicit_qt_split(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.m, i32 noundef %i.k, i32 noundef %i.ac) ; 2 uses
  %i.aq = icmp slt i32 %i.ap, 0
  br i1 %i.aq, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ar = load i16, ptr %i.af, align 2, !tbaa !148
  %i.as = zext i16 %i.ar to i32
  %i.at = icmp slt i32 %i.l, %i.as
  br i1 %i.at, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.au = load i16, ptr %i.al, align 8, !tbaa !150
  %i.av = zext i16 %i.au to i32
  %i.aw = icmp slt i32 %i.m, %i.av
  br i1 %i.aw, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ax = tail call fastcc i32 @dual_tree_implicit_qt_split(ptr noundef nonnull %0, i32 noundef %i.l, i32 noundef %i.m, i32 noundef %i.k, i32 noundef %i.ac) ; 2 uses
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %.thread, label %bb.r

bb.p:                                             ; preds = %bb.a
  %i.az = tail call fastcc i32 @hls_coding_tree(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %3, i32 noundef 1, i32 noundef 0, i32 noundef %i.i, i32 noundef %4, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.ba = icmp sgt i32 %i.az, -1
  br i1 %i.ba, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.bb = tail call fastcc i32 @hls_coding_tree(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %3, i32 noundef 0, i32 noundef 1, i32 noundef %i.i, i32 noundef %4, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, -1
  br i1 %i.bc, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.q
  br label %.thread

.thread:                                          ; preds = %bb.o, %bb.l, %bb.j, %bb.h, %bb.q, %bb.p, %bb.r
  %.3 = phi i32 [ 0, %bb.r ], [ %i.az, %bb.p ], [ %i.bb, %bb.q ], [ %i.ax, %bb.o ], [ %i.ap, %bb.l ], [ %i.aj, %bb.j ], [ %i.ad, %bb.h ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @hls_coding_tree(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef range(i32 -2147483647, -2147483648) %9, i32 noundef %10, i32 noundef range(i32 0, 4) %11, i32 noundef %12, i32 noundef %13, i32 noundef %14) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 7 uses
  %15 = alloca [2 x [3 x %struct.Mv]], align 16   ; 10 uses
  %i.b = alloca [2 x i32], align 4                ; 5 uses
  %16 = alloca %struct.MvField, align 8           ; 12 uses
  %17 = alloca [2 x %struct.Mv], align 16         ; 13 uses
  %18 = alloca %struct.Mv, align 8                ; 7 uses
  %19 = alloca %struct.MvField, align 16          ; 18 uses
  %i.c = alloca [5 x i32], align 16               ; 26 uses
  %20 = alloca %struct.VVCAllowedSplit, align 4   ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 34 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2072 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !76   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 9 uses
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !91  ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !95
  %i.l = icmp eq i32 %13, 2                       ; 5 uses
  %i.m = zext i1 %i.l to i32                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #14
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !164
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1992103
  %i.p = load i8, ptr %i.o, align 1, !tbaa !166
  %i.q = icmp ne i8 %i.p, 0
  %i.r = icmp ne i32 %5, 0
  %or.cond = and i1 %i.r, %i.q
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 473
  %i.t = load i8, ptr %i.s, align 1, !tbaa !167
  %i.u = zext i8 %i.t to i32
  %.not = icmp sgt i32 %7, %i.u
end_hunk_0
