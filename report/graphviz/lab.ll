Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/lab?download=true
inline.NumInlined: 20
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@LAB2RGB:bb.a
  %i.be = tail call double @llvm.fmuladd.f64(double %i.bd, double 1.055000e+00, double -5.500000e-02)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bf = fmul double %i.av, 1.292000e+01
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.033.i = phi double [ %i.be, %bb.h ], [ %i.bf, %bb.i ]
  %i.bg = fcmp ogt double %i.ax, 3.130800e-03
  br i1 %i.bg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bh = tail call double @pow(double noundef %i.ax, double noundef f0x3FDAAAAAAAAAAAAB) #18, !noalias !31
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.bh, double 1.055000e+00, double -5.500000e-02)
  br label %XYZ2RGB.exit

bb.l:                                             ; preds = %bb.j
  %i.bj = fmul double %i.ax, 1.292000e+01
  br label %XYZ2RGB.exit

XYZ2RGB.exit:                                     ; preds = %bb.k, %bb.l
  %.0.i = phi double [ %i.bi, %bb.k ], [ %i.bj, %bb.l ] ; 2 uses
  %i.bk = insertelement <2 x double> poison, double %.034.i, i64 0
  %i.bl = insertelement <2 x double> %i.bk, double %.033.i, i64 1 ; 2 uses
  %i.bm = fcmp olt <2 x double> %i.bl, zeroinitializer
  %i.bn = fcmp olt double %.0.i, 0.000000e+00
  %i.bo = select i1 %i.bn, double 0.000000e+00, double %.0.i
  %i.bp = fmul double %i.bo, 2.550000e+02         ; 2 uses
  %i.bq = fcmp ogt double %i.bp, 2.550000e+02
  %i.br = select i1 %i.bq, double 2.550000e+02, double %i.bp
  %i.bs = select <2 x i1> %i.bm, <2 x double> zeroinitializer, <2 x double> %i.bl
  %i.bt = fmul <2 x double> %i.bs, splat (double 2.550000e+02) ; 2 uses
  %i.bu = fcmp ogt <2 x double> %i.bt, splat (double 2.550000e+02)
  %i.bv = select <2 x i1> %i.bu, <2 x double> splat (double 2.550000e+02), <2 x double> %i.bt
  store <2 x double> %i.bv, ptr %0, align 8, !tbaa !21, !alias.scope !34
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.br, ptr %i.bw, align 8, !tbaa !12, !alias.scope !34
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @XYZ2RGB(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.rgb_struct) align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly byval(%struct.xyz_struct) align 8 captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load <2 x double>, ptr %1, align 8, !tbaa !21
  %i.b = fdiv <2 x double> %i.a, splat (double 1.000000e+02) ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load double, ptr %i.c, align 8, !tbaa !16
  %i.e = fdiv double %i.d, 1.000000e+02           ; 3 uses
  %i.f = extractelement <2 x double> %i.b, i64 1
  %i.g = extractelement <2 x double> %i.b, i64 0
  %i.h = shufflevector <2 x double> %i.b, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.i = fmul <2 x double> %i.h, <double -1.537200e+00, double 1.875800e+00>
  %i.j = shufflevector <2 x double> %i.b, <2 x double> poison, <2 x i32> zeroinitializer
  %i.k = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.j, <2 x double> <double 3.240600e+00, double f0xBFEF013A92A30553>, <2 x double> %i.i) ; 2 uses
  %i.l = extractelement <2 x double> %i.k, i64 0
  %i.m = tail call double @llvm.fmuladd.f64(double %i.e, double -4.986000e-01, double %i.l) ; 3 uses
  %i.n = extractelement <2 x double> %i.k, i64 1
  %i.o = tail call double @llvm.fmuladd.f64(double %i.e, double 4.150000e-02, double %i.n) ; 3 uses
  %i.p = fmul double %i.f, -2.040000e-01
  %i.q = tail call double @llvm.fmuladd.f64(double %i.g, double 5.570000e-02, double %i.p)
  %i.r = tail call double @llvm.fmuladd.f64(double %i.e, double 1.057000e+00, double %i.q) ; 3 uses
  %i.s = fcmp ogt double %i.m, 3.130800e-03
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = tail call double @pow(double noundef %i.m, double noundef f0x3FDAAAAAAAAAAAAB) #18
  %i.u = tail call double @llvm.fmuladd.f64(double %i.t, double 1.055000e+00, double -5.500000e-02)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.v = fmul double %i.m, 1.292000e+01
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.034 = phi double [ %i.u, %bb.b ], [ %i.v, %bb.c ]
  %i.w = fcmp ogt double %i.o, 3.130800e-03
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = tail call double @pow(double noundef %i.o, double noundef f0x3FDAAAAAAAAAAAAB) #18
  %i.y = tail call double @llvm.fmuladd.f64(double %i.x, double 1.055000e+00, double -5.500000e-02)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.z = fmul double %i.o, 1.292000e+01
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.033 = phi double [ %i.y, %bb.e ], [ %i.z, %bb.f ]
  %i.aa = fcmp ogt double %i.r, 3.130800e-03
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = tail call double @pow(double noundef %i.r, double noundef f0x3FDAAAAAAAAAAAAB) #18
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.ab, double 1.055000e+00, double -5.500000e-02)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ad = fmul double %i.r, 1.292000e+01
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0 = phi double [ %i.ac, %bb.h ], [ %i.ad, %bb.i ] ; 2 uses
  %i.ae = insertelement <2 x double> poison, double %.034, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %.033, i64 1 ; 2 uses
  %i.ag = fcmp olt <2 x double> %i.af, zeroinitializer
  %i.ah = fcmp olt double %.0, 0.000000e+00
  %i.ai = select i1 %i.ah, double 0.000000e+00, double %.0
  %i.aj = fmul double %i.ai, 2.550000e+02         ; 2 uses
  %i.ak = fcmp ogt double %i.aj, 2.550000e+02
  %i.al = select i1 %i.ak, double 2.550000e+02, double %i.aj
  %i.am = select <2 x i1> %i.ag, <2 x double> zeroinitializer, <2 x double> %i.af
  %i.an = fmul <2 x double> %i.am, splat (double 2.550000e+02) ; 2 uses
  %i.ao = fcmp ogt <2 x double> %i.an, splat (double 2.550000e+02)
  %i.ap = select <2 x i1> %i.ao, <2 x double> splat (double 2.550000e+02), <2 x double> %i.an
  store <2 x double> %i.ap, ptr %0, align 8, !tbaa !21, !alias.scope !37
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.al, ptr %i.aq, align 8, !tbaa !12, !alias.scope !37
  ret void
}

