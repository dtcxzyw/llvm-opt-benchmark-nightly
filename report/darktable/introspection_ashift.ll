Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_ashift?download=true
inline.NumInlined: 378
inline.NumDeleted: 101
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 78
begin_hunk_0_@simplex:bb.a

vec.epilog.ph919:                                 ; preds = %vector.main.loop.iter.check897, %vec.epilog.iter.check917
  %vec.epilog.resume.val914 = phi i64 [ %n.vec900, %vec.epilog.iter.check917 ], [ 0, %vector.main.loop.iter.check897 ]
  br label %vec.epilog.vector.body921

vec.epilog.vector.body921:                        ; preds = %vec.epilog.vector.body921, %vec.epilog.ph919
  %index922 = phi i64 [ %vec.epilog.resume.val914, %vec.epilog.ph919 ], [ %index.next925, %vec.epilog.vector.body921 ] ; 4 uses
  %i.wu = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index922
  %wide.load923 = load <4 x double>, ptr %i.wu, align 8, !tbaa !166 ; 2 uses
  %i.wv = getelementptr inbounds nuw [8 x i8], ptr %i.vs, i64 %index922
  %wide.load924 = load <4 x double>, ptr %i.wv, align 8, !tbaa !166
  %i.ww = fsub reassoc nsz arcp contract afn <4 x double> %wide.load923, %wide.load924
  %i.wx = fmul reassoc nsz arcp contract afn <4 x double> %i.ww, splat (double 5.000000e-01)
  %i.wy = fsub reassoc nsz arcp contract afn <4 x double> %wide.load923, %i.wx
  %i.wz = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index922
  store <4 x double> %i.wy, ptr %i.wz, align 8, !tbaa !166
  %index.next925 = add nuw i64 %index922, 4       ; 2 uses
  %i.xa = icmp eq i64 %index.next925, %n.vec920
  br i1 %i.xa, label %vec.epilog.middle.block926, label %vec.epilog.vector.body921, !llvm.loop !495

vec.epilog.middle.block926:                       ; preds = %vec.epilog.vector.body921
  br i1 %cmp.n927, label %._crit_edge478, label %vec.epilog.scalar.ph916.preheader

vec.epilog.scalar.ph916.preheader:                ; preds = %iter.check915, %vec.epilog.iter.check917, %vec.epilog.middle.block926
  %indvars.iv597.ph = phi i64 [ 0, %iter.check915 ], [ %n.vec900, %vec.epilog.iter.check917 ], [ %n.vec920, %vec.epilog.middle.block926 ] ; 3 uses
  br i1 %lcmp.mod1243.not, label %vec.epilog.scalar.ph916.prol.loopexit, label %vec.epilog.scalar.ph916.prol

vec.epilog.scalar.ph916.prol:                     ; preds = %vec.epilog.scalar.ph916.preheader, %vec.epilog.scalar.ph916.prol
  %indvars.iv597.prol = phi i64 [ %indvars.iv.next598.prol, %vec.epilog.scalar.ph916.prol ], [ %indvars.iv597.ph, %vec.epilog.scalar.ph916.preheader ] ; 4 uses
  %prol.iter1244 = phi i64 [ %prol.iter1244.next, %vec.epilog.scalar.ph916.prol ], [ 0, %vec.epilog.scalar.ph916.preheader ]
  %i.xb = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv597.prol
  %i.xc = load double, ptr %i.xb, align 8, !tbaa !166 ; 2 uses
  %i.xd = getelementptr inbounds nuw [8 x i8], ptr %i.vs, i64 %indvars.iv597.prol
  %i.xe = load double, ptr %i.xd, align 8, !tbaa !166
  %i.xf = fsub reassoc nsz arcp contract afn double %i.xc, %i.xe
  %i.xg = fmul reassoc nsz arcp contract afn double %i.xf, 5.000000e-01
  %i.xh = fsub reassoc nsz arcp contract afn double %i.xc, %i.xg
  %i.xi = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv597.prol
  store double %i.xh, ptr %i.xi, align 8, !tbaa !166
  %indvars.iv.next598.prol = add nuw nsw i64 %indvars.iv597.prol, 1 ; 2 uses
  %prol.iter1244.next = add i64 %prol.iter1244, 1 ; 2 uses
  %prol.iter1244.cmp.not = icmp eq i64 %prol.iter1244.next, %xtraiter1242
  br i1 %prol.iter1244.cmp.not, label %vec.epilog.scalar.ph916.prol.loopexit, label %vec.epilog.scalar.ph916.prol, !llvm.loop !496

