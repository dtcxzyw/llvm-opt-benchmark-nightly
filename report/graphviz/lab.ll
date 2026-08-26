Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/lab?download=true
inline.NumInlined: 20
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@RGB2LAB:bb.a
  %i.ay = tail call double @pow(double noundef %i.aw, double noundef f0x3FD5555555555555) #18
  br label %PivotXYZ.exit10

bb.k:                                             ; preds = %PivotXYZ.exit
  %i.az = load double, ptr @XYZKappa, align 8, !tbaa !21
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.az, double %i.aw, double 1.600000e+01)
  %i.bb = fdiv double %i.ba, 1.160000e+02
  br label %PivotXYZ.exit10

PivotXYZ.exit10:                                  ; preds = %bb.j, %bb.k
  %.0.i9 = phi double [ %i.ay, %bb.j ], [ %i.bb, %bb.k ] ; 3 uses
  %i.bc = fdiv double %i.an, 1.088830e+02         ; 3 uses
  %i.bd = fcmp ogt double %i.bc, %i.ap
  br i1 %i.bd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %PivotXYZ.exit10
  %i.be = tail call double @pow(double noundef %i.bc, double noundef f0x3FD5555555555555) #18
  br label %PivotXYZ.exit12

bb.m:                                             ; preds = %PivotXYZ.exit10
  %i.bf = load double, ptr @XYZKappa, align 8, !tbaa !21
  %i.bg = tail call double @llvm.fmuladd.f64(double %i.bf, double %i.bc, double 1.600000e+01)
  %i.bh = fdiv double %i.bg, 1.160000e+02
  br label %PivotXYZ.exit12

PivotXYZ.exit12:                                  ; preds = %bb.l, %bb.m
  %.0.i11 = phi double [ %i.be, %bb.l ], [ %i.bh, %bb.m ]
  %i.bi = tail call double @llvm.fmuladd.f64(double %.0.i9, double 1.160000e+02, double -1.600000e+01) ; 2 uses
  %i.bj = fcmp olt double %i.bi, 0.000000e+00
  %i.bk = select i1 %i.bj, double 0.000000e+00, double %i.bi
  %i.bl = fsub double %.0.i, %.0.i9
  %i.bm = fmul double %i.bl, 5.000000e+02
  %i.bn = fsub double %.0.i9, %.0.i11
  %i.bo = fmul double %i.bn, 2.000000e+02
  store double %i.bk, ptr %0, align 8, !tbaa !17, !alias.scope !28
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.bm, ptr %i.bp, align 8, !tbaa !19, !alias.scope !28
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.bo, ptr %i.bq, align 8, !tbaa !20, !alias.scope !28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, errnomem: readwrite, target_mem: none) uwtable
define void @LAB2RGB_real_01(ptr nofree noundef captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %1 = alloca %struct.lab_struct, align 16        ; 5 uses
  %2 = alloca %struct.rgb_struct, align 16        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.a = load <2 x double>, ptr %0, align 8, !tbaa !21
  store <2 x double> %i.a, ptr %1, align 16, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load double, ptr %i.c, align 8, !tbaa !21
  store double %i.d, ptr %i.b, align 16, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @LAB2RGB(ptr dead_on_unwind nonnull writable sret(%struct.rgb_struct) align 8 %2, ptr noundef nonnull byval(%struct.lab_struct) align 8 %1)
  %i.e = load <2 x double>, ptr %2, align 16, !tbaa !21
  %i.f = fdiv <2 x double> %i.e, splat (double 2.550000e+02)
  store <2 x double> %i.f, ptr %0, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load double, ptr %i.g, align 16, !tbaa !12
  %i.i = fdiv double %i.h, 2.550000e+02
  store double %i.i, ptr %i.c, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, errnomem: readwrite, target_mem: none) uwtable
