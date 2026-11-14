Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/x509_create?download=true
inline.NumInlined: 11
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@mbedtls_oid_from_numeric_string:bb.a
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !0

.loopexit:                                        ; preds = %.lr.ph.i, %bb.e
  %i.ao = phi ptr [ %i.e, %bb.e ], [ %i.af, %.lr.ph.i ] ; 2 uses
  %.1.ph.ph = phi i32 [ %i.am, %bb.e ], [ %.075, %.lr.ph.i ]
  store ptr %i.ao, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %.loopexit, %bb.c
  %i.ap = phi ptr [ %i.ae, %bb.c ], [ %i.ao, %.loopexit ] ; 3 uses
  %.1.ph = phi i32 [ %i.ad, %bb.c ], [ %.1.ph.ph, %.loopexit ] ; 3 uses
  %i.aq = icmp ult i32 %.1.ph, 3
  %.not67 = icmp ult ptr %i.ap, %i.e
  %or.cond102 = select i1 %i.aq, i1 %.not67, i1 false
  br i1 %or.cond102, label %bb.g, label %oid_parse_number.exit

bb.g:                                             ; preds = %bb.f
  %i.ar = load i8, ptr %i.ap, align 1, !tbaa !10
  %.not68 = icmp eq i8 %i.ar, 46
  br i1 %.not68, label %bb.h, label %oid_parse_number.exit

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  store ptr %i.as, ptr %i.a, align 8, !tbaa !17
  %i.at = call fastcc i32 @oid_parse_number(ptr noundef %i.c, ptr noundef %i.a, ptr noundef nonnull %i.e) ; 2 uses
  %.not69 = icmp eq i32 %i.at, 0
  br i1 %.not69, label %bb.i, label %oid_parse_number.exit

bb.i:                                             ; preds = %bb.h
  %i.au = icmp ne i32 %.1.ph, 2
  %i.av = load i32, ptr %i.c, align 4             ; 3 uses
  %i.aw = icmp ugt i32 %i.av, 39
  %or.cond3 = select i1 %i.au, i1 %i.aw, i1 false
  br i1 %or.cond3, label %oid_parse_number.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !17  ; 4 uses
  %i.ay = icmp ult ptr %i.ax, %i.e
  br i1 %i.ay, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.az = load i8, ptr %i.ax, align 1, !tbaa !10
  %i.ba = icmp eq i8 %i.az, 46
  br i1 %i.ba, label %bb.l, label %oid_parse_number.exit

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 1 ; 2 uses
  store ptr %i.bb, ptr %i.a, align 8, !tbaa !17
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %i.bc = phi ptr [ %i.bb, %bb.l ], [ %i.ax, %bb.j ]
  %i.bd = mul nuw nsw i32 %.1.ph, 40              ; 2 uses
  %i.be = xor i32 %i.bd, -1
  %i.bf = icmp ugt i32 %i.av, %i.be
  br i1 %i.bf, label %oid_parse_number.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = add i32 %i.av, %i.bd
  %i.bh = call fastcc i32 @oid_subidentifier_encode_into(ptr noundef %i.d, ptr noundef nonnull %i.z, i32 noundef %i.bg) ; 2 uses
  %.not70 = icmp eq i32 %i.bh, 0
  br i1 %.not70, label %.preheader, label %oid_parse_number.exit

.preheader:                                       ; preds = %bb.n, %bb.s
  %i.bi = phi ptr [ %i.bq, %bb.s ], [ %i.bc, %bb.n ]
  %i.bj = icmp ult ptr %i.bi, %i.e
  br i1 %i.bj, label %bb.o, label %bb.t

bb.o:                                             ; preds = %.preheader
  %i.bk = call fastcc i32 @oid_parse_number(ptr noundef %i.b, ptr noundef %i.a, ptr noundef nonnull %i.e) ; 2 uses
  %.not71 = icmp eq i32 %i.bk, 0
  br i1 %.not71, label %bb.p, label %oid_parse_number.exit

bb.p:                                             ; preds = %bb.o
  %i.bl = load ptr, ptr %i.a, align 8, !tbaa !17  ; 4 uses
  %i.bm = icmp ult ptr %i.bl, %i.e
  br i1 %i.bm, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bn = load i8, ptr %i.bl, align 1, !tbaa !10
  %i.bo = icmp eq i8 %i.bn, 46
  br i1 %i.bo, label %bb.r, label %oid_parse_number.exit

bb.r:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 1 ; 2 uses
  store ptr %i.bp, ptr %i.a, align 8, !tbaa !17
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %i.bq = phi ptr [ %i.bp, %bb.r ], [ %i.bl, %bb.p ]
  %i.br = load i32, ptr %i.b, align 4, !tbaa !9
  %i.bs = call fastcc i32 @oid_subidentifier_encode_into(ptr noundef %i.d, ptr noundef nonnull %i.z, i32 noundef %i.br) ; 2 uses
  %.not72 = icmp eq i32 %i.bs, 0
  br i1 %.not72, label %.preheader, label %oid_parse_number.exit, !llvm.loop !30

bb.t:                                             ; preds = %.preheader
  %i.bt = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.bu = load ptr, ptr %i.x, align 8, !tbaa !16  ; 3 uses
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw                    ; 3 uses
  %i.by = tail call noalias ptr @calloc(i64 noundef %i.bx, i64 noundef 1) #14 ; 3 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %oid_parse_number.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.by, ptr align 1 %i.bu, i64 %i.bx, i1 false)
  tail call void @free(ptr noundef %i.bu) #13
  store ptr %i.by, ptr %i.x, align 8, !tbaa !16
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bx, ptr %i.ca, align 8, !tbaa !19
  store i32 6, ptr %0, align 8, !tbaa !33
  br label %bb.v

