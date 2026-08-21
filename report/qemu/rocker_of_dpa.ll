Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/rocker_of_dpa?download=true
inline.NumInlined: 245
inline.NumDeleted: 74
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@of_dpa_group_fill:bb.a
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %bb.k, %bb.c, %bb.d, %bb.j, %bb.i, %bb.t, %bb.s
  %i.dk = tail call noalias dereferenceable_or_null(16) ptr @g_malloc(i64 noundef 16) #18 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store ptr %i.f, ptr %i.dl, align 8
  %i.dm = load ptr, ptr %2, align 8
  store ptr %i.dm, ptr %i.dk, align 8
  store ptr %i.dk, ptr %2, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.b, %.loopexit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @of_dpa_world_alloc(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @world_alloc(ptr noundef %0, i64 noundef 32, i32 noundef 0, ptr noundef nonnull @of_dpa_ops) #17
  ret ptr %i.a
}

declare ptr @world_alloc(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #4

declare ptr @qemu_mac_strdup_printf(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @inet_ntoa(i32) local_unnamed_addr #5

declare noalias ptr @g_strdup_printf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -12, 1) i32 @of_dpa_init(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @world_private(ptr noundef %0) #17 ; 5 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = tail call ptr @g_hash_table_new_full(ptr noundef nonnull @rocker_int64_hash, ptr noundef nonnull @rocker_int64_equal, ptr noundef null, ptr noundef nonnull @g_free) #17 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.b, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @g_hash_table_new_full(ptr noundef nonnull @g_int_hash, ptr noundef nonnull @g_int_equal, ptr noundef null, ptr noundef nonnull @g_free) #17 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.e, align 8
  %.not10 = icmp eq ptr %i.d, null
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 100, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 100, ptr %i.g, align 4
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.c, align 8
  tail call void @g_hash_table_destroy(ptr noundef %i.h) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -12, %bb.d ], [ -12, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @of_dpa_uninit(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @world_private(ptr noundef %0) #17 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @g_hash_table_destroy(ptr noundef %i.c) #17
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @g_hash_table_destroy(ptr noundef %i.e) #17
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @of_dpa_ig(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
bb.a:
  %4 = alloca %struct.of_dpa_flow_context, align 8 ; 13 uses
  %i.a = add i32 %3, 2                            ; 3 uses
  %.sink53.i.sroa.gep = getelementptr inbounds nuw i8, ptr %4, i64 88
  %.sink53.i.sroa.gep19 = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.b = sext i32 %i.a to i64
  %i.c = tail call noalias ptr @g_malloc_n(i64 noundef %i.b, i64 noundef 16) #19 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %4, i8 0, i64 152, i1 false)
  store i32 %1, ptr %4, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i32 %i.a, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.g = tail call ptr @world_private(ptr noundef %0) #17
  store ptr %i.g, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8              ; 5 uses
  %i.j = icmp ult i64 %i.i, 14
  br i1 %i.j, label %of_dpa_flow_pkt_parse.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %2, align 8                ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 12 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8
  %.val44.val.i = load i16, ptr %i.m, align 1     ; 2 uses
  %.not.i = icmp eq i16 %.val44.val.i, -32512
  br i1 %.not.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ult i64 %i.i, 18
  br i1 %i.o, label %of_dpa_flow_pkt_parse.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 14 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 80
  store ptr %i.p, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  store ptr %i.r, ptr %i.n, align 8
  %.val.val.pre.i = load i16, ptr %i.r, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.s = phi ptr [ %i.p, %bb.d ], [ null, %bb.b ] ; 2 uses
  %.val.val.i = phi i16 [ %.val.val.pre.i, %bb.d ], [ %.val44.val.i, %bb.b ]
  %i.t = phi i64 [ 16, %bb.d ], [ 12, %bb.b ]     ; 2 uses
  %.042.i = phi i64 [ 18, %bb.d ], [ 14, %bb.b ]  ; 2 uses
  %rev.i45.i = tail call noundef i16 @llvm.bswap.i16(i16 %.val.val.i)
  switch i16 %rev.i45.i, label %bb.h [
    i16 2048, label %bb.f
    i16 -31011, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.u = add nuw nsw i64 %.042.i, 20
  %i.v = icmp ult i64 %i.i, %i.u
  br i1 %i.v, label %of_dpa_flow_pkt_parse.exit, label %.sink.split.i

bb.g:                                             ; preds = %bb.e
  %i.w = add nuw nsw i64 %.042.i, 40
  %i.x = icmp ult i64 %i.i, %i.w
  br i1 %i.x, label %of_dpa_flow_pkt_parse.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.g, %bb.f
  %.sink53.i.sroa.phi = phi ptr [ %.sink53.i.sroa.gep, %bb.f ], [ %.sink53.i.sroa.gep19, %bb.g ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.t
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  store ptr %i.z, ptr %.sink53.i.sroa.phi, align 8
  br label %bb.h

bb.h:                                             ; preds = %.sink.split.i, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.t
  store ptr %i.k, ptr %i.c, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 14, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.s, ptr %i.ac, align 8
  %.not.i.i = icmp eq ptr %i.s, null              ; 2 uses
  %.neg22 = select i1 %.not.i.i, i64 0, i64 -4
  %i.ad = select i1 %.not.i.i, i64 0, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.ad, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.af, ptr %i.ag, align 8
  %.neg21 = add i64 %i.i, %.neg22
  %i.ah = add i64 %.neg21, -14
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %i.ah, ptr %i.ai, align 8
  %i.aj = icmp sgt i32 %3, 1
  br i1 %i.aj, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.h
  %wide.trip.count.i = zext nneg i32 %3 to i64
  %i.ak = add nsw i64 %wide.trip.count.i, -1      ; 3 uses
  %xtraiter = and i64 %i.ak, 1
  %i.al = icmp eq i32 %3, 2
  br i1 %i.al, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.ak, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %5 = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.an, i64 16, i1 false)
  %sext.i.1 = add nuw nsw i64 %indvars.iv.i, 1    ; 2 uses
  %6 = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %sext.i.1
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %sext.i.1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ap, i64 16, i1 false)
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !10

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod24 = trunc i64 %i.ak to i1
  tail call void @llvm.assume(i1 %lcmp.mod24)
  %7 = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %indvars.iv.i.epil.init
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ar, i64 16, i1 false)
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %bb.h
  store i32 %i.a, ptr %i.e, align 8
  br label %of_dpa_flow_pkt_parse.exit

of_dpa_flow_pkt_parse.exit:                       ; preds = %bb.a, %bb.c, %bb.f, %bb.g, %._crit_edge.i
  call fastcc void @of_dpa_flow_ig_tbl(ptr noundef nonnull %4, i32 noundef 0)
  %i.as = call i64 @iov_size(ptr noundef nonnull %2, i32 noundef %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @g_free(ptr noundef %i.c) #17
  ret i64 %i.as
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @of_dpa_cmd(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3, ptr noundef %4) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %5 = alloca %struct.iovec, align 8              ; 6 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %6 = alloca %struct.iovec, align 8              ; 6 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %7 = alloca %struct.iovec, align 8              ; 6 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %i.k = alloca [62 x ptr], align 16              ; 10 uses
  %i.l = tail call ptr @world_private(ptr noundef %0) #17 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #17
  %i.m = getelementptr i8, ptr %4, i64 4
  %.val.i = load i16, ptr %i.m, align 4           ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(496) %i.k, i8 noundef 0, i64 noundef range(i64 -2147483648, 2147483648) 496, i1 noundef false) #17
  %i.n = icmp ugt i16 %.val.i, 15
  br i1 %i.n, label %.lr.ph.i.preheader.i, label %rocker_tlv_parse_nested.exit

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %i.o = zext i16 %.val.i to i32
  %i.p = add nsw i32 %i.o, -8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.preheader.i
  %.021.i.i = phi ptr [ %i.ac, %bb.d ], [ %i.q, %.lr.ph.i.preheader.i ] ; 4 uses
  %.01720.i.i = phi i32 [ %i.aa, %bb.d ], [ %i.p, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 4
  %i.s = load i16, ptr %i.r, align 4              ; 2 uses
  %i.t = icmp ult i16 %i.s, 8
  %i.u = zext i16 %i.s to i32                     ; 2 uses
  %.not19.i.i = icmp samesign ult i32 %.01720.i.i, %i.u
  %or.cond.i.i = select i1 %i.t, i1 true, i1 %.not19.i.i
  br i1 %or.cond.i.i, label %rocker_tlv_parse_nested.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %.0.val.i.i = load i32, ptr %.021.i.i, align 8  ; 2 uses
  %i.v = add i32 %.0.val.i.i, -1
  %or.cond.not.i.i = icmp ult i32 %i.v, 61
  br i1 %or.cond.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = zext nneg i32 %.0.val.i.i to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.w
  store ptr %.021.i.i, ptr %i.x, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.y = add nuw nsw i32 %i.u, 7
  %i.z = and i32 %i.y, 131064                     ; 2 uses
  %i.aa = sub nsw i32 %.01720.i.i, %i.z           ; 2 uses
  %i.ab = zext nneg i32 %i.z to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 %i.ab
  %i.ad = icmp sgt i32 %i.aa, 7
  br i1 %i.ad, label %.lr.ph.i.i, label %rocker_tlv_parse_nested.exit, !llvm.loop !11

rocker_tlv_parse_nested.exit:                     ; preds = %.lr.ph.i.i, %bb.d, %bb.a
  switch i16 %3, label %of_dpa_flow_cmd.exit [
    i16 3, label %bb.e
    i16 4, label %bb.e
    i16 5, label %bb.e
    i16 6, label %bb.e
    i16 7, label %bb.q
    i16 8, label %bb.q
    i16 9, label %bb.q
    i16 10, label %bb.q
  ]

bb.e:                                             ; preds = %rocker_tlv_parse_nested.exit, %rocker_tlv_parse_nested.exit, %rocker_tlv_parse_nested.exit, %rocker_tlv_parse_nested.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %of_dpa_flow_cmd.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  %.val.i11 = load i64, ptr %i.ag, align 1        ; 5 uses
  %i.ah = getelementptr i8, ptr %i.l, i64 8       ; 3 uses
  %.val.i.i = load ptr, ptr %i.ah, align 8        ; 4 uses
  switch i16 %3, label %default.unreachable [
    i16 3, label %bb.g
    i16 4, label %bb.k
    i16 5, label %bb.m
    i16 6, label %bb.o
  ]

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 %.val.i11, ptr %i.j, align 8
  %i.ai = call ptr @g_hash_table_lookup(ptr noundef %.val.i.i, ptr noundef nonnull %i.j) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.not.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i, label %bb.h, label %of_dpa_flow_cmd.exit

bb.h:                                             ; preds = %bb.g
  %i.aj = call i64 @qemu_clock_get_ns(i32 noundef 1) #17
  %i.ak = call noalias dereferenceable_or_null(312) ptr @g_malloc0(i64 noundef 312) #18 ; 7 uses
  %i.al = sdiv i64 %i.aj, 1000000000              ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  store i64 %.val.i11, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 140
  store i32 -1, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 288
  store i64 %i.al, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 280
  store i64 %i.al, ptr %i.ap, align 8
  %i.aq = call fastcc i32 @of_dpa_cmd_flow_add_mod(ptr noundef %i.ak, ptr noundef nonnull readonly %i.k) ; 2 uses
  %.not13.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not13.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @g_free(ptr noundef nonnull %i.ak) #17
  br label %of_dpa_flow_cmd.exit

bb.j:                                             ; preds = %bb.h
  %.val14.i.i = load ptr, ptr %i.ah, align 8
  %i.ar = call i32 @g_hash_table_insert(ptr noundef %.val14.i.i, ptr noundef nonnull %i.am, ptr noundef nonnull %i.ak) #17 ; 0 uses
  br label %of_dpa_flow_cmd.exit

bb.k:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 %.val.i11, ptr %i.i, align 8
  %i.as = call ptr @g_hash_table_lookup(ptr noundef %.val.i.i, ptr noundef nonnull %i.i) #17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.not.i18.i = icmp eq ptr %i.as, null
  br i1 %.not.i18.i, label %of_dpa_flow_cmd.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = call fastcc i32 @of_dpa_cmd_flow_add_mod(ptr noundef nonnull %i.as, ptr noundef nonnull readonly %i.k)
  br label %of_dpa_flow_cmd.exit

bb.m:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %.val.i11, ptr %i.h, align 8
  %i.au = call ptr @g_hash_table_lookup(ptr noundef %.val.i.i, ptr noundef nonnull %i.h) #17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.not.i21.i = icmp eq ptr %i.au, null
  br i1 %.not.i21.i, label %of_dpa_flow_cmd.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.val6.i.i = load ptr, ptr %i.ah, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = call i32 @g_hash_table_remove(ptr noundef %.val6.i.i, ptr noundef nonnull %i.av) #17 ; 0 uses
  br label %of_dpa_flow_cmd.exit

bb.o:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %.val.i11, ptr %i.g, align 8
  %i.ax = call ptr @g_hash_table_lookup(ptr noundef %.val.i.i, ptr noundef nonnull %i.g) #17 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ay = call i64 @qemu_clock_get_ns(i32 noundef 1) #17
  %i.az = sdiv i64 %i.ay, 1000000000
  %.not.i23.i = icmp eq ptr %i.ax, null
  br i1 %.not.i23.i, label %of_dpa_flow_cmd.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = call zeroext i16 @desc_buf_size(ptr noundef %1) #17
  %i.bb = icmp ult i16 %i.ba, 48
  br i1 %i.bb, label %of_dpa_flow_cmd.exit, label %rocker_tlv_put_le32.exit.i.i

rocker_tlv_put_le32.exit.i.i:                     ; preds = %bb.p
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 280
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = sub i64 %i.az, %i.bd
  %i.bf = trunc i64 %i.be to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 %i.bf, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  store ptr %i.f, ptr %7, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 4, ptr %i.bg, align 8
  %i.bh = call i64 @iov_size(ptr noundef nonnull %7, i32 noundef 1) #17 ; 3 uses
  %i.bi = trunc i64 %i.bh to i32                  ; 2 uses
  %i.bj = add i32 %i.bi, 15
  %i.bk = and i32 %i.bj, -8                       ; 3 uses
  store i32 1, ptr %2, align 8
  %i.bl = trunc i64 %i.bh to i16
end_hunk_0