define void @LAB2RGB(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.rgb_struct) align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly byval(%struct.lab_struct) align 8 captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load <2 x double>, ptr %1, align 8, !tbaa !21 ; 2 uses
  %i.b = fadd <2 x double> %i.a, <double 1.600000e+01, double -0.000000e+00>
  %i.c = fdiv <2 x double> %i.b, <double 1.160000e+02, double 5.000000e+02> ; 4 uses
  %shift = shufflevector <2 x double> %i.c, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %shift, %i.c
  %i.d = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !20
  %i.g = tail call double @pow(double noundef %i.d, double noundef 3.000000e+00) #18 ; 2 uses
  %i.h = load double, ptr @XYZEpsilon, align 8, !tbaa !21 ; 3 uses
  %i.i = fcmp ogt double %i.g, %i.h
  %i.j = fadd double %i.d, f0xBFC1A7B9611A7B96
  %i.k = insertelement <2 x double> poison, double %i.f, i64 0
  %i.l = insertelement <2 x double> %i.k, double %i.j, i64 1
  %i.m = fdiv <2 x double> %i.l, <double 2.000000e+02, double f0x401F25E353F7CED9> ; 2 uses
  %foldExtExtBinop31 = fsub <2 x double> %i.c, %i.m
  %i.n = extractelement <2 x double> %foldExtExtBinop31, i64 0 ; 2 uses
  %i.o = extractelement <2 x double> %i.m, i64 1
  %.012 = select i1 %i.i, double %i.g, double %i.o
  %i.p = load double, ptr @XYZKappa, align 8, !tbaa !21 ; 2 uses
  %i.q = fmul double %i.h, %i.p
  %i.r = extractelement <2 x double> %i.a, i64 0  ; 2 uses
  %i.s = fcmp ogt double %i.r, %i.q
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = extractelement <2 x double> %i.c, i64 0
  %i.u = tail call double @pow(double noundef %i.t, double noundef 3.000000e+00) #18
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.v = fdiv double %i.r, %i.p
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.011 = phi double [ %i.u, %bb.b ], [ %i.v, %bb.c ]
  %i.w = tail call double @pow(double noundef %i.n, double noundef 3.000000e+00) #18 ; 2 uses
  %i.x = fcmp ogt double %i.w, %i.h
  %i.y = fadd double %i.n, f0xBFC1A7B9611A7B96
  %i.z = fmul double %.012, f0x4057C3020C49BA5E
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  %i.aa = insertelement <2 x double> poison, double %i.y, i64 0
  %i.ab = insertelement <2 x double> %i.aa, double %i.z, i64 1
  %i.ac = fdiv <2 x double> %i.ab, <double f0x401F25E353F7CED9, double 1.000000e+02> ; 3 uses
  %i.ad = extractelement <2 x double> %i.ac, i64 0
  %.0 = select i1 %i.x, double %i.w, double %i.ad
  %i.ae = insertelement <2 x double> poison, double %.011, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %.0, i64 1
  %i.ag = fmul <2 x double> %i.af, <double 1.000000e+02, double 1.088830e+02>
  %i.ah = fdiv <2 x double> %i.ag, splat (double 1.000000e+02) ; 4 uses
  %i.ai = extractelement <2 x double> %i.ah, i64 0
  %i.aj = extractelement <2 x double> %i.ah, i64 1 ; 2 uses
  %i.ak = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = fmul <2 x double> %i.ak, <double -1.537200e+00, double 1.875800e+00>
  %i.am = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.an = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> <double 3.240600e+00, double f0xBFEF013A92A30553>, <2 x double> %i.al) ; 2 uses
  %i.ao = extractelement <2 x double> %i.an, i64 0
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.aj, double -4.986000e-01, double %i.ao) ; 3 uses
  %i.aq = fmul double %i.ai, -2.040000e-01
  %i.ar = shufflevector <2 x double> %i.ah, <2 x double> %i.ac, <2 x i32> <i32 1, i32 3>
  %i.as = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.at = insertelement <2 x double> %i.as, double %i.aq, i64 1
  %i.au = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> <double 4.150000e-02, double 5.570000e-02>, <2 x double> %i.at) ; 2 uses
  %i.av = extractelement <2 x double> %i.au, i64 0 ; 3 uses
  %i.aw = extractelement <2 x double> %i.au, i64 1
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.aj, double 1.057000e+00, double %i.aw) ; 3 uses
  %i.ay = fcmp ogt double %i.ap, 3.130800e-03
  br i1 %i.ay, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.az = tail call double @pow(double noundef %i.ap, double noundef f0x3FDAAAAAAAAAAAAB) #18, !noalias !31
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.az, double 1.055000e+00, double -5.500000e-02)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.bb = fmul double %i.ap, 1.292000e+01
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.034.i = phi double [ %i.ba, %bb.e ], [ %i.bb, %bb.f ]
  %i.bc = fcmp ogt double %i.av, 3.130800e-03
  br i1 %i.bc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bd = tail call double @pow(double noundef %i.av, double noundef f0x3FDAAAAAAAAAAAAB) #18, !noalias !31
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
  %.promoted = phi i32 [ %.promoted52, %.loopexit ], [ 0, %gv_calloc.exit ] ; 4 uses
  %.03548 = phi ptr [ %.2, %.loopexit ], [ %i.w, %gv_calloc.exit ] ; 4 uses
  %.03747 = phi i64 [ %i.bo, %.loopexit ], [ 0, %gv_calloc.exit ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr @lab_gamut_data, i64 %.03747 ; 4 uses
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
  %.not4244 = icmp sgt i8 %i.ac, %i.ae
  br i1 %.not4244, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.af = sext i8 %i.ae to i32                    ; 3 uses
  %i.ag = sext i8 %i.ac to i32                    ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !41
  %i.aj = insertelement <2 x i8> poison, i8 %i.z, i64 0
  %i.ak = insertelement <2 x i8> %i.aj, i8 %i.ai, i64 1
  %i.al = sitofp <2 x i8> %i.ak to <2 x double>   ; 5 uses
  %i.am = add nsw i32 %i.af, 1
  %i.an = sub nsw i32 %i.am, %i.ag
  %i.ao = sub nsw i32 %i.af, %i.ag
  %xtraiter = and i32 %i.an, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %i.ap = phi i32 [ %i.at, %.prol.preheader ], [ %.promoted, %.lr.ph ]
  %.046.prol = phi i32 [ %i.au, %.prol.preheader ], [ %i.ag, %.lr.ph ] ; 2 uses
  %.145.prol = phi ptr [ %i.as, %.prol.preheader ], [ %.03548, %.lr.ph ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  store <2 x double> %i.al, ptr %.145.prol, align 8, !tbaa !21
  %i.aq = sitofp i32 %.046.prol to double
  %i.ar = getelementptr inbounds nuw i8, ptr %.145.prol, i64 16
  store double %i.aq, ptr %i.ar, align 8, !tbaa !21
  %i.as = getelementptr inbounds nuw i8, ptr %.145.prol, i64 24 ; 3 uses
  %i.at = add nsw i32 %i.ap, 1                    ; 3 uses
  %i.au = add nsw i32 %.046.prol, 1               ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !47

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %.lcssa60.unr = phi ptr [ poison, %.lr.ph ], [ %i.as, %.prol.preheader ]
  %.lcssa.unr = phi i32 [ poison, %.lr.ph ], [ %i.at, %.prol.preheader ]
  %.unr = phi i32 [ %.promoted, %.lr.ph ], [ %i.at, %.prol.preheader ]
  %.046.unr = phi i32 [ %i.ag, %.lr.ph ], [ %i.au, %.prol.preheader ]
  %.145.unr = phi ptr [ %.03548, %.lr.ph ], [ %i.as, %.prol.preheader ]
  %i.av = icmp ult i32 %i.ao, 3
  br i1 %i.av, label %..loopexit_crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %i.aw = phi i32 [ %i.bm, %.lr.ph.new ], [ %.unr, %.prol.loopexit ]
  %.046 = phi i32 [ %i.bn, %.lr.ph.new ], [ %.046.unr, %.prol.loopexit ] ; 5 uses
  %.145 = phi ptr [ %i.bl, %.lr.ph.new ], [ %.145.unr, %.prol.loopexit ] ; 9 uses
  store <2 x double> %i.al, ptr %.145, align 8, !tbaa !21
  %i.ax = sitofp i32 %.046 to double
  %i.ay = getelementptr inbounds nuw i8, ptr %.145, i64 16
  store double %i.ax, ptr %i.ay, align 8, !tbaa !21
  %i.az = getelementptr inbounds nuw i8, ptr %.145, i64 24
  %i.ba = add nsw i32 %.046, 1
  store <2 x double> %i.al, ptr %i.az, align 8, !tbaa !21
  %i.bb = sitofp i32 %i.ba to double
  %i.bc = getelementptr inbounds nuw i8, ptr %.145, i64 40
  store double %i.bb, ptr %i.bc, align 8, !tbaa !21
  %i.bd = getelementptr inbounds nuw i8, ptr %.145, i64 48
  %i.be = add nsw i32 %.046, 2
  store <2 x double> %i.al, ptr %i.bd, align 8, !tbaa !21
  %i.bf = sitofp i32 %i.be to double
  %i.bg = getelementptr inbounds nuw i8, ptr %.145, i64 64
  store double %i.bf, ptr %i.bg, align 8, !tbaa !21
  %i.bh = getelementptr inbounds nuw i8, ptr %.145, i64 72
  %i.bi = add nsw i32 %.046, 3                    ; 2 uses
  store <2 x double> %i.al, ptr %i.bh, align 8, !tbaa !21
  %i.bj = sitofp i32 %i.bi to double
  %i.bk = getelementptr inbounds nuw i8, ptr %.145, i64 88
  store double %i.bj, ptr %i.bk, align 8, !tbaa !21
  %i.bl = getelementptr inbounds nuw i8, ptr %.145, i64 96 ; 2 uses
  %i.bm = add nsw i32 %i.aw, 4                    ; 2 uses
  %i.bn = add nsw i32 %.046, 4
  %exitcond.not.3 = icmp eq i32 %i.bi, %i.af
  br i1 %exitcond.not.3, label %..loopexit_crit_edge, label %.lr.ph.new, !llvm.loop !49

..loopexit_crit_edge:                             ; preds = %.lr.ph.new, %.prol.loopexit
  %.lcssa60 = phi ptr [ %.lcssa60.unr, %.prol.loopexit ], [ %i.bl, %.lr.ph.new ]
  %.lcssa = phi i32 [ %.lcssa.unr, %.prol.loopexit ], [ %i.bm, %.lr.ph.new ] ; 2 uses
  store i32 %.lcssa, ptr %1, align 4, !tbaa !40
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %..loopexit_crit_edge, %.lr.ph49
  %.promoted52 = phi i32 [ %.promoted, %.lr.ph49 ], [ %.lcssa, %..loopexit_crit_edge ], [ %.promoted, %bb.h ]
  %.2 = phi ptr [ %.03548, %.lr.ph49 ], [ %.lcssa60, %..loopexit_crit_edge ], [ %.03548, %bb.h ]
  %i.bo = add nuw i64 %.03747, 4                  ; 2 uses
  %i.bp = icmp ult i64 %i.bo, %i.x
  br i1 %i.bp, label %.lr.ph49, label %._crit_edge, !llvm.loop !51
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
  %.096139 = phi i32 [ %i.i, %.lr.ph ], [ 1, %.preheader137 ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.i = add nuw nsw i32 %.096139, 1              ; 2 uses
  %i.j = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.h, i32 noundef 44) #22 ; 2 uses
  %.not114 = icmp eq ptr %i.j, null
  br i1 %.not114, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !52

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.k = zext nneg i32 %i.i to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader137
  %.096.lcssa = phi i64 [ 1, %.preheader137 ], [ %i.k, %._crit_edge.loopexit ] ; 2 uses
  %i.l = tail call noalias ptr @calloc(i64 noundef range(i64 -844424929738752, 844424930131969) %.096.lcssa, i64 noundef 24) #20 ; 13 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.b, label %gv_calloc.exit

bb.b:                                             ; preds = %._crit_edge
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.o = mul nuw nsw i64 %.096.lcssa, 24
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
  %.198 = phi ptr [ %i.ac, %bb.d ], [ %i.q, %gv_calloc.exit ]
  %i.t = getelementptr inbounds nuw i8, ptr %.198, i64 1 ; 2 uses
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
  call void @RGB2LAB(ptr dead_on_unwind nonnull writable sret(%struct.lab_struct) align 8 %i.ab, ptr noundef nonnull byval(%struct.rgb_struct) align 8 %2)
  %i.ac = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.t, i32 noundef 44) #22 ; 2 uses
  %.not116 = icmp eq ptr %i.ac, null
  br i1 %.not116, label %bb.e, label %bb.c, !llvm.loop !53

bb.e:                                             ; preds = %bb.c, %bb.d
  %.2.in = phi i64 [ %indvars.iv, %bb.c ], [ %indvars.iv.next, %bb.d ]
  %.2 = trunc i64 %.2.in to i32                   ; 5 uses
  %i.ad = call i32 @llvm.smax.i32(i32 %.2, i32 1)
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
  %i.ak = add i32 %.2, -1                         ; 5 uses
  %i.al = icmp sgt i32 %.2, 1
  br i1 %i.al, label %.lr.ph141.preheader, label %._crit_edge145

.lr.ph141.preheader:                              ; preds = %gv_calloc.exit120
  %wide.trip.count = zext i32 %i.ak to i64        ; 5 uses
  %.sroa.0.0.copyload.pre = load double, ptr %i.l, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.4.0.copyload.pre = load double, ptr %.sroa.4.0..sroa_idx.phi.trans.insert, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.5.0.copyload.pre = load double, ptr %.sroa.5.0..sroa_idx.phi.trans.insert, align 8 ; 2 uses
  %min.iters.check = icmp eq i32 %.2, 2
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
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph144.preheader, label %.lr.ph141.preheader199

.lr.ph141.preheader199:                           ; preds = %.lr.ph141.preheader, %middle.block
  %.sroa.5.0.copyload.ph = phi double [ %.sroa.5.0.copyload.pre, %.lr.ph141.preheader ], [ %i.bf, %middle.block ]
  %.sroa.4.0.copyload.ph = phi double [ %.sroa.4.0.copyload.pre, %.lr.ph141.preheader ], [ %i.ay, %middle.block ]
  %.sroa.0.0.copyload.ph = phi double [ %.sroa.0.0.copyload.pre, %.lr.ph141.preheader ], [ %i.ar, %middle.block ]
  %indvars.iv159.ph = phi i64 [ 0, %.lr.ph141.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph141

.lr.ph144.preheader:                              ; preds = %.lr.ph141, %middle.block
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.bs = add nsw i32 %.2, -2
  %i.bt = icmp ult i32 %i.bs, 3
  br i1 %i.bt, label %.lr.ph144.epil.preheader, label %.lr.ph144.preheader.new

.lr.ph144.preheader.new:                          ; preds = %.lr.ph144.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %.lr.ph144

.lr.ph141:                                        ; preds = %.lr.ph141.preheader199, %.lr.ph141
  %.sroa.5.0.copyload = phi double [ %.sroa.5126.0.copyload, %.lr.ph141 ], [ %.sroa.5.0.copyload.ph, %.lr.ph141.preheader199 ]
  %.sroa.4.0.copyload = phi double [ %.sroa.4125.0.copyload, %.lr.ph141 ], [ %.sroa.4.0.copyload.ph, %.lr.ph141.preheader199 ]
  %.sroa.0.0.copyload = phi double [ %.sroa.0124.0.copyload, %.lr.ph141 ], [ %.sroa.0.0.copyload.ph, %.lr.ph141.preheader199 ]
  %indvars.iv159 = phi i64 [ %indvars.iv.next160, %.lr.ph141 ], [ %indvars.iv159.ph, %.lr.ph141.preheader199 ]
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1 ; 4 uses
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %indvars.iv.next160 ; 3 uses
  %.sroa.0124.0.copyload = load double, ptr %i.bu, align 8 ; 2 uses
  %.sroa.4125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.sroa.4125.0.copyload = load double, ptr %.sroa.4125.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %.sroa.5126.0.copyload = load double, ptr %.sroa.5126.0..sroa_idx, align 8 ; 2 uses
  %i.bv = fsub double %.sroa.0.0.copyload, %.sroa.0124.0.copyload ; 2 uses
  %i.bw = fsub double %.sroa.4.0.copyload, %.sroa.4125.0.copyload ; 2 uses
  %i.bx = fmul double %i.bw, %i.bw
  %i.by = call double @llvm.fmuladd.f64(double %i.bv, double %i.bv, double %i.bx)
  %i.bz = fsub double %.sroa.5.0.copyload, %.sroa.5126.0.copyload ; 2 uses
  %i.ca = call double @llvm.fmuladd.f64(double %i.bz, double %i.bz, double %i.by)
  %sqrt.i = call double @llvm.sqrt.f64(double %i.ca)
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next160
  store double %sqrt.i, ptr %i.cb, align 8, !tbaa !21
  %exitcond.not = icmp eq i64 %indvars.iv.next160, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph144.preheader, label %.lr.ph141, !llvm.loop !57

.lr.ph144:                                        ; preds = %.lr.ph144, %.lr.ph144.preheader.new
  %i.cc = phi double [ 0.000000e+00, %.lr.ph144.preheader.new ], [ %i.cr, %.lr.ph144 ]
  %indvars.iv163 = phi i64 [ 0, %.lr.ph144.preheader.new ], [ %indvars.iv.next164.3, %.lr.ph144 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph144.preheader.new ], [ %niter.next.3, %.lr.ph144 ]
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv163
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !21
  %i.cg = fadd double %i.cc, %i.cf                ; 2 uses
  store double %i.cg, ptr %i.ce, align 8, !tbaa !21
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv163
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 2 uses
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !21
  %i.ck = fadd double %i.cg, %i.cj                ; 2 uses
  store double %i.ck, ptr %i.ci, align 8, !tbaa !21
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv163
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24 ; 2 uses
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !21
  %i.co = fadd double %i.ck, %i.cn                ; 2 uses
  store double %i.co, ptr %i.cm, align 8, !tbaa !21
  %indvars.iv.next164.3 = add nuw nsw i64 %indvars.iv163, 4 ; 3 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next164.3 ; 2 uses
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !21
  %i.cr = fadd double %i.co, %i.cq                ; 3 uses
  store double %i.cr, ptr %i.cp, align 8, !tbaa !21
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge145.loopexit.unr-lcssa, label %.lr.ph144, !llvm.loop !58

._crit_edge145.loopexit.unr-lcssa:                ; preds = %.lr.ph144
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge145, label %.lr.ph144.epil.preheader

.lr.ph144.epil.preheader:                         ; preds = %._crit_edge145.loopexit.unr-lcssa, %.lr.ph144.preheader
  %.epil.init = phi double [ 0.000000e+00, %.lr.ph144.preheader ], [ %i.cr, %._crit_edge145.loopexit.unr-lcssa ]
  %indvars.iv163.epil.init = phi i64 [ 0, %.lr.ph144.preheader ], [ %indvars.iv.next164.3, %._crit_edge145.loopexit.unr-lcssa ]
  %lcmp.mod203 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod203)
  br label %.lr.ph144.epil

.lr.ph144.epil:                                   ; preds = %.lr.ph144.epil, %.lr.ph144.epil.preheader
  %i.cs = phi double [ %.epil.init, %.lr.ph144.epil.preheader ], [ %i.cv, %.lr.ph144.epil ]
  %indvars.iv163.epil = phi i64 [ %indvars.iv163.epil.init, %.lr.ph144.epil.preheader ], [ %indvars.iv.next164.epil, %.lr.ph144.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph144.epil.preheader ], [ %epil.iter.next, %.lr.ph144.epil ]
  %indvars.iv.next164.epil = add nuw nsw i64 %indvars.iv163.epil, 1 ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next164.epil ; 2 uses
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !21
  %i.cv = fadd double %i.cs, %i.cu                ; 2 uses
  store double %i.cv, ptr %i.ct, align 8, !tbaa !21
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge145, label %.lr.ph144.epil, !llvm.loop !59

._crit_edge145:                                   ; preds = %._crit_edge145.loopexit.unr-lcssa, %.lr.ph144.epil, %gv_calloc.exit120
  %i.cw = load i8, ptr @Verbose, align 1, !tbaa !41
  %.not117 = icmp eq i8 %i.cw, 0
  br i1 %.not117, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge145
  %i.cx = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.cy = sext i32 %i.ak to i64
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.cy
  %i.da = load double, ptr %i.cz, align 8, !tbaa !21
  %i.db = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cx, ptr noundef nonnull @.str.3, double noundef %i.da) #19 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge145, %bb.g
  %i.dc = mul nuw nsw i32 %1, 3
  %i.dd = zext nneg i32 %i.dc to i64              ; 2 uses
  %i.de = call noalias ptr @calloc(i64 noundef range(i64 -844424929738752, 844424930131969) %i.dd, i64 noundef 8) #20 ; 5 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %bb.i, label %gv_calloc.exit123

