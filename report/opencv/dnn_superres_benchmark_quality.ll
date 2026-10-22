Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/dnn_superres_benchmark_quality?download=true
inline.NumInlined: 656
inline.NumDeleted: 274
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@main:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i340.3
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #18
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %94, ptr noundef nonnull align 8 dereferenceable(24) %90)
          to label %.noexc.i344 unwind label %bb.gi

.noexc.i344:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342.3
  %i.wj = getelementptr inbounds nuw i8, ptr %95, i64 16 ; 6 uses
  store ptr %i.wj, ptr %95, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 17, ptr %i.a, align 8, !tbaa !20
  %i.wk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %95, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc345 unwind label %bb.gj ; 2 uses

.noexc345:                                        ; preds = %.noexc.i344
  store ptr %i.wk, ptr %95, align 8, !tbaa !22
  %i.wl = load i64, ptr %i.a, align 8, !tbaa !20  ; 3 uses
  store i64 %i.wl, ptr %i.wj, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.wk, ptr noundef nonnull align 1 dereferenceable(17) @.str.15, i64 17, i1 false)
  %i.wm = getelementptr inbounds nuw i8, ptr %95, i64 8
  store i64 %i.wl, ptr %i.wm, align 8, !tbaa !23
  %i.wn = load ptr, ptr %95, align 8, !tbaa !22
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 %i.wl
  store i8 0, ptr %i.wo, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.wp = getelementptr inbounds nuw i8, ptr %75, i64 12
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !123 ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %75, i64 8
  %i.ws = load i32, ptr %i.wr, align 8, !tbaa !124 ; 2 uses
  %i.wt = ptrtoint ptr %i.vj to i64
  %i.wu = ptrtoint ptr %i.ve to i64
  %i.wv = sub i64 %i.wt, %i.wu                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %96, i8 0, i64 24, i1 false)
  %.not.i.i.i.i347 = icmp eq ptr %i.vj, %i.ve     ; 2 uses
  br i1 %.not.i.i.i.i347, label %.noexc351, label %bb.dc

bb.dc:                                            ; preds = %.noexc345
  %i.ww = icmp ugt i64 %i.wv, 9223372036854775776
  br i1 %i.ww, label %.noexc.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !32

.noexc.i.i:                                       ; preds = %bb.dc
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #17
          to label %.noexc350 unwind label %bb.gk

.noexc350:                                        ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.dc
  %i.wx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wv) #19
          to label %.noexc351 unwind label %bb.gk

.noexc351:                                        ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc345
  %.pr.i = phi ptr [ null, %.noexc345 ], [ %i.wx, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 11 uses
  store ptr %.pr.i, ptr %96, align 8, !tbaa !40
  %i.wy = getelementptr inbounds nuw i8, ptr %96, i64 8 ; 2 uses
  store ptr %.pr.i, ptr %i.wy, align 8, !tbaa !42
  %i.wz = getelementptr inbounds nuw i8, ptr %.pr.i, i64 %i.wv
  %i.xa = getelementptr inbounds nuw i8, ptr %96, i64 16
  store ptr %i.wz, ptr %i.xa, align 8, !tbaa !41
  %i.xb = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr nonnull %i.ve, ptr %i.vj, ptr noundef %.pr.i)
          to label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i unwind label %bb.dd ; 3 uses

bb.dd:                                            ; preds = %.noexc351
  %i.xc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i348 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i348, label %.body352, label %bb.de

bb.de:                                            ; preds = %bb.dd
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %i.wv) #20
  br label %.body352

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i: ; preds = %.noexc351
  store ptr %i.xb, ptr %i.wy, align 8, !tbaa !42
  %i.xd = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #19
          to label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i359 unwind label %bb.gl ; 4 uses

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i359: ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.xd, ptr noundef nonnull align 8 dereferenceable(32) %i.nu, i64 32, i1 false)
  %i.xe = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #19
          to label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit363 unwind label %bb.gm ; 4 uses

