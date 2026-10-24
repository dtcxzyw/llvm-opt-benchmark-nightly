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
  %spec.select = select i1 %i.m, ptr %1, ptr %0   ; 2 uses
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
  %.01728.i = phi ptr [ %i.ao, %bb.g ], [ %0, %bb.f ] ; 2 uses
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

end_hunk_0
begin_hunk_1_@ompi_coll_base_reduce_intra_pipeline:bb.a
  %i.l = getelementptr i8, ptr %3, i64 24
  %.val = load i64, ptr %i.l, align 8, !tbaa !51  ; 5 uses
  %i.m = zext i32 %8 to i64                       ; 3 uses
  %.not36 = icmp ugt i64 %.val, %i.m
  br i1 %.not36, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = sext i32 %2 to i64
  %i.o = mul nsw i64 %.val, %i.n
  %i.p = icmp ugt i64 %i.o, %i.m
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.rhs.trunc = trunc nuw i64 %.val to i32
  %i.q = udiv i32 %8, %.rhs.trunc                 ; 2 uses
  %i.r = sext i32 %i.q to i64
  %i.s = mul nsw i64 %.val, %i.r
  %i.t = sub i64 %i.m, %i.s
  %i.u = lshr i64 %.val, 1
  %i.v = icmp ugt i64 %i.t, %i.u
  %i.w = zext i1 %i.v to i32
  %spec.select = add nsw i32 %i.q, %i.w
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.1 = phi i32 [ %spec.select, %bb.f ], [ %2, %bb.e ], [ %2, %bb.d ]
  %i.x = tail call i32 @ompi_coll_base_reduce_generic(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %i.k, i32 noundef %.1, i32 noundef %9)
  ret i32 %i.x
}

; Function Attrs: nounwind uwtable
define i32 @ompi_coll_base_reduce_intra_binary(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr noundef %6, ptr nofree noundef readonly captures(none) %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 592
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !110  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.f = load i32, ptr %i.e, align 8, !tbaa !111
  %i.g = icmp eq i32 %i.f, %5
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @ompi_coll_base_topo_destroy_tree(ptr noundef nonnull %i.c) #9 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c
  %i.i = tail call ptr @ompi_coll_base_topo_build_tree(i32 noundef 2, ptr noundef %6, i32 noundef %5) #9 ; 2 uses
  store ptr %i.i, ptr %i.c, align 8, !tbaa !110
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 %5, ptr %i.j, align 8, !tbaa !111
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.b
  %i.k = phi ptr [ %i.i, %.thread ], [ %i.d, %bb.b ]
  %i.l = getelementptr i8, ptr %3, i64 24
  %.val = load i64, ptr %i.l, align 8, !tbaa !51  ; 5 uses
  %i.m = zext i32 %8 to i64                       ; 3 uses
  %.not36 = icmp ugt i64 %.val, %i.m
  br i1 %.not36, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = sext i32 %2 to i64
  %i.o = mul nsw i64 %.val, %i.n
  %i.p = icmp ugt i64 %i.o, %i.m
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.rhs.trunc = trunc nuw i64 %.val to i32
  %i.q = udiv i32 %8, %.rhs.trunc                 ; 2 uses
  %i.r = sext i32 %i.q to i64
  %i.s = mul nsw i64 %.val, %i.r
  %i.t = sub i64 %i.m, %i.s
  %i.u = lshr i64 %.val, 1
  %i.v = icmp ugt i64 %i.t, %i.u
  %i.w = zext i1 %i.v to i32
  %spec.select = add nsw i32 %i.q, %i.w
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.1 = phi i32 [ %spec.select, %bb.f ], [ %2, %bb.e ], [ %2, %bb.d ]
  %i.x = tail call i32 @ompi_coll_base_reduce_generic(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %i.k, i32 noundef %.1, i32 noundef %9)
  ret i32 %i.x
}

