inline.NumInlined: 8
inline.NumDeleted: 3
begin_hunk_0
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
  %0 = alloca %struct.GOP_DATA, align 4           ; 4 uses
  %i.a = load ptr, ptr @input, align 8, !tbaa !8  ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2096
  %i.c = load i32, ptr %i.b, align 8, !tbaa !10   ; 10 uses
  %i.d = sdiv i32 %i.c, 2                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
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
  %i.ab = shl i32 %.tr, 1
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
  %.062 = phi i32 [ %i.ai, %bb.h ], [ 1, %.preheader68 ] ; 5 uses
  %i.ag = ashr i32 %i.h, %.062
  %i.ah = icmp sgt i32 %i.ag, 1
  %i.ai = add nuw nsw i32 %.062, 1
  br i1 %i.ah, label %bb.h, label %bb.i, !llvm.loop !44

bb.i:                                             ; preds = %bb.h
  %i.aj = load ptr, ptr @img, align 8, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 15612
  store i32 %.062, ptr %i.ak, align 4, !tbaa !27
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
  %i.aw = icmp samesign ugt i32 %.062, 1
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
  %.06072 = phi i32 [ 1, %.lr.ph74 ], [ %i.ch, %._crit_edge ] ; 5 uses
  %i.bo = shl nuw i32 1, %.06072                  ; 5 uses
  %1 = add i32 %i.bo, -1                          ; 2 uses
  %i.bp = sub nsw i32 %i.h, %i.bo                 ; 3 uses
  %.not80 = icmp sgt i32 %i.bo, %i.bp
  br i1 %.not80, label %._crit_edge, label %.lr.ph71

.lr.ph71:                                         ; preds = %bb.k
  %i.bq = load i32, ptr %i.ay, align 8, !tbaa !21 ; 2 uses
  %i.br = load i32, ptr %i.az, align 4, !tbaa !22
  %.not = icmp eq i32 %i.br, 0
  br i1 %.not, label %.lr.ph71.split.us, label %.lr.ph71.split

.lr.ph71.split.us:                                ; preds = %.lr.ph71
  %i.bs = load i32, ptr %i.ba, align 4, !tbaa !23
  %i.bt = add nsw i32 %i.bs, %i.bq
  %i.bu = tail call noundef i32 @llvm.smax.i32(i32 %i.bt, i32 0)
  %2 = zext nneg i32 %1 to i64
  %3 = sext i32 %i.bo to i64
  %4 = sext i32 %i.bp to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph71.split.us
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %bb.l ], [ %2, %.lr.ph71.split.us ] ; 2 uses
  %i.bv = getelementptr inbounds [24 x i8], ptr %i.ax, i64 %indvars.iv86 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store i32 %.06072, ptr %i.bw, align 4, !tbaa !19
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i32 2, ptr %i.bx, align 4, !tbaa !20
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  store i32 %i.bu, ptr %i.by, align 4, !tbaa !24
  %indvars.iv.next87 = add nsw i64 %indvars.iv86, %3 ; 2 uses
  %i.bz = icmp slt i64 %indvars.iv.next87, %4
  br i1 %i.bz, label %bb.l, label %._crit_edge, !llvm.loop !46

.lr.ph71.split:                                   ; preds = %.lr.ph71
  %i.ca = sub nsw i32 %i.bq, %.06072
  %i.cb = tail call noundef i32 @llvm.smax.i32(i32 %i.ca, i32 0)
  %5 = zext nneg i32 %1 to i64
  %6 = sext i32 %i.bo to i64
  %7 = sext i32 %i.bp to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph71.split, %bb.m
  %indvars.iv83 = phi i64 [ %5, %.lr.ph71.split ], [ %indvars.iv.next84, %bb.m ] ; 2 uses
  %i.cc = getelementptr inbounds [24 x i8], ptr %i.ax, i64 %indvars.iv83 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store i32 %.06072, ptr %i.cd, align 4, !tbaa !19
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i32 2, ptr %i.ce, align 4, !tbaa !20
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  store i32 %i.cb, ptr %i.cf, align 4, !tbaa !24
  %indvars.iv.next84 = add nsw i64 %indvars.iv83, %6 ; 2 uses
  %i.cg = icmp slt i64 %indvars.iv.next84, %7
  br i1 %i.cg, label %bb.m, label %._crit_edge, !llvm.loop !46

._crit_edge:                                      ; preds = %bb.m, %bb.l, %bb.k
  %i.ch = add nuw nsw i32 %.06072, 1              ; 2 uses
  %exitcond90.not.a = icmp eq i32 %i.ch, %.062
  br i1 %exitcond90.not.a, label %.preheader66, label %bb.k, !llvm.loop !47

