Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/coll_base_reduce?download=true
inline.NumInlined: 42
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ompi_predefined_request_t = type { %struct.ompi_request_t, [96 x i8] }
%struct.ompi_request_t = type { %struct.opal_free_list_item_t, i32, %struct.ompi_status_public_t, ptr, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, %union.ompi_mpi_object_t }
%struct.opal_free_list_item_t = type { %struct.opal_list_item_t, ptr, ptr }
%struct.opal_list_item_t = type { %struct.opal_object_t, ptr, ptr, i32 }
%struct.opal_object_t = type { ptr, i32 }
%struct.ompi_status_public_t = type { i32, i32, i32, i32, i64 }
%union.ompi_mpi_object_t = type { ptr }
%struct.mca_pml_base_module_2_1_0_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr }
%struct.ompi_request_fns_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@ompi_request_null = external global %struct.ompi_predefined_request_t, align 8
@__const.ompi_coll_base_reduce_generic.reqs = private unnamed_addr constant [2 x ptr] [ptr @ompi_request_null, ptr @ompi_request_null], align 16
@mca_pml = external local_unnamed_addr global %struct.mca_pml_base_module_2_1_0_t, align 8
@ompi_request_functions = external local_unnamed_addr global %struct.ompi_request_fns_t, align 8
@ompi_op_ddt_map = external local_unnamed_addr global [52 x i32], align 16

