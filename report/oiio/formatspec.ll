Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/formatspec?download=true
inline.NumInlined: 8159
inline.NumDeleted: 2481
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 60
begin_hunk_0_@_ZNK11OpenImageIO4v3_19ImageSpec14find_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEERNS0_10ParamValueENS0_8TypeDescEb:bb.a
  %or.cond.i417 = select i1 %i.sq, i1 %i.sr, i1 false
  %.not.i418 = icmp eq i64 %.sroa.127793.0.extract.shift, 0 ; 2 uses
  %or.cond994 = select i1 %or.cond.i417, i1 %.not.i418, i1 false
  br i1 %or.cond994, label %bb.ag, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit419.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit419.thread: ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit416
  %i.ss = icmp eq i8 %.sroa.0670.0.extract.trunc, 13
  %brmerge997.not1045 = select i1 %i.ss, i1 %i.sr, i1 false
  %i.st = icmp eq i8 %.sroa.102.0.extract.trunc, 0
  %or.cond998 = select i1 %brmerge997.not1045, i1 %i.st, i1 false
  %or.cond999 = select i1 %or.cond998, i1 %.not.i418, i1 false
  br i1 %or.cond999, label %bb.ag, label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit420.thread

bb.ag:                                            ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit419.thread, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit416
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #39
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !23
  %i.sw = icmp slt i32 %i.sv, 2
  br i1 %i.sw, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.sx = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.sy = load i32, ptr %i.sx, align 4, !tbaa !140
  %i.sz = icmp slt i32 %i.sy, 2
  br i1 %i.sz, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ta = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.tb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.tc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.te = call ptr @_ZN11OpenImageIO4v3_17ustring9fmtformatIJiiiiEEES1_PKcDpRKT_(ptr noundef nonnull @.str.30, ptr noundef nonnull align 4 dereferenceable(4) %i.ta, ptr noundef nonnull align 4 dereferenceable(4) %i.tb, ptr noundef nonnull align 4 dereferenceable(4) %i.tc, ptr noundef nonnull align 4 dereferenceable(4) %i.td)
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah, %bb.ag
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.tg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.th = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ti = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.tj = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.tk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.tl = call ptr @_ZN11OpenImageIO4v3_17ustring9fmtformatIJiiiiiiEEES1_PKcDpRKT_(ptr noundef nonnull @.str.31, ptr noundef nonnull align 4 dereferenceable(4) %i.tf, ptr noundef nonnull align 4 dereferenceable(4) %i.tg, ptr noundef nonnull align 4 dereferenceable(4) %i.th, ptr noundef nonnull align 4 dereferenceable(4) %i.ti, ptr noundef nonnull align 4 dereferenceable(4) %i.tj, ptr noundef nonnull align 4 dereferenceable(4) %i.tk)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %storemerge = phi ptr [ %i.tl, %bb.aj ], [ %i.te, %bb.ai ]
  store ptr %storemerge, ptr %79, align 8
  store ptr @.str.32, ptr %80, align 8, !tbaa !103
  %i.tm = getelementptr inbounds nuw i8, ptr %80, i64 8
  store i64 9, ptr %i.tm, align 8, !tbaa !105
  call void @_ZN11OpenImageIO4v3_110ParamValue4initENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEiPKvNS1_4CopyE(ptr noundef nonnull align 8 dereferenceable(39) %2, ptr noundef nonnull dead_on_return %80, i64 269, i32 noundef 1, ptr noundef nonnull %79, i8 1) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #39
  br label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit452.thread

_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit420.thread: ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit419.thread
  %.pre1113 = load i64, ptr %i.i, align 8, !tbaa !105 ; 2 uses
  br i1 %4, label %.critedge211, label %.critedge209