bb.i:                                             ; preds = %bb.h
  %i.dg = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.dh = shl nuw nsw i64 %i.dd, 3
  %i.di = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dg, ptr noundef nonnull @.str.5, i64 noundef %i.dh) #19 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

gv_calloc.exit123:                                ; preds = %bb.h
  %i.dj = icmp eq i32 %1, 1
  br i1 %i.dj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %gv_calloc.exit123
  %i.dk = load <2 x double>, ptr %i.l, align 8, !tbaa !21
  store <2 x double> %i.dk, ptr %i.de, align 8, !tbaa !21
  %i.dl = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !20
  %i.dn = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store double %i.dm, ptr %i.dn, align 8, !tbaa !21
  br label %.loopexit

bb.k:                                             ; preds = %gv_calloc.exit123
  %i.do = sext i32 %i.ak to i64                   ; 2 uses
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.do
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !21
  %i.dr = add nsw i32 %1, -1
  %i.ds = uitofp nneg i32 %i.dr to double
  %i.dt = fdiv double %i.dq, %i.ds                ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %indvars.iv169 = phi i64 [ %indvars.iv.next170, %bb.l ], [ 0, %bb.k ] ; 3 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv169
  %i.dv = load double, ptr %i.du, align 8, !tbaa !21
  %i.dw = fcmp olt double %i.dv, %i.dt
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1
  br i1 %i.dw, label %bb.l, label %.lr.ph157.preheader, !llvm.loop !60