; Function Attrs: nofree nounwind uwtable
define noundef ptr @lab_gamut(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !40
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.a, i32 0)
  %spec.store.select1 = tail call i32 @llvm.smin.i32(i32 %i.c, i32 100) ; 4 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %spec.store.select, i32 %spec.store.select1) ; 3 uses
  %i.d = load i8, ptr @Verbose, align 1, !tbaa !41
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str, i32 noundef %spec.select, i32 noundef %spec.store.select1) #19 ; 0 uses
  %.pr = load i8, ptr @Verbose, align 1, !tbaa !41
  %.not39 = icmp eq i8 %.pr, 0
  br i1 %.not39, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.h = load i64, ptr @lab_gamut_data_size, align 8, !tbaa !45
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str.1, i64 noundef %i.h) #19 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c, %bb.b
  %i.j = sext i32 %spec.store.select1 to i64
  %i.k = sext i32 %spec.select to i64
  %i.l = sub nsw i64 %i.j, %i.k
  %i.m = mul nsw i64 %i.l, 196608
  %i.n = add nsw i64 %i.m, 196608                 ; 5 uses
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %.thread
  %i.o = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #20
  br label %gv_calloc.exit

bb.d:                                             ; preds = %.thread
  %mul.ov.i = icmp ugt i64 %i.n, 2305843009213693951
  br i1 %mul.ov.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.q = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.4, i64 noundef range(i64 -844424929738752, 844424930131969) %i.n, i64 noundef 8) #19 ; 0 uses
  tail call fastcc void @graphviz_exit() #21
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.r = tail call noalias ptr @calloc(i64 noundef range(i64 -844424929738752, 844424930131969) %i.n, i64 noundef 8) #20 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.g, label %gv_calloc.exit

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.u = shl nuw nsw i64 %i.n, 3
  %i.v = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.t, ptr noundef nonnull @.str.5, i64 noundef %i.u) #19 ; 0 uses
  tail call fastcc void @graphviz_exit() #21
  unreachable