vec.epilog.scalar.ph916.prol.loopexit:            ; preds = %vec.epilog.scalar.ph916.prol, %vec.epilog.scalar.ph916.preheader
  %indvars.iv597.unr = phi i64 [ %indvars.iv597.ph, %vec.epilog.scalar.ph916.preheader ], [ %indvars.iv.next598.prol, %vec.epilog.scalar.ph916.prol ]
  %i.xj = sub nsw i64 %indvars.iv597.ph, %wide.trip.count570
  %i.xk = icmp ugt i64 %i.xj, -4
  br i1 %i.xk, label %._crit_edge478, label %vec.epilog.scalar.ph916

.preheader403:                                    ; preds = %bb.an
  br i1 %i.af, label %._crit_edge482, label %iter.check880

iter.check880:                                    ; preds = %.preheader403
  br i1 %min.iters.check861, label %.lr.ph481.preheader, label %vector.main.loop.iter.check862

vector.main.loop.iter.check862:                   ; preds = %iter.check880
  br i1 %min.iters.check863, label %vec.epilog.ph884, label %vector.body866

vector.body866:                                   ; preds = %vector.main.loop.iter.check862, %vector.body866
  %index867 = phi i64 [ %index.next876, %vector.body866 ], [ 0, %vector.main.loop.iter.check862 ] ; 4 uses
  %i.xl = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index867 ; 4 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 32
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xl, i64 64
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xl, i64 96
  %wide.load868 = load <4 x double>, ptr %i.xl, align 8, !tbaa !166 ; 2 uses
  %wide.load869 = load <4 x double>, ptr %i.xm, align 8, !tbaa !166 ; 2 uses
  %wide.load870 = load <4 x double>, ptr %i.xn, align 8, !tbaa !166 ; 2 uses
  %wide.load871 = load <4 x double>, ptr %i.xo, align 8, !tbaa !166 ; 2 uses
  %i.xp = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index867 ; 4 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 32
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xp, i64 64
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xp, i64 96
  %wide.load872 = load <4 x double>, ptr %i.xp, align 8, !tbaa !166
  %wide.load873 = load <4 x double>, ptr %i.xq, align 8, !tbaa !166
  %wide.load874 = load <4 x double>, ptr %i.xr, align 8, !tbaa !166
  %wide.load875 = load <4 x double>, ptr %i.xs, align 8, !tbaa !166
  %i.xt = fsub reassoc nsz arcp contract afn <4 x double> %wide.load872, %wide.load868
  %i.xu = fsub reassoc nsz arcp contract afn <4 x double> %wide.load873, %wide.load869
  %i.xv = fsub reassoc nsz arcp contract afn <4 x double> %wide.load874, %wide.load870
  %i.xw = fsub reassoc nsz arcp contract afn <4 x double> %wide.load875, %wide.load871
  %i.xx = fmul reassoc nsz arcp contract afn <4 x double> %i.xt, splat (double 5.000000e-01)
  %i.xy = fmul reassoc nsz arcp contract afn <4 x double> %i.xu, splat (double 5.000000e-01)
  %i.xz = fmul reassoc nsz arcp contract afn <4 x double> %i.xv, splat (double 5.000000e-01)
  %i.ya = fmul reassoc nsz arcp contract afn <4 x double> %i.xw, splat (double 5.000000e-01)
  %i.yb = fadd reassoc nsz arcp contract afn <4 x double> %i.xx, %wide.load868
  %i.yc = fadd reassoc nsz arcp contract afn <4 x double> %i.xy, %wide.load869
  %i.yd = fadd reassoc nsz arcp contract afn <4 x double> %i.xz, %wide.load870
  %i.ye = fadd reassoc nsz arcp contract afn <4 x double> %i.ya, %wide.load871
  %i.yf = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index867 ; 4 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 32
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yf, i64 64
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yf, i64 96
  store <4 x double> %i.yb, ptr %i.yf, align 8, !tbaa !166
  store <4 x double> %i.yc, ptr %i.yg, align 8, !tbaa !166
  store <4 x double> %i.yd, ptr %i.yh, align 8, !tbaa !166
  store <4 x double> %i.ye, ptr %i.yi, align 8, !tbaa !166
  %index.next876 = add nuw i64 %index867, 16      ; 2 uses
  %i.yj = icmp eq i64 %index.next876, %n.vec865
  br i1 %i.yj, label %middle.block877, label %vector.body866, !llvm.loop !497

