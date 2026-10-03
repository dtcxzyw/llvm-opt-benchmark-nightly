Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/grompp?download=true
inline.NumInlined: 3296
inline.NumDeleted: 1547
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_Z10gmx_gromppiPPc:bb.a
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.dvr, null
  br i1 %.not.i.i.i1.i.i.i, label %_ZL22haveDecoupledModeInMolRK13gmx_moltype_tN3gmx8ArrayRefIK9t_iparamsEEf.exit.i, label %bb.xz

bb.xz:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i
  %i.dvs = load ptr, ptr %i.dur, align 8, !tbaa !32
  %i.dvt = ptrtoint ptr %i.dvs to i64
  %i.dvu = ptrtoint ptr %i.dvr to i64
  %i.dvv = sub i64 %i.dvt, %i.dvu
  call void @_ZdlPvm(ptr noundef nonnull %i.dvr, i64 noundef %i.dvv) #31
  br label %_ZL22haveDecoupledModeInMolRK13gmx_moltype_tN3gmx8ArrayRefIK9t_iparamsEEf.exit.i

bb.ya:                                            ; preds = %.loopexit.i.i855, %.noexc872
  %indvars.iv125.i.i = phi i64 [ 0, %.noexc872 ], [ %indvars.iv.next126.i.i, %.loopexit.i.i855 ] ; 3 uses
  %.064124.i.i = phi i1 [ false, %.noexc872 ], [ %.468.i.i, %.loopexit.i.i855 ] ; 3 uses
  %i.dvw = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %indvars.iv125.i.i ; 2 uses
  %i.dvx = getelementptr inbounds nuw i8, ptr %i.dvw, i64 28
  %i.dvy = load i32, ptr %i.dvx, align 4, !tbaa !585
  %i.dvz = and i32 %i.dvy, 32
  %.not.i.i854 = icmp eq i32 %i.dvz, 0
  br i1 %.not.i.i854, label %.loopexit.i.i855, label %bb.yb

bb.yb:                                            ; preds = %bb.ya
  %i.dwa = getelementptr inbounds nuw [24 x i8], ptr %i.duy, i64 %indvars.iv125.i.i ; 2 uses
  %i.dwb = getelementptr inbounds nuw i8, ptr %i.dwa, i64 8
  %i.dwc = load ptr, ptr %i.dwb, align 8, !tbaa !35
  %i.dwd = load ptr, ptr %i.dwa, align 8, !tbaa !33 ; 2 uses
  %i.dwe = ptrtoint ptr %i.dwc to i64
  %i.dwf = ptrtoint ptr %i.dwd to i64
  %i.dwg = sub i64 %i.dwe, %i.dwf
  %i.dwh = lshr exact i64 %i.dwg, 2               ; 2 uses
  %i.dwi = trunc i64 %i.dwh to i32
  %i.dwj = icmp sgt i32 %i.dwi, 0
  br i1 %i.dwj, label %.lr.ph121.i.i, label %.loopexit.i.i855

.lr.ph121.i.i:                                    ; preds = %bb.yb
  %i.dwk = getelementptr inbounds nuw i8, ptr %i.dvw, i64 16
  %i.dwl = load i32, ptr %i.dwk, align 8, !tbaa !602
  %i.dwm = add i32 %i.dwl, 1
  %i.dwn = sext i32 %i.dwm to i64
  %i.dwo = and i64 %i.dwh, 2147483647
  br label %bb.yc