.lr.ph157.preheader:                              ; preds = %bb.l
  %i.dx = trunc nuw nsw i64 %indvars.iv169 to i32
  br label %.lr.ph157

.lr.ph157:                                        ; preds = %.lr.ph157.preheader, %.critedge
  %.0156 = phi ptr [ %i.ev, %.critedge ], [ %i.de, %.lr.ph157.preheader ] ; 3 uses
  %.2101155 = phi i32 [ %i.fg, %.critedge ], [ 0, %.lr.ph157.preheader ]
  %.0102154 = phi double [ %i.eu, %.critedge ], [ 0.000000e+00, %.lr.ph157.preheader ] ; 2 uses
  %.0103153 = phi i32 [ %.1104, %.critedge ], [ 0, %.lr.ph157.preheader ] ; 2 uses
  %.1106152 = phi i32 [ %.2107.lcssa, %.critedge ], [ %i.dx, %.lr.ph157.preheader ] ; 4 uses
  %i.dy = sext i32 %.0103153 to i64               ; 2 uses
  %i.dz = getelementptr inbounds [24 x i8], ptr %i.l, i64 %i.dy ; 2 uses
  %i.ea = sext i32 %.1106152 to i64               ; 3 uses
  %i.eb = getelementptr inbounds [24 x i8], ptr %i.l, i64 %i.ea ; 2 uses
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.dy
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !21 ; 2 uses
  %i.ee = fsub double %.0102154, %i.ed
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ea
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !21 ; 2 uses
  %i.eh = fsub double %i.eg, %i.ed                ; 2 uses
  %i.ei = fcmp olt double %i.eh, 1.000000e-03
  %i.ej = select i1 %i.ei, double 1.000000e-03, double %i.eh
  %i.ek = fdiv double %i.ee, %i.ej                ; 2 uses
  %.sroa.5132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %.sroa.5132.0.copyload = load double, ptr %.sroa.5132.0..sroa_idx, align 8
  %.sroa.5129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %.sroa.5129.0.copyload = load double, ptr %.sroa.5129.0..sroa_idx, align 8 ; 2 uses
  %i.el = load <2 x double>, ptr %i.eb, align 8
  %i.em = load <2 x double>, ptr %i.dz, align 8   ; 2 uses
  %i.en = fsub <2 x double> %i.el, %i.em
  %i.eo = insertelement <2 x double> poison, double %i.ek, i64 0
  %i.ep = shufflevector <2 x double> %i.eo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ep, <2 x double> %i.en, <2 x double> %i.em)
  store <2 x double> %i.eq, ptr %.0156, align 8, !tbaa !21
  %i.er = fsub double %.sroa.5132.0.copyload, %.sroa.5129.0.copyload
  %i.es = call double @llvm.fmuladd.f64(double %i.ek, double %i.er, double %.sroa.5129.0.copyload)
  %i.et = getelementptr inbounds nuw i8, ptr %.0156, i64 16
  store double %i.es, ptr %i.et, align 8, !tbaa !21
  %i.eu = fadd double %i.dt, %.0102154            ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.0156, i64 24
  %i.ew = fcmp ogt double %i.eu, %i.eg
  %.1104 = select i1 %i.ew, i32 %.1106152, i32 %.0103153 ; 2 uses
  %i.ex = icmp slt i32 %.1106152, %i.ak
  br i1 %i.ex, label %.lr.ph148, label %.critedge