middle.block877:                                  ; preds = %vector.body866
  br i1 %cmp.n878, label %._crit_edge482, label %vec.epilog.iter.check882

vec.epilog.iter.check882:                         ; preds = %middle.block877
  br i1 %min.epilog.iters.check883, label %.lr.ph481.preheader, label %vec.epilog.ph884, !prof !269

vec.epilog.ph884:                                 ; preds = %vector.main.loop.iter.check862, %vec.epilog.iter.check882
  %vec.epilog.resume.val879 = phi i64 [ %n.vec865, %vec.epilog.iter.check882 ], [ 0, %vector.main.loop.iter.check862 ]
  br label %vec.epilog.vector.body886

vec.epilog.vector.body886:                        ; preds = %vec.epilog.vector.body886, %vec.epilog.ph884
  %index887 = phi i64 [ %vec.epilog.resume.val879, %vec.epilog.ph884 ], [ %index.next890, %vec.epilog.vector.body886 ] ; 4 uses
  %i.yk = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index887
  %wide.load888 = load <4 x double>, ptr %i.yk, align 8, !tbaa !166 ; 2 uses
  %i.yl = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index887
  %wide.load889 = load <4 x double>, ptr %i.yl, align 8, !tbaa !166
  %i.ym = fsub reassoc nsz arcp contract afn <4 x double> %wide.load889, %wide.load888
  %i.yn = fmul reassoc nsz arcp contract afn <4 x double> %i.ym, splat (double 5.000000e-01)
  %i.yo = fadd reassoc nsz arcp contract afn <4 x double> %i.yn, %wide.load888
  %i.yp = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index887
  store <4 x double> %i.yo, ptr %i.yp, align 8, !tbaa !166
  %index.next890 = add nuw i64 %index887, 4       ; 2 uses
  %i.yq = icmp eq i64 %index.next890, %n.vec885
  br i1 %i.yq, label %vec.epilog.middle.block891, label %vec.epilog.vector.body886, !llvm.loop !498

vec.epilog.middle.block891:                       ; preds = %vec.epilog.vector.body886
  br i1 %cmp.n892, label %._crit_edge482, label %.lr.ph481.preheader

.lr.ph481.preheader:                              ; preds = %iter.check880, %vec.epilog.iter.check882, %vec.epilog.middle.block891
  %indvars.iv602.ph = phi i64 [ 0, %iter.check880 ], [ %n.vec865, %vec.epilog.iter.check882 ], [ %n.vec885, %vec.epilog.middle.block891 ]
  br label %.lr.ph481

.lr.ph481:                                        ; preds = %.lr.ph481.preheader, %.lr.ph481
  %indvars.iv602 = phi i64 [ %indvars.iv.next603, %.lr.ph481 ], [ %indvars.iv602.ph, %.lr.ph481.preheader ] ; 4 uses
  %i.yr = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv602
  %i.ys = load double, ptr %i.yr, align 8, !tbaa !166 ; 2 uses
  %i.yt = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv602
  %i.yu = load double, ptr %i.yt, align 8, !tbaa !166
  %i.yv = fsub reassoc nsz arcp contract afn double %i.yu, %i.ys
  %i.yw = fmul reassoc nsz arcp contract afn double %i.yv, 5.000000e-01
  %i.yx = fadd reassoc nsz arcp contract afn double %i.yw, %i.ys
  %i.yy = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv602
  store double %i.yx, ptr %i.yy, align 8, !tbaa !166
  %indvars.iv.next603 = add nuw nsw i64 %indvars.iv602, 1 ; 2 uses
  %exitcond606.not = icmp eq i64 %indvars.iv.next603, %wide.trip.count605
  br i1 %exitcond606.not, label %._crit_edge482, label %.lr.ph481, !llvm.loop !499

._crit_edge482:                                   ; preds = %.lr.ph481, %middle.block877, %vec.epilog.middle.block891, %.preheader403
  br i1 %.not372, label %bb.ao, label %.sink.split705