.critedge209:                                     ; preds = %.critedge205..critedge209_crit_edge, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit420.thread
  %i.tn = phi i64 [ %.pre1112, %.critedge205..critedge209_crit_edge ], [ %.pre1113, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit420.thread ]
  %i.to = load ptr, ptr %1, align 8, !tbaa !103
  store ptr %i.to, ptr %81, align 8, !tbaa !103
  %i.tp = getelementptr inbounds nuw i8, ptr %81, i64 8
  store i64 %i.tn, ptr %i.tp, align 8, !tbaa !105
  store ptr @.str.33, ptr %82, align 8, !tbaa !103
  %i.tq = getelementptr inbounds nuw i8, ptr %82, i64 8
  store i64 10, ptr %i.tq, align 8, !tbaa !105
  %i.tr = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %81, ptr noundef nonnull dead_on_return %82)
  br i1 %i.tr, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit425, label %.critedge209..critedge213_crit_edge

.critedge209..critedge213_crit_edge:              ; preds = %.critedge209
  %.pre1114 = load i64, ptr %i.i, align 8, !tbaa !105
  br label %.critedge213

.critedge211:                                     ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit420.thread, %.critedge207
  %i.ts = phi i64 [ %.pre1113, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit420.thread ], [ %i.sd, %.critedge207 ] ; 2 uses
  %i.tt = icmp eq i64 %i.ts, 10
  br i1 %i.tt, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i421, label %.critedge219

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i421: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i367, %.critedge211
  %i.tu = load ptr, ptr %1, align 8, !tbaa !103   ; 2 uses
  %i.tv = load i64, ptr %i.tu, align 1
  %i.tw = xor i64 %i.tv, 7236837612688007524
  %i.tx = getelementptr i8, ptr %i.tu, i64 8
  %i.ty = load i16, ptr %i.tx, align 1
  %i.tz = zext i16 %i.ty to i64
  %i.ua = xor i64 %i.tz, 30575
  %i.ub = or i64 %i.tw, %i.ua
  %i.uc = icmp ne i64 %i.ub, 0
  %i.ud = zext i1 %i.uc to i32
  %.not.i.i423 = icmp eq i32 %i.ud, 0
  br i1 %.not.i.i423, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit425, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i430

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit425: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i421, %.critedge209
  %i.ue = and i64 %3, 255
  %i.uf = icmp eq i64 %i.ue, 0
  %i.ug = icmp eq i8 %.sroa.52.0.extract.trunc, 1 ; 2 uses
  %or.cond.i426 = select i1 %i.uf, i1 %i.ug, i1 false
  %.not.i427 = icmp eq i64 %.sroa.127793.0.extract.shift, 0
  %or.cond1000 = select i1 %or.cond.i426, i1 %.not.i427, i1 false
  br i1 %or.cond1000, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit425._crit_edge, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit428.thread

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit425._crit_edge: ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit425
  %.pre1124 = load i64, ptr %i.i, align 8, !tbaa !105
  br label %bb.al

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit428.thread: ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit425
  %i.uh = icmp eq i8 %.sroa.0670.0.extract.trunc, 7
  %brmerge1003.not1046 = select i1 %i.uh, i1 %i.ug, i1 false
  %i.ui = icmp eq i8 %.sroa.102.0.extract.trunc, 0
  %or.cond1004 = select i1 %brmerge1003.not1046, i1 %i.ui, i1 false
  %i.uj = icmp eq i64 %.sroa.127793.0.extract.shift, 4
  %or.cond1005 = select i1 %or.cond1004, i1 %i.uj, i1 false
  %.pre1125 = load i64, ptr %i.i, align 8, !tbaa !105 ; 4 uses
  br i1 %or.cond1005, label %bb.al, label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit429.thread