declare ptr @ompi_coll_base_topo_build_tree(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define i32 @ompi_coll_base_reduce_intra_binomial(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr noundef %6, ptr nofree noundef readonly captures(none) %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 592
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !112  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.f = load i32, ptr %i.e, align 8, !tbaa !113
  %i.g = icmp eq i32 %i.f, %5
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @ompi_coll_base_topo_destroy_tree(ptr noundef nonnull %i.c) #9 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c
  %i.i = tail call ptr @ompi_coll_base_topo_build_in_order_bmtree(ptr noundef %6, i32 noundef %5) #9 ; 2 uses
  store ptr %i.i, ptr %i.c, align 8, !tbaa !112
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i32 %5, ptr %i.j, align 8, !tbaa !113
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.b
  %i.k = phi ptr [ %i.i, %.thread ], [ %i.d, %bb.b ]
  %i.l = getelementptr i8, ptr %3, i64 24
  %.val = load i64, ptr %i.l, align 8, !tbaa !51  ; 5 uses
  %i.m = zext i32 %8 to i64                       ; 3 uses
  %.not36 = icmp ugt i64 %.val, %i.m
  br i1 %.not36, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = sext i32 %2 to i64
  %i.o = mul nsw i64 %.val, %i.n
  %i.p = icmp ugt i64 %i.o, %i.m
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.rhs.trunc = trunc nuw i64 %.val to i32
  %i.q = udiv i32 %8, %.rhs.trunc                 ; 2 uses
  %i.r = sext i32 %i.q to i64
  %i.s = mul nsw i64 %.val, %i.r
  %i.t = sub i64 %i.m, %i.s
  %i.u = lshr i64 %.val, 1
  %i.v = icmp ugt i64 %i.t, %i.u
  %i.w = zext i1 %i.v to i32
  %spec.select = add nsw i32 %i.q, %i.w
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.1 = phi i32 [ %spec.select, %bb.f ], [ %2, %bb.e ], [ %2, %bb.d ]
  %i.x = tail call i32 @ompi_coll_base_reduce_generic(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %i.k, i32 noundef %.1, i32 noundef %9)
  ret i32 %i.x
}

declare ptr @ompi_coll_base_topo_build_in_order_bmtree(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define i32 @ompi_coll_base_reduce_intra_in_order_binary(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr noundef %6, ptr nofree noundef readonly captures(none) %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 592
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59
  %i.c = getelementptr i8, ptr %6, i64 220
  %.val = load i32, ptr %i.c, align 4, !tbaa !50  ; 3 uses
  %i.d = getelementptr i8, ptr %6, i64 264
  %.val115 = load ptr, ptr %i.d, align 8, !tbaa !63
  %i.e = getelementptr i8, ptr %.val115, i64 16
  %.val115.val = load i32, ptr %i.e, align 8, !tbaa !66
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !114  ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @ompi_coll_base_topo_build_in_order_bintree(ptr noundef nonnull %6) #9 ; 2 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !114
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi ptr [ %i.h, %bb.b ], [ %i.g, %bb.a ] ; 4 uses
  %i.j = getelementptr i8, ptr %3, i64 24
  %.val114 = load i64, ptr %i.j, align 8, !tbaa !51 ; 6 uses
  %i.k = zext i32 %8 to i64                       ; 3 uses
  %.not108 = icmp ugt i64 %.val114, %i.k
  br i1 %.not108, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = sext i32 %2 to i64
  %i.m = mul nsw i64 %.val114, %i.l
  %i.n = icmp ugt i64 %i.m, %i.k
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.rhs.trunc = trunc nuw i64 %.val114 to i32
  %i.o = udiv i32 %8, %.rhs.trunc                 ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = mul nsw i64 %.val114, %i.p
  %i.r = sub i64 %i.k, %i.q
  %i.s = lshr i64 %.val114, 1
  %i.t = icmp ugt i64 %i.r, %i.s
  %i.u = zext i1 %i.t to i32
  %spec.select = add nsw i32 %i.o, %i.u
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.190 = phi i32 [ %spec.select, %bb.e ], [ %2, %bb.d ], [ %2, %bb.c ] ; 3 uses
  %i.v = add nsw i32 %.val115.val, -1             ; 6 uses
  %.not109 = icmp eq i32 %i.v, %5
  br i1 %.not109, label %ompi_datatype_copy_content_same_ddt.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = sext i32 %2 to i64                       ; 4 uses
  %i.x = icmp eq i64 %.val114, 0
  %i.y = icmp eq i32 %2, 0                        ; 2 uses
  %or.cond.i = or i1 %i.y, %i.x
  br i1 %or.cond.i, label %opal_datatype_span.exit, label %bb.h, !prof !52

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !53  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !21
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !20
  %i.af = sub nsw i64 %i.ac, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !54
  %i.ai = sub i64 %i.ah, %i.aa
  %i.aj = add nsw i64 %i.w, -1
  %i.ak = mul i64 %i.af, %i.aj
  %i.al = add i64 %i.ai, %i.ak
  br label %opal_datatype_span.exit

opal_datatype_span.exit:                          ; preds = %bb.g, %bb.h
  %.0 = phi i64 [ %i.aa, %bb.h ], [ 0, %bb.g ]    ; 2 uses
  %.0.i = phi i64 [ %i.al, %bb.h ], [ 0, %bb.g ]  ; 2 uses
  %i.am = icmp eq i32 %5, %.val                   ; 2 uses
  %i.an = icmp eq ptr %0, inttoptr (i64 1 to ptr)
  %or.cond = and i1 %i.an, %i.am
  br i1 %or.cond, label %bb.i, label %bb.l

bb.i:                                             ; preds = %opal_datatype_span.exit
  %i.ao = tail call noalias ptr @malloc(i64 noundef %.0.i) #10 ; 5 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = sub i64 0, %.0
  %i.ar = getelementptr inbounds i8, ptr %i.ao, i64 %i.aq ; 3 uses
  %i.as = getelementptr i8, ptr %3, i64 48
  %.val.i = load i64, ptr %i.as, align 8, !tbaa !20
  %i.at = getelementptr i8, ptr %3, i64 56
  %.val23.i = load i64, ptr %i.at, align 8, !tbaa !21
  %i.au = sub nsw i64 %.val23.i, %.val.i
  br i1 %i.y, label %ompi_datatype_copy_content_same_ddt.exit.thread142, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.k
  %.01728.i = phi ptr [ %i.ay, %bb.k ], [ %1, %bb.j ] ; 2 uses
  %.01827.i = phi ptr [ %i.ax, %bb.k ], [ %i.ar, %bb.j ] ; 2 uses
  %.01926.i = phi i64 [ %i.az, %bb.k ], [ %i.w, %bb.j ] ; 2 uses
  %spec.select24.i = tail call i64 @llvm.umin.i64(i64 %.01926.i, i64 2147483647) ; 3 uses
  %spec.select.i = trunc nuw nsw i64 %spec.select24.i to i32
  %i.av = tail call i32 @opal_datatype_copy_content_same_ddt(ptr noundef %3, i32 noundef %spec.select.i, ptr noundef %.01827.i, ptr noundef %.01728.i) #9
  %.not22.i = icmp eq i32 %i.av, 0
  br i1 %.not22.i, label %bb.k, label %ompi_datatype_copy_content_same_ddt.exit.loopexit

bb.k:                                             ; preds = %.lr.ph.i
  %i.aw = mul nsw i64 %spec.select24.i, %i.au     ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %.01827.i, i64 %i.aw
  %i.ay = getelementptr inbounds i8, ptr %.01728.i, i64 %i.aw
  %i.az = sub nuw i64 %.01926.i, %spec.select24.i ; 2 uses
  %.not.i = icmp eq i64 %i.az, 0
  br i1 %.not.i, label %ompi_datatype_copy_content_same_ddt.exit.loopexit, label %.lr.ph.i, !llvm.loop !0

bb.l:                                             ; preds = %opal_datatype_span.exit
  %i.ba = icmp eq i32 %i.v, %.val
  br i1 %i.ba, label %bb.m, label %ompi_datatype_copy_content_same_ddt.exit

bb.m:                                             ; preds = %bb.l
  %i.bb = tail call noalias ptr @malloc(i64 noundef %.0.i) #10 ; 3 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = sub i64 0, %.0
  %i.be = getelementptr inbounds i8, ptr %i.bb, i64 %i.bd
  br label %ompi_datatype_copy_content_same_ddt.exit

ompi_datatype_copy_content_same_ddt.exit.loopexit: ; preds = %bb.k, %.lr.ph.i
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !114
  br label %ompi_datatype_copy_content_same_ddt.exit

ompi_datatype_copy_content_same_ddt.exit:         ; preds = %ompi_datatype_copy_content_same_ddt.exit.loopexit, %bb.l, %bb.n
  %10 = phi ptr [ %.pre, %ompi_datatype_copy_content_same_ddt.exit.loopexit ], [ %i.i, %bb.n ], [ %i.i, %bb.l ]
  %.288 = phi ptr [ %i.ar, %ompi_datatype_copy_content_same_ddt.exit.loopexit ], [ %0, %bb.n ], [ %0, %bb.l ]
  %.285 = phi ptr [ %1, %ompi_datatype_copy_content_same_ddt.exit.loopexit ], [ %i.be, %bb.n ], [ %1, %bb.l ] ; 2 uses
  %.2 = phi ptr [ %i.ao, %ompi_datatype_copy_content_same_ddt.exit.loopexit ], [ %i.bb, %bb.n ], [ null, %bb.l ] ; 5 uses
  %i.bf = tail call i32 @ompi_coll_base_reduce_generic(ptr noundef %.288, ptr noundef %.285, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %i.v, ptr noundef %6, ptr noundef %7, ptr noundef %10, i32 noundef %.190, i32 noundef %9) ; 2 uses
  %.not110 = icmp eq i32 %i.bf, 0
  br i1 %.not110, label %bb.o, label %.critedge.sink.split

ompi_datatype_copy_content_same_ddt.exit.thread142: ; preds = %bb.j
  %11 = tail call i32 @ompi_coll_base_reduce_generic(ptr noundef nonnull %i.ar, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %3, ptr noundef %4, i32 noundef %i.v, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %i.i, i32 noundef %.190, i32 noundef %9) ; 2 uses
  %.not110146 = icmp eq i32 %11, 0
  br i1 %.not110146, label %bb.p, label %.critedge.sink.split

ompi_datatype_copy_content_same_ddt.exit.thread:  ; preds = %bb.f
  %i.bg = tail call i32 @ompi_coll_base_reduce_generic(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %i.i, i32 noundef %.190, i32 noundef %9) ; 2 uses
  %.not110121 = icmp eq i32 %i.bg, 0
  br i1 %.not110121, label %.critedge, label %.critedge.sink.split

bb.o:                                             ; preds = %ompi_datatype_copy_content_same_ddt.exit
  br i1 %i.am, label %bb.p, label %bb.q

bb.p:                                             ; preds = %ompi_datatype_copy_content_same_ddt.exit.thread142, %bb.o
  %.2148151 = phi ptr [ %.2, %bb.o ], [ %i.ao, %ompi_datatype_copy_content_same_ddt.exit.thread142 ] ; 2 uses
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 72), align 8, !tbaa !67
  %i.bi = tail call i32 %i.bh(ptr noundef %1, i64 noundef %i.w, ptr noundef %3, i32 noundef %i.v, i32 noundef -21, ptr noundef %6, ptr noundef null) #9 ; 2 uses
  %.not112 = icmp eq i32 %i.bi, 0
  br i1 %.not112, label %bb.s, label %.critedge.sink.split

bb.q:                                             ; preds = %bb.o
  %i.bj = icmp eq i32 %i.v, %.val
  br i1 %i.bj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 96), align 8, !tbaa !56
  %i.bl = tail call i32 %i.bk(ptr noundef %.285, i64 noundef %i.w, ptr noundef %3, i32 noundef %5, i32 noundef -21, i32 noundef 4, ptr noundef %6) #9 ; 2 uses
  %.not111 = icmp eq i32 %i.bl, 0
  br i1 %.not111, label %bb.s, label %.critedge.sink.split

bb.s:                                             ; preds = %bb.p, %bb.r, %bb.q
  %.2148152 = phi ptr [ %.2148151, %bb.p ], [ %.2, %bb.r ], [ %.2, %bb.q ] ; 2 uses
  %.not113 = icmp eq ptr %.2148152, null
  br i1 %.not113, label %.critedge, label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.s, %bb.r, %bb.p, %ompi_datatype_copy_content_same_ddt.exit, %ompi_datatype_copy_content_same_ddt.exit.thread, %ompi_datatype_copy_content_same_ddt.exit.thread142
  %.2148152.sink = phi ptr [ %.2, %bb.r ], [ %.2148151, %bb.p ], [ %i.ao, %ompi_datatype_copy_content_same_ddt.exit.thread142 ], [ null, %ompi_datatype_copy_content_same_ddt.exit.thread ], [ %.2, %ompi_datatype_copy_content_same_ddt.exit ], [ %.2148152, %bb.s ]
  %.192.ph = phi i32 [ %i.bl, %bb.r ], [ %i.bi, %bb.p ], [ %11, %ompi_datatype_copy_content_same_ddt.exit.thread142 ], [ %i.bg, %ompi_datatype_copy_content_same_ddt.exit.thread ], [ %i.bf, %ompi_datatype_copy_content_same_ddt.exit ], [ 0, %bb.s ]
  tail call void @free(ptr noundef %.2148152.sink) #9
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %ompi_datatype_copy_content_same_ddt.exit.thread, %bb.i, %bb.m, %bb.s
  %.192 = phi i32 [ 0, %ompi_datatype_copy_content_same_ddt.exit.thread ], [ 0, %bb.s ], [ 17, %bb.i ], [ 17, %bb.m ], [ %.192.ph, %.critedge.sink.split ]
  ret i32 %.192
}