bb.yc:                                            ; preds = %.critedge.i.i, %.lr.ph121.i.i
  %indvars.iv.i.i866 = phi i64 [ 0, %.lr.ph121.i.i ], [ %indvars.iv.next.i.i867, %.critedge.i.i ] ; 2 uses
  %.165118.i.i = phi i1 [ %.064124.i.i, %.lr.ph121.i.i ], [ %i.eag, %.critedge.i.i ] ; 6 uses
  %i.dwp = getelementptr [4 x i8], ptr %i.dwd, i64 %indvars.iv.i.i866 ; 3 uses
  %i.dwq = getelementptr i8, ptr %i.dwp, i64 4
  %i.dwr = load i32, ptr %i.dwq, align 4, !tbaa !34
  %i.dws = getelementptr i8, ptr %i.dwp, i64 8
  %i.dwt = load i32, ptr %i.dws, align 4, !tbaa !34
  %i.dwu = getelementptr i8, ptr %i.dwp, i64 12
  %i.dwv = load i32, ptr %i.dwu, align 4, !tbaa !34
  %i.dww = sext i32 %i.dwr to i64                 ; 2 uses
  %i.dwx = getelementptr inbounds [36 x i8], ptr %i.dvk, i64 %i.dww
  %i.dwy = load float, ptr %i.dwx, align 4, !tbaa !348 ; 2 uses
  %i.dwz = sext i32 %i.dwv to i64                 ; 2 uses
  %i.dxa = getelementptr inbounds [36 x i8], ptr %i.dvk, i64 %i.dwz
  %i.dxb = load float, ptr %i.dxa, align 4, !tbaa !348 ; 2 uses
  %i.dxc = fmul float %i.dxb, 1.300000e+01
  %i.dxd = fcmp ogt float %i.dwy, %i.dxc
  %i.dxe = fmul float %i.dwy, 1.300000e+01
  %i.dxf = fcmp ogt float %i.dxb, %i.dxe
  %or.cond107.i.i = or i1 %i.dxf, %i.dxd
  br i1 %or.cond107.i.i, label %bb.yd, label %.critedge.i.i

bb.yd:                                            ; preds = %bb.yc
  %i.dxg = getelementptr [4 x i8], ptr %i.dvm, i64 %i.dww ; 2 uses
  %i.dxh = load i32, ptr %i.dxg, align 4, !tbaa !34
  %i.dxi = sext i32 %i.dxh to i64                 ; 2 uses
  %.idx109.i.i = shl nsw i64 %i.dxi, 2
  %i.dxj = getelementptr inbounds i8, ptr %i.dvl, i64 %.idx109.i.i
  %i.dxk = getelementptr i8, ptr %i.dxg, i64 4
  %i.dxl = load i32, ptr %i.dxk, align 4, !tbaa !34
  %i.dxm = sext i32 %i.dxl to i64
  %i.dxn = sub nsw i64 %i.dxm, %i.dxi
  %i.dxo = icmp eq i64 %i.dxn, 1
  br i1 %i.dxo, label %bb.ye, label %.critedge.i.i

bb.ye:                                            ; preds = %bb.yd
  %i.dxp = getelementptr [4 x i8], ptr %i.dvm, i64 %i.dwz ; 2 uses
  %i.dxq = load i32, ptr %i.dxp, align 4, !tbaa !34
  %i.dxr = sext i32 %i.dxq to i64                 ; 2 uses
  %.idx110.i.i = shl nsw i64 %i.dxr, 2
  %i.dxs = getelementptr inbounds i8, ptr %i.dvl, i64 %.idx110.i.i
  %i.dxt = getelementptr i8, ptr %i.dxp, i64 4
  %i.dxu = load i32, ptr %i.dxt, align 4, !tbaa !34
  %i.dxv = sext i32 %i.dxu to i64
  %i.dxw = sub nsw i64 %i.dxv, %i.dxr
  %i.dxx = icmp eq i64 %i.dxw, 1
  br i1 %i.dxx, label %bb.yf, label %.critedge.i.i

bb.yf:                                            ; preds = %bb.ye
  %i.dxy = sext i32 %i.dwt to i64
  %i.dxz = getelementptr [4 x i8], ptr %i.dvm, i64 %i.dxy ; 2 uses
  %i.dya = load i32, ptr %i.dxz, align 4, !tbaa !34
  %i.dyb = sext i32 %i.dya to i64
  %.idx111.i.i = shl nsw i64 %i.dyb, 2            ; 4 uses
  %i.dyc = getelementptr i8, ptr %i.dxz, i64 4
  %i.dyd = load i32, ptr %i.dyc, align 4, !tbaa !34
  %i.dye = sext i32 %i.dyd to i64
  %.idx.i.i = shl nsw i64 %i.dye, 2               ; 4 uses
  %i.dyf = getelementptr inbounds i8, ptr %i.dvl, i64 %.idx.i.i
  %gepdiff.i.i = sub nsw i64 %.idx.i.i, %.idx111.i.i
  %i.dyg = icmp sgt i64 %gepdiff.i.i, 8
  br i1 %i.dyg, label %bb.yg, label %.critedge.i.i