bb.al:                                            ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit425._crit_edge, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit428.thread
  %i.uk = phi i64 [ %.pre1124, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit425._crit_edge ], [ %.pre1125, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit428.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #39
  %i.ul = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.um = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.un = load <2 x i32>, ptr %0, align 8, !tbaa !3 ; 2 uses
  store <2 x i32> %i.un, ptr %i.b, align 16, !tbaa !3
  %i.uo = load <2 x i32>, ptr %i.um, align 4, !tbaa !3
  %i.up = add <2 x i32> %i.un, splat (i32 -1)
  %i.uq = add <2 x i32> %i.up, %i.uo
  store <2 x i32> %i.uq, ptr %i.ul, align 8, !tbaa !3
  %i.ur = load ptr, ptr %1, align 8, !tbaa !103
  store ptr %i.ur, ptr %83, align 8, !tbaa !103
  %i.us = getelementptr inbounds nuw i8, ptr %83, i64 8
  store i64 %i.uk, ptr %i.us, align 8, !tbaa !105
  call void @_ZN11OpenImageIO4v3_110ParamValue4initENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEiPKvNS1_4CopyE(ptr noundef nonnull align 8 dereferenceable(39) %2, ptr noundef nonnull dead_on_return %83, i64 17179869447, i32 noundef 1, ptr noundef nonnull %i.b, i8 1) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #39
  br label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit452.thread

_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit429.thread: ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit428.thread
  br i1 %4, label %.critedge215, label %.critedge213

.critedge213:                                     ; preds = %.critedge209..critedge213_crit_edge, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit429.thread
  %i.ut = phi i64 [ %.pre1114, %.critedge209..critedge213_crit_edge ], [ %.pre1125, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit429.thread ]
  %i.uu = load ptr, ptr %1, align 8, !tbaa !103
  store ptr %i.uu, ptr %84, align 8, !tbaa !103
  %i.uv = getelementptr inbounds nuw i8, ptr %84, i64 8
  store i64 %i.ut, ptr %i.uv, align 8, !tbaa !105
  store ptr @.str.33, ptr %85, align 8, !tbaa !103
  %i.uw = getelementptr inbounds nuw i8, ptr %85, i64 8
  store i64 10, ptr %i.uw, align 8, !tbaa !105
  %i.ux = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %84, ptr noundef nonnull dead_on_return %85)
  br i1 %i.ux, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit434, label %.critedge213..critedge217_crit_edge

.critedge213..critedge217_crit_edge:              ; preds = %.critedge213
  %.pre1116 = load i64, ptr %i.i, align 8, !tbaa !105
  br label %.critedge217

.critedge215:                                     ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit429.thread
  %i.uy = icmp eq i64 %.pre1125, 10
  br i1 %i.uy, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i430, label %.critedge219

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i430: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i421, %.critedge215
  %i.uz = load ptr, ptr %1, align 8, !tbaa !103   ; 2 uses
  %i.va = load i64, ptr %i.uz, align 1
  %i.vb = xor i64 %i.va, 7236837612688007524
  %i.vc = getelementptr i8, ptr %i.uz, i64 8
  %i.vd = load i16, ptr %i.vc, align 1
  %i.ve = zext i16 %i.vd to i64
  %i.vf = xor i64 %i.ve, 30575
  %i.vg = or i64 %i.vb, %i.vf
  %i.vh = icmp ne i64 %i.vg, 0
  %i.vi = zext i1 %i.vh to i32
  %.not.i.i432 = icmp eq i32 %i.vi, 0
  br i1 %.not.i.i432, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit434, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit452.thread

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit434: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i430, %.critedge213
  %i.vj = and i64 %3, 255
  %i.vk = icmp eq i64 %i.vj, 0
  %i.vl = icmp eq i8 %.sroa.52.0.extract.trunc, 1 ; 2 uses
  %or.cond.i435 = select i1 %i.vk, i1 %i.vl, i1 false
  %.not.i436 = icmp eq i64 %.sroa.127793.0.extract.shift, 0
  %or.cond1006 = select i1 %or.cond.i435, i1 %.not.i436, i1 false
  br i1 %or.cond1006, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit434._crit_edge, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit437.thread

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit434._crit_edge: ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit434
  %.pre1122 = load i64, ptr %i.i, align 8, !tbaa !105
  br label %bb.am

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit437.thread: ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit434
  %i.vm = icmp eq i8 %.sroa.0670.0.extract.trunc, 7
  %brmerge1009.not1047 = select i1 %i.vm, i1 %i.vl, i1 false
  %i.vn = icmp eq i8 %.sroa.102.0.extract.trunc, 0
  %or.cond1010 = select i1 %brmerge1009.not1047, i1 %i.vn, i1 false
  %i.vo = icmp eq i64 %.sroa.127793.0.extract.shift, 6
  %or.cond1011 = select i1 %or.cond1010, i1 %i.vo, i1 false
  %.pre1123 = load i64, ptr %i.i, align 8, !tbaa !105 ; 3 uses
  br i1 %or.cond1011, label %bb.am, label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit438.thread

