Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/explicit_gop?download=true
inline.NumInlined: 8
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
@giRDOpt_B8OnlyFlag = common dso_local local_unnamed_addr global i32 0, align 4
@imgY_tmp = common dso_local local_unnamed_addr global ptr null, align 8
@imgUV_tmp = common dso_local local_unnamed_addr global [2 x ptr] zeroinitializer, align 16
@frameNuminGOP = common dso_local local_unnamed_addr global i32 0, align 4
@redundant_coding = common dso_local local_unnamed_addr global i32 0, align 4
@key_frame = common dso_local local_unnamed_addr global i32 0, align 4
@redundant_ref_idx = common dso_local local_unnamed_addr global i32 0, align 4
@img_pad_size_uv_x = common dso_local local_unnamed_addr global i32 0, align 4
@img_pad_size_uv_y = common dso_local local_unnamed_addr global i32 0, align 4
@chroma_mask_mv_y = common dso_local local_unnamed_addr global i8 0, align 1
@chroma_mask_mv_x = common dso_local local_unnamed_addr global i8 0, align 1
@chroma_shift_y = common dso_local local_unnamed_addr global i32 0, align 4
@chroma_shift_x = common dso_local local_unnamed_addr global i32 0, align 4
@shift_cr_x = common dso_local local_unnamed_addr global i32 0, align 4
@shift_cr_y = common dso_local local_unnamed_addr global i32 0, align 4
@img_padded_size_x = common dso_local local_unnamed_addr global i32 0, align 4
@img_cr_padded_size_x = common dso_local local_unnamed_addr global i32 0, align 4
@start_me_refinement_hp = common dso_local local_unnamed_addr global i32 0, align 4
@start_me_refinement_qp = common dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @create_hierarchy() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @input, align 8, !tbaa !8  ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2096
  %i.c = load i32, ptr %i.b, align 8, !tbaa !10   ; 10 uses
  %i.d = sdiv i32 %i.c, 2                         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 2968
  %i.f = load i32, ptr %i.e, align 8, !tbaa !15
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %.preheader, label %.preheader68

.preheader68:                                     ; preds = %bb.a
  %i.h = add nsw i32 %i.c, 1                      ; 2 uses
  br label %bb.h

.preheader:                                       ; preds = %bb.a
  %i.i = icmp sgt i32 %i.c, 0
  br i1 %i.i, label %.lr.ph78, label %._crit_edge79

.lr.ph78:                                         ; preds = %.preheader
  %i.j = load ptr, ptr @gop_structure, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 2104 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 2972
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 2108
  %i.n = zext nneg i32 %i.d to i64
  %wide.trip.count95 = zext nneg i32 %i.c to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph78, %bb.g
  %indvars.iv92 = phi i64 [ 0, %.lr.ph78 ], [ %indvars.iv.next93, %bb.g ] ; 4 uses
  %i.o = icmp samesign ult i64 %indvars.iv92, %i.n
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %indvars.iv92 ; 5 uses
  store i32 1, ptr %i.p, align 4, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  %indvars.iv92.tr = trunc i64 %indvars.iv92 to i32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  br i1 %i.o, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.t = shl i32 %indvars.iv92.tr, 1
  %i.u = or disjoint i32 %i.t, 1
  store i32 %i.u, ptr %i.q, align 4, !tbaa !18
  store i32 1, ptr %i.r, align 4, !tbaa !19
  store i32 2, ptr %i.s, align 4, !tbaa !20
  %i.v = load i32, ptr %i.k, align 8, !tbaa !21
  %i.w = load i32, ptr %i.l, align 4, !tbaa !22
  %.not64 = icmp eq i32 %i.w, 0
  br i1 %.not64, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = load i32, ptr %i.m, align 4, !tbaa !23
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.y = phi i32 [ %i.x, %bb.d ], [ -1, %bb.c ]
  %i.z = add nsw i32 %i.y, %i.v
  %i.aa = tail call noundef i32 @llvm.smax.i32(i32 %i.z, i32 0)
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %.tr = sub i32 %indvars.iv92.tr, %i.d
  %i.ab = shl nsw i32 %.tr, 1
  store i32 %i.ab, ptr %i.q, align 4, !tbaa !18
  store i32 0, ptr %i.r, align 4, !tbaa !19
  store i32 0, ptr %i.s, align 4, !tbaa !20
  %i.ac = load i32, ptr %i.k, align 8, !tbaa !21
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sink = phi i32 [ %i.aa, %bb.e ], [ %i.ac, %bb.f ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 %.sink, ptr %i.ad, align 4, !tbaa !24
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %exitcond96.not = icmp eq i64 %indvars.iv.next93, %wide.trip.count95
  br i1 %exitcond96.not, label %._crit_edge79, label %bb.b, !llvm.loop !25

._crit_edge79:                                    ; preds = %bb.g, %.preheader
  %i.ae = load ptr, ptr @img, align 8, !tbaa !8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 15612
  store i32 2, ptr %i.af, align 4, !tbaa !27
  br label %.loopexit

bb.h:                                             ; preds = %bb.h, %.preheader68
  %.059 = phi i32 [ %i.ai, %bb.h ], [ 1, %.preheader68 ] ; 5 uses
  %i.ag = ashr i32 %i.h, %.059
  %i.ah = icmp sgt i32 %i.ag, 1
  %i.ai = add nuw nsw i32 %.059, 1
  br i1 %i.ah, label %bb.h, label %bb.i, !llvm.loop !44

bb.i:                                             ; preds = %bb.h
  %i.aj = load ptr, ptr @img, align 8, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 15612
  store i32 %.059, ptr %i.ak, align 4, !tbaa !27
  %i.al = icmp sgt i32 %i.c, 0
  br i1 %i.al, label %.lr.ph, label %.preheader67

.lr.ph:                                           ; preds = %bb.i
  %i.am = load ptr, ptr @gop_structure, align 8, !tbaa !8 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 2104
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !21 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.c to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ap = icmp eq i32 %i.c, 1
  br i1 %i.ap, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.j

.preheader67.loopexit.unr-lcssa:                  ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader67, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader67.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader67.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod106 = trunc i32 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod106)
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %indvars.iv.epil.init ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.as = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !18
  store i32 1, ptr %i.aq, align 4, !tbaa !16
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i32 0, ptr %i.at, align 4, !tbaa !19
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i32 0, ptr %i.au, align 4, !tbaa !20
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  store i32 %i.ao, ptr %i.av, align 4, !tbaa !24
  br label %.preheader67