bb.yg:                                            ; preds = %bb.yf
  %i.dyh = load i32, ptr %i.dxj, align 4, !tbaa !34 ; 3 uses
  %i.dyi = load i32, ptr %i.dxs, align 4, !tbaa !34 ; 3 uses
  %.not112113.i.i = icmp eq i64 %.idx111.i.i, %.idx.i.i
  br i1 %.not112113.i.i, label %.critedge.i.i, label %iter.check2995

iter.check2995:                                   ; preds = %bb.yg
  %i.dyj = getelementptr inbounds i8, ptr %i.dvl, i64 %.idx111.i.i ; 5 uses
  %i.dyk = add nsw i64 %.idx.i.i, -4
  %i.dyl = sub nsw i64 %i.dyk, %.idx111.i.i       ; 3 uses
  %i.dym = lshr exact i64 %i.dyl, 2
  %i.dyn = add nuw nsw i64 %i.dym, 1              ; 5 uses
  %min.iters.check2959 = icmp ult i64 %i.dyl, 12
  br i1 %min.iters.check2959, label %.lr.ph.i.i869.preheader, label %vector.main.loop.iter.check2960

vector.main.loop.iter.check2960:                  ; preds = %iter.check2995
  %min.iters.check2961 = icmp ult i64 %i.dyl, 124
  br i1 %min.iters.check2961, label %vec.epilog.ph2999, label %vector.ph2962

vector.ph2962:                                    ; preds = %vector.main.loop.iter.check2960
  %i.dyo = and i64 %i.dyn, 28
  %n.vec2963 = and i64 %i.dyn, 9223372036854775776 ; 4 uses
  %i.dyp = shl i64 %n.vec2963, 2
  %i.dyq = getelementptr i8, ptr %i.dyj, i64 %i.dyp
  %broadcast.splatinsert2964 = insertelement <8 x i32> poison, i32 %i.dyh, i64 0
  %broadcast.splat2965 = shufflevector <8 x i32> %broadcast.splatinsert2964, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert2966 = insertelement <8 x i32> poison, i32 %i.dyi, i64 0
  %broadcast.splat2967 = shufflevector <8 x i32> %broadcast.splatinsert2966, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body2968