declare ptr @ompi_coll_base_topo_build_in_order_bintree(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define i32 @ompi_coll_base_reduce_intra_basic_linear(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr noundef %6, ptr nofree readnone captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %6, i64 220
  %.val97 = load i32, ptr %i.a, align 4, !tbaa !50
  %i.b = getelementptr i8, ptr %6, i64 264
  %.val98 = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.c = getelementptr i8, ptr %.val98, i64 16
  %.val98.val = load i32, ptr %i.c, align 8, !tbaa !66 ; 3 uses
  %.not = icmp eq i32 %.val97, %5
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 96), align 8, !tbaa !56
  %i.e = sext i32 %2 to i64
  %i.f = tail call i32 %i.d(ptr noundef %0, i64 noundef %i.e, ptr noundef %3, i32 noundef %5, i32 noundef -21, i32 noundef 4, ptr noundef nonnull %6) #9
  br label %bb.ab

bb.c:                                             ; preds = %bb.a
  %i.g = sext i32 %2 to i64                       ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !51
  %i.j = icmp eq i64 %i.i, 0
  %i.k = icmp eq i32 %2, 0                        ; 3 uses
  %or.cond.i = or i1 %i.k, %i.j
  %.phi.trans.insert126 = getelementptr i8, ptr %3, i64 56
  %.val96.pre = load i64, ptr %.phi.trans.insert126, align 8, !tbaa !21 ; 2 uses
  br i1 %or.cond.i, label %.opal_datatype_span.exit_crit_edge, label %bb.d, !prof !52

.opal_datatype_span.exit_crit_edge:               ; preds = %bb.c
  %.phi.trans.insert = getelementptr i8, ptr %3, i64 48
  %.val.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !20
  br label %opal_datatype_span.exit

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !53   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.o = load i64, ptr %i.n, align 8, !tbaa !20   ; 2 uses
  %i.p = sub nsw i64 %.val96.pre, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.r = load i64, ptr %i.q, align 8, !tbaa !54
  %i.s = sub i64 %i.r, %i.m
  %i.t = add nsw i64 %i.g, -1
  %i.u = mul i64 %i.p, %i.t
  %i.v = add i64 %i.s, %i.u
  br label %opal_datatype_span.exit

opal_datatype_span.exit:                          ; preds = %.opal_datatype_span.exit_crit_edge, %bb.d
  %.val = phi i64 [ %i.o, %bb.d ], [ %.val.pre, %.opal_datatype_span.exit_crit_edge ]
  %.0113 = phi i64 [ %i.m, %bb.d ], [ 0, %.opal_datatype_span.exit_crit_edge ] ; 2 uses
  %.0.i = phi i64 [ %i.v, %bb.d ], [ 0, %.opal_datatype_span.exit_crit_edge ] ; 2 uses
  %i.w = getelementptr i8, ptr %3, i64 48
  %i.x = getelementptr i8, ptr %3, i64 56
  %i.y = icmp eq ptr %0, inttoptr (i64 1 to ptr)
  br i1 %i.y, label %bb.e, label %bb.g

bb.e:                                             ; preds = %opal_datatype_span.exit
  %i.z = tail call noalias ptr @malloc(i64 noundef %.0.i) #10 ; 3 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.ab, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = sub i64 0, %.0113
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 %i.ab
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %opal_datatype_span.exit
  %.079 = phi ptr [ %i.ac, %bb.f ], [ %1, %opal_datatype_span.exit ] ; 4 uses
  %.078 = phi ptr [ %1, %bb.f ], [ %0, %opal_datatype_span.exit ] ; 3 uses
  %.072 = phi ptr [ %i.z, %bb.f ], [ null, %opal_datatype_span.exit ] ; 8 uses
  %i.ad = icmp sgt i32 %.val98.val, 1             ; 2 uses
  br i1 %i.ad, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ae = tail call noalias ptr @malloc(i64 noundef %.0.i) #10 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %.not95 = icmp eq ptr %.072, null
  br i1 %.not95, label %bb.ab, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %.072) #9
  br label %bb.ab