_ZNSt6vectorIdSaIdEEC2ERKS1_.exit363:             ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i359
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.xe, ptr noundef nonnull align 8 dereferenceable(32) %i.nz, i64 32, i1 false)
  %.sroa.2.0.insert.ext = zext i32 %i.ws to i64   ; 2 uses
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0614.0.insert.ext = zext i32 %i.wq to i64 ; 2 uses
  %.sroa.0614.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0614.0.insert.ext
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  %i.xf = getelementptr inbounds nuw i8, ptr %94, i64 8 ; 2 uses
  %i.xg = load ptr, ptr %i.xf, align 8, !tbaa !37
  %i.xh = load ptr, ptr %94, align 8, !tbaa !35   ; 2 uses
  %i.xi = ptrtoint ptr %i.xg to i64
  %i.xj = ptrtoint ptr %i.xh to i64
  %i.xk = sub i64 %i.xi, %i.xj
  %i.xl = sdiv exact i64 %i.xk, 208               ; 2 uses
  %i.xm = trunc i64 %i.xl to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.xn = shl nuw nsw i64 %.sroa.0614.0.insert.ext, 1
  %i.xo = add nuw nsw i64 %i.xn, 20
  %i.xp = shl i64 %.sroa.2.0.insert.ext, 33
  %i.xq = add i64 %i.xp, 85899345920
  %i.xr = load i32, ptr %i.xh, align 8, !tbaa !125
  %i.xs = and i32 %i.xr, 4095
  %.sroa.0173.0.insert.ext.i = and i64 %i.xo, 4294967294
  %.sroa.0173.0.insert.insert.i = or disjoint i64 %i.xq, %.sroa.0173.0.insert.ext.i
  invoke void @_ZN2cv3Mat5zerosENS_5Size_IiEEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %3, i64 %.sroa.0173.0.insert.insert.i, i32 noundef %i.xs)
          to label %.noexc366 unwind label %bb.gn

.noexc366:                                        ; preds = %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit363
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %2) #18
  %i.xt = load ptr, ptr %3, align 8, !tbaa !131, !noalias !132 ; 2 uses
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !13
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 24
  %i.xw = load ptr, ptr %i.xv, align 8
  invoke void %i.xw(ptr noundef nonnull align 8 dereferenceable(8) %i.xt, ptr noundef nonnull align 8 dereferenceable(688) %3, ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i unwind label %.body.i

.body.i:                                          ; preds = %.noexc366
  %i.xx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #18
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.ev

_ZNK2cv7MatExprcvNS_3MatEEv.exit.i:               ; preds = %.noexc366
  %i.xy = getelementptr inbounds nuw i8, ptr %3, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.xy) #18
  %i.xz = getelementptr inbounds nuw i8, ptr %3, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.xz) #18
  %i.ya = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ya) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %.preheader.i unwind label %bb.df

.preheader.i:                                     ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i
  %i.yb = icmp sgt i32 %i.xm, 0
  br i1 %i.yb, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.yc = add nsw i32 %i.wq, 10
  %i.yd = add nsw i32 %i.ws, 10
  %i.ye = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.yf = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.yh = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.yi = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.yj = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.yk = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.yl = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.yn = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.yo = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.yq = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 3 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 3 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 3 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 9 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.yv = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.yx = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 6 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 3 uses
  %i.za = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.zb = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.zc = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ze = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.zf = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 7 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.zh = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.zi = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.zj = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 7 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.zl = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.zm = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.zo = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.zp = getelementptr inbounds nuw i8, ptr %21, i64 16
  %wide.trip.count.i = and i64 %i.xl, 2147483647
  br label %bb.dg

._crit_edge.i:                                    ; preds = %bb.eb, %.preheader.i
  invoke void @_ZN2cv11namedWindowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %95, i32 noundef 1)
          to label %bb.eo unwind label %bb.er