vector.body2968:                                  ; preds = %vector.ph2962, %vector.body2968
  %index2969 = phi i64 [ 0, %vector.ph2962 ], [ %index.next2982, %vector.body2968 ] ; 2 uses
  %vec.phi2970 = phi <8 x i1> [ zeroinitializer, %vector.ph2962 ], [ %i.dzh, %vector.body2968 ]
  %vec.phi2971 = phi <8 x i1> [ zeroinitializer, %vector.ph2962 ], [ %i.dzi, %vector.body2968 ]
  %vec.phi2972 = phi <8 x i1> [ zeroinitializer, %vector.ph2962 ], [ %i.dzj, %vector.body2968 ]
  %vec.phi2973 = phi <8 x i1> [ zeroinitializer, %vector.ph2962 ], [ %i.dzk, %vector.body2968 ]
  %vec.phi2974 = phi <8 x i1> [ zeroinitializer, %vector.ph2962 ], [ %i.dyz, %vector.body2968 ]
  %vec.phi2975 = phi <8 x i1> [ zeroinitializer, %vector.ph2962 ], [ %i.dza, %vector.body2968 ]
  %vec.phi2976 = phi <8 x i1> [ zeroinitializer, %vector.ph2962 ], [ %i.dzb, %vector.body2968 ]
  %vec.phi2977 = phi <8 x i1> [ zeroinitializer, %vector.ph2962 ], [ %i.dzc, %vector.body2968 ]
  %i.dyr = shl i64 %index2969, 2
  %next.gep2978 = getelementptr i8, ptr %i.dyj, i64 %i.dyr ; 4 uses
  %i.dys = getelementptr i8, ptr %next.gep2978, i64 32
  %i.dyt = getelementptr i8, ptr %next.gep2978, i64 64
  %i.dyu = getelementptr i8, ptr %next.gep2978, i64 96
  %wide.load = load <8 x i32>, ptr %next.gep2978, align 4, !tbaa !34 ; 2 uses
  %wide.load2979 = load <8 x i32>, ptr %i.dys, align 4, !tbaa !34 ; 2 uses
  %wide.load2980 = load <8 x i32>, ptr %i.dyt, align 4, !tbaa !34 ; 2 uses
  %wide.load2981 = load <8 x i32>, ptr %i.dyu, align 4, !tbaa !34 ; 2 uses
  %i.dyv = icmp eq <8 x i32> %wide.load, %broadcast.splat2965
  %i.dyw = icmp eq <8 x i32> %wide.load2979, %broadcast.splat2965
  %i.dyx = icmp eq <8 x i32> %wide.load2980, %broadcast.splat2965
  %i.dyy = icmp eq <8 x i32> %wide.load2981, %broadcast.splat2965
  %i.dyz = or <8 x i1> %vec.phi2974, %i.dyv       ; 2 uses
  %i.dza = or <8 x i1> %vec.phi2975, %i.dyw       ; 2 uses
  %i.dzb = or <8 x i1> %vec.phi2976, %i.dyx       ; 2 uses
  %i.dzc = or <8 x i1> %vec.phi2977, %i.dyy       ; 2 uses
  %i.dzd = icmp eq <8 x i32> %wide.load, %broadcast.splat2967
  %i.dze = icmp eq <8 x i32> %wide.load2979, %broadcast.splat2967
  %i.dzf = icmp eq <8 x i32> %wide.load2980, %broadcast.splat2967
  %i.dzg = icmp eq <8 x i32> %wide.load2981, %broadcast.splat2967
  %i.dzh = or <8 x i1> %vec.phi2970, %i.dzd       ; 2 uses
  %i.dzi = or <8 x i1> %vec.phi2971, %i.dze       ; 2 uses
  %i.dzj = or <8 x i1> %vec.phi2972, %i.dzf       ; 2 uses
  %i.dzk = or <8 x i1> %vec.phi2973, %i.dzg       ; 2 uses
  %index.next2982 = add nuw i64 %index2969, 32    ; 2 uses
  %i.dzl = icmp eq i64 %index.next2982, %n.vec2963
  br i1 %i.dzl, label %middle.block2983, label %vector.body2968, !llvm.loop !469

middle.block2983:                                 ; preds = %vector.body2968
  %bin.rdx2984 = or <8 x i1> %i.dzi, %i.dzh
  %bin.rdx2985 = or <8 x i1> %i.dzj, %bin.rdx2984
  %bin.rdx2986 = or <8 x i1> %i.dzk, %bin.rdx2985
  %bin.rdx2986.fr = freeze <8 x i1> %bin.rdx2986
  %i.dzm = bitcast <8 x i1> %bin.rdx2986.fr to i8
  %i.dzn = icmp ne i8 %i.dzm, 0                   ; 3 uses
  %bin.rdx2987 = or <8 x i1> %i.dza, %i.dyz
  %bin.rdx2988 = or <8 x i1> %i.dzb, %bin.rdx2987
  %bin.rdx2989 = or <8 x i1> %i.dzc, %bin.rdx2988
  %bin.rdx2989.fr = freeze <8 x i1> %bin.rdx2989
  %i.dzo = bitcast <8 x i1> %bin.rdx2989.fr to i8
  %i.dzp = icmp ne i8 %i.dzo, 0                   ; 3 uses
  %cmp.n2990 = icmp eq i64 %i.dyn, %n.vec2963
  br i1 %cmp.n2990, label %._crit_edge.loopexit.i.i871, label %vec.epilog.iter.check2997

