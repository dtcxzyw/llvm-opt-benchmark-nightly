inline.NumInlined: 14
inline.NumDeleted: 8
begin_hunk_0_@main:bb.a
  %i.br = urem <4 x i32> %i.bq, splat (i32 13)
  %i.bs = icmp eq <4 x i32> %i.br, zeroinitializer
  %i.bt = urem <4 x i32> %i.bq, splat (i32 7)
  %i.bu = icmp eq <4 x i32> %i.bt, zeroinitializer
  %i.bv = or <4 x i1> %i.bs, %i.bu
  %i.bw = urem <4 x i32> %i.bq, splat (i32 11)
  %i.bx = icmp eq <4 x i32> %i.bw, zeroinitializer
  %i.by = or <4 x i1> %i.bx, %i.bv
  %i.bz = select <4 x i1> %i.by, <4 x i32> splat (i32 999), <4 x i32> %i.bn
  store <4 x i32> %i.bz, ptr %i.bo, align 4, !tbaa !4
  %index.next105 = add nuw i64 %index103, 4       ; 2 uses
  %vec.ind.next106 = add nuw nsw <4 x i64> %vec.ind104, splat (i64 4)
  %i.ca = icmp eq i64 %index.next105, 2800
  br i1 %i.ca, label %middle.block107, label %vector.body102, !llvm.loop !31

middle.block107:                                  ; preds = %vector.body102
  %indvars.iv.next28.i29 = add nuw nsw i64 %indvars.iv27.i22, 1 ; 2 uses
  %exitcond30.not.i30 = icmp eq i64 %indvars.iv.next28.i29, 2800
  br i1 %exitcond30.not.i30, label %.preheader34.i32.preheader, label %.preheader.i21, !llvm.loop !18

.preheader34.i32.preheader:                       ; preds = %middle.block107
  %scevgep109 = getelementptr i8, ptr %i.j, i64 31360000 ; 2 uses
  br label %.preheader34.i32

.preheader34.i32:                                 ; preds = %.preheader34.i32.preheader, %bb.e
  %indvars.iv43.i33 = phi i64 [ %indvars.iv.next44.i42, %bb.e ], [ 0, %.preheader34.i32.preheader ] ; 5 uses
  %i.cb = shl nuw nsw i64 %indvars.iv43.i33, 2    ; 2 uses
  %scevgep110 = getelementptr nuw i8, ptr %i.j, i64 %i.cb
  %i.cc = getelementptr i8, ptr %i.j, i64 %i.cb
  %scevgep111 = getelementptr i8, ptr %i.cc, i64 31348804
  %i.cd = mul nuw nsw i64 %indvars.iv43.i33, 11200 ; 2 uses
  %scevgep112 = getelementptr nuw i8, ptr %i.j, i64 %i.cd
  %i.ce = getelementptr i8, ptr %i.j, i64 %i.cd
  %scevgep113 = getelementptr i8, ptr %i.ce, i64 11200
  %i.cf = getelementptr inbounds nuw [11200 x i8], ptr %i.j, i64 %indvars.iv43.i33 ; 3 uses
  %bound0114 = icmp ult ptr %i.j, %scevgep111
  %bound1115 = icmp ult ptr %scevgep110, %scevgep109
  %found.conflict116 = and i1 %bound0114, %bound1115
  %bound0117 = icmp ult ptr %i.j, %scevgep113
  %bound1118 = icmp ult ptr %scevgep112, %scevgep109
  %found.conflict119 = and i1 %bound0117, %bound1118
  %conflict.rdx120 = or i1 %found.conflict116, %found.conflict119
  br label %.preheader.i34

.preheader.i34:                                   ; preds = %middle.block132, %.preheader34.i32
  %indvars.iv39.i35 = phi i64 [ 0, %.preheader34.i32 ], [ %indvars.iv.next40.i40, %middle.block132 ] ; 2 uses
  %i.cg = getelementptr inbounds nuw [11200 x i8], ptr %i.j, i64 %indvars.iv39.i35 ; 4 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv43.i33 ; 3 uses
  br i1 %conflict.rdx120, label %scalar.ph121, label %vector.ph122

vector.ph122:                                     ; preds = %.preheader.i34
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !4, !alias.scope !32
  %broadcast.splatinsert129 = insertelement <4 x i32> poison, i32 %i.ci, i64 0
  %broadcast.splat130 = shufflevector <4 x i32> %broadcast.splatinsert129, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body123