.lr.ph148:                                        ; preds = %.lr.ph157
  %i.ey = sext i32 %.1104 to i64
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ey
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !21
  %i.fb = fadd double %i.dt, %i.fa
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph148, %bb.n
  %indvars.iv173 = phi i64 [ %i.ea, %.lr.ph148 ], [ %indvars.iv.next174, %bb.n ] ; 3 uses
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.af, i64 %indvars.iv173
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !21
  %i.fe = fcmp olt double %i.fd, %i.fb
  br i1 %i.fe, label %bb.n, label %.critedge.loopexit.split.loop.exit

bb.n:                                             ; preds = %bb.m
  %indvars.iv.next174 = add nsw i64 %indvars.iv173, 1 ; 2 uses
  %exitcond177.not = icmp eq i64 %indvars.iv.next174, %i.do
  br i1 %exitcond177.not, label %.critedge, label %bb.m, !llvm.loop !61

.critedge.loopexit.split.loop.exit:               ; preds = %bb.m
  %i.ff = trunc nsw i64 %indvars.iv173 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.n, %.critedge.loopexit.split.loop.exit, %.lr.ph157
  %.2107.lcssa = phi i32 [ %.1106152, %.lr.ph157 ], [ %i.ff, %.critedge.loopexit.split.loop.exit ], [ %i.ak, %bb.n ]
  %i.fg = add nuw nsw i32 %.2101155, 1            ; 2 uses
  %exitcond178.not = icmp eq i32 %i.fg, %1
  br i1 %exitcond178.not, label %.loopexit, label %.lr.ph157, !llvm.loop !62