bb.df:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i
  %i.zq = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.dg:                                            ; preds = %bb.eb, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.eb ] ; 7 uses
  %.035267.i = phi i32 [ -1, %.lr.ph.i ], [ %spec.select.i, %bb.eb ]
  %i.zr = trunc nuw nsw i64 %indvars.iv.i to i32
  %97 = trunc i64 %indvars.iv.i to i1
  %i.zs = and i32 %i.zr, 1
  %i.zt = xor i32 %i.zs, 1
  %spec.select.i = add nsw i32 %i.zt, %.035267.i  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %98 = select i1 %97, i32 %i.yc, i32 0
  %i.zu = mul nsw i32 %spec.select.i, %i.yd
  store i32 %98, ptr %5, align 4, !tbaa !103
  store i32 %i.zu, ptr %i.ye, align 4, !tbaa !104
  store i64 %.sroa.0614.0.insert.insert, ptr %i.yf, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.zv = load ptr, ptr %94, align 8, !tbaa !35
  %i.zw = getelementptr inbounds nuw [208 x i8], ptr %i.zv, i64 %indvars.iv.i
  store i32 0, ptr %i.yg, align 8, !tbaa !106
  store i32 0, ptr %i.yh, align 4, !tbaa !107
  store i32 16842752, ptr %7, align 8, !tbaa !109
  store ptr %i.zw, ptr %i.yi, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  store i64 0, ptr %i.yk, align 8
  store i32 33619968, ptr %8, align 8, !tbaa !109
  store ptr %6, ptr %i.yj, align 8, !tbaa !110
  %i.zx = load i64, ptr %i.yf, align 4
  invoke void @_ZN2cv6resizeERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEEddi(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 %i.zx, double noundef 0.000000e+00, double noundef 0.000000e+00, i32 noundef 1)
          to label %bb.dh unwind label %bb.ec

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.zy = getelementptr inbounds nuw [32 x i8], ptr %.pr.i, i64 %indvars.iv.i ; 2 uses
  %i.zz = load ptr, ptr %i.zy, align 8, !tbaa !22
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zy, i64 8
  %i.aab = load i64, ptr %i.aaa, align 8, !tbaa !23
  %i.aac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.yl, ptr noundef %i.zz, i64 noundef %i.aab)
          to label %bb.di unwind label %bb.ed     ; 0 uses

bb.di:                                            ; preds = %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  store i64 0, ptr %i.yn, align 8
  store i32 50397184, ptr %9, align 8, !tbaa !109
  store ptr %6, ptr %i.ym, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !133)
  call void @llvm.experimental.noalias.scope.decl(metadata !134)
  store ptr %i.yo, ptr %10, align 8, !tbaa !19, !alias.scope !135
  store i64 0, ptr %i.yp, align 8, !tbaa !23, !alias.scope !135
  store i8 0, ptr %i.yo, align 8, !tbaa !16, !alias.scope !135
  %i.aad = load ptr, ptr %i.yq, align 8, !tbaa !137, !noalias !135 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.aad, null
  %i.aae = load ptr, ptr %i.yr, align 8, !noalias !135 ; 2 uses
  %i.aaf = icmp ugt ptr %i.aad, %i.aae
  %.08.i.i.i.i = select i1 %i.aaf, ptr %i.aad, ptr %i.aae ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i364 = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i364, label %bb.dl, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.aag = load ptr, ptr %i.ys, align 8, !tbaa !138, !noalias !135 ; 2 uses
  %i.aah = ptrtoint ptr %.08.i.i.i.i to i64
  %i.aai = ptrtoint ptr %i.aag to i64
  %i.aaj = sub i64 %i.aah, %i.aai
  %i.aak = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef 0, ptr noundef %i.aag, i64 noundef %i.aaj)
          to label %bb.dm unwind label %bb.dk     ; 0 uses

bb.dk:                                            ; preds = %bb.dl, %bb.dj
  %i.aal = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aam = load ptr, ptr %10, align 8, !tbaa !22, !alias.scope !135 ; 2 uses
  %i.aan = icmp eq ptr %i.aam, %i.yo
  br i1 %i.aan, label %.body82.i, label %.body82.i.sink.split