.preheader67:                                     ; preds = %.epil.preheader, %.preheader67.loopexit.unr-lcssa, %bb.i
  %i.aw = icmp samesign ugt i32 %.059, 1
  br i1 %i.aw, label %.lr.ph74, label %.preheader66

.lr.ph74:                                         ; preds = %.preheader67
  %i.ax = load ptr, ptr @gop_structure, align 8   ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 2104
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 2972
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 2108
  br label %bb.k

bb.j:                                             ; preds = %bb.j, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.j ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.j ]
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %indvars.iv ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bd = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !18
  store i32 1, ptr %i.bb, align 4, !tbaa !16
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i32 0, ptr %i.be, align 4, !tbaa !19
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i32 0, ptr %i.bf, align 4, !tbaa !20
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  store i32 %i.ao, ptr %i.bg, align 4, !tbaa !24
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %indvars.iv.next ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bj = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.bj, ptr %i.bi, align 4, !tbaa !18
  store i32 1, ptr %i.bh, align 4, !tbaa !16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i32 0, ptr %i.bk, align 4, !tbaa !19
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i32 0, ptr %i.bl, align 4, !tbaa !20
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  store i32 %i.ao, ptr %i.bm, align 4, !tbaa !24
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader67.loopexit.unr-lcssa, label %bb.j, !llvm.loop !45

.preheader66:                                     ; preds = %._crit_edge, %.preheader67
  %i.bn = icmp sgt i32 %i.c, 1
  br i1 %i.bn, label %.preheader65, label %.loopexit

bb.k:                                             ; preds = %.lr.ph74, %._crit_edge
  %.06072 = phi i32 [ 1, %.lr.ph74 ], [ %i.ck, %._crit_edge ] ; 5 uses
  %i.bo = shl nuw i32 1, %.06072                  ; 5 uses
  %i.bp = add i32 %i.bo, -1                       ; 2 uses
  %i.bq = sub nsw i32 %i.h, %i.bo                 ; 3 uses
  %.not80 = icmp sgt i32 %i.bo, %i.bq
  br i1 %.not80, label %._crit_edge, label %.lr.ph71

.lr.ph71:                                         ; preds = %bb.k
  %i.br = load i32, ptr %i.ay, align 8, !tbaa !21 ; 2 uses
  %i.bs = load i32, ptr %i.az, align 4, !tbaa !22
  %.not = icmp eq i32 %i.bs, 0
  br i1 %.not, label %.lr.ph71.split.us, label %.lr.ph71.split