gv_calloc.exit:                                   ; preds = %.thread.i, %bb.f
  %i.w = phi ptr [ %i.o, %.thread.i ], [ %i.r, %bb.f ] ; 2 uses
  store i32 0, ptr %1, align 4, !tbaa !40
  %i.x = load i64, ptr @lab_gamut_data_size, align 8, !tbaa !45 ; 2 uses
  %.not50 = icmp eq i64 %i.x, 0
  br i1 %.not50, label %._crit_edge, label %.lr.ph49

._crit_edge:                                      ; preds = %.loopexit, %gv_calloc.exit
  ret ptr %i.w

.lr.ph49:                                         ; preds = %gv_calloc.exit, %.loopexit
  %.promoted = phi i32 [ %.promoted52, %.loopexit ], [ 0, %gv_calloc.exit ] ; 3 uses
  %.03548 = phi i64 [ %i.bj, %.loopexit ], [ 0, %gv_calloc.exit ] ; 2 uses
  %.03747 = phi ptr [ %.2, %.loopexit ], [ %i.w, %gv_calloc.exit ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr @lab_gamut_data, i64 %.03548 ; 4 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !41    ; 2 uses
  %i.aa = sext i8 %i.z to i32                     ; 2 uses
  %.not40 = icmp sgt i32 %spec.select, %i.aa
  %.not41 = icmp slt i32 %spec.store.select1, %i.aa
  %or.cond = or i1 %.not40, %.not41
  br i1 %or.cond, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %.lr.ph49
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !41  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 3
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !41  ; 2 uses
  %2 = sext i8 %i.ae to i32                       ; 4 uses
  %.not4244 = icmp sgt i8 %i.ac, %i.ae
  br i1 %.not4244, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.af = sext i8 %i.ac to i32                    ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !41
  %i.ai = insertelement <2 x i8> poison, i8 %i.z, i64 0
  %i.aj = insertelement <2 x i8> %i.ai, i8 %i.ah, i64 1
  %i.ak = sitofp <2 x i8> %i.aj to <2 x double>   ; 5 uses
  %i.al = add nsw i32 %2, 1
  %i.am = sub nsw i32 %i.al, %i.af
  %i.an = sub nsw i32 %2, %i.af
  %xtraiter = and i32 %i.am, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %.046.prol = phi i32 [ %i.ar, %.prol.preheader ], [ %i.af, %.lr.ph ] ; 2 uses
  %.145.prol = phi ptr [ %i.aq, %.prol.preheader ], [ %.03747, %.lr.ph ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  store <2 x double> %i.ak, ptr %.145.prol, align 8, !tbaa !21
  %i.ao = sitofp i32 %.046.prol to double
  %i.ap = getelementptr inbounds nuw i8, ptr %.145.prol, i64 16
  store double %i.ao, ptr %i.ap, align 8, !tbaa !21
  %i.aq = getelementptr inbounds nuw i8, ptr %.145.prol, i64 24 ; 3 uses
  %i.ar = add nsw i32 %.046.prol, 1               ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !47

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %.lcssa60.unr = phi ptr [ poison, %.lr.ph ], [ %i.aq, %.prol.preheader ]
  %.046.unr = phi i32 [ %i.af, %.lr.ph ], [ %i.ar, %.prol.preheader ]
  %.145.unr = phi ptr [ %.03747, %.lr.ph ], [ %i.aq, %.prol.preheader ]
  %i.as = icmp ult i32 %i.an, 3
  br i1 %i.as, label %..loopexit_crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.046 = phi i32 [ %i.bi, %.lr.ph.new ], [ %.046.unr, %.prol.loopexit ] ; 5 uses
  %.145 = phi ptr [ %i.bh, %.lr.ph.new ], [ %.145.unr, %.prol.loopexit ] ; 9 uses
  store <2 x double> %i.ak, ptr %.145, align 8, !tbaa !21
  %i.at = sitofp i32 %.046 to double
  %i.au = getelementptr inbounds nuw i8, ptr %.145, i64 16
  store double %i.at, ptr %i.au, align 8, !tbaa !21
  %i.av = getelementptr inbounds nuw i8, ptr %.145, i64 24
  %i.aw = add nsw i32 %.046, 1
  store <2 x double> %i.ak, ptr %i.av, align 8, !tbaa !21
  %i.ax = sitofp i32 %i.aw to double
  %i.ay = getelementptr inbounds nuw i8, ptr %.145, i64 40
  store double %i.ax, ptr %i.ay, align 8, !tbaa !21
  %i.az = getelementptr inbounds nuw i8, ptr %.145, i64 48
  %i.ba = add nsw i32 %.046, 2
  store <2 x double> %i.ak, ptr %i.az, align 8, !tbaa !21
  %i.bb = sitofp i32 %i.ba to double
  %i.bc = getelementptr inbounds nuw i8, ptr %.145, i64 64
  store double %i.bb, ptr %i.bc, align 8, !tbaa !21
  %i.bd = getelementptr inbounds nuw i8, ptr %.145, i64 72
  %i.be = add nsw i32 %.046, 3                    ; 2 uses
  store <2 x double> %i.ak, ptr %i.bd, align 8, !tbaa !21
  %i.bf = sitofp i32 %i.be to double
  %i.bg = getelementptr inbounds nuw i8, ptr %.145, i64 88
  store double %i.bf, ptr %i.bg, align 8, !tbaa !21
  %i.bh = getelementptr inbounds nuw i8, ptr %.145, i64 96 ; 2 uses
  %i.bi = add nsw i32 %.046, 4
  %exitcond.not.3 = icmp eq i32 %i.be, %2
  br i1 %exitcond.not.3, label %..loopexit_crit_edge, label %.lr.ph.new, !llvm.loop !49

..loopexit_crit_edge:                             ; preds = %.lr.ph.new, %.prol.loopexit
  %.lcssa60 = phi ptr [ %.lcssa60.unr, %.prol.loopexit ], [ %i.bh, %.lr.ph.new ]
  %3 = add i32 %.promoted, 1
  %4 = add i32 %3, %2
  %5 = sub i32 %4, %i.af                          ; 2 uses
  store i32 %5, ptr %1, align 4, !tbaa !40
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %..loopexit_crit_edge, %.lr.ph49
  %.promoted52 = phi i32 [ %.promoted, %.lr.ph49 ], [ %5, %..loopexit_crit_edge ], [ %.promoted, %bb.h ]
  %.2 = phi ptr [ %.03747, %.lr.ph49 ], [ %.lcssa60, %..loopexit_crit_edge ], [ %.03747, %bb.h ]
  %i.bj = add nuw i64 %.03548, 4                  ; 2 uses
  %i.bk = icmp ult i64 %i.bj, %i.x
  br i1 %i.bk, label %.lr.ph49, label %._crit_edge, !llvm.loop !51
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define ptr @lab_gamut_quadtree(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = call ptr @lab_gamut(ptr noundef %0, ptr noundef nonnull %i.a) ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.a, align 4, !tbaa !40
  %i.d = tail call ptr @QuadTree_new_from_point_list(i32 noundef 3, i32 noundef %i.c, i32 noundef %1, ptr noundef nonnull %i.b) #18
  tail call void @free(ptr noundef nonnull %i.b) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret ptr %.0
}

declare ptr @QuadTree_new_from_point_list(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define noundef ptr @color_blend_rgb2lab(ptr noundef %0, i32 noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %2 = alloca %struct.rgb_struct, align 8         ; 6 uses
  %3 = alloca %struct.lab_struct, align 8         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.d = tail call ptr @color_palettes_get(ptr noundef %0) #18 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  %spec.select = select i1 %.not, ptr %0, ptr %i.d ; 2 uses
  %i.e = icmp slt i32 %1, 1
  br i1 %i.e, label %bb.o, label %.preheader137

.preheader137:                                    ; preds = %bb.a
  %i.f = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %spec.select, i32 noundef 44) #22 ; 2 uses
  %.not114138 = icmp eq ptr %i.f, null
  br i1 %.not114138, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader137, %.lr.ph
  %i.g = phi ptr [ %i.j, %.lr.ph ], [ %i.f, %.preheader137 ]
  %.0103139 = phi i32 [ %i.i, %.lr.ph ], [ 1, %.preheader137 ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.i = add nuw nsw i32 %.0103139, 1             ; 2 uses
  %i.j = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.h, i32 noundef 44) #22 ; 2 uses
  %.not114 = icmp eq ptr %i.j, null
  br i1 %.not114, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !52

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.k = zext nneg i32 %i.i to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader137
  %.0103.lcssa = phi i64 [ 1, %.preheader137 ], [ %i.k, %._crit_edge.loopexit ] ; 2 uses
  %i.l = tail call noalias ptr @calloc(i64 noundef range(i64 -844424929738752, 844424930131969) %.0103.lcssa, i64 noundef 24) #20 ; 13 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.b, label %gv_calloc.exit

bb.b:                                             ; preds = %._crit_edge
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.o = mul nuw nsw i64 %.0103.lcssa, 24
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.5, i64 noundef %i.o) #19 ; 0 uses
  tail call fastcc void @graphviz_exit() #21
  unreachable

gv_calloc.exit:                                   ; preds = %._crit_edge
  %i.q = getelementptr inbounds i8, ptr %spec.select, i64 -1
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %gv_calloc.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %gv_calloc.exit ] ; 3 uses
  %.1 = phi ptr [ %i.ac, %bb.d ], [ %i.q, %gv_calloc.exit ]
  %i.t = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 2 uses
  %i.u = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.t, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #18
  %.not115 = icmp eq i32 %i.u, 3
  br i1 %.not115, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = load i32, ptr %i.a, align 4, !tbaa !40
  %i.w = sitofp i32 %i.v to double
  store double %i.w, ptr %2, align 8, !tbaa !8
  %i.x = load i32, ptr %i.b, align 4, !tbaa !40
  %i.y = sitofp i32 %i.x to double
  store double %i.y, ptr %i.r, align 8, !tbaa !11
  %i.z = load i32, ptr %i.c, align 4, !tbaa !40
  %i.aa = sitofp i32 %i.z to double
  store double %i.aa, ptr %i.s, align 8, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %indvars.iv
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @RGB2LAB(ptr dead_on_unwind nonnull writable sret(%struct.lab_struct) align 8 %3, ptr noundef nonnull byval(%struct.rgb_struct) align 8 %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !53
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.ac = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.t, i32 noundef 44) #22 ; 2 uses
  %.not116 = icmp eq ptr %i.ac, null
  br i1 %.not116, label %bb.e, label %bb.c, !llvm.loop !54

bb.e:                                             ; preds = %bb.c, %bb.d
  %.2105.in = phi i64 [ %indvars.iv, %bb.c ], [ %indvars.iv.next, %bb.d ]
  %.2105 = trunc i64 %.2105.in to i32             ; 5 uses
  %i.ad = call i32 @llvm.smax.i32(i32 %.2105, i32 1)
  %i.ae = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.af = call noalias ptr @calloc(i64 noundef range(i64 -844424929738752, 844424930131969) %i.ae, i64 noundef 8) #20 ; 16 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.f, label %gv_calloc.exit120

bb.f:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.ai = shl nuw nsw i64 %i.ae, 3
  %i.aj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ah, ptr noundef nonnull @.str.5, i64 noundef %i.ai) #19 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