vec.epilog.scalar.ph916:                          ; preds = %vec.epilog.scalar.ph916.prol.loopexit, %vec.epilog.scalar.ph916
  %indvars.iv597 = phi i64 [ %indvars.iv.next598.3, %vec.epilog.scalar.ph916 ], [ %indvars.iv597.unr, %vec.epilog.scalar.ph916.prol.loopexit ] ; 7 uses
  %i.yz = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv597
  %i.za = load double, ptr %i.yz, align 8, !tbaa !166 ; 2 uses
  %i.zb = getelementptr inbounds nuw [8 x i8], ptr %i.vs, i64 %indvars.iv597
  %i.zc = load double, ptr %i.zb, align 8, !tbaa !166
  %i.zd = fsub reassoc nsz arcp contract afn double %i.za, %i.zc
  %i.ze = fmul reassoc nsz arcp contract afn double %i.zd, 5.000000e-01
  %i.zf = fsub reassoc nsz arcp contract afn double %i.za, %i.ze
  %i.zg = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv597
  store double %i.zf, ptr %i.zg, align 8, !tbaa !166
  %indvars.iv.next598 = add nuw nsw i64 %indvars.iv597, 1 ; 3 uses
  %i.zh = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next598
  %i.zi = load double, ptr %i.zh, align 8, !tbaa !166 ; 2 uses
  %i.zj = getelementptr inbounds nuw [8 x i8], ptr %i.vs, i64 %indvars.iv.next598
  %i.zk = load double, ptr %i.zj, align 8, !tbaa !166
  %i.zl = fsub reassoc nsz arcp contract afn double %i.zi, %i.zk
  %i.zm = fmul reassoc nsz arcp contract afn double %i.zl, 5.000000e-01
  %i.zn = fsub reassoc nsz arcp contract afn double %i.zi, %i.zm
  %i.zo = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next598
  store double %i.zn, ptr %i.zo, align 8, !tbaa !166
  %indvars.iv.next598.1 = add nuw nsw i64 %indvars.iv597, 2 ; 3 uses
  %i.zp = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next598.1
  %i.zq = load double, ptr %i.zp, align 8, !tbaa !166 ; 2 uses
  %i.zr = getelementptr inbounds nuw [8 x i8], ptr %i.vs, i64 %indvars.iv.next598.1
  %i.zs = load double, ptr %i.zr, align 8, !tbaa !166
  %i.zt = fsub reassoc nsz arcp contract afn double %i.zq, %i.zs
  %i.zu = fmul reassoc nsz arcp contract afn double %i.zt, 5.000000e-01
  %i.zv = fsub reassoc nsz arcp contract afn double %i.zq, %i.zu
  %i.zw = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next598.1
  store double %i.zv, ptr %i.zw, align 8, !tbaa !166
  %indvars.iv.next598.2 = add nuw nsw i64 %indvars.iv597, 3 ; 3 uses
  %i.zx = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next598.2
  %i.zy = load double, ptr %i.zx, align 8, !tbaa !166 ; 2 uses
  %i.zz = getelementptr inbounds nuw [8 x i8], ptr %i.vs, i64 %indvars.iv.next598.2
  %i.aaa = load double, ptr %i.zz, align 8, !tbaa !166
  %i.aab = fsub reassoc nsz arcp contract afn double %i.zy, %i.aaa
  %i.aac = fmul reassoc nsz arcp contract afn double %i.aab, 5.000000e-01
  %i.aad = fsub reassoc nsz arcp contract afn double %i.zy, %i.aac
  %i.aae = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next598.2
  store double %i.aad, ptr %i.aae, align 8, !tbaa !166
  %indvars.iv.next598.3 = add nuw nsw i64 %indvars.iv597, 4 ; 2 uses
  %exitcond601.not.3 = icmp eq i64 %indvars.iv.next598.3, %wide.trip.count600
  br i1 %exitcond601.not.3, label %._crit_edge478, label %vec.epilog.scalar.ph916, !llvm.loop !500

._crit_edge478:                                   ; preds = %vec.epilog.scalar.ph916.prol.loopexit, %vec.epilog.scalar.ph916, %middle.block912, %vec.epilog.middle.block926, %.preheader404
  br i1 %.not372, label %bb.ao, label %.sink.split705