vec.epilog.iter.check2997:                        ; preds = %middle.block2983
  %min.epilog.iters.check2998 = icmp eq i64 %i.dyo, 0
  br i1 %min.epilog.iters.check2998, label %.lr.ph.i.i869.preheader, label %vec.epilog.ph2999, !prof !356

vec.epilog.ph2999:                                ; preds = %vector.main.loop.iter.check2960, %vec.epilog.iter.check2997
  %vec.epilog.resume.val2991 = phi i64 [ %n.vec2963, %vec.epilog.iter.check2997 ], [ 0, %vector.main.loop.iter.check2960 ]
  %bc.merge.rdx2992 = phi i1 [ %i.dzn, %vec.epilog.iter.check2997 ], [ false, %vector.main.loop.iter.check2960 ]
  %bc.merge.rdx2993 = phi i1 [ %i.dzp, %vec.epilog.iter.check2997 ], [ false, %vector.main.loop.iter.check2960 ]
  %n.vec3000 = and i64 %i.dyn, 9223372036854775804 ; 3 uses
  %144 = shl i64 %n.vec3000, 2
  %145 = getelementptr i8, ptr %i.dyj, i64 %144
  %broadcast.splatinsert3001 = insertelement <4 x i32> poison, i32 %i.dyh, i64 0
  %broadcast.splat3002 = shufflevector <4 x i32> %broadcast.splatinsert3001, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3003 = insertelement <4 x i32> poison, i32 %i.dyi, i64 0
  %broadcast.splat3004 = shufflevector <4 x i32> %broadcast.splatinsert3003, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3005 = insertelement <4 x i1> poison, i1 %bc.merge.rdx2992, i64 0
  %broadcast.splat3006 = shufflevector <4 x i1> %broadcast.splatinsert3005, <4 x i1> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3007 = insertelement <4 x i1> poison, i1 %bc.merge.rdx2993, i64 0
  %broadcast.splat3008 = shufflevector <4 x i1> %broadcast.splatinsert3007, <4 x i1> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body3009

vec.epilog.vector.body3009:                       ; preds = %vec.epilog.vector.body3009, %vec.epilog.ph2999
  %index3010 = phi i64 [ %vec.epilog.resume.val2991, %vec.epilog.ph2999 ], [ %index.next3015, %vec.epilog.vector.body3009 ] ; 2 uses
  %vec.phi3011 = phi <4 x i1> [ %broadcast.splat3006, %vec.epilog.ph2999 ], [ %i.dzu, %vec.epilog.vector.body3009 ]
  %vec.phi3012 = phi <4 x i1> [ %broadcast.splat3008, %vec.epilog.ph2999 ], [ %i.dzs, %vec.epilog.vector.body3009 ]
  %i.dzq = shl i64 %index3010, 2
  %next.gep3013 = getelementptr i8, ptr %i.dyj, i64 %i.dzq
  %wide.load3014 = load <4 x i32>, ptr %next.gep3013, align 4, !tbaa !34 ; 2 uses
  %i.dzr = icmp eq <4 x i32> %wide.load3014, %broadcast.splat3002
  %.fr3122 = freeze <4 x i1> %i.dzr
  %i.dzs = or <4 x i1> %vec.phi3012, %.fr3122     ; 2 uses
  %i.dzt = icmp eq <4 x i32> %wide.load3014, %broadcast.splat3004
  %.fr = freeze <4 x i1> %i.dzt
  %i.dzu = or <4 x i1> %vec.phi3011, %.fr         ; 2 uses
  %index.next3015 = add nuw i64 %index3010, 4     ; 2 uses
  %i.dzv = icmp eq i64 %index.next3015, %n.vec3000
  br i1 %i.dzv, label %vec.epilog.middle.block3016, label %vec.epilog.vector.body3009, !llvm.loop !470