gv_calloc.exit120:                                ; preds = %bb.e
  %i.ak = add i32 %.2105, -1                      ; 5 uses
  %i.al = icmp sgt i32 %.2105, 1
  br i1 %i.al, label %.lr.ph141.preheader, label %._crit_edge145

.lr.ph141.preheader:                              ; preds = %gv_calloc.exit120
  %wide.trip.count = zext i32 %i.ak to i64        ; 5 uses
  %.sroa.0.0.copyload.pre = load double, ptr %i.l, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.4.0.copyload.pre = load double, ptr %.sroa.4.0..sroa_idx.phi.trans.insert, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.5.0.copyload.pre = load double, ptr %.sroa.5.0..sroa_idx.phi.trans.insert, align 8 ; 2 uses
  %min.iters.check = icmp eq i32 %.2105, 2
  br i1 %min.iters.check, label %.lr.ph141.preheader199, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph141.preheader
  %n.vec = and i64 %wide.trip.count, 2147483646   ; 3 uses
  %vector.recur.init = insertelement <2 x double> poison, double %.sroa.5.0.copyload.pre, i64 1
  %vector.recur.init192 = insertelement <2 x double> poison, double %.sroa.4.0.copyload.pre, i64 1
  %vector.recur.init194 = insertelement <2 x double> poison, double %.sroa.0.0.copyload.pre, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <2 x double> [ %vector.recur.init, %vector.ph ], [ %i.bh, %vector.body ]
  %vector.recur193 = phi <2 x double> [ %vector.recur.init192, %vector.ph ], [ %i.ba, %vector.body ]
  %vector.recur195 = phi <2 x double> [ %vector.recur.init194, %vector.ph ], [ %i.at, %vector.body ]
  %i.am = or disjoint i64 %index, 1               ; 2 uses
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.am ; 3 uses
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %index ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load double, ptr %i.an, align 8
  %i.ar = load double, ptr %i.ap, align 8         ; 2 uses
  %i.as = insertelement <2 x double> poison, double %i.aq, i64 0 ; 2 uses
  %i.at = insertelement <2 x double> %i.as, double %i.ar, i64 1 ; 2 uses
  %i.au = shufflevector <2 x double> %vector.recur195, <2 x double> %i.as, <2 x i32> <i32 1, i32 2>
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  %i.ax = load double, ptr %i.av, align 8
  %i.ay = load double, ptr %i.aw, align 8         ; 2 uses
  %i.az = insertelement <2 x double> poison, double %i.ax, i64 0 ; 2 uses
  %i.ba = insertelement <2 x double> %i.az, double %i.ay, i64 1 ; 2 uses
  %i.bb = shufflevector <2 x double> %vector.recur193, <2 x double> %i.az, <2 x i32> <i32 1, i32 2>
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  %i.be = load double, ptr %i.bc, align 8
  %i.bf = load double, ptr %i.bd, align 8         ; 2 uses
  %i.bg = insertelement <2 x double> poison, double %i.be, i64 0 ; 2 uses
  %i.bh = insertelement <2 x double> %i.bg, double %i.bf, i64 1 ; 2 uses
  %i.bi = shufflevector <2 x double> %vector.recur, <2 x double> %i.bg, <2 x i32> <i32 1, i32 2>
  %i.bj = fsub <2 x double> %i.au, %i.at          ; 2 uses
  %i.bk = fsub <2 x double> %i.bb, %i.ba          ; 2 uses
  %i.bl = fmul <2 x double> %i.bk, %i.bk
  %i.bm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.bj, <2 x double> %i.bl)
  %i.bn = fsub <2 x double> %i.bi, %i.bh          ; 2 uses
  %i.bo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bn, <2 x double> %i.bn, <2 x double> %i.bm)
  %i.bp = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.bo)
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.am
  store <2 x double> %i.bp, ptr %i.bq, align 8, !tbaa !21
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !55

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph144.preheader, label %.lr.ph141.preheader199
end_hunk_0