bb.am:                                            ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit434._crit_edge, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit437.thread
  %i.vp = phi i64 [ %.pre1122, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit434._crit_edge ], [ %.pre1123, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit437.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #39
  %i.vq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.vr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %93 = load <4 x i32>, ptr %0, align 8
  %i.vs = load <2 x i32>, ptr %0, align 8, !tbaa !3
  store <2 x i32> %i.vs, ptr %i.c, align 16, !tbaa !3
  %i.vt = load <4 x i32>, ptr %i.vr, align 8, !tbaa !3 ; 2 uses
  %i.vu = shufflevector <4 x i32> %93, <4 x i32> %i.vt, <4 x i32> <i32 poison, i32 0, i32 1, i32 4>
  %i.vv = insertelement <4 x i32> %i.vu, i32 0, i64 0
  %i.vw = add <4 x i32> %i.vv, <i32 0, i32 -1, i32 -1, i32 -1>
  %i.vx = add <4 x i32> %i.vt, %i.vw
  store <4 x i32> %i.vx, ptr %i.vq, align 8, !tbaa !3
  %i.vy = load ptr, ptr %1, align 8, !tbaa !103
  store ptr %i.vy, ptr %86, align 8, !tbaa !103
  %i.vz = getelementptr inbounds nuw i8, ptr %86, i64 8
  store i64 %i.vp, ptr %i.vz, align 8, !tbaa !105
  call void @_ZN11OpenImageIO4v3_110ParamValue4initENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEiPKvNS1_4CopyE(ptr noundef nonnull align 8 dereferenceable(39) %2, ptr noundef nonnull dead_on_return %86, i64 25769804039, i32 noundef 1, ptr noundef nonnull %i.c, i8 1) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #39
  br label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit452.thread

_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit438.thread: ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit437.thread
  br i1 %4, label %.critedge219, label %.critedge217

.critedge217:                                     ; preds = %.critedge213..critedge217_crit_edge, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit438.thread
  %i.wa = phi i64 [ %.pre1116, %.critedge213..critedge217_crit_edge ], [ %.pre1123, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit438.thread ]
  %i.wb = load ptr, ptr %1, align 8, !tbaa !103
  store ptr %i.wb, ptr %87, align 8, !tbaa !103
  %i.wc = getelementptr inbounds nuw i8, ptr %87, i64 8
  store i64 %i.wa, ptr %i.wc, align 8, !tbaa !105
  store ptr @.str.34, ptr %88, align 8, !tbaa !103
  %i.wd = getelementptr inbounds nuw i8, ptr %88, i64 8
  store i64 13, ptr %i.wd, align 8, !tbaa !105
  %i.we = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %87, ptr noundef nonnull dead_on_return %88)
  br i1 %i.we, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit443, label %.critedge217..critedge221_crit_edge

.critedge217..critedge221_crit_edge:              ; preds = %.critedge217
  %.pre1118 = load i64, ptr %i.i, align 8, !tbaa !105
  br label %.critedge221