.preheader65:                                     ; preds = %.preheader66, %.critedge
  %.276 = phi i32 [ %i.cw, %.critedge ], [ 1, %.preheader66 ] ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %.preheader65, %bb.o
  %.16175 = phi i32 [ %.276, %.preheader65 ], [ %i.cn, %bb.o ] ; 3 uses
  %i.ci = load ptr, ptr @gop_structure, align 8, !tbaa !8 ; 2 uses
  %i.cj = zext nneg i32 %.16175 to i64            ; 2 uses
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.ci, i64 %i.cj ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !19
  %i.cn = add nsw i32 %.16175, -1                 ; 2 uses
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.ci, i64 %i.co ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !19
  %i.cs = icmp sgt i32 %i.cm, %i.cr
  br i1 %i.cs, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(24) %i.cp, i64 24, i1 false), !tbaa.struct !48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.cp, ptr noundef nonnull align 4 dereferenceable(24) %i.ck, i64 24, i1 false), !tbaa.struct !48
  %i.ct = load ptr, ptr @gop_structure, align 8, !tbaa !8
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.ct, i64 %i.cj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.cu, ptr noundef nonnull align 4 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !48
  %i.cv = icmp sgt i32 %.16175, 1
  br i1 %i.cv, label %bb.n, label %.critedge, !llvm.loop !49

.critedge:                                        ; preds = %bb.n, %bb.o
  %i.cw = add nuw nsw i32 %.276, 1                ; 2 uses
  %exitcond91.not = icmp eq i32 %i.cw, %i.c
  br i1 %exitcond91.not, label %.loopexit, label %.preheader65, !llvm.loop !50

.loopexit:                                        ; preds = %.critedge, %.preheader66, %._crit_edge79
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
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
begin_hunk_1_@encode_enhancement_layer:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %.pre48, i64 15332 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !66
  %i.t = add i32 %i.s, 1
  %i.u = load i32, ptr @log2_max_frame_num_minus4, align 4, !tbaa !4
  %i.v = add i32 %i.u, 4
  %notmask = shl nsw i32 -1, %i.v
  %i.w = xor i32 %notmask, -1
  %i.x = and i32 %i.t, %i.w
  store i32 %i.x, ptr %i.r, align 4, !tbaa !66
  %i.y = getelementptr inbounds nuw i8, ptr %.pre48, i64 15360
  store i32 0, ptr %i.y, align 8, !tbaa !65
  br label %bb.w

bb.e:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %.pre48, i64 15360
  store i32 0, ptr %i.z, align 8, !tbaa !65
  br i1 %i.p, label %bb.w, label %bb.f