; Function Attrs: nounwind uwtable
define noundef i32 @mca_coll_base_reduce_local(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readnone captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %2 to i64
  tail call fastcc void @ompi_op_reduce(ptr noundef %4, ptr noundef %0, ptr noundef %1, i64 noundef %i.a, ptr noundef %3)
  ret i32 0
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ompi_op_reduce(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef range(i64 -2147483648, 2147483648) %3, ptr noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  store ptr %4, ptr %i.a, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  %i.e = trunc nsw i64 %3 to i32                  ; 2 uses
  store i32 %i.e, ptr %i.d, align 4, !tbaa !10
  %i.f = icmp ugt i64 %3, 2147483647
  br i1 %i.f, label %bb.b, label %bb.d, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.h = load i64, ptr %i.g, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.j = load i64, ptr %i.i, align 8, !tbaa !21
  %i.k = sub nsw i64 %i.j, %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %.045 = phi i64 [ 0, %bb.b ], [ %i.t, %bb.c ]   ; 4 uses
  %i.l = add i64 %.045, 2147483647
  %i.m = icmp ugt i64 %i.l, %3
  %i.n = sub nuw i64 %3, %.045
  %i.o = shl i64 %i.n, 32
  %i.p = ashr exact i64 %i.o, 32
  %.039 = select i1 %i.m, i64 %i.p, i64 2147483647 ; 2 uses
  %i.q = mul i64 %.045, %i.k                      ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  tail call fastcc void @ompi_op_reduce(ptr noundef %0, ptr noundef %i.r, ptr noundef %i.s, i64 noundef %.039, ptr noundef nonnull %4)
  %i.t = add i64 %.039, %.045                     ; 2 uses
  %i.u = icmp ult i64 %i.t, %3
  br i1 %i.u, label %bb.c, label %.loopexit, !llvm.loop !68

bb.d:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.w = load i32, ptr %i.v, align 4, !tbaa !25   ; 3 uses
  %i.x = and i32 %i.w, 1
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr i8, ptr %4, i64 16
  %.val = load i16, ptr %i.y, align 8, !tbaa !72
  %i.z = and i16 %.val, 512
  %.not43 = icmp eq i16 %i.z, 0
  br i1 %.not43, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = tail call ptr @ompi_datatype_get_single_predefined_type_from_args(ptr noundef nonnull %4) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.pn44 = phi ptr [ %i.aa, %bb.f ], [ %4, %bb.e ]
  %.pn.in.in = getelementptr inbounds nuw i8, ptr %.pn44, i64 200
  %.pn.in = load i32, ptr %.pn.in.in, align 8, !tbaa !73
  %.pn = sext i32 %.pn.in to i64
  %.038.in = getelementptr inbounds [4 x i8], ptr @ompi_op_ddt_map, i64 %.pn
  %.038 = load i32, ptr %.038.in, align 4, !tbaa !10
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ac = sext i32 %.038 to i64                   ; 2 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !74
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ac
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !74
  call void %i.ae(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, ptr noundef %i.ah) #9
  br label %.loopexit

bb.h:                                             ; preds = %bb.d
  %i.ai = and i32 %i.w, 2
  %.not41 = icmp eq i32 %i.ai, 0
  br i1 %.not41, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 204
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !75
  store i32 %i.ak, ptr %i.b, align 4, !tbaa !10
  store i32 %i.e, ptr %i.c, align 4, !tbaa !10
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !74
  call void %i.am(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #9
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.an = and i32 %i.w, 8
  %.not42 = icmp eq i32 %i.an, 0
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !74 ; 2 uses
  br i1 %.not42, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !74
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !74
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !74
  call void %i.ap(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, i32 noundef %i.ar, ptr noundef %i.at, ptr noundef %i.av) #9
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  call void %i.ap(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a) #9
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.l, %bb.k, %bb.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @ompi_coll_base_reduce_generic(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr noundef %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 8 uses
  %i.b = alloca [2 x ptr], align 16               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const.ompi_coll_base_reduce_generic.reqs, i64 16, i1 false)
  %i.c = getelementptr i8, ptr %3, i64 48         ; 2 uses
  %.val = load i64, ptr %i.c, align 8, !tbaa !20
  %i.d = getelementptr i8, ptr %3, i64 56         ; 2 uses
  %.val301 = load i64, ptr %i.d, align 8, !tbaa !21
  %i.e = sub nsw i64 %.val301, %.val              ; 3 uses
  %i.f = sext i32 %2 to i64                       ; 2 uses
  %i.g = sext i32 %9 to i64                       ; 5 uses
  %i.h = add nsw i64 %i.f, -1                     ; 2 uses
  %i.i = add nsw i64 %i.h, %i.g
  %i.j = udiv i64 %i.i, %i.g                      ; 4 uses
  %i.k = trunc i64 %i.j to i32                    ; 3 uses
  %i.l = mul nsw i64 %i.e, %i.g                   ; 5 uses
  %i.m = icmp eq ptr %0, inttoptr (i64 1 to ptr)  ; 6 uses
  %spec.select = select i1 %i.m, ptr %1, ptr %0   ; 3 uses
  %i.n = getelementptr i8, ptr %6, i64 220
  %.val302 = load i32, ptr %i.n, align 4, !tbaa !50 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 8 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !10
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %bb.b, label %bb.av

bb.b:                                             ; preds = %bb.a
  %i.r = icmp ne ptr %1, null
  %.not279 = icmp eq i32 %5, %.val302
  %or.cond = select i1 %i.r, i1 %.not279, i1 false
  br i1 %or.cond, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !51
  %i.u = icmp eq i64 %i.t, 0
  %i.v = icmp eq i32 %2, 0
  %or.cond.i = or i1 %i.v, %i.u
  br i1 %or.cond.i, label %opal_datatype_span.exit, label %bb.d, !prof !52

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.x = load i64, ptr %i.w, align 8, !tbaa !53   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !54
  %i.aa = mul i64 %i.e, %i.h
  %i.ab = sub i64 %i.aa, %i.x
  %i.ac = add i64 %i.ab, %i.z
  br label %opal_datatype_span.exit

opal_datatype_span.exit:                          ; preds = %bb.c, %bb.d
  %.0325 = phi i64 [ %i.x, %bb.d ], [ 0, %bb.c ]
  %.0.i = phi i64 [ %i.ac, %bb.d ], [ 0, %bb.c ]
  %i.ad = tail call noalias ptr @malloc(i64 noundef %.0.i) #10 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %.lr.ph.i310.1, label %bb.e

bb.e:                                             ; preds = %opal_datatype_span.exit
  %i.af = sub i64 0, %.0325
  %i.ag = getelementptr inbounds i8, ptr %i.ad, i64 %i.af
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %.0237 = phi ptr [ %i.ag, %bb.e ], [ %1, %bb.b ] ; 6 uses
  %.0234 = phi ptr [ %i.ad, %bb.e ], [ null, %bb.b ] ; 5 uses
  %i.ah = getelementptr i8, ptr %4, i64 84        ; 5 uses
  %.val306 = load i32, ptr %i.ah, align 4, !tbaa !25
  %i.ai = and i32 %.val306, 64
  %i.aj = icmp ne i32 %i.ai, 0
  %.not25.i = icmp eq i32 %2, 0
  %i.ak = or i1 %.not25.i, %i.aj
  %or.cond365 = or i1 %i.m, %i.ak
  br i1 %or.cond365, label %ompi_datatype_copy_content_same_ddt.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.g
  %.01728.i = phi ptr [ %i.ao, %bb.g ], [ %spec.select, %bb.f ] ; 2 uses
  %.01827.i = phi ptr [ %i.an, %bb.g ], [ %.0237, %bb.f ] ; 2 uses
  %.01926.i = phi i64 [ %i.ap, %bb.g ], [ %i.f, %bb.f ] ; 2 uses
  %spec.select24.i = tail call i64 @llvm.umin.i64(i64 %.01926.i, i64 2147483647) ; 3 uses
  %spec.select.i = trunc nuw nsw i64 %spec.select24.i to i32
  %i.al = tail call i32 @opal_datatype_copy_content_same_ddt(ptr noundef %3, i32 noundef %spec.select.i, ptr noundef %.01827.i, ptr noundef %.01728.i) #9
  %.not22.i = icmp eq i32 %i.al, 0
  br i1 %.not22.i, label %bb.g, label %ompi_datatype_copy_content_same_ddt.exit

bb.g:                                             ; preds = %.lr.ph.i
  %i.am = mul nsw i64 %spec.select24.i, %i.e      ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %.01827.i, i64 %i.am
  %i.ao = getelementptr inbounds i8, ptr %.01728.i, i64 %i.am
  %i.ap = sub nuw i64 %.01926.i, %spec.select24.i ; 2 uses
  %.not.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i, label %ompi_datatype_copy_content_same_ddt.exit, label %.lr.ph.i, !llvm.loop !0

ompi_datatype_copy_content_same_ddt.exit:         ; preds = %bb.g, %.lr.ph.i, %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !51
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %opal_datatype_span.exit309, label %bb.h, !prof !52

bb.h:                                             ; preds = %ompi_datatype_copy_content_same_ddt.exit
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.au = load i64, ptr %i.at, align 8, !tbaa !53 ; 2 uses
  %i.av = load i64, ptr %i.d, align 8, !tbaa !21
  %i.aw = load i64, ptr %i.c, align 8, !tbaa !20
  %i.ax = sub nsw i64 %i.av, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !54
  %i.ba = sub i64 %i.az, %i.au
  %i.bb = add nsw i64 %i.g, -1
  %i.bc = mul i64 %i.ax, %i.bb
  %i.bd = add i64 %i.ba, %i.bc
  br label %opal_datatype_span.exit309

opal_datatype_span.exit309:                       ; preds = %ompi_datatype_copy_content_same_ddt.exit, %bb.h
  %.1326 = phi i64 [ %i.au, %bb.h ], [ 0, %ompi_datatype_copy_content_same_ddt.exit ]
  %.0.i308 = phi i64 [ %i.bd, %bb.h ], [ 0, %ompi_datatype_copy_content_same_ddt.exit ] ; 2 uses
  %i.be = tail call noalias ptr @malloc(i64 noundef %.0.i308) #10 ; 5 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %.lr.ph.i310.1, label %bb.i

bb.i:                                             ; preds = %opal_datatype_span.exit309
  %i.bg = sub i64 0, %.1326                       ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %i.be, i64 %i.bg
  store ptr %i.bh, ptr %i.a, align 16, !tbaa !86
  %i.bi = icmp sgt i32 %i.k, 1
  br i1 %i.bi, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = load i32, ptr %i.o, align 4, !tbaa !10
  %i.bk = icmp sgt i32 %i.bj, 1
  br i1 %i.bk, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bl = tail call noalias ptr @malloc(i64 noundef %.0.i308) #10 ; 3 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %.lr.ph.i310.1, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 %i.bg
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !86
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.sroa.10.0 = phi ptr [ %i.bl, %bb.l ], [ null, %bb.j ] ; 3 uses
  %.not402 = icmp slt i32 %i.k, 0
  br i1 %.not402, label %._crit_edge408, label %.lr.ph407

.lr.ph407:                                        ; preds = %bb.m
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  %i.br = load i32, ptr %i.o, align 4, !tbaa !10
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %.lr.ph407.split.preheader, label %._crit_edge408

.lr.ph407.split.preheader:                        ; preds = %.lr.ph407
  %i.bt = add i64 %i.j, 4294967295
  %i.bu = and i64 %i.j, 2147483647
  %i.bv = and i64 %i.bt, 4294967295
  %i.bw = and i64 %i.j, 2147483647                ; 2 uses
  br label %.lr.ph407.split

.lr.ph407.split:                                  ; preds = %.lr.ph407.split.preheader, %._crit_edge398
  %indvars.iv438 = phi i64 [ 0, %.lr.ph407.split.preheader ], [ %indvars.iv.next439, %._crit_edge398 ] ; 9 uses
  %.0215405 = phi i32 [ 0, %.lr.ph407.split.preheader ], [ %.1216.lcssa, %._crit_edge398 ] ; 4 uses
  %.0217404 = phi i32 [ 0, %.lr.ph407.split.preheader ], [ %.1218, %._crit_edge398 ]
  %i.bx = icmp eq i64 %indvars.iv438, %i.bv
  %i.by = trunc nuw nsw i64 %indvars.iv438 to i32
  %i.bz = mul i32 %9, %i.by
  %i.ca = sub i32 %2, %i.bz
  %.1218 = select i1 %i.bx, i32 %i.ca, i32 %9     ; 2 uses
  %i.cb = load i32, ptr %i.o, align 4, !tbaa !10
  %i.cc = icmp sgt i32 %i.cb, 0
  br i1 %i.cc, label %.lr.ph397, label %._crit_edge398

.lr.ph397:                                        ; preds = %.lr.ph407.split
  %i.cd = icmp samesign ult i64 %indvars.iv438, %i.bw ; 2 uses
  %i.ce = mul nsw i64 %i.l, %indvars.iv438        ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %.0237, i64 %i.ce ; 2 uses
  %i.cg = sext i32 %.1218 to i64                  ; 3 uses
  %i.ch = getelementptr inbounds i8, ptr %spec.select, i64 %i.ce
  %.not286 = icmp eq i64 %indvars.iv438, 0        ; 2 uses
  %i.ci = add nsw i64 %indvars.iv438, -1
  %i.cj = mul nsw i64 %i.l, %i.ci                 ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %.0237, i64 %i.cj ; 4 uses
  %i.cl = getelementptr inbounds i8, ptr %spec.select, i64 %i.cj ; 2 uses
  %i.cm = sext i32 %.0217404 to i64               ; 4 uses
  %i.cn = icmp eq i64 %indvars.iv438, %i.bu       ; 2 uses
  br i1 %i.cd, label %bb.n, label %bb.s

bb.n:                                             ; preds = %.lr.ph397
  %i.co = zext nneg i32 %.0215405 to i64          ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.co
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !86 ; 2 uses
  %.val305.peel = load i32, ptr %i.ah, align 4, !tbaa !25
  %i.cr = and i32 %.val305.peel, 64
  %.not366.peel = icmp eq i32 %i.cr, 0
  br i1 %.not366.peel, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %i.m, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cs = load i32, ptr %8, align 4, !tbaa !10
  %i.ct = icmp eq i32 %.val302, %i.cs
  br i1 %i.ct, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.n
  %.0214.peel = phi ptr [ %i.cq, %bb.p ], [ %i.cf, %bb.q ], [ %i.cq, %bb.n ]
  %i.cu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 64), align 8, !tbaa !87
  %i.cv = load i32, ptr %i.bp, align 4, !tbaa !10
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.co
  %i.cx = call i32 %i.cu(ptr noundef %.0214.peel, i64 noundef %i.cg, ptr noundef %3, i32 noundef %i.cv, i32 noundef -21, ptr noundef %6, ptr noundef nonnull %i.cw) #9 ; 2 uses
  %.not283.peel = icmp eq i32 %i.cx, 0
  br i1 %.not283.peel, label %bb.s, label %.thread332.loopexit

bb.s:                                             ; preds = %bb.r, %.lr.ph397
  %i.cy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 32), align 8, !tbaa !89
  %i.cz = xor i32 %.0215405, 1                    ; 3 uses
  %i.da = zext nneg i32 %i.cz to i64              ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.da
  %i.dc = call i32 %i.cy(ptr noundef nonnull %i.db, ptr noundef null) #9 ; 2 uses
  %.not284.peel = icmp eq i32 %i.dc, 0
  br i1 %.not284.peel, label %bb.t, label %.thread332.loopexit

bb.t:                                             ; preds = %bb.s
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.da
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !86 ; 4 uses
  br i1 %.not286, label %.thread329.peel, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.df = load i32, ptr %i.o, align 4, !tbaa !10
  %i.dg = icmp slt i32 %i.df, 2
  br i1 %i.dg, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %.val303.peel = load i32, ptr %i.ah, align 4, !tbaa !25
  %i.dh = and i32 %.val303.peel, 64
  %.not368.peel = icmp eq i32 %i.dh, 0
  br i1 %.not368.peel, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %i.m, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.di = load i32, ptr %8, align 4, !tbaa !10
  %i.dj = icmp eq i32 %.val302, %i.di
  br i1 %i.dj, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.v, %bb.u
  %.1233.peel = phi ptr [ %i.de, %bb.x ], [ %i.cl, %bb.y ], [ %i.de, %bb.v ], [ %i.de, %bb.u ]
  call fastcc void @ompi_op_reduce(ptr noundef %4, ptr noundef %.1233.peel, ptr noundef %i.ck, i64 noundef %i.cm, ptr noundef %3)
  %i.dk = load i32, ptr %8, align 4, !tbaa !10
  %.not287.peel = icmp eq i32 %.val302, %i.dk
  br i1 %.not287.peel, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 96), align 8, !tbaa !56
  %i.dm = load i32, ptr %i.bq, align 4, !tbaa !10
  %i.dn = call i32 %i.dl(ptr noundef %i.ck, i64 noundef %i.cm, ptr noundef %3, i32 noundef %i.dm, i32 noundef -21, i32 noundef 4, ptr noundef %6) #9 ; 2 uses
  %.not288.peel = icmp eq i32 %i.dn, 0
  br i1 %.not288.peel, label %bb.ab, label %.thread332.loopexit