.critedge219:                                     ; preds = %.critedge211, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit438.thread, %.critedge215
  %i.wf = phi i64 [ %.pre1123, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit438.thread ], [ %.pre1125, %.critedge215 ], [ %i.ts, %.critedge211 ]
  %i.wg = icmp eq i64 %i.wf, 13
  br i1 %i.wg, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i439, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit452.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i439: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i376, %.critedge219
  %i.wh = load ptr, ptr %1, align 8, !tbaa !103   ; 2 uses
  %i.wi = load i64, ptr %i.wh, align 1
  %i.wj = xor i64 %i.wi, 8609019281066387812
  %i.wk = getelementptr i8, ptr %i.wh, i64 5
  %i.wl = load i64, ptr %i.wk, align 1
  %i.wm = xor i64 %i.wl, 8606207838306924897
  %i.wn = or i64 %i.wj, %i.wm
  %i.wo = icmp ne i64 %i.wn, 0
  %i.wp = zext i1 %i.wo to i32
  %.not.i.i441 = icmp eq i32 %i.wp, 0
  br i1 %.not.i.i441, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit443, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i448

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit443: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i439, %.critedge217
  %i.wq = and i64 %3, 255
  %i.wr = icmp eq i64 %i.wq, 0
  %i.ws = icmp eq i8 %.sroa.52.0.extract.trunc, 1 ; 2 uses
  %or.cond.i444 = select i1 %i.wr, i1 %i.ws, i1 false
  %.not.i445 = icmp eq i64 %.sroa.127793.0.extract.shift, 0
  %or.cond1012 = select i1 %or.cond.i444, i1 %.not.i445, i1 false
  br i1 %or.cond1012, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit443._crit_edge, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit446.thread

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit443._crit_edge: ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit443
  %.pre1120 = load i64, ptr %i.i, align 8, !tbaa !105
  br label %bb.an

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit446.thread: ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit443
  %i.wt = icmp eq i8 %.sroa.0670.0.extract.trunc, 7
  %brmerge1015.not1048 = select i1 %i.wt, i1 %i.ws, i1 false
  %i.wu = icmp eq i8 %.sroa.102.0.extract.trunc, 0
  %or.cond1016 = select i1 %brmerge1015.not1048, i1 %i.wu, i1 false
  %i.wv = icmp eq i64 %.sroa.127793.0.extract.shift, 4
  %or.cond1017 = select i1 %or.cond1016, i1 %i.wv, i1 false
  %.pre1121 = load i64, ptr %i.i, align 8, !tbaa !105 ; 3 uses
  br i1 %or.cond1017, label %bb.an, label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit447.thread

bb.an:                                            ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit443._crit_edge, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit446.thread
  %i.ww = phi i64 [ %.pre1120, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit443._crit_edge ], [ %.pre1121, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit446.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #39
  %i.wx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.wy = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.wz = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.xa = load <2 x i32>, ptr %i.wx, align 8, !tbaa !3 ; 2 uses
  store <2 x i32> %i.xa, ptr %i.d, align 16, !tbaa !3
  %i.xb = load <2 x i32>, ptr %i.wz, align 4, !tbaa !3
  %i.xc = add <2 x i32> %i.xa, splat (i32 -1)
  %i.xd = add <2 x i32> %i.xc, %i.xb
  store <2 x i32> %i.xd, ptr %i.wy, align 8, !tbaa !3
  %i.xe = load ptr, ptr %1, align 8, !tbaa !103
  store ptr %i.xe, ptr %89, align 8, !tbaa !103
  %i.xf = getelementptr inbounds nuw i8, ptr %89, i64 8
  store i64 %i.ww, ptr %i.xf, align 8, !tbaa !105
  call void @_ZN11OpenImageIO4v3_110ParamValue4initENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEiPKvNS1_4CopyE(ptr noundef nonnull align 8 dereferenceable(39) %2, ptr noundef nonnull dead_on_return %89, i64 17179869447, i32 noundef 1, ptr noundef nonnull %i.d, i8 1) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #39
  br label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit452.thread

_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit447.thread: ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit446.thread
  br i1 %4, label %.critedge223, label %.critedge221

.critedge221:                                     ; preds = %.critedge217..critedge221_crit_edge, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit447.thread
  %i.xg = phi i64 [ %.pre1118, %.critedge217..critedge221_crit_edge ], [ %.pre1121, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit447.thread ]
  %i.xh = load ptr, ptr %1, align 8, !tbaa !103
  store ptr %i.xh, ptr %90, align 8, !tbaa !103
  %i.xi = getelementptr inbounds nuw i8, ptr %90, i64 8
  store i64 %i.xg, ptr %i.xi, align 8, !tbaa !105
  store ptr @.str.34, ptr %91, align 8, !tbaa !103
  %i.xj = getelementptr inbounds nuw i8, ptr %91, i64 8
  store i64 13, ptr %i.xj, align 8, !tbaa !105
  %i.xk = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %90, ptr noundef nonnull dead_on_return %91)
  br i1 %i.xk, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit452, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit452.thread