bb.k:                                             ; preds = %bb.h
  %i.ag = sub i64 0, %.0113
  %i.ah = getelementptr inbounds i8, ptr %i.ae, i64 %i.ag
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.g
  %.074 = phi ptr [ %i.ae, %bb.k ], [ null, %bb.g ] ; 6 uses
  %.073 = phi ptr [ %i.ah, %bb.k ], [ null, %bb.g ] ; 2 uses
  %i.ai = add nsw i32 %.val98.val, -1             ; 2 uses
  %i.aj = icmp eq i32 %5, %i.ai
  br i1 %i.aj, label %bb.m, label %ompi_datatype_copy_content_same_ddt.exit

bb.m:                                             ; preds = %bb.l
  %i.ak = sub nsw i64 %.val96.pre, %.val
  br i1 %i.k, label %ompi_datatype_copy_content_same_ddt.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %bb.n
  %.01728.i = phi ptr [ %i.ao, %bb.n ], [ %.078, %bb.m ] ; 2 uses
  %.01827.i = phi ptr [ %i.an, %bb.n ], [ %.079, %bb.m ] ; 2 uses
  %.01926.i = phi i64 [ %i.ap, %bb.n ], [ %i.g, %bb.m ] ; 2 uses
  %spec.select24.i = tail call i64 @llvm.umin.i64(i64 %.01926.i, i64 2147483647) ; 3 uses
  %spec.select.i = trunc nuw nsw i64 %spec.select24.i to i32
  %i.al = tail call i32 @opal_datatype_copy_content_same_ddt(ptr noundef %3, i32 noundef %spec.select.i, ptr noundef %.01827.i, ptr noundef %.01728.i) #9 ; 2 uses
  %.not22.i = icmp eq i32 %i.al, 0
  br i1 %.not22.i, label %bb.n, label %ompi_datatype_copy_content_same_ddt.exit.thread116