.lr.ph71.split.us:                                ; preds = %.lr.ph71
  %i.bt = load i32, ptr %i.ba, align 4, !tbaa !23
  %i.bu = add nsw i32 %i.bt, %i.br
  %i.bv = tail call noundef i32 @llvm.smax.i32(i32 %i.bu, i32 0)
  %0 = zext nneg i32 %i.bp to i64
  %1 = sext i32 %i.bo to i64
  %i.bw = sext i32 %i.bq to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph71.split.us
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %bb.l ], [ %0, %.lr.ph71.split.us ] ; 2 uses
  %i.bx = getelementptr inbounds [24 x i8], ptr %i.ax, i64 %indvars.iv86 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store i32 %.06072, ptr %i.by, align 4, !tbaa !19
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i32 2, ptr %i.bz, align 4, !tbaa !20
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  store i32 %i.bv, ptr %i.ca, align 4, !tbaa !24
  %indvars.iv.next87 = add nsw i64 %indvars.iv86, %1 ; 2 uses
  %i.cb = icmp slt i64 %indvars.iv.next87, %i.bw
  br i1 %i.cb, label %bb.l, label %._crit_edge, !llvm.loop !46

.lr.ph71.split:                                   ; preds = %.lr.ph71
  %i.cc = sub nsw i32 %i.br, %.06072
  %i.cd = tail call noundef i32 @llvm.smax.i32(i32 %i.cc, i32 0)
  %2 = zext nneg i32 %i.bp to i64
  %3 = sext i32 %i.bo to i64
  %i.ce = sext i32 %i.bq to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph71.split, %bb.m
  %indvars.iv83 = phi i64 [ %2, %.lr.ph71.split ], [ %indvars.iv.next84, %bb.m ] ; 2 uses
  %i.cf = getelementptr inbounds [24 x i8], ptr %i.ax, i64 %indvars.iv83 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store i32 %.06072, ptr %i.cg, align 4, !tbaa !19
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i32 2, ptr %i.ch, align 4, !tbaa !20
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  store i32 %i.cd, ptr %i.ci, align 4, !tbaa !24
  %indvars.iv.next84 = add nsw i64 %indvars.iv83, %3 ; 2 uses
  %i.cj = icmp slt i64 %indvars.iv.next84, %i.ce
  br i1 %i.cj, label %bb.m, label %._crit_edge, !llvm.loop !46

._crit_edge:                                      ; preds = %bb.m, %bb.l, %bb.k
  %i.ck = add nuw nsw i32 %.06072, 1              ; 2 uses
  %exitcond90.not = icmp eq i32 %i.ck, %.059
  br i1 %exitcond90.not, label %.preheader66, label %bb.k, !llvm.loop !47

.preheader65:                                     ; preds = %.preheader66, %.critedge
  %.276 = phi i32 [ %i.cz, %.critedge ], [ 1, %.preheader66 ] ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %.preheader65, %bb.o
  %.16175 = phi i32 [ %.276, %.preheader65 ], [ %i.cq, %bb.o ] ; 3 uses
  %i.cl = load ptr, ptr @gop_structure, align 8, !tbaa !8 ; 2 uses
  %i.cm = zext nneg i32 %.16175 to i64            ; 2 uses
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.cl, i64 %i.cm ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !19
  %i.cq = add nsw i32 %.16175, -1                 ; 2 uses
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %i.cl, i64 %i.cr ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !19
  %i.cv = icmp sgt i32 %i.cp, %i.cu
  br i1 %i.cv, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %.sroa.0.0.copyload = load <6 x i32>, ptr %i.cs, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.cs, ptr noundef nonnull align 4 dereferenceable(24) %i.cn, i64 24, i1 false), !tbaa.struct !48
  %i.cw = load ptr, ptr @gop_structure, align 8, !tbaa !8
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.cw, i64 %i.cm
  store <6 x i32> %.sroa.0.0.copyload, ptr %i.cx, align 4
  %i.cy = icmp sgt i32 %.16175, 1
  br i1 %i.cy, label %bb.n, label %.critedge, !llvm.loop !49

.critedge:                                        ; preds = %bb.n, %bb.o
  %i.cz = add nuw nsw i32 %.276, 1                ; 2 uses
  %exitcond91.not = icmp eq i32 %i.cz, %i.c
  br i1 %exitcond91.not, label %.loopexit, label %.preheader65, !llvm.loop !50