.critedge223:                                     ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit447.thread
  %i.xl = icmp eq i64 %.pre1121, 13
  br i1 %i.xl, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i448, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit452.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i448: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i439, %.critedge223
  %i.xm = load ptr, ptr %1, align 8, !tbaa !103   ; 2 uses
  %i.xn = load i64, ptr %i.xm, align 1
  %i.xo = xor i64 %i.xn, 8609019281066387812
  %i.xp = getelementptr i8, ptr %i.xm, i64 5
  %i.xq = load i64, ptr %i.xp, align 1
  %i.xr = xor i64 %i.xq, 8606207838306924897
  %i.xs = or i64 %i.xo, %i.xr
  %i.xt = icmp ne i64 %i.xs, 0
  %i.xu = zext i1 %i.xt to i32
  %.not.i.i450 = icmp eq i32 %i.xu, 0
  br i1 %.not.i.i450, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit452, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit452.thread

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit452: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i448, %.critedge221
  %i.xv = and i64 %3, 255
  %i.xw = icmp eq i64 %i.xv, 0
  %i.xx = icmp eq i8 %.sroa.52.0.extract.trunc, 1 ; 2 uses
  %or.cond.i453 = select i1 %i.xw, i1 %i.xx, i1 false
  %.not.i454 = icmp eq i64 %.sroa.127793.0.extract.shift, 0
  %or.cond1018 = select i1 %or.cond.i453, i1 %.not.i454, i1 false
  br i1 %or.cond1018, label %bb.ao, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit455.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit455.thread: ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit452
  %i.xy = icmp eq i8 %.sroa.0670.0.extract.trunc, 7
  %brmerge1021.not1049 = select i1 %i.xy, i1 %i.xx, i1 false
  %i.xz = icmp eq i8 %.sroa.102.0.extract.trunc, 0
  %or.cond1022 = select i1 %brmerge1021.not1049, i1 %i.xz, i1 false
  %i.ya = icmp eq i64 %.sroa.127793.0.extract.shift, 6
  %or.cond1023 = select i1 %or.cond1022, i1 %i.ya, i1 false
  br i1 %or.cond1023, label %bb.ao, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit452.thread