bb.n:                                             ; preds = %.lr.ph.i
  %i.am = mul nsw i64 %spec.select24.i, %i.ak     ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %.01827.i, i64 %i.am
  %i.ao = getelementptr inbounds i8, ptr %.01728.i, i64 %i.am
  %i.ap = sub nuw i64 %.01926.i, %spec.select24.i ; 2 uses
  %.not.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i, label %ompi_datatype_copy_content_same_ddt.exit.thread, label %.lr.ph.i, !llvm.loop !0

ompi_datatype_copy_content_same_ddt.exit:         ; preds = %bb.l
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 72), align 8, !tbaa !67
  %i.ar = tail call i32 %i.aq(ptr noundef %.079, i64 noundef %i.g, ptr noundef nonnull %3, i32 noundef %i.ai, i32 noundef -21, ptr noundef nonnull %6, ptr noundef null) #9 ; 2 uses
  %.not87 = icmp eq i32 %i.ar, 0
  br i1 %.not87, label %ompi_datatype_copy_content_same_ddt.exit.thread, label %ompi_datatype_copy_content_same_ddt.exit.thread116

ompi_datatype_copy_content_same_ddt.exit.thread116: ; preds = %.lr.ph.i, %ompi_datatype_copy_content_same_ddt.exit
  %.075119 = phi i32 [ %i.ar, %ompi_datatype_copy_content_same_ddt.exit ], [ %i.al, %.lr.ph.i ] ; 2 uses
  %.not93 = icmp eq ptr %.074, null
  br i1 %.not93, label %bb.p, label %bb.o