bb.ab:                                            ; preds = %bb.aa, %bb.z
  br i1 %i.cn, label %._crit_edge398, label %.thread329.peel

.thread329.peel:                                  ; preds = %bb.ab, %bb.t
  %i.do = load i32, ptr %i.o, align 4, !tbaa !10
  %i.dp = icmp sgt i32 %i.do, 1
  br i1 %i.dp, label %.peel.next, label %._crit_edge398

.peel.next:                                       ; preds = %.thread329.peel, %.thread329
  %i.dq = phi ptr [ %i.ed, %.thread329 ], [ %i.de, %.thread329.peel ]
  %indvars.iv432 = phi i64 [ %indvars.iv.next433, %.thread329 ], [ 1, %.thread329.peel ] ; 3 uses
  %.1216395 = phi i32 [ %i.dy, %.thread329 ], [ %i.cz, %.thread329.peel ] ; 3 uses
  br i1 %i.cd, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.peel.next
  %i.dr = zext nneg i32 %.1216395 to i64
  %i.ds = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 64), align 8, !tbaa !87
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv432
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !10
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.dr
  %i.dw = call i32 %i.ds(ptr noundef %i.dq, i64 noundef %i.cg, ptr noundef %3, i32 noundef %i.du, i32 noundef -21, ptr noundef %6, ptr noundef nonnull %i.dv) #9 ; 2 uses
  %.not283 = icmp eq i32 %i.dw, 0
  br i1 %.not283, label %bb.ad, label %.thread332.loopexit