.sink.split705:                                   ; preds = %._crit_edge478, %._crit_edge482
  tail call void %6(ptr noundef %i.m, i32 noundef %2) #34, !callees !523
  br label %bb.ao

bb.ao:                                            ; preds = %.sink.split705, %._crit_edge478, %._crit_edge482
  %i.aaf = tail call reassoc nsz arcp contract afn double %0(ptr noundef %i.m, ptr noundef nonnull %7) #34, !callees !524 ; 2 uses
  %i.aag = fcmp reassoc nsz arcp contract afn olt double %i.aaf, %i.vp
  br i1 %i.aag, label %.preheader401, label %.preheader402

.preheader402:                                    ; preds = %bb.ao
  br i1 %.not417, label %._crit_edge490, label %.lr.ph489

.lr.ph489:                                        ; preds = %.preheader402
  %i.aah = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.oc
  br label %bb.ap

.preheader401:                                    ; preds = %bb.ao
  br i1 %i.af, label %._crit_edge494, label %iter.check813

iter.check813:                                    ; preds = %.preheader401
  %i.aai = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.vn
  %i.aaj = load ptr, ptr %i.aai, align 8, !tbaa !13 ; 12 uses
  %i.aak = ptrtoaddr ptr %i.aaj to i64
  %i.aal = sub i64 %i.n, %i.aak
  %diff.check797 = icmp ugt i64 %i.aal, -128
  %or.cond1186 = select i1 %min.iters.check798, i1 true, i1 %diff.check797
  br i1 %or.cond1186, label %vec.epilog.scalar.ph814.preheader, label %vector.main.loop.iter.check799

vector.main.loop.iter.check799:                   ; preds = %iter.check813
  br i1 %min.iters.check800, label %vec.epilog.ph817, label %vector.body803

vector.body803:                                   ; preds = %vector.main.loop.iter.check799, %vector.body803
  %index804 = phi i64 [ %index.next809, %vector.body803 ], [ 0, %vector.main.loop.iter.check799 ] ; 3 uses
  %i.aam = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index804 ; 4 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 32
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aam, i64 64
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aam, i64 96
  %wide.load805 = load <4 x double>, ptr %i.aam, align 8, !tbaa !166
  %wide.load806 = load <4 x double>, ptr %i.aan, align 8, !tbaa !166
  %wide.load807 = load <4 x double>, ptr %i.aao, align 8, !tbaa !166
  %wide.load808 = load <4 x double>, ptr %i.aap, align 8, !tbaa !166
  %i.aaq = getelementptr inbounds nuw [8 x i8], ptr %i.aaj, i64 %index804 ; 4 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 32
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aaq, i64 64
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aaq, i64 96
  store <4 x double> %wide.load805, ptr %i.aaq, align 8, !tbaa !166
  store <4 x double> %wide.load806, ptr %i.aar, align 8, !tbaa !166
  store <4 x double> %wide.load807, ptr %i.aas, align 8, !tbaa !166
  store <4 x double> %wide.load808, ptr %i.aat, align 8, !tbaa !166
  %index.next809 = add nuw i64 %index804, 16      ; 2 uses
  %i.aau = icmp eq i64 %index.next809, %n.vec802
  br i1 %i.aau, label %middle.block810, label %vector.body803, !llvm.loop !501

middle.block810:                                  ; preds = %vector.body803
  br i1 %cmp.n811, label %._crit_edge494, label %vec.epilog.iter.check815

vec.epilog.iter.check815:                         ; preds = %middle.block810
  br i1 %min.epilog.iters.check816, label %vec.epilog.scalar.ph814.preheader, label %vec.epilog.ph817, !prof !269

vec.epilog.ph817:                                 ; preds = %vector.main.loop.iter.check799, %vec.epilog.iter.check815
  %vec.epilog.resume.val812 = phi i64 [ %n.vec802, %vec.epilog.iter.check815 ], [ 0, %vector.main.loop.iter.check799 ]
  br label %vec.epilog.vector.body819