vec.epilog.middle.block3016:                      ; preds = %vec.epilog.vector.body3009
  %i.dzw = bitcast <4 x i1> %i.dzu to i4
  %i.dzx = icmp ne i4 %i.dzw, 0                   ; 2 uses
  %i.dzy = bitcast <4 x i1> %i.dzs to i4
  %i.dzz = icmp ne i4 %i.dzy, 0                   ; 2 uses
  %cmp.n3017 = icmp eq i64 %i.dyn, %n.vec3000
  br i1 %cmp.n3017, label %._crit_edge.loopexit.i.i871, label %.lr.ph.i.i869.preheader

.lr.ph.i.i869.preheader:                          ; preds = %iter.check2995, %vec.epilog.iter.check2997, %vec.epilog.middle.block3016
  %.053116.i.i.ph = phi i1 [ false, %iter.check2995 ], [ %i.dzn, %vec.epilog.iter.check2997 ], [ %i.dzx, %vec.epilog.middle.block3016 ]
  %.054115.i.i.ph = phi i1 [ false, %iter.check2995 ], [ %i.dzp, %vec.epilog.iter.check2997 ], [ %i.dzz, %vec.epilog.middle.block3016 ]
  %.sroa.0.0114.i.i.ph = phi ptr [ %i.dyj, %iter.check2995 ], [ %i.dyq, %vec.epilog.iter.check2997 ], [ %145, %vec.epilog.middle.block3016 ]
  br label %.lr.ph.i.i869

._crit_edge.loopexit.i.i871:                      ; preds = %.lr.ph.i.i869, %vec.epilog.middle.block3016, %middle.block2983
  %spec.select75.i.i.lcssa = phi i1 [ %i.dzz, %vec.epilog.middle.block3016 ], [ %i.dzp, %middle.block2983 ], [ %spec.select75.i.i, %.lr.ph.i.i869 ]
  %.1.i.i870.lcssa = phi i1 [ %i.dzx, %vec.epilog.middle.block3016 ], [ %i.dzn, %middle.block2983 ], [ %.1.i.i870, %.lr.ph.i.i869 ]
  %i.eaa = select i1 %spec.select75.i.i.lcssa, i1 %.1.i.i870.lcssa, i1 false
  %i.eab = select i1 %i.eaa, i1 true, i1 %.165118.i.i
  br label %.critedge.i.i

.lr.ph.i.i869:                                    ; preds = %.lr.ph.i.i869.preheader, %.lr.ph.i.i869
  %.053116.i.i = phi i1 [ %.1.i.i870, %.lr.ph.i.i869 ], [ %.053116.i.i.ph, %.lr.ph.i.i869.preheader ]
  %.054115.i.i = phi i1 [ %spec.select75.i.i, %.lr.ph.i.i869 ], [ %.054115.i.i.ph, %.lr.ph.i.i869.preheader ]
  %.sroa.0.0114.i.i = phi ptr [ %i.eaf, %.lr.ph.i.i869 ], [ %.sroa.0.0114.i.i.ph, %.lr.ph.i.i869.preheader ] ; 2 uses
  %i.eac = load i32, ptr %.sroa.0.0114.i.i, align 4, !tbaa !34 ; 2 uses
  %i.ead = icmp eq i32 %i.eac, %i.dyh
  %spec.select75.i.i = select i1 %i.ead, i1 true, i1 %.054115.i.i ; 2 uses
  %i.eae = icmp eq i32 %i.eac, %i.dyi
  %.1.i.i870 = select i1 %i.eae, i1 true, i1 %.053116.i.i ; 2 uses
  %i.eaf = getelementptr inbounds nuw i8, ptr %.sroa.0.0114.i.i, i64 4 ; 2 uses
  %.not112.i.i = icmp eq ptr %i.eaf, %i.dyf
  br i1 %.not112.i.i, label %._crit_edge.loopexit.i.i871, label %.lr.ph.i.i869, !llvm.loop !471

