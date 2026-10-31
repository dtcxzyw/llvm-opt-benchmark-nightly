Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_spots?download=true
inline.NumInlined: 34
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@legacy_params:bb.a
bb.f:                                             ; preds = %.lr.ph90, %.critedge
  %.088 = phi ptr [ %.086, %.lr.ph90 ], [ %.0, %.critedge ] ; 2 uses
  %i.ba = load ptr, ptr %.088, align 8, !tbaa !41 ; 4 uses
  %.not73 = icmp eq ptr %i.ba, null
  br i1 %.not73, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !43
  %i.bd = and i32 %i.bc, 4
  %.not74 = icmp eq i32 %i.bd, 0
  br i1 %.not74, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 160
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !169
  store i32 %i.bf, ptr %i.ar, align 4, !tbaa !45
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.bg = load ptr, ptr %i.g, align 8, !tbaa !28
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1552
  %i.bi = load i32, ptr %i.bh, align 16, !tbaa !172
  tail call void @dt_masks_write_masks_history_item(i32 noundef %i.bi, i32 noundef %i.an, ptr noundef nonnull %i.ba) #16
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.088, i64 8
  %.0 = load ptr, ptr %i.bj, align 8, !tbaa !30   ; 2 uses
  %.not72 = icmp eq ptr %.0, null
  br i1 %.not72, label %._crit_edge91, label %bb.f

bb.j:                                             ; preds = %bb.a, %._crit_edge91
  %.068 = phi i32 [ 0, %._crit_edge91 ], [ 1, %bb.a ]
  ret i32 %.068
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare ptr @dt_masks_create(i32 noundef) local_unnamed_addr #3