bb.o:                                             ; preds = %ompi_datatype_copy_content_same_ddt.exit.thread116
  tail call void @free(ptr noundef nonnull %.074) #9
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %ompi_datatype_copy_content_same_ddt.exit.thread116
  %.not94 = icmp eq ptr %.072, null
  br i1 %.not94, label %bb.ab, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @free(ptr noundef nonnull %.072) #9
  br label %bb.ab

ompi_datatype_copy_content_same_ddt.exit.thread:  ; preds = %bb.n, %bb.m, %ompi_datatype_copy_content_same_ddt.exit
  br i1 %i.ad, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %ompi_datatype_copy_content_same_ddt.exit.thread
  %i.as = add nsw i32 %.val98.val, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.w
  %.076122 = phi i32 [ %i.aw, %bb.w ], [ %i.as, %.lr.ph.preheader ] ; 4 uses
  %i.at = icmp eq i32 %5, %.076122
  br i1 %i.at, label %bb.w, label %bb.r

bb.r:                                             ; preds = %.lr.ph
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 72), align 8, !tbaa !67
  %i.av = tail call i32 %i.au(ptr noundef %.073, i64 noundef %i.g, ptr noundef %3, i32 noundef %.076122, i32 noundef -21, ptr noundef %6, ptr noundef null) #9 ; 3 uses
  %.not90 = icmp eq i32 %i.av, 0
  br i1 %.not90, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not91 = icmp eq ptr %.074, null
  br i1 %.not91, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @free(ptr noundef nonnull %.074) #9
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.not92 = icmp eq ptr %.072, null
  br i1 %.not92, label %bb.ab, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @free(ptr noundef nonnull %.072) #9
  br label %bb.ab

bb.w:                                             ; preds = %bb.r, %.lr.ph
  %.0 = phi ptr [ %.078, %.lr.ph ], [ %.073, %bb.r ]
  tail call fastcc void @ompi_op_reduce(ptr noundef %4, ptr noundef %.0, ptr noundef %.079, i64 noundef %i.g, ptr noundef %3)
  %i.aw = add nsw i32 %.076122, -1
  %i.ax = icmp sgt i32 %.076122, 0
  br i1 %i.ax, label %.lr.ph, label %._crit_edge, !llvm.loop !115

._crit_edge:                                      ; preds = %bb.w, %ompi_datatype_copy_content_same_ddt.exit.thread
  %.not88 = icmp eq ptr %.072, null
  br i1 %.not88, label %bb.z, label %bb.x

bb.x:                                             ; preds = %._crit_edge
  %.val.i99 = load i64, ptr %i.w, align 8, !tbaa !20
end_hunk_1
