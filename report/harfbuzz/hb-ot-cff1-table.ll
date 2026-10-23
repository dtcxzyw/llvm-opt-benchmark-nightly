Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-ot-cff1-table?download=true
inline.NumInlined: 1268
inline.NumDeleted: 249
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@llvm.memcpy.p0.p0.i64
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN23cff1_cs_opset_extents_t12process_seacERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_t(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca %struct.bounds_t, align 8           ; 9 uses
  %3 = alloca %struct.bounds_t, align 8           ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !109  ; 10 uses
  %.not.i = icmp ugt i32 %i.c, 3
  br i1 %.not.i, label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.thread, label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit, !prof !58

_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.thread: ; preds = %bb.a
  %i.d = add i32 %i.c, -4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = zext i32 %i.d to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  %.pre = load double, ptr %i.g, align 8, !tbaa !113
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit26.thread

_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit: ; preds = %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !162
  %i.h = load i64, ptr @_hb_NullPool, align 16    ; 2 uses
  store i64 %i.h, ptr @_hb_CrapPool, align 16
  %i.i = bitcast i64 %i.h to double               ; 2 uses
  %.not.i24 = icmp eq i32 %i.c, 3
  br i1 %.not.i24, label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit26.thread, label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit26, !prof !163

_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit26.thread: ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit, %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.thread
  %i.j = phi double [ %.pre, %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.thread ], [ %i.i, %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit ]
  %i.k = add i32 %i.c, -3
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = zext i32 %i.k to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %.pre53 = load double, ptr %i.n, align 8, !tbaa !113
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !106
  %i.q = insertelement <2 x double> poison, double %i.j, i64 0
  %i.r = insertelement <2 x double> %i.q, double %.pre53, i64 1
  br label %bb.c

_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit26: ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit
  %i.s = load i64, ptr @_hb_NullPool, align 16    ; 2 uses
  store i64 %i.s, ptr @_hb_CrapPool, align 16
  %i.t = bitcast i64 %i.s to double
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !106  ; 2 uses
  %.not.i27 = icmp samesign ugt i32 %i.c, 1
  %i.w = insertelement <2 x double> poison, double %i.i, i64 0
  %i.x = insertelement <2 x double> %i.w, double %i.t, i64 1 ; 2 uses
  br i1 %.not.i27, label %bb.c, label %bb.b, !prof !163

bb.b:                                             ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit26
  %i.y = load i64, ptr @_hb_NullPool, align 16    ; 2 uses
  store i64 %i.y, ptr @_hb_CrapPool, align 16
  %i.z = bitcast i64 %i.y to double
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit29

bb.c:                                             ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit26.thread, %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit26
  %i.aa = phi ptr [ %i.p, %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit26.thread ], [ %i.v, %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit26 ]
  %i.ab = phi ptr [ %i.o, %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit26.thread ], [ %i.u, %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit26 ]
  %i.ac = phi <2 x double> [ %i.r, %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit26.thread ], [ %i.x, %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit26 ]
  %i.ad = add i32 %i.c, -2
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = zext i32 %i.ad to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.af
  %.pr = load double, ptr %i.ag, align 8, !tbaa !25
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit29

_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit29: ; preds = %bb.b, %bb.c
  %i.ah = phi ptr [ %i.v, %bb.b ], [ %i.aa, %bb.c ] ; 6 uses
  %i.ai = phi ptr [ %i.u, %bb.b ], [ %i.ab, %bb.c ] ; 3 uses
  %i.aj = phi double [ %i.z, %bb.b ], [ %.pr, %bb.c ] ; 5 uses
  %i.ak = phi <2 x double> [ %i.x, %bb.b ], [ %i.ac, %bb.c ]
  %i.al = shufflevector <2 x double> %i.ak, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.am = fcmp oge double %i.aj, f0xC1E0000000000000
  %i.an = fcmp ole double %i.aj, f0x41DFFFFFFFC00000
  %spec.select.not.i.i = and i1 %i.am, %i.an
  %i.ao = fptosi double %i.aj to i32
  br i1 %spec.select.not.i.i, label %_ZNK3CFF8number_t6to_intEv.exit, label %bb.d, !prof !58

bb.d:                                             ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit29
  %i.ap = fcmp olt double %i.aj, 0.000000e+00
  %i.aq = fcmp ogt double %i.aj, 0.000000e+00
  %i.ar = select i1 %i.aq, i32 2147483647, i32 0
  br i1 %i.ap, label %_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE17std_code_to_glyphEj.exit, label %_ZNK3CFF8number_t6to_intEv.exit

_ZNK3CFF8number_t6to_intEv.exit:                  ; preds = %bb.d, %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit29
  %.0.i30 = phi i32 [ %i.ar, %bb.d ], [ %i.ao, %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit29 ] ; 3 uses
  %i.as = icmp ult i32 %.0.i30, 256
  br i1 %i.as, label %_ZN2OT4cff132lookup_standard_encoding_for_sidEj.exit.i, label %_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE17std_code_to_glyphEj.exit

_ZN2OT4cff132lookup_standard_encoding_for_sidEj.exit.i: ; preds = %_ZNK3CFF8number_t6to_intEv.exit
  %i.at = zext nneg i32 %.0.i30 to i64
  %i.au = getelementptr inbounds nuw i8, ptr @_ZL24standard_encoding_to_sid, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !16
  %i.aw = zext i8 %i.av to i32                    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !164 ; 2 uses
  %.not.i32 = icmp eq ptr %i.ay, @_hb_NullPool
  br i1 %.not.i32, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2OT4cff132lookup_standard_encoding_for_sidEj.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ah, i64 296
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !57
  %i.bb = tail call noundef i32 @_ZNK3CFF7Charset9get_glyphEjj(ptr noundef nonnull align 1 dereferenceable(5) %i.ay, i32 noundef %i.aw, i32 noundef %i.ba)
  %.pre54 = load ptr, ptr %i.ai, align 8, !tbaa !106
  %.pre55 = load i32, ptr %i.b, align 4, !tbaa !109
  br label %_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE17std_code_to_glyphEj.exit

bb.f:                                             ; preds = %_ZN2OT4cff132lookup_standard_encoding_for_sidEj.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ah, i64 244
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !165
  %i.be = icmp eq i32 %i.bd, 0
  %i.bf = icmp samesign ult i32 %.0.i30, 229
  %or.cond.i = and i1 %i.bf, %i.be
  %..i = select i1 %or.cond.i, i32 %i.aw, i32 0
  br label %_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE17std_code_to_glyphEj.exit

_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE17std_code_to_glyphEj.exit: ; preds = %bb.d, %_ZNK3CFF8number_t6to_intEv.exit, %bb.e, %bb.f
  %i.bg = phi i32 [ %i.c, %_ZNK3CFF8number_t6to_intEv.exit ], [ %.pre55, %bb.e ], [ %i.c, %bb.f ], [ %i.c, %bb.d ]
  %i.bh = phi ptr [ %i.ah, %_ZNK3CFF8number_t6to_intEv.exit ], [ %.pre54, %bb.e ], [ %i.ah, %bb.f ], [ %i.ah, %bb.d ] ; 3 uses
  %.0.i31 = phi i32 [ 0, %_ZNK3CFF8number_t6to_intEv.exit ], [ %i.bb, %bb.e ], [ %..i, %bb.f ], [ 0, %bb.d ] ; 2 uses
  %i.bi = add i32 %i.c, -1                        ; 2 uses
  %.not.i33 = icmp ult i32 %i.bi, %i.bg
  br i1 %.not.i33, label %bb.h, label %bb.g, !prof !58

bb.g:                                             ; preds = %_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE17std_code_to_glyphEj.exit
  store i8 1, ptr %i.a, align 8, !tbaa !162
  %i.bj = load i64, ptr @_hb_NullPool, align 16   ; 2 uses
  store i64 %i.bj, ptr @_hb_CrapPool, align 16
  %i.bk = bitcast i64 %i.bj to double
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit35

bb.h:                                             ; preds = %_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE17std_code_to_glyphEj.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bm = zext i32 %i.bi to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bm
  %.pr52 = load double, ptr %i.bn, align 8, !tbaa !25
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit35

_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit35: ; preds = %bb.g, %bb.h
  %i.bo = phi double [ %i.bk, %bb.g ], [ %.pr52, %bb.h ] ; 5 uses
  %i.bp = fcmp oge double %i.bo, f0xC1E0000000000000
  %i.bq = fcmp ole double %i.bo, f0x41DFFFFFFFC00000
  %spec.select.not.i.i36 = and i1 %i.bp, %i.bq
  %i.br = fptosi double %i.bo to i32
  br i1 %spec.select.not.i.i36, label %_ZNK3CFF8number_t6to_intEv.exit38, label %bb.i, !prof !58

bb.i:                                             ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit35
  %i.bs = fcmp olt double %i.bo, 0.000000e+00
  %i.bt = fcmp ogt double %i.bo, 0.000000e+00
  %i.bu = select i1 %i.bt, i32 2147483647, i32 0
  br i1 %i.bs, label %_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE17std_code_to_glyphEj.exit44, label %_ZNK3CFF8number_t6to_intEv.exit38

_ZNK3CFF8number_t6to_intEv.exit38:                ; preds = %bb.i, %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit35
  %.0.i37 = phi i32 [ %i.bu, %bb.i ], [ %i.br, %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit35 ] ; 3 uses
  %i.bv = icmp ult i32 %.0.i37, 256
  br i1 %i.bv, label %_ZN2OT4cff132lookup_standard_encoding_for_sidEj.exit.i40, label %_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE17std_code_to_glyphEj.exit44

_ZN2OT4cff132lookup_standard_encoding_for_sidEj.exit.i40: ; preds = %_ZNK3CFF8number_t6to_intEv.exit38
  %i.bw = zext nneg i32 %.0.i37 to i64
  %i.bx = getelementptr inbounds nuw i8, ptr @_ZL24standard_encoding_to_sid, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !16
  %i.bz = zext i8 %i.by to i32                    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bh, i64 80
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !164 ; 2 uses
  %.not.i41 = icmp eq ptr %i.cb, @_hb_NullPool
  br i1 %.not.i41, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN2OT4cff132lookup_standard_encoding_for_sidEj.exit.i40
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bh, i64 296
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !57
  %i.ce = tail call noundef i32 @_ZNK3CFF7Charset9get_glyphEjj(ptr noundef nonnull align 1 dereferenceable(5) %i.cb, i32 noundef %i.bz, i32 noundef %i.cd)
  br label %_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE17std_code_to_glyphEj.exit44

bb.k:                                             ; preds = %_ZN2OT4cff132lookup_standard_encoding_for_sidEj.exit.i40
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bh, i64 244
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !165
  %i.ch = icmp eq i32 %i.cg, 0
  %i.ci = icmp samesign ult i32 %.0.i37, 229
  %or.cond.i42 = and i1 %i.ci, %i.ch
  %..i43 = select i1 %or.cond.i42, i32 %i.bz, i32 0
  br label %_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE17std_code_to_glyphEj.exit44

_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE17std_code_to_glyphEj.exit44: ; preds = %bb.i, %_ZNK3CFF8number_t6to_intEv.exit38, %bb.j, %bb.k
  %.0.i39 = phi i32 [ 0, %_ZNK3CFF8number_t6to_intEv.exit38 ], [ %i.ce, %bb.j ], [ %..i43, %bb.k ], [ 0, %bb.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 4480
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !101, !range !110, !noundef !111
  %4 = trunc nuw i8 %i.ck to i1
  %.not = xor i1 %4, true
  %i.cl = icmp ne i32 %.0.i31, 0
  %or.cond = and i1 %i.cl, %.not
  %i.cm = icmp ne i32 %.0.i39, 0
  %or.cond3 = and i1 %i.cm, %or.cond
  br i1 %or.cond3, label %bb.l, label %.critedge, !prof !209

bb.l:                                             ; preds = %_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE17std_code_to_glyphEj.exit44
  %i.cn = load ptr, ptr %i.ai, align 8, !tbaa !106
  %i.co = call fastcc noundef zeroext i1 @_ZL11_get_boundsPKN2OT4cff113accelerator_tEjR8bounds_tbPl(ptr noundef %i.cn, i32 noundef %.0.i31, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext true, ptr noundef null)
  br i1 %i.co, label %bb.m, label %.critedge, !prof !58

bb.m:                                             ; preds = %bb.l
  %i.cp = load ptr, ptr %i.ai, align 8, !tbaa !106
  %i.cq = call fastcc noundef zeroext i1 @_ZL11_get_boundsPKN2OT4cff113accelerator_tEjR8bounds_tbPl(ptr noundef %i.cp, i32 noundef %.0.i39, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext true, ptr noundef null)
  br i1 %i.cq, label %bb.n, label %.critedge, !prof !58

bb.n:                                             ; preds = %bb.m
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !25 ; 2 uses
  %i.cu = load double, ptr %i.cr, align 8, !tbaa !25 ; 2 uses
  %i.cv = fcmp ule double %i.ct, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.cy = load double, ptr %i.cx, align 8         ; 2 uses
  %i.cz = load double, ptr %i.cw, align 8         ; 2 uses
  %i.da = fcmp ule double %i.cy, %i.cz
  %i.db = select i1 %i.cv, i1 true, i1 %i.da
  br i1 %i.db, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cr, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !118
  br label %_ZN8bounds_t5mergeERKS_.exit

bb.p:                                             ; preds = %bb.n
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dd = load double, ptr %i.dc, align 8         ; 3 uses
  %i.de = load double, ptr %2, align 8            ; 3 uses
  %i.df = fcmp ule double %i.dd, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.di = load double, ptr %i.dh, align 8         ; 3 uses
  %i.dj = load double, ptr %i.dg, align 8         ; 3 uses
  %i.dk = fcmp ule double %i.di, %i.dj
  %i.dl = select i1 %i.df, i1 true, i1 %i.dk
  br i1 %i.dl, label %_ZN8bounds_t5mergeERKS_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dm = fcmp ogt double %i.cu, %i.de
  br i1 %i.dm, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store double %i.de, ptr %i.cr, align 8, !tbaa !113
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dn = fcmp ogt double %i.dd, %i.ct
  br i1 %i.dn, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store double %i.dd, ptr %i.cs, align 8, !tbaa !113
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.do = fcmp ogt double %i.cz, %i.dj
  br i1 %i.do, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store double %i.dj, ptr %i.cw, align 8, !tbaa !113
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dp = fcmp ogt double %i.di, %i.cy
  br i1 %i.dp, label %bb.x, label %_ZN8bounds_t5mergeERKS_.exit

bb.x:                                             ; preds = %bb.w
  store double %i.di, ptr %i.cx, align 8, !tbaa !113
  br label %_ZN8bounds_t5mergeERKS_.exit

_ZN8bounds_t5mergeERKS_.exit:                     ; preds = %bb.o, %bb.p, %bb.w, %bb.x
  %i.dq = load <4 x double>, ptr %3, align 8      ; 5 uses
  %i.dr = extractelement <4 x double> %i.dq, i64 0 ; 2 uses
  %i.ds = extractelement <4 x double> %i.dq, i64 2 ; 2 uses
  %i.dt = fcmp ule double %i.ds, %i.dr
  %i.du = extractelement <4 x double> %i.dq, i64 1 ; 2 uses
  %i.dv = extractelement <4 x double> %i.dq, i64 3 ; 2 uses
  %i.dw = fcmp ule double %i.dv, %i.du
  %i.dx = select i1 %i.dt, i1 true, i1 %i.dw
  br i1 %i.dx, label %_ZN8bounds_t6offsetERKN3CFF7point_tE.exit, label %bb.y

bb.y:                                             ; preds = %_ZN8bounds_t5mergeERKS_.exit
  %i.dy = fadd <4 x double> %i.al, %i.dq          ; 5 uses
  store <4 x double> %i.dy, ptr %3, align 8, !tbaa !25
  %i.dz = extractelement <4 x double> %i.dy, i64 0
  %i.ea = extractelement <4 x double> %i.dy, i64 1
  %i.eb = extractelement <4 x double> %i.dy, i64 2
  %i.ec = extractelement <4 x double> %i.dy, i64 3
  br label %_ZN8bounds_t6offsetERKN3CFF7point_tE.exit

_ZN8bounds_t6offsetERKN3CFF7point_tE.exit:        ; preds = %_ZN8bounds_t5mergeERKS_.exit, %bb.y
  %i.ed = phi double [ %i.du, %_ZN8bounds_t5mergeERKS_.exit ], [ %i.ea, %bb.y ] ; 3 uses
  %i.ee = phi double [ %i.dv, %_ZN8bounds_t5mergeERKS_.exit ], [ %i.ec, %bb.y ] ; 3 uses
  %i.ef = phi double [ %i.dr, %_ZN8bounds_t5mergeERKS_.exit ], [ %i.dz, %bb.y ] ; 3 uses
  %i.eg = phi double [ %i.ds, %_ZN8bounds_t5mergeERKS_.exit ], [ %i.eb, %bb.y ] ; 3 uses
  %i.eh = load double, ptr %i.cs, align 8, !tbaa !25 ; 2 uses
  %i.ei = load double, ptr %i.cr, align 8, !tbaa !25 ; 2 uses
  %i.ej = fcmp ule double %i.eh, %i.ei
  %i.ek = load double, ptr %i.cx, align 8         ; 2 uses
  %i.el = load double, ptr %i.cw, align 8         ; 2 uses
  %i.em = fcmp ule double %i.ek, %i.el
  %i.en = select i1 %i.ej, i1 true, i1 %i.em
  br i1 %i.en, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN8bounds_t6offsetERKN3CFF7point_tE.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cr, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !118
  br label %_ZN8bounds_t5mergeERKS_.exit46

bb.aa:                                            ; preds = %_ZN8bounds_t6offsetERKN3CFF7point_tE.exit
  %i.eo = fcmp ule double %i.eg, %i.ef
  %i.ep = fcmp ule double %i.ee, %i.ed
  %i.eq = select i1 %i.eo, i1 true, i1 %i.ep
  br i1 %i.eq, label %_ZN8bounds_t5mergeERKS_.exit46, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.er = fcmp ogt double %i.ei, %i.ef
  br i1 %i.er, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store double %i.ef, ptr %i.cr, align 8, !tbaa !113
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.es = fcmp ogt double %i.eg, %i.eh
  br i1 %i.es, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store double %i.eg, ptr %i.cs, align 8, !tbaa !113
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.et = fcmp ogt double %i.el, %i.ed
  br i1 %i.et, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store double %i.ed, ptr %i.cw, align 8, !tbaa !113
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.eu = fcmp ogt double %i.ee, %i.ek
  br i1 %i.eu, label %bb.ai, label %_ZN8bounds_t5mergeERKS_.exit46

bb.ai:                                            ; preds = %bb.ah
  store double %i.ee, ptr %i.cx, align 8, !tbaa !113
  br label %_ZN8bounds_t5mergeERKS_.exit46

.critedge:                                        ; preds = %bb.l, %_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE17std_code_to_glyphEj.exit44, %bb.m
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !114
  %i.ex = add i32 %i.ew, 1
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ex, ptr %i.ey, align 4, !tbaa !76
  br label %_ZN8bounds_t5mergeERKS_.exit46

_ZN8bounds_t5mergeERKS_.exit46:                   ; preds = %bb.ai, %bb.ah, %bb.aa, %bb.z, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF10cs_opset_tINS_8number_tE23cff1_cs_opset_extents_tNS_20cff1_cs_interp_env_tE20cff1_extents_param_t25cff1_path_procs_extents_tE10process_opEjRS3_RS4_(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(4481) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  switch i32 %0, label %bb.bk [
    i32 11, label %bb.b
    i32 14, label %bb.g
    i32 255, label %bb.i
    i32 10, label %bb.o
    i32 29, label %bb.p
    i32 1, label %bb.q
    i32 18, label %bb.q
    i32 3, label %bb.v
    i32 23, label %bb.v
    i32 19, label %bb.ab
    i32 20, label %bb.ab
    i32 21, label %bb.af
    i32 22, label %bb.ak
    i32 4, label %bb.aq
    i32 5, label %bb.aw
    i32 6, label %bb.ax
    i32 7, label %bb.ay
    i32 8, label %bb.az
    i32 24, label %bb.ba
    i32 25, label %bb.bb
    i32 26, label %bb.bc
    i32 27, label %bb.bd
    i32 30, label %bb.be
    i32 31, label %bb.bf
    i32 290, label %bb.bg
    i32 291, label %bb.bh
    i32 292, label %bb.bi
end_hunk_0
begin_hunk_1_@_ZN20cff1_cs_opset_path_t12process_seacERN3CFF20cff1_cs_interp_env_tER17cff1_path_param_t:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !149
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !146  ; 2 uses
  %.not.i1.i = icmp eq ptr %i.z, null
  br i1 %.not.i1.i, label %_ZN15hb_draw_funcs_t15emit_close_pathEPvR15hb_draw_state_t.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !150
  br label %_ZN15hb_draw_funcs_t15emit_close_pathEPvR15hb_draw_state_t.exit.i

_ZN15hb_draw_funcs_t15emit_close_pathEPvR15hb_draw_state_t.exit.i: ; preds = %bb.f, %bb.e
  %i.ac = phi ptr [ %i.ab, %bb.f ], [ null, %bb.e ]
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef %i.e, ptr noundef nonnull align 4 dereferenceable(48) %i.f, ptr noundef %i.ac) #5, !inline_history !3
  br label %_ZN17cff1_path_param_t8end_pathEv.exit

_ZN17cff1_path_param_t8end_pathEv.exit:           ; preds = %bb.a, %_ZN15hb_draw_funcs_t15emit_close_pathEPvR15hb_draw_state_t.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.f, i8 0, i64 20, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !109 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %.not.i = icmp ugt i32 %i.af, 3
  br i1 %.not.i, label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.thread, label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit, !prof !58

_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.thread: ; preds = %_ZN17cff1_path_param_t8end_pathEv.exit
  %i.ag = add i32 %i.af, -4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = zext i32 %i.ag to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ai
  %.pre = load i64, ptr %i.aj, align 8, !tbaa !113
  store i64 %.pre, ptr %2, align 8, !tbaa !113
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit29.thread

_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit: ; preds = %_ZN17cff1_path_param_t8end_pathEv.exit
  store i8 1, ptr %i.ad, align 8, !tbaa !162
  %i.ak = load i64, ptr @_hb_NullPool, align 16   ; 2 uses
  store i64 %i.ak, ptr @_hb_CrapPool, align 16
  store i64 %i.ak, ptr %2, align 8, !tbaa !113
  %.not.i27 = icmp eq i32 %i.af, 3
  br i1 %.not.i27, label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit29.thread, label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit29, !prof !163

_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit29.thread: ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit, %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.thread
  %i.al = add i32 %i.af, -3
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.an = zext i32 %i.al to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.an
  %.pre56 = load i64, ptr %i.ao, align 8, !tbaa !113
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.pre56, ptr %i.ap, align 8, !tbaa !113
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !124
  br label %bb.h

_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit29: ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit
  %i.as = load i64, ptr @_hb_NullPool, align 16   ; 2 uses
  store i64 %i.as, ptr @_hb_CrapPool, align 16
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.as, ptr %i.at, align 8, !tbaa !113
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !124 ; 2 uses
  %.not.i30 = icmp samesign ugt i32 %i.af, 1
  br i1 %.not.i30, label %bb.h, label %bb.g, !prof !163

bb.g:                                             ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit29
  %i.aw = load i64, ptr @_hb_NullPool, align 16   ; 2 uses
  store i64 %i.aw, ptr @_hb_CrapPool, align 16
  %i.ax = bitcast i64 %i.aw to double
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit32

bb.h:                                             ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit29.thread, %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit29
  %i.ay = phi ptr [ %i.ar, %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit29.thread ], [ %i.av, %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit29 ]
  %i.az = phi ptr [ %i.aq, %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit29.thread ], [ %i.au, %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit29 ]
  %i.ba = add i32 %i.af, -2
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bc = zext i32 %i.ba to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bc
  %.pr = load double, ptr %i.bd, align 8, !tbaa !25
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit32

_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit32: ; preds = %bb.g, %bb.h
  %i.be = phi ptr [ %i.av, %bb.g ], [ %i.ay, %bb.h ] ; 6 uses
  %i.bf = phi ptr [ %i.au, %bb.g ], [ %i.az, %bb.h ] ; 3 uses
  %i.bg = phi double [ %i.ax, %bb.g ], [ %.pr, %bb.h ] ; 5 uses
  %i.bh = fcmp oge double %i.bg, f0xC1E0000000000000
  %i.bi = fcmp ole double %i.bg, f0x41DFFFFFFFC00000
  %spec.select.not.i.i = and i1 %i.bh, %i.bi
  %i.bj = fptosi double %i.bg to i32
  br i1 %spec.select.not.i.i, label %_ZNK3CFF8number_t6to_intEv.exit, label %bb.i, !prof !58

bb.i:                                             ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit32
  %i.bk = fcmp olt double %i.bg, 0.000000e+00
  %i.bl = fcmp ogt double %i.bg, 0.000000e+00
  %i.bm = select i1 %i.bl, i32 2147483647, i32 0
  br i1 %i.bk, label %_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE17std_code_to_glyphEj.exit, label %_ZNK3CFF8number_t6to_intEv.exit

_ZNK3CFF8number_t6to_intEv.exit:                  ; preds = %bb.i, %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit32
  %.0.i33 = phi i32 [ %i.bm, %bb.i ], [ %i.bj, %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit32 ] ; 3 uses
  %i.bn = icmp ult i32 %.0.i33, 256
  br i1 %i.bn, label %_ZN2OT4cff132lookup_standard_encoding_for_sidEj.exit.i, label %_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE17std_code_to_glyphEj.exit

_ZN2OT4cff132lookup_standard_encoding_for_sidEj.exit.i: ; preds = %_ZNK3CFF8number_t6to_intEv.exit
  %i.bo = zext nneg i32 %.0.i33 to i64
  %i.bp = getelementptr inbounds nuw i8, ptr @_ZL24standard_encoding_to_sid, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !16
  %i.br = zext i8 %i.bq to i32                    ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.be, i64 80
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !164 ; 2 uses
  %.not.i35 = icmp eq ptr %i.bt, @_hb_NullPool
  br i1 %.not.i35, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN2OT4cff132lookup_standard_encoding_for_sidEj.exit.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.be, i64 296
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !57
  %i.bw = tail call noundef i32 @_ZNK3CFF7Charset9get_glyphEjj(ptr noundef nonnull align 1 dereferenceable(5) %i.bt, i32 noundef %i.br, i32 noundef %i.bv)
  %.pre57 = load ptr, ptr %i.bf, align 8, !tbaa !124
  %.pre58 = load i32, ptr %i.ae, align 4, !tbaa !109
  br label %_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE17std_code_to_glyphEj.exit

bb.k:                                             ; preds = %_ZN2OT4cff132lookup_standard_encoding_for_sidEj.exit.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.be, i64 244
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !165
  %i.bz = icmp eq i32 %i.by, 0
  %i.ca = icmp samesign ult i32 %.0.i33, 229
  %or.cond.i = and i1 %i.ca, %i.bz
  %..i = select i1 %or.cond.i, i32 %i.br, i32 0
  br label %_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE17std_code_to_glyphEj.exit

_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE17std_code_to_glyphEj.exit: ; preds = %bb.i, %_ZNK3CFF8number_t6to_intEv.exit, %bb.j, %bb.k
  %i.cb = phi i32 [ %i.af, %_ZNK3CFF8number_t6to_intEv.exit ], [ %.pre58, %bb.j ], [ %i.af, %bb.k ], [ %i.af, %bb.i ]
  %i.cc = phi ptr [ %i.be, %_ZNK3CFF8number_t6to_intEv.exit ], [ %.pre57, %bb.j ], [ %i.be, %bb.k ], [ %i.be, %bb.i ] ; 3 uses
  %.0.i34 = phi i32 [ 0, %_ZNK3CFF8number_t6to_intEv.exit ], [ %i.bw, %bb.j ], [ %..i, %bb.k ], [ 0, %bb.i ] ; 2 uses
  %i.cd = add i32 %i.af, -1                       ; 2 uses
  %.not.i36 = icmp ult i32 %i.cd, %i.cb
  br i1 %.not.i36, label %bb.m, label %bb.l, !prof !58

bb.l:                                             ; preds = %_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE17std_code_to_glyphEj.exit
  store i8 1, ptr %i.ad, align 8, !tbaa !162
  %i.ce = load i64, ptr @_hb_NullPool, align 16   ; 2 uses
  store i64 %i.ce, ptr @_hb_CrapPool, align 16
  %i.cf = bitcast i64 %i.ce to double
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit38

bb.m:                                             ; preds = %_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE17std_code_to_glyphEj.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ch = zext i32 %i.cd to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ch
  %.pr55 = load double, ptr %i.ci, align 8, !tbaa !25
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit38

_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit38: ; preds = %bb.l, %bb.m
  %i.cj = phi double [ %i.cf, %bb.l ], [ %.pr55, %bb.m ] ; 5 uses
  %i.ck = fcmp oge double %i.cj, f0xC1E0000000000000
  %i.cl = fcmp ole double %i.cj, f0x41DFFFFFFFC00000
  %spec.select.not.i.i39 = and i1 %i.ck, %i.cl
  %i.cm = fptosi double %i.cj to i32
  br i1 %spec.select.not.i.i39, label %_ZNK3CFF8number_t6to_intEv.exit41, label %bb.n, !prof !58

bb.n:                                             ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit38
  %i.cn = fcmp olt double %i.cj, 0.000000e+00
  %i.co = fcmp ogt double %i.cj, 0.000000e+00
  %i.cp = select i1 %i.co, i32 2147483647, i32 0
  br i1 %i.cn, label %.critedge, label %_ZNK3CFF8number_t6to_intEv.exit41

_ZNK3CFF8number_t6to_intEv.exit41:                ; preds = %bb.n, %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit38
  %.0.i40 = phi i32 [ %i.cp, %bb.n ], [ %i.cm, %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit38 ] ; 3 uses
  %i.cq = icmp ult i32 %.0.i40, 256
  br i1 %i.cq, label %_ZN2OT4cff132lookup_standard_encoding_for_sidEj.exit.i43, label %.critedge

_ZN2OT4cff132lookup_standard_encoding_for_sidEj.exit.i43: ; preds = %_ZNK3CFF8number_t6to_intEv.exit41
  %i.cr = zext nneg i32 %.0.i40 to i64
  %i.cs = getelementptr inbounds nuw i8, ptr @_ZL24standard_encoding_to_sid, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !16
  %i.cu = zext i8 %i.ct to i32                    ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cc, i64 80
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !164 ; 2 uses
  %.not.i44 = icmp eq ptr %i.cw, @_hb_NullPool
  br i1 %.not.i44, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN2OT4cff132lookup_standard_encoding_for_sidEj.exit.i43
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cc, i64 296
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !57
  %i.cz = tail call noundef i32 @_ZNK3CFF7Charset9get_glyphEjj(ptr noundef nonnull align 1 dereferenceable(5) %i.cw, i32 noundef %i.cu, i32 noundef %i.cy)
  br label %_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE17std_code_to_glyphEj.exit47

bb.p:                                             ; preds = %_ZN2OT4cff132lookup_standard_encoding_for_sidEj.exit.i43
  %i.da = getelementptr inbounds nuw i8, ptr %i.cc, i64 244
  %i.db = load i32, ptr %i.da, align 4, !tbaa !165
  %i.dc = icmp eq i32 %i.db, 0
  %i.dd = icmp samesign ult i32 %.0.i40, 229
  %or.cond.i45 = and i1 %i.dd, %i.dc
  %..i46 = select i1 %or.cond.i45, i32 %i.cu, i32 0
  br label %_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE17std_code_to_glyphEj.exit47

_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE17std_code_to_glyphEj.exit47: ; preds = %bb.o, %bb.p
  %.0.i42 = phi i32 [ %..i46, %bb.p ], [ %i.cz, %bb.o ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 4480
  %i.df = load i8, ptr %i.de, align 8, !tbaa !101, !range !110, !noundef !111
  %3 = trunc nuw i8 %i.df to i1
  %.not = xor i1 %3, true
  %i.dg = icmp ne i32 %.0.i34, 0
  %or.cond = and i1 %i.dg, %.not
  %i.dh = icmp ne i32 %.0.i42, 0
  %or.cond3 = and i1 %i.dh, %or.cond
  br i1 %or.cond3, label %bb.q, label %.critedge, !prof !227

bb.q:                                             ; preds = %_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE17std_code_to_glyphEj.exit47
  %i.di = load ptr, ptr %i.bf, align 8, !tbaa !124
  %i.dj = load ptr, ptr %1, align 8, !tbaa !125
  %i.dk = load ptr, ptr %i.a, align 8, !tbaa !123
  %i.dl = tail call fastcc noundef zeroext i1 @_ZL9_get_pathPKN2OT4cff113accelerator_tEP9hb_font_tjR17hb_draw_session_tbPN3CFF7point_tEPl(ptr noundef %i.di, ptr noundef %i.dj, i32 noundef %.0.i34, ptr noundef nonnull align 8 dereferenceable(64) %i.dk, i1 noundef zeroext true, ptr noundef null, ptr noundef null)
  br i1 %i.dl, label %bb.r, label %.critedge, !prof !58

bb.r:                                             ; preds = %bb.q
  %i.dm = load ptr, ptr %i.bf, align 8, !tbaa !124
  %i.dn = load ptr, ptr %1, align 8, !tbaa !125
  %i.do = load ptr, ptr %i.a, align 8, !tbaa !123
  %i.dp = call fastcc noundef zeroext i1 @_ZL9_get_pathPKN2OT4cff113accelerator_tEP9hb_font_tjR17hb_draw_session_tbPN3CFF7point_tEPl(ptr noundef %i.dm, ptr noundef %i.dn, i32 noundef %.0.i42, ptr noundef nonnull align 8 dereferenceable(64) %i.do, i1 noundef zeroext true, ptr noundef nonnull %2, ptr noundef null)
  br i1 %i.dp, label %bb.s, label %.critedge, !prof !58

.critedge:                                        ; preds = %bb.n, %_ZNK3CFF8number_t6to_intEv.exit41, %bb.q, %_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE17std_code_to_glyphEj.exit47, %bb.r
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !114
  %i.ds = add i32 %i.dr, 1
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !76
  br label %bb.s

bb.s:                                             ; preds = %.critedge, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF10cs_opset_tINS_8number_tE20cff1_cs_opset_path_tNS_20cff1_cs_interp_env_tE17cff1_path_param_t22cff1_path_procs_path_tE10process_opEjRS3_RS4_(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(4481) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  switch i32 %0, label %bb.bf [
    i32 11, label %bb.b
    i32 14, label %bb.g
    i32 255, label %bb.i
    i32 10, label %bb.o
    i32 29, label %bb.p
    i32 1, label %bb.q
    i32 18, label %bb.q
    i32 3, label %bb.v
    i32 23, label %bb.v
    i32 19, label %bb.ab
    i32 20, label %bb.ab
    i32 21, label %bb.af
    i32 22, label %bb.aj
    i32 4, label %bb.an
    i32 5, label %bb.ar
    i32 6, label %bb.as
    i32 7, label %bb.at
    i32 8, label %bb.au
    i32 24, label %bb.av
    i32 25, label %bb.aw
    i32 26, label %bb.ax
    i32 27, label %bb.ay
    i32 30, label %bb.az
    i32 31, label %bb.ba
    i32 290, label %bb.bb
    i32 291, label %bb.bc
    i32 292, label %bb.bd
    i32 293, label %bb.be
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !76
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !114  ; 2 uses
  %i.e = icmp ugt i32 %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.d, !prof !56

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i32 %i.d, 1
  store i32 %i.f, ptr %i.a, align 4, !tbaa !76
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4172 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !166  ; 2 uses
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e, !prof !56

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4176
  %i.j = add i32 %i.h, -1                         ; 2 uses
  store i32 %i.j, ptr %i.g, align 4, !tbaa !166
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.k
  br label %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE16return_from_subrEv.exit

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4168
  store i8 1, ptr %i.m, align 8, !tbaa !78
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  br label %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE16return_from_subrEv.exit

_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE16return_from_subrEv.exit: ; preds = %bb.e, %bb.f
  %.0.i.i = phi ptr [ %i.l, %bb.e ], [ @_hb_CrapPool, %bb.f ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %.0.i.i, i64 24, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4464) %1, ptr noundef nonnull align 8 dereferenceable(16) %.0.i.i, i64 16, i1 false)
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.g:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4464 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !98, !range !110, !noundef !111
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_path_t17cff1_path_param_t22cff1_path_procs_path_tE11check_widthEjRNS_20cff1_cs_interp_env_tERS2_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.s = load i32, ptr %i.r, align 4, !tbaa !109
  %i.t = trunc i32 %i.s to i1
  br i1 %i.t, label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i, label %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i, !prof !112

_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i: ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4472
  %i.w = load i64, ptr %i.u, align 8, !tbaa !113
  store i64 %i.w, ptr %i.v, align 8, !tbaa !113
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4465
  store i8 1, ptr %i.x, align 1, !tbaa !99
  br label %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i

_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i: ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i, %bb.h
  store i8 1, ptr %i.o, align 8, !tbaa !98
  br label %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_path_t17cff1_path_param_t22cff1_path_procs_path_tE11check_widthEjRNS_20cff1_cs_interp_env_tERS2_.exit

_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_path_t17cff1_path_param_t22cff1_path_procs_path_tE11check_widthEjRNS_20cff1_cs_interp_env_tERS2_.exit: ; preds = %bb.g, %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 4152
  store i8 1, ptr %i.y, align 8, !tbaa !107
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4468
  store i32 0, ptr %i.aa, align 4, !tbaa !100
  store i32 0, ptr %i.z, align 4, !tbaa !109
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.i:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !76 ; 4 uses
  %i.ae = add i32 %i.ad, 4
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !114 ; 3 uses
  %.not = icmp ugt i32 %i.ae, %i.ag
  br i1 %.not, label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit, label %bb.j, !prof !56

bb.j:                                             ; preds = %bb.i
  %.not.i.i128 = icmp ult i32 %i.ad, %i.ag
  br i1 %.not.i.i128, label %bb.l, label %bb.k, !prof !58

bb.k:                                             ; preds = %bb.j
  %i.ah = add i32 %i.ag, 1
  br label %_ZN3CFF14byte_str_ref_tixEi.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ai = load ptr, ptr %1, align 8, !tbaa !108
  %i.aj = zext i32 %i.ad to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aj
  br label %_ZN3CFF14byte_str_ref_tixEi.exit.i

_ZN3CFF14byte_str_ref_tixEi.exit.i:               ; preds = %bb.l, %bb.k
  %i.al = phi i32 [ %i.ah, %bb.k ], [ %i.ad, %bb.l ]
  %.0.i.i129 = phi ptr [ @_hb_NullPool, %bb.k ], [ %i.ak, %bb.l ]
  %i.am = load i32, ptr %.0.i.i129, align 1, !tbaa !161
  %i.an = tail call noundef i32 @llvm.bswap.i32(i32 %i.am)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !109 ; 3 uses
  %i.aq = icmp ult i32 %i.ap, 513
  br i1 %i.aq, label %bb.m, label %bb.n, !prof !58

bb.m:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = add nuw nsw i32 %i.ap, 1
  store i32 %i.as, ptr %i.ao, align 4, !tbaa !109
  %i.at = zext nneg i32 %i.ap to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.at
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE10push_fixedEi.exit.i

bb.n:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit.i
  store i8 1, ptr %i.ab, align 8, !tbaa !162
  %i.av = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.av, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE10push_fixedEi.exit.i

_ZN3CFF11arg_stack_tINS_8number_tEE10push_fixedEi.exit.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i = phi ptr [ %i.au, %bb.m ], [ @_hb_CrapPool, %bb.n ]
  %i.aw = sitofp i32 %i.an to double
  %i.ax = fmul nnan double %i.aw, f0x3EF0000000000000
  store double %i.ax, ptr %.0.i.i.i, align 8, !tbaa !25
  %i.ay = add i32 %i.al, 4
  store i32 %i.ay, ptr %i.ac, align 4, !tbaa !76
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.o:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 4432
end_hunk_1