declare ptr @g_list_append(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dt_masks_legacy_params(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @dt_masks_version() local_unnamed_addr #3

declare void @dt_masks_gui_form_save_creation(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

declare void @dt_masks_write_masks_history_item(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @modify_roi_in(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) initializes((0, 20)) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !173
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load <2 x i32>, ptr %i.i, align 4, !tbaa !38
  %i.k = load <2 x i32>, ptr %3, align 4, !tbaa !38 ; 5 uses
  %i.l = add nsw <2 x i32> %i.k, %i.j             ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !80
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !81
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2584
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !89
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.t = load i32, ptr %i.s, align 4, !tbaa !45
  %i.u = tail call ptr @dt_masks_get_from_id_ext(ptr noundef %i.r, i32 noundef %i.t) #16 ; 3 uses
  %.not = icmp eq ptr %i.u, null
  %i.v = extractelement <2 x i32> %i.l, i64 0     ; 3 uses
  %i.w = extractelement <2 x i32> %i.l, i64 1     ; 3 uses
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !43
  %i.z = and i32 %i.y, 4
  %.not100 = icmp eq i32 %i.z, 0
  br i1 %.not100, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.075110 = load ptr, ptr %i.u, align 8, !tbaa !30 ; 2 uses
  %.not101111 = icmp eq ptr %.075110, null
  br i1 %.not101111, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.j
  %.075116 = phi ptr [ %.075110, %.lr.ph ], [ %.075, %bb.j ] ; 2 uses
  %i.ae = phi <2 x i32> [ %i.k, %.lr.ph ], [ %i.cp, %bb.j ] ; 5 uses
  %i.af = phi <2 x i32> [ %i.l, %.lr.ph ], [ %i.cq, %bb.j ] ; 5 uses
  %i.ag = load ptr, ptr %.075116, align 8, !tbaa !41
  %i.ah = load ptr, ptr %i.o, align 8, !tbaa !81
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 2584
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !89
  %i.ak = load i32, ptr %i.ag, align 4, !tbaa !91
  %i.al = call ptr @dt_masks_get_from_id_ext(ptr noundef %i.aj, i32 noundef %i.ak) #16 ; 3 uses
  %.not102 = icmp eq ptr %i.al, null
  br i1 %.not102, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %i.am = call i32 @dt_masks_get_area(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.al, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #16
  %.not.i = icmp eq i32 %i.am, 0
  br i1 %.not.i, label %masks_form_is_in_roi.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = load float, ptr %i.aa, align 4, !tbaa !92 ; 4 uses
  %i.ao = load i32, ptr %i.c, align 4, !tbaa !38
  %i.ap = sitofp reassoc nsz arcp contract afn i32 %i.ao to float
  %i.aq = fmul reassoc nsz arcp contract afn float %i.an, %i.ap
  %i.ar = fptosi float %i.aq to i32
  %i.as = load i32, ptr %i.d, align 4, !tbaa !38
  %i.at = sitofp reassoc nsz arcp contract afn i32 %i.as to float
  %i.au = fmul reassoc nsz arcp contract afn float %i.an, %i.at
  %i.av = fptosi float %i.au to i32
  %i.aw = load i32, ptr %i.a, align 4, !tbaa !38
  %i.ax = sitofp reassoc nsz arcp contract afn i32 %i.aw to float
  %i.ay = fmul reassoc nsz arcp contract afn float %i.an, %i.ax
  %i.az = fptosi float %i.ay to i32               ; 2 uses
  %i.ba = load i32, ptr %i.b, align 4, !tbaa !38
  %i.bb = sitofp reassoc nsz arcp contract afn i32 %i.ba to float
  %i.bc = fmul reassoc nsz arcp contract afn float %i.an, %i.bb
  %i.bd = fptosi float %i.bc to i32               ; 2 uses
  %i.be = load i32, ptr %i.ab, align 4, !tbaa !93 ; 2 uses
  %i.bf = load i32, ptr %i.ac, align 4, !tbaa !94
  %i.bg = add nsw i32 %i.bf, %i.be
  %.not15.i = icmp sgt i32 %i.bg, %i.bd
  %i.bh = add nsw i32 %i.bd, %i.av
  %.not16.i = icmp sgt i32 %i.bh, %i.be
  %or.cond.i = select i1 %.not15.i, i1 %.not16.i, i1 false
  br i1 %or.cond.i, label %bb.f, label %masks_form_is_in_roi.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.bi = load i32, ptr %2, align 4, !tbaa !95    ; 2 uses
  %i.bj = load i32, ptr %i.ad, align 4, !tbaa !96
  %i.bk = add nsw i32 %i.bj, %i.bi
  %.not17.i = icmp sgt i32 %i.bk, %i.az
  br i1 %.not17.i, label %masks_form_is_in_roi.exit, label %masks_form_is_in_roi.exit.thread

masks_form_is_in_roi.exit.thread:                 ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.j

masks_form_is_in_roi.exit:                        ; preds = %bb.f
  %i.bl = add nsw i32 %i.az, %i.ar
  %.not18.i.not = icmp sgt i32 %i.bl, %i.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br i1 %.not18.i.not, label %bb.g, label %bb.j

bb.g:                                             ; preds = %masks_form_is_in_roi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #16
  %i.bm = call i32 @dt_masks_get_source_area(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.al, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #16
  %.not104.not = icmp eq i32 %i.bm, 0
  br i1 %.not104.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bn = load float, ptr %i.aa, align 4, !tbaa !92
  %i.bo = load i32, ptr %i.g, align 4, !tbaa !38
  %i.bp = load i32, ptr %i.h, align 4, !tbaa !38
  %i.bq = load i32, ptr %i.e, align 4, !tbaa !38
  %i.br = load i32, ptr %i.f, align 4, !tbaa !38
  %i.bs = sitofp <2 x i32> %i.ae to <2 x float>
  %i.bt = insertelement <2 x i32> poison, i32 %i.bq, i64 0
  %i.bu = insertelement <2 x i32> %i.bt, i32 %i.br, i64 1
  %i.bv = sitofp <2 x i32> %i.bu to <2 x float>
  %i.bw = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.by = fmul reassoc nsz arcp contract afn <2 x float> %i.bx, %i.bv
  %i.bz = fptosi <2 x float> %i.by to <2 x i32>   ; 2 uses
  %i.ca = sitofp <2 x i32> %i.bz to <2 x float>
  %i.cb = call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ca, <2 x float> %i.bs)
  %i.cc = fptosi <2 x float> %i.cb to <2 x i32>
  %i.cd = sitofp <2 x i32> %i.af to <2 x float>
  %i.ce = insertelement <2 x i32> poison, i32 %i.bo, i64 0
  %i.cf = insertelement <2 x i32> %i.ce, i32 %i.bp, i64 1
  %i.cg = sitofp <2 x i32> %i.cf to <2 x float>
  %i.ch = fmul reassoc nsz arcp contract afn <2 x float> %i.bx, %i.cg
  %i.ci = fptosi <2 x float> %i.ch to <2 x i32>
  %i.cj = add nsw <2 x i32> %i.bz, %i.ci
  %i.ck = sitofp <2 x i32> %i.cj to <2 x float>
  %i.cl = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ck, <2 x float> %i.cd)
  %i.cm = fptosi <2 x float> %i.cl to <2 x i32>
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.cn = phi <2 x i32> [ %i.cc, %bb.h ], [ %i.ae, %bb.g ]
  %i.co = phi <2 x i32> [ %i.cm, %bb.h ], [ %i.af, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  br label %bb.j

bb.j:                                             ; preds = %masks_form_is_in_roi.exit.thread, %bb.i, %bb.c, %masks_form_is_in_roi.exit
  %i.cp = phi <2 x i32> [ %i.ae, %masks_form_is_in_roi.exit ], [ %i.ae, %bb.c ], [ %i.cn, %bb.i ], [ %i.ae, %masks_form_is_in_roi.exit.thread ] ; 2 uses
  %i.cq = phi <2 x i32> [ %i.af, %masks_form_is_in_roi.exit ], [ %i.af, %bb.c ], [ %i.co, %bb.i ], [ %i.af, %masks_form_is_in_roi.exit.thread ] ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.075116, i64 8
  %.075 = load ptr, ptr %i.cr, align 8, !tbaa !30 ; 2 uses
  %.not101 = icmp eq ptr %.075, null
  br i1 %.not101, label %.loopexit.loopexit, label %bb.c

.loopexit.loopexit:                               ; preds = %bb.j
  %i.cs = extractelement <2 x i32> %i.cq, i64 1
  %i.ct = extractelement <2 x i32> %i.cq, i64 0
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %bb.b, %bb.a
  %.491 = phi i32 [ %i.v, %bb.a ], [ %i.v, %bb.b ], [ %i.v, %.preheader ], [ %i.ct, %.loopexit.loopexit ]
  %.486 = phi i32 [ %i.w, %bb.a ], [ %i.w, %bb.b ], [ %i.w, %.preheader ], [ %i.cs, %.loopexit.loopexit ]
  %i.cu = phi <2 x i32> [ %i.k, %bb.a ], [ %i.k, %bb.b ], [ %i.k, %.preheader ], [ %i.cp, %.loopexit.loopexit ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !92
  %i.da = extractelement <2 x i32> %i.cu, i64 0   ; 2 uses
  %i.db = sitofp reassoc nsz arcp contract afn i32 %i.da to float
  %i.dc = call i32 @llvm.smax.i32(i32 %i.da, i32 0)
  %i.dd = uitofp nsz nneg i32 %i.dc to float
  %i.de = load <2 x i32>, ptr %i.cx, align 8, !tbaa !38
  %i.df = sitofp <2 x i32> %i.de to <2 x float>
  %i.dg = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.dh = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.di = fmul reassoc nsz arcp contract afn <2 x float> %i.dh, %i.df ; 3 uses
  %i.dj = extractelement <2 x float> %i.di, i64 0
  %i.dk = fadd reassoc nsz arcp contract afn float %i.dj, -1.000000e+00 ; 2 uses
  %i.dl = fcmp reassoc nsz arcp contract afn olt float %i.dk, %i.db
  %i.dm = select reassoc nsz arcp contract afn i1 %i.dl, float %i.dk, float %i.dd
  %i.dn = fptosi float %i.dm to i32               ; 3 uses
  store i32 %i.dn, ptr %3, align 4, !tbaa !95
  %i.do = sub nsw i32 %.491, %i.dn
  %i.dp = shufflevector <2 x i32> %i.cu, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.dq = insertelement <2 x i32> %i.dp, i32 %i.do, i64 1 ; 2 uses
  %i.dr = sitofp <2 x i32> %i.dq to <2 x float>
  %i.ds = sitofp reassoc nsz arcp contract afn i32 %i.dn to float
  %i.dt = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.ds, i64 0
  %i.du = fsub reassoc nsz arcp contract afn <2 x float> %i.di, %i.dt
  %i.dv = shufflevector <2 x float> %i.du, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dw = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.dv, %i.dr
  %i.dx = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.dq, <2 x i32> <i32 0, i32 1>)
  %i.dy = uitofp nneg <2 x i32> %i.dx to <2 x float>
  %i.dz = select <2 x i1> %i.dw, <2 x float> %i.dv, <2 x float> %i.dy
  %i.ea = fptosi <2 x float> %i.dz to <2 x i32>   ; 2 uses
  store <2 x i32> %i.ea, ptr %i.cv, align 4, !tbaa !38
  %i.eb = extractelement <2 x i32> %i.ea, i64 0   ; 2 uses
  %i.ec = sub nsw i32 %.486, %i.eb                ; 2 uses
  %i.ed = sitofp reassoc nsz arcp contract afn i32 %i.ec to float
  %i.ee = sitofp reassoc nsz arcp contract afn i32 %i.eb to float
  %i.ef = extractelement <2 x float> %i.di, i64 1
  %i.eg = fsub reassoc nsz arcp contract afn float %i.ef, %i.ee ; 2 uses
  %i.eh = fcmp reassoc nsz arcp contract afn olt float %i.eg, %i.ed
  %spec.select105109 = call i32 @llvm.smax.i32(i32 %i.ec, i32 1)
  %spec.select105 = uitofp nneg i32 %spec.select105109 to float
  %i.ei = select reassoc nsz arcp contract afn i1 %i.eh, float %i.eg, float %spec.select105
  %i.ej = fptosi float %i.ei to i32
  store i32 %i.ej, ptr %i.cw, align 4, !tbaa !94
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare ptr @dt_masks_get_from_id_ext(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @dt_masks_get_source_area(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @_process(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 6 uses
  %i.b = alloca [4 x float], align 16             ; 6 uses
  %i.c = alloca [4 x float], align 16             ; 6 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca [4 x float], align 16             ; 9 uses
  %i.i = alloca ptr, align 8                      ; 7 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %i.m = alloca i32, align 4                      ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !97
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !80
  %i.r = sext i32 %6 to i64                       ; 9 uses
  tail call void @dt_iop_copy_image_roi(ptr noundef %3, ptr noundef %2, i64 noundef %i.r, ptr noundef %4, ptr noundef %5) #16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !81
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2584
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !89
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.x = load i32, ptr %i.w, align 4, !tbaa !45
  %i.y = tail call ptr @dt_masks_get_from_id_ext(ptr noundef %i.v, i32 noundef %i.x) #16 ; 3 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %.loopexit310, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !43
  %i.ab = and i32 %i.aa, 4
  %.not246 = icmp eq i32 %i.ab, 0
  br i1 %.not246, label %.loopexit310, label %.preheader309

.preheader309:                                    ; preds = %bb.b
  %.0229331 = load ptr, ptr %i.y, align 8, !tbaa !30 ; 2 uses
  %.not339 = icmp eq ptr %.0229331, null
  br i1 %.not339, label %.loopexit310, label %.lr.ph335

.lr.ph335:                                        ; preds = %.preheader309
  %i.ac = getelementptr i8, ptr %4, i64 16        ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 256
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.ak = getelementptr i8, ptr %0, i64 664       ; 4 uses
  %i.al = getelementptr i8, ptr %0, i64 480       ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ap = icmp sgt i32 %6, 0                      ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %wide.trip.count = zext i32 %6 to i64           ; 19 uses
  %wide.trip.count356 = zext nneg i32 %6 to i64
  %min.iters.check423 = icmp ult i32 %6, 4
  %min.iters.check429 = icmp ult i32 %6, 32
  %i.at = and i64 %wide.trip.count, 28
  %n.vec431 = and i64 %wide.trip.count, 2147483616 ; 4 uses
  %cmp.n446 = icmp eq i64 %n.vec431, %wide.trip.count
  %min.epilog.iters.check450 = icmp eq i64 %i.at, 0
  %n.vec453 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n462 = icmp eq i64 %n.vec453, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check = icmp ult i32 %6, 4
  %min.iters.check400 = icmp ult i32 %6, 32
  %i.au = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.au, 0
  %n.vec408 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n415 = icmp eq i64 %n.vec408, %wide.trip.count
  %xtraiter499 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod500.not = icmp eq i64 %xtraiter499, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph335, %bb.ae
  %indvars.iv368 = phi i64 [ 0, %.lr.ph335 ], [ %indvars.iv.next369, %bb.ae ] ; 3 uses
  %.0229334 = phi ptr [ %.0229331, %.lr.ph335 ], [ %.0229, %bb.ae ] ; 2 uses
  %i.av = load ptr, ptr %.0229334, align 8, !tbaa !41 ; 2 uses
  %i.aw = load ptr, ptr %i.s, align 8, !tbaa !81
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 2584
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !89
  %i.az = load i32, ptr %i.av, align 4, !tbaa !91
  %i.ba = call ptr @dt_masks_get_from_id_ext(ptr noundef %i.ay, i32 noundef %i.az) #16 ; 14 uses
  %.not247 = icmp eq ptr %i.ba, null
  br i1 %.not247, label %bb.ae, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  %i.bb = call i32 @dt_masks_get_area(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ba, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #16
  %.not.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i, label %masks_form_is_in_roi.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bc = load float, ptr %i.ac, align 4, !tbaa !92 ; 7 uses
  %i.bd = load i32, ptr %i.f, align 4, !tbaa !38
  %i.be = sitofp reassoc nsz arcp contract afn i32 %i.bd to float
  %i.bf = fmul reassoc nsz arcp contract afn float %i.bc, %i.be
  %i.bg = fptosi float %i.bf to i32
  %i.bh = load i32, ptr %i.g, align 4, !tbaa !38
  %i.bi = sitofp reassoc nsz arcp contract afn i32 %i.bh to float
  %i.bj = fmul reassoc nsz arcp contract afn float %i.bc, %i.bi
  %i.bk = fptosi float %i.bj to i32
  %i.bl = load i32, ptr %i.d, align 4, !tbaa !38
  %i.bm = sitofp reassoc nsz arcp contract afn i32 %i.bl to float
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bc, %i.bm
  %i.bo = fptosi float %i.bn to i32               ; 2 uses
  %i.bp = load i32, ptr %i.e, align 4, !tbaa !38
  %i.bq = sitofp reassoc nsz arcp contract afn i32 %i.bp to float
  %i.br = fmul reassoc nsz arcp contract afn float %i.bc, %i.bq
  %i.bs = fptosi float %i.br to i32               ; 2 uses
  %i.bt = load i32, ptr %i.ad, align 4, !tbaa !93 ; 2 uses
  %i.bu = load i32, ptr %i.ae, align 4, !tbaa !94
  %i.bv = add nsw i32 %i.bu, %i.bt
  %.not15.i = icmp sgt i32 %i.bv, %i.bs
  %i.bw = add nsw i32 %i.bs, %i.bk
  %.not16.i = icmp sgt i32 %i.bw, %i.bt
  %or.cond.i = select i1 %.not15.i, i1 %.not16.i, i1 false
  br i1 %or.cond.i, label %bb.f, label %masks_form_is_in_roi.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.bx = load i32, ptr %5, align 4, !tbaa !95    ; 2 uses
  %i.by = load i32, ptr %i.af, align 4, !tbaa !96
  %i.bz = add nsw i32 %i.by, %i.bx
  %.not17.i = icmp sgt i32 %i.bz, %i.bo
  br i1 %.not17.i, label %masks_form_is_in_roi.exit, label %masks_form_is_in_roi.exit.thread

masks_form_is_in_roi.exit.thread:                 ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  br label %bb.ae

masks_form_is_in_roi.exit:                        ; preds = %bb.f
  %i.ca = add nsw i32 %i.bo, %i.bg
  %.not18.i.not = icmp sgt i32 %i.ca, %i.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  br i1 %.not18.i.not, label %bb.g, label %bb.ae

bb.g:                                             ; preds = %masks_form_is_in_roi.exit
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv368
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !38
  %i.cd = icmp eq i32 %i.cc, 1
  br i1 %i.cd, label %bb.h, label %bb.r

bb.h:                                             ; preds = %bb.g
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !43
  %i.cg = and i32 %i.cf, 1
  %.not249 = icmp eq i32 %i.cg, 0
  br i1 %.not249, label %bb.r, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ch = load ptr, ptr %i.ba, align 8, !tbaa !37
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !41 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #16
  %.val265 = load ptr, ptr %i.s, align 8, !tbaa !81 ; 2 uses
  %i.cj = getelementptr i8, ptr %.val265, i64 144
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.cl = load <2 x i32>, ptr %i.cj, align 16, !tbaa !38
  %i.cm = sitofp <2 x i32> %i.cl to <2 x float>
  %i.cn = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <4 x i32> zeroinitializer
  %i.cp = shufflevector <2 x float> %i.cm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cq = fmul reassoc nsz arcp contract afn <4 x float> %i.co, %i.cp
  %i.cr = load <2 x float>, ptr %i.ci, align 4, !tbaa !34
  %i.cs = load <2 x float>, ptr %i.ck, align 8, !tbaa !34
  %i.ct = shufflevector <2 x float> %i.cr, <2 x float> %i.cs, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cu = fmul reassoc nsz arcp contract afn <4 x float> %i.cq, %i.ct
  store <4 x float> %i.cu, ptr %i.h, align 16, !tbaa !34
  %i.cv = load ptr, ptr %i.ak, align 8, !tbaa !28
  %i.cw = load i32, ptr %i.al, align 16, !tbaa !192
  %i.cx = sitofp reassoc nsz arcp contract afn i32 %i.cw to double
  %i.cy = call i32 @dt_dev_distort_transform_plus(ptr noundef %i.cv, ptr noundef %.val265, double noundef %i.cx, i32 noundef 3, ptr noundef nonnull %i.h, i64 noundef 2) #16
  %.not255.not = icmp eq i32 %i.cy, 0
  br i1 %.not255.not, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.da = load float, ptr %i.cz, align 4, !tbaa !36
  %.val = load ptr, ptr %i.s, align 8, !tbaa !81
  %.val262 = load float, ptr %i.ac, align 4, !tbaa !92
  %i.db = getelementptr i8, ptr %.val, i64 144
  %i.dc = fmul reassoc nsz arcp contract afn float %.val262, %i.da
  %i.dd = load <2 x i32>, ptr %i.db, align 16, !tbaa !38
  %i.de = sitofp <2 x i32> %i.dd to <2 x float>
  %i.df = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.dg = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dh = fmul reassoc nsz arcp contract afn <2 x float> %i.dg, %i.de ; 2 uses
  %i.di = extractelement <2 x float> %i.dh, i64 0 ; 2 uses
  %i.dj = extractelement <2 x float> %i.dh, i64 1 ; 2 uses
  %i.dk = fcmp reassoc nsz arcp contract afn olt float %i.di, %i.dj
  %i.dl = select reassoc nsz arcp contract afn i1 %i.dk, float %i.di, float %i.dj
  %i.dm = fptosi float %i.dl to i32               ; 6 uses
  %i.dn = load float, ptr %i.h, align 16, !tbaa !34
  %i.do = sitofp reassoc nsz arcp contract afn i32 %i.dm to float ; 7 uses
  %i.dp = fsub reassoc nsz arcp contract afn float %i.dn, %i.do
  %i.dq = fptosi float %i.dp to i32               ; 3 uses
  %i.dr = load float, ptr %i.ah, align 4, !tbaa !34
  %i.ds = fsub reassoc nsz arcp contract afn float %i.dr, %i.do
  %i.dt = fptosi float %i.ds to i32               ; 3 uses
  %i.du = load float, ptr %i.ai, align 8, !tbaa !34
  %i.dv = fsub reassoc nsz arcp contract afn float %i.du, %i.do
  %i.dw = fptosi float %i.dv to i32               ; 2 uses
  %i.dx = load float, ptr %i.aj, align 4, !tbaa !34
  %i.dy = fsub reassoc nsz arcp contract afn float %i.dx, %i.do
  %i.dz = fptosi float %i.dy to i32               ; 2 uses
  %.neg260 = sub i32 %i.dw, %i.dq
  %.neg = sub i32 %i.dz, %i.dt
  %i.ea = shl nsw i32 %i.dm, 1                    ; 6 uses
  %i.eb = or disjoint i32 %i.ea, 1
  %i.ec = sext i32 %i.eb to i64
  %i.ed = shl nsw i64 %i.ec, 2
  %i.ee = call noalias ptr @malloc(i64 noundef %i.ed) #17 ; 4 uses
  %i.ef = icmp sgt i32 %i.dm, 0
  br i1 %i.ef, label %iter.check478, label %._crit_edge

iter.check478:                                    ; preds = %bb.j
  %i.eg = sub nsw i32 0, %i.dm                    ; 2 uses
  %i.eh = sext i32 %i.eg to i64                   ; 6 uses
  %i.ei = zext nneg i32 %i.dm to i64
  %i.ej = add nuw i32 %i.dm, 1
  %invariant.gep = getelementptr [4 x i8], ptr %i.ee, i64 %i.ei ; 3 uses
  %i.ek = or disjoint i32 %i.ea, 1
  %i.el = zext nneg i32 %i.ek to i64              ; 3 uses
  %min.iters.check464 = icmp ult i32 %i.ea, 8
  br i1 %min.iters.check464, label %.lr.ph.preheader, label %vector.main.loop.iter.check465

vector.main.loop.iter.check465:                   ; preds = %iter.check478
  %min.iters.check466 = icmp ult i32 %i.ea, 32
  br i1 %min.iters.check466, label %vec.epilog.ph482, label %vector.ph467

vector.ph467:                                     ; preds = %vector.main.loop.iter.check465
  %i.em = and i64 %i.el, 24
  %n.vec468 = and i64 %i.el, 2147483616           ; 3 uses
  %i.en = add nsw i64 %n.vec468, %i.eh            ; 2 uses
  %broadcast.splatinsert469 = insertelement <8 x float> poison, float %i.do, i64 0
  %broadcast.splat470 = shufflevector <8 x float> %broadcast.splatinsert469, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert471 = insertelement <8 x i32> poison, i32 %i.eg, i64 0
  %broadcast.splat472 = shufflevector <8 x i32> %broadcast.splatinsert471, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = add <8 x i32> %broadcast.splat472, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.eo = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat470
  %i.ep = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat470
  %i.eq = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat470
  %i.er = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat470
  %invariant.gep502 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.eh
  br label %vector.body473

vector.body473:                                   ; preds = %vector.ph467, %vector.body473
  %index474 = phi i64 [ 0, %vector.ph467 ], [ %index.next475, %vector.body473 ] ; 2 uses
  %vec.ind = phi <8 x i32> [ %induction, %vector.ph467 ], [ %vec.ind.next, %vector.body473 ] ; 5 uses
  %step.add = add <8 x i32> %vec.ind, splat (i32 8)
  %step.add.2 = add <8 x i32> %vec.ind, splat (i32 16)
  %step.add.3 = add <8 x i32> %vec.ind, splat (i32 24)
  %i.es = sitofp reassoc nsz arcp contract afn <8 x i32> %vec.ind to <8 x float>
  %i.et = sitofp reassoc nsz arcp contract afn <8 x i32> %step.add to <8 x float>
  %i.eu = sitofp reassoc nsz arcp contract afn <8 x i32> %step.add.2 to <8 x float>
  %i.ev = sitofp reassoc nsz arcp contract afn <8 x i32> %step.add.3 to <8 x float>
  %i.ew = fmul reassoc nsz arcp contract afn <8 x float> %i.es, %i.eo
  %i.ex = fmul reassoc nsz arcp contract afn <8 x float> %i.et, %i.ep
  %i.ey = fmul reassoc nsz arcp contract afn <8 x float> %i.eu, %i.eq
  %i.ez = fmul reassoc nsz arcp contract afn <8 x float> %i.ev, %i.er
  %i.fa = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ew)
  %i.fb = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ex)
  %i.fc = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ey)
  %i.fd = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ez)
  %i.fe = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.fa ; 3 uses
  %i.ff = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.fb ; 3 uses
  %i.fg = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.fc ; 3 uses
  %i.fh = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.fd ; 3 uses
  %i.fi = fmul reassoc nsz arcp contract afn <8 x float> %i.fe, %i.fe
  %i.fj = fmul reassoc nsz arcp contract afn <8 x float> %i.ff, %i.ff
  %i.fk = fmul reassoc nsz arcp contract afn <8 x float> %i.fg, %i.fg
  %i.fl = fmul reassoc nsz arcp contract afn <8 x float> %i.fh, %i.fh
  %i.fm = fmul reassoc nsz arcp contract afn <8 x float> %i.fe, splat (float 2.000000e+00)
  %i.fn = fmul reassoc nsz arcp contract afn <8 x float> %i.ff, splat (float 2.000000e+00)
  %i.fo = fmul reassoc nsz arcp contract afn <8 x float> %i.fg, splat (float 2.000000e+00)
  %i.fp = fmul reassoc nsz arcp contract afn <8 x float> %i.fh, splat (float 2.000000e+00)
  %i.fq = fsub reassoc nsz arcp contract afn <8 x float> splat (float 3.000000e+00), %i.fm
  %i.fr = fsub reassoc nsz arcp contract afn <8 x float> splat (float 3.000000e+00), %i.fn
  %i.fs = fsub reassoc nsz arcp contract afn <8 x float> splat (float 3.000000e+00), %i.fo
  %i.ft = fsub reassoc nsz arcp contract afn <8 x float> splat (float 3.000000e+00), %i.fp
  %i.fu = fmul reassoc nsz arcp contract afn <8 x float> %i.fi, %i.fq
  %i.fv = fmul reassoc nsz arcp contract afn <8 x float> %i.fj, %i.fr
  %i.fw = fmul reassoc nsz arcp contract afn <8 x float> %i.fk, %i.fs
  %i.fx = fmul reassoc nsz arcp contract afn <8 x float> %i.fl, %i.ft
  %gep503 = getelementptr [4 x i8], ptr %invariant.gep502, i64 %index474 ; 4 uses
  %i.fy = getelementptr i8, ptr %gep503, i64 32
  %i.fz = getelementptr i8, ptr %gep503, i64 64
  %i.ga = getelementptr i8, ptr %gep503, i64 96
  store <8 x float> %i.fu, ptr %gep503, align 4, !tbaa !34
  store <8 x float> %i.fv, ptr %i.fy, align 4, !tbaa !34
  store <8 x float> %i.fw, ptr %i.fz, align 4, !tbaa !34
  store <8 x float> %i.fx, ptr %i.ga, align 4, !tbaa !34
  %index.next475 = add nuw i64 %index474, 32      ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.gb = icmp eq i64 %index.next475, %n.vec468
  br i1 %i.gb, label %vec.epilog.iter.check479, label %vector.body473, !llvm.loop !174

vec.epilog.iter.check479:                         ; preds = %vector.body473
  %min.epilog.iters.check481 = icmp eq i64 %i.em, 0
  br i1 %min.epilog.iters.check481, label %.lr.ph.preheader, label %vec.epilog.ph482, !prof !195

vec.epilog.ph482:                                 ; preds = %vector.main.loop.iter.check465, %vec.epilog.iter.check479
  %vec.epilog.resume.val483 = phi i64 [ %n.vec468, %vec.epilog.iter.check479 ], [ 0, %vector.main.loop.iter.check465 ]
  %bc.resume.val484 = phi i64 [ %i.en, %vec.epilog.iter.check479 ], [ %i.eh, %vector.main.loop.iter.check465 ]
  %n.vec485 = and i64 %i.el, 2147483640           ; 2 uses
  %i.gc = add nsw i64 %n.vec485, %i.eh
  %broadcast.splatinsert486 = insertelement <8 x float> poison, float %i.do, i64 0
  %broadcast.splat487 = shufflevector <8 x float> %broadcast.splatinsert486, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gd = trunc i64 %bc.resume.val484 to i32
  %broadcast.splatinsert488 = insertelement <8 x i32> poison, i32 %i.gd, i64 0
  %broadcast.splat489 = shufflevector <8 x i32> %broadcast.splatinsert488, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction490 = add <8 x i32> %broadcast.splat489, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ge = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat487
  %invariant.gep504 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.eh
  br label %vec.epilog.vector.body491

vec.epilog.vector.body491:                        ; preds = %vec.epilog.vector.body491, %vec.epilog.ph482
  %index492 = phi i64 [ %vec.epilog.resume.val483, %vec.epilog.ph482 ], [ %index.next494, %vec.epilog.vector.body491 ] ; 2 uses
  %vec.ind493 = phi <8 x i32> [ %induction490, %vec.epilog.ph482 ], [ %vec.ind.next495, %vec.epilog.vector.body491 ] ; 2 uses
  %i.gf = sitofp reassoc nsz arcp contract afn <8 x i32> %vec.ind493 to <8 x float>
  %i.gg = fmul reassoc nsz arcp contract afn <8 x float> %i.gf, %i.ge
  %i.gh = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.gg)
  %i.gi = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.gh ; 3 uses
  %i.gj = fmul reassoc nsz arcp contract afn <8 x float> %i.gi, %i.gi
  %i.gk = fmul reassoc nsz arcp contract afn <8 x float> %i.gi, splat (float 2.000000e+00)
  %i.gl = fsub reassoc nsz arcp contract afn <8 x float> splat (float 3.000000e+00), %i.gk
  %i.gm = fmul reassoc nsz arcp contract afn <8 x float> %i.gj, %i.gl
  %gep505 = getelementptr [4 x i8], ptr %invariant.gep504, i64 %index492
  store <8 x float> %i.gm, ptr %gep505, align 4, !tbaa !34
  %index.next494 = add nuw i64 %index492, 8       ; 2 uses
  %vec.ind.next495 = add <8 x i32> %vec.ind493, splat (i32 8)
  %i.gn = icmp eq i64 %index.next494, %n.vec485
  br i1 %i.gn, label %.lr.ph.preheader, label %vec.epilog.vector.body491, !llvm.loop !175

.lr.ph.preheader:                                 ; preds = %vec.epilog.vector.body491, %iter.check478, %vec.epilog.iter.check479
  %indvars.iv.ph = phi i64 [ %i.eh, %iter.check478 ], [ %i.en, %vec.epilog.iter.check479 ], [ %i.gc, %vec.epilog.vector.body491 ]
  %i.go = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.do
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %i.gp = trunc nsw i64 %indvars.iv to i32
  %i.gq = sitofp reassoc nsz arcp contract afn i32 %i.gp to float
  %i.gr = fmul reassoc nsz arcp contract afn float %i.gq, %i.go
  %i.gs = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.gr)
  %i.gt = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.gs ; 3 uses
  %i.gu = fmul reassoc nsz arcp contract afn float %i.gt, %i.gt
  %i.gv = fmul reassoc nsz arcp contract afn float %i.gt, 2.000000e+00
  %i.gw = fsub reassoc nsz arcp contract afn float 3.000000e+00, %i.gv
  %i.gx = fmul reassoc nsz arcp contract afn float %i.gu, %i.gw
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store float %i.gx, ptr %gep, align 4, !tbaa !34
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ej, %lftr.wideiv
  br i1 %exitcond.not, label %.lr.ph320, label %.lr.ph, !llvm.loop !176

.lr.ph320:                                        ; preds = %.lr.ph
  %i.gy = add nsw i32 %i.ea, %i.dt
  %i.gz = load i32, ptr %i.ad, align 4, !tbaa !93 ; 2 uses
  %i.ha = add nsw i32 %i.ea, %i.dq
  %i.hb = sext i32 %i.dq to i64                   ; 3 uses
  %i.hc = sext i32 %i.dw to i64
  %i.hd = sext i32 %i.ha to i64
  %i.he = sext i32 %i.dt to i64                   ; 2 uses
  %i.hf = sext i32 %i.gz to i64                   ; 2 uses
  %i.hg = sext i32 %i.gy to i64
  br label %bb.k

._crit_edge:                                      ; preds = %.loopexit305, %bb.j
  call void @free(ptr noundef %i.ee) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #16
  br label %bb.ae

bb.k:                                             ; preds = %.lr.ph320, %.loopexit305
  %indvars.iv350 = phi i64 [ %i.he, %.lr.ph320 ], [ %indvars.iv.next351, %.loopexit305 ] ; 6 uses
  %indvars352 = trunc nsw i64 %indvars.iv350 to i32
  %i.hh = icmp slt i64 %indvars.iv350, %i.hf
  br i1 %i.hh, label %.loopexit305, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.hi = load i32, ptr %i.ae, align 4, !tbaa !94
  %i.hj = add nsw i32 %i.hi, %i.gz
  %i.hk = sext i32 %i.hj to i64
end_hunk_0
begin_hunk_1_@_process:bb.a
  %wide.load437 = load <8 x float>, ptr %i.jn, align 4, !tbaa !34, !alias.scope !196, !noalias !197 ; 2 uses
  %wide.load438 = load <8 x float>, ptr %i.jo, align 4, !tbaa !34, !alias.scope !196, !noalias !197 ; 2 uses
  %wide.load439 = load <8 x float>, ptr %i.jp, align 4, !tbaa !34, !alias.scope !196, !noalias !197 ; 2 uses
  %i.jq = getelementptr [4 x i8], ptr %i.jd, i64 %index435 ; 4 uses
  %i.jr = getelementptr i8, ptr %i.jq, i64 32
  %i.js = getelementptr i8, ptr %i.jq, i64 64
  %i.jt = getelementptr i8, ptr %i.jq, i64 96
  %wide.load440 = load <8 x float>, ptr %i.jq, align 4, !tbaa !34, !alias.scope !197
  %wide.load441 = load <8 x float>, ptr %i.jr, align 4, !tbaa !34, !alias.scope !197
  %wide.load442 = load <8 x float>, ptr %i.js, align 4, !tbaa !34, !alias.scope !197
  %wide.load443 = load <8 x float>, ptr %i.jt, align 4, !tbaa !34, !alias.scope !197
  %i.ju = fsub reassoc nsz arcp contract afn <8 x float> %wide.load440, %wide.load436
  %i.jv = fsub reassoc nsz arcp contract afn <8 x float> %wide.load441, %wide.load437
  %i.jw = fsub reassoc nsz arcp contract afn <8 x float> %wide.load442, %wide.load438
  %i.jx = fsub reassoc nsz arcp contract afn <8 x float> %wide.load443, %wide.load439
  %i.jy = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat433, %i.ju
  %i.jz = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat433, %i.jv
  %i.ka = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat433, %i.jw
  %i.kb = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat433, %i.jx
  %i.kc = fadd reassoc nsz arcp contract afn <8 x float> %i.jy, %wide.load436
  %i.kd = fadd reassoc nsz arcp contract afn <8 x float> %i.jz, %wide.load437
  %i.ke = fadd reassoc nsz arcp contract afn <8 x float> %i.ka, %wide.load438
  %i.kf = fadd reassoc nsz arcp contract afn <8 x float> %i.kb, %wide.load439
  store <8 x float> %i.kc, ptr %i.jm, align 4, !tbaa !34, !alias.scope !196, !noalias !197
  store <8 x float> %i.kd, ptr %i.jn, align 4, !tbaa !34, !alias.scope !196, !noalias !197
  store <8 x float> %i.ke, ptr %i.jo, align 4, !tbaa !34, !alias.scope !196, !noalias !197
  store <8 x float> %i.kf, ptr %i.jp, align 4, !tbaa !34, !alias.scope !196, !noalias !197
  %index.next444 = add nuw i64 %index435, 32      ; 2 uses
  %i.kg = icmp eq i64 %index.next444, %n.vec431
  br i1 %i.kg, label %middle.block445, label %vector.body434, !llvm.loop !180

middle.block445:                                  ; preds = %vector.body434
  br i1 %cmp.n446, label %..loopexit302_crit_edge.us, label %vec.epilog.iter.check448

vec.epilog.iter.check448:                         ; preds = %middle.block445
  br i1 %min.epilog.iters.check450, label %vec.epilog.scalar.ph449.preheader, label %vec.epilog.ph451, !prof !198

vec.epilog.ph451:                                 ; preds = %vector.main.loop.iter.check428, %vec.epilog.iter.check448
  %vec.epilog.resume.val452 = phi i64 [ %n.vec431, %vec.epilog.iter.check448 ], [ 0, %vector.main.loop.iter.check428 ]
  %broadcast.splatinsert454 = insertelement <4 x float> poison, float %i.io, i64 0
  %broadcast.splat455 = shufflevector <4 x float> %broadcast.splatinsert454, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body456

vec.epilog.vector.body456:                        ; preds = %vec.epilog.vector.body456, %vec.epilog.ph451
  %index457 = phi i64 [ %vec.epilog.resume.val452, %vec.epilog.ph451 ], [ %index.next460, %vec.epilog.vector.body456 ] ; 3 uses
  %i.kh = getelementptr [4 x i8], ptr %i.iu, i64 %index457 ; 2 uses
  %wide.load458 = load <4 x float>, ptr %i.kh, align 4, !tbaa !34, !alias.scope !196, !noalias !197 ; 2 uses
  %i.ki = getelementptr [4 x i8], ptr %i.jd, i64 %index457
  %wide.load459 = load <4 x float>, ptr %i.ki, align 4, !tbaa !34, !alias.scope !197
  %i.kj = fsub reassoc nsz arcp contract afn <4 x float> %wide.load459, %wide.load458
  %i.kk = fmul reassoc nsz arcp contract afn <4 x float> %broadcast.splat455, %i.kj
  %i.kl = fadd reassoc nsz arcp contract afn <4 x float> %i.kk, %wide.load458
  store <4 x float> %i.kl, ptr %i.kh, align 4, !tbaa !34, !alias.scope !196, !noalias !197
  %index.next460 = add nuw i64 %index457, 4       ; 2 uses
  %i.km = icmp eq i64 %index.next460, %n.vec453
  br i1 %i.km, label %vec.epilog.middle.block461, label %vec.epilog.vector.body456, !llvm.loop !181

vec.epilog.middle.block461:                       ; preds = %vec.epilog.vector.body456
  br i1 %cmp.n462, label %..loopexit302_crit_edge.us, label %vec.epilog.scalar.ph449.preheader

vec.epilog.scalar.ph449.preheader:                ; preds = %iter.check447, %vector.memcheck424, %vec.epilog.iter.check448, %vec.epilog.middle.block461
  %indvars.iv343.ph = phi i64 [ 0, %iter.check447 ], [ 0, %vector.memcheck424 ], [ %n.vec431, %vec.epilog.iter.check448 ], [ %n.vec453, %vec.epilog.middle.block461 ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph449.prol.loopexit, label %vec.epilog.scalar.ph449.prol

vec.epilog.scalar.ph449.prol:                     ; preds = %vec.epilog.scalar.ph449.preheader, %vec.epilog.scalar.ph449.prol
  %indvars.iv343.prol = phi i64 [ %indvars.iv.next344.prol, %vec.epilog.scalar.ph449.prol ], [ %indvars.iv343.ph, %vec.epilog.scalar.ph449.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph449.prol ], [ 0, %vec.epilog.scalar.ph449.preheader ]
  %i.kn = getelementptr [4 x i8], ptr %i.iu, i64 %indvars.iv343.prol ; 2 uses
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !34 ; 2 uses
  %i.kp = getelementptr [4 x i8], ptr %i.jd, i64 %indvars.iv343.prol
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !34
  %i.kr = fsub reassoc nsz arcp contract afn float %i.kq, %i.ko
  %i.ks = fmul reassoc nsz arcp contract afn float %i.io, %i.kr
  %i.kt = fadd reassoc nsz arcp contract afn float %i.ks, %i.ko
  store float %i.kt, ptr %i.kn, align 4, !tbaa !34
  %indvars.iv.next344.prol = add nuw nsw i64 %indvars.iv343.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph449.prol.loopexit, label %vec.epilog.scalar.ph449.prol, !llvm.loop !182

vec.epilog.scalar.ph449.prol.loopexit:            ; preds = %vec.epilog.scalar.ph449.prol, %vec.epilog.scalar.ph449.preheader
  %indvars.iv343.unr = phi i64 [ %indvars.iv343.ph, %vec.epilog.scalar.ph449.preheader ], [ %indvars.iv.next344.prol, %vec.epilog.scalar.ph449.prol ]
  %i.ku = sub nsw i64 %indvars.iv343.ph, %wide.trip.count
  %i.kv = icmp ugt i64 %i.ku, -4
  br i1 %i.kv, label %..loopexit302_crit_edge.us, label %vec.epilog.scalar.ph449

vec.epilog.scalar.ph449:                          ; preds = %vec.epilog.scalar.ph449.prol.loopexit, %vec.epilog.scalar.ph449
  %indvars.iv343 = phi i64 [ %indvars.iv.next344.3, %vec.epilog.scalar.ph449 ], [ %indvars.iv343.unr, %vec.epilog.scalar.ph449.prol.loopexit ] ; 6 uses
  %i.kw = getelementptr [4 x i8], ptr %i.iu, i64 %indvars.iv343 ; 2 uses
  %i.kx = load float, ptr %i.kw, align 4, !tbaa !34 ; 2 uses
  %i.ky = getelementptr [4 x i8], ptr %i.jd, i64 %indvars.iv343
  %i.kz = load float, ptr %i.ky, align 4, !tbaa !34
  %i.la = fsub reassoc nsz arcp contract afn float %i.kz, %i.kx
  %i.lb = fmul reassoc nsz arcp contract afn float %i.io, %i.la
  %i.lc = fadd reassoc nsz arcp contract afn float %i.lb, %i.kx
  store float %i.lc, ptr %i.kw, align 4, !tbaa !34
  %indvars.iv.next344 = add nuw nsw i64 %indvars.iv343, 1 ; 2 uses
  %i.ld = getelementptr [4 x i8], ptr %i.iu, i64 %indvars.iv.next344 ; 2 uses
  %i.le = load float, ptr %i.ld, align 4, !tbaa !34 ; 2 uses
  %i.lf = getelementptr [4 x i8], ptr %i.jd, i64 %indvars.iv.next344
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !34
  %i.lh = fsub reassoc nsz arcp contract afn float %i.lg, %i.le
  %i.li = fmul reassoc nsz arcp contract afn float %i.io, %i.lh
  %i.lj = fadd reassoc nsz arcp contract afn float %i.li, %i.le
  store float %i.lj, ptr %i.ld, align 4, !tbaa !34
  %indvars.iv.next344.1 = add nuw nsw i64 %indvars.iv343, 2 ; 2 uses
  %i.lk = getelementptr [4 x i8], ptr %i.iu, i64 %indvars.iv.next344.1 ; 2 uses
  %i.ll = load float, ptr %i.lk, align 4, !tbaa !34 ; 2 uses
  %i.lm = getelementptr [4 x i8], ptr %i.jd, i64 %indvars.iv.next344.1
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !34
  %i.lo = fsub reassoc nsz arcp contract afn float %i.ln, %i.ll
  %i.lp = fmul reassoc nsz arcp contract afn float %i.io, %i.lo
  %i.lq = fadd reassoc nsz arcp contract afn float %i.lp, %i.ll
  store float %i.lq, ptr %i.lk, align 4, !tbaa !34
  %indvars.iv.next344.2 = add nuw nsw i64 %indvars.iv343, 3 ; 2 uses
  %i.lr = getelementptr [4 x i8], ptr %i.iu, i64 %indvars.iv.next344.2 ; 2 uses
  %i.ls = load float, ptr %i.lr, align 4, !tbaa !34 ; 2 uses
  %i.lt = getelementptr [4 x i8], ptr %i.jd, i64 %indvars.iv.next344.2
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !34
  %i.lv = fsub reassoc nsz arcp contract afn float %i.lu, %i.ls
  %i.lw = fmul reassoc nsz arcp contract afn float %i.io, %i.lv
  %i.lx = fadd reassoc nsz arcp contract afn float %i.lw, %i.ls
  store float %i.lx, ptr %i.lr, align 4, !tbaa !34
  %indvars.iv.next344.3 = add nuw nsw i64 %indvars.iv343, 4 ; 2 uses
  %exitcond346.not.3 = icmp eq i64 %indvars.iv.next344.3, %wide.trip.count
  br i1 %exitcond346.not.3, label %..loopexit302_crit_edge.us, label %vec.epilog.scalar.ph449, !llvm.loop !183

..loopexit302_crit_edge.us:                       ; preds = %vec.epilog.scalar.ph449.prol.loopexit, %vec.epilog.scalar.ph449, %middle.block445, %vec.epilog.middle.block461, %bb.q, %bb.p, %bb.o, %.lr.ph317.split.us
  %indvars.iv.next348 = add nsw i64 %indvars.iv347, 1 ; 2 uses
  %i.ly = icmp slt i64 %indvars.iv.next348, %i.hd
  br i1 %i.ly, label %.lr.ph317.split.us, label %.loopexit305

.loopexit305:                                     ; preds = %..loopexit302_crit_edge.us, %.lr.ph317, %bb.n, %bb.m, %bb.k, %bb.l
  %indvars.iv.next351 = add nsw i64 %indvars.iv350, 1 ; 2 uses
  %i.lz = icmp slt i64 %indvars.iv.next351, %i.hg
  br i1 %i.lz, label %bb.k, label %._crit_edge

bb.r:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #16
  store ptr null, ptr %i.i, align 8, !tbaa !200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #16
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !201 ; 2 uses
  %.not.i270 = icmp eq ptr %i.mb, null
  br i1 %.not.i270, label %dt_masks_get_mask.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 88
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !203 ; 2 uses
  %.not12.i = icmp eq ptr %i.md, null
  br i1 %.not12.i, label %dt_masks_get_mask.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.me = call i32 %i.md(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ba, ptr noundef nonnull %i.i, ptr noundef nonnull %i.l, ptr noundef nonnull %i.m, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k) #16, !inline_history !184 ; 0 uses
  %.pre = load i32, ptr %i.k, align 4, !tbaa !38
  %.pre371 = load float, ptr %i.ac, align 4, !tbaa !92
  %.pre372 = load i32, ptr %i.m, align 4, !tbaa !38
  %.pre373 = load i32, ptr %i.j, align 4, !tbaa !38
  %.pre374 = load i32, ptr %i.l, align 4, !tbaa !38
  %i.mf = sitofp reassoc nsz arcp contract afn i32 %.pre to float
  %i.mg = sitofp reassoc nsz arcp contract afn i32 %.pre372 to float
  %i.mh = sitofp reassoc nsz arcp contract afn i32 %.pre373 to float
  %i.mi = sitofp reassoc nsz arcp contract afn i32 %.pre374 to float
  br label %dt_masks_get_mask.exit

dt_masks_get_mask.exit:                           ; preds = %bb.r, %bb.s, %bb.t
  %i.mj = phi float [ 0.000000e+00, %bb.r ], [ 0.000000e+00, %bb.s ], [ %i.mi, %bb.t ]
  %i.mk = phi float [ 0.000000e+00, %bb.r ], [ 0.000000e+00, %bb.s ], [ %i.mh, %bb.t ]
  %i.ml = phi float [ 0.000000e+00, %bb.r ], [ 0.000000e+00, %bb.s ], [ %i.mg, %bb.t ]
  %i.mm = phi float [ %i.bc, %bb.r ], [ %i.bc, %bb.s ], [ %.pre371, %bb.t ] ; 7 uses
  %i.mn = phi float [ 0.000000e+00, %bb.r ], [ 0.000000e+00, %bb.s ], [ %i.mf, %bb.t ]
  %i.mo = fmul reassoc nsz arcp contract afn float %i.mm, %i.mn
  %i.mp = fptosi float %i.mo to i32               ; 3 uses
  %i.mq = fmul reassoc nsz arcp contract afn float %i.mm, %i.ml
  %i.mr = fptosi float %i.mq to i32
  %i.ms = fmul reassoc nsz arcp contract afn float %i.mm, %i.mk
  %i.mt = fptosi float %i.ms to i32               ; 3 uses
  %i.mu = fmul reassoc nsz arcp contract afn float %i.mm, %i.mj
  %i.mv = fptosi float %i.mu to i32
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.mx = load i32, ptr %i.mw, align 8, !tbaa !43 ; 3 uses
  %i.my = and i32 %i.mx, 2
  %.not.i271 = icmp eq i32 %i.my, 0
  br i1 %.not.i271, label %bb.u, label %masks_point_calc_delta.exit.i

masks_point_calc_delta.exit.i:                    ; preds = %dt_masks_get_mask.exit
  %i.mz = load ptr, ptr %i.ba, align 8, !tbaa !37
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !41
  %i.nb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %.val44.i = load i32, ptr %i.al, align 16, !tbaa !192
  %.val45.i = load ptr, ptr %i.ak, align 8, !tbaa !28
  %.val46.i = load ptr, ptr %i.s, align 8, !tbaa !81 ; 2 uses
  %i.nc = getelementptr i8, ptr %.val46.i, i64 144
  %i.nd = load <2 x float>, ptr %i.na, align 4, !tbaa !34
  %i.ne = load <2 x float>, ptr %i.nb, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.nf = load <2 x i32>, ptr %i.nc, align 16, !tbaa !38
  %i.ng = sitofp <2 x i32> %i.nf to <2 x float>
  %i.nh = insertelement <2 x float> poison, float %i.mm, i64 0
  %i.ni = shufflevector <2 x float> %i.nh, <2 x float> poison, <4 x i32> zeroinitializer
  %i.nj = shufflevector <2 x float> %i.ng, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.nk = fmul reassoc nsz arcp contract afn <4 x float> %i.ni, %i.nj
  %i.nl = shufflevector <2 x float> %i.nd, <2 x float> %i.ne, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.nm = fmul reassoc nsz arcp contract afn <4 x float> %i.nk, %i.nl
  store <4 x float> %i.nm, ptr %i.c, align 16, !tbaa !34
  %i.nn = sitofp reassoc nsz arcp contract afn i32 %.val44.i to double
  %i.no = call i32 @dt_dev_distort_transform_plus(ptr noundef %.val45.i, ptr noundef %.val46.i, double noundef %i.nn, i32 noundef 3, ptr noundef nonnull %i.c, i64 noundef 2) #16 ; 2 uses
  %.not.i.i = icmp eq i32 %i.no, 0
  %i.np = load <2 x float>, ptr %i.c, align 16
  %i.nq = load <2 x float>, ptr %i.aq, align 8
  %i.nr = fsub reassoc nsz arcp contract afn <2 x float> %i.np, %i.nq
  %i.ns = fptosi <2 x float> %i.nr to <2 x i32>
  %i.nt = select i1 %.not.i.i, <2 x i32> zeroinitializer, <2 x i32> %i.ns
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %masks_get_delta.exit

bb.u:                                             ; preds = %dt_masks_get_mask.exit
  %i.nu = and i32 %i.mx, 1
  %.not27.i = icmp eq i32 %i.nu, 0
  br i1 %.not27.i, label %bb.v, label %masks_point_calc_delta.exit55.i

masks_point_calc_delta.exit55.i:                  ; preds = %bb.u
  %i.nv = load ptr, ptr %i.ba, align 8, !tbaa !37
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !41
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %.val36.i = load i32, ptr %i.al, align 16, !tbaa !192
  %.val37.i = load ptr, ptr %i.ak, align 8, !tbaa !28
  %.val38.i = load ptr, ptr %i.s, align 8, !tbaa !81 ; 2 uses
  %i.ny = getelementptr i8, ptr %.val38.i, i64 144
  %i.nz = load <2 x float>, ptr %i.nw, align 4, !tbaa !34
  %i.oa = load <2 x float>, ptr %i.nx, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.ob = load <2 x i32>, ptr %i.ny, align 16, !tbaa !38
  %i.oc = sitofp <2 x i32> %i.ob to <2 x float>
  %i.od = insertelement <2 x float> poison, float %i.mm, i64 0
  %i.oe = shufflevector <2 x float> %i.od, <2 x float> poison, <4 x i32> zeroinitializer
  %i.of = shufflevector <2 x float> %i.oc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.og = fmul reassoc nsz arcp contract afn <4 x float> %i.oe, %i.of
  %i.oh = shufflevector <2 x float> %i.nz, <2 x float> %i.oa, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.oi = fmul reassoc nsz arcp contract afn <4 x float> %i.og, %i.oh
  store <4 x float> %i.oi, ptr %i.b, align 16, !tbaa !34
  %i.oj = sitofp reassoc nsz arcp contract afn i32 %.val36.i to double
  %i.ok = call i32 @dt_dev_distort_transform_plus(ptr noundef %.val37.i, ptr noundef %.val38.i, double noundef %i.oj, i32 noundef 3, ptr noundef nonnull %i.b, i64 noundef 2) #16 ; 2 uses
  %.not.i54.i = icmp eq i32 %i.ok, 0
  %i.ol = load <2 x float>, ptr %i.b, align 16
  %i.om = load <2 x float>, ptr %i.ar, align 8
  %i.on = fsub reassoc nsz arcp contract afn <2 x float> %i.ol, %i.om
  %i.oo = fptosi <2 x float> %i.on to <2 x i32>
  %i.op = select i1 %.not.i54.i, <2 x i32> zeroinitializer, <2 x i32> %i.oo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %masks_get_delta.exit

bb.v:                                             ; preds = %bb.u
  %i.oq = and i32 %i.mx, 32
  %.not28.i = icmp eq i32 %i.oq, 0
  br i1 %.not28.i, label %masks_get_delta.exit.thread, label %masks_point_calc_delta.exit59.i

masks_point_calc_delta.exit59.i:                  ; preds = %bb.v
  %i.or = load ptr, ptr %i.ba, align 8, !tbaa !37
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !41
  %i.ot = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %.val.i = load i32, ptr %i.al, align 16, !tbaa !192
  %.val29.i = load ptr, ptr %i.ak, align 8, !tbaa !28
  %.val30.i = load ptr, ptr %i.s, align 8, !tbaa !81 ; 2 uses
  %i.ou = getelementptr i8, ptr %.val30.i, i64 144
  %i.ov = load <2 x float>, ptr %i.os, align 4, !tbaa !34
  %i.ow = load <2 x float>, ptr %i.ot, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.ox = load <2 x i32>, ptr %i.ou, align 16, !tbaa !38
  %i.oy = sitofp <2 x i32> %i.ox to <2 x float>
  %i.oz = insertelement <2 x float> poison, float %i.mm, i64 0
  %i.pa = shufflevector <2 x float> %i.oz, <2 x float> poison, <4 x i32> zeroinitializer
  %i.pb = shufflevector <2 x float> %i.oy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.pc = fmul reassoc nsz arcp contract afn <4 x float> %i.pa, %i.pb
  %i.pd = shufflevector <2 x float> %i.ov, <2 x float> %i.ow, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.pe = fmul reassoc nsz arcp contract afn <4 x float> %i.pc, %i.pd
  store <4 x float> %i.pe, ptr %i.a, align 16, !tbaa !34
  %i.pf = sitofp reassoc nsz arcp contract afn i32 %.val.i to double
  %i.pg = call i32 @dt_dev_distort_transform_plus(ptr noundef %.val29.i, ptr noundef %.val30.i, double noundef %i.pf, i32 noundef 3, ptr noundef nonnull %i.a, i64 noundef 2) #16 ; 2 uses
  %.not.i58.i = icmp eq i32 %i.pg, 0
  %i.ph = load <2 x float>, ptr %i.a, align 16
  %i.pi = load <2 x float>, ptr %i.as, align 8
  %i.pj = fsub reassoc nsz arcp contract afn <2 x float> %i.ph, %i.pi
  %i.pk = fptosi <2 x float> %i.pj to <2 x i32>
  %i.pl = select i1 %.not.i58.i, <2 x i32> zeroinitializer, <2 x i32> %i.pk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %masks_get_delta.exit

masks_get_delta.exit:                             ; preds = %masks_point_calc_delta.exit.i, %masks_point_calc_delta.exit55.i, %masks_point_calc_delta.exit59.i
  %.0.i272 = phi i32 [ %i.no, %masks_point_calc_delta.exit.i ], [ %i.pg, %masks_point_calc_delta.exit59.i ], [ %i.ok, %masks_point_calc_delta.exit55.i ]
  %i.pm = phi <2 x i32> [ %i.nt, %masks_point_calc_delta.exit.i ], [ %i.pl, %masks_point_calc_delta.exit59.i ], [ %i.op, %masks_point_calc_delta.exit55.i ] ; 3 uses
  %.not250.not = icmp eq i32 %.0.i272, 0
  br i1 %.not250.not, label %masks_get_delta.exit.thread, label %bb.w

masks_get_delta.exit.thread:                      ; preds = %bb.v, %masks_get_delta.exit
  %i.pn = load ptr, ptr %i.i, align 8, !tbaa !200
  br label %.loopexit307

bb.w:                                             ; preds = %masks_get_delta.exit
  %i.po = icmp ne <2 x i32> %i.pm, zeroinitializer ; 2 uses
  %i.pp = extractelement <2 x i1> %i.po, i64 0
  %i.pq = extractelement <2 x i1> %i.po, i64 1
  %or.cond = select i1 %i.pp, i1 true, i1 %i.pq
  br i1 %or.cond, label %.preheader306, label %..loopexit307_crit_edge

..loopexit307_crit_edge:                          ; preds = %bb.w
  %.pre375 = load ptr, ptr %i.i, align 8, !tbaa !200
  br label %.loopexit307

.preheader306:                                    ; preds = %bb.w
  %i.pr = add i32 %i.mp, -1
  %i.ps = add i32 %i.pr, %i.mr                    ; 2 uses
  %.0223327 = add nsw i32 %i.mp, 1                ; 2 uses
  %i.pt = icmp slt i32 %.0223327, %i.ps
  %.pre376 = load ptr, ptr %i.i, align 8          ; 3 uses
  br i1 %i.pt, label %.lr.ph330, label %.loopexit307

.lr.ph330:                                        ; preds = %.preheader306
  %i.pu = load i32, ptr %i.ad, align 4, !tbaa !93 ; 2 uses
  %i.pv = add i32 %i.mt, -1
  %i.pw = add i32 %i.pv, %i.mv                    ; 2 uses
  %.0222324 = add i32 %i.mt, 1                    ; 2 uses
  %i.px = icmp sge i32 %.0222324, %i.pw
  %i.py = load i32, ptr %i.l, align 4
  %i.pz = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  %i.qa = extractelement <2 x i32> %i.pm, i64 0
  %i.qb = sext i32 %i.qa to i64                   ; 2 uses
  %i.qc = sext i32 %.0222324 to i64
  %i.qd = sext i32 %.0223327 to i64
  %i.qe = sext i32 %i.pu to i64                   ; 2 uses
  %i.qf = extractelement <2 x i32> %i.pm, i64 1   ; 2 uses
  %i.qg = sext i32 %i.qf to i64
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph330, %.loopexit303
  %indvars.iv363 = phi i64 [ %i.qd, %.lr.ph330 ], [ %indvars.iv.next364, %.loopexit303 ] ; 7 uses
  %i.qh = icmp slt i64 %indvars.iv363, %i.qe
  br i1 %i.qh, label %.loopexit303, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.qi = load i32, ptr %i.ae, align 4, !tbaa !94
  %i.qj = add nsw i32 %i.qi, %i.pu
  %i.qk = sext i32 %i.qj to i64
  %.not251 = icmp slt i64 %indvars.iv363, %i.qk
  br i1 %.not251, label %bb.z, label %.loopexit303

bb.z:                                             ; preds = %bb.y
  %i.ql = sub nsw i64 %indvars.iv363, %i.qg       ; 2 uses
  %i.qm = load i32, ptr %i.am, align 4, !tbaa !93 ; 3 uses
  %i.qn = sext i32 %i.qm to i64
  %i.qo = icmp slt i64 %i.ql, %i.qn
  br i1 %i.qo, label %.loopexit303, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.qp = load i32, ptr %i.an, align 4, !tbaa !94
  %i.qq = add nsw i32 %i.qp, %i.qm
  %i.qr = sext i32 %i.qq to i64
  %.not252 = icmp sge i64 %i.ql, %i.qr
  %brmerge338 = select i1 %.not252, i1 true, i1 %i.px
  br i1 %brmerge338, label %.loopexit303, label %.lr.ph326

.lr.ph326:                                        ; preds = %bb.aa
  %i.qs = load i32, ptr %5, align 4, !tbaa !95    ; 2 uses
  %i.qt = trunc i64 %indvars.iv363 to i32
  %i.qu = sub i32 %i.qt, %i.mp
  %i.qv = sitofp reassoc nsz arcp contract afn i32 %i.qu to float
  %i.qw = sub nsw i64 %indvars.iv363, %i.qe
  %i.qx = sext i32 %i.qs to i64                   ; 2 uses
  %i.qy = add i32 %i.qf, %i.qm
  %i.qz = trunc nsw i64 %indvars.iv363 to i32
  %i.ra = sub i32 %i.qz, %i.qy
  %i.rb = sext i32 %i.ra to i64
  br i1 %i.ap, label %.lr.ph326.split.us, label %.loopexit303

.lr.ph326.split.us:                               ; preds = %.lr.ph326, %..loopexit_crit_edge.us
  %indvars.iv358 = phi i64 [ %indvars.iv.next359, %..loopexit_crit_edge.us ], [ %i.qc, %.lr.ph326 ] ; 7 uses
  %i.rc = icmp slt i64 %indvars.iv358, %i.qx
  br i1 %i.rc, label %..loopexit_crit_edge.us, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph326.split.us
  %i.rd = load i32, ptr %i.af, align 4, !tbaa !96 ; 2 uses
  %i.re = add nsw i32 %i.rd, %i.qs
  %i.rf = sext i32 %i.re to i64
  %.not253.us = icmp slt i64 %indvars.iv358, %i.rf
  br i1 %.not253.us, label %bb.ac, label %..loopexit_crit_edge.us

bb.ac:                                            ; preds = %bb.ab
  %i.rg = sub nsw i64 %indvars.iv358, %i.qb       ; 2 uses
  %i.rh = load i32, ptr %4, align 4, !tbaa !95    ; 2 uses
  %i.ri = sext i32 %i.rh to i64                   ; 2 uses
  %i.rj = icmp slt i64 %i.rg, %i.ri
  br i1 %i.rj, label %..loopexit_crit_edge.us, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.rk = load i32, ptr %i.ao, align 4, !tbaa !96 ; 2 uses
  %i.rl = add nsw i32 %i.rk, %i.rh
  %i.rm = sext i32 %i.rl to i64
  %.not254.us = icmp slt i64 %i.rg, %i.rm
  br i1 %.not254.us, label %iter.check, label %..loopexit_crit_edge.us

iter.check:                                       ; preds = %bb.ad
  %i.rn = load float, ptr %i.ac, align 4, !tbaa !92 ; 2 uses
  %i.ro = fdiv reassoc nsz arcp contract afn float %i.qv, %i.rn
  %i.rp = fptosi float %i.ro to i32
  %i.rq = mul nsw i32 %i.py, %i.rp
  %i.rr = trunc i64 %indvars.iv358 to i32
  %i.rs = sub i32 %i.rr, %i.mt
  %i.rt = sitofp reassoc nsz arcp contract afn i32 %i.rs to float
  %i.ru = fdiv reassoc nsz arcp contract afn float %i.rt, %i.rn
  %i.rv = fptosi float %i.ru to i32
  %i.rw = add nsw i32 %i.rq, %i.rv
  %i.rx = sext i32 %i.rw to i64
  %i.ry = getelementptr inbounds [4 x i8], ptr %.pre376, i64 %i.rx
  %i.rz = load float, ptr %i.ry, align 4, !tbaa !34
  %i.sa = load float, ptr %i.pz, align 4, !tbaa !204
  %i.sb = fmul reassoc nsz arcp contract afn float %i.sa, %i.rz ; 7 uses
  %i.sc = sext i32 %i.rd to i64
  %i.sd = mul nuw nsw i64 %i.qw, %i.sc
  %i.se = sub nsw i64 %indvars.iv358, %i.qx
  %i.sf = add i64 %i.se, %i.sd                    ; 2 uses
  %i.sg = mul i64 %i.sf, %i.r
  %i.sh = getelementptr [4 x i8], ptr %3, i64 %i.sg ; 8 uses
  %i.si = sext i32 %i.rk to i64
  %i.sj = mul nsw i64 %i.si, %i.rb
  %i.sk = add nsw i64 %i.qb, %i.ri
  %i.sl = sub nsw i64 %indvars.iv358, %i.sk
  %i.sm = add nsw i64 %i.sl, %i.sj                ; 2 uses
  %i.sn = mul i64 %i.sm, %i.r
  %i.so = getelementptr [4 x i8], ptr %2, i64 %i.sn ; 8 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.sp = mul i64 %i.sf, %i.r
  %i.sq = add i64 %i.sp, %wide.trip.count
  %i.sr = shl i64 %i.sq, 2
  %i.ss = getelementptr i8, ptr %3, i64 %i.sr
  %i.st = mul i64 %i.sm, %i.r
  %i.su = add i64 %i.st, %wide.trip.count
  %i.sv = shl i64 %i.su, 2
  %i.sw = getelementptr i8, ptr %2, i64 %i.sv
  %bound0 = icmp ult ptr %i.sh, %i.sw
  %bound1 = icmp ult ptr %i.so, %i.ss
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check400, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.sb, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.sx = getelementptr [4 x i8], ptr %i.sh, i64 %index ; 5 uses
  %i.sy = getelementptr i8, ptr %i.sx, i64 32     ; 2 uses
  %i.sz = getelementptr i8, ptr %i.sx, i64 64     ; 2 uses
  %i.ta = getelementptr i8, ptr %i.sx, i64 96     ; 2 uses
  %wide.load = load <8 x float>, ptr %i.sx, align 4, !tbaa !34, !alias.scope !205, !noalias !206 ; 2 uses
  %wide.load401 = load <8 x float>, ptr %i.sy, align 4, !tbaa !34, !alias.scope !205, !noalias !206 ; 2 uses
  %wide.load402 = load <8 x float>, ptr %i.sz, align 4, !tbaa !34, !alias.scope !205, !noalias !206 ; 2 uses
  %wide.load403 = load <8 x float>, ptr %i.ta, align 4, !tbaa !34, !alias.scope !205, !noalias !206 ; 2 uses
  %i.tb = getelementptr [4 x i8], ptr %i.so, i64 %index ; 4 uses
  %i.tc = getelementptr i8, ptr %i.tb, i64 32
  %i.td = getelementptr i8, ptr %i.tb, i64 64
  %i.te = getelementptr i8, ptr %i.tb, i64 96
  %wide.load404 = load <8 x float>, ptr %i.tb, align 4, !tbaa !34, !alias.scope !206
  %wide.load405 = load <8 x float>, ptr %i.tc, align 4, !tbaa !34, !alias.scope !206
  %wide.load406 = load <8 x float>, ptr %i.td, align 4, !tbaa !34, !alias.scope !206
end_hunk_1