vector.body123:                                   ; preds = %vector.body123, %vector.ph122
  %index124 = phi i64 [ 0, %vector.ph122 ], [ %index.next131, %vector.body123 ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %index124 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 2 uses
  %wide.load125 = load <4 x i32>, ptr %i.cj, align 4, !tbaa !4, !alias.scope !35, !noalias !37
  %wide.load126 = load <4 x i32>, ptr %i.ck, align 4, !tbaa !4, !alias.scope !35, !noalias !37
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %index124 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %wide.load127 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !4, !alias.scope !39
  %wide.load128 = load <4 x i32>, ptr %i.cm, align 4, !tbaa !4, !alias.scope !39
  %i.cn = add nsw <4 x i32> %wide.load127, %broadcast.splat130
  %i.co = add nsw <4 x i32> %wide.load128, %broadcast.splat130
  %i.cp = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load125, <4 x i32> %i.cn)
  %i.cq = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load126, <4 x i32> %i.co)
  store <4 x i32> %i.cp, ptr %i.cj, align 4, !tbaa !4, !alias.scope !35, !noalias !37
  store <4 x i32> %i.cq, ptr %i.ck, align 4, !tbaa !4, !alias.scope !35, !noalias !37
  %index.next131 = add nuw i64 %index124, 8       ; 2 uses
  %i.cr = icmp eq i64 %index.next131, 2800
  br i1 %i.cr, label %middle.block132, label %vector.body123, !llvm.loop !40

scalar.ph121:                                     ; preds = %.preheader.i34, %scalar.ph121
  %indvars.iv.i36 = phi i64 [ %indvars.iv.next.i38.1, %scalar.ph121 ], [ 0, %.preheader.i34 ] ; 4 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv.i36 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !4
  %i.cu = load i32, ptr %i.ch, align 4, !tbaa !4
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.i36
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !4
  %i.cx = add nsw i32 %i.cw, %i.cu
  %..i37 = call i32 @llvm.smin.i32(i32 %i.ct, i32 %i.cx)
  store i32 %..i37, ptr %i.cs, align 4, !tbaa !4
  %indvars.iv.next.i38 = or disjoint i64 %indvars.iv.i36, 1 ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv.next.i38 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !4
  %i.da = load i32, ptr %i.ch, align 4, !tbaa !4
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.next.i38
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !4
  %i.dd = add nsw i32 %i.dc, %i.da
  %..i37.1 = call i32 @llvm.smin.i32(i32 %i.cz, i32 %i.dd)
  store i32 %..i37.1, ptr %i.cy, align 4, !tbaa !4
  %indvars.iv.next.i38.1 = add nuw nsw i64 %indvars.iv.i36, 2 ; 2 uses
  %exitcond.not.i39.1 = icmp eq i64 %indvars.iv.next.i38.1, 2800
  br i1 %exitcond.not.i39.1, label %middle.block132, label %scalar.ph121, !llvm.loop !41

middle.block132:                                  ; preds = %vector.body123, %scalar.ph121
  %indvars.iv.next40.i40 = add nuw nsw i64 %indvars.iv39.i35, 1 ; 2 uses
  %exitcond42.not.i41 = icmp eq i64 %indvars.iv.next40.i40, 2800
  br i1 %exitcond42.not.i41, label %bb.e, label %.preheader.i34, !llvm.loop !42

bb.e:                                             ; preds = %middle.block132
  %indvars.iv.next44.i42 = add nuw nsw i64 %indvars.iv43.i33, 1 ; 2 uses
  %exitcond46.not.i43 = icmp eq i64 %indvars.iv.next44.i42, 2800
  br i1 %exitcond46.not.i43, label %.preheader.i44, label %.preheader34.i32, !llvm.loop !43

.preheader.i44:                                   ; preds = %bb.e, %bb.g
  %indvars.iv39.i45 = phi i64 [ %indvars.iv.next40.i49, %bb.g ], [ 0, %bb.e ] ; 4 uses
  %i.de = getelementptr inbounds nuw [11200 x i8], ptr %i.d, i64 %indvars.iv39.i45 ; 5 uses
  %i.df = getelementptr inbounds nuw [11200 x i8], ptr %i.j, i64 %indvars.iv39.i45 ; 5 uses
  br label %bb.f

bb.f:                                             ; preds = %.critedge.i.4, %.preheader.i44
  %indvars.iv.i46 = phi i64 [ 0, %.preheader.i44 ], [ %indvars.iv.next.i47.4, %.critedge.i.4 ] ; 8 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i46
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !4  ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv.i46
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !4  ; 2 uses
  %.not.i = icmp eq i32 %i.dh, %i.dj
  br i1 %.not.i, label %.critedge.i, label %check_FP.exit.thread