.loopexit:                                        ; preds = %.critedge, %.preheader66, %._crit_edge79
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @no_mem_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @init_gop_structure() local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @input, align 8, !tbaa !8  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2968
  %i.c = load i32, ptr %i.b, align 8, !tbaa !15
  %.not = icmp eq i32 %i.c, 3
  %.in.v = select i1 %.not, i64 20, i64 2096
  %.in = getelementptr inbounds nuw i8, ptr %i.a, i64 %.in.v
  %i.d = load i32, ptr %.in, align 4, !tbaa !4
  %i.e = tail call noundef i32 @llvm.smax.i32(i32 %i.d, i32 10)
  %i.f = zext nneg i32 %i.e to i64
  %i.g = tail call noalias ptr @calloc(i64 noundef %i.f, i64 noundef 24) #12 ; 2 uses
  store ptr %i.g, ptr @gop_structure, align 8, !tbaa !8
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @no_mem_exit(ptr noundef nonnull @.str.2) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @clear_gop_structure() local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @gop_structure, align 8, !tbaa !8 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.a) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @interpret_gop_structure() local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = load ptr, ptr @input, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2976
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #14
  %i.f = trunc i64 %i.e to i32                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.preheader, label %bb.ab

.preheader:                                       ; preds = %bb.a
  %i.h = add nsw i32 %i.f, -2
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %.loopexit
  %.082 = phi i32 [ 0, %.preheader ], [ %.1, %.loopexit ] ; 25 uses
  %.05081 = phi i32 [ 0, %.preheader ], [ %.151, %.loopexit ] ; 12 uses
  %.05280 = phi i32 [ 0, %.preheader ], [ %.153, %.loopexit ] ; 8 uses
  %.05479 = phi i32 [ 0, %.preheader ], [ %.155, %.loopexit ] ; 5 uses
  %.05678 = phi i32 [ 0, %.preheader ], [ %.157, %.loopexit ]
  %.05977 = phi i32 [ 0, %.preheader ], [ %i.di, %.loopexit ] ; 20 uses
  %i.i = icmp eq i32 %.05678, 0
  br i1 %i.i, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr @input, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 2976
  %i.l = sext i32 %.05977 to i64
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !51
  switch i8 %i.n, label %bb.g [
    i8 80, label %bb.d
    i8 112, label %bb.d
    i8 66, label %bb.e
    i8 98, label %bb.e
    i8 73, label %bb.f
    i8 105, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.o = load ptr, ptr @gop_structure, align 8, !tbaa !8
  %i.p = sext i32 %.082 to i64
  %i.q = getelementptr inbounds [24 x i8], ptr %i.o, i64 %i.p
  store i32 0, ptr %i.q, align 4, !tbaa !16
  br label %.loopexit

bb.e:                                             ; preds = %bb.c, %bb.c
  %i.r = load ptr, ptr @gop_structure, align 8, !tbaa !8
  %i.s = sext i32 %.082 to i64
  %i.t = getelementptr inbounds [24 x i8], ptr %i.r, i64 %i.s
  store i32 1, ptr %i.t, align 4, !tbaa !16
  br label %.loopexit

bb.f:                                             ; preds = %bb.c, %bb.c
  %i.u = load ptr, ptr @gop_structure, align 8, !tbaa !8
  %i.v = sext i32 %.082 to i64
  %i.w = getelementptr inbounds [24 x i8], ptr %i.u, i64 %i.v
  store i32 2, ptr %i.w, align 4, !tbaa !16
  br label %.loopexit

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(86) @errortext, ptr noundef nonnull align 1 dereferenceable(86) @.str.3, i64 86, i1 false)
  call void @error(ptr noundef nonnull @errortext, i32 noundef 400) #13
  br label %.loopexit

bb.h:                                             ; preds = %bb.b
  %i.x = icmp eq i32 %.05479, 0
  br i1 %i.x, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.y = tail call ptr @__ctype_b_loc() #15
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !52
  %i.aa = load ptr, ptr @input, align 8, !tbaa !8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 2976
  %i.ac = sext i32 %.05977 to i64
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 %i.ac ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !51
  %i.af = sext i8 %i.ae to i64
  %i.ag = getelementptr inbounds [2 x i8], ptr %i.z, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !54
  %i.ai = and i16 %i.ah, 2048
  %.not70 = icmp eq i16 %i.ai, 0
  br i1 %.not70, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.ad, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.b) #13 ; 0 uses
  %i.ak = load i32, ptr %i.b, align 4, !tbaa !4   ; 3 uses
  %i.al = load ptr, ptr @gop_structure, align 8, !tbaa !8
  %i.am = sext i32 %.082 to i64
  %i.an = getelementptr inbounds [24 x i8], ptr %i.al, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 %i.ak, ptr %i.ao, align 4, !tbaa !18
  %i.ap = icmp sgt i32 %i.ak, -1
  %.pre = load ptr, ptr @input, align 8, !tbaa !8
end_hunk_0