bb.f:                                             ; preds = %.thread61, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %.pre48, i64 14364
  store i32 1, ptr %i.aa, align 4, !tbaa !67
  %.not1422 = icmp slt i32 %i.c, 1
  br i1 %.not1422, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %.pre32 = load ptr, ptr @gop_structure, align 8, !tbaa !8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge39
  %i.ab = phi ptr [ %i.dm, %._crit_edge39 ], [ %.pre32, %.lr.ph.preheader ]
  %i.ac = phi i32 [ %i.dw, %._crit_edge39 ], [ %i.c, %.lr.ph.preheader ]
  %i.ad = phi ptr [ %.pre38, %._crit_edge39 ], [ %i.a, %.lr.ph.preheader ] ; 6 uses
  %i.ae = phi i32 [ %i.eg, %._crit_edge39 ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %i.af = phi ptr [ %i.dn, %._crit_edge39 ], [ %.pre48, %.lr.ph.preheader ] ; 11 uses
  %.023 = phi i32 [ %.1, %._crit_edge39 ], [ 1, %.lr.ph.preheader ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 15360 ; 2 uses
  store i32 0, ptr %i.ag, align 8, !tbaa !65
  %i.ah = sext i32 %i.ae to i64
  %i.ai = getelementptr [24 x i8], ptr %i.ab, i64 %i.ah ; 4 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 -24
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !16
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !61
  %i.am = icmp eq i32 %.023, 1
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 15332 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !66
  %i.ap = add i32 %i.ao, 1
  %i.aq = load i32, ptr @log2_max_frame_num_minus4, align 4, !tbaa !4
  %i.ar = add i32 %i.aq, 4
  %notmask15 = shl nsw i32 -1, %i.ar
  %i.as = xor i32 %notmask15, -1
  %i.at = and i32 %i.ap, %i.as
  store i32 %i.at, ptr %i.an, align 4, !tbaa !66
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph
  %i.au = getelementptr i8, ptr %i.ai, i64 -16
  %i.av = load i32, ptr %i.au, align 4, !tbaa !20
  %i.aw = icmp eq i32 %i.av, 2
  br i1 %i.aw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %i.ag, align 8, !tbaa !65
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.1 = phi i32 [ 1, %bb.i ], [ 0, %bb.h ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !55
  %i.az = add nsw i32 %i.ay, 1                    ; 4 uses
  %i.ba = sitofp i32 %i.az to double
  %i.bb = sitofp i32 %i.ac to double
  %i.bc = fadd double %i.bb, 1.000000e+00
  %i.bd = fdiv double %i.ba, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.af, i64 14352
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ad, i64 2968
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !15
  %i.bh = icmp eq i32 %i.bg, 3
  %spec.store.select = select i1 %i.bh, double 1.000000e+00, double %i.bd ; 3 uses
  store double %spec.store.select, ptr %i.be, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ad, i64 1560
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !68 ; 2 uses
  %.not16 = icmp eq i32 %i.bj, 0
  br i1 %.not16, label %._crit_edge33, label %bb.k

._crit_edge33:                                    ; preds = %bb.j
  %.pre34 = load i32, ptr %i.af, align 8, !tbaa !59
  %.pre36 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !4
  br label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ad, i64 1568
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !69
  %.not17 = icmp eq i32 %i.bl, 0
  %.pre35 = load i32, ptr %i.af, align 8, !tbaa !59 ; 3 uses
  %.pre37 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !4 ; 3 uses
  br i1 %.not17, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = sub nsw i32 %.pre35, %.pre37
  %i.bn = srem i32 %i.bm, %i.bj
  %i.bo = add nsw i32 %i.bn, -1
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge33, %bb.k
  %i.bp = phi i32 [ %.pre36, %._crit_edge33 ], [ %.pre37, %bb.k ] ; 2 uses
  %i.bq = phi i32 [ %.pre34, %._crit_edge33 ], [ %.pre35, %bb.k ] ; 2 uses
  %i.br = xor i32 %i.bp, -1
  %i.bs = add i32 %i.bq, %i.br
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sink79 = phi i32 [ %i.bs, %bb.m ], [ %i.bo, %bb.l ]
  %i.bt = phi i32 [ %i.bp, %bb.m ], [ %.pre37, %bb.l ] ; 2 uses
  %i.bu = phi i32 [ %i.bq, %bb.m ], [ %.pre35, %bb.l ] ; 2 uses
  %i.bv = mul nsw i32 %.sink79, %i.az
  %i.bw = getelementptr i8, ptr %i.ai, i64 -20
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !18
  %i.by = add nsw i32 %i.bx, 1
  %i.bz = sitofp i32 %i.by to double
  %i.ca = fmul double %spec.store.select, %i.bz
  %i.cb = fptosi double %i.ca to i32
  %i.cc = add nsw i32 %i.bv, %i.cb                ; 2 uses
  %i.cd = shl nsw i32 %i.cc, 1                    ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.af, i64 15316
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !70
  %i.cf = icmp eq i32 %i.ae, 1
  %i.cg = load i32, ptr @start_tr_in_this_IGOP, align 4, !tbaa !4 ; 2 uses
  br i1 %i.cf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ch = sub nsw i32 %i.bu, %i.bt
  %i.ci = mul nsw i32 %i.ch, %i.az
  %i.cj = add nsw i32 %i.ci, %i.cg
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ck = xor i32 %i.bt, -1
  %i.cl = add i32 %i.bu, %i.ck
  %i.cm = mul nsw i32 %i.cl, %i.az
  %i.cn = add nsw i32 %i.cm, %i.cg
  %i.co = fmul double %spec.store.select, 2.000000e+00
  %i.cp = getelementptr i8, ptr %i.ai, i64 -44
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !18
  %i.cr = add nsw i32 %i.cq, 1
  %i.cs = sitofp i32 %i.cr to double
  %i.ct = fmul double %i.co, %i.cs
  %i.cu = fptosi double %i.ct to i32
  %i.cv = add nsw i32 %i.cn, %i.cu
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn.in = phi i32 [ %i.cj, %bb.o ], [ %i.cv, %bb.p ]
  %i.cw = sub nsw i32 %i.cc, %.pn.in
  %.sink29 = shl nsw i32 %i.cw, 1
  %i.cx = getelementptr inbounds nuw i8, ptr %i.af, i64 15304
  store i32 %.sink29, ptr %i.cx, align 8, !tbaa !4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ad, i64 4704
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !71
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.db = getelementptr inbounds nuw i8, ptr %i.ad, i64 4708
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !72
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.de = or disjoint i32 %i.cd, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.sink = phi i32 [ %i.de, %bb.s ], [ %i.cd, %bb.r ]
  %i.df = getelementptr inbounds nuw i8, ptr %i.af, i64 15320
  store i32 %.sink, ptr %i.df, align 8, !tbaa !73
  %i.dg = getelementptr inbounds nuw i8, ptr %i.af, i64 15324
  store i32 %i.cd, ptr %i.dg, align 4, !tbaa !74
  %i.dh = getelementptr inbounds nuw i8, ptr %i.af, i64 15308
  store i32 0, ptr %i.dh, align 4, !tbaa !4
  %i.di = tail call i32 @encode_one_frame() #13   ; 0 uses
  %i.dj = load ptr, ptr @input, align 8, !tbaa !8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 5104
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !75
  %.not18 = icmp eq i32 %i.dl, 0
  br i1 %.not18, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @report_frame_statistic() #13
  %.pre38.pre = load ptr, ptr @input, align 8, !tbaa !8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pre38 = phi ptr [ %.pre38.pre, %bb.u ], [ %i.dj, %bb.t ] ; 2 uses
  %i.dm = load ptr, ptr @gop_structure, align 8, !tbaa !8 ; 2 uses
  %i.dn = load ptr, ptr @img, align 8, !tbaa !8   ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 14364 ; 3 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !67 ; 5 uses
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr [24 x i8], ptr %i.dm, i64 %i.dq
  %i.ds = getelementptr i8, ptr %i.dr, i64 -16
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !20
  %i.du = icmp eq i32 %i.dt, 2
  %i.dv = getelementptr inbounds nuw i8, ptr %.pre38, i64 2096
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !10 ; 3 uses
  %i.dx = icmp eq i32 %i.dp, %i.dw
  %or.cond = select i1 %i.du, i1 %i.dx, i1 false
  br i1 %or.cond, label %.thread63, label %._crit_edge39

.thread63:                                        ; preds = %bb.v
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dn, i64 15332 ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !66
  %i.ea = add i32 %i.dz, 1
  %i.eb = load i32, ptr @log2_max_frame_num_minus4, align 4, !tbaa !4
  %i.ec = add i32 %i.eb, 4
  %notmask19 = shl nsw i32 -1, %i.ec
  %i.ed = xor i32 %notmask19, -1
  %i.ee = and i32 %i.ea, %i.ed
  store i32 %i.ee, ptr %i.dy, align 4, !tbaa !66
  %i.ef = add nsw i32 %i.dp, 1
  store i32 %i.ef, ptr %i.do, align 4, !tbaa !67
  br label %._crit_edge

._crit_edge39:                                    ; preds = %bb.v
  %i.eg = add nsw i32 %i.dp, 1                    ; 2 uses
  store i32 %i.eg, ptr %i.do, align 4, !tbaa !67
  %.not14.not = icmp slt i32 %i.dp, %i.dw
  br i1 %.not14.not, label %.lr.ph, label %._crit_edge, !llvm.loop !76

._crit_edge:                                      ; preds = %._crit_edge39, %.thread63, %bb.f
  %.lcssa21 = phi ptr [ %.pre48, %bb.f ], [ %i.dn, %.thread63 ], [ %i.dn, %._crit_edge39 ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.lcssa21, i64 14364
  store i32 0, ptr %i.eh, align 4, !tbaa !67
  br label %.loopexit

bb.w:                                             ; preds = %.thread, %bb.e
  %i.ei = getelementptr inbounds nuw i8, ptr %.pre48, i64 14364
  store i32 1, ptr %i.ei, align 4, !tbaa !67
  %.not724 = icmp slt i32 %i.c, 1
  br i1 %.not724, label %.loopexit, label %.lr.ph26

.lr.ph26:                                         ; preds = %bb.w, %bb.ak
  %i.ej = phi i32 [ %i.ho, %bb.ak ], [ %i.c, %bb.w ]
  %i.ek = phi ptr [ %i.hi, %bb.ak ], [ %i.a, %bb.w ] ; 7 uses
  %i.el = phi i32 [ %i.hm, %bb.ak ], [ 1, %bb.w ] ; 2 uses
  %i.em = phi ptr [ %i.hj, %bb.ak ], [ %.pre48, %bb.w ] ; 10 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 15360 ; 2 uses
  store i32 0, ptr %i.en, align 8, !tbaa !65
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 2964
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !64
  %i.eq = icmp eq i32 %i.ep, 1                    ; 2 uses
  br i1 %i.eq, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph26
  store i32 1, ptr %i.en, align 8, !tbaa !65
  %i.er = getelementptr inbounds nuw i8, ptr %i.em, i64 15332 ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !66
  %i.et = add i32 %i.es, 1
  %i.eu = load i32, ptr @log2_max_frame_num_minus4, align 4, !tbaa !4
  %i.ev = add i32 %i.eu, 4
  %notmask8 = shl nsw i32 -1, %i.ev
  %i.ew = xor i32 %notmask8, -1
  %i.ex = and i32 %i.et, %i.ew
  store i32 %i.ex, ptr %i.er, align 4, !tbaa !66
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph26
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ek, i64 20
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !55
  %i.fa = add nsw i32 %i.ez, 1                    ; 2 uses
  %i.fb = sitofp i32 %i.fa to double
  %i.fc = sitofp i32 %i.ej to double
  %i.fd = fadd double %i.fc, 1.000000e+00
  %i.fe = fdiv double %i.fb, %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.em, i64 14352
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ek, i64 2968
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !15
  %i.fi = icmp eq i32 %i.fh, 3
  %spec.store.select20 = select i1 %i.fi, double 1.000000e+00, double %i.fe ; 2 uses
  store double %spec.store.select20, ptr %i.ff, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ek, i64 1560
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !68 ; 2 uses
  %.not9 = icmp eq i32 %i.fk, 0
  br i1 %.not9, label %._crit_edge42, label %bb.z

._crit_edge42:                                    ; preds = %bb.y
  %.pre43 = load i32, ptr %i.em, align 8, !tbaa !59
  %.pre45 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !4
  br label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ek, i64 1568
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !69
  %.not10 = icmp eq i32 %i.fm, 0
  %.pre44 = load i32, ptr %i.em, align 8, !tbaa !59 ; 2 uses
  %.pre46 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !4 ; 2 uses
  br i1 %.not10, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fn = sub nsw i32 %.pre44, %.pre46
  %i.fo = srem i32 %i.fn, %i.fk
  %i.fp = add nsw i32 %i.fo, -1
  br label %bb.ac

bb.ab:                                            ; preds = %._crit_edge42, %bb.z
  %i.fq = phi i32 [ %.pre45, %._crit_edge42 ], [ %.pre46, %bb.z ]
  %i.fr = phi i32 [ %.pre43, %._crit_edge42 ], [ %.pre44, %bb.z ]
  %i.fs = xor i32 %i.fq, -1
  %i.ft = add i32 %i.fr, %i.fs
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sink88 = phi i32 [ %i.ft, %bb.ab ], [ %i.fp, %bb.aa ]
  %i.fu = mul nsw i32 %.sink88, %i.fa
  %i.fv = sitofp i32 %i.el to double
  %i.fw = fmul double %spec.store.select20, %i.fv
  %i.fx = fptosi double %i.fw to i32
  %i.fy = add nsw i32 %i.fu, %i.fx
  %i.fz = shl nsw i32 %i.fy, 1                    ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.em, i64 15316
  store i32 %i.fz, ptr %i.ga, align 4, !tbaa !70
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ek, i64 4704
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !71
  %i.gd = icmp eq i32 %i.gc, 0
  br i1 %i.gd, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ek, i64 4708
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !72
  %i.gg = icmp eq i32 %i.gf, 0
  br i1 %i.gg, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.gh = or disjoint i32 %i.fz, 1
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %.sink89 = phi i32 [ %i.gh, %bb.ae ], [ %i.fz, %bb.ad ]
  %i.gi = getelementptr inbounds nuw i8, ptr %i.em, i64 15320
  store i32 %.sink89, ptr %i.gi, align 8, !tbaa !73
  %i.gj = getelementptr inbounds nuw i8, ptr %i.em, i64 15324
  store i32 %i.fz, ptr %i.gj, align 4, !tbaa !74
  %i.gk = shl i32 %i.el, 1
  %i.gl = add i32 %i.gk, -2
  %.sink30 = select i1 %i.eq, i32 -2, i32 %i.gl
  %i.gm = getelementptr inbounds nuw i8, ptr %i.em, i64 15304
  store i32 %.sink30, ptr %i.gm, align 8, !tbaa !4
  %i.gn = getelementptr inbounds nuw i8, ptr %i.em, i64 15308
  store i32 0, ptr %i.gn, align 4, !tbaa !4
  %i.go = tail call i32 @encode_one_frame() #13   ; 0 uses
  %i.gp = load ptr, ptr @input, align 8, !tbaa !8 ; 4 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 2964
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !64
  %i.gs = icmp eq i32 %i.gr, 1
  br i1 %i.gs, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.gt = load ptr, ptr @img, align 8, !tbaa !8   ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 14364
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !67
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gp, i64 2096
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !10
  %i.gy = icmp eq i32 %i.gv, %i.gx
  br i1 %i.gy, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gt, i64 15332 ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !66
  %i.hb = add i32 %i.ha, 1
  %i.hc = load i32, ptr @log2_max_frame_num_minus4, align 4, !tbaa !4
  %i.hd = add i32 %i.hc, 4
  %notmask12 = shl nsw i32 -1, %i.hd
  %i.he = xor i32 %notmask12, -1
  %i.hf = and i32 %i.hb, %i.he
  store i32 %i.hf, ptr %i.gz, align 4, !tbaa !66
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gp, i64 5104
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !75
  %.not13 = icmp eq i32 %i.hh, 0
  br i1 %.not13, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @report_frame_statistic() #13
  %.pre47 = load ptr, ptr @input, align 8, !tbaa !8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %i.hi = phi ptr [ %i.gp, %bb.ai ], [ %.pre47, %bb.aj ] ; 2 uses
  %i.hj = load ptr, ptr @img, align 8, !tbaa !8   ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 14364 ; 2 uses
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !67 ; 2 uses
  %i.hm = add nsw i32 %i.hl, 1                    ; 2 uses
  store i32 %i.hm, ptr %i.hk, align 4, !tbaa !67
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hi, i64 2096
  %i.ho = load i32, ptr %i.hn, align 8, !tbaa !10 ; 2 uses
  %.not7.not = icmp slt i32 %i.hl, %i.ho
  br i1 %.not7.not, label %.lr.ph26, label %.loopexit, !llvm.loop !77

.loopexit:                                        ; preds = %bb.ak, %bb.w, %._crit_edge, %bb.b, %bb.a
  %i.hp = phi ptr [ %.pre48, %bb.a ], [ %.pre48, %bb.w ], [ %.lcssa21, %._crit_edge ], [ %.pre48, %bb.b ], [ %i.hj, %bb.ak ]
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 14364
  store i32 0, ptr %i.hq, align 4, !tbaa !67
  ret void
}

declare i32 @encode_one_frame() local_unnamed_addr #2

declare void @report_frame_statistic() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @poc_based_ref_management(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @img, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 15376
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !78
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 32), align 8, !tbaa !79
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 36), align 4, !tbaa !83
  %i.f = sub i32 0, %i.e
  %i.g = icmp eq i32 %i.d, %i.f
  br i1 %i.g, label %bb.l, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 28), align 4, !tbaa !84 ; 2 uses
  %.not24 = icmp eq i32 %i.h, 0
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.i = load ptr, ptr @dpb, align 8, !tbaa !85
  %wide.trip.count = zext i32 %i.h to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.01622 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.g ] ; 3 uses
  %.01721 = phi i32 [ 2147483647, %.lr.ph ], [ %.118, %bb.g ] ; 4 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !86   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !87
  %.not19 = icmp eq i32 %i.m, 0
  br i1 %.not19, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !90
  %.not20 = icmp eq i32 %i.o, 0
  br i1 %.not20, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !91
  %i.r = icmp slt i32 %i.q, %.01721
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !92   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !93
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 6364
  %i.x = load i32, ptr %i.w, align 4, !tbaa !101
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.118 = phi i32 [ %.01721, %bb.d ], [ %i.v, %bb.f ], [ %.01721, %bb.e ], [ %.01721, %bb.c ]
  %.1 = phi i32 [ %.01622, %bb.d ], [ %i.x, %bb.f ], [ %.01622, %bb.e ], [ %.01622, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.c, !llvm.loop !102

._crit_edge.loopexit:                             ; preds = %bb.g
  %i.y = xor i32 %.1, -1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.016.lcssa = phi i32 [ -1, %.preheader ], [ %i.y, %._crit_edge.loopexit ]
  %i.z = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #12 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  tail call void @no_mem_exit(ptr noundef nonnull @.str.12) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %i.ab = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #12 ; 5 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @no_mem_exit(ptr noundef nonnull @.str.13) #13
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %i.z, ptr %i.ad, align 8, !tbaa !103
  store i32 1, ptr %i.ab, align 8, !tbaa !105
  %i.ae = add i32 %0, %.016.lcssa
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !106
  %i.ag = load ptr, ptr @img, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 15376
  store ptr %i.ab, ptr %i.ah, align 8, !tbaa !78
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.a, %bb.k
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind allocsize(0,1) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !5, i64 2096}
!11 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !6, i64 72, !6, i64 136, !6, i64 200, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276, !6, i64 280, !6, i64 536, !6, i64 792, !6, i64 1048, !6, i64 1304, !5, i64 1560, !5, i64 1564, !5, i64 1568, !5, i64 1572, !5, i64 1576, !5, i64 1580, !6, i64 1584, !5, i64 2084, !5, i64 2088, !5, i64 2092, !5, i64 2096, !5, i64 2100, !5, i64 2104, !5, i64 2108, !5, i64 2112, !5, i64 2116, !5, i64 2120, !5, i64 2124, !5, i64 2128, !5, i64 2132, !5, i64 2136, !5, i64 2140, !5, i64 2144, !5, i64 2148, !5, i64 2152, !5, i64 2156, !6, i64 2160, !6, i64 2416, !6, i64 2672, !5, i64 2928, !5, i64 2932, !5, i64 2936, !5, i64 2940, !5, i64 2944, !5, i64 2948, !5, i64 2952, !5, i64 2956, !5, i64 2960, !5, i64 2964, !5, i64 2968, !5, i64 2972, !6, i64 2976, !5, i64 4000, !5, i64 4004, !5, i64 4008, !5, i64 4012, !5, i64 4016, !5, i64 4020, !5, i64 4024, !5, i64 4028, !5, i64 4032, !5, i64 4036, !5, i64 4040, !5, i64 4044, !5, i64 4048, !5, i64 4052, !5, i64 4056, !5, i64 4060, !5, i64 4064, !5, i64 4068, !5, i64 4072, !5, i64 4076, !12, i64 4080, !5, i64 4088, !5, i64 4092, !5, i64 4096, !5, i64 4100, !5, i64 4104, !5, i64 4108, !5, i64 4112, !5, i64 4116, !5, i64 4120, !5, i64 4124, !5, i64 4128, !5, i64 4132, !5, i64 4136, !5, i64 4140, !5, i64 4144, !5, i64 4148, !5, i64 4152, !5, i64 4156, !5, i64 4160, !5, i64 4164, !5, i64 4168, !5, i64 4172, !5, i64 4176, !5, i64 4180, !5, i64 4184, !5, i64 4188, !6, i64 4192, !6, i64 4448, !5, i64 4704, !5, i64 4708, !5, i64 4712, !5, i64 4716, !5, i64 4720, !5, i64 4724, !5, i64 4728, !5, i64 4732, !5, i64 4736, !5, i64 4740, !5, i64 4744, !5, i64 4748, !5, i64 4752, !5, i64 4756, !5, i64 4760, !5, i64 4764, !5, i64 4768, !5, i64 4772, !6, i64 4776, !5, i64 5032, !5, i64 5036, !13, i64 5040, !13, i64 5048, !14, i64 5056, !13, i64 5064, !5, i64 5072, !5, i64 5076, !5, i64 5080, !5, i64 5084, !5, i64 5088, !5, i64 5092, !5, i64 5096, !5, i64 5100, !5, i64 5104, !5, i64 5108, !5, i64 5112, !5, i64 5116, !5, i64 5120, !5, i64 5124, !5, i64 5128, !5, i64 5132, !5, i64 5136, !12, i64 5144, !12, i64 5152, !12, i64 5160, !6, i64 5168, !5, i64 5208, !6, i64 5212, !5, i64 5244, !5, i64 5248, !5, i64 5252, !5, i64 5256, !5, i64 5260, !5, i64 5264, !5, i64 5268, !5, i64 5272, !5, i64 5276, !5, i64 5280, !5, i64 5284, !5, i64 5288, !6, i64 5296, !6, i64 5344, !6, i64 5392, !5, i64 5648, !5, i64 5652, !5, i64 5656, !5, i64 5660, !6, i64 5664, !6, i64 5704, !5, i64 5744, !5, i64 5748, !5, i64 5752, !5, i64 5756, !5, i64 5760, !5, i64 5764, !5, i64 5768, !5, i64 5772, !5, i64 5776, !6, i64 5780, !5, i64 5792}
!12 = !{!"double", !6, i64 0}
!13 = !{!"p1 int", !9, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!11, !5, i64 2968}
!16 = !{!17, !5, i64 0}
!17 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20}
!18 = !{!17, !5, i64 4}
!19 = !{!17, !5, i64 16}
!20 = !{!17, !5, i64 8}
!21 = !{!11, !5, i64 2104}
!22 = !{!11, !5, i64 2972}
!23 = !{!11, !5, i64 2108}
!24 = !{!17, !5, i64 12}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!28, !5, i64 15612}
!28 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !29, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !30, i64 128, !30, i64 136, !5, i64 144, !32, i64 152, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !5, i64 204, !6, i64 208, !6, i64 4816, !6, i64 7376, !6, i64 8528, !6, i64 12624, !6, i64 13136, !34, i64 14160, !32, i64 14168, !32, i64 14176, !32, i64 14184, !34, i64 14192, !34, i64 14200, !9, i64 14208, !9, i64 14216, !36, i64 14224, !13, i64 14232, !13, i64 14240, !5, i64 14248, !5, i64 14252, !5, i64 14256, !5, i64 14260, !6, i64 14264, !5, i64 14328, !5, i64 14332, !5, i64 14336, !5, i64 14340, !5, i64 14344, !12, i64 14352, !5, i64 14360, !5, i64 14364, !5, i64 14368, !5, i64 14372, !37, i64 14376, !37, i64 14384, !37, i64 14392, !37, i64 14400, !6, i64 14408, !5, i64 14440, !5, i64 14444, !5, i64 14448, !5, i64 14452, !5, i64 14456, !5, i64 14460, !5, i64 14464, !5, i64 14468, !6, i64 14472, !5, i64 15240, !5, i64 15244, !5, i64 15248, !5, i64 15252, !5, i64 15256, !5, i64 15260, !5, i64 15264, !5, i64 15268, !5, i64 15272, !5, i64 15276, !5, i64 15280, !5, i64 15284, !5, i64 15288, !6, i64 15292, !5, i64 15296, !5, i64 15300, !6, i64 15304, !5, i64 15312, !5, i64 15316, !5, i64 15320, !5, i64 15324, !5, i64 15328, !5, i64 15332, !5, i64 15336, !5, i64 15340, !5, i64 15344, !5, i64 15348, !5, i64 15352, !5, i64 15356, !5, i64 15360, !5, i64 15364, !5, i64 15368, !5, i64 15372, !40, i64 15376, !5, i64 15384, !5, i64 15388, !5, i64 15392, !5, i64 15396, !5, i64 15400, !5, i64 15404, !5, i64 15408, !5, i64 15412, !5, i64 15416, !5, i64 15420, !5, i64 15424, !5, i64 15428, !5, i64 15432, !5, i64 15436, !5, i64 15440, !5, i64 15444, !5, i64 15448, !5, i64 15452, !5, i64 15456, !5, i64 15460, !5, i64 15464, !5, i64 15468, !5, i64 15472, !41, i64 15480, !42, i64 15488, !32, i64 15496, !41, i64 15504, !5, i64 15512, !5, i64 15516, !5, i64 15520, !5, i64 15524, !5, i64 15528, !5, i64 15532, !5, i64 15536, !5, i64 15540, !5, i64 15544, !5, i64 15548, !6, i64 15552, !6, i64 15576, !5, i64 15584, !5, i64 15588, !43, i64 15592, !5, i64 15596, !5, i64 15600, !5, i64 15604, !5, i64 15608, !5, i64 15612}
!29 = !{!"float", !6, i64 0}
!30 = !{!"p2 omnipotent char", !31, i64 0}
!31 = !{!"any p2 pointer", !9, i64 0}
!32 = !{!"p3 int", !33, i64 0}
!33 = !{!"any p3 pointer", !31, i64 0}
!34 = !{!"p4 int", !35, i64 0}
!35 = !{!"any p4 pointer", !33, i64 0}
!36 = !{!"p1 _ZTS10macroblock", !9, i64 0}
!37 = !{!"p6 short", !38, i64 0}
!38 = !{!"any p6 pointer", !39, i64 0}
!39 = !{!"any p5 pointer", !35, i64 0}
!40 = !{!"p1 _ZTS18DecRefPicMarking_s", !9, i64 0}
!41 = !{!"p2 double", !31, i64 0}
!42 = !{!"p3 double", !33, i64 0}
!43 = !{!"short", !6, i64 0}
!44 = distinct !{!44, !26}
!45 = distinct !{!45, !26}
!46 = distinct !{!46, !26}
!47 = distinct !{!47, !26}
!48 = !{i64 0, i64 4, !4, i64 4, i64 4, !4, i64 8, i64 4, !4, i64 12, i64 4, !4, i64 16, i64 4, !4, i64 20, i64 4, !4}
!49 = distinct !{!49, !26}
!50 = distinct !{!50, !26}
!51 = !{!6, !6, i64 0}
!52 = !{!53, !53, i64 0}
!53 = !{!"p1 short", !9, i64 0}
end_hunk_1