oid_parse_number.exit:                            ; preds = %bb.d, %bb.q, %bb.s, %bb.o, %.lr.ph.preheader.i, %bb.t, %bb.m, %bb.k, %bb.i, %bb.g, %bb.f, %bb.n, %bb.h
  %.053 = phi i32 [ -141, %bb.t ], [ -104, %bb.i ], [ -104, %bb.f ], [ %i.at, %bb.h ], [ -104, %bb.q ], [ -104, %bb.k ], [ %i.bh, %bb.n ], [ -104, %bb.g ], [ -104, %.lr.ph.preheader.i ], [ -104, %bb.m ], [ %i.bs, %bb.s ], [ %i.bk, %bb.o ], [ -104, %bb.d ]
  %i.cb = load ptr, ptr %i.x, align 8, !tbaa !16
  tail call void @free(ptr noundef %i.cb) #13
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i8 0, i64 16, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %oid_parse_number.exit, %bb.u
  %.054 = phi i32 [ %.053, %oid_parse_number.exit ], [ 0, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.v, %bb.b, %._crit_edge
  %.2 = phi i32 [ -104, %._crit_edge ], [ %.054, %bb.v ], [ -141, %bb.b ], [ -104, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -104, 1) i32 @oid_parse_number(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #3 {
bb.a:
  store i32 0, ptr %0, align 4, !tbaa !9
  %i.a = load ptr, ptr %1, align 8, !tbaa !17     ; 4 uses
  %i.b = icmp ult ptr %i.a, %2
  br i1 %i.b, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = load i8, ptr %i.a, align 1, !tbaa !10
  %i.d = add i8 %i.c, -48
  %or.cond.peel = icmp ult i8 %i.d, 10
  br i1 %or.cond.peel, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph.preheader
  %i.e = load i8, ptr %i.a, align 1, !tbaa !10
  %i.f = sext i8 %i.e to i32
  %i.g = add nsw i32 %i.f, -48                    ; 2 uses
  store i32 %i.g, ptr %0, align 4, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  store ptr %i.h, ptr %1, align 8, !tbaa !17
  %exitcond.peel.not = icmp eq ptr %i.h, %2
  br i1 %exitcond.peel.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %i.i = phi i32 [ %i.r, %bb.d ], [ %i.g, %bb.b ] ; 2 uses
  %i.j = phi ptr [ %i.s, %bb.d ], [ %i.h, %bb.b ] ; 3 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !10
  %i.l = add i8 %i.k, -48
  %or.cond = icmp ult i8 %i.l, 10
  br i1 %or.cond, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.lr.ph
  %i.m = icmp ugt i32 %i.i, 429496729
  br i1 %i.m, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = mul nuw i32 %i.i, 10                     ; 2 uses
  store i32 %i.n, ptr %0, align 4, !tbaa !9
  %i.o = load i8, ptr %i.j, align 1, !tbaa !10
  %i.p = sext i8 %i.o to i32
  %i.q = add i32 %i.n, -48
  %i.r = add i32 %i.q, %i.p                       ; 2 uses
  store i32 %i.r, ptr %0, align 4, !tbaa !9
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 3 uses
  store ptr %i.s, ptr %1, align 8, !tbaa !17
  %exitcond.not = icmp eq ptr %i.s, %2
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !0

.critedge:                                        ; preds = %bb.c, %.lr.ph, %bb.d, %.lr.ph.preheader, %bb.b, %bb.a
  %.011 = phi i32 [ -104, %bb.a ], [ -104, %.lr.ph.preheader ], [ 0, %bb.b ], [ -104, %bb.c ], [ 0, %bb.d ], [ 0, %.lr.ph ]
  ret i32 %.011
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -138, 1) i32 @oid_subidentifier_encode_into(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 {
  %.not.i = icmp ult i32 %2, 128
  br i1 %.not.i, label %oid_subidentifier_num_bytes.exit, label %4

4:                                                ; preds = %3
  %.not.i.1 = icmp ult i32 %2, 16384
  br i1 %.not.i.1, label %oid_subidentifier_num_bytes.exit, label %bb.a

bb.a:                                             ; preds = %4
  %.not.i.2 = icmp ult i32 %2, 2097152
  br i1 %.not.i.2, label %oid_subidentifier_num_bytes.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.3 = icmp ult i32 %2, 268435456
  br i1 %.not.i.3, label %oid_subidentifier_num_bytes.exit, label %5

5:                                                ; preds = %bb.b
  br label %oid_subidentifier_num_bytes.exit

oid_subidentifier_num_bytes.exit:                 ; preds = %5, %bb.b, %bb.a, %4, %3
  %6 = phi i1 [ false, %3 ], [ true, %4 ], [ false, %bb.a ], [ false, %bb.b ], [ false, %5 ]
  %indvars.iv.lcssa = phi i64 [ 2, %3 ], [ 3, %4 ], [ 4, %bb.a ], [ 5, %bb.b ], [ 6, %5 ] ; 3 uses
  %.not22 = phi i1 [ true, %3 ], [ false, %4 ], [ false, %bb.a ], [ false, %bb.b ], [ false, %5 ]
  %.0.i.lcssa = phi i64 [ 0, %3 ], [ 1, %4 ], [ 2, %bb.a ], [ 3, %bb.b ], [ 4, %5 ] ; 2 uses
  %.lcssa = phi i64 [ 1, %3 ], [ 2, %4 ], [ 3, %bb.a ], [ 4, %bb.b ], [ 5, %5 ] ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = sub i64 %i.b, %i.c
  %.not21 = icmp ugt i64 %i.d, %.0.i.lcssa
  br i1 %.not21, label %bb.c, label %bb.d

bb.c:                                             ; preds = %oid_subidentifier_num_bytes.exit
  %i.e = trunc i32 %2 to i8
  %i.f = and i8 %i.e, 127
  %i.g = getelementptr i8, ptr %i.a, i64 %.0.i.lcssa
  store i8 %i.f, ptr %i.g, align 1, !tbaa !10
  br i1 %.not22, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %xtraiter = and i64 %indvars.iv.lcssa, 1
  br i1 %6, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %indvars.iv.lcssa, -2
  %7 = add i64 %unroll_iter, -4
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.024.epil.init = phi i64 [ 2, %.lr.ph.preheader ], [ %i.x, %._crit_edge.loopexit.unr-lcssa ]
  %.018.in23.epil.init = phi i32 [ %2, %.lr.ph.preheader ], [ %.018.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod25 = trunc i64 %indvars.iv.lcssa to i1
  tail call void @llvm.assume(i1 %lcmp.mod25)
  %.018.epil = lshr i32 %.018.in23.epil.init, 7
  %i.h = trunc i32 %.018.epil to i8
  %i.i = or i8 %i.h, -128
  %i.j = load ptr, ptr %0, align 8, !tbaa !17
  %i.k = sub nuw nsw i64 %.lcssa, %.024.epil.init
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  store i8 %i.i, ptr %i.l, align 1, !tbaa !10
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %.lcssa
  store ptr %i.n, ptr %0, align 8, !tbaa !17
  br label %bb.d

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.024 = phi i64 [ 2, %.lr.ph.preheader.new ], [ %i.x, %.lr.ph ] ; 3 uses
  %.018.in23 = phi i32 [ %2, %.lr.ph.preheader.new ], [ %.018.1, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ] ; 2 uses
  %.018 = lshr i32 %.018.in23, 7
  %i.o = trunc i32 %.018 to i8
  %i.p = or i8 %i.o, -128
  %i.q = load ptr, ptr %0, align 8, !tbaa !17
  %i.r = sub nuw nsw i64 %.lcssa, %.024
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r
  store i8 %i.p, ptr %i.s, align 1, !tbaa !10
  %.neg = xor i64 %.024, -1
  %.018.1 = lshr i32 %.018.in23, 14               ; 3 uses
  %i.t = trunc i32 %.018.1 to i8
  %i.u = or i8 %i.t, -128
  %i.v = load ptr, ptr %0, align 8, !tbaa !17
  %8 = getelementptr i8, ptr %i.v, i64 %.lcssa
  %i.w = getelementptr i8, ptr %8, i64 %.neg
  store i8 %i.u, ptr %i.w, align 1, !tbaa !10
  %i.x = add nuw nsw i64 %.024, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, %7
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !34

bb.d:                                             ; preds = %oid_subidentifier_num_bytes.exit, %._crit_edge
  %.019 = phi i32 [ 0, %._crit_edge ], [ -138, %oid_subidentifier_num_bytes.exit ]
  ret i32 %.019
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define hidden range(i32 -10240, 1) i32 @mbedtls_x509_string_to_names(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %2 = alloca %struct.mbedtls_asn1_buf, align 8   ; 6 uses
  %i.b = alloca [256 x i8], align 16              ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #15
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.d ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) @__const.mbedtls_x509_string_to_names.oid, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i64 0, ptr %i.c, align 8, !tbaa !40
  %i.f = load ptr, ptr %0, align 8, !tbaa !41
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.lr.ph, label %.critedge86

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.bp
  %.048211 = phi i32 [ 0, %.lr.ph ], [ %.2148, %bb.bp ] ; 2 uses
  %.049210 = phi i32 [ 1, %.lr.ph ], [ %.3, %bb.bp ]
  %.052209 = phi ptr [ null, %.lr.ph ], [ %.153146, %bb.bp ] ; 2 uses
  %.054208 = phi ptr [ %1, %.lr.ph ], [ %i.hc, %bb.bp ] ; 16 uses
  %.058206 = phi ptr [ %1, %.lr.ph ], [ %.361, %bb.bp ] ; 30 uses
  %.062205 = phi i32 [ -9088, %.lr.ph ], [ %.264, %bb.bp ] ; 3 uses
  %.not77 = icmp eq i32 %.049210, 0
  %.pre222 = load i8, ptr %.054208, align 1, !tbaa !10 ; 2 uses
  br i1 %.not77, label %bb.x, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i8 %.pre222, 61
  br i1 %i.i, label %bb.d, label %bb.bp

bb.d:                                             ; preds = %bb.c
  %i.j = ptrtoint ptr %.054208 to i64
  %i.k = ptrtoint ptr %.058206 to i64
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  switch i64 %i.l, label %x509_attr_descr_from_name.exit [
    i64 2, label %sub_0
    i64 10, label %bb.e
    i64 1, label %bb.f
    i64 11, label %bb.g
    i64 16, label %bb.h
    i64 8, label %bb.i
    i64 22, label %bb.j
    i64 19, label %bb.k
    i64 12, label %bb.l
    i64 13, label %bb.n
    i64 5, label %bb.q
    i64 7, label %bb.r
    i64 9, label %bb.s
    i64 15, label %bb.u
  ]

sub_0:                                            ; preds = %bb.d
  %i.m = load i8, ptr %.058206, align 1           ; 6 uses
  %i.n = zext i8 %i.m to i32                      ; 2 uses
  switch i8 %i.m, label %sub_0177 [
    i8 67, label %.tail.thread
    i8 79, label %.tail172.thread238
  ]

.tail.thread:                                     ; preds = %sub_0
  %i.o = getelementptr inbounds nuw i8, ptr %.058206, i64 1
  %i.p = load i8, ptr %i.o, align 1
  %i.q = icmp eq i8 %i.p, 78
  br i1 %i.q, label %bb.v, label %.tail184

bb.e:                                             ; preds = %bb.d
  %i.r = call i32 @strncmp(ptr noundef nonnull dereferenceable(11) @.str.2, ptr noundef nonnull readonly dereferenceable(1) %.058206, i64 noundef 10) #15
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.v, label %bb.o

bb.f:                                             ; preds = %bb.d
  %rhsc.i = load i8, ptr %.058206, align 1
  %switch.tableidx = add i8 %rhsc.i, -67          ; 3 uses
  %i.t = icmp ult i8 %switch.tableidx, 16
  br i1 %i.t, label %switch.hole_check, label %x509_attr_descr_from_name.exit

bb.g:                                             ; preds = %bb.d
  %i.u = call i32 @strncmp(ptr noundef nonnull dereferenceable(12) @.str.5, ptr noundef nonnull readonly dereferenceable(1) %.058206, i64 noundef 11) #15
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.v, label %bb.p

bb.h:                                             ; preds = %bb.d
  %i.w = call i32 @strncmp(ptr noundef nonnull dereferenceable(17) @.str.8, ptr noundef nonnull readonly dereferenceable(1) %.058206, i64 noundef 16) #15
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.v, label %x509_attr_descr_from_name.exit

bb.i:                                             ; preds = %bb.d
  %i.y = call i32 @strncmp(ptr noundef nonnull dereferenceable(9) @.str.11, ptr noundef nonnull readonly dereferenceable(1) %.058206, i64 noundef 8) #15
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.v, label %.thread91.thread.i

.tail172.thread238:                               ; preds = %sub_0
  %i.aa = getelementptr inbounds nuw i8, ptr %.058206, i64 1
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = icmp eq i8 %i.ab, 85
  br i1 %i.ac, label %bb.v, label %.tail184

bb.j:                                             ; preds = %bb.d
  %i.ad = call i32 @strncmp(ptr noundef nonnull dereferenceable(23) @.str.16, ptr noundef nonnull readonly dereferenceable(1) %.058206, i64 noundef 22) #15
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.v, label %x509_attr_descr_from_name.exit

sub_0177:                                         ; preds = %sub_0
  %i.af = sub nsw i32 83, %i.n                    ; 2 uses
  %.not214 = icmp eq i8 %i.m, 83                  ; 2 uses
  br i1 %.not214, label %sub_1178, label %.tail176

sub_1178:                                         ; preds = %sub_0177
  %i.ag = getelementptr inbounds nuw i8, ptr %.058206, i64 1
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = zext i8 %i.ah to i32
  %i.aj = sub nsw i32 84, %i.ai
  br label %.tail176

.tail176:                                         ; preds = %sub_0177, %sub_1178
  %i.ak = phi i32 [ %i.af, %sub_0177 ], [ %i.aj, %sub_1178 ]
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.v, label %sub_0181

bb.k:                                             ; preds = %bb.d
  %i.am = call i32 @strncmp(ptr noundef nonnull dereferenceable(20) @.str.19, ptr noundef nonnull readonly dereferenceable(1) %.058206, i64 noundef 19) #15
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.v, label %bb.t

bb.l:                                             ; preds = %bb.d
  %i.ao = call i32 @strncmp(ptr noundef nonnull dereferenceable(13) @.str.20, ptr noundef nonnull readonly dereferenceable(1) %.058206, i64 noundef 12) #15
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = call i32 @strncmp(ptr noundef nonnull dereferenceable(13) @.str.21, ptr noundef nonnull readonly dereferenceable(1) %.058206, i64 noundef 12) #15
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.v, label %x509_attr_descr_from_name.exit

bb.n:                                             ; preds = %bb.d
  %i.as = call i32 @strncmp(ptr noundef nonnull dereferenceable(14) @.str.23, ptr noundef nonnull readonly dereferenceable(1) %.058206, i64 noundef 13) #15
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.v, label %x509_attr_descr_from_name.exit

bb.o:                                             ; preds = %bb.e
  %i.au = call i32 @strncmp(ptr noundef nonnull dereferenceable(11) @.str.25, ptr noundef nonnull readonly dereferenceable(1) %.058206, i64 noundef 10) #15
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.v, label %x509_attr_descr_from_name.exit

bb.p:                                             ; preds = %bb.g
  %i.aw = call i32 @strncmp(ptr noundef nonnull dereferenceable(12) @.str.27, ptr noundef nonnull readonly dereferenceable(1) %.058206, i64 noundef 11) #15
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.v, label %x509_attr_descr_from_name.exit

bb.q:                                             ; preds = %bb.d
  %i.ay = call i32 @strncmp(ptr noundef nonnull dereferenceable(6) @.str.29, ptr noundef nonnull readonly dereferenceable(1) %.058206, i64 noundef 5) #15
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.v, label %x509_attr_descr_from_name.exit

bb.r:                                             ; preds = %bb.d
  %i.ba = call i32 @strncmp(ptr noundef nonnull dereferenceable(8) @.str.31, ptr noundef nonnull readonly dereferenceable(1) %.058206, i64 noundef 7) #15
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.v, label %x509_attr_descr_from_name.exit

sub_0181:                                         ; preds = %.tail176
  br i1 %.not214, label %sub_1182, label %.tail180

sub_1182:                                         ; preds = %sub_0181
  %i.bc = getelementptr inbounds nuw i8, ptr %.058206, i64 1
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = zext i8 %i.bd to i32
  %i.bf = sub nsw i32 78, %i.be
  br label %.tail180

.tail180:                                         ; preds = %sub_0181, %sub_1182
  %i.bg = phi i32 [ %i.af, %sub_0181 ], [ %i.bf, %sub_1182 ]
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.v, label %sub_0185

bb.s:                                             ; preds = %bb.d
  %i.bi = call i32 @strncmp(ptr noundef nonnull dereferenceable(10) @.str.34, ptr noundef nonnull readonly dereferenceable(1) %.058206, i64 noundef 9) #15
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.v, label %.thread85.i

sub_0185:                                         ; preds = %.tail180
  %cond = icmp eq i8 %i.m, 71
  br i1 %cond, label %.tail184.thread, label %sub_0189

.tail184:                                         ; preds = %.tail172.thread238, %.tail.thread
  %i.bk = icmp eq i8 %i.m, 71
  br i1 %i.bk, label %bb.v, label %sub_0189

.tail184.thread:                                  ; preds = %sub_0185
  %i.bl = getelementptr inbounds nuw i8, ptr %.058206, i64 1
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = icmp eq i8 %i.bm, 78
  br i1 %i.bn, label %bb.v, label %x509_attr_descr_from_name.exit

.thread91.thread.i:                               ; preds = %bb.i
  %i.bo = call i32 @strncmp(ptr noundef nonnull dereferenceable(9) @.str.37, ptr noundef nonnull readonly dereferenceable(1) %.058206, i64 noundef 8) #15
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.v, label %x509_attr_descr_from_name.exit

.thread85.i:                                      ; preds = %bb.s
  %i.bq = call i32 @strncmp(ptr noundef nonnull dereferenceable(10) @.str.39, ptr noundef nonnull readonly dereferenceable(1) %.058206, i64 noundef 9) #15
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.v, label %x509_attr_descr_from_name.exit

bb.t:                                             ; preds = %bb.k
  %i.bs = call i32 @strncmp(ptr noundef nonnull dereferenceable(20) @.str.41, ptr noundef nonnull readonly dereferenceable(1) %.058206, i64 noundef 19) #15
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.v, label %x509_attr_descr_from_name.exit

bb.u:                                             ; preds = %bb.d
  %i.bu = call i32 @strncmp(ptr noundef nonnull dereferenceable(16) @.str.43, ptr noundef nonnull readonly dereferenceable(1) %.058206, i64 noundef 15) #15
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.v, label %x509_attr_descr_from_name.exit

sub_0189:                                         ; preds = %sub_0185, %.tail184
  %i.bw = sub nsw i32 68, %i.n
  %.not217 = icmp eq i8 %i.m, 68
  br i1 %.not217, label %sub_1190, label %.tail188

sub_1190:                                         ; preds = %sub_0189
  %i.bx = getelementptr inbounds nuw i8, ptr %.058206, i64 1
  %i.by = load i8, ptr %i.bx, align 1
  %i.bz = zext i8 %i.by to i32
  %i.ca = sub nsw i32 67, %i.bz
  br label %.tail188

.tail188:                                         ; preds = %sub_0189, %sub_1190
  %i.cb = phi i32 [ %i.bw, %sub_0189 ], [ %i.ca, %sub_1190 ]
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.v, label %x509_attr_descr_from_name.exit

x509_attr_descr_from_name.exit:                   ; preds = %switch.hole_check, %bb.f, %.tail184.thread, %bb.d, %bb.p, %bb.h, %bb.r, %bb.q, %.thread91.thread.i, %bb.n, %bb.j, %bb.o, %bb.m, %bb.t, %.thread85.i, %.tail188, %bb.u
  %i.cd = call i32 @mbedtls_oid_from_numeric_string(ptr noundef nonnull %2, ptr noundef %.058206, i64 noundef %i.l)
  %.not78 = icmp eq i32 %i.cd, 0
  br i1 %.not78, label %bb.w, label %.critedge86

switch.hole_check:                                ; preds = %bb.f
  %switch.maskindex = zext nneg i8 %switch.tableidx to i16
  %switch.shifted = lshr i16 -28159, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %x509_attr_descr_from_name.exit

switch.lookup:                                    ; preds = %switch.hole_check
  %i.ce = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.mbedtls_x509_string_to_names, i64 %i.ce
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.v

bb.v:                                             ; preds = %switch.lookup, %.tail184.thread, %.tail172.thread238, %.tail.thread, %bb.e, %.tail188, %bb.r, %bb.g, %bb.u, %bb.n, %bb.h, %bb.t, %.tail180, %bb.i, %.thread85.i, %bb.o, %.thread91.thread.i, %bb.j, %bb.q, %.tail176, %.tail184, %bb.k, %bb.p, %bb.l, %bb.s, %bb.m
  %..0.i.ph = phi ptr [ getelementptr inbounds nuw (i8, ptr @x509_attrs, i64 448), %bb.m ], [ getelementptr inbounds nuw (i8, ptr @x509_attrs, i64 672), %bb.s ], [ getelementptr inbounds nuw (i8, ptr @x509_attrs, i64 416), %bb.l ], [ getelementptr inbounds nuw (i8, ptr @x509_attrs, i64 544), %bb.p ], [ getelementptr inbounds nuw (i8, ptr @x509_attrs, i64 384), %bb.k ], [ getelementptr inbounds nuw (i8, ptr @x509_attrs, i64 704), %.tail184 ], [ getelementptr inbounds nuw (i8, ptr @x509_attrs, i64 352), %.tail176 ], [ getelementptr inbounds nuw (i8, ptr @x509_attrs, i64 576), %bb.q ], [ getelementptr inbounds nuw (i8, ptr @x509_attrs, i64 320), %bb.j ], [ getelementptr inbounds nuw (i8, ptr @x509_attrs, i64 736), %.thread91.thread.i ], [ getelementptr inbounds nuw (i8, ptr @x509_attrs, i64 288), %.tail172.thread238 ], [ getelementptr inbounds nuw (i8, ptr @x509_attrs, i64 512), %bb.o ], [ getelementptr inbounds nuw (i8, ptr @x509_attrs, i64 32), %bb.e ], [ getelementptr inbounds nuw (i8, ptr @x509_attrs, i64 768), %.thread85.i ], [ getelementptr inbounds nuw (i8, ptr @x509_attrs, i64 224), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @x509_attrs, i64 640), %.tail180 ], [ @x509_attrs, %.tail.thread ], [ getelementptr inbounds nuw (i8, ptr @x509_attrs, i64 800), %bb.t ], [ getelementptr inbounds nuw (i8, ptr @x509_attrs, i64 160), %bb.h ], [ getelementptr inbounds nuw (i8, ptr @x509_attrs, i64 480), %bb.n ], [ getelementptr inbounds nuw (i8, ptr @x509_attrs, i64 704), %.tail184.thread ], [ getelementptr inbounds nuw (i8, ptr @x509_attrs, i64 832), %bb.u ], [ getelementptr inbounds nuw (i8, ptr @x509_attrs, i64 96), %bb.g ], [ getelementptr inbounds nuw (i8, ptr @x509_attrs, i64 608), %bb.r ], [ %switch.load, %switch.lookup ], [ getelementptr inbounds nuw (i8, ptr @x509_attrs, i64 864), %.tail188 ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %..0.i.ph, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !43 ; 2 uses
  %i.ch = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cg) #15 ; 3 uses
  store i64 %i.ch, ptr %i.g, align 8, !tbaa !19
  %i.ci = call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.ch) #14 ; 2 uses
  store ptr %i.ci, ptr %i.h, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ci, ptr nonnull align 1 %i.cg, i64 %i.ch, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %x509_attr_descr_from_name.exit, %bb.v
  %..0.i138 = phi ptr [ %..0.i.ph, %bb.v ], [ null, %x509_attr_descr_from_name.exit ]
  %.1 = phi i32 [ 0, %bb.v ], [ 1, %x509_attr_descr_from_name.exit ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.054208, i64 1
  %.pre = load i8, ptr %.054208, align 1, !tbaa !10
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.b
  %i.ck = phi i8 [ %.pre222, %bb.b ], [ %.pre, %bb.w ]
  %.159.ph = phi ptr [ %.058206, %bb.b ], [ %i.cj, %bb.w ] ; 9 uses
  %.153.ph = phi ptr [ %.052209, %bb.b ], [ %..0.i138, %bb.w ] ; 4 uses
  %.2.ph = phi i32 [ %.048211, %bb.b ], [ %.1, %bb.w ] ; 4 uses
  %i.cl = icmp eq i8 %i.ck, 44
  br i1 %i.cl, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cm = getelementptr inbounds i8, ptr %.054208, i64 -1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !10
  %.not80 = icmp ne i8 %i.cn, 92
  %i.co = icmp eq ptr %.054208, %i.e
  %or.cond = select i1 %.not80, i1 true, i1 %i.co
  br i1 %or.cond, label %bb.aa, label %bb.bp

bb.z:                                             ; preds = %bb.x
  %.old = icmp eq ptr %.054208, %i.e
  br i1 %.old, label %bb.aa, label %bb.bp

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cp = icmp eq ptr %.159.ph, %.054208
  br i1 %i.cp, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cq = load ptr, ptr %i.h, align 8, !tbaa !16
  br label %.critedge86.sink.split

bb.ac:                                            ; preds = %bb.aa
  %i.cr = load i8, ptr %.159.ph, align 1, !tbaa !10
  %i.cs = icmp eq i8 %i.cr, 35
  br i1 %i.cs, label %bb.ad, label %bb.at

bb.ad:                                            ; preds = %bb.ac
  %i.ct = getelementptr inbounds nuw i8, ptr %.159.ph, i64 1
  %i.cu = ptrtoint ptr %.054208 to i64
  %i.cv = ptrtoint ptr %.159.ph to i64
  %i.cw = xor i64 %i.cv, -1
  %i.cx = add i64 %i.cw, %i.cu                    ; 3 uses
  %i.cy = and i64 %i.cx, 1
  %.not.i = icmp eq i64 %i.cy, 0
  br i1 %.not.i, label %bb.ae, label %parse_attribute_value_hex_der_encoded.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.cz = lshr exact i64 %i.cx, 1                 ; 3 uses
  %i.da = add i64 %i.cx, -521
  %or.cond.i = icmp ult i64 %i.da, -520
  br i1 %or.cond.i, label %parse_attribute_value_hex_der_encoded.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.db = call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.cz) #14 ; 7 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %parse_attribute_value_hex_der_encoded.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.af, %bb.ao
  %.03959.i = phi i64 [ %i.eh, %bb.ao ], [ 0, %bb.af ] ; 3 uses
  %i.dd = shl nuw nsw i64 %.03959.i, 1
  %i.de = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.dd ; 2 uses
  %i.df = load i8, ptr %i.de, align 1, !tbaa !10  ; 4 uses
  %i.dg = sext i8 %i.df to i32                    ; 3 uses
  %i.dh = add i8 %i.df, -48
  %or.cond.i.i.i = icmp ult i8 %i.dh, 10
  br i1 %or.cond.i.i.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.i
  %i.di = add nsw i32 %i.dg, -48
  br label %hex_to_int.exit.i.i

bb.ah:                                            ; preds = %.lr.ph.i
  %i.dj = add i8 %i.df, -97
  %or.cond5.i.i.i = icmp ult i8 %i.dj, 6
  br i1 %or.cond5.i.i.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dk = add nsw i32 %i.dg, -87
  br label %hex_to_int.exit.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.dl = add i8 %i.df, -65
  %or.cond8.i.i.i = icmp ult i8 %i.dl, 6
  %i.dm = add nsw i32 %i.dg, -55
  %i.dn = select i1 %or.cond8.i.i.i, i32 %i.dm, i32 -1
  br label %hex_to_int.exit.i.i

hex_to_int.exit.i.i:                              ; preds = %bb.aj, %bb.ai, %bb.ag
  %i.do = phi i32 [ %i.di, %bb.ag ], [ %i.dk, %bb.ai ], [ %i.dn, %bb.aj ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.de, i64 1
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !10  ; 4 uses
  %i.dr = sext i8 %i.dq to i32                    ; 3 uses
  %i.ds = add i8 %i.dq, -48
  %or.cond.i9.i.i = icmp ult i8 %i.ds, 10
  br i1 %or.cond.i9.i.i, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %hex_to_int.exit.i.i
  %i.dt = add nsw i32 %i.dr, -48
  br label %hexpair_to_int.exit.i

bb.al:                                            ; preds = %hex_to_int.exit.i.i
  %i.du = add i8 %i.dq, -97
  %or.cond5.i10.i.i = icmp ult i8 %i.du, 6
  br i1 %or.cond5.i10.i.i, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.dv = add nsw i32 %i.dr, -87
  br label %hexpair_to_int.exit.i

bb.an:                                            ; preds = %bb.al
  %i.dw = add i8 %i.dq, -65
  %or.cond8.i11.i.i = icmp ult i8 %i.dw, 6
  %i.dx = add nsw i32 %i.dr, -55
  %i.dy = select i1 %or.cond8.i11.i.i, i32 %i.dx, i32 -1
  br label %hexpair_to_int.exit.i

hexpair_to_int.exit.i:                            ; preds = %bb.an, %bb.am, %bb.ak
  %i.dz = phi i32 [ %i.dt, %bb.ak ], [ %i.dv, %bb.am ], [ %i.dy, %bb.an ] ; 2 uses
  %i.ea = icmp ne i32 %i.do, -1
  %i.eb = icmp ne i32 %i.dz, -1
  %or.cond.i.i = select i1 %i.ea, i1 %i.eb, i1 false
  %i.ec = shl nsw i32 %i.do, 4
  %i.ed = or i32 %i.dz, %i.ec
  %.0.i.i = select i1 %or.cond.i.i, i32 %i.ed, i32 -1 ; 2 uses
  %i.ee = icmp sgt i32 %.0.i.i, -1
  br i1 %i.ee, label %bb.ao, label %parse_attribute_value_hex_der_encoded.exit.thread.sink.split

bb.ao:                                            ; preds = %hexpair_to_int.exit.i
  %i.ef = trunc i32 %.0.i.i to i8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.db, i64 %.03959.i
  store i8 %i.ef, ptr %i.eg, align 1, !tbaa !10
  %i.eh = add nuw nsw i64 %.03959.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.eh, %i.cz
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !35

._crit_edge.i:                                    ; preds = %bb.ao
  %.pre.i = load i8, ptr %i.db, align 1, !tbaa !10 ; 2 uses
  %i.ei = zext i8 %.pre.i to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.ej = getelementptr inbounds nuw i8, ptr %i.db, i64 1
  store ptr %i.ej, ptr %i.a, align 8, !tbaa !17
  %i.ek = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.cz
  %i.el = call i32 @mbedtls_asn1_get_len(ptr noundef nonnull %i.a, ptr noundef nonnull %i.ek, ptr noundef nonnull %i.c) #13
  %.not49.i = icmp eq i32 %i.el, 0
  br i1 %.not49.i, label %bb.ap, label %parse_attribute_value_hex_der_encoded.exit.thread159

bb.ap:                                            ; preds = %._crit_edge.i
  %i.em = load i64, ptr %i.c, align 8, !tbaa !40  ; 5 uses
  %i.en = icmp ugt i64 %i.em, 256
  br i1 %i.en, label %parse_attribute_value_hex_der_encoded.exit.thread159, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.eo = icmp ult i8 %.pre.i, 32
  br i1 %i.eo, label %bb.ar, label %..loopexit_crit_edge.i

..loopexit_crit_edge.i:                           ; preds = %bb.aq
  %.pre66.i = load ptr, ptr %i.a, align 8, !tbaa !17
  br label %parse_attribute_value_hex_der_encoded.exit

bb.ar:                                            ; preds = %bb.aq
  %i.ep = shl nuw i32 1, %i.ei
  %i.eq = and i32 %i.ep, 1347948544
  %.not50.i = icmp ne i32 %i.eq, 0
  %.not5160.i = icmp ne i64 %i.em, 0
  %or.cond63.i = and i1 %.not50.i, %.not5160.i
  %.pre67.i = load ptr, ptr %i.a, align 8, !tbaa !17 ; 3 uses
  br i1 %or.cond63.i, label %.lr.ph62.i, label %parse_attribute_value_hex_der_encoded.exit

bb.as:                                            ; preds = %.lr.ph62.i
  %i.er = add nuw nsw i64 %.061.i, 1              ; 2 uses
  %exitcond65.not.i = icmp eq i64 %i.er, %i.em
  br i1 %exitcond65.not.i, label %parse_attribute_value_hex_der_encoded.exit, label %.lr.ph62.i, !llvm.loop !36

.lr.ph62.i:                                       ; preds = %bb.ar, %bb.as
  %.061.i = phi i64 [ %i.er, %bb.as ], [ 0, %bb.ar ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.pre67.i, i64 %.061.i
  %i.et = load i8, ptr %i.es, align 1, !tbaa !10
  %i.eu = icmp eq i8 %i.et, 0
  br i1 %i.eu, label %parse_attribute_value_hex_der_encoded.exit.thread159, label %bb.as

parse_attribute_value_hex_der_encoded.exit.thread159: ; preds = %._crit_edge.i, %bb.ap, %.lr.ph62.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %parse_attribute_value_hex_der_encoded.exit.thread.sink.split

parse_attribute_value_hex_der_encoded.exit:       ; preds = %bb.as, %..loopexit_crit_edge.i, %bb.ar
  %i.ev = phi ptr [ %.pre66.i, %..loopexit_crit_edge.i ], [ %.pre67.i, %bb.ar ], [ %.pre67.i, %bb.as ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr align 1 %i.ev, i64 %i.em, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @free(ptr noundef %i.db) #13
  br label %bb.bm

parse_attribute_value_hex_der_encoded.exit.thread.sink.split: ; preds = %hexpair_to_int.exit.i, %parse_attribute_value_hex_der_encoded.exit.thread159
  call void @free(ptr noundef %i.db) #13
  br label %parse_attribute_value_hex_der_encoded.exit.thread

parse_attribute_value_hex_der_encoded.exit.thread: ; preds = %bb.ae, %bb.af, %bb.ad, %parse_attribute_value_hex_der_encoded.exit.thread.sink.split
  %.243.i153 = phi i32 [ -9088, %parse_attribute_value_hex_der_encoded.exit.thread.sink.split ], [ -141, %bb.af ], [ -9088, %bb.ae ], [ -9088, %bb.ad ]
  %i.ew = load ptr, ptr %i.h, align 8, !tbaa !16
  br label %.critedge86.sink.split

bb.at:                                            ; preds = %bb.ac
  %.not81 = icmp eq i32 %.2.ph, 0
  br i1 %.not81, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ex = load ptr, ptr %i.h, align 8, !tbaa !16
  br label %.critedge86.sink.split

bb.av:                                            ; preds = %bb.at
  %i.ey = ptrtoint ptr %.054208 to i64
  %i.ez = ptrtoint ptr %.159.ph to i64
  %i.fa = sub i64 %i.ey, %i.ez                    ; 2 uses
  %i.fb = trunc i64 %i.fa to i32
  %sext = shl i64 %i.fa, 32
  %i.fc = ashr exact i64 %sext, 32
  %i.fd = getelementptr inbounds i8, ptr %.159.ph, i64 %i.fc ; 3 uses
  %i.fe = icmp sgt i32 %i.fb, 0
  br i1 %i.fe, label %.lr.ph.i89, label %.loopexit

bb.aw:                                            ; preds = %bb.bk
  %.038.i.add = add nuw nsw i64 %.038.i.idx, 1    ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.129.i, i64 1 ; 2 uses
  %i.fg = icmp ult ptr %i.ff, %i.fd
  br i1 %i.fg, label %.lr.ph.i89, label %.loopexit, !llvm.loop !37

.lr.ph.i89:                                       ; preds = %bb.av, %bb.aw
  %.038.i.idx = phi i64 [ %.038.i.add, %bb.aw ], [ 0, %bb.av ] ; 3 uses
  %.02837.i = phi ptr [ %i.ff, %bb.aw ], [ %.159.ph, %bb.av ] ; 4 uses
  %.038.i.ptr = getelementptr inbounds nuw i8, ptr %i.b, i64 %.038.i.idx
  %i.fh = load i8, ptr %.02837.i, align 1, !tbaa !10 ; 2 uses
  %i.fi = icmp eq i8 %i.fh, 92
  br i1 %i.fi, label %bb.ax, label %bb.bk

bb.ax:                                            ; preds = %.lr.ph.i89
  %i.fj = getelementptr inbounds nuw i8, ptr %.02837.i, i64 1 ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.02837.i, i64 2 ; 3 uses
  %i.fl = icmp ult ptr %i.fk, %i.fd
  br i1 %i.fl, label %bb.ay, label %bb.bi

bb.ay:                                            ; preds = %bb.ax
  %i.fm = load i8, ptr %i.fj, align 1, !tbaa !10  ; 4 uses
  %i.fn = sext i8 %i.fm to i32                    ; 3 uses
  %i.fo = add i8 %i.fm, -48
  %or.cond.i.i.i90 = icmp ult i8 %i.fo, 10
  br i1 %or.cond.i.i.i90, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.fp = add nsw i32 %i.fn, -48
  br label %hex_to_int.exit.i.i93

bb.ba:                                            ; preds = %bb.ay
  %i.fq = add i8 %i.fm, -97
  %or.cond5.i.i.i91 = icmp ult i8 %i.fq, 6
  br i1 %or.cond5.i.i.i91, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.fr = add nsw i32 %i.fn, -87
  br label %hex_to_int.exit.i.i93

bb.bc:                                            ; preds = %bb.ba
  %i.fs = add i8 %i.fm, -65
  %or.cond8.i.i.i92 = icmp ult i8 %i.fs, 6
  %i.ft = add nsw i32 %i.fn, -55
  %i.fu = select i1 %or.cond8.i.i.i92, i32 %i.ft, i32 -1
  br label %hex_to_int.exit.i.i93

hex_to_int.exit.i.i93:                            ; preds = %bb.bc, %bb.bb, %bb.az
  %i.fv = phi i32 [ %i.fp, %bb.az ], [ %i.fr, %bb.bb ], [ %i.fu, %bb.bc ] ; 2 uses
  %i.fw = load i8, ptr %i.fk, align 1, !tbaa !10  ; 4 uses
  %i.fx = sext i8 %i.fw to i32                    ; 3 uses
  %i.fy = add i8 %i.fw, -48
  %or.cond.i9.i.i94 = icmp ult i8 %i.fy, 10
  br i1 %or.cond.i9.i.i94, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %hex_to_int.exit.i.i93
  %i.fz = add nsw i32 %i.fx, -48
  br label %hexpair_to_int.exit.i97

bb.be:                                            ; preds = %hex_to_int.exit.i.i93
  %i.ga = add i8 %i.fw, -97
  %or.cond5.i10.i.i95 = icmp ult i8 %i.ga, 6
  br i1 %or.cond5.i10.i.i95, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.gb = add nsw i32 %i.fx, -87
  br label %hexpair_to_int.exit.i97

bb.bg:                                            ; preds = %bb.be
  %i.gc = add i8 %i.fw, -65
  %or.cond8.i11.i.i96 = icmp ult i8 %i.gc, 6
  %i.gd = add nsw i32 %i.fx, -55
  %i.ge = select i1 %or.cond8.i11.i.i96, i32 %i.gd, i32 -1
  br label %hexpair_to_int.exit.i97

hexpair_to_int.exit.i97:                          ; preds = %bb.bg, %bb.bf, %bb.bd
  %i.gf = phi i32 [ %i.fz, %bb.bd ], [ %i.gb, %bb.bf ], [ %i.ge, %bb.bg ] ; 2 uses
  %i.gg = icmp ne i32 %i.fv, -1
  %i.gh = icmp ne i32 %i.gf, -1
  %or.cond.i.i98 = select i1 %i.gg, i1 %i.gh, i1 false
  %i.gi = shl nsw i32 %i.fv, 4
  %i.gj = or i32 %i.gf, %i.gi
  %.0.i.i99 = select i1 %or.cond.i.i98, i32 %i.gj, i32 -1 ; 2 uses
  switch i32 %.0.i.i99, label %bb.bh [
    i32 -1, label %bb.bi
    i32 0, label %bb.bl
  ]

bb.bh:                                            ; preds = %hexpair_to_int.exit.i97
  %i.gk = trunc i32 %.0.i.i99 to i8
  br label %bb.bk

bb.bi:                                            ; preds = %hexpair_to_int.exit.i97, %bb.ax
  %i.gl = icmp ult ptr %i.fj, %i.fd
  br i1 %i.gl, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.gm = load i8, ptr %i.fj, align 1, !tbaa !10  ; 2 uses
  %i.gn = sext i8 %i.gm to i32
  %memchr.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.47, i32 %i.gn, i64 11)
  %.not35.i = icmp eq ptr %memchr.i, null
  br i1 %.not35.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bh, %.lr.ph.i89
  %.sink.i = phi i8 [ %i.gk, %bb.bh ], [ %i.gm, %bb.bj ], [ %i.fh, %.lr.ph.i89 ]
  %.129.i = phi ptr [ %i.fk, %bb.bh ], [ %i.fj, %bb.bj ], [ %.02837.i, %.lr.ph.i89 ]
  store i8 %.sink.i, ptr %.038.i.ptr, align 1, !tbaa !10
  %exitcond = icmp eq i64 %.038.i.idx, 255
  br i1 %exitcond, label %bb.bl, label %bb.aw

bb.bl:                                            ; preds = %hexpair_to_int.exit.i97, %bb.bj, %bb.bi, %bb.bk
  %i.go = load ptr, ptr %i.h, align 8, !tbaa !16
  br label %.critedge86.sink.split

.loopexit:                                        ; preds = %bb.aw, %bb.av
  %.pre-phi40.i = phi i64 [ 0, %bb.av ], [ %.038.i.add, %bb.aw ] ; 2 uses
  store i64 %.pre-phi40.i, ptr %i.c, align 8, !tbaa !40
  %i.gp = getelementptr inbounds nuw i8, ptr %.153.ph, i64 24
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !44
  br label %bb.bm

bb.bm:                                            ; preds = %parse_attribute_value_hex_der_encoded.exit, %.loopexit
  %i.gr = phi i64 [ %i.em, %parse_attribute_value_hex_der_encoded.exit ], [ %.pre-phi40.i, %.loopexit ]
  %.1101 = phi i32 [ %i.ei, %parse_attribute_value_hex_der_encoded.exit ], [ %i.gq, %.loopexit ]
  %i.gs = load ptr, ptr %i.h, align 8, !tbaa !16  ; 2 uses
  %i.gt = load i64, ptr %i.g, align 8, !tbaa !19
  %i.gu = call ptr @mbedtls_asn1_store_named_data(ptr noundef nonnull %0, ptr noundef %i.gs, i64 noundef %i.gt, ptr noundef nonnull %i.b, i64 noundef %i.gr) #13 ; 2 uses
  call void @free(ptr noundef %i.gs) #13
  store ptr null, ptr %i.h, align 8, !tbaa !16
  %.not84 = icmp eq ptr %i.gu, null
  br i1 %.not84, label %.critedge86, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  store i32 %.1101, ptr %i.gv, align 8, !tbaa !22
  %i.gw = icmp ult ptr %.054208, %i.e
  br i1 %i.gw, label %.lr.ph257, label %.critedge

bb.bo:                                            ; preds = %.lr.ph257
  %i.gx = icmp ult ptr %i.gy, %i.e
  br i1 %i.gx, label %.lr.ph257, label %.critedge, !llvm.loop !38

.lr.ph257:                                        ; preds = %bb.bn, %bb.bo
  %.155255 = phi ptr [ %i.gy, %bb.bo ], [ %.054208, %bb.bn ] ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.155255, i64 1 ; 4 uses
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !10
  %i.ha = icmp eq i8 %i.gz, 32
  br i1 %i.ha, label %bb.bo, label %..critedge_crit_edge258, !llvm.loop !38

..critedge_crit_edge258:                          ; preds = %.lr.ph257
  br label %.critedge, !llvm.loop !38

.critedge:                                        ; preds = %bb.bo, %..critedge_crit_edge258, %bb.bn
  %.155.lcssa = phi ptr [ %.054208, %bb.bn ], [ %.155255, %..critedge_crit_edge258 ], [ %i.gy, %bb.bo ] ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.155.lcssa, i64 1
  br label %bb.bp

bb.bp:                                            ; preds = %.critedge, %bb.c, %bb.y, %bb.z
  %.2148 = phi i32 [ %.2.ph, %.critedge ], [ %.2.ph, %bb.y ], [ %.2.ph, %bb.z ], [ %.048211, %bb.c ]
  %.153146 = phi ptr [ %.153.ph, %.critedge ], [ %.153.ph, %bb.y ], [ %.153.ph, %bb.z ], [ %.052209, %bb.c ]
  %.264 = phi i32 [ 0, %.critedge ], [ %.062205, %bb.y ], [ %.062205, %bb.z ], [ %.062205, %bb.c ] ; 3 uses
  %.361 = phi ptr [ %i.hb, %.critedge ], [ %.159.ph, %bb.y ], [ %.159.ph, %bb.z ], [ %.058206, %bb.c ]
  %.357 = phi ptr [ %.155.lcssa, %.critedge ], [ %.054208, %bb.y ], [ %.054208, %bb.z ], [ %.054208, %bb.c ]
  %.3 = phi i32 [ 1, %.critedge ], [ 0, %bb.y ], [ 0, %bb.z ], [ 1, %bb.c ]
  %i.hc = getelementptr inbounds nuw i8, ptr %.357, i64 1 ; 2 uses
  %.not75 = icmp ugt ptr %i.hc, %i.e
  br i1 %.not75, label %._crit_edge, label %bb.b, !llvm.loop !39

._crit_edge:                                      ; preds = %bb.bp
  %.pre223 = load ptr, ptr %i.h, align 8, !tbaa !16 ; 2 uses
  %.not76 = icmp eq ptr %.pre223, null
  br i1 %.not76, label %.critedge86, label %.critedge86.sink.split

.critedge86.sink.split:                           ; preds = %._crit_edge, %bb.ab, %parse_attribute_value_hex_der_encoded.exit.thread, %bb.au, %bb.bl
  %.pre223.sink = phi ptr [ %i.cq, %bb.ab ], [ %i.go, %bb.bl ], [ %i.ex, %bb.au ], [ %i.ew, %parse_attribute_value_hex_der_encoded.exit.thread ], [ %.pre223, %._crit_edge ]
  %.368.ph = phi i32 [ -9088, %bb.ab ], [ -9088, %bb.bl ], [ -9088, %bb.au ], [ %.243.i153, %parse_attribute_value_hex_der_encoded.exit.thread ], [ %.264, %._crit_edge ]
  call void @free(ptr noundef %.pre223.sink) #13
  br label %.critedge86

.critedge86:                                      ; preds = %bb.bm, %x509_attr_descr_from_name.exit, %.critedge86.sink.split, %._crit_edge, %bb.a
  %.368 = phi i32 [ %.264, %._crit_edge ], [ -10240, %bb.a ], [ %.368.ph, %.critedge86.sink.split ], [ -141, %bb.bm ], [ -9088, %x509_attr_descr_from_name.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret i32 %.368
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

declare ptr @mbedtls_asn1_store_named_data(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define hidden range(i32 -10240, 1) i32 @mbedtls_x509_set_extension(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq i64 %5, -1
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw i64 %5, 1
  %i.c = tail call ptr @mbedtls_asn1_store_named_data(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef null, i64 noundef %i.b) #13 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = trunc i32 %3 to i8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  store i8 %i.e, ptr %i.g, align 1, !tbaa !10
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr align 1 %4, i64 %5, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -10240, %bb.a ], [ -141, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_x509_write_names(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #6 {
bb.a:
  %.not30 = icmp eq ptr %2, null
  br i1 %.not30, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.g
  %.032 = phi ptr [ %i.ai, %bb.g ], [ %2, %bb.a ] ; 6 uses
  %.02131 = phi i64 [ %i.ag, %bb.g ], [ 0, %bb.a ]
  %i.a = getelementptr inbounds nuw i8, ptr %.032, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %.032, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %.032, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %.032, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %.032, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !26
  %i.j = load i32, ptr %i.e, align 8, !tbaa !22
  %i.k = tail call i32 @mbedtls_asn1_write_tagged_string(ptr noundef %0, ptr noundef %1, i32 noundef %i.j, ptr noundef %i.g, i64 noundef %i.i) #13 ; 3 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %x509_write_name.exit.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.m = tail call i32 @mbedtls_asn1_write_oid(ptr noundef %0, ptr noundef %1, ptr noundef %i.b, i64 noundef %i.d) #13 ; 3 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %x509_write_name.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %narrow.i = add nuw i32 %i.m, %i.k
  %i.o = zext i32 %narrow.i to i64                ; 2 uses
  %i.p = tail call i32 @mbedtls_asn1_write_len(ptr noundef %0, ptr noundef %1, i64 noundef %i.o) #13 ; 3 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %x509_write_name.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = tail call i32 @mbedtls_asn1_write_tag(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 48) #13 ; 3 uses
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %x509_write_name.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = zext nneg i32 %i.p to i64
  %i.u = add nuw nsw i64 %i.t, %i.o
  %i.v = zext nneg i32 %i.r to i64
  %i.w = add nuw nsw i64 %i.u, %i.v               ; 2 uses
  %i.x = tail call i32 @mbedtls_asn1_write_len(ptr noundef %0, ptr noundef %1, i64 noundef %i.w) #13 ; 3 uses
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %x509_write_name.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = tail call i32 @mbedtls_asn1_write_tag(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 49) #13 ; 3 uses
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %x509_write_name.exit.thread, label %x509_write_name.exit

x509_write_name.exit:                             ; preds = %bb.f
  %i.ab = trunc i64 %i.w to i32
  %i.ac = add i32 %i.x, %i.ab
  %i.ad = add i32 %i.ac, %i.z                     ; 3 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %x509_write_name.exit.thread, label %bb.g

bb.g:                                             ; preds = %x509_write_name.exit
  %i.af = zext nneg i32 %i.ad to i64
  %i.ag = add i64 %.02131, %i.af                  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.032, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !45

._crit_edge:                                      ; preds = %bb.g, %bb.a
  %.021.lcssa = phi i64 [ 0, %bb.a ], [ %i.ag, %bb.g ] ; 2 uses
  %i.aj = tail call i32 @mbedtls_asn1_write_len(ptr noundef %0, ptr noundef %1, i64 noundef %.021.lcssa) #13 ; 3 uses
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %x509_write_name.exit.thread, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.al = tail call i32 @mbedtls_asn1_write_tag(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 48) #13 ; 3 uses
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %x509_write_name.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = trunc i64 %.021.lcssa to i32
  %i.ao = add i32 %i.aj, %i.an
  %i.ap = add i32 %i.ao, %i.al
  br label %x509_write_name.exit.thread

x509_write_name.exit.thread:                      ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %.lr.ph, %x509_write_name.exit, %bb.h, %._crit_edge, %bb.i
  %.022 = phi i32 [ %i.ap, %bb.i ], [ %i.al, %bb.h ], [ %i.aj, %._crit_edge ], [ %i.k, %.lr.ph ], [ %i.m, %bb.b ], [ %i.p, %bb.c ], [ %i.r, %bb.d ], [ %i.x, %bb.e ], [ %i.z, %bb.f ], [ %i.ad, %x509_write_name.exit ]
  ret i32 %.022
}

declare i32 @mbedtls_asn1_write_len(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

declare i32 @mbedtls_asn1_write_tag(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_x509_write_sig(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, i32 noundef %6) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17     ; 3 uses
  %i.b = icmp ult ptr %i.a, %1
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = icmp ult i64 %i.e, %5
  br i1 %i.f, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = sub i64 0, %5
  %i.h = getelementptr inbounds i8, ptr %i.a, i64 %i.g ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !17
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 1 %4, i64 %5, i1 false)
  %i.i = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = icmp slt i64 %i.k, 1
  br i1 %i.l, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 -1 ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !17
  store i8 0, ptr %i.m, align 1, !tbaa !10
  %i.n = add i64 %5, 1                            ; 2 uses
  %i.o = tail call i32 @mbedtls_asn1_write_len(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %i.n) #13 ; 3 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = tail call i32 @mbedtls_asn1_write_tag(ptr noundef nonnull %0, ptr noundef %1, i8 noundef zeroext 3) #13 ; 3 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = icmp ne i32 %6, 3
  %. = zext i1 %i.s to i32
  %i.t = tail call i32 @mbedtls_asn1_write_algorithm_identifier_ext(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef 0, i32 noundef %.) #13 ; 3 uses
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = trunc i64 %i.n to i32
  %i.w = add i32 %i.o, %i.v
  %i.x = add i32 %i.w, %i.q
  %i.y = add i32 %i.x, %i.t
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.a, %bb.b, %bb.g
  %.036 = phi i32 [ %i.y, %bb.g ], [ -138, %bb.a ], [ -138, %bb.c ], [ %i.o, %bb.d ], [ %i.q, %bb.e ], [ -138, %bb.b ], [ %i.t, %bb.f ]
  ret i32 %.036
}

declare i32 @mbedtls_asn1_write_algorithm_identifier_ext(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_x509_write_extensions(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #6 {
bb.a:
  %.not14 = icmp eq ptr %2, null
  br i1 %.not14, label %x509_write_extension.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.l
  %.016 = phi ptr [ %i.ay, %bb.l ], [ %2, %bb.a ] ; 5 uses
  %.01015 = phi i32 [ %i.aw, %bb.l ], [ 0, %bb.a ]
  %i.a = getelementptr inbounds nuw i8, ptr %.016, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %.016, i64 32 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !26
  %i.f = add i64 %i.e, -1
  %i.g = tail call i32 @mbedtls_asn1_write_raw_buffer(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.c, i64 noundef %i.f) #13 ; 3 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %x509_write_extension.exit.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = load i64, ptr %i.d, align 8, !tbaa !26
  %i.j = add i64 %i.i, -1
  %i.k = tail call i32 @mbedtls_asn1_write_len(ptr noundef %0, ptr noundef %1, i64 noundef %i.j) #13 ; 3 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %x509_write_extension.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call i32 @mbedtls_asn1_write_tag(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 4) #13 ; 3 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %x509_write_extension.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %narrow.i = add nuw i32 %i.k, %i.g
  %i.o = zext i32 %narrow.i to i64
  %i.p = zext nneg i32 %i.m to i64
  %i.q = add nuw nsw i64 %i.p, %i.o               ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.s = load i8, ptr %i.r, align 1, !tbaa !10
  %.not.i = icmp eq i8 %i.s, 0
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = tail call i32 @mbedtls_asn1_write_bool(ptr noundef %0, ptr noundef %1, i32 noundef 1) #13 ; 3 uses
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %x509_write_extension.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = zext nneg i32 %i.t to i64
  %i.w = add nuw nsw i64 %i.q, %i.v
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.0.i = phi i64 [ %i.w, %bb.f ], [ %i.q, %bb.d ]
  %i.x = getelementptr inbounds nuw i8, ptr %.016, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !24
  %i.z = getelementptr inbounds nuw i8, ptr %.016, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !25
  %i.ab = tail call i32 @mbedtls_asn1_write_raw_buffer(ptr noundef %0, ptr noundef %1, ptr noundef %i.y, i64 noundef %i.aa) #13 ; 3 uses
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %x509_write_extension.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = load i64, ptr %i.z, align 8, !tbaa !25
  %i.ae = tail call i32 @mbedtls_asn1_write_len(ptr noundef %0, ptr noundef %1, i64 noundef %i.ad) #13 ; 3 uses
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %x509_write_extension.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = tail call i32 @mbedtls_asn1_write_tag(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 6) #13 ; 3 uses
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %x509_write_extension.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = zext nneg i32 %i.ab to i64
  %i.aj = add nuw nsw i64 %.0.i, %i.ai
  %i.ak = zext nneg i32 %i.ae to i64
  %i.al = add nuw nsw i64 %i.aj, %i.ak
  %i.am = zext nneg i32 %i.ag to i64
  %i.an = add nuw nsw i64 %i.al, %i.am            ; 2 uses
  %i.ao = tail call i32 @mbedtls_asn1_write_len(ptr noundef %0, ptr noundef %1, i64 noundef %i.an) #13 ; 3 uses
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %x509_write_extension.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = tail call i32 @mbedtls_asn1_write_tag(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 48) #13 ; 3 uses
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %x509_write_extension.exit.thread, label %x509_write_extension.exit

x509_write_extension.exit:                        ; preds = %bb.k
  %i.as = trunc i64 %i.an to i32
  %i.at = add i32 %i.ao, %i.as
  %i.au = add i32 %i.at, %i.aq                    ; 3 uses
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %x509_write_extension.exit.thread, label %bb.l

bb.l:                                             ; preds = %x509_write_extension.exit
  %i.aw = add i32 %i.au, %.01015                  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.016, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !27 ; 2 uses
  %.not = icmp eq ptr %i.ay, null
  br i1 %.not, label %x509_write_extension.exit.thread, label %.lr.ph, !llvm.loop !46

x509_write_extension.exit.thread:                 ; preds = %x509_write_extension.exit, %.lr.ph, %bb.b, %bb.c, %bb.e, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.a
  %.011 = phi i32 [ 0, %bb.a ], [ %i.k, %bb.b ], [ %i.g, %.lr.ph ], [ %i.aw, %bb.l ], [ %i.aq, %bb.k ], [ %i.ao, %bb.j ], [ %i.ag, %bb.i ], [ %i.ae, %bb.h ], [ %i.ab, %bb.g ], [ %i.t, %bb.e ], [ %i.m, %bb.c ], [ %i.au, %x509_write_extension.exit ]
  ret i32 %.011
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #7

declare i32 @mbedtls_asn1_get_len(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

declare i32 @mbedtls_asn1_write_tagged_string(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

declare i32 @mbedtls_asn1_write_oid(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

declare i32 @mbedtls_asn1_write_raw_buffer(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

declare i32 @mbedtls_asn1_write_bool(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0,1) }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !11, !18}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!6, !6, i64 0}
!10 = !{!5, !5, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"long", !5, i64 0}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"mbedtls_asn1_buf", !6, i64 0, !12, i64 8, !14, i64 16}
!16 = !{!15, !14, i64 16}
!17 = !{!14, !14, i64 0}
!18 = !{!"llvm.loop.peeled.count", i32 1}
!19 = !{!15, !12, i64 8}
!20 = !{!"p1 _ZTS23mbedtls_asn1_named_data", !13, i64 0}
!21 = !{!"mbedtls_asn1_named_data", !15, i64 0, !15, i64 24, !20, i64 48, !5, i64 56}
!22 = !{!21, !6, i64 24}
!23 = !{!21, !14, i64 40}
!24 = !{!21, !14, i64 16}
!25 = !{!21, !12, i64 8}
!26 = !{!21, !12, i64 32}
!27 = !{!21, !20, i64 48}
!28 = distinct !{!28, !11, !31, !32}
!29 = distinct !{!29, !11, !32, !31}
!30 = distinct !{!30, !11}
!31 = !{!"llvm.loop.isvectorized", i32 1}
!32 = !{!"llvm.loop.unroll.runtime.disable"}
!33 = !{!15, !6, i64 0}
!34 = distinct !{!34, !11}
!35 = distinct !{!35, !11}
!36 = distinct !{!36, !11}
!37 = distinct !{!37, !11}
!38 = distinct !{!38, !11}
!39 = distinct !{!39, !11}
!40 = !{!12, !12, i64 0}
!41 = !{!20, !20, i64 0}
!42 = !{!"", !14, i64 0, !12, i64 8, !14, i64 16, !6, i64 24}
!43 = !{!42, !14, i64 16}
!44 = !{!42, !6, i64 24}
!45 = distinct !{!45, !11}
!46 = distinct !{!46, !11}
end_hunk_0