vec.epilog.vector.body819:                        ; preds = %vec.epilog.vector.body819, %vec.epilog.ph817
  %index820 = phi i64 [ %vec.epilog.resume.val812, %vec.epilog.ph817 ], [ %index.next822, %vec.epilog.vector.body819 ] ; 3 uses
  %i.aav = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index820
  %wide.load821 = load <4 x double>, ptr %i.aav, align 8, !tbaa !166
  %i.aaw = getelementptr inbounds nuw [8 x i8], ptr %i.aaj, i64 %index820
  store <4 x double> %wide.load821, ptr %i.aaw, align 8, !tbaa !166
  %index.next822 = add nuw i64 %index820, 4       ; 2 uses
  %i.aax = icmp eq i64 %index.next822, %n.vec818
  br i1 %i.aax, label %vec.epilog.middle.block823, label %vec.epilog.vector.body819, !llvm.loop !502

vec.epilog.middle.block823:                       ; preds = %vec.epilog.vector.body819
  br i1 %cmp.n824, label %._crit_edge494, label %vec.epilog.scalar.ph814.preheader

vec.epilog.scalar.ph814.preheader:                ; preds = %iter.check813, %vec.epilog.iter.check815, %vec.epilog.middle.block823
  %indvars.iv617.ph = phi i64 [ 0, %iter.check813 ], [ %n.vec802, %vec.epilog.iter.check815 ], [ %n.vec818, %vec.epilog.middle.block823 ] ; 4 uses
  %i.aay = sub nsw i64 %wide.trip.count570, %indvars.iv617.ph
  %xtraiter1248 = and i64 %i.aay, 7               ; 2 uses
  %lcmp.mod1249.not = icmp eq i64 %xtraiter1248, 0
  br i1 %lcmp.mod1249.not, label %vec.epilog.scalar.ph814.prol.loopexit, label %vec.epilog.scalar.ph814.prol

vec.epilog.scalar.ph814.prol:                     ; preds = %vec.epilog.scalar.ph814.preheader, %vec.epilog.scalar.ph814.prol
  %indvars.iv617.prol = phi i64 [ %indvars.iv.next618.prol, %vec.epilog.scalar.ph814.prol ], [ %indvars.iv617.ph, %vec.epilog.scalar.ph814.preheader ] ; 3 uses
  %prol.iter1250 = phi i64 [ %prol.iter1250.next, %vec.epilog.scalar.ph814.prol ], [ 0, %vec.epilog.scalar.ph814.preheader ]
  %i.aaz = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv617.prol
  %i.aba = load double, ptr %i.aaz, align 8, !tbaa !166
  %i.abb = getelementptr inbounds nuw [8 x i8], ptr %i.aaj, i64 %indvars.iv617.prol
  store double %i.aba, ptr %i.abb, align 8, !tbaa !166
  %indvars.iv.next618.prol = add nuw nsw i64 %indvars.iv617.prol, 1 ; 2 uses
  %prol.iter1250.next = add i64 %prol.iter1250, 1 ; 2 uses
  %prol.iter1250.cmp.not = icmp eq i64 %prol.iter1250.next, %xtraiter1248
  br i1 %prol.iter1250.cmp.not, label %vec.epilog.scalar.ph814.prol.loopexit, label %vec.epilog.scalar.ph814.prol, !llvm.loop !503

vec.epilog.scalar.ph814.prol.loopexit:            ; preds = %vec.epilog.scalar.ph814.prol, %vec.epilog.scalar.ph814.preheader
  %indvars.iv617.unr = phi i64 [ %indvars.iv617.ph, %vec.epilog.scalar.ph814.preheader ], [ %indvars.iv.next618.prol, %vec.epilog.scalar.ph814.prol ]
  %i.abc = sub nsw i64 %indvars.iv617.ph, %wide.trip.count570
  %i.abd = icmp ugt i64 %i.abc, -8
  br i1 %i.abd, label %._crit_edge494, label %vec.epilog.scalar.ph814