bb.ad:                                            ; preds = %bb.ac, %.peel.next
  %i.dx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 32), align 8, !tbaa !89
  %i.dy = xor i32 %.1216395, 1                    ; 3 uses
  %i.dz = zext nneg i32 %i.dy to i64              ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.dz
  %i.eb = call i32 %i.dx(ptr noundef nonnull %i.ea, ptr noundef null) #9 ; 2 uses
  %.not284 = icmp eq i32 %i.eb, 0
  br i1 %.not284, label %bb.ae, label %.thread332.loopexit

bb.ae:                                            ; preds = %bb.ad
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dz
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !86 ; 7 uses
  %i.ee = trunc nuw nsw i64 %indvars.iv432 to i32
  switch i32 %i.ee, label %bb.aj [
    i32 0, label %bb.ak
    i32 1, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae
  %.val304 = load i32, ptr %i.ah, align 4, !tbaa !25
  %i.ef = and i32 %.val304, 64
  %.not367 = icmp eq i32 %i.ef, 0
  br i1 %.not367, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  br i1 %i.m, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.eg = load i32, ptr %8, align 4, !tbaa !10
  %i.eh = icmp eq i32 %.val302, %i.eg
  br i1 %i.eh, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ae, %bb.af, %bb.ah, %bb.ai
  %.0232 = phi ptr [ %i.ed, %bb.ah ], [ %i.ch, %bb.ai ], [ %i.ed, %bb.af ], [ %i.ed, %bb.ae ]
  call fastcc void @ompi_op_reduce(ptr noundef %4, ptr noundef %.0232, ptr noundef %i.cf, i64 noundef %i.cg, ptr noundef %3)
  br label %.thread329

bb.ak:                                            ; preds = %bb.ae
  br i1 %.not286, label %.thread329, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ei = load i32, ptr %i.o, align 4, !tbaa !10
  %i.ej = icmp slt i32 %i.ei, 2
  br i1 %i.ej, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %bb.al
  %.val303 = load i32, ptr %i.ah, align 4, !tbaa !25
  %i.ek = and i32 %.val303, 64
  %.not368 = icmp eq i32 %i.ek, 0
  br i1 %.not368, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  br i1 %i.m, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.el = load i32, ptr %8, align 4, !tbaa !10
  %i.em = icmp eq i32 %.val302, %i.el
  br i1 %i.em, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  br label %bb.aq

bb.aq:                                            ; preds = %bb.am, %bb.ao, %bb.ap, %bb.al
  %.1233 = phi ptr [ %i.ed, %bb.ao ], [ %i.cl, %bb.ap ], [ %i.ed, %bb.am ], [ %i.ed, %bb.al ]
  call fastcc void @ompi_op_reduce(ptr noundef %4, ptr noundef %.1233, ptr noundef %i.ck, i64 noundef %i.cm, ptr noundef %3)
  %i.en = load i32, ptr %8, align 4, !tbaa !10
  %.not287 = icmp eq i32 %.val302, %i.en
  br i1 %.not287, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.eo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 96), align 8, !tbaa !56
  %i.ep = load i32, ptr %i.bq, align 4, !tbaa !10
  %i.eq = call i32 %i.eo(ptr noundef %i.ck, i64 noundef %i.cm, ptr noundef %3, i32 noundef %i.ep, i32 noundef -21, i32 noundef 4, ptr noundef %6) #9 ; 2 uses
  %.not288 = icmp eq i32 %i.eq, 0
  br i1 %.not288, label %bb.as, label %.thread332.loopexit