.loopexit:                                        ; preds = %.critedge, %bb.j
  call void @free(ptr noundef nonnull %i.af) #18
  call void @free(ptr noundef %i.l) #18
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %.loopexit
  %.094 = phi ptr [ %i.de, %.loopexit ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret ptr %.094
}

declare ptr @color_palettes_get(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @graphviz_exit() unnamed_addr #13 {
bb.a:
  tail call void @exit(i32 noundef 1) #23
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold inlinehint nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(0,1) }
attributes #21 = { noreturn }
attributes #22 = { nounwind willreturn memory(read) }
attributes #23 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"rgb_struct", !10, i64 0, !10, i64 8, !10, i64 16}
!10 = !{!"double", !6, i64 0}
!11 = !{!9, !10, i64 8}
!12 = !{!9, !10, i64 16}
!13 = !{!14, !10, i64 0}
!14 = !{!"xyz_struct", !10, i64 0, !10, i64 8, !10, i64 16}
!15 = !{!14, !10, i64 8}
!16 = !{!14, !10, i64 16}
!17 = !{!18, !10, i64 0}
!18 = !{!"lab_struct", !10, i64 0, !10, i64 8, !10, i64 16}
!19 = !{!18, !10, i64 8}
!20 = !{!18, !10, i64 16}
!21 = !{!10, !10, i64 0}
!22 = !{!23}
!23 = distinct !{!23, !24, !"color_xyz_init: argument 0"}
!24 = distinct !{!24, !"color_xyz_init"}
!25 = !{!26}
!26 = distinct !{!26, !27, !"RGB2XYZ: argument 0"}
!27 = distinct !{!27, !"RGB2XYZ"}
!28 = !{!29}
!29 = distinct !{!29, !30, !"color_lab_init: argument 0"}
!30 = distinct !{!30, !"color_lab_init"}
!31 = !{!32}
!32 = distinct !{!32, !33, !"XYZ2RGB: argument 0"}
!33 = distinct !{!33, !"XYZ2RGB"}
!34 = !{!35, !32}
!35 = distinct !{!35, !36, !"color_rgb_init: argument 0"}
!36 = distinct !{!36, !"color_rgb_init"}
!37 = !{!38}
!38 = distinct !{!38, !39, !"color_rgb_init: argument 0"}
!39 = distinct !{!39, !"color_rgb_init"}
!40 = !{!5, !5, i64 0}
!41 = !{!6, !6, i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"p1 _ZTS8_IO_FILE", !44, i64 0}
!44 = !{!"any pointer", !6, i64 0}
!45 = !{!46, !46, i64 0}
!46 = !{!"long", !6, i64 0}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = distinct !{!51, !50}
!52 = distinct !{!52, !50}
!53 = distinct !{!53, !50}
!54 = distinct !{!54, !50, !55, !56}
!55 = !{!"llvm.loop.isvectorized", i32 1}
!56 = !{!"llvm.loop.unroll.runtime.disable"}
!57 = distinct !{!57, !50, !56, !55}
!58 = distinct !{!58, !50}
!59 = distinct !{!59, !48}
!60 = distinct !{!60, !50}
!61 = distinct !{!61, !50}
!62 = distinct !{!62, !50}
end_hunk_0