vec.epilog.scalar.ph814:                          ; preds = %vec.epilog.scalar.ph814.prol.loopexit, %vec.epilog.scalar.ph814
  %indvars.iv617 = phi i64 [ %indvars.iv.next618.7, %vec.epilog.scalar.ph814 ], [ %indvars.iv617.unr, %vec.epilog.scalar.ph814.prol.loopexit ] ; 10 uses
  %i.abe = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv617
  %i.abf = load double, ptr %i.abe, align 8, !tbaa !166
  %i.abg = getelementptr inbounds nuw [8 x i8], ptr %i.aaj, i64 %indvars.iv617
  store double %i.abf, ptr %i.abg, align 8, !tbaa !166
  %indvars.iv.next618 = add nuw nsw i64 %indvars.iv617, 1 ; 2 uses
  %i.abh = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next618
  %i.abi = load double, ptr %i.abh, align 8, !tbaa !166
  %i.abj = getelementptr inbounds nuw [8 x i8], ptr %i.aaj, i64 %indvars.iv.next618
  store double %i.abi, ptr %i.abj, align 8, !tbaa !166
  %indvars.iv.next618.1 = add nuw nsw i64 %indvars.iv617, 2 ; 2 uses
  %i.abk = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next618.1
  %i.abl = load double, ptr %i.abk, align 8, !tbaa !166
  %i.abm = getelementptr inbounds nuw [8 x i8], ptr %i.aaj, i64 %indvars.iv.next618.1
  store double %i.abl, ptr %i.abm, align 8, !tbaa !166
  %indvars.iv.next618.2 = add nuw nsw i64 %indvars.iv617, 3 ; 2 uses
  %i.abn = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next618.2
  %i.abo = load double, ptr %i.abn, align 8, !tbaa !166
  %i.abp = getelementptr inbounds nuw [8 x i8], ptr %i.aaj, i64 %indvars.iv.next618.2
  store double %i.abo, ptr %i.abp, align 8, !tbaa !166
  %indvars.iv.next618.3 = add nuw nsw i64 %indvars.iv617, 4 ; 2 uses
  %i.abq = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next618.3
  %i.abr = load double, ptr %i.abq, align 8, !tbaa !166
  %i.abs = getelementptr inbounds nuw [8 x i8], ptr %i.aaj, i64 %indvars.iv.next618.3
  store double %i.abr, ptr %i.abs, align 8, !tbaa !166
  %indvars.iv.next618.4 = add nuw nsw i64 %indvars.iv617, 5 ; 2 uses
  %i.abt = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next618.4
  %i.abu = load double, ptr %i.abt, align 8, !tbaa !166
  %i.abv = getelementptr inbounds nuw [8 x i8], ptr %i.aaj, i64 %indvars.iv.next618.4
  store double %i.abu, ptr %i.abv, align 8, !tbaa !166
  %indvars.iv.next618.5 = add nuw nsw i64 %indvars.iv617, 6 ; 2 uses
  %i.abw = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next618.5
  %i.abx = load double, ptr %i.abw, align 8, !tbaa !166
  %i.aby = getelementptr inbounds nuw [8 x i8], ptr %i.aaj, i64 %indvars.iv.next618.5
  store double %i.abx, ptr %i.aby, align 8, !tbaa !166
  %indvars.iv.next618.6 = add nuw nsw i64 %indvars.iv617, 7 ; 2 uses
  %i.abz = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next618.6
  %i.aca = load double, ptr %i.abz, align 8, !tbaa !166
  %i.acb = getelementptr inbounds nuw [8 x i8], ptr %i.aaj, i64 %indvars.iv.next618.6
  store double %i.aca, ptr %i.acb, align 8, !tbaa !166
  %indvars.iv.next618.7 = add nuw nsw i64 %indvars.iv617, 8 ; 2 uses
  %exitcond621.not.7 = icmp eq i64 %indvars.iv.next618.7, %wide.trip.count620
  br i1 %exitcond621.not.7, label %._crit_edge494, label %vec.epilog.scalar.ph814, !llvm.loop !504

._crit_edge494:                                   ; preds = %vec.epilog.scalar.ph814.prol.loopexit, %vec.epilog.scalar.ph814, %middle.block810, %vec.epilog.middle.block823, %.preheader401
  store double %i.aaf, ptr %i.vo, align 8, !tbaa !166
  br label %bb.as

bb.ap:                                            ; preds = %.lr.ph489, %.loopexit
  %indvars.iv612 = phi i64 [ 0, %.lr.ph489 ], [ %indvars.iv.next613, %.loopexit ] ; 3 uses
  %.not387 = icmp eq i64 %indvars.iv612, %i.oc
  %brmerge = or i1 %.not387, %i.af
  br i1 %brmerge, label %.loopexit, label %iter.check847

iter.check847:                                    ; preds = %bb.ap
  %i.acc = load ptr, ptr %i.aah, align 8, !tbaa !13 ; 9 uses
  %i.acd = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv612
  %i.ace = load ptr, ptr %i.acd, align 8, !tbaa !13 ; 9 uses
  br i1 %min.iters.check828, label %vec.epilog.scalar.ph848.preheader, label %vector.memcheck826