bb.as:                                            ; preds = %bb.ar, %bb.aq
  br i1 %i.cn, label %._crit_edge398, label %.thread329

.thread329:                                       ; preds = %bb.as, %bb.ak, %bb.aj
  %indvars.iv.next433 = add nuw nsw i64 %indvars.iv432, 1 ; 2 uses
  %i.er = load i32, ptr %i.o, align 4, !tbaa !10
  %i.es = sext i32 %i.er to i64
  %i.et = icmp slt i64 %indvars.iv.next433, %i.es
  br i1 %i.et, label %.peel.next, label %._crit_edge398, !llvm.loop !76

._crit_edge398:                                   ; preds = %.thread329, %bb.as, %bb.ab, %.thread329.peel, %.lr.ph407.split
  %.1216.lcssa = phi i32 [ %.0215405, %.lr.ph407.split ], [ %.0215405, %bb.ab ], [ %i.cz, %.thread329.peel ], [ %i.dy, %.thread329 ], [ %.1216395, %bb.as ]
  %indvars.iv.next439 = add nuw nsw i64 %indvars.iv438, 1
  %.not.not = icmp samesign ult i64 %indvars.iv438, %i.bw
  br i1 %.not.not, label %.lr.ph407.split, label %._crit_edge408, !llvm.loop !77