bb.ao:                                            ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit455.thread, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit452
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #39
  %i.yb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.yd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %94 = load <4 x i32>, ptr %i.yb, align 8
  %i.ye = load <2 x i32>, ptr %i.yb, align 8, !tbaa !3
  store <2 x i32> %i.ye, ptr %i.e, align 16, !tbaa !3
  %i.yf = load <4 x i32>, ptr %i.yd, align 8, !tbaa !3 ; 2 uses
  %i.yg = shufflevector <4 x i32> %94, <4 x i32> %i.yf, <4 x i32> <i32 poison, i32 0, i32 1, i32 4>
  %i.yh = insertelement <4 x i32> %i.yg, i32 0, i64 0
  %i.yi = add <4 x i32> %i.yh, <i32 0, i32 -1, i32 -1, i32 -1>
  %i.yj = add <4 x i32> %i.yf, %i.yi
  store <4 x i32> %i.yj, ptr %i.yc, align 8, !tbaa !3
  %i.yk = load ptr, ptr %1, align 8, !tbaa !103
  store ptr %i.yk, ptr %92, align 8, !tbaa !103
  %i.yl = getelementptr inbounds nuw i8, ptr %92, i64 8
  %i.ym = load i64, ptr %i.i, align 8, !tbaa !105
  store i64 %i.ym, ptr %i.yl, align 8, !tbaa !105
  call void @_ZN11OpenImageIO4v3_110ParamValue4initENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEiPKvNS1_4CopyE(ptr noundef nonnull align 8 dereferenceable(39) %2, ptr noundef nonnull dead_on_return %92, i64 25769804039, i32 noundef 1, ptr noundef nonnull %i.e, i8 1) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #39
  br label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit452.thread

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit452.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i286, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i251, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i358, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i394, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i403, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i412, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i430, %.critedge219, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit455.thread, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i448, %.critedge223, %bb.al, %bb.am, %bb.an, %bb.ao, %.critedge221, %bb.a, %bb.ak, %bb.af, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %_ZN11OpenImageIO4v3_110ParamValue4initENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEiPKvNS1_4CopyE.exit276, %_ZN11OpenImageIO4v3_110ParamValue4initENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEiPKvNS1_4CopyE.exit263, %_ZN11OpenImageIO4v3_110ParamValue4initENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEiPKvNS1_4CopyE.exit250, %_ZN11OpenImageIO4v3_110ParamValue4initENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEiPKvNS1_4CopyE.exit237, %_ZN11OpenImageIO4v3_110ParamValue4initENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEiPKvNS1_4CopyE.exit
  %.1 = phi ptr [ %i.k, %bb.a ], [ %2, %_ZN11OpenImageIO4v3_110ParamValue4initENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEiPKvNS1_4CopyE.exit ], [ %2, %_ZN11OpenImageIO4v3_110ParamValue4initENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEiPKvNS1_4CopyE.exit237 ], [ %2, %_ZN11OpenImageIO4v3_110ParamValue4initENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEiPKvNS1_4CopyE.exit250 ], [ %2, %_ZN11OpenImageIO4v3_110ParamValue4initENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEiPKvNS1_4CopyE.exit263 ], [ %2, %_ZN11OpenImageIO4v3_110ParamValue4initENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEiPKvNS1_4CopyE.exit276 ], [ %2, %bb.n ], [ %2, %bb.o ], [ %2, %bb.p ], [ %2, %bb.q ], [ %2, %bb.r ], [ %2, %bb.s ], [ %2, %bb.t ], [ %2, %bb.u ], [ %2, %bb.v ], [ %2, %bb.w ], [ %2, %bb.x ], [ %2, %bb.y ], [ %2, %bb.z ], [ %2, %bb.aa ], [ %2, %bb.af ], [ %2, %bb.ak ], [ %2, %bb.al ], [ %2, %bb.am ], [ %2, %bb.an ], [ %2, %bb.ao ], [ null, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit455.thread ], [ null, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i448 ], [ null, %.critedge221 ], [ null, %.critedge223 ], [ null, %.critedge219 ], [ null, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i430 ], [ null, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i412 ], [ null, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i403 ], [ null, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i394 ], [ null, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i358 ], [ null, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i251 ], [ null, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i286 ]
  ret ptr %.1
}

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #2