check_FP.exit.thread:                             ; preds = %.critedge.i.3, %.critedge.i.2, %.critedge.i.1, %.critedge.i, %bb.f
  %indvars.iv.i46.lcssa = phi i64 [ %indvars.iv.i46, %bb.f ], [ %indvars.iv.next.i47, %.critedge.i ], [ %indvars.iv.next.i47.1, %.critedge.i.1 ], [ %indvars.iv.next.i47.2, %.critedge.i.2 ], [ %indvars.iv.next.i47.3, %.critedge.i.3 ]
  %.lcssa135 = phi i32 [ %i.dh, %bb.f ], [ %i.dr, %.critedge.i ], [ %i.dv, %.critedge.i.1 ], [ %i.dz, %.critedge.i.2 ], [ %i.ed, %.critedge.i.3 ]
  %.lcssa = phi i32 [ %i.dj, %bb.f ], [ %i.dt, %.critedge.i ], [ %i.dx, %.critedge.i.1 ], [ %i.eb, %.critedge.i.2 ], [ %i.ef, %.critedge.i.3 ]
  %i.dk = trunc nuw nsw i64 %indvars.iv39.i45 to i32 ; 2 uses
  %i.dl = trunc nuw nsw i64 %indvars.iv.i46.lcssa to i32 ; 2 uses
  %i.dm = sitofp i32 %.lcssa to double
  %i.dn = sitofp i32 %.lcssa135 to double
  %i.do = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.dp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.do, ptr noundef nonnull @.str.2, i32 noundef %i.dk, i32 noundef %i.dl, double noundef %i.dn, i32 noundef %i.dk, i32 noundef %i.dl, double noundef %i.dm, double noundef 1.000000e-05) #15 ; 0 uses
  br label %bb.j

.critedge.i:                                      ; preds = %bb.f
  %indvars.iv.next.i47 = add nuw nsw i64 %indvars.iv.i46, 1 ; 3 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next.i47
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !4  ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv.next.i47
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !4  ; 2 uses
  %.not.i.1 = icmp eq i32 %i.dr, %i.dt
  br i1 %.not.i.1, label %.critedge.i.1, label %check_FP.exit.thread

.critedge.i.1:                                    ; preds = %.critedge.i
  %indvars.iv.next.i47.1 = add nuw nsw i64 %indvars.iv.i46, 2 ; 3 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next.i47.1
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !4  ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv.next.i47.1
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !4  ; 2 uses
  %.not.i.2 = icmp eq i32 %i.dv, %i.dx
  br i1 %.not.i.2, label %.critedge.i.2, label %check_FP.exit.thread

.critedge.i.2:                                    ; preds = %.critedge.i.1
  %indvars.iv.next.i47.2 = add nuw nsw i64 %indvars.iv.i46, 3 ; 3 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next.i47.2
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !4  ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv.next.i47.2
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !4  ; 2 uses
  %.not.i.3 = icmp eq i32 %i.dz, %i.eb
  br i1 %.not.i.3, label %.critedge.i.3, label %check_FP.exit.thread

.critedge.i.3:                                    ; preds = %.critedge.i.2
  %indvars.iv.next.i47.3 = add nuw nsw i64 %indvars.iv.i46, 4 ; 3 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next.i47.3
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !4  ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv.next.i47.3
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !4  ; 2 uses
  %.not.i.4 = icmp eq i32 %i.ed, %i.ef
  br i1 %.not.i.4, label %.critedge.i.4, label %check_FP.exit.thread

.critedge.i.4:                                    ; preds = %.critedge.i.3
  %indvars.iv.next.i47.4 = add nuw nsw i64 %indvars.iv.i46, 5 ; 2 uses
  %exitcond.not.i48.4 = icmp eq i64 %indvars.iv.next.i47.4, 2800
  br i1 %exitcond.not.i48.4, label %bb.g, label %bb.f, !llvm.loop !44

bb.g:                                             ; preds = %.critedge.i.4
  %indvars.iv.next40.i49 = add nuw nsw i64 %indvars.iv39.i45, 1 ; 2 uses
  %exitcond42.not.i50 = icmp eq i64 %indvars.iv.next40.i49, 2800
  br i1 %exitcond42.not.i50, label %check_FP.exit, label %.preheader.i44, !llvm.loop !45

check_FP.exit:                                    ; preds = %bb.g
  %i.eg = call noalias dereferenceable_or_null(44801) ptr @malloc(i64 noundef 44801) #16 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 44800
  store i8 0, ptr %i.eh, align 1, !tbaa !46
  br label %.preheader.i51