._crit_edge408:                                   ; preds = %._crit_edge398, %.lr.ph407, %bb.m
  call void @free(ptr noundef %i.be) #9
  %.not281 = icmp eq ptr %.sroa.10.0, null
  br i1 %.not281, label %bb.au, label %bb.at

bb.at:                                            ; preds = %._crit_edge408
  call void @free(ptr noundef nonnull %.sroa.10.0) #9
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %._crit_edge408
  %.not282 = icmp eq ptr %.0234, null
  br i1 %.not282, label %.thread341, label %.thread341.sink.split

bb.av:                                            ; preds = %bb.a
  %i.eu = icmp ne i32 %10, 0
  %.not273 = icmp slt i32 %10, %i.k
  %or.cond296 = select i1 %i.eu, i1 %.not273, i1 false
  br i1 %or.cond296, label %bb.ay, label %.preheader376

.preheader376:                                    ; preds = %bb.av
  %i.ev = icmp sgt i32 %2, 0
  br i1 %i.ev, label %.lr.ph, label %.thread341

.lr.ph:                                           ; preds = %.preheader376
  %i.ew = getelementptr inbounds nuw i8, ptr %8, i64 12
  br label %bb.aw

bb.aw:                                            ; preds = %.lr.ph, %bb.ax
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ax ] ; 2 uses
  %.0241383 = phi i32 [ %9, %.lr.ph ], [ %spec.select297, %bb.ax ]
  %.0245382 = phi i32 [ %2, %.lr.ph ], [ %i.fd, %bb.ax ] ; 2 uses
  %spec.select297 = tail call i32 @llvm.smin.i32(i32 %.0245382, i32 %.0241383) ; 3 uses
  %i.ex = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 96), align 8, !tbaa !56
  %i.ey = mul nsw i64 %i.l, %indvars.iv
  %i.ez = getelementptr inbounds i8, ptr %0, i64 %i.ey
  %i.fa = sext i32 %spec.select297 to i64
  %i.fb = load i32, ptr %i.ew, align 4, !tbaa !10
  %i.fc = tail call i32 %i.ex(ptr noundef %i.ez, i64 noundef %i.fa, ptr noundef %3, i32 noundef %i.fb, i32 noundef -21, i32 noundef 4, ptr noundef %6) #9 ; 2 uses
  %.not278 = icmp eq i32 %i.fc, 0
  br i1 %.not278, label %bb.ax, label %.thread332

bb.ax:                                            ; preds = %bb.aw
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.fd = sub nsw i32 %.0245382, %spec.select297  ; 2 uses
  %i.fe = icmp sgt i32 %i.fd, 0
  br i1 %i.fe, label %bb.aw, label %.thread341, !llvm.loop !78

bb.ay:                                            ; preds = %bb.av
  %i.ff = getelementptr inbounds nuw i8, ptr %7, i64 592
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !59
  %i.fh = tail call ptr @ompi_coll_base_comm_get_reqs(ptr noundef %i.fg, i32 noundef %10) #9 ; 8 uses
  %i.fi = icmp eq ptr %i.fh, null
  br i1 %i.fi, label %.lr.ph.i310.1, label %.preheader374

.preheader374:                                    ; preds = %bb.ay
  %i.fj = icmp sgt i32 %10, 0
  br i1 %i.fj, label %.lr.ph387, label %.preheader371

.lr.ph387:                                        ; preds = %.preheader374
  %i.fk = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.fl = mul i32 %10, %9
  %i.fm = sub i32 %2, %i.fl
  %wide.trip.count = zext nneg i32 %10 to i64
  br label %bb.az

.preheader371.loopexit:                           ; preds = %bb.ba
  %i.fn = zext nneg i32 %10 to i64
  br label %.preheader371