declare noundef ptr @_ZNK11OpenImageIO4v3_18TypeDesc5c_strEv(ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN11OpenImageIO4v3_17ustring9fmtformatIJiiiiEEES1_PKcDpRKT_(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 6 uses
  %6 = alloca %"struct.fmt::v12::detail::format_arg_store.277", align 16 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #39, !noalias !141
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39, !noalias !141
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.b = load i32, ptr %1, align 4, !tbaa !3, !noalias !147
  store i32 %i.b, ptr %6, align 16, !tbaa !62, !alias.scope !144, !noalias !141
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.d = load i32, ptr %2, align 4, !tbaa !3, !noalias !147
  store i32 %i.d, ptr %i.c, align 16, !tbaa !62, !alias.scope !144, !noalias !141
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.f = load i32, ptr %3, align 4, !tbaa !3, !noalias !147
  store i32 %i.f, ptr %i.e, align 16, !tbaa !62, !alias.scope !144, !noalias !141
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.h = load i32, ptr %4, align 4, !tbaa !3, !noalias !147
  store i32 %i.h, ptr %i.g, align 16, !tbaa !62, !alias.scope !144, !noalias !141
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull %0, i64 %i.a, i64 4369, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39, !noalias !141
  %i.i = load ptr, ptr %7, align 8, !tbaa !57     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  store ptr %i.i, ptr %5, align 8, !tbaa !103
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.k, ptr %i.m, align 8, !tbaa !105
  %i.n = invoke noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %5)
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %.pre = load ptr, ptr %7, align 8, !tbaa !57    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.p = icmp eq ptr %.pre, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.thread, %bb.c
  %i.q = phi ptr [ %i.l, %.thread ], [ %i.o, %bb.c ]
  %i.r = phi ptr [ null, %.thread ], [ %i.n, %bb.c ]
  %i.s = phi ptr [ null, %.thread ], [ %.pre, %bb.c ]
  %i.t = load i64, ptr %i.q, align 8, !tbaa !62
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.u) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.v = phi ptr [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.n, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  ret ptr %i.v

bb.d:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %7, align 8, !tbaa !57     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.d
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !62
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  resume { ptr, i32 } %i.w
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN11OpenImageIO4v3_17ustring9fmtformatIJiiiiiiEEES1_PKcDpRKT_(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 6 uses
  %8 = alloca %"struct.fmt::v12::detail::format_arg_store.278", align 16 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #39, !noalias !148
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39, !noalias !148
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  %i.b = load i32, ptr %1, align 4, !tbaa !3, !noalias !154
  store i32 %i.b, ptr %8, align 16, !tbaa !62, !alias.scope !151, !noalias !148
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.d = load i32, ptr %2, align 4, !tbaa !3, !noalias !154
  store i32 %i.d, ptr %i.c, align 16, !tbaa !62, !alias.scope !151, !noalias !148
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.f = load i32, ptr %3, align 4, !tbaa !3, !noalias !154
  store i32 %i.f, ptr %i.e, align 16, !tbaa !62, !alias.scope !151, !noalias !148
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.h = load i32, ptr %4, align 4, !tbaa !3, !noalias !154
  store i32 %i.h, ptr %i.g, align 16, !tbaa !62, !alias.scope !151, !noalias !148
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.j = load i32, ptr %5, align 4, !tbaa !3, !noalias !154
  store i32 %i.j, ptr %i.i, align 16, !tbaa !62, !alias.scope !151, !noalias !148
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.l = load i32, ptr %6, align 4, !tbaa !3, !noalias !154
  store i32 %i.l, ptr %i.k, align 16, !tbaa !62, !alias.scope !151, !noalias !148
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr nonnull %0, i64 %i.a, i64 1118481, ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39, !noalias !148
  %i.m = load ptr, ptr %9, align 8, !tbaa !57     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  store ptr %i.m, ptr %7, align 8, !tbaa !103
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.o, ptr %i.q, align 8, !tbaa !105
  %i.r = invoke noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %7)
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %.pre = load ptr, ptr %9, align 8, !tbaa !57    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.t = icmp eq ptr %.pre, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.thread, %bb.c
  %i.u = phi ptr [ %i.p, %.thread ], [ %i.s, %bb.c ]
  %i.v = phi ptr [ null, %.thread ], [ %i.r, %bb.c ]
  %i.w = phi ptr [ null, %.thread ], [ %.pre, %bb.c ]
  %i.x = load i64, ptr %i.u, align 8, !tbaa !62
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.y) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = phi ptr [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.r, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  ret ptr %i.z

bb.d:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %9, align 8, !tbaa !57    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.d
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !62
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  resume { ptr, i32 } %i.aa
}

; Function Attrs: mustprogress uwtable
define i64 @_ZNK11OpenImageIO4v3_19ImageSpec16getattributetypeENS0_17basic_string_viewIcSt11char_traitsIcEEEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr nofree noundef readonly captures(none) dead_on_return %1, i1 noundef zeroext %2) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.OpenImageIO::v3_1::ParamValue", align 8 ; 11 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  store ptr null, ptr %3, align 8, !tbaa !111
end_hunk_0