.critedge.i.i:                                    ; preds = %._crit_edge.loopexit.i.i871, %bb.yg, %bb.yf, %bb.ye, %bb.yd, %bb.yc
  %.367.i.i = phi i1 [ %.165118.i.i, %bb.ye ], [ %.165118.i.i, %bb.yf ], [ %.165118.i.i, %bb.yc ], [ %.165118.i.i, %bb.yd ], [ %.165118.i.i, %bb.yg ], [ %i.eab, %._crit_edge.loopexit.i.i871 ]
  %i.eag = freeze i1 %.367.i.i                    ; 2 uses
  %indvars.iv.next.i.i867 = add nsw i64 %indvars.iv.i.i866, %i.dwn ; 2 uses
  %i.eah = icmp slt i64 %indvars.iv.next.i.i867, %i.dwo
  br i1 %i.eah, label %bb.yc, label %.loopexit.i.i855, !llvm.loop !472

.loopexit.i.i855:                                 ; preds = %.critedge.i.i, %bb.yb, %bb.ya
  %.468.i.i = phi i1 [ %.064124.i.i, %bb.ya ], [ %.064124.i.i, %bb.yb ], [ %i.eag, %.critedge.i.i ] ; 2 uses
  %indvars.iv.next126.i.i = add nuw nsw i64 %indvars.iv125.i.i, 1 ; 2 uses
  %.not108.i.i = icmp eq i64 %indvars.iv.next126.i.i, 95
  br i1 %.not108.i.i, label %bb.xx, label %bb.ya

_ZL22haveDecoupledModeInMolRK13gmx_moltype_tN3gmx8ArrayRefIK9t_iparamsEEf.exit.i: ; preds = %bb.xz, %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #30
  %spec.select.i858 = select i1 %.468.i.i, i1 true, i1 %.02966.i
  br label %_ZL22haveDecoupledModeInMolRK13gmx_moltype_tN3gmx8ArrayRefIK9t_iparamsEEf.exit.thread.i

_ZL22haveDecoupledModeInMolRK13gmx_moltype_tN3gmx8ArrayRefIK9t_iparamsEEf.exit.thread.i: ; preds = %_ZL22haveDecoupledModeInMolRK13gmx_moltype_tN3gmx8ArrayRefIK9t_iparamsEEf.exit.i, %bb.xv
  %i.eai = phi i1 [ %.02966.i, %bb.xv ], [ %spec.select.i858, %_ZL22haveDecoupledModeInMolRK13gmx_moltype_tN3gmx8ArrayRefIK9t_iparamsEEf.exit.i ] ; 2 uses
  %i.eaj = getelementptr inbounds nuw i8, ptr %.sroa.059.065.i, i64 2408 ; 2 uses
  %.not.i859 = icmp eq ptr %i.eaj, %i.dum
  br i1 %.not.i859, label %._crit_edge.i860, label %bb.xu

bb.yh:                                            ; preds = %._crit_edge.i860
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #30
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %30, ptr noundef nonnull @.str.228, double noundef 1.300000e+01)
          to label %.noexc873 unwind label %.loopexit.split-lp1349.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc873:                                        ; preds = %bb.yh
  %i.eak = load i32, ptr %i.due, align 4, !tbaa !613
  %i.eal = icmp eq i32 %i.eak, 0
  br i1 %i.eal, label %bb.yi, label %bb.yo

bb.yi:                                            ; preds = %.noexc873
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #30
  %i.eam = invoke noundef ptr @_Z17enumValueToString20IntegrationAlgorithm(i32 noundef 9)
          to label %bb.yj unwind label %bb.ym

bb.yj:                                            ; preds = %bb.yi
  %i.ean = fpext float %i.dtq to double
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %31, ptr noundef nonnull @.str.229, ptr noundef %i.eam, double noundef f0x3F1A36E2E0000000, i32 noundef 2, i32 noundef 4, double noundef %i.ean)
          to label %bb.yk unwind label %bb.ym

bb.yk:                                            ; preds = %bb.yj
  %i.eao = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.eap = load i64, ptr %i.eao, align 8, !tbaa !29 ; 2 uses
  %i.eaq = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.ear = load i64, ptr %i.eaq, align 8, !tbaa !29
  %i.eas = sub i64 4611686018427387903, %i.ear
  %i.eat = icmp ult i64 %i.eas, %i.eap
  br i1 %i.eat, label %bb.yl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i