bb.dl:                                            ; preds = %bb.di
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %i.yt)
          to label %bb.dm unwind label %bb.dk

bb.dm:                                            ; preds = %bb.dl, %bb.dj
  store <2 x double> splat (double 2.550000e+02), ptr %11, align 16, !tbaa !113
  store <2 x double> <double 2.550000e+02, double 0.000000e+00>, ptr %i.yu, align 16, !tbaa !113
  invoke void @_ZN2cv7putTextERKNS_17_InputOutputArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6Point_IiEEidNS_7Scalar_IdEEiib(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(32) %10, i64 64424509445, i32 noundef 5, double noundef 1.000000e+00, ptr noundef nonnull align 8 dead_on_return %11, i32 noundef 1, i32 noundef 16, i1 noundef zeroext false)
          to label %bb.dn unwind label %bb.ee

bb.dn:                                            ; preds = %bb.dm
  %i.aao = load ptr, ptr %10, align 8, !tbaa !22  ; 2 uses
  %i.aap = icmp eq ptr %i.aao, %i.yo
  br i1 %i.aap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.dn
  %i.aaq = load i64, ptr %i.yo, align 8, !tbaa !16
  %i.aar = add i64 %i.aaq, 1
  call void @_ZdlPvm(ptr noundef %i.aao, i64 noundef %i.aar) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  store ptr %i.yv, ptr %12, align 8, !tbaa !19
  store i64 0, ptr %i.yw, align 8, !tbaa !23
  store i8 0, ptr %i.yv, align 8, !tbaa !16
  %i.aas = load i64, ptr %i.yy, align 8, !tbaa !23
  %i.aat = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.yt, i64 noundef 0, i64 noundef %i.aas, ptr noundef nonnull %i.yv, i64 noundef 0)
          to label %.noexc84.i unwind label %bb.ef ; 0 uses

.noexc84.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.aau = load i32, ptr %i.yz, align 8, !tbaa !141
  %i.aav = and i32 %i.aau, 3
  %.not.i.i.i.i365 = icmp eq i32 %i.aav, 0
  %i.aaw = load i64, ptr %i.yy, align 8
  %.0.i.i.i.i = select i1 %.not.i.i.i.i365, i64 0, i64 %i.aaw
  %i.aax = load ptr, ptr %i.yt, align 8, !tbaa !22
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.yx, ptr noundef %i.aax, i64 noundef 0, i64 noundef %.0.i.i.i.i)
          to label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit.i unwind label %bb.ef

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit.i: ; preds = %.noexc84.i
  %i.aay = load ptr, ptr %12, align 8, !tbaa !22  ; 2 uses
  %i.aaz = icmp eq ptr %i.aay, %i.yv
  br i1 %i.aaz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86.i: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit.i
  %i.aba = load i64, ptr %i.yv, align 8, !tbaa !16
  %i.abb = add i64 %i.aba, 1
  call void @_ZdlPvm(ptr noundef %i.aay, i64 noundef %i.abb) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88.i: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  %i.abc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.yl, ptr noundef nonnull @.str.7, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.ed ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88.i
  %i.abd = getelementptr inbounds nuw [8 x i8], ptr %i.xd, i64 %indvars.iv.i
  %i.abe = load double, ptr %i.abd, align 8, !tbaa !113
  %i.abf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.yl, double noundef %i.abe)
          to label %bb.do unwind label %bb.ed     ; 0 uses