vector.memcheck826:                               ; preds = %iter.check847
  %scevgep = getelementptr i8, ptr %i.ace, i64 %i.dw
  %scevgep827 = getelementptr i8, ptr %i.acc, i64 %i.dw
  %bound0 = icmp ult ptr %i.ace, %scevgep827
  %bound1 = icmp ult ptr %i.acc, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph848.preheader, label %vector.main.loop.iter.check829

vector.main.loop.iter.check829:                   ; preds = %vector.memcheck826
  br i1 %min.iters.check830, label %vec.epilog.ph851, label %vector.body833

vector.body833:                                   ; preds = %vector.main.loop.iter.check829, %vector.body833
  %index834 = phi i64 [ %index.next843, %vector.body833 ], [ 0, %vector.main.loop.iter.check829 ] ; 3 uses
  %i.acf = getelementptr inbounds nuw [8 x i8], ptr %i.acc, i64 %index834 ; 4 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 32
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acf, i64 64
  %i.aci = getelementptr inbounds nuw i8, ptr %i.acf, i64 96
  %wide.load835 = load <4 x double>, ptr %i.acf, align 8, !tbaa !166, !alias.scope !525 ; 2 uses
  %wide.load836 = load <4 x double>, ptr %i.acg, align 8, !tbaa !166, !alias.scope !525 ; 2 uses
  %wide.load837 = load <4 x double>, ptr %i.ach, align 8, !tbaa !166, !alias.scope !525 ; 2 uses
  %wide.load838 = load <4 x double>, ptr %i.aci, align 8, !tbaa !166, !alias.scope !525 ; 2 uses
  %i.acj = getelementptr inbounds nuw [8 x i8], ptr %i.ace, i64 %index834 ; 5 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 32 ; 2 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %i.acj, i64 64 ; 2 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acj, i64 96 ; 2 uses
  %wide.load839 = load <4 x double>, ptr %i.acj, align 8, !tbaa !166, !alias.scope !526, !noalias !525
  %wide.load840 = load <4 x double>, ptr %i.ack, align 8, !tbaa !166, !alias.scope !526, !noalias !525
  %wide.load841 = load <4 x double>, ptr %i.acl, align 8, !tbaa !166, !alias.scope !526, !noalias !525
  %wide.load842 = load <4 x double>, ptr %i.acm, align 8, !tbaa !166, !alias.scope !526, !noalias !525
  %i.acn = fsub reassoc nsz arcp contract afn <4 x double> %wide.load839, %wide.load835
  %i.aco = fsub reassoc nsz arcp contract afn <4 x double> %wide.load840, %wide.load836
  %i.acp = fsub reassoc nsz arcp contract afn <4 x double> %wide.load841, %wide.load837
  %i.acq = fsub reassoc nsz arcp contract afn <4 x double> %wide.load842, %wide.load838
  %i.acr = fmul reassoc nsz arcp contract afn <4 x double> %i.acn, splat (double 5.000000e-01)
  %i.acs = fmul reassoc nsz arcp contract afn <4 x double> %i.aco, splat (double 5.000000e-01)
  %i.act = fmul reassoc nsz arcp contract afn <4 x double> %i.acp, splat (double 5.000000e-01)
  %i.acu = fmul reassoc nsz arcp contract afn <4 x double> %i.acq, splat (double 5.000000e-01)
  %i.acv = fadd reassoc nsz arcp contract afn <4 x double> %i.acr, %wide.load835
  %i.acw = fadd reassoc nsz arcp contract afn <4 x double> %i.acs, %wide.load836
  %i.acx = fadd reassoc nsz arcp contract afn <4 x double> %i.act, %wide.load837
  %i.acy = fadd reassoc nsz arcp contract afn <4 x double> %i.acu, %wide.load838
  store <4 x double> %i.acv, ptr %i.acj, align 8, !tbaa !166, !alias.scope !526, !noalias !525
  store <4 x double> %i.acw, ptr %i.ack, align 8, !tbaa !166, !alias.scope !526, !noalias !525
  store <4 x double> %i.acx, ptr %i.acl, align 8, !tbaa !166, !alias.scope !526, !noalias !525
end_hunk_0