bb.yl:                                            ; preds = %bb.yk
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.209) #29
          to label %.noexc.i865 unwind label %bb.yn

.noexc.i865:                                      ; preds = %bb.yl
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i: ; preds = %bb.yk
  %i.eau = load ptr, ptr %31, align 8, !tbaa !27
  %i.eav = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef %i.eau, i64 noundef %i.eap)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i unwind label %bb.yn ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i
  %i.eaw = load ptr, ptr %31, align 8, !tbaa !27  ; 2 uses
  %i.eax = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.eay = icmp eq ptr %i.eaw, %i.eax
  br i1 %i.eay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i863, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i862

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i862: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i
  %i.eaz = load i64, ptr %i.eax, align 8, !tbaa !28
  %i.eba = add i64 %i.eaz, 1
  call void @_ZdlPvm(ptr noundef %i.eaw, i64 noundef %i.eba) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i863

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i863: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i862
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #30
  br label %bb.yu

bb.ym:                                            ; preds = %bb.yj, %bb.yi
  %i.ebb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i

bb.yn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i, %bb.yl
  %i.ebc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ebd = load ptr, ptr %31, align 8, !tbaa !27  ; 2 uses
  %i.ebe = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.ebf = icmp eq ptr %i.ebd, %i.ebe
  br i1 %i.ebf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i: ; preds = %bb.yn
  %i.ebg = load i64, ptr %i.ebe, align 8, !tbaa !28
  %i.ebh = add i64 %i.ebg, 1
  call void @_ZdlPvm(ptr noundef %i.ebd, i64 noundef %i.ebh) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i: ; preds = %bb.yn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i, %bb.ym
  %.pn33.i = phi { ptr, i32 } [ %i.ebb, %bb.ym ], [ %i.ebc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i ], [ %i.ebc, %bb.yn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #30
  br label %bb.yx

bb.yo:                                            ; preds = %.noexc873
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #30
  %i.ebi = invoke noundef ptr @_Z17enumValueToString12CutoffScheme(i32 noundef 0)
          to label %bb.yp unwind label %bb.ys

bb.yp:                                            ; preds = %bb.yo
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %32, ptr noundef nonnull @.str.230, ptr noundef %i.ebi)
          to label %bb.yq unwind label %bb.ys

bb.yq:                                            ; preds = %bb.yp
  %i.ebj = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.ebk = load i64, ptr %i.ebj, align 8, !tbaa !29 ; 2 uses
  %i.ebl = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.ebm = load i64, ptr %i.ebl, align 8, !tbaa !29
  %i.ebn = sub i64 4611686018427387903, %i.ebm
  %i.ebo = icmp ult i64 %i.ebn, %i.ebk
  br i1 %i.ebo, label %bb.yr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i42.i

bb.yr:                                            ; preds = %bb.yq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.209) #29
          to label %.noexc43.i unwind label %bb.yt

.noexc43.i:                                       ; preds = %bb.yr
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i42.i: ; preds = %bb.yq
  %i.ebp = load ptr, ptr %32, align 8, !tbaa !27
  %i.ebq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef %i.ebp, i64 noundef %i.ebk)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit45.i unwind label %bb.yt ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit45.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i42.i
  %i.ebr = load ptr, ptr %32, align 8, !tbaa !27  ; 2 uses
  %i.ebs = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.ebt = icmp eq ptr %i.ebr, %i.ebs
  br i1 %i.ebt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit45.i
  %i.ebu = load i64, ptr %i.ebs, align 8, !tbaa !28
  %i.ebv = add i64 %i.ebu, 1
  call void @_ZdlPvm(ptr noundef %i.ebr, i64 noundef %i.ebv) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit45.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #30
  br label %bb.yu

bb.ys:                                            ; preds = %bb.yp, %bb.yo
  %i.ebw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i

bb.yt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i42.i, %bb.yr
  %i.ebx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eby = load ptr, ptr %32, align 8, !tbaa !27  ; 2 uses
end_hunk_0