.preheader.i51:                                   ; preds = %bb.i, %check_FP.exit
  %indvars.iv20.i = phi i64 [ 0, %check_FP.exit ], [ %indvars.iv.next21.i, %bb.i ] ; 2 uses
  %i.ei = getelementptr inbounds nuw [11200 x i8], ptr %i.j, i64 %indvars.iv20.i
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.preheader.i51
  %indvars.iv.i52 = phi i64 [ 0, %.preheader.i51 ], [ %indvars.iv.next.i53, %bb.h ] ; 3 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv.i52
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !4
  %i.el = sitofp i32 %i.ek to double
  %i.em = shl nuw nsw i64 %indvars.iv.i52, 4
  %i.en = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.em
  %i.eo = bitcast double %i.el to i64             ; 5 uses
  %i.ep = lshr i64 %i.eo, 56
  %i.eq = lshr i64 %i.eo, 48
  %i.er = lshr i64 %i.eo, 40
  %.sroa.0.5.extract.trunc.i.i.a = trunc nuw i64 %i.ep to i8
  %.sroa.0.4.extract.trunc.i.i = trunc i64 %i.eq to i8
  %i.es = trunc i64 %i.er to i8
  %2 = insertelement <4 x i64> poison, i64 %i.eo, i64 0
  %3 = shufflevector <4 x i64> %2, <4 x i64> poison, <4 x i32> zeroinitializer
  %4 = lshr <4 x i64> %3, <i64 8, i64 16, i64 24, i64 32>
  %5 = trunc <4 x i64> %4 to <4 x i8>
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.eo to i8
  %i.et = insertelement <8 x i8> poison, i8 %.sroa.0.0.extract.trunc.i.i, i64 0
  %6 = shufflevector <4 x i8> %5, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %7 = shufflevector <8 x i8> %i.et, <8 x i8> %6, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison>
  %i.eu = insertelement <8 x i8> %7, i8 %i.es, i64 5
  %i.ev = insertelement <8 x i8> %i.eu, i8 %.sroa.0.4.extract.trunc.i.i, i64 6
  %i.ew = insertelement <8 x i8> %i.ev, i8 %.sroa.0.5.extract.trunc.i.i.a, i64 7
  %i.ex = and <8 x i8> %i.ew, splat (i8 15)
  %i.ey = or disjoint <8 x i8> %i.ex, splat (i8 48)
  %i.ez = shufflevector <8 x i8> %i.ey, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %i.ez, ptr %i.en, align 1, !tbaa !46
  %indvars.iv.next.i53 = add nuw nsw i64 %indvars.iv.i52, 1 ; 2 uses
  %exitcond.not.i54 = icmp eq i64 %indvars.iv.next.i53, 2800
  br i1 %exitcond.not.i54, label %bb.i, label %bb.h, !llvm.loop !47

bb.i:                                             ; preds = %bb.h
  %i.fa = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.fb = call i32 @fputs(ptr noundef nonnull %i.eg, ptr noundef %i.fa) #13 ; 0 uses
  %indvars.iv.next21.i = add nuw nsw i64 %indvars.iv20.i, 1 ; 2 uses
  %exitcond23.not.i = icmp eq i64 %indvars.iv.next21.i, 2800
  br i1 %exitcond23.not.i, label %print_array.exit, label %.preheader.i51, !llvm.loop !48

print_array.exit:                                 ; preds = %bb.i
  call void @free(ptr noundef nonnull %i.eg) #12
  call void @free(ptr noundef %i.d) #12
  call void @free(ptr noundef nonnull %i.j) #12
  br label %bb.j

bb.j:                                             ; preds = %check_FP.exit.thread, %print_array.exit
  %.0 = phi i32 [ 0, %print_array.exit ], [ 1, %check_FP.exit.thread ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { cold }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }

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
!9 = !{!"double", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!14 = distinct !{!14, !15, !16, !17}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !15}
!19 = !{!20}
!20 = distinct !{!20, !21}
!21 = distinct !{!21, !"LVerDomain"}
!22 = !{!23}
!23 = distinct !{!23, !21}
!24 = !{!20, !25}
!25 = distinct !{!25, !21}
!26 = !{!25}
!27 = distinct !{!27, !15, !16, !17}
!28 = distinct !{!28, !15, !16}
!29 = distinct !{!29, !15}
!30 = distinct !{!30, !15}
!31 = distinct !{!31, !15, !16, !17}
!32 = !{!33}
!33 = distinct !{!33, !34}
!34 = distinct !{!34, !"LVerDomain"}
!35 = !{!36}
!36 = distinct !{!36, !34}
!37 = !{!33, !38}
!38 = distinct !{!38, !34}
!39 = !{!38}
!40 = distinct !{!40, !15, !16, !17}
!41 = distinct !{!41, !15, !16}
!42 = distinct !{!42, !15}
!43 = distinct !{!43, !15}
!44 = distinct !{!44, !15}
!45 = distinct !{!45, !15}
!46 = !{!6, !6, i64 0}
!47 = distinct !{!47, !15}
!48 = distinct !{!48, !15}
end_hunk_0