.preheader371:                                    ; preds = %.preheader371.loopexit, %.preheader374
  %.1246.lcssa = phi i32 [ %2, %.preheader374 ], [ %i.fm, %.preheader371.loopexit ] ; 2 uses
  %.2224.lcssa = phi i64 [ 0, %.preheader374 ], [ %i.fn, %.preheader371.loopexit ]
  %i.fo = icmp sgt i32 %.1246.lcssa, 0
  br i1 %i.fo, label %.lr.ph393, label %._crit_edge

.lr.ph393:                                        ; preds = %.preheader371
  %i.fp = getelementptr inbounds nuw i8, ptr %8, i64 12
  br label %bb.bb

bb.az:                                            ; preds = %.lr.ph387, %bb.ba
  %indvars.iv426 = phi i64 [ 0, %.lr.ph387 ], [ %indvars.iv.next427, %bb.ba ] ; 3 uses
  %i.fq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 88), align 8, !tbaa !92
  %i.fr = mul nsw i64 %i.l, %indvars.iv426
  %i.fs = getelementptr inbounds i8, ptr %0, i64 %i.fr
  %i.ft = load i32, ptr %i.fk, align 4, !tbaa !10
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %indvars.iv426
  %i.fv = tail call i32 %i.fq(ptr noundef %i.fs, i64 noundef %i.g, ptr noundef %3, i32 noundef %i.ft, i32 noundef -21, i32 noundef 0, ptr noundef %6, ptr noundef nonnull %i.fu) #9 ; 2 uses
  %.not277 = icmp eq i32 %i.fv, 0
  br i1 %.not277, label %bb.ba, label %.thread332

bb.ba:                                            ; preds = %bb.az
  %indvars.iv.next427 = add nuw nsw i64 %indvars.iv426, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next427, %wide.trip.count
  br i1 %exitcond.not, label %.preheader371.loopexit, label %bb.az, !llvm.loop !79

bb.bb:                                            ; preds = %.lr.ph393, %bb.bd
  %indvars.iv429 = phi i64 [ %.2224.lcssa, %.lr.ph393 ], [ %indvars.iv.next430, %bb.bd ] ; 2 uses
  %.0392 = phi i32 [ 0, %.lr.ph393 ], [ %i.gh, %bb.bd ] ; 2 uses
  %.2243390 = phi i32 [ %9, %.lr.ph393 ], [ %spec.select298, %bb.bd ]
  %.2247389 = phi i32 [ %.1246.lcssa, %.lr.ph393 ], [ %i.gi, %bb.bd ] ; 2 uses
  %i.fw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 32), align 8, !tbaa !89
  %i.fx = sext i32 %.0392 to i64
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.fh, i64 %i.fx ; 2 uses
  %i.fz = tail call i32 %i.fw(ptr noundef nonnull %i.fy, ptr noundef null) #9 ; 2 uses
  %.not275 = icmp eq i32 %i.fz, 0
  br i1 %.not275, label %bb.bc, label %.thread332

bb.bc:                                            ; preds = %bb.bb
  %spec.select298 = tail call i32 @llvm.smin.i32(i32 %.2247389, i32 %.2243390) ; 3 uses
  %i.ga = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 88), align 8, !tbaa !92
  %i.gb = mul nsw i64 %i.l, %indvars.iv429
  %i.gc = getelementptr inbounds i8, ptr %0, i64 %i.gb
  %i.gd = sext i32 %spec.select298 to i64
  %i.ge = load i32, ptr %i.fp, align 4, !tbaa !10
  %i.gf = tail call i32 %i.ga(ptr noundef %i.gc, i64 noundef %i.gd, ptr noundef %3, i32 noundef %i.ge, i32 noundef -21, i32 noundef 0, ptr noundef %6, ptr noundef nonnull %i.fy) #9 ; 2 uses
  %.not276 = icmp eq i32 %i.gf, 0
  br i1 %.not276, label %bb.bd, label %.thread332

bb.bd:                                            ; preds = %bb.bc
  %i.gg = add nsw i32 %.0392, 1
  %i.gh = srem i32 %i.gg, %10
  %indvars.iv.next430 = add nuw nsw i64 %indvars.iv429, 1
  %i.gi = sub nsw i32 %.2247389, %spec.select298  ; 2 uses
  %i.gj = icmp sgt i32 %i.gi, 0
  br i1 %i.gj, label %bb.bb, label %._crit_edge, !llvm.loop !80

._crit_edge:                                      ; preds = %bb.bd, %.preheader371
  %i.gk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 48), align 8, !tbaa !93
  %i.gl = sext i32 %10 to i64
  %i.gm = tail call i32 %i.gk(i64 noundef %i.gl, ptr noundef nonnull %i.fh, ptr noundef null) #9 ; 2 uses
  %.not274 = icmp eq i32 %i.gm, 0
  br i1 %.not274, label %.thread341, label %.thread332