bb.do:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  store i64 0, ptr %i.zb, align 8
  store i32 50397184, ptr %13, align 8, !tbaa !109
  store ptr %6, ptr %i.za, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !142)
  call void @llvm.experimental.noalias.scope.decl(metadata !143)
  store ptr %i.zc, ptr %14, align 8, !tbaa !19, !alias.scope !144
  store i64 0, ptr %i.zd, align 8, !tbaa !23, !alias.scope !144
  store i8 0, ptr %i.zc, align 8, !tbaa !16, !alias.scope !144
  %i.abg = load ptr, ptr %i.yq, align 8, !tbaa !137, !noalias !144 ; 3 uses
  %.not.i.not.i.i91.i = icmp eq ptr %i.abg, null
  %i.abh = load ptr, ptr %i.yr, align 8, !noalias !144 ; 2 uses
  %i.abi = icmp ugt ptr %i.abg, %i.abh
  %.08.i.i.i92.i = select i1 %i.abi, ptr %i.abg, ptr %i.abh ; 2 uses
  %.not5.i.i93.i = icmp eq ptr %.08.i.i.i92.i, null
  %.not.i.i94.i = select i1 %.not.i.not.i.i91.i, i1 true, i1 %.not5.i.i93.i
  br i1 %.not.i.i94.i, label %bb.dr, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.abj = load ptr, ptr %i.ys, align 8, !tbaa !138, !noalias !144 ; 2 uses
  %i.abk = ptrtoint ptr %.08.i.i.i92.i to i64
  %i.abl = ptrtoint ptr %i.abj to i64
  %i.abm = sub i64 %i.abk, %i.abl
  %i.abn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef 0, i64 noundef 0, ptr noundef %i.abj, i64 noundef %i.abm)
          to label %bb.ds unwind label %bb.dq     ; 0 uses

bb.dq:                                            ; preds = %bb.dr, %bb.dp
  %i.abo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abp = load ptr, ptr %14, align 8, !tbaa !22, !alias.scope !144 ; 2 uses
  %i.abq = icmp eq ptr %i.abp, %i.zc
  br i1 %i.abq, label %.body98.i, label %.body98.i.sink.split

bb.dr:                                            ; preds = %bb.do
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %i.yt)
          to label %bb.ds unwind label %bb.dq

bb.ds:                                            ; preds = %bb.dr, %bb.dp
  store <2 x double> splat (double 2.550000e+02), ptr %15, align 16, !tbaa !113
  store <2 x double> <double 2.550000e+02, double 0.000000e+00>, ptr %i.ze, align 16, !tbaa !113
  invoke void @_ZN2cv7putTextERKNS_17_InputOutputArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6Point_IiEEidNS_7Scalar_IdEEiib(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(32) %14, i64 150323855365, i32 noundef 5, double noundef 1.000000e+00, ptr noundef nonnull align 8 dead_on_return %15, i32 noundef 1, i32 noundef 16, i1 noundef zeroext false)
          to label %bb.dt unwind label %bb.eg

bb.dt:                                            ; preds = %bb.ds
  %i.abr = load ptr, ptr %14, align 8, !tbaa !22  ; 2 uses
  %i.abs = icmp eq ptr %i.abr, %i.zc
  br i1 %i.abs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101.i: ; preds = %bb.dt
  %i.abt = load i64, ptr %i.zc, align 8, !tbaa !16
  %i.abu = add i64 %i.abt, 1
  call void @_ZdlPvm(ptr noundef %i.abr, i64 noundef %i.abu) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103.i: ; preds = %bb.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  store ptr %i.zf, ptr %16, align 8, !tbaa !19
  store i64 0, ptr %i.zg, align 8, !tbaa !23
  store i8 0, ptr %i.zf, align 8, !tbaa !16
  %i.abv = load i64, ptr %i.yy, align 8, !tbaa !23
  %i.abw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.yt, i64 noundef 0, i64 noundef %i.abv, ptr noundef nonnull %i.zf, i64 noundef 0)
          to label %.noexc110.i unwind label %bb.eh ; 0 uses

.noexc110.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103.i
  %i.abx = load i32, ptr %i.yz, align 8, !tbaa !141
  %i.aby = and i32 %i.abx, 3
  %.not.i.i.i108.i = icmp eq i32 %i.aby, 0
  %i.abz = load i64, ptr %i.yy, align 8
end_hunk_0