.thread332.loopexit:                              ; preds = %bb.aa, %bb.s, %bb.r, %bb.ad, %bb.ar, %bb.ac
  %.8.ph = phi i32 [ %i.eq, %bb.ar ], [ %i.eb, %bb.ad ], [ %i.dw, %bb.ac ], [ %i.cx, %bb.r ], [ %i.dc, %bb.s ], [ %i.dn, %bb.aa ]
  %.pre.pre = load ptr, ptr %i.b, align 16, !tbaa !95
  br label %.thread332

.thread332:                                       ; preds = %bb.aw, %bb.az, %bb.bb, %bb.bc, %.thread332.loopexit, %._crit_edge
  %.pre = phi ptr [ @ompi_request_null, %._crit_edge ], [ @ompi_request_null, %bb.bb ], [ %.pre.pre, %.thread332.loopexit ], [ @ompi_request_null, %bb.az ], [ @ompi_request_null, %bb.bc ], [ @ompi_request_null, %bb.aw ] ; 7 uses
  %.sroa.0.1 = phi ptr [ null, %._crit_edge ], [ null, %bb.bb ], [ %i.be, %.thread332.loopexit ], [ null, %bb.az ], [ null, %bb.bc ], [ null, %bb.aw ] ; 3 uses
  %.sroa.10.2 = phi ptr [ null, %._crit_edge ], [ null, %bb.bb ], [ %.sroa.10.0, %.thread332.loopexit ], [ null, %bb.az ], [ null, %bb.bc ], [ null, %bb.aw ] ; 3 uses
  %.2239 = phi ptr [ null, %._crit_edge ], [ null, %bb.bb ], [ %.0237, %.thread332.loopexit ], [ null, %bb.az ], [ null, %bb.bc ], [ null, %bb.aw ] ; 3 uses
  %.2236 = phi ptr [ null, %._crit_edge ], [ null, %bb.bb ], [ %.0234, %.thread332.loopexit ], [ null, %bb.az ], [ null, %bb.bc ], [ null, %bb.aw ] ; 3 uses
  %.0230 = phi ptr [ %i.fh, %._crit_edge ], [ %i.fh, %bb.bb ], [ null, %.thread332.loopexit ], [ %i.fh, %bb.az ], [ %i.fh, %bb.bc ], [ null, %bb.aw ] ; 3 uses
  %.8 = phi i32 [ %i.gm, %._crit_edge ], [ %i.fz, %bb.bb ], [ %.8.ph, %.thread332.loopexit ], [ %i.fv, %bb.az ], [ %i.gf, %bb.bc ], [ %i.fc, %bb.aw ] ; 2 uses
  %i.gn = icmp eq i32 %.8, 18
  br i1 %i.gn, label %.preheader370.preheader, label %.thread332.thread

.preheader370.preheader:                          ; preds = %.thread332
  %i.go = icmp eq ptr %.pre, @ompi_request_null
  br i1 %i.go, label %.preheader370.1, label %bb.be

bb.be:                                            ; preds = %.preheader370.preheader
  %i.gp = getelementptr inbounds nuw i8, ptr %.pre, i64 72
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !102 ; 2 uses
  switch i32 %i.gq, label %.thread332.thread.thread495 [
    i32 19, label %.preheader370.1
    i32 0, label %.preheader370.1
  ]

.preheader370.1:                                  ; preds = %bb.be, %bb.be, %.preheader370.preheader
  %i.gr = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !95 ; 2 uses
  %i.gt = icmp eq ptr %i.gs, @ompi_request_null
  br i1 %i.gt, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.preheader370.1
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 72
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !102 ; 2 uses
  switch i32 %i.gv, label %.thread332.thread [
    i32 19, label %bb.bg
    i32 0, label %bb.bg
  ]

bb.bg:                                            ; preds = %bb.bf, %bb.bf, %.preheader370.1
  br label %.thread332.thread

.thread332.thread:                                ; preds = %bb.bf, %bb.bg, %.thread332
  %.9 = phi i32 [ %.8, %.thread332 ], [ %i.gv, %bb.bf ], [ 18, %bb.bg ] ; 2 uses
  %.not.i311 = icmp eq ptr %.pre, @ompi_request_null
  br i1 %.not.i311, label %.lr.ph.i310.1, label %.thread332.thread.thread495

.thread332.thread.thread495:                      ; preds = %bb.be, %.thread332.thread
  %.9508 = phi i32 [ %.9, %.thread332.thread ], [ %i.gq, %bb.be ] ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.pre, i64 72
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !102
  %.off.i = add i32 %i.gx, -75
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %.thread332.thread.thread495
  %i.gy = getelementptr inbounds nuw i8, ptr %.pre, i64 128
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !103 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gz, null
  br i1 %.not.i.i, label %ompi_request_cancel.exit.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ha = call i32 %i.gz(ptr noundef nonnull %.pre, i32 noundef 1) #9, !inline_history !81 ; 0 uses
end_hunk_0
